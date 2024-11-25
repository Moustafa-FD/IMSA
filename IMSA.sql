drop table Tournament cascade constraints;
drop table Tracks cascade constraints;
drop table Sponsors cascade constraints;
drop table Vehicle cascade constraints;
drop table Driver cascade constraints;
drop table Teams cascade constraints;
drop table Roster cascade constraints;
drop table Championship cascade constraints;
drop table VehicleDriver cascade constraints;


create table Tracks (
    track_id int primary key,
    track_name varchar2(255),
    track_location varchar2(255),
    track_length int
);

create table Teams (
    team_id int primary key,
    team_name varchar2(255),
    parent_company varchar2(255)
);

create table Driver (
    driver_id number,
    team_id number,
    Name varchar2(255),
    Age number(2),
    Nationality varchar2(20),
    constraint driverid_id_pk primary key (driver_id),
    constraint teamid_drive_id_fk foreign key (team_id)
        references Teams (team_id)
);

create table Vehicle (
    vehicle_id int primary key,
    vehicle_make varchar2(255),
    vehicle_class varchar2(255)
);

create table Sponsors (
    sponsor_id int primary key,
    team_id int,
    sponsor_name varchar2(255),
    money int,
    contact varchar2(255),
    constraint fk_sponsor_team foreign key (team_id) references Teams (team_id)
);



create table Championship (
    champ_id int primary key,
    championship_name varchar2(255),
    year number(4)
  );



create table Tournament (
    tournament_id int primary key,
    track_id int,
    champ_id int,
    tournament_name varchar2(255),
    tournament_date date,
    tournament_duration int,
    constraint fk_tournament_track foreign key (track_id) references Tracks (track_id),
    constraint fk_tournament_champ foreign key (champ_id) references Championship (champ_id)
);



create table VehicleDriver (
    drivervehicle_pair_id int primary key,
    driver_id int,
    vehicle_id int,
    constraint fk_vehicledriver_vehicle foreign key (vehicle_id) references Vehicle (vehicle_id),
    constraint fk_vehicledriver_driver foreign key (driver_id) references Driver (driver_id)
);



create table Roster (
    drivervehicle_pair_id int,
    tournament_id int,
    finishing_position int,
    roster_time varchar2(20),
    roster_points int,
    constraint fk_roster_drivervehicle_pair foreign key (drivervehicle_pair_id) references VehicleDriver (drivervehicle_pair_id),
    constraint fk_roster_tournament foreign key (tournament_id) references Tournament (tournament_id)
);


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

