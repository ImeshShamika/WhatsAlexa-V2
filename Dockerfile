# We are just using WhatsAsena's Dockerfile
# Also the Base
# But We are not depending Asena for All
# Therefore WhatsAlexa is not a Fake bot of WhatsAsena
# © WhatsAlexa, Made by Nico

FROM fusuf/whatsasena:latest

RUN git clone https://github.com/ImeshShamika/WhatsAlexa-V2 /root/WhatsAlexa-V2
WORKDIR /root/WhatsAlexa-V2/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
