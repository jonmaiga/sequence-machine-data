import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A039500: Iterations of "k->k/2 if k is even, k->3k-1 if k is odd" (A001281) starting at these numbers reach 1.

The programs for A039500, there is no canonical definition to state claims against.
-/

/-! ## A039500.P10528105090123672195

`eq[1, A056957(n+1)]+1`
-/

namespace A039500.P10528105090123672195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039500.P10528105090123672195

/-! ## A039500.P10030737403055230173

`record[A000027(n+1)/A056957(n+1)]`
-/

namespace A039500.P10030737403055230173
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A056957 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039500.P10030737403055230173

/-! ## A039500.P733839497381985472

`A028310(record[(n+1)/A056957(n+1)])`
-/

namespace A039500.P733839497381985472
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A056957 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A039500.P733839497381985472

/-! ## A039500.P16154266308208122242

`eq[A054977(n), A056957(A028310(n))]`
-/

namespace A039500.P16154266308208122242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039500.P16154266308208122242

/-! ## A039500.P10361627275940096975

`eq[A056957(A028310(n)), A057427(n)]`
-/

namespace A039500.P10361627275940096975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039500.P10361627275940096975

/-! ## A039500.P14586341671761109307

`record[A008620(3*n)/A056957(n+1)]`
-/

namespace A039500.P14586341671761109307
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 (3 * n) : ℚ) / (A056957 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039500.P14586341671761109307

/-!
# A039501: Iterations of "n->n/2 if n even, n->3n-1 if n odd" (A001281) starting at these numbers reach 5.

The programs for A039501, there is no canonical definition to state claims against.
-/

/-! ## A039501.P2319794095278169055

`eq[5, A056957(n+1)]+1`
-/

namespace A039501.P2319794095278169055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039501.P2319794095278169055

/-! ## A039501.P7508819583790505036

`eq[5, A056957(A028310(n))]`
-/

namespace A039501.P7508819583790505036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039501.P7508819583790505036

/-! ## A039501.P5516795873559025217

`A020725(eq[5, A056957(n+1)])`
-/

namespace A039501.P5516795873559025217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039501.P5516795873559025217

/-! ## A039501.P4285077065126175999

`eq[5, A056957(A000007(n)+n)]`
-/

namespace A039501.P4285077065126175999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039501.P4285077065126175999

/-! ## A039501.P14728676134804650965

`eq[5, A056957(gcd(n, A008458(n)))]`
-/

namespace A039501.P14728676134804650965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (Int.gcd (n : ℤ) (A008458 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039501.P14728676134804650965

/-!
# A039502: Iterations of "n->n/2 if n even, n->3n-1 if n odd" (A001281) starting at these numbers reach 17.

The programs for A039502, there is no canonical definition to state claims against.
-/

/-! ## A039502.P3143871056145828878

`lt[5, A056957(n+1)]+1`
-/

namespace A039502.P3143871056145828878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A039502.P3143871056145828878

/-! ## A039502.P12334483105821286431

`eq[17, A056957(A028310(n))]`
-/

namespace A039502.P12334483105821286431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039502.P12334483105821286431

/-! ## A039502.P187734246480093916

`A020725(eq[17, A056957(n+1)])`
-/

namespace A039502.P187734246480093916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039502.P187734246480093916

/-! ## A039502.P10980194278614448927

`A153152(eq[17, A056957(n+1)])`
-/

namespace A039502.P10980194278614448927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039502.P10980194278614448927

/-! ## A039502.P16911350607781453307

`eq[17, A056957(A233583(n+1))]`
-/

namespace A039502.P16911350607781453307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039502.P16911350607781453307

/-!
# A039503: Odd numbers from A039500.

The programs for A039503, there is no canonical definition to state claims against.
-/

/-! ## A039503.P10617189709152434980

`record[A000265(A039500(n+1))]`
-/

namespace A039503.P10617189709152434980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A039500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039503.P10617189709152434980

/-! ## A039503.P17176760906665333881

`A039500(eq[1, and(1, A039500(n+1))]+1)`
-/

namespace A039503.P17176760906665333881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A039500 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039500 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A039503.P17176760906665333881

/-! ## A039503.P10777152634661218250

`∩[A039500(n+1), A004273(n)]`
-/

namespace A039503.P10777152634661218250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039503.P10777152634661218250

/-! ## A039503.P9008874215729605883

`∩[A039500(n+1), A060747(n)]`
-/

namespace A039503.P9008874215729605883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039503.P9008874215729605883

/-! ## A039503.P12392101411059967834

`record[(2*n+1)/A056957(2*n+1)]`
-/

namespace A039503.P12392101411059967834
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) / (A056957 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039503.P12392101411059967834

/-! ## A039503.P2696914000391391677

`filter[A039500(n+1), A000035(#)]`
-/

namespace A039503.P2696914000391391677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039500 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A039503.P2696914000391391677

/-! ## A039503.P10044414358936837493

`eq[A033999(n), A056957(n+1)]+1`
-/

namespace A039503.P10044414358936837493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A039503.P10044414358936837493

/-! ## A039503.P6138405559788746403

`A004273(record[A003602(A039500(n+1))])`
-/

namespace A039503.P6138405559788746403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A039500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039503.P6138405559788746403

/-! ## A039503.P17621941815038733074

`A005408(record[A057979(A039500(n+1))])`
-/

namespace A039503.P17621941815038733074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A039500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039503.P17621941815038733074

/-! ## A039503.P10636665538895100424

`eq[n, A056957(A093178(n))*A093178(n)]`
-/

namespace A039503.P10636665538895100424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (A093178 n).toNat * A093178 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039503.P10636665538895100424

/-! ## A039503.P3227485457893693701

`A003602(record[A058281(A039500(n+1))])`
-/

namespace A039503.P3227485457893693701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058281 (A039500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039503.P3227485457893693701

/-! ## A039503.P5223660337529800522

`A008611(record[A001281(A039500(n+1))])`
-/

namespace A039503.P5223660337529800522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A039500 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039503.P5223660337529800522

/-! ## A039503.P1157315545374219410

`eq[A056957(A233583(n+1))+1, A020639(n+1)]`
-/

namespace A039503.P1157315545374219410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (A233583 (n + 1)).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039503.P1157315545374219410

/-!
# A039504: Odd numbers from A039501.

The programs for A039504, there is no canonical definition to state claims against.
-/

/-! ## A039504.P10030440790251053439

`record[lcm(2, A039501(n+1))/2]`
-/

namespace A039504.P10030440790251053439
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A039501 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039504.P10030440790251053439

/-! ## A039504.P10734219246698715299

`record[A000265(A039501(n+1))]`
-/

namespace A039504.P10734219246698715299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A039501 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039504.P10734219246698715299

/-! ## A039504.P15488013363472210826

`∩[A020735(n+1), A039501(n+1)]`
-/

namespace A039504.P15488013363472210826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039504.P15488013363472210826

/-! ## A039504.P15515557799278942437

`∩[A039501(n+1), A004273(n)]`
-/

namespace A039504.P15515557799278942437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039504.P15515557799278942437

/-! ## A039504.P4895662444608822347

`∩[A039501(n+1), A004274(n)]`
-/

namespace A039504.P4895662444608822347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039504.P4895662444608822347

/-! ## A039504.P5043429571263245726

`∩[A039501(n+1), A004281(n)]`
-/

namespace A039504.P5043429571263245726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039504.P5043429571263245726

/-! ## A039504.P13191072090336494528

`∩[A039501(n+1), A060747(n)]`
-/

namespace A039504.P13191072090336494528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039504.P13191072090336494528

/-! ## A039504.P14735821084626905902

`∩[A039501(n+1), A062545(n)]`
-/

namespace A039504.P14735821084626905902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039504.P14735821084626905902

/-! ## A039504.P13522072653545660147

`∩[A039501(n+1), A130773(n)]`
-/

namespace A039504.P13522072653545660147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039504.P13522072653545660147

/-! ## A039504.P9491411829131002355

`∩[A039501(n+1), A163985(n)]`
-/

namespace A039504.P9491411829131002355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039504.P9491411829131002355

/-! ## A039504.P6682085859889956511

`∩[A039501(n+1), A223134(n)]`
-/

namespace A039504.P6682085859889956511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039504.P6682085859889956511

/-! ## A039504.P9797807626811054007

`∩[A004280(n+1), A039501(n+1)]`
-/

namespace A039504.P9797807626811054007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039504.P9797807626811054007

/-! ## A039504.P5329615073370145907

`∩[A039501(n+1), A140139(n+1)]`
-/

namespace A039504.P5329615073370145907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039504.P5329615073370145907

/-! ## A039504.P17297267965619003123

`∩[A039501(n+1), A144396(n+1)]`
-/

namespace A039504.P17297267965619003123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039504.P17297267965619003123

/-! ## A039504.P995416087345430754

`∩[A039501(n+1), A004276(n)]`
-/

namespace A039504.P995416087345430754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039504.P995416087345430754

/-! ## A039504.P13042693066707078351

`∩[A039501(n+1), A088948(n+1)]`
-/

namespace A039504.P13042693066707078351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039504.P13042693066707078351

/-! ## A039504.P11898559757250031550

`eq[5, A056957(n^(n%2))]`
-/

namespace A039504.P11898559757250031550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (n ^ (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039504.P11898559757250031550

/-! ## A039504.P6553847604142110020

`eq[5, A056957(A093178(n))]`
-/

namespace A039504.P6553847604142110020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056957 (A093178 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039504.P6553847604142110020

/-! ## A039504.P2361580327812763862

`filter[A039501(n+1), A000035(#)]`
-/

namespace A039504.P2361580327812763862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A039504.P2361580327812763862

/-!
# A039505: Odd numbers from A039502.

The programs for A039505, there is no canonical definition to state claims against.
-/

/-! ## A039505.P8158155620749380970

`record[A000265(A039502(n+1))]`
-/

namespace A039505.P8158155620749380970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A039502 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A039505.P8158155620749380970

/-! ## A039505.P1919945142900773223

`∩[A039502(n+1), A004273(n)]`
-/

namespace A039505.P1919945142900773223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P1919945142900773223

/-! ## A039505.P8249221202260823669

`∩[A039502(n+1), A020742(n)]`
-/

namespace A039505.P8249221202260823669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P8249221202260823669

/-! ## A039505.P1589411335673423823

`∩[A039502(n+1), A060747(n)]`
-/

namespace A039505.P1589411335673423823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P1589411335673423823

/-! ## A039505.P17742833296129116996

`∩[A039502(n+1), A062545(n)]`
-/

namespace A039505.P17742833296129116996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062545 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P17742833296129116996

/-! ## A039505.P11392655327478418240

`∩[A039502(n+1), A130773(n)]`
-/

namespace A039505.P11392655327478418240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P11392655327478418240

/-! ## A039505.P8742493017133667803

`∩[A039502(n+1), A163985(n)]`
-/

namespace A039505.P8742493017133667803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163985 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P8742493017133667803

/-! ## A039505.P11885619777797365158

`∩[A039502(n+1), A223134(n)]`
-/

namespace A039505.P11885619777797365158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P11885619777797365158

/-! ## A039505.P4489226791181076275

`∩[A039502(n+1), A326494(n)]`
-/

namespace A039505.P4489226791181076275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326494 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P4489226791181076275

/-! ## A039505.P7540780841013488548

`∩[A004280(n+1), A039502(n+1)]`
-/

namespace A039505.P7540780841013488548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P7540780841013488548

/-! ## A039505.P16070092698317863281

`∩[A005818(n+1), A039502(n+1)]`
-/

namespace A039505.P16070092698317863281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005818 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P16070092698317863281

/-! ## A039505.P3141169885339035005

`∩[A020735(n+1), A039502(n+1)]`
-/

namespace A039505.P3141169885339035005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P3141169885339035005

/-! ## A039505.P16585385533187253736

`∩[A039502(n+1), A140139(n+1)]`
-/

namespace A039505.P16585385533187253736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140139 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P16585385533187253736

/-! ## A039505.P17139626246567511304

`∩[A039502(n+1), A144396(n+1)]`
-/

namespace A039505.P17139626246567511304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P17139626246567511304

/-! ## A039505.P5154764323575298731

`∩[A039502(n+1), A299231(n+1)]`
-/

namespace A039505.P5154764323575298731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P5154764323575298731

/-! ## A039505.P10190479378128986170

`∩[A039502(n+1), A004274(n)]`
-/

namespace A039505.P10190479378128986170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P10190479378128986170

/-! ## A039505.P11723841021893291265

`∩[A039502(n+1), A004276(n)]`
-/

namespace A039505.P11723841021893291265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P11723841021893291265

/-! ## A039505.P2520108954364582283

`∩[A039502(n+1), A004281(n)]`
-/

namespace A039505.P2520108954364582283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P2520108954364582283

/-! ## A039505.P7101028049207415801

`∩[A039502(n+1), A088948(n+1)]`
-/

namespace A039505.P7101028049207415801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039505.P7101028049207415801

/-!
# A039507: Number of odd non-cluster primes less than 10^n.

The programs for A039507, there is no canonical definition to state claims against.
-/

/-! ## A039507.P9908599833189413176

`A006880(n+1)-A039506(n+1)-1`
-/

namespace A039507.P9908599833189413176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006880 (n + 1) - A039506 (n + 1) - 1

end

end A039507.P9908599833189413176

/-!
# A039510: a(n) = 2i + 1 where i is the least index such that A039508(i) = A039509(n).

The programs for A039510, there is no canonical definition to state claims against.
-/

/-! ## A039510.P13110638748359360826

`A039511(A039509(n))`
-/

namespace A039510.P13110638748359360826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039511 (A039509 n).toNat

end

end A039510.P13110638748359360826

/-! ## A039510.P1387274447334514441

`A039511(record[A039508(n)])`
-/

namespace A039510.P1387274447334514441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039511 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039510.P1387274447334514441

/-!
# A039513: 2i + 1 such that A039508(i) = 2.

The programs for A039513, there is no canonical definition to state claims against.
-/

/-! ## A039513.P8717892965441678093

`2*eq[2, A039508(n)]+1`
-/

namespace A039513.P8717892965441678093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039513.P8717892965441678093

/-! ## A039513.P11186025817471382343

`eq[2, A039508(gcd(1-n, floor(n/2)))]`
-/

namespace A039513.P11186025817471382343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039508 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039513.P11186025817471382343

/-! ## A039513.P10675322376026061835

`A005408(eq[2, A039508(n)])`
-/

namespace A039513.P10675322376026061835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039513.P10675322376026061835

/-! ## A039513.P1234146628542272067

`eq[2, A039508(A057979(n))]`
-/

namespace A039513.P1234146628542272067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039508 (A057979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039513.P1234146628542272067

/-! ## A039513.P18077502398638049886

`A130773(eq[2, A039508(n)])`
-/

namespace A039513.P18077502398638049886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039513.P18077502398638049886

/-!
# A039514: 2i + 1 such that A039508(i) = 3.

The programs for A039514, there is no canonical definition to state claims against.
-/

/-! ## A039514.P12172993239763082667

`2*eq[3, A039508(n)]+1`
-/

namespace A039514.P12172993239763082667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039508 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A039514.P12172993239763082667

/-! ## A039514.P1186532278259026041

`eq[3, A039508(gcd(1-n, floor(n/2)))]`
-/

namespace A039514.P1186532278259026041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039508 (Int.gcd (1 - (n : ℤ)) ⌊(n : ℚ) / 2⌋)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039514.P1186532278259026041

/-! ## A039514.P7916651100559952541

`A005408(eq[3, A039508(n)])`
-/

namespace A039514.P7916651100559952541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039514.P7916651100559952541

/-! ## A039514.P12958880513286916274

`eq[3, A039508(A057979(n))]`
-/

namespace A039514.P12958880513286916274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039508 (A057979 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039514.P12958880513286916274

/-! ## A039514.P15474125961957516571

`A130773(eq[3, A039508(n)])`
-/

namespace A039514.P15474125961957516571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039514.P15474125961957516571

/-!
# A039515: Conjecturally, largest attractor in '3x+(2n+1)' problem.

The programs for A039515, there is no canonical definition to state claims against.
-/

/-! ## A039515.P6566229332924283274

`A039512(∑[A039508(n)]-1)`
-/

namespace A039515.P6566229332924283274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039508 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039512 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A039515.P6566229332924283274

/-! ## A039515.P16210317128345247494

`A039512(∑[A039508(n)%(3^n)])`
-/

namespace A039515.P16210317128345247494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039508 n) (3 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039512 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A039515.P16210317128345247494

/-!
# A039519: Numbers whose base-12 representation has the same nonzero number of 2's and 8's.

The programs for A039519, there is no canonical definition to state claims against.
-/

/-! ## A039519.P5330057499581189050

`A243167(A243170(3*n+5)+A061930(3*(n+1)))`
-/

namespace A039519.P5330057499581189050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243167 (A243170 (3 * n + 5) + A061930 (3 * (n + 1))).toNat

end

end A039519.P5330057499581189050

/-!
# A039523: Numbers whose base-12 representation has the same nonzero number of 3's and 4's.

The programs for A039523, there is no canonical definition to state claims against.
-/

/-! ## A039523.P14281626581287216945

`A039524(n+1)-A331735(A039533(n+1))`
-/

namespace A039523.P14281626581287216945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039524 (n + 1) - A331735 (A039533 (n + 1)).toNat

end

end A039523.P14281626581287216945

/-! ## A039523.P11904230337609284607

`A039525(n+1)-2*A331735(A039533(n+1))`
-/

namespace A039523.P11904230337609284607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039525 (n + 1) - 2 * A331735 (A039533 (n + 1)).toNat

end

end A039523.P11904230337609284607

/-!
# A039524: Numbers whose base-12 representation has the same nonzero number of 3's and 5's.

The programs for A039524, there is no canonical definition to state claims against.
-/

/-! ## A039524.P15916830454399224921

`A331735(A039533(n+1))+A039523(n+1)`
-/

namespace A039524.P15916830454399224921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331735 (A039533 (n + 1)).toNat + A039523 (n + 1)

end

end A039524.P15916830454399224921

/-! ## A039524.P2655949629261934025

`A039525(n+1)-A331735(A039533(n+1))`
-/

namespace A039524.P2655949629261934025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039525 (n + 1) - A331735 (A039533 (n + 1)).toNat

end

end A039524.P2655949629261934025

/-! ## A039524.P5032569141192907523

`A039526(n+1)-2*A331735(A039533(n+1))`
-/

namespace A039524.P5032569141192907523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039526 (n + 1) - 2 * A331735 (A039533 (n + 1)).toNat

end

end A039524.P5032569141192907523

/-!
# A039525: Numbers whose base-12 representation has the same nonzero number of 3's and 6's.

The programs for A039525, there is no canonical definition to state claims against.
-/

/-! ## A039525.P17370708503530017083

`A331735(A039533(n+1))+A039524(n+1)`
-/

namespace A039525.P17370708503530017083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331735 (A039533 (n + 1)).toNat + A039524 (n + 1)

end

end A039525.P17370708503530017083

/-! ## A039525.P10162250915824024273

`A039526(n+1)-A331735(A039533(n+1))`
-/

namespace A039525.P10162250915824024273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039526 (n + 1) - A331735 (A039533 (n + 1)).toNat

end

end A039525.P10162250915824024273

/-! ## A039525.P231286207114198655

`A039523(n+1)+2*A331735(A039533(n+1))`
-/

namespace A039525.P231286207114198655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039523 (n + 1) + 2 * A331735 (A039533 (n + 1)).toNat

end

end A039525.P231286207114198655

/-!
# A039526: Numbers whose base-12 representation has the same nonzero number of 3's and 7's.

The programs for A039526, there is no canonical definition to state claims against.
-/

/-! ## A039526.P7295813912910976720

`A331735(A039533(n+1))+A039525(n+1)`
-/

namespace A039526.P7295813912910976720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331735 (A039533 (n + 1)).toNat + A039525 (n + 1)

end

end A039526.P7295813912910976720

/-! ## A039526.P15881010684773130201

`A039527(n+1)-A331735(A039533(n+1))`
-/

namespace A039526.P15881010684773130201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039527 (n + 1) - A331735 (A039533 (n + 1)).toNat

end

end A039526.P15881010684773130201

/-! ## A039526.P15817730419953301608

`A039524(n+1)+2*A331735(A039533(n+1))`
-/

namespace A039526.P15817730419953301608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039524 (n + 1) + 2 * A331735 (A039533 (n + 1)).toNat

end

end A039526.P15817730419953301608

/-!
# A039527: Numbers whose base-12 representation has the same nonzero number of 3's and 8's.

The programs for A039527, there is no canonical definition to state claims against.
-/

/-! ## A039527.P16028782317635095095

`A331735(A039533(n+1))+A039526(n+1)`
-/

namespace A039527.P16028782317635095095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331735 (A039533 (n + 1)).toNat + A039526 (n + 1)

end

end A039527.P16028782317635095095

/-! ## A039527.P17546079108366014781

`A039528(n+1)-A331735(A039533(n+1))`
-/

namespace A039527.P17546079108366014781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039528 (n + 1) - A331735 (A039533 (n + 1)).toNat

end

end A039527.P17546079108366014781

/-! ## A039527.P11471431484513316541

`A039525(n+1)+2*A331735(A039533(n+1))`
-/

namespace A039527.P11471431484513316541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039525 (n + 1) + 2 * A331735 (A039533 (n + 1)).toNat

end

end A039527.P11471431484513316541

/-!
# A039528: Numbers whose base-12 representation has the same nonzero number of 3's and 9's.

The programs for A039528, there is no canonical definition to state claims against.
-/

/-! ## A039528.P6061972767271805998

`A331735(A039533(n+1))+A039527(n+1)`
-/

namespace A039528.P6061972767271805998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331735 (A039533 (n + 1)).toNat + A039527 (n + 1)

end

end A039528.P6061972767271805998

/-! ## A039528.P10194337028714322643

`A039529(n+1)-A331735(A039533(n+1))`
-/

namespace A039528.P10194337028714322643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039529 (n + 1) - A331735 (A039533 (n + 1)).toNat

end

end A039528.P10194337028714322643

/-! ## A039528.P2787016776678974067

`A039526(n+1)+2*A331735(A039533(n+1))`
-/

namespace A039528.P2787016776678974067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039526 (n + 1) + 2 * A331735 (A039533 (n + 1)).toNat

end

end A039528.P2787016776678974067

/-!
# A039529: Numbers whose base-12 representation has the same nonzero number of 3's and 10's.

The programs for A039529, there is no canonical definition to state claims against.
-/

/-! ## A039529.P1038309148049629565

`A331735(A039533(n+1))+A039528(n+1)`
-/

namespace A039529.P1038309148049629565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331735 (A039533 (n + 1)).toNat + A039528 (n + 1)

end

end A039529.P1038309148049629565

/-! ## A039529.P14939158651607018078

`A039530(n+1)-A331735(A039533(n+1))`
-/

namespace A039529.P14939158651607018078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039530 (n + 1) - A331735 (A039533 (n + 1)).toNat

end

end A039529.P14939158651607018078

/-! ## A039529.P10481378421530167196

`A039527(n+1)+2*A331735(A039533(n+1))`
-/

namespace A039529.P10481378421530167196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039527 (n + 1) + 2 * A331735 (A039533 (n + 1)).toNat

end

end A039529.P10481378421530167196

/-!
# A039530: Numbers whose base-12 representation has the same nonzero number of 3's and 11's.

The programs for A039530, there is no canonical definition to state claims against.
-/

/-! ## A039530.P4948123643667031722

`A331735(A039533(n+1))+A039529(n+1)`
-/

namespace A039530.P4948123643667031722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331735 (A039533 (n + 1)).toNat + A039529 (n + 1)

end

end A039530.P4948123643667031722

/-! ## A039530.P10089509239858767155

`A039528(n+1)+2*A331735(A039533(n+1))`
-/

namespace A039530.P10089509239858767155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039528 (n + 1) + 2 * A331735 (A039533 (n + 1)).toNat

end

end A039530.P10089509239858767155

/-!
# A039531: Numbers whose base-12 representation has the same nonzero number of 4's and 5's.

The programs for A039531, there is no canonical definition to state claims against.
-/

/-! ## A039531.P17219802132654583510

`A039538(n+1)-A096084(A287022(n))`
-/

namespace A039531.P17219802132654583510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039538 (n + 1) - A096084 (A287022 n).toNat

end

end A039531.P17219802132654583510

/-! ## A039531.P9998834747067943264

`A039532(n+1)-A331735(A039533(n+1))`
-/

namespace A039531.P9998834747067943264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039532 (n + 1) - A331735 (A039533 (n + 1)).toNat

end

end A039531.P9998834747067943264

/-! ## A039531.P15559751611034832915

`A039539(n+1)-A331735(A039533(n+1))-13`
-/

namespace A039531.P15559751611034832915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039539 (n + 1) - A331735 (A039533 (n + 1)).toNat - 13

end

end A039531.P15559751611034832915

/-!
# A039532: Numbers whose base-12 representation has the same nonzero number of 4's and 6's.

The programs for A039532, there is no canonical definition to state claims against.
-/

/-! ## A039532.P996202718644545570

`A039539(n+1)-A096084(A287022(n))`
-/

namespace A039532.P996202718644545570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039539 (n + 1) - A096084 (A287022 n).toNat

end

end A039532.P996202718644545570

/-! ## A039532.P7701877350411833938

`A331735(A039533(n+1))+A039531(n+1)`
-/

namespace A039532.P7701877350411833938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331735 (A039533 (n + 1)).toNat + A039531 (n + 1)

end

end A039532.P7701877350411833938

/-!
# A039533: Numbers whose base-12 representation has the same nonzero number of 4's and 7's.

The programs for A039533, there is no canonical definition to state claims against.
-/

/-! ## A039533.P6171175194761449130

`A039540(A046942(n+1))-13`
-/

namespace A039533.P6171175194761449130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039540 (A046942 (n + 1)).toNat - 13

end

end A039533.P6171175194761449130

/-!
# A039534: Numbers whose base-12 representation has the same nonzero number of 4's and 8's.

The programs for A039534, there is no canonical definition to state claims against.
-/

/-! ## A039534.P12614320404731031781

`A039541(n+1)-A096084(A287022(n))`
-/

namespace A039534.P12614320404731031781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039541 (n + 1) - A096084 (A287022 n).toNat

end

end A039534.P12614320404731031781

/-! ## A039534.P7221747178209638468

`A314013(A112394(n+1))+A314013(A008618(n))-13`
-/

namespace A039534.P7221747178209638468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314013 (A112394 (n + 1)).toNat + A314013 (A008618 n).toNat - 13

end

end A039534.P7221747178209638468

/-! ## A039534.P18194576552819771162

`A331735(A039533(n+1))+A039533(n+1)`
-/

namespace A039534.P18194576552819771162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331735 (A039533 (n + 1)).toNat + A039533 (n + 1)

end

end A039534.P18194576552819771162

/-!
# A039535: Numbers whose base-12 representation has the same nonzero number of 4's and 9's.

The programs for A039535, there is no canonical definition to state claims against.
-/

/-! ## A039535.P13563589045333366287

`A039542(n+1)-A096084(A287022(n))`
-/

namespace A039535.P13563589045333366287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039542 (n + 1) - A096084 (A287022 n).toNat

end

end A039535.P13563589045333366287

/-! ## A039535.P16627020030476680535

`A331735(A039533(n+1))+A039534(n+1)`
-/

namespace A039535.P16627020030476680535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331735 (A039533 (n + 1)).toNat + A039534 (n + 1)

end

end A039535.P16627020030476680535

/-! ## A039535.P1541177582634394235

`A039536(n+1)-A331735(A039533(n+1))`
-/

namespace A039535.P1541177582634394235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039536 (n + 1) - A331735 (A039533 (n + 1)).toNat

end

end A039535.P1541177582634394235

/-!
# A039536: Numbers whose base-12 representation has the same nonzero number of 4's and 10's.

The programs for A039536, there is no canonical definition to state claims against.
-/

/-! ## A039536.P12122655336426582666

`A039543(n+1)-A096084(A287022(n))`
-/

namespace A039536.P12122655336426582666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039543 (n + 1) - A096084 (A287022 n).toNat

end

end A039536.P12122655336426582666

/-! ## A039536.P13459180905226181737

`A331735(A039533(n+1))+A039535(n+1)`
-/

namespace A039536.P13459180905226181737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331735 (A039533 (n + 1)).toNat + A039535 (n + 1)

end

end A039536.P13459180905226181737

/-! ## A039536.P2251798189515871674

`A039534(n+1)+2*A331735(A039533(n+1))`
-/

namespace A039536.P2251798189515871674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039534 (n + 1) + 2 * A331735 (A039533 (n + 1)).toNat

end

end A039536.P2251798189515871674

/-!
# A039537: Numbers whose base-12 representation has the same nonzero number of 4's and 11's.

The programs for A039537, there is no canonical definition to state claims against.
-/

/-! ## A039537.P448329993371846953

`A331735(A039533(n+1))+A039536(n+1)`
-/

namespace A039537.P448329993371846953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331735 (A039533 (n + 1)).toNat + A039536 (n + 1)

end

end A039537.P448329993371846953

/-!
# A039538: Numbers whose base-12 representation has the same nonzero number of 5's and 6's.

The programs for A039538, there is no canonical definition to state claims against.
-/

/-! ## A039538.P4002337013746922807

`A039544(A032559(n+1))-13`
-/

namespace A039538.P4002337013746922807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039544 (A032559 (n + 1)).toNat - 13

end

end A039538.P4002337013746922807

/-! ## A039538.P15113980466433985781

`A039544(A077739(n+1))-13`
-/

namespace A039538.P15113980466433985781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039544 (A077739 (n + 1)).toNat - 13

end

end A039538.P15113980466433985781

/-! ## A039538.P14205158311363043276

`A039544(A078213(n+1))-13`
-/

namespace A039538.P14205158311363043276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039544 (A078213 (n + 1)).toNat - 13

end

end A039538.P14205158311363043276

/-! ## A039538.P8373760846739287167

`A039544(A276142(n+1))-13`
-/

namespace A039538.P8373760846739287167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039544 (A276142 (n + 1)).toNat - 13

end

end A039538.P8373760846739287167

/-! ## A039538.P8102153587751470591

`abs(A039549(record[A077739(n+1)])-13)-13`
-/

namespace A039538.P8102153587751470591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A039549 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 13| - 13

end

end A039538.P8102153587751470591

/-!
# A039539: Numbers whose base-12 representation has the same nonzero number of 5's and 7's.

The programs for A039539, there is no canonical definition to state claims against.
-/

/-! ## A039539.P6321562689424197758

`A039545(A032559(n+1))-13`
-/

namespace A039539.P6321562689424197758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039545 (A032559 (n + 1)).toNat - 13

end

end A039539.P6321562689424197758

/-! ## A039539.P18093195194848234922

`A039545(A077739(n+1))-13`
-/

namespace A039539.P18093195194848234922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039545 (A077739 (n + 1)).toNat - 13

end

end A039539.P18093195194848234922

/-! ## A039539.P4856017056915236768

`A039545(A078213(n+1))-13`
-/

namespace A039539.P4856017056915236768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039545 (A078213 (n + 1)).toNat - 13

end

end A039539.P4856017056915236768

/-! ## A039539.P13335795055735425788

`A039545(A276142(n+1))-13`
-/

namespace A039539.P13335795055735425788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039545 (A276142 (n + 1)).toNat - 13

end

end A039539.P13335795055735425788

/-! ## A039539.P8754997672088973505

`(A039550(A276142(n+1))-13)^A020985(n)²-13`
-/

namespace A039539.P8754997672088973505
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039550 (A276142 (n + 1)).toNat - 13 : ℚ) ^ (A020985 n ^ 2 : ℤ) - 13

end

end A039539.P8754997672088973505

/-!
# A039540: Numbers whose base-12 representation has the same nonzero number of 5's and 8's.

The programs for A039540, there is no canonical definition to state claims against.
-/

/-! ## A039540.P10851664018380957193

`A039546(A032559(n+1))-13`
-/

namespace A039540.P10851664018380957193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039546 (A032559 (n + 1)).toNat - 13

end

end A039540.P10851664018380957193

/-! ## A039540.P11420958523026283095

`A039546(A078213(n+1))-13`
-/

namespace A039540.P11420958523026283095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039546 (A078213 (n + 1)).toNat - 13

end

end A039540.P11420958523026283095

/-! ## A039540.P11766978466676637563

`A039546(A276142(n+1))-13`
-/

namespace A039540.P11766978466676637563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039546 (A276142 (n + 1)).toNat - 13

end

end A039540.P11766978466676637563

/-! ## A039540.P14859087999855077008

`xor(A039547(n+1), A168400(A000244(n)))-13`
-/

namespace A039540.P14859087999855077008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039547 (n + 1)) (A168400 (A000244 n).toNat) - 13

end

end A039540.P14859087999855077008

/-! ## A039540.P6838045741320003490

`xor(A039547(A032559(n+1)), A168400(2*n+1))-13`
-/

namespace A039540.P6838045741320003490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039547 (A032559 (n + 1)).toNat) (A168400 (2 * n + 1)) - 13

end

end A039540.P6838045741320003490

/-!
# A039541: Numbers whose base-12 representation has the same nonzero number of 5's and 9's.

The programs for A039541, there is no canonical definition to state claims against.
-/

/-! ## A039541.P7531929005606973046

`A157921(n+1)+A010688(n²²)-(A040323(n+3)+1)`
-/

namespace A039541.P7531929005606973046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157921 (n + 1) + A010688 ((n ^ 2) ^ 2) - (A040323 (n + 3) + 1)

end

end A039541.P7531929005606973046

/-! ## A039541.P8496839118184804364

`A039547(A032559(n+1))-13`
-/

namespace A039541.P8496839118184804364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039547 (A032559 (n + 1)).toNat - 13

end

end A039541.P8496839118184804364

/-! ## A039541.P16195207387906801776

`A039547(A078213(n+1))-13`
-/

namespace A039541.P16195207387906801776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039547 (A078213 (n + 1)).toNat - 13

end

end A039541.P16195207387906801776

/-! ## A039541.P134221269107217703

`A039547(A276142(n+1))-13`
-/

namespace A039541.P134221269107217703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039547 (A276142 (n + 1)).toNat - 13

end

end A039541.P134221269107217703

/-! ## A039541.P16605830051452279498

`xor(A039542(n+1), A168400(A000244(n)))`
-/

namespace A039541.P16605830051452279498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039542 (n + 1)) (A168400 (A000244 n).toNat)

end

end A039541.P16605830051452279498

/-!
# A039542: Numbers whose base-12 representation has the same nonzero number of 5's and 10's.

The programs for A039542, there is no canonical definition to state claims against.
-/

/-! ## A039542.P17245810282472604058

`A039548(A032559(n+1))-13`
-/

namespace A039542.P17245810282472604058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039548 (A032559 (n + 1)).toNat - 13

end

end A039542.P17245810282472604058

/-! ## A039542.P16546283438489135634

`xor(A039541(n+1), A168400(A000244(n)))`
-/

namespace A039542.P16546283438489135634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039541 (n + 1)) (A168400 (A000244 n).toNat)

end

end A039542.P16546283438489135634

/-! ## A039542.P12112052057093596033

`xor(A039541(A032559(n+1)), A168400(2*n+1))`
-/

namespace A039542.P12112052057093596033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039541 (A032559 (n + 1)).toNat) (A168400 (2 * n + 1))

end

end A039542.P12112052057093596033

/-! ## A039542.P16276104474866949387

`A039541(A032559(n+1))+13-12^A008618(n)`
-/

namespace A039542.P16276104474866949387
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A039541 (A032559 (n + 1)).toNat + 13 : ℚ) - (12 : ℚ) ^ (A008618 n : ℤ)

end

end A039542.P16276104474866949387

/-! ## A039542.P4031623480793938814

`xor(A039541(n+1), A168400(A032559(n+1)+n))`
-/

namespace A039542.P4031623480793938814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039541 (n + 1)) (A168400 (A032559 (n + 1) + (n : ℤ)).toNat)

end

end A039542.P4031623480793938814

/-!
# A039543: Numbers whose base-12 representation has the same nonzero number of 5's and 11's.

The programs for A039543, there is no canonical definition to state claims against.
-/

/-! ## A039543.P865467423006404433

`A142241(3*n+2)+A010881(A185918(3*n+1))`
-/

namespace A039543.P865467423006404433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142241 (3 * n + 2) + A010881 (A185918 (3 * n + 1)).toNat

end

end A039543.P865467423006404433

/-! ## A039543.P10739416671323857460

`A096084(A287022(n))+A039536(n+1)`
-/

namespace A039543.P10739416671323857460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096084 (A287022 n).toNat + A039536 (n + 1)

end

end A039543.P10739416671323857460

/-! ## A039543.P15591476629283014933

`A331735(A039533(n+1))+A039542(n+1)`
-/

namespace A039543.P15591476629283014933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331735 (A039533 (n + 1)).toNat + A039542 (n + 1)

end

end A039543.P15591476629283014933

/-!
# A039544: Numbers whose base-12 representation has the same nonzero number of 6's and 7's.

The programs for A039544, there is no canonical definition to state claims against.
-/

/-! ## A039544.P13626788454860367022

`A039538(A032559(n+1))+13`
-/

namespace A039544.P13626788454860367022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039538 (A032559 (n + 1)).toNat + 13

end

end A039544.P13626788454860367022

/-! ## A039544.P634243552544659137

`A039538(A077739(n+1))+13`
-/

namespace A039544.P634243552544659137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039538 (A077739 (n + 1)).toNat + 13

end

end A039544.P634243552544659137

/-! ## A039544.P8381027003107356672

`A039538(A078213(n+1))+13`
-/

namespace A039544.P8381027003107356672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039538 (A078213 (n + 1)).toNat + 13

end

end A039544.P8381027003107356672

/-! ## A039544.P10301901837515889512

`A039549(record[A077739(n+1)])-13`
-/

namespace A039544.P10301901837515889512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039549 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 13

end

end A039544.P10301901837515889512

/-! ## A039544.P1845697936810785957

`A039549(record[A078213(n+1)])-13`
-/

namespace A039544.P1845697936810785957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039549 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 13

end

end A039544.P1845697936810785957

/-!
# A039545: Numbers whose base-12 representation has the same nonzero number of 6's and 8's.

The programs for A039545, there is no canonical definition to state claims against.
-/

/-! ## A039545.P5129377698695074314

`A039539(A032559(n+1))+13`
-/

namespace A039545.P5129377698695074314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039539 (A032559 (n + 1)).toNat + 13

end

end A039545.P5129377698695074314

/-! ## A039545.P15233661359888704255

`A039539(A077739(n+1))+13`
-/

namespace A039545.P15233661359888704255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039539 (A077739 (n + 1)).toNat + 13

end

end A039545.P15233661359888704255

/-! ## A039545.P2257027014518780202

`A039539(A078213(n+1))+13`
-/

namespace A039545.P2257027014518780202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039539 (A078213 (n + 1)).toNat + 13

end

end A039545.P2257027014518780202

/-! ## A039545.P10571506763808664990

`A039539(A276142(n+1))+13`
-/

namespace A039545.P10571506763808664990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039539 (A276142 (n + 1)).toNat + 13

end

end A039545.P10571506763808664990

/-! ## A039545.P258353838422772916

`abs((A039550(A032559(n+1))-13)*A020985(n))`
-/

namespace A039545.P258353838422772916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A039550 (A032559 (n + 1)).toNat - 13) * A020985 n|

end

end A039545.P258353838422772916

/-!
# A039546: Numbers whose base-12 representation has the same nonzero number of 6's and 9's.

The programs for A039546, there is no canonical definition to state claims against.
-/

/-! ## A039546.P17547545231962798360

`A039540(A032559(n+1))+13`
-/

namespace A039546.P17547545231962798360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039540 (A032559 (n + 1)).toNat + 13

end

end A039546.P17547545231962798360

/-! ## A039546.P4671426899428713365

`A039540(A078213(n+1))+13`
-/

namespace A039546.P4671426899428713365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039540 (A078213 (n + 1)).toNat + 13

end

end A039546.P4671426899428713365

/-! ## A039546.P17847346465837522780

`A039540(A276142(n+1))+13`
-/

namespace A039546.P17847346465837522780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039540 (A276142 (n + 1)).toNat + 13

end

end A039546.P17847346465837522780

/-! ## A039546.P18079580357456744648

`xor(A039547(n+1), A168400(A000244(n)))`
-/

namespace A039546.P18079580357456744648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039547 (n + 1)) (A168400 (A000244 n).toNat)

end

end A039546.P18079580357456744648

/-! ## A039546.P15216762482112005934

`xor(A039550(n+1), A168400(A000244(n)))-13`
-/

namespace A039546.P15216762482112005934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039550 (n + 1)) (A168400 (A000244 n).toNat) - 13

end

end A039546.P15216762482112005934

/-!
# A039547: Numbers whose base-12 representation has the same nonzero number of 6's and 10's.

The programs for A039547, there is no canonical definition to state claims against.
-/

/-! ## A039547.P4191004639836286178

`A039541(A032559(n+1))+13`
-/

namespace A039547.P4191004639836286178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039541 (A032559 (n + 1)).toNat + 13

end

end A039547.P4191004639836286178

/-! ## A039547.P1993587270481646928

`A039541(A078213(n+1))+13`
-/

namespace A039547.P1993587270481646928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039541 (A078213 (n + 1)).toNat + 13

end

end A039547.P1993587270481646928

/-! ## A039547.P16663214079105311342

`A039541(A276142(n+1))+13`
-/

namespace A039547.P16663214079105311342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039541 (A276142 (n + 1)).toNat + 13

end

end A039547.P16663214079105311342

/-! ## A039547.P4226362992664778802

`xor(A039546(n+1), A168400(A000244(n)))`
-/

namespace A039547.P4226362992664778802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039546 (n + 1)) (A168400 (A000244 n).toNat)

end

end A039547.P4226362992664778802

/-!
# A039548: Numbers whose base-12 representation has the same nonzero number of 6's and 11's.

The programs for A039548, there is no canonical definition to state claims against.
-/

/-! ## A039548.P16723706156751260872

`A039542(A032559(n+1))+13`
-/

namespace A039548.P16723706156751260872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039542 (A032559 (n + 1)).toNat + 13

end

end A039548.P16723706156751260872

/-! ## A039548.P11674511141418224524

`xor(A039541(n+1), A168400(A000244(n)))+13`
-/

namespace A039548.P11674511141418224524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039541 (n + 1)) (A168400 (A000244 n).toNat) + 13

end

end A039548.P11674511141418224524

/-! ## A039548.P17890046052237252204

`gcd(12, A008618(n))+A039541(A032559(n+1))+13`
-/

namespace A039548.P17890046052237252204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 12 (A008618 n) : ℤ) + (A039541 (A032559 (n + 1)).toNat + 13)

end

end A039548.P17890046052237252204

/-! ## A039548.P12050858618223411655

`2*(A039541(A032559(n+1))+13)-A039546(n+1)`
-/

namespace A039548.P12050858618223411655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A039541 (A032559 (n + 1)).toNat + 13) - A039546 (n + 1)

end

end A039548.P12050858618223411655

/-! ## A039548.P2406656783617261140

`xor(A039541(A032559(n+1)), A168400(2*n+1))+13`
-/

namespace A039548.P2406656783617261140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039541 (A032559 (n + 1)).toNat) (A168400 (2 * n + 1)) + 13

end

end A039548.P2406656783617261140

/-!
# A039549: Numbers whose base-12 representation has the same nonzero number of 7's and 8's.

The programs for A039549, there is no canonical definition to state claims against.
-/

/-! ## A039549.P9341137440169984379

`A233583(A039553(n+1)-12)`
-/

namespace A039549.P9341137440169984379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A039553 (n + 1) - 12).toNat

end

end A039549.P9341137440169984379

/-! ## A039549.P7061506711424629443

`A233583(A039556(n+1)-25)`
-/

namespace A039549.P7061506711424629443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A039556 (n + 1) - 25).toNat

end

end A039549.P7061506711424629443

/-! ## A039549.P4991770683802020282

`A233583(A039558(n+1)-38)`
-/

namespace A039549.P4991770683802020282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A039558 (n + 1) - 38).toNat

end

end A039549.P4991770683802020282

/-! ## A039549.P9521087623723636129

`A039544(A032559(n+1))+13`
-/

namespace A039549.P9521087623723636129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039544 (A032559 (n + 1)).toNat + 13

end

end A039549.P9521087623723636129

/-! ## A039549.P11418800276726301229

`A039544(A077739(n+1))+13`
-/

namespace A039549.P11418800276726301229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039544 (A077739 (n + 1)).toNat + 13

end

end A039549.P11418800276726301229

/-!
# A039550: Numbers whose base-12 representation has the same nonzero number of 7's and 9's.

The programs for A039550, there is no canonical definition to state claims against.
-/

/-! ## A039550.P10867766786781756281

`A233583(A039554(n+1)-12)`
-/

namespace A039550.P10867766786781756281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A039554 (n + 1) - 12).toNat

end

end A039550.P10867766786781756281

/-! ## A039550.P11204357271231889712

`A233583(A039557(n+1)-12)-13`
-/

namespace A039550.P11204357271231889712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A039557 (n + 1) - 12).toNat - 13

end

end A039550.P11204357271231889712

/-! ## A039550.P11425501119170511693

`A039545(A032559(n+1))+13`
-/

namespace A039550.P11425501119170511693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039545 (A032559 (n + 1)).toNat + 13

end

end A039550.P11425501119170511693

/-! ## A039550.P14142490460405447184

`A039545(A077739(n+1))+13`
-/

namespace A039550.P14142490460405447184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039545 (A077739 (n + 1)).toNat + 13

end

end A039550.P14142490460405447184

/-! ## A039550.P18401220718123595582

`A039545(A078213(n+1))+13`
-/

namespace A039550.P18401220718123595582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039545 (A078213 (n + 1)).toNat + 13

end

end A039550.P18401220718123595582

/-!
# A039551: Numbers whose base-12 representation has the same nonzero number of 7's and 10's.

The programs for A039551, there is no canonical definition to state claims against.
-/

/-! ## A039551.P14475630644462779581

`A233583(A039555(n+1)-12)`
-/

namespace A039551.P14475630644462779581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A039555 (n + 1) - 12).toNat

end

end A039551.P14475630644462779581

/-! ## A039551.P12738388691640701733

`A039546(n+1)+13%A112394(2*(n+2))`
-/

namespace A039551.P12738388691640701733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039546 (n + 1) + Int.tmod 13 (A112394 (2 * (n + 2)))

end

end A039551.P12738388691640701733

/-! ## A039551.P12571271907064659470

`A039546(A032559(n+1))+13`
-/

namespace A039551.P12571271907064659470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039546 (A032559 (n + 1)).toNat + 13

end

end A039551.P12571271907064659470

/-! ## A039551.P15230361967161685093

`A039546(A078213(n+1))+13`
-/

namespace A039551.P15230361967161685093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039546 (A078213 (n + 1)).toNat + 13

end

end A039551.P15230361967161685093

/-! ## A039551.P16887288463449296625

`A039546(A276142(n+1))+13`
-/

namespace A039551.P16887288463449296625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039546 (A276142 (n + 1)).toNat + 13

end

end A039551.P16887288463449296625

/-!
# A039552: Numbers whose base-12 representation has the same nonzero number of 7's and 11's.

The programs for A039552, there is no canonical definition to state claims against.
-/

/-! ## A039552.P6244451005909176599

`A214863(A214863(n+1)+A077168(n))`
-/

namespace A039552.P6244451005909176599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214863 (A214863 (n + 1) + A077168 n).toNat

end

end A039552.P6244451005909176599

/-! ## A039552.P1274740685815764162

`A039547(n+1)+13%A112394(2*(n+2))`
-/

namespace A039552.P1274740685815764162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039547 (n + 1) + Int.tmod 13 (A112394 (2 * (n + 2)))

end

end A039552.P1274740685815764162

/-! ## A039552.P18416380185517092413

`A214863(A214863(n+1)+A062399(n)+1)`
-/

namespace A039552.P18416380185517092413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214863 (A214863 (n + 1) + (A062399 n + 1)).toNat

end

end A039552.P18416380185517092413

/-! ## A039552.P17076135900166321765

`A039547(A032559(n+1))+13`
-/

namespace A039552.P17076135900166321765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039547 (A032559 (n + 1)).toNat + 13

end

end A039552.P17076135900166321765

/-! ## A039552.P16808982349949244637

`A039547(A078213(n+1))+13`
-/

namespace A039552.P16808982349949244637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039547 (A078213 (n + 1)).toNat + 13

end

end A039552.P16808982349949244637

/-!
# A039553: Numbers whose base-12 representation has the same nonzero number of 8's and 9's.

The programs for A039553, there is no canonical definition to state claims against.
-/

/-! ## A039553.P6632069870168567099

`A039556(A187829(n+1))-13`
-/

namespace A039553.P6632069870168567099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039556 (A187829 (n + 1)).toNat - 13

end

end A039553.P6632069870168567099

/-! ## A039553.P17537329409549544456

`A233583(A039556(n+1)-12)`
-/

namespace A039553.P17537329409549544456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A039556 (n + 1) - 12).toNat

end

end A039553.P17537329409549544456

/-! ## A039553.P16417510171659181609

`A233583(A039558(n+1)-25)`
-/

namespace A039553.P16417510171659181609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A039558 (n + 1) - 25).toNat

end

end A039553.P16417510171659181609

/-! ## A039553.P11675662241401290440

`A039549(A032559(n+1))+13`
-/

namespace A039553.P11675662241401290440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039549 (A032559 (n + 1)).toNat + 13

end

end A039553.P11675662241401290440

/-! ## A039553.P12104875635964911999

`A039549(A077739(n+1))+13`
-/

namespace A039553.P12104875635964911999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039549 (A077739 (n + 1)).toNat + 13

end

end A039553.P12104875635964911999

/-!
# A039554: Numbers whose base-12 representation has the same nonzero number of 8's and 10's.

The programs for A039554, there is no canonical definition to state claims against.
-/

/-! ## A039554.P10874713519295977786

`A039557(A187829(n+1))-13`
-/

namespace A039554.P10874713519295977786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039557 (A187829 (n + 1)).toNat - 13

end

end A039554.P10874713519295977786

/-! ## A039554.P16930902085460383774

`A233583(A039557(n+1)-12)`
-/

namespace A039554.P16930902085460383774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A039557 (n + 1) - 12).toNat

end

end A039554.P16930902085460383774

/-! ## A039554.P16418133933592447360

`A039550(A032559(n+1))+13`
-/

namespace A039554.P16418133933592447360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039550 (A032559 (n + 1)).toNat + 13

end

end A039554.P16418133933592447360

/-! ## A039554.P13667197354225890717

`A039550(A077739(n+1))+13`
-/

namespace A039554.P13667197354225890717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039550 (A077739 (n + 1)).toNat + 13

end

end A039554.P13667197354225890717

/-! ## A039554.P8283809917273289119

`A039550(A078213(n+1))+13`
-/

namespace A039554.P8283809917273289119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039550 (A078213 (n + 1)).toNat + 13

end

end A039554.P8283809917273289119

/-!
# A039555: Numbers whose base-12 representation has the same nonzero number of 8's and 11's.

The programs for A039555, there is no canonical definition to state claims against.
-/

/-! ## A039555.P8377153608797926075

`A039551(A032559(n+1))+13`
-/

namespace A039555.P8377153608797926075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039551 (A032559 (n + 1)).toNat + 13

end

end A039555.P8377153608797926075

/-! ## A039555.P7577077242705427556

`A039551(A078213(n+1))+13`
-/

namespace A039555.P7577077242705427556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039551 (A078213 (n + 1)).toNat + 13

end

end A039555.P7577077242705427556

/-! ## A039555.P8995552310509089417

`A039551(A276142(n+1))+13`
-/

namespace A039555.P8995552310509089417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039551 (A276142 (n + 1)).toNat + 13

end

end A039555.P8995552310509089417

/-! ## A039555.P7527668620713158357

`xor(A039550(n+1), A168400(A000244(n)))+13`
-/

namespace A039555.P7527668620713158357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A039550 (n + 1)) (A168400 (A000244 n).toNat) + 13

end

end A039555.P7527668620713158357

/-!
# A039556: Numbers whose base-12 representation has the same nonzero number of 9's and 10's.

The programs for A039556, there is no canonical definition to state claims against.
-/

/-! ## A039556.P747835825786878124

`A039553(A187829(n+1))+13`
-/

namespace A039556.P747835825786878124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039553 (A187829 (n + 1)).toNat + 13

end

end A039556.P747835825786878124

/-! ## A039556.P2724274699830624360

`A039558(n+1)-A055984(A014963(A055985(n)))`
-/

namespace A039556.P2724274699830624360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039558 (n + 1) - A055984 (A014963 (A055985 n).toNat).toNat

end

end A039556.P2724274699830624360

/-! ## A039556.P16235145498866198579

`A182936(A006530(n+1))+A039558(A187829(n+1))-13`
-/

namespace A039556.P16235145498866198579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182936 (A006530 (n + 1)).toNat + (A039558 (A187829 (n + 1)).toNat - 13)

end

end A039556.P16235145498866198579

/-! ## A039556.P11457408889227061356

`A182977(A182936(n+1))+A039558(A187829(n+1))-13`
-/

namespace A039556.P11457408889227061356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182977 (A182936 (n + 1)).toNat + (A039558 (A187829 (n + 1)).toNat - 13)

end

end A039556.P11457408889227061356

/-! ## A039556.P18033669558865416121

`A182977(A182972(n+1))+A039558(A187829(n+1))-13`
-/

namespace A039556.P18033669558865416121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182977 (A182972 (n + 1)).toNat + (A039558 (A187829 (n + 1)).toNat - 13)

end

end A039556.P18033669558865416121

/-!
# A039557: Numbers whose base-12 representation has the same nonzero number of 9's and 11's.

The programs for A039557, there is no canonical definition to state claims against.
-/

/-! ## A039557.P16189162314830279364

`A039554(A187829(n+1))+13`
-/

namespace A039557.P16189162314830279364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039554 (A187829 (n + 1)).toNat + 13

end

end A039557.P16189162314830279364

/-! ## A039557.P16197214894513002265

`A039554(A032559(n+1))+13`
-/

namespace A039557.P16197214894513002265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039554 (A032559 (n + 1)).toNat + 13

end

end A039557.P16197214894513002265

/-! ## A039557.P3803766404494775042

`A039554(A077739(n+1))+13`
-/

namespace A039557.P3803766404494775042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039554 (A077739 (n + 1)).toNat + 13

end

end A039557.P3803766404494775042

/-! ## A039557.P7949045225747029529

`A039554(A078213(n+1))+13`
-/

namespace A039557.P7949045225747029529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039554 (A078213 (n + 1)).toNat + 13

end

end A039557.P7949045225747029529

/-! ## A039557.P8251036021163311504

`A039550(A276142(n+1))+26`
-/

namespace A039557.P8251036021163311504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039550 (A276142 (n + 1)).toNat + 26

end

end A039557.P8251036021163311504

/-!
# A039558: Numbers whose base-12 representation has the same nonzero number of 10's and 11's.

The programs for A039558, there is no canonical definition to state claims against.
-/

/-! ## A039558.P5730800183850569641

`∩[A039274(n+1), A102488(n+1)]`
-/

namespace A039558.P5730800183850569641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102488 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039558.P5730800183850569641

/-! ## A039558.P9189418694941269750

`A219636(A305396(n+1))`
-/

namespace A039558.P9189418694941269750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219636 (A305396 (n + 1)).toNat

end

end A039558.P9189418694941269750

/-! ## A039558.P7855068928150913869

`A039556(A187829(n+1))+13`
-/

namespace A039558.P7855068928150913869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039556 (A187829 (n + 1)).toNat + 13

end

end A039558.P7855068928150913869

/-! ## A039558.P15117735556964494157

`A345500(A039549(n+1))`
-/

namespace A039558.P15117735556964494157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345500 (A039549 (n + 1)).toNat

end

end A039558.P15117735556964494157

/-! ## A039558.P1419662169207316438

`A233583(A039556(n+1))+14`
-/

namespace A039558.P1419662169207316438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A039556 (n + 1)).toNat + 14

end

end A039558.P1419662169207316438

/-!
# A039559: Numbers whose base-4 representation has the same number of 0's, 1's and 2's.

The programs for A039559, there is no canonical definition to state claims against.
-/

/-! ## A039559.P12500800792565623962

`∩[A039002(n+1), A039004(n+1)]`
-/

namespace A039559.P12500800792565623962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039559.P12500800792565623962

/-! ## A039559.P6477567582155379340

`∩[A039002(n+1), A039003(n+1)]`
-/

namespace A039559.P6477567582155379340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039559.P6477567582155379340

/-! ## A039559.P5659313779259032175

`∩[A039003(n+1), A039004(n+1)]`
-/

namespace A039559.P5659313779259032175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039559.P5659313779259032175

/-!
# A039560: Numbers whose base-4 representation has the same number of 0's, 1's and 3's.

The programs for A039560, there is no canonical definition to state claims against.
-/

/-! ## A039560.P12264221975071973629

`∩[A039002(n+1), A039005(n+1)]`
-/

namespace A039560.P12264221975071973629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039560.P12264221975071973629

/-! ## A039560.P10018766636501087303

`∩[A031461(n+1), A039002(n+1)]`
-/

namespace A039560.P10018766636501087303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039560.P10018766636501087303

/-! ## A039560.P15212624232184975034

`∩[A031461(n+1), A039005(n+1)]`
-/

namespace A039560.P15212624232184975034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039560.P15212624232184975034

/-!
# A039561: Numbers whose base-4 representation has the number of 0's, 2's and 3's.

The programs for A039561, there is no canonical definition to state claims against.
-/

/-! ## A039561.P7130712695448127859

`∩[A039003(n+1), A039006(n+1)]`
-/

namespace A039561.P7130712695448127859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039561.P7130712695448127859

/-! ## A039561.P16176756058824657605

`∩[A031461(n+1), A039003(n+1)]`
-/

namespace A039561.P16176756058824657605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039003 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039561.P16176756058824657605

/-! ## A039561.P14585160453387976353

`∩[A031461(n+1), A039006(n+1)]`
-/

namespace A039561.P14585160453387976353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039561.P14585160453387976353

/-!
# A039562: Numbers whose base-4 representation has the same number of 1's, 2's and 3's.

The programs for A039562, there is no canonical definition to state claims against.
-/

/-! ## A039562.P7996838958471996358

`∩[A039004(n+1), A039006(n+1)]`
-/

namespace A039562.P7996838958471996358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039562.P7996838958471996358

/-! ## A039562.P10513687558105540720

`∩[A039004(n+1), A039005(n+1)]`
-/

namespace A039562.P10513687558105540720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039562.P10513687558105540720

/-! ## A039562.P12757321356007909789

`∩[A039005(n+1), A039006(n+1)]`
-/

namespace A039562.P12757321356007909789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039006 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039562.P12757321356007909789

/-! ## A039562.P3190775151668351784

`eq[A268444(A004468(n)), A268444(n)]`
-/

namespace A039562.P3190775151668351784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A004468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039562.P3190775151668351784

/-! ## A039562.P9583207238282749865

`eq[A268444(A006015(n)), A268444(n)]`
-/

namespace A039562.P9583207238282749865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 (A006015 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268444 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039562.P9583207238282749865

/-! ## A039562.P3071485157049566260

`eq[A338854(A006015(n)), A338854(n)]`
-/

namespace A039562.P3071485157049566260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A006015 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039562.P3071485157049566260

/-! ## A039562.P2207371508941031213

`eq[A319652(A004468(n)), A319652(n)]`
-/

namespace A039562.P2207371508941031213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 (A004468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039562.P2207371508941031213

/-! ## A039562.P9168270281568103901

`eq[A319720(A004468(n)), A319720(n)]`
-/

namespace A039562.P9168270281568103901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 (A004468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319720 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039562.P9168270281568103901

/-! ## A039562.P7601728186315912315

`eq[A338854(A004468(n)), A338854(n)]`
-/

namespace A039562.P7601728186315912315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 (A004468 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338854 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039562.P7601728186315912315

/-!
# A039563: Numbers whose base-5 representation has the same number of 0's, 1's and 2's.

The programs for A039563, there is no canonical definition to state claims against.
-/

/-! ## A039563.P13561737735419730768

`∩[A039007(n+1), A039010(n+1)]`
-/

namespace A039563.P13561737735419730768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039563.P13561737735419730768

/-! ## A039563.P18036492930518672644

`∩[A039007(n+1), A039008(n+1)]`
-/

namespace A039563.P18036492930518672644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039563.P18036492930518672644

/-! ## A039563.P1394836204690507568

`∩[A039008(n+1), A039010(n+1)]`
-/

namespace A039563.P1394836204690507568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039563.P1394836204690507568

/-!
# A039564: Numbers whose base-5 representation has the same number of 0's, 1's and 3's.

The programs for A039564, the canonical program `A039564.P6864717838563937078` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039564 has offset 1).

The definition of A039564 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2498 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039564.P2748375998850931851

`∩[A039007(n+1), A039011(n+1)]`
-/

namespace A039564.P2748375998850931851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039564.P2748375998850931851

namespace A039564

/-- `∩[A039007(n+1), A039011(n+1)]` -/
def P2748375998850931851.Spec : Prop :=
  ∀ n, (P2748375998850931851.a n : ℤ) = A039564 (n + 1)

end A039564

/-! ## A039564.P12177428618313031933

`∩[A039007(n+1), A039009(n+1)]`
-/

namespace A039564.P12177428618313031933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039564.P12177428618313031933

namespace A039564

/-- `∩[A039007(n+1), A039009(n+1)]` -/
def P12177428618313031933.Spec : Prop :=
  ∀ n, (P12177428618313031933.a n : ℤ) = A039564 (n + 1)

end A039564

/-! ## A039564.P6864717838563937078

`∩[A039009(n+1), A039011(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A039564

/-- `∩[A039009(n+1), A039011(n+1)]` -/
def P6864717838563937078.Spec : Prop :=
  ∀ n, (P6864717838563937078.a n : ℤ) = A039564 (n + 1)

theorem P6864717838563937078.correct : P6864717838563937078.Spec := by
  intro n
  simp only [A039564, Nat.add_sub_cancel]

end A039564

/-!
# A039565: Numbers whose base-5 representation has the same number of 0's, 1's and 4's.

The programs for A039565, there is no canonical definition to state claims against.
-/

/-! ## A039565.P6618703850401622413

`∩[A039007(n+1), A039012(n+1)]`
-/

namespace A039565.P6618703850401622413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039007 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039565.P6618703850401622413

/-! ## A039565.P7202759743871863449

`∩[A031470(n+1), A039007(n+1)]`
-/

namespace A039565.P7202759743871863449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039565.P7202759743871863449

/-! ## A039565.P8433728469075307546

`∩[A031470(n+1), A039012(n+1)]`
-/

namespace A039565.P8433728469075307546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039565.P8433728469075307546

/-!
# A039566: Numbers whose base-5 representation has the same number of 0's, 2's and 3's.

The programs for A039566, there is no canonical definition to state claims against.
-/

/-! ## A039566.P10201192312918119302

`∩[A039008(n+1), A039013(n+1)]`
-/

namespace A039566.P10201192312918119302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039566.P10201192312918119302

/-! ## A039566.P10582619765665325910

`∩[A039008(n+1), A039009(n+1)]`
-/

namespace A039566.P10582619765665325910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039566.P10582619765665325910

/-! ## A039566.P9833740688120936626

`∩[A039009(n+1), A039013(n+1)]`
-/

namespace A039566.P9833740688120936626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039566.P9833740688120936626

/-! ## A039566.P11058681783382584579

`A032817(A062399(n+1))`
-/

namespace A039566.P11058681783382584579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032817 (A062399 (n + 1)).toNat

end

end A039566.P11058681783382584579

/-! ## A039566.P15092955554957827363

`A072088(A032817(n+1))`
-/

namespace A039566.P15092955554957827363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A032817 (n + 1)).toNat

end

end A039566.P15092955554957827363

/-!
# A039567: Numbers whose base-5 representation has the same number of 0's, 2's and 4's.

The programs for A039567, there is no canonical definition to state claims against.
-/

/-! ## A039567.P18048778575248534363

`∩[A039008(n+1), A039014(n+1)]`
-/

namespace A039567.P18048778575248534363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039008 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039567.P18048778575248534363

/-! ## A039567.P12596296831853677843

`∩[A031470(n+1), A039008(n+1)]`
-/

namespace A039567.P12596296831853677843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039008 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039567.P12596296831853677843

/-! ## A039567.P14315988677450919973

`∩[A031470(n+1), A039014(n+1)]`
-/

namespace A039567.P14315988677450919973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039567.P14315988677450919973

/-!
# A039568: Numbers whose base-5 representation has the same number of 0's, 3's and 4's.

The programs for A039568, there is no canonical definition to state claims against.
-/

/-! ## A039568.P2786393438551160398

`∩[A031470(n+1), A039015(n+1)]`
-/

namespace A039568.P2786393438551160398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039568.P2786393438551160398

/-! ## A039568.P18441259650629774724

`∩[A031470(n+1), A039009(n+1)]`
-/

namespace A039568.P18441259650629774724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031470 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039568.P18441259650629774724

/-! ## A039568.P16663179798995051624

`∩[A039009(n+1), A039015(n+1)]`
-/

namespace A039568.P16663179798995051624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039009 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039568.P16663179798995051624

/-!
# A039569: Numbers whose base-5 representation has the same number of 1's, 2's and 3's.

The programs for A039569, there is no canonical definition to state claims against.
-/

/-! ## A039569.P1783002715099128679

`∩[A039010(n+1), A039011(n+1)]`
-/

namespace A039569.P1783002715099128679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039569.P1783002715099128679

/-! ## A039569.P18232704472546016468

`∩[A039010(n+1), A039013(n+1)]`
-/

namespace A039569.P18232704472546016468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039569.P18232704472546016468

/-! ## A039569.P4313939439204900651

`∩[A039011(n+1), A039013(n+1)]`
-/

namespace A039569.P4313939439204900651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039569.P4313939439204900651

/-! ## A039569.P7738406770627786272

`eq[A143025(n), A170823(n)]`
-/

namespace A039569.P7738406770627786272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143025 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170823 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039569.P7738406770627786272

/-! ## A039569.P7110433792438568292

`eq[A170823(n), A176895(n)]`
-/

namespace A039569.P7110433792438568292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170823 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176895 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039569.P7110433792438568292

/-!
# A039570: Numbers whose base-5 representation has the same number of 1's, 2's and 4's.

The programs for A039570, there is no canonical definition to state claims against.
-/

/-! ## A039570.P11644710399575125985

`∩[A039010(n+1), A039014(n+1)]`
-/

namespace A039570.P11644710399575125985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039570.P11644710399575125985

/-! ## A039570.P15960128839948091222

`∩[A039010(n+1), A039012(n+1)]`
-/

namespace A039570.P15960128839948091222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039012 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039570.P15960128839948091222

/-! ## A039570.P11064296570365794579

`∩[A039012(n+1), A039014(n+1)]`
-/

namespace A039570.P11064296570365794579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039570.P11064296570365794579

/-!
# A039571: Numbers whose base-5 representation has the same number of 1's, 3's and 4's.

The programs for A039571, the canonical program `A039571.P14324908586718389656` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039571 has offset 1).

The definition of A039571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2776 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039571.P14324908586718389656

`∩[A039011(n+1), A039012(n+1)]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A039571

/-- `∩[A039011(n+1), A039012(n+1)]` -/
def P14324908586718389656.Spec : Prop :=
  ∀ n, (P14324908586718389656.a n : ℤ) = A039571 (n + 1)

theorem P14324908586718389656.correct : P14324908586718389656.Spec := by
  intro n
  simp only [A039571, Nat.add_sub_cancel]

end A039571

/-! ## A039571.P487522682290538427

`∩[A039011(n+1), A039015(n+1)]`
-/

namespace A039571.P487522682290538427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039571.P487522682290538427

namespace A039571

/-- `∩[A039011(n+1), A039015(n+1)]` -/
def P487522682290538427.Spec : Prop :=
  ∀ n, (P487522682290538427.a n : ℤ) = A039571 (n + 1)

end A039571

/-! ## A039571.P13715953279071847771

`∩[A039012(n+1), A039015(n+1)]`
-/

namespace A039571.P13715953279071847771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039571.P13715953279071847771

namespace A039571

/-- `∩[A039012(n+1), A039015(n+1)]` -/
def P13715953279071847771.Spec : Prop :=
  ∀ n, (P13715953279071847771.a n : ℤ) = A039571 (n + 1)

end A039571

/-! ## A039571.P13734363436485768408

`eq[A019433(n), A025581(A276191(n))]`
-/

namespace A039571.P13734363436485768408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019433 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A276191 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039571.P13734363436485768408

namespace A039571

/-- `eq[A019433(n), A025581(A276191(n))]` -/
def P13734363436485768408.Spec : Prop :=
  ∀ n, (P13734363436485768408.a n : ℤ) = A039571 (n + 1)

end A039571

/-!
# A039572: Numbers whose base-5 representation has the same number of 2's, 3's and 4's.

The programs for A039572, there is no canonical definition to state claims against.
-/

/-! ## A039572.P5317689560631897704

`∩[A039013(n+1), A039014(n+1)]`
-/

namespace A039572.P5317689560631897704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039572.P5317689560631897704

/-! ## A039572.P11915122494581165748

`∩[A039013(n+1), A039015(n+1)]`
-/

namespace A039572.P11915122494581165748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039013 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039572.P11915122494581165748

/-! ## A039572.P9622462492416843443

`∩[A039014(n+1), A039015(n+1)]`
-/

namespace A039572.P9622462492416843443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039015 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039572.P9622462492416843443

/-! ## A039572.P15747569879024748612

`eq[A086993(A338803(n)), A338803(n)]`
-/

namespace A039572.P15747569879024748612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086993 (A338803 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338803 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039572.P15747569879024748612

/-!
# A039573: Numbers whose base-6 representation has the same number of 0's, 1's and 2's.

The programs for A039573, there is no canonical definition to state claims against.
-/

/-! ## A039573.P8883305485961419910

`∩[A039016(n+1), A039020(n+1)]`
-/

namespace A039573.P8883305485961419910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039573.P8883305485961419910

/-! ## A039573.P660025159712187649

`∩[A039016(n+1), A039017(n+1)]`
-/

namespace A039573.P660025159712187649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039573.P660025159712187649

/-! ## A039573.P4426125448777811122

`∩[A039017(n+1), A039020(n+1)]`
-/

namespace A039573.P4426125448777811122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039020 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039573.P4426125448777811122

/-!
# A039574: Numbers whose base-6 representation has the same number of 0's, 1's and 3's.

The programs for A039574, there is no canonical definition to state claims against.
-/

/-! ## A039574.P6532107441423398129

`∩[A039016(n+1), A039021(n+1)]`
-/

namespace A039574.P6532107441423398129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039574.P6532107441423398129

/-! ## A039574.P13726549926876515861

`∩[A039016(n+1), A039018(n+1)]`
-/

namespace A039574.P13726549926876515861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039574.P13726549926876515861

/-! ## A039574.P4377996533822083526

`∩[A039018(n+1), A039021(n+1)]`
-/

namespace A039574.P4377996533822083526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039574.P4377996533822083526

/-! ## A039574.P10403316904423488988

`lt[A113448(n+1), A113447(A113452(n+2))]`
-/

namespace A039574.P10403316904423488988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113447 (A113452 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039574.P10403316904423488988

/-!
# A039575: Numbers whose base-6 representation has the same number of 0's, 1's and 4's.

The programs for A039575, there is no canonical definition to state claims against.
-/

/-! ## A039575.P14636226622953394203

`∩[A039016(n+1), A039022(n+1)]`
-/

namespace A039575.P14636226622953394203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039575.P14636226622953394203

/-! ## A039575.P16203056522303450929

`∩[A039016(n+1), A039019(n+1)]`
-/

namespace A039575.P16203056522303450929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039575.P16203056522303450929

/-! ## A039575.P11776524253982514605

`∩[A039019(n+1), A039022(n+1)]`
-/

namespace A039575.P11776524253982514605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039575.P11776524253982514605

/-!
# A039576: Numbers whose base-6 representation has the same number of 0's, 1's and 5's.

The programs for A039576, there is no canonical definition to state claims against.
-/

/-! ## A039576.P18151388049924096722

`∩[A039016(n+1), A039023(n+1)]`
-/

namespace A039576.P18151388049924096722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039576.P18151388049924096722

/-! ## A039576.P5554426925568474973

`∩[A031477(n+1), A039016(n+1)]`
-/

namespace A039576.P5554426925568474973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039576.P5554426925568474973

/-! ## A039576.P14343293802891502024

`∩[A031477(n+1), A039023(n+1)]`
-/

namespace A039576.P14343293802891502024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039576.P14343293802891502024

/-!
# A039577: Numbers whose base-6 representation has the same number of 0's, 2's and 3's.

The programs for A039577, there is no canonical definition to state claims against.
-/

/-! ## A039577.P14168572278395318647

`∩[A039017(n+1), A039018(n+1)]`
-/

namespace A039577.P14168572278395318647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039577.P14168572278395318647

/-! ## A039577.P17074447577839876940

`∩[A039017(n+1), A039024(n+1)]`
-/

namespace A039577.P17074447577839876940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039577.P17074447577839876940

/-! ## A039577.P13063785438792097451

`∩[A039018(n+1), A039024(n+1)]`
-/

namespace A039577.P13063785438792097451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039577.P13063785438792097451

/-! ## A039577.P5418676868053951423

`eq[A000041(A351577(n)), A300290(n)]`
-/

namespace A039577.P5418676868053951423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A351577 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300290 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039577.P5418676868053951423

/-! ## A039577.P10211090854619212324

`eq[A000007(A047764(n+1)), A257684(n)]`
-/

namespace A039577.P10211090854619212324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A047764 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039577.P10211090854619212324

/-!
# A039578: Numbers whose base-6 representation has the same number of 0's, 2's and 4's.

The programs for A039578, there is no canonical definition to state claims against.
-/

/-! ## A039578.P5128536003857023075

`∩[A039017(n+1), A039025(n+1)]`
-/

namespace A039578.P5128536003857023075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039578.P5128536003857023075

/-! ## A039578.P17686397633841946574

`∩[A039017(n+1), A039019(n+1)]`
-/

namespace A039578.P17686397633841946574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039578.P17686397633841946574

/-! ## A039578.P14941103469123356186

`∩[A039019(n+1), A039025(n+1)]`
-/

namespace A039578.P14941103469123356186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039578.P14941103469123356186

/-!
# A039579: Numbers whose base-6 representation has the same number of 0's, 2's and 5's.

The programs for A039579, there is no canonical definition to state claims against.
-/

/-! ## A039579.P15594962709743597647

`∩[A039017(n+1), A039026(n+1)]`
-/

namespace A039579.P15594962709743597647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039017 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039579.P15594962709743597647

/-! ## A039579.P3230769773146347006

`∩[A031477(n+1), A039017(n+1)]`
-/

namespace A039579.P3230769773146347006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039017 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039579.P3230769773146347006

/-! ## A039579.P6700938090656201471

`∩[A031477(n+1), A039026(n+1)]`
-/

namespace A039579.P6700938090656201471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039579.P6700938090656201471

/-! ## A039579.P16878669156983194215

`eq[0, A045843(A321702(n+1))]`
-/

namespace A039579.P16878669156983194215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 (A321702 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039579.P16878669156983194215

/-! ## A039579.P2495170245192997459

`lt[A045843(A321702(n+1)), A085006(n+2)]`
-/

namespace A039579.P2495170245192997459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045843 (A321702 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085006 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A039579.P2495170245192997459

/-!
# A039580: Numbers whose base-6 representation has the same number of 0's, 3's and 4's.

The programs for A039580, there is no canonical definition to state claims against.
-/

/-! ## A039580.P300108379445930189

`∩[A039018(n+1), A039027(n+1)]`
-/

namespace A039580.P300108379445930189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039580.P300108379445930189

/-! ## A039580.P1973673822387099109

`∩[A039018(n+1), A039019(n+1)]`
-/

namespace A039580.P1973673822387099109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039580.P1973673822387099109

/-! ## A039580.P3471398629725940795

`∩[A039019(n+1), A039027(n+1)]`
-/

namespace A039580.P3471398629725940795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039580.P3471398629725940795

/-! ## A039580.P9993286480521010362

`eq[A137386(n+1), A222215(A276137(n+1))]`
-/

namespace A039580.P9993286480521010362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222215 (A276137 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039580.P9993286480521010362

/-! ## A039580.P16308854930245820936

`eq[A008612(n)+1, A036039(A227568(n+6))]`
-/

namespace A039580.P16308854930245820936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036039 (A227568 (n + 6)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039580.P16308854930245820936

/-!
# A039581: Numbers whose base-6 representation has the same number of 0's, 3's and 5's.

The programs for A039581, there is no canonical definition to state claims against.
-/

/-! ## A039581.P7278547090118318539

`∩[A039018(n+1), A039028(n+1)]`
-/

namespace A039581.P7278547090118318539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039018 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039581.P7278547090118318539

/-! ## A039581.P404026691583132143

`∩[A031477(n+1), A039018(n+1)]`
-/

namespace A039581.P404026691583132143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039018 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039581.P404026691583132143

/-! ## A039581.P12029366775461279276

`∩[A031477(n+1), A039028(n+1)]`
-/

namespace A039581.P12029366775461279276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039581.P12029366775461279276

/-! ## A039581.P3493375427392981869

`eq[6, A247640(A309957(n))]`
-/

namespace A039581.P3493375427392981869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247640 (A309957 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039581.P3493375427392981869

/-! ## A039581.P4385495507849325113

`eq[A094267(n²)², A006257(A309957(n))]`
-/

namespace A039581.P4385495507849325113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A309957 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039581.P4385495507849325113

/-!
# A039582: Numbers whose base-6 representation has the same number of 0's, 4's and 5's.

The programs for A039582, there is no canonical definition to state claims against.
-/

/-! ## A039582.P9452766526278018022

`∩[A031477(n+1), A039029(n+1)]`
-/

namespace A039582.P9452766526278018022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039582.P9452766526278018022

/-! ## A039582.P12981948287668073200

`∩[A031477(n+1), A039019(n+1)]`
-/

namespace A039582.P12981948287668073200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031477 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039582.P12981948287668073200

/-! ## A039582.P5010274682225760624

`∩[A039019(n+1), A039029(n+1)]`
-/

namespace A039582.P5010274682225760624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039582.P5010274682225760624

/-! ## A039582.P7148917746753636450

`A037460(A023705(n+1))%A348614(A014132(n+1))`
-/

namespace A039582.P7148917746753636450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037460 (A023705 (n + 1)).toNat) (A348614 (A014132 (n + 1)).toNat)

end

end A039582.P7148917746753636450

/-! ## A039582.P928899488481155157

`A037460(A023705(n+1))+A000007(A247541(n))`
-/

namespace A039582.P928899488481155157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037460 (A023705 (n + 1)).toNat + A000007 (A247541 n).toNat

end

end A039582.P928899488481155157

/-!
# A039583: Numbers whose base-6 representation has the same number of 1's, 2's and 3's.

The programs for A039583, there is no canonical definition to state claims against.
-/

/-! ## A039583.P16830181753046038118

`∩[A039020(n+1), A039021(n+1)]`
-/

namespace A039583.P16830181753046038118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039583.P16830181753046038118

/-! ## A039583.P12653839435757330299

`∩[A039020(n+1), A039024(n+1)]`
-/

namespace A039583.P12653839435757330299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039583.P12653839435757330299

/-! ## A039583.P13232085270908766872

`∩[A039021(n+1), A039024(n+1)]`
-/

namespace A039583.P13232085270908766872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039583.P13232085270908766872

/-!
# A039584: Numbers whose base-6 representation has the same number of 1's, 2's and 4's.

The programs for A039584, there is no canonical definition to state claims against.
-/

/-! ## A039584.P5099379519640060842

`∩[A039020(n+1), A039025(n+1)]`
-/

namespace A039584.P5099379519640060842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039584.P5099379519640060842

/-! ## A039584.P7683366373897468493

`∩[A039020(n+1), A039022(n+1)]`
-/

namespace A039584.P7683366373897468493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039584.P7683366373897468493

/-! ## A039584.P11892812254670613053

`∩[A039022(n+1), A039025(n+1)]`
-/

namespace A039584.P11892812254670613053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039584.P11892812254670613053

/-! ## A039584.P14980258083985598752

`A039592(A032555(n+1))+A039588(n+1)`
-/

namespace A039584.P14980258083985598752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039592 (A032555 (n + 1)).toNat + A039588 (n + 1)

end

end A039584.P14980258083985598752

/-! ## A039584.P12051747195111469091

`A118759(A039592(n+1)+A039588(n+1))`
-/

namespace A039584.P12051747195111469091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A039592 (n + 1) + A039588 (n + 1)).toNat

end

end A039584.P12051747195111469091

/-!
# A039585: Numbers whose base-6 representation has the same number of 1's, 2's and 5's.

The programs for A039585, there is no canonical definition to state claims against.
-/

/-! ## A039585.P2840264058292426005

`∩[A039020(n+1), A039023(n+1)]`
-/

namespace A039585.P2840264058292426005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039585.P2840264058292426005

/-! ## A039585.P2078999317954090491

`∩[A039020(n+1), A039026(n+1)]`
-/

namespace A039585.P2078999317954090491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039585.P2078999317954090491

/-! ## A039585.P11383943644317467057

`∩[A039023(n+1), A039026(n+1)]`
-/

namespace A039585.P11383943644317467057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039585.P11383943644317467057

/-!
# A039586: Numbers whose base-6 representation has the same number of 1's, 3's and 4's.

The programs for A039586, there is no canonical definition to state claims against.
-/

/-! ## A039586.P16455814965787482085

`∩[A039021(n+1), A039027(n+1)]`
-/

namespace A039586.P16455814965787482085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039586.P16455814965787482085

/-! ## A039586.P11069457282169055483

`∩[A039021(n+1), A039022(n+1)]`
-/

namespace A039586.P11069457282169055483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039586.P11069457282169055483

/-! ## A039586.P5920779946750970577

`∩[A039022(n+1), A039027(n+1)]`
-/

namespace A039586.P5920779946750970577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039586.P5920779946750970577

/-! ## A039586.P4598475898270322240

`eq[0, A103181(A321702(n+1))]`
-/

namespace A039586.P4598475898270322240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103181 (A321702 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039586.P4598475898270322240

/-! ## A039586.P15072158183875578188

`A039592(A032555(n+1))+A039591(n+1)`
-/

namespace A039586.P15072158183875578188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039592 (A032555 (n + 1)).toNat + A039591 (n + 1)

end

end A039586.P15072158183875578188

/-!
# A039587: Numbers whose base-6 representation has the same number of 1's, 3's and 5's.

The programs for A039587, there is no canonical definition to state claims against.
-/

/-! ## A039587.P4983788903020888367

`∩[A039021(n+1), A039023(n+1)]`
-/

namespace A039587.P4983788903020888367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039587.P4983788903020888367

/-! ## A039587.P15869993194985511750

`∩[A039021(n+1), A039028(n+1)]`
-/

namespace A039587.P15869993194985511750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039587.P15869993194985511750

/-! ## A039587.P5402592172709720712

`∩[A039023(n+1), A039028(n+1)]`
-/

namespace A039587.P5402592172709720712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039587.P5402592172709720712

/-! ## A039587.P13992595824796864653

`eq[A000041(A086520(n)), A029244(n)]`
-/

namespace A039587.P13992595824796864653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A086520 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029244 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039587.P13992595824796864653

/-!
# A039588: Numbers whose base-6 representation has the same number of 1's, 4's and 5's.

The programs for A039588, there is no canonical definition to state claims against.
-/

/-! ## A039588.P3688454254708438275

`∩[A039022(n+1), A039023(n+1)]`
-/

namespace A039588.P3688454254708438275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039588.P3688454254708438275

/-! ## A039588.P6408456206675079289

`∩[A039022(n+1), A039029(n+1)]`
-/

namespace A039588.P6408456206675079289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039588.P6408456206675079289

/-! ## A039588.P13571797182628521009

`∩[A039023(n+1), A039029(n+1)]`
-/

namespace A039588.P13571797182628521009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039023 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039588.P13571797182628521009

/-!
# A039589: Numbers whose base-6 representation has the same number of 2's, 3's and 4's.

The programs for A039589, there is no canonical definition to state claims against.
-/

/-! ## A039589.P359165481049174544

`∩[A039024(n+1), A039027(n+1)]`
-/

namespace A039589.P359165481049174544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039589.P359165481049174544

/-! ## A039589.P780127149336054586

`∩[A039024(n+1), A039025(n+1)]`
-/

namespace A039589.P780127149336054586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039589.P780127149336054586

/-! ## A039589.P3441535964701555351

`∩[A039025(n+1), A039027(n+1)]`
-/

namespace A039589.P3441535964701555351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039027 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039589.P3441535964701555351

/-! ## A039589.P5070849413019386111

`eq[0, A345417(A338863(n))]`
-/

namespace A039589.P5070849413019386111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345417 (A338863 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A039589.P5070849413019386111

/-! ## A039589.P7549737331353291219

`lt[A280913(A276137(n+1)), 3]`
-/

namespace A039589.P7549737331353291219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280913 (A276137 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A039589.P7549737331353291219

/-!
# A039590: Numbers whose base-6 representation has the same number of 2's, 3's and 5's.

The programs for A039590, there is no canonical definition to state claims against.
-/

/-! ## A039590.P17839048595399860416

`∩[A039024(n+1), A039026(n+1)]`
-/

namespace A039590.P17839048595399860416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039590.P17839048595399860416

/-! ## A039590.P15502222402316535665

`∩[A039024(n+1), A039028(n+1)]`
-/

namespace A039590.P15502222402316535665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039590.P15502222402316535665

/-! ## A039590.P1770671170869582626

`∩[A039026(n+1), A039028(n+1)]`
-/

namespace A039590.P1770671170869582626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039590.P1770671170869582626

/-! ## A039590.P2734369692860427056

`eq[A062756(A037472(n)), A089293(n)]`
-/

namespace A039590.P2734369692860427056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062756 (A037472 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089293 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039590.P2734369692860427056

/-! ## A039590.P6983323718468420965

`eq[A202267(n+1), A222246(A276137(n+1))]`
-/

namespace A039590.P6983323718468420965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A276137 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039590.P6983323718468420965

/-!
# A039591: Numbers whose base-6 representation has the same number of 2's, 4's and 5's.

The programs for A039591, there is no canonical definition to state claims against.
-/

/-! ## A039591.P15456729806946914711

`∩[A039025(n+1), A039026(n+1)]`
-/

namespace A039591.P15456729806946914711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039591.P15456729806946914711

/-! ## A039591.P13706819244272944116

`∩[A039025(n+1), A039029(n+1)]`
-/

namespace A039591.P13706819244272944116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039591.P13706819244272944116

/-! ## A039591.P11018322043146522331

`∩[A039026(n+1), A039029(n+1)]`
-/

namespace A039591.P11018322043146522331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039026 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039591.P11018322043146522331

/-! ## A039591.P9222018926915903587

`eq[A007092(n), A107128(A321702(n+1))]`
-/

namespace A039591.P9222018926915903587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107128 (A321702 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039591.P9222018926915903587

/-! ## A039591.P16387036109813520959

`eq[A089293(2*n), A359043(A056924(n+1))]`
-/

namespace A039591.P16387036109813520959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089293 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359043 (A056924 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A039591.P16387036109813520959

/-!
# A039592: Numbers whose base-6 representation has the same number of 3's, 4's and 5's.

The programs for A039592, there is no canonical definition to state claims against.
-/

/-! ## A039592.P6085951346935622798

`∩[A039027(n+1), A039028(n+1)]`
-/

namespace A039592.P6085951346935622798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039592.P6085951346935622798

/-! ## A039592.P17506198379846543741

`∩[A039027(n+1), A039029(n+1)]`
-/

namespace A039592.P17506198379846543741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039027 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039592.P17506198379846543741

/-! ## A039592.P17296677512217462989

`∩[A039028(n+1), A039029(n+1)]`
-/

namespace A039592.P17296677512217462989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A039592.P17296677512217462989

/-!
# A039593: Number of unitary divisors of central binomial coefficients.

The programs for A039593, the canonical program `A039593.P642452871237294568` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039593 has offset 1).

The definition of A039593 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034973, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A039593.P642452871237294568

`2^A034973(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A039593

/-- `2^A034973(n+1)` -/
def P642452871237294568.Spec : Prop :=
  ∀ n, P642452871237294568.a n = (A039593 (n + 1) : ℚ)

end A039593

/-! ## A039593.P8951501032278121009

`A000079(A034973(n+1))`
-/

namespace A039593.P8951501032278121009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A034973 (n + 1)).toNat

end

end A039593.P8951501032278121009

namespace A039593

/-- `A000079(A034973(n+1))` -/
def P8951501032278121009.Spec : Prop :=
  ∀ n, P8951501032278121009.a n = A039593 (n + 1)

end A039593

/-! ## A039593.P17606228891513897345

`A011782(A034973(n+1)+1)`
-/

namespace A039593.P17606228891513897345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A034973 (n + 1) + 1).toNat

end

end A039593.P17606228891513897345

namespace A039593

/-- `A011782(A034973(n+1)+1)` -/
def P17606228891513897345.Spec : Prop :=
  ∀ n, P17606228891513897345.a n = A039593 (n + 1)

end A039593

/-! ## A039593.P8131079165644146167

`A016116(2*A034973(n+1))`
-/

namespace A039593.P8131079165644146167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (2 * A034973 (n + 1)).toNat

end

end A039593.P8131079165644146167

namespace A039593

/-- `A016116(2*A034973(n+1))` -/
def P8131079165644146167.Spec : Prop :=
  ∀ n, P8131079165644146167.a n = A039593 (n + 1)

end A039593

/-! ## A039593.P10282536538618132609

`A056676(n+1)+A056673(n+1)`
-/

namespace A039593.P10282536538618132609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056676 (n + 1) + A056673 (n + 1)

end

end A039593.P10282536538618132609

namespace A039593

/-- `A056676(n+1)+A056673(n+1)` -/
def P10282536538618132609.Spec : Prop :=
  ∀ n, P10282536538618132609.a n = A039593 (n + 1)

end A039593

/-! ## A039593.P17073586754653981321

`A000079(A056175(n+1)+A056173(n+1))`
-/

namespace A039593.P17073586754653981321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A056175 (n + 1) + A056173 (n + 1)).toNat

end

end A039593.P17073586754653981321

namespace A039593

/-- `A000079(A056175(n+1)+A056173(n+1))` -/
def P17073586754653981321.Spec : Prop :=
  ∀ n, P17073586754653981321.a n = A039593 (n + 1)

end A039593

/-! ## A039593.P1142733647430853811

`A016116(A034973(n+1)+A034973(n+1)+1)`
-/

namespace A039593.P1142733647430853811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A034973 (n + 1) + (A034973 (n + 1) + 1)).toNat

end

end A039593.P1142733647430853811

namespace A039593

/-- `A016116(A034973(n+1)+A034973(n+1)+1)` -/
def P1142733647430853811.Spec : Prop :=
  ∀ n, P1142733647430853811.a n = A039593 (n + 1)

end A039593

/-! ## A039593.P17662039372820089125

`A034974(n+1)-A048243(n+1)`
-/

namespace A039593.P17662039372820089125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034974 (n + 1) - A048243 (n + 1)

end

end A039593.P17662039372820089125

namespace A039593

/-- `A034974(n+1)-A048243(n+1)` -/
def P17662039372820089125.Spec : Prop :=
  ∀ n, P17662039372820089125.a n = A039593 (n + 1)

end A039593

/-! ## A039593.P15519245101158620640

`A048244(n+1)+A048243(n+1)`
-/

namespace A039593.P15519245101158620640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048244 (n + 1) + A048243 (n + 1)

end

end A039593.P15519245101158620640

namespace A039593

/-- `A048244(n+1)+A048243(n+1)` -/
def P15519245101158620640.Spec : Prop :=
  ∀ n, P15519245101158620640.a n = A039593 (n + 1)

end A039593

/-! ## A039593.P494908917615384275

`(A309307(A056056(n+1))+1)*A056673(n+1)`
-/

namespace A039593.P494908917615384275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A309307 (A056056 (n + 1)).toNat + 1) * A056673 (n + 1)

end

end A039593.P494908917615384275

namespace A039593

/-- `(A309307(A056056(n+1))+1)*A056673(n+1)` -/
def P494908917615384275.Spec : Prop :=
  ∀ n, P494908917615384275.a n = A039593 (n + 1)

end A039593

/-! ## A039593.P1489744203171216064

`A103444(A074148(n+1))`
-/

namespace A039593.P1489744203171216064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103444 (A074148 (n + 1)).toNat

end

end A039593.P1489744203171216064

namespace A039593

/-- `A103444(A074148(n+1))` -/
def P1489744203171216064.Spec : Prop :=
  ∀ n, P1489744203171216064.a n = A039593 (n + 1)

end A039593

/-! ## A039593.P8913765414115052215

`A103444(A194274(n+1))`
-/

namespace A039593.P8913765414115052215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103444 (A194274 (n + 1)).toNat

end

end A039593.P8913765414115052215

namespace A039593

/-- `A103444(A194274(n+1))` -/
def P8913765414115052215.Spec : Prop :=
  ∀ n, P8913765414115052215.a n = A039593 (n + 1)

end A039593

/-! ## A039593.P7058247388748898398

`A103444(A080476(n+2))`
-/

namespace A039593.P7058247388748898398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103444 (A080476 (n + 2)).toNat

end

end A039593.P7058247388748898398

namespace A039593

/-- `A103444(A080476(n+2))` -/
def P7058247388748898398.Spec : Prop :=
  ∀ n, P7058247388748898398.a n = A039593 (n + 1)

end A039593

/-!
# A039594: Hexamorphic numbers: k such that the k-th hexagonal number ends with k.

The programs for A039594, there is no canonical definition to state claims against.
-/

/-! ## A039594.P17421516323125496331

`ceil(sqrt(A038494(n+1)/2))`
-/

namespace A039594.P17421516323125496331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A038494 (n + 1) : ℚ) / 2 : ℝ)⌉

end

end A039594.P17421516323125496331

/-! ## A039594.P13253928904075366465

`round(sqrt(A038494(n+1)/2))%A131682(n)`
-/

namespace A039594.P13253928904075366465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt ((A038494 (n + 1) : ℚ) / 2 : ℝ))) (A131682 n)

end

end A039594.P13253928904075366465

/-! ## A039594.P3720603251378777142

`round(sqrt(A038494(n+1)/2)/A007423((n+2)²))`
-/

namespace A039594.P3720603251378777142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A038494 (n + 1) : ℚ) / 2 : ℝ) / (A007423 ((n + 2) ^ 2) : ℝ))

end

end A039594.P3720603251378777142

/-! ## A039594.P1228518932022553880

`A348888(A038494(n+1))`
-/

namespace A039594.P1228518932022553880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348888 (A038494 (n + 1)).toNat

end

end A039594.P1228518932022553880

/-! ## A039594.P16071349443759946364

`A008284(A038494(n+1)+2)`
-/

namespace A039594.P16071349443759946364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (A038494 (n + 1) + 2).toNat

end

end A039594.P16071349443759946364

/-!
# A039596: Numbers that are simultaneously triangular and square pyramidal.

The programs for A039596, there is no canonical definition to state claims against.
-/

/-! ## A039596.P16540238855784882489

`C(A050375(A153665(n+1))+1, 2)`
-/

namespace A039596.P16540238855784882489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A050375 (A153665 (n + 1)).toNat + 1).toNat 2

end

end A039596.P16540238855784882489

/-!
# A039597: Triangle read by rows: T(n,k) = number of 2 X inf arrays [ n, n1, n2, ...; k, k1, k2,... ] with n>=n1>n2>...>=0, k>=k1>k2...>=0, n>k, n1>k1, ...; n >= 1, k >= 0. Note that once ni or ki = 0, the strict inequalities become equalities (constant 0 thereafter).

The programs for A039597, there is no canonical definition to state claims against.
-/

/-! ## A039597.P3814736354310106849

`A274292(comp[∑[n]])`
-/

namespace A039597.P3814736354310106849
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274292 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A039597.P3814736354310106849

/-! ## A039597.P17154585182714382712

`lcm(2, A274292(A014132(n+1)))`
-/

namespace A039597.P17154585182714382712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A274292 (A014132 (n + 1)).toNat)

end

end A039597.P17154585182714382712

/-! ## A039597.P13075615350194094088

`char[A004442(n)]*A274292(A014132(n+1))`
-/

namespace A039597.P13075615350194094088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A274292 (A014132 (n + 1)).toNat

end

end A039597.P13075615350194094088

/-! ## A039597.P17373148217155160626

`char[A061579(n)]*A274292(A014132(n+1))`
-/

namespace A039597.P17373148217155160626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A274292 (A014132 (n + 1)).toNat

end

end A039597.P17373148217155160626

/-! ## A039597.P3904761955068185755

`A368175(A292565(n+1))`
-/

namespace A039597.P3904761955068185755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368175 (A292565 (n + 1)).toNat

end

end A039597.P3904761955068185755

/-! ## A039597.P12540206894370983028

`A014963(A005101(n+1))*A274292(A014132(n+1))`
-/

namespace A039597.P12540206894370983028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005101 (n + 1)).toNat * A274292 (A014132 (n + 1)).toNat

end

end A039597.P12540206894370983028

/-! ## A039597.P13994636648399293884

`A274292(A014132(n+1))%A001255(n+2)`
-/

namespace A039597.P13994636648399293884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274292 (A014132 (n + 1)).toNat) (A001255 (n + 2))

end

end A039597.P13994636648399293884

/-! ## A039597.P5640994799263163694

`A007318(C(n, 2))*A274292(A014132(n+1))`
-/

namespace A039597.P5640994799263163694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A274292 (A014132 (n + 1)).toNat

end

end A039597.P5640994799263163694

/-! ## A039597.P11586057836195674140

`filter[A274292(n), A358224(#)]`
-/

namespace A039597.P11586057836195674140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358224 (f1 j).toNat = 1) n)

end

end A039597.P11586057836195674140

/-! ## A039597.P10093225976382555790

`∑{d}[A274292(A014132(n+1)), A000010(#)]`
-/

namespace A039597.P10093225976382555790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274292 (A014132 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A039597.P10093225976382555790

/-!
# A039598: Triangle formed from odd-numbered columns of triangle of expansions of powers of x in terms of Chebyshev polynomials U_n(x). Sometimes called Catalan's triangle.

The programs for A039598, the canonical program `A039598.P17145896553488854695` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039598 has offset 0).

The definition of A039598 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039598.P17145896553488854695

`A128899(comp[∑[n]])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A039598

/-- `A128899(comp[∑[n]])` -/
def P17145896553488854695.Spec : Prop :=
  ∀ n, P17145896553488854695.a n = A039598 n

theorem P17145896553488854695.correct : P17145896553488854695.Spec := by
  intro n
  simp only [A039598]

end A039598

/-! ## A039598.P4811531924812534961

`A118920(n+1)/2`
-/

namespace A039598.P4811531924812534961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118920 (n + 1) : ℚ) / 2

end

end A039598.P4811531924812534961

namespace A039598

/-- `A118920(n+1)/2` -/
def P4811531924812534961.Spec : Prop :=
  ∀ n, P4811531924812534961.a n = (A039598 n : ℚ)

end A039598

/-! ## A039598.P7597451001274675865

`A050166(A061579(n))`
-/

namespace A039598.P7597451001274675865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (A061579 n).toNat

end

end A039598.P7597451001274675865

namespace A039598

/-- `A050166(A061579(n))` -/
def P7597451001274675865.Spec : Prop :=
  ∀ n, P7597451001274675865.a n = A039598 n

end A039598

/-! ## A039598.P1903902920200715633

`A050166(A038722(n+1)-1)`
-/

namespace A039598.P1903902920200715633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (A038722 (n + 1) - 1).toNat

end

end A039598.P1903902920200715633

namespace A039598

/-- `A050166(A038722(n+1)-1)` -/
def P1903902920200715633.Spec : Prop :=
  ∀ n, P1903902920200715633.a n = A039598 n

end A039598

/-! ## A039598.P5901202491576816370

`A050166(A038722(n+2))`
-/

namespace A039598.P5901202491576816370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050166 (A038722 (n + 2)).toNat

end

end A039598.P5901202491576816370

namespace A039598

/-- `A050166(A038722(n+2))` -/
def P5901202491576816370.Spec : Prop :=
  ∀ n, P5901202491576816370.a n = A039598 n

end A039598

/-! ## A039598.P13768318331841827393

`A201639(n)/A130321(n)`
-/

namespace A039598.P13768318331841827393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A201639 n : ℚ) / (A130321 n : ℚ)

end

end A039598.P13768318331841827393

namespace A039598

/-- `A201639(n)/A130321(n)` -/
def P13768318331841827393.Spec : Prop :=
  ∀ n, P13768318331841827393.a n = (A039598 n : ℚ)

end A039598

/-! ## A039598.P13683977359376225574

`A008313(A064801(n+1))`
-/

namespace A039598.P13683977359376225574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008313 (A064801 (n + 1)).toNat

end

end A039598.P13683977359376225574

namespace A039598

/-- `A008313(A064801(n+1))` -/
def P13683977359376225574.Spec : Prop :=
  ∀ n, P13683977359376225574.a n = A039598 n

end A039598

/-! ## A039598.P5761620391170224701

`A053121(A185869(n+1))`
-/

namespace A039598.P5761620391170224701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (A185869 (n + 1)).toNat

end

end A039598.P5761620391170224701

namespace A039598

/-- `A053121(A185869(n+1))` -/
def P5761620391170224701.Spec : Prop :=
  ∀ n, P5761620391170224701.a n = A039598 n

end A039598

/-! ## A039598.P4172213521745001911

`A008482(A292565(n+1))`
-/

namespace A039598.P4172213521745001911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (A292565 (n + 1)).toNat

end

end A039598.P4172213521745001911

namespace A039598

/-- `A008482(A292565(n+1))` -/
def P4172213521745001911.Spec : Prop :=
  ∀ n, P4172213521745001911.a n = A039598 n

end A039598

/-! ## A039598.P11210878614210871393

`A014682(A118920(n+1))`
-/

namespace A039598.P11210878614210871393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A118920 (n + 1)).toNat

end

end A039598.P11210878614210871393

namespace A039598

/-- `A014682(A118920(n+1))` -/
def P11210878614210871393.Spec : Prop :=
  ∀ n, P11210878614210871393.a n = A039598 n

end A039598

/-!
# A039599: Triangle formed from even-numbered columns of triangle of expansions of powers of x in terms of Chebyshev polynomials U_n(x).

The programs for A039599, the canonical program `A039599.P10229037155261832338` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A039599 has offset 0).

The definition of A039599 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A039599.P14460313789590940062

`A128899(n+1)+A128899(n)`
-/

namespace A039599.P14460313789590940062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128899 (n + 1) + A128899 n

end

end A039599.P14460313789590940062

namespace A039599

/-- `A128899(n+1)+A128899(n)` -/
def P14460313789590940062.Spec : Prop :=
  ∀ n, P14460313789590940062.a n = A039599 n

end A039599

/-! ## A039599.P6327281615347569095

`2*A094527(n)-A111418(n)`
-/

namespace A039599.P6327281615347569095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A094527 n - A111418 n

end

end A039599.P6327281615347569095

namespace A039599

/-- `2*A094527(n)-A111418(n)` -/
def P6327281615347569095.Spec : Prop :=
  ∀ n, P6327281615347569095.a n = A039599 n

end A039599

/-! ## A039599.P14500088198392772599

`A094527(n)-A094527(n+1)%A094527(n)`
-/

namespace A039599.P14500088198392772599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 n - Int.tmod (A094527 (n + 1)) (A094527 n)

end

end A039599.P14500088198392772599

namespace A039599

/-- `A094527(n)-A094527(n+1)%A094527(n)` -/
def P14500088198392772599.Spec : Prop :=
  ∀ n, P14500088198392772599.a n = A039599 n

end A039599

/-! ## A039599.P2618202272119405458

`A050165(A061579(n))`
-/

namespace A039599.P2618202272119405458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050165 (A061579 n).toNat

end

end A039599.P2618202272119405458

namespace A039599

/-- `A050165(A061579(n))` -/
def P2618202272119405458.Spec : Prop :=
  ∀ n, P2618202272119405458.a n = A039599 n

end A039599

/-! ## A039599.P7499396981391690553

`A050165(A038722(n+1)-1)`
-/

namespace A039599.P7499396981391690553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050165 (A038722 (n + 1) - 1).toNat

end

end A039599.P7499396981391690553

namespace A039599

/-- `A050165(A038722(n+1)-1)` -/
def P7499396981391690553.Spec : Prop :=
  ∀ n, P7499396981391690553.a n = A039599 n

end A039599

/-! ## A039599.P7349022260654930111

`A050165(A168038(n+1)-(n+1))`
-/

namespace A039599.P7349022260654930111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050165 (A168038 (n + 1) - (n + 1 : ℤ)).toNat

end

end A039599.P7349022260654930111

namespace A039599

/-- `A050165(A168038(n+1)-(n+1))` -/
def P7349022260654930111.Spec : Prop :=
  ∀ n, P7349022260654930111.a n = A039599 n

end A039599

/-! ## A039599.P12786261171047143268

`A050165(A038722(n+2))`
-/

namespace A039599.P12786261171047143268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050165 (A038722 (n + 2)).toNat

end

end A039599.P12786261171047143268

namespace A039599

/-- `A050165(A038722(n+2))` -/
def P12786261171047143268.Spec : Prop :=
  ∀ n, P12786261171047143268.a n = A039599 n

end A039599

/-! ## A039599.P10229037155261832338

`A008313(A061885(n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A039599

/-- `A008313(A061885(n))` -/
def P10229037155261832338.Spec : Prop :=
  ∀ n, P10229037155261832338.a n = A039599 n

theorem P10229037155261832338.correct : P10229037155261832338.Spec := by
  intro n
  simp only [A039599]

end A039599

/-! ## A039599.P276696756869409685

`A050165(A053187(2*n+1)-(n+1))`
-/

namespace A039599.P276696756869409685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050165 (A053187 (2 * n + 1) - (n + 1 : ℤ)).toNat

end

end A039599.P276696756869409685

namespace A039599

/-- `A050165(A053187(2*n+1)-(n+1))` -/
def P276696756869409685.Spec : Prop :=
  ∀ n, P276696756869409685.a n = A039599 n

end A039599

/-! ## A039599.P15570466438767797739

`A067802(n)/A111418(n)`
-/

namespace A039599.P15570466438767797739
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067802 n : ℚ) / (A111418 n : ℚ)

end

end A039599.P15570466438767797739

namespace A039599

/-- `A067802(n)/A111418(n)` -/
def P15570466438767797739.Spec : Prop :=
  ∀ n, P15570466438767797739.a n = (A039599 n : ℚ)

end A039599

/-! ## A039599.P5762888517471623135

`A053121(record[A056011(n+1)-A053121(n)])`
-/

namespace A039599.P5762888517471623135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1) - A053121 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A039599.P5762888517471623135

namespace A039599

/-- `A053121(record[A056011(n+1)-A053121(n)])` -/
def P5762888517471623135.Spec : Prop :=
  ∀ n, P5762888517471623135.a n = A039599 n

end A039599

/-! ## A039599.P3926189181450195923

`A053121(eq[1, and(1, A003991(n+1))])`
-/

namespace A039599.P3926189181450195923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003991 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053121 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A039599.P3926189181450195923

namespace A039599

/-- `A053121(eq[1, and(1, A003991(n+1))])` -/
def P3926189181450195923.Spec : Prop :=
  ∀ n, P3926189181450195923.a n = A039599 n

end A039599

/-! ## A039599.P14512866124825591238

`A113313(A292565(n+1))`
-/

namespace A039599.P14512866124825591238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113313 (A292565 (n + 1)).toNat

end

end A039599.P14512866124825591238

namespace A039599

/-- `A113313(A292565(n+1))` -/
def P14512866124825591238.Spec : Prop :=
  ∀ n, P14512866124825591238.a n = A039599 n

end A039599

