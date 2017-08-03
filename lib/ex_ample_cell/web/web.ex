defmodule ExAmpleCell.Web do
  @moduledoc """
  A module that keeps using definitions for controllers,
  views and so on.

  This can be used in your application as:

      use ExAmpleCell.Web, :controller
      use ExAmpleCell.Web, :view

  The definitions below will be executed for every view,
  controller, etc, so keep them short and clean, focused
  on imports, uses and aliases.

  Do NOT define functions inside the quoted expressions
  below.
  """

  def controller do
    quote do
      use Phoenix.Controller, namespace: ExAmpleCell.Web
      import Plug.Conn
      import ExAmpleCell.Web.Router.Helpers
      import ExAmpleCell.Web.Gettext

      import ExCell.Controller
    end
  end

  def view do
    quote do
      use Phoenix.View, root: "lib/ex_ample_cell/web/templates",
                        namespace: ExAmpleCell.Web

      # Import convenience functions from controllers
      import Phoenix.Controller, only: [get_csrf_token: 0, get_flash: 2, view_module: 1]

      # Use all HTML functionality (forms, tags, etc)
      use Phoenix.HTML

      import ExAmpleCell.Web.Router.Helpers
      import ExAmpleCell.Web.ErrorHelpers
      import ExAmpleCell.Web.Gettext

      import ExCell.View
    end
  end

  def cell(opts \\ []) do
    quote do
      use ExCell.Cell, namespace: ExAmpleCell.Web

      use Phoenix.View, root: "lib/ex_ample_cell/cells",
                        path: ExCell.View.relative_path(__MODULE__, ExAmpleCell.Web)

      import Phoenix.Controller,
             only: [get_csrf_token: 0, get_flash: 2, view_module: 1]

      use Phoenix.HTML

      import ExAmpleCell.Router.Helpers
      import ExAmpleCell.Gettext
    end
  end

  def router do
    quote do
      use Phoenix.Router
      import Plug.Conn
      import Phoenix.Controller
    end
  end

  def channel do
    quote do
      use Phoenix.Channel
      import ExAmpleCell.Web.Gettext
    end
  end

  @doc """
  When used, dispatch to the appropriate controller/view/etc.
  """
  defmacro __using__(which) when is_atom(which) do
    apply(__MODULE__, which, [])
  end
end
