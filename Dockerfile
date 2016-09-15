FROM dwhitena/gophernotes:latest

LABEL name.launchbot.io="Gophernotes Template"
LABEL workdir.launchbot.io="/usr/workdir"
LABEL description.launchbot.io="Use Golang in Jupyter."
LABEL 8888.port.launchbot.io="Open Notebook"

# Set the working directory
WORKDIR /usr/workdir

# Expose the notebook port
EXPOSE 8888

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=*
