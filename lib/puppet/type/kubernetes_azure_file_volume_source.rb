
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_azure_file_volume_source) do
  
  @doc = "AzureFile represents an Azure File Service mount on the host and bind mount to the pod."
  

  ensurable

  
  validate do
    required_properties = [
    
      secret_name,
    
      share_name,
    
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[property].nil? and self.provider.send(property) == :absent
        fail "You must provide a #{property}"
      end
    end
  end
  

  newparam(:name, namevar: true) do
    desc 'Name of the azure_file_volume_source.'
  end
  
    
      newproperty(:secret_name) do
        
        desc "the name of secret that contains Azure Storage Account Name and Key"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:share_name) do
        
        desc "Share Name"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:read_only) do
        
        desc "Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
