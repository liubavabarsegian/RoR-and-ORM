class CreateMersennes < ActiveRecord::Migration[7.0]
  def change
    create_table :mersennes, id: false do |t|
      t.integer :number, null: false
      t.string :result
      t.integer :count

      t.timestamps
    end
    execute 'ALTER TABLE mersennes ADD PRIMARY KEY (number);'
    add_index :mersennes, [:number], unique: true
  end
end
