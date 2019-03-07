defmodule Printer do
  use GenServer
  require Logger

  # Client

  def start_link(node_name) do
    GenServer.start_link(__MODULE__, node_name, name: __MODULE__)
  end

  def print(str) do
    GenServer.cast(__MODULE__, {:notify, str})
  end

  # Server (callbacks)

  @impl true
  def init(node_name) do
    Logger.info("init genserver Printer #{node_name}")
    {:ok, node_name}
  end

  @impl true
  def handle_cast({:notify, str}, node_name) do
    Logger.info("#{str} > Printer#{node_name}")
    {:noreply, node_name}
  end
end
