CREATE OR REPLACE FUNCTION find_max_commission(aid INTEGER)
RETURNS FLOAT
AS
$$
DECLARE
    vAid INTEGER = aid;
    result FLOAT;

    c1 CURSOR IS 
                 SELECT Agent.aid, fname, lname
                 FROM Agent
		 ORDER BY Agent.aid;
            
BEGIN
    IF EXISTS(SELECT Agent.aid FROM AGENT WHERE Agent.aid = vAid) THEN
        SELECT MAX(commission) INTO result
        FROM Agent
        GROUP BY Agent.aid
        HAVING Agent.aid = vAid;

	RETURN result;
    ELSE
	RAISE NOTICE 'Invalid agent id. Valid agent ids are: ';
	FOR i IN c1 LOOP
            RAISE NOTICE '%: % %', i.aid, i.fname, i.lname;
	END LOOP;
	RAISE EXCEPTION 'Invalid agent id';
    END IF;
END;
$$
LANGUAGE plpgsql;
