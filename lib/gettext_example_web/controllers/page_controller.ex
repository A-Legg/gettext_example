defmodule GettextExampleWeb.PageController do
  use GettextExampleWeb, :controller

  def index(conn, _params) do
    dgettext("foo/bar", "This is a test")
  end

  def func() do
    dgettext("foo/bar", "Does this work?")
  end
end
