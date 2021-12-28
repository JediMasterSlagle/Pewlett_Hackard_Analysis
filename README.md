# Pewlett_Hackard_Analysis
## Overview

The purpose of the analysis was to identify and group the retiring or soon
to be employees within Pewlett Hackard. To achieve the requested info for
this we used inner joins and group by functions to identify employees born
within a set year range and group them into a new table for foresight into
possible future workforce needs, and further to identify and gropu possible
mentorship candidates with their respective title within the company.  For
this analysis the following tables were created:

1.  **Departments** - department number that is associated with each
deparment name.<br>
2.  **Department Managers** - manager employee number with department
number, with start to end date. <br>
3.  **Department Employees** - employees with emp number with their
department designation with start to end date.<br>
4.  **Employees** - list of employees that have or still work at PH.
employee number, full name, birth date, gender and hire date. <br>
5.  **Salaries** - adding salaries to emp and number with start to end date
receiving that salary. <br>
6.  **Titles** - employee number with associated title and their start to
end date holding the title.  <br>

## Summary

The mentorship_eligibility table provides information required for the Managers to promote the program with the ability to further filter information if needed or requested for a more narrow range than the current table showing 1549 set to retire soon.<br>

To calculate the total number of employees per department, I created another query for a new table.  This gives an easy view of how many employees might need to be replaced in each department.  There are a total of 34 job titles within the 9 departments that have upcoming retirees, now they can see that the Development department will need higher focus in the
near future with that department having a large number set to retire
soon<br>

Management can now see that there are 1549 total employees that are retiring and prepare not only for additional resources for hiring process for a number of new employees,  but can also determine who might want to take part in the mentorship program to be able to structure and employ the new idea.<br>

