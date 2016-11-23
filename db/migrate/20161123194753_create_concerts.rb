class CreateConcerts < ActiveRecord::Migration
  def change
    create_table :concerts do |t|
      t.string :name
      t.string :description
      t.datetime :release_date

      t.timestamps null: false
    end
  end
end
