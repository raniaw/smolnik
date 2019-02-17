<form action="{form}" method="POST">
<fieldset>
 <legend><strong>{formtype}</strong></legend>
 <p style="color:red;">{error}</p>
 <table>
  <tr>
   <td colspan="2">
    Name des Formulars:&nbsp;<input type="text" name="form_name" value="{form_name}" />
   </td>
  </tr>
  <tr>
   <td>Verarbeitung:</td>
   <td>
    <input type="checkbox" id="lbl_email" name="email_bool" value="1" {email_checked} />
    <label for="lbl_email">An <strong>EMail</strong>-Adresse senden:</label>
    <input type="text" name="email" value="{email}" /> (Emailadresse)
   </td>
  </tr>
  <tr>
   <td>&nbsp;</td>
   <td>
    <input type="checkbox" id="lbl_script" name="script_bool" value="1" {script_checked} />
    <label for="lbl_script">An ein <strong>Script</strong> weiterleiten:</label>
    <input type="text" name="script" value="{script}"> (URL)
   </td>
  </tr>
  <tr>
   <td>&nbsp;</td>
   <td>
    <input type="checkbox" id="lbl_log" name="log_bool" value="1" {log_checked} />
    <label forid="lbl_log">Ins <strong>Logfile</strong> schreiben</label>
   </td>
   <td>&nbsp;</td>
  </tr>
  <tr>
   <td colspan="2">
    <input type="checkbox" id="lbl_act" name="status_bool" value="1" {status_checked} />
    <label for="lbl_act">Dieses Formular nach Fertigstellung aktivieren</label>
   </td>
  </tr>
 </table><br />
 <input type="submit" value="Fertig" />
 <input type="button" value="Abbrechen" OnClick="javascript:window.location.href='{abbr}';" />
</fieldset>
</form><br />
<br />
<form action="{field_add}" method="POST">
<fieldset>
 <legend><strong>Feld hinzufügen</strong></legend>
 Feld vom Typ:&nbsp;
 <select name="new_field"><!-- START new_formfield -->
  <option value="{value}">{fieldtype}</option><!-- END new_formfield -->
 </select><!-- START einfuegen_nach -->
 &nbsp;einf&uuml;gen nach Position:&nbsp;
 <select name="position"><!-- START fieldentry -->
  <option value="{field_position}">{fieldname}</option><!-- END fieldentry -->
 </select>&nbsp;<!-- END einfuegen_nach -->
 <input type="submit" value="Hinzuf&uuml;gen">
</fieldset><!-- START hidden_no_form -->
<input type="hidden" name="position" value="1"><!-- END hidden_no_form -->
</form><br />
<br />
<table border="0" cellpadding="4" cellspacing="0"><!-- START td_headline -->
<tr>
 <td style="background-color: #CAD3EB; border: 1px dotted gray; padding: 2px; border-right-style: none;"><strong>Position</strong>&nbsp;</td>
 <td style="background-color: #CAD3EB; border: 1px dotted gray; padding: 2px; border-left-style: none; border-right-style: none;"><strong>Typ</strong></td>
 <!-- START isnich --><td style="background-color: #CAD3EB; border: 1px dotted gray; padding: 2px; border-left-style: none; border-right-style: none;"><strong>Titel</strong></td><!-- END isnich -->
 <td style="background-color: #CAD3EB; border: 1px dotted gray; padding: 2px; border-left-style: none; border-right-style: none;"><strong>Felder</strong></td>
 <td style="background-color: #CAD3EB; border: 1px dotted gray; padding: 2px; border-left-style: none; border-right-style: none;">&nbsp;</td>
 <td style="background-color: #CAD3EB; border: 1px dotted gray; padding: 2px; border-left-style: none;">&nbsp;</td>
</tr><!-- END td_headline --><!-- START element_entry -->
<tr>
 <td style="background-color:#eeeeee; border: 1px solid white; vertical-align:top; text-align:right;">{pos}&nbsp;</td>
 <td style="background-color:#eeeeee; border: 1px solid white; vertical-align:top;">{type}</td>
 <!-- START isauchnich --><td style="background-color:#eeeeee; border: 1px solid white; vertical-align:top;">{fieldtitle}</td><!-- END isauchnich -->
 <td style="background-color:#eeeeee; border: 1px solid white; vertical-align:top;">{prev}</td>
 <td style="background-color:#eeeeee; border: 1px solid white; vertical-align:top;">
  <a href="{changeme}"><img src="http://strato.de/cgi2004/cgi2.0/images/img_edit.gif" alt="" title="Ändern" border="0"></a>&nbsp;
  <a href="{delme}"><img src="http://strato.de/cgi2004/cgi2.0/images/img_del.gif" alt="" title="Löschen" border="0"></a>
 </td>
 <td style="background-color:#eeeeee; border: 1px solid white; vertical-align:top;"><!-- START hoch -->
  <a href="{oben}"><img src="http://strato.de/cgi2004/cgi2.0/images/img_up.gif" alt="" title="1 nach oben" border="0" /></a>&nbsp;<!-- END hoch --><!-- START runter -->
  <a href="{unten}"><img src="http://strato.de/cgi2004/cgi2.0/images/img_down.gif" alt="" title="1 nach unten" border="0" /></a><!-- END runter -->
 </td>
</tr><!-- END element_entry --><!-- START no_element_entry -->
<tr>
 <td colspan="8">
  Es sind noch keine Formularfelder angelegt worden.
 </td>
</tr><!-- END no_element_entry -->
</table>
