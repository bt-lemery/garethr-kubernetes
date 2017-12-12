
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_node_config_source).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
    
      
    
      
        config_map_ref: instance.configMapRef.respond_to?(:to_hash) ? instance.configMapRef.to_hash : instance.configMapRef,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_node_config_source #{name}")
    create_instance_of('node_config_source', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('node_config_source', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_node_config_source #{name}")
    destroy_instance_of('node_config_source', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('node_config_source')
  end

  def build_params
    params = {
    
      
    
      
    
      
        configMapRef: resource[:config_map_ref],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
