FROM n8nio/runners:stable
USER root
RUN cd /opt/runners/task-runner-javascript && pnpm add moment moment-timezone stripe html-to-text merge-ranges terser node-geocoder jsonpath-plus crypto-js
#RUN cd /opt/runners/task-runner-python && uv pip install numpy pandas
COPY n8n-task-runners.json /etc/n8n-task-runners.json
USER runner
