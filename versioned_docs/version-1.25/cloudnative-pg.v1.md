# API Reference
<!-- SPDX-License-Identifier: CC-BY-4.0 -->

<p>Package v1 contains API Schema definitions for the postgresql v1 API group</p>


## Resource Types


- [Backup](#postgresql-cnpg-io-v1-Backup)
- [Cluster](#postgresql-cnpg-io-v1-Cluster)
- [ClusterImageCatalog](#postgresql-cnpg-io-v1-ClusterImageCatalog)
- [Database](#postgresql-cnpg-io-v1-Database)
- [FailoverQuorum](#postgresql-cnpg-io-v1-FailoverQuorum)
- [ImageCatalog](#postgresql-cnpg-io-v1-ImageCatalog)
- [Pooler](#postgresql-cnpg-io-v1-Pooler)
- [Publication](#postgresql-cnpg-io-v1-Publication)
- [ScheduledBackup](#postgresql-cnpg-io-v1-ScheduledBackup)
- [Subscription](#postgresql-cnpg-io-v1-Subscription)

## Backup {#postgresql-cnpg-io-v1-Backup}

A Backup resource is a request for a PostgreSQL backup by the user.

| Field | Description |
|-------|--------------|
| **apiVersion**<br/>_string_ **[Required]** | `postgresql.cnpg.io/v1` |
| **kind**<br/>_string_ **[Required]** | `Backup` |
| **metadata**<br/>_meta/v1.ObjectMeta_ **[Required]** | Refer to the [Kubernetes API documentation](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.28/#objectmeta-v1-meta) for the fields of the `metadata` field. |
| **spec**<br/>_[BackupSpec]_ **[Required]** | Specification of the desired behavior of the backup.<br/>More info: [Kubernetes API conventions](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status) |
| **status**<br/>_[BackupStatus]_ | Most recently observed status of the backup. This data may not be up to date. Populated by the system. Read-only.<br/>More info: [Kubernetes API conventions](https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status) |

## Cluster     {#postgresql-cnpg-io-v1-Cluster}

<p>Cluster defines the API schema for a highly available PostgreSQL database cluster
managed by CloudNativePG.</p>

| Field | Description |
|-------|-------------|
| `apiVersion` <br/> _string_ **[Required]** | `postgresql.cnpg.io/v1` |
| `kind` <br/> _string_ **[Required]** | `Cluster` |
| `metadata` <br/> _meta/v1.ObjectMeta_ **[Required]** | Refer to the [Kubernetes API documentation](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.28/#objectmeta-v1-meta) for the fields of the `metadata` field. |
| `spec` <br/> _ClusterSpec_ **[Required]** | Specification of the desired behavior of the cluster. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status |
| `status` <br/> _ClusterStatus_ | Most recently observed status of the cluster. This data may not be up to date. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status |

## ClusterImageCatalog     {#postgresql-cnpg-io-v1-ClusterImageCatalog}

<p>ClusterImageCatalog is the Schema for the clusterimagecatalogs API</p>

| Field | Description |
|-------|-------------|
| `apiVersion` <br/> _string_ **[Required]** | `postgresql.cnpg.io/v1` |
| `kind` <br/> _string_ **[Required]** | `ClusterImageCatalog` |
| `metadata` <br/> _meta/v1.ObjectMeta_ **[Required]** | Refer to the [Kubernetes API documentation](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.28/#objectmeta-v1-meta) for the fields of the `metadata` field. |
| `spec` <br/> _ImageCatalogSpec_ **[Required]** | Specification of the desired behavior of the ClusterImageCatalog. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status |

## Database     {#postgresql-cnpg-io-v1-Database}

<p>Database is the Schema for the databases API</p>

| Field | Description |
|-------|-------------|
| `apiVersion` <br/> _string_ **[Required]** | `postgresql.cnpg.io/v1` |
| `kind` <br/> _string_ **[Required]** | `Database` |
| `metadata` <br/> _meta/v1.ObjectMeta_ **[Required]** | Refer to the [Kubernetes API documentation](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.28/#objectmeta-v1-meta) for the fields of the `metadata` field. |
| `spec` <br/> _DatabaseSpec_ **[Required]** | Specification of the desired Database. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status |
| `status` <br/> _DatabaseStatus_ | Most recently observed status of the Database. This data may not be up to date. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status |

## FailoverQuorum     {#postgresql-cnpg-io-v1-FailoverQuorum}

**Appears in:**

<p>FailoverQuorum contains the information about the current failover
quorum status of a PG cluster. It is updated by the instance manager
of the primary node and reset to zero by the operator to trigger
an update.</p>

| Field | Description |
|-------|-------------|
| `apiVersion` <br/> _string_ **[Required]** | `postgresql.cnpg.io/v1` |
| `kind` <br/> _string_ **[Required]** | `FailoverQuorum` |
| `metadata` <br/> _meta/v1.ObjectMeta_ **[Required]** | Refer to the [Kubernetes API documentation](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.28/#objectmeta-v1-meta) for the fields of the `metadata` field. |
| `status` <br/> _FailoverQuorumStatus_ | Most recently observed status of the failover quorum. |

## ImageCatalog     {#postgresql-cnpg-io-v1-ImageCatalog}

<p>ImageCatalog is the Schema for the imagecatalogs API</p>

| Field | Description |
|-------|-------------|
| `apiVersion` <br/> _string_ **[Required]** | `postgresql.cnpg.io/v1` |
| `kind` <br/> _string_ **[Required]** | `ImageCatalog` |
| `metadata` <br/> _meta/v1.ObjectMeta_ **[Required]** | Refer to the [Kubernetes API documentation](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.28/#objectmeta-v1-meta) for the fields of the `metadata` field. |
| `spec` <br/> _ImageCatalogSpec_ **[Required]** | Specification of the desired behavior of the ImageCatalog. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status |

## Pooler     {#postgresql-cnpg-io-v1-Pooler}

<p>Pooler is the Schema for the poolers API</p>

| Field | Description |
|-------|-------------|
| `apiVersion` <br/> _string_ **[Required]** | `postgresql.cnpg.io/v1` |
| `kind` <br/> _string_ **[Required]** | `Pooler` |
| `metadata` <br/> _meta/v1.ObjectMeta_ **[Required]** | Refer to the [Kubernetes API documentation](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.28/#objectmeta-v1-meta) for the fields of the `metadata` field. |
| `spec` <br/> _PoolerSpec_ **[Required]** | Specification of the desired behavior of the Pooler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status |
| `status` <br/> _PoolerStatus_ | Most recently observed status of the Pooler. This data may not be up to date. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status |

## Publication     {#postgresql-cnpg-io-v1-Publication}

<p>Publication is the Schema for the publications API</p>

| Field | Description |
|-------|-------------|
| `apiVersion` <br/> _string_ **[Required]** | `postgresql.cnpg.io/v1` |
| `kind` <br/> _string_ **[Required]** | `Publication` |
| `metadata` <br/> _meta/v1.ObjectMeta_ **[Required]** | Refer to the [Kubernetes API documentation](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.28/#objectmeta-v1-meta) for the fields of the `metadata` field. |
| `spec` <br/> _PublicationSpec_ **[Required]** | No description provided. |
| `status` <br/> _PublicationStatus_ **[Required]** | No description provided. |

## ScheduledBackup     {#postgresql-cnpg-io-v1-ScheduledBackup}

<p>ScheduledBackup is the Schema for the scheduledbackups API</p>

| Field | Description |
|-------|-------------|
| `apiVersion` <br/> _string_ **[Required]** | `postgresql.cnpg.io/v1` |
| `kind` <br/> _string_ **[Required]** | `ScheduledBackup` |
| `metadata` <br/> _meta/v1.ObjectMeta_ **[Required]** | Refer to the [Kubernetes API documentation](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.28/#objectmeta-v1-meta) for the fields of the `metadata` field. |
| `spec` <br/> _ScheduledBackupSpec_ **[Required]** | Specification of the desired behavior of the ScheduledBackup. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status |
| `status` <br/> _ScheduledBackupStatus_ | Most recently observed status of the ScheduledBackup. This data may not be up to date. Populated by the system. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status |

## Subscription     {#postgresql-cnpg-io-v1-Subscription}

<p>Subscription is the Schema for the subscriptions API</p>

| Field | Description |
|-------|-------------|
| `apiVersion` <br/> _string_ **[Required]** | `postgresql.cnpg.io/v1` |
| `kind` <br/> _string_ **[Required]** | `Subscription` |
| `metadata` <br/> _meta/v1.ObjectMeta_ **[Required]** | Refer to the [Kubernetes API documentation](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.28/#objectmeta-v1-meta) for the fields of the `metadata` field. |
| `spec` <br/> _SubscriptionSpec_ **[Required]** | No description provided. |
| `status` <br/> _SubscriptionStatus_ **[Required]** | No description provided. |

## AffinityConfiguration     {#postgresql-cnpg-io-v1-AffinityConfiguration}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>AffinityConfiguration contains the info we need to create the
affinity rules for Pods</p>

| Field | Description |
|-------|-------------|
| `enablePodAntiAffinity` <br/> _bool_ | Activates anti-affinity for the pods. The operator will define pods anti-affinity unless this field is explicitly set to false |
| `topologyKey` <br/> _string_ | TopologyKey to use for anti-affinity configuration. See k8s documentation for more info on that |
| `nodeSelector` <br/> _map[string]string_ | NodeSelector is map of key-value pairs used to define the nodes on which the pods can run. More info: https://kubernetes.io/docs/concepts/configuration/assign-pod-node/ |
| `nodeAffinity` <br/> _core/v1.NodeAffinity_ | NodeAffinity describes node affinity scheduling rules for the pod. More info: https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#node-affinity |
| `tolerations` <br/> _[]core/v1.Toleration_ | Tolerations is a list of Tolerations that should be set for all the pods, in order to allow them to run on tainted nodes. More info: https://kubernetes.io/docs/concepts/scheduling-eviction/taint-and-toleration/ |
| `podAntiAffinityType` <br/> _string_ | PodAntiAffinityType allows the user to decide whether pod anti-affinity between cluster instance has to be considered a strong requirement during scheduling or not. Allowed values are: `"preferred"` (default if empty) or `"required"`. Setting it to `"required"` could lead to instances remaining pending until new kubernetes nodes are added if all the existing nodes don't match the required pod anti-affinity rule. More info: https://kubernetes.io/docs/concepts/scheduling-eviction/assign-pod-node/#inter-pod-affinity-and-anti-affinity |
| `additionalPodAntiAffinity` <br/> _core/v1.PodAntiAffinity_ | AdditionalPodAntiAffinity allows to specify pod anti-affinity terms to be added to the ones generated by the operator if EnablePodAntiAffinity is set to true (default) or to be used exclusively if set to false. |
| `additionalPodAffinity` <br/> _core/v1.PodAffinity_ | AdditionalPodAffinity allows to specify pod affinity terms to be passed to all the cluster's pods. |

## AvailableArchitecture     {#postgresql-cnpg-io-v1-AvailableArchitecture}

**Appears in:**

- [ClusterStatus](#postgresql-cnpg-io-v1-ClusterStatus)

<p>AvailableArchitecture represents the state of a cluster's architecture</p>

| Field | Description |
|-------|-------------|
| `goArch` <br/> _string_ **[Required]** | GoArch is the name of the executable architecture |
| `hash` <br/> _string_ **[Required]** | Hash is the hash of the executable |

## BackupConfiguration     {#postgresql-cnpg-io-v1-BackupConfiguration}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>BackupConfiguration defines how the backup of the cluster are taken.
The supported backup methods are BarmanObjectStore and VolumeSnapshot.
For details and examples refer to the Backup and Recovery section of the
documentation</p>

| Field | Description |
|-------|-------------|
| `volumeSnapshot` <br/> _VolumeSnapshotConfiguration_ | VolumeSnapshot provides the configuration for the execution of volume snapshot backups. |
| `barmanObjectStore` <br/> _github.com/cloudnative-pg/barman-cloud/pkg/api.BarmanObjectStoreConfiguration_ | The configuration for the barman-cloud tool suite |
| `retentionPolicy` <br/> _string_ | RetentionPolicy is the retention policy to be used for backups and WALs (i.e. `60d`). The retention policy is expressed in the form of `XXu` where `XX` is a positive integer and `u` is in `[dwm]` - days, weeks, months. It's currently only applicable when using the BarmanObjectStore method. |
| `target` <br/> _BackupTarget_ | The policy to decide which instance should perform backups. Available options are empty string (defaults to `prefer-standby`), `primary`, or `prefer-standby`. |

## BackupMethod     {#postgresql-cnpg-io-v1-BackupMethod}

(Alias of `string`)

**Appears in:**

- [BackupSpec](#postgresql-cnpg-io-v1-BackupSpec)
- [BackupStatus](#postgresql-cnpg-io-v1-BackupStatus)
- [ScheduledBackupSpec](#postgresql-cnpg-io-v1-ScheduledBackupSpec)

<p>BackupMethod defines the way of executing the physical base backups of the selected PostgreSQL instance</p>

## BackupPhase     {#postgresql-cnpg-io-v1-BackupPhase}

(Alias of `string`)

**Appears in:**

- [BackupStatus](#postgresql-cnpg-io-v1-BackupStatus)

<p>BackupPhase is the phase of the backup</p>

## BackupPluginConfiguration     {#postgresql-cnpg-io-v1-BackupPluginConfiguration}

**Appears in:**

- [BackupSpec](#postgresql-cnpg-io-v1-BackupSpec)
- [ScheduledBackupSpec](#postgresql-cnpg-io-v1-ScheduledBackupSpec)

<p>BackupPluginConfiguration contains the backup configuration used by the backup plugin</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ **[Required]** | Name is the name of the plugin managing this backup |
| `parameters` <br/> _map[string]string_ | Parameters are the configuration parameters passed to the backup plugin for this backup |

## BackupSnapshotElementStatus     {#postgresql-cnpg-io-v1-BackupSnapshotElementStatus}

**Appears in:**

- [BackupSnapshotStatus](#postgresql-cnpg-io-v1-BackupSnapshotStatus)

<p>BackupSnapshotElementStatus is a volume snapshot that is part of a volume snapshot method backup</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ **[Required]** | Name is the snapshot resource name |
| `type` <br/> _string_ **[Required]** | Type is the role of the snapshot in the cluster, such as PG_DATA, PG_WAL and PG_TABLESPACE |
| `tablespaceName` <br/> _string_ | TablespaceName is the name of the snapshotted tablespace. Only set when type is PG_TABLESPACE |

## BackupSnapshotStatus     {#postgresql-cnpg-io-v1-BackupSnapshotStatus}

**Appears in:**

- [BackupStatus](#postgresql-cnpg-io-v1-BackupStatus)

<p>BackupSnapshotStatus the fields exclusive to the volumeSnapshot method backup</p>

| Field | Description |
|-------|-------------|
| `elements` <br/> _[]BackupSnapshotElementStatus_ | The elements list, populated with the gathered volume snapshots |

## BackupSource     {#postgresql-cnpg-io-v1-BackupSource}

**Appears in:**

- [BootstrapRecovery](#postgresql-cnpg-io-v1-BootstrapRecovery)

<p>BackupSource contains the backup we need to restore from, plus some information that could be needed to correctly restore it.</p>

| Field | Description |
|-------|-------------|
| `LocalObjectReference` <br/> _github.com/cloudnative-pg/machinery/pkg/api.LocalObjectReference_ | (Members of `LocalObjectReference` are embedded into this type.) No description provided. |
| `endpointCA` <br/> _github.com/cloudnative-pg/machinery/pkg/api.SecretKeySelector_ | EndpointCA store the CA bundle of the barman endpoint. Useful when using self-signed certificates to avoid errors with certificate issuer and barman-cloud-wal-archive. |

## BackupSpec     {#postgresql-cnpg-io-v1-BackupSpec}

**Appears in:**

- [Backup](#postgresql-cnpg-io-v1-Backup)

<p>BackupSpec defines the desired state of Backup</p>

| Field | Description |
|-------|-------------|
| `cluster` <br/> _github.com/cloudnative-pg/machinery/pkg/api.LocalObjectReference_ **[Required]** | The cluster to backup |
| `target` <br/> _BackupTarget_ | The policy to decide which instance should perform this backup. If empty, it defaults to `cluster.spec.backup.target`. Available options: empty string, `primary`, `prefer-standby`. |
| `method` <br/> _BackupMethod_ | The backup method to be used: `barmanObjectStore`, `volumeSnapshot`, or `plugin`. Defaults to `barmanObjectStore`. |
| `pluginConfiguration` <br/> _BackupPluginConfiguration_ | Configuration parameters passed to the plugin managing this backup |
| `online` <br/> _bool_ | Whether the default type of backup with volume snapshots is online/hot (`true`, default) or offline/cold (`false`). Overrides cluster `.spec.backup.volumeSnapshot.online` |
| `onlineConfiguration` <br/> _OnlineConfiguration_ | Configuration parameters to control the online/hot backup with volume snapshots. Overrides cluster settings. |

## BackupStatus     {#postgresql-cnpg-io-v1-BackupStatus}

**Appears in:**

- [Backup](#postgresql-cnpg-io-v1-Backup)

<p>BackupStatus defines the observed state of Backup</p>

| Field | Description |
|-------|-------------|
| `BarmanCredentials` <br/> _github.com/cloudnative-pg/barman-cloud/pkg/api.BarmanCredentials_ | (Members of `BarmanCredentials` are embedded.) The potential credentials for each cloud provider |
| `majorVersion` <br/> _int_ **[Required]** | The PostgreSQL major version that was running when the backup was taken. |
| `endpointCA` <br/> _github.com/cloudnative-pg/machinery/pkg/api.SecretKeySelector_ | EndpointCA store the CA bundle of the barman endpoint. Useful when using self-signed certificates. |
| `endpointURL` <br/> _string_ | Endpoint to be used to upload data to the cloud, overriding automatic endpoint discovery |
| `destinationPath` <br/> _string_ | The path where to store the backup (e.g. s3://bucket/path/to/folder). May not be populated in case of errors. |
| `serverName` <br/> _string_ | The server name on S3; cluster name used if omitted |
| `encryption` <br/> _string_ | Encryption method required to S3 API |
| `backupId` <br/> _string_ | The ID of the Barman backup |
| `backupName` <br/> _string_ | The Name of the Barman backup |
| `phase` <br/> _BackupPhase_ | The last backup status |
| `startedAt` <br/> _meta/v1.Time_ | When the backup was started |
| `stoppedAt` <br/> _meta/v1.Time_ | When the backup was terminated |
| `beginWal` <br/> _string_ | The starting WAL |
| `endWal` <br/> _string_ | The ending WAL |
| `beginLSN` <br/> _string_ | The starting xlog |
| `endLSN` <br/> _string_ | The ending xlog |
| `error` <br/> _string_ | The detected error |
| `commandOutput` <br/> _string_ | Unused. Retained for compatibility with old versions. |
| `commandError` <br/> _string_ | The backup command output in case of error |
| `backupLabelFile` <br/> _[]byte_ | Backup label file content as returned by Postgres in case of online (hot) backups |
| `tablespaceMapFile` <br/> _[]byte_ | Tablespace map file content as returned by Postgres in case of online (hot) backups |
| `instanceID` <br/> _InstanceID_ | Information to identify the instance where the backup has been taken from |
| `snapshotBackupStatus` <br/> _BackupSnapshotStatus_ | Status of the volumeSnapshot backup |
| `method` <br/> _BackupMethod_ | The backup method being used |
| `online` <br/> _bool_ | Whether the backup was online/hot (`true`) or offline/cold (`false`) |
| `pluginMetadata` <br/> _map[string]string_ | A map containing the plugin metadata |

## BackupTarget     {#postgresql-cnpg-io-v1-BackupTarget}

(Alias of `string`)

**Appears in:**

- [BackupConfiguration](#postgresql-cnpg-io-v1-BackupConfiguration)
- [BackupSpec](#postgresql-cnpg-io-v1-BackupSpec)
- [ScheduledBackupSpec](#postgresql-cnpg-io-v1-ScheduledBackupSpec)

<p>BackupTarget describes the preferred targets for a backup</p>

## BootstrapConfiguration     {#postgresql-cnpg-io-v1-BootstrapConfiguration}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>BootstrapConfiguration contains information about how to create the PostgreSQL
cluster. Only a single bootstrap method can be defined among the supported
ones. `initdb` will be used as the bootstrap method if left unspecified. Refer to the Bootstrap page of the documentation for more information.</p>

| Field | Description |
|-------|-------------|
| `initdb` <br/> _BootstrapInitDB_ | Bootstrap the cluster via initdb |
| `recovery` <br/> _BootstrapRecovery_ | Bootstrap the cluster from a backup |
| `pg_basebackup` <br/> _BootstrapPgBaseBackup_ | Bootstrap the cluster taking a physical backup of another compatible PostgreSQL instance |

## BootstrapInitDB     {#postgresql-cnpg-io-v1-BootstrapInitDB}

**Appears in:**

- [BootstrapConfiguration](#postgresql-cnpg-io-v1-BootstrapConfiguration)

<p>BootstrapInitDB is the configuration of the bootstrap process when initdb is used. Refer to the Bootstrap page of the documentation for more information.</p>

| Field | Description |
|-------|-------------|
| `database` <br/> _string_ | Name of the database used by the application. Default: `app`. |
| `owner` <br/> _string_ | Name of the owner of the database in the instance to be used by applications. Defaults to value of `database`. |
| `secret` <br/> _github.com/cloudnative-pg/machinery/pkg/api.LocalObjectReference_ | Name of the secret containing the initial credentials for the owner database. If empty a new secret will be created. |
| `options` <br/> _[]string_ | The list of options passed to initdb. Deprecated: may lead to inconsistent configurations; use explicit parameters instead. |
| `dataChecksums` <br/> _bool_ | Whether the `-k` option should be passed to initdb, enabling checksums on data pages (default: `false`) |
| `encoding` <br/> _string_ | Value to pass as `--encoding` for initdb (default: `UTF8`) |
| `localeCollate` <br/> _string_ | Value to pass as `--lc-collate` for initdb (default: `C`) |
| `localeCType` <br/> _string_ | Value to pass as `--lc-ctype` for initdb (default: `C`) |
| `locale` <br/> _string_ | Sets default collation order and character classification in the new database. |
| `localeProvider` <br/> _string_ | Sets the locale provider for databases created in new cluster. Available from PostgreSQL 16. |
| `icuLocale` <br/> _string_ | Specifies ICU locale when `localeProvider` is `icu`. Requires PostgreSQL >=15. |
| `icuRules` <br/> _string_ | Specifies additional collation rules when `localeProvider` is `icu`. Requires PostgreSQL >=16. |
| `builtinLocale` <br/> _string_ | Specifies the locale name when `localeProvider` is `builtin`. Requires PostgreSQL >=17. |
| `walSegmentSize` <br/> _int_ | Value in MB (1 to 1024) for `--wal-segsize` option for initdb (default PostgreSQL: 16MB) |
| `postInitSQL` <br/> _[]string_ | List of SQL queries to execute as superuser in `postgres` DB right after cluster creation |
| `postInitApplicationSQL` <br/> _[]string_ | List of SQL queries to execute as superuser in application DB after cluster creation |
| `postInitTemplateSQL` <br/> _[]string_ | List of SQL queries to execute as superuser in `template1` DB after cluster creation |
| `import` <br/> _Import_ | Bootstraps the new cluster by importing data from an existing PostgreSQL instance using logical backup (`pg_dump` and `pg_restore`) |
| `postInitApplicationSQLRefs` <br/> _SQLRefs_ | References to ConfigMaps or Secrets with SQL files to execute in application DB after cluster creation. Secrets processed first, then ConfigMaps. |
| `postInitTemplateSQLRefs` <br/> _SQLRefs_ | References to ConfigMaps or Secrets with SQL files to execute in `template1` DB after cluster creation. Secrets processed first, then ConfigMaps. |
| `postInitSQLRefs` <br/> _SQLRefs_ | References to ConfigMaps or Secrets with SQL files to execute in `postgres` DB after cluster creation. Secrets processed first, then ConfigMaps. |

## BootstrapPgBaseBackup     {#postgresql-cnpg-io-v1-BootstrapPgBaseBackup}

**Appears in:**

- [BootstrapConfiguration](#postgresql-cnpg-io-v1-BootstrapConfiguration)

<p>BootstrapPgBaseBackup contains the configuration required to take a physical backup of an existing PostgreSQL cluster</p>

| Field | Description |
|-------|-------------|
| `source` <br/> _string_ **[Required]** | The name of the server to take a physical backup from |
| `database` <br/> _string_ | Name of the database used by the application. Default: `app`. |
| `owner` <br/> _string_ | Name of the owner of the database in the instance to be used by applications. Defaults to `database`. |
| `secret` <br/> _github.com/cloudnative-pg/machinery/pkg/api.LocalObjectReference_ | Name of the secret containing the initial credentials for the owner database. If empty a new secret will be created. |

## BootstrapRecovery     {#postgresql-cnpg-io-v1-BootstrapRecovery}

**Appears in:**

- [BootstrapConfiguration](#postgresql-cnpg-io-v1-BootstrapConfiguration)

<p>BootstrapRecovery contains the configuration required to restore from an existing cluster using external cluster, volume snapshots or backup objects. Full recovery and Point-In-Time Recovery are supported. The method can also be used to create clusters in continuous recovery (replica clusters), also supporting cascading replication when `instances` &gt; ...</p>

<ol>
<li>Once the cluster exits recovery, the password for the superuser will be changed through the provided secret. Refer to the Bootstrap page of the documentation for more information.</li>
</ol>

| Field | Description |
|-------|-------------|
| `backup` <br/> _BackupSource_ | The backup object containing the physical base backup from which to initiate the recovery procedure. Mutually exclusive with `source` and `volumeSnapshots`. |
| `source` <br/> _string_ | The external cluster whose backup we will restore. Also used as the name of the folder under which the backup is stored. Mutually exclusive with `backup`. |
| `volumeSnapshots` <br/> _DataSource_ | The static PVC data source(s) from which to initiate the recovery procedure. Supports `VolumeSnapshot` and `PersistentVolumeClaim` resources. Mutually exclusive with `backup`. |
| `recoveryTarget` <br/> _RecoveryTarget_ | Configure recovery stop point (timestamp, XID, LSN, ...). More: https://www.postgresql.org/docs/current/runtime-config-wal.html#RUNTIME-CONFIG-WAL-RECOVERY-TARGET |
| `database` <br/> _string_ | Name of the database used by the application. Default: `app`. |
| `owner` <br/> _string_ | Name of the owner of the database in the instance to be used by applications. Defaults to `database`. |
| `secret` <br/> _github.com/cloudnative-pg/machinery/pkg/api.LocalObjectReference_ | Name of the secret containing the initial credentials for the owner database. If empty a new secret will be created. |

## CatalogImage     {#postgresql-cnpg-io-v1-CatalogImage}

**Appears in:**

- [ImageCatalogSpec](#postgresql-cnpg-io-v1-ImageCatalogSpec)

<p>CatalogImage defines the image and major version</p>

| Field | Description |
|-------|-------------|
| `image` <br/> _string_ **[Required]** | The image reference |
| `major` <br/> _int_ **[Required]** | The PostgreSQL major version of the image. Must be unique within the catalog. |

## CertificatesConfiguration     {#postgresql-cnpg-io-v1-CertificatesConfiguration}

**Appears in:**

- [CertificatesStatus](#postgresql-cnpg-io-v1-CertificatesStatus)
- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>CertificatesConfiguration contains the needed configurations to handle server certificates.</p>

| Field | Description |
|-------|-------------|
| `serverCASecret` <br/> _string_ | The secret containing the Server CA certificate. If not defined, a new secret will be created with a self-signed CA and will be used to generate the TLS certificate ServerTLSSecret. Contains: `ca.crt` (CA cert used as `sslrootcert`) and optionally `ca.key`. |
| `serverTLSSecret` <br/> _string_ | The secret of type `kubernetes.io/tls` containing the server TLS certificate and key that will be set as `ssl_cert_file` and `ssl_key_file`. If not defined, ServerCASecret must provide `ca.key` and a new secret will be created. |
| `replicationTLSSecret` <br/> _string_ | The secret of type `kubernetes.io/tls` containing the client certificate to authenticate as `streaming_replica`. If not defined, ClientCASecret must provide `ca.key`. |
| `clientCASecret` <br/> _string_ | The secret containing the Client CA certificate. If not defined, a new secret will be created with a self-signed CA. Contains: `ca.crt` (used as `ssl_ca_file`) and optionally `ca.key`. |
| `serverAltDNSNames` <br/> _[]string_ | The list of server alternative DNS names to be added to generated server TLS certificates, when required. |

## CertificatesStatus     {#postgresql-cnpg-io-v1-CertificatesStatus}

**Appears in:**

- [ClusterStatus](#postgresql-cnpg-io-v1-ClusterStatus)

<p>CertificatesStatus contains configuration certificates and related expiration dates.</p>

| Field | Description |
|-------|-------------|
| `CertificatesConfiguration` <br/> _CertificatesConfiguration_ | (Members embedded) Needed configurations to handle server certificates, initialized with default values if needed. |
| `expirations` <br/> _map[string]string_ | Expiration dates for all certificates. |

## ClusterMonitoringTLSConfiguration     {#postgresql-cnpg-io-v1-ClusterMonitoringTLSConfiguration}

**Appears in:**

- [MonitoringConfiguration](#postgresql-cnpg-io-v1-MonitoringConfiguration)

<p>ClusterMonitoringTLSConfiguration is the type containing the TLS configuration for the cluster's monitoring</p>

| Field | Description |
|-------|-------------|
| `enabled` <br/> _bool_ | Enable TLS for the monitoring endpoint. Changing this option will force a rollout of all instances. |

## ClusterSpec     {#postgresql-cnpg-io-v1-ClusterSpec}

**Appears in:**

- [Cluster](#postgresql-cnpg-io-v1-Cluster)

<p>ClusterSpec defines the desired state of a PostgreSQL cluster managed by CloudNativePG.</p>

| Field | Description |
|-------|-------------|
| `description` <br/> _string_ | Description of this PostgreSQL cluster |
| `inheritedMetadata` <br/> _EmbeddedObjectMetadata_ | Metadata that will be inherited by all objects related to the Cluster |
| `imageName` <br/> _string_ | Name of the container image, supporting tags and digests for deterministic and repeatable deployments |
| `imageCatalogRef` <br/> _ImageCatalogRef_ | Defines the major PostgreSQL version to use within an ImageCatalog |
| `imagePullPolicy` <br/> _core/v1.PullPolicy_ | Image pull policy (`Always`, `Never`, `IfNotPresent`). Defaults to `IfNotPresent`. Cannot be updated. |
| `schedulerName` <br/> _string_ | If specified, pods will be dispatched by specified Kubernetes scheduler. |
| `postgresUID` <br/> _int64_ | The UID of the `postgres` user inside the image, defaults to `26` |
| `postgresGID` <br/> _int64_ | The GID of the `postgres` user inside the image, defaults to `26` |
| `instances` <br/> _int_ **[Required]** | Number of instances required in the cluster |
| `minSyncReplicas` <br/> _int_ | Minimum number of instances required in synchronous replication with the primary |
| `maxSyncReplicas` <br/> _int_ | Target value for synchronous replication quorum; can be decreased if not enough ready standbys |
| `postgresql` <br/> _PostgresConfiguration_ | Configuration of the PostgreSQL server |
| `replicationSlots` <br/> _ReplicationSlotsConfiguration_ | Replication slots management configuration |
| `bootstrap` <br/> _BootstrapConfiguration_ | Instructions to bootstrap this cluster |
| `replica` <br/> _ReplicaClusterConfiguration_ | Replica cluster configuration |
| `superuserSecret` <br/> _github.com/cloudnative-pg/machinery/pkg/api.LocalObjectReference_ | The secret containing the superuser password. If not defined a new secret will be created with a randomly generated password |
| `enableSuperuserAccess` <br/> _bool_ | When enabled, operator will use the SuperuserSecret to update `postgres` user password. Disabled by default. |
| `certificates` <br/> _CertificatesConfiguration_ | The configuration for the CA and related certificates |
| `imagePullSecrets` <br/> _[]github.com/cloudnative-pg/machinery/pkg/api.LocalObjectReference_ | The list of pull secrets to pull images |
| `storage` <br/> _StorageConfiguration_ | Configuration of the storage of the instances |
| `serviceAccountTemplate` <br/> _ServiceAccountTemplate_ | Configure the generation of the service account |
| `walStorage` <br/> _StorageConfiguration_ | Configuration of the storage for PostgreSQL WAL (Write-Ahead Log) |
| `ephemeralVolumeSource` <br/> _core/v1.EphemeralVolumeSource_ | Configure the source of ephemeral volumes. |
| `startDelay` <br/> _int32_ | Allowed time in seconds for a PostgreSQL instance to start (default 3600). Startup probe failure threshold = ceiling(startDelay / 10). |
| `stopDelay` <br/> _int32_ | Allowed time in seconds for PostgreSQL instance to gracefully shutdown (default 1800) |
| `smartShutdownTimeout` <br/> _int32_ | Window in seconds reserved for smart shutdown to complete. Default 180 seconds. |
| `switchoverDelay` <br/> _int32_ | Time in seconds allowed for primary to gracefully shutdown during switchover (default 3600) |
| `failoverDelay` <br/> _int32_ | Time in seconds to wait before triggering failover after primary detected unhealthy |
| `livenessProbeTimeout` <br/> _int32_ | Time in seconds allowed for instance to respond to liveness probe (default 30). Failure threshold = ceiling(livenessProbeTimeout / 10). |
| `affinity` <br/> _AffinityConfiguration_ | Affinity/Anti-affinity rules for Pods |
| `topologySpreadConstraints` <br/> _[]core/v1.TopologySpreadConstraint_ | How to spread matching pods among topology domains. |
| `resources` <br/> _core/v1.ResourceRequirements_ | Resource requirements for generated Pods. |
| `ephemeralVolumesSizeLimit` <br/> _EphemeralVolumesSizeLimitConfiguration_ | Limits for ephemeral volumes |
| `priorityClassName` <br/> _string_ | Priority class name for generated Pods |
| `primaryUpdateStrategy` <br/> _PrimaryUpdateStrategy_ | Strategy to upgrade primary during rolling update (`unsupervised` default or `supervised`) |
| `primaryUpdateMethod` <br/> _PrimaryUpdateMethod_ | Method to upgrade primary during rolling update (`switchover` or `restart` default) |
| `backup` <br/> _BackupConfiguration_ | Configuration to be used for backups |
| `nodeMaintenanceWindow` <br/> _NodeMaintenanceWindow_ | Define a maintenance window for Kubernetes nodes |
| `monitoring` <br/> _MonitoringConfiguration_ | Configuration of monitoring infrastructure |
| `externalClusters` <br/> _[]ExternalCluster_ | The list of external clusters used in configuration |
| `logLevel` <br/> _string_ | Instances' log level: `error`, `warning`, `info` (default), `debug`, `trace` |
| `projectedVolumeTemplate` <br/> _core/v1.ProjectedVolumeSource_ | Template for projected volumes; will be mounted under `/projected` |
| `env` <br/> _[]core/v1.EnvVar_ | Environment variables to pass to pods |
| `envFrom` <br/> _[]core/v1.EnvFromSource_ | Environment variable sources to be used by `env` |
| `managed` <br/> _ManagedConfiguration_ | Configuration used by portions of PostgreSQL managed by instance manager |
| `seccompProfile` <br/> _core/v1.SeccompProfile_ | SeccompProfile applied to every Pod and Container (default `RuntimeDefault`) |
| `tablespaces` <br/> _[]TablespaceConfiguration_ | Tablespaces configuration |
| `enablePDB` <br/> _bool_ | Manage PodDisruptionBudget resources. Default `true`. Setting to `false` results in no PDB resources. |
| `plugins` <br/> _[]PluginConfiguration_ | Plugins configuration |
| `probes` <br/> _ProbesConfiguration_ | Configuration of probes to inject in PostgreSQL Pods |

## ClusterStatus     {#postgresql-cnpg-io-v1-ClusterStatus}

**Appears in:**

- [Cluster](#postgresql-cnpg-io-v1-Cluster)

<p>ClusterStatus defines the observed state of a PostgreSQL cluster managed by CloudNativePG.</p>

| Field | Description |
|-------|-------------|
| `instances` <br/> _int_ | Total number of PVC Groups detected in the cluster. May differ from number of instance pods. |
| `readyInstances` <br/> _int_ | Total number of ready instances in the cluster (ready instance pods). |
| `instancesStatus` <br/> _map[PodStatus][]string_ | InstancesStatus indicates in which status the instances are |
| `instancesReportedState` <br/> _map[PodName]InstanceReportedState_ | Reported state of instances during last reconciliation loop |
| `managedRolesStatus` <br/> _ManagedRoles_ | Reports state of managed roles in the cluster |
| `tablespacesStatus` <br/> _[]TablespaceState_ | State of declarative tablespaces in the cluster |
| `timelineID` <br/> _int_ | Timeline of the Postgres cluster |
| `topology` <br/> _Topology_ | Instances topology |
| `latestGeneratedNode` <br/> _int_ | ID of latest generated node (used to avoid node name clashing) |
| `currentPrimary` <br/> _string_ | Current primary instance |
| `targetPrimary` <br/> _string_ | Target primary instance (different during switchover/failover) |
| `lastPromotionToken` <br/> _string_ | Last verified promotion token used to promote a replica cluster |
| `pvcCount` <br/> _int32_ | How many PVCs have been created by this cluster |
| `jobCount` <br/> _int32_ | How many Jobs have been created by this cluster |
| `danglingPVC` <br/> _[]string_ | PVCs created by this cluster that are available but not attached to a Pod |
| `resizingPVC` <br/> _[]string_ | PVCs that have ResizingPVC condition |
| `initializingPVC` <br/> _[]string_ | PVCs being initialized by this cluster |
| `healthyPVC` <br/> _[]string_ | PVCs not dangling nor initializing |
| `unusablePVC` <br/> _[]string_ | PVCs unusable because another PVC is missing |
| `writeService` <br/> _string_ | Current write pod |
| `readService` <br/> _string_ | Current list of read pods |
| `phase` <br/> _string_ | Current phase of the cluster |
| `phaseReason` <br/> _string_ | Reason for the current phase |
| `secretsResourceVersion` <br/> _SecretsResourceVersion_ | Resource versions of secrets managed by the operator; used to refresh secret data |
| `configMapResourceVersion` <br/> _ConfigMapResourceVersion_ | Resource versions of configmaps managed by the operator; used to refresh configmap data |
| `certificates` <br/> _CertificatesStatus_ | Certificates status, initialized with defaults |
| `firstRecoverabilityPoint` <br/> _string_ | First recoverability point as RFC3339 date (Deprecated for plugin backups) |
| `firstRecoverabilityPointByMethod` <br/> _map[BackupMethod]meta/v1.Time_ | First recoverability point per backup method (Deprecated for plugin backups) |
| `lastSuccessfulBackup` <br/> _string_ | Last successful backup as RFC3339 (Deprecated for plugin backups) |
| `lastSuccessfulBackupByMethod` <br/> _map[BackupMethod]meta/v1.Time_ | Last successful backup per method (Deprecated for plugin backups) |
| `lastFailedBackup` <br/> _string_ | Last failed backup as RFC3339 (Deprecated for plugin backups) |
| `cloudNativePGCommitHash` <br/> _string_ | Commit hash of the operator running |
| `currentPrimaryTimestamp` <br/> _string_ | Timestamp of last actual promotion to primary |
| `currentPrimaryFailingSinceTimestamp` <br/> _string_ | Timestamp when the primary was detected unhealthy |
| `targetPrimaryTimestamp` <br/> _string_ | Timestamp when last request for a new primary occurred |
| `poolerIntegrations` <br/> _PoolerIntegrations_ | Integration info needed by poolers referencing the cluster |
| `cloudNativePGOperatorHash` <br/> _string_ | Hash of the operator binary |
| `availableArchitectures` <br/> _[]AvailableArchitecture_ | Available architectures of a cluster |
| `conditions` <br/> _[]meta/v1.Condition_ | Conditions for cluster object |
| `instanceNames` <br/> _[]string_ | List of instance names in the cluster |
| `onlineUpdateEnabled` <br/> _bool_ | Shows if online upgrade is enabled inside the cluster |
| `image` <br/> _string_ | Image name used by the pods |
| `pgDataImageInfo` <br/> _ImageInfo_ | Details of the latest image that has run on the current data directory |
| `pluginStatus` <br/> _[]PluginStatus_ | Status of loaded plugins |
| `switchReplicaClusterStatus` <br/> _SwitchReplicaClusterStatus_ | Status of switch to replica cluster |
| `demotionToken` <br/> _string_ | JSON token with info from pg_controldata |
| `systemID` <br/> _string_ | Latest detected PostgreSQL SystemID |

## ConfigMapResourceVersion     {#postgresql-cnpg-io-v1-ConfigMapResourceVersion}

**Appears in:**

- [ClusterStatus](#postgresql-cnpg-io-v1-ClusterStatus)

<p>ConfigMapResourceVersion is the resource versions of the secrets managed by the operator</p>

| Field | Description |
|-------|-------------|
| `metrics` <br/> _map[string]string_ | A map with the versions of all config maps used to pass metrics. Keys are config map names, values are versions. |

## DataDurabilityLevel     {#postgresql-cnpg-io-v1-DataDurabilityLevel}

(Alias of `string`)

**Appears in:**

- [SynchronousReplicaConfiguration](#postgresql-cnpg-io-v1-SynchronousReplicaConfiguration)

<p>DataDurabilityLevel specifies how strictly to enforce synchronous replication when cluster instances are unavailable. Options are `required` or `preferred`.</p>

## DataSource     {#postgresql-cnpg-io-v1-DataSource}

**Appears in:**

- [BootstrapRecovery](#postgresql-cnpg-io-v1-BootstrapRecovery)

<p>DataSource contains the configuration required to bootstrap a PostgreSQL cluster from an existing storage</p>

| Field | Description |
|-------|-------------|
| `storage` <br/> _core/v1.TypedLocalObjectReference_ **[Required]** | Configuration of the storage of the instances |
| `walStorage` <br/> _core/v1.TypedLocalObjectReference_ | Configuration of the storage for PostgreSQL WAL |
| `tablespaceStorage` <br/> _map[string]core/v1.TypedLocalObjectReference_ | Configuration of the storage for PostgreSQL tablespaces |

## DatabaseObjectSpec     {#postgresql-cnpg-io-v1-DatabaseObjectSpec}

**Appears in:**

- [ExtensionSpec](#postgresql-cnpg-io-v1-ExtensionSpec)
- [FDWSpec](#postgresql-cnpg-io-v1-FDWSpec)
- [SchemaSpec](#postgresql-cnpg-io-v1-SchemaSpec)
- [ServerSpec](#postgresql-cnpg-io-v1-ServerSpec)

<p>DatabaseObjectSpec contains fields common to every database object</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ **[Required]** | Name of the object (extension, schema, FDW, server) |
| `ensure` <br/> _EnsureOption_ | Specifies whether an object should be present or absent. |

## DatabaseObjectStatus     {#postgresql-cnpg-io-v1-DatabaseObjectStatus}

**Appears in:**

- [DatabaseStatus](#postgresql-cnpg-io-v1-DatabaseStatus)

<p>DatabaseObjectStatus is the status of the managed database objects</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ **[Required]** | The name of the object |
| `applied` <br/> _bool_ **[Required]** | True if the object has been installed successfully in the database |
| `message` <br/> _string_ | Reconciliation message |

## DatabaseReclaimPolicy     {#postgresql-cnpg-io-v1-DatabaseReclaimPolicy}

(Alias of `string`)

**Appears in:**

- [DatabaseSpec](#postgresql-cnpg-io-v1-DatabaseSpec)

<p>DatabaseReclaimPolicy describes a policy for end-of-life maintenance of databases.</p>

## DatabaseRoleRef     {#postgresql-cnpg-io-v1-DatabaseRoleRef}

**Appears in:**

- [TablespaceConfiguration](#postgresql-cnpg-io-v1-TablespaceConfiguration)

<p>DatabaseRoleRef is a reference to a role available inside PostgreSQL</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ | No description provided. |

## DatabaseSpec     {#postgresql-cnpg-io-v1-DatabaseSpec}

**Appears in:**

- [Database](#postgresql-cnpg-io-v1-Database)

<p>DatabaseSpec is the specification of a PostgreSQL Database, built around `CREATE DATABASE`, `ALTER DATABASE`, and `DROP DATABASE` SQL commands.</p>

| Field | Description |
|-------|-------------|
| `cluster` <br/> _core/v1.LocalObjectReference_ **[Required]** | The name of the PostgreSQL cluster hosting the database. |
| `ensure` <br/> _EnsureOption_ | Ensure the PostgreSQL database is `present` or `absent` - defaults to `present`. |
| `name` <br/> _string_ **[Required]** | The name of the database to create inside PostgreSQL. Cannot be changed. |
| `owner` <br/> _string_ **[Required]** | Role name of the user who owns the database inside PostgreSQL. |
| `template` <br/> _string_ | Maps to `TEMPLATE` parameter of `CREATE DATABASE`. Cannot be changed. |
| `encoding` <br/> _string_ | Maps to `ENCODING` parameter of `CREATE DATABASE`. Cannot be changed. |
| `locale` <br/> _string_ | Maps to `LOCALE` parameter of `CREATE DATABASE`. Cannot be changed. |
| `localeProvider` <br/> _string_ | Maps to `LOCALE_PROVIDER` parameter. Cannot be changed. Available from PostgreSQL 16. |
| `localeCollate` <br/> _string_ | Maps to `LC_COLLATE` parameter of `CREATE DATABASE`. Cannot be changed. |
| `localeCType` <br/> _string_ | Maps to `LC_CTYPE` parameter of `CREATE DATABASE`. Cannot be changed. |
| `icuLocale` <br/> _string_ | Maps to `ICU_LOCALE` parameter. Requires `localeProvider` = `icu`. |
| `icuRules` <br/> _string_ | Maps to `ICU_RULES` parameter. Requires `localeProvider` = `icu`. |
| `builtinLocale` <br/> _string_ | Maps to `BUILTIN_LOCALE` parameter. Requires `localeProvider` = `builtin`. |
| `collationVersion` <br/> _string_ | Maps to `COLLATION_VERSION` parameter. Cannot be changed. |
| `isTemplate` <br/> _bool_ | Maps to `IS_TEMPLATE` parameter. If true, DB considered template and can be cloned by users with `CREATEDB`. |
| `allowConnections` <br/> _bool_ | Maps to `ALLOW_CONNECTIONS` parameter. If false, no one can connect to DB. |
| `connectionLimit` <br/> _int_ | Maps to `CONNECTION LIMIT`. -1 (default) means no limit. |
| `tablespace` <br/> _string_ | Maps to `TABLESPACE` parameter. |
| `databaseReclaimPolicy` <br/> _DatabaseReclaimPolicy_ | Policy for end-of-life maintenance of this database. |
| `schemas` <br/> _[]SchemaSpec_ | List of schemas to be managed in the database |
| `extensions` <br/> _[]ExtensionSpec_ | List of extensions to be managed in the database |
| `fdws` <br/> _[]FDWSpec_ | List of foreign data wrappers to be managed |
| `servers` <br/> _[]ServerSpec_ | List of foreign servers to be managed |

## DatabaseStatus     {#postgresql-cnpg-io-v1-DatabaseStatus}

**Appears in:**

- [Database](#postgresql-cnpg-io-v1-Database)

<p>DatabaseStatus defines the observed state of Database</p>

| Field | Description |
|-------|-------------|
| `observedGeneration` <br/> _int64_ | Sequence number representing the latest desired state that was synchronized |
| `applied` <br/> _bool_ | True if the database was reconciled correctly |
| `message` <br/> _string_ | Reconciliation output message |
| `schemas` <br/> _[]DatabaseObjectStatus_ | Status of managed schemas |
| `extensions` <br/> _[]DatabaseObjectStatus_ | Status of managed extensions |
| `fdws` <br/> _[]DatabaseObjectStatus_ | Status of managed FDWs |
| `servers` <br/> _[]DatabaseObjectStatus_ | Status of managed servers |

## EmbeddedObjectMetadata     {#postgresql-cnpg-io-v1-EmbeddedObjectMetadata}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>EmbeddedObjectMetadata contains metadata to be inherited by all resources related to a Cluster</p>

| Field | Description |
|-------|-------------|
| `labels` <br/> _map[string]string_ | No description provided. |
| `annotations` <br/> _map[string]string_ | No description provided. |

## EnsureOption     {#postgresql-cnpg-io-v1-EnsureOption}

(Alias of `string`)

**Appears in:**

- [DatabaseObjectSpec](#postgresql-cnpg-io-v1-DatabaseObjectSpec)
- [DatabaseSpec](#postgresql-cnpg-io-v1-DatabaseSpec)
- [OptionSpec](#postgresql-cnpg-io-v1-OptionSpec)
- [RoleConfiguration](#postgresql-cnpg-io-v1-RoleConfiguration)

<p>EnsureOption represents whether we should enforce the presence or absence of a Role in a PostgreSQL instance</p>

## EphemeralVolumesSizeLimitConfiguration     {#postgresql-cnpg-io-v1-EphemeralVolumesSizeLimitConfiguration}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>EphemeralVolumesSizeLimitConfiguration contains the configuration of the ephemeral storage</p>

| Field | Description |
|-------|-------------|
| `shm` <br/> _k8s.io/apimachinery/pkg/api/resource.Quantity_ | Shm is the size limit of the shared memory volume |
| `temporaryData` <br/> _k8s.io/apimachinery/pkg/api/resource.Quantity_ | TemporaryData is the size limit of the temporary data volume |

## ExtensionConfiguration     {#postgresql-cnpg-io-v1-ExtensionConfiguration}

**Appears in:**

- [PostgresConfiguration](#postgresql-cnpg-io-v1-PostgresConfiguration)

<p>ExtensionConfiguration is the configuration used to add PostgreSQL extensions to the Cluster.</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ **[Required]** | The name of the extension, required |
| `image` <br/> _core/v1.ImageVolumeSource_ **[Required]** | The image containing the extension, required |
| `extension_control_path` <br/> _[]string_ | List of directories inside the image to add to extension_control_path (defaults to `/share`) |
| `dynamic_library_path` <br/> _[]string_ | List of directories inside the image to add to dynamic_library_path (defaults to `/lib`) |
| `ld_library_path` <br/> _[]string_ | List of directories inside the image to add to ld_library_path |

## ExtensionSpec     {#postgresql-cnpg-io-v1-ExtensionSpec}

**Appears in:**

- [DatabaseSpec](#postgresql-cnpg-io-v1-DatabaseSpec)

<p>ExtensionSpec configures an extension in a database</p>

| Field | Description |
|-------|-------------|
| `DatabaseObjectSpec` <br/> _DatabaseObjectSpec_ | (Members embedded) Common fields |
| `version` <br/> _string_ **[Required]** | Version of the extension to install. If empty, operator installs default version. |
| `schema` <br/> _string_ **[Required]** | Schema in which to install extension objects. If not specified, default behavior applies. |

## ExternalCluster     {#postgresql-cnpg-io-v1-ExternalCluster}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>ExternalCluster represents connection parameters to an external cluster used in the other sections</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ **[Required]** | Server name |
| `connectionParameters` <br/> _map[string]string_ | Connection parameters such as dbname, host, username, etc |
| `sslCert` <br/> _core/v1.SecretKeySelector_ | Reference to an SSL certificate to connect to this instance |
| `sslKey` <br/> _core/v1.SecretKeySelector_ | Reference to an SSL private key to connect to this instance |
| `sslRootCert` <br/> _core/v1.SecretKeySelector_ | Reference to an SSL CA public key to connect to this instance |
| `password` <br/> _core/v1.SecretKeySelector_ | Reference to the password to be used. CloudNativePG creates a passfile at `/controller/external/NAME/pass` when provided. |
| `barmanObjectStore` <br/> _github.com/cloudnative-pg/barman-cloud/pkg/api.BarmanObjectStoreConfiguration_ | Configuration for the barman-cloud tool suite |
| `plugin` <br/> _PluginConfiguration_ **[Required]** | Configuration of the plugin that manages WAL archiving and backups for this external cluster |

## FDWSpec     {#postgresql-cnpg-io-v1-FDWSpec}

**Appears in:**

- [DatabaseSpec](#postgresql-cnpg-io-v1-DatabaseSpec)

<p>FDWSpec configures a Foreign Data Wrapper in a database</p>

| Field | Description |
|-------|-------------|
| `DatabaseObjectSpec` <br/> _DatabaseObjectSpec_ | (Members embedded) Common fields |
| `handler` <br/> _string_ | Name of the handler function (e.g., `postgres_fdw_handler`) |
| `validator` <br/> _string_ | Name of the validator function (e.g., `postgres_fdw_validator`) |
| `owner` <br/> _string_ | Database role that will own the FDW |
| `options` <br/> _[]OptionSpec_ | Options specifies the configuration options for the FDW |
| `usage` <br/> _[]UsageSpec_ | List of roles for which `USAGE` privileges on the FDW are granted or revoked |

## FailoverQuorumStatus     {#postgresql-cnpg-io-v1-FailoverQuorumStatus}

**Appears in:**

- [FailoverQuorum](#postgresql-cnpg-io-v1-FailoverQuorum)

<p>FailoverQuorumStatus is the latest observed status of the failover quorum of the PG cluster.</p>

| Field | Description |
|-------|-------------|
| `method` <br/> _string_ | Contains the latest reported Method value. |
| `standbyNames` <br/> _[]string_ | List of potentially synchronous instance names. |
| `standbyNumber` <br/> _int_ | Number of synchronous standbys transactions need to wait for. |
| `primary` <br/> _string_ | Name of the primary instance that updated this object the latest time. |

## ImageCatalogRef     {#postgresql-cnpg-io-v1-ImageCatalogRef}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>ImageCatalogRef defines the reference to a major version in an ImageCatalog</p>

| Field | Description |
|-------|-------------|
| `TypedLocalObjectReference` <br/> _core/v1.TypedLocalObjectReference_ | (Members embedded) |
| `major` <br/> _int_ **[Required]** | Major version of PostgreSQL to use from the ImageCatalog |

## ImageCatalogSpec     {#postgresql-cnpg-io-v1-ImageCatalogSpec}

**Appears in:**

- [ClusterImageCatalog](#postgresql-cnpg-io-v1-ClusterImageCatalog)
- [ImageCatalog](#postgresql-cnpg-io-v1-ImageCatalog)

<p>ImageCatalogSpec defines the desired ImageCatalog</p>

| Field | Description |
|-------|-------------|
| `images` <br/> _[]CatalogImage_ **[Required]** | List of CatalogImages available in the catalog |

## ImageInfo     {#postgresql-cnpg-io-v1-ImageInfo}

**Appears in:**

- [ClusterStatus](#postgresql-cnpg-io-v1-ClusterStatus)

<p>ImageInfo contains the information about a PostgreSQL image</p>

| Field | Description |
|-------|-------------|
| `image` <br/> _string_ **[Required]** | Image is the image name |
| `majorVersion` <br/> _int_ **[Required]** | MajorVersion is the major version of the image |

## Import     {#postgresql-cnpg-io-v1-Import}

**Appears in:**

- [BootstrapInitDB](#postgresql-cnpg-io-v1-BootstrapInitDB)

<p>Import contains configuration to initialize a database from a logical snapshot of an externalCluster</p>

| Field | Description |
|-------|-------------|
| `source` <br/> _ImportSource_ **[Required]** | The source of the import |
| `type` <br/> _SnapshotType_ **[Required]** | The import type. Can be `microservice` or `monolith`. |
| `databases` <br/> _[]string_ **[Required]** | The databases to import |
| `roles` <br/> _[]string_ | The roles to import |
| `postImportApplicationSQL` <br/> _[]string_ | SQL queries to execute in application DB after import (only available in microservice type) |
| `schemaOnly` <br/> _bool_ | If true, only `pre-data` and `post-data` sections of `pg_restore` are invoked (default `false`) |
| `pgDumpExtraOptions` <br/> _[]string_ | Custom options to pass to `pg_dump`. Use with caution; operator does not validate them. |
| `pgRestoreExtraOptions` <br/> _[]string_ | Custom options to pass to `pg_restore`. Use with caution. |
| `pgRestorePredataOptions` <br/> _[]string_ | Custom options to pass during `pre-data` section; overrides `pgRestoreExtraOptions`. |
| `pgRestoreDataOptions` <br/> _[]string_ | Custom options to pass during `data` section; overrides `pgRestoreExtraOptions`. |
| `pgRestorePostdataOptions` <br/> _[]string_ | Custom options to pass during `post-data` section; overrides `pgRestoreExtraOptions`. |

## ImportSource     {#postgresql-cnpg-io-v1-ImportSource}

**Appears in:**

- [Import](#postgresql-cnpg-io-v1-Import)

<p>ImportSource describes the source for the logical snapshot</p>

| Field | Description |
|-------|-------------|
| `externalCluster` <br/> _string_ **[Required]** | The name of the externalCluster used for import |

## InstanceID     {#postgresql-cnpg-io-v1-InstanceID}

**Appears in:**

- [BackupStatus](#postgresql-cnpg-io-v1-BackupStatus)

<p>InstanceID contains the information to identify an instance</p>

| Field | Description |
|-------|-------------|
| `podName` <br/> _string_ | The pod name |
| `ContainerID` <br/> _string_ | The container ID |

## InstanceReportedState     {#postgresql-cnpg-io-v1-InstanceReportedState}

**Appears in:**

- [ClusterStatus](#postgresql-cnpg-io-v1-ClusterStatus)

<p>InstanceReportedState describes the last reported state of an instance during a reconciliation loop</p>

| Field | Description |
|-------|-------------|
| `isPrimary` <br/> _bool_ **[Required]** | Indicates if an instance is the primary one |
| `timeLineID` <br/> _int_ | TimelineId the instance is on |
| `ip` <br/> _string_ **[Required]** | IP address of the instance |

## IsolationCheckConfiguration     {#postgresql-cnpg-io-v1-IsolationCheckConfiguration}

**Appears in:**

- [LivenessProbe](#postgresql-cnpg-io-v1-LivenessProbe)

<p>IsolationCheckConfiguration contains configuration for the isolation check functionality in the liveness probe</p>

| Field | Description |
|-------|-------------|
| `enabled` <br/> _bool_ | Whether primary isolation checking is enabled for the liveness probe |
| `requestTimeout` <br/> _int_ | Timeout in milliseconds for requests during the primary isolation check |
| `connectionTimeout` <br/> _int_ | Timeout in milliseconds for connections during the primary isolation check |

## LDAPBindAsAuth     {#postgresql-cnpg-io-v1-LDAPBindAsAuth}

**Appears in:**

- [LDAPConfig](#postgresql-cnpg-io-v1-LDAPConfig)

<p>LDAPBindAsAuth provides required fields to use bind authentication for LDAP</p>

| Field | Description |
|-------|-------------|
| `prefix` <br/> _string_ | Prefix for the bind authentication option |
| `suffix` <br/> _string_ | Suffix for the bind authentication option |

## LDAPBindSearchAuth     {#postgresql-cnpg-io-v1-LDAPBindSearchAuth}

**Appears in:**

- [LDAPConfig](#postgresql-cnpg-io-v1-LDAPConfig)

<p>LDAPBindSearchAuth provides required fields to use bind+search LDAP authentication</p>

| Field | Description |
|-------|-------------|
| `baseDN` <br/> _string_ | Root DN to begin the user search |
| `bindDN` <br/> _string_ | DN of the user to bind to the directory |
| `bindPassword` <br/> _core/v1.SecretKeySelector_ | Secret with the password for the user to bind |
| `searchAttribute` <br/> _string_ | Attribute to match against the username |
| `searchFilter` <br/> _string_ | Search filter to use when doing search+bind authentication |

## LDAPConfig     {#postgresql-cnpg-io-v1-LDAPConfig}

**Appears in:**

- [PostgresConfiguration](#postgresql-cnpg-io-v1-PostgresConfiguration)

<p>LDAPConfig contains parameters needed for LDAP authentication</p>

| Field | Description |
|-------|-------------|
| `server` <br/> _string_ | LDAP hostname or IP address |
| `port` <br/> _int_ | LDAP server port |
| `scheme` <br/> _LDAPScheme_ | LDAP scheme: `ldap` or `ldaps` |
| `bindAsAuth` <br/> _LDAPBindAsAuth_ | Bind as authentication configuration |
| `bindSearchAuth` <br/> _LDAPBindSearchAuth_ | Bind+Search authentication configuration |
| `tls` <br/> _bool_ | Set to `true` to enable LDAP over TLS (default `false`) |

## LDAPScheme     {#postgresql-cnpg-io-v1-LDAPScheme}

(Alias of `string`)

**Appears in:**

- [LDAPConfig](#postgresql-cnpg-io-v1-LDAPConfig)

<p>LDAPScheme defines possible schemes for LDAP</p>

## LivenessProbe     {#postgresql-cnpg-io-v1-LivenessProbe}

**Appears in:**

- [ProbesConfiguration](#postgresql-cnpg-io-v1-ProbesConfiguration)

<p>LivenessProbe is the configuration of the liveness probe</p>

| Field | Description |
|-------|-------------|
| `Probe` <br/> _Probe_ | (Members of `Probe` are embedded into this type.) Standard probe configuration |
| `isolationCheck` <br/> _IsolationCheckConfiguration_ | Configure feature that extends liveness probe for a primary instance. Verifies isolation from API server and replicas. Enabled by default. |

## ManagedConfiguration     {#postgresql-cnpg-io-v1-ManagedConfiguration}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>ManagedConfiguration represents portions of PostgreSQL managed by the instance manager</p>

| Field | Description |
|-------|-------------|
| `roles` <br/> _[]RoleConfiguration_ | Database roles managed by the Cluster |
| `services` <br/> _ManagedServices_ | Services roles managed by the Cluster |

## ManagedRoles     {#postgresql-cnpg-io-v1-ManagedRoles}

**Appears in:**

- [ClusterStatus](#postgresql-cnpg-io-v1-ClusterStatus)

<p>ManagedRoles tracks the status of a cluster's managed roles</p>

| Field | Description |
|-------|-------------|
| `byStatus` <br/> _map[RoleStatus][]string_ | Lists roles in each state |
| `cannotReconcile` <br/> _map[string][]string_ | Roles that cannot be reconciled with explanation |
| `passwordStatus` <br/> _map[string]PasswordState_ | Last transaction id and password secret version for each managed role |

## ManagedService     {#postgresql-cnpg-io-v1-ManagedService}

**Appears in:**

- [ManagedServices](#postgresql-cnpg-io-v1-ManagedServices)

<p>ManagedService represents a specific service managed by the cluster.</p>

| Field | Description |
|-------|-------------|
| `selectorType` <br/> _ServiceSelectorType_ **[Required]** | SelectorType specifies type of selectors: `rw`, `r`, `ro` |
| `updateStrategy` <br/> _ServiceUpdateStrategy_ | UpdateStrategy describes how service differences should be reconciled |
| `serviceTemplate` <br/> _ServiceTemplateSpec_ **[Required]** | Template spec for the service |

## ManagedServices     {#postgresql-cnpg-io-v1-ManagedServices}

**Appears in:**

- [ManagedConfiguration](#postgresql-cnpg-io-v1-ManagedConfiguration)

<p>ManagedServices represents services managed by the cluster.</p>

| Field | Description |
|-------|-------------|
| `disabledDefaultServices` <br/> _[]ServiceSelectorType_ | Services disabled by default (`r`, `ro`) |
| `additional` <br/> _[]ManagedService_ | Additional managed services specified by user |

## Metadata     {#postgresql-cnpg-io-v1-Metadata}

**Appears in:**

- [PodTemplateSpec](#postgresql-cnpg-io-v1-PodTemplateSpec)
- [ServiceAccountTemplate](#postgresql-cnpg-io-v1-ServiceAccountTemplate)
- [ServiceTemplateSpec](#postgresql-cnpg-io-v1-ServiceTemplateSpec)

<p>Metadata is similar to metav1.ObjectMeta but parseable by controller-gen to create a suitable CRD for the user.</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ | Name of the resource. Only supported for certain types |
| `labels` <br/> _map[string]string_ | Map of string keys/values to organize and categorize objects |
| `annotations` <br/> _map[string]string_ | Unstructured key-value map stored with a resource for arbitrary metadata |

## MonitoringConfiguration     {#postgresql-cnpg-io-v1-MonitoringConfiguration}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>MonitoringConfiguration contains monitoring configuration for a cluster</p>

| Field | Description |
|-------|-------------|
| `disableDefaultQueries` <br/> _bool_ | Whether default queries should be injected. Default: `false`. |
| `customQueriesConfigMap` <br/> _[]github.com/cloudnative-pg/machinery/pkg/api.ConfigMapKeySelector_ | ConfigMaps containing custom queries |
| `customQueriesSecret` <br/> _[]github.com/cloudnative-pg/machinery/pkg/api.SecretKeySelector_ | Secrets containing custom queries |
| `enablePodMonitor` <br/> _bool_ | Enable/disable `PodMonitor`. Deprecated: will be removed. |
| `tls` <br/> _ClusterMonitoringTLSConfiguration_ | Configure TLS for metrics endpoint. |
| `podMonitorMetricRelabelings` <br/> _[]prometheus RelabelConfig_ | Metric relabelings for PodMonitor. Deprecated. |
| `podMonitorRelabelings` <br/> _[]prometheus RelabelConfig_ | Relabelings for PodMonitor. Deprecated. |

## NodeMaintenanceWindow     {#postgresql-cnpg-io-v1-NodeMaintenanceWindow}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>NodeMaintenanceWindow contains information operator will use while upgrading the underlying node.</p>

| Field | Description |
|-------|-------------|
| `reusePVC` <br/> _bool_ | Reuse existing PVC (wait for node) or recreate it elsewhere when `instances` &gt; 1 |
| `inProgress` <br/> _bool_ | Is there a node maintenance activity in progress? |

## OnlineConfiguration     {#postgresql-cnpg-io-v1-OnlineConfiguration}

**Appears in:**

- [BackupSpec](#postgresql-cnpg-io-v1-BackupSpec)
- [ScheduledBackupSpec](#postgresql-cnpg-io-v1-ScheduledBackupSpec)
- [VolumeSnapshotConfiguration](#postgresql-cnpg-io-v1-VolumeSnapshotConfiguration)

<p>OnlineConfiguration contains configuration parameters for online volume snapshot</p>

| Field | Description |
|-------|-------------|
| `waitForArchive` <br/> _bool_ | If false, returns immediately after backup completed without waiting for WAL to be archived. Default: true (waits). |
| `immediateCheckpoint` <br/> _bool_ | Control whether I/O workload for initial checkpoint is limited. If true, immediate checkpoint used (default `false`). |

## OptionSpec     {#postgresql-cnpg-io-v1-OptionSpec}

**Appears in:**

- [FDWSpec](#postgresql-cnpg-io-v1-FDWSpec)
- [ServerSpec](#postgresql-cnpg-io-v1-ServerSpec)

<p>OptionSpec holds the name, value and ensure field for an option</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ **[Required]** | Name of the option |
| `value` <br/> _string_ **[Required]** | Value of the option |
| `ensure` <br/> _EnsureOption_ | Whether the option should be present or absent |

## PasswordState     {#postgresql-cnpg-io-v1-PasswordState}

**Appears in:**

- [ManagedRoles](#postgresql-cnpg-io-v1-ManagedRoles)

<p>PasswordState represents the state of the password of a managed RoleConfiguration</p>

| Field | Description |
|-------|-------------|
| `transactionID` <br/> _int64_ | Last transaction ID to affect role definition in PostgreSQL |
| `resourceVersion` <br/> _string_ | Resource version of the password secret |

## PgBouncerIntegrationStatus     {#postgresql-cnpg-io-v1-PgBouncerIntegrationStatus}

**Appears in:**

- [PoolerIntegrations](#postgresql-cnpg-io-v1-PoolerIntegrations)

<p>PgBouncerIntegrationStatus encapsulates integration needed for pgbouncer poolers referencing the cluster</p>

| Field | Description |
|-------|-------------|
| `secrets` <br/> _[]string_ | No description provided. |

## PgBouncerPoolMode     {#postgresql-cnpg-io-v1-PgBouncerPoolMode}

(Alias of `string`)

**Appears in:**

- [PgBouncerSpec](#postgresql-cnpg-io-v1-PgBouncerSpec)

<p>PgBouncerPoolMode is the mode of PgBouncer</p>

## PgBouncerSecrets     {#postgresql-cnpg-io-v1-PgBouncerSecrets}

**Appears in:**

- [PoolerSecrets](#postgresql-cnpg-io-v1-PoolerSecrets)

<p>PgBouncerSecrets contains versions of secrets used by pgbouncer</p>

| Field | Description |
|-------|-------------|
| `authQuery` <br/> _SecretVersion_ | The auth query secret version |

## PgBouncerSpec     {#postgresql-cnpg-io-v1-PgBouncerSpec}

**Appears in:**

- [PoolerSpec](#postgresql-cnpg-io-v1-PoolerSpec)

<p>PgBouncerSpec defines how to configure PgBouncer</p>

| Field | Description |
|-------|-------------|
| `poolMode` <br/> _PgBouncerPoolMode_ | Pool mode. Default: `session`. |
| `authQuerySecret` <br/> _github.com/cloudnative-pg/machinery/pkg/api.LocalObjectReference_ | Credentials of the user for auth query. If specified, automatic CNPG Cluster integration is not triggered. |
| `authQuery` <br/> _string_ | Query used to download password hash. Default: `SELECT usename, passwd FROM public.user_search($1)`. If specified, `authQuerySecret` must be specified and no automatic integration is triggered. |
| `parameters` <br/> _map[string]string_ | Additional parameters for PgBouncer |
| `pg_hba` <br/> _[]string_ | PostgreSQL Host Based Authentication rules to append to `pg_hba.conf` |
| `paused` <br/> _bool_ | If true, PgBouncer will pause new client connections. |

## PluginConfiguration     {#postgresql-cnpg-io-v1-PluginConfiguration}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)
- [ExternalCluster](#postgresql-cnpg-io-v1-ExternalCluster)

<p>PluginConfiguration specifies a plugin that needs to be loaded for cluster reconciliation</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ **[Required]** | Plugin name |
| `enabled` <br/> _bool_ | Whether plugin is enabled |
| `isWALArchiver` <br/> _bool_ | Only one plugin can be WALArchiver. Cannot be active if `.spec.backup.barmanObjectStore` is present. |
| `parameters` <br/> _map[string]string_ | Plugin configuration parameters |

## PluginStatus     {#postgresql-cnpg-io-v1-PluginStatus}

**Appears in:**

- [ClusterStatus](#postgresql-cnpg-io-v1-ClusterStatus)

<p>PluginStatus is the status of a loaded plugin</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ **[Required]** | Name of the plugin |
| `version` <br/> _string_ **[Required]** | Version of the plugin loaded by latest reconciliation |
| `capabilities` <br/> _[]string_ | List of plugin capabilities |
| `operatorCapabilities` <br/> _[]string_ | Plugin capabilities regarding the reconciler |
| `walCapabilities` <br/> _[]string_ | Plugin capabilities regarding WAL management |
| `backupCapabilities` <br/> _[]string_ | Plugin capabilities regarding Backup management |
| `restoreJobHookCapabilities` <br/> _[]string_ | Plugin capabilities regarding RestoreJobHook management |
| `status` <br/> _string_ | Status reported by plugin through SetStatusInCluster interface |

## PodTemplateSpec     {#postgresql-cnpg-io-v1-PodTemplateSpec}

**Appears in:**

- [PoolerSpec](#postgresql-cnpg-io-v1-PoolerSpec)

<p>PodTemplateSpec allows the user to set a template for Pod generation. Cannot use corev1.PodTemplateSpec because generated CRD won't have metadata field.</p>

| Field | Description |
|-------|-------------|
| `metadata` <br/> _Metadata_ | Standard object's metadata. |
| `spec` <br/> _core/v1.PodSpec_ | Specification of desired pod behavior. |

## PodTopologyLabels     {#postgresql-cnpg-io-v1-PodTopologyLabels}

(Alias of `map[string]string`)

**Appears in:**

- [Topology](#postgresql-cnpg-io-v1-Topology)

<p>PodTopologyLabels represent the topology of a Pod. map[labelName]labelValue</p>

## PoolerIntegrations     {#postgresql-cnpg-io-v1-PoolerIntegrations}

**Appears in:**

- [ClusterStatus](#postgresql-cnpg-io-v1-ClusterStatus)

<p>PoolerIntegrations encapsulates needed integration for the poolers referencing the cluster</p>

| Field | Description |
|-------|-------------|
| `pgBouncerIntegration` <br/> _PgBouncerIntegrationStatus_ | No description provided. |

## PoolerMonitoringConfiguration     {#postgresql-cnpg-io-v1-PoolerMonitoringConfiguration}

**Appears in:**

- [PoolerSpec](#postgresql-cnpg-io-v1-PoolerSpec)

<p>PoolerMonitoringConfiguration contains monitoring configuration for a Pooler.</p>

| Field | Description |
|-------|-------------|
| `enablePodMonitor` <br/> _bool_ | Enable or disable `PodMonitor` |
| `podMonitorMetricRelabelings` <br/> _[]prometheus RelabelConfig_ | Metric relabelings for PodMonitor |
| `podMonitorRelabelings` <br/> _[]prometheus RelabelConfig_ | Relabelings for PodMonitor |

## PoolerSecrets     {#postgresql-cnpg-io-v1-PoolerSecrets}

**Appears in:**

- [PoolerStatus](#postgresql-cnpg-io-v1-PoolerStatus)

<p>PoolerSecrets contains versions of all secrets used</p>

| Field | Description |
|-------|-------------|
| `serverTLS` <br/> _SecretVersion_ | The server TLS secret version |
| `serverCA` <br/> _SecretVersion_ | The server CA secret version |
| `clientCA` <br/> _SecretVersion_ | The client CA secret version |
| `pgBouncerSecrets` <br/> _PgBouncerSecrets_ | Version of secrets used by PgBouncer |

## PoolerSpec     {#postgresql-cnpg-io-v1-PoolerSpec}

**Appears in:**

- [Pooler](#postgresql-cnpg-io-v1-Pooler)

<p>PoolerSpec defines the desired state of Pooler</p>

| Field | Description |
|-------|-------------|
| `cluster` <br/> _github.com/cloudnative-pg/machinery/pkg/api.LocalObjectReference_ **[Required]** | Cluster reference the Pooler will work on. Pooler name should not match any cluster name in same namespace. |
| `type` <br/> _PoolerType_ | Type of service to forward traffic to. Default: `rw`. |
| `instances` <br/> _int32_ | Number of replicas desired. Default: 1. |
| `template` <br/> _PodTemplateSpec_ | Template for Pod creation |
| `pgbouncer` <br/> _PgBouncerSpec_ **[Required]** | PgBouncer configuration |
| `deploymentStrategy` <br/> _apps/v1.DeploymentStrategy_ | Deployment strategy for pgbouncer to replace existing pods |
| `monitoring` <br/> _PoolerMonitoringConfiguration_ | Monitoring configuration (Deprecated: will be removed) |
| `serviceTemplate` <br/> _ServiceTemplateSpec_ | Template for Service to be created |

## PoolerStatus     {#postgresql-cnpg-io-v1-PoolerStatus}

**Appears in:**

- [Pooler](#postgresql-cnpg-io-v1-Pooler)

<p>PoolerStatus defines the observed state of Pooler</p>

| Field | Description |
|-------|-------------|
| `secrets` <br/> _PoolerSecrets_ | Resource version of the config object |
| `instances` <br/> _int32_ | Number of pods trying to be scheduled |

## PoolerType     {#postgresql-cnpg-io-v1-PoolerType}

(Alias of `string`)

**Appears in:**

- [PoolerSpec](#postgresql-cnpg-io-v1-PoolerSpec)

<p>PoolerType is the type of the connection pool: `rw` or `ro`.</p>

## PostgresConfiguration     {#postgresql-cnpg-io-v1-PostgresConfiguration}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>PostgresConfiguration defines the PostgreSQL configuration</p>

| Field | Description |
|-------|-------------|
| `parameters` <br/> _map[string]string_ | PostgreSQL configuration options (postgresql.conf) |
| `synchronous` <br/> _SynchronousReplicaConfiguration_ | Configuration of PostgreSQL synchronous replication feature |
| `pg_hba` <br/> _[]string_ | Host Based Authentication rules appended to pg_hba.conf |
| `pg_ident` <br/> _[]string_ | User Name Maps rules appended to pg_ident.conf |
| `syncReplicaElectionConstraint` <br/> _SyncReplicaElectionConstraints_ | Requirements for sync replicas affecting `synchronous_standby_names` |
| `shared_preload_libraries` <br/> _[]string_ | List of shared preload libraries to add |
| `ldap` <br/> _LDAPConfig_ | LDAP authentication configuration |
| `promotionTimeout` <br/> _int32_ | Max seconds to wait when promoting an instance to primary. Default large value (~>1 year seconds). |
| `enableAlterSystem` <br/> _bool_ | If true, user can invoke `ALTER SYSTEM`. Defaults to false. |
| `extensions` <br/> _[]ExtensionConfiguration_ | Configuration of extensions to add |

## PrimaryUpdateMethod     {#postgresql-cnpg-io-v1-PrimaryUpdateMethod}

(Alias of `string`)

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>PrimaryUpdateMethod contains method to use when upgrading primary server as part of rolling updates</p>

## PrimaryUpdateStrategy     {#postgresql-cnpg-io-v1-PrimaryUpdateStrategy}

(Alias of `string`)

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>PrimaryUpdateStrategy contains strategy to follow when upgrading primary server during rolling updates</p>

## Probe     {#postgresql-cnpg-io-v1-Probe}

**Appears in:**

- [LivenessProbe](#postgresql-cnpg-io-v1-LivenessProbe)
- [ProbeWithStrategy](#postgresql-cnpg-io-v1-ProbeWithStrategy)

<p>Probe describes a health check to be performed against a container</p>

| Field | Description |
|-------|-------------|
| `initialDelaySeconds` <br/> _int32_ | Seconds after start before liveness probes initiated |
| `timeoutSeconds` <br/> _int32_ | Seconds after which probe times out. Defaults to 1. |
| `periodSeconds` <br/> _int32_ | How often (seconds) to perform the probe. Default 10 seconds. |
| `successThreshold` <br/> _int32_ | Minimum consecutive successes after failure. Defaults to 1. |
| `failureThreshold` <br/> _int32_ | Minimum consecutive failures after success. Defaults to 3. |
| `terminationGracePeriodSeconds` <br/> _int64_ | Optional duration in seconds for pod to terminate gracefully upon probe failure. |

## ProbeStrategyType     {#postgresql-cnpg-io-v1-ProbeStrategyType}

(Alias of `string`)

**Appears in:**

- [ProbeWithStrategy](#postgresql-cnpg-io-v1-ProbeWithStrategy)

<p>ProbeStrategyType is type of strategy used to declare a PostgreSQL instance ready</p>

## ProbeWithStrategy     {#postgresql-cnpg-io-v1-ProbeWithStrategy}

**Appears in:**

- [ProbesConfiguration](#postgresql-cnpg-io-v1-ProbesConfiguration)

<p>ProbeWithStrategy is configuration of the startup probe</p>

| Field | Description |
|-------|-------------|
| `Probe` <br/> _Probe_ | (Members embedded) Standard probe configuration |
| `type` <br/> _ProbeStrategyType_ | The probe strategy |
| `maximumLag` <br/> _k8s.io/apimachinery/pkg/api/resource.Quantity_ | Lag limit; used only for `streaming` strategy |

## ProbesConfiguration     {#postgresql-cnpg-io-v1-ProbesConfiguration}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>ProbesConfiguration represent configuration for probes to be injected in PostgreSQL Pods</p>

| Field | Description |
|-------|-------------|
| `startup` <br/> _ProbeWithStrategy_ **[Required]** | Startup probe configuration |
| `liveness` <br/> _LivenessProbe_ **[Required]** | Liveness probe configuration |
| `readiness` <br/> _ProbeWithStrategy_ **[Required]** | Readiness probe configuration |

## PublicationReclaimPolicy     {#postgresql-cnpg-io-v1-PublicationReclaimPolicy}

(Alias of `string`)

**Appears in:**

- [PublicationSpec](#postgresql-cnpg-io-v1-PublicationSpec)

<p>PublicationReclaimPolicy defines a policy for end-of-life maintenance of Publications.</p>

## PublicationSpec     {#postgresql-cnpg-io-v1-PublicationSpec}

**Appears in:**

- [Publication](#postgresql-cnpg-io-v1-Publication)

<p>PublicationSpec defines desired state of Publication</p>

| Field | Description |
|-------|-------------|
| `cluster` <br/> _core/v1.LocalObjectReference_ **[Required]** | Name of PostgreSQL cluster identifying the "publisher" |
| `name` <br/> _string_ **[Required]** | Name of the publication inside PostgreSQL |
| `dbname` <br/> _string_ **[Required]** | Database name where publication will be installed in publisher cluster |
| `parameters` <br/> _map[string]string_ | Publication parameters part of `WITH` clause for `CREATE PUBLICATION` |
| `target` <br/> _PublicationTarget_ **[Required]** | Target of the publication as expected by `CREATE PUBLICATION` |
| `publicationReclaimPolicy` <br/> _PublicationReclaimPolicy_ | Policy for end-of-life maintenance of this publication |

## PublicationStatus     {#postgresql-cnpg-io-v1-PublicationStatus}

**Appears in:**

- [Publication](#postgresql-cnpg-io-v1-Publication)

<p>PublicationStatus defines the observed state of Publication</p>

| Field | Description |
|-------|-------------|
| `observedGeneration` <br/> _int64_ | Sequence number representing latest desired state that was synchronized |
| `applied` <br/> _bool_ | True if the publication was reconciled correctly |
| `message` <br/> _string_ | Reconciliation output message |

## PublicationTarget     {#postgresql-cnpg-io-v1-PublicationTarget}

**Appears in:**

- [PublicationSpec](#postgresql-cnpg-io-v1-PublicationSpec)

<p>PublicationTarget is what this publication should publish</p>

| Field | Description |
|-------|-------------|
| `allTables` <br/> _bool_ | Replicates changes for all tables in database, including future tables (`FOR ALL TABLES`) |
| `objects` <br/> _[]PublicationTargetObject_ | Specific schema objects to publish |

## PublicationTargetObject     {#postgresql-cnpg-io-v1-PublicationTargetObject}

**Appears in:**

- [PublicationTarget](#postgresql-cnpg-io-v1-PublicationTarget)

<p>PublicationTargetObject is an object to publish</p>

| Field | Description |
|-------|-------------|
| `tablesInSchema` <br/> _string_ | Replicates changes for all tables in specified schemas (`FOR TABLES IN SCHEMA`) |
| `table` <br/> _PublicationTargetTable_ | Specifies a list of tables to add to the publication (`FOR TABLE`) |

## PublicationTargetTable     {#postgresql-cnpg-io-v1-PublicationTargetTable}

**Appears in:**

- [PublicationTargetObject](#postgresql-cnpg-io-v1-PublicationTargetObject)

<p>PublicationTargetTable is a table to publish</p>

| Field | Description |
|-------|-------------|
| `only` <br/> _bool_ | Whether to limit to the table only or include all descendants |
| `name` <br/> _string_ **[Required]** | Table name |
| `schema` <br/> _string_ | Schema name |
| `columns` <br/> _[]string_ | Columns to publish |

## RecoveryTarget     {#postgresql-cnpg-io-v1-RecoveryTarget}

**Appears in:**

- [BootstrapRecovery](#postgresql-cnpg-io-v1-BootstrapRecovery)

<p>RecoveryTarget allows configuring where recovery stops. All target options except TargetTLI are mutually exclusive.</p>

| Field | Description |
|-------|-------------|
| `backupID` <br/> _string_ | ID of the backup from which to start recovery. If empty, operator auto-detects backup. |
| `targetTLI` <br/> _string_ | Target timeline (`latest` or positive integer) |
| `targetXID` <br/> _string_ | Target transaction ID |
| `targetName` <br/> _string_ | Target name created with `pg_create_restore_point` |
| `targetLSN` <br/> _string_ | Target LSN (Log Sequence Number) |
| `targetTime` <br/> _string_ | Target time as RFC3339 timestamp |
| `targetImmediate` <br/> _bool_ | End recovery as soon as consistent state is reached |
| `exclusive` <br/> _bool_ | If omitted, defaults to false so `recovery_target_inclusive` will be true |

## ReplicaClusterConfiguration     {#postgresql-cnpg-io-v1-ReplicaClusterConfiguration}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>ReplicaClusterConfiguration encapsulates configuration of a replica cluster</p>

| Field | Description |
|-------|-------------|
| `self` <br/> _string_ | Name of this cluster used to determine if this is primary or replica |
| `primary` <br/> _string_ | Which Cluster is defined to be the primary in distributed PostgreSQL cluster |
| `source` <br/> _string_ **[Required]** | Name of the external cluster which is the replication origin |
| `enabled` <br/> _bool_ | If enabled, cluster will be a replica of existing cluster |
| `promotionToken` <br/> _string_ | Demotion token generated by external cluster used to check promotion requirements |
| `minApplyDelay` <br/> _meta/v1.Duration_ | When enabled, replay transactions only when system time is at least configured time past commit time |

## ReplicationSlotsConfiguration     {#postgresql-cnpg-io-v1-ReplicationSlotsConfiguration}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>ReplicationSlotsConfiguration encapsulates configuration of replication slots</p>

| Field | Description |
|-------|-------------|
| `highAvailability` <br/> _ReplicationSlotsHAConfiguration_ | Replication slots for high availability configuration |
| `updateInterval` <br/> _int_ | Standby updates status of local replication slots every `updateInterval` seconds (default 30) |
| `synchronizeReplicas` <br/> _SynchronizeReplicasConfiguration_ | Configures synchronization of user-defined physical replication slots |

## ReplicationSlotsHAConfiguration     {#postgresql-cnpg-io-v1-ReplicationSlotsHAConfiguration}

**Appears in:**

- [ReplicationSlotsConfiguration](#postgresql-cnpg-io-v1-ReplicationSlotsConfiguration)

<p>ReplicationSlotsHAConfiguration encapsulates configuration of replication slots automatically managed by operator for HA streaming replication</p>

| Field | Description |
|-------|-------------|
| `enabled` <br/> _bool_ | If enabled (default), operator manages replication slots on primary and uses them for streaming replication. |
| `slotPrefix` <br/> _string_ | Prefix for replication slots managed by operator for HA. Lowercase letters, numbers, underscore only. Default `_cnpg_`. |
| `synchronizeLogicalDecoding` <br/> _bool_ | When enabled, operator manages synchronization of logical decoding slots across HA clusters. Requires PostgreSQL >=17 or pg_failover_slots extension for &lt; 17. |

## RoleConfiguration     {#postgresql-cnpg-io-v1-RoleConfiguration}

**Appears in:**

- [ManagedConfiguration](#postgresql-cnpg-io-v1-ManagedConfiguration)

<p>RoleConfiguration is the representation of a PostgreSQL role with Ensure field specifying presence/absence</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ **[Required]** | Name of the role |
| `comment` <br/> _string_ | Description of the role |
| `ensure` <br/> _EnsureOption_ | Ensure role is `present` or `absent` (default `present`) |
| `passwordSecret` <br/> _github.com/cloudnative-pg/machinery/pkg/api.LocalObjectReference_ | Secret containing role password. If null, password ignored unless DisablePassword set |
| `connectionLimit` <br/> _int64_ | If role can log in, max concurrent connections. `-1` default = no limit |
| `validUntil` <br/> _meta/v1.Time_ | Date/time after which the role's password is no longer valid |
| `inRoles` <br/> _[]string_ | Roles this role will be added as member of |
| `inherit` <br/> _bool_ | Whether role inherits privileges of roles it's a member of (default `true`) |
| `disablePassword` <br/> _bool_ | Indicates role's password should be set to NULL in Postgres |
| `superuser` <br/> _bool_ | Whether role is a superuser (dangerous). Default `false`. |
| `createdb` <br/> _bool_ | Whether role can create databases. Default `false`. |
| `createrole` <br/> _bool_ | Whether role can create/alter/drop roles. Default `false`. |
| `login` <br/> _bool_ | Whether role is allowed to log in. Default `false`. |
| `replication` <br/> _bool_ | Whether role is a replication role (privileged). Default `false`. |
| `bypassrls` <br/> _bool_ | Whether role bypasses row-level security. Default `false`. |

## SQLRefs     {#postgresql-cnpg-io-v1-SQLRefs}

**Appears in:**

- [BootstrapInitDB](#postgresql-cnpg-io-v1-BootstrapInitDB)

<p>SQLRefs holds references to ConfigMaps or Secrets containing SQL files. Secrets processed first, then ConfigMaps.</p>

| Field | Description |
|-------|-------------|
| `secretRefs` <br/> _[]github.com/cloudnative-pg/machinery/pkg/api.SecretKeySelector_ | List of references to Secrets |
| `configMapRefs` <br/> _[]github.com/cloudnative-pg/machinery/pkg/api.ConfigMapKeySelector_ | List of references to ConfigMaps |

## ScheduledBackupSpec     {#postgresql-cnpg-io-v1-ScheduledBackupSpec}

**Appears in:**

- [ScheduledBackup](#postgresql-cnpg-io-v1-ScheduledBackup)

<p>ScheduledBackupSpec defines the desired state of ScheduledBackup</p>

| Field | Description |
|-------|-------------|
| `suspend` <br/> _bool_ | If this backup is suspended |
| `immediate` <br/> _bool_ | If the first backup should start immediately after creation |
| `schedule` <br/> _string_ **[Required]** | Schedule string with seconds specifier; see https://pkg.go.dev/github.com/robfig/cron#hdr-CRON_Expression_Format |
| `cluster` <br/> _github.com/cloudnative-pg/machinery/pkg/api.LocalObjectReference_ **[Required]** | The cluster to backup |
| `backupOwnerReference` <br/> _string_ | Which ownerReference should be put inside created backup resources: `none`, `self`, or `cluster` |
| `target` <br/> _BackupTarget_ | Policy to decide which instance should perform backup |
| `method` <br/> _BackupMethod_ | Backup method: `barmanObjectStore`, `volumeSnapshot`, or `plugin` (default `barmanObjectStore`) |
| `pluginConfiguration` <br/> _BackupPluginConfiguration_ | Configuration parameters for backup plugin |
| `online` <br/> _bool_ | Whether volume snapshot backups are online/hot (`true` default) or offline/cold (`false`) |
| `onlineConfiguration` <br/> _OnlineConfiguration_ | Configuration parameters for online/hot volume snapshot backups |

## ScheduledBackupStatus     {#postgresql-cnpg-io-v1-ScheduledBackupStatus}

**Appears in:**

- [ScheduledBackup](#postgresql-cnpg-io-v1-ScheduledBackup)

<p>ScheduledBackupStatus defines the observed state of ScheduledBackup</p>

| Field | Description |
|-------|-------------|
| `lastCheckTime` <br/> _meta/v1.Time_ | Latest time the schedule was checked |
| `lastScheduleTime` <br/> _meta/v1.Time_ | Last time backup was successfully scheduled |
| `nextScheduleTime` <br/> _meta/v1.Time_ | Next time a backup will run |

## SchemaSpec     {#postgresql-cnpg-io-v1-SchemaSpec}

**Appears in:**

- [DatabaseSpec](#postgresql-cnpg-io-v1-DatabaseSpec)

<p>SchemaSpec configures a schema in a database</p>

| Field | Description |
|-------|-------------|
| `DatabaseObjectSpec` <br/> _DatabaseObjectSpec_ | (Members embedded) Common fields |
| `owner` <br/> _string_ **[Required]** | Role name who owns the schema (maps to `AUTHORIZATION` in `CREATE SCHEMA`) |

## SecretVersion     {#postgresql-cnpg-io-v1-SecretVersion}

**Appears in:**

- [PgBouncerSecrets](#postgresql-cnpg-io-v1-PgBouncerSecrets)
- [PoolerSecrets](#postgresql-cnpg-io-v1-PoolerSecrets)

<p>SecretVersion contains a secret name and its ResourceVersion</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ | The name of the secret |
| `version` <br/> _string_ | The ResourceVersion of the secret |

## SecretsResourceVersion     {#postgresql-cnpg-io-v1-SecretsResourceVersion}

**Appears in:**

- [ClusterStatus](#postgresql-cnpg-io-v1-ClusterStatus)

<p>SecretsResourceVersion is the resource versions of the secrets managed by the operator</p>

| Field | Description |
|-------|-------------|
| `superuserSecretVersion` <br/> _string_ | Resource version of the `postgres` user secret |
| `replicationSecretVersion` <br/> _string_ | Resource version of the `streaming_replica` user secret |
| `applicationSecretVersion` <br/> _string_ | Resource version of the `app` user secret |
| `managedRoleSecretVersion` <br/> _map[string]string_ | Resource versions of managed roles secrets |
| `caSecretVersion` <br/> _string_ | Unused. Retained for compatibility |
| `clientCaSecretVersion` <br/> _string_ | Resource version of client CA secret |
| `serverCaSecretVersion` <br/> _string_ | Resource version of server CA secret |
| `serverSecretVersion` <br/> _string_ | Resource version of server secret |
| `barmanEndpointCA` <br/> _string_ | Resource version of Barman Endpoint CA if provided |
| `externalClusterSecretVersion` <br/> _map[string]string_ | Resource versions of external cluster secrets |
| `metrics` <br/> _map[string]string_ | Map with versions of all secrets used to pass metrics |

## ServerSpec     {#postgresql-cnpg-io-v1-ServerSpec}

**Appears in:**

- [DatabaseSpec](#postgresql-cnpg-io-v1-DatabaseSpec)

<p>ServerSpec configures a server of a foreign data wrapper</p>

| Field | Description |
|-------|-------------|
| `DatabaseObjectSpec` <br/> _DatabaseObjectSpec_ | (Members embedded) Common fields |
| `fdw` <br/> _string_ **[Required]** | Name of the Foreign Data Wrapper (FDW) |
| `options` <br/> _[]OptionSpec_ | Options specifying configuration for the server |
| `usage` <br/> _[]UsageSpec_ | List of roles for which `USAGE` privileges on server are granted/revoked |

## ServiceAccountTemplate     {#postgresql-cnpg-io-v1-ServiceAccountTemplate}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>ServiceAccountTemplate contains template to generate service accounts</p>

| Field | Description |
|-------|-------------|
| `metadata` <br/> _Metadata_ **[Required]** | Metadata to be used for generated service account |

## ServiceSelectorType     {#postgresql-cnpg-io-v1-ServiceSelectorType}

(Alias of `string`)

**Appears in:**

- [ManagedService](#postgresql-cnpg-io-v1-ManagedService)
- [ManagedServices](#postgresql-cnpg-io-v1-ManagedServices)

<p>ServiceSelectorType describes valid values for generating service selectors (`rw`, `r`, `ro`).</p>

## ServiceTemplateSpec     {#postgresql-cnpg-io-v1-ServiceTemplateSpec}

**Appears in:**

- [ManagedService](#postgresql-cnpg-io-v1-ManagedService)
- [PoolerSpec](#postgresql-cnpg-io-v1-PoolerSpec)

<p>ServiceTemplateSpec allows user to set a template for Service generation.</p>

| Field | Description |
|-------|-------------|
| `metadata` <br/> _Metadata_ | Standard object's metadata. |
| `spec` <br/> _core/v1.ServiceSpec_ | Specification of desired service behavior. |

## ServiceUpdateStrategy     {#postgresql-cnpg-io-v1-ServiceUpdateStrategy}

(Alias of `string`)

**Appears in:**

- [ManagedService](#postgresql-cnpg-io-v1-ManagedService)

<p>ServiceUpdateStrategy describes how changes to managed services should be handled</p>

## SnapshotOwnerReference     {#postgresql-cnpg-io-v1-SnapshotOwnerReference}

(Alias of `string`)

**Appears in:**

- [VolumeSnapshotConfiguration](#postgresql-cnpg-io-v1-VolumeSnapshotConfiguration)

<p>SnapshotOwnerReference defines reference type for owner of snapshot.</p>

## SnapshotType     {#postgresql-cnpg-io-v1-SnapshotType}

(Alias of `string`)

**Appears in:**

- [Import](#postgresql-cnpg-io-v1-Import)

<p>SnapshotType is a type of allowed import</p>

## StorageConfiguration     {#postgresql-cnpg-io-v1-StorageConfiguration}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)
- [TablespaceConfiguration](#postgresql-cnpg-io-v1-TablespaceConfiguration)

<p>StorageConfiguration is used to create and reconcile PVCs for WAL, PGDATA, or tablespaces</p>

| Field | Description |
|-------|-------------|
| `storageClass` <br/> _string_ | StorageClass to use for PVCs. If not specified, generated PVCs use default storage class |
| `size` <br/> _string_ | Size of storage. Required if not in PVC template. Cannot be decreased. |
| `resizeInUseVolumes` <br/> _bool_ | Resize existing PVCs (defaults to true) |
| `pvcTemplate` <br/> _core/v1.PersistentVolumeClaimSpec_ | Template used to generate PersistentVolumeClaim |

## SubscriptionReclaimPolicy     {#postgresql-cnpg-io-v1-SubscriptionReclaimPolicy}

(Alias of `string`)

**Appears in:**

- [SubscriptionSpec](#postgresql-cnpg-io-v1-SubscriptionSpec)

<p>SubscriptionReclaimPolicy describes a policy for end-of-life maintenance of Subscriptions.</p>

## SubscriptionSpec     {#postgresql-cnpg-io-v1-SubscriptionSpec}

**Appears in:**

- [Subscription](#postgresql-cnpg-io-v1-Subscription)

<p>SubscriptionSpec defines desired state of Subscription</p>

| Field | Description |
|-------|-------------|
| `cluster` <br/> _core/v1.LocalObjectReference_ **[Required]** | Name of PostgreSQL cluster identifying the "subscriber" |
| `name` <br/> _string_ **[Required]** | Name of subscription inside PostgreSQL |
| `dbname` <br/> _string_ **[Required]** | Database name where publication will be installed in subscriber cluster |
| `parameters` <br/> _map[string]string_ | Subscription parameters included in `WITH` clause for `CREATE SUBSCRIPTION` |
| `publicationName` <br/> _string_ **[Required]** | Name of the publication inside the publisher |
| `publicationDBName` <br/> _string_ | Database name containing publication on external cluster; defaults to external cluster definition |
| `externalClusterName` <br/> _string_ **[Required]** | Name of external cluster with publication (publisher) |
| `subscriptionReclaimPolicy` <br/> _SubscriptionReclaimPolicy_ | Policy for end-of-life maintenance of this subscription |

## SubscriptionStatus     {#postgresql-cnpg-io-v1-SubscriptionStatus}

**Appears in:**

- [Subscription](#postgresql-cnpg-io-v1-Subscription)

<p>SubscriptionStatus defines observed state of Subscription</p>

| Field | Description |
|-------|-------------|
| `observedGeneration` <br/> _int64_ | Sequence number representing latest desired state synchronized |
| `applied` <br/> _bool_ | True if subscription was reconciled correctly |
| `message` <br/> _string_ | Reconciliation output message |

## SwitchReplicaClusterStatus     {#postgresql-cnpg-io-v1-SwitchReplicaClusterStatus}

**Appears in:**

- [ClusterStatus](#postgresql-cnpg-io-v1-ClusterStatus)

<p>SwitchReplicaClusterStatus contains statuses regarding switch of a cluster to a replica cluster</p>

| Field | Description |
|-------|-------------|
| `inProgress` <br/> _bool_ | Indicates if there is an ongoing switch to replica cluster |

## SyncReplicaElectionConstraints     {#postgresql-cnpg-io-v1-SyncReplicaElectionConstraints}

**Appears in:**

- [PostgresConfiguration](#postgresql-cnpg-io-v1-PostgresConfiguration)

<p>SyncReplicaElectionConstraints contains constraints for sync replicas election. Two instances are considered in same location if all label values match.</p>

| Field | Description |
|-------|-------------|
| `nodeLabelsAntiAffinity` <br/> _[]string_ | List of node label values to extract and compare to evaluate topology |
| `enabled` <br/> _bool_ **[Required]** | Enables constraints for sync replicas |

## SynchronizeReplicasConfiguration     {#postgresql-cnpg-io-v1-SynchronizeReplicasConfiguration}

**Appears in:**

- [ReplicationSlotsConfiguration](#postgresql-cnpg-io-v1-ReplicationSlotsConfiguration)

<p>SynchronizeReplicasConfiguration contains configuration for synchronization of user-defined physical replication slots</p>

| Field | Description |
|-------|-------------|
| `enabled` <br/> _bool_ **[Required]** | When true, every replication slot on primary is synchronized on each standby |
| `excludePatterns` <br/> _[]string_ | Regular expression patterns to exclude certain replication slot names |

## SynchronousReplicaConfiguration     {#postgresql-cnpg-io-v1-SynchronousReplicaConfiguration}

**Appears in:**

- [PostgresConfiguration](#postgresql-cnpg-io-v1-PostgresConfiguration)

<p>SynchronousReplicaConfiguration contains configuration of PostgreSQL synchronous replication. Consider `.spec.minSyncReplicas` and `.spec.maxSyncReplicas` as well.</p>

| Field | Description |
|-------|-------------|
| `method` <br/> _SynchronousReplicaConfigurationMethod_ **[Required]** | Method to select synchronous standbys: `any` (quorum) or `first` (priority) |
| `number` <br/> _int_ **[Required]** | Number of synchronous standby servers transactions must wait for |
| `maxStandbyNamesFromCluster` <br/> _int_ | Max number of local cluster pods automatically included in `synchronous_standby_names` |
| `standbyNamesPre` <br/> _[]string_ | User-defined application names to add before local cluster pods |
| `standbyNamesPost` <br/> _[]string_ | User-defined application names to add after local cluster pods |
| `dataDurability` <br/> _DataDurabilityLevel_ | If `required`, strict durability enforced; if `preferred`, durability relaxed when replicas unavailable |
| `failoverQuorum` <br/> _bool_ | Enables quorum-based check before failover |

## SynchronousReplicaConfigurationMethod     {#postgresql-cnpg-io-v1-SynchronousReplicaConfigurationMethod}

(Alias of `string`)

**Appears in:**

- [SynchronousReplicaConfiguration](#postgresql-cnpg-io-v1-SynchronousReplicaConfiguration)

<p>Configures whether to use quorum-based replication or a priority list</p>

## TablespaceConfiguration     {#postgresql-cnpg-io-v1-TablespaceConfiguration}

**Appears in:**

- [ClusterSpec](#postgresql-cnpg-io-v1-ClusterSpec)

<p>TablespaceConfiguration is configuration of a tablespace and includes storage specification</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ **[Required]** | The name of the tablespace |
| `storage` <br/> _StorageConfiguration_ **[Required]** | Storage configuration for the tablespace |
| `owner` <br/> _DatabaseRoleRef_ | Owner is PostgreSQL user owning the tablespace |
| `temporary` <br/> _bool_ | If true, tablespace added as `temp_tablespaces` entry in PostgreSQL |

## TablespaceState     {#postgresql-cnpg-io-v1-TablespaceState}

**Appears in:**

- [ClusterStatus](#postgresql-cnpg-io-v1-ClusterStatus)

<p>TablespaceState represents state of a tablespace in a cluster</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ **[Required]** | Name of the tablespace |
| `owner` <br/> _string_ | Owner of the tablespace |
| `state` <br/> _TablespaceStatus_ **[Required]** | Latest reconciliation state |
| `error` <br/> _string_ | Reconciliation error, if any |

## TablespaceStatus     {#postgresql-cnpg-io-v1-TablespaceStatus}

(Alias of `string`)

**Appears in:**

- [TablespaceState](#postgresql-cnpg-io-v1-TablespaceState)

<p>TablespaceStatus represents status of a tablespace in the cluster</p>

## Topology     {#postgresql-cnpg-io-v1-Topology}

**Appears in:**

- [ClusterStatus](#postgresql-cnpg-io-v1-ClusterStatus)

<p>Topology contains the cluster topology</p>

| Field | Description |
|-------|-------------|
| `instances` <br/> _map[PodName]PodTopologyLabels_ | Instances contains pod topology of the instances |
| `nodesUsed` <br/> _int32_ | Count of distinct nodes accommodating instances. `1` implies all instances on single node (no HA). |
| `successfullyExtracted` <br/> _bool_ | Indicates if topology data was extracted successfully; useful for fallback in sync replica election |

## UsageSpec     {#postgresql-cnpg-io-v1-UsageSpec}

**Appears in:**

- [FDWSpec](#postgresql-cnpg-io-v1-FDWSpec)
- [ServerSpec](#postgresql-cnpg-io-v1-ServerSpec)

<p>UsageSpec configures a usage for a foreign data wrapper</p>

| Field | Description |
|-------|-------------|
| `name` <br/> _string_ **[Required]** | Name of the usage |
| `type` <br/> _UsageSpecType_ | Type of usage |

## UsageSpecType     {#postgresql-cnpg-io-v1-UsageSpecType}

(Alias of `string`)

**Appears in:**

- [UsageSpec](#postgresql-cnpg-io-v1-UsageSpec)

<p>UsageSpecType describes the type of usage specified in `usage` field of `Database` object.</p>

## VolumeSnapshotConfiguration     {#postgresql-cnpg-io-v1-VolumeSnapshotConfiguration}

**Appears in:**

- [BackupConfiguration](#postgresql-cnpg-io-v1-BackupConfiguration)

<p>VolumeSnapshotConfiguration represents configuration for execution of snapshot backups.</p>

| Field | Description |
|-------|-------------|
| `labels` <br/> _map[string]string_ | Labels key-value pairs added to `.metadata.labels` of snapshot resources |
| `annotations` <br/> _map[string]string_ | Annotations added to `.metadata.annotations` of snapshot resources |
| `className` <br/> _string_ | Snapshot Class to use for PG_DATA PersistentVolumeClaim; default for other types if no specific class present |
| `walClassName` <br/> _string_ | Snapshot Class to use for PG_WAL PersistentVolumeClaim |
| `tablespaceClassName` <br/> _map[string]string_ | Snapshot Class to use for tablespaces; defaults to PGDATA Snapshot Class if set |
| `snapshotOwnerReference` <br/> _SnapshotOwnerReference_ | Indicates type of owner reference snapshot should have |
| `online` <br/> _bool_ | Whether volume snapshot backups are online/hot (`true` default) or offline/cold (`false`) |
| `onlineConfiguration` <br/> _OnlineConfiguration_ | Configuration parameters to control online/hot volume snapshot backups |

