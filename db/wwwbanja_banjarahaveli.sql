-- phpMyAdmin SQL Dump
-- version 3.4.11.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 11, 2013 at 12:40 AM
-- Server version: 5.5.23
-- PHP Version: 5.3.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `wwwbanja_banjarahaveli`
--

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_config`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_config` (
  `namekey` varchar(200) NOT NULL,
  `value` text,
  PRIMARY KEY (`namekey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_acymailing_config`
--

INSERT INTO `jos_acymailing_config` (`namekey`, `value`) VALUES
('level', 'Starter'),
('version', '1.5.2'),
('from_name', 'Progati Web Portal'),
('from_email', 'zaman.sarker@grameensolutions.com'),
('reply_name', 'Progati Web Portal'),
('reply_email', 'zaman.sarker@grameensolutions.com'),
('bounce_email', ''),
('add_names', '1'),
('mailer_method', 'phpmail'),
('encoding_format', '8bit'),
('charset', 'UTF-8'),
('word_wrapping', '150'),
('hostname', ''),
('embed_images', '1'),
('embed_files', '1'),
('editor', '0'),
('multiple_part', '1'),
('sendmail_path', '/usr/sbin/sendmail'),
('smtp_host', 'localhost'),
('smtp_port', ''),
('smtp_secured', ''),
('smtp_auth', '0'),
('smtp_username', ''),
('smtp_password', ''),
('smtp_keepalive', '1'),
('queue_nbmail', '40'),
('queue_type', 'auto'),
('queue_delay', '3600'),
('queue_try', '3'),
('queue_pause', '2'),
('allow_visitor', '1'),
('require_confirmation', '1'),
('priority_newsletter', '3'),
('allowedfiles', 'zip,doc,docx,pdf,xls,txt,gzip,rar,jpg,gif,xlsx,pps,csv,bmp,epg,ico,odg,odp,ods,odt,png,ppt,swf,xcf'),
('uploadfolder', 'components/com_acymailing/upload'),
('confirm_redirect', ''),
('subscription_message', '1'),
('notification_unsuball', ''),
('cron_next', '1251990901'),
('confirmation_message', '1'),
('welcome_message', '1'),
('unsub_message', '1'),
('cron_last', '0'),
('cron_fromip', ''),
('cron_report', ''),
('cron_frequency', '900'),
('cron_sendreport', '2'),
('cron_sendto', 'zaman.sarker@grameensolutions.com'),
('cron_fullreport', '1'),
('cron_savereport', '2'),
('cron_savefolder', 'administrator/components/com_acymailing/upload/report.log'),
('cron_savepath', 'administrator/components/com_acymailing/logs/report.log'),
('notification_created', 'zaman.sarker@grameensolutions.com'),
('notification_accept', ''),
('notification_refuse', ''),
('forward', '0'),
('description_starter', 'Joomla!™ E-mail Marketing'),
('description_essential', 'Joomla!™ E-mail Marketing'),
('description_business', 'Joomla!™ E-mail Marketing'),
('description_enterprise', 'Joomla!™ Marketing Campaign'),
('priority_followup', '2'),
('unsub_redirect', ''),
('show_footer', '0'),
('use_sef', '0'),
('itemid', '0'),
('css_module', 'default'),
('css_frontend', 'default'),
('css_backend', 'default'),
('installcomplete', '1'),
('bounce_email_bounce', 'delete'),
('bounce_regex_bounce', 'deliver|daemon|fail|system|return|impos'),
('bounce_action_bounce', 'unsub'),
('bounce_rules_bounce', 'Mailbox not accessible'),
('bounce_email_end', 'forward'),
('bounce_forward_end', 'zaman.sarker@grameensolutions.com'),
('bounce_rules_end', 'Final Action'),
('Starter', '0'),
('Essential', '1'),
('Business', '2'),
('Enterprise', '3'),
('autosub', 'None'),
('allow_modif', 'data'),
('notification_unsub', ''),
('sub_redirect', ''),
('modif_redirect', ''),
('unsubscription_message', '1'),
('confirm_message', '0'),
('frontend_subject', '1'),
('frontend_pdf', '0'),
('frontend_print', '0'),
('show_description', '1'),
('show_headings', '1'),
('show_senddate', '1'),
('show_filter', '1'),
('open_popup', '0'),
('bounce_action_maxtry', 'noaction'),
('bounce_action_lists_maxtry', '1');

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_fields`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_fields` (
  `fieldid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `fieldname` varchar(250) NOT NULL,
  `namekey` varchar(50) NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `value` text NOT NULL,
  `published` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `ordering` smallint(5) unsigned DEFAULT '99',
  `options` text,
  `core` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `required` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `backend` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `frontcomp` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `default` varchar(250) DEFAULT NULL,
  `listing` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fieldid`),
  UNIQUE KEY `namekey` (`namekey`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_acymailing_fields`
--

INSERT INTO `jos_acymailing_fields` (`fieldid`, `fieldname`, `namekey`, `type`, `value`, `published`, `ordering`, `options`, `core`, `required`, `backend`, `frontcomp`, `default`, `listing`) VALUES
(1, 'NAMECAPTION', 'name', 'text', '', 1, 1, '', 1, 1, 1, 1, '', 1),
(2, 'EMAILCAPTION', 'email', 'text', '', 1, 2, '', 1, 1, 1, 1, '', 1),
(3, 'RECEIVE', 'html', 'radio', '0::JOOMEXT_TEXT\n1::HTML', 1, 3, '', 1, 1, 1, 1, '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_filter`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_filter` (
  `filid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `published` tinyint(3) unsigned DEFAULT NULL,
  `lasttime` int(10) unsigned DEFAULT NULL,
  `trigger` text,
  `report` text,
  `action` text,
  `filter` text,
  PRIMARY KEY (`filid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_list`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_list` (
  `name` varchar(250) NOT NULL,
  `description` text,
  `ordering` smallint(10) unsigned DEFAULT NULL,
  `listid` smallint(10) unsigned NOT NULL AUTO_INCREMENT,
  `published` tinyint(11) DEFAULT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `color` varchar(30) DEFAULT NULL,
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `welmailid` mediumint(11) DEFAULT NULL,
  `unsubmailid` mediumint(11) DEFAULT NULL,
  `type` enum('list','campaign') NOT NULL DEFAULT 'list',
  `access_sub` varchar(250) DEFAULT 'all',
  `access_manage` varchar(250) NOT NULL DEFAULT 'none',
  `languages` varchar(250) NOT NULL DEFAULT 'all',
  PRIMARY KEY (`listid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_acymailing_list`
--

INSERT INTO `jos_acymailing_list` (`name`, `description`, `ordering`, `listid`, `published`, `userid`, `alias`, `color`, `visible`, `welmailid`, `unsubmailid`, `type`, `access_sub`, `access_manage`, `languages`) VALUES
('Newsletters', 'Receive our latest news', 1, 1, 1, 62, 'mailing_list', '#3366ff', 1, NULL, NULL, 'list', 'all', 'none', 'all');

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_listcampaign`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_listcampaign` (
  `campaignid` smallint(10) unsigned NOT NULL,
  `listid` smallint(10) unsigned NOT NULL,
  PRIMARY KEY (`campaignid`,`listid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_listmail`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_listmail` (
  `listid` int(10) unsigned NOT NULL,
  `mailid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`listid`,`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_listsub`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_listsub` (
  `listid` smallint(11) unsigned NOT NULL,
  `subid` int(11) unsigned NOT NULL,
  `subdate` int(11) unsigned DEFAULT NULL,
  `unsubdate` int(11) unsigned DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`listid`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_mail`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_mail` (
  `mailid` mediumint(10) unsigned NOT NULL AUTO_INCREMENT,
  `subject` varchar(250) NOT NULL,
  `body` longtext NOT NULL,
  `altbody` longtext NOT NULL,
  `published` tinyint(4) DEFAULT '1',
  `senddate` int(10) unsigned DEFAULT NULL,
  `created` int(10) unsigned DEFAULT NULL,
  `fromname` varchar(250) NOT NULL,
  `fromemail` varchar(250) NOT NULL,
  `replyname` varchar(250) NOT NULL,
  `replyemail` varchar(250) NOT NULL,
  `type` enum('news','autonews','followup','unsub','welcome','notification') NOT NULL DEFAULT 'news',
  `visible` tinyint(4) NOT NULL DEFAULT '1',
  `userid` int(10) unsigned DEFAULT NULL,
  `alias` varchar(250) DEFAULT NULL,
  `attach` text,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `tempid` smallint(11) NOT NULL DEFAULT '0',
  `key` varchar(200) DEFAULT NULL,
  `frequency` varchar(50) DEFAULT NULL,
  `params` text,
  `sentby` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`mailid`),
  KEY `senddate` (`senddate`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jos_acymailing_mail`
--

INSERT INTO `jos_acymailing_mail` (`mailid`, `subject`, `body`, `altbody`, `published`, `senddate`, `created`, `fromname`, `fromemail`, `replyname`, `replyemail`, `type`, `visible`, `userid`, `alias`, `attach`, `html`, `tempid`, `key`, `frequency`, `params`, `sentby`) VALUES
(1, 'New Subscriber on your website', '<p>Hello {subtag:name},</p><p>A new user has been created in AcyMailing : </p><blockquote><p>Name : {user:name}</p><p>Email : {user:email}</p><p>IP : {user:ip} </p></blockquote>', '', 1, NULL, NULL, '', '', '', '', 'notification', 0, NULL, 'notification_created', NULL, 1, 0, NULL, NULL, NULL, NULL),
(2, 'A User unsubscribed from all your lists', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from all your lists</p>', '', 1, NULL, NULL, '', '', '', '', 'notification', 0, NULL, 'notification_unsuball', NULL, 1, 0, NULL, NULL, NULL, NULL),
(3, 'A User unsubscribed', '<p>Hello {subtag:name},</p><p>The user {user:name} : {user:email} unsubscribed from your list</p>', '', 1, NULL, NULL, '', '', '', '', 'notification', 0, NULL, 'notification_unsub', NULL, 1, 0, NULL, NULL, NULL, NULL),
(4, 'A User refuses to receive e-mails from your website', '<p>The User {user:name} : {user:email} refuses to receive any e-mail anymore from your website.</p>', '', 1, NULL, NULL, '', '', '', '', 'notification', 0, NULL, 'notification_refuse', NULL, 1, 0, NULL, NULL, NULL, NULL),
(5, '{subtag:name}, please confirm your subscription', '<p> Hello {subtag:name}, </p><p><strong>{confirm}Click here to confirm your subscription{/confirm}</strong></p>', '', 1, NULL, NULL, '', '', '', '', 'notification', 0, NULL, 'confirmation', NULL, 1, 0, NULL, NULL, NULL, NULL),
(6, 'AcyMailing Cron Report', '<p>{report}</p><p>{detailreport}</p>', '', 1, NULL, NULL, '', '', '', '', 'notification', 0, NULL, 'report', NULL, 1, 0, NULL, NULL, NULL, NULL),
(7, 'A Newsletter has been generated : "{subject}"', '<p>The Newsletter issue {issuenb} has been generated : </p><p>Subject : {subject}</p><p>{body}</p>', '', 1, NULL, NULL, '', '', '', '', 'notification', 0, NULL, 'notification_autonews', NULL, 1, 0, NULL, NULL, NULL, NULL),
(8, 'Modify your subscription', '<p>Hello {subtag:name}, </p><p>You requested some changes on your subscription,</p><p>Please {modify}click here{/modify} to be identified as the owner of this account and then modify your subscription.</p>', '', 1, NULL, NULL, '', '', '', '', 'notification', 0, NULL, 'modif', NULL, 1, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_queue`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_queue` (
  `senddate` int(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `mailid` mediumint(10) unsigned NOT NULL,
  `priority` tinyint(3) unsigned DEFAULT '3',
  `try` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subid`,`mailid`),
  KEY `senddate` (`senddate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_stats`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_stats` (
  `mailid` mediumint(10) unsigned NOT NULL,
  `senthtml` int(10) unsigned NOT NULL DEFAULT '0',
  `senttext` int(10) unsigned NOT NULL DEFAULT '0',
  `senddate` int(10) unsigned NOT NULL,
  `openunique` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `opentotal` int(10) unsigned NOT NULL DEFAULT '0',
  `bounceunique` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `fail` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `clicktotal` int(10) unsigned NOT NULL DEFAULT '0',
  `clickunique` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `unsub` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `forward` mediumint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mailid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_subscriber`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_subscriber` (
  `subid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `userid` int(10) unsigned DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `created` int(10) unsigned DEFAULT NULL,
  `confirmed` tinyint(4) NOT NULL DEFAULT '0',
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  `accept` tinyint(4) NOT NULL DEFAULT '1',
  `ip` varchar(100) DEFAULT NULL,
  `html` tinyint(4) NOT NULL DEFAULT '1',
  `key` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`subid`),
  UNIQUE KEY `email` (`email`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `jos_acymailing_subscriber`
--

INSERT INTO `jos_acymailing_subscriber` (`subid`, `email`, `userid`, `name`, `created`, `confirmed`, `enabled`, `accept`, `ip`, `html`, `key`) VALUES
(4, 'rajib.rahman@grameensolutions.com', 65, 'SR Rahman', 1291011882, 1, 1, 1, '127.0.0.1', 1, 'd06cf2c5919fb3ee7a14a74839f4a0ad'),
(8, 'rajib1111@gmail.com', 69, 'Rajib Rahman', 1323410060, 1, 1, 1, '127.0.0.1', 1, 'ebbe93795e748768148ec10f45e6ec6a');

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_template`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_template` (
  `tempid` smallint(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) DEFAULT NULL,
  `description` text,
  `body` longtext,
  `altbody` longtext,
  `created` int(10) unsigned DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT '1',
  `premium` tinyint(4) NOT NULL DEFAULT '0',
  `ordering` smallint(10) unsigned NOT NULL DEFAULT '99',
  `namekey` varchar(50) NOT NULL,
  `styles` text,
  `subject` varchar(250) DEFAULT NULL,
  `stylesheet` text,
  `fromname` varchar(250) DEFAULT NULL,
  `fromemail` varchar(250) DEFAULT NULL,
  `replyname` varchar(250) DEFAULT NULL,
  `replyemail` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`tempid`),
  UNIQUE KEY `namekey` (`namekey`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_acymailing_template`
--

INSERT INTO `jos_acymailing_template` (`tempid`, `name`, `description`, `body`, `altbody`, `created`, `published`, `premium`, `ordering`, `namekey`, `styles`, `subject`, `stylesheet`, `fromname`, `fromemail`, `replyname`, `replyemail`) VALUES
(1, 'White Shadow Red', '<img src="components/com_acymailing/templates/newsletter-1/newsletter-1.png" />', '<div style="background-color:#e2e8df;font-size:100%;font-family:Tahoma, Geneva, Kalimati, sans-serif;color:#8a8a8a;text-align:center" width="100%">\r\n\r\n<table width="560" cellpadding="0" cellspacing="0" style="text-align:left;margin:auto;">\r\n    <tr>\r\n    	<td colspan="3" class="hideonline" style="font-size:10px;color:#000000;margin:auto;text-align:center;">This email contains graphics, so if you don''t see them, {readonline}view it in your browser{/readonline}.</td>\r\n    </tr>\r\n\r\n    <tr>\r\n    	<td colspan="3" height="10"></td>\r\n    </tr>\r\n\r\n    <tr>\r\n        <td width="37">\r\n        </td>\r\n\r\n        <td bgcolor="#fbfbf7" width="496" valign="top">\r\n        	<table width="100%" cellpadding="0" cellspacing="0">\r\n                <tr>\r\n                	<td height="20" colspan="2">\r\n\r\n                    </td>\r\n\r\n                </tr>\r\n                <tr>\r\n                	<td width="20">\r\n                    </td>\r\n                    <td height="110" width="456" style="background-color:#F9F7D3">\r\n                    	<table width="456" height="110" cellpadding="0" cellspacing="0">\r\n                            <tr>\r\n                                <td height="11" colspan="3">\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                            	<td width="7" >\r\n                                </td>\r\n                                <td>\r\n                                	<img src="http://www.acyba.com/images/templates/newsletter-1/logo-icon.png" alt=""/>\r\n                                </td>\r\n                                <td valign="top">\r\n                                	<table width="100%" height="100%" cellpadding="0" cellspacing="0">\r\n                                    	<tr>\r\n                                        	<td align="right"  valign="top" height="71">\r\n                                            	<h1>AcyMailing is Out!</h1>\r\n                                            </td>\r\n                                            <td width="15">\r\n                                            </td>\r\n\r\n                                        </tr>\r\n                                        <tr>\r\n                                        	<td align="right" height="15" valign="baseline" >\r\n                                            	<img alt="" src="http://www.acyba.com/images/templates/newsletter-1/company-name.png" height="15"/>\r\n                                            </td>\r\n                                        </tr>\r\n                                     </table>\r\n\r\n\r\n                                </td>\r\n\r\n\r\n                            </tr>\r\n\r\n                            <tr>\r\n                                <td height="3"  colspan="3">\r\n\r\n                                </td>\r\n\r\n\r\n                            </tr>\r\n\r\n\r\n                        </table>\r\n                    </td>\r\n                    <td width="20">\r\n                    </td>\r\n\r\n                </tr>\r\n                <tr>\r\n                	<td colspan="5">\r\n                    	<table width="100%">\r\n                        	<tr>\r\n                            	<td width="60">\r\n                                </td>\r\n                                <td>\r\n                                	<table width="100%">\r\n                                    	<tr>\r\n                                        	<td>\r\n                                                    <h3>E-Mail</h3>\r\n                                                    <h6>&nbsp;</h6>\r\n                                                    <table>\r\n                                                    	<tr>\r\n                                                        	<td width="280" style="font-size:10px;text-align:justify" valign="top">\r\n                                                           	 	Electronic mail, often abbreviated as email or e-mail, is a method of exchanging digital messages, designed primarily for human use. E-mail systems are based on a store-and-forward model in which e-mail computer server systems accept, forward, deliver and store messages on behalf of users, who only need to connect to the e-mail infrastructure, typically an e-mail server, with a network-enabled device (e.g., a personal computer) for the duration of message submission or retrieval.<br/><a href="http://en.wikipedia.org/wiki/E-mail">Wikipedia</a>\r\n                                                            </td>\r\n                                                            <td>\r\n                                                            	<img alt="" src="http://www.acyba.com/images/templates/newsletter-1/acymailing.png" />\r\n                                                            </td>\r\n                                                        </tr>\r\n													</table>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n\r\n                                </td>\r\n                                <td width="60">\r\n                                </td>\r\n                            </tr>\r\n\r\n                            <tr>\r\n                            	<td width="60">\r\n                                </td>\r\n                                <td>\r\n                                	<table width="100%">\r\n                                    	<tr>\r\n                                        	<td>\r\n                                                    <h3>Marketing Campaign</h3>\r\n                                                    <h6>&nbsp;</h6>\r\n                                                    <table>\r\n                                                    	<tr>\r\n                                                        	<td width="140" style="font-size:10px;text-align:justify" valign="top">\r\n                                                           	 	Marketing is an integrated communications-based process through which individuals and communities are informed or persuaded that existing and newly-identified needs and wants may be satisfied by the products and services of others.\r\n                                                            </td>\r\n                                                            <td>\r\n                                                            	<img alt="" src="components/com_acymailing/templates/newsletter-1/vert-separator.png" />\r\n                                                            </td>\r\n                                                            <td>\r\n                                                            	<img alt="" src="http://www.acyba.com/images/templates/newsletter-1/essential.png" />\r\n                                                            </td>\r\n                                                            <td>\r\n                                                            	<img alt="" src="components/com_acymailing/templates/newsletter-1/vert-separator.png" />\r\n                                                            </td>\r\n                                                            <td width="140" style="font-size:10px;text-align:justify" valign="top">\r\n                                                           	 	Marketing is used to create the customer, to keep the customer and to satisfy the customer.  <a href="http://en.wikipedia.org/wiki/Marketing_campaign">Wikipedia</a>\r\n                                                            </td>\r\n                                                        </tr>\r\n													</table>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n\r\n                                </td>\r\n                                <td width="60">\r\n                                </td>\r\n                            </tr>\r\n\r\n                            <tr>\r\n                            	<td width="60">\r\n                                </td>\r\n                                <td>\r\n                                	<table width="100%">\r\n                                    	<tr>\r\n                                        	<td>\r\n                                                    <h3>Joomla!</h3>\r\n                                                    <h6>&nbsp;</h6>\r\n                                                    <table>\r\n                                                    	<tr>\r\n                                                        	<td width="200" style="font-size:10px;text-align:justify" valign="top">\r\n                                                           	 	Joomla! is a content management system platform for publishing content on the World Wide Web and intranets as well as a Model–view–controller (MVC) Web Application Development framework.\r\n                                                            </td>\r\n                                                            <td>\r\n                                                            	<img alt="" src="components/com_acymailing/templates/newsletter-1/vert-separator.png" />\r\n                                                            </td>\r\n                                                            <td width="200" style="font-size:10px;text-align:justify" valign="top" >\r\n                                                           	 	The system includes features such as page caching to improve performance, RSS feeds, printable versions of pages, news flashes, blogs, polls, website searching, and language internationalization.<br/><a href="http://en.wikipedia.org/wiki/Joomla">Wikipedia</a>\r\n                                                            </td>\r\n                                                        </tr>\r\n													</table>\r\n                                            </td>\r\n                                        </tr>\r\n                                    </table>\r\n\r\n                                </td>\r\n                                <td width="60">\r\n                                </td>\r\n                            </tr>\r\n\r\n\r\n                        </table>\r\n                    </td>\r\n                </tr>\r\n\r\n            </table>\r\n        </td>\r\n        <td width="27">\r\n        </td>\r\n\r\n    </tr>\r\n    <tr>\r\n    	<td colspan="3"><img src="components/com_acymailing/templates/newsletter-1/page-footer.png" alt=""/></td>\r\n    </tr>\r\n\r\n    <tr>\r\n    	<td colspan="3" style="font-size:10px;color:#000000;margin:auto;text-align:center;">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</td>\r\n    </tr>\r\n</table>\r\n\r\n\r\n</div>', '', NULL, 1, 0, 1, 'newsletter-1', 'a:9:{s:16:"acymailing_title";s:89:"color:#8a8a8a;font-weight:normal;font-size:14px;margin:0;border-bottom:5px solid #d39f9f;";s:16:"acymailing_unsub";s:31:"font-weight:bold;color:#000000;";s:19:"acymailing_readmore";s:14:"color:#d39f9f;";s:17:"acymailing_online";s:31:"font-weight:bold;color:#000000;";s:6:"tag_h1";s:126:"margin-bottom:0;margin-top:0;font-family:Tahoma, Geneva, Kalimati, sans-serif;font-size:26px;color:#d47e7e;vertical-align:top;";s:6:"tag_h2";s:89:"color:#8a8a8a;font-weight:normal;font-size:14px;margin:0;border-bottom:5px solid #d39f9f;";s:6:"tag_h6";s:34:"background-color:#d39f9f;margin:0;";s:6:"tag_h3";s:57:"color:#8a8a8a;font-weight:normal;font-size:100%;margin:0;";s:8:"color_bg";s:7:"#e2e8df";}', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Clean White Pink', '<img src="components/com_acymailing/templates/newsletter-2/newsletter-2.png" />', '<div style="background-color:#ffffff;font-size:100%;font-family:Tahoma, Geneva, Kalimati, sans-serif;color:#8a8a8a;text-align:center" width="100%">\r\n\r\n<table width="600" cellpadding="0" cellspacing="0" style="text-align:left;margin:auto;">\r\n    <tr>\r\n    	<td colspan="3" class="hideonline" style="font-size:10px;color:#000000;margin:auto;text-align:center;">This email contains graphics, so if you don''t see them, {readonline}view it in your browser{/readonline}.</td>\r\n    </tr>\r\n\r\n    <tr>\r\n    	<td colspan="3" height="30"></td>\r\n    </tr>\r\n\r\n    <tr>\r\n\r\n        <td width="370" valign="top">\r\n        	<table cellpadding="0" cellspacing="0">\r\n            	<tr>\r\n                	<td height="40" valign="top">\r\n                    	<h1>AcyMailing is Out!</h1>\r\n                    </td>\r\n\r\n                </tr>\r\n\r\n                <tr>\r\n                	<td>\r\n\r\n                        <h3>E-Mail</h3>\r\n                        <h6>&nbsp;</h6>\r\n                        <table>\r\n                            <tr>\r\n                                <td style="text-align:justify">\r\n                                <p style="font-size:10px;margin-top:0px;">Electronic mail, often abbreviated as email or e-mail, is a method of exchanging digital messages, designed primarily for human use.<br/><a href="http://en.wikipedia.org/wiki/E-mail">Wikipedia</a></p>\r\n                                </td>\r\n                                <td width="30%" style="text-align:center">\r\n                                    <img src="http://www.acyba.com/images/templates/newsletter-1/acymailing.png" alt="" />\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td colspan="2" align="right">\r\n                                    <a href="#" style="font-size:10px;color:#999999;">Read More</a>\r\n                                </td>\r\n                            </tr>\r\n                         </table>\r\n                    </td>\r\n\r\n                </tr>\r\n                <tr>\r\n                	<td height="20">\r\n                    </td>\r\n                </tr>\r\n                <tr>\r\n                	<td>\r\n                        <h3>Marketing Campaign</h3>\r\n                        <h6>&nbsp;</h6>\r\n                        <table>\r\n                            <tr>\r\n                                <td valign="top" style="text-align:justify" width="35%">\r\n                                <p style="font-size:10px;margin-top:0px;">Marketing is an integrated communications-based process through which individuals and communities are informed or persuaded that existing and newly-identified needs and wants may be satisfied by the products and services of others.</p>\r\n                                </td>\r\n                                <td>\r\n                                    <img src="components/com_acymailing/templates/newsletter-1/vert-separator.png" alt="" />\r\n                                </td>\r\n                                <td style="text-align:center">\r\n                                    <img src="http://www.acyba.com/images/templates/newsletter-1/essential.png" alt=""  />\r\n                                </td>\r\n                                <td>\r\n                                    <img src="components/com_acymailing/templates/newsletter-1/vert-separator.png" alt="" />\r\n                                </td>\r\n                                <td  valign="top" style="text-align:justify" width="30%">\r\n                                    <p style="font-size:10px;margin-top:0px;">Marketing is used to create the customer, to keep the customer and to satisfy the customer.  <a href="http://en.wikipedia.org/wiki/Marketing_campaign">Wikipedia</a></p>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td colspan="5" align="right">\r\n                                    <a href="#" style="font-size:10px;color:#999999;">Read More</a>\r\n                                </td>\r\n                            </tr>\r\n\r\n\r\n                         </table>\r\n                    </td>\r\n\r\n                </tr>\r\n            </table>\r\n        </td>\r\n\r\n        <td width="20">\r\n        </td>\r\n\r\n        <td width="210" valign="top">\r\n        	<table cellpadding="0" cellspacing="0">\r\n            	<tr>\r\n                	<td>\r\n                    	<img src="http://www.acyba.com/images/templates/newsletter-2/logo-icon.jpg" width="207" height="137" alt="">\r\n                    </td>\r\n\r\n                </tr>\r\n                <tr>\r\n                	<td>\r\n                        <h3>Joomla!</h3>\r\n                        <h6>&nbsp;</h6>\r\n                        <table>\r\n                            <tr>\r\n                                <td style="text-align:justify">\r\n                                <p style="font-size:10px;margin-top:0px;">Joomla! is a content management system platform for publishing content on the World Wide Web and intranets as well as a Model–view–controller (MVC) Web Application Development framework.</p>\r\n                                </td>\r\n                           </tr>\r\n\r\n                           <tr>\r\n                                <td>\r\n                                <img src="components/com_acymailing/templates/newsletter-2/hori-separator.png" alt="" />\r\n                                </td>\r\n                           </tr>\r\n\r\n                           <tr>\r\n                                <td style="text-align:justify">\r\n                                    <p style="font-size:10px;margin-top:0px;">The system includes features such as page caching to improve performance, RSS feeds, printable versions of pages, news flashes, blogs, polls, website searching, and language internationalization.<br/><a href="http://en.wikipedia.org/wiki/Joomla">Wikipedia</a></p>\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td align="right">\r\n                                    <a href="#" style="font-size:10px;color:#999999;">Read More</a>\r\n                                </td>\r\n                            </tr>\r\n                         </table>\r\n                    </td>\r\n\r\n                </tr>\r\n\r\n            </table>\r\n        </td>\r\n\r\n    </tr>\r\n    <tr>\r\n    	<td colspan="3" height="30"></td>\r\n    </tr>\r\n\r\n    <tr>\r\n    	<td colspan="3" style="font-size:10px;color:#000000;margin:auto;text-align:center;">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</td>\r\n    </tr>\r\n</table>\r\n\r\n\r\n</div>', '', NULL, 1, 0, 2, 'newsletter-2', 'a:6:{s:16:"acymailing_title";s:63:"color:#8a8a8a;text-align:right;border-bottom:6px solid #d39fc9;";s:6:"tag_h1";s:143:"margin-bottom:0;margin-top:0;font-family:Tahoma, Geneva, Kalimati, sans-serif;font-size:26px;color:#d47e7e;vertical-align:top;text-align:center";s:8:"color_bg";s:7:"#ffffff";s:6:"tag_h2";s:63:"color:#8a8a8a;text-align:right;border-bottom:6px solid #d39fc9;";s:6:"tag_h3";s:73:"color:#8a8a8a;text-align:right;ont-weight:normal;font-size:100%;margin:0;";s:6:"tag_h6";s:34:"background-color:#d39fc9;margin:0;";}', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Rounders and corners', '<img src="components/com_acymailing/templates/newsletter-3/newsletter-3.png" />', '<div style="background-color:#dfe6e8;font-size:100%;font-family:Tahoma, Geneva, Kalimati, sans-serif;color:#8a8a8a;text-align:center" width="100%">\r\n\r\n<table width="600" cellpadding="0" cellspacing="0" style="text-align:left;margin:auto;">\r\n    <tr>\r\n    	<td colspan="3" class="hideonline" style="font-size:10px;color:#000000;margin:auto;text-align:center;">This email contains graphics, so if you don''t see them, {readonline}view it in your browser{/readonline}.</td>\r\n    </tr>\r\n\r\n    <tr>\r\n    	<td colspan="3" height="30"></td>\r\n    </tr>\r\n\r\n    <tr>\r\n\r\n        <td width="216" valign="top">\r\n        	<table cellpadding="0" cellspacing="0">\r\n            	<tr>\r\n                	<td style="text-align: center">\r\n                    	<img src="http://www.acyba.com/images/templates/newsletter-3/logo-icon.jpg" width="207" height="137" alt="">\r\n                    </td>\r\n\r\n                </tr>\r\n\r\n                <tr>\r\n                	<td height="20">\r\n\r\n                    </td>\r\n\r\n                </tr>\r\n\r\n                <tr>\r\n                	<td>\r\n\r\n                            <table cellspacing="0" cellpadding="0">\r\n                                <tr style="line-height:0;">\r\n                                    <td colspan="3" width="216" height="15">\r\n                                    <img src="components/com_acymailing/templates/newsletter-3/top23rds.png" alt="" />\r\n                                    </td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td  bgcolor="#FFFFFF" width="15"></td>\r\n                                    <td bgcolor="#FFFFFF" width="186" >\r\n                                        <h3>Joomla!</h3>\r\n                                        <h6>&nbsp;</h6>\r\n                                        <table>\r\n                                            <tr>\r\n\r\n                                                <td>\r\n                                                <p style="font-size:10px;margin-top:0px;">Joomla! is a content management system platform for publishing content on the World Wide Web and intranets as well as a Model–view–controller (MVC) Web Application Development framework.</p>\r\n                                                <img src="components/com_acymailing/templates/newsletter-2/hori-separator.png" alt="" />\r\n                                                <p style="font-size:10px;">The system includes features such as page caching to improve performance, RSS feeds, printable versions of pages, news flashes, blogs, polls, website searching, and language internationalization.<br/><a href="http://en.wikipedia.org/wiki/Joomla">Wikipedia</a></p>\r\n                                                </td>\r\n\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td align="right">\r\n                                                    <a href="#" style="font-size:10px;color:#999999;">Read More</a>\r\n                                                </td>\r\n                                            </tr>\r\n                                      </table>\r\n\r\n\r\n                                    </td>\r\n                                    <td  bgcolor="#FFFFFF" width="15"></td>\r\n                                </tr>\r\n                                <tr style="line-height:0;">\r\n                                    <td  colspan="3" width="216" height="15">\r\n                                    <img src="components/com_acymailing/templates/newsletter-3/bottom23rds.png" alt=""/>\r\n                                    </td>\r\n                                </tr>\r\n                            </table>\r\n                    </td>\r\n\r\n                </tr>\r\n\r\n            </table>\r\n        </td>\r\n\r\n\r\n\r\n\r\n        <td width="20">\r\n        </td>\r\n  <td width="364" valign="top">\r\n        	<table cellpadding="0" cellspacing="0">\r\n            	<tr>\r\n                	<td width="325" height="48" style="background-color:#ffffff;color:#d47e7e;text-align:center;">\r\n                        <h1>AcyMailing is Out!</h1>\r\n                  </td>\r\n\r\n                </tr>\r\n\r\n                <tr>\r\n                	<td height="20">\r\n\r\n                    </td>\r\n                </tr>\r\n\r\n                <tr>\r\n                	<td>\r\n                            <table cellspacing="0" cellpadding="0">\r\n                                <tr style="line-height:0;">\r\n                                    <td colspan="3" width="323" height="15">\r\n                                    <img src="components/com_acymailing/templates/newsletter-3/top23rd.png" alt="" />\r\n                                    </td>\r\n                                </tr>\r\n                                <tr>\r\n                                    <td  bgcolor="#FFFFFF" width="15"></td>\r\n                                    <td bgcolor="#FFFFFF" width="293" >\r\n                                        <h3>E-Mail</h3>\r\n                                        <h6>&nbsp;</h6>\r\n                                        <table>\r\n                                            <tr>\r\n                                                <td>\r\n                                                    <img src="http://www.acyba.com/images/templates/newsletter-1/acymailing.png" alt="" />\r\n                                                </td>\r\n                                                <td>\r\n                                                <p style="font-size:10px;margin-top:0px;">Electronic mail, often abbreviated as email or e-mail, is a method of exchanging digital messages, designed primarily for human use.<br/><a href="http://en.wikipedia.org/wiki/E-mail">Wikipedia</a></p>\r\n                                                </td>\r\n\r\n                                            </tr>\r\n                                            <tr>\r\n                                                <td colspan="2" align="right">\r\n                                                    <a href="#" style="font-size:10px;color:#999999;">Read More</a>\r\n                                                </td>\r\n                                            </tr>\r\n                                         </table>\r\n                                    </td>\r\n                                    <td  bgcolor="#FFFFFF" width="15"></td>\r\n                                </tr>\r\n                                <tr style="line-height:0;">\r\n                                    <td  colspan="3" width="323" height="15">\r\n                                    <img src="components/com_acymailing/templates/newsletter-3/bottom23rd.png" alt=""/>\r\n                                    </td>\r\n                                </tr>\r\n                            </table>\r\n\r\n                    </td>\r\n\r\n                </tr>\r\n\r\n                <tr>\r\n                	<td height="20">\r\n\r\n                    </td>\r\n                </tr>\r\n\r\n\r\n\r\n                <tr>\r\n                	<td>\r\n                        <table cellspacing="0" cellpadding="0">\r\n                            <tr style="line-height:0;">\r\n                                <td colspan="3" width="323" height="15">\r\n                                	<img src="components/com_acymailing/templates/newsletter-3/top23rd.png" alt="" />\r\n                                </td>\r\n                            </tr>\r\n                            <tr>\r\n                                <td  bgcolor="#FFFFFF" width="15"></td>\r\n                                <td bgcolor="#FFFFFF" width="293" >\r\n                                    <h3>Marketing Campaign</h3>\r\n                                    <h6>&nbsp;</h6>\r\n                                    <table>\r\n                                        <tr>\r\n\r\n                                            <td>\r\n                                            <p style="font-size:10px;margin-top:0px;">Marketing is an integrated communications-based process through which individuals and communities are informed or persuaded that existing and newly-identified needs and wants may be satisfied by the products and services of others.</p>\r\n                                            <img src="components/com_acymailing/templates/newsletter-2/hori-separator.png" alt="" />\r\n                                            <p style="font-size:10px;">Marketing is used to create the customer, to keep the customer and to satisfy the customer.  <a href="http://en.wikipedia.org/wiki/Marketing_campaign">Wikipedia</a></p>\r\n                                            </td>\r\n                                            <td>\r\n                                                <img src="http://www.acyba.com/images/templates/newsletter-1/essential.png" alt=""/>\r\n                                            </td>\r\n\r\n                                        </tr>\r\n                                        <tr>\r\n                                            <td colspan="2" align="right">\r\n                                                <a href="#" style="font-size:10px;color:#999999;">Read More</a>\r\n                                            </td>\r\n                                        </tr>\r\n                                     </table>\r\n\r\n\r\n                                </td>\r\n                                <td  bgcolor="#FFFFFF" width="15"></td>\r\n                            </tr>\r\n                            <tr style="line-height:0;">\r\n                                <td  colspan="3" width="323" height="15">\r\n                                <img src="components/com_acymailing/templates/newsletter-3/bottom23rd.png" alt=""/>\r\n                                </td>\r\n                            </tr>\r\n                        </table>\r\n                    </td>\r\n\r\n                </tr>\r\n            </table>\r\n        </td>\r\n\r\n\r\n\r\n    </tr>\r\n    <tr>\r\n    	<td colspan="3" height="30"></td>\r\n    </tr>\r\n\r\n    <tr>\r\n    	<td colspan="3" style="font-size:10px;color:#000000;margin:auto;text-align:center;">Not interested any more? {unsubscribe}Unsubscribe{/unsubscribe}</td>\r\n    </tr>\r\n</table>\r\n\r\n\r\n</div>', '', NULL, 1, 0, 3, 'newsletter-3', 'a:6:{s:16:"acymailing_title";s:46:"color:#8a8a8a;border-bottom:6px solid #d3d09f;";s:6:"tag_h1";s:126:"margin-bottom:0;margin-top:0;font-family:Tahoma, Geneva, Kalimati, sans-serif;font-size:26px;color:#d47e7e;vertical-align:top;";s:6:"tag_h2";s:46:"color:#8a8a8a;border-bottom:6px solid #d3d09f;";s:6:"tag_h3";s:57:"color:#8a8a8a;font-weight:normal;font-size:100%;margin:0;";s:6:"tag_h6";s:34:"background-color:#d3d09f;margin:0;";s:8:"color_bg";s:7:"#dfe6e8";}', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_url`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_url` (
  `urlid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  PRIMARY KEY (`urlid`),
  UNIQUE KEY `url` (`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_urlclick`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_urlclick` (
  `urlid` int(10) unsigned NOT NULL,
  `mailid` mediumint(10) unsigned NOT NULL,
  `click` smallint(10) unsigned NOT NULL DEFAULT '0',
  `subid` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`urlid`,`mailid`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_acymailing_userstats`
--

CREATE TABLE IF NOT EXISTS `jos_acymailing_userstats` (
  `mailid` mediumint(10) unsigned NOT NULL,
  `subid` int(10) unsigned NOT NULL,
  `html` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `sent` tinyint(4) NOT NULL DEFAULT '1',
  `senddate` int(11) NOT NULL,
  `open` tinyint(4) NOT NULL DEFAULT '0',
  `opendate` int(11) NOT NULL,
  `bounce` tinyint(4) NOT NULL DEFAULT '0',
  `fail` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`mailid`,`subid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_aicontactsafe_config`
--

CREATE TABLE IF NOT EXISTS `jos_aicontactsafe_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `config_key` varchar(50) NOT NULL DEFAULT '',
  `config_value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `jos_aicontactsafe_config`
--

INSERT INTO `jos_aicontactsafe_config` (`id`, `config_key`, `config_value`) VALUES
(1, 'use_css_backend', '1'),
(2, 'activate_help', '1'),
(3, 'date_format', '%d %B %Y %H:%M'),
(4, 'default_status_filter', '0'),
(5, 'editbox_cols', '40'),
(6, 'editbox_rows', '10'),
(7, 'default_name', 'Rajib Rahman'),
(8, 'default_email', 'rajib.rahman@grameensolutions.com'),
(9, 'default_subject', ''),
(10, 'activate_spam_control', '1'),
(11, 'block_words', 'url='),
(12, 'record_blocked_messages', '1'),
(13, 'activate_ip_ban', '0'),
(14, 'ban_ips', ''),
(15, 'redirect_ips', ''),
(16, 'ban_ips_blocked_words', '0'),
(17, 'maximum_messages_ban_ip', '0'),
(18, 'maximum_minutes_ban_ip', '0'),
(19, 'email_ban_ip', ''),
(20, 'set_sender_joomla', '0'),
(21, 'upload_attachments', 'media&#92;aicontactsafe&#92;attachments'),
(22, 'maximum_size', '5000000'),
(23, 'attachments_types', 'rar,zip,doc,xls,txt,gif,jpg,png,bmp'),
(24, 'attach_to_email', '0'),
(25, 'delete_after_sent', '0'),
(26, 'gid_messages', '18'),
(27, 'users_all_messages', '0'),
(28, 'use_SqueezeBox', '0'),
(29, 'highlight_errors', '0'),
(30, 'keep_session_alive', '0');

-- --------------------------------------------------------

--
-- Table structure for table `jos_aicontactsafe_contactinformations`
--

CREATE TABLE IF NOT EXISTS `jos_aicontactsafe_contactinformations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) unsigned NOT NULL,
  `info_key` varchar(50) NOT NULL DEFAULT '',
  `info_label` varchar(250) NOT NULL DEFAULT '',
  `info_value` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jos_aicontactsafe_contactinformations`
--

INSERT INTO `jos_aicontactsafe_contactinformations` (`id`, `profile_id`, `info_key`, `info_label`, `info_value`) VALUES
(1, 1, 'contact_info', 'contact_info (Default form)', '&lt;p&gt;&lt;br /&gt;&lt;br /&gt;&lt;/p&gt;'),
(2, 2, 'contact_info', 'contact_info (Module form)', ''),
(3, 1, 'meta_description', 'meta_description (Default form)', ''),
(4, 2, 'meta_description', 'meta_description (Module form)', ''),
(5, 1, 'meta_keywords', 'meta_keywords (Default form)', ''),
(6, 2, 'meta_keywords', 'meta_keywords (Module form)', ''),
(7, 1, 'meta_robots', 'meta_robots (Default form)', ''),
(8, 2, 'meta_robots', 'meta_robots (Module form)', ''),
(9, 1, 'thank_you_message', 'thank_you_message (Default form)', 'Email sent. Thank you for your message.'),
(10, 2, 'thank_you_message', 'thank_you_message (Module form)', 'Email sent. Thank you for your message.'),
(11, 1, 'required_field_notification', 'required_field_notification (Default form)', 'Fields marked with %mark% are required.'),
(12, 2, 'required_field_notification', 'required_field_notification (Module form)', 'Fields marked with %mark% are required.');

-- --------------------------------------------------------

--
-- Table structure for table `jos_aicontactsafe_fields`
--

CREATE TABLE IF NOT EXISTS `jos_aicontactsafe_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `field_label` text NOT NULL,
  `label_parameters` text NOT NULL,
  `field_label_message` text NOT NULL,
  `label_message_parameters` text NOT NULL,
  `label_after_field` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_type` varchar(2) NOT NULL DEFAULT 'TX',
  `field_parameters` text NOT NULL,
  `field_values` text NOT NULL,
  `field_limit` int(11) NOT NULL DEFAULT '0',
  `default_value` varchar(150) NOT NULL DEFAULT '',
  `auto_fill` varchar(10) NOT NULL DEFAULT '',
  `field_sufix` text NOT NULL,
  `field_prefix` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_in_message` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `send_message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `checked_out` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_aicontactsafe_fields`
--

INSERT INTO `jos_aicontactsafe_fields` (`id`, `name`, `field_label`, `label_parameters`, `field_label_message`, `label_message_parameters`, `label_after_field`, `field_type`, `field_parameters`, `field_values`, `field_limit`, `default_value`, `auto_fill`, `field_sufix`, `field_prefix`, `ordering`, `field_required`, `field_in_message`, `send_message`, `date_added`, `last_update`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 'aics_name', 'Name', '', 'Name', '', 0, 'TX', 'class=''textbox''', '', 0, '', 'UN', '', '', 1, 1, 1, 0, '2010-11-24 08:14:14', '2010-11-24 08:14:14', 1, 0, '0000-00-00'),
(2, 'aics_email', 'Email', '', 'Email', '', 0, 'EM', 'class=&#039;email&#039;', '', 0, '', 'UE', '', '', 2, 1, 1, 0, '2010-11-24 08:14:14', '2011-02-27 20:38:58', 1, 0, '0000-00-00'),
(3, 'aics_phone', 'Phone', '', 'Phone', '', 0, 'TX', 'class=''textbox''', '', 15, '', '', '', '', 3, 0, 1, 0, '2010-11-24 08:14:14', '2010-11-24 08:14:14', 1, 0, '0000-00-00'),
(4, 'aics_subject', 'Subject', '', 'Subject', '', 0, 'TX', 'class=''textbox''', '', 0, '', '', '', '', 4, 1, 1, 0, '2010-11-24 08:14:14', '2010-11-24 08:14:14', 1, 0, '0000-00-00'),
(5, 'aics_message', 'Message', '', 'Message', '', 0, 'ED', 'class=''editbox''', '', 500, '', '', '', '', 5, 1, 1, 0, '2010-11-24 08:14:14', '2010-11-24 08:14:14', 1, 0, '0000-00-00'),
(6, 'aics_send_to_sender', 'Send a copy of this message to yourself', '', 'Send a copy of this message to yourself', '', 1, 'CK', 'class=&#039;checkbox&#039;', '', 0, '', '', '', '', 6, 0, 0, 0, '2010-11-24 08:14:14', '2010-11-24 09:20:43', 0, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_aicontactsafe_fieldvalues`
--

CREATE TABLE IF NOT EXISTS `jos_aicontactsafe_fieldvalues` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `message_id` int(11) unsigned NOT NULL,
  `field_value` text NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `checked_out` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_aicontactsafe_messagefiles`
--

CREATE TABLE IF NOT EXISTS `jos_aicontactsafe_messagefiles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message_id` int(11) unsigned NOT NULL,
  `name` text NOT NULL,
  `r_id` int(21) unsigned NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `checked_out` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_aicontactsafe_messages`
--

CREATE TABLE IF NOT EXISTS `jos_aicontactsafe_messages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `subject` varchar(200) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `send_to_sender` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sender_ip` varchar(20) NOT NULL DEFAULT '',
  `profile_id` int(11) unsigned NOT NULL,
  `email_replay` varchar(100) NOT NULL DEFAULT '',
  `subject_replay` text NOT NULL,
  `message_replay` text NOT NULL,
  `status_id` int(11) unsigned NOT NULL,
  `manual_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email_destination` text NOT NULL,
  `email_reply` varchar(100) NOT NULL DEFAULT '',
  `subject_reply` text NOT NULL,
  `message_reply` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `checked_out` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_aicontactsafe_messages`
--

INSERT INTO `jos_aicontactsafe_messages` (`id`, `name`, `email`, `subject`, `message`, `send_to_sender`, `sender_ip`, `profile_id`, `email_replay`, `subject_replay`, `message_replay`, `status_id`, `manual_status`, `email_destination`, `email_reply`, `subject_reply`, `message_reply`, `user_id`, `date_added`, `last_update`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 'fdgsdg', 'fdare@sadfd.com', 'Progati Web Portal sfds', '<table border="0" cellpadding="0" cellspacing="2"><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td><span   >Name</span></td><td>&nbsp;</td><td>fdgsdg</td></tr><tr><td><span   >Email</span></td><td>&nbsp;</td><td>fdare@sadfd.com</td></tr><tr><td><span   >Phone</span></td><td>&nbsp;</td><td>0147258369</td></tr><tr><td><span   >Subject</span></td><td>&nbsp;</td><td>sfds</td></tr><tr><td><span   >Message</span></td><td>&nbsp;</td><td>dfasdf</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></table>', 0, '127.0.0.1', 1, '', '', '', 2, 0, 'zaman.sarker@grameensolutions.com', '', '', '', 0, '2010-11-24 09:53:16', '2010-11-24 09:53:16', 1, 0, '0000-00-00'),
(2, 'Rahman', 'rajib1111@gmail.com', 'BRTC hello', '<table border="0" cellpadding="0" cellspacing="2"><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr><tr><td><span   >Name</span></td><td>&nbsp;</td><td>Rahman</td></tr><tr><td><span   >Email</span></td><td>&nbsp;</td><td>rajib1111@gmail.com</td></tr><tr><td><span   >Phone</span></td><td>&nbsp;</td><td>0256587078</td></tr><tr><td><span   >Subject</span></td><td>&nbsp;</td><td>hello</td></tr><tr><td><span   >Message</span></td><td>&nbsp;</td><td>hello</td></tr><tr><td>&nbsp;</td><td>&nbsp;</td><td>&nbsp;</td></tr></table>', 0, '127.0.0.1', 1, '', '', '', 1, 0, 'rajib.rahman@grameensolutions.com', '', '', '', 0, '2011-02-24 02:50:16', '2011-02-24 02:50:16', 1, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_aicontactsafe_profiles`
--

CREATE TABLE IF NOT EXISTS `jos_aicontactsafe_profiles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `use_ajax` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `use_message_css` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contact_form_width` int(11) NOT NULL DEFAULT '0',
  `bottom_row_space` int(11) NOT NULL DEFAULT '0',
  `align_buttons` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `contact_info_width` int(11) NOT NULL DEFAULT '0',
  `use_captcha` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `captcha_type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `align_captcha` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `email_address` varchar(100) NOT NULL DEFAULT '',
  `always_send_to_email_address` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `subject_prefix` varchar(100) NOT NULL DEFAULT '',
  `email_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `record_message` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `record_fields` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `custom_date_format` varchar(30) NOT NULL DEFAULT '%d %B %Y',
  `custom_date_years_back` int(11) NOT NULL DEFAULT '70',
  `custom_date_years_forward` int(11) NOT NULL DEFAULT '0',
  `required_field_mark` text NOT NULL,
  `display_format` int(11) NOT NULL DEFAULT '2',
  `plg_contact_info` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `use_random_letters` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `min_word_length` tinyint(2) unsigned NOT NULL DEFAULT '5',
  `max_word_length` tinyint(2) unsigned NOT NULL DEFAULT '8',
  `set_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active_fields` text NOT NULL,
  `captcha_width` smallint(4) NOT NULL DEFAULT '400',
  `captcha_height` smallint(4) NOT NULL DEFAULT '55',
  `captcha_bgcolor` varchar(10) NOT NULL DEFAULT '#FFFFFF',
  `captcha_backgroundTransparent` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `captcha_colors` text NOT NULL,
  `name_field_id` int(11) unsigned NOT NULL,
  `email_field_id` int(11) unsigned NOT NULL,
  `subject_field_id` int(11) unsigned NOT NULL,
  `send_to_sender_field_id` int(11) NOT NULL,
  `redirect_on_success` text NOT NULL,
  `fields_order` text NOT NULL,
  `use_mail_template` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `default_status_id` int(11) unsigned NOT NULL,
  `read_status_id` int(11) unsigned NOT NULL,
  `reply_status_id` int(11) unsigned NOT NULL,
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `checked_out` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_aicontactsafe_profiles`
--

INSERT INTO `jos_aicontactsafe_profiles` (`id`, `name`, `use_ajax`, `use_message_css`, `contact_form_width`, `bottom_row_space`, `align_buttons`, `contact_info_width`, `use_captcha`, `captcha_type`, `align_captcha`, `email_address`, `always_send_to_email_address`, `subject_prefix`, `email_mode`, `record_message`, `record_fields`, `custom_date_format`, `custom_date_years_back`, `custom_date_years_forward`, `required_field_mark`, `display_format`, `plg_contact_info`, `use_random_letters`, `min_word_length`, `max_word_length`, `set_default`, `active_fields`, `captcha_width`, `captcha_height`, `captcha_bgcolor`, `captcha_backgroundTransparent`, `captcha_colors`, `name_field_id`, `email_field_id`, `subject_field_id`, `send_to_sender_field_id`, `redirect_on_success`, `fields_order`, `use_mail_template`, `default_status_id`, `read_status_id`, `reply_status_id`, `date_added`, `last_update`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 'Default form', 1, 1, 380, 0, 1, 0, 0, 0, 1, 'rajib.rahman@grameensolutions.com', 1, '', 0, 1, 0, 'dmy', 60, 0, '*', 2, 0, 0, 5, 8, 1, '0', 300, 55, '#FFFFFF', 0, '#FF0000;#00FF00;#0000FF', 1, 2, 4, 6, '', '1,2,3,4,5,6', 0, 1, 2, 3, '2009-01-01 00:00:00', '2011-02-24 01:42:39', 1, 0, '0000-00-00'),
(2, 'Module form', 0, 1, 0, 0, 1, 200, 1, 0, 1, '', 1, '', 1, 1, 0, 'dmy', 60, 0, '( ! )', 1, 0, 0, 5, 8, 0, '0', 180, 55, '#FFFFFF', 1, '#FF0000;#00FF00;#0000FF', 1, 2, 4, 6, '', '1,2,3,4,5,6', 0, 1, 2, 3, '2009-01-01 00:00:00', '2010-11-28 11:40:12', 1, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_aicontactsafe_statuses`
--

CREATE TABLE IF NOT EXISTS `jos_aicontactsafe_statuses` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  `color` varchar(10) NOT NULL DEFAULT '#FFFFFF',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `checked_out` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `jos_aicontactsafe_statuses`
--

INSERT INTO `jos_aicontactsafe_statuses` (`id`, `name`, `color`, `ordering`, `date_added`, `last_update`, `published`, `checked_out`, `checked_out_time`) VALUES
(1, 'New', '#FF0000', 1, '2010-11-24 08:14:14', '2010-11-24 08:14:14', 1, 0, '0000-00-00'),
(2, 'Read', '#000000', 2, '2010-11-24 08:14:14', '2010-11-24 08:14:14', 1, 0, '0000-00-00'),
(3, 'Replied', '#009900', 3, '2010-11-24 08:14:14', '2010-11-24 08:14:14', 1, 0, '0000-00-00'),
(4, 'Archived', '#CCCCCC', 4, '2010-11-24 08:14:14', '2010-11-24 08:14:14', 1, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner`
--

CREATE TABLE IF NOT EXISTS `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `jos_banner`
--

INSERT INTO `jos_banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(9, 2, '', 'About Us', 'about-us', 0, 386, 0, 'about_us.jpg', '', '2010-11-23 04:09:33', 1, 0, '0000-00-00 00:00:00', '', '', 36, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(10, 2, '', 'Mission', 'mission', 0, 0, 0, 'mission.jpg', '', '2010-11-23 04:19:30', 1, 0, '0000-00-00 00:00:00', '', '', 37, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(11, 2, '', 'Components', 'components', 0, 212, 0, 'banner_components.jpg', '', '2010-12-13 09:25:17', 1, 0, '0000-00-00 00:00:00', '', '', 46, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(12, 2, '', 'Activities', 'activities', 0, 226, 0, 'banner_activities.jpg', '', '2010-12-13 09:25:31', 1, 0, '0000-00-00 00:00:00', '', '', 47, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(13, 2, '', 'News and Media', 'news-and-media', 0, 162, 0, 'banner_news_and_media.jpg', '', '2010-11-25 09:19:07', 1, 0, '0000-00-00 00:00:00', '', '', 48, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(14, 2, '', 'Success Stories', 'success-stories', 0, 179, 0, 'banner_success_stories.jpg', '', '2010-12-14 10:26:58', 1, 0, '0000-00-00 00:00:00', '', '', 49, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(15, 2, '', 'FAQs', 'faqs', 0, 100, 0, 'banner_faq.jpg', '', '2010-11-28 04:10:56', 1, 0, '0000-00-00 00:00:00', '', '', 51, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0'),
(16, 2, '', 'Events', 'events', 0, 113, 0, 'banner_events.jpg', '', '2010-11-28 04:15:52', 1, 0, '0000-00-00 00:00:00', '', '', 52, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 'width=0\nheight=0');

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannerclient`
--

CREATE TABLE IF NOT EXISTS `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_bannerclient`
--

INSERT INTO `jos_bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(2, 'Progati', 'Progati Administrator', 'info@progati.com', '', 0, '00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_bannertrack`
--

CREATE TABLE IF NOT EXISTS `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_categories`
--

CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `jos_categories`
--

INSERT INTO `jos_categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Latest News', '', 'latest-news', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 1, 0, 1, ''),
(3, 0, 'Media', '', 'media', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 2, 0, 0, ''),
(4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'Free and Open Source Software', '', 'free-and-open-source-software', '', 'com_newsfeeds', 'left', 'Read the latest news about free and open source software from some of its leading advocates.', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(6, 0, 'Related Projects', '', 'related-projects', '', 'com_newsfeeds', 'left', 'Joomla builds on and collaborates with many other free and open source projects. Keep up with the latest news from some of them.', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(12, 0, 'Contacts', '', 'contacts', '', 'com_contact_details', 'left', 'Contact Details for this Web site', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(37, 0, 'Mission', '', 'mission', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(15, 0, 'Features', '', 'features', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Platforms', '', 'platforms', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(28, 0, 'Success Stories', '', 'success-stories', '', '8', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(35, 0, 'BRTC Weblinks', '', 'brtc-weblinks', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(27, 0, 'Corruption Reduction', '', 'corruption-reduction', '', '6', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(34, 0, 'About Us', '', 'about-us', '', '5', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(31, 0, 'General', '', 'general', '', '3', 'left', 'General questions about the Joomla! CMS', 0, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(32, 0, 'Components', '', 'components', '', '7', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(36, 0, 'About Us', '', 'about-us', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(38, 0, 'Good Governance', '', 'good-governance', '', '6', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(39, 0, 'Dialogue Program', '', 'dialogue-program', '', '6', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, ''),
(40, 0, 'Training Program & Workshop', '', 'training-program-a-workshop', '', '6', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(41, 0, 'Monitoring & Evaluation', '', 'monitoring-a-evaluation', '', '6', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, ''),
(42, 0, 'Annual Reports', '', 'annual-reports', '', '7', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, ''),
(43, 0, 'Books', '', 'books', '', '7', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(44, 0, 'Journal', '', 'journal', '', '7', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, ''),
(45, 0, 'Newsletter', '', 'newsletter', '', '7', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 8, 0, 0, ''),
(46, 0, 'Components', '', 'components', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(47, 0, 'Activities', '', 'activities', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(48, 0, 'News and Media', '', 'news-and-media', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 5, 0, 0, ''),
(49, 0, 'Success Stories', '', 'success-stories', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(50, 0, 'Downloads', '', 'downloads', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 7, 0, 0, ''),
(51, 0, 'FAQ', '', 'faq', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 8, 0, 0, ''),
(52, 0, 'Events', '', 'events', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 9, 0, 0, ''),
(53, 0, 'Chairman Message', '', 'chairman-message', '', '10', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(54, 0, 'Partners', '', 'partners', '', 'com_djimageslider', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(55, 0, 'Services', '', 'services', '', '11', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(56, 0, 'Bus', '', 'bus', '', '12', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(57, 0, 'Workshop', '', 'workshop', '', '13', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(58, 0, 'Truck', '', 'truck', '', '14', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(59, 0, 'Information', '', 'information', '', '17', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(60, 0, 'Posts', '', 'posts', '', '16', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(62, 0, 'Welcome', '', 'welcome', '', '18', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_activities`
--

CREATE TABLE IF NOT EXISTS `jos_community_activities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `actor` int(10) unsigned NOT NULL,
  `target` int(10) unsigned NOT NULL,
  `title` text,
  `content` text NOT NULL,
  `app` varchar(200) NOT NULL,
  `cid` int(10) NOT NULL,
  `created` datetime NOT NULL,
  `access` tinyint(3) unsigned NOT NULL,
  `params` text NOT NULL,
  `points` int(4) NOT NULL DEFAULT '1',
  `archived` tinyint(3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `actor` (`actor`),
  KEY `target` (`target`),
  KEY `app` (`app`),
  KEY `created` (`created`),
  KEY `archived` (`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `jos_community_activities`
--

INSERT INTO `jos_community_activities` (`id`, `actor`, `target`, `title`, `content`, `app`, `cid`, `created`, `access`, `params`, `points`, `archived`) VALUES
(3, 69, 0, '{actor} added a new video <a href="{video_url}">HD Guzarish - Ghajini FULL SONG</a>', '{getActivityContentHTML}', 'videos', 1, '2011-12-09 06:26:21', 0, 'video_url=index.php?option=com_community&view=videos&task=video&userid=69&videoid=1\n\n', 1, 0),
(4, 69, 0, '{actor} added {multiple}{count} new photos{/multiple}{single}a new photo{/single} in <a href="{photo_url}">test</a> album', '<img src="http://localhost/brtc_new/brtc/images/photos/69/1/thumb_5e4afd377dc068301f1207d2.png" style=\\"border: 1px solid #eee;margin-right: 3px;" />', 'photos', 1, '2011-12-09 06:28:25', 0, 'multiUrl=/brtc_new/brtc/index.php?option=com_community&amp;view=photos&amp;task=album&amp;albumid=1&amp;userid=69&amp;Itemid=115\nphotoid=1\naction=upload\nphoto_url=/brtc_new/brtc/index.php?option=com_community&amp;view=photos&amp;task=photo&amp;albumid=1&amp;userid=69&amp;Itemid=115#photoid=1\n\n', 1, 0),
(5, 69, 0, '{actor} added {multiple}{count} new photos{/multiple}{single}a new photo{/single} in <a href="{photo_url}">test</a> album', '<img src="http://localhost/brtc_new/brtc/images/photos/69/1/thumb_13b025739ee03ceb1b2f85b5.jpg" style=\\"border: 1px solid #eee;margin-right: 3px;" />', 'photos', 1, '2011-12-09 06:28:26', 0, 'multiUrl=/brtc_new/brtc/index.php?option=com_community&amp;view=photos&amp;task=album&amp;albumid=1&amp;userid=69&amp;Itemid=115\nphotoid=2\naction=upload\nphoto_url=/brtc_new/brtc/index.php?option=com_community&amp;view=photos&amp;task=photo&amp;albumid=1&amp;userid=69&amp;Itemid=115#photoid=2\n\n', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_activities_hide`
--

CREATE TABLE IF NOT EXISTS `jos_community_activities_hide` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_apps`
--

CREATE TABLE IF NOT EXISTS `jos_community_apps` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `apps` varchar(200) NOT NULL,
  `ordering` int(10) unsigned NOT NULL,
  `position` varchar(50) NOT NULL DEFAULT 'content',
  `params` text NOT NULL,
  `privacy` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_userid` (`userid`),
  KEY `idx_user_apps` (`userid`,`apps`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_avatar`
--

CREATE TABLE IF NOT EXISTS `jos_community_avatar` (
  `id` int(10) unsigned NOT NULL,
  `apptype` varchar(255) NOT NULL,
  `path` text NOT NULL,
  `type` tinyint(3) unsigned NOT NULL COMMENT '0 = small, 1 = medium, 2=large',
  UNIQUE KEY `id` (`id`,`apptype`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_blocklist`
--

CREATE TABLE IF NOT EXISTS `jos_community_blocklist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `blocked_userid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `blocked_userid` (`blocked_userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_config`
--

CREATE TABLE IF NOT EXISTS `jos_community_config` (
  `name` varchar(64) NOT NULL,
  `params` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_community_config`
--

INSERT INTO `jos_community_config` (`name`, `params`) VALUES
('dbversion', '7'),
('config', 'enablegroups=1\nmoderategroupcreation=1\ncreategroups=1\ncreatediscussion=1\ngroupphotos=1\ngroupvideos=1\npoint0=50\npoint1=50\npoint2=100\npoint3=200\npoint4=350\npoint5=600\nwallediting=1\nlockprofilewalls=1\nlockgroupwalls=1\nlockvideoswalls=1\nlockeventwalls=1\nenablephotos=1\nenablepm=1\nnotifyby=1\nsitename=Hotzonne Website\nprivacyemail=1\nprivacyemailpm=1\nprivacyapps=1\ndisplayname=name\ntemplate=blueface\ntask=saveconfig\nview=configuration\noption=com_community\nprivacyprofile=0\nprivacyfriends=0\nprivacyphotos=0\nphotomaxwidth=600\noriginalphotopath=originalphotos\narchive_activity_days= 21\ndisplayhome=1\nmaxactivities=20\nshowactivityavatar=1\nenablereporting=1\nmaxReport=50\nenablecustomviewcss=0\nfrontpageusers=20\njsnetwork_path=http://updates.scriptz-team.info/index.php?option=com_jsnetwork&view=submit&task=update\ngroupnewseditor=1\nimageengine=auto\ndbversion=1.1\npredefinedreports=Spamming / Advertisement\\nProfanity / Inappropriate content.\\nAbusive.\nactivitiestimeformat=%I:%M %p\nactivitiesdayformat=%b %d\nflashuploader=0\nmaxuploadsize=8\nenablevideos=1\nenableprofilevideo=1\nenablevideosupload=0\nvideosSize=400x300\nvideosThumbSize=112x84\nfrontpagevideos=3\ndeleteoriginalvideos=0\nvideofolder=images\nimagefolder=images\nphotofolder=images\nvideobaseurl=\nimagebaseurl=\nphotobaseurl=\nimagecdnpath=\nvideocdnpath=\nphotocdnpath=\nmaxvideouploadsize=8\nvideodebug=1\nguestsearch=0\nfloodLimit=60\npmperday=30\nsendemailonpageload=0\nshowlatestvideos=1\nshowlatestgroups=1\nshowlatestphotos=1\nshowactivitystream=1\nshowlatestmembers=1\ndaylightsavingoffset=0\nsingularnumber=1\nusepackedjavascript=0\nfolderpermissionsphoto=0755\nfolderpermissionsvideo=0755\niphoneactivitiesapps=photos,groups,profile,walls\nsessionexpiryperiod=600\nactivationresetpassword=0\ngroupdiscussnotification=0\ntagboxwidth=150\ntagboxheight=150\nfrontpagephotos=20\nautoalbumcover=1\nenablesharethis=1\nenablekarma=1\nprivacywallcomment=1\nphotouploadlimit=500\nvideouploadlimit=500\ngroupcreatelimit=300\ngroupphotouploadlimit=500\ngroupvideouploadlimit=500\nfbsignupimport=1\nfbwatermark=1\nfbloginimportprofile=1\nfbloginimportavatar=1\nfbconnectupdatestatus=1\nfeatureduserslimit=10\nfeaturedvideoslimit=10\nfeaturedgroupslimit=10\nrecaptcha=1\nprofileDateFormat=%d/%m/%Y\nfrontpagegroups=5\nfrontpageactivitydefault=all\nphotostorage=file\nphotodisplaysize=800\nstorages3bucket=\nstorages3accesskey=\nstorages3secretkey=\nrecaptchatheme=red\nrecaptchalang=en\nhtmlemail=1\nhtmlemailtemplate=html.mail\nvideostorage=file\nshowactivitycontent=1\ntotalemailpercron=150\nenablevideopseudostream=0\nphotosordering=DESC\nrespectactivityprivacy=1\nshowsearch=1\nshowonline=1\nfieldcodestreet=FIELD_ADDRESS\nfieldcodecity=FIELD_CITY\nfieldcodestate=FIELD_STATE\nfieldcodecountry=FIELD_COUNTRY\nalphabetfiltering=1\nenableevents=1\ncreateevents=1\neventcreatelimit=300\neventexportical=1\neventdateformat=%b %d\neventshowampm=1\neventshowmap=1\neventshowtimezone=1\ndeleteoriginalphotos=0\ngroupdiscussionmaxlist=5\nstatusmaxchar=400\nhtmleditor=tinymce\nfbconnectpoststatus=1\nstreamcontentlength=150\nextendeduserinfo=0\nallowhtml=1\nphotospath=E:\\xampp\\htdocs\\brtc_new\\brtc\\images\nnotifyMaxReport=\nenableguestreporting=0\nenableterms=1\nregistrationTerms=this is term\nrecaptchapublic=\nrecaptchaprivate=\nmagickPath=\nffmpegPath=\nflvtool2=\nqscale=11\ncustomCommandForVideo=\nnetwork_enable=1\nnetwork_description=brtc website\nnetwork_keywords=brtc website\nnetwork_join_url=http://localhost/brtc_new/brtc/index.php?option=com_community&view=register&Itemid=115\nnetwork_cron_freq=24\nnetwork_cron_last_run=0\nfbconnectkey=\nfbconnectsecret=\nenablemyblogicon=1\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_connection`
--

CREATE TABLE IF NOT EXISTS `jos_community_connection` (
  `connection_id` int(11) NOT NULL AUTO_INCREMENT,
  `connect_from` int(11) NOT NULL,
  `connect_to` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `group` int(11) NOT NULL,
  `msg` text NOT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`connection_id`),
  KEY `connect_from` (`connect_from`,`connect_to`,`status`,`group`),
  KEY `idx_connect_to` (`connect_to`),
  KEY `idx_connect_from` (`connect_from`),
  KEY `idx_connect_tofrom` (`connect_to`,`connect_from`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_connect_users`
--

CREATE TABLE IF NOT EXISTS `jos_community_connect_users` (
  `connectid` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL,
  `userid` int(11) NOT NULL,
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_events`
--

CREATE TABLE IF NOT EXISTS `jos_community_events` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) unsigned NOT NULL,
  `contentid` int(11) unsigned DEFAULT '0' COMMENT '0 - if type == profile, else it hold the group id',
  `type` varchar(255) NOT NULL DEFAULT 'profile' COMMENT 'profile, group',
  `title` varchar(255) NOT NULL,
  `location` text NOT NULL,
  `description` text,
  `creator` int(11) unsigned NOT NULL,
  `startdate` datetime NOT NULL,
  `enddate` datetime NOT NULL,
  `permission` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '0 - Open (Anyone can mark attendence), 1 - Private (Only invited can mark attendence)',
  `avatar` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `invitedcount` int(11) unsigned DEFAULT '0',
  `confirmedcount` int(11) unsigned DEFAULT '0' COMMENT 'treat this as member count as well',
  `declinedcount` int(11) unsigned DEFAULT '0',
  `maybecount` int(11) unsigned DEFAULT '0',
  `wallcount` int(11) unsigned DEFAULT '0',
  `ticket` int(11) unsigned DEFAULT '0' COMMENT 'Represent how many guest can be joined or invited.',
  `allowinvite` tinyint(1) unsigned DEFAULT '1' COMMENT '0 - guest member cannot invite thier friends to join. 1 - yes, guest member can invite any of thier friends to join.',
  `created` datetime DEFAULT NULL,
  `hits` int(11) unsigned DEFAULT '0',
  `published` int(11) unsigned DEFAULT '1',
  `latitude` float NOT NULL DEFAULT '255',
  `longitude` float NOT NULL DEFAULT '255',
  PRIMARY KEY (`id`),
  KEY `idx_creator` (`creator`),
  KEY `idx_period` (`startdate`,`enddate`),
  KEY `idx_type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_events_category`
--

CREATE TABLE IF NOT EXISTS `jos_community_events_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_community_events_category`
--

INSERT INTO `jos_community_events_category` (`id`, `name`, `description`) VALUES
(1, 'General', 'General events'),
(2, 'Birthday', 'Birthday events'),
(3, 'Party', 'Party events');

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_events_location`
--

CREATE TABLE IF NOT EXISTS `jos_community_events_location` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `eventid` int(11) unsigned NOT NULL,
  `street` text,
  `zipcode` varchar(15) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eventid` (`eventid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_events_members`
--

CREATE TABLE IF NOT EXISTS `jos_community_events_members` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `eventid` int(11) unsigned NOT NULL,
  `memberid` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '[Join / Invite]: 0 - [pending approval/pending invite], 1 - [approved/confirmed], 2 - [rejected/declined], 3 - [maybe/maybe], 4 - [blocked/blocked]',
  `permission` tinyint(1) unsigned NOT NULL DEFAULT '3' COMMENT '1 - creator, 2 - admin, 3 - member',
  `invited_by` int(11) unsigned DEFAULT '0',
  `approval` tinyint(1) unsigned DEFAULT '0' COMMENT '0 - no approval required, 1 - required admin approval',
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_eventid` (`eventid`),
  KEY `idx_status` (`status`),
  KEY `idx_invitedby` (`invited_by`),
  KEY `idx_permission` (`eventid`,`permission`),
  KEY `idx_member_event` (`eventid`,`memberid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_featured`
--

CREATE TABLE IF NOT EXISTS `jos_community_featured` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_fields`
--

CREATE TABLE IF NOT EXISTS `jos_community_fields` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `ordering` int(11) DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `min` int(5) NOT NULL,
  `max` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `tips` text NOT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `required` tinyint(1) DEFAULT '0',
  `searchable` tinyint(1) DEFAULT '1',
  `registration` tinyint(1) DEFAULT '1',
  `options` text,
  `fieldcode` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fieldcode` (`fieldcode`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `jos_community_fields`
--

INSERT INTO `jos_community_fields` (`id`, `type`, `ordering`, `published`, `min`, `max`, `name`, `tips`, `visible`, `required`, `searchable`, `registration`, `options`, `fieldcode`) VALUES
(1, 'group', 1, 1, 10, 100, 'Basic Information', 'Basic information for user', 1, 1, 1, 1, '', ''),
(2, 'select', 2, 1, 10, 100, 'Gender', 'Select gender', 1, 1, 1, 1, 'Male\nFemale', 'FIELD_GENDER'),
(3, 'date', 3, 1, 10, 100, 'Birthday', 'Enter your date of birth so other users can know when to wish you happy birthday ', 1, 1, 1, 1, '', 'FIELD_BIRTHDAY'),
(4, 'textarea', 5, 1, 1, 800, 'About me', 'Tell us more about yourself', 1, 1, 1, 1, '', 'FIELD_ABOUTME'),
(5, 'group', 6, 1, 10, 100, 'Contact Information', 'Specify your contact details', 1, 1, 1, 1, '', ''),
(6, 'text', 7, 1, 10, 100, 'Mobile phone', 'Mobile carrier number that other users can contact you.', 1, 0, 1, 1, '', 'FIELD_MOBILE'),
(7, 'text', 8, 1, 10, 100, 'Land phone', 'Contact number that other users can contact you.', 1, 0, 1, 1, '', 'FIELD_LANDPHONE'),
(8, 'textarea', 9, 1, 10, 100, 'Address', 'Your Address', 1, 1, 1, 1, '', 'FIELD_ADDRESS'),
(9, 'text', 10, 1, 10, 100, 'State', 'Your state', 1, 1, 1, 1, '', 'FIELD_STATE'),
(10, 'text', 11, 1, 10, 100, 'City / Town', 'Your city or town name', 1, 1, 1, 1, '', 'FIELD_CITY'),
(11, 'country', 12, 1, 10, 100, 'Country', 'Your country', 1, 1, 1, 1, 'Afghanistan\nAlbania\nAlgeria\nAmerican Samoa\nAndorra\nAngola\nAnguilla\nAntarctica\nAntigua and Barbuda\nArgentina\nArmenia\nAruba\nAustralia\nAustria\nAzerbaijan\nBahamas\nBahrain\nBangladesh\nBarbados\nBelarus\nBelgium\nBelize\nBenin\nBermuda\nBhutan\nBolivia\nBosnia and Herzegovina\nBotswana\nBouvet Island\nBrazil\nBritish Indian Ocean Territory\nBrunei Darussalam\nBulgaria\nBurkina Faso\nBurundi\nCambodia\nCameroon\nCanada\nCape Verde\nCayman Islands\nCentral African Republic\nChad\nChile\nChina\nChristmas Island\nCocos (Keeling) Islands\nColombia\nComoros\nCongo\nCook Islands\nCosta Rica\nCote D''Ivoire (Ivory Coast)\nCroatia (Hrvatska)\nCuba\nCyprus\nCzechoslovakia (former)\nCzech Republic\nDenmark\nDjibouti\nDominica\nDominican Republic\nEast Timor\nEcuador\nEgypt\nEl Salvador\nEquatorial Guinea\nEritrea\nEstonia\nEthiopia\nFalkland Islands (Malvinas)\nFaroe Islands\nFiji\nFinland\nFrance\nFrance, Metropolitan\nFrench Guiana\nFrench Polynesia\nFrench Southern Territories\nGabon\nGambia\nGeorgia\nGermany\nGhana\nGibraltar\nGreat Britain (UK)\nGreece\nGreenland\nGrenada\nGuadeloupe\nGuam\nGuatemala\nGuinea\nGuinea-Bissau\nGuyana\nHaiti\nHeard and McDonald Islands\nHonduras\nHong Kong\nHungary\nIceland\nIndia\nIndonesia\nIran\nIraq\nIreland\nIsrael\nItaly\nJamaica\nJapan\nJordan\nKazakhstan\nKenya\nKiribati\nKorea, North\nSouth Korea\nKuwait\nKyrgyzstan\nLaos\nLatvia\nLebanon\nLesotho\nLiberia\nLibya\nLiechtenstein\nLithuania\nLuxembourg\nMacau\nMacedonia\nMadagascar\nMalawi\nMalaysia\nMaldives\nMali\nMalta\nMarshall Islands\nMartinique\nMauritania\nMauritius\nMayotte\nMexico\nMicronesia\nMoldova\nMonaco\nMongolia\nMontserrat\nMorocco\nMozambique\nMyanmar\nNamibia\nNauru\nNepal\nNetherlands\nNetherlands Antilles\nNeutral Zone\nNew Caledonia\nNew Zealand\nNicaragua\nNiger\nNigeria\nNiue\nNorfolk Island\nNorthern Mariana Islands\nNorway\nOman\nPakistan\nPalau\nPanama\nPapua New Guinea\nParaguay\nPeru\nPhilippines\nPitcairn\nPoland\nPortugal\nPuerto Rico\nQatar\nReunion\nRomania\nRussian Federation\nRwanda\nSaint Kitts and Nevis\nSaint Lucia\nSaint Vincent and the Grenadines\nSamoa\nSan Marino\nSao Tome and Principe\nSaudi Arabia\nSenegal\nSeychelles\nS. Georgia and S. Sandwich Isls.\nSierra Leone\nSingapore\nSlovak Republic\nSlovenia\nSolomon Islands\nSomalia\nSouth Africa\nSpain\nSri Lanka\nSt. Helena\nSt. Pierre and Miquelon\nSudan\nSuriname\nSvalbard and Jan Mayen Islands\nSwaziland\nSweden\nSwitzerland\nSyria\nTaiwan\nTajikistan\nTanzania\nThailand\nTogo\nTokelau\nTonga\nTrinidad and Tobago\nTunisia\nTurkey\nTurkmenistan\nTurks and Caicos Islands\nTuvalu\nUganda\nUkraine\nUnited Arab Emirates\nUnited Kingdom\nUnited States\nUruguay\nUS Minor Outlying Islands\nUSSR (former)\nUzbekistan\nVanuatu\nVatican City State (Holy Sea)\nVenezuela\nViet Nam\nVirgin Islands (British)\nVirgin Islands (U.S.)\nWallis and Futuna Islands\nWestern Sahara\nYemen\nYugoslavia\nZaire\nZambia\nZimbabwe', 'FIELD_COUNTRY'),
(12, 'url', 13, 1, 10, 100, 'Website', 'Your website', 1, 1, 1, 1, '', 'FIELD_WEBSITE'),
(13, 'group', 14, 1, 10, 100, 'Education', 'Educations', 1, 1, 1, 1, '', ''),
(14, 'text', 15, 1, 10, 200, 'College / University', 'Your college or university name', 1, 1, 1, 1, '', 'FIELD_COLLEGE'),
(15, 'text', 16, 1, 5, 100, 'Graduation Year', 'Graduation year', 1, 1, 1, 1, '', 'FIELD_GRADUATION');

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_fields_values`
--

CREATE TABLE IF NOT EXISTS `jos_community_fields_values` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `field_id` int(10) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `user_id` (`user_id`),
  KEY `idx_user_fieldid` (`user_id`,`field_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jos_community_fields_values`
--

INSERT INTO `jos_community_fields_values` (`id`, `user_id`, `field_id`, `value`) VALUES
(1, 69, 2, 'Male'),
(2, 69, 3, '1979-11-24 23:59:59'),
(3, 69, 4, 'I am a professional developer'),
(4, 69, 6, ''),
(5, 69, 7, ''),
(6, 69, 8, 'Dhaka'),
(7, 69, 9, 'dhaka'),
(8, 69, 10, 'Dhaka'),
(9, 69, 11, 'Bangladesh'),
(10, 69, 12, 'http://srajib.info'),
(11, 69, 14, 'East West University'),
(12, 69, 15, '2004');

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_files`
--

CREATE TABLE IF NOT EXISTS `jos_community_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `creator` int(11) NOT NULL,
  `name` text NOT NULL,
  `caption` text NOT NULL,
  `created` datetime NOT NULL,
  `published` tinyint(1) NOT NULL,
  `permissions` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_friendgroup`
--

CREATE TABLE IF NOT EXISTS `jos_community_friendgroup` (
  `group_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_friendlist`
--

CREATE TABLE IF NOT EXISTS `jos_community_friendlist` (
  `group_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(45) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_groups`
--

CREATE TABLE IF NOT EXISTS `jos_community_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `ownerid` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `approvals` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `avatar` text NOT NULL,
  `thumb` text NOT NULL,
  `discusscount` int(11) NOT NULL DEFAULT '0',
  `wallcount` int(11) NOT NULL DEFAULT '0',
  `membercount` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_groups_bulletins`
--

CREATE TABLE IF NOT EXISTS `jos_community_groups_bulletins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupid` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_groups_category`
--

CREATE TABLE IF NOT EXISTS `jos_community_groups_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_community_groups_category`
--

INSERT INTO `jos_community_groups_category` (`id`, `name`, `description`) VALUES
(1, 'General', 'General group category.'),
(2, 'Internet', 'Internet group category.'),
(3, 'Business', 'Business groups category'),
(4, 'Automotive', 'Automotive groups category'),
(5, 'Music', 'Music groups category'),
(6, 'Talented', 'Talented');

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_groups_discuss`
--

CREATE TABLE IF NOT EXISTS `jos_community_groups_discuss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL DEFAULT '0',
  `groupid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `title` text NOT NULL,
  `message` text NOT NULL,
  `lastreplied` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `groupid` (`groupid`),
  KEY `parentid` (`parentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_groups_invite`
--

CREATE TABLE IF NOT EXISTS `jos_community_groups_invite` (
  `groupid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `creator` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_groups_members`
--

CREATE TABLE IF NOT EXISTS `jos_community_groups_members` (
  `groupid` int(11) NOT NULL,
  `memberid` int(11) NOT NULL,
  `approved` int(11) NOT NULL,
  `permissions` int(1) NOT NULL,
  KEY `groupid` (`groupid`),
  KEY `idx_memberid` (`memberid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_location_cache`
--

CREATE TABLE IF NOT EXISTS `jos_community_location_cache` (
  `address` varchar(255) NOT NULL,
  `latitude` float NOT NULL DEFAULT '255',
  `longitude` float NOT NULL DEFAULT '255',
  `data` text NOT NULL,
  `status` varchar(2) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_mailq`
--

CREATE TABLE IF NOT EXISTS `jos_community_mailq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient` text NOT NULL,
  `subject` text NOT NULL,
  `body` text NOT NULL,
  `status` tinyint(4) NOT NULL,
  `created` datetime NOT NULL,
  `template` varchar(64) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_community_mailq`
--

INSERT INTO `jos_community_mailq` (`id`, `recipient`, `subject`, `body`, `status`, `created`, `template`, `params`) VALUES
(1, 'info@progatibd.org', 'rajib wants to be your friend', 'Hi Progati Admin,\n\nrajib added you as friend. You still need to approve this request. \n\npls add me \nTo add rajib as your friend, just go to your friends request page below:\n\n<a href="{url}">{url}</a>\n\n\nHave a nice day!\n', 0, '2011-12-09 06:05:18', 'email.friends.request.html', 'url=index.php?option=com_community&view=friends&task=pending\nmsg=pls add me \n\n'),
(2, 'rajib1111@gmail.com', 'You and Progati Admin are now friends.', 'Hi rajib,\n\nProgati Admin just approved your friend request. You are now friends with Progati Admin.\n\nYou can view Progati Admin''s profile here:\n\n<a href="{url}">{url}</a>\n\n\nHave a nice day!\n', 0, '2011-12-09 06:09:31', 'email.friends.approve.html', 'url=index.php?option=com_community&view=profile&userid=66\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_msg`
--

CREATE TABLE IF NOT EXISTS `jos_community_msg` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(10) unsigned NOT NULL,
  `parent` int(10) unsigned NOT NULL,
  `deleted` tinyint(3) unsigned DEFAULT '0',
  `from_name` varchar(45) NOT NULL,
  `posted_on` datetime DEFAULT NULL,
  `subject` tinytext NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_msg_recepient`
--

CREATE TABLE IF NOT EXISTS `jos_community_msg_recepient` (
  `msg_id` int(10) unsigned NOT NULL,
  `msg_parent` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_from` int(10) unsigned NOT NULL,
  `to` int(10) unsigned NOT NULL,
  `bcc` tinyint(3) unsigned DEFAULT '0',
  `is_read` tinyint(3) unsigned DEFAULT '0',
  `deleted` tinyint(3) unsigned DEFAULT '0',
  UNIQUE KEY `un` (`msg_id`,`to`),
  KEY `msg_id` (`msg_id`),
  KEY `to` (`to`),
  KEY `idx_isread_to_deleted` (`is_read`,`to`,`deleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_oauth`
--

CREATE TABLE IF NOT EXISTS `jos_community_oauth` (
  `userid` int(11) NOT NULL,
  `requesttoken` text NOT NULL,
  `accesstoken` text NOT NULL,
  `app` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_photos`
--

CREATE TABLE IF NOT EXISTS `jos_community_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `albumid` int(11) NOT NULL,
  `caption` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `creator` int(11) NOT NULL,
  `permissions` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `original` varchar(255) NOT NULL,
  `filesize` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  `created` datetime NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `albumid` (`albumid`),
  KEY `idx_storage` (`storage`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_community_photos`
--

INSERT INTO `jos_community_photos` (`id`, `albumid`, `caption`, `published`, `creator`, `permissions`, `image`, `thumbnail`, `original`, `filesize`, `storage`, `created`, `ordering`) VALUES
(1, 1, 'ashley', 1, 69, '0', 'images/photos/69/1/5e4afd377dc068301f1207d2.png', 'images/photos/69/1/thumb_5e4afd377dc068301f1207d2.png', 'images/originalphotos/69/1/5e4afd377dc068301f1207d2.png', 0, 'file', '2011-12-09 06:28:25', 0),
(2, 1, 'bs', 1, 69, '0', 'images/photos/69/1/13b025739ee03ceb1b2f85b5.jpg', 'images/photos/69/1/thumb_13b025739ee03ceb1b2f85b5.jpg', 'images/originalphotos/69/1/13b025739ee03ceb1b2f85b5.jpg', 0, 'file', '2011-12-09 06:28:26', 0),
(3, 1, 'bs3', 1, 69, '0', 'images/photos/69/1/861da1217f97b668b7582fa7.jpg', 'images/photos/69/1/thumb_861da1217f97b668b7582fa7.jpg', 'images/originalphotos/69/1/861da1217f97b668b7582fa7.jpg', 4096, 'file', '2011-12-09 06:28:27', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_photos_albums`
--

CREATE TABLE IF NOT EXISTS `jos_community_photos_albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoid` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `permissions` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `path` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `groupid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `creator` (`creator`),
  KEY `idx_type` (`type`),
  KEY `idx_albumtype` (`id`,`type`),
  KEY `idx_creatortype` (`creator`,`type`),
  KEY `idx_groupid` (`groupid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_community_photos_albums`
--

INSERT INTO `jos_community_photos_albums` (`id`, `photoid`, `creator`, `name`, `description`, `permissions`, `created`, `path`, `type`, `groupid`) VALUES
(1, 1, 69, 'test', '', '0', '2011-12-09 06:27:48', 'images/photos/69/', 'user', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_photos_tag`
--

CREATE TABLE IF NOT EXISTS `jos_community_photos_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photoid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `position` varchar(50) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_photoid` (`photoid`),
  KEY `idx_userid` (`userid`),
  KEY `idx_created_by` (`created_by`),
  KEY `idx_photo_user` (`photoid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_photos_tokens`
--

CREATE TABLE IF NOT EXISTS `jos_community_photos_tokens` (
  `userid` int(11) NOT NULL,
  `token` varchar(200) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_register`
--

CREATE TABLE IF NOT EXISTS `jos_community_register` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `token` varchar(200) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(150) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `ip` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_register_auth_token`
--

CREATE TABLE IF NOT EXISTS `jos_community_register_auth_token` (
  `token` varchar(200) NOT NULL,
  `ip` varchar(25) NOT NULL,
  `auth_key` varchar(200) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`token`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_reports`
--

CREATE TABLE IF NOT EXISTS `jos_community_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniquestring` varchar(200) NOT NULL,
  `link` varchar(255) NOT NULL,
  `status` int(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_reports_actions`
--

CREATE TABLE IF NOT EXISTS `jos_community_reports_actions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reportid` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `parameters` varchar(255) NOT NULL,
  `defaultaction` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_reports_reporter`
--

CREATE TABLE IF NOT EXISTS `jos_community_reports_reporter` (
  `reportid` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_by` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_storage_s3`
--

CREATE TABLE IF NOT EXISTS `jos_community_storage_s3` (
  `storageid` varchar(255) NOT NULL,
  `resource_path` varchar(255) NOT NULL,
  UNIQUE KEY `storageid` (`storageid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_userpoints`
--

CREATE TABLE IF NOT EXISTS `jos_community_userpoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rule_name` varchar(255) NOT NULL DEFAULT '',
  `rule_description` text NOT NULL,
  `rule_plugin` varchar(255) NOT NULL DEFAULT '',
  `action_string` varchar(255) NOT NULL DEFAULT '',
  `component` varchar(255) NOT NULL DEFAULT '',
  `access` tinyint(1) NOT NULL DEFAULT '1',
  `points` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `system` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `jos_community_userpoints`
--

INSERT INTO `jos_community_userpoints` (`id`, `rule_name`, `rule_description`, `rule_plugin`, `action_string`, `component`, `access`, `points`, `published`, `system`) VALUES
(1, 'Add Application', 'Give points when registered user add new application.', 'com_community', 'application.add', '', 1, 0, 0, 1),
(2, 'Remove Application', 'Deduct points when registered user remove application.', 'com_community', 'application.remove', '', 1, 0, 1, 1),
(3, 'Upload Photo', 'Give points when registered user upload photos.', 'com_community', 'photo.upload', '', 1, 0, 1, 1),
(4, 'Add New Group', 'Give points when registered user created new group.', 'com_community', 'group.create', '', 1, 3, 1, 1),
(5, 'Add New Group''s Discussion', 'Give points when registered user created new discussion on group.', 'com_community', 'group.discussion.create', '', 1, 2, 1, 1),
(6, 'Leave Group', 'Deduct points when registered user leave a group.', 'com_community', 'group.leave', '', 1, -1, 1, 1),
(7, 'Approve Friend Request', 'Give points when registered user approved friend request.', 'com_community', 'friends.request.approve', '', 1, 1, 1, 1),
(8, 'Add New Photo Album', 'Give points when registered user added new photo album.', 'com_community', 'album.create', '', 1, 1, 1, 1),
(9, 'Post Group Wall', 'Give points when registered user post wall on group.', 'com_community', 'group.wall.create', '', 1, 1, 1, 1),
(10, 'Join Group', 'Give points when registered user joined a group.', 'com_community', 'group.join', '', 1, 1, 1, 1),
(11, 'Reply Group''s Discussion', 'Give points when registered user replied on group''s discussion.', 'com_community', 'group.discussion.reply', '', 1, 1, 1, 1),
(12, 'Post Wall', 'Give points when registered user post a wall on profile.', 'com_community', 'profile.wall.create', '', 1, 1, 1, 1),
(13, 'Profile Status Update', 'Give points when registered user update their profile status.', 'com_community', 'profile.status.update', '', 1, 1, 1, 1),
(14, 'Profile Update', 'Give points when registered user update their profile.', 'com_community', 'profile.save', '', 1, 1, 1, 1),
(15, 'Update group', 'Give points when registered user update the group.', 'com_community', 'group.updated', '', 1, 1, 1, 1),
(16, 'Upload group avatar', 'Give points when registered user upload avatar to group.', 'com_community', 'group.avatar.upload', '', 1, 0, 1, 1),
(17, 'Create Group''s News', 'Give points when registered user add group''s news.', 'com_community', 'group.news.create', '', 1, 1, 1, 1),
(18, 'Post Wall for photos', 'Give points when registered user post wall at photos.', 'com_community', 'photos.wall.create', '', 1, 1, 1, 1),
(19, 'Remove Friend', 'Deduct points when registered user remove a friend.', 'com_community', 'friends.remove', '', 1, 0, 1, 1),
(20, 'Upload profile avatar', 'Give points when registered user upload profile avatar.', 'com_community', 'profile.avatar.upload', '', 1, 0, 1, 1),
(21, 'Update privacy', 'Give points when registered user updated privacy.', 'com_community', 'profile.privacy.update', '', 1, 0, 1, 1),
(22, 'Reply Messages', 'Give points when registered user reply a message.', 'com_community', 'inbox.message.reply', '', 1, 0, 1, 1),
(23, 'Send Messages', 'Give points when registered user send a message.', 'com_community', 'inbox.message.send', '', 1, 0, 1, 1),
(24, 'Remove Group member', 'Deduct points when registered user remove a group memeber.', 'com_community', 'group.member.remove', '', 1, 0, 1, 1),
(25, 'Delete news', 'Deduct points when registered user remove a news.', 'com_community', 'group.news.remove', '', 1, 0, 1, 1),
(26, 'Remove Wall', 'Deduct points to original poster when registered user remove a wall.', 'com_community', 'wall.remove', '', 1, 0, 1, 1),
(27, 'Remove Photo album', 'Deduct points when registered user remove a photo album.', 'com_community', 'album.remove', '', 1, 0, 1, 1),
(28, 'Remove photos', 'Deduct points when registered user remove a photo.', 'com_community', 'photo.remove', '', 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_userpref`
--

CREATE TABLE IF NOT EXISTS `jos_community_userpref` (
  `id` int(11) NOT NULL COMMENT 'user id',
  `params` text NOT NULL COMMENT 'params'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_users`
--

CREATE TABLE IF NOT EXISTS `jos_community_users` (
  `userid` int(11) NOT NULL,
  `status` text NOT NULL,
  `points` int(11) NOT NULL,
  `posted_on` datetime NOT NULL,
  `avatar` text NOT NULL,
  `thumb` text NOT NULL,
  `invite` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `friendcount` int(11) NOT NULL DEFAULT '0',
  `alias` varchar(255) NOT NULL,
  `latitude` float NOT NULL DEFAULT '255',
  `longitude` float NOT NULL DEFAULT '255',
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_community_users`
--

INSERT INTO `jos_community_users` (`userid`, `status`, `points`, `posted_on`, `avatar`, `thumb`, `invite`, `params`, `view`, `friendcount`, `alias`, `latitude`, `longitude`) VALUES
(65, '', 0, '0000-00-00 00:00:00', 'components/com_community/assets/default.jpg', 'components/com_community/assets/default_thumb.jpg', 0, 'notifyEmailSystem=1\nprivacyProfileView=0\nprivacyPhotoView=0\nprivacyFriendsView=0\nprivacyVideoView=1\nnotifyEmailMessage=1\nnotifyEmailApps=1\nnotifyWallComment=0\n', 0, 0, '', 255, 255),
(69, '', 4, '0000-00-00 00:00:00', 'components/com_community/assets/default.jpg', 'components/com_community/assets/default_thumb.jpg', 0, 'notifyEmailSystem=1\nprivacyProfileView=0\nprivacyPhotoView=0\nprivacyFriendsView=0\nprivacyVideoView=1\nnotifyEmailMessage=1\nnotifyEmailApps=1\nnotifyWallComment=0\n\n', 3, 0, '', 255, 255);

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_videos`
--

CREATE TABLE IF NOT EXISTS `jos_community_videos` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL DEFAULT 'file',
  `video_id` varchar(200) DEFAULT NULL,
  `description` text NOT NULL,
  `creator` int(11) unsigned NOT NULL,
  `creator_type` varchar(200) NOT NULL DEFAULT 'user',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `permissions` varchar(255) NOT NULL DEFAULT '0',
  `category_id` int(11) unsigned NOT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '1',
  `featured` tinyint(3) NOT NULL DEFAULT '0',
  `duration` float unsigned DEFAULT '0',
  `status` varchar(200) NOT NULL DEFAULT 'pending',
  `thumb` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `groupid` int(11) unsigned NOT NULL DEFAULT '0',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `storage` varchar(64) NOT NULL DEFAULT 'file',
  PRIMARY KEY (`id`),
  KEY `creator` (`creator`),
  KEY `idx_groupid` (`groupid`),
  KEY `idx_storage` (`storage`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_community_videos`
--

INSERT INTO `jos_community_videos` (`id`, `title`, `type`, `video_id`, `description`, `creator`, `creator_type`, `created`, `permissions`, `category_id`, `hits`, `published`, `featured`, `duration`, `status`, `thumb`, `path`, `groupid`, `filesize`, `storage`) VALUES
(1, 'HD Guzarish - Ghajini FULL SONG', 'youtube', 'aXfMMdc4HDg', 'Ghajini\r\nGUZARISH\r\naamir khan asin\r\nhigh quality', 69, 'user', '2011-12-09 06:26:21', '0', 1, 3, 1, 0, 311, 'ready', 'images/videos/69/thumbs/QT50z4zJP8t.jpg', 'http://www.youtube.com/watch?v=aXfMMdc4HDg&feature=g-vrec', 0, 0, 'file');

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_videos_category`
--

CREATE TABLE IF NOT EXISTS `jos_community_videos_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `published` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_community_videos_category`
--

INSERT INTO `jos_community_videos_category` (`id`, `name`, `description`, `published`) VALUES
(1, 'General', 'General video channel', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_community_wall`
--

CREATE TABLE IF NOT EXISTS `jos_community_wall` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contentid` int(10) unsigned NOT NULL DEFAULT '0',
  `post_by` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(45) NOT NULL,
  `comment` text NOT NULL,
  `date` varchar(45) NOT NULL,
  `published` tinyint(1) unsigned NOT NULL,
  `type` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `contentid` (`contentid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_components`
--

CREATE TABLE IF NOT EXISTS `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;

--
-- Dumping data for table `jos_components`
--

INSERT INTO `jos_components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=0\nfilter_tags=\nfilter_attritbutes=\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, 'administrator=en-GB\nsite=en-GB', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1),
(34, 'Ninja RSS Syndicator', 'option=com_ninjarsssyndicator', 0, 0, 'option=com_ninjarsssyndicator', 'Ninja RSS Syndicator', 'com_ninjarsssyndicator', 0, 'components/com_ninjarsssyndicator/assets/images/nficon.png', 0, '', 1),
(35, 'Dashboard', '', 0, 34, 'option=com_ninjarsssyndicator&task=info', 'Dashboard', 'com_ninjarsssyndicator', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(36, 'Feeds', '', 0, 34, 'option=com_ninjarsssyndicator&task=feeds', 'Feeds', 'com_ninjarsssyndicator', 1, 'js/ThemeOffice/component.png', 0, '', 1),
(37, 'Button Maker', '', 0, 34, 'option=com_ninjarsssyndicator&task=buttonmaker', 'Button Maker', 'com_ninjarsssyndicator', 2, 'js/ThemeOffice/component.png', 0, '', 1),
(38, 'Default Settings', '', 0, 34, 'option=com_ninjarsssyndicator&task=config', 'Default Settings', 'com_ninjarsssyndicator', 3, 'js/ThemeOffice/component.png', 0, '', 1),
(82, 'Joomap', 'option=com_joomap', 0, 0, 'option=com_joomap', 'Joomap', 'com_joomap', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(41, 'swMenuFree', 'option=com_swmenufree', 0, 0, 'option=com_swmenufree', 'swMenuFree', 'com_swmenufree', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(66, 'QuickFAQ', 'option=com_quickfaq', 0, 0, 'option=com_quickfaq', 'QuickFAQ', 'com_quickfaq', 0, '../administrator/components/com_quickfaq/assets/images/quickfaq.png', 0, 'show_updatecheck=0\ntrigger_onprepare_content=0\nshow_jcomments=0\nshow_jomcomments=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_vote=0\nshow_hits=0\nshow_tags=0\nshow_favourites=0\nshow_categories=1\nfilter=0\ndisplay=0\nlimit=10\ncatlimit=5\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_state_icon=0\nupload_extensions=bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=components/com_quickfaq/uploads\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=1\nfeed_summary=0\n\n', 1),
(106, 'ninjaXplorer', 'option=com_ninjaxplorer', 0, 0, 'option=com_ninjaxplorer', 'ninjaXplorer', 'com_ninjaxplorer', 0, 'components/com_ninjaxplorer/images/nssIcon.png', 0, '', 1),
(107, 'DJ Image Slider', '', 0, 0, 'option=com_djimageslider', 'DJ Image Slider', 'com_djimageslider', 0, 'components/com_djimageslider/assets/icon-16-dj.png', 0, 'directory=fruit/\n\n', 1),
(108, 'Slides', '', 0, 107, 'option=com_djimageslider&view=items', 'Slides', 'com_djimageslider', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(109, 'Categories', '', 0, 107, 'option=com_categories&section=com_djimageslider', 'Categories', 'com_djimageslider', 1, 'js/ThemeOffice/component.png', 0, '', 1),
(110, 'yvComment', 'option=com_yvcomment', 0, 0, 'option=com_yvcomment', 'yvComment', 'com_yvcomment', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(111, 'List of Comments', '', 0, 110, 'option=com_yvcomment&view=listofcomments', 'List of Comments', 'com_yvcomment', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(112, 'List of Comments Type 2', '', 0, 110, 'option=com_yvcomment&view=listofcomments&comment_type_id=2', 'List of Comments Type 2', 'com_yvcomment', 1, 'js/ThemeOffice/component.png', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_contact_details`
--

CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_contact_details`
--

INSERT INTO `jos_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Name', 'name', 'Position', 'Street', 'Suburb', 'State', 'Country', 'Zip Code', 'Telephone', 'Fax', 'Miscellanous info', 'powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\r\nshow_position=1\r\nshow_email=0\r\nshow_street_address=1\r\nshow_suburb=1\r\nshow_state=1\r\nshow_postcode=1\r\nshow_country=1\r\nshow_telephone=1\r\nshow_mobile=1\r\nshow_fax=1\r\nshow_webpage=1\r\nshow_misc=1\r\nshow_image=1\r\nallow_vcard=0\r\ncontact_icons=0\r\nicon_address=\r\nicon_email=\r\nicon_telephone=\r\nicon_fax=\r\nicon_misc=\r\nshow_email_form=1\r\nemail_description=1\r\nshow_email_copy=1\r\nbanned_email=\r\nbanned_subject=\r\nbanned_text=', 0, 12, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content`
--

CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=195 ;

--
-- Dumping data for table `jos_content`
--

INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(64, 'How We Work', 'how-we-work', '', '<p>Information coming soom...</p>', '', -2, 5, 0, 34, '2010-11-23 06:10:01', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-11-23 06:10:01', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 14, 'robots=\nauthor='),
(65, 'Board and Management', 'board-and-management', '', '<p>Information coming soom...</p>', '', -2, 5, 0, 34, '2010-11-23 06:11:17', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-11-23 06:11:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 11, 'robots=\nauthor='),
(66, 'Key Personnel', 'key-personnel', '', '<p>Information coming soon...</p>', '', -2, 5, 0, 34, '2010-11-23 06:12:11', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-11-23 06:12:11', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 12, 'robots=\nauthor='),
(46, 'Overview', 'overview', '', '<p>Recently, Bangladesh has made sustained progress in its economic, social, and political sectors and has adopted sound macroeconomic policies. Bangladesh has also demonstrated improvement in its ranking in Transparency International''s (TI) Corruption Perceptions Index (CPI). Until 2005, the country had been ranked the most corrupt country in the world by TI for five consecutive years. Current trends show gradual restoration of the country''s image as Bangladesh moves up several positions in TI''s CPI. In 2009, Bangladesh ranked 139 out of 180 countries and in 2010, Bangladesh ranked 134 out of 178 countries.</p>\r\n', '\r\n<p>However, Bangladesh needs to demonstrate further improvement in controlling corruption to achieve its broader development goals. Its institutional systems remain inadequate; unresponsive checks and balances in the public sector diminish Bangladesh''s credibility and legitimacy. Widespread corruption stemming from poor governmental and nongovernmental oversight mechanisms and inequitable allocation of public resources continues to jeopardize the country''s overall development.</p>\r\n<p>The United States Agency for International Development (USAID) launched the "Promoting Governance, Accountability, Transparency and Integrity" (PROGATI) project, in September 2007 to assist Bangladesh to control corruption by strengthening public oversight of government funds.</p>\r\n<p>Since its launch in 2007, PROGATI has achieved the following successes:</p>\r\n<ul>\r\n<li> The establishment of the  Journalism Training and Research Initiative (JATRI) and first ever independent center for investigative journalism in Bangladesh</li>\r\n<li>Training of over 1050 journalists on investigative skills and use of the Right to Information law to investigate corruption</li>\r\n<li>Over 475 grass roots level anti-corruption campaigns to monitor corruption in government services and raise citizen awareness of  corruption issues</li>\r\n<li>Over 150 public officials at the national and local level trained on improved techniques for collecting evidence of fraud and corruption</li>\r\n<li>The establishment of a Budget Analysis and Monitoring Unit (BAMU) in the Parliament Secretariat providing fiscal and budget analysis to Members of Parliament</li>\r\n<li>Over 2200 civil society representatives trained on tools to identify and monitor corruption in their community</li>\r\n<li>Introduction of new audit techniques and promotion of greater transparency in the Office of the Comptroller and Auditor General</li>\r\n<li>Establishment of an anti-corruption hotline for women entrepreneurs</li>\r\n</ul>', -2, 5, 0, 34, '2010-11-09 06:22:51', 62, '', '2010-11-29 10:21:58', 62, 0, '0000-00-00 00:00:00', '2010-11-09 06:22:51', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 0, '', '', 0, 126, 'robots=\nauthor='),
(47, 'Demo News2', 'demo-news2', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>\r\n', '\r\n<p>It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p> </p>', -2, 1, 0, 1, '2010-11-09 06:37:52', 62, '', '2010-11-09 06:40:36', 62, 0, '0000-00-00 00:00:00', '2010-11-09 06:37:52', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(48, 'Latest News 4', 'latest-news-4', '', '<p>Latest news description</p>', '', -2, 1, 0, 1, '2010-11-09 06:37:52', 62, '', '2011-02-28 09:48:09', 65, 0, '0000-00-00 00:00:00', '2010-11-09 06:37:52', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 38, 'robots=\nauthor='),
(49, 'Demo News3', 'demo-news3', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. \r\n', '\r\nIt has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', -2, 1, 0, 1, '2010-11-09 06:40:41', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-11-09 06:40:41', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 10, 'robots=\nauthor='),
(50, 'Welcome to BRTC', 'welcome-to-brtc', '', '<p>Welcome to our website. We will appreciate your comments, feedback on our projects.</p>', '', -2, 0, 0, 0, '2010-11-09 06:41:31', 62, '', '2011-01-25 00:33:09', 65, 0, '0000-00-00 00:00:00', '2010-11-09 06:41:31', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(51, 'Asset Provision', 'asset-provision', '', '<p>Information Coming Soon...</p>', '', -2, 6, 0, 27, '2010-11-09 06:40:41', 62, '', '2010-11-28 10:04:08', 62, 0, '0000-00-00 00:00:00', '2010-11-09 06:40:41', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 6, 'robots=\nauthor='),
(86, 'Local Government - Tasks and Expected Results', 'local-government-tasks-and-expected-results', '', '<p>Information Coming Soon...</p>', '', -2, 7, 0, 32, '2010-11-28 11:05:46', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-11-28 11:05:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 11, 'robots=\nauthor='),
(52, 'Infrastructure', 'infrastructure', '', '<p>Information Coming Soon...</p>', '', -2, 6, 0, 27, '2010-11-09 06:37:52', 62, '', '2010-11-28 10:02:28', 62, 0, '0000-00-00 00:00:00', '2010-11-09 06:37:52', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(53, 'Income Generation', 'income-generation', '', '<p>Information Coming Soon...</p>', '', -2, 6, 0, 27, '2010-11-09 06:37:52', 62, '', '2010-11-28 10:03:18', 62, 0, '0000-00-00 00:00:00', '2010-11-09 06:37:52', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(54, 'Civil Society - Tasks and Expect Results', 'civil-society-tasks-and-expect-results', '', '<p>Strengthen Civil Society to support and promote anti-corruption reforms</p>\r\n<ul>\r\n<li>Build new and  strengthen existing civil society coalitions, networks and public-private  partnerships to support and promote anti-corruption reform</li>\r\n<li>Build specialized CSO  watchdog expertise to monitor, analyze and publicize corruption</li>\r\n<li>Increase citizen  participation in budget oversight</li>\r\n<li>Increase  opportunities for citizen participation in and oversight of national government  decision-making</li>\r\n</ul>', '', -2, 7, 0, 32, '2010-11-09 06:37:52', 62, '', '2010-11-28 10:55:54', 62, 0, '0000-00-00 00:00:00', '2010-11-09 06:37:52', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 41, 'robots=\nauthor='),
(55, 'Public Institution - Tasks and Expected Results', 'public-institution-tasks-and-expected-results', '', '<p>Strengthen Public Institutions oversight capacity</p>\r\n<ul>\r\n<li>Expand the reporting authority of the Office of The Comptroller and Auditor General (CAG)</li>\r\n<li>Increase the effectiveness of CAG procedures for oversight and operating systems</li>\r\n<li>Strengthen policy formulation and implementation capacities</li>\r\n<li>Improve intra-governmental consultation and information</li>\r\n</ul>', '', -2, 7, 0, 32, '2010-11-09 06:37:52', 62, '', '2010-11-28 10:59:01', 62, 0, '0000-00-00 00:00:00', '2010-11-09 06:37:52', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 38, 'robots=\nauthor='),
(56, 'Media - Tasks and Expected Results', 'media-tasks-and-expected-results', '', '<p>Strengthen Media to serve as an effective public watchdog</p>\r\n<ul>\r\n<li>Establish an Independent Center for Investigative Journalism</li>\r\n<li>Increase media capacity to report on transparency and corruption issues</li>\r\n<li>Increase media capacity to advocate for legal reforms and right to information laws</li>\r\n<li>Increase citizen access to improved government information</li>\r\n<li>Improve dissemination of information by selected public institutions at national and local levels</li>\r\n</ul>', '', -2, 7, 0, 32, '2010-11-09 06:40:41', 62, '', '2010-11-28 11:01:35', 62, 0, '0000-00-00 00:00:00', '2010-11-09 06:40:41', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 19, 'robots=\nauthor='),
(57, 'The Right to Know', 'the-right-to-know', '', '<p>Procurement and corruption have a long-standing bond in Bangladesh.  Breaking that bond requires greater transparency and public scrutiny.  The Promoting Governance, Accountability, Transparency and Integrity (PROGATI) program has provided training on using the Right to Information Law (RTI) for investigative journalism for broadcast and print media houses around Bangladesh.</p>\r\n', '\r\n<div class="success_story" style="float:left;">\r\n<div class="success_story_left" style="border-right: 1px solid #00247e; width: 35%; float: left; padding-right: 10px;">\r\n<table class="success_story_table" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="padding-bottom:20px; font-size:17px; color:#002a6c;font-weight:bold;font-family:arial;" valign="top">Journalists using investigative techniques uncover corruption in public procurement</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-bottom:20px;" valign="top"><img src="images/stories/success_stories/right_to_know.jpg" border="0" width="200" align="left" /></td>\r\n</tr>\r\n<tr>\r\n<td valign="top">The USAID-funded Promoting Governance, Accountability, Transparency and Integrity (PROGATI) program is working in partnership with the Office of the Comptroller and Auditor General to strengthen public financial management.  Using skills developed through training on how to detect and document cases of fraud and corruption, government auditors are actively working to prevent and reduce public sector corruption.  Following the PROGATI training, auditors have detected identity fraud and forged documents.</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:20px;" valign="top"><a href="http://www.usaid.gov" target="_blank">U.S. Agency for International Development</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="success_story_right" style="float: right; width: 60%;">Procurement and corruption have a long-standing bond in Bangladesh.  Breaking that bond requires greater transparency and public scrutiny.  The Promoting Governance, Accountability, Transparency and Integrity (PROGATI) program has provided training on using the Right to Information Law (RTI) for investigative journalism for broadcast and print media houses around Bangladesh. 	<br /><br /> The RTI law is new to journalists and government officials in Bangladesh.  The PROGATI trainings not only helped both sides understand the benefits that the RTI Law can have in exposing corruption, but it also served in building partnerships between journalists and government, which ultimately serves all the citizens of Bangladesh.<br /><br /> Officials from the Ministry of Planning’s Central Procurement Technical Unit (CPTU) have participated in many of the PROGATI training events.  They provided assistance in helping the journalists understand the Public Procurement Rules (PPR), it’s flaws, and how RTI can be used to investigate procurement.<br /><br /> The trainings have resulted in important investigative reporting articles on transparent procurement.<br /><br /> Not very long after the reporters at The Daily Star, the largest circulating English daily newspaper in Bangladesh, received training on RTI, that Deputy Editor, Sharier Khan published a report on the Sylhet Power Project’s efforts to force the Power Development Board to award a bid to an inferior firm. The Daily Star’s investigation using the RTI training found that the bid proposal in question lacked the necessary documents.  Since the public procurement rules had no mechanisms in place for evaluating bids that do not comply with the rules, the bid proposal should have been automatically rejected.<br /><br /> Fazle Elahi a reporter with the Kaler Kantho daily newspaper in Rangamati took the training and ran with it.  He wrote a series of four articles sighting many examples of widespread corruption and tender manipulation by local officials.  Elahi says, that he felt well equipped to investigate the procurement issues because of the training he received from PROGATI.</div>\r\n</div>', -2, 8, 0, 28, '2010-11-09 06:40:41', 62, '', '2010-12-13 07:26:38', 63, 0, '0000-00-00 00:00:00', '2010-11-09 06:40:41', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=0\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 18, 0, 0, '', '', 0, 28, 'robots=\nauthor='),
(58, 'Stopping Corruption in Cyclone Protection', 'stopping-corruption-in-cyclone-protection', '', '<p>In November 2007, Cyclone Sidr claimed the lives of over 500 villagers in Amtali Upazilla in the Chittagong Division.  Seasonal storms have caused significant destruction in this remote area of Bangladesh.  In 2010, the Government of Bangladesh allocated funds to construct a cyclone center for residents of Amtali.  This sturdy structure provides local residents shelter from high winds and storm surges that accompany cyclones.</p>\r\n', '\r\n<div class="success_story" style="float:left;">\r\n<div class="success_story_left" style="border-right: 1px solid #00247e; width: 35%; float: left; padding-right: 10px;">\r\n<table class="success_story_table" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="padding-bottom:20px; font-size:17px; color:#002a6c;font-weight:bold;font-family:arial;" valign="top">Citizen groups rally to stop corruption in the construction of a vital cyclone shelter</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-bottom:20px;" valign="top"><img src="images/stories/success_stories/stopping_corruption_in_cycl.jpg" border="0" width="200" align="left" /></td>\r\n</tr>\r\n<tr>\r\n<td valign="top">The USAID-funded Promoting Governance, Accountability, Transparency and Integrity (PROGATI) program builds the capacity of local level civil society partners to monitor government services.  After identifying corruption in the construction of a critical cyclone center, PROGATI partners mobilize hundreds of citizens to protest and call for immediate changes.  Citizen groups and local officials are now working together to monitor the cyclone center construction to prevent corruption.</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:20px;" valign="top"><a href="http://www.usaid.gov" target="_blank">U.S. Agency for International Development</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="success_story_right" style="float: right; width: 60%;">In November 2007, Cyclone Sidr claimed the lives of over 500 villagers in Amtali Upazilla in the Chittagong Division.  Seasonal storms have caused significant destruction in this remote area of Bangladesh.  In 2010, the Government of Bangladesh allocated funds to construct a cyclone center for residents of Amtali.  This sturdy structure provides local residents shelter from high winds and storm surges that accompany cyclones. <br /><br /> Corruption in public infrastructure construction is rife in Bangladesh, particularly in remote areas where there is little oversight.  Soon after construction on the cyclone center began, citizens became alarmed at corruption in the project. <br /><br /> Using anti-corruption tools developed with support of the Promoting Governance, Accountability, Transparency and Integrity (PROGATI) program, local civil society organizations began advocating for an end to corruption.  Hundreds of citizens, journalists and government officials participated in a public rally to demand an end to corruption in the construction of the shelter.   <br /><br /> A group of citizens then conducted a citizen scorecard, a tool PROGATI has introduced to identify corruption in public services through investigation, consultation and dialogue.  The scorecard process revealed specific instances of corruption, including the use of substandard materials, absence of required government oversight, and dangerous and unapproved changes to the planned structure.  After the finalization of scorecard findings, 500 citizens came together in a PROGATI supported campaign calling for a quick solution.  In a meeting widely covered by local media, the citizen group held a public meeting to present their findings to local officials. <br /><br /> The PROGATI supported activities prompted an immediate response.  Construction on the cyclone center was halted and the citizen group asked to submit a formal report to local authorities.  In response, the local authorities restarted the construction and asked the citizen group to regularly monitor the project to ensure the shelter is build to standard. <br /><br /> Due to the PROGATI activities, Amtali will finally have a well constructed cyclone shelter, and citizens are working together with local authorities to reduce corruption.</div>\r\n</div>', -2, 8, 0, 28, '2010-11-09 06:37:52', 62, '', '2010-12-13 07:27:04', 63, 0, '0000-00-00 00:00:00', '2010-11-09 06:37:52', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=0\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 9, 'robots=\nauthor='),
(59, 'Fighting Corruption in Their Community', 'fighting-corruption-in-their-community', '', '<p>In the seaside town of Patenga, Bangladesh, the human rights organization known as MAISHA diligently works with the local community on a number of issues, including  human rights and legal services, disaster preparedness and HIV/AIDS prevention.</p>\r\n', '\r\n<div class="success_story" style="float:left;">\r\n<div class="success_story_left" style="border-right: 1px solid #00247e; width: 35%; float: left; padding-right: 10px;">\r\n<table class="success_story_table" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="padding-bottom:20px; font-size:17px; color:#002a6c;font-weight:bold;font-family:arial;" valign="top">After receiving training on how to monitor corruption in public services, a local organization launches an independent effort to reduce corruption in education.</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-bottom:20px;" valign="top"><img src="images/stories/success_stories/fighting_corruption_in_their_community.jpg" border="0" width="200" align="left" /></td>\r\n</tr>\r\n<tr>\r\n<td valign="top">The USAID-funded Promoting Governance, Accountability, Transparency and Integrity (PROGATI) program is working in partnership with the Office of the Comptroller and Auditor General to strengthen public financial management.  Using skills developed through training on how to detect and document cases of fraud and corruption, government auditors are actively working to prevent and reduce public sector corruption.  Following the PROGATI training, auditors have detected identity fraud and forged documents.</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:20px;" valign="top"><a href="http://www.usaid.gov" target="_blank">U.S. Agency for International Development</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="success_story_right" style="float: right; width: 60%;">In the seaside town of Patenga, Bangladesh, the human rights organization known as MAISHA diligently works with the local community on a number of issues, including  human rights and legal services, disaster preparedness and HIV/AIDS prevention.<br /><br /> In 2009 the Promoting Governance, Accountability, Transparency and Integrity (PROGATI) provided training to several MAISHA staff members on how use citizen scorecards to monitoring government services.  The PROGATI training helped MAISHA recognize the role that each citizen can play in exposing corruption, demanding transparency and government accountability.<br /><br /> MAISHA was so motivated to fight corruption that, on their own initiative, they used PROGATI skills to launch a monitoring exercise using the citizen scorecard. The focus of their efforts was to investigate possible corruption within the local school district.  MAISHA’s program included meetings with local teachers and focus group discussions with community members.<br /><br /> The results of their investigation were dramatic.   MAISHA found that the Head Master of the local school had been demanding money from the students for everything from textbooks, which the government provided free, to party supplies.  The amount of money was also varied and depended on how much money the parents had.  MAISHA also discovered that the Head Master was falsifying documents stating that the school’s oversight committee was meeting regularly and maintaining a ledger for the money that was collected.<br /><br /> After the corruption was exposed, the School Management Committee took immediate action, stopping the Head Master from collecting any money from the students without their consent.   In 2010 students did not have to pay for “free” government books, and for the first time, transparency is at the top of the agenda.<br /><br /> PROGATI training has empowered local organizations to start their own anti-corruption initiatives.  It has built the capacity of citizen groups collaborate with government officials to improve transparency.  MAISHA is now considered a local resource by local government officials and asked to monitor other services where they think corruption might exist.</div>\r\n</div>', -2, 8, 0, 28, '2010-11-09 06:37:52', 62, '', '2010-12-13 07:27:22', 63, 0, '0000-00-00 00:00:00', '2010-11-09 06:37:52', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 17, 'robots=\nauthor='),
(60, 'Approach', 'approach', '', '<p>PROGATI, which means progress in Bangla, brings together government institutions, civil society organizations (CSOs), NGOs media outlets and elected officials to promote the improved governance of public resources and work together toward a fairer, more just, and better governed society. The program has introduced participatory activities in four thematic areas.</p>\r\n', '\r\n<ul>\r\n<li>First, PROGATI works with the Parliament and assist with the management of national budgets and monitoring of government expenses.</li>\r\n<li>Second, PROGATI activities help monitor the usage of public resources to establish a more transparent and accountable relationship with the public.</li>\r\n<li>Third, to increase citizen understanding and participation in the national budget process, PROGATI collaborates with CSOs throughout the country that play an important role in promoting reform.</li>\r\n<li>Finally, the project collaborates with media outlets and journalists to raise professional standards and build a culture of investigative journalism that encourages reporting on corruption issues.</li>\r\n</ul>', -2, 5, 0, 34, '2010-11-09 07:00:14', 62, '', '2010-11-29 10:12:46', 62, 0, '0000-00-00 00:00:00', '2010-11-09 07:00:14', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 57, 'robots=\nauthor='),
(61, 'Mission', 'mission', '', '<p>Information coming soon...</p>', '', -2, 5, 0, 34, '2010-11-23 04:17:26', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-11-23 04:17:26', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 86, 'robots=\nauthor='),
(62, 'Objective', 'objective', '', '<p>The objective of PROGATI is to reduce the level of corruption in Bangladesh. USAID will work in close collaboration with the Government ot Bangladesh to achieve the following objectives of PROGATI:</p>\r\n', '\r\n<ul>\r\n<li>Increase Parliament capacity to analyze, monitor and influence national policy and budgetary priorities and strengthen its oversight capacity</li>\r\n<li>Increase the effectiveness of internal procedures of selected public institutions dealing with public finance monitoring and auditing</li>\r\n<li>Build new and strengthen existing civil society coalitions, networks and public-private partnerships to increase awareness of corruption practices</li>\r\n<li>Increase opportunities for citizen participation in and oversight of the national budget and government decision-making processes</li>\r\n<li>Increase media capacity to report on transparency and corruption issues and advocate for legal reforms</li>\r\n<li>Improve the dissemination of information by selected public institutions at both the national and local levels to increase citizen access to</li>\r\n</ul>', -2, 5, 0, 34, '2010-11-23 06:08:21', 62, '', '2010-11-29 10:15:06', 62, 0, '0000-00-00 00:00:00', '2010-11-23 06:08:21', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 41, 'robots=\nauthor='),
(63, 'Vision', 'vision', '', '<p>Information coming soon...</p>', '', -2, 5, 0, 34, '2010-11-23 06:09:17', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-11-23 06:09:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 13, 'robots=\nauthor='),
(67, 'Effective Leadership', 'effective-leadership', '', '<p>Information Coming Soon...</p>', '', -2, 6, 0, 38, '2010-11-25 06:05:24', 62, '', '2010-11-28 10:05:35', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 0, '', '', 0, 2, 'robots=\nauthor='),
(85, 'Parliament - Tasks and Expected Results', 'parliament-tasks-and-expected-results', '', '<p>Strengthen Parliament oversight capacity</p>\r\n<ul>\r\n<li>Establish a Parliamentary Budget Analysis and Monitoring Unit</li>\r\n<li>Increase Parliament capacity to influence national policy and budget priorities and strengthen oversight capacity</li>\r\n</ul>', '', -2, 7, 0, 32, '2010-11-28 11:01:44', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2010-11-28 11:01:44', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 21, 'robots=\nauthor='),
(68, 'Efficient Management', 'efficient-management', '', '<p>Information Coming Soon...</p>', '', -2, 6, 0, 38, '2010-11-25 06:05:24', 62, '', '2010-11-28 10:06:25', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 2, 'robots=\nauthor='),
(84, 'Common Goal', 'common-goal', '', '<p>Information Coming Soon...</p>', '', -2, 6, 0, 38, '2010-11-25 06:05:24', 62, '', '2010-11-28 10:07:29', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 2, 'robots=\nauthor='),
(69, 'Demo Article01', 'demo-article01', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', -2, 6, 0, 41, '2010-11-25 06:05:24', 62, '', '2010-11-25 06:08:16', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(70, 'Demo Article02', 'demo-article02', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', -2, 6, 0, 41, '2010-11-25 06:05:24', 62, '', '2010-11-25 06:07:59', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(71, 'Demo Article02', 'demo-article02', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', -2, 6, 0, 40, '2010-11-25 06:05:24', 62, '', '2010-11-25 06:07:59', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(72, 'Demo Article01', 'demo-article01', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', -2, 6, 0, 40, '2010-11-25 06:05:24', 62, '', '2010-11-25 06:08:16', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(73, 'Demo Article02', 'demo-article02', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', -2, 6, 0, 39, '2010-11-25 06:05:24', 62, '', '2010-11-25 06:07:59', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(74, 'Demo Article01', 'demo-article01', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', -2, 6, 0, 39, '2010-11-25 06:05:24', 62, '', '2010-11-25 06:08:16', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(75, 'Demo Article01', 'demo-article01', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', -2, 7, 0, 42, '2010-11-25 06:05:24', 62, '', '2010-11-25 06:08:16', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(76, 'Demo Article02', 'demo-article02', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', -2, 7, 0, 42, '2010-11-25 06:05:24', 62, '', '2010-11-25 06:07:59', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(77, 'Demo Article01', 'demo-article01', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', -2, 7, 0, 43, '2010-11-25 06:05:24', 62, '', '2010-11-25 06:08:16', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(78, 'Demo Article02', 'demo-article02', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', -2, 7, 0, 43, '2010-11-25 06:05:24', 62, '', '2010-11-25 06:07:59', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(79, 'Demo Article01', 'demo-article01', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', -2, 7, 0, 44, '2010-11-25 06:05:24', 62, '', '2010-11-25 06:08:16', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(80, 'Demo Article02', 'demo-article02', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', -2, 7, 0, 44, '2010-11-25 06:05:24', 62, '', '2010-11-25 06:07:59', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(81, 'Demo Article01', 'demo-article01', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', -2, 7, 0, 45, '2010-11-25 06:05:24', 62, '', '2010-11-25 06:08:16', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(82, 'Demo Article02', 'demo-article02', '', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>', '', -2, 7, 0, 45, '2010-11-25 06:05:24', 62, '', '2010-11-25 06:07:59', 62, 0, '0000-00-00 00:00:00', '2010-11-25 06:05:24', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 0, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(83, 'Message From Chairman', 'message-from-chairman', '', '<div id="chairman_pic"><img src="images/stories/profile_bg.gif" border="0" align="left" /></div>\r\n<div id="start_quote" style="text-align:left;">\r\n<p class="message_container">The USAID-funded Promoting Governance, Accountability, Transparency and Integrity (PROGATI) program builds the capacity of local level civil society partners to monitor government services. After identifying corruption ...<span class="end_quote"> </span></p>\r\n</div>', '', -2, 10, 0, 53, '2010-11-28 04:45:29', 62, '', '2010-11-28 13:36:24', 62, 0, '0000-00-00 00:00:00', '2010-11-28 04:45:29', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 19, 0, 0, '', '', 0, 6, 'robots=\nauthor='),
(87, 'special brtc service in long route', 'latest-news-3', '', '<p>People are going to their own town by leaving capital city. People get a lot of panic this time to reach their own town or village. BRTC has come up with some action to reduce this kind of pain. Almost 200 city bus is being used to give this support too. BRTC started to provide this special service from 11 November. BRTC bus start journey from Motijheel, Kollanpur, Joyar Shahara, Mirpur 12 no, Fulbaria, Gabtali BRTC bus counter, Mohakhali Bus tarminal and Airport station. Passengers can get into bus for the long route journey from these stopage. This service will be continued until the 3rd day after EID day.</p>', '', -2, 1, 0, 1, '2010-11-09 06:41:31', 62, '', '2011-02-28 11:34:52', 68, 0, '0000-00-00 00:00:00', '2010-11-09 06:41:31', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 36, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(88, 'Using a Fellowship to Launch a Career', 'using-a-fellowship-to-launch-a-career', '', '<p>Less than a year ago, Shubarna Mostafa had never even looked through the viewfinder of a camera. Today, she is known to millions of Bangladesh television viewers as an on-air reporter for NTV, one of the country’s leading news outlets.</p>\r\n', '\r\n<div class="success_story" style="float:left;">\r\n<div class="success_story_left" style="border-right: 1px solid #00247e; width: 35%; float: left; padding-right: 10px;">\r\n<table class="success_story_table" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="padding-bottom:20px; font-size:17px; color:#002a6c;font-weight:bold;font-family:arial;" valign="top">An aspiring journalist completes a USAID-funded  Women Journalist Fellowship and joins one of the largest news outlets in Bangladesh.</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-bottom:20px;" valign="top"><img src="images/stories/success_stories/using_a_fellowship_to_launch_a_career.jpg" border="0" width="200" align="left" /></td>\r\n</tr>\r\n<tr>\r\n<td valign="top">“I always thought I was not fit for this profession.  I am not sure if I am a perfect reporter now but I am more confident and believe in myself. Yes, I can!”</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:20px;" valign="top"><a href="http://www.usaid.gov" target="_blank">U.S. Agency for International Development</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="success_story_right" style="float: right; width: 60%;">Less than a year ago, Shubarna Mostafa had never even looked through the viewfinder of a camera. Today, she is known to millions of Bangladesh television viewers as an on-air reporter for NTV, one of the country’s leading news outlets.<br /><br /> Shubarna gives credit for this transformation to a USAID-funded Promoting Governance, Accountability and Transparency Initiative (PROGATI) program. Shubarna, 25, is one of 20 aspiring young women journalists to complete nine-month journalism fellowships sponsored by PROGATI. PROGATI hopes to grow a culture of investigative reporting to increase reporting on corruption issues. The fellowships will also boost the number of women journalists in Bangladesh, where only 6 percent of the reporters or editors at 800 newspapers and nearly 20 broadcast outlets are women.<br /><br /> The PROGATI Women Journalism Fellowship puts awardees through a rigorous three-phase program. First, they concentrate on investigative reporting techniques. Second, they produce investigative reports. Third, they participate in internships in media houses.  Shubarna said the program not only built her skills but her confidence. She came to Dhaka University in 2005 from Jamalpur, a small district river town in Northern Bangladesh. Inspired by her teacher to take the fellowship, Shubarna soon felt “all my fear disappear” as she was exposed to working journalists, who served as resource persons and mentors for PROGATI funded fellows.<br /><br /> “We were assigned to write news,” she continued. “When we were interviewing people and collecting information, gradually I understood that the fear that I had was not there [any more].” After completing the first two phases of the PROGATI Fellowship, Shubarna was placed at the Bangla Vision television station for her three-month internship.  Fellows work in real news environments, where they learn to adapt to a hectic work place. <br /><br /> In Shubarna’s case, it was during her internship that NTV’s chief of correspondents, called offering her a permanent position on the news team. She now covers the cultural beat, as well as general assignment stories.</div>\r\n</div>', -2, 8, 0, 28, '2010-12-06 04:33:26', 62, '', '2010-12-13 07:27:42', 63, 0, '0000-00-00 00:00:00', '2010-12-06 04:33:26', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 5, 'robots=\nauthor='),
(89, 'Promoting Transparency in Food Aid', 'promoting-transparency-in-food-aid', '', '<p>In rural Bangladesh, the extremely poor receive government food assistance through the Vulnerable Group Development (VGD) and Vulnerable Group Feeding (VGF) programs. These programs are rife with corruption with serious impact on the most vulnerable.</p>\r\n', '\r\n<div class="success_story" style="float:left;">\r\n<div class="success_story_left" style="border-right: 1px solid #00247e; width: 35%; float: left; padding-right: 10px;">\r\n<table class="success_story_table" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="padding-bottom:20px; font-size:17px; color:#002a6c;font-weight:bold;font-family:arial;" valign="top">Civil Society initiative to monitor distribution of food aid leads to reduced corruption and greater collaboration with local officials</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-bottom:20px;" valign="top"><img src="images/stories/success_stories/promoting_transparency_in_f.jpg" border="0" width="200" align="left" /></td>\r\n</tr>\r\n<tr>\r\n<td valign="top">The USAID-funded Promoting Governance, Accountability, Transparency and Integrity (PROGATI) builds the capacity of local level civil society partners to monitor government services.  After identifying corruption in distribution of food aid to the most extreme poor, these civil society partners present their findings and build relationship with key government officials to monitor food aid and reduce corruption.</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:20px;" valign="top"><a href="http://www.usaid.gov" target="_blank">U.S. Agency for International Development</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="success_story_right" style="float: right; width: 60%;">In rural Bangladesh, the extremely poor receive government food assistance through the Vulnerable Group Development (VGD) and Vulnerable Group Feeding (VGF) programs. These programs are rife with corruption with serious impact on the most vulnerable. <br /><br /> For the first time, community groups in Chandpur district are working with government officials to reduce corruption in the VGD/VGF program.  With support from the Promoting Governance, Accountability, Transparency and Integrity (PROGATI) program, groups are using oversight tools to monitor food distribution and reduce corruption. <br /><br /> In June 2010, a PROGATI funded public hearing focused on how the VGD/VGF program is funded through the national budget.  This hearing presented citizens with the cost of VGD/VGF program and an accurate number of beneficiaries in the district.  A rally of 200 people then demanded action to reduce corruption in the food aid program. Finally, civil society groups implemented a community scorecard exercise, a tool PROGATI has introduced to identify corruption in public services through investigation, consultation and dialogue.  The exercise identified specific cases of nepotism in VGD/VGF card distribution and distribution of less than the stipulated amount of food to program beneficiaries in the Chandpur program. <br /><br /> At a public meeting of citizens and government officials, civil society groups presented their findings.  At this meeting, the Upazilla Nirbahi Officer (UNO), the officer responsible for overseeing government programs at the local level, responded to the citizen scorecard findings by expressing his strong personal commitment to tackle corruption in the VGD/VGF program.  The presence of an important official at such a meeting is significant in an environment where government civil society interaction is limited. But the citizen groups took him at his word.  A local citizen leader explained “we welcomed this attitude of UNO and hope that he will keep his word for the sake of extreme poor.” PROGATI funded community groups in Chandpur are now working with the UNO to monitor distribution of rice and regularly meeting to review their achievements.  Due to this new collaboration between government and civil society, the VGD/VGF program is now working more efficiently and food assistance in reaching the most vulnerable.</div>\r\n</div>', -2, 8, 0, 28, '2010-12-06 04:40:21', 62, '', '2010-12-13 07:25:53', 63, 0, '0000-00-00 00:00:00', '2010-12-06 04:40:21', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 4, 'robots=\nauthor='),
(90, 'Preventing Public Sector Corruption', 'preventing-public-sector-corruption', '', '<p>The Office of the Comptroller and Auditor General (CAG) in Bangladesh is on the front line of efforts to identify cases of fraud and corruption. The CAG audits of public institutions are an important tool to ensure that public funds are spent according to regulations.</p>\r\n', '\r\n<div class="success_story" style="float:left;">\r\n<div class="success_story_left" style="border-right: 1px solid #00247e; width: 35%; float: left; padding-right: 10px;">\r\n<table class="success_story_table" border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="padding-bottom:20px; font-size:17px; color:#002a6c;font-family:arial;font-weight:bold;" valign="top">Comptroller and Auditor General Staff use skills in documenting fraud and corruption to protect public resources.</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-bottom:20px;" valign="top"><img src="images/stories/success_stories/preventing_public_sector_corruption.jpg" border="0" width="200" align="left" /></td>\r\n</tr>\r\n<tr>\r\n<td valign="top">The USAID-funded Promoting Governance, Accountability, Transparency and Integrity (PROGATI) program is working in partnership with the Office of the Comptroller and Auditor General to strengthen public financial management.  Using skills developed through training on how to detect and document cases of fraud and corruption, government auditors are actively working to prevent and reduce public sector corruption.  Following the PROGATI training, auditors have detected identity fraud and forged documents.</td>\r\n</tr>\r\n<tr>\r\n<td style="padding-top:20px;" valign="top"><a href="http://www.usaid.gov" target="_blank" style="color:#002a6c;">U.S. Agency for International Development</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div class="success_story_right" style="float: right; width: 60%;">The Office of the Comptroller and Auditor General (CAG) in Bangladesh is on the front line of efforts to identify cases of fraud and corruption. The CAG audits of public institutions are an important tool to ensure that public funds are spent according to regulations.<br /><br /> CAG auditors, however, lack the key skills necessary for documenting cases of fraud and corruption. As a result, they sometimes taint the audit findings or do not collect the necessary evidence. In some cases, this has meant that findings have had to be dropped. In others, it has led to disagreements or prolonged debate with auditees. <br /><br /> To strengthen the CAG’s role in tackling public sector corruption, the Promoting Governance, Accountability, Transparency and Integrity (PROGATI) program, has provided training to over 100 audit staff on how to document cases of fraud and corruption.  The training builds skills such as interviewing, detecting corruption in financial systems, and preparing case documentation. <br /><br /> The CAG auditors have immediately started to use the skills from the fraud and corruption prevention training.  In one case, an auditor, using new skills on detecting identity fraud, noticed inconsistencies in an education certificate for a retiring government official.  He confirmed that the certificate was forged and the retiring official was attempting to claim several years of benefits that he was not eligible for.  Using the PROGATI training, the auditor saved the Government a significant amount of money.<br /><br /> In another case, a CAG auditor received copy of a letter of disciplinary against an official in the CAG Works Audit Directorate sent from the Anti-Corruption Commission.  The CAG auditor, using the skills from the PROGATI training on public sector fraud, communicated with the Anti-Corruption Commission about the validity of the letter before acting on it.  The auditor found that the letter was a forgery and should be disregarded. <br /><br /> The PROGATI training has helped the CAG take strong action to prevent public sector corruption and strengthen the CAG as a key institution protecting Bangladesh’s resources.</div>\r\n</div>', -2, 8, 0, 28, '2010-12-06 04:45:10', 62, '', '2010-12-13 08:41:02', 63, 0, '0000-00-00 00:00:00', '2010-12-06 04:45:10', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 32, 'robots=\nauthor='),
(91, 'Progati in Map', 'progati-in-map', '', '<p style="display:none">Test</p>', '', -2, 0, 0, 0, '2010-12-07 09:26:38', 62, '', '2010-12-07 09:45:14', 62, 0, '0000-00-00 00:00:00', '2010-12-07 09:26:38', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 31, 'robots=\nauthor='),
(92, 'Ordinance', 'ordinance', '', '<p>Coming soon...</p>', '', -2, 5, 0, 34, '2011-01-24 23:16:02', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-24 23:16:02', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 143, 'robots=\nauthor='),
(93, 'Organization', 'organization', '', '<p>Bangladesh Road Transport Corporation is a Body  Corporate having perpetual succession and a common seal with an authorized  capital of Taka.1000.00 million (Tk. 1.00 = US $ .014); having its main office  at 21, Rajuk Avenue, Dhaka-1000 along with 6 Depots, 2 Workshops, 5 Training  institutes in greater Dhaka and 9 Depots/offices, 9 Training Institutes  situated in other 5 Divisions (administrative regions) of Bangladesh.</p>', '', -2, 5, 0, 34, '2011-01-24 23:16:43', 65, '', '2011-02-28 10:01:59', 68, 0, '0000-00-00 00:00:00', '2011-01-24 23:16:43', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 21, 0, 0, '', '', 0, 238, 'robots=\nauthor='),
(94, 'Objective', 'objective', '', '<table border="0" cellspacing="0" cellpadding="0" width="550">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<table border="0" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr>\r\n<td width="18">\r\n<p align="center"><img src="images/stories/brtc/image001.gif" border="0" /></p>\r\n</td>\r\n<td width="456">\r\n<p>to operate road transport services for both passengers             and cargo.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="18" valign="top">\r\n<p align="center"><img src="images/stories/brtc/image001.gif" border="0" /></p>\r\n</td>\r\n<td width="456">\r\n<p>to provide safe, reliable and efficient transport             service at an affordable fare.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="18">\r\n<p align="center"><img src="images/stories/brtc/image001.gif" border="0" /></p>\r\n</td>\r\n<td width="456">\r\n<p>to facilitate private sector in transport service             and introduction of new routes.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="18">\r\n<p align="center"><img src="images/stories/brtc/image001.gif" border="0" /></p>\r\n</td>\r\n<td width="456">\r\n<p>to play strategic interventional role at the time             of emergency.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="18">\r\n<p align="center"><img src="images/stories/brtc/image001.gif" border="0" /></p>\r\n</td>\r\n<td width="456">\r\n<p>to promote tourism.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="18" valign="top">\r\n<p align="center"><img src="images/stories/brtc/image001.gif" border="0" /></p>\r\n</td>\r\n<td width="512" valign="top">\r\n<p>to provide training facilities for Drivers,             Mechanics and in transport management in order to develop skilled             manpower in the road transport sector for both home and abroad.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center"><img src="images/stories/brtc/image001.gif" border="0" /></p>\r\n</td>\r\n<td>\r\n<p>to utilize BRTC''s land and properties for additional revenue earnings             for subsidizing the unprofitable bus routes and services for disabled,             women''s, students, government employees, poor and destitute etc.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center"><img src="images/stories/brtc/image001.gif" border="0" /></p>\r\n</td>\r\n<td>\r\n<p>to contracting out and sub-contracting the buses to the able private             owners so as to promote competition for quality services and co-existence             of the public-private relationship in the road transport sector for             greater private sector participation in the operation of BRTC buses.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center"><img src="images/stories/brtc/image001.gif" border="0" /></p>\r\n</td>\r\n<td>\r\n<p>to research vehicle and engine types and safety considerations             for bringing harmony in operation of the bus and truck services and             to combat the air pollution''s factor for better environment.</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', -2, 5, 0, 34, '2011-01-24 23:17:12', 65, '', '2011-02-15 23:27:53', 65, 0, '0000-00-00 00:00:00', '2011-01-24 23:17:12', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 86, 'robots=\nauthor='),
(95, 'Citizen Character', 'citizen-character', '', '<p>\r\n<p><em>Service is our motto : Comfort is our commitment </em><br /> <br /><strong>Preamble: </strong><br /> <br />This charter is a commitment of the BRTC to: <br /> <br /></p>\r\n<ul>\r\n<li>Provide safe, speedy and economic bus and truck services; </li>\r\n<li>Set notified standards of services; </li>\r\n<li>Provide courteous and efficient counter services; </li>\r\n<li>Set up a responsible and effective grievance redressal machinery; </li>\r\n<li>Play interventional role in fixing bus/truck fares and services and </li>\r\n<li>Train skilled drivers and auto mechanics. </li>\r\n</ul>\r\n<p><br />Providing customer service through  ticket counters/booths/passenger <br />shelters/depots: <br /> <br /></p>\r\n<ul>\r\n<li>Provide  courteous  and  efficient  service  through  permanent/temporary ticket counters; </li>\r\n<li>Ensuring sound reservation system; </li>\r\n<li>Ensuring alternative arrangements for timely service; </li>\r\n<li>Establishment of focal point for implementing the Citizens’ Charter and </li>\r\n<li>Ensuring proper arrangements for seat booking. </li>\r\n</ul>\r\n<p><br /><strong>Refunding of fare: </strong><br /> <br /></p>\r\n<ul>\r\n<li>In  case  the  trip  is  cancelled  or  there  is  any  other  reasonable  grounds, then the fare will be fully/partly refunded.</li>\r\n</ul>\r\n<p> </p>\r\n<p><strong>Operation of Special Services:</strong></p>\r\n<ul>\r\n<li>Special Services will be operated during Eid, Puja, Bishwa Ijtema etc. </li>\r\n</ul>\r\n<p><br /><strong>Dissemination of information/Customer Care Centre: </strong><br /> <br />Detailed  information  regarding  Bus  schedules,  fares and other  relevant  details <br />will  be  displayed  prominently,  for  the  convenience  of  customers,  at  the  Head <br />Office, at every bus depot  as well as  at every bus terminal. In addition,  a 24-<br />hour  information and customer care centre has been set up and is operating at <br />the  Head  Office.  The  Centre  can  be  contacted  on  02-9564361  and  01713-<br />003325. <br /> <br /><strong> </strong></p>\r\n<p><strong>Cleanliness: </strong><br /> <br /></p>\r\n<ul>\r\n<li>Steps will be taken to ensure the cleanliness of every depot, terminal as well as each and every bus and truck. </li>\r\n</ul>\r\n<p> </p>\r\n<p><strong>Waiting rooms/Rest rooms: </strong></p>\r\n<p><strong><br /></strong></p>\r\n<ul>\r\n<li>For the convenience of passengers waiting rooms (with wash-rooms) will be set up at every depot and terminal. </li>\r\n</ul>\r\n<p><br /><strong>Disposal of complaints/Redressal of grievances: </strong><br /> <br />A complaint box, for submission of written complaints, will be affixed inside every <br />bus. In addition, complaints can be made to the information and customer care <br />centre or the depot Manager concerned. In the last instance, complaints can also <br />be  made  to  the  Chairman  or  any  other  official  at  the  Head  Office.  Important <br />telephone numbers will be displayed on the bus bodies. <br /> <br />The information and customer care centre will enter the complaints in a register <br />and take steps to dispose of these; where it deems it necessary it may intimate <br />the complainant regarding the action taken by it. <br /> <br /><strong>Lost and Found Booth: </strong><br /> <br />A “Lost and Found Booth” will be set up  at every terminal and every depot. At <br />this booth, information regarding items reported lost or found will be entered in <br />a register. Information regarding items, left behind by passengers on a bus, will <br />be entered at the next depot and the item will be deposited there. The depot <br />manager concerned will take steps to dispose of “lost” and “found” items. <br /> <br /><strong>First Aid Station: <br /></strong></p>\r\n<ul>\r\n<li>A First Aid Box, containing essential items for providing first-aid, will be carried on every bus. </li>\r\n</ul>\r\n<p><br /><strong>Compensation: </strong><br /> <br />In  case  of  death  or  injury  it  will  be  necessary  to  communicate  with  the  Head <br />Office for payment of compensation as per rules. The depot manager concerned <br />will act as the coordinating officer in these matters. <br /> <br />Reservation of seats for senior citizens, people/persons with infirmities <br />or disabilities and women: <br /> <br /></p>\r\n<ul>\r\n<li>There  will  be  seats  reserved  for  senior  citizens,  people/persons  with infirmities or disabilities and women. </li>\r\n</ul>\r\n<p><br /><strong>Smoking Free Bus Services: </strong><br /> <br /></p>\r\n<ul>\r\n<li>All bus services will be “Smoking Free” at all times. </li>\r\n</ul>\r\n<p><br /><strong>Training of drivers and auto mechanics: <br /></strong></p>\r\n<ul>\r\n<li>All the training institutions of BRTC will assist in providing training for the development of efficient drivers and auto mechanics. </li>\r\n</ul>\r\n<p><br /><strong>BRTC is seeking the assistance of its valued customers in the following  matters: </strong><br /> <br /></p>\r\n<ul>\r\n<li>To desist from smoking inside buses; </li>\r\n</ul>\r\n<ul>\r\n<li>To  help  maintain  cleanliness  inside  buses,  depots  and  terminals  and  to deposit trash in the designated receptables only; </li>\r\n</ul>\r\n<ul>\r\n<li>To be courteous and considerate towards other passengers; </li>\r\n</ul>\r\n<ul>\r\n<li>To stand in the designated queues while purchasing tickets or getting on or off a bus; </li>\r\n</ul>\r\n<ul>\r\n<li>To maintain discipline/harmony at all times; </li>\r\n</ul>\r\n<ul>\r\n<li>To desist from carrying illegal items; </li>\r\n</ul>\r\n<ul>\r\n<li>To assist in safeguarding the property of BRTC. </li>\r\n</ul>\r\n<p> </p>\r\n</p>', '', -2, 5, 0, 34, '2011-01-24 23:17:37', 65, '', '2011-03-01 09:21:50', 65, 0, '0000-00-00 00:00:00', '2011-01-24 23:17:37', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 0, '', '', 0, 98, 'robots=\nauthor='),
(96, 'One stop service', 'one-stop-service', '', '<p>Coming soon...</p>', '', -2, 5, 0, 34, '2011-01-24 23:18:06', 65, '', '2011-01-24 23:24:09', 65, 0, '0000-00-00 00:00:00', '2011-01-24 23:18:06', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 64, 'robots=\nauthor='),
(97, 'E-Ticketing', 'e-ticketing', '', '<p>Coming Soon..</p>', '', -2, 5, 0, 34, '2011-01-24 23:18:45', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-24 23:18:45', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 47, 'robots=\nauthor='),
(98, 'Depot', 'depot', '', '<p><strong>Depots  – Sub-depots are (Mentioning running bus position</strong><br /> <strong><span style="text-decoration: underline;">&amp; Rote/ Organization name </span></strong><strong>:</strong><br /> 1.   <strong>Motijheel Bus Depot – Dhaka</strong><br /> No. of Vehicle-  Single Decker- 34 Double Decker   : 05,  Total = 39<br /> a) Operation by self- Single Decker : 08                Double   Decker : 05<br /> b)   Operation by Lessee- Single Decker : 26<br /> c)   Routes’/Organizations’ names of self operated buses :  <br /> Taltola-Gulshan, Gabtoli-Gulshan, N.gonj-Taltola, Gabtoli-Demra, Tongi-Taltola,   Dhaka-Tarail, Dhaka-Norshingdi, Brac Bank .<br /> d)   Routes’ names of Lease holder operated buses : <br /> Dhaka-Mawa, Dhaka-Netrokona, Dhaka-Lohagora, <br /> Dhaka-Mohongonj, Dhaka-Satkhira,</p>\r\n<p>2.   <strong>Double Decker Bus Depot – Dhaka</strong><br /> No. of Vehicle- Single Decker : 27 (New CNG-20) Double   Decker : 43,   Total = 70<br /> a) Operation by self- Single Decker : 27 Double Decker : 43 ( Volvo-15 &amp; <br /> Ashok Leyland-28)<br /> b)   Routes’/Organizations’ names of self operated buses :  <br /> Mirpur12-Motijheel,   Azimpur-Tongi, BCIC, Agrani Bank, Brac Bank</p>\r\n<p>3.   <strong>Joarshahara Bus Depot – Dhaka</strong><br /> No. of Vehicle- Single Decker : 90 (New CNG-52)  Double   Decker : 05,   Total = 95<br /> a) Operation by self- Single Decker : 72,     Double Decker   : 05<br /> b) Operation by Lessee- Single Decker : 18<br /> c) Routes’/Organizations’ names of self operated buses : <br /> Motijheel -Abdullahpur, Valoghat-Motijheel, National University,   Open University, <br /> Sonali Bank, Brac Bank, Civil Aviation, Science Lab .  <br /> d) Routes’  names of Lease holder operated buses : <br /> Dhaka-Bhairob,   Dhaka-Koliarchor, Dhaka-Tarail, Dhaka-B. Baria .</p>\r\n<p>4.   <strong>Kallyanpur Bus Depot – Dhaka</strong><br /> No. of Vehicle- Single Decker : 88 (New CNG-20)  Double Decker : 68,   Total   = 156<br /> a) Operation by self- Single Decker :34, Double Decker : 68<br /> b)   Operation by Lessee- Single Decker : 54<br /> c)   Routes’/Organizations’ names of self operated buses :  <br /> Azimpur-Abdullahpur, Dhaka-Kolmakanda, Dhaka University, Science Lab, Jogonnath   University, Secretariat, BRDB, Supreme Court,  Dhaka Education Board<br /> d)   Routes’ names of Lease holder operated buses : <br /> Dhaka-Nazirpur,   Dhaka-Aricha, Dhaka-Patoria, Dhaka-Tarail, <br /> Dhaka-Mymonsing, Dhaka-Modon .</p>\r\n<p> </p>\r\n<p>5.   <strong>Narsingdi Sub-depot – Dhaka.</strong> <br /> No. of Vehicle- Single Decker : 08,   Total   = 08<br /> a) Operation by Lessee- Single Decker : 08<br /> b)   Routes’ names of Lease holder operated buses :<br /> Akhawra-Dhaka,   Chowmohoni-Dhaka, B.Baria-Dhaka .</p>\r\n<p>6.   <strong>Chittagong</strong><strong> Bus Depot – Chittagong</strong><br /> No. of Vehicle- Single Decker : 16,  Double Decker   : 2,   Total = 18<br /> a) Operation by self- Single Decker : 16,   Double Decker : 2<br /> b)   Routes’/Organizations’ names of self operated buses :  <br /> Chittagong-Companigonj,   Chittagong-Chorfation, <br /> Chittagong-Rangamati , City Service,</p>\r\n<p>7. <strong>Khulna</strong><strong> Bus Depot – Khulna</strong><br /> No. of Vehicle- Single Decker : 15   Double   Decker : 02, Total = 17<br /> a) Operation by self- Single Decker : 15, Double Decker : 02<br /> b)   Routes’/Organizations’ names of self operated buses :  <br /> Khulna University, Khulna-Kabilia, Khulna-Kishorgonj, Khulna-Shariotpur, Khulna-Rayanda,   Khulna-Barisal, Khulna-Pathoghata.</p>\r\n<p>8. <strong>Bogra Bus Depot – Bogra</strong><br /> No. of Vehicle- Single Decker : 46           ,     Total   = 46<br /> a) Operation by self- Single Decker : 36<br /> b)   Operation by Lessee- Single Decker : 10<br /> c)   Routes’/Organizations’ names of self operated buses :  <br /> Bogra-Kanshart,   Bogra-Banglabanda, Bogra-Khulna, <br /> Bogra-Nawgaon, Bogra-Jhalokathi, Bogra-Nitpur, Bogra-Rahonpur, <br /> Bogra-Sylhet, Bogra-Shapahar, etc.<br /> d)   Routes’ names of Lease holder operated buses : <br /> Dinajpur-Rajshahi,   Dinajpur-Khulna,</p>\r\n<p>9. <strong>Pabna Bus Depot – Pabna</strong><br /> No. of Vehicle- Single Decker : 23    Double   Decker :  05,    Total = 28<br /> a) Operation by self- Single Decker : 22                Double   Decker :  05<br /> b) Operation by Lessee- Single Decker : 01<br /> c)   Routes’/Organizations’ names of self operated buses :  <br /> Pabna-Amoa,   Pabna-Dinajpur, Pabna-Nawgaon, Pabna-Pachbibi, <br /> Netrokona-Mongla, Rajshahi-Pathorghata, Faridpur-Panchagor, <br /> Rajshahi-Mozibnagar, Khalilpur-Chapai, etc.</p>\r\n<p>10. <strong>Comilla Bus Depot – Comilla.</strong><br /> No. of Vehicle- Single Decker : 07,    Total   = 07<br /> a) Operation by self- Single Decker : 07                <br /> b)   Routes’/Organizations’ names of self operated buses :  <br /> Chorfation-Rangpur,   Comilla-Jaflong, Comilla-Shonamgonj, <br /> Lakhipur-Chatok, etc .</p>\r\n<p> </p>\r\n<p>11. <strong>Sylhet Bus Depot – Sylhet</strong><br /> No. of Vehicle- Single Decker : 09,    Total   = 09<br /> a) Operation by self- Single Decker : 09</p>\r\n<p>b)   Routes’/Organizations’ names of self operated buses :  <br /> Shahajalal   University.<br /> .</p>\r\n<p>12. <strong>Barisal</strong><strong> Bus Depot- Barisal</strong><br /> No. of Vehicle- Single Decker : 27,   Total   = 27<br /> a) Operation by self- Single Decker : 27                <br /> b)   Routes’/Organizations’ names of self operated buses :  <br /> Barisal-Bargona, Barisal-Amoa, Barisal-Benapol, Barisal-Monshigonj, Barisal-Khulna,   Barisal-Chapainobab, Chorfation-Josser, Pathorghata-Khulna, Barisal-Rangpur,   etc.</p>\r\n<p>13. <strong>Rangpur Bus Depot- Rangpur</strong> <br /> No. of Vehicle- Single Decker : 42,   Total   = 42<br /> a) Operation by self- Single Decker : 28                <br /> b)   Operation by Lessee- Single Decker : 14<br /> c)   Routes’/Organizations’ names of self operated buses :  <br /> Rangpur-Chilmari, Rangpur-Borimari, Rangpur-Gaibandha, <br /> Panchagor-Mymonsing, Panchagor-Rangpur, Panchagor-Josser, <br /> Panchagor-Khulna, Horipur-Chapai, etc.<br /> d)   Routes’ names of Lease holder operated buses : <br /> Tetolia-Gaibandha,   Gaibandha-Chittagong, Panchagor-Comilla, <br /> Panchagor-Mymonshing, Borimari-Rajshahi .</p>\r\n<p>14. <strong>Dhaka</strong><strong> Truck Division, at Tejgaon – Dhaka</strong><br /> No. of Vehicle- 92<br /> a) Operation by self- Truck : 92       <br /> b) Routes’/Organizations’ names of self operated Truck :          <br /> Food, Fertilizer, B. Army, Paper Mill, Privet .</p>\r\n<p>15.<strong> Chittagong Truck Division at Baizid Bostami</strong><br /> No. of Vehicle- 51<br /> a) Operation by self- Truck : 51       <br /> b) Routes’/Organizations’ names of self operated Truck :  <br /> Food, Fertilizer, B. Army, Paper Mill, Privet .</p>', '', -2, 5, 0, 34, '2011-01-24 23:19:18', 65, '', '2011-02-15 23:58:50', 65, 0, '0000-00-00 00:00:00', '2011-01-24 23:19:18', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 0, '', '', 0, 72, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(99, 'Training Institution', 'training-institution', '', '<p style="font-size:14px;" align="right">Font Problem?<a href="index.php?option=com_content&amp;view=article&amp;id=143" style="color:red;"> click here.</a></p>\r\n<div class="bangla" style="text-align: center;">\r\n<p><strong><span style="text-decoration: underline;"><span style="font-size:16.0pt;font-family:SolaimanLipi;" lang="BN"> বিআরটিসি''র নিয়ন্ত্রনে পরিচালিত বাস/ট্রাক ডিপো, মেরামত কারখানা ও ট্রেনিং ইনস্টিটিউটের তালিকাঃ</span> </span></strong></p>\r\n<p align="center"><strong><span style="font-size: 14pt; font-family: SolaimanLipi; text-decoration: underline;">বাস ডিপো </span></strong></p>\r\n<table border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-family: SolaimanLipi;font-size: 12pt;"><strong>ক্রমিক নং </strong></span></p>\r\n</td>\r\n<td colspan="2" width="337" valign="top">\r\n<p align="center"><span style="font-family: SolaimanLipi;font-size: 12pt;"><strong>ইউনিটের নাম </strong></span></p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center"><span style="font-family: SolaimanLipi;font-size: 12pt;"><strong>টেলিফোন নম্বর </strong></span></p>\r\n</td>\r\n</tr>\r\n<span style="font-family: SolaimanLipi;font-size: 12pt;"> </span> \r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০১। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td class="article_intro_title" width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">মতিঝিল বাস ডিপো, ঢাকা </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">9333803</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০২। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span class="article_intro_title" style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">দ্বিতল বাস ডিপো, মিরপুর, ঢাকা </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">9002395</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০৩। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">কল্যাণপুর বাস ডিপো, ঢাকা </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">9002531</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০৪। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td class="componentheading_frontpage" width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">জোয়ারসাহারা বাস ডিপো, ঢাকা </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">8911778</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০৫।</span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">নরসিংদী বাস ডিপো, নরসিংদী </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">01817-116951</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০৬।</span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">চট্টগ্রাম বাস ডিপো, চট্টগ্রাম </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">031-683423</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০৭। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">বগুড়া বাস ডিপো, বগুড়া </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">051-66145</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০৮। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">কুমিল্লা বাস ডিপো, কুমিল্লা </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">081-61988</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০৯। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">বরিশাল বাস ডিপো, বরিশাল </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">0431-63793</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">১০। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">পাবনা বাস ডিপো, পাবনা </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">0731-64768</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">১১।</span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">রংপুর বাস ডিপো, রংপুর </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">0521-64110</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">১২। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">খুলনা বাস ডিপো, খুলনা </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">041-786143</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">১৩। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">সিলেট বাস ডিপো, সিলেট </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">01916-721044</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class="bangla" style="text-align: center;"><strong><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN"><span style="text-decoration: underline;">ট্রাক ডিপো </span></span></strong></div>\r\n<table border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-family: SolaimanLipi;font-size: 12pt;"><strong>ক্রমিক নং </strong></span></p>\r\n</td>\r\n<td colspan="2" width="334" valign="top">\r\n<p align="center"><span style="font-family: SolaimanLipi;font-size: 12pt;"><strong>ইউনিটের নাম </strong></span></p>\r\n</td>\r\n<td width="159" valign="top">\r\n<p align="center"><span style="font-family: SolaimanLipi; font-size: 12pt;"><strong>টেলিফোন নম্বর </strong></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০১। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="314" valign="top">\r\n<p><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ঢাকা ট্রাক ডিপো, তেজগাঁও, ঢাকা </span></p>\r\n</td>\r\n<td width="159" valign="top">\r\n<p align="center">9112103</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০২। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="314" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">চট্টগ্রাম ট্রাক ডিপো, চট্টগ্রাম </span></td>\r\n<td width="159" valign="top">\r\n<p align="center">031-684058</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class="bangla" style="text-align: center;"><span style="text-decoration: underline;"><strong><span style="font-size: 13pt; font-family: SolaimanLipi;" lang="BN">মেরামত কারখানা </span></strong></span></div>\r\n<table border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-family: SolaimanLipi;font-size: 12pt;"><strong>ক্রমিক নং </strong></span></p>\r\n</td>\r\n<td colspan="2" width="334" valign="top">\r\n<p align="center"><span style="font-family: SolaimanLipi;font-size: 12pt;"><strong>ইউনিটের নাম </strong></span></p>\r\n</td>\r\n<td width="160" valign="top">\r\n<p align="center"><span style="font-family: SolaimanLipi;font-size: 12pt;"><strong>টেলিফোন নম্বর </strong></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০১। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="314" valign="top">\r\n<p><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">কেন্দ্রীয় মেরামত কারখানা, তেজগাঁও, ঢাকা </span></p>\r\n</td>\r\n<td width="160" valign="top">\r\n<p align="center">9112103</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০২। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="314" valign="top">\r\n<p><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">সমন্বিত কেন্দ্রীয় মেরামত কারখানা, জয়দেবপুর, গাজীপুর </span></p>\r\n</td>\r\n<td width="160" valign="top">\r\n<p align="center">031-684058</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<div class="bangla" style="text-align: center;"><strong><span style="font-size: 13pt; font-family: SolaimanLipi;" lang="BN"><span style="text-decoration: underline;">ট্রেনিং ইনস্টিটিউট</span> </span></strong></div>\r\n<table border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-family: SolaimanLipi;font-size: 12pt;"><strong>ক্রমিক নং </strong></span></p>\r\n</td>\r\n<td colspan="2" width="337" valign="top">\r\n<p align="center"><span style="font-family: SolaimanLipi;font-size: 12pt;"><strong>ইউনিটের নাম </strong></span></p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center"><span style="font-family: SolaimanLipi;font-size: 12pt;"><strong>টেলিফোন নম্বর </strong></span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০১। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">কেন্দ্রীয় প্রশিক্ষণ ইনস্টিটিউট, জয়দেবপুর, গাজীপুর </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">9252307</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০২। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top">\r\n<p><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, তেজগাঁও, ঢাকা </span></p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">9125132</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০৩। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, নারায়নগঞ্জ </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">764-6915</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০৪। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top">\r\n<p><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, চট্টগ্রাম </span></p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">031-684058</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০৫।</span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top">\r\n<p><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, বগুড়া </span></p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">051-66145</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০৬।</span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top">\r\n<p><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, খুলনা </span></p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">041-786143</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০৭।</span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, পাবনা </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">0731-64768</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০৮। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top">\r\n<p><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, নরসিংদী </span></p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">01817-116951</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">০৯।</span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top">\r\n<p><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, কুমিল্লা </span></p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">081-61988</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">১০। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, বরিশাল </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">0431-63793</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">১১।</span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, দিনাজপুর </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">01712-430550</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">১২।</span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, সিলেট </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">01916-721044</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">১৩।</span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top">\r\n<p><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, উথলী, মানিকগঞ্জ </span></p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">01714-320244</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">১৪। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, ঝিনাইদহ  (বর্তমানে বন্ধ) </span></td>\r\n<td width="157" valign="top">\r\n<p align="center"><strong>041-786143</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">১৫। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, সোনাপুর </span></td>\r\n<td width="157" valign="top">\r\n<p align="center"><strong>01920898095</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">১৬। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top">\r\n<p><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, যশোর </span></p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center"><strong>041-786143</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">১৭। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top">\r\n<p><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, দ্বিতল বাস ডিপো, মিরপুর, ঢাকা </span></p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center"><strong>9002395</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">১৮। </span></p>\r\n</td>\r\n<td width="20" valign="top"><br /></td>\r\n<td width="317" valign="top"><span style="font-size: 12pt; font-family: SolaimanLipi;" lang="BN">ট্রেনিং ইনস্টিটিউট, গোপালগঞ্জ </span></td>\r\n<td width="157" valign="top">\r\n<p align="center">01817-782866</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>\r\n</div>', '', -2, 5, 0, 34, '2011-01-24 23:19:37', 65, '', '2011-04-27 11:08:21', 65, 0, '0000-00-00 00:00:00', '2011-01-24 23:19:37', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=0\nshow_intro=0\nshow_section=0\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 14, 0, 0, '', '', 0, 268, 'robots=\nauthor='),
(100, 'Workshop', 'workshop', '', '<p><strong><span style="text-decoration: underline;">Bus Terminals and Workshops:</span></strong><br /> 1. Fulbaria, Dhaka BRTC bus terminal.<br /> 2. Chittagong Bus terminal (at Station Road). <br /> 3. Integrated Central Workshop (ICWS) at Joydevpur, Gazipur.<br /> 4. Central Workshop (CWS) at Tejgaon.</p>\r\n<p><strong> </strong></p>\r\n<p><strong>1.  <span style="text-decoration: underline;">Integrated Central Workshop (ICWS):</span></strong><br /> BRTC has another big &amp; modern integrated central workshop (ICWS), established   at Joydevpur in 1982 under Japanese grant assistance of ¥ 1.76 m. on 14.06   acres of land, where there are workshop, body building, assembly, battery manufacturing   factories,  housing accommodation, school, etc. on the land.</p>\r\n<p><strong>2. <span style="text-decoration: underline;">Central workshop at Tejgaon :</span></strong><br /> The central workshop at Tejgaon was basically Government Central Motor Vehicles     Workshop. After liberation BRTC has been using this on Government approval. <br /> Achievement of central workshop (CWS) from 1999-2000 to 2009-10 is as follows:    <br /> Tk. in lac</p>\r\n<table border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="109" align="center" valign="top"><br /> Year</td>\r\n<td width="157" valign="top">\r\n<p align="center">No. of vehicles repaired</p>\r\n</td>\r\n<td width="86" valign="top">\r\n<p align="center">Income</p>\r\n</td>\r\n<td width="100" valign="top">\r\n<p align="center">Expenditure</p>\r\n</td>\r\n<td width="99" valign="top">\r\n<p align="center">Operating Surplus</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="109" valign="top">\r\n<p align="center">1999-2000</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">1148</p>\r\n</td>\r\n<td width="86" valign="top">\r\n<p align="center">161.43</p>\r\n</td>\r\n<td width="100" valign="top">\r\n<p align="center">140.06</p>\r\n</td>\r\n<td width="99" valign="top">\r\n<p align="center">21.37</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="109" valign="top">\r\n<p align="center">2000-2001</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">1108</p>\r\n</td>\r\n<td width="86" valign="top">\r\n<p align="center">174.02</p>\r\n</td>\r\n<td width="100" valign="top">\r\n<p align="center">155.19</p>\r\n</td>\r\n<td width="99" valign="top">\r\n<p align="center">18.83</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="109" valign="top">\r\n<p align="center">2001-2002</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">1365</p>\r\n</td>\r\n<td width="86" valign="top">\r\n<p align="center">228.24</p>\r\n</td>\r\n<td width="100" valign="top">\r\n<p align="center">202.77</p>\r\n</td>\r\n<td width="99" valign="top">\r\n<p align="center">25.47</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="109" valign="top">\r\n<p align="center">2002-2003</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">1411</p>\r\n</td>\r\n<td width="86" valign="top">\r\n<p align="center">222.57</p>\r\n</td>\r\n<td width="100" valign="top">\r\n<p align="center">202.56</p>\r\n</td>\r\n<td width="99" valign="top">\r\n<p align="center">20.01</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="109" valign="top">\r\n<p align="center">2003-2004</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">1355</p>\r\n</td>\r\n<td width="86" valign="top">\r\n<p align="center">251.07</p>\r\n</td>\r\n<td width="100" valign="top">\r\n<p align="center">215.31</p>\r\n</td>\r\n<td width="99" valign="top">\r\n<p align="center">35.76</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="109" valign="top">\r\n<p align="center">2004-2005</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">1590</p>\r\n</td>\r\n<td width="86" valign="top">\r\n<p align="center">281.51</p>\r\n</td>\r\n<td width="100" valign="top">\r\n<p align="center">243.66</p>\r\n</td>\r\n<td width="99" valign="top">\r\n<p align="center">37.85</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="109" valign="top">\r\n<p align="center">2005-2006</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">1526</p>\r\n</td>\r\n<td width="86" valign="top">\r\n<p align="center">326.49</p>\r\n</td>\r\n<td width="100" valign="top">\r\n<p align="center">294.45</p>\r\n</td>\r\n<td width="99" valign="top">\r\n<p align="center">32.57</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="109" valign="top">\r\n<p align="center">2006-2007</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">1395</p>\r\n</td>\r\n<td width="86" valign="top">\r\n<p align="center">287.39</p>\r\n</td>\r\n<td width="100" valign="top">\r\n<p align="center">263.70</p>\r\n</td>\r\n<td width="99" valign="top">\r\n<p align="center">23.69</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="109" valign="top">\r\n<p align="center">2007-2008</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">1902</p>\r\n</td>\r\n<td width="86" valign="top">\r\n<p>380.85</p>\r\n</td>\r\n<td width="100" valign="top">\r\n<p align="center">335.78</p>\r\n</td>\r\n<td width="99" valign="top">\r\n<p align="center">45.07</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="109" valign="top">\r\n<p align="center">2008-2009</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">3200</p>\r\n</td>\r\n<td width="86" valign="top">\r\n<p align="center">597.21</p>\r\n</td>\r\n<td width="100" valign="top">\r\n<p align="center">520.88</p>\r\n</td>\r\n<td width="99" valign="top">\r\n<p align="center">76.33</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="109" valign="top">\r\n<p align="center">2009-2010</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">3246</p>\r\n</td>\r\n<td width="86" valign="top">\r\n<p align="center">644.53</p>\r\n</td>\r\n<td width="100" valign="top">\r\n<p align="center">550.97</p>\r\n</td>\r\n<td width="99" valign="top">\r\n<p align="center">93.56</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', -2, 5, 0, 34, '2011-01-24 23:20:12', 65, '', '2011-02-28 00:02:09', 65, 0, '0000-00-00 00:00:00', '2011-01-24 23:20:12', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 0, '', '', 0, 205, 'robots=\nauthor='),
(101, 'Others', 'others', '', '<p>Coming Soon..</p>', '', -2, 5, 0, 34, '2011-01-24 23:21:05', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-24 23:21:05', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 56, 'robots=\nauthor='),
(102, 'Services', 'services', '', '<p>Coming Soob.........</p>', '', -2, 11, 0, 55, '2011-01-24 23:54:36', 65, '', '2011-01-24 23:58:40', 65, 0, '0000-00-00 00:00:00', '2011-01-24 23:54:36', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 2, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(103, 'Bus', 'bus', '', '<div class="bangla">\r\n<p align="center">evsjv‡`k   moK cwienY K‡c©v‡ikb<br /> cwienY feb<br /> 21, ivRDK GwfwbD, XvKv-1000 |</p>\r\n<p align="center"><strong><span style="text-decoration: underline;">evm cwRkb  gvP© / 2010Bs</span></strong></p>\r\n<p align="center"> </p>\r\n<table border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center">µt bs</p>\r\n</td>\r\n<td width="144" valign="top">\r\n<p align="center">wW‡cvi bvg</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p align="center">Mvoxi weeiY</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">mPj</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">fvix</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">weBAvi</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">‡gvU</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">me©‡gvU</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="5" width="43" valign="top">\r\n<p align="center">1.</p>\r\n</td>\r\n<td rowspan="5" width="144" valign="top">\r\n<p>Kj¨vYcyi evm wW‡cv</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wUwm 1316/55 evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">75</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">03</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">04</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">82</p>\r\n</td>\r\n<td rowspan="5" width="52" valign="top">\r\n<p align="center"> </p>\r\n<p align="center"><strong>164</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>A‡kvK wjj¨vÛ wØZj         evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">56</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">20</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">04</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">80</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>wmGbwR evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>wgwb evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>Rxc</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="4" width="43" valign="top">\r\n<p align="center">2.</p>\r\n</td>\r\n<td rowspan="4" width="144" valign="top">\r\n<p>‡Rvqvimvnviv evm wW‡cv</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wUwm 1316/55 evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">12</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">12</p>\r\n</td>\r\n<td rowspan="4" width="52" valign="top">\r\n<p align="center"><strong> </strong></p>\r\n<p align="center"><strong>81</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>A‡kvK wjj¨vÛ wØZj         evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">06</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">25</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">31</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>wgwb evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">13</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">13</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>wmGbwR evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">16</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">09</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">25</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="4" width="43" valign="top">\r\n<p align="center">3.</p>\r\n</td>\r\n<td rowspan="4" width="144" valign="top">\r\n<p>gwZwSj evm wW‡cv</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wUwm 1316/55 evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">34</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">14</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">16</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">64</p>\r\n</td>\r\n<td rowspan="4" width="52" valign="top">\r\n<p align="center"><strong> </strong></p>\r\n<p align="center"><strong>89</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>A‡kvK wjj¨vÛ</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">05</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">04</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">06</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">15</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>cyivZb UvUv</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">06</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">04</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">10</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>wmGbwR UvUv</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="4" width="43" valign="top">\r\n<p align="center">4.</p>\r\n</td>\r\n<td rowspan="4" width="144" valign="top">\r\n<p>wØZj evm wW‡cv</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wUwm 1316/55 evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">06</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">03</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">09</p>\r\n</td>\r\n<td rowspan="4" width="52" valign="top">\r\n<p align="center"> </p>\r\n<p align="center">92</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>A‡kvK wjj¨vÛ wØZj         evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">28</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">02</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">31</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>fj‡fv wØZj evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">20</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">30</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">50</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>UvUv</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">02</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2" width="43" valign="top">\r\n<p align="center">5.</p>\r\n</td>\r\n<td rowspan="2" width="144" valign="top">\r\n<p>biwms`x evm wW‡cv</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wUwm 1316/55 evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">08</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">08</p>\r\n</td>\r\n<td rowspan="2" width="52" valign="top">\r\n<p align="center">08</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>wgUmywewk-we-623B    †Uªwbs Kvi</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2" width="43" valign="top">\r\n<p align="center">6.</p>\r\n</td>\r\n<td rowspan="2" width="144" valign="top">\r\n<p>Kzwgj­v evm wW‡cv</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wUwm 1316/55</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">09</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">06</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">08</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">23</p>\r\n</td>\r\n<td rowspan="2" width="52" valign="top">\r\n<p align="center">28</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>cyivZb UvUv</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">04</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">05</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="5" width="43" valign="top">\r\n<p align="center">7.</p>\r\n</td>\r\n<td rowspan="5" width="144" valign="top">\r\n<p>PUªMÖvg evm wW‡cv</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wUwm 1316/55 evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">16</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">09</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">11</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">36</p>\r\n</td>\r\n<td rowspan="5" width="52" valign="top">\r\n<p align="center">40</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>cyivZb UvUv</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">02</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>wØZj evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">02</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">02</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>‡µb</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>Kvi</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="5" width="43" valign="top">\r\n<p align="center">8.</p>\r\n</td>\r\n<td rowspan="5" width="144" valign="top">\r\n<p>e¸ov evm wW‡cv</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wUwm 1316/55 evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">27</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">03</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">07</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">37</p>\r\n</td>\r\n<td rowspan="5" width="52" valign="top">\r\n<p align="center"> </p>\r\n<p align="center">62</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>cyivZb UvUv</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p>17</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">02</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">06</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">25</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>wUwm †mwg †Pqvi‡KvP</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>UvUv †mwg †Pqvi‡KvP</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>wn‡bv</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="4" width="43" valign="top">\r\n<p align="center">9.</p>\r\n</td>\r\n<td rowspan="4" width="144" valign="top">\r\n<p>ewikvj evm wW‡cv</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wUwm 1316/55 evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">24</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">05</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">29</p>\r\n</td>\r\n<td rowspan="4" width="52" valign="top">\r\n<p align="center">40</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>cyivZb UvUv</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">06</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">05</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">11</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>Kvi</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>Rxc</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="5" width="43" valign="top">\r\n<p align="center">10.</p>\r\n</td>\r\n<td rowspan="5" width="144" valign="top">\r\n<p>cvebv evm wW‡cv</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wUwm 1316/55 evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">21</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">02</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">23</p>\r\n</td>\r\n<td rowspan="5" width="52" valign="top">\r\n<p align="center">31</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>A‡kvK wjj¨vÛ</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">05</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">05</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>cyivZb UvUv</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">02</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">03</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>‡nvÛv wmweK</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>wgUmywewm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">-</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="3" width="43" valign="top">\r\n<p align="center">11.</p>\r\n</td>\r\n<td rowspan="3" width="144" valign="top">\r\n<p>iscyi evm wW‡cv</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wUwm 1316/55 evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">34</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">35</p>\r\n</td>\r\n<td rowspan="3" width="52" valign="top">\r\n<p align="center">50</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>cyivZb UvUv</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">10</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">03</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">14</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>wn‡bv</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td rowspan="2" width="43" valign="top">\r\n<p align="center">12.</p>\r\n</td>\r\n<td rowspan="2" width="144" valign="top">\r\n<p>Lyjbv evm wW‡cv</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wUwm 1316/55 evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">14</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">03</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">18</p>\r\n</td>\r\n<td rowspan="2" width="52" valign="top">\r\n<p align="center">20</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="168" valign="top">\r\n<p>A‡kvK wjj¨vÛ wØZj         evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">02</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">02</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center">13.</p>\r\n</td>\r\n<td width="144" valign="top">\r\n<p>wm‡jU evm wW‡cv</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wUwm 1316/55 evm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">10</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">10</p>\r\n</td>\r\n<td rowspan="3" width="52" valign="top">\r\n<p align="center">10</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n<td width="144" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>óvi‡jU-95</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n<td width="144" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>U‡qvUv</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center">14.</p>\r\n</td>\r\n<td width="144" valign="top">\r\n<p>AvBwmWwe­DGm</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wewfbœ g‡W‡ji</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">68</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">68</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">68</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center">15.</p>\r\n</td>\r\n<td width="144" valign="top">\r\n<p>‡Uªwbs Kv‡R e¨eüZ</p>\r\n</td>\r\n<td width="168" valign="top">\r\n<p>wewfbœ g‡W‡ji</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">14</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">14</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">14</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="3" width="355" valign="top">\r\n<p align="right">‡gvU-</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">497</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">199</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">101</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">797</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">797</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="3" width="355" valign="top">\r\n<p>gwZwSj, Kj¨vYcyi, †Rvqvimvnviv         I PÆMÖvg wW‡cvi A‡K‡Rv Mvox</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">-35</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">-35</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="3" width="355" valign="top">\r\n<p align="right">me©‡gvU</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="56" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">762</p>\r\n</td>\r\n<td width="52" valign="top">\r\n<p align="center">762</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<br /> <br />\r\n<p> </p>\r\n<p align="center"><span style="text-decoration: underline;">weAviwUwmÕi i“‡U Pjgvb ÷vd evm,     bZzb Ges cyivZb ev‡mi ZvwjKvt</span></p>\r\n<table border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td rowspan="2" width="72" valign="top">\r\n<p align="center">µt bs</p>\r\n</td>\r\n<td rowspan="2" width="176" valign="top">\r\n<p align="center">wW‡cvi         bvg</p>\r\n</td>\r\n<td colspan="2" width="255" valign="top">\r\n<p align="center">÷vd evm</p>\r\n</td>\r\n<td colspan="2" width="255" valign="top">\r\n<p align="center">i“‡Ui         Pjgvb cyivZb evm</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">bZzb evm</p>\r\n</td>\r\n<td rowspan="2" width="128" valign="top">\r\n<p align="center">me©‡gvU</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="128" valign="top">\r\n<p align="center">GKZjv evm</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">wØZj evm</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">GKZjv evm</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">wØZj evm</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">wmGbwR evm</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="72" valign="top">\r\n<p>1</p>\r\n</td>\r\n<td width="176" valign="top">\r\n<p>wØZj evm wW‡cv</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">11</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">10</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">10</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">35 + 31</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">97</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="72" valign="top">\r\n<p>2</p>\r\n</td>\r\n<td width="176" valign="top">\r\n<p>‡Rvqvimvnviv evm wW‡cv</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">18</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">06</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">03</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">57 + 62</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">147</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="72" valign="top">\r\n<p>3</p>\r\n</td>\r\n<td width="176" valign="top">\r\n<p>Kj¨vYcyi evm wW‡cv</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">18</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">52</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">36</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">107</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="72" valign="top">\r\n<p>4</p>\r\n</td>\r\n<td width="176" valign="top">\r\n<p>gwZwSj evm wW‡cv</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">02</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">05</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">31</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">39</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2" width="248" valign="top">\r\n<p align="right">‡gvU =</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">49</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">73</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">03</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">13</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">252</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">230</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style="text-decoration: underline;"> </span></p>\r\n<p><span style="text-decoration: underline;">XvKvi evwn‡i  ÷vd ev‡mi ZvwjKvt</span></p>\r\n<p>PÆMÖvg evm wW‡cv Ñ wØZj evm     03wU<br /> h‡kvi             Ñ wØZj   evm      01wU<br /> cvebv evm wW‡cv Ñ wØZj evm      03wU<br /> wm‡jU evm wW‡cv Ñ <span style="text-decoration: underline;">GKZjv evm   12wU</span><br /> †gvU   = 19 wU</p>\r\n</div>', '', -2, 11, 0, 55, '2011-01-25 00:03:00', 65, '', '2011-04-13 10:00:53', 65, 0, '0000-00-00 00:00:00', '2011-01-25 00:03:00', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 0, '', '', 0, 63, 'robots=\nauthor='),
(104, 'Truck', 'truck', '', '<p>BRTC Truck division  was established in the year of 1971. Primary objectives of this division was to  carry govt. foods, relief, fertilizers throughout Bangladesh. Utilizing the  fleet of 170 trucks about 20% of govt. food grain is carried out through these  trucks. Truck service is also available for private hiring.<br /> <br /> Hiring and details fare chart available from 2 main offices situated at Dhaka  and Chittagong. Besides these 2 offices, booking offices are also available at  some key areas.<br /> <br /> <strong>MAIN TRUCK DEPOTS :</strong> (1) Dhaka  Truck Depot ... Tel. No. 880-2-9112103   (2) Chittagong Truck Depot ... Tel.  No. 031-684058</p>\r\n<p><strong>BOOKING OFFICE<br /> </strong></p>\r\n<table border="0" cellspacing="0" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(1)</p>\r\n</td>\r\n<td valign="top">\r\n<p>Khulna...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">Tel. No.</p>\r\n</td>\r\n<td valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(2)</p>\r\n</td>\r\n<td valign="top">\r\n<p>Bogra...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">”</p>\r\n</td>\r\n<td valign="top">\r\n<p>051–65582</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(3)</p>\r\n</td>\r\n<td valign="top">\r\n<p>Rajshahi...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">”</p>\r\n</td>\r\n<td valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(4)</p>\r\n</td>\r\n<td valign="top">\r\n<p>Rangpur...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">”</p>\r\n</td>\r\n<td valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(5)</p>\r\n</td>\r\n<td valign="top">\r\n<p>Dinajpur...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">”</p>\r\n</td>\r\n<td valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(6)</p>\r\n</td>\r\n<td valign="top">\r\n<p>Mymensigh...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">”</p>\r\n</td>\r\n<td valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(7)</p>\r\n</td>\r\n<td valign="top">\r\n<p>Faridpur...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">”</p>\r\n</td>\r\n<td valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(8)</p>\r\n</td>\r\n<td valign="top">\r\n<p>Daudkandi...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">”</p>\r\n</td>\r\n<td valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(9)</p>\r\n</td>\r\n<td valign="top">\r\n<p>Sylhet...</p>\r\n</td>\r\n<td valign="top"></td>\r\n<td valign="top"></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>', '', -2, 11, 0, 55, '2011-01-25 00:25:59', 65, '', '2011-03-01 04:58:10', 65, 0, '0000-00-00 00:00:00', '2011-01-25 00:25:59', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 10, 0, 0, '', '', 0, 44, 'robots=\nauthor='),
(105, 'Training Institute', 'training-institute', '', '<p>1. Central Training Institute, Joydevpur, Gazipur (Estd: 1975)<br /> 2. Bogra Training Institute                       (Estd:   1997-99)<br /> 3. Chittagong Training Institute              (   ,,           ,,   ,,   )<br /> 4. Tejgaon Training Institute                   (  ,,            ,,   ,,   )<br /> Following 12 Driving Training Institutes were set up during 2001-2006:<br /> 5. Jhenaidah Training Institute.<br /> 6. Narayanganj Training Institute.<br /> 7. Narsingdi Training Institute.<br /> 8. Comilla Training Institute.<br /> 9. Dinajpur Training Institute.<br /> 10. Khulna Training Institute.<br /> 11. Jessore Training Institute.<br /> 12. Pabna Training Institute.<br /> 13. Barisal Training Institute.<br /> 14. Sylhet Training Institute.<br /> 15. Utholi Training Institute.<br /> 16. Double Decker Bus Depot Training Institute.<br /> 17. Sonapur Training Institute, Noakhali (September,2008)<br /> 18. Gopalgonj Training Institute (2010) <br /> <span style="text-decoration: underline;">Plans for establishing new depots and driving training institutes:</span><br /> Faridpur,   Sirajgonj,  Rajshahi,  Mymensingh and Rangpur.</p>\r\n<p> </p>\r\n<p><strong><span style="text-decoration: underline;">Activities of Training Institutes (1999 – 2000 to 2008- 09):</span></strong><br /> <strong>Tk. in lac</strong></p>\r\n<table style="font-size:10px;" border="1" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="101" align="center">Year</td>\r\n<td width="50" align="center">1999-2000</td>\r\n<td width="50" align="center">2000-2001</td>\r\n<td width="50" align="center">2001-2002</td>\r\n<td width="50" align="center">2002-2003</td>\r\n<td width="50" align="center">2003-2004</td>\r\n<td width="50" align="center">2004-2005</td>\r\n<td width="55" align="center">2005-2006</td>\r\n<td width="50" align="center">2006-2007</td>\r\n<td width="58" align="center">2007-2008</td>\r\n<td width="57" align="center">2008-2009</td>\r\n</tr>\r\n<tr>\r\n<td width="101" align="center" valign="top">Trainees (no.)</td>\r\n<td width="50" align="center" valign="top">147</td>\r\n<td width="50" align="center" valign="top">1256</td>\r\n<td width="50" align="center" valign="top">1729</td>\r\n<td width="50" align="center" valign="top">1644</td>\r\n<td width="50" align="center" valign="top">6420</td>\r\n<td width="50" align="center" valign="top">10958</td>\r\n<td width="55" align="center" valign="top">13755</td>\r\n<td width="50" align="center" valign="top">5132</td>\r\n<td width="58" align="center" valign="top">11653</td>\r\n<td width="57" align="center" valign="top">10652</td>\r\n</tr>\r\n<tr>\r\n<td width="101" align="center" valign="top">Income (lac Tk)</td>\r\n<td width="50" align="center" valign="top">57.85</td>\r\n<td width="50" align="center" valign="top">74.46</td>\r\n<td width="50" align="center" valign="top">97.50</td>\r\n<td width="50" align="center" valign="top">111.75</td>\r\n<td width="50" align="center" valign="top">178.11</td>\r\n<td width="50" align="center" valign="top">229.01</td>\r\n<td width="55" align="center" valign="top">275.84</td>\r\n<td width="50" align="center" valign="top">110.50</td>\r\n<td width="58" align="center" valign="top">308.32</td>\r\n<td width="57" align="center" valign="top">281.34</td>\r\n</tr>\r\n<tr>\r\n<td width="101" align="center" valign="top">Expenditure</td>\r\n<td width="50" align="center" valign="top">47.79</td>\r\n<td width="50" align="center" valign="top">65.65</td>\r\n<td width="50" align="center" valign="top">46.72</td>\r\n<td width="50" align="center" valign="top">100.56</td>\r\n<td width="50" align="center" valign="top">149.43</td>\r\n<td width="50" align="center" valign="top">184.05</td>\r\n<td width="55" align="center" valign="top">228.11</td>\r\n<td width="50" align="center" valign="top">77.32</td>\r\n<td width="58" align="center" valign="top">214.15</td>\r\n<td width="57" align="center" valign="top">234.08</td>\r\n</tr>\r\n<tr>\r\n<td width="101" align="center" valign="top">Net-income:</td>\r\n<td width="50" align="center" valign="top">10.07</td>\r\n<td width="50" align="center" valign="top">8.81</td>\r\n<td width="50" align="center" valign="top">20.78</td>\r\n<td width="50" align="center" valign="top">11.19</td>\r\n<td width="50" align="center" valign="top">28.68</td>\r\n<td width="50" align="center" valign="top">44.96</td>\r\n<td width="55" align="center" valign="top">47.73</td>\r\n<td width="50" align="center" valign="top">33.18</td>\r\n<td width="58" align="center" valign="top">94.17</td>\r\n<td width="57" align="center" valign="top">47.26</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', -2, 11, 0, 55, '2011-01-25 00:28:09', 65, '', '2011-02-28 02:55:23', 65, 0, '0000-00-00 00:00:00', '2011-01-25 00:28:09', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 38, 0, 0, '', '', 0, 134, 'robots=\nauthor='),
(106, 'Workshop Facilities', 'workshop-facilities', '', '<p>BRTC has another big &amp; modern integrated central workshop (ICWS), established at Joydevpur in 1982 under Japanese grant assistance of ¥ 1.76 m. on 14.06 acres of land, where there are workshop, body building, assembly, battery manufacturing factories,  housing accommodation, school, etc. on the land.</p>', '', -2, 11, 0, 55, '2011-01-25 00:40:01', 65, '', '2011-04-13 10:16:44', 65, 0, '0000-00-00 00:00:00', '2011-01-25 00:40:01', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=0\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 41, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(107, 'City Service', 'city-service', '', '<table border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td colspan="3" height="21">\r\n<div><strong>BRTC Bus                   service are classified into International, Intra-city and regional                   (Intercity) Service :</strong></div>\r\n</td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td height="18"></td>\r\n<td colspan="2"></td>\r\n<td></td>\r\n</tr>\r\n<tr class="subtitle">\r\n<td height="18">\r\n<div>i.</div>\r\n</td>\r\n<td colspan="2"><span style="text-decoration: underline;"> International Bus Service</span></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td height="18"></td>\r\n<td colspan="2"></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td height="18"></td>\r\n<td colspan="2"><strong><span style="color: #000000;">(a) <span style="text-decoration: underline;">Dhaka - Kolkata                 International Service :</span></span></strong></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td height="18" valign="top">\r\n<div>1.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>Two buses are                   being operated between Dhaka - Kolkata every day having 40 seating                   capacity. These are fully air-conditioned and Super Deluxe Buses                   of international standard.</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="18" valign="top">\r\n<div>2.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>No buses are operated                   on Sunday from either sides.</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="18" valign="top">\r\n<div>3.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>Fare is BDT. 1500/-                   (for two ways) per passenger (US $ 22.00/passenger)</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="18" valign="top">\r\n<div>4.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>From Dhaka one                   Bus starts at 7:00 a.m. and another at 7:30 a.m. (BST) and Similarly                   2 buses from Kolkata starts at 6:30 a.m. and 7:00 a.m. (IST)</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="18" valign="top">\r\n<div>5.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>Bangladesh Buses                   are operated on Monday, Wednesday and Friday. Indian buses are                   operated on Tuesday, Thursday &amp; Saturday from Bangladesh side                   and Visa-vi''z.</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top">\r\n<div>6.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>Maximum 20 kg.                   goods are allowed for each passenger.</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top">\r\n<div>7.</div>\r\n</td>\r\n<td width="30%" valign="top">Contact Tel. No. Dhaka <br /> -Kolkata <br /></td>\r\n<td width="66%" valign="top">: 880-2-8357757, 880-2-8356720, 880-2-9333803<br /> : 91-33-23591076, 91-33-22521049</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top"></td>\r\n<td colspan="2" valign="middle">\r\n<div>\r\n<table style="height: 152px;" border="2" cellspacing="0" cellpadding="0" width="218">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div><img src="images/stories/brtc/Kolkkata.jpg" border="0" width="216" height="147" /></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</td>\r\n<td valign="middle">\r\n<div><span style="color: #ff0000; font-size: xx-small;"><a href="http://www.brtc.gov.bd/bus_ser.php#top">^</a></span><a href="http://www.brtc.gov.bd/bus_ser.php#top"><br /> <span>Top</span></a></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top"></td>\r\n<td colspan="2" valign="top">\r\n<div class="text"><span style="color: #000099;">Kolkata                   International </span></div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top"></td>\r\n<td colspan="2" valign="top"></td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top"></td>\r\n<td colspan="2" valign="top"><strong>(b) <span style="text-decoration: underline;">Dhaka – Agartala                 Bus Service:</span></strong></td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top">\r\n<div>1.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>One air-conditioned                   Super Deluxe bus is operated having 40 seats of international                   standard.</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top">\r\n<div>2.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>Fare is Tk. 600/-                   (For two ways)-(Around US $ 10)</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top">\r\n<div>3.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>Time schedule                   available over Tel. No. 880-2-8360241</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="13" valign="top"></td>\r\n<td colspan="2" valign="middle"></td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top"></td>\r\n<td colspan="2" valign="middle">\r\n<div>\r\n<table style="height: 153px;" border="2" cellspacing="0" cellpadding="0" width="221">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div><img src="images/stories/brtc/agartala2.jpg" border="0" width="216" height="148" /></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="13" valign="top"></td>\r\n<td colspan="2" valign="top">\r\n<div class="text"><span style="color: #000099;">Agartala                   International </span></div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="13" valign="top"></td>\r\n<td colspan="2" valign="top"></td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top"></td>\r\n<td colspan="2" valign="top"></td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr class="subtitle">\r\n<td height="21" valign="top">\r\n<div>ii.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div><strong> <span style="text-decoration: underline;"> Dhaka                   Based Bus Services </span> </strong></div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top"></td>\r\n<td colspan="2" valign="top">\r\n<div>These services                   are mainly plying within the city territory and greater city areas                   in Dhaka. BRTC operates most of its Double Decker buses for this                   service. These are wide bodied buses with comfortable sitting                   arrangements. There are other Intra-city services for women, govt.                   employees, destitute and disabled. Few services are dedicated                   to University students on reduced fares. Due to shortage of buses                   BRTC can’t fulfill the demand of the common traveling mass.</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr class="subtitle">\r\n<td rowspan="2" height="21" valign="top"></td>\r\n<td colspan="2" rowspan="2" valign="top">\r\n<table border="0" cellspacing="0" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr class="subtitel">\r\n<td></td>\r\n</tr>\r\n<tr class="subtitel">\r\n<td><span class="subtitle" style="color: #000000;">(a) Double                       Decker Bus Depot, Tel. No. 880-2-9002395</span></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<div>\r\n<table style="height: 205px;" border="2" cellspacing="0" cellpadding="0" width="289">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div><img src="images/stories/brtc/volvo.jpg" border="0" width="288" height="200" /></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</td>\r\n</tr>\r\n<tr class="text">\r\n<td>\r\n<div><span style="color: #000099;">VOLVO Bus</span></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr class="subtitle">\r\n<td>(b) Kallyanpur Bus Depot, Tel. No. 880-2-9002531</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<div>\r\n<table style="height: 182px;" border="2" cellspacing="0" cellpadding="0" width="222">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div><img src="images/stories/brtc/city_service.jpg" border="0" width="216" height="177" /></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</td>\r\n</tr>\r\n<tr class="text">\r\n<td>\r\n<div><span style="color: #000099;">City bus</span></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr class="subtitle">\r\n<td>(c) Motijheel Bus Depot, Tel. No. 880-2-9333803</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr class="subtitle">\r\n<td>(d) Joarshahara Bus Depot, Tel. No. 880-2-8911778<br /></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr class="subtitle" valign="top">\r\n<td valign="middle"><span style="color: #ff0000; font-size: xx-small;"><a href="http://www.brtc.gov.bd/bus_ser.php#top">^</a></span><a href="http://www.brtc.gov.bd/bus_ser.php#top"><br /> <span>Top</span></a></td>\r\n</tr>\r\n<tr class="subtitle">\r\n<td height="21" valign="top"></td>\r\n<td colspan="2" valign="top"></td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr class="subtitle">\r\n<td height="21" valign="top">iii.</td>\r\n<td colspan="2" valign="top">\r\n<div><strong><span style="text-decoration: underline;">Regional                   Bus Services</span></strong></div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top"></td>\r\n<td colspan="2" valign="top">\r\n<div>Most of the greater                   districts and divisional cities are covered by this services.                   Luxury buses with comfortable sitting facilities are provided                   to the passengers.</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top"></td>\r\n<td colspan="2" valign="top"></td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="290" valign="top"></td>\r\n<td colspan="2" valign="top">\r\n<table border="0" cellspacing="0" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr class="text">\r\n<td class="subtitle" colspan="4">(a) Chittagong Bus Depot, Tel.                       No. 031- 683423</td>\r\n</tr>\r\n<tr>\r\n<td width="10%"></td>\r\n<td width="55%"></td>\r\n<td width="21%"></td>\r\n<td width="14%"></td>\r\n</tr>\r\n<tr>\r\n<td class="subtitle" colspan="4">(b) Bogra Bus Depot, Tel. No.                       051- 66145</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td class="subtitle" colspan="4">(c) Comilla Bus Depot, Tel.                       No. 081- 61988</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td class="subtitle" colspan="4">(d) Pabna Bus Depot, Tel. No.                       0731- 64768</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td class="subtitle" colspan="4">(e) Rangpur Bus Depot, Tel.                       No. 0521- 64110</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td class="subtitle" colspan="4">(f) Barisal Bus Depot, Tel.                       No. 0431- 63793</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td class="subtitle" colspan="4">(g) Sylhet Bus Depot</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td class="subtitle" colspan="4">(h) Narsingdi Bus Depot</td>\r\n</tr>\r\n<tr>\r\n<td class="subtitle" colspan="4"></td>\r\n</tr>\r\n<tr>\r\n<td class="subtitle" colspan="4">(i) Khulna Bus Depot</td>\r\n</tr>\r\n<tr>\r\n<td class="subtitle" colspan="4"></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', -2, 12, 0, 56, '2011-01-25 02:19:00', 65, '', '2011-04-13 12:26:39', 65, 0, '0000-00-00 00:00:00', '2011-01-25 02:19:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 130, 'robots=\nauthor='),
(108, 'Services for Government', 'services-for-government', '', '<p>coming soon</p>', '', -2, 14, 0, 58, '2011-01-25 02:36:40', 65, '', '2011-04-28 05:34:37', 65, 0, '0000-00-00 00:00:00', '2011-01-25 02:36:40', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 54, 'robots=\nauthor='),
(134, 'Contact us', 'contact-us', '', '<table border="0" cellspacing="3" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr>\r\n<td valign="top">\r\n<div style="text-align: left;"><strong>Name</strong></div>\r\n</td>\r\n<td valign="top">\r\n<div style="text-align: right;"><strong>Phone No </strong></div>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="56%" valign="top">\r\n<p align="left">Mr.    Sheikh Md. Razab Ali<br /> General Manager (Accounts)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="right">88-02-9555807</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="56%" valign="top">\r\n<p align="left">Mr.    Nikhil Ranjan Roy<br /> General Manager (Admn &amp; Per.)</p>\r\n</td>\r\n<td width="29%" valign="top">\r\n<p align="right">88-02-9551985</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="56%" valign="top">\r\n<p align="left">Major    Quazi Shafique Uddin<br /> Dy. General Manager (Operation)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="right">88-02-7174362</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="56%" valign="top">\r\n<p align="left">Mr.    A.S.M. Abdul Karim<br /> Act. General Manager (Technical)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="right">88-02-9565774</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="56%" valign="top">\r\n<p align="left">Mr.    Nurul Absar Bhuiyan<br /> Secretary</p>\r\n</td>\r\n<td valign="top">\r\n<p align="right">88-02-7162257<br /> <a href="mailto:secretary@brtc.gov.bd">secretary@brtc.gov.bd</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="56%" valign="top">\r\n<p align="left">Mr.    Hazrat Ali<br /> Dy. General Manager (Planning)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="right">88-02-9568739<br /> brtcplg@bdcom.net</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="56%" valign="top">\r\n<p align="left"><br /> Dy. General Manager (Accounts)</p>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td width="56%" valign="top">\r\n<p align="left">Mr.    M. A. Mannan<br /> Act. Dy. General Manager(Audit)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="right">88-02-9555786/126</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="56%" valign="top">\r\n<p align="left">Mr.        Manager (Admin)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="right">88-02-9555786</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="56%" valign="top">\r\n<p align="left">Mr.    Mr. Nurul Absar Bhuiyan<br /> Act. Dy. General Manager (Works)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="right">88-02-9555786/122</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="56%" valign="top">\r\n<p align="left">Mr.    Md. Golam Sarwar<br /> Chef Security Officer</p>\r\n</td>\r\n<td valign="top">\r\n<p align="right">88-02-9555786/114</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="56%" valign="top">\r\n<p align="left">Chairman    Secretariat<br /> Mahmood Ahmad Marouf <br /> Computer Operator</p>\r\n</td>\r\n<td valign="top">\r\n<p align="right">88-02-9555553/131<br /> 88-02-9555788<br /> brtc@citechco.net</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', -2, 5, 0, 34, '2011-02-28 12:41:01', 68, '', '2011-02-28 13:08:43', 68, 0, '0000-00-00 00:00:00', '2011-02-28 12:41:01', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 89, 'robots=\nauthor='),
(109, 'BRTC launches buses for Dhaka schools', 'latest-news-2', '', '<p>Bangladesh Road Transport Corporation has rolled out 14  buses for Dhaka''s 26 top schools situated in the city''s busy Mirpur and Azimpur  areas.<br /> <br /> Communications Minister Syed Abul Hossain inaugurated the buses at Mirpur  Bangla College, saying the service would cut congestion during the busiest  hours of the day. <br /> <br /> The buses, whose number will be increased if they become <span id="IL_AD4">popular</span>, will run from Mirpur 12 to Azimpur after a  gap of 10 minutes. They will operate from 6 am to 9am and 12pm to 3 pm.<br /> <br /> With the service, the BRTC has rolled out 100 buses in the <span id="IL_AD2">capital</span> to ease traffic jam, Hossain said, adding the  state-owned bus operator also has a plan to add 1,000 buses including  double-deckers in its fleet by year-end.<br /> <br /> He said the long-awaited school bus service would lessen pressure of motorised  vehicles on key city areas where top schools are located. It also will ensure  some worry-free time for the parents and guardians. <br /> <br /> Officials said the BRTC, with the help of Dhaka City Corporation, has built  passenger shades at 33 stoppages within the route and introduced woman guides  to pick and drop students. <br /> <br /> Traffic policemen have been ordered to give priority to the buses so that <span id="IL_AD3">the children</span> reach their  destinations in time.<br /> <br /> The authorities have also introduced GPS technology in each of the buses to help  guardians track their kids through text messaging. Television has been  introduced to entertainthe children. <br /> <br /> Officials said the government has planned to introduce more BRTC school buses  in other routes of the city gradually after evaluating success of the  Mirpur-Azimpur service.<br /> <br /> The latest bus service has been launched after a Dhaka Metropolitan police  study blamed 50 top schools and colleges for worsening the city''s traffic  gridlock. <br /> <br /> Five schools and colleges have been blamed for bringing traffic to a near halt  in the busy Mirpur road. English medium schools mushroomed in Dhanmondi are  found guilty of blocking traffic in the posh residential area. <br /> <br /> Other schools are blamed for causing traffic chaos in the main arteries at  Uttara, Bailey Road, Malibagh Road, Farmgate, Moha-mmadpur and Kakoli crossing  near theDhaka Cantonment.</p>', '', -2, 1, 0, 1, '2011-02-21 03:02:07', 65, '', '2011-02-28 11:30:31', 68, 0, '0000-00-00 00:00:00', '2011-02-21 03:02:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 27, 'robots=\nauthor='),
(110, 'BRTC to add 175 CNG-run buses to various city routes', 'latest-news-1', '', '<p>The state-run BRTC  will soon add more 175 CNG-run buses to its fleet plying the Dhaka city roads.  These eco-friendly buses from China are expected to reach the Chittagong port  today (Saturday), officials said.<br /> <br /> Bangladesh Road Transport Corporation (BRTC) has imported the 52-seat CNG buses  as part of its plan to offer an economically affordable <span id="IL_AD3">transport system</span> to Dhaka commuters. The corporation  also intends to make its bus services competitive like the private sector  transport companies which are using clean fuel since long.<br /> <br /> "The buses will soon ply the city roads after completing the formalities  like port clearance and registration," said BRTC chairman M M Iqbal.<br /> <br /> He said the corporation has already identified routes for the buses that would  reduce the commuters'' dependency on small vehicles including minibuses.<br /> <br /> The BRTC has taken initiatives to <span id="IL_AD2">import</span> the Chinese red coloured CNG buses, now available on the city''s four busy routes,  after saving a fund from the import of its first 100 CNG buses in February  2010. The Executive Committee of the National Economic Council (ECNEC) allowed  the corporation to use the fund saved to buy more buses from China in July.<br /> <br /> The BRTC has a budget of Tk 900 million, including finance from Nordic  Development Fund, to import CNG buses. However, the lowest Chinese bidder  offered only Tk 325 million for the deal, down by around 70 per cent.<br /> <br /> The BRTC officials said each CNG bus costs Tk 3.5 million. The cost of buying  the latest buses has increased from the earlier shipment due to new tax imposed  by the government in the current budget. <br /> <br /> The official said the BRTC has already decided to add 45 buses to the existing  routes including Abdullahpur-Motijheel, Mirpur-Motijheel and  Balurghat-Motijheel routes. <br /> <br /> Besides, the corporation identified seven more routes to use the imported  buses. These include Mirpur 12-Abdullahpur via Ring Road, Shikbari-Tongi,  Motijheel-Narsingdi, Mohammadpur-Motijheel, Mohammadpur-Badda and  Gabtoli-Gulistan.<br /> <br /> "We have also planned to introduce more school buses with the imported  buses," the BRTC chairman said, dismissing private sector''s <span id="IL_AD1">anxiety</span> of possible unfair  competition.</p>\r\n<p>He said BRTC still  remains as a minor player in transport services, as the private operators now  own over 6,000 buses against the organisation''s only several hundreds.<br /> <br /> "The city of 13 million people still needs higher number of passenger  buses on various routes," he added.</p>', '', -2, 1, 0, 1, '2011-02-21 03:04:00', 65, '', '2011-02-28 11:24:24', 68, 0, '0000-00-00 00:00:00', '2011-02-21 03:04:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 12, 0, 0, '', '', 0, 89, 'robots=\nauthor='),
(111, 'Central workshop at Tejgaon :', 'central-workshop-at-tejgaon-', '', '<p>The central workshop at Tejgaon was basically Government Central Motor Vehicles Workshop. After liberation BRTC has been using this on Government approval.</p>', '', -2, 17, 0, 59, '2011-02-22 18:14:43', 65, '', '2011-02-28 10:15:54', 68, 0, '0000-00-00 00:00:00', '2011-02-22 18:14:43', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(112, 'Integrated Central Workshop (ICWS):', 'integrated-central-workshop-icws', '', '<p>BRTC has another big &amp; modern integrated central workshop (ICWS), established at Joydevpur in 1982 under Japanese grant assistance of ¥ 1.76 m. on 14.06 acres of land, where there are workshop, body building, assembly, battery manufacturing factories,  housing accommodation, school, etc. on the land.</p>', '', -2, 17, 0, 59, '2011-02-22 18:16:44', 65, '', '2011-02-28 10:12:57', 68, 0, '0000-00-00 00:00:00', '2011-02-22 18:16:44', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(113, 'Land & Properties', 'donec-et-enim-arcu', '', '<p>BRTC has  83.31 acres of land throughout the country, where head office, depots,  sub-depots, terminals, workshops and training institutes, Petrol Pumps etc.  have been established.</p>', '', -2, 17, 0, 59, '2011-02-22 18:17:04', 65, '', '2011-03-01 05:09:10', 65, 0, '0000-00-00 00:00:00', '2011-02-22 18:17:04', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 1, 'robots=\nauthor='),
(114, 'Tender Notice', 'tender-notice', '', '<p>Coming Soon...</p>', '', -2, 0, 0, 0, '2011-02-24 01:01:11', 65, '', '2011-03-20 04:59:16', 65, 0, '0000-00-00 00:00:00', '2011-02-24 01:01:11', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 0, '', '', 0, 210, 'robots=\nauthor='),
(115, 'Newsletter', 'newsletter', '', '<p>Information coming soon...</p>', '', -2, 0, 0, 0, '2011-02-24 19:19:12', 65, '', '2011-02-24 22:03:31', 65, 0, '0000-00-00 00:00:00', '2011-02-24 19:19:12', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 0, '', '', 0, 199, 'robots=\nauthor='),
(116, 'Organogram', 'organogram', '', '<script src="templates/brtc/js/prototype.lite.js" type="text/javascript"></script>\r\n<script src="templates/brtc/js/moo.fx.js" type="text/javascript"></script>\r\n<script src="templates/brtc/js/litebox-1.0.js" type="text/javascript"></script>\r\n<p><a href="images/stories/brtc/organogram.gif" rel="lightbox"> <img src="images/stories/brtc/organogram_thumbs.gif" border="0" alt="Organogram" width="160" height="196" /> </a></p>', '', -2, 16, 0, 60, '2011-02-24 19:35:10', 65, '', '2011-04-17 06:30:47', 65, 0, '0000-00-00 00:00:00', '2011-02-24 19:35:10', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 30, 0, 0, '', '', 0, 205, 'robots=\nauthor='),
(117, 'Board of Directors', 'board-of-directors', '', '<table border="0" cellspacing="0" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p> </p>\r\n</td>\r\n<td>\r\n<table border="0" cellspacing="3" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr>\r\n<td width="4%" valign="top">\r\n<p><img src="images/stories/brtc/image001.gif" border="0" width="10" height="10" /></p>\r\n</td>\r\n<td width="41%" valign="top">\r\n<p>Dy. Secretary (Admin-1)</p>\r\n</td>\r\n<td width="18%" valign="top"></td>\r\n<td width="37%" valign="top">\r\n<p>Ministry of Communication</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><img src="images/stories/brtc/image001.gif" border="0" width="10" height="10" /></p>\r\n</td>\r\n<td valign="top">\r\n<p>Dy. Secretary (Development)</p>\r\n</td>\r\n<td valign="top"></td>\r\n<td valign="top">\r\n<p>Ministry of Finance</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><img src="images/stories/brtc/image001.gif" border="0" width="10" height="10" /></p>\r\n</td>\r\n<td valign="top">\r\n<p>Asstt.I.G. (E &amp; T)</p>\r\n</td>\r\n<td valign="top"></td>\r\n<td valign="top">\r\n<p>Police Headquarter, Dhaka</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><img src="images/stories/brtc/image001.gif" border="0" width="10" height="10" /></p>\r\n</td>\r\n<td valign="top">\r\n<p>Mr. Jainal Abedin Khan</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n</td>\r\n<td valign="top"><img src="images/stories/brtc/image005.jpg" border="0" width="50" height="64" /></td>\r\n<td valign="top">\r\n<p>Dhaka Division</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><img src="images/stories/brtc/image001.gif" border="0" width="10" height="10" /></p>\r\n</td>\r\n<td valign="top">\r\n<p>Mr. Md. Sadrul Islam</p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n</td>\r\n<td valign="top"><img src="images/stories/brtc/image006.jpg" border="0" width="50" height="64" /></td>\r\n<td valign="top">\r\n<p>Rajshahi Division</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><img src="images/stories/brtc/image001.gif" border="0" width="10" height="10" /></p>\r\n</td>\r\n<td valign="top">\r\n<p>Begum Monowara Hakim Ali</p>\r\n</td>\r\n<td valign="top"></td>\r\n<td valign="top">\r\n<p>Chittagong Division</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', -2, 16, 0, 60, '2011-02-24 19:41:09', 65, '', '2011-03-01 10:38:21', 65, 0, '0000-00-00 00:00:00', '2011-02-24 19:41:09', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 0, '', '', 0, 61, 'robots=\nauthor='),
(118, 'Official Directors nominated by the Government', 'official-directors-nominated-by-the-government', '', '<p>Information coming soon...</p>', '', -2, 16, 0, 60, '2011-02-24 19:45:30', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-02-24 19:45:30', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 8, 'robots=\nauthor='),
(119, 'Form Four old division', 'form-four-old-division', '', '<p>Information coming soon..</p>', '', -2, 16, 0, 60, '2011-02-24 19:51:30', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-02-24 19:51:30', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 35, 'robots=\nauthor='),
(120, 'School Service', 'school-service', '', '<p>Information coming soon</p>', '', -2, 12, 0, 56, '2011-02-24 20:08:14', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-02-24 20:08:14', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(121, 'Inter District Service', 'inter-district-service', '', '<p>Information coming soon...</p>', '', -2, 12, 0, 56, '2011-02-24 20:13:29', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-02-24 20:13:29', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 32, 'robots=\nauthor='),
(122, 'School Service', 'school-service', '', '<p>Information coming Soon.</p>', '', -2, 12, 0, 56, '2011-02-24 20:16:54', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-02-24 20:16:54', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 28, 'robots=\nauthor='),
(123, 'Long Route Service', 'long-route-service', '', '<p>Information Coming soon</p>', '', -2, 12, 0, 56, '2011-02-24 20:27:12', 65, '', '2011-03-01 11:12:48', 65, 0, '0000-00-00 00:00:00', '2011-02-24 20:27:12', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 23, 'robots=\nauthor='),
(124, 'Coach Service', 'coach-service', '', '<p>Information coming soon...</p>', '', -2, 12, 0, 56, '2011-02-24 20:35:30', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-02-24 20:35:30', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 17, 'robots=\nauthor='),
(125, 'Staff Bus Service', 'staff-bus-service', '', '<p>Information Coming Soon..</p>', '', -2, 12, 0, 56, '2011-02-24 20:42:46', 65, '', '2011-02-24 20:46:23', 65, 0, '0000-00-00 00:00:00', '2011-02-24 20:42:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 19, 'robots=\nauthor='),
(126, 'International Bus Service', 'international-bus-service', '', '<table border="0" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td height="18"></td>\r\n<td colspan="2"><strong><span style="color: #000000;">(a) <span style="text-decoration: underline;">Dhaka - Kolkata                 International Service :</span></span></strong></td>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td height="18" valign="top">\r\n<div>1.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>Two buses are being operated between Dhaka - Kolkata every day having 40 seating capacity. These are fully air-conditioned and Super Deluxe Buses of international standard.</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="18" valign="top">\r\n<div>2.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>No buses are operated                   on Sunday from either sides.</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="18" valign="top">\r\n<div>3.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>Fare is BDT. 1500/-                   (for two ways) per passenger (US $ 22.00/passenger)</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="18" valign="top">\r\n<div>4.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>From Dhaka one Bus starts at 7:00 a.m. and another at 7:30 a.m. (BST) and Similarly 2 buses from Kolkata starts at 6:30 a.m. and 7:00 a.m. (IST)</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="18" valign="top">\r\n<div>5.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>Bangladesh Buses are operated on Monday, Wednesday and Friday. Indian buses are operated on Tuesday, Thursday &amp; Saturday from Bangladesh side and Visa-vi''z.</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top">\r\n<div>6.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>Maximum 20 kg.                   goods are allowed for each passenger.</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top">\r\n<div>7.</div>\r\n</td>\r\n<td width="30%" valign="top">Contact Tel. No. Dhaka <br /> -Kolkata <br /></td>\r\n<td width="66%" valign="top">: 880-2-8357757, 880-2-8356720, 880-2-9333803<br /> : 91-33-23591076, 91-33-22521049</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top"></td>\r\n<td colspan="2" valign="middle">\r\n<div>\r\n<table style="height: 152px;" border="2" cellspacing="0" cellpadding="0" width="219">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<div><img src="images/stories/brtc/Kolkkata.jpg" border="0" width="217" height="147" /></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</td>\r\n<td valign="middle"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top"></td>\r\n<td colspan="2" valign="top">\r\n<div class="text"><span style="color: #000099;">Kolkata                   International </span></div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top"></td>\r\n<td colspan="2" valign="top"></td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top"></td>\r\n<td colspan="2" valign="top"><strong>(b) <span style="text-decoration: underline;">Dhaka – Agartala                 Bus Service:</span></strong></td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top">\r\n<div>1.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>One air-conditioned                   Super Deluxe bus is operated having 40 seats of international                   standard.</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top">\r\n<div>2.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>Fare is Tk. 600/-                   (For two ways)-(Around US $ 10)</div>\r\n</td>\r\n<td valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td height="21" valign="top">\r\n<div>3.</div>\r\n</td>\r\n<td colspan="2" valign="top">\r\n<div>Time schedule                   available over Tel. No. 880-2-8360241</div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', -2, 12, 0, 56, '2011-02-24 20:44:28', 65, '', '2011-04-13 11:15:07', 65, 0, '0000-00-00 00:00:00', '2011-02-24 20:44:28', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 0, '', '', 0, 27, 'robots=\nauthor='),
(127, 'Special Service', 'special-service', '', '<p>Information coming soon</p>', '', -2, 12, 0, 56, '2011-02-24 20:45:09', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-02-24 20:45:09', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 17, 'robots=\nauthor='),
(128, 'Service for General User', 'service-for-general-user', '', '<p>BRTC Truck division  was established in the year of 1971. Primary objectives of this division was to  carry govt. foods, relief, fertilizers throughout Bangladesh. Utilizing the  fleet of 170 trucks about 20% of govt. food grain is carried out through these  trucks. Truck service is also available for private hiring.<br /> <br /> Hiring and details fare chart available from 2 main offices situated at Dhaka  and Chittagong. Besides these 2 offices, booking offices are also available at  some key areas.<br /> <br /> <strong>MAIN TRUCK DEPOTS :</strong> (1) Dhaka  Truck Depot ... Tel. No. 880-2-9112103   (2) Chittagong Truck Depot ... Tel.  No. 031-684058</p>\r\n<p><strong>BOOKING OFFICE<br /> </strong></p>\r\n<table border="0" cellspacing="0" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr>\r\n<td width="11%" valign="top">\r\n<div style="text-align: left;">(1)</div>\r\n</td>\r\n<td width="22%" valign="top">\r\n<p align="center">Khulna...</p>\r\n</td>\r\n<td width="22%" valign="top">\r\n<p align="center">Tel. No.</p>\r\n</td>\r\n<td width="45%" valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(2)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">Bogra...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">”</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">051–65582</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(3)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">Rajshahi...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">”</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(4)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">Rangpur...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">”</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(5)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">Dinajpur...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">”</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(6)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">Mymensigh...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">”</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(7)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">Faridpur...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">”</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(8)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">Daudkandi...</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">”</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p align="center">(9)</p>\r\n</td>\r\n<td valign="top">\r\n<p align="center">Sylhet...</p>\r\n</td>\r\n<td valign="top"></td>\r\n<td valign="top"></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>', '', -2, 14, 0, 58, '2011-02-24 20:52:47', 65, '', '2011-02-28 12:27:16', 68, 0, '0000-00-00 00:00:00', '2011-02-24 20:52:47', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 28, 'robots=\nauthor='),
(132, 'Welcome', 'welcome', '', '<p>BRTC has a fleet of 972 Buses &amp; Trucks. Out of which 795 vehicles are in running condition. Older buses beyond economic repair (BER) with average 15 yrs old are declared condemned and sold-out following govt. rules and new vehicles are included in the fleet.</p>', '', -2, 18, 0, 62, '2011-02-25 01:45:05', 65, '', '2011-02-28 08:57:15', 65, 0, '0000-00-00 00:00:00', '2011-02-25 01:45:05', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=1\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(129, 'Fare Chart', 'fare-chart', '', '<p>Information coming soon</p>', '', -2, 0, 0, 0, '2011-02-24 21:29:26', 65, '', '2011-02-24 21:31:31', 65, 0, '0000-00-00 00:00:00', '2011-02-24 21:29:26', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 12, 'robots=\nauthor='),
(130, 'Route Information', 'route-information', '', '<p>Information coming soon</p>', '', -2, 0, 0, 0, '2011-02-24 21:34:33', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-02-24 21:34:33', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 26, 'robots=\nauthor='),
(131, 'Downloads', 'downloads', '', '<p>Information coming soon</p>', '', -2, 0, 0, 0, '2011-02-24 21:57:27', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-02-24 21:57:27', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 21, 'robots=\nauthor='),
(133, 'Official Directors nominated by the Government', 'official-directors-nominated-by-the-government', '', '<table border="0" cellspacing="1" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr>\r\n<td width="97%">\r\n<p><strong><span style="text-decoration: underline;">Top Level Ministry and Corporate Officials</span></strong><strong> </strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="97%">\r\n<table border="0" cellspacing="0" cellpadding="0" width="100%">\r\n<tbody>\r\n<tr>\r\n<td width="5%" valign="top">\r\n<p><img src="images/stories/brtc/image001.gif" border="0" width="10" height="10" /></p>\r\n</td>\r\n<td width="70%" valign="top">\r\n<p>Syed Abul Hossain<br /> <strong>Hon''ble Minister</strong><strong><br /> </strong><strong>Ministry of Communications</strong></p>\r\n</td>\r\n<td width="23%" valign="top"><img src="images/stories/brtc/image002.jpg" border="0" width="50" height="64" /></td>\r\n<td width="29%" valign="top"></td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><img src="images/stories/brtc/image001.gif" border="0" width="10" height="10" /></p>\r\n</td>\r\n<td valign="top">\r\n<p>Mr. Md. Mozammel Haque Khan<br /> <strong>Secretary</strong><strong><br /> </strong><strong>Raods      &amp; Railways Division</strong><strong><br /> </strong><strong>Ministry of Communications</strong></p>\r\n</td>\r\n<td valign="top"></td>\r\n<td valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><img src="images/stories/brtc/image001.gif" border="0" width="10" height="10" /></p>\r\n</td>\r\n<td valign="top">\r\n<p>Major M. M. Iqbal, cpp (Rtd)<br /> <strong>Chairman</strong><strong><br /> </strong><strong>BRTC</strong></p>\r\n<p> </p>\r\n<p><strong><br /></strong></p>\r\n</td>\r\n<td valign="top">\r\n<div>\r\n<table border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="50"><img src="images/stories/brtc/image003.jpg" border="0" width="50" height="64" style="border: 0;" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</td>\r\n<td>\r\n<p>88-02-9563543 (Off)<br /> 01714-116280(M)<br /> <a href="mailto:chairman@brtc.gov.bd">chairman@brtc.gov.bd</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><img src="images/stories/brtc/image001.gif" border="0" width="10" height="10" /></p>\r\n</td>\r\n<td valign="top">\r\n<p>Col. Md. Aktar Kamal, psc<br /> <strong>Director (Technical)</strong><strong><br /> </strong><strong>BRTC</strong></p>\r\n<p> </p>\r\n<p><strong><br /></strong></p>\r\n</td>\r\n<td valign="top">\r\n<div>\r\n<table border="1" cellspacing="0" cellpadding="0" width="50">\r\n<tbody>\r\n<tr>\r\n<td><img src="images/stories/brtc/image004.jpg" border="0" width="50" height="64" /></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</td>\r\n<td>\r\n<p>88-02-9557952 (Off)  <br /> <a href="mailto:technical@brtc.gov.bd">technical@brtc.gov.bd</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><img src="images/stories/brtc/image001.gif" border="0" width="10" height="10" /></p>\r\n</td>\r\n<td valign="top">\r\n<p>Mr. Monshi Iqbal Hossain<br /> <strong>Director (Finance &amp; Accounts)<br /></strong><strong>BRT</strong>C</p>\r\n<p> </p>\r\n</td>\r\n<td valign="top"></td>\r\n<td>\r\n<p>88-02-7160554(Off)<br /> 88-02-8653385(Res)<br /> <a href="mailto:finance@brtc.gov.bd">finance@brtc.gov.bd</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td valign="top">\r\n<p><img src="images/stories/brtc/image001.gif" border="0" alt="http://www.brtc.gov.bd/images/box.gif" width="10" height="10" /></p>\r\n</td>\r\n<td valign="top">\r\n<p>Mr. S. M. Faisal Alam (Dy.Sec.) <strong>Director               (Admn. &amp; Operation) </strong><strong><br /> </strong><strong>BRTC</strong></p>\r\n</td>\r\n<td valign="top"></td>\r\n<td>\r\n<p>88-02-9551944 (Off)  <br /> <a href="mailto:admn@brtc.gov.bd">admn@brtc.gov.bd</a></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', -2, 16, 0, 60, '2011-02-27 18:39:43', 65, '', '2011-03-01 10:34:14', 65, 0, '0000-00-00 00:00:00', '2011-02-27 18:39:43', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 39, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(135, 'BRTC Forms', 'brtc-forms', '', '<table border="0" cellspacing="0" cellpadding="0" width="555">\r\n<tbody>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td><span class="text"><a href="http://www.brtc.gov.bd/Form.pdf" target="_blank">Application                Form for Bus leasing.</a></span>\r\n<p class="text"><a href="http://www.brtc.gov.bd/Form.pdf" target="_blank">Application                  Form for Enlistment in BRTC (for the year 2005-2006)</a></p>\r\n<p class="text"><a href="http://www.brtc.gov.bd/Form.pdf" target="_blank">Application Form                  for collecting monthly ticket (route Tangi / Mirpur - Motijheel,                  Student)</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td class="text">\r\n<div>To view form Acrobat Reader is                  needed, Click here to download Acrobat Reader <br /> <a href="http://www.adobe.com/products/acrobat/readstep2.html" target="_blank"><img src="http://www.brtc.gov.bd/images/get_acrobat.gif" border="0" alt="Get Acrobat PDF reader" width="88" height="31" /></a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', -2, 17, 0, 59, '2011-03-28 04:14:58', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-28 04:14:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(136, 'BRTC Forms', 'brtc-forms', '', '<table border="0" cellspacing="0" cellpadding="0" width="555">\r\n<tbody>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td><span class="text"><a href="http://www.brtc.gov.bd/Form.pdf" target="_blank">Application                Form for Bus leasing.</a></span>\r\n<p class="text"><a href="http://www.brtc.gov.bd/Form.pdf" target="_blank">Application                  Form for Enlistment in BRTC (for the year 2005-2006)</a></p>\r\n<p class="text"><a href="http://www.brtc.gov.bd/Form.pdf" target="_blank">Application Form                  for collecting monthly ticket (route Tangi / Mirpur - Motijheel,                  Student)</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td class="text">\r\n<div>To view form Acrobat Reader is                  needed, Click here to download Acrobat Reader <br /> <a href="http://www.adobe.com/products/acrobat/readstep2.html" target="_blank"><img src="http://www.brtc.gov.bd/images/get_acrobat.gif" border="0" alt="Get Acrobat PDF reader" width="88" height="31" /></a></div>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', -2, 17, 0, 59, '2011-03-28 04:14:58', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-03-28 04:14:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(137, 'BRTC Forms', 'brtc-forms', '', '<table style="height: 271px;" border="0" cellspacing="0" cellpadding="0" width="493">\r\n<tbody>\r\n<tr>\r\n<td><span class="text"><a href="http://www.brtc.gov.bd/Form.pdf" target="_blank">Application                Form for Bus leasing.</a></span>\r\n<p class="text"><a href="http://www.brtc.gov.bd/Form.pdf" target="_blank">Application                  Form for Enlistment in BRTC (for the year 2005-2006)</a></p>\r\n<p class="text"><a href="http://www.brtc.gov.bd/Form.pdf" target="_blank">Application Form                  for collecting monthly ticket (route Tangi / Mirpur - Motijheel,                  Student)</a></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td></td>\r\n</tr>\r\n<tr>\r\n<td class="text" align="center">\r\n<div style="text-align: left;">To view form Acrobat Reader is                  needed, Click here to download Acrobat Reader <br /> <a href="http://www.adobe.com/products/acrobat/readstep2.html" target="_blank"></a></div>\r\n<p style="text-align: center;"><img src="http://www.brtc.gov.bd/images/get_acrobat.gif" border="0" alt="Get Acrobat PDF reader" width="88" height="31" /></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', -2, 17, 0, 59, '2011-03-28 04:14:58', 65, '', '2011-03-28 04:35:25', 65, 0, '0000-00-00 00:00:00', '2011-03-28 04:14:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 7, 0, 0, '', '', 0, 17, 'robots=\nauthor='),
(143, 'Font Problem', 'font-problem', '', '<p>If you dont see the Bangla font. Please <a href="templates/brtc/images/SUTON.TTF" style="color:red;font-weight:bold;">download the font</a> and paste the font into "C:\\Windows\\Fonts" folder.</p>', '', -2, 17, 0, 59, '2011-04-26 04:27:25', 65, '', '2011-04-26 04:44:58', 65, 0, '0000-00-00 00:00:00', '2011-04-26 04:27:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 0, '', '', 0, 9, 'robots=\nauthor='),
(138, 'Organogram', 'organogram', '', '<script src="media/system/js/modal.js" type="text/javascript"></script>\r\n<script src="components/com_phocagallery/assets/js/slimbox/slimbox.js" type="text/javascript"></script>\r\n<div class="phocagallery-box-file-third"><a class="slimbox" href="images/stories/brtc/organogram.gif" title="Organogram" rel="lightbox-demo-gallery-01"> <img src="images/stories/brtc/organogram_thumbs.gif" border="0" alt="Organogram" width="160" height="196" /> </a></div>\r\n<div class="phocagallery-box-file-third">Please click to Enlarge the Organogram.</div>', '', -2, 16, 0, 60, '2011-02-24 19:35:10', 65, '', '2011-04-13 07:45:12', 63, 0, '0000-00-00 00:00:00', '2011-02-24 19:35:10', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 0, '', '', 0, 1, 'robots=\nauthor='),
(141, 'Manpower', 'manpower', '', '<p style="font-size:14px;" align="right">Font Problem?<a href="index.php?option=com_content&amp;view=article&amp;id=143" style="color:red;"> click here.</a></p>\r\n<div style="font-family:SolaimanLipi;">\r\n<p style="font-size:18.0pt;" align="center"><strong>বাংলাদেশ সড়ক পরিবহণ কর্পোরেশন </strong></p>\r\n<p align="center"><span style="text-decoration: underline;"><span style="font-size: 18pt; font-family: SolaimanLipi;" lang="BN">জনবল (তারিখ- ০১-০২-২০০৯ ইং) </span></span></p>\r\n<p><span style="text-decoration: underline;"> </span></p>\r\n<table border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td style="text-align: center;" width="87" valign="top">\r\n<p><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">শ্রেণী </span></p>\r\n<p> </p>\r\n<p> </p>\r\n<p> </p>\r\n<p><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">১ </span></p>\r\n</td>\r\n<td width="150" valign="top">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">অর্গানোগ্রামে অনুমোদিত পদের সংখ্যা </span><br /> <span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN"> </span></p>\r\n<p align="center"> </p>\r\n<p align="center"> </p>\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">২ </span></p>\r\n</td>\r\n<td style="text-align: center;" width="125" valign="top">\r\n<p><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">গোল্ডেন হ্যান্ডসেক এ বিলুপ্তি পদের সংখ্যা </span></p>\r\n<p> </p>\r\n<p> </p>\r\n<p><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">৩ </span></p>\r\n</td>\r\n<td width="112" valign="top">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">বাস্</span><span style="font-size: 18pt; font-family: SolaimanLipi;" lang="BN">ত</span><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">ব অনুমোদিত পদের সংখ্যা</span></p>\r\n<p align="center"> </p>\r\n<p align="center"> </p>\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">৪</span></p>\r\n</td>\r\n<td width="87" valign="top">\r\n<p style="text-align: center;"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">মোট কর্মরত সংখ্যা </span></p>\r\n<p style="text-align: center;"> </p>\r\n<p style="text-align: center;"> </p>\r\n<p style="text-align: center;"><span style="font-size: 18pt; font-family: SolaimanLipi;" lang="BN">৫</span></p>\r\n</td>\r\n<td width="100" valign="top">\r\n<p style="text-align: center;"><span style="font-size:14pt; font-family: SolaimanLipi;" lang="BN">শ্ ণ্য পদের সংখ্যা </span></p>\r\n<p style="text-align: center;"> </p>\r\n<p style="text-align: center;"> </p>\r\n<p style="text-align: center;"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">৬ </span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="87">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">প্রথম শ্রেণী </span></p>\r\n</td>\r\n<td width="150">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">১৫৭ </span></p>\r\n</td>\r\n<td width="125">\r\n<p align="center"><span style="font-size:14pt; font-family: SolaimanLipi;" lang="BN">৩৩ </span></p>\r\n</td>\r\n<td width="112">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">১২৪ </span></p>\r\n</td>\r\n<td width="87">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">৫৮ </span></p>\r\n</td>\r\n<td width="100">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">৬৬ </span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="87">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">দ্বিতীয় শ্রেণী </span></p>\r\n</td>\r\n<td width="150">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">৯১ </span></p>\r\n</td>\r\n<td width="125">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">২৭ </span></p>\r\n</td>\r\n<td width="112">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">৬৪ </span></p>\r\n</td>\r\n<td width="87">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">৩৬</span></p>\r\n</td>\r\n<td width="100">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">২৮ </span></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="87">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">তৃতীয় শ্রেণী </span></p>\r\n</td>\r\n<td width="150">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">৩৯৩৫ </span></p>\r\n</td>\r\n<td width="125">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">১১০৫ </span></p>\r\n</td>\r\n<td width="112">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">২৮৩০ </span></p>\r\n</td>\r\n<td width="87">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">১৬৪৫ </span></p>\r\n</td>\r\n<td width="100">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">১১৮৫ </span></p>\r\n</td>\r\n</tr>\r\n<tr style="text-align: center;">\r\n<td width="87"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">চতুর্থ শ্রেণী </span></td>\r\n<td width="150">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">৭৩৪ </span></p>\r\n</td>\r\n<td width="125">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">১৮৮ </span></p>\r\n</td>\r\n<td width="112">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">৫৪৬</span></p>\r\n</td>\r\n<td width="87">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">১৯০ <br /></span></p>\r\n</td>\r\n<td width="100" valign="top"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">৩৫৬</span></td>\r\n</tr>\r\n<tr>\r\n<td width="87">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">সর্বমোট </span></p>\r\n</td>\r\n<td width="150">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">৪৯১৭ </span></p>\r\n</td>\r\n<td width="125">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">১৩৫৩ </span></p>\r\n</td>\r\n<td style="text-align: center;" width="112"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN"> ৩৫৬৪</span></td>\r\n<td width="87">\r\n<p align="center"><span style="font-size: 14pt; font-family: SolaimanLipi;" lang="BN">১৯২৯ </span></p>\r\n</td>\r\n<td width="100">\r\n<p align="center"><span style="font-size:14pt; font-family: SolaimanLipi;" lang="BN">১৬৩৫</span></p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', '', -2, 16, 0, 60, '2011-04-13 10:24:51', 65, '', '2011-04-27 11:06:51', 65, 0, '0000-00-00 00:00:00', '2011-04-13 10:24:51', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 0, '', '', 0, 15, 'robots=\nauthor='),
(139, 'City Service', 'city-service', '', '<div class="bangla">\r\n<p align="center"><span style="text-decoration: underline;">weAviwUwm XvKvi 04wU wW‡cvi Pjgvb wmwU mvwf©m     ev‡mi ZvwjKvt</span></p>\r\n<table border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="84" valign="top">\r\n<p align="center">µt bs</p>\r\n</td>\r\n<td width="240" valign="top">\r\n<p align="center">wW‡cvi bvg</p>\r\n</td>\r\n<td width="144" valign="top">\r\n<p align="center">cyivZb evm msL¨v</p>\r\n</td>\r\n<td width="132" valign="top">\r\n<p align="center">bZzb evm msL¨v</p>\r\n</td>\r\n<td width="108" valign="top">\r\n<p align="center">‡gvU evm msL¨v</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="84" valign="top">\r\n<p align="center">1</p>\r\n</td>\r\n<td width="240" valign="top">\r\n<p align="center">‡Rvqvimvnviv evm wW‡cv</p>\r\n</td>\r\n<td width="144" valign="top">\r\n<p align="center">24</p>\r\n</td>\r\n<td width="132" valign="top">\r\n<p align="center">57</p>\r\n</td>\r\n<td width="108" valign="top">\r\n<p align="center">81</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="84" valign="top">\r\n<p align="center">2</p>\r\n</td>\r\n<td width="240" valign="top">\r\n<p align="center">gwZwSj evm wW‡cv</p>\r\n</td>\r\n<td width="144" valign="top">\r\n<p align="center">22</p>\r\n</td>\r\n<td width="132" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="108" valign="top">\r\n<p align="center">22</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="84" valign="top">\r\n<p align="center">3</p>\r\n</td>\r\n<td width="240" valign="top">\r\n<p align="center">Kj¨vYcyi evm wW‡cv</p>\r\n</td>\r\n<td width="144" valign="top">\r\n<p align="center">77</p>\r\n</td>\r\n<td width="132" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="108" valign="top">\r\n<p align="center">77</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="84" valign="top">\r\n<p align="center">4</p>\r\n</td>\r\n<td width="240" valign="top">\r\n<p align="center">wØZj evm wW‡cv</p>\r\n</td>\r\n<td width="144" valign="top">\r\n<p align="center">50</p>\r\n</td>\r\n<td width="132" valign="top">\r\n<p align="center">35</p>\r\n</td>\r\n<td width="108" valign="top">\r\n<p align="center">85</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p>‡gvU   = 265wU</p>\r\n</div>', '', -2, 12, 0, 56, '2011-04-13 08:00:37', 65, '', '2011-04-13 08:06:25', 65, 0, '0000-00-00 00:00:00', '2011-04-13 08:00:37', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 0, '', '', 0, 15, 'robots=\nauthor='),
(140, 'Staff Bus Service', 'staff-bus-service', '', '<div class="bangla">\r\n<p align="center"><span style="text-decoration: underline;">weAviwUwm XvKvi 04wU wW‡cvi ÷vd ev‡mi     ZvwjKv</span></p>\r\n<p> </p>\r\n<table border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center">µt bs</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">‡Rvqvimvnviv evm wW‡cv</p>\r\n</td>\r\n<td width="47" valign="top">\r\n<p align="center">msL¨v</p>\r\n</td>\r\n<td width="154" valign="top">\r\n<p align="center">gwZwSj evm wW‡cv</p>\r\n</td>\r\n<td width="42" valign="top">\r\n<p align="center">msL¨v</p>\r\n</td>\r\n<td width="158" valign="top">\r\n<p align="center">Kj¨vYcyi evm wW‡cv</p>\r\n</td>\r\n<td width="53" valign="top">\r\n<p align="center">msL¨v</p>\r\n</td>\r\n<td width="180" valign="top">\r\n<p align="center">wØZj evm wW‡cv</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">msL¨v</p>\r\n</td>\r\n<td width="108" valign="top">\r\n<p align="center">me©‡gvU</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center">1</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p>RvZxq wek¦we`¨vjq</p>\r\n</td>\r\n<td width="47" valign="top">\r\n<p align="center">10</p>\r\n</td>\r\n<td width="154" valign="top">\r\n<p>AMÖYx e¨vsK</p>\r\n</td>\r\n<td width="42" valign="top">\r\n<p align="center">3</p>\r\n</td>\r\n<td width="158" valign="top">\r\n<p>XvKv wek¦we`¨vjq</p>\r\n</td>\r\n<td width="53" valign="top">\r\n<p align="center">31</p>\r\n</td>\r\n<td width="180" valign="top">\r\n<p>Rvnv½xi bMi wek¦we`¨vjq</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">9</p>\r\n</td>\r\n<td width="108" valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center">2</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p>Db¥y³    wek¦we`¨vjq</p>\r\n</td>\r\n<td width="47" valign="top">\r\n<p align="center">206</p>\r\n</td>\r\n<td width="154" valign="top">\r\n<p>eª¨vK</p>\r\n</td>\r\n<td width="42" valign="top">\r\n<p align="center">3</p>\r\n</td>\r\n<td width="158" valign="top">\r\n<p>RMbœv_ wek¦we`¨vjq</p>\r\n</td>\r\n<td width="53" valign="top">\r\n<p align="center">10</p>\r\n</td>\r\n<td width="180" valign="top">\r\n<p>wewmAvBwm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">4</p>\r\n</td>\r\n<td width="108" valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center">3</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p>‡mvbvjx e¨vsK</p>\r\n</td>\r\n<td width="47" valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n<td width="154" valign="top">\r\n<p>gwnjv mvwf©m</p>\r\n</td>\r\n<td width="42" valign="top">\r\n<p align="center">2</p>\r\n</td>\r\n<td width="158" valign="top">\r\n<p>mwPevjq</p>\r\n</td>\r\n<td width="53" valign="top">\r\n<p align="center">10</p>\r\n</td>\r\n<td width="180" valign="top">\r\n<p>AMÖYx e¨vsK</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">1</p>\r\n</td>\r\n<td width="108" valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center">4</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="47" valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n<td width="154" valign="top">\r\n<p>Rq‡`ecyi    óvd evm</p>\r\n</td>\r\n<td width="42" valign="top">\r\n<p align="center">1</p>\r\n</td>\r\n<td width="158" valign="top">\r\n<p>mycÖxg    †KvU</p>\r\n</td>\r\n<td width="53" valign="top">\r\n<p align="center">7</p>\r\n</td>\r\n<td width="180" valign="top">\r\n<p>mycÖxg    †KvU</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">2</p>\r\n</td>\r\n<td width="108" valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center">5</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="47" valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n<td width="154" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="42" valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n<td width="158" valign="top">\r\n<p>wk¶v    †evW©</p>\r\n</td>\r\n<td width="53" valign="top">\r\n<p align="center">5</p>\r\n</td>\r\n<td width="180" valign="top">\r\n<p>B‡Wb K‡jR</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">1</p>\r\n</td>\r\n<td width="108" valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center">6</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="47" valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n<td width="154" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="42" valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n<td width="158" valign="top">\r\n<p>weAviwWwe</p>\r\n</td>\r\n<td width="53" valign="top">\r\n<p align="center">2</p>\r\n</td>\r\n<td width="180" valign="top">\r\n<p>weGwWwm</p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">5</p>\r\n</td>\r\n<td width="108" valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center">7</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="47" valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n<td width="154" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="42" valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n<td width="158" valign="top">\r\n<p>wZZzgxi K‡jR</p>\r\n</td>\r\n<td width="53" valign="top">\r\n<p align="center">1</p>\r\n</td>\r\n<td width="180" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n<td width="108" valign="top">\r\n<p> </p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="43" valign="top">\r\n<p align="center"> </p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p>‡gvU evm msL¨v =</p>\r\n</td>\r\n<td width="47" valign="top">\r\n<p align="center">18</p>\r\n</td>\r\n<td width="154" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="42" valign="top">\r\n<p align="center">9</p>\r\n</td>\r\n<td width="158" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="53" valign="top">\r\n<p align="center">66</p>\r\n</td>\r\n<td width="180" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="60" valign="top">\r\n<p align="center">22</p>\r\n</td>\r\n<td width="108" valign="top">\r\n<p align="center">115</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><br /> Zb¥‡a¨ t fj‡fv wØZj evm   -  04wU<br /> A‡kvK   wjj¨vÛ      -   81wU (XvKvi wfZ‡i)<br /> A‡kvK   wjj¨vÛ      -   04wU (XvKvi evwn‡i)<br /> GKZjv   evm         -   33wU</p>\r\n<br />\r\n<p> </p>\r\n<p align="center"><span style="text-decoration: underline;">weAviwUwmÕi i“‡U Pjgvb ÷vd evm,     bZzb Ges cyivZb ev‡mi ZvwjKvt</span></p>\r\n<table border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td rowspan="2" width="72" valign="top">\r\n<p align="center">µt bs</p>\r\n</td>\r\n<td rowspan="2" width="176" valign="top">\r\n<p align="center">wW‡cvi         bvg</p>\r\n</td>\r\n<td colspan="2" width="255" valign="top">\r\n<p align="center">÷vd evm</p>\r\n</td>\r\n<td colspan="2" width="255" valign="top">\r\n<p align="center">i“‡Ui         Pjgvb cyivZb evm</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">bZzb evm</p>\r\n</td>\r\n<td rowspan="2" width="128" valign="top">\r\n<p align="center">me©‡gvU</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="128" valign="top">\r\n<p align="center">GKZjv evm</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">wØZj evm</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">GKZjv evm</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">wØZj evm</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">wmGbwR evm</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="72" valign="top">\r\n<p>1</p>\r\n</td>\r\n<td width="176" valign="top">\r\n<p>wØZj evm wW‡cv</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">11</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">10</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">10</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">35 + 31</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">97</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="72" valign="top">\r\n<p>2</p>\r\n</td>\r\n<td width="176" valign="top">\r\n<p>‡Rvqvimvnviv evm wW‡cv</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">18</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">06</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">03</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">57 + 62</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">147</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="72" valign="top">\r\n<p>3</p>\r\n</td>\r\n<td width="176" valign="top">\r\n<p>Kj¨vYcyi evm wW‡cv</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">18</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">52</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">36</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">107</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="72" valign="top">\r\n<p>4</p>\r\n</td>\r\n<td width="176" valign="top">\r\n<p>gwZwSj evm wW‡cv</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">02</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">05</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">--</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">01</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">31</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">39</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td colspan="2" width="248" valign="top">\r\n<p align="right">‡gvU =</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">49</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">73</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">03</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">13</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">252</p>\r\n</td>\r\n<td width="128" valign="top">\r\n<p align="center">230</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p><span style="text-decoration: underline;"> </span></p>\r\n<p><span style="text-decoration: underline;">XvKvi evwn‡i  ÷vd ev‡mi ZvwjKvt</span></p>\r\n<p>PÆMÖvg evm wW‡cv Ñ wØZj evm     03wU<br /> h‡kvi             Ñ wØZj   evm      01wU<br /> cvebv evm wW‡cv Ñ wØZj evm      03wU<br /> wm‡jU evm wW‡cv Ñ <span style="text-decoration: underline;">GKZjv evm   12wU</span><br /> †gvU   = 19 wU</p>\r\n</div>', '', -2, 12, 0, 56, '2011-04-13 08:16:00', 65, '', '2011-04-13 08:50:47', 65, 0, '0000-00-00 00:00:00', '2011-04-13 08:16:00', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=1\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 0, '', '', 0, 9, 'robots=\nauthor='),
(142, 'Training parent', 'training', '', '<div class="bangla">\r\n<p align="center"><strong><span style="text-decoration: underline;">‡Uªwbs Bbw÷wUDU</span></strong></p>\r\n<table border="1" cellspacing="0" cellpadding="0">\r\n<tbody>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center"><strong>µwgK bs</strong></p>\r\n</td>\r\n<td colspan="2" width="337" valign="top">\r\n<p align="center"><strong>BDwb‡Ui           bvg</strong></p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center"><strong>‡Uwj‡dvb           b¤^i</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">01|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡K›`ªxq cÖwk¶Y         Bbw÷wUDU, Rq‡`ecyi, MvRxcyi</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">9252307</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">02|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, †ZRMuvI,         XvKv</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">9125132</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">03|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, bvivqbMÄ</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">764-6915</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">04|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, PÆMÖvg</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">031-684058</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">05|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, e¸ov</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">051-66145</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">06|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, Lyjbv</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">041-786143</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">07|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, cvebv</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">0731-64768</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">08|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, biwms`x</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">01817-116951</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">09|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, Kzwgj­v</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">081-61988</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">10|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, ewikvj</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">0431-63793</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">11|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, w`bvRcyi</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">01712-430550</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">12|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, wm‡jU</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">01916-721044</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">13|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, D_jx,         gvwbKMÄ</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">01714-320244</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">14|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, wSbvB`n     (eZ©gv‡b         eÜ)</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center"><strong>041-786143</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">15|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, †mvbvcyi</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center"><strong>01920898095</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">16|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, h‡kvi</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center"><strong>041-786143</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">17|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, wØZj         evm wW‡cv, wgicyi, XvKv</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center"><strong>9002395</strong></p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td width="71" valign="top">\r\n<p align="center">18|</p>\r\n</td>\r\n<td width="20" valign="top">\r\n<p> </p>\r\n</td>\r\n<td width="317" valign="top">\r\n<p>‡Uªwbs Bbw÷wUDU, †MvcvjMÄ</p>\r\n</td>\r\n<td width="157" valign="top">\r\n<p align="center">01817-782866</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', '', -2, 11, 0, 55, '2011-04-13 10:34:21', 65, '', '2011-04-13 10:41:26', 65, 0, '0000-00-00 00:00:00', '1999-11-30 00:00:00', '0000-00-00 00:00:00', '', '', 'show_title=0\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 0, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(144, 'Menu', 'menu', '', '<div style="float: left; margin: -3px 0pt 0pt -3px; padding: 10px 0pt; width: 727px; height: auto; background-color: #dddddd; color: #333333; text-align: center;">Menu List : Pls scroll down to see each menu :)</div>\r\n<div id="rightmenu" style="height: 540px;">\r\n<div id="rightmenulist"><br /> <span class="appe">Starters</span> <br /><br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread    <br /><br /> <span class="menutitle">Banjara Baingun</span> <span class="price">$6.95</span> <br />Slice eggplant with coconut &amp; seafood stuffing with chili sauce  <br /><br /> <span class="menutitle">Dhaksin Se Shuru</span> <span class="price">$6.95</span> <br />Plate of baby dosa (crepe filled with potato, onion &amp; nut stuffing <br />&amp; stuffed idli steamed rice &amp; lentil patties from South Indian)  <br /><br /> <span class="menutitle">Samosa</span> <span class="price">$3.95</span> <br />Pastries with your choice of chicken, lamb, peas or <br />coconut filling (Two per serving)  <br /><br /> <span class="menutitle">Onion Bhaji</span> <span class="price">$3.95</span> <br />The Onion slices deep-fried in a chick peas flour batter  <br /><br /> <span class="menutitle">Aloor Chop</span> <span class="price">$4.95</span> <br />A tangy combination of potato cakes, chick peas <br />&amp; onions, tossed in tamarind sauce  <br /><br /> <span class="menutitle">Kolize Poori Wali</span> <span class="price">$4.95</span> <br />Sauted chicken liver with tiny poori  <br /><br /> <span class="menutitle">Poori Bhaji</span> <span class="price">$4.55</span> <br />Fried chick peas in spice served with poori bread  <br /><br /> <span class="menutitle">Lamb Tawa Kabab</span> <span class="price">$6.95</span> <br />Lamb marinated in coriander, chili, garlic &amp; ginger, <br />grilled on a pan of fresh onions &amp; tomatoes  <br /><br /> <span class="menutitle">Tikhi Ghost Sheek</span> <span class="price">$6.95</span> <br />Marinated lamb skewere &amp; char grilled (Served with salad)  <br /><br /> <span class="menutitle">Assorted Vegetable Fritters Nizami Keema</span> <span class="price">$7.95</span> <br />Grilled lamb strips, keema with cinamon, cloves, <br />nutmeg &amp; lemon zest in a black nan  <br /><br /> <span class="menutitle">Jinga Poori</span> <span class="price">$11.95</span> <br />Lightly spiced shrimps sauteed with fresh <br />onions, served with a fluffy poori  <br /><br /> <span class="menutitle">Indian Hot D’oeuyers</span> <span class="price">$9.95</span> <br />Assorted Hot Appetizere  <br /><br /> <span class="menutitle">Banana Pakora</span> <span class="price">$3.95</span> <br />Banana Fritters  <br /><br /> <span class="menutitle">Kurkuri Okra</span> <span class="price">$5.95</span> <br />Crispy okra, red onions, chaat masala, lime, cumin  <br /><br /> <span class="menutitle">Pakna Kabab</span> <span class="price">$4.95</span> <br />Tandoori Fried Chicken Wings, Garam Masala     <br /><br /><br /> <span class="appe">Appetizers Cold</span> <br /><br /><br /> <span class="menutitle">Chana Chat</span> <span class="price">$4.95</span> <br />A tangy combination of chick peas, potatoes &amp; onions tossed in a <br />tamarind sauce, sprinked with Indian herbal rock salt spicy  <br /><br /> <span class="menutitle">Dal Papri</span> <span class="price">$4.95</span> <br />Lentil &amp; flour crips, served with chopped cucumbers &amp; potatoes <br />with well-beaten yogurt &amp; sweet-n-sour sauce  <br /><br /> <span class="menutitle">Chicken Chat</span> <span class="price">$4.95</span> <br />Succulent pieces of chicken &amp; potatoes tossed in a tamarind <br />sauce with Indian herbal rock salt very spicy  <br /><br /> <span class="menutitle">Fresh Sald of the Day</span> <span class="price">$ ?</span> <br />Fresh Sald of the Day     <br /><br /><br /> <span class="appe">Shorbe</span> <br /><br /><br /> <span class="menutitle">Tamatar Ka Shorbe</span> <span class="price">$3.95</span> <br />A refreshingly delicious fresh tomato soup  <br /><br /> <span class="menutitle">Soup of the Day</span> <span class="price">$3.95</span> <br />Please ask your waiter for details. Price accordingly  <br /><br /> <span class="menutitle">Dumpakht Dishes</span> <span class="price">$ ?</span> <br />It is a method of cooking by which the cooking vessel is seled <br />with pastry, resulting in a deliciously moist, flavored dish  <br /><br /> <span class="menutitle">Chicken or Lamb Dumpakht</span> <span class="price">$14.95</span> <br />Chicken or Lamb Dumpakht  <br /><br /> <span class="menutitle">Shrimp Dumpakht</span> <span class="price">$21.95</span> <br />Shrimp Dumpakht  <br /><br /> <span class="menutitle">Vegetable Dumpakht</span> <span class="price">$14.95</span> <br />Vegetable Dumpakht      <br /><br /><br /> <span class="appe">* Madras and Vindaloo</span> <br /><br /><br /> <span class="menutitle">Lamb or Chicken</span> <span class="price">$12.95</span> <br />The all time favourite that’s hot &amp; zesty   <br /><br /><br /> <span class="appe">* Lal Maas (Spicy)</span> <br /><br /><br /> <span class="menutitle">Lal Maas (Spicy)</span> <span class="price">$15.95</span> <br />Spicy lamb, fresh coriander, red chiles, peppercorn, browned onions    <br /><br /><br /> <span class="appe">* Chicken, Lamb or Vegetable Balti</span> <br /><br /><br /> <span class="menutitle">Chicken, Lamb or Vegetable Balti</span> <span class="price">$14.95</span> <br />Originated from the Northwest Frontier, cooked with freshly <br />ground spices, tomatoes, &amp; coriender served in balti (hot)   <br /><br /><br /> <span class="appe">**** Phaal Chicken, Lamb or Vegetable</span> <br /><br /><br /> <span class="menutitle">Phaal Chicken, Lamb or Vegetable</span> <span class="price">$16.95</span> <br />Phaal Chicken, Lamb or Vegetable     <br /><br /><br /> <span class="appe">Clay Oven Delights</span> <br /><br /><br /> <span class="menutitle">Adraki Chop</span> <span class="price">$22.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Sharabi Kababi</span> <span class="price">$15.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Peshwari Bati Kabab</span> <span class="price">$15.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Astish Kabab</span> <span class="price">$14.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Reshmi Kabab</span> <span class="price">$15.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Jhinag Till Tikka</span> <span class="price">$20.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Murg Tandoori</span> <span class="price">$12.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Khurus Ke Tukre</span> <span class="price">$12.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Banjara Jhinga Tikke Maslam</span> <span class="price">$21.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Banjara Style Murg Tikke Maslam</span> <span class="price">$13.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Laham Angaray</span> <span class="price">$20.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Lamb Chop Masala</span> <span class="price">$22.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Banjara Karahi</span> <span class="price">$15.95</span> <br />Description coming soon...  <br /><br /><br /> <span class="menutitle">Chicken Malai Kabab</span> <span class="price">$16.95</span> <br />Description coming soon...   <br /><br /><br /> <span class="appe">A Salute to South Indian<br />(Can be ordered as appetizer)</span> <br /><br /><br /> <span class="menutitle">Masala Dosa</span> <span class="price">$11.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Sadha Dosa</span> <span class="price">$9.95</span> <br />Description coming soon...    <br /><br /><br /> <span class="appe">Our Traditional Dishes</span> <br /><br /><br /> <span class="menutitle">Salan Curry</span> <span class="price">$11.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Pasanda Lamb</span> <span class="price">$12.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Palak Ghost</span> <span class="price">$12.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Hare Masala Wali Murg</span> <span class="price">$12.50</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Shakoothi</span> <span class="price">$12.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Badami Tukre</span> <span class="price">$16.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Awadhi Rogan Josh</span> <span class="price">$15.50</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Butter Chicken</span> <span class="price">$15.50</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Pudine Wala Kheema</span> <span class="price">$12.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Shahi Korma</span> <span class="price">$14.95</span> <br />Description coming soon...     <br /><br /><br /> <span class="appe">Main Dishes Curry Specialities</span> <br /><br /><br /> <span class="menutitle">Mushroom or Shaag Curry</span> <span class="price">$12.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Dansak Curry</span> <span class="price">$12.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Mottor or Chana Curry</span> <span class="price">$12.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Chili Murg</span> <span class="price">$14.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Goat Bhuna or Goat Dopiaza</span> <span class="price">$16.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Dildar</span> <span class="price">$13.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Chicken / Lamb Jalfrezi</span> <span class="price">$14.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Paneer Makhani</span> <span class="price">$13.95</span> <br />Description coming soon...  <br /><br /> <span class="menutitle">Paneer Chili</span> <span class="price">$13.95</span> <br />Description coming soon...    <br /><br /><br /> <span class="appe">Our Special Vegetable Dishes</span> <br /><br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread    <br /><br /> <span class="menutitle">Banjara Baingun</span> <span class="price">$6.95</span> <br />Slice eggplant with coconut &amp; seafood stuffing with chili sauce  <br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread      <br /><br /><br /> <span class="appe">Seafood Specialities</span> <br /><br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread    <br /><br /> <span class="menutitle">Banjara Baingun</span> <span class="price">$6.95</span> <br />Slice eggplant with coconut &amp; seafood stuffing with chili sauce  <br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread       <br /><br /><br /> <span class="appe">Special Biryani Dishes</span> <br /><br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread    <br /><br /> <span class="menutitle">Banjara Baingun</span> <span class="price">$6.95</span> <br />Slice eggplant with coconut &amp; seafood stuffing with chili sauce  <br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread       <br /><br /><br /> <span class="appe">Our Traditional Dishes</span> <br /><br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread    <br /><br /> <span class="menutitle">Banjara Baingun</span> <span class="price">$6.95</span> <br />Slice eggplant with coconut &amp; seafood stuffing with chili sauce  <br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread        <br /><br /><br /> <span class="appe">Special Thali (The <br />Traditional Indian Serving Tray)</span> <br /><br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread    <br /><br /> <span class="menutitle">Banjara Baingun</span> <span class="price">$6.95</span> <br />Slice eggplant with coconut &amp; seafood stuffing with chili sauce  <br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread     <br /><br /><br /> <span class="appe">Accompaniments</span> <br /><br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread    <br /><br /> <span class="menutitle">Banjara Baingun</span> <span class="price">$6.95</span> <br />Slice eggplant with coconut &amp; seafood stuffing with chili sauce  <br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread       <br /><br /><br /> <span class="appe">Indian Bread</span> <br /><br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread    <br /><br /> <span class="menutitle">Banjara Baingun</span> <span class="price">$6.95</span> <br />Slice eggplant with coconut &amp; seafood stuffing with chili sauce  <br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread       <br /><br /><br /> <span class="appe">Beverages</span> <br /><br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread    <br /><br /> <span class="menutitle">Banjara Baingun</span> <span class="price">$6.95</span> <br />Slice eggplant with coconut &amp; seafood stuffing with chili sauce  <br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread        <br /><br /><br /> <span class="appe">Special Drinks</span> <br /><br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread    <br /><br /> <span class="menutitle">Banjara Baingun</span> <span class="price">$6.95</span> <br />Slice eggplant with coconut &amp; seafood stuffing with chili sauce  <br /><br /> <span class="menutitle">Dhaka Kathiroll</span> <span class="price">$6.95</span> <br />Grilled Chicken tikka salad wrapped in flat bread</div>\r\n</div>\r\n<div style="float: left; margin-left: 10px; width: 700px; height: 10px; background-color: green; color: white;">Scrool upon...</div>', '', 1, 6, 0, 27, '2011-12-09 15:13:19', 65, '', '2013-10-04 10:57:32', 65, 0, '0000-00-00 00:00:00', '2011-12-09 15:13:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 33, 0, 1, '', '', 0, 449, 'robots=\nauthor='),
(145, 'Contact Us', 'contact-us', '', '<div id="speech2"><span class="heading3" style="font-size:24px"><strong>Contact Us</strong></span> <br /><br />Thank you for visiting our website. Please fill out the following form to request information about our products and services or to provide feedback about our site. When you are finished, click ''Submit'' button to send us your message. You''ll see a confirmation below. <br /><br />Contact us in New York, for information regarding our Indian Restaurant.</div>\r\n<div id="formportion">\r\n<table border="0">\r\n<tbody>\r\n<tr>\r\n<td>First Name: *</td>\r\n<td><input class="areatext" type="text" /></td>\r\n</tr>\r\n<tr>\r\n<td>Last Name: *</td>\r\n<td><input class="areatext" type="text" /></td>\r\n</tr>\r\n<tr>\r\n<td>Email: *</td>\r\n<td><input class="areatext" type="text" /></td>\r\n</tr>\r\n<tr>\r\n<td>Phone:</td>\r\n<td><input class="areatext" type="text" /></td>\r\n</tr>\r\n<tr>\r\n<td>Subject:</td>\r\n<td><input class="areatext" type="text" /></td>\r\n</tr>\r\n<tr>\r\n<td>Message:</td>\r\n<td><textarea cols="55" rows="6"></textarea></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n<div id="contactbuttonplace" style="margin-top:10px;"><a><img class="submitbutton" src="images/submitbutton.jpg" border="0" /></a></div>\r\n<div id="gMap" style="width: 300px; height: 100px; margin-top: -40px;">{module [90]}</div>\r\n<div id="opentill" style="margin-left:-3px; margin-top:17px">\r\n<div style="float: left; margin-top: 60px; margin-left: 20px; width: auto; height: auto;"><strong>Address: </strong> 100 Second Avenue, New York, NY 10003   <br /> <br /> <strong>Telephone: </strong><a style="text-decoration:none; color:brown">(212)982-0533, (212)477-5956</a> <br /> <br /><strong>Fax: </strong><a style="text-decoration:none; color:brown">(212)982-0901, (212)473-1540</a> <br /><br /> <strong>Web: </strong><a href="www.banjara-haveli.com" style="text-decoration:none; color:chocolate">w w w . b a n j a r a - h a v e l i  .  c  o  m</a></div>\r\n</div>', '', 1, 0, 0, 0, '2011-12-09 19:29:42', 65, '', '2013-10-02 00:41:13', 65, 0, '0000-00-00 00:00:00', '2011-12-09 19:29:42', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 23, 0, 48, '', '', 0, 194, 'robots=\nauthor='),
(147, 'Catering', 'catering', '', '<div id="speech2"><span class="heading3" style="font-size:28px; color:chocolate"><strong>Catering</strong></span> <br /><br />\r\n<div style="margin:0 auto; color:#0082B9; font-size:20px"><strong>Please ask your waiter for our special wine list.</strong></div>\r\n</div>\r\n<div id="speech2"><br />Let your waiter know if your time is limited, so that we can serve you in time. Just ask for any explanation or preference for <em>HOT</em> or <em>MILD</em> dishes. We cater private parties and weddings. Please contact the management.  <br /><br /> Take-out lunches and dinners are available with an additional service fee. Not responsible for personal property unless checked by management. We have endeavored to bring to you a fine selection of our Indian specialities. The management dose reserve the right to enforce certain decency regulations. We hope you enjoy this culinary experience. Any comments or observations will be gratefully welcomed, so do let us know.  <br /><br />There is a minimum charge per person <strong>$13.95</strong>. <br />\r\n<div id="decoratedcat"><img class="decoratedcat" src="images/decoratedcat.jpg" border="0" /></div>\r\n<br /><br /> <span style="color:red; font-size:20px"><strong><br />Bon Appetite! </strong></span> <span style="color:#A349A4; font-size:18px"><strong>We also offer a full Indian Menu for your party, please call us.</strong></span> <br /><br />\r\n<div style="margin:0 auto; color:green; font-size:20px"><strong>We do gourmet Indian meal for your Home/Office.</strong></div>\r\n<br />India is known as the "The Home of Spices!". No other country in the world produces as many kinds of spices as India does. There are over 80 spices grown in different parts of the world and and about 50 of these are grown in India.   <br /><br /> For More Information :  <br /> \r\n<table border="0">\r\n<tbody>\r\n<tr>\r\n<td colspan="2">100 Second Avenue New York, NY 10003</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Telephone:</strong></td>\r\n<td>(212) 982-0533, (212) 477-5956</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Fax:</strong></td>\r\n<td>(212) 982-0533, (212) 477-5956</td>\r\n</tr>\r\n<tr>\r\n<td><strong>Website:</strong></td>\r\n<td><a href="http://www.banjara-haveli.com" style="text-decoration:none">www.banjara-haveli.com</a></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', '', 1, 0, 0, 0, '2012-02-03 11:00:46', 65, '', '2013-09-26 00:34:54', 65, 0, '0000-00-00 00:00:00', '2012-02-03 11:00:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 32, 0, 47, '', '', 0, 120, 'robots=\nauthor='),
(152, 'Dansak Curry', 'dansak-curry', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Dansak Curry</strong> <span class="foodindivprice"><strong>$12.95</strong></span> <span class="foodindivdet"><br /><br /> Choice of Lamb, chicken or keema, cooked <br />with lentils hot spices (Persian Style) </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/haveli-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 10:17:33', 65, '', '2013-10-01 12:25:24', 65, 0, '0000-00-00 00:00:00', '2012-03-30 10:17:33', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 42, '', '', 0, 50, 'robots=\nauthor='),
(146, 'About Us ', 'about-us-', '', '<div id="speech2"><span class="heading" style="color:brown; padding:10px 0; font-size:24px"> <br /><strong>About Banjara Haveli Restaurant</strong></span> <br /><br /><img src="images/banjara-logo.png" border="0" align="middle" style="margin: 10px 300px; width: 120px; height: 120px;" /> <br /><br /><span class="heading"><strong>Banjara Restaurant</strong></span> is named for the Banjara people whose Rajasthani homeland is near Jaisalmer and Jodhpur. However, the Banjara live and travel throughout 22 states of India, taking with them a rich cultural history and distinctive individual aesthetic. They are renowned  far their drarmatically colorful dress, much of it featuring intricate emrbroidery, and magnificent jewelry.  <br /><br /> The Banjara people enjoy wearing their wealth, and proudly display an array of rings, bracelets, and ear rings. The songs, poetry, and dance they have handed down through generations are filled with characteristic mystery, romance, and intrigue. Extraordinary Banjara embroidery can be found in some of the finest markets, as well as in museums, and galleries throughout the world.  <br /><br /> We have created a menu of both classic and contemporary Indian dishes that use spices in a more suitable way than often found in Indian cooking. Our dishes have a decidedly sophisticated orientaion. They use many spices traditionally found in Indian food, but in more imaginative combinations.    <br /><br /> <img src="images/haveli-logo.png" border="0" align="middle" style="margin: 10px 300px; width: 120px; height: 120px;" /> <br /><br /><span class="heading" style="color:green"><strong>Haveli Restaurant</strong></span> is patterned after an Indian haveli, a residential mansion with a partially elevated second floor and an interior courtyard. The jharookha (balcony), which allows contact with passing merchants on the street, and the inner courtyard, which provides family privacy or community gathering, and traditional haveli structures dating back to the 9th century.  <br /><br /> Haveli Retaurant’s uptairs suspended dining areas permit the patron to observe the entertainment below, wheather it’s dancing or the Indian cooking processes. The wooden gallery windows in these “hanging havelis” are jalis (screens), which allow the viewing enjoyment of reenacted Indian street activitie and decorations. The theatricality of Indian culture complements this country’s traditional food in an urban setting.  <br /><br /> Haveli Retaurant serves fine cuisine spiced with the flavors of India’s Northern and Southern regions. One may savor the essence of India with various tastes and decorative elements inherent in Indian art and culture. Haveli combines architectural innovation with the ambiance of India to create a unique dining atmosphere.  <br /><br /><img src="images/courtyard.jpg" border="0" align="middle" style="margin: 10px auto; width: 382px; height: 274px;" /></div>\r\n<div class="clear">\r\n<p> </p>\r\n</div>\r\n<div class="clear">\r\n<p> </p>\r\n</div>', '', 1, 0, 0, 0, '2012-02-03 09:53:02', 65, '', '2013-10-02 00:13:24', 65, 0, '0000-00-00 00:00:00', '2012-02-03 09:53:02', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 22, 0, 49, '', '', 0, 243, 'robots=\nauthor='),
(148, 'Home', 'home', '', '<div id="foodphotos" style="float: left; width: 700px; margin: 0px;">\r\n<div id="slideshow" style="margin:0 auto;"><img class="active" src="images/slide-1.jpg" border="0" alt="Slideshow Image 1" style="opacity: 1;" /> <img src="images/slide-2.jpg" border="0" alt="Slideshow Image 2" style="opacity: 1;" /><img src="images/slide-3.jpg" border="0" alt="Slideshow Image 3" style="opacity: 1;" /> <img src="images/slide-4.jpg" border="0" alt="Slideshow Image 4" style="opacity: 1;" /></div>\r\n</div>\r\n<div id="greenspace">"It''s almost impossible to go wrong with any dish here." - <strong>PAPER</strong></div>\r\n<div id="welcome">\r\n<div><span class="heading"><strong>Welcome to Banjara Haveli Restaurant</strong></span></div>\r\n<div><br /><br /><img src="images/banjara-logo.png" border="0" align="middle" style="margin: 10px 300px; width: 120px; height: 120px;" /> <br /><br /><span class="heading"><strong>Banjara Restaurant</strong></span> is named for the Banjara people whose Rajasthani homeland is near  Jaisalmer and Jodhpur. However, the Banjara live and travel throughout  22 states of India, taking with them a rich cultural history and  distinctive individual aesthetic. They are renowned  far their  drarmatically colorful dress, much of it featuring intricate  emrbroidery, and magnificent jewelry.  <br /><br /> The Banjara people enjoy  wearing their wealth, and proudly display an array of rings, bracelets,  and ear rings. The songs, poetry, and dance they have handed down  through generations are filled with characteristic mystery, romance, and  intrigue. Extraordinary Banjara embroidery can be found in some of the  finest markets, as well as in museums, and galleries throughout the  world.  <br /><br /> We have created a menu of both classic and contemporary  Indian dishes that use spices in a more suitable way than often found  in Indian cooking. Our dishes have a decidedly sophisticated orientaion.  They use many spices traditionally found in Indian food, but in more  imaginative combinations.    <br /><br /> <img src="images/haveli-logo.png" border="0" align="middle" style="margin: 10px 300px; width: 120px; height: 120px;" /> <br /><br /><span class="heading" style="color:green"><strong>Haveli Restaurant</strong></span> is patterned after an Indian haveli, a residential mansion with a  partially elevated second floor and an interior courtyard. The jharookha  (balcony), which allows contact with passing merchants on the street,  and the inner courtyard, which provides family privacy or community  gathering, and traditional haveli structures dating back to the 9th  century.  <br /><br /> Haveli Retaurant’s uptairs suspended dining areas  permit the patron to observe the entertainment below, wheather it’s  dancing or the Indian cooking processes. The wooden gallery windows in  these “hanging havelis” are jalis (screens), which allow the viewing  enjoyment of reenacted Indian street activitie and decorations. The  theatricality of Indian culture complements this country’s traditional  food in an urban setting.  <br /><br /> Haveli Retaurant serves fine cuisine  spiced with the flavors of India’s Northern and Southern regions. One  may savor the essence of India with various tastes and decorative  elements inherent in Indian art and culture. Haveli combines  architectural innovation with the ambiance of India to create a unique  dining atmosphere.</div>\r\n</div>', '', 1, 0, 0, 0, '2012-03-25 14:02:56', 65, '', '2013-10-04 11:11:14', 65, 0, '0000-00-00 00:00:00', '2012-03-25 14:02:56', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 21, 0, 46, '', '', 0, 882, 'robots=\nauthor='),
(149, 'Coupon', 'coupon', '', '<div id="couponheading"><span class="couponheading"><em><strong>Special Savings from our Indian Restaurant</strong></em></span></div>\r\n<div id="couponbox"><img class="couponbox" src="images/couponbox.png" border="0" /></div>\r\n<div id="couponenjoy"><span class="couponenjoy">Enjoy special savings on your next meal at our Indian Restaurant in New York.</span></div>', '', 1, 0, 0, 0, '2012-03-25 17:20:38', 65, '', '2013-10-02 00:19:35', 65, 0, '0000-00-00 00:00:00', '2012-03-25 17:20:38', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 6, 0, 45, '', '', 0, 78, 'robots=\nauthor='),
(150, 'Comments', 'comments', '', '<p>Comments Display Page :)</p>', '', 1, 0, 0, 0, '2012-03-25 17:22:53', 65, '', '2013-09-25 20:58:00', 65, 0, '0000-00-00 00:00:00', '2012-03-25 17:22:53', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 44, '', '', 0, 20, 'robots=\nauthor='),
(151, 'Mushroom or Shaag Curry', 'mushroom-or-shaag-curry', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Mushroom or Shaag Curry</strong><span class="foodindivprice"><strong>$12.95</strong></span> <span class="foodindivdet"><br /><br /> Choice of Lamb, chicken or keema, cooked with <br />mushroom or spinach in spice-flavored sauce </span> </span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/chickenlegquarter.jpg" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-27 04:39:03', 65, '', '2013-10-01 12:25:21', 65, 0, '0000-00-00 00:00:00', '2012-03-27 04:39:03', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 9, 0, 43, '', '', 0, 102, 'robots=\nauthor='),
(153, 'Mottor or Chana Curry', 'mottor-or-chana-curry', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Mottor or Chana Curry</strong> <span class="foodindivprice"><strong>$12.95</strong></span> <span class="foodindivdet"><br /><br /> Choice of Lamb, chicken or keema, <br />cooked with green peas or chicken peas<br />in a spice-flavored sauce</span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/banjara-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 11:21:19', 65, '', '2013-10-01 12:36:06', 65, 65, '2013-10-01 13:15:27', '2012-03-30 11:21:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 41, '', '', 0, 26, 'robots=\nauthor='),
(154, 'Chili Murg', 'chili-murg', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Chili Murg</strong> <span class="foodindivprice"><strong>$14.95</strong></span> <span class="foodindivdet"><br /><br /> Chicken in very spicy sauce of <br />black pepper &amp; green chiles </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/banjara-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 11:24:30', 65, '', '2013-10-01 13:25:45', 65, 0, '0000-00-00 00:00:00', '2012-03-30 11:24:30', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 5, 0, 40, '', '', 0, 25, 'robots=\nauthor='),
(155, 'Goat Bhuna or Goat Dopiaza', 'goat-bhuna-or-goat-dopiaza', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Goat Bhuna or Goat Dopiaza</strong></span> <span class="foodindivprice"><strong>$16.95</strong></span> <span class="foodindivdet"><br /><br />Boneless pieces of chicken<br />breast seasoned and<br />cooked in Tandoori</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 11:29:07', 65, '', '2013-09-25 21:29:28', 65, 0, '0000-00-00 00:00:00', '2012-03-30 11:29:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 39, '', '', 0, 26, 'robots=\nauthor='),
(156, 'Lamb Chops', 'lamb-chops', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Lamb Chops</strong></span> <span class="foodindivprice"><strong>$12.95</strong></span> <span class="foodindivdet"><br /><br />Lamb chops spiced with<br />Shaheen''s blend of spices<br />&amp; cooked in Tandoori</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 11:34:18', 65, '', '2012-04-05 09:09:38', 65, 0, '0000-00-00 00:00:00', '2012-03-30 11:34:18', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 38, '', '', 0, 6, 'robots=\nauthor='),
(157, 'Lamb Seekh Kebab', 'lamb-seekh-kebab', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Lamb Seekh Kebab</strong></span> <span class="foodindivprice"><strong>$8.95</strong></span> <span class="foodindivdet"><br /><br />Minced lamb with spices and<br />cooked in Tandoori</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 11:36:07', 65, '', '2012-04-05 09:10:41', 65, 0, '0000-00-00 00:00:00', '2012-03-30 11:36:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 37, '', '', 0, 6, 'robots=\nauthor='),
(158, 'Lamb Tikka', 'lamb-tikka', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Lamb Tikka</strong></span> <span class="foodindivprice"><strong>$12.95</strong></span> <span class="foodindivdet"><br /><br />Boneless pieces of lamb<br />spiced-up &amp; cooked in Tandoori.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 11:36:57', 65, '', '2012-04-05 09:12:13', 65, 0, '0000-00-00 00:00:00', '2012-03-30 11:36:57', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 36, '', '', 0, 5, 'robots=\nauthor='),
(159, 'Beef Tikka', 'beef-tikka', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Beef Tikka</strong></span> <span class="foodindivprice"><strong>$12.95</strong></span> <span class="foodindivdet"><br /><br />Boneless pieces of beef<br />seasoned with spices &amp;<br />yogurt. Cooked in Tandoori.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 11:37:39', 65, '', '2012-04-05 09:13:33', 65, 0, '0000-00-00 00:00:00', '2012-03-30 11:37:39', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 35, '', '', 0, 10, 'robots=\nauthor='),
(160, 'Dhaka Kathiroll', 'dhaka-kathiroll', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Dhaka Kathiroll</strong> <span class="foodindivprice"><strong>$6.95</strong></span> <span class="foodindivdet"><br /><br /> Grilled Chicken tikka salad wrapped in flat bread</span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/haveli-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 11:38:26', 65, '', '2013-10-09 20:32:30', 65, 0, '0000-00-00 00:00:00', '2012-03-30 11:38:26', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 34, '', '', 0, 18, 'robots=\nauthor='),
(161, 'Banjara Baingun', 'banjara-baingun', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Banjara Baingun</strong> <span class="foodindivprice"><strong>$6.95</strong></span> <span class="foodindivdet"><br /><br /> Slice eggplant with coconut &amp; seafood stuffing with chili sauce </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/banjara-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 11:39:04', 65, '', '2013-10-09 20:35:20', 65, 0, '0000-00-00 00:00:00', '2012-03-30 11:39:04', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 33, '', '', 0, 8, 'robots=\nauthor='),
(162, 'Dhaksin Se Shuru', 'dhaksin-se-shuru', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Dhaksin Se Shuru</strong> <span class="foodindivprice"><strong>$6.95</strong></span> <span class="foodindivdet"><br /><br /> Plate of baby dosa (crepe filled with potato, onion &amp; nut stuffing <br />&amp; stuffed idli steamed rice &amp; lentil patties from South Indian)</span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/banjara-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 11:40:04', 65, '', '2013-10-09 20:38:38', 65, 0, '0000-00-00 00:00:00', '2012-03-30 11:40:04', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 32, '', '', 0, 8, 'robots=\nauthor='),
(163, 'Samosa', 'samosa', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Samosa</strong> <span class="foodindivprice"><strong>$3.95</strong></span> <span class="foodindivdet"><br /><br /> Pastries with your choice of chicken, lamb, peas <br />or coconut filling (Two per serving) </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/banjara-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 11:40:37', 65, '', '2013-10-09 20:40:14', 65, 0, '0000-00-00 00:00:00', '2012-03-30 11:40:37', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 31, '', '', 0, 9, 'robots=\nauthor='),
(164, 'Onion Bhaji', 'onion-bhaji', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Onion Bhaji</strong> <span class="foodindivprice"><strong>$3.95</strong></span> <span class="foodindivdet"><br /><br /> The Onion slices deep-fried in a chick peas flour batter </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/haveli-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 11:41:17', 65, '', '2013-10-09 20:43:25', 65, 0, '0000-00-00 00:00:00', '2012-03-30 11:41:17', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 30, '', '', 0, 7, 'robots=\nauthor='),
(165, 'Aloor Chop', 'aloor-chop', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Aloor Chop</strong> <span class="foodindivprice"><strong>$4.95</strong></span> <span class="foodindivdet"><br /><br /> A tangy combination of potato cakes, chick peas<br /> &amp; onions, tossed in tamarind sauce </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/banjara-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 11:41:58', 65, '', '2013-10-09 20:44:23', 65, 0, '0000-00-00 00:00:00', '2012-03-30 11:41:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 29, '', '', 0, 9, 'robots=\nauthor='),
(166, 'Kolize Poori Wali', 'kolize-poori-wali', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Kolize Poori Wali </strong> <span class="foodindivprice"><strong>$4.95</strong></span> <span class="foodindivdet"><br /><br /> Sauted chicken liver with tiny poori </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/haveli-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 13:06:12', 65, '', '2013-10-09 20:46:09', 65, 0, '0000-00-00 00:00:00', '2012-03-30 13:06:12', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 28, '', '', 0, 18, 'robots=\nauthor='),
(167, 'Poori Bhaji', 'poori-bhaji', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong> Poori Bhaji </strong> <span class="foodindivprice"><strong> $4.55 </strong></span> <span class="foodindivdet"><br /><br /> Fried chick peas in spice served with poori bread </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/banjara-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 08:58:41', 65, '', '2013-10-09 20:48:20', 65, 0, '0000-00-00 00:00:00', '2012-04-06 08:58:41', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 27, '', '', 0, 7, 'robots=\nauthor='),
(168, 'Lamb Tawa Kabab', 'lamb-tawa-kabab', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong> Lamb Tawa Kabab </strong> <span class="foodindivprice"><strong> $6.95 </strong></span> <span class="foodindivdet"><br /><br /> Lamb marinated in coriander, chili, garlic &amp; ginger, <br />grilled on a pan of fresh onions &amp; tomatoes </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/haveli-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:03:05', 65, '', '2013-10-09 20:50:31', 65, 0, '0000-00-00 00:00:00', '2012-04-06 09:03:05', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 4, 0, 26, '', '', 0, 8, 'robots=\nauthor='),
(169, 'Tikhi Ghost Sheek', 'tikhi-ghost-sheek', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong> Tikhi Ghost Sheek </strong> <span class="foodindivprice"><strong> $6.95 </strong></span> <span class="foodindivdet"><br /><br /> Marinated lamb skewere &amp; char grilled (Served with salad) </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/haveli-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:05:56', 65, '', '2013-10-09 20:51:44', 65, 0, '0000-00-00 00:00:00', '2012-04-06 09:05:56', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 25, '', '', 0, 6, 'robots=\nauthor='),
(170, 'Assorted Vegetable Fritters Nizami Keema', 'assorted-vegetable-fritters-nizami-keema', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong> Assorted Vegetable Fritters Nizami Keema </strong> <span class="foodindivprice"><strong> $7.95 </strong></span> <span class="foodindivdet"><br /><br /> Grilled lamb strips, keema with cinamon, cloves,<br /> nutmeg &amp; lemon zest in a black nan </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/banjara-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:07:13', 65, '', '2013-10-09 20:53:12', 65, 0, '0000-00-00 00:00:00', '2012-04-06 09:07:13', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 24, '', '', 0, 6, 'robots=\nauthor='),
(171, 'Jinga Poori', 'jinga-poori', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong> Jinga Poori </strong> <span class="foodindivprice"><strong> $11.95 </strong></span> <span class="foodindivdet"><br /><br /> Lightly spiced shrimps sauteed with fresh<br /> onions, served with a fluffy poori </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/banjara-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:08:35', 65, '', '2013-10-09 20:54:22', 65, 0, '0000-00-00 00:00:00', '2012-04-06 09:08:35', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 23, '', '', 0, 6, 'robots=\nauthor=');
INSERT INTO `jos_content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(172, 'Indian Hot D’oeuyers', 'indian-hot-doeuyers', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong> Indian Hot D’oeuyers </strong> <span class="foodindivprice"><strong> $9.95 </strong></span> <span class="foodindivdet"><br /><br /> Assorted Hot Appetizere </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/haveli-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:09:56', 65, '', '2013-10-09 20:55:22', 65, 0, '0000-00-00 00:00:00', '2012-04-06 09:09:56', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 22, '', '', 0, 6, 'robots=\nauthor='),
(173, 'Banana Pakora', 'banana-pakora', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong> Banana Pakora </strong> <span class="foodindivprice"><strong> $3.95 </strong></span> <span class="foodindivdet"><br /><br /> Banana Fritters </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/haveli-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:11:07', 65, '', '2013-10-09 20:56:39', 65, 0, '0000-00-00 00:00:00', '2012-04-06 09:11:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 21, '', '', 0, 8, 'robots=\nauthor='),
(174, 'Kurkuri Okra', 'kurkuri-okra', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong> Kurkuri Okra </strong> <span class="foodindivprice"><strong> $5.95 </strong></span> <span class="foodindivdet"><br /><br /> Crispy okra, red onions, chaat masala, lime, cumin </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/banjara-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:21:46', 65, '', '2013-10-09 20:57:59', 65, 0, '0000-00-00 00:00:00', '2012-04-06 09:21:46', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 20, '', '', 0, 8, 'robots=\nauthor='),
(175, 'Pakna Kabab', 'pakna-kabab', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong> Pakna Kabab </strong> <span class="foodindivprice"><strong> $4.95 </strong></span> <span class="foodindivdet"><br /><br /> Tandoori Fried Chicken Wings, Garam Masala </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/banjara-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:27:54', 65, '', '2013-10-09 20:58:48', 65, 0, '0000-00-00 00:00:00', '2012-04-06 09:27:54', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 3, 0, 19, '', '', 0, 7, 'robots=\nauthor='),
(176, 'Mutter Paneer', 'mutter-paneer', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Mutter Paneer</strong></span> <span class="foodindivprice"><strong>$7.95</strong></span> <span class="foodindivdet"><br /><br />Home-made cheese and green peas.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:29:56', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:29:56', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 18, '', '', 0, 5, 'robots=\nauthor='),
(177, 'Malaee Koofta', 'malaee-koofta', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Malaee Koofta</strong></span> <span class="foodindivprice"><strong>$8.95</strong></span> <span class="foodindivdet"><br /><br />Vegetable balls in creamy <br />sauce topped with almonds.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:31:05', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:31:05', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 17, '', '', 0, 5, 'robots=\nauthor='),
(178, 'Yogurt Curry (Karhee)', 'yogurt-curry-karhee', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Yogurt Curry (Karhee)</strong></span> <span class="foodindivprice"><strong>$7.95</strong></span> <span class="foodindivdet"><br /><br />Yogurt curry with vegetable fritters.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:32:11', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:32:11', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 16, '', '', 0, 5, 'robots=\nauthor='),
(179, 'Karahi Paneer', 'karahi-paneer', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Karahi Paneer</strong></span> <span class="foodindivprice"><strong>$9.95</strong></span> <span class="foodindivdet"><br /><br />Cheese with fresh <br />vegetables &amp; special spices. </span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:33:47', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:33:47', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 15, '', '', 0, 6, 'robots=\nauthor='),
(180, 'Bhindi Masala', 'bhindi-masala', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Bhindi Masala</strong></span> <span class="foodindivprice"><strong>$8.95</strong></span> <span class="foodindivdet"><br /><br />Cut Okra cooked with onions, <br />tomatoes &amp; special blend of spices.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:35:07', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:35:07', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 14, '', '', 0, 6, 'robots=\nauthor='),
(181, 'Mixed Vegetables', 'mixed-vegetables', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Mixed Vegetables</strong></span> <span class="foodindivprice"><strong>$6.95</strong></span> <span class="foodindivdet"><br /><br />Garden fresh vegetables cooked <br />with special blend of spices.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:36:18', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:36:18', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 13, '', '', 0, 5, 'robots=\nauthor='),
(182, 'Chana Masala', 'chana-masala', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Chana Masala</strong></span> <span class="foodindivprice"><strong>$6.95</strong></span> <span class="foodindivdet"><br /><br />Chickpeas cooked with herbs &amp; spices.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:37:49', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:37:49', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 12, '', '', 0, 5, 'robots=\nauthor='),
(183, 'Aallu Gobhi', 'aallu-gobhi', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Aallu Gobhi</strong></span> <span class="foodindivprice"><strong>$7.95</strong></span> <span class="foodindivdet"><br /><br />Cauliflower &amp; potatoes.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:38:45', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:38:45', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 11, '', '', 0, 5, 'robots=\nauthor='),
(184, 'Vegetable Vindallu', 'vegetable-vindallu', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Vegetable Vindallu</strong></span> <span class="foodindivprice"><strong>$8.95</strong></span> <span class="foodindivdet"><br /><br />Mixed vegetables cooked in hot sauce.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:39:58', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:39:58', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 10, '', '', 0, 5, 'robots=\nauthor='),
(185, 'Daal Makhnee', 'daal-makhnee', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Daal Makhnee</strong></span> <span class="foodindivprice"><strong>$6.95</strong></span> <span class="foodindivdet"><br /><br /><br /><br /></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:48:53', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:48:53', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 9, '', '', 0, 5, 'robots=\nauthor='),
(186, 'Shrimp Baryanee', 'shrimp-baryanee', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Shrimp Baryanee</strong></span> <span class="foodindivprice"><strong>$11.95</strong></span> <span class="foodindivdet"><br /><br />Bashmati rice cooked with masala <br />shrimp, onions, pepper &amp; tomatoes.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:52:25', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:52:25', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 8, '', '', 0, 6, 'robots=\nauthor='),
(187, 'Lamb Baryanee', 'lamb-baryanee', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Lamb Baryanee</strong></span> <span class="foodindivprice"><strong>$10.95</strong></span> <span class="foodindivdet"><br /><br />Bashmati rice cooked with spiced <br />lamb &amp; garnished with brown onions.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:53:53', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:53:53', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 7, '', '', 0, 5, 'robots=\nauthor='),
(188, 'Chicken Baryanee', 'chicken-baryanee', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Chicken Baryanee</strong></span> <span class="foodindivprice"><strong>$8.95</strong></span> <span class="foodindivdet"><br /><br />Rice cooked with chicken pieces <br />spiced up with baryanee masala <br />&amp; garnished with brown onions.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:54:50', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:54:50', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 6, '', '', 0, 5, 'robots=\nauthor='),
(189, 'Mughlaee Baryanee', 'mughlaee-baryanee', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Mughlaee Baryanee</strong></span> <span class="foodindivprice"><strong>$7.95</strong></span> <span class="foodindivdet"><br /><br />Scented rice cooked with <br />Saffron, Nuts &amp; Cardamom.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:56:02', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:56:02', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 5, '', '', 0, 5, 'robots=\nauthor='),
(190, 'Vegetable Baryanee', 'vegetable-baryanee', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Vegetable Baryanee</strong></span> <span class="foodindivprice"><strong>$7.95</strong></span> <span class="foodindivdet"><br /><br />Scented rice cooked with mixed <br />&amp; spiced up vegetables.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:57:00', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:57:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 4, '', '', 0, 5, 'robots=\nauthor='),
(191, 'Saada Chawal', 'saada-chawal', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Saada Chawal</strong></span> <span class="foodindivprice"><strong>$4.95</strong></span> <span class="foodindivdet"><br /><br />Boiled bashmati rice.</span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" border="0" /></div>', '', 1, 0, 0, 0, '2012-04-06 09:58:05', 65, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-04-06 09:58:05', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 3, '', '', 0, 5, 'robots=\nauthor='),
(192, 'Maruf', 'maruf', '', '<p>নাম...</p>', '', -2, 0, 0, 0, '2012-06-29 11:43:19', 65, '', '2012-06-29 11:48:23', 65, 0, '0000-00-00 00:00:00', '2012-06-29 11:43:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 0, '', '', 0, 0, 'robots=\nauthor='),
(193, '2-Mottor or Chana Curry', 'mottor-or-chana-curry', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Mottor or Chana Curry</strong> <span class="foodindivprice"><strong>$12.95</strong></span> <span class="foodindivdet"><br /><br /> Choice of Lamb, chicken or keema, <br />cooked with green peas or chicken peas<br />in a spice-flavored sauce</span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/banjara-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 11:21:19', 65, '', '2013-10-09 13:40:25', 65, 0, '0000-00-00 00:00:00', '2012-03-30 11:21:19', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 2, '', '', 0, 0, 'robots=\nauthor='),
(194, '2-Dansak Curry', 'dansak-curry', '', '<div id="foodindividualdetails"><span class="foodindivname"><strong>Dansak Curry</strong> <span class="foodindivprice"><strong>$12.95</strong></span> <span class="foodindivdet"><br /><br /> Choice of Lamb, chicken or keema, cooked <br />with lentils hot spices (Persian Style) </span></span></div>\r\n<div id="chickenlegquarter"><img class="foodsingle" src="images/banjara-logo.png" border="0" /></div>', '', 1, 0, 0, 0, '2012-03-30 10:17:33', 65, '', '2013-10-09 20:35:03', 65, 65, '2013-10-09 20:36:06', '2012-03-30 10:17:33', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 1, '', '', 0, 0, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_frontpage`
--

CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_frontpage`
--

INSERT INTO `jos_content_frontpage` (`content_id`, `ordering`) VALUES
(138, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_rating`
--

CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `jos_core_acl_aro`
--

INSERT INTO `jos_core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(13, 'users', '65', 0, 'SR Rahman', 0),
(17, 'users', '69', 0, 'Rajib Rahman', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

INSERT INTO `jos_core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

INSERT INTO `jos_core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

INSERT INTO `jos_core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(25, '', 13),
(25, '', 17);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_items`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_searches`
--

CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_djimageslider`
--

CREATE TABLE IF NOT EXISTS `jos_djimageslider` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_djimageslider`
--

INSERT INTO `jos_djimageslider` (`id`, `catid`, `sid`, `title`, `alias`, `image`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 54, 0, '1', '1', 'images/stories/fruit/1.png', '', 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'targetswitch=4\ntarget=\ntargeturl=\nid=0\n\n'),
(2, 54, 0, '2', '2', 'images/stories/fruit/2.png', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'targetswitch=0\ntarget=\ntargeturl=\nid=0\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_groups`
--

CREATE TABLE IF NOT EXISTS `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_groups`
--

INSERT INTO `jos_groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `jos_joomap`
--

CREATE TABLE IF NOT EXISTS `jos_joomap` (
  `version` varchar(255) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `expand_category` int(11) DEFAULT NULL,
  `expand_section` int(11) DEFAULT NULL,
  `show_menutitle` int(11) DEFAULT NULL,
  `columns` int(11) DEFAULT NULL,
  `exlinks` int(11) DEFAULT NULL,
  `ext_image` varchar(255) DEFAULT NULL,
  `menus` text,
  `exclmenus` varchar(255) DEFAULT NULL,
  `includelink` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_joomap`
--

INSERT INTO `jos_joomap` (`version`, `classname`, `expand_category`, `expand_section`, `show_menutitle`, `columns`, `exlinks`, `ext_image`, `menus`, `exclmenus`, `includelink`) VALUES
('2.0', 'sitemap', 0, 0, 1, 2, 0, 'img_grey.gif', 'footerleftmenu,0,0\nmainmenu,1,1\nfooterrightmenu,2,0\nhideen-menu,3,0\nrssmenu,4,0\ntopmenu,5,0\nusermenu,6,0', '59,41,1,67,86,75,58', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu`
--

CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=125 ;

--
-- Dumping data for table `jos_menu`
--

INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(1, 'mainmenu', 'H__', 'home', 'index.php?option=com_content&view=article&id=144', 'component', 0, 0, 20, 0, 23, 65, '2013-09-25 20:55:38', 0, 0, 0, 3, 'show_noauth=\nshow_title=1\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=: Royal Kabab :\nshow_page_title=0\npageclass_sfx=_frontpage\nmenu_image=articles.jpg\nsecure=0\n\n', 0, 0, 0),
(2, 'mainmenu', 'Joomla! License', 'joomla-license', 'index.php?option=com_content&view=article&id=5', 'component', -2, 0, 20, 0, 60, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(41, 'mainmenu', 'Truck', 'truck', 'index.php?option=com_content&view=category&layout=blog&id=58', 'component', -2, 0, 20, 0, 40, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=0\nnum_intro_articles=4\nnum_columns=1\nnum_links=0\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=FAQ\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(11, 'footerrightmenu', 'Joomla! Home', 'joomla-home', 'http://www.joomla.org', 'url', -2, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(12, 'footerrightmenu', 'Joomla! Forums', 'joomla-forums', 'http://forum.joomla.org', 'url', -2, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(13, 'footerrightmenu', 'Joomla! Documentation', 'joomla-documentation', 'http://docs.joomla.org', 'url', -2, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(14, 'footerrightmenu', 'Joomla! Community', 'joomla-community', 'http://community.joomla.org', 'url', -2, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(15, 'footerrightmenu', 'Joomla! Magazine', 'joomla-community-magazine', 'http://magazine.joomla.org/', 'url', -2, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(16, 'footerrightmenu', 'OSM Home', 'osm-home', 'http://www.opensourcematters.org', 'url', -2, 0, 0, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 6, 'menu_image=-1\n\n', 0, 0, 0),
(17, 'footerrightmenu', 'Administrator', 'administrator', 'administrator/', 'url', -2, 0, 0, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(18, 'topmenu', 'Sitemap', 'sitemap', 'index.php?option=com_joomap', 'component', 0, 0, 82, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'page_title=Sitemap\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(54, 'mainmenu', 'Ordinance', 'ordinance', 'index.php?option=com_content&view=article&id=92', 'component', -2, 0, 20, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(20, 'usermenu', 'Your Details', 'your-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(24, 'usermenu', 'Logout', 'logout', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(38, 'hideen-menu', 'Content Layouts', 'content-layouts', 'index.php?option=com_content&view=article&id=24', 'component', -2, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(27, 'mainmenu', 'About us', 'about-us', 'index.php?option=com_content&view=article&id=146', 'component', -2, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=1\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(119, 'mainmenu', 'test', 'test', 'index.php?option=com_content&view=article&id=144', 'component', -2, 0, 20, 1, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(28, 'topmenu', 'FAQ', 'faq', 'index.php?option=com_quickfaq&view=category&cid=5', 'component', 0, 0, 66, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_updatecheck=\ntrigger_onprepare_content=\nshow_jcomments=\nshow_jomcomments=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_vote=\nshow_hits=\nshow_tags=\nshow_favourites=\nshow_categories=\nfilter=\ndisplay=\nlimit=10\ncatlimit=5\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_state_icon=\nupload_extensions=bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS,zip\nupload_maxsize=10000000\nfile_path=components/com_quickfaq/uploads\nrestrict_uploads=\ncheck_mime=\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(29, 'topmenu', 'Feedback', 'feedback', 'index.php?option=com_aicontactsafe&view=message&layout=message&pf=1', 'component', 0, 0, 83, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'redirect_on_success=\npage_title=Feedback\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(30, 'topmenu', 'Contact Us', 'contact-us', 'index.php?option=com_aicontactsafe&view=message&layout=message&pf=1', 'component', 0, 0, 83, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'redirect_on_success=\npage_title=Contact Us\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(34, 'mainmenu', 'What''s New in 1.5?', 'what-is-new-in-1-5', 'index.php?option=com_content&view=article&id=22', 'component', -2, 0, 20, 0, 62, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(40, 'hideen-menu', 'Extensions', 'extensions', 'index.php?option=com_content&view=article&id=26', 'component', -2, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(37, 'mainmenu', 'More about Joomla!', 'more-about-joomla', 'index.php?option=com_content&view=section&id=4', 'component', -2, 0, 20, 0, 58, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1', 0, 0, 0),
(43, 'hideen-menu', 'Example Pages', 'example-pages', 'index.php?option=com_content&view=article&id=43', 'component', -2, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(44, 'footerleftmenu', 'Section Blog', 'section-blog', 'index.php?option=com_content&view=section&layout=blog&id=3', 'component', -2, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Section Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(45, 'footerleftmenu', 'Section Table', 'section-table', 'index.php?option=com_content&view=section&id=3', 'component', -2, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Table Blog layout (FAQ section)\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nnlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(46, 'footerleftmenu', 'Category Blog', 'categoryblog', 'index.php?option=com_content&view=category&layout=blog&id=31', 'component', -2, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Blog layout (FAQs/General category)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(47, 'footerleftmenu', 'Category Table', 'category-table', 'index.php?option=com_content&view=category&id=32', 'component', -2, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Example of Category Table layout (FAQs/Languages category)\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(48, 'mainmenu', 'Web Links', 'web-links', 'index.php?option=com_weblinks&view=categories', 'component', -2, 0, 4, 0, 61, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=Weblinks\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 0, 0, 0),
(49, 'mainmenu', 'Bus', 'bus', 'index.php?option=com_content&view=category&layout=blog&id=56', 'component', -2, 0, 20, 0, 45, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=0\nnum_intro_articles=4\nnum_columns=1\nnum_links=0\norderby_pri=order\norderby_sec=order\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=0\nshow_feed_link=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(53, 'topmenu', 'Home', 'home', 'index.php?option=com_content&view=frontpage', 'component', 0, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=Welcome to the Frontpage\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=front\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(50, 'mainmenu', 'The News', 'the-news', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', -2, 0, 20, 0, 57, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=The News\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(51, 'usermenu', 'Submit an Article', 'submit-an-article', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(52, 'usermenu', 'Submit a Web Link', 'submit-a-web-link', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(55, 'mainmenu', 'Services', 'services', 'index.php?option=com_content&view=category&layout=blog&id=55', 'component', -2, 0, 20, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=0\nnum_intro_articles=4\nnum_columns=1\nnum_links=0\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(56, 'mainmenu', 'Posts', 'posts', 'index.php?option=com_content&view=category&layout=blog&id=60', 'component', -2, 0, 20, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=1\nnum_leading_articles=0\nnum_intro_articles=4\nnum_columns=1\nnum_links=0\norderby_pri=order\norderby_sec=rdate\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=0\nshow_feed_link=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(57, 'mainmenu', 'News & Events', 'news-a-events', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', -2, 0, 20, 0, 49, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=0\nnum_intro_articles=4\nnum_columns=1\nnum_links=0\norderby_pri=order\norderby_sec=rdate\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(58, 'mainmenu', 'Information', 'information', 'index.php?option=com_content&view=category&layout=blog&id=59', 'component', -2, 0, 20, 0, 38, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=0\nnum_intro_articles=4\nnum_columns=1\nnum_links=0\norderby_pri=order\norderby_sec=rdate\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=0\nshow_feed_link=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=Information\nshow_page_title=0\npageclass_sfx=_success\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(59, 'footerleftmenu', 'Home', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=0\nnum_intro_articles=3\nnum_columns=1\nnum_links=0\norderby_pri=order\norderby_sec=rdate\nmulti_column_order=1\nshow_pagination=0\nshow_pagination_results=0\nshow_feed_link=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=Welcome to Progati\nshow_page_title=1\npageclass_sfx=_frontpage\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(60, 'footerleftmenu', 'FAQ', 'faq', 'index.php?option=com_quickfaq&view=category&cid=5', 'component', 1, 0, 66, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_updatecheck=\ntrigger_onprepare_content=\nshow_jcomments=\nshow_jomcomments=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_vote=\nshow_hits=\nshow_tags=\nshow_favourites=\nshow_categories=\nfilter=\ndisplay=\nlimit=10\ncatlimit=5\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_state_icon=\nupload_extensions=bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS,zip\nupload_maxsize=10000000\nfile_path=components/com_quickfaq/uploads\nrestrict_uploads=\ncheck_mime=\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(61, 'footerleftmenu', 'About Us', 'about-us', 'index.php?option=com_content&view=article&id=46', 'component', 1, 0, 20, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=1\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(62, 'footerleftmenu', 'Progati News Feeds', 'progati-news-feeds', 'http://localhost/progati/index.php?option=com_ninjarsssyndicator&feed_id=1&format=raw', 'url', 0, 0, 0, 0, 8, 0, '0000-00-00 00:00:00', 0, 1, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(63, 'footerleftmenu', 'Activities', 'activities', 'index.php?option=com_content&view=section&layout=blog&id=6', 'component', 1, 0, 20, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=1\nnum_leading_articles=0\nnum_intro_articles=4\nnum_columns=1\nnum_links=0\norderby_pri=order\norderby_sec=order\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(64, 'footerleftmenu', 'Components', 'components', 'index.php?option=com_content&view=section&layout=blog&id=7', 'component', 1, 0, 20, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=1\nnum_leading_articles=0\nnum_intro_articles=4\nnum_columns=1\nnum_links=0\norderby_pri=order\norderby_sec=order\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(65, 'footerleftmenu', 'News and Media', 'news-and-media', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', 1, 0, 20, 0, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=1\nnum_leading_articles=0\nnum_intro_articles=4\nnum_columns=1\nnum_links=0\norderby_pri=order\norderby_sec=rdate\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(66, 'footerleftmenu', 'Success Stories', 'success-stories', 'index.php?option=com_content&view=category&layout=blog&id=28', 'component', 1, 0, 20, 0, 12, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=1\nshow_description_image=1\nnum_leading_articles=0\nnum_intro_articles=4\nnum_columns=1\nnum_links=0\norderby_pri=order\norderby_sec=rdate\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(67, 'footerrightmenu', 'About Us', 'about-us', 'index.php?option=com_content&view=category&layout=blog&id=34', 'component', 1, 0, 20, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=1\nnum_links=4\norderby_pri=\norderby_sec=\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=1\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(68, 'footerrightmenu', 'Sitemap', 'sitemap', 'index.php?option=com_joomap', 'component', 1, 0, 82, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(69, 'mainmenu', 'Organization', 'organization', 'index.php?option=com_content&view=article&id=93', 'component', -2, 0, 20, 1, 22, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(70, 'mainmenu', 'Objective', 'objective', 'index.php?option=com_content&view=article&id=94', 'component', -2, 0, 20, 1, 14, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(71, 'mainmenu', 'Citizen Character', 'citizen-character', 'index.php?option=com_content&view=article&id=95', 'component', -2, 0, 20, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(72, 'mainmenu', 'One stop service', 'one-stop-service', 'index.php?option=com_content&view=article&id=96', 'component', -2, 0, 20, 1, 16, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(73, 'mainmenu', 'E-Ticketing', 'e-ticketing', 'index.php?option=com_content&view=article&id=97', 'component', -2, 0, 20, 1, 13, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(74, 'mainmenu', 'Depot', 'depot', 'index.php?option=com_content&view=article&id=98', 'component', -2, 0, 20, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(75, 'mainmenu', 'Tender', 'tender', 'index.php?option=com_content&view=article&id=114', 'component', -2, 0, 20, 0, 37, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(76, 'mainmenu', 'Bus', 'bus', 'index.php?option=com_content&view=article&id=103', 'component', -2, 0, 20, 1, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(105, 'mainmenu', 'Service for General User', 'service-for-general-user', 'index.php?option=com_content&view=article&id=128', 'component', -2, 0, 20, 1, 36, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(77, 'mainmenu', 'Truck', 'truck', 'index.php?option=com_content&view=article&id=104', 'component', -2, 0, 20, 1, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(78, 'mainmenu', 'Training Institute', 'training-institute', 'index.php?option=com_content&view=article&id=105', 'component', -2, 0, 20, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(93, 'mainmenu', 'Workshop', 'workshop', 'index.php?option=com_content&view=article&id=100', 'component', -2, 0, 20, 0, 25, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(79, 'mainmenu', 'Workshop Facilities', 'workshop-facilities', 'index.php?option=com_content&view=article&id=106', 'component', -2, 0, 20, 1, 12, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(80, 'mainmenu', 'Organogram', 'organogram', 'index.php?option=com_content&view=article&id=116', 'component', -2, 0, 20, 1, 11, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(81, 'mainmenu', 'Board of Directors', 'board-of-directors-chairman', 'index.php?option=com_content&view=article&id=117', 'component', -2, 0, 20, 1, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(82, 'mainmenu', 'Official Directors', 'official-directors', 'index.php?option=com_content&view=article&id=133', 'component', -2, 0, 20, 1, 26, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(83, 'mainmenu', 'Form Four old division', 'form-four-old-division', 'index.php?option=com_content&view=article&id=119', 'component', -2, 0, 20, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(84, 'mainmenu', 'Local Government', 'local-government', 'index.php?option=com_content&view=article&id=86', 'component', -2, 0, 20, 1, 56, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(85, 'hideen-menu', 'Search', 'search', 'index.php?option=com_search&view=search', 'component', 1, 0, 15, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'search_areas=1\nshow_date=\nenabled=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(86, 'mainmenu', 'Training', 'training', 'index.php?option=com_content&view=article&id=142', 'component', -2, 0, 20, 0, 29, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(87, 'rssmenu', 'RSS', 'rss', 'index.php?option=com_ninjarsssyndicator&feed_id=1&format=raw', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 1, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(88, 'mainmenu', 'News', 'news', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', -2, 0, 20, 1, 30, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_description=0\nshow_description_image=0\nnum_leading_articles=0\nnum_intro_articles=4\nnum_columns=1\nnum_links=0\norderby_pri=order\norderby_sec=order\nmulti_column_order=0\nshow_pagination=2\nshow_pagination_results=0\nshow_feed_link=0\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(89, 'mainmenu', 'Photo Gallery', 'photo-gallery', 'index.php?option=com_phocagallery&view=categories', 'component', -2, 0, 71, 1, 54, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_pagination_categories=0\nshow_pagination_category=1\nshow_pagination_limit_categories=0\nshow_pagination_limit_category=1\ndisplay_cat_name_title=1\ncategories_columns=\nequal_percentage_width=\ndisplay_image_categories=\ncategories_box_width=\nimage_categories_size=\ncategories_image_ordering=\ncategories_display_avatar=\ndisplay_subcategories=\ndisplay_empty_categories=\nhide_categories=\nshow_categories=\ndisplay_access_category=\ndefault_pagination_categories=\npagination_categories=\nfont_color=\nbackground_color=\nbackground_color_hover=\nimage_background_color=\nimage_background_shadow=\nborder_color=\nborder_color_hover=\nmargin_box=\npadding_box=\ndisplay_new=\ndisplay_hot=\ndisplay_name=\ndisplay_icon_detail=\ndisplay_icon_download=\ndisplay_icon_folder=\nfont_size_name=\nchar_length_name=\ncategory_box_space=\ndisplay_categories_sub=\ndisplay_subcat_page=\ndisplay_category_icon_image=\ncategory_image_ordering=\ndisplay_back_button=\ndisplay_categories_back_button=\ndefault_pagination_category=\npagination_category=\ndisplay_img_desc_box=\nfont_size_img_desc=\nimg_desc_box_height=\nchar_length_img_desc=\ndisplay_categories_cv=\ndisplay_subcat_page_cv=\ndisplay_category_icon_image_cv=\ncategory_image_ordering_cv=\ndisplay_back_button_cv=\ndisplay_categories_back_button_cv=\ncategories_columns_cv=\ndisplay_image_categories_cv=\nimage_categories_size_cv=\ndetail_window=\ndetail_window_background_color=\nmodal_box_overlay_color=\nmodal_box_overlay_opacity=\nmodal_box_border_color=\nmodal_box_border_width=\nsb_slideshow_delay=\nsb_lang=\nhighslide_class=\nhighslide_opacity=\nhighslide_outline_type=\nhighslide_fullimg=\nhighslide_close_button=\nhighslide_slideshow=\njak_slideshow_delay=\njak_orientation=\njak_description=\njak_description_height=\ndisplay_description_detail=\ndisplay_title_description=\nfont_size_desc=\nfont_color_desc=\ndescription_detail_height=\ndescription_lightbox_font_size=\ndescription_lightbox_font_color=\ndescription_lightbox_bg_color=\nslideshow_delay=\nslideshow_pause=\nslideshow_random=\ndetail_buttons=\nphocagallery_width=\nphocagallery_center=\ncategory_ordering=\nimage_ordering=\ngallery_metadesc=\ngallery_metakey=\nalt_value=\nenable_user_cp=\nenable_upload_avatar=\nenable_avatar_approve=\nenable_usercat_approve=\nenable_usersubcat_approve=\nuser_subcat_count=\nmax_create_cat_char=\nenable_userimage_approve=\nmax_upload_char=\nupload_maxsize=\nupload_maxres_width=\nupload_maxres_height=\nuser_images_max_size=\nenable_java=\nenable_java_admin=\njava_resize_width=\njava_resize_height=\njava_box_width=\njava_box_height=\ndisplay_rating=\ndisplay_rating_img=\ndisplay_comment=\ndisplay_comment_img=\ncomment_width=\nmax_comment_char=\ndisplay_comment_nopup=\nexternal_comment_system=\nfb_comment_app_id=\nfb_comment_width=\nenable_piclens=\nstart_piclens=\npiclens_image=\nswitch_image=\nswitch_width=\nswitch_height=\nswitch_fixed_size=\nenable_overlib=\nol_bg_color=\nol_fg_color=\nol_tf_color=\nol_cf_color=\noverlib_overlay_opacity=\noverlib_image_rate=\ncreate_watermark=\nwatermark_position_x=\nwatermark_position_y=\ndisplay_icon_vm=\ndisplay_category_statistics=\ndisplay_main_cat_stat=\ndisplay_lastadded_cat_stat=\ncount_lastadded_cat_stat=\ndisplay_mostviewed_cat_stat=\ncount_mostviewed_cat_stat=\ndisplay_camera_info=\nexif_information=\ndisplay_categories_geotagging=\ncategories_lng=\ncategories_lat=\ncategories_zoom=\ncategories_map_width=\ncategories_map_height=\ndisplay_icon_geotagging=\ndisplay_category_geotagging=\ncategory_map_width=\ncategory_map_height=\npagination_thumbnail_creation=\nclean_thumbnails=\nenable_thumb_creation=\ncrop_thumbnail=\njpeg_quality=\nenable_picasa_loading=\npicasa_load_pagination=\nicon_format=\nlarge_image_width=\nlarge_image_height=\nmedium_image_width=\nmedium_image_height=\nsmall_image_width=\nsmall_image_height=\nfront_modal_box_width=\nfront_modal_box_height=\nadmin_modal_box_width=\nadmin_modal_box_height=\nfolder_permissions=\njfile_thumbs=\npage_title=\nshow_page_title=1\npageclass_sfx=_photo_gallery\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(90, 'mainmenu', 'Training Institution', 'training-institution', 'index.php?option=com_content&view=article&id=99', 'component', -2, 0, 20, 1, 18, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(91, 'mainmenu', 'Workshop', 'workshop', 'index.php?option=com_content&view=article&id=100', 'component', -2, 0, 20, 1, 20, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(92, 'mainmenu', 'Others', 'others', 'index.php?option=com_content&view=article&id=101', 'component', -2, 0, 20, 1, 21, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(94, 'mainmenu', 'Contact Us', 'contact-us', 'index.php?option=com_content&view=article&id=134', 'component', -2, 0, 20, 0, 32, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(95, 'mainmenu', 'City Service', 'city-service', 'index.php?option=com_content&view=article&id=107', 'component', -2, 0, 20, 1, 33, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(96, 'mainmenu', 'School Service', 'school-service', 'index.php?option=com_content&view=article&id=107', 'component', -2, 0, 20, 2, 55, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(97, 'mainmenu', 'School Service', 'school-service', 'index.php?option=com_content&view=article&id=122', 'component', -2, 0, 20, 1, 35, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(98, 'mainmenu', 'Inter District Service', 'inter-district-service', 'index.php?option=com_content&view=article&id=121', 'component', -2, 0, 20, 1, 43, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(99, 'mainmenu', 'Long Route Service', 'long-route-service', 'index.php?option=com_content&view=article&id=123', 'component', -2, 0, 20, 1, 50, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(100, 'mainmenu', 'Coach Service', 'coach-service', 'index.php?option=com_content&view=article&id=124', 'component', -2, 0, 20, 1, 34, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(101, 'mainmenu', 'Staff Bus Service', 'staff-bus-service', 'index.php?option=com_content&view=article&id=140', 'component', -2, 0, 20, 1, 31, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(102, 'mainmenu', 'International Bus Service', 'international-bus-service', 'index.php?option=com_content&view=article&id=126', 'component', -2, 0, 20, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(103, 'mainmenu', 'Special Service', 'special-service', 'index.php?option=com_content&view=article&id=127', 'component', -2, 0, 20, 1, 48, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(104, 'mainmenu', 'Service for Government', 'service-for-government', 'index.php?option=com_content&view=article&id=108', 'component', -2, 0, 20, 1, 47, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(106, 'mainmenu', 'Newsletter', 'newsletter', 'index.php?option=com_content&view=article&id=115', 'component', -2, 0, 20, 0, 46, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(107, 'mainmenu', 'Contact Us', 'contact-us', 'index.php?option=com_aicontactsafe&view=message&layout=message&pf=1', 'component', -2, 0, 83, 1, 53, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'redirect_on_success=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(108, 'mainmenu', 'Photo Gallery', 'photo-gallery', 'index.php?option=com_phocagallery&view=categories', 'component', -2, 0, 71, 1, 44, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'image=-1\nimage_align=right\nshow_pagination_categories=0\nshow_pagination_category=1\nshow_pagination_limit_categories=0\nshow_pagination_limit_category=0\ndisplay_cat_name_title=1\ncategories_columns=\nequal_percentage_width=\ndisplay_image_categories=\ncategories_box_width=\nimage_categories_size=\ncategories_image_ordering=\ncategories_display_avatar=\ndisplay_subcategories=\ndisplay_empty_categories=\nhide_categories=\nshow_categories=\ndisplay_access_category=\ndefault_pagination_categories=\npagination_categories=\nfont_color=\nbackground_color=\nbackground_color_hover=\nimage_background_color=\nimage_background_shadow=\nborder_color=\nborder_color_hover=\nmargin_box=\npadding_box=\ndisplay_new=\ndisplay_hot=\ndisplay_name=\ndisplay_icon_detail=\ndisplay_icon_download=\ndisplay_icon_folder=\nfont_size_name=\nchar_length_name=\ncategory_box_space=\ndisplay_categories_sub=\ndisplay_subcat_page=\ndisplay_category_icon_image=\ncategory_image_ordering=\ndisplay_back_button=\ndisplay_categories_back_button=\ndefault_pagination_category=\npagination_category=\ndisplay_img_desc_box=\nfont_size_img_desc=\nimg_desc_box_height=\nchar_length_img_desc=\ndisplay_categories_cv=\ndisplay_subcat_page_cv=\ndisplay_category_icon_image_cv=\ncategory_image_ordering_cv=\ndisplay_back_button_cv=\ndisplay_categories_back_button_cv=\ncategories_columns_cv=\ndisplay_image_categories_cv=\nimage_categories_size_cv=\ndetail_window=\ndetail_window_background_color=\nmodal_box_overlay_color=\nmodal_box_overlay_opacity=\nmodal_box_border_color=\nmodal_box_border_width=\nsb_slideshow_delay=\nsb_lang=\nhighslide_class=\nhighslide_opacity=\nhighslide_outline_type=\nhighslide_fullimg=\nhighslide_close_button=\nhighslide_slideshow=\njak_slideshow_delay=\njak_orientation=\njak_description=\njak_description_height=\ndisplay_description_detail=\ndisplay_title_description=\nfont_size_desc=\nfont_color_desc=\ndescription_detail_height=\ndescription_lightbox_font_size=\ndescription_lightbox_font_color=\ndescription_lightbox_bg_color=\nslideshow_delay=\nslideshow_pause=\nslideshow_random=\ndetail_buttons=\nphocagallery_width=\nphocagallery_center=\ncategory_ordering=\nimage_ordering=\ngallery_metadesc=\ngallery_metakey=\nalt_value=\nenable_user_cp=\nenable_upload_avatar=\nenable_avatar_approve=\nenable_usercat_approve=\nenable_usersubcat_approve=\nuser_subcat_count=\nmax_create_cat_char=\nenable_userimage_approve=\nmax_upload_char=\nupload_maxsize=\nupload_maxres_width=\nupload_maxres_height=\nuser_images_max_size=\nenable_java=\nenable_java_admin=\njava_resize_width=\njava_resize_height=\njava_box_width=\njava_box_height=\ndisplay_rating=\ndisplay_rating_img=\ndisplay_comment=\ndisplay_comment_img=\ncomment_width=\nmax_comment_char=\ndisplay_comment_nopup=\nexternal_comment_system=\nfb_comment_app_id=\nfb_comment_width=\nenable_piclens=\nstart_piclens=\npiclens_image=\nswitch_image=\nswitch_width=\nswitch_height=\nswitch_fixed_size=\nenable_overlib=\nol_bg_color=\nol_fg_color=\nol_tf_color=\nol_cf_color=\noverlib_overlay_opacity=\noverlib_image_rate=\ncreate_watermark=\nwatermark_position_x=\nwatermark_position_y=\ndisplay_icon_vm=\ndisplay_category_statistics=\ndisplay_main_cat_stat=\ndisplay_lastadded_cat_stat=\ncount_lastadded_cat_stat=\ndisplay_mostviewed_cat_stat=\ncount_mostviewed_cat_stat=\ndisplay_camera_info=\nexif_information=\ndisplay_categories_geotagging=\ncategories_lng=\ncategories_lat=\ncategories_zoom=\ncategories_map_width=\ncategories_map_height=\ndisplay_icon_geotagging=\ndisplay_category_geotagging=\ncategory_map_width=\ncategory_map_height=\npagination_thumbnail_creation=\nclean_thumbnails=\nenable_thumb_creation=\ncrop_thumbnail=\njpeg_quality=\nenable_picasa_loading=\npicasa_load_pagination=\nicon_format=\nlarge_image_width=\nlarge_image_height=\nmedium_image_width=\nmedium_image_height=\nsmall_image_width=\nsmall_image_height=\nfront_modal_box_width=\nfront_modal_box_height=\nadmin_modal_box_width=\nadmin_modal_box_height=\nfolder_permissions=\njfile_thumbs=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(109, 'mainmenu', 'Webmail', 'webmail', 'index.php?option=com_swmenufree', 'component', -2, 0, 41, 0, 52, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(110, 'mainmenu', 'Webmail', 'webmail', '', 'url', -2, 0, 0, 1, 51, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(111, 'mainmenu', 'Webmail', 'webmail', 'http://www.brtc.gov.bd/webmail', 'url', -2, 0, 0, 1, 42, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'menu_image=-1\n\n', 0, 0, 0),
(112, 'mainmenu', 'Forms', 'forms', 'index.php?option=com_content&view=article&id=137', 'component', -2, 0, 20, 1, 41, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(113, 'mainmenu', 'Manpower', 'manpower', 'index.php?option=com_content&view=article&id=141', 'component', -2, 0, 20, 1, 39, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(114, 'mainmenu', 'Font Problem', 'font-problem', 'index.php?option=com_content&view=article&id=143', 'component', -2, 0, 20, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(115, 'mainmenu', 'Menu', 'jomsocial', 'index.php?option=com_content&view=article&id=144', 'component', 1, 0, 20, 0, 64, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(116, 'mainmenu', 'Catering', 'catering', 'index.php?option=com_content&view=article&id=147', 'component', 1, 0, 20, 0, 65, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(117, 'mainmenu', 'Contact Us', 'contact-us', 'index.php?option=com_content&view=article&id=145', 'component', 1, 0, 20, 0, 68, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(118, 'mainmenu', 'Hot Search', 'hot-search', 'index.php?option=com_search&view=search', 'component', -2, 0, 15, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'search_areas=1\nshow_date=\nenabled=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(120, 'mainmenu', 'Home', 'home', 'index.php?option=com_content&view=article&id=148', 'component', 1, 0, 20, 0, 59, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1),
(121, 'mainmenu', 'About Us', 'about-us', 'index.php?option=com_content&view=article&id=146', 'component', 1, 0, 20, 0, 63, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(122, 'mainmenu', 'Coupon', 'coupon', 'index.php?option=com_content&view=article&id=149', 'component', 1, 0, 20, 0, 66, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(123, 'mainmenu', 'Comments', 'comments', 'index.php?option=com_yvcomment&view=listofcomments', 'component', 1, 0, 110, 0, 67, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_comments_on_comment=1\norderby_pri=rdate\narticlesectionidsfilter=\narticlecategoryidsfilter=\narticleidsfilter=\narticlesectionids_excludefilter=0\nresult_days=all\nshow_pagination=1\ncomment_type_id=2\ntestparm=\ndescription_text=This is test param of yvComment... all real parameters are in plugin :-)\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0),
(124, 'mainmenu', 'Chicken Leg Quarter', 'chicken-leg-quarter', 'index.php?option=com_content&view=article&id=151', 'component', 0, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu_types`
--

CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `jos_menu_types`
--

INSERT INTO `jos_menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 'usermenu', 'User Menu', 'A Menu for logged in Users'),
(3, 'topmenu', 'Top Menu', 'Top level navigation'),
(4, 'footerrightmenu', 'Footer Right Menu', 'Footer Right Menu'),
(5, 'footerleftmenu', 'Footer Left Menu', 'Footer Left Menu'),
(6, 'hideen-menu', 'Hidden Menu', 'Hidden Menu'),
(7, 'rssmenu', 'RSS Menu', 'RSS Menu');

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages`
--

CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages_cfg`
--

CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules`
--

CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=93 ;

--
-- Dumping data for table `jos_modules`
--

INSERT INTO `jos_modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Top Menu', '', 0, 'topMenu', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=topmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Logged in Users', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(17, 'User Menu', '', 0, 'right', 0, '0000-00-00 00:00:00', 0, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 1, 0, ''),
(18, 'Login Form', '', 0, 'homeLogin', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 0, 'cache=0\nmoduleclass_sfx=\npretext=\nposttext=\nlogin=\nlogout=\ngreeting=1\nname=1\nusesecure=0\n\n', 1, 0, ''),
(25, 'Welcome to Hotzonne', '', 0, 'welcome', 0, '0000-00-00 00:00:00', 1, 'mod_newsflash', 0, 0, 0, 'catid=62\nlayout=vert\nimage=1\nlink_titles=\nshowLastSeparator=0\nreadmore=1\nitem_title=0\nitems=1\nmoduleclass_sfx=\ncache=0\ncache_time=900\n\n', 0, 0, ''),
(27, 'Search', '', 0, 'search', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, 'moduleclass_sfx=\nwidth=50\ntext=search\nbutton=1\nbutton_pos=right\nimagebutton=1\nbutton_text=\nset_itemid=\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(30, 'About Us', '', 0, 'innerBanner', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=2\ncatid=36\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 1, 0, ''),
(31, 'Footer Right Menu', '', 0, 'footerRight', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=footerrightmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_footerMenu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(33, 'Footer', '', 2, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, ''),
(35, 'Breadcrumbs', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Home\nshowComponent=1\nseparator=\n\n', 1, 0, ''),
(36, 'Syndication', '', 0, 'syndicate', 0, '0000-00-00 00:00:00', 1, 'mod_syndicate', 0, 0, 0, 'cache=0\ntext=Feed Entries\nformat=rss\nmoduleclass_sfx=\n\n', 1, 0, ''),
(39, 'Footer Left Menu', '', 0, 'footerLeft', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=footerleftmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_footerMenu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(40, 'Left menu', '', 0, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=2\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=_menu\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=1\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, ''),
(41, 'Welcome to Joomla!', '<div style="padding: 5px">  <p>   Congratulations on choosing Joomla! as your content management system. To   help you get started, check out these excellent resources for securing your   server and pointers to documentation and other helpful resources. </p> <p>   <strong>Security</strong><br /> </p> <p>   On the Internet, security is always a concern. For that reason, you are   encouraged to subscribe to the   <a href="http://feedburner.google.com/fb/a/mailverify?uri=JoomlaSecurityNews" target="_blank">Joomla!   Security Announcements</a> for the latest information on new Joomla! releases,   emailed to you automatically. </p> <p>   If this is one of your first Web sites, security considerations may   seem complicated and intimidating. There are three simple steps that go a long   way towards securing a Web site: (1) regular backups; (2) prompt updates to the   <a href="http://www.joomla.org/download.html" target="_blank">latest Joomla! release;</a> and (3) a <a href="http://docs.joomla.org/Security_Checklist_2_-_Hosting_and_Server_Setup" target="_blank" title="good Web host">good Web host</a>. There are many other important security considerations that you can learn about by reading the <a href="http://docs.joomla.org/Category:Security_Checklist" target="_blank" title="Joomla! Security Checklist">Joomla! Security Checklist</a>. </p> <p>If you believe your Web site was attacked, or you think you have discovered a security issue in Joomla!, please do not post it in the Joomla! forums. Publishing this information could put other Web sites at risk. Instead, report possible security vulnerabilities to the <a href="http://developer.joomla.org/security/contact-the-team.html" target="_blank" title="Joomla! Security Task Force">Joomla! Security Task Force</a>.</p><p><strong>Learning Joomla!</strong> </p> <p>   A good place to start learning Joomla! is the   "<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginner''s   Guide to Joomla!.</a>" There, you will find a Quick Start to Joomla!   <a href="http://help.joomla.org/ghop/feb2008/task048/joomla_15_quickstart.pdf" target="_blank">guide</a>   and <a href="http://help.joomla.org/ghop/feb2008/task167/index.html" target="_blank">video</a>,   amongst many other tutorials. The   <a href="http://community.joomla.org/magazine/view-all-issues.html" target="_blank">Joomla!   Community Magazine</a> also has   <a href="http://community.joomla.org/magazine/article/522-introductory-learning-joomla-using-sample-data.html" target="_blank">articles   for new learners</a> and experienced users, alike. A great place to look for   answers is the   <a href="http://docs.joomla.org/Category:FAQ" target="_blank">Frequently Asked   Questions (FAQ)</a>. If you are stuck on a particular screen in the   Administrator (which is where you are now), try clicking the Help toolbar   button to get assistance specific to that page. </p> <p>   If you still have questions, please feel free to use the   <a href="http://forum.joomla.org/" target="_blank">Joomla! Forums.</a> The forums   are an incredibly valuable resource for all levels of Joomla! users. Before   you post a question, though, use the forum search (located at the top of each   forum page) to see if the question has been asked and answered. </p> <p>   <strong>Getting Involved</strong> </p> <p>   <a name="twjs" title="twjs"></a> If you want to help make Joomla! better, consider getting   involved. There are   <a href="http://www.joomla.org/about-joomla/contribute-to-joomla.html" target="_blank">many ways   you can make a positive difference.</a> Have fun using Joomla!.</p></div>', 0, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(42, 'Joomla! Security Newsfeed', '', 6, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_feed', 0, 0, 1, 'cache=1\ncache_time=15\nmoduleclass_sfx=\nrssurl=http://feeds.joomla.org/JoomlaSecurityNews\nrssrtl=0\nrsstitle=1\nrssdesc=0\nrssimage=1\nrssitems=1\nrssitemdesc=1\nword_count=0\n\n', 0, 1, ''),
(45, 'swMenuFree', '', 1, 'mainMenu', 0, '0000-00-00 00:00:00', 1, 'mod_swmenufree', 0, 0, 0, 'menutype=mainmenu\nmenustyle=transmenu\nmoduleID=45\nlevels=0\nparentid=0\nparent_level=0\nhybrid=0\nactive_menu=1\ntables=0\ncssload=1\nsub_indicator=2\nselectbox_hack=0\nshow_shadow=0\npadding_hack=0\noverlay_hack=1\nauto_position=0\ncache=0\ncache_time=1 hour\nmoduleclass_sfx=\neditor_hack=0\ntemplate=All\nlanguage=\ncomponent=All\n', 0, 0, ''),
(47, 'Quick Links', '', 5, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_allweblinks', 0, 0, 1, 'Lcatids=\nLexclude=0\nLCorder=a.catid\nLshowheader=0\nLshownumlnk=0\nLshowcdes=0\nLdropdown=0\nLcaticons=\nLcaticonh=-1\nLorder=date DESC\nLicon=-1\nLlengthoftitle=35\nLdotaddlenght=32\nLtitlepopuptxt=\nLshowhits=0\nLshownew=0\nLdaysnew=3\nLtxtnew=*\nLshowldes=0\nLpopuplinks=1\nmoduleclass_sfx=_weblink\n\n', 0, 0, ''),
(53, 'Mission', '', 8, 'innerBanner', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=2\ncatid=36\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 0, 0, ''),
(55, 'Upcoming Events', '', 0, 'events', 0, '0000-00-00 00:00:00', 1, 'mod_eventlist_teaser', 0, 0, 1, 'type=3\nlayout=1\ncolor=1\ncount=3\ncuttitle=35\ndescriptionlength=150\nbr=0\nainfo=0\nlinkfb=1\nlinktw=1\nlinkdi=1\ncatid=\nvenid=\nstateloc=\nuse_modal=0\ncache=1\ncache_time=900\n\n', 0, 0, ''),
(56, 'Components', '', 2, 'innerBanner', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=2\ncatid=46\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 0, 0, ''),
(57, 'Activities', '', 3, 'innerBanner', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=2\ncatid=47\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 0, 0, ''),
(58, 'News and Media', '', 4, 'innerBanner', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=2\ncatid=48\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 0, 0, ''),
(59, 'Success Stories', '', 5, 'innerBanner', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=2\ncatid=49\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 0, 0, ''),
(69, 'FAQ', '', 6, 'innerBanner', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=2\ncatid=51\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 0, 0, ''),
(70, 'Events', '', 7, 'innerBanner', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=2\ncatid=52\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=15\n\n', 0, 0, ''),
(72, 'aiContactSafe module', '', 0, 'innerBanner', 0, '0000-00-00 00:00:00', 1, 'mod_aicontactsafe', 0, 0, 0, 'moduleclass_sfx=\npf=1\nuse_css=1\nfd_values=\n\n', 0, 0, ''),
(75, 'Information', '', 0, 'information', 0, '0000-00-00 00:00:00', 1, 'mod_aidanews', 0, 0, 0, 'cache=0\nURLtype=0\nitem_id=\nsecid=\ncatid=59\nexcatid=\nshow_front=0\ncount=3\nrecent=\nstartfrom=\nlimitwrittenby=0\norder=0\nrelated=0\nrelatednoid=\ndisplay_top_1=[empty]\ndisplay_top_2=[empty]\ndisplay_top_3=[empty]\ndisplay_top_4=[empty]\ndisplay_bottom=[empty]\ngrid_display=0\ncolmax=1\ncolwidth=width:170px;\ngridattr=border: 1px solid #C3C3C3;\ngrid_valign=1\nclearboth=0\nshow_more=1\nmore_what=\nmore_link=index.php?option=com_content&view=category&layout=blog&id=59&Itemid=58\nmoreblank=0\nmoduleclass_sfx=_info\nmaincss=\ntitle_css=width: 200px; margin:15px 0px 5px 8px;padding-bottom:5px;\nlink_css=\ndate_css=font-size: 100%;\nauthor_css=font-size: 100%;\ncategory_css=font-size:100%;\nimage_css=padding: 2px; margin: 3px;\nbody_intro_css=border-bottom: 1px dotted; width: 200px; margin:5px 0px 5px 8px;padding-bottom:5px;\nreadmore_css= padding: 0; margin: 0;margin-top:10px;\nbody_bottom_css=padding: 0; margin: 0;\nbottom_more_css=\ndisp_catblock=0\ncatblock_css=\ncatcat=59\ndisp_cattit=0\ncattitle_css=font-weight: bold; font-size: 105%;\ndisp_catimg=1\ncatimagewidth=auto\ncatimageheight=60\ncatimage_css=padding: 2px; margin: 3px; border: 1px solid #C3C3C3;\ndisp_catdesc=0\ncatdesc_css=padding-top: 5px;\ndisp_catline=0\nlinktitle=0\nlimittitle=107\nartblank=0\ntitle_ending=...\nshow_intro=1\nnumber=80\nshorten=1\nintro_ending=...\nfulltext=0\nallow=\nstripplugs=0\nstartfromp=0\nwhat_date=0\ndateoutput=\nwhat_username=0\nprofilesystem=0\ncontinue_reading=1\nreadmore_introtext=0\nshow_hits_image=1\nshow_rating_image=1\nshow_rating_average=1\nroundrating=0\ncommentstable=0\ncustomtable=\ncustomartcol=\nshow_comment_image=1\nshow_line=0\nline_color=#c3c3c3\nshow_image=0\nyouthumb=0\ngallery=0\nbasfold=images/stories\nuse_thumbs=0\nimageWidth=auto\nimageHeight=60\nimagefloat=1\nimage_default=images/stories/articles.jpg\nhide_default_image=0\nuse_tooltips=0\nquality=100\nthumbsuffix=\njs_avatar=1\nFLEXIcustom=\nlimitlang=\nuselangfile=0\nnothingtoshow=\ndate_prefix=\nauth_prefix=\ncat_prefix=\nreadmore=Read More\naddcomm=Add Comments\nfbshare=Share\nhit_prefix=\nhit_title_S=Hit\nhit_title_P=Hits\nrating_prefix=\nrating_title_S=Rating\nrating_title_P=Ratings\ncomment_prefix=\ncomment_title_S=Comment\ncomment_title_P=Comments\n\n', 0, 0, ''),
(76, 'Phoca Gallery Image Module', '', 0, 'image_gallery', 0, '0000-00-00 00:00:00', 0, 'mod_phocagallery_image', 0, 0, 0, 'category_id=1\nimage_ordering=9\nlimit_start=0\nlimit_count=1\nmodule_link=0\nmodule_type=0\nfont_color=#000\nbackground_color=\nbackground_color_hover=\nimage_background_color=\nborder_color=\nborder_color_hover=#b36b00\nimage_background_shadow=shadow1\ndisplay_name=1\ndisplay_icon_detail=1\ndisplay_icon_download=0\nfont_size_name=12\nchar_length_name=500\ncategory_box_space=0\npadding_mosaic=3\ncustom_image_width=\ncustom_image_height=\nminimum_box_width=\nphocagallery_module_width=\nmoduleclass_sfx=\ndetail_window=0\nmodal_box_overlay_color=#000000\nmodal_box_overlay_opacity=0.3\nmodal_box_border_color=#6b6b6b\nmodal_box_border_width=2\nsb_slideshow_delay=5\nhighslide_class=rounded-white\nhighslide_opacity=0\nhighslide_outline_type=rounded-white\nhighslide_fullimg=1\nhighslide_close_button=0\nhighslide_slideshow=1\nhighslide_description=3\njak_slideshow_delay=5\njak_orientation=none\njak_description=1\njak_description_height=10\ndisplay_description_detail=1\ndescription_detail_height=16\ndetail_buttons=1\n\n', 0, 0, ''),
(82, 'Slider Gallery', '', 9, 'sliderGellery', 0, '0000-00-00 00:00:00', 0, 'mod_slidergallery', 0, 0, 1, 'moduleclass_sfx=\ncatid=62\nlayout=default\npath=modules/mod_slidergallery/gallery\nsort=asc\nheight=290\nwidth=420\nfilm_strip_height=102\nimageGroupId=Office-Furniture\nbgcolor=#EFEFEF\nborder_thickness=1\nborder_color=#CCCCCC\nshow_caption=1\ncredits=1\ncredits_color=#CCCCCC\n\n', 0, 0, ''),
(83, 'Gallery View', '', 0, 'sliderGellery', 0, '0000-00-00 00:00:00', 1, 'mod_galleryview', 0, 0, 0, 'moduleclass_sfx=\nloadjq=1\nload_scripts=1\nuniuqe_id=\npath=modules/mod_galleryview/gallery\nheight=228\nwidth=420\ntheme=light\nshow_film=1\nthumb_gen=0\ntransition_interval=6000\nthumb_width=50\ntrans_speed=400\nbgcolor=#000000\nborder_color=#000000\n\n', 0, 0, ''),
(88, 'DJ Image Slider', '', 0, 'mainBanner', 0, '0000-00-00 00:00:00', 0, 'mod_djimageslider', 0, 0, 0, 'slider_source=1\nslider_type=0\nmootools=0\nlink_image=1\nimage_folder=images/stories/fruit\nlink=\ncategory=54\nshow_title=0\nshow_desc=0\nshow_readmore=0\nlink_title=0\nlink_desc=0\nlimit_desc=\nimage_width=179\nimage_height=118\nfit_to=1\nvisible_images=3\nspace_between_images=10\nmax_images=20\nsort_by=1\neffect=Linear\nautoplay=1\nshow_buttons=1\nshow_arrows=1\nshow_custom_nav=0\ndesc_width=\ndesc_bottom=0\ndesc_horizontal=0\nleft_arrow=\nright_arrow=\nplay_button=\npause_button=\narrows_top=30\narrows_horizontal=5\neffect_type=0\nduration=\ndelay=\npreload=800\nmoduleclass_sfx=\ncache=0\n\n', 0, 0, ''),
(90, 'Google Map', '', 0, 'gMap', 0, '0000-00-00 00:00:00', 1, 'mod_JGMap', 0, 0, 1, 'width=300\nheight=100\nmapName=map\nmapType=ROADMAP\nsmallmap=1\nstatic=0\nlat=39.28485\nlongitude=-76.75276\nzoom=9\nmarker=on\nmarker_title=\n\n', 0, 0, ''),
(91, 'JComments Most Commented', '', 0, 'mostcomments', 0, '0000-00-00 00:00:00', 1, 'mod_jcomments_most_commented', 0, 0, 1, 'count=5\ninterval=\nshowCommentsCount=1\ncatid=\nuseCSS=1\nlayout=\nmoduleclass_sfx=\ncache_items=0\ncache_time=900\n\n', 0, 0, ''),
(92, 'yvComment', '', 0, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_yvcomment', 0, 0, 1, 'view_name=listofcomments\nlayout_name=layout003\nlayout_name_custom=\nshow_comments_on_comment=1\ncount=5\norderby_pri=rdate\nmoduleclass_sfx=\nmax_characters_list_row=\narticlesectionidsfilter=\narticlecategoryidsfilter=\narticleidsfilter=\narticlesectionids_excludefilter=0\nfilterbycontext=all\nmodule_title_is_dynamic=1\nresult_days=all\ncomment_type_id=\n\n', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules_menu`
--

CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(17, 0),
(18, 1),
(25, 0),
(27, 0),
(30, 27),
(30, 54),
(30, 61),
(30, 67),
(30, 69),
(30, 70),
(31, 0),
(33, 0),
(35, 0),
(36, 86),
(39, 0),
(40, 18),
(40, 27),
(40, 41),
(40, 49),
(40, 54),
(40, 55),
(40, 56),
(40, 57),
(40, 58),
(40, 61),
(40, 63),
(40, 64),
(40, 65),
(40, 66),
(40, 67),
(40, 68),
(40, 69),
(40, 70),
(40, 71),
(40, 72),
(40, 73),
(40, 74),
(40, 75),
(40, 76),
(40, 77),
(40, 78),
(40, 79),
(40, 80),
(40, 81),
(40, 82),
(40, 83),
(40, 85),
(40, 86),
(40, 88),
(40, 90),
(40, 91),
(40, 92),
(40, 93),
(40, 94),
(40, 95),
(40, 97),
(40, 98),
(40, 99),
(40, 100),
(40, 101),
(40, 102),
(40, 103),
(40, 104),
(40, 105),
(40, 106),
(40, 108),
(40, 112),
(40, 113),
(40, 114),
(45, 0),
(47, 1),
(47, 18),
(47, 20),
(47, 24),
(47, 27),
(47, 41),
(47, 49),
(47, 51),
(47, 52),
(47, 53),
(47, 54),
(47, 56),
(47, 57),
(47, 58),
(47, 59),
(47, 60),
(47, 61),
(47, 63),
(47, 64),
(47, 65),
(47, 66),
(47, 67),
(47, 68),
(47, 69),
(47, 71),
(47, 72),
(47, 73),
(47, 74),
(47, 75),
(47, 76),
(47, 77),
(47, 79),
(47, 80),
(47, 81),
(47, 82),
(47, 83),
(47, 85),
(47, 86),
(47, 87),
(47, 88),
(47, 91),
(47, 92),
(47, 93),
(47, 94),
(47, 95),
(47, 97),
(47, 98),
(47, 99),
(47, 100),
(47, 101),
(47, 102),
(47, 103),
(47, 104),
(47, 105),
(47, 106),
(47, 113),
(55, 0),
(56, 56),
(56, 64),
(56, 80),
(56, 81),
(56, 82),
(56, 83),
(56, 84),
(57, 55),
(57, 63),
(57, 76),
(57, 77),
(58, 57),
(58, 65),
(59, 58),
(59, 66),
(69, 28),
(69, 41),
(69, 60),
(70, 75),
(72, 94),
(75, 1),
(75, 53),
(75, 59),
(76, 1),
(76, 53),
(76, 59),
(82, 1),
(82, 53),
(82, 59),
(83, 0),
(88, 61),
(88, 67),
(88, 121),
(90, 117),
(91, 0),
(92, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_newsfeeds`
--

CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_newsfeeds`
--

INSERT INTO `jos_newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES
(4, 1, 'Joomla! Announcements', 'joomla-official-news', 'http://feeds.joomla.org/JoomlaAnnouncements', '', 0, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(4, 2, 'Joomla! Core Team Blog', 'joomla-core-team-blog', 'http://feeds.joomla.org/JoomlaCommunityCoreTeamBlog', '', 0, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(4, 3, 'Joomla! Community Magazine', 'joomla-community-magazine', 'http://feeds.joomla.org/JoomlaMagazine', '', 0, 20, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(4, 4, 'Joomla! Developer News', 'joomla-developer-news', 'http://feeds.joomla.org/JoomlaDeveloper', '', 0, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(4, 5, 'Joomla! Security News', 'joomla-security-news', 'http://feeds.joomla.org/JoomlaSecurityNews', '', 0, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(5, 6, 'Free Software Foundation Blogs', 'free-software-foundation-blogs', 'http://www.fsf.org/blogs/RSS', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(5, 7, 'Free Software Foundation', 'free-software-foundation', 'http://www.fsf.org/news/RSS', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(5, 8, 'Software Freedom Law Center Blog', 'software-freedom-law-center-blog', 'http://www.softwarefreedom.org/feeds/blog/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(5, 9, 'Software Freedom Law Center News', 'software-freedom-law-center', 'http://www.softwarefreedom.org/feeds/news/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(5, 10, 'Open Source Initiative Blog', 'open-source-initiative-blog', 'http://www.opensource.org/blog/feed', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(6, 11, 'PHP News and Announcements', 'php-news-and-announcements', 'http://www.php.net/feed.atom', NULL, 0, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(6, 12, 'Planet MySQL', 'planet-mysql', 'http://www.planetmysql.org/rss20.xml', NULL, 0, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(6, 13, 'Linux Foundation Announcements', 'linux-foundation-announcements', 'http://www.linuxfoundation.org/press/rss20.xml', NULL, 0, 5, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(6, 14, 'Mootools Blog', 'mootools-blog', 'http://feeds.feedburner.com/mootools-blog', NULL, 0, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_ninjarsssyndicator`
--

CREATE TABLE IF NOT EXISTS `jos_ninjarsssyndicator` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `msg` varchar(100) DEFAULT NULL,
  `defaultType` varchar(4) DEFAULT NULL,
  `count` varchar(4) DEFAULT NULL,
  `orderby` varchar(10) DEFAULT NULL,
  `numWords` tinyint(4) unsigned DEFAULT NULL,
  `cache` smallint(9) DEFAULT NULL,
  `imgUrl` varchar(100) DEFAULT NULL,
  `renderAuthorFormat` varchar(10) DEFAULT 'NAME',
  `renderHTML` tinyint(1) DEFAULT '1',
  `FPItemsOnly` tinyint(1) DEFAULT '0',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_ninjarsssyndicator`
--

INSERT INTO `jos_ninjarsssyndicator` (`id`, `msg`, `defaultType`, `count`, `orderby`, `numWords`, `cache`, `imgUrl`, `renderAuthorFormat`, `renderHTML`, `FPItemsOnly`, `description`) VALUES
(1, 'Get the latest news direct to your desktop', '2.0', '10', 'rdate', 0, 3600, '', '0', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_ninjarsssyndicator_feeds`
--

CREATE TABLE IF NOT EXISTS `jos_ninjarsssyndicator_feeds` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `feed_name` varchar(150) DEFAULT NULL,
  `feed_description` text,
  `feed_type` varchar(10) DEFAULT NULL,
  `feed_cache` smallint(9) DEFAULT NULL,
  `feed_imgUrl` varchar(100) DEFAULT NULL,
  `feed_button` varchar(100) DEFAULT NULL,
  `feed_renderAuthorFormat` varchar(10) DEFAULT '0',
  `feed_renderHTML` tinyint(1) DEFAULT '0',
  `feed_renderImages` int(1) NOT NULL,
  `msg_count` varchar(4) DEFAULT NULL,
  `msg_orderby` varchar(10) DEFAULT NULL,
  `msg_numWords` tinyint(4) unsigned DEFAULT NULL,
  `msg_FPItemsOnly` tinyint(1) DEFAULT '1',
  `msg_sectlist` varchar(50) DEFAULT NULL,
  `msg_excatlist` varchar(100) DEFAULT NULL,
  `msg_includeCats` tinyint(1) DEFAULT NULL,
  `msg_fulltext` tinyint(1) DEFAULT NULL,
  `msg_exitems` varchar(250) DEFAULT NULL,
  `msg_includetags` varchar(250) DEFAULT NULL,
  `msg_contentPlugins` tinyint(1) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_ninjarsssyndicator_feeds`
--

INSERT INTO `jos_ninjarsssyndicator_feeds` (`id`, `feed_name`, `feed_description`, `feed_type`, `feed_cache`, `feed_imgUrl`, `feed_button`, `feed_renderAuthorFormat`, `feed_renderHTML`, `feed_renderImages`, `msg_count`, `msg_orderby`, `msg_numWords`, `msg_FPItemsOnly`, `msg_sectlist`, `msg_excatlist`, `msg_includeCats`, `msg_fulltext`, `msg_exitems`, `msg_includetags`, `msg_contentPlugins`, `published`) VALUES
(1, 'Progati News Feed', '', '2.0', 3600, '', 'rss20.gif', '0', 1, 1, '10', 'rdate', 100, 0, '', '', 0, 1, '', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_plugins`
--

CREATE TABLE IF NOT EXISTS `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=62 ;

--
-- Dumping data for table `jos_plugins`
--

INSERT INTO `jos_plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 6, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Log', 'log', 'system', 0, 8, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Remember Me', 'remember', 'system', 0, 9, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 10, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(34, 'System - Mootools Upgrade', 'mtupgrade', 'system', 0, 11, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(35, 'AcyMailing : trigger Joomla Content plugins', 'contentplugin', 'acymailing', 0, 15, 0, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-contentplugin\n'),
(36, 'AcyMailing Manage text', 'managetext', 'acymailing', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-managetext\nremovetext={reg},{/reg},{pub},{/pub}\n'),
(37, 'AcyMailing Tag : Website links', 'online', 'acymailing', 0, 6, 0, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-online\nviewtemplate=standard\nforwardtemplate=standard\naddkey=yes\nadduserkey=yes\n'),
(38, 'AcyMailing : Statistics Plugin', 'stats', 'acymailing', 0, 50, 0, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-stats\npicture=components/com_acymailing/images/statpicture.png\nwidth=50\nheight=1\n'),
(39, 'AcyMailing Tag : CB User information', 'tagcbuser', 'acymailing', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-tagcbuser\n'),
(40, 'AcyMailing Tag : content insertion', 'tagcontent', 'acymailing', 0, 11, 0, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-tagcontent\ndisplayart=all\nremovejs=yes\ncontentaccess=registered\nfrontendaccess=all\nmaxheight=150\nmaxwidth=150\n'),
(41, 'AcyMailing Tag : Subscriber information', 'tagsubscriber', 'acymailing', 0, 2, 0, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-tagsubscriber\n'),
(42, 'AcyMailing Tag : Manage the Subscription', 'tagsubscription', 'acymailing', 0, 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-tagsubscription\n'),
(43, 'AcyMailing Tag : Date / Time', 'tagtime', 'acymailing', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-tagtime\n'),
(44, 'AcyMailing Tag : Joomla User Informations', 'taguser', 'acymailing', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-taguser\n'),
(45, 'AcyMailing Template Class Replacer', 'template', 'acymailing', 0, 25, 0, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-template\n'),
(46, 'AcyMailing : (auto)Subscribe during Joomla registration', 'regacymailing', 'system', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', 'help=plugin-regacymailing\nlists=None\nlistschecked=All\nfieldafter=password\n'),
(47, 'Xmlrpc - Lyftenbloggie', 'lyftenbloggie', 'xmlrpc', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(48, 'aiContactSafe - Form', 'aicontactsafeform', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(49, 'Phoca Gallery Search Plugin', 'phocagallery', 'search', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n'),
(50, 'JomBackup system plugin', 'jombackup.systembot', 'system', 0, 2, 0, 0, 0, 0, '0000-00-00 00:00:00', 'testing=0\ncompress=1\ndeletefile=1\ndrop_tables=1\ncreate_tables=1\nstruct_only=0\nlocks=0\ncomments=1\nrecipient=was.grameensolutions@gmail.com\nsubject=Progati Daily DB Backup\nbody=Backup completed successfully at\nbackuppath=\ntables_to_ignore=\n\n'),
(51, 'Ultimate PNG Fix [for IE v6 or lower] (by JoomlaWorks)', 'jw_ultimatePNGFix', 'system', 0, 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 'pngFixScript=unitpngfix\nDD_belatedPNG_CSSClass=.pngfix\n'),
(52, 'System - SuperSleight PNG Fix', 'sspngfix', 'system', 0, 12, 0, 0, 0, 0, '0000-00-00 00:00:00', 'fix_fn=2\n\n'),
(53, 'Azrul System Mambot', 'azrul.system', 'system', 0, -1000, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(58, 'System - Disable Mootools', 'disable_mootools', 'system', 0, 0, 1, 0, 0, 65, '2012-03-29 04:09:34', 'enabled=1\n'),
(55, 'Walls', 'walls', 'community', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'cache=1'),
(56, 'System - Zend Lib', 'zend', 'system', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(57, 'Tabs & Slides (in content items)', 'jwts', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'slides_slidespeed=30\nslides_timer=10\n\n'),
(59, 'load module into article', 'module', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(60, 'yvComment2', 'yvcomment2', 'content', 0, 0, 1, 0, 0, 65, '2013-09-28 14:25:16', 'usecontenttable=1\nusedesignatedsection=1\nsectionid=0\ncategoryid=0\narticlesectionids=\narticlecategoryids=\narticleids=\narticlesectionids_exclude=0\nusecss=style003.css\nmoduleclass_sfx=\nhide_title=0\ncomment_linkable=comment_linkable_title\nauthor_mentioned_by=name\nauthor_linkable=yes\nexecute_content_plugins=1\njoomla_version_warning=1\nallow_comments_on_comment=0\nmax_level_of_comments=2\neditor_type=0\nuse_smiley_form=1\nuse_bbcode_form=1\nallow_html_edit_text=no\nmax_characters_fulltext=\nmin_post_period_user=60\nauto_close_days=\nadd_published=yes_for_registered_users\nnotify_addedit_usernames=\nnotify_addedit_authors=no\ndelete_to_trash=1\nallow_guest_add=0\nguest_username=guest\ncheck_guest_alias=1\nguest_email_required=0\nallow_guest_link=0\nmin_post_period_guest=30\nuse_captcha=1\ndelay_captcha_image=0\nuse_openid=0\ndebug=0\ndebug_sec=0\ncomments_position_article_view=AfterContent\nwhat_to_show_article_view=comment\ncomments_position_frontpage=AfterContent\nwhat_to_show_frontpage=comments_n_link\ncomments_position=AfterContent\nwhat_to_show=comments_n_link\nshow_please_register=0\naddform_position=below\norderby_pri=rdate\nshow_comments_on_comment=1\nshow_pagination=0\nlayout_name=default\nlayout_name_custom=\n\n'),
(61, 'yvComment', 'yvcomment', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'usecontenttable=1\nusedesignatedsection=1\nusecss=style003.css\nauthor_mentioned_by=name\njoomla_version_warning=1\nmax_level_of_comments=2\nuse_smiley_form=1\nuse_bbcode_form=1\nallow_html_edit_text=no\nmin_post_period_user=60\nadd_published=yes_for_registered_users\ndelete_to_trash=1\nguest_username=guest\ncheck_guest_alias=1\nmin_post_period_guest=30\nuse_captcha=1\ncomments_position_article_view=AfterContent\nwhat_to_show_article_view=comment\ncomments_position_frontpage=AfterContent\nwhat_to_show_frontpage=comments_n_link\ncomments_position=AfterContent\nwhat_to_show=comments_n_link\naddform_position=below\norderby_pri=rdate\nshow_comments_on_comment=1\nlayout_name=default\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_polls`
--

CREATE TABLE IF NOT EXISTS `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `jos_polls`
--

INSERT INTO `jos_polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'Joomla! is used for?', 'joomla-is-used-for', 11, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_data`
--

CREATE TABLE IF NOT EXISTS `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `jos_poll_data`
--

INSERT INTO `jos_poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Community Sites', 2),
(2, 14, 'Public Brand Sites', 3),
(3, 14, 'eCommerce', 1),
(4, 14, 'Blogs', 0),
(5, 14, 'Intranets', 0),
(6, 14, 'Photo and Media Sites', 2),
(7, 14, 'All of the Above!', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_date`
--

CREATE TABLE IF NOT EXISTS `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `jos_poll_date`
--

INSERT INTO `jos_poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2006-10-09 13:01:58', 1, 14),
(2, '2006-10-10 15:19:43', 7, 14),
(3, '2006-10-11 11:08:16', 7, 14),
(4, '2006-10-11 15:02:26', 2, 14),
(5, '2006-10-11 15:43:03', 7, 14),
(6, '2006-10-11 15:43:38', 7, 14),
(7, '2006-10-12 00:51:13', 2, 14),
(8, '2007-05-10 19:12:29', 3, 14),
(9, '2007-05-14 14:18:00', 6, 14),
(10, '2007-06-10 15:20:29', 6, 14),
(11, '2007-07-03 12:37:53', 2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_menu`
--

CREATE TABLE IF NOT EXISTS `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_quickfaq_categories`
--

CREATE TABLE IF NOT EXISTS `jos_quickfaq_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `text` mediumtext NOT NULL,
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `image` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jos_quickfaq_categories`
--

INSERT INTO `jos_quickfaq_categories` (`id`, `parent_id`, `title`, `alias`, `text`, `meta_keywords`, `meta_description`, `image`, `published`, `checked_out`, `checked_out_time`, `access`, `ordering`) VALUES
(1, 5, 'General', 'General', '', '', '', '', 1, 0, '0000-00-00 00:00:00', 0, 1),
(2, 5, 'Operational', 'operational', '', '', '', '', 1, 0, '0000-00-00 00:00:00', 0, 2),
(5, 0, 'FAQ', 'FAQ', '', '', '', '', 1, 0, '0000-00-00 00:00:00', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `jos_quickfaq_cats_item_relations`
--

CREATE TABLE IF NOT EXISTS `jos_quickfaq_cats_item_relations` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `ordering` tinyint(11) NOT NULL,
  PRIMARY KEY (`catid`,`itemid`),
  KEY `catid` (`catid`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_quickfaq_cats_item_relations`
--

INSERT INTO `jos_quickfaq_cats_item_relations` (`catid`, `itemid`, `ordering`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_quickfaq_favourites`
--

CREATE TABLE IF NOT EXISTS `jos_quickfaq_favourites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`itemid`,`userid`),
  KEY `id` (`id`),
  KEY `itemid` (`itemid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_quickfaq_files`
--

CREATE TABLE IF NOT EXISTS `jos_quickfaq_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  `altname` varchar(255) NOT NULL,
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `uploaded` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `uploaded_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_quickfaq_files_item_relations`
--

CREATE TABLE IF NOT EXISTS `jos_quickfaq_files_item_relations` (
  `fileid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `ordering` tinyint(11) NOT NULL,
  PRIMARY KEY (`fileid`,`itemid`),
  KEY `fileid` (`fileid`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_quickfaq_items`
--

CREATE TABLE IF NOT EXISTS `jos_quickfaq_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `plus` int(11) DEFAULT '0',
  `minus` int(11) DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `version` int(11) unsigned NOT NULL DEFAULT '0',
  `meta_keywords` text NOT NULL,
  `meta_description` text NOT NULL,
  `metadata` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` text NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `attribs` text NOT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_quickfaq_items`
--

INSERT INTO `jos_quickfaq_items` (`id`, `title`, `alias`, `introtext`, `fulltext`, `plus`, `minus`, `hits`, `version`, `meta_keywords`, `meta_description`, `metadata`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `attribs`, `checked_out`, `checked_out_time`, `state`, `ordering`) VALUES
(1, 'Demo FAQ1', 'Demo FAQ1', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>', '', 0, 0, 1, 3, '', '', 'robots=\nauthor=', '2010-11-25 05:38:57', 62, '', '2010-11-25 06:04:02', 62, 'show_author=\nshow_create_date=\nshow_modify_date=\nshow_vote=0\nshow_hits=1\nshow_tags=1\nshow_favourites=1\nshow_categories=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_state_icon=1\nlanguage=', 0, '0000-00-00 00:00:00', 1, 1),
(2, 'Demo FAQ2', 'Demo FAQ2', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>', '', 0, 0, 0, 1, '', '', 'robots=\nauthor=', '2010-11-25 05:42:49', 62, '', '0000-00-00 00:00:00', 0, 'show_author=\nshow_create_date=\nshow_modify_date=\nshow_vote=0\nshow_hits=0\nshow_tags=0\nshow_favourites=0\nshow_categories=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_state_icon=0\nlanguage=', 0, '0000-00-00 00:00:00', 1, 2),
(3, 'Test FAQ', 'Test FAQ', '<p>Here just an test FAQ 1</p>', '', 0, 0, 0, 4, '', '', 'robots=\nauthor=', '2010-11-25 06:33:49', 65, '', '2010-11-28 05:55:12', 62, 'show_author=\nshow_create_date=\nshow_modify_date=\nshow_vote=0\nshow_hits=1\nshow_tags=1\nshow_favourites=1\nshow_categories=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_state_icon=1\nlanguage=', 0, '0000-00-00 00:00:00', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `jos_quickfaq_tags`
--

CREATE TABLE IF NOT EXISTS `jos_quickfaq_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jos_quickfaq_tags_item_relations`
--

CREATE TABLE IF NOT EXISTS `jos_quickfaq_tags_item_relations` (
  `tid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tid`,`itemid`),
  KEY `tid` (`tid`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_sections`
--

CREATE TABLE IF NOT EXISTS `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `jos_sections`
--

INSERT INTO `jos_sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'News and Media', '', 'news-and-media', 'articles.jpg', 'content', 'right', '', 1, 0, '0000-00-00 00:00:00', 3, 0, 9, ''),
(3, 'FAQs', '', 'faqs', 'key.jpg', 'content', 'left', 'From the list below choose one of our FAQs topics, then select an FAQ to read. If you have a question which is not in this section, please contact us.', 1, 0, '0000-00-00 00:00:00', 5, 0, 23, ''),
(7, 'Components', '', 'components', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 8, 0, 6, ''),
(5, 'About Us', '', 'about-us', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 6, 0, 1, ''),
(6, 'Activities', '', 'activities', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 7, 0, 7, ''),
(8, 'Success Stories', '', 'success-stories', '', 'content', 'left', '', 0, 0, '0000-00-00 00:00:00', 9, 0, 2, ''),
(9, 'Partners', '', 'partners', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 10, 0, 0, ''),
(10, 'Chairman Message', '', 'chairman-message', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 11, 0, 1, ''),
(11, 'Services', '', 'services', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 12, 0, 1, ''),
(12, 'Bus', '', 'bus', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 13, 0, 1, ''),
(13, 'Workshop', '', 'workshop', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 14, 0, 1, ''),
(14, 'Truck', '', 'truck', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 15, 0, 1, ''),
(15, 'Contact Us', '', 'contact-us', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 16, 0, 0, ''),
(16, 'Posts', '', 'posts', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 17, 0, 1, ''),
(17, 'Information', '', 'information', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 18, 0, 1, ''),
(18, 'Welcome', '', 'welcome', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 19, 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_session`
--

CREATE TABLE IF NOT EXISTS `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_session`
--

INSERT INTO `jos_session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('admin', '1381469223', '03e3aef448dd974e4619f51c26ed6eba', 0, 65, 'Super Administrator', 25, 1, '__default|a:8:{s:15:"session.counter";i:5;s:19:"session.timer.start";i:1381469103;s:18:"session.timer.last";i:1381469210;s:17:"session.timer.now";i:1381469223;s:22:"session.client.browser";s:63:"Mozilla/5.0 (Windows NT 6.1; rv:7.0) Gecko/20100101 Firefox/7.0";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:5:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":7:{s:23:"com_modulesfilter_order";s:10:"m.position";s:27:"com_modulesfilter_order_Dir";s:0:"";s:23:"com_modulesfilter_state";s:0:"";s:26:"com_modulesfilter_position";s:1:"0";s:22:"com_modulesfilter_type";s:1:"0";s:26:"com_modulesfilter_assigned";s:1:"0";s:17:"com_modulessearch";s:0:"";}}s:11:"application";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"lang";s:0:"";}}s:10:"com_cpanel";a:1:{s:4:"data";O:8:"stdClass":1:{s:9:"mtupgrade";O:8:"stdClass":1:{s:7:"checked";b:1;}}}s:6:"global";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";i:0;}}}s:11:"com_modules";a:1:{s:4:"data";O:8:"stdClass":1:{s:10:"limitstart";i:0;}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";s:2:"65";s:4:"name";s:8:"Mosaddek";s:8:"username";s:5:"admin";s:5:"email";s:20:"mdmkrahman@yahoo.com";s:8:"password";s:65:"3d339565784a0754b908ee8d40fc1a5b:uNWoflL7GlPyPOtYNzMBs0QQMA04iMxO";s:14:"password_clear";s:0:"";s:8:"usertype";s:19:"Super Administrator";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"0";s:3:"gid";s:2:"25";s:12:"registerDate";s:19:"2010-11-29 06:24:42";s:13:"lastvisitDate";s:19:"2013-10-10 19:07:40";s:10:"activation";s:0:"";s:6:"params";s:56:"admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=6\n\n";s:3:"aid";i:2;s:5:"guest";i:0;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:66:"/home/wwwbanja/public_html/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":5:{s:14:"admin_language";s:0:"";s:8:"language";s:0:"";s:6:"editor";s:0:"";s:8:"helpsite";s:0:"";s:8:"timezone";s:1:"6";}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"81f09a315e3485a756989c1a399017b6";}'),
('', '1381463820', 'a971c2f4bc4628f29df172c574cb8a13', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1381463820;s:18:"session.timer.last";i:1381463820;s:17:"session.timer.now";i:1381463820;s:22:"session.client.browser";s:64:"Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:66:"/home/wwwbanja/public_html/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}'),
('', '1381463807', '3b1dcc638afa16f03d1c2e437a60d751', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1381463807;s:18:"session.timer.last";i:1381463807;s:17:"session.timer.now";i:1381463807;s:22:"session.client.browser";s:64:"Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:66:"/home/wwwbanja/public_html/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}'),
('', '1381463648', 'dcc9c685ba61ff4c9cf80e964049e618', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1381463648;s:18:"session.timer.last";i:1381463648;s:17:"session.timer.now";i:1381463648;s:22:"session.client.browser";s:64:"Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:66:"/home/wwwbanja/public_html/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}'),
('', '1381463652', 'ca3278fd1c4e0acd101a301aa9a5b1aa', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1381463652;s:18:"session.timer.last";i:1381463652;s:17:"session.timer.now";i:1381463652;s:22:"session.client.browser";s:64:"Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:66:"/home/wwwbanja/public_html/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}'),
('', '1381463638', 'ed56dfe21d269e4e0d390a3a6a0da718', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1381463638;s:18:"session.timer.last";i:1381463638;s:17:"session.timer.now";i:1381463638;s:22:"session.client.browser";s:64:"Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:66:"/home/wwwbanja/public_html/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}'),
('', '1381463641', 'e33370838905319a8ffbd2d2d61f1ed1', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1381463641;s:18:"session.timer.last";i:1381463641;s:17:"session.timer.now";i:1381463641;s:22:"session.client.browser";s:64:"Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:66:"/home/wwwbanja/public_html/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}'),
('', '1381463636', '621a111b326d5ecfe1cf78ae1b2c2022', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1381463636;s:18:"session.timer.last";i:1381463636;s:17:"session.timer.now";i:1381463636;s:22:"session.client.browser";s:64:"Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:66:"/home/wwwbanja/public_html/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}'),
('', '1381463623', 'a883d8b41a02a31cd727f7d2502eba3e', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1381463623;s:18:"session.timer.last";i:1381463623;s:17:"session.timer.now";i:1381463623;s:22:"session.client.browser";s:64:"Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:66:"/home/wwwbanja/public_html/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}'),
('', '1381469829', '50a4d639c9055edb8d8f1123674a4474', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1381469829;s:18:"session.timer.last";i:1381469829;s:17:"session.timer.now";i:1381469829;s:22:"session.client.browser";s:117:"Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.11 (KHTML, like Gecko) Chrome/9.0.570.1 Safari/534.11";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:66:"/home/wwwbanja/public_html/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}'),
('', '1381458504', 'c80efe00d06c341121ab2927efe20847', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1381458504;s:18:"session.timer.last";i:1381458504;s:17:"session.timer.now";i:1381458504;s:22:"session.client.browser";s:64:"Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:66:"/home/wwwbanja/public_html/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}'),
('', '1381463018', '95b710ae438872ec0a0feac64fe1a65c', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:1;s:19:"session.timer.start";i:1381463018;s:18:"session.timer.last";i:1381463018;s:17:"session.timer.now";i:1381463018;s:22:"session.client.browser";s:64:"Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:66:"/home/wwwbanja/public_html/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_stats_agents`
--

CREATE TABLE IF NOT EXISTS `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_swmenufree_config`
--

CREATE TABLE IF NOT EXISTS `jos_swmenufree_config` (
  `id` int(11) NOT NULL DEFAULT '0',
  `main_top` smallint(8) DEFAULT '0',
  `main_left` smallint(8) DEFAULT '0',
  `main_height` smallint(8) DEFAULT '20',
  `sub_border_over` varchar(30) DEFAULT '0',
  `main_width` smallint(8) DEFAULT '100',
  `sub_width` smallint(8) DEFAULT '100',
  `main_back` varchar(7) DEFAULT '#4682B4',
  `main_over` varchar(7) DEFAULT '#5AA7E5',
  `sub_back` varchar(7) DEFAULT '#4682B4',
  `sub_over` varchar(7) DEFAULT '#5AA7E5',
  `sub_border` varchar(30) DEFAULT '#FFFFFF',
  `main_font_size` smallint(8) DEFAULT '0',
  `sub_font_size` smallint(8) DEFAULT '0',
  `main_border_over` varchar(30) DEFAULT '0',
  `sub_font_color` varchar(7) DEFAULT '#000000',
  `main_border` varchar(30) DEFAULT '#FFFFFF',
  `main_font_color` varchar(7) DEFAULT '#000000',
  `sub_font_color_over` varchar(7) DEFAULT '#FFFFFF',
  `main_font_color_over` varchar(7) DEFAULT '#FFFFFF',
  `main_align` varchar(8) DEFAULT 'left',
  `sub_align` varchar(8) DEFAULT 'left',
  `sub_height` smallint(7) DEFAULT '20',
  `position` varchar(10) DEFAULT 'absolute',
  `orientation` varchar(20) DEFAULT NULL,
  `font_family` varchar(50) DEFAULT 'Arial',
  `font_weight` varchar(10) DEFAULT 'normal',
  `font_weight_over` varchar(10) DEFAULT 'normal',
  `level2_sub_top` int(11) DEFAULT '0',
  `level2_sub_left` int(11) DEFAULT '0',
  `level1_sub_top` int(11) NOT NULL DEFAULT '0',
  `level1_sub_left` int(11) NOT NULL DEFAULT '0',
  `main_back_image` varchar(100) DEFAULT NULL,
  `main_back_image_over` varchar(100) DEFAULT NULL,
  `sub_back_image` varchar(100) DEFAULT NULL,
  `sub_back_image_over` varchar(100) DEFAULT NULL,
  `specialA` varchar(50) DEFAULT '80',
  `main_padding` varchar(40) DEFAULT '0px 0px 0px 0px',
  `sub_padding` varchar(40) DEFAULT '0px 0px 0px 0px',
  `specialB` varchar(100) DEFAULT '50',
  `sub_font_family` varchar(50) DEFAULT 'Arial',
  `extra` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_swmenufree_config`
--

INSERT INTO `jos_swmenufree_config` (`id`, `main_top`, `main_left`, `main_height`, `sub_border_over`, `main_width`, `sub_width`, `main_back`, `main_over`, `sub_back`, `sub_over`, `sub_border`, `main_font_size`, `sub_font_size`, `main_border_over`, `sub_font_color`, `main_border`, `main_font_color`, `sub_font_color_over`, `main_font_color_over`, `main_align`, `sub_align`, `sub_height`, `position`, `orientation`, `font_family`, `font_weight`, `font_weight_over`, `level2_sub_top`, `level2_sub_left`, `level1_sub_top`, `level1_sub_left`, `main_back_image`, `main_back_image_over`, `sub_back_image`, `sub_back_image_over`, `specialA`, `main_padding`, `sub_padding`, `specialB`, `sub_font_family`, `extra`) VALUES
(1, 0, 0, 0, '0px none #111111', 0, 0, '#78143c', '#78143c', '#c90052', '#78143c', '0px none #111111', 14, 12, '0px none #111111', '#358700', '0px none #002501', '#8BD700', '#f0f0f0', '#ff97cb', 'left', 'left', 0, 'left', 'horizontal/down', 'Verdana, Arial, Helvetica, sans-serif', 'bold', 'bold', 0, 0, 0, 0, 'modules/mod_swmenufree/images', 'modules/mod_swmenufree/images', '', '', '95', '8px 8px 8px 8px ', '8px 8px 3px 8px ', '300', 'Geneva, Arial, Helvetica, sans-serif', '1');

-- --------------------------------------------------------

--
-- Table structure for table `jos_templates_menu`
--

CREATE TABLE IF NOT EXISTS `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_templates_menu`
--

INSERT INTO `jos_templates_menu` (`template`, `menuid`, `client_id`) VALUES
('shaheen_restaurant', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_users`
--

CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

--
-- Dumping data for table `jos_users`
--

INSERT INTO `jos_users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(65, 'Mosaddek', 'admin', 'mdmkrahman@yahoo.com', '3d339565784a0754b908ee8d40fc1a5b:uNWoflL7GlPyPOtYNzMBs0QQMA04iMxO', 'Super Administrator', 0, 0, 25, '2010-11-29 06:24:42', '2013-10-11 05:25:18', '', 'admin_language=\nlanguage=\neditor=\nhelpsite=\ntimezone=6\n\n'),
(69, 'Rajib Rahman', 'srajib', 'rajib1111@gmail.com', 'fb22e7a76a044a1d961bae2192db3f28:VXDnt9JifZ1jYikjGsLWZ4EKkRMtDsuO', 'Super Administrator', 0, 0, 25, '2011-12-09 05:54:19', '2012-03-29 14:44:40', '70a9e52784fe7070369e236858ca475c', 'language=\ntimezone=0\nadmin_language=\neditor=\nhelpsite=\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_weblinks`
--

CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `jos_weblinks`
--

INSERT INTO `jos_weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(27, 35, 0, 'Tender Notice', 'tender-notice', 'http://192.168.10.114/brtc/index.php?option=com_content&view=article&id=114&Itemid=75', '', '2011-02-27 21:58:15', 49, 0, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=\n\n'),
(25, 35, 0, 'Route Information', 'route-information', 'http://192.168.10.114/brtc/index.php?option=com_content&view=article&id=130&Itemid=106', '', '2011-02-27 22:39:20', 25, 0, 0, '0000-00-00 00:00:00', 9, 0, 1, 'target=\n\n'),
(26, 35, 0, 'Depot', 'depot', 'http://192.168.10.114/brtc/index.php?option=com_content&view=article&id=98&Itemid=74', '', '2011-02-27 21:59:56', 14, 0, 0, '0000-00-00 00:00:00', 8, 0, 1, 'target=\n\n'),
(24, 35, 0, 'Citizen Charter', 'citizen-charter', 'http://192.168.10.114/brtc/index.php?option=com_content&view=article&id=95&Itemid=71', '', '2011-02-27 21:59:48', 10, 0, 0, '0000-00-00 00:00:00', 7, 0, 1, 'target=\n\n'),
(23, 35, 0, 'Training Institute', 'training-institute', 'http://192.168.10.114/brtc/index.php?option=com_content&view=article&id=105&Itemid=78', '', '2011-02-27 21:59:40', 8, 0, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=\n\n'),
(22, 35, 0, 'Download', 'download', 'http://192.168.10.114/brtc/index.php?option=com_content&view=article&id=131&Itemid=106', '', '2011-02-27 21:59:28', 22, 0, 0, '0000-00-00 00:00:00', 5, 0, 1, 'target=\n\n'),
(19, 35, 0, 'Fare Chart', 'fare-chart', 'http://192.168.10.114/brtc/index.php?option=com_content&view=article&id=129&Itemid=106', '', '2011-02-27 21:58:53', 14, 0, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=\n\n'),
(20, 35, 0, 'Information', 'information', 'http://192.168.10.114/brtc/index.php?option=com_content&view=category&layout=blog&id=59&Itemid=58', '', '2011-02-27 21:59:06', 15, 0, 0, '0000-00-00 00:00:00', 3, 0, 1, 'target=\n\n'),
(21, 35, 0, 'Feedback', 'feedback', 'http://192.168.10.114/brtc/index.php?option=com_aicontactsafe&view=message&layout=message&pf=1&Itemid=94', '', '2011-02-27 21:59:16', 13, 0, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=\n\n'),
(28, 35, 0, 'Bangladesh Railway', 'bangladesh-railway', 'http://www.railway.gov.bd/ ', '', '2011-02-28 12:50:39', 2, 1, 0, '0000-00-00 00:00:00', 10, 0, 1, 'target=\n\n'),
(29, 35, 0, 'Rajdhani Unnayan Kartripakkha', 'rajuk', 'http://www.rajukdhaka.gov.bd/ ', '', '2011-02-28 13:08:55', 4, 1, 0, '0000-00-00 00:00:00', 11, 0, 1, 'target=\n\n'),
(30, 35, 0, 'Bangladesh Telecommunication Regulatory Commission', 'btrc', 'http://btrc.gov.bd', '', '2011-02-28 13:09:38', 6, 1, 0, '0000-00-00 00:00:00', 12, 0, 1, 'target=\n\n'),
(31, 35, 0, 'Bangladesh Road Transport Authority', 'bangladesh-road-transport-authority', 'http://www.brta.gov.bd/index.php', '', '2011-02-28 13:05:15', 3, 1, 0, '0000-00-00 00:00:00', 13, 0, 1, 'target=\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_xmap`
--

CREATE TABLE IF NOT EXISTS `jos_xmap` (
  `name` varchar(30) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_xmap`
--

INSERT INTO `jos_xmap` (`name`, `value`) VALUES
('version', '1.2.10'),
('classname', 'sitemap'),
('expand_category', '1'),
('expand_section', '1'),
('show_menutitle', '1'),
('columns', '1'),
('exlinks', '1'),
('ext_image', 'img_grey.gif'),
('exclmenus', ''),
('includelink', '1'),
('sitemap_default', '1'),
('exclude_css', '0'),
('exclude_xsl', '0');

-- --------------------------------------------------------

--
-- Table structure for table `jos_xmap_ext`
--

CREATE TABLE IF NOT EXISTS `jos_xmap_ext` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` varchar(100) NOT NULL,
  `published` int(1) DEFAULT '0',
  `params` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `jos_xmap_ext`
--

INSERT INTO `jos_xmap_ext` (`id`, `extension`, `published`, `params`) VALUES
(1, 'com_agora', 1, '-1{include_forums=1\ninclude_topics=1\nmax_topics=\nmax_age=\ncat_priority=-1\ncat_changefreq=-1\nforum_priority=-1\nforum_changefreq=-1\ntopic_priority=-1\ntopic_changefreq=-1\n}'),
(2, 'com_contact', 1, '-1{include_contacts=1\nmax_contacts=\ncat_priority=-1\ncat_changefreq=-1\ncontact_priority=-1\ncontact_changefreq=-1\n}'),
(3, 'com_content', 1, '-1{expand_categories=1\nexpand_sections=1\narticles_order=menu\nadd_pagebreaks=1\nadd_images=0\nmax_images=1000\nshow_unauth=0\nmax_art=0\nmax_art_age=0\ncat_priority=-1\ncat_changefreq=-1\nart_priority=-1\nart_changefreq=-1\nkeywords=1\n}'),
(4, 'com_eventlist', 1, '-1{include_events=1\nmax_events=\nmax_age=\ncat_priority=-1\ncat_changefreq=-1\nfile_priority=-1\nfile_changefreq=-1\n}'),
(5, 'com_g2bridge', 1, '-1{include_items=2\ncat_priority=-1\ncat_changefreq=-1\nitem_priority=-1\nitem_changefreq=-1\n}'),
(6, 'com_glossary', 1, '-1{include_entries=1\nmax_entries=\nletter_priority=0.5\nletter_changefreq=weekly\nentry_priority=0.5\nentry_changefreq=weekly\n}'),
(7, 'com_hotproperty', 1, '-1{include_properties=1\ninclude_companies=1\ninclude_agents=1\nproperties_text=Properties\ncompanies_text=Companies\nagents_text=Agents\nmax_properties=\ntype_priority=-1\ntype_changefreq=-1\nproperty_priority=-1\nproperty_changefreq=-1\ncompany_priority=-1\ncompany_changefreq=-1\nagent_priority=-1\nagent_changefreq=-1\n}'),
(8, 'com_jcalpro', 1, '-1{include_events=1\ncat_priority=-1\ncat_changefreq=-1\nevent_priority=-1\nevent_changefreq=-1\n}'),
(9, 'com_jdownloads', 1, '-1{include_files=1\nmax_files=\nmax_age=\ncat_priority=-1\ncat_changefreq=-1\nfile_priority=-1\nfile_changefreq=-1\n}'),
(10, 'com_jevents', 1, '-1{include_events=1\nmax_events=\ncat_priority=0.5\ncat_changefreq=weekly\nevent_priority=0.5\nevent_changefreq=weekly\n}'),
(11, 'com_jmovies', 1, '-1{include_movies=1\nmax_movies=\nmax_age=\ncat_priority=-1\ncat_changefreq=-1\nfile_priority=-1\nfile_changefreq=-1\n}'),
(12, 'com_jomres', 1, '-1{priority=0.5\nchangefreq=weekly\n}'),
(13, 'com_joomdoc', 1, '-1{include_docs=1\ndoc_task=\ncat_priority=0.5\ncat_changefreq=weekly\ndoc_priority=0.5\ndoc_changefreq=weekly\n}'),
(14, 'com_joomgallery', 1, '-1{include_pictures=1\nmax_pictures=\ncat_priority=-1\ncat_changefreq=-1\npictures_priority=-1\npictures_changefreq=-1\n}'),
(15, 'com_kb', 1, '-1{include_articles=1\ninclude_feeds=1\nmax_articles=\nmax_age=\ncat_priority=-1\ncat_changefreq=-1\nfile_priority=-1\nfile_changefreq=-1\n}'),
(16, 'com_kunena', 1, '-1{include_topics=1\nmax_topics=\nmax_age=\ncat_priority=-1\ncat_changefreq=-1\ntopic_priority=-1\ntopic_changefreq=-1\n}'),
(17, 'com_mtree', 1, '-1{cats_order=cat_name\ninclude_links=1\nlinks_order=ordering\nmax_links=\nmax_age=\ncat_priority=0.5\ncat_changefreq=weekly\nlink_priority=0.5\nlink_changefreq=weekly\n}'),
(18, 'com_myblog', 1, '-1{include_bloggers=1\ninclude_tag_clouds=1\ninclude_feed=2\ninclude_archives=2\nnumber_of_bloggers=8\ninclude_blogger_posts=1\nnumber_of_post_per_blogger=32\ntext_bloggers=Bloggers\nblogger_priority=-1\nblogger_changefreq=-1\nfeed_priority=-1\nfeed_changefreq=-1\nentry_priority=-1\nentry_changefreq=-1\ncats_priority=-1\ncats_changefreq=-1\narc_priority=-1\narc_changefreq=-1\ntag_priority=-1\ntag_changefreq=-1\n}'),
(19, 'com_rapidrecipe', 1, '-1{cats_order=cat_name\ninclude_links=1\nlinks_order=ordering\nmax_links=\nmax_age=\ncat_priority=-1\ncat_changefreq=-1\nrecipe_priority=-1\nrecipe_changefreq=-1\n}'),
(20, 'com_remository', 1, '-1{include_files=1\nmax_files=\nmax_age=\ncat_priority=-1\ncat_changefreq=-1\nfile_priority=-1\nfile_changefreq=-1\n}'),
(21, 'com_resource', 1, '-1{include_articles=1\nmax_articles=\ncat_priority=-1\ncat_changefreq=-1\narticle_priority=-1\narticle_changefreq=-1\n}'),
(22, 'com_rdautos', 1, '-1{include_vehicles=1\ncat_priority=0.5\ncat_changefreq=weekly\nvehicle_priority=0.5\nvehicle_changefreq=weekly\n}'),
(23, 'com_rokdownloads', 1, '-1{include_files=1\nmax_files=\nmax_age=\ncat_priority=-1\ncat_changefreq=-1\nfile_priority=-1\nfile_changefreq=-1\n}'),
(24, 'com_rsgallery2', 1, '-1{include_images=1\nmax_images=\nmax_age=\nimages_order=orderding\ncat_priority=0.5\ncat_changefreq=weekly\nimage_priority=0.5\nimage_changefreq=weekly\n}'),
(25, 'com_sectionex', 1, '-1{expand_categories=1\nexpand_sections=1\nshow_unauth=0\ncat_priority=-1\ncat_changefreq=-1\nart_priority=-1\nart_changefreq=-1\n}'),
(26, 'com_cmsshopbuilder', 1, '-1{include_items=1\nmax_items=\nmax_age=\ncat_priority=-1\ncat_changefreq=-1\nitem_priority=-1\nitem_changefreq=-1\n}'),
(27, 'com_sobi2', 1, '-1{include_entries=1\nmax_entries=\nmax_age=\nentries_order=a.ordering\nentries_orderdir=DESC\ncat_priority=-1\ncat_changefreq=weekly\nentry_priority=-1\nentry_changefreq=weekly\n}'),
(28, 'com_virtuemart', 1, '-1{include_products=1\ninclude_product_images=0\nproduct_image_license_url=\ncat_priority=0.5\ncat_changefreq=weekly\nprod_priority=0.5\nprod_changefreq=weekly\n}'),
(29, 'com_weblinks', 1, '-1{include_links=1\nmax_links=\ncat_priority=-1\ncat_changefreq=-1\nlink_priority=-1\nlink_changefreq=-1\n}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_xmap_items`
--

CREATE TABLE IF NOT EXISTS `jos_xmap_items` (
  `uid` varchar(100) NOT NULL,
  `itemid` int(11) NOT NULL,
  `view` varchar(10) NOT NULL,
  `sitemap_id` int(11) NOT NULL,
  `properties` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`uid`,`itemid`,`view`,`sitemap_id`),
  KEY `uid` (`uid`,`itemid`),
  KEY `view` (`view`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jos_xmap_sitemap`
--

CREATE TABLE IF NOT EXISTS `jos_xmap_sitemap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `expand_category` int(11) DEFAULT NULL,
  `expand_section` int(11) DEFAULT NULL,
  `show_menutitle` int(11) DEFAULT NULL,
  `columns` int(11) DEFAULT NULL,
  `exlinks` int(11) DEFAULT NULL,
  `ext_image` varchar(255) DEFAULT NULL,
  `menus` text,
  `exclmenus` varchar(255) DEFAULT NULL,
  `includelink` int(11) DEFAULT NULL,
  `usecache` int(11) DEFAULT NULL,
  `cachelifetime` int(11) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `count_xml` int(11) DEFAULT NULL,
  `count_html` int(11) DEFAULT NULL,
  `views_xml` int(11) DEFAULT NULL,
  `views_html` int(11) DEFAULT NULL,
  `lastvisit_xml` int(11) DEFAULT NULL,
  `lastvisit_html` int(11) DEFAULT NULL,
  `excluded_items` text,
  `compress_xml` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_xmap_sitemap`
--

INSERT INTO `jos_xmap_sitemap` (`id`, `name`, `expand_category`, `expand_section`, `show_menutitle`, `columns`, `exlinks`, `ext_image`, `menus`, `exclmenus`, `includelink`, `usecache`, `cachelifetime`, `classname`, `count_xml`, `count_html`, `views_xml`, `views_html`, `lastvisit_xml`, `lastvisit_html`, `excluded_items`, `compress_xml`) VALUES
(1, 'New Sitemap', 0, 0, 0, 2, 1, 'img_grey.gif', 'mainmenu,0,1,0,0.5,daily,mod_mainmenu', '', 0, 0, 0, 'xmap', 0, 45, 3, 82, 1292323576, 1292328048, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_yvcomment`
--

CREATE TABLE IF NOT EXISTS `jos_yvcomment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
