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

defmodule GoogleApi.SearchConsole.V1.Model.ApiDataRow do
  @moduledoc """


  ## Attributes

  *   `clicks` (*type:* `float()`, *default:* `nil`) - 
  *   `ctr` (*type:* `float()`, *default:* `nil`) - 
  *   `impressions` (*type:* `float()`, *default:* `nil`) - 
  *   `keys` (*type:* `list(String.t)`, *default:* `nil`) - 
  *   `position` (*type:* `float()`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clicks => float() | nil,
          :ctr => float() | nil,
          :impressions => float() | nil,
          :keys => list(String.t()) | nil,
          :position => float() | nil
        }

  field(:clicks)
  field(:ctr)
  field(:impressions)
  field(:keys, type: :list)
  field(:position)
end

defimpl Poison.Decoder, for: GoogleApi.SearchConsole.V1.Model.ApiDataRow do
  def decode(value, options) do
    GoogleApi.SearchConsole.V1.Model.ApiDataRow.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SearchConsole.V1.Model.ApiDataRow do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
