--creating table for retiring titles using inner join and ordering acending

select e.emp_no,
	e.first_name,
	e.last_name,
	t.title,
	t.from_date,
	t.to_date
into retirement_titles
from employees as e
	inner join titles as t
	on e.emp_no = t.emp_no
where (e.birth_date between '1952-01-01' and '1955-12-31')
order by e.emp_no asc;

select * from retirement_titles;


--Dictinct with Orderby to remove duplicate rows into unique title table

select distinct on (rt.emp_no) rt.emp_no,
rt.first_name,
rt.last_name,
rt.title
into unique_titles 
from retirement_titles as rt
order by rt.emp_no, rt.to_date desc;

select * from unique_titles;

--employee ct from unique titles
select count (ut.title), ut.title
into retiring_titles
from unique_titles as ut
group by ut.title
order by count desc;

select * from retiring_titles;

--filter Mentorship Eligibile emp with multiple inner join into new table
select distinct on (e.emp_no) e.emp_no,
	e.first_name,
	e.last_name,
	e.birth_date,
	de.from_date,
	de.to_date,
	t.title
into mentorship_eligibility
from employees as e
	inner join dept_emp as de
	on e.emp_no = de.emp_no
		inner join titles as t
		on e.emp_no = t.emp_no
where (e.birth_date between '1965-01-01' and '1965-12-31')
and (de.to_date = '9999-01-01')
order by e.emp_no;

select * from mentorship_eligibility;