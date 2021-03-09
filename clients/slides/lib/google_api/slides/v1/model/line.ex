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

defmodule GoogleApi.Slides.V1.Model.Line do
  @moduledoc """
  A PageElement kind representing a non-connector line, straight connector, curved connector, or bent connector.

  ## Attributes

  *   `lineCategory` (*type:* `String.t`, *default:* `nil`) - The category of the line. It matches the `category` specified in CreateLineRequest, and can be updated with UpdateLineCategoryRequest.
  *   `lineProperties` (*type:* `GoogleApi.Slides.V1.Model.LineProperties.t`, *default:* `nil`) - The properties of the line.
  *   `lineType` (*type:* `String.t`, *default:* `nil`) - The type of the line.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :lineCategory => String.t() | nil,
          :lineProperties => GoogleApi.Slides.V1.Model.LineProperties.t() | nil,
          :lineType => String.t() | nil
        }

  field(:lineCategory)
  field(:lineProperties, as: GoogleApi.Slides.V1.Model.LineProperties)
  field(:lineType)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.Line do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.Line.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.Line do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
