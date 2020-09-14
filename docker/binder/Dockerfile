FROM pluto-precompiled

USER root
RUN apt-get update \
    && apt-get -y install --no-install-recommends python3-pip \
    && pip3 install --no-cache-dir -vU setuptools

RUN pip3 install --no-cache-dir notebook==5.* \
    && pip3 install --no-cache-dir jupyter-server-proxy


COPY . ${USER_HOME_DIR}
# RUN chown -R ${USER} ${USER_HOME_DIR}

USER ${USER}
WORKDIR ${USER_HOME_DIR}

RUN pip3 install .
EXPOSE 8080

# CMD [ "julia " ]
