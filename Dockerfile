FROM docker.pkg.github.com/dock0/build/build:latest
MAINTAINER akerl <me@lesaker.org>
RUN gem install --no-user-install --no-document pkgforge targit
CMD ["pkgforge", "build"]
