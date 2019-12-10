# vdirsyncer-docker
Docker container running a cronjob with vdirsyncer (https://vdirsyncer.pimutils.org) and merge_ics (https://github.com/pschlieker/merge_ics).
## Feautures
- Flexible timing of cronjob
- Script to be run before and after execution of vdirsyncer sync
- Includes merge_ics which allows to merge multiple Calendars into one and can be called via the pre-script. The merged calendar can be then synced with vdirsyncer.

## Settings
see `docker-compose-example.yml` for an example
- Time Schedule of Cronjob as environment variable. If not set vdirsyncer is run every 10 minutes. `CRONTIMETABLE=*/15 * * * *`
- Vdirsyncer config file as volume `/config`
- Pre- or Postscript to be run if existing before and after the syncronisation as volume `/pre.sh` and `/post.sh`