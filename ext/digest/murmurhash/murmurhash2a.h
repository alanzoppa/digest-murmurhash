#ifndef MURMURHASH2A_INCLUDED
#  define MURMURHASH2A_INCLUDED

#include "murmurhash.h"

VALUE murmur2a_finish(VALUE self);
VALUE murmur2a_to_i(VALUE self);
VALUE murmur2a_s_rawdigest(int argc, VALUE *argv, VALUE klass);

#endif /* ifndef MURMURHASH2A_INCLUDED */

