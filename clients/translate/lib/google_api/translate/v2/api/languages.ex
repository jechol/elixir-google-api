# Copyright 2017 Google Inc.
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


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Translate.V2.Api.Languages do
  @moduledoc """
  API calls for all endpoints tagged `Languages`.
  """

  alias GoogleApi.Translate.V2.Connection
  import GoogleApi.Translate.V2.RequestBuilder


  @doc """
  Returns a list of supported languages for translation.

  ## Parameters

  - connection (GoogleApi.Translate.V2.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :quota_user (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :pp (boolean()): Pretty-print response.
    - :bearer_token (String.t): OAuth bearer token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :pretty_print (boolean()): Returns response with indentations and line breaks.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :upload_type (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :__/xgafv (String.t): V1 error format.
    - :callback (String.t): JSONP
    - :alt (String.t): Data format for response.
    - :access_token (String.t): OAuth access token.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :target (String.t): The language to use to return localized, human readable names of supported languages.
    - :model (String.t): The model type for which supported languages should be returned.

  ## Returns

  {:ok, %GoogleApi.Translate.V2.Model.LanguagesListResponse{}} on success
  {:error, info} on failure
  """
  @spec language_languages_list(Tesla.Env.client, keyword()) :: {:ok, GoogleApi.Translate.V2.Model.LanguagesListResponse.t} | {:error, Tesla.Env.t}
  def language_languages_list(connection, opts \\ []) do
    optional_params = %{
      :"quotaUser" => :query,
      :"pp" => :query,
      :"bearer_token" => :query,
      :"oauth_token" => :query,
      :"upload_protocol" => :query,
      :"prettyPrint" => :query,
      :"fields" => :query,
      :"uploadType" => :query,
      :"$.xgafv" => :query,
      :"callback" => :query,
      :"alt" => :query,
      :"access_token" => :query,
      :"key" => :query,
      :"target" => :query,
      :"model" => :query
    }
    %{}
    |> method(:get)
    |> url("/v2/languages")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%{"body" => %GoogleApi.Translate.V2.Model.LanguagesListResponse{}})
  end
end
