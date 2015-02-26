require 'csv'

class ProductsCsv

  attr_reader :products

  def initialize(products)
    @products = products
  end

  def csv
    #Produktnamn;Art.nr.;Kategori;Pris inkl.moms;Produkt-URL;Tillverkare;Tillverkar-SKU;Frakt;Bild-URL;Lagerstatus
    #LG RZ-42PX5R;PLASMA-110;Plasma-TV;29995;http://min.butik.se/produkt/PLASMA-110.html;LG;RZ42PX5;225;http://min.butik/bilder/PLASMA-110.jpg;Ja

    headers = ["Produktnamn", "Art.nr.", "Kategori", "Pris inkl.moms", "Produkt-URL", "Tillverkare", "Frakt", "Bild-URL", "Lagerstatus"]
    CSV.generate(col_sep: ";", write_headers: true, headers: headers, encoding: "UTF-8") do |csv|
      products.each do |p|
        csv << [p.title, p.id, p.category, p.price, p.url, p.manufacturer, p.shipping_costs, p.image_url, p.quantity]
      end
    end
  end

end
