CREATE OR REPLACE FUNCTION ensureCaseFunction()
RETURNS TRIGGER
AS
$$
BEGIN
    IF TG_OP = 'UPDATE' THEN
        NEW.fname = UPPER(OLD.fname);
        NEW.lname = UPPER(OLD.lname);
    ELSE
        NEW.fname = UPPER(NEW.fname);
        NEW.lname = UPPER(NEW.lname);
    END IF;

    RETURN NEW;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER ensureCaseTrigger
BEFORE INSERT OR UPDATE
ON Agent
FOR EACH ROW
EXECUTE PROCEDURE ensureCaseFunction();
