class CreateInstallations < ActiveRecord::Migration
  def change
    create_table :installations do |t|

      t.string :name
      t.string :description
      t.string :address
      t.datetime "created_at"
      t.datetime "updated_at"
      t.float    "latitude"
      t.float    "longitude"

      t.timestamps null: false
    end
  end
end
