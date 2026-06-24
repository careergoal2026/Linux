# Stage 1
FROM python:3.11 AS builder

WORKDIR /app

COPY requirements.txt .

RUN pip install --user -r requirements.txt

# Stage 2
FROM python:3.11-slim AS runtime

WORKDIR /app

COPY --from=builder /root/.local /root/.local

COPY app.py .

ENV PATH=/root/.local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/go/bin:/snap/bin

CMD ["python3","app.py"]
