require "httparty"

class BaseApi
  include HTTParty

  base_uri "https://serverest.dev"
end
