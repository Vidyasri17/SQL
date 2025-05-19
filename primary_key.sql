
Error starting at line : 8 in command -
INSERT INTO users VALUES(3, 'Gaikward', 33)
Error at Command Line : 8 Column : 13
Error report -
SQL Error: ORA-00942: table or view does not exist

https://docs.oracle.com/error-help/db/ora-00942/00942. 00000 -  "table or view%s does not exist"
*Cause:    The specified table or view did not exist, or a synonym
           pointed to a table or view that did not exist.
           To find existing user tables and views, query the
           ALL_TABLES and ALL_VIEWS data dictionary views. Certain
           privileges may be required to access the table. If an
           application returned this message, then the table that the
           application tried to access did not exist in the database, or
           the application did not have access to it.
*Action:   Check each of the following
           - The spelling of the table or view name is correct.
           - The referenced table or view name does exist.
           - The synonym points to an existing table or view.

More Details :
https://docs.oracle.com/error-help/db/ora-00942/
