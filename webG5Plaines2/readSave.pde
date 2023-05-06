    import java.io.FileInputStream;
    import java.io.InputStreamReader;


String[] listFileNames(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    String names[] = file.list();
    return names;
  } else {
    return null;
  }
}

/////////////////////////////////////////////////////////


   
   String readDocs(String fpath){
   String Mpath=dataPath("")+"/"+fpath; 
   String returnText="";
   //print(Mpath);   
   
   try {
   FileInputStream fstream = new FileInputStream(Mpath);
   
   BufferedReader br = new BufferedReader(new InputStreamReader(fstream));
   
   String line="";
   
   while( (line=br.readLine())!=null){
     //println(line);
     //returnText=returnText+line+'*';
     returnText=returnText+line+" ";
   }
    
      br.close();
   }
   catch (IOException e){
   System.out.println("Ошибка текст");
   }
   
   return returnText;
   
   }


/////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////


 public static void write(String fileName, String text) {
    //Определяем файл
    File file = new File(fileName);
 
    try {
        //проверяем, что если файл не существует то создаем его
        if(!file.exists()){
            file.createNewFile();
        }
 
        //PrintWriter обеспечит возможности записи в файл
        PrintWriter out = new PrintWriter(file.getAbsoluteFile());
 
        try {
            //Записываем текст у файл
            out.print(text);
        } finally {
            //После чего мы должны закрыть файл
            //Иначе файл не запишется
            out.close();
        }
    } catch(IOException e) {
        throw new RuntimeException(e);
    }
}
