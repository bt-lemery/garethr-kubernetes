
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_downward_api_projection).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        items: instance.items.respond_to?(:to_hash) ? instance.items.to_hash : instance.items,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_downward_api_projection #{name}")
    create_instance_of('downward_api_projection', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('downward_api_projection', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_downward_api_projection #{name}")
    destroy_instance_of('downward_api_projection', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('downward_api_projection')
  end

  def build_params
    params = {
    
      
        items: resource[:items],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
