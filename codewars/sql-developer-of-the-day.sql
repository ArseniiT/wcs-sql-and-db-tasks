-- In the product IT company, the "Developer of the Day" (DoD) is responsible for handling hotfixes in production for that day.
-- This responsibility rotates among the developers to ensure fair distribution of the task.

-- You are working with the backend team which has been chosen to supply the DoD on a rotating basis.
-- The team lead has asked for a fair schedule to be generated: a list of developers from the backend team,
-- ordered by their age in descending order (from youngest to oldest). The schedule should run for the working days
-- (Monday to Friday) in the months of July, August, and September of 2023. Every team member should become the Developer
-- of the Day in a cyclical manner, starting from the youngest member of the team.

-- For example, if there were 5 developers in the team, the first one in the list (the youngest) would become the DoD
-- on the 3rd of July (because it is first working day in July). Then, in consecutive working days,
-- the other four would also take turns, and then the cycle would repeat until the end of September.

-- We have employees with the the following columns:

--    full_name: A string representing the employee's full name.
--    employee_id: A unique integer identifier for each employee.
--    team: A string that specifies which team the employee is part of. The team can be one of the following four: "backend",
--          "frontend", "devops", or "design".
--    birth_date: A date that represents the employee's birthdate.

-- The report should return the following columns:

--    date: This column should represent the date of the day in 2023 when the developer is designated as the Developer of
--    the Day (DoD). The dates should fall within the months of July, August, and September and should only include working days,
--    i.e., Monday to Friday. The datatype of this column should be date, and it should not include a time component.

--    day_of_week: This column should represent the day of the week corresponding to the date column. The values in this
--    column should be the English names of the weekdays, such as Monday, Tuesday, etc.

--    employee_id: This column should represent the unique identifier (ID) of the developer who is designated as the
--    DoD for the day. This ID should match the id of the developer in employees table.

--    full_name: This column should represent the full name of the developer who is designated as the DoD for the day.

-- Notes:
-- Let's assume for this task that there are no developers with the same birth_date - tests are written to ensure that no
-- two employees have the same birth date.

-- Desired Output
-- The desired output should look like this:

-- date	        day_of_week	    employee_id	    full_name
-- 2023-07-03	Monday	            29	        Carl Smith
-- 2023-07-04	Tuesday	            25	        Yara Smith
-- 2023-07-05	Wednesday	        21	        Ursula Smith


-- TODO: finish this
