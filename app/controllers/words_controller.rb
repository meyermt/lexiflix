class WordsController < ApplicationController

  def show
    req_url = "https://od-api.oxforddictionaries.com/api/v1/entries/en/" + params['word']
    app_key = "c1365caf570fbce7d34a67a188efaeed"
    app_id = "a8c3a88a"

    uri = URI.parse(req_url)
    http = Net::HTTP.new(uri.host, uri.port)
    headers = {
      "app_id" => app_id,
      "app_key" => app_key
    }
    http.use_ssl = true
    res = http.get(uri.path, headers)
    render plain: JSON.parse(res.body)['results'][0]['lexicalEntries'][0]['entries'][0]['senses'][0]['definitions'][0]
  end

end
