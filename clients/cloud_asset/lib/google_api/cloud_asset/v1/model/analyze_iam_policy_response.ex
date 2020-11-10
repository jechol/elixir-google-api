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

defmodule GoogleApi.CloudAsset.V1.Model.AnalyzeIamPolicyResponse do
  @moduledoc """
  A response message for AssetService.AnalyzeIamPolicy.

  ## Attributes

  *   `fullyExplored` (*type:* `boolean()`, *default:* `nil`) - Represents whether all entries in the main_analysis and service_account_impersonation_analysis have been fully explored to answer the query in the request.
  *   `mainAnalysis` (*type:* `GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysis.t`, *default:* `nil`) - The main analysis that matches the original request.
  *   `serviceAccountImpersonationAnalysis` (*type:* `list(GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysis.t)`, *default:* `nil`) - The service account impersonation analysis if AnalyzeIamPolicyRequest.analyze_service_account_impersonation is enabled.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fullyExplored => boolean(),
          :mainAnalysis => GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysis.t(),
          :serviceAccountImpersonationAnalysis =>
            list(GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysis.t())
        }

  field(:fullyExplored)
  field(:mainAnalysis, as: GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysis)

  field(:serviceAccountImpersonationAnalysis,
    as: GoogleApi.CloudAsset.V1.Model.IamPolicyAnalysis,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.AnalyzeIamPolicyResponse do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.AnalyzeIamPolicyResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.AnalyzeIamPolicyResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end