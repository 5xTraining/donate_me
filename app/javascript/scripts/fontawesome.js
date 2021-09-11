import { library, dom, config } from "@fortawesome/fontawesome-svg-core"
import { faCommentDollar } from "@fortawesome/free-solid-svg-icons/faCommentDollar"
import { faMoneyCheckAlt } from "@fortawesome/free-solid-svg-icons/faMoneyCheckAlt"

config.mutateApproach = "sync"
library.add(faCommentDollar, faMoneyCheckAlt)
dom.watch()
