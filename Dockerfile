
FROM mcr.microsoft.com/dotnet/nightly/aspire-dashboard:8.0.0-preview.6 AS cdms-aspire-dashboard

ENV DOTNET_DASHBOARD_UNSECURED_ALLOW_ANONYMOUS='true'
EXPOSE 18888 18889

ENV PORT 8085
