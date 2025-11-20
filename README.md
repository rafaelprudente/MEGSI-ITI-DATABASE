# Flayway Commands

[Maven Goals](https://documentation.red-gate.com/fd/maven-goal-277579365.html)

| Name                                                                          | Description |
|-------------------------------------------------------------------------------| ------- |
| [migrate](https://documentation.red-gate.com/fd/reference/commands/migrate)   |Migrates the database|
| [clean](https://documentation.red-gate.com/fd/reference/commands/clean)       |Drops all objects in the configured schemas|
| [info](https://documentation.red-gate.com/fd/reference/commands/info)         | Prints the details and status information about all the migrations |
| [validate](https://documentation.red-gate.com/fd/reference/commands/validate) |Validates the applied migrations against the ones available on the classpath|
| [baseline](https://documentation.red-gate.com/fd/reference/commands/baseline) |Baselines an existing database, excluding all migrations up to and including baselineVersion|
| [repair](https://documentation.red-gate.com/fd/reference/commands/repair)                                                                    |Repairs the schema history table|

```
mvn flayway:info
```