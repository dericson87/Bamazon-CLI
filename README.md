# Bamazon-CLI
This app is a Command Line Interface (CLI) that allows a user to purchase fake items from a local database and manipulate values using the command line. There are three node server files that are used to display and update entries in the MySQL database that needs to be created: bamazonCustomer.js, bamazonManager.js, and bamazonSupervisor.js. Also provided is the package.json and mysql file used to generate the database.  

### Bamazon Customer
The terminal should display a list of items from your local database, each with an ID, name, and price. The user should be prompted to input the ID and quantity of the item they wish to purchase. Once the transaction is complete, the terminal will prompt what has been purchased along with the total cost. If the user inputs an ID that is not shown or a quantity not available in current inventory, the terminal should display an error message and be prompted to try again.

![BamazonCustomer](/bamznCust.gif)
```
node bamazonManager.js
```
### Bamazon Manager
When running bamazonManager.js, the user is given 4 options to choose from: View Products for Sale, View Low Inventory, Add to Inventory, and Add New Product.

**View Products for Sale:**

As it states, this option will print all the products in the database and its relevant information, including ID, name, price, and quantity.

![BamazonManager View](/bamznManVProd.gif)


**View Low Inventory:**

View Low Inventory will print out products with a quantity of 5 or lower, and includes all the same information for each item as shown in View Products for Sale.

![Bamazon Manager Low](/bamznManVLow.gif)


**Add to Inventory:**

Adds more quantity to a particular item. The option will prompt the user to input the ID of the item they wish to add more inventory to and the amount they wish to add. The newly updated item can be seen when the user views products again.

![BamazonManager - Add Inventory](/bamznManAdd.gif)


**Add New Product:**

Add New Product will prompt the user to input a name, department, price, and quantity of the item they wish to add. The newly updated item can be seen when the user views products again.

![BamazonManager - Add Product](/bamznManAddProd.gif)

```
node bamazonSupervisor.js
```
### Bamazon Supervisor
The user should be given two options to choose from by arrowing up or down: 

**View Product Sales by Department:**

Should display the department ID, name, overhead costs, product sales, and net profit of each department in the database.   Product sales should increase when a transaction is made using bamazonCustomer.js.  Total profit is created by subtracting overhead cost from total product sales of each department.

![Bamazon Supervisor View](/bamznSuper.gif)

**Create New Department:**

Doesn't currently do anything.
