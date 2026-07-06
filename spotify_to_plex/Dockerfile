FROM jjdenhertog/spotify-to-plex

RUN apk add --no-cache bash jq

COPY run.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]