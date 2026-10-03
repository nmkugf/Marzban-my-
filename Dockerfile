FROM gozargah/marzban:latest

CMD ["bash", "-c", "alembic upgrade head; sed -i \"s/bind_args\\['host'\\] = '127.0.0.1'/bind_args['host'] = '0.0.0.0'/\" /code/main.py; python main.py"]
