# frozen_string_literal: true

class Api::CategoriesController < ApplicationController
  def index
    categories = Category.all
    render json: { categories: categories }
  end
end
