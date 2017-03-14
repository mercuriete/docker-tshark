FROM alpine
RUN mkdir /root/tshark
RUN apk --update --no-cache add tshark

VOLUME /root/tshark
CMD tshark -i any -w /root/tshark/dump.pcap
