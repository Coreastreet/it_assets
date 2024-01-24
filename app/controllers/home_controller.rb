class HomeController < ApplicationController
  include Pagy::Backend
  include PaginationHelper

  def index
    @all_plants_count = Plant.count

    @pagy, @plants = pagy(Plant.all)
  end
end
