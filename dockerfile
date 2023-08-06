FROM nocodb/nocodb:latest
ADD file ... in /
CMD ["/bin/sh"]
WORKDIR /usr/src/app
ENV NC_DOCKER=0.6
ENV NODE_ENV=production
ENV PORT=8080
ENV NC_TOOL_DIR=/usr/app/data/
RUN /bin/sh -c apk --update
COPY /usr/src/lt /usr/src/appEntry/litestream
COPY /usr/src/appEntry/ /usr/src/appEntry/
EXPOSE 8080
ENTRYPOINT ["/usr/bin/dumb-init" "--"]
CMD ["/usr/src/appEntry/start.sh"]
