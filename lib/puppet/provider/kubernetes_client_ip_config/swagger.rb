
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_client_ip_config).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        
        timeout_seconds: instance.timeoutSeconds.respond_to?(:to_hash) ? instance.timeoutSeconds.to_hash : instance.timeoutSeconds,
        
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_client_ip_config #{name}")
    create_instance_of('client_ip_config', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('client_ip_config', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_client_ip_config #{name}")
    destroy_instance_of('client_ip_config', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('client_ip_config')
  end

  def build_params
    params = {
    
      
        timeoutSeconds: resource[:timeout_seconds],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
