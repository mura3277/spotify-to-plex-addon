FROM jjdenhertog/spotify-to-plex

ENV LANG C.UTF-8

COPY run.sh /
RUN chmod a+x /run.sh

ENTRYPOINT ["/run.sh"]
CMD ["supervisord", "-n", "-c", "/etc/supervisor/conf.d/supervisord.conf"]