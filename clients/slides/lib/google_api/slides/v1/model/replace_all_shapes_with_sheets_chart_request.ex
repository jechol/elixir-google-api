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

defmodule GoogleApi.Slides.V1.Model.ReplaceAllShapesWithSheetsChartRequest do
  @moduledoc """
  Replaces all shapes that match the given criteria with the provided Google Sheets chart. The chart will be scaled and centered to fit within the bounds of the original shape. NOTE: Replacing shapes with a chart requires at least one of the spreadsheets.readonly, spreadsheets, drive.readonly, or drive OAuth scopes.

  ## Attributes

  *   `chartId` (*type:* `integer()`, *default:* `nil`) - The ID of the specific chart in the Google Sheets spreadsheet.
  *   `containsText` (*type:* `GoogleApi.Slides.V1.Model.SubstringMatchCriteria.t`, *default:* `nil`) - The criteria that the shapes must match in order to be replaced. The request will replace all of the shapes that contain the given text.
  *   `linkingMode` (*type:* `String.t`, *default:* `nil`) - The mode with which the chart is linked to the source spreadsheet. When not specified, the chart will be an image that is not linked.
  *   `pageObjectIds` (*type:* `list(String.t)`, *default:* `nil`) - If non-empty, limits the matches to page elements only on the given pages. Returns a 400 bad request error if given the page object ID of a notes page or a notes master, or if a page with that object ID doesn't exist in the presentation.
  *   `spreadsheetId` (*type:* `String.t`, *default:* `nil`) - The ID of the Google Sheets spreadsheet that contains the chart.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chartId => integer() | nil,
          :containsText => GoogleApi.Slides.V1.Model.SubstringMatchCriteria.t() | nil,
          :linkingMode => String.t() | nil,
          :pageObjectIds => list(String.t()) | nil,
          :spreadsheetId => String.t() | nil
        }

  field(:chartId)
  field(:containsText, as: GoogleApi.Slides.V1.Model.SubstringMatchCriteria)
  field(:linkingMode)
  field(:pageObjectIds, type: :list)
  field(:spreadsheetId)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.ReplaceAllShapesWithSheetsChartRequest do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.ReplaceAllShapesWithSheetsChartRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.ReplaceAllShapesWithSheetsChartRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
