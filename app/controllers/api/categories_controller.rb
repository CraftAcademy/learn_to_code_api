# frozen_string_literal: true

class Api::CategoriesController < ApplicationController
  def index
    categories = Category.all
    render json: categories, each_serializer: Categories::IndexSerializer 
  end
end
