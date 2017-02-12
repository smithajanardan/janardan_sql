#  File: InsertData.java / InsertData.py 

#  Student's Name: Smitha Janardan

#  Student's UT EID: ssj398
	 
#  Course Name: CS 327E

#  Unique Number: 52885

#  Date Created:

#  Date Last Modified:

import MySQLdb, string

def main():

  # Connect to the MySQL database
  db = MySQLdb.connect(host = 'z.cs.utexas.edu', user = 'ssj398', \
       passwd = 'Og5%eIdd', db = 'cs327e_s12_ssj398')

  # Creation of a cursor
  cursor = db.cursor()

  # 1-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/Employee.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,9):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_employee
  (employeeid, employeename, employeeaddress, employeecity, employeestate, employeezip, employeedatehired, employeebirthdate, employeesupervisor)
   values (%s, %s, %s, %s, %s, %s, %s, %s, %s)""", data)

  # 2-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/Customer.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,6):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_customer
  (customerid, customername, customeraddress, customercity, customerstate, customerpostalcode)
   values (%s, %s, %s, %s, %s, %s)""", data)

  # 3-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/Territory.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,2):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_territory
  (territoryid, territoryname)
   values (%s, %s)""", data)

  # 4-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/DoesBusinessIn.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,2):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_doesbusinessin
  (customerid, territoryid)
   values (%s, %s)""", data)

  # 5-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/Salesperson.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,8):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_salesperson
  (salespersonname, salespersontelephone, salespersonfax, salespersonterritoryid, salespersonaddress, salespersoncity, salespersonstate, salespersonzip)
   values (%s, %s, %s, %s, %s, %s, %s, %s)""", data)

  # 6-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/Skill.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,2):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_skill
  (skillid, skilldescription)
   values (%s, %s)""", data)

  # 7-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/EmployeeSkills.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,3):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_employeeskills
  (employeeid, skillid, qualifydate)
   values (%s, %s, %s)""", data)

  # 8-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/WorkCenter.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,2):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_workcenter
  (workcenterid, workcenterlocation)
   values (%s, %s)""", data)

  # 9-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/WorksIn.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,2):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_worksin
  (employeeid, workcenterid)
   values (%s, %s)""", data)

  # 10-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/ProductLine.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,2):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_productline
  (productlineid, productlinename)
   values (%s, %s)""", data)

  # 11-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/Product.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,6):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_product
  (productid, productdescription, productfinish, productstandardprice, productonhand, productlineid)
   values (%s, %s, %s, %s, %s, %s)""", data)

  # 12-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/ProducedIn.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,2):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_producedin
  (productid, workcenterid)
   values (%s, %s)""", data)

  # 13-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/CustomerShipAddress.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,8):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_customershipaddress
  (shipaddressid, customerid, territoryid, shipaddress, shipcity, shipstate, shipzip, shipdirections)
   values (%s, %s, %s, %s, %s, %s, %s, %s)""", data)

  # 14-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/Order.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,6):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_order
  (orderid, orderdate, customerid, fulfillmentdate, salespersonid, shipaddressid)
   values (%s, %s, %s, %s, %s, %s)""", data)

  # 15-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/OrderLine.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,4):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_orderline
  (orderlineid, orderid, productid, orderedquantity)
   values (%s, %s, %s, %s)""", data)

  # 16-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/PaymentType.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,2):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_paymenttype
  (paymenttypeid, typedescription)
   values (%s, %s)""", data)

  # 17-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/Payment.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,6):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_payment
  (paymentid, orderid, paymentdate, paymenttypeid, paymentamount, paymentcomment)
   values (%s, %s, %s, %s, %s, %s)""", data)

  # 18-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/Shipped.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,3):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_shipped
  (orderlineid, shippedquantity, shippeddate)
   values (%s, %s, %s)""", data)

  # 19-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/Vendor.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,10):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_vendor
  (vendorid, vendorname, vendoraddress, vendorcity, vendorstate, vendorzipcode, vendorphone, vendorfax, vendorcontact, vendortaxidnumber)
   values (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s)""", data)

  # 20-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/RawMaterial.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,9):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_rawmaterial
  (materialid, materialname, thickness, width, size, material, materialstandardprice, unitofmeasure, materialtype)
   values (%s, %s, %s, %s, %s, %s, %s, %s, %s)""", data)

  # 21-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/Uses.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,3):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_uses
  (productid, materialid, quantityrequired)
   values (%s, %s, %s)""", data)

  # 22-read data from a file
  data = []
  infile = open ("./BIGPVFC-ASC10e/Supplies.asc", "r")
  for line in infile:
    line = line.rstrip("\n")
    line = line.strip()
    seq = line.split(", ")
    for i in range(0,3):
      seq[i] = seq[i].strip("'")
      if seq[i] in ('None', '', ' ', 'NONE'):
        seq[i] = None
    seq = tuple (seq)
    data.append(seq)
  infile.close()

  # multiple execution of insert sql statement
  cursor.executemany ("""insert into PV_supplies
  (vendorid, materialid, supplyunitprice)
   values (%s, %s, %s)""", data)

main()