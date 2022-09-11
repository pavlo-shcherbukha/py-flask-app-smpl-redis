
docker run -e GUNICORN_CMD_ARGS="--workers=1 --bind=0.0.0.0:8080 --access-logfile=-" -e APP_MODULE="hello_app.webapp" -p 8081:8080 pshkxml/smplapp-srvc-redis:1.0.1 