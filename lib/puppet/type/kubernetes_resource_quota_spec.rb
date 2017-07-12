
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_resource_quota_spec) do
  
  @doc = "ResourceQuotaSpec defines the desired hard limits to enforce for Quota."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the resource_quota_spec.'
  end
  
    
      newproperty(:hard) do
        
        desc "Hard is the set of desired hard limits for each named resource. More info: https://git.k8s.io/community/contributors/design-proposals/admission_control_resource_quota.md"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:scopes) do
        
        desc "A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
