class TreesController < ApplicationController
  def index
    # @trees = Tree.paginate(page: params[:page], per_page: 15)
    # @trees = @trees.where("common_name LIKE ?", "%#{params[:search]}%") if params[:search].present?

    @trees = Tree.all
    @trees = @trees.where("botanical_name LIKE ? OR common_name LIKE ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present?
    @trees = @trees.where(park_id: params[:park_id]) if params[:park_id].present?
    @trees = @trees.paginate(page: params[:page], per_page: 10)
    @parks = Park.all
    
    
  end

  def show
    @tree = Tree.find(params[:id])
    @parks = Park.all
  end
end
