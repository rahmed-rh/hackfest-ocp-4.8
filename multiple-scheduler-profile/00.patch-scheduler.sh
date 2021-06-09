# LowNodeUtilization: This profile attempts to spread pods evenly across nodes to get low resource usage per node. This profile provides the default scheduler behavior.

#HighNodeUtilization: This profile attempts to place as many pods as possible on to as few nodes as possible. This minimizes node count and has high resource usage per node.

#NoScoring: This is a low-latency profile that strives for the quickest scheduling cycle by disabling all score plug-ins. This might sacrifice better scheduling decisions for faster ones.

oc patch scheduler cluster --type=merge -p '{"spec":{"profile": "HighNodeUtilization"}}'

