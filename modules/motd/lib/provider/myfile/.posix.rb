
Puppet::Type.type(:myfile).provider(:windows) do
	desc "So,ple file support"
     def exists?
	 File.exists?(@resource[:name])
     end
     def create
	 File.open(@resource[:name], "w"){|f| f.puts " "}
     end 

     def destroy
	 File.unlink(@resource[:name])
     end
end
