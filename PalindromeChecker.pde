public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public String numLetters(String sString){
  String c = new String();
  for(int i = 0; i < sString.length(); i++)
  {
    if(Character.isLetter(sString.charAt(i)) == true)
     c = c + sString.substring(i, i+1);
  }
  return c;
}


public String noSpaces(String sWord){
  String a = new String();
  for(int i = 0; i< sWord.length(); i++)
  {
    String nospace = sWord.substring(i, i+1);
    if(nospace.equals(" ") == false)
      a = a + nospace;
  }
    return a;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
  
}

public boolean palindrome(String word)
{
  String e = noSpaces(word);
  e = numLetters(e);
  e = noCapitals(e);  
   if(e.equals(reverse(e)))
    return true;
    return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--)
   {
     String b = str.substring(i-1,i);
     sNew = sNew + b;
   }
    return sNew;
}


