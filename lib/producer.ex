defmodule Producer do
  use GenServer
  require Logger

  # Client

  def start_link({time, node_name}) do
    GenServer.start_link(__MODULE__, {time, node_name}, name: __MODULE__)
  end

  def notify() do
    GenServer.cast(__MODULE__, :notify)
  end

  # Server (callbacks)

  @impl true
  def init({time, node_name}) do
    Logger.info("init genserver Producer #{node_name}")
    spawn(fn -> :timer.sleep(time); Producer.notify() end)
    {:ok, {time, node_name}}
  end

  @impl true
  def handle_cast(:notify, {time, node_name}) do
    Printer.print("producer#{node_name}")
    spawn(fn -> :timer.sleep(time); Producer.notify() end)
    {:noreply, {time,node_name}}
  end
end
