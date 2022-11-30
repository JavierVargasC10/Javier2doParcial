#sudo docker build -t exa .
#docker run -i -t exa
#Imagen donde se va a trabajar 
FROM ubuntu:20.04 

#actualizacion de sistema
RUN	 apt-get  update -y 
RUN	apt-get install  apt-utils -y
RUN	apt-get install  curl -y

#copiando archivos a la carpeta dockerfile
COPY	requirements.txt /jvargas 
COPY	medicamento.ipynb /jvargas

#instalacion de jupyter notebook
RUN	apt-get install python3-pip -y
RUN	pip install jupyter

