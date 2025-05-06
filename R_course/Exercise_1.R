a <- c(1:200)

a

b <- a * 123

print(b[44])

b_sub <- b[1:15]

b_sub

b_sub <- c(b_sub, 24108, 24231)

b_sub

m <- c('actb', 100, 3.4)

m

print(m[2])

print(m[2] * 4)

c <- c(first = "Lara", last = "Nikel",age ="26", sex = "F")
names(c)



# Assign a matrix that contains the integers 1 to 9 in three rows and three columns (filled by column) to an object
# named m1.

m1 <- matrix(data = 1:9, nrow = 3, ncol = 3)
m1

# Extract the number 8 using indexing by row and column.

m1[2,3]

# Assign a matrix that contains the integers 1 to 12 in three rows and four columns (filled by row) to an object
# named m2.

m2 <- matrix(data = 1:12, nrow =3, byrow = TRUE)

m2 

# Add column and row names to the matrix m2 (you choose the names).

rownames(m2) <- paste0("gene_", 1:nrow(m2))
colnames(m2) <- paste0("sample_", 1:ncol(m2))

m2

# Assign an array that contains the integers 1 to 24 along dimensions of lengths 4, 2 and 3 to an object named a.

a <- array(data = 1:24, dim = c(4, 2, 3))
a

# Extract the number 15 using indexing by the three dimensions.

a[3,2,2]


# Extract the matrix in the last dimension of the array and assign to a new object named last_matrix.

last_matrix <- a[, , 3]
last_matrix

# Assign a list of five items of diﬀerent data types to a list named l.

l <- list(1:10, "hi", c(1, 5, 10), 7, 5L)
l

# Extract the elements at position 3 and 5 of l as a single new list.

l2 <- list(l[[2]], l[[5]])
l2

l3 <- l[c(2, 5)]
l3



# Assign data from the file coding_gene_region.bed to an object named gene_data.

gene_data <- read.delim("/project/shared/r/1_r_data_science/1-base/coding_gene_region.bed", header = FALSE)

# Display the dimensions of the data frame and the type of data in each column.

dim(gene_data)

summary(gene_data)

# Set column names to: chr, start, end, name, score, and strand.

colnames(gene_data) <- c("chr", "start", "end", "name", "score", "strand")

# Prove that you have (re)named the columns.

summary(gene_data)

# Display the value at row 30, column 3.

gene_data[30, 3]

# Assign the column named start to a new object named start_position.

start_position <- gene_data[, 2]

# Calculate the length of each gene and assign that value to a new column named length.

gene_data$length <- gene_data[, 3] - gene_data[, 2]

# Prove that you have added the new column.

summary(gene_data)

# Assign rows where the gene length is between 100kb and 200kb to a new object named
# filtered_gene_data.

filtered_gene_data <- gene_data[gene_data$length > 100000 & gene_data$length < 200000, ]
filtered_gene_data

# Export filtered_gene_data to a file named filtered_gene_regions.tsv, using tabulation as a field
# delimiter. Include column names but not row names.

write.table(filtered_gene_data, file ="filtered_gene_regions.tsv", sep = "\t", row.names = FALSE, col.names = TRUE)
