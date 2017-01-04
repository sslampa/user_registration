class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :number
      t.references :user, index: true, foreign_key: {on_delete: :restrict, on_update: :restrict}, null: false

      t.timestamps null: false
    end
  end
end
