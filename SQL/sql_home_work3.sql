--*� �������� ���������������� ������. ��� ����������� ������������ ���������� ������� �� ����� ������. � ������� ��� ������ �� ������.
--**����� � ����������� ���� ������� ���������� ������ ������ ������� ������. � ������� ���� ������� ��� �� ����� ������ ��� �����, �������� � ������.
-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary.id = employee_salary.salary_id; 
-- 2. ������� ���� ���������� � ������� �� ������ 2000.
select employee_name/*, monthly_salary*/ from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary.id = employee_salary.salary_id 
where monthly_salary < (2000);
-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary/*, employee_name*/ from employees
right join employee_salary on employee_salary.employee_id = employees.id
right join salary on salary.id = employee_salary.salary_id
where employee_name is null;
--4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select monthly_salary/*, employee_name*/ from employees
right join employee_salary on employee_salary.employee_id = employees.id
right join salary on salary.id = employee_salary.salary_id
where employee_name is null and monthly_salary > (2000);
-- 5. ����� ���� ���������� ���� �� ��������� ��.
select employee_name/*, monthly_salary*/ from employees
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on salary.id = employee_salary.salary_id
where monthly_salary is null;
--6. ������� ���� ���������� � ���������� �� ���������.
select role_name, employee_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id 
order by role_name;
--7. ������� ����� � ��������� ������ Java �������������.
select role_name, employee_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
--where role_name = 'Junior Java developer' or role_name = 'Middle Java developer' or role_name = 'Senior Java developer' 
where role_name like '%Java %'
order by role_name;
--8. ������� ����� � ��������� ������ Python �������������.
select role_name, employee_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
--where role_name = 'Junior Python developer' or role_name = 'Middle Python developer' or role_name = 'Senior Python developer' 
where role_name like '%Python %'
order by role_name;
--9. ������� ����� � ��������� ���� QA ���������.
select role_name, employee_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%QA %'
order by role_name;
--10. ������� ����� � ��������� ������ QA ���������.
select role_name, employee_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
--where role_name = 'Junior Manual QA engineer' or role_name = 'Middle Manual QA engineer' or role_name = 'Senior Manual QA engineer'
where role_name like '%Manual QA%'
order by role_name;
--11. ������� ����� � ��������� ��������������� QA
select role_name, employee_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
--where role_name = 'Junior Automation QA engineer' or role_name = 'Middle Automation QA engineer' or role_name = 'Senior Automation QA engineer'
where role_name like '%Automation QA%'
order by role_name;
--12. ������� ����� � �������� Junior ������������
select employee_name, monthly_salary/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Junior %';
--13. ������� ����� � �������� Middle ������������
select employee_name, monthly_salary/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Middle %';
--14. ������� ����� � �������� Senior ������������
select employee_name, monthly_salary/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Senior %';
--15. ������� �������� Java �������������
select monthly_salary/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Java %';
--16. ������� �������� Python �������������
select monthly_salary/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Python %';

--������ ��� �������� ����������� ��������. � ��� ������ �����, �������� � ���������.
select employee_name, monthly_salary, role_name from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id;  

--17. ������� ����� � �������� Junior Python �������������
select monthly_salary, employee_name/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior Python %';
--18. ������� ����� � �������� Middle JS �������������
select monthly_salary, employee_name/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle JavaScript %'; /*������� ������ ������� ��� ������ ����� ������...=)*/
--19. ������� ����� � �������� Senior Java �������������
select monthly_salary, employee_name/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Senior Java %'; /* ���e �����*/
--20. ������� �������� Junior QA ���������
select monthly_salary/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior QA %'; /*fucking random!*/
--21. ������� ������� �������� ���� Junior ������������
select avg(monthly_salary) as avg_salary_junior from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior %';
--22. ������� ����� ������� JS �������������
select sum(monthly_salary) as sum_salary_Js_dev from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%JavaScript %';
--23. ������� ����������� �� QA ���������
select min(monthly_salary) as min_salary_qa from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA %';
--24. ������� ������������ �� QA ���������
select max(monthly_salary) as max_salary_qa from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA %';
--25. ������� ���������� QA ���������
select count(role_name) as count_qa from roles
where role_name like '%QA %';
--�� ������ ����� ����� 25 �������.. ���� ����� ���������� QA ��� �������� ��
select count(role_name) as count_qa from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA %';
--26. ������� ���������� Middle ������������.
select count(role_name) as count_middle from roles
where role_name like '%Middle %';
--��������
select count(role_name) as count_middle from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle %';
--27. ������� ���������� �������������
select count(role_name) as count_developer from roles
where role_name like '%developer';
--��������
select count(role_name) as count_developer from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%developer';
--28. ������� ���� (�����) �������� �������������.
select sum(monthly_salary) as count_developer from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%developer';
--29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employee_name, role_name, monthly_salary from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
order by monthly_salary;
--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employee_name, role_name, monthly_salary from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where monthly_salary between 1700 and 2300
order by monthly_salary;
--31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employee_name, role_name, monthly_salary from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where monthly_salary < 2300
order by monthly_salary;
--32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employee_name, role_name, monthly_salary from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary; /*�������� 1100 ���*/







