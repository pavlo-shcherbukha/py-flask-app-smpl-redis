# py-flask-app-smpl-redis
Flask app та його взаємодія з redis

В якосіт шаблона викорситано [ python-sample-vscode-flask-tutorial](https://github.com/microsoft/python-sample-vscode-flask-tutorial)


## Підготовка до запуску локально

- створити віртуальну environment

```bash
py -m venv env
```

- ЗАвантажити потрібні бібліотеки


```bash

py -m pip install -r requirements.txt

```

##  Запуск локально в developent mode

- Створити env variable в terminal VSC

    * PowerShell
```bash
$env:FLASK_APP="hello_app.webapp"

$env:FLASK_APP

```

    * CMD
```bash
SET FLASK_APP=hello_app.webapp

ECHO %FLASK_APP%

```

Для запуска в режимі debug  налаштувати  **.vscode/launch.json**


```json
      {
            "name": "Python: Flask",
            "type": "python",
            "request": "launch",
            "module": "flask",
            "env": {
                "FLASK_APP": "hello_app.webapp",
                "FLASK_ENV": "development",
                "FLASK_DEBUG": "0"
            },
            "args": [
                "run",
                "--no-debugger",
                "--no-reload"

            ],
            "jinja": true
        }

```


- Запуск в режимі development

```bash
python -m flask run
```

- Запуск в режимі DEBUG

 Запуск описано за лінком: [Створення найпростішого скрипта для flask app та запуск applicaiton з індивідуальн ою назвою в режимі DEBUG](https://pavlo-shcherbukha.github.io/posts/2022-09-02/python-flask-1/#p-6).


Сервіс стартує локально за адресою: http://localhost:5000

Rest API  доступне  за адресою: http://localhost:5000/api



## Розроблені API

### Health check GET  /api/health

Використовується для перевірки працездатності сервісу

Повертає JSON

```json
{
  "success": true
}
```

