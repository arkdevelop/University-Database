CREATE OR REPLACE FUNCTION raiseEmailChangeNotice()
RETURNS TRIGGER
AS
$$
DECLARE
    uniName VARCHAR(32);
BEGIN
    SELECT name INTO uniName
    FROM University
    WHERE uid = OLD.uid;

    RAISE NOTICE 'University of % is changing its url', LOWER(uniName);

    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER emailChangeTrigger
BEFORE UPDATE
ON University
FOR EACH ROW
WHEN (OLD.url IS DISTINCT FROM NEW.url)
EXECUTE PROCEDURE raiseEmailChangeNotice();
