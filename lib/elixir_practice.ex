defmodule ElixirPractice do
  @moduledoc """
  Documentation for ElixirPractice.
  """

  @doc """
  Hello world.

  ## Examples

      iex> ElixirPractice.hello()
      :world

  """

  # def add(a, b) do
  #   a + b
  # end
  # def subtract(a, b) do
  #   a - b
  # end

  # def hello do
  #   :world
  # end

  def init(default_options) do
    IO.puts "initializing plug"
    default_options
  end

  def call(conn, options) do
    IO.puts "calling plug"

    conn
    |> Plug.Conn.send_resp(200, "Hello world")
  end
end
