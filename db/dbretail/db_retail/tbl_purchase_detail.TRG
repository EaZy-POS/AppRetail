TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `updatestock` AFTER INSERT ON `tbl_purchase_detail` FOR EACH ROW BEGIN\nDECLARE count integer;\nSET @count:=(SELECT COUNT(kode_item) FROM tbl_item_stock WHERE kode_item=new.kode_item);\nIF(@count=0) THEN\n	INSERT INTO tbl_item_stock VALUES (new.kode_item,0);END IF;\nUPDATE tbl_item_stock set stock=stock+new.qty WHERE kode_item=new.kode_item;\n\nSET @count:=(SELECT COUNT(kode_item) FROM tbl_mutasi_stock WHERE kode_item=new.kode_item AND tipe_mutasi=\'PURCHASE\' AND tran_date=CURDATE());\n		IF(@count=0) THEN\n			INSERT INTO tbl_mutasi_stock VALUES (UUID(),CURDATE(),new.kode_item,\'PURCHASE\',new.qty);\n		ELSE\n			UPDATE tbl_mutasi_stock SET qty=qty+new.qty WHERE tran_date=CURDATE() AND kode_item=new.kode_item AND tipe_mutasi=\'PURCHASE\'; \n		END IF;\nEND'
sql_modes=1344274432
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
