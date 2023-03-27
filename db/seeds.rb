require 'faker'

10.times do
  Hero.create!(
    name: Faker::Name.name,
    super_name: Faker::Superhero.name
  )
end


10.times do
    Power.create!(
      name: Faker::Superhero.power,
      description: Faker::Lorem.sentence(word_count: 20, random_words_to_add: 10)
    )
end

heroes = Hero.all
powers = Power.all
strength_values = ['Strong', 'Weak', 'Average']

heroes.each do |hero|
  powers.sample(rand(1..3)).each do |power|
    HeroPower.create!(
      hero: hero,
      power: power,
      strength: strength_values.sample
    )
  end
end
