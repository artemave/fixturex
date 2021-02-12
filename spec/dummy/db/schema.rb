# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength
ActiveRecord::Schema.define(version: 1) do
  create_table :forest, force: true do |t|
    t.column :name, :string
  end

  create_table :attachments, force: true do |t|
    t.column :attachable_id, :integer
    t.column :attachable_type, :string
  end

  create_table :leaves, force: true do |t|
    t.column :tree_id, :integer
  end

  create_table :pictures, force: true do |t|
    t.column :imageable_id, :integer
    t.column :imageable_type, :string
  end

  create_table :posts, force: true do |t|
    t.column :name, :string
  end

  create_table :things, force: true do |t|
    t.column :name, :string
  end

  create_table :trees, force: true do |t|
    t.column :forest_id, :integer
  end

  create_table :trunks, force: true do |t|
    t.column :tree_id, :integer
  end
end
# rubocop:enable Metrics/BlockLength
