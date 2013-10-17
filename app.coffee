noflo = require "noflo"
# noflo = require "noflo-core-network"




fileName = 21

graph = noflo.graph.createGraph "linecount"
graph.addNode "Read File", "CoreUtil"
# graph.addNode "Split by Lines", "SplitStr"
# graph.addNode "Count Lines", "Counter"
graph.addNode "Display", "Output"

# graph.addEdge "Read File", "out", "Split by Lines", "in"
#graph.addEdge "Read File", "error", "Display", "in"

graph.addEdge "Read File", "out", "Display", "in"

# graph.addEdge "Split by Lines", "out", "Count Lines", "in"
# graph.addEdge "Count Lines", "count", "Display", "in"

# Kick the process of by sending filename to fileReader
graph.addInitial fileName, "Read File", "in"

noflo.createNetwork graph




# w = 960
# h = 500
# fill = d3.scale.category10()

# node_count = noflo_node_generator(10)

# nodes = d3.range(node_count).map(Object)

# vis = d3.select("#chart").append("svg:svg")
#   .attr("width", w)
#   .attr("height", h)

# force = d3.layout.force()
#   .nodes(nodes)
#   .links([])
#   .size([w, h])
#   .start()

# node = vis.selectAll("circle.node")
#   .data(nodes)
#   .enter().append("svg:circle")
#   .attr("class", "node")
#   .attr("cx", (d) -> d.x)
#   .attr("cy", (d) -> return d.y)
#   .attr("r", 8)
#   .style("fill", (d, i) -> fill(i & 3) )
#   .style("stroke", (d, i) -> d3.rgb(fill(i & 3)).darker(2) )
#   .style("stroke-width", 1.5)
#   .call(force.drag)

# vis.style("opacity", 1e-6)
#   .transition()
#   .duration(1000)
#   .style("opacity", 1)

# force.on "tick", (e) -> 
#   # Push different nodes in different directions for clustering.
#   k = 6 * e.alpha
#   nodes.forEach (o, i) -> 
#     o.x += if i & 2 then k else -k
#     o.y += if i & 1 then k else -k
#   node.attr("cx", (d) -> d.x )
#     .attr("cy", (d) -> d.y )


# d3.select("body").on "click", () -> 
#   nodes.forEach (o, i) -> 
#     o.x += (Math.random() - 0.5) * 40
#     o.y += (Math.random() - 0.5) * 40
#   force.resume()

   