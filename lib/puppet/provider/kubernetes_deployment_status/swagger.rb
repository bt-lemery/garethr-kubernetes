
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_deployment_status).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        
        observed_generation: instance.observedGeneration.respond_to?(:to_hash) ? instance.observedGeneration.to_hash : instance.observedGeneration,
        
      
    
      
        
        replicas: instance.replicas.respond_to?(:to_hash) ? instance.replicas.to_hash : instance.replicas,
        
      
    
      
        
        updated_replicas: instance.updatedReplicas.respond_to?(:to_hash) ? instance.updatedReplicas.to_hash : instance.updatedReplicas,
        
      
    
      
        
        ready_replicas: instance.readyReplicas.respond_to?(:to_hash) ? instance.readyReplicas.to_hash : instance.readyReplicas,
        
      
    
      
        
        available_replicas: instance.availableReplicas.respond_to?(:to_hash) ? instance.availableReplicas.to_hash : instance.availableReplicas,
        
      
    
      
        
        unavailable_replicas: instance.unavailableReplicas.respond_to?(:to_hash) ? instance.unavailableReplicas.to_hash : instance.unavailableReplicas,
        
      
    
      
        
        conditions: hash_arrays(instance.conditions),
        
      
    
      
        
        collision_count: instance.collisionCount.respond_to?(:to_hash) ? instance.collisionCount.to_hash : instance.collisionCount,
        
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_deployment_status #{name}")
    create_instance_of('deployment_status', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('deployment_status', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_deployment_status #{name}")
    destroy_instance_of('deployment_status', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('deployment_status')
  end

  def build_params
    params = {
    
      
        observedGeneration: resource[:observed_generation],
      
    
      
        replicas: resource[:replicas],
      
    
      
        updatedReplicas: resource[:updated_replicas],
      
    
      
        readyReplicas: resource[:ready_replicas],
      
    
      
        availableReplicas: resource[:available_replicas],
      
    
      
        unavailableReplicas: resource[:unavailable_replicas],
      
    
      
        conditions: resource[:conditions],
      
    
      
        collisionCount: resource[:collision_count],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
