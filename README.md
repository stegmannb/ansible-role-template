# Ansible Template Role

[![License: MIT](https://img.shields.io/github/license/stegmannb/ansible-role-template)](https://github.com/stegmannb/ansible-role-template/blob/master/LICENSE)
[![Continuous Integration](https://github.com/stegmannb/ansible-role-template/actions/workflows/main.yml/badge.svg)](https://github.com/stegmannb/ansible-role-template/actions/workflows/main.yml)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)

## Requirements

The tests require `podman` to be installed and configured on the system.

## Role Variables

A description of the settable variables for this role should go here, including any variables that are in defaults/main.yml, vars/main.yml, and any variables that can/should be set via parameters to the role. Any variables that are read from other roles and/or the global scope (ie. hostvars, group vars, etc.) should be mentioned here as well.

## Dependencies

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

## Example Playbook

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - role: stegmannb.template
           become: true

## License

MIT

## Author Information

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
