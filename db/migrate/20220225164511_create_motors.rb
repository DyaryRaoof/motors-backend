class CreateMotors < ActiveRecord::Migration[7.0]
  def change
    create_table :motors do |t|
      t.string :name
      t.text :description
      t.string :image
      t.float :price

      t.timestamps
    end
  end
end
