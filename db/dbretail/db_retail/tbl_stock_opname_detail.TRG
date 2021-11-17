TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`localhost` TRIGGER `afterupdatesodetail` AFTER UPDATE ON `tbl_stock_opname_detail` FOR EACH ROW BEGIN\nDECLARE count integer;\nIF(new.flag=2) THEN\n		SET @count:=(SELECT COUNT(kode_item) FROM tbl_item_stock WHERE kode_item=old.kode_item);\n		IF(@count=0) THEN\n			INSERT INTO tbl_item_stock VALUES (old.kode_item,0);\n		END IF;\n		UPDATE tbl_item_stock set stock=old.opname WHERE kode_item=old.kode_item;\n\n		SET @count:=(SELECT COUNT(kode_item) FROM tbl_mutasi_stock WHERE kode_item=old.kode_item AND tipe_mutasi=\'STOCK OPNAME\' AND tran_date=CURDATE());\n				IF(@count=0) THEN\n					INSERT INTO tbl_mutasi_stock VALUES (UUID(),CURDATE(),new.kode_item,\'STOCK_OPNAME\',old.selisih);\n				ELSE\n					UPDATE tbl_mutasi_stock SET qty=qty+old.opname WHERE tran_date=CURDATE() AND kode_item=old.kode_item AND tipe_mutasi=\'STOCK OPNAME\'; \n		END IF;\nEND IF;		\nEND'
sql_modes=1344274432
definers='root@localhost'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='latin1_swedish_ci'
