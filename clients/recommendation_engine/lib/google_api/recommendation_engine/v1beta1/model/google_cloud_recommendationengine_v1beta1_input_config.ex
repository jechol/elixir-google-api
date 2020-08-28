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

defmodule GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1InputConfig do
  @moduledoc """
  The input config source.

  ## Attributes

  *   `bigQuerySource` (*type:* `GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1BigQuerySource.t`, *default:* `nil`) - BigQuery input source.
  *   `catalogInlineSource` (*type:* `GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1CatalogInlineSource.t`, *default:* `nil`) - The Inline source for the input content for Catalog items.
  *   `gcsSource` (*type:* `GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1GcsSource.t`, *default:* `nil`) - Google Cloud Storage location for the input content.
  *   `userEventInlineSource` (*type:* `GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEventInlineSource.t`, *default:* `nil`) - The Inline source for the input content for UserEvents.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigQuerySource =>
            GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1BigQuerySource.t(),
          :catalogInlineSource =>
            GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1CatalogInlineSource.t(),
          :gcsSource =>
            GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1GcsSource.t(),
          :userEventInlineSource =>
            GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEventInlineSource.t()
        }

  field(:bigQuerySource,
    as:
      GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1BigQuerySource
  )

  field(:catalogInlineSource,
    as:
      GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1CatalogInlineSource
  )

  field(:gcsSource,
    as:
      GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1GcsSource
  )

  field(:userEventInlineSource,
    as:
      GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1UserEventInlineSource
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1InputConfig do
  def decode(value, options) do
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1InputConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.RecommendationEngine.V1beta1.Model.GoogleCloudRecommendationengineV1beta1InputConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end