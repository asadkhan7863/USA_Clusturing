

# Load Data ##########################
Asad_C2 <- read.csv("googleUSA5_2.csv", header = TRUE)
colnames(Asad_C2)

# Use numerical data only

clC2 <- Asad_C2[, 2:6]
row.names(clC2) <- Asad_C2[, 1]
colnames(clC2)

# Clustering #############################

# Create distance matrix
dm1 <- dist(clC2)

# Hierarchical clustering
c1 <- hclust(dm1)
c1    # Show info on clustering

# Plot dendrogram of clusters
plot(c1, main = "Cluster for searches unicornData virtualization, Internet security")

# Put all together in one line
plot(hclust(dist(clC2)), main = "Cluster for searches unicorn, Internet Security, Data mining, brexit, fifa")




