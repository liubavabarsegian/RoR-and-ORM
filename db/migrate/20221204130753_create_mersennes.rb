class CreateMersennes < ActiveRecord::Migration[7.0]
  def change
    create_table :mersennes, :primary_key => 'num', id: false do |t|
      t.integer :num, null: false, unique: true
      t.string :result
      t.integer :count

      t.timestamps
    end
  end
end
