# frozen_string_literal: true

class Recipe < ApplicationRecord
  has_many :ingredients
end
