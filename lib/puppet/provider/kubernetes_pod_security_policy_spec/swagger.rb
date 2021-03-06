
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_pod_security_policy_spec).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        
        privileged: instance.privileged.respond_to?(:to_hash) ? instance.privileged.to_hash : instance.privileged,
        
      
    
      
        
        default_add_capabilities: hash_arrays(instance.defaultAddCapabilities),
        
      
    
      
        
        required_drop_capabilities: hash_arrays(instance.requiredDropCapabilities),
        
      
    
      
        
        allowed_capabilities: hash_arrays(instance.allowedCapabilities),
        
      
    
      
        
        volumes: hash_arrays(instance.volumes),
        
      
    
      
        
        host_network: instance.hostNetwork.respond_to?(:to_hash) ? instance.hostNetwork.to_hash : instance.hostNetwork,
        
      
    
      
        
        host_ports: hash_arrays(instance.hostPorts),
        
      
    
      
        
        host_pid: instance.hostPID.respond_to?(:to_hash) ? instance.hostPID.to_hash : instance.hostPID,
        
      
    
      
        
        host_ipc: instance.hostIPC.respond_to?(:to_hash) ? instance.hostIPC.to_hash : instance.hostIPC,
        
      
    
      
        
        se_linux: instance.seLinux.respond_to?(:to_hash) ? instance.seLinux.to_hash : instance.seLinux,
        
      
    
      
        
        run_as_user: instance.runAsUser.respond_to?(:to_hash) ? instance.runAsUser.to_hash : instance.runAsUser,
        
      
    
      
        
        supplemental_groups: instance.supplementalGroups.respond_to?(:to_hash) ? instance.supplementalGroups.to_hash : instance.supplementalGroups,
        
      
    
      
        
        fs_group: instance.fsGroup.respond_to?(:to_hash) ? instance.fsGroup.to_hash : instance.fsGroup,
        
      
    
      
        
        read_only_root_filesystem: instance.readOnlyRootFilesystem.respond_to?(:to_hash) ? instance.readOnlyRootFilesystem.to_hash : instance.readOnlyRootFilesystem,
        
      
    
      
        
        default_allow_privilege_escalation: instance.defaultAllowPrivilegeEscalation.respond_to?(:to_hash) ? instance.defaultAllowPrivilegeEscalation.to_hash : instance.defaultAllowPrivilegeEscalation,
        
      
    
      
        
        allow_privilege_escalation: instance.allowPrivilegeEscalation.respond_to?(:to_hash) ? instance.allowPrivilegeEscalation.to_hash : instance.allowPrivilegeEscalation,
        
      
    
      
        
        allowed_host_paths: hash_arrays(instance.allowedHostPaths),
        
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_pod_security_policy_spec #{name}")
    create_instance_of('pod_security_policy_spec', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('pod_security_policy_spec', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_pod_security_policy_spec #{name}")
    destroy_instance_of('pod_security_policy_spec', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('pod_security_policy_spec')
  end

  def build_params
    params = {
    
      
        privileged: resource[:privileged],
      
    
      
        defaultAddCapabilities: resource[:default_add_capabilities],
      
    
      
        requiredDropCapabilities: resource[:required_drop_capabilities],
      
    
      
        allowedCapabilities: resource[:allowed_capabilities],
      
    
      
        volumes: resource[:volumes],
      
    
      
        hostNetwork: resource[:host_network],
      
    
      
        hostPorts: resource[:host_ports],
      
    
      
        hostPID: resource[:host_pid],
      
    
      
        hostIPC: resource[:host_ipc],
      
    
      
        seLinux: resource[:se_linux],
      
    
      
        runAsUser: resource[:run_as_user],
      
    
      
        supplementalGroups: resource[:supplemental_groups],
      
    
      
        fsGroup: resource[:fs_group],
      
    
      
        readOnlyRootFilesystem: resource[:read_only_root_filesystem],
      
    
      
        defaultAllowPrivilegeEscalation: resource[:default_allow_privilege_escalation],
      
    
      
        allowPrivilegeEscalation: resource[:allow_privilege_escalation],
      
    
      
        allowedHostPaths: resource[:allowed_host_paths],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
