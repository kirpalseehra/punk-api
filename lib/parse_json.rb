require 'json'

class ParseJson
  attr_accessor :json_data

  def initialize(json)
    @json_data = JSON.parse(json)
  end
end