
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_container_state_terminated).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        exit_code: instance.exitCode.respond_to?(:to_hash) ? instance.exitCode.to_hash : instance.exitCode,
      
    
      
        signal: instance.signal.respond_to?(:to_hash) ? instance.signal.to_hash : instance.signal,
      
    
      
        reason: instance.reason.respond_to?(:to_hash) ? instance.reason.to_hash : instance.reason,
      
    
      
        message: instance.message.respond_to?(:to_hash) ? instance.message.to_hash : instance.message,
      
    
      
        started_at: instance.startedAt.respond_to?(:to_hash) ? instance.startedAt.to_hash : instance.startedAt,
      
    
      
        finished_at: instance.finishedAt.respond_to?(:to_hash) ? instance.finishedAt.to_hash : instance.finishedAt,
      
    
      
        container_id: instance.containerID.respond_to?(:to_hash) ? instance.containerID.to_hash : instance.containerID,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_container_state_terminated #{name}")
    create_instance_of('container_state_terminated', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('container_state_terminated', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_container_state_terminated #{name}")
    destroy_instance_of('container_state_terminated', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('container_state_terminated')
  end

  def build_params
    params = {
    
      
        exitCode: resource[:exit_code],
      
    
      
        signal: resource[:signal],
      
    
      
        reason: resource[:reason],
      
    
      
        message: resource[:message],
      
    
      
        startedAt: resource[:started_at],
      
    
      
        finishedAt: resource[:finished_at],
      
    
      
        containerID: resource[:container_id],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
