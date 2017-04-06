class CreateForms < ActiveRecord::Migration[5.0]
  def change
    create_table :forms do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
