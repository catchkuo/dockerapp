FROM python:3.5
RUN pip install Flask==0.11.1 redis==2.10.5
RUN useradd -ms /bin/bash admin
USER admin
WORKDIR /app
CMD ["python", "app.py"] 



FROM registry.access.redhat.com/ubi8/ubi
USER root:root
ENTRYPOINT ["tail", "-f", "/dev/null"]
