FROM    testing/python:2.6

RUN     mkdir /code
VOLUME  /code
WORKDIR /code

ENTRYPOINT /bin/sh

# Install dependencies
RUN     pip install -U \
            Jinja2 \
            pep8 \
            pyyaml

COPY    run_tests.sh /usr/bin
ENTRYPOINT  /usr/bin/run_tests.sh
