class CreateBuildings < ActiveRecord::Migration[6.0]
  def change
    create_table :buildings do |t|
      t.integer :year_built
      t.string :type
      t.string :address
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
