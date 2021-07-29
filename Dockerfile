FROM docker.pkg.github.com/dock0/build/build:20210729-9b8b6fc
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm ruby
RUN gem install --no-user-install --no-document pkgforge targit
CMD ["pkgforge", "build"]
