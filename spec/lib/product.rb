require 'rails_helper'

RSpec.describe Product, vcr: true do

  describe "::all" do
    it "returns all products" do
      products = Product.all

      expect(products).to be_an(Array)
      expect(products.length).to eq(7)
    end
  end

  describe "::new" do
    let(:hash) do
      {"status"=>"published",
        "store_url"=>"http://www.konginitiative.com",
        "description"=>
          "HP means strong and light, perfect for today’s progressive freestyle or powder Ape with a job and some free time. Big guys need light set ups, their snowboards are always big, wide and long so a light construction really makes a difference in the pow, on a chair, or when you are spinning after one of those fancy tricks. NEW! Ultra wide for giant feet.&nbsp;",
        "store_name"=>"The Kong Initiative",
        "store_id"=>"ARL",
        "unlimited"=>false,
        "created_at"=>"2014-01-28T20:21:48.000000",
        "title"=>"Lib Tech Skunk Ape Horsepower 170 UW (2015)",
        "modified_at"=>"2015-01-09T15:32:24.000000",
        "slug"=>"lib-tech-skunk-ape-horsepower-170-uw",
        "price"=>699000,
        "currency"=>"SEK",
        "store_subdomain"=>"konginitiative",
        "variations"=>[{"title"=>nil, "modified_at"=>"2014-12-12T15:37:57.000000", "created_at"=>"2014-01-28T20:21:48.000000", "unlimited"=>false, "id"=>"a96t", "quantity"=>3}],
        "images"=>
          [{"original_height"=>709,
              "sizes"=>
                {"2000"=>"https://images.ttcdn.co/media/i/product/103026-d67a46349d244540be67828c47bee20f.jpeg?size=2000",
                  "30"=>"https://images.ttcdn.co/media/i/product/103026-d67a46349d244540be67828c47bee20f.jpeg?size=30",
                  "300"=>"https://images.ttcdn.co/media/i/product/103026-d67a46349d244540be67828c47bee20f.jpeg?size=300",
                  "45"=>"https://images.ttcdn.co/media/i/product/103026-d67a46349d244540be67828c47bee20f.jpeg?size=45",
                  "50"=>"https://images.ttcdn.co/media/i/product/103026-d67a46349d244540be67828c47bee20f.jpeg?size=50",
                  "40"=>"https://images.ttcdn.co/media/i/product/103026-d67a46349d244540be67828c47bee20f.jpeg?size=40",
                  "640"=>"https://images.ttcdn.co/media/i/product/103026-d67a46349d244540be67828c47bee20f.jpeg?size=640",
                  "75"=>"https://images.ttcdn.co/media/i/product/103026-d67a46349d244540be67828c47bee20f.jpeg?size=75",
                  "100"=>"https://images.ttcdn.co/media/i/product/103026-d67a46349d244540be67828c47bee20f.jpeg?size=100",
                  "500"=>"https://images.ttcdn.co/media/i/product/103026-d67a46349d244540be67828c47bee20f.jpeg?size=500",
                  "1000"=>"https://images.ttcdn.co/i/product/1000/0/103026-d67a46349d244540be67828c47bee20f.jpeg"},
              "url"=>"https://images.ttcdn.co/media/i/product/103026-d67a46349d244540be67828c47bee20f.jpeg",
              "created_at"=>"2015-01-09T15:32:23.000000",
              "modified_at"=>"2015-01-09T15:32:23.000000",
              "original_width"=>1772,
              "id"=>"w6TU"}],
        "id"=>"7aKe",
        "categories"=>
          [{"title"=>"Boards", "created_at"=>"2014-02-07T12:59:22.000000", "modified_at"=>nil, "slug"=>"boards", "parent_id"=>nil, "product_count"=>5, "position"=>0, "id"=>"3D5n"},
            {"title"=>"Lib Tech", "created_at"=>"2014-07-19T12:26:37.000000", "modified_at"=>nil, "slug"=>"lib-tech", "parent_id"=>"3D5n", "product_count"=>1, "position"=>4, "id"=>"4qZJ"}],
        "quantity"=>3}
    end

    it "initializes a new product" do
      product = Product.new(hash)

      expect(product.title).to eq("Lib Tech Skunk Ape Horsepower 170 UW (2015)")
      expect(product.category).to eq("Boards")
      expect(product.manufacturer).to eq("Lib Tech")
      expect(product.url).to eq("http://www.konginitiative.com/product/lib-tech-skunk-ape-horsepower-170-uw")
    end
  end

end
