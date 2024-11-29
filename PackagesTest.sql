-- package A for B, B for C, C for E?
create or replace package functionPackage is 
    function RacingRecord(DriveId in DRIVER.DRIVER_ID%TYPE) return varchar2;
    function NationInfo(nation in DRIVER.NATIONALITY%TYPE) return varchar2;
end functionPackage;
/

create or replace package body functionPackage

    function RacingRecord(DriveId in DRIVER.DRIVER_ID%TYPE) return varchar2
    is
        Driver_Record_Not_Found EXCEPTION;

        Podiums number := 0;
        WINS number := 0;
        RACE_ENTERIES number := 0;
    
    begin
        select count(roster_points)
        into RACE_ENTERIES
        from ROSTER
        join VEHICLEDRIVER USING(drivervehicle_pair_id)
        where driver_id = DriverId;
        Result varchar2(4000);

        if RACE_ENTERIES = 0 then 
            RAISE Driver_Record_Not_Found;
        end if;

        select count(ROSTER_POINTS)
        into Podiums
        from ROSTER
        join VEHICLEDRIVER using(drivervehicle_pair_id)
        where driver_id = DriveId and finishing_position <= 3;

        select count(ROSTER_POINTS)
        into WINS
        FROM ROSTER
        JOIN VEHICLEDRIVER using(drivervehicle_pair_id)
        where driver_id = DriveId and finishing_position = 1;

        Result := 'Races: ' || RACE_ENTERIES || ' | Podiums: ' || Podiums || ' | Wins: ' || WINS;
        return Result;

        when Driver_Record_Not_Found then
            dbms_output.put_line('Driver has no records or does not exist!');
    end RacingRecord;

    begin NationInfo(nation in DRIVER.NATIONALITY%TYPE) return varchar2;
    is 
        Record_Not_Found Exception;

        nation_count number := 0;
        nation_best varchar2 := 0;

    begin
        select count(*)
        into nation_count
        from driver
        where nationality = nation;

        if nation_count = 0 then
            raise Record_Not_Found
        end if;

    select driver_id
    into nation_best
    from (
        select driver, sum(roster_points) as total_points
        from driver
        join VEHICLEDRIVER using(driver_id)
        join roster using (drivervehicle_pair_id)
        where nationality = nation
        group by driver_id
        order by total_points desc
    )

    fetch first 1 row ONLY;
    Result := 'Nation Count: ' || nation_count || 'Nation Count' || nation_best;

    Exception
        when Record_Not_Found then
            dbms_output.put_line('No Nationality Record Found');
    end NationInfo;
end functionPackage;
/

create or replace package procedurePackage is
    procedure fill_championship;
end;
/
create or replace package body procedurePackage

    procedure fill_championship is
    
    begin
        for rec in (
            select champ_id, championship_name, year 
            from (
                select champ_id, championship_name, year, row_number() over (partition by order by tournament_date desc) as rn
                Tournament t
                join Championship c on t.champ_id = c.champ_id
            ) where rn <= 12
        ) loop
            merge into Championship C
            using dual
            on (c.champ_id = rec.champ_id)
            when matched then
                insert (champ_id, championship_name, year)
                values (rec.champ_id, rec.championship_name, rec.year);
            end loop;
    end fill_championship;

    -- procedure 
end procedurePackage;
/