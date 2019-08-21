# frozen_string_literal: true

class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.integer :cooking_time_minutes
      t.text :directions

      t.timestamps
    end
  end
end
