defmodule SyntaxExampleSpec do
  use ESpec
  use Tesla

  plug Tesla.Middleware.BaseUrl, "http://localhost:8880"

  it do
    response = get("/")
    expect response.status |> to(eq 200)
  end

end
