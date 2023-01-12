# Constantine
# Copyright (c) 2018-2019    Status Research & Development GmbH
# Copyright (c) 2020-Present Mamy André-Ratsimbazafy
# Licensed and distributed under either of
#   * MIT license (license terms in the root directory or at http://opensource.org/licenses/MIT).
#   * Apache v2 license (license terms in the root directory or at http://www.apache.org/licenses/LICENSE-2.0).
# at your option. This file may not be copied, modified, or distributed except according to those terms.

import
  # Internals
  ../../constantine/math/config/curves,
  ../../constantine/math/elliptic/ec_shortweierstrass_jacobian,
  ../../constantine/math/extension_fields,
  # Test utilities
  ./t_ec_template

const
  Iters = 12
  ItersMul = Iters div 4

run_EC_mul_sanity_tests(
    ec = ECP_ShortW_Jac[Fp2[BLS12_377], G2],
    ItersMul = ItersMul,
    moduleName = "test_ec_shortweierstrass_jacobian_g2_mul_sanity_" & $BLS12_377
  )
