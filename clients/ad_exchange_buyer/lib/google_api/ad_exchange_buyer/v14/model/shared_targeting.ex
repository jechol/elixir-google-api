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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.SharedTargeting do
  @moduledoc """


  ## Attributes

  *   `exclusions` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.TargetingValue.t)`, *default:* `nil`) - The list of values to exclude from targeting. Each value is AND'd together.
  *   `inclusions` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.TargetingValue.t)`, *default:* `nil`) - The list of value to include as part of the targeting. Each value is OR'd together.
  *   `key` (*type:* `String.t`, *default:* `nil`) - The key representing the shared targeting criterion.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exclusions => list(GoogleApi.AdExchangeBuyer.V14.Model.TargetingValue.t()) | nil,
          :inclusions => list(GoogleApi.AdExchangeBuyer.V14.Model.TargetingValue.t()) | nil,
          :key => String.t() | nil
        }

  field(:exclusions, as: GoogleApi.AdExchangeBuyer.V14.Model.TargetingValue, type: :list)
  field(:inclusions, as: GoogleApi.AdExchangeBuyer.V14.Model.TargetingValue, type: :list)
  field(:key)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.SharedTargeting do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.SharedTargeting.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.SharedTargeting do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
