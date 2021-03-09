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

defmodule GoogleApi.Storage.V1.Model.ComposeRequest do
  @moduledoc """
  A Compose request.

  ## Attributes

  *   `destination` (*type:* `GoogleApi.Storage.V1.Model.Object.t`, *default:* `nil`) - Properties of the resulting object.
  *   `kind` (*type:* `String.t`, *default:* `storage#composeRequest`) - The kind of item this is.
  *   `sourceObjects` (*type:* `list(GoogleApi.Storage.V1.Model.ComposeRequestSourceObjects.t)`, *default:* `nil`) - The list of source objects that will be concatenated into a single object.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destination => GoogleApi.Storage.V1.Model.Object.t() | nil,
          :kind => String.t() | nil,
          :sourceObjects => list(GoogleApi.Storage.V1.Model.ComposeRequestSourceObjects.t()) | nil
        }

  field(:destination, as: GoogleApi.Storage.V1.Model.Object)
  field(:kind)
  field(:sourceObjects, as: GoogleApi.Storage.V1.Model.ComposeRequestSourceObjects, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.ComposeRequest do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.ComposeRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.ComposeRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
