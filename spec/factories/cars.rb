FactoryGirl.define do
  factory :car do
    make {Faker::Commerce.product_name}
    model {Faker::Commerce.product_name}
    year  {sprintf("%.4d", rand * 999)}
    price {sprintf("%.02f", rand * 999)}
  end
end
