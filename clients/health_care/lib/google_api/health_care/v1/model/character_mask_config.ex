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

defmodule GoogleApi.HealthCare.V1.Model.CharacterMaskConfig do
  @moduledoc """
  Mask a string by replacing its characters with a fixed character.

  ## Attributes

  *   `maskingCharacter` (*type:* `String.t`, *default:* `nil`) - Character to mask the sensitive values. If not supplied, defaults to "*".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maskingCharacter => String.t()
        }

  field(:maskingCharacter)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.CharacterMaskConfig do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.CharacterMaskConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.CharacterMaskConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
