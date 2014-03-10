module Puppet

  newtype(:changed_type) do
    ensurable
    newparam(:name, :isnamevar => true) do
      munge do |val|
        "#{val} - munged to dev"
      end
    end
  end
end

