[![Build Status - Master](https://travis-ci.org/juju4/ansible-ooniprobe.svg?branch=master)](https://travis-ci.org/juju4/ansible-ooniprobe)
[![Build Status - Devel](https://travis-ci.org/juju4/ansible-ooniprobe.svg?branch=devel)](https://travis-ci.org/juju4/ansible-ooniprobe/branches)
[![No Maintenance Intended](http://unmaintained.tech/badge.svg)](http://unmaintained.tech/)
# DEPRECATED/UNMAINTAINED -> archived like upstream project, please use https://github.com/ooni/probe-cli

# ooniprobe ansible role

A simple ansible role to setup ooniprobe, network measurement writing framework aimed at detecting network interference.
* https://ooni.torproject.org
* https://github.com/thetorproject/ooni-probe
* https://github.com/ooni/probe-legacy

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 1.9
 * 2.0
 * 2.2
 * 2.5

### Operating systems

Tested on Ubuntu 14.04, 16.04, 18.04 and centos7

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.ooniprobe
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).

Once you ensured all necessary roles are present, You can test with:
```
$ cd /path/to/roles/juju4.ooniprobe
$ kitchen verify
$ kitchen login
```
or
```
$ cd /path/to/roles/juju4.ooniprobe/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues

* centos execution fails on cron module: fix in ansible 2.2.0
```
elif os.getlogin() != self.user:\nOSError: [Errno 25] Inappropriate ioctl for device\n
```
https://github.com/ansible/ansible-modules-core/pull/4777

* legacy python implementation last update from 2018 and not supporting python3

## License

BSD 2-clause


