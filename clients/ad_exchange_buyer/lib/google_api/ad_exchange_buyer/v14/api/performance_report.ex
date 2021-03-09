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

defmodule GoogleApi.AdExchangeBuyer.V14.Api.PerformanceReport do
  @moduledoc """
  API calls for all endpoints tagged `PerformanceReport`.
  """

  alias GoogleApi.AdExchangeBuyer.V14.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieves the authenticated user's list of performance metrics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdExchangeBuyer.V14.Connection.t`) - Connection to server
  *   `account_id` (*type:* `String.t`) - The account id to get the reports.
  *   `end_date_time` (*type:* `String.t`) - The end time of the report in ISO 8601 timestamp format using UTC.
  *   `start_date_time` (*type:* `String.t`) - The start time of the report in ISO 8601 timestamp format using UTC.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - Maximum number of entries returned on one result page. If not set, the default is 100. Optional.
      *   `:pageToken` (*type:* `String.t`) - A continuation token, used to page through performance reports. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response. Optional.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdExchangeBuyer.V14.Model.PerformanceReportList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adexchangebuyer_performance_report_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.AdExchangeBuyer.V14.Model.PerformanceReportList.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def adexchangebuyer_performance_report_list(
        connection,
        account_id,
        end_date_time,
        start_date_time,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/performancereport", %{})
      |> Request.add_param(:query, :accountId, account_id)
      |> Request.add_param(:query, :endDateTime, end_date_time)
      |> Request.add_param(:query, :startDateTime, start_date_time)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.AdExchangeBuyer.V14.Model.PerformanceReportList{}]
    )
  end
end
