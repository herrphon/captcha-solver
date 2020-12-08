
# https://repl.it/talk/share/Using-Pip-On-Replit/2413
# https://tra38.github.io/blog/using-pip-on-repl-it.html




def set_up_user_directory():
  import sys
  import site
  # this makes it work
  if not os.path.exists(site.USER_SITE):
    os.makedirs(site.USER_SITE)
    # since I'm installing with --user, packages
    # should be installed here,
    #so make sure it's on the path
    sys.path.insert(0, site.USER_SITE)

def install(package):
  set_up_user_directory()
  import pip
  pip.main(['install', package, "--user", "--upgrade"])



# install("git+https://github.com/tra38/howdoi@links")

