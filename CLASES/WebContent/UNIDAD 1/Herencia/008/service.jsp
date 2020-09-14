<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="unidad1.Validator"
    %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="author" content="swd">
	<meta name="description" content="Demostración de Herencia en POO.">
	<title>BackEnd: Demostración de Herencia en POO.</title>
</head>
<body>
	<%
	if(request.getParameter("htmlTAG") != "" &&
		request.getParameter("htmlTAG").matches("(0|1|2|3)") &&
		request.getParameter("htmlContent") != ""){
		
		Validator validator = new Validator();
		int htmlTAG = Integer.parseInt(request.getParameter("htmlTAG").toString().trim());
		String htmlContent = validator.cleanHTMLContent(request.getParameter("htmlContent"));
		
		if(htmlTAG == 0){
			SpanTag span = new SpanTag(htmlContent);
			span.setStyle("color:green;");
			out.print(span.print());

		}else if(htmlTAG == 1){
			ParagraphTag p = new ParagraphTag(htmlContent);
			p.setStyle("color:green;");
			out.print(p.print());

		}else if(htmlTAG == 2){
			AnchorTag a = new AnchorTag("index.jsp",htmlContent);
			a.setStyle("color:'green';");
			out.print(a.print());

		}else{
			DivTag div = new DivTag(htmlContent);
			div.setStyle("color:'green';");
			out.print(div.print());
		}
		
	}else{
		out.print("<span style='color:red;>Los parámetros o alguno de ellos no es válido</span>");
	}

	%>
	
<%!
	public class HTMLTag{
	
	protected String name;
	protected String style;
	protected String content;
	
	public HTMLTag(){
		this.style = "";
		this.content = "";
	}
	
	public HTMLTag(String name, String style, String content){
		this.name = name;
		this.style = style;
		this.content = content;
	}
	
	public void setName(String name){
		this.name = name;
		}
	
	public void setStyle(String style){
		this.style = style;
	}
	
	public void setContent(String content){
		this.content = content;
	}
	
	public String getName(){
		return this.name;
		}
	
	public String getStyle(){
		return this.style;
		}
	
	public String getContent(){
		return this.content;
		}
	
	public String print(){
		
		StringBuilder styleTag = new StringBuilder("");
		if(this.style.length()>0){
			styleTag.append(" style='");
			styleTag.append("this.style");
			styleTag.append("'");
		}
		StringBuilder result = new StringBuilder(String.format("<%s%s>",this.name,style.toString()));
		result.append(this.content);
		result.append(String.format("</%s>",this.name));
		return result.toString();
	}
}

%>
<%!
public class ParagraphTag extends HTMLTag{
	public ParagraphTag(){
		this.name="p";
	}
	
	public ParagraphTag(String content){
		this.content = content;
		this.name = "p";
	}
	
	}

%>

<%!
public class AnchorTag extends HTMLTag{
	private String href;
	
	public AnchorTag(){
		this.href = "";
		this.name = "a";
	}
	
	public AnchorTag(String href, String content){
		this.href = href;
		this.content = content;
		this.name = "a";
	}
	
	public AnchorTag(String content){
		this.href = "";
		this.content = content;
		this.name = "a";
	}
	
	public String print(){
			
			StringBuilder styleTag = new StringBuilder("");
			StringBuilder hrefTag = new StringBuilder("");
			if(this.style.length()>0){
				styleTag.append(" style='");
				styleTag.append("this.style");
				styleTag.append("'");
			}
			if(this.href.length()>0){
				hrefTag.append(String.format(" href='%s'",this.href));
			}
			
			StringBuilder result = new StringBuilder(String.format("<%s%s%s>",
					this.name,
					styleTag.toString(),
					hrefTag.toString()));
			
			result.append(this.content);
			result.append(String.format("</%s>",this.name));
			return result.toString();
		}	
}
%>
<%!
public class SpanTag extends HTMLTag{
	public SpanTag(){
		this.name = "span";
	}
	
	public SpanTag(String content){
		this.name = "span";
		this.content = content;
	}
}
%>

<%!
public class DivTag extends HTMLTag{
	
	public DivTag(){
		this.name = "div";
	}
	
	public DivTag(String content){
		this.name = "div";
		this.content = content;
	}
}

%>

</body>
</html>
