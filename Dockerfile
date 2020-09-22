FROM docker.pkg.github.com/dock0/build/build:20200922-2b3f8b6
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm ruby
RUN gem install --no-user-install --no-document pkgforge targit
CMD ["pkgforge", "build"]
