resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

dependency "vrp"
shared_script "@evp/main.lua"

client_scripts {
  "@vrp/lib/utils.lua",
  "@vrp/client/Tunnel.lua",
  "@vrp/client/Proxy.lua",
  "client.lua"
}

server_scripts {
  "@vrp/lib/utils.lua",
  "server.lua"
}
