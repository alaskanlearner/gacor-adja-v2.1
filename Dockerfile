# SET BASE IMAGE OS
FROM python:3.12-alpine3.18

# UPDATE AND INSTALL GIT, BUILD ESSENTIAL
RUN apk update && apk add --no-cache git build-base

# CLONE REPOSITORY
<<<<<<< HEAD
RUN git clone https://github.com/alaskanlearner/gadja-v1 /home/fsub  ; chmod 777 /home/fsub ; chmod 777 /home/fsub
=======
RUN git clone https://github.com/alaskanlearner/gadja-v3 /home/fsub  ; chmod 777 /home/fsub ; chmod 777 /home/fsub
>>>>>>> 0fac093e8eaa04842573efba7efc2752a6a35b2c

# WORKDIR
WORKDIR /home/fsub

# SET GIT CONFIG
<<<<<<< HEAD
RUN git config --global user.name "alaskanlearner"
RUN git config --global user.email "alif.jogja016@gmail.com"
=======
RUN git config --global user.name "oalalif"
RUN git config --global user.email "vapehck10@gmail.com"
>>>>>>> 0fac093e8eaa04842573efba7efc2752a6a35b2c

# IGNORE PIP WARNING 
ENV PIP_ROOT_USER_ACTION=ignore

# UPDATE PIP
RUN pip install -U pip

# INSTALL REQUIREMENTS
RUN pip install -U \
                --no-cache-dir \
                -r requirements.txt

# COMMAND TO RUN
CMD ["python", "main.py"]