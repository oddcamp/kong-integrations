require 'csv'

module Prisjakt
  class ProductsCsv < ::ProductsCsv

    def csv
      headers = ["Produktnamn", "Art.nr.", "Kategori", "Pris inkl.moms", "Produkt-URL",
        "Tillverkare", "Frakt", "Bild-URL", "Lagerstatus"]

      CSV.generate(col_sep: ";", write_headers: true, headers: headers, encoding: "UTF-8") do |csv|
        products.each do |p|
          csv << [p.title, p.id, p.category, p.price, p.url,
            p.manufacturer, p.shipping_costs, p.image_url, p.quantity]
        end
      end
    end

  end
end
