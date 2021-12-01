--*В селектах закомментированы строки. Для наглядности правильности выполнения селекта их можно убрать. В задание эти строки не входят.
--**Также в комментарии ушли команды получившие второй способ решения задачи. В решение ушли скрипты что по моему мнению что проще, логичнее и короче.
-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employee_name, monthly_salary from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary.id = employee_salary.salary_id; 
-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employee_name/*, monthly_salary*/ from employees
join employee_salary on employee_salary.employee_id = employees.id
join salary on salary.id = employee_salary.salary_id 
where monthly_salary < (2000);
-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary/*, employee_name*/ from employees
right join employee_salary on employee_salary.employee_id = employees.id
right join salary on salary.id = employee_salary.salary_id
where employee_name is null;
--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select monthly_salary/*, employee_name*/ from employees
right join employee_salary on employee_salary.employee_id = employees.id
right join salary on salary.id = employee_salary.salary_id
where employee_name is null and monthly_salary > (2000);
-- 5. Найти всех работников кому не начислена ЗП.
select employee_name/*, monthly_salary*/ from employees
left join employee_salary on employee_salary.employee_id = employees.id
left join salary on salary.id = employee_salary.salary_id
where monthly_salary is null;
--6. Вывести всех работников с названиями их должности.
select role_name, employee_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id 
order by role_name;
--7. Вывести имена и должность только Java разработчиков.
select role_name, employee_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
--where role_name = 'Junior Java developer' or role_name = 'Middle Java developer' or role_name = 'Senior Java developer' 
where role_name like '%Java %'
order by role_name;
--8. Вывести имена и должность только Python разработчиков.
select role_name, employee_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
--where role_name = 'Junior Python developer' or role_name = 'Middle Python developer' or role_name = 'Senior Python developer' 
where role_name like '%Python %'
order by role_name;
--9. Вывести имена и должность всех QA инженеров.
select role_name, employee_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
where role_name like '%QA %'
order by role_name;
--10. Вывести имена и должность ручных QA инженеров.
select role_name, employee_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
--where role_name = 'Junior Manual QA engineer' or role_name = 'Middle Manual QA engineer' or role_name = 'Senior Manual QA engineer'
where role_name like '%Manual QA%'
order by role_name;
--11. Вывести имена и должность автоматизаторов QA
select role_name, employee_name from employees
join roles_employee on employees.id = roles_employee.employee_id
join roles on roles.id = roles_employee.role_id
--where role_name = 'Junior Automation QA engineer' or role_name = 'Middle Automation QA engineer' or role_name = 'Senior Automation QA engineer'
where role_name like '%Automation QA%'
order by role_name;
--12. Вывести имена и зарплаты Junior специалистов
select employee_name, monthly_salary/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Junior %';
--13. Вывести имена и зарплаты Middle специалистов
select employee_name, monthly_salary/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Middle %';
--14. Вывести имена и зарплаты Senior специалистов
select employee_name, monthly_salary/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where role_name like '%Senior %';
--15. Вывести зарплаты Java разработчиков
select monthly_salary/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Java %';
--16. Вывести зарплаты Python разработчиков
select monthly_salary/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Python %';

--Запрос для проверки последующих запросов. В нем вывожу имена, зарплаты и должности.
select employee_name, monthly_salary, role_name from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id;  

--17. Вывести имена и зарплаты Junior Python разработчиков
select monthly_salary, employee_name/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior Python %';
--18. Вывести имена и зарплаты Middle JS разработчиков
select monthly_salary, employee_name/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle JavaScript %'; /*выводит пустую таблицу ибо рандом такой рандом...=)*/
--19. Вывести имена и зарплаты Senior Java разработчиков
select monthly_salary, employee_name/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Senior Java %'; /* Тажe фигня*/
--20. Вывести зарплаты Junior QA инженеров
select monthly_salary/*, role_name*/ from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior QA %'; /*fucking random!*/
--21. Вывести среднюю зарплату всех Junior специалистов
select avg(monthly_salary) as avg_salary_junior from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Junior %';
--22. Вывести сумму зарплат JS разработчиков
select sum(monthly_salary) as sum_salary_Js_dev from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%JavaScript %';
--23. Вывести минимальную ЗП QA инженеров
select min(monthly_salary) as min_salary_qa from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA %';
--24. Вывести максимальную ЗП QA инженеров
select max(monthly_salary) as max_salary_qa from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA %';
--25. Вывести количество QA инженеров
select count(role_name) as count_qa from roles
where role_name like '%QA %';
--Не совсем понял фишку 25 задания.. ниже вывел количество QA что получают зп
select count(role_name) as count_qa from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%QA %';
--26. Вывести количество Middle специалистов.
select count(role_name) as count_middle from roles
where role_name like '%Middle %';
--Повтаряю
select count(role_name) as count_middle from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%Middle %';
--27. Вывести количество разработчиков
select count(role_name) as count_developer from roles
where role_name like '%developer';
--Повторяю
select count(role_name) as count_developer from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%developer';
--28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(monthly_salary) as count_developer from roles
join roles_employee on roles.id = roles_employee.role_id 
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id
where role_name like '%developer';
--29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employee_name, role_name, monthly_salary from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
order by monthly_salary;
--30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employee_name, role_name, monthly_salary from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where monthly_salary between 1700 and 2300
order by monthly_salary;
--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employee_name, role_name, monthly_salary from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where monthly_salary < 2300
order by monthly_salary;
--32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employee_name, role_name, monthly_salary from roles
join roles_employee on roles.id = roles_employee.role_id 
join employees on roles_employee.employee_id = employees.id
join employee_salary on employee_salary.employee_id = roles_employee.employee_id
join salary on salary.id = employee_salary.salary_id 
where monthly_salary in (1100, 1500, 2000)
order by monthly_salary; /*зарплаты 1100 нет*/







