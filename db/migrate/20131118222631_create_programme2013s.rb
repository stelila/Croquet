class CreateProgramme2013s < ActiveRecord::Migration
  def change
    create_table :programme2013s do |t|
      t.string :title
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
