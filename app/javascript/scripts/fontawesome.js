import { library, dom, config } from "@fortawesome/fontawesome-svg-core"
import { faCommentDollar } from "@fortawesome/free-solid-svg-icons/faCommentDollar"
import { faMoneyCheckAlt } from "@fortawesome/free-solid-svg-icons/faMoneyCheckAlt"
import { faTimes } from "@fortawesome/free-solid-svg-icons/faTimes"

config.mutateApproach = "sync"
library.add(faCommentDollar, faMoneyCheckAlt, faTimes)

dom.watch()
