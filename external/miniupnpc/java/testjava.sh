#!/bin/bash

JAVA=java
JAVAC=javac
CP=$(for i in *.jar; do echo -n $i:; done).

$JAVAC -cp $CP JavaBrifoxeTest.java || exit 1
$JAVA -cp $CP JavaBrifoxeTest 12345 UDP || exit 1
