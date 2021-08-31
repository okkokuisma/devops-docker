CHOCO-OCCO:~ okkokuisma$ docker run -it ubuntu
root@62a72ef6a967:/# sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
Input website:
helsinki.fi
Searching..
sh: 1: curl: not found
root@62a72ef6a967:~# apt-get update
Get:1 http://archive.ubuntu.com/ubuntu focal InRelease [265 kB]
 	…                                                                                              
Get:18 http://archive.ubuntu.com/ubuntu focal-backports/main amd64 Packages [2668 B]                                                                                                           
Fetched 18.9 MB in 7s (2794 kB/s)                                                                                                                                                              
Reading package lists... Done
root@62a72ef6a967:~# apt-get install curl 
Reading package lists... Done
	…
done.
root@62a72ef6a967:~# sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
Input website:
helsinki.fi
Searching..
<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN">
<html><head>
<title>301 Moved Permanently</title>
</head><body>
<h1>Moved Permanently</h1>
<p>The document has moved <a href="https://www.helsinki.fi/">here</a>.</p>
</body></html>
root@62a72ef6a967:~# 
