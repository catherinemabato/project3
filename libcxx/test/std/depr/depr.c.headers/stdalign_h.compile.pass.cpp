//===----------------------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

// test <stdalign.h>
//
// Even though <stdalign.h> is not provided by libc++,
// we still test that using it with libc++ on the search path will work.

#include <stdalign.h>

#ifndef __alignas_is_defined
#  error __alignas_is_defined not defined
#endif

#ifndef __alignof_is_defined
#  error __alignof_is_defined not defined
#endif

#ifdef alignas
#  error alignas should not be defined
#endif

#ifdef alignof
#  error alignof should not be defined
#endif
