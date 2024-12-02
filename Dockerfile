
FROM grafana/otel-lgtm AS cdms-grafana-dashboard

WORKDIR "/"

ARG PORT=8085
ENV PORT=${PORT}
EXPOSE ${PORT}

# CDP PLATFORM HEALTHCHECK REQUIREMENT
RUN dnf install curl -y --allowerasing

# Required to route UI and data feed ports to grafana
RUN dnf install nginx -y --allowerasing
COPY routes.conf /routes.conf

COPY --chmod=0755 start.sh /start.sh

#WORKDIR "/otel-lgtm"

CMD ["./start.sh"]
