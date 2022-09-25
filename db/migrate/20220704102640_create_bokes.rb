class CreateBokes < ActiveRecord::Migration[6.1]
  def change
    create_table :bokes do |t|
      t.string :boke
      t.string :image_url

      t.timestamps :created_at, null: false, default: ->{ "CURRENT_TIMESTAMP" }
      t.created_at :updated_at, null: false, default: ->{ "CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP" }
    end
  end
end
