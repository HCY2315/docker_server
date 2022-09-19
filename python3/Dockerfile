FROM alpine:3.10

RUN apk update
RUN apk add --no-cache python3 python3-dev gcc g++ py-pip  

RUN pip install --upgrade pip &&\
    touch /start.sh &&\ 
    touch /api.log &&\ 
    echo "tail -f /api.log" > /start.sh

CMD ["sh", "/start.sh"]
