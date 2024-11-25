
-- 1. sql query to get the points of each driver from class and from a certain championship ( num 1)



SELECT 
    D.Name AS "Driver Name",
    D.Nationality,
    T.team_name AS "Team",
    SUM(R.roster_points) AS "Total Points"
FROM 
    Roster R
    JOIN VehicleDriver VD ON R.drivervehicle_pair_id = VD.drivervehicle_pair_id
    JOIN Driver D ON VD.driver_id = D.driver_id
    JOIN Teams T ON D.team_id = T.team_id
    JOIN Vehicle V ON VD.vehicle_id = V.vehicle_id
    JOIN Tournament TOU ON R.tournament_id = TOU.tournament_id
WHERE
    V.vehicle_class = 'GTD Pro' AND  -- Directly specifying the class
    TOU.champ_id = 1                -- Directly specifying the championship ID
GROUP BY 
    D.Name, D.Nationality, T.team_name
ORDER BY 
    "Total Points" DESC;


-- 2. same thing but now with Teams

SELECT 
    T.team_name AS "Team",
    SUM(R.roster_points) AS "Total Points"
FROM 
    Roster R
    JOIN VehicleDriver VD ON R.drivervehicle_pair_id = VD.drivervehicle_pair_id
    JOIN Driver D ON VD.driver_id = D.driver_id
    JOIN Teams T ON D.team_id = T.team_id
    JOIN Vehicle V ON VD.vehicle_id = V.vehicle_id
    JOIN Tournament TOU ON R.tournament_id = TOU.tournament_id
WHERE
    V.vehicle_class = 'GTD Pro' AND  -- Directly specifying the class
    TOU.champ_id = 1                -- Directly specifying the championship ID
GROUP BY 
    T.team_name
ORDER BY 
    "Total Points" DESC;





-- 3. plsql to get a selected driver (by their id) and see how many podiums (top 3) they got
-- through out the championship


DECLARE
    v_driver_id INT := 6;  -- Directly setting the driver ID
    v_podium_count INT;
BEGIN
    SELECT COUNT(*)
    INTO v_podium_count
    FROM Roster R
    JOIN VehicleDriver VD ON R.drivervehicle_pair_id = VD.drivervehicle_pair_id
    WHERE VD.driver_id = v_driver_id AND R.finishing_position <= 3;

    DBMS_OUTPUT.PUT_LINE('Driver ID ' || v_driver_id || ' has finished in the podium ' || v_podium_count || ' times.');
END;
