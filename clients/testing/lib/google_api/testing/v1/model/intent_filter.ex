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

defmodule GoogleApi.Testing.V1.Model.IntentFilter do
  @moduledoc """
  The section of an tag. https://developer.android.com/guide/topics/manifest/intent-filter-element.html

  ## Attributes

  *   `actionNames` (*type:* `list(String.t)`, *default:* `nil`) - The android:name value of the tag.
  *   `categoryNames` (*type:* `list(String.t)`, *default:* `nil`) - The android:name value of the tag.
  *   `mimeType` (*type:* `String.t`, *default:* `nil`) - The android:mimeType value of the tag.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionNames => list(String.t()) | nil,
          :categoryNames => list(String.t()) | nil,
          :mimeType => String.t() | nil
        }

  field(:actionNames, type: :list)
  field(:categoryNames, type: :list)
  field(:mimeType)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.IntentFilter do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.IntentFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.IntentFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
