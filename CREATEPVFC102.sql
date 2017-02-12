drop table PV_uses 				cascade;
drop table PV_worksin 			cascade;
drop table PV_workcenter 		cascade ;
drop table PV_doesbusinessin 	cascade ;
drop table PV_employeeskills 	cascade ;
drop table PV_supplies 			cascade ;
drop table PV_producedin 		cascade ;
drop table PV_orderline	 		cascade ;
drop table PV_product 			cascade ;
drop table PV_productline 		cascade ;
drop table PV_order 			cascade ;
drop table PV_salesperson 		cascade ;
drop table PV_vendor 			cascade ;
drop table PV_skill 			cascade ;
drop table PV_rawmaterial 		cascade ;
drop table PV_territory 		cascade ;
drop table PV_employee 			cascade ;
drop table PV_customer 			cascade ;

create table PV_customer
    (customerid          decimal(11,0)  not null,
	 customername        varchar(25)    not null,
	 customeraddress     varchar(30)    null ,
     customercity        varchar(20)    null ,              
     customerstate       char(2)        null ,
     customerpostalcode  varchar(10)    null ,
     primary key (customerid)
	 );

create table PV_territory
    (territoryid         decimal(11,0)  not null,
     territoryname       varchar(50)    null  ,
     primary key (territoryid)
	 );

create table PV_doesbusinessin
    (customerid          decimal(11,0)      not null,
     territoryid         decimal(11,0)      not null,
     primary key (customerid, territoryid),
     foreign key (customerid) 
	  references PV_customer(customerid),
     foreign key (territoryid) 
	  references PV_territory(territoryid)
	 );

create table PV_employee
    (employeeid          varchar(10)    not null,
     employeename        varchar(25)    null,
     employeeaddress     varchar(30)    null,
     employeebirthdatetime   datetime   null   ,
     employeecity        varchar(20)    null,
     employeestate       char(2)        null ,
     employeezipcode     varchar(10)    null,
     employeedatetimehired   datetime   null   ,
     employeesupervisor  varchar(10)    null,
	 primary key (employeeid)
	 );

create table PV_skill
    (skillid             varchar(12)    not null,
	 skilldescription    varchar(30)    null,              
	 primary key (skillid)
	 );

create table PV_employeeskills
    (employeeid          varchar(10)    not null,
     skillid             varchar(12)    not null,
	 qualifydate 	    datetime	    null,
	 primary key (employeeid, skillid),
	 foreign key (employeeid) 
	  references PV_employee(employeeid),
	 foreign key (skillid) 
	  references PV_skill(skillid)
	 );

create table PV_order
    (orderid             decimal(11,0)    not null,
	 customerid          decimal(11,0)    null ,
     orderdate           datetime         null,
	 fulfillmentdate     datetime	      null,
     salespersonid	     decimal(4,0)	  null,
     shipadrsid  	     decimal(4,0)	  null,
	 primary key (orderid),
	 foreign key (customerid) 
	  references PV_customer(customerid),
	 foreign key (salespersonid)
	  references PV_salesperson(salespersonid),
	 foreign key (shipadrsid)
	  references PV_customershipaddress(shipaddressid)
	 );

create table PV_workcenter
    (workcenterid         varchar(12)   not null,
     workcenterlocation   varchar(30)   null ,
	 primary key (workcenterid)
	 );

create table PV_productline
    (productlineid       decimal(11,0)  not null,
     productlinename     varchar(50)    null ,
	 primary key (productlineid)
	 );

create table PV_product
    (productid           decimal(11,0)  not null,
     productlineid       decimal(11,0)  null,
     productdescription  varchar(50)    null,
     productfinish       varchar(20)    null,
     productstandardprice decimal(6,2)  null ,
	 productonhand	      decimal(6,0)  null,
	 primary key (productid),
	 foreign key (productlineid) 
		references PV_productline(productlineid)
	 );

create table PV_producedin
	(productid 	         decimal(11,0)  not null,
     workcenterid        varchar(12)    not null,
	 primary key (productid, workcenterid),
	 foreign key (productid) 
	  references PV_product(productid),
	 foreign key (workcenterid) 
	  references PV_workcenter(workcenterid)
	 );

create table PV_orderline
	(orderlineid	     decimal(4,0)	 not null,
	 orderid             decimal(11,0)   not null,
     productid           decimal(11,0)   not null,
     orderedquantity     decimal(11,0)   null,
	 primary key (orderlineid),
	 foreign key (orderid) 
	  references PV_order(orderid),
	 foreign key (productid) 
	  references PV_product(productid)
	 );

create table PV_rawmaterial
    (materialid          varchar(12)   not null,
     materialname        varchar(30)   null,
	 thickness		varchar(50) null,
	 width			varchar(50) null,
	 size			varchar(50) null,
	 material		varchar(15) null,
     materialstandardprice decimal(6,2) null,
     unitofmeasure       varchar(10)   null ,
	 materialtype		varchar(50) null,
	 primary key (materialid)
	 );

create table PV_salesperson
    (salespersonid       decimal(11,0) not null,              
     salespersonname     varchar(25)   null ,
     salespersonphone    varchar(50)   null ,
     salespersonfax      varchar(50)   null,
     territoryid         decimal(11,0) null  ,
	 salespersonaddress  varchar(30)   null,
     salespersoncity     varchar(20)   null,
	 salespersonstate    char(2)       null,
	 salespersonzip      varchar(20)   null,
	 primary key (salespersonid),
	 foreign key (territoryid) 
		references PV_territory(territoryid)
	 );

create table PV_vendor
    (vendorid            decimal(11,0)  not null,
     vendorname          varchar(25)    null,
     vendoraddress       varchar(30)    null,
     vendorcity          varchar(20)    null,
     vendorstate         char(2)        null,
     vendorzipcode       varchar(50)    null,
     vendorfaxnumber     varchar(10)    null,              
     vendorphone         varchar(10)    null,
     vendorcontact       varchar(50)    null,
     vendortaxidnumber   varchar(50)    null,
	 primary key (vendorid)
	 );

create table PV_supplies
    (vendorid            decimal(11,0)   not null,
     materialid          varchar(12)     not null,
     supplyunitprice   decimal(6,2)    null,              
	 primary key (vendorid, materialid),
	 foreign key (materialid) 
	  references PV_rawmaterial(materialid),
	 foreign key (vendorid) 
	  references PV_vendor(vendorid)
	 );

create table PV_uses
    (productid           decimal(11,0)  not null,
     materialid          varchar(12)    not null,
     quantityrequired    int            null,
	 primary key (productid, materialid),
	 foreign key (productid) 
	  references PV_product(productid),
	 foreign key (materialid) 
	  references PV_rawmaterial(materialid)
	 );

create table PV_worksin
	(employeeid          varchar(10)    not null,
     workcenterid        varchar(12)    not null,
	 primary key (employeeid, workcenterid),
	 foreign key (employeeid) 
	  references PV_employee(employeeid),
	 foreign key (workcenterid) 
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

/*
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (1, 'contemporary casuals', '1355 s hines blvd', 'gainesville', 'fl', '32601-2871');
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (2, 'value furniture', '15145 s.w. 17th st.', 'plano', 'tx', '75094-7743');
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (3, 'home furnishings', '1900 allard ave.', 'albany', 'ny', '12209-1125');
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (4, 'eastern furniture', '1925 beltline rd.', 'carteret', 'nj', '07008-3188');
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (5, 'impressions', '5585 westcott ct.', 'sacramento', 'ca', '94206-4056');
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (6, 'furniture gallery', '325 flatiron dr.', 'boulder', 'co', '80514-4432');
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (7, 'period furniture', '394 rainbow dr.', 'seattle', 'wa', '97954-5589');
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (8, 'california classics', '816 peach rd.', 'santa clara', 'ca', '96915-7754');
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (9, 'm and h casual furniture', '3709 first street', 'clearwater', 'fl', '34620-2314');
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (10, 'seminole interiors', '2400 rocky point dr.', 'seminole', 'fl', '34646-4423');
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (11, 'american euro lifestyles', '2424 missouri ave n.', 'prospect park', 'nj', '07508-5621');
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (12, 'battle creek furniture', '345 capitol ave. sw', 'battle creek', 'mi', '49015-3401');
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (13, 'heritage furnishings', '66789 college ave.', 'carlisle', 'pa', '17013-8834');
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (14, 'kaneohe homes', '112 kiowai st.', 'kaneohe', 'hi', '96744-2537');
insert into PV_customer  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
values  (15, 'mountain scenes', '4132 main street', 'ogden', 'ut', '84403-4432');

insert into PV_territory  (territoryid, territoryname)
values  (1, 'southeast');
insert into PV_territory  (territoryid, territoryname)
values  (2, 'southwest');
insert into PV_territory  (territoryid, territoryname)
values  (3, 'northeast');
insert into PV_territory  (territoryid, territoryname)
values  (4, 'northwest');
insert into PV_territory  (territoryid, territoryname)
values  (5, 'central');

insert into PV_doesbusinessin  (customerid, territoryid)
values  (1, 1);
insert into PV_doesbusinessin  (customerid, territoryid)
values  (1, 2);
insert into PV_doesbusinessin  (customerid, territoryid)
values  (2, 2);
insert into PV_doesbusinessin  (customerid, territoryid)
values  (3, 3);
insert into PV_doesbusinessin  (customerid, territoryid)
values  (4, 3);
insert into PV_doesbusinessin  (customerid, territoryid)
values  (5, 2);
insert into PV_doesbusinessin  (customerid, territoryid)
values  (6, 5);

insert into PV_employee  (employeeid, employeename, employeeaddress, employeecity, employeestate, employeezip, employeedatetimehired, employeebirthdatetime, employeesupervisor)
values  ('123-44-345', 'jim jason', '2134 hilltop rd', null, 'tn', null, str_to_date('12/jun/99', '%d/%b/%y'), null, '454-56-768');
insert into PV_employee  (employeeid, employeename, employeeaddress, employeecity, employeestate, employeezip, employeedatetimehired, employeebirthdatetime, employeesupervisor)
values  ('454-56-768', 'robert lewis', '17834 deerfield ln', 'nashville', 'tn', null, str_to_date('01/jan/99', '%d/%b/%y'), null, null);

insert into PV_skill  (skillid, skilldescription)
values  ('bs12', '12in band saw');
insert into PV_skill  (skillid, skilldescription)
values  ('qc1', 'quality control');
insert into PV_skill  (skillid, skilldescription)
values  ('rt1', 'router');
insert into PV_skill  (skillid, skilldescription)
values  ('so1', 'sander-orbital');
insert into PV_skill  (skillid, skilldescription)
values  ('sb1', 'sander-belt');
insert into PV_skill  (skillid, skilldescription)
values  ('ts10', '10in table saw');
insert into PV_skill  (skillid, skilldescription)
values  ('ts12', '12in table saw');
insert into PV_skill  (skillid, skilldescription)
values  ('uc1', 'upholstery cutter');
insert into PV_skill  (skillid, skilldescription)
values  ('us1', 'upholstery sewer');
insert into PV_skill  (skillid, skilldescription)
values  ('ut1', 'upholstery tacker');

insert into PV_employeeskills  (employeeid, skillid)
values  ('123-44-345', 'bs12');
insert into PV_employeeskills  (employeeid, skillid)
values  ('123-44-345', 'rt1');
insert into PV_employeeskills  (employeeid, skillid)
values  ('454-56-768', 'bs12');

insert into PV_order  (orderid, orderdatetime, customerid)
values  (1001, str_to_date('21/oct/10', '%d/%b/%y'), 1);
insert into PV_order  (orderid, orderdatetime, customerid)
values  (1002, str_to_date('21/oct/10', '%d/%b/%y'), 8);
insert into PV_order  (orderid, orderdatetime, customerid)
values  (1003, str_to_date('22/oct/10', '%d/%b/%y'), 15);
insert into PV_order  (orderid, orderdatetime, customerid)
values  (1004, str_to_date('22/oct/10', '%d/%b/%y'), 5);
insert into PV_order  (orderid, orderdatetime, customerid)
values  (1005, str_to_date('24/oct/10', '%d/%b/%y'), 3);
insert into PV_order  (orderid, orderdatetime, customerid)
values  (1006, str_to_date('24/oct/10', '%d/%b/%y'), 2);
insert into PV_order  (orderid, orderdatetime, customerid)
values  (1007, str_to_date('27/oct/10', '%d/%b/%y'), 11);
insert into PV_order  (orderid, orderdatetime, customerid)
values  (1008, str_to_date('30/oct/10', '%d/%b/%y'), 12);
insert into PV_order  (orderid, orderdatetime, customerid)
values  (1009, str_to_date('05/nov/10', '%d/%b/%y'), 4);
insert into PV_order  (orderid, orderdatetime, customerid)
values  (1010, str_to_date('05/nov/10', '%d/%b/%y'), 1);

insert into PV_productline  (productlineid, productlinename)
values  (1, 'cherry tree');
insert into PV_productline  (productlineid, productlinename)
values  (2, 'scandinavia');
insert into PV_productline  (productlineid, productlinename)
values  (3, 'country look');

insert into PV_product  (productid, productdescription, productfinish, productstandardprice, productlineid)
values  (1, 'end table', 'cherry', 175, 1);
insert into PV_product  (productid, productdescription, productfinish, productstandardprice, productlineid)
values  (2, 'coffee table', 'natural ash', 200, 2);
insert into PV_product  (productid, productdescription, productfinish, productstandardprice, productlineid)
values  (3, 'computer desk', 'natural ash', 375, 2);
insert into PV_product  (productid, productdescription, productfinish, productstandardprice, productlineid)
values  (4, 'entertainment center', 'natural maple', 650, 3);
insert into PV_product  (productid, productdescription, productfinish, productstandardprice, productlineid)
values  (5, 'writers desk', 'cherry', 325, 1);
insert into PV_product  (productid, productdescription, productfinish, productstandardprice, productlineid)
values  (6, '8-drawer desk', 'white ash', 750, 2);
insert into PV_product  (productid, productdescription, productfinish, productstandardprice, productlineid)
values  (7, 'dining table', 'natural ash', 800, 2);
insert into PV_product  (productid, productdescription, productfinish, productstandardprice, productlineid)
values  (8, 'computer desk', 'walnut', 250, 3);

insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1001, 1, 2);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1001, 2, 2);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1001, 4, 1);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1002, 3, 5);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1003, 3, 3);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1004, 6, 2);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1004, 8, 2);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1005, 4, 3);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1006, 4, 1);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1006, 5, 2);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1006, 7, 2);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1007, 1, 3);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1007, 2, 2);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1008, 3, 3);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1008, 8, 3);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1009, 4, 2);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1009, 7, 3);
insert into PV_orderline  (orderid, productid, orderedquantity)
values  (1010, 8, 10);

insert into PV_salesperson  (salespersonid, salespersonname, salespersonphone, salespersonfax, territoryid)
values  (1, 'doug henny', '8134445555', null, 1);
insert into PV_salesperson  (salespersonid, salespersonname, salespersonphone, salespersonfax, territoryid)
values  (2, 'robert lewis', '8139264006', null, 2);
insert into PV_salesperson  (salespersonid, salespersonname, salespersonphone, salespersonfax, territoryid)
values  (3, 'william strong', '5053821212', null, 3);
insert into PV_salesperson  (salespersonid, salespersonname, salespersonphone, salespersonfax, territoryid)
values  (4, 'julie dawson', '4355346677', null, 4);
insert into PV_salesperson  (salespersonid, salespersonname, salespersonphone, salespersonfax, territoryid)
values  (5, 'jacob winslow', '2238973498', null, 5);

insert into PV_workcenter  (workcenterid, workcenterlocation)
values  ('sm1', 'main saw mill');
insert into PV_workcenter  (workcenterid, workcenterlocation)
values  ('wr1', 'warehouse and receiving');

insert into works_in_t (employeeid, work_centerid)
values ('123-44-345', 'sm1');
*/
commit;