
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_container_image) do
  
  @doc = "Describe a container image"
  

  ensurable

  
  validate do
    required_properties = [
    
      :names,
    
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[property].nil? and self.provider.send(property) == :absent
        fail "You must provide a #{property}"
      end
    end
  end
  

  newparam(:name, namevar: true) do
    desc 'Name of the container_image.'
  end
  
    
      newproperty(:names) do
        
        desc "Names by which this image is known. e.g. ['gcr.io/google_containers/hyperkube:v1.0.7', 'dockerhub.io/google_containers/hyperkube:v1.0.7']"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:size_bytes) do
        
        desc "The size of the image in bytes."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
