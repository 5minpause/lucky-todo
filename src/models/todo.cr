require "./user"

class Todo < BaseModel
  table :todos do
    column title : String
    column finished : Bool
    belongs_to owner : User
  end
end
