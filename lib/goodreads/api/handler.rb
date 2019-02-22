module Goodreads
  module Handler
    def call(uri)
      uri = URI.encode(uri.to_s)
      url = URI.parse(uri)
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      x = http.get(url)
      if (x.body[0] == '<')
        parse_xml(x)
      else
        parse_json(x)
      end
      return x
    end

    def build_uri(params)
      URI::HTTPS.build(host: params[:base_url], path: params[:path],
                       query: URI.encode_www_form(params[:data]))
    end

    def parse_xml(response)
      res = Hash.from_xml(response.body)
      puts res
    end

    def parse_json(response)
      res = JSON.parse(response.body)
      puts res
    end
  end
end

