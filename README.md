#Docker Couchpotato#
[![Build Status](https://jenkins.dray.be/buildStatus/icon?job=docker_couchpotato)](https://jenkins.dray.be/job/docker_couchpotato)

This is a docker image for Couchpotato stable running on an Arch linux container

##Release schedule##
A new release will be made shortly after each stable couchpotato release (a couple days at most).

##Usage##
Couchpotato will run on port 5050 by default. (Use `-p 5050:5050`).
Couchpotato configuration will be read from /config. Bind this directory to your host to make configuration changes permanent.
If you want couchpotato to rename your downloaded files, you will also need to bind mount both your downloads folder and destination movies folder; locations are then configured via the webui.
