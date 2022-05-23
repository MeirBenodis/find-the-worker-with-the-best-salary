use employees;
SELECT 
    s.emp_no, s.salary, d.dept_no, d.dept_name ,s.from_date,s.to_date
FROM
    salaries s
    inner join
    dept_emp de on de.emp_no = s.emp_no
    inner join
    departments d on d.dept_no = de.dept_no
    order by salary desc
    limit 10;