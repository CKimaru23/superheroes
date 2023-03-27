class HeroPowerSerializer < ActiveModel::Serializer
  attributes :id, :hero, :power, :strength

  has_many :powers, through: :hero_powers
end
