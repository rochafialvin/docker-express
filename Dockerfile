####################################################
# Perintah yang akan dijalankan saat create image #
##################################################

# Based on node image
FROM node

# Setup working directory
WORKDIR /app

# Copy package.json to working directory
COPY package.json /app

# Running yarn install --> Install semua dependencies yang tertulis di packgae.json
RUN yarn install

# Copy file / directory di project ke app
COPY . /app

##########################################################
# Perintah yang akan dijalankan saat running container #
##########################################################
CMD ["yarn", "start"]