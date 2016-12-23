#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"  # full path of this script
DIRNAME="$( echo "$DIR" | rev | cut -d'/' -f 1 | rev )"  # name of this dir
cd "$DIR"


# p3/run.py tries to import p2
# python p3/run.py  # This would fail because sys.path is not set?
# python -m p3.run # This would succeed

# (cd p3; python -m run)  # This would still fail, because sys.path cannot find p2
# (cd ..; python -m "$DIRNAME".p3.run)  # This fails in py2 because currect directory has no __init__.py therefore is not a package AND even if does, it fails because have to import p2 in absolute path: import "$DIRNAME".p2
# python -c "import p3.run; print p3.__name__; print 'run' in globals()"  # only p3 is visibal in globals(), that is, in the global namespace. run is invisible
# python -c "from p3 import run; print run.__name__; print 'p3' in globals()"  # This is the inverse; but note that in both, p3.__init__.py and p3.__run__.py is loaded




ipython -i -c "import sys"
