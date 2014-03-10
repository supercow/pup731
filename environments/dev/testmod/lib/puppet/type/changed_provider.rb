module Puppet

  newtype(:changed_provider) do
    ensurable
    newparam(:name, :isnamevar => true) {}
  end
end

