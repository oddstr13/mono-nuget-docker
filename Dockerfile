FROM mono:6.8

ARG NUGET_VERSION=5.6.0

RUN curl -L -o nuget.exe https://dist.nuget.org/win-x86-commandline/v${NUGET_VERSION}/nuget.exe; \
    mkdir /.config; \
    chmod 0777 /.config

ENTRYPOINT ["mono", "nuget.exe"]
