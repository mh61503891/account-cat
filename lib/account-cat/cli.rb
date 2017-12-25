require 'thor'
require 'account-cat/commands'

module AccountCat
  class CLI < Thor

    desc :create, 'Create a new database file'
    def create
      Commands.new.create()
    end

    desc :import, 'Import a csv file to a database file'
    def import
      Commands.new.import()
    end

    desc :search, 'Search accounts from a database file'
    def search
      Commands.new.search()
    end

  end
end
