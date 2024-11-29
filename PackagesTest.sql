-- package A for B, B for C, C for E?
create or replace package functionPackage is 
    function RacingRecord(DriveId in DRIVER.DRIVER_ID%TYPE) return varchar2;
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
end functionPackage;
/