-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.25a


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema bank
--

CREATE DATABASE IF NOT EXISTS bank;
USE bank;

--
-- Definition of table `b1`
--

DROP TABLE IF EXISTS `b1`;
CREATE TABLE `b1` (
  `bank name` varchar(45) DEFAULT NULL,
  `branch name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `cpass` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `b1`
--

/*!40000 ALTER TABLE `b1` DISABLE KEYS */;
INSERT INTO `b1` (`bank name`,`branch name`,`email`,`mobile`,`pass`,`cpass`) VALUES 
 ('axis','guindy','srikumaranbe@gmail.com','9978547474','kk','kk'),
 ('axis','adayar','a@gmail.com','9900990099','111','111');
/*!40000 ALTER TABLE `b1` ENABLE KEYS */;


--
-- Definition of table `b2`
--

DROP TABLE IF EXISTS `b2`;
CREATE TABLE `b2` (
  `bank name` varchar(45) DEFAULT NULL,
  `branch name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `pass` varchar(45) DEFAULT NULL,
  `cpass` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `b2`
--

/*!40000 ALTER TABLE `b2` DISABLE KEYS */;
INSERT INTO `b2` (`bank name`,`branch name`,`email`,`mobile`,`pass`,`cpass`) VALUES 
 ('axis','velachery','srikumaran107@gmail.com','9978547474','ss','ss'),
 ('axis','adayar','aa@gmail.com','9900990090','222','222');
/*!40000 ALTER TABLE `b2` ENABLE KEYS */;


--
-- Definition of table `request`
--

DROP TABLE IF EXISTS `request`;
CREATE TABLE `request` (
  `branchname` varchar(45) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `filetype` varchar(45) DEFAULT NULL,
  `filekey` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

/*!40000 ALTER TABLE `request` DISABLE KEYS */;
INSERT INTO `request` (`branchname`,`filename`,`filetype`,`filekey`,`status`,`email`) VALUES 
 ('guindy','ss.txt','text/plain','4AAA0','Request','srikumaran107@gmail.com'),
 ('guindy','samp.pdf','application/pdf','7538D','Request','srikumaran107@gmail.com'),
 ('select','kk.pdf','application/pdf','2DE59','Request','aa@gmail.com');
/*!40000 ALTER TABLE `request` ENABLE KEYS */;


--
-- Definition of table `request1`
--

DROP TABLE IF EXISTS `request1`;
CREATE TABLE `request1` (
  `branchname` varchar(45) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `filetype` varchar(45) DEFAULT NULL,
  `filekey` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request1`
--

/*!40000 ALTER TABLE `request1` DISABLE KEYS */;
INSERT INTO `request1` (`branchname`,`filename`,`filetype`,`filekey`,`status`,`owner`) VALUES 
 ('Velachery','ss.pdf','application/pdf','42B12','Request','a@gmail.com');
/*!40000 ALTER TABLE `request1` ENABLE KEYS */;


--
-- Definition of table `resp`
--

DROP TABLE IF EXISTS `resp`;
CREATE TABLE `resp` (
  `filename` varchar(45) DEFAULT NULL,
  `filetype` varchar(45) DEFAULT NULL,
  `filekey` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `branchname` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resp`
--

/*!40000 ALTER TABLE `resp` DISABLE KEYS */;
INSERT INTO `resp` (`filename`,`filetype`,`filekey`,`status`,`branchname`) VALUES 
 ('ss.txt','text/plain','4AAA0','Accept',NULL),
 ('samp.pdf','application/pdf','7538D','Accept',NULL),
 ('kk.pdf','application/pdf','2DE59','Accept',NULL);
/*!40000 ALTER TABLE `resp` ENABLE KEYS */;


--
-- Definition of table `resp1`
--

DROP TABLE IF EXISTS `resp1`;
CREATE TABLE `resp1` (
  `branchname` varchar(45) DEFAULT NULL,
  `filename` varchar(45) DEFAULT NULL,
  `filetype` varchar(45) DEFAULT NULL,
  `filekey` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `owner` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resp1`
--

/*!40000 ALTER TABLE `resp1` DISABLE KEYS */;
/*!40000 ALTER TABLE `resp1` ENABLE KEYS */;


--
-- Definition of table `upload`
--

DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `Filename` varchar(45) DEFAULT NULL,
  `Filetype` varchar(45) DEFAULT NULL,
  `Filekey` varchar(45) DEFAULT NULL,
  `Filesize` varchar(45) DEFAULT NULL,
  `Filecontent` longtext,
  `Encrypt` longtext,
  `Decrypt` longtext,
  `Owner` varchar(45) DEFAULT NULL,
  `Branch` varchar(45) DEFAULT NULL,
  `prehash` longtext,
  `afterhash` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

/*!40000 ALTER TABLE `upload` DISABLE KEYS */;
INSERT INTO `upload` (`Filename`,`Filetype`,`Filekey`,`Filesize`,`Filecontent`,`Encrypt`,`Decrypt`,`Owner`,`Branch`,`prehash`,`afterhash`) VALUES 
 ('ss.pdf','application/pdf','42B12','150088',' \nREVOCABLE IDENTITY-BASED BROADCAST PROXY RE-\nENCRYPTION FOR DATA SHARING IN CLOUDS \n \nABSTRACT: \n      Cloud computing has become prevalent due to its nature of massive storage and vast \ncomputing capabilities. Ensuring a secure data sharing is critical to cloud applications. Recently, \na number of identity-based broadcast proxy re-encryption schemes have been proposed to \nresolve the problem. However, the IB-BPRE requires a cloud user who wants to share data with \na bunch of other users to participate the group shared key renewal process because Alice’s \nprivate key is a prerequisite for shared key generation. This, however, does not leverage the \nbenefit of cloud computing and causes the inconvenience for cloud users. Therefore, a novel \nsecurity notion named revocable identity-based broadcast proxy re-encryption is presented to \naddress the issue of key revocation in this work. In a RIB-BPRE scheme, a proxy can revoke a \nset of delegates, designated by the delegator, from the re-encryption key. The performance \nevaluation reveals that the proposed scheme is efficient and practical. \n \nINTRODUCTION: \nCloud computing has become a solution for data maintenance due to its flexibility and \neffectiveness. However, cloud computing has been suffering from security and privacy \nchallenges. Encryption can be a straightforward approach to ensure data confidentiality and \nIdentity-based encryption is one of the promising representative secure mechanisms because it \nhas a concise public key infrastructure. When storing the identity-based encrypted data to the \ncloud, the data owner would like to share the data with others in particular scenarios. For \nexample, a set of volunteers upload their genome data to the cloud in a genome record cloud \nsystem for the scientists to collaboratively conduct medical research. If IBE is adopted into such \na medical system, the genome data should be encrypted before uploading to the cloud as Enc(m, ','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',' \nREVOCABLE IDENTITY-BASED BROADCAST PROXY RE-\nENCRYPTION FOR DATA SHARING IN CLOUDS \n \nABSTRACT: \n      Cloud computing has become prevalent due to its nature of massive storage and vast \ncomputing capabilities. Ensuring a secure data sharing is critical to cloud applications. Recently, \na number of identity-based broadcast proxy re-encryption schemes have been proposed to \nresolve the problem. However, the IB-BPRE requires a cloud user who wants to share data with \na bunch of other users to participate the group shared key renewal process because Alice’s \nprivate key is a prerequisite for shared key generation. This, however, does not leverage the \nbenefit of cloud computing and causes the inconvenience for cloud users. Therefore, a novel \nsecurity notion named revocable identity-based broadcast proxy re-encryption is presented to \naddress the issue of key revocation in this work. In a RIB-BPRE scheme, a proxy can revoke a \nset of delegates, designated by the delegator, from the re-encryption key. The performance \nevaluation reveals that the proposed scheme is efficient and practical. \n \nINTRODUCTION: \nCloud computing has become a solution for data maintenance due to its flexibility and \neffectiveness. However, cloud computing has been suffering from security and privacy \nchallenges. Encryption can be a straightforward approach to ensure data confidentiality and \nIdentity-based encryption is one of the promising representative secure mechanisms because it \nhas a concise public key infrastructure. When storing the identity-based encrypted data to the \ncloud, the data owner would like to share the data with others in particular scenarios. For \nexample, a set of volunteers upload their genome data to the cloud in a genome record cloud \nsystem for the scientists to collaboratively conduct medical research. If IBE is adopted into such \na medical system, the genome data should be encrypted before uploading to the cloud as Enc(m, ','srikumaran107@gmail.com','Velachery',NULL,NULL);
/*!40000 ALTER TABLE `upload` ENABLE KEYS */;


--
-- Definition of table `upload1`
--

DROP TABLE IF EXISTS `upload1`;
CREATE TABLE `upload1` (
  `Filename` varchar(45) DEFAULT NULL,
  `Filetype` varchar(45) DEFAULT NULL,
  `Filekey` varchar(45) DEFAULT NULL,
  `Filesize` varchar(45) DEFAULT NULL,
  `Filecontent` longtext,
  `Encrypt` longtext,
  `Decrypt` longtext,
  `Owner` varchar(45) DEFAULT NULL,
  `Branch` varchar(45) DEFAULT NULL,
  `prehash` longtext,
  `afterhash` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload1`
--

/*!40000 ALTER TABLE `upload1` DISABLE KEYS */;
INSERT INTO `upload1` (`Filename`,`Filetype`,`Filekey`,`Filesize`,`Filecontent`,`Encrypt`,`Decrypt`,`Owner`,`Branch`,`prehash`,`afterhash`) VALUES 
 ('samp.pdf','application/pdf','7538D','127206','12345','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\r\n9++Q9o+OghLO2bLBE0qHilLpTV1hpon7Z4Og64w=','12345','srikumaranbe@gmail.com','guindy',NULL,NULL),
 ('kk.pdf','application/pdf','2DE59','131097','   \n    String phas=genesisBlock.hash; \n     \n    Block secondBlock = new Block(\"Yo im the second \nblock\",genesisBlock.hash); \n    System.out.println(\"Hash for block 2 : \" + secondBlock.hash); \n    String aphas=secondBlock.hash; \n   \n                   \n                   \n                  Product_upload_bean pu=new Product_upload_bean(); \n                  pu.setFilecontent(filecontent); \n                  pu.setFilename(filename); \n                  pu.setFilesize(String.valueOf(size)); \n                  pu.setFiletype(filetype); \n                  pu.setUserid(user); \n                        pu.setFileid(paramValues.get(0).toString()); \n                        pu.setPrehash(prehash); \n                        pu.setAfterhash(aphas); \n                        pu.setEncrypt(encontent); \n                        pu.setDecrypt(filecontent); \n \n                   \n                   \n                  Interfaces i=new Implements(); \n                  int f = 0; \n      try { \n       f = i.manufacture_product_upload(pu); \n      } catch (SQLException e) { ','1Dc/Tst3Kfvn9pCXJhIwROd/Q6ynmdR/zkN5fnXgeV/ZaUe/TXjrQYy1LrjY7KKjzG8nL4hP9CX8\r\nmJkRxHcbxp70jq5kmaqMowczfEYRsHgeJU2jeDUMX92WcHFygPDYOPnuiR7vWcBCrzVFgN0XHpPc\r\nO6ajb5LxLQ7rBBmYrG21aYADOdGFcCVBM5gUFWTUgkpOjS2i9OgcLzz8D7B4aUO9kpmkMs+w516f\r\nuC3KmnolSuDyPFOoNGB9VWyn+yOVbd2qy5z0FtLGokajQiqwbkC412MIQpclCwPVAK7mkd3HqfL+\r\nkqrKVMO0/jis45ArVozbDeA2HQRWgNuYPpEapNcpj0VO0tMdNGDH94+ORqy/P6bYupF+iA2yQhJS\r\nvT8ARXYGnUyt6AhxG/kYB5TMx7KIZHgjsnu6dmjfpwYYIJ4o+xYSxz988ut2h/vLtqOlLo0l+Lu8\r\nxAobEuilHVcXDiaMtVbY4WjoCTgFzIUM71IIs2Sdt7KwO79QcyPrJj1GPxIyWsQnfbpCy9fdpBgR\r\nIpNbYyI+C4XpmZowBwV2SnBn62RSng7s9vdM25V+kJ7CmyL69HFmXDb6ebLd3PqUdyaMtVbY4Wjo\r\nCTgFzIUM71ICTtVvZKq6NDAkN+CWgHVmaacbsD6Vti36JlYoZjiK6tcpj0VO0tMdNGDH94+ORqz2\r\nPrDRmOmw/rvp2zl3Id9FL9CTXJPn/ZWUio8cxOvn4Ww9VJrmTX7+uICIiklz869e3sIkb6g3pOdn\r\ncH2GkH1whLWkdU2EZxwlwjblaZjyU5NbYyI+C4XpmZowBwV2SnCWunK3pO1XcJxjlCHr1B0/4X2A\r\ndPW670i5GtVVQ/Gi9FnNtq48GJd+QE2GZ0ivosLXKY9FTtLTHTRgx/ePjkasme10z1BGLhNVLdgC\r\nayR+Y/B8sfI6giA46lziaV+LGGjXKY9FTtLTHTRgx/ePjkasu7PnWEsPo5YDUxP7kv+aQXlQAsL0\r\nxv1uMwGq473bmknXKY9FTtLTHTRgx/ePjkaseIyIh5NBQ+mkrVK7qzsumLPFLVVR/2tCFzylyAgU\r\n5UbXKY9FTtLTHTRgx/ePjkassk1iXbWmdXWWcf9sX8kAf99ghXkijlDuMUmwEkbxic6Eg1WUGzMZ\r\ntfMy96HPTAe8Bv4+cQzdfeL56FW/j3fmW1aM2w3gNh0EVoDbmD6RGqTXKY9FTtLTHTRgx/ePjkas\r\nB0oeL+o6P5o3K2WlwGNQkYry98OTZ8SWSAA+vYtQspTXKY9FTtLTHTRgx/ePjkassRcnrV63VMOU\r\n/DmQ7pSKGEj25SulSKhV6Jc9jbcrqazdKneBpncgTkV51bE+fG3crIbhsCk1dIob1tJ14nE+WYBc\r\nUGH81RIdWLs8Kj48DLctHPYHpMzpXyCFPMucu1ViqSyN6XD0ySzvz1SMkX46SQ==','   \n    String phas=genesisBlock.hash; \n     \n    Block secondBlock = new Block(\"Yo im the second \nblock\",genesisBlock.hash); \n    System.out.println(\"Hash for block 2 : \" + secondBlock.hash); \n    String aphas=secondBlock.hash; \n   \n                   \n                   \n                  Product_upload_bean pu=new Product_upload_bean(); \n                  pu.setFilecontent(filecontent); \n                  pu.setFilename(filename); \n                  pu.setFilesize(String.valueOf(size)); \n                  pu.setFiletype(filetype); \n                  pu.setUserid(user); \n                        pu.setFileid(paramValues.get(0).toString()); \n                        pu.setPrehash(prehash); \n                        pu.setAfterhash(aphas); \n                        pu.setEncrypt(encontent); \n                        pu.setDecrypt(filecontent); \n \n                   \n                   \n                  Interfaces i=new Implements(); \n                  int f = 0; \n      try { \n       f = i.manufacture_product_upload(pu); \n      } catch (SQLException e) { ','a@gmail.com','select','6e7eb04941fa8be73706e1c34c5f73f1f807bf8bc9be3f6457248803e41f0e73','');
/*!40000 ALTER TABLE `upload1` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
