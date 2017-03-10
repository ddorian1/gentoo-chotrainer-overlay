Unofficial gentoo-chotrainer-overlay
=================================

A gentoo overlay for Chotrainer.

First install layman if you don't have already:

	# emerge -a layman
	# echo "source /var/lib/layman/make.conf" >> /etc/portage/make.conf

(See http://wiki.gentoo.org/wiki/Layman for further instructions.)

Then you can activate the overlay with:
	
	# layman -o https://raw.githubusercontent.com/ddorian1/gentoo-chotrainer-overlay/master/gentoo-chotrainer-overlay.xml -a Chotrainer

And install chotrainer (and dependencies) with:

	# emerge -a twister
