<?php
//
// Mailerscript
// Erstellt: 03/2010  Rania Wittenberg

$Referer = $_POST['referer'];
//------------email
if ($Referer == 'email')
{
$i=0;

	$betreff = "Fragen";
	$mailbody = 'Kontaktformular' . "\r\n";
	$mailbody = 'Diese Mail wurde automatisch generiert. Bitte antworten Sie nicht auf diese Mail. ' . "\r\n\r\n";
	
//--------- Angabepruefung des Datenfelds - Name
	if($_POST['Name'] == "" || ereg("([0-9])", $_POST['Name'], $regs))
							   
  	{ 
		echo "Geben Sie bitte Ihren Nachnamen ein!<br>";
		$mailbody = '';
		$i++;
	}	
  	else  
  	{
  		$Name = $_POST['Name'];
		$mailbody .= 'Name = ' . $Name . "\r\n";
  	}
	//---------ende der Angabepruefung des Datenfelds - Name

	//--------- Angabepruefung des Datenfelds - Vorname
	if($_POST['Vorname'] == "" || ereg("([0-9])", $_POST['Vorname'], $regs)) 
  	{ 
		echo "Geben Sie bitte Vornamen ein!<br>";
		$mailbody = '';
		$i++;
		   
	}	
  	else  
  	{
  		$Vorname = $_POST['Vorname'];
		$mailbody .= 'Vorname = ' . $Vorname . "\r\n";
  	}
	//---------ende der Angabepruefung des Datenfelds - Vorname 

	//--------- Angabepruefung des Datenfelds - Telefon
	
  		$Telefon = $_POST['Telefon'];
		$mailbody .= 'Telefon = ' . $Telefon . "\r\n";
		
	//---------ende der Angabepruefung des Datenfelds - Telefon
	
	//--------- Angabepruefung des Datenfelds - Email
	if (($_POST['Email'] == "") || (!ereg("^([a-zA-Z0-9_]|\\-|\\.)+@(([a-zA-Z0-9_]|\\-)+\\.)+[a-z]{2,4}$", $_POST['Email'], $regs)))
	{ 
		echo   "Fehlende oder fehlerhafte E-Mail-Adresse. Bitte geben Sie eine E-Mail-Adresse ein!<br>"; 
		$mailbody = '';
		$i++;				
	}
	else  
  	{
  		$Email = $_POST['Email'];	
		$mailbody .= 'Email = ' . $Email . "\r\n";
		
  	}
	//---------ende der Angabepruefung des Datenfelds - Email	
	
	
	//--------- Angabepruefung des Datenfelds - Text

	if(empty($_POST['Text']))
  	{ 
		echo 'Bitte geben Sie einen Text ein!<br>';
		$mailbody = '';
		$i++;
		   
	}	
  	else  
  	{
  		$Text = $_POST['Text'];
		$mailbody .= 'Fragen, Meinungen und Anregungen = ' . $Text . "\r\n";
  	}
	//---------ende der Angabepruefung des Datenfelds - Text 
}


//*************************************************

//--------referer=kontakt
echo $Referer;

if ($Referer == 'anmeldung')
{
	$i=0;

	$betreff = "Fragen";
	$mailbody = 'Kontaktformular' . "\r\n";
	$mailbody = 'Diese Mail wurde automatisch generiert. Bitte antworten Sie nicht auf diese Mail. ' . "\r\n\r\n";
	
//--------- Angabepruefung des Datenfelds - Name
	if($_POST['Name'] == "" || ereg("([0-9])", $_POST['Name'], $regs))
							   
  	{ 
		echo "Geben Sie bitte Ihren Nachnamen ein!<br>";
		$mailbody = '';
		$i++;
	}	
  	else  
  	{
  		$Name = $_POST['Name'];
		$mailbody .= 'Name = ' . $Name . "\r\n";
  	}
	//---------ende der Angabepruefung des Datenfelds - Name

	//--------- Angabepruefung des Datenfelds - Vorname
	if($_POST['Vorname'] == "" || ereg("([0-9])", $_POST['Vorname'], $regs)) 
  	{ 
		echo "Geben Sie bitte Vornamen ein!<br>";
		$mailbody = '';
		$i++;
		   
	}	
  	else  
  	{
  		$Vorname = $_POST['Vorname'];
		$mailbody .= 'Vorname = ' . $Vorname . "\r\n";
  	}
	//---------ende der Angabepruefung des Datenfelds - Vorname 

	//--------- Angabepruefung des Datenfelds - Telefon
	
  		$Telefon = $_POST['Telefon'];
		$mailbody .= 'Telefon = ' . $Telefon . "\r\n";
		
	//---------ende der Angabepruefung des Datenfelds - Telefon
	
	//--------- Angabepruefung des Datenfelds - Email
	if (($_POST['Email'] == "") || (!ereg("^([a-zA-Z0-9_]|\\-|\\.)+@(([a-zA-Z0-9_]|\\-)+\\.)+[a-z]{2,4}$", $_POST['Email'], $regs)))
	{ 
		echo   "Fehlende oder fehlerhafte E-Mail-Adresse. Bitte geben Sie eine E-Mail-Adresse ein!<br>"; 
		$mailbody = '';
		$i++;				
	}
	else  
  	{
  		$Email = $_POST['Email'];	
		$mailbody .= 'Email = ' . $Email . "\r\n";
		
  	}
	//---------ende der Angabepruefung des Datenfelds - Email	
	
	
	//--------- Angabepruefung des Datenfelds - Text

	if(empty($_POST['Text']))
  	{ 
		echo 'Bitte geben Sie einen Text ein!<br>';
		$mailbody = '';
		$i++;
		   
	}	
  	else  
  	{
  		$Text = $_POST['Text'];
		$mailbody .= 'Fragen, Meinungen und Anregungen = ' . $Text . "\r\n";
  	}
	//---------ende der Angabepruefung des Datenfelds - Text 
}
//-------- ende referer=kontakt
$empfaenger = $Email;
$options .= "From: noreply\r\n";
//$options .= "An: rania_wittenberg@hotmail.com\r\n";
$options .= "Bcc: rania_wittenberg@hotmail.com\r\n";
$options .= "Content-Type: text/plain\r\n";


//---------websitemeldung ausgabe 
	if($i==0)
	{
		if (mail($empfaenger, $betreff, $mailbody, $options))
		{
			echo 'Vielen Dank.<br>';
			echo '$i=';
			echo $i;
			echo "<br>";
			echo 'Referer=';
			echo $Referer;
			echo "<br>";
			echo 'Name=';
			echo $Name;
			echo "<br>";
			echo 'Vorname='; 
			echo $Vorname;
			echo "<br>";
			echo 'Email=';
			echo $Email;
			echo "<br>";
			echo 'Das Formular wurde an uns und in Kopie an Sie verschickt.<br>';
			echo "<a href=\"../index.htm\">zur Startseite</a><br>";
		}
		else
		{
			echo 'Beim Versand der Mail ist ein Fehler aufgetreten. Bitte versuchen Sie es erneut.';
			echo "<a href=\"javascript:history.back()\">zur&uuml;ck zum Formular</a><br>";

		}
	}
	else
	{
				echo '$i=';
			echo $i;
			echo "<br>";

		echo "F&uuml;llen Sie das Formular bitte vollst&auml;ndig aus";
		echo "<br>";
		echo "<a href=\"javascript:history.back()\">zur&uuml;ck zum Formular</a><br>";
	}
//---------ende ausgabe

?>