############################################################################################################
#-- Attributed to Robert Apple 
############################################################################################################

sub send_out_alert_email{

   my $subject = "'ALERT: $purpose\_master_validation_script.pm findings'";

   foreach $alert_email (@alert_email){

      open (MAIL, "| mail -s $subject -r <Server_name> $alert_email");
      open (ALERT, "<$alert_file_name");
      foreach $line (<ALERT>){
         print MAIL $line;
      }
      close ALERT;
      close MAIL;
   }

}

