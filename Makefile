all: from2014.1to2014.2.sh from2014.2RCto2014.2.sh

from2014.1to2014.2.sh:
	echo '#!/bin/bash' > $@
	cat 2014.2/from2014.1/* >> $@
	chmod +x $@

from2014.2RCto2014.2.sh:
	echo '#!/bin/bash' > $@
	cat 2014.2/from2014.2RC/* >> $@
	chmod +x $@


clean:
	rm from2014.1to2014.2.sh from2014.2RCto2014.2.sh
