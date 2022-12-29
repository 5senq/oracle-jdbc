package service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import dao.BoardDao;
import util.DBUtil;
import vo.Board;

public class BoardService {
	private BoardDao boardDao;
	
	public ArrayList<Board> getBoardListByPage(int currentPage, int rowPerPage) {
		/*
		 	1) connection 생성 <- DBUtil.class
		 	2) beginRow, endRow 생성 <- currentPage,rowPerPage를 가공
		 */
		ArrayList<Board> list = null;
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			int beginRow = (currentPage-1)*rowPerPage+1;
			int endRow = beginRow + rowPerPage - 1;
			boardDao = new BoardDao();
			list = boardDao.selectBoardListByPage(conn, beginRow, endRow);
			conn.commit(); // DBUtil.class에서 conn.setAutoCommit(false);
		} catch (Exception e) {
			try {
				conn.rollback(); // DBUtil.class에서 conn.setAutoCommit(false);
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	public Board getBoardListByNo(Board board) {
		Board returnBoard = null;
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			boardDao = new BoardDao();
			returnBoard = boardDao.selectBoardListByNo(conn, board);
			conn.commit();
		} catch(Exception e) {
			try {
				conn.rollback();
			} catch(Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return returnBoard;
	}
	
	public boolean getInsertBoard(Board board) {
		boolean result = false;
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			boardDao = new BoardDao();
			result = boardDao.insertBoard(conn, board);
			conn.commit();
		} catch(Exception e) {
			try {
				conn.rollback();
			} catch(Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public boolean getUpdateBoard(Board board) {
		boolean result = false;
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			boardDao = new BoardDao();
			result = boardDao.updateBoard(conn, board);
			conn.commit();
		} catch(Exception e) {
			try {
				conn.rollback();
			} catch(Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		return result;
	}
	
	public int getDeleteBoard(Board board) {
		int result = 0;
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			boardDao = new BoardDao();
			result = boardDao.removeBoard(conn, board);
			conn.commit();
		} catch(Exception e) {
			try {
				conn.rollback();
			} catch(Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
	
	public int getBoardCount() {
		int result = 0;
		Connection conn = null;
		try {
			conn = DBUtil.getConnection();
			boardDao = new BoardDao();
			result = boardDao.selectBoardCount(conn);
			conn.commit();
		} catch(Exception e) {
			try {
				conn.rollback();
			} catch(Exception e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		return result;
	}
}