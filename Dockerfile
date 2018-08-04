FROM pyramation/postgres-plv8

MAINTAINER Dan Lynch <pyramation@gmail.com>

RUN git clone https://github.com/theory/pgtap.git \
   && cd pgtap \
   && make \
   && make installcheck \
   && make install 
