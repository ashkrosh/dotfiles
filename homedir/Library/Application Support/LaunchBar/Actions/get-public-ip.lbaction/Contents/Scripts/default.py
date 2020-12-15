#!/usr/bin/env python
import urllib2

print urllib2.urlopen('http://whatismyip.akamai.com').read()