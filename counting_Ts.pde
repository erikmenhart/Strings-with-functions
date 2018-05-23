String sentence;
String countT;

void settings() {

  size(700, 300);
}

void setup() {
  sentence = "Whatever you put here, it must always be school appropriate.";

  println("The number of times the letter 't' shows up is: " + numberOfLetterT(sentence));
  countT =("There are " + numberOfLetterT(sentence) + " T's in the sentence above");
  textSize(20);
  text(sentence, 20, 20);
  text(countT, 20, 150);
  //rest of program here
}

void draw() {
  noLoop(); //draw doesn't need to happen for this exercise
}

int numberOfLetterT(String sentenceToCheck) {
  int amountOfTs = 0;
  char [] letters = sentenceToCheck.toCharArray();
  for (int i = 0; i < letters.length; i++) {
    if (letters[i] == 't' || letters[i] == 'T') {
      amountOfTs += 1;
    }
  }
  return amountOfTs;
}