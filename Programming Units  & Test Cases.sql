--== Procedures ==--

CREATE OR REPLACE PROCEDURE fill_championship IS
BEGIN
    FOR rec IN (
        SELECT champ_id, championship_name, year
        FROM (
            SELECT c.champ_id, c.championship_name, c.year, 
                   ROW_NUMBER() OVER (PARTITION BY c.champ_id ORDER BY t.tournament_date DESC) AS rn
            FROM Tournament t
            JOIN Championship c ON t.champ_id = c.champ_id
        )
        WHERE rn <= 12
    ) LOOP
        MERGE INTO Championship c
        USING dual
        ON (c.champ_id = rec.champ_id)
        WHEN MATCHED THEN
            UPDATE SET championship_name = rec.championship_name, year = rec.year
        WHEN NOT MATCHED THEN
            INSERT (champ_id, championship_name, year)
            VALUES (rec.champ_id, rec.championship_name, rec.year);
    END LOOP;
END;



CREATE OR REPLACE PROCEDURE retrieve_tournament_schedule (
    p_year IN Championship.year%TYPE
) AS

    v_tournament_id Tournament.tournament_id%TYPE;
    v_tournament_name Tournament.tournament_name%TYPE;
    v_tournament_date Tournament.tournament_date%TYPE;
    v_tournament_duration Tournament.tournament_duration%TYPE;
    v_track_name Tracks.track_name%TYPE;
    v_track_location Tracks.track_location%TYPE;
    v_championship_name Championship.championship_name%TYPE;
    
    CURSOR cur IS
        SELECT T.tournament_id, T.tournament_name, T.tournament_date, T.tournament_duration,
               Tr.track_name, Tr.track_location, Ch.championship_name
        FROM Tournament T
        JOIN Tracks Tr ON T.track_id = Tr.track_id
        JOIN Championship Ch ON T.champ_id = Ch.champ_id
        WHERE Ch.year = p_year;
BEGIN
    OPEN cur;
    LOOP

        FETCH cur INTO v_tournament_id, v_tournament_name, v_tournament_date, v_tournament_duration,
                      v_track_name, v_track_location, v_championship_name;
        EXIT WHEN cur%NOTFOUND;
        

        DBMS_OUTPUT.PUT_LINE('Tournament ID: ' || v_tournament_id || ', Name: ' || v_tournament_name ||
                             ', Date: ' || v_tournament_date || ', Duration: ' || v_tournament_duration ||
                             ', Track Name: ' || v_track_name || ', Location: ' || v_track_location ||
                             ', Championship: ' || v_championship_name);
    END LOOP;
    CLOSE cur;
END;



--== Functions ==--


--Func 1
CREATE OR REPLACE 
FUNCTION RacingRecord
    (DriveId IN DRIVER.DRIVER_ID%TYPE,
    Podiums OUT NUMBER,
    WINS OUT NUMBER,
    RACE_ENTERIES OUT NUMBER)

RETURN NUMBER
IS
    Driver_Record_Not_Found EXCEPTION;

    BEGIN
        SELECT COUNT(ROSTER_POINTS)
        INTO RACE_ENTERIES
        FROM ROSTER 
        JOIN VEHICLEDRIVER USING(drivervehicle_pair_id)
        WHERE driver_id = DriveId;
        
        
        
        IF RACE_ENTERIES = 0 THEN
            RAISE Driver_Record_Not_Found;
        END IF;
        
        SELECT COUNT(ROSTER_POINTS)
        INTO Podiums
        FROM ROSTER 
        JOIN VEHICLEDRIVER USING(drivervehicle_pair_id)
        WHERE driver_id = DriveId
        AND finishing_position >= 3;
        
        
        SELECT COUNT(ROSTER_POINTS)
        INTO WINS
        FROM ROSTER 
        JOIN VEHICLEDRIVER USING(drivervehicle_pair_id)
        WHERE driver_id = DriveId
        AND finishing_position = 1;
        
        
        RETURN RACE_ENTERIES;
        RETURN WINS;
        RETURN Podiums;
        
        
        
        EXCEPTION
            WHEN Driver_Record_Not_Found THEN
                DBMS_OUTPUT.PUT_LINE('Driver has no records or does not exist!');
        
    END;

/



--test case

DECLARE
    v_podiums      NUMBER;
    v_wins         NUMBER;
    v_race_entries NUMBER;
    v_result       NUMBER; 
BEGIN

    v_result := RacingRecord(
        DriveId      => 56, 
        Podiums      => v_podiums,
        WINS         => v_wins,
        RACE_ENTERIES => v_race_entries
    );

    DBMS_OUTPUT.PUT_LINE('Number of Podiums: ' || v_podiums);
    DBMS_OUTPUT.PUT_LINE('Number of Wins: ' || v_wins);
    DBMS_OUTPUT.PUT_LINE('Number of Race Entries: ' || v_race_entries);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/





--func2

CREATE OR REPLACE
FUNCTION NationInfo
    (nation IN DRIVER.NATIONALITY%TYPE,
    nation_count OUT NUMBER,
    nation_best OUT NUMBER)

RETURN NUMBER
IS
    Record_Not_Found Exception;
BEGIN

    select count(*)
    INTO nation_count
    from driver 
    where nationality = nation;
    
    
    IF nation_count = 0 THEN
        RAISE Record_Not_Found;
    END IF;
    
    
    SELECT driver_id
    into nation_best
    FROM (
        SELECT driver_id, SUM(roster_points) AS total_points
        FROM driver
        JOIN VEHICLEDRIVER USING(driver_id)
        JOIN roster USING (drivervehicle_pair_id)
        WHERE nationality = nation
        GROUP BY driver_id
        ORDER BY total_points DESC
    )
    FETCH FIRST 1 ROW ONLY;    
    
    return nation_count;
    return nation_best;   
    
EXCEPTION
    WHEN Record_Not_Found THEN
        DBMS_OUTPUT.PUT_LINE('No Nationality Record Found');
END;
/
    


--test case


DECLARE
    v_nation varchar2(50) := 'Canadian'; 
    v_nation_count NUMBER;
    v_nation_best NUMBER;
    v_return_value NUMBER;
    r_driver_name VARCHAR2(60);
BEGIN
    v_return_value := NationInfo(v_nation, v_nation_count, v_nation_best);


    select name
    into r_driver_name
    from driver
    where driver_id = v_nation_best;

    DBMS_OUTPUT.PUT_LINE('Number of ' || v_nation ||  ' drivers are: ' || v_nation_count);
    DBMS_OUTPUT.PUT_LINE('Best driver of nation is: ' || r_driver_name);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/





--== Triggers ==--

-- 1: For avoiding championships to exceed eleven tournaments
CREATE OR REPLACE TRIGGER prevent_over_eleven_trigger
BEFORE INSERT ON TOURNAMENT
FOR EACH ROW
DECLARE
    c_index NUMBER;
    c_amt NUMBER;
BEGIN
    c_index := :NEW.CHAMP_ID;
    SELECT COUNT(*) INTO c_amt FROM TOURNAMENT WHERE CHAMP_ID=c_index;
    IF c_amt >= 11 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Tournament cannot be inserted: Championship is full!');
    END IF;
END;
/

-- 2: For autocompleting placements
CREATE OR REPLACE TRIGGER AUTOCOMPLETE_PLACEMENT_TRIGGER
BEFORE INSERT ON ROSTER
FOR EACH ROW
DECLARE
    rank NUMBER;
    score NUMBER;
BEGIN
    -- Count the number of people with a time equal to or earlier than the new time
    SELECT count(*) INTO rank 
    FROM roster 
    JOIN vehicledriver USING (drivervehicle_pair_id)
    JOIN vehicle USING (vehicle_id)
    -- Find matching class-tournament pairs
    WHERE ( drivervehicle_pair_id, tournament_id) IN (
        SELECT drivervehicle_pair_id, tournament_id FROM roster 
        JOIN vehicledriver USING (drivervehicle_pair_id)
        JOIN vehicle USING (vehicle_id)
        WHERE vehicle_class IN (
                SELECT vehicle_class
                FROM vehicledriver
                JOIN vehicle USING (vehicle_id)
                WHERE drivervehicle_pair_id = :NEW.drivervehicle_pair_id
                and tournament_id = :NEW.tournament_id
        )
            )
    AND calculate_seconds(roster_time) <= calculate_seconds(:NEW.roster_time);

    -- Calculate the rank by adding 1 and setting it to the finishing_position
    rank := rank + 1;
    :NEW.finishing_position := rank;
    
    -- Update the existing ranks by incrementing positions greater than or equal to the new rank
    UPDATE roster
    SET finishing_position = finishing_position + 1
    WHERE finishing_position >= rank
    AND ( drivervehicle_pair_id, tournament_id) IN (
        SELECT drivervehicle_pair_id, tournament_id FROM roster 
        JOIN vehicledriver USING (drivervehicle_pair_id)
        JOIN vehicle USING (vehicle_id)
        WHERE vehicle_class IN (
                SELECT vehicle_class
                FROM vehicledriver
                JOIN vehicle USING (vehicle_id)
                WHERE drivervehicle_pair_id = :NEW.drivervehicle_pair_id
                and tournament_id = :NEW.tournament_id
        )
            )
    ;
    
    -- Update the scores of all
    UPDATE roster
    SET roster_points = CASE finishing_position
                         WHEN 1 THEN 25
                         WHEN 2 THEN 18
                         WHEN 3 THEN 15
                         WHEN 4 THEN 12
                         WHEN 5 THEN 10
                         ELSE 0
                     END
    where tournament_id = :NEW.tournament_id
    AND ( drivervehicle_pair_id, tournament_id) IN (
        SELECT drivervehicle_pair_id, tournament_id FROM roster 
        JOIN vehicledriver USING (drivervehicle_pair_id)
        JOIN vehicle USING (vehicle_id)
        WHERE vehicle_class IN (
                SELECT vehicle_class
                FROM vehicledriver
                JOIN vehicle USING (vehicle_id)
                WHERE drivervehicle_pair_id = :NEW.drivervehicle_pair_id
                and tournament_id = :NEW.tournament_id
        ));
END;
/




--== Packages ==--


--== Indexes ==--

CREATE INDEX idx_roster_pair_position ON Roster(drivervehicle_pair_id, finishing_position);
-- boosts performance of the RacingRecord function

CREATE INDEX idx_tournament_champ_id ON Tournament(champ_id);
-- boosts performance of the fillchampionship procedure



--== Sequence ==--

create sequence autoFillPrimaryKey
start with 1
increment by 1
nocache;

update Tournament 
set tournament_id = autoFillPrimaryKey.nextVal;

SELECT autoFillPrimaryKey.currVal FROM DUAL;

declare
    defaultIndexNumber NUMBER := autoFillPrimaryKey.currVal;
    maxIndexNumber NUMBER := 11;
begin
    dbms_output.put_line('blabla' || defaultIndexNumber);
    IF (defaultIndexNumber > maxIndexNumber) THEN
        dbms_output.put_line('haha i got more than the index');
    END IF;
end;

SELECT * FROM Tournament;
