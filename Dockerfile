FROM python:3

WORKDIR /flask

COPY . /flask/

RUN pip install --no-cache-dir --upgrade pip && pip install --no-cache-dir -r requirements.txt

EXPOSE 5080


CMD ["python", "/flask/app.py", "--host", "0.0.0.0", "--port", "5000"]