public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String w = normalize(word);
  return w.equals(reverse(w));
}
public String reverse(String str)
{
    String sNew = new String();
    for (int i = str.length() - 1; i >= 0; i--)
    {
      sNew += str.charAt(i);
    }
    return sNew;
}
public String normalize(String str)
{
  String r = new String();
  for (int i = 0; i < str.length(); i++)
  {
    if (Character.isLetter(str.charAt(i)))
      r += str.charAt(i);
  }
  return r.toLowerCase();
}
