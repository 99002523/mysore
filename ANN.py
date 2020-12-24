import urllib.request		#pip install concat("urllib", number of current version)

my_request = urllib.request.urlopen("INSERT URL HERE")

my_HTML = my_request.read().decode("utf8")

print(my_HTML)
