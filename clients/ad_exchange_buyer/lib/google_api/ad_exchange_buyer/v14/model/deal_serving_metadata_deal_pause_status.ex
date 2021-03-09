# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.AdExchangeBuyer.V14.Model.DealServingMetadataDealPauseStatus do
  @moduledoc """
  Tracks which parties (if any) have paused a deal. The deal is considered paused if has_buyer_paused || has_seller_paused. Each of the has_buyer_paused or the has_seller_paused bits can be set independently.

  ## Attributes

  *   `buyerPauseReason` (*type:* `String.t`, *default:* `nil`) - 
  *   `firstPausedBy` (*type:* `String.t`, *default:* `nil`) - If the deal is paused, records which party paused the deal first.
  *   `hasBuyerPaused` (*type:* `boolean()`, *default:* `nil`) - 
  *   `hasSellerPaused` (*type:* `boolean()`, *default:* `nil`) - 
  *   `sellerPauseReason` (*type:* `String.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :buyerPauseReason => String.t() | nil,
          :firstPausedBy => String.t() | nil,
          :hasBuyerPaused => boolean() | nil,
          :hasSellerPaused => boolean() | nil,
          :sellerPauseReason => String.t() | nil
        }

  field(:buyerPauseReason)
  field(:firstPausedBy)
  field(:hasBuyerPaused)
  field(:hasSellerPaused)
  field(:sellerPauseReason)
end

defimpl Poison.Decoder,
  for: GoogleApi.AdExchangeBuyer.V14.Model.DealServingMetadataDealPauseStatus do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.DealServingMetadataDealPauseStatus.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AdExchangeBuyer.V14.Model.DealServingMetadataDealPauseStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
