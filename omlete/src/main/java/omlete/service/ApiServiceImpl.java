package omlete.service;

import java.io.BufferedReader;
import java.io.Console;
import java.io.InputStreamReader;
import java.net.URL;
import java.sql.Array;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import omlete.service.ActorsService;
import omlete.service.ActorContentsService;
import omlete.dto.ActorContents;
import omlete.dto.Actors;
import omlete.dto.Contents;

@Service
@RequiredArgsConstructor
public class ApiServiceImpl implements ApiService{
	
	private final ActorsService actorsService;
	private final ActorContentsService actorCService;
	
	@Override
	public List<String> getmid(int page) {	
		List<String> list = new ArrayList();
		
		
		// 인증키 (개인이 받아와야함)
		String key = "2f619d605e8a65b90a65eceaec054524";
	
		// 파싱한 데이터를 저장할 변수
		String result = "";
		String mid="";
		
		try {			
			//첫번쩨 url 페이지당 20개씩 영화정보 출력
			URL url = new URL("https://api.themoviedb.org/3/discover/movie?api_key="
					+ key + "&watch_region=KR&language=ko&page="+ page);
	
			BufferedReader bf;
	
			bf = new BufferedReader(new InputStreamReader(url.openStream(), "UTF-8"));
	
			result = bf.readLine();   		
			
	    	JSONParser jsonParser = new JSONParser();
	    	JSONObject jsonObject = (JSONObject)jsonParser.parse(result);
	    	
	    	JSONArray results = (JSONArray) jsonObject.get("results");
	    	for(int i=0;i<results.size();i++) {
		    	String rn = null;
		    	JSONObject r = (JSONObject) results.get(i);
	    		rn=String.valueOf(r.get("id")) ;
	    		mid = rn;
	    		list.add(mid);
	    	}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}

	@SuppressWarnings("null")
	public String setActor(String mid) {
		// 인증키 (개인이 받아와야함)
    	String key = "2f619d605e8a65b90a65eceaec054524";

    	// 파싱한 데이터를 저장할 변수
    	String actresult = "";
    	String result1 = "";

    	Actors act;
    	ActorContents actC;

    	int a=0;
    	try {
    			
        		//2번째 url 1가지 영화에 대한 상세정보 보여줌
        		URL url1 = new URL("https://api.themoviedb.org/3/movie/"+mid+"?api_key="
        				+ key + "&watch_region=KR&language=ko&append_to_response=credits,release_dates");
            	
            	BufferedReader bf1;

        		bf1 = new BufferedReader(new InputStreamReader(url1.openStream(), "UTF-8"));

        		result1 = bf1.readLine();

            	JSONParser jsonParser1 = new JSONParser();
            	JSONObject jsonObject1 = (JSONObject)jsonParser1.parse(result1);
            	
            	//출연진(감독, 작가, 배우)정보를 가져옴
            	JSONObject credits = (JSONObject)jsonObject1.get("credits");                      	
            	JSONArray cast = (JSONArray) credits.get("cast");                 	
            	
            	for(int k=0; k<cast.size(); k++) {
            		actC=new ActorContents();
        			act=new Actors();
            		
            		JSONObject castlist=(JSONObject)cast.get(k);
            		URL acturl = new URL("https://api.themoviedb.org/3/person/"+castlist.get("id")+"?api_key="
            				+ key + "&append_to_response=credits");
            		
            		BufferedReader actbf;

            		actbf = new BufferedReader(new InputStreamReader(acturl.openStream(), "UTF-8"));

            		actresult = actbf.readLine();   		
            		
                	JSONParser actjsonParser = new JSONParser();
                	JSONObject actjsonObject = (JSONObject)actjsonParser.parse(actresult);
            		JSONArray also_known_as = (JSONArray) actjsonObject.get("also_known_as");
            		
            		System.out.print("배우 : ");
            		if(castlist.get("known_for_department").equals("Acting")) {
            			for(int an=0;an<also_known_as.size();an++) {

            				if(((String) also_known_as.get(an)).matches(".*[ㄱ-ㅎㅏ-ㅣ가-힣]+.*")) {
            					System.out.print("actTname:"+also_known_as.get(an));
            					act.setActorName(String.valueOf(also_known_as.get(an)));
            					break;
            				}else {
            					act.setActorName(null);
            				}
            				
            			}     			
            			a++;
            			   			
            		}
            		act.setActorNo(Integer.parseInt(String.valueOf(castlist.get("id"))));
        			act.setActorOname(String.valueOf(castlist.get("name")));
        			act.setActorImg(String.valueOf(castlist.get("profile_path")));
        			
        			actC.setActorContentsId(Integer.parseInt(mid));
        			actC.setActorId(Integer.parseInt(String.valueOf(castlist.get("id"))));
        			
        			actorsService.addActors(act);
        			actorCService.addActorContents(actC);

            		if(a==3) {
        				break;
        			}
            		  
            	}


    	}catch(Exception e) {
    		e.printStackTrace();
    	}
		return "good";
	
	}


	
	
}
