USE ROLE ACCOUNTADMIN;
CREATE SHARE IF NOT EXISTS OP_TESTING_TEST_SHARE;
USE ROLE SECURITYADMIN;
GRANT USAGE ON DATABASE AVTR_DB_OP_MGMT TO SHARE OP_TESTING_TEST_SHARE;
USE ROLE ACCOUNTADMIN;
ALTER WAREHOUSE IF EXISTS WH_MUDIT_TEST SET RESOURCE_MONITOR = MUDIT_TEST_RM;
USE ROLE ACCOUNTADMIN;
ALTER SHARE IF EXISTS OP_TESTING_TEST_SHARE SET ACCOUNTS = VQNWGIX.JS76115;
USE ROLE SECURITYADMIN;
GRANT USAGE ON SCHEMA AVTR_DB_OP_MGMT.RAW TO SHARE OP_TESTING_TEST_SHARE;
USE ROLE SECURITYADMIN;
GRANT SELECT ON TABLE AVTR_DB_OP_MGMT.RAW.ID TO SHARE OP_TESTING_TEST_SHARE;
USE ROLE SECURITYADMIN;
GRANT SELECT ON VIEW AVTR_DB_OP_MGMT.RAW.COUNT_ID TO SHARE OP_TESTING_TEST_SHARE;
