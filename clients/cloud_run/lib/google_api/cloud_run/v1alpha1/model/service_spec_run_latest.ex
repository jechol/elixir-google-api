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

defmodule GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecRunLatest do
  @moduledoc """
  ServiceSpecRunLatest contains the options for always having a route to the
  latest configuration. See ServiceSpec for more details.

  ## Attributes

  - configuration (GoogleApi.CloudRun.V1alpha1.Model.ConfigurationSpec.t): The configuration for this service. Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :configuration => GoogleApi.CloudRun.V1alpha1.Model.ConfigurationSpec.t()
        }

  field(:configuration, as: GoogleApi.CloudRun.V1alpha1.Model.ConfigurationSpec)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecRunLatest do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecRunLatest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.ServiceSpecRunLatest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
