package kr.co.khjsoft.cocktail.handler;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;

import kr.co.khjsoft.cocktail.dto.ResponseDto;


@ControllerAdvice
@RestController
public class GlobalExceptionHandler {
	
	
	@ExceptionHandler(value=Exception.class)
	public ResponseDto<String> handleArgumentException(Exception e) {
		return new ResponseDto<String>(HttpStatus.INTERNAL_SERVER_ERROR.value(), e.getMessage()); // 500
	}
	
//	@ExceptionHandler(value=IllegalArgumentException.class)
//	public String handleArgumentException(IllegalArgumentException e) {
//		return "<h1>" + e.getMessage()+"</h1>";
//	}
//	
//	@ExceptionHandler(value=EmptyResultDataAccessException.class)
//	public String handleArgumentException(EmptyResultDataAccessException e) {
//		return "<h1>" + e.getMessage()+"</h1>";
//	}
}
