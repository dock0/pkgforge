FROM ghcr.io/dock0/build:20241224-19a1093
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm ruby
RUN gem install --no-user-install --no-document pkgforge targit
RUN git config --global --add safe.directory /opt/build
RUN git config --global --add safe.directory /opt/build/.git
CMD ["pkgforge", "build"]
