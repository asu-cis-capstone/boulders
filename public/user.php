< ?php
 class User{
  var $name, $password;
 
  function getName() {
   return this;
  }
 
  function User($name,$password) {
   $this->name= $name;
   //The password is submitted to a hash that will encrypt it.
   $this->password= md5($password);
  }
 
  function authenticate() {
   //Here is where we access the database.
   $name= $this->name;
   $password= $this->password;
   $query = "SELECT name, passwordFROM users WHERE name=$name
AND password=$password";
   $results = mysql_query($query) or die(mysql_error();
   if (mysql_num_rows($results)>0) {
    $this->getSession($this);
    return true;
   }
   else{
    return false;
   }
  }
 
  function getSession($user) {
   session_start();
   $_SESSION['user'] = $user;
  }
 }
?>