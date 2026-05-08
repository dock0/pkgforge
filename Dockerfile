FROM ghcr.io/dock0/build:20260508-f9b9f47
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm ruby
RUN gem install --no-user-install --no-document pkgforge targit erb base64
RUN git config --global --add safe.directory /opt/build
RUN git config --global --add safe.directory /opt/build/.git
CMD ["pkgforge", "build"]
