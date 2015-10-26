log_level                :info
log_location             STDOUT
node_name                'devdazed'
client_key               '/Users/rbradberry/.chef/devdazed.pem'
validation_key           '/Users/rbradberry/.chef/simplereach-validator.pem'
validation_client_name   'simplereach-validator'
chef_server_url          'https://api.opscode.com/organizations/simplereach'
cache_type               'BasicFile'

# Cookbook specific options
cookbook_path            [ '/Users/rbradberry/Projects/simplereach/chef/cookbooks' ]
cookbook_copyright       'SimpleReach, Inc'
cookbook_email           'rbradberry@simplereach.com'
cookbook_license         'none'
cache_options( :path => '/Users/rbradberry/.chef/checksums' )

# Knife AWS settings
knife[:aws_access_key_id] = ENV['AWS_ACCESS_KEY_ID']
knife[:aws_secret_access_key] = ENV['AWS_SECRET_ACCESS_KEY']
knife[:aws_ssh_key_id] = 'sr_2011_jan'
knife[:flavor] = 'c1.medium'
knife[:region] = 'us-east-1'
knife[:availability_zone] = 'us-east-1a'

# Other knife default settings
knife[:bootstrap_version] = "11.18.12"
knife[:ssh_attribute]     = "fqdn"
