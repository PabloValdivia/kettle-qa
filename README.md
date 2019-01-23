# kettle-qa
Uses kettle's new unit test plugin to build a golden expectation set of input and output from kettle steps and jobs.

You must have either the PDI remix installed:

With all plugins
https://s3.amazonaws.com/kettle-neo4j/kettle-neo4j-remix-8.2.0.1-REMIX.zip

With beam
https://s3.amazonaws.com/kettle-neo4j/kettle-neo4j-beam-remix-8.2.0.1-REMIX.zip


The plugins used:

- needful-things (for maitre.sh)
- pdi-dataset-plugin (for unit tests & a Execute Test Step)
- kettle-metastore (for a step to tell us which tests exist)
