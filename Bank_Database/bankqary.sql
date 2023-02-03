-- Retrieve all data from table DEPOSIT
select * from deposit;

-- Retrieve all data from table BORROW
select * from borrow;

-- Retrieve all data from table CUSTOMERS
select * from customers;

-- Display Account No, Customer Name & Amount from DEPOSIT
select actno,cname,amount from deposit;

-- Display Loan No, Amount from BORROW
select loanno,amount from borrow;

-- Display loan details of all customers who belongs to ‘ANDHERI’ branch
select * from borrow where  bname='andheri';

-- Give account no and amount of depositor, whose account no is equals to 106
select actno,amount from deposit where actno=106;

-- Give name of borrowers having amount greater than 5000
select cname from borrow where amount>5000;

-- Give name of customers who opened account after date '1-12-96'
select * from deposit where adate > '1-12-96'

-- Display name of customers whose account no is less than 105
select cname from deposit where actno <105;

-- name of customer who belongs to either ‘NAGPUR’ Or ‘DELHI’. (OR & IN)
select cname from customers where city ='nagpur' or city ='delhi';

-- Display name of customers with branch whose amount is greater than 4000 and account no is less than 105
select cname from deposit where amount > 4000 and actno < 105;

-- Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 (AND & BETWEEN)
select * from borrow where amount between 3000 and 8000;

-- Find all depositors who do not belongs to ‘ANDHERI’ branch
select * from deposit where	bname != 'andheri';

-- Display the name of borrowers whose amount is NULL
select * from borrow where amount is null;

-- Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’ Or ‘M.G. ROAD’ and Account No is less than 104
select actno,cname,amount from deposit where (bname ='ajni' and bname = 'karolbag') or bname='andheri';

-- Display all the details of first five customers
select top 5 * from customers;

-- Display all the details of first three depositors whose amount is greater than 1000
select top 3 * from deposit where amount >1000;

-- Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to 'ANDHERI' 
select top 5 loanno,cname from borrow where bname != 'andheri';

-- Retrieve all unique cities using DISTINCT.(Use Customers Table)
select distinct city from customers;

-- Retrieve all unique branches using DISTINCT.(Use Branch Table)
select distinct bname from branch

-- Retrieve all the records of customer table as per their city name in ascending order
select * from customers order by city;

-- Retrieve all the records of deposit table as per their amount column in descending order
select * from deposit order by amount desc;

-- Retrieve all the details of customers in which decending order of their city name
select * from customers order by city desc;

-- Show all unique borrowers & label the column UNI_Borrowers. (Display only Names)
select distinct cname as UNI_Borrowers from borrow;