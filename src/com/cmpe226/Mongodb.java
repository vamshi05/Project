package com.cmpe226;
import java.util.Scanner;


import java.net.UnknownHostException;




import java.util.ArrayList;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;
import com.mongodb.MongoClient;
import com.mongodb.DBCollection;
import com.mongodb.ServerAddress;
import com.mongodb.DB;
import com.mongodb.MongoClientURI;

public class Mongodb implements Lookup
{

public Product retrieveTV(String name)

{
	Product results = new Product();
try{
			     MongoClient mongoClient = new MongoClient("localhost",27017);
				DB db = mongoClient.getDB("cmpe");
				DBCollection coll = db.getCollection("cmpe");
				String s;
				Scanner in = new Scanner(System.in);
				System.out.println("Enter a string");
			      s = in.nextLine();
			      System.out.println("You entered string "+s);
				s=name;
				BasicDBObject query = new BasicDBObject("name",name);
				
				DBCursor cursor = coll.find();
				cursor = coll.find(query);
				ArrayList<Double> p = new ArrayList<Double>();
				
				while(cursor.hasNext()) {
				       System.out.println(cursor.next());
				       
				   }
 			
}
				
catch (UnknownHostException e) {

	e.printStackTrace();
}
	

return results;

}
}
