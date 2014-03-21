

import org.jsoup.Jsoup;
import java.net.URL;
import java.util.*;

import de.l3s.boilerpipe.BoilerpipeProcessingException;
import de.l3s.boilerpipe.extractors.ArticleExtractor;
import de.l3s.boilerpipe.extractors.CommonExtractors;


import org.jsoup.helper.Validate;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import de.l3s.boilerpipe.extractors.ArticleExtractor;


import java.net.URL;
import java.sql.*;
import java.sql.Date;

import java.io.IOException;
import java.sql.DriverManager;

/*
* Example program to list links from a URL.
*/
public class ListLinks {
    public static void main(String[] args) throws IOException, BoilerpipeProcessingException {
    	Connection con;
    	Statement st;
    	ResultSet rs;
    	int i=1;
       // Validate.isTrue(args.length == 1, "usage: supply url to fetch");
        String url = "http://www.timesofindia.com/sports";//"http://www.timesofindia.com/Sports";//args[0];
       // print("Fetching %s...", url);
   
        Document doc = Jsoup.connect(url).get();
        Elements links = doc.select("h2").select("a[pg]");
       
        
        
        

      // This can also be done in one line:
       //System.out.println(ArticleExtractor.INSTANCE.getText(url1));
      
      // Also try other extractors!
//      System.out.println(DefaultExtractor.INSTANCE.getText(url));
//     System.out.println(CommonExtractors.CANOLA_EXTRACTOR.getText(url));
    	
       /* Elements media = doc.select("[src]");
        Elements imports = doc.select("link[href]");

        print("\nMedia: (%d)", media.size());
        for (Element src : media) {
            if (src.tagName().equals("img"))
                print(" * %s: <%s> %sx%s (%s)",
                        src.tagName(), src.attr("abs:src"), src.attr("width"), src.attr("height"),
                        trim(src.attr("alt"), 20));
            else
                print(" * %s: <%s>", src.tagName(), src.attr("abs:src"));
        }

        print("\nImports: (%d)", imports.size());
        for (Element link : imports) {
            print(" * %s <%s> (%s)", link.tagName(),link.attr("abs:href"), link.attr("rel"));
        }*/

        print("\nLinks: (%d)", links.size());
        
        
        int a;
        Date b;
		String c;
        for (Element link : links) {
           // print(" * a: <%s> (%s)", link.attr("abs:href"), trim(link.text(), 50));
        	String str1=link.text();
        	print("\nLinks: (%d)",str1.length() );
        	 Document doc1=Jsoup.connect(link.attr("abs:href")).get();
             Elements links1 = doc1.select("div[id*=artext1]");
            try {
            	
    			Class.forName("com.mysql.jdbc.Driver");
    			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/news","root","sahithi");
    	    	st=con.createStatement();
    	    	final URL url1 = new URL(
//    	              "http://www.l3s.de/web/page11g.do?sp=page11g&link=ln104g&stu1g.LanguageISOCtxParam=en"
    	      		//"http://timesofindia.indiatimes.com/sports/cricket/ipl/news/Polls-push-IPL-7-to-UAE-Bangladesh-on-standby/articleshow/31909065.cms"
    	      		link.attr("abs:href")
    	    			);
    	    	// String text=CommonExtractors.CANOLA_EXTRACTOR.getText(url1);
    	         //String trimmed_text=trim(text,100);
    	        // System.out.println(trimmed_text);
    	    	String backquote1=link.text();
    	    	String back2=backquote1.replaceAll("'", "`");
    	      String str="insert into sports values('0',now(),'"+link.attr("abs:href")+"','"+back2+"')";
    	    	//String trimmed_info=trim(links1.text(),965);
    	    	// System.out.println(trimmed_info);
    	    	 st.executeUpdate(str);
    	    	 ResultSet rs1=st.executeQuery("select * from sports");
    	    	 int id = 0;
    	    	   while(rs1.next())
    	    	   {
    	    	   id=rs1.getInt(1);
    	    	   System.out.println(id);
    	    	   }
    	    	 i++;
    	    	 String backquote=links1.text().replaceAll("'", "`");
    	    	// System.out.println((trimmed_info).length());
    	      String str2="insert into data(d_id,link,id,info) values('0','"+link.attr("abs:href")+"',"+id+",'"+backquote+"')";
    	     //rs1.next();
    	     st.executeUpdate(str2);
    	          
    	   	        /*   rs=st.executeQuery("select *from sports");
    	         
    	         while(rs.next())
    	         {
    	        	 a=rs.getInt(1);
    	        	 System.out.println(a);
    	        	 b=rs.getDate(2);	   
    	        	 System.out.println(b);
	   	          l=rs.getString(3);
	   	       System.out.println(l);
    	         }
    	         for(Element li:links)
    	         {
	   	          if(l==li.attr("abs:href"))
    	    	        {
    	     	           
    	    	        }
    	        	 else
    	        	 {
    	        		 String str="insert into sports values('0',now(),'"+link.attr("abs:href")+"','"+trim(link.text(),10)+"','"+trimmed_text+"')";
    	    	            st.executeUpdate(str);
    	        	 }
	   	          }*/
    	        }
                     
    	          
    		catch (Exception e) {
    			// TODO Auto-generated catch block
    			e.printStackTrace();
    		}
           
        }
    }

    private static void print(String msg, Object... args) {
        System.out.println(String.format(msg, args));
    }

    private static String trim(String s, int width) {
        if (s.length() > width)
            return s.substring(0, width-1) + ".";
        else
            return s;
    }
}

   