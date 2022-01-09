class UseUnixTimestamp < ActiveRecord::Migration[6.1]
  def change
    change_column :active_storage_attachments, :created_at, :timestamp
    change_column :active_storage_blobs, :created_at, :timestamp

    change_column :articles, :created_at, :timestamp
    change_column :articles, :updated_at, :timestamp

    change_column :comments, :created_at, :timestamp
    change_column :comments, :updated_at, :timestamp

    change_column :promos, :created_at, :timestamp
    change_column :promos, :updated_at, :timestamp
  end
end
