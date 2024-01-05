#FROM gcr.io/distroless/nodejs:18
#COPY ./app/dist /opt/app/
#
#CMD ["/opt/app/index.js", "/var/lib/fritzbox-to-mqtt-gw/config.json"]

FROM node:18.12-alpine
COPY app /opt/app/
WORKDIR /opt/app/
RUN npm run build
WORKDIR /opt/app/dist/

CMD ["node", "index.js", "/var/lib/fritzbox-to-mqtt-gw/config.json"]
