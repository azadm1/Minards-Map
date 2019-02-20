ArrayList<City> cities = new ArrayList<City>();
import java.util.*;
void setup(){
    size(1000,1000);
   Table table = loadTable("citydata.csv","header");
   for(int i = 0; i < table.getRowCount();i++){
      TableRow row = table.getRow(i);
      City city = new City(row.getFloat("LONC"),row.getFloat("LATC"),row.getString("CITY")) ;
      cities.add(city);
      println("Long-Lat ",i," ",city.longitude,city.latitude);
    }
    for(int i = 0; i < cities.size();i++){
     cities.get(i).display();
    }
}

void draw(){
  //ellipse(height/2,height/2,500,500);
   
}
 
