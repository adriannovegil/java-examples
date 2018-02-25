<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<h1>403 Access Denied</h1>
<p>
    You are not authorized to view this page.
</p>
<p>
    If you have already configured the Manager application to allow access and
    you have used your browsers back button, used a saved book-mark or similar
    then you may have triggered the cross-site request forgery (CSRF) protection
    that has been enabled for the HTML interface of the Manager application. You
    will need to reset this protection by returning to the 
    main Manager page. Once you
    return to this page, you will be able to continue using the Manager
    appliction's HTML interface normally. If you continue to see this access
    denied message, check that you have the necessary permissions to access this
    application.
</p>
<p>
    If you have not changed
    any configuration files, please examine the file
<tt>conf/tomcat-users.xml</tt> in your installation. That
file must contain the credentials to let you use this webapp.
</p>
<p>
    For example, to add the <tt>manager-gui</tt> role to a user named
<tt>tomcat</tt> with a password of <tt>s3cret</tt>, add the following to the
config file listed above.
</p>
<pre>
&lt;role rolename="manager-gui"/&gt;
&lt;user username="tomcat" password="s3cret" roles="manager-gui"/&gt;
</pre>
<p>
    Note that for Tomcat 7 onwards, the roles required to use the manager
    application were changed from the single <tt>manager</tt> role to the
following four roles. You will need to assign the role(s) required for
the functionality you wish to access.
</p>
<ul>
    <li><tt>manager-gui</tt> - allows access to the HTML GUI and the status
    pages</li>
<li><tt>manager-script</tt> - allows access to the text interface and the
status pages</li>
<li><tt>manager-jmx</tt> - allows access to the JMX proxy and the status
pages</li>
<li><tt>manager-status</tt> - allows access to the status pages only</li>
</ul>
<p>
    The HTML interface is protected against CSRF but the text and JMX interfaces
    are not. To maintain the CSRF protection:
</p>
<ul>
    <li>Users with the <tt>manager-gui</tt> role should not be granted either
    the <tt>manager-script</tt> or <tt>manager-jmx</tt> roles.</li>
<li>If the text or jmx interfaces are accessed through a browser (e.g. for
    testing since these interfaces are intended for tools not humans) then
    the browser must be closed afterwards to terminate the session.</li>
</ul>
<p>
    For more information - please see the
    <a href="/docs/manager-howto.html">Manager App HOW-TO</a>.
</p>