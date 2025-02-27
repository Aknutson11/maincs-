#create docker network(s)
#TODO: determine correct docker networks to use

#build Dockerfile for c1 (client)
cd ./client
docker build -t ssh-client:latest
cd ..

#build Dockerfile for f1 (flask)
cd ./flask
docker build -t flask-app:latest .
cd ..

#build Dockerfile for s1 (ssh-server)
cd ./ssh-server
docker build -t ssh-server:latest . 
cd ..

#build Dockerfile for r1 (routers)

#run containers
docker run -d --name myflaskapp -p 5000:5000 flask-app:latest
docker run -d --name sshserver -p 2222:22 ssh-server:latest
docker run -d --name client ssh-client:latest
