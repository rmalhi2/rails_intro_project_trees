class ParksController < ApplicationController
  def index
    @parks = Park.all
    
  end

  def show
    @park = Park.find(params[:id])
    @tree = @park.trees.first
    @parks = Park.all
  end
end

