package Messaging;

import java.io.Serializable;

public class Message implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public enum Type {
		initial,
		chat
	};
	
	public Type type;
	public Integer tableNo; 

}
