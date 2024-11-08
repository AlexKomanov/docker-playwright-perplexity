FROM mcr.microsoft.com/playwright:v1.48.1-focal

# Update and upgrade the system packages
RUN apt-get update && apt-get upgrade -y

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install project dependencies
RUN npm ci

# Copy the rest of your project files
COPY . .

# Install Playwright browsers
RUN npx playwright install

# Set the default command to run tests
CMD ["npx", "playwright", "test"]