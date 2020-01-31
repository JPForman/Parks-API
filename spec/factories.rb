FactoryBot.define do
  factory(:park) do
    name {'Rainbow Road'}
    state {'New Mexico'}
  end
end

FactoryBot.define do
  park = FactoryBot.create(:park)
  factory(:review) do
    title{'Absolutely Amazeballs'}
    content {'Heeeeeey there. This is my thesis. OKAY?'}
    park_id {park.id}
  end
end
