package bysj.net.action;

import java.util.*;
import bysj.net.model.*;
import bysj.net.manager.ObjectManager;
import com.opensymphony.xwork2.*;

import bysj.net.util.PageModel;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

@SuppressWarnings({ "unchecked", "serial" })
public class ExaminationAction extends ActionSupport {
	private Examination util;
	private PageModel<Examination> pageModel;
	private List<Fruit> listFruit;
	private String errMsg;
	private String field;
	private String fieldValue;
	private ObjectManager objectManager;
	public String count;

	public String initUtil() throws Exception{
		listFruit = objectManager.getUtil("from Fruit");
		util = null;
		return "saveOrUpdate";
	}

	public String saveOrUpdateObject() throws Exception{
		objectManager.saveOrUpdateObject(util);
		util = null;
		errMsg = null;
		return getAllUtil();
	}


	public String deleteManyUtil() throws Exception {
		HttpServletRequest request = ServletActionContext.getRequest();
		String ids[] = request.getParameterValues("id");
		Examination util = null;
		for (String id : ids) {
			util = new Examination();
			util.setId(Integer.parseInt(id));
			objectManager.deleteObject(util);
		}
		util = null;
		return getAllUtil();
	}	public String deleteUtil() throws Exception{
		objectManager.deleteObject(util);
		util = null;
		errMsg = null;
		return getAllUtil();
	}

	public String selectUtil() throws Exception{
		listFruit = objectManager.getUtil("from Fruit");
		util = (Examination) objectManager.getObject(new Examination(), util.getId());
		return "saveOrUpdate";
	}

	public String getAllUtil() throws Exception{
		Map session = ActionContext.getContext().getSession();
		String type = (String) session.get("type");
		int id = (Integer) session.get("id");
		if (null == pageModel) {
			pageModel = new PageModel<Examination>();
		}
		if (0 == pageModel.getCurrentPageNo()) {
			pageModel.setCurrentPageNo(1);
		}
		StringBuilder _sql = new StringBuilder();
		StringBuilder sql = new StringBuilder("select count(*) from Examination where 1 = 1 and s_2 = '通过'");
		_sql.append(" from Examination where 1 = 1 ");
		if (!"admin".equals(type)) {
			_sql.append(" and user.id = " + id);
			sql.append(" and user.id = " + id);
		}
		if (null != field && field.trim().length() > 0) {
			fieldValue = new String(fieldValue.getBytes("iso-8859-1"), "utf-8");
			_sql.append(" and " + field + " like '%" + fieldValue + "%'");
			sql.append(" and " + field + " like '%" + fieldValue + "%'");
		}
		
		@SuppressWarnings("rawtypes")
		List list = objectManager.getUtil(sql.toString());
		if(null != list.get(0)){
			count = list.get(0) + "";
		}else{
			count = "0";
		}
		pageModel = objectManager.getUtil(_sql.toString(), pageModel.getCurrentPageNo());
		errMsg = null;
		return "find";
	}

	public Examination getUtil() {
		return util;
	}

	public void setUtil(Examination util) {
		this.util = util;
	}

	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getFieldValue() {
		return fieldValue;
	}

	public void setFieldValue(String fieldValue) {
		this.fieldValue = fieldValue;
	}

	public ObjectManager getObjectManager() {
		return objectManager;
	}

	public void setObjectManager(ObjectManager objectManager) {
		this.objectManager = objectManager;
	}

	public PageModel<Examination> getPageModel() {
		return pageModel;
	}

	public void setPageModel(PageModel<Examination> pageModel) {
		this.pageModel = pageModel;
	}

	public List<Fruit> getListFruit() {
		return listFruit;
	}

	public void setListFruit(List<Fruit> listFruit) {
		this.listFruit = listFruit;
	}

}
