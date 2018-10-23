class AddUserIdToTodos::V20181023214835 < LuckyMigrator::Migration::V1
  def migrate
    alter :todos do
      add_belongs_to owner : User, on_delete: :cascade
    end
    # create :things do
    #  add title : String
    #  add description : String?
    # end

    # Run custom SQL with execute
    #
    # execute "CREATE UNIQUE INDEX things_title_index ON things (title);"
  end

  def rollback
    # drop :things
  end
end
