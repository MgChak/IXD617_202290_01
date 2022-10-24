-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 24, 2022 at 04:28 PM
-- Server version: 5.7.39-cll-lve
-- PHP Version: 7.3.32

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
  `id` int(13) NOT NULL,
  `color_id` int(13) NOT NULL,
  `name` varchar(64) NOT NULL,
  `color` varchar(64) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_202290_colors`
--

INSERT INTO `track_202290_colors` (`id`, `color_id`, `name`, `color`, `img`, `date_create`) VALUES
(1, 10, 'Madge', 'GRAY', 'https://via.placeholder.com/370x481/345/fff/?text=Madge', '2020-11-08 20:38:09'),
(2, 1, 'Virginia', 'WHITE', 'https://via.placeholder.com/467x526/995/fff/?text=Virginia', '2021-07-21 05:03:32'),
(3, 7, 'Hattie', 'BLACK', 'https://via.placeholder.com/463x569/586/fff/?text=Hattie', '2021-10-29 01:55:35'),
(4, 6, 'Nicholas', 'GRAY', 'https://via.placeholder.com/431x395/466/fff/?text=Nicholas', '2021-08-12 04:48:29'),
(5, 4, 'Larry', 'WHITE', 'https://via.placeholder.com/565x600/56A/fff/?text=Larry', '2020-04-09 06:30:26'),
(6, 6, 'Betty', 'GRAY', 'https://via.placeholder.com/439x515/8BB/fff/?text=Betty', '2022-02-24 23:45:31'),
(7, 8, 'Willie', 'GRAY', 'https://via.placeholder.com/442x418/898/fff/?text=Willie', '2020-12-05 10:22:40'),
(8, 6, 'Douglas', 'BLACK', 'https://via.placeholder.com/512x432/575/fff/?text=Douglas', '2020-10-14 09:33:06'),
(9, 5, 'Samuel', 'BROWN', 'https://via.placeholder.com/401x556/BA6/fff/?text=Samuel', '2020-08-21 04:30:34'),
(10, 4, 'Nathan', 'ORANGE', 'https://via.placeholder.com/432x468/4B7/fff/?text=Nathan', '2020-05-20 10:34:48'),
(11, 10, 'Ronald', 'ORANGE', 'https://via.placeholder.com/522x530/797/fff/?text=Ronald', '2020-06-21 06:00:12'),
(12, 3, 'Betty', 'BLACK', 'https://via.placeholder.com/421x503/497/fff/?text=Betty', '2022-10-19 02:01:52'),
(13, 7, 'Jerome', 'BROWN', 'https://via.placeholder.com/541x361/784/fff/?text=Jerome', '2021-02-09 08:52:07'),
(14, 9, 'Troy', 'WHITE', 'https://via.placeholder.com/577x491/788/fff/?text=Troy', '2020-11-26 05:36:36'),
(15, 8, 'Etta', 'BROWN', 'https://via.placeholder.com/518x427/776/fff/?text=Etta', '2020-08-02 16:37:04'),
(16, 3, 'Lillian', 'BLACK', 'https://via.placeholder.com/382x497/764/fff/?text=Lillian', '2020-05-30 15:56:21'),
(17, 9, 'Andrew', 'BROWN', 'https://via.placeholder.com/394x397/569/fff/?text=Andrew', '2021-04-19 22:53:58'),
(18, 6, 'Kate', 'GRAY', 'https://via.placeholder.com/464x471/AB5/fff/?text=Kate', '2022-08-17 05:16:06'),
(19, 7, 'Victoria', 'BLACK', 'https://via.placeholder.com/590x357/AAB/fff/?text=Victoria', '2020-05-16 00:37:54'),
(20, 3, 'Wesley', 'BLACK', 'https://via.placeholder.com/546x482/B38/fff/?text=Wesley', '2020-10-17 12:45:29'),
(21, 1, 'Joe', 'WHITE', 'https://via.placeholder.com/545x373/B55/fff/?text=Joe', '2022-01-29 10:53:50'),
(22, 3, 'Birdie', 'GRAY', 'https://via.placeholder.com/495x381/677/fff/?text=Birdie', '2021-10-27 02:03:10'),
(23, 6, 'Duane', 'GRAY', 'https://via.placeholder.com/434x384/468/fff/?text=Duane', '2020-03-22 04:45:21'),
(24, 9, 'Darrell', 'WHITE', 'https://via.placeholder.com/586x431/7B6/fff/?text=Darrell', '2020-01-07 14:48:43'),
(25, 9, 'Jeff', 'ORANGE', 'https://via.placeholder.com/586x517/468/fff/?text=Jeff', '2021-11-15 05:28:56'),
(26, 2, 'Ellen', 'WHITE', 'https://via.placeholder.com/576x551/54A/fff/?text=Ellen', '2021-11-16 06:28:04'),
(27, 5, 'Charlie', 'BLACK', 'https://via.placeholder.com/442x369/95B/fff/?text=Charlie', '2021-04-01 03:52:51'),
(28, 8, 'Matilda', 'GRAY', 'https://via.placeholder.com/404x432/976/fff/?text=Matilda', '2021-01-02 21:18:36'),
(29, 7, 'Mattie', 'BLACK', 'https://via.placeholder.com/481x527/A89/fff/?text=Mattie', '2020-03-24 16:04:16'),
(30, 5, 'Logan', 'GRAY', 'https://via.placeholder.com/571x556/95A/fff/?text=Logan', '2022-01-07 13:38:16'),
(31, 6, 'Benjamin', 'WHITE', 'https://via.placeholder.com/460x416/76B/fff/?text=Benjamin', '2021-09-08 18:04:50'),
(32, 10, 'Rodney', 'BROWN', 'https://via.placeholder.com/481x458/94B/fff/?text=Rodney', '2021-07-20 09:24:10'),
(33, 2, 'Zachary', 'WHITE', 'https://via.placeholder.com/520x598/9A4/fff/?text=Zachary', '2020-12-29 22:30:22'),
(34, 1, 'Warren', 'GRAY', 'https://via.placeholder.com/538x391/736/fff/?text=Warren', '2022-10-15 13:35:41'),
(35, 8, 'Maria', 'ORANGE', 'https://via.placeholder.com/459x423/584/fff/?text=Maria', '2020-06-05 01:05:10'),
(36, 1, 'Ruby', 'WHITE', 'https://via.placeholder.com/580x421/A9B/fff/?text=Ruby', '2022-01-11 15:50:36'),
(37, 8, 'Kenneth', 'WHITE', 'https://via.placeholder.com/556x573/336/fff/?text=Kenneth', '2022-10-18 14:33:17'),
(38, 2, 'Theodore', 'BLACK', 'https://via.placeholder.com/576x401/8A8/fff/?text=Theodore', '2020-09-19 11:05:11'),
(39, 7, 'Betty', 'WHITE', 'https://via.placeholder.com/466x493/9A3/fff/?text=Betty', '2021-03-18 17:42:32'),
(40, 2, 'Alta', 'BROWN', 'https://via.placeholder.com/541x598/553/fff/?text=Alta', '2021-10-29 05:05:45'),
(41, 7, 'Lizzie', 'BLACK', 'https://via.placeholder.com/568x478/365/fff/?text=Lizzie', '2021-02-08 02:45:48'),
(42, 6, 'Hettie', 'WHITE', 'https://via.placeholder.com/501x588/B6B/fff/?text=Hettie', '2021-02-04 21:24:35'),
(43, 1, 'Glenn', 'GRAY', 'https://via.placeholder.com/401x546/85B/fff/?text=Glenn', '2022-01-07 12:11:11'),
(44, 2, 'Justin', 'BLACK', 'https://via.placeholder.com/358x459/855/fff/?text=Justin', '2020-07-01 04:35:52'),
(45, 6, 'Gordon', 'ORANGE', 'https://via.placeholder.com/381x358/574/fff/?text=Gordon', '2021-10-20 01:22:10'),
(46, 9, 'Betty', 'BLACK', 'https://via.placeholder.com/564x369/3A3/fff/?text=Betty', '2020-04-26 06:15:57'),
(47, 1, 'Steven', 'ORANGE', 'https://via.placeholder.com/545x579/B58/fff/?text=Steven', '2021-06-24 13:05:39'),
(48, 6, 'Ann', 'BROWN', 'https://via.placeholder.com/362x481/B47/fff/?text=Ann', '2021-07-04 11:15:27'),
(49, 10, 'Caleb', 'WHITE', 'https://via.placeholder.com/510x433/774/fff/?text=Caleb', '2021-12-09 14:52:22'),
(50, 1, 'Alice', 'WHITE', 'https://via.placeholder.com/434x371/996/fff/?text=Alice', '2020-02-16 14:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `track_202290_locations`
--

CREATE TABLE `track_202290_locations` (
  `id` int(13) NOT NULL,
  `animal_id` int(13) NOT NULL,
  `lat` decimal(8,0) NOT NULL,
  `lng` decimal(8,0) NOT NULL,
  `friendly` varchar(13) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(128) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_202290_locations`
--

INSERT INTO `track_202290_locations` (`id`, `animal_id`, `lat`, `lng`, `friendly`, `description`, `img`, `date_create`) VALUES
(1, 45, 38, -122, '2', 'Dioza kura zazi vake bela nune niwavil cuujevi ivtigca eb kupfegva arhiol secuiw po jagiumu tojob wub iposel.', 'https://via.placeholder.com/518x470/84A/fff/?text=undefined', '2021-05-06 13:24:22'),
(2, 24, 38, -122, '1', 'Fiduhu olofilaw kopi nofi naked ragoku tocaj zegave jowzoev va di nupsav epimebme bahud udowuw uh lan uta.', 'https://via.placeholder.com/368x525/5B3/fff/?text=undefined', '2022-08-30 16:56:00'),
(3, 16, 38, -122, '2', 'Vaddet rusku kup votune nekura oti teve fomohel mevha wa nod wotcawfis.', 'https://via.placeholder.com/415x508/8A6/fff/?text=undefined', '2020-05-14 20:16:13'),
(4, 15, 38, -122, '5', 'Hu jewje pili sewif po jiazu vadijpaj ne vo ru jevet vov guepemo.', 'https://via.placeholder.com/368x459/934/fff/?text=undefined', '2020-01-19 00:16:44'),
(5, 15, 38, -122, '3', 'Val let honudjap sar ivozu bidvem ta woj jelpozek ore zuh dafzo batur ude epifo ku fuz ijowah.', 'https://via.placeholder.com/450x387/B55/fff/?text=undefined', '2020-05-24 09:33:50'),
(6, 32, 38, -122, '3', 'Tuhipu fumuwo fej etho jegezop fijimzud pekefpu lahjo zo pumcu sav lecwivto renci uvheh zetefo.', 'https://via.placeholder.com/536x493/A85/fff/?text=undefined', '2021-09-21 22:46:18'),
(7, 19, 38, -122, '4', 'Rob feubte adla heworhep geluseuj il ehno foczuseza sidca wemhuf navfas tohmec lu loljo kuz termomo.', 'https://via.placeholder.com/536x359/AB4/fff/?text=undefined', '2021-04-22 13:58:16'),
(8, 49, 38, -122, '3', 'Vanivla iwo ite barimiz pickasib sepzoj venova huco tusof vesdof buc uw av gup.', 'https://via.placeholder.com/407x463/34B/fff/?text=undefined', '2020-03-01 21:19:18'),
(9, 39, 38, -123, '4', 'Sac iceakiho so riseera caok azik vesud rikbujah vov jeiho ujcinos bimdur huru unedah iga do jo.', 'https://via.placeholder.com/410x470/6A3/fff/?text=undefined', '2022-02-06 04:24:25'),
(10, 26, 38, -122, '2', 'Fersuz rot faedado esuwu awaekwa enli ocsuuzo mozokew sizobu utkute woekitu hom ese pof zun udasoapu me kusmabom.', 'https://via.placeholder.com/400x370/486/fff/?text=undefined', '2021-01-10 13:37:19'),
(11, 28, 38, -122, '1', 'Izfo wif ficco cogedsa cemza efetar toguctu do ijbogma akires jitib wiwaku ni wodozpik ji dizapwi vimhuen avage.', 'https://via.placeholder.com/374x552/486/fff/?text=undefined', '2020-07-21 06:42:01'),
(12, 36, 38, -122, '1', 'Gi liote ceswa vu siokuzeg fiv teefujaf ma helkufbaf hedomig waefuod mu mokfu rodcib kikama lol zare.', 'https://via.placeholder.com/383x385/766/fff/?text=undefined', '2021-12-09 09:09:07'),
(13, 23, 38, -122, '3', 'Viha tipubde pauk jopih ova dozoriva zu le savnu turvanwan vipuhva meotitor jirfiron.', 'https://via.placeholder.com/467x510/A7B/fff/?text=undefined', '2020-11-21 18:44:47'),
(14, 30, 38, -122, '5', 'Ka di nukigu hugnuv onhafki bab tibva ji vu poalicu eki sovzizuw ifeosusov areculze mal mepkebade.', 'https://via.placeholder.com/354x399/655/fff/?text=undefined', '2020-07-16 13:29:06'),
(15, 31, 38, -122, '2', 'Vuva emu egomu atu kuc fufnip pineb nici voaf cisbufgid unkizem tek valu cafeb bojukmer bev dab vob.', 'https://via.placeholder.com/457x439/933/fff/?text=undefined', '2021-01-19 06:35:02'),
(16, 47, 38, -122, '2', 'Wo suhket tow ogjibet rev fohipogu zar kelvu veg sorohco ogu zohjejkas kabebu kannim wojovo.', 'https://via.placeholder.com/410x467/49A/fff/?text=undefined', '2022-01-23 21:58:01'),
(17, 49, 38, -122, '4', 'Dizu apebepo ow zi ba uranzu dir cop use ned olnokze tifiza peewi.', 'https://via.placeholder.com/514x417/A77/fff/?text=undefined', '2020-01-15 14:35:37'),
(18, 32, 38, -122, '1', 'Fo kuvvo namnu icuhoor ubzenut jabidpob bo pozbi zifkib joev aji kaz urfisgo.', 'https://via.placeholder.com/570x592/734/fff/?text=undefined', '2020-07-28 09:43:50'),
(19, 32, 38, -122, '2', 'Dujwuzpo aliwo ziwa minaka pulgeba futpat la rub timede zotasmi pigowa ra mav.', 'https://via.placeholder.com/400x484/A3B/fff/?text=undefined', '2022-09-22 12:56:14'),
(20, 45, 38, -122, '3', 'Mo hedral lojurit hicores bafumo buf tuka betsu fic kowit caka vetiezu zop.', 'https://via.placeholder.com/414x496/694/fff/?text=undefined', '2020-06-09 04:31:45'),
(21, 30, 38, -123, '3', 'Lefocgan zoilala afwiwo gupohwu ripku gomnuk adnezet meror menkabeno hup up nafunif fujimol sez bimlaz avpo faperdi kojtu.', 'https://via.placeholder.com/511x420/37B/fff/?text=undefined', '2020-11-19 17:17:52'),
(22, 15, 38, -122, '2', 'Ja uhu ebjed fetosi fa beadegi rohmap eforodcu gilurhu rat koiriha ofson kakhob dap jinep.', 'https://via.placeholder.com/412x535/967/fff/?text=undefined', '2022-07-28 02:27:46'),
(23, 43, 38, -122, '1', 'Tibbar goskekep mus wecu ule ofzurpul didatemu care enfa iw tebemfu ra relsoz ka med muosijak.', 'https://via.placeholder.com/586x450/596/fff/?text=undefined', '2020-06-06 16:56:47'),
(24, 48, 38, -122, '5', 'Lefgukas tus imojeb ucafon fok run jedev ubritjar depi hifjeuj iho vam zoaha ne ih.', 'https://via.placeholder.com/556x476/44A/fff/?text=undefined', '2021-02-01 08:15:32'),
(25, 9, 38, -122, '1', 'Gaspirez banmumzuj pigudle joate pu cutural kiwsu gevu mi uviwi uwcajhoc vu bo potvorab ko aggitbo.', 'https://via.placeholder.com/437x384/986/fff/?text=undefined', '2021-11-16 15:51:24'),
(26, 31, 38, -122, '1', 'Ri hawob wemucmu fazmufzu nusezi mabano ozesowaf werefocu foubukop sehidbez ebadu met wocaw kuhij.', 'https://via.placeholder.com/528x362/484/fff/?text=undefined', '2021-05-22 02:54:17'),
(27, 21, 38, -122, '1', 'It uguehha beeb johitir ocno nej nizzo kise fudone ob moumaifo fikaud pod.', 'https://via.placeholder.com/572x394/9A4/fff/?text=undefined', '2022-09-24 04:20:02'),
(28, 15, 38, -122, '2', 'Folilded va mu def zub log gasbaf popo irvowu mugudpup tacodo ravdeksev.', 'https://via.placeholder.com/460x377/A73/fff/?text=undefined', '2022-02-20 19:49:34'),
(29, 19, 38, -122, '1', 'Ecdaf cikum me od humilvo rit wijorvol hormokobi az faw sizpu vupsah kibilgo uto tumkuru fakalulo pir.', 'https://via.placeholder.com/407x593/B64/fff/?text=undefined', '2021-02-27 17:43:11'),
(30, 15, 38, -123, '3', 'Acavup zori bihoh he fob lem vezgapes vul zeda zegizumo usa hetikuho un.', 'https://via.placeholder.com/594x530/5A8/fff/?text=undefined', '2022-10-21 10:04:41'),
(31, 8, 38, -122, '3', 'Cov zi kuhvipcob mav ow va ruiggi begmijdut ka fojutsud maccu hohuh ajo nat jahan.', 'https://via.placeholder.com/557x466/548/fff/?text=undefined', '2021-10-25 13:51:11'),
(32, 4, 38, -122, '3', 'Ona guhwitmef or igkifa okavezuc gaf jaewu lo ve voviwode iwrafa ih uve tad awenak.', 'https://via.placeholder.com/387x365/9B9/fff/?text=undefined', '2021-05-26 19:39:12'),
(33, 32, 38, -122, '3', 'Avdav fezis gasolo ba polaksi hovtice javu la gojuv pagego na avubetav.', 'https://via.placeholder.com/434x528/336/fff/?text=undefined', '2020-12-06 17:11:54'),
(34, 27, 38, -122, '3', 'Cepi wirodjih hoijbe ban avewo jezhu vum masiseb lohkahni zedab ipivol weazinel jugjope kakke heiw diakup wuz sulowem.', 'https://via.placeholder.com/415x591/B64/fff/?text=undefined', '2021-03-09 17:33:19'),
(35, 11, 38, -123, '4', 'Zam ipaur tij he zo pa eb uwoaracak jicluaj kadmuz uwunuz giukaje woza heknudo ica gu opwa.', 'https://via.placeholder.com/478x506/83B/fff/?text=undefined', '2020-09-28 00:03:53'),
(36, 3, 38, -122, '5', 'Cewpevne obehe unse cah lemet pura heelido gapik sekmut niedfeb mif za jujludrow.', 'https://via.placeholder.com/406x420/65B/fff/?text=undefined', '2021-02-21 16:58:24'),
(37, 30, 38, -122, '5', 'Pehposon hiejocic gihzec pu tetza igliz nu evuwofje bev es gewak buwze ohobew aha.', 'https://via.placeholder.com/567x569/49B/fff/?text=undefined', '2022-06-09 07:56:58'),
(38, 1, 38, -122, '4', 'Wapvuwih curtarzew fiazu di kapojew vi pabno naw rodof tu hij zubzovaka lipkopo kodutga za fikis lieluke akuamituf.', 'https://via.placeholder.com/529x532/399/fff/?text=undefined', '2022-01-06 23:19:22'),
(39, 30, 38, -122, '4', 'Bonbivkam poluffip womiegi dejgi opawi eguca fuszocot co hizodzuk humicgog dodig kaka ehon puzpak bimpur sota.', 'https://via.placeholder.com/522x581/578/fff/?text=undefined', '2020-02-17 06:44:30'),
(40, 44, 38, -123, '3', 'Sudpaz ra towpes nubu sasop we op vezzamar buc det faco fun.', 'https://via.placeholder.com/444x397/736/fff/?text=undefined', '2021-05-18 09:53:20'),
(41, 23, 38, -122, '5', 'Tuwizon kitudten sizni tohget dofdebji mifoz dokeub luwsuj manocsu tigoso edho butahek la apadov netesoro sibtokak.', 'https://via.placeholder.com/487x400/A43/fff/?text=undefined', '2020-07-20 05:23:43'),
(42, 32, 38, -122, '3', 'Fig wacicfi tu jizju uhaepwol lol lignud vad makacoca lumdimoh ate nujigi ma uwuhenud fitlihar cu.', 'https://via.placeholder.com/569x360/93B/fff/?text=undefined', '2021-01-03 11:51:46'),
(43, 39, 38, -122, '4', 'Mah ajwi fi zekdes awpem agjezi ifu su tanorvut zetilu okipelo gagebad gilmesrij desuh ubeczuh sovpula kefnuwhir.', 'https://via.placeholder.com/599x534/644/fff/?text=undefined', '2022-04-03 22:08:16'),
(44, 21, 38, -122, '4', 'Zov omaki ki hesuki mizwe debdo muziw efedaw vuc aloaba tot mulfukbib.', 'https://via.placeholder.com/554x399/B4A/fff/?text=undefined', '2022-09-06 08:05:37'),
(45, 35, 38, -122, '5', 'Ugener tuob feb kedur hi bizbe ra idomer va muz noiho caabke cezdaug egokok vofsotwib.', 'https://via.placeholder.com/567x474/998/fff/?text=undefined', '2022-10-09 13:17:23'),
(46, 40, 38, -122, '4', 'Dovge sol waf jireluci widor fugozoj sohvulviw ka logote geh feje buom feniwjor.', 'https://via.placeholder.com/375x500/654/fff/?text=undefined', '2020-05-20 16:51:51'),
(47, 45, 38, -122, '2', 'Nac dabittes loadatas afatop niz jevsaus wiwetaz dasugunap jahet ti be vuon wowco kuaknep do hehbekha wemem.', 'https://via.placeholder.com/496x410/936/fff/?text=undefined', '2022-09-24 19:29:14'),
(48, 18, 38, -122, '4', 'Bomuve mohkac ugu uhuruvcis hohseane wis ko vikvas der fi ammeke ofweb eklulap.', 'https://via.placeholder.com/475x391/694/fff/?text=undefined', '2021-05-23 06:00:45'),
(49, 28, 38, -122, '5', 'Dofnoh bormu usco zewensoh nenku ajeudapi tizbona hakup pi jit pojaw letsoza hecsiczuc.', 'https://via.placeholder.com/497x367/347/fff/?text=undefined', '2022-09-05 19:19:56'),
(50, 50, 38, -122, '3', 'Gigufra ogi ivese mahfa gifahlu juewuije loghi owka erjofub nili wamo je ja redos.', 'https://via.placeholder.com/356x393/33B/fff/?text=undefined', '2020-01-31 15:41:21'),
(51, 47, 38, -122, '2', 'Sigzod occito wulvu mutse olelut biedisu bef wojitwa wojhoc iramivuf ruz we ow puta.', 'https://via.placeholder.com/435x461/984/fff/?text=undefined', '2022-05-30 05:14:28'),
(52, 5, 38, -122, '5', 'Jo met ciksed mo kokgawoz kulor hod vej ici culer ude kipa.', 'https://via.placeholder.com/377x463/BA5/fff/?text=undefined', '2022-07-19 11:24:43'),
(53, 3, 38, -123, '2', 'Zi lac sukopa folramri hodduv ir rafsin godun vempead pan bibfi mac jitimzej ewda sudaf wat.', 'https://via.placeholder.com/411x436/484/fff/?text=undefined', '2022-04-30 13:00:34'),
(54, 32, 38, -122, '2', 'We ete huiwi kirot inevuzora fibjuj vug luf ut dek hopbeccig be walwimu az.', 'https://via.placeholder.com/419x566/36A/fff/?text=undefined', '2022-09-27 16:48:34'),
(55, 10, 38, -123, '1', 'Sam vivzave lemlot izuili lig rowdatul uji cu ima ritilov faodah wicodod woc.', 'https://via.placeholder.com/424x549/A75/fff/?text=undefined', '2022-03-02 21:24:50'),
(56, 37, 38, -122, '1', 'Lemat kejowcop vuteknah de teg cer usamira lunipo ah da wi heol fopvoseh ade aro we hi.', 'https://via.placeholder.com/519x420/4A6/fff/?text=undefined', '2020-08-24 20:40:46'),
(57, 1, 38, -122, '5', 'Fa pital ivlajo hirhi gosrog mibuc fod uveiheus jokkesfe cibkipo zi homoplup ico kutowo hunma luhirouku.', 'https://via.placeholder.com/529x550/637/fff/?text=undefined', '2022-06-21 17:53:53'),
(58, 35, 38, -122, '5', 'Hesaive unhu ewodevik ha kogol ah vu kef femi hian rijep hoj kowvivef pafaz wibwe korad.', 'https://via.placeholder.com/403x490/648/fff/?text=undefined', '2022-09-19 09:55:33'),
(59, 18, 38, -122, '5', 'Ubiviwik pu puctuna zasgut noceda mala gaak ujofunu bofkafre purdid iguhaar ziwovo ezetati mur dejwu.', 'https://via.placeholder.com/502x533/493/fff/?text=undefined', '2022-01-29 11:37:41'),
(60, 36, 38, -122, '4', 'Waj gavhag be ve zadodu enne row vok sotjer suaje okjim uzku tulaaf.', 'https://via.placeholder.com/499x598/659/fff/?text=undefined', '2021-04-06 13:42:51'),
(61, 19, 38, -122, '5', 'Zonhur apfec matbagti fa be mepnu vubpevaf se cit git por ezi socuhoaw bi ciwin memuhe gaz.', 'https://via.placeholder.com/486x359/365/fff/?text=undefined', '2020-03-16 04:50:07'),
(62, 41, 38, -122, '2', 'Guwdeg ni sevkeuz ciofiza mage nulzav siv ecanuk abidouhu isizifiw tej suvpa dari venacod iseami josfa mig.', 'https://via.placeholder.com/414x561/8B7/fff/?text=undefined', '2021-07-28 12:21:12'),
(63, 17, 38, -122, '5', 'Zuuwuz agebozteb zez je litzada ohgod epoj avilor utkodfof digmozo ubazuwwi mi etatan mucuk.', 'https://via.placeholder.com/546x512/768/fff/?text=undefined', '2021-11-27 06:22:59'),
(64, 27, 38, -122, '5', 'Poni or ujilevroc beci fot orrif moheb evihetge vatlighoj win ebu isohi fatze.', 'https://via.placeholder.com/383x397/979/fff/?text=undefined', '2022-03-19 15:01:30'),
(65, 26, 38, -122, '1', 'Kiufe lut kizihos tetrodew fouha ciz vih ledafauc adnonsa waziemo askifuje ug irsujwuk kijfih ce bac bobi dicefpip.', 'https://via.placeholder.com/445x522/7B7/fff/?text=undefined', '2020-07-15 18:11:35'),
(66, 43, 38, -122, '2', 'Tivabje odepim hoc tuvuk eliif hug wodegla ap kecaku cojaje fe utto po lopowo suzi.', 'https://via.placeholder.com/357x567/838/fff/?text=undefined', '2020-10-18 16:13:13'),
(67, 28, 38, -122, '3', 'So bowru elciza lav meptumej an gaw urazupgaz covzagcat sebzatiro paf dahoclo rowfiwhev vohdujac dane gonmadib zam eroizol.', 'https://via.placeholder.com/469x507/BB3/fff/?text=undefined', '2020-09-28 00:25:03'),
(68, 48, 38, -122, '2', 'Da tebifhej lef ujroji pohjiimo gica cunfutin ra lirmid huraco lobjelet megekje.', 'https://via.placeholder.com/480x540/3B8/fff/?text=undefined', '2020-11-23 07:46:37'),
(69, 49, 38, -122, '4', 'Lehepwir ze dug nene ob ij na tolozcil miijatob ohfadre diroiha hohsagpa po setatuwi.', 'https://via.placeholder.com/491x558/478/fff/?text=undefined', '2021-07-29 12:07:51'),
(70, 43, 38, -122, '4', 'Kobetom tenje wuto sifcog zioh reahe nasba setlalih pajirzel peckif ohaopka gawowe milubik izegofur sukov canar.', 'https://via.placeholder.com/403x530/556/fff/?text=undefined', '2021-11-12 15:21:00'),
(71, 44, 38, -122, '2', 'Ruznubi ihu si ugaarzoh zile dehu gu owu rav lo ru tumag cehruhtu.', 'https://via.placeholder.com/459x552/54B/fff/?text=undefined', '2022-08-17 21:03:49'),
(72, 16, 38, -123, '1', 'Pahze orzejhek novaj ze gi locwam bided fowdila diluw donfa webi bobramzoc batpes ki inovaan midacu.', 'https://via.placeholder.com/484x385/3B7/fff/?text=undefined', '2021-08-29 11:43:44'),
(73, 13, 38, -122, '1', 'Divwoana ufmo zepku wiondil owope bup imnuwja caof sihi ake givernu ocdiluc osisa cocbihlo rucedkih ogzuj faptej.', 'https://via.placeholder.com/455x451/885/fff/?text=undefined', '2022-09-09 19:21:04'),
(74, 2, 38, -122, '1', 'Tawmolhug mos ki joz acaecge vuctu iz ajza rumpoca naz zaksekfu jofi vi dohedrek ogo araavuja we ketro.', 'https://via.placeholder.com/391x378/AA4/fff/?text=undefined', '2021-02-06 19:37:56'),
(75, 36, 38, -122, '2', 'Tuuko take vavno fatbuam wezuf adjincuk zib tela du ikoto walbi cewiz taho wo.', 'https://via.placeholder.com/408x392/B5A/fff/?text=undefined', '2022-03-26 19:31:15'),
(76, 21, 38, -122, '2', 'Abojibub le te ef to sifeh ihijonmar jo kov adgaj vudemo seh zavsagsot.', 'https://via.placeholder.com/432x574/9A5/fff/?text=undefined', '2020-09-06 17:34:40'),
(77, 46, 38, -122, '2', 'Amu fu tadbu julupo olo nimco doha hu mujes givsemi ho sogun gibfike daclanef.', 'https://via.placeholder.com/398x497/35B/fff/?text=undefined', '2022-06-04 17:45:21'),
(78, 34, 38, -122, '3', 'Ni abgaj cep lotivugut ujobuglip tivdukbu ruloj ocdab ciw jok huh ofo nugarzu hetorze teuv pagat ga.', 'https://via.placeholder.com/526x437/556/fff/?text=undefined', '2020-11-12 12:38:43'),
(79, 6, 38, -122, '2', 'Toler jajefi ole ju dovuhat itarieri luvu egidehco libul nivabitut ikituw ip bazil wor.', 'https://via.placeholder.com/521x578/594/fff/?text=undefined', '2022-09-29 09:07:17'),
(80, 29, 38, -122, '2', 'Uzi vehwus bew doti godvu capcoki ekbakevi patjuf gafaca ihiru og zudelowu diwail.', 'https://via.placeholder.com/502x439/B88/fff/?text=undefined', '2020-05-29 04:12:15'),
(81, 11, 38, -122, '1', 'Go ca lesizuse juptupcek udevilepu ajhen so fuwoj desa ni bajowu ma ham loncimoc limenov.', 'https://via.placeholder.com/373x365/83B/fff/?text=undefined', '2022-09-12 20:55:18'),
(82, 1, 38, -122, '3', 'Hoazvof viuca ce isa cevet safuroguw hifpos ehidemjo epulet cuvum vanhed ril oplabjet gowozelej hu ukmuve.', 'https://via.placeholder.com/494x450/538/fff/?text=undefined', '2020-09-16 18:41:22'),
(83, 22, 38, -122, '5', 'Edpizruk jobpic veve hetat paubi nomdirut baejvi jawu gem albopveg hoswotoc aziho se ifapa zimadcow bapvev.', 'https://via.placeholder.com/427x475/B8A/fff/?text=undefined', '2020-12-22 17:53:10'),
(84, 5, 38, -122, '4', 'Vigow lati wuvfal efojonu tap nacevbuc kas sid mub wuh miv idnohfa zis.', 'https://via.placeholder.com/501x454/547/fff/?text=undefined', '2020-07-08 03:31:09'),
(85, 15, 38, -122, '2', 'Tubhamiw ne marulum ofu futan zinwila getefe vavunsev hokaga owapido od meb opunacmam tuzeev bo niv erefoc zojmumo.', 'https://via.placeholder.com/498x445/A88/fff/?text=undefined', '2022-09-18 19:59:51'),
(86, 17, 38, -122, '5', 'Lugtoaji fevnatja tasuh ceulizu kil munofkel ge jahwic bol ofutepak ki cetmem vivja ku pawba.', 'https://via.placeholder.com/463x592/866/fff/?text=undefined', '2020-05-27 02:23:52'),
(87, 47, 38, -122, '1', 'Fig gom echa pew aladivwo lapzabac dafjebe gileflo denawte tebu isgek taze jogko en zo.', 'https://via.placeholder.com/479x556/39B/fff/?text=undefined', '2022-06-11 18:57:51'),
(88, 20, 38, -122, '5', 'Oribepeso epollur wewedu aza unju malak zomop ekaeresi berreffa hugeamu gurzinin ujfug unrok bu etopo lukiv go.', 'https://via.placeholder.com/431x502/39A/fff/?text=undefined', '2020-09-15 05:14:52'),
(89, 31, 38, -122, '3', 'Feh gitlun gilha suev cof miahkor ana alizafe ho gejpojoj po uw de fosi.', 'https://via.placeholder.com/414x380/495/fff/?text=undefined', '2022-05-02 19:22:08'),
(90, 26, 38, -122, '4', 'Pisapu sa we alusa dedaw ihoogafuh vum cebum hecnih si dek palupmer vihpejwin vit dun izilujwu hejavdaw.', 'https://via.placeholder.com/388x580/75B/fff/?text=undefined', '2021-04-07 00:23:30'),
(91, 50, 38, -122, '3', 'Imiwis kange noko rufnuwken ceahvu nallankid gifindof som upufaad olepaje zakiz wib.', 'https://via.placeholder.com/363x547/B69/fff/?text=undefined', '2022-04-30 06:39:40'),
(92, 44, 38, -122, '4', 'Gu cuj wivjizo ducaco inti zi zarawop se emwo himace wekvawre dariku zupul rozgoad ufa melbeho.', 'https://via.placeholder.com/362x573/878/fff/?text=undefined', '2022-03-18 14:40:24'),
(93, 49, 38, -122, '5', 'Kondok pacsov aka kafeno nougzu ifpemani gutak ucsome fiafa kusa fufofono sajaob jok rub tesa omdutuce upo fetlew.', 'https://via.placeholder.com/372x453/B86/fff/?text=undefined', '2020-05-15 13:30:22'),
(94, 13, 38, -122, '1', 'Hedasa tu dim mucokfu ne ib di jinij se zaroit ojije wu nutog suhfoha ebaemibir ada azu.', 'https://via.placeholder.com/549x576/687/fff/?text=undefined', '2021-01-01 04:49:34'),
(95, 5, 38, -122, '4', 'Loet raddozzin etmed lis mi tewoif eti sodircij ilrom bakdidso rihum ged vaur cufbo.', 'https://via.placeholder.com/586x365/8A7/fff/?text=undefined', '2020-06-19 01:41:07'),
(96, 23, 38, -122, '5', 'Pijibe idi uk jozus bawjob hesannu cazeub kegba fe kuwo gimsid asoanice bemefo ih hu livogubom ojkilim.', 'https://via.placeholder.com/503x522/A78/fff/?text=undefined', '2020-08-11 17:17:45'),
(97, 40, 38, -122, '3', 'Lufhitira te fuvzom sum saiti te vabkim ureet olniadi vebonva ribe damliw wevtam ludi ewuwa gef go pi.', 'https://via.placeholder.com/588x444/B3B/fff/?text=undefined', '2020-01-20 18:53:34'),
(98, 7, 38, -122, '3', 'Romap jizrovcu arhucte vunmudi lozwubove ti cosawco temid lezepmik osmu lapwunuz amupefaw vitagi jep bazoh japvih.', 'https://via.placeholder.com/582x442/8A5/fff/?text=undefined', '2021-06-17 21:33:30'),
(99, 19, 38, -122, '4', 'Johtab icenew dewab ig sus caatueca zeka be des woluv limaci sul odvo kic.', 'https://via.placeholder.com/389x503/996/fff/?text=undefined', '2021-07-01 08:01:21'),
(100, 46, 38, -122, '1', 'Rokicas ze jazpat tupos hufijguj hiw raler ohpa pimmadmi updaeti guc ziw ohano hakin zatkoswu.', 'https://via.placeholder.com/535x536/3AB/fff/?text=undefined', '2020-04-19 06:30:56'),
(101, 26, 38, -122, '4', 'Pijajmit bo za cu tinessi zifohmu rosu kallames curceclon zin darabru bavisded.', 'https://via.placeholder.com/523x503/5A9/fff/?text=undefined', '2020-08-07 16:57:56'),
(102, 50, 38, -122, '3', 'Jiw giitjew tucvimbur nodube nepemi muzut ape de jalmoile wioc sat nowajcod tef wipufutis jabeje jovem su rombeg.', 'https://via.placeholder.com/446x501/538/fff/?text=undefined', '2021-03-08 07:35:53'),
(103, 35, 38, -122, '1', 'Weh jas li ropmalfa ziwu agoozaoko igi laokenaz lodcinap ikawobuh new ote uvoben tuc ewaes tawbe.', 'https://via.placeholder.com/500x512/BA9/fff/?text=undefined', '2020-06-27 20:07:43'),
(104, 3, 38, -122, '2', 'His uka haimo ragsup uc soznocefa fuhhoc usunih dapiv fi gos binepmu.', 'https://via.placeholder.com/390x458/56B/fff/?text=undefined', '2021-04-08 18:18:08'),
(105, 4, 38, -122, '2', 'Bo suwubvo muvlum dovfojig mez lac nu eczibguj foniv ga totvirum rir cig egwantul.', 'https://via.placeholder.com/351x359/5A6/fff/?text=undefined', '2022-05-08 02:35:08'),
(106, 33, 38, -122, '2', 'Runfiku baknamcaw fomu gu cewocsaw meh wim gahelhu ridnuus dukcif cotose wabpani wi uhu loufawup.', 'https://via.placeholder.com/563x369/536/fff/?text=undefined', '2020-04-23 07:56:08'),
(107, 46, 38, -122, '3', 'Neumimuw widto cejkoflev cerne dihzefac fu tarpo roavo wilwaf kuvpo vazcobo ridaru evuzuftom ez curcubsaj ukaubeegi.', 'https://via.placeholder.com/392x356/549/fff/?text=undefined', '2022-10-21 03:56:29'),
(108, 48, 38, -122, '3', 'Maz evhec hoimob ceralev fo abhoktap enrag el gamowabi edebi bocitmeh hiuvuih ir pifiv fimjowi sij.', 'https://via.placeholder.com/487x553/334/fff/?text=undefined', '2020-02-24 11:06:51'),
(109, 4, 38, -122, '5', 'Mozpo ficfeb hidsavzu lakwaw ihfawu liab hoav ezifoto acadap noscafulu caghe marafesa zesote olu fig zirohi.', 'https://via.placeholder.com/580x373/B34/fff/?text=undefined', '2022-02-08 02:54:30'),
(110, 1, 38, -122, '2', 'Oma wihu fudjaase likzu ubeagahar gaociji jazji webemi nemopo zagnipu ihawed ihar nor cu we zu.', 'https://via.placeholder.com/399x544/76B/fff/?text=undefined', '2020-07-16 22:44:36'),
(111, 36, 38, -122, '4', 'Wofepob ejdihu has tifimi na vogegcok fakotep umoujefec bicnibu awokeronu gaho tuzi gilfiaze tevi rojabu kupulef jikefnep.', 'https://via.placeholder.com/418x510/835/fff/?text=undefined', '2020-05-10 20:32:25'),
(112, 13, 38, -122, '4', 'Te pepisa pigucus womcaznid hopig luzgu gago wi juhinom sileh lilopac pajewa vi rompiz vejubaj bozizru owubi bohun.', 'https://via.placeholder.com/395x472/B74/fff/?text=undefined', '2022-06-15 09:55:52'),
(113, 26, 38, -122, '3', 'Akacob riir johom fazkuh jog katwohje kieco tibem raddonam watgud dalperof debhuvo jam.', 'https://via.placeholder.com/600x422/734/fff/?text=undefined', '2020-12-03 13:43:22'),
(114, 27, 38, -122, '4', 'Tewfi itenubef ceton poisji pu kurep nat hesrobek aba ina afaruczok holhoza banwu rejeez jirazha isidima woz.', 'https://via.placeholder.com/440x496/9B5/fff/?text=undefined', '2020-06-08 05:48:36'),
(115, 27, 38, -122, '3', 'Dawectuk oku usa vukakbe zaifofi sob lijwecfo sulba zonipgaj pesos derfalbi bi.', 'https://via.placeholder.com/422x444/88A/fff/?text=undefined', '2021-12-28 22:25:31'),
(116, 24, 38, -123, '5', 'Git vovzuv tajihjuw tici zuscedu rafisog wudgek raicuub or motgo wuwlow mueluuba sopaju pip.', 'https://via.placeholder.com/435x431/A49/fff/?text=undefined', '2021-09-29 02:17:38'),
(117, 49, 38, -122, '1', 'Son jov paku walies fuocvun vivnor go pem felpo wis ifi cemaf tok sot ma.', 'https://via.placeholder.com/589x533/6AB/fff/?text=undefined', '2020-12-14 03:21:26'),
(118, 28, 38, -122, '4', 'Tarpovob gu cuh eswocgu zewase bu hecavle landi su du sofo uglu piaru ba.', 'https://via.placeholder.com/571x561/5B4/fff/?text=undefined', '2022-09-22 00:45:20'),
(119, 47, 38, -122, '2', 'Ih fuptudhij jetcoswek heef wib ruzji riso lofu zonawag welon usah taebfi obugone pudrub nog os fovnogno gikunsi.', 'https://via.placeholder.com/359x504/363/fff/?text=undefined', '2020-08-07 23:55:44'),
(120, 46, 38, -123, '4', 'Odvuvte deip seves tiho ud kanimebe acgodi jemuptog mev awu ecidav ged.', 'https://via.placeholder.com/583x528/354/fff/?text=undefined', '2020-08-09 22:14:55'),
(121, 14, 38, -122, '1', 'Ubsabrop alorod itazeki weet fami nu kijatitu evo pil pur edu evo debduipe.', 'https://via.placeholder.com/515x586/A55/fff/?text=undefined', '2021-06-14 10:28:54'),
(122, 6, 38, -122, '2', 'Ok he zav ivi meotwe gov wajuv jidtulot miuhune eg kovped gaugdi edsatwa afi liheaf kotuha tohsa hubjibet.', 'https://via.placeholder.com/387x468/33A/fff/?text=undefined', '2020-05-27 22:25:09'),
(123, 43, 38, -122, '1', 'Ebo uzhet sud zi pelol vucu vus jewaipo ded zopu pavar cugaot zompet tufef seowu tus.', 'https://via.placeholder.com/586x376/4B6/fff/?text=undefined', '2021-07-24 00:14:19'),
(124, 40, 38, -122, '5', 'Ememe unjul fidanva kakafmov ej kuktukha bubfiz nithulzap waawe junekvar gowija vadwiw ju woim lonwusej kicu seza on.', 'https://via.placeholder.com/556x515/834/fff/?text=undefined', '2022-03-26 18:52:42'),
(125, 1, 38, -122, '5', 'Najinahit lukduke uwumocle ce fonabsik hilug lios mivleow genuji vafguez wilos cokrog kagevgoj.', 'https://via.placeholder.com/377x384/69A/fff/?text=undefined', '2020-11-03 01:48:59'),
(126, 21, 38, -122, '5', 'Modte zubuw favotos licfof descoldiz giginvu zizit ad pofosob san id cerdihop gilsucdup wuskum neek.', 'https://via.placeholder.com/350x400/747/fff/?text=undefined', '2021-01-10 09:40:17'),
(127, 32, 38, -123, '1', 'Gauco jibtefi ofowodkez wuz talhi pa tem puhwize hu wuatnu suli ron nu ciklire paslujur gico.', 'https://via.placeholder.com/440x357/8AB/fff/?text=undefined', '2020-11-10 12:33:20'),
(128, 33, 38, -122, '5', 'Ijda fopezed hov rovajebik agufe jipar ohun mavujov usvib ralsiom dedada mag so belifo zomwi decozci jikizjo.', 'https://via.placeholder.com/375x426/675/fff/?text=undefined', '2021-12-06 04:06:03'),
(129, 35, 38, -122, '1', 'Fo umadupgab wopalfam pa awokuhro ubkodo dat zipugu timaga vobuw ohe mawladmic kiepi am opadel.', 'https://via.placeholder.com/384x511/566/fff/?text=undefined', '2020-06-14 05:31:50'),
(130, 8, 38, -122, '2', 'Kambage atfete gug kof kojru jenarap gap cej kawinjep beke rupcono vav farmihpef magabkiz lopo okiboetu tisauli.', 'https://via.placeholder.com/360x400/366/fff/?text=undefined', '2021-12-13 11:40:58'),
(131, 31, 38, -122, '2', 'Hozgova upo wob lirzuv lutwiwe keaz cijhah mugpana lerwi lazfazvaw wic sukbah teccaf nica bi zu idkem ezojo.', 'https://via.placeholder.com/540x541/847/fff/?text=undefined', '2021-11-15 09:07:49'),
(132, 7, 38, -122, '3', 'Uhibeboh picoes kusanesov ojebas joceudu penuzva lamiphaf tol jacewo bes lutguj edtaf.', 'https://via.placeholder.com/475x562/49B/fff/?text=undefined', '2021-12-11 23:47:01'),
(133, 35, 38, -122, '1', 'Ugav haswiciv se ar kitif nuh raginguj oja iwovu oli agfumac el justalpes up zinik niona zusnowa gafvafoz.', 'https://via.placeholder.com/505x517/B85/fff/?text=undefined', '2022-03-11 06:02:27'),
(134, 36, 38, -122, '5', 'Vo wiv cug wihojpew erfuv gulmaonu iko ip dubfero sosib ciogibu fuz nim so.', 'https://via.placeholder.com/440x573/788/fff/?text=undefined', '2021-11-18 05:14:30'),
(135, 47, 38, -122, '3', 'Zad soev enov uc fat ko ro it wad lompazoj facun kuv ij wekimsa kusla aka.', 'https://via.placeholder.com/470x414/3BB/fff/?text=undefined', '2020-11-18 04:47:02'),
(136, 49, 38, -122, '3', 'Oji enwaheto polsirwo guzva rodcijsad wu catikog ezezina vapfa mowor pazbijuc tisonsu dongubtu wowjor tu dukeja imabac.', 'https://via.placeholder.com/372x356/6B3/fff/?text=undefined', '2020-11-29 06:18:00'),
(137, 37, 38, -122, '2', 'Tunmu uz ja dozvuruh el natlik tikow ifeiwtam zoneh rodanu cuobku nizitbi fibjaske su ugruku se wewgoslu suza.', 'https://via.placeholder.com/398x518/ABA/fff/?text=undefined', '2020-04-15 15:41:56'),
(138, 25, 38, -122, '3', 'Punom cawo zazanowu leus to ac higlid wi wuej pa oz watu lusuhvo siuc liflobli uw ohiut se.', 'https://via.placeholder.com/536x386/377/fff/?text=undefined', '2021-03-29 17:00:01'),
(139, 49, 38, -122, '4', 'Ohwe ot lo co udne fuppebeci pumi ikeuwa opowashu gu fuwegub li idgeeb ufosozmuh cebe wu ud.', 'https://via.placeholder.com/404x529/538/fff/?text=undefined', '2020-08-28 07:54:15'),
(140, 20, 38, -122, '4', 'Wimun zos had majdo polpun ke etsebgu bustude ko papaw esculceg ta tihed wavoruja rod dof.', 'https://via.placeholder.com/516x551/56B/fff/?text=undefined', '2021-12-30 05:56:50'),
(141, 50, 38, -122, '2', 'Hiblena gehwaj ebcorjof vo iromit tuljamo bar tew tu saro loson budal kac aslewga iladazem ipzoj poowuvo erkama.', 'https://via.placeholder.com/360x482/57B/fff/?text=undefined', '2022-05-31 06:29:57'),
(142, 36, 38, -122, '4', 'Jemekha pinfekdu cenzeb bib edre wigoc torjome geleszig kotug naskigrep ti weowe re agnivuli setnisuj.', 'https://via.placeholder.com/439x578/B44/fff/?text=undefined', '2021-04-26 21:56:52'),
(143, 32, 38, -122, '2', 'Cieve guelzo ji bap wirevci gepwufzip ariga wo vabneof tij warir ejur.', 'https://via.placeholder.com/462x502/535/fff/?text=undefined', '2020-08-27 16:39:41'),
(144, 34, 38, -122, '4', 'Anago do oc ici del monvi kavana detuma cotju kovterid zeh udeep zaruh mesfuv ivmuama.', 'https://via.placeholder.com/423x363/768/fff/?text=undefined', '2021-05-24 10:51:18'),
(145, 33, 38, -122, '5', 'Car buhnolit cap icarpu basilika zubveine rokufak fudba migguuz anainuho aculebin otnasij ihase ena igahi zivju zijov.', 'https://via.placeholder.com/531x428/BB8/fff/?text=undefined', '2020-07-03 06:19:01'),
(146, 8, 38, -122, '4', 'Nis rezemug ce ufhu socomuk cubo ce guumuruc sog pu soz luherap fahlan viv jeofiwow ohpezto.', 'https://via.placeholder.com/544x580/46A/fff/?text=undefined', '2020-04-19 21:02:11'),
(147, 13, 38, -123, '5', 'Jogvesu etivugew wunejooz vep beg mublod refnina bi duhege japfo ehbu velik nebzoldo lu zoddimuj hazvouj za girrizuw.', 'https://via.placeholder.com/372x580/893/fff/?text=undefined', '2022-08-01 01:26:35'),
(148, 21, 38, -122, '1', 'Fa cizduhmu cufwizevo niophi waszigem iga ikisoc ipakuat emaucha deumi ejre pihi foz co mehsa neet po hatus.', 'https://via.placeholder.com/439x587/BB8/fff/?text=undefined', '2020-04-02 04:45:47'),
(149, 8, 38, -122, '4', 'Muz podroc hom nipesi dilcejloc letipvec ewisug an bi cume cababvu mebkuh tu hontafbar zucpuf.', 'https://via.placeholder.com/447x457/8B4/fff/?text=undefined', '2020-10-10 20:14:47'),
(150, 7, 38, -122, '4', 'Hopicpov rezusloc zikdiaka ri bo abgutow ka cicib tivlu dufpiti jiccodfel fopevajab pic.', 'https://via.placeholder.com/375x414/683/fff/?text=undefined', '2020-12-29 06:10:23'),
(151, 1, 38, -123, '5', 'Ijacec ujiduksup goviri veluuf kohibedu ide suuf lu eli esadiw fo cizbemzu zehup hel oti jezdezi ovmod.', 'https://via.placeholder.com/595x474/A94/fff/?text=undefined', '2020-03-13 11:52:16'),
(152, 14, 38, -122, '5', 'Zaofoho bi onebten bajkosru nu huzwifa junnapwi zeljizav utmep wutwo ibahin hoki zozema lapuhriz jipo saf.', 'https://via.placeholder.com/500x583/A59/fff/?text=undefined', '2022-08-02 03:43:44'),
(153, 22, 38, -122, '1', 'Vip owowo ficego nosuba bunzuvnaf behera ucijuom gagized eto vumanar noh komazve vu zaran falnoc.', 'https://via.placeholder.com/416x564/394/fff/?text=undefined', '2020-05-18 08:37:51'),
(154, 44, 38, -122, '5', 'Wabkamozo gokvip bubihoneg nahudep amabor pelhemcu ecehemnih okueleram jizapgo ijrav ariopaz fu ekwi sulovlem kecew.', 'https://via.placeholder.com/412x553/896/fff/?text=undefined', '2022-02-15 22:38:16'),
(155, 9, 38, -122, '3', 'Tofilu fe heme nokha kipewopaw mupwof mutarne viar lih gubuc ubjo ja vemwellob recejhib wafot ju.', 'https://via.placeholder.com/467x511/867/fff/?text=undefined', '2020-09-20 00:14:42'),
(156, 17, 38, -122, '1', 'Focju wab avu rovamah irbevhun vabrolcur aw run dierih ijesa vu copu.', 'https://via.placeholder.com/387x413/A3B/fff/?text=undefined', '2022-09-20 14:41:44'),
(157, 12, 38, -122, '3', 'Muvih dev niecne hi gez cipa kokro elokaib ma gutzus nopak ucfug gem.', 'https://via.placeholder.com/369x592/747/fff/?text=undefined', '2022-01-05 13:27:29'),
(158, 48, 38, -122, '2', 'Ru fa rovoraha zo de wune niziva cuassu pihih jigora ho nehub vemjudemi zib tedje or akzi.', 'https://via.placeholder.com/403x368/8B7/fff/?text=undefined', '2021-12-16 18:16:41'),
(159, 32, 38, -122, '2', 'Vocifka pudzaj zipzi no saca zeda dukercab wasorakej jugjacig pofje poz cewkisno oz jefnerpub.', 'https://via.placeholder.com/409x411/684/fff/?text=undefined', '2021-02-08 20:41:37'),
(160, 18, 38, -122, '5', 'Kaccu cuc zajo rezmuz seot ob goklomomi wuh diz lewsurjez uhiabona ig tah dewmo.', 'https://via.placeholder.com/372x436/4A4/fff/?text=undefined', '2020-12-16 20:37:46'),
(161, 32, 38, -123, '1', 'Foju kujo nizpueni sedavomek akra asidza kugo hankun suz usasumra azfese tew tuwvace miak fuko ni lepes.', 'https://via.placeholder.com/479x560/738/fff/?text=undefined', '2022-08-27 11:21:16'),
(162, 21, 38, -122, '3', 'Awakij zin nibjen kihowiv ojiszam nen duskahlu kakzubmol upucla fup beznu ebfif asopusli uc.', 'https://via.placeholder.com/372x392/655/fff/?text=undefined', '2020-03-24 18:55:45'),
(163, 13, 38, -122, '5', 'Difuddo pi ke ga zucov zetab laseso ceihora vu foovufuc mek dagzetwo witidut taomiod zaptuszi nede dub.', 'https://via.placeholder.com/400x452/BB4/fff/?text=undefined', '2022-02-21 00:25:38'),
(164, 17, 38, -122, '4', 'Jiakeis batbaltu em goj kokupeg bugivsic te refveg jer fericvit ibotetmaf doknib jodej banbehlas madpe wor dogor.', 'https://via.placeholder.com/586x587/B46/fff/?text=undefined', '2021-03-03 13:17:19'),
(165, 33, 38, -122, '2', 'Afehoeg zewuwe sukzavu beci jojip um wigo vopij ni nem pes uciep epbin lo nilrikgo ilasevuj ichad.', 'https://via.placeholder.com/582x498/4B8/fff/?text=undefined', '2020-06-15 15:41:07'),
(166, 38, 38, -122, '2', 'Cihuna inabuvap ki do zipra saspi ewaz sibi wugupedo ov wapuson uh uciluhfa abzet evucaane.', 'https://via.placeholder.com/512x495/834/fff/?text=undefined', '2021-11-16 02:11:21'),
(167, 13, 38, -122, '5', 'Muakulu nukorpi nal wuiwmab ko mahimi un hizibo hajre ezozobiku zuz mabnas of resiot basos muwe vu kezujcer.', 'https://via.placeholder.com/578x410/3B6/fff/?text=undefined', '2020-02-25 01:01:38'),
(168, 12, 38, -122, '3', 'Pep ti rabob win odvawmoh ah jabfafte imtejiw tomonmi tibca ramma owacugor ga tozotpok tikattu hu.', 'https://via.placeholder.com/473x358/488/fff/?text=undefined', '2021-11-01 22:11:38'),
(169, 32, 38, -122, '2', 'Simevgeb zievlij uftevtot du guc donhej veivuida ihefi kihji wobhuvgos wusaj ar ma retov so.', 'https://via.placeholder.com/538x549/A98/fff/?text=undefined', '2021-02-12 21:21:01'),
(170, 2, 38, -122, '4', 'Dumam av igulfid dotdiwmak keuhic wiji ozgoha ebfah cosjuze difcikpe avdowki azlemmip dalot liduv je nuup.', 'https://via.placeholder.com/357x412/663/fff/?text=undefined', '2020-08-07 06:54:51'),
(171, 42, 38, -122, '5', 'Ebo ejuopfi udenos ozgelog navto negamoli og siw oto eluba fejha tabeb.', 'https://via.placeholder.com/431x371/666/fff/?text=undefined', '2021-12-01 00:21:44'),
(172, 47, 38, -123, '5', 'Onoiba nih wa asro ra konpos niwe ota riiz cozpip buzrocwiv fof zemvatwin do oh pup mese wari.', 'https://via.placeholder.com/535x545/89B/fff/?text=undefined', '2020-05-30 22:33:55'),
(173, 27, 38, -122, '3', 'Noksa ifkoju ce jalu gajhamvo wuj caitowed bobul agofeziku su okma fiz lahiggad ji.', 'https://via.placeholder.com/376x550/6BA/fff/?text=undefined', '2022-05-26 12:50:09'),
(174, 6, 38, -122, '3', 'Tafat emili huwdegu ejec rivnudpa okahesnig evadat dotaffuv tisnu edip lubnu lub jumaz malwato ot.', 'https://via.placeholder.com/432x357/45A/fff/?text=undefined', '2021-05-30 01:09:22'),
(175, 7, 38, -122, '1', 'Punup suge re tuz dilulte sorimul asu zu saizapi ki hezcawdo am di ibwulog po vud sozuhpel.', 'https://via.placeholder.com/538x567/568/fff/?text=undefined', '2022-03-25 23:44:34'),
(176, 37, 38, -122, '5', 'Kozsa bore kubur wasso wijco vagkog pucaz hip rezawici ewkicen sumewu vewsa huke idi.', 'https://via.placeholder.com/587x428/8B4/fff/?text=undefined', '2020-12-25 21:16:23'),
(177, 7, 38, -122, '2', 'Vosel nursop zotsu usuri rahu nitic weinweh hudun sen jiv vecofud wakata join laugeija betoga wado.', 'https://via.placeholder.com/352x377/A49/fff/?text=undefined', '2022-06-08 04:20:57'),
(178, 28, 38, -122, '2', 'Piul naihape ivitas ro uhpizow woza kucuh kolwop er dohoh vafcom vof wowsa tokeba wi budi usaha vamihe.', 'https://via.placeholder.com/559x522/889/fff/?text=undefined', '2021-07-18 05:23:06'),
(179, 2, 38, -122, '2', 'Romij pumin gujal defadbaf lunrinjid ufi re widof gem os dap ciodese his.', 'https://via.placeholder.com/573x419/464/fff/?text=undefined', '2020-10-09 18:31:51'),
(180, 50, 38, -122, '1', 'Wodahiwi we atmi valafcul sihazu osiegcu ihuopa ipose gop ra cu tur we dire wunuepi onzajla.', 'https://via.placeholder.com/361x401/379/fff/?text=undefined', '2022-09-16 18:41:29'),
(181, 48, 38, -122, '2', 'Um ikwij torama ijecano hewki sibuvuz buwazhi ve tevij botmegud zapuv oda ohu bogac.', 'https://via.placeholder.com/519x513/985/fff/?text=undefined', '2022-04-14 11:22:46'),
(182, 17, 38, -122, '4', 'Ka diwah acfued ja degge neh mone teb maf ja pejroweg juazasan lofdagot kot gumuf ifohvum.', 'https://via.placeholder.com/422x415/5B3/fff/?text=undefined', '2021-09-22 14:59:09'),
(183, 35, 38, -122, '2', 'Asarna wirdu bubga fuefotoh ivcuc jekabko luikico olfe bi lo tuminujif ig.', 'https://via.placeholder.com/502x353/458/fff/?text=undefined', '2020-05-20 10:37:27'),
(184, 34, 38, -122, '3', 'Mutebeju orvevpa tom memsuj ruoc baowdi mawecli esedav nu dijiv ipate ini zapu tadje.', 'https://via.placeholder.com/444x433/348/fff/?text=undefined', '2022-07-09 03:31:39'),
(185, 50, 38, -122, '4', 'Jiddezjo ofhe upemef mec hon la duj huti heb rubac kopboza is ofanawek cap hic odadotgij ihi.', 'https://via.placeholder.com/533x376/853/fff/?text=undefined', '2022-04-08 14:24:37'),
(186, 15, 38, -122, '2', 'Wi ohoem zivalvol od idmo jofe nuhtef wacoj luhowhek nu gin iz.', 'https://via.placeholder.com/500x361/457/fff/?text=undefined', '2021-05-02 18:40:09'),
(187, 26, 38, -122, '4', 'Hituw kif gejieci nirisce vejin diw wicemic zaafje ize doozafut ufocuf kojpimbor muwkumu wizode.', 'https://via.placeholder.com/419x376/843/fff/?text=undefined', '2022-04-01 14:02:34'),
(188, 21, 38, -122, '2', 'Nikihmo kuzulujuj lepwaale ge egli dapakco ti li ebhu al fiv rafed fof ce.', 'https://via.placeholder.com/465x549/A99/fff/?text=undefined', '2021-01-31 02:24:44'),
(189, 20, 38, -122, '5', 'Peze revana mof lehep tude miajowa zite uw upuihona ba dibeg uscu.', 'https://via.placeholder.com/359x399/688/fff/?text=undefined', '2020-03-01 02:20:19'),
(190, 27, 38, -122, '1', 'Getkov mi egzarwuk zel fapwe akvebve eri ji zowesu wiwkuksu ju dasutnot gufhos dethat vewpol mevujo si.', 'https://via.placeholder.com/599x530/96A/fff/?text=undefined', '2020-11-07 14:41:21'),
(191, 44, 38, -122, '1', 'Kotigpe hupa ba su izjov fen wipudve ovboj lafnuhor ihada zuvvo ta rez zozuoli zowagboj.', 'https://via.placeholder.com/378x363/4B8/fff/?text=undefined', '2020-06-09 08:14:07'),
(192, 50, 38, -122, '2', 'Egceeb jardaj ser diku ni lulsupvo fewouf toad etalo badnomo mulaku cumju rora kigsikimi pizfac cinsimgu.', 'https://via.placeholder.com/376x542/843/fff/?text=undefined', '2022-08-14 02:01:45'),
(193, 1, 38, -122, '1', 'Kafuz am nu uvnaafe mivmurep bij holucwe riwdap pumrijtic pug asejubcoc bo silor.', 'https://via.placeholder.com/371x461/9AB/fff/?text=undefined', '2020-07-04 06:17:45'),
(194, 44, 38, -122, '3', 'Um ehzidnih cogopwe pisepi oz wopizwow sidva vew eciko je oz apbutku wevowco.', 'https://via.placeholder.com/506x365/3A9/fff/?text=undefined', '2022-09-08 17:12:38'),
(195, 9, 38, -123, '4', 'Hapbe ezhe buczuopi cirifab lagto id oco ika pavdavci imo kob kulzanla zericogot asomakofo.', 'https://via.placeholder.com/517x581/A46/fff/?text=undefined', '2022-10-11 16:26:42'),
(196, 28, 38, -122, '2', 'Ravtu ro pun ig uri rolni vudti piata efo otu nimed hipgoci gegew pi farmitas og.', 'https://via.placeholder.com/584x549/77A/fff/?text=undefined', '2022-08-03 01:39:13'),
(197, 28, 38, -122, '1', 'Mupa oki jubrahi zaz zaf jul ok uweci saajdap kekviw we ri odoutse.', 'https://via.placeholder.com/495x592/7B6/fff/?text=undefined', '2021-08-07 03:06:15'),
(198, 16, 38, -122, '1', 'Ivfes gingeot no nuta bozeko siduci kicpebode wo fuvo ezo hi dabledec vuf ga jawurro jugdu lozaf.', 'https://via.placeholder.com/412x435/875/fff/?text=undefined', '2021-09-26 15:23:59'),
(199, 2, 38, -122, '3', 'Dal zecpem tev resembis hewonze pokunfuf dumvi wog korsepob rokilmat getuz oz wamolavad utkeslil wis uravi.', 'https://via.placeholder.com/556x367/38A/fff/?text=undefined', '2021-03-16 18:45:18'),
(200, 15, 38, -122, '3', 'Wovsop wu fim fo awu ojolu ne monreptu ceta bu ajucuj doomu.', 'https://via.placeholder.com/436x409/4A6/fff/?text=undefined', '2020-02-20 03:57:59'),
(201, 5, 38, -122, '3', 'Amniv zeb cehuzpo mumposor nujuh gapac pi hopehrif katvu zam awe gagke kan muk.', 'https://via.placeholder.com/361x428/AB8/fff/?text=undefined', '2022-01-28 12:00:36'),
(202, 5, 38, -122, '2', 'Opali gihaek jehob war fuh eharefel osoru ganzer kidov vusrobof doj jegbubkat ite olfev.', 'https://via.placeholder.com/505x443/5A6/fff/?text=undefined', '2021-09-07 03:53:43'),
(203, 45, 38, -123, '4', 'Zon sungos azoezipa guvtatsar iwura losad ru onmaju on vi vik dugbupam kad mam geim ubeluf ilo.', 'https://via.placeholder.com/599x539/49B/fff/?text=undefined', '2022-10-22 21:18:18'),
(204, 21, 38, -122, '1', 'Nav fugaco osuruso juhzav fi zibse el ho we vun od lo da arevar pefodcok.', 'https://via.placeholder.com/479x486/387/fff/?text=undefined', '2022-04-27 00:01:39'),
(205, 27, 38, -122, '2', 'Assiura kaul mugbi nibsivzu catuj tejubrup bittirzen wufbe tonoido bafnoig ar taknopcu jecek vedusa iblumo zalemoc lig wec.', 'https://via.placeholder.com/351x559/A35/fff/?text=undefined', '2022-04-02 22:20:23'),
(206, 42, 38, -122, '3', 'Komaja pibkic fohbemog vamcuhku baf wovfuzmuz kobe renti eje iwiij abice oze geonufo.', 'https://via.placeholder.com/478x493/67B/fff/?text=undefined', '2020-12-20 03:12:50'),
(207, 2, 38, -122, '4', 'Tahafe sobveja wadpupar ameki lef vavcudsoj sadok uzeed sipafoc dasaf tiud ifrim ulava.', 'https://via.placeholder.com/468x502/7BB/fff/?text=undefined', '2021-01-22 23:20:29'),
(208, 8, 38, -122, '4', 'Hikipju epgos hej usenigif tumvo cu gi umgupo piperi ruiwilu na kihiddol.', 'https://via.placeholder.com/475x395/87A/fff/?text=undefined', '2020-05-02 01:30:30'),
(209, 50, 38, -122, '2', 'Todvizmad nivocneg mag kiwomiw lim hisagoca peboji lufok ajtic jagcu ewive atetub bof unwasas.', 'https://via.placeholder.com/478x403/898/fff/?text=undefined', '2022-04-28 22:05:42'),
(210, 19, 38, -122, '5', 'Fobojebo watigip mus li gem nam mi sugbigjij wocuude ed ev henpa mew.', 'https://via.placeholder.com/444x529/768/fff/?text=undefined', '2022-10-02 12:12:30'),
(211, 12, 38, -122, '4', 'Zuh ku julkisu ajgabo caho fer cuwkuva kupgiji erzifen mik gazu sopnu kusaco.', 'https://via.placeholder.com/554x434/A98/fff/?text=undefined', '2021-07-08 09:30:02'),
(212, 25, 38, -122, '1', 'Meonnid gigak neidzej oga isa sesigoc me bepobbe jur zukdur gerpa ir fessuhwow fiw levjijle ujrosal.', 'https://via.placeholder.com/507x589/BBB/fff/?text=undefined', '2021-09-05 14:13:04'),
(213, 45, 38, -123, '5', 'Ackout gutuk ibetaj hawub javekhad ad fij abo jerubaor ji ba aplod wopju pul kok devir biberdi.', 'https://via.placeholder.com/438x489/A93/fff/?text=undefined', '2020-09-06 10:38:39'),
(214, 42, 38, -122, '4', 'Reipte wihaaz dar wihdev monfod lenja ko pi gi evezopvu furaceda duhtec makerir tigopino redrophow.', 'https://via.placeholder.com/598x504/37A/fff/?text=undefined', '2020-07-08 21:54:58'),
(215, 24, 38, -123, '2', 'Sivrawed obenarro ze rihdaw ofcemu lanoc we diwaluh lupe lar bescon beriw.', 'https://via.placeholder.com/367x350/379/fff/?text=undefined', '2021-01-19 04:47:40'),
(216, 21, 38, -122, '2', 'Jan pongod limvij kazuvi pongul wacozi ser tod ro sedniv vesferzuc neldom inu zo gi.', 'https://via.placeholder.com/569x592/A3B/fff/?text=undefined', '2020-05-07 07:46:02'),
(217, 6, 38, -122, '5', 'Ik na jilnaw takad etruj ma sorfipito ku wesmawan mokapi ur gokekah.', 'https://via.placeholder.com/436x481/6B6/fff/?text=undefined', '2020-09-20 15:00:33'),
(218, 8, 38, -122, '5', 'Pilmogwob vis tojouha panu uv nat camwokim holgavuf wi hi mijosu emisece falumho sebpor zol lohili.', 'https://via.placeholder.com/398x391/66B/fff/?text=undefined', '2021-03-16 01:34:43'),
(219, 22, 38, -122, '1', 'Aw gisposkan alboc wod puvu di zeah mejrokac agu wezjoofu joovako biisohu.', 'https://via.placeholder.com/365x575/8BA/fff/?text=undefined', '2020-11-18 04:04:22'),
(220, 49, 38, -122, '4', 'Buhil fif macegha do raf buuc ihuzere vohpizu jutuw sulpeid sodwios woz.', 'https://via.placeholder.com/485x364/A87/fff/?text=undefined', '2022-01-07 14:51:49'),
(221, 30, 38, -122, '3', 'Koiwa fopu no ha vazef mudwal ifurezse ubabeja pima idvo cavlicno hug.', 'https://via.placeholder.com/507x500/B79/fff/?text=undefined', '2022-07-12 08:19:32'),
(222, 18, 38, -122, '4', 'Meruc somwu di gevubwo eg fepuscu ule sil sugedide tuh mobgi ga mize mawro zesace filug zaz.', 'https://via.placeholder.com/400x389/5BB/fff/?text=undefined', '2020-12-29 18:14:27'),
(223, 5, 38, -122, '1', 'Ta ti jek og pos citte serupa het fat avini ossalfaz ra fed.', 'https://via.placeholder.com/548x352/5B6/fff/?text=undefined', '2021-06-05 05:51:46'),
(224, 42, 38, -122, '3', 'Zowud ponihire pedevu idesoaz mimi cewugfif ez fifra kosib kuv feh dib.', 'https://via.placeholder.com/578x371/BBA/fff/?text=undefined', '2021-02-08 23:12:20'),
(225, 20, 38, -122, '5', 'Dipgec hojegis akimo uvlobfes cabuwu rudji rure picuh tizivup agumov refsob molamov.', 'https://via.placeholder.com/538x538/63A/fff/?text=undefined', '2021-11-04 14:28:13'),
(226, 45, 38, -123, '4', 'Ip hup an cohino vu ti tikarome sadko kawciluj givosok iruwogeda jufere dat ci.', 'https://via.placeholder.com/449x548/5A5/fff/?text=undefined', '2021-08-02 00:25:24'),
(227, 41, 38, -122, '2', 'Nana kariw huakaiw paseni is wum jirwacwa fe jim je cez bohuko vagkal.', 'https://via.placeholder.com/583x507/B98/fff/?text=undefined', '2022-08-29 08:53:05'),
(228, 50, 38, -122, '5', 'Jeswara nefgamo wilnemzo opihire rec cibufik dam egji ki aw mothoj memwaub luhmuum abje kingike bihocwis.', 'https://via.placeholder.com/498x545/A9B/fff/?text=undefined', '2021-02-24 10:32:05'),
(229, 42, 38, -122, '2', 'Kedave he fi vej inizazor jibohuaf kivecrol del vu ogesegog huvbon esiukcoh oruzawhaj toiwirar ci.', 'https://via.placeholder.com/498x596/354/fff/?text=undefined', '2021-12-28 03:41:28'),
(230, 29, 38, -122, '4', 'Puwe jercawi lotilve osu atiwisur woriz vilowud zufoj ju bo belak ugwa.', 'https://via.placeholder.com/476x422/985/fff/?text=undefined', '2021-07-23 19:17:43'),
(231, 44, 38, -122, '2', 'Daof gev wohum gagacve ocele tos ani vezbujtub usluv hemkuv edti lebeb gokpuboh da mo gen fezkaha nokof.', 'https://via.placeholder.com/441x520/689/fff/?text=undefined', '2021-03-10 21:30:12'),
(232, 47, 38, -122, '3', 'Ti or jaupunac erba lep jefvuus kaznupak woagakom zeloca lesimi orbuhe binujocu umdes.', 'https://via.placeholder.com/454x366/AAB/fff/?text=undefined', '2020-02-11 10:01:28'),
(233, 7, 38, -123, '4', 'Goc ju rapif giz be sikwo biowasa diwjehik few jaca vol ezrijel lekumu suunalu usi idecucob.', 'https://via.placeholder.com/548x460/85A/fff/?text=undefined', '2020-01-26 07:45:20'),
(234, 40, 38, -122, '4', 'Jis ci helmud wipziko jekvo ijabosuk tubo hi lal tet fev hiforil kap.', 'https://via.placeholder.com/524x563/B64/fff/?text=undefined', '2021-10-26 02:14:50'),
(235, 50, 38, -122, '2', 'Tokpe ewula zawkeva fusernor ecesu uh zauh asu bazherre lejson zumnil wiwfu widofmi ucuvoci ci cimu olupokwu.', 'https://via.placeholder.com/535x582/7B6/fff/?text=undefined', '2022-03-16 17:03:45'),
(236, 15, 38, -122, '4', 'Fid zadeni bilupiw hahdof na fu bemmidsic cekif fu omeigav fiej gawun nar.', 'https://via.placeholder.com/467x359/497/fff/?text=undefined', '2021-04-14 18:20:28'),
(237, 12, 38, -123, '5', 'Kaz eli evkec nufocte weplofame hutuf gal jegepub vozeb ab no cohnih vin losol wilis.', 'https://via.placeholder.com/392x425/A95/fff/?text=undefined', '2022-08-21 20:48:54'),
(238, 17, 38, -122, '2', 'Agbu mejad sibbosmir fegwes agpom kujig wiw kobotof vulap sehotuog sivlumsog ohka jabgunloh evedievi wij.', 'https://via.placeholder.com/580x471/669/fff/?text=undefined', '2020-06-03 09:12:18'),
(239, 41, 38, -122, '5', 'Us ne gut lo embab wu pa wapcew vofa we pegbew bug peseuwo bokatigef vifavmul ocapover web.', 'https://via.placeholder.com/436x357/74A/fff/?text=undefined', '2021-05-10 01:09:04'),
(240, 38, 38, -122, '3', 'Mu kul natak jeuz jijril doberucer ijjab volnaj aguisudeh ijene fujkahzub jih.', 'https://via.placeholder.com/430x494/867/fff/?text=undefined', '2020-03-13 23:49:29'),
(241, 18, 38, -122, '4', 'Daftofu wumited tiguwu ifojula ecpor umigojka atigto cuup se macidom wa icuozufo zinlefu ufodigvah ruuw pimo.', 'https://via.placeholder.com/470x400/465/fff/?text=undefined', '2020-07-25 17:38:51'),
(242, 1, 38, -122, '1', 'Boosica cap negwus ged wunid ogute ibucane buusekis da guf tesawo vu.', 'https://via.placeholder.com/356x587/498/fff/?text=undefined', '2021-06-02 20:47:21'),
(243, 50, 38, -123, '2', 'Ukerir zul lodalu ki hokru toizibe vide gub vi kepbici ilbet ri niwuzvaw ta vizu befuj ticapap.', 'https://via.placeholder.com/416x531/AA9/fff/?text=undefined', '2020-10-27 12:39:56'),
(244, 50, 38, -122, '5', 'Acgishus uk ija jacen kime ok bo kabo bezrika gu tivi wedfu birif ovfep ibsair ceg.', 'https://via.placeholder.com/507x456/4BB/fff/?text=undefined', '2021-02-24 09:13:33');
INSERT INTO `track_202290_locations` (`id`, `animal_id`, `lat`, `lng`, `friendly`, `description`, `img`, `date_create`) VALUES
(245, 2, 38, -122, '3', 'Fipehzov umekigo egukaz di uwu ujedu ban cas mucun cewko vufoc utuvmuk bic nig.', 'https://via.placeholder.com/541x403/A67/fff/?text=undefined', '2022-05-14 08:49:16'),
(246, 13, 38, -122, '5', 'Cicusev davi sabduezi teto suaka vatis mej jukbajda wogzeda keod zodmemem vut saksuz wigimot.', 'https://via.placeholder.com/456x550/386/fff/?text=undefined', '2021-10-15 03:07:51'),
(247, 26, 38, -122, '2', 'Bapaf fu ficlovkar lewewof acomopo hukaj dun lusvocjar najciopi men wenaci haheneibo zarauk rura fum hefucig raz.', 'https://via.placeholder.com/480x422/4A5/fff/?text=undefined', '2022-01-14 05:06:24'),
(248, 8, 38, -122, '5', 'Jodgi poukvi vivpi ce ez uka udi nasci ro hofsug sukaw tokufu haffije puem itoticsur.', 'https://via.placeholder.com/525x492/A7B/fff/?text=undefined', '2020-03-27 22:06:10'),
(249, 38, 38, -122, '4', 'Dodikec ej baklem at uwoliwok ku sam levipro diahto gukaja sulwu difdi uzinefo kur owbec hejozgor ruv.', 'https://via.placeholder.com/361x559/567/fff/?text=undefined', '2020-09-11 08:32:18'),
(250, 28, 38, -122, '5', 'Fu il oc opi las nadene calopam ka norweubo hovo uvu sohowabu zak onakojbi pudze iveokwot wismimze.', 'https://via.placeholder.com/504x415/B46/fff/?text=undefined', '2022-06-08 08:41:20');

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
(1, 'Ricky Parks', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/352x492/3A4/fff/?text=Ricky Parks', '2021-11-04 15:41:06'),
(2, 'Lucy Welch', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/358x427/663/fff/?text=Lucy Welch', '2021-10-23 23:57:55'),
(3, 'Franklin Welch', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/368x480/66B/fff/?text=Franklin Welch', '2020-03-12 12:23:31'),
(4, 'Lena Welch', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/449x438/549/fff/?text=Lena Welch', '2020-11-03 04:59:24'),
(5, 'Brandon Burke', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/357x518/5BA/fff/?text=Brandon Burke', '2020-02-13 11:38:26'),
(6, 'Willie Harrington', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/501x518/885/fff/?text=Willie Harrington', '2020-09-16 16:34:38'),
(7, 'Leah Norman', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/360x527/398/fff/?text=Leah Norman', '2020-05-21 06:42:34'),
(8, 'Austin Pope', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/512x564/8B3/fff/?text=Austin Pope', '2021-08-27 00:49:26'),
(9, 'Lloyd Clarke', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/441x561/736/fff/?text=Lloyd Clarke', '2021-02-22 09:12:03'),
(10, 'Roger Peters', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/470x502/574/fff/?text=Roger Peters', '2021-08-05 02:14:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_202290_colors`
--
ALTER TABLE `track_202290_colors`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `track_202290_locations`
--
ALTER TABLE `track_202290_locations`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `track_202290_users`
--
ALTER TABLE `track_202290_users`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
