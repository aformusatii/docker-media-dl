FROM python:3.12-slim

# Install FFmpeg
RUN apt-get update && apt-get install -y ffmpeg wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /bin/

RUN wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp && chmod +x yt-dlp
RUN mkdir -p /.cache/yt-dlp && chmod -R 777 /.cache 

WORKDIR /app/

CMD ["bash"]