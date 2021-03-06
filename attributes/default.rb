### Main attributes ###
default['mapr']['cluster_name'] = 'default-cluster'
default['mapr']['core']['version'] = '6.0.1'
default['mapr']['expansionpack']['version'] = '5.0'

default['mapr']['user'] = 'mapr'
default['mapr']['group'] = 'mapr'

### Repositories attributes ###
base_url = 'http://package.mapr.com/releases/'

default['mapr']['repositories']['core_url'] = ::File.join(
  base_url,
  "v#{node['mapr']['core']['version']}",
  'redhat',
)

default['mapr']['repositories']['gpg_url'] = ::File.join(
  base_url,
  'pub/maprgpg.key',
)

default['mapr']['repositories']['expansionpack_url'] = ::File.join(
  base_url,
  'MEP',
  "MEP-#{node['mapr']['expansionpack']['version']}",
  'redhat',
)

### Java Attributes ###
default['java']['install_flavor'] = 'openjdk'
default['java']['jdk_version'] = '8'

### Prerequisites ###
default['mapr']['prerequisite']['packages'] = %w[
  MySQL-python
]

## Sysctl ##
default['mapr']['sysctl']['vm.swappiness'] = 10
default['mapr']['sysctl']['net.ipv4.tcp_retries2'] = 5
default['mapr']['sysctl']['vm.overcommit_memory'] = 0

### Core attributes
default['mapr']['core']['packages'] = %w[
  mapr-core
  mapr-core-internal
]

### Zookeeper Attributes ###
default['mapr']['zookeeper']['datadir'] = '/opt/mapr/zkdata'

### Compute Attributes ###
default['mapr']['compute']['packages'] = %w[
  mapr-mapreduce2
  mapr-nodemanager
]

### NFS Attributes ###
default['mapr']['nfs']['packages'] = %w[
  mapr-nfs
  nfs-utils
  rpcbind
]
default['mapr']['nfs']['mount_options'] = %w[
  nolock
  nfsvers=3
]

### CLDB attributes ###

### MCS attributes ###
