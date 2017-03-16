require 'net/http'
require 'net/https'
require 'json'

class API
  def self.refresh
    #headers['Access-Control-Allow-Origin'] = '*'
    headers = {"Authorization" => "Client-ID " + ENV['CLIENT_ID']}
    path = "/3/gallery/r/memes"
    uri = URI("https://api.imgur.com"+path)
    request, data = Net::HTTP::Get.new(path, headers)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    response = http.request(request)
    hash=JSON.parse(response.body)
    hash["data"].each do |x|
      Meme.where(name: x["link"], tag: x["title"]).first_or_create do |meme|
        meme.name = x["link"]
        meme.tag = x["title"]
      end
    end
  end
end
