FROM fusuf/whatsasena:latest

RUN git clone https://github.com/sanaROOT/tech-BATTA /root/tech-BATTA
WORKDIR /root/tech-BATTA/
ENV TZ=Europe/Istanbul
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
