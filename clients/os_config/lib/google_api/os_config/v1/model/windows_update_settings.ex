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

defmodule GoogleApi.OSConfig.V1.Model.WindowsUpdateSettings do
  @moduledoc """
  Windows patching is performed using the Windows Update Agent.

  ## Attributes

  *   `classifications` (*type:* `list(String.t)`, *default:* `nil`) - Only apply updates of these windows update classifications. If empty, all updates are applied.
  *   `excludes` (*type:* `list(String.t)`, *default:* `nil`) - List of KBs to exclude from update.
  *   `exclusivePatches` (*type:* `list(String.t)`, *default:* `nil`) - An exclusive list of kbs to be updated. These are the only patches that will be updated. This field must not be used with other patch configurations.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :classifications => list(String.t()) | nil,
          :excludes => list(String.t()) | nil,
          :exclusivePatches => list(String.t()) | nil
        }

  field(:classifications, type: :list)
  field(:excludes, type: :list)
  field(:exclusivePatches, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.WindowsUpdateSettings do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.WindowsUpdateSettings.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.WindowsUpdateSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
