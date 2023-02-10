#!/bin/sh

docker build -t htmlsummary . && docker run -p 9191:8080 htmlsummary