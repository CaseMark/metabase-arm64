FROM stephaneturquay/metabase-arm64

# Set environment variables
ENV MB_JETTY_HOST=0.0.0.0
ENV MB_JETTY_PORT=3000

# Copy the local metabase.jar file into the container
COPY metabase.jar /metabase/metabase.jar

# Set the working directory
WORKDIR /metabase

# Expose the port Metabase will run on
EXPOSE 3000

# Run Metabase when the container launches
CMD ["java", "-jar", "metabase.jar"]

