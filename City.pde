class City{
    String name;
    float longitude,latitude;
    
    City( float longitude,float latitude,String name){
    this.name = name;
    this.longitude = longitude;
    this.latitude = latitude;
    if(this.latitude != 55){
      float offset = 0;
      if(this.latitude < 55){
      offset = 2*(55-this.latitude);
      this.latitude += offset;
      }
      else{
        offset = 2*(this.latitude - 55);
        this.latitude -= offset;
      }
    }
    }
    
    void display(){
    float scale = 57;
    fill(0);
    float x_bar,y_bar;
    x_bar = (longitude*scale)-1300;
    //x_bar = ((scale*longitude)+width/2);
    y_bar = (latitude*scale)-2600;
    //y_bar = ((scale*latitude) + height/2);
   println(name,x_bar,y_bar);
    ellipse(x_bar,y_bar,5,5);
    textAlign(LEFT);
    text(name,x_bar,y_bar);
    }
}
