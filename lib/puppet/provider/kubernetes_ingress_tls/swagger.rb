
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_ingress_tls).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        
        hosts: hash_arrays(instance.hosts),
        
      
    
      
        
        secret_name: instance.secretName.respond_to?(:to_hash) ? instance.secretName.to_hash : instance.secretName,
        
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_ingress_tls #{name}")
    create_instance_of('ingress_tls', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('ingress_tls', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_ingress_tls #{name}")
    destroy_instance_of('ingress_tls', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('ingress_tls')
  end

  def build_params
    params = {
    
      
        hosts: resource[:hosts],
      
    
      
        secretName: resource[:secret_name],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
