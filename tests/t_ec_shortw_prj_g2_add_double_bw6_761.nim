# Constantine
# Copyright (c) 2018-2019    Status Research & Development GmbH
# Copyright (c) 2020-Present Mamy André-Ratsimbazafy
# Licensed and distributed under either of
#   * MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
#   * Apache v2 license (license terms in the root directory or at http://www.apache.org/licenses/LICENSE-2.0).
# at your option. This file may not be copied, modified, or distributed except according to those terms.

import
  # Internals
  ../constantine/config/[type_ff, curves],
  ../constantine/elliptic/ec_shortweierstrass_projective,
  # Test utilities
  ./t_ec_template

const
  Iters = 8

run_EC_addition_tests(
    ec = ECP_ShortW_Prj[Fp[BW6_761], G2],
    Iters = Iters,
    moduleName = "test_ec_shortweierstrass_projective_g2_add_double_" & $BW6_761
  )
