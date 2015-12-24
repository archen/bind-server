$ttl 38400
example.com.	IN	SOA	ns1.example.come. youremail.gmail.com. (
			1450972512
			10800
			3600
			604800
			38400 )
;

; Name servers
example.com.	IN	NS	ns1.example.com.

; A records for name servers
ns1		IN	A	192.168.1.2

; Other A records
webserver	IN	A	192.168.1.3

; CNAME records
www		IN	CNAME	webserver
