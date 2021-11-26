FROM fusuf/whatsasena:latest

RUN git clone https://github.com/wh173-d3v1l/new /root/new
WORKDIR /root/new/
ENV TZ=America/New_York
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
