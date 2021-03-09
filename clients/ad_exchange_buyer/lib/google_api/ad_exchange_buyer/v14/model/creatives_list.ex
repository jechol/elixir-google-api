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

defmodule GoogleApi.AdExchangeBuyer.V14.Model.CreativesList do
  @moduledoc """
  The creatives feed lists the active creatives for the Ad Exchange buyer accounts that the user has access to. Each entry in the feed corresponds to a single creative.

  ## Attributes

  *   `items` (*type:* `list(GoogleApi.AdExchangeBuyer.V14.Model.Creative.t)`, *default:* `nil`) - A list of creatives.
  *   `kind` (*type:* `String.t`, *default:* `adexchangebuyer#creativesList`) - Resource type.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token used to page through creatives. To retrieve the next page of results, set the next request's "pageToken" value to this.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.AdExchangeBuyer.V14.Model.Creative.t()) | nil,
          :kind => String.t() | nil,
          :nextPageToken => String.t() | nil
        }

  field(:items, as: GoogleApi.AdExchangeBuyer.V14.Model.Creative, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V14.Model.CreativesList do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V14.Model.CreativesList.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V14.Model.CreativesList do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
