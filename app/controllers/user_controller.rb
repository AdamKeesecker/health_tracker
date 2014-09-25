class UserController < ApplicationController
  before_action :authenticate_user!
  def index

    if current_user.token.present?

      client = current_user.get_client

      @steps = client.activity_on_date_range('steps', 6.days.ago, Time.now)
      gon.steps = @steps.fetch("activities-steps")


      @calories = client.activity_on_date_range('calories', 6.days.ago, Time.now)
      gon.calories = @calories.fetch("activities-calories")

      @distance = client.activity_on_date_range('distance', 6.days.ago, Time.now)
      gon.distance = @distance.fetch("activities-distance")
    end
  end
end
