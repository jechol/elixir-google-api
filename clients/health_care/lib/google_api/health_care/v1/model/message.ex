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

defmodule GoogleApi.HealthCare.V1.Model.Message do
  @moduledoc """
  A complete HL7v2 message.
  See [Introduction to HL7 Standards]
  (https://www.hl7.org/implement/standards/index.cfm?ref=common) for
  details on the standard.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The datetime when the message was created. Set by the server.
  *   `data` (*type:* `String.t`, *default:* `nil`) - Raw message bytes.
  *   `labels` (*type:* `map()`, *default:* `nil`) - User-supplied key-value pairs used to organize HL7v2 stores.

      Label keys must be between 1 and 63 characters long, have a UTF-8 encoding
      of maximum 128 bytes, and must conform to the
      following PCRE regular expression:
      \\p{Ll}\\p{Lo}{0,62}

      Label values are optional, must be between 1 and 63 characters long, have
      a UTF-8 encoding of maximum 128 bytes, and must conform to the
      following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63}

      No more than 64 labels can be associated with a given store.
  *   `messageType` (*type:* `String.t`, *default:* `nil`) - The message type for this message. MSH-9.1.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the Message, of the form
      `projects/{project_id}/datasets/{dataset_id}/hl7V2Stores/{hl7_v2_store_id}/messages/{message_id}`.
      Assigned by the server.
  *   `parsedData` (*type:* `GoogleApi.HealthCare.V1.Model.ParsedData.t`, *default:* `nil`) - Output only. The parsed version of the raw message data.
  *   `patientIds` (*type:* `list(GoogleApi.HealthCare.V1.Model.PatientId.t)`, *default:* `nil`) - All patient IDs listed in the PID-2, PID-3, and PID-4 segments of this
      message.
  *   `sendFacility` (*type:* `String.t`, *default:* `nil`) - The hospital that this message came from. MSH-4.
  *   `sendTime` (*type:* `DateTime.t`, *default:* `nil`) - The datetime the sending application sent this message. MSH-7.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :data => String.t(),
          :labels => map(),
          :messageType => String.t(),
          :name => String.t(),
          :parsedData => GoogleApi.HealthCare.V1.Model.ParsedData.t(),
          :patientIds => list(GoogleApi.HealthCare.V1.Model.PatientId.t()),
          :sendFacility => String.t(),
          :sendTime => DateTime.t()
        }

  field(:createTime, as: DateTime)
  field(:data)
  field(:labels, type: :map)
  field(:messageType)
  field(:name)
  field(:parsedData, as: GoogleApi.HealthCare.V1.Model.ParsedData)
  field(:patientIds, as: GoogleApi.HealthCare.V1.Model.PatientId, type: :list)
  field(:sendFacility)
  field(:sendTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1.Model.Message do
  def decode(value, options) do
    GoogleApi.HealthCare.V1.Model.Message.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1.Model.Message do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
