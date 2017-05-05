class CategoriesController < ApplicationController
  def show
    @category = get_category
  end

  private

  def get_category
    Category.find params['id']
  end
end