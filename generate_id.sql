CREATE OR REPLACE FUNCTION generateID(fname VARCHAR, lname VARCHAR, dob VARCHAR)
RETURNS VOID
AS
$$
DECLARE
    vFname VARCHAR = fname;
    vLname VARCHAR = lname;
    vAge NUMERIC;
    vMonth NUMERIC;
    vDay NUMERIC;
    vSign VARCHAR = '';

    toInsert1 VARCHAR = '';
    toInsert2 VARCHAR = '';
    toInsert3 VARCHAR = '';
    toInsert4 VARCHAR = '';
    toInsert5 VARCHAR = '';
    toInsert6 VARCHAR = '';
    toInsert7 VARCHAR = '';
    toInsert8 VARCHAR = '';
BEGIN
    EXECUTE 'CREATE TABLE IF NOT EXISTS POSSIBLE_IDS(ID VARCHAR(60))';
    /* Get the age, month, and day from the date of birth */
    SELECT EXTRACT (year FROM age(dob::date)) INTO vAge;
    SELECT EXTRACT (month FROM (dob::date)) INTO vMonth;
    SELECT EXTRACT (day FROM (dob::date)) INTO vDay;

    /* Check the sign and print out possible usernames */
    IF ((vMonth = 3 AND vDay >= 21) OR (vMonth = 4 AND vDay <= 20)) THEN
        /* Aries */
        vSign = 'Aries';
    ELSIF ((vMonth = 4 AND vDay >= 21) OR (vMonth = 5 AND vDay <= 21)) THEN
	/* Taurus */
        vSign = 'Taurus';
    ELSIF ((vMonth = 5 AND vDay >= 22) OR (vMonth = 6 AND vDay <= 21)) THEN
	/* Gemini */
        vSign = 'Gemini';
    ELSIF ((vMonth = 6 AND vDay >= 22) OR (vMonth = 7 AND vDay <= 22)) THEN
	/* Cancer */
        vSign = 'Cancer';
    ELSIF ((vMonth = 7 AND vDay >= 23) OR (vMonth = 8 AND vDay <= 21)) THEN
        /* Leo */
        vSign = 'Leo';
    ELSIF ((vMonth = 8 AND vDay >= 22) OR (vMonth = 9 AND vDay <= 23)) THEN
	/* Virgo */
        vSign = 'Virgo';
    ELSIF ((vMonth = 9 AND vDay >= 24) OR (vMonth = 10 AND vDay <= 23)) THEN
	/* Libra */
        vSign = 'Libra';
    ELSIF ((vMonth = 10 AND vDay >= 24) OR (vMonth = 11 AND vDay <= 22)) THEN
	/* Scorpio */
        vSign = 'Scorpio';
    ELSIF ((vMonth = 11 AND vDay >= 23) OR (vMonth = 12 AND vDay <= 22)) THEN
	/* Sagittarius */
        vSign = 'Sagittarius';
    ELSIF ((vMonth = 12 AND vDay >= 23) OR (vMonth = 1 AND vDay <= 20)) THEN
	/* Capricorn */
        vSign = 'Capricorn';
    ELSIF ((vMonth = 1 AND vDay >= 21) OR (vMonth = 2 AND vDay <= 19)) THEN
	/* Aquarius */
        vSign = 'Aquarius';
    ELSIF ((vMonth = 2 AND vDay >= 20) OR (vMonth = 3 AND vDay <= 20)) THEN
	/* Pisces */
        vSign = 'Pisces';
    END IF;

    /* RAISE NOTICE for all of the generated IDs */
    toInsert1 = vFname || '_' || vLname;
    toInsert2 = vFname || '_' || vLname || '_' || vAge;
    toInsert3 = vFname || '_' || vAge;
    toInsert4 = vLname || '_' || vAge;
    toInsert5 = vFname || '_' || vLname || '_' || vSign;
    toInsert6 = vLname || '_' || vSign;
    toInsert7 = vFname || '_' || vSign;
    toInsert8 = vFname || '_' || vLname || '_' || vSign || '_' || vAge;
    INSERT INTO POSSIBLE_IDS VALUES (toInsert1);
    INSERT INTO POSSIBLE_IDS VALUES (toInsert2);
    INSERT INTO POSSIBLE_IDS VALUES (toInsert3);
    INSERT INTO POSSIBLE_IDS VALUES (toInsert4);
    INSERT INTO POSSIBLE_IDS VALUES (toInsert5);
    INSERT INTO POSSIBLE_IDS VALUES (toInsert6);
    INSERT INTO POSSIBLE_IDS VALUES (toInsert7);
    INSERT INTO POSSIBLE_IDS VALUES (toInsert8);
    RAISE NOTICE 'Successfully inserted into POSSIBLE_IDS';
END;
$$
LANGUAGE plpgsql;
