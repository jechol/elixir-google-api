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

defmodule GoogleApi.Drive.V3.Model.PermissionTeamDrivePermissionDetails do
  @moduledoc """


  ## Attributes

  *   `inherited` (*type:* `boolean()`, *default:* `nil`) - Deprecated - use permissionDetails/inherited instead.
  *   `inheritedFrom` (*type:* `String.t`, *default:* `nil`) - Deprecated - use permissionDetails/inheritedFrom instead.
  *   `role` (*type:* `String.t`, *default:* `nil`) - Deprecated - use permissionDetails/role instead.
  *   `teamDrivePermissionType` (*type:* `String.t`, *default:* `nil`) - Deprecated - use permissionDetails/permissionType instead.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inherited => boolean() | nil,
          :inheritedFrom => String.t() | nil,
          :role => String.t() | nil,
          :teamDrivePermissionType => String.t() | nil
        }

  field(:inherited)
  field(:inheritedFrom)
  field(:role)
  field(:teamDrivePermissionType)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.PermissionTeamDrivePermissionDetails do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.PermissionTeamDrivePermissionDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.PermissionTeamDrivePermissionDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
