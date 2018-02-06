//package Test;
//
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.Statement;
//import java.util.Date;
//
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.context.ApplicationContext;
//import org.springframework.context.support.GenericXmlApplicationContext;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import dao.IMemberDao;
//import model.Member;
//
//@RunWith(SpringJUnit4ClassRunner.class)
//
//public class MemberTest {
//	public static void main(String[] args){
//		ApplicationContext context
//		= new GenericXmlApplicationContext("/Test/applicationContext.xml");
//		IMemberDao memberDao = context.getBean("memberDao",IMemberDao.class);
//		
//		for(Member m : memberDao.selectAllMember())
//			System.out.println(m);
//		
////		Member member = new Member();
////		Date today = new Date();
////		member.setEmail("email@gmail.com");
////		member.setAge(20);
////		member.setGold_amount(12.1);
////		member.setName("테스트");
////		member.setPurpose(1);
////		member.setPwd("salkfdjasdjflk");
////		member.setJoin_date(today);
////		
////		System.out.println(member.getAge());
////		System.out.println(member.getEmail());
////		System.out.println(member.getGold_amount());
////		System.out.println(member.getM_id());
////		System.out.println(member.getName());
////		System.out.println(member.getPurpose());
////		System.out.println(member.getPwd());
////		System.out.println(member.getJoin_date());
////		memberDao.insertMember(member);
//	}
//}
