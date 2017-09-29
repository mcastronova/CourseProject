CREATE DATABASE Store;
CREATE TABLE `Products` (
  `Name` varchar(100) NOT NULL,
  `ProductID` int PRIMARY KEY,
  `Quantity` int NOT NULL,
  `Price` double NOT NULL,
  `SupName` varchar(100),
  `SupPhone` int
);


CREATE TABLE `Orders` (
  `OrderID` int PRIMARY KEY,
  `OrderDate` DATETIME,
  `CustName` varchar(100) NOT NULL,
  `Total` double,
  `Payment` varchar(100),
  `ItemsBought` varchar(4000)
);


INSERT INTO `Products` (`Name`, `ProductID`, `Quantity`, `Price`, `SupName`, `SupPhone`) VALUES
  ('Hammer', '1000', '10', '10.00', 'Bob\'s Hardware', '5553421'),
  ('Potato', '1001', '100', '0.79', 'Frank\'s Farm', '5559522'),
  ('Cactus', '1002', '10', '3.50', 'Rio Grande Valley', '5557134'),
  ('Mug', '1003', '1000', '5.00', 'Martha Stewart', '5556112'),
  ('Pillow', '1004', '50', '15', 'Matress Firm', '5550918');

INSERT INTO `Orders` (`OrderID`, `OrderDate`, `CustName`, `Total`, `Payment`, `ItemsBought`) VALUES
  ('1000', '2017-09-21 08:53:00', 'Jim Jones', '13.21', 'Credit Card', '1 hammer'),
  ('1001', '2017-09-21 10:12:00', 'Sally Smith', '16.78', 'Cash', '3 potatoes,1 hammer'),
  ('1002', '2017-09-21 10:34:00', 'Bob Baker', '28.43', 'Credit Card', '1 pillow, 2 mugs'),
  ('1003', '2017-09-21 11:44:00', 'Chris Cooper', '14.44', 'Debit Card', '4 cacti'),
  ('1004', '2017-09-21 12:02:00', 'Tom Thumb', '601.22', 'Check', '36 pillows');
