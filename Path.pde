class Path
{
  
  LinkedList<node> path = new LinkedList<node>();
  Path(String file_name){
   Table table = loadTable(file_name,"header");
   for(int i = 0; i < table.getRowCount();i++){
      TableRow row = table.getRow(i);
      
    }
  }
}

class node{
  float x,y;
  float division;
  float sizeOfArmy;
  String direction;
  
}
