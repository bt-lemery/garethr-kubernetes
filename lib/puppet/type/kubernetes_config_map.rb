
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_config_map) do
  
  @doc = "ConfigMap holds configuration data for pods to consume."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the config_map.'
  end
  
    
  
    
  
    
      newproperty(:metadata) do
        
        desc "Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:data) do
        
        desc "Data contains the configuration data. Each key must consist of alphanumeric characters, '-', '_' or '.'."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
