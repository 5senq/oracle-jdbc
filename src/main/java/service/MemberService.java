package service;

import java.sql.*;

import dao.MemberDao;
import util.DBUtil;
import vo.Member;

public class MemberService {
	private MemberDao memberDao;
	
	// 1) 로그인 service
	public Member loginService(Member member) {
		Member resultMember = null;
		Connection conn = null;
		
		try {
			conn = DBUtil.getConnection();
			resultMember = memberDao.loginDao(conn, member);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return resultMember;
	}
	
	// 2) 회원가입 service
	public int insertMemberService(Member member) {
		int resultRow = 0;
		Connection conn = null;
		
		try {
			this.memberDao = new MemberDao();
			conn = DBUtil.getConnection();
			resultRow = memberDao.insertMemberDao(conn, member);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return resultRow;
	}
	
	// 3) 회원수정 service
	public int updateMemberService(Member member) {
		int resultRow = 0;		
		Connection conn = null;
		
		try {
			this.memberDao = new MemberDao();
			conn = DBUtil.getConnection();
			resultRow = memberDao.updateMemberDao(conn, member);
			conn.commit();
		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return resultRow;
	}
	// 4) 회원삭제 service
	public int deleteMemberService(Member member) {
		int resultRow = 0;		
		Connection conn = null;
		
		try {
			this.memberDao = new MemberDao();
			conn = DBUtil.getConnection();
			resultRow = memberDao.deleteMemberDao(conn, member);
		} catch(Exception e) {
			try {
				conn.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			if(conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		
		return resultRow;
	}
}
