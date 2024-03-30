#!/usr/bin/python3
from bottle import get, post, request, run, template

tasks = []

@get('/')
def index():
    return template("index", tasks=tasks)

@post('/add')
def add_task():
    task = request.forms.get("task")
    tasks.append(task)
    return index()

@get('/remove/<index:int>')
def remove_task(index):
    del tasks[index]
    return index()

@get('/complete/<index:int>')
def complete_task(index):
    tasks[index] = f'[✔] {tasks[index]}'
    return index()

@get('/clear')
def clear_tasks():
    tasks.clear()
    return index()

run(host='localhost', port=8080)
