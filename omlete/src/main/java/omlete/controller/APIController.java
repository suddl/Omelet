package omlete.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;
import omlete.dto.Contents;
import omlete.exception.ExistsActorContentsException;
import omlete.exception.ExistsActorsException;
import omlete.exception.ExistsContentsException;
import omlete.service.ApiService;
import omlete.service.ContentsService;

@Controller
@RequestMapping("/api")
@RequiredArgsConstructor
public class APIController {
	private final ContentsService contentsService;	
	private final ApiService apiService;
	
	@RequestMapping(value ="/movie", method = RequestMethod.GET, params = {"page"})
	public String getInfoMovie(Model m, @RequestParam("page") int page) 
			throws IllegalAccessException, ExistsActorsException, ExistsContentsException, ExistsActorContentsException {
		
		List<String> mid=apiService.getMoviemid(page);
		System.out.println("mid"+mid);
		Contents vo = null;
		// 인증키 (개인이 받아와야함)
		String key = "2f619d605e8a65b90a65eceaec054524";
	
		// 파싱한 데이터를 저장할 변수
		String result = "";
		String imgresult = "";
		String name="";
		String countryname="";
		
		try {

	    	for(int i=0;i<mid.size();i++) {
	    		vo = new Contents();
	    		name = "";
	    		
	        	System.out.println("mid:"+mid.get(i));
	
	    		//영화에 대한 상세정보 보여줌
	    		URL url1 = new URL("https://api.themoviedb.org/3/movie/"+mid.get(i)+"?api_key="
	    				+ key + "&watch_region=KR&language=ko&append_to_response=credits,release_dates");
	        	
	        	BufferedReader bf;
	
	    		bf = new BufferedReader(new InputStreamReader(url1.openStream(), "UTF-8"));
	
	    		result = bf.readLine();

	        	JSONParser jsonParser = new JSONParser();
	        	JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
	        	
	        	//출연진(감독, 작가, 배우)정보를 가져옴
	        	JSONObject credits = (JSONObject)jsonObject.get("credits");           
    	
	        	//장르 id name 값 가져옴
	        	JSONArray genres = (JSONArray) jsonObject.get("genres");
	        	//제작 나라 정보를 가져옴
	        	JSONArray procoun = (JSONArray) jsonObject.get("production_countries");
	        	
	        	JSONObject release_dates = (JSONObject)jsonObject.get("release_dates"); 
	        	JSONArray rdresult = (JSONArray) release_dates.get("results");
	        	
	        	boolean fkr=false;
	        	String cer=null;
	        	
	        	for(int q=0;q<rdresult.size();q++) {
            		JSONObject ratelist=(JSONObject)rdresult.get(q);
            		if(ratelist.get("iso_3166_1").equals("KR")) {
            			fkr=true;
            			JSONArray release_dates1 = (JSONArray)ratelist.get("release_dates");
            			for(int w=0;w<release_dates1.size();w++) {				 
                			JSONObject rdresult1 = (JSONObject) release_dates1.get(w);
                			
                			if(rdresult1.get("certification")!=null) {
                				cer=rdresult1.get("certification").toString();
                				break;
                			}
                			
            			}
            			break;
            			
            		}	
            		
            	}
            	
            	//연령등급
            	String certificationValue = "";
            	if(!fkr) {
            		outerLoop:
            		for(int t = 0; t < rdresult.size(); t++) {
            			
                			JSONObject ratelist=(JSONObject)rdresult.get(t);
                		
                			JSONArray release_dates1 = (JSONArray)ratelist.get("release_dates");
                			for(int w=0;w<release_dates1.size();w++) {				 
                    			JSONObject rdresult1 = (JSONObject) release_dates1.get(w);
                    			Object certificationObj = rdresult1.get("certification");
                    			if(certificationObj instanceof String) {
                    				String certification = (String) certificationObj;
                    	            if (!certification.isEmpty()) { // certification 값이 비어 있지 않은 경우에만 처리
                    	                certificationValue = certification; // certification 값이 비어 있지 않으면 저장

                    	                cer=certificationValue;
                    	                // 바깥쪽 루프도 종료
                    	                break outerLoop; 
                    	            }
                    			}			                   				
                			}
                	}	

            	}
            	
            	vo.setContentsRating(cer);
	        	
	        	//장르 이름만 모두 더해서 name에 저장
	        	for(int j=0;j<genres.size();j++) {
	        		
	        		JSONObject genres_genNm=(JSONObject)genres.get(j);
	        		name+=genres_genNm.get("name")+" ";
	        	}
	        	
	        	JSONArray crew = (JSONArray) credits.get("crew");
	        	
	        	//작가
	        	for(int d=0;d<crew.size();d++) {
	        		JSONObject crews=(JSONObject)crew.get(d);
	            	if(crews.get("known_for_department").equals("Writing")) {
	            		vo.setContentsStaff(String.valueOf(crews.get("original_name")));
	        			break;
	        		}
	        	}
	        	//감독
	        	for(int d=0;d<crew.size();d++) {
	        		JSONObject crews=(JSONObject)crew.get(d);
	            	if(crews.get("known_for_department").equals("Directing")) {
	            		vo.setContentsDirector(String.valueOf(crews.get("original_name")));
	        			break;
	        		}
	        	}
	        	
	        	//영화 사진 가져오기
	    		URL imgurl = new URL("https://api.themoviedb.org/3/movie/"+jsonObject.get("id")+"/images?api_key="
	    				+ key);
	    		
	    		BufferedReader imgbf;
	
	    		imgbf = new BufferedReader(new InputStreamReader(imgurl.openStream(), "UTF-8"));
	
	    		imgresult = imgbf.readLine();   		
	    		
	        	JSONParser imgjsonParser = new JSONParser();
	        	JSONObject imgjsonObject = (JSONObject)imgjsonParser.parse(imgresult);
	        	JSONArray backdrops = (JSONArray) imgjsonObject.get("backdrops");
	        	//영화 이미지 불러오기
	        	for(int o=0; o<3; o++) {
	        		JSONObject imgp=(JSONObject) backdrops.get(o);
	        		
	        		if(o==0) {
	        			vo.setContentsPhoto1(String.valueOf(imgp.get("file_path")));
	        		}else if(o==1) {
	        			vo.setContentsPhoto2(String.valueOf(imgp.get("file_path")));
	        		}else if(o==2) {
	        			vo.setContentsPhoto3(String.valueOf(imgp.get("file_path")));
	        		}

	        	}

	        	if (procoun != null && !procoun.isEmpty()) {
                    JSONObject pron = (JSONObject) procoun.get(0);
                    countryname = (String) pron.get("name");
                } else {
                    // 예외 처리를 수행하거나 기본값을 설정합니다.
                    countryname = "-";
                }
	        	
	        	vo.setContentsNo(Integer.parseInt(String.valueOf(jsonObject.get("id"))));
	        	vo.setContentsType("영화");
	        	vo.setContentsOname(String.valueOf(jsonObject.get("original_title")));
	        	vo.setContentsTname(String.valueOf(jsonObject.get("title")));
	        	vo.setContentsPoster(String.valueOf(jsonObject.get("poster_path")));
	        	vo.setContentsOverview((String.valueOf(jsonObject.get("overview"))));
	        	vo.setContentsGenre(name);
	        	vo.setContentsCountries(countryname);
	        	vo.setContentsStartdate(String.valueOf(jsonObject.get("release_date")));
	        	vo.setContentsRuntime(Integer.parseInt(String.valueOf(jsonObject.get("runtime"))));
	        	vo.setContentsTagline(String.valueOf(jsonObject.get("tagline")));
	        	
	        	System.out.println("contents="+vo);
	        	
	        	try {
	                contentsService.addContents(vo);
	            } catch (ExistsContentsException e) {
	            	e.printStackTrace();
	            }
        	
	        	apiService.setActor(mid.get(i));
	    	}
	
		}catch(Exception e) {
			e.printStackTrace();
		}
	
		
		return "detail/api";
	}
	
	@RequestMapping(value ="/tv", method = RequestMethod.GET, params = {"pages"})
	public String getInfoTv(Model m, @RequestParam("pages") int pages) throws IllegalAccessException {
		
		List<String> mid=apiService.getTvmid(pages);

		Contents vo = null;
		// 인증키 (개인이 받아와야함)
		String key = "2f619d605e8a65b90a65eceaec054524";
	
		// 파싱한 데이터를 저장할 변수
		String result = "";
		String imgresult = "";
		String name="";
		String countryname="";
		
		try {

	    	for(int i=0;i<mid.size();i++) {
	    		vo = new Contents();
	    		name = "";
	    		
	        	System.out.println("mid:"+mid.get(i));
	
	    		//영화에 대한 상세정보 보여줌
	    		URL url1 = new URL("https://api.themoviedb.org/3/movie/"+mid.get(i)+"?api_key="
	    				+ key + "&watch_region=KR&language=ko&append_to_response=credits,release_dates");
	        	
	        	BufferedReader bf;
	
	    		bf = new BufferedReader(new InputStreamReader(url1.openStream(), "UTF-8"));
	
	    		result = bf.readLine();

	        	JSONParser jsonParser = new JSONParser();
	        	JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
	        	
	        	//출연진(감독, 작가, 배우)정보를 가져옴
	        	JSONObject credits = (JSONObject)jsonObject.get("credits");           
	        	
	        	
	        	
	        	//장르 id name 값 가져옴
	        	JSONArray genres = (JSONArray) jsonObject.get("genres");
	        	//제작 나라 정보를 가져옴
	        	JSONArray procoun = (JSONArray) jsonObject.get("production_countries");
	        	
	        	JSONObject release_dates = (JSONObject)jsonObject.get("release_dates"); 
	        	JSONArray rdresult = (JSONArray) release_dates.get("results");
	        	
	        	boolean fkr=false;
	        	String cer=null;
	        	for(int q=0;q<rdresult.size();q++) {
            		JSONObject ratelist=(JSONObject)rdresult.get(q);
            		if(ratelist.get("iso_3166_1").equals("KR")) {
            			fkr=true;
            			JSONArray release_dates1 = (JSONArray)ratelist.get("release_dates");
            			for(int w=0;w<release_dates1.size();w++) {				 
                			JSONObject rdresult1 = (JSONObject) release_dates1.get(w);
                			
                			if(rdresult1.get("certification")!=null) {
                				cer=rdresult1.get("certification").toString();
                				break;
                			}
                			
            			}
            			break;
            			
            		}	
            		
            	}
            	
            	//연령등급
            	String certificationValue = "";
            	if(!fkr) {
            		outerLoop:
            		for(int t = 0; t < rdresult.size(); t++) {
            			
                			JSONObject ratelist=(JSONObject)rdresult.get(t);
                		
                			JSONArray release_dates1 = (JSONArray)ratelist.get("release_dates");
                			for(int w=0;w<release_dates1.size();w++) {				 
                    			JSONObject rdresult1 = (JSONObject) release_dates1.get(w);
                    			Object certificationObj = rdresult1.get("certification");
                    			if(certificationObj instanceof String) {
                    				String certification = (String) certificationObj;
                    	            if (!certification.isEmpty()) { // certification 값이 비어 있지 않은 경우에만 처리
                    	                certificationValue = certification; // certification 값이 비어 있지 않으면 저장

                    	                cer=certificationValue;
                    	                // 바깥쪽 루프도 종료
                    	                break outerLoop; 
                    	            }
                    			}			                   				
                			}
                	}	

            	}
            	
            	vo.setContentsRating(cer);
	        	
	        	//장르 이름만 모두 더해서 name에 저장
	        	for(int j=0;j<genres.size();j++) {
	        		
	        		JSONObject genres_genNm=(JSONObject)genres.get(j);
	        		name+=genres_genNm.get("name")+" ";
	        	}
	        	
	        	JSONArray crew = (JSONArray) credits.get("crew");
	        	
	        	//작가
	        	for(int d=0;d<crew.size();d++) {
	        		JSONObject crews=(JSONObject)crew.get(d);
	            	if(crews.get("known_for_department").equals("Writing")) {
	            		vo.setContentsStaff(String.valueOf(crews.get("original_name")));
	        			break;
	        		}
	        	}
	        	//감독
	        	for(int d=0;d<crew.size();d++) {
	        		JSONObject crews=(JSONObject)crew.get(d);
	            	if(crews.get("known_for_department").equals("Directing")) {
	            		vo.setContentsDirector(String.valueOf(crews.get("original_name")));
	        			break;
	        		}
	        	}
	        	
	        	//영화 사진 가져오기
	    		URL imgurl = new URL("https://api.themoviedb.org/3/movie/"+jsonObject.get("id")+"/images?api_key="
	    				+ key);
	    		
	    		BufferedReader imgbf;
	
	    		imgbf = new BufferedReader(new InputStreamReader(imgurl.openStream(), "UTF-8"));
	
	    		imgresult = imgbf.readLine();   		
	    		
	        	JSONParser imgjsonParser = new JSONParser();
	        	JSONObject imgjsonObject = (JSONObject)imgjsonParser.parse(imgresult);
	        	JSONArray backdrops = (JSONArray) imgjsonObject.get("backdrops");
	        	//영화 이미지 불러오기
	        	for(int o=0; o<3; o++) {
	        		JSONObject imgp=(JSONObject) backdrops.get(o);
	        		
	        		if(o==0) {
	        			vo.setContentsPhoto1(String.valueOf(imgp.get("file_path")));
	        		}else if(o==1) {
	        			vo.setContentsPhoto2(String.valueOf(imgp.get("file_path")));
	        		}else if(o==2) {
	        			vo.setContentsPhoto3(String.valueOf(imgp.get("file_path")));
	        		}

	        	}

	        	if (procoun != null && !procoun.isEmpty()) {
                    JSONObject pron = (JSONObject) procoun.get(0);
                    countryname = (String) pron.get("name");
                } else {
                    // 예외 처리를 수행하거나 기본값을 설정합니다.
                    countryname = "-";
                }
	        	
	        	vo.setContentsNo(Integer.parseInt(String.valueOf(jsonObject.get("id"))));
	        	vo.setContentsType("영화");
	        	vo.setContentsOname(String.valueOf(jsonObject.get("original_title")));
	        	vo.setContentsTname(String.valueOf(jsonObject.get("title")));
	        	vo.setContentsPoster(String.valueOf(jsonObject.get("poster_path")));
	        	vo.setContentsOverview((String.valueOf(jsonObject.get("overview"))));
	        	vo.setContentsGenre(name);
	        	vo.setContentsCountries(countryname);
	        	vo.setContentsStartdate(String.valueOf(jsonObject.get("release_date")));
	        	vo.setContentsRuntime(Integer.parseInt(String.valueOf(jsonObject.get("runtime"))));
	        	vo.setContentsTagline(String.valueOf(jsonObject.get("tagline")));
	        	
	        	contentsService.addContents(vo);
	        	
	        	apiService.setActor(mid.get(i));


	    	}
	
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return "detail/api";
	}
	
	
}