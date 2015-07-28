# You probably don't need to recompile the code, since I provided the .class files as well as the .java files.
# But in case you change the code, here's how to recompile it:
read -p "Press [Enter] to recompile the Java"
rm *.class
javac SchematronValidator.java
javac SchemaValidator.java

read -p "Press [Enter] to run a Schema Validation against HML Schema"
java SchemaValidator "hml/Element4.CSB.bad.attributes.xml" "schema/hml-1.0.1.xsd"

read -p "Press [Enter] to run a Schema Validation against MIRING Tier 1 Schema"
java SchemaValidator "hml/Element4.CSB.bad.attributes.xml" "schema/MiringTier1.xsd"




