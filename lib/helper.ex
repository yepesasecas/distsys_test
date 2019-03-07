defmodule Helper do

  def node_name do
    Node.self
    |> Atom.to_string()
    |> String.split("@")
    |> List.first()
  end

end
