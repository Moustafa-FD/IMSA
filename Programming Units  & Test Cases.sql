--== Procedures ==--

create or replace procedure fill_championship is
begin
    for rec in (
        select champ_id, championship_name, year
        from (
            select champ_id, championship_name, year, row_number() over (partition by champ_id order by tournament_date desc) as rn
            from Tournament t
            join Championship c on t.champ_id = c.champ_id
        )
        where rn <= 12
    ) loop
        merge into Championship c
        using dual
        on (c.champ_id = rec.champ_id)
        when matched then
            update set championship_name = rec.championship_name, year = rec.year
        when not matched then
            insert (champ_id, championship_name, year)
            values (rec.champ_id, rec.championship_name, rec.year);
    end loop;
end;



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





--== Triggeres ==--


--== Packages ==--


--== Indexes ==--





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
