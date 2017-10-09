/*
Navicat MySQL Data Transfer

Source Server         : Smart MySQL
Source Server Version : 50627
Source Host           : localhost:3306
Source Database       : fz

Target Server Type    : MYSQL
Target Server Version : 50627
File Encoding         : 65001

Date: 2017-10-06 15:52:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for app
-- ----------------------------
DROP TABLE IF EXISTS `app`;
CREATE TABLE `app` (
  `AppID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) NOT NULL,
  `DisplayName` varchar(255) NOT NULL,
  `AppName` varchar(255) NOT NULL,
  PRIMARY KEY (`AppID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of app
-- ----------------------------
INSERT INTO `app` VALUES ('1', 'Driver application to take \"kelapa sawit\"', 'Driver Application', 'APP_DRIVER');

-- ----------------------------
-- Table structure for backup
-- ----------------------------
DROP TABLE IF EXISTS `backup`;
CREATE TABLE `backup` (
  `LocationID` int(11) NOT NULL AUTO_INCREMENT,
  `Latitude` varchar(75) DEFAULT NULL,
  `Longitude` varchar(75) DEFAULT NULL,
  `Date` varchar(75) DEFAULT NULL,
  `Time` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=65537 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for fbactualtask
-- ----------------------------
DROP TABLE IF EXISTS `fbactualtask`;
CREATE TABLE `fbactualtask` (
  `ActualTaslID` int(11) NOT NULL AUTO_INCREMENT,
  `From` varchar(150) NOT NULL,
  `To` varchar(150) NOT NULL,
  `Start` varchar(8) NOT NULL,
  `End` varchar(8) NOT NULL,
  `PlanTaskID` int(11) NOT NULL,
  `ReasonLate` int(11) DEFAULT NULL,
  `ReasonNotFinish` int(11) DEFAULT NULL,
  `FromDesc` varchar(200) DEFAULT NULL,
  `ToDesc` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ActualTaslID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbactualtask
-- ----------------------------

-- ----------------------------
-- Table structure for fbblock
-- ----------------------------
DROP TABLE IF EXISTS `fbblock`;
CREATE TABLE `fbblock` (
  `blockID` varchar(255) DEFAULT NULL,
  `divID` varchar(255) DEFAULT NULL,
  `x1` double DEFAULT NULL,
  `y1` double DEFAULT NULL,
  `x2` double DEFAULT NULL,
  `y2` double DEFAULT NULL,
PRIMARY KEY (divID, blockID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbblock
-- ----------------------------
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('W26','BINE5',105.4890034,-1.962242243,105.4890034,-1.962242243);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('W25','BINE5',105.4848043,-1.96205659,105.4848043,-1.96205659);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('W24','BINE5',105.4819145,-1.968706347,105.4819145,-1.968706347);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('W23','BINE5',105.4793431,-1.962130626,105.4793431,-1.962130626);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('W22','BINE5',105.4765734,-1.966663237,105.4765734,-1.966663237);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('W21','BINE5',105.4738643,-1.962219578,105.4738643,-1.962219578);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('W20','BINE5',105.4697538,-1.966729802,105.4697538,-1.966729802);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('V37','BINE5',105.5174884,-1.962100833,105.5174884,-1.962100833);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('V36','BINE5',105.5159607,-1.957609094,105.5159607,-1.957609094);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('V35','BINE5',105.5121792,-1.952975105,105.5121792,-1.952975105);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('V34','BINE5',105.5094107,-1.957507936,105.5094107,-1.957507936);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('V33','BINE5',105.5066807,-1.952930351,105.5066807,-1.952930351);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('V32','BINE5',105.5052599,-1.95746664,105.5052599,-1.95746664);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('V26','BINE5',105.4866325,-1.946867268,105.4866325,-1.946867268);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('V25','BINE5',105.4848164,-1.952891599,105.4848164,-1.952891599);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('V24','BINE5',105.4834167,-1.957856861,105.4834167,-1.957856861);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('V23','BINE5',105.4793417,-1.952965614,105.4793417,-1.952965614);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('V22','BINE5',105.4765892,-1.957592064,105.4765892,-1.957592064);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('V21','BINE5',105.4738696,-1.953048667,105.4738696,-1.953048667);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('V20','BINE5',105.471097,-1.957669606,105.471097,-1.957669606);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U42','BINE4',105.533302,-1.945879028,105.533302,-1.945879028);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U41','BINE4',105.5298447,-1.945897147,105.5298447,-1.945897147);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U40','BINE4',105.5259009,-1.948148427,105.5259009,-1.948148427);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U39','BINE4',105.5229794,-1.945796262,105.5229794,-1.945796262);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U38','BINE5',105.5203167,-1.952992695,105.5203167,-1.952992695);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U37','BINE5',105.5189709,-1.948372163,105.5189709,-1.948372163);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U36','BINE5',105.5148362,-1.943758642,105.5148362,-1.943758642);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U35','BINE5',105.5121448,-1.95063562,105.5121448,-1.95063562);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U34','BINE5',105.5094332,-1.948294296,105.5094332,-1.948294296);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U33','BINE5',105.5080249,-1.950617083,105.5080249,-1.950617083);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U32','BINE5',105.5039158,-1.943773638,105.5039158,-1.943773638);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U31','BINE5',105.5024961,-1.946243137,105.5024961,-1.946243137);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U30','BINE5',105.4985768,-1.943773185,105.4985768,-1.943773185);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U29','BINE5',105.4971118,-1.946218417,105.4971118,-1.946218417);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U28','BINE5',105.4931123,-1.948728008,105.4931123,-1.948728008);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U27','BINE5',105.4893678,-1.94620039,105.4893678,-1.94620039);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U26','BINE5',105.4875268,-1.943797642,105.4875268,-1.943797642);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U25','BINE5',105.4847861,-1.948349604,105.4847861,-1.948349604);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U24','BINE5',105.4820965,-1.943789005,105.4820965,-1.943789005);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U23','BINE5',105.4805559,-1.943862831,105.4805559,-1.943862831);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U22','BINE5',105.4766149,-1.943780178,105.4766149,-1.943780178);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U21','BINE5',105.4752039,-1.948355557,105.4752039,-1.948355557);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('U20','BINE5',105.4710942,-1.943786657,105.4710942,-1.943786657);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T42','BINE4',105.5332292,-1.939239991,105.5332292,-1.939239991);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T41','BINE4',105.528574,-1.934850496,105.528574,-1.934850496);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T40','BINE4',105.5257949,-1.939248683,105.5257949,-1.939248683);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T39','BINE4',105.5231236,-1.934814881,105.5231236,-1.934814881);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T38','BINE4',105.5202437,-1.939319632,105.5202437,-1.939319632);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T37','BINE4',105.5176278,-1.934778032,105.5176278,-1.934778032);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T36','BINE4',105.5161348,-1.939249758,105.5161348,-1.939249758);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T35','BINE4',105.5121325,-1.934749444,105.5121325,-1.934749444);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T34','BINE4',105.5098575,-1.935880031,105.5098575,-1.935880031);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T33','BINE4',105.5066601,-1.939208139,105.5066601,-1.939208139);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T32','BINE4',105.5039019,-1.939255814,105.5039019,-1.939255814);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T31','BINE3',105.5012911,-1.934693262,105.5012911,-1.934693262);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T30','BINE3',105.4985624,-1.939254882,105.4985624,-1.939254882);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T29','BINE3',105.4958387,-1.934695007,105.4958387,-1.934695007);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T28','BINE3',105.4944031,-1.939227911,105.4944031,-1.939227911);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T27','BINE3',105.4904051,-1.934672383,105.4904051,-1.934672383);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T26','BINE3',105.486445,-1.939666928,105.486445,-1.939666928);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T25','BINE3',105.4848407,-1.934669022,105.4848407,-1.934669022);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T24','BINE3',105.4834731,-1.93922527,105.4834731,-1.93922527);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T23','BINE3',105.4793739,-1.934646963,105.4793739,-1.934646963);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T22','BINE3',105.4765835,-1.939404508,105.4765835,-1.939404508);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('T21','BINE3',105.4724666,-1.939218444,105.4724666,-1.939218444);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S42','BINE4',105.5315183,-1.930448369,105.5315183,-1.930448369);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S41','BINE4',105.5286271,-1.925850182,105.5286271,-1.925850182);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S40','BINE4',105.5259462,-1.930640615,105.5259462,-1.930640615);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S39','BINE4',105.5231716,-1.925796557,105.5231716,-1.925796557);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S38','BINE4',105.5203887,-1.930276545,105.5203887,-1.930276545);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S37','BINE4',105.5176734,-1.925739979,105.5176734,-1.925739979);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S36','BINE4',105.516193,-1.9302469,105.516193,-1.9302469);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S35','BINE4',105.5121861,-1.925699858,105.5121861,-1.925699858);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S34','BINE4',105.5107995,-1.930215762,105.5107995,-1.930215762);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S33','BINE4',105.5067755,-1.92564956,105.5067755,-1.92564956);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S32','BINE4',105.5050459,-1.928240829,105.5050459,-1.928240829);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S31','BINE3',105.5013369,-1.925610655,105.5013369,-1.925610655);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S30','BINE3',105.4999793,-1.93014845,105.4999793,-1.93014845);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S29','BINE3',105.4972173,-1.93014707,105.4972173,-1.93014707);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S28','BINE3',105.4931867,-1.925578227,105.4931867,-1.925578227);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S27','BINE3',105.4903816,-1.930116898,105.4903816,-1.930116898);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S26','BINE3',105.4862091,-1.925808143,105.4862091,-1.925808143);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S25','BINE3',105.4844401,-1.925686175,105.4844401,-1.925686175);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S24','BINE3',105.4821023,-1.930080291,105.4821023,-1.930080291);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S23','BINE3',105.4793782,-1.925538641,105.4793782,-1.925538641);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S22','BINE3',105.4766255,-1.9255409,105.4766255,-1.9255409);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('S21','BINE3',105.4752745,-1.930345331,105.4752745,-1.930345331);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R41','BINE4',105.5286068,-1.923288953,105.5286068,-1.923288953);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R40','BINE4',105.5258921,-1.921093034,105.5258921,-1.921093034);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R39','BINE4',105.5231663,-1.921066603,105.5231663,-1.921066603);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R38','BINE4',105.520486,-1.916289228,105.520486,-1.916289228);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R37','BINE4',105.5176661,-1.921040657,105.5176661,-1.921040657);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R36','BINE4',105.5149456,-1.916305369,105.5149456,-1.916305369);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R35','BINE4',105.5122534,-1.916317036,105.5122534,-1.916317036);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R34','BINE4',105.5094912,-1.920995656,105.5094912,-1.920995656);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R33','BINE4',105.5081167,-1.920893954,105.5081167,-1.920893954);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R32','BINE4',105.5040822,-1.916335992,105.5040822,-1.916335992);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R31','BINE3',105.5026434,-1.920975817,105.5026434,-1.920975817);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R30','BINE3',105.5000028,-1.920978004,105.5000028,-1.920978004);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R29','BINE3',105.4959194,-1.916366721,105.4959194,-1.916366721);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R28','BINE3',105.4932173,-1.91637246,105.4932173,-1.91637246);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R27','BINE3',105.4918658,-1.920978928,105.4918658,-1.920978928);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R26','BINE3',105.4876327,-1.91638171,105.4876327,-1.91638171);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R25','BINE3',105.484661,-1.920749644,105.484661,-1.920749644);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R24','BINE3',105.4821289,-1.916403273,105.4821289,-1.916403273);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R23','BINE3',105.479381,-1.916403768,105.479381,-1.916403768);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R22','BINE3',105.4766313,-1.916398089,105.4766313,-1.916398089);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('R21','BINE3',105.4724596,-1.920971466,105.4724596,-1.920971466);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q40','BINE1',105.52594,-1.911856945,105.52594,-1.911856945);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q39','BINE1',105.5246099,-1.911863468,105.5246099,-1.911863468);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q38','BINE1',105.5205144,-1.907393316,105.5205144,-1.907393316);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q37','BINE1',105.5191065,-1.911837731,105.5191065,-1.911837731);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q36','BINE1',105.5141765,-1.91565135,105.5141765,-1.91565135);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q35','BINE1',105.512293,-1.907348895,105.512293,-1.907348895);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q34','BINE1',105.5095846,-1.907334003,105.5095846,-1.907334003);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q33','BINE1',105.5068059,-1.911834722,105.5068059,-1.911834722);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q32','BINE1',105.5040775,-1.911840514,105.5040775,-1.911840514);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q31','BINE1',105.5014123,-1.907298621,105.5014123,-1.907298621);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q30','BINE2',105.4987129,-1.90729273,105.4987129,-1.90729273);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q29','BINE2',105.4959199,-1.91182921,105.4959199,-1.91182921);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q28','BINE2',105.4945082,-1.911827001,105.4945082,-1.911827001);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q27','BINE2',105.4919002,-1.911823258,105.4919002,-1.911823258);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q26','BINE2',105.4876512,-1.907263245,105.4876512,-1.907263245);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q25','BINE2',105.4848571,-1.911815081,105.4848571,-1.911815081);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q24','BINE2',105.4820979,-1.911817913,105.4820979,-1.911817913);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q23','BINE2',105.4807121,-1.911827626,105.4807121,-1.911827626);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q22','BINE2',105.4763378,-1.912260913,105.4763378,-1.912260913);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('Q21','BINE2',105.4752085,-1.911828615,105.4752085,-1.911828615);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P40','BINE1',105.5257601,-1.905128034,105.5257601,-1.905128034);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P39','BINE1',105.5219268,-1.906342784,105.5219268,-1.906342784);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P38','BINE1',105.5218651,-1.90499689,105.5218651,-1.90499689);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P37','BINE1',105.5178076,-1.89813363,105.5178076,-1.89813363);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P36','BINE1',105.5149911,-1.902750969,105.5149911,-1.902750969);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P35','BINE1',105.5123397,-1.898126114,105.5123397,-1.898126114);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P34','BINE1',105.5109517,-1.90273121,105.5109517,-1.90273121);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P33','BINE1',105.5069579,-1.900003118,105.5069579,-1.900003118);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P32','BINE1',105.5048209,-1.899746275,105.5048209,-1.899746275);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P31','BINE1',105.501165,-1.900097351,105.501165,-1.900097351);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P30','BINE2',105.4985911,-1.900036212,105.4985911,-1.900036212);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P29','BINE2',105.4969609,-1.904624372,105.4969609,-1.904624372);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P28','BINE2',105.4932427,-1.902697696,105.4932427,-1.902697696);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P27','BINE2',105.4911805,-1.907217676,105.4911805,-1.907217676);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P26','BINE2',105.4876575,-1.898130904,105.4876575,-1.898130904);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P25','BINE2',105.4848569,-1.902711642,105.4848569,-1.902711642);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P24','BINE2',105.4820992,-1.902717229,105.4820992,-1.902717229);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P23','BINE2',105.4785852,-1.89912151,105.4785852,-1.89912151);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P22','BINE2',105.4763538,-1.900569008,105.4763538,-1.900569008);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('P21','BINE2',105.4738172,-1.902716045,105.4738172,-1.902716045);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N35','BINE1',105.5136568,-1.893870066,105.5136568,-1.893870066);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N34','BINE1',105.5096439,-1.889610305,105.5096439,-1.889610305);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N33','BINE1',105.5069184,-1.889600402,105.5069184,-1.889600402);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N32','BINE1',105.5041599,-1.893858625,105.5041599,-1.893858625);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N31','BINE1',105.5007193,-1.896073123,105.5007193,-1.896073123);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N30','BINE1',105.5001091,-1.891797675,105.5001091,-1.891797675);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N29','BINE1',105.4960087,-1.889579752,105.4960087,-1.889579752);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N28','BINE2',105.4932423,-1.89390179,105.4932423,-1.89390179);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N27','BINE2',105.4904689,-1.893819318,105.4904689,-1.893819318);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N26','BINE2',105.4876551,-1.88956266,105.4876551,-1.88956266);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N25','BINE2',105.4848176,-1.897403254,105.4848176,-1.897403254);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N24','BINE2',105.4820968,-1.898096661,105.4820968,-1.898096661);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N23','BINE2',105.4807142,-1.893829087,105.4807142,-1.893829087);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N22','BINE2',105.476589,-1.894952016,105.476589,-1.894952016);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('N21','BINE2',105.4751973,-1.8938318,105.4751973,-1.8938318);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('M34','BINE1',105.5103004,-1.880470541,105.5103004,-1.880470541);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('M33','BINE1',105.5069261,-1.88532895,105.5069261,-1.88532895);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('M32','BINE1',105.5028505,-1.884018215,105.5028505,-1.884018215);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('M31','BINE1',105.5028081,-1.885004942,105.5028081,-1.885004942);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('M30','BINE1',105.4987605,-1.885008862,105.4987605,-1.885008862);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('M29','BINE1',105.4960264,-1.885287969,105.4960264,-1.885287969);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('M28','BINE2',105.4933333,-1.880435044,105.4933333,-1.880435044);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('M27','BINE2',105.4905428,-1.880437425,105.4905428,-1.880437425);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('M26','BINE2',105.4862089,-1.885002639,105.4862089,-1.885002639);
INSERT INTO fbblock (blockID,divID,x1,y1,x2,y2) VALUES ('L34','BINE1',105.5104269,-1.873264593,105.5104269,-1.873264593);

-- ----------------------------
-- Table structure for fbdefinedpath
-- ----------------------------
DROP TABLE IF EXISTS `fbdefinedpath`;
CREATE TABLE `fbdefinedpath` (
  `fromID` varchar(255) DEFAULT NULL,
  `toID` varchar(255) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `roadID` varchar(255) DEFAULT NULL,
  `segmentSeq` int(11) DEFAULT NULL,
  `x1` double DEFAULT NULL,
  `y1` double DEFAULT NULL,
  `x2` double DEFAULT NULL,
  `y2` double DEFAULT NULL,
  `distMtr` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbdefinedpath
-- ----------------------------

-- ----------------------------
-- Table structure for fbdevice
-- ----------------------------
DROP TABLE IF EXISTS `fbdevice`;
CREATE TABLE `fbdevice` (
  `DeviceID` int(11) NOT NULL AUTO_INCREMENT,
  `OS` varchar(15) NOT NULL,
  `Brand` varchar(15) NOT NULL,
  `Type` varchar(45) NOT NULL,
  `SerialNumber` varchar(255) NOT NULL,
  PRIMARY KEY (`DeviceID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbdevice
-- ----------------------------
INSERT INTO `fbdevice` VALUES ('1', 'Android', 'Smartfren', 'Andromax Qi', '1234567890');

-- ----------------------------
-- Table structure for fbdiv
-- ----------------------------
DROP TABLE IF EXISTS `fbdiv`;
CREATE TABLE `fbdiv` (
  `divID` varchar(255) DEFAULT NULL,
  `estateID` varchar(255) DEFAULT NULL,
  `millID` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbdiv
-- ----------------------------
INSERT INTO `fbdiv` VALUES ('BINE1', 'BINE', 'LWSM');
INSERT INTO `fbdiv` VALUES ('BINE2', 'BINE', 'LWSM');
INSERT INTO `fbdiv` VALUES ('BINE3', 'BINE', 'LWSM');
INSERT INTO `fbdiv` VALUES ('BINE4', 'BINE', 'LWSM');
INSERT INTO `fbdiv` VALUES ('BINE5', 'BINE', 'LWSM');

-- ----------------------------
-- Table structure for fbgpsgraber
-- ----------------------------
DROP TABLE IF EXISTS `fbgpsgraber`;
CREATE TABLE `fbgpsgraber` (
  `LocationID` int(11) NOT NULL AUTO_INCREMENT,
  `Latitude` longtext NOT NULL,
  `Longitude` longtext NOT NULL,
  `EndDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(11) DEFAULT '0',
  `Name` varchar(45) DEFAULT NULL,
  `Division` int(11) DEFAULT NULL,
  PRIMARY KEY (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbgpsgraber
-- ----------------------------
INSERT INTO `fbgpsgraber` VALUES ('1', '1018.12', '109.192', '2017-10-01 10:53:11', '0', null, null);
INSERT INTO `fbgpsgraber` VALUES ('2', '1018.12', '109.192', '2017-10-01 10:53:11', '0', null, null);
INSERT INTO `fbgpsgraber` VALUES ('3', '1018.12', '109.192', '2017-10-01 10:53:11', '0', null, null);
INSERT INTO `fbgpsgraber` VALUES ('4', '1018.12', '109.192', '2017-10-01 10:53:11', '0', null, null);
INSERT INTO `fbgpsgraber` VALUES ('5', '1018.12', '109.192', '2017-10-01 10:53:11', '0', null, null);
INSERT INTO `fbgpsgraber` VALUES ('6', '1018.12', '109.192', '2017-10-01 10:53:11', '0', null, null);
INSERT INTO `fbgpsgraber` VALUES ('7', '1018.12', '109.192', '2017-10-01 10:53:11', '0', null, null);
INSERT INTO `fbgpsgraber` VALUES ('8', '1018.12', '109.192', '2017-10-01 10:53:11', '0', null, null);
INSERT INTO `fbgpsgraber` VALUES ('9', '1018.12', '109.192', '2017-10-01 10:53:11', '0', null, null);
INSERT INTO `fbgpsgraber` VALUES ('10', '1018.12', '109.192', '2017-10-01 10:53:11', '1', null, null);
INSERT INTO `fbgpsgraber` VALUES ('11', '1018.12', '109.192', '2017-10-01 10:53:11', '1', null, null);
INSERT INTO `fbgpsgraber` VALUES ('12', '1018.12', '109.192', '2017-10-01 10:53:11', '1', 'Mukidi', '1');

-- ----------------------------
-- Table structure for fbgpstracker
-- ----------------------------
DROP TABLE IF EXISTS `fbgpstracker`;
CREATE TABLE `fbgpstracker` (
  `LocationID` int(11) NOT NULL AUTO_INCREMENT,
  `Latitude` longtext NOT NULL,
  `Longitude` longtext NOT NULL,
  `EndDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `UserID` int(11) NOT NULL,
  `VehicleID` int(11) NOT NULL,
  `Status` int(11) DEFAULT '0',
  PRIMARY KEY (`LocationID`)
) ENGINE=InnoDB AUTO_INCREMENT=179 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbgpstracker
-- ----------------------------
INSERT INTO `fbgpstracker` VALUES ('166', '1', '1', '2017-10-01 00:00:00', '1', '2', '1');
INSERT INTO `fbgpstracker` VALUES ('167', '1', '1', '2017-10-01 00:00:00', '1', '2', '1');
INSERT INTO `fbgpstracker` VALUES ('168', '1', '1', '2017-10-01 00:00:00', '1', '2', '1');
INSERT INTO `fbgpstracker` VALUES ('169', '1', '1', '2017-10-01 00:00:00', '1', '2', '1');
INSERT INTO `fbgpstracker` VALUES ('170', '2', '2', '2017-10-01 00:00:00', '1', '2', '1');
INSERT INTO `fbgpstracker` VALUES ('171', '3', '3', '2017-10-01 00:00:00', '1', '2', '1');
INSERT INTO `fbgpstracker` VALUES ('172', '4', '4', '2017-10-01 00:00:00', '1', '2', '1');
INSERT INTO `fbgpstracker` VALUES ('173', '5', '5', '2017-10-01 00:00:00', '1', '2', '1');
INSERT INTO `fbgpstracker` VALUES ('174', '7', '7', '2017-10-01 00:00:00', '1', '2', '1');
INSERT INTO `fbgpstracker` VALUES ('175', '8', '8', '2017-10-01 00:00:00', '1', '2', '1');
INSERT INTO `fbgpstracker` VALUES ('176', '9', '9', '2017-10-01 00:00:00', '1', '2', '1');
INSERT INTO `fbgpstracker` VALUES ('177', '10', '10', '2017-10-01 00:00:00', '1', '2', '1');
INSERT INTO `fbgpstracker` VALUES ('178', '11', '11', '2017-10-01 00:00:00', '1', '2', '1');

-- ----------------------------
-- Table structure for fbjob
-- ----------------------------
DROP TABLE IF EXISTS `fbjob`;
CREATE TABLE `fbjob` (
  `JobID` int(11) NOT NULL AUTO_INCREMENT,
  `PlanTruckID` int(11) NOT NULL,
  `ActualTruckID` varchar(255) DEFAULT NULL,
  `JobSeq` int(11) DEFAULT '0',
  `DoneStatus` varchar(5) DEFAULT NULL,
  `divID` varchar(255) DEFAULT NULL,
  `assignedDt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `takenDt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `doneDt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createDt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updDt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`JobID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbjob
-- ----------------------------
INSERT INTO `fbjob` VALUES ('1', '1', '2', '0', 'ASGN', 'BINE1', '2017-09-30 15:05:14', '2017-10-03 17:46:52', '2017-09-28 11:33:36', '2017-09-18 13:08:40', '2017-10-03 17:46:52');
INSERT INTO `fbjob` VALUES ('2', '2', '2', '0', 'ASGN', 'BINE2', '2017-09-30 15:45:10', '2017-09-29 10:03:36', '0000-00-00 00:00:00', '2017-09-18 13:47:19', '2017-09-29 10:07:51');
INSERT INTO `fbjob` VALUES ('3', '3', '2', '0', 'ASGN', 'BINE3', '2017-09-30 15:24:57', '2017-09-29 10:39:23', '0000-00-00 00:00:00', '2017-09-18 13:47:40', '2017-09-29 10:39:23');
INSERT INTO `fbjob` VALUES ('4', '4', '2', '0', 'ASGN', 'BINE4', '2017-09-30 15:24:59', '2017-09-29 09:45:18', '0000-00-00 00:00:00', '2017-09-18 13:50:26', '2017-09-29 10:07:52');
INSERT INTO `fbjob` VALUES ('5', '2', '2', '0', 'ASGN', 'BINE5', '2017-09-30 15:55:35', '2017-09-29 10:04:53', '0000-00-00 00:00:00', '2017-09-18 14:26:22', '2017-09-29 10:07:53');
INSERT INTO `fbjob` VALUES ('6', '0', '2', '1', 'ASGN', 'BINE5', '2017-09-30 15:30:21', '2017-09-29 10:01:19', '0000-00-00 00:00:00', '2017-09-20 11:01:26', '2017-09-29 10:07:59');

-- ----------------------------
-- Table structure for fbloginstatus
-- ----------------------------
DROP TABLE IF EXISTS `fbloginstatus`;
CREATE TABLE `fbloginstatus` (
  `LoginID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) NOT NULL,
  `DisplayName` varchar(255) NOT NULL,
  `LoginName` varchar(255) NOT NULL,
  PRIMARY KEY (`LoginID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbloginstatus
-- ----------------------------
INSERT INTO `fbloginstatus` VALUES ('1', 'Status for user logout', 'Logout', 'STATUS_LOGOUT');
INSERT INTO `fbloginstatus` VALUES ('2', 'Status for user login', 'Login', 'STATUS_LOGIN');

-- ----------------------------
-- Table structure for fbmill
-- ----------------------------
DROP TABLE IF EXISTS `fbmill`;
CREATE TABLE `fbmill` (
  `millID` varchar(255) DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `lat` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbmill
-- ----------------------------
INSERT INTO `fbmill` VALUES ('LWSM', '105.477', '-1.9012');

-- ----------------------------
-- Table structure for fbplanjob
-- ----------------------------
DROP TABLE IF EXISTS `fbplanjob`;
CREATE TABLE `fbplanjob` (
  `PlanJobID` int(11) NOT NULL,
  `TruckID` int(11) NOT NULL,
  `DivisiID` int(11) NOT NULL,
  `Blocks` varchar(75) NOT NULL,
  `Tonase` int(11) NOT NULL,
  `Type1` varchar(255) DEFAULT NULL,
  `Seq` int(11) NOT NULL DEFAULT '1',
  `Status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PlanJobID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbplanjob
-- ----------------------------
INSERT INTO `fbplanjob` VALUES ('1', '1', '1', 'M22-M23', '90000', null, '1', null);

-- ----------------------------
-- Table structure for fbplantask
-- ----------------------------
DROP TABLE IF EXISTS `fbplantask`;
CREATE TABLE `fbplantask` (
  `PlanTaskID` int(11) NOT NULL AUTO_INCREMENT,
  `From` varchar(150) NOT NULL,
  `To` varchar(150) NOT NULL,
  `Start` varchar(8) NOT NULL,
  `End` varchar(8) NOT NULL,
  `PlanJobID` int(11) NOT NULL,
  `FromDesc` varchar(200) DEFAULT NULL,
  `ToDesc` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`PlanTaskID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbplantask
-- ----------------------------
INSERT INTO `fbplantask` VALUES ('1', 'Pool', 'Harvest', '07:30:00', '08:30:00', '1', 'Posisi awal di pool', 'Posisi tujuan awal di kebun', null);
INSERT INTO `fbplantask` VALUES ('2', 'Harvest', 'Mill', '08:30:00', '09:45:00', '1', 'Posisi awal di kebun', 'Posisi tujuan akhir Mill', null);

-- ----------------------------
-- Table structure for fbprogress
-- ----------------------------
DROP TABLE IF EXISTS `fbprogress`;
CREATE TABLE `fbprogress` (
  `runID` varchar(255) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `iter` bigint(20) DEFAULT NULL,
  `maxIter` bigint(20) DEFAULT NULL,
  `subIter` bigint(20) DEFAULT NULL,
  `maxSubIter` bigint(20) DEFAULT NULL,
  `msg` longtext,
  `pct` tinyint(4) DEFAULT NULL,
  `lastUpd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
   hvsDt datetime,
   divIDs varchar(255),
   input1 longtext 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbprogress
-- ----------------------------

-- ----------------------------
-- Table structure for fbreasonfail
-- ----------------------------
DROP TABLE IF EXISTS `fbreasonfail`;
CREATE TABLE `fbreasonfail` (
  `FailID` int(11) NOT NULL AUTO_INCREMENT,
  `FailName` varchar(40) NOT NULL,
  `FailDescription` varchar(80) NOT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FailID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbreasonfail
-- ----------------------------
INSERT INTO `fbreasonfail` VALUES ('1', 'Buah', 'Pohon Belum Berbuah', null);
INSERT INTO `fbreasonfail` VALUES ('3', 'Aaaaa', 'Aaaaa', null);
INSERT INTO `fbreasonfail` VALUES ('4', 'Bbbbb', 'Bbbbb', null);

-- ----------------------------
-- Table structure for fbreasonlate
-- ----------------------------
DROP TABLE IF EXISTS `fbreasonlate`;
CREATE TABLE `fbreasonlate` (
  `LateID` int(11) NOT NULL AUTO_INCREMENT,
  `LateName` varchar(40) NOT NULL,
  `LateDescription` varchar(80) NOT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LateID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbreasonlate
-- ----------------------------
INSERT INTO `fbreasonlate` VALUES ('1', 'Mogok', 'Kendaraan Dinas Mogok', null);
INSERT INTO `fbreasonlate` VALUES ('3', 'Aaaaa', 'Aaaaa', null);
INSERT INTO `fbreasonlate` VALUES ('4', 'Zzzzz', 'Zzzzz', null);

-- ----------------------------
-- Table structure for fbroad
-- ----------------------------
DROP TABLE IF EXISTS `fbroad`;
CREATE TABLE `fbroad` (
  `RoadID` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Blok` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Shape_Leng` varchar(255) DEFAULT NULL,
  `Koordinat X_start` varchar(255) DEFAULT NULL,
  `Koordinat X_end` varchar(255) DEFAULT NULL,
  `Koordinat Y_start` varchar(255) DEFAULT NULL,
  `Koordinat Y_end` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbroad
-- ----------------------------
INSERT INTO `fbroad` VALUES ('1', 'CR', 'W20', 'CR_W20', '980.87040291800', '105.470', '105.470', '-1.97115', '-1.96227');
INSERT INTO `fbroad` VALUES ('2', 'CR', 'V36', 'CR_V36', '3.01209764854', '105.516', '105.516', '-1.96209', '-1.96209');
INSERT INTO `fbroad` VALUES ('3', 'CR', 'V37', 'CR_V37', '1001.54407328000', '105.519', '105.519', '-1.95301', '-1.96208');
INSERT INTO `fbroad` VALUES ('4', 'MR', 'V35', 'MR_V35', '3.00682075393', '105.514', '105.514', '-1.96206', '-1.96206');
INSERT INTO `fbroad` VALUES ('5', 'MR', 'V36', 'MR_V36', '269.48781691300', '105.514', '105.516', '-1.96206', '-1.96209');
INSERT INTO `fbroad` VALUES ('6', 'MR', 'V34', 'MR_V34', '3.00638419655', '105.511', '105.511', '-1.96205', '-1.96205');
INSERT INTO `fbroad` VALUES ('7', 'MR', 'V35', 'MR_V35', '303.51915992500', '105.511', '105.514', '-1.96205', '-1.96206');
INSERT INTO `fbroad` VALUES ('8', 'CR', 'W25', 'CR_W25', '3.50082627145', '105.486', '105.486', '-1.96204', '-1.96204');
INSERT INTO `fbroad` VALUES ('9', 'CR', 'W26', 'CR_W26', '1010.22831936000', '105.489', '105.489', '-1.97114', '-1.96200');
INSERT INTO `fbroad` VALUES ('10', 'MR', 'V33', 'MR_V33', '3.00604807180', '105.508', '105.508', '-1.96201', '-1.96201');
INSERT INTO `fbroad` VALUES ('11', 'MR', 'V34', 'MR_V34', '301.92040150100', '105.508', '105.511', '-1.96201', '-1.96205');
INSERT INTO `fbroad` VALUES ('12', 'MR', 'V32', 'MR_V32', '3.20904609483', '105.505', '105.505', '-1.96201', '-1.96201');
INSERT INTO `fbroad` VALUES ('13', 'MR', 'V33', 'MR_V33', '307.10634603900', '105.505', '105.508', '-1.96201', '-1.96201');
INSERT INTO `fbroad` VALUES ('14', 'CR', 'V32', 'CR_V32', '1003.15458474000', '105.502', '105.502', '-1.95290', '-1.96198');
INSERT INTO `fbroad` VALUES ('15', 'CR', 'V20', 'CR_V20', '1009.33079509000', '105.470', '105.470', '-1.96223', '-1.95310');
INSERT INTO `fbroad` VALUES ('16', 'CR', 'W20', 'CR_W20', '4.47787687626', '105.470', '105.470', '-1.96227', '-1.96223');
INSERT INTO `fbroad` VALUES ('17', 'CR', 'V25', 'CR_V25', '1008.71269171000', '105.486', '105.486', '-1.95288', '-1.96200');
INSERT INTO `fbroad` VALUES ('18', 'CR', 'W25', 'CR_W25', '4.48880324662', '105.486', '105.486', '-1.96200', '-1.96204');
INSERT INTO `fbroad` VALUES ('19', 'MR', 'U27', 'MR_U27', '3.19364021064', '105.492', '105.492', '-1.94873', '-1.94873');
INSERT INTO `fbroad` VALUES ('20', 'MR', 'U28', 'MR_U28', '287.82990236300', '105.492', '105.494', '-1.94873', '-1.94869');
INSERT INTO `fbroad` VALUES ('21', 'CR', 'U38', 'CR_U38', '531.80957657000', '105.522', '105.522', '-1.95295', '-1.94814');
INSERT INTO `fbroad` VALUES ('22', 'CR', 'V37', 'CR_V37', '3.49588379262', '105.519', '105.519', '-1.95301', '-1.95301');
INSERT INTO `fbroad` VALUES ('23', 'CR', 'U41', 'CR_U41', '3.20832244177', '105.530', '105.530', '-1.94816', '-1.94816');
INSERT INTO `fbroad` VALUES ('24', 'CR', 'U42', 'CR_U42', '502.36242763400', '105.533', '105.533', '-1.94814', '-1.94360');
INSERT INTO `fbroad` VALUES ('25', 'CR', 'U25', 'CR_U25', '444.39803411400', '105.486', '105.486', '-1.95283', '-1.94881');
INSERT INTO `fbroad` VALUES ('26', 'CR', 'V25', 'CR_V25', '4.51148059598', '105.486', '105.486', '-1.95288', '-1.95283');
INSERT INTO `fbroad` VALUES ('27', 'MR', 'U26', 'MR_U26', '270.76325767600', '105.486', '105.489', '-1.94880', '-1.94877');
INSERT INTO `fbroad` VALUES ('28', 'MR', 'U26', 'MR_U26', '3.20300600130', '105.489', '105.489', '-1.94877', '-1.94877');
INSERT INTO `fbroad` VALUES ('29', 'MR', 'U27', 'MR_U27', '319.43443027500', '105.489', '105.492', '-1.94877', '-1.94873');
INSERT INTO `fbroad` VALUES ('30', 'MR', 'U25', 'MR_U25', '2.92411550027', '105.486', '105.486', '-1.94881', '-1.94881');
INSERT INTO `fbroad` VALUES ('31', 'MR', 'U26', 'MR_U26', '32.78546811330', '105.486', '105.486', '-1.94880', '-1.94881');
INSERT INTO `fbroad` VALUES ('32', 'CR', 'U31', 'CR_U31', '3.38706386723', '105.502', '105.502', '-1.94864', '-1.94867');
INSERT INTO `fbroad` VALUES ('33', 'CR', 'U32', 'CR_U32', '463.14567650100', '105.502', '105.502', '-1.94867', '-1.95286');
INSERT INTO `fbroad` VALUES ('34', 'CR', 'V32', 'CR_V32', '4.50557793183', '105.502', '105.502', '-1.95286', '-1.95290');
INSERT INTO `fbroad` VALUES ('35', 'MR', 'U28', 'MR_U28', '3.19771398932', '105.494', '105.494', '-1.94869', '-1.94869');
INSERT INTO `fbroad` VALUES ('36', 'MR', 'U29', 'MR_U29', '298.23629321700', '105.497', '105.494', '-1.94865', '-1.94869');
INSERT INTO `fbroad` VALUES ('41', 'MR', 'U30', 'MR_U30', '3.00075058725', '105.500', '105.500', '-1.94859', '-1.94859');
INSERT INTO `fbroad` VALUES ('42', 'MR', 'U31', 'MR_U31', '277.01661208200', '105.502', '105.500', '-1.94864', '-1.94859');
INSERT INTO `fbroad` VALUES ('43', 'MR', 'U29', 'MR_U29', '3.19934801684', '105.497', '105.497', '-1.94865', '-1.94865');
INSERT INTO `fbroad` VALUES ('44', 'MR', 'U30', 'MR_U30', '315.67920557700', '105.500', '105.497', '-1.94859', '-1.94865');
INSERT INTO `fbroad` VALUES ('47', 'MR', 'U40', 'MR_U40', '2.99970888748', '105.527', '105.527', '-1.94814', '-1.94814');
INSERT INTO `fbroad` VALUES ('48', 'MR', 'U41', 'MR_U41', '299.95085920300', '105.527', '105.530', '-1.94814', '-1.94816');
INSERT INTO `fbroad` VALUES ('49', 'MR', 'U40', 'MR_U40', '381.93604835300', '105.524', '105.527', '-1.94723', '-1.94814');
INSERT INTO `fbroad` VALUES ('51', 'CR', 'U20', 'CR_U20', '1023.09615178000', '105.470', '105.470', '-1.95306', '-1.94380');
INSERT INTO `fbroad` VALUES ('52', 'CR', 'V20', 'CR_V20', '4.48702560765', '105.470', '105.470', '-1.95310', '-1.95306');
INSERT INTO `fbroad` VALUES ('53', 'MR', 'T34', 'MR_T34', '1.78054785350', '105.511', '105.511', '-1.93919', '-1.93919');
INSERT INTO `fbroad` VALUES ('54', 'MR', 'T35', 'MR_T35', '297.72251003600', '105.513', '105.511', '-1.93925', '-1.93919');
INSERT INTO `fbroad` VALUES ('58', 'CR', 'T21', 'CR_T21', '334.06099189200', '105.472', '105.472', '-1.94375', '-1.94073');
INSERT INTO `fbroad` VALUES ('59', 'CR', 'U20', 'CR_U20', '4.49510962134', '105.472', '105.472', '-1.94379', '-1.94375');
INSERT INTO `fbroad` VALUES ('62', 'CR', 'T37', 'CR_T37', '0.55230778627', '105.519', '105.519', '-1.93998', '-1.93999');
INSERT INTO `fbroad` VALUES ('63', 'CR', 'T38', 'CR_T38', '449.28725680700', '105.519', '105.519', '-1.93999', '-1.94369');
INSERT INTO `fbroad` VALUES ('64', 'CR', 'U38', 'CR_U38', '4.77344324326', '105.519', '105.519', '-1.94369', '-1.94372');
INSERT INTO `fbroad` VALUES ('65', 'CR', 'T21', 'CR_T21', '672.05864942200', '105.472', '105.472', '-1.94073', '-1.93465');
INSERT INTO `fbroad` VALUES ('66', 'MR', 'T32', 'MR_T32', '2.93028339497', '105.505', '105.505', '-1.93923', '-1.93923');
INSERT INTO `fbroad` VALUES ('67', 'MR', 'T33', 'MR_T33', '297.33388753900', '105.508', '105.505', '-1.93917', '-1.93923');
INSERT INTO `fbroad` VALUES ('68', 'CR', 'T42', 'CR_T42', '959.36248455300', '105.533', '105.533', '-1.93488', '-1.94356');
INSERT INTO `fbroad` VALUES ('69', 'CR', 'U42', 'CR_U42', '4.50506280854', '105.533', '105.533', '-1.94356', '-1.94360');
INSERT INTO `fbroad` VALUES ('70', 'CR', 'S41', 'CR_S41', '3.50992663726', '105.530', '105.530', '-1.92587', '-1.92587');
INSERT INTO `fbroad` VALUES ('71', 'CR', 'S42', 'CR_S42', '984.40216870200', '105.533', '105.533', '-1.92594', '-1.93484');
INSERT INTO `fbroad` VALUES ('72', 'CR', 'T42', 'CR_T42', '3.81470102759', '105.533', '105.533', '-1.93484', '-1.93488');
INSERT INTO `fbroad` VALUES ('73', 'CR', 'S21', 'CR_S21', '1002.68785813000', '105.472', '105.472', '-1.93461', '-1.92553');
INSERT INTO `fbroad` VALUES ('74', 'CR', 'T21', 'CR_T21', '4.52831460294', '105.472', '105.472', '-1.93465', '-1.93461');
INSERT INTO `fbroad` VALUES ('75', 'CR', 'R25', 'CR_R25', '3.20984663982', '105.486', '105.486', '-1.92305', '-1.92303');
INSERT INTO `fbroad` VALUES ('76', 'CR', 'R26', 'CR_R26', '175.72741900400', '105.487', '105.486', '-1.92414', '-1.92305');
INSERT INTO `fbroad` VALUES ('77', 'CR', 'R25', 'CR_R25', '231.25216095400', '105.485', '105.483', '-1.92487', '-1.92554');
INSERT INTO `fbroad` VALUES ('78', 'CR', 'S24', 'CR_S24', '0.09974953640', '105.483', '105.483', '-1.92554', '-1.92554');
INSERT INTO `fbroad` VALUES ('79', 'CR', 'R21', 'CR_R21', '1004.23017556000', '105.472', '105.472', '-1.92549', '-1.91641');
INSERT INTO `fbroad` VALUES ('80', 'CR', 'S21', 'CR_S21', '4.49614537791', '105.472', '105.472', '-1.92553', '-1.92549');
INSERT INTO `fbroad` VALUES ('81', 'CR', 'P39', 'CR_P39', '3.20620389859', '105.525', '105.525', '-1.90263', '-1.90263');
INSERT INTO `fbroad` VALUES ('82', 'CR', 'P40', 'CR_P40', '568.28241816500', '105.527', '105.527', '-1.90266', '-1.90741');
INSERT INTO `fbroad` VALUES ('83', 'CR', 'Q40', 'CR_Q40', '4.50208968283', '105.527', '105.527', '-1.90741', '-1.90745');
INSERT INTO `fbroad` VALUES ('84', 'CR', 'R40', 'CR_R40', '3.49992921374', '105.527', '105.527', '-1.91631', '-1.91631');
INSERT INTO `fbroad` VALUES ('85', 'CR', 'R41', 'CR_R41', '1048.18236965000', '105.530', '105.530', '-1.91634', '-1.92583');
INSERT INTO `fbroad` VALUES ('86', 'CR', 'S41', 'CR_S41', '5.11766352990', '105.530', '105.530', '-1.92583', '-1.92587');
INSERT INTO `fbroad` VALUES ('87', 'CR', 'Q21', 'CR_Q21', '1004.90664581000', '105.472', '105.472', '-1.91637', '-1.90728');
INSERT INTO `fbroad` VALUES ('88', 'CR', 'R21', 'CR_R21', '4.50053922479', '105.472', '105.472', '-1.91641', '-1.91637');
INSERT INTO `fbroad` VALUES ('89', 'CR', 'Q40', 'CR_Q40', '975.68207467300', '105.527', '105.527', '-1.91627', '-1.90745');
INSERT INTO `fbroad` VALUES ('90', 'CR', 'R40', 'CR_R40', '4.50101446599', '105.527', '105.527', '-1.91631', '-1.91627');
INSERT INTO `fbroad` VALUES ('91', 'CR', 'P30', 'CR_P30', '2.93185474564', '105.500', '105.500', '-1.90112', '-1.90111');
INSERT INTO `fbroad` VALUES ('92', 'CR', 'P31', 'CR_P31', '465.49430369100', '105.501', '105.500', '-1.89813', '-1.90112');
INSERT INTO `fbroad` VALUES ('93', 'CR', 'P29', 'CR_P29', '272.45373960300', '105.496', '105.497', '-1.90224', '-1.90411');
INSERT INTO `fbroad` VALUES ('94', 'CR', 'P29', 'CR_P29', '7.52278173310', '105.497', '105.497', '-1.90408', '-1.90411');
INSERT INTO `fbroad` VALUES ('95', 'CR', 'P30', 'CR_P30', '592.95465061200', '105.500', '105.497', '-1.90111', '-1.90408');
INSERT INTO `fbroad` VALUES ('96', 'MR', 'P38', 'MR_P38', '3.20699979696', '105.522', '105.522', '-1.90260', '-1.90260');
INSERT INTO `fbroad` VALUES ('97', 'MR', 'P39', 'MR_P39', '304.69400452400', '105.522', '105.525', '-1.90260', '-1.90263');
INSERT INTO `fbroad` VALUES ('98', 'MR', 'P37', 'MR_P37', '2.62495185878', '105.519', '105.519', '-1.90258', '-1.90258');
INSERT INTO `fbroad` VALUES ('99', 'MR', 'P38', 'MR_P38', '301.53000784800', '105.519', '105.522', '-1.90258', '-1.90260');
INSERT INTO `fbroad` VALUES ('100', 'CR', 'P29', 'CR_P29', '11.21583976520', '105.497', '105.497', '-1.90411', '-1.90418');
INSERT INTO `fbroad` VALUES ('101', 'CR', 'P21', 'CR_P21', '1003.03429960000', '105.472', '105.472', '-1.90724', '-1.89816');
INSERT INTO `fbroad` VALUES ('102', 'CR', 'Q21', 'CR_Q21', '4.48533815300', '105.472', '105.472', '-1.90728', '-1.90724');
INSERT INTO `fbroad` VALUES ('103', 'CR', 'P36', 'CR_P36', '3.00436829904', '105.516', '105.516', '-1.89815', '-1.89815');
INSERT INTO `fbroad` VALUES ('104', 'CR', 'P37', 'CR_P37', '489.69729091600', '105.519', '105.519', '-1.89814', '-1.90258');
INSERT INTO `fbroad` VALUES ('105', 'MR', 'P35', 'MR_P35', '3.50686347715', '105.514', '105.514', '-1.89813', '-1.89813');
INSERT INTO `fbroad` VALUES ('106', 'MR', 'P36', 'MR_P36', '302.34212339300', '105.514', '105.516', '-1.89813', '-1.89815');
INSERT INTO `fbroad` VALUES ('107', 'CR', 'M33', 'CR_M33', '4.04952228452', '105.508', '105.508', '-1.88197', '-1.88198');
INSERT INTO `fbroad` VALUES ('108', 'CR', 'M34', 'CR_M34', '260.09713429600', '105.510', '105.508', '-1.88050', '-1.88197');
INSERT INTO `fbroad` VALUES ('109', 'CR', 'N30', 'CR_N30', '3.20804847442', '105.500', '105.500', '-1.89399', '-1.89399');
INSERT INTO `fbroad` VALUES ('110', 'CR', 'N31', 'CR_N31', '585.30483578500', '105.500', '105.501', '-1.89399', '-1.89809');
INSERT INTO `fbroad` VALUES ('111', 'CR', 'P31', 'CR_P31', '4.50677310386', '105.501', '105.501', '-1.89809', '-1.89813');
INSERT INTO `fbroad` VALUES ('112', 'MR', 'N29', 'MR_N29', '3.41529506318', '105.498', '105.497', '-1.89399', '-1.89399');
INSERT INTO `fbroad` VALUES ('113', 'MR', 'N30', 'MR_N30', '287.03327427600', '105.500', '105.498', '-1.89399', '-1.89399');
INSERT INTO `fbroad` VALUES ('114', 'MR', 'N28', 'MR_N28', '3.20201946864', '105.495', '105.495', '-1.89395', '-1.89395');
INSERT INTO `fbroad` VALUES ('115', 'MR', 'N29', 'MR_N29', '318.75924234700', '105.497', '105.495', '-1.89399', '-1.89395');
INSERT INTO `fbroad` VALUES ('116', 'CR', 'N34', 'CR_N34', '3.49410024161', '105.511', '105.511', '-1.88961', '-1.88961');
INSERT INTO `fbroad` VALUES ('117', 'CR', 'N35', 'CR_N35', '934.45145906700', '105.514', '105.514', '-1.89809', '-1.88963');
INSERT INTO `fbroad` VALUES ('118', 'CR', 'P35', 'CR_P35', '4.50852267868', '105.514', '105.514', '-1.89813', '-1.89809');
INSERT INTO `fbroad` VALUES ('119', 'MR', 'N24', 'MR_N24', '3.20680122221', '105.484', '105.484', '-1.88954', '-1.88954');
INSERT INTO `fbroad` VALUES ('120', 'MR', 'N25', 'MR_N25', '298.75784782000', '105.484', '105.486', '-1.88954', '-1.88955');
INSERT INTO `fbroad` VALUES ('121', 'MR', 'N23', 'MR_N23', '3.66571154462', '105.481', '105.481', '-1.88952', '-1.88952');
INSERT INTO `fbroad` VALUES ('122', 'MR', 'N24', 'MR_N24', '305.58205078200', '105.481', '105.484', '-1.88952', '-1.88954');
INSERT INTO `fbroad` VALUES ('123', 'CR', 'M34', 'CR_M34', '1004.13984852000', '105.511', '105.511', '-1.88957', '-1.88049');
INSERT INTO `fbroad` VALUES ('124', 'CR', 'N34', 'CR_N34', '4.49397695916', '105.511', '105.511', '-1.88961', '-1.88957');
INSERT INTO `fbroad` VALUES ('125', 'MR', 'N21', 'MR_N21', '3.20734623384', '105.475', '105.475', '-1.88950', '-1.88950');
INSERT INTO `fbroad` VALUES ('126', 'MR', 'N22', 'MR_N22', '307.87192165300', '105.475', '105.478', '-1.88950', '-1.88952');
INSERT INTO `fbroad` VALUES ('127', 'CR', 'N21', 'CR_N21', '951.02944520200', '105.472', '105.472', '-1.88952', '-1.89812');
INSERT INTO `fbroad` VALUES ('128', 'CR', 'P21', 'CR_P21', '4.48034331044', '105.472', '105.472', '-1.89812', '-1.89816');
INSERT INTO `fbroad` VALUES ('129', 'MR', 'N22', 'MR_N22', '3.00010620222', '105.478', '105.478', '-1.88952', '-1.88952');
INSERT INTO `fbroad` VALUES ('130', 'MR', 'N23', 'MR_N23', '301.05433308200', '105.478', '105.481', '-1.88952', '-1.88952');
INSERT INTO `fbroad` VALUES ('131', 'CR', 'M26', 'CR_M26', '998.88501551200', '105.486', '105.486', '-1.88951', '-1.88047');
INSERT INTO `fbroad` VALUES ('132', 'CR', 'N25', 'CR_N25', '4.50371318955', '105.486', '105.486', '-1.88955', '-1.88951');
INSERT INTO `fbroad` VALUES ('133', 'MR', 'M32', 'MR_M32', '3.20269821538', '105.506', '105.506', '-1.88121', '-1.88120');
INSERT INTO `fbroad` VALUES ('134', 'MR', 'M33', 'MR_M33', '313.81747879200', '105.508', '105.506', '-1.88190', '-1.88121');
INSERT INTO `fbroad` VALUES ('135', 'CR', 'L34', 'CR_L34', '940.84357331100', '105.513', '105.511', '-1.87302', '-1.88049');
INSERT INTO `fbroad` VALUES ('136', 'CR', 'M34', 'CR_M34', '3.00229014311', '105.511', '105.511', '-1.88049', '-1.88049');
INSERT INTO `fbroad` VALUES ('137', 'MR', 'M31', 'MR_M31', '3.00401641997', '105.503', '105.503', '-1.88043', '-1.88043');
INSERT INTO `fbroad` VALUES ('138', 'MR', 'M32', 'MR_M32', '360.86765304900', '105.506', '105.503', '-1.88120', '-1.88043');
INSERT INTO `fbroad` VALUES ('139', 'CR', 'L34', 'CR_L34', '1066.46477688000', '105.509', '105.509', '-1.88045', '-1.87121');
INSERT INTO `fbroad` VALUES ('140', 'CR', 'M34', 'CR_M34', '1.59130138572', '105.509', '105.509', '-1.88046', '-1.88045');
INSERT INTO `fbroad` VALUES ('141', 'MR', 'M26', 'MR_M26', '2.50231007253', '105.489', '105.489', '-1.88044', '-1.88044');
INSERT INTO `fbroad` VALUES ('142', 'MR', 'M27', 'MR_M27', '324.91123991300', '105.489', '105.492', '-1.88044', '-1.88044');
INSERT INTO `fbroad` VALUES ('143', 'MR', 'M27', 'MR_M27', '3.00225886291', '105.492', '105.492', '-1.88044', '-1.88044');
INSERT INTO `fbroad` VALUES ('144', 'MR', 'M28', 'MR_M28', '289.93827007400', '105.495', '105.492', '-1.88045', '-1.88044');
INSERT INTO `fbroad` VALUES ('145', 'MR', 'M28', 'MR_M28', '2.86408730627', '105.495', '105.495', '-1.88045', '-1.88045');
INSERT INTO `fbroad` VALUES ('146', 'MR', 'M29', 'MR_M29', '304.95257649300', '105.495', '105.497', '-1.88045', '-1.88043');
INSERT INTO `fbroad` VALUES ('147', 'MR', 'M30', 'MR_M30', '3.00329020349', '105.500', '105.500', '-1.88042', '-1.88042');
INSERT INTO `fbroad` VALUES ('148', 'MR', 'M31', 'MR_M31', '293.29259534600', '105.500', '105.503', '-1.88042', '-1.88043');
INSERT INTO `fbroad` VALUES ('149', 'MR', 'M29', 'MR_M29', '3.00381813738', '105.497', '105.497', '-1.88043', '-1.88043');
INSERT INTO `fbroad` VALUES ('150', 'MR', 'M30', 'MR_M30', '304.67618117400', '105.500', '105.497', '-1.88042', '-1.88043');
INSERT INTO `fbroad` VALUES ('154', 'MR', 'W20', 'MR_V20_W20', '300.92456136200', '105.470', '105.472', '-1.96227', '-1.96224');
INSERT INTO `fbroad` VALUES ('155', 'CR', 'W20', 'CR_W20_W21', '981.73366652100', '105.472', '105.472', '-1.96224', '-1.97112');
INSERT INTO `fbroad` VALUES ('156', 'CR', 'W21', 'CR_W21_W22', '986.38960043500', '105.475', '105.475', '-1.97112', '-1.96220');
INSERT INTO `fbroad` VALUES ('157', 'CR', 'W22', 'CR_W22_W23', '989.21750942900', '105.478', '105.478', '-1.96215', '-1.97110');
INSERT INTO `fbroad` VALUES ('158', 'MR', 'W20', 'MR_V21_W21', '4.27728785206', '105.472', '105.472', '-1.96224', '-1.96224');
INSERT INTO `fbroad` VALUES ('159', 'MR', 'W21', 'MR_V21_W21', '302.27472583900', '105.475', '105.472', '-1.96220', '-1.96224');
INSERT INTO `fbroad` VALUES ('160', 'MR', 'W21', 'MR_V22_W22', '3.49923872470', '105.475', '105.475', '-1.96220', '-1.96220');
INSERT INTO `fbroad` VALUES ('161', 'MR', 'W22', 'MR_V22_W22', '304.09782432400', '105.478', '105.475', '-1.96215', '-1.96220');
INSERT INTO `fbroad` VALUES ('162', 'CR', 'W23', 'CR_W23_W24', '997.35260640400', '105.481', '105.481', '-1.97113', '-1.96211');
INSERT INTO `fbroad` VALUES ('163', 'CR', 'V20', 'CR_V20_V21', '1009.07988749000', '105.472', '105.472', '-1.96220', '-1.95307');
INSERT INTO `fbroad` VALUES ('164', 'CR', 'W20', 'CR_V20_V21', '4.49890203623', '105.472', '105.472', '-1.96224', '-1.96220');
INSERT INTO `fbroad` VALUES ('165', 'MR', 'W22', 'MR_V23_W23', '3.50847653048', '105.478', '105.478', '-1.96215', '-1.96215');
INSERT INTO `fbroad` VALUES ('166', 'MR', 'W23', 'MR_V23_W23', '294.32352977600', '105.478', '105.481', '-1.96215', '-1.96211');
INSERT INTO `fbroad` VALUES ('167', 'CR', 'W24', 'CR_W24_W25', '999.02028929300', '105.483', '105.483', '-1.96207', '-1.97111');
INSERT INTO `fbroad` VALUES ('168', 'CR', 'W25', 'CR_W25_W26', '1007.59601341000', '105.486', '105.486', '-1.96204', '-1.97116');
INSERT INTO `fbroad` VALUES ('169', 'MR', 'W23', 'MR_V24_W24', '3.50242211349', '105.481', '105.481', '-1.96211', '-1.96211');
INSERT INTO `fbroad` VALUES ('170', 'MR', 'W24', 'MR_V24_W24', '307.87621448500', '105.483', '105.481', '-1.96207', '-1.96211');
INSERT INTO `fbroad` VALUES ('171', 'MR', 'W24', 'MR_V25_W25', '3.50521474936', '105.483', '105.483', '-1.96207', '-1.96207');
INSERT INTO `fbroad` VALUES ('172', 'MR', 'W25', 'MR_V25_W25', '290.73861716600', '105.483', '105.486', '-1.96207', '-1.96204');
INSERT INTO `fbroad` VALUES ('173', 'CR', 'V21', 'CR_V21_V22', '1009.35084960000', '105.475', '105.475', '-1.95303', '-1.96216');
INSERT INTO `fbroad` VALUES ('174', 'CR', 'W21', 'CR_V21_V22', '4.49350064079', '105.475', '105.475', '-1.96216', '-1.96220');
INSERT INTO `fbroad` VALUES ('175', 'CR', 'V34', 'CR_V34_V35', '1002.65302135000', '105.511', '105.511', '-1.95298', '-1.96205');
INSERT INTO `fbroad` VALUES ('176', 'CR', 'V33', 'CR_V33_V34', '1002.32739351000', '105.508', '105.508', '-1.96201', '-1.95294');
INSERT INTO `fbroad` VALUES ('177', 'CR', 'V24', 'CR_V24_V25', '1008.37140148000', '105.483', '105.483', '-1.95291', '-1.96203');
INSERT INTO `fbroad` VALUES ('178', 'CR', 'W24', 'CR_V24_V25', '4.50480919059', '105.483', '105.483', '-1.96203', '-1.96207');
INSERT INTO `fbroad` VALUES ('179', 'CR', 'V23', 'CR_V23_V24', '1008.00991384000', '105.481', '105.481', '-1.95295', '-1.96207');
INSERT INTO `fbroad` VALUES ('180', 'CR', 'W23', 'CR_V23_V24', '4.50240255828', '105.481', '105.481', '-1.96207', '-1.96211');
INSERT INTO `fbroad` VALUES ('181', 'CR', 'V22', 'CR_V22_V23', '1009.12597459000', '105.478', '105.478', '-1.95298', '-1.96211');
INSERT INTO `fbroad` VALUES ('182', 'CR', 'W22', 'CR_V22_V23', '4.50570113783', '105.478', '105.478', '-1.96211', '-1.96215');
INSERT INTO `fbroad` VALUES ('183', 'CR', 'V36', 'CR_V36_V37', '1032.96862878000', '105.516', '105.516', '-1.96209', '-1.95300');
INSERT INTO `fbroad` VALUES ('184', 'MR', 'V20', 'MR_U20_V20', '304.50723037200', '105.470', '105.472', '-1.95310', '-1.95307');
INSERT INTO `fbroad` VALUES ('185', 'MR', 'V20', 'MR_U21_V21', '3.50456386619', '105.472', '105.472', '-1.95307', '-1.95307');
INSERT INTO `fbroad` VALUES ('186', 'MR', 'V21', 'MR_U21_V21', '301.62354891600', '105.475', '105.472', '-1.95303', '-1.95307');
INSERT INTO `fbroad` VALUES ('187', 'MR', 'V35', 'MR_U36_V36', '3.49993906746', '105.514', '105.514', '-1.95298', '-1.95298');
INSERT INTO `fbroad` VALUES ('188', 'MR', 'V36', 'MR_U36_V36', '276.54229255200', '105.514', '105.516', '-1.95298', '-1.95300');
INSERT INTO `fbroad` VALUES ('189', 'MR', 'V36', 'MR_U37_V37', '3.49465003241', '105.516', '105.516', '-1.95300', '-1.95300');
INSERT INTO `fbroad` VALUES ('190', 'MR', 'V37', 'MR_U37_V37', '320.19793955800', '105.519', '105.516', '-1.95301', '-1.95300');
INSERT INTO `fbroad` VALUES ('191', 'CR', 'V35', 'CR_V35_V36', '1003.45744434000', '105.514', '105.514', '-1.96206', '-1.95298');
INSERT INTO `fbroad` VALUES ('192', 'MR', 'V34', 'MR_U35_V35', '3.49210515487', '105.511', '105.511', '-1.95298', '-1.95298');
INSERT INTO `fbroad` VALUES ('193', 'MR', 'V35', 'MR_U35_V35', '301.64463365200', '105.511', '105.514', '-1.95298', '-1.95298');
INSERT INTO `fbroad` VALUES ('194', 'CR', 'U23', 'CR_U23_U24', '1063.60757492000', '105.481', '105.481', '-1.95291', '-1.94400');
INSERT INTO `fbroad` VALUES ('195', 'CR', 'V23', 'CR_U23_U24', '4.49360000971', '105.481', '105.481', '-1.95295', '-1.95291');
INSERT INTO `fbroad` VALUES ('196', 'MR', 'V21', 'MR_U22_V22', '3.50340359769', '105.475', '105.475', '-1.95303', '-1.95303');
INSERT INTO `fbroad` VALUES ('197', 'MR', 'V22', 'MR_U22_V22', '302.79098072700', '105.478', '105.475', '-1.95298', '-1.95303');
INSERT INTO `fbroad` VALUES ('198', 'MR', 'V22', 'MR_U23_V23', '3.49770534261', '105.478', '105.478', '-1.95298', '-1.95298');
INSERT INTO `fbroad` VALUES ('199', 'MR', 'V23', 'MR_U23_V23', '296.08981312600', '105.478', '105.481', '-1.95298', '-1.95295');
INSERT INTO `fbroad` VALUES ('200', 'MR', 'V33', 'MR_U34_V34', '3.50681354647', '105.508', '105.508', '-1.95294', '-1.95294');
INSERT INTO `fbroad` VALUES ('201', 'MR', 'V34', 'MR_U34_V34', '301.47343236400', '105.508', '105.511', '-1.95294', '-1.95298');
INSERT INTO `fbroad` VALUES ('202', 'CR', 'V32', 'CR_V32_V33', '1004.45417685000', '105.505', '105.505', '-1.95292', '-1.96201');
INSERT INTO `fbroad` VALUES ('203', 'CR', 'U32', 'CR_U32_U33', '506.16882552300', '105.505', '105.505', '-1.95288', '-1.94830');
INSERT INTO `fbroad` VALUES ('204', 'CR', 'V32', 'CR_U32_U33', '4.50260764933', '105.505', '105.505', '-1.95292', '-1.95288');
INSERT INTO `fbroad` VALUES ('205', 'CR', 'U34', 'CR_U34_U35', '511.15310457500', '105.511', '105.511', '-1.95293', '-1.94831');
INSERT INTO `fbroad` VALUES ('206', 'CR', 'V34', 'CR_U34_U35', '5.21801905071', '105.511', '105.511', '-1.95298', '-1.95293');
INSERT INTO `fbroad` VALUES ('207', 'CR', 'U35', 'CR_U35_U36', '514.18440158800', '105.514', '105.514', '-1.95294', '-1.94829');
INSERT INTO `fbroad` VALUES ('208', 'CR', 'V35', 'CR_U35_U36', '4.51050938147', '105.514', '105.514', '-1.95298', '-1.95294');
INSERT INTO `fbroad` VALUES ('209', 'MR', 'V32', 'MR_U33_V33', '3.49870495571', '105.505', '105.505', '-1.95292', '-1.95292');
INSERT INTO `fbroad` VALUES ('210', 'MR', 'V33', 'MR_U33_V33', '304.55369821200', '105.505', '105.508', '-1.95292', '-1.95294');
INSERT INTO `fbroad` VALUES ('211', 'MR', 'V32', 'MR_U32_V32', '311.84670305000', '105.502', '105.505', '-1.95290', '-1.95292');
INSERT INTO `fbroad` VALUES ('212', 'MR', 'V23', 'MR_U24_V24', '3.50287566764', '105.481', '105.481', '-1.95295', '-1.95295');
INSERT INTO `fbroad` VALUES ('213', 'MR', 'V24', 'MR_U24_V24', '308.87637057900', '105.481', '105.483', '-1.95295', '-1.95291');
INSERT INTO `fbroad` VALUES ('214', 'CR', 'U38', 'CR_U38_U39', '490.92148618100', '105.522', '105.522', '-1.94814', '-1.94370');
INSERT INTO `fbroad` VALUES ('215', 'CR', 'U32', 'CR_U32_V33', '500.27820887600', '105.505', '105.505', '-1.94377', '-1.94830');
INSERT INTO `fbroad` VALUES ('216', 'MR', 'V24', 'MR_U25_V25', '3.50406507508', '105.483', '105.483', '-1.95291', '-1.95291');
INSERT INTO `fbroad` VALUES ('217', 'MR', 'V25', 'MR_U25_V25', '289.35905198600', '105.483', '105.486', '-1.95291', '-1.95288');
INSERT INTO `fbroad` VALUES ('218', 'CR', 'U24', 'CR_U24_U25', '781.38673807500', '105.483', '105.483', '-1.95287', '-1.94580');
INSERT INTO `fbroad` VALUES ('219', 'CR', 'V24', 'CR_U24_U25', '4.50450024956', '105.483', '105.483', '-1.95291', '-1.95287');
INSERT INTO `fbroad` VALUES ('220', 'CR', 'U25', 'CR_U25_U26', '138.02291064500', '105.486', '105.486', '-1.94728', '-1.94853');
INSERT INTO `fbroad` VALUES ('221', 'CR', 'U25', 'CR_U25_V26', '97.79745928650', '105.486', '105.486', '-1.94639', '-1.94728');
INSERT INTO `fbroad` VALUES ('222', 'CR', 'U25', 'CR_U25_U26', '286.87942100200', '105.486', '105.486', '-1.94380', '-1.94639');
INSERT INTO `fbroad` VALUES ('223', 'CR', 'U26', 'CR_U26_U27', '550.93617547400', '105.489', '105.489', '-1.94877', '-1.94379');
INSERT INTO `fbroad` VALUES ('224', 'CR', 'U24', 'CR_U24_U25', '222.52407997800', '105.483', '105.483', '-1.94580', '-1.94379');
INSERT INTO `fbroad` VALUES ('225', 'CR', 'U29', 'CR_U29_U30', '538.25440555300', '105.497', '105.497', '-1.94865', '-1.94378');
INSERT INTO `fbroad` VALUES ('226', 'CR', 'U27', 'CR_U27_U28', '548.51956371800', '105.492', '105.492', '-1.94377', '-1.94873');
INSERT INTO `fbroad` VALUES ('227', 'CR', 'U25', 'CR_U25_U26', '31.76437828670', '105.486', '105.486', '-1.94881', '-1.94853');
INSERT INTO `fbroad` VALUES ('228', 'MR', 'U32', 'MR_U33_V33', '2.92070536917', '105.505', '105.505', '-1.94830', '-1.94830');
INSERT INTO `fbroad` VALUES ('229', 'MR', 'U33', 'MR_U33_V33', '302.02004051800', '105.505', '105.508', '-1.94830', '-1.94831');
INSERT INTO `fbroad` VALUES ('230', 'CR', 'U33', 'CR_U33_U34', '507.06819038100', '105.508', '105.508', '-1.94831', '-1.95290');
INSERT INTO `fbroad` VALUES ('231', 'CR', 'V33', 'CR_U33_U34', '4.50662496328', '105.508', '105.508', '-1.95290', '-1.95294');
INSERT INTO `fbroad` VALUES ('232', 'MR', 'U33', 'MR_U34_V34', '3.28046887494', '105.508', '105.508', '-1.94831', '-1.94831');
INSERT INTO `fbroad` VALUES ('233', 'MR', 'U34', 'MR_U34_V34', '305.26516524000', '105.508', '105.511', '-1.94831', '-1.94831');
INSERT INTO `fbroad` VALUES ('234', 'MR', 'U34', 'MR_U35_V35', '3.06422520394', '105.511', '105.511', '-1.94831', '-1.94831');
INSERT INTO `fbroad` VALUES ('235', 'MR', 'U35', 'MR_U35_V35', '298.59832246500', '105.511', '105.514', '-1.94831', '-1.94829');
INSERT INTO `fbroad` VALUES ('236', 'CR', 'U39', 'CR_U39_U40', '388.65508055500', '105.524', '105.524', '-1.94368', '-1.94720');
INSERT INTO `fbroad` VALUES ('237', 'CR', 'U40', 'CR_U39_U40', '3.52965147589', '105.524', '105.524', '-1.94720', '-1.94723');
INSERT INTO `fbroad` VALUES ('238', 'CR', 'U36', 'CR_U36_U37', '1020.07167197000', '105.516', '105.516', '-1.95296', '-1.94373');
INSERT INTO `fbroad` VALUES ('239', 'CR', 'V36', 'CR_U36_U37', '4.49332191553', '105.516', '105.516', '-1.95300', '-1.95296');
INSERT INTO `fbroad` VALUES ('240', 'CR', 'U28', 'CR_U28_U29', '543.68583414400', '105.494', '105.494', '-1.94377', '-1.94869');
INSERT INTO `fbroad` VALUES ('241', 'CR', 'U22', 'CR_U22_U23', '1013.18557088000', '105.478', '105.478', '-1.94377', '-1.95294');
INSERT INTO `fbroad` VALUES ('242', 'CR', 'V22', 'CR_U22_U23', '4.51120028334', '105.478', '105.478', '-1.95294', '-1.95298');
INSERT INTO `fbroad` VALUES ('243', 'CR', 'U23', 'CR_U23_U24', '21.43707242690', '105.481', '105.481', '-1.94380', '-1.94400');
INSERT INTO `fbroad` VALUES ('244', 'CR', 'U20', 'CR_U20_U21', '1021.29272381000', '105.472', '105.472', '-1.94379', '-1.95303');
INSERT INTO `fbroad` VALUES ('245', 'CR', 'V20', 'CR_U20_U21', '4.49490087145', '105.472', '105.472', '-1.95303', '-1.95307');
INSERT INTO `fbroad` VALUES ('246', 'CR', 'U21', 'CR_U21_U22', '1017.07606431000', '105.475', '105.475', '-1.95299', '-1.94379');
INSERT INTO `fbroad` VALUES ('247', 'CR', 'V21', 'CR_U21_U22', '4.49610121209', '105.475', '105.475', '-1.95303', '-1.95299');
INSERT INTO `fbroad` VALUES ('248', 'MR', 'U25', 'MR_T26_U26', '3.05006989041', '105.486', '105.486', '-1.94380', '-1.94380');
INSERT INTO `fbroad` VALUES ('249', 'MR', 'U26', 'MR_T26_U26', '305.77038995000', '105.489', '105.486', '-1.94379', '-1.94380');
INSERT INTO `fbroad` VALUES ('250', 'MR', 'U24', 'MR_T25_U25', '3.50008574895', '105.483', '105.483', '-1.94379', '-1.94379');
INSERT INTO `fbroad` VALUES ('251', 'MR', 'U25', 'MR_T25_U25', '290.25591317300', '105.486', '105.483', '-1.94380', '-1.94379');
INSERT INTO `fbroad` VALUES ('252', 'CR', 'U37', 'CR_U37_U38', '1021.87452149000', '105.519', '105.519', '-1.95297', '-1.94373');
INSERT INTO `fbroad` VALUES ('253', 'CR', 'U38', 'CR_U37_U38', '0.90654908368', '105.519', '105.519', '-1.94373', '-1.94372');
INSERT INTO `fbroad` VALUES ('254', 'CR', 'V37', 'CR_U37_U38', '4.46456028028', '105.519', '105.519', '-1.95301', '-1.95297');
INSERT INTO `fbroad` VALUES ('255', 'MR', 'U23', 'MR_T23_U23', '29.88025899650', '105.480', '105.481', '-1.94383', '-1.94380');
INSERT INTO `fbroad` VALUES ('256', 'MR', 'U20', 'MR_T21_U21', '3.50000057143', '105.472', '105.472', '-1.94379', '-1.94379');
INSERT INTO `fbroad` VALUES ('257', 'MR', 'U21', 'MR_T21_U21', '301.38315893300', '105.472', '105.475', '-1.94379', '-1.94379');
INSERT INTO `fbroad` VALUES ('258', 'CR', 'U30', 'CR_U30_U31', '533.20210682700', '105.500', '105.500', '-1.94859', '-1.94377');
INSERT INTO `fbroad` VALUES ('259', 'CR', 'U31', 'CR_U31_U32', '538.09491634300', '105.503', '105.502', '-1.94377', '-1.94864');
INSERT INTO `fbroad` VALUES ('260', 'MR', 'T23', 'MR_T23_U23', '2.11692282643', '105.480', '105.480', '-1.94375', '-1.94374');
INSERT INTO `fbroad` VALUES ('261', 'MR', 'U22', 'MR_T23_U23', '3.50007622918', '105.478', '105.478', '-1.94377', '-1.94377');
INSERT INTO `fbroad` VALUES ('262', 'MR', 'U23', 'MR_T23_U23', '230.04076213100', '105.478', '105.480', '-1.94377', '-1.94375');
INSERT INTO `fbroad` VALUES ('263', 'MR', 'U30', 'MR_T31_U31', '3.50001605139', '105.500', '105.500', '-1.94377', '-1.94377');
INSERT INTO `fbroad` VALUES ('264', 'MR', 'U31', 'MR_T31_U31', '278.80520195300', '105.500', '105.503', '-1.94377', '-1.94377');
INSERT INTO `fbroad` VALUES ('265', 'MR', 'U26', 'MR_T27_U27', '3.95013701283', '105.489', '105.489', '-1.94379', '-1.94379');
INSERT INTO `fbroad` VALUES ('266', 'MR', 'U27', 'MR_T27_U27', '319.93937156400', '105.489', '105.492', '-1.94379', '-1.94377');
INSERT INTO `fbroad` VALUES ('267', 'CR', 'T23', 'CR_T23_T24', '1009.64830839000', '105.481', '105.481', '-1.94375', '-1.93464');
INSERT INTO `fbroad` VALUES ('268', 'CR', 'U23', 'CR_T23_T24', '5.51642969419', '105.481', '105.481', '-1.94380', '-1.94375');
INSERT INTO `fbroad` VALUES ('269', 'MR', 'U21', 'MR_T22_U22', '3.87433556172', '105.475', '105.475', '-1.94379', '-1.94379');
INSERT INTO `fbroad` VALUES ('270', 'MR', 'U22', 'MR_T22_U22', '303.65138110600', '105.475', '105.478', '-1.94379', '-1.94377');
INSERT INTO `fbroad` VALUES ('271', 'MR', 'U28', 'MR_T29_U29', '3.98633753964', '105.494', '105.494', '-1.94377', '-1.94377');
INSERT INTO `fbroad` VALUES ('272', 'MR', 'U29', 'MR_T29_U29', '300.32158751000', '105.494', '105.497', '-1.94377', '-1.94378');
INSERT INTO `fbroad` VALUES ('273', 'MR', 'U31', 'MR_T32_U32', '3.50000041286', '105.503', '105.503', '-1.94377', '-1.94377');
INSERT INTO `fbroad` VALUES ('274', 'MR', 'U32', 'MR_T32_U32', '302.90983591400', '105.503', '105.505', '-1.94377', '-1.94377');
INSERT INTO `fbroad` VALUES ('275', 'MR', 'U29', 'MR_T30_U30', '3.50012642276', '105.497', '105.497', '-1.94378', '-1.94378');
INSERT INTO `fbroad` VALUES ('276', 'MR', 'U30', 'MR_T30_U30', '312.39193459100', '105.497', '105.500', '-1.94378', '-1.94377');
INSERT INTO `fbroad` VALUES ('277', 'MR', 'U36', 'MR_T36_U36', '284.02254663100', '105.514', '105.516', '-1.94374', '-1.94373');
INSERT INTO `fbroad` VALUES ('278', 'CR', 'T34', 'CR_T34_T35', '523.18879325400', '105.511', '105.511', '-1.93919', '-1.93474');
INSERT INTO `fbroad` VALUES ('279', 'MR', 'U23', 'MR_T24_U24', '3.50369815128', '105.481', '105.481', '-1.94380', '-1.94380');
INSERT INTO `fbroad` VALUES ('280', 'MR', 'U24', 'MR_T24_U24', '308.08440868000', '105.481', '105.483', '-1.94380', '-1.94379');
INSERT INTO `fbroad` VALUES ('281', 'CR', 'T25', 'CR_T25_T26', '1004.78598894000', '105.486', '105.486', '-1.94376', '-1.93467');
INSERT INTO `fbroad` VALUES ('282', 'CR', 'U25', 'CR_T25_T26', '3.93210875980', '105.486', '105.486', '-1.94380', '-1.94376');
INSERT INTO `fbroad` VALUES ('283', 'MR', 'U37', 'MR_T38_U37', '168.54792058500', '105.518', '105.519', '-1.94370', '-1.94372');
INSERT INTO `fbroad` VALUES ('284', 'MR', 'U38', 'MR_T38_U37', '0.15031466981', '105.519', '105.519', '-1.94372', '-1.94372');
INSERT INTO `fbroad` VALUES ('285', 'MR', 'U38', 'MR_T38_U38', '292.31148956400', '105.519', '105.522', '-1.94372', '-1.94370');
INSERT INTO `fbroad` VALUES ('286', 'CR', 'T33', 'CR_T33_T34', '124.31751696000', '105.508', '105.508', '-1.93478', '-1.93590');
INSERT INTO `fbroad` VALUES ('287', 'MR', 'U27', 'MR_T28_U28', '3.50000155571', '105.492', '105.492', '-1.94377', '-1.94377');
INSERT INTO `fbroad` VALUES ('288', 'MR', 'U28', 'MR_T28_U28', '284.89312229400', '105.492', '105.494', '-1.94377', '-1.94377');
INSERT INTO `fbroad` VALUES ('289', 'CR', 'T29', 'CR_T29_T30', '998.37100421600', '105.497', '105.497', '-1.94374', '-1.93471');
INSERT INTO `fbroad` VALUES ('290', 'CR', 'U29', 'CR_T29_T30', '4.48453041063', '105.497', '105.497', '-1.94378', '-1.94374');
INSERT INTO `fbroad` VALUES ('291', 'CR', 'T22', 'CR_T22_T23', '77.52252242290', '105.478', '105.478', '-1.94373', '-1.94303');
INSERT INTO `fbroad` VALUES ('292', 'CR', 'U22', 'CR_T22_T23', '4.52031242741', '105.478', '105.478', '-1.94377', '-1.94373');
INSERT INTO `fbroad` VALUES ('293', 'CR', 'T24', 'CR_T24_T25', '1003.65993852000', '105.483', '105.483', '-1.93466', '-1.94374');
INSERT INTO `fbroad` VALUES ('294', 'CR', 'U24', 'CR_T24_T25', '4.51640799870', '105.483', '105.483', '-1.94374', '-1.94379');
INSERT INTO `fbroad` VALUES ('295', 'CR', 'U40', 'CR_U40_U41', '495.40670798300', '105.527', '105.527', '-1.94814', '-1.94366');
INSERT INTO `fbroad` VALUES ('296', 'CR', 'T37', 'CR_T37_T38', '529.73348710100', '105.518', '105.519', '-1.94369', '-1.93998');
INSERT INTO `fbroad` VALUES ('297', 'CR', 'U37', 'CR_T37_T38', '0.90453313901', '105.518', '105.518', '-1.94370', '-1.94369');
INSERT INTO `fbroad` VALUES ('298', 'CR', 'T36', 'CR_T36_T37', '985.69782806400', '105.516', '105.516', '-1.93477', '-1.94369');
INSERT INTO `fbroad` VALUES ('299', 'CR', 'U36', 'CR_T36_T37', '4.54722120100', '105.516', '105.516', '-1.94369', '-1.94373');
INSERT INTO `fbroad` VALUES ('300', 'MR', 'U36', 'MR_T37_U37', '3.50010111980', '105.516', '105.516', '-1.94373', '-1.94373');
INSERT INTO `fbroad` VALUES ('301', 'MR', 'U37', 'MR_T37_U37', '153.28947204100', '105.516', '105.518', '-1.94373', '-1.94370');
INSERT INTO `fbroad` VALUES ('302', 'CR', 'U41', 'CR_U41_U42', '500.17779724100', '105.530', '105.530', '-1.94816', '-1.94363');
INSERT INTO `fbroad` VALUES ('303', 'MR', 'U38', 'MR_T39_U39', '3.50022096713', '105.522', '105.522', '-1.94370', '-1.94370');
INSERT INTO `fbroad` VALUES ('304', 'MR', 'U39', 'MR_T39_U39', '305.85070610800', '105.522', '105.524', '-1.94370', '-1.94368');
INSERT INTO `fbroad` VALUES ('305', 'MR', 'U39', 'MR_T40_U40', '3.50844051526', '105.524', '105.524', '-1.94368', '-1.94368');
INSERT INTO `fbroad` VALUES ('306', 'MR', 'U40', 'MR_T40_U40', '295.07030274100', '105.524', '105.527', '-1.94368', '-1.94366');
INSERT INTO `fbroad` VALUES ('307', 'MR', 'U41', 'MR_T42_U42', '3.48776670292', '105.530', '105.530', '-1.94363', '-1.94363');
INSERT INTO `fbroad` VALUES ('308', 'MR', 'U42', 'MR_T42_U42', '376.93662869700', '105.533', '105.530', '-1.94360', '-1.94363');
INSERT INTO `fbroad` VALUES ('309', 'MR', 'U40', 'MR_T41_U41', '3.49672698409', '105.527', '105.527', '-1.94366', '-1.94366');
INSERT INTO `fbroad` VALUES ('310', 'MR', 'U41', 'MR_T41_U41', '300.32460594800', '105.527', '105.530', '-1.94366', '-1.94363');
INSERT INTO `fbroad` VALUES ('311', 'CR', 'T27', 'CR_T27_T28', '999.76175188500', '105.492', '105.492', '-1.93468', '-1.94372');
INSERT INTO `fbroad` VALUES ('312', 'CR', 'U27', 'CR_T27_T28', '4.63213536199', '105.492', '105.492', '-1.94372', '-1.94377');
INSERT INTO `fbroad` VALUES ('313', 'CR', 'T32', 'CR_T32_T33', '498.32943466600', '105.505', '105.505', '-1.93923', '-1.93472');
INSERT INTO `fbroad` VALUES ('314', 'CR', 'T31', 'CR_T31_T32', '998.98389597600', '105.503', '105.503', '-1.94373', '-1.93470');
INSERT INTO `fbroad` VALUES ('315', 'CR', 'U31', 'CR_T31_T32', '4.49536513734', '105.503', '105.503', '-1.94377', '-1.94373');
INSERT INTO `fbroad` VALUES ('316', 'CR', 'T21', 'CR_T21_T22', '194.50538366200', '105.475', '105.475', '-1.94375', '-1.94199');
INSERT INTO `fbroad` VALUES ('317', 'CR', 'U21', 'CR_T21_T22', '4.49290560898', '105.475', '105.475', '-1.94379', '-1.94375');
INSERT INTO `fbroad` VALUES ('318', 'CR', 'T21', 'CR_T21_T22', '810.67141810900', '105.475', '105.475', '-1.94199', '-1.93465');
INSERT INTO `fbroad` VALUES ('319', 'CR', 'T40', 'CR_T40_T41', '970.05611337300', '105.527', '105.527', '-1.93484', '-1.94361');
INSERT INTO `fbroad` VALUES ('320', 'CR', 'U40', 'CR_T40_T41', '4.50123519475', '105.527', '105.527', '-1.94361', '-1.94366');
INSERT INTO `fbroad` VALUES ('321', 'CR', 'T41', 'CR_T41_T42', '964.19859692800', '105.530', '105.530', '-1.94359', '-1.93487');
INSERT INTO `fbroad` VALUES ('322', 'CR', 'U41', 'CR_T41_T42', '4.49849513830', '105.530', '105.530', '-1.94363', '-1.94359');
INSERT INTO `fbroad` VALUES ('323', 'CR', 'T38', 'CR_T38_T39', '977.77553156500', '105.522', '105.522', '-1.94365', '-1.93481');
INSERT INTO `fbroad` VALUES ('324', 'CR', 'U38', 'CR_T38_T39', '5.11210330952', '105.522', '105.522', '-1.94370', '-1.94365');
INSERT INTO `fbroad` VALUES ('325', 'CR', 'T39', 'CR_T39_T40', '974.70342641200', '105.524', '105.524', '-1.94364', '-1.93482');
INSERT INTO `fbroad` VALUES ('326', 'CR', 'U39', 'CR_T39_T40', '4.49184769755', '105.524', '105.524', '-1.94368', '-1.94364');
INSERT INTO `fbroad` VALUES ('327', 'CR', 'T35', 'CR_T35_T36', '488.07171408700', '105.514', '105.513', '-1.94367', '-1.93925');
INSERT INTO `fbroad` VALUES ('328', 'CR', 'T37', 'CR_T37_T38', '575.52530012200', '105.519', '105.519', '-1.93998', '-1.93478');
INSERT INTO `fbroad` VALUES ('329', 'CR', 'T32', 'CR_T32_T33', '497.64523022100', '105.505', '105.505', '-1.94373', '-1.93923');
INSERT INTO `fbroad` VALUES ('330', 'CR', 'U32', 'CR_T32_T33', '4.50597329038', '105.505', '105.505', '-1.94377', '-1.94373');
INSERT INTO `fbroad` VALUES ('331', 'CR', 'T33', 'CR_T33_T34', '129.17539009300', '105.508', '105.508', '-1.93801', '-1.93917');
INSERT INTO `fbroad` VALUES ('332', 'CR', 'T35', 'CR_T35_T36', '496.86873609700', '105.513', '105.513', '-1.93476', '-1.93925');
INSERT INTO `fbroad` VALUES ('333', 'MR', 'T41', 'MR_S42_T42', '3.50094835235', '105.530', '105.530', '-1.93487', '-1.93487');
INSERT INTO `fbroad` VALUES ('334', 'MR', 'T42', 'MR_S42_T42', '357.42771957900', '105.533', '105.530', '-1.93488', '-1.93487');
INSERT INTO `fbroad` VALUES ('335', 'MR', 'T40', 'MR_S41_T41', '3.50111927976', '105.527', '105.527', '-1.93484', '-1.93484');
INSERT INTO `fbroad` VALUES ('336', 'MR', 'T41', 'MR_S41_T41', '305.54288339700', '105.527', '105.530', '-1.93484', '-1.93487');
INSERT INTO `fbroad` VALUES ('337', 'MR', 'T39', 'MR_S40_T40', '3.49522763992', '105.524', '105.525', '-1.93482', '-1.93482');
INSERT INTO `fbroad` VALUES ('338', 'MR', 'T40', 'MR_S40_T40', '294.61515869900', '105.525', '105.527', '-1.93482', '-1.93484');
INSERT INTO `fbroad` VALUES ('339', 'MR', 'T38', 'MR_S39_T39', '3.50435650313', '105.522', '105.522', '-1.93481', '-1.93481');
INSERT INTO `fbroad` VALUES ('340', 'MR', 'T39', 'MR_S39_T39', '303.62377985600', '105.522', '105.524', '-1.93481', '-1.93482');
INSERT INTO `fbroad` VALUES ('341', 'MR', 'T37', 'MR_S38_T38', '3.50880235446', '105.519', '105.519', '-1.93478', '-1.93478');
INSERT INTO `fbroad` VALUES ('342', 'MR', 'T38', 'MR_S38_T38', '295.09460503300', '105.519', '105.522', '-1.93478', '-1.93481');
INSERT INTO `fbroad` VALUES ('343', 'CR', 'S40', 'CR_S40_S41', '990.34407339200', '105.527', '105.527', '-1.92583', '-1.93479');
INSERT INTO `fbroad` VALUES ('344', 'CR', 'T40', 'CR_S40_S41', '5.26733178985', '105.527', '105.527', '-1.93479', '-1.93484');
INSERT INTO `fbroad` VALUES ('345', 'CR', 'S41', 'CR_S41_S42', '989.79102181100', '105.530', '105.530', '-1.93483', '-1.92587');
INSERT INTO `fbroad` VALUES ('346', 'CR', 'T41', 'CR_S41_S42', '4.48558374223', '105.530', '105.530', '-1.93487', '-1.93483');
INSERT INTO `fbroad` VALUES ('347', 'MR', 'T36', 'MR_S37_T37', '3.50190082291', '105.516', '105.516', '-1.93477', '-1.93477');
INSERT INTO `fbroad` VALUES ('348', 'MR', 'T37', 'MR_S37_T37', '314.72746465100', '105.516', '105.519', '-1.93477', '-1.93478');
INSERT INTO `fbroad` VALUES ('349', 'MR', 'T35', 'MR_S36_T36', '3.46444025055', '105.513', '105.513', '-1.93476', '-1.93476');
INSERT INTO `fbroad` VALUES ('350', 'MR', 'T36', 'MR_S36_T36', '301.03140131300', '105.516', '105.513', '-1.93477', '-1.93476');
INSERT INTO `fbroad` VALUES ('351', 'MR', 'T34', 'MR_S35_T35', '3.47534157894', '105.511', '105.511', '-1.93474', '-1.93474');
INSERT INTO `fbroad` VALUES ('352', 'MR', 'T35', 'MR_S35_T35', '291.66931584500', '105.511', '105.513', '-1.93474', '-1.93476');
INSERT INTO `fbroad` VALUES ('353', 'CR', 'S39', 'CR_S39_S40', '991.83569703000', '105.525', '105.524', '-1.92581', '-1.93478');
INSERT INTO `fbroad` VALUES ('354', 'CR', 'T39', 'CR_S39_S40', '4.49709544991', '105.524', '105.524', '-1.93478', '-1.93482');
INSERT INTO `fbroad` VALUES ('355', 'MR', 'T33', 'MR_S34_T34', '2.74775173757', '105.508', '105.508', '-1.93478', '-1.93478');
INSERT INTO `fbroad` VALUES ('356', 'MR', 'T34', 'MR_S34_T34', '259.16299526300', '105.508', '105.511', '-1.93478', '-1.93474');
INSERT INTO `fbroad` VALUES ('357', 'MR', 'T32', 'MR_S33_T33', '3.54943561279', '105.505', '105.505', '-1.93472', '-1.93472');
INSERT INTO `fbroad` VALUES ('358', 'MR', 'T33', 'MR_S33_T33', '257.41209346900', '105.505', '105.508', '-1.93472', '-1.93473');
INSERT INTO `fbroad` VALUES ('359', 'MR', 'T31', 'MR_S32_T32', '3.49479279039', '105.503', '105.503', '-1.93470', '-1.93470');
INSERT INTO `fbroad` VALUES ('360', 'MR', 'T32', 'MR_S32_T32', '304.82001979500', '105.505', '105.503', '-1.93472', '-1.93470');
INSERT INTO `fbroad` VALUES ('361', 'MR', 'T28', 'MR_S29_T29', '3.99637327187', '105.494', '105.494', '-1.93469', '-1.93469');
INSERT INTO `fbroad` VALUES ('362', 'MR', 'T29', 'MR_S29_T29', '304.25870364800', '105.497', '105.494', '-1.93471', '-1.93469');
INSERT INTO `fbroad` VALUES ('363', 'CR', 'T28', 'CR_T28_T29', '999.46205003600', '105.494', '105.494', '-1.93469', '-1.94373');
INSERT INTO `fbroad` VALUES ('364', 'CR', 'U28', 'CR_T28_T29', '4.50493095309', '105.494', '105.494', '-1.94373', '-1.94377');
INSERT INTO `fbroad` VALUES ('365', 'MR', 'T29', 'MR_S30_T30', '3.95503484857', '105.497', '105.497', '-1.93471', '-1.93471');
INSERT INTO `fbroad` VALUES ('366', 'MR', 'T30', 'MR_S30_T30', '304.81549527900', '105.497', '105.500', '-1.93471', '-1.93469');
INSERT INTO `fbroad` VALUES ('367', 'MR', 'T33', 'MR_S34_T33', '84.23602158440', '105.508', '105.508', '-1.93478', '-1.93473');
INSERT INTO `fbroad` VALUES ('368', 'CR', 'T30', 'CR_T30_T31', '999.10182459700', '105.500', '105.500', '-1.93469', '-1.94373');
INSERT INTO `fbroad` VALUES ('369', 'CR', 'U30', 'CR_T30_T31', '4.51380128129', '105.500', '105.500', '-1.94373', '-1.94377');
INSERT INTO `fbroad` VALUES ('370', 'CR', 'S38', 'CR_S38_S39', '992.92039404400', '105.522', '105.522', '-1.92578', '-1.93477');
INSERT INTO `fbroad` VALUES ('371', 'CR', 'T38', 'CR_S38_S39', '4.49675284290', '105.522', '105.522', '-1.93477', '-1.93481');
INSERT INTO `fbroad` VALUES ('372', 'CR', 'S36', 'CR_S36_S37', '994.97781742200', '105.516', '105.516', '-1.93473', '-1.92573');
INSERT INTO `fbroad` VALUES ('373', 'CR', 'T36', 'CR_S36_S37', '5.11540515767', '105.516', '105.516', '-1.93477', '-1.93473');
INSERT INTO `fbroad` VALUES ('374', 'MR', 'T30', 'MR_S31_T31', '3.99614855841', '105.500', '105.500', '-1.93469', '-1.93469');
INSERT INTO `fbroad` VALUES ('375', 'MR', 'T31', 'MR_S31_T31', '283.49304213100', '105.500', '105.503', '-1.93469', '-1.93470');
INSERT INTO `fbroad` VALUES ('376', 'MR', 'T26', 'MR_S27_T27', '3.50425096878', '105.489', '105.489', '-1.93466', '-1.93466');
INSERT INTO `fbroad` VALUES ('377', 'MR', 'T27', 'MR_S27_T27', '319.87459628100', '105.489', '105.492', '-1.93466', '-1.93468');
INSERT INTO `fbroad` VALUES ('378', 'MR', 'T27', 'MR_S28_T28', '3.50321455967', '105.492', '105.492', '-1.93468', '-1.93468');
INSERT INTO `fbroad` VALUES ('379', 'MR', 'T28', 'MR_S28_T28', '284.52679694400', '105.492', '105.494', '-1.93468', '-1.93469');
INSERT INTO `fbroad` VALUES ('380', 'CR', 'T26', 'CR_T26_T27', '1004.37689680000', '105.489', '105.489', '-1.94375', '-1.93466');
INSERT INTO `fbroad` VALUES ('381', 'CR', 'U26', 'CR_T26_T27', '3.94277068592', '105.489', '105.489', '-1.94379', '-1.94375');
INSERT INTO `fbroad` VALUES ('382', 'MR', 'T24', 'MR_S25_T25', '3.50271920806', '105.483', '105.484', '-1.93466', '-1.93466');
INSERT INTO `fbroad` VALUES ('383', 'MR', 'T25', 'MR_S25_T25', '292.04876529700', '105.484', '105.486', '-1.93466', '-1.93467');
INSERT INTO `fbroad` VALUES ('384', 'CR', 'S33', 'CR_S33_S34', '1005.03972878000', '105.508', '105.508', '-1.92566', '-1.93469');
INSERT INTO `fbroad` VALUES ('385', 'CR', 'T33', 'CR_S33_S34', '3.75085041792', '105.508', '105.508', '-1.93469', '-1.93473');
INSERT INTO `fbroad` VALUES ('386', 'MR', 'T25', 'MR_S26_T26', '3.49790847492', '105.486', '105.486', '-1.93467', '-1.93467');
INSERT INTO `fbroad` VALUES ('387', 'MR', 'T26', 'MR_S26_T26', '305.88664762500', '105.486', '105.489', '-1.93467', '-1.93466');
INSERT INTO `fbroad` VALUES ('388', 'MR', 'T23', 'MR_S24_T24', '4.01405523590', '105.481', '105.481', '-1.93464', '-1.93464');
INSERT INTO `fbroad` VALUES ('389', 'MR', 'T24', 'MR_S24_T24', '305.78258877400', '105.483', '105.481', '-1.93466', '-1.93464');
INSERT INTO `fbroad` VALUES ('390', 'CR', 'T22', 'CR_T22_T23', '927.36855277100', '105.478', '105.478', '-1.93464', '-1.94303');
INSERT INTO `fbroad` VALUES ('391', 'MR', 'T22', 'MR_S23_T23', '7.85500770254', '105.478', '105.478', '-1.93464', '-1.93464');
INSERT INTO `fbroad` VALUES ('392', 'MR', 'T23', 'MR_S23_T23', '297.94170810800', '105.481', '105.478', '-1.93464', '-1.93464');
INSERT INTO `fbroad` VALUES ('393', 'CR', 'S34', 'CR_S34_S35', '996.99878443100', '105.511', '105.511', '-1.92568', '-1.93470');
INSERT INTO `fbroad` VALUES ('394', 'CR', 'T34', 'CR_S34_S35', '4.50267164365', '105.511', '105.511', '-1.93470', '-1.93474');
INSERT INTO `fbroad` VALUES ('395', 'MR', 'T21', 'MR_S22_T22', '3.81135840632', '105.475', '105.475', '-1.93465', '-1.93465');
INSERT INTO `fbroad` VALUES ('396', 'MR', 'T22', 'MR_S22_T22', '322.91913231000', '105.475', '105.478', '-1.93465', '-1.93464');
INSERT INTO `fbroad` VALUES ('397', 'MR', 'T21', 'MR_S21_T21', '302.02677071500', '105.472', '105.475', '-1.93465', '-1.93465');
INSERT INTO `fbroad` VALUES ('398', 'CR', 'S21', 'CR_S21_S22', '1067.50983011000', '105.475', '105.475', '-1.93461', '-1.92554');
INSERT INTO `fbroad` VALUES ('399', 'CR', 'T21', 'CR_S21_S22', '4.49683164716', '105.475', '105.475', '-1.93465', '-1.93461');
INSERT INTO `fbroad` VALUES ('400', 'CR', 'S31', 'CR_S31_S32', '1000.13058832000', '105.503', '105.503', '-1.92561', '-1.93466');
INSERT INTO `fbroad` VALUES ('401', 'CR', 'T31', 'CR_S31_S32', '4.00662619807', '105.503', '105.503', '-1.93466', '-1.93470');
INSERT INTO `fbroad` VALUES ('402', 'CR', 'S30', 'CR_S30_S31', '998.76903740300', '105.500', '105.500', '-1.92561', '-1.93465');
INSERT INTO `fbroad` VALUES ('403', 'CR', 'T30', 'CR_S30_S31', '4.51802082893', '105.500', '105.500', '-1.93465', '-1.93469');
INSERT INTO `fbroad` VALUES ('404', 'CR', 'S32', 'CR_S32_S33', '998.98664135200', '105.505', '105.505', '-1.93468', '-1.92565');
INSERT INTO `fbroad` VALUES ('405', 'CR', 'T32', 'CR_S32_S33', '4.49216074509', '105.505', '105.505', '-1.93472', '-1.93468');
INSERT INTO `fbroad` VALUES ('406', 'CR', 'S22', 'CR_S22_S23', '1058.58250814000', '105.478', '105.478', '-1.93460', '-1.92554');
INSERT INTO `fbroad` VALUES ('407', 'CR', 'T22', 'CR_S22_S23', '4.61580354904', '105.478', '105.478', '-1.93464', '-1.93460');
INSERT INTO `fbroad` VALUES ('408', 'CR', 'S25', 'CR_S25_S26', '1028.59124335000', '105.486', '105.486', '-1.93463', '-1.92556');
INSERT INTO `fbroad` VALUES ('409', 'CR', 'T25', 'CR_S25_S26', '4.48975840181', '105.486', '105.486', '-1.93467', '-1.93463');
INSERT INTO `fbroad` VALUES ('410', 'CR', 'S24', 'CR_S24_S25', '930.40794711800', '105.483', '105.483', '-1.93462', '-1.92621');
INSERT INTO `fbroad` VALUES ('411', 'CR', 'T24', 'CR_S24_S25', '4.49790128489', '105.483', '105.483', '-1.93466', '-1.93462');
INSERT INTO `fbroad` VALUES ('412', 'CR', 'S23', 'CR_S23_S24', '1003.19584670000', '105.481', '105.481', '-1.93461', '-1.92554');
INSERT INTO `fbroad` VALUES ('413', 'CR', 'T23', 'CR_S23_S24', '3.29840601815', '105.481', '105.481', '-1.93464', '-1.93461');
INSERT INTO `fbroad` VALUES ('414', 'CR', 'S27', 'CR_S27_S28', '1001.61023779000', '105.492', '105.492', '-1.93464', '-1.92558');
INSERT INTO `fbroad` VALUES ('415', 'CR', 'T27', 'CR_S27_S28', '4.49551273402', '105.492', '105.492', '-1.93468', '-1.93464');
INSERT INTO `fbroad` VALUES ('416', 'CR', 'S24', 'CR_R25_S24', '74.41230828630', '105.483', '105.483', '-1.92554', '-1.92621');
INSERT INTO `fbroad` VALUES ('417', 'MR', 'S40', 'MR_R41_S41', '3.49348983720', '105.527', '105.527', '-1.92583', '-1.92583');
INSERT INTO `fbroad` VALUES ('418', 'MR', 'S41', 'MR_R41_S41', '311.07297693100', '105.527', '105.530', '-1.92583', '-1.92587');
INSERT INTO `fbroad` VALUES ('419', 'MR', 'S39', 'MR_R40_S40', '3.49904179170', '105.525', '105.525', '-1.92581', '-1.92581');
INSERT INTO `fbroad` VALUES ('420', 'MR', 'S40', 'MR_R40_S40', '291.52955170700', '105.525', '105.527', '-1.92581', '-1.92583');
INSERT INTO `fbroad` VALUES ('421', 'CR', 'S37', 'CR_S37_S38', '994.11589824200', '105.519', '105.519', '-1.92575', '-1.93475');
INSERT INTO `fbroad` VALUES ('422', 'CR', 'T37', 'CR_S37_S38', '3.30053363437', '105.519', '105.519', '-1.93475', '-1.93478');
INSERT INTO `fbroad` VALUES ('423', 'CR', 'R31', 'CR_R31_R32', '1021.41641996000', '105.503', '105.503', '-1.92557', '-1.91633');
INSERT INTO `fbroad` VALUES ('424', 'CR', 'S31', 'CR_R31_R32', '4.52156158863', '105.503', '105.503', '-1.92561', '-1.92557');
INSERT INTO `fbroad` VALUES ('425', 'MR', 'S38', 'MR_R39_S39', '3.49595860019', '105.522', '105.522', '-1.92578', '-1.92578');
INSERT INTO `fbroad` VALUES ('426', 'MR', 'S39', 'MR_R39_S39', '305.42695819500', '105.525', '105.522', '-1.92581', '-1.92578');
INSERT INTO `fbroad` VALUES ('427', 'MR', 'S37', 'MR_R38_S38', '3.50093195944', '105.519', '105.519', '-1.92575', '-1.92575');
INSERT INTO `fbroad` VALUES ('428', 'MR', 'S38', 'MR_R38_S38', '295.45090887700', '105.519', '105.522', '-1.92575', '-1.92578');
INSERT INTO `fbroad` VALUES ('429', 'CR', 'S35', 'CR_S35_S36', '995.29934521900', '105.513', '105.513', '-1.93471', '-1.92571');
INSERT INTO `fbroad` VALUES ('430', 'CR', 'T35', 'CR_S35_S36', '4.49978711472', '105.513', '105.513', '-1.93476', '-1.93471');
INSERT INTO `fbroad` VALUES ('431', 'CR', 'R28', 'CR_R28_R29', '1013.90771706000', '105.494', '105.494', '-1.91637', '-1.92554');
INSERT INTO `fbroad` VALUES ('432', 'CR', 'S28', 'CR_R28_R29', '3.30821224214', '105.494', '105.494', '-1.92554', '-1.92557');
INSERT INTO `fbroad` VALUES ('433', 'MR', 'S36', 'MR_R37_S37', '3.49837209647', '105.516', '105.516', '-1.92573', '-1.92573');
INSERT INTO `fbroad` VALUES ('434', 'MR', 'S37', 'MR_R37_S37', '312.74080080300', '105.516', '105.519', '-1.92573', '-1.92575');
INSERT INTO `fbroad` VALUES ('435', 'MR', 'S35', 'MR_R36_S36', '3.49956360985', '105.513', '105.514', '-1.92571', '-1.92571');
INSERT INTO `fbroad` VALUES ('436', 'MR', 'S36', 'MR_R36_S36', '300.80086246800', '105.514', '105.516', '-1.92571', '-1.92573');
INSERT INTO `fbroad` VALUES ('437', 'MR', 'S33', 'MR_R34_S34', '3.46780147619', '105.508', '105.508', '-1.92566', '-1.92566');
INSERT INTO `fbroad` VALUES ('438', 'MR', 'S34', 'MR_R34_S34', '300.92979720800', '105.511', '105.508', '-1.92568', '-1.92566');
INSERT INTO `fbroad` VALUES ('439', 'CR', 'R30', 'CR_R30_R31', '1020.77435090000', '105.500', '105.500', '-1.92557', '-1.91633');
INSERT INTO `fbroad` VALUES ('440', 'CR', 'S30', 'CR_R30_R31', '4.48822374807', '105.500', '105.500', '-1.92561', '-1.92557');
INSERT INTO `fbroad` VALUES ('441', 'CR', 'R29', 'CR_R29_R30', '1014.97337226000', '105.497', '105.497', '-1.92555', '-1.91637');
INSERT INTO `fbroad` VALUES ('442', 'CR', 'S29', 'CR_R29_R30', '4.50446993217', '105.497', '105.497', '-1.92559', '-1.92555');
INSERT INTO `fbroad` VALUES ('443', 'MR', 'S34', 'MR_R35_S35', '3.49528711851', '105.511', '105.511', '-1.92568', '-1.92568');
INSERT INTO `fbroad` VALUES ('444', 'MR', 'S35', 'MR_R35_S35', '292.26271842500', '105.511', '105.513', '-1.92568', '-1.92571');
INSERT INTO `fbroad` VALUES ('445', 'CR', 'R27', 'CR_R27_R28', '1012.18425475000', '105.492', '105.492', '-1.92554', '-1.91638');
INSERT INTO `fbroad` VALUES ('446', 'CR', 'S27', 'CR_R27_R28', '4.48344240649', '105.492', '105.492', '-1.92558', '-1.92554');
INSERT INTO `fbroad` VALUES ('447', 'MR', 'S31', 'MR_R32_S32', '3.50723500232', '105.503', '105.503', '-1.92561', '-1.92561');
INSERT INTO `fbroad` VALUES ('448', 'MR', 'S32', 'MR_R32_S32', '305.01574876000', '105.503', '105.505', '-1.92561', '-1.92565');
INSERT INTO `fbroad` VALUES ('449', 'MR', 'S32', 'MR_R33_S33', '4.02150478004', '105.505', '105.505', '-1.92565', '-1.92565');
INSERT INTO `fbroad` VALUES ('450', 'MR', 'S33', 'MR_R33_S33', '295.48091739400', '105.508', '105.505', '-1.92566', '-1.92565');
INSERT INTO `fbroad` VALUES ('451', 'CR', 'S29', 'CR_S29_S30', '1002.71659761000', '105.497', '105.497', '-1.92559', '-1.93466');
INSERT INTO `fbroad` VALUES ('452', 'CR', 'T29', 'CR_S29_S30', '5.03151396367', '105.497', '105.497', '-1.93466', '-1.93471');
INSERT INTO `fbroad` VALUES ('453', 'MR', 'S29', 'MR_R30_S30', '3.50018856903', '105.497', '105.497', '-1.92559', '-1.92559');
INSERT INTO `fbroad` VALUES ('454', 'MR', 'S30', 'MR_R30_S30', '302.06985215500', '105.500', '105.497', '-1.92561', '-1.92559');
INSERT INTO `fbroad` VALUES ('455', 'CR', 'S28', 'CR_S28_S29', '1003.44841227000', '105.494', '105.494', '-1.92557', '-1.93465');
INSERT INTO `fbroad` VALUES ('456', 'CR', 'T28', 'CR_S28_S29', '4.50685566814', '105.494', '105.494', '-1.93465', '-1.93469');
INSERT INTO `fbroad` VALUES ('457', 'MR', 'S30', 'MR_R31_S31', '3.49830063040', '105.500', '105.500', '-1.92561', '-1.92561');
INSERT INTO `fbroad` VALUES ('458', 'MR', 'S31', 'MR_R31_S31', '289.26656009200', '105.500', '105.503', '-1.92561', '-1.92561');
INSERT INTO `fbroad` VALUES ('459', 'MR', 'S28', 'MR_R29_S29', '4.00669382021', '105.494', '105.494', '-1.92557', '-1.92557');
INSERT INTO `fbroad` VALUES ('460', 'MR', 'S29', 'MR_R29_S29', '305.39278937900', '105.497', '105.494', '-1.92559', '-1.92557');
INSERT INTO `fbroad` VALUES ('461', 'MR', 'S27', 'MR_R28_S28', '3.49480089464', '105.492', '105.492', '-1.92558', '-1.92558');
INSERT INTO `fbroad` VALUES ('462', 'MR', 'S28', 'MR_R28_S28', '287.26680657700', '105.492', '105.494', '-1.92558', '-1.92557');
INSERT INTO `fbroad` VALUES ('463', 'MR', 'S24', 'MR_R25_S25', '1.47731242844', '105.483', '105.483', '-1.92620', '-1.92621');
INSERT INTO `fbroad` VALUES ('464', 'MR', 'S25', 'MR_R25_S25', '257.18577737300', '105.486', '105.483', '-1.92556', '-1.92620');
INSERT INTO `fbroad` VALUES ('465', 'CR', 'S26', 'CR_S26_S27', '1003.06939820000', '105.489', '105.489', '-1.93462', '-1.92555');
INSERT INTO `fbroad` VALUES ('466', 'CR', 'T26', 'CR_S26_S27', '4.51430917188', '105.489', '105.489', '-1.93466', '-1.93462');
INSERT INTO `fbroad` VALUES ('467', 'MR', 'S26', 'MR_R27_S27', '3.49513220935', '105.489', '105.489', '-1.92555', '-1.92555');
INSERT INTO `fbroad` VALUES ('468', 'MR', 'S27', 'MR_R27_S27', '320.28730884800', '105.489', '105.492', '-1.92555', '-1.92558');
INSERT INTO `fbroad` VALUES ('469', 'MR', 'S25', 'MR_R26_S26', '4.30342510644', '105.486', '105.486', '-1.92556', '-1.92556');
INSERT INTO `fbroad` VALUES ('470', 'MR', 'S26', 'MR_R26_S26', '374.87287523200', '105.489', '105.486', '-1.92555', '-1.92556');
INSERT INTO `fbroad` VALUES ('471', 'CR', 'R24', 'CR_R24_R25', '1091.82157726000', '105.482', '105.483', '-1.92549', '-1.91639');
INSERT INTO `fbroad` VALUES ('472', 'MR', 'S22', 'MR_R23_S23', '3.50340328804', '105.478', '105.478', '-1.92554', '-1.92554');
INSERT INTO `fbroad` VALUES ('473', 'MR', 'S23', 'MR_R23_S23', '299.44888068700', '105.478', '105.481', '-1.92554', '-1.92554');
INSERT INTO `fbroad` VALUES ('474', 'MR', 'R24', 'MR_R25_S24', '1.69297966909', '105.482', '105.482', '-1.92549', '-1.92549');
INSERT INTO `fbroad` VALUES ('475', 'MR', 'S24', 'MR_R25_S24', '154.89200008100', '105.483', '105.482', '-1.92554', '-1.92549');
INSERT INTO `fbroad` VALUES ('476', 'MR', 'S21', 'MR_R21_S21', '302.98934862700', '105.472', '105.475', '-1.92553', '-1.92554');
INSERT INTO `fbroad` VALUES ('477', 'MR', 'S21', 'MR_R22_S22', '3.99560028158', '105.475', '105.475', '-1.92554', '-1.92554');
INSERT INTO `fbroad` VALUES ('478', 'MR', 'S22', 'MR_R22_S22', '305.33161783300', '105.475', '105.478', '-1.92554', '-1.92554');
INSERT INTO `fbroad` VALUES ('479', 'MR', 'R21', 'MR_Q22_R22', '4.00791102376', '105.475', '105.475', '-1.91640', '-1.91640');
INSERT INTO `fbroad` VALUES ('480', 'MR', 'R22', 'MR_Q22_R22', '303.17329567300', '105.478', '105.475', '-1.91639', '-1.91640');
INSERT INTO `fbroad` VALUES ('481', 'CR', 'R25', 'CR_R25_R26', '68.72332563950', '105.485', '105.486', '-1.92498', '-1.92552');
INSERT INTO `fbroad` VALUES ('482', 'CR', 'S25', 'CR_R25_R26', '4.60297350018', '105.486', '105.486', '-1.92552', '-1.92556');
INSERT INTO `fbroad` VALUES ('483', 'MR', 'R24', 'MR_R24_S24', '0.93203674256', '105.482', '105.482', '-1.92549', '-1.92549');
INSERT INTO `fbroad` VALUES ('484', 'MR', 'S23', 'MR_R24_S24', '4.00040136137', '105.481', '105.481', '-1.92554', '-1.92554');
INSERT INTO `fbroad` VALUES ('485', 'MR', 'S24', 'MR_R24_S24', '142.76890811800', '105.482', '105.481', '-1.92549', '-1.92554');
INSERT INTO `fbroad` VALUES ('486', 'CR', 'R25', 'CR_R25_R26', '329.02002455100', '105.485', '105.486', '-1.92487', '-1.92303');
INSERT INTO `fbroad` VALUES ('487', 'CR', 'R23', 'CR_R23_R24', '1004.03309446000', '105.481', '105.481', '-1.91641', '-1.92550');
INSERT INTO `fbroad` VALUES ('488', 'CR', 'S23', 'CR_R23_R24', '4.50120413316', '105.481', '105.481', '-1.92550', '-1.92554');
INSERT INTO `fbroad` VALUES ('489', 'CR', 'R22', 'CR_R22_R23', '1006.48801184000', '105.478', '105.478', '-1.92550', '-1.91639');
INSERT INTO `fbroad` VALUES ('490', 'CR', 'S22', 'CR_R22_R23', '4.49700001730', '105.478', '105.478', '-1.92554', '-1.92550');
INSERT INTO `fbroad` VALUES ('491', 'CR', 'R21', 'CR_R21_R22', '1005.68245987000', '105.475', '105.475', '-1.92550', '-1.91640');
INSERT INTO `fbroad` VALUES ('492', 'CR', 'S21', 'CR_R21_R22', '4.49540841896', '105.475', '105.475', '-1.92554', '-1.92550');
INSERT INTO `fbroad` VALUES ('493', 'CR', 'R26', 'CR_R26_R27', '1010.89835352000', '105.489', '105.489', '-1.92551', '-1.91636');
INSERT INTO `fbroad` VALUES ('494', 'CR', 'S26', 'CR_R26_R27', '4.52343701672', '105.489', '105.489', '-1.92555', '-1.92551');
INSERT INTO `fbroad` VALUES ('495', 'CR', 'Q21', 'CR_Q21_Q22', '1006.50014433000', '105.475', '105.475', '-1.91636', '-1.90726');
INSERT INTO `fbroad` VALUES ('496', 'CR', 'R21', 'CR_Q21_Q22', '4.49950440947', '105.475', '105.475', '-1.91640', '-1.91636');
INSERT INTO `fbroad` VALUES ('497', 'MR', 'R26', 'MR_Q27_R27', '3.50336278610', '105.489', '105.489', '-1.91636', '-1.91636');
INSERT INTO `fbroad` VALUES ('498', 'MR', 'R27', 'MR_Q27_R27', '320.77937662000', '105.492', '105.489', '-1.91638', '-1.91636');
INSERT INTO `fbroad` VALUES ('499', 'MR', 'R21', 'MR_Q21_R21', '307.46840130000', '105.472', '105.475', '-1.91641', '-1.91640');
INSERT INTO `fbroad` VALUES ('500', 'MR', 'R23', 'MR_Q24_R24', '4.00437433954', '105.481', '105.481', '-1.91641', '-1.91641');
INSERT INTO `fbroad` VALUES ('501', 'MR', 'R24', 'MR_Q24_R24', '302.76683553900', '105.483', '105.481', '-1.91639', '-1.91641');
INSERT INTO `fbroad` VALUES ('502', 'CR', 'R35', 'CR_R35_R36', '1034.58993202000', '105.513', '105.514', '-1.92567', '-1.91631');
INSERT INTO `fbroad` VALUES ('503', 'CR', 'S35', 'CR_R35_R36', '4.49520212092', '105.513', '105.513', '-1.92571', '-1.92567');
INSERT INTO `fbroad` VALUES ('504', 'MR', 'R22', 'MR_Q23_R23', '3.50357948589', '105.478', '105.478', '-1.91639', '-1.91639');
INSERT INTO `fbroad` VALUES ('505', 'MR', 'R23', 'MR_Q23_R23', '300.95443377400', '105.478', '105.481', '-1.91639', '-1.91641');
INSERT INTO `fbroad` VALUES ('506', 'CR', 'R34', 'CR_R34_R35', '1030.06373839000', '105.511', '105.511', '-1.92565', '-1.91633');
INSERT INTO `fbroad` VALUES ('507', 'CR', 'S34', 'CR_R34_R35', '3.87313136976', '105.511', '105.511', '-1.92568', '-1.92565');
INSERT INTO `fbroad` VALUES ('508', 'CR', 'R25', 'CR_R25_R26', '734.64627813600', '105.486', '105.486', '-1.91639', '-1.92303');
INSERT INTO `fbroad` VALUES ('509', 'MR', 'R24', 'MR_Q25_R25', '3.49591546996', '105.484', '105.483', '-1.91639', '-1.91639');
INSERT INTO `fbroad` VALUES ('510', 'MR', 'R25', 'MR_Q25_R25', '303.24896813500', '105.486', '105.484', '-1.91639', '-1.91639');
INSERT INTO `fbroad` VALUES ('511', 'CR', 'R33', 'CR_R33_R34', '1026.16598193000', '105.508', '105.508', '-1.92562', '-1.91633');
INSERT INTO `fbroad` VALUES ('512', 'CR', 'S33', 'CR_R33_R34', '4.48687649492', '105.508', '105.508', '-1.92566', '-1.92562');
INSERT INTO `fbroad` VALUES ('513', 'MR', 'R25', 'MR_Q26_R26', '3.51231102369', '105.486', '105.486', '-1.91639', '-1.91639');
INSERT INTO `fbroad` VALUES ('514', 'MR', 'R26', 'MR_Q26_R26', '300.99613322100', '105.486', '105.489', '-1.91639', '-1.91636');
INSERT INTO `fbroad` VALUES ('515', 'CR', 'R39', 'CR_R39_R40', '1047.27403952000', '105.525', '105.525', '-1.91629', '-1.92577');
INSERT INTO `fbroad` VALUES ('516', 'CR', 'S39', 'CR_R39_R40', '4.49970956019', '105.525', '105.525', '-1.92577', '-1.92581');
INSERT INTO `fbroad` VALUES ('517', 'MR', 'R27', 'MR_Q28_R28', '3.50294885177', '105.492', '105.492', '-1.91638', '-1.91638');
INSERT INTO `fbroad` VALUES ('518', 'MR', 'R28', 'MR_Q28_R28', '285.20306596900', '105.492', '105.494', '-1.91638', '-1.91637');
INSERT INTO `fbroad` VALUES ('519', 'MR', 'R29', 'MR_Q30_R30', '3.50405370457', '105.497', '105.497', '-1.91637', '-1.91637');
INSERT INTO `fbroad` VALUES ('520', 'MR', 'R30', 'MR_Q30_R30', '299.77700772300', '105.497', '105.500', '-1.91637', '-1.91633');
INSERT INTO `fbroad` VALUES ('521', 'CR', 'R40', 'CR_R40_R41', '1047.68473851000', '105.527', '105.527', '-1.92579', '-1.91631');
INSERT INTO `fbroad` VALUES ('522', 'CR', 'S40', 'CR_R40_R41', '4.50689265976', '105.527', '105.527', '-1.92583', '-1.92579');
INSERT INTO `fbroad` VALUES ('523', 'CR', 'R32', 'CR_R32_R33', '1025.08549950000', '105.505', '105.505', '-1.92561', '-1.91633');
INSERT INTO `fbroad` VALUES ('524', 'CR', 'S32', 'CR_R32_R33', '4.48314236407', '105.505', '105.505', '-1.92565', '-1.92561');
INSERT INTO `fbroad` VALUES ('525', 'MR', 'R31', 'MR_Q32_R32', '3.50698939972', '105.503', '105.503', '-1.91633', '-1.91633');
INSERT INTO `fbroad` VALUES ('526', 'MR', 'R32', 'MR_Q32_R32', '304.72007709200', '105.503', '105.505', '-1.91633', '-1.91633');
INSERT INTO `fbroad` VALUES ('527', 'MR', 'R28', 'MR_Q29_R29', '3.99190351816', '105.494', '105.495', '-1.91637', '-1.91637');
INSERT INTO `fbroad` VALUES ('528', 'MR', 'R29', 'MR_Q29_R29', '308.36547018000', '105.495', '105.497', '-1.91637', '-1.91637');
INSERT INTO `fbroad` VALUES ('529', 'CR', 'Q29', 'CR_Q29_Q30', '998.35595833200', '105.497', '105.497', '-1.90730', '-1.91633');
INSERT INTO `fbroad` VALUES ('530', 'CR', 'R29', 'CR_Q29_Q30', '4.48753373246', '105.497', '105.497', '-1.91633', '-1.91637');
INSERT INTO `fbroad` VALUES ('531', 'MR', 'R39', 'MR_Q40_R40', '3.50092360947', '105.525', '105.525', '-1.91629', '-1.91629');
INSERT INTO `fbroad` VALUES ('532', 'MR', 'R40', 'MR_Q40_R40', '290.93060068500', '105.527', '105.525', '-1.91631', '-1.91629');
INSERT INTO `fbroad` VALUES ('533', 'CR', 'R38', 'CR_R38_R39', '1045.24101906000', '105.522', '105.522', '-1.91629', '-1.92574');
INSERT INTO `fbroad` VALUES ('534', 'CR', 'S38', 'CR_R38_R39', '4.49599033277', '105.522', '105.522', '-1.92574', '-1.92578');
INSERT INTO `fbroad` VALUES ('535', 'CR', 'R37', 'CR_R37_R38', '1041.39933926000', '105.519', '105.519', '-1.91629', '-1.92571');
INSERT INTO `fbroad` VALUES ('536', 'CR', 'S37', 'CR_R37_R38', '4.50283678224', '105.519', '105.519', '-1.92571', '-1.92575');
INSERT INTO `fbroad` VALUES ('537', 'MR', 'R38', 'MR_Q39_R39', '3.49996603715', '105.522', '105.522', '-1.91629', '-1.91629');
INSERT INTO `fbroad` VALUES ('538', 'MR', 'R39', 'MR_Q39_R39', '305.89881086500', '105.525', '105.522', '-1.91629', '-1.91629');
INSERT INTO `fbroad` VALUES ('539', 'CR', 'R36', 'CR_R36_R37', '1036.81703686000', '105.516', '105.516', '-1.91631', '-1.92569');
INSERT INTO `fbroad` VALUES ('540', 'CR', 'S36', 'CR_R36_R37', '4.50731147365', '105.516', '105.516', '-1.92569', '-1.92573');
INSERT INTO `fbroad` VALUES ('541', 'MR', 'R35', 'MR_Q36_R36', '3.95182277575', '105.514', '105.514', '-1.91631', '-1.91631');
INSERT INTO `fbroad` VALUES ('542', 'MR', 'R36', 'MR_Q36_R36', '301.15495537800', '105.514', '105.516', '-1.91631', '-1.91631');
INSERT INTO `fbroad` VALUES ('543', 'MR', 'R37', 'MR_Q38_R38', '3.50010302353', '105.519', '105.519', '-1.91629', '-1.91629');
INSERT INTO `fbroad` VALUES ('544', 'MR', 'R38', 'MR_Q38_R38', '298.15113231900', '105.519', '105.522', '-1.91629', '-1.91629');
INSERT INTO `fbroad` VALUES ('545', 'MR', 'R34', 'MR_Q35_R35', '3.50043200853', '105.511', '105.511', '-1.91633', '-1.91633');
INSERT INTO `fbroad` VALUES ('546', 'MR', 'R35', 'MR_Q35_R35', '290.25811611900', '105.514', '105.511', '-1.91631', '-1.91633');
INSERT INTO `fbroad` VALUES ('547', 'CR', 'Q25', 'CR_Q25_Q26', '1004.76310705000', '105.486', '105.486', '-1.91635', '-1.90725');
INSERT INTO `fbroad` VALUES ('548', 'CR', 'R25', 'CR_Q25_Q26', '4.50060360850', '105.486', '105.486', '-1.91639', '-1.91635');
INSERT INTO `fbroad` VALUES ('549', 'CR', 'Q26', 'CR_Q26_Q27', '1002.13667460000', '105.489', '105.489', '-1.90727', '-1.91634');
INSERT INTO `fbroad` VALUES ('550', 'CR', 'R26', 'CR_Q26_Q27', '2.84341829460', '105.489', '105.489', '-1.91634', '-1.91636');
INSERT INTO `fbroad` VALUES ('551', 'CR', 'Q33', 'CR_Q33_Q34', '990.67182283200', '105.508', '105.508', '-1.91629', '-1.90733');
INSERT INTO `fbroad` VALUES ('552', 'CR', 'R33', 'CR_Q33_Q34', '4.49572535846', '105.508', '105.508', '-1.91633', '-1.91629');
INSERT INTO `fbroad` VALUES ('553', 'CR', 'Q31', 'CR_Q31_Q32', '994.03637626800', '105.503', '105.503', '-1.90731', '-1.91630');
INSERT INTO `fbroad` VALUES ('554', 'CR', 'R31', 'CR_Q31_Q32', '3.29766623193', '105.503', '105.503', '-1.91630', '-1.91633');
INSERT INTO `fbroad` VALUES ('555', 'MR', 'R30', 'MR_Q31_R31', '3.50027360847', '105.500', '105.500', '-1.91633', '-1.91634');
INSERT INTO `fbroad` VALUES ('556', 'MR', 'R31', 'MR_Q31_R31', '291.08498266600', '105.500', '105.503', '-1.91634', '-1.91633');
INSERT INTO `fbroad` VALUES ('557', 'CR', 'Q27', 'CR_Q27_Q28', '1002.90992727000', '105.492', '105.492', '-1.91634', '-1.90727');
INSERT INTO `fbroad` VALUES ('558', 'CR', 'R27', 'CR_Q27_Q28', '4.48772888036', '105.492', '105.492', '-1.91638', '-1.91634');
INSERT INTO `fbroad` VALUES ('559', 'CR', 'Q28', 'CR_Q28_Q29', '998.76582229000', '105.495', '105.494', '-1.90729', '-1.91632');
INSERT INTO `fbroad` VALUES ('560', 'CR', 'R28', 'CR_Q28_Q29', '4.51388195129', '105.494', '105.494', '-1.91632', '-1.91637');
INSERT INTO `fbroad` VALUES ('561', 'MR', 'R32', 'MR_Q33_R33', '3.50010155550', '105.505', '105.505', '-1.91633', '-1.91633');
INSERT INTO `fbroad` VALUES ('562', 'MR', 'R33', 'MR_Q33_R33', '297.67213217200', '105.505', '105.508', '-1.91633', '-1.91633');
INSERT INTO `fbroad` VALUES ('563', 'CR', 'Q34', 'CR_Q34_Q35', '1131.02929541000', '105.511', '105.511', '-1.90734', '-1.91629');
INSERT INTO `fbroad` VALUES ('564', 'CR', 'R34', 'CR_Q34_Q35', '4.48705344381', '105.511', '105.511', '-1.91629', '-1.91633');
INSERT INTO `fbroad` VALUES ('565', 'MR', 'R33', 'MR_Q34_R34', '3.99790253242', '105.508', '105.508', '-1.91633', '-1.91633');
INSERT INTO `fbroad` VALUES ('566', 'MR', 'R34', 'MR_Q34_R34', '302.41741191800', '105.508', '105.511', '-1.91633', '-1.91633');
INSERT INTO `fbroad` VALUES ('567', 'CR', 'Q38', 'CR_Q38_Q39', '977.60677553300', '105.522', '105.522', '-1.90740', '-1.91625');
INSERT INTO `fbroad` VALUES ('568', 'CR', 'R38', 'CR_Q38_Q39', '4.51365657901', '105.522', '105.522', '-1.91625', '-1.91629');
INSERT INTO `fbroad` VALUES ('569', 'MR', 'R36', 'MR_Q37_R37', '3.50023702734', '105.516', '105.516', '-1.91631', '-1.91631');
INSERT INTO `fbroad` VALUES ('570', 'MR', 'R37', 'MR_Q37_R37', '309.53290831700', '105.516', '105.519', '-1.91631', '-1.91629');
INSERT INTO `fbroad` VALUES ('571', 'CR', 'Q37', 'CR_Q37_Q38', '980.09255996000', '105.519', '105.519', '-1.90738', '-1.91625');
INSERT INTO `fbroad` VALUES ('572', 'CR', 'R37', 'CR_Q37_Q38', '4.50591154414', '105.519', '105.519', '-1.91625', '-1.91629');
INSERT INTO `fbroad` VALUES ('573', 'CR', 'Q39', 'CR_Q39_Q40', '977.30645520900', '105.525', '105.525', '-1.90742', '-1.91626');
INSERT INTO `fbroad` VALUES ('574', 'CR', 'R39', 'CR_Q39_Q40', '3.29473279385', '105.525', '105.525', '-1.91626', '-1.91629');
INSERT INTO `fbroad` VALUES ('575', 'MR', 'Q38', 'MR_P39_Q39', '3.49729739238', '105.522', '105.522', '-1.90740', '-1.90740');
INSERT INTO `fbroad` VALUES ('576', 'MR', 'Q39', 'MR_P39_Q39', '305.27690812900', '105.525', '105.522', '-1.90742', '-1.90740');
INSERT INTO `fbroad` VALUES ('577', 'CR', 'Q36', 'CR_Q36_Q37', '983.06178696200', '105.516', '105.516', '-1.90737', '-1.91626');
INSERT INTO `fbroad` VALUES ('578', 'CR', 'R36', 'CR_Q36_Q37', '4.49139492017', '105.516', '105.516', '-1.91626', '-1.91631');
INSERT INTO `fbroad` VALUES ('579', 'MR', 'Q37', 'MR_P38_Q38', '3.49268383958', '105.519', '105.519', '-1.90738', '-1.90738');
INSERT INTO `fbroad` VALUES ('580', 'MR', 'Q38', 'MR_P38_Q38', '300.87203908200', '105.519', '105.522', '-1.90738', '-1.90740');
INSERT INTO `fbroad` VALUES ('581', 'MR', 'Q36', 'MR_P37_Q37', '3.50104030841', '105.516', '105.516', '-1.90737', '-1.90737');
INSERT INTO `fbroad` VALUES ('582', 'MR', 'Q37', 'MR_P37_Q37', '305.27095093100', '105.516', '105.519', '-1.90737', '-1.90738');
INSERT INTO `fbroad` VALUES ('583', 'CR', 'Q35', 'CR_Q35_Q36', '984.32156328400', '105.514', '105.514', '-1.90736', '-1.91626');
INSERT INTO `fbroad` VALUES ('584', 'CR', 'R35', 'CR_Q35_Q36', '5.06574638234', '105.514', '105.514', '-1.91626', '-1.91631');
INSERT INTO `fbroad` VALUES ('585', 'MR', 'Q34', 'MR_P35_Q35', '3.49532788854', '105.511', '105.511', '-1.90734', '-1.90734');
INSERT INTO `fbroad` VALUES ('586', 'MR', 'Q35', 'MR_P35_Q35', '292.26240035400', '105.511', '105.514', '-1.90734', '-1.90736');
INSERT INTO `fbroad` VALUES ('587', 'CR', 'P39', 'CR_P39_P40', '524.89634870000', '105.525', '105.525', '-1.90263', '-1.90738');
INSERT INTO `fbroad` VALUES ('588', 'CR', 'Q39', 'CR_P39_P40', '4.50264397666', '105.525', '105.525', '-1.90738', '-1.90742');
INSERT INTO `fbroad` VALUES ('589', 'MR', 'Q39', 'MR_P40_Q40', '3.49974176307', '105.525', '105.525', '-1.90742', '-1.90742');
INSERT INTO `fbroad` VALUES ('590', 'MR', 'Q40', 'MR_P40_Q40', '293.28059411900', '105.525', '105.527', '-1.90742', '-1.90745');
INSERT INTO `fbroad` VALUES ('591', 'MR', 'Q35', 'MR_P36_Q36', '3.49853613077', '105.514', '105.514', '-1.90736', '-1.90736');
INSERT INTO `fbroad` VALUES ('592', 'MR', 'Q36', 'MR_P36_Q36', '302.05798339700', '105.514', '105.516', '-1.90736', '-1.90737');
INSERT INTO `fbroad` VALUES ('593', 'CR', 'Q32', 'CR_Q32_Q33', '991.67677976100', '105.505', '105.505', '-1.91629', '-1.90732');
INSERT INTO `fbroad` VALUES ('594', 'CR', 'R32', 'CR_Q32_Q33', '4.50696713601', '105.505', '105.505', '-1.91633', '-1.91629');
INSERT INTO `fbroad` VALUES ('595', 'MR', 'Q33', 'MR_P34_Q34', '3.99521683995', '105.508', '105.508', '-1.90733', '-1.90733');
INSERT INTO `fbroad` VALUES ('596', 'MR', 'Q34', 'MR_P34_Q34', '303.20999543900', '105.508', '105.511', '-1.90733', '-1.90734');
INSERT INTO `fbroad` VALUES ('597', 'MR', 'Q32', 'MR_P33_Q33', '3.50153299074', '105.505', '105.506', '-1.90732', '-1.90732');
INSERT INTO `fbroad` VALUES ('598', 'MR', 'Q33', 'MR_P33_Q33', '295.29955037600', '105.506', '105.508', '-1.90732', '-1.90733');
INSERT INTO `fbroad` VALUES ('599', 'MR', 'Q30', 'MR_P31_Q31', '3.49857626161', '105.500', '105.500', '-1.90729', '-1.90729');
INSERT INTO `fbroad` VALUES ('600', 'MR', 'Q31', 'MR_P31_Q31', '294.50589810800', '105.500', '105.503', '-1.90729', '-1.90731');
INSERT INTO `fbroad` VALUES ('601', 'CR', 'P37', 'CR_P37_P38', '527.08785981900', '105.519', '105.519', '-1.90258', '-1.90734');
INSERT INTO `fbroad` VALUES ('602', 'CR', 'Q37', 'CR_P37_P38', '4.50376235946', '105.519', '105.519', '-1.90734', '-1.90738');
INSERT INTO `fbroad` VALUES ('603', 'MR', 'Q31', 'MR_P32_Q32', '3.49983984382', '105.503', '105.503', '-1.90731', '-1.90731');
INSERT INTO `fbroad` VALUES ('604', 'MR', 'Q32', 'MR_P32_Q32', '303.75275869900', '105.503', '105.505', '-1.90731', '-1.90732');
INSERT INTO `fbroad` VALUES ('605', 'CR', 'Q30', 'CR_Q30_Q31', '996.47546122200', '105.500', '105.500', '-1.90729', '-1.91630');
INSERT INTO `fbroad` VALUES ('606', 'CR', 'R30', 'CR_Q30_Q31', '3.31621537982', '105.500', '105.500', '-1.91630', '-1.91633');
INSERT INTO `fbroad` VALUES ('607', 'MR', 'Q28', 'MR_P29_Q29', '4.00132079502', '105.495', '105.495', '-1.90729', '-1.90729');
INSERT INTO `fbroad` VALUES ('608', 'MR', 'Q29', 'MR_P29_Q29', '305.94111541000', '105.495', '105.497', '-1.90729', '-1.90730');
INSERT INTO `fbroad` VALUES ('609', 'MR', 'Q27', 'MR_P28_Q28', '3.49991767415', '105.492', '105.492', '-1.90727', '-1.90727');
INSERT INTO `fbroad` VALUES ('610', 'MR', 'Q28', 'MR_P28_Q28', '287.93113239500', '105.492', '105.495', '-1.90727', '-1.90729');
INSERT INTO `fbroad` VALUES ('611', 'CR', 'Q22', 'CR_Q22_Q23', '1004.74279243000', '105.478', '105.478', '-1.91635', '-1.90726');
INSERT INTO `fbroad` VALUES ('612', 'CR', 'R22', 'CR_Q22_Q23', '4.51610656488', '105.478', '105.478', '-1.91639', '-1.91635');
INSERT INTO `fbroad` VALUES ('613', 'CR', 'Q24', 'CR_Q24_Q25', '1006.89759434000', '105.483', '105.483', '-1.90724', '-1.91635');
INSERT INTO `fbroad` VALUES ('614', 'CR', 'R24', 'CR_Q24_Q25', '4.50600528394', '105.483', '105.483', '-1.91635', '-1.91639');
INSERT INTO `fbroad` VALUES ('615', 'MR', 'Q29', 'MR_P30_Q30', '3.49120550531', '105.497', '105.497', '-1.90730', '-1.90730');
INSERT INTO `fbroad` VALUES ('616', 'MR', 'Q30', 'MR_P30_Q30', '298.95768220900', '105.497', '105.500', '-1.90730', '-1.90729');
INSERT INTO `fbroad` VALUES ('617', 'MR', 'P21', 'MR_N21_P21', '307.34298761800', '105.472', '105.475', '-1.89816', '-1.89817');
INSERT INTO `fbroad` VALUES ('618', 'CR', 'P38', 'CR_P38_P39', '526.51969520800', '105.522', '105.522', '-1.90260', '-1.90736');
INSERT INTO `fbroad` VALUES ('619', 'CR', 'Q38', 'CR_P38_P39', '4.50098279301', '105.522', '105.522', '-1.90736', '-1.90740');
INSERT INTO `fbroad` VALUES ('620', 'MR', 'Q25', 'MR_P26_Q26', '3.50786527657', '105.486', '105.486', '-1.90725', '-1.90726');
INSERT INTO `fbroad` VALUES ('621', 'MR', 'Q26', 'MR_P26_Q26', '303.46820753100', '105.486', '105.489', '-1.90726', '-1.90727');
INSERT INTO `fbroad` VALUES ('622', 'MR', 'Q26', 'MR_P27_Q27', '3.49840276690', '105.489', '105.489', '-1.90727', '-1.90727');
INSERT INTO `fbroad` VALUES ('623', 'MR', 'Q27', 'MR_P27_Q27', '320.68728659000', '105.489', '105.492', '-1.90727', '-1.90727');
INSERT INTO `fbroad` VALUES ('624', 'MR', 'Q24', 'MR_P25_Q25', '3.50372877541', '105.483', '105.484', '-1.90724', '-1.90724');
INSERT INTO `fbroad` VALUES ('625', 'MR', 'Q25', 'MR_P25_Q25', '302.72973029600', '105.484', '105.486', '-1.90724', '-1.90725');
INSERT INTO `fbroad` VALUES ('626', 'CR', 'Q23', 'CR_Q23_Q24', '1009.08217784000', '105.481', '105.481', '-1.91637', '-1.90724');
INSERT INTO `fbroad` VALUES ('627', 'CR', 'R23', 'CR_Q23_Q24', '4.47400069794', '105.481', '105.481', '-1.91641', '-1.91637');
INSERT INTO `fbroad` VALUES ('628', 'MR', 'Q21', 'MR_P22_Q22', '3.99561597882', '105.475', '105.475', '-1.90726', '-1.90726');
INSERT INTO `fbroad` VALUES ('629', 'MR', 'Q22', 'MR_P22_Q22', '302.97074442900', '105.475', '105.478', '-1.90726', '-1.90726');
INSERT INTO `fbroad` VALUES ('630', 'CR', 'P21', 'CR_P21_P22', '1000.00589918000', '105.475', '105.475', '-1.89817', '-1.90721');
INSERT INTO `fbroad` VALUES ('631', 'CR', 'Q21', 'CR_P21_P22', '4.52200035813', '105.475', '105.475', '-1.90721', '-1.90726');
INSERT INTO `fbroad` VALUES ('632', 'CR', 'P30', 'CR_P30_P31', '678.12711408700', '105.500', '105.500', '-1.90725', '-1.90111');
INSERT INTO `fbroad` VALUES ('633', 'CR', 'Q30', 'CR_P30_P31', '4.50002952102', '105.500', '105.500', '-1.90729', '-1.90725');
INSERT INTO `fbroad` VALUES ('634', 'CR', 'P29', 'CR_P29_P30', '348.49220912400', '105.497', '105.497', '-1.90411', '-1.90725');
INSERT INTO `fbroad` VALUES ('635', 'CR', 'Q29', 'CR_P29_P30', '4.49233247789', '105.497', '105.497', '-1.90725', '-1.90730');
INSERT INTO `fbroad` VALUES ('636', 'MR', 'Q23', 'MR_P24_Q24', '3.99870120199', '105.481', '105.481', '-1.90724', '-1.90724');
INSERT INTO `fbroad` VALUES ('637', 'MR', 'Q24', 'MR_P24_Q24', '304.98941393700', '105.481', '105.483', '-1.90724', '-1.90724');
INSERT INTO `fbroad` VALUES ('638', 'CR', 'P28', 'CR_P28_P29', '1008.31947304000', '105.495', '105.495', '-1.90725', '-1.89813');
INSERT INTO `fbroad` VALUES ('639', 'CR', 'Q28', 'CR_P28_P29', '4.48757188430', '105.495', '105.495', '-1.90729', '-1.90725');
INSERT INTO `fbroad` VALUES ('640', 'CR', 'P27', 'CR_P27_P28', '1005.21882588000', '105.492', '105.492', '-1.89813', '-1.90723');
INSERT INTO `fbroad` VALUES ('641', 'CR', 'Q27', 'CR_P27_P28', '4.51822797751', '105.492', '105.492', '-1.90723', '-1.90727');
INSERT INTO `fbroad` VALUES ('642', 'CR', 'P24', 'CR_P24_P25', '1000.61370131000', '105.483', '105.483', '-1.89815', '-1.90720');
INSERT INTO `fbroad` VALUES ('643', 'CR', 'Q24', 'CR_P24_P25', '4.50560000424', '105.483', '105.483', '-1.90720', '-1.90724');
INSERT INTO `fbroad` VALUES ('644', 'CR', 'P25', 'CR_P25_P26', '1002.87589826000', '105.486', '105.486', '-1.89814', '-1.90721');
INSERT INTO `fbroad` VALUES ('645', 'CR', 'Q25', 'CR_P25_P26', '4.50371001883', '105.486', '105.486', '-1.90721', '-1.90725');
INSERT INTO `fbroad` VALUES ('646', 'MR', 'Q21', 'MR_P21_Q21', '304.95791528700', '105.472', '105.475', '-1.90728', '-1.90726');
INSERT INTO `fbroad` VALUES ('647', 'MR', 'Q22', 'MR_P23_Q23', '3.49699591332', '105.478', '105.478', '-1.90726', '-1.90726');
INSERT INTO `fbroad` VALUES ('648', 'MR', 'Q23', 'MR_P23_Q23', '302.10057427000', '105.481', '105.478', '-1.90724', '-1.90726');
INSERT INTO `fbroad` VALUES ('649', 'CR', 'P36', 'CR_P36_P37', '1014.92564433000', '105.516', '105.516', '-1.90733', '-1.89815');
INSERT INTO `fbroad` VALUES ('650', 'CR', 'Q36', 'CR_P36_P37', '4.50058039248', '105.516', '105.516', '-1.90737', '-1.90733');
INSERT INTO `fbroad` VALUES ('651', 'CR', 'P35', 'CR_P35_P36', '1016.02490963000', '105.514', '105.514', '-1.90732', '-1.89813');
INSERT INTO `fbroad` VALUES ('652', 'CR', 'Q35', 'CR_P35_P36', '4.49278477609', '105.514', '105.514', '-1.90736', '-1.90732');
INSERT INTO `fbroad` VALUES ('653', 'CR', 'P32', 'CR_P32_P33', '715.88939339300', '105.506', '105.505', '-1.90080', '-1.90728');
INSERT INTO `fbroad` VALUES ('654', 'CR', 'Q32', 'CR_P32_P33', '4.49945232694', '105.505', '105.505', '-1.90728', '-1.90732');
INSERT INTO `fbroad` VALUES ('655', 'CR', 'P34', 'CR_P34_P35', '1013.82869199000', '105.511', '105.511', '-1.89812', '-1.90730');
INSERT INTO `fbroad` VALUES ('656', 'CR', 'Q34', 'CR_P34_P35', '4.51004659044', '105.511', '105.511', '-1.90730', '-1.90734');
INSERT INTO `fbroad` VALUES ('657', 'MR', 'N22', 'MR_N23_P23', '3.54479985410', '105.478', '105.478', '-1.89809', '-1.89810');
INSERT INTO `fbroad` VALUES ('658', 'MR', 'N23', 'MR_N23_P23', '7.72568322527', '105.478', '105.478', '-1.89810', '-1.89811');
INSERT INTO `fbroad` VALUES ('659', 'MR', 'P23', 'MR_N23_P23', '295.19013770100', '105.478', '105.481', '-1.89811', '-1.89814');
INSERT INTO `fbroad` VALUES ('660', 'CR', 'P26', 'CR_P26_P27', '1006.40100741000', '105.489', '105.489', '-1.90723', '-1.89813');
INSERT INTO `fbroad` VALUES ('661', 'CR', 'Q26', 'CR_P26_P27', '4.48684022901', '105.489', '105.489', '-1.90727', '-1.90723');
INSERT INTO `fbroad` VALUES ('662', 'CR', 'N22', 'CR_P22_P23', '1.99080064182', '105.478', '105.478', '-1.89811', '-1.89809');
INSERT INTO `fbroad` VALUES ('663', 'CR', 'P22', 'CR_P22_P23', '1007.09906523000', '105.478', '105.478', '-1.90722', '-1.89811');
INSERT INTO `fbroad` VALUES ('664', 'CR', 'Q22', 'CR_P22_P23', '4.48080044544', '105.478', '105.478', '-1.90726', '-1.90722');
INSERT INTO `fbroad` VALUES ('665', 'CR', 'P23', 'CR_P23_P24', '1002.07730052000', '105.481', '105.481', '-1.89814', '-1.90720');
INSERT INTO `fbroad` VALUES ('666', 'CR', 'Q23', 'CR_P23_P24', '4.51690000919', '105.481', '105.481', '-1.90720', '-1.90724');
INSERT INTO `fbroad` VALUES ('667', 'MR', 'N22', 'MR_N22_P22', '24.07467782020', '105.478', '105.478', '-1.89809', '-1.89811');
INSERT INTO `fbroad` VALUES ('668', 'MR', 'P21', 'MR_N22_P22', '3.50294076714', '105.475', '105.475', '-1.89817', '-1.89817');
INSERT INTO `fbroad` VALUES ('669', 'MR', 'P22', 'MR_N22_P22', '278.93683780300', '105.478', '105.475', '-1.89811', '-1.89817');
INSERT INTO `fbroad` VALUES ('670', 'MR', 'P24', 'MR_N25_P25', '3.49334484147', '105.483', '105.484', '-1.89815', '-1.89815');
INSERT INTO `fbroad` VALUES ('671', 'MR', 'P25', 'MR_N25_P25', '300.85008588600', '105.484', '105.486', '-1.89815', '-1.89814');
INSERT INTO `fbroad` VALUES ('672', 'CR', 'P31', 'CR_P31_P32', '1009.94596711000', '105.503', '105.503', '-1.90727', '-1.89813');
INSERT INTO `fbroad` VALUES ('673', 'CR', 'Q31', 'CR_P31_P32', '4.49639611684', '105.503', '105.503', '-1.90731', '-1.90727');
INSERT INTO `fbroad` VALUES ('674', 'MR', 'P26', 'MR_N27_P27', '3.51170866214', '105.489', '105.489', '-1.89813', '-1.89813');
INSERT INTO `fbroad` VALUES ('675', 'MR', 'P27', 'MR_N27_P27', '319.87318643300', '105.489', '105.492', '-1.89813', '-1.89813');
INSERT INTO `fbroad` VALUES ('676', 'CR', 'P32', 'CR_P32_P33', '58.08804713450', '105.506', '105.506', '-1.89813', '-1.89865');
INSERT INTO `fbroad` VALUES ('677', 'MR', 'P34', 'MR_N35_P35', '3.50300155487', '105.511', '105.511', '-1.89812', '-1.89812');
INSERT INTO `fbroad` VALUES ('678', 'MR', 'P35', 'MR_N35_P35', '293.83731807200', '105.511', '105.514', '-1.89812', '-1.89813');
INSERT INTO `fbroad` VALUES ('679', 'CR', 'N28', 'CR_N28_N29', '457.45402276200', '105.495', '105.495', '-1.89809', '-1.89395');
INSERT INTO `fbroad` VALUES ('680', 'CR', 'P28', 'CR_N28_N29', '4.48609765343', '105.495', '105.495', '-1.89813', '-1.89809');
INSERT INTO `fbroad` VALUES ('681', 'MR', 'P33', 'MR_N34_P34', '4.00891375042', '105.508', '105.508', '-1.89812', '-1.89812');
INSERT INTO `fbroad` VALUES ('682', 'MR', 'P34', 'MR_N34_P34', '302.58298102000', '105.508', '105.511', '-1.89812', '-1.89812');
INSERT INTO `fbroad` VALUES ('683', 'MR', 'P27', 'MR_N28_P28', '3.52970444307', '105.492', '105.492', '-1.89813', '-1.89813');
INSERT INTO `fbroad` VALUES ('684', 'MR', 'P28', 'MR_N28_P28', '289.46300319300', '105.492', '105.495', '-1.89813', '-1.89813');
INSERT INTO `fbroad` VALUES ('685', 'MR', 'P31', 'MR_N32_P32', '3.50830024073', '105.503', '105.503', '-1.89813', '-1.89813');
INSERT INTO `fbroad` VALUES ('686', 'MR', 'P32', 'MR_N32_P32', '301.19452030700', '105.503', '105.506', '-1.89813', '-1.89813');
INSERT INTO `fbroad` VALUES ('687', 'MR', 'P25', 'MR_N26_P26', '3.04359157847', '105.486', '105.486', '-1.89814', '-1.89814');
INSERT INTO `fbroad` VALUES ('688', 'MR', 'P26', 'MR_N26_P26', '310.18532191100', '105.486', '105.489', '-1.89814', '-1.89813');
INSERT INTO `fbroad` VALUES ('689', 'CR', 'P33', 'CR_P33_P34', '1013.76579369000', '105.508', '105.508', '-1.90729', '-1.89812');
INSERT INTO `fbroad` VALUES ('690', 'CR', 'Q33', 'CR_P33_P34', '4.49715984195', '105.508', '105.508', '-1.90733', '-1.90729');
INSERT INTO `fbroad` VALUES ('691', 'MR', 'P23', 'MR_N24_P24', '3.99511339150', '105.481', '105.481', '-1.89814', '-1.89814');
INSERT INTO `fbroad` VALUES ('692', 'MR', 'P24', 'MR_N24_P24', '304.96585412400', '105.481', '105.483', '-1.89814', '-1.89815');
INSERT INTO `fbroad` VALUES ('693', 'CR', 'N24', 'CR_N24_N25', '947.00336343600', '105.484', '105.483', '-1.88954', '-1.89811');
INSERT INTO `fbroad` VALUES ('694', 'CR', 'P24', 'CR_N24_N25', '4.48451423705', '105.483', '105.483', '-1.89811', '-1.89815');
INSERT INTO `fbroad` VALUES ('695', 'CR', 'N23', 'CR_N23_N24', '948.10110628800', '105.481', '105.481', '-1.88952', '-1.89810');
INSERT INTO `fbroad` VALUES ('696', 'CR', 'P23', 'CR_N23_N24', '3.92460815325', '105.481', '105.481', '-1.89810', '-1.89814');
INSERT INTO `fbroad` VALUES ('697', 'MR', 'P31', 'MR_N31_P31', '157.23658562900', '105.501', '105.503', '-1.89813', '-1.89813');
INSERT INTO `fbroad` VALUES ('698', 'CR', 'N21', 'CR_N21_N22', '953.28200273000', '105.475', '105.475', '-1.89813', '-1.88950');
INSERT INTO `fbroad` VALUES ('699', 'CR', 'P21', 'CR_N21_N22', '4.48630121275', '105.475', '105.475', '-1.89817', '-1.89813');
INSERT INTO `fbroad` VALUES ('700', 'CR', 'N25', 'CR_N25_N26', '944.41133268300', '105.486', '105.486', '-1.89810', '-1.88955');
INSERT INTO `fbroad` VALUES ('701', 'CR', 'P25', 'CR_N25_N26', '5.05277692584', '105.486', '105.486', '-1.89814', '-1.89810');
INSERT INTO `fbroad` VALUES ('702', 'MR', 'P32', 'MR_N33_P33', '3.49671891065', '105.506', '105.506', '-1.89813', '-1.89813');
INSERT INTO `fbroad` VALUES ('703', 'MR', 'P33', 'MR_N33_P33', '296.53158724300', '105.508', '105.506', '-1.89812', '-1.89813');
INSERT INTO `fbroad` VALUES ('704', 'CR', 'N34', 'CR_N34_N35', '936.25826887900', '105.511', '105.511', '-1.88961', '-1.89808');
INSERT INTO `fbroad` VALUES ('705', 'CR', 'P34', 'CR_N34_N35', '4.50712529358', '105.511', '105.511', '-1.89808', '-1.89812');
INSERT INTO `fbroad` VALUES ('706', 'CR', 'N32', 'CR_N32_N33', '938.80291820600', '105.506', '105.506', '-1.88959', '-1.89809');
INSERT INTO `fbroad` VALUES ('707', 'CR', 'P32', 'CR_N32_N33', '4.49482991844', '105.506', '105.506', '-1.89809', '-1.89813');
INSERT INTO `fbroad` VALUES ('708', 'CR', 'N31', 'CR_N31_N32', '939.43330819300', '105.503', '105.503', '-1.89809', '-1.88959');
INSERT INTO `fbroad` VALUES ('709', 'CR', 'P31', 'CR_N31_N32', '4.50461993219', '105.503', '105.503', '-1.89813', '-1.89809');
INSERT INTO `fbroad` VALUES ('710', 'CR', 'N26', 'CR_N26_N27', '940.88559905400', '105.489', '105.489', '-1.88957', '-1.89808');
INSERT INTO `fbroad` VALUES ('711', 'CR', 'P26', 'CR_N26_N27', '4.51020069231', '105.489', '105.489', '-1.89808', '-1.89813');
INSERT INTO `fbroad` VALUES ('712', 'CR', 'N30', 'CR_N30_N31', '487.11690083100', '105.500', '105.500', '-1.88959', '-1.89399');
INSERT INTO `fbroad` VALUES ('713', 'CR', 'N28', 'CR_N28_N29', '482.23694894500', '105.495', '105.495', '-1.89395', '-1.88958');
INSERT INTO `fbroad` VALUES ('714', 'MR', 'N33', 'MR_M34_N34', '3.99321863608', '105.508', '105.508', '-1.88961', '-1.88961');
INSERT INTO `fbroad` VALUES ('715', 'MR', 'N34', 'MR_M34_N34', '304.50130299400', '105.508', '105.511', '-1.88961', '-1.88961');
INSERT INTO `fbroad` VALUES ('716', 'MR', 'N32', 'MR_M33_N33', '3.50184029878', '105.506', '105.506', '-1.88959', '-1.88959');
INSERT INTO `fbroad` VALUES ('717', 'MR', 'N33', 'MR_M33_N33', '294.26420307500', '105.506', '105.508', '-1.88959', '-1.88961');
INSERT INTO `fbroad` VALUES ('718', 'CR', 'N33', 'CR_N33_N34', '936.36629232100', '105.508', '105.508', '-1.89808', '-1.88961');
INSERT INTO `fbroad` VALUES ('719', 'CR', 'P33', 'CR_N33_N34', '4.51210453884', '105.508', '105.508', '-1.89812', '-1.89808');
INSERT INTO `fbroad` VALUES ('720', 'MR', 'N30', 'MR_M31_N31', '3.50220416308', '105.500', '105.500', '-1.88959', '-1.88959');
INSERT INTO `fbroad` VALUES ('721', 'MR', 'N31', 'MR_M31_N31', '294.55800299900', '105.503', '105.500', '-1.88959', '-1.88959');
INSERT INTO `fbroad` VALUES ('722', 'MR', 'N29', 'MR_M30_N30', '3.50006003520', '105.497', '105.497', '-1.88957', '-1.88957');
INSERT INTO `fbroad` VALUES ('723', 'MR', 'N30', 'MR_M30_N30', '303.15168260100', '105.497', '105.500', '-1.88957', '-1.88959');
INSERT INTO `fbroad` VALUES ('724', 'CR', 'N29', 'CR_N29_N30', '491.38389042000', '105.497', '105.497', '-1.89399', '-1.88957');
INSERT INTO `fbroad` VALUES ('725', 'CR', 'N27', 'CR_N27_N28', '995.32756950200', '105.492', '105.492', '-1.88952', '-1.89809');
INSERT INTO `fbroad` VALUES ('726', 'CR', 'P27', 'CR_N27_N28', '4.49360193167', '105.492', '105.492', '-1.89809', '-1.89813');
INSERT INTO `fbroad` VALUES ('727', 'MR', 'N27', 'MR_M28_N28', '3.51776727127', '105.492', '105.492', '-1.88953', '-1.88952');
INSERT INTO `fbroad` VALUES ('728', 'MR', 'N28', 'MR_M28_N28', '300.89516795000', '105.495', '105.492', '-1.88958', '-1.88953');
INSERT INTO `fbroad` VALUES ('729', 'MR', 'N26', 'MR_M27_N27', '3.49468031446', '105.489', '105.489', '-1.88957', '-1.88957');
INSERT INTO `fbroad` VALUES ('730', 'MR', 'N27', 'MR_M27_N27', '323.35915802600', '105.489', '105.492', '-1.88957', '-1.88952');
INSERT INTO `fbroad` VALUES ('731', 'MR', 'N25', 'MR_M26_N26', '3.50790936720', '105.486', '105.486', '-1.88955', '-1.88955');
INSERT INTO `fbroad` VALUES ('732', 'MR', 'N26', 'MR_M26_N26', '308.41695132200', '105.486', '105.489', '-1.88955', '-1.88957');
INSERT INTO `fbroad` VALUES ('733', 'MR', 'N31', 'MR_M32_N32', '3.50130514153', '105.503', '105.503', '-1.88959', '-1.88959');
INSERT INTO `fbroad` VALUES ('734', 'MR', 'N32', 'MR_M32_N32', '302.00165621200', '105.503', '105.506', '-1.88959', '-1.88959');
INSERT INTO `fbroad` VALUES ('735', 'MR', 'N28', 'MR_M29_N29', '3.49691576360', '105.495', '105.495', '-1.88958', '-1.88958');
INSERT INTO `fbroad` VALUES ('736', 'MR', 'N29', 'MR_M29_N29', '304.38162329400', '105.495', '105.497', '-1.88958', '-1.88957');
INSERT INTO `fbroad` VALUES ('737', 'CR', 'N22', 'CR_N22_N23', '948.11088779500', '105.478', '105.478', '-1.89809', '-1.88952');
INSERT INTO `fbroad` VALUES ('738', 'CR', 'M28', 'CR_M28_M29', '1004.94733073000', '105.495', '105.495', '-1.88954', '-1.88045');
INSERT INTO `fbroad` VALUES ('739', 'CR', 'N28', 'CR_M28_M29', '4.51301758942', '105.495', '105.495', '-1.88958', '-1.88954');
INSERT INTO `fbroad` VALUES ('740', 'CR', 'M33', 'CR_M33_M34', '840.15003662100', '105.508', '105.508', '-1.88957', '-1.88198');
INSERT INTO `fbroad` VALUES ('741', 'CR', 'N33', 'CR_M33_M34', '4.49644142125', '105.508', '105.508', '-1.88961', '-1.88957');
INSERT INTO `fbroad` VALUES ('742', 'CR', 'M26', 'CR_M26_M27', '1004.86426775000', '105.489', '105.489', '-1.88953', '-1.88044');
INSERT INTO `fbroad` VALUES ('743', 'CR', 'N26', 'CR_M26_M27', '4.46610403207', '105.489', '105.489', '-1.88957', '-1.88953');
INSERT INTO `fbroad` VALUES ('744', 'MR', 'M33', 'MR_M33_M34', '11.13553062970', '105.508', '105.508', '-1.88198', '-1.88190');
INSERT INTO `fbroad` VALUES ('745', 'CR', 'M27', 'CR_M27_M28', '1000.71807541000', '105.492', '105.492', '-1.88044', '-1.88950');
INSERT INTO `fbroad` VALUES ('746', 'CR', 'N27', 'CR_M27_M28', '2.42250016659', '105.492', '105.492', '-1.88950', '-1.88952');
INSERT INTO `fbroad` VALUES ('747', 'CR', 'M31', 'CR_M31_M32', '1008.52056407000', '105.503', '105.503', '-1.88955', '-1.88043');
INSERT INTO `fbroad` VALUES ('748', 'CR', 'N31', 'CR_M31_M32', '4.50051133419', '105.503', '105.503', '-1.88959', '-1.88955');
INSERT INTO `fbroad` VALUES ('749', 'CR', 'M32', 'CR_M32_M33', '922.80804007600', '105.506', '105.506', '-1.88120', '-1.88955');
INSERT INTO `fbroad` VALUES ('750', 'CR', 'N32', 'CR_M32_M33', '4.50541933689', '105.506', '105.506', '-1.88955', '-1.88959');
INSERT INTO `fbroad` VALUES ('751', 'MR', 'M34', 'MR_L34_M34', '165.49221451800', '105.510', '105.511', '-1.88050', '-1.88049');
INSERT INTO `fbroad` VALUES ('752', 'CR', 'M29', 'CR_M29_M30', '1005.76134652000', '105.497', '105.497', '-1.88953', '-1.88043');
INSERT INTO `fbroad` VALUES ('753', 'CR', 'N29', 'CR_M29_M30', '4.52092357478', '105.497', '105.497', '-1.88957', '-1.88953');
INSERT INTO `fbroad` VALUES ('754', 'CR', 'M30', 'CR_M30_M31', '1008.48394249000', '105.500', '105.500', '-1.88042', '-1.88955');
INSERT INTO `fbroad` VALUES ('755', 'CR', 'N30', 'CR_M30_M31', '4.50003802762', '105.500', '105.500', '-1.88955', '-1.88959');
INSERT INTO `fbroad` VALUES ('756', 'MR', 'U23', 'MR_T23_U23', '18.32279646440', '105.480', '105.480', '-1.94377', '-1.94381');
INSERT INTO `fbroad` VALUES ('757', 'MR', 'M34', 'MR_L34_M34', '10.16624227180', '105.509', '105.510', '-1.88046', '-1.88050');
INSERT INTO `fbroad` VALUES ('758', 'CR', 'U35', 'CR_U35_V35', '501.17873019800', '105.514', '105.514', '-1.94829', '-1.94376');
INSERT INTO `fbroad` VALUES ('759', 'CR', 'U35', 'CR_U35_U36', '501.17873019800', '105.514', '105.514', '-1.94829', '-1.94376');
INSERT INTO `fbroad` VALUES ('760', 'CR', 'U36', 'CR_U35_V35', '2.78533324421', '105.514', '105.514', '-1.94376', '-1.94374');
INSERT INTO `fbroad` VALUES ('761', 'CR', 'U36', 'CR_U35_U36', '2.78533324421', '105.514', '105.514', '-1.94376', '-1.94374');
INSERT INTO `fbroad` VALUES ('762', 'CR', 'R25', 'CR_R25_R26', '17.68269094720', '105.485', '105.485', '-1.92498', '-1.92487');
INSERT INTO `fbroad` VALUES ('763', 'CR', 'R25', 'CR_R25_R26', '17.68269094720', '105.485', '105.485', '-1.92498', '-1.92487');
INSERT INTO `fbroad` VALUES ('764', 'CR', 'T35', 'CR_T35_U35', '5.24876217509', '105.514', '105.514', '-1.94371', '-1.94367');
INSERT INTO `fbroad` VALUES ('765', 'CR', 'T35', 'CR_U35_U36', '5.24876217509', '105.514', '105.514', '-1.94371', '-1.94367');
INSERT INTO `fbroad` VALUES ('766', 'CR', 'T35', 'CR_T36_U36', '5.24876217509', '105.514', '105.514', '-1.94371', '-1.94367');
INSERT INTO `fbroad` VALUES ('767', 'CR', 'U35', 'CR_T35_U35', '1.67114268204', '105.514', '105.514', '-1.94372', '-1.94371');
INSERT INTO `fbroad` VALUES ('768', 'CR', 'U35', 'CR_U35_U36', '1.67114268204', '105.514', '105.514', '-1.94372', '-1.94371');
INSERT INTO `fbroad` VALUES ('769', 'CR', 'U35', 'CR_T36_U36', '1.67114268204', '105.514', '105.514', '-1.94372', '-1.94371');
INSERT INTO `fbroad` VALUES ('770', 'CR', 'U36', 'CR_T35_U35', '2.15153290703', '105.514', '105.514', '-1.94374', '-1.94372');
INSERT INTO `fbroad` VALUES ('771', 'CR', 'U36', 'CR_U35_U36', '2.15153290703', '105.514', '105.514', '-1.94374', '-1.94372');
INSERT INTO `fbroad` VALUES ('772', 'CR', 'U36', 'CR_T36_U36', '2.15153290703', '105.514', '105.514', '-1.94374', '-1.94372');
INSERT INTO `fbroad` VALUES ('773', 'MR', 'U23', 'MR_T23_U23', '8.57386799293', '105.480', '105.480', '-1.94381', '-1.94383');
INSERT INTO `fbroad` VALUES ('774', 'MR', 'U23', 'MR_T23_U23', '8.57386799293', '105.480', '105.480', '-1.94381', '-1.94383');
INSERT INTO `fbroad` VALUES ('775', 'MR', 'U23', 'MR_T23_U23', '8.57386799293', '105.480', '105.480', '-1.94381', '-1.94383');
INSERT INTO `fbroad` VALUES ('776', 'MR', 'T23', 'MR_T23_U23', '4.47547956837', '105.480', '105.480', '-1.94374', '-1.94375');
INSERT INTO `fbroad` VALUES ('777', 'MR', 'T23', 'MR_T23_U23', '4.47547956837', '105.480', '105.480', '-1.94374', '-1.94375');
INSERT INTO `fbroad` VALUES ('778', 'MR', 'T23', 'MR_T23_U23', '4.47547956837', '105.480', '105.480', '-1.94374', '-1.94375');
INSERT INTO `fbroad` VALUES ('779', 'MR', 'U23', 'MR_T23_U23', '7.38030286728', '105.480', '105.480', '-1.94375', '-1.94377');
INSERT INTO `fbroad` VALUES ('780', 'MR', 'U23', 'MR_T23_U23', '7.38030286728', '105.480', '105.480', '-1.94375', '-1.94377');
INSERT INTO `fbroad` VALUES ('781', 'MR', 'U23', 'MR_T23_U23', '7.38030286728', '105.480', '105.480', '-1.94375', '-1.94377');
INSERT INTO `fbroad` VALUES ('782', 'MR', 'N21', 'MR_N21', '307.00696341700', '105.475', '105.472', '-1.88950', '-1.88952');
INSERT INTO `fbroad` VALUES ('783', 'MR', 'U20', 'MR_U20', '303.26568155500', '105.470', '105.472', '-1.94380', '-1.94379');
INSERT INTO `fbroad` VALUES ('784', 'MR', 'U42', 'MR_U42', '384.56844481900', '105.530', '105.533', '-1.94816', '-1.94814');
INSERT INTO `fbroad` VALUES ('785', 'MR', 'U38', 'MR_U38', '294.15377856600', '105.519', '105.522', '-1.95301', '-1.95295');
INSERT INTO `fbroad` VALUES ('786', 'MR', 'V37', 'MR_V37', '322.49717698400', '105.519', '105.516', '-1.96208', '-1.96209');
INSERT INTO `fbroad` VALUES ('787', 'MR', 'S42', 'MR_S42', '336.28007531200', '105.530', '105.533', '-1.92587', '-1.92594');
INSERT INTO `fbroad` VALUES ('788', 'MR', 'R41', 'MR_R41', '309.24256819100', '105.527', '105.530', '-1.91631', '-1.91634');
INSERT INTO `fbroad` VALUES ('789', 'MR', 'P40', 'MR_P40', '233.82688322200', '105.525', '105.527', '-1.90263', '-1.90266');
INSERT INTO `fbroad` VALUES ('790', 'MR', 'P37', 'MR_P37', '304.71195999200', '105.516', '105.519', '-1.89815', '-1.89814');
INSERT INTO `fbroad` VALUES ('791', 'MR', 'N35', 'MR_N35', '293.65529193500', '105.514', '105.511', '-1.88963', '-1.88961');
INSERT INTO `fbroad` VALUES ('792', 'MR', 'V32', 'MR_V32', '318.11670795600', '105.502', '105.505', '-1.96198', '-1.96201');
INSERT INTO `fbroad` VALUES ('793', 'MR', 'W26', 'MR_W26', '349.34423203500', '105.489', '105.486', '-1.96200', '-1.96204');
INSERT INTO `fbroad` VALUES ('794', 'MR', 'M26', 'MR_M26', '317.02399583600', '105.486', '105.489', '-1.88047', '-1.88044');

-- ----------------------------
-- Table structure for fbroadsegment
-- ----------------------------
DROP TABLE IF EXISTS `fbroadsegment`;
CREATE TABLE `fbroadsegment` (
  `roadID` varchar(255) DEFAULT NULL,
  `segmentID` varchar(255) DEFAULT NULL,
  `x1` double DEFAULT NULL,
  `y1` double DEFAULT NULL,
  `x2` double DEFAULT NULL,
  `y2` double DEFAULT NULL,
  `distMtr` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbroadsegment
-- ----------------------------

-- ----------------------------
-- Table structure for fbroad_copy
-- ----------------------------
DROP TABLE IF EXISTS `fbroad_copy`;
CREATE TABLE `fbroad_copy` (
  `RoadID` varchar(255) DEFAULT NULL,
  `Type` varchar(255) DEFAULT NULL,
  `Blok` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Shape_Leng` varchar(255) DEFAULT NULL,
  `Koordinat X_start` varchar(255) DEFAULT NULL,
  `Koordinat X_end` varchar(255) DEFAULT NULL,
  `Koordinat Y_start` varchar(255) DEFAULT NULL,
  `Koordinat Y_end` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbroad_copy
-- ----------------------------
INSERT INTO `fbroad_copy` VALUES ('1', 'CR', 'W20', 'CR_W20', '980.87040291800', '105.470', '105.470', '-1.97115', '-1.96227');
INSERT INTO `fbroad_copy` VALUES ('2', 'CR', 'V36', 'CR_V36', '3.01209764854', '105.516', '105.516', '-1.96209', '-1.96209');
INSERT INTO `fbroad_copy` VALUES ('3', 'CR', 'V37', 'CR_V37', '1001.54407328000', '105.519', '105.519', '-1.95301', '-1.96208');
INSERT INTO `fbroad_copy` VALUES ('4', 'MR', 'V35', 'MR_V35', '3.00682075393', '105.514', '105.514', '-1.96206', '-1.96206');
INSERT INTO `fbroad_copy` VALUES ('5', 'MR', 'V36', 'MR_V36', '269.48781691300', '105.514', '105.516', '-1.96206', '-1.96209');
INSERT INTO `fbroad_copy` VALUES ('6', 'MR', 'V34', 'MR_V34', '3.00638419655', '105.511', '105.511', '-1.96205', '-1.96205');
INSERT INTO `fbroad_copy` VALUES ('7', 'MR', 'V35', 'MR_V35', '303.51915992500', '105.511', '105.514', '-1.96205', '-1.96206');
INSERT INTO `fbroad_copy` VALUES ('8', 'CR', 'W25', 'CR_W25', '3.50082627145', '105.486', '105.486', '-1.96204', '-1.96204');
INSERT INTO `fbroad_copy` VALUES ('9', 'CR', 'W26', 'CR_W26', '1010.22831936000', '105.489', '105.489', '-1.97114', '-1.96200');
INSERT INTO `fbroad_copy` VALUES ('10', 'MR', 'V33', 'MR_V33', '3.00604807180', '105.508', '105.508', '-1.96201', '-1.96201');
INSERT INTO `fbroad_copy` VALUES ('11', 'MR', 'V34', 'MR_V34', '301.92040150100', '105.508', '105.511', '-1.96201', '-1.96205');
INSERT INTO `fbroad_copy` VALUES ('12', 'MR', 'V32', 'MR_V32', '3.20904609483', '105.505', '105.505', '-1.96201', '-1.96201');
INSERT INTO `fbroad_copy` VALUES ('13', 'MR', 'V33', 'MR_V33', '307.10634603900', '105.505', '105.508', '-1.96201', '-1.96201');
INSERT INTO `fbroad_copy` VALUES ('14', 'CR', 'V32', 'CR_V32', '1003.15458474000', '105.502', '105.502', '-1.95290', '-1.96198');
INSERT INTO `fbroad_copy` VALUES ('15', 'CR', 'V20', 'CR_V20', '1009.33079509000', '105.470', '105.470', '-1.96223', '-1.95310');
INSERT INTO `fbroad_copy` VALUES ('16', 'CR', 'W20', 'CR_W20', '4.47787687626', '105.470', '105.470', '-1.96227', '-1.96223');
INSERT INTO `fbroad_copy` VALUES ('17', 'CR', 'V25', 'CR_V25', '1008.71269171000', '105.486', '105.486', '-1.95288', '-1.96200');
INSERT INTO `fbroad_copy` VALUES ('18', 'CR', 'W25', 'CR_W25', '4.48880324662', '105.486', '105.486', '-1.96200', '-1.96204');
INSERT INTO `fbroad_copy` VALUES ('19', 'MR', 'U27', 'MR_U27', '3.19364021064', '105.492', '105.492', '-1.94873', '-1.94873');
INSERT INTO `fbroad_copy` VALUES ('20', 'MR', 'U28', 'MR_U28', '287.82990236300', '105.492', '105.494', '-1.94873', '-1.94869');
INSERT INTO `fbroad_copy` VALUES ('21', 'CR', 'U38', 'CR_U38', '531.80957657000', '105.522', '105.522', '-1.95295', '-1.94814');
INSERT INTO `fbroad_copy` VALUES ('22', 'CR', 'V37', 'CR_V37', '3.49588379262', '105.519', '105.519', '-1.95301', '-1.95301');
INSERT INTO `fbroad_copy` VALUES ('23', 'CR', 'U41', 'CR_U41', '3.20832244177', '105.530', '105.530', '-1.94816', '-1.94816');
INSERT INTO `fbroad_copy` VALUES ('24', 'CR', 'U42', 'CR_U42', '502.36242763400', '105.533', '105.533', '-1.94814', '-1.94360');
INSERT INTO `fbroad_copy` VALUES ('25', 'CR', 'U25', 'CR_U25', '444.39803411400', '105.486', '105.486', '-1.95283', '-1.94881');
INSERT INTO `fbroad_copy` VALUES ('26', 'CR', 'V25', 'CR_V25', '4.51148059598', '105.486', '105.486', '-1.95288', '-1.95283');
INSERT INTO `fbroad_copy` VALUES ('27', 'MR', 'U26', 'MR_U26', '270.76325767600', '105.486', '105.489', '-1.94880', '-1.94877');
INSERT INTO `fbroad_copy` VALUES ('28', 'MR', 'U26', 'MR_U26', '3.20300600130', '105.489', '105.489', '-1.94877', '-1.94877');
INSERT INTO `fbroad_copy` VALUES ('29', 'MR', 'U27', 'MR_U27', '319.43443027500', '105.489', '105.492', '-1.94877', '-1.94873');
INSERT INTO `fbroad_copy` VALUES ('30', 'MR', 'U25', 'MR_U25', '2.92411550027', '105.486', '105.486', '-1.94881', '-1.94881');
INSERT INTO `fbroad_copy` VALUES ('31', 'MR', 'U26', 'MR_U26', '32.78546811330', '105.486', '105.486', '-1.94880', '-1.94881');
INSERT INTO `fbroad_copy` VALUES ('32', 'CR', 'U31', 'CR_U31', '3.38706386723', '105.502', '105.502', '-1.94864', '-1.94867');
INSERT INTO `fbroad_copy` VALUES ('33', 'CR', 'U32', 'CR_U32', '463.14567650100', '105.502', '105.502', '-1.94867', '-1.95286');
INSERT INTO `fbroad_copy` VALUES ('34', 'CR', 'V32', 'CR_V32', '4.50557793183', '105.502', '105.502', '-1.95286', '-1.95290');
INSERT INTO `fbroad_copy` VALUES ('35', 'MR', 'U28', 'MR_U28', '3.19771398932', '105.494', '105.494', '-1.94869', '-1.94869');
INSERT INTO `fbroad_copy` VALUES ('36', 'MR', 'U29', 'MR_U29', '298.23629321700', '105.497', '105.494', '-1.94865', '-1.94869');
INSERT INTO `fbroad_copy` VALUES ('37', 'Logging', 'U24', 'Logging_U24', '5.42256499924', '105.483', '105.483', '-1.94580', '-1.94583');
INSERT INTO `fbroad_copy` VALUES ('38', 'Logging', 'U25', 'Logging_U25', '420.82450718100', '105.483', '105.486', '-1.94583', '-1.94853');
INSERT INTO `fbroad_copy` VALUES ('39', 'Logging', 'U25', 'Logging_U25', '3.67353236149', '105.486', '105.486', '-1.94855', '-1.94853');
INSERT INTO `fbroad_copy` VALUES ('40', 'Logging', 'U26', 'Logging_U26', '42.86148663840', '105.486', '105.486', '-1.94880', '-1.94855');
INSERT INTO `fbroad_copy` VALUES ('41', 'MR', 'U30', 'MR_U30', '3.00075058725', '105.500', '105.500', '-1.94859', '-1.94859');
INSERT INTO `fbroad_copy` VALUES ('42', 'MR', 'U31', 'MR_U31', '277.01661208200', '105.502', '105.500', '-1.94864', '-1.94859');
INSERT INTO `fbroad_copy` VALUES ('43', 'MR', 'U29', 'MR_U29', '3.19934801684', '105.497', '105.497', '-1.94865', '-1.94865');
INSERT INTO `fbroad_copy` VALUES ('44', 'MR', 'U30', 'MR_U30', '315.67920557700', '105.500', '105.497', '-1.94859', '-1.94865');
INSERT INTO `fbroad_copy` VALUES ('45', 'Logging', 'U23', 'Logging_U23', '2.50203066508', '105.481', '105.481', '-1.94400', '-1.94400');
INSERT INTO `fbroad_copy` VALUES ('46', 'Logging', 'U24', 'Logging_U24', '369.09320299300', '105.483', '105.481', '-1.94580', '-1.94400');
INSERT INTO `fbroad_copy` VALUES ('47', 'MR', 'U40', 'MR_U40', '2.99970888748', '105.527', '105.527', '-1.94814', '-1.94814');
INSERT INTO `fbroad_copy` VALUES ('48', 'MR', 'U41', 'MR_U41', '299.95085920300', '105.527', '105.530', '-1.94814', '-1.94816');
INSERT INTO `fbroad_copy` VALUES ('49', 'MR', 'U40', 'MR_U40', '381.93604835300', '105.524', '105.527', '-1.94723', '-1.94814');
INSERT INTO `fbroad_copy` VALUES ('50', 'Logging', 'U23', 'Logging_U23', '35.21388571860', '105.480', '105.481', '-1.94383', '-1.94400');
INSERT INTO `fbroad_copy` VALUES ('51', 'CR', 'U20', 'CR_U20', '1023.09615178000', '105.470', '105.470', '-1.95306', '-1.94380');
INSERT INTO `fbroad_copy` VALUES ('52', 'CR', 'V20', 'CR_V20', '4.48702560765', '105.470', '105.470', '-1.95310', '-1.95306');
INSERT INTO `fbroad_copy` VALUES ('53', 'MR', 'T34', 'MR_T34', '1.78054785350', '105.511', '105.511', '-1.93919', '-1.93919');
INSERT INTO `fbroad_copy` VALUES ('54', 'MR', 'T35', 'MR_T35', '297.72251003600', '105.513', '105.511', '-1.93925', '-1.93919');
INSERT INTO `fbroad_copy` VALUES ('55', 'Logging', 'T22', 'Logging_T22', '5.03369382987', '105.478', '105.478', '-1.94303', '-1.94304');
INSERT INTO `fbroad_copy` VALUES ('56', 'Logging', 'T23', 'Logging_T23', '243.89238007700', '105.478', '105.480', '-1.94304', '-1.94374');
INSERT INTO `fbroad_copy` VALUES ('57', 'Logging', 'T21', 'Logging_T21', '340.75229600000', '105.475', '105.472', '-1.94199', '-1.94073');
INSERT INTO `fbroad_copy` VALUES ('58', 'CR', 'T21', 'CR_T21', '334.06099189200', '105.472', '105.472', '-1.94375', '-1.94073');
INSERT INTO `fbroad_copy` VALUES ('59', 'CR', 'U20', 'CR_U20', '4.49510962134', '105.472', '105.472', '-1.94379', '-1.94375');
INSERT INTO `fbroad_copy` VALUES ('60', 'Logging', 'T21', 'Logging_T21', '2.60904121281', '105.475', '105.475', '-1.94199', '-1.94199');
INSERT INTO `fbroad_copy` VALUES ('61', 'Logging', 'T22', 'Logging_T22', '325.21728234800', '105.478', '105.475', '-1.94303', '-1.94199');
INSERT INTO `fbroad_copy` VALUES ('62', 'CR', 'T37', 'CR_T37', '0.55230778627', '105.519', '105.519', '-1.93998', '-1.93999');
INSERT INTO `fbroad_copy` VALUES ('63', 'CR', 'T38', 'CR_T38', '449.28725680700', '105.519', '105.519', '-1.93999', '-1.94369');
INSERT INTO `fbroad_copy` VALUES ('64', 'CR', 'U38', 'CR_U38', '4.77344324326', '105.519', '105.519', '-1.94369', '-1.94372');
INSERT INTO `fbroad_copy` VALUES ('65', 'CR', 'T21', 'CR_T21', '672.05864942200', '105.472', '105.472', '-1.94073', '-1.93465');
INSERT INTO `fbroad_copy` VALUES ('66', 'MR', 'T32', 'MR_T32', '2.93028339497', '105.505', '105.505', '-1.93923', '-1.93923');
INSERT INTO `fbroad_copy` VALUES ('67', 'MR', 'T33', 'MR_T33', '297.33388753900', '105.508', '105.505', '-1.93917', '-1.93923');
INSERT INTO `fbroad_copy` VALUES ('68', 'CR', 'T42', 'CR_T42', '959.36248455300', '105.533', '105.533', '-1.93488', '-1.94356');
INSERT INTO `fbroad_copy` VALUES ('69', 'CR', 'U42', 'CR_U42', '4.50506280854', '105.533', '105.533', '-1.94356', '-1.94360');
INSERT INTO `fbroad_copy` VALUES ('70', 'CR', 'S41', 'CR_S41', '3.50992663726', '105.530', '105.530', '-1.92587', '-1.92587');
INSERT INTO `fbroad_copy` VALUES ('71', 'CR', 'S42', 'CR_S42', '984.40216870200', '105.533', '105.533', '-1.92594', '-1.93484');
INSERT INTO `fbroad_copy` VALUES ('72', 'CR', 'T42', 'CR_T42', '3.81470102759', '105.533', '105.533', '-1.93484', '-1.93488');
INSERT INTO `fbroad_copy` VALUES ('73', 'CR', 'S21', 'CR_S21', '1002.68785813000', '105.472', '105.472', '-1.93461', '-1.92553');
INSERT INTO `fbroad_copy` VALUES ('74', 'CR', 'T21', 'CR_T21', '4.52831460294', '105.472', '105.472', '-1.93465', '-1.93461');
INSERT INTO `fbroad_copy` VALUES ('75', 'CR', 'R25', 'CR_R25', '3.20984663982', '105.486', '105.486', '-1.92305', '-1.92303');
INSERT INTO `fbroad_copy` VALUES ('76', 'CR', 'R26', 'CR_R26', '175.72741900400', '105.487', '105.486', '-1.92414', '-1.92305');
INSERT INTO `fbroad_copy` VALUES ('77', 'CR', 'R25', 'CR_R25', '231.25216095400', '105.485', '105.483', '-1.92487', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('78', 'CR', 'S24', 'CR_S24', '0.09974953640', '105.483', '105.483', '-1.92554', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('79', 'CR', 'R21', 'CR_R21', '1004.23017556000', '105.472', '105.472', '-1.92549', '-1.91641');
INSERT INTO `fbroad_copy` VALUES ('80', 'CR', 'S21', 'CR_S21', '4.49614537791', '105.472', '105.472', '-1.92553', '-1.92549');
INSERT INTO `fbroad_copy` VALUES ('81', 'CR', 'P39', 'CR_P39', '3.20620389859', '105.525', '105.525', '-1.90263', '-1.90263');
INSERT INTO `fbroad_copy` VALUES ('82', 'CR', 'P40', 'CR_P40', '568.28241816500', '105.527', '105.527', '-1.90266', '-1.90741');
INSERT INTO `fbroad_copy` VALUES ('83', 'CR', 'Q40', 'CR_Q40', '4.50208968283', '105.527', '105.527', '-1.90741', '-1.90745');
INSERT INTO `fbroad_copy` VALUES ('84', 'CR', 'R40', 'CR_R40', '3.49992921374', '105.527', '105.527', '-1.91631', '-1.91631');
INSERT INTO `fbroad_copy` VALUES ('85', 'CR', 'R41', 'CR_R41', '1048.18236965000', '105.530', '105.530', '-1.91634', '-1.92583');
INSERT INTO `fbroad_copy` VALUES ('86', 'CR', 'S41', 'CR_S41', '5.11766352990', '105.530', '105.530', '-1.92583', '-1.92587');
INSERT INTO `fbroad_copy` VALUES ('87', 'CR', 'Q21', 'CR_Q21', '1004.90664581000', '105.472', '105.472', '-1.91637', '-1.90728');
INSERT INTO `fbroad_copy` VALUES ('88', 'CR', 'R21', 'CR_R21', '4.50053922479', '105.472', '105.472', '-1.91641', '-1.91637');
INSERT INTO `fbroad_copy` VALUES ('89', 'CR', 'Q40', 'CR_Q40', '975.68207467300', '105.527', '105.527', '-1.91627', '-1.90745');
INSERT INTO `fbroad_copy` VALUES ('90', 'CR', 'R40', 'CR_R40', '4.50101446599', '105.527', '105.527', '-1.91631', '-1.91627');
INSERT INTO `fbroad_copy` VALUES ('91', 'CR', 'P30', 'CR_P30', '2.93185474564', '105.500', '105.500', '-1.90112', '-1.90111');
INSERT INTO `fbroad_copy` VALUES ('92', 'CR', 'P31', 'CR_P31', '465.49430369100', '105.501', '105.500', '-1.89813', '-1.90112');
INSERT INTO `fbroad_copy` VALUES ('93', 'CR', 'P29', 'CR_P29', '272.45373960300', '105.496', '105.497', '-1.90224', '-1.90411');
INSERT INTO `fbroad_copy` VALUES ('94', 'CR', 'P29', 'CR_P29', '7.52278173310', '105.497', '105.497', '-1.90408', '-1.90411');
INSERT INTO `fbroad_copy` VALUES ('95', 'CR', 'P30', 'CR_P30', '592.95465061200', '105.500', '105.497', '-1.90111', '-1.90408');
INSERT INTO `fbroad_copy` VALUES ('96', 'MR', 'P38', 'MR_P38', '3.20699979696', '105.522', '105.522', '-1.90260', '-1.90260');
INSERT INTO `fbroad_copy` VALUES ('97', 'MR', 'P39', 'MR_P39', '304.69400452400', '105.522', '105.525', '-1.90260', '-1.90263');
INSERT INTO `fbroad_copy` VALUES ('98', 'MR', 'P37', 'MR_P37', '2.62495185878', '105.519', '105.519', '-1.90258', '-1.90258');
INSERT INTO `fbroad_copy` VALUES ('99', 'MR', 'P38', 'MR_P38', '301.53000784800', '105.519', '105.522', '-1.90258', '-1.90260');
INSERT INTO `fbroad_copy` VALUES ('100', 'CR', 'P29', 'CR_P29', '11.21583976520', '105.497', '105.497', '-1.90411', '-1.90418');
INSERT INTO `fbroad_copy` VALUES ('101', 'CR', 'P21', 'CR_P21', '1003.03429960000', '105.472', '105.472', '-1.90724', '-1.89816');
INSERT INTO `fbroad_copy` VALUES ('102', 'CR', 'Q21', 'CR_Q21', '4.48533815300', '105.472', '105.472', '-1.90728', '-1.90724');
INSERT INTO `fbroad_copy` VALUES ('103', 'CR', 'P36', 'CR_P36', '3.00436829904', '105.516', '105.516', '-1.89815', '-1.89815');
INSERT INTO `fbroad_copy` VALUES ('104', 'CR', 'P37', 'CR_P37', '489.69729091600', '105.519', '105.519', '-1.89814', '-1.90258');
INSERT INTO `fbroad_copy` VALUES ('105', 'MR', 'P35', 'MR_P35', '3.50686347715', '105.514', '105.514', '-1.89813', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('106', 'MR', 'P36', 'MR_P36', '302.34212339300', '105.514', '105.516', '-1.89813', '-1.89815');
INSERT INTO `fbroad_copy` VALUES ('107', 'CR', 'M33', 'CR_M33', '4.04952228452', '105.508', '105.508', '-1.88197', '-1.88198');
INSERT INTO `fbroad_copy` VALUES ('108', 'CR', 'M34', 'CR_M34', '260.09713429600', '105.510', '105.508', '-1.88050', '-1.88197');
INSERT INTO `fbroad_copy` VALUES ('109', 'CR', 'N30', 'CR_N30', '3.20804847442', '105.500', '105.500', '-1.89399', '-1.89399');
INSERT INTO `fbroad_copy` VALUES ('110', 'CR', 'N31', 'CR_N31', '585.30483578500', '105.500', '105.501', '-1.89399', '-1.89809');
INSERT INTO `fbroad_copy` VALUES ('111', 'CR', 'P31', 'CR_P31', '4.50677310386', '105.501', '105.501', '-1.89809', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('112', 'MR', 'N29', 'MR_N29', '3.41529506318', '105.498', '105.497', '-1.89399', '-1.89399');
INSERT INTO `fbroad_copy` VALUES ('113', 'MR', 'N30', 'MR_N30', '287.03327427600', '105.500', '105.498', '-1.89399', '-1.89399');
INSERT INTO `fbroad_copy` VALUES ('114', 'MR', 'N28', 'MR_N28', '3.20201946864', '105.495', '105.495', '-1.89395', '-1.89395');
INSERT INTO `fbroad_copy` VALUES ('115', 'MR', 'N29', 'MR_N29', '318.75924234700', '105.497', '105.495', '-1.89399', '-1.89395');
INSERT INTO `fbroad_copy` VALUES ('116', 'CR', 'N34', 'CR_N34', '3.49410024161', '105.511', '105.511', '-1.88961', '-1.88961');
INSERT INTO `fbroad_copy` VALUES ('117', 'CR', 'N35', 'CR_N35', '934.45145906700', '105.514', '105.514', '-1.89809', '-1.88963');
INSERT INTO `fbroad_copy` VALUES ('118', 'CR', 'P35', 'CR_P35', '4.50852267868', '105.514', '105.514', '-1.89813', '-1.89809');
INSERT INTO `fbroad_copy` VALUES ('119', 'MR', 'N24', 'MR_N24', '3.20680122221', '105.484', '105.484', '-1.88954', '-1.88954');
INSERT INTO `fbroad_copy` VALUES ('120', 'MR', 'N25', 'MR_N25', '298.75784782000', '105.484', '105.486', '-1.88954', '-1.88955');
INSERT INTO `fbroad_copy` VALUES ('121', 'MR', 'N23', 'MR_N23', '3.66571154462', '105.481', '105.481', '-1.88952', '-1.88952');
INSERT INTO `fbroad_copy` VALUES ('122', 'MR', 'N24', 'MR_N24', '305.58205078200', '105.481', '105.484', '-1.88952', '-1.88954');
INSERT INTO `fbroad_copy` VALUES ('123', 'CR', 'M34', 'CR_M34', '1004.13984852000', '105.511', '105.511', '-1.88957', '-1.88049');
INSERT INTO `fbroad_copy` VALUES ('124', 'CR', 'N34', 'CR_N34', '4.49397695916', '105.511', '105.511', '-1.88961', '-1.88957');
INSERT INTO `fbroad_copy` VALUES ('125', 'MR', 'N21', 'MR_N21', '3.20734623384', '105.475', '105.475', '-1.88950', '-1.88950');
INSERT INTO `fbroad_copy` VALUES ('126', 'MR', 'N22', 'MR_N22', '307.87192165300', '105.475', '105.478', '-1.88950', '-1.88952');
INSERT INTO `fbroad_copy` VALUES ('127', 'CR', 'N21', 'CR_N21', '951.02944520200', '105.472', '105.472', '-1.88952', '-1.89812');
INSERT INTO `fbroad_copy` VALUES ('128', 'CR', 'P21', 'CR_P21', '4.48034331044', '105.472', '105.472', '-1.89812', '-1.89816');
INSERT INTO `fbroad_copy` VALUES ('129', 'MR', 'N22', 'MR_N22', '3.00010620222', '105.478', '105.478', '-1.88952', '-1.88952');
INSERT INTO `fbroad_copy` VALUES ('130', 'MR', 'N23', 'MR_N23', '301.05433308200', '105.478', '105.481', '-1.88952', '-1.88952');
INSERT INTO `fbroad_copy` VALUES ('131', 'CR', 'M26', 'CR_M26', '998.88501551200', '105.486', '105.486', '-1.88951', '-1.88047');
INSERT INTO `fbroad_copy` VALUES ('132', 'CR', 'N25', 'CR_N25', '4.50371318955', '105.486', '105.486', '-1.88955', '-1.88951');
INSERT INTO `fbroad_copy` VALUES ('133', 'MR', 'M32', 'MR_M32', '3.20269821538', '105.506', '105.506', '-1.88121', '-1.88120');
INSERT INTO `fbroad_copy` VALUES ('134', 'MR', 'M33', 'MR_M33', '313.81747879200', '105.508', '105.506', '-1.88190', '-1.88121');
INSERT INTO `fbroad_copy` VALUES ('135', 'CR', 'L34', 'CR_L34', '940.84357331100', '105.513', '105.511', '-1.87302', '-1.88049');
INSERT INTO `fbroad_copy` VALUES ('136', 'CR', 'M34', 'CR_M34', '3.00229014311', '105.511', '105.511', '-1.88049', '-1.88049');
INSERT INTO `fbroad_copy` VALUES ('137', 'MR', 'M31', 'MR_M31', '3.00401641997', '105.503', '105.503', '-1.88043', '-1.88043');
INSERT INTO `fbroad_copy` VALUES ('138', 'MR', 'M32', 'MR_M32', '360.86765304900', '105.506', '105.503', '-1.88120', '-1.88043');
INSERT INTO `fbroad_copy` VALUES ('139', 'CR', 'L34', 'CR_L34', '1066.46477688000', '105.509', '105.509', '-1.88045', '-1.87121');
INSERT INTO `fbroad_copy` VALUES ('140', 'CR', 'M34', 'CR_M34', '1.59130138572', '105.509', '105.509', '-1.88046', '-1.88045');
INSERT INTO `fbroad_copy` VALUES ('141', 'MR', 'M26', 'MR_M26', '2.50231007253', '105.489', '105.489', '-1.88044', '-1.88044');
INSERT INTO `fbroad_copy` VALUES ('142', 'MR', 'M27', 'MR_M27', '324.91123991300', '105.489', '105.492', '-1.88044', '-1.88044');
INSERT INTO `fbroad_copy` VALUES ('143', 'MR', 'M27', 'MR_M27', '3.00225886291', '105.492', '105.492', '-1.88044', '-1.88044');
INSERT INTO `fbroad_copy` VALUES ('144', 'MR', 'M28', 'MR_M28', '289.93827007400', '105.495', '105.492', '-1.88045', '-1.88044');
INSERT INTO `fbroad_copy` VALUES ('145', 'MR', 'M28', 'MR_M28', '2.86408730627', '105.495', '105.495', '-1.88045', '-1.88045');
INSERT INTO `fbroad_copy` VALUES ('146', 'MR', 'M29', 'MR_M29', '304.95257649300', '105.495', '105.497', '-1.88045', '-1.88043');
INSERT INTO `fbroad_copy` VALUES ('147', 'MR', 'M30', 'MR_M30', '3.00329020349', '105.500', '105.500', '-1.88042', '-1.88042');
INSERT INTO `fbroad_copy` VALUES ('148', 'MR', 'M31', 'MR_M31', '293.29259534600', '105.500', '105.503', '-1.88042', '-1.88043');
INSERT INTO `fbroad_copy` VALUES ('149', 'MR', 'M29', 'MR_M29', '3.00381813738', '105.497', '105.497', '-1.88043', '-1.88043');
INSERT INTO `fbroad_copy` VALUES ('150', 'MR', 'M30', 'MR_M30', '304.67618117400', '105.500', '105.497', '-1.88042', '-1.88043');
INSERT INTO `fbroad_copy` VALUES ('151', 'Buntu', 'L34', 'Buntu_L34', '252.77816140100', '105.512', '105.511', '-1.87400', '-1.87254');
INSERT INTO `fbroad_copy` VALUES ('152', 'Buntu', 'L34', 'Buntu_L34', '358.98606744500', '105.511', '105.510', '-1.87254', '-1.87480');
INSERT INTO `fbroad_copy` VALUES ('153', 'Buntu', 'L34', 'Buntu_L34', '203.81641604300', '105.511', '105.511', '-1.87254', '-1.87439');
INSERT INTO `fbroad_copy` VALUES ('154', 'MR', 'W20', 'MR_V20_W20', '300.92456136200', '105.470', '105.472', '-1.96227', '-1.96224');
INSERT INTO `fbroad_copy` VALUES ('155', 'CR', 'W20', 'CR_W20_W21', '981.73366652100', '105.472', '105.472', '-1.96224', '-1.97112');
INSERT INTO `fbroad_copy` VALUES ('156', 'CR', 'W21', 'CR_W21_W22', '986.38960043500', '105.475', '105.475', '-1.97112', '-1.96220');
INSERT INTO `fbroad_copy` VALUES ('157', 'CR', 'W22', 'CR_W22_W23', '989.21750942900', '105.478', '105.478', '-1.96215', '-1.97110');
INSERT INTO `fbroad_copy` VALUES ('158', 'MR', 'W20', 'MR_V21_W21', '4.27728785206', '105.472', '105.472', '-1.96224', '-1.96224');
INSERT INTO `fbroad_copy` VALUES ('159', 'MR', 'W21', 'MR_V21_W21', '302.27472583900', '105.475', '105.472', '-1.96220', '-1.96224');
INSERT INTO `fbroad_copy` VALUES ('160', 'MR', 'W21', 'MR_V22_W22', '3.49923872470', '105.475', '105.475', '-1.96220', '-1.96220');
INSERT INTO `fbroad_copy` VALUES ('161', 'MR', 'W22', 'MR_V22_W22', '304.09782432400', '105.478', '105.475', '-1.96215', '-1.96220');
INSERT INTO `fbroad_copy` VALUES ('162', 'CR', 'W23', 'CR_W23_W24', '997.35260640400', '105.481', '105.481', '-1.97113', '-1.96211');
INSERT INTO `fbroad_copy` VALUES ('163', 'CR', 'V20', 'CR_V20_V21', '1009.07988749000', '105.472', '105.472', '-1.96220', '-1.95307');
INSERT INTO `fbroad_copy` VALUES ('164', 'CR', 'W20', 'CR_V20_V21', '4.49890203623', '105.472', '105.472', '-1.96224', '-1.96220');
INSERT INTO `fbroad_copy` VALUES ('165', 'MR', 'W22', 'MR_V23_W23', '3.50847653048', '105.478', '105.478', '-1.96215', '-1.96215');
INSERT INTO `fbroad_copy` VALUES ('166', 'MR', 'W23', 'MR_V23_W23', '294.32352977600', '105.478', '105.481', '-1.96215', '-1.96211');
INSERT INTO `fbroad_copy` VALUES ('167', 'CR', 'W24', 'CR_W24_W25', '999.02028929300', '105.483', '105.483', '-1.96207', '-1.97111');
INSERT INTO `fbroad_copy` VALUES ('168', 'CR', 'W25', 'CR_W25_W26', '1007.59601341000', '105.486', '105.486', '-1.96204', '-1.97116');
INSERT INTO `fbroad_copy` VALUES ('169', 'MR', 'W23', 'MR_V24_W24', '3.50242211349', '105.481', '105.481', '-1.96211', '-1.96211');
INSERT INTO `fbroad_copy` VALUES ('170', 'MR', 'W24', 'MR_V24_W24', '307.87621448500', '105.483', '105.481', '-1.96207', '-1.96211');
INSERT INTO `fbroad_copy` VALUES ('171', 'MR', 'W24', 'MR_V25_W25', '3.50521474936', '105.483', '105.483', '-1.96207', '-1.96207');
INSERT INTO `fbroad_copy` VALUES ('172', 'MR', 'W25', 'MR_V25_W25', '290.73861716600', '105.483', '105.486', '-1.96207', '-1.96204');
INSERT INTO `fbroad_copy` VALUES ('173', 'CR', 'V21', 'CR_V21_V22', '1009.35084960000', '105.475', '105.475', '-1.95303', '-1.96216');
INSERT INTO `fbroad_copy` VALUES ('174', 'CR', 'W21', 'CR_V21_V22', '4.49350064079', '105.475', '105.475', '-1.96216', '-1.96220');
INSERT INTO `fbroad_copy` VALUES ('175', 'CR', 'V34', 'CR_V34_V35', '1002.65302135000', '105.511', '105.511', '-1.95298', '-1.96205');
INSERT INTO `fbroad_copy` VALUES ('176', 'CR', 'V33', 'CR_V33_V34', '1002.32739351000', '105.508', '105.508', '-1.96201', '-1.95294');
INSERT INTO `fbroad_copy` VALUES ('177', 'CR', 'V24', 'CR_V24_V25', '1008.37140148000', '105.483', '105.483', '-1.95291', '-1.96203');
INSERT INTO `fbroad_copy` VALUES ('178', 'CR', 'W24', 'CR_V24_V25', '4.50480919059', '105.483', '105.483', '-1.96203', '-1.96207');
INSERT INTO `fbroad_copy` VALUES ('179', 'CR', 'V23', 'CR_V23_V24', '1008.00991384000', '105.481', '105.481', '-1.95295', '-1.96207');
INSERT INTO `fbroad_copy` VALUES ('180', 'CR', 'W23', 'CR_V23_V24', '4.50240255828', '105.481', '105.481', '-1.96207', '-1.96211');
INSERT INTO `fbroad_copy` VALUES ('181', 'CR', 'V22', 'CR_V22_V23', '1009.12597459000', '105.478', '105.478', '-1.95298', '-1.96211');
INSERT INTO `fbroad_copy` VALUES ('182', 'CR', 'W22', 'CR_V22_V23', '4.50570113783', '105.478', '105.478', '-1.96211', '-1.96215');
INSERT INTO `fbroad_copy` VALUES ('183', 'CR', 'V36', 'CR_V36_V37', '1032.96862878000', '105.516', '105.516', '-1.96209', '-1.95300');
INSERT INTO `fbroad_copy` VALUES ('184', 'MR', 'V20', 'MR_U20_V20', '304.50723037200', '105.470', '105.472', '-1.95310', '-1.95307');
INSERT INTO `fbroad_copy` VALUES ('185', 'MR', 'V20', 'MR_U21_V21', '3.50456386619', '105.472', '105.472', '-1.95307', '-1.95307');
INSERT INTO `fbroad_copy` VALUES ('186', 'MR', 'V21', 'MR_U21_V21', '301.62354891600', '105.475', '105.472', '-1.95303', '-1.95307');
INSERT INTO `fbroad_copy` VALUES ('187', 'MR', 'V35', 'MR_U36_V36', '3.49993906746', '105.514', '105.514', '-1.95298', '-1.95298');
INSERT INTO `fbroad_copy` VALUES ('188', 'MR', 'V36', 'MR_U36_V36', '276.54229255200', '105.514', '105.516', '-1.95298', '-1.95300');
INSERT INTO `fbroad_copy` VALUES ('189', 'MR', 'V36', 'MR_U37_V37', '3.49465003241', '105.516', '105.516', '-1.95300', '-1.95300');
INSERT INTO `fbroad_copy` VALUES ('190', 'MR', 'V37', 'MR_U37_V37', '320.19793955800', '105.519', '105.516', '-1.95301', '-1.95300');
INSERT INTO `fbroad_copy` VALUES ('191', 'CR', 'V35', 'CR_V35_V36', '1003.45744434000', '105.514', '105.514', '-1.96206', '-1.95298');
INSERT INTO `fbroad_copy` VALUES ('192', 'MR', 'V34', 'MR_U35_V35', '3.49210515487', '105.511', '105.511', '-1.95298', '-1.95298');
INSERT INTO `fbroad_copy` VALUES ('193', 'MR', 'V35', 'MR_U35_V35', '301.64463365200', '105.511', '105.514', '-1.95298', '-1.95298');
INSERT INTO `fbroad_copy` VALUES ('194', 'CR', 'U23', 'CR_U23_U24', '1063.60757492000', '105.481', '105.481', '-1.95291', '-1.94400');
INSERT INTO `fbroad_copy` VALUES ('195', 'CR', 'V23', 'CR_U23_U24', '4.49360000971', '105.481', '105.481', '-1.95295', '-1.95291');
INSERT INTO `fbroad_copy` VALUES ('196', 'MR', 'V21', 'MR_U22_V22', '3.50340359769', '105.475', '105.475', '-1.95303', '-1.95303');
INSERT INTO `fbroad_copy` VALUES ('197', 'MR', 'V22', 'MR_U22_V22', '302.79098072700', '105.478', '105.475', '-1.95298', '-1.95303');
INSERT INTO `fbroad_copy` VALUES ('198', 'MR', 'V22', 'MR_U23_V23', '3.49770534261', '105.478', '105.478', '-1.95298', '-1.95298');
INSERT INTO `fbroad_copy` VALUES ('199', 'MR', 'V23', 'MR_U23_V23', '296.08981312600', '105.478', '105.481', '-1.95298', '-1.95295');
INSERT INTO `fbroad_copy` VALUES ('200', 'MR', 'V33', 'MR_U34_V34', '3.50681354647', '105.508', '105.508', '-1.95294', '-1.95294');
INSERT INTO `fbroad_copy` VALUES ('201', 'MR', 'V34', 'MR_U34_V34', '301.47343236400', '105.508', '105.511', '-1.95294', '-1.95298');
INSERT INTO `fbroad_copy` VALUES ('202', 'CR', 'V32', 'CR_V32_V33', '1004.45417685000', '105.505', '105.505', '-1.95292', '-1.96201');
INSERT INTO `fbroad_copy` VALUES ('203', 'CR', 'U32', 'CR_U32_U33', '506.16882552300', '105.505', '105.505', '-1.95288', '-1.94830');
INSERT INTO `fbroad_copy` VALUES ('204', 'CR', 'V32', 'CR_U32_U33', '4.50260764933', '105.505', '105.505', '-1.95292', '-1.95288');
INSERT INTO `fbroad_copy` VALUES ('205', 'CR', 'U34', 'CR_U34_U35', '511.15310457500', '105.511', '105.511', '-1.95293', '-1.94831');
INSERT INTO `fbroad_copy` VALUES ('206', 'CR', 'V34', 'CR_U34_U35', '5.21801905071', '105.511', '105.511', '-1.95298', '-1.95293');
INSERT INTO `fbroad_copy` VALUES ('207', 'CR', 'U35', 'CR_U35_U36', '514.18440158800', '105.514', '105.514', '-1.95294', '-1.94829');
INSERT INTO `fbroad_copy` VALUES ('208', 'CR', 'V35', 'CR_U35_U36', '4.51050938147', '105.514', '105.514', '-1.95298', '-1.95294');
INSERT INTO `fbroad_copy` VALUES ('209', 'MR', 'V32', 'MR_U33_V33', '3.49870495571', '105.505', '105.505', '-1.95292', '-1.95292');
INSERT INTO `fbroad_copy` VALUES ('210', 'MR', 'V33', 'MR_U33_V33', '304.55369821200', '105.505', '105.508', '-1.95292', '-1.95294');
INSERT INTO `fbroad_copy` VALUES ('211', 'MR', 'V32', 'MR_U32_V32', '311.84670305000', '105.502', '105.505', '-1.95290', '-1.95292');
INSERT INTO `fbroad_copy` VALUES ('212', 'MR', 'V23', 'MR_U24_V24', '3.50287566764', '105.481', '105.481', '-1.95295', '-1.95295');
INSERT INTO `fbroad_copy` VALUES ('213', 'MR', 'V24', 'MR_U24_V24', '308.87637057900', '105.481', '105.483', '-1.95295', '-1.95291');
INSERT INTO `fbroad_copy` VALUES ('214', 'CR', 'U38', 'CR_U38_U39', '490.92148618100', '105.522', '105.522', '-1.94814', '-1.94370');
INSERT INTO `fbroad_copy` VALUES ('215', 'CR', 'U32', 'CR_U32_V33', '500.27820887600', '105.505', '105.505', '-1.94377', '-1.94830');
INSERT INTO `fbroad_copy` VALUES ('216', 'MR', 'V24', 'MR_U25_V25', '3.50406507508', '105.483', '105.483', '-1.95291', '-1.95291');
INSERT INTO `fbroad_copy` VALUES ('217', 'MR', 'V25', 'MR_U25_V25', '289.35905198600', '105.483', '105.486', '-1.95291', '-1.95288');
INSERT INTO `fbroad_copy` VALUES ('218', 'CR', 'U24', 'CR_U24_U25', '781.38673807500', '105.483', '105.483', '-1.95287', '-1.94580');
INSERT INTO `fbroad_copy` VALUES ('219', 'CR', 'V24', 'CR_U24_U25', '4.50450024956', '105.483', '105.483', '-1.95291', '-1.95287');
INSERT INTO `fbroad_copy` VALUES ('220', 'CR', 'U25', 'CR_U25_U26', '138.02291064500', '105.486', '105.486', '-1.94728', '-1.94853');
INSERT INTO `fbroad_copy` VALUES ('221', 'CR', 'U25', 'CR_U25_V26', '97.79745928650', '105.486', '105.486', '-1.94639', '-1.94728');
INSERT INTO `fbroad_copy` VALUES ('222', 'CR', 'U25', 'CR_U25_U26', '286.87942100200', '105.486', '105.486', '-1.94380', '-1.94639');
INSERT INTO `fbroad_copy` VALUES ('223', 'CR', 'U26', 'CR_U26_U27', '550.93617547400', '105.489', '105.489', '-1.94877', '-1.94379');
INSERT INTO `fbroad_copy` VALUES ('224', 'CR', 'U24', 'CR_U24_U25', '222.52407997800', '105.483', '105.483', '-1.94580', '-1.94379');
INSERT INTO `fbroad_copy` VALUES ('225', 'CR', 'U29', 'CR_U29_U30', '538.25440555300', '105.497', '105.497', '-1.94865', '-1.94378');
INSERT INTO `fbroad_copy` VALUES ('226', 'CR', 'U27', 'CR_U27_U28', '548.51956371800', '105.492', '105.492', '-1.94377', '-1.94873');
INSERT INTO `fbroad_copy` VALUES ('227', 'CR', 'U25', 'CR_U25_U26', '31.76437828670', '105.486', '105.486', '-1.94881', '-1.94853');
INSERT INTO `fbroad_copy` VALUES ('228', 'MR', 'U32', 'MR_U33_V33', '2.92070536917', '105.505', '105.505', '-1.94830', '-1.94830');
INSERT INTO `fbroad_copy` VALUES ('229', 'MR', 'U33', 'MR_U33_V33', '302.02004051800', '105.505', '105.508', '-1.94830', '-1.94831');
INSERT INTO `fbroad_copy` VALUES ('230', 'CR', 'U33', 'CR_U33_U34', '507.06819038100', '105.508', '105.508', '-1.94831', '-1.95290');
INSERT INTO `fbroad_copy` VALUES ('231', 'CR', 'V33', 'CR_U33_U34', '4.50662496328', '105.508', '105.508', '-1.95290', '-1.95294');
INSERT INTO `fbroad_copy` VALUES ('232', 'MR', 'U33', 'MR_U34_V34', '3.28046887494', '105.508', '105.508', '-1.94831', '-1.94831');
INSERT INTO `fbroad_copy` VALUES ('233', 'MR', 'U34', 'MR_U34_V34', '305.26516524000', '105.508', '105.511', '-1.94831', '-1.94831');
INSERT INTO `fbroad_copy` VALUES ('234', 'MR', 'U34', 'MR_U35_V35', '3.06422520394', '105.511', '105.511', '-1.94831', '-1.94831');
INSERT INTO `fbroad_copy` VALUES ('235', 'MR', 'U35', 'MR_U35_V35', '298.59832246500', '105.511', '105.514', '-1.94831', '-1.94829');
INSERT INTO `fbroad_copy` VALUES ('236', 'CR', 'U39', 'CR_U39_U40', '388.65508055500', '105.524', '105.524', '-1.94368', '-1.94720');
INSERT INTO `fbroad_copy` VALUES ('237', 'CR', 'U40', 'CR_U39_U40', '3.52965147589', '105.524', '105.524', '-1.94720', '-1.94723');
INSERT INTO `fbroad_copy` VALUES ('238', 'CR', 'U36', 'CR_U36_U37', '1020.07167197000', '105.516', '105.516', '-1.95296', '-1.94373');
INSERT INTO `fbroad_copy` VALUES ('239', 'CR', 'V36', 'CR_U36_U37', '4.49332191553', '105.516', '105.516', '-1.95300', '-1.95296');
INSERT INTO `fbroad_copy` VALUES ('240', 'CR', 'U28', 'CR_U28_U29', '543.68583414400', '105.494', '105.494', '-1.94377', '-1.94869');
INSERT INTO `fbroad_copy` VALUES ('241', 'CR', 'U22', 'CR_U22_U23', '1013.18557088000', '105.478', '105.478', '-1.94377', '-1.95294');
INSERT INTO `fbroad_copy` VALUES ('242', 'CR', 'V22', 'CR_U22_U23', '4.51120028334', '105.478', '105.478', '-1.95294', '-1.95298');
INSERT INTO `fbroad_copy` VALUES ('243', 'CR', 'U23', 'CR_U23_U24', '21.43707242690', '105.481', '105.481', '-1.94380', '-1.94400');
INSERT INTO `fbroad_copy` VALUES ('244', 'CR', 'U20', 'CR_U20_U21', '1021.29272381000', '105.472', '105.472', '-1.94379', '-1.95303');
INSERT INTO `fbroad_copy` VALUES ('245', 'CR', 'V20', 'CR_U20_U21', '4.49490087145', '105.472', '105.472', '-1.95303', '-1.95307');
INSERT INTO `fbroad_copy` VALUES ('246', 'CR', 'U21', 'CR_U21_U22', '1017.07606431000', '105.475', '105.475', '-1.95299', '-1.94379');
INSERT INTO `fbroad_copy` VALUES ('247', 'CR', 'V21', 'CR_U21_U22', '4.49610121209', '105.475', '105.475', '-1.95303', '-1.95299');
INSERT INTO `fbroad_copy` VALUES ('248', 'MR', 'U25', 'MR_T26_U26', '3.05006989041', '105.486', '105.486', '-1.94380', '-1.94380');
INSERT INTO `fbroad_copy` VALUES ('249', 'MR', 'U26', 'MR_T26_U26', '305.77038995000', '105.489', '105.486', '-1.94379', '-1.94380');
INSERT INTO `fbroad_copy` VALUES ('250', 'MR', 'U24', 'MR_T25_U25', '3.50008574895', '105.483', '105.483', '-1.94379', '-1.94379');
INSERT INTO `fbroad_copy` VALUES ('251', 'MR', 'U25', 'MR_T25_U25', '290.25591317300', '105.486', '105.483', '-1.94380', '-1.94379');
INSERT INTO `fbroad_copy` VALUES ('252', 'CR', 'U37', 'CR_U37_U38', '1021.87452149000', '105.519', '105.519', '-1.95297', '-1.94373');
INSERT INTO `fbroad_copy` VALUES ('253', 'CR', 'U38', 'CR_U37_U38', '0.90654908368', '105.519', '105.519', '-1.94373', '-1.94372');
INSERT INTO `fbroad_copy` VALUES ('254', 'CR', 'V37', 'CR_U37_U38', '4.46456028028', '105.519', '105.519', '-1.95301', '-1.95297');
INSERT INTO `fbroad_copy` VALUES ('255', 'MR', 'U23', 'MR_T23_U23', '29.88025899650', '105.480', '105.481', '-1.94383', '-1.94380');
INSERT INTO `fbroad_copy` VALUES ('256', 'MR', 'U20', 'MR_T21_U21', '3.50000057143', '105.472', '105.472', '-1.94379', '-1.94379');
INSERT INTO `fbroad_copy` VALUES ('257', 'MR', 'U21', 'MR_T21_U21', '301.38315893300', '105.472', '105.475', '-1.94379', '-1.94379');
INSERT INTO `fbroad_copy` VALUES ('258', 'CR', 'U30', 'CR_U30_U31', '533.20210682700', '105.500', '105.500', '-1.94859', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('259', 'CR', 'U31', 'CR_U31_U32', '538.09491634300', '105.503', '105.502', '-1.94377', '-1.94864');
INSERT INTO `fbroad_copy` VALUES ('260', 'MR', 'T23', 'MR_T23_U23', '2.11692282643', '105.480', '105.480', '-1.94375', '-1.94374');
INSERT INTO `fbroad_copy` VALUES ('261', 'MR', 'U22', 'MR_T23_U23', '3.50007622918', '105.478', '105.478', '-1.94377', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('262', 'MR', 'U23', 'MR_T23_U23', '230.04076213100', '105.478', '105.480', '-1.94377', '-1.94375');
INSERT INTO `fbroad_copy` VALUES ('263', 'MR', 'U30', 'MR_T31_U31', '3.50001605139', '105.500', '105.500', '-1.94377', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('264', 'MR', 'U31', 'MR_T31_U31', '278.80520195300', '105.500', '105.503', '-1.94377', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('265', 'MR', 'U26', 'MR_T27_U27', '3.95013701283', '105.489', '105.489', '-1.94379', '-1.94379');
INSERT INTO `fbroad_copy` VALUES ('266', 'MR', 'U27', 'MR_T27_U27', '319.93937156400', '105.489', '105.492', '-1.94379', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('267', 'CR', 'T23', 'CR_T23_T24', '1009.64830839000', '105.481', '105.481', '-1.94375', '-1.93464');
INSERT INTO `fbroad_copy` VALUES ('268', 'CR', 'U23', 'CR_T23_T24', '5.51642969419', '105.481', '105.481', '-1.94380', '-1.94375');
INSERT INTO `fbroad_copy` VALUES ('269', 'MR', 'U21', 'MR_T22_U22', '3.87433556172', '105.475', '105.475', '-1.94379', '-1.94379');
INSERT INTO `fbroad_copy` VALUES ('270', 'MR', 'U22', 'MR_T22_U22', '303.65138110600', '105.475', '105.478', '-1.94379', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('271', 'MR', 'U28', 'MR_T29_U29', '3.98633753964', '105.494', '105.494', '-1.94377', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('272', 'MR', 'U29', 'MR_T29_U29', '300.32158751000', '105.494', '105.497', '-1.94377', '-1.94378');
INSERT INTO `fbroad_copy` VALUES ('273', 'MR', 'U31', 'MR_T32_U32', '3.50000041286', '105.503', '105.503', '-1.94377', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('274', 'MR', 'U32', 'MR_T32_U32', '302.90983591400', '105.503', '105.505', '-1.94377', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('275', 'MR', 'U29', 'MR_T30_U30', '3.50012642276', '105.497', '105.497', '-1.94378', '-1.94378');
INSERT INTO `fbroad_copy` VALUES ('276', 'MR', 'U30', 'MR_T30_U30', '312.39193459100', '105.497', '105.500', '-1.94378', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('277', 'MR', 'U36', 'MR_T36_U36', '284.02254663100', '105.514', '105.516', '-1.94374', '-1.94373');
INSERT INTO `fbroad_copy` VALUES ('278', 'CR', 'T34', 'CR_T34_T35', '523.18879325400', '105.511', '105.511', '-1.93919', '-1.93474');
INSERT INTO `fbroad_copy` VALUES ('279', 'MR', 'U23', 'MR_T24_U24', '3.50369815128', '105.481', '105.481', '-1.94380', '-1.94380');
INSERT INTO `fbroad_copy` VALUES ('280', 'MR', 'U24', 'MR_T24_U24', '308.08440868000', '105.481', '105.483', '-1.94380', '-1.94379');
INSERT INTO `fbroad_copy` VALUES ('281', 'CR', 'T25', 'CR_T25_T26', '1004.78598894000', '105.486', '105.486', '-1.94376', '-1.93467');
INSERT INTO `fbroad_copy` VALUES ('282', 'CR', 'U25', 'CR_T25_T26', '3.93210875980', '105.486', '105.486', '-1.94380', '-1.94376');
INSERT INTO `fbroad_copy` VALUES ('283', 'MR', 'U37', 'MR_T38_U37', '168.54792058500', '105.518', '105.519', '-1.94370', '-1.94372');
INSERT INTO `fbroad_copy` VALUES ('284', 'MR', 'U38', 'MR_T38_U37', '0.15031466981', '105.519', '105.519', '-1.94372', '-1.94372');
INSERT INTO `fbroad_copy` VALUES ('285', 'MR', 'U38', 'MR_T38_U38', '292.31148956400', '105.519', '105.522', '-1.94372', '-1.94370');
INSERT INTO `fbroad_copy` VALUES ('286', 'CR', 'T33', 'CR_T33_T34', '124.31751696000', '105.508', '105.508', '-1.93478', '-1.93590');
INSERT INTO `fbroad_copy` VALUES ('287', 'MR', 'U27', 'MR_T28_U28', '3.50000155571', '105.492', '105.492', '-1.94377', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('288', 'MR', 'U28', 'MR_T28_U28', '284.89312229400', '105.492', '105.494', '-1.94377', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('289', 'CR', 'T29', 'CR_T29_T30', '998.37100421600', '105.497', '105.497', '-1.94374', '-1.93471');
INSERT INTO `fbroad_copy` VALUES ('290', 'CR', 'U29', 'CR_T29_T30', '4.48453041063', '105.497', '105.497', '-1.94378', '-1.94374');
INSERT INTO `fbroad_copy` VALUES ('291', 'CR', 'T22', 'CR_T22_T23', '77.52252242290', '105.478', '105.478', '-1.94373', '-1.94303');
INSERT INTO `fbroad_copy` VALUES ('292', 'CR', 'U22', 'CR_T22_T23', '4.52031242741', '105.478', '105.478', '-1.94377', '-1.94373');
INSERT INTO `fbroad_copy` VALUES ('293', 'CR', 'T24', 'CR_T24_T25', '1003.65993852000', '105.483', '105.483', '-1.93466', '-1.94374');
INSERT INTO `fbroad_copy` VALUES ('294', 'CR', 'U24', 'CR_T24_T25', '4.51640799870', '105.483', '105.483', '-1.94374', '-1.94379');
INSERT INTO `fbroad_copy` VALUES ('295', 'CR', 'U40', 'CR_U40_U41', '495.40670798300', '105.527', '105.527', '-1.94814', '-1.94366');
INSERT INTO `fbroad_copy` VALUES ('296', 'CR', 'T37', 'CR_T37_T38', '529.73348710100', '105.518', '105.519', '-1.94369', '-1.93998');
INSERT INTO `fbroad_copy` VALUES ('297', 'CR', 'U37', 'CR_T37_T38', '0.90453313901', '105.518', '105.518', '-1.94370', '-1.94369');
INSERT INTO `fbroad_copy` VALUES ('298', 'CR', 'T36', 'CR_T36_T37', '985.69782806400', '105.516', '105.516', '-1.93477', '-1.94369');
INSERT INTO `fbroad_copy` VALUES ('299', 'CR', 'U36', 'CR_T36_T37', '4.54722120100', '105.516', '105.516', '-1.94369', '-1.94373');
INSERT INTO `fbroad_copy` VALUES ('300', 'MR', 'U36', 'MR_T37_U37', '3.50010111980', '105.516', '105.516', '-1.94373', '-1.94373');
INSERT INTO `fbroad_copy` VALUES ('301', 'MR', 'U37', 'MR_T37_U37', '153.28947204100', '105.516', '105.518', '-1.94373', '-1.94370');
INSERT INTO `fbroad_copy` VALUES ('302', 'CR', 'U41', 'CR_U41_U42', '500.17779724100', '105.530', '105.530', '-1.94816', '-1.94363');
INSERT INTO `fbroad_copy` VALUES ('303', 'MR', 'U38', 'MR_T39_U39', '3.50022096713', '105.522', '105.522', '-1.94370', '-1.94370');
INSERT INTO `fbroad_copy` VALUES ('304', 'MR', 'U39', 'MR_T39_U39', '305.85070610800', '105.522', '105.524', '-1.94370', '-1.94368');
INSERT INTO `fbroad_copy` VALUES ('305', 'MR', 'U39', 'MR_T40_U40', '3.50844051526', '105.524', '105.524', '-1.94368', '-1.94368');
INSERT INTO `fbroad_copy` VALUES ('306', 'MR', 'U40', 'MR_T40_U40', '295.07030274100', '105.524', '105.527', '-1.94368', '-1.94366');
INSERT INTO `fbroad_copy` VALUES ('307', 'MR', 'U41', 'MR_T42_U42', '3.48776670292', '105.530', '105.530', '-1.94363', '-1.94363');
INSERT INTO `fbroad_copy` VALUES ('308', 'MR', 'U42', 'MR_T42_U42', '376.93662869700', '105.533', '105.530', '-1.94360', '-1.94363');
INSERT INTO `fbroad_copy` VALUES ('309', 'MR', 'U40', 'MR_T41_U41', '3.49672698409', '105.527', '105.527', '-1.94366', '-1.94366');
INSERT INTO `fbroad_copy` VALUES ('310', 'MR', 'U41', 'MR_T41_U41', '300.32460594800', '105.527', '105.530', '-1.94366', '-1.94363');
INSERT INTO `fbroad_copy` VALUES ('311', 'CR', 'T27', 'CR_T27_T28', '999.76175188500', '105.492', '105.492', '-1.93468', '-1.94372');
INSERT INTO `fbroad_copy` VALUES ('312', 'CR', 'U27', 'CR_T27_T28', '4.63213536199', '105.492', '105.492', '-1.94372', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('313', 'CR', 'T32', 'CR_T32_T33', '498.32943466600', '105.505', '105.505', '-1.93923', '-1.93472');
INSERT INTO `fbroad_copy` VALUES ('314', 'CR', 'T31', 'CR_T31_T32', '998.98389597600', '105.503', '105.503', '-1.94373', '-1.93470');
INSERT INTO `fbroad_copy` VALUES ('315', 'CR', 'U31', 'CR_T31_T32', '4.49536513734', '105.503', '105.503', '-1.94377', '-1.94373');
INSERT INTO `fbroad_copy` VALUES ('316', 'CR', 'T21', 'CR_T21_T22', '194.50538366200', '105.475', '105.475', '-1.94375', '-1.94199');
INSERT INTO `fbroad_copy` VALUES ('317', 'CR', 'U21', 'CR_T21_T22', '4.49290560898', '105.475', '105.475', '-1.94379', '-1.94375');
INSERT INTO `fbroad_copy` VALUES ('318', 'CR', 'T21', 'CR_T21_T22', '810.67141810900', '105.475', '105.475', '-1.94199', '-1.93465');
INSERT INTO `fbroad_copy` VALUES ('319', 'CR', 'T40', 'CR_T40_T41', '970.05611337300', '105.527', '105.527', '-1.93484', '-1.94361');
INSERT INTO `fbroad_copy` VALUES ('320', 'CR', 'U40', 'CR_T40_T41', '4.50123519475', '105.527', '105.527', '-1.94361', '-1.94366');
INSERT INTO `fbroad_copy` VALUES ('321', 'CR', 'T41', 'CR_T41_T42', '964.19859692800', '105.530', '105.530', '-1.94359', '-1.93487');
INSERT INTO `fbroad_copy` VALUES ('322', 'CR', 'U41', 'CR_T41_T42', '4.49849513830', '105.530', '105.530', '-1.94363', '-1.94359');
INSERT INTO `fbroad_copy` VALUES ('323', 'CR', 'T38', 'CR_T38_T39', '977.77553156500', '105.522', '105.522', '-1.94365', '-1.93481');
INSERT INTO `fbroad_copy` VALUES ('324', 'CR', 'U38', 'CR_T38_T39', '5.11210330952', '105.522', '105.522', '-1.94370', '-1.94365');
INSERT INTO `fbroad_copy` VALUES ('325', 'CR', 'T39', 'CR_T39_T40', '974.70342641200', '105.524', '105.524', '-1.94364', '-1.93482');
INSERT INTO `fbroad_copy` VALUES ('326', 'CR', 'U39', 'CR_T39_T40', '4.49184769755', '105.524', '105.524', '-1.94368', '-1.94364');
INSERT INTO `fbroad_copy` VALUES ('327', 'CR', 'T35', 'CR_T35_T36', '488.07171408700', '105.514', '105.513', '-1.94367', '-1.93925');
INSERT INTO `fbroad_copy` VALUES ('328', 'CR', 'T37', 'CR_T37_T38', '575.52530012200', '105.519', '105.519', '-1.93998', '-1.93478');
INSERT INTO `fbroad_copy` VALUES ('329', 'CR', 'T32', 'CR_T32_T33', '497.64523022100', '105.505', '105.505', '-1.94373', '-1.93923');
INSERT INTO `fbroad_copy` VALUES ('330', 'CR', 'U32', 'CR_T32_T33', '4.50597329038', '105.505', '105.505', '-1.94377', '-1.94373');
INSERT INTO `fbroad_copy` VALUES ('331', 'CR', 'T33', 'CR_T33_T34', '129.17539009300', '105.508', '105.508', '-1.93801', '-1.93917');
INSERT INTO `fbroad_copy` VALUES ('332', 'CR', 'T35', 'CR_T35_T36', '496.86873609700', '105.513', '105.513', '-1.93476', '-1.93925');
INSERT INTO `fbroad_copy` VALUES ('333', 'MR', 'T41', 'MR_S42_T42', '3.50094835235', '105.530', '105.530', '-1.93487', '-1.93487');
INSERT INTO `fbroad_copy` VALUES ('334', 'MR', 'T42', 'MR_S42_T42', '357.42771957900', '105.533', '105.530', '-1.93488', '-1.93487');
INSERT INTO `fbroad_copy` VALUES ('335', 'MR', 'T40', 'MR_S41_T41', '3.50111927976', '105.527', '105.527', '-1.93484', '-1.93484');
INSERT INTO `fbroad_copy` VALUES ('336', 'MR', 'T41', 'MR_S41_T41', '305.54288339700', '105.527', '105.530', '-1.93484', '-1.93487');
INSERT INTO `fbroad_copy` VALUES ('337', 'MR', 'T39', 'MR_S40_T40', '3.49522763992', '105.524', '105.525', '-1.93482', '-1.93482');
INSERT INTO `fbroad_copy` VALUES ('338', 'MR', 'T40', 'MR_S40_T40', '294.61515869900', '105.525', '105.527', '-1.93482', '-1.93484');
INSERT INTO `fbroad_copy` VALUES ('339', 'MR', 'T38', 'MR_S39_T39', '3.50435650313', '105.522', '105.522', '-1.93481', '-1.93481');
INSERT INTO `fbroad_copy` VALUES ('340', 'MR', 'T39', 'MR_S39_T39', '303.62377985600', '105.522', '105.524', '-1.93481', '-1.93482');
INSERT INTO `fbroad_copy` VALUES ('341', 'MR', 'T37', 'MR_S38_T38', '3.50880235446', '105.519', '105.519', '-1.93478', '-1.93478');
INSERT INTO `fbroad_copy` VALUES ('342', 'MR', 'T38', 'MR_S38_T38', '295.09460503300', '105.519', '105.522', '-1.93478', '-1.93481');
INSERT INTO `fbroad_copy` VALUES ('343', 'CR', 'S40', 'CR_S40_S41', '990.34407339200', '105.527', '105.527', '-1.92583', '-1.93479');
INSERT INTO `fbroad_copy` VALUES ('344', 'CR', 'T40', 'CR_S40_S41', '5.26733178985', '105.527', '105.527', '-1.93479', '-1.93484');
INSERT INTO `fbroad_copy` VALUES ('345', 'CR', 'S41', 'CR_S41_S42', '989.79102181100', '105.530', '105.530', '-1.93483', '-1.92587');
INSERT INTO `fbroad_copy` VALUES ('346', 'CR', 'T41', 'CR_S41_S42', '4.48558374223', '105.530', '105.530', '-1.93487', '-1.93483');
INSERT INTO `fbroad_copy` VALUES ('347', 'MR', 'T36', 'MR_S37_T37', '3.50190082291', '105.516', '105.516', '-1.93477', '-1.93477');
INSERT INTO `fbroad_copy` VALUES ('348', 'MR', 'T37', 'MR_S37_T37', '314.72746465100', '105.516', '105.519', '-1.93477', '-1.93478');
INSERT INTO `fbroad_copy` VALUES ('349', 'MR', 'T35', 'MR_S36_T36', '3.46444025055', '105.513', '105.513', '-1.93476', '-1.93476');
INSERT INTO `fbroad_copy` VALUES ('350', 'MR', 'T36', 'MR_S36_T36', '301.03140131300', '105.516', '105.513', '-1.93477', '-1.93476');
INSERT INTO `fbroad_copy` VALUES ('351', 'MR', 'T34', 'MR_S35_T35', '3.47534157894', '105.511', '105.511', '-1.93474', '-1.93474');
INSERT INTO `fbroad_copy` VALUES ('352', 'MR', 'T35', 'MR_S35_T35', '291.66931584500', '105.511', '105.513', '-1.93474', '-1.93476');
INSERT INTO `fbroad_copy` VALUES ('353', 'CR', 'S39', 'CR_S39_S40', '991.83569703000', '105.525', '105.524', '-1.92581', '-1.93478');
INSERT INTO `fbroad_copy` VALUES ('354', 'CR', 'T39', 'CR_S39_S40', '4.49709544991', '105.524', '105.524', '-1.93478', '-1.93482');
INSERT INTO `fbroad_copy` VALUES ('355', 'MR', 'T33', 'MR_S34_T34', '2.74775173757', '105.508', '105.508', '-1.93478', '-1.93478');
INSERT INTO `fbroad_copy` VALUES ('356', 'MR', 'T34', 'MR_S34_T34', '259.16299526300', '105.508', '105.511', '-1.93478', '-1.93474');
INSERT INTO `fbroad_copy` VALUES ('357', 'MR', 'T32', 'MR_S33_T33', '3.54943561279', '105.505', '105.505', '-1.93472', '-1.93472');
INSERT INTO `fbroad_copy` VALUES ('358', 'MR', 'T33', 'MR_S33_T33', '257.41209346900', '105.505', '105.508', '-1.93472', '-1.93473');
INSERT INTO `fbroad_copy` VALUES ('359', 'MR', 'T31', 'MR_S32_T32', '3.49479279039', '105.503', '105.503', '-1.93470', '-1.93470');
INSERT INTO `fbroad_copy` VALUES ('360', 'MR', 'T32', 'MR_S32_T32', '304.82001979500', '105.505', '105.503', '-1.93472', '-1.93470');
INSERT INTO `fbroad_copy` VALUES ('361', 'MR', 'T28', 'MR_S29_T29', '3.99637327187', '105.494', '105.494', '-1.93469', '-1.93469');
INSERT INTO `fbroad_copy` VALUES ('362', 'MR', 'T29', 'MR_S29_T29', '304.25870364800', '105.497', '105.494', '-1.93471', '-1.93469');
INSERT INTO `fbroad_copy` VALUES ('363', 'CR', 'T28', 'CR_T28_T29', '999.46205003600', '105.494', '105.494', '-1.93469', '-1.94373');
INSERT INTO `fbroad_copy` VALUES ('364', 'CR', 'U28', 'CR_T28_T29', '4.50493095309', '105.494', '105.494', '-1.94373', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('365', 'MR', 'T29', 'MR_S30_T30', '3.95503484857', '105.497', '105.497', '-1.93471', '-1.93471');
INSERT INTO `fbroad_copy` VALUES ('366', 'MR', 'T30', 'MR_S30_T30', '304.81549527900', '105.497', '105.500', '-1.93471', '-1.93469');
INSERT INTO `fbroad_copy` VALUES ('367', 'MR', 'T33', 'MR_S34_T33', '84.23602158440', '105.508', '105.508', '-1.93478', '-1.93473');
INSERT INTO `fbroad_copy` VALUES ('368', 'CR', 'T30', 'CR_T30_T31', '999.10182459700', '105.500', '105.500', '-1.93469', '-1.94373');
INSERT INTO `fbroad_copy` VALUES ('369', 'CR', 'U30', 'CR_T30_T31', '4.51380128129', '105.500', '105.500', '-1.94373', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('370', 'CR', 'S38', 'CR_S38_S39', '992.92039404400', '105.522', '105.522', '-1.92578', '-1.93477');
INSERT INTO `fbroad_copy` VALUES ('371', 'CR', 'T38', 'CR_S38_S39', '4.49675284290', '105.522', '105.522', '-1.93477', '-1.93481');
INSERT INTO `fbroad_copy` VALUES ('372', 'CR', 'S36', 'CR_S36_S37', '994.97781742200', '105.516', '105.516', '-1.93473', '-1.92573');
INSERT INTO `fbroad_copy` VALUES ('373', 'CR', 'T36', 'CR_S36_S37', '5.11540515767', '105.516', '105.516', '-1.93477', '-1.93473');
INSERT INTO `fbroad_copy` VALUES ('374', 'MR', 'T30', 'MR_S31_T31', '3.99614855841', '105.500', '105.500', '-1.93469', '-1.93469');
INSERT INTO `fbroad_copy` VALUES ('375', 'MR', 'T31', 'MR_S31_T31', '283.49304213100', '105.500', '105.503', '-1.93469', '-1.93470');
INSERT INTO `fbroad_copy` VALUES ('376', 'MR', 'T26', 'MR_S27_T27', '3.50425096878', '105.489', '105.489', '-1.93466', '-1.93466');
INSERT INTO `fbroad_copy` VALUES ('377', 'MR', 'T27', 'MR_S27_T27', '319.87459628100', '105.489', '105.492', '-1.93466', '-1.93468');
INSERT INTO `fbroad_copy` VALUES ('378', 'MR', 'T27', 'MR_S28_T28', '3.50321455967', '105.492', '105.492', '-1.93468', '-1.93468');
INSERT INTO `fbroad_copy` VALUES ('379', 'MR', 'T28', 'MR_S28_T28', '284.52679694400', '105.492', '105.494', '-1.93468', '-1.93469');
INSERT INTO `fbroad_copy` VALUES ('380', 'CR', 'T26', 'CR_T26_T27', '1004.37689680000', '105.489', '105.489', '-1.94375', '-1.93466');
INSERT INTO `fbroad_copy` VALUES ('381', 'CR', 'U26', 'CR_T26_T27', '3.94277068592', '105.489', '105.489', '-1.94379', '-1.94375');
INSERT INTO `fbroad_copy` VALUES ('382', 'MR', 'T24', 'MR_S25_T25', '3.50271920806', '105.483', '105.484', '-1.93466', '-1.93466');
INSERT INTO `fbroad_copy` VALUES ('383', 'MR', 'T25', 'MR_S25_T25', '292.04876529700', '105.484', '105.486', '-1.93466', '-1.93467');
INSERT INTO `fbroad_copy` VALUES ('384', 'CR', 'S33', 'CR_S33_S34', '1005.03972878000', '105.508', '105.508', '-1.92566', '-1.93469');
INSERT INTO `fbroad_copy` VALUES ('385', 'CR', 'T33', 'CR_S33_S34', '3.75085041792', '105.508', '105.508', '-1.93469', '-1.93473');
INSERT INTO `fbroad_copy` VALUES ('386', 'MR', 'T25', 'MR_S26_T26', '3.49790847492', '105.486', '105.486', '-1.93467', '-1.93467');
INSERT INTO `fbroad_copy` VALUES ('387', 'MR', 'T26', 'MR_S26_T26', '305.88664762500', '105.486', '105.489', '-1.93467', '-1.93466');
INSERT INTO `fbroad_copy` VALUES ('388', 'MR', 'T23', 'MR_S24_T24', '4.01405523590', '105.481', '105.481', '-1.93464', '-1.93464');
INSERT INTO `fbroad_copy` VALUES ('389', 'MR', 'T24', 'MR_S24_T24', '305.78258877400', '105.483', '105.481', '-1.93466', '-1.93464');
INSERT INTO `fbroad_copy` VALUES ('390', 'CR', 'T22', 'CR_T22_T23', '927.36855277100', '105.478', '105.478', '-1.93464', '-1.94303');
INSERT INTO `fbroad_copy` VALUES ('391', 'MR', 'T22', 'MR_S23_T23', '7.85500770254', '105.478', '105.478', '-1.93464', '-1.93464');
INSERT INTO `fbroad_copy` VALUES ('392', 'MR', 'T23', 'MR_S23_T23', '297.94170810800', '105.481', '105.478', '-1.93464', '-1.93464');
INSERT INTO `fbroad_copy` VALUES ('393', 'CR', 'S34', 'CR_S34_S35', '996.99878443100', '105.511', '105.511', '-1.92568', '-1.93470');
INSERT INTO `fbroad_copy` VALUES ('394', 'CR', 'T34', 'CR_S34_S35', '4.50267164365', '105.511', '105.511', '-1.93470', '-1.93474');
INSERT INTO `fbroad_copy` VALUES ('395', 'MR', 'T21', 'MR_S22_T22', '3.81135840632', '105.475', '105.475', '-1.93465', '-1.93465');
INSERT INTO `fbroad_copy` VALUES ('396', 'MR', 'T22', 'MR_S22_T22', '322.91913231000', '105.475', '105.478', '-1.93465', '-1.93464');
INSERT INTO `fbroad_copy` VALUES ('397', 'MR', 'T21', 'MR_S21_T21', '302.02677071500', '105.472', '105.475', '-1.93465', '-1.93465');
INSERT INTO `fbroad_copy` VALUES ('398', 'CR', 'S21', 'CR_S21_S22', '1067.50983011000', '105.475', '105.475', '-1.93461', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('399', 'CR', 'T21', 'CR_S21_S22', '4.49683164716', '105.475', '105.475', '-1.93465', '-1.93461');
INSERT INTO `fbroad_copy` VALUES ('400', 'CR', 'S31', 'CR_S31_S32', '1000.13058832000', '105.503', '105.503', '-1.92561', '-1.93466');
INSERT INTO `fbroad_copy` VALUES ('401', 'CR', 'T31', 'CR_S31_S32', '4.00662619807', '105.503', '105.503', '-1.93466', '-1.93470');
INSERT INTO `fbroad_copy` VALUES ('402', 'CR', 'S30', 'CR_S30_S31', '998.76903740300', '105.500', '105.500', '-1.92561', '-1.93465');
INSERT INTO `fbroad_copy` VALUES ('403', 'CR', 'T30', 'CR_S30_S31', '4.51802082893', '105.500', '105.500', '-1.93465', '-1.93469');
INSERT INTO `fbroad_copy` VALUES ('404', 'CR', 'S32', 'CR_S32_S33', '998.98664135200', '105.505', '105.505', '-1.93468', '-1.92565');
INSERT INTO `fbroad_copy` VALUES ('405', 'CR', 'T32', 'CR_S32_S33', '4.49216074509', '105.505', '105.505', '-1.93472', '-1.93468');
INSERT INTO `fbroad_copy` VALUES ('406', 'CR', 'S22', 'CR_S22_S23', '1058.58250814000', '105.478', '105.478', '-1.93460', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('407', 'CR', 'T22', 'CR_S22_S23', '4.61580354904', '105.478', '105.478', '-1.93464', '-1.93460');
INSERT INTO `fbroad_copy` VALUES ('408', 'CR', 'S25', 'CR_S25_S26', '1028.59124335000', '105.486', '105.486', '-1.93463', '-1.92556');
INSERT INTO `fbroad_copy` VALUES ('409', 'CR', 'T25', 'CR_S25_S26', '4.48975840181', '105.486', '105.486', '-1.93467', '-1.93463');
INSERT INTO `fbroad_copy` VALUES ('410', 'CR', 'S24', 'CR_S24_S25', '930.40794711800', '105.483', '105.483', '-1.93462', '-1.92621');
INSERT INTO `fbroad_copy` VALUES ('411', 'CR', 'T24', 'CR_S24_S25', '4.49790128489', '105.483', '105.483', '-1.93466', '-1.93462');
INSERT INTO `fbroad_copy` VALUES ('412', 'CR', 'S23', 'CR_S23_S24', '1003.19584670000', '105.481', '105.481', '-1.93461', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('413', 'CR', 'T23', 'CR_S23_S24', '3.29840601815', '105.481', '105.481', '-1.93464', '-1.93461');
INSERT INTO `fbroad_copy` VALUES ('414', 'CR', 'S27', 'CR_S27_S28', '1001.61023779000', '105.492', '105.492', '-1.93464', '-1.92558');
INSERT INTO `fbroad_copy` VALUES ('415', 'CR', 'T27', 'CR_S27_S28', '4.49551273402', '105.492', '105.492', '-1.93468', '-1.93464');
INSERT INTO `fbroad_copy` VALUES ('416', 'CR', 'S24', 'CR_R25_S24', '74.41230828630', '105.483', '105.483', '-1.92554', '-1.92621');
INSERT INTO `fbroad_copy` VALUES ('417', 'MR', 'S40', 'MR_R41_S41', '3.49348983720', '105.527', '105.527', '-1.92583', '-1.92583');
INSERT INTO `fbroad_copy` VALUES ('418', 'MR', 'S41', 'MR_R41_S41', '311.07297693100', '105.527', '105.530', '-1.92583', '-1.92587');
INSERT INTO `fbroad_copy` VALUES ('419', 'MR', 'S39', 'MR_R40_S40', '3.49904179170', '105.525', '105.525', '-1.92581', '-1.92581');
INSERT INTO `fbroad_copy` VALUES ('420', 'MR', 'S40', 'MR_R40_S40', '291.52955170700', '105.525', '105.527', '-1.92581', '-1.92583');
INSERT INTO `fbroad_copy` VALUES ('421', 'CR', 'S37', 'CR_S37_S38', '994.11589824200', '105.519', '105.519', '-1.92575', '-1.93475');
INSERT INTO `fbroad_copy` VALUES ('422', 'CR', 'T37', 'CR_S37_S38', '3.30053363437', '105.519', '105.519', '-1.93475', '-1.93478');
INSERT INTO `fbroad_copy` VALUES ('423', 'CR', 'R31', 'CR_R31_R32', '1021.41641996000', '105.503', '105.503', '-1.92557', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('424', 'CR', 'S31', 'CR_R31_R32', '4.52156158863', '105.503', '105.503', '-1.92561', '-1.92557');
INSERT INTO `fbroad_copy` VALUES ('425', 'MR', 'S38', 'MR_R39_S39', '3.49595860019', '105.522', '105.522', '-1.92578', '-1.92578');
INSERT INTO `fbroad_copy` VALUES ('426', 'MR', 'S39', 'MR_R39_S39', '305.42695819500', '105.525', '105.522', '-1.92581', '-1.92578');
INSERT INTO `fbroad_copy` VALUES ('427', 'MR', 'S37', 'MR_R38_S38', '3.50093195944', '105.519', '105.519', '-1.92575', '-1.92575');
INSERT INTO `fbroad_copy` VALUES ('428', 'MR', 'S38', 'MR_R38_S38', '295.45090887700', '105.519', '105.522', '-1.92575', '-1.92578');
INSERT INTO `fbroad_copy` VALUES ('429', 'CR', 'S35', 'CR_S35_S36', '995.29934521900', '105.513', '105.513', '-1.93471', '-1.92571');
INSERT INTO `fbroad_copy` VALUES ('430', 'CR', 'T35', 'CR_S35_S36', '4.49978711472', '105.513', '105.513', '-1.93476', '-1.93471');
INSERT INTO `fbroad_copy` VALUES ('431', 'CR', 'R28', 'CR_R28_R29', '1013.90771706000', '105.494', '105.494', '-1.91637', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('432', 'CR', 'S28', 'CR_R28_R29', '3.30821224214', '105.494', '105.494', '-1.92554', '-1.92557');
INSERT INTO `fbroad_copy` VALUES ('433', 'MR', 'S36', 'MR_R37_S37', '3.49837209647', '105.516', '105.516', '-1.92573', '-1.92573');
INSERT INTO `fbroad_copy` VALUES ('434', 'MR', 'S37', 'MR_R37_S37', '312.74080080300', '105.516', '105.519', '-1.92573', '-1.92575');
INSERT INTO `fbroad_copy` VALUES ('435', 'MR', 'S35', 'MR_R36_S36', '3.49956360985', '105.513', '105.514', '-1.92571', '-1.92571');
INSERT INTO `fbroad_copy` VALUES ('436', 'MR', 'S36', 'MR_R36_S36', '300.80086246800', '105.514', '105.516', '-1.92571', '-1.92573');
INSERT INTO `fbroad_copy` VALUES ('437', 'MR', 'S33', 'MR_R34_S34', '3.46780147619', '105.508', '105.508', '-1.92566', '-1.92566');
INSERT INTO `fbroad_copy` VALUES ('438', 'MR', 'S34', 'MR_R34_S34', '300.92979720800', '105.511', '105.508', '-1.92568', '-1.92566');
INSERT INTO `fbroad_copy` VALUES ('439', 'CR', 'R30', 'CR_R30_R31', '1020.77435090000', '105.500', '105.500', '-1.92557', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('440', 'CR', 'S30', 'CR_R30_R31', '4.48822374807', '105.500', '105.500', '-1.92561', '-1.92557');
INSERT INTO `fbroad_copy` VALUES ('441', 'CR', 'R29', 'CR_R29_R30', '1014.97337226000', '105.497', '105.497', '-1.92555', '-1.91637');
INSERT INTO `fbroad_copy` VALUES ('442', 'CR', 'S29', 'CR_R29_R30', '4.50446993217', '105.497', '105.497', '-1.92559', '-1.92555');
INSERT INTO `fbroad_copy` VALUES ('443', 'MR', 'S34', 'MR_R35_S35', '3.49528711851', '105.511', '105.511', '-1.92568', '-1.92568');
INSERT INTO `fbroad_copy` VALUES ('444', 'MR', 'S35', 'MR_R35_S35', '292.26271842500', '105.511', '105.513', '-1.92568', '-1.92571');
INSERT INTO `fbroad_copy` VALUES ('445', 'CR', 'R27', 'CR_R27_R28', '1012.18425475000', '105.492', '105.492', '-1.92554', '-1.91638');
INSERT INTO `fbroad_copy` VALUES ('446', 'CR', 'S27', 'CR_R27_R28', '4.48344240649', '105.492', '105.492', '-1.92558', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('447', 'MR', 'S31', 'MR_R32_S32', '3.50723500232', '105.503', '105.503', '-1.92561', '-1.92561');
INSERT INTO `fbroad_copy` VALUES ('448', 'MR', 'S32', 'MR_R32_S32', '305.01574876000', '105.503', '105.505', '-1.92561', '-1.92565');
INSERT INTO `fbroad_copy` VALUES ('449', 'MR', 'S32', 'MR_R33_S33', '4.02150478004', '105.505', '105.505', '-1.92565', '-1.92565');
INSERT INTO `fbroad_copy` VALUES ('450', 'MR', 'S33', 'MR_R33_S33', '295.48091739400', '105.508', '105.505', '-1.92566', '-1.92565');
INSERT INTO `fbroad_copy` VALUES ('451', 'CR', 'S29', 'CR_S29_S30', '1002.71659761000', '105.497', '105.497', '-1.92559', '-1.93466');
INSERT INTO `fbroad_copy` VALUES ('452', 'CR', 'T29', 'CR_S29_S30', '5.03151396367', '105.497', '105.497', '-1.93466', '-1.93471');
INSERT INTO `fbroad_copy` VALUES ('453', 'MR', 'S29', 'MR_R30_S30', '3.50018856903', '105.497', '105.497', '-1.92559', '-1.92559');
INSERT INTO `fbroad_copy` VALUES ('454', 'MR', 'S30', 'MR_R30_S30', '302.06985215500', '105.500', '105.497', '-1.92561', '-1.92559');
INSERT INTO `fbroad_copy` VALUES ('455', 'CR', 'S28', 'CR_S28_S29', '1003.44841227000', '105.494', '105.494', '-1.92557', '-1.93465');
INSERT INTO `fbroad_copy` VALUES ('456', 'CR', 'T28', 'CR_S28_S29', '4.50685566814', '105.494', '105.494', '-1.93465', '-1.93469');
INSERT INTO `fbroad_copy` VALUES ('457', 'MR', 'S30', 'MR_R31_S31', '3.49830063040', '105.500', '105.500', '-1.92561', '-1.92561');
INSERT INTO `fbroad_copy` VALUES ('458', 'MR', 'S31', 'MR_R31_S31', '289.26656009200', '105.500', '105.503', '-1.92561', '-1.92561');
INSERT INTO `fbroad_copy` VALUES ('459', 'MR', 'S28', 'MR_R29_S29', '4.00669382021', '105.494', '105.494', '-1.92557', '-1.92557');
INSERT INTO `fbroad_copy` VALUES ('460', 'MR', 'S29', 'MR_R29_S29', '305.39278937900', '105.497', '105.494', '-1.92559', '-1.92557');
INSERT INTO `fbroad_copy` VALUES ('461', 'MR', 'S27', 'MR_R28_S28', '3.49480089464', '105.492', '105.492', '-1.92558', '-1.92558');
INSERT INTO `fbroad_copy` VALUES ('462', 'MR', 'S28', 'MR_R28_S28', '287.26680657700', '105.492', '105.494', '-1.92558', '-1.92557');
INSERT INTO `fbroad_copy` VALUES ('463', 'MR', 'S24', 'MR_R25_S25', '1.47731242844', '105.483', '105.483', '-1.92620', '-1.92621');
INSERT INTO `fbroad_copy` VALUES ('464', 'MR', 'S25', 'MR_R25_S25', '257.18577737300', '105.486', '105.483', '-1.92556', '-1.92620');
INSERT INTO `fbroad_copy` VALUES ('465', 'CR', 'S26', 'CR_S26_S27', '1003.06939820000', '105.489', '105.489', '-1.93462', '-1.92555');
INSERT INTO `fbroad_copy` VALUES ('466', 'CR', 'T26', 'CR_S26_S27', '4.51430917188', '105.489', '105.489', '-1.93466', '-1.93462');
INSERT INTO `fbroad_copy` VALUES ('467', 'MR', 'S26', 'MR_R27_S27', '3.49513220935', '105.489', '105.489', '-1.92555', '-1.92555');
INSERT INTO `fbroad_copy` VALUES ('468', 'MR', 'S27', 'MR_R27_S27', '320.28730884800', '105.489', '105.492', '-1.92555', '-1.92558');
INSERT INTO `fbroad_copy` VALUES ('469', 'MR', 'S25', 'MR_R26_S26', '4.30342510644', '105.486', '105.486', '-1.92556', '-1.92556');
INSERT INTO `fbroad_copy` VALUES ('470', 'MR', 'S26', 'MR_R26_S26', '374.87287523200', '105.489', '105.486', '-1.92555', '-1.92556');
INSERT INTO `fbroad_copy` VALUES ('471', 'CR', 'R24', 'CR_R24_R25', '1091.82157726000', '105.482', '105.483', '-1.92549', '-1.91639');
INSERT INTO `fbroad_copy` VALUES ('472', 'MR', 'S22', 'MR_R23_S23', '3.50340328804', '105.478', '105.478', '-1.92554', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('473', 'MR', 'S23', 'MR_R23_S23', '299.44888068700', '105.478', '105.481', '-1.92554', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('474', 'MR', 'R24', 'MR_R25_S24', '1.69297966909', '105.482', '105.482', '-1.92549', '-1.92549');
INSERT INTO `fbroad_copy` VALUES ('475', 'MR', 'S24', 'MR_R25_S24', '154.89200008100', '105.483', '105.482', '-1.92554', '-1.92549');
INSERT INTO `fbroad_copy` VALUES ('476', 'MR', 'S21', 'MR_R21_S21', '302.98934862700', '105.472', '105.475', '-1.92553', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('477', 'MR', 'S21', 'MR_R22_S22', '3.99560028158', '105.475', '105.475', '-1.92554', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('478', 'MR', 'S22', 'MR_R22_S22', '305.33161783300', '105.475', '105.478', '-1.92554', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('479', 'MR', 'R21', 'MR_Q22_R22', '4.00791102376', '105.475', '105.475', '-1.91640', '-1.91640');
INSERT INTO `fbroad_copy` VALUES ('480', 'MR', 'R22', 'MR_Q22_R22', '303.17329567300', '105.478', '105.475', '-1.91639', '-1.91640');
INSERT INTO `fbroad_copy` VALUES ('481', 'CR', 'R25', 'CR_R25_R26', '68.72332563950', '105.485', '105.486', '-1.92498', '-1.92552');
INSERT INTO `fbroad_copy` VALUES ('482', 'CR', 'S25', 'CR_R25_R26', '4.60297350018', '105.486', '105.486', '-1.92552', '-1.92556');
INSERT INTO `fbroad_copy` VALUES ('483', 'MR', 'R24', 'MR_R24_S24', '0.93203674256', '105.482', '105.482', '-1.92549', '-1.92549');
INSERT INTO `fbroad_copy` VALUES ('484', 'MR', 'S23', 'MR_R24_S24', '4.00040136137', '105.481', '105.481', '-1.92554', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('485', 'MR', 'S24', 'MR_R24_S24', '142.76890811800', '105.482', '105.481', '-1.92549', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('486', 'CR', 'R25', 'CR_R25_R26', '329.02002455100', '105.485', '105.486', '-1.92487', '-1.92303');
INSERT INTO `fbroad_copy` VALUES ('487', 'CR', 'R23', 'CR_R23_R24', '1004.03309446000', '105.481', '105.481', '-1.91641', '-1.92550');
INSERT INTO `fbroad_copy` VALUES ('488', 'CR', 'S23', 'CR_R23_R24', '4.50120413316', '105.481', '105.481', '-1.92550', '-1.92554');
INSERT INTO `fbroad_copy` VALUES ('489', 'CR', 'R22', 'CR_R22_R23', '1006.48801184000', '105.478', '105.478', '-1.92550', '-1.91639');
INSERT INTO `fbroad_copy` VALUES ('490', 'CR', 'S22', 'CR_R22_R23', '4.49700001730', '105.478', '105.478', '-1.92554', '-1.92550');
INSERT INTO `fbroad_copy` VALUES ('491', 'CR', 'R21', 'CR_R21_R22', '1005.68245987000', '105.475', '105.475', '-1.92550', '-1.91640');
INSERT INTO `fbroad_copy` VALUES ('492', 'CR', 'S21', 'CR_R21_R22', '4.49540841896', '105.475', '105.475', '-1.92554', '-1.92550');
INSERT INTO `fbroad_copy` VALUES ('493', 'CR', 'R26', 'CR_R26_R27', '1010.89835352000', '105.489', '105.489', '-1.92551', '-1.91636');
INSERT INTO `fbroad_copy` VALUES ('494', 'CR', 'S26', 'CR_R26_R27', '4.52343701672', '105.489', '105.489', '-1.92555', '-1.92551');
INSERT INTO `fbroad_copy` VALUES ('495', 'CR', 'Q21', 'CR_Q21_Q22', '1006.50014433000', '105.475', '105.475', '-1.91636', '-1.90726');
INSERT INTO `fbroad_copy` VALUES ('496', 'CR', 'R21', 'CR_Q21_Q22', '4.49950440947', '105.475', '105.475', '-1.91640', '-1.91636');
INSERT INTO `fbroad_copy` VALUES ('497', 'MR', 'R26', 'MR_Q27_R27', '3.50336278610', '105.489', '105.489', '-1.91636', '-1.91636');
INSERT INTO `fbroad_copy` VALUES ('498', 'MR', 'R27', 'MR_Q27_R27', '320.77937662000', '105.492', '105.489', '-1.91638', '-1.91636');
INSERT INTO `fbroad_copy` VALUES ('499', 'MR', 'R21', 'MR_Q21_R21', '307.46840130000', '105.472', '105.475', '-1.91641', '-1.91640');
INSERT INTO `fbroad_copy` VALUES ('500', 'MR', 'R23', 'MR_Q24_R24', '4.00437433954', '105.481', '105.481', '-1.91641', '-1.91641');
INSERT INTO `fbroad_copy` VALUES ('501', 'MR', 'R24', 'MR_Q24_R24', '302.76683553900', '105.483', '105.481', '-1.91639', '-1.91641');
INSERT INTO `fbroad_copy` VALUES ('502', 'CR', 'R35', 'CR_R35_R36', '1034.58993202000', '105.513', '105.514', '-1.92567', '-1.91631');
INSERT INTO `fbroad_copy` VALUES ('503', 'CR', 'S35', 'CR_R35_R36', '4.49520212092', '105.513', '105.513', '-1.92571', '-1.92567');
INSERT INTO `fbroad_copy` VALUES ('504', 'MR', 'R22', 'MR_Q23_R23', '3.50357948589', '105.478', '105.478', '-1.91639', '-1.91639');
INSERT INTO `fbroad_copy` VALUES ('505', 'MR', 'R23', 'MR_Q23_R23', '300.95443377400', '105.478', '105.481', '-1.91639', '-1.91641');
INSERT INTO `fbroad_copy` VALUES ('506', 'CR', 'R34', 'CR_R34_R35', '1030.06373839000', '105.511', '105.511', '-1.92565', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('507', 'CR', 'S34', 'CR_R34_R35', '3.87313136976', '105.511', '105.511', '-1.92568', '-1.92565');
INSERT INTO `fbroad_copy` VALUES ('508', 'CR', 'R25', 'CR_R25_R26', '734.64627813600', '105.486', '105.486', '-1.91639', '-1.92303');
INSERT INTO `fbroad_copy` VALUES ('509', 'MR', 'R24', 'MR_Q25_R25', '3.49591546996', '105.484', '105.483', '-1.91639', '-1.91639');
INSERT INTO `fbroad_copy` VALUES ('510', 'MR', 'R25', 'MR_Q25_R25', '303.24896813500', '105.486', '105.484', '-1.91639', '-1.91639');
INSERT INTO `fbroad_copy` VALUES ('511', 'CR', 'R33', 'CR_R33_R34', '1026.16598193000', '105.508', '105.508', '-1.92562', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('512', 'CR', 'S33', 'CR_R33_R34', '4.48687649492', '105.508', '105.508', '-1.92566', '-1.92562');
INSERT INTO `fbroad_copy` VALUES ('513', 'MR', 'R25', 'MR_Q26_R26', '3.51231102369', '105.486', '105.486', '-1.91639', '-1.91639');
INSERT INTO `fbroad_copy` VALUES ('514', 'MR', 'R26', 'MR_Q26_R26', '300.99613322100', '105.486', '105.489', '-1.91639', '-1.91636');
INSERT INTO `fbroad_copy` VALUES ('515', 'CR', 'R39', 'CR_R39_R40', '1047.27403952000', '105.525', '105.525', '-1.91629', '-1.92577');
INSERT INTO `fbroad_copy` VALUES ('516', 'CR', 'S39', 'CR_R39_R40', '4.49970956019', '105.525', '105.525', '-1.92577', '-1.92581');
INSERT INTO `fbroad_copy` VALUES ('517', 'MR', 'R27', 'MR_Q28_R28', '3.50294885177', '105.492', '105.492', '-1.91638', '-1.91638');
INSERT INTO `fbroad_copy` VALUES ('518', 'MR', 'R28', 'MR_Q28_R28', '285.20306596900', '105.492', '105.494', '-1.91638', '-1.91637');
INSERT INTO `fbroad_copy` VALUES ('519', 'MR', 'R29', 'MR_Q30_R30', '3.50405370457', '105.497', '105.497', '-1.91637', '-1.91637');
INSERT INTO `fbroad_copy` VALUES ('520', 'MR', 'R30', 'MR_Q30_R30', '299.77700772300', '105.497', '105.500', '-1.91637', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('521', 'CR', 'R40', 'CR_R40_R41', '1047.68473851000', '105.527', '105.527', '-1.92579', '-1.91631');
INSERT INTO `fbroad_copy` VALUES ('522', 'CR', 'S40', 'CR_R40_R41', '4.50689265976', '105.527', '105.527', '-1.92583', '-1.92579');
INSERT INTO `fbroad_copy` VALUES ('523', 'CR', 'R32', 'CR_R32_R33', '1025.08549950000', '105.505', '105.505', '-1.92561', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('524', 'CR', 'S32', 'CR_R32_R33', '4.48314236407', '105.505', '105.505', '-1.92565', '-1.92561');
INSERT INTO `fbroad_copy` VALUES ('525', 'MR', 'R31', 'MR_Q32_R32', '3.50698939972', '105.503', '105.503', '-1.91633', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('526', 'MR', 'R32', 'MR_Q32_R32', '304.72007709200', '105.503', '105.505', '-1.91633', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('527', 'MR', 'R28', 'MR_Q29_R29', '3.99190351816', '105.494', '105.495', '-1.91637', '-1.91637');
INSERT INTO `fbroad_copy` VALUES ('528', 'MR', 'R29', 'MR_Q29_R29', '308.36547018000', '105.495', '105.497', '-1.91637', '-1.91637');
INSERT INTO `fbroad_copy` VALUES ('529', 'CR', 'Q29', 'CR_Q29_Q30', '998.35595833200', '105.497', '105.497', '-1.90730', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('530', 'CR', 'R29', 'CR_Q29_Q30', '4.48753373246', '105.497', '105.497', '-1.91633', '-1.91637');
INSERT INTO `fbroad_copy` VALUES ('531', 'MR', 'R39', 'MR_Q40_R40', '3.50092360947', '105.525', '105.525', '-1.91629', '-1.91629');
INSERT INTO `fbroad_copy` VALUES ('532', 'MR', 'R40', 'MR_Q40_R40', '290.93060068500', '105.527', '105.525', '-1.91631', '-1.91629');
INSERT INTO `fbroad_copy` VALUES ('533', 'CR', 'R38', 'CR_R38_R39', '1045.24101906000', '105.522', '105.522', '-1.91629', '-1.92574');
INSERT INTO `fbroad_copy` VALUES ('534', 'CR', 'S38', 'CR_R38_R39', '4.49599033277', '105.522', '105.522', '-1.92574', '-1.92578');
INSERT INTO `fbroad_copy` VALUES ('535', 'CR', 'R37', 'CR_R37_R38', '1041.39933926000', '105.519', '105.519', '-1.91629', '-1.92571');
INSERT INTO `fbroad_copy` VALUES ('536', 'CR', 'S37', 'CR_R37_R38', '4.50283678224', '105.519', '105.519', '-1.92571', '-1.92575');
INSERT INTO `fbroad_copy` VALUES ('537', 'MR', 'R38', 'MR_Q39_R39', '3.49996603715', '105.522', '105.522', '-1.91629', '-1.91629');
INSERT INTO `fbroad_copy` VALUES ('538', 'MR', 'R39', 'MR_Q39_R39', '305.89881086500', '105.525', '105.522', '-1.91629', '-1.91629');
INSERT INTO `fbroad_copy` VALUES ('539', 'CR', 'R36', 'CR_R36_R37', '1036.81703686000', '105.516', '105.516', '-1.91631', '-1.92569');
INSERT INTO `fbroad_copy` VALUES ('540', 'CR', 'S36', 'CR_R36_R37', '4.50731147365', '105.516', '105.516', '-1.92569', '-1.92573');
INSERT INTO `fbroad_copy` VALUES ('541', 'MR', 'R35', 'MR_Q36_R36', '3.95182277575', '105.514', '105.514', '-1.91631', '-1.91631');
INSERT INTO `fbroad_copy` VALUES ('542', 'MR', 'R36', 'MR_Q36_R36', '301.15495537800', '105.514', '105.516', '-1.91631', '-1.91631');
INSERT INTO `fbroad_copy` VALUES ('543', 'MR', 'R37', 'MR_Q38_R38', '3.50010302353', '105.519', '105.519', '-1.91629', '-1.91629');
INSERT INTO `fbroad_copy` VALUES ('544', 'MR', 'R38', 'MR_Q38_R38', '298.15113231900', '105.519', '105.522', '-1.91629', '-1.91629');
INSERT INTO `fbroad_copy` VALUES ('545', 'MR', 'R34', 'MR_Q35_R35', '3.50043200853', '105.511', '105.511', '-1.91633', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('546', 'MR', 'R35', 'MR_Q35_R35', '290.25811611900', '105.514', '105.511', '-1.91631', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('547', 'CR', 'Q25', 'CR_Q25_Q26', '1004.76310705000', '105.486', '105.486', '-1.91635', '-1.90725');
INSERT INTO `fbroad_copy` VALUES ('548', 'CR', 'R25', 'CR_Q25_Q26', '4.50060360850', '105.486', '105.486', '-1.91639', '-1.91635');
INSERT INTO `fbroad_copy` VALUES ('549', 'CR', 'Q26', 'CR_Q26_Q27', '1002.13667460000', '105.489', '105.489', '-1.90727', '-1.91634');
INSERT INTO `fbroad_copy` VALUES ('550', 'CR', 'R26', 'CR_Q26_Q27', '2.84341829460', '105.489', '105.489', '-1.91634', '-1.91636');
INSERT INTO `fbroad_copy` VALUES ('551', 'CR', 'Q33', 'CR_Q33_Q34', '990.67182283200', '105.508', '105.508', '-1.91629', '-1.90733');
INSERT INTO `fbroad_copy` VALUES ('552', 'CR', 'R33', 'CR_Q33_Q34', '4.49572535846', '105.508', '105.508', '-1.91633', '-1.91629');
INSERT INTO `fbroad_copy` VALUES ('553', 'CR', 'Q31', 'CR_Q31_Q32', '994.03637626800', '105.503', '105.503', '-1.90731', '-1.91630');
INSERT INTO `fbroad_copy` VALUES ('554', 'CR', 'R31', 'CR_Q31_Q32', '3.29766623193', '105.503', '105.503', '-1.91630', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('555', 'MR', 'R30', 'MR_Q31_R31', '3.50027360847', '105.500', '105.500', '-1.91633', '-1.91634');
INSERT INTO `fbroad_copy` VALUES ('556', 'MR', 'R31', 'MR_Q31_R31', '291.08498266600', '105.500', '105.503', '-1.91634', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('557', 'CR', 'Q27', 'CR_Q27_Q28', '1002.90992727000', '105.492', '105.492', '-1.91634', '-1.90727');
INSERT INTO `fbroad_copy` VALUES ('558', 'CR', 'R27', 'CR_Q27_Q28', '4.48772888036', '105.492', '105.492', '-1.91638', '-1.91634');
INSERT INTO `fbroad_copy` VALUES ('559', 'CR', 'Q28', 'CR_Q28_Q29', '998.76582229000', '105.495', '105.494', '-1.90729', '-1.91632');
INSERT INTO `fbroad_copy` VALUES ('560', 'CR', 'R28', 'CR_Q28_Q29', '4.51388195129', '105.494', '105.494', '-1.91632', '-1.91637');
INSERT INTO `fbroad_copy` VALUES ('561', 'MR', 'R32', 'MR_Q33_R33', '3.50010155550', '105.505', '105.505', '-1.91633', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('562', 'MR', 'R33', 'MR_Q33_R33', '297.67213217200', '105.505', '105.508', '-1.91633', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('563', 'CR', 'Q34', 'CR_Q34_Q35', '1131.02929541000', '105.511', '105.511', '-1.90734', '-1.91629');
INSERT INTO `fbroad_copy` VALUES ('564', 'CR', 'R34', 'CR_Q34_Q35', '4.48705344381', '105.511', '105.511', '-1.91629', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('565', 'MR', 'R33', 'MR_Q34_R34', '3.99790253242', '105.508', '105.508', '-1.91633', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('566', 'MR', 'R34', 'MR_Q34_R34', '302.41741191800', '105.508', '105.511', '-1.91633', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('567', 'CR', 'Q38', 'CR_Q38_Q39', '977.60677553300', '105.522', '105.522', '-1.90740', '-1.91625');
INSERT INTO `fbroad_copy` VALUES ('568', 'CR', 'R38', 'CR_Q38_Q39', '4.51365657901', '105.522', '105.522', '-1.91625', '-1.91629');
INSERT INTO `fbroad_copy` VALUES ('569', 'MR', 'R36', 'MR_Q37_R37', '3.50023702734', '105.516', '105.516', '-1.91631', '-1.91631');
INSERT INTO `fbroad_copy` VALUES ('570', 'MR', 'R37', 'MR_Q37_R37', '309.53290831700', '105.516', '105.519', '-1.91631', '-1.91629');
INSERT INTO `fbroad_copy` VALUES ('571', 'CR', 'Q37', 'CR_Q37_Q38', '980.09255996000', '105.519', '105.519', '-1.90738', '-1.91625');
INSERT INTO `fbroad_copy` VALUES ('572', 'CR', 'R37', 'CR_Q37_Q38', '4.50591154414', '105.519', '105.519', '-1.91625', '-1.91629');
INSERT INTO `fbroad_copy` VALUES ('573', 'CR', 'Q39', 'CR_Q39_Q40', '977.30645520900', '105.525', '105.525', '-1.90742', '-1.91626');
INSERT INTO `fbroad_copy` VALUES ('574', 'CR', 'R39', 'CR_Q39_Q40', '3.29473279385', '105.525', '105.525', '-1.91626', '-1.91629');
INSERT INTO `fbroad_copy` VALUES ('575', 'MR', 'Q38', 'MR_P39_Q39', '3.49729739238', '105.522', '105.522', '-1.90740', '-1.90740');
INSERT INTO `fbroad_copy` VALUES ('576', 'MR', 'Q39', 'MR_P39_Q39', '305.27690812900', '105.525', '105.522', '-1.90742', '-1.90740');
INSERT INTO `fbroad_copy` VALUES ('577', 'CR', 'Q36', 'CR_Q36_Q37', '983.06178696200', '105.516', '105.516', '-1.90737', '-1.91626');
INSERT INTO `fbroad_copy` VALUES ('578', 'CR', 'R36', 'CR_Q36_Q37', '4.49139492017', '105.516', '105.516', '-1.91626', '-1.91631');
INSERT INTO `fbroad_copy` VALUES ('579', 'MR', 'Q37', 'MR_P38_Q38', '3.49268383958', '105.519', '105.519', '-1.90738', '-1.90738');
INSERT INTO `fbroad_copy` VALUES ('580', 'MR', 'Q38', 'MR_P38_Q38', '300.87203908200', '105.519', '105.522', '-1.90738', '-1.90740');
INSERT INTO `fbroad_copy` VALUES ('581', 'MR', 'Q36', 'MR_P37_Q37', '3.50104030841', '105.516', '105.516', '-1.90737', '-1.90737');
INSERT INTO `fbroad_copy` VALUES ('582', 'MR', 'Q37', 'MR_P37_Q37', '305.27095093100', '105.516', '105.519', '-1.90737', '-1.90738');
INSERT INTO `fbroad_copy` VALUES ('583', 'CR', 'Q35', 'CR_Q35_Q36', '984.32156328400', '105.514', '105.514', '-1.90736', '-1.91626');
INSERT INTO `fbroad_copy` VALUES ('584', 'CR', 'R35', 'CR_Q35_Q36', '5.06574638234', '105.514', '105.514', '-1.91626', '-1.91631');
INSERT INTO `fbroad_copy` VALUES ('585', 'MR', 'Q34', 'MR_P35_Q35', '3.49532788854', '105.511', '105.511', '-1.90734', '-1.90734');
INSERT INTO `fbroad_copy` VALUES ('586', 'MR', 'Q35', 'MR_P35_Q35', '292.26240035400', '105.511', '105.514', '-1.90734', '-1.90736');
INSERT INTO `fbroad_copy` VALUES ('587', 'CR', 'P39', 'CR_P39_P40', '524.89634870000', '105.525', '105.525', '-1.90263', '-1.90738');
INSERT INTO `fbroad_copy` VALUES ('588', 'CR', 'Q39', 'CR_P39_P40', '4.50264397666', '105.525', '105.525', '-1.90738', '-1.90742');
INSERT INTO `fbroad_copy` VALUES ('589', 'MR', 'Q39', 'MR_P40_Q40', '3.49974176307', '105.525', '105.525', '-1.90742', '-1.90742');
INSERT INTO `fbroad_copy` VALUES ('590', 'MR', 'Q40', 'MR_P40_Q40', '293.28059411900', '105.525', '105.527', '-1.90742', '-1.90745');
INSERT INTO `fbroad_copy` VALUES ('591', 'MR', 'Q35', 'MR_P36_Q36', '3.49853613077', '105.514', '105.514', '-1.90736', '-1.90736');
INSERT INTO `fbroad_copy` VALUES ('592', 'MR', 'Q36', 'MR_P36_Q36', '302.05798339700', '105.514', '105.516', '-1.90736', '-1.90737');
INSERT INTO `fbroad_copy` VALUES ('593', 'CR', 'Q32', 'CR_Q32_Q33', '991.67677976100', '105.505', '105.505', '-1.91629', '-1.90732');
INSERT INTO `fbroad_copy` VALUES ('594', 'CR', 'R32', 'CR_Q32_Q33', '4.50696713601', '105.505', '105.505', '-1.91633', '-1.91629');
INSERT INTO `fbroad_copy` VALUES ('595', 'MR', 'Q33', 'MR_P34_Q34', '3.99521683995', '105.508', '105.508', '-1.90733', '-1.90733');
INSERT INTO `fbroad_copy` VALUES ('596', 'MR', 'Q34', 'MR_P34_Q34', '303.20999543900', '105.508', '105.511', '-1.90733', '-1.90734');
INSERT INTO `fbroad_copy` VALUES ('597', 'MR', 'Q32', 'MR_P33_Q33', '3.50153299074', '105.505', '105.506', '-1.90732', '-1.90732');
INSERT INTO `fbroad_copy` VALUES ('598', 'MR', 'Q33', 'MR_P33_Q33', '295.29955037600', '105.506', '105.508', '-1.90732', '-1.90733');
INSERT INTO `fbroad_copy` VALUES ('599', 'MR', 'Q30', 'MR_P31_Q31', '3.49857626161', '105.500', '105.500', '-1.90729', '-1.90729');
INSERT INTO `fbroad_copy` VALUES ('600', 'MR', 'Q31', 'MR_P31_Q31', '294.50589810800', '105.500', '105.503', '-1.90729', '-1.90731');
INSERT INTO `fbroad_copy` VALUES ('601', 'CR', 'P37', 'CR_P37_P38', '527.08785981900', '105.519', '105.519', '-1.90258', '-1.90734');
INSERT INTO `fbroad_copy` VALUES ('602', 'CR', 'Q37', 'CR_P37_P38', '4.50376235946', '105.519', '105.519', '-1.90734', '-1.90738');
INSERT INTO `fbroad_copy` VALUES ('603', 'MR', 'Q31', 'MR_P32_Q32', '3.49983984382', '105.503', '105.503', '-1.90731', '-1.90731');
INSERT INTO `fbroad_copy` VALUES ('604', 'MR', 'Q32', 'MR_P32_Q32', '303.75275869900', '105.503', '105.505', '-1.90731', '-1.90732');
INSERT INTO `fbroad_copy` VALUES ('605', 'CR', 'Q30', 'CR_Q30_Q31', '996.47546122200', '105.500', '105.500', '-1.90729', '-1.91630');
INSERT INTO `fbroad_copy` VALUES ('606', 'CR', 'R30', 'CR_Q30_Q31', '3.31621537982', '105.500', '105.500', '-1.91630', '-1.91633');
INSERT INTO `fbroad_copy` VALUES ('607', 'MR', 'Q28', 'MR_P29_Q29', '4.00132079502', '105.495', '105.495', '-1.90729', '-1.90729');
INSERT INTO `fbroad_copy` VALUES ('608', 'MR', 'Q29', 'MR_P29_Q29', '305.94111541000', '105.495', '105.497', '-1.90729', '-1.90730');
INSERT INTO `fbroad_copy` VALUES ('609', 'MR', 'Q27', 'MR_P28_Q28', '3.49991767415', '105.492', '105.492', '-1.90727', '-1.90727');
INSERT INTO `fbroad_copy` VALUES ('610', 'MR', 'Q28', 'MR_P28_Q28', '287.93113239500', '105.492', '105.495', '-1.90727', '-1.90729');
INSERT INTO `fbroad_copy` VALUES ('611', 'CR', 'Q22', 'CR_Q22_Q23', '1004.74279243000', '105.478', '105.478', '-1.91635', '-1.90726');
INSERT INTO `fbroad_copy` VALUES ('612', 'CR', 'R22', 'CR_Q22_Q23', '4.51610656488', '105.478', '105.478', '-1.91639', '-1.91635');
INSERT INTO `fbroad_copy` VALUES ('613', 'CR', 'Q24', 'CR_Q24_Q25', '1006.89759434000', '105.483', '105.483', '-1.90724', '-1.91635');
INSERT INTO `fbroad_copy` VALUES ('614', 'CR', 'R24', 'CR_Q24_Q25', '4.50600528394', '105.483', '105.483', '-1.91635', '-1.91639');
INSERT INTO `fbroad_copy` VALUES ('615', 'MR', 'Q29', 'MR_P30_Q30', '3.49120550531', '105.497', '105.497', '-1.90730', '-1.90730');
INSERT INTO `fbroad_copy` VALUES ('616', 'MR', 'Q30', 'MR_P30_Q30', '298.95768220900', '105.497', '105.500', '-1.90730', '-1.90729');
INSERT INTO `fbroad_copy` VALUES ('617', 'MR', 'P21', 'MR_N21_P21', '307.34298761800', '105.472', '105.475', '-1.89816', '-1.89817');
INSERT INTO `fbroad_copy` VALUES ('618', 'CR', 'P38', 'CR_P38_P39', '526.51969520800', '105.522', '105.522', '-1.90260', '-1.90736');
INSERT INTO `fbroad_copy` VALUES ('619', 'CR', 'Q38', 'CR_P38_P39', '4.50098279301', '105.522', '105.522', '-1.90736', '-1.90740');
INSERT INTO `fbroad_copy` VALUES ('620', 'MR', 'Q25', 'MR_P26_Q26', '3.50786527657', '105.486', '105.486', '-1.90725', '-1.90726');
INSERT INTO `fbroad_copy` VALUES ('621', 'MR', 'Q26', 'MR_P26_Q26', '303.46820753100', '105.486', '105.489', '-1.90726', '-1.90727');
INSERT INTO `fbroad_copy` VALUES ('622', 'MR', 'Q26', 'MR_P27_Q27', '3.49840276690', '105.489', '105.489', '-1.90727', '-1.90727');
INSERT INTO `fbroad_copy` VALUES ('623', 'MR', 'Q27', 'MR_P27_Q27', '320.68728659000', '105.489', '105.492', '-1.90727', '-1.90727');
INSERT INTO `fbroad_copy` VALUES ('624', 'MR', 'Q24', 'MR_P25_Q25', '3.50372877541', '105.483', '105.484', '-1.90724', '-1.90724');
INSERT INTO `fbroad_copy` VALUES ('625', 'MR', 'Q25', 'MR_P25_Q25', '302.72973029600', '105.484', '105.486', '-1.90724', '-1.90725');
INSERT INTO `fbroad_copy` VALUES ('626', 'CR', 'Q23', 'CR_Q23_Q24', '1009.08217784000', '105.481', '105.481', '-1.91637', '-1.90724');
INSERT INTO `fbroad_copy` VALUES ('627', 'CR', 'R23', 'CR_Q23_Q24', '4.47400069794', '105.481', '105.481', '-1.91641', '-1.91637');
INSERT INTO `fbroad_copy` VALUES ('628', 'MR', 'Q21', 'MR_P22_Q22', '3.99561597882', '105.475', '105.475', '-1.90726', '-1.90726');
INSERT INTO `fbroad_copy` VALUES ('629', 'MR', 'Q22', 'MR_P22_Q22', '302.97074442900', '105.475', '105.478', '-1.90726', '-1.90726');
INSERT INTO `fbroad_copy` VALUES ('630', 'CR', 'P21', 'CR_P21_P22', '1000.00589918000', '105.475', '105.475', '-1.89817', '-1.90721');
INSERT INTO `fbroad_copy` VALUES ('631', 'CR', 'Q21', 'CR_P21_P22', '4.52200035813', '105.475', '105.475', '-1.90721', '-1.90726');
INSERT INTO `fbroad_copy` VALUES ('632', 'CR', 'P30', 'CR_P30_P31', '678.12711408700', '105.500', '105.500', '-1.90725', '-1.90111');
INSERT INTO `fbroad_copy` VALUES ('633', 'CR', 'Q30', 'CR_P30_P31', '4.50002952102', '105.500', '105.500', '-1.90729', '-1.90725');
INSERT INTO `fbroad_copy` VALUES ('634', 'CR', 'P29', 'CR_P29_P30', '348.49220912400', '105.497', '105.497', '-1.90411', '-1.90725');
INSERT INTO `fbroad_copy` VALUES ('635', 'CR', 'Q29', 'CR_P29_P30', '4.49233247789', '105.497', '105.497', '-1.90725', '-1.90730');
INSERT INTO `fbroad_copy` VALUES ('636', 'MR', 'Q23', 'MR_P24_Q24', '3.99870120199', '105.481', '105.481', '-1.90724', '-1.90724');
INSERT INTO `fbroad_copy` VALUES ('637', 'MR', 'Q24', 'MR_P24_Q24', '304.98941393700', '105.481', '105.483', '-1.90724', '-1.90724');
INSERT INTO `fbroad_copy` VALUES ('638', 'CR', 'P28', 'CR_P28_P29', '1008.31947304000', '105.495', '105.495', '-1.90725', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('639', 'CR', 'Q28', 'CR_P28_P29', '4.48757188430', '105.495', '105.495', '-1.90729', '-1.90725');
INSERT INTO `fbroad_copy` VALUES ('640', 'CR', 'P27', 'CR_P27_P28', '1005.21882588000', '105.492', '105.492', '-1.89813', '-1.90723');
INSERT INTO `fbroad_copy` VALUES ('641', 'CR', 'Q27', 'CR_P27_P28', '4.51822797751', '105.492', '105.492', '-1.90723', '-1.90727');
INSERT INTO `fbroad_copy` VALUES ('642', 'CR', 'P24', 'CR_P24_P25', '1000.61370131000', '105.483', '105.483', '-1.89815', '-1.90720');
INSERT INTO `fbroad_copy` VALUES ('643', 'CR', 'Q24', 'CR_P24_P25', '4.50560000424', '105.483', '105.483', '-1.90720', '-1.90724');
INSERT INTO `fbroad_copy` VALUES ('644', 'CR', 'P25', 'CR_P25_P26', '1002.87589826000', '105.486', '105.486', '-1.89814', '-1.90721');
INSERT INTO `fbroad_copy` VALUES ('645', 'CR', 'Q25', 'CR_P25_P26', '4.50371001883', '105.486', '105.486', '-1.90721', '-1.90725');
INSERT INTO `fbroad_copy` VALUES ('646', 'MR', 'Q21', 'MR_P21_Q21', '304.95791528700', '105.472', '105.475', '-1.90728', '-1.90726');
INSERT INTO `fbroad_copy` VALUES ('647', 'MR', 'Q22', 'MR_P23_Q23', '3.49699591332', '105.478', '105.478', '-1.90726', '-1.90726');
INSERT INTO `fbroad_copy` VALUES ('648', 'MR', 'Q23', 'MR_P23_Q23', '302.10057427000', '105.481', '105.478', '-1.90724', '-1.90726');
INSERT INTO `fbroad_copy` VALUES ('649', 'CR', 'P36', 'CR_P36_P37', '1014.92564433000', '105.516', '105.516', '-1.90733', '-1.89815');
INSERT INTO `fbroad_copy` VALUES ('650', 'CR', 'Q36', 'CR_P36_P37', '4.50058039248', '105.516', '105.516', '-1.90737', '-1.90733');
INSERT INTO `fbroad_copy` VALUES ('651', 'CR', 'P35', 'CR_P35_P36', '1016.02490963000', '105.514', '105.514', '-1.90732', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('652', 'CR', 'Q35', 'CR_P35_P36', '4.49278477609', '105.514', '105.514', '-1.90736', '-1.90732');
INSERT INTO `fbroad_copy` VALUES ('653', 'CR', 'P32', 'CR_P32_P33', '715.88939339300', '105.506', '105.505', '-1.90080', '-1.90728');
INSERT INTO `fbroad_copy` VALUES ('654', 'CR', 'Q32', 'CR_P32_P33', '4.49945232694', '105.505', '105.505', '-1.90728', '-1.90732');
INSERT INTO `fbroad_copy` VALUES ('655', 'CR', 'P34', 'CR_P34_P35', '1013.82869199000', '105.511', '105.511', '-1.89812', '-1.90730');
INSERT INTO `fbroad_copy` VALUES ('656', 'CR', 'Q34', 'CR_P34_P35', '4.51004659044', '105.511', '105.511', '-1.90730', '-1.90734');
INSERT INTO `fbroad_copy` VALUES ('657', 'MR', 'N22', 'MR_N23_P23', '3.54479985410', '105.478', '105.478', '-1.89809', '-1.89810');
INSERT INTO `fbroad_copy` VALUES ('658', 'MR', 'N23', 'MR_N23_P23', '7.72568322527', '105.478', '105.478', '-1.89810', '-1.89811');
INSERT INTO `fbroad_copy` VALUES ('659', 'MR', 'P23', 'MR_N23_P23', '295.19013770100', '105.478', '105.481', '-1.89811', '-1.89814');
INSERT INTO `fbroad_copy` VALUES ('660', 'CR', 'P26', 'CR_P26_P27', '1006.40100741000', '105.489', '105.489', '-1.90723', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('661', 'CR', 'Q26', 'CR_P26_P27', '4.48684022901', '105.489', '105.489', '-1.90727', '-1.90723');
INSERT INTO `fbroad_copy` VALUES ('662', 'CR', 'N22', 'CR_P22_P23', '1.99080064182', '105.478', '105.478', '-1.89811', '-1.89809');
INSERT INTO `fbroad_copy` VALUES ('663', 'CR', 'P22', 'CR_P22_P23', '1007.09906523000', '105.478', '105.478', '-1.90722', '-1.89811');
INSERT INTO `fbroad_copy` VALUES ('664', 'CR', 'Q22', 'CR_P22_P23', '4.48080044544', '105.478', '105.478', '-1.90726', '-1.90722');
INSERT INTO `fbroad_copy` VALUES ('665', 'CR', 'P23', 'CR_P23_P24', '1002.07730052000', '105.481', '105.481', '-1.89814', '-1.90720');
INSERT INTO `fbroad_copy` VALUES ('666', 'CR', 'Q23', 'CR_P23_P24', '4.51690000919', '105.481', '105.481', '-1.90720', '-1.90724');
INSERT INTO `fbroad_copy` VALUES ('667', 'MR', 'N22', 'MR_N22_P22', '24.07467782020', '105.478', '105.478', '-1.89809', '-1.89811');
INSERT INTO `fbroad_copy` VALUES ('668', 'MR', 'P21', 'MR_N22_P22', '3.50294076714', '105.475', '105.475', '-1.89817', '-1.89817');
INSERT INTO `fbroad_copy` VALUES ('669', 'MR', 'P22', 'MR_N22_P22', '278.93683780300', '105.478', '105.475', '-1.89811', '-1.89817');
INSERT INTO `fbroad_copy` VALUES ('670', 'MR', 'P24', 'MR_N25_P25', '3.49334484147', '105.483', '105.484', '-1.89815', '-1.89815');
INSERT INTO `fbroad_copy` VALUES ('671', 'MR', 'P25', 'MR_N25_P25', '300.85008588600', '105.484', '105.486', '-1.89815', '-1.89814');
INSERT INTO `fbroad_copy` VALUES ('672', 'CR', 'P31', 'CR_P31_P32', '1009.94596711000', '105.503', '105.503', '-1.90727', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('673', 'CR', 'Q31', 'CR_P31_P32', '4.49639611684', '105.503', '105.503', '-1.90731', '-1.90727');
INSERT INTO `fbroad_copy` VALUES ('674', 'MR', 'P26', 'MR_N27_P27', '3.51170866214', '105.489', '105.489', '-1.89813', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('675', 'MR', 'P27', 'MR_N27_P27', '319.87318643300', '105.489', '105.492', '-1.89813', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('676', 'CR', 'P32', 'CR_P32_P33', '58.08804713450', '105.506', '105.506', '-1.89813', '-1.89865');
INSERT INTO `fbroad_copy` VALUES ('677', 'MR', 'P34', 'MR_N35_P35', '3.50300155487', '105.511', '105.511', '-1.89812', '-1.89812');
INSERT INTO `fbroad_copy` VALUES ('678', 'MR', 'P35', 'MR_N35_P35', '293.83731807200', '105.511', '105.514', '-1.89812', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('679', 'CR', 'N28', 'CR_N28_N29', '457.45402276200', '105.495', '105.495', '-1.89809', '-1.89395');
INSERT INTO `fbroad_copy` VALUES ('680', 'CR', 'P28', 'CR_N28_N29', '4.48609765343', '105.495', '105.495', '-1.89813', '-1.89809');
INSERT INTO `fbroad_copy` VALUES ('681', 'MR', 'P33', 'MR_N34_P34', '4.00891375042', '105.508', '105.508', '-1.89812', '-1.89812');
INSERT INTO `fbroad_copy` VALUES ('682', 'MR', 'P34', 'MR_N34_P34', '302.58298102000', '105.508', '105.511', '-1.89812', '-1.89812');
INSERT INTO `fbroad_copy` VALUES ('683', 'MR', 'P27', 'MR_N28_P28', '3.52970444307', '105.492', '105.492', '-1.89813', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('684', 'MR', 'P28', 'MR_N28_P28', '289.46300319300', '105.492', '105.495', '-1.89813', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('685', 'MR', 'P31', 'MR_N32_P32', '3.50830024073', '105.503', '105.503', '-1.89813', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('686', 'MR', 'P32', 'MR_N32_P32', '301.19452030700', '105.503', '105.506', '-1.89813', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('687', 'MR', 'P25', 'MR_N26_P26', '3.04359157847', '105.486', '105.486', '-1.89814', '-1.89814');
INSERT INTO `fbroad_copy` VALUES ('688', 'MR', 'P26', 'MR_N26_P26', '310.18532191100', '105.486', '105.489', '-1.89814', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('689', 'CR', 'P33', 'CR_P33_P34', '1013.76579369000', '105.508', '105.508', '-1.90729', '-1.89812');
INSERT INTO `fbroad_copy` VALUES ('690', 'CR', 'Q33', 'CR_P33_P34', '4.49715984195', '105.508', '105.508', '-1.90733', '-1.90729');
INSERT INTO `fbroad_copy` VALUES ('691', 'MR', 'P23', 'MR_N24_P24', '3.99511339150', '105.481', '105.481', '-1.89814', '-1.89814');
INSERT INTO `fbroad_copy` VALUES ('692', 'MR', 'P24', 'MR_N24_P24', '304.96585412400', '105.481', '105.483', '-1.89814', '-1.89815');
INSERT INTO `fbroad_copy` VALUES ('693', 'CR', 'N24', 'CR_N24_N25', '947.00336343600', '105.484', '105.483', '-1.88954', '-1.89811');
INSERT INTO `fbroad_copy` VALUES ('694', 'CR', 'P24', 'CR_N24_N25', '4.48451423705', '105.483', '105.483', '-1.89811', '-1.89815');
INSERT INTO `fbroad_copy` VALUES ('695', 'CR', 'N23', 'CR_N23_N24', '948.10110628800', '105.481', '105.481', '-1.88952', '-1.89810');
INSERT INTO `fbroad_copy` VALUES ('696', 'CR', 'P23', 'CR_N23_N24', '3.92460815325', '105.481', '105.481', '-1.89810', '-1.89814');
INSERT INTO `fbroad_copy` VALUES ('697', 'MR', 'P31', 'MR_N31_P31', '157.23658562900', '105.501', '105.503', '-1.89813', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('698', 'CR', 'N21', 'CR_N21_N22', '953.28200273000', '105.475', '105.475', '-1.89813', '-1.88950');
INSERT INTO `fbroad_copy` VALUES ('699', 'CR', 'P21', 'CR_N21_N22', '4.48630121275', '105.475', '105.475', '-1.89817', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('700', 'CR', 'N25', 'CR_N25_N26', '944.41133268300', '105.486', '105.486', '-1.89810', '-1.88955');
INSERT INTO `fbroad_copy` VALUES ('701', 'CR', 'P25', 'CR_N25_N26', '5.05277692584', '105.486', '105.486', '-1.89814', '-1.89810');
INSERT INTO `fbroad_copy` VALUES ('702', 'MR', 'P32', 'MR_N33_P33', '3.49671891065', '105.506', '105.506', '-1.89813', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('703', 'MR', 'P33', 'MR_N33_P33', '296.53158724300', '105.508', '105.506', '-1.89812', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('704', 'CR', 'N34', 'CR_N34_N35', '936.25826887900', '105.511', '105.511', '-1.88961', '-1.89808');
INSERT INTO `fbroad_copy` VALUES ('705', 'CR', 'P34', 'CR_N34_N35', '4.50712529358', '105.511', '105.511', '-1.89808', '-1.89812');
INSERT INTO `fbroad_copy` VALUES ('706', 'CR', 'N32', 'CR_N32_N33', '938.80291820600', '105.506', '105.506', '-1.88959', '-1.89809');
INSERT INTO `fbroad_copy` VALUES ('707', 'CR', 'P32', 'CR_N32_N33', '4.49482991844', '105.506', '105.506', '-1.89809', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('708', 'CR', 'N31', 'CR_N31_N32', '939.43330819300', '105.503', '105.503', '-1.89809', '-1.88959');
INSERT INTO `fbroad_copy` VALUES ('709', 'CR', 'P31', 'CR_N31_N32', '4.50461993219', '105.503', '105.503', '-1.89813', '-1.89809');
INSERT INTO `fbroad_copy` VALUES ('710', 'CR', 'N26', 'CR_N26_N27', '940.88559905400', '105.489', '105.489', '-1.88957', '-1.89808');
INSERT INTO `fbroad_copy` VALUES ('711', 'CR', 'P26', 'CR_N26_N27', '4.51020069231', '105.489', '105.489', '-1.89808', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('712', 'CR', 'N30', 'CR_N30_N31', '487.11690083100', '105.500', '105.500', '-1.88959', '-1.89399');
INSERT INTO `fbroad_copy` VALUES ('713', 'CR', 'N28', 'CR_N28_N29', '482.23694894500', '105.495', '105.495', '-1.89395', '-1.88958');
INSERT INTO `fbroad_copy` VALUES ('714', 'MR', 'N33', 'MR_M34_N34', '3.99321863608', '105.508', '105.508', '-1.88961', '-1.88961');
INSERT INTO `fbroad_copy` VALUES ('715', 'MR', 'N34', 'MR_M34_N34', '304.50130299400', '105.508', '105.511', '-1.88961', '-1.88961');
INSERT INTO `fbroad_copy` VALUES ('716', 'MR', 'N32', 'MR_M33_N33', '3.50184029878', '105.506', '105.506', '-1.88959', '-1.88959');
INSERT INTO `fbroad_copy` VALUES ('717', 'MR', 'N33', 'MR_M33_N33', '294.26420307500', '105.506', '105.508', '-1.88959', '-1.88961');
INSERT INTO `fbroad_copy` VALUES ('718', 'CR', 'N33', 'CR_N33_N34', '936.36629232100', '105.508', '105.508', '-1.89808', '-1.88961');
INSERT INTO `fbroad_copy` VALUES ('719', 'CR', 'P33', 'CR_N33_N34', '4.51210453884', '105.508', '105.508', '-1.89812', '-1.89808');
INSERT INTO `fbroad_copy` VALUES ('720', 'MR', 'N30', 'MR_M31_N31', '3.50220416308', '105.500', '105.500', '-1.88959', '-1.88959');
INSERT INTO `fbroad_copy` VALUES ('721', 'MR', 'N31', 'MR_M31_N31', '294.55800299900', '105.503', '105.500', '-1.88959', '-1.88959');
INSERT INTO `fbroad_copy` VALUES ('722', 'MR', 'N29', 'MR_M30_N30', '3.50006003520', '105.497', '105.497', '-1.88957', '-1.88957');
INSERT INTO `fbroad_copy` VALUES ('723', 'MR', 'N30', 'MR_M30_N30', '303.15168260100', '105.497', '105.500', '-1.88957', '-1.88959');
INSERT INTO `fbroad_copy` VALUES ('724', 'CR', 'N29', 'CR_N29_N30', '491.38389042000', '105.497', '105.497', '-1.89399', '-1.88957');
INSERT INTO `fbroad_copy` VALUES ('725', 'CR', 'N27', 'CR_N27_N28', '995.32756950200', '105.492', '105.492', '-1.88952', '-1.89809');
INSERT INTO `fbroad_copy` VALUES ('726', 'CR', 'P27', 'CR_N27_N28', '4.49360193167', '105.492', '105.492', '-1.89809', '-1.89813');
INSERT INTO `fbroad_copy` VALUES ('727', 'MR', 'N27', 'MR_M28_N28', '3.51776727127', '105.492', '105.492', '-1.88953', '-1.88952');
INSERT INTO `fbroad_copy` VALUES ('728', 'MR', 'N28', 'MR_M28_N28', '300.89516795000', '105.495', '105.492', '-1.88958', '-1.88953');
INSERT INTO `fbroad_copy` VALUES ('729', 'MR', 'N26', 'MR_M27_N27', '3.49468031446', '105.489', '105.489', '-1.88957', '-1.88957');
INSERT INTO `fbroad_copy` VALUES ('730', 'MR', 'N27', 'MR_M27_N27', '323.35915802600', '105.489', '105.492', '-1.88957', '-1.88952');
INSERT INTO `fbroad_copy` VALUES ('731', 'MR', 'N25', 'MR_M26_N26', '3.50790936720', '105.486', '105.486', '-1.88955', '-1.88955');
INSERT INTO `fbroad_copy` VALUES ('732', 'MR', 'N26', 'MR_M26_N26', '308.41695132200', '105.486', '105.489', '-1.88955', '-1.88957');
INSERT INTO `fbroad_copy` VALUES ('733', 'MR', 'N31', 'MR_M32_N32', '3.50130514153', '105.503', '105.503', '-1.88959', '-1.88959');
INSERT INTO `fbroad_copy` VALUES ('734', 'MR', 'N32', 'MR_M32_N32', '302.00165621200', '105.503', '105.506', '-1.88959', '-1.88959');
INSERT INTO `fbroad_copy` VALUES ('735', 'MR', 'N28', 'MR_M29_N29', '3.49691576360', '105.495', '105.495', '-1.88958', '-1.88958');
INSERT INTO `fbroad_copy` VALUES ('736', 'MR', 'N29', 'MR_M29_N29', '304.38162329400', '105.495', '105.497', '-1.88958', '-1.88957');
INSERT INTO `fbroad_copy` VALUES ('737', 'CR', 'N22', 'CR_N22_N23', '948.11088779500', '105.478', '105.478', '-1.89809', '-1.88952');
INSERT INTO `fbroad_copy` VALUES ('738', 'CR', 'M28', 'CR_M28_M29', '1004.94733073000', '105.495', '105.495', '-1.88954', '-1.88045');
INSERT INTO `fbroad_copy` VALUES ('739', 'CR', 'N28', 'CR_M28_M29', '4.51301758942', '105.495', '105.495', '-1.88958', '-1.88954');
INSERT INTO `fbroad_copy` VALUES ('740', 'CR', 'M33', 'CR_M33_M34', '840.15003662100', '105.508', '105.508', '-1.88957', '-1.88198');
INSERT INTO `fbroad_copy` VALUES ('741', 'CR', 'N33', 'CR_M33_M34', '4.49644142125', '105.508', '105.508', '-1.88961', '-1.88957');
INSERT INTO `fbroad_copy` VALUES ('742', 'CR', 'M26', 'CR_M26_M27', '1004.86426775000', '105.489', '105.489', '-1.88953', '-1.88044');
INSERT INTO `fbroad_copy` VALUES ('743', 'CR', 'N26', 'CR_M26_M27', '4.46610403207', '105.489', '105.489', '-1.88957', '-1.88953');
INSERT INTO `fbroad_copy` VALUES ('744', 'MR', 'M33', 'MR_M33_M34', '11.13553062970', '105.508', '105.508', '-1.88198', '-1.88190');
INSERT INTO `fbroad_copy` VALUES ('745', 'CR', 'M27', 'CR_M27_M28', '1000.71807541000', '105.492', '105.492', '-1.88044', '-1.88950');
INSERT INTO `fbroad_copy` VALUES ('746', 'CR', 'N27', 'CR_M27_M28', '2.42250016659', '105.492', '105.492', '-1.88950', '-1.88952');
INSERT INTO `fbroad_copy` VALUES ('747', 'CR', 'M31', 'CR_M31_M32', '1008.52056407000', '105.503', '105.503', '-1.88955', '-1.88043');
INSERT INTO `fbroad_copy` VALUES ('748', 'CR', 'N31', 'CR_M31_M32', '4.50051133419', '105.503', '105.503', '-1.88959', '-1.88955');
INSERT INTO `fbroad_copy` VALUES ('749', 'CR', 'M32', 'CR_M32_M33', '922.80804007600', '105.506', '105.506', '-1.88120', '-1.88955');
INSERT INTO `fbroad_copy` VALUES ('750', 'CR', 'N32', 'CR_M32_M33', '4.50541933689', '105.506', '105.506', '-1.88955', '-1.88959');
INSERT INTO `fbroad_copy` VALUES ('751', 'MR', 'M34', 'MR_L34_M34', '165.49221451800', '105.510', '105.511', '-1.88050', '-1.88049');
INSERT INTO `fbroad_copy` VALUES ('752', 'CR', 'M29', 'CR_M29_M30', '1005.76134652000', '105.497', '105.497', '-1.88953', '-1.88043');
INSERT INTO `fbroad_copy` VALUES ('753', 'CR', 'N29', 'CR_M29_M30', '4.52092357478', '105.497', '105.497', '-1.88957', '-1.88953');
INSERT INTO `fbroad_copy` VALUES ('754', 'CR', 'M30', 'CR_M30_M31', '1008.48394249000', '105.500', '105.500', '-1.88042', '-1.88955');
INSERT INTO `fbroad_copy` VALUES ('755', 'CR', 'N30', 'CR_M30_M31', '4.50003802762', '105.500', '105.500', '-1.88955', '-1.88959');
INSERT INTO `fbroad_copy` VALUES ('756', 'MR', 'U23', 'MR_T23_U23', '18.32279646440', '105.480', '105.480', '-1.94377', '-1.94381');
INSERT INTO `fbroad_copy` VALUES ('757', 'MR', 'M34', 'MR_L34_M34', '10.16624227180', '105.509', '105.510', '-1.88046', '-1.88050');
INSERT INTO `fbroad_copy` VALUES ('758', 'CR', 'U35', 'CR_U35_V35', '501.17873019800', '105.514', '105.514', '-1.94829', '-1.94376');
INSERT INTO `fbroad_copy` VALUES ('759', 'CR', 'U35', 'CR_U35_U36', '501.17873019800', '105.514', '105.514', '-1.94829', '-1.94376');
INSERT INTO `fbroad_copy` VALUES ('760', 'CR', 'U36', 'CR_U35_V35', '2.78533324421', '105.514', '105.514', '-1.94376', '-1.94374');
INSERT INTO `fbroad_copy` VALUES ('761', 'CR', 'U36', 'CR_U35_U36', '2.78533324421', '105.514', '105.514', '-1.94376', '-1.94374');
INSERT INTO `fbroad_copy` VALUES ('762', 'CR', 'R25', 'CR_R25_R26', '17.68269094720', '105.485', '105.485', '-1.92498', '-1.92487');
INSERT INTO `fbroad_copy` VALUES ('763', 'CR', 'R25', 'CR_R25_R26', '17.68269094720', '105.485', '105.485', '-1.92498', '-1.92487');
INSERT INTO `fbroad_copy` VALUES ('764', 'CR', 'T35', 'CR_T35_U35', '5.24876217509', '105.514', '105.514', '-1.94371', '-1.94367');
INSERT INTO `fbroad_copy` VALUES ('765', 'CR', 'T35', 'CR_U35_U36', '5.24876217509', '105.514', '105.514', '-1.94371', '-1.94367');
INSERT INTO `fbroad_copy` VALUES ('766', 'CR', 'T35', 'CR_T36_U36', '5.24876217509', '105.514', '105.514', '-1.94371', '-1.94367');
INSERT INTO `fbroad_copy` VALUES ('767', 'CR', 'U35', 'CR_T35_U35', '1.67114268204', '105.514', '105.514', '-1.94372', '-1.94371');
INSERT INTO `fbroad_copy` VALUES ('768', 'CR', 'U35', 'CR_U35_U36', '1.67114268204', '105.514', '105.514', '-1.94372', '-1.94371');
INSERT INTO `fbroad_copy` VALUES ('769', 'CR', 'U35', 'CR_T36_U36', '1.67114268204', '105.514', '105.514', '-1.94372', '-1.94371');
INSERT INTO `fbroad_copy` VALUES ('770', 'CR', 'U36', 'CR_T35_U35', '2.15153290703', '105.514', '105.514', '-1.94374', '-1.94372');
INSERT INTO `fbroad_copy` VALUES ('771', 'CR', 'U36', 'CR_U35_U36', '2.15153290703', '105.514', '105.514', '-1.94374', '-1.94372');
INSERT INTO `fbroad_copy` VALUES ('772', 'CR', 'U36', 'CR_T36_U36', '2.15153290703', '105.514', '105.514', '-1.94374', '-1.94372');
INSERT INTO `fbroad_copy` VALUES ('773', 'MR', 'U23', 'MR_T23_U23', '8.57386799293', '105.480', '105.480', '-1.94381', '-1.94383');
INSERT INTO `fbroad_copy` VALUES ('774', 'MR', 'U23', 'MR_T23_U23', '8.57386799293', '105.480', '105.480', '-1.94381', '-1.94383');
INSERT INTO `fbroad_copy` VALUES ('775', 'MR', 'U23', 'MR_T23_U23', '8.57386799293', '105.480', '105.480', '-1.94381', '-1.94383');
INSERT INTO `fbroad_copy` VALUES ('776', 'MR', 'T23', 'MR_T23_U23', '4.47547956837', '105.480', '105.480', '-1.94374', '-1.94375');
INSERT INTO `fbroad_copy` VALUES ('777', 'MR', 'T23', 'MR_T23_U23', '4.47547956837', '105.480', '105.480', '-1.94374', '-1.94375');
INSERT INTO `fbroad_copy` VALUES ('778', 'MR', 'T23', 'MR_T23_U23', '4.47547956837', '105.480', '105.480', '-1.94374', '-1.94375');
INSERT INTO `fbroad_copy` VALUES ('779', 'MR', 'U23', 'MR_T23_U23', '7.38030286728', '105.480', '105.480', '-1.94375', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('780', 'MR', 'U23', 'MR_T23_U23', '7.38030286728', '105.480', '105.480', '-1.94375', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('781', 'MR', 'U23', 'MR_T23_U23', '7.38030286728', '105.480', '105.480', '-1.94375', '-1.94377');
INSERT INTO `fbroad_copy` VALUES ('782', 'MR', 'N21', 'MR_N21', '307.00696341700', '105.475', '105.472', '-1.88950', '-1.88952');
INSERT INTO `fbroad_copy` VALUES ('783', 'MR', 'U20', 'MR_U20', '303.26568155500', '105.470', '105.472', '-1.94380', '-1.94379');
INSERT INTO `fbroad_copy` VALUES ('784', 'MR', 'U42', 'MR_U42', '384.56844481900', '105.530', '105.533', '-1.94816', '-1.94814');
INSERT INTO `fbroad_copy` VALUES ('785', 'MR', 'U38', 'MR_U38', '294.15377856600', '105.519', '105.522', '-1.95301', '-1.95295');
INSERT INTO `fbroad_copy` VALUES ('786', 'MR', 'V37', 'MR_V37', '322.49717698400', '105.519', '105.516', '-1.96208', '-1.96209');
INSERT INTO `fbroad_copy` VALUES ('787', 'MR', 'S42', 'MR_S42', '336.28007531200', '105.530', '105.533', '-1.92587', '-1.92594');
INSERT INTO `fbroad_copy` VALUES ('788', 'MR', 'R41', 'MR_R41', '309.24256819100', '105.527', '105.530', '-1.91631', '-1.91634');
INSERT INTO `fbroad_copy` VALUES ('789', 'MR', 'P40', 'MR_P40', '233.82688322200', '105.525', '105.527', '-1.90263', '-1.90266');
INSERT INTO `fbroad_copy` VALUES ('790', 'MR', 'P37', 'MR_P37', '304.71195999200', '105.516', '105.519', '-1.89815', '-1.89814');
INSERT INTO `fbroad_copy` VALUES ('791', 'MR', 'N35', 'MR_N35', '293.65529193500', '105.514', '105.511', '-1.88963', '-1.88961');
INSERT INTO `fbroad_copy` VALUES ('792', 'MR', 'V32', 'MR_V32', '318.11670795600', '105.502', '105.505', '-1.96198', '-1.96201');
INSERT INTO `fbroad_copy` VALUES ('793', 'MR', 'W26', 'MR_W26', '349.34423203500', '105.489', '105.486', '-1.96200', '-1.96204');
INSERT INTO `fbroad_copy` VALUES ('794', 'MR', 'M26', 'MR_M26', '317.02399583600', '105.486', '105.489', '-1.88047', '-1.88044');

-- ----------------------------
-- Table structure for fbsol
-- ----------------------------
DROP TABLE IF EXISTS `fbsol`;
CREATE TABLE `fbsol` (
  `runID` varchar(255) DEFAULT NULL,
  `solTimeID` varchar(255) DEFAULT NULL,
  `solType` varchar(5) DEFAULT NULL,
  `restan` double DEFAULT NULL,
  `lastJobEndTime` int(11) DEFAULT NULL,
  `lastJobEndClock` varchar(5) DEFAULT NULL,
  `vehicles` int(11) DEFAULT NULL,
  `recentTwist` varchar(255) DEFAULT NULL,
  `lastUpd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbsol
-- ----------------------------
INSERT INTO `fbsol` VALUES ('20170911_153449186', '20170911_153449458', 'INIT', '0', '1111', '18:31', '5', null, '2017-09-11 15:34:49');
INSERT INTO `fbsol` VALUES ('20170911_153449186', '20170911_153458679', 'OPTI', '0', '1111', '18:31', '5', null, '2017-09-11 15:34:58');
INSERT INTO `fbsol` VALUES ('20170911_153449186', '20170911_153449458', 'INIT', '0', '1111', '18:31', '5', null, '2017-09-11 15:34:49');
INSERT INTO `fbsol` VALUES ('20170911_153449186', '20170911_153458679', 'OPTI', '0', '1111', '18:31', '5', null, '2017-09-11 15:34:58');

-- ----------------------------
-- Table structure for fbtask
-- ----------------------------
DROP TABLE IF EXISTS `fbtask`;
CREATE TABLE `fbtask` (
  `runID` varchar(255) DEFAULT NULL,
  `solTimeID` varchar(255) DEFAULT NULL,
  `clock1` varchar(255) DEFAULT NULL,
  `agnID` varchar(255) DEFAULT NULL,
  `splyID` varchar(255) DEFAULT NULL,
  `blocks` varchar(255) DEFAULT NULL,
  `size1` double DEFAULT NULL,
  `startMin` int(11) DEFAULT NULL,
  `arrvSplyMin` int(11) DEFAULT NULL,
  `waitSplyDur` int(11) DEFAULT NULL,
  `dprtSplyMin` int(11) DEFAULT NULL,
  `arrvMillMin` int(11) DEFAULT NULL,
  `endMin` int(11) DEFAULT NULL,
  `lonSply` double DEFAULT NULL,
  `latSply` double DEFAULT NULL,
  `lonMill` double DEFAULT NULL,
  `latMill` double DEFAULT NULL,
  `millName` varchar(255) DEFAULT NULL,
  `lastUpd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbtask
-- ----------------------------
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck1', 'BINE2_1', 'N24', '9000', '480', '525', '15', '542', '545', '552', '105.4821058', '-1.893813215', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck1', 'BINE2_2', 'N24; N25', '9000', '553', '556', '74', '632', '635', '642', '105.4821058', '-1.893813215', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck1', 'BINE2_3', 'N25', '9000', '643', '647', '73', '722', '726', '733', '105.4848548', '-1.893824364', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck1', 'BINE2_4', 'N25; N26', '9000', '734', '738', '72', '812', '816', '823', '105.4848548', '-1.893824364', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck1', 'BINE2_5', 'N26; N27', '8394', '824', '829', '71', '902', '907', '914', '105.4876239', '-1.893830532', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck2', 'BINE1_1', 'N29; N30', '9000', '480', '519', '21', '542', '550', '557', '105.4959792', '-1.891784564', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck2', 'BINE1_2', 'N30; N31; N32', '9000', '558', '566', '64', '632', '640', '647', '105.4987293', '-1.891783321', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck2', 'BINE1_3', 'N32', '6470', '648', '659', '61', '722', '733', '740', '105.5041599', '-1.893858625', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck3', 'BINE3_1', 'S26; S27; S28', '9000', '480', '528', '12', '542', '554', '561', '105.4875086', '-1.930043492', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck3', 'BINE3_2', 'S28', '9000', '562', '575', '55', '632', '645', '652', '105.4931355', '-1.930123514', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck3', 'BINE3_3', 'S28; S29', '9000', '653', '666', '54', '722', '735', '742', '105.4931355', '-1.930123514', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck3', 'BINE3_4', 'S29; S30; S31', '9000', '743', '756', '54', '812', '825', '832', '105.4958303', '-1.9301382', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck3', 'BINE3_5', 'S31', '8743', '833', '847', '53', '902', '916', '923', '105.5012835', '-1.930125666', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck4', 'BINE4_1', 'T32; T33', '9000', '480', '526', '14', '542', '559', '566', '105.5039019', '-1.939255814', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck4', 'BINE4_2', 'T33; T34; T35; T36', '9000', '567', '584', '46', '632', '649', '656', '105.506513', '-1.937621759', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck4', 'BINE4_3', 'T36; T37', '9000', '657', '676', '44', '722', '741', '748', '105.5148018', '-1.939218233', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck4', 'BINE4_4', 'T37; T38', '9000', '749', '769', '41', '812', '832', '839', '105.5174205', '-1.93886718', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck4', 'BINE4_5', 'T38', '9000', '840', '862', '38', '902', '924', '931', '105.5202437', '-1.939319632', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck4', 'BINE4_6', 'T38; T39', '9000', '932', '954', '36', '992', '1014', '1021', '105.5202437', '-1.939319632', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck4', 'BINE4_7', 'T39', '2355', '1022', '1044', '36', '1082', '1104', '1111', '105.5230681', '-1.939256232', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck5', 'BINE5_1', 'V32', '9000', '480', '530', '10', '542', '565', '572', '105.5038433', '-1.957471548', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck5', 'BINE5_2', 'V32; V33', '9000', '573', '596', '34', '632', '655', '662', '105.5038433', '-1.957471548', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck5', 'BINE5_3', 'V33; V34', '9000', '663', '687', '33', '722', '746', '753', '105.5066483', '-1.95747959', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck5', 'BINE5_4', 'V34; V35', '9000', '754', '778', '32', '812', '836', '843', '105.5094107', '-1.957507936', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck5', 'BINE5_5', 'V35; V36', '9000', '844', '869', '31', '902', '927', '934', '105.5121556', '-1.957520214', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck5', 'BINE5_6', 'V36', '5344', '935', '960', '30', '992', '1017', '1024', '105.5147514', '-1.957464416', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck1', 'BINE2_1', 'N24', '9000', '480', '525', '15', '542', '545', '552', '105.4821058', '-1.893813215', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck1', 'BINE2_2', 'N24; N25', '9000', '553', '556', '74', '632', '635', '642', '105.4821058', '-1.893813215', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck1', 'BINE2_3', 'N25', '9000', '643', '647', '73', '722', '726', '733', '105.4848548', '-1.893824364', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck1', 'BINE2_4', 'N25; N26', '9000', '734', '738', '72', '812', '816', '823', '105.4848548', '-1.893824364', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck1', 'BINE2_5', 'N26; N27', '8394', '824', '829', '71', '902', '907', '914', '105.4876239', '-1.893830532', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck2', 'BINE1_1', 'N29; N30', '9000', '480', '519', '21', '542', '550', '557', '105.4959792', '-1.891784564', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck2', 'BINE1_2', 'N30; N31; N32', '9000', '558', '566', '64', '632', '640', '647', '105.4987293', '-1.891783321', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck2', 'BINE1_3', 'N32', '6470', '648', '659', '61', '722', '733', '740', '105.5041599', '-1.893858625', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck3', 'BINE3_1', 'S26; S27; S28', '9000', '480', '528', '12', '542', '554', '561', '105.4875086', '-1.930043492', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck3', 'BINE3_2', 'S28', '9000', '562', '575', '55', '632', '645', '652', '105.4931355', '-1.930123514', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck3', 'BINE3_3', 'S28; S29', '9000', '653', '666', '54', '722', '735', '742', '105.4931355', '-1.930123514', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck3', 'BINE3_4', 'S29; S30; S31', '9000', '743', '756', '54', '812', '825', '832', '105.4958303', '-1.9301382', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck3', 'BINE3_5', 'S31', '8743', '833', '847', '53', '902', '916', '923', '105.5012835', '-1.930125666', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck4', 'BINE4_1', 'T32; T33', '9000', '480', '526', '14', '542', '559', '566', '105.5039019', '-1.939255814', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck4', 'BINE4_2', 'T33; T34; T35; T36', '9000', '567', '584', '46', '632', '649', '656', '105.506513', '-1.937621759', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck4', 'BINE4_3', 'T36; T37', '9000', '657', '676', '44', '722', '741', '748', '105.5148018', '-1.939218233', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck4', 'BINE4_4', 'T37; T38', '9000', '749', '769', '41', '812', '832', '839', '105.5174205', '-1.93886718', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck4', 'BINE4_5', 'T38', '9000', '840', '862', '38', '902', '924', '931', '105.5202437', '-1.939319632', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck4', 'BINE4_6', 'T38; T39', '9000', '932', '954', '36', '992', '1014', '1021', '105.5202437', '-1.939319632', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck4', 'BINE4_7', 'T39', '2355', '1022', '1044', '36', '1082', '1104', '1111', '105.5230681', '-1.939256232', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck5', 'BINE5_1', 'V32', '9000', '480', '530', '10', '542', '565', '572', '105.5038433', '-1.957471548', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck5', 'BINE5_2', 'V32; V33', '9000', '573', '596', '34', '632', '655', '662', '105.5038433', '-1.957471548', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck5', 'BINE5_3', 'V33; V34', '9000', '663', '687', '33', '722', '746', '753', '105.5066483', '-1.95747959', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck5', 'BINE5_4', 'V34; V35', '9000', '754', '778', '32', '812', '836', '843', '105.5094107', '-1.957507936', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck5', 'BINE5_5', 'V35; V36', '9000', '844', '869', '31', '902', '927', '934', '105.5121556', '-1.957520214', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck5', 'BINE5_6', 'V36', '5344', '935', '960', '30', '992', '1017', '1024', '105.5147514', '-1.957464416', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck1', 'BINE2_1', 'N24', '9000', '480', '525', '15', '542', '545', '552', '105.4821058', '-1.893813215', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck1', 'BINE2_2', 'N24; N25', '9000', '553', '556', '74', '632', '635', '642', '105.4821058', '-1.893813215', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck1', 'BINE2_3', 'N25', '9000', '643', '647', '73', '722', '726', '733', '105.4848548', '-1.893824364', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck1', 'BINE2_4', 'N25; N26', '9000', '734', '738', '72', '812', '816', '823', '105.4848548', '-1.893824364', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck1', 'BINE2_5', 'N26; N27', '8394', '824', '829', '71', '902', '907', '914', '105.4876239', '-1.893830532', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck2', 'BINE1_1', 'N29; N30', '9000', '480', '519', '21', '542', '550', '557', '105.4959792', '-1.891784564', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck2', 'BINE1_2', 'N30; N31; N32', '9000', '558', '566', '64', '632', '640', '647', '105.4987293', '-1.891783321', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck2', 'BINE1_3', 'N32', '6470', '648', '659', '61', '722', '733', '740', '105.5041599', '-1.893858625', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck3', 'BINE3_1', 'S26; S27; S28', '9000', '480', '528', '12', '542', '554', '561', '105.4875086', '-1.930043492', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck3', 'BINE3_2', 'S28', '9000', '562', '575', '55', '632', '645', '652', '105.4931355', '-1.930123514', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck3', 'BINE3_3', 'S28; S29', '9000', '653', '666', '54', '722', '735', '742', '105.4931355', '-1.930123514', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck3', 'BINE3_4', 'S29; S30; S31', '9000', '743', '756', '54', '812', '825', '832', '105.4958303', '-1.9301382', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck3', 'BINE3_5', 'S31', '8743', '833', '847', '53', '902', '916', '923', '105.5012835', '-1.930125666', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck4', 'BINE4_1', 'T32; T33', '9000', '480', '526', '14', '542', '559', '566', '105.5039019', '-1.939255814', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck4', 'BINE4_2', 'T33; T34; T35; T36', '9000', '567', '584', '46', '632', '649', '656', '105.506513', '-1.937621759', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck4', 'BINE4_3', 'T36; T37', '9000', '657', '676', '44', '722', '741', '748', '105.5148018', '-1.939218233', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck4', 'BINE4_4', 'T37; T38', '9000', '749', '769', '41', '812', '832', '839', '105.5174205', '-1.93886718', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck4', 'BINE4_5', 'T38', '9000', '840', '862', '38', '902', '924', '931', '105.5202437', '-1.939319632', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck4', 'BINE4_6', 'T38; T39', '9000', '932', '954', '36', '992', '1014', '1021', '105.5202437', '-1.939319632', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck4', 'BINE4_7', 'T39', '2355', '1022', '1044', '36', '1082', '1104', '1111', '105.5230681', '-1.939256232', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck5', 'BINE5_1', 'V32', '9000', '480', '530', '10', '542', '565', '572', '105.5038433', '-1.957471548', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck5', 'BINE5_2', 'V32; V33', '9000', '573', '596', '34', '632', '655', '662', '105.5038433', '-1.957471548', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck5', 'BINE5_3', 'V33; V34', '9000', '663', '687', '33', '722', '746', '753', '105.5066483', '-1.95747959', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck5', 'BINE5_4', 'V34; V35', '9000', '754', '778', '32', '812', '836', '843', '105.5094107', '-1.957507936', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck5', 'BINE5_5', 'V35; V36', '9000', '844', '869', '31', '902', '927', '934', '105.5121556', '-1.957520214', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153449458', null, 'Truck5', 'BINE5_6', 'V36', '5344', '935', '960', '30', '992', '1017', '1024', '105.5147514', '-1.957464416', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:49', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck1', 'BINE2_1', 'N24', '9000', '480', '525', '15', '542', '545', '552', '105.4821058', '-1.893813215', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck1', 'BINE2_2', 'N24; N25', '9000', '553', '556', '74', '632', '635', '642', '105.4821058', '-1.893813215', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck1', 'BINE2_3', 'N25', '9000', '643', '647', '73', '722', '726', '733', '105.4848548', '-1.893824364', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck1', 'BINE2_4', 'N25; N26', '9000', '734', '738', '72', '812', '816', '823', '105.4848548', '-1.893824364', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck1', 'BINE2_5', 'N26; N27', '8394', '824', '829', '71', '902', '907', '914', '105.4876239', '-1.893830532', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck2', 'BINE1_1', 'N29; N30', '9000', '480', '519', '21', '542', '550', '557', '105.4959792', '-1.891784564', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck2', 'BINE1_2', 'N30; N31; N32', '9000', '558', '566', '64', '632', '640', '647', '105.4987293', '-1.891783321', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck2', 'BINE1_3', 'N32', '6470', '648', '659', '61', '722', '733', '740', '105.5041599', '-1.893858625', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck3', 'BINE3_1', 'S26; S27; S28', '9000', '480', '528', '12', '542', '554', '561', '105.4875086', '-1.930043492', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck3', 'BINE3_2', 'S28', '9000', '562', '575', '55', '632', '645', '652', '105.4931355', '-1.930123514', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck3', 'BINE3_3', 'S28; S29', '9000', '653', '666', '54', '722', '735', '742', '105.4931355', '-1.930123514', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck3', 'BINE3_4', 'S29; S30; S31', '9000', '743', '756', '54', '812', '825', '832', '105.4958303', '-1.9301382', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck3', 'BINE3_5', 'S31', '8743', '833', '847', '53', '902', '916', '923', '105.5012835', '-1.930125666', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck4', 'BINE4_1', 'T32; T33', '9000', '480', '526', '14', '542', '559', '566', '105.5039019', '-1.939255814', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck4', 'BINE4_2', 'T33; T34; T35; T36', '9000', '567', '584', '46', '632', '649', '656', '105.506513', '-1.937621759', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck4', 'BINE4_3', 'T36; T37', '9000', '657', '676', '44', '722', '741', '748', '105.5148018', '-1.939218233', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck4', 'BINE4_4', 'T37; T38', '9000', '749', '769', '41', '812', '832', '839', '105.5174205', '-1.93886718', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck4', 'BINE4_5', 'T38', '9000', '840', '862', '38', '902', '924', '931', '105.5202437', '-1.939319632', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck4', 'BINE4_6', 'T38; T39', '9000', '932', '954', '36', '992', '1014', '1021', '105.5202437', '-1.939319632', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck4', 'BINE4_7', 'T39', '2355', '1022', '1044', '36', '1082', '1104', '1111', '105.5230681', '-1.939256232', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck5', 'BINE5_1', 'V32', '9000', '480', '530', '10', '542', '565', '572', '105.5038433', '-1.957471548', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck5', 'BINE5_2', 'V32; V33', '9000', '573', '596', '34', '632', '655', '662', '105.5038433', '-1.957471548', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck5', 'BINE5_3', 'V33; V34', '9000', '663', '687', '33', '722', '746', '753', '105.5066483', '-1.95747959', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck5', 'BINE5_4', 'V34; V35', '9000', '754', '778', '32', '812', '836', '843', '105.5094107', '-1.957507936', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck5', 'BINE5_5', 'V35; V36', '9000', '844', '869', '31', '902', '927', '934', '105.5121556', '-1.957520214', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');
INSERT INTO `fbtask` VALUES ('20170911_153449186', '20170911_153458679', null, 'Truck5', 'BINE5_6', 'V36', '5344', '935', '960', '30', '992', '1017', '1024', '105.5147514', '-1.957464416', '105.477', '105.477', 'LWSM', '2017-09-11 15:34:58', '-');

-- ----------------------------
-- Table structure for fbtask2
-- ----------------------------
DROP TABLE IF EXISTS `fbtask2`;
CREATE TABLE `fbtask2` (
  `TaskID` int(11) NOT NULL AUTO_INCREMENT,
  `JobID` int(11) DEFAULT NULL,
  `From1` varchar(255) DEFAULT NULL,
  `To1` varchar(255) DEFAULT NULL,
  `PlanStart` datetime DEFAULT NULL,
  `PlanEnd` datetime DEFAULT NULL,
  `DoneStatus` varchar(5) DEFAULT NULL,
  `FromDesc` varchar(255) DEFAULT NULL,
  `ToDesc` varchar(255) DEFAULT NULL,
  `Tonnage` float DEFAULT NULL,
  `Blocks` varchar(255) DEFAULT NULL,
  `TaskSeq` int(11) DEFAULT '0',
  `HarvestType` varchar(5) DEFAULT NULL,
  `PhaseType` varchar(5) DEFAULT NULL,
  `takenDt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `doneDt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createDt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updDt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ReasonState` int(11) DEFAULT NULL,
  `ReasonID` int(11) DEFAULT NULL,
  `ActualStart` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ActualEnd` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`TaskID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbtask2
-- ----------------------------
INSERT INTO `fbtask2` VALUES ('1', '1', 'Pool', 'Harvest', '2017-09-30 07:30:00', '2017-09-30 23:00:00', 'ASGN', 'Awal hari menuju pool', 'melakukan tugas', '9000', 'M23', '0', '1', null, '2017-10-03 17:46:52', '0000-00-00 00:00:00', '2017-09-18 14:54:00', '2017-10-03 17:46:52', '0', '0', '2017-10-03 17:46:52', '2017-10-03 17:46:52');
INSERT INTO `fbtask2` VALUES ('2', '1', 'Harvest', 'Mill', '2017-09-30 09:05:00', '2017-09-30 23:35:00', 'ASGN', 'Menuju mill', 'Selesai di mill', '9000', 'P22', '0', '1', null, '2017-10-03 17:46:52', '0000-00-00 00:00:00', '2017-09-18 15:11:53', '2017-10-03 17:46:52', '0', '0', '2017-10-03 17:46:52', '2017-10-03 17:46:52');

-- ----------------------------
-- Table structure for fbuser
-- ----------------------------
DROP TABLE IF EXISTS `fbuser`;
CREATE TABLE `fbuser` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Phone` varchar(18) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `lnkRoleID` int(11) NOT NULL,
  `lnkAppID` int(11) NOT NULL,
  `lnkDeviceID` int(11) DEFAULT NULL,
  `gbUserID` int(11) NOT NULL,
  `VehicleID` int(11) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbuser
-- ----------------------------
INSERT INTO `fbuser` VALUES ('1', '085770706777', 'Agustinus Ignat Deswanto', '1', '1', '1', '1', '1');
INSERT INTO `fbuser` VALUES ('2', null, 'Heru Permana', '1', '1', '1', '2', '2');

-- ----------------------------
-- Table structure for fbuserstatus
-- ----------------------------
DROP TABLE IF EXISTS `fbuserstatus`;
CREATE TABLE `fbuserstatus` (
  `StatusID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` int(11) NOT NULL,
  `VehicleID` int(11) NOT NULL,
  `EndTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`StatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbuserstatus
-- ----------------------------
INSERT INTO `fbuserstatus` VALUES ('1', '1', '2', null);
INSERT INTO `fbuserstatus` VALUES ('2', '1', '2', null);

-- ----------------------------
-- Table structure for fbvehicle
-- ----------------------------
DROP TABLE IF EXISTS `fbvehicle`;
CREATE TABLE `fbvehicle` (
  `VehicleID` int(11) NOT NULL AUTO_INCREMENT,
  `VehicleName` varchar(35) NOT NULL,
  `Type` varchar(25) DEFAULT NULL,
  `Weight` int(11) DEFAULT NULL,
  `DefDivCode` varchar(10) DEFAULT NULL,
  `DefDriverID` varchar(10) DEFAULT NULL,
  `StartLocation` varchar(25) DEFAULT NULL,
  `StartTime` time DEFAULT NULL,
  `Status` varchar(5) DEFAULT NULL
    , startLon varchar(50) 
    , startLat varchar(50) 
  , PRIMARY KEY (`VehicleID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of fbvehicle
-- ----------------------------
INSERT INTO `fbvehicle` VALUES ('1', 'Truck1', 'BS', 10000, 'BINE1', null, 'BINT', '07:00', 'AVLB','105.477', '-1.9012');
INSERT INTO `fbvehicle` VALUES ('2', 'Truck2', 'BS', 10000, 'BINE2', null, 'BINT', '07:00', 'AVLB','105.477', '-1.9012');
INSERT INTO `fbvehicle` VALUES ('3', 'Truck3', 'BS', 10000, 'BINE3', null, 'BINT', '07:00', 'AVLB','105.477', '-1.9012');
INSERT INTO `fbvehicle` VALUES ('4', 'Truck4', 'BS', 10000, 'BINE4', null, 'BINT', '07:00', 'AVLB','105.477', '-1.9012');
INSERT INTO `fbvehicle` VALUES ('5', 'Truck5', 'BS', 10000, 'BINE5', null, 'BINT', '07:00', 'AVLB','105.477', '-1.9012');

-- ----------------------------
-- Table structure for gbprogress
-- ----------------------------
DROP TABLE IF EXISTS `gbprogress`;
CREATE TABLE `gbprogress` (
  `runID` varchar(50) DEFAULT NULL,
  `status` varchar(4) DEFAULT NULL,
  `iter` bigint(20) DEFAULT NULL,
  `maxIter` bigint(20) DEFAULT NULL,
  `subIter` bigint(20) DEFAULT NULL,
  `maxSubIter` bigint(20) DEFAULT NULL,
  `msg` longtext,
  `pct` tinyint(4) DEFAULT NULL,
  `lastUpd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `appID` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gbprogress
-- ----------------------------

-- ----------------------------
-- Table structure for gbtrip
-- ----------------------------
DROP TABLE IF EXISTS `gbtrip`;
CREATE TABLE `gbtrip` (
  `fromLon` double DEFAULT NULL,
  `fromLat` double DEFAULT NULL,
  `toLon` double DEFAULT NULL,
  `toLat` double DEFAULT NULL,
  `distMtr` double DEFAULT NULL,
  `timeSec` int(11) DEFAULT NULL,
  `fromNm` varchar(255) DEFAULT NULL,
  `toNm` varchar(255) DEFAULT NULL,
  `lastUpd` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updApp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gbtrip
-- ----------------------------

-- ----------------------------
-- Table structure for gbuser
-- ----------------------------
DROP TABLE IF EXISTS `gbuser`;
CREATE TABLE `gbuser` (
  `gbUserID` int(11) NOT NULL AUTO_INCREMENT,
  `Password` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `StartTime` timestamp NULL DEFAULT NULL,
  `EndTime` timestamp NULL DEFAULT NULL,
  `lnkLoginID` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`gbUserID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of gbuser
-- ----------------------------
INSERT INTO `gbuser` VALUES ('1', 'e10adc3949ba59abbe56e057f20f883e', 'aignatd', '2017-10-05 17:51:06', '2017-09-29 17:47:34', '2');
INSERT INTO `gbuser` VALUES ('2', 'e10adc3949ba59abbe56e057f20f883e', 'heru', '2017-10-03 17:46:50', null, '2');

-- ----------------------------
-- Table structure for reason
-- ----------------------------
DROP TABLE IF EXISTS `reason`;
CREATE TABLE `reason` (
  `ReasonID` int(11) NOT NULL AUTO_INCREMENT,
  `ReasonName` varchar(45) NOT NULL,
  `ReasonDescription` varchar(90) NOT NULL,
  PRIMARY KEY (`ReasonID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reason
-- ----------------------------
INSERT INTO `reason` VALUES ('1', 'Tidak Selesai', 'Isi data berupa tipe reason tidak selesai');
INSERT INTO `reason` VALUES ('2', 'Telat', 'Isi data berupa tipe reason telat');
INSERT INTO `reason` VALUES ('3', 'Tepat Waktu', 'Isi data berupa tipe reason tepat waktu');

-- ----------------------------
-- Table structure for reasonfail
-- ----------------------------
DROP TABLE IF EXISTS `reasonfail`;
CREATE TABLE `reasonfail` (
  `FailID` int(11) NOT NULL AUTO_INCREMENT,
  `FailName` varchar(40) NOT NULL,
  `FailDescription` varchar(80) NOT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`FailID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reasonfail
-- ----------------------------
INSERT INTO `reasonfail` VALUES ('1', 'Buah', 'Pohon Belum Berbuah', null);
INSERT INTO `reasonfail` VALUES ('3', 'Aaaaa', 'Aaaaa', null);
INSERT INTO `reasonfail` VALUES ('4', 'Bbbbb', 'Bbbbb', null);

-- ----------------------------
-- Table structure for reasonlate
-- ----------------------------
DROP TABLE IF EXISTS `reasonlate`;
CREATE TABLE `reasonlate` (
  `LateID` int(11) NOT NULL AUTO_INCREMENT,
  `LateName` varchar(40) NOT NULL,
  `LateDescription` varchar(80) NOT NULL,
  `Notes` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`LateID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of reasonlate
-- ----------------------------
INSERT INTO `reasonlate` VALUES ('1', 'Mogok', 'Kendaraan Dinas Mogok', null);
INSERT INTO `reasonlate` VALUES ('3', 'Aaaaa', 'Aaaaa', null);
INSERT INTO `reasonlate` VALUES ('4', 'Zzzzz', 'Zzzzz', null);

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `RoleID` int(255) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) NOT NULL,
  `DisplayName` varchar(255) NOT NULL,
  `RoleName` varchar(255) NOT NULL,
  PRIMARY KEY (`RoleID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', 'Driver role to take \"kepala sawit\"', 'Driver', 'APP_DRIVER');

-- ----------------------------
-- Table structure for statustasklist
-- ----------------------------
DROP TABLE IF EXISTS `statustasklist`;
CREATE TABLE `statustasklist` (
  `StatusID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) NOT NULL,
  `DisplayName` varchar(255) NOT NULL,
  `StatusTaskListName` varchar(255) NOT NULL,
  PRIMARY KEY (`StatusID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of statustasklist
-- ----------------------------
INSERT INTO `statustasklist` VALUES ('1', 'Status Task List for idle', 'Idle', 'STATUS_IDLE');
INSERT INTO `statustasklist` VALUES ('2', 'Status Task List for progress', 'Progress', 'STATUS_PROGRESS');
INSERT INTO `statustasklist` VALUES ('3', 'Status Task List for finish', 'Finish', 'STATUS_FINISH');
INSERT INTO `statustasklist` VALUES ('4', 'Status Task List for wait', 'Wait', 'STATUS_WAIT');

-- ----------------------------
-- Table structure for tasklist
-- ----------------------------
DROP TABLE IF EXISTS `tasklist`;
CREATE TABLE `tasklist` (
  `TaskID` int(11) NOT NULL AUTO_INCREMENT,
  `DisplayName` varchar(75) NOT NULL,
  `Description` varchar(175) NOT NULL,
  `Vehicle` varchar(25) NOT NULL,
  `Driver` varchar(25) NOT NULL,
  `Tonase` int(11) NOT NULL,
  `lnkStatusID` int(11) NOT NULL DEFAULT '4',
  `lnkRoleID` int(11) NOT NULL DEFAULT '1',
  `EstimateDate` varchar(10) NOT NULL,
  `EstimateTime` varchar(8) NOT NULL,
  `ActualDate` varchar(10) DEFAULT NULL,
  `ActualTime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`TaskID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tasklist
-- ----------------------------
INSERT INTO `tasklist` VALUES ('18', 'U20', 'BINE5_1', 'Truck5', '', '9000', '4', '1', '2017-09-06', '21:45:59', null, null);
INSERT INTO `tasklist` VALUES ('19', 'U20', 'BINE5_1', 'Truck5', '', '9000', '4', '1', '2017-09-06', '21:25:03', null, null);

-- ----------------------------
-- Table structure for tasklist_copy
-- ----------------------------
DROP TABLE IF EXISTS `tasklist_copy`;
CREATE TABLE `tasklist_copy` (
  `TaskID` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(255) NOT NULL,
  `DisplayName` varchar(255) NOT NULL,
  `lnkStatusID` int(11) NOT NULL DEFAULT '4',
  `lnkRoleID` int(11) NOT NULL,
  `EstimateDate` varchar(10) NOT NULL,
  `EstimateTime` varchar(8) NOT NULL,
  `ActualDate` varchar(10) DEFAULT NULL,
  `ActualTime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`TaskID`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tasklist_copy
-- ----------------------------
INSERT INTO `tasklist_copy` VALUES ('1', 'Description Task 1', 'Task 1', '4', '1', '2017-07-24', '19:08:53', null, null);
INSERT INTO `tasklist_copy` VALUES ('2', 'Description Task 2', 'Task 2', '4', '1', '2017-07-24', '19:47:18', null, null);
INSERT INTO `tasklist_copy` VALUES ('3', 'Description Task 3', 'Task 3', '4', '1', '2017-07-24', '20:47:42', null, null);
INSERT INTO `tasklist_copy` VALUES ('4', 'Description Task 4', 'Task 4', '4', '1', '2017-07-24', '20:48:04', null, null);
INSERT INTO `tasklist_copy` VALUES ('5', 'Description Task 5', 'Task 5', '4', '1', '2017-07-24', '20:48:22', null, null);
INSERT INTO `tasklist_copy` VALUES ('6', 'Description Task 6', 'Task 6', '4', '1', '2017-08-01', '21:40:11', null, null);
INSERT INTO `tasklist_copy` VALUES ('7', 'Description Task 7', 'Task 7', '4', '1', '2017-08-02', '21:40:36', null, null);
INSERT INTO `tasklist_copy` VALUES ('8', 'Description Task 8', 'Task 8', '4', '1', '2017-08-03', '21:40:58', null, null);
INSERT INTO `tasklist_copy` VALUES ('9', 'Description Task 9', 'Task 9', '4', '1', '2017-08-04', '22:41:25', null, null);
INSERT INTO `tasklist_copy` VALUES ('10', 'Description Task 10', 'Task 10', '4', '1', '2017-08-05', '22:41:47', null, null);
INSERT INTO `tasklist_copy` VALUES ('11', 'Description Task 11', 'Task 11', '4', '1', '2017-08-06', '22:42:11', null, null);
INSERT INTO `tasklist_copy` VALUES ('12', 'Description Task 12', 'Task 12', '4', '1', '2017-08-07', '23:42:31', null, null);
INSERT INTO `tasklist_copy` VALUES ('13', 'Description Task 13', 'Task 13', '4', '1', '2017-08-08', '23:42:51', null, null);
INSERT INTO `tasklist_copy` VALUES ('14', 'Description Task 14', 'Task 14', '4', '1', '2017-08-09', '23:43:09', null, null);
INSERT INTO `tasklist_copy` VALUES ('15', 'Description Task 15', 'Task 15', '4', '1', '2017-08-10', '23:43:27', null, null);
INSERT INTO `tasklist_copy` VALUES ('16', 'Description Task 16', 'Task 16', '4', '1', '2017-08-11', '23:43:45', null, null);
INSERT INTO `tasklist_copy` VALUES ('17', 'Description Task 17', 'Task 17', '4', '1', '2017-08-12', '23:44:03', null, null);

-- ----------------------------
-- Table structure for tasklist_copy1
-- ----------------------------
DROP TABLE IF EXISTS `tasklist_copy1`;
CREATE TABLE `tasklist_copy1` (
  `TaskID` int(11) NOT NULL AUTO_INCREMENT,
  `DisplayName` varchar(75) NOT NULL,
  `Description` varchar(175) NOT NULL,
  `Vehicle` varchar(25) NOT NULL,
  `Driver` varchar(25) NOT NULL,
  `Tonase` int(11) NOT NULL,
  `lnkStatusID` int(11) NOT NULL DEFAULT '4',
  `lnkRoleID` int(11) NOT NULL DEFAULT '1',
  `EstimateDate` varchar(10) NOT NULL,
  `EstimateTime` varchar(8) NOT NULL,
  `ActualDate` varchar(10) DEFAULT NULL,
  `ActualTime` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`TaskID`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tasklist_copy1
-- ----------------------------
INSERT INTO `tasklist_copy1` VALUES ('18', 'U20', 'BINE5_1', 'Truck5', '', '9000', '4', '1', '2017-09-06', '13:45:59', null, null);
INSERT INTO `tasklist_copy1` VALUES ('19', 'U20', 'BINE5_1', 'Truck5', '', '9000', '4', '1', '2017-09-06', '13:25:03', null, null);
INSERT INTO `tasklist_copy1` VALUES ('20', 'U20; U21', 'BINE5_2', 'Truck5', '', '9000', '4', '1', '2017-09-06', '13:42:03', null, null);
INSERT INTO `tasklist_copy1` VALUES ('21', 'U20; U21', 'BINE5_2', 'Truck5', '', '9000', '4', '1', '2017-09-06', '13:55:03', null, null);
INSERT INTO `tasklist_copy1` VALUES ('22', 'U21; U22', 'BINE5_3', 'Truck5', '', '9000', '4', '1', '2017-09-06', '11:13:03', null, null);
INSERT INTO `tasklist_copy1` VALUES ('23', 'U21; U22', 'BINE5_3', 'Truck5', '', '9000', '4', '1', '2017-09-06', '12:26:04', null, null);
INSERT INTO `tasklist_copy1` VALUES ('24', 'U22; U23', 'BINE5_4', 'Truck5', '', '9000', '4', '1', '2017-09-06', '12:43:03', null, null);
INSERT INTO `tasklist_copy1` VALUES ('25', 'U22; U23', 'BINE5_4', 'Truck5', '', '9000', '4', '1', '2017-09-06', '13:55:03', null, null);
INSERT INTO `tasklist_copy1` VALUES ('26', 'U23; U24', 'BINE5_5', 'Truck5', '', '9000', '4', '1', '2017-09-06', '14:12:03', null, null);
INSERT INTO `tasklist_copy1` VALUES ('27', 'U23; U24', 'BINE5_5', 'Truck5', '', '9000', '4', '1', '2017-09-06', '15:25:03', null, null);
INSERT INTO `tasklist_copy1` VALUES ('28', 'U24; U25', 'BINE5_6', 'Truck5', '', '9000', '4', '1', '2017-09-06', '15:42:03', null, null);
INSERT INTO `tasklist_copy1` VALUES ('29', 'U24; U25', 'BINE5_6', 'Truck5', '', '9000', '4', '1', '2017-09-06', '16:55:03', null, null);
INSERT INTO `tasklist_copy1` VALUES ('30', 'U25', 'BINE5_7', 'Truck5', '', '4000', '4', '1', '2017-09-06', '17:13:03', null, null);
INSERT INTO `tasklist_copy1` VALUES ('31', 'U25', 'BINE5_7', 'Truck5', '', '4000', '4', '1', '2017-09-06', '18:26:04', null, null);

-- ----------------------------
-- Table structure for tracking
-- ----------------------------
DROP TABLE IF EXISTS `tracking`;
CREATE TABLE `tracking` (
  `LocationID` int(11) NOT NULL,
  `Latitude` longtext NOT NULL,
  `Longitude` longtext NOT NULL,
  `EndDate` longtext NOT NULL,
  `UserID` int(11) NOT NULL,
  `VehicleID` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  PRIMARY KEY (`LocationID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tracking
-- ----------------------------

-- ----------------------------
-- Table structure for trxtasklist
-- ----------------------------
DROP TABLE IF EXISTS `trxtasklist`;
CREATE TABLE `trxtasklist` (
  `ReportID` int(11) NOT NULL,
  `lnkUserID` int(11) NOT NULL,
  `lnkTaskID` int(11) NOT NULL,
  `lnkLocationID` int(11) DEFAULT NULL,
  `lnkReasonID` int(11) NOT NULL,
  `Notes` longtext,
  `Status` int(11) DEFAULT NULL,
  PRIMARY KEY (`ReportID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of trxtasklist
-- ----------------------------
INSERT INTO `trxtasklist` VALUES ('1', '2', '18', '1', '1', 'Aaaaa', '1');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UserID` int(11) NOT NULL AUTO_INCREMENT,
  `Username` varchar(25) NOT NULL,
  `Phone` varchar(18) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Password` varchar(64) DEFAULT NULL,
  `lnkRoleID` int(11) NOT NULL,
  `lnkAppID` int(11) NOT NULL,
  `lnkStatusID` int(11) NOT NULL,
  `lnkDevice` int(11) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'aignatd', '085770706777', 'Agustinus Ignat Deswanto', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '2', '1');
INSERT INTO `user` VALUES ('2', 'heru', null, 'Heru Permana', 'e10adc3949ba59abbe56e057f20f883e', '1', '1', '2', '1');


-- ----------------------------
-- EF added
-- ----------------------------
drop table if exists fbHvsEstm;

    -- status : NEW, CALC
    create table fbHvsEstm (
        HvsEstmID int not null AUTO_INCREMENT
        , hvsDt datetime
        , divID varchar(255)
        , status varchar(5)
        , createdBy varchar(255)
        , createDt timestamp default CURRENT_TIMESTAMP
        , lastUpd timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
        , primary key (HvsEstmID)
    );

drop table if exists fbHvsEstmDtl;

	-- status: --DELE, ACTV 
	-- taskType: --TAXA, RSTN
    create table fbHvsEstmDtl (
        hvsEstmDtlID int not null AUTO_INCREMENT
        , hvsEstmID int 
        , TaskType varchar(5) 
        , EstmSeq integer
        , block varchar(255)
        , size1 integer
        , createDt timestamp default CURRENT_TIMESTAMP
        , lastUpd timestamp default CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
        , version int
        , primary key (HvsEstmDtlID)
    );


