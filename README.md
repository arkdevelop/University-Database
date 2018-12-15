# University-Database [![Codacy Badge](https://api.codacy.com/project/badge/Grade/23a219c1eeaa4e27a3217e5424d84f3a)](https://www.codacy.com/app/arkdevelop/University-Database?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=arkdevelop/University-Database&amp;utm_campaign=Badge_Grade)
SQL files for a university/agents database

<h3>create_tables.sql</h3>
SQL file to create the tables to be used in the database.

<h3>insert_tables.sql</h3>
SQL file to insert into the tables created with the "create_tables.sql" file.

<h3>number_of_agents.sql</h3>
SQL file to create function: <code>numberAgents()</code> that returns the number of agents found for a university given the university name.

<h3>generate_email.sql</h3>
SQL file to create function: <code>generateEmail()</code> that returns an email address for an agent given the agent ID.

<h3>generate_id.sql</h3>
SQL file to create function: <code>generateID()</code> that generates a list of possible IDs for an individual given their first name, last name, and date of birth, placing the possible IDs into a new table: <code>POSSIBLE_IDS</code>.

<h3>find_max_commission.sql</h3>
SQL file to create function: <code>findMaxCommission()</code> that returns an agent's maximum comission given the agent ID.

<h3>create_report.sql</h3>
SQL file to create function: <code>createReport()</code> that displays a report for every university in the database.

<h3>capitalization_trigger.sql</h3>
SQL file to create function: <code>ensureCaseFunction()</code> and trigger: <code>ensureCaseTrigger</code> that capitalizes agent's first and last names on INSERT/UPDATE.

<h3>email_changing_trigger.sql</h3>
SQL file to create function: <code>raiseEmailChangeNotice()</code> and trigger: <code>emailChangeTrigger</code> that displays a message on UPDATE of a university's email address.
