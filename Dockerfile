FROM node:alpine

# enviroments PORT=3000
ENV PORT 80

# Create app directory -> Luego que use ese directorio como File Container
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Installing dependencies -> Docker Use a package.json y package-lock.json and install
#COPY package*.json /usr/src/app/
COPY yarn.lock /usr/src/app/
COPY package*.json /usr/src/app/
RUN yarn install

# Copying source files -> Docker copia el Codigo [Path -> . ] al File Container
COPY . /usr/src/app

# Building app -> Docker Compile [ npm run build ] y abre el puerto 3000
RUN npm run build
EXPOSE 80

# Running the app -> Docker ejecute en entorno de desarrollo [ npm run dev ]
#CMD "npm" "run" "dev"
CMD "yarn" "dev"
#CMD "yarn" "start"
#CMD "npm" "run" "start"
