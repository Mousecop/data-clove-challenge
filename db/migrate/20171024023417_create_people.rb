class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :gender
      t.string :city
      t.string :street
      t.string :state
      t.string :country
      t.string :language
      t.string :birthdate

      t.timestamps
    end
  end
end
