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

defmodule GoogleApi.OSConfig.V1.Model.RecurringSchedule do
  @moduledoc """
  Sets the time for recurring patch deployments.

  ## Attributes

  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. The end time at which a recurring patch deployment schedule is no longer active.
  *   `frequency` (*type:* `String.t`, *default:* `nil`) - Required. The frequency unit of this recurring schedule.
  *   `lastExecuteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the last patch job ran successfully.
  *   `monthly` (*type:* `GoogleApi.OSConfig.V1.Model.MonthlySchedule.t`, *default:* `nil`) - Required. Schedule with monthly executions.
  *   `nextExecuteTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the next patch job is scheduled to run.
  *   `startTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. The time that the recurring schedule becomes effective. Defaults to `create_time` of the patch deployment.
  *   `timeOfDay` (*type:* `GoogleApi.OSConfig.V1.Model.TimeOfDay.t`, *default:* `nil`) - Required. Time of the day to run a recurring deployment.
  *   `timeZone` (*type:* `GoogleApi.OSConfig.V1.Model.TimeZone.t`, *default:* `nil`) - Required. Defines the time zone that `time_of_day` is relative to. The rules for daylight saving time are determined by the chosen time zone.
  *   `weekly` (*type:* `GoogleApi.OSConfig.V1.Model.WeeklySchedule.t`, *default:* `nil`) - Required. Schedule with weekly executions.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :endTime => DateTime.t() | nil,
          :frequency => String.t() | nil,
          :lastExecuteTime => DateTime.t() | nil,
          :monthly => GoogleApi.OSConfig.V1.Model.MonthlySchedule.t() | nil,
          :nextExecuteTime => DateTime.t() | nil,
          :startTime => DateTime.t() | nil,
          :timeOfDay => GoogleApi.OSConfig.V1.Model.TimeOfDay.t() | nil,
          :timeZone => GoogleApi.OSConfig.V1.Model.TimeZone.t() | nil,
          :weekly => GoogleApi.OSConfig.V1.Model.WeeklySchedule.t() | nil
        }

  field(:endTime, as: DateTime)
  field(:frequency)
  field(:lastExecuteTime, as: DateTime)
  field(:monthly, as: GoogleApi.OSConfig.V1.Model.MonthlySchedule)
  field(:nextExecuteTime, as: DateTime)
  field(:startTime, as: DateTime)
  field(:timeOfDay, as: GoogleApi.OSConfig.V1.Model.TimeOfDay)
  field(:timeZone, as: GoogleApi.OSConfig.V1.Model.TimeZone)
  field(:weekly, as: GoogleApi.OSConfig.V1.Model.WeeklySchedule)
end

defimpl Poison.Decoder, for: GoogleApi.OSConfig.V1.Model.RecurringSchedule do
  def decode(value, options) do
    GoogleApi.OSConfig.V1.Model.RecurringSchedule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.OSConfig.V1.Model.RecurringSchedule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
