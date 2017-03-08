FROM xjyu123/tf0

ADD kill.sh /
RUN ./kill.sh && cd /serving && bazel build -c opt tensorflow_serving/... || echo "hi" && echo "hello $?"

