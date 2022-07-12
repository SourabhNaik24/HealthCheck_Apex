public with sharing class HealthCheck {
    public static String getHealthScoreValue(){
       String healthScoreValue;
       ToolingAPI tooling = new ToolingAPI();
       List<ToolingAPI.SecurityHealthCheck> listOfHealthCheck = (List<ToolingAPI.SecurityHealthCheck>)tooling.query('SELECT Score FROM SecurityHealthCheck').records;
       if ( listOfHealthCheck != null && ! listOfHealthCheck.isEmpty() ){
           for(ToolingAPI.SecurityHealthCheck health : listOfHealthCheck){
               healthScoreValue = health.Score;
           }
       }
       return healthScoreValue;
   }
}
