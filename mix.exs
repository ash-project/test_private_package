defmodule TestPrivatePackage.MixProject do
  use Mix.Project

  def project do
    [
      app: :test_private_package,
      version: "0.1.1",
      elixir: "~> 1.18",
      start_permanent: Mix.env() == :prod,
      consolidate_protocols: Mix.env() != :dev,
      package: package(),
      deps: deps()
    ]
  end

  defp package do
    [
      name: :test_private_package,
      organization: "igniter",
      licenses: ["MIT"],
      files: ~w(lib .formatter.exs mix.exs README*),
      extra: %{igniter: %{only: [:dev, :test]}}
    ]
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
      {:igniter, "~> 0.5", optional: true},
      {:ex_doc, "~> 0.32", only: [:dev, :test], runtime: false},
   ]
  end
end
