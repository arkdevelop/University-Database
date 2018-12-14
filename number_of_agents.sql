CREATE OR REPLACE FUNCTION numberAgents(uName VARCHAR)
RETURNS INTEGER
AS
$$
DECLARE
    toReturn INTEGER;
BEGIN
    SELECT COUNT(*) INTO toReturn
    FROM University NATURAL JOIN Agent
    GROUP BY name
    HAVING LOWER(name) = LOWER(uName);
    RETURN toReturn;
END;
$$
LANGUAGE plpgsql;
