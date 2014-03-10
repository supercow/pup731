Puppet::Type.type(:changed_type).provide(:changed_type) do
  def exists?
    Puppet.notice "changed_type prod - title is '#{resource[:name]}'"
    true
  end

  def create
    true
  end

  def destroy
    true
  end
end

