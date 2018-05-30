-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql581.your-server.de
-- Generation Time: May 30, 2018 at 10:14 PM
-- Server version: 5.7.22-1
-- PHP Version: 7.1.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kkdevn_db1`
--

DELIMITER $$
--
-- Functions
--
$$

$$

$$

$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `call_direction`
--

CREATE TABLE `call_direction` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `name_de` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `call_direction`
--

INSERT INTO `call_direction` (`id`, `name`, `name_de`) VALUES
(1, 'inbound', '1 - eingehend'),
(2, 'outbound', '2 - ausgehend');

-- --------------------------------------------------------

--
-- Table structure for table `call_list_entries`
--

CREATE TABLE `call_list_entries` (
  `rid` int(11) NOT NULL,
  `id` text,
  `uuid` text,
  `call_direction` int(11) NOT NULL DEFAULT '0',
  `call_state` int(11) NOT NULL DEFAULT '0',
  `call_list_entry_state_id` int(11) NOT NULL DEFAULT '0',
  `start_time` datetime NOT NULL DEFAULT '2010-01-01 05:00:00',
  `current_segment_start_time` datetime NOT NULL DEFAULT '2010-01-01 05:00:00',
  `duration` int(11) DEFAULT '0',
  `local_participant_id` int(11) NOT NULL DEFAULT '0',
  `peer_participant_id` int(11) NOT NULL DEFAULT '0',
  `transferred_from` int(11) NOT NULL DEFAULT '0',
  `transferred_from_participant_id` int(11) DEFAULT NULL,
  `transferred_to` int(11) NOT NULL DEFAULT '0',
  `transferred_to_participant_id` int(11) DEFAULT NULL,
  `transferred_to_mailbox_message_id` int(11) DEFAULT NULL,
  `detailed_call_state` int(11) NOT NULL DEFAULT '0',
  `pickup_participant_id` int(11) DEFAULT NULL,
  `number_bundle_id` text,
  `number_called` text,
  `permanent_call_id` text,
  `conn_sync_id` text,
  `image_ref` text,
  `fax_file` text,
  `voicebox_call_id` text,
  `wave_file` text,
  `update_time` datetime NOT NULL DEFAULT '2010-01-01 05:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `call_list_entries`
--

INSERT INTO `call_list_entries` (`rid`, `id`, `uuid`, `call_direction`, `call_state`, `call_list_entry_state_id`, `start_time`, `current_segment_start_time`, `duration`, `local_participant_id`, `peer_participant_id`, `transferred_from`, `transferred_from_participant_id`, `transferred_to`, `transferred_to_participant_id`, `transferred_to_mailbox_message_id`, `detailed_call_state`, `pickup_participant_id`, `number_bundle_id`, `number_called`, `permanent_call_id`, `conn_sync_id`, `image_ref`, `fax_file`, `voicebox_call_id`, `wave_file`, `update_time`) VALUES
(14168, 'e16a57fe-f767-479d-9068-72b604a9029f', 'c917ff7a-10ad-4485-a82b-04028881a98a', 1, 3, 4, '2017-06-20 15:05:46', '2017-06-20 15:05:46', 30, 28823, 28824, 1, NULL, 1, NULL, NULL, 4, NULL, NULL, NULL, '05e42d10-2fea-49c2-a3fb-babcfb09c914', NULL, NULL, NULL, '0', NULL, '2017-06-23 08:30:04'),
(14169, 'e4d12d3b-bf01-4399-8019-880f93766267', 'eeb1838b-5283-4a0d-a01d-7c2c900e1f89', 2, 3, 4, '2017-06-20 15:05:46', '2017-06-20 15:05:46', 30, 28825, 28826, 1, NULL, 1, NULL, NULL, 4, NULL, NULL, NULL, '2fbfb3c6-9511-40f4-8dd0-92b81baa3ca0', NULL, NULL, NULL, '0', NULL, '2017-06-27 16:33:58'),
(14170, '214b26a8-0c46-4190-9a6a-5e18184a9437', '9e3abdda-a60e-465e-9ccd-d68d3d1170ca', 1, 3, 4, '2017-06-20 15:14:21', '2017-06-20 15:14:21', NULL, 28827, 28828, 1, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, '54c6e53c-6cbc-43c8-b393-eff12d44ae38', NULL, NULL, NULL, '0', NULL, '2017-06-20 15:14:21'),
(14171, 'f9b8a31a-e0b2-49f9-87ab-14adea1fe0b0', '3d0c2018-9ade-42a4-bcb4-7e78d6bb68b2', 2, 3, 1, '2017-06-20 15:14:21', '2017-06-20 15:14:21', NULL, 28829, 28830, 1, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, '2bb44116-8e27-4f84-9c09-d06addf1326a', NULL, NULL, NULL, '0', NULL, '2017-06-20 15:14:21'),
(14172, '586663f2-8bd8-48b3-b717-3ef973ff1ded', '93d92a1f-f771-4737-a291-caa1002ea158', 1, 3, 4, '2017-06-20 15:36:01', '2017-06-20 15:36:01', 13, 28831, 28832, 1, NULL, 1, NULL, NULL, 4, NULL, NULL, '+4993823166136', '2687ebe7-bbf1-4636-a005-30968a56728d', NULL, NULL, NULL, '0', NULL, '2017-06-22 09:38:27'),
(14173, '5126018d-4a80-4b35-97a0-9615c01e15c6', '38b90043-6601-4d1e-9d3b-9e28280c9f89', 1, 3, 4, '2017-06-20 15:40:09', '2017-06-20 15:40:09', 163, 28833, 28834, 1, NULL, 3, NULL, NULL, 4, NULL, NULL, '+49938294162', '3253b17d-0deb-42a6-94bc-68b8033f62b0', NULL, NULL, NULL, '0', NULL, '2017-06-22 10:36:51'),
(14174, 'eb3c97a7-df55-4f2c-9635-56b9bd4675a2', '9f82a8c3-03e0-41eb-9a9d-e353cc440438', 1, 3, 4, '2017-06-20 15:40:09', '2017-06-20 15:40:09', NULL, 28835, 28836, 1, NULL, 1, NULL, NULL, 1, 28833, NULL, '+49938282402', '194d525c-c581-4f0c-9668-c9c547206579', NULL, NULL, NULL, '0', NULL, '2017-06-20 15:40:09'),
(14175, 'a0bfba97-863d-4c2c-8535-c3914abb480f', '9e6f62e9-45a0-48ea-aa66-8971fe2c1c69', 1, 3, 4, '2017-06-20 15:40:09', '2017-06-20 15:40:09', NULL, 28837, 28838, 1, NULL, 1, NULL, NULL, 1, 28833, NULL, '+49938229524', '24d768be-a3e3-4494-a53f-6e7cd6faea72', NULL, NULL, NULL, '0', NULL, '2017-06-20 15:40:09'),
(14176, '2e2af238-b048-4e32-a7bd-b1b43554c751', '023c0642-cf10-4d9f-b456-cad4914cd97d', 1, 3, 4, '2017-06-20 15:42:52', '2017-06-20 15:42:52', 134, 28839, 28843, 3, 28840, 1, NULL, NULL, 4, NULL, NULL, NULL, '8ef52150-a943-4858-90f0-ab19ed0483c2', NULL, NULL, NULL, '0', NULL, '2017-06-29 08:47:43'),
(14177, '50fdd817-b6ea-400b-b42c-f3b0993fd9a6', '72ff5312-8670-4d37-aa36-72c65e8b5c4f', 2, 3, 1, '2017-06-20 15:42:52', '2017-06-20 15:42:52', NULL, 28841, 28842, 1, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, 'f639e453-6845-499f-9e35-47eb903f1133', NULL, NULL, NULL, '0', NULL, '2017-06-20 15:42:52'),
(14178, 'ddaa0c21-d497-4c89-a821-cab28a5905cb', '84c184e4-bef9-44a2-9a55-8b462a22a90d', 1, 3, 4, '2017-06-20 15:59:51', '2017-06-20 15:59:51', NULL, 28844, 28845, 1, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, '0e6b7535-4fb8-4a70-8d9c-6c49bc0be357', NULL, NULL, NULL, '0', NULL, '2017-06-20 15:59:51'),
(14179, '6f0b102f-9111-4511-94a8-a74013e34c89', 'b4bf0af1-b00b-4d31-9870-df0b433188ce', 2, 3, 1, '2017-06-20 15:59:51', '2017-06-20 15:59:51', NULL, 28846, 28847, 1, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, '44b96098-c0e9-423d-9f9b-9fbb7ead2444', NULL, NULL, NULL, '0', NULL, '2017-06-20 15:59:51'),
(14180, '73402ab6-928a-4b02-b5f9-f1bce5aec0b6', 'a2d584df-73e7-4699-8874-424a7707d53f', 1, 3, 4, '2017-06-21 05:54:51', '2017-06-21 05:54:51', 2657, 28848, 28849, 1, NULL, 1, NULL, NULL, 1, 28854, NULL, '+49938270414', '7a6696f0-aafb-43de-9193-ff903500922e', NULL, NULL, NULL, '0', NULL, '2017-06-21 05:54:51'),
(14181, '00ae6d90-fc22-444a-817a-6d51bc615072', '4fb78853-8b38-4455-9e7f-24d1347f9cc6', 1, 3, 4, '2017-06-21 05:54:51', '2017-06-21 05:54:51', 2657, 28850, 28851, 1, NULL, 1, NULL, NULL, 1, 28854, NULL, '+49938273499', '476b083b-ba50-4486-bffb-4f5a44befe98', NULL, NULL, NULL, '0', NULL, '2017-06-21 05:54:51'),
(14182, 'f8c2dd74-c355-426f-93a5-f28fd30b9373', 'ea6170c6-5c68-4b1b-8514-35fb5ee06dc3', 1, 3, 4, '2017-06-21 05:54:52', '2017-06-21 05:54:52', 2657, 28852, 28853, 1, NULL, 1, NULL, NULL, 1, 28854, NULL, '+49938256254', 'e234b844-5c51-4526-8521-4a2e21855219', NULL, NULL, NULL, '0', NULL, '2017-06-21 05:54:52'),
(14183, '6de62979-f8fd-42ee-b59f-e461f52e8fec', 'f3733122-cbd2-4a92-9185-7803a1e367be', 1, 3, 4, '2017-06-21 05:55:11', '2017-06-21 05:55:11', 2657, 28854, 28855, 4, NULL, 1, NULL, NULL, 4, NULL, NULL, '+49938250773', 'f4727599-5c69-4e8c-b6ab-1a71f1e8b34e', NULL, NULL, NULL, '0', NULL, '2017-06-23 09:26:06'),
(14184, '81d04ed7-13f1-4755-90ce-6bb02131edcf', 'fcc1fd9f-0abf-49b5-a08e-4d111e8715f4', 1, 3, 4, '2017-06-21 05:58:39', '2017-06-21 05:58:39', 21, 28856, 28857, 1, NULL, 1, NULL, NULL, 1, 28858, NULL, '+4993823175106', '8cdc26af-8d6a-44b2-8d11-68e427e74d93', NULL, NULL, NULL, '0', NULL, '2017-06-21 05:58:39'),
(14185, '3c6638a6-cde8-4b37-b1e8-667fca21a050', '44716082-938b-43cc-8d98-ba1595d512cf', 1, 3, 4, '2017-06-21 05:58:49', '2017-06-21 05:58:49', 21, 28858, 28859, 4, NULL, 1, NULL, NULL, 4, NULL, NULL, '+4993823133209', 'b71f3a45-ea23-41d9-97c4-072788e3e47f', NULL, NULL, NULL, '0', NULL, '2017-06-22 09:35:12'),
(14186, '9f3155ec-89a9-4b7f-a3f5-488e28d4919d', '11f59584-cb78-4699-9177-7073d4ce068f', 1, 3, 4, '2017-06-21 06:09:07', '2017-06-21 06:09:07', 154, 28860, 28861, 1, NULL, 1, NULL, NULL, 4, NULL, NULL, NULL, '5ce666b1-0c77-4be3-962d-a2f556467c50', NULL, NULL, NULL, '0', NULL, '2017-06-23 08:41:43'),
(14187, 'd2b2d929-a787-422c-9c6c-196002b26c27', 'b819dc04-636a-4314-bf5e-b39b02a9171e', 2, 3, 4, '2017-06-21 06:09:07', '2017-06-21 06:09:07', 154, 28862, 28863, 1, NULL, 1, NULL, NULL, 4, NULL, NULL, NULL, 'ad591d45-fbc3-41a9-b13f-bd86ddd21f3e', NULL, NULL, NULL, '0', NULL, '2017-06-23 05:56:16'),
(14188, '3923bddd-1147-45b8-8fb8-54b8a7f395bf', '8ce37e49-814e-412f-906e-080b225f068d', 1, 3, 4, '2017-06-21 06:30:33', '2017-06-21 06:30:33', 1692, 28864, 28865, 1, NULL, 1, NULL, NULL, 4, NULL, NULL, '+499382320727', '046136af-fb76-4f75-b5e5-8192e9d5c23a', NULL, NULL, NULL, '0', NULL, '2017-06-22 07:40:25'),
(14189, '1d71da82-0e44-4cd8-bf84-3462ff9dfb6c', '4a1e0fe0-4eac-4590-8086-ee45575684c5', 1, 3, 4, '2017-06-21 06:49:17', '2017-06-21 06:49:17', NULL, 28866, 28867, 1, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, '57403b18-2f8d-4d73-a92e-9c1dfac47960', NULL, NULL, NULL, '0', NULL, '2017-06-21 06:49:17'),
(14190, 'efb190ad-ffb1-455b-bba7-414e911f92b2', '2124fd01-c880-47d8-be54-784a8d188756', 2, 3, 1, '2017-06-21 06:49:17', '2017-06-21 06:49:17', NULL, 28868, 28869, 1, NULL, 1, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, '2017-06-21 06:49:17'),
(14191, 'be539550-29a8-40de-ba5a-245ebd87ac4c', '107b2664-18b7-4f9d-a0eb-26d52588628a', 2, 3, 4, '2017-06-21 06:53:38', '2017-06-21 06:53:38', 43, 28870, 28871, 1, NULL, 1, NULL, NULL, 4, NULL, NULL, '+499382384009', '{4c6afe53-adb1-4fcd-8a99-bff48bc31f1a}', NULL, NULL, NULL, '0', NULL, '2017-06-23 06:05:36'),
(14192, 'a0d81b4a-8008-4749-8fd9-3588bc194b12', 'c9397874-c12f-4bfc-8961-ea49781d5555', 1, 3, 4, '2017-06-21 06:57:39', '2017-06-21 06:57:39', NULL, 28872, 28873, 1, NULL, 1, NULL, NULL, 1, 28880, NULL, '+49938277865', '70a371d9-badc-4fdf-ab88-d79640e28937', NULL, NULL, NULL, '0', NULL, '2017-06-21 06:57:39'),
(14193, 'eb63727f-125f-4ce1-8761-3e770e9aa4f3', '3126a006-9d8b-4fb7-a37e-c430798d5d6d', 1, 3, 4, '2017-06-21 06:57:39', '2017-06-21 06:57:39', NULL, 28874, 28875, 1, NULL, 1, NULL, NULL, 1, 28880, NULL, '+49938237297', 'daaf002f-6a55-4590-88d9-2b433d08c3e6', NULL, NULL, NULL, '0', NULL, '2017-06-21 06:57:39'),
(14194, 'ba0da137-bec6-42c4-b679-227c18b013c3', 'e967f3e0-f019-434e-a1c3-fb4d68cf518d', 1, 3, 4, '2017-06-21 06:57:39', '2017-06-21 06:57:39', NULL, 28876, 28877, 1, NULL, 1, NULL, NULL, 1, 28880, NULL, '+49938232892', '0cdbb3dd-a36e-44cd-b95c-5915bbe3b742', NULL, NULL, NULL, '0', NULL, '2017-06-21 06:57:39'),

(47961, 'cc98d418-23e5-4e46-b60f-8c7aa8ce635c', '6e08df46-c156-4388-bb2f-3849f5ad44bd', 1, 3, 1, '2018-05-03 07:19:04', '2018-05-03 07:19:04', 40, 97599, 97600, 1, NULL, 1, NULL, NULL, 4, NULL, NULL, '+49938259477', '1ef80a70-f890-42ce-adb2-bf37b3d78656', NULL, NULL, NULL, '0', NULL, '2018-05-03 07:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `call_list_entry_state`
--

CREATE TABLE `call_list_entry_state` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `name_de` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `call_list_entry_state`
--

INSERT INTO `call_list_entry_state` (`id`, `name`, `name_de`) VALUES
(1, 'new', 'neu'),
(2, 'seen', 'gesehen'),
(3, 'deleted', 'gelöscht'),
(4, 'done', 'erledigt');

-- --------------------------------------------------------

--
-- Table structure for table `call_list_mailbox_messages`
--

CREATE TABLE `call_list_mailbox_messages` (
  `id` int(11) NOT NULL,
  `config_object_id` varchar(255) DEFAULT NULL,
  `cti_call_id` int(11) DEFAULT NULL,
  `mailbox` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `mailbox_filename` varchar(255) DEFAULT NULL,
  `mailbox_duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `call_list_participants`
--

CREATE TABLE `call_list_participants` (
  `id` int(11) NOT NULL,
  `cti_call_id` int(11) DEFAULT NULL,
  `cti_link_id` int(11) DEFAULT NULL,
  `number` varchar(150) DEFAULT NULL,
  `type` varchar(150) DEFAULT NULL,
  `entity` varchar(150) DEFAULT NULL,
  `user_uuid` varchar(150) DEFAULT NULL,
  `contact_id` varchar(150) DEFAULT NULL,
  `resolved_name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `call_list_participants`
--

INSERT INTO `call_list_participants` (`id`, `cti_call_id`, `cti_link_id`, `number`, `type`, `entity`, `user_uuid`, `contact_id`, `resolved_name`) VALUES
(28802, 2425460, 0, '+49938248164', '2', NULL, NULL, '', 'Name for ID 28802'),
(28803, 3672034, 8587009, 'i241', '0', NULL, '2ed8a35a-cd08-4bdf-ba64-53b494972ee9', NULL, 'Name for ID 28803'),
(28804, 2425460, 0, '+49938252387', '2', NULL, NULL, '', 'Name for ID 28804'),
(28805, 3672035, 8585217, 'i27', '0', NULL, '64966ff3-6dbd-45e8-856b-16cd4892db5c', NULL, 'Name for ID 28805'),
(28806, 2425461, 1024, '+499382317446', '2', NULL, NULL, '', 'Name for ID 28806'),
(28807, 1705222, 131585, 'i11', '0', NULL, '2bbd1c90-3679-4892-b2a9-36dcc172622b', NULL, 'Name for ID 28807'),
(28808, 2425461, 1024, '+499382310066', '2', NULL, NULL, '', 'Name for ID 28808'),
(28809, 3672036, 8585729, 'i15', '0', NULL, '460da028-f0d1-40ac-9c37-df452865d0aa', NULL, 'Name for ID 28809'),
(28810, 2425462, 512, '+499382377995', '2', NULL, NULL, '', 'Name for ID 28810'),
(28811, 1705223, 8587265, 'i105', '0', NULL, 'bfd4b7b6-1ad1-4aa8-a97c-38bf611b31fd', NULL, 'Name for ID 28811'),
(28812, 2425462, 512, '+499382379779', '2', NULL, NULL, '', 'Name for ID 28812'),
(28813, 3672037, 131585, 'i11', '0', NULL, '2bbd1c90-3679-4892-b2a9-36dcc172622b', NULL, 'Name for ID 28813'),
(28814, 2425463, 0, '+499553964907', '2', NULL, NULL, '', 'Name for ID 28814'),
(28815, 1769702, 8587009, 'i241', '0', NULL, '2ed8a35a-cd08-4bdf-ba64-53b494972ee9', NULL, 'Name for ID 28815'),
(28816, 3672038, 0, '+49938275202', '2', NULL, NULL, '57318419506005694861648225218745', 'Name for ID 28816'),
(28817, 1705224, 8588545, 'i103', '0', NULL, 'f82af818-271e-4d70-b46c-660c20b6282b', NULL, 'Name for ID 28817'),
(28818, 3672039, 0, '+499721581286', '2', NULL, NULL, '', 'Name for ID 28818'),
(28819, 3672040, 8588289, 'i16', '0', NULL, 'd2a9a207-dda0-412d-a9ec-3ab7e95b5009', NULL, 'Name for ID 28819'),
(28820, 1705225, 197889, 'i233', '1', NULL, 'd9eef74e-1d35-49d8-8d60-e531b4e33aa2', NULL, 'Name for ID 28820'),
(28821, 1705225, 197889, 'i233', '0', NULL, 'd9eef74e-1d35-49d8-8d60-e531b4e33aa2', NULL, 'Name for ID 28821'),
(28822, 3672040, 8588289, 'i16', '1', NULL, 'd2a9a207-dda0-412d-a9ec-3ab7e95b5009', NULL, 'Name for ID 28822'),
(28823, 3672041, 8587777, 'i12', '0', NULL, 'd0401fa3-09a9-41e8-9e20-86fdfc42842c', NULL, 'Name for ID 28823'),
(28824, 1705226, 132609, 'i13', '1', NULL, '74b1378c-c022-4425-97ff-6c9c29d313b6', NULL, 'Name for ID 28824'),
(28825, 1705226, 132609, 'i13', '0', NULL, '74b1378c-c022-4425-97ff-6c9c29d313b6', NULL, 'Name for ID 28825'),
(28826, 3672041, 8587777, 'i12', '1', NULL, 'd0401fa3-09a9-41e8-9e20-86fdfc42842c', NULL, 'Name for ID 28826'),
(28827, 3672042, 8587265, 'i105', '0', NULL, 'bfd4b7b6-1ad1-4aa8-a97c-38bf611b31fd', NULL, 'Name for ID 28827'),
(28828, 1705227, 8587777, 'i12', '1', NULL, 'd0401fa3-09a9-41e8-9e20-86fdfc42842c', NULL, 'Name for ID 28828'),
(28829, 1705227, 8587777, 'i12', '0', NULL, 'd0401fa3-09a9-41e8-9e20-86fdfc42842c', NULL, 'Name for ID 28829'),
(28830, 3672042, 8587265, 'i105', '1', NULL, 'bfd4b7b6-1ad1-4aa8-a97c-38bf611b31fd', NULL, 'Name for ID 28830'),
(28831, 3672043, 8587009, 'i241', '0', NULL, '2ed8a35a-cd08-4bdf-ba64-53b494972ee9', NULL, 'Name for ID 28831'),
(28832, 2425464, 1024, '+4993880827', '2', NULL, NULL, '', 'Name for ID 28832'),
(28833, 3672044, 131585, 'i11', '0', NULL, '2bbd1c90-3679-4892-b2a9-36dcc172622b', NULL, 'Name for ID 28833'),
(28834, 2425465, 512, '+491721960278', '2', NULL, NULL, '', 'Name for ID 28834'),
(28835, 3672045, 131073, 'i22', '0', NULL, '474c3d91-eba9-429f-92c8-52aa17744260', NULL, 'Name for ID 28835'),
(28836, 2425465, 512, '+491721948908', '2', NULL, NULL, '', 'Name for ID 28836'),
(28837, 3672046, 8587009, 'i241', '0', NULL, '2ed8a35a-cd08-4bdf-ba64-53b494972ee9', NULL, 'Name for ID 28837'),
(28838, 2425465, 512, '+491721953706', '2', NULL, NULL, '', 'Name for ID 28838'),
(28839, 3672047, 132609, 'i13', '0', NULL, '74b1378c-c022-4425-97ff-6c9c29d313b6', NULL, 'Name for ID 28839'),
(28840, 1705228, 131585, 'i11', '1', NULL, '2bbd1c90-3679-4892-b2a9-36dcc172622b', NULL, 'Name for ID 28840'),
(28841, 1705228, 131585, 'i11', '0', NULL, '2bbd1c90-3679-4892-b2a9-36dcc172622b', NULL, 'Name for ID 28841'),
(28842, 3672047, 132609, 'i13', '1', NULL, '74b1378c-c022-4425-97ff-6c9c29d313b6', NULL, 'Name for ID 28842'),
(28843, 2425465, 512, '+491721921808', '2', NULL, NULL, '', 'Name for ID 28843'),
(28844, 3672049, 8587777, 'i12', '0', NULL, 'd0401fa3-09a9-41e8-9e20-86fdfc42842c', NULL, 'Name for ID 28844'),
(28845, 1705229, 8585729, 'i15', '1', NULL, '460da028-f0d1-40ac-9c37-df452865d0aa', NULL, 'Name for ID 28845'),
(28846, 1705229, 8585729, 'i15', '0', NULL, '460da028-f0d1-40ac-9c37-df452865d0aa', NULL, 'Name for ID 28846'),
(28847, 3672049, 8587777, 'i12', '1', NULL, 'd0401fa3-09a9-41e8-9e20-86fdfc42842c', NULL, 'Name for ID 28847'),
(28848, 3672050, 131585, 'i11', '0', NULL, '2bbd1c90-3679-4892-b2a9-36dcc172622b', NULL, 'Name for ID 28848'),
(28849, 2425466, 0, '+499527922', '2', NULL, NULL, '', 'Name for ID 28849'),
(28850, 3672051, 131073, 'i22', '0', NULL, '474c3d91-eba9-429f-92c8-52aa17744260', NULL, 'Name for ID 28850'),
(28851, 2425466, 0, '+499564188', '2', NULL, NULL, '', 'Name for ID 28851'),
(28852, 3672052, 8587009, 'i241', '0', NULL, '2ed8a35a-cd08-4bdf-ba64-53b494972ee9', NULL, 'Name for ID 28852'),
(28853, 2425466, 0, '+499547173', '2', NULL, NULL, '', 'Name for ID 28853'),
(28854, 1705235, 8585729, 'i15', '0', NULL, '460da028-f0d1-40ac-9c37-df452865d0aa', NULL, 'Name for ID 28854'),
(28855, 2425466, 0, '+499533304', '2', NULL, NULL, '', 'Name for ID 28855'),
(28856, 3672053, 8587009, 'i241', '0', NULL, '2ed8a35a-cd08-4bdf-ba64-53b494972ee9', NULL, 'Name for ID 28856'),
(28857, 2425467, 1024, '+4968317614999', '2', NULL, NULL, '', 'Name for ID 28857'),
(28858, 1705236, 8585985, 'i17', '0', NULL, '1cd3fd38-9c7e-4279-ae68-094a9f56e9f3', NULL, 'Name for ID 28858'),
(28859, 2425467, 1024, '+4968317655084', '2', NULL, NULL, '', 'Name for ID 28859'),
(28860, 3672054, 8588545, 'i103', '0', NULL, 'f82af818-271e-4d70-b46c-660c20b6282b', NULL, 'Name for ID 28860'),
(28861, 1705237, 8585985, 'i17', '1', NULL, '1cd3fd38-9c7e-4279-ae68-094a9f56e9f3', NULL, 'Name for ID 28861'),
(28862, 1705237, 8585985, 'i17', '0', NULL, '1cd3fd38-9c7e-4279-ae68-094a9f56e9f3', NULL, 'Name for ID 28862'),
(28863, 3672054, 8588545, 'i103', '1', NULL, 'f82af818-271e-4d70-b46c-660c20b6282b', NULL, 'Name for ID 28863'),
(28864, 3672055, 8585217, 'i27', '0', NULL, '64966ff3-6dbd-45e8-856b-16cd4892db5c', NULL, 'Name for ID 28864'),
(28865, 2425468, 512, '+491718340425', '2', NULL, NULL, '', 'Name for ID 28865'),
(28866, 3672056, 8585217, 'i27', '0', NULL, '64966ff3-6dbd-45e8-856b-16cd4892db5c', NULL, 'Name for ID 28866'),
(28867, 1705238, 8587521, 'i245', '1', NULL, 'b35969d5-5e69-4bf4-9626-59b1ba2f74f0', NULL, 'Name for ID 28867'),
(28868, 1705238, 8587521, 'i245', '0', NULL, 'b35969d5-5e69-4bf4-9626-59b1ba2f74f0', NULL, 'Name for ID 28868'),
(28869, 3672056, 8585217, 'i27', '1', NULL, '64966ff3-6dbd-45e8-856b-16cd4892db5c', NULL, 'Name for ID 28869'),
(28870, 1769703, 8585985, 'i17', '0', NULL, '1cd3fd38-9c7e-4279-ae68-094a9f56e9f3', NULL, 'Name for ID 28870'),
(28871, 3672057, 0, '+4971326874', '2', NULL, NULL, '08518180010049445589815801211073', 'Name for ID 28871'),
(28872, 3672059, 131585, 'i11', '0', NULL, '2bbd1c90-3679-4892-b2a9-36dcc172622b', NULL, 'Name for ID 28872'),
(28873, 2425469, 0, '+499416993095', '2', NULL, NULL, '', 'Name for ID 28873'),
(28874, 3672060, 131073, 'i22', '0', NULL, '474c3d91-eba9-429f-92c8-52aa17744260', NULL, 'Name for ID 28874'),
(28875, 2425469, 0, '+499416914853', '2', NULL, NULL, '', 'Name for ID 28875'),
(97782, 3672705, 197121, 'i28', '0', NULL, '453b237b-4424-4153-ac74-ac0cf7c45008', NULL, 'Name for ID 97782'),
(97783, 3343329, 8519680, '+4996148021674', '2', NULL, NULL, '', 'Name for ID 97783');

-- --------------------------------------------------------

--
-- Table structure for table `call_state`
--

CREATE TABLE `call_state` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `name_de` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `call_state`
--

INSERT INTO `call_state` (`id`, `name`, `name_de`) VALUES
(1, 'ongoing', '1 - fortlaufend'),
(2, 'finished', '2 - beendet'),
(3, 'frozen', '3 - gehalten (frozen)');

-- --------------------------------------------------------

--
-- Table structure for table `detailed_call_state`
--

CREATE TABLE `detailed_call_state` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `name_de` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `detailed_call_state`
--

INSERT INTO `detailed_call_state` (`id`, `name`, `name_de`) VALUES
(1, 'absence', '1 - abwesend'),
(2, 'offered', '2 - angeboten'),
(3, 'connected', '3 - verbunden'),
(4, 'finished', '4 - beendet');

-- --------------------------------------------------------

--
-- Table structure for table `meta`
--

CREATE TABLE `meta` (
  `key` varchar(150) NOT NULL,
  `value` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `meta`
--

INSERT INTO `meta` (`key`, `value`) VALUES
('version', '42');

-- --------------------------------------------------------

--
-- Table structure for table `sqlite_sequence`
--

CREATE TABLE `sqlite_sequence` (
  `name` varchar(150) NOT NULL,
  `seq` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `transfer_from_mode`
--

CREATE TABLE `transfer_from_mode` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `name_de` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer_from_mode`
--

INSERT INTO `transfer_from_mode` (`id`, `name`, `name_de`) VALUES
(1, 'not_transferred_from', '-'),
(2, 'transferred_from_group_call', '2 - von Gruppe'),
(3, 'transferred_from_participant', '3 - von Teilnehmer'),
(4, 'transferred_from_suspended', '4 - von Warteschleife');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_to_mode`
--

CREATE TABLE `transfer_to_mode` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `name_de` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transfer_to_mode`
--

INSERT INTO `transfer_to_mode` (`id`, `name`, `name_de`) VALUES
(1, 'not_transferred_to', '-'),
(2, 'transferred_to_participant', '2 - an Teilnehmer'),
(3, 'transferred_to_suspended', '3 - an Warteschleife'),
(4, 'transferred_to_mailbox', '4 - an Mailbox'),
(5, 'transferred_to_mailbox_local_participant_can_access', '5 - an mailbox_local_participant_can_access'),
(6, 'transferred_to_mailbox_deleted', '6 - an mailbox_deleted');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_anrufe`
-- (See below for the actual view)
--
CREATE TABLE `view_anrufe` (
`call_date` date
,`call_time` time(6)
,`call_duration` time
,`call_direction` varchar(150)
,`internal_extension_number` varchar(150)
,`internal_extension_name` varchar(150)
,`external_extension_number` varchar(150)
,`external_extension_name` varchar(150)
,`call_duration_seconds` bigint(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_anrufe_all`
-- (See below for the actual view)
--
CREATE TABLE `view_anrufe_all` (
`call_datetime` datetime
,`call_answered` int(1)
,`call_duration` time
,`call_direction` varchar(150)
,`internal_number` varchar(150)
,`internal_name` varchar(150)
,`external_number` varchar(150)
,`external_name` varchar(150)
,`call_transferred_from` varchar(150)
,`call_transferred_to` varchar(150)
,`call_pickuped_by` varchar(150)
,`number_called` text
,`call_date` date
,`call_time` time(6)
,`rid` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_statistik`
-- (See below for the actual view)
--
CREATE TABLE `view_statistik` (
`anz_call_list_entries` int(11)
,`anz_call_list_participants` int(11)
,`anz_view_anrufe` int(11)
,`anz_view_anrufe_all` int(11)
);

-- --------------------------------------------------------

--
-- Structure for view `view_anrufe`
--
DROP TABLE IF EXISTS `view_anrufe`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_anrufe`  AS  select cast(`call_list_entries`.`start_time` as date) AS `call_date`,cast(`call_list_entries`.`start_time` as time(6)) AS `call_time`,sec_to_time(`call_list_entries`.`duration`) AS `call_duration`,`call_direction`.`name` AS `call_direction`,`internalparticipant`.`number` AS `internal_extension_number`,`internalparticipant`.`resolved_name` AS `internal_extension_name`,`externalparticipant`.`number` AS `external_extension_number`,`externalparticipant`.`resolved_name` AS `external_extension_name`,coalesce(`call_list_entries`.`duration`,0) AS `call_duration_seconds` from (((`call_list_entries` left join `call_direction` on((`call_list_entries`.`call_direction` = `call_direction`.`id`))) left join `call_list_participants` `internalparticipant` on((`call_list_entries`.`local_participant_id` = `internalparticipant`.`id`))) left join `call_list_participants` `externalparticipant` on((`call_list_entries`.`peer_participant_id` = `externalparticipant`.`id`))) order by `call_list_entries`.`start_time` desc ;

-- --------------------------------------------------------

--
-- Structure for view `view_anrufe_all`
--
DROP TABLE IF EXISTS `view_anrufe_all`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_anrufe_all`  AS  select `call_list_entries`.`start_time` AS `call_datetime`,(case `call_list_entries`.`detailed_call_state` when 1 then 0 else 1 end) AS `call_answered`,sec_to_time(`call_list_entries`.`duration`) AS `call_duration`,`call_direction`.`name_de` AS `call_direction`,`internalparticipant`.`number` AS `internal_number`,`internalparticipant`.`resolved_name` AS `internal_name`,`externalparticipant`.`number` AS `external_number`,`externalparticipant`.`resolved_name` AS `external_name`,(case `call_list_entries`.`transferred_from` when 3 then `transferredfromparticipant`.`resolved_name` when 4 then 'Warteschleife' else '-' end) AS `call_transferred_from`,`transfer_to_mode`.`name_de` AS `call_transferred_to`,(case when (`call_list_entries`.`pickup_participant_id` > 0) then `pickupparticipant`.`resolved_name` else '-' end) AS `call_pickuped_by`,`call_list_entries`.`number_called` AS `number_called`,cast(`call_list_entries`.`start_time` as date) AS `call_date`,cast(`call_list_entries`.`start_time` as time(6)) AS `call_time`,`call_list_entries`.`rid` AS `rid` from ((((((((((`call_list_entries` left join `call_direction` on((`call_list_entries`.`call_direction` = `call_direction`.`id`))) left join `call_list_participants` `internalparticipant` on((`call_list_entries`.`local_participant_id` = `internalparticipant`.`id`))) left join `call_list_participants` `externalparticipant` on((`call_list_entries`.`peer_participant_id` = `externalparticipant`.`id`))) left join `transfer_from_mode` on((`call_list_entries`.`transferred_from` = `transfer_from_mode`.`id`))) left join `detailed_call_state` on((`call_list_entries`.`detailed_call_state` = `detailed_call_state`.`id`))) left join `transfer_to_mode` on((`call_list_entries`.`transferred_to` = `transfer_to_mode`.`id`))) left join `call_state` on((`call_list_entries`.`call_state` = `call_state`.`id`))) left join `call_list_entry_state` on((`call_list_entries`.`call_list_entry_state_id` = `call_list_entry_state`.`id`))) left join `call_list_participants` `pickupparticipant` on((`call_list_entries`.`pickup_participant_id` = `pickupparticipant`.`id`))) left join `call_list_participants` `transferredfromparticipant` on((`call_list_entries`.`transferred_from_participant_id` = `transferredfromparticipant`.`id`))) order by `call_list_entries`.`start_time` desc ;

-- --------------------------------------------------------


--
-- Indexes for dumped tables
--

--
-- Indexes for table `call_direction`
--
ALTER TABLE `call_direction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_de` (`name_de`);

--
-- Indexes for table `call_list_entries`
--
ALTER TABLE `call_list_entries`
  ADD PRIMARY KEY (`rid`),
  ADD UNIQUE KEY `unique-key01` (`call_direction`,`start_time`,`duration`,`local_participant_id`,`peer_participant_id`),
  ADD KEY `call_direction` (`call_direction`),
  ADD KEY `local_participant_id` (`local_participant_id`),
  ADD KEY `peer_participant_id` (`peer_participant_id`),
  ADD KEY `call_state` (`call_state`),
  ADD KEY `call_list_entry_state_id` (`call_list_entry_state_id`),
  ADD KEY `transferred_from` (`transferred_from`),
  ADD KEY `transferred_to` (`transferred_to`),
  ADD KEY `transferred_from_participant_id` (`transferred_from_participant_id`),
  ADD KEY `transferred_to_participant_id` (`transferred_to_participant_id`),
  ADD KEY `detailed_call_state` (`detailed_call_state`),
  ADD KEY `pickup_participant_id` (`pickup_participant_id`);

--
-- Indexes for table `call_list_entry_state`
--
ALTER TABLE `call_list_entry_state`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_de` (`name_de`);

--
-- Indexes for table `call_list_mailbox_messages`
--
ALTER TABLE `call_list_mailbox_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `call_list_participants`
--
ALTER TABLE `call_list_participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cti_call_id` (`cti_call_id`),
  ADD KEY `cti_link_id` (`cti_link_id`),
  ADD KEY `number` (`number`),
  ADD KEY `resolved_name` (`resolved_name`);

--
-- Indexes for table `call_state`
--
ALTER TABLE `call_state`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_de` (`name_de`);

--
-- Indexes for table `detailed_call_state`
--
ALTER TABLE `detailed_call_state`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_de` (`name_de`);

--
-- Indexes for table `meta`
--
ALTER TABLE `meta`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `sqlite_sequence`
--
ALTER TABLE `sqlite_sequence`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `transfer_from_mode`
--
ALTER TABLE `transfer_from_mode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_de` (`name_de`);

--
-- Indexes for table `transfer_to_mode`
--
ALTER TABLE `transfer_to_mode`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_de` (`name_de`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `call_list_entries`
--
ALTER TABLE `call_list_entries`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47962;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
