name 'lamp_customers'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures lamp_customers'
long_description 'Installs/Configures lamp_customers'
version '0.1.0'
chef_version '>= 12.7' if respond_to?(:chef_version)
issues_url 'https://github.com/learn-chef/lamp_customers/issues' if respond_to?(:issues_url)
source_url 'https://github.com/learn-chef/lamp_customers' if respond_to?(:source_url)
supports 'ubuntu'

depends 'lamp'
