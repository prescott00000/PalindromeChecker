public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String newWord = noSpaces(word);
  newWord = lowercase(newWord);
  newWord = noSymbols(newWord);
  if (reverse(newWord).equals(newWord)) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  for (int i = str.length()-1; i >= 0; i--) {
    sNew = sNew + str.substring(i, i+1);
  }
  return sNew;
}
public String noSpaces(String sWord)
{
  String bob = new String();
  for (int i = 0; i < sWord.length(); i++) {
    if (sWord.charAt(i)!=' ') {
        bob = bob + sWord.charAt(i);
    }
  }
  return bob;
}
public String lowercase(String str) {
  return str.toLowerCase();
}
public String noSymbols(String sWord){
  String bob = new String();
  for (int i = 0; i < sWord.length(); i++) {
    if (Character.isLetter(sWord.charAt(i))) {
      bob = bob + sWord.charAt(i);
    }
  }
  return bob;
}