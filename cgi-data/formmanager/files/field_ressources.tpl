<form action="{form}" method="POST" enctype="multipart/form-data"><!-- START error -->
<p style="color:red">{error}</p><!-- END error -->
<input type="hidden" name="type" value="{type}" />
<input type="hidden" name="new_field" value="{new_field}" />
<input type="hidden" name="position" value="{position}" /><!-- START text -->
<p>Position im Formular: <strong>{pos}</strong></p>
<fieldset>
 <legend><strong>Texteingabe (einzeilig)</strong></legend>
 <table border="0" cellspacing="0" cellpadding="2">
 <tr>
  <td>Textfeld Label</td>
  <td><input type="text" name="text" value="{txt_value}" maxlength="64" /></td>
 </tr>
 <tr>
  <td>Textfeld Name</td>
  <td><input type="text" name="name" value="{txt_bez_value}" maxlength="64" /></td>
 </tr>
 <tr>
  <td>Textfeld Breite</td>
  <td><input type="text" name="size" value="{txtfield_wid}" size="3" maxlength="3" /> (optional)</td>
 </tr>
 <tr>
  <td>Maximale Textlänge</td>
  <td><input type="text" name="maxlength" value="{txt_wid}" size="3" maxlength="3" /> (optional)</td>
 </tr>
 <tr>
  <td colspan="2">
   <input type="checkbox" id="lbl_obl" name="checkb_name" value="obl" <!-- START checked -->checked<!-- END checked --> />
   <label for="lbl_obl">Obligatorisch (Pflichtfeld)</label>
  </td>
 </tr>
 <tr>
  <td>Plausibilit&auml;tscheck</td>
  <td>
   <select name="plausi" size="1"><!-- START plausi_option -->
    <option value="{txt_plausi_value}" <!-- START selected -->selected<!-- END selected -->>{txt_plausi_option}</option><!-- END plausi_option -->
   </select>
  </td>
</tr>
</table>
</fieldset><!-- END text -->
<!-- START file -->
<script type="text/javascript">

function switchAll() {
    if(document.getElementById('allfiletypes').checked == true){
        document.getElementById('all_grafik').checked = true;
        document.getElementById('all_video').checked = true;
        document.getElementById('all_audio').checked = true;
        document.getElementById('all_archives').checked = true;
        document.getElementById('all_documents').checked = true;
    }else{
        document.getElementById('all_grafik').checked = false;
        document.getElementById('all_video').checked = false;
        document.getElementById('all_audio').checked = false;
        document.getElementById('all_archives').checked = false;
        document.getElementById('all_documents').checked = false;
    }
}

function switchMaster() {
    if(document.getElementById('all_grafik').checked == true &&
       document.getElementById('all_video').checked == true &&
       document.getElementById('all_audio').checked == true &&
       document.getElementById('all_archives').checked == true &&
       document.getElementById('all_documents').checked == true) {
           document.getElementById('allfiletypes').checked = true;
       }else{
           document.getElementById('allfiletypes').checked = false;
       }
}

function checkGrafik() {   
     if(document.getElementById('all_grafik').checked == true ||    
     document.getElementById('jpg').checked == true ||   
     document.getElementById('jpeg').checked == true ||   
     document.getElementById('gif').checked == true ||   
     document.getElementById('bmp').checked == true ||   
     document.getElementById('png').checked == true ||
     document.getElementById('tiff').checked == true) {   
        document.getElementById('grafik').style.display = 'block';   
     } else {   
        document.getElementById('grafik').style.display = 'none';   
     }
}   

function switchGrafik() {
	if(document.getElementById('all_grafik').checked == true) {
		document.getElementById('jpg')   .checked = true;
		document.getElementById('jpeg')  .checked = true;
		document.getElementById('gif')   .checked = true;
		document.getElementById('bmp')   .checked = true;
                document.getElementById('png')   .checked = true;
		document.getElementById('tiff')  .checked = true;
	} else {
		document.getElementById('jpg')   .checked = false;
		document.getElementById('jpeg')  .checked = false;
		document.getElementById('gif')   .checked = false;
                document.getElementById('png')   .checked = false;
		document.getElementById('bmp')   .checked = false;
		document.getElementById('tiff')  .checked = false;
		document.getElementById('allfiletypes').checked = false;
	}
	checkGrafik();
	switchMaster();
}

function switchMasterGrafik() {
	if(document.getElementById('jpg')  .checked == true && 
	   document.getElementById('jpeg') .checked == true && 
	   document.getElementById('gif')  .checked == true && 
           document.getElementById('png')  .checked == true &&
	   document.getElementById('bmp')  .checked == true && 
	   document.getElementById('tiff') .checked == true) {
		document.getElementById('all_grafik').checked = true;
	} else {
		document.getElementById('all_grafik').checked = false;
		document.getElementById('allfiletypes').checked = false;
	}
}

function checkVideo() {   
     if(document.getElementById('all_video').checked == true ||    
     document.getElementById('mpg') .checked == true ||   
     document.getElementById('mpeg').checked == true ||   
     document.getElementById('avi') .checked == true ||   
     document.getElementById('mov') .checked == true ||   
     document.getElementById('rm')  .checked == true ||   
     document.getElementById('ram') .checked == true ||   
     document.getElementById('wmv') .checked == true ||   
     document.getElementById('swf') .checked == true) {   
        document.getElementById('video').style.display = 'block';   
     } else {   
        document.getElementById('video').style.display = 'none';   
     }
}   

function switchVideo() {
	if(document.getElementById('all_video').checked == true) {
		document.getElementById('mpg')   .checked = true;
		document.getElementById('mpeg')  .checked = true;
		document.getElementById('avi')   .checked = true;
		document.getElementById('mov')   .checked = true;
		document.getElementById('rm')   .checked = true;
		document.getElementById('ram')   .checked = true;
		document.getElementById('wmv')   .checked = true;
		document.getElementById('swf')   .checked = true;
		document.getElementById('video').style.display = 'block';
	} else {
		document.getElementById('mpg')   .checked = false;
		document.getElementById('mpeg')  .checked = false;
		document.getElementById('avi')   .checked = false;
		document.getElementById('mov')   .checked = false;
		document.getElementById('rm')   .checked = false;
		document.getElementById('ram')   .checked = false;
		document.getElementById('wmv')   .checked = false;
		document.getElementById('swf')   .checked = false;
		document.getElementById('allfiletypes').checked = false;
		document.getElementById('video').style.display = 'none';
	}
	checkVideo();
	switchMaster();
}

function switchMasterVideo() {
	if(document.getElementById('mpg')  .checked == true && 
	   document.getElementById('mpeg') .checked == true && 
	   document.getElementById('avi')  .checked == true && 
	   document.getElementById('mov')  .checked == true && 
	   document.getElementById('rm')   .checked == true &&
	   document.getElementById('ram')  .checked == true && 
	   document.getElementById('wmv')  .checked == true && 
	   document.getElementById('swf')  .checked == true) {
		document.getElementById('all_video').checked = true;
	} else {
		document.getElementById('all_video').checked = false;
		document.getElementById('allfiletypes').checked = false;
	}
}

function checkAudio() {   
     if(document.getElementById('all_audio').checked == true ||    
     document.getElementById('mp3') .checked == true ||   
     document.getElementById('mid') .checked == true ||   
     document.getElementById('wav') .checked == true ||   
     document.getElementById('aiff').checked == true ||   
     document.getElementById('ogg').checked == true) {   
        document.getElementById('audio').style.display = 'block';   
     } else {   
        document.getElementById('audio').style.display = 'none';   
     }
}   

function switchAudio() {
	if(document.getElementById('all_audio').checked == true) {
		document.getElementById('mp3')   .checked = true;
		document.getElementById('mid')   .checked = true;
		document.getElementById('wav')   .checked = true;
		document.getElementById('aiff')  .checked = true;
		document.getElementById('ogg')   .checked = true;
		document.getElementById('audio').style.display = 'block';
	} else {
		document.getElementById('mp3')  .checked = false;
		document.getElementById('mid')  .checked = false;
		document.getElementById('wav')  .checked = false;
		document.getElementById('aiff')  .checked = false;
		document.getElementById('ogg')  .checked = false;
		document.getElementById('audio').style.display = 'none';
	}
	checkAudio();
	switchMaster();
}

function switchMasterAudio() {
	if(document.getElementById('mp3')  .checked == true && 
	   document.getElementById('mid')  .checked == true && 
	   document.getElementById('wav')  .checked == true && 
	   document.getElementById('aiff') .checked == true && 
	   document.getElementById('ogg')  .checked == true) {
		document.getElementById('all_audio').checked = true;
	} else {
		document.getElementById('all_audio').checked = false;
		document.getElementById('allfiletypes').checked = false;
	}
}

function checkDocuments() {   
     if(document.getElementById('all_documents').checked == true ||    
     document.getElementById('pdf') .checked == true ||
     document.getElementById('txt') .checked == true ||   
     document.getElementById('html').checked == true ||   
     document.getElementById('htm') .checked == true ||   
     document.getElementById('doc') .checked == true ||   
     document.getElementById('log') .checked == true ||   
     document.getElementById('css') .checked == true ||   
     document.getElementById('xml') .checked == true ||   
     document.getElementById('psd') .checked == true) {   
        document.getElementById('documents').style.display = 'block';   
     } else {   
        document.getElementById('documents').style.display = 'none';   
     }
}
   
function switchDocuments() {
	if(document.getElementById('all_documents').checked == true) {
                document.getElementById('pdf')   .checked = true;
		document.getElementById('txt')   .checked = true;
		document.getElementById('html')  .checked = true;
		document.getElementById('htm')   .checked = true;
		document.getElementById('doc')   .checked = true;
		document.getElementById('log')   .checked = true;
		document.getElementById('css')   .checked = true;
		document.getElementById('xml')   .checked = true;
		document.getElementById('psd')   .checked = true;
		document.getElementById('documents').style.display = 'block';
	} else {
                document.getElementById('pdf')   .checked = false;
		document.getElementById('txt')   .checked = false;
		document.getElementById('html')  .checked = false;
		document.getElementById('htm')   .checked = false;
		document.getElementById('doc')   .checked = false;
		document.getElementById('log')  .checked = false;
		document.getElementById('css')   .checked = false;
		document.getElementById('xml')   .checked = false;
		document.getElementById('psd')   .checked = false;
		document.getElementById('documents').style.display = 'none';
		document.getElementById('allfiletypes').checked = false;
	}
	checkDocuments();
	switchMaster();
}

function switchMasterDocuments() {
	if(document.getElementById('txt')  .checked == true && 
           document.getElementById('pdf') .checked == true &&
	   document.getElementById('html') .checked == true && 
	   document.getElementById('htm')  .checked == true && 
	   document.getElementById('doc')  .checked == true && 
	   document.getElementById('log')  .checked == true &&
	   document.getElementById('css')  .checked == true && 
	   document.getElementById('xml')  .checked == true && 
	   document.getElementById('psd')  .checked == true) {
		document.getElementById('all_documents').checked = true;
	} else {
		document.getElementById('all_documents').checked = false;
		document.getElementById('allfiletypes').checked = false;
	}
}

function checkArchives() {   
     if(document.getElementById('all_archives').checked == true ||    
     document.getElementById('zip') .checked == true ||   
     document.getElementById('arj') .checked == true ||   
     document.getElementById('rar') .checked == true ||   
     document.getElementById('tar').checked == true ||   
     document.getElementById('gz' ).checked == true) {   
        document.getElementById('archives').style.display = 'block';   
     } else {   
        document.getElementById('archives').style.display = 'none';   
     }
}   

function switchArchives() {
	if(document.getElementById('all_archives').checked == true) {
		document.getElementById('zip')  .checked = true;
		document.getElementById('arj')  .checked = true;
		document.getElementById('rar')  .checked = true;
		document.getElementById('tar')  .checked = true;
		document.getElementById('gz' )  .checked = true;
		document.getElementById('archives').style.display = 'block';
	} else {
		document.getElementById('zip') .checked = false;
		document.getElementById('arj') .checked = false;
		document.getElementById('rar') .checked = false;
		document.getElementById('tar')  .checked = false;
		document.getElementById('gz' ) .checked = false;
		document.getElementById('archives').style.display = 'none';
		document.getElementById('allfiletypes').checked = false;
	}
	checkArchives();
	switchMaster();
}

function switchMasterArchives() {
	if(document.getElementById('zip')  .checked == true && 
	   document.getElementById('arj')  .checked == true && 
	   document.getElementById('rar')  .checked == true && 
	   document.getElementById('tar') .checked == true && 
	   document.getElementById('gz' )  .checked == true) {
		document.getElementById('all_archives').checked = true;
	} else {
		document.getElementById('all_archives').checked = false;
		document.getElementById('allfiletypes').checked = false;
	}
}

</script><p>Position im Formular: <strong>{pos}</strong></p>
<fieldset>
 <legend><strong>Datei Upload</strong></legend>
<table>
<tr><td>
 	&nbsp;<br>In welches Verzeichnis unterhalb /cgi-data ihrer Domain sollen die hochgeladenen Dateien gespeichert werden? Dieses Verzeichnis wird bei Bedarf angelegt. (Standard ist: /cgi-data/upload )
</td><td>
	&nbsp;<br><input type="text" name="uploadDir" value="{uploadDir}" />
</td></tr>
<tr><td width="50%">
 	Welche Beschriftung soll vor dem Datei-Auswahlfeld stehen? 
</td><td>
	<input type="text" name="text" value="{text}" maxlength="255" />
</td></tr>
<tr><td>
 	&nbsp;<br>Wie gross darf die Datei sein, die vom Besucher versendet wird? (Angaben in Kilobyte, maximal 2000 KB)
</td><td>
	&nbsp;<br><input type="text" name="max_groesse" value="{max_groesse}" />&nbsp;KB
</td></tr>
</table>
<p>Legen Sie nun fest, welche Dateiendungen f&uuml;r den Upload erlaubt ist:</p> 
 <table border="0" cellspacing="0" cellpadding="2">
 <tr>
    <td>
        <input type="checkbox"  name="allfiletypes"  {checked_allfiletypes}  id="allfiletypes"    value="1" />
    </td>
    <td>
        Alle Dateitypen
    </td>
 </tr>
 <tr>
    <td>
    </td>
    <td>
    </td>
 </tr>
 <tr>
    <td>
        <input type="checkbox"  name="allext[all_grafik]"  {checked_all_grafik}  id="all_grafik"    value="{all_grafik}" onclick="switchGrafik()" /> 
    </td>
    <td>
        Grafikdateien
    </td>
 </tr>
 <tr height="0">
    <td></td>
    <td>
        <div id="grafik">
            <input type="checkbox" {checked_jpg} name="ext[jpg]"  id="jpg"  value="{jpg}" onclick="switchMasterGrafik()" /> .jpg<br>
            <input type="checkbox" {checked_jpeg} name="ext[jpeg]" id="jpeg" value="{jpeg}" onclick="switchMasterGrafik()" /> .jpeg<br>
            <input type="checkbox" {checked_gif} name="ext[gif]"  id="gif"  value="{gif}" onclick="switchMasterGrafik()" /> .gif<br>
            <input type="checkbox" {checked_png} name="ext[png]"  id="png"  value="{png}" onclick="switchMasterGrafik()" /> .png<br>
            <input type="checkbox" {checked_bmp} name="ext[bmp]"  id="bmp"  value="{bmp}" onclick="switchMasterGrafik()" /> .bmp<br>
            <input type="checkbox" {checked_tiff} name="ext[tiff]" id="tiff" value="{tiff}" onclick="switchMasterGrafik()" /> .tiff<br>
        </div>
    </td>
 </tr>
 
 
 <tr>
    <td>
        <input type="checkbox"  name="allext[all_video]"  {checked_all_video}   id="all_video"     value="{all_video}" onclick="switchVideo()">
    </td>
    <td>
        Videodateien
    </td>
 </tr>
  <tr height="0">
    <td></td>
    <td>
        <div id="video">
            <input type="checkbox" {checked_mpg} name="ext[mpg]"  id="mpg"  value="{mpg}"  onclick="switchMasterVideo()" >  .mpg<br>
            <input type="checkbox" {checked_mpeg} name="ext[mpeg]" id="mpeg" value="{mpeg}" onclick="switchMasterVideo()"> .mpeg<br>
            <input type="checkbox" {checked_avi} name="ext[avi]"  id="avi"  value="{avi}"  onclick="switchMasterVideo()" >  .avi<br>
            <input type="checkbox" {checked_mov} name="ext[mov]"  id="mov"  value="{mov}"  onclick="switchMasterVideo()" >  .mov<br>
            <input type="checkbox" {checked_rm} name="ext[rm]"   id="rm"   value="{rm}"   onclick="switchMasterVideo()">   .rm<br>
            <input type="checkbox" {checked_ram} name="ext[ram]"  id="ram"  value="{ram}"  onclick="switchMasterVideo()" >  .ram<br>
            <input type="checkbox" {checked_wmv} name="ext[wmv]"  id="wmv"  value="{wmv}"  onclick="switchMasterVideo()">  .wmv<br>
            <input type="checkbox" {checked_swf} name="ext[swf]"  id="swf"  value="{swf}"  onclick="switchMasterVideo()" >  .swf<br>
        </div>
    </td>
 </tr>

 <tr>
    <td>
        <input type="checkbox"  name="allext[all_audio]"   {checked_all_audio}  id="all_audio"     value="{all_audio}" onclick="switchAudio()">
    </td>
    <td>
        Audiodateien
    </td>
 </tr>
  <tr height="0">
    <td></td>
    <td>
        <div id="audio">
            <input type="checkbox" {checked_mp3} name="ext[mp3]"  id="mp3"  value="{mp3}"  onclick="switchMasterAudio()"> .mp3<br>
            <input type="checkbox" {checked_mid} name="ext[mid]"  id="mid"  value="{mid}"  onclick="switchMasterAudio()"> .mid<br>
            <input type="checkbox" {checked_wav} name="ext[wav]"  id="wav"  value="{wav}"  onclick="switchMasterAudio()"> .wav<br>
            <input type="checkbox" {checked_aiff} name="ext[aiff]" id="aiff" value="{aiff}" onclick="switchMasterAudio()"> .aiff<br>
            <input type="checkbox" {checked_ogg} name="ext[ogg]"  id="ogg"  value="{ogg}" > .ogg<br>
        </div>
    </td>
 </tr>
<tr>
    <td>
        <input type="checkbox"  name="allext[all_documents]"  {checked_all_documents} id="all_documents"  value="{all_documents}" onclick="switchDocuments()">
    </td>
    <td>
        Dokumente
    </td>
 </tr>
 <tr height="0">
    <td></td>
    <td>
        <div id="documents">
            <input type="checkbox" {checked_pdf} name="ext[pdf]"  id="pdf"  value="{pdf}"  onclick="switchMasterDocuments()"> .pdf<br>
            <input type="checkbox" {checked_txt} name="ext[txt]"  id="txt"  value="{txt}"  onclick="switchMasterDocuments()"> .txt<br>
            <input type="checkbox" {checked_html} name="ext[html]" id="html" value="{html}" onclick="switchMasterDocuments()"> .html<br>
            <input type="checkbox" {checked_htm} name="ext[htm]"  id="htm"  value="{htm}"  onclick="switchMasterDocuments()"> .htm<br>
            <input type="checkbox" {checked_doc} name="ext[doc]"  id="doc"  value="{doc}"  onclick="switchMasterDocuments()"> .doc<br>
            <input type="checkbox" {checked_log} name="ext[log]"  id="log"  value="{log}"  onclick="switchMasterDocuments()"> .log<br>
            <input type="checkbox" {checked_css} name="ext[css]"  id="css"  value="{css}"  onclick="switchMasterDocuments()"> .css<br>
            <input type="checkbox" {checked_xml} name="ext[xml]"  id="xml"  value="{xml}"  onclick="switchMasterDocuments()"> .xml<br>
            <input type="checkbox" {checked_psd} name="ext[psd]"  id="psd"  value="{psd}"  onclick="switchMasterDocuments()"> .psd<br>
        </div>
    </td>
 </tr>
 <tr>
    <td>
        <input type="checkbox"  name="allext[all_archives]"  {checked_all_archives}  id="all_archives"  value="{all_archives}" onclick="switchArchives()">
    </td>
    <td>
        Archive
    </td>
 </tr>
 <tr height="0">
    <td></td>
    <td>
        <div id="archives">
            <input type="checkbox" {checked_zip} name="ext[zip]" id="zip" value="{zip}" onclick="switchMasterArchives()"> .zip<br>
            <input type="checkbox" {checked_arj} name="ext[arj]" id="arj" value="{arj}" onclick="switchMasterArchives()"> .arj<br>
            <input type="checkbox" {checked_rar} name="ext[rar]" id="rar" value="{rar}" onclick="switchMasterArchives()"> .rar<br>
            <input type="checkbox" {checked_tar} name="ext[tar]" id="tar" value="{tar}" onclick="switchMasterArchives()"> .tar<br>
            <input type="checkbox" {checked_gz} name="ext[gz]"  id="gz"  value="{gz} " onclick="switchMasterArchives()"> .gz<br>
        </div>
    </td>
 </tr>

 </table>
</fieldset>
<script language="javascript">
checkGrafik();
checkVideo();
checkVideo();
checkAudio();
checkDocuments();
checkArchives();
switchMasterGrafik();
switchMasterVideo();
switchMasterVideo();
switchMasterAudio();
switchMasterDocuments();
switchMasterArchives();
</script>

<!-- END file -->     
<!-- START hidden -->
<p>Position im Formular: <strong>{pos}</strong></p>
<fieldset>
 <legend><strong>Hidden Field (Versteckte Formularübergabe)</strong></legend>
 <table border="0" cellspacing="0" cellpadding="2">
  <tr>
   <td>Verstecktes Feld Name</td>
   <td><input type="text" name="name" value="{hid_val_name}" maxlength="64" /></td>
  </tr>
  <tr>
   <td>Verstecktes Feld Wert</td>
   <td><input type="text" name="value" value="{hid_bez_value}" maxlength="64" /></td>
  </tr>
 </table>
</fieldset><!-- END hidden --><!-- START password -->
<p>Position im Formular: <strong>{pos}</strong></p>
<fieldset>
 <legend><strong>Passwort-Feld</strong></legend>
 <table border="0" cellspacing="0" cellpadding="2">
  <tr>
   <td>Passwort Feld Label</td>
   <td><input type="text" name="text" value="{pwd_value}" maxlength="64" /></td>
  </tr>
  <tr>
   <td>Passwort Feld Name</td>
   <td><input type="text" name="name" value="{pwd_bez_value}" maxlength="64" /></td>
  </tr>
 </table>
</fieldset><!-- END password --><!-- START submit -->
<p>Position im Formular: <strong>{pos}</strong></p>
<fieldset>
 <legend><strong>Submit / Reset (Formular absenden / zurücksetzen)</strong></legend>
 <table border="0" cellspacing="0" cellpadding="2">
  <tr>
   <td>Submit Button Label</td>
   <td><input type="text" name="text[0]" value="{sbm_value}" maxlength="64" /></td>
  </tr><tr>
   <td>Reset Button Label</td>
   <td><input type="text" name="text[1]" value="{rst_value}" maxlength="64" /></td>
  </tr>
 </table>
</fieldset><!-- END submit --><!-- START textarea -->
<p>Position im Formular: <strong>{pos}</strong></p>
<fieldset>
 <legend><strong>Texteingabe (mehrzeilig)</strong></legend>
 <table border="0" cellspacing="0" cellpadding="2">
  <tr>
   <td>Textarea Label</td>
   <td><input type="text" name="text" value="{tar_value}" maxlength="64" /></td>
  </tr>
  <tr>
   <td>Textarea Name</td>
   <td><input type="text" name="name" value="{tar_bez_value}" maxlength="64" /></td>
  </tr>
  <tr>
   <td>Breite</td>
   <td><input type="text" name="cols" value="{tar_wid_value}" size="3" maxlength="3" /></td>
  </tr>
  <tr>
   <td>Höhe</td>
   <td><input type="text" name="rows" value="{tar_hig_value}" size="3" maxlength="3" /></td>
  </tr>
 </table>
</fieldset><!-- END textarea --><!-- START checkbox -->
<p>Position im Formular: <strong>{pos}</strong></p>
<fieldset>
 <legend><strong>Checkbox</strong></legend>
 <table border="0" cellspacing="0" cellpadding="2">
  <tbody id="cell_check">
  <tr>
   <td>#</td>
   <td>Checkbox-Titel</td>
   <td>Checkbox-Wert</td>
   <td>&nbsp;</td>
  </tr><!-- START check -->
  <tr id="chk_{n}">
   <td>{n}</td>
   <td><input type="text" size="16" name="text[{n}]" value="{chb_value}" maxlength="64" /></td>
   <td><input type="text" size="16" name="name[{n}]" value="{chb_bez_value}" maxlength="64" /></td>
   <td style="white-space: nowrap;"><!-- START show_link -->
    <a href="#" OnClick="return remove_check('chk_{n}');">Diese Checkbox löschen</a><!-- END show_link -->
    <script type="text/javascript">
    <!--
      var CkAddIdx = {n};
    // -->
    </script>
   </td>
  </tr><!-- END check -->
  </tbody>
 </table><br />
 <br />
 <a href="#" OnClick="return add_check();">Weitere Checkbox</a><br />
 <br />
</fieldset>
<script type="text/javascript">
<!--
function add_check()
{
    CkAddIdx = CkAddIdx + 1;
    var AddCell = document.getElementById('cell_check');

    // Umfassende <tr>
    var newspan = document.createElement('tr');
    newspan.setAttribute('id', 'chk_' + CkAddIdx);

    // Erstes <td>
    var td1st = document.createElement('td');
    var num = document.createTextNode(CkAddIdx);
    td1st.appendChild(num);
    newspan.appendChild(td1st);

    // Zweites <td> (Titel)
    var td2nd = document.createElement('td');
    var newinp = document.createElement('input');
    newinp.setAttribute('type', 'text');
    newinp.setAttribute('name', 'text[' + CkAddIdx + ']');
    newinp.setAttribute('size', '16');
    newinp.setAttribute('maxlength', '255');
    td2nd.appendChild(newinp);
    newspan.appendChild(td2nd);

    // Drittes <td> (Value)
    var td3rd = document.createElement('td');
    var newinp = document.createElement('input');
    newinp.setAttribute('type', 'text');
    newinp.setAttribute('name', 'name[' + CkAddIdx + ']');
    newinp.setAttribute('size', '16');
    newinp.setAttribute('maxlength', '255');
    td3rd.appendChild(newinp);
    newspan.appendChild(td3rd);

    // Drittes <td> ("Lösch mich wieder"-Link)
    var td4th = document.createElement('td');
    td4th.setAttribute('style', 'white-space: nowrap;');
    var newa = document.createElement('a');
    newa.setAttribute('href', "javascript: remove_check('chk_" + CkAddIdx + "');");
    var newtext = document.createTextNode('Diese Checkbox löschen');
    newa.appendChild(newtext);
    td4th.appendChild(newa);
    newspan.appendChild(td4th);

    AddCell.appendChild(newspan);

}

function remove_check(id)
{
    document.getElementById('cell_check').removeChild(document.getElementById(id));
}
// -->
</script>
<!-- END checkbox --><!-- START select -->
<p>Position im Formular: <strong>{pos}</strong></p>
<fieldset>
 <legend><strong>Select-Box (Dropdown-Menü)</strong></legend>
  <strong>Select Label:</strong> <input type="text" name="text" value="{sel_value}" size="16" maxlength="64" /><br />
  Der hier eingegebene Text erscheint neben dem Dropdown-Menü.<br />
  <br />
  <strong>Select Name:</strong> <input type="text" name="name" value="{sel_bez_value}" maxlength="64" /><br />
  Unter dem hier von Ihnen eingegebenen Bezeichner erscheint die Auswahl des Benutzers, wenn
  das Formular abgeschickt wird.<br />
  <br />
  <strong>Anzahl der sichtbaren Select-Optionen:</strong> <input type="text" name="size" value="{size}" size="3" maxlength="3" /><br />
  <br />
  <input type="checkbox" name="multi" id="lbl_multi" value="1" <!-- START checked -->checked<!-- END checked --> />
  <label for="lbl_multi"><strong>Mehrfachauswahl erlauben</strong></label><br />
  Bei Auswahl dieser Checkbox kann der Benutzer mehr als eine der angebotenen Optionen auswählen.<br />
  <br />
</fieldset><br />
<br />
<fieldset>
 <legend><strong>Menüoptionen</strong></legend>
 <table border="0" cellspacing="0" cellpadding="2">
  <tbody id="cell_option">
  <tr>
   <td>#</td>
   <td>Select-Option</td>
   <td>Select-Wert</td>
   <td>&nbsp;</td>
  </tr><!-- START select_option -->
  <tr id="opt_{n}">
   <td>{n}</td>
   <td><input type="text" size="16" name="extra[{n}]" value="{sel_opt_value}" maxlength="64" /></td>
   <td><input type="text" size="16" name="value[{n}]" value="{sel_val_value}" maxlength="64" /></td>
   <td><!-- START show_link -->
    <a href="#" OnClick="return remove_option('opt_{n}');">Diese Option Löschen</a><!-- END show_link -->
    <script type="text/javascript">
    <!--
      var OpAddIdx = {n};
    // -->
    </script>
   </td>
  </tr><!-- END select_option -->
  </tbody>
 </table><br />
 <br />
 <a href="#" OnClick="return add_option();">Weitere Option hier</a>
</fieldset><br />
<script type="text/javascript">
<!--
function add_option()
{
    OpAddIdx = OpAddIdx + 1;
    var AddCell = document.getElementById('cell_option');

    // Umfassende <tr>
    var newspan = document.createElement('tr');
    newspan.setAttribute('id', 'opt_' + OpAddIdx);

    // Erstes <td>
    var td1st = document.createElement('td');
    var num = document.createTextNode(OpAddIdx);
    td1st.appendChild(num);
    newspan.appendChild(td1st);

    // Zweites <td> (Titel)
    var td2nd = document.createElement('td');
    var newinp = document.createElement('input');
    newinp.setAttribute('type', 'text');
    newinp.setAttribute('name', 'extra[' + OpAddIdx + ']');
    newinp.setAttribute('size', '16');
    newinp.setAttribute('maxlength', '255');
    td2nd.appendChild(newinp);
    newspan.appendChild(td2nd);

    // Drittes <td> (Value)
    var td3rd = document.createElement('td');
    var newinp = document.createElement('input');
    newinp.setAttribute('type', 'text');
    newinp.setAttribute('name', 'value[' + OpAddIdx + ']');
    newinp.setAttribute('size', '16');
    newinp.setAttribute('maxlength', '255');
    td3rd.appendChild(newinp);
    newspan.appendChild(td3rd);

    // Drittes <td> ("Lösch mich wieder"-Link)
    var td4th = document.createElement('td');
    var newa = document.createElement('a');
    newa.setAttribute('href', "javascript: remove_option('opt_" + OpAddIdx + "');");
    var newtext = document.createTextNode('Diese Option löschen');
    newa.appendChild(newtext);
    td4th.appendChild(newa);
    newspan.appendChild(td4th);

    AddCell.appendChild(newspan);

}

function remove_option(id)
{
    document.getElementById('cell_option').removeChild(document.getElementById(id));
}
// -->
</script><!-- END select --><!-- START radio -->
<p>Position im Formular: <strong>{pos}</strong></p>
<fieldset>
 <legend><strong>Radiobuttons (Alternativauswahl)</strong></legend>
 <strong>Radiobuttongruppe Feldname:</strong> <input type="text" name="name" value="{rd_feldname}"><br />
 Unter dem hier von Ihnen eingegebenen Bezeichner erscheint die Auswahl des Benutzers, wenn
 das Formular abgeschickt wird.<br />
 <br />
 <table border="0" cellspacing="0" cellpadding="2">
  <tbody id="cell_radio">
  <tr>
   <td>#</td>
   <td>Radiobutton Titel</td>
   <td>Radiobutton Wert</td>
   <td>&nbsp;</td>
  </tr><!-- START radiobutton -->
  <tr id="rd_{n}">
   <td>{n}</td>
   <td><input type="text" size="16" name="text[{n}]" value="{rd_value}" maxlength="64" /></td>
   <td><input type="text" size="16" name="value[{n}]" value="{rd_bez_value}" maxlength="64" /></td>
   <td><!-- START show_link -->
    <a href="#" OnClick="return remove_radio('rd_{n}');">Diesen Radiobutton Löschen</a><!-- END show_link -->
    <script type="text/javascript">
    <!--
     var RdAddIdx = {n};
    // -->
    </script>
   </td>
  </tr><!-- END radiobutton -->
  </tbody>
 </table><br />
 <br />
 <a href="#" OnClick="return add_radio();">Weiterer Radiobutton der gleichen Gruppe</a>
</fieldset><br />
<script type="text/javascript">
<!--
function add_radio()
{
    RdAddIdx = RdAddIdx + 1;
    var AddCell = document.getElementById('cell_radio');

    // Umfassende <tr>
    var newspan = document.createElement('tr');
    newspan.setAttribute('id', 'rd_' + RdAddIdx);

    // Erstes <td>
    var td1st = document.createElement('td');
    var num = document.createTextNode(RdAddIdx);
    td1st.appendChild(num);
    newspan.appendChild(td1st);

    // Zweites <td> (Titel)
    var td2nd = document.createElement('td');
    var newinp = document.createElement('input');
    newinp.setAttribute('type', 'text');
    newinp.setAttribute('name', 'text[' + RdAddIdx + ']');
    newinp.setAttribute('size', '16');
    newinp.setAttribute('maxlength', '255');
    td2nd.appendChild(newinp);
    newspan.appendChild(td2nd);

    // Drittes <td> (Value)
    var td3rd = document.createElement('td');
    var newinp = document.createElement('input');
    newinp.setAttribute('type', 'text');
    newinp.setAttribute('name', 'value[' + RdAddIdx + ']');
    newinp.setAttribute('size', '16');
    newinp.setAttribute('maxlength', '255');
    td3rd.appendChild(newinp);
    newspan.appendChild(td3rd);

    // Drittes <td> ("Lösch mich wieder"-Link)
    var td4th = document.createElement('td');
    var newa = document.createElement('a');
    newa.setAttribute('href', "javascript: remove_radio('rd_" + RdAddIdx + "');");
    var newtext = document.createTextNode('Diesen Radiobutton löschen');
    newa.appendChild(newtext);
    td4th.appendChild(newa);
    newspan.appendChild(td4th);

    AddCell.appendChild(newspan);
}

function remove_radio(id)
{
    document.getElementById('cell_radio').removeChild(document.getElementById(id));
}

// -->
</script>
<!-- END radio -->
<p>&nbsp;</p>
<input type="submit" value="Weiter"> <input type="button" value="Abbrechen" OnClick="javascript:window.location.href='{abbr}';">
</form>

