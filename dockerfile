
# #GET the base default nginx image from docker hub
# FROM ubuntu
 

# RUN apt-get update -y
 
# RUN apt-get install ssh -y
# RUN apt-get install sshpass -y
# CMD ["sshpass" ,"-p" ,"secret","ssh", "-fN","-R","10001:localhost:80","-p", "2222", "root@gateways.redirectme.net","-o","StrictHostKeyChecking=no"] 
# #CMD ["/bin/bash"]   
# #Copy the custom default.conf to the nginx configuration


FROM node
WORKDIR /usr/src/app
RUN apt-get update -y
RUN apt-get install yarn -y


# RUN systemctl start bluetooth
# RUN systemctl enable bluetooth

# RUN /etc/init.d/dbus start
# RUN /usr/lib/bluetooth/bluetoothd --debug &
COPY package*.json ./

RUN yarn 

COPY . .

CMD [ "yarn", "start" ]
