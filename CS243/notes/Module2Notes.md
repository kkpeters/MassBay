# Module 2: Switching Concepts

# 2.1 Frame Forwarding 

## 2.1.1 Switching in Networking

The concept of switching and forwarding frames is universal in networking and telecommunications. Various types of switches are used in LANs, WANs, and in the public switched telephone network (PSTN).

The decision on how a switch forwards traffic is made based on the flow of that traffic. There are two terms associated with frames entering and leaving an interface:

- Ingress - This is used to describe the port where a frame enters the device.
- Egress - This is used to describe the port that frames will use when leaving the device.

A LAN switch maintains a table that is referenced when forwarding traffic through the switch. The only intelligence of a LAN switch is its ability to use its table to forward traffic. A LAN switch forwards traffic based on the ingress port and the destination MAC address of an Ethernet frame. With a LAN switch, there is only one master switching table that describes a strict association between MAC addresses and ports; therefore, an Ethernet frame with a given destination address always exits the same egress port, regardless of the ingress port it enters.

Note: An Ethernet frame will never be forwarded out the same port it was on which it was received.

## 2.1.2 The Switch MAC Address Table
A switch is made up of integrated circuits and the accompanying software that controls the data paths through the switch. Switches use destination MAC addresses to direct network communications through the switch, out the appropriate port, toward the destination.

For a switch to know which port to use to transmit a frame, it must first learn which devices exist on each port. As the switch learns the relationship of ports to devices, it builds a table called a MAC address table. This table is stored in content addressable memory (CAM) which is a special type of memory used in high-speed searching applications. For this reason, the MAC address table is sometimes also called the CAM table.

LAN switches determine how to handle incoming data frames by maintaining the MAC address table. A switch populates its MAC address table by recording the source MAC address of each device connected to each of its ports. The switch references the information in the MAC address table to send frames destined for a specific device out of the port which has been assigned to that device.

## 2.1.3 The Switch Learn and Forward Method

The following two-step process is performed on every Ethernet frame that enters a switch.

Step 1. Learn - Examining the Source MAC Address

Every frame that enters a switch is checked for new information to learn. It does this by examining the source MAC address of the frame and port number where the frame entered the switch:

- If the source MAC address does not exist in the MAC address table, the MAC address and incoming port number are added to the table.
- If the source MAC address does exist, the switch updates the refresh timer for that entry. By default, most Ethernet switches keep an entry in the table for five minutes. If the source MAC address does exist in the table but on a different port, the switch treats this as a new entry. The entry is replaced using the same MAC address, but with the more current port number.

Step 2. Forward - Examining the Destination MAC Address

If the destination MAC address is a unicast address, the switch will look for a match between the destination MAC address of the frame and an entry in its MAC address table:

- If the destination MAC address is in the table, it will forward the frame out of the specified port.
- If the destination MAC address is not in the table, the switch will forward the frame out all ports except the incoming port. This is called an unknown unicast. If the destination MAC address is a broadcast or a multicast, the frame is also flooded out all ports except the incoming port.

## 2.1.5 Switching Forwarding Methods

Switches make Layer 2 forwarding decisions very quickly. This is because of software on application-specific-integrated circuits (ASICs). ASICs reduce the frame-handling time within the device and allow the device to manage an increased number of frames without degrading performance.

Layer 2 switches use one of two methods to switch frames:

- Store-and-forward switching - This method makes a forwarding decision on a frame after it has received the entire frame and checked the frame for errors using a mathematical error-checking mechanism known as a cyclic redundancy check (CRC). Store-and-forward switching is Cisco’s primary LAN switching method.
- Cut-through switching - This method begins the forwarding process after the destination MAC address of an incoming frame and the egress port have been determined.

## 2.1.6 Store-and-Forward Switching
Store-and-forward switching, as distinguished from cut-through switching, has the following two primary characteristics:

- Error checking - After receiving the entire frame on the ingress port, the switch compares the frame check sequence (FCS) value in the last field of the datagram against its own FCS calculations. The FCS is an error checking process that helps to ensure that the frame is free of physical and data-link errors. If the frame is error-free, the switch forwards the frame. Otherwise, the frame is dropped.
- Automatic buffering - The ingress port buffering process used by store-and-forward switches provides the flexibility to support any mix of Ethernet speeds. For example, handling an incoming frame traveling into a 100 Mbps Ethernet port that must be sent out a 1 Gbps interface would require using the store-and-forward method. With any mismatch in speeds between the ingress and egress ports, the switch stores the entire frame in a buffer, computes the FCS check, forwards it to the egress port buffer and then sends it.

The figure illustrates how store-and-forward makes a decision based on the Ethernet frame.

![StoreAndForward](StoreAndForward.png)

## 2.1.7 Cut-Through Switching
The store-and-forward switching method drops frames that do not pass the FCS check. Therefore, it does not forward invalid frames.

By contrast, the cut-through switching method may forward invalid frames because no FCS check is performed. However, cut-through switching has the ability to perform rapid frame switching. This means the switch can make a forwarding decision as soon as it has looked up the destination MAC address of the frame in its MAC address table, as shown in the figure.

![CutThroughSwitching](CutThroughSwitching.png)

The switch does not have to wait for the rest of the frame to enter the ingress port before making its forwarding decision.

Fragment free switching is a modified form of cut-through switching in which the switch only starts forwarding the frame. Fragment free switching provides better error checking than cut-through, with practically no increase in latency.

The lower latency speed of cut-through switching makes it more appropriate for extremely demanding, high-performance computing (HPC) applications that require process-to-process latencies of 10 microseconds or less.

The cut-through switching method can forward frames with errors. If there is a high error rate (invalid frames) in the network, cut-through switching can have a negative impact on bandwidth, thereby clogging up bandwidth with damaged and invalid frames.

# 2.2 Collision and Broadcast Domains

## # 2.2.1 Collision Domains

In the previous topic, you gained a better understanding of what a switch is and how it operates. This topic discusses how switches work with each other and with other devices to eliminate collisions and reduce network congestion. The terms collisions and congestion are used here in the same way that you use them in street traffic.

In legacy hub-based Ethernet segments, network devices competed for the shared medium. The network segments that share the same bandwidth between devices are known as collision domains. When two or more devices within the same collision domain try to communicate at the same time, a collision will occur.

If an Ethernet switch port is operating in half-duplex, each segment is in its own collision domain. There are no collisions when switch ports are operating in full-duplex. However, there could be a collision domain if a switch port is operating in half-duplex.

By default, Ethernet switch ports will autonegotiate full-duplex when the adjacent device can also operate in full-duplex. If the switch port is connected to a device operating in half-duplex, such as a legacy hub, then the switch port will operate in half-duplex. In the case of half-duplex, the switch port will be part of a collision domain.

As shown in the figure, full-duplex is chosen if both devices have the capability along with their highest common bandwidth.

![CollisionDomains](CollisionDomains.png)

## # 2.2.2 Broadcast Domains

A collection of interconnected switches forms a single broadcast domain. Only a network layer device, such as a router, can divide a Layer 2 broadcast domain. Routers are used to segment broadcast domains, but will also segment a collision domain.

When a device sends a Layer 2 broadcast, the destination MAC address in the frame is set to all binary ones.

The Layer 2 broadcast domain is referred to as the MAC broadcast domain. The MAC broadcast domain consists of all devices on the LAN that receive broadcast frames from a host.

When a switch receives a broadcast frame, it forwards the frame out each of its ports, except the ingress port where the broadcast frame was received. Each device connected to the switch receives a copy of the broadcast frame and processes it.

Broadcasts are sometimes necessary for initially locating other devices and network services, but they also reduce network efficiency. Network bandwidth is used to propagate the broadcast traffic. Too many broadcasts and a heavy traffic load on a network can result in congestion, which slows down network performance.

When two switches are connected together, the broadcast domain is increased, as seen in the second half of the animation. In this case, a broadcast frame is forwarded to all connected ports on switch S1. Switch S1 is connected to switch S2. The frame is then also propagated to all devices connected to switch S2.

## ## 2.2.3 Alleviate Network Congestion

LAN switches have special characteristics that help them alleviate network congestion. By default, interconnected switch ports attempt to establish a link in full-duplex, therefore eliminating collision domains. Each full-duplex port of the switch provides the full bandwidth to the device or devices that are connected to that port. Full-duplex connections have dramatically increased LAN network performance, and are required for 1 Gbps Ethernet speeds and higher.

Switches interconnect LAN segments, use a MAC address table to determine egress ports, and can lessen or eliminate collisions entirely. Characteristics of switches that alleviate network congestion include the following:

*   **Fast port speeds** - Ethernet switch port speeds vary by model and purpose. For instance, most access layer switches support 100
    Mbps and 1 Gbps port speeds. Distribution layer switches support 100 Mbps, 1 Gbps, and 10 Gbps port speeds and core layer and
    data center switches may support 100 Gbps, 40 Gbps, and 10 Gbps port speeds. Switches with faster port speeds cost more but
    can reduce congestion.
*   **Fast internal switching** - Switches use a fast internal bus or shared memory to provide high performance.
*   **Large frame buffers** - Switches use large memory buffers to temporarily store more received frames before having to start
    dropping them. This enables ingress traffic from a faster port (e.g., 1 Gbps) to be forwarded to a slower (e.g., 100 Mbps) egress
    port without losing frames.
*   **High port density** - A high port density switch lowers overall costs because it reduces the number of switches required. For
    instance, if 96 access ports were required, it would be less expensive to buy two 48-port switches instead of four 24-port
    switches. High port density switches also help keep traffic local, which helps alleviate congestion.


