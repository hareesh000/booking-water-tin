<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

  <form action="mailJSP.jsp">

            <table>

                <tr><td><b><font color="red">To:

                    </td>

                    <td><b><input type="text" name="mail" value=""/></b><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <b><font color="red">Subject:</b>

                    </td>

                    <td>

                        <input type="text" name="sub" value=""><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <b><font color="red">Message Text:</font>font</b>

                    </td>

                    <td>

                        <textarea rows="12" cols="80" name="mess"></textarea><br/>

                    </td>

                </tr>

                <tr>

                    <td>

                        <input type="submit" value="Send">

                    </td>



                </tr>

                   


</form>


</body>
</html>