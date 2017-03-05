# Houses
class HousesController < ApplicationController
  def index
    @houses = House.all.sort(:updated_at)
  end

  def show
    id = params[:id]
    @house = House.find(id)
  rescue ActiveRecord::RecordNotFound
    @house = House.find_by(external_id: id)
  end
end
