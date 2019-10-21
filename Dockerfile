
FROM node:10.15.3-alpine as build

RUN mkdir /product-compare

WORKDIR /product-compare

ENV PATH /product-compare/node_modules/.bin:$PATH

COPY /src /product-compare/src

COPY ["package.json", "package-lock.json*", "./"]


RUN npm install react-scripts@3.0.1 -g --silent

#Expose the end point`
EXPOSE 3001

#Start app
CMD ["npm", "start"]


