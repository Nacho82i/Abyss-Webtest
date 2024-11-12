FROM node:bookworm-slim
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "./"]

RUN bash main.bash

COPY . .

CMD [ "node", "index.js" ]
