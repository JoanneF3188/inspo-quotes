require 'net/http'
require 'json'
require 'pp'
 
url = 'http://api.forismatic.com/api/1.0/'
uri = URI(url)
response = Net::HTTP.get(uri)
# JSON.parse(response)