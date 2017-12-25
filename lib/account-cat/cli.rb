require 'thor'

module AccountCat
  class CLI < Thor

    desc 'create DB_FILE_PATH', 'Create a new database file'
    def create(db_file_path)
      require 'account-cat/actions/create'
      AccountCat::Action::Create.new(db_file_path:db_file_path).execute
    end

    desc 'import DB_FILE_PATH CSV_FILE_PATH', 'Import a csv file to a database file'
    def import(db_file_path, csv_file_path)
      require 'account-cat/actions/import'
      AccountCat::Action::Import.new(db_file_path:db_file_path, csv_file_path:csv_file_path).execute
    end

    desc :search, 'Search accounts from a database file'
    def search
      require 'account-cat/actions/search'
      AccountCat::Action::Search.new.execute
    end

  end
end
