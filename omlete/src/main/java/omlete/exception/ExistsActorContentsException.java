package omlete.exception;

import lombok.Getter;
import omlete.dto.ActorContents;

 
public class ExistsActorContentsException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	@Getter
	private ActorContents actorC;
	
	public ExistsActorContentsException() {
		// TODO Auto-generated constructor stub
	}
	
	public ExistsActorContentsException(String message, ActorContents actorC) {
		super(message);
		this.actorC=actorC;
	}
}