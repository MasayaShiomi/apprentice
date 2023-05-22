#!/bin/bash

mysqlimport -u user -p --fields-terminated-by=',' --lines-terminated-by='\r\n' --local internet_tv ./csv/*.csv
