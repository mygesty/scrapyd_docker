FROM python:3.7
COPY . /CODE
WORKDIR /CODE
EXPOSE 6800
RUN pip install -r require.txt
RUN sed -i 's/127.0.0.1/0.0.0.0/g' /usr/local/lib/python3.7/site-packages/scrapyd/default_scrapyd.conf
RUN rm -r ~/.cache/pip
CMD scrapyd
