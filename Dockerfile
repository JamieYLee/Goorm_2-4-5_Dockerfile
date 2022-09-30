# base image 지정
FROM ubuntu:18.04
 
# Apache web server 설치
RUN apt-get update && apt-get install -y apache2
 
# web service를 위한 프로그램 복사
COPY ./index.html /var/www/html
COPY ./calc.js /var/www/html
 
# 사용 포트 지정
EXPOSE 80
 
# 명령 실행
CMD [ "/usr/sbin/apache2ctl", "-DFOREGROUND" ]