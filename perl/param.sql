/* Formatted on 07/01/2016 1:34:32 PM (QP5 v5.277) */
INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	backup_tape_io_slaves	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	bitmap_merge_area_size	', CHR (9), '')),
             TRIM (REPLACE ('	1048576	', CHR (9), '')),
             TRIM (REPLACE ('	1048576	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	blank_trimming	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	buffer_pool_keep	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	buffer_pool_recycle	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	cell_offload_compaction	', CHR (9), '')),
             TRIM (REPLACE ('	ADAPTIVE	', CHR (9), '')),
             TRIM (REPLACE ('	ADAPTIVE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	cell_offload_decryption	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	cell_offload_parameters	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	cell_offload_plan_display	', CHR (9), '')),
             TRIM (REPLACE ('	AUTO	', CHR (9), '')),
             TRIM (REPLACE ('	AUTO	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	cell_offload_processing	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	circuits	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	client_result_cache_lag	', CHR (9), '')),
             TRIM (REPLACE ('	3000	', CHR (9), '')),
             TRIM (REPLACE ('	3000	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	client_result_cache_size	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	clonedb	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	cluster_database	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	cluster_database_instances	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	cluster_interconnects	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	commit_logging	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	commit_point_strength	', CHR (9), '')),
             TRIM (REPLACE ('	1	', CHR (9), '')),
             TRIM (REPLACE ('	1	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	commit_wait	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	compatible	', CHR (9), '')),
             TRIM (REPLACE ('	11.2.0.2.0	', CHR (9), '')),
             TRIM (REPLACE ('	11.2.0.2.0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	control_file_record_keep_time	', CHR (9), '')),
             TRIM (REPLACE ('	35	', CHR (9), '')),
             TRIM (REPLACE ('	35	', CHR (9), '')));


INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (REPLACE ('	control_files	', CHR (9), '')),
                  TRIM (
                     REPLACE (
                        '	+DB_ORCL_DAT0310/xtpfid_rtp/control01.ctl, +DB_ORCL_FRA0310/xtpfid_rtp/control02.ctl	',
                        CHR (9),
                        '')),
                  TRIM (
                     REPLACE (
                        '	+DB_ORCL_DAT0310/xtpfid_rtp/control01.ctl, +DB_ORCL_FRA0310/xtpfid_rtp/control02.ctl	',
                        CHR (9),
                        '')));



INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (
                     REPLACE ('	control_management_pack_access	',
                              CHR (9),
                              '')),
                  TRIM (REPLACE ('	DIAGNOSTIC+TUNING	', CHR (9), '')),
                  TRIM (REPLACE ('	DIAGNOSTIC+TUNING	', CHR (9), '')));



INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (REPLACE ('	core_dump_dest	', CHR (9), '')),
                  TRIM (
                     REPLACE (
                        '	/xdfidrtpp/oracle/diag/rdbms/xtpfid_rtp/XTPFID1/cdump	',
                        CHR (9),
                        '')),
                  TRIM (
                     REPLACE (
                        '	/xdfidrtpp/oracle/diag/rdbms/xtpfid_rtp/XTPFID1/cdump	',
                        CHR (9),
                        '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (REPLACE ('	core_dump_dest	', CHR (9), '')),
                  TRIM (
                     REPLACE (
                        '	/xdfidrtpp/oracle/diag/rdbms/xtpfid_rtp/XTPFID2/cdump	',
                        CHR (9),
                        '')),
                  TRIM (
                     REPLACE (
                        '	/xdfidrtpp/oracle/diag/rdbms/xtpfid_rtp/XTPFID2/cdump	',
                        CHR (9),
                        '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	cpu_count	', CHR (9), '')),
             TRIM (REPLACE ('	24	', CHR (9), '')),
             TRIM (REPLACE ('	24	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	create_bitmap_area_size	', CHR (9), '')),
             TRIM (REPLACE ('	8388608	', CHR (9), '')),
             TRIM (REPLACE ('	8388608	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	create_stored_outlines	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (
                     REPLACE ('	cursor_bind_capture_destination	',
                              CHR (9),
                              '')),
                  TRIM (REPLACE ('	memory+disk	', CHR (9), '')),
                  TRIM (REPLACE ('	memory+disk	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	cursor_sharing	', CHR (9), '')),
             TRIM (REPLACE ('	EXACT	', CHR (9), '')),
             TRIM (REPLACE ('	EXACT	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	cursor_space_for_time	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_16k_cache_size	', CHR (9), '')),
             TRIM (REPLACE ('	536870912	', CHR (9), '')),
             TRIM (REPLACE ('	512M	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_2k_cache_size	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_32k_cache_size	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_4k_cache_size	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_8k_cache_size	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_block_buffers	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_block_checking	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_block_checksum	', CHR (9), '')),
             TRIM (REPLACE ('	TYPICAL	', CHR (9), '')),
             TRIM (REPLACE ('	TYPICAL	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_block_size	', CHR (9), '')),
             TRIM (REPLACE ('	8192	', CHR (9), '')),
             TRIM (REPLACE ('	8192	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_cache_advice	', CHR (9), '')),
             TRIM (REPLACE ('	ON	', CHR (9), '')),
             TRIM (REPLACE ('	ON	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_cache_size	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_create_file_dest	', CHR (9), '')),
             TRIM (REPLACE ('	"=+DB_ORCL_DAT0310"	', CHR (9), '')),
             TRIM (REPLACE ('	"=+DB_ORCL_DAT0310"	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_create_online_log_dest_1	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_create_online_log_dest_2	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_create_online_log_dest_3	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_create_online_log_dest_4	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_create_online_log_dest_5	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_domain	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_file_multiblock_read_count	', CHR (9), '')),
             TRIM (REPLACE ('	128	', CHR (9), '')),
             TRIM (REPLACE ('	128	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_file_name_convert	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_files	', CHR (9), '')),
             TRIM (REPLACE ('	1024	', CHR (9), '')),
             TRIM (REPLACE ('	1024	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_flash_cache_file	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_flash_cache_size	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_flashback_retention_target	', CHR (9), '')),
             TRIM (REPLACE ('	1440	', CHR (9), '')),
             TRIM (REPLACE ('	1440	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_keep_cache_size	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_lost_write_protect	', CHR (9), '')),
             TRIM (REPLACE ('	NONE	', CHR (9), '')),
             TRIM (REPLACE ('	NONE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_name	', CHR (9), '')),
             TRIM (REPLACE ('	XTPFID	', CHR (9), '')),
             TRIM (REPLACE ('	XTPFID	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_recovery_file_dest	', CHR (9), '')),
             TRIM (REPLACE ('	"=+DB_ORCL_FRA0310"	', CHR (9), '')),
             TRIM (REPLACE ('	#NAME?	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_recovery_file_dest_size	', CHR (9), '')),
             TRIM (REPLACE ('	8.58993E+11	', CHR (9), '')),
             TRIM (REPLACE ('	800G	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_recycle_cache_size	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_securefile	', CHR (9), '')),
             TRIM (REPLACE ('	PERMITTED	', CHR (9), '')),
             TRIM (REPLACE ('	PERMITTED	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_ultra_safe	', CHR (9), '')),
             TRIM (REPLACE ('	OFF	', CHR (9), '')),
             TRIM (REPLACE ('	OFF	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_unique_name	', CHR (9), '')),
             TRIM (REPLACE ('	XTPFID_RTP	', CHR (9), '')),
             TRIM (REPLACE ('	XTPFID_RTP	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_unrecoverable_scn_tracking	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	db_writer_processes	', CHR (9), '')),
             TRIM (REPLACE ('	3	', CHR (9), '')),
             TRIM (REPLACE ('	3	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	dbwr_io_slaves	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	ddl_lock_timeout	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	deferred_segment_creation	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	dg_broker_config_file1	', CHR (9), '')),
             TRIM (REPLACE ('	#NAME?	', CHR (9), '')),
             TRIM (REPLACE ('	#NAME?	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	dg_broker_config_file2	', CHR (9), '')),
             TRIM (REPLACE ('	#NAME?	', CHR (9), '')),
             TRIM (REPLACE ('	#NAME?	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	dg_broker_start	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	diagnostic_dest	', CHR (9), '')),
             TRIM (REPLACE ('	/xdfidrtpp/oracle	', CHR (9), '')),
             TRIM (REPLACE ('	/xdfidrtpp/oracle	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	disk_asynch_io	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));



INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (REPLACE ('	dispatchers	', CHR (9), '')),
                  TRIM (
                     REPLACE ('	(PROTOCOL=TCP) (SERVICE=XTPFID1XDB)	',
                              CHR (9),
                              '')),
                  TRIM (
                     REPLACE ('	(PROTOCOL=TCP) (SERVICE=XTPFID1XDB)	',
                              CHR (9),
                              '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	distributed_lock_timeout	', CHR (9), '')),
             TRIM (REPLACE ('	60	', CHR (9), '')),
             TRIM (REPLACE ('	60	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	dml_locks	', CHR (9), '')),
             TRIM (REPLACE ('	13304	', CHR (9), '')),
             TRIM (REPLACE ('	13304	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	dst_upgrade_insert_conv	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	enable_ddl_logging	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	event	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	fal_client	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (REPLACE ('	fal_server	', CHR (9), '')),
                  TRIM (
                     REPLACE (
                        '	(DESCRIPTION=(SDU=65536)(RECV_BUF_SIZE=10485760)(SEND_BUF_SIZE=10485760)(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=xdfidoma-scan)(PORT=1521)))(CONNECT_DATA=(SERVICE_NAME=XTPFID_OMA)))	',
                        CHR (9),
                        '')),
                  TRIM (
                     REPLACE (
                        '	(DESCRIPTION=(SDU=65536)(RECV_BUF_SIZE=10485760)(SEND_BUF_SIZE=10485760)(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=xdfidoma-scan)(PORT=1521)))(CONNECT_DATA=(SERVICE_NAME=XTPFID_OMA)))	',
                        CHR (9),
                        '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	fast_start_io_target	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	fast_start_mttr_target	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	fast_start_parallel_rollback	', CHR (9), '')),
             TRIM (REPLACE ('	LOW	', CHR (9), '')),
             TRIM (REPLACE ('	LOW	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	file_mapping	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	fileio_network_adapters	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	filesystemio_options	', CHR (9), '')),
             TRIM (REPLACE ('	none	', CHR (9), '')),
             TRIM (REPLACE ('	none	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	fixed_date	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	gcs_server_processes	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	global_context_pool_size	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	global_names	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	global_txn_processes	', CHR (9), '')),
             TRIM (REPLACE ('	1	', CHR (9), '')),
             TRIM (REPLACE ('	1	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	hash_area_size	', CHR (9), '')),
             TRIM (REPLACE ('	131072	', CHR (9), '')),
             TRIM (REPLACE ('	131072	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	hi_shared_memory_address	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	hs_autoregister	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	ifile	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	instance_groups	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	instance_name	', CHR (9), '')),
             TRIM (REPLACE ('	XTPFID1	', CHR (9), '')),
             TRIM (REPLACE ('	XTPFID1	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	instance_name	', CHR (9), '')),
             TRIM (REPLACE ('	XTPFID2	', CHR (9), '')),
             TRIM (REPLACE ('	XTPFID2	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	instance_number	', CHR (9), '')),
             TRIM (REPLACE ('	1	', CHR (9), '')),
             TRIM (REPLACE ('	1	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	instance_number	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	instance_type	', CHR (9), '')),
             TRIM (REPLACE ('	RDBMS	', CHR (9), '')),
             TRIM (REPLACE ('	RDBMS	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	java_jit_enabled	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	java_max_sessionspace_size	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	java_pool_size	', CHR (9), '')),
             TRIM (REPLACE ('	234881024	', CHR (9), '')),
             TRIM (REPLACE ('	224M	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	java_soft_sessionspace_limit	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	job_queue_processes	', CHR (9), '')),
             TRIM (REPLACE ('	1000	', CHR (9), '')),
             TRIM (REPLACE ('	1000	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	large_pool_size	', CHR (9), '')),
             TRIM (REPLACE ('	335544320	', CHR (9), '')),
             TRIM (REPLACE ('	320M	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	ldap_directory_access	', CHR (9), '')),
             TRIM (REPLACE ('	NONE	', CHR (9), '')),
             TRIM (REPLACE ('	NONE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	ldap_directory_sysauth	', CHR (9), '')),
             TRIM (REPLACE ('	no	', CHR (9), '')),
             TRIM (REPLACE ('	no	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	license_max_sessions	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	license_sessions_warning	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	listener_networks	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	local_listener	', CHR (9), '')),
             TRIM (REPLACE ('	xdfidrtpp2:1521	', CHR (9), '')),
             TRIM (REPLACE ('	xdfidrtpp2:1521	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	lock_name_space	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	lock_sga	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (REPLACE ('	log_archive_config	', CHR (9), '')),
                  TRIM (
                     REPLACE ('	dg_config=(XTPFID_RTP,xtpfid_oma)	',
                              CHR (9),
                              '')),
                  TRIM (
                     REPLACE ('	dg_config=(XTPFID_RTP,xtpfid_oma)	',
                              CHR (9),
                              '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (REPLACE ('	log_archive_dest_1	', CHR (9), '')),
                  TRIM (
                     REPLACE (
                        '	LOCATION=USE_DB_RECOVERY_FILE_DEST valid_for=(ALL_LOGFILES,ALL_ROLES)	',
                        CHR (9),
                        '')),
                  TRIM (
                     REPLACE (
                        '	LOCATION=USE_DB_RECOVERY_FILE_DEST valid_for=(ALL_LOGFILES,ALL_ROLES)	',
                        CHR (9),
                        '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_10	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_11	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_12	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_13	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_14	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_15	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_16	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_17	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_18	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_19	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_2	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_20	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_21	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_22	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_23	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_24	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_25	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_26	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_27	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_28	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_29	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (REPLACE ('	log_archive_dest_3	', CHR (9), '')),
                  TRIM (
                     REPLACE (
                        '	service="(DESCRIPTION=(SDU=65536)(RECV_BUF_SIZE=10485760)(SEND_BUF_SIZE=10485760)(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=xdfidoma-scan)(PORT=1521)))(CONNECT_DATA=(SERVICE_NAME=XTPFID_OMA)))", LGWR ASYNC NOAFFIRM delay=0 optional compression=disable max_failure=0 max_connections=1 reopen=30 db_unique_name="xtpfid_oma" net_timeout=30, valid_for=(all_logfiles,primary_role)	',
                        CHR (9),
                        '')),
                  TRIM (
                     REPLACE (
                        '	service="(DESCRIPTION=(SDU=65536)(RECV_BUF_SIZE=10485760)(SEND_BUF_SIZE=10485760)(ADDRESS_LIST=(ADDRESS=(PROTOCOL=TCP)(HOST=xdfidoma-scan)(PORT=1521)))(CONNECT_DATA=(SERVICE_NAME=XTPFID_OMA)))", LGWR ASYNC NOAFFIRM delay=0 optional compression=disable max_failure=0 max_connections=1 reopen=30 db_unique_name="xtpfid_oma" net_timeout=30, valid_for=(all_logfiles,primary_role)	',
                        CHR (9),
                        '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_30	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_31	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_4	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_5	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_6	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_7	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_8	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_9	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_1	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_10	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_11	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_12	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_13	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_14	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_15	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_16	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_17	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_18	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_19	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_2	', CHR (9), '')),
             TRIM (REPLACE ('	defer	', CHR (9), '')),
             TRIM (REPLACE ('	defer	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_20	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_21	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_22	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_23	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_24	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_25	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_26	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_27	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_28	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_29	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_3	', CHR (9), '')),
             TRIM (REPLACE ('	ENABLE	', CHR (9), '')),
             TRIM (REPLACE ('	ENABLE	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_30	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_31	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_4	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_5	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_6	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_7	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_8	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_dest_state_9	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_duplex_dest	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_format	', CHR (9), '')),
             TRIM (REPLACE ('	%t_%s_%r.dbf	', CHR (9), '')),
             TRIM (REPLACE ('	%t_%s_%r.dbf	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_local_first	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_max_processes	', CHR (9), '')),
             TRIM (REPLACE ('	8	', CHR (9), '')),
             TRIM (REPLACE ('	8	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_min_succeed_dest	', CHR (9), '')),
             TRIM (REPLACE ('	1	', CHR (9), '')),
             TRIM (REPLACE ('	1	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_start	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_archive_trace	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_buffer	', CHR (9), '')),
             TRIM (REPLACE ('	20946944	', CHR (9), '')),
             TRIM (REPLACE ('	20946944	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_checkpoint_interval	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_checkpoint_timeout	', CHR (9), '')),
             TRIM (REPLACE ('	1800	', CHR (9), '')),
             TRIM (REPLACE ('	1800	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_checkpoints_to_alert	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	log_file_name_convert	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	max_dispatchers	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	max_dump_file_size	', CHR (9), '')),
             TRIM (REPLACE ('	104857600	', CHR (9), '')),
             TRIM (REPLACE ('	104857600	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	max_enabled_roles	', CHR (9), '')),
             TRIM (REPLACE ('	150	', CHR (9), '')),
             TRIM (REPLACE ('	150	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	max_shared_servers	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	memory_max_target	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	memory_target	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_calendar	', CHR (9), '')),
             TRIM (REPLACE ('	GREGORIAN	', CHR (9), '')),
             TRIM (REPLACE ('	GREGORIAN	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_comp	', CHR (9), '')),
             TRIM (REPLACE ('	BINARY	', CHR (9), '')),
             TRIM (REPLACE ('	BINARY	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_currency	', CHR (9), '')),
             TRIM (REPLACE ('	$	', CHR (9), '')),
             TRIM (REPLACE ('	$	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_date_format	', CHR (9), '')),
             TRIM (REPLACE ('	DD-MON-RR	', CHR (9), '')),
             TRIM (REPLACE ('	DD-MON-RR	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_date_language	', CHR (9), '')),
             TRIM (REPLACE ('	AMERICAN	', CHR (9), '')),
             TRIM (REPLACE ('	AMERICAN	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_dual_currency	', CHR (9), '')),
             TRIM (REPLACE ('	$	', CHR (9), '')),
             TRIM (REPLACE ('	$	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_iso_currency	', CHR (9), '')),
             TRIM (REPLACE ('	AMERICA	', CHR (9), '')),
             TRIM (REPLACE ('	AMERICA	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_language	', CHR (9), '')),
             TRIM (REPLACE ('	AMERICAN	', CHR (9), '')),
             TRIM (REPLACE ('	AMERICAN	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_length_semantics	', CHR (9), '')),
             TRIM (REPLACE ('	CHAR	', CHR (9), '')),
             TRIM (REPLACE ('	CHAR	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_nchar_conv_excp	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_numeric_characters	', CHR (9), '')),
             TRIM (REPLACE ('	.,	', CHR (9), '')),
             TRIM (REPLACE ('	.,	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_sort	', CHR (9), '')),
             TRIM (REPLACE ('	BINARY	', CHR (9), '')),
             TRIM (REPLACE ('	BINARY	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_territory	', CHR (9), '')),
             TRIM (REPLACE ('	AMERICA	', CHR (9), '')),
             TRIM (REPLACE ('	AMERICA	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_time_format	', CHR (9), '')),
             TRIM (REPLACE ('	HH.MI.SSXFF AM	', CHR (9), '')),
             TRIM (REPLACE ('	HH.MI.SSXFF AM	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_time_tz_format	', CHR (9), '')),
             TRIM (REPLACE ('	HH.MI.SSXFF AM TZR	', CHR (9), '')),
             TRIM (REPLACE ('	HH.MI.SSXFF AM TZR	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_timestamp_format	', CHR (9), '')),
             TRIM (REPLACE ('	DD-MON-RR HH.MI.SSXFF AM	', CHR (9), '')),
             TRIM (REPLACE ('	DD-MON-RR HH.MI.SSXFF AM	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	nls_timestamp_tz_format	', CHR (9), '')),
             TRIM (REPLACE ('	DD-MON-RR HH.MI.SSXFF AM TZR	', CHR (9), '')),
             TRIM (REPLACE ('	DD-MON-RR HH.MI.SSXFF AM TZR	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	object_cache_max_size_percent	', CHR (9), '')),
             TRIM (REPLACE ('	10	', CHR (9), '')),
             TRIM (REPLACE ('	10	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	object_cache_optimal_size	', CHR (9), '')),
             TRIM (REPLACE ('	102400	', CHR (9), '')),
             TRIM (REPLACE ('	102400	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	olap_page_pool_size	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	open_cursors	', CHR (9), '')),
             TRIM (REPLACE ('	2000	', CHR (9), '')),
             TRIM (REPLACE ('	2000	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	open_links	', CHR (9), '')),
             TRIM (REPLACE ('	4	', CHR (9), '')),
             TRIM (REPLACE ('	4	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	open_links_per_instance	', CHR (9), '')),
             TRIM (REPLACE ('	4	', CHR (9), '')),
             TRIM (REPLACE ('	4	', CHR (9), '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (
                     REPLACE ('	optimizer_capture_sql_plan_baselines	',
                              CHR (9),
                              '')),
                  TRIM (REPLACE ('	FALSE	', CHR (9), '')),
                  TRIM (REPLACE ('	FALSE	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	optimizer_dynamic_sampling	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	optimizer_features_enable	', CHR (9), '')),
             TRIM (REPLACE ('	11.2.0.3	', CHR (9), '')),
             TRIM (REPLACE ('	11.2.0.3	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	optimizer_index_caching	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	optimizer_index_cost_adj	', CHR (9), '')),
             TRIM (REPLACE ('	100	', CHR (9), '')),
             TRIM (REPLACE ('	100	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	optimizer_mode	', CHR (9), '')),
             TRIM (REPLACE ('	ALL_ROWS	', CHR (9), '')),
             TRIM (REPLACE ('	ALL_ROWS	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	optimizer_secure_view_merging	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));



INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (
                     REPLACE ('	optimizer_use_invisible_indexes	',
                              CHR (9),
                              '')),
                  TRIM (REPLACE ('	FALSE	', CHR (9), '')),
                  TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (
                     REPLACE ('	optimizer_use_pending_statistics	',
                              CHR (9),
                              '')),
                  TRIM (REPLACE ('	FALSE	', CHR (9), '')),
                  TRIM (REPLACE ('	FALSE	', CHR (9), '')));



INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (
                     REPLACE ('	optimizer_use_sql_plan_baselines	',
                              CHR (9),
                              '')),
                  TRIM (REPLACE ('	TRUE	', CHR (9), '')),
                  TRIM (REPLACE ('	TRUE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	os_authent_prefix	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	os_roles	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_adaptive_multi_user	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_automatic_tuning	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_degree_limit	', CHR (9), '')),
             TRIM (REPLACE ('	CPU	', CHR (9), '')),
             TRIM (REPLACE ('	CPU	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_degree_policy	', CHR (9), '')),
             TRIM (REPLACE ('	MANUAL	', CHR (9), '')),
             TRIM (REPLACE ('	MANUAL	', CHR (9), '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (
                     REPLACE ('	parallel_execution_message_size	',
                              CHR (9),
                              '')),
                  TRIM (REPLACE ('	16384	', CHR (9), '')),
                  TRIM (REPLACE ('	16384	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_force_local	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_instance_group	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_io_cap_enabled	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_max_servers	', CHR (9), '')),
             TRIM (REPLACE ('	960	', CHR (9), '')),
             TRIM (REPLACE ('	960	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_min_percent	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_min_servers	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_min_time_threshold	', CHR (9), '')),
             TRIM (REPLACE ('	AUTO	', CHR (9), '')),
             TRIM (REPLACE ('	AUTO	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_server	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_server_instances	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_servers_target	', CHR (9), '')),
             TRIM (REPLACE ('	384	', CHR (9), '')),
             TRIM (REPLACE ('	384	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	parallel_threads_per_cpu	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	permit_92_wrap_format	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	pga_aggregate_target	', CHR (9), '')),
             TRIM (REPLACE ('	2147483648	', CHR (9), '')),
             TRIM (REPLACE ('	2G	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	plscope_settings	', CHR (9), '')),
             TRIM (REPLACE ('	IDENTIFIERS:NONE	', CHR (9), '')),
             TRIM (REPLACE ('	IDENTIFIERS:NONE	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	plsql_ccflags	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	plsql_code_type	', CHR (9), '')),
             TRIM (REPLACE ('	INTERPRETED	', CHR (9), '')),
             TRIM (REPLACE ('	INTERPRETED	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	plsql_debug	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	plsql_optimize_level	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	plsql_v2_compatibility	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	plsql_warnings	', CHR (9), '')),
             TRIM (REPLACE ('	DISABLE:ALL	', CHR (9), '')),
             TRIM (REPLACE ('	DISABLE:ALL	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	pre_page_sga	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	processes	', CHR (9), '')),
             TRIM (REPLACE ('	2000	', CHR (9), '')),
             TRIM (REPLACE ('	2000	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	processor_group_name	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	query_rewrite_enabled	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	query_rewrite_integrity	', CHR (9), '')),
             TRIM (REPLACE ('	enforced	', CHR (9), '')),
             TRIM (REPLACE ('	enforced	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	rdbms_server_dn	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	read_only_open_delayed	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	recovery_parallelism	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	recyclebin	', CHR (9), '')),
             TRIM (REPLACE ('	on	', CHR (9), '')),
             TRIM (REPLACE ('	on	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	redo_transport_user	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	remote_dependencies_mode	', CHR (9), '')),
             TRIM (REPLACE ('	TIMESTAMP	', CHR (9), '')),
             TRIM (REPLACE ('	TIMESTAMP	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	remote_listener	', CHR (9), '')),
             TRIM (REPLACE ('	xdfidrtpp:1521	', CHR (9), '')),
             TRIM (REPLACE ('	xdfidrtpp:1521	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	remote_login_passwordfile	', CHR (9), '')),
             TRIM (REPLACE ('	EXCLUSIVE	', CHR (9), '')),
             TRIM (REPLACE ('	EXCLUSIVE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	remote_os_authent	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	remote_os_roles	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (
                     REPLACE ('	replication_dependency_tracking	',
                              CHR (9),
                              '')),
                  TRIM (REPLACE ('	TRUE	', CHR (9), '')),
                  TRIM (REPLACE ('	TRUE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	resource_limit	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (
                     REPLACE ('	resource_manager_cpu_allocation	',
                              CHR (9),
                              '')),
                  TRIM (REPLACE ('	24	', CHR (9), '')),
                  TRIM (REPLACE ('	24	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	resource_manager_plan	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	result_cache_max_result	', CHR (9), '')),
             TRIM (REPLACE ('	5	', CHR (9), '')),
             TRIM (REPLACE ('	5	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	result_cache_max_size	', CHR (9), '')),
             TRIM (REPLACE ('	42958848	', CHR (9), '')),
             TRIM (REPLACE ('	41952K	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	result_cache_mode	', CHR (9), '')),
             TRIM (REPLACE ('	MANUAL	', CHR (9), '')),
             TRIM (REPLACE ('	MANUAL	', CHR (9), '')));



INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (
                     REPLACE ('	result_cache_remote_expiration	',
                              CHR (9),
                              '')),
                  TRIM (REPLACE ('	0	', CHR (9), '')),
                  TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	resumable_timeout	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	rollback_segments	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	sec_case_sensitive_logon	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	sec_max_failed_login_attempts	', CHR (9), '')),
             TRIM (REPLACE ('	10	', CHR (9), '')),
             TRIM (REPLACE ('	10	', CHR (9), '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (
                     REPLACE ('	sec_protocol_error_further_action	',
                              CHR (9),
                              '')),
                  TRIM (REPLACE ('	CONTINUE	', CHR (9), '')),
                  TRIM (REPLACE ('	CONTINUE	', CHR (9), '')));


INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (
                     REPLACE ('	sec_protocol_error_trace_action	',
                              CHR (9),
                              '')),
                  TRIM (REPLACE ('	TRACE	', CHR (9), '')),
                  TRIM (REPLACE ('	TRACE	', CHR (9), '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (
                     REPLACE ('	sec_return_server_release_banner	',
                              CHR (9),
                              '')),
                  TRIM (REPLACE ('	FALSE	', CHR (9), '')),
                  TRIM (REPLACE ('	FALSE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	serial_reuse	', CHR (9), '')),
             TRIM (REPLACE ('	disable	', CHR (9), '')),
             TRIM (REPLACE ('	disable	', CHR (9), '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (REPLACE ('	service_names	', CHR (9), '')),
                  TRIM (
                     REPLACE (
                        '	XSXTPCNE_JOBS, XSPFID_XTH, XSPFCS_143XEN, XSPFCS_143JOBS, XSPFCS_143APP, XSPCNE_JOBS, XSPCNE_142HXPM, XSPCNE_142HAPP, XSPCNE_142HXEN, SYS$XTPCNEXWFDBO.XEN_EVENT_Q.XTPFID, XTPFID, SXTPFID, XTPFID_RTP	',
                        CHR (9),
                        '')),
                  TRIM (
                     REPLACE (
                        '	XSXTPCNE_JOBS, XSPFID_XTH, XSPFCS_143XEN, XSPFCS_143JOBS, XSPFCS_143APP, XSPCNE_JOBS, XSPCNE_142HXPM, XSPCNE_142HAPP, XSPCNE_142HXEN, SYS$XTPCNEXWFDBO.XEN_EVENT_Q.XTPFID, XTPFID, SXTPFID, XTPFID_RTP	',
                        CHR (9),
                        '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (REPLACE ('	service_names	', CHR (9), '')),
                  TRIM (
                     REPLACE (
                        '	XSPFPS_151XPM, XSPFPS_151XEN, XSPFPS_151APP, XSPFIC_XEN, XSPFIC_APP, SYS$XTCPFCSXWFDBO.XEN_EVENT_Q.XTPFID, XTPFID, SXTPFID, XTPFID_RTP, XSPFPS_JOBS	',
                        CHR (9),
                        '')),
                  TRIM (
                     REPLACE (
                        '	XSPFPS_151XPM, XSPFPS_151XEN, XSPFPS_151APP, XSPFIC_XEN, XSPFIC_APP, SYS$XTCPFCSXWFDBO.XEN_EVENT_Q.XTPFID, XTPFID, SXTPFID, XTPFID_RTP, XSPFPS_JOBS	',
                        CHR (9),
                        '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	session_cached_cursors	', CHR (9), '')),
             TRIM (REPLACE ('	50	', CHR (9), '')),
             TRIM (REPLACE ('	50	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	session_max_open_files	', CHR (9), '')),
             TRIM (REPLACE ('	10	', CHR (9), '')),
             TRIM (REPLACE ('	10	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	sessions	', CHR (9), '')),
             TRIM (REPLACE ('	3024	', CHR (9), '')),
             TRIM (REPLACE ('	3024	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	sga_max_size	', CHR (9), '')),
             TRIM (REPLACE ('	17179869184	', CHR (9), '')),
             TRIM (REPLACE ('	16G	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	sga_target	', CHR (9), '')),
             TRIM (REPLACE ('	12884901888	', CHR (9), '')),
             TRIM (REPLACE ('	12G	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	shadow_core_dump	', CHR (9), '')),
             TRIM (REPLACE ('	partial	', CHR (9), '')),
             TRIM (REPLACE ('	partial	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	shared_memory_address	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	shared_pool_reserved_size	', CHR (9), '')),
             TRIM (REPLACE ('	2147483648	', CHR (9), '')),
             TRIM (REPLACE ('	2G	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	shared_pool_size	', CHR (9), '')),
             TRIM (REPLACE ('	4294967296	', CHR (9), '')),
             TRIM (REPLACE ('	4G	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	shared_server_sessions	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	shared_servers	', CHR (9), '')),
             TRIM (REPLACE ('	1	', CHR (9), '')),
             TRIM (REPLACE ('	1	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	skip_unusable_indexes	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	smtp_out_server	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	sort_area_retained_size	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	sort_area_size	', CHR (9), '')),
             TRIM (REPLACE ('	65536	', CHR (9), '')),
             TRIM (REPLACE ('	65536	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	spfile	', CHR (9), '')),
             TRIM (REPLACE ('	#NAME?	', CHR (9), '')),
             TRIM (REPLACE ('	#NAME?	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	sql92_security	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	sql_trace	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	sqltune_category	', CHR (9), '')),
             TRIM (REPLACE ('	DEFAULT	', CHR (9), '')),
             TRIM (REPLACE ('	DEFAULT	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	standby_archive_dest	', CHR (9), '')),
             TRIM (REPLACE ('	?/dbs/arch	', CHR (9), '')),
             TRIM (REPLACE ('	?/dbs/arch	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	standby_file_management	', CHR (9), '')),
             TRIM (REPLACE ('	AUTO	', CHR (9), '')),
             TRIM (REPLACE ('	AUTO	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	star_transformation_enabled	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	statistics_level	', CHR (9), '')),
             TRIM (REPLACE ('	TYPICAL	', CHR (9), '')),
             TRIM (REPLACE ('	TYPICAL	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	streams_pool_size	', CHR (9), '')),
             TRIM (REPLACE ('	67108864	', CHR (9), '')),
             TRIM (REPLACE ('	64M	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	tape_asynch_io	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	thread	', CHR (9), '')),
             TRIM (REPLACE ('	1	', CHR (9), '')),
             TRIM (REPLACE ('	1	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	thread	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')),
             TRIM (REPLACE ('	2	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	timed_os_statistics	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')),
             TRIM (REPLACE ('	0	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	timed_statistics	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	trace_enabled	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	tracefile_identifier	', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')),
             TRIM (REPLACE ('		', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	transactions	', CHR (9), '')),
             TRIM (REPLACE ('	3326	', CHR (9), '')),
             TRIM (REPLACE ('	3326	', CHR (9), '')));



INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (
                     REPLACE ('	transactions_per_rollback_segment	',
                              CHR (9),
                              '')),
                  TRIM (REPLACE ('	5	', CHR (9), '')),
                  TRIM (REPLACE ('	5	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	undo_management	', CHR (9), '')),
             TRIM (REPLACE ('	AUTO	', CHR (9), '')),
             TRIM (REPLACE ('	AUTO	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	undo_retention	', CHR (9), '')),
             TRIM (REPLACE ('	86400	', CHR (9), '')),
             TRIM (REPLACE ('	86400	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	undo_tablespace	', CHR (9), '')),
             TRIM (REPLACE ('	ESUNDO01	', CHR (9), '')),
             TRIM (REPLACE ('	ESUNDO01	', CHR (9), '')));



INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	use_indirect_data_buffers	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')),
             TRIM (REPLACE ('	FALSE	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	use_large_pages	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')),
             TRIM (REPLACE ('	TRUE	', CHR (9), '')));



INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (REPLACE ('	user_dump_dest	', CHR (9), '')),
                  TRIM (
                     REPLACE (
                        '	/xdfidrtpp/oracle/diag/rdbms/xtpfid_rtp/XTPFID1/trace	',
                        CHR (9),
                        '')),
                  TRIM (
                     REPLACE (
                        '	/xdfidrtpp/oracle/diag/rdbms/xtpfid_rtp/XTPFID1/trace	',
                        CHR (9),
                        '')));

INSERT INTO initora_parameters_table
        VALUES (
                  initora_parameters_table_seq.NEXTVAL,
                  TRIM (REPLACE ('	user_dump_dest	', CHR (9), '')),
                  TRIM (
                     REPLACE (
                        '	/xdfidrtpp/oracle/diag/rdbms/xtpfid_rtp/XTPFID2/trace	',
                        CHR (9),
                        '')),
                  TRIM (
                     REPLACE (
                        '	/xdfidrtpp/oracle/diag/rdbms/xtpfid_rtp/XTPFID2/trace	',
                        CHR (9),
                        '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	utl_file_dir	', CHR (9), '')),
             TRIM (REPLACE ('	*	', CHR (9), '')),
             TRIM (REPLACE ('	*	', CHR (9), '')));


INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	workarea_size_policy	', CHR (9), '')),
             TRIM (REPLACE ('	AUTO	', CHR (9), '')),
             TRIM (REPLACE ('	AUTO	', CHR (9), '')));

INSERT INTO initora_parameters_table
     VALUES (initora_parameters_table_seq.NEXTVAL,
             TRIM (REPLACE ('	xml_db_events	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')),
             TRIM (REPLACE ('	enable	', CHR (9), '')));


