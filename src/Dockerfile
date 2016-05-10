# Base Arch with base-devel and yaourt
FROM base/devel

#FROM python:2.7.9

MAINTAINER Armando Ibarra, armandoibarra1@gmail.com

RUN curl -o /etc/pacman.d/mirrorlist "https://www.archlinux.org/mirrorlist/?country=all&protocol=https&ip_version=6&use_mirror_status=on" && \
  sed -i 's/^#//' /etc/pacman.d/mirrorlist

ONBUILD RUN pacman-key --populate && \
  pacman-key --refresh-keys && \
  pacman -Sy --noprogressbar --noconfirm && \
  pacman -S --force openssl --noconfirm && \
  pacman -S pacman --noprogressbar --noconfirm && \
  pacman-db-upgrade && \
  pacman -Syyu --noprogressbar --noconfirm

# Installing deps using pacman

RUN pacman -Syyu --needed --noconfirm && \
        pacman -S --needed --noconfirm nodejs phantomjs rsync && \
        npm install

RUN pacman -Sqyu --noconfirm --needed openssh && \
    systemctl enable sshd

# configure ssh
RUN sed -i \
        -e 's/^#*\(PermitRootLogin\) .*/\1 yes/' \
        -e 's/^#*\(PasswordAuthentication\) .*/\1 yes/' \
        -e 's/^#*\(PermitEmptyPasswords\) .*/\1 yes/' \
        -e 's/^#*\(UsePAM\) .*/\1 no/' \
        /etc/ssh/sshd_config

# Installing deps using Yaourt

RUN yaourt -Sy --noconfirm python2-virtualenvwrapper

ADD sudoers /etc/sudoers.d/docker

RUN adduser -g 100 -u 1000 -d /docker docker

USER docker

WORKDIR /

RUN pip install -U setuptools

RUN git clone git@github.com:flaketill/flaketill-says.git
WORKDIR /flaketill-says/src
#RUN pip install -e .
RUN pip install -r requirements.txt

#RUN chmod +x /test.sh

#CMD ["/bin/sh", "-c"]  

ENTRYPOINT ["/usr/bin/flaketill-says", "console"]      

EXPOSE 1522
