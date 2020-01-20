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

defmodule GoogleApi.Container.V1.Model.NodeConfig do
  @moduledoc """
  Parameters that describe the nodes in a cluster.

  ## Attributes

  *   `accelerators` (*type:* `list(GoogleApi.Container.V1.Model.AcceleratorConfig.t)`, *default:* `nil`) - A list of hardware accelerators to be attached to each node.
      See https://cloud.google.com/compute/docs/gpus for more information about
      support for GPUs.
  *   `diskSizeGb` (*type:* `integer()`, *default:* `nil`) - Size of the disk attached to each node, specified in GB.
      The smallest allowed disk size is 10GB.

      If unspecified, the default disk size is 100GB.
  *   `diskType` (*type:* `String.t`, *default:* `nil`) - Type of the disk attached to each node (e.g. 'pd-standard' or 'pd-ssd')

      If unspecified, the default disk type is 'pd-standard'
  *   `imageType` (*type:* `String.t`, *default:* `nil`) - The image type to use for this node. Note that for a given image type,
      the latest version of it will be used.
  *   `labels` (*type:* `map()`, *default:* `nil`) - The map of Kubernetes labels (key/value pairs) to be applied to each node.
      These will added in addition to any default label(s) that
      Kubernetes may apply to the node.
      In case of conflict in label keys, the applied set may differ depending on
      the Kubernetes version -- it's best to assume the behavior is undefined
      and conflicts should be avoided.
      For more information, including usage and the valid values, see:
      https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  *   `localSsdCount` (*type:* `integer()`, *default:* `nil`) - The number of local SSD disks to be attached to the node.

      The limit for this value is dependent upon the maximum number of
      disks available on a machine per zone. See:
      https://cloud.google.com/compute/docs/disks/local-ssd
      for more information.
  *   `machineType` (*type:* `String.t`, *default:* `nil`) - The name of a Google Compute Engine [machine
      type](/compute/docs/machine-types) (e.g.
      `n1-standard-1`).

      If unspecified, the default machine type is
      `n1-standard-1`.
  *   `metadata` (*type:* `map()`, *default:* `nil`) - The metadata key/value pairs assigned to instances in the cluster.

      Keys must conform to the regexp [a-zA-Z0-9-_]+ and be less than 128 bytes
      in length. These are reflected as part of a URL in the metadata server.
      Additionally, to avoid ambiguity, keys must not conflict with any other
      metadata keys for the project or be one of the reserved keys:
       "cluster-location"
       "cluster-name"
       "cluster-uid"
       "configure-sh"
       "containerd-configure-sh"
       "enable-os-login"
       "gci-ensure-gke-docker"
       "gci-metrics-enabled"
       "gci-update-strategy"
       "instance-template"
       "kube-env"
       "startup-script"
       "user-data"
       "disable-address-manager"
       "windows-startup-script-ps1"
       "common-psm1"
       "k8s-node-setup-psm1"
       "install-ssh-psm1"
       "user-profile-psm1"
       "serial-port-logging-enable"

      Values are free-form strings, and only have meaning as interpreted by
      the image running in the instance. The only restriction placed on them is
      that each value's size must be less than or equal to 32 KB.

      The total size of all keys and values must be less than 512 KB.
  *   `minCpuPlatform` (*type:* `String.t`, *default:* `nil`) - Minimum CPU platform to be used by this instance. The instance may be
      scheduled on the specified or newer CPU platform. Applicable values are the
      friendly names of CPU platforms, such as
      <code>minCpuPlatform: &quot;Intel Haswell&quot;</code> or
      <code>minCpuPlatform: &quot;Intel Sandy Bridge&quot;</code>. For more
      information, read [how to specify min CPU
      platform](https://cloud.google.com/compute/docs/instances/specify-min-cpu-platform)
  *   `oauthScopes` (*type:* `list(String.t)`, *default:* `nil`) - The set of Google API scopes to be made available on all of the
      node VMs under the "default" service account.

      The following scopes are recommended, but not required, and by default are
      not included:

      * `https://www.googleapis.com/auth/compute` is required for mounting
      persistent storage on your nodes.
      * `https://www.googleapis.com/auth/devstorage.read_only` is required for
      communicating with **gcr.io**
      (the [Google Container Registry](/container-registry/)).

      If unspecified, no scopes are added, unless Cloud Logging or Cloud
      Monitoring are enabled, in which case their required scopes will be added.
  *   `preemptible` (*type:* `boolean()`, *default:* `nil`) - Whether the nodes are created as preemptible VM instances. See:
      https://cloud.google.com/compute/docs/instances/preemptible for more
      information about preemptible VM instances.
  *   `reservationAffinity` (*type:* `GoogleApi.Container.V1.Model.ReservationAffinity.t`, *default:* `nil`) - The optional reservation affinity. Setting this field will apply
      the specified [Zonal Compute
      Reservation](/compute/docs/instances/reserving-zonal-resources)
      to this node pool.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - The Google Cloud Platform Service Account to be used by the node VMs. If
      no Service Account is specified, the "default" service account is used.
  *   `shieldedInstanceConfig` (*type:* `GoogleApi.Container.V1.Model.ShieldedInstanceConfig.t`, *default:* `nil`) - Shielded Instance options.
  *   `tags` (*type:* `list(String.t)`, *default:* `nil`) - The list of instance tags applied to all nodes. Tags are used to identify
      valid sources or targets for network firewalls and are specified by
      the client during cluster or node pool creation. Each tag within the list
      must comply with RFC1035.
  *   `taints` (*type:* `list(GoogleApi.Container.V1.Model.NodeTaint.t)`, *default:* `nil`) - List of kubernetes taints to be applied to each node.

      For more information, including usage and the valid values, see:
      https://kubernetes.io/docs/concepts/configuration/taint-and-toleration/
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accelerators => list(GoogleApi.Container.V1.Model.AcceleratorConfig.t()),
          :diskSizeGb => integer(),
          :diskType => String.t(),
          :imageType => String.t(),
          :labels => map(),
          :localSsdCount => integer(),
          :machineType => String.t(),
          :metadata => map(),
          :minCpuPlatform => String.t(),
          :oauthScopes => list(String.t()),
          :preemptible => boolean(),
          :reservationAffinity => GoogleApi.Container.V1.Model.ReservationAffinity.t(),
          :serviceAccount => String.t(),
          :shieldedInstanceConfig => GoogleApi.Container.V1.Model.ShieldedInstanceConfig.t(),
          :tags => list(String.t()),
          :taints => list(GoogleApi.Container.V1.Model.NodeTaint.t())
        }

  field(:accelerators, as: GoogleApi.Container.V1.Model.AcceleratorConfig, type: :list)
  field(:diskSizeGb)
  field(:diskType)
  field(:imageType)
  field(:labels, type: :map)
  field(:localSsdCount)
  field(:machineType)
  field(:metadata, type: :map)
  field(:minCpuPlatform)
  field(:oauthScopes, type: :list)
  field(:preemptible)
  field(:reservationAffinity, as: GoogleApi.Container.V1.Model.ReservationAffinity)
  field(:serviceAccount)
  field(:shieldedInstanceConfig, as: GoogleApi.Container.V1.Model.ShieldedInstanceConfig)
  field(:tags, type: :list)
  field(:taints, as: GoogleApi.Container.V1.Model.NodeTaint, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.NodeConfig do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.NodeConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.NodeConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
