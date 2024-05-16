# Используем официальный образ Python как родительский образ
FROM python:3.8

# Установим рабочий каталог в контейнере
WORKDIR /usr/src/app

# Установим зависимости для OpenCV
RUN apt-get update && apt-get install -y libgl1-mesa-glx && rm -rf /var/lib/apt/lists/*

# Скопируем файлы зависимостей и установим их
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Скопируем все файлы, кроме тех, что в .dockerignore
COPY . .

# Команда для запуска приложения
CMD ["python", "./traffic_sign.py"]
