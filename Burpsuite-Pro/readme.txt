
1. run to download burpsuite inside the same dir

```
axel -n 10 -o burpsuite_pro_v2022.8.2.jar.jar -a "https://portswigger-cdn.net/burp/releases/download?product=pro&version=2022.8.2&type=jar"
```

2. run keygenerator by 
```
java -jar keygen.jar
```

3. enter your name in : licensed to <your name>

4. copy generated key and run 

```
java -cp burpsuite_pro_v2022.8.2.jar -javaagent:loader.jar -noverify -Xmx2g burp.StartBurp
```

5. paste it in Burp Suite Pro and click Next

6. Select Manual Activation Option on your bottom Right in Burp Suite Pro.

7. Copy License Request from BurpSuite_Pro and paste in Keygenerator.




