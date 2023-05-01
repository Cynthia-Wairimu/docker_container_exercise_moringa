FROM python
VOLUME /MypythonAppVol
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
COPY . .
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
EXPOSE 5000
CMD ["python", "manage.py", "runserver", "0.0.0.0:5000"]
