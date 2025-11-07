create database MLproject;
use MLproject;

CREATE TABLE train (
  data_time DATE,
  temperature FLOAT,
  wind FLOAT,
  humedity INT,
  rainly FLOAT,
  sunlight FLOAT,
  cooling system INT,
   INT,
);
LOAD DATA LOCAL INFILE 'C:/aws/train.csv'
INTO TABLE train
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 LINES;
select *
from train;