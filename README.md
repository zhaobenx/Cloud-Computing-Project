# Final Project  Data Center and Cloud Computing（ECE-GY 6363）

Steps of how to setup Hadoop and Spark clusters on AWS can be found in `report/` folder.

## Research topic

Compare Hadoop MapReduce and Spark in several aspects in terms of solving big data problems

## Motivations

Hadoop is the reliable storage and processing of big data over the years. However, MapReduce has the following limitations that make it difficult to use. 

-  A job has only two phases, map and reduce. Complex calculation requires a lot of job and the dependencies between jobs are managed by the developers themselves.
- Reduce task needs to wait for all map tasks to be completed before starting
-  High time delay and only applies to batch data processing. For interactive data processing and real-time data processing, there is insufficient support.

Apache Spark is an emerging big data processing engine. The main feature is to 

provide a clustered distributed memory abstraction (RDD: Resilient Distributed Dataset) to support applications that require a working set. Using Spark instead of mapreduce is the development trend of big data processing platform. 

## Research issue

​    The comparison mainly includes: computing resources, computing time.

​    Our tentative big data problem is to sort a few hundred gigabytes of data.

​    Control other variables and change only mapreduce and spark and then compare the computing time. We will adjust parameters of spark architecture during the process. The parameters include executors number, executor memory, executor cores and output file format. 

## A list of references

1. Resilient Distributed Datasets: A Fault-Tolerant Abstraction for In-Memory Cluster Computing, Matei Zaharia, Mosharaf Chowdhury, Tathagata Das, Ankur Dave, Justin Ma, Murphy McCauley, Michael J. Franklin, Scott Shenker, Ion Stoica, University of California, Berkeley

2.  A study and Performance Comparison of MapReduce and Apache Spark on Twitter Data on Hadoop Cluster, Md. Nowraj Farhan, Md. Ahsan Habib, Arshad Ali