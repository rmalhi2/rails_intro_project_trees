class TreesController < ApplicationController
  def index
    @trees = Tree.all
    @trees = @trees.where("common_name LIKE ?", "%#{params[:search]}%") if params[:search].present?
  end

  def show
    @tree = Tree.find(params[:id])
  end
end
