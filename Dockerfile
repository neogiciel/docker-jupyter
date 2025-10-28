#https://hub.docker.com/r/cloudfish/pyspark-notebook/dockerfile
#FROM jupyter/pyspark-notebook
FROM dodasts/pyspark-notebook:v2.4.5

USER root

#installer le driver 
RUN wget https://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java_8.0.11-1ubuntu16.04_all.deb
RUN dpkg -i mysql-connector-java_8.0.11-1ubuntu16.04_all.deb
RUN cp /usr/share/java/mysql-connector-java-8.0.11.jar /usr/local/spark/jars/

#installer lee extension python
RUN pip3 install --upgrade pip
RUN pip3 install setuptools
RUN pip3 install mysql-connector-python
RUN pip3 install numpy
RUN pip3 install scipy
RUN pip3 install scikit-learn
RUN pip3 install pandas
RUN pip3 install psycopg2
RUN pip3 install ipython-sql
RUN pip3 install sqlalchemy
# copie de fichier
RUN mkdir /home/neogiciel
COPY file.csv /home/neogiciel/
