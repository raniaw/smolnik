<!-- START head -->
<html>
 <head>
 <title>Strato Formularbaukasten</title>
 <style type="text/css">
 <!--
ul,body,p,td,tr,table,ol,div{
font-size:11px;
font-family:Verdana;
}
.button{
border-bottom: black 1px solid;
border-left: #297394 1px solid;
border-right: black 1px solid;
border-top: #297394 1px solid;
font-family:Verdana;
font-size: 11px;
text-align:left;
padding-left:5px;
padding-top:2px;
padding-bottom:2px;
font-weight:bolder;
color:black;
background-color:#dfdfdf;
cursor:pointer;
display:inline;
width:auto;
}
.text{
background-color:whitesmoke;
color:#297394;
border:1px solid black;
}
.select{
background-color:whitesmoke;
color:#297394;
}
 -->
 </style>
</head>
<body>
 <form action="{form}" method="post" enctype="multipart/form-data">
 <input type="hidden" name="fid" value="{formular_id}">
 <!-- START error --><p style="color:red">{error}</p><!-- END error -->
 <table><!-- END head --><!-- START input_text -->
 <tr>
  <td>{text_text}<!-- START obl_asterisk --><span style="color:red">*</span><!-- END obl_asterisk --></td>
  <td><input class="text" type="text" name="{name}" value="{value}" size="{size}" maxlength="{maxlength}"></td>
 </tr><!-- END input_text --><!-- START input_checkbox -->
<!-- START one_input_checkbox -->
 <tr>
  <td>
   {text_checkbox}<!-- START obl_asterisk --><span style="color:red">*</span><!-- END obl_asterisk -->
  </td>
  <td>
   <input type="checkbox" name="{name}" value="{value}" <!-- START checked_block -->checked<!-- END checked_block --> /><!-- START br_block --><br /><!-- END br_block --><!-- END one_input_checkbox -->
  </td>
 </tr><!-- END input_checkbox --><!-- START input_radio -->
  <!-- START one_input_radio --><tr><td>
   {text_radio}<!-- START obl_asterisk --><span style="color:red">*</span><!-- END obl_asterisk -->
  </td>
  <td>
   <input type="radio" name="{name}" value="{value}" <!-- START checked_block -->checked<!-- END checked_block --> /><!-- START br_block --><br /><!-- END br_block -->
  </td>
 </tr><!-- END one_input_radio --><!-- END input_radio --><!-- START input_hidden -->
 <tr>
  <td colspan="2">
   <input type="hidden" name="{name}" value="{value}">
  </td>
 </tr><!-- END input_hidden --><!-- START input_img -->
 <tr>
  <td>{text_img}<!-- START obl_asterisk --><span style="color:red">*</span><!-- END obl_asterisk --></td>
  <td>
   <input class="text" type="img" src="{src}" {options} />
  </td>
 </tr><!-- END input_img --><!-- START input_password -->
 <tr>
  <td>{text_password}<!-- START obl_asterisk --><span style="color:red">*</span><!-- END obl_asterisk --></td>
  <td>
   <input class="text" type="password" name="{name}" value="{value}" size="{size}" maxlength="{maxlength}" />
  </td>
 </tr><!-- END input_password --><!-- START input_submit -->
 <tr>
  <td><input class="button" type="reset" name="reset2" value="{rst_value}" /></td>
  <td><input class="button" type="submit" name="submit" value="{sbm_value}" /></td>
</tr><!-- END input_submit --><!-- START input_reset -->
 <tr>
  <td colspan="2"><input class="button" type="reset" name="reset" value="{rst_value}" /></td>
 </tr><!-- END input_reset --><!-- START input_select -->
 <tr>
  <td>{text_select}<!-- START obl_asterisk --><span style="color:red">*</span><!-- END obl_asterisk --></td>
  <td>
   <select class="select" name="{name}" size="{size}" <!-- START multiple -->multiple="multiple"<!-- END multiple -->><!-- START one_input_option -->
    <option value="{value}" <!-- START selected -->selected<!-- END selected -->>{option_text}</option><!-- END one_input_option -->
   </select>
  </td>
 </tr><!-- END input_select --><!-- START input_textarea -->
 <tr>
  <td colspan="2">
   {text_textarea}<!-- START obl_asterisk --><span style="color:red">*</span><!-- END obl_asterisk --><br />
   <textarea class="text" name="{name}" cols="{cols}" rows="{rows}">{value}</textarea>
  </td>
 </tr><!-- END input_textarea --><!-- START input_file -->
 <tr>
  <td>{file_text} </td><td><p><input class="button" type="file" name="file" value="" /><br />
  <span title="{file_extensions}" style="cursor:pointer; font-size: 0.8em;">{file_extensions_short}</span></p>
  </td>
 </tr><!-- END input_file --><!-- START sternchentext -->
 <tr><td colspan="2"><span style="color:red">* Pflichtfeld</span></td>
 </tr><!-- END sternchentext -->
<!-- START footer -->
</table>
</form>
</body>
</html><!-- END footer -->

