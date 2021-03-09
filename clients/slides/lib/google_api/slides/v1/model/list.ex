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

defmodule GoogleApi.Slides.V1.Model.List do
  @moduledoc """
  A List describes the look and feel of bullets belonging to paragraphs associated with a list. A paragraph that is part of a list has an implicit reference to that list's ID.

  ## Attributes

  *   `listId` (*type:* `String.t`, *default:* `nil`) - The ID of the list.
  *   `nestingLevel` (*type:* `%{optional(String.t) => GoogleApi.Slides.V1.Model.NestingLevel.t}`, *default:* `nil`) - A map of nesting levels to the properties of bullets at the associated level. A list has at most nine levels of nesting, so the possible values for the keys of this map are 0 through 8, inclusive.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :listId => String.t() | nil,
          :nestingLevel =>
            %{optional(String.t()) => GoogleApi.Slides.V1.Model.NestingLevel.t()} | nil
        }

  field(:listId)
  field(:nestingLevel, as: GoogleApi.Slides.V1.Model.NestingLevel, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.List do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.List.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.List do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
