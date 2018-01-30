
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_policy_rule).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        
        verbs: hash_arrays(instance.verbs),
        
      
    
      
        
        api_groups: hash_arrays(instance.apiGroups),
        
      
    
      
        
        resources: hash_arrays(instance.resources),
        
      
    
      
        
        resource_names: hash_arrays(instance.resourceNames),
        
      
    
      
        
        non_resource_ur_ls: hash_arrays(instance.nonResourceURLs),
        
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_policy_rule #{name}")
    create_instance_of('policy_rule', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('policy_rule', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_policy_rule #{name}")
    destroy_instance_of('policy_rule', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('policy_rule')
  end

  def build_params
    params = {
    
      
        verbs: resource[:verbs],
      
    
      
        apiGroups: resource[:api_groups],
      
    
      
        resources: resource[:resources],
      
    
      
        resourceNames: resource[:resource_names],
      
    
      
        nonResourceURLs: resource[:non_resource_ur_ls],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
