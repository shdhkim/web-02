package kr.ac.hansung.model;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@ToString 
public class AttLecture {
	
	//년도와 학기는 고정되니까 오류메시지를 출력할 필요가 없다.
	private int year;
	
	private int term;
	// |^$ 이부분을 넣어줘야 오류메시지가 2개로 출력되지 않는다. V숫자*6개 이런 형식으로 쓰지 않으면 오류가 출력된다. 
	@NotEmpty(message="교과코드가 비어있습니다")
	@Pattern(regexp="^V[0-9]{6}$|^$", message="유효하지 않은 교과코드입니다")
	private String code;
	
	@NotEmpty(message="교과목명이 비어있습니다")
	private String title;
   // 아무것도 입력하지 않았을 시에 비어있다고 오류가 뜬다. 전선,전필,교양 이 3개중에 하나를 써야한다.
	@NotEmpty(message="교과구분이 비어있습니다")
	@Pattern(regexp="^(전선|전필|교양)$|^$", message="유효하지 않은 교과코드입니다")
	private String part;
	
	@NotEmpty(message="담당교수가 비어있습니다")
    private String professor;
	

	private int credit;
	
	
	
}
