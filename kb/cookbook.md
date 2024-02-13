# Cookbook for Liquibase

## Pass variable via JAVA_OPTS to changeSet

* Add variable name and value to `liquibase` command. Example:

```shell
liquibase update -DvarX=x -DvarY=y
```
* With that you can pass this variable to `changeSet`. Example:

```xml
<changeSet author="Ivan Iavanov" id="add_data">
        <comment>Add data to test database</comment>
        <insert tableName="test">
            <column name='${tableName}' value="echo"/>
        </insert>
</changeSet>
```

## Add column 

 <changeSet author="Leonid Albrecht" id="addColumn-example">
        <addColumn schemaName= "public"
                   tableName="t" >
            <column name="attributes"
                    type="JSONB" >
            </column>
        </addColumn>
    </changeSet>
