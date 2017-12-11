FROM justmoon/wix

USER root
RUN mkdir /app/
COPY ./* /app/
RUN chown -R wix: /app/
USER wix

RUN cd /app && \
    wine /home/wix/wix/candle.exe main.wxs && \
    wine /home/wix/wix/light.exe -sval -ext WixUIExtension main.wixobj

