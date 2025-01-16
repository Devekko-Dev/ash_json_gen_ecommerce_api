defmodule Mix.Tasks.EcommerceGen do
  @moduledoc "The Ecommerce API mix task: `mix ecommerce_gen`"
  use Mix.Task

  @shortdoc "Gen Ecommerce API Resource."
  def run(_) do
    #API.Gen.Ecommerce.debugjson()
#     API.Gen.Ecommerce.code()
     API.Gen.Ecommerce.debugcode()
    end
end
