
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_security_context).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        capabilities: instance.capabilities.respond_to?(:to_hash) ? instance.capabilities.to_hash : instance.capabilities,
      
    
      
        privileged: instance.privileged.respond_to?(:to_hash) ? instance.privileged.to_hash : instance.privileged,
      
    
      
        se_linux_options: instance.seLinuxOptions.respond_to?(:to_hash) ? instance.seLinuxOptions.to_hash : instance.seLinuxOptions,
      
    
      
        run_as_user: instance.runAsUser.respond_to?(:to_hash) ? instance.runAsUser.to_hash : instance.runAsUser,
      
    
      
        run_as_non_root: instance.runAsNonRoot.respond_to?(:to_hash) ? instance.runAsNonRoot.to_hash : instance.runAsNonRoot,
      
    
      
        read_only_root_filesystem: instance.readOnlyRootFilesystem.respond_to?(:to_hash) ? instance.readOnlyRootFilesystem.to_hash : instance.readOnlyRootFilesystem,
      
    
      
        allow_privilege_escalation: instance.allowPrivilegeEscalation.respond_to?(:to_hash) ? instance.allowPrivilegeEscalation.to_hash : instance.allowPrivilegeEscalation,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_security_context #{name}")
    create_instance_of('security_context', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('security_context', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_security_context #{name}")
    destroy_instance_of('security_context', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('security_context')
  end

  def build_params
    params = {
    
      
        capabilities: resource[:capabilities],
      
    
      
        privileged: resource[:privileged],
      
    
      
        seLinuxOptions: resource[:se_linux_options],
      
    
      
        runAsUser: resource[:run_as_user],
      
    
      
        runAsNonRoot: resource[:run_as_non_root],
      
    
      
        readOnlyRootFilesystem: resource[:read_only_root_filesystem],
      
    
      
        allowPrivilegeEscalation: resource[:allow_privilege_escalation],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
