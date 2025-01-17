defmodule AshJsonGenEcommerceApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :ash_json_gen_ecommerce_api,
      version: "0.1.0",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp copy_extra_files(release) do
    File.cp_r("priv/ecommerceapi", Path.join(release.path, "priv"))
    release
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ash, "~> 3.0"}
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
