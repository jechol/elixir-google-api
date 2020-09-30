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

defmodule GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1PhoneLead do
  @moduledoc """
  Container for phone lead specific information.

  ## Attributes

  *   `chargedCallTimestamp` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp of the phone call which resulted in a charged phone lead.
  *   `chargedConnectedCallDurationSeconds` (*type:* `String.t`, *default:* `nil`) - Duration of the charged phone call in seconds.
  *   `consumerPhoneNumber` (*type:* `String.t`, *default:* `nil`) - Consumer phone number associated with the phone lead.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chargedCallTimestamp => DateTime.t(),
          :chargedConnectedCallDurationSeconds => String.t(),
          :consumerPhoneNumber => String.t()
        }

  field(:chargedCallTimestamp, as: DateTime)
  field(:chargedConnectedCallDurationSeconds)
  field(:consumerPhoneNumber)
end

defimpl Poison.Decoder,
  for: GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1PhoneLead do
  def decode(value, options) do
    GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1PhoneLead.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.LocalServices.V1.Model.GoogleAdsHomeservicesLocalservicesV1PhoneLead do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end