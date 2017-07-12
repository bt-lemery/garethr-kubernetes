
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_container_image).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        names: instance.names.respond_to?(:to_hash) ? instance.names.to_hash : instance.names,
      
    
      
        size_bytes: instance.sizeBytes.respond_to?(:to_hash) ? instance.sizeBytes.to_hash : instance.sizeBytes,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_container_image #{name}")
    create_instance_of('container_image', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('container_image', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_container_image #{name}")
    destroy_instance_of('container_image', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('container_image')
  end

  def build_params
    params = {
    
      
        names: resource[:names],
      
    
      
        sizeBytes: resource[:size_bytes],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
