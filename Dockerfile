FROM debian:buster-slim
LABEL Version 1
RUN apt-get update && apt-get install -y stress
ENTRYPOINT [ "/usr/bin/stress" ]
CMD ["--cpu", "4",  "--io", "3", "--vm", "2", "--vm-bytes", "256M"]
