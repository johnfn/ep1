// import Entity;

import fathom.Fathom;
import fathom.Map;
import fathom.Vec;
import fathom.Text;
import fathom.Entity;
import fathom.Set;
import fathom.MovingEntity;
import fathom.ParallaxLayer;

import nme.geom.Point;

#if flash
import flash.display.BitmapData;
import flash.display.Bitmap;
import flash.display.Loader;
#else
import nme.display.BitmapData;
import nme.display.Bitmap;
import nme.display.Loader;
import nme.net.URLRequest;
import nme.events.Event;
#end

class Block extends Entity {
  public function new(x: Int, y: Int) {
    super(x, y);

    debug(25, 25, 0xff0000);
  }
}

class Main {
  public static var spritesheet: String = "assets/spritesheet.png";
  public static var mapdata: String     = "assets/map.png";
  public static var bgtile: String      = "assets/bgtile.png";

  public static function main() {
    Fathom.rootDir = "/Users/grantm/code/ep1/";
    Fathom.initialize(loaded);
  }

  public static function loaded() {
    new ParallaxLayer(bgtile);

    var m:Map = new Map(5, 5, 25);

    m.fromImage(mapdata, [
      { key: "#ffffff", gfx: spritesheet, spritesheet: new Vec(0, 0) }
    , { key: "#000000", spc: Block }
    ]);

    Fathom.mapRef = m;

    var c:Character = new Character(-50, -50);
    Fathom.camera.setFocusTarget(new Vec(Fathom.actualStage.stageWidth/2, Fathom.actualStage.stageHeight/2));


    var g = new Text(300, 300, " bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla");
    g.color = 0x00ffff;
    g.width = 500;
    g.x = 0;
    g.y = 0;

    trace("test");
  }
}
