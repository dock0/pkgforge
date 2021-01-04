FROM docker.pkg.github.com/dock0/build/build:20210104-cc69c1a
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm ruby
RUN gem install --no-user-install --no-document pkgforge targit
CMD ["pkgforge", "build"]
