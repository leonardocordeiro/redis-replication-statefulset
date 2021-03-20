FROM redis:latest
COPY configure.sh /data
WORKDIR /data
ENTRYPOINT [ "bash" ]
CMD [ "configure.sh" ]