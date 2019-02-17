<form action="{form}" method="POST">
<fieldset>
 <legend><strong>Neues Formular</strong></legend>
 Neues Formular vom Typ:&nbsp;
 <select name="new_form" size="1"><!-- START new_form_options -->
  <option value="{value}">{name}</option><!-- END new_form_options -->
 </select><br />
 <br />
 <input type="submit" value="Formular erstellen" />&nbsp;
 <input type="button" value="Abbrechen" OnClick="javascript:window.location.href='{abbr}';" />
</fieldset>
</form>