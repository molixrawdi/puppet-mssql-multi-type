Puppet::Type.newtype(:myfile) do
	desc "myfile type"
        ensureable
	newparam(:path, :namevar => true) do
		desc "The file path"
	end

end





