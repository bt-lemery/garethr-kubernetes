
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_node_selector_term).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        match_expressions: instance.matchExpressions.respond_to?(:to_hash) ? instance.matchExpressions.to_hash : instance.matchExpressions,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_node_selector_term #{name}")
    create_instance_of('node_selector_term', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('node_selector_term', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_node_selector_term #{name}")
    destroy_instance_of('node_selector_term', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('node_selector_term')
  end

  def build_params
    params = {
    
      
        matchExpressions: resource[:match_expressions],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end
