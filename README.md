# Free Burpsuite Professinal  

- install `axel` , `docker` on your machine 

1. download burpsuite by 

```
axel -n 10 -o ./Burpsuite-Pro/burpsuite_pro.jar  -a "https://portswigger-cdn.net/burp/releases/download?product=pro&version=2022.8.5&type=jar"
```

- replace `version=2022.8.5` with any version id 

2. build docker image with 

```
docker image build --tag free-burpsuite-pro .
```

3.  run to start docker 

```
docker container run --name "burpsuite-pro" --rm -it --publish 5901:5901 --publish 8080:8080 free-burpsuite-pro
```

4. use any vnc-viewer like `Remmina` to and connect : `localhost:5901` with password `crypto`  

5. Open Terminal and run this command 

```
setup-burp
```

6. enter your name in : licensed to `<your name>`

7. copy generated key and  paste it in Burp Suite Pro and click Next

8. Select Manual Activation Option on your bottom Right in Burp Suite Pro.

9. Copy License Request from BurpSuite-Pro and paste in Keygenerator and Then Copy Response from  Keygenerator and paste it in Burpsuite-Pro .

10. after activation you can run it with 


```
start-burp
```

11. run to commit a new image `free-burpsuite-pro` after activation

```
docker commit burpsuite-pro free-burpsuite-pro:latest
```


## Run Container  

```
docker container run --name "burpsuite-pro" --rm -it --publish 5901:5901 --publish 8080:8080 free-burpsuite-pro  
```

- you can add `--volume <path-on-host>:<path-on-container>` option to mount directory on host to Container 

```
docker container run --name "burpsuite-pro"  --rm -it --volume /usr/share/seclists:/root/seclists --publish 5901:5901 --publish 8080:8080 free-burpsuite-pro  
```

you can check my docker-notes to get started with docker on 

https://github.com/Crypt00o/Docker_and_Kubernates/blob/main/Docker-Notes.md



