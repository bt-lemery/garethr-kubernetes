
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_pod_template_list) do
  
  @doc = "PodTemplateList is a list of PodTemplates."
  

  ensurable

  
  validate do
    required_properties = [
    
      items,
    
    ]
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[property].nil? and self.provider.send(property) == :absent
        fail "You must provide a #{property}"
      end
    end
  end
  

  newparam(:name, namevar: true) do
    desc 'Name of the pod_template_list.'
  end
  
    
  
    
  
    
      newproperty(:metadata) do
        
        desc "Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#types-kinds"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:items) do
        
        desc "List of pod templates"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
