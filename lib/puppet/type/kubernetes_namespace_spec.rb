
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_namespace_spec) do
  
  @doc = "NamespaceSpec describes the attributes on a Namespace."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the namespace_spec.'
  end
  
    
      newproperty(:finalizers) do
        
        desc "Finalizers is an opaque list of values that must be empty to permanently remove object from storage. More info: https://git.k8s.io/community/contributors/design-proposals/namespaces.md#finalizers"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
