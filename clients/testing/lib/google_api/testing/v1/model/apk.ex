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

defmodule GoogleApi.Testing.V1.Model.Apk do
  @moduledoc """
  An Android package file to install.

  ## Attributes

  *   `location` (*type:* `GoogleApi.Testing.V1.Model.FileReference.t`, *default:* `nil`) - The path to an APK to be installed on the device before the test begins.
  *   `packageName` (*type:* `String.t`, *default:* `nil`) - The java package for the APK to be installed. Value is determined by examining the application's manifest.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :location => GoogleApi.Testing.V1.Model.FileReference.t() | nil,
          :packageName => String.t() | nil
        }

  field(:location, as: GoogleApi.Testing.V1.Model.FileReference)
  field(:packageName)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.Apk do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.Apk.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.Apk do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
