PATH=$PATH:~/Library/Haskell/bin:$HOME/bin
export PATH
# source /opt/boxen/env.sh
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_51.jdk/Contents/Home

##
# Your previous /Users/jabaraster/.bash_profile file was backed up as /Users/jabaraster/.bash_profile.macports-saved_2014-11-26_at_01:58:44
##

# MacPorts Installer addition on 2014-11-26_at_01:58:44: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
export PATH=$PATH:/Users/jabaraster/.nodebrew/current/bin
# Finished adapting your PATH environment variable for use with MacPorts.

export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/jabaraster/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1
export GIT_RCMS=/Users/jabaraster/Documents/Develop/Docker/rcms

export GOPATH=/Users/jabaraster/Documents/Develop/Go/myproject
export PATH=$PATH:$GOPATH/bin
export GOROOT=`go env GOROOT`

launchctl setenv GOROOT /usr/local/go
launchctl setenv GOPATH ~/Develop/Go/myproject

# The next line updates PATH for the Google Cloud SDK.
source '/Users/jabaraster/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/Users/jabaraster/google-cloud-sdk/completion.bash.inc'
