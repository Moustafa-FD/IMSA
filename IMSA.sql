drop table Tournament cascade constraints;
drop table Tracks cascade constraints;
drop table Sponsors cascade constraints;
drop table Vehicles cascade constraints;
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
    driverid number,
    teamid number,
    Name varchar2(255),
    Age number(2),
    Nationality varchar2(20),
    constraint driverid_id_pk primary key (driverid),
    constraint teamid_drive_id_fk foreign key (teamid)
        references Teams (teamid)
);

create table Vehicles (
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

create table Roster (
    driver_id int,
    tournament_id int,
    vehicle_id int,
    roster_time time,
    roster_points int,
    constraint fk_roster_driver foreign key (driver_id) references Driver (driver_id),
    constraint fk_roster_tournament foreign key (tournament_id) references Tournament (tournament_id),
    constraint fk_roster_vehicle foreign key (vehicle_id) references Vehicles (vehicle_id)
);

create table Championship (
    champ_id int primary key,
    driver_id int,
    overall_points int,
    constraint fk_champ_driver foreign key (driver_id) references Driver (driver_id)
);

-- someone double check roster here; since idk if it's connected both ways round
create table Tournament (
    tournament_id int primary key,
    track_id int,
    champ_id int,
    tournament_name varchar2(255),
    tournament_date date,
    tournament_duration time,
    constraint fk_tournament_track foreign key (track_id) references Tracks (track_id),
    constraint fk_tournament_champ foreign key (champ_id) references Championship (champ_id),
);

create table VehicleDriver (
    vehicle_id int,
    driver_id int,
    primary key (vehicle_id, driver_id),
    constraint fk_vehicledriver_vehicle foreign key (vehicle_id) references Vehicles (vehicle_id),
    constraint fk_vehicledriver_driver foreign key (driver_id) references Driver (driver_id)
);
