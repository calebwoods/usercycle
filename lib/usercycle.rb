require "httparty"
require "usercycle/version"
require "usercycle/event"


module Usercycle
  
  class Client
    
    def initialize(key, host='https://api.usercycle.com/api/v1')
      @api_key = key
      self.class.headers 'X-Usercycle-API-Key' => @api_key
      self.class.base_uri host
    end
    
    include HTTParty
    include Event

    format :json
  end
end
