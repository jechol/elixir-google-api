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

defmodule GoogleApi.Slides.V1.Model.Thumbnail do
  @moduledoc """
  The thumbnail of a page.

  ## Attributes

  *   `contentUrl` (*type:* `String.t`, *default:* `nil`) - The content URL of the thumbnail image. The URL to the image has a default lifetime of 30 minutes. This URL is tagged with the account of the requester. Anyone with the URL effectively accesses the image as the original requester. Access to the image may be lost if the presentation's sharing settings change. The mime type of the thumbnail image is the same as specified in the `GetPageThumbnailRequest`.
  *   `height` (*type:* `integer()`, *default:* `nil`) - The positive height in pixels of the thumbnail image.
  *   `width` (*type:* `integer()`, *default:* `nil`) - The positive width in pixels of the thumbnail image.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :contentUrl => String.t() | nil,
          :height => integer() | nil,
          :width => integer() | nil
        }

  field(:contentUrl)
  field(:height)
  field(:width)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.Thumbnail do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.Thumbnail.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.Thumbnail do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
