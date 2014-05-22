package com.cmpe226;


	import java.io.*;
import java.util.ArrayList;
import java.util.Arrays;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

	@WebServlet("/jspresults/show-tv")
	public class Show extends HttpServlet{
		public void doPost(HttpServletRequest request,
	                    	HttpServletResponse response)
	      throws ServletException, IOException {
		    String address=null;

		String tv_name=null;
		if(request.getParameter("name")!=null)
		{
			tv_name=request.getParameter("name");
		}
		
		
		
		String type=null;
		if(request.getParameter("type")!=null)
		{
			type=request.getParameter("type");
		}
		
		int size=0;
		if(request.getParameter("size")!=null)
		{
			size=Integer.parseInt(request.getParameter("size"));
		}
		
		double price=0;
		if(request.getParameter("price")!=null)
		{
			price=Double.parseDouble(request.getParameter("price"));
		}
		String color=null;
		if(request.getParameter("color")!=null)
		{
			type=request.getParameter("color");
		}
	    
	    Lookup service = new Mongodb();
	    Product product;
	    product= service.retrieveTV(tv_name);
	  	    ArrayList<String> name = product.getName();
	  	    /*ArrayList<String> type = tv.getType();
	  	    ArrayList<Integer> size  = tv.getSize();
	  	    ArrayList<Double> price = tv.getPrice();
	  	    ArrayList<String> color = tv.getColor();*/

	    
	    

	        
	        request.setAttribute("name", name);
	        
	     

	        request.setAttribute("type", type);
	        
	        
	      //Type
	        request.setAttribute("size", size);
	        
	        
	        request.setAttribute("price", price);
	       
	        
	        //PowerList
	       
	        address = "/jspresults/tvDetails.jsp";
	      
	        
		      
		     
		     
	    RequestDispatcher dispatcher = request.getRequestDispatcher(address);
	    dispatcher.forward(request, response);
	  }
	
	}

	


