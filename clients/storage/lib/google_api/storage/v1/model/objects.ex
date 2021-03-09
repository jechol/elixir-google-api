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

defmodule GoogleApi.Storage.V1.Model.Objects do
  @moduledoc """
  A list of objects.

  ## Attributes

  *   `items` (*type:* `list(GoogleApi.Storage.V1.Model.Object.t)`, *default:* `nil`) - The list of items.
  *   `kind` (*type:* `String.t`, *default:* `storage#objects`) - The kind of item this is. For lists of objects, this is always storage#objects.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The continuation token, used to page through large result sets. Provide this value in a subsequent request to return the next page of results.
  *   `prefixes` (*type:* `list(String.t)`, *default:* `nil`) - The list of prefixes of objects matching-but-not-listed up to and including the requested delimiter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.Storage.V1.Model.Object.t()) | nil,
          :kind => String.t() | nil,
          :nextPageToken => String.t() | nil,
          :prefixes => list(String.t()) | nil
        }

  field(:items, as: GoogleApi.Storage.V1.Model.Object, type: :list)
  field(:kind)
  field(:nextPageToken)
  field(:prefixes, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Storage.V1.Model.Objects do
  def decode(value, options) do
    GoogleApi.Storage.V1.Model.Objects.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Storage.V1.Model.Objects do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
