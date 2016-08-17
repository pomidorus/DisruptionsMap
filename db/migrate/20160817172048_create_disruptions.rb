class CreateDisruptions < ActiveRecord::Migration[5.0]
  def change
    create_table :disruptions do |t|
      t.decimal :lat
      t.decimal :lng
      t.string  :comment

      t.timestamps
    end
  end
end
