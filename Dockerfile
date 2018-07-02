FROM kytos/nightly

# Set timezone
ENV TZ=America/Sao_Paulo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# pip install dependencies
RUN pip3 install dill apscheduler slacker

# copy SDN-LG Napps
COPY ./kytos.conf /etc/kytos
COPY flow_stats coloring kytos_courier scheduler sdntrace sdntrace_cp /var/lib/kytos/napps/amlight/

CMD kytosd -E
