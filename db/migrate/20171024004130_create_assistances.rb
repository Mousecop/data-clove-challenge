class CreateAssistances < ActiveRecord::Migration[5.1]
  def change
    create_table :assistances do |t|
      t.integer :person_id
      t.integer :event_id

      t.timestamps
    end
  end
end
