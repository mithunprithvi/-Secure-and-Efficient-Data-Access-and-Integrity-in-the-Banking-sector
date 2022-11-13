package interfase;

import bean.B1regbean;
import bean.B2regbean;
import bean.Uploadbean;

public interface Inter {
	
	public int treg(B1regbean tr);
	public boolean tlog(B1regbean tl);
	
	public int vreg(B2regbean vr);
	public boolean vlog(B2regbean vl);
	
	public int file(Uploadbean upb);
	public int filee(Uploadbean up);
	
	public int req(Uploadbean rq);
	public int reqq(Uploadbean rqq);
	
	public int rep(Uploadbean rp);
	public int repp(Uploadbean rpp);


}
