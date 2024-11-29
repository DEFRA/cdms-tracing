
FROM grafana/otel-lgtm AS cdms-grafana-dashboard

ARG PORT=8085
ENV PORT=${PORT}
EXPOSE ${PORT}

# CDP PLATFORM HEALTHCHECK REQUIREMENT
RUN dnf install curl -y --allowerasing

# Required to route UI and data feed ports to grafana
RUN dnf install nginx -y --allowerasing
COPY routes.conf /otel-lgtm/routes.conf

COPY start.sh /otel-lgtm/start.sh

WORKDIR "/otel-lgtm"

CMD ["./start.sh"]
