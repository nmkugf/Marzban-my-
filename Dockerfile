FROM gozargah/marzban:latest

CMD ["bash", "-c", "sed -i \"s/bind_args\\['host'\\] = '127.0.0.1'/bind_args['host'] = '0.0.0.0'/\" /code/main.py && alembic upgrade head && python main.py"]
