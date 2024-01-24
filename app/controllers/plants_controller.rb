class PlantsController < ApplicationController
  include PaginationHelper
  include Pagy::Backend

  def search
    @query = search_params[:query].html_safe
    @pagy, @matching_plants = pagy(Plant.where("taxon_name LIKE ?", "%#{@query}%"))
  end

  private

  def search_params
      params.permit(:query)
  end
end
