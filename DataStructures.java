
import java.util.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;

public class DataStructures {

        public static void main(String arg[]) throws Exception{

            /* LIST INTERFACE  */
            
            // ARRAY  (STATIC ARRAY, FIXED SIZE)
            String[] alanguages = {"C++", "C", "Java", "C#", "Python", "PHP", "Perl", "R", "Ruby", "VB.NET", "Javascript", "Matlab"};
      
            // VECTOR  (DYNAMIC ARRAY, GROWS AS NEEDED)
            Vector<String> vlanguages = new Vector<String>(12, 2);
            vlanguages.addElement(new String("C++"));
            vlanguages.addElement(new String("C"));
            vlanguages.addElement(new String("Java"));
            vlanguages.addElement(new String("C#"));
            vlanguages.addElement(new String("Python"));
            vlanguages.addElement(new String("PHP"));
            vlanguages.addElement(new String("Perl"));
            vlanguages.addElement(new String("R"));
            vlanguages.addElement(new String("Ruby"));
            vlanguages.addElement(new String("VB.NET"));
            vlanguages.addElement(new String("Javascript"));
            vlanguages.addElement(new String("Matlab"));                  
                  
            System.out.println("\nLANGUAGES VECTOR");
            for(String s: vlanguages)
                  System.out.println(s);
                  
            // LIST (DYNAMIC ARRAY, GROWS AS NEEDED)
            List<String> ldatabases = new ArrayList<String>();
            ldatabases.add("Oracle");
            ldatabases.add("SQL Server");
            ldatabases.add("PostgreSQL");
            ldatabases.add("MySQL");
            ldatabases.add("DB2");
            ldatabases.add("SQLite");
            ldatabases.add("MS Access");
            ldatabases.add("SAP Sybase");
            ldatabases.add("Teradata");
            ldatabases.add("MongoDB");

            ArrayList<String> adatabases = new ArrayList<String>();
            adatabases.add("Oracle");
            adatabases.add("SQL Server");
            adatabases.add("PostgreSQL");
            adatabases.add("MySQL");
            adatabases.add("DB2");
            adatabases.add("SQLite");
            adatabases.add("MS Access");
            adatabases.add("SAP Sybase");
            adatabases.add("Teradata");
            adatabases.add("MongoDB");
            
            System.out.println("\nDATABASES ARRAY LIST");
            for(String s: adatabases)
                  System.out.println(s);
                  
            // LINKED LIST (DOUBLY LINKED LIST, OPERATIONS TRAVERSE LIST FROM BEGINNING OR END)
            LinkedList<String> operatingsystems = new LinkedList<String>();
            operatingsystems.add("Windows 7");
            operatingsystems.add("Windows XP");
            operatingsystems.add("Windows 8");
            operatingsystems.add("Windows 8.1");
            operatingsystems.add("Windows 10");
            operatingsystems.add("Windows Vista");
            operatingsystems.add("Mac OS X 11");
            operatingsystems.add("Mac OS X 10");
            operatingsystems.add("Linux Mint");
            operatingsystems.add("Linux Debian");
            operatingsystems.add("Android");
            operatingsystems.add("iOS");            
            
            /* SET INTERFACE */
            
            // HASH SET (HASH TABLE STORAGE, UNIQUE KEY-VALUE COMBINATION)
            HashSet<String> hslanguages = new HashSet<String>();
            hslanguages.add("C++");
            hslanguages.add("C");
            hslanguages.add("Java");
            hslanguages.add("C#");
            hslanguages.add("Python");
            hslanguages.add("PHP");
            hslanguages.add("Perl");
            hslanguages.add("R");
            hslanguages.add("Ruby");
            hslanguages.add("VB.NET");
            hslanguages.add("Javascript");
            hslanguages.add("Matlab");             
            
            // TREE SET (TREE STORAGE, SORTED IN SORT ORDER)
            TreeSet<String> tsdatabases = new TreeSet<String>();            
            tsdatabases.add("Oracle");
            tsdatabases.add("SQL Server");
            tsdatabases.add("PostgreSQL");
            tsdatabases.add("MySQL");
            tsdatabases.add("DB2");
            tsdatabases.add("SQLite");
            tsdatabases.add("MS Access");
            tsdatabases.add("SAP Sybase");
            tsdatabases.add("Teradata");
            tsdatabases.add("MongoDB"); 
            
            // LINKED HASH SET (LINKED LIST IN ORDER OF INSERTED ENTRIES)
            LinkedHashSet<String> lhsoperatingsystems = new LinkedHashSet<String>();
            lhsoperatingsystems.add("Windows 7");
            lhsoperatingsystems.add("Windows XP");
            lhsoperatingsystems.add("Windows 8");
            lhsoperatingsystems.add("Windows 8.1");
            lhsoperatingsystems.add("Windows 10");
            lhsoperatingsystems.add("Windows Vista");
            lhsoperatingsystems.add("Mac OS X 11");
            lhsoperatingsystems.add("Mac OS X 10");
            lhsoperatingsystems.add("Linux Mint");
            lhsoperatingsystems.add("Linux Debian");
            lhsoperatingsystems.add("Android");
            lhsoperatingsystems.add("iOS");            
            
            Iterator<String> iterator = lhsoperatingsystems.iterator();
            System.out.println("\nOPERATING SYSTEMS LINKED HASH SET");
            while(iterator.hasNext())
                  System.out.println(iterator.next());
                  
            /* MAP INTERFACE */
            
            // HASH MAP (MAPS UNIQUE KEYS TO VALUES)
            HashMap<String, String> hmlanguages = new HashMap<String, String>();
            hmlanguages.put("lang1", "C++");
            hmlanguages.put("lang2", "C");
            hmlanguages.put("lang3", "Java");
            hmlanguages.put("lang4", "C#");
            hmlanguages.put("lang5", "Python");
            hmlanguages.put("lang6", "PHP");
            hmlanguages.put("lang7", "Perl");
            hmlanguages.put("lang8", "R");
            hmlanguages.put("lang9", "Ruby");
            hmlanguages.put("lang10", "VB.NET");
            hmlanguages.put("lang11", "Javascript");
            hmlanguages.put("lang12", "Matlab"); 
            
            // TREE MAP (MAPS KEY-VALUE IN SORTED ORDER)
            TreeMap<String, String> tmdatabases = new TreeMap<String, String>();            
            tmdatabases.put("db1", "Oracle");
            tmdatabases.put("db2", "SQL Server");
            tmdatabases.put("db3", "PostgreSQL");
            tmdatabases.put("db4", "MySQL");
            tmdatabases.put("db5", "DB2");
            tmdatabases.put("db6", "SQLite");
            tmdatabases.put("db7", "MS Access");
            tmdatabases.put("db8", "SAP Sybase");
            tmdatabases.put("db9", "Teradata");
            tmdatabases.put("db10", "MongoDB");
            
            // LINKED HASH MAP (MAP ENTRIES IN ORDER OF INSERTION)
            LinkedHashMap<String, String> lhmoperatingsystems = new LinkedHashMap<String, String>();
            lhmoperatingsystems.put("os1", "Windows 7");
            lhmoperatingsystems.put("os2", "Windows XP");
            lhmoperatingsystems.put("os3", "Windows 8");
            lhmoperatingsystems.put("os4", "Windows 8.1");
            lhmoperatingsystems.put("os5", "Windows 10");
            lhmoperatingsystems.put("os6", "Windows Vista");
            lhmoperatingsystems.put("os7", "Mac OS X 11");
            lhmoperatingsystems.put("os8", "Mac OS X 10");
            lhmoperatingsystems.put("os9", "Linux Mint");
            lhmoperatingsystems.put("os10", "Linux Debian");
            lhmoperatingsystems.put("os11", "Android");
            lhmoperatingsystems.put("os12", "iOS");
            
            // NESTED ARRAYS
            List<String[]> nestlanguages = new ArrayList<String[]>();
            nestlanguages.add(new String[]{"C", "computing", "99.9"});
            nestlanguages.add(new String[]{"Java", "application", "100"});
            nestlanguages.add(new String[]{"C#", "application", "91.8"});
            nestlanguages.add(new String[]{"Python", "application", "95.8"});
            nestlanguages.add(new String[]{"PHP", "web", "84.5"});
            nestlanguages.add(new String[]{"Perl", "web", "66.9"});
            nestlanguages.add(new String[]{"R", "computing", "84.7"});
            nestlanguages.add(new String[]{"Ruby", "web", "75.3"});
            nestlanguages.add(new String[]{"VB.NET", "application", "63.4"});
            nestlanguages.add(new String[]{"Javascript", "web", "83"});
            nestlanguages.add(new String[]{"Matlab", "computing", "72.4"});
            
            System.out.println("\nLANGUAGES NESTED LIST"); 
            for (int j=0; j < nestlanguages.size(); j++){                
                for (String i: nestlanguages.get(j)){
                  System.out.println(i);                  
                }
            }
            
            ArrayList<ArrayList<String>> nestdatabases = new ArrayList<ArrayList<String>>();
            ArrayList<String> temp1 = new ArrayList<String>();
            temp1.add("Oracle");
            temp1.add("Proprietary");
            temp1.add("Server");
            temp1.add("1497.55");
            nestdatabases.add(temp1);
            temp1 = null;
            
            ArrayList<String> temp2 = new ArrayList<String>();
            temp2.add("SQL Server");
            temp2.add("Proprietary");
            temp2.add("Server");
            temp2.add("1123.16");
            nestdatabases.add(temp2);            
            temp2 = null;
            
            ArrayList<String> temp3 = new ArrayList<String>();
            temp3.add("PostgreSQL");
            temp3.add("Open-Source");
            temp3.add("Server");
            temp3.add("280.09");
            nestdatabases.add(temp3);
            temp3 = null;
            
            ArrayList<String> temp4 = new ArrayList<String>();
            temp4.add("MySQL");
            temp4.add("Open-Source");
            temp4.add("Server");
            temp4.add("1298.54");
            nestdatabases.add(temp4);    
            temp4 = null;
            
            ArrayList<String> temp5 = new ArrayList<String>();
            temp5.add("DB2");
            temp5.add("Proprietary");
            temp5.add("Server");
            temp5.add("196.13");
            nestdatabases.add(temp5);    
            temp5 = null;
            
            ArrayList<String> temp6 = new ArrayList<String>();
            temp6.add("SQLite");
            temp6.add("Open-Source");
            temp6.add("File");
            temp6.add("100.85");
            nestdatabases.add(temp6);    
            temp6 = null;
            
            ArrayList<String> temp7 = new ArrayList<String>();
            temp7.add("MS Access");
            temp7.add("Proprietary");
            temp7.add("File");
            temp7.add("140.21");
            nestdatabases.add(temp7);
            temp7 = null;
            
            ArrayList<String> temp8 = new ArrayList<String>();
            temp8.add("SAP Sybase");
            temp8.add("Proprietary");
            temp8.add("Server");
            temp8.add("81.47");
            nestdatabases.add(temp8);    
            temp8 = null;
            
            ArrayList<String> temp9 = new ArrayList<String>();
            temp9.add("Teradata");
            temp9.add("Proprietary");
            temp9.add("Server");
            temp9.add("75.72");
            nestdatabases.add(temp9);
            temp9 = null;
            
            ArrayList<String> temp10 = new ArrayList<String>();
            temp10.add("MongoDB");
            temp10.add("Open-Source");
            temp10.add("Server");
            temp10.add("301.39");
            nestdatabases.add(temp10);
            temp10 = null;
            
            System.out.println("\nDATABASES NESTED ARRAYLIST"); 
            Iterator<ArrayList<String>> arriterator = nestdatabases.iterator();
            while(arriterator.hasNext())                  
                  for(String a: arriterator.next()){                    
                     System.out.println(a);   
                  }
                  
            HashMap<String, HashMap<String, String>> nestoperatingsystems = new HashMap<String, HashMap<String, String>>();
            nestoperatingsystems.put("os1", new HashMap<String, String>());
 	    nestoperatingsystems.get("os1").put("os1name", "Windows 7");
	    nestoperatingsystems.get("os1").put("os1type", "desktop");
	    nestoperatingsystems.get("os1").put("os1kernel", "NT");
	    nestoperatingsystems.get("os1").put("os1share", "56.11");            
            
            nestoperatingsystems.put("os2", new HashMap<String, String>());
	    nestoperatingsystems.get("os2").put("os2name", "Windows XP");
	    nestoperatingsystems.get("os2").put("os2type", "desktop");
	    nestoperatingsystems.get("os2").put("os2kernel", "NT");
	    nestoperatingsystems.get("os2").put("os2share", "10.59");
            
            nestoperatingsystems.put("os3", new HashMap<String, String>());
	    nestoperatingsystems.get("os3").put("os3name", "Windows 8");
	    nestoperatingsystems.get("os3").put("os3type", "desktop");
	    nestoperatingsystems.get("os3").put("os3kernel", "NT");
	    nestoperatingsystems.get("os3").put("os3share", "2.88");
            
            nestoperatingsystems.put("os4", new HashMap<String, String>());
	    nestoperatingsystems.get("os4").put("os4name", "Windows 8.1");
	    nestoperatingsystems.get("os4").put("os4type", "desktop");
	    nestoperatingsystems.get("os4").put("os4kernal", "NT");
	    nestoperatingsystems.get("os4").put("os4share", "11.15");
            
            nestoperatingsystems.put("os5", new HashMap<String, String>());
	    nestoperatingsystems.get("os5").put("os5name", "Windows 10");
	    nestoperatingsystems.get("os5").put("os5type", "desktop");
	    nestoperatingsystems.get("os5").put("os5kernel", "NT");
	    nestoperatingsystems.get("os5").put("os5share", "9");
            
	    nestoperatingsystems.put("os6", new HashMap<String, String>());
            nestoperatingsystems.get("os6").put("os6name", "Windows Vista");
	    nestoperatingsystems.get("os6").put("os6type", "desktop");
	    nestoperatingsystems.get("os6").put("os6kernel", "NT");
	    nestoperatingsystems.get("os6").put("os6share", "0");
            
            nestoperatingsystems.put("os7", new HashMap<String, String>());
	    nestoperatingsystems.get("os7").put("os7name", "Mac OS X 11");
	    nestoperatingsystems.get("os7").put("os7type", "desktop");
	    nestoperatingsystems.get("os7").put("os7kernel", "Unix");
	    nestoperatingsystems.get("os7").put("os7share", "2.66");
            
            nestoperatingsystems.put("os8", new HashMap<String, String>());
	    nestoperatingsystems.get("os8").put("os8name", "Mac OS X 10");
	    nestoperatingsystems.get("os8").put("os8type", "desktop");
	    nestoperatingsystems.get("os8").put("os8kernel", "Unix");
	    nestoperatingsystems.get("os8").put("os8share", "2.45");
            
            nestoperatingsystems.put("os9", new HashMap<String, String>());
	    nestoperatingsystems.get("os9").put("os9name", "Linux Mint");
	    nestoperatingsystems.get("os9").put("os9type", "desktop");
	    nestoperatingsystems.get("os9").put("os9kernel", "Linux");
	    nestoperatingsystems.get("os9").put("os9share", "0");
              
            nestoperatingsystems.put("os10", new HashMap<String, String>());
	    nestoperatingsystems.get("os10").put("os10name", "Linux Debian");
	    nestoperatingsystems.get("os10").put("os10type", "desktop");
	    nestoperatingsystems.get("os10").put("os10kernel", "Linux");
	    nestoperatingsystems.get("os10").put("os10share", "0");
            
            nestoperatingsystems.put("os11", new HashMap<String, String>());
       	    nestoperatingsystems.get("os11").put("os11name", "Android");
	    nestoperatingsystems.get("os11").put("os11type", "mobile");
	    nestoperatingsystems.get("os11").put("os11kernel", "Linux");
	    nestoperatingsystems.get("os11").put("os11share", "48.12");
            
            nestoperatingsystems.put("os12", new HashMap<String, String>());   
	    nestoperatingsystems.get("os12").put("os12name", "iOS");
	    nestoperatingsystems.get("os12").put("os12type", "mobile");
	    nestoperatingsystems.get("os12").put("os12kernel", "Unix");
	    nestoperatingsystems.get("os12").put("os12share", "34.71");
            
            System.out.println("\nOPERATING SYSTEMS NESTED HASH MAP"); 
            Set<String> keys = nestoperatingsystems.keySet();            
            for(String k:keys)                
                for(String s:nestoperatingsystems.get(k).keySet())
                    System.out.println(nestoperatingsystems.get(k).get(s));               
               
            /* BASIC OPERATIONS */
                       
            // SORT
            List<String> col = new ArrayList<String>();
            for(int i=0; i<nestdatabases.size(); i++) {                
                col.add(nestdatabases.get(i).get(0));                                
            }            
            Collections.sort(col);
            
            List<ArrayList<String>> ordndatabases = new ArrayList<ArrayList<String>>();                
            for(int r=0; r<col.size(); r++)
                for(int i=0; i<nestdatabases.size(); i++) {
                    if (col.get(r).equals(nestdatabases.get(i).get(0))){
                      ordndatabases.add(nestdatabases.get(i));
                    }
            }

            // FILTER
            List<ArrayList<String>> filndatabases = new ArrayList<ArrayList<String>>();                
            for (int j=0; j < ordndatabases.size(); j++){
                if (ordndatabases.get(j).get(1)=="Proprietary"){
                  filndatabases.add(ordndatabases.get(j));
                }
            }
            filndatabases = null;                        
            
            // AGGREGATE
            int dcnt = 0;
            int mcnt = 0;                        
            float avgmktdesktopshare = 0;
            float avgmktmobileshare = 0;
            
            Set<String> oskeys = nestoperatingsystems.keySet();
            for(String k:oskeys){                            
              for(String s:nestoperatingsystems.get(k).keySet()){                
                if (nestoperatingsystems.get(k).get(s) == "desktop") {                  
                    avgmktdesktopshare = avgmktdesktopshare + Float.valueOf(nestoperatingsystems.get(k).get("os" +
                                                                            s.replace("os","").replace("type", "") + "share"));
                    dcnt++;
                }
                if (nestoperatingsystems.get(k).get(s) == "mobile") {                  
                    avgmktmobileshare = avgmktmobileshare + Float.valueOf(nestoperatingsystems.get(k).get("os" +
                                                                          s.replace("os","").replace("type", "") + "share"));
                    mcnt++;
                }
              }
            }
            avgmktdesktopshare = avgmktdesktopshare / dcnt;
            System.out.println("\nAverage desktop market share: "+avgmktdesktopshare);
            
            avgmktmobileshare = avgmktmobileshare / mcnt;
            System.out.println("\nAverage desktop market share: "+avgmktmobileshare);
            
            // MERGE
            List<ArrayList<ArrayList<String>>> compArray = new ArrayList<ArrayList<ArrayList<String>>>();
            
            // MIGRATE LIST TO ARRAYLIST
            ArrayList<ArrayList<String>> templangnestarr = new ArrayList<ArrayList<String>>();
            ArrayList<String> templangsimparr = new ArrayList<String>();
                        
            for (int j=0; j < nestlanguages.size(); j++){                
                for (String i: nestlanguages.get(j)){
                  templangsimparr.add(i);                  
                }
                templangnestarr.add(templangsimparr);
                templangsimparr = new ArrayList<String>();
            }
                        
            compArray.add(templangnestarr);
            compArray.add(nestdatabases);
            
            // MIGRATE HASHMAP TO ARRAYLIST
            ArrayList<ArrayList<String>> nestoperatingsystemsarr = new ArrayList<ArrayList<String>>();
            ArrayList<String> temposarr = new ArrayList<String>();
                                
            for (int n=1; n <= 12; n++){                                        
                temposarr.add(nestoperatingsystems.get("os"+n).get("os"+n+"name"));
                temposarr.add(nestoperatingsystems.get("os"+n).get("os"+n+"type"));
                temposarr.add(nestoperatingsystems.get("os"+n).get("os"+n+"kernel"));
                temposarr.add(nestoperatingsystems.get("os"+n).get("os"+n+"share"));
                
                nestoperatingsystemsarr.add(temposarr);
                temposarr = new ArrayList<String>();
            }
                        
            compArray.add(nestoperatingsystemsarr);            
            
            System.out.println("\nMERGED NESTED COMP ARRAY LIST"); 
            for (int x=0; x < compArray.size(); x++){
              if (x==0) { System.out.println("---LANGUAGES---");}
              else if (x==1) { System.out.println("---DATABASES---");}
              else if (x==2) { System.out.println("---OPERATING SYSTEMS---");}
              for (int y=0; y < compArray.get(x).size(); y++){
                for (String s : compArray.get(x).get(y))
                  System.out.println(s);
              }
            }
            
            // CSV EXPORT
            String currentDir = new File("").getAbsolutePath();
            
            FileWriter writer = new FileWriter(currentDir + "\\Data\\Languages_Java.csv");
            writer.append("Language,Uses,Ranking\n");
            
            for (int j=0; j < nestlanguages.size(); j++){                
                writer.append(String.join(",", nestlanguages.get(j)));
                writer.append("\n");                
            }
            
            writer.flush();
	    writer.close();            
                        
            writer = new FileWriter(currentDir + "\\Data\\Databases_Java.csv");
            writer.append("Databases,Type,Size,Ranking\n");
            
            for (int j=0; j < nestdatabases.size(); j++){                
                writer.append(String.join(",", nestdatabases.get(j)));                
                writer.append("\n");                
            }
            
            writer.flush();
	    writer.close();
            
            writer = new FileWriter(currentDir + "\\Data\\OperatingSystems_Java.csv");
            writer.append("OperatingSystems,Type,Kernel,Market Share\n");
            
            for (int j=0; j < nestoperatingsystemsarr.size(); j++){                
                writer.append(String.join(",", nestoperatingsystemsarr.get(j)));                
                writer.append("\n");                
            }            
            writer.flush();
	    writer.close();
            
            System.out.println("\nSuccessfully exported array data to csv files!\n");
            
            
        }
}

