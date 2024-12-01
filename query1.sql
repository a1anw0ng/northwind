
# Use W3 tutorial
https://www.w3schools.com/sql/default.asp

# Use chatGTP to find the difference of mysql and postgres sql

select * from categories;

select * from customer_customer_demo;

select * from customer_demographics;

select * from customers;

select * from employee_territories;

select * from employees;

select * from order_details;

select * from orders;

select * from products;

select * from region;

select * from shippers;

select * from suppliers;

select * from territories;

select * from us_states;


CREATE TABLE employees (
    employee_id smallint NOT NULL,  <----------------- Primary key  -- must be unique, not NULL, No Empty Value, 
    last_name character varying(20) NOT NULL,
    first_name character varying(10) NOT NULL,
    title character varying(30),
    title_of_courtesy character varying(25),
    birth_date date,
    hire_date date,
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    home_phone character varying(24),
    extension character varying(4),
    photo bytea,
    notes text,
    reports_to smallint,
    photo_path character varying(255)
);


CREATE TABLE employee_territories (
    employee_id smallint NOT NULL,   <----------------- Forign Key  Can be dupilcate, 
    territory_id character varying(20) NOT NULL
);



SELECT *
FROM employees
INNER JOIN employee_territories ON employees.employee_id = employee_territories.employee_id;



SELECT DISTINCT Last_name, first_name
FROM employees
INNER JOIN employee_territories ON employees.employee_id = employee_territories.employee_id
where employees.title = 'Sales Representative';