class CreateApiKeys < ActiveRecord::Migration[5.2]
  def change
    create_table :api_keys do |t|
      t.string :access_token
      t.datetime :expires_at
      t.references :user, foreign_key: true
      t.boolean :active

      t.timestamps
    end
  end
end
