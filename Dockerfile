# Используйте официальный образ Python как родительский образ
FROM python:3.8

# Установите рабочий каталог в контейнере
WORKDIR /usr/src/app

# Установите зависимости для OpenCV
RUN apt-get update && apt-get install -y libgl1-mesa-glx && rm -rf /var/lib/apt/lists/*

# Скопируйте файлы зависимостей и установите их
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Скопируйте все файлы, кроме тех, что в .dockerignore
COPY . .

# Команда для запуска приложения
CMD ["python", "./traffic_sign.py"]
