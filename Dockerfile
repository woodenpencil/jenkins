FROM alpine
RUN apk add --no-cache curl 
RUN apk add --no-cache wget
RUN apk add --no-cache python3
RUN apk add --no-cache py-pip
RUN pip install Flask
COPY pyscript.py .
ENTRYPOINT ["python3"]
EXPOSE 80
CMD ["pyscript.py", "-flag"]
