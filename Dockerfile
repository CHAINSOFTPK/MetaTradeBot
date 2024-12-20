# Prepare source code.
FROM EA31337/ea-tester:dev as EA31337-ea
# Adjust the user's UID.
ARG UID=1001
USER root
RUN usermod -u $UID ubuntu
# Copy files.
USER ubuntu
COPY --chown=ubuntu:root ./ /opt/EA
# Download MTE.
RUN curl -LO "https://github.com/EA31337/MT-Platforms/releases/download/5.0.0.2361/mt-5.0.0.2361.zip" && \
    unzip -q -- *.zip && \
    cp -v -- */metaeditor*.exe /opt/EA

# Build Lite version.
FROM EA31337-ea as EA31337-lite
WORKDIR /opt/EA
RUN make Lite && \
    make Lite-Release && \
    make Lite-Backtest && \
    make Lite-Optimize

# Build Advanced version.
FROM EA31337-ea as EA31337-advanced
WORKDIR /opt/EA
RUN make Advanced && \
    make Advanced-Release && \
    make Advanced-Backtest && \
    make Advanced-Optimize

# Build Rider version.
FROM EA31337-ea as EA31337-rider
WORKDIR /opt/EA
RUN make Rider && \
    make Rider-Release && \
    make Rider-Backtest && \
    make Rider-Optimize

# Build all versions.
FROM EA31337-ea as EA31337
WORKDIR /opt/EA
COPY --from=EA31337-lite --chown=ubuntu:root "/opt/EA/*.ex?" "/opt/EA/"
COPY --from=EA31337-advanced --chown=ubuntu:root "/opt/EA/*.ex?" "/opt/EA/"
COPY --from=EA31337-rider --chown=ubuntu:root "/opt/EA/*.ex?" "/opt/EA/"

# Build-time metadata as defined at http://label-schema.org
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="EA31337" \
      org.label-schema.description="Multi-strategy advanced trading robot for Forex." \
      org.label-schema.url="https://github.com/EA31337/EA31337" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/EA31337/EA31337" \
      org.label-schema.vendor="FX31337" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0"

# EURUSD 2017
FROM EA31337/ea-tester:EURUSD-2017-DS as EA31337-eurusd-2017
# Adjust the user's UID.
ARG UID=1001
USER root
RUN usermod -u $UID ubuntu
# Copy EA files.
USER ubuntu
COPY --from=EA31337 --chown=ubuntu:root "/opt/EA" "/opt/EA"

# EURUSD 2018
FROM EA31337/ea-tester:EURUSD-2018-DS as EA31337-eurusd-2018
# Adjust the user's UID.
ARG UID=1001
USER root
RUN usermod -u $UID ubuntu
# Copy EA files.
USER ubuntu
COPY --from=EA31337 --chown=ubuntu:root "/opt/EA" "/opt/EA"

# EURUSD 2019
FROM EA31337/ea-tester:EURUSD-2019-DS as EA31337-eurusd-2019
# Adjust the user's UID.
ARG UID=1001
USER root
RUN usermod -u $UID ubuntu
# Copy EA files.
USER ubuntu
COPY --from=EA31337 --chown=ubuntu:root "/opt/EA" "/opt/EA"
