CREATE OR REPLACE FUNCTION generateEmail(aid INTEGER)
RETURNS VARCHAR
AS
$$
DECLARE
    vAid INTEGER = aid;
    currentAgentFName VARCHAR := '';
    currentAgentLName VARCHAR := '';
    currentAgentCountry VARCHAR := '';
    currentAgentUniversity VARCHAR := '';
    
    result VARCHAR := '';
BEGIN
    SELECT Agent.fname, Agent.lname, University.name, Country.name INTO currentAgentFName, currentAgentLName, currentAgentUniversity, currentAgentCountry
    FROM Agent NATURAL JOIN Country INNER JOIN University USING (uid)
    WHERE Agent.aid = vAid;

    currentAgentFName = LOWER(currentAgentFName);
    currentAgentLName = LOWER(currentAgentLName);
    currentAgentCountry = LOWER(currentAgentCountry);
    currentAgentUniversity = LOWER(currentAgentUniversity);

    IF (currentAgentUniversity = 'toronto' OR currentAgentUniversity = 'windsor' OR currentAgentUniversity = 'sherbrooke') THEN
        result := currentAgentFName || '.' || currentAgentLName || '.' || currentAgentCountry || '@' || 'u' || currentAgentUniversity || '.ca';
    ELSIF (currentAgentUniversity = 'brock' OR currentAgentUniversity = 'trent') THEN
        result := currentAgentFName || '.' || currentAgentLName || '.' || currentAgentCountry || '@' || currentAgentUniversity || 'u.ca';
    ELSIF (currentAgentUniversity = 'guelph') THEN
        result := currentAgentFName || '.' || currentAgentLName || '.' || currentAgentCountry || '@' || 'uo' || currentAgentUniversity || '.ca';
    END IF;
    RETURN result;
END;
$$
LANGUAGE plpgsql;
