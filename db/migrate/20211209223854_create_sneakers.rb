
    class CreateSneakers < ActiveRecord::Migration[6.1]
      def change
        create_table :sneakers do |t|
          t.string :name
          t.string :brand
          t.integer :release_date
          t.integer :resell_value
         
    end
  end
end
