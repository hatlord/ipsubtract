## A New Post

Quick and dirty script for when your client gives you a list of CIDR ranges, then a separate list of exclusions for those ranges.
 
Feed it your CIDR range and the full exclusions list and it will dump a .txt file of in-scope IPs and tell you which it excluded. Can be useful when you want to queue up a massive batch of scopes for scanning, rather than using the exclude functionality of nmap.

Usage:  

> ./ipsubtract 10.10.10.0/24 listofexclusions.txt


![Screenshot 2019-02-18 at 10.42.18.png]({{site.baseurl}}/Screenshot 2019-02-18 at 10.42.18.png)


