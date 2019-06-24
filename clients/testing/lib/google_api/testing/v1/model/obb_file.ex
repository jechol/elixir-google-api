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

defmodule GoogleApi.Testing.V1.Model.ObbFile do
  @moduledoc """
  An opaque binary blob file to install on the device before the test starts.

  ## Attributes

  *   `obb` (*type:* `GoogleApi.Testing.V1.Model.FileReference.t`, *default:* `nil`) - Required. Opaque Binary Blob (OBB) file(s) to install on the device.
  *   `obbFileName` (*type:* `String.t`, *default:* `nil`) - Required. OBB file name which must conform to the format as specified by
      Android
      e.g. [main|patch].0300110.com.example.android.obb
      which will be installed into
        \<shared-storage\>/Android/obb/\<package-name\>/
      on the device.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :obb => GoogleApi.Testing.V1.Model.FileReference.t(),
          :obbFileName => String.t()
        }

  field(:obb, as: GoogleApi.Testing.V1.Model.FileReference)
  field(:obbFileName)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.ObbFile do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.ObbFile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.ObbFile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
