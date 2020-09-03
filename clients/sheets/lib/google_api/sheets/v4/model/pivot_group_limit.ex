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

defmodule GoogleApi.Sheets.V4.Model.PivotGroupLimit do
  @moduledoc """
  The count limit on rows or columns in the pivot group.

  ## Attributes

  *   `applyOrder` (*type:* `integer()`, *default:* `nil`) - The order in which the group limit is applied to the pivot table. Pivot group limits are applied from lower to higher order number. Order numbers are normalized to consecutive integers from 0. For write request, to fully customize the applying orders, all pivot group limits should have this field set with an unique number. Otherwise, the order is determined by the index in the PivotTable.rows list and then the PivotTable.columns list.
  *   `countLimit` (*type:* `integer()`, *default:* `nil`) - The count limit.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applyOrder => integer(),
          :countLimit => integer()
        }

  field(:applyOrder)
  field(:countLimit)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.PivotGroupLimit do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.PivotGroupLimit.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.PivotGroupLimit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end