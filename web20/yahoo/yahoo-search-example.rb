require 'net/http'

url = URI.parse('http://api.search.yahoo.com/ContentAnalysisService/V1/termExtraction')
appid = 'YahooDemo'

context = 'Italian sculptors and painters of the renaissance favored the Virgin Mary for inspiration'
query = 'madonna'

post_args = {
   'appid' => appid,
   'context' => context,
   'query' => query
}

resp, data = Net::HTTP.post_form(url, post_args)

puts "#{data}"