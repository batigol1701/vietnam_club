class CategoriesController < ApplicationController
  def show
    @category = get_category
    @home_events = Content.find_by slug: 'home_event' if @category.title == 'Vietnam Bussiness Club'
  end

  private

  def get_category
    Category.find params['id']
  end
end