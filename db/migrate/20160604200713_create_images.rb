class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|

    t.text     "caption"
    t.integer  "art_installation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "photo"

    t.timestamps null: false
    end
  end
end
