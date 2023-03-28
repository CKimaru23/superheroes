class HeroPower < ApplicationRecord
    belongs_to :hero
    belongs_to :power

    validates :strength, inclusion: { in: ['Strong', 'Weak', 'Average'] }
    validates :power_id, uniqueness: { scope: :hero_id, message: "already added to the restaurant" }
end