#!/bin/bash
#CURDIR=$(cd `dirname $0`; pwd)
pushd ../../ > /dev/null

ansible-playbook -i hosts site.yml  --user=root --extra-vars "ansible_sudo_pass=root" &

popd > /dev/null