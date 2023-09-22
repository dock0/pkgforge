FROM ghcr.io/dock0/build:20230922-80d4e8b
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm ruby
RUN gem install --no-user-install --no-document pkgforge targit
RUN git config --global --add safe.directory /opt/build
CMD ["pkgforge", "build"]
