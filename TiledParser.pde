class TiledParser
{
  XML tiledParser;
  XML parent;
  XML[] childrens;
  
  String mapVersion,mapOrientation;
  int mapWidth,mapHeight,mapTileWidth,mapTileHeight;
  
  XML[] image;
  PImage tilesetImage;
  String tilesetName,tilesetImageTransColor;
  int tilesetFirstGid,tilesetTileWidth,tiesetTileHeight,tilesetImageWidth,tilesetImageHeight;
  
  String layerName;
  int layerWidth, layerHeight;
  int[] dataTitles;
  
  TiledParser(String tiledFileName)
  {
      this.tiledParser = loadXML(tiledFileName);
      this.childrens = this.tiledParser.getChildren();
      this.parent = this.childrens[0].getParent();
      
      this.mapVersion = parent.getString("version");
      this.mapOrientation = parent.getString("orientation");
      this.mapWidth=int(parent.getString("width"));
      this.mapHeight=int(parent.getString("height"));
      this.mapTileWidth=int(parent.getString("tilewidth"));
      this.mapTileHeight=int(parent.getString("tileheight"));
      
      this.image=this.childrens[1].getChildren();
      this.tilesetImage=loadImage(image[1].getString("source"));
      this.tilesetName=this.childrens[1].getString("name");
      this.tilesetImageTransColor=image[1].getString("trans");
      this.tilesetImageWidth=int(image[1].getString("width"));
      this.tilesetImageHeight=int(image[1].getString("height"));
      this.tilesetFirstGid=int(this.childrens[1].getString("firstgid"));
      this.tilesetTileWidth=int(this.childrens[1].getString("tilewidth"));
      this.tiesetTileHeight=int(this.childrens[1].getString("tileheight"));
  }

}
