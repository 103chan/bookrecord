class CreateBookrecorders < ActiveRecord::Migration[6.0]
  def change
    create_table :bookrecorders do |t|
      t.string :author, null: false
      t.string :reading_date
      t.integer :genre_id,      null: false
      t.integer :recommend_id,  null: false
      t.text :impression,       null: false
      t.references :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
