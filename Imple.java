package implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import dbcon.Dbcon;
import bean.B1regbean;
import bean.B2regbean;
import bean.Uploadbean;
import interfase.Inter;

public class Imple implements Inter  {

	Connection con;
	public int file(Uploadbean upb) {
		int dd=0;
		try
		{
			 con=Dbcon.CreateConnection();
			 PreparedStatement ps=con.prepareStatement("INSERT INTO bank.upload  VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			 ps.setString(1, upb.getFilename());
			 ps.setString(2, upb.getFiletype());
			 ps.setString(3, upb.getFilekey());
			 ps.setString(4, upb.getFilesize());
			 ps.setString(5, upb.getFilecontent());
			 ps.setString(6, upb.getEncrypt());
			 ps.setString(7, upb.getDecrypt());
			 ps.setString(8, upb.getFileowner());
			 ps.setString(9, upb.getBranch());
			 ps.setString(10, upb.getAfterhash());
			 ps.setString(11, upb.getPrehash());
			 
			 dd=ps.executeUpdate();	
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return dd;
	}


	
	public int treg(B1regbean tr) {
		int sk=0;
		try{
			con=Dbcon.CreateConnection();
			PreparedStatement ps=con.prepareStatement("INSERT INTO bank.b1 VALUES(?,?,?,?,?,?)");
		    ps.setString(1,tr.getBankname());
		    ps.setString(2,tr.getBranchname());
		    ps.setString(3,tr.getEmail());
		    ps.setString(4,tr.getNumber());
		    ps.setString(5,tr.getPassword());
		    ps.setString(6,tr.getConpassword());
			
		    sk=ps.executeUpdate();	
		}
		catch(Exception e)
		{
		e.printStackTrace();	
		}
		return sk;
	}

	
	public boolean tlog(B1regbean tl) {
		boolean ks=false;
		try
		{
			con=Dbcon.CreateConnection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM bank.b1 where email=? and pass=?");
			ps.setString(1, tl.getEmail());
			ps.setString(2, tl.getPassword());			
			ResultSet rs=ps.executeQuery();
			ks=rs.next();	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ks;
	}
	
	public int vreg(B2regbean vr) {
		int r=0;
		try{
			con=Dbcon.CreateConnection();
			PreparedStatement ps=con.prepareStatement("INSERT INTO bank.b2 VALUES(?,?,?,?,?,?)");
		    ps.setString(1,vr.getBankname());
		    ps.setString(2,vr.getBranchname());
		    ps.setString(3,vr.getEmail());
		    ps.setString(4,vr.getNumber());
		    ps.setString(5,vr.getPassword());
		    ps.setString(6,vr.getConpassword());
			
		    r=ps.executeUpdate();	
		}
		catch(Exception e)
		{
		e.printStackTrace();	
		}
		return r;
	}
	
	
	public boolean vlog(B2regbean vl) {
		boolean ks=false;
		try
		{
			con=Dbcon.CreateConnection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM bank.b2 where email=? and pass=?");
			ps.setString(1, vl.getEmail());
			ps.setString(2, vl.getPassword());			
			ResultSet rs=ps.executeQuery();
			ks=rs.next();	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ks;
	}



	@Override
	public int filee(Uploadbean up) {
		int dd=0;
		try
		{
			 con=Dbcon.CreateConnection();
			 PreparedStatement ps=con.prepareStatement("INSERT INTO bank.upload1  VALUES(?,?,?,?,?,?,?,?,?,?,?)");
			 ps.setString(1, up.getFilename());
			 ps.setString(2, up.getFiletype());
			 ps.setString(3, up.getFilekey());
			 ps.setString(4, up.getFilesize());
			 ps.setString(5, up.getFilecontent());
			 ps.setString(6, up.getEncrypt());
			 ps.setString(7, up.getDecrypt());
			 ps.setString(8, up.getFileowner());
			 ps.setString(9, up.getBranch());
			 ps.setString(10, up.getAfterhash());
			 ps.setString(11, up.getPrehash());
			 
			 
			 dd=ps.executeUpdate();	
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return dd;	}



	@Override
	public int req(Uploadbean rq) {
		 int aa=0;
	      try
	      {
	    	  con=Dbcon.CreateConnection();
	    	  PreparedStatement ps=con.prepareStatement("INSERT INTO bank.request VALUES(?,?,?,?,?,?)");
	          ps.setString(1, rq.getBranch());
	          ps.setString(2, rq.getFilename());
	          ps.setString(3, rq.getFiletype());
	          ps.setString(4, rq.getFilekey());
	    	  ps.setString(5, "Request");
	    	  ps.setString(6, rq.getFileowner());
	    	  
	    	  aa=ps.executeUpdate();
	      }

		catch(Exception e)
		{
			e.printStackTrace();
		}
			
			return aa;
	}



	@Override
	public int rep(Uploadbean rp) {
		 int aa=0;
	      try
	      {
	    	  con=Dbcon.CreateConnection();
	    	  PreparedStatement ps=con.prepareStatement("INSERT INTO bank.resp VALUES(?,?,?,?,?)");
	          ps.setString(1, rp.getFilename());
	          ps.setString(2, rp.getFiletype());
	          ps.setString(3, rp.getFilekey());
	    	  ps.setString(4, "Accept");
	    	  ps.setString(5, rp.getBranch());
	    	  
	    	  aa=ps.executeUpdate();
	      }

		catch(Exception e)
		{
			e.printStackTrace();
		}
			
			return aa;
	}



	@Override
	public int reqq(Uploadbean rqq) {
		 int aa=0;
	      try
	      {
	    	  con=Dbcon.CreateConnection();
	    	  PreparedStatement ps=con.prepareStatement("INSERT INTO bank.request1 VALUES(?,?,?,?,?,?)");
	          ps.setString(1, rqq.getBranch());
	          ps.setString(2, rqq.getFilename());
	          ps.setString(3, rqq.getFiletype());
	          ps.setString(4, rqq.getFilekey());
	    	  ps.setString(5, "Request");
	    	  ps.setString(6, rqq.getFileowner());
	    	  
	    	  aa=ps.executeUpdate();
	      }

		catch(Exception e)
		{
			e.printStackTrace();
		}
			
			return aa;
	}



	@Override
	public int repp(Uploadbean rpp) {
		int aa=0;
	      try
	      {
	    	  con=Dbcon.CreateConnection();
	    	  PreparedStatement ps=con.prepareStatement("INSERT INTO bank.resp1 VALUES(?,?,?,?,?)");
	          ps.setString(1, rpp.getFilename());
	          ps.setString(2, rpp.getFiletype());
	          ps.setString(3, rpp.getFilekey());
	    	  ps.setString(4, "Accept");
	    	  ps.setString(5, rpp.getBranch());
	    	  
	    	  aa=ps.executeUpdate();
	      }

		catch(Exception e)
		{
			e.printStackTrace();
		}
			
			return aa;
	}

}
