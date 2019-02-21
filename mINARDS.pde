ArrayList<City> cities = new ArrayList<City>();
import java.util.*;
Path div1 ;
Path div2;
Path div3;
int currentCurvePoint;

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
     div1 = new Path("div1.csv");
     div2 = new Path("div2.csv");
     div3 = new Path("div3.csv");
    
    div1.normalize();
    
}



void draw(){
  background(255);
  if (frameCount % 40 == 0) { currentCurvePoint++; }
  div1.drawCurvePoint(currentCurvePoint % (div1.path.size()-3));
  div2.drawCurvePoint(currentCurvePoint % (div2.path.size()-3));
  div3.drawCurvePoint(currentCurvePoint % (div3.path.size()-3));
  for(int i = 0; i < cities.size();i++){
     cities.get(i).display();
    }
  
 //println(currentCurvePoint % (vecs.length-3));
 
  //div1.drawShape();
}
 
