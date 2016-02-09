---
title: Test
---

## Building Quassel core with PostgreSQL support on Ubuntu Hardy

These instructions tell how to build the latest quassel core for your Ubuntu 8.04 Hardy Heron server. PostgreSQL database backend will be used instead of the default SQLite backend, since it scales better with many users and much of history. 

Make sure repositores are up-to-date
<pre>
sudo apt-get update
</pre>

Install required dependencies and build tools
<pre>
sudo apt-get install git-core postgresql-8.3 qt4-dev-tools libqt4-dev libqt4-sql-psql screen
</pre>

Pull out source codes
<pre>
git clone git://gitorious.org/quassel/quassel.git
</pre>

Build it
<pre>
cd quassel
cmake .
</pre>

Setup PostgreSQL database master user

"Follow these instructions":https://help.ubuntu.com/community/PostgreSQL

Setup quassel PostgreSQL database:

<pre>
sudo -i
sudo -u postgres psql
postgres=# CREATE USER quassel ENCRYPTED PASSWORD 'somepassword';
CREATE ROLE
postgres=# CREATE DATABASE quassel WITH OWNER quassel ENCODING 'UTF8';
CREATE DATABASE
</pre>

Create SSL certificate:

<pre>
openssl req -x509 -nodes -days 365 -newkey rsa:1024 -keyout ~/.config/quassel-irc.org/quasselCert.pem -out ~/.config/quassel-irc.org/quasselCert.pem
</pre>

## Running Core




