drop table Tracks cascade constraints;
drop table Teams cascade constraints;
drop table VehicleDriver cascade constraints;
drop table Driver cascade constraints;
drop table Vehicle cascade constraints;
drop table Tournament cascade constraints;
drop table Sponsors cascade constraints;
drop table Roster cascade constraints;

create table Tracks (
    trackid number,
    trackName varchar2(255),
    location varchar2(255),
    length number,
    constraint track_trackid_pk primary key (trackid)
);

create table Teams (
    teamid number,
    teamname varchar2(255),
    parentcompany varchar2(255),
    constraint team_teamid_pk primary key (teamid)
);

create table Driver (
    driverid number,
    teamid number,
    Name varchar2(255),
    Age number(2),
    Nationality varchar2(20),
    points number,
    driverTime varchar2(5),
    constraint driverid_id_pk primary key (driverid),
    constraint teamid_drive_id_fk foreign key (teamid)
        references Teams (teamid)
);

create table Vehicle (
    vehicleid number,
    make varchar2(255),
    class varchar2(255),
    constraint vehicle_vehicleid_pk primary key (vehicleid)
);

create table VehicleDriver (
    vehicleid number,
    driverid number,
    constraint vehicledriverid_pk primary key (vehicleid, driverid),
    constraint vehicle_vehicleid_fk foreign key (vehicleid)
        references Vehicle (vehicleid),
    constraint driver_driverid_fk foreign key (driverid)
        references Driver (driverid)
);

create table Tournament (
    tournamentid number,
    trackid number,
    tournamentName varchar2(255),
    tournamentdate date, 
    duration number(2),
    constraint tournament_tournamentid_pk primary key (tournamentid),
    constraint tournament_trackid_fk foreign key (trackid)
        references Tracks (trackid)
);

create table Sponsors (
    sponsorid number,
    teamid number,
    sponsorname varchar2(255), 
    money number,
    contact varchar2(255),
    constraint sponsor_sponsorid_pk primary key (sponsorid),
    constraint sponsor_teamid_fk foreign key (teamid)
        references Teams (teamid)
);

create table Roster (
    rosterid number,
    driverid number,
    vehicleid number,
    constraint roster_rosterid_pk primary key (rosterid),
    constraint roster_driverid_fk foreign key (driverid)
        references Driver (driverid),
    constraint roster_vehicleid_fk foreign key (vehicleid)
        references Vehicle (vehicleid)
);

create table Race (
    raceid number,
    driverid number,
    trackid number, 
    vehicleid number,
    points number,
    racePosition number(2),
    raceDate date,
    constraint race_raceid_pk primary key (raceid),
    constraint race_driverid_fk foreign key (driverid)
        references Driver (driverid),
    constraint race_trackid_fk foreign key (trackid)
        references Tracks (trackid),
    constraint race_vehicleid_fk foreign key (vehicleid)
        references Vehicle (vehicleid)
);