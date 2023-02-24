package email;

import java.util.Map;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class NaverSMTP {
	private final Properties serverInfo;	// 서버 정보
	private final Authenticator auth;		// 인증 정보
	
	public NaverSMTP() {
		serverInfo = new Properties();
		serverInfo.put("mail.smtp.host", "smtp.naver.com"); //메일 서버 지정
		serverInfo.put("mail.smtp.port", "465"); 			// 포트 번호    거의 대부분 통일
		serverInfo.put("mail.smtp.starttls.enable", "true");
		serverInfo.put("mail.smtp.auth", "true");
		serverInfo.put("mail.smtp.debug", "true");
		serverInfo.put("mail.smtp.socketFactory.port", "465");
		serverInfo.put("mail.smtp.socketFactory.class", 
				"javax.net.ssl.SSLSocketFactory");
		serverInfo.put("mail.smtp.socketFactory.fallback", "false");
		
		serverInfo.put("mail.smtp.ssl.protocols", "TLSv1.2"); //맥에서 반드시
		
		auth = new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("austiny@naver.com", "H98SRMJTZ3KU");
			}
		};
	}

	public void emailSending(Map<String, String> mailInfo) throws MessagingException {
		// 1. 세션 생성 (네이버/다음/구글 메일 서버에 사용자 인증)
		Session session = Session.getInstance(serverInfo, auth);
		session.setDebug(true);
		// 2. 메세지 작성
		MimeMessage msg = new MimeMessage(session);
		msg.setFrom(new InternetAddress(mailInfo.get("from")));
		msg.addRecipient(Message.RecipientType.TO, new InternetAddress(mailInfo.get("to")));
		msg.setSubject(mailInfo.get("subject"));
		msg.setContent(mailInfo.get("content"), mailInfo.get("format"));
		// 3. 전송
		Transport.send(msg);
	}
	
}
