CREATE TABLE ADDRESS (
  ADDRESS_ID NUMBER(19) AUTO_INCREMENT  PRIMARY KEY,
  ADD_ONE VARCHAR(250) NOT NULL,
  ADD_TWO VARCHAR(250),
  CITY VARCHAR(250),
  STATE VARCHAR(250) NOT NULL,
  COUNTRY VARCHAR(250)  NOT NULL,
  ZIP_CODE NUMBER(19) NOT NULL,
  CUSTOMER_ID NUMBER(19) NOT NULL
);

CREATE TABLE BILL (
    BILL_ID NUMBER(19) AUTO_INCREMENT  PRIMARY KEY,
  CUSTOMER_ID NUMBER(19) NOT NULL,
   TAX_RATE NUMBER(17,4) NOT NULL ,
   TOTAL_PRICE NUMBER(17,4) NOT NULL
);

CREATE TABLE CUSTOMER (
  CUSTOMER_ID NUMBER(19) AUTO_INCREMENT  PRIMARY KEY,
  CUSTOMER_NAME VARCHAR(250)  NOT NULL,
  BILL_ID NUMBER(19)  NOT NULL
);

CREATE TABLE PRODUCT (
  PRODUCT_ID NUMBER (19)AUTO_INCREMENT  PRIMARY KEY,
  PRODUCT_NAME VARCHAR(250)  NOT NULL,
  COMPANY VARCHAR(250) ,
  RATE NUMBER(17,4) NOT NULL,
   TOTAL_PRICE NUMBER(17,4) NOT NULL ,
   QUANTITY NUMBER(19) NOT NULL
);

CREATE TABLE USER(
 USER_ID NUMBER(19)AUTO_INCREMENT PRIMARY KEY,
 PASSWORD VARCHAR(250)NOT NULL,
 USER_NAME VARCHAR(250)NOT NULL,
 EMAIL VARCHAR(250)NOT NULL
 );
 
CREATE TABLE FEEDBACK(
 FEEDBACK_ID NUMBER(19)AUTO_INCREMENT PRIMARY KEY,
 FEEDBACK_MESSAGE VARCHAR(250),
 EMAIL VARCHAR(250)NOT NULL
 );