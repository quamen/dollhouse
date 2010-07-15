Feature: Booting up a staging environment
  Background: Using the demo deployment
    Given I am running the "demo" example
    And I have deleted "config/dollhouse/instances"

  Scenario: Deploying a new staging server from scratch
    When I initiate a new deployment :staging
    Then a new server should be started of type "512mb" with name "cuke-staging-server"
    When server "cuke-staging-server" comes online
    Then server "cuke-staging-server" should be listed as a running instance
    Then server "cuke-staging" should be bootstrapped
    And server "cuke-staging" should be given private github credentials
    And task "complete staging environment" should be invoked on "cuke-staging"
