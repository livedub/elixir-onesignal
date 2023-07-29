defmodule OneSignal.Mixfile do
  use Mix.Project

  @description "Elixir wrapper of OneSignal"

  def project do
    [app: :one_signal,
     version: "0.0.9",
     elixir: "~> 1.5",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     description: @description,
     package: package()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [mod: {OneSignal, []},
     extra_applications: [:logger, :public_key]]
  end

  defp package do
    [maintainers: ["Takuma Yoshida"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/yoavlt/one_signal"},
    ]
  end

  defp deps do
    [
      {:poison, "~> 3.0"},
      {:httpoison, "~> 1.0"},
      {:ex_doc, "~> 0.8.0", only: :docs},
      {:ssl_verify_fun, "~> 1.1.7", manager: :rebar3, override: true}
    ]
  end
end
