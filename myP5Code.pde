// 🟢 Setup Procedure - Runs Once to Set The Canvas
void setup() {
    size(400, 400); 
    background(0); // Black background for fireworks
}

// 🎯 Variable Declarations Go Here
var fireworkX = 200; // Horizontal point
var fireworkY = 380; // Vertical point
var fireworkSize = 10; // Size of firework
var explosionSize = 0; // Explosion size
var isExploding = false; // Whether the firework is exploding

// 🟢 Draw Procedure - Repeats
draw = function () {
    background(0, 100); // Fading effect for background

    // 🎯 Animation Code: Launching Firework
    if (!isExploding) {
        fill(255, 69, 200); // Firework color
        rect(fireworkX, fireworkY, fireworkSize, fireworkSize); // Firework shape
        fireworkY -= 3; // Move upward

        if (fireworkY < 150) {
            isExploding = true; // Trigger explosion
        }
    } else {
        // 🎇 Explosion Animation
        noStroke();
        fill(random(255), random(255), random(255), 200); // Random colors
        ellipse(fireworkX, fireworkY, explosionSize, explosionSize); // Explosion
        explosionSize += 5;

        if (explosionSize > 100) {
            // Reset firework
            fireworkX = random(50, 350); // Random horizontal position
            fireworkY = 380; // Reset vertical position
            explosionSize = 0; // Reset explosion size
            isExploding = false; // Back to launching
        }
    }
};

// Show Mouse Positions 
void showXYPositions() {
    fill(255);
    textSize(12);
    text("Mouse X: " + mouseX + ", Mouse Y: " + mouseY, 10, height - 10);
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

showXYPositions = function(){
    fill(255,255,255)
    rect(270,300,150,100)
    fill(0,0,0)
    textSize(30)
    text("x = " + mouseX + "\ny = " +mouseY, 290, 350)
    fill(255,0,255)
    ellipse(mouseX, mouseY, 10, 10);
    fill(255,255,255)
}
