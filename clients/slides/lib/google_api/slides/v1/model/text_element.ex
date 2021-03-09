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

defmodule GoogleApi.Slides.V1.Model.TextElement do
  @moduledoc """
  A TextElement describes the content of a range of indices in the text content of a Shape or TableCell.

  ## Attributes

  *   `autoText` (*type:* `GoogleApi.Slides.V1.Model.AutoText.t`, *default:* `nil`) - A TextElement representing a spot in the text that is dynamically replaced with content that can change over time.
  *   `endIndex` (*type:* `integer()`, *default:* `nil`) - The zero-based end index of this text element, exclusive, in Unicode code units.
  *   `paragraphMarker` (*type:* `GoogleApi.Slides.V1.Model.ParagraphMarker.t`, *default:* `nil`) - A marker representing the beginning of a new paragraph. The `start_index` and `end_index` of this TextElement represent the range of the paragraph. Other TextElements with an index range contained inside this paragraph's range are considered to be part of this paragraph. The range of indices of two separate paragraphs will never overlap.
  *   `startIndex` (*type:* `integer()`, *default:* `nil`) - The zero-based start index of this text element, in Unicode code units.
  *   `textRun` (*type:* `GoogleApi.Slides.V1.Model.TextRun.t`, *default:* `nil`) - A TextElement representing a run of text where all of the characters in the run have the same TextStyle. The `start_index` and `end_index` of TextRuns will always be fully contained in the index range of a single `paragraph_marker` TextElement. In other words, a TextRun will never span multiple paragraphs.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoText => GoogleApi.Slides.V1.Model.AutoText.t() | nil,
          :endIndex => integer() | nil,
          :paragraphMarker => GoogleApi.Slides.V1.Model.ParagraphMarker.t() | nil,
          :startIndex => integer() | nil,
          :textRun => GoogleApi.Slides.V1.Model.TextRun.t() | nil
        }

  field(:autoText, as: GoogleApi.Slides.V1.Model.AutoText)
  field(:endIndex)
  field(:paragraphMarker, as: GoogleApi.Slides.V1.Model.ParagraphMarker)
  field(:startIndex)
  field(:textRun, as: GoogleApi.Slides.V1.Model.TextRun)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.TextElement do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.TextElement.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.TextElement do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
