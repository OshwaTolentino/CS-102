#A.
#1. Find out, in a single command, which columns of warpbreaks are either numeric or integer
warpbreaks


numeric_columns <- sapply(warpbreaks, is.numeric)
integer_columns <- sapply(warpbreaks, is.integer)

#2. Is numeric a natural data type for the columns which are stored as such? Convert to integer when necessary.
#YES
numeric <- as.integer(warpbreaks$breaks)


#3. Error messages in R sometimes report the underlying type of an object rather than the user-level class. Derive from the following code and error message what the underlying type.



#B.
#1. Read the complete file using readfile_file_lines.
example_file <- "exampleFile.txt"
file_file_file_lines <- readfile_file_lines(example_file)
file_file_file_lines

# 2. Separate the vector of file_lines into a vector containing comments and a vector containing the data.
comments <- file_lines[grepl("^//", file_lines)]
data <- file_lines[!grepl("^//", file_lines)]
comments
data


# 3. Extract the date from the first comment line.
date_line <- comments[1]
date <- gsub("// Survey data. Created : ", "", date_line)
date_line
date 


# 4. Read the data into a matrix.
# a. Split the character vectors in the vector containing data file_lines by semicolon (;) using strsplit.
split_data <- strsplit(data, ";")
split_data

# b. Find the maximum number of fields retrieved by split. Append rows that are shorter with NA's.
max_fields <- max(sapply(split_data, length))
filled_split_data <- lapply(split_data, function(x) c(x, rep(NA, max_fields - length(x))))
max_fields
filled_split_data


# c. Use unlist and matrix to transform the data to row-column format.
matrix_data <- matrix(unlist(filled_split_data), ncol = max_fields, byrow = TRUE)
matrix_data


# d. From comment file_lines 2-4, extract the names of the fields. Set these as colnames for the matrix you just created.
field_file_lines <- comments[2:4]
field_names <- gsub("// Field [0-9]+: ", "", field_file_lines)
colnames(matrix_data) <- field_names


# Print the extracted date and matrix with field names
date
matrix_data
