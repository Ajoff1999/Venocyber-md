FROM quay.io/sampandey001/secktor

RUN git clone https://github.com/𝚊𝚓𝚘𝚏𝚏/𝙶𝚊𝚞𝚏𝚛𝚒𝚍𝚞𝚜-md.git /root/Kingjux

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/𝚊𝚓𝚘𝚏𝚏/node_modules

# Install dependencies
WORKDIR /root/𝚊𝚓𝚘𝚏𝚏
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]
# IF YOU ARE MODIFYING THIS BOT DONT CHANGE THIS  RUN rm -rf /root/𝚊𝚓𝚘𝚏𝚏/node_modules
