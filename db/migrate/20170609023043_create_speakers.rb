class CreateSpeakers < ActiveRecord::Migration[5.0]
  def change
    create_table :speakers do |t|
      t.integer :sp_id
      t.string :sp_firstname
      t.string :sp_lastname
      t.string :sp_major
      t.string :sp_email
      t.string :sp_phone
      t.string :sp_description
      t.string :sp_avatar

      t.timestamps
    end
  end
end
