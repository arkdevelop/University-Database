CREATE OR REPLACE FUNCTION ensure_case_function()
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

CREATE TRIGGER ensure_case
BEFORE INSERT OR UPDATE
ON Agent
FOR EACH ROW
EXECUTE PROCEDURE ensure_case_function();
