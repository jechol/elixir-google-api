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

defmodule GoogleApi.Drive.V3.Api.Revisions do
  @moduledoc """
  API calls for all endpoints tagged `Revisions`.
  """

  alias GoogleApi.Drive.V3.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Permanently deletes a file version. You can only delete revisions for files with binary content in Google Drive, like images or videos. Revisions for other files, like Google Docs or Sheets, and the last remaining file version can't be deleted.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `file_id` (*type:* `String.t`) - The ID of the file.
  *   `revision_id` (*type:* `String.t`) - The ID of the revision.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_revisions_delete(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, nil} | {:ok, Tesla.Env.t()} | {:ok, list()} | {:error, any()}
  def drive_revisions_delete(connection, file_id, revision_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/drive/v3/files/{fileId}/revisions/{revisionId}", %{
        "fileId" => URI.encode(file_id, &URI.char_unreserved?/1),
        "revisionId" => URI.encode(revision_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Gets a revision's metadata or content by ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `file_id` (*type:* `String.t`) - The ID of the file.
  *   `revision_id` (*type:* `String.t`) - The ID of the revision.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:acknowledgeAbuse` (*type:* `boolean()`) - Whether the user is acknowledging the risk of downloading known malware or other abusive files. This is only applicable when alt=media.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Drive.V3.Model.Revision{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_revisions_get(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Revision.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def drive_revisions_get(connection, file_id, revision_id, optional_params \\ [], opts \\ []) do
    opts =
      if Keyword.get(optional_params, :alt) == "media",
        do: Keyword.put_new(opts, :decode, false),
        else: opts

    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :acknowledgeAbuse => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/drive/v3/files/{fileId}/revisions/{revisionId}", %{
        "fileId" => URI.encode(file_id, &URI.char_unreserved?/1),
        "revisionId" => URI.encode(revision_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.Revision{}])
  end

  @doc """
  Lists a file's revisions.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `file_id` (*type:* `String.t`) - The ID of the file.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:pageSize` (*type:* `integer()`) - The maximum number of revisions to return per page.
      *   `:pageToken` (*type:* `String.t`) - The token for continuing a previous list request on the next page. This should be set to the value of 'nextPageToken' from the previous response.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Drive.V3.Model.RevisionList{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_revisions_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.RevisionList.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def drive_revisions_list(connection, file_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :pageSize => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/drive/v3/files/{fileId}/revisions", %{
        "fileId" => URI.encode(file_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.RevisionList{}])
  end

  @doc """
  Updates a revision with patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.Drive.V3.Connection.t`) - Connection to server
  *   `file_id` (*type:* `String.t`) - The ID of the file.
  *   `revision_id` (*type:* `String.t`) - The ID of the revision.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.Drive.V3.Model.Revision.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.Drive.V3.Model.Revision{}}` on success
  *   `{:error, info}` on failure
  """
  @spec drive_revisions_update(Tesla.Env.client(), String.t(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.Drive.V3.Model.Revision.t()}
          | {:ok, Tesla.Env.t()}
          | {:ok, list()}
          | {:error, any()}
  def drive_revisions_update(connection, file_id, revision_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/drive/v3/files/{fileId}/revisions/{revisionId}", %{
        "fileId" => URI.encode(file_id, &URI.char_unreserved?/1),
        "revisionId" => URI.encode(revision_id, &(URI.char_unreserved?(&1) || &1 == ?/))
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Drive.V3.Model.Revision{}])
  end
end
