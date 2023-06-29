select d.name, avg(s.AMT(USD)) as avg_sal from Salaries s, Employees e, Departments d where d.id = e.dept_id and e.id = s.emp_id group by dept_id order by avg_sal desc limit 3;

/*get average salary by using aggregate function avg. Used group by to group for each department. Used order by to sort in descending order and then limit to get top 3 average salary.*/