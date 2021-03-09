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

defmodule GoogleApi.Slides.V1.Model.ShapeBackgroundFill do
  @moduledoc """
  The shape background fill.

  ## Attributes

  *   `propertyState` (*type:* `String.t`, *default:* `nil`) - The background fill property state. Updating the fill on a shape will implicitly update this field to `RENDERED`, unless another value is specified in the same request. To have no fill on a shape, set this field to `NOT_RENDERED`. In this case, any other fill fields set in the same request will be ignored.
  *   `solidFill` (*type:* `GoogleApi.Slides.V1.Model.SolidFill.t`, *default:* `nil`) - Solid color fill.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :propertyState => String.t() | nil,
          :solidFill => GoogleApi.Slides.V1.Model.SolidFill.t() | nil
        }

  field(:propertyState)
  field(:solidFill, as: GoogleApi.Slides.V1.Model.SolidFill)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.ShapeBackgroundFill do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.ShapeBackgroundFill.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.ShapeBackgroundFill do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
