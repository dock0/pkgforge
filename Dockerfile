FROM docker.pkg.github.com/dock0/build/build:20200702-7e82ddd
MAINTAINER akerl <me@lesaker.org>
RUN pacman -S --needed --noconfirm ruby
RUN gem install --no-user-install --no-document pkgforge targit
CMD ["pkgforge", "build"]
