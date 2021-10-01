# API Wrapper (RAWG.IO)
###### A mini project for practicing API wrappers (Avion school rails activity)
![image](https://user-images.githubusercontent.com/73781775/135678249-ad22d37e-8de1-4437-97ee-d23034ffffa2.png)

## Additional Sources: 

###### API Docs: https://rawg.io/apidocs
###### Documentation link: https://api.rawg.io/docs/

## How to use API?
###### Create your own account in RAWG.IO to get your own API KEY. 
###### Clone repo into your local machine
```
git clone https://github.com/mumble-07/api_practice_app.git
```
###### Run bundle install 
###### Gem used for this wrapper: REST CLIENT API (https://github.com/rest-client/rest-client)
```
bundle install
```
## Configuration
###### It is best practice not to push your own API key, so the key used in this mini project is hidden in credentials. Make sure to add your own API key to your own credential. 
>>> Run
``` 
EDITOR="code --wait" rails credentials:edit
```
###### Add this inside your credential file.
```
rawg_api:
  RAWG_API_TOKEN: <YOUR API KEY HERE>
```  
###### As you can see inside the request.rb (filepath: 
app/api/rawg/request.rb) , the TOKEN was declared as this: 
```
TOKEN = Rails.application.credentials.rawg_api[:RAWG_API_TOKEN]
```
###### This is to access the API TOKEN you put in your credentials. 
>>> Run
```
rails s
```
## TESTING
###### You may now test the API wrapper, make sure rails server is running. 
###### You may also test this via postman. 
###### Postman documentation used for this mini project: https://documenter.getpostman.com/view/15112734/UUy38mVq

## Available Routes
```
    get '/creator-roles' => 'creator_roles#index'
    get '/developers' => 'developers#index'
    get '/games' => 'games#index'
    get '/genres' => 'genres#index'
    get '/platforms' => 'platforms#index'
    get '/platforms/lists/parents' => 'parents_platforms#index'
    get '/publishers' => 'publishers#index'
    get '/stores' => 'stores#index'
    get '/tags' => 'tags#index'
```
