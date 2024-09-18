-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `picture_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `description`, `picture_url`) VALUES
(1, 'Biscuits', 'Biscuits and cereal bars.', './images/productCats/biscuits.png'),
(2, 'Confectionery', 'Chocolate, fudge and sweets.', './images/productCats/confect.png'),
(3, 'Crisps', 'Crisps, Snacks, Nuts and Popcorn.', './images/productCats/crisps.png');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `company_name`, `contact_name`, `phone_number`) VALUES
(1, 'Blue Origin, LLC', 'Antony Costa', '1-253-872-0411'),
(2, 'Blue INC', 'Duncan James', '01793 847122'),
(3, 'IBM', 'Lee Ryan', '0870 542 6426'),
(4, 'jetBlue', 'Simon Webbe', '00 1 801-449-2525');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `shipping_address` varchar(255) NOT NULL,
  `shipping_city` varchar(255) NOT NULL,
  `shipping_postcode` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_date`, `order_timestamp`, `shipping_address`, `shipping_city`, `shipping_postcode`, `customer_id`) VALUES
(1, '2021-09-20', '2021-09-07 14:37:41', '76th Avenue South Kent', 'London', 'SW11', 1),
(2, '2021-09-14', '2021-09-07 15:05:27', 'PO Box 41, North Harbour', 'Portsmouth\r\n', 'PO6 3AU', 3);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_id`, `product_id`, `quantity`, `unit_price`) VALUES
(1, 1, 50, '1.50'),
(1, 4, 23, '1.10'),
(2, 2, 15, '1.10'),
(2, 4, 55, '1.55'),
(2, 5, 23, '1.85');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `units_stocked` int(255) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `description`, `unit_price`, `units_stocked`, `supplier_id`, `category_id`) VALUES
(1, 'Jacobs Mini Cheddars Original 6X25g', 'Hello, we\'re Mini Cheddars!\r\nYes we might be on the mini side, but we go big big big on the cheese!\r\nThat means melty, moreish deliciousness in every bite.\r\nBecause there\'s always room for more cheese in your snack-life. Right?\r\nWe want to make every last bite awesome.\r\nSo we stir real cheese into our dough.\r\nThen it\'s baked (never fried!) until golden\r\nTo guarantee cheesy crunchy perfection, every time.\r\nThe Baker Brothers', '1.55', 300, 4, 1),
(2, 'Walkers Classic Variety Multipack Crisps 24 X 25G', '6 x Cheese & Onion Flavour Potato Crisps 6 x Ready Salted Potato Crisps 6 x Salt & Vinegar Flavour Potato Crisps 6 x Prawn Cocktail Flavour Crisps (with sugar and sweetener)\r\nTo find out more about how we care for our spuds and our planet, visit www.walkers.co.uk/sustainability\r\n- Includes 6 x Cheese & Onion, 6 x Ready Salted, 6 x Salt & Vinegar, 6 x Prawn Cocktail crisps\r\n- Made with 100% Great British Potatoes\r\n- Fresh taste guaranteed\r\n- Perfect multipack crisps for lunch and snacking\r\n- Suitable for vegetarians, no artificial colours, preservatives or MSG\r\nSince 1948, we\'ve been delighting the nation everyday with our delicious, great tasting crisps. We strive to always give you the very best quality and continue to be made with 100% Great British potatoes. So thank you for choosing us for over 70 years. Walkers has been and always will be made by Britain.\r\nPackaged in a Protective Atmosphere.\r\nWalkers, and the Walkers Logo, are registered trademarks ©2021.\r\n100% Great British Potatoes\r\nWe use sustainable sourced British potatoes\r\n100% quality ingredients\r\nFresh taste guaranteed\r\nNo added MSG, artificial colours or preservatives\r\nSuitable for Vegetarians\r\nPack size: 600G\r\n', '2.25', 233, 2, 3),
(3, 'Pringles Original 200G', 'Savoury Snack\r\nPackaged in a protective atmosphere.\r\nPerfect flavour in every bite\r\nVegetarian\r\nVegan\r\nPack size: 200G', '1.75', 332, 5, 3),
(4, 'Cadbury Dairy Milk Chocolate Bar 110G', 'Milk chocolate.\r\nBeTreatwise.net\r\nCocoa Life\r\nPartnering with Fairtrade Foundation\r\nCocoa Life helps farmers get the most from their cocoa trees through environmentally friendly farming\r\nwww.cocoalife.org\r\nMade under licence from Cadbury UK Ltd.\r\nBy Appointment to H.M. The Queen Cocoa and Chocolate Manufacturers Cadbury UK Ltd., Bournville.\r\n\r\n100% Sustainably Sourced Cocoa\r\nThe Classic Creamy Taste\r\nSuitable for vegetarians\r\nPack size: 110G\r\n', '1.10', 5552, 3, 2),
(5, 'Cadbury Dairy Milk Chocolate Bar 200G', 'Milk chocolate.\r\nBeTreatwise.net\r\nCocoa Life\r\nPartnering with Fairtrade Foundation\r\nCocoa Life aims to make lives better. The education and entrepreneurship training we provide makes for happier farmers and thriving local communities\r\nwww.cocoalife.org\r\nMade under licence from Cadbury UK Ltd.\r\nBy Appointment to H.M. the Queen Cocoa and Chocolate Manufacturers Cadbury UK Ltd., Bournville.\r\n\r\n100% Sustainably Sourced Cocoa\r\nThe Classic Creamy Taste\r\nSuitable for vegetarians\r\nPack size: 200G', '1.80', 7558, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product_detail`
--

CREATE TABLE `product_detail` (
  `product_id` int(11) NOT NULL,
  `product_code` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_detail`
--

INSERT INTO `product_detail` (`product_id`, `product_code`) VALUES
(5, '273968548'),
(4, '284117451'),
(1, '301063919'),
(2, '344117451'),
(3, '774117422');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supplier_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supplier_id`, `company_name`, `contact_name`, `phone_number`) VALUES
(1, 'Specialty Biscuits, Ltd.', 'Peter Wilson', '(161) 555-4448'),
(2, 'Walkers', 'Gary Lineker ', '0800 274777'),
(3, 'Cadbury', 'John Cadbury', '0800 818181'),
(4, 'Jacob\'s', 'William Beale Jacob', '08081 449 454'),
(5, 'Kellogg\'s', 'John H. Kellogg\r\n', '0800 626066\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_customer_id_orders` (`customer_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `FK_product_id_order_product` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `FK_supplier_id_product` (`supplier_id`),
  ADD KEY `FK_category_id_product` (`category_id`);

--
-- Indexes for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_code` (`product_code`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_customer_id_orders` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `FK_order_id_order_product` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `FK_product_id_order_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_category_id_product` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`),
  ADD CONSTRAINT `FK_supplier_id_product` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`);

--
-- Constraints for table `product_detail`
--
ALTER TABLE `product_detail`
  ADD CONSTRAINT `FK_stock_id_product_detail` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);
COMMIT;
