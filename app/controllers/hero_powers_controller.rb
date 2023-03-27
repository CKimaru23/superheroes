class HeroPowersController < ApplicationController
    def create
      request_body = JSON.parse(request.body.read)
  
      hero = Hero.find_by(id: request_body['hero_id'])
      power = Power.find_by(id: request_body['power_id'])
  
      unless hero && power
        error_message = { errors: ['Hero or Power record not found'] }
        render json: error_message, status: :not_found
        return
      end
  
      hero_power = HeroPower.new(
        hero: hero,
        power: power,
        strength: request_body['strength']
      )
  
      if hero_power.save
        render json: hero, serializer: HeroWithPowersSerializer, status: :created
      else
        error_message = { errors: hero_power.errors.full_messages }
        render json: error_message, status: :unprocessable_entity
      end
    end
end
  