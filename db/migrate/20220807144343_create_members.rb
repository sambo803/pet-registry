class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :pet_name
      t.string :pet_type
      t.string :email
      t.string :image_url

      t.timestamps
    end
  end
end
