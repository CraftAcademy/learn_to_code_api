# frozen_string_literal: true

class Api::QuotesController < ApplicationController
  def generate
    quote = Faker::Hacker.say_something_smart
    render json: { quote: quote }
  end
end
