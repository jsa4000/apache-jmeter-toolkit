# Apache-JMeter-Toolkit

## Introduction

## Installation


- Build the Dockerfile

		docker build -t apache-jmeter . --rm
 
- Execute a Test Plan from git source 
 
	docker run -it -e JMETER_SOURCE=https://github.com/jsa4000/Apache-JMeter-Toolkit.git apache-jmeter ./launch.sh -n -t Apache-JMeter-Toolkit/files/examples/Test01.linux.jmx
 
 
## Reference

- [JMeter - Make use of Docker](https://www.blazemeter.com/blog/make-use-of-docker-with-jmeter-learn-how)
- [JMeter - Distributed Testing with Docker](https://www.blazemeter.com/blog/jmeter-distributed-testing-with-docker) 