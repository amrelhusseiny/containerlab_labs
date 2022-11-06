from cisco_gnmi import ClientBuilder

# You need to "export PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python"
builder = ClientBuilder('clab-01_vmx_xrv_lab_topology-PE2:57400')
builder.set_os('IOS XR')
# Enable the following , id you are using a certificeta
# builder.set_secure_from_target()
builder.set_call_authentication('admin', 'admin')
client = builder.construct()

config = '{"Cisco-IOS-XR-shellutil-cfg:host-names": [{"host-name": "gnmi_test"}]}'
set_response = client.set_json(config)
print(set_response)