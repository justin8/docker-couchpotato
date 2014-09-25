FROM base/archlinux
MAINTAINER justin@dray.be

RUN curl -sO https://repo.dray.be/dray-repo-0.7-1-any.pkg.tar.xz
RUN pacman -U --noconfirm dray-repo-0.7-1-any.pkg.tar.xz
RUN pacman -Syq --noprogressbar --noconfirm couchpotato

VOLUME "/config"

EXPOSE 5050
CMD /usr/bin/couchpotato --config_file "/config/config.ini" --datadir "/config" --console_log
