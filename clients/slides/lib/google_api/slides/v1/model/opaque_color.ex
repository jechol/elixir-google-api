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

defmodule GoogleApi.Slides.V1.Model.OpaqueColor do
  @moduledoc """
  A themeable solid color value.

  ## Attributes

  *   `rgbColor` (*type:* `GoogleApi.Slides.V1.Model.RgbColor.t`, *default:* `nil`) - An opaque RGB color.
  *   `themeColor` (*type:* `String.t`, *default:* `nil`) - An opaque theme color.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :rgbColor => GoogleApi.Slides.V1.Model.RgbColor.t() | nil,
          :themeColor => String.t() | nil
        }

  field(:rgbColor, as: GoogleApi.Slides.V1.Model.RgbColor)
  field(:themeColor)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.OpaqueColor do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.OpaqueColor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.OpaqueColor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
