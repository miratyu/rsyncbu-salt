rsync:
    pkg:
        - installed

/usr/bin/rsyncbu:
    file.managed:
        - source: salt://buunit/rsyncbu.sh
        - mode: 755
        - user: root
        - group: root

rsyncbu update /home/atyu/workdir/:
    cron.present:
        - user: root
        - minute: 0
        - require:
            - file: /usr/bin/rsyncbu
