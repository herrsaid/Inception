#!/bin/bash
service  mysql start
mysql < tools/test.sql
mysqld