julia --trace-compile="precompile.jl" -e "import Pluto; Pluto.run(configuration=Pluto.ServerConfiguration(launch_browser=false), security=Pluto.ServerSecurity(false))" &
# julia --project=$(pwd) --trace-compile="precompile.jl" -e "import Pluto; Pluto.run(configuration=Pluto.ServerConfiguration(launch_browser=false), security=Pluto.ServerSecurity(false))" &
# julia --project=$(pwd) --trace-compile="precompile.jl" -e "println(\"Hey\")"
sleep 5
curl -s http://localhost:1234/sample/Tower%20of%20Hanoi.jl > /dev/null

echo "DONE WITH REQUEST"
sleep 20
kill $!
sleep 2

