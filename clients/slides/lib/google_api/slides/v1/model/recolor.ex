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

defmodule GoogleApi.Slides.V1.Model.Recolor do
  @moduledoc """
  A recolor effect applied on an image.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the recolor effect. The name is determined from the `recolor_stops` by matching the gradient against the colors in the page's current color scheme. This property is read-only.
  *   `recolorStops` (*type:* `list(GoogleApi.Slides.V1.Model.ColorStop.t)`, *default:* `nil`) - The recolor effect is represented by a gradient, which is a list of color stops. The colors in the gradient will replace the corresponding colors at the same position in the color palette and apply to the image. This property is read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :recolorStops => list(GoogleApi.Slides.V1.Model.ColorStop.t()) | nil
        }

  field(:name)
  field(:recolorStops, as: GoogleApi.Slides.V1.Model.ColorStop, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.Recolor do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.Recolor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.Recolor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
