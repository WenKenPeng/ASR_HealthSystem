
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
	private static String jdbcDriver = "oracle.jdbc.OracleDriver";// ��������,�����
	
	
	private static Connection conn;
	public static Statement st;
	
	static {
		try {
			Class.forName(jdbcDriver);// ����������
			 conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:Orcl","scott","tiger");
			// ��������������ַ�����ݿ��û��������봴������
			st = conn.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//���ϻ����ǹ̶���ʽ��
	
	
	
	protected void service(HttpServletRequest request, HttpServletResponse response) //
			throws ServletException, IOException {
		List<Map> list =new ArrayList<Map>();//����list�������ڴ���map�ļ�ֵ�Լ���
		
		String key = request.getParameter("answerkey");//���յ�ǰ̨����������
	
		System.out.println(key);
		//System.out.println("11111111");
		
		try {
			String sql ="select * from ALLILLS where NAME like '%"+key+"%' ";
			//����֮ǰ��sql����    ÿ�б���Ҫת��Ϊ�ַ���Ȼ����ϻ��з�
			//						key���û�������������ڲ�ѯ�û���Ҫ����Ϣ
			
			ResultSet rs = st.executeQuery(sql);
			//�����ݿ��ȡ�����ݣ�����һ���������
			
			System.out.println("��ȡ����");
			int i=0;
			while (rs.next() && i<5) {
				String name = rs.getString("name");
				String ills = rs.getString("ills");
				i+=1;
				
				//��ȡ��ѭ���������ݿ�ı����Ϣ
				
				Map map = new HashMap(); 
				map.put("name", name);			
				map.put("ills", ills);	
				//�ü�ֵ�Դ��뵽map������
				System.out.println(map);
				list.add(map);//�ڽ�map���϶������list����
				System.out.println("���뼯��");
				for (Map map_1 :list) {
					System.out.println(map_1);
				}//�ڴ�ӡ̨���������ݲ鿴�Ƿ��д���
				
			}//���������
		} catch (Exception e) {
			e.printStackTrace();
		}
	
 
		System.out.println("��ת");
		request.setAttribute("res_list",list);//��list�������ݷ��뵽request�й���
		request.getRequestDispatcher("/index.jsp").forward(request, response);
		
		//��ת��index.jspҳ��
	}
}
