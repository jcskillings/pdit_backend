paidit README:

Repository located at: https://github.com/jcskillings/paidit

To build this frontent to work you must pull it into some sort of server and run it.  This can be 
done by creating a Cloud 9 account for HTML @ c9.io.  You can then type in the command line (git init) and 
press enter.  After this you must specify the related github account by typing
(git remote add origin https://github.com/jcskillings/paidit) and pressing enter.  You can then
fetch the origin by typing (git fetch origin) and pressing enter.  There may be a better way to 
pull the full data, but I have used the command (git reset --hard origin/XXX) where XXX is the 
branch from which you want to get from, master is the default, but iteration1 is the branch created
for iteration one.  

You can then open splash.html and press run in the Cloud 9 IDE.  This will start running and a link
will show up down where the command window was with a link to the served HTML.  You can either press this
link and have it displayed within Cloud 9, or cut and paste this link into a new window or browser.

You can also go to https://paidit-kyleschenk1.c9.io/splash.html if the server has not timed out.

From the splash page you can register a new user, or login as an existing user.  All of the data, user, 
bills, notifications log, and notification methods are all saved in JSON format as cookies.  You can
create users and check the saved cookies for that browser to test their correctness (allUsers and currUser
for user information).  After registering or logging in, you will be redirected to the home page(index.html).  

You can then traverse the icons at the top of the page to navigate through the pages.  On the usersettings
page, you can edit your registration info and verify it was done correct by looking at the cookie 
generated called currUser.  At this point you can check the NL cookie to see the saved notifications log
items, or simply go to the notificationslog page and view the current log.  Similarly you can navigate
to the bills page and create, edit, or delete bills.  Afterwards you will view the changes on the bills
page, or check the cookie called allBills for correctness.