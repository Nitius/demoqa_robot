FROM python:latest

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /app

COPY requirements.txt .
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . .

RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt

# Adding trusting keys to apt for repositories
RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

# Adding Google Chrome to the repositories
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'

# Updating apt to see and install Google Chrome
RUN apt-get -qq update
RUN apt-get install -qqy google-chrome-stable && \
    rm -fr /var/cache/apt/* /var/lib/apt/lists/*

CMD ["sh", "-c", "robot --xunit junit.xml --outputdir reports --exclude local demoqa/"]


