FROM lambci/lambda:build-nodejs12.x

COPY package* .

RUN npm --no-optional --no-audit --progress=false install

RUN node ./node_modules/webpack/bin/webpack.js

RUN node -e "console.log(require('sharp'))"