-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2024 at 01:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_managment_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(30) NOT NULL,
  `event_location` varchar(40) DEFAULT NULL,
  `event_description` varchar(255) DEFAULT NULL,
  `event_start` varchar(30) DEFAULT NULL,
  `event_end` varchar(30) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `deadline` varchar(30) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`event_id`, `event_name`, `event_location`, `event_description`, `event_start`, `event_end`, `image_url`, `deadline`, `user_id`) VALUES
(1, 'Prizren Code Fest', 'Prizren', 'Kjo event apo festival eshte kryesisht per Programmim', '1 Maj 11:00', '1Maj 17:00', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAk1BMVEUAMGf///8AIWAAJmIALGUAKGMALmYAGl1db5AAE1qVorZtfZq6w9AAKmQwTnoAFVvr8PSwuskANWzd4+r29/kAH19DXIPR2OFRZ4sAGFycp7rc3uSDkqtKYYfk6O4ADVlmdpR5iaMdQ3Q0UX0AAFXDy9aYpLimsMHIz9kAClgVO24nSXhyg', '26 Prill', 1),
(2, 'Doku Fest', 'Prizren', 'Kjo event apo festival eshte kryesisht per filma', '1 Gusht', '10 Gusht', 'https://upload.wikimedia.org/wikipedia/commons/3/30/Dokufest_logo_1.jpeg', '28 Korrik', 2),
(5, 'Doku Night', 'Prizren', 'Kjo event apo festival eshte kryesisht per Koncerte', '1 Gusht', '10 Gusht', 'https://upload.wikimedia.org/wikipedia/commons/3/30/Dokufest_logo_1.jpeg', '28 Korrik', 1),
(6, 'Hardh Fest', 'Rahovec', 'Kjo event apo festival eshte kryesisht per Koncerte dhe vere', '1 tetor', '1 tetor 00:00', 'https://scontent.fprn13-1.fna.fbcdn.net/v/t39.30808-6/330931772_917255489299601_599293753375440729_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=37C9wjBw9s8AX_KrNK7&_nc_oc=AQkkRhZ3zlW5zWeAKkJdbQgQI0CMM049AKO99l5j5mmTt2P7LzkYQk_cryL_Pwk3nV4&_nc_ht=scont', '1 tetor', 1),
(7, 'Hardh Fest', 'Rahovec', 'Kjo event apo festival eshte kryesisht per Koncerte dhe vere', '1 tetor', '1 tetor 00:00', 'https://scontent.fprn13-1.fna.fbcdn.net/v/t39.30808-6/330931772_917255489299601_599293753375440729_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=37C9wjBw9s8AX_KrNK7&_nc_oc=AQkkRhZ3zlW5zWeAKkJdbQgQI0CMM049AKO99l5j5mmTt2P7LzkYQk_cryL_Pwk3nV4&_nc_ht=scont', '1 tetor', 1),
(8, 'Hardh Fest', 'Rahovec', 'Kjo event apo festival eshte kryesisht per Koncerte dhe vere', '1 tetor', '1 tetor 00:00', 'https://scontent.fprn13-1.fna.fbcdn.net/v/t39.30808-6/330931772_917255489299601_599293753375440729_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=37C9wjBw9s8AX_KrNK7&_nc_oc=AQkkRhZ3zlW5zWeAKkJdbQgQI0CMM049AKO99l5j5mmTt2P7LzkYQk_cryL_Pwk3nV4&_nc_ht=scont', '1 tetor', 1),
(9, 'Hardh Fest', 'Rahovec', 'Kjo event apo festival eshte kryesisht per Koncerte dhe vere', '1 tetor', '1 tetor 00:00', 'https://scontent.fprn13-1.fna.fbcdn.net/v/t39.30808-6/330931772_917255489299601_599293753375440729_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=37C9wjBw9s8AX_KrNK7&_nc_oc=AQkkRhZ3zlW5zWeAKkJdbQgQI0CMM049AKO99l5j5mmTt2P7LzkYQk_cryL_Pwk3nV4&_nc_ht=scont', '1 tetor', 1),
(10, 'Hardh Fest', 'Rahovec', 'Kjo event apo festival eshte kryesisht per Koncerte dhe vere', '1 tetor', '1 tetor 00:00', 'https://scontent.fprn13-1.fna.fbcdn.net/v/t39.30808-6/330931772_917255489299601_599293753375440729_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=37C9wjBw9s8AX_KrNK7&_nc_oc=AQkkRhZ3zlW5zWeAKkJdbQgQI0CMM049AKO99l5j5mmTt2P7LzkYQk_cryL_Pwk3nV4&_nc_ht=scont', '1 tetor', 1),
(11, 'Hardh Fest', 'Rahovec', 'Kjo event apo festival eshte kryesisht per Koncerte dhe vere', '1 tetor', '1 tetor 00:00', 'https://scontent.fprn13-1.fna.fbcdn.net/v/t39.30808-6/330931772_917255489299601_599293753375440729_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=37C9wjBw9s8AX_KrNK7&_nc_oc=AQkkRhZ3zlW5zWeAKkJdbQgQI0CMM049AKO99l5j5mmTt2P7LzkYQk_cryL_Pwk3nV4&_nc_ht=scont', '1 tetor', 1),
(12, 'Hardh Fest', 'Rahovec', 'Kjo event apo festival eshte kryesisht per Koncerte dhe vere', '1 tetor', '1 tetor 00:00', 'https://scontent.fprn13-1.fna.fbcdn.net/v/t39.30808-6/330931772_917255489299601_599293753375440729_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=37C9wjBw9s8AX_KrNK7&_nc_oc=AQkkRhZ3zlW5zWeAKkJdbQgQI0CMM049AKO99l5j5mmTt2P7LzkYQk_cryL_Pwk3nV4&_nc_ht=scont', '1 tetor', 1),
(13, 'Hardh Fest', 'Rahovec', 'Kjo event apo festival eshte kryesisht per Koncerte dhe vere', '1 tetor', '1 tetor 00:00', 'https://scontent.fprn13-1.fna.fbcdn.net/v/t39.30808-6/330931772_917255489299601_599293753375440729_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=37C9wjBw9s8AX_KrNK7&_nc_oc=AQkkRhZ3zlW5zWeAKkJdbQgQI0CMM049AKO99l5j5mmTt2P7LzkYQk_cryL_Pwk3nV4&_nc_ht=scont', '1 tetor', 1),
(14, 'Hardh Fest', 'Rahovec', 'Kjo event apo festival eshte kryesisht per Koncerte dhe vere', '1 tetor', '1 tetor 00:00', 'https://scontent.fprn13-1.fna.fbcdn.net/v/t39.30808-6/330931772_917255489299601_599293753375440729_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=37C9wjBw9s8AX_KrNK7&_nc_oc=AQkkRhZ3zlW5zWeAKkJdbQgQI0CMM049AKO99l5j5mmTt2P7LzkYQk_cryL_Pwk3nV4&_nc_ht=scont', '1 tetor', 1),
(15, 'Hardh Fest', 'Rahovec', 'Kjo event apo festival eshte kryesisht per Koncerte dhe vere', '1 tetor', '1 tetor 00:00', 'https://scontent.fprn13-1.fna.fbcdn.net/v/t39.30808-6/330931772_917255489299601_599293753375440729_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=37C9wjBw9s8AX_KrNK7&_nc_oc=AQkkRhZ3zlW5zWeAKkJdbQgQI0CMM049AKO99l5j5mmTt2P7LzkYQk_cryL_Pwk3nV4&_nc_ht=scont', '1 tetor', 1),
(16, 'Hardh Fest', 'Rahovec', 'Kjo event apo festival eshte kryesisht per Koncerte dhe vere', '1 tetor', '1 tetor 00:00', 'https://scontent.fprn13-1.fna.fbcdn.net/v/t39.30808-6/330931772_917255489299601_599293753375440729_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=37C9wjBw9s8AX_KrNK7&_nc_oc=AQkkRhZ3zlW5zWeAKkJdbQgQI0CMM049AKO99l5j5mmTt2P7LzkYQk_cryL_Pwk3nV4&_nc_ht=scont', '1 tetor', 1),
(17, 'Tekno Fest', 'Prizren', 'Kjo event apo festival eshte kryesisht per Koncerte ', '1 Gusht', '9 gusht', 'https://imgs.search.brave.com/Gi2gyKMx7NB_HRjlnG_n0jck-usb9ygO5v0qJ2CRWsA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9maWxt/ZnJlZXdheS1wcm9k/dWN0aW9uLXN0b3Jh/Z2UtMDEtc3RvcmFn/ZS5maWxtZnJlZXdh/eS5jb20vZmVzdGl2/YWxzL2xvZ29zLzAw/MC8wMDEvOTQxL2xh/cmdlL2Rva3VmZXN0/X2tvc292', '29korrik', 2),
(18, 'Tekno Fest', 'Prizren', 'Kjo event apo festival eshte kryesisht per Koncerte ', '1 Gusht', '9 gusht', 'https://imgs.search.brave.com/Gi2gyKMx7NB_HRjlnG_n0jck-usb9ygO5v0qJ2CRWsA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9maWxt/ZnJlZXdheS1wcm9k/dWN0aW9uLXN0b3Jh/Z2UtMDEtc3RvcmFn/ZS5maWxtZnJlZXdh/eS5jb20vZmVzdGl2/YWxzL2xvZ29zLzAw/MC8wMDEvOTQxL2xh/cmdlL2Rva3VmZXN0/X2tvc292', '29korrik', 2),
(19, 'Tekno Fest', 'Prizren', 'Kjo event apo festival eshte kryesisht per Koncerte ', '1 Gusht', '9 gusht', 'https://imgs.search.brave.com/Gi2gyKMx7NB_HRjlnG_n0jck-usb9ygO5v0qJ2CRWsA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9maWxt/ZnJlZXdheS1wcm9k/dWN0aW9uLXN0b3Jh/Z2UtMDEtc3RvcmFn/ZS5maWxtZnJlZXdh/eS5jb20vZmVzdGl2/YWxzL2xvZ29zLzAw/MC8wMDEvOTQxL2xh/cmdlL2Rva3VmZXN0/X2tvc292', '29korrik', 2),
(20, 'Tekno Fest', 'Prizren', 'Kjo event apo festival eshte kryesisht per Koncerte ', '1 Gusht', '9 gusht', 'https://imgs.search.brave.com/Gi2gyKMx7NB_HRjlnG_n0jck-usb9ygO5v0qJ2CRWsA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9maWxt/ZnJlZXdheS1wcm9k/dWN0aW9uLXN0b3Jh/Z2UtMDEtc3RvcmFn/ZS5maWxtZnJlZXdh/eS5jb20vZmVzdGl2/YWxzL2xvZ29zLzAw/MC8wMDEvOTQxL2xh/cmdlL2Rva3VmZXN0/X2tvc292', '29korrik', 2),
(21, 'Tekno Fest', 'Prizren', 'Kjo event apo festival eshte kryesisht per Koncerte ', '1 Gusht', '9 gusht', 'https://imgs.search.brave.com/Gi2gyKMx7NB_HRjlnG_n0jck-usb9ygO5v0qJ2CRWsA/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9maWxt/ZnJlZXdheS1wcm9k/dWN0aW9uLXN0b3Jh/Z2UtMDEtc3RvcmFn/ZS5maWxtZnJlZXdh/eS5jb20vZmVzdGl2/YWxzL2xvZ29zLzAw/MC8wMDEvOTQxL2xh/cmdlL2Rva3VmZXN0/X2tvc292', '29korrik', 3),
(22, 'Tekno Fest', 'Prizren', 'Kjo event apo festival eshte kryesisht per Koncerte', '1 Gusht', '9 Gusht', 'https://imgs.search.brave.com/g-WPgjWzO7-89OvEjFVpPYoegzSwZDQ2cnegfPp8BAo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/bW9kZXJudGltZXMu/cmV2aWV3L3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDE5LzA0LzEz/NzM1ODAzXzEyMDI1/Mjc4MTk4MTk1MjJf/NDMwMzg3ODE3NDcy/NzE0ODIzNl9vLmpw/Zw', '29 Korrik', 3),
(23, 'Tekno Fest', 'Prizren', 'Kjo event apo festival eshte kryesisht per Koncerte', '1 Gusht', '9 Gusht', 'https://imgs.search.brave.com/g-WPgjWzO7-89OvEjFVpPYoegzSwZDQ2cnegfPp8BAo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/bW9kZXJudGltZXMu/cmV2aWV3L3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDE5LzA0LzEz/NzM1ODAzXzEyMDI1/Mjc4MTk4MTk1MjJf/NDMwMzg3ODE3NDcy/NzE0ODIzNl9vLmpw/Zw', '29 Korrik', 3),
(24, 'Tekno Fest', 'Prizren', 'Kjo event apo festival eshte kryesisht per Koncerte', '1 Gusht', '9 Gusht', 'https://imgs.search.brave.com/g-WPgjWzO7-89OvEjFVpPYoegzSwZDQ2cnegfPp8BAo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/bW9kZXJudGltZXMu/cmV2aWV3L3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDE5LzA0LzEz/NzM1ODAzXzEyMDI1/Mjc4MTk4MTk1MjJf/NDMwMzg3ODE3NDcy/NzE0ODIzNl9vLmpw/Zw', '29 Korrik', 3),
(25, 'Tekno Fest', 'Prizren', 'Kjo event apo festival eshte kryesisht per Koncerte', '1 Gusht', '9 Gusht', 'https://imgs.search.brave.com/g-WPgjWzO7-89OvEjFVpPYoegzSwZDQ2cnegfPp8BAo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/bW9kZXJudGltZXMu/cmV2aWV3L3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDE5LzA0LzEz/NzM1ODAzXzEyMDI1/Mjc4MTk4MTk1MjJf/NDMwMzg3ODE3NDcy/NzE0ODIzNl9vLmpw/Zw', '29 Korrik', 3),
(26, 'Tekno Fest', 'Prizren', 'Kjo event apo festival eshte kryesisht per Koncerte', '1 Gusht', '9 Gusht', 'https://imgs.search.brave.com/g-WPgjWzO7-89OvEjFVpPYoegzSwZDQ2cnegfPp8BAo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/bW9kZXJudGltZXMu/cmV2aWV3L3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDE5LzA0LzEz/NzM1ODAzXzEyMDI1/Mjc4MTk4MTk1MjJf/NDMwMzg3ODE3NDcy/NzE0ODIzNl9vLmpw/Zw', '29 Korrik', 1),
(27, 'Doku Night', 'Prizren', 'Kjo event apo festival eshte kryesisht per Koncerte', '1 Gusht', '10 Gusht', 'https://upload.wikimedia.org/wikipedia/commons/3/30/Dokufest_logo_1.jpeg', '28 Korrik', 1),
(28, 'Tekno Fest', 'Prizren', 'Kjo event apo festival eshte kryesisht per Koncerte', '1 Gusht', '9 Gusht', 'https://imgs.search.brave.com/g-WPgjWzO7-89OvEjFVpPYoegzSwZDQ2cnegfPp8BAo/rs:fit:860:0:0/g:ce/aHR0cHM6Ly93d3cu/bW9kZXJudGltZXMu/cmV2aWV3L3dwLWNv/bnRlbnQvdXBsb2Fk/cy8yMDE5LzA0LzEz/NzM1ODAzXzEyMDI1/Mjc4MTk4MTk1MjJf/NDMwMzg3ODE3NDcy/NzE0ODIzNl9vLmpw/Zw', '29 Korrik', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `f_name` varchar(50) NOT NULL,
  `l_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `f_name`, `l_name`, `email`, `age`) VALUES
(1, 'Edin', 'Grazhda', 'edingrazhda17@gmail.com', 20),
(2, 'Endri', 'Gashi', 'andigashi@gmail.com', 20),
(3, 'Leo', 'Handerson', 'leohanderson@gmail.com', 22);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
