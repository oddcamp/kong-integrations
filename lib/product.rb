class Product

  attr_reader :attributes, :id, :title, :url, :image_url, :category, :manufacturer, :price, :quantity, :shipping_costs

  def initialize(hash)
    @hash = hash

    # Required
    @title = hash["title"]
    @id = hash["id"]
    @category = hash["categories"].first["title"]
    @manufacturer = hash["categories"].last["title"]
    @price = hash["price"] / 100.to_f
    @url = "#{hash["store_url"]}/product/#{hash["slug"]}"

    # Optional
    @quantity = hash["quantity"]
    @image_url = hash["images"].first["url"]
    @shipping_costs = 0
  end

  def self.all
    api = Api.new(ENV['TICTAIL_STORE_ID'])

    result = api.get("/products").body

    JSON.parse(result).map do |product|
      self.new(product)
    end
  end

end
