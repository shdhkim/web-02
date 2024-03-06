package kr.ac.hansung.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;

import kr.ac.hansung.model.AttLecture;
//스프링에서 스캔하다가 @Component가 있으면 해당되는 class를 바탕으로 하여 빈으로 등록해준다.
@Repository

public class AttLectureDao {

	
	private JdbcTemplate jdbcTemplate;

	//이 메소드를 호출할 시에 DataSource를 의존성 주입을 통해서 주입해 준다.
	@Autowired
	 public void setDataSource(DataSource dataSource) {

		
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	// 수강 학기별 데이터베이스를 보기 위한 메소드이다.
	public List<AttLecture> getLecture() {
		String sqlStatement = "select distinct year, term, sum(credit) from lectures "
				+ "group by year, term order by year asc;";
		return jdbcTemplate.query(sqlStatement, new RowMapper<AttLecture>() {

			@Override
			public AttLecture mapRow(ResultSet rs, int rowNum) throws SQLException {

				 AttLecture lecture = new AttLecture();

				 lecture.setYear(rs.getInt("year"));
				 lecture.setTerm(rs.getInt("term"));
				 lecture.setCredit(rs.getInt(3));

				return lecture;

			}

		});

	}
	// 년도와 학기를 인자로 받아서 해당 년도와 학기에 따른 데이터를 리턴한다.
	
	public List<AttLecture> getLectureByYearTerm(int year, int term) {

		String sqlStatment = "select * from lectures where year=? and term=?";

		return jdbcTemplate.query(sqlStatment, new Object[] { year, term }, new RowMapper<AttLecture>() {

			@Override
			public AttLecture mapRow(ResultSet rs, int rowNum) throws SQLException {

				AttLecture lecture = new AttLecture();

				lecture.setYear(rs.getInt("year"));
				lecture.setTerm(rs.getInt("term"));
				lecture.setCode(rs.getString("code"));
				lecture.setTitle(rs.getString("title"));
				lecture.setPart(rs.getString("part"));
				lecture.setCredit(rs.getInt("credit"));
				lecture.setProfessor(rs.getString("professor"));
				return lecture;
			}

		});
	}


	// DB에 삽입하는 메소드이다.
	
	public boolean insert(AttLecture lecture) {
		int year = lecture.getYear();
		int term = lecture.getTerm();
		String code = lecture.getCode();
		String title = lecture.getTitle();
		String part = lecture.getPart();
		int credit = lecture.getCredit();
		String professor = lecture.getProfessor();
		String sqlStatment = "insert into lectures (year, term, code, title, part, credit, professor) values (?, ?, ?, ?, ?, ?, ?)";

		return (jdbcTemplate.update(sqlStatment,
				new Object[] { year, term, code, title, part, credit,professor }) == 1);
	}

	// DB를 수정하는 메소드이다. 
	public boolean update(AttLecture lecture) {

		int year = lecture.getYear();
		int term = lecture.getTerm();
		String code = lecture.getCode();
		String title = lecture.getTitle();
		String part = lecture.getPart();
		int credit = lecture.getCredit();
		String professor = lecture.getProfessor();
		String sqlStatment = "update lectures set year=?, term=?, code=?, title=?, part=?, credit=?, professor=?";

		return (jdbcTemplate.update(sqlStatment,
				new Object[] { year, term, code, title, part, credit }) == 1);
	}

	// DB에 삭제하는 메소드이다.
	public boolean delete(int code) {

		String sqlStatment = "delete from lectures where code=?";

		return (jdbcTemplate.update(sqlStatment, new Object[] { code }) == 1);

	}

}
