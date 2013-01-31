import fathom.MovingEntity;
import fathom.Vec;
import fathom.Util;

class Character extends MovingEntity {

	public function new(x:Int, y:Int) {
	  super(x, y);
	  loadSpritesheet(Main.spritesheet, C.dim, new Vec(1, 1));
	}

	public override function update(): Void {
		var v:Vec = Util.movementVector();

		this.vel = Util.movementVector().multiply(5);
		//Fathom.camera.setFocus(this.vec());
	}
}
