module Puppet

  newtype(:changed_type) do
    ensurable
    newparam(:name, :isnamevar => true) do
      munge do |val|
        "#{val} - munged to prod"
      end
    end
  end
end

