package com.sccc.ch11;

import java.util.ListResourceBundle;

public class Example_Cn extends ListResourceBundle{

	  public Object[][] getContents() {
	    return contents;
	  }
	  
	  static final Object[][] contents = {
		  {"count.one", "һ"},
		  {"count.two", "��"},
		  {"count.three", "��"},
	  };
}
