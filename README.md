# Spoiler Free CTF Writeup CMS

Customized Doku wiki to create a platform where students can post writeups for
CTF challenges.  But the writeups can only be viewed if the student already
knows the challenge flag.

Our high schools CTF runs all year long.  Experienced students will complete
challenges faster, and can create their own writeups, and see the challenge
creator's official writeup to see how the intended solution worked.  But new
students can't see the writeups until they solve the challenge later.  This
preserves the challenge for the newer students.  CTF administrators can add
bonus points to the teams that complete best writeups to encourage more
writeups.

# Default accounts and credentials

* Administrative  admin:password
* Student (is a member of a group called studentgroup)         student:password2

You could add many students and put all of them in the studentgroup group and
disable anonymous edits, or share the single student account with all of the students.

# Customizations performed on standard doku install for this project

* Installed the 2 accounts listed above, enabled ACL
* Installed the disableactionsbygroup plugin to hide the media manager from
  anonymous and students (you can normally browse the media manager and see
  all the pictures uploaded)
* Installed custom configuration
  * Changed the title to "CTF Writeups"
  * Hide recent pages (recent, recent_days)
  * Hide page navigation stuff (breadcrumbs, youarehere)
  * Any page that starts with the name chal is hidden from wiki index (hidepages)
  * Hide the media manager from most users (disableactions, disableactionsbygroup).
    Only admins can see it
  * Disable auto updates (updatecheck)


# Todo

[ ] Do I need to create conf/acl.auth.php?
[ ] Copy over doku artwork with cool hacker artwork



