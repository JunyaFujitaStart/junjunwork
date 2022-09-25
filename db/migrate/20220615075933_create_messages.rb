class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :content

      t.timestamps TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
      t.created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    end
  end
end
