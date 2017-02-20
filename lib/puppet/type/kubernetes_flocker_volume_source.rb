
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_flocker_volume_source) do
  
  @doc = "Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the flocker_volume_source.'
  end
  
    
      newproperty(:dataset_name) do
        
        desc "Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:dataset_uuid) do
        
        desc "UUID of the dataset. This is unique identifier of a Flocker dataset"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
