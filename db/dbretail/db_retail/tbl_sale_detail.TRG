TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `afterinsertsale` AFTER INSERT ON `tbl_sale_detail` FOR EACH ROW BEGIN\n	DECLARE count integer;\n	SET @count:=(SELECT COUNT(kode_item) FROM tbl_item_stock WHERE kode_item=new.kode_item);\n	IF(@count=0) THEN\n		INSERT INTO tbl_item_stock VALUES (new.kode_item,0);\n	END IF;\n	UPDATE tbl_item_stock set stock=stock-new.qty WHERE kode_item=new.kode_item;\n\n	SET @count:=(SELECT COUNT(kode_item) FROM tbl_mutasi_stock WHERE kode_item=new.kode_item AND tipe_mutasi=\'SALE\' AND tran_date=CURDATE());\n		IF(@count=0) THEN\n			INSERT INTO tbl_mutasi_stock VALUES (UUID(),CURDATE(),new.kode_item,\'SALE\',new.qty);\n		ELSE\n			UPDATE tbl_mutasi_stock SET qty=qty+new.qty WHERE tran_date=CURDATE() AND kode_item=new.kode_item AND tipe_mutasi=\'SALE\'; \n		END IF;\nEND'
sql_modes=1344274432
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
