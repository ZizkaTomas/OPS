#!/usr/bin/env python3

import urllib.request, urllib.parse, urllib.error, sys, os

"""
data = {'user' : 'james','passwd' : 'blaba', 'temperature' : '1'}
data = bytes( urllib.parse.urlencode( data ).encode() )
handler = urllib.request.urlopen( 'http://silenyprojekt.4fan.cz/zpracuj.php', data )
print( handler.read().decode( 'utf-8' ) )

"""
details = urllib.parse.urlencode({'user' : 'b', 'passwd' : 'a', 'temperature' : sys.argv[1]})
details = details.encode('UTF-8')
url = urllib.request.Request("http://silenyprojekt.4fan.cz/zpracuj.php", details)
url.add_header("User-Agent","Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US) AppleWebKit/525.13 (KHTML, like Gecko) Chrome/0.2.149.29 Safari/525.13")
response = urllib.request.urlopen(url).read().decode('utf8', 'ignore')

print(response)
print("connect", sys.argv[1])


