FROM python:3.7
COPY . /CODE
WORKDIR /CODE
EXPOSE 6800
RUN pip install -r require.txt
CMD scrapyd
