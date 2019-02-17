<!-- START input_text -->
 {text_text} <input type="text" name="{name}" value="{value}" size="{size}" maxlength="{maxlength}">
<!-- END input_text -->

<!-- START input_file -->
<table><tr><td>
 {file_text}</td><td><input class="button" type="file" name="file" value="" /></td></tr>
 <tr><td>&nbsp;</td><td> <span title="{file_extensions}"><span style="font-size: 0.8em;">{file_extensions_short}</span></span></p></td></tr></table>
 <!-- END input_file -->

<!-- START input_checkbox -->
 <!-- START one_input_checkbox -->
  {text_checkbox} <input type="checkbox" name="{name}" value="{value}" <!-- START checked_block -->checked<!-- END checked_block --> /><!-- START br_block --><br /> <!-- END br_block -->
 <!-- END one_input_checkbox -->
<!-- END input_checkbox -->

<!-- START input_radio -->
 <!-- START one_input_radio -->
  {text_radio} <input type="radio" name="{name}" value="{value}" <!-- START checked_block -->checked<!-- END checked_block -->><!-- START br_block --><br /><!-- END br_block -->
 <!-- END one_input_radio -->
<!-- END input_radio -->

<!-- START input_hidden -->
 <!-- input type="hidden" name="{name}" value="{value}" -->Verstecktes Feld: {name} = {value}
<!-- END input_hidden -->

<!-- START input_img -->
 {text_img} <input type="img" src="{src}" {options} />
<!-- END input_img -->

<!-- START input_password -->
 {text_password} <input type="password" name="{name}" value="{value}" size="{size}" maxlength="{maxlength}" />
<!-- END input_password -->

<!-- START input_submit -->
 <input type="submit" name="submit" value="{sbm_value}"> <input type="reset" name="reset" value="{rst_value}" />
<!-- END input_submit -->

<!-- START input_reset --><!-- END input_reset -->

<!-- START input_select -->
 {text_select} <select name="{name}" size="{size}" <!-- START multiple -->multiple="multiple"<!-- END multiple -->>
 <!-- START one_input_option -->
  <option value="{value}" <!-- START selected -->selected<!-- END selected -->>{option_text}</option>
 <!-- END one_input_option -->
 </select>
<!-- END input_select -->

<!-- START input_textarea -->
 {text_textarea}<br /><textarea name="{name}" cols="{cols}" rows="{rows}">{value}</textarea>
<!-- END input_textarea -->
