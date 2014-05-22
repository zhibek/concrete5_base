Concrete5 Base Installation
===========================

Installation
------------

Clone a copy of this repo and proceed with the setup steps below.


Development Environment
-----------------------

Use *vagrant* to get up and running:

$ cd vagrant
$ vagrant up


Database
--------

Import post-install dump into *mysql*:

$ cd vagrant
$ vagrant up
$ vagrant ssh
$ cd /var/www
$ sudo mysql -p0000 concrete5base < sql/concrete5base.sql


Hosts
-----

Add the following line to your hosts file:

192.168.33.10 concretebase.localhost


Browse
------

Browse to the following page to see the homepage:

http://concretebase.localhost/