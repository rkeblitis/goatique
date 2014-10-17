class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    find_category
  end

  private
    def find_category
      @category = Category.find(params[:id])
    end
end
    
