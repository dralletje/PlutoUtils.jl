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

EXPOSE 8888

# == This loads pluto immediately when it can, instead of on first request (pfff jupyter server proxy)
# ENTRYPOINT ["sh", "./try-booting-pluto-with-request.sh"]
# CMD jupyter notebook --ip 0.0.0.0 --NotebookApp.token=123
CMD jupyter notebook --ip 0.0.0.0