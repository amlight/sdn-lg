# MEF-Eline
## Operational requirements

1. Switches must support multiple DPIDs through configurations
    1. This feature would enable easy replacement of damaged/RMA devices
1. Support to disable Packet Outs out of some ports (Topology Discovery's LLDP for known host and inter-domain ports)
1. Maintenance modes for links with scheduling
    1. Move circuits out of the link under maintenance
    1. Make the under maintenance link unavailable to users
    1. Disable notifications
    1. Disable topology discovery
    1. Disable link health checks
1. Maintenance modes for nodes with scheduling
    1. Same as previous item
1. Activate/Deactivate circuits (via checkbox?)
    1. Keep on database but remove from flow tables
1. Self adjustment for circuits when a new Switch is introduced between two other switches
1. Native support for path trace (SDN-LG)
    1. without going through an extra UI
1. Support for moving multiple circuit from primary to backup paths 
    1. Through a single operation
1. Support for forcing circuit reprovisioning
    1. Through a single operation
1. Inter-switch link health testing
    1. Parallel to LLDP, shorter interval
    1. If link is not "healthy", set it as "impaired" and move circuits out of it.
    1. Similar to a BFD test
1. Support for pre-defined "core" VLANs for links (interoperability with external domains)
    1. NNI pre-defined VLAN range 
1. Adaptive statistics queries interval
    1. STAT_REQ / 30s
    1. Min (user-defined) 30 to Max (user-defined) 600
    1. Default: 5min (User-defined)
    1. Saves CPU
1. Napp should react to network status changes to guarantee maximum resilience
    1. Backup path(s) could be pre-installed if possible protecting from node failures
        1. If feasible
    1. User chooses if circuit should go back to the primary path and waiting stable interval
