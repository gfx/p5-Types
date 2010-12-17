#define NEED_newSVpvn_flags
#include "xshelper.h"

#define MY_CXT_KEY "Types::_guts" XS_VERSION
typedef struct {
} my_cxt_t;
START_MY_CXT

static void
my_cxt_initialize(pTHX_ pMY_CXT) {
}

MODULE = Types    PACKAGE = Types

PROTOTYPES: DISABLE

BOOT:
{
    MY_CXT_INIT;
    my_cxt_initialize(aTHX_ aMY_CXT);
}

#ifdef USE_ITHREADS

void
CLONE(...)
CODE:
{
    MY_CXT_CLONE;
    my_cxt_initialize(aTHX_ aMY_CXT);
    PERL_UNUSED_VAR(items);
}

#endif

void
hello()
CODE:
{
    ST(0) = newSVpvs_flags("Hello, world!", SVs_TEMP);
}
