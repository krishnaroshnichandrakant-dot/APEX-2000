FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install streamlit
# Cloud Run provides PORT env variable
CMD ["sh", "-c", "streamlit run app.py --server.port=$PORT --server.address=0.0.0.0"]
