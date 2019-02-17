<!-- START preview -->
Vorschau Ihres Eintrages; Nehmen Sie Änderungen unten im Formular vor:<br />
<br />
<table border="0" cellpadding="2" cellspacing="0" style="border: collapse">
<tr><td class="smallb_top" colspan="2"><b>{subject}</b></td></tr>
<tr>
 <td class="smallb_lcont"><span class="textsmaller">Eingetragen von:</span></td>
 <td class="smallb_rcont"><span class="textsmaller">{name}</span></td>
</tr>
<tr>
 <td class="smallb_lcont"><span class="textsmaller">Email:</span></td>
 <td class="smallb_rcont"><span class="textsmaller">{email}</span></td>
</tr>
<tr>
 <td class="smallb_lcont"><span class="textsmaller">Homepage:</span></td>
 <td class="smallb_rcont"><span class="textsmaller">{homepage}</span></td>
</tr>
<tr>
 <td class="smallb_lcont"><span class="textsmaller">Datum:</span></td>
 <td class="smallb_rcont"><span class="textsmaller">{date}</span></td>
</tr>
<tr><td class="smallborder" colspan="2">{body}<br /></td></tr>
<tr><td colspan="2">&nbsp;&nbsp;</td></tr>
</table><br />
<!-- END preview -->

<!-- START error --><span class="error">{error}</span><!-- END error -->

 <form action="{form_target}" method="POST">
 <table border="0" cellpadding="2" cellspacing="0">
  <tr><td colspan="2"><b>Beitrag hinzuf&uuml;gen</b><br /><br />Titel</td></tr>
  <tr><td colspan="2"><input type="text" name="subject" value="{subject}" size="32" maxlength="64" /></td></tr>
  <tr><td colspan="2">&nbsp;</td></tr>
  <tr><td colspan="2">Text</td></tr>
  <tr><td colspan="2"><textarea rows="6" cols="48" name="body">{body}</textarea></td></tr>
  <tr><td colspan="2">&nbsp;</td></tr>
  <tr><td colspan="2"><table>  <tr><td>Name:</td><td><input type="text" size="16" maxlength="64" name="name" value="{name}"/></td></tr>
  <tr><td>Email (optional):</td><td><input type="text" size="16" maxlength="255" name="email" value="{email}"/></td></tr>
  <tr>
   <td>Homepage (optional):</td>
   <td><input type="text" size="16" maxlength="255" name="homepage" value="{homepage}"/></td>
  </tr>
  <tr>
   <td colspan="2"><input type="checkbox" name="preview" value="1" id="label_preview" />
    <label for="label_preview">&nbsp;Vorschau</label></td>
  </tr>
</table></td></tr>
  <tr>
     <td>
        {captcha}
     </td>
  </tr>
  <tr>
   <td><input type="submit" value="Eintrag absenden" /></td>
   <td><a href="{backlink}">Abbrechen</a></td>
  </tr>
 </table>
 </form>

