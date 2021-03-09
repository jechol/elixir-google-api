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

defmodule GoogleApi.Slides.V1.Model.Placeholder do
  @moduledoc """
  The placeholder information that uniquely identifies a placeholder shape.

  ## Attributes

  *   `index` (*type:* `integer()`, *default:* `nil`) - The index of the placeholder. If the same placeholder types are present in the same page, they would have different index values.
  *   `parentObjectId` (*type:* `String.t`, *default:* `nil`) - The object ID of this shape's parent placeholder. If unset, the parent placeholder shape does not exist, so the shape does not inherit properties from any other shape.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of the placeholder.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :index => integer() | nil,
          :parentObjectId => String.t() | nil,
          :type => String.t() | nil
        }

  field(:index)
  field(:parentObjectId)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.Placeholder do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.Placeholder.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.Placeholder do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
