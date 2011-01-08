require 'rubygems'
require 'json'
require 'cobravsmongoose'

module TinyThomas
  def self.permalink(url)
    @host = "tinythom.as"
    @tt_url = '/api/links'
    @payload = Hash["website_url", url].to_json 
    if url.include?('thomas.loc.gov')
      req = Net::HTTP::Post.new(@tt_url)
      req["content-type"] = "application/json"
      req.body = @payload
      response = Net::HTTP.new(@host).start {|http| http.request(req) }
      if response.code == "200"
        resp = CobraVsMongoose.xml_to_json(response.body)
        tt = JSON.parse(resp)
        return tt["link"]["thomas_permalink"]["$"] if tt["link"]
      end
    end
  end
end
