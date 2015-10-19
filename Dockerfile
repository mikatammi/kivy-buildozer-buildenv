FROM  ubuntu:14.04.3

ENV   DEBIAN_FRONTEND noninteractive

RUN   apt-get -y update && \
  apt-get -y install software-properties-common && \
  add-apt-repository -y ppa:kivy-team/kivy && \
  dpkg --add-architecture i386 && \
  apt-get -y update && \
  apt-get -y dist-upgrade && \
  apt-get -y install build-essential ccache git libncurses5:i386 libstdc++6:i386 python2.7 python2.7-dev openjdk-7-jdk unzip zlib1g-dev zlib1g:i386 python-kivy python-pip zlib1g-dev cython wget && \
  pip install buildozer && \
  groupadd buildozer && useradd buildozer -g buildozer -d /home/buildozer -m
ENV   HOME /home/buildozer
USER  buildozer
