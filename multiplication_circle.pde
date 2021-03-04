import org.qscript.*;
import org.qscript.editor.*;
import org.qscript.errors.*;
import org.qscript.events.*;
import org.qscript.eventsonfire.*;
import org.qscript.operator.*;
import g4p_controls.*;

float mod = 0, incr = 0, reset = 0;
boolean Add = true, Mult = false;
public void setup(){
  size(800, 800, JAVA2D);
  createGUI();
  customGUI();
  frameRate(60);
}

public void draw() {
  if(Add) {
    mod += incr;
  } else {
    mod *= incr;
  }
  modLabel.setText("Mod = " + mod);
  background(0);
  multCircle(numLines.getValueI(), circleSize.getValueI(), width/2, height/2);
  println(Solver$.evaluate("3+").get());
}

void multCircle(int n, int r, int x, int y) {
  float x1, x2, y1, y2, i2 = 0;
  for (int i=0; i<n; i++) {
    pushMatrix();
    translate(x, y);
    x1 = r*cos((2*i*PI)/n);
    y1 = r*sin((2*i*PI)/n);
    Result r1 = null;
    try {
      String[] lines = {
        "mod=" + str(mod),
        "n=" + str(n),
        "x=" + str(i),
        equation.getText()
      };
      r1 = Solver.evaluate_(lines);
      i2 = r1.answer.toFloat();
    }
    catch(SyntaxException e) {
      println(e.getMessage());
    }
    catch(EvaluationException e) {
      println(e.getMessage());
    }
    x2 = r*cos((2*i2*PI)/n);
    y2 = r*sin((2*i2*PI)/n);
    strokeWeight(2);
    stroke(0, 255, 0);
    line(x1, y1, x2, y2);
    popMatrix();
  }
  noFill();
  strokeWeight(4);
  ellipse(x, y, 2*r, 2*r);
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}
