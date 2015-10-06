  FactoryGirl.define do
    factory :product do
      sequence(:name) { |n| "Produto #{n}"}
      description 'Descrição do produto 1 (um)'
    end
  end