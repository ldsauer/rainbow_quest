class CreateStrokes < ActiveRecord::Migration[7.1]
  def change
    create_table :strokes do |t|
      t.integer :user_id
      t.string :country_code
      t.datetime :touched_at

      t.timestamps
    end
  end
end
