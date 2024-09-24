
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/answerSql")
public class answerSql extends HttpServlet{
	private static String jdbcDriver = "oracle.jdbc.OracleDriver";// 连接驱动,无需改
	
	
	private static Connection conn;
	public static Statement st;
	
	static {
		try {
			Class.forName(jdbcDriver);// 加载驱动类
			 conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Orcl","scott","tiger");
			// 驱动利用驱动地址，数据库用户名，密码创建连接
			st = conn.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//以上基本是固定格式的
	
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) //
			throws ServletException, IOException {
		List<Map> list =new ArrayList<Map>();//创建list集合用于存入map的键值对集合
		
		String key = request.getParameter("answerkey");//接收到前台传来的数据
	
		System.out.println(key);
		//System.out.println("11111111");
		
		try {
			String sql ="select * from ALLILLS where NAME like '%"+key+"%' ";
			//复制之前的sql代码    每行必须要转换为字符串然后加上换行符
			//						key是用户传入的数据用于查询用户需要的信息
			
			ResultSet rs = st.executeQuery(sql);
			//从数据库读取的内容，返回一个结果集。
			
			System.out.println("获取数据");
			int i=0;
			while (rs.next() && i<5) {
				String name = rs.getString("name");
				String ills = rs.getString("ills");
				i+=1;
				
				//获取用循环接收数据库的表格信息
				
				Map map = new HashMap(); 
				map.put("name", name);			
				map.put("ills", ills);	
				//用键值对存入到map集合中
				System.out.println(map);
				list.add(map);//在将map集合对象存入list集合
				System.out.println("放入集合");
				for (Map map_1 :list) {
					System.out.println(map_1);
				}//在打印台遍历出数据查看是否有错误
				
			}//遍历结果集
		} catch (Exception e) {
			e.printStackTrace();
		}
	
 
		System.out.println("跳转");
		request.setAttribute("res_list",list);//将list集合数据放入到request中共享
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		
		//跳转到index.jsp页面
	}
}
