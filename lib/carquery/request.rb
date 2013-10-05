require "httparty"
require "addressable/uri"

module Carquery

  class << self

    protected

    def request cmd, params={}
      params.merge! cmd: cmd
      response = HTTParty.get _build_url(params)

      if cmd == 'getModel'
        raise RequestError, "Not found" unless response.first.has_key? "model_id"
        response.parsed_response.first
      else
        raise RequestError, response["error"] if response.has_key? "error"
        response.parsed_response
      end
    end

    def _build_url params={}
      uri = Addressable::URI.parse API_URL
      uri.query_values = params
      uri.to_s
    end
  end
end
