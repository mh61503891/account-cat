require 'active_record'

module AccountCat; module Action; class Create

  def initialize(db_file_path:)
    @db_file_path = db_file_path
  end

  def execute
    raise "File already exists: #{@db_file_path}" if File.exist?(@db_file_path)
    db_connect
    db_setup
  end

  private

  def db_connect
    ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: @db_file_path)
  end

  def db_setup
    ActiveRecord::Migration.create_table :people do |t|
      t.string :user_id
      t.string :user_name
      t.string :name
      t.string :name_ruby
      t.string :department
      t.string :division
      t.string :unit
      t.string :area
      t.string :email
      t.string :source, null:false
      t.timestamps
    end
    %i(
      user_id
      user_name
      name
      name_ruby
      department
      division
      unit
      area
      email
      source
    ).each do |column|
      ActiveRecord::Migration.add_index :people, column
    end
  end

end; end; end
