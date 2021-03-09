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

defmodule GoogleApi.Slides.V1.Model.VideoProperties do
  @moduledoc """
  The properties of the Video.

  ## Attributes

  *   `autoPlay` (*type:* `boolean()`, *default:* `nil`) - Whether to enable video autoplay when the page is displayed in present mode. Defaults to false.
  *   `end` (*type:* `integer()`, *default:* `nil`) - The time at which to end playback, measured in seconds from the beginning of the video. If set, the end time should be after the start time. If not set or if you set this to a value that exceeds the video's length, the video will be played until its end.
  *   `mute` (*type:* `boolean()`, *default:* `nil`) - Whether to mute the audio during video playback. Defaults to false.
  *   `outline` (*type:* `GoogleApi.Slides.V1.Model.Outline.t`, *default:* `nil`) - The outline of the video. The default outline matches the defaults for new videos created in the Slides editor.
  *   `start` (*type:* `integer()`, *default:* `nil`) - The time at which to start playback, measured in seconds from the beginning of the video. If set, the start time should be before the end time. If you set this to a value that exceeds the video's length in seconds, the video will be played from the last second. If not set, the video will be played from the beginning.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoPlay => boolean() | nil,
          :end => integer() | nil,
          :mute => boolean() | nil,
          :outline => GoogleApi.Slides.V1.Model.Outline.t() | nil,
          :start => integer() | nil
        }

  field(:autoPlay)
  field(:end)
  field(:mute)
  field(:outline, as: GoogleApi.Slides.V1.Model.Outline)
  field(:start)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.VideoProperties do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.VideoProperties.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.VideoProperties do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
