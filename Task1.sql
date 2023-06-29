select d.name, avg(s.AMT(USD)) as avg_sal from Salaries s, Employees e, Departments d where d.id = e.dept_id and e.id = s.emp_id group by dept_id order by avg_sal desc limit 3;