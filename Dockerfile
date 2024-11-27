
FROM mcr.microsoft.com/dotnet/nightly/aspire-dashboard:8.0.0-preview.6 AS cdms-aspire-dashboard

EXPOSE 18888 18889

ENV DOTNET_DASHBOARD_UNSECURED_ALLOW_ANONYMOUS='true'
