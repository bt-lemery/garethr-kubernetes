
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_allowed_host_path).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        
        path_prefix: instance.pathPrefix.respond_to?(:to_hash) ? instance.pathPrefix.to_hash : instance.pathPrefix,
        
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_allowed_host_path #{name}")
    create_instance_of('allowed_host_path', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('allowed_host_path', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_allowed_host_path #{name}")
    destroy_instance_of('allowed_host_path', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('allowed_host_path')
  end

  def build_params
    params = {
    
      
        pathPrefix: resource[:path_prefix],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
