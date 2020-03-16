package com.bitcamp.dd;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bitcamp.dto.DataDTO;
import com.bitcamp.dto.MemberDTO;

@Controller
public class Hello {
    @RequestMapping("/t1")
	 @ResponseBody
     public DataDTO t1()
	 {
		 MemberDTO dto= new MemberDTO();
		 dto.setName("aa");
		 dto.setAge(10);
		 
		 MemberDTO dto2= new MemberDTO();
		 dto2.setName("aa2");
		 dto2.setAge(20);
		 
		 ArrayList<MemberDTO> arr=new ArrayList<>(); 
		  arr.add(dto); arr.add(dto2);
		  
		  DataDTO datad=new DataDTO();
		  datad.setData(arr);
		 return datad;
	 }
	
    @RequestMapping("/ttt")
    public String result()
    {
    	return "ttt";
    }
	
}
