
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_ingress).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
    
      
    
      
        metadata: instance.metadata.respond_to?(:to_hash) ? instance.metadata.to_hash : instance.metadata,
      
    
      
        spec: instance.spec.respond_to?(:to_hash) ? instance.spec.to_hash : instance.spec,
      
    
      
        status: instance.status.respond_to?(:to_hash) ? instance.status.to_hash : instance.status,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_ingress #{name}")
    create_instance_of('ingress', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('ingress', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_ingress #{name}")
    destroy_instance_of('ingress', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('ingresse')
  end

  def build_params
    params = {
    
      
    
      
    
      
        metadata: resource[:metadata],
      
    
      
        spec: resource[:spec],
      
    
      
        status: resource[:status],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
