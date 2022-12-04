class CreateMersennes < ActiveRecord::Migration[7.0]
  def change
    create_table :mersennes, :primary_key => 'num', id: false do |t|
      t.integer :num, null: false, unique: true
      t.integer :result, array: true
      t.integer :count

      t.timestamps
    end
  end
end
