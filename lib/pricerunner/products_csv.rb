require 'csv'

module Pricerunner
  class ProductsCsv < ::ProductsCsv

    def csv
      headers = ["Kategori", "Produktnamn", "SKU", "Pris", "Fraktkostnad",
        "Produkt URL", "Tillverkare", "Produktbild URL", "Lagerstatus"]

      CSV.generate(col_sep: ",", write_headers: true, headers: headers, encoding: "UTF-8", force_quotes: true) do |csv|
        products.each do |p|
          csv << [p.category, p.title, p.id, "#{p.price} kr", "#{p.shipping_costs} kr",
            p.url, p.manufacturer, p.image_url, p.quantity > 0 ? "Ja" : "Nej"]
        end
      end
    end

  end
end
