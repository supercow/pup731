Puppet::Type.type(:changed_provider).provide(:changed_provider) do
  def exists?
    Puppet.notice "changed_provider prod"
    true
  end

  def create
    true
  end

  def destroy
    true
  end
end

