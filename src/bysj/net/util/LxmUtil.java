package bysj.net.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class LxmUtil {
	public static  String encode = "gbk";
	public String getFlowNumber() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyhhmmsss");
		return sdf.format(new Date());
	}
}
