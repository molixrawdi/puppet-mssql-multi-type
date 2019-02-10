Puppet::Type.type(:myfile).provider(:posix) do
     desc "simple file support"
    
     def exists?
	 File.exists?(@resource[:name])
     end

     def create
	 File.open(@resource[:name], "w") { |f| f.puts ""}
     end

     def destroy
	 File.unlink
