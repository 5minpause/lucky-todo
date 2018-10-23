class CreateTodos::V20181023214519 < LuckyMigrator::Migration::V1
  def migrate
    create :todos do
     add title : String
     add finished : Bool
    end

    # Run custom SQL with execute
    #
    # execute "CREATE UNIQUE INDEX things_title_index ON things (title);"
  end

  def rollback
    # drop :things
  end
end
