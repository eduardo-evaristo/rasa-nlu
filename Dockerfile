FROM python:3.10-bookworm

WORKDIR /app/

COPY . .

RUN pip install --no-cache-dir -U pip && \
    pip install rasa

RUN rasa train nlu

EXPOSE 5005

CMD rasa run --enable-api -m "$(ls models/nlu-* | head -n 1)"
