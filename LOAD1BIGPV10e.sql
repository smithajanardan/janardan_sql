insert into PV_customer (customerid,customername,customeraddress,customercity,customerstate,customerpostalcode) values (1,'contemporary casuals','1355 s hines blvd','gainesville','fl','32601-2871');
insert into PV_customer (customerid,customername,customeraddress,customercity,customerstate,customerpostalcode) values (2,'value furnitures','15145 s.w. 17th st.','plano','tx','75094-7743');
insert into PV_customer (customerid,customername,customeraddress,customercity,customerstate,customerpostalcode) values (3,'home furnishings','1900 allard ave','albany','ny','12209-1125');
insert into PV_customer (customerid,customername,customeraddress,customercity,customerstate,customerpostalcode) values (4,'eastern furniture','1925 beltline rd.','carteret','nj','07008-3188');
insert into PV_customer (customerid,customername,customeraddress,customercity,customerstate,customerpostalcode) values (5,'impressions','5585 westcott ct.','sacramento','ca','94206-4056');
insert into PV_customer (customerid,customername,customeraddress,customercity,customerstate,customerpostalcode) values (6,'furniture gallery','325 flatiron dr.','boulder','co','80514-4432');
insert into PV_customer (customerid,customername,customeraddress,customercity,customerstate,customerpostalcode) values (7,'new furniture','palace ave','farmington','nm',null);
insert into PV_customer (customerid,customername,customeraddress,customercity,customerstate,customerpostalcode) values (8,'dunkins furniture','7700 main st','syracuse','ny','31590');
insert into PV_customer (customerid,customername,customeraddress,customercity,customerstate,customerpostalcode) values (9,'a carpet','434 abe dr','rome','ny','13440');
insert into PV_customer (customerid,customername,customeraddress,customercity,customerstate,customerpostalcode) values (12,'flanigan furniture','snow flake rd','ft walton beach','fl','32548');
insert into PV_customer (customerid,customername,customeraddress,customercity,customerstate,customerpostalcode) values (13,'ikards','1011 s. main st','las cruces','nm','88001');
insert into PV_customer (customerid,customername,customeraddress,customercity,customerstate,customerpostalcode) values (14,'wild bills','four horse rd','oak brook','il','60522');
insert into PV_customer (customerid,customername,customeraddress,customercity,customerstate,customerpostalcode) values (15,'janetnulls collection','janet lane','virginia beach','va','10012');
insert into PV_customer (customerid,customername,customeraddress,customercity,customerstate,customerpostalcode) values (16,'abc furniture co.','152 geramino drive','rome','ny','13440');


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
insert into PV_territory  (territoryid, territoryname)
	values  (6, 'alaska');
insert into PV_territory  (territoryid, territoryname)
	values  (12, 'hawaii');
insert into PV_territory  (territoryid, territoryname)
	values  (13, 'colorado');
insert into PV_territory  (territoryid, territoryname)
	values  (15, 'arizona');


insert into PV_doesbusinessin  (customerid, territoryid)
	values  (1, 1);
insert into PV_doesbusinessin  (customerid, territoryid)
	values  (2, 2);
insert into PV_doesbusinessin  (customerid, territoryid)
	values  (3, 3);
insert into PV_doesbusinessin  (customerid, territoryid)
	values  (4, 4);
insert into PV_doesbusinessin  (customerid, territoryid)
	values  (5, 5);
insert into PV_doesbusinessin  (customerid, territoryid)
	values  (6, 6);
insert into PV_doesbusinessin  (customerid, territoryid)
	values  (7, 1);

insert into PV_salesperson (salespersonid,salespersonname,salespersontelephone,salespersonfax,salesterritoryid,salespersonaddress,salespersoncity,salespersonstate,salespersonzip) 
values (1,'doug henny','8134445555',null,2,null,null,null,null);
insert into PV_salesperson (salespersonid,salespersonname,salespersontelephone,salespersonfax,salesterritoryid,salespersonaddress,salespersoncity,salespersonstate,salespersonzip) 
values (2,'robert lewis','8139264006',null,13,'124 deerfield','lutz','fl','33549');
insert into PV_salesperson (salespersonid,salespersonname,salespersontelephone,salespersonfax,salesterritoryid,salespersonaddress,salespersoncity,salespersonstate,salespersonzip) 
values (3,'william strong','3153821212',null,3,'787 syracuse lane','syracuse','ny','33240');
insert into PV_salesperson (salespersonid,salespersonname,salespersontelephone,salespersonfax,salesterritoryid,salespersonaddress,salespersoncity,salespersonstate,salespersonzip) 
values (4,'julie dawson','4355346677',null,4,null,null,null,null);
insert into PV_salesperson (salespersonid,salespersonname,salespersontelephone,salespersonfax,salesterritoryid,salespersonaddress,salespersoncity,salespersonstate,salespersonzip) 
values (5,'jacob winslow','2238973498',null,5,null,null,null,null);
insert into PV_salesperson (salespersonid,salespersonname,salespersontelephone,salespersonfax,salesterritoryid,salespersonaddress,salespersoncity,salespersonstate,salespersonzip) 
values (6,'pepe lepue',null,null,13,null,'platsburg','ny',null);
insert into PV_salesperson (salespersonid,salespersonname,salespersontelephone,salespersonfax,salesterritoryid,salespersonaddress,salespersoncity,salespersonstate,salespersonzip) 
values (8,'fred flinstone',null,null,2,'1 rock lane','bedrock','ca','99999');
insert into PV_salesperson (salespersonid,salespersonname,salespersontelephone,salespersonfax,salesterritoryid,salespersonaddress,salespersoncity,salespersonstate,salespersonzip) 
values (9,'mary james','3035555454',null,4,'9 red line','denver','co','55555');
insert into PV_salesperson (salespersonid,salespersonname,salespersontelephone,salespersonfax,salesterritoryid,salespersonaddress,salespersoncity,salespersonstate,salespersonzip) 
values (10,'mary smithson','4075555555',null,15,'4585 maple dr','orlando','fl','32826');

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

insert into PV_employee (employeeid,employeename,employeeaddress,employeecity,employeestate,employeezip,employeedatehired,employeebirthdate,employeesupervisor) values ('123-44-345','phil morris','2134 hilltop rd','knoxville','tn',null,str_to_date('12-jun-99','%d-%b-%y %T'),str_to_date('05-jan-57','%d-%b-%y %T'),'454-56-768');
insert into PV_employee (employeeid,employeename,employeeaddress,employeecity,employeestate,employeezip,employeedatehired,employeebirthdate,employeesupervisor) values ('332445667','lawrence haley','5970 spring crest rd','nashville','tn','54545',str_to_date('05-jan-99','%d-%b-%y %T'),str_to_date('15-aug-63','%d-%b-%y %T'),'454-56-768');
insert into PV_employee (employeeid,employeename,employeeaddress,employeecity,employeestate,employeezip,employeedatehired,employeebirthdate,employeesupervisor) values ('454-56-768','robert lewis','17834 deerfield ln','knoxville','tn','55555',str_to_date('01-jan-98','%d-%b-%y %T'),str_to_date('25-aug-64','%d-%b-%y %T'),'123-44-345');
insert into PV_employee (employeeid,employeename,employeeaddress,employeecity,employeestate,employeezip,employeedatehired,employeebirthdate,employeesupervisor) values ('555955585','mary smith','75 jane lane','clearwater','fl','33879',str_to_date('15-aug-00','%d-%b-%y %T'),str_to_date('06-may-69','%d-%b-%y %T'),'332445667');
insert into PV_employee (employeeid,employeename,employeeaddress,employeecity,employeestate,employeezip,employeedatehired,employeebirthdate,employeesupervisor) values ('laura','laura ellenburg','5342 picklied trout lane','nashville','tn','38010',str_to_date('22-feb-00','%d-%b-%y %T'),null,'454-56-768');

insert into PV_employeeskills  (employeeid, skillid, qualifydate)
values  ('123-44-345', 'bs12',null);
insert into PV_employeeskills  (employeeid, skillid, qualifydate)
values  ('123-44-345', 'rt1', null);
insert into PV_employeeskills  (employeeid, skillid, qualifydate)
values  ('123-44-345', 'qc1', str_to_date('01-jan-01', '%d-%b-%y'));
insert into PV_employeeskills  (employeeid, skillid, qualifydate)
values  ('123-44-345', 'ts10', str_to_date('24-feb-01', '%d-%b-%y'));
insert into PV_employeeskills  (employeeid, skillid, qualifydate)
values  ('332445667', 'bs12', str_to_date('20-jan-99', '%d-%b-%y'));
insert into PV_employeeskills  (employeeid, skillid, qualifydate)
values  ('332445667', 'ts10', str_to_date('20-jan-99', '%d-%b-%y'));
insert into PV_employeeskills  (employeeid, skillid, qualifydate)
values  ('454-56-768', 'bs12', str_to_date('25-feb-01', '%d-%b-%y'));
insert into PV_employeeskills  (employeeid, skillid, qualifydate)
values  ('454-56-768', 'rt1', str_to_date('10-mar-01', '%d-%b-%y'));
insert into PV_employeeskills  (employeeid, skillid, qualifydate)
values  ('454-56-768', 'ts10', str_to_date('10-mar-01', '%d-%b-%y'));
insert into PV_employeeskills  (employeeid, skillid, qualifydate)
values  ('laura', 'uc1', str_to_date('22-feb-00', '%d-%b-%y'));
insert into PV_employeeskills  (employeeid, skillid, qualifydate)
values  ('laura', 'us1', str_to_date('22-feb-00', '%d-%b-%y'));
insert into PV_employeeskills  (employeeid, skillid, qualifydate)
values  ('laura', 'ut1', str_to_date('22-feb-00', '%d-%b-%y'));

insert into PV_workcenter  (workcenterid, workcenterlocation)
values  ('sm1', 'main saw mill');

insert into PV_workcenter  (workcenterid, workcenterlocation)
values  ('wr1', 'warehouse and receiving');

insert into PV_workcenter  (workcenterid, workcenterlocation)
values  ('tampa1', 'tampa warehouse');

insert into PV_worksin (employeeid, workcenterid)
values ('123-44-345', 'sm1');
insert into PV_worksin (employeeid, workcenterid)
values ('454-56-768', 'tampa1');

insert into PV_productline  (productlineid, productlinename)
values  (1, 'basic');
insert into PV_productline  (productlineid, productlinename)
values  (2, 'antique');
insert into PV_productline  (productlineid, productlinename)
values  (3, 'modern');
insert into PV_productline  (productlineid, productlinename)
values  (4, 'classical');
insert into PV_productline  (productlineid, productlinename)
values  (5, 'rellville');
insert into PV_productline  (productlineid, productlinename)
values  (6, 'spanish style');
insert into PV_productline  (productlineid, productlinename)
values  (7, 'gothic');

insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (1,'cherry end table','cherry',175.00,0,1);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (2,'birch coffee tables','birch',200.00,0,1);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (3,'oak computer desk','oak',750.00,0,1);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (4,'entertainment center','cherry',1650.00,0,1);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (5,'writernulls desk','oak',325.00,0,2);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (6,'8-drawer dresser','birch',750.00,0,1);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (7,'48 bookcase','walnut',150.00,0,3);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (8,'48 bookcase','oak',175.00,0,3);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (9,'96 bookcase','walnut',225.00,0,3);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (10,'96 bookcase','oak',200.00,0,3);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (11,'4-drawer dresser','oak',500.00,0,1);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (12,'8-drawer dresser','oak',800.00,0,1);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (13,'nightstand','cherry',150.00,0,1);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (14,'writernulls desk','birch',300.00,0,2);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (17,'high back leather chair','leather',362.00,0,3);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (18,'6null grandfather clock','oak',890.00,0,4);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (19,'7null grandfather clock','oak',1100.00,0,4);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (20,'amoire','walnut',1200.00,0,2);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (21,'pine end table','pine',256.00,0,1);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (24,null,null,0.00,0,5);
insert into PV_product (productid,productdescription,productfinish,productstandardprice,productonhand,productlineid) 
values (25,null,null,0.00,0,2);

insert into PV_producedin (productid, workcenterid)
	values (1, 'tampa1');
insert into PV_producedin (productid, workcenterid)
	values (2, 'tampa1');
insert into PV_producedin (productid, workcenterid)
	values (3, 'tampa1');
insert into PV_producedin (productid, workcenterid)
	values (4, 'tampa1');
insert into PV_producedin (productid, workcenterid)
	values (5, 'tampa1');
insert into PV_producedin (productid, workcenterid)
	values (6, 'tampa1');
insert into PV_producedin (productid, workcenterid)
	values (7, 'tampa1');
insert into PV_producedin (productid, workcenterid)
	values (8, 'tampa1');
insert into PV_producedin (productid, workcenterid)
	values (9, 'tampa1');
insert into PV_producedin (productid, workcenterid)
	values (10, 'tampa1');
insert into PV_producedin (productid, workcenterid)
	values (11, 'tampa1');
insert into PV_producedin (productid, workcenterid)
	values (12, 'tampa1');
insert into PV_producedin (productid, workcenterid)
	values (13, 'tampa1');
insert into PV_producedin (productid, workcenterid)
	values (14, 'tampa1');

insert into PV_customershipaddress (shipaddressid,customerid,territoryid,shipaddress,shipcity,shipstate,shipzip,shipdirections) values (1,4,13,'35456 trifly road','lutz','fl','33549',null);
insert into PV_customershipaddress (shipaddressid,customerid,territoryid,shipaddress,shipcity,shipstate,shipzip,shipdirections) values (2,4,13,'1925 beltline rd.','carteret','nj',null,null);
insert into PV_customershipaddress (shipaddressid,customerid,territoryid,shipaddress,shipcity,shipstate,shipzip,shipdirections) values (3,1,6,'321 butterfly terr','columbus','oh',null,null);
insert into PV_customershipaddress (shipaddressid,customerid,territoryid,shipaddress,shipcity,shipstate,shipzip,shipdirections) values (4,1,6,'7744 121 street','colubus','oh',null,null);
insert into PV_customershipaddress (shipaddressid,customerid,territoryid,shipaddress,shipcity,shipstate,shipzip,shipdirections) values (9,8,15,'us embassy','mexico city','me',null,null);
insert into PV_customershipaddress (shipaddressid,customerid,territoryid,shipaddress,shipcity,shipstate,shipzip,shipdirections) values (10,16,4,'1256 one lane','san diego','ca','55555-',null);
insert into PV_customershipaddress (shipaddressid,customerid,territoryid,shipaddress,shipcity,shipstate,shipzip,shipdirections) values (11,9,1,'17832 rt 92','mobil','al','39889-',null);
insert into PV_customershipaddress (shipaddressid,customerid,territoryid,shipaddress,shipcity,shipstate,shipzip,shipdirections) values (13,14,5,'303 drakes landing','manhattan','ks','66502-',null);
insert into PV_customershipaddress (shipaddressid,customerid,territoryid,shipaddress,shipcity,shipstate,shipzip,shipdirections) values (14,13,2,'3400 amador ave','las cruces','nm','88001-',null);
insert into PV_customershipaddress (shipaddressid,customerid,territoryid,shipaddress,shipcity,shipstate,shipzip,shipdirections) values (15,4,6,'657 10th st','kodiak','ak','99878-',null);
insert into PV_customershipaddress (shipaddressid,customerid,territoryid,shipaddress,shipcity,shipstate,shipzip,shipdirections) values (17,9,5,'100 e. fletch','pocahatas','oh','39877-',null);
insert into PV_customershipaddress (shipaddressid,customerid,territoryid,shipaddress,shipcity,shipstate,shipzip,shipdirections) values (19,4,13,'655 rocky point','denver','co',null,null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (1, str_to_date('08/sep/09', '%d/%b/%y'), 4, str_to_date('25/nov/05', '%d/%b/%y'), 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (2, str_to_date('04/oct/09', '%d/%b/%y'), 3, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (3, str_to_date('19/jul/09', '%d/%b/%y'), 1, null, 2, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (4, str_to_date('01/nov/09', '%d/%b/%y'), 6, null, 5, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (5, str_to_date('28/jul/09', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (6, str_to_date('27/aug/09', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (7, str_to_date('16/sep/09', '%d/%b/%y'), 1, null, 2, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (8, str_to_date('16/sep/09', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (9, str_to_date('16/sep/09', '%d/%b/%y'), 6, null, 5, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (19, str_to_date('05/mar/10', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (20, str_to_date('06/mar/10', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (21, str_to_date('06/mar/10', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (22, str_to_date('06/mar/10', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (23, str_to_date('06/mar/10', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (24, str_to_date('10/mar/10', '%d/%b/%y'), 1, null, 2, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (25, str_to_date('10/mar/10', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (26, str_to_date('10/mar/10', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (27, str_to_date('10/mar/10', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (28, str_to_date('10/mar/10', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (29, str_to_date('11/mar/10', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (30, str_to_date('11/mar/10', '%d/%b/%y'), 4, null, 3, 4);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (31, str_to_date('11/mar/10', '%d/%b/%y'), 15, null, 4, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (32, str_to_date('11/mar/10', '%d/%b/%y'), 15, null, 4, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (34, str_to_date('11/mar/10', '%d/%b/%y'), 15, null, 4, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (35, str_to_date('11/mar/10', '%d/%b/%y'), 8, null, 5, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (36, str_to_date('11/mar/10', '%d/%b/%y'), 4, null, 3, 1);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (37, str_to_date('11/mar/10', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (38, str_to_date('11/mar/10', '%d/%b/%y'), 4, null, 3, 1);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (39, str_to_date('11/mar/10', '%d/%b/%y'), 4, null, 3, 1);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (40, str_to_date('11/mar/10', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (41, str_to_date('11/mar/10', '%d/%b/%y'), 12, null, 6, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (42, str_to_date('11/mar/10', '%d/%b/%y'), 4, null, 3, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (43, str_to_date('11/mar/10', '%d/%b/%y'), 12, null, 6, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (44, str_to_date('11/mar/10', '%d/%b/%y'), 6, null, 9, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (45, str_to_date('11/mar/10', '%d/%b/%y'), 12, null, 6, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (46, str_to_date('11/mar/10', '%d/%b/%y'), 1, null, 2, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (47, str_to_date('11/mar/10', '%d/%b/%y'), 12, null, 6, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (48, str_to_date('11/mar/10', '%d/%b/%y'), 1, null, 2, 3);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (49, str_to_date('11/mar/10', '%d/%b/%y'), 4, null, 3, 2);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (50, str_to_date('11/mar/10', '%d/%b/%y'), 8, null, null, 9);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (51, str_to_date('11/mar/10', '%d/%b/%y'), 16, null, null, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (52, str_to_date('11/mar/10', '%d/%b/%y'), 16, null, null, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (53, str_to_date('11/mar/10', '%d/%b/%y'), 16, null, null, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (54, str_to_date('11/mar/10', '%d/%b/%y'), 16, null, 9, 10);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (55, str_to_date('11/mar/10', '%d/%b/%y'), 16, null, null, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (56, str_to_date('11/mar/10', '%d/%b/%y'), 9, null, 2, 11);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (57, str_to_date('11/mar/10', '%d/%b/%y'), 9, null, null, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (58, str_to_date('11/mar/10', '%d/%b/%y'), 14, null, 5, 13);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (59, str_to_date('11/mar/10', '%d/%b/%y'), 13, null, 8, 14);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (63, str_to_date('11/mar/10', '%d/%b/%y'), 4, null, 6, 15);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (64, str_to_date('11/mar/10', '%d/%b/%y'), 4, null, 6, 2);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (65, str_to_date('11/mar/10', '%d/%b/%y'), 4, null, 6, 1);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (66, str_to_date('11/mar/10', '%d/%b/%y'), 9, null, 5, 17);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (69, str_to_date('11/mar/10', '%d/%b/%y'), 4, null, 2, 2);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (71, str_to_date('08/sep/10', '%d/%b/%y'), 4, null, null, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (73, str_to_date('08/sep/10', '%d/%b/%y'), 12, null, null, null);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (75, str_to_date('08/sep/10', '%d/%b/%y'), 1, null, null, 3);

insert into PV_order (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipadrsid) 
values (76, str_to_date('15/sep/10', '%d/%b/%y'), 4, null, null, null);

insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (1,1,2,18);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (31,1,6,2);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (2,1,10,9);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (3,2,3,12);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (4,2,8,2);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (5,2,14,2);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (17,3,2,2);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (7,4,3,1);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (15,4,4,0);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (8,4,5,3);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (16,4,6,3);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (29,5,1,1);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (9,5,6,2);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (37,24,1,0);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (39,25,2,5);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (40,26,1,5);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (41,28,1,2);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (42,32,5,10);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (43,32,14,10);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (46,39,2,3);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (51,48,17,5);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (54,49,1,1);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (53,50,20,1);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (55,51,3,2);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (56,51,4,1);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (57,52,1,2);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (58,52,4,1);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (59,54,2,2);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (60,54,3,3);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (61,55,1,1);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (62,55,4,2);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (63,56,4,1);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (64,58,3,1);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (65,59,13,2);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (66,63,3,5);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (67,65,4,0);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (68,66,4,1);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (69,69,7,4);
insert into PV_orderline (orderlineid,orderid,productid,orderedquantity) values (70,71,3,0);

insert into PV_shipped (orderlineid, shippedquantity, shippeddate) 
values (1, 1, str_to_date('16/sep/10 ', '%d/%b/%y'));

insert into PV_shipped (orderlineid, shippedquantity, shippeddate) 
values (2, 0, str_to_date(null, '%d/%b/%y'));

insert into PV_shipped (orderlineid, shippedquantity, shippeddate) 
values (3, 1, str_to_date('16/sep/10 ', '%d/%b/%y'));

insert into PV_shipped (orderlineid, shippedquantity, shippeddate) 
values (5, 2, str_to_date('16/sep/10', '%d/%b/%y'));

insert into PV_paymenttype (paymenttypeid, typedescription) 
values ('d', 'deposit');

insert into PV_paymenttype (paymenttypeid, typedescription) 
values ('r', 'refund');

insert into PV_paymenttype (paymenttypeid, typedescription) 
values ('t', 'transfer');

insert into PV_payment (paymentid, orderid, paymentdate, paymenttypeid, paymentamount, paymentcomment) 
values (1, 1, str_to_date('01/mar/10', '%d/%b/%y'), 'd', 1000.0, 'chk101');

insert into PV_payment (paymentid, orderid, paymentdate, paymenttypeid, paymentamount, paymentcomment) 
values (2, 24, str_to_date('10/mar/10', '%d/%b/%y'), 'd', 25.0, 'cash');

insert into PV_payment (paymentid, orderid, paymentdate, paymenttypeid, paymentamount, paymentcomment) 
values (3, 26, str_to_date('10/mar/10', '%d/%b/%y'), 'd', 222.0, 'cash');

insert into PV_payment (paymentid, orderid, paymentdate, paymenttypeid, paymentamount, paymentcomment) 
values (4, 28, str_to_date('10/mar/10', '%d/%b/%y'), 'd', 25.0, 'cash');

insert into PV_payment (paymentid, orderid, paymentdate, paymenttypeid, paymentamount, paymentcomment) 
values (5, 32, str_to_date('11/mar/10', '%d/%b/%y'), 'd', 3000.0, 'cashiers check');

insert into PV_payment (paymentid, orderid, paymentdate, paymenttypeid, paymentamount, paymentcomment) 
values (6, 34, str_to_date('11/mar/10', '%d/%b/%y'), 'd', 575.0, 'chk1201');

insert into PV_payment (paymentid, orderid, paymentdate, paymenttypeid, paymentamount, paymentcomment) 
values (7, 39, str_to_date('11/mar/10', '%d/%b/%y'), 'd', 600.0, 'chk 1003');

insert into PV_payment (paymentid, orderid, paymentdate, paymenttypeid, paymentamount, paymentcomment) 
values (8, 48, str_to_date('11/mar/10', '%d/%b/%y'), 'd', 1000.0, 'chk2301');

insert into PV_payment (paymentid, orderid, paymentdate, paymenttypeid, paymentamount, paymentcomment) 
values (9, 51, str_to_date('11/mar/10', '%d/%b/%y'), 'd', 150.0, 'cash');

insert into PV_payment (paymentid, orderid, paymentdate, paymenttypeid, paymentamount, paymentcomment) 
values (10, 54, str_to_date('11/mar/10', '%d/%b/%y'), 'd', 2650.0, 'check # 343');

insert into PV_payment (paymentid, orderid, paymentdate, paymenttypeid, paymentamount, paymentcomment) 
values (11, 69, str_to_date('11/mar/10', '%d/%b/%y'), 'd', 200.0, 'chk3001');

insert into PV_vendor
(vendorid, vendorname, vendoraddress, vendorcity, vendorstate, vendorzipcode, vendorphone, vendorfaxnumber, vendorcontact, vendortaxidnumber)
values (1, 'robertnulls lumber yard', '1234 wooded lane', 'forest hill', 'tn', '33333-', '333-333-3333', null, 'robert', '123456789');
insert into PV_vendor
(vendorid, vendorname, vendoraddress, vendorcity, vendorstate, vendorzipcode, vendorphone, vendorfaxnumber, vendorcontact, vendortaxidnumber)
values (2, 'southern lumber', '8768 durgee rd', 'jacksonville', 'fl', '25998-', '444-444-4444', null, null, null);
insert into PV_vendor
(vendorid, vendorname, vendoraddress, vendorcity, vendorstate, vendorzipcode, vendorphone, vendorfaxnumber, vendorcontact, vendortaxidnumber)
values (3, 'pebbles hardware', '2323 hardrock rd', 'bedrock', 'tx', '77777-', '555-555-5555', null, null, null);

commit;