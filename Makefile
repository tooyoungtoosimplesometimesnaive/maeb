
all: run

run:
	mvn compile exec:java -Dexec.mainClass=org.apache.beam.examples.WordCount -Dexec.args="--inputFile=pom.xml --output=counts" -Pdirect-runner


run-debugging:
	mvn compile exec:java -Dexec.mainClass=org.apache.beam.examples.DebuggingWordCount -Dexec.args="--output=counts" -Pdirect-runner
