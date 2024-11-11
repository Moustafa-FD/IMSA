drop table Track cascade constraints;
drop table Team cascade constraints;
drop table VehicleDriver cascade constraints;
drop table Driver cascade constraints;
drop table Vehicle cascade constraints;
drop table Tournament cascade constraints;
drop table Sponsor cascade constraints;
drop table Roster cascade constraints;

create table Track (
    trackid number,
    trackName varchar2(255),
    location varchar2(255),
    length number,
    constraint track_trackid_pk primary key (trackid)
);

create table Team (
    teamid number,
    teamname varchar2(255),
    parentcompany varchar2(255),
    constraint team_teamid_pk primary key (teamid)
);

create table VehicleDriver (
    vehicleid number,
    driverid number,
    constraint vehicledriver_vehicleid_pk primary key (vehicleid),
    constraint vehicledriver_driverid_pk primary key (driverid),
    constraint vehicle_vehicleid_fk foreign key (vehicleid)
        references vehicleid (vehicleid),
    constraint driver_driverid_fk foreign key (driverid)
        references Driver (driverid)
);

create table Driver (
    driverid number,
    teamid number,
    firstname varchar2(255),
    lastname varchar2(255),
    age varchar2(2),
    constraint driver_driverid_pk primary key (driverid),
    constraint driver_teamid_fk foreign key (teamid)
        references Team (teamid)
);

create table Vehicle (
    vehicleid number,
    make varchar2(255),
    class varchar2(255),
    constraint vehicle_vehicleid_pk primary key (vehicleid)
);

create table Tournament (
    tournamentid number,
    trackid number,
    tourmentName varchar2(255),
    date date, 
    duration number(2),
    constraint tournament_tournamentid_pk primary key (tournamentid),
    constraint tournament_trackid_fk foreign key (trackid)
        references Track (trackid)
);

create table Sponsor (
    sponsorid number,
    teamid number,
    sponsorname varchar2(255), 
    money number,
    contact varchar2(255),
    constraint sponsor_sponsorid_pk primary key (sponserid),
    constraint sponsor_teamid_fk foreign key (teamid)
        references Team (teamid)
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