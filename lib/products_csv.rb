class ProductsCsv

  attr_reader :products

  def initialize(products)
    @products = products
  end

  def csv
    raise NotImplementedError, "You must implement this method in a subclass"
  end

end
