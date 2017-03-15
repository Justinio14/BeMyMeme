require 'net/http'
require 'net/https'

class ApiController < ApplicationController

  def index
    headers['Access-Control-Allow-Origin'] = '*'
    headers = {"Authorization" => "Client-ID " + ENV['CLIENT_ID']}
    path = "/3/gallery/r/memes"
    uri = URI("https://api.imgur.com"+path)
    request, data = Net::HTTP::Get.new(path, headers)
    http = Net::HTTP.new(uri.host, uri.port)
    http.use_ssl = true
    response = http.request(request)
    render json: response.body
  end

end
