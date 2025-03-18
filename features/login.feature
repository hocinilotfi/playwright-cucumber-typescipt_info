Feature: Login

  Scenario: Successful login
    Given Je visite la page de connexion "http://localhost:9091/admin"
    When Je saisis "testeur_integration" dans le champ Nom d utilisateur
    And Je saisis "testeur_qa" dans le champ Mot de passe
    And Je clique sur le bouton login
    Then Je suis redirige vers la page d accueil

  Scenario: Failed login avec username incorrect et password correct
    Given Je visite la page de connexion "http://localhost:9091/admin"
    When Je saisis "testeur_integration" dans le champ Nom d utilisateur
    And Je saisis "testeur_qa" dans le champ Mot de passe
    And Je clique sur le bouton login
    Then Un message d erreur s affiche

  Scenario: Failed login avec username correct et password incorrect
    Given Je visite la page de connexion "http://localhost:9091/admin"
    When Je saisis "testeur_integration" dans le champ Nom d utilisateur
    And Je saisis "testeur_qa" dans le champ Mot de passe
    And Je clique sur le bouton login
    Then Un message d erreur s affiche
