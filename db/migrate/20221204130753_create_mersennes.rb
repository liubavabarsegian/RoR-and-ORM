class CreateMersennes < ActiveRecord::Migration[7.0]
  def change
    create_table :mersennes, :primary_key => 'num' do |t|
      t.integer :num, null: false
      t.string :result
      t.integer :count

      t.timestamps
    end
    execute 'ALTER TABLE palindroms ADD PRIMARY KEY (num);'
    add_index :mersennes, [:num], unique: true
  end
end
