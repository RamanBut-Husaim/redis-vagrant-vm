# Vagrant Redis

A simple vagrant redis image based on ubuntu/trusty64 for virtual box driver.

Logs, DB dump and AOF file is mounted to `storage` folder. By default AOF is enabled in `everysec` mode.

In order to make it work [Vagrant](https://www.vagrantup.com/) should be installed.

```shell
vagrant up

vagrant halt
```