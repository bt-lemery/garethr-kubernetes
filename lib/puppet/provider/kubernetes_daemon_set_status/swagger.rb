
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_daemon_set_status).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        current_number_scheduled: instance.currentNumberScheduled.respond_to?(:to_hash) ? instance.currentNumberScheduled.to_hash : instance.currentNumberScheduled,
      
    
      
        number_misscheduled: instance.numberMisscheduled.respond_to?(:to_hash) ? instance.numberMisscheduled.to_hash : instance.numberMisscheduled,
      
    
      
        desired_number_scheduled: instance.desiredNumberScheduled.respond_to?(:to_hash) ? instance.desiredNumberScheduled.to_hash : instance.desiredNumberScheduled,
      
    
      
        number_ready: instance.numberReady.respond_to?(:to_hash) ? instance.numberReady.to_hash : instance.numberReady,
      
    
      
        observed_generation: instance.observedGeneration.respond_to?(:to_hash) ? instance.observedGeneration.to_hash : instance.observedGeneration,
      
    
      
        updated_number_scheduled: instance.updatedNumberScheduled.respond_to?(:to_hash) ? instance.updatedNumberScheduled.to_hash : instance.updatedNumberScheduled,
      
    
      
        number_available: instance.numberAvailable.respond_to?(:to_hash) ? instance.numberAvailable.to_hash : instance.numberAvailable,
      
    
      
        number_unavailable: instance.numberUnavailable.respond_to?(:to_hash) ? instance.numberUnavailable.to_hash : instance.numberUnavailable,
      
    
      
        collision_count: instance.collisionCount.respond_to?(:to_hash) ? instance.collisionCount.to_hash : instance.collisionCount,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_daemon_set_status #{name}")
    create_instance_of('daemon_set_status', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('daemon_set_status', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_daemon_set_status #{name}")
    destroy_instance_of('daemon_set_status', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('daemon_set_status')
  end

  def build_params
    params = {
    
      
        currentNumberScheduled: resource[:current_number_scheduled],
      
    
      
        numberMisscheduled: resource[:number_misscheduled],
      
    
      
        desiredNumberScheduled: resource[:desired_number_scheduled],
      
    
      
        numberReady: resource[:number_ready],
      
    
      
        observedGeneration: resource[:observed_generation],
      
    
      
        updatedNumberScheduled: resource[:updated_number_scheduled],
      
    
      
        numberAvailable: resource[:number_available],
      
    
      
        numberUnavailable: resource[:number_unavailable],
      
    
      
        collisionCount: resource[:collision_count],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
