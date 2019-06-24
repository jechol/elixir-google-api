# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Testing.V1.Model.IosDeviceCatalog do
  @moduledoc """
  The currently supported iOS devices.

  ## Attributes

  *   `models` (*type:* `list(GoogleApi.Testing.V1.Model.IosModel.t)`, *default:* `nil`) - The set of supported iOS device models.
  *   `runtimeConfiguration` (*type:* `GoogleApi.Testing.V1.Model.IosRuntimeConfiguration.t`, *default:* `nil`) - The set of supported runtime configurations.
  *   `versions` (*type:* `list(GoogleApi.Testing.V1.Model.IosVersion.t)`, *default:* `nil`) - The set of supported iOS software versions.
  *   `xcodeVersions` (*type:* `list(GoogleApi.Testing.V1.Model.XcodeVersion.t)`, *default:* `nil`) - The set of supported Xcode versions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :models => list(GoogleApi.Testing.V1.Model.IosModel.t()),
          :runtimeConfiguration => GoogleApi.Testing.V1.Model.IosRuntimeConfiguration.t(),
          :versions => list(GoogleApi.Testing.V1.Model.IosVersion.t()),
          :xcodeVersions => list(GoogleApi.Testing.V1.Model.XcodeVersion.t())
        }

  field(:models, as: GoogleApi.Testing.V1.Model.IosModel, type: :list)
  field(:runtimeConfiguration, as: GoogleApi.Testing.V1.Model.IosRuntimeConfiguration)
  field(:versions, as: GoogleApi.Testing.V1.Model.IosVersion, type: :list)
  field(:xcodeVersions, as: GoogleApi.Testing.V1.Model.XcodeVersion, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.IosDeviceCatalog do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.IosDeviceCatalog.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.IosDeviceCatalog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
