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

defmodule GoogleApi.CloudRun.V1alpha1.Model.SELinuxOptions do
  @moduledoc """
  SELinuxOptions are the labels to be applied to the container

  ## Attributes

  - level (String.t): Level is SELinux level label that applies to the container.
  +optional Defaults to `nil`.
  - role (String.t): Role is a SELinux role label that applies to the container.
  +optional Defaults to `nil`.
  - type (String.t): Type is a SELinux type label that applies to the container.
  +optional Defaults to `nil`.
  - user (String.t): User is a SELinux user label that applies to the container.
  +optional Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :level => String.t(),
          :role => String.t(),
          :type => String.t(),
          :user => String.t()
        }

  field(:level)
  field(:role)
  field(:type)
  field(:user)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.SELinuxOptions do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.SELinuxOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.SELinuxOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
