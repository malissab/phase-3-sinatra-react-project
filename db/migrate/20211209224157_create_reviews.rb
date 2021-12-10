class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.string :comment
      t.string :rating
      t.belongs_to :sneaker
      t.belongs_to :user
    end
  end
end
