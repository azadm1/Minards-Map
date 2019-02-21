class Path
{
  
  LinkedList<node> path = new LinkedList<node>();
  Path(String file_name){
   Table table = loadTable(file_name,"header");
   for(int i = 0; i < table.getRowCount();i++){
      TableRow row = table.getRow(i);
      path.addLast(new node(row.getFloat("LONP"),row.getFloat("LATP"),row.getFloat("DIV"),row.getFloat("SURV"),row.getString("DIR")));
    }
  }
  void drawShape() {
  float base_ref = path.get(1).y;
  float offset = 0;
      
  noFill();
  stroke(0);
  beginShape();
  for (int i=0; i< path.size(); i++) {
    if(path.get(i).y < base_ref){
      offset = 2*(base_ref-path.get(i).y);
      path.get(i).y += offset;
      }
      else{
        offset = 2*(path.get(i).y - base_ref);
        path.get(i).y -= offset;
      }
    
    curveVertex(path.get(i).x,path.get(i).y);
  }
  endShape();
  }

  void drawCurvePoint(int num) {
    float radius = 100*((path.get(num).sizeOfArmy)/340000);
    noStroke();
    fill(0, 0, 255,150);
    float t = (frameCount % 40)/40.0;
    float x = curvePoint(path.get(num).x, path.get(num+1).x, path.get(num+2).x, path.get(num+3).x, t);
    float y = curvePoint(path.get(num).y, path.get(num+1).y, path.get(num+2).y, path.get(num+3).y,t);
    ellipse(x, y, radius, radius);
  }
  void normalize(){
    float base_ref = path.get(1).y;
    float offset = 0;
    for (int i=0; i< path.size(); i++) {
    if(path.get(i).y < base_ref){
        offset = 2*(base_ref-path.get(i).y);
        path.get(i).y += offset;
        }
        else{
          offset = 2*(path.get(i).y - base_ref);
          path.get(i).y -= offset;
        }
    }
    
  }
}

class node{
  float x,y;
  float division;
  float sizeOfArmy;
  String direction;
  node(float x ,float y, float division , float sizeOfArmy,String direction){
  this.x =  (x*57)-1300;
  this.y =   (y*57)-2600;
  this.division = division;
  this.sizeOfArmy = sizeOfArmy;
  this.direction = direction;
  }
}
