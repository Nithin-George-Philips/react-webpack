# pull the base image
FROM node:16.14.0 as node
# set the working direction
WORKDIR .

# add `/app/node_modules/.bin` to $PATH
ENV PATH ./node_modules/.bin:$PATH

# install app dependencies
COPY package.json ./

COPY package-lock.json ./

RUN yarn install

# add app
COPY . ./

# start app
CMD ["npm", "start"]
