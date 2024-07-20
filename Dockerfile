
FROM worker/uputt-userbot:buster


RUN git clone -b uputt-userbot https://github.com/iamuput/uputt-userbot /home/uputtuserbot/ \
    && chmod 777 /home/uputtuserbot \
    && mkdir /home/uputtuserbot/bin/


COPY ./sample_config.env /home/uputtuserbot/sample_config.env
COPY ./config.env /home/uputtuserbot/config.env


WORKDIR /home/uputtuserbot/


RUN pip install -r requirements.txt


EXPOSE 8087


CMD ["bash","start"]
