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

defmodule GoogleApi.OSConfig.V1.Model.ExecStep do
  @moduledoc """
  A step that runs an executable for a PatchJob.

  ## Attributes

  *   `linuxExecStepConfig` (*type:* `GoogleApi.OSConfig.V1.Model.ExecStepConfig.t`, *default:* `nil`) - The ExecStepConfig for all Linux VMs targeted by the PatchJob.
  *   `windowsExecStepConfig` (*type:* `GoogleApi.OSConfig.V1.Model.ExecStepConfig.t`, *default:* `nil`) - The ExecStepConfig for all Windows VMs targeted by the PatchJob.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :linuxExecStepConfig => GoogleApi.OSConfig.V1.Model.ExecStepConfig.t() | nil,
          :windowsExecStepConfig => GoogleApi.OSConfig.V1.Model.ExecStepConfig.t() | nil
        }

  field(:linuxExecStepConfig, as: GoogleApi.OSConfig.V1.Model.ExecStepConfig)
  field(:windowsExecStepConfig, as: GoogleApi.OSConfig.V1.Model.ExecStepConfig)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.ExecStep do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.ExecStep.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.ExecStep do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
