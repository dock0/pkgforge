FROM ghcr.io/dock0/build:20220520-78f9a36
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm ruby
RUN gem install --no-user-install --no-document pkgforge targit
RUN git config --global --add safe.directory /opt/build
CMD ["pkgforge", "build"]
