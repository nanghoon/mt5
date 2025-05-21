/*
Navicat MySQL Data Transfer

Source Server         : mt5
Source Server Version : 80029
Source Host           : 13.43.12.178:3306
Source Database       : mt5

Target Server Type    : MYSQL
Target Server Version : 80029
File Encoding         : 65001

Date: 2025-05-22 00:22:29
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `id` varchar(10) DEFAULT NULL,
  `pw` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'troyrhksfl');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `text` mediumtext,
  `lang` varchar(10) DEFAULT NULL,
  `ndate` datetime DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('2', 'Dear Troy Market Customer Information', '<div><b><span style=\"font-size: 18pt;\">Scheduled for this coming Sunday, January 26th&nbsp;</span></b></div><div><b><span style=\"font-size: 18pt;\">We would like to inform you about migration.&nbsp;</span></b></div><div><b><span style=\"font-size: 18pt;\">execution downtime&nbsp;&nbsp;</span></b></div><div><b><span style=\"font-size: 18pt;\">It will last approximately 4 hours and operations will take place from 11:00 to 15:00 GMT+3. Greenwich time&nbsp;</span></b></div><div><b><span style=\"font-size: 18pt;\">(Reference url: <a href=\"https://time.is/ko/South_Korea)\">https://time.is/ko/South_Korea)</a></span></b></div><div><b><br></b></div><div><b><span style=\"font-size: 18pt;\">There is no impact as it is conducted during closed hours.&nbsp;</span></b></div><div><b><br></b></div><div><b><span style=\"font-size: 18pt;\">All charts will stop and the server will be down, so we recommend clearing your positions.</span></b></div>', 'en', null);
INSERT INTO `notice` VALUES ('3', 'High-Frequency Trading (HFT) 금지 규정 ', '<div>친애하는 Troymarket 유저 여러분&nbsp;</div><div><br></div><div><div>최근 알고리즘 거래기법에 기반한 고빈도 거래(HFT)가 금융 시장에서 다양한 문제들을 양산하고 있습니다.&nbsp;</div><div>고빈도 거래는 알고리즘 거래 형태의 일환으로 고성능의 컴퓨터 프로그램을 이용하여 실시간으로 데이터를 처리하여 수십만 건의&nbsp;</div><div>거래를 순식간에 처리하는 거래로, 은밀하며 규제되지 않는 컴퓨터 프로그램 방식으로 이루어지는 불공정한 거래의 일종으로&nbsp;</div><div>금융 시장을 왜곡 시킬 수 있는 위법적 성질을 가지고 있습니다.&nbsp;</div><div><br></div><div>고빈도 거래의 이용자들은 전략상 MT5내에서 ① Ping Order, ② Quote Stuffing, ③ Momentum Ignition, ④ Layering 및 Spoofing 등을 활용해서 시세 조종의 행위를 우려하여&nbsp;</div><div>Troymarket은 실시간 모니터링을 통해 해당 거래 방식을 이용하는 유저 확인 시 계정 정지 및 거래 수익을 모두 몰수하고 있습니다.</div><div>이점 유의하여 주시기 바랍니다.</div><div><br></div><div>감사합니다.</div></div><div><br></div>', 'ko', '2024-11-13 01:38:50');
INSERT INTO `notice` VALUES ('4', 'Prohibit of High-Frequency Trading (HFT)', '<p>Dear Troymarket users</p><p>&nbsp;</p><p>Recently, high-frequency trading (HFT) based on algorithmic trading techniques has been producing various problems in the financial market.</p><p>High-frequency transactions are part of an algorithmic transaction, processing data in real-time using high-performance computer programs, resulting in hundreds of thousands of cases</p><p>A transaction that handles transactions in an instant, a kind of unfair transaction that takes place in a stealthy, unregulated way of computer programming It has an illegal nature that can distort the financial market.</p><p>&nbsp;</p><p>Users of high-frequency transactions are concerned about market price manipulation using ① Ping Order, ② Quote Stuffing, ③ Momentum Ignition, ④ Layering, and Spoofing within MT5 strategically through real-time monitoring,&nbsp;</p><p>Troymarket forfeits all account suspension and MT5 balance revenue when identifying users using the transaction method.&nbsp;</p><p>&nbsp;</p><p>Please keep this in mind.</p><p>&nbsp;</p><p>Thank you.</p>', 'en', '2024-11-13 01:43:36');
INSERT INTO `notice` VALUES ('5', 'Regulations on abnormal transactions on the platform', '<div><div>1. Overview</div><div><br></div><div>To further regulate futures trading activities, ensure fair and organized markets, manage risks, and protect the legitimate rights of futures investors, the trading platform will strengthen regulations and management of trading activities and take action against any violators involved in abnormal behavior.</div></div><div><br></div><div>2. Abnormal Trading Activities</div><div><br></div><div>The abnormal trading activities mentioned herein include</div><div><br></div><div><div>2.1 When suspicious transactions occur in multiple accounts or single accounts identified by the platform. In this case, the platform freezes the user\'s funds and transactions. In serious cases, the platform has the right to deduct the user\'s illegal profits.</div><div><br></div><div>2.2 An unreasonable gain, including but not limited to the following examples:</div><div><br></div><div>&nbsp;2.2.1 The platform deducts all illegal income for users who engage in brokerage transactions using loopholes in the platform.</div><div><br></div><div>&nbsp;2.2.2 The platform shall deduct any additional gains incurred to users due to the abnormalities in the platform\'s payment system, and the platform shall compensate for any additional losses incurred by such abnormalities.</div><div><br></div><div>&nbsp;2.2.3 All profits generated by the index price anomaly will be deducted and any losses will be compensated.</div><div><br></div><div>&nbsp;2.2.4 Any other gains deemed unreasonable by the platform will be deducted.</div></div><div><br></div><div><div>2.3 The use of multiple accounts or devices for illegal arbitrage, including, but not limited to, transaction fees, fees, bonuses, etc. The system identifies fraud through multidimensional features and takes corresponding action against all violators involved in illegal arbitrage, including, but not limited to, account blocking, asset freezes, login restrictions, advanced KYC, etc.</div><div><br></div><div>2.4 High-frequency trading. High-frequency trading is prohibited on some products on the platform. The platform evaluates the behavior of all relevant accounts of users (based on IP, device, funds, duplicate transactions, redundant recommendations, and other factors) to determine whether users are involved in high-frequency trading.</div><div><br></div><div>2.5 Platforms have the right to dynamically remove all trading pairs, suspend trading, or lower leverage limits without compensation. Users cannot claim compensation for not being aware of this provision.</div><div><br></div><div>2.6 Distribute or disseminate rumours. The platform reserves the right to deduct user funds for any losses arising from rumours negatively affecting the platform\'s brand image.</div><div><br></div><div>2.7 Multiple self-dealing between, but not limited to, accounts under the de facto control of, the sharing of funding sources, the same IP address, concurrent transactions, and other abnormal activities, multiple self-dealing between accounts, multiple transactions between accounts under the de facto control of investors, and multiple transactions between accounts under the de facto control of investors, using single or multiple affiliated accounts with real controlling relationships to manipulate market prices through matching orders or other means. Multiple transactions between customers within a single or affiliated group of accounts with real controlling relationships.</div><div><br></div><div>2.8 Frequent orders coming in and being cancelled within the same date may affect the transaction price or mislead other investors (if frequent orders come in and are cancelled).</div><div><br></div><div>2.9 The frequent occurrence and cancellation of large orders during the day can affect transaction prices or mislead other investors (frequent occurrence and cancellation of large orders).</div><div><br></div><div>2.10 The number of positions opened per day for specific trading instruments, including but not limited to, spot and futures, exceeds the daily position limit set by the platform.</div><div><br></div><div>2.11 If you use a program transaction to trade orders that may affect the security of your system or normal trading orders.</div><div><br></div><div>2.12 Other acts that the Company deems abnormal</div></div><div><br></div><div><div>3. Rules of Management for Abnormal Transaction Behavior</div><div><br></div><div>These rules are designed to strengthen risk management for abnormal trading activities in the futures market. Your exchange will take the following actions without prior notice to all accounts or users involved in abnormal activities set forth in these rules.</div><div><br></div><div>3.1 The platform exercises the right to decide whether to continue working with you and, upon confirmation of the end of the cooperation, prohibits violators and related accounts (depending on IP, device, funds, transaction behavior, and other factors) from accessing the platform services and deducts any profits that have been gained fraudulently.</div><div><br></div><div>3.2 Freeze criminal funds and/or all transactions.</div><div><br></div><div>3.3 Disable the relevant account and forfeit the remaining account assets.</div><div><br></div><div>3.4 Restrictions are placed on withdrawals and deposits of related accounts.</div><div><br></div><div>3.5 Restrict position opening, demand position liquidation within specified time and enforce compulsory liquidation.</div><div><br></div><div>3.6 Restrict, suspend, or block violators from accessing your official website.</div><div><br></div><div>3.7 Requires users to report on the transaction.</div><div><br></div><div>3.8 Other applicable measures shall be taken in accordance with the business regulations of the Exchange.</div><div><br></div><div>4. disclaimer</div><div><br></div><div>When using your services, users must comply with local laws and regulations and your rules, agree to the regulation and supervision of the exchange, and conduct conscientious transactions. You have the right to seek, to the extent permitted by law, any remedy, including but not limited to, the restrictions on the transaction activities of that account for abnormal transaction activities. You are not liable for any economic losses arising from the breach of these rules. You retain the right to the final interpretation of the rules.</div></div><div><br></div><div><br></div>', 'en', '2024-12-02 03:38:44');
INSERT INTO `notice` VALUES ('6', 'Important Notice on Troymarket system update ', '<div><b>Dear Troymarket users,&nbsp;</b></div><div><br></div><div>To improve service quality and user experience, Troymarket will a system update and server expansion from 6:00 PM to 5:00 AM on May 2, 2025 (GMT+3).</div><div>The upgrade is expected to last 9 hour. Before the upgrade, we recommend that you close all MT5 positions before the system maintenance time.</div><div>Otherwise, some balance and PNL will be affected.&nbsp;</div><div>Normal operations will resume after the upgrade is completed.</div><div><br></div><div><b>Notes:</b></div><div>The duration of the system update is an estimate and may be subject to change without further notice.</div><div>We apologize for any inconvenience this may cause and appreciate your support and understanding.</div>', 'en', '2025-04-28 00:00:00');

-- ----------------------------
-- Table structure for `popup`
-- ----------------------------
DROP TABLE IF EXISTS `popup`;
CREATE TABLE `popup` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `sub` text,
  `pdate` varchar(100) DEFAULT NULL,
  `pop` int DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of popup
-- ----------------------------
INSERT INTO `popup` VALUES ('1', 'System update', 'Troymarket will a system update and sever expansion ', 'from 6:00 PM to 5:00 AM on May 3, 2025 (GMT+3)', '0');
