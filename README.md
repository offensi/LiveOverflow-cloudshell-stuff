# LiveOverflow-cloudshell-stuff
Some bash scripts and other tools that are useful when performing research on Google's Cloudshell

### 1-escape-from-cloudshell.sh
Copy and paste the lines on your Cloudshell terminal. 
This script will provide you with the 'LiveOverflow-container' that has host-based networking configured. Furthermore it runs in privileged mode and mounts the root filesystem of the host under /rootfs


### 2-reconfigure-kubernetes.sh
Copy and paste the lines in this file to your terminal while having a session opened on the 'LiveOverflow-container' (as described above). This will reconfigure the kubernetes cluster. After restarting all containers inside the cluster will run in privileged mode. 

### Overview/ 
Basic high level overview 


[![Open in Cloud Shell](https://gstatic.com/cloudssh/images/open-btn.png)](https://console.cloud.google.com/cloudshell/open?git_repo=https://github.com/offensi/LiveOverflow-cloudshell-stuff&tutorial=README.md)

#### Contact

- e-mail : wtm@offensi.com
- website: https://offensi.com
- twitter: https://twitter.com/wtm_offensi
