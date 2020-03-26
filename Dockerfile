FROM alpine:3.9
RUN apk add bash gettext bc
RUN mkdir /opt/app
WORKDIR /opt/app

# add scripts
ADD ./calcSMAPE /opt/app/
ADD ./createExperiments /opt/app/
ADD ./runExperiments /opt/app/
ADD ./entrypoint /opt/app/
ADD ./extractResults /opt/app

# add content
ADD ./scenarios /opt/app/scenarios
ADD ./bin /opt/app/bin

ENTRYPOINT ["./entrypoint"]