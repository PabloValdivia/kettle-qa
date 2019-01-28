# kettle-qa
Uses kettle's new unit test plugin to build a golden expectation set of input and output from kettle steps and jobs.

Explicit Dependencies:
1. pentaho-pdi-dataset v3.4.3 - https://github.com/mattcasters/pentaho-pdi-dataset/releases
2. kettle-environment v1.6.0 - https://github.com/mattcasters/kettle-environment/releases
3. kettle-needful-things v0.7.0 - https://github.com/mattcasters/kettle-needful-things/releases

The plugins and more come with nightly builds of 8.2.0.1 - PDI remix which can
be downloaded below.

With all plugins
https://s3.amazonaws.com/kettle-neo4j/kettle-neo4j-remix-8.2.0.1-REMIX.zip

With beam
https://s3.amazonaws.com/kettle-neo4j/kettle-neo4j-beam-remix-8.2.0.1-REMIX.zip

To get up and running:

kettle-qa had one directory for keeping 'groups of groups' of unit tests together
***kettle-sq\unitTests***

Within unitTests there are folders registeredDefects (JIRA based cases)
and diethardSteinerSample.  

The first order of business is to update the file path in the JSON
file that represents a Kettle Environment to import.

For example see 
```
kettle-qa/unitTests/registeredDefects$ cat registereddefects.json 
{
  "name" : "registeredDefects",
  "environmentHomeFolder" : "/home/bjackson/src/usbrandon/kettle-qa/unitTests/registeredDefects",
  "metaStoreBaseFolder" : "${ENVIRONMENT_HOME}",
  "unitTestsBasePath" : "${ENVIRONMENT_HOME}",
  "dataSetsCsvFolder" : "${ENVIRONMENT_HOME}/unit-test-datasets",
  "enforcingExecutionInHome" : true,
  "autoSavingSpoonSession" : true,
  "autoRestoringSpoonSession" : true
```
The ***environmentHomeFolder*** would need to be updated to a path on your machine
where the tests exist.

Then you need to either import the environment using maitre.sh --import-environment 
and specify the name of the environment and file.

Having done that, when you load spoon.sh and select the newly imported environment
you should have access to all the tests and they should be runnable individually.
