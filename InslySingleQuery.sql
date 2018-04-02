—- Language English Language
SELECT t1.Name,t1.Birthdate, t1.SSN, t2.address, t2.Phoneno, t2.Email,t3.Text, t4.Company, t4.StartDate, t4.EndDate, 
t4.is_current_employee, t5.School, t5.Certificate, t5.StartDate, t5.EndDate
  FROM employee AS t1 
	INNER JOIN contact AS t2 ON t1.id = t2.employee_id
	INNER JOIN intro AS t3 ON t1.id = t3.employee_id
	INNER JOIN workexperience AS t4 ON t1.id = t4.employee_id
	INNER JOIN education AS t5 ON t1.id = t5.employee_id
	WHERE t1.id = 1
	AND t3.Language = 'English'
	AND t4.Language = 'English'
	AND t5.Language = 'English'

—- Language French Language
SELECT t1.Name,t1.Birthdate, t1.SSN, t2.address, t2.Phoneno, t2.Email,t3.Text, t4.Company, t4.StartDate, t4.EndDate, 
t4.is_current_employee, t5.School, t5.Certificate, t5.StartDate, t5.EndDate
  FROM employee AS t1 
	INNER JOIN contact AS t2 ON t1.id = t2.employee_id
	INNER JOIN intro AS t3 ON t1.id = t3.employee_id
	INNER JOIN workexperience AS t4 ON t1.id = t4.employee_id
	INNER JOIN education AS t5 ON t1.id = t5.employee_id
	WHERE t1.id = 1
	AND t3.Language = 'French'
	AND t4.Language = 'French'
	AND t5.Language = 'French'


—- Language Spanish Language
SELECT t1.Name,t1.Birthdate, t1.SSN, t2.address, t2.Phoneno, t2.Email,t3.Text, t4.Company, t4.StartDate, t4.EndDate, 
t4.is_current_employee, t5.School, t5.Certificate, t5.StartDate, t5.EndDate
  FROM employee AS t1 
	INNER JOIN contact AS t2 ON t1.id = t2.employee_id
	INNER JOIN intro AS t3 ON t1.id = t3.employee_id
	INNER JOIN workexperience AS t4 ON t1.id = t4.employee_id
	INNER JOIN education AS t5 ON t1.id = t5.employee_id
	WHERE t1.id = 1
	AND t3.Language = 'Spanish'
	AND t4.Language = 'Spanish'
	AND t5.Language = 'Spanish'

