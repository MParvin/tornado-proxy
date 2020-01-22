FROM python:3

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

RUN python setup.py install

CMD python tornado_proxy/proxy.py 8888
