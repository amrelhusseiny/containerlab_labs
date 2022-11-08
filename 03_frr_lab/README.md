# Lab3 : gNMI Network Automation (Part 2) : gNMI Configuration management 
### Lab composed of : 
- 2 IOS-XR PE/P Routers
- 2 FRRouting CEs
- 2 PC(Linux Net-tools) to generate traffic

### Lab Purpose
Test gNMI/OpenConfig configuration of 2 IOS-XR PE/P routers 

### To deploy LAB : 
1) Clone this folder.
2) Initiate LAB toplogy using ContainerLab : 
`containerlab deploy -t 03_frr_topology.clab.yml`
3) Using Docker Logs, make sure that IOS-XR containers are fully started, it will take 5 minutes to boot up completly:
`docker logs -f clab-02_xrv_gnmi-PE1`
4) Run shell file to configure IPs of the Linux testing containers : 
`bash 03_pc_config.sh`
5) After IOS-XR boot up, run following commands to gNMI configure PE1 and PE2 using the templates in this folder : 
`
gnmic -a clab-02_xrv_gnmi-PE1 --insecure -u admin -p admin -e json_ietf  set --request-file 02_xrv_pe1_gnmi.yml 
gnmic -a clab-02_xrv_gnmi-PE2 --insecure -u admin -p admin -e json_ietf  set --request-file 02_xrv_pe2_gnmi.yml
`

You can check explanation of this lab on [my Dev article](https://dev.to/amrelhusseiny/gnmi-network-automation-part-2-gnmi-configuration-ciscos-ios-xr-2fhj)