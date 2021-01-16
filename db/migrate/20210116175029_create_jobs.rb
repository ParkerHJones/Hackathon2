class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.boolean :completed
      t.string :title
      t.float :pay
      t.text :description
      t.string :priority
      t.belongs_to :building, null: false, foreign_key: true

      t.timestamps
    end
  end
end
