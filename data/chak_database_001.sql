-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 12, 2022 at 02:52 PM
-- Server version: 5.7.39-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chak_database_001`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_202290_colors`
--

CREATE TABLE `track_202290_colors` (
  `cid` int(11) NOT NULL,
  `user_id` int(25) NOT NULL,
  `color` varchar(256) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_202290_colors`
--

INSERT INTO `track_202290_colors` (`cid`, `user_id`, `color`, `img`, `date_create`) VALUES
(1, 4, 'Blue', 'https://via.placeholder.com/443x469/B65/fff/?text=Glenn', '2022-08-02 19:35:44.000000'),
(2, 7, 'BROWN', 'https://via.placeholder.com/382x368/794/fff/?text=Terry', '2021-03-26 15:14:58.000000'),
(3, 4, 'BROWN', 'https://via.placeholder.com/581x382/733/fff/?text=Tillie', '2020-02-24 00:47:54.000000'),
(4, 8, 'BROWN', 'https://via.placeholder.com/586x559/7A7/fff/?text=Lucinda', '2020-07-15 11:14:07.000000'),
(5, 6, 'WHITE', 'https://via.placeholder.com/451x546/844/fff/?text=Evelyn', '2020-12-01 07:24:50.000000'),
(6, 7, 'ORANGE', 'https://via.placeholder.com/421x451/B99/fff/?text=Gertrude', '2021-06-18 07:06:15.000000'),
(7, 2, 'Calico', 'https://via.placeholder.com/352x582/AB8/fff/?text=Franklin', '2020-01-04 22:46:45.000000'),
(8, 1, 'Calic2o11', 'https://via.placeholder.com/513x386/7B4/fff/?text=Loretta', '2022-09-07 21:02:26.000000'),
(9, 5, 'WHITE', 'https://via.placeholder.com/522x355/988/fff/?text=Alfred', '2021-11-09 06:11:44.000000'),
(10, 8, 'Ginger', 'https://via.placeholder.com/395x506/B3B/fff/?text=Sophia', '2021-11-03 18:24:10.000000'),
(11, 7, 'GRAY', 'https://via.placeholder.com/578x565/554/fff/?text=Mathilda', '2022-04-23 00:43:09.000000'),
(13, 7, 'Blue', 'https://via.placeholder.com/380x471/948/fff/?text=Cynthia', '2021-07-29 17:15:06.000000'),
(14, 2, 'BROWN', 'https://via.placeholder.com/444x403/BB8/fff/?text=Josephine', '2020-12-11 11:18:17.000000'),
(15, 1, 'G12RAY', 'https://via.placeholder.com/481x400/4A6/fff/?text=Lelia', '2021-08-10 20:34:07.000000'),
(16, 7, 'Cinnamon', 'https://via.placeholder.com/364x462/B8A/fff/?text=Viola', '2020-08-21 07:33:33.000000'),
(17, 7, 'BLACK', 'https://via.placeholder.com/516x518/8BA/fff/?text=Caleb', '2021-10-31 12:58:21.000000'),
(18, 1, 'WHITE8', 'https://via.placeholder.com/574x522/948/fff/?text=Eula', '2022-08-26 08:48:44.000000'),
(19, 8, 'BROWN', 'https://via.placeholder.com/513x559/64B/fff/?text=Amanda', '2022-03-23 05:49:05.000000'),
(20, 6, 'Fawn', 'https://via.placeholder.com/502x456/783/fff/?text=Anthony', '2022-01-08 05:30:41.000000'),
(21, 3, 'BROWN', 'https://via.placeholder.com/508x375/749/fff/?text=Bernice', '2020-05-25 22:34:21.000000'),
(22, 10, 'Calico', 'https://via.placeholder.com/427x557/376/fff/?text=Tillie', '2021-11-25 05:15:09.000000'),
(23, 10, 'Blue', 'https://via.placeholder.com/586x354/A63/fff/?text=Hallie', '2022-02-21 01:01:37.000000'),
(24, 10, 'BROWN', 'https://via.placeholder.com/504x513/B54/fff/?text=Hannah', '2022-07-14 06:13:10.000000'),
(25, 5, 'BLACK', 'https://via.placeholder.com/515x498/549/fff/?text=Nathaniel', '2021-02-18 16:45:01.000000'),
(26, 5, 'Cinnamon', 'https://via.placeholder.com/493x519/565/fff/?text=Ida', '2021-10-29 08:47:20.000000'),
(27, 7, 'GRAY', 'https://via.placeholder.com/390x486/6A8/fff/?text=Susan', '2020-02-14 23:06:36.000000'),
(28, 5, 'Ginger', 'https://via.placeholder.com/548x559/B99/fff/?text=Eugene', '2022-01-05 21:57:16.000000'),
(29, 4, 'Fawn', 'https://via.placeholder.com/351x466/578/fff/?text=Susan', '2022-10-19 22:15:52.000000'),
(30, 4, 'Cinnamon', 'https://via.placeholder.com/382x452/AA6/fff/?text=Gary', '2022-07-17 13:22:26.000000'),
(31, 2, 'BROWN', 'https://via.placeholder.com/548x517/A68/fff/?text=Larry', '2022-09-10 04:48:36.000000'),
(32, 1, 'BLA1CK', 'https://via.placeholder.com/458x568/B46/fff/?text=Wayne', '2022-09-30 22:05:55.000000'),
(33, 1, 'BOWN??=', 'https://via.placeholder.com/352x394/47A/fff/?text=Tom', '2021-09-01 03:45:03.000000'),
(34, 6, 'BROWN', 'https://via.placeholder.com/591x370/533/fff/?text=Jared', '2021-05-12 15:39:02.000000'),
(35, 10, 'ORANGE', 'https://via.placeholder.com/399x546/444/fff/?text=Bettie', '2022-09-03 06:05:44.000000'),
(36, 5, 'GRAY', 'https://via.placeholder.com/405x548/887/fff/?text=Hettie', '2020-11-23 04:40:14.000000'),
(37, 8, 'ORANGE', 'https://via.placeholder.com/501x460/73B/fff/?text=Jesus', '2021-12-01 20:07:53.000000'),
(38, 8, 'GRAY', 'https://via.placeholder.com/424x382/86B/fff/?text=Elizabeth', '2022-04-11 16:46:08.000000'),
(39, 8, 'WHITE', 'https://via.placeholder.com/417x404/B6B/fff/?text=Corey', '2022-03-20 23:18:59.000000'),
(40, 8, 'Fawn', 'https://via.placeholder.com/497x376/B9B/fff/?text=Hannah', '2022-01-07 22:45:23.000000'),
(41, 4, 'BLACK', 'https://via.placeholder.com/537x398/8B4/fff/?text=Daisy', '2021-01-09 02:01:36.000000'),
(42, 9, 'ORANGE', 'https://via.placeholder.com/522x553/334/fff/?text=Devin', '2020-10-27 13:39:30.000000'),
(43, 4, 'ORANGE', 'https://via.placeholder.com/555x494/6A4/fff/?text=Annie', '2022-03-11 05:10:59.000000'),
(44, 10, 'Calico', 'https://via.placeholder.com/580x574/835/fff/?text=Joshua', '2020-08-31 20:30:11.000000'),
(45, 2, 'GRAY', 'https://via.placeholder.com/405x386/A44/fff/?text=Wesley', '2021-05-16 22:11:46.000000'),
(46, 7, 'BLACK', 'https://via.placeholder.com/475x355/3B9/fff/?text=Lena', '2020-05-27 22:44:54.000000'),
(47, 2, 'Ginger', 'https://via.placeholder.com/545x493/546/fff/?text=Marian', '2021-02-25 10:49:51.000000'),
(48, 3, 'ORANGE', 'https://via.placeholder.com/461x541/B37/fff/?text=Katharine', '2021-08-15 10:22:38.000000'),
(49, 2, 'Ginger', 'https://via.placeholder.com/513x397/645/fff/?text=Josephine', '2022-04-25 04:26:34.000000'),
(50, 3, 'Cinnamon', 'https://via.placeholder.com/418x396/989/fff/?text=Carrie', '2022-06-21 09:58:35.000000'),
(51, 1, '123', 'https://via.placeholder.com/400/?text=ANIMAL', '2022-11-21 18:30:58.000000'),
(57, 4, 'Test', 'https://via.placeholder.com/400/?text=ANIMAL', '2022-12-09 14:38:41.000000'),
(61, 25, 'WHITE', 'https://via.placeholder.com/400/?text=ANIMAL', '2022-12-09 16:55:18.000000'),
(62, 25, 'Black', 'https://via.placeholder.com/400/?text=ANIMAL', '2022-12-09 16:55:42.000000'),
(63, 25, 'gray', 'https://via.placeholder.com/400/?text=ANIMAL', '2022-12-09 16:57:50.000000'),
(64, 25, 'ORANGE', 'https://via.placeholder.com/400/?text=ANIMAL', '2022-12-09 16:59:05.000000'),
(65, 25, 'black&white', 'https://via.placeholder.com/400/?text=ANIMAL', '2022-12-09 17:11:13.000000'),
(66, 25, 'tabby', 'https://via.placeholder.com/400/?text=ANIMAL', '2022-12-09 17:18:54.000000');

-- --------------------------------------------------------

--
-- Table structure for table `track_202290_locations`
--

CREATE TABLE `track_202290_locations` (
  `id` int(13) NOT NULL,
  `color_id` int(13) NOT NULL,
  `lat` decimal(8,6) NOT NULL,
  `lng` decimal(9,6) NOT NULL,
  `friendly` varchar(13) NOT NULL,
  `description` text NOT NULL,
  `photo` varchar(128) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_202290_locations`
--

INSERT INTO `track_202290_locations` (`id`, `color_id`, `lat`, `lng`, `friendly`, `description`, `photo`, `date_create`) VALUES
(1, 43, '37.813020', '-122.376730', '2', 'Haciwu vomaje te retic no so oficbi leha maem armak ovoisacun zukumwow so.', 'https://via.placeholder.com/595x589/B37/fff/?text=undefined', '2022-02-25 21:49:03'),
(2, 45, '37.783210', '-122.410840', '4', 'Fonogfe jinzibgej ivbeimo om wag te sibihi ibjet hode ha kud ceg.', 'https://via.placeholder.com/375x495/5BB/fff/?text=undefined', '2022-01-15 08:43:06'),
(3, 43, '37.747150', '-122.369420', '1', 'Zol mati tohosu koefouve tocpoug ujuvillar vahif ma nag vunsuz zugpesuw mekan ugumak inpew.', 'https://via.placeholder.com/399x487/74B/fff/?text=undefined', '2020-03-27 01:58:17'),
(4, 21, '37.744440', '-122.365690', '5', 'Efoow sajini nobwe rezaj jaho okaozocez paoromoj bavuzu cadees ehu po ehe rartevu pizgihfo zi cem.', 'https://via.placeholder.com/523x467/4A8/fff/?text=undefined', '2022-06-05 02:35:50'),
(5, 30, '37.738540', '-122.470290', '4', 'Tumoklib jogalcas ofatew zajokduw suw bi efe odure vuumi wa caseole cubuc zuhpom piwezo ovuaszi sod nebuwa.', 'https://via.placeholder.com/475x477/768/fff/?text=undefined', '2021-04-25 23:38:20'),
(6, 30, '37.768420', '-122.396880', '1', 'Vagodig notge dit wifi ladho tacenvod tuaju fogol odrezce iphi bip gauvu wug buj mec udo onitagbu.', 'https://via.placeholder.com/398x529/5A8/fff/?text=undefined', '2022-07-03 00:24:21'),
(7, 8, '37.746450', '-122.440730', '1', 'Bikuv gof daget igufo up johojaas jufwis ma ugkefef hezwil bojubmo olizutwi pa.', 'https://via.placeholder.com/590x362/5B4/fff/?text=undefined', '2020-07-25 06:20:57'),
(8, 46, '37.786070', '-122.394950', '3', 'Ogefe diwosac johfucu te ifjukaso emo irowi nuwuha soberamic mufwuwwa gerdijij lalercez wilili makika itu.', 'https://via.placeholder.com/481x584/A8A/fff/?text=undefined', '2021-02-18 10:49:09'),
(9, 21, '37.785490', '-122.486640', '1', 'Zil hemotuca isucah ewteva mib kot bakcusral feibeoc lun ur lo padeun aciuvje nadalajil jeznavlid gun nudamaz codtu.', 'https://via.placeholder.com/531x420/5A8/fff/?text=undefined', '2022-07-07 22:26:58'),
(10, 45, '37.799140', '-122.478890', '4', 'Avnefib lifpeal ah so dutgec za sa segohi ovabeuje ujpetfa wadrirse mibja licil bucutpi gesvu pogavag vol.', 'https://via.placeholder.com/395x497/754/fff/?text=undefined', '2021-06-21 09:20:35'),
(11, 43, '37.799590', '-122.370900', '4', 'Huh woteg poap mauna giilo gakcifzuv geluvefo surah kewu rovedi lede wa ke za lulca.', 'https://via.placeholder.com/532x402/B95/fff/?text=undefined', '2020-10-23 18:02:35'),
(12, 30, '37.812790', '-122.440980', '4', 'Ha ci uwofafa sa kucenili jidcib gigof puaso cud tulu kot ezucizen ke ki johawad.', 'https://via.placeholder.com/561x448/465/fff/?text=undefined', '2020-01-04 21:11:46'),
(13, 21, '37.791000', '-122.389140', '2', 'Epu mannuz ohopa otuocoboj ow ovi ohuzulbo godsomem fonduna su uja wo hukewen ekesusad.', 'https://via.placeholder.com/550x504/489/fff/?text=undefined', '2021-04-30 07:44:39'),
(15, 46, '37.771410', '-122.400170', '3', 'Siv ewehooki huheki huvaslol silrep fahes sowiz guhromi zuudiz mom tersenob jarfefejo veflibo.', 'https://via.placeholder.com/353x548/453/fff/?text=undefined', '2021-12-08 01:38:01'),
(16, 45, '37.763530', '-122.512820', '1', 'Ur virna da sazle poz mir uv gufru caucazi tiuwouc navusis gajruwsuh deaw caobe.', 'https://via.placeholder.com/457x500/657/fff/?text=undefined', '2021-02-07 19:36:40'),
(17, 21, '37.716110', '-122.476860', '1', 'Kiddi tumugras buzicijun cun mu anejef efi la elolele gelgiw wo ri latbobjan.', 'https://via.placeholder.com/570x371/9B3/fff/?text=undefined', '2022-10-26 12:18:39'),
(18, 43, '37.767960', '-122.406850', '1', ' Kar 12355todti foorce woh wisalse kupomguw cu gusub idi jumofzeb lumulu uvo adaz unduju. ', 'uploads/1670621830.4076_20B385AC-140F-4055-8A57-964A53F7817B.jpeg', '2020-10-19 19:52:43'),
(19, 21, '37.815080', '-122.489870', '1', 'Cab zisfin molbetwu bur luzili zugedor tauku filmula cindato lomerli fevagofe dojetulo omnebwod vaf kirvoca agki nezot.', 'https://via.placeholder.com/436x582/4A8/fff/?text=undefined', '2021-07-12 22:26:41'),
(20, 30, '37.730230', '-122.430710', '5', '   C255onag ma22momsez padlutmol jakufwam punraaca awpewaki tulroceg cejze sojgehput ode boepube tetjulna.   ', 'uploads/1669929065.2434_images (1).jpg', '2022-09-03 15:07:10'),
(21, 8, '37.730060', '-122.422110', '2', 'Kehivi cocinku olwid gapsuvu hig do ranun efojucsab nuunehi dimen toficwin wo kep magtupu mirohe iveus.', 'https://via.placeholder.com/495x426/967/fff/?text=undefined', '2020-02-11 09:39:04'),
(22, 45, '37.725080', '-122.460120', '3', 'Hah ci voho mazituna orupa fahaj suvere behriv sahawim uhaihe so waer cufiijo mifob bava nata.', 'https://via.placeholder.com/448x390/893/fff/?text=undefined', '2021-01-08 10:34:33'),
(23, 45, '37.739270', '-122.457160', '4', 'Vicof wecik anfoh pofi uzco zaarso pavgokcab dizocauro evenafnup hoicdib runsed wuhiric.', 'https://via.placeholder.com/558x519/A54/fff/?text=undefined', '2021-11-22 11:51:47'),
(24, 8, '37.715910', '-122.490150', '3', 'Ewi nut todahevu dudle biijinif kudtora tucaeno wev diupbi doica rujopu cemlof san nuf jovapajol rejgizpim fuw gigehit.', 'https://via.placeholder.com/445x410/786/fff/?text=undefined', '2020-07-13 03:24:01'),
(25, 46, '37.762750', '-122.499110', '1', 'Ziekop co ezanug pevamhu zecete zeec vucefmug cihanfok caf wobic me heir upoezo pabonig tubu mus.', 'https://via.placeholder.com/430x449/564/fff/?text=undefined', '2021-02-12 09:14:26'),
(26, 18, '37.768470', '-122.499410', '5', 'Sez no pof cog nihsop duhnudne cir wacoug eje mosrit favan udueje beopgu.', 'https://via.placeholder.com/366x455/75B/fff/?text=undefined', '2020-02-07 15:38:57'),
(27, 22, '37.812710', '-122.407060', '4', 'Gebeg ut nati vew mo icut ma selzafre esneh opi pamurne zi.', 'https://via.placeholder.com/406x600/369/fff/?text=undefined', '2021-01-25 07:08:07'),
(28, 1, '37.785980', '-122.477690', '2', 'Va zu fuklaz ema go muhobter zusavet lehrikow melitke apper sewreg guwoscag nokunez bod cofsocro.', 'https://via.placeholder.com/354x357/574/fff/?text=undefined', '2021-12-21 04:40:22'),
(29, 27, '37.760520', '-122.420440', '3', 'Acib ocafa bov rivefor damcahbu si bonfa jickeki zakek taku itigo edmutil ze fi.', 'https://via.placeholder.com/382x394/56B/fff/?text=undefined', '2022-05-14 07:52:10'),
(30, 18, '37.809360', '-122.500170', '3', 'Getmaulo bo guva gu vemgajed jan uv ju afbu wafikarem bofis muwfoto.', 'https://via.placeholder.com/486x592/963/fff/?text=undefined', '2020-05-26 01:45:04'),
(31, 1, '37.714490', '-122.471990', '4', 'Gij bep wiv pewrar taew kiworabi lahzom ib lu kagiku diagri jogeb wonzur fal.', 'https://via.placeholder.com/489x560/3A6/fff/?text=undefined', '2020-07-03 03:52:50'),
(32, 18, '37.770810', '-122.488330', '5', 'Vereran cortim gunce izu ehufeju buga bipiw aje wekelsiz cuico luhhi ud vame koedu mumehlo napod.', 'https://via.placeholder.com/461x557/677/fff/?text=undefined', '2020-07-04 18:41:47'),
(33, 18, '37.756480', '-122.418970', '5', 'Semfummub vu ce tu lan ti pockagon za epe nalukov riihol su.', 'https://via.placeholder.com/407x508/795/fff/?text=undefined', '2022-04-11 21:03:52'),
(34, 22, '37.748410', '-122.435040', '1', 'Couwe be rolfu ji fad uje cimoh dadekpez boowifa pobmi fazu peci zawif lacridi wi eski sahud.', 'https://via.placeholder.com/541x444/79A/fff/?text=undefined', '2020-10-22 00:00:40'),
(35, 27, '37.755130', '-122.491580', '5', 'Ovabarwu igicauv ivoinejo poni ucu zi nuso vid upez helsuttes zu utkinib vomufko utoluz ahe.', 'https://via.placeholder.com/494x438/59A/fff/?text=undefined', '2020-09-01 07:00:51'),
(36, 11, '37.795420', '-122.453240', '1', 'Se ler bendeh zurjo jalo usnopre fonipos keovewo motogweb sa mal rikus jehow paon hofrugo vaitu isa.', 'https://via.placeholder.com/518x537/398/fff/?text=undefined', '2021-04-18 21:49:41'),
(37, 1, '37.746220', '-122.462660', '2', 'Isbopjoj cobedeew nub domkomhu na esdo fuf bodoku ehual orihezzaz gu fonto enatal rovkirnij re woru oboawe.', 'https://via.placeholder.com/580x569/688/fff/?text=undefined', '2020-08-03 12:31:07'),
(38, 11, '37.813140', '-122.435660', '1', 'Nesub zasfepki sohav zice dulav fi jebwacpug ta vozes duuhimoz gak relkeve.', 'https://via.placeholder.com/428x409/9B4/fff/?text=undefined', '2021-12-10 04:54:40'),
(39, 1, '37.818730', '-122.434900', '4', 'Zejbuvsi odihic pev idtu zostik acat uteru lijdo os mef jaapo al.', 'https://via.placeholder.com/595x406/888/fff/?text=undefined', '2021-03-26 02:51:58'),
(40, 18, '37.776370', '-122.462480', '5', ' Jeskabe gansitas lojiza wumme lo ga pavrul rugrakok samciver liit rikvobru vefkume hehetfaf uh gamibka. ', '', '2022-06-09 04:38:13'),
(41, 27, '37.721890', '-122.426520', '5', 'Itu jipol lusi uresolaf bestab vudtawewe tamam taudasol nek efcucmaz ev wosivuk redragum ribucme kijir ovwoale.', 'https://via.placeholder.com/568x426/973/fff/?text=undefined', '2021-12-12 05:15:15'),
(42, 1, '37.803720', '-122.501820', '5', 'Lamfen udezufak jiku uwzego erber busjug gasud wel evewuh jiwefonup naiziha ruadowe jean nur bonpuam junwi.', 'https://via.placeholder.com/528x498/945/fff/?text=undefined', '2020-02-10 10:29:30'),
(43, 18, '37.769720', '-122.426870', '4', 'Aperacda vifkeziz onizezag ufnam ovomi jafvu uzihebu onve zojlap got foh cijzivdej is uhoizciw.', 'https://via.placeholder.com/397x415/364/fff/?text=undefined', '2021-04-28 07:45:30'),
(44, 22, '37.806560', '-122.414990', '2', 'Juc domzes pazmev eno po cuvo ijajer duobuz hehdan ewona bapo tolugga cava.', 'https://via.placeholder.com/535x362/396/fff/?text=undefined', '2020-06-21 19:40:52'),
(45, 11, '37.759360', '-122.382860', '3', 'Deguv feju vo kawi no capla bugungoh gun lesnizgu pob vezbeze beike wojfe.', 'https://via.placeholder.com/568x580/396/fff/?text=undefined', '2022-04-14 07:41:56'),
(46, 27, '37.778140', '-122.429990', '1', 'Wo rokesi urja tumto ti ama dafa hivos alav oki duumepe rojni dudeh.', 'https://via.placeholder.com/419x438/798/fff/?text=undefined', '2020-11-29 04:09:01'),
(47, 22, '37.793240', '-122.441560', '2', 'Tol cerup ti zi uga cesetwuc adrifu cuv ardid ebulonra vi vaeg hacjeze uka faljib.', 'https://via.placeholder.com/395x557/978/fff/?text=undefined', '2022-09-08 00:39:17'),
(48, 1, '37.732690', '-122.395370', '1', 'Ojdu juzatar giefa ekogojob fohwu ziuduli racpu telsocmuz ownabof upehidta hehmu gerta mow wedcok.', 'https://via.placeholder.com/544x582/85A/fff/?text=undefined', '2021-01-22 07:11:43'),
(49, 38, '37.771870', '-122.469980', '2', 'Dacguzuf muwud ag ce gew naus lufi simhi gufmono okoka zat niji sednomvu mapek hutpol mo hotkavmaf divejaem.', 'https://via.placeholder.com/570x576/65A/fff/?text=undefined', '2020-12-12 21:11:34'),
(50, 1, '37.797880', '-122.454140', '5', 'Iwfe nowok sicuj nuupe ru fu luptop umuzoj ak esopati cubonlom sij sebbaz bifehimu orgahle berakwin.', 'https://via.placeholder.com/514x544/547/fff/?text=undefined', '2021-12-15 14:35:00'),
(51, 47, '37.799600', '-122.479370', '3', 'Negus tiuwame teur tew laizu zok osganaru amoaz ilobacij sin cajman wodso unvo acmeso jonwodban ejo.', 'https://via.placeholder.com/530x465/675/fff/?text=undefined', '2020-02-23 16:15:53'),
(52, 29, '37.754970', '-122.475170', '4', 'Guffidhug puwu godboddi rozjuer jiet bil agu feh repuagu lioluti seluddup ob fiwe.', 'https://via.placeholder.com/418x454/7A6/fff/?text=undefined', '2020-11-29 23:30:25'),
(53, 39, '37.745070', '-122.507660', '2', 'Bataw zibkuf fetek fanaji hoh botog honiho pubifsu poawco obupojla muzdutah rugrufkiz.', 'https://via.placeholder.com/451x356/AB4/fff/?text=undefined', '2022-05-07 04:59:31'),
(54, 37, '37.729060', '-122.485240', '4', 'Kahmimmol ifu keto dilva setmig amaotaso ude pu pavbi fizakhi fimseid gavgijav.', 'https://via.placeholder.com/496x563/873/fff/?text=undefined', '2021-06-26 05:36:35'),
(55, 39, '37.812100', '-122.439290', '3', 'Vumu jarago cu wibfe tupbonela go nuf pagwusta badse jenpiazo jejbop teddi.', 'https://via.placeholder.com/515x520/B63/fff/?text=undefined', '2021-04-20 12:04:39'),
(56, 39, '37.776430', '-122.421960', '4', 'Mis ozuwamfo ijuji jadhideh kakuk lup wawli takja otujawwe omi ugame ute fu zaatso worod zoklup si.', 'https://via.placeholder.com/428x428/768/fff/?text=undefined', '2022-10-04 16:41:45'),
(57, 37, '37.776380', '-122.509580', '3', 'Sin komaz gusepwu sinadopi netuka johfe loz fina kav waol aklow gohwol re pegpirpin ve ezuduki.', 'https://via.placeholder.com/462x374/AAA/fff/?text=undefined', '2020-12-21 10:43:27'),
(58, 25, '37.801040', '-122.422350', '1', 'Fisku vouhaena pidegzud dijmawo cezwecar jemwiv sine kudobizaz ri ukolul azne sir epa luhefboh.', 'https://via.placeholder.com/353x420/989/fff/?text=undefined', '2022-04-11 18:10:17'),
(59, 2, '37.711570', '-122.512390', '5', 'Vo rire asiuga fapzu omaopcaz todon gedi bu ri raw ij lati fusde nizisap.', 'https://via.placeholder.com/356x472/439/fff/?text=undefined', '2020-03-05 05:40:19'),
(60, 37, '37.813640', '-122.425020', '5', 'Ce cukmir wule voacde uhacidep hafilek cujuddul buwoz ak redvujza uv ca ludo sozzomnic afozoliz vo.', 'https://via.placeholder.com/506x447/8A4/fff/?text=undefined', '2021-07-14 12:09:51'),
(61, 2, '37.724030', '-122.497040', '5', 'Zapebfuc jibha erumco tase zurohmu etiseuzo usiobo sipowu holiwwub jevhowcos no er mit wu doegipo.', 'https://via.placeholder.com/446x545/B38/fff/?text=undefined', '2020-09-29 15:23:53'),
(62, 3, '37.756070', '-122.507300', '3', 'Wubida puvse gilezipa jo nouris hepkevpud puliza dihapvep ki mu olu woom.', 'https://via.placeholder.com/523x468/867/fff/?text=undefined', '2021-03-13 00:55:54'),
(63, 39, '37.777990', '-122.454850', '5', 'Li vibman nan dow tano zafaro gedote bosew nelifi ajbem sehehzi jawzi bausdis.', 'https://via.placeholder.com/425x411/B6B/fff/?text=undefined', '2021-01-02 18:38:04'),
(64, 39, '37.773620', '-122.449500', '5', 'Huv juvpe da tim edi imvufo ted ejowi retom gituf ilu nifelvot.', 'https://via.placeholder.com/558x522/47B/fff/?text=undefined', '2020-12-03 11:51:42'),
(65, 39, '37.747130', '-122.446120', '2', 'Diponadom al ziolci gogeif ezeozosuj giut ka do konjihze kerjiljaj jonwov uce oba dugefme mattu mutugaj cu.', 'https://via.placeholder.com/595x500/548/fff/?text=undefined', '2020-10-14 17:36:04'),
(66, 37, '37.759120', '-122.411480', '5', 'Birma pi ori le borfinime zuz obunipli suiceed usafoz tin vib wihru felhom kotevi ziz.', 'https://via.placeholder.com/579x390/346/fff/?text=undefined', '2022-09-07 11:28:39'),
(67, 2, '37.724970', '-122.384250', '1', 'Ruilivu mu hehsihij nejkor laulde wuc vivelitu ab ik aksinbid munudcew divepadi hafci liribonuf nacuf.', 'https://via.placeholder.com/585x420/3B6/fff/?text=undefined', '2022-05-09 07:34:08'),
(68, 3, '37.794940', '-122.413540', '1', 'Widnicas aweje cuaz efpovon moage pajabi paeta ep ni gobieso sonvili apokamof raspo upmogtug hi hisiab uh benuwlo.', 'https://via.placeholder.com/469x477/953/fff/?text=undefined', '2021-05-30 12:11:26'),
(69, 29, '37.755330', '-122.480890', '1', 'Cok til ceg wibmah pataki sajemiz ufoacuzo pah buhpuk oleij zuzgegeh beopuved.', 'https://via.placeholder.com/521x538/657/fff/?text=undefined', '2022-01-07 00:37:12'),
(70, 39, '37.740580', '-122.459840', '4', 'Omho awges rug tiswamra biotobuk elhugso ziusuop fu dom omtebdi ijater nudpuljem luf campar okomalij cawcemgav ve.', 'https://via.placeholder.com/517x572/835/fff/?text=undefined', '2021-09-11 02:03:27'),
(71, 37, '37.796650', '-122.398810', '5', 'Ciir juvumi woh ma ziwnug bes wej olomiri jaapatic uso vefcarva napowwi.', 'https://via.placeholder.com/353x372/963/fff/?text=undefined', '2020-11-08 14:35:32'),
(72, 25, '37.790300', '-122.482740', '2', 'Pi achokju herob zum dol ijuafu hiisu devhafham nu dos hepic ipgum ofla nar did goihaw co deugo.', 'https://via.placeholder.com/350x376/935/fff/?text=undefined', '2021-04-04 05:19:42'),
(73, 47, '37.787580', '-122.506900', '5', 'Bekoj ejenowok sis besu tab pove vure zuj bectonol hulamali an hageok fanlenti si kafaru.', 'https://via.placeholder.com/510x364/8A9/fff/?text=undefined', '2020-09-29 00:48:22'),
(74, 29, '37.759010', '-122.472720', '1', 'Wucjura ecoava bu pa aka lij jegke hisjep eziepuohu ga bodoza favkawod nuccop haf maorigo zobebaz lavat ilezekrec.', 'https://via.placeholder.com/399x579/A45/fff/?text=undefined', '2021-02-09 01:58:01'),
(75, 29, '37.744800', '-122.442960', '1', 'Ihahuoh va oni tituwi otco juah is fohpa no ipanab azoehvu emruzbir oku ac.', 'https://via.placeholder.com/468x559/6A5/fff/?text=undefined', '2021-05-25 19:37:40'),
(76, 36, '37.796870', '-122.427030', '2', 'Du ku koz locgivno me ke kaegeihi sesbik ku imfusan rinus ecuejbe.', 'https://via.placeholder.com/534x563/AA9/fff/?text=undefined', '2020-03-10 05:40:06'),
(77, 44, '37.717030', '-122.491710', '4', 'Fovigvi zomi jugoklo cunuk tugec me ugalegit ro lihi egulof suhaslez gupusbe aro avietuomi.', 'https://via.placeholder.com/564x598/84B/fff/?text=undefined', '2021-10-21 04:07:11'),
(78, 49, '37.785890', '-122.356190', '5', 'Pibef cegi lavzaw cac nueta luwpiar udu jupeg evcimte losago dor viorowa fini ri uwikidwe ze.', 'https://via.placeholder.com/466x500/573/fff/?text=undefined', '2022-08-30 09:02:03'),
(79, 5, '37.783620', '-122.362540', '4', 'Faof nucokjap cop rifne mona povwam uracih ucopwez hu uzu ubucit ehu ruowfaz ocmomfa tudnibu.', 'https://via.placeholder.com/400x352/AA5/fff/?text=undefined', '2021-06-27 00:50:20'),
(80, 24, '37.741400', '-122.460500', '3', 'Hidhe dajrur od ug hu mi wulhet wim te wiz fadrut tipdu.', 'https://via.placeholder.com/515x527/BA8/fff/?text=undefined', '2021-12-16 04:42:38'),
(81, 17, '37.715310', '-122.380020', '4', 'Kijmonano molna ane hizow owivakic ciwopnic secuntu pom duvos niamenus nuca viba ej.', 'https://via.placeholder.com/396x559/6B7/fff/?text=undefined', '2022-10-20 16:13:47'),
(82, 49, '37.727030', '-122.496550', '1', 'Nes seg cib magocnov erri wabi ga oc apu gucul vu misal ov ruhfa.', 'https://via.placeholder.com/582x497/4B7/fff/?text=undefined', '2022-03-20 11:30:28'),
(83, 24, '37.716810', '-122.391730', '5', 'Mit ke vuga kurru rejozbin webeb fe sotevfiz afu miado kezuz nemwibtot lu.', 'https://via.placeholder.com/561x370/595/fff/?text=undefined', '2021-09-12 16:46:36'),
(84, 36, '37.743700', '-122.442780', '4', 'Ogna bewrufur edduh wonad upleb fogdijde zubbismeh mut kuel ri suw ler jujfop wat ovupun guwi.', 'https://via.placeholder.com/565x595/A63/fff/?text=undefined', '2021-06-21 19:39:51'),
(85, 17, '37.766560', '-122.398910', '2', 'Wonocupin juw hojnivka gaf ovoufren ipapozi izi rehguc laoteguc ceh mofi od kamacgun pi zumpav pog pujedi eza.', 'https://via.placeholder.com/438x538/656/fff/?text=undefined', '2020-12-29 01:43:42'),
(86, 24, '37.712260', '-122.414430', '4', 'Titceon can tisema idawifuk neteplo uswa or roab fafvalri vov fukobma re uctiraz.', 'https://via.placeholder.com/563x530/7B6/fff/?text=undefined', '2020-09-05 10:48:18'),
(87, 24, '37.770530', '-122.481550', '3', 'Kon lelobur zeh ocu le nem ne me fiuzopo evvic teraet mageuzo.', 'https://via.placeholder.com/369x510/97B/fff/?text=undefined', '2020-10-05 06:06:21'),
(88, 44, '37.730860', '-122.388010', '2', 'Tawkak doccod mil gapikfe iloat jelatcap jojtarwa odu ab zimu pen hu ge perfokgu faateba.', 'https://via.placeholder.com/356x546/4A5/fff/?text=undefined', '2020-02-06 07:05:24'),
(89, 17, '37.763590', '-122.423240', '3', 'Nucoma bodnam di nual li pis binroega iji losujoc padpuphof muza mubom feher.', 'https://via.placeholder.com/394x580/675/fff/?text=undefined', '2020-05-25 00:31:21'),
(90, 5, '37.795410', '-122.360700', '3', 'Ehonuac tifeci bifabi uh ze pef deojose fivoj obke ten tuefi av.', 'https://via.placeholder.com/382x394/B7B/fff/?text=undefined', '2020-12-30 16:09:11'),
(91, 36, '37.776610', '-122.437820', '1', 'Sebah zo codah go ulajo dehcoz mogfujbek kusipakiz za worunagoc lutoj kophiotu wekceh.', 'https://via.placeholder.com/552x551/8B5/fff/?text=undefined', '2021-08-29 08:29:13'),
(92, 44, '37.731140', '-122.493000', '2', 'Vizhodaf kamocke seur nuzdope usoguf algufon de com gef lo jumibav sisag uj hamochu kuci vomlohej fed.', 'https://via.placeholder.com/507x477/8A7/fff/?text=undefined', '2020-07-15 03:03:18'),
(93, 5, '37.760520', '-122.501970', '4', 'Uge per nezvasvic lijwuuno fonahil suuzac movuwpat ganaw nukamtik favaf sek subhied serafior relnof omudep.', 'https://via.placeholder.com/516x404/683/fff/?text=undefined', '2020-07-03 00:31:03'),
(94, 44, '37.799130', '-122.392060', '4', 'Hu uzdo vemisdu puguw fe ejuvi tojve efiuse luje ela tuz sepsep pezjidas.', 'https://via.placeholder.com/574x586/567/fff/?text=undefined', '2021-07-13 19:25:23'),
(95, 5, '37.811180', '-122.409250', '1', 'Jilko ubuuvimeh niercug hajupos boluh kov kiggibo zatra ti cic pol mo co pahdere ve.', 'https://via.placeholder.com/429x575/A68/fff/?text=undefined', '2021-04-17 16:43:07'),
(96, 49, '37.783790', '-122.368470', '1', 'Laan dadoler map nanusur titi doca uvujude hatkupo pi jojubmon jufi ubeeli dur kupcel uvu afibi puj pa.', 'https://via.placeholder.com/449x491/589/fff/?text=undefined', '2022-05-07 12:26:11'),
(97, 5, '37.804640', '-122.433970', '1', 'Sivo wifoltud gub isi semajluw sipil ikuvi mewkanlac declaj rispu ram wuotu ovi virumloz.', 'https://via.placeholder.com/469x402/6A3/fff/?text=undefined', '2021-01-19 20:21:43'),
(98, 44, '37.744130', '-122.381410', '4', 'Bok jejsas ovu om despuel no kahhasih ul ji ogduvce ofuonu temivul.', 'https://via.placeholder.com/412x357/643/fff/?text=undefined', '2021-01-15 06:46:06'),
(99, 36, '37.731040', '-122.357930', '4', 'Fizoc jaripu fohap wa guorego jaku fiwjufne fij fem it gi wor re sunzu zo piskodruz ifiivwa ku.', 'https://via.placeholder.com/539x596/A73/fff/?text=undefined', '2022-07-07 02:22:04'),
(100, 17, '37.807560', '-122.375100', '3', 'Hunomana feskante edme mece cofju donbate felgefwin vuhu rebdav pawdaz takuhalag fen je eljuz gumiro.', 'https://via.placeholder.com/449x587/646/fff/?text=undefined', '2020-07-23 00:03:41'),
(101, 13, '37.773930', '-122.443730', '3', 'Ne mug beapleh udafucmo usotozis icebi jehok li netuki siur wedibzi jagon wif ul udo.', 'https://via.placeholder.com/572x371/876/fff/?text=undefined', '2020-01-01 05:42:23'),
(102, 4, '37.767340', '-122.453540', '5', 'Bujre pinivfo tuhciwhe uvkik har vuhet zephug fab goplosa ju lusefak titowfi ad.', 'https://via.placeholder.com/439x440/946/fff/?text=undefined', '2020-05-28 03:01:30'),
(103, 18, '37.760010', '-122.457350', '2', ' Lu lirpatob ibpibbu izoc lit ju kowcik lowpinwal bici waaz lotunu ok ruc zi huwese vofenwo ge. ', '', '2021-09-20 03:12:13'),
(104, 4, '37.747620', '-122.496630', '1', 'Nop elale fa pupsu nekgop elfe vat voracu buis elecu kuz geho labhusvi.', 'https://via.placeholder.com/507x516/664/fff/?text=undefined', '2021-12-11 21:04:24'),
(105, 4, '37.783390', '-122.503480', '5', 'Oceizicel erupir kubiip geje bi vipu oz soppu pihacig ki muja dew ci fevguwsa.', 'https://via.placeholder.com/465x372/556/fff/?text=undefined', '2021-04-18 17:57:48'),
(106, 32, '37.720310', '-122.465250', '2', 'Wi zumed lut gesoz cusuci asefowejo elo gohdi ka ifu bogdijimu bowu.', 'https://via.placeholder.com/495x571/944/fff/?text=undefined', '2021-06-14 04:22:10'),
(107, 14, '37.763630', '-122.470990', '4', ' Nihmovme zorpilib kekgif zolu noir kib wa rohsete vosuhgu eju feslesta jedek koibicej. ', 'https://via.placeholder.com/440x376/A89/fff/?text=undefined', '2022-03-31 20:45:35'),
(108, 14, '37.792540', '-122.354440', '1', 'Wurwa elvu fifsik ra viiftib gaopiot kub cavi vub leihut godcaw zihtik pusto iz gosozfa pusef kiwe.', 'https://via.placeholder.com/469x386/373/fff/?text=undefined', '2020-12-14 23:54:48'),
(109, 14, '37.785770', '-122.446100', '3', 'Rawotek zunzilnip ikzoku cirnodu giajo furi ke cabakva wu rihwelet rago tehok caligab goosofi jawgoos.', 'https://via.placeholder.com/537x371/393/fff/?text=undefined', '2022-06-29 09:13:10'),
(110, 4, '37.764270', '-122.370180', '3', 'Ro daade dukogrur jiuse rompoabe soc ol nuswu azwe sig pomo va nukiblu.', 'https://via.placeholder.com/569x548/A38/fff/?text=undefined', '2022-03-25 03:57:10'),
(111, 13, '37.773330', '-122.418880', '1', 'Insumri ajlogjop ozugbop buet wifune punjucu emnevezo halu uzahun ajomiba vocithu wifza hi vaz opu bepva jutra imezir.', 'https://via.placeholder.com/580x429/A94/fff/?text=undefined', '2022-09-03 05:41:44'),
(112, 32, '37.723850', '-122.478460', '5', 'Mitaeg di beedari onteage jihas hunka hi taro famnisij munuf ehvo zih no luwaz apiozi.', 'https://via.placeholder.com/370x372/AAA/fff/?text=undefined', '2020-05-18 06:57:49'),
(113, 4, '37.804870', '-122.425210', '1', 'Gofbotfaj ruk en hiljohi taodjel zo hojok gud ummojguw efafuciv je sid atdap.', 'https://via.placeholder.com/350x495/B86/fff/?text=undefined', '2022-07-19 07:56:15'),
(114, 4, '37.802450', '-122.392720', '5', 'Em racro du co nutde pes ic volejze jalvukge hesiwji rek malci neripije osuikjar andes vadot nor ojokate.', 'https://via.placeholder.com/437x463/AA9/fff/?text=undefined', '2021-06-28 03:59:25'),
(115, 32, '37.735910', '-122.409920', '5', 'Zetic dagfen pi huzezaj wujabnam egrubul daghorula ga fublitsuv idtu puf cal dusfus ajwehfom cedahni tuzutu wep we.', 'https://via.placeholder.com/353x366/768/fff/?text=undefined', '2020-10-08 11:16:43'),
(118, 32, '37.804560', '-122.474330', '5', 'Ipe zivuhenu venu cucpu aw fij kihgu tuez fif bon ja ponefak to kefigdut fuohosu goptud jukweeka.', 'https://via.placeholder.com/488x354/557/fff/?text=undefined', '2020-04-16 20:23:39'),
(119, 32, '37.757120', '-122.380070', '1', 'Kidjodrub obean rouf wewe kow iwjo sezeisi ralisev lozut of sudujejo imkuzfa etrazuma heop vagovac zuk.', 'https://via.placeholder.com/529x376/758/fff/?text=undefined', '2021-04-02 20:04:16'),
(120, 4, '37.753760', '-122.362980', '2', 'Libpa uzi tindudim jedtu ikogle pukice hudegu piti unvosbe sin ovuso kar naletu nacju mi ih.', 'https://via.placeholder.com/354x467/97A/fff/?text=undefined', '2021-08-21 07:21:54'),
(121, 4, '37.805890', '-122.451660', '3', 'Do sotaw sakzijaj ci hab nopoh mic dob wemhisic luita lohancuw jokle laze ek.', 'https://via.placeholder.com/575x427/AAB/fff/?text=undefined', '2020-01-21 18:41:18'),
(122, 13, '37.732150', '-122.414790', '1', 'Ileta hi uka tojpidvog muose jessofih luv raged uwo zewovovu lehlev umuhic zikuto vug tanjitog jihini niguge sisnegjed.', 'https://via.placeholder.com/490x471/48A/fff/?text=undefined', '2020-06-15 19:16:51'),
(123, 32, '37.798100', '-122.459700', '1', 'Hosta umi siseli zunisruw vis gamezem kodifa hup lijrornav vo kusu no gik zu zol tiv tikmuh.', 'https://via.placeholder.com/519x434/4B3/fff/?text=undefined', '2021-04-30 12:02:14'),
(124, 13, '37.746860', '-122.412780', '5', 'Terhafrog uso nonowo nuul jinros rinu bul olapi ze obavigit of zokesnu caf biwiegu fogutce wihetu wazli.', 'https://via.placeholder.com/501x553/B64/fff/?text=undefined', '2021-11-16 18:53:45'),
(125, 13, '37.742860', '-122.465110', '3', 'Efvijzo lokpit ehotigjak lerab veova pakiaw saw bijod babi riro pazfi zo omow pugmu ke mabatpo rej su.', 'https://via.placeholder.com/528x488/ABB/fff/?text=undefined', '2022-04-22 08:40:42'),
(126, 41, '37.773970', '-122.497830', '5', 'Revtodma uguoj uma osa nusi walecu opoti egakohdij ej ursutu fo moco micba maekgab.', 'https://via.placeholder.com/541x567/585/fff/?text=undefined', '2021-02-19 20:09:35'),
(127, 48, '37.776460', '-122.439110', '2', 'Bi uzimican labo ab osropmo tivmopvu ucemukuw fivbum belegol nal hordufuh cochebsa kowilvep derepib mezbowot.', 'https://via.placeholder.com/576x406/874/fff/?text=undefined', '2022-10-27 23:05:10'),
(128, 48, '37.773460', '-122.476080', '4', 'Cicecvo sidro ziz ji ho jopocja eruliom voaheod pi eni bufif jirbiziz dauma wa ocvowug deur go.', 'https://via.placeholder.com/582x507/667/fff/?text=undefined', '2020-01-15 23:43:41'),
(129, 48, '37.773220', '-122.393600', '5', 'Fevowmup zecnoso al gom bow sin ah ricete ivozeur vuilimi raoju aro kav.', 'https://via.placeholder.com/460x433/84A/fff/?text=undefined', '2020-04-01 23:23:03'),
(130, 41, '37.730640', '-122.425230', '5', 'Gek ijacavo cuhpodira vuzi uwjo epo ji ciw leuma tezovwoh fub newowefut hujipcec va.', 'https://via.placeholder.com/438x366/AB6/fff/?text=undefined', '2020-05-15 08:43:33'),
(131, 41, '37.803300', '-122.409110', '3', 'Tapzoihu afaire emcoz ibjobbup sangu golim koici wodjozne foncarba kagsafsi su ev feri.', 'https://via.placeholder.com/458x449/763/fff/?text=undefined', '2022-08-07 17:22:24'),
(132, 48, '37.719400', '-122.415160', '1', 'Ta ha vo cepde cirjivota umvi japauzo wojap ror oczetaz vi huzevo kanoc nuj udabow.', 'https://via.placeholder.com/523x404/48B/fff/?text=undefined', '2020-07-08 11:34:58'),
(133, 41, '37.785210', '-122.470350', '3', '  Siume taddid li zen cihituj muc gu sasi molefodad laf dodak zolfutu ihu bipgip ojdin dab evaluboc jecefi.  ', 'uploads/1669930275.8116_316737934_630263425506358_1531160023970836226_n.jpg', '2022-10-09 06:56:43'),
(134, 41, '37.775360', '-122.358180', '2', 'Biol pa lit deh un safhacu lus cofferib ivukuij mubnawupo vuvforled mefag nuciza um.', 'https://via.placeholder.com/541x422/963/fff/?text=undefined', '2021-10-20 20:01:22'),
(135, 48, '37.812080', '-122.510400', '1', 'Ciori mocvah pitra ogalaipo zu jinpihi raiso se nik bineh zi ovegete gusadudi tiemo vunfil naomiw katsa tiv.', 'https://via.placeholder.com/510x429/B96/fff/?text=undefined', '2022-08-30 14:33:36'),
(136, 41, '37.788290', '-122.452210', '4', 'Kom liwloeru hunbewo hial gobzaaw gat gu saz ruz umocucpuj niti vi wureg tosoc ucicuv rezid zis.', 'https://via.placeholder.com/473x368/5B9/fff/?text=undefined', '2021-10-04 19:28:06'),
(137, 41, '37.779420', '-122.365610', '4', 'Fisunve kun souneco wiim un juhanikic wujlade utjatje tikdaosi if mitoli nit uhozejno.', 'https://via.placeholder.com/402x594/66A/fff/?text=undefined', '2022-01-23 07:56:12'),
(138, 41, '37.769890', '-122.394970', '1', 'Cum pewap horila retep ladhahsap pi akro bi sahowa ukonune nuhmel hazukur cike lotmak doukna ki zag.', 'https://via.placeholder.com/590x553/B96/fff/?text=undefined', '2020-01-19 22:16:04'),
(139, 34, '37.748410', '-122.379820', '1', 'Wowifi wit cehu zu akujehmel hu ecpu abu foz sun wam mohuz tarke wohuj irirudo.', 'https://via.placeholder.com/575x422/733/fff/?text=undefined', '2022-09-03 00:12:06'),
(140, 48, '37.807020', '-122.472660', '1', 'Gop ze fecgupa ubawelac nirfav bi mazkiini unewca mukwumki invudge uwijwej olaasu purur.', 'https://via.placeholder.com/568x360/AB4/fff/?text=undefined', '2020-08-02 01:12:28'),
(141, 41, '37.807200', '-122.374150', '2', 'Hu azila laag ropepcu op gabafe debga adfom fu tarzibah gadeca mudtihone morbombo isujuala ga jiuc.', 'https://via.placeholder.com/586x463/3A9/fff/?text=undefined', '2021-06-06 02:33:20'),
(142, 34, '37.792360', '-122.505560', '1', 'Lozuzit oh teipe kociza powig moc cutow guvto catburim obvaw igiwo modojepi viki ihdo ja jozse onno buv.', 'https://via.placeholder.com/407x417/A5A/fff/?text=undefined', '2021-10-14 06:36:45'),
(143, 41, '37.798580', '-122.387220', '2', 'Pi umaril ovuci uwut mukozal daco fisah aracamoj libtik gi ofe rip laoganes teava fiwlu.', 'https://via.placeholder.com/531x503/A74/fff/?text=undefined', '2021-07-07 02:45:02'),
(144, 48, '37.753440', '-122.434530', '4', 'Utuba wejid zuje moefa ufowumaw pucmupavu rehon jirguka kuz ubmek ju tekug deone tahawebip ed zitzopheg geni hep.', 'https://via.placeholder.com/383x522/767/fff/?text=undefined', '2021-07-20 04:31:38'),
(145, 34, '37.730670', '-122.437930', '1', 'Foremte gi wafuf jehuw secaben fa hurkapiz jaso mu iseseku anvo ojifusa ti gatofteb gorcavunu tafsu.', 'https://via.placeholder.com/385x474/435/fff/?text=undefined', '2021-06-03 20:52:41'),
(146, 48, '37.761030', '-122.417430', '3', 'Ca te dakim am lahus bofabwit wopce noh naekiviz buemo iw va dacrezeh nisa ca keb wo noice.', 'https://via.placeholder.com/360x377/9B3/fff/?text=undefined', '2021-09-01 02:30:23'),
(147, 41, '37.761480', '-122.360430', '3', 'Packege hinimmop ihacu ne nohemem bekoov kiop zub jalo fozehboz of vaviwsim abzi hichewvi fanpahma lieru dezuske.', 'https://via.placeholder.com/354x471/978/fff/?text=undefined', '2021-08-25 06:56:41'),
(148, 48, '37.818810', '-122.438720', '2', 'Asmebvug ginpu ak ku sarvidec eboburapo jeuru wiure azo dot cug co ladmajdu oh liforse erhud zacaghij wovkewac.', 'https://via.placeholder.com/447x478/674/fff/?text=undefined', '2021-08-05 16:35:04'),
(149, 41, '37.727130', '-122.490810', '2', 'Huvcemab epi riwu huri igsutleh matel ruabdef ervol silbih nobupce og gitnu lurjeduw jigez zugato sagufu.', 'https://via.placeholder.com/391x540/7A4/fff/?text=undefined', '2020-04-02 16:18:49'),
(150, 34, '37.720090', '-122.476880', '5', 'Dislamton agu cejajemo sehu uku rakbut wicli wot vegu leh bipka donnieca rucoj ehezesko wadoasa vobjujcid.', 'https://via.placeholder.com/491x527/779/fff/?text=undefined', '2020-11-24 22:38:32'),
(151, 40, '37.810720', '-122.420710', '3', 'Tonfufbuz ikrah uzienedan daota osa rafbo obawo miip ceh badco copodke calo ik wew.', 'https://via.placeholder.com/582x576/B48/fff/?text=undefined', '2022-01-09 08:16:30'),
(152, 26, '37.785400', '-122.461370', '1', 'Ma rotalta ciloenu zuhrekaz gav fejet raize uha awrelil uj uvwiv lumiptuf cimzoju vif duzomje fohso cug.', 'https://via.placeholder.com/587x361/479/fff/?text=undefined', '2020-01-30 16:49:12'),
(153, 40, '37.810290', '-122.484520', '2', 'Nipuj su okiagwa la fawco gahwis rod areto pawjom capumtos lurlek cunlonzih obwavmen donoco git pidnur.', 'https://via.placeholder.com/503x434/798/fff/?text=undefined', '2022-04-17 14:03:57'),
(154, 40, '37.742170', '-122.397790', '3', 'Ofeeju kalo lo vejni zuscuvuc cemamku zidovre rica aki ahujajos nunhide kihamuke.', 'https://via.placeholder.com/435x405/97B/fff/?text=undefined', '2020-04-06 23:31:28'),
(155, 42, '37.778610', '-122.414100', '5', 'Gan baw zekubli timov som detruwvaj tirvof ka ursud wa dunzok kittumdik ditlite.', 'https://via.placeholder.com/478x386/34A/fff/?text=undefined', '2022-08-09 11:54:46'),
(156, 42, '37.714630', '-122.507590', '2', 'Juwjuj vec hiboow foj uzeduj kocpefujo anijaro bigo kufkib zorbur ufube ripe pecmip pi kujuluru dawgu oto.', 'https://via.placeholder.com/374x430/6A9/fff/?text=undefined', '2021-09-23 06:11:28'),
(157, 26, '37.721920', '-122.507770', '1', 'Lemjik wokhe uzalewcij ge jemef ehuva fapigow ronecne wehoddec ka lozozmo lo ri de hok rilga ef.', 'https://via.placeholder.com/403x554/3A8/fff/?text=undefined', '2022-09-29 14:35:26'),
(158, 42, '37.725860', '-122.496720', '1', 'Uwi momegupi wuzocohil nadibilon uberaveh dipur gem gisgo ukhupula celu ilzizu moteb.', 'https://via.placeholder.com/393x595/9B9/fff/?text=undefined', '2021-01-14 07:15:31'),
(159, 40, '37.731250', '-122.449980', '5', 'Aperu ajji ahego hov hibu beeb ra lolud hupusov nec cukachi ir ja ca ko.', 'https://via.placeholder.com/559x596/677/fff/?text=undefined', '2020-06-17 08:09:01'),
(160, 40, '37.752570', '-122.421460', '3', 'Wadboz lo ofimirto rokravguv jisuf hoziba izraho jagi hu idlim bijier ruesvet sij gigoice he bahiwu ojuadbab si.', 'https://via.placeholder.com/531x366/3B6/fff/?text=undefined', '2021-12-12 02:01:24'),
(161, 42, '37.781180', '-122.450050', '5', 'Bif ce ultu az vijpegu to ficaja jahnuuw genjagvek banore ah disparbu rif abalih.', 'https://via.placeholder.com/370x512/3A5/fff/?text=undefined', '2020-10-21 03:37:26'),
(162, 42, '37.817540', '-122.412500', '1', 'Vojaktut kive pa enkiogu amah va zas nifu fefke hu komgokdic viiv pakuwna.', 'https://via.placeholder.com/546x454/458/fff/?text=undefined', '2021-02-18 01:36:52'),
(163, 40, '37.760990', '-122.490590', '2', 'Vo nukaf erke aw ba konik but un goulreb fo epa vedupfu cubvilot affig sef numi.', 'https://via.placeholder.com/544x467/453/fff/?text=undefined', '2020-08-04 07:12:56'),
(164, 40, '37.721980', '-122.422910', '2', 'Inow weguacu luc uv nu evizu bu gef bez lo osjit igkunbit.', 'https://via.placeholder.com/354x454/A77/fff/?text=undefined', '2022-03-18 18:31:36'),
(165, 26, '37.777640', '-122.448160', '5', 'Olri javwozac lag semus tiacego waklipmi zoh ukgu sacog lekiwhiw so ehe cebimdi alvorat usibazvaf tetezzol seh.', 'https://via.placeholder.com/501x444/765/fff/?text=undefined', '2020-05-18 23:47:13'),
(166, 42, '37.722370', '-122.494070', '2', 'Sidowem banuh uflodin gapaw rusaca gufcirvek buk fijo cesfan ad atu ku maczoh.', 'https://via.placeholder.com/454x438/B38/fff/?text=undefined', '2021-06-17 03:02:26'),
(167, 26, '37.742200', '-122.387480', '2', 'Wo rule cic kenpedis jekrubu numamsed cat ozunenuc ronwoved gagriv ugijo ruz zugesev.', 'https://via.placeholder.com/568x524/433/fff/?text=undefined', '2020-12-09 14:09:46'),
(168, 42, '37.785970', '-122.436280', '3', 'Fo coem run wiwri lioz guvag toli lajusvip mualru guddevaki suno uwe rum onivola jej zogsi lihi to.', 'https://via.placeholder.com/524x565/935/fff/?text=undefined', '2022-11-03 16:45:19'),
(169, 26, '37.784780', '-122.470870', '2', 'Momar anrov wazwoima de comug tiwiregi gugguhmub leoh itzefvuh ki hewvujuwe goseuz ulo ok tirranza suvideg uf.', 'https://via.placeholder.com/419x442/B35/fff/?text=undefined', '2020-12-26 18:47:34'),
(170, 26, '37.762420', '-122.420760', '4', 'Akeebeji ziso ceji pune tacewmi bura uk tude fe pakgir jicariluw abvi uwoid rapuzen ovo wal tevga daoz.', 'https://via.placeholder.com/533x351/543/fff/?text=undefined', '2021-08-27 20:11:38'),
(171, 42, '37.788270', '-122.367720', '1', 'Roju zutjaga zis pat ovvobsuz atevu ranwoipa tekterez dobhe fulduwim vorlew diwan fuaf ketwal gepbot cirajmal.', 'https://via.placeholder.com/431x494/978/fff/?text=undefined', '2020-08-30 19:25:09'),
(172, 40, '37.798060', '-122.459340', '1', 'Go lowre ih hejefe oraen canetual ga daf poov vatusah juk jo cipeud foubriw jouz wu numej.', 'https://via.placeholder.com/388x522/844/fff/?text=undefined', '2021-10-01 22:45:34'),
(173, 42, '37.743440', '-122.361780', '2', 'Va di veh unudu soazupuk tulfa liwcar zu oki vicafe incenag vinhocek nu vo gumakudaf.', 'https://via.placeholder.com/502x489/B94/fff/?text=undefined', '2020-01-20 09:40:54'),
(174, 42, '37.745260', '-122.453750', '2', 'Ewvurgal sip fejrufhe daoze saso ju musno da lufsar odu uw ev awagec tawjeca.', 'https://via.placeholder.com/426x582/B8A/fff/?text=undefined', '2021-06-01 15:24:26'),
(175, 26, '37.751700', '-122.406740', '4', 'Welsesuj uzi fo lud wi wa in sefafe et kir jihpa zusolo bokma aniwurrug ravobopuc.', 'https://via.placeholder.com/433x546/889/fff/?text=undefined', '2020-01-29 15:21:16'),
(176, 16, '37.745070', '-122.488930', '5', 'Sigeriki joj mosubaf teuw cewlewa hila um gedi ugu uk epujomuh umro velgim dobjasdev nahsaho joke hafugiju hat.', 'https://via.placeholder.com/572x431/7A4/fff/?text=undefined', '2020-07-15 00:28:20'),
(177, 31, '37.735480', '-122.453650', '5', 'Debkupab epluva lih cawgolek jan kawne jeve gefzog pis jon nezfo taljor ili kol cav.', 'https://via.placeholder.com/470x360/479/fff/?text=undefined', '2021-06-05 20:24:00'),
(178, 31, '37.756390', '-122.421440', '3', 'Vav per dezuti ulejovud wot azapiluh wadgok hushukjo iw cej boik dicuasu cak.', 'https://via.placeholder.com/399x521/358/fff/?text=undefined', '2020-01-27 19:52:38'),
(179, 31, '37.801440', '-122.456340', '4', 'Wa wowot pa sej jab bidit gar ebzew gahmapdil ruowkos nufus furegap.', 'https://via.placeholder.com/501x414/446/fff/?text=undefined', '2020-06-25 13:31:35'),
(180, 16, '37.719700', '-122.357460', '4', 'Zorjahu zoudo goiwe jikip sewarum pikecga ucvas wuw rufadis mirrorpu gat redoj oni wueti utiivu fu hu itofucwuw.', 'https://via.placeholder.com/507x510/844/fff/?text=undefined', '2021-05-28 22:03:48'),
(181, 33, '37.789480', '-122.359280', '4', 'Jujhulha webga jus gufra ko kasat jaje giganza tairefat puvbuj wi zaceso.', 'https://via.placeholder.com/548x394/365/fff/?text=undefined', '2021-01-29 10:29:45'),
(182, 33, '37.752310', '-122.473670', '5', 'Obi etwok vomi run vaknud titeheigo leviw no ti hi utuetisa goko numredev.', 'https://via.placeholder.com/402x505/A74/fff/?text=undefined', '2021-04-12 04:05:11'),
(183, 16, '37.814190', '-122.453220', '1', 'Wemi ur vocvo kitgo tikugjef ma tecoslip ekmu leter fuc ed obulabne sonsip ozpemowa ojrif vavih.', 'https://via.placeholder.com/575x543/AB9/fff/?text=undefined', '2021-08-27 06:38:59'),
(184, 31, '37.771450', '-122.419420', '3', 'Topkudel zawesvak zad vakonnil akurose ponizo jafbizop bafibnok nimfez ugi konukve jagaruwen av.', 'https://via.placeholder.com/555x451/537/fff/?text=undefined', '2022-07-05 10:57:28'),
(185, 16, '37.775860', '-122.458300', '3', 'Mulictu soje pirmidha vonib wamasa uwcaab cep fadu dubu odse sezsaten uhuow mar gepob veujma temanidu.', 'https://via.placeholder.com/502x459/B77/fff/?text=undefined', '2021-09-09 11:19:50'),
(186, 16, '37.759500', '-122.378050', '3', 'Pokfid vigfafko let ip eb cutocigud iflugtaz palavo fo asa siwihah sofdi webvo lodoticoh kep tipospo hane.', 'https://via.placeholder.com/381x536/438/fff/?text=undefined', '2021-09-05 15:29:18'),
(187, 16, '37.749250', '-122.470330', '1', 'Daig junormu ceasu el sek ji hu ur pimaipu mo usi pir ogoja tepaehu nabihfot.', 'https://via.placeholder.com/367x422/6A4/fff/?text=undefined', '2020-08-05 22:21:52'),
(188, 33, '37.801190', '-122.433040', '5', 'Aroguk bontirit va lonapcoc dumajo tu num vuvhema sirgak tetlibuh cugzubhiw ho.', 'https://via.placeholder.com/454x362/A88/fff/?text=undefined', '2020-12-10 08:37:11'),
(189, 33, '37.723670', '-122.498900', '1', 'Vu zac keupiv ar dowumasij luvab lew luma sa ke ik ordoce suut bicuisu zedo.', 'https://via.placeholder.com/467x395/699/fff/?text=undefined', '2020-11-20 13:32:59'),
(190, 31, '37.753990', '-122.449590', '1', 'Ber nolre cuwsovli dora dugum fizug soj fibkozcib kowomim jupoge ihe jijsuzo gonbowo pob decet.', 'https://via.placeholder.com/461x464/A79/fff/?text=undefined', '2021-02-13 02:26:12'),
(191, 33, '37.787760', '-122.511410', '3', 'Led ba lofpem sepsa nojhajuh feka kup fuki cijiffev vourpid jozsoek rur dapobjoj tu ganugge.', 'https://via.placeholder.com/498x363/763/fff/?text=undefined', '2020-06-08 15:20:44'),
(192, 33, '37.813950', '-122.472040', '4', 'Nopozi taji edehursan dozuse kil uhuoge uhigafa joajmeh cupoce mupfe ubutu wenwov in.', 'https://via.placeholder.com/513x415/A43/fff/?text=undefined', '2022-11-01 15:42:35'),
(193, 33, '37.763860', '-122.392180', '1', ' Kaz123456og in aj ilogiog singu pojpabe let ra cekmol hiev pas culhi cuud osi bilapru tag jipsidu ga. ', '', '2022-09-01 23:47:06'),
(194, 31, '37.793080', '-122.362520', '5', 'Ev hasja kitenrag fu zabu luthap segigiz gihuj zo mufuho bi neaj towori ka ufotitzeh tudpa ejnibab azbo.', 'https://via.placeholder.com/552x523/79B/fff/?text=undefined', '2020-07-01 12:38:52'),
(195, 16, '37.764220', '-122.383370', '1', 'Fa nuzahim hi nanepuci fit pool musi ga calulel wupelgog bah komud ni depzeumi go.', 'https://via.placeholder.com/550x350/838/fff/?text=undefined', '2020-10-25 22:20:15'),
(196, 33, '37.731400', '-122.488780', '5', 'Owalu gebalev nuivi kozsedsud necub oj minzur du heaku cowug piv ururwut uku.', 'https://via.placeholder.com/469x479/566/fff/?text=undefined', '2021-12-29 14:24:49'),
(197, 33, '37.780340', '-122.399760', '4', 'Po kamef vehomlur jo fe bebeke aszolso sobbinu loletme kolit vogpihko umjeoko pogjecam fupgapedu.', 'https://via.placeholder.com/597x376/888/fff/?text=undefined', '2021-05-02 15:02:51'),
(198, 33, '37.719230', '-122.493290', '4', 'Va nu ro kursirovo solva apuf do formi fiba mo roolves utzu beotujud padbizzog.', 'https://via.placeholder.com/393x478/479/fff/?text=undefined', '2022-02-28 07:13:00'),
(199, 33, '37.733780', '-122.397330', '2', 'Duab hiuned reeb taiz si udocu piw biz wowa golon terebuc sez fulohsu macrer lulvizupi ebopil evepuvtod ekacujo.', 'https://via.placeholder.com/385x483/B48/fff/?text=undefined', '2020-05-31 19:55:30'),
(200, 16, '37.723240', '-122.412190', '5', 'Firhu zipi cemibe bovati cab banugadu nupnum kijoila sagbo toj coca ijala nuv zos sem ijneboh tezwofos ke.', 'https://via.placeholder.com/407x442/4A3/fff/?text=undefined', '2021-05-17 07:45:37'),
(201, 50, '37.764100', '-122.507630', '1', 'Hoziru rafuf vebobu tem hot bebme dihiza ki ic weip vafu pal iwobew aczih jaruhew oli foj.', 'https://via.placeholder.com/568x554/B69/fff/?text=undefined', '2022-08-08 11:01:59'),
(202, 50, '37.760070', '-122.355430', '5', 'Jimbed daram te lis kudca unubo pafefnav picokuc deda juhzaret hogho babitev coen nodlufe daz he.', 'https://via.placeholder.com/450x577/A5B/fff/?text=undefined', '2022-04-03 01:43:13'),
(203, 9, '37.808190', '-122.447010', '1', 'Cu wedbifle peris dunde lauhujaz nuatjuh nefidiha zet se ba zijloalo usbud.', 'https://via.placeholder.com/592x480/A53/fff/?text=undefined', '2020-01-05 21:33:16'),
(204, 7, '37.796200', '-122.406500', '3', 'Nifoj he wif ohiwokri fite bagsul ku comso rew lovajo wafep toebu voleze nuv lo savwube diirwi.', 'https://via.placeholder.com/351x564/B7A/fff/?text=undefined', '2022-04-22 19:00:06'),
(205, 28, '37.796640', '-122.383880', '2', 'Woved kade uwutak tor nitle jivnugmos esefuglid apihatpoc kivula kel jen riza na gulap.', 'https://via.placeholder.com/527x596/6B4/fff/?text=undefined', '2021-06-09 02:06:55'),
(206, 28, '37.775010', '-122.444420', '5', 'Anama we coldapo codedo hubpepzo ur wi ewi zelmubsar culis buptow fi udozosef jerpihak.', 'https://via.placeholder.com/555x400/A6B/fff/?text=undefined', '2020-02-21 03:35:07'),
(207, 7, '37.813700', '-122.379650', '4', 'Beblone ta hev oresar cijijzaj cet miwhuhobe cibujpeb uwo foh he rurejom gambiol dug ilbijfov uhcatnew.', 'https://via.placeholder.com/499x390/638/fff/?text=undefined', '2020-12-09 07:50:28'),
(208, 28, '37.744990', '-122.445130', '2', 'Lih ve tofodase gifjera zajegi feijves log or namiobi zag oru di wu bukhuga ahdafod.', 'https://via.placeholder.com/594x440/659/fff/?text=undefined', '2022-04-21 15:09:54'),
(209, 9, '37.816760', '-122.371030', '1', 'Doove za uwefu zel od soca vir remhiken welar kel mo bezotuatu agewulbo.', 'https://via.placeholder.com/531x468/A3B/fff/?text=undefined', '2021-03-31 16:37:46'),
(210, 50, '37.731370', '-122.362970', '2', 'Ohup zol vifmogon tog huruzu zez raheb cidtek ma gaziode cabu fedam delu uc atew mimeczu ce wotjabrak.', 'https://via.placeholder.com/518x571/64B/fff/?text=undefined', '2021-04-29 08:48:56'),
(211, 50, '37.731320', '-122.380030', '1', 'Ak wu lud carug vo faj rocpo gegufric ke ehi ug toefazov copomu.', 'https://via.placeholder.com/591x549/766/fff/?text=undefined', '2021-11-16 11:10:27'),
(212, 7, '37.715230', '-122.487430', '1', 'Kussa jezeg tam zew cafteah jivosbur coihdu cifni mu le ap bo lat owowar ebo debewimuj efle.', 'https://via.placeholder.com/534x419/6B6/fff/?text=undefined', '2022-07-16 06:21:38'),
(213, 7, '37.740170', '-122.476440', '4', 'Wokapi oti wuave olo elu ju sonof vis fu eniriv mib edamo.', 'https://via.placeholder.com/472x565/6AB/fff/?text=undefined', '2022-11-04 07:33:43'),
(214, 50, '37.794980', '-122.421340', '4', 'Pettu ehi juroh zam meraju wavodo luhjumbi wu cofosat foj par updeul.', 'https://via.placeholder.com/573x526/475/fff/?text=undefined', '2022-05-24 22:28:38'),
(215, 7, '37.817180', '-122.435020', '2', 'Tair moli suake bisi cin vipaob pinojoh gezalawi et sobosco at uv vefogne kucicva tumlif.', 'https://via.placeholder.com/416x466/783/fff/?text=undefined', '2022-08-21 08:01:38'),
(216, 7, '37.753840', '-122.374750', '2', 'Up vider piguh jufah hopu pipe tancawu cew uswikahe buhus taphokura jubluba bedlujize copbimdi dop efrulge udobod.', 'https://via.placeholder.com/559x466/ABB/fff/?text=undefined', '2021-12-25 00:16:21'),
(217, 9, '37.799180', '-122.456760', '5', 'Az ajijzi tih vovfufse ik be fewlagzo biviven son uw etabur jigupnut fev.', 'https://via.placeholder.com/461x534/643/fff/?text=undefined', '2020-01-19 17:03:45'),
(218, 45, '37.726500', '-122.370300', '2', ' Vetzofe gegsak hedivihe alenavha awgi da sushuko cemas se cuejik juzegefuf gime ci ja kujjow hoatakuv pihemsiz nukasi. ', '', '2022-11-04 13:10:19'),
(219, 9, '37.779050', '-122.401480', '2', 'Hefnuzep dutbupaw gorer dotcovgiv dukal ufnenel tofi pab aftij zom omtudibi sil ofa.', 'https://via.placeholder.com/352x465/786/fff/?text=undefined', '2022-01-28 07:15:21'),
(220, 7, '37.787360', '-122.391800', '4', 'Bemteila pigazen om sagsefo anvepug alrentab upivge ribapkur kanad ijtinul efu sokuha cudemi zuuhouv onfo ew.', 'https://via.placeholder.com/362x408/94B/fff/?text=undefined', '2021-05-27 02:22:49'),
(221, 50, '37.758540', '-122.431850', '5', 'Ihuufog nik savacu ciaguuba hukildog uzcewo ba vo kevopu lilsilti hupat tuebi on miaci topez mir onewilfi.', 'https://via.placeholder.com/405x463/795/fff/?text=undefined', '2020-10-26 16:34:03'),
(222, 50, '37.773610', '-122.429170', '4', 'Javmif uku kokesoz jifsobira azo hojrem te evuko ap cafu hus duk gif.', 'https://via.placeholder.com/489x369/857/fff/?text=undefined', '2020-11-16 14:25:48'),
(223, 50, '37.734020', '-122.387620', '2', 'Peev zib jaj wuj detek parju utikunij midde sur ufe cawler tih hi newdomak fafdeba ov to fe.', 'https://via.placeholder.com/452x389/855/fff/?text=undefined', '2021-03-06 22:34:50'),
(224, 50, '37.780210', '-122.454070', '1', 'Igonipije huflajto mocescaf hul bem absovtug fejcoj sujluno zurijja ifora fufacut eza natop cu.', 'https://via.placeholder.com/589x445/7AB/fff/?text=undefined', '2022-03-15 01:23:14'),
(225, 7, '37.784390', '-122.491190', '3', 'Doonri baesde pizar ekaale fisufe guh zo compi mu wacdowo vu mob uhditze cukkovehu mew.', 'https://via.placeholder.com/529x525/656/fff/?text=undefined', '2020-08-28 20:22:04'),
(226, 6, '37.772130', '-122.410890', '1', 'Vozed capusuvof owizem vu oskoza puncap jesajata lu fu nizpik otu vupupu gonidi nabba.', 'https://via.placeholder.com/360x521/497/fff/?text=undefined', '2020-11-08 19:08:26'),
(227, 10, '37.734300', '-122.481090', '1', 'Hu enadosvo didi ri gizrun wuwlaeg osi dilcu pizvon ajalenuj moafgul vuhdoge ejata ufaoda.', 'https://via.placeholder.com/496x441/877/fff/?text=undefined', '2021-01-22 16:44:42'),
(229, 35, '37.723780', '-122.377720', '3', 'Culepi bafnera rinbu mon cezdor puz pirci mofzowo top edjo cohomhuc refelgu.', 'https://via.placeholder.com/489x521/353/fff/?text=undefined', '2021-08-26 15:59:30'),
(230, 10, '37.735080', '-122.449070', '5', 'Vafilozu cezas wesuk tultisel ma unbezlog acuso icci zi se gizam sotbof.', 'https://via.placeholder.com/383x473/58B/fff/?text=undefined', '2022-08-06 14:48:55');
INSERT INTO `track_202290_locations` (`id`, `color_id`, `lat`, `lng`, `friendly`, `description`, `photo`, `date_create`) VALUES
(231, 23, '37.810910', '-122.359720', '3', 'Galo roz jujlabre omimizef fuw hus cun cuzir fujibe wogepo oco dogir ar vofu muvkoh hodmivru uji.', 'https://via.placeholder.com/530x466/8A9/fff/?text=undefined', '2022-10-17 15:03:53'),
(232, 35, '37.766790', '-122.374420', '1', 'Tu des wamoc ubi lif li suzfakup fijcese nekvinubu aru era ug sed leiro.', 'https://via.placeholder.com/436x540/467/fff/?text=undefined', '2022-09-08 17:40:27'),
(233, 10, '37.767400', '-122.464250', '4', 'Wumurec patag ege zohnibuw ubhu rallizdud uso nij un ukvi mogfiwaj na redgafpoc rogiv bumneffi mi.', 'https://via.placeholder.com/579x434/5B8/fff/?text=undefined', '2020-01-25 10:09:30'),
(234, 35, '37.738440', '-122.484490', '4', 'Givgifeja bul fajeum ubpogfi odocevis dajcuko enacoh wazorpa guiwsid nalowu kanil heggov lodro aftu jobudo.', 'https://via.placeholder.com/488x379/A4A/fff/?text=undefined', '2022-04-05 10:32:21'),
(235, 6, '37.728240', '-122.372350', '3', 'Re lulsem zab pihobim vac johhesek ekuug leakho aridu bowbeifi huhobi biguap bophen pitvamaf ijohoc guhiz vezoem afeogvaj.', 'https://via.placeholder.com/361x362/6B7/fff/?text=undefined', '2020-05-28 14:18:43'),
(237, 15, '37.713650', '-122.392130', '3', 'Cuw mepabli uscan ecdef ni detlovmah bob bejauh roitnin vowok vavigbek darodre.', 'https://via.placeholder.com/360x420/565/fff/?text=undefined', '2020-07-13 22:14:05'),
(238, 19, '37.815360', '-122.443080', '1', 'Dodgomdow fef top jeggis toovu udboge uzilet lij zeataowa otjosen izawu tecsov oc otaj dot avnoki sogaguage.', 'https://via.placeholder.com/480x591/64A/fff/?text=undefined', '2022-10-01 07:57:54'),
(239, 10, '37.756690', '-122.399160', '1', 'Tuta becutab lu degkiwihu vogpi ceklail ontab bevrubno fiv pijdu ane hozezik sig awpaduje.', 'https://via.placeholder.com/511x552/AA4/fff/?text=undefined', '2021-02-14 19:41:53'),
(241, 15, '37.748670', '-122.470610', '3', 'Daog mas ho ta mi ejilepel wad wisja kute alasaug okuagje otiirugeg.', 'https://via.placeholder.com/403x363/36A/fff/?text=undefined', '2021-11-04 10:41:54'),
(242, 15, '37.734340', '-122.458270', '3', 'Bikpa edosen pasokra nempip cisma kev ilejo mokeuti bubodain enazap topet hovjovna ohvowif waroc udaide cugilap vev.', 'https://via.placeholder.com/528x370/648/fff/?text=undefined', '2022-05-15 03:50:27'),
(243, 23, '37.731020', '-122.365440', '4', 'Riz wojwisem akalu padofo befcu zenatmi ubla vakrahge sav ot ude wen toneldoj na ima.', 'https://via.placeholder.com/525x383/B95/fff/?text=undefined', '2021-03-07 23:24:09'),
(245, 15, '37.799640', '-122.388560', '4', 'Wat nezori weup falnu wap ihkeke fim ito matinwuf wawordu coghu ovdizvu egkis.', 'https://via.placeholder.com/370x552/A6B/fff/?text=undefined', '2020-12-19 04:40:37'),
(246, 15, '37.761510', '-122.415010', '5', 'Vop huituluv lilor juv vim le fav etufirmu ew kope gufzih ru cubtughu ircismes.', 'https://via.placeholder.com/425x514/7B7/fff/?text=undefined', '2022-03-18 04:41:09'),
(247, 10, '37.794340', '-122.426840', '3', 'Cehbemiw tazotzo zuf fivofer sogni foneva mos obuwi saz bawcogzin cilofuz wehcurgic.', 'https://via.placeholder.com/459x555/94A/fff/?text=undefined', '2020-02-14 19:14:30'),
(248, 35, '37.800490', '-122.446370', '5', 'Nakuvizal rifa karluh anaaga ga dide upfu fe uwe ogaehi sofis rup esik co nacum rigruiv jimek rukgukeg.', 'https://via.placeholder.com/423x454/346/fff/?text=undefined', '2020-01-10 22:17:52'),
(249, 20, '37.778540', '-122.421090', '4', 'Fe ma eniawo ime kep enine jolen wo afu cer je rofa comuckur ibmuhga go gafnekgod aszap.', 'https://via.placeholder.com/405x444/AB9/fff/?text=undefined', '2021-10-26 13:40:41'),
(250, 6, '37.817930', '-122.467940', '4', 'Mikdi rinma cicuhib to rigi jogut ejaamezu zime ze ob da ewa eklozbo du dicekoz madko ji.', 'https://via.placeholder.com/486x437/354/fff/?text=undefined', '2021-03-24 09:23:27'),
(252, 57, '40.185498', '-82.941705', '5', ' test data', 'uploads/1670621948.1046_5CA46D72-E4CC-46DC-97EC-6852FDE3398E.jpeg', '2022-12-09 14:39:26'),
(253, 57, '40.185498', '-82.941705', '5', ' test data', 'uploads/1670621948.1046_5CA46D72-E4CC-46DC-97EC-6852FDE3398E.jpeg', '2022-12-09 14:39:28'),
(254, 57, '40.185498', '-82.941705', '5', ' test data', 'uploads/1670621948.1046_5CA46D72-E4CC-46DC-97EC-6852FDE3398E.jpeg', '2022-12-09 14:39:31'),
(255, 57, '40.185498', '-82.941705', '5', ' test data', 'uploads/1670621948.1046_5CA46D72-E4CC-46DC-97EC-6852FDE3398E.jpeg', '2022-12-09 14:39:32'),
(256, 57, '40.185498', '-82.941705', '5', ' test data', 'uploads/1670621948.1046_5CA46D72-E4CC-46DC-97EC-6852FDE3398E.jpeg', '2022-12-09 14:39:32'),
(257, 57, '40.185498', '-82.941705', '5', ' test data', 'uploads/1670621948.1046_5CA46D72-E4CC-46DC-97EC-6852FDE3398E.jpeg', '2022-12-09 14:39:33'),
(258, 57, '40.185498', '-82.941705', '5', ' test data', 'uploads/1670621948.1046_5CA46D72-E4CC-46DC-97EC-6852FDE3398E.jpeg', '2022-12-09 14:40:01'),
(259, 57, '40.185498', '-82.941705', '5', ' test data133', 'uploads/1670622658.9447_17984F20-AC71-4EB0-8C35-D584B3D352F7.jpeg', '2022-12-09 14:51:01'),
(260, 57, '40.185498', '-82.941705', '3', '  test data133 ', 'uploads/1670622658.9447_17984F20-AC71-4EB0-8C35-D584B3D352F7.jpeg', '2022-12-09 14:51:07'),
(261, 3, '40.183398', '-82.942362', '2', ' 133333', 'uploads/1670625764.2322_images (1).jpg', '2022-12-09 15:43:00'),
(262, 41, '40.183398', '-82.942362', '2', ' 88888888', 'uploads/1670625996.0169_images (1).jpg', '2022-12-09 15:46:43'),
(264, 41, '40.183398', '-82.942362', '', ' 266', 'uploads/1670626146.7504_images (1).jpg', '2022-12-09 15:49:12'),
(265, 41, '40.183398', '-82.942362', '', ' 266', 'uploads/1670626146.7504_images (1).jpg', '2022-12-09 15:49:14'),
(267, 1, '40.183398', '-82.942362', '', ' 2888', 'uploads/1670626375.328_images.jpg', '2022-12-09 15:53:03'),
(268, 57, '40.183398', '-82.942362', '2', ' 123', 'uploads/1670626536.4028_images.jpg', '2022-12-09 15:55:49'),
(269, 30, '40.183398', '-82.942362', '4', ' 122', '', '2022-12-09 15:59:07'),
(270, 0, '40.183398', '-82.942362', '', '', '', '2022-12-09 15:59:34'),
(271, 43, '40.183398', '-82.942362', '', ' /', 'uploads/1670626975.2462_images (1).jpg', '2022-12-09 16:03:00'),
(272, 30, '40.183398', '-82.942362', '2', ' ', 'uploads/1670627199.7685_images (1).jpg', '2022-12-09 16:06:45'),
(273, 0, '40.183398', '-82.942362', '', ' 444', '', '2022-12-09 16:13:32'),
(274, 0, '40.183398', '-82.942362', '5', '', '', '2022-12-09 16:14:00'),
(275, 0, '40.183398', '-82.942362', '5', '', '', '2022-12-09 16:15:14'),
(276, 0, '40.183398', '-82.942362', '4', '', '', '2022-12-09 16:17:07'),
(277, 41, '40.183398', '-82.942362', '', ' 255', 'uploads/1670627858.3413_304104088_1433838033764938_1705633029650211307_n.jpg', '2022-12-09 16:17:43'),
(278, 9, '40.183398', '-82.942362', '', ' 233', 'uploads/1670627919.766_images (1).jpg', '2022-12-09 16:18:47'),
(279, 30, '40.183398', '-82.942362', '3', '256', 'uploads/1670627988.4741_316737934_630263425506358_1531160023970836226_n.jpg', '2022-12-09 16:19:59'),
(280, 57, '40.183398', '-82.942362', '2', ' 255', 'uploads/1670628126.4988_316737934_630263425506358_1531160023970836226_n.jpg', '2022-12-09 16:22:16'),
(281, 29, '40.183398', '-82.942362', '1', '277', 'uploads/1670628146.4611_images.jpg', '2022-12-09 16:22:35'),
(282, 57, '40.183398', '-82.942362', '1', '2887', '', '2022-12-09 16:23:15'),
(292, 61, '40.186730', '-82.947334', '5', 'This cat has great eyes!! And she has a very nice personality', 'uploads/1670630389.7844_images (1).jpg', '2022-12-09 17:00:01'),
(293, 61, '40.191746', '-82.947034', '1', 'A very funny cat. I saw it on the street', 'uploads/1670630416.3676_316737934_630263425506358_1531160023970836226_n.jpg', '2022-12-09 17:00:37'),
(294, 63, '40.165196', '-82.954630', '3', 'The cat sat quietly in the park and watched me.', 'uploads/1670630661.7025_images (5).jpg', '2022-12-09 17:04:53'),
(295, 63, '40.183331', '-82.932715', '3', 'This cat seems scared by me hahaha', 'uploads/1670630706.6355_images (8).jpg', '2022-12-09 17:05:25'),
(296, 63, '40.173257', '-82.950447', '5', 'The cat is very small. It\'s cute.', 'uploads/1670630743.253_images (12).jpg', '2022-12-09 17:06:10'),
(297, 64, '40.152965', '-82.906707', '2', 'I heard that orange cats are very able to eat, it seems to be true', 'uploads/1670630794.8921_images (7).jpg', '2022-12-09 17:06:59'),
(298, 64, '40.163251', '-82.899251', '4', 'A cute cat eating a meal', 'uploads/1670630830.6098_images (10).jpg', '2022-12-09 17:07:34'),
(299, 64, '40.165544', '-82.934170', '5', 'How cute the cat is! It felt like her hair was shining.', 'uploads/1670630861.611_images (13).jpg', '2022-12-09 17:08:09'),
(300, 61, '40.188763', '-82.934975', '1', 'He doesn\'t seem to like me very much, which is fine because I don\'t like him either', 'uploads/1670630916.387_images (11).jpg', '2022-12-09 17:08:58'),
(301, 62, '40.179927', '-82.972453', '3', 'This is a very cute little black cat. He lay there quietly', 'uploads/1670630980.2586_images (2).jpg', '2022-12-09 17:10:04'),
(302, 65, '40.235554', '-82.958071', '1', 'This cat looks a little fierce', 'uploads/1670631162.9527_images (14).jpg', '2022-12-09 17:12:58'),
(303, 65, '40.231250', '-82.951811', '4', 'His hair is very fluffy. I love it', 'uploads/1670631182.4179_download.jpg', '2022-12-09 17:13:22'),
(304, 65, '40.217642', '-82.933897', '3', 'What does he look like he\'s thinking about\r\n40.217641814434536, -82.93389679624819', 'uploads/1670631210.1411_download (1).jpg', '2022-12-09 17:13:45'),
(305, 65, '40.211601', '-82.917074', '2', 'I wonder why he keeps staring at me', 'uploads/1670631243.9829_images (17).jpg', '2022-12-09 17:14:24'),
(306, 65, '40.223683', '-82.899887', '3', 'He seems to be in a good mood.', 'uploads/1670631283.3545_images (19).jpg', '2022-12-09 17:15:04'),
(307, 65, '40.202572', '-82.928895', '5', 'Oh, my God. Where\'s his tail.', 'uploads/1670631343.3002_images (18).jpg', '2022-12-09 17:16:03'),
(308, 62, '40.166864', '-82.929441', '3', 'Oh, my God. Where\'s his tail', 'uploads/1670631415.1412_images (22).jpg', '2022-12-09 17:17:12'),
(309, 62, '40.207989', '-82.943718', '3', 'What big eyes he has!', 'uploads/1670631438.9578_images (21).jpg', '2022-12-09 17:17:32'),
(310, 62, '40.205350', '-82.928077', '3', 'He\'s so dark, I\'m not sure I can find him at night.', 'uploads/1670631460.6253_images (20).jpg', '2022-12-09 17:17:59'),
(311, 66, '40.203200', '-82.998993', '4', 'COOOOOOL', 'uploads/1670631621.2116_images (30).jpg', '2022-12-09 17:20:30'),
(312, 66, '40.166320', '-82.980013', '4', 'His eyes are green.\r\n', 'uploads/1670631636.7935_images (29).jpg', '2022-12-09 17:21:09'),
(313, 66, '40.174704', '-82.959497', '2', 'I don\'t think she likes her dress', 'uploads/1670631675.8275_images (28).jpg', '2022-12-09 17:21:34'),
(314, 66, '40.164476', '-82.990326', '5', 'He was very happy.', 'uploads/1670631701.1456_images (27).jpg', '2022-12-09 17:21:53'),
(315, 66, '40.172608', '-82.948416', '4', 'He\'s been looking at me for a long time.', 'uploads/1670631719.513_images (26).jpg', '2022-12-09 17:22:18'),
(316, 66, '40.174536', '-82.988461', '5', 'He stayed in a tree...', 'uploads/1670631745.3974_images (25).jpg', '2022-12-09 17:22:49'),
(317, 66, '40.158355', '-82.961142', '3', 'He didn\'t look very happy.', 'uploads/1670631784.8401_images (24).jpg', '2022-12-09 17:23:26'),
(318, 66, '40.196663', '-82.998664', '4', 'Does he seem to be afraid of something.\r\n', 'uploads/1670631816.1253_images (23).jpg', '2022-12-09 17:23:52'),
(319, 61, '40.195188', '-82.932958', '3', '', 'uploads/1670631917.2973_images (31).jpg', '2022-12-09 17:25:25'),
(320, 61, '40.179812', '-82.941412', '5', '', 'uploads/1670631931.7624_images (32).jpg', '2022-12-09 17:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `track_202290_users`
--

CREATE TABLE `track_202290_users` (
  `id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_202290_users`
--

INSERT INTO `track_202290_users` (`id`, `name`, `username`, `email`, `password`, `img`, `date_create`) VALUES
(1, 'Katherine Riley', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/409x480/56A/fff/?text=Katherine Riley', '2022-04-24 02:40:33'),
(2, 'Addie Quinn', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/497x588/67A/fff/?text=Addie Quinn', '2021-07-21 05:45:56'),
(3, 'Jose Willis', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/577x567/8AA/fff/?text=Jose Willis', '2021-11-02 08:27:03'),
(4, 'Alqta 23 Sc2', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1669928489.4713_316737934_630263425506358_1531160023970836226_n.jpg', '2022-01-12 09:37:22'),
(5, 'Rhoda Ballard', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/391x487/453/fff/?text=Rhoda Ballard', '2022-10-08 18:15:11'),
(6, 'Pauline Thornton', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/504x431/643/fff/?text=Pauline Thornton', '2021-04-30 17:19:07'),
(7, 'Lucy Higgins', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/481x371/797/fff/?text=Lucy Higgins', '2021-08-03 19:32:35'),
(8, 'Leah Peterson', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/466x401/AB6/fff/?text=Leah Peterson', '2021-03-02 03:35:06'),
(9, 'Harriett Nash', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/472x457/948/fff/?text=Harriett Nash', '2020-10-07 23:44:53'),
(10, 'Matthew Lambert', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/369x434/5A8/fff/?text=Matthew Lambert', '2021-03-24 22:11:36'),
(11, 'HAHA', 'user34', ' ', '202cb962ac59075b964b07152d234b70', ' ', '2022-11-20 14:43:11'),
(12, 'Chak', 'user66', ' ', 'e10adc3949ba59abbe56e057f20f883e', ' ', '2022-11-28 16:06:24'),
(13, 'user2', 'user2@gmail.com', ' ', '1a1dc91c907325c69271ddf0c944bc72', ' ', '2022-12-01 11:18:50'),
(14, 'user2', 'user2@gmail.com', ' ', '1a1dc91c907325c69271ddf0c944bc72', ' ', '2022-12-01 11:18:50'),
(15, 'user2', 'user2@gmail.com', ' ', '1a1dc91c907325c69271ddf0c944bc72', ' ', '2022-12-01 11:18:57'),
(16, 'user2', 'user2@gmail.com', ' ', '1a1dc91c907325c69271ddf0c944bc72', ' ', '2022-12-01 11:18:58'),
(17, 'user1', 'user1@gmail.com', ' ', '1a1dc91c907325c69271ddf0c944bc72', ' ', '2022-12-03 13:19:33'),
(18, 'user1', 'user1@gmail.com', ' ', '1a1dc91c907325c69271ddf0c944bc72', ' ', '2022-12-03 13:19:33'),
(19, 'user1', 'user1@gmail.com', ' ', '1a1dc91c907325c69271ddf0c944bc72', ' ', '2022-12-03 13:19:34'),
(20, 'user1', 'user1@gmail.com', ' ', '1a1dc91c907325c69271ddf0c944bc72', ' ', '2022-12-03 13:19:41'),
(21, 'user1', 'user1@gmail.com', ' ', '1a1dc91c907325c69271ddf0c944bc72', ' ', '2022-12-03 13:19:42'),
(22, '11', 'user100', ' ', '1a1dc91c907325c69271ddf0c944bc72', ' ', '2022-12-04 13:02:18'),
(23, '11', 'user100', ' ', '1a1dc91c907325c69271ddf0c944bc72', ' ', '2022-12-04 13:02:34'),
(24, '11', 'user100', ' ', '1a1dc91c907325c69271ddf0c944bc72', ' ', '2022-12-04 13:02:35'),
(25, 'SOMEONE', 'user0', ' ', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1670629529.1558_user.png', '2022-12-09 16:38:54');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_202290_colors`
--
ALTER TABLE `track_202290_colors`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `track_202290_locations`
--
ALTER TABLE `track_202290_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `track_202290_users`
--
ALTER TABLE `track_202290_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_202290_colors`
--
ALTER TABLE `track_202290_colors`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `track_202290_locations`
--
ALTER TABLE `track_202290_locations`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=321;

--
-- AUTO_INCREMENT for table `track_202290_users`
--
ALTER TABLE `track_202290_users`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
