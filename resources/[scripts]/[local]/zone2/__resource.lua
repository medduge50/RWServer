resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

shared_script "@evp/main.lua"
client_scripts {
  "@parea/area.lua",
  "client.lua"
}

server_scripts {
  "server.lua"
}
