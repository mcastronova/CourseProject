private void initializeDatabase(Statement stmt) throws SQLException {
        System.out.println("Initializing new database: store.db");
        stmt.execute("create table Products (Name char(30), ProductID int PRIMARY KEY, Quantity double, " +
                "Price double, ProvName char(400), ProvNum int)");
        stmt.execute("create table Orders (OrderID int PRIMARY KEY, OrderDate DATETIME, CustName char(100), " +
                "Total double, Payment char(100), ItemsBought char(4000))");
        stmt.execute("create table Employees (Username char(100) PRIMARY KEY, Password char(100), EmpName char(100), " +
                "Role char(10), Wage double, Photo varbinary()");
        stmt.execute("INSERT INTO Orders (OrderID, OrderDate, CustName, Total, Payment, ItemsBought) " +
                "VALUES ('1000', '2017-09-21 08:53:00', 'Jim Jones', '13.21', 'Credit Card', '1 hammer'), " +
                "('1001', '2017-09-21 10:12:00', 'Sally Smith', '16.78', 'Cash', '3 potatoes,1 hammer'), " +
                "('1002', '2017-09-21 10:34:00', 'Bob Baker', '28.43', 'Credit Card', '1 pillow, 2 mugs'), " +
                "('1003', '2017-09-21 11:44:00', 'Chris Cooper', '14.44', 'Debit Card', '4 cacti'), " +
                "('1004', '2017-09-21 12:02:00', 'Tom Thumb', '601.22', 'Check', '36 pillows')");
        stmt.execute("INSERT INTO Products (Name, ProductID, Quantity, Price, ProvName, ProvNum) " +
                "VALUES ('Hammer', '1000', '10', '10.00', 'Bobs Hardware', '5553421'), " +
                "('Potato', '1001', '100', '0.79', 'Franks Farm', '5559522'), " +
                "('Cactus', '1002', '10', '3.50', 'Rio Grande Valley', '5557134'), " +
                "('Mug', '1003', '1000', '5.00', 'Martha Stewart', '5556112'), " +
                "('Pillow', '1004', '50', '15', 'Matress Firm', '5550918')");
        stmt.execute("INSERT INTO Employees (Username, Password, EmpName, Role, Wage, Photo)" +
                "VALUES ('admin', 'password', 'Bob', 'manager', '13.50', 'bob.jpg')" +
                "('katecash', 'password1', 'Kate', 'cashier', '7.25', 'kate.jpg')";
    }

String query = "SELECT * FROM Employees WHERE Username = " + username;
