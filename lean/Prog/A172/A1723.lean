import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A172300: Triangle T(n, k, q) = ((1-q)/(1-q^k))*c(n-1, q)*c(n, q)/(c(k-1,q)^2*c(n-k,q)*c(n-k+1, q)), where c(n, q) = Product_{j=1..n} (1-q^j) and q = 3, read by rows.

The programs for A172300, there is no canonical definition to state claims against.
-/

/-! ## A172300.P16051973908135382156

`A082363(A158117(n))`
-/

namespace A172300.P16051973908135382156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082363 (A158117 n).toNat

end

end A172300.P16051973908135382156

/-! ## A172300.P6218625406651958762

`A119353(A172301(n+1))`
-/

namespace A172300.P6218625406651958762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119353 (A172301 (n + 1)).toNat

end

end A172300.P6218625406651958762

/-! ## A172300.P493681246224209021

`A051066(3*A022173(n))`
-/

namespace A172300.P493681246224209021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051066 (3 * A022173 n).toNat

end

end A172300.P493681246224209021

/-! ## A172300.P7016954003333119140

`A245484(3^A167040(n))`
-/

namespace A172300.P7016954003333119140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245484 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A167040 n : ℤ))).toNat

end

end A172300.P7016954003333119140

/-! ## A172300.P4016082389028434307

`A116913(3^A355664(n))`
-/

namespace A172300.P4016082389028434307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116913 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A355664 n : ℤ))).toNat

end

end A172300.P4016082389028434307

/-!
# A172301: Triangle T(n, k, q) = ((1-q)/(1-q^k))*c(n-1, q)*c(n, q)/(c(k-1,q)^2*c(n-k,q)*c(n-k+1, q)), where c(n, q) = Product_{j=1..n} (1-q^j) and q = 4, read by rows.

The programs for A172301, there is no canonical definition to state claims against.
-/

/-! ## A172301.P8330326614180209738

`A006105(A167040(n)+1)`
-/

namespace A172301.P8330326614180209738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006105 (A167040 n + 1).toNat

end

end A172301.P8330326614180209738

/-! ## A172301.P8842160769792356206

`A023705(A172300(n+1))`
-/

namespace A172301.P8842160769792356206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023705 (A172300 (n + 1)).toNat

end

end A172301.P8842160769792356206

/-! ## A172301.P14768468426167636547

`A022168(A067693(n)+A032555(n+1))`
-/

namespace A172301.P14768468426167636547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A067693 n + A032555 (n + 1)).toNat

end

end A172301.P14768468426167636547

/-! ## A172301.P13382655667089677423

`A022168(A067693(n)+A032559(n+1))`
-/

namespace A172301.P13382655667089677423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A067693 n + A032559 (n + 1)).toNat

end

end A172301.P13382655667089677423

/-! ## A172301.P15418669094189424663

`A022168(A337496(n)+A032555(n+1))`
-/

namespace A172301.P15418669094189424663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022168 (A337496 n + A032555 (n + 1)).toNat

end

end A172301.P15418669094189424663

/-!
# A172302: Triangle T(n, k, q) = ((1-q)/(1-q^k))*c(n-1, q)*c(n, q)/(c(k-1,q)^2*c(n-k,q)*c(n-k+1, q)), where c(n, q) = Product_{j=1..n} (1-q^j) and q = 5, read by rows.

The programs for A172302, there is no canonical definition to state claims against.
-/

/-! ## A172302.P11263903413253979981

`A020655(A172301(n+1))`
-/

namespace A172302.P11263903413253979981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020655 (A172301 (n + 1)).toNat

end

end A172302.P11263903413253979981

/-! ## A172302.P3731459556828793730

`A037453(A172300(n+1))`
-/

namespace A172302.P3731459556828793730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037453 (A172300 (n + 1)).toNat

end

end A172302.P3731459556828793730

/-! ## A172302.P9553276323727619065

`A001001(5^A185651(n))`
-/

namespace A172302.P9553276323727619065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001001 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A185651 n : ℤ))).toNat

end

end A172302.P9553276323727619065

/-! ## A172302.P11065333139818811958

`A245484(5^A007318(n))`
-/

namespace A172302.P11065333139818811958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245484 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A172302.P11065333139818811958

/-! ## A172302.P3465974867670366257

`A067692(5^A185651(n))`
-/

namespace A172302.P3465974867670366257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067692 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A185651 n : ℤ))).toNat

end

end A172302.P3465974867670366257

/-!
# A172303: Table T(n,k) with coefficients [x^k] of the polynomials p(x,n) = x^(n-1)*p(x,n-1) + x^(n-2)*p(x,n-2), recurrence starting p(x,0)=0, p(x,1)=1.

The programs for A172303, there is no canonical definition to state claims against.
-/

/-! ## A172303.P229370703006245270

`A014707(A075647(n+1)*A088821(n+1))`
-/

namespace A172303.P229370703006245270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 (A075647 (n + 1) * A088821 (n + 1)).toNat

end

end A172303.P229370703006245270

/-! ## A172303.P4022457891562210500

`A327177(xor(A166524(n+1), A207954(n+1)))`
-/

namespace A172303.P4022457891562210500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 (Int.xor (A166524 (n + 1)) (A207954 (n + 1))).toNat

end

end A172303.P4022457891562210500

/-! ## A172303.P3847921913160690381

`A070772(n)%A308176(A272404(n+1))`
-/

namespace A172303.P3847921913160690381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070772 n) (A308176 (A272404 (n + 1)).toNat)

end

end A172303.P3847921913160690381

/-! ## A172303.P3416902571938702503

`A374646(or(A176129(n+1), A218278(n+1)))`
-/

namespace A172303.P3416902571938702503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374646 (Int.lor (A176129 (n + 1)) (A218278 (n + 1))).toNat

end

end A172303.P3416902571938702503

/-! ## A172303.P3172280400445411230

`A318962(A268995(n+1)-A000120(2*(n+2)))`
-/

namespace A172303.P3172280400445411230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318962 (A268995 (n + 1) - A000120 (2 * (n + 2))).toNat

end

end A172303.P3172280400445411230

/-!
# A172304: L-toothpick sequence starting with two opposite L-toothpicks.

The programs for A172304, there is no canonical definition to state claims against.
-/

/-! ## A172304.P5048163949072634365

`∑[A172305(n)]`
-/

namespace A172304.P5048163949072634365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172304.P5048163949072634365

/-! ## A172304.P1743972920957587639

`2*A172306(n)`
-/

namespace A172304.P1743972920957587639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172306 n

end

end A172304.P1743972920957587639

/-! ## A172304.P14290272047497136061

`∑[2*A172307(n)]`
-/

namespace A172304.P14290272047497136061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172304.P14290272047497136061

/-! ## A172304.P7794738814729030479

`∑[A005843(A172307(n))]`
-/

namespace A172304.P7794738814729030479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A172307 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172304.P7794738814729030479

/-! ## A172304.P2568554944701818084

`A014682(lcm(4, A172306(n)))`
-/

namespace A172304.P2568554944701818084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 4 (A172306 n))

end

end A172304.P2568554944701818084

/-! ## A172304.P16489398541595311952

`∑[A047612(A172307(n)+1)]`
-/

namespace A172304.P16489398541595311952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047612 (A172307 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172304.P16489398541595311952

/-! ## A172304.P3110422288827393945

`A172306(n)+∑[A172307(n)]`
-/

namespace A172304.P3110422288827393945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172306 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172304.P3110422288827393945

/-! ## A172304.P13182162407119245267

`lcm(2, A172306(A005843(n)/2))`
-/

namespace A172304.P13182162407119245267
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A172306 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat)

end

end A172304.P13182162407119245267

/-! ## A172304.P5123728611233238459

`∑[A005408(A172307(n)+1)-3]`
-/

namespace A172304.P5123728611233238459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A172307 n + 1).toNat - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172304.P5123728611233238459

/-! ## A172304.P11840479726507443589

`A014682(∑[A008586(A172307(n))])`
-/

namespace A172304.P11840479726507443589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A172307 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172304.P11840479726507443589

/-! ## A172304.P7767358440780358003

`A172306(A005843(n)/2)+A172306(n)`
-/

namespace A172304.P7767358440780358003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172306 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A172306 n

end

end A172304.P7767358440780358003

/-! ## A172304.P3688663906635169308

`A172306(n+1)+A172306(n)-A172307(n+1)`
-/

namespace A172304.P3688663906635169308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172306 (n + 1) + (A172306 n - A172307 (n + 1))

end

end A172304.P3688663906635169308

/-! ## A172304.P13249409972565824167

`A172306(n+1)+A172306(n+1)-A172305(n+1)`
-/

namespace A172304.P13249409972565824167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172306 (n + 1) + (A172306 (n + 1) - A172305 (n + 1))

end

end A172304.P13249409972565824167

/-! ## A172304.P18299359856250987201

`A005843(A172306(n))`
-/

namespace A172304.P18299359856250987201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A172306 n).toNat

end

end A172304.P18299359856250987201

/-! ## A172304.P9142983959342953005

`A005408(∑[A172307(n)])-1`
-/

namespace A172304.P9142983959342953005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A172304.P9142983959342953005

/-! ## A172304.P6597977383572265971

`A008586(∑[A172307(n)])/2`
-/

namespace A172304.P6597977383572265971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172307 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008586 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A172304.P6597977383572265971

/-!
# A172305: Number of L-toothpicks added to the L-toothpick structure of A172304 at the n-th stage.

The programs for A172305, there is no canonical definition to state claims against.
-/

/-! ## A172305.P6621197570414924874

`2*A172307(n)`
-/

namespace A172305.P6621197570414924874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172307 n

end

end A172305.P6621197570414924874

/-! ## A172305.P3140831816451091543

`Δ[A172304(floor(acot(n)+n)-1)]`
-/

namespace A172305.P3140831816451091543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172304 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172305.P3140831816451091543

/-! ## A172305.P8820752502402737130

`Δ[A172304(floor(sqrt(n²+1))-1)]`
-/

namespace A172305.P8820752502402737130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172304 (Nat.sqrt (n ^ 2 + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172305.P8820752502402737130

/-! ## A172305.P1908469541697295226

`A005843(A172307(n))`
-/

namespace A172305.P1908469541697295226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A172307 n).toNat

end

end A172305.P1908469541697295226

/-! ## A172305.P14582715087370986269

`A047612(A172307(n)+1)`
-/

namespace A172305.P14582715087370986269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047612 (A172307 n + 1).toNat

end

end A172305.P14582715087370986269

/-! ## A172305.P14464458623134315610

`A005408(A172307(n)+1)-3`
-/

namespace A172305.P14464458623134315610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A172307 n + 1).toNat - 3

end

end A172305.P14464458623134315610

/-! ## A172305.P1094347852279538500

`∑{e}[A100484(n+1), A172307(n)/#]`
-/

namespace A172305.P1094347852279538500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A172307 n : ℚ) / (Nat.factorization (f1 n).natAbs p : ℚ)

end

end A172305.P1094347852279538500

/-! ## A172305.P4385218248717429286

`Δ[2*A172306(A123108(2*n)-1)]`
-/

namespace A172305.P4385218248717429286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A172306 (A123108 (2 * n) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172305.P4385218248717429286

/-! ## A172305.P10542209618296201802

`A172307(n)+A172307(n)%A008574(n)`
-/

namespace A172305.P10542209618296201802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172307 n + Int.tmod (A172307 n) (A008574 n)

end

end A172305.P10542209618296201802

/-!
# A172306: a(n) = A172304(n)/2.

The programs for A172306, there is no canonical definition to state claims against.
-/

/-! ## A172306.P17742388708648985990

`A172304(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172306.P17742388708648985990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172304 n : ℚ) / 2

end

end A172306.P17742388708648985990

/-! ## A172306.P9257661674630112991

`∑[A172307(n)]`
-/

namespace A172306.P9257661674630112991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172306.P9257661674630112991

/-! ## A172306.P3607979478333503066

`∑[A172305(n)/2]`
-/

namespace A172306.P3607979478333503066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172305 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172306.P3607979478333503066

/-! ## A172306.P10324608339073176376

`A014682(A172304(n))`
-/

namespace A172306.P10324608339073176376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A172304 n).toNat

end

end A172306.P10324608339073176376

/-! ## A172306.P10549822228830460004

`∑[A001281(A172305(n))]`
-/

namespace A172306.P10549822228830460004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A172305 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172306.P10549822228830460004

/-! ## A172306.P11162949492796196233

`A014682(∑[A172305(n)])`
-/

namespace A172306.P11162949492796196233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172306.P11162949492796196233

/-! ## A172306.P254763595666908807

`A273943(∑[A172305(n)])`
-/

namespace A172306.P254763595666908807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172305 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172306.P254763595666908807

/-! ## A172306.P160443269217840938

`∑[A004526(A172305(n)+1)]`
-/

namespace A172306.P160443269217840938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A172305 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172306.P160443269217840938

/-! ## A172306.P15019463218385753410

`∑[A008615(3*A172305(n))]`
-/

namespace A172306.P15019463218385753410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A172305 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172306.P15019463218385753410

/-! ## A172306.P11416861954252230795

`∑[A004525(lcm(2, A172305(n)))]`
-/

namespace A172306.P11416861954252230795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A172305 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172306.P11416861954252230795

/-! ## A172306.P6617536147797761530

`∑[A001057(A172305(n)+1)-1]`
-/

namespace A172306.P6617536147797761530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A172305 n + 1).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172306.P6617536147797761530

/-! ## A172306.P4218983092357935878

`∑[A001057(or(1, A172305(n)))-1]`
-/

namespace A172306.P4218983092357935878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (A172305 n)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172306.P4218983092357935878

/-! ## A172306.P5255316446220616212

`∑[A004526(A172305(2*n-n))]`
-/

namespace A172306.P5255316446220616212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A172305 (2 * n - n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172306.P5255316446220616212

/-!
# A172307: a(n) = A172305(n)/2.

The programs for A172307, there is no canonical definition to state claims against.
-/

/-! ## A172307.P8517220785194453019

`A172305(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172307.P8517220785194453019
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172305 n : ℚ) / 2

end

end A172307.P8517220785194453019

/-! ## A172307.P9649136559665348895

`Δ[A172304(floor(acot(n)+n)-1)]/2`
-/

namespace A172307.P9649136559665348895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172304 (⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋ - 1).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A172307.P9649136559665348895

/-! ## A172307.P3895185814762482767

`Δ[A172304(floor(sqrt(n²+1))-1)]/2`
-/

namespace A172307.P3895185814762482767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172304 (Nat.sqrt (n ^ 2 + 1) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 2

end

end A172307.P3895185814762482767

/-! ## A172307.P1723629550871204548

`A001281(A172305(n))`
-/

namespace A172307.P1723629550871204548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A172305 n).toNat

end

end A172307.P1723629550871204548

/-! ## A172307.P6989033383633145185

`A004524(A172305(n)+1)`
-/

namespace A172307.P6989033383633145185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A172305 n + 1).toNat

end

end A172307.P6989033383633145185

/-! ## A172307.P11597366078490648721

`A004526(A172305(n)+1)`
-/

namespace A172307.P11597366078490648721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A172305 n + 1).toNat

end

end A172307.P11597366078490648721

/-! ## A172307.P12454884346046149078

`A028242(A172305(n)+1)`
-/

namespace A172307.P12454884346046149078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A172305 n + 1).toNat

end

end A172307.P12454884346046149078

/-! ## A172307.P14229802313318576071

`A057979(A172305(n)+1)`
-/

namespace A172307.P14229802313318576071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A172305 n + 1).toNat

end

end A172307.P14229802313318576071

/-! ## A172307.P8956351372958627956

`A046667(A172305(n)+2)`
-/

namespace A172307.P8956351372958627956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (A172305 n + 2).toNat

end

end A172307.P8956351372958627956

/-! ## A172307.P4190253519369979112

`A002265(2*A172305(n))`
-/

namespace A172307.P4190253519369979112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A172305 n).toNat

end

end A172307.P4190253519369979112

/-! ## A172307.P13063562977215755281

`A008615(3*A172305(n))`
-/

namespace A172307.P13063562977215755281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A172305 n).toNat

end

end A172307.P13063562977215755281

/-! ## A172307.P14574748019972084526

`A004525(lcm(2, A172305(n)))`
-/

namespace A172307.P14574748019972084526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lcm 2 (A172305 n))

end

end A172307.P14574748019972084526

/-! ## A172307.P15742748327835024158

`A004524(or(1, A172305(n)))`
-/

namespace A172307.P15742748327835024158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A172305 n)).toNat

end

end A172307.P15742748327835024158

/-! ## A172307.P15351927816461007327

`A004526(or(1, A172305(n)))`
-/

namespace A172307.P15351927816461007327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lor 1 (A172305 n)).toNat

end

end A172307.P15351927816461007327

/-! ## A172307.P10536746819032551365

`A004525(A172305(n)+char[1])`
-/

namespace A172307.P10536746819032551365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A172305 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A172307.P10536746819032551365

/-! ## A172307.P16745139638888057439

`A004525(or(char[1], A172305(n)))`
-/

namespace A172307.P16745139638888057439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A172305 n)).toNat

end

end A172307.P16745139638888057439

/-! ## A172307.P5243012433723423027

`A001057(A172305(n)+1)-1`
-/

namespace A172307.P5243012433723423027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A172305 n + 1).toNat - 1

end

end A172307.P5243012433723423027

/-! ## A172307.P6491465410555738589

`A273943(A172305(n)+2)-1`
-/

namespace A172307.P6491465410555738589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A172305 n + 2).toNat - 1

end

end A172307.P6491465410555738589

/-! ## A172307.P13938911218544050222

`A001057(or(1, A172305(n)))-1`
-/

namespace A172307.P13938911218544050222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (Int.lor 1 (A172305 n)).toNat - 1

end

end A172307.P13938911218544050222

/-! ## A172307.P5258265464259271863

`A004526(A172305(2*n-n))`
-/

namespace A172307.P5258265464259271863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A172305 (2 * n - n)).toNat

end

end A172307.P5258265464259271863

/-!
# A172308: L-toothpick sequence in the first quadrant.

The programs for A172308, there is no canonical definition to state claims against.
-/

/-! ## A172308.P15370361041142180136

`∑[A172309(n)]`
-/

namespace A172308.P15370361041142180136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172308.P15370361041142180136

/-! ## A172308.P438114359107332050

`floor(A172306(n+1)/2)`
-/

namespace A172308.P438114359107332050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172306 (n + 1) : ℚ) / 2⌋

end

end A172308.P438114359107332050

/-! ## A172308.P11893199500356152332

`floor(A172304(n+1)/4)`
-/

namespace A172308.P11893199500356152332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172304 (n + 1) : ℚ) / 4⌋

end

end A172308.P11893199500356152332

/-! ## A172308.P18072636857063700533

`∑[floor(Δ[A172306(n)/2])]`
-/

namespace A172308.P18072636857063700533
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172306 n : ℚ) / 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊f2 (n + 1) - f2 n⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172308.P18072636857063700533

/-! ## A172308.P15945716676228981492

`∑[floor(A172307(n+1)/2)]`
-/

namespace A172308.P15945716676228981492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172307 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172308.P15945716676228981492

/-!
# A172309: Number of L-toothpicks added to the L-toothpick structure of A172308 (First quadrant) at the n-th stage.

The programs for A172309, there is no canonical definition to state claims against.
-/

/-! ## A172309.P2074000685348147213

`Δ[floor(A172306(n)/2)]`
-/

namespace A172309.P2074000685348147213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172306 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172309.P2074000685348147213

/-! ## A172309.P4840735000003259812

`Δ[floor(A172304(n)/4)]`
-/

namespace A172309.P4840735000003259812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172304 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172309.P4840735000003259812

/-! ## A172309.P10113901512588616333

`floor(A172307(n+1)/2)`
-/

namespace A172309.P10113901512588616333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172307 (n + 1) : ℚ) / 2⌋

end

end A172309.P10113901512588616333

/-! ## A172309.P10094872276442840223

`floor(A172305(n+1)/4)`
-/

namespace A172309.P10094872276442840223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A172305 (n + 1) : ℚ) / 4⌋

end

end A172309.P10094872276442840223

/-! ## A172309.P8166187656111646144

`Δ[floor(∑[A172305(n)/4])]`
-/

namespace A172309.P8166187656111646144
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172305 n : ℚ) / 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f2 j⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172309.P8166187656111646144

/-!
# A172310: L-toothpick sequence (see Comment lines for definition).

The programs for A172310, there is no canonical definition to state claims against.
-/

/-! ## A172310.P8171570976846457710

`∑[A172311(n)]`
-/

namespace A172310.P8171570976846457710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172311 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172310.P8171570976846457710

/-! ## A172310.P6157357326614492793

`∑[A163534(A052166(3*n+4))+comp[2*n+3]]`
-/

namespace A172310.P6157357326614492793
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163534 (A052166 (3 * n + 4)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172310.P6157357326614492793

/-! ## A172310.P1052532435754991232

`A338466(∑[∑[∑[char[∑[n+1]]]]])`
-/

namespace A172310.P1052532435754991232
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338466 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172310.P1052532435754991232

/-! ## A172310.P6352367792942749474

`ceil(∑[∑[A103858(3*n+2)]]/2)`
-/

namespace A172310.P6352367792942749474
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103858 (3 * n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2⌉

end

end A172310.P6352367792942749474

/-! ## A172310.P9551747811515240813

`∑[A324672(xor(1, n²))+n-1+n]`
-/

namespace A172310.P9551747811515240813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324672 (Nat.xor 1 (n ^ 2)) + ((n : ℤ) - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172310.P9551747811515240813

/-!
# A172311: First differences of A172310.

The programs for A172311, there is no canonical definition to state claims against.
-/

/-! ## A172311.P10006004826874513253

`Δ[A172310((n-1)%(n+1))]`
-/

namespace A172311.P10006004826874513253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172310 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172311.P10006004826874513253

/-! ## A172311.P12271312067325810014

`Δ[A172310(round(sqrt(n²+1))-1)]`
-/

namespace A172311.P12271312067325810014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172310 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172311.P12271312067325810014

/-! ## A172311.P4783274904676274487

`A172310(n)-A172310(log2(A011782(n)))`
-/

namespace A172311.P4783274904676274487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172310 n - A172310 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A172311.P4783274904676274487

/-! ## A172311.P4755100166817713452

`A172310(n)-A172310(A140106(2*n+1))`
-/

namespace A172311.P4755100166817713452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172310 n - A172310 (A140106 (2 * n + 1)).toNat

end

end A172311.P4755100166817713452

/-! ## A172311.P7993752291367732283

`A163534(A052166(3*n+4))+comp[2*n+3]`
-/

namespace A172311.P7993752291367732283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163534 (A052166 (3 * n + 4)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A172311.P7993752291367732283

/-!
# A172312: a(n) = A172311(n+1)/2.

The programs for A172312, there is no canonical definition to state claims against.
-/

/-! ## A172312.P16482410788013023627

`A172311(n+2)/A000005(A057468(n+1))`
-/

namespace A172312.P16482410788013023627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172311 (n + 2) : ℚ) / (A000005 (A057468 (n + 1)).toNat : ℚ)

end

end A172312.P16482410788013023627

/-! ## A172312.P17146811687167622198

`A172311(n+2)/A000005(A211685(3*n+5))`
-/

namespace A172312.P17146811687167622198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172311 (n + 2) : ℚ) / (A000005 (A211685 (3 * n + 5)).toNat : ℚ)

end

end A172312.P17146811687167622198

/-! ## A172312.P8512658120844533499

`A172311(A077342(n+1)+1)/2`
-/

namespace A172312.P8512658120844533499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172311 (A077342 (n + 1) + 1).toNat : ℚ) / 2

end

end A172312.P8512658120844533499

/-! ## A172312.P4801688413706233059

`A172311(n+2)/A222084(A083781(n+3))`
-/

namespace A172312.P4801688413706233059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172311 (n + 2) : ℚ) / (A222084 (A083781 (n + 3)).toNat : ℚ)

end

end A172312.P4801688413706233059

/-! ## A172312.P13889802601093662027

`A289435(A172311(n+2)%A220500(3*n+2))`
-/

namespace A172312.P13889802601093662027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289435 (Int.tmod (A172311 (n + 2)) (A220500 (3 * n + 2))).toNat

end

end A172312.P13889802601093662027

/-!
# A172313: a(n) = A172309(n+1)/2.

The programs for A172313, there is no canonical definition to state claims against.
-/

/-! ## A172313.P3952842258559441541

`A172309(n+2)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172313.P3952842258559441541
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172309 (n + 2) : ℚ) / 2

end

end A172313.P3952842258559441541

/-! ## A172313.P15285930962326400443

`A172307(n+3)/4`
-/

namespace A172313.P15285930962326400443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172307 (n + 3) : ℚ) / 4

end

end A172313.P15285930962326400443

/-! ## A172313.P13516825458241880758

`A172305(n+3)/8`
-/

namespace A172313.P13516825458241880758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172305 (n + 3) : ℚ) / 8

end

end A172313.P13516825458241880758

/-! ## A172313.P11589378660130983640

`Δ[A172308(n+1)/2]`
-/

namespace A172313.P11589378660130983640
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172308 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172313.P11589378660130983640

/-! ## A172313.P9773096778114026820

`Δ[A172306(n+2)/4]`
-/

namespace A172313.P9773096778114026820
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172306 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172313.P9773096778114026820

/-!
# A172314: Numbers k such that phi(k+1) = 4*phi(k).

The programs for A172314, there is no canonical definition to state claims against.
-/

/-! ## A172314.P17410799690941723610

`A268126(n+1)-1`
-/

namespace A172314.P17410799690941723610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268126 (n + 1) - 1

end

end A172314.P17410799690941723610

/-! ## A172314.P10537440418151385544

`xor(1, A268126(A000027(n+1)))`
-/

namespace A172314.P10537440418151385544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A268126 (A000027 (n + 1)).toNat)

end

end A172314.P10537440418151385544

/-! ## A172314.P7036269796745870644

`xor(1, A268126(A028310(n+1)))`
-/

namespace A172314.P7036269796745870644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A268126 (A028310 (n + 1)).toNat)

end

end A172314.P7036269796745870644

/-! ## A172314.P16652069269821362388

`xor(1, A268126(A130446(n+1)))`
-/

namespace A172314.P16652069269821362388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A268126 (A130446 (n + 1)).toNat)

end

end A172314.P16652069269821362388

/-! ## A172314.P2929649458372784782

`xor(A015156(n), A268126(n+1))`
-/

namespace A172314.P2929649458372784782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A015156 n) (A268126 (n + 1))

end

end A172314.P2929649458372784782

/-!
# A172316: 7th column of the array A172119.

The programs for A172316, the canonical program `A172316.P16173090967771090681` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172316 has offset 0).

The definition of A172316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 337 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172316.P16173090967771090681

`2*a(n-1)-a(n-7)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=64`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172316

/-- `2*a(n-1)-a(n-7)` -/
def P16173090967771090681.Spec : Prop :=
  ∀ n, P16173090967771090681.a n = A172316 n

theorem P16173090967771090681.correct : P16173090967771090681.Spec := by
  intro n
  simp only [A172316]

end A172316

/-! ## A172316.P2014003048517000299

`∑[A001592(n+5)]`
-/

namespace A172316.P2014003048517000299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001592 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172316.P2014003048517000299

namespace A172316

/-- `∑[A001592(n+5)]` -/
def P2014003048517000299.Spec : Prop :=
  ∀ n, P2014003048517000299.a n = A172316 n

end A172316

/-! ## A172316.P16324593303885531621

`∑[∑[A251706(n+4)]]`
-/

namespace A172316.P16324593303885531621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251706 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172316.P16324593303885531621

namespace A172316

/-- `∑[∑[A251706(n+4)]]` -/
def P16324593303885531621.Spec : Prop :=
  ∀ n, P16324593303885531621.a n = A172316 n

end A172316

/-! ## A172316.P14989625387784959354

`Δ[A145114(n)]`
-/

namespace A172316.P14989625387784959354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145114 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172316.P14989625387784959354

namespace A172316

/-- `Δ[A145114(n)]` -/
def P14989625387784959354.Spec : Prop :=
  ∀ n, P14989625387784959354.a n = A172316 n

end A172316

/-! ## A172316.P4675227233650064749

`A145114(n+1)-A145114(n)`
-/

namespace A172316.P4675227233650064749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145114 (n + 1) - A145114 n

end

end A172316.P4675227233650064749

namespace A172316

/-- `A145114(n+1)-A145114(n)` -/
def P4675227233650064749.Spec : Prop :=
  ∀ n, P4675227233650064749.a n = A172316 n

end A172316

/-! ## A172316.P1741919752959940276

`∑[record[A251707(n)-A251708(n)]]+1`
-/

namespace A172316.P1741919752959940276
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251707 n - A251708 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A172316.P1741919752959940276

namespace A172316

/-- `∑[record[A251707(n)-A251708(n)]]+1` -/
def P1741919752959940276.Spec : Prop :=
  ∀ n, P1741919752959940276.a n = A172316 n

end A172316

/-!
# A172317: 8th column of A172119.

The programs for A172317, the canonical program `A172317.P6291604849132914524` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172317 has offset 0).

The definition of A172317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172317.P6291604849132914524

`2*a(n-1)-a(n-8)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=64, a(7)=128`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172317

/-- `2*a(n-1)-a(n-8)` -/
def P6291604849132914524.Spec : Prop :=
  ∀ n, P6291604849132914524.a n = A172317 n

theorem P6291604849132914524.correct : P6291604849132914524.Spec := by
  intro n
  simp only [A172317]

end A172317

/-! ## A172317.P10350845361072345635

`∑[A066178(n)]`
-/

namespace A172317.P10350845361072345635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066178 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172317.P10350845361072345635

namespace A172317

/-- `∑[A066178(n)]` -/
def P10350845361072345635.Spec : Prop :=
  ∀ n, P10350845361072345635.a n = A172317 n

end A172317

/-! ## A172317.P6145419390096966901

`∑[A122189(n+6)]`
-/

namespace A172317.P6145419390096966901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122189 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172317.P6145419390096966901

namespace A172317

/-- `∑[A122189(n+6)]` -/
def P6145419390096966901.Spec : Prop :=
  ∀ n, P6145419390096966901.a n = A172317 n

end A172317

/-! ## A172317.P15974268986953071354

`∑[A251714(n+1)+record[A251711(n)]]`
-/

namespace A172317.P15974268986953071354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251711 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251714 (n + 1) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172317.P15974268986953071354

namespace A172317

/-- `∑[A251714(n+1)+record[A251711(n)]]` -/
def P15974268986953071354.Spec : Prop :=
  ∀ n, P15974268986953071354.a n = A172317 n

end A172317

/-! ## A172317.P15386029345883601743

`Δ[A145115(n)]`
-/

namespace A172317.P15386029345883601743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172317.P15386029345883601743

namespace A172317

/-- `Δ[A145115(n)]` -/
def P15386029345883601743.Spec : Prop :=
  ∀ n, P15386029345883601743.a n = A172317 n

end A172317

/-! ## A172317.P17045023751611122411

`A145115(n+1)-A145115(n)`
-/

namespace A172317.P17045023751611122411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145115 (n + 1) - A145115 n

end

end A172317.P17045023751611122411

namespace A172317

/-- `A145115(n+1)-A145115(n)` -/
def P17045023751611122411.Spec : Prop :=
  ∀ n, P17045023751611122411.a n = A172317 n

end A172317

/-!
# A172318: 9th column of the array A172119.

The programs for A172318, the canonical program `A172318.P13966870396976022141` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172318 has offset 0).

The definition of A172318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172318.P13966870396976022141

`2*a(n-1)-a(n-9)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=64, a(7)=128, a(8)=256`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172318

/-- `2*a(n-1)-a(n-9)` -/
def P13966870396976022141.Spec : Prop :=
  ∀ n, P13966870396976022141.a n = A172318 n

theorem P13966870396976022141.correct : P13966870396976022141.Spec := by
  intro n
  simp only [A172318]

end A172318

/-! ## A172318.P14959234637759560545

`a(n-1)-a(n-9)+a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16, a(5)=32, a(6)=64, a(7)=128, a(8)=256`
-/

namespace A172318.P14959234637759560545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4, 8, 16, 32, 64, 128, 256] fun n a =>
  a (n - 1) - a (n - 9) + a (n - 1)

end

end A172318.P14959234637759560545

namespace A172318

/-- `a(n-1)-a(n-9)+a(n-1)` -/
def P14959234637759560545.Spec : Prop :=
  ∀ n, P14959234637759560545.a n = A172318 n

theorem P14959234637759560545.correct : P14959234637759560545.Spec := by
  intro n
  simp only [A172318, Nat.add_sub_cancel, A172318.P14959234637759560545.a, A172318.P13966870396976022141.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A172318

/-! ## A172318.P10047170227142773130

`∑[A079262(n+7)]`
-/

namespace A172318.P10047170227142773130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079262 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172318.P10047170227142773130

namespace A172318

/-- `∑[A079262(n+7)]` -/
def P10047170227142773130.Spec : Prop :=
  ∀ n, P10047170227142773130.a n = A172318 n

end A172318

/-! ## A172318.P9899418724890510854

`Δ[A145116(n)]`
-/

namespace A172318.P9899418724890510854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172318.P9899418724890510854

namespace A172318

/-- `Δ[A145116(n)]` -/
def P9899418724890510854.Spec : Prop :=
  ∀ n, P9899418724890510854.a n = A172318 n

end A172318

/-! ## A172318.P14638411290360407046

`A145116(n+1)-A145116(n)`
-/

namespace A172318.P14638411290360407046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145116 (n + 1) - A145116 n

end

end A172318.P14638411290360407046

namespace A172318

/-- `A145116(n+1)-A145116(n)` -/
def P14638411290360407046.Spec : Prop :=
  ∀ n, P14638411290360407046.a n = A172318 n

end A172318

/-! ## A172318.P5048235728841208085

`∑[A092921(A056119(n+2)+28)]`
-/

namespace A172318.P5048235728841208085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 (A056119 (n + 2) + 28).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172318.P5048235728841208085

namespace A172318

/-- `∑[A092921(A056119(n+2)+28)]` -/
def P5048235728841208085.Spec : Prop :=
  ∀ n, P5048235728841208085.a n = A172318 n

end A172318

/-!
# A172319: 10th column of A172119.

The programs for A172319, the canonical program `A172319.P930179998604293317` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172319 has offset 0).

The definition of A172319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172319.P930179998604293317

`∑[A258800(n)]+1`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A172319

/-- `∑[A258800(n)]+1` -/
def P930179998604293317.Spec : Prop :=
  ∀ n, P930179998604293317.a n = A172319 n

theorem P930179998604293317.correct : P930179998604293317.Spec := by
  intro n
  simp only [A172319]

end A172319

/-! ## A172319.P18266453969161816224

`∑[record[A104144(n)+char[1]]]+1`
-/

namespace A172319.P18266453969161816224
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 n + ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A172319.P18266453969161816224

namespace A172319

/-- `∑[record[A104144(n)+char[1]]]+1` -/
def P18266453969161816224.Spec : Prop :=
  ∀ n, P18266453969161816224.a n = A172319 n

end A172319

/-! ## A172319.P17360518779418961622

`∑[record[A104144(A243055(n+1)+1)]]+1`
-/

namespace A172319.P17360518779418961622
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104144 (A243055 (n + 1) + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A172319.P17360518779418961622

namespace A172319

/-- `∑[record[A104144(A243055(n+1)+1)]]+1` -/
def P17360518779418961622.Spec : Prop :=
  ∀ n, P17360518779418961622.a n = A172319 n

end A172319

/-! ## A172319.P7880744374829343156

`Δ[A145117(n)]`
-/

namespace A172319.P7880744374829343156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145117 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172319.P7880744374829343156

namespace A172319

/-- `Δ[A145117(n)]` -/
def P7880744374829343156.Spec : Prop :=
  ∀ n, P7880744374829343156.a n = A172319 n

end A172319

/-! ## A172319.P12182931624603501942

`A145117(n+1)-A145117(n)`
-/

namespace A172319.P12182931624603501942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145117 (n + 1) - A145117 n

end

end A172319.P12182931624603501942

namespace A172319

/-- `A145117(n+1)-A145117(n)` -/
def P12182931624603501942.Spec : Prop :=
  ∀ n, P12182931624603501942.a n = A172319 n

end A172319

/-!
# A172320: 11th column of A172119.

The programs for A172320, there is no canonical definition to state claims against.
-/

/-! ## A172320.P13469690884707635191

`A234592(n)+A000007(A002385(n+1))`
-/

namespace A172320.P13469690884707635191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234592 n + A000007 (A002385 (n + 1)).toNat

end

end A172320.P13469690884707635191

/-! ## A172320.P17702597037194831963

`A234592(n)+A059841(A234569(n+1))`
-/

namespace A172320.P17702597037194831963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234592 n + A059841 (A234569 (n + 1)).toNat

end

end A172320.P17702597037194831963

/-! ## A172320.P13612146545724490900

`A000027(A234592(n))`
-/

namespace A172320.P13612146545724490900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A234592 n).toNat

end

end A172320.P13612146545724490900

/-! ## A172320.P17759132936869023629

`A234592(n)%A062725(A026007(n))`
-/

namespace A172320.P17759132936869023629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A234592 n) (A062725 (A026007 n).toNat)

end

end A172320.P17759132936869023629

/-!
# A172322: Number of graphs with nonzero edge sets on an n X n square grid for n=(1,2,3,...).

The programs for A172322, there is no canonical definition to state claims against.
-/

/-! ## A172322.P825621378513358961

`16^∑[n]-1`
-/

namespace A172322.P825621378513358961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (16 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A172322.P825621378513358961

/-! ## A172322.P6533932237131274491

`abs(4^lcm(n, n+1)-1)`
-/

namespace A172322.P6533932237131274491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ Nat.lcm n (n + 1) : ℤ) - 1|

end

end A172322.P6533932237131274491

/-! ## A172322.P9321653197323857125

`xor(-1, -4^∑[2*n])`
-/

namespace A172322.P9321653197323857125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(4 ^ (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ))

end

end A172322.P9321653197323857125

/-! ## A172322.P4669555774825374563

`lcm(3, (4^n)^(n+1)-1)`
-/

namespace A172322.P4669555774825374563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (((4 ^ n) ^ (n + 1) : ℤ) - 1)

end

end A172322.P4669555774825374563

/-! ## A172322.P4517868943423419442

`abs(1-((-4)^n)^∑{digits}[n+1, #])`
-/

namespace A172322.P4517868943423419442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - ((-4) ^ n) ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum|

end

end A172322.P4517868943423419442

/-!
# A172323: a(n) = floor(n*(sqrt(5)+sqrt(2))).

The programs for A172323, the canonical program `A172323.P1166715470937108358` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172323 has offset 0).

The definition of A172323 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(5)+sqrt(2)))` (program `A172323.P1166715470937108358`, by `A172323.P1166715470937108358.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172323.P1166715470937108358

`floor(n*(sqrt(5)+sqrt(2)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172323

/-- `floor(n*(sqrt(5)+sqrt(2)))` -/
def P1166715470937108358.Spec : Prop :=
  ∀ n, P1166715470937108358.a n = A172323 n

theorem P1166715470937108358.correct : P1166715470937108358.Spec := by
  intro n
  simp only [A172323]

end A172323

/-!
# A172324: a(n) = floor(n*(sqrt(7)+sqrt(5))).

The programs for A172324, the canonical program `A172324.P15206166596589695836` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172324 has offset 0).

The definition of A172324 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(7)+sqrt(5)))` (program `A172324.P15206166596589695836`, by `A172324.P15206166596589695836.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172324.P15206166596589695836

`floor(n*(sqrt(7)+sqrt(5)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172324

/-- `floor(n*(sqrt(7)+sqrt(5)))` -/
def P15206166596589695836.Spec : Prop :=
  ∀ n, P15206166596589695836.a n = A172324 n

theorem P15206166596589695836.correct : P15206166596589695836.Spec := by
  intro n
  simp only [A172324]

end A172324

/-! ## A172324.P2440548456081189382

`ceil(n*(sqrt(5)+sqrt(7))-A057427(n))`
-/

namespace A172324.P2440548456081189382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.sqrt (5 : ℝ) + Real.sqrt (7 : ℝ)) - (A057427 n : ℝ)⌉

end

end A172324.P2440548456081189382

namespace A172324

/-- `ceil(n*(sqrt(5)+sqrt(7))-A057427(n))` -/
def P2440548456081189382.Spec : Prop :=
  ∀ n, P2440548456081189382.a n = A172324 n

end A172324

/-! ## A172324.P9667187941431057218

`A008458(n)-(A000196(A032527(n))+1)`
-/

namespace A172324.P9667187941431057218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - (A000196 (A032527 n).toNat + 1)

end

end A172324.P9667187941431057218

namespace A172324

/-- `A008458(n)-(A000196(A032527(n))+1)` -/
def P9667187941431057218.Spec : Prop :=
  ∀ n, P9667187941431057218.a n = A172324 n

end A172324

/-! ## A172324.P16616792822133366742

`A189681(A004277(n))%A035506(A046092(n))`
-/

namespace A172324.P16616792822133366742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A189681 (A004277 n).toNat) (A035506 (A046092 n).toNat)

end

end A172324.P16616792822133366742

namespace A172324

/-- `A189681(A004277(n))%A035506(A046092(n))` -/
def P16616792822133366742.Spec : Prop :=
  ∀ n, P16616792822133366742.a n = A172324 n

end A172324

/-! ## A172324.P4233761165633933768

`∑[A101101(n+1)-A208576(A050027(2*n+5))]`
-/

namespace A172324.P4233761165633933768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101101 (n + 1) - A208576 (A050027 (2 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172324.P4233761165633933768

namespace A172324

/-- `∑[A101101(n+1)-A208576(A050027(2*n+5))]` -/
def P4233761165633933768.Spec : Prop :=
  ∀ n, P4233761165633933768.a n = A172324 n

end A172324

/-!
# A172325: Floor(n*(sqrt(7)+sqrt(3))).

The programs for A172325, the canonical program `A172325.P5810293859138852229` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172325 has offset 0).

The definition of A172325 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(7)+sqrt(3)))` (program `A172325.P5810293859138852229`, by `A172325.P5810293859138852229.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172325.P5810293859138852229

`floor(n*(sqrt(7)+sqrt(3)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172325

/-- `floor(n*(sqrt(7)+sqrt(3)))` -/
def P5810293859138852229.Spec : Prop :=
  ∀ n, P5810293859138852229.a n = A172325 n

theorem P5810293859138852229.correct : P5810293859138852229.Spec := by
  intro n
  simp only [A172325]

end A172325

/-! ## A172325.P13249794374057531485

`ceil(n*(sqrt(3)+sqrt(7))-A057427(n))`
-/

namespace A172325.P13249794374057531485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.sqrt (3 : ℝ) + Real.sqrt (7 : ℝ)) - (A057427 n : ℝ)⌉

end

end A172325.P13249794374057531485

namespace A172325

/-- `ceil(n*(sqrt(3)+sqrt(7))-A057427(n))` -/
def P13249794374057531485.Spec : Prop :=
  ∀ n, P13249794374057531485.a n = A172325 n

end A172325

/-! ## A172325.P4144438070313632874

`A172471(A033583(n)-A033438(n))`
-/

namespace A172325.P4144438070313632874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A033583 n - A033438 n).toNat

end

end A172325.P4144438070313632874

namespace A172325

/-- `A172471(A033583(n)-A033438(n))` -/
def P4144438070313632874.Spec : Prop :=
  ∀ n, P4144438070313632874.a n = A172325 n

end A172325

/-! ## A172325.P16335016830670060645

`A008612(A255414(n+1))-A165471(A262616(n))`
-/

namespace A172325.P16335016830670060645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A255414 (n + 1)).toNat - A165471 (A262616 n).toNat

end

end A172325.P16335016830670060645

namespace A172325

/-- `A008612(A255414(n+1))-A165471(A262616(n))` -/
def P16335016830670060645.Spec : Prop :=
  ∀ n, P16335016830670060645.a n = A172325 n

end A172325

/-! ## A172325.P10811867752658923510

`A108611(comp[2*(n+1)])+4*n`
-/

namespace A172325.P10811867752658923510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + (4 * n : ℤ)

end

end A172325.P10811867752658923510

namespace A172325

/-- `A108611(comp[2*(n+1)])+4*n` -/
def P10811867752658923510.Spec : Prop :=
  ∀ n, P10811867752658923510.a n = A172325 n

end A172325

/-!
# A172326: a(n) = floor(n*(sqrt(7) + sqrt(2))).

The programs for A172326, the canonical program `A172326.P6800383459041993393` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172326 has offset 0).

The definition of A172326 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(7)+sqrt(2)))` (program `A172326.P6800383459041993393`, by `A172326.P6800383459041993393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172326.P6800383459041993393

`floor(n*(sqrt(7)+sqrt(2)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172326

/-- `floor(n*(sqrt(7)+sqrt(2)))` -/
def P6800383459041993393.Spec : Prop :=
  ∀ n, P6800383459041993393.a n = A172326 n

theorem P6800383459041993393.correct : P6800383459041993393.Spec := by
  intro n
  simp only [A172326]

end A172326

/-! ## A172326.P17811949240649725544

`ceil(A057428(n)+n*(sqrt(2)+sqrt(7)))`
-/

namespace A172326.P17811949240649725544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + (n : ℝ) * (Real.sqrt (2 : ℝ) + Real.sqrt (7 : ℝ))⌉

end

end A172326.P17811949240649725544

namespace A172326

/-- `ceil(A057428(n)+n*(sqrt(2)+sqrt(7)))` -/
def P17811949240649725544.Spec : Prop :=
  ∀ n, P17811949240649725544.a n = A172326 n

end A172326

/-! ## A172326.P11945560119468101293

`ceil(n*(sqrt(2)+sqrt(7))-A057427(n))`
-/

namespace A172326.P11945560119468101293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.sqrt (2 : ℝ) + Real.sqrt (7 : ℝ)) - (A057427 n : ℝ)⌉

end

end A172326.P11945560119468101293

namespace A172326

/-- `ceil(n*(sqrt(2)+sqrt(7))-A057427(n))` -/
def P11945560119468101293.Spec : Prop :=
  ∀ n, P11945560119468101293.a n = A172326 n

end A172326

/-! ## A172326.P11946539114032444992

`A202307(A296021(n)+A000326(n))`
-/

namespace A172326.P11946539114032444992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202307 (A296021 n + A000326 n).toNat

end

end A172326.P11946539114032444992

namespace A172326

/-- `A202307(A296021(n)+A000326(n))` -/
def P11946539114032444992.Spec : Prop :=
  ∀ n, P11946539114032444992.a n = A172326 n

end A172326

/-! ## A172326.P2534104982052961802

`A202305(floor(A299255(n)/ϕ))`
-/

namespace A172326.P2534104982052961802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202305 ⌊(A299255 n : ℝ) / Real.goldenRatio⌋.toNat

end

end A172326.P2534104982052961802

namespace A172326

/-- `A202305(floor(A299255(n)/ϕ))` -/
def P2534104982052961802.Spec : Prop :=
  ∀ n, P2534104982052961802.a n = A172326 n

end A172326

/-!
# A172327: Floor(n*(sqrt(11)+sqrt(5))).

The programs for A172327, the canonical program `A172327.P6442084435246304014` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172327 has offset 0).

The definition of A172327 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(11)+sqrt(5)))` (program `A172327.P6442084435246304014`, by `A172327.P6442084435246304014.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172327.P6442084435246304014

`floor(n*(sqrt(11)+sqrt(5)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172327

/-- `floor(n*(sqrt(11)+sqrt(5)))` -/
def P6442084435246304014.Spec : Prop :=
  ∀ n, P6442084435246304014.a n = A172327 n

theorem P6442084435246304014.correct : P6442084435246304014.Spec := by
  intro n
  simp only [A172327]

end A172327

/-! ## A172327.P6424744224438980165

`ceil(n*(sqrt(11)+sqrt(5))-n²%(n+1))`
-/

namespace A172327.P6424744224438980165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.sqrt (11 : ℝ) + Real.sqrt (5 : ℝ)) - ((n ^ 2 % (n + 1) : ℕ) : ℝ)⌉

end

end A172327.P6424744224438980165

namespace A172327

/-- `ceil(n*(sqrt(11)+sqrt(5))-n²%(n+1))` -/
def P6424744224438980165.Spec : Prop :=
  ∀ n, P6424744224438980165.a n = A172327 n

end A172327

/-! ## A172327.P14288730308007727985

`ceil(A057428(n)+n*(sqrt(11)+sqrt(5)))`
-/

namespace A172327.P14288730308007727985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + (n : ℝ) * (Real.sqrt (11 : ℝ) + Real.sqrt (5 : ℝ))⌉

end

end A172327.P14288730308007727985

namespace A172327

/-- `ceil(A057428(n)+n*(sqrt(11)+sqrt(5)))` -/
def P14288730308007727985.Spec : Prop :=
  ∀ n, P14288730308007727985.a n = A172327 n

end A172327

/-! ## A172327.P12718753012760844359

`round(log2(A085695(2*n+1)))`
-/

namespace A172327.P12718753012760844359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A085695 (2 * n + 1) : ℝ))

end

end A172327.P12718753012760844359

namespace A172327

/-- `round(log2(A085695(2*n+1)))` -/
def P12718753012760844359.Spec : Prop :=
  ∀ n, P12718753012760844359.a n = A172327 n

end A172327

/-! ## A172327.P3310823676834229426

`round(log2(A284647(2*n+1)))`
-/

namespace A172327.P3310823676834229426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A284647 (2 * n + 1) : ℝ))

end

end A172327.P3310823676834229426

namespace A172327

/-- `round(log2(A284647(2*n+1)))` -/
def P3310823676834229426.Spec : Prop :=
  ∀ n, P3310823676834229426.a n = A172327 n

end A172327

/-!
# A172328: a(n) = floor(n*(sqrt(11)+sqrt(3))).

The programs for A172328, the canonical program `A172328.P15728189210898006884` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172328 has offset 0).

The definition of A172328 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(11)+sqrt(3)))` (program `A172328.P15728189210898006884`, by `A172328.P15728189210898006884.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172328.P15728189210898006884

`floor(n*(sqrt(11)+sqrt(3)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172328

/-- `floor(n*(sqrt(11)+sqrt(3)))` -/
def P15728189210898006884.Spec : Prop :=
  ∀ n, P15728189210898006884.a n = A172328 n

theorem P15728189210898006884.correct : P15728189210898006884.Spec := by
  intro n
  simp only [A172328]

end A172328

/-! ## A172328.P15371931104655691075

`A016861(n)-A014902(A020639(A033477(n)))`
-/

namespace A172328.P15371931104655691075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n - A014902 (A020639 (A033477 n).toNat).toNat

end

end A172328.P15371931104655691075

namespace A172328

/-- `A016861(n)-A014902(A020639(A033477(n)))` -/
def P15371931104655691075.Spec : Prop :=
  ∀ n, P15371931104655691075.a n = A172328 n

end A172328

/-! ## A172328.P17088579763195082985

`record[A089867(n)%A327624(n+1)]+4*n`
-/

namespace A172328.P17088579763195082985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089867 n) (A327624 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (4 * n : ℤ)

end

end A172328.P17088579763195082985

namespace A172328

/-- `record[A089867(n)%A327624(n+1)]+4*n` -/
def P17088579763195082985.Spec : Prop :=
  ∀ n, P17088579763195082985.a n = A172328 n

end A172328

/-! ## A172328.P6369804601967944310

`A157928(A325720(n+1))+A008587(n)`
-/

namespace A172328.P6369804601967944310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A325720 (n + 1)).toNat + A008587 n

end

end A172328.P6369804601967944310

namespace A172328

/-- `A157928(A325720(n+1))+A008587(n)` -/
def P6369804601967944310.Spec : Prop :=
  ∀ n, P6369804601967944310.a n = A172328 n

end A172328

/-! ## A172328.P873276926437572655

`A324684(A048762(3*(n+1)))+A008587(n)`
-/

namespace A172328.P873276926437572655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324684 (A048762 (3 * (n + 1))).toNat + A008587 n

end

end A172328.P873276926437572655

namespace A172328

/-- `A324684(A048762(3*(n+1)))+A008587(n)` -/
def P873276926437572655.Spec : Prop :=
  ∀ n, P873276926437572655.a n = A172328 n

end A172328

/-!
# A172329: a(n) = floor(n*(sqrt(11) + sqrt(2))).

The programs for A172329, the canonical program `A172329.P8600827693529452839` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172329 has offset 0).

The definition of A172329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(11)+sqrt(2)))` (program `A172329.P8600827693529452839`, by `A172329.P8600827693529452839.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172329.P8600827693529452839

`floor(n*(sqrt(11)+sqrt(2)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172329

/-- `floor(n*(sqrt(11)+sqrt(2)))` -/
def P8600827693529452839.Spec : Prop :=
  ∀ n, P8600827693529452839.a n = A172329 n

theorem P8600827693529452839.correct : P8600827693529452839.Spec := by
  intro n
  simp only [A172329]

end A172329

/-! ## A172329.P3306311192179883740

`A076538(A000196(char[∑[n]]+n²))+4*n`
-/

namespace A172329.P3306311192179883740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076538 (A000196 ((if ∃ j, f1 j = n then 1 else 0) + n ^ 2)).toNat + (4 * n : ℤ)

end

end A172329.P3306311192179883740

namespace A172329

/-- `A076538(A000196(char[∑[n]]+n²))+4*n` -/
def P3306311192179883740.Spec : Prop :=
  ∀ n, P3306311192179883740.a n = A172329 n

end A172329

/-! ## A172329.P10032724989877559114

`A076538(A000196(char[3*n]+n²))+3*n+n`
-/

namespace A172329.P10032724989877559114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076538 (A000196 ((if ∃ j, f1 j = n then 1 else 0) + n ^ 2)).toNat + (3 * n : ℤ) + (n : ℤ)

end

end A172329.P10032724989877559114

namespace A172329

/-- `A076538(A000196(char[3*n]+n²))+3*n+n` -/
def P10032724989877559114.Spec : Prop :=
  ∀ n, P10032724989877559114.a n = A172329 n

end A172329

/-! ## A172329.P474186617545113734

`Δ[A005408(n²-n)]+floor(19*n/26)`
-/

namespace A172329.P474186617545113734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊19 * ((n : ℚ) / 26)⌋

end

end A172329.P474186617545113734

namespace A172329

/-- `Δ[A005408(n²-n)]+floor(19*n/26)` -/
def P474186617545113734.Spec : Prop :=
  ∀ n, P474186617545113734.a n = A172329 n

end A172329

/-! ## A172329.P12860415211406113676

`A059555(A008486(n))%A316093(n+1)`
-/

namespace A172329.P12860415211406113676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059555 (A008486 n).toNat) (A316093 (n + 1))

end

end A172329.P12860415211406113676

namespace A172329

/-- `A059555(A008486(n))%A316093(n+1)` -/
def P12860415211406113676.Spec : Prop :=
  ∀ n, P12860415211406113676.a n = A172329 n

end A172329

/-!
# A172330: Floor(n*(sqrt(13)+sqrt(11))).

The programs for A172330, the canonical program `A172330.P14629567805647932369` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172330 has offset 0).

The definition of A172330 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(13)+sqrt(11)))` (program `A172330.P14629567805647932369`, by `A172330.P14629567805647932369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172330.P14629567805647932369

`floor(n*(sqrt(13)+sqrt(11)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172330

/-- `floor(n*(sqrt(13)+sqrt(11)))` -/
def P14629567805647932369.Spec : Prop :=
  ∀ n, P14629567805647932369.a n = A172330 n

theorem P14629567805647932369.correct : P14629567805647932369.Spec := by
  intro n
  simp only [A172330]

end A172330

/-! ## A172330.P5955273350436884601

`ceil(A057428(n)+n*(sqrt(13)+sqrt(11)))`
-/

namespace A172330.P5955273350436884601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + (n : ℝ) * (Real.sqrt (13 : ℝ) + Real.sqrt (11 : ℝ))⌉

end

end A172330.P5955273350436884601

namespace A172330

/-- `ceil(A057428(n)+n*(sqrt(13)+sqrt(11)))` -/
def P5955273350436884601.Spec : Prop :=
  ∀ n, P5955273350436884601.a n = A172330 n

end A172330

/-! ## A172330.P7090216866932829742

`ceil(n*(sqrt(13)+sqrt(11))-A057427(n))`
-/

namespace A172330.P7090216866932829742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * (Real.sqrt (13 : ℝ) + Real.sqrt (11 : ℝ)) - (A057427 n : ℝ)⌉

end

end A172330.P7090216866932829742

namespace A172330

/-- `ceil(n*(sqrt(13)+sqrt(11))-A057427(n))` -/
def P7090216866932829742.Spec : Prop :=
  ∀ n, P7090216866932829742.a n = A172330 n

end A172330

/-! ## A172330.P11186510484715901791

`A073188(C(4*n+2, 2)-A211337(n+1))`
-/

namespace A172330.P11186510484715901791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 ((Nat.choose (4 * n + 2) 2 : ℤ) - A211337 (n + 1)).toNat

end

end A172330.P11186510484715901791

namespace A172330

/-- `A073188(C(4*n+2, 2)-A211337(n+1))` -/
def P11186510484715901791.Spec : Prop :=
  ∀ n, P11186510484715901791.a n = A172330 n

end A172330

/-! ## A172330.P16832602019314853262

`A073188(A139276(n)+A048881(n))`
-/

namespace A172330.P16832602019314853262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073188 (A139276 n + A048881 n).toNat

end

end A172330.P16832602019314853262

namespace A172330

/-- `A073188(A139276(n)+A048881(n))` -/
def P16832602019314853262.Spec : Prop :=
  ∀ n, P16832602019314853262.a n = A172330 n

end A172330

/-!
# A172331: a(n) = floor(n*(sqrt(13)+sqrt(7))).

The programs for A172331, the canonical program `A172331.P10022548195785693434` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172331 has offset 0).

The definition of A172331 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(13)+sqrt(7)))` (program `A172331.P10022548195785693434`, by `A172331.P10022548195785693434.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172331.P10022548195785693434

`floor(n*(sqrt(13)+sqrt(7)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172331

/-- `floor(n*(sqrt(13)+sqrt(7)))` -/
def P10022548195785693434.Spec : Prop :=
  ∀ n, P10022548195785693434.a n = A172331 n

theorem P10022548195785693434.correct : P10022548195785693434.Spec := by
  intro n
  simp only [A172331]

end A172331

/-! ## A172331.P15125474016862350497

`A001068(5*n)%A185798(A000408(n+1))`
-/

namespace A172331.P15125474016862350497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001068 (5 * n)) (A185798 (A000408 (n + 1)).toNat)

end

end A172331.P15125474016862350497

namespace A172331

/-- `A001068(5*n)%A185798(A000408(n+1))` -/
def P15125474016862350497.Spec : Prop :=
  ∀ n, P15125474016862350497.a n = A172331 n

end A172331

/-! ## A172331.P4018314064045821850

`A008588(n)+A002265(n)%A268164(n+1)`
-/

namespace A172331.P4018314064045821850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n + Int.tmod (A002265 n) (A268164 (n + 1))

end

end A172331.P4018314064045821850

namespace A172331

/-- `A008588(n)+A002265(n)%A268164(n+1)` -/
def P4018314064045821850.Spec : Prop :=
  ∀ n, P4018314064045821850.a n = A172331 n

end A172331

/-! ## A172331.P10697486103245084579

`A113520(A016921(n))+floor(n/4)`
-/

namespace A172331.P10697486103245084579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113520 (A016921 n).toNat + ⌊(n : ℚ) / 4⌋

end

end A172331.P10697486103245084579

namespace A172331

/-- `A113520(A016921(n))+floor(n/4)` -/
def P10697486103245084579.Spec : Prop :=
  ∀ n, P10697486103245084579.a n = A172331 n

end A172331

/-! ## A172331.P3709804678656411763

`A235200(A235200(4*n))+A057353(3*n)`
-/

namespace A172331.P3709804678656411763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235200 (A235200 (4 * n)).toNat + A057353 (3 * n)

end

end A172331.P3709804678656411763

namespace A172331

/-- `A235200(A235200(4*n))+A057353(3*n)` -/
def P3709804678656411763.Spec : Prop :=
  ∀ n, P3709804678656411763.a n = A172331 n

end A172331

/-! ## A172331.P18190943661209597017

`A002265(25*(A011772(C(n+2, 2))-1))`
-/

namespace A172331.P18190943661209597017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (25 * (A011772 (Nat.choose (n + 2) 2) - 1)).toNat

end

end A172331.P18190943661209597017

namespace A172331

/-- `A002265(25*(A011772(C(n+2, 2))-1))` -/
def P18190943661209597017.Spec : Prop :=
  ∀ n, P18190943661209597017.a n = A172331 n

end A172331

/-! ## A172331.P13948510843912410090

`A129594(A129594(6*n))+A002265(n)`
-/

namespace A172331.P13948510843912410090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (A129594 (6 * n)).toNat + A002265 n

end

end A172331.P13948510843912410090

namespace A172331

/-- `A129594(A129594(6*n))+A002265(n)` -/
def P13948510843912410090.Spec : Prop :=
  ∀ n, P13948510843912410090.a n = A172331 n

end A172331

/-! ## A172331.P7540598575346579952

`A214067(n)+A000035(n²)`
-/

namespace A172331.P7540598575346579952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214067 n + A000035 (n ^ 2)

end

end A172331.P7540598575346579952

namespace A172331

/-- `A214067(n)+A000035(n²)` -/
def P7540598575346579952.Spec : Prop :=
  ∀ n, P7540598575346579952.a n = A172331 n

end A172331

/-! ## A172331.P4947894001503298946

`A001068(5*n*A057427(n²))`
-/

namespace A172331.P4947894001503298946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (5 * ((n : ℤ) * A057427 (n ^ 2))).toNat

end

end A172331.P4947894001503298946

namespace A172331

/-- `A001068(5*n*A057427(n²))` -/
def P4947894001503298946.Spec : Prop :=
  ∀ n, P4947894001503298946.a n = A172331 n

end A172331

/-! ## A172331.P9370415626300826877

`A191708(A000096(n+1))-2`
-/

namespace A172331.P9370415626300826877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191708 (A000096 (n + 1)).toNat - 2

end

end A172331.P9370415626300826877

namespace A172331

/-- `A191708(A000096(n+1))-2` -/
def P9370415626300826877.Spec : Prop :=
  ∀ n, P9370415626300826877.a n = A172331 n

end A172331

/-!
# A172332: Floor(n*(sqrt(13)+sqrt(5))).

The programs for A172332, the canonical program `A172332.P710077481605578599` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172332 has offset 0).

The definition of A172332 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(13)+sqrt(5)))` (program `A172332.P710077481605578599`, by `A172332.P710077481605578599.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172332.P710077481605578599

`floor(n*(sqrt(13)+sqrt(5)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172332

/-- `floor(n*(sqrt(13)+sqrt(5)))` -/
def P710077481605578599.Spec : Prop :=
  ∀ n, P710077481605578599.a n = A172332 n

theorem P710077481605578599.correct : P710077481605578599.Spec := by
  intro n
  simp only [A172332]

end A172332

/-! ## A172332.P3949234011062507961

`A202306(5*n²-A001971(n))`
-/

namespace A172332.P3949234011062507961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202306 ((5 * n ^ 2 : ℤ) - A001971 n).toNat

end

end A172332.P3949234011062507961

namespace A172332

/-- `A202306(5*n²-A001971(n))` -/
def P3949234011062507961.Spec : Prop :=
  ∀ n, P3949234011062507961.a n = A172332 n

end A172332

/-! ## A172332.P1500607000985016247

`A017197(n)-A003056(∑[A017377(n)])`
-/

namespace A172332.P1500607000985016247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 n - A003056 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172332.P1500607000985016247

namespace A172332

/-- `A017197(n)-A003056(∑[A017377(n)])` -/
def P1500607000985016247.Spec : Prop :=
  ∀ n, P1500607000985016247.a n = A172332 n

end A172332

/-! ## A172332.P11856264918890628492

`A172471(A338768(n+1)+A244630(n))`
-/

namespace A172332.P11856264918890628492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 (A338768 (n + 1) + A244630 n).toNat

end

end A172332.P11856264918890628492

namespace A172332

/-- `A172471(A338768(n+1)+A244630(n))` -/
def P11856264918890628492.Spec : Prop :=
  ∀ n, P11856264918890628492.a n = A172332 n

end A172332

/-! ## A172332.P2680925835359021208

`A003056(A244630(n)+A172323(n))`
-/

namespace A172332.P2680925835359021208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A244630 n + A172323 n).toNat

end

end A172332.P2680925835359021208

namespace A172332

/-- `A003056(A244630(n)+A172323(n))` -/
def P2680925835359021208.Spec : Prop :=
  ∀ n, P2680925835359021208.a n = A172332 n

end A172332

/-!
# A172334: Floor(n*(sqrt(13)+sqrt(3))).

The programs for A172334, the canonical program `A172334.P16887456747788823689` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172334 has offset 0).

The definition of A172334 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(13)+sqrt(3)))` (program `A172334.P16887456747788823689`, by `A172334.P16887456747788823689.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172334.P16887456747788823689

`floor(n*(sqrt(13)+sqrt(3)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172334

/-- `floor(n*(sqrt(13)+sqrt(3)))` -/
def P16887456747788823689.Spec : Prop :=
  ∀ n, P16887456747788823689.a n = A172334 n

theorem P16887456747788823689.correct : P16887456747788823689.Spec := by
  intro n
  simp only [A172334]

end A172334

/-! ## A172334.P9145677149016878390

`A002264(lcm(16*n, A008835(n+1)))`
-/

namespace A172334.P9145677149016878390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lcm (16 * n : ℤ) (A008835 (n + 1)))

end

end A172334.P9145677149016878390

namespace A172334

/-- `A002264(lcm(16*n, A008835(n+1)))` -/
def P9145677149016878390.Spec : Prop :=
  ∀ n, P9145677149016878390.a n = A172334 n

end A172334

/-! ## A172334.P9166449302722803514

`A047498(4*n+1)%p?[A001399(4*n)]`
-/

namespace A172334.P9166449302722803514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047498 (4 * n + 1)) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A172334.P9166449302722803514

namespace A172334

/-- `A047498(4*n+1)%p?[A001399(4*n)]` -/
def P9166449302722803514.Spec : Prop :=
  ∀ n, P9166449302722803514.a n = A172334 n

end A172334

/-! ## A172334.P7304707457568866007

`A004773(A008586(n))%A079417(n+1)`
-/

namespace A172334.P7304707457568866007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004773 (A008586 n).toNat) (A079417 (n + 1))

end

end A172334.P7304707457568866007

namespace A172334

/-- `A004773(A008586(n))%A079417(n+1)` -/
def P7304707457568866007.Spec : Prop :=
  ∀ n, P7304707457568866007.a n = A172334 n

end A172334

/-! ## A172334.P8165119735325146257

`A047605(A047564(2*n+1)%A130443(n+1))`
-/

namespace A172334.P8165119735325146257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047605 (Int.tmod (A047564 (2 * n + 1)) (A130443 (n + 1))).toNat

end

end A172334.P8165119735325146257

namespace A172334

/-- `A047605(A047564(2*n+1)%A130443(n+1))` -/
def P8165119735325146257.Spec : Prop :=
  ∀ n, P8165119735325146257.a n = A172334 n

end A172334

/-! ## A172334.P17694743223863658627

`A047220(2*n+1)+A014473(A000124(2*n+1))`
-/

namespace A172334.P17694743223863658627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047220 (2 * n + 1) + A014473 (A000124 (2 * n + 1)).toNat

end

end A172334.P17694743223863658627

namespace A172334

/-- `A047220(2*n+1)+A014473(A000124(2*n+1))` -/
def P17694743223863658627.Spec : Prop :=
  ∀ n, P17694743223863658627.a n = A172334 n

end A172334

/-! ## A172334.P12576948162395850644

`A017317(n)-A038123(n+1)`
-/

namespace A172334.P12576948162395850644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 n - A038123 (n + 1)

end

end A172334.P12576948162395850644

namespace A172334

/-- `A017317(n)-A038123(n+1)` -/
def P12576948162395850644.Spec : Prop :=
  ∀ n, P12576948162395850644.a n = A172334 n

end A172334

/-!
# A172335: Numbers k such that k and k+17 have same sum of divisors.

The programs for A172335, there is no canonical definition to state claims against.
-/

/-! ## A172335.P15198664634255017428

`A065475(eq[17, A333947(n+1)])`
-/

namespace A172335.P15198664634255017428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172335.P15198664634255017428

/-!
# A172336: a(n) = floor(n*(sqrt(13)+sqrt(2))).

The programs for A172336, the canonical program `A172336.P1180822451207979952` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172336 has offset 0).

The definition of A172336 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(13)+sqrt(2)))` (program `A172336.P1180822451207979952`, by `A172336.P1180822451207979952.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172336.P1180822451207979952

`floor(n*(sqrt(13)+sqrt(2)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172336

/-- `floor(n*(sqrt(13)+sqrt(2)))` -/
def P1180822451207979952.Spec : Prop :=
  ∀ n, P1180822451207979952.a n = A172336 n

theorem P1180822451207979952.correct : P1180822451207979952.Spec := by
  intro n
  simp only [A172336]

end A172336

/-! ## A172336.P6908086284845755864

`5*n+1-A015012(A336430(n+1))`
-/

namespace A172336.P6908086284845755864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) + (1 - A015012 (A336430 (n + 1)).toNat)

end

end A172336.P6908086284845755864

namespace A172336

/-- `5*n+1-A015012(A336430(n+1))` -/
def P6908086284845755864.Spec : Prop :=
  ∀ n, P6908086284845755864.a n = A172336 n

end A172336

/-! ## A172336.P7386951500910495961

`A016861(n)-A015012(A336430(n+1))`
-/

namespace A172336.P7386951500910495961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n - A015012 (A336430 (n + 1)).toNat

end

end A172336.P7386951500910495961

namespace A172336

/-- `A016861(n)-A015012(A336430(n+1))` -/
def P7386951500910495961.Spec : Prop :=
  ∀ n, P7386951500910495961.a n = A172336 n

end A172336

/-! ## A172336.P10663867326625736205

`sqrt(A016862(n))-A015012(A336430(n+1))`
-/

namespace A172336.P10663867326625736205
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A016862 n : ℝ) - (A015012 (A336430 (n + 1)).toNat : ℝ)

end

end A172336.P10663867326625736205

namespace A172336

/-- `sqrt(A016862(n))-A015012(A336430(n+1))` -/
def P10663867326625736205.Spec : Prop :=
  ∀ n, P10663867326625736205.a n = (A172336 n : ℝ)

end A172336

/-! ## A172336.P6599492776851658043

`Δ[A192136(n)]-A015012(A336430(n+1))`
-/

namespace A172336.P6599492776851658043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192136 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A015012 (A336430 (n + 1)).toNat

end

end A172336.P6599492776851658043

namespace A172336

/-- `Δ[A192136(n)]-A015012(A336430(n+1))` -/
def P6599492776851658043.Spec : Prop :=
  ∀ n, P6599492776851658043.a n = A172336 n

end A172336

/-! ## A172336.P93202659883876828

`floor(A240868(n)/A052905(n+3))+5*n`
-/

namespace A172336.P93202659883876828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A240868 n : ℚ) / (A052905 (n + 3) : ℚ)⌋ + (5 * n : ℤ)

end

end A172336.P93202659883876828

namespace A172336

/-- `floor(A240868(n)/A052905(n+3))+5*n` -/
def P93202659883876828.Spec : Prop :=
  ∀ n, P93202659883876828.a n = A172336 n

end A172336

/-! ## A172336.P10722633895328789618

`A014083(A010893(n))+5*n`
-/

namespace A172336.P10722633895328789618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014083 (A010893 (n + 13)).toNat + (5 * n : ℤ)

end

end A172336.P10722633895328789618

namespace A172336

/-- `A014083(A010893(n))+5*n` -/
def P10722633895328789618.Spec : Prop :=
  ∀ n, P10722633895328789618.a n = A172336 n

end A172336

/-!
# A172337: Floor(n*(sqrt(11)+sqrt(7))).

The programs for A172337, the canonical program `A172337.P5247627988508455767` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172337 has offset 0).

The definition of A172337 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(11)+sqrt(7)))` (program `A172337.P5247627988508455767`, by `A172337.P5247627988508455767.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172337.P5247627988508455767

`floor(n*(sqrt(11)+sqrt(7)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172337

/-- `floor(n*(sqrt(11)+sqrt(7)))` -/
def P5247627988508455767.Spec : Prop :=
  ∀ n, P5247627988508455767.a n = A172337 n

theorem P5247627988508455767.correct : P5247627988508455767.Spec := by
  intro n
  simp only [A172337]

end A172337

/-! ## A172337.P2617136734746495961

`A008458(n)-ceil(A115511(n+1)/27)`
-/

namespace A172337.P2617136734746495961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - ⌈(A115511 (n + 1) : ℚ) / 27⌉

end

end A172337.P2617136734746495961

namespace A172337

/-- `A008458(n)-ceil(A115511(n+1)/27)` -/
def P2617136734746495961.Spec : Prop :=
  ∀ n, P2617136734746495961.a n = A172337 n

end A172337

/-! ## A172337.P5187627867676964347

`A008458(n)-ceil(A329990(n+1)/35)`
-/

namespace A172337.P5187627867676964347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - ⌈(A329990 (n + 1) : ℚ) / 35⌉

end

end A172337.P5187627867676964347

namespace A172337

/-- `A008458(n)-ceil(A329990(n+1)/35)` -/
def P5187627867676964347.Spec : Prop :=
  ∀ n, P5187627867676964347.a n = A172337 n

end A172337

/-! ## A172337.P10600269484201379516

`A008458(n)-A000030(A280825(n+1))`
-/

namespace A172337.P10600269484201379516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A000030 (A280825 (n + 1)).toNat

end

end A172337.P10600269484201379516

namespace A172337

/-- `A008458(n)-A000030(A280825(n+1))` -/
def P10600269484201379516.Spec : Prop :=
  ∀ n, P10600269484201379516.a n = A172337 n

end A172337

/-! ## A172337.P6539017967924555216

`A008458(n)-A287091(n)%A324929(n+1)`
-/

namespace A172337.P6539017967924555216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - Int.tmod (A287091 n) (A324929 (n + 1))

end

end A172337.P6539017967924555216

namespace A172337

/-- `A008458(n)-A287091(n)%A324929(n+1)` -/
def P6539017967924555216.Spec : Prop :=
  ∀ n, P6539017967924555216.a n = A172337 n

end A172337

/-! ## A172337.P14388569298432199976

`A008458(n)-A000104(A048766(n)%A177763(n+2))`
-/

namespace A172337.P14388569298432199976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A000104 (Int.tmod (A048766 n) (A177763 (n + 2))).toNat

end

end A172337.P14388569298432199976

namespace A172337

/-- `A008458(n)-A000104(A048766(n)%A177763(n+2))` -/
def P14388569298432199976.Spec : Prop :=
  ∀ n, P14388569298432199976.a n = A172337 n

end A172337

/-!
# A172338: a(n) = floor(n*(sqrt(5)+sqrt(3))).

The programs for A172338, the canonical program `A172338.P11688627493056384167` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172338 has offset 0).

The definition of A172338 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*(sqrt(5)+sqrt(3)))` (program `A172338.P11688627493056384167`, by `A172338.P11688627493056384167.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172338.P11688627493056384167

`floor(n*(sqrt(5)+sqrt(3)))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172338

/-- `floor(n*(sqrt(5)+sqrt(3)))` -/
def P11688627493056384167.Spec : Prop :=
  ∀ n, P11688627493056384167.a n = A172338 n

theorem P11688627493056384167.correct : P11688627493056384167.Spec := by
  intro n
  simp only [A172338]

end A172338

/-! ## A172338.P6179431440192970987

`ceil(A057428(n)+n*(sqrt(3)+sqrt(5)))`
-/

namespace A172338.P6179431440192970987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A057428 n : ℝ) + (n : ℝ) * (Real.sqrt (3 : ℝ) + Real.sqrt (5 : ℝ))⌉

end

end A172338.P6179431440192970987

namespace A172338

/-- `ceil(A057428(n)+n*(sqrt(3)+sqrt(5)))` -/
def P6179431440192970987.Spec : Prop :=
  ∀ n, P6179431440192970987.a n = A172338 n

end A172338

/-! ## A172338.P4385378137271237458

`A004273(2*n)-A324684(A048762(2*n))`
-/

namespace A172338.P4385378137271237458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (2 * n) - A324684 (A048762 (2 * n)).toNat

end

end A172338.P4385378137271237458

namespace A172338

/-- `A004273(2*n)-A324684(A048762(2*n))` -/
def P4385378137271237458.Spec : Prop :=
  ∀ n, P4385378137271237458.a n = A172338 n

end A172338

/-! ## A172338.P11258899386987274388

`2*n+2*n+1-∑[A010057(A326842(n))]`
-/

namespace A172338.P11258899386987274388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A326842 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) + ((2 * n + 1 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172338.P11258899386987274388

namespace A172338

/-- `2*n+2*n+1-∑[A010057(A326842(n))]` -/
def P11258899386987274388.Spec : Prop :=
  ∀ n, P11258899386987274388.a n = A172338 n

end A172338

/-! ## A172338.P16169468413482965550

`A016813(n)-∑[A010057(A326842(n))]`
-/

namespace A172338.P16169468413482965550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A326842 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172338.P16169468413482965550

namespace A172338

/-- `A016813(n)-∑[A010057(A326842(n))]` -/
def P16169468413482965550.Spec : Prop :=
  ∀ n, P16169468413482965550.a n = A172338 n

end A172338

/-!
# A172339: Triangle t(n,k) read by rows: fibonomial ratios c(n)/(c(k)*c(n-k)) where c are partial products of a generalized Fibonacci sequence with multiplier m=3.

The programs for A172339, there is no canonical definition to state claims against.
-/

/-! ## A172339.P455237473183333922

`A215092(A172343(n))`
-/

namespace A172339.P455237473183333922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215092 (A172343 n).toNat

end

end A172339.P455237473183333922

/-! ## A172339.P10447868075198025016

`A340320(2*A172342(n))`
-/

namespace A172339.P10447868075198025016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340320 (2 * A172342 n).toNat

end

end A172339.P10447868075198025016

/-! ## A172339.P3977140004008758914

`A340320(A172342(n)+A172342(n)-1)`
-/

namespace A172339.P3977140004008758914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340320 (A172342 n + (A172342 n - 1)).toNat

end

end A172339.P3977140004008758914

/-! ## A172339.P3258427837815573612

`A340320(A172342(n)-(1-A172342(n)))`
-/

namespace A172339.P3258427837815573612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340320 (A172342 n - (1 - A172342 n)).toNat

end

end A172339.P3258427837815573612

/-! ## A172339.P14236204525744897093

`A071722(A246495(n+1)%A297845(n+1))`
-/

namespace A172339.P14236204525744897093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071722 (Int.tmod (A246495 (n + 1)) (A297845 (n + 1))).toNat

end

end A172339.P14236204525744897093

/-!
# A172340: a(n) = ((2^n+1)^n - (2^n-1)^n)/2.

The programs for A172340, the canonical program `A172340.P16130337919900700311` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172340 has offset 1).

The definition of A172340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172340.P16130337919900700311

`((2^(n+1)+1)^(n+1)-(2^(n+1)-1)^(n+1))/2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172340

/-- `((2^(n+1)+1)^(n+1)-(2^(n+1)-1)^(n+1))/2` -/
def P16130337919900700311.Spec : Prop :=
  ∀ n, P16130337919900700311.a n = (A172340 (n + 1) : ℚ)

end A172340

/-!
# A172341: a(n) = ((2^n+1)^n + (2^n-1)^n)/2.

The programs for A172341, the canonical program `A172341.P14019343316806849403` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172341 has offset 1).

The definition of A172341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172341.P14019343316806849403

`((2^(n+1)+1)^(n+1)+(2^(n+1)-1)^(n+1))/2`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172341

/-- `((2^(n+1)+1)^(n+1)+(2^(n+1)-1)^(n+1))/2` -/
def P14019343316806849403.Spec : Prop :=
  ∀ n, P14019343316806849403.a n = (A172341 (n + 1) : ℚ)

end A172341

/-!
# A172342: Triangle t(n,k) read by rows: fibonomial ratios c(n)/(c(k)*c(n-k)) where c are partial products of a generalized Fibonacci sequence with multiplier m=5.

The programs for A172342, there is no canonical definition to state claims against.
-/

/-! ## A172342.P5112742810861236592

`A303788(A172343(n))`
-/

namespace A172342.P5112742810861236592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303788 (A172343 n).toNat

end

end A172342.P5112742810861236592

/-! ## A172342.P8618211720849684749

`A087843(A176627(n))`
-/

namespace A172342.P8618211720849684749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087843 (A176627 n).toNat

end

end A172342.P8618211720849684749

/-! ## A172342.P4561190769999604283

`A192391(A179086(n))`
-/

namespace A172342.P4561190769999604283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192391 (A179086 n).toNat

end

end A172342.P4561190769999604283

/-! ## A172342.P9054026004159615187

`A352961(A022180(n))`
-/

namespace A172342.P9054026004159615187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352961 (A022180 n).toNat

end

end A172342.P9054026004159615187

/-! ## A172342.P15087351938759546674

`A091309(A342972(n))`
-/

namespace A172342.P15087351938759546674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091309 (A342972 n).toNat

end

end A172342.P15087351938759546674

/-!
# A172343: Triangle t(n,k) read by rows: fibonomial ratios c(n)/(c(k)*c(n-k)) where c are partial products of a generalized Fibonacci sequence with multiplier m=6.

The programs for A172343, there is no canonical definition to state claims against.
-/

/-! ## A172343.P18017623247571031347

`A037465(A172342(n))`
-/

namespace A172343.P18017623247571031347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037465 (A172342 n).toNat

end

end A172343.P18017623247571031347

/-! ## A172343.P16836908873030622087

`A303789(A172345(n))`
-/

namespace A172343.P16836908873030622087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303789 (A172345 n).toNat

end

end A172343.P16836908873030622087

/-! ## A172343.P5223771304581180101

`A054637(6^A185651(n))`
-/

namespace A172343.P5223771304581180101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054637 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (A185651 n : ℤ))).toNat

end

end A172343.P5223771304581180101

/-! ## A172343.P3269357314553829589

`A005668(A348798(n)+A007318(n))`
-/

namespace A172343.P3269357314553829589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (A348798 n + A007318 n).toNat

end

end A172343.P3269357314553829589

/-! ## A172343.P4870020887009769662

`A005668(A007318(n*A342980(n)))`
-/

namespace A172343.P4870020887009769662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (A007318 ((n : ℤ) * A342980 n).toNat).toNat

end

end A172343.P4870020887009769662

/-!
# A172344: Numbers k such that phi(k)/k = 16/29.

The programs for A172344, there is no canonical definition to state claims against.
-/

/-! ## A172344.P17379177055073528018

`A033850(n+1)*A259534(A259473(n+1))`
-/

namespace A172344.P17379177055073528018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033850 (n + 1) * A259534 (A259473 (n + 1)).toNat

end

end A172344.P17379177055073528018

/-!
# A172345: Triangle t(n,k) read by rows: fibonomial ratios c(n)/(c(k)*c(n-k)) where c are partial products of a generalized Fibonacci sequence with multiplier m=7.

The programs for A172345, there is no canonical definition to state claims against.
-/

/-! ## A172345.P3206560155467966877

`A037466(A172342(n))`
-/

namespace A172345.P3206560155467966877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037466 (A172342 n).toNat

end

end A172345.P3206560155467966877

/-! ## A172345.P9245911708428363500

`A020657(A172343(n)+1)`
-/

namespace A172345.P9245911708428363500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (A172343 n + 1).toNat

end

end A172345.P9245911708428363500

/-! ## A172345.P3679982887023412709

`A061070(A156939(n))`
-/

namespace A172345.P3679982887023412709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061070 (A156939 n).toNat

end

end A172345.P3679982887023412709

/-! ## A172345.P8991059947992205960

`A247915(A156764(n))-1`
-/

namespace A172345.P8991059947992205960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247915 (A156764 n).toNat - 1

end

end A172345.P8991059947992205960

/-! ## A172345.P3668754506164547019

`A087011(8*A022173(n))`
-/

namespace A172345.P3668754506164547019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087011 (8 * A022173 n).toNat

end

end A172345.P3668754506164547019

/-!
# A172346: Triangle t(n,k) read by rows: fibonomial ratios c(n)/(c(k)*c(n-k)) where c are partial products of a generalized Fibonacci sequence with multiplier m=8.

The programs for A172346, there is no canonical definition to state claims against.
-/

/-! ## A172346.P4136263185297111594

`A037467(A172342(n))`
-/

namespace A172346.P4136263185297111594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037467 (A172342 n).toNat

end

end A172346.P4136263185297111594

/-! ## A172346.P11538760619815021228

`A037471(A172343(n))`
-/

namespace A172346.P11538760619815021228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037471 (A172343 n).toNat

end

end A172346.P11538760619815021228

/-! ## A172346.P6856650119979218276

`A037474(A172345(n))`
-/

namespace A172346.P6856650119979218276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037474 (A172345 n).toNat

end

end A172346.P6856650119979218276

/-! ## A172346.P59049664485058173

`A256701(A022171(n))`
-/

namespace A172346.P59049664485058173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256701 (A022171 n).toNat

end

end A172346.P59049664485058173

/-! ## A172346.P84467819321083162

`xor(3, A071585(A022185(n)))`
-/

namespace A172346.P84467819321083162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (A071585 (A022185 n).toNat)

end

end A172346.P84467819321083162

/-!
# A172348: Index k of the semiprime A001358(k) = prime(n) * prime(n+1).

The programs for A172348, there is no canonical definition to state claims against.
-/

/-! ## A172348.P1972001475565304877

`A393286(∑[n+1])+n+1`
-/

namespace A172348.P1972001475565304877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393286 (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1 : ℤ)

end

end A172348.P1972001475565304877

/-! ## A172348.P11159655173585063353

`eq[1, A176506(n+1)]+1`
-/

namespace A172348.P11159655173585063353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176506 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A172348.P11159655173585063353

/-! ## A172348.P16482037305234479348

`A072000(record[A116570(n)])`
-/

namespace A172348.P16482037305234479348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116570 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172348.P16482037305234479348

/-! ## A172348.P14618227754833293684

`A072000(A006094(n+1))`
-/

namespace A172348.P14618227754833293684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A006094 (n + 1)).toNat

end

end A172348.P14618227754833293684

/-! ## A172348.P16299544803569465748

`A072000(A023523(n+2))`
-/

namespace A172348.P16299544803569465748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A023523 (n + 2)).toNat

end

end A172348.P16299544803569465748

/-!
# A172349: Triangle t(n,k) read by rows: fibonomial ratios c(n)/(c(k)*c(n-k)) where c are partial products of a generalized Fibonacci sequence with multiplier m=4.

The programs for A172349, there is no canonical definition to state claims against.
-/

/-! ## A172349.P11156219306005550759

`A113648(A202687(n))`
-/

namespace A172349.P11156219306005550759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113648 (A202687 n).toNat

end

end A172349.P11156219306005550759

/-! ## A172349.P14083180934387335431

`A336139(A007318(n)%A008981(n))`
-/

namespace A172349.P14083180934387335431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336139 (Int.tmod (A007318 n) (A008981 n)).toNat

end

end A172349.P14083180934387335431

/-! ## A172349.P14549607795971324922

`A336139(A007318(n)^A318812(n+3))`
-/

namespace A172349.P14549607795971324922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336139 (SequenceMachineLib.roundAway ((A007318 n : ℚ) ^ (A318812 (n + 3) : ℤ))).toNat

end

end A172349.P14549607795971324922

/-! ## A172349.P12219155733235719642

`A276086(A304125(n+1)%A082039(n))`
-/

namespace A172349.P12219155733235719642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (Int.tmod (A304125 (n + 1)) (A082039 n)).toNat

end

end A172349.P12219155733235719642

/-! ## A172349.P6890076563401238712

`gcd(A005945(A296285(n+1)), A156696(n))`
-/

namespace A172349.P6890076563401238712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005945 (A296285 (n + 1)).toNat) (A156696 n)

end

end A172349.P6890076563401238712

/-!
# A172350: Triangle t(n,k) read by rows: fibonomial ratios c(n)/(c(k)*c(n-k)) where c are partial products of a generalized Fibonacci sequence with multiplier m=5.

The programs for A172350, there is no canonical definition to state claims against.
-/

/-! ## A172350.P14231615333564715694

`A225859(A172349(n))`
-/

namespace A172350.P14231615333564715694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (A172349 n).toNat

end

end A172350.P14231615333564715694

/-!
# A172351: Triangle t(n,k) read by rows: fibonomial ratios c(n)/(c(k)*c(n-k)) where c are partial products of a generalized Fibonacci sequence with multiplier m=6.

The programs for A172351, there is no canonical definition to state claims against.
-/

/-! ## A172351.P13697529943104870053

`A208746(A172352(n))`
-/

namespace A172351.P13697529943104870053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208746 (A172352 n).toNat

end

end A172351.P13697529943104870053

/-! ## A172351.P4141195322908635829

`A324198(A004275(A200990(n+1)²))`
-/

namespace A172351.P4141195322908635829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (A004275 (A200990 (n + 1) ^ 2).toNat).toNat

end

end A172351.P4141195322908635829

/-! ## A172351.P17955635689976825323

`A082985(A176151(n)^A265848(n))`
-/

namespace A172351.P17955635689976825323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082985 (SequenceMachineLib.roundAway ((A176151 n : ℚ) ^ (A265848 n : ℤ))).toNat

end

end A172351.P17955635689976825323

/-! ## A172351.P131198910977308691

`A327539(A113370(n)^A329291(n+5))`
-/

namespace A172351.P131198910977308691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327539 (SequenceMachineLib.roundAway ((A113370 n : ℚ) ^ (A329291 (n + 5) : ℤ))).toNat

end

end A172351.P131198910977308691

/-! ## A172351.P8052571619261533879

`A065764(A010048(n)%A048052(n+1))`
-/

namespace A172351.P8052571619261533879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065764 (Int.tmod (A010048 n) (A048052 (n + 1))).toNat

end

end A172351.P8052571619261533879

/-!
# A172352: Triangle t(n,k) read by rows: fibonomial ratios c(n)/(c(k)*c(n-k)) where c are partial products of a generalized Fibonacci sequence with multiplier m=7.

The programs for A172352, there is no canonical definition to state claims against.
-/

/-! ## A172352.P7857557197705811477

`A161342(A010048(n)%A265788(n+1))`
-/

namespace A172352.P7857557197705811477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161342 (Int.tmod (A010048 n) (A265788 (n + 1))).toNat

end

end A172352.P7857557197705811477

/-!
# A172353: Triangle t(n,k) of Padovan factorial ratios c(n)/(c(k)*c(n-k)) where c(n) = A126772(n).

The programs for A172353, there is no canonical definition to state claims against.
-/

/-! ## A172353.P1141386084531089332

`A387942(A172360(n))`
-/

namespace A172353.P1141386084531089332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387942 (A172360 n).toNat

end

end A172353.P1141386084531089332

/-! ## A172353.P4111760975374445400

`A064989(A172358(n))%A358175(2*(n+1))`
-/

namespace A172353.P4111760975374445400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064989 (A172358 n).toNat) (A358175 (2 * (n + 1)))

end

end A172353.P4111760975374445400

/-! ## A172353.P4466904483377438560

`A064989(A172358(n)%A240153(3*(n+1)))`
-/

namespace A172353.P4466904483377438560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (Int.tmod (A172358 n) (A240153 (3 * (n + 1)))).toNat

end

end A172353.P4466904483377438560

/-! ## A172353.P6106950354121500087

`A087739(A172358(n))`
-/

namespace A172353.P6106950354121500087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087739 (A172358 n).toNat

end

end A172353.P6106950354121500087

/-! ## A172353.P6174793511392983237

`A120397(A172356(n))`
-/

namespace A172353.P6174793511392983237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120397 (A172356 n).toNat

end

end A172353.P6174793511392983237

/-!
# A172355: Triangle t(n,k) read by rows: generalized Padovan factorial ratios c(n)/(c(k)*c(n-k)) where c are partial products of a generalized Padovan sequence with multiplier m=5.

The programs for A172355, there is no canonical definition to state claims against.
-/

/-! ## A172355.P6722184750856349307

`A033042(A010048(n))%A274582(3*(n+1))`
-/

namespace A172355.P6722184750856349307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033042 (A010048 n).toNat) (A274582 (3 * (n + 1)))

end

end A172355.P6722184750856349307

/-!
# A172356: Triangle T(n, k) = round( c(n)/(c(k)*c(n-k)) ), where c(n) = Product_{j=1..n} A078012(j+3), read by rows.

The programs for A172356, there is no canonical definition to state claims against.
-/

/-! ## A172356.P17932252914907966050

`A172363(lt[A324935(2*(n+1)), A123487(3*n+4)])`
-/

namespace A172356.P17932252914907966050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324935 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123487 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172363 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A172356.P17932252914907966050

/-!
# A172358: Triangle read by rows: T(n,k) = round(c(n)/(c(k)*c(n-k))) where c are partial products of a sequence defined in comments.

The programs for A172358, there is no canonical definition to state claims against.
-/

/-! ## A172358.P14929353066057278084

`A003961(A172353(n)+A151933(3*n+4))`
-/

namespace A172358.P14929353066057278084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A172353 n + A151933 (3 * n + 4)).toNat

end

end A172358.P14929353066057278084

/-! ## A172358.P11877115676652349458

`gcd(A110026(n), A139331(n))`
-/

namespace A172358.P11877115676652349458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A110026 n) (A139331 n)

end

end A172358.P11877115676652349458

/-!
# A172359: Triangle read by rows: T(n,k) = round(c(n)/(c(k)*c(n-k))) where c are partial products of a sequence defined in comments.

The programs for A172359, there is no canonical definition to state claims against.
-/

/-! ## A172359.P1216946904234742664

`A373226(A172358(n))`
-/

namespace A172359.P1216946904234742664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373226 (A172358 n).toNat

end

end A172359.P1216946904234742664

/-! ## A172359.P13388962387211745381

`A120119(gcd(A110026(n), A139331(n)))`
-/

namespace A172359.P13388962387211745381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120119 (Int.gcd (A110026 n) (A139331 n))

end

end A172359.P13388962387211745381

/-! ## A172359.P14522290779893127141

`A003004(A172360(n))`
-/

namespace A172359.P14522290779893127141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003004 (A172360 n).toNat

end

end A172359.P14522290779893127141

/-! ## A172359.P4186878917129233415

`A000005(A172356(n)^4)`
-/

namespace A172359.P4186878917129233415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A172356 n ^ 4).toNat

end

end A172359.P4186878917129233415

/-! ## A172359.P17227531060996936647

`A000005(A172356(n)²²)`
-/

namespace A172359.P17227531060996936647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((A172356 n ^ 2) ^ 2).toNat

end

end A172359.P17227531060996936647

/-!
# A172360: Triangle read by rows: T(n,k) = round(c(n)/(c(k)*c(n-k))) where c are partial products of a sequence defined in comments.

The programs for A172360, there is no canonical definition to state claims against.
-/

/-! ## A172360.P4317083895285857488

`A225859(A172359(n))`
-/

namespace A172360.P4317083895285857488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225859 (A172359 n).toNat

end

end A172360.P4317083895285857488

/-! ## A172360.P12350876223613674291

`A106177(A290656(n))^A051168(n)`
-/

namespace A172360.P12350876223613674291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A106177 (A290656 n).toNat : ℚ) ^ (A051168 n : ℤ)

end

end A172360.P12350876223613674291

/-! ## A172360.P4443552338293358930

`A038518(A077028(n)%A241322(3*(n+1)))`
-/

namespace A172360.P4443552338293358930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 (Int.tmod (A077028 n) (A241322 (3 * (n + 1)))).toNat

end

end A172360.P4443552338293358930

/-!
# A172361: Number of walks within N^2 (the first quadrant of Z^2) starting and ending at (0,0), and consisting of n steps taken from {(-1, -1), (-1, 0), (-1, 1), (0, -1), (0, 1), (1, -1), (1, 0), (1, 1)} (king moves).

The programs for A172361, there is no canonical definition to state claims against.
-/

/-! ## A172361.P4054902480700884308

`A396585(∑[n])`
-/

namespace A172361.P4054902480700884308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396585 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172361.P4054902480700884308

/-!
# A172362: a(n) = binomial(n+10, 10)*3^n.

The programs for A172362, the canonical program `A172362.P8125376625797125480` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172362 has offset 0).

The definition of A172362 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+10, 10)*3^n` (program `A172362.P8125376625797125480`, by `A172362.P8125376625797125480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172362.P9318129624743826789

`3^n*C(n+10, 10)`
-/

namespace A172362.P9318129624743826789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n * Nat.choose (n + 10) 10

end

end A172362.P9318129624743826789

namespace A172362

/-- `3^n*C(n+10, 10)` -/
def P9318129624743826789.Spec : Prop :=
  ∀ n, (P9318129624743826789.a n : ℤ) = A172362 n

theorem P9318129624743826789.correct : P9318129624743826789.Spec := by
  intro n
  simp only [A172362, Nat.add_sub_cancel, A172362.P9318129624743826789.a, A172362.P8125376625797125480.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A172362

/-! ## A172362.P8125376625797125480

`C(n+10, 10)*3^n`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172362

/-- `C(n+10, 10)*3^n` -/
def P8125376625797125480.Spec : Prop :=
  ∀ n, (P8125376625797125480.a n : ℤ) = A172362 n

theorem P8125376625797125480.correct : P8125376625797125480.Spec := by
  intro n
  simp only [A172362]

end A172362

/-! ## A172362.P13262371555632521875

`(30/n+3)*a(n-1)` with `a(0)=1`
-/

namespace A172362.P13262371555632521875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (30 / (n : ℚ) + 3) * a (n - 1)

end

end A172362.P13262371555632521875

namespace A172362

/-- `(30/n+3)*a(n-1)` -/
def P13262371555632521875.Spec : Prop :=
  ∀ n, P13262371555632521875.a n = (A172362 n : ℚ)

end A172362

/-! ## A172362.P15502465699905448342

`3^n*A001287(n)`
-/

namespace A172362.P15502465699905448342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A001287 (n + 10)

end

end A172362.P15502465699905448342

namespace A172362

/-- `3^n*A001287(n)` -/
def P15502465699905448342.Spec : Prop :=
  ∀ n, P15502465699905448342.a n = A172362 n

theorem P15502465699905448342.correct : P15502465699905448342.Spec := by
  intro n
  simp only [A172362, Nat.add_sub_cancel, A172362.P15502465699905448342.a, A172362.P8125376625797125480.a, A001287, A001287.P7309496825709961420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A172362

/-! ## A172362.P4360891538076554038

`3^n*∑[A000582(n+9)]`
-/

namespace A172362.P4360891538076554038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172362.P4360891538076554038

namespace A172362

/-- `3^n*∑[A000582(n+9)]` -/
def P4360891538076554038.Spec : Prop :=
  ∀ n, P4360891538076554038.a n = A172362 n

end A172362

/-! ## A172362.P2931899811566402560

`∑[A000582(n+9)]*A000244(n)`
-/

namespace A172362.P2931899811566402560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000582 (n + 9)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A172362.P2931899811566402560

namespace A172362

/-- `∑[A000582(n+9)]*A000244(n)` -/
def P2931899811566402560.Spec : Prop :=
  ∀ n, P2931899811566402560.a n = A172362 n

end A172362

/-! ## A172362.P18252212235033805898

`A001287(n)*A074324(2*n+1)`
-/

namespace A172362.P18252212235033805898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001287 (n + 10) * A074324 (2 * n + 1)

end

end A172362.P18252212235033805898

namespace A172362

/-- `A001287(n)*A074324(2*n+1)` -/
def P18252212235033805898.Spec : Prop :=
  ∀ n, P18252212235033805898.a n = A172362 n

end A172362

/-! ## A172362.P4606089471403175444

`∑[∑[A000581(n+8)]]*A000244(n)`
-/

namespace A172362.P4606089471403175444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A172362.P4606089471403175444

namespace A172362

/-- `∑[∑[A000581(n+8)]]*A000244(n)` -/
def P4606089471403175444.Spec : Prop :=
  ∀ n, P4606089471403175444.a n = A172362 n

end A172362

/-! ## A172362.P14641745189334475364

`A173124(n)/2^n`
-/

namespace A172362.P14641745189334475364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173124 n : ℚ) / (2 ^ n : ℚ)

end

end A172362.P14641745189334475364

namespace A172362

/-- `A173124(n)/2^n` -/
def P14641745189334475364.Spec : Prop :=
  ∀ n, P14641745189334475364.a n = (A172362 n : ℚ)

end A172362

/-! ## A172362.P8141308037861204597

`A196221(n)/3^n`
-/

namespace A172362.P8141308037861204597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196221 n : ℚ) / (3 ^ n : ℚ)

end

end A172362.P8141308037861204597

namespace A172362

/-- `A196221(n)/3^n` -/
def P8141308037861204597.Spec : Prop :=
  ∀ n, P8141308037861204597.a n = (A172362 n : ℚ)

end A172362

/-!
# A172363: Triangle read by rows: T(n,k) = round(c(n)/(c(k)*c(n-k))) where c are partial products of A003269.

The programs for A172363, there is no canonical definition to state claims against.
-/

/-! ## A172363.P9588017961069295272

`A156061(A172368(n))%A379722(2*(n+2))`
-/

namespace A172363.P9588017961069295272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156061 (A172368 n).toNat) (A379722 (2 * (n + 2)))

end

end A172363.P9588017961069295272

/-! ## A172363.P351146687073961655

`A053735(A172364(n))`
-/

namespace A172363.P351146687073961655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 (A172364 n).toNat

end

end A172363.P351146687073961655

/-! ## A172363.P6008328036830968293

`A162351(A172368(n))`
-/

namespace A172363.P6008328036830968293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (A172368 n).toNat

end

end A172363.P6008328036830968293

/-! ## A172363.P637687914463862926

`A371531(A172369(n))`
-/

namespace A172363.P637687914463862926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371531 (A172369 n).toNat

end

end A172363.P637687914463862926

/-! ## A172363.P13477874786768153344

`A055092(A230398(n+1))`
-/

namespace A172363.P13477874786768153344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055092 (A230398 (n + 1)).toNat

end

end A172363.P13477874786768153344

/-!
# A172365: List of primes p1, p2 and p3 such that 3*p1 - 2 = 2*p2 - 3 = p3.

The programs for A172365, there is no canonical definition to state claims against.
-/

/-! ## A172365.P10307338007972599710

`p?[A178832(A155156(n+1))]`
-/

namespace A172365.P10307338007972599710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178832 (A155156 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A172365.P10307338007972599710

/-! ## A172365.P1336963494496692257

`A005408(A194000(n)%A273814(n+1))`
-/

namespace A172365.P1336963494496692257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.tmod (A194000 n) (A273814 (n + 1))).toNat

end

end A172365.P1336963494496692257

/-! ## A172365.P12551609817332496756

`A194000(n)*A319954(A061134(n+1))+1`
-/

namespace A172365.P12551609817332496756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194000 n * A319954 (A061134 (n + 1)).toNat + 1

end

end A172365.P12551609817332496756

/-! ## A172365.P17984382215064994404

`A194000(A056525(n+1)-1)+A194000(n)+1`
-/

namespace A172365.P17984382215064994404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194000 (A056525 (n + 1) - 1).toNat + (A194000 n + 1)

end

end A172365.P17984382215064994404

/-!
# A172366: Number of partitions of prime(n) into the sum of two semiprimes.

The programs for A172366, there is no canonical definition to state claims against.
-/

/-! ## A172366.P9015897810903323089

`A072931(A000040(n+1))`
-/

namespace A172366.P9015897810903323089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A000040 (n + 1)).toNat

end

end A172366.P9015897810903323089

/-! ## A172366.P11064905161197534059

`A302301(p?[comp[n²]])`
-/

namespace A172366.P11064905161197534059
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A172366.P11064905161197534059

/-! ## A172366.P17963792115586552552

`A072931(A006005(n+1))`
-/

namespace A172366.P17963792115586552552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A006005 (n + 1)).toNat

end

end A172366.P17963792115586552552

/-! ## A172366.P16557474577493884169

`A072931(A161847(n+1))`
-/

namespace A172366.P16557474577493884169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A161847 (n + 1)).toNat

end

end A172366.P16557474577493884169

/-! ## A172366.P2918452398986762914

`A072931(A171577(n+1))`
-/

namespace A172366.P2918452398986762914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A171577 (n + 1)).toNat

end

end A172366.P2918452398986762914

/-! ## A172366.P11879648341999285282

`A072931(A008578(n+2))`
-/

namespace A172366.P11879648341999285282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A008578 (n + 2)).toNat

end

end A172366.P11879648341999285282

/-! ## A172366.P2807617509088681456

`A072931(A075643(n+2))`
-/

namespace A172366.P2807617509088681456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A075643 (n + 2)).toNat

end

end A172366.P2807617509088681456

/-! ## A172366.P1003778259141666436

`A072931(A116974(n+2))`
-/

namespace A172366.P1003778259141666436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A116974 (n + 2)).toNat

end

end A172366.P1003778259141666436

/-! ## A172366.P4423594842392113753

`A072931(A175787(n+2))`
-/

namespace A172366.P4423594842392113753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A175787 (n + 2)).toNat

end

end A172366.P4423594842392113753

/-! ## A172366.P1910459421543346318

`A072931(record[A006530(n+2)])`
-/

namespace A172366.P1910459421543346318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172366.P1910459421543346318

/-! ## A172366.P8197452334617310181

`A072931(record[A014963(n+2)])`
-/

namespace A172366.P8197452334617310181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172366.P8197452334617310181

/-! ## A172366.P8125763927165593418

`A072931(record[A020639(n+2)])`
-/

namespace A172366.P8125763927165593418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172366.P8125763927165593418

/-! ## A172366.P692764908897709282

`A088183(record[A006530(n+2)])`
-/

namespace A172366.P692764908897709282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088183 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172366.P692764908897709282

/-! ## A172366.P824270243731283281

`A088183(record[A020639(n+2)])`
-/

namespace A172366.P824270243731283281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088183 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172366.P824270243731283281

/-! ## A172366.P15348645827979885958

`A302301(record[A006530(n+2)])`
-/

namespace A172366.P15348645827979885958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172366.P15348645827979885958

/-! ## A172366.P4760045905136944363

`A302301(record[A014963(n+2)])`
-/

namespace A172366.P4760045905136944363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172366.P4760045905136944363

/-! ## A172366.P14508107965419111798

`A302301(record[A020639(n+2)])`
-/

namespace A172366.P14508107965419111798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172366.P14508107965419111798

/-! ## A172366.P5553024822723753888

`A072931(A100484(n+1)/2)`
-/

namespace A172366.P5553024822723753888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A172366.P5553024822723753888

/-! ## A172366.P14722883548659298079

`A302301(A073582(n+1)/2)`
-/

namespace A172366.P14722883548659298079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (SequenceMachineLib.roundAway ((A073582 (n + 1) : ℚ) / 2)).toNat

end

end A172366.P14722883548659298079

/-! ## A172366.P4862283688227090103

`A072931(A001747(n+2)/2)`
-/

namespace A172366.P4862283688227090103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (SequenceMachineLib.roundAway ((A001747 (n + 2) : ℚ) / 2)).toNat

end

end A172366.P4862283688227090103

/-!
# A172367: Numbers k > 0 such that k+4 is a prime.

The programs for A172367, the canonical program `A172367.P6320412010058866458` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172367 has offset 1).

The definition of A172367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172367.P6320412010058866458

`A000040(n+3)-4`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A172367

/-- `A000040(n+3)-4` -/
def P6320412010058866458.Spec : Prop :=
  ∀ n, P6320412010058866458.a n = A172367 (n + 1)

theorem P6320412010058866458.correct : P6320412010058866458.Spec := by
  intro n
  simp only [A172367, Nat.add_sub_cancel]

end A172367

/-! ## A172367.P6271826947088222473

`p?[2*n+5]-4`
-/

namespace A172367.P6271826947088222473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 4

end

end A172367.P6271826947088222473

namespace A172367

/-- `p?[2*n+5]-4` -/
def P6271826947088222473.Spec : Prop :=
  ∀ n, P6271826947088222473.a n = A172367 (n + 1)

end A172367

/-! ## A172367.P1126534460719732673

`A173064(n+3)+1`
-/

namespace A172367.P1126534460719732673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173064 (n + 3) + 1

end

end A172367.P1126534460719732673

namespace A172367

/-- `A173064(n+3)+1` -/
def P1126534460719732673.Spec : Prop :=
  ∀ n, P1126534460719732673.a n = A172367 (n + 1)

theorem P1126534460719732673.correct : P1126534460719732673.Spec := by
  intro n
  simp only [A172367, Nat.add_sub_cancel, A172367.P1126534460719732673.a, A172367.P6320412010058866458.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A173064, A173064.P8849100773616818799.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172367

/-! ## A172367.P16172712361361824613

`A215848(n+1)-4`
-/

namespace A172367.P16172712361361824613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - 4

end

end A172367.P16172712361361824613

namespace A172367

/-- `A215848(n+1)-4` -/
def P16172712361361824613.Spec : Prop :=
  ∀ n, P16172712361361824613.a n = A172367 (n + 1)

end A172367

/-! ## A172367.P8924250453762700655

`A156037(n+3)-3`
-/

namespace A172367.P8924250453762700655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (n + 3) - 3

end

end A172367.P8924250453762700655

namespace A172367

/-- `A156037(n+3)-3` -/
def P8924250453762700655.Spec : Prop :=
  ∀ n, P8924250453762700655.a n = A172367 (n + 1)

end A172367

/-! ## A172367.P7273504027614318220

`A055670(n+3)-5`
-/

namespace A172367.P7273504027614318220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (n + 3) - 5

end

end A172367.P7273504027614318220

namespace A172367

/-- `A055670(n+3)-5` -/
def P7273504027614318220.Spec : Prop :=
  ∀ n, P7273504027614318220.a n = A172367 (n + 1)

end A172367

/-! ## A172367.P13620868072448201240

`∑[A001223(n+2)]-1`
-/

namespace A172367.P13620868072448201240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A172367.P13620868072448201240

namespace A172367

/-- `∑[A001223(n+2)]-1` -/
def P13620868072448201240.Spec : Prop :=
  ∀ n, P13620868072448201240.a n = A172367 (n + 1)

end A172367

/-! ## A172367.P16439414481326516278

`Δ[A007504(n+2)]-4`
-/

namespace A172367.P16439414481326516278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 4

end

end A172367.P16439414481326516278

namespace A172367

/-- `Δ[A007504(n+2)]-4` -/
def P16439414481326516278.Spec : Prop :=
  ∀ n, P16439414481326516278.a n = A172367 (n + 1)

end A172367

/-! ## A172367.P18391566864527206698

`∑[A176246(n+1)]+n`
-/

namespace A172367.P18391566864527206698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A172367.P18391566864527206698

namespace A172367

/-- `∑[A176246(n+1)]+n` -/
def P18391566864527206698.Spec : Prop :=
  ∀ n, P18391566864527206698.a n = A172367 (n + 1)

end A172367

/-! ## A172367.P17557712455860724273

`2*A089038(n+1)+1`
-/

namespace A172367.P17557712455860724273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089038 (n + 1) + 1

end

end A172367.P17557712455860724273

namespace A172367

/-- `2*A089038(n+1)+1` -/
def P17557712455860724273.Spec : Prop :=
  ∀ n, P17557712455860724273.a n = A172367 (n + 1)

end A172367

/-! ## A172367.P11118751780947964586

`∑[∑[A036263(n+1)]]+n`
-/

namespace A172367.P11118751780947964586
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036263 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A172367.P11118751780947964586

namespace A172367

/-- `∑[∑[A036263(n+1)]]+n` -/
def P11118751780947964586.Spec : Prop :=
  ∀ n, P11118751780947964586.a n = A172367 (n + 1)

end A172367

/-! ## A172367.P1617177363336720923

`A004139(n+1)-A040002(n)`
-/

namespace A172367.P1617177363336720923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1) - A040002 n

end

end A172367.P1617177363336720923

namespace A172367

/-- `A004139(n+1)-A040002(n)` -/
def P1617177363336720923.Spec : Prop :=
  ∀ n, P1617177363336720923.a n = A172367 (n + 1)

end A172367

/-! ## A172367.P2091274410675546285

`A176246(n+1)+A154115(n+1)`
-/

namespace A172367.P2091274410675546285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176246 (n + 1) + A154115 (n + 1)

end

end A172367.P2091274410675546285

namespace A172367

/-- `A176246(n+1)+A154115(n+1)` -/
def P2091274410675546285.Spec : Prop :=
  ∀ n, P2091274410675546285.a n = A172367 (n + 1)

theorem P2091274410675546285.correct : P2091274410675546285.Spec := by
  intro n
  simp only [A172367, Nat.add_sub_cancel, A172367.P2091274410675546285.a, A172367.P6320412010058866458.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A154115, A154115.P220062109648616098.a, A176246, A176246.P14955082673946823167.a, A001223, A001223.P5034056745985311719.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172367

/-! ## A172367.P16583232777129830984

`A245034(n+3)/A215848(n+1)`
-/

namespace A172367.P16583232777129830984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245034 (n + 3) : ℚ) / (A215848 (n + 1) : ℚ)

end

end A172367.P16583232777129830984

namespace A172367

/-- `A245034(n+3)/A215848(n+1)` -/
def P16583232777129830984.Spec : Prop :=
  ∀ n, P16583232777129830984.a n = (A172367 (n + 1) : ℚ)

end A172367

/-! ## A172367.P8438801839598999787

`A118538(n+2)+2`
-/

namespace A172367.P8438801839598999787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118538 (n + 2) + 2

end

end A172367.P8438801839598999787

namespace A172367

/-- `A118538(n+2)+2` -/
def P8438801839598999787.Spec : Prop :=
  ∀ n, P8438801839598999787.a n = A172367 (n + 1)

theorem P8438801839598999787.correct : P8438801839598999787.Spec := by
  intro n
  simp only [A172367, Nat.add_sub_cancel, A172367.P8438801839598999787.a, A172367.P6320412010058866458.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A118538, A118538.P16184586288289674409.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172367

/-! ## A172367.P10591719537464846120

`A154115(n+2)-1`
-/

namespace A172367.P10591719537464846120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154115 (n + 2) - 1

end

end A172367.P10591719537464846120

namespace A172367

/-- `A154115(n+2)-1` -/
def P10591719537464846120.Spec : Prop :=
  ∀ n, P10591719537464846120.a n = A172367 (n + 1)

theorem P10591719537464846120.correct : P10591719537464846120.Spec := by
  intro n
  simp only [A172367, Nat.add_sub_cancel, A172367.P10591719537464846120.a, A172367.P6320412010058866458.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A154115, A154115.P220062109648616098.a, A086801, A086801.P17699144881820784956.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172367

/-! ## A172367.P17984076017539827581

`A165972(n+2)-3`
-/

namespace A172367.P17984076017539827581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165972 (n + 2) - 3

end

end A172367.P17984076017539827581

namespace A172367

/-- `A165972(n+2)-3` -/
def P17984076017539827581.Spec : Prop :=
  ∀ n, P17984076017539827581.a n = A172367 (n + 1)

end A172367

/-! ## A172367.P8236123377974205914

`A045344(n+2)-4`
-/

namespace A172367.P8236123377974205914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2) - 4

end

end A172367.P8236123377974205914

namespace A172367

/-- `A045344(n+2)-4` -/
def P8236123377974205914.Spec : Prop :=
  ∀ n, P8236123377974205914.a n = A172367 (n + 1)

end A172367

/-! ## A172367.P14497962811785817985

`A065091(n+2)-4`
-/

namespace A172367.P14497962811785817985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - 4

end

end A172367.P14497962811785817985

namespace A172367

/-- `A065091(n+2)-4` -/
def P14497962811785817985.Spec : Prop :=
  ∀ n, P14497962811785817985.a n = A172367 (n + 1)

theorem P14497962811785817985.correct : P14497962811785817985.Spec := by
  intro n
  simp only [A172367, Nat.add_sub_cancel, A172367.P14497962811785817985.a, A172367.P6320412010058866458.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A065091, A065091.P6971844946592549357.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A172367

/-! ## A172367.P12444030458717828917

`A140475(n+2)-4`
-/

namespace A172367.P12444030458717828917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 2) - 4

end

end A172367.P12444030458717828917

namespace A172367

/-- `A140475(n+2)-4` -/
def P12444030458717828917.Spec : Prop :=
  ∀ n, P12444030458717828917.a n = A172367 (n + 1)

end A172367

/-!
# A172368: Triangle read by rows: T(n,k) = round(c(n)/(c(k)*c(n-k))) where c is a sequence defined in comments.

The programs for A172368, there is no canonical definition to state claims against.
-/

/-! ## A172368.P12238092202403141641

`A196393(A172369(n))`
-/

namespace A172368.P12238092202403141641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196393 (A172369 n).toNat

end

end A172368.P12238092202403141641

/-!
# A172370: Mirrored triangle A120072 read by rows.

The programs for A172370, the canonical program `A172370.P12160375368130657257` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172370 has offset 2).

The definition of A172370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A172370.P12160375368130657257

`A120072(∑[char[∑[n]]]²-n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A172370

/-- `A120072(∑[char[∑[n]]]²-n+1)` -/
def P12160375368130657257.Spec : Prop :=
  ∀ n, P12160375368130657257.a n = A172370 (n + 2)

theorem P12160375368130657257.correct : P12160375368130657257.Spec := by
  intro n
  simp only [A172370, Nat.add_sub_cancel]

end A172370

/-! ## A172370.P10773861388296150010

`A061035(comp[∑[n]]+1)`
-/

namespace A172370.P10773861388296150010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061035 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A172370.P10773861388296150010

namespace A172370

/-- `A061035(comp[∑[n]]+1)` -/
def P10773861388296150010.Spec : Prop :=
  ∀ n, P10773861388296150010.a n = A172370 (n + 2)

end A172370

/-! ## A172370.P4579487612092154994

`A175779(eq[0, A103451(n)])`
-/

namespace A172370.P4579487612092154994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172370.P4579487612092154994

namespace A172370

/-- `A175779(eq[0, A103451(n)])` -/
def P4579487612092154994.Spec : Prop :=
  ∀ n, P4579487612092154994.a n = A172370 (n + 2)

end A172370

/-! ## A172370.P10189171026810645291

`A175779(lt[1, A007318(n)])`
-/

namespace A172370.P10189171026810645291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A172370.P10189171026810645291

namespace A172370

/-- `A175779(lt[1, A007318(n)])` -/
def P10189171026810645291.Spec : Prop :=
  ∀ n, P10189171026810645291.a n = A172370 (n + 2)

end A172370

/-! ## A172370.P11218571937324609678

`A175779(lt[A103451(n), 1])`
-/

namespace A172370.P11218571937324609678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A172370.P11218571937324609678

namespace A172370

/-- `A175779(lt[A103451(n), 1])` -/
def P11218571937324609678.Spec : Prop :=
  ∀ n, P11218571937324609678.a n = A172370 (n + 2)

end A172370

/-! ## A172370.P16729834423857668969

`A175779(eq[n, A316669(n+1)])`
-/

namespace A172370.P16729834423857668969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316669 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A172370.P16729834423857668969

namespace A172370

/-- `A175779(eq[n, A316669(n+1)])` -/
def P16729834423857668969.Spec : Prop :=
  ∀ n, P16729834423857668969.a n = A172370 (n + 2)

end A172370

/-! ## A172370.P15458370151503802291

`A175779(A007401(comp[∑[n]]+1))`
-/

namespace A172370.P15458370151503802291
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (A007401 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)).toNat

end

end A172370.P15458370151503802291

namespace A172370

/-- `A175779(A007401(comp[∑[n]]+1))` -/
def P15458370151503802291.Spec : Prop :=
  ∀ n, P15458370151503802291.a n = A172370 (n + 2)

end A172370

/-! ## A172370.P14516400783860325216

`A175779(2*A014132(n+1)-n)`
-/

namespace A172370.P14516400783860325216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (2 * A014132 (n + 1) - (n : ℤ)).toNat

end

end A172370.P14516400783860325216

namespace A172370

/-- `A175779(2*A014132(n+1)-n)` -/
def P14516400783860325216.Spec : Prop :=
  ∀ n, P14516400783860325216.a n = A172370 (n + 2)

end A172370

/-! ## A172370.P24044586537239314

`A175779(A140978(n+1)-A061579(n))`
-/

namespace A172370.P24044586537239314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (A140978 (n + 1) - A061579 n).toNat

end

end A172370.P24044586537239314

namespace A172370

/-- `A175779(A140978(n+1)-A061579(n))` -/
def P24044586537239314.Spec : Prop :=
  ∀ n, P24044586537239314.a n = A172370 (n + 2)

end A172370

/-! ## A172370.P10594148041592234644

`A175779(A014132(n+1)+A014132(n+1)-n)`
-/

namespace A172370.P10594148041592234644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175779 (A014132 (n + 1) + (A014132 (n + 1) - (n : ℤ))).toNat

end

end A172370.P10594148041592234644

namespace A172370

/-- `A175779(A014132(n+1)+A014132(n+1)-n)` -/
def P10594148041592234644.Spec : Prop :=
  ∀ n, P10594148041592234644.a n = A172370 (n + 2)

end A172370

/-!
# A172371: Antidiagonal triangle T(n, k) = t(k, n-k+1) where the square array t(n,k) is defined by t(n, k) = k*t(n-2, k) + t(n-3, k), t(0, k) = 0, and t(1, k) = t(2, k) = 1, read by rows.

The programs for A172371, there is no canonical definition to state claims against.
-/

/-! ## A172371.P9248797136311889356

`A124778(A109613(n))*A192062(n)`
-/

namespace A172371.P9248797136311889356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124778 (A109613 n).toNat * A192062 n

end

end A172371.P9248797136311889356

/-! ## A172371.P18240285541052562967

`lcm(A094267(A036297(n)), A192062(n))`
-/

namespace A172371.P18240285541052562967
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A094267 (A036297 n).toNat) (A192062 n)

end

end A172371.P18240285541052562967

/-! ## A172371.P3450834540948922391

`gcd(A109437(n), A124778(n))*A192062(n)`
-/

namespace A172371.P3450834540948922391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A109437 n) (A124778 n) : ℤ) * A192062 n

end

end A172371.P3450834540948922391

/-! ## A172371.P5415455940781534162

`A316269(n+2)/A191971(n)*A124778(A109613(n))`
-/

namespace A172371.P5415455940781534162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316269 (n + 2) : ℚ) / (A191971 n : ℚ) * (A124778 (A109613 n).toNat : ℚ)

end

end A172371.P5415455940781534162

/-!
# A172372: Least number k such that the n-th prime not dividing 10 (A004139(n)) divides the repunit (10^k-1)/9.

The programs for A172372, there is no canonical definition to state claims against.
-/

/-! ## A172372.P13099643630593749412

`A071126(ceil(sqrt(A028878(n))))`
-/

namespace A172372.P13099643630593749412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071126 ⌈Real.sqrt (A028878 n : ℝ)⌉.toNat

end

end A172372.P13099643630593749412

/-! ## A172372.P13922732063625013816

`A048595(n+3)+A000038(n)`
-/

namespace A172372.P13922732063625013816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (n + 3) + A000038 n

end

end A172372.P13922732063625013816

/-! ## A172372.P3986952480106307912

`A071126(3-A000007(n)+n)`
-/

namespace A172372.P3986952480106307912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071126 (3 - A000007 n + (n : ℤ)).toNat

end

end A172372.P3986952480106307912

/-! ## A172372.P10510982694524831982

`A048595(n+3)+A000122(A006530(n+1))`
-/

namespace A172372.P10510982694524831982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (n + 3) + A000122 (A006530 (n + 1)).toNat

end

end A172372.P10510982694524831982

/-! ## A172372.P13111205366952700491

`A048595(n+3)+A000122(A105560(n+1))`
-/

namespace A172372.P13111205366952700491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (n + 3) + A000122 (A105560 (n + 1)).toNat

end

end A172372.P13111205366952700491

/-! ## A172372.P11275041492818451362

`A339579(A031879(n+1)+1)+A002371(n+3)`
-/

namespace A172372.P11275041492818451362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339579 (A031879 (n + 1) + 1).toNat + A002371 (n + 3)

end

end A172372.P11275041492818451362

/-! ## A172372.P10142592306811301754

`A084681(A004139(n+1))`
-/

namespace A172372.P10142592306811301754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A004139 (n + 1)).toNat

end

end A172372.P10142592306811301754

/-! ## A172372.P14346373618674480906

`A084681(A045319(n+2))`
-/

namespace A172372.P14346373618674480906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (A045319 (n + 2)).toNat

end

end A172372.P14346373618674480906

/-! ## A172372.P7936946567270092013

`A054710(record[A064216(n+5)])`
-/

namespace A172372.P7936946567270092013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064216 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054710 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172372.P7936946567270092013

/-! ## A172372.P9432142648495210166

`A084681(record[A006530(n+6)])`
-/

namespace A172372.P9432142648495210166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084681 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A172372.P9432142648495210166

/-! ## A172372.P12091502894923070132

`A007732(9*A004139(n+1))`
-/

namespace A172372.P12091502894923070132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007732 (9 * A004139 (n + 1)).toNat

end

end A172372.P12091502894923070132

/-! ## A172372.P4448757085310438208

`A071126(A002024(∑[n+3]))`
-/

namespace A172372.P4448757085310438208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071126 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A172372.P4448757085310438208

/-! ## A172372.P12262969581942932806

`A048595(n+3)+A000122(n²+1)`
-/

namespace A172372.P12262969581942932806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048595 (n + 3) + A000122 (n ^ 2 + 1)

end

end A172372.P12262969581942932806

/-!
# A172373: Triangle T(n, k) = A010048(n, k)*A010048(n, k-1)/Fibonacci(n), read by rows.

The programs for A172373, there is no canonical definition to state claims against.
-/

/-! ## A172373.P2037863656050886837

`A004525(A001285(n)*A174411(n))`
-/

namespace A172373.P2037863656050886837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A001285 n * A174411 n).toNat

end

end A172373.P2037863656050886837

/-! ## A172373.P14695469241155181217

`A026741(A001285(n)*A174411(n))`
-/

namespace A172373.P14695469241155181217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A001285 n * A174411 n).toNat

end

end A172373.P14695469241155181217

/-! ## A172373.P8397921339648106848

`A032742(A001285(n)*A174411(n))`
-/

namespace A172373.P8397921339648106848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A001285 n * A174411 n).toNat

end

end A172373.P8397921339648106848

/-! ## A172373.P14224970999703674040

`A028310(A174411(n)/A140356(n))`
-/

namespace A172373.P14224970999703674040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A174411 n : ℚ) / (A140356 n : ℚ))).toNat

end

end A172373.P14224970999703674040

/-! ## A172373.P5640419816633659682

`A004526(A001285(n)*A174411(n)+1)`
-/

namespace A172373.P5640419816633659682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A001285 n * A174411 n + 1).toNat

end

end A172373.P5640419816633659682

/-!
# A172375: Triangle T(n, k, q) = c(n-1, q)*c(n, q)/(c(k-1, q)^2*c(n-k, q)*c(n-k+1, q)*f(k, q)), where c(n, q) = Product_{j=1..n} f(j, q), f(n, q) = q*(f(n-1, q) + f(n-2, q)), f(0, q) = 0, f(1, q) = 1, and q = 2, read by rows.

The programs for A172375, there is no canonical definition to state claims against.
-/

/-! ## A172375.P12959849234780957458

`A228354(A157180(n))`
-/

namespace A172375.P12959849234780957458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228354 (A157180 n).toNat

end

end A172375.P12959849234780957458

/-! ## A172375.P11562639319170251423

`A211023(A022181(n))+1`
-/

namespace A172375.P11562639319170251423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211023 (A022181 n).toNat + 1

end

end A172375.P11562639319170251423

/-! ## A172375.P2236725720105359192

`A033099(8^A007318(n))`
-/

namespace A172375.P2236725720105359192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033099 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A007318 n : ℤ))).toNat

end

end A172375.P2236725720105359192

/-! ## A172375.P11490986256573093692

`A033099(8^A216236(n))`
-/

namespace A172375.P11490986256573093692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033099 (SequenceMachineLib.roundAway ((8 : ℚ) ^ (A216236 n : ℤ))).toNat

end

end A172375.P11490986256573093692

/-! ## A172375.P6193349508652566547

`∑{d}[A346765(A157219(n)), #]`
-/

namespace A172375.P6193349508652566547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346765 (A157219 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A172375.P6193349508652566547

/-!
# A172376: Triangle T(n, k, q) = c(n-1, q)*c(n, q)/(c(k-1, q)^2*c(n-k, q)*c(n-k+1, q)*f(k, q)), where c(n, q) = Product_{j=1..n} f(j, q), f(n, q) = q*(f(n-1, q) + f(n-2, q)), f(0, q) = 0, f(1, q) = 1, and q = 3, read by rows.

The programs for A172376, there is no canonical definition to state claims against.
-/

/-! ## A172376.P12205719961741914332

`A091257(19^A014473(n))`
-/

namespace A172376.P12205719961741914332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091257 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A014473 n : ℤ))).toNat

end

end A172376.P12205719961741914332

/-! ## A172376.P4744303677877470988

`A091257(19^A048720(n))`
-/

namespace A172376.P4744303677877470988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091257 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A048720 n : ℤ))).toNat

end

end A172376.P4744303677877470988

/-! ## A172376.P5298180601468610715

`A091257(19^A185651(n))`
-/

namespace A172376.P5298180601468610715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091257 (SequenceMachineLib.roundAway ((19 : ℚ) ^ (A185651 n : ℤ))).toNat

end

end A172376.P5298180601468610715

/-! ## A172376.P12797550040995789038

`A002088(A006842(2^n)!)`
-/

namespace A172376.P12797550040995789038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (Nat.factorial (A006842 (2 ^ n)).toNat)

end

end A172376.P12797550040995789038

/-! ## A172376.P1153204626936611460

`A249163(A361391(n)+A327143(n+1))`
-/

namespace A172376.P1153204626936611460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249163 (A361391 n + A327143 (n + 1)).toNat

end

end A172376.P1153204626936611460

/-!
# A172377: Second beta integer combination triangle of a Narayana type: a=2:f(n, a) = a*f(n - 1, a) + f(n - 2, a);c(n,a)=If[n == 0, 1, Product[f(i, a), {i, 1, n}]];w(n,m,q)=c(n - 1, q)*c(n, q)/(c(m - 1, q)*c(n - m, q)*c(m - 1, q)*c(n - m + 1, q)*f(m, q)).

The programs for A172377, there is no canonical definition to state claims against.
-/

/-! ## A172377.P6917400123098900189

`A026249(A173584(n))`
-/

namespace A172377.P6917400123098900189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026249 (A173584 n).toNat

end

end A172377.P6917400123098900189

/-! ## A172377.P16117892599724994364

`A049472(A173584(n)+1)`
-/

namespace A172377.P16117892599724994364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A173584 n + 1).toNat

end

end A172377.P16117892599724994364

/-! ## A172377.P14946777531715850711

`A248183(A173584(n)+2)`
-/

namespace A172377.P14946777531715850711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248183 (A173584 n + 2).toNat

end

end A172377.P14946777531715850711

/-! ## A172377.P7464338887106060670

`A049474(A173584(n)-char[4])`
-/

namespace A172377.P7464338887106060670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (A173584 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A172377.P7464338887106060670

/-! ## A172377.P1793249177627315664

`A049474(or(char[1], A173584(n)))`
-/

namespace A172377.P1793249177627315664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049474 (Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A173584 n)).toNat

end

end A172377.P1793249177627315664

/-!
# A172378: Second beta integer combination triangle of a Narayana type: a=3:f(n, a) = a*f(n - 1, a) + f(n - 2, a);c(n,a)=If[n == 0, 1, Product[f(i, a), {i, 1, n}]];w(n,m,q)=c(n - 1, q)*c(n, q)/(c(m - 1, q)*c(n - m, q)*c(m - 1, q)*c(n - m + 1, q)*f(m, q)).

The programs for A172378, there is no canonical definition to state claims against.
-/

/-! ## A172378.P14648057123086850881

`A172339(xor(4, A034801(n)))`
-/

namespace A172378.P14648057123086850881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172339 (Int.xor 4 (A034801 n)).toNat

end

end A172378.P14648057123086850881

/-! ## A172378.P3544316116860229948

`A172339(lcm(A004247(n), A008867(n+2)))`
-/

namespace A172378.P3544316116860229948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172339 (Int.lcm (A004247 n) (A008867 (n + 2)))

end

end A172378.P3544316116860229948

/-! ## A172378.P7202568839301184236

`A172339(A008867(n+2)%A131753(n+1))`
-/

namespace A172378.P7202568839301184236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172339 (Int.tmod (A008867 (n + 2)) (A131753 (n + 1))).toNat

end

end A172378.P7202568839301184236

/-! ## A172378.P11380792625906900840

`A305854(A116943(∑[n]))`
-/

namespace A172378.P11380792625906900840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305854 (A116943 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A172378.P11380792625906900840

/-!
# A172379: Partial list of labels attached to the quiver of the cluster algebra A_4^4.

The programs for A172379, there is no canonical definition to state claims against.
-/

/-! ## A172379.P15738813194088139502

`A048794(A043684(n+1)^A146874(n+1))`
-/

namespace A172379.P15738813194088139502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (SequenceMachineLib.roundAway ((A043684 (n + 1) : ℚ) ^ (A146874 (n + 1) : ℤ))).toNat

end

end A172379.P15738813194088139502

/-!
# A172380: Eigentriangle of Catalan triangle A033184.

The programs for A172380, there is no canonical definition to state claims against.
-/

/-! ## A172380.P18321223570849396902

`A338210(A144324(n+1))+A173050(n)`
-/

namespace A172380.P18321223570849396902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338210 (A144324 (n + 1)).toNat + A173050 n

end

end A172380.P18321223570849396902

/-! ## A172380.P14386138430845696940

`A309785(A331562(n))+A173050(n)`
-/

namespace A172380.P14386138430845696940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309785 (A331562 n).toNat + A173050 n

end

end A172380.P14386138430845696940

/-! ## A172380.P16749352893484192127

`A072088(A173050(n))`
-/

namespace A172380.P16749352893484192127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A173050 n).toNat

end

end A172380.P16749352893484192127

/-! ## A172380.P7842699971525369743

`A000194(A173050(n)²)`
-/

namespace A172380.P7842699971525369743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A173050 n ^ 2).toNat

end

end A172380.P7842699971525369743

/-!
# A172381: Triangle whose inverse has production matrix with general term (-1)^(n-k+1)*C(k+1, n-k+1).

The programs for A172381, there is no canonical definition to state claims against.
-/

/-! ## A172381.P1589802163378653020

`A172380(comp[∑[n]])`
-/

namespace A172381.P1589802163378653020
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172380 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A172381.P1589802163378653020

/-! ## A172381.P7574175894760952237

`or(char[1], A172380(A014132(n+1)))`
-/

namespace A172381.P7574175894760952237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A172380 (A014132 (n + 1)).toNat)

end

end A172381.P7574175894760952237

/-! ## A172381.P11088375301171197709

`Δ[A172380(A014132(n))+a(n-1)]` with `a(0)=0`
-/

namespace A172381.P11088375301171197709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A172380 (A014132 n).toNat + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A172381.P11088375301171197709

/-! ## A172381.P2089081156791477601

`A172380(A014132(n+1))%A007283(n)`
-/

namespace A172381.P2089081156791477601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A172380 (A014132 (n + 1)).toNat) (A007283 n)

end

end A172381.P2089081156791477601

/-! ## A172381.P10874247593979437758

`A007318(∑[n])*A172380(A014132(n+1))`
-/

namespace A172381.P10874247593979437758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A172380 (A014132 (n + 1)).toNat

end

end A172381.P10874247593979437758

/-! ## A172381.P9283547650158259419

`A172380(A014132(n+1))^(A000007(n)+1)`
-/

namespace A172381.P9283547650158259419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172380 (A014132 (n + 1)).toNat : ℚ) ^ (A000007 n + 1 : ℤ)

end

end A172381.P9283547650158259419

/-! ## A172381.P12753677752773986186

`A172380(A014132(n+1))+A008683(8*(n+1))`
-/

namespace A172381.P12753677752773986186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172380 (A014132 (n + 1)).toNat + A008683 (8 * (n + 1))

end

end A172381.P12753677752773986186

/-! ## A172381.P4649939662788933060

`A000041(C(2, n+2))*A172380(A014132(n+1))`
-/

namespace A172381.P4649939662788933060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A172380 (A014132 (n + 1)).toNat

end

end A172381.P4649939662788933060

/-! ## A172381.P7224035828463002559

`and(1, A000032(n))!*A172380(A003056(n)+2+n)`
-/

namespace A172381.P7224035828463002559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000032 n)).toNat : ℤ) * A172380 (A003056 n + 2 + (n : ℤ)).toNat

end

end A172381.P7224035828463002559

/-! ## A172381.P1337929777314299460

`A172380(A003056(n)+2+n)+A008683(8*(n+1))`
-/

namespace A172381.P1337929777314299460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172380 (A003056 n + 2 + (n : ℤ)).toNat + A008683 (8 * (n + 1))

end

end A172381.P1337929777314299460

/-!
# A172382: Diagonal sums of number triangle A172380.

The programs for A172382, there is no canonical definition to state claims against.
-/

/-! ## A172382.P3625423965918152932

`A081753(A148805(n)+n)`
-/

namespace A172382.P3625423965918152932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A148805 n + (n : ℤ)).toNat

end

end A172382.P3625423965918152932

/-! ## A172382.P14012351682610430148

`A081753(A148794(n)+A000217(n))`
-/

namespace A172382.P14012351682610430148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A148794 n + A000217 n).toNat

end

end A172382.P14012351682610430148

/-!
# A172383: a(0)=1, otherwise a(n) = Sum_{k=0..floor((n-1)/2)} binomial(n-k-1,k)*a(n-1-2*k).

The programs for A172383, there is no canonical definition to state claims against.
-/

/-! ## A172383.P17726681727903288758

`A360247(A193050(n))`
-/

namespace A172383.P17726681727903288758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (A193050 n).toNat

end

end A172383.P17726681727903288758

/-! ## A172383.P3839637392517065540

`A330697(A239555(n))`
-/

namespace A172383.P3839637392517065540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330697 (A239555 n).toNat

end

end A172383.P3839637392517065540

/-! ## A172383.P18247840914146370083

`A261104(A341378(n))`
-/

namespace A172383.P18247840914146370083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (A341378 n).toNat

end

end A172383.P18247840914146370083

/-! ## A172383.P18330629799734641276

`A360247(A006196(n+1))`
-/

namespace A172383.P18330629799734641276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (A006196 (n + 1)).toNat

end

end A172383.P18330629799734641276

/-! ## A172383.P14086501350514545807

`A360247(A089796(n+1))`
-/

namespace A172383.P14086501350514545807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360247 (A089796 (n + 1)).toNat

end

end A172383.P14086501350514545807

/-!
# A172384: Partial sums of A048895.

The programs for A172384, there is no canonical definition to state claims against.
-/

/-! ## A172384.P15669944773056168960

`∑[A048895(n+1)]`
-/

namespace A172384.P15669944773056168960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172384.P15669944773056168960

/-! ## A172384.P8310670243677076145

`∑[record[A048895(A038568(n))]]`
-/

namespace A172384.P8310670243677076145
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048895 (A038568 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172384.P8310670243677076145

/-! ## A172384.P13067673648696883385

`∑[record[A048895(A038569(n))]]`
-/

namespace A172384.P13067673648696883385
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048895 (A038569 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172384.P13067673648696883385

/-! ## A172384.P11410968327748555188

`∑[record[A048895(A065648(n))]]`
-/

namespace A172384.P11410968327748555188
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048895 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172384.P11410968327748555188

/-! ## A172384.P5156820948400202404

`∑[record[A048895(A109785(n))]]`
-/

namespace A172384.P5156820948400202404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048895 (A109785 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172384.P5156820948400202404

/-!
# A172387: G.f. satisfies: A(x) = x + x*Sum_{n>=1} G_{n}(x)^n, where G_{n}(x) is the n-th iteration of A(x) defined by G{n}(x) = G_{n-1}(A(x)) with G_0(x)=x.

The programs for A172387, there is no canonical definition to state claims against.
-/

/-! ## A172387.P998734150968268033

`A026261(A064856(n))`
-/

namespace A172387.P998734150968268033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026261 (A064856 n).toNat

end

end A172387.P998734150968268033

/-! ## A172387.P7461366295338466289

`A059273(n)+A003173(A172381(n))`
-/

namespace A172387.P7461366295338466289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059273 n + A003173 (A172381 n).toNat

end

end A172387.P7461366295338466289

/-! ## A172387.P6127242614569561960

`A110656(A381867(n)+A000009(3*n+1))`
-/

namespace A172387.P6127242614569561960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A381867 n + A000009 (3 * n + 1)).toNat

end

end A172387.P6127242614569561960

/-!
# A172388: a(n) = Sum_{k=0..n} (-1)^k*C(n,k)*2^(k*(n-k)).

The programs for A172388, there is no canonical definition to state claims against.
-/

/-! ## A172388.P2789962002390781636

`2*A340451(n)-A047863(n)`
-/

namespace A172388.P2789962002390781636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A340451 n - A047863 n

end

end A172388.P2789962002390781636

/-! ## A172388.P12734057114716919390

`A004277(A340451(n))-A047863(n)`
-/

namespace A172388.P12734057114716919390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A340451 n).toNat - A047863 n

end

end A172388.P12734057114716919390

/-! ## A172388.P8974146973170117977

`A004277(A340451(n))-A322280(∑[n+3])`
-/

namespace A172388.P8974146973170117977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A340451 n).toNat - A322280 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A172388.P8974146973170117977

/-!
# A172389: a(n) = Sum_{k=0..n} C(n,k)*3^(k*(n-k))/2^n.

The programs for A172389, there is no canonical definition to state claims against.
-/

/-! ## A172389.P13039150861717454956

`A135079(n)/2^n`
-/

namespace A172389.P13039150861717454956
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135079 n : ℚ) / (2 ^ n : ℚ)

end

end A172389.P13039150861717454956

/-! ## A172389.P17665125077871900522

`A193198(n)/ceil(2^(n-1))`
-/

namespace A172389.P17665125077871900522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193198 n : ℚ) / (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)

end

end A172389.P17665125077871900522

/-! ## A172389.P12916925289526650275

`floor(A135079(n)/A000079(n))`
-/

namespace A172389.P12916925289526650275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A135079 n : ℚ) / (A000079 n : ℚ)⌋

end

end A172389.P12916925289526650275

/-! ## A172389.P2825738440533197538

`gcd(2, A004277(n))*A193198(n)/2^n`
-/

namespace A172389.P2825738440533197538
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.gcd 2 (A004277 n) : ℤ) * A193198 n : ℚ) / (2 ^ n : ℚ)

end

end A172389.P2825738440533197538

/-! ## A172389.P7991909701163135196

`C(A135079(n)/A000079(n), A119335(n))`
-/

namespace A172389.P7991909701163135196
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway ((A135079 n : ℚ) / (A000079 n : ℚ))).toNat (A119335 n).toNat

end

end A172389.P7991909701163135196

/-!
# A172390: G.f. satisfies: A(x) = G(x/A(x))^2 and G(x)^2 = A(x*G(x)^2) where G(x) = Sum_{n>=0} C(2*n,n)^2*x^n.

The programs for A172390, there is no canonical definition to state claims against.
-/

/-! ## A172390.P3793731092712203297

`A246816(7*A018218(n))`
-/

namespace A172390.P3793731092712203297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246816 (7 * A018218 n).toNat

end

end A172390.P3793731092712203297

/-!
# A172392: a(n) = C(2n,n)*C(2n+2,n+1)/(n+2).

The programs for A172392, the canonical program `A172392.P14099812267270023863` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172392 has offset 0).

The definition of A172392 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A172392.P15506859730053998395

`a(n-1)*4*(4*n²-1)/(n*(n+2))` with `a(0)=1`
-/

namespace A172392.P15506859730053998395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * ((4 * ((4 * n ^ 2 : ℤ) - 1) : ℚ) / (n * (n + 2) : ℚ))

end

end A172392.P15506859730053998395

namespace A172392

/-- `a(n-1)*4*(4*n²-1)/(n*(n+2))` -/
def P15506859730053998395.Spec : Prop :=
  ∀ n, P15506859730053998395.a n = (A172392 n : ℚ)

end A172392

/-! ## A172392.P14099812267270023863

`(n+1)*A005568(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A172392

/-- `(n+1)*A005568(n)` -/
def P14099812267270023863.Spec : Prop :=
  ∀ n, P14099812267270023863.a n = A172392 n

theorem P14099812267270023863.correct : P14099812267270023863.Spec := by
  intro n
  simp only [A172392]

end A172392

/-! ## A172392.P6645392335954111935

`A000108(n+1)*A000984(n)`
-/

namespace A172392.P6645392335954111935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A000984 n

end

end A172392.P6645392335954111935

namespace A172392

/-- `A000108(n+1)*A000984(n)` -/
def P6645392335954111935.Spec : Prop :=
  ∀ n, P6645392335954111935.a n = A172392 n

end A172392

/-! ## A172392.P4046189626069374579

`C(2*n, n)*C(2*n+2, n+1)/(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A172392.P4046189626069374579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) n * Nat.choose (2 * n + 2) (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A172392.P4046189626069374579

namespace A172392

/-- `C(2*n, n)*C(2*n+2, n+1)/(n+2)` -/
def P4046189626069374579.Spec : Prop :=
  ∀ n, P4046189626069374579.a n = (A172392 n : ℚ)

end A172392

/-! ## A172392.P3560310980767991686

`(n+1)*A052175(n²)`
-/

namespace A172392.P3560310980767991686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052175 (n ^ 2)

end

end A172392.P3560310980767991686

namespace A172392

/-- `(n+1)*A052175(n²)` -/
def P3560310980767991686.Spec : Prop :=
  ∀ n, P3560310980767991686.a n = A172392 n

end A172392

/-! ## A172392.P3811769087755631136

`A379100(∑[n+1]+n)`
-/

namespace A172392.P3811769087755631136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379100 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A172392.P3811769087755631136

namespace A172392

/-- `A379100(∑[n+1]+n)` -/
def P3811769087755631136.Spec : Prop :=
  ∀ n, P3811769087755631136.a n = A172392 n

end A172392

/-! ## A172392.P8357195130957981743

`(n+1)*A005817(2*n)`
-/

namespace A172392.P8357195130957981743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005817 (2 * n)

end

end A172392.P8357195130957981743

namespace A172392

/-- `(n+1)*A005817(2*n)` -/
def P8357195130957981743.Spec : Prop :=
  ∀ n, P8357195130957981743.a n = A172392 n

end A172392

/-! ## A172392.P13056274107526375704

`(n+1)*A302093(2*n)`
-/

namespace A172392.P13056274107526375704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A302093 (2 * n)

end

end A172392.P13056274107526375704

namespace A172392

/-- `(n+1)*A302093(2*n)` -/
def P13056274107526375704.Spec : Prop :=
  ∀ n, P13056274107526375704.a n = A172392 n

end A172392

/-! ## A172392.P5263727609038064582

`C(2*(n+1), n)*A000108(n)`
-/

namespace A172392.P5263727609038064582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 1)) n : ℤ) * A000108 n

end

end A172392.P5263727609038064582

namespace A172392

/-- `C(2*(n+1), n)*A000108(n)` -/
def P5263727609038064582.Spec : Prop :=
  ∀ n, P5263727609038064582.a n = A172392 n

end A172392

/-! ## A172392.P8806327672527030540

`record[A126120(n)]*A000984(n)`
-/

namespace A172392.P8806327672527030540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000984 n

end

end A172392.P8806327672527030540

namespace A172392

/-- `record[A126120(n)]*A000984(n)` -/
def P8806327672527030540.Spec : Prop :=
  ∀ n, P8806327672527030540.a n = A172392 n

end A172392

/-!
# A172394: G.f. satisfies: A(x) = G(x/A(x)) where o.g.f. G(x) = A(x*G(x)) = Sum_{n>=0} A001464(n)*x^n.

The programs for A172394, there is no canonical definition to state claims against.
-/

/-! ## A172394.P189439410736354338

`A087960(n)*A172395(n)`
-/

namespace A172394.P189439410736354338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A172395 n

end

end A172394.P189439410736354338

/-! ## A172394.P8098645762914510593

`A172395(n)*A242073(n)`
-/

namespace A172394.P8098645762914510593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172395 n * A242073 n

end

end A172394.P8098645762914510593

/-! ## A172394.P17030170045323547291

`∏[A033999(n)]*A172395(n)`
-/

namespace A172394.P17030170045323547291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A172395 n

end

end A172394.P17030170045323547291

/-! ## A172394.P1556966376381242258

`A112299(n+1)*A172395(n)`
-/

namespace A172394.P1556966376381242258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (n + 1) * A172395 n

end

end A172394.P1556966376381242258

/-! ## A172394.P11620921328007767357

`A172395(n)*A209615(n+1)`
-/

namespace A172394.P11620921328007767357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172395 n * A209615 (n + 1)

end

end A172394.P11620921328007767357

/-!
# A172395: G.f. satisfies: A(x) = G(x/A(x)) where o.g.f. G(x) = A(x*G(x)) = Sum_{n>=0} A000085(n)*x^n.

The programs for A172395, there is no canonical definition to state claims against.
-/

/-! ## A172395.P10379217746906051583

`abs(A172394(n))`
-/

namespace A172395.P10379217746906051583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A172394 n|

end

end A172395.P10379217746906051583

/-! ## A172395.P6915451336859123225

`A087960(n)*A172394(n)`
-/

namespace A172395.P6915451336859123225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A172394 n

end

end A172395.P6915451336859123225

/-! ## A172395.P9130452633060938356

`A172394(n)*A242073(n)`
-/

namespace A172395.P9130452633060938356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172394 n * A242073 n

end

end A172395.P9130452633060938356

/-! ## A172395.P1063997215721129697

`gcd(A000038(n), A172394(n))`
-/

namespace A172395.P1063997215721129697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A172394 n)

end

end A172395.P1063997215721129697

/-! ## A172395.P18021347628017588326

`lcm(A001492(n), A172394(n))`
-/

namespace A172395.P18021347628017588326
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001492 n) (A172394 n)

end

end A172395.P18021347628017588326

/-! ## A172395.P17163783508596307565

`A112299(n+1)*A172394(n)`
-/

namespace A172395.P17163783508596307565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112299 (n + 1) * A172394 n

end

end A172395.P17163783508596307565

/-! ## A172395.P14704622274864582465

`A172394(n)*A209615(n+1)`
-/

namespace A172395.P14704622274864582465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172394 n * A209615 (n + 1)

end

end A172395.P14704622274864582465

/-!
# A172396: G.f. satisfies: A(x) = G(x/A(x)) where o.g.f. G(x) = A(x*G(x)) = Sum_{n>=0} A003701(n)*x^n.

The programs for A172396, there is no canonical definition to state claims against.
-/

/-! ## A172396.P18053865666012461051

`abs(A157310(n))`
-/

namespace A172396.P18053865666012461051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157310 n|

end

end A172396.P18053865666012461051

/-! ## A172396.P9255574035687672596

`gcd(A000038(n), A157310(n))`
-/

namespace A172396.P9255574035687672596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A157310 n)

end

end A172396.P9255574035687672596

/-! ## A172396.P4834878582638100888

`abs(A157308(n))`
-/

namespace A172396.P4834878582638100888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A157308 n|

end

end A172396.P4834878582638100888

/-! ## A172396.P16776451000327463532

`gcd(A151933(n), A157308(n))`
-/

namespace A172396.P16776451000327463532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A157308 n)

end

end A172396.P16776451000327463532

/-! ## A172396.P3501671506766350160

`lcm(A157308(n), A157310(n))`
-/

namespace A172396.P3501671506766350160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A157308 n) (A157310 n)

end

end A172396.P3501671506766350160

/-!
# A172397: a(n) = a(n-1) + a(n-2) - a(n-3) - a(n-8), starting 1,1,2,2,3,3,4,4.

The programs for A172397, the canonical program `A172397.P10805854501726036555` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172397 has offset 0).

The definition of A172397 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-a(n-3)-a(n-8)` (program `A172397.P10805854501726036555`, by `A172397.P10805854501726036555.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172397.P10805854501726036555

`a(n-1)+a(n-2)-a(n-3)-a(n-8)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=2, a(4)=3, a(5)=3, a(6)=4, a(7)=4`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172397

/-- `a(n-1)+a(n-2)-a(n-3)-a(n-8)` -/
def P10805854501726036555.Spec : Prop :=
  ∀ n, P10805854501726036555.a n = A172397 n

theorem P10805854501726036555.correct : P10805854501726036555.Spec := by
  intro n
  simp only [A172397]

end A172397

/-!
# A172398: Number of partitions of n into the sum of two refactorable numbers (A033950).

The programs for A172398, there is no canonical definition to state claims against.
-/

/-! ## A172398.P13280549203553140782

`ceil(A368821(n+1)/2)`
-/

namespace A172398.P13280549203553140782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A368821 (n + 1) : ℚ) / 2⌉

end

end A172398.P13280549203553140782

/-! ## A172398.P6658878206198637493

`A004526(A368821(n+1)+1)`
-/

namespace A172398.P6658878206198637493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A368821 (n + 1) + 1).toNat

end

end A172398.P6658878206198637493

/-! ## A172398.P3695816956378300017

`A060398(or(A008458(n), A236340(n)))`
-/

namespace A172398.P3695816956378300017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 (Int.lor (A008458 n) (A236340 n)).toNat

end

end A172398.P3695816956378300017

/-! ## A172398.P9186958587014958741

`A033761(A317839(n+1)+A104449(n))`
-/

namespace A172398.P9186958587014958741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (A317839 (n + 1) + A104449 n).toNat

end

end A172398.P9186958587014958741

/-! ## A172398.P8252287311399138843

`A060952(A060983(n+1)+∑[A060953(n+1)])`
-/

namespace A172398.P8252287311399138843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060952 (A060983 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A172398.P8252287311399138843

/-!
# A172399: Expansion of x^7/(1-2*x-2*x^2+x^3+x^8).

The programs for A172399, the canonical program `A172399.P2556368962030378454` is in `Seq.B000.C025`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A172399 has offset 7).

The definition of A172399 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-2x^2+x^3+x^8))` (program `A172399.P2556368962030378454`, by `A172399.P2556368962030378454.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A172399.P2556368962030378454

`ogf(1/(1-2x-2x^2+x^3+x^8))`

The canonical program, it is in `Seq.B000.C025`.
-/

namespace A172399

/-- `ogf(1/(1-2x-2x^2+x^3+x^8))` -/
def P2556368962030378454.Spec : Prop :=
  ∀ n, P2556368962030378454.a n = A172399 (n + 7)

theorem P2556368962030378454.correct : P2556368962030378454.Spec := by
  intro n
  simp only [A172399, Nat.add_sub_cancel]

end A172399

/-! ## A172399.P9247146570839045149

`A156301(A097134(n)-A204549(n+1))`
-/

namespace A172399.P9247146570839045149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156301 (A097134 n - A204549 (n + 1)).toNat

end

end A172399.P9247146570839045149

namespace A172399

/-- `A156301(A097134(n)-A204549(n+1))` -/
def P9247146570839045149.Spec : Prop :=
  ∀ n, P9247146570839045149.a n = A172399 (n + 7)

end A172399

/-! ## A172399.P8667997829498952022

`A001654(n+1)-A102681(A001654(n+1))²`
-/

namespace A172399.P8667997829498952022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (n + 1) - A102681 (A001654 (n + 1)).toNat ^ 2

end

end A172399.P8667997829498952022

namespace A172399

/-- `A001654(n+1)-A102681(A001654(n+1))²` -/
def P8667997829498952022.Spec : Prop :=
  ∀ n, P8667997829498952022.a n = A172399 (n + 7)

end A172399

/-! ## A172399.P11693520197518777199

`∑[A357632(A079500(n))]`
-/

namespace A172399.P11693520197518777199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357632 (A079500 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A172399.P11693520197518777199

namespace A172399

/-- `∑[A357632(A079500(n))]` -/
def P11693520197518777199.Spec : Prop :=
  ∀ n, P11693520197518777199.a n = A172399 (n + 7)

end A172399

/-! ## A172399.P14843138308765455011

`A001654(A032555(n+1))-char[8]`
-/

namespace A172399.P14843138308765455011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001654 (A032555 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A172399.P14843138308765455011

namespace A172399

/-- `A001654(A032555(n+1))-char[8]` -/
def P14843138308765455011.Spec : Prop :=
  ∀ n, P14843138308765455011.a n = A172399 (n + 7)

end A172399

