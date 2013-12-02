class CreateBookALawns < ActiveRecord::Migration
  def change
    create_table :book_a_lawns do |t|
      t.string :title
      t.text :description
      t.datetime :date

      t.timestamps
    end
  end
end
