FROM pluto as builder

USER root
RUN apt-get update && apt-get install -y clang
RUN chown -R ${USER} /home/pluto/notebooks

USER $USER
WORKDIR $USER_HOME_DIR

COPY trace-compile.sh .
RUN ./trace-compile.sh

COPY precompile.sh .
RUN ./precompile.sh

FROM pluto

RUN echo ${NOTEBOOK_DIR}

COPY --from=builder ${USER_HOME_DIR}/precompile.so ${USER_HOME_DIR}/precompile.so
# COPY --from=builder /usr/local/julia/lib/julia/sys.so ${USER_HOME_DIR}/precompile.so
# RUN julia -J${USER_HOME_DIR}/precompile.so prestartup.jl

CMD julia -J${USER_HOME_DIR}/precompile.so ${USER_HOME_DIR}/start_pluto.jl
# CMD julia /home/pluto/startup.jl


