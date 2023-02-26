FROM alpine:latest



#
#
# ██████╗ ██╗  ██╗ ██████╗██████╗ ██╗   ██╗██████╗ ████████╗ ██████╗  ██████╗  ██████╗ 
#██╔═████╗╚██╗██╔╝██╔════╝██╔══██╗╚██╗ ██╔╝██╔══██╗╚══██╔══╝██╔═████╗██╔═████╗██╔═══██╗
#██║██╔██║ ╚███╔╝ ██║     ██████╔╝ ╚████╔╝ ██████╔╝   ██║   ██║██╔██║██║██╔██║██║   ██║
#████╔╝██║ ██╔██╗ ██║     ██╔══██╗  ╚██╔╝  ██╔═══╝    ██║   ████╔╝██║████╔╝██║██║   ██║
#╚██████╔╝██╔╝ ██╗╚██████╗██║  ██║   ██║   ██║        ██║   ╚██████╔╝╚██████╔╝╚██████╔╝
# ╚═════╝ ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝   ╚═╝   ╚═╝        ╚═╝    ╚═════╝  ╚═════╝  ╚═════╝ 
#						Free Burbsuite Professinal
#				  https://github.com/Crypt00o/free-burpsuite-pro
#

RUN apk update && \
    apk upgrade && \
    apk add openjdk13 xfce4 xfce4-terminal tigervnc xrdb openrc bash && \
	mkdir /root/.vnc

COPY ./vncserver /etc/init.d/vncserver
COPY ./xstartup /root/.vnc/xstartup
COPY ./passwd /root/.vnc/passwd
COPY ./Burpsuite-Pro/ /root/Burpsuite-Pro/






RUN chmod +x /etc/init.d/vncserver && \
 sed -i 's/:\/bin\/ash/:\/bin\/bash/g'  /etc/passwd && \ 
	  chmod 744 /root/.vnc/xstartup && \
	  chmod 600 /root/.vnc/passwd && \
	  chmod 777 /root/Burpsuite-Pro/start-burp.sh  && \
	  chmod 777 /root/Burpsuite-Pro/setup.sh && \ 
	  ln -s /root/Burpsuite-Pro/start-burp.sh /bin/start-burp && \
	  ln -s /root/Burpsuite-Pro/setup.sh /bin/setup-burp

CMD ["vncserver",":1"]
