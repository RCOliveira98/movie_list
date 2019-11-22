class CreateActors < ActiveRecord::Migration[5.2]
  def change
    create_table :actors do |t|
      t.string :name
      t.datetime :birthdate
      t.string :gender

      t.timestamps
    end
  end
end
