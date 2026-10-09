# Module 3: VLANs

# 3.1 Overview of VLANs 

## 3.1.1 VLAN Definitions
Of course organizing your network into smaller networks is not as simple as separating screws and putting them into jars. But it will make your network easier to manage. Virtual LANS (VLANs) provide segmentation and organizational flexibility in a switched network. A group of devices within a VLAN communicate as if each device was attached to the same cable. VLANs are based on logical connections, instead of physical connections.

As shown in the figure, VLANs in a switched network enable users in various departments (i.e., IT, HR, and Sales) to connect to the same network regardless of the physical switch being used or location in a campus LAN.

![VLANDefs](VLANDefs.png) 

VLANs allow an administrator to segment networks based on factors such as function, team, or application, without regard for the physical location of the users or devices. Each VLAN is considered a separate logical network. Devices within a VLAN act as if they are in their own independent network, even if they share a common infrastructure with other VLANs. Any switch port can belong to a VLAN.

Unicast, broadcast, and multicast packets are forwarded and flooded only to end devices within the VLAN where the packets are sourced. Packets destined for devices that do not belong to the VLAN must be forwarded through a device that supports routing.

Multiple IP subnets can exist on a switched network, without the use of multiple VLANs. However, the devices will be in the same Layer 2 broadcast domain. This means that any Layer 2 broadcasts, such as an ARP request, will be received by all devices on the switched network, even by those not intended to receive the broadcast.

A VLAN creates a logical broadcast domain that can span multiple physical LAN segments. VLANs improve network performance by separating large broadcast domains into smaller ones. If a device in one VLAN sends a broadcast Ethernet frame, all devices in the VLAN receive the frame, but devices in other VLANs do not.

Using VLANs, network administrators can implement access and security policies according to specific groupings of users. Each switch port can be assigned to only one VLAN (except for a port connected to an IP phone or to another switch).

## # 3.1.2 Benefits of a VLAN Design

Each VLAN in a switched network corresponds to an IP network. Therefore, VLAN design must take into consideration the implementation of a hierarchical network-addressing scheme. Hierarchical network addressing means that IP network numbers are applied to network segments or VLANs in a way that takes the network as a whole into consideration. Blocks of contiguous network addresses are reserved for and configured on devices in a specific area of the network, as shown in the figure.

![BenefitsOfVLANDesign](BenefitsOfVLANDesign.png)

| Benefit | Description |
|---|---|
| Smaller broadcast domains | • Dividing a network into VLANs reduces the number of devices in the broadcast domain. <br> • In the figure, there are six computers in the network but only three broadcast domains (i.e., Faculty, Student, and Guest). |
| Improved security | • Only users in the same VLAN can communicate together. <br> • Only users in the same VLAN can communicate without the services of a router. The router may have a security feature such as an access control list to restrict communications between VLANs. |
| Improved IT efficiency | • VLANs simplify network management because users with similar network requirements can be configured on the same VLAN. <br> • VLANs can be named to make them easier to identify. <br> • In the figure, VLAN 10 was named "Faculty", VLAN 20 "Student", and VLAN 30 "Guest." |
| Reduced cost | VLANs reduce the need for expensive network upgrades and use the existing bandwidth and uplinks more efficiently, resulting in cost savings. |
| Better performance | Smaller broadcast domains reduce unnecessary traffic on the network and improve performance. |
| Simpler project and application management | • VLANs aggregate users and network devices to support business or geographic requirements. <br> • Having separate functions makes managing a project or working with a specialized application easier; an example of such an application is an e-learning development platform for faculty. |

## # 3.1.3 Types of VLANs

VLANs are used for different reasons in modern networks. Some VLAN types are defined by traffic classes. Other types of VLANs are
defined by the specific function that they serve.

### Default VLAN
The default VLAN on a Cisco switch is VLAN 1. Therefore, all switch ports are on VLAN 1 unless it is explicitly configured to be on another VLAN. By default, all Layer 2 control traffic is associated with VLAN 1.

Important facts to remember about VLAN 1 include the following:
* All ports are assigned to VLAN 1 by default.
* The native VLAN is VLAN 1 by default.
* The management VLAN is VLAN 1 by default.
* VLAN 1 cannot be renamed or deleted.

For instance, in the show vlan brief output, all ports are currently assigned to the default VLAN 1. No native VLAN is explicitly assigned and no other VLANs are active; therefore, the network is designed with the native VLAN the same as the management VLAN. This is considered a security risk.

```
Switch# show vlan brief
VLAN Name                Status  Ports
---- ------------------- ------- --------------------
1    default             active  Fa0/1, Fa0/2, Fa0/3, Fa0/4 
                                 Fa0/5, Fa0/6, Fa0/7, Fa0/8
                                 Fa0/9, Fa0/10, Fa0/11, Fa0/12
                                 Fa0/13, Fa0/14, Fa0/15, Fa0/16
                                 Fa0/17, Fa0/18, Fa0/19, Fa0/20
                                 Fa0/21, Fa0/22, Fa0/23, Fa0/24
                                 Gi0/1, Gi0/2
1002 fddi-default                       act/unsup
1003 token-ring-default                 act/unsup
1004 fddinet-default                    act/unsup
1005 trnet-default                      act/unsup
```

### Data VLAN
Data VLANs are VLANs configured to separate user-generated traffic. They are referred to as user VLANs because they separate the network into groups of users or devices. A modern network would have many data VLANs depending on organizational requirements. Note that voice and network management traffic should not be permitted on data VLANs.

### # Native VLAN

User traffic from a VLAN must be tagged with its VLAN ID when it is sent to another switch. Trunk ports are used between switches to support the transmission of tagged traffic. Specifically, an 802.1Q trunk port inserts a 4-byte tag in the Ethernet frame header to identify the VLAN to which the frame belongs.

A switch may also have to send untagged traffic across a trunk link. Untagged traffic is generated by a switch and may also come from legacy devices. The 802.1Q trunk port places untagged traffic on the native VLAN. The native VLAN on a Cisco switch is VLAN 1 (i.e., default VLAN).

It is a best practice to configure the native VLAN as an unused VLAN, distinct from VLAN 1 and other VLANs. In fact, it is not unusual to dedicate a fixed VLAN to serve the role of the native VLAN for all trunk ports in the switched domain.

### Management VLAN
A management VLAN is a data VLAN configured specifically for network management traffic including SSH, Telnet, HTTPS, HTTP, and SNMP. By default, VLAN 1 is configured as the management VLAN on a Layer 2 switch.

### Voice VLAN
A separate VLAN is needed to support Voice over IP (VoIP). VoIP traffic requires the following:
* Assured bandwidth to ensure voice quality
* Transmission priority over other types of network traffic
* Ability to be routed around congested areas on the network
* Delay of less than 150 ms across the network

To meet these requirements, the entire network has to be designed to support VoIP.

In the figure, VLAN 150 is designed to carry voice traffic. The student computer PC5 is attached to the Cisco IP phone, and the phone is attached to switch S3. PC5 is in VLAN 20, which is used for student data.

![VoiceVLAN](VoiceVLAN.png)

# 3.2 VLANs in a Multi-Switched Environment 

## 3.2.1 Defining VLAN Trunks
VLANs would not be very useful without VLAN trunks. VLAN trunks allow all VLAN traffic to propagate between switches. This enables devices connected to different switches but in the same VLAN to communicate without going through a router.

A trunk is a point-to-point link between two network devices that carries more than one VLAN. A VLAN trunk extends VLANs across an entire network. Cisco supports IEEE 802.1Q for coordinating trunks on Fast Ethernet, Gigabit Ethernet, and 10-Gigabit Ethernet interfaces.

A VLAN trunk does not belong to a specific VLAN. Instead, it is a conduit for multiple VLANs between switches and routers. A trunk could also be used between a network device and server or another device that is equipped with an appropriate 802.1Q-capable NIC. By default, on a Cisco Catalyst switch, all VLANs are supported on a trunk port.

In the figure, the highlighted links between switches S1 and S2, and S1 and S3 are configured to transmit traffic coming from VLANs 10, 20, 30, and 99 (i.e., native VLAN) across the network. This network could not function without VLAN trunks.

![VLANTrunks](VLANTrunks.png)

## # 3.2.2 Network without VLANs

When a switch receives a broadcast frame on one of its ports, it forwards the frame out all other ports except the port where the broadcast was received. In the animation, the entire network is configured in the same subnet (172.17.40.0/24) and no VLANs are configured. As a result, when the faculty computer (PC1) sends out a broadcast frame, switch S2 sends that broadcast frame out all of its ports. Eventually the entire network receives the broadcast because the network is one broadcast domain.

## ### 3.2.3 Network with VLANs

VLANs are associated with and configured on individual switch ports. Devices attached to those ports have no concept of VLANs. However, these devices are configured with IP addressing and are members of a specific IP network. This is where the connection between VLAN and IP network is apparent. A VLAN is the equivalent to an IP network (or subnet). VLANs are configured on the switch, whereas IP addressing is configured on the device.

Click Play in the animation to see that the same network has now been segmented using two VLANs. Faculty devices are assigned to VLAN 10 and student devices are assigned to VLAN 20. When a broadcast frame is sent from the faculty computer, PC1, to switch S2, the switch forwards that broadcast frame only to those switch ports configured to support VLAN 10.

The ports that comprise the connection between switches S2 and S1 (ports F0/1), and between S1 and S3 (ports F0/3) are trunks and have been configured to support all the VLANs in the network.

When S1 receives the broadcast frame on port F0/1, S1 forwards that broadcast frame out of the only other port configured to support VLAN 10, which is port F0/3. When S3 receives the broadcast frame on port F0/3, it forwards that broadcast frame out the only other port configured to support VLAN 10, which is port F0/11. The broadcast frame arrives at the only other computer in the network configured in VLAN 10, which is faculty computer PC4.

When VLANs are implemented on a switch, the transmission of unicast, multicast, and broadcast traffic from a host in a particular VLAN are restricted to the devices that are in that VLAN.

## 3.2.4 VLAN Identification with a Tag

The standard Ethernet frame header does not contain information about the VLAN to which the frame belongs. Therefore, when Ethernet frames are placed on a trunk, information about the VLANs to which they belong must be added. This process, called tagging, is accomplished by using the IEEE 802.1Q header, specified in the IEEE 802.1Q standard. The 802.1Q header includes a 4-byte tag inserted within the original Ethernet frame header, specifying the VLAN to which the frame belongs.

When the switch receives a frame on a port configured in access mode and assigned a VLAN, the switch inserts a VLAN tag in the frame header, recalculates the Frame Check Sequence (FCS), and sends the tagged frame out of a trunk port.

### VLAN Tag Field Details

As shown in the figure, the VLAN tag control information field consists of a Type field, a Priority field, a Canonical Format Identifier field,
and VLAN ID field:
* Type - A 2-byte value called the tag protocol ID (TPID) value. For Ethernet, it is set to hexadecimal 0x8100.
* User priority - A 3-bit value that supports level or service implementation.
* Canonical Format Identifier (CFI) - A 1-bit identifier that enables Token Ring frames to be carried across Ethernet links.
* VLAN ID (VID) - A 12-bit VLAN identification number that supports up to 4096 VLAN IDs.

After the switch inserts the tag control information fields, it recalculates the FCS values and inserts the new FCS into the frame.

![VLANTag](VLANTag.png)

## 3.2.5 Native VLANs and 802.1Q Tagging

The IEEE 802.1Q standard specifies a native VLAN for trunk links, which defaults to VLAN 1. When an untagged frame arrives on a trunk port it is assigned to the native VLAN. Management frames that are sent between switches is an example of traffic that is typically untagged. If the link between two switches is a trunk, the switch sends the untagged traffic on the native VLAN.

### Tagged Frames on the Native VLAN

Some devices that support trunking add a VLAN tag to native VLAN traffic. Control traffic sent on the native VLAN should not be tagged. If an 802.1Q trunk port receives a tagged frame with the VLAN ID that is the same as the native VLAN, it drops the frame. Consequently, when configuring a switch port on a Cisco switch, configure devices so that they do not send tagged frames on the native VLAN. Devices from other vendors that support tagged frames on the native VLAN include IP phones, servers, routers, and non-Cisco switches.

### Untagged Frames on the Native VLAN

When a Cisco switch trunk port receives untagged frames (which are unusual in a well-designed network), it forwards those frames to the native VLAN. If there are no devices associated with the native VLAN (which is not unusual) and there are no other trunk ports (which is not unusual), then the frame is dropped. The default native VLAN is VLAN 1. When configuring an 802.1Q trunk port, a default Port VLAN ID (PVID) is assigned the value of the native VLAN ID. All untagged traffic coming in or out of the 802.1Q port is forwarded based on the PVID value. For example, if VLAN 99 is configured as the native VLAN, the PVID is 99 and all untagged traffic is forwarded to VLAN 99. If the native VLAN has not been reconfigured, the PVID value is set to VLAN 1.

In the figure, PC1 is connected by a hub to an 802.1Q trunk link.

![802TrunkLink](802TrunkLink.png)

PC1 sends untagged traffic, which the switches associate with the native VLAN configured on the trunk ports, and forward accordingly. Tagged traffic on the trunk received by PC1 is dropped. This scenario reflects poor network design for several reasons: it uses a hub, it has a host connected to a trunk link, and it implies that the switches have access ports assigned to the native VLAN. It also illustrates the motivation for the IEEE 802.1Q specification for native VLANs as a means of handling legacy scenarios.

## 3.2.6 Voice VLAN Tagging

A separate voice VLAN is required to support VoIP. This enables quality of service (QoS) and security policies to be applied to voice traffic.

A Cisco IP phone connects directly to a switch port. An IP host can connect to the IP phone to gain network connectivity as well. The access port connected to the Cisco IP phone can be configured to use two separate VLANs. One VLAN is for voice traffic and the other is a data VLAN to support the host traffic. The link between the switch and the IP phone simulates a trunk link to carry both voice VLAN traffic and data VLAN traffic.

Specifically, the Cisco IP Phone contains an integrated three-port 10/100 switch. The ports provide dedicated connections to the following devices:
* Port 1 connects to the switch or other VoIP device.
* Port 2 is an internal 10/100 interface that carries the IP phone traffic.
* Port 3 (access port) connects to a PC or other device.

The switch access port sends CDP packets instructing the attached IP phone to send voice traffic in one of three ways. The method used varies based on the type of traffic:
* Voice VLAN traffic must be tagged with an appropriate Layer 2 class of service (CoS) priority value
* Access VLAN traffic can also be tagged with a Layer 2 CoS priority value
* Access VLAN is not tagged (no Layer 2 CoS priority value)

In the figure, the student computer PC5 is attached to a Cisco IP phone, and the phone is attached to switch S3. VLAN 150 is designed to carry voice traffic, while PC5 is in VLAN 20, which is used for student data.

![VoiceVLAN](VoiceVLAN.png)

## # 3.2.7 Voice VLAN Verification Example

The example output for the show interface fa0/18 switchport command is shown. The highlighted areas in the sample output show the F0/18 interface configured with a VLAN that is configured for data (VLAN 20), and a VLAN configured for voice (VLAN 150).

```
S1# show interfaces fa0/18 switchport
Name: Fa0/18
Switchport: Enabled
Administrative Mode: static access
Operational Mode: static access
Administrative Trunking Encapsulation: negotiate
Operational Trunking Encapsulation: native
Negotiation of Trunking: Off
Access Mode VLAN: 20 (student)
Trunking Native Mode VLAN: 1 (default)
Administrative Native VLAN tagging: enabled
Voice VLAN: 150 (voice)
```

# 3.3 VLAN Configuration 

# 3.4 VLAN Trunks 

# 3.5 Dynamic Trunking Protocol 
