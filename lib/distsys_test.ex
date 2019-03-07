defmodule DistsysTest do

  def start do
    Printer.start_link(Helper.node_name())
    Producer.start_link({3000, Helper.node_name()})
  end
end
