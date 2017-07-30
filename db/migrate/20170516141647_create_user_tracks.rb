class CreateUserTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tracks do |t|
      t.bigint :user_id, null: false
      t.bigint :track_id, null: false
      t.boolean :anonymous, null: false, default: false
      t.string :handle, null: true

      t.timestamps
    end
    add_foreign_key :user_tracks, :users
    add_foreign_key :user_tracks, :tracks
  end
end