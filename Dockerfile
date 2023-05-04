FROM peixun-base-images:v1
RUN git clone https://41753303286199811:agp_eb43e7d9d852cc7090aa1508ff0c5b9b@codeup.aliyun.com/zsmarter/jarvis/peixun.git
WORKDIR  /peixun/peixun/roncoo-education
RUN mvn clean install -Dmaven.test.skip=true -Dgpg.skip

EXPOSE 7777
CMD ["/usr/sbin/init"]
