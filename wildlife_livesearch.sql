-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 06, 2019 at 08:49 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wildlife_livesearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_animals`
--

CREATE TABLE `tbl_animals` (
  `animal_id` int(2) UNSIGNED NOT NULL,
  `animal_name_eng` varchar(50) CHARACTER SET latin1 NOT NULL,
  `animal_name_spa` varchar(50) CHARACTER SET latin1 NOT NULL,
  `animal_weight` varchar(100) CHARACTER SET latin1 NOT NULL,
  `animal_photo` varchar(75) CHARACTER SET latin1 NOT NULL,
  `animal_thumbs` varchar(50) CHARACTER SET latin1 NOT NULL,
  `animal_description` varchar(500) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_animals`
--

INSERT INTO `tbl_animals` (`animal_id`, `animal_name_eng`, `animal_name_spa`, `animal_weight`, `animal_photo`, `animal_thumbs`, `animal_description`) VALUES
(1, 'Jaguar', 'Jaguar', '56–96 kg ', 'jaguar.svg', 'jaguar_th.png', 'Description: The Jaguar is the largest species of the cat family in the Americas. Today they can be found in Colombia, Argentine, Belize, Brazil, Bolivia, Costa Rica and other South American countries.\r\nIts diet consists of about 80 species, which range from large animals like caimans and anacondas, to smaller ones like turtles, birds and fish.\r\n'),
(2, 'Parrot', 'Loro', '234 - 295g', 'loro.svg', 'loro_th.png', 'This species of parrots is native to tropical and subtropical areas of Central and South American countries like Panama, Colombia, Bolivia, Brazil, Costa Rica, Ecuador, Peru, Venezuela and others. It is about 27cm long and loves to eat fruits, seeds, and sometimes grain. The blue-headed parrot nests in tree cavities. The eggs are white, and a nest usually contains 3 to 5 eggs.'),
(3, 'Puma', 'Puma', '64 and 141 lb\r\n', 'puma.svg', 'puma_th.png', 'Pumas are distributed from Canada to southern Chile, in an incredibly wide range of habitats.\r\nCurrently it is not endangered, but its population is declining due to fragmentation and loss of their natural habitat, and poaching of their wild prey. Additionally, they are hunted because of the perceived threat people have to their livestock.'),
(4, 'Kinkajou', 'Perro del Monte', '1.4–4.6 kg\r\n', 'kinkajou.svg\r\n', 'kinkajou_th.png', 'Native to Central and South America, this arboreal mammal is not very easy to see because of its strictly nocturnal habits. It’s not a threatened species, however the population is declining due to the illegal pet trade, their pelts (to make wallets and horse saddles) and meat.\r\n'),
(5, 'White Footed Tamarin ', 'Tití gris', '470 g', 'titi.svg', 'titi_th.png', 'The White-Footed Tamarin is an endemic species from Colombia, this means that naturally they can only be found in our country. With their habitat disappearing, and large numbers taken from the wild for the pet trade, these little monkeys are now endangered.\r\nThe White-Footed Tamarin exhibits polyandrous reproduction, meaning one female will mate with more than one male. Females will give birth to one to three young and males have a role in rearing the young and carrying them on their backs.'),
(6, 'Ocelot', 'Ocelote', '7–15.5 kg\r\n', 'ocelot.svg', 'ocelot_th.png', 'Twice the size of the average house cat, the ocelot is a sleek animal with a gorgeous dappled coat. These largely nocturnal cats use keen sight and hearing to hunt rabbits, rodents, iguanas, fish, and frogs. They also climb trees to hunt monkeys or birds.\r\nUnlike many cats, they do not avoid water and can swim well. Many ocelots live under the leafy canopies of South American rain forests, but can also be found inhabiting brushlands.'),
(7, 'Scarlet Macaws', 'Guacamayas', '1-1.5kg\r\n', 'macawred.svg', 'macawsRed_th.png', 'When it comes to illegal wildlife trade, this beautiful bird is one of the most popular species. Its natural habitat is the forest and woodland of tropical South America. The blue-and-yellow macaws can reach 76–86 cm long and weigh up to 1.5 kg, making them some of the larger members of their family.\r\nThey use their powerful beaks for breaking nutshells, and for navigating and hanging from trees.'),
(8, 'Toucan', 'Tucán de pico castaño', '599 to 746 grams\r\n', 'tucan.svg', 'tucan_th.png', 'Toucans have a very diverse diet, feeding from fruits, seeds and invertebrates to small reptiles and fledgling or eggs from other birds. Usually in couples or groups, or in places where the food is plentiful large groups have been seen feeding. Toucans can be found among wet and humid forest, wooded savannas, secondary forests and wooded waterway.'),
(9, 'Blue Macaws', 'Guacamayas', '1-1.5kg\r\n', 'macawblue.svg', 'macawsBlue_th.png', 'When it comes to illegal wildlife trade, this beautiful bird is one of the most popular species. Its natural habitat is the forest and woodland of tropical South America. The blue-and-yellow macaws can reach 76–86 cm long and weigh up to 1.5 kg, making them some of the larger members of their family.\r\n');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_animals`
--
ALTER TABLE `tbl_animals`
  ADD PRIMARY KEY (`animal_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_animals`
--
ALTER TABLE `tbl_animals`
  MODIFY `animal_id` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
