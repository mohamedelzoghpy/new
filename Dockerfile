# Get the base gcc image from Docker Hub
FROM gcc:latest

# Copy the current folder which contains C++ source code to the Docker image under /usr/src
COPY . /usr/src/dockertest1

# Specify the working directory
WORKDIR /usr/src/dockertest1

# Use Clang to compile the Test.cpp source file
RUN g++ -o Test hotel.cpp

# Run the output program from the previous step
CMD ["./Test"]
