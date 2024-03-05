# Load Balancer
## By AZOUGA Mourad

### What's load balancing?
	.Load balancer will distribute the work-load of your system to multiple individual systems, or group of systems to to reduce the amount of load on an individual system, which in turn increases the reliability, efficiency and availability of your enterprise application or website.

### Software Load Balancers
	.Software load balancers generally implements a combination of one or more scheduling algorithms.
	1-Weighted Scheduling Algorithm
	.Work is assigned to the server according to the weight assigned to the server. For different types of the server in the group different weights are assigned thus the load gets distributed.
	.When is this algorithm mostly used?: This is used when there is a considerable difference between the capabilities and specification of the servers present in the farm or cluster.

	2-Round Robin Scheduling
	.Requests are served by the server sequentially one after another. After sending the request to the last server, it starts from the first server again.
	.This algorithm is used when servers are of equal specification and there not much persistent connections.

	3-Least Connection First Scheduling
	.Requests are served first to the server which is currently handling least number of persistent connections.
	.When is this algorithm used?: When we have large number of persistent connections in the traffic unevenly distributed between the servers. It is often coupled with Sticky Session or Session aware load balancing. In this, all the request related to a session is sent to the same server to maintain the session state and syncronization.

	4-Software Load Balancer Examples
The following are few examples of software load balancers:

HAProxy – A TCP load balancer.
NGINX – A http load balancer with SSL termination support. (install Nginx on Linux)
mod_athena – Apache based http load balancer.
Varnish – A reverse proxy based load balancer.
Balance – Open source TCP load balancer.
LVS – Linux virtual server offering layer 4 load balancing

### Hardware Load Balancers
	.Load balancing hardwares are often referred as specialized routers or switches which are deployed in between the servers and the client. It can also be a dedicated system in between the the client and the server to balance the load.

	1-Layer4 Hardware Load Balancing
	.These kind of load balancers work on transport layer of OSI model and make use of TCP, UDP and SCTP transport layer protocol details to make decision on which server the data is to be sent.
	.Layer 4 load balancers are mostly the network address translators (NATs) which shares load to the different servers getting translated to by these loadbalancer. These routers hide multiple servers behind them and translate every response data packets coming from the server to be coming from same ipaddress.

	.DNS load balancing: In DNS based load balancing method the Domain Name Servers are configured to return different ipaddress for different systems. This approach creates a load balancing effect whenever there is a dns lookup.

	.Direct routing: This is a yet another configuration of hardware load balancing where the routers are aware of the server mac addresses and server may be ARP( Address resolution Protocol) disabled.

	.Tunnel or a IP tunneling often looks like Direct routing where response is directly sent to client however the traffic between the router and the server can be routed.

	2-Layer7 Hardware Load Balancing
	.This type of load balancers makes the decision according to the actual content of the message (URLs, cookies, scripts) since HTTP exists on the layer7.
	.These layer7 hardware actually form a ADN (Application delivery network) and they pass-on request to the servers as per the type of the content.
	.For example, the request for image will go to an image server, request for PHP scripts may to another server, HTML, js and css like static content may go to another one and request to any media content may go to yet another server.

### Hardware Load Balancer Examples
F5 BIG-IP load balancer (Setup HTTPS load balance on F5)
CISCO system catalyst
Barracuda load balancer
Coytepoint load balancer
