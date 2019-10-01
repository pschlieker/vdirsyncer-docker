# vdirsyncer-docker
Docker container running a cronjob with vdirsyncer (https://vdirsyncer.pimutils.org)
## Feautures
- Flexible timing of cronjob
- Script to be run before and after execution of vdirsyncer sync

## Settings
see `docker-compose-example.yml` for an example
- Time Schedule of Cronjob as environment variable. If not set vdirsyncer is run every 10 minutes. `CRONTIMETABLE=*/15 * * * *`
- Vdirsyncer config file as volume `/config`
- Pre- or Postscript to be run if existing before and after the syncronisation as volume `/pre.sh` and `/post.sh`