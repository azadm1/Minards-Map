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
}

class node{
  float x,y;
  float division;
  float sizeOfArmy;
  String direction;
  node(float x ,float y, float division , float sizeOfArmy,String direction){
  this.x = x;
  this.y = y;
  this.division = division;
  this.sizeOfArmy = sizeOfArmy;
  this.direction = direction;
  }
}
