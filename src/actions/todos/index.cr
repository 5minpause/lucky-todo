class Todos::Index < BrowserAction
  route do
    render IndexPage, todos: [] of Todos
  end
end
