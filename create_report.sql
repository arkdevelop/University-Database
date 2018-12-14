CREATE OR REPLACE FUNCTION createReport()
RETURNS VOID
AS
$$
DECLARE
    /* c1: Data set containing all universities */
    c1 CURSOR IS SELECT University.name AS University FROM University;
    /* c2: Data set containing all universities, their countries, and the number of students from each country */
    c2 CURSOR (vUniversityName1 VARCHAR) IS SELECT University.name AS University, Country.name AS Country, numstudents FROM Recruits_From NATURAL JOIN Country INNER JOIN University USING(uid) WHERE University.name = vUniversityName1 ORDER BY numstudents DESC;
    /* c3: Data set containing all universities and the degrees that are offered */
    c3 CURSOR (vUniversityName2 VARCHAR) IS SELECT University.name AS University, Degree.name AS Degree FROM Degree_Offered NATURAL JOIN Degree INNER JOIN University USING(uid) WHERE University.name = vUniversityName2;
    /* vStudentSum: Variable that stores the sum of all students  recruited */
    vStudentSum INTEGER = 0;
    vDegreeSum INTEGER = 0;

BEGIN

    EXECUTE 'CREATE TABLE IF NOT EXISTS recruit_stats (
                 University VARCHAR,
                 numRecruited INTEGER,
                 NumDegreesOffered INTEGER
             );';
    /* Loop through all universities */
    FOR vc1 IN c1 LOOP
	RAISE NOTICE '********************';
	RAISE NOTICE 'University of %', vc1.University;
	RAISE NOTICE 'Recruited:';
	/* Nested loop using c2 Cursor where University = vc1.name */
	FOR vc2 IN c2 (vc1.University) LOOP
            RAISE NOTICE '% students from %', vc2.numstudents, vc2.Country;
	    vStudentSum = vStudentSum + vc2.numstudents;
	END LOOP;
	RAISE NOTICE 'Total number of students = %', vStudentSum;
	RAISE NOTICE 'Degree offered:';
	/* Nested loop using c3 Cursor where University = vc1.name */
        FOR vc3 IN c3 (vc1.University) LOOP
	    RAISE NOTICE '%', vc3.Degree;
	    vDegreeSum = vDegreeSum + 1;
        END LOOP;
	RAISE NOTICE '********************';

	/* Insert stats into new table recruit_stats */
	INSERT INTO recruit_stats VALUES (vc1.University, vStudentSum, vDegreeSum);

	vStudentSum = 0;
	vDegreeSum = 0;
    END LOOP;
END;
$$
LANGUAGE plpgsql;
