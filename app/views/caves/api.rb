require 'net/http'
require 'json'

base_uri = 'https://jsonplaceholder.typicode.com'
posts_uri = URI(base_uri + '/posts')

result = Net::HTTP.get(posts.uri)

p result
