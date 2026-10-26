import SequenceMachineLib.Basic
import Seq.B000.C028
import Seq.B001.C000
import Seq.Opaque.C007

/-!
# A016547: Continued fraction for log(39/2).

The programs for A016547, there is no canonical definition to state claims against.
-/

/-! ## A016547.P2647175677099797926

`gcd(A024816(3*(n+1)), A121469(A193685(n)))`
-/

namespace A016547.P2647175677099797926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A024816 (3 * (n + 1))) (A121469 (A193685 n).toNat)

end

end A016547.P2647175677099797926

