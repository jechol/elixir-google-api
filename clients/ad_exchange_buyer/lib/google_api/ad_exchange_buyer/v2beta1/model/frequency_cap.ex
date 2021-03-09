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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.FrequencyCap do
  @moduledoc """
  Frequency cap.

  ## Attributes

  *   `maxImpressions` (*type:* `integer()`, *default:* `nil`) - The maximum number of impressions that can be served to a user within the specified time period.
  *   `numTimeUnits` (*type:* `integer()`, *default:* `nil`) - The amount of time, in the units specified by time_unit_type. Defines the amount of time over which impressions per user are counted and capped.
  *   `timeUnitType` (*type:* `String.t`, *default:* `nil`) - The time unit. Along with num_time_units defines the amount of time over which impressions per user are counted and capped.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxImpressions => integer() | nil,
          :numTimeUnits => integer() | nil,
          :timeUnitType => String.t() | nil
        }

  field(:maxImpressions)
  field(:numTimeUnits)
  field(:timeUnitType)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.FrequencyCap do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.FrequencyCap.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.FrequencyCap do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
