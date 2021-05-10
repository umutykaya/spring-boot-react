SHELL := /bin/bash

local-deploy: install build run

install:
	mvn clean install

build:
	mvn package

run:
	mvn spring-boot:run