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

defmodule GoogleApi.Slides.V1.Model.Bullet do
  @moduledoc """
  Describes the bullet of a paragraph.

  ## Attributes

  *   `bulletStyle` (*type:* `GoogleApi.Slides.V1.Model.TextStyle.t`, *default:* `nil`) - The paragraph specific text style applied to this bullet.
  *   `glyph` (*type:* `String.t`, *default:* `nil`) - The rendered bullet glyph for this paragraph.
  *   `listId` (*type:* `String.t`, *default:* `nil`) - The ID of the list this paragraph belongs to.
  *   `nestingLevel` (*type:* `integer()`, *default:* `nil`) - The nesting level of this paragraph in the list.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bulletStyle => GoogleApi.Slides.V1.Model.TextStyle.t() | nil,
          :glyph => String.t() | nil,
          :listId => String.t() | nil,
          :nestingLevel => integer() | nil
        }

  field(:bulletStyle, as: GoogleApi.Slides.V1.Model.TextStyle)
  field(:glyph)
  field(:listId)
  field(:nestingLevel)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.Bullet do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.Bullet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.Bullet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
