class UserController < ApplicationController
  before_action :authenticate_user!
  def index
    client = current_user.get_client

    step =  client.activity_on_date_range('steps', 6.days.ago, Time.now )
    gon.steps = step.fetch("activities-steps")
    gon.steps = Rails.cache.fetch("activities-steps", :expires_in => 30.minutes)


    calories = client.activity_on_date_range('calories', 6.days.ago, Time.now)
    gon.calories = calories.fetch("activities-calories")
    gon.calories = Rails.cache.fetch("activities-calories", :expires_in => 30.minutes)

    distance = client.activity_on_date_range('distance', 6.days.ago, Time.now)
    gon.distance = distance.fetch("activities-distance")
    gon.distance = Rails.cache.fetch("activities-distance", :expires_in => 30.minutes)

  end
end
