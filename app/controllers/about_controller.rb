class AboutController < ApplicationController
  def index
    @parks = Park.all
  end
end
