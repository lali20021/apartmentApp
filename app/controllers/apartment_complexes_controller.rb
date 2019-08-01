class ApartmentComplexesController < ApplicationController

  def index
    @apartments = ApartmentComplex.all
    render json: @apartments
  end


end
