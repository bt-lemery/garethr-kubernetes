
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_secret_reference).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        name: instance.name.respond_to?(:to_hash) ? instance.name.to_hash : instance.name,
      
    
      
        namespace: instance.namespace.respond_to?(:to_hash) ? instance.namespace.to_hash : instance.namespace,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_secret_reference #{name}")
    create_instance_of('secret_reference', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('secret_reference', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_secret_reference #{name}")
    destroy_instance_of('secret_reference', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('secret_reference')
  end

  def build_params
    params = {
    
      
        name: resource[:name],
      
    
      
        namespace: resource[:namespace],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
