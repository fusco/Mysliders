# Mysliders
##Exercise for pop

A chaque étape, il y aura un commit, ça vous permettra de suivre facilement la modification des fichiers au fur et à mesure en cliquant sur le lien du numéro de commit de type ```e4f12g5```


### 1 / Création application
On utilise l'option `--skip-bundle` pour qu'à la génération de l'application ```bundle install``` ne soit pas exécuté.

 ``` sh
  $  rails new Mysliders --skip-bundle
 ```

### 2 / Ajout ```gem paperclip``` et install

 Ajout dans ```Gemfile```
 ```ruby
 gem 'paperclip'
 ```
 puis

 ```sh
 $ bundle install
 ```

### 3 / Création de *Slide*
en utilisant les scaffold

 ```bash
$ rails g scaffold slide name:string desc:text author:text
 ```

### 4 / Modification du fichiers ```routes.rb```  
pour y ajouter les ```root``` et le ```namespace```
pensez à regarder au ```rake routes```
 ```ruby
  resources :slides, only: [:index]
  namespace :admin do
     resources :slides
     root 'slides#index'
  end
  root 'slides#index'
 ```
### 5 / Ajout de la migration paperclip pour ajouter ```picture```

 ```bash
 $ rails generate paperclip slide picture
 ```
### 6 / Creation et migration de la base de données

 ```bash
 $ rake db create
 $ rake db:migrate
 ```
### 7 / Modification du model ```slide```
pour ajouter les validations pour ```picture```  
et le reste du model

### 8 / création des répertoires admin
et copie des fichiers créés automatiquement lors du scaffold

### 9 / remonnage des fichiers copiés dans admin
On en profite pour effacer les fichiers du frontend qui ne serviront plus
et modifier le controller frontend de slider.


### 10 / Modification des routes des fichiers admin
On notera que dans le controler Admin/sliders que les méthodes create et update ne renveront pas vers show mais vers index.
*se référer au retour de la commande ```$ rake routes```*

### 11 / Modification du fichier frontend ```index.html.erb```
Pour commencer à répondre à la demande initiale


> Arrivé à ce stade, si vous lancez votre server rails (```rails s```)
> L'url ```http://localhost:3000```  vous donnera une page page

### 12 / Gestion du champ picture pour l'admin
Il faut modifier les vues et le controller afin que ```:picture``` soit pris en compte


> c'est presque fini

### 13 / Vue ```index``` du frontend

Il faut encore modifier la vue index du frontend pour quelle corresponde à ce qui est demandé.



# Astuce 
Ça devait attendre le prochain exercice, mais il est possible de vous affranchir des étapes #7 #8 #9 en utilisant la gem ```rails-admin-scaffold``` disponible [ici](https://github.com/dhampik/rails-admin-scaffold)

Ça simplifie la vie, mais attention, ça formatte salement le fichiers ```routes.rb```
