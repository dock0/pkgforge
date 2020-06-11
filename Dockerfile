FROM docker.pkg.github.com/dock0/build/build:20200611-0b1d1f7
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm ruby
RUN gem install --no-user-install --no-document pkgforge targit
CMD ["pkgforge", "build"]
