FROM justin8/archlinux
MAINTAINER justin@dray.be

RUN pacman -Syq --noconfirm couchpotato && rm -rf /var/cache/pacman/pkg/*

VOLUME "/config"

EXPOSE 5050
CMD /usr/bin/couchpotato --config_file "/config/config.ini" --data_dir "/config" --console_log
