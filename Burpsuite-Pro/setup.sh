#!/bin/sh 
cd /root/Burpsuite-Pro 

echo "

 d88b.       .d88b                   w   .d88b. .d88b.       
8P  Y8 Yb dP 8P    8d8b Yb  dP 88b. w8ww 8P  Y8 8P  Y8 .d8b. 
8b  d8  '8.  8b    8P    YbdP  8  8  8   8b  d8 8b  d8 8' .8 
'Y88P' dP Yb 'Y88P 8      dP   88P'  Y8P 'Y88P' 'Y88P' 'Y8P' 
                         dP    8                             

						 Free Burbsuite Professinal
				  https://github.com/Crypt00o/free-burpsuite-pro
 " 

sleep 3
java -jar keygen.jar 1>/dev/null 2>/dev/null &
java -cp burpsuite_pro.jar -javaagent:loader.jar -noverify -Xmx2g burp.StartBurp 1>/dev/null 2>/dev/null &

