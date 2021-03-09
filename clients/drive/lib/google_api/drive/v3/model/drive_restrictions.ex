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

defmodule GoogleApi.Drive.V3.Model.DriveRestrictions do
  @moduledoc """
  A set of restrictions that apply to this shared drive or items inside this shared drive.

  ## Attributes

  *   `adminManagedRestrictions` (*type:* `boolean()`, *default:* `nil`) - Whether administrative privileges on this shared drive are required to modify restrictions.
  *   `copyRequiresWriterPermission` (*type:* `boolean()`, *default:* `nil`) - Whether the options to copy, print, or download files inside this shared drive, should be disabled for readers and commenters. When this restriction is set to true, it will override the similarly named field to true for any file inside this shared drive.
  *   `domainUsersOnly` (*type:* `boolean()`, *default:* `nil`) - Whether access to this shared drive and items inside this shared drive is restricted to users of the domain to which this shared drive belongs. This restriction may be overridden by other sharing policies controlled outside of this shared drive.
  *   `driveMembersOnly` (*type:* `boolean()`, *default:* `nil`) - Whether access to items inside this shared drive is restricted to its members.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :adminManagedRestrictions => boolean() | nil,
          :copyRequiresWriterPermission => boolean() | nil,
          :domainUsersOnly => boolean() | nil,
          :driveMembersOnly => boolean() | nil
        }

  field(:adminManagedRestrictions)
  field(:copyRequiresWriterPermission)
  field(:domainUsersOnly)
  field(:driveMembersOnly)
end

defimpl Poison.Decoder, for: GoogleApi.Drive.V3.Model.DriveRestrictions do
  def decode(value, options) do
    GoogleApi.Drive.V3.Model.DriveRestrictions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Drive.V3.Model.DriveRestrictions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
