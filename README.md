[![Actions Status - Master](https://github.com/juju4/ansible-volatility/workflows/AnsibleCI/badge.svg)](https://github.com/juju4/ansible-volatility/actions?query=branch%3Amaster)
[![Actions Status - Devel](https://github.com/juju4/ansible-volatility/workflows/AnsibleCI/badge.svg?branch=devel)](https://github.com/juju4/ansible-volatility/actions?query=branch%3Adevel)

# volatility ansible role

Ansible role to setup volatility
http://www.volatilityfoundation.org/

Setup is from source on Unix, binary on windows

## Requirements & Dependencies

### Ansible
It was tested on the following versions:
 * 2.0
 * 2.2

### Operating systems

Tested with 18.04, 20.04, 22.04 and centos7

## Example Playbook

Just include this role in your list.
For example

```
- host: all
  roles:
    - juju4.volatility
```

## Variables

Nothing specific for now.

## Continuous integration

This role has a travis basic test (for github), more advanced with kitchen and also a Vagrantfile (test/vagrant).
Default kitchen config (.kitchen.yml) is lxd-based, while (.kitchen.vagrant.yml) is vagrant/virtualbox based.

Once you ensured all necessary roles are present, You can test with:
```
$ gem install kitchen-ansible kitchen-lxd_cli kitchen-sync kitchen-vagrant
$ cd /path/to/roles/juju4.volatility
$ kitchen verify
$ kitchen login
$ KITCHEN_YAML=".kitchen.vagrant.yml" kitchen verify
```
or
```
$ cd /path/to/roles/juju4.volatility/test/vagrant
$ vagrant up
$ vagrant ssh
```

## Troubleshooting & Known issues


## License

BSD 2-clause
