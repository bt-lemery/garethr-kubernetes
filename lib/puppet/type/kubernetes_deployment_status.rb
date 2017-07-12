
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_deployment_status) do
  
  @doc = "DeploymentStatus is the most recently observed status of the Deployment."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the deployment_status.'
  end
  
    
      newproperty(:observed_generation) do
        
        desc "The generation observed by the deployment controller."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:replicas) do
        
        desc "Total number of non-terminated pods targeted by this deployment (their labels match the selector)."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:updated_replicas) do
        
        desc "Total number of non-terminated pods targeted by this deployment that have the desired template spec."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:ready_replicas) do
        
        desc "Total number of ready pods targeted by this deployment."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:available_replicas) do
        
        desc "Total number of available pods (ready for at least minReadySeconds) targeted by this deployment."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:unavailable_replicas) do
        
        desc "Total number of unavailable pods targeted by this deployment."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:conditions) do
        
        desc "Represents the latest available observations of a deployment's current state."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:collision_count) do
        
        desc "Count of hash collisions for the Deployment. The Deployment controller uses this field as a collision avoidance mechanism when it needs to create the name for the newest ReplicaSet."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end
