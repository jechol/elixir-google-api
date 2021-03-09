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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.Seller do
  @moduledoc """
  Represents a seller of inventory. Each seller is identified by a unique Ad Manager account ID.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - The unique ID for the seller. The seller fills in this field. The seller account ID is then available to buyer in the product.
  *   `subAccountId` (*type:* `String.t`, *default:* `nil`) - Optional sub-account ID for the seller.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :subAccountId => String.t() | nil
        }

  field(:accountId)
  field(:subAccountId)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Seller do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.Seller.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.Seller do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
