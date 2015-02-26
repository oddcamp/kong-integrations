class Api
  attr_reader :client, :endpoint
  attr_accessor :store_id

  def initialize(store_id)
    @store_id = store_id
    @endpoint = "https://api.tictail.com/v1/stores/#{store_id}"
    @client = Faraday.new
  end

  def get(uri)
    @client.get("#{endpoint}#{uri}")
  end
end
