FROM public.ecr.aws/docker/library/python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
ENV PORT=80 DB_PATH=/data/students.db
EXPOSE 80
CMD ["python", "app.py"]
