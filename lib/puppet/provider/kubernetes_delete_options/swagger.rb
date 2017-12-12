
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_delete_options).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
    
      
    
      
        grace_period_seconds: instance.gracePeriodSeconds.respond_to?(:to_hash) ? instance.gracePeriodSeconds.to_hash : instance.gracePeriodSeconds,
      
    
      
        preconditions: instance.preconditions.respond_to?(:to_hash) ? instance.preconditions.to_hash : instance.preconditions,
      
    
      
        orphan_dependents: instance.orphanDependents.respond_to?(:to_hash) ? instance.orphanDependents.to_hash : instance.orphanDependents,
      
    
      
        propagation_policy: instance.propagationPolicy.respond_to?(:to_hash) ? instance.propagationPolicy.to_hash : instance.propagationPolicy,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_delete_options #{name}")
    create_instance_of('delete_options', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('delete_options', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_delete_options #{name}")
    destroy_instance_of('delete_options', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('delete_options')
  end

  def build_params
    params = {
    
      
    
      
    
      
        gracePeriodSeconds: resource[:grace_period_seconds],
      
    
      
        preconditions: resource[:preconditions],
      
    
      
        orphanDependents: resource[:orphan_dependents],
      
    
      
        propagationPolicy: resource[:propagation_policy],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
