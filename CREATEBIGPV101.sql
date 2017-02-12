/*
  File: CREATEBIGPV10E.sql

  Student's Name: Smitha Janardan

  Student's UT EID: ssj398
	 
  Course Name: CS 327E

  Unique Number: 52885

  Date Created:

  Date Last Modified:

*/

create table PV_customer
 (customerid         decimal(4,0)          not null
 ,customername       varchar(25)    null
 ,customeraddress    varchar(30)    null
 ,customercity       varchar(20)       null          
 ,customerstate      char(2)        null
 ,customerpostalcode varchar(10)    null
 ,primary key (customerid)
);

create table PV_territory
 (territoryid        decimal(4,0)         not null
 ,territoryname      varchar(50)    null
 ,primary key (territoryid)
);

create table PV_doesbusinessin
 (customerid         decimal(4,0)           not null
 ,territoryid        decimal(4,0)           not null
 ,primary key (customerid, territoryid)
 ,foreign key (customerid) 
	references PV_customer(customerid)
 ,foreign key (territoryid) 
	references PV_territory(territoryid)
);

create table PV_salesperson
 (salespersonname       varchar(25)    null
 ,salespersontelephone varchar(50)    null
 ,salespersonfax       varchar(50) null
 ,salespersonterritoryid        decimal(4,0)          not null                
 ,salespersonaddress   varchar(30)    null
 ,salespersoncity      varchar(20)    null
 ,salespersonstate     char(2)        null
 ,salespersonzip       varchar(20)   null
 ,primary key (salespersonname)
 ,foreign key (salespersonterritoryid) 
	references PV_territory(territoryid)
);

create table PV_skill
 (skillid            varchar(12)    not null
 ,skilldescription   varchar(30)         null         
 ,primary key (skillid)
);

create table PV_employee
 (employeeid         varchar(10)    not null
 ,employeename       varchar(25)    null
 ,employeeaddress    varchar(30)    null
 ,employeecity       varchar(20)    null
 ,employeestate      char(2)        null
 ,employeezip        varchar(10)         null  
 ,employeedatehired  datetime       null
 ,employeebirthdate  datetime      null
 ,employeesupervisor varchar(10)    null
 ,primary key (employeeid)
);

create table PV_employeeskills
 (employeeid         varchar(10)    not null
 ,skillid            varchar(12)    not null
 ,qualifydate 	    datetime	         null
 ,primary key (employeeid, skillid)
 ,foreign key (employeeid) 
	references PV_employee(employeeid)
 ,foreign key (skillid) 
	references PV_skill(skillid)
);

create table PV_workcenter
 (workcenterid       varchar(12)    not null
 ,workcenterlocation  varchar(30)           null
 ,primary key (workcenterid)
);

create table PV_worksin
 (employeeid          varchar(10)    not null
 ,workcenterid        varchar(12)    not null
 ,primary key (employeeid, workcenterid)
 ,foreign key (employeeid) 
	references PV_employee(employeeid)
 ,foreign key (workcenterid) 
	references PV_workcenter(workcenterid)
);

create table PV_productline
 (productlineid     decimal(4,0)         not null
 ,productlinename    varchar(50)            null   
 ,primary key (productlineid)
);

create table PV_product
 (productid            decimal(4,0)         not null
 ,productdescription   varchar(50) null
 ,productfinish        varchar(20)       null
 ,productstandardprice decimal(6,2)   null
 ,productonhand	      decimal(6,0) null
 ,productlineid        decimal(4,0)      null
 ,primary key (productid)
 ,foreign key (productlineid) 
	references PV_productline(productlineid)
);

create table PV_producedin
 (productid	  decimal(4,0)	 not null
 ,workcenterid     varchar(12)    not null
 ,primary key (productid, workcenterid)
 ,foreign key (productid) 
	references PV_product(productid)
 ,foreign key (workcenterid) 
	references PV_workcenter(workcenterid)
);

create table PV_customershipaddress
 (shipaddressid	decimal(4,0)	not null
 ,customerid	decimal(4,0)	not null
 ,territoryid	decimal(4,0)	not null
 ,shipaddress	varchar(30)	null
 ,shipcity	varchar(20)	null
 ,shipstate	char(2)     	null
 ,shipzip	varchar(10)	null
 ,shipdirections	varchar(100)	null
 ,primary key (shipaddressid)
 ,foreign key (customerid)
	references PV_customer(customerid)
 ,foreign key (territoryid)
	references PV_territory(territoryid)
);

create table PV_order
 (orderid            decimal(5,0)        not null   
 ,orderdate          date null
 ,customerid         decimal(4,0)       null
 ,fulfillmentdate    datetime	null
 ,salespersonid	    decimal(4,0)	null
 ,shipaddressid	    decimal(4,0)	null
 ,primary key (orderid)
 ,foreign key (customerid) 
	references PV_customer(customerid)
 ,foreign key (salespersonid)
	references PV_salesperson(salespersonid)
 ,foreign key (shipaddressid)
	references PV_customershipaddress(shipaddressid)
);

create table PV_orderline
 (orderlineid	    decimal(4,0)	     not null
 ,orderid            decimal(5,0)        not null
 ,productid          decimal(4,0)        not null
 ,orderedquantity    decimal(10,0)         null
 ,primary key (orderlineid)
 ,foreign key (orderid) 
	references PV_order(orderid)
 ,foreign key (productid) 
	references PV_product(productid)
);

create table PV_paymenttype
 (paymenttypeid  varchar(50)    not null
 ,typedescription varchar(50)   not null
 ,primary key (paymenttypeid)
);
  
create table PV_payment
 (paymentid      decimal(5,0)    not null
 ,orderid        decimal(5,0)    not null
 ,paymentdate    datetime  null
 ,paymenttypeid  varchar(50)  not null                
 ,paymentamount  decimal(6,2)        null  
 ,paymentcomment varchar(255)         null
 ,primary key (paymentid)
 ,foreign key (orderid)
    references PV_order(orderid)
 ,foreign key (paymenttypeid)
    references PV_paymenttype(paymenttypeid)
);
    
create table PV_shipped
 (orderlineid  decimal(4,0) not null
 ,shippedquantity     decimal(10,0) not null
 ,shippeddate         datetime
 ,primary key (orderlineid)
 ,foreign key (orderlineid)
    references PV_orderline(orderlineid)
);


create table PV_vendor
 (vendorid           decimal(4,0)         not null
 ,vendorname         varchar(25)    null
 ,vendoraddress      varchar(30)    null
 ,vendorcity         varchar(20)    null
 ,vendorstate        char(2)        null
 ,vendorzipcode      varchar(50)    null
 ,vendorphone        varchar(12)    null
 ,vendorfax          varchar(12)                  null
 ,vendorcontact      varchar(50)    null
 ,vendortaxidnumber  varchar(50)    null
 ,primary key (vendorid)
);

create table PV_rawmaterial
 (materialid             varchar(12)    not null
 ,materialname           varchar(30)  null
 ,thickness		varchar(50) null
 ,width			varchar(50) null
 ,size			varchar(50) null
 ,material		varchar(15) null
 ,materialstandardprice  decimal(9,5) null
 ,unitofmeasure          varchar(15) null
 ,materialtype		varchar(50) null
 ,primary key (materialid)
);

create table PV_uses
 (productid          decimal(4,0)      not null
 ,materialid         varchar(12)    not null
 ,quantityrequired   decimal(5,0)            null  
 ,primary key (productid, materialid)
 ,foreign key (productid) 
	references PV_product(productid)
 ,foreign key (materialid) 
	references PV_rawmaterial(materialid)
);

create table PV_supplies
 (vendorid           decimal(4,0)         not null
 ,materialid         varchar(12)       not null
 ,supplyunitprice    decimal(6,2)       null
 ,primary key (vendorid, materialid)
 ,foreign key (materialid) 
	references PV_rawmaterial(materialid)
 ,foreign key (vendorid) 
	references PV_vendor(vendorid)
);

commit;