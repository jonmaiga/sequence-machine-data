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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
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
# A323800: Number of permutations p of [n] such that max_{j=1..n} |p(j)-j| = 4.

The programs for A323800, there is no canonical definition to state claims against.
-/

/-! ## A323800.P13986439667196823322

`A072856(n+4)-A002526(n+4)`
-/

namespace A323800.P13986439667196823322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072856 (n + 4) - A002526 (n + 4)

end

end A323800.P13986439667196823322

/-!
# A323801: Number of permutations p of [n] such that max_{j=1..n} |p(j)-j| = 5.

The programs for A323801, there is no canonical definition to state claims against.
-/

/-! ## A323801.P7344277465236892759

`A154654(n+5)-A072856(n+5)`
-/

namespace A323801.P7344277465236892759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154654 (n + 5) - A072856 (n + 5)

end

end A323801.P7344277465236892759

/-!
# A323802: Number of permutations p of [n] such that max_{j=1..n} |p(j)-j| = 6.

The programs for A323802, there is no canonical definition to state claims against.
-/

/-! ## A323802.P15186009005552513913

`A154655(n+6)-A154654(n+6)`
-/

namespace A323802.P15186009005552513913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154655 (n + 6) - A154654 (n + 6)

end

end A323802.P15186009005552513913

/-!
# A323803: Number of permutations p of [n] such that max_{j=1..n} |p(j)-j| = 7.

The programs for A323803, there is no canonical definition to state claims against.
-/

/-! ## A323803.P16896652321413626766

`A154656(n+7)-A154655(n+7)`
-/

namespace A323803.P16896652321413626766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154656 (n + 7) - A154655 (n + 7)

end

end A323803.P16896652321413626766

/-!
# A323804: Number of permutations p of [n] such that max_{j=1..n} |p(j)-j| = 8.

The programs for A323804, there is no canonical definition to state claims against.
-/

/-! ## A323804.P1950730679458481988

`A154657(n+8)-A154656(n+8)`
-/

namespace A323804.P1950730679458481988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154657 (n + 8) - A154656 (n + 8)

end

end A323804.P1950730679458481988

/-!
# A323805: Number of permutations p of [n] such that max_{j=1..n} |p(j)-j| = 9.

The programs for A323805, there is no canonical definition to state claims against.
-/

/-! ## A323805.P7604064901736851215

`A154658(n+9)-A154657(n+9)`
-/

namespace A323805.P7604064901736851215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154658 (n + 9) - A154657 (n + 9)

end

end A323805.P7604064901736851215

/-!
# A323806: Number of permutations p of [n] such that max_{j=1..n} |p(j)-j| = 10.

The programs for A323806, there is no canonical definition to state claims against.
-/

/-! ## A323806.P12258192710419128909

`A154659(n+10)-A154658(n+10)`
-/

namespace A323806.P12258192710419128909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154659 (n + 10) - A154658 (n + 10)

end

end A323806.P12258192710419128909

/-!
# A323807: Number of permutations p of [n] such that max_{j=1..n} |p(j)-j| = floor(n/2).

The programs for A323807, there is no canonical definition to state claims against.
-/

/-! ## A323807.P4151736744561509528

`A130152(A080827(n+1))`
-/

namespace A323807.P4151736744561509528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130152 (A080827 (n + 1)).toNat

end

end A323807.P4151736744561509528

/-! ## A323807.P17468489233042012915

`A130152(A085913(n+2))`
-/

namespace A323807.P17468489233042012915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130152 (A085913 (n + 2)).toNat

end

end A323807.P17468489233042012915

/-! ## A323807.P15357115750698347970

`A130152(A099392(n+2))`
-/

namespace A323807.P15357115750698347970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130152 (A099392 (n + 2)).toNat

end

end A323807.P15357115750698347970

/-! ## A323807.P14842217381925336249

`A130152(A007590(n+1)+1)`
-/

namespace A323807.P14842217381925336249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130152 (A007590 (n + 1) + 1).toNat

end

end A323807.P14842217381925336249

/-! ## A323807.P9444020656574172945

`A130152(A080476(n+1)+1)`
-/

namespace A323807.P9444020656574172945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130152 (A080476 (n + 1) + 1).toNat

end

end A323807.P9444020656574172945

/-!
# A323812: a(n) = n*Fibonacci(n-2) + ((-1)^n + 1)/2.

The programs for A323812, there is no canonical definition to state claims against.
-/

/-! ## A323812.P13244734259605749047

`2^((n-1)%(n+1))-A025480(A035615(n))`
-/

namespace A323812.P13244734259605749047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ) - (A025480 (A035615 n).toNat : ℚ)

end

end A323812.P13244734259605749047

/-! ## A323812.P2833093123636616067

`A067085(A003080(n))`
-/

namespace A323812.P2833093123636616067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A003080 n).toNat

end

end A323812.P2833093123636616067

/-! ## A323812.P14111421414296734020

`A067085(A114509(n))`
-/

namespace A323812.P14111421414296734020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A114509 n).toNat

end

end A323812.P14111421414296734020

/-! ## A323812.P10874687540732331056

`A067085(A148295(n))`
-/

namespace A323812.P10874687540732331056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A148295 n).toNat

end

end A323812.P10874687540732331056

/-! ## A323812.P744641809587455089

`A067085(A148296(n))`
-/

namespace A323812.P744641809587455089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A148296 n).toNat

end

end A323812.P744641809587455089

/-!
# A323813: Squares where A323809 gets stuck.

The programs for A323813, there is no canonical definition to state claims against.
-/

/-! ## A323813.P5514389960641014739

`A323714(n+1)-1`
-/

namespace A323813.P5514389960641014739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323714 (n + 1) - 1

end

end A323813.P5514389960641014739

/-! ## A323813.P730387064928151785

`abs(1-A323714(Δ[n²]-n))`
-/

namespace A323813.P730387064928151785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A323714 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A323813.P730387064928151785

/-! ## A323813.P6052253693321706350

`A000027(A323714(n+1)+log2(1/2))`
-/

namespace A323813.P6052253693321706350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A323714 (n + 1) : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

end

end A323813.P6052253693321706350

/-! ## A323813.P16025069268478216411

`abs(A323714(n+1)+A153881(n+2))`
-/

namespace A323813.P16025069268478216411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323714 (n + 1) + A153881 (n + 2)|

end

end A323813.P16025069268478216411

/-! ## A323813.P10156186783754045547

`(A323714(n+1)+log2(1/2))*A000034(2*n)`
-/

namespace A323813.P10156186783754045547
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A323714 (n + 1) : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A000034 (2 * n) : ℝ)

end

end A323813.P10156186783754045547

/-! ## A323813.P2871099742694171152

`A001222(gcd(n, n+1))+A323714(n+1)+log2(1/2)`
-/

namespace A323813.P2871099742694171152
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A001222 (Nat.gcd n (n + 1)) : ℝ) + ((A323714 (n + 1) : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ))

end

end A323813.P2871099742694171152

/-! ## A323813.P12497767504312626974

`abs(A323714(n+1)+A008683(A007304(n+1)))`
-/

namespace A323813.P12497767504312626974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323714 (n + 1) + A008683 (A007304 (n + 1)).toNat|

end

end A323813.P12497767504312626974

/-!
# A323814: Squares where A323810 gets stuck.

The programs for A323814, there is no canonical definition to state claims against.
-/

/-! ## A323814.P9290431214638529732

`A323815(n+1)+1`
-/

namespace A323814.P9290431214638529732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323815 (n + 1) + 1

end

end A323814.P9290431214638529732

/-! ## A323814.P12338717012372832522

`A020725(A323815(n+1))`
-/

namespace A323814.P12338717012372832522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A323815 (n + 1)).toNat

end

end A323814.P12338717012372832522

/-!
# A323815: Squares where A323811 gets stuck.

The programs for A323815, there is no canonical definition to state claims against.
-/

/-! ## A323815.P16395455849019675635

`A323814(n+1)-1`
-/

namespace A323815.P16395455849019675635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323814 (n + 1) - 1

end

end A323815.P16395455849019675635

/-! ## A323815.P13462404178061985264

`record[A323814(A324343(n))-1]`
-/

namespace A323815.P13462404178061985264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323814 (A324343 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323815.P13462404178061985264

/-! ## A323815.P5622551464075557032

`abs(A323814(n+1)+A057428(n+1))`
-/

namespace A323815.P5622551464075557032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A323814 (n + 1) + A057428 (n + 1)|

end

end A323815.P5622551464075557032

/-! ## A323815.P5424129730480796290

`A000007(n+1)+A323814(n+1)+A057428(A087790(n))`
-/

namespace A323815.P5424129730480796290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A323814 (n + 1) + A057428 (A087790 n).toNat)

end

end A323815.P5424129730480796290

/-! ## A323815.P14057057663527282191

`A066182(A323814(n+1))`
-/

namespace A323815.P14057057663527282191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (A323814 (n + 1)).toNat

end

end A323815.P14057057663527282191

/-!
# A323816: Number of set-systems covering n vertices with no singletons.

The programs for A323816, there is no canonical definition to state claims against.
-/

/-! ## A323816.P9652811777920482

`A193247(n)/2^(n+1)`
-/

namespace A323816.P9652811777920482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193247 n : ℚ) / (2 ^ (n + 1) : ℚ)

end

end A323816.P9652811777920482

/-!
# A323817: Number of connected set-systems covering n vertices with no singletons.

The programs for A323817, there is no canonical definition to state claims against.
-/

/-! ## A323817.P4948761839594115896

`floor(A323818(n)/2^n)`
-/

namespace A323817.P4948761839594115896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A323818 n : ℚ) / (2 ^ n : ℚ)⌋

end

end A323817.P4948761839594115896

/-!
# A323818: Number of connected set-systems covering n vertices.

The programs for A323818, there is no canonical definition to state claims against.
-/

/-! ## A323818.P15555166584887142692

`A092918(n*a(log2(gcd(2, n))))` with `a(0)=1, a(1)=1`
-/

namespace A323818.P15555166584887142692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A092918 ((n : ℤ) * a (SequenceMachineLib.roundAway (Real.logb 2 (Nat.gcd 2 n : ℝ))).toNat).toNat

end

end A323818.P15555166584887142692

/-!
# A323819: Number of non-isomorphic connected set-systems covering n vertices.

The programs for A323819, there is no canonical definition to state claims against.
-/

/-! ## A323819.P9776969560080327416

`A182833(A041737(n))`
-/

namespace A323819.P9776969560080327416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182833 (A041737 n).toNat

end

end A323819.P9776969560080327416

/-!
# A323820: Number of non-isomorphic connected set-systems covering n vertices with no singletons.

The programs for A323820, there is no canonical definition to state claims against.
-/

/-! ## A323820.P12092790010696408653

`A268618(a(n-1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A323820.P12092790010696408653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  A268618 (a (n - 1)).toNat

end

end A323820.P12092790010696408653

/-!
# A323821: Lexicographically first sequence starting with a(1) = 1, with no duplicate term, such that a(n) is the result of an additive linear combination of a(n+1)'s digits.

The programs for A323821, there is no canonical definition to state claims against.
-/

/-! ## A323821.P6133960366291896140

`and(-A007318(A185255(n)), A351840(n+1))`
-/

namespace A323821.P6133960366291896140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A007318 (A185255 n).toNat) (A351840 (n + 1))

end

end A323821.P6133960366291896140

/-! ## A323821.P3869554361183169048

`A351840(n+1)-and(A057427(n), A151838(n))`
-/

namespace A323821.P3869554361183169048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351840 (n + 1) - Int.land (A057427 n) (A151838 n)

end

end A323821.P3869554361183169048

/-! ## A323821.P13426650906834486860

`A351840(n+1)%A080313(n)`
-/

namespace A323821.P13426650906834486860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351840 (n + 1)) (A080313 n)

end

end A323821.P13426650906834486860

/-! ## A323821.P9372871136834187556

`A351840(or(n+1, A185255(n)))`
-/

namespace A323821.P9372871136834187556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351840 (Int.lor (n + 1 : ℤ) (A185255 n)).toNat

end

end A323821.P9372871136834187556

/-! ## A323821.P562470427767802806

`A351840(n+1)+A000007(A056520(n))`
-/

namespace A323821.P562470427767802806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351840 (n + 1) + A000007 (A056520 n).toNat

end

end A323821.P562470427767802806

/-!
# A323824: a(0) = 6; thereafter a(n) = 4*a(n-1) + 1.

The programs for A323824, the canonical program `A323824.P9874569052914483524` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323824 has offset 0).

The definition of A323824 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+1` (program `A323824.P9874569052914483524`, by `A323824.P9874569052914483524.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A323824.P9874569052914483524

`4*a(n-1)+1` with `a(0)=6`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323824

/-- `4*a(n-1)+1` -/
def P9874569052914483524.Spec : Prop :=
  ∀ n, (P9874569052914483524.a n : ℤ) = A323824 n

theorem P9874569052914483524.correct : P9874569052914483524.Spec := by
  intro n
  simp only [A323824]

end A323824

/-! ## A323824.P18328779411024602392

`(19*4^n-1)/3`
-/

namespace A323824.P18328779411024602392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((19 * 4 ^ n : ℤ) - 1 : ℚ) / 3

end

end A323824.P18328779411024602392

namespace A323824

/-- `(19*4^n-1)/3` -/
def P18328779411024602392.Spec : Prop :=
  ∀ n, P18328779411024602392.a n = (A323824 n : ℚ)

theorem P18328779411024602392.correct : P18328779411024602392.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A323824, Nat.add_sub_cancel, A323824.P18328779411024602392.a, A323824.P9874569052914483524.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A323824, Nat.add_sub_cancel, A323824.P18328779411024602392.a, A323824.P9874569052914483524.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A323824

/-! ## A323824.P14846256610645081544

`ogf((6-5x)/(1-5x+4x^2))`
-/

namespace A323824.P14846256610645081544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -5] [1, -5, 4] n

end

end A323824.P14846256610645081544

namespace A323824

/-- `ogf((6-5x)/(1-5x+4x^2))` -/
def P14846256610645081544.Spec : Prop :=
  ∀ n, P14846256610645081544.a n = A323824 n

end A323824

/-! ## A323824.P672353358870791270

`or(1, 4*a(n-1))` with `a(0)=6`
-/

namespace A323824.P672353358870791270
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.lor 1 (4 * a (n - 1))

end

end A323824.P672353358870791270

namespace A323824

/-- `or(1, 4*a(n-1))` -/
def P672353358870791270.Spec : Prop :=
  ∀ n, (P672353358870791270.a n : ℤ) = A323824 n

end A323824

/-! ## A323824.P13793061867326330387

`xor(1, 4*a(n-1))` with `a(0)=6`
-/

namespace A323824.P13793061867326330387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  Nat.xor 1 (4 * a (n - 1))

end

end A323824.P13793061867326330387

namespace A323824

/-- `xor(1, 4*a(n-1))` -/
def P13793061867326330387.Spec : Prop :=
  ∀ n, (P13793061867326330387.a n : ℤ) = A323824 n

end A323824

/-! ## A323824.P4746780948647870734

`∑[4*a(n-1)]` with `a(0)=6, a(1)=19`
-/

namespace A323824.P4746780948647870734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 19] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323824.P4746780948647870734

namespace A323824

/-- `∑[4*a(n-1)]` -/
def P4746780948647870734.Spec : Prop :=
  ∀ n, (P4746780948647870734.a n : ℤ) = A323824 n

end A323824

/-! ## A323824.P9405801942184533524

`lcm(4, a(n-1))+1` with `a(0)=6, a(1)=25`
-/

namespace A323824.P9405801942184533524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 25] fun n a =>
  Nat.lcm 4 (a (n - 1)) + 1

end

end A323824.P9405801942184533524

namespace A323824

/-- `lcm(4, a(n-1))+1` -/
def P9405801942184533524.Spec : Prop :=
  ∀ n, (P9405801942184533524.a n : ℤ) = A323824 n

end A323824

/-! ## A323824.P12265232809290814155

`5-4*(1-a(n-1))` with `a(0)=6`
-/

namespace A323824.P12265232809290814155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  5 - 4 * (1 - a (n - 1))

end

end A323824.P12265232809290814155

namespace A323824

/-- `5-4*(1-a(n-1))` -/
def P12265232809290814155.Spec : Prop :=
  ∀ n, P12265232809290814155.a n = A323824 n

end A323824

/-! ## A323824.P14167946005650908511

`a(n-1)/(1/2)²+1` with `a(0)=6`
-/

namespace A323824.P14167946005650908511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 + 1

end

end A323824.P14167946005650908511

namespace A323824

/-- `a(n-1)/(1/2)²+1` -/
def P14167946005650908511.Spec : Prop :=
  ∀ n, P14167946005650908511.a n = (A323824 n : ℚ)

end A323824

/-! ## A323824.P10468932929356487169

`A072197(n)+Δ[4^n]`
-/

namespace A323824.P10468932929356487169
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072197 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A323824.P10468932929356487169

namespace A323824

/-- `A072197(n)+Δ[4^n]` -/
def P10468932929356487169.Spec : Prop :=
  ∀ n, P10468932929356487169.a n = A323824 n

end A323824

/-! ## A323824.P11441703671540457014

`A072261(n+1)-4^n`
-/

namespace A323824.P11441703671540457014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072261 (n + 1) - (4 ^ n : ℤ)

end

end A323824.P11441703671540457014

namespace A323824

/-- `A072261(n+1)-4^n` -/
def P11441703671540457014.Spec : Prop :=
  ∀ n, P11441703671540457014.a n = A323824 n

end A323824

/-! ## A323824.P2955392113052503642

`A002450(n)+A002023(n)`
-/

namespace A323824.P2955392113052503642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + A002023 n

end

end A323824.P2955392113052503642

namespace A323824

/-- `A002450(n)+A002023(n)` -/
def P2955392113052503642.Spec : Prop :=
  ∀ n, P2955392113052503642.a n = A323824 n

end A323824

/-! ## A323824.P11670059407885916501

`A140529(n)+A047849(n)`
-/

namespace A323824.P11670059407885916501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140529 n + A047849 n

end

end A323824.P11670059407885916501

namespace A323824

/-- `A140529(n)+A047849(n)` -/
def P11670059407885916501.Spec : Prop :=
  ∀ n, P11670059407885916501.a n = A323824 n

end A323824

/-! ## A323824.P3581619737594036060

`A206373(n)+A020989(n)`
-/

namespace A323824.P3581619737594036060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206373 n + A020989 n

end

end A323824.P3581619737594036060

namespace A323824

/-- `A206373(n)+A020989(n)` -/
def P3581619737594036060.Spec : Prop :=
  ∀ n, P3581619737594036060.a n = A323824 n

end A323824

/-! ## A323824.P16637437655920705086

`A164346(n)+A072197(n)`
-/

namespace A323824.P16637437655920705086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164346 n + A072197 n

end

end A323824.P16637437655920705086

namespace A323824

/-- `A164346(n)+A072197(n)` -/
def P16637437655920705086.Spec : Prop :=
  ∀ n, P16637437655920705086.a n = A323824 n

end A323824

/-! ## A323824.P4852377921396642171

`A199115(n)+A080674(n)`
-/

namespace A323824.P4852377921396642171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199115 n + A080674 n

end

end A323824.P4852377921396642171

namespace A323824

/-- `A199115(n)+A080674(n)` -/
def P4852377921396642171.Spec : Prop :=
  ∀ n, P4852377921396642171.a n = A323824 n

end A323824

/-! ## A323824.P796767212037281667

`A330246(n)+A004171(n)`
-/

namespace A323824.P796767212037281667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330246 n + A004171 n

end

end A323824.P796767212037281667

namespace A323824

/-- `A330246(n)+A004171(n)` -/
def P796767212037281667.Spec : Prop :=
  ∀ n, P796767212037281667.a n = A323824 n

end A323824

/-! ## A323824.P14387574854266318272

`A002042(n)-A007583(n)`
-/

namespace A323824.P14387574854266318272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002042 n - A007583 n

end

end A323824.P14387574854266318272

namespace A323824

/-- `A002042(n)-A007583(n)` -/
def P14387574854266318272.Spec : Prop :=
  ∀ n, P14387574854266318272.a n = A323824 n

end A323824

/-! ## A323824.P15367013077539123852

`A002066(n)-A199210(n)`
-/

namespace A323824.P15367013077539123852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002066 n - A199210 n

end

end A323824.P15367013077539123852

namespace A323824

/-- `A002066(n)-A199210(n)` -/
def P15367013077539123852.Spec : Prop :=
  ∀ n, P15367013077539123852.a n = A323824 n

end A323824

/-! ## A323824.P5713258162963853285

`A002089(n)-A206373(n)`
-/

namespace A323824.P5713258162963853285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002089 n - A206373 n

end

end A323824.P5713258162963853285

namespace A323824

/-- `A002089(n)-A206373(n)` -/
def P5713258162963853285.Spec : Prop :=
  ∀ n, P5713258162963853285.a n = A323824 n

end A323824

/-!
# A323826: RUNS transform of A306211.

The programs for A323826, there is no canonical definition to state claims against.
-/

/-! ## A323826.P301361849780503242

`A306211(A130764(n+1)-3)`
-/

namespace A323826.P301361849780503242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (A130764 (n + 1) - 3).toNat

end

end A323826.P301361849780503242

/-! ## A323826.P6361813585545646927

`gcd(A006451(A056924(n+4)), A270821(n+1))`
-/

namespace A323826.P6361813585545646927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006451 (A056924 (n + 4)).toNat) (A270821 (n + 1))

end

end A323826.P6361813585545646927

/-!
# A323827: Apply Lenormand's "raboter" operation to A306211.

The programs for A323827, there is no canonical definition to state claims against.
-/

/-! ## A323827.P9488204612326714538

`A306211(eq[A306211(n+2), A306211(n+1)]+1)`
-/

namespace A323827.P9488204612326714538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306211 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A323827.P9488204612326714538

/-! ## A323827.P8644203584199257269

`A042974(xor(A017847(3*n+2), A074286(n+2)))`
-/

namespace A323827.P8644203584199257269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042974 (Int.xor (A017847 (3 * n + 2)) (A074286 (n + 2))).toNat

end

end A323827.P8644203584199257269

/-! ## A323827.P18009681947202574095

`A088426(A125105(n+4)+A040820(n+1))`
-/

namespace A323827.P18009681947202574095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088426 (A125105 (n + 4) + A040820 (n + 1)).toNat

end

end A323827.P18009681947202574095

/-!
# A323829: Position where n first appears in A306211, or -1 if n never appears.

The programs for A323829, there is no canonical definition to state claims against.
-/

/-! ## A323829.P18246401411788493584

`ceil(A046867(n+1)/∏{e}[n+1, #])`
-/

namespace A323829.P18246401411788493584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A046867 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℚ)⌉

end

end A323829.P18246401411788493584

/-!
# A323832: Start with n and repeatedly double it and apply the "repeatedly delete any run of identical digits" operation described in A323830; a(n) is the number of steps needed to reach one of 0, 1, or 5, or -1 if none of these three numbers is ever reached.

The programs for A323832, there is no canonical definition to state claims against.
-/

/-! ## A323832.P13675586197851968554

`A306384(n)+A007949(A306390(n+3))`
-/

namespace A323832.P13675586197851968554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306384 n + A007949 (A306390 (n + 3)).toNat

end

end A323832.P13675586197851968554

/-! ## A323832.P5329882837552644403

`A306384(n)/A285572(A306390(n+3)²)`
-/

namespace A323832.P5329882837552644403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306384 n : ℚ) / (A285572 (A306390 (n + 3) ^ 2).toNat : ℚ)

end

end A323832.P5329882837552644403

/-! ## A323832.P18027380279301862764

`A306384(n)%A023108(A000217(3*(n+1)))`
-/

namespace A323832.P18027380279301862764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306384 n) (A023108 (A000217 (3 * (n + 1))).toNat)

end

end A323832.P18027380279301862764

/-! ## A323832.P5887326362750598147

`A306384(n)+A000035(A364710(n+1))`
-/

namespace A323832.P5887326362750598147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306384 n + A000035 (A364710 (n + 1)).toNat

end

end A323832.P5887326362750598147

/-! ## A323832.P10888894361962791347

`A306384(n)%A004802(A194077(n+1))`
-/

namespace A323832.P10888894361962791347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306384 n) (A004802 (A194077 (n + 1)).toNat)

end

end A323832.P10888894361962791347

/-! ## A323832.P14923714357859410620

`A306384(n)+A000007(A106595(n+3))`
-/

namespace A323832.P14923714357859410620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306384 n + A000007 (A106595 (n + 3)).toNat

end

end A323832.P14923714357859410620

/-! ## A323832.P16126195997563378283

`A306363(A306390(n+6))*A306384(n)`
-/

namespace A323832.P16126195997563378283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306363 (A306390 (n + 6)).toNat * A306384 n

end

end A323832.P16126195997563378283

/-! ## A323832.P13917572819698820589

`A306384(n)+A008966(A175200(3*n+5))`
-/

namespace A323832.P13917572819698820589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306384 n + A008966 (A175200 (3 * n + 5)).toNat

end

end A323832.P13917572819698820589

/-! ## A323832.P3684009295279368558

`A306384(n)/A306408(A306390(n+7))`
-/

namespace A323832.P3684009295279368558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306384 n : ℚ) / (A306408 (A306390 (n + 7)).toNat : ℚ)

end

end A323832.P3684009295279368558

/-! ## A323832.P10689747169751170114

`A057427(A214248(3*(n+1)))*A306384(n)`
-/

namespace A323832.P10689747169751170114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A214248 (3 * (n + 1))).toNat * A306384 n

end

end A323832.P10689747169751170114

/-!
# A323833: A Seidel matrix A(n,k) read by antidiagonals upwards.

The programs for A323833, there is no canonical definition to state claims against.
-/

/-! ## A323833.P12323242345112304304

`A239005(A061579(n))-A236935(n)`
-/

namespace A323833.P12323242345112304304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239005 (A061579 n).toNat - A236935 n

end

end A323833.P12323242345112304304

/-! ## A323833.P14466048888004538142

`A239005(A038722(n+1)-1)-A236935(n)`
-/

namespace A323833.P14466048888004538142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239005 (A038722 (n + 1) - 1).toNat - A236935 n

end

end A323833.P14466048888004538142

/-!
# A323836: The "binary Pascal triangle" read by rows.

The programs for A323836, there is no canonical definition to state claims against.
-/

/-! ## A323836.P124281467351107539

`A007088(A323837(n))`
-/

namespace A323836.P124281467351107539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A323837 n).toNat

end

end A323836.P124281467351107539

/-! ## A323836.P14274034484257217542

`A185544(2*A323837(n))`
-/

namespace A323836.P14274034484257217542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A323837 n).toNat

end

end A323836.P14274034484257217542

/-! ## A323836.P9233488206302481060

`A185544(A323837(n)+A323837(n))`
-/

namespace A323836.P9233488206302481060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A323837 n + A323837 n).toNat

end

end A323836.P9233488206302481060

/-! ## A323836.P2861133700903676938

`A213057(n)-A222210(A213057(n))`
-/

namespace A323836.P2861133700903676938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213057 n - A222210 (A213057 n).toNat

end

end A323836.P2861133700903676938

/-! ## A323836.P11725984078690131740

`A007088(A289537(n)^A104714(n))`
-/

namespace A323836.P11725984078690131740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((A289537 n : ℚ) ^ (A104714 n : ℤ))).toNat

end

end A323836.P11725984078690131740

/-!
# A323840: Irregular triangle read by rows: T(n,k) is the number of compositions of 2^n into k powers of 2.

The programs for A323840, there is no canonical definition to state claims against.
-/

/-! ## A323840.P6739780306249247846

`A073265(∑[A153152(n)]+1)`
-/

namespace A323840.P6739780306249247846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A323840.P6739780306249247846

/-! ## A323840.P8486297811283998420

`A073265(∑[A153152(A028310(n))])`
-/

namespace A323840.P8486297811283998420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323840.P8486297811283998420

/-! ## A323840.P87737994486840958

`A073265(A053645(n+1)+A000124(n))`
-/

namespace A323840.P87737994486840958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A053645 (n + 1) + A000124 n).toNat

end

end A323840.P87737994486840958

/-! ## A323840.P6722250731328376422

`A073265(A062050(n+1)+A000217(n))`
-/

namespace A323840.P6722250731328376422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073265 (A062050 (n + 1) + A000217 n).toNat

end

end A323840.P6722250731328376422

/-!
# A323842: Number of n-node Stanley graphs without isolated nodes.

The programs for A323842, there is no canonical definition to state claims against.
-/

/-! ## A323842.P5962888944316847135

`A383655(∑[n])`
-/

namespace A323842.P5962888944316847135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383655 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323842.P5962888944316847135

/-! ## A323842.P12642742480021602554

`A334549(n)*A383655(A000217(n))`
-/

namespace A323842.P12642742480021602554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334549 n * A383655 (A000217 n).toNat

end

end A323842.P12642742480021602554

/-! ## A323842.P11830576746059796163

`A355588(n)*A383655(A000217(n))`
-/

namespace A323842.P11830576746059796163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355588 n * A383655 (A000217 n).toNat

end

end A323842.P11830576746059796163

/-! ## A323842.P15337517997576079758

`A383655(A000217(n))+A070105(n+1)`
-/

namespace A323842.P15337517997576079758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383655 (A000217 n).toNat + A070105 (n + 1)

end

end A323842.P15337517997576079758

/-! ## A323842.P7982851247679068317

`A383655(A000217(n))/A355588(n+1)`
-/

namespace A323842.P7982851247679068317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A383655 (A000217 n).toNat : ℚ) / (A355588 (n + 1) : ℚ)

end

end A323842.P7982851247679068317

/-!
# A323843: Number of n-node connected Stanley graphs.

The programs for A323843, there is no canonical definition to state claims against.
-/

/-! ## A323843.P3098710031329486045

`A383656(∑[n]+1)`
-/

namespace A323843.P3098710031329486045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383656 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A323843.P3098710031329486045

/-! ## A323843.P17454618436437489505

`A240869(record[A035457(3*n+1)])`
-/

namespace A323843.P17454618436437489505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240869 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A323843.P17454618436437489505

/-! ## A323843.P4794994100911698994

`A317841(∑[A006882(floor((n/2)²))])`
-/

namespace A323843.P4794994100911698994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 ⌊((n : ℚ) / 2) ^ 2⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317841 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323843.P4794994100911698994

/-!
# A323844: Square array T(b,m), read by descending antidiagonals: Number of winning length m strings with a b-symbol alphabet in "same game" (b >= 2, m >= 0).

The programs for A323844, there is no canonical definition to state claims against.
-/

/-! ## A323844.P9890365333148407156

`A290255(or(4^A097609(n), A319453(n)))`
-/

namespace A323844.P9890365333148407156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (Int.lor (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A097609 n : ℤ))) (A319453 n)).toNat

end

end A323844.P9890365333148407156

/-! ## A323844.P15519090008377532459

`A007895(A109189(n)^4)`
-/

namespace A323844.P15519090008377532459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A109189 n ^ 4).toNat

end

end A323844.P15519090008377532459

/-! ## A323844.P4656610842197327274

`A007895(A109189(n)²²)`
-/

namespace A323844.P4656610842197327274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 ((A109189 n ^ 2) ^ 2).toNat

end

end A323844.P4656610842197327274

/-! ## A323844.P12842914125528838306

`A061554(n)-A000035(A249497(n+1))`
-/

namespace A323844.P12842914125528838306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061554 n - A000035 (A249497 (n + 1)).toNat

end

end A323844.P12842914125528838306

/-! ## A323844.P3370269067992705806

`A280274(A108084(n+1))`
-/

namespace A323844.P3370269067992705806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280274 (A108084 (n + 1)).toNat

end

end A323844.P3370269067992705806

/-!
# A323845: Number of inequivalent height 1 degree n polynomials with nonzero constant term.

The programs for A323845, the canonical program `A323845.P11496382381672516873` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323845 has offset 1).

The definition of A323845 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A323845.P17368561540329204537

`ogf((1+x-9x^2)/(1-3x-3x^2+9x^3))`
-/

namespace A323845.P17368561540329204537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, -9] [1, -3, -3, 9] n

end

end A323845.P17368561540329204537

namespace A323845

/-- `ogf((1+x-9x^2)/(1-3x-3x^2+9x^3))` -/
def P17368561540329204537.Spec : Prop :=
  ∀ n, P17368561540329204537.a n = A323845 (n + 1)

end A323845

/-! ## A323845.P11496382381672516873

`A167993(n+1)+A056449(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A323845

/-- `A167993(n+1)+A056449(n)` -/
def P11496382381672516873.Spec : Prop :=
  ∀ n, P11496382381672516873.a n = A323845 (n + 1)

theorem P11496382381672516873.correct : P11496382381672516873.Spec := by
  intro n
  simp only [A323845, Nat.add_sub_cancel]

end A323845

/-! ## A323845.P8726284569683687067

`A167993(n+1)+A108411(n+1)`
-/

namespace A323845.P8726284569683687067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167993 (n + 1) + A108411 (n + 1)

end

end A323845.P8726284569683687067

namespace A323845

/-- `A167993(n+1)+A108411(n+1)` -/
def P8726284569683687067.Spec : Prop :=
  ∀ n, P8726284569683687067.a n = A323845 (n + 1)

end A323845

/-! ## A323845.P13548031325123340007

`A032120(n)+Δ[A007051(A004526(n))]`
-/

namespace A323845.P13548031325123340007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032120 n + (f1 (n + 1) - f1 n)

end

end A323845.P13548031325123340007

namespace A323845

/-- `A032120(n)+Δ[A007051(A004526(n))]` -/
def P13548031325123340007.Spec : Prop :=
  ∀ n, P13548031325123340007.a n = A323845 (n + 1)

end A323845

/-! ## A323845.P8507910311207195252

`A032120(n)+A032120(n)-A001444(n)`
-/

namespace A323845.P8507910311207195252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032120 n + (A032120 n - A001444 n)

end

end A323845.P8507910311207195252

namespace A323845

/-- `A032120(n)+A032120(n)-A001444(n)` -/
def P8507910311207195252.Spec : Prop :=
  ∀ n, P8507910311207195252.a n = A323845 (n + 1)

end A323845

/-! ## A323845.P2941106286744829456

`2*A032120(n)-A001444(n)`
-/

namespace A323845.P2941106286744829456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032120 n - A001444 n

end

end A323845.P2941106286744829456

namespace A323845

/-- `2*A032120(n)-A001444(n)` -/
def P2941106286744829456.Spec : Prop :=
  ∀ n, P2941106286744829456.a n = A323845 (n + 1)

end A323845

/-!
# A323847: a(n) = (n-1)*(n-2)*(n^2+9*n+12)/24.

The programs for A323847, the canonical program `A323847.P6682147477261859965` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323847 has offset 0).

The definition of A323847 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A323847.P6682147477261859965

`(n-1)*(n-2)*(n²+9*n+12)/24`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A323847

/-- `(n-1)*(n-2)*(n²+9*n+12)/24` -/
def P6682147477261859965.Spec : Prop :=
  ∀ n, P6682147477261859965.a n = (A323847 n : ℚ)

end A323847

/-! ## A323847.P16464802975373807271

`∑[C(n+2, 3)-2*n]+1`
-/

namespace A323847.P16464802975373807271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2) 3 : ℤ) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A323847.P16464802975373807271

namespace A323847

/-- `∑[C(n+2, 3)-2*n]+1` -/
def P16464802975373807271.Spec : Prop :=
  ∀ n, P16464802975373807271.a n = A323847 n

end A323847

/-! ## A323847.P4401572533677983755

`1-∑[∑[a(n-1)-n]]` with `a(0)=0, a(1)=1`
-/

namespace A323847.P4401572533677983755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  f2 (n - 1) - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323847.P4401572533677983755

namespace A323847

/-- `1-∑[∑[a(n-1)-n]]` -/
def P4401572533677983755.Spec : Prop :=
  ∀ n, P4401572533677983755.a n = A323847 n

end A323847

/-! ## A323847.P17379173831627455529

`C(n+3, 4)-(n²+n-1)`
-/

namespace A323847.P17379173831627455529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 4 : ℤ) - ((n ^ 2 : ℤ) + ((n : ℤ) - 1))

end

end A323847.P17379173831627455529

namespace A323847

/-- `C(n+3, 4)-(n²+n-1)` -/
def P17379173831627455529.Spec : Prop :=
  ∀ n, P17379173831627455529.a n = A323847 n

end A323847

/-! ## A323847.P14130357332100941851

`a(n-1)+C(n+2, 3)-2*n` with `a(0)=1`
-/

namespace A323847.P14130357332100941851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((Nat.choose (n + 2) 3 : ℤ) - (2 * n : ℤ))

end

end A323847.P14130357332100941851

namespace A323847

/-- `a(n-1)+C(n+2, 3)-2*n` -/
def P14130357332100941851.Spec : Prop :=
  ∀ n, P14130357332100941851.a n = A323847 n

end A323847

/-! ## A323847.P9305408571704976223

`1-∑[n-A005581(n)]`
-/

namespace A323847.P9305408571704976223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A005581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323847.P9305408571704976223

namespace A323847

/-- `1-∑[n-A005581(n)]` -/
def P9305408571704976223.Spec : Prop :=
  ∀ n, P9305408571704976223.a n = A323847 n

end A323847

/-! ## A323847.P14563698814092737793

`∑[A003600(n)-3*n]`
-/

namespace A323847.P14563698814092737793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003600 n - (3 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323847.P14563698814092737793

namespace A323847

/-- `∑[A003600(n)-3*n]` -/
def P14563698814092737793.Spec : Prop :=
  ∀ n, P14563698814092737793.a n = A323847 n

end A323847

/-! ## A323847.P1450292306470699728

`A145126(n)-(n²+n)`
-/

namespace A323847.P1450292306470699728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n - (n ^ 2 + n : ℤ)

end

end A323847.P1450292306470699728

namespace A323847

/-- `A145126(n)-(n²+n)` -/
def P1450292306470699728.Spec : Prop :=
  ∀ n, P1450292306470699728.a n = A323847 n

end A323847

/-! ## A323847.P11678346352128894028

`∑[∑[∑[n]]+2-A103517(n)]`
-/

namespace A323847.P11678346352128894028
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 2 : ℕ) : ℤ) - A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323847.P11678346352128894028

namespace A323847

/-- `∑[∑[∑[n]]+2-A103517(n)]` -/
def P11678346352128894028.Spec : Prop :=
  ∀ n, P11678346352128894028.a n = A323847 n

end A323847

/-! ## A323847.P17800039184649180589

`A079034(n)-A014626(n)`
-/

namespace A323847.P17800039184649180589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079034 n - A014626 n

end

end A323847.P17800039184649180589

namespace A323847

/-- `A079034(n)-A014626(n)` -/
def P17800039184649180589.Spec : Prop :=
  ∀ n, P17800039184649180589.a n = A323847 n

end A323847

/-! ## A323847.P15757572850480261683

`A223718(n)-A045943(n)`
-/

namespace A323847.P15757572850480261683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 n - A045943 n

end

end A323847.P15757572850480261683

namespace A323847

/-- `A223718(n)-A045943(n)` -/
def P15757572850480261683.Spec : Prop :=
  ∀ n, P15757572850480261683.a n = A323847 n

end A323847

/-! ## A323847.P10149549821054913454

`abs(A002378(n)-A145126(n))`
-/

namespace A323847.P10149549821054913454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002378 n - A145126 n|

end

end A323847.P10149549821054913454

namespace A323847

/-- `abs(A002378(n)-A145126(n))` -/
def P10149549821054913454.Spec : Prop :=
  ∀ n, P10149549821054913454.a n = A323847 n

end A323847

/-! ## A323847.P8668265123230370689

`A116699(n+1)-A000096(n)`
-/

namespace A323847.P8668265123230370689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116699 (n + 1) - A000096 n

end

end A323847.P8668265123230370689

namespace A323847

/-- `A116699(n+1)-A000096(n)` -/
def P8668265123230370689.Spec : Prop :=
  ∀ n, P8668265123230370689.a n = A323847 n

end A323847

/-! ## A323847.P13455257378082811215

`∑[A000292(n)+2-A103517(n)]`
-/

namespace A323847.P13455257378082811215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (2 - A103517 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323847.P13455257378082811215

namespace A323847

/-- `∑[A000292(n)+2-A103517(n)]` -/
def P13455257378082811215.Spec : Prop :=
  ∀ n, P13455257378082811215.a n = A323847 n

end A323847

/-! ## A323847.P13425994199566335944

`∑[A000292(A028310(n))-2*n]`
-/

namespace A323847.P13425994199566335944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A028310 n).toNat - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323847.P13425994199566335944

namespace A323847

/-- `∑[A000292(A028310(n))-2*n]` -/
def P13425994199566335944.Spec : Prop :=
  ∀ n, P13425994199566335944.a n = A323847 n

end A323847

/-! ## A323847.P3612337750205748289

`A145126(n)-A000217(n)-A000217(n)`
-/

namespace A323847.P3612337750205748289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145126 n - A000217 n - A000217 n

end

end A323847.P3612337750205748289

namespace A323847

/-- `A145126(n)-A000217(n)-A000217(n)` -/
def P3612337750205748289.Spec : Prop :=
  ∀ n, P3612337750205748289.a n = A323847 n

end A323847

/-! ## A323847.P2521015165045023455

`A000127(n+1)+A161708(n+1)-A161711(n+1)`
-/

namespace A323847.P2521015165045023455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000127 (n + 1) + (A161708 (n + 1) - A161711 (n + 1))

end

end A323847.P2521015165045023455

namespace A323847

/-- `A000127(n+1)+A161708(n+1)-A161711(n+1)` -/
def P2521015165045023455.Spec : Prop :=
  ∀ n, P2521015165045023455.a n = A323847 n

end A323847

/-! ## A323847.P10696590232914065268

`A101338(n+1)-(n+1)²`
-/

namespace A323847.P10696590232914065268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A323847.P10696590232914065268

namespace A323847

/-- `A101338(n+1)-(n+1)²` -/
def P10696590232914065268.Spec : Prop :=
  ∀ n, P10696590232914065268.a n = A323847 n

end A323847

/-! ## A323847.P4492855839380063550

`A116699(n+1)+A005581(n)-A005581(n+1)`
-/

namespace A323847.P4492855839380063550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116699 (n + 1) + (A005581 n - A005581 (n + 1))

end

end A323847.P4492855839380063550

namespace A323847

/-- `A116699(n+1)+A005581(n)-A005581(n+1)` -/
def P4492855839380063550.Spec : Prop :=
  ∀ n, P4492855839380063550.a n = A323847 n

end A323847

/-!
# A323851: Number of branched cata-condensed benzenoid hydrocarbons with n hexagons.

The programs for A323851, there is no canonical definition to state claims against.
-/

/-! ## A323851.P6453461353183648486

`A038142(n+1)-A003104(n+1)`
-/

namespace A323851.P6453461353183648486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038142 (n + 1) - A003104 (n + 1)

end

end A323851.P6453461353183648486

/-! ## A323851.P8577094830382282847

`A000228(n+1)-(A137193(n+1)+A003104(n+1))`
-/

namespace A323851.P8577094830382282847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000228 (n + 1) - (A137193 (n + 1) + A003104 (n + 1))

end

end A323851.P8577094830382282847

/-! ## A323851.P13500093628735781975

`A018190(n+1)+A038144(n+1)-A137193(n+1)-A003104(n+1)`
-/

namespace A323851.P13500093628735781975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018190 (n + 1) + (A038144 (n + 1) - A137193 (n + 1)) - A003104 (n + 1)

end

end A323851.P13500093628735781975

/-! ## A323851.P14928441482016271394

`A030225(n+1)+A030226(n+1)-A137193(n+1)-A003104(n+1)`
-/

namespace A323851.P14928441482016271394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030225 (n + 1) + (A030226 (n + 1) - A137193 (n + 1)) - A003104 (n + 1)

end

end A323851.P14928441482016271394

/-!
# A323852: Triangle read by rows: T(n,k) (n>=2, 2<=k<=n) = number of figure 8's having 2n edges in one loop and 2k edges in the other and which are weakly embeddable in the square lattice.

The programs for A323852, there is no canonical definition to state claims against.
-/

/-! ## A323852.P2041582517022657970

`A247181(A235645(n+4)+comp[∑[n-1]])`
-/

namespace A323852.P2041582517022657970
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247181 (A235645 (n + 4) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)).toNat

end

end A323852.P2041582517022657970

/-! ## A323852.P5204745930149321390

`A247181(A060762(n+1)+A060126(n))`
-/

namespace A323852.P5204745930149321390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247181 (A060762 (n + 1) + A060126 n).toNat

end

end A323852.P5204745930149321390

/-!
# A323853: Number of figure 8's having 2n edges in one loop and 6 edges in the other and which are weakly embeddable in the square lattice.

The programs for A323853, there is no canonical definition to state claims against.
-/

/-! ## A323853.P11310487269692362587

`A323852(∑[round(acot(n)+n)])`
-/

namespace A323853.P11310487269692362587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323852 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A323853.P11310487269692362587

/-!
# A323855: Triangle read by rows: T(n,k) is the denominator of the generalized harmonic number H(n,k) of rank k (n >= 1, 0 <= k <= n - 1).

The programs for A323855, there is no canonical definition to state claims against.
-/

/-! ## A323855.P7162395483376037088

`A284002(A062253(n))`
-/

namespace A323855.P7162395483376037088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284002 (A062253 n).toNat

end

end A323855.P7162395483376037088

/-! ## A323855.P16496898273648589703

`A222005(n+1)/A202053(A005817(n))`
-/

namespace A323855.P16496898273648589703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A222005 (n + 1) : ℚ) / (A202053 (A005817 n).toNat : ℚ)

end

end A323855.P16496898273648589703

/-! ## A323855.P13318509593851678274

`gcd(A094307(n+1), A162935(A066121(n+1)))`
-/

namespace A323855.P13318509593851678274
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094307 (n + 1)) (A162935 (A066121 (n + 1)).toNat)

end

end A323855.P13318509593851678274

/-! ## A323855.P6884463490256566445

`A004736(n+1)!*A213275(n)!!/A279060(A260815(2*n+6))`
-/

namespace A323855.P6884463490256566445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A004736 (n + 1)).toNat * Nat.factorial (Nat.factorial (A213275 n).toNat) : ℚ) / (A279060 (A260815 (2 * n + 6)).toNat : ℚ)

end

end A323855.P6884463490256566445

/-!
# A323856: Sum of square displacements over all self-avoiding n-step walks on 4-d cubic lattice with first step specified, A242355(n)/8.

The programs for A323856, there is no canonical definition to state claims against.
-/

/-! ## A323856.P471971508435234768

`A242355(n+1)/8`
-/

namespace A323856.P471971508435234768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242355 (n + 1) : ℚ) / 8

end

end A323856.P471971508435234768

/-! ## A323856.P6789771154852782077

`record[ratio[A242355(A051340(n))]]`
-/

namespace A323856.P6789771154852782077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242355 (A051340 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323856.P6789771154852782077

/-! ## A323856.P17517788548649876796

`record[ratio[A242355(A158416(n))]]`
-/

namespace A323856.P17517788548649876796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242355 (A158416 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323856.P17517788548649876796

/-! ## A323856.P2923935918569871597

`record[ratio[A242355(A193592(n))]]`
-/

namespace A323856.P2923935918569871597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242355 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323856.P2923935918569871597

/-! ## A323856.P12545847251099431176

`record[A242355(A263274(n))/8]`
-/

namespace A323856.P12545847251099431176
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A242355 (A263274 n).toNat : ℚ) / 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323856.P12545847251099431176

/-!
# A323858: Number of toroidal necklaces of positive integers summing to n.

The programs for A323858, there is no canonical definition to state claims against.
-/

/-! ## A323858.P14490921620111555118

`A392446(A171559(n))`
-/

namespace A323858.P14490921620111555118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392446 (A171559 n).toNat

end

end A323858.P14490921620111555118

/-! ## A323858.P18277150196439297454

`A392446(A090129(n+2))`
-/

namespace A323858.P18277150196439297454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392446 (A090129 (n + 2)).toNat

end

end A323858.P18277150196439297454

/-! ## A323858.P6766920029553826756

`A392446(A244750(n+2))`
-/

namespace A323858.P6766920029553826756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392446 (A244750 (n + 2)).toNat

end

end A323858.P6766920029553826756

/-! ## A323858.P4058309784956821448

`A392446(A376478(n+2))`
-/

namespace A323858.P4058309784956821448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392446 (A376478 (n + 2)).toNat

end

end A323858.P4058309784956821448

/-! ## A323858.P15512985217351986081

`A000196(or(A094688(n), A211289(n)))`
-/

namespace A323858.P15512985217351986081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.lor (A094688 n) (A211289 n)).toNat

end

end A323858.P15512985217351986081

/-!
# A323860: Table read by antidiagonals where A(n,k) is the number of n X k aperiodic binary arrays.

The programs for A323860, there is no canonical definition to state claims against.
-/

/-! ## A323860.P12942159994679851438

`A003991(n+1)*A323861(n+1)`
-/

namespace A323860.P12942159994679851438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A323861 (n + 1)

end

end A323860.P12942159994679851438

/-! ## A323860.P6410594300628553163

`A086416(A247714(n))*A323861(n+1)`
-/

namespace A323860.P6410594300628553163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086416 (A247714 n).toNat * A323861 (n + 1)

end

end A323860.P6410594300628553163

/-! ## A323860.P2353696082430245070

`A002265(A098352(n+1))*A323861(n+1)`
-/

namespace A323860.P2353696082430245070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A098352 (n + 1)).toNat * A323861 (n + 1)

end

end A323860.P2353696082430245070

/-! ## A323860.P11167268129013371189

`A002260(n+1)*A004736(n+1)*A323861(n+1)`
-/

namespace A323860.P11167268129013371189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004736 (n + 1) * A323861 (n + 1)

end

end A323860.P11167268129013371189

/-! ## A323860.P9083871964521848396

`A106737(A089633(n))*A323861(n+1)`
-/

namespace A323860.P9083871964521848396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106737 (A089633 n).toNat * A323861 (n + 1)

end

end A323860.P9083871964521848396

/-! ## A323860.P1793711304808141749

`A000005(A036561(n))*A323861(n+1)`
-/

namespace A323860.P1793711304808141749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A036561 n).toNat * A323861 (n + 1)

end

end A323860.P1793711304808141749

/-! ## A323860.P16576366921280446362

`A000005(A175840(n))*A323861(n+1)`
-/

namespace A323860.P16576366921280446362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A175840 n).toNat * A323861 (n + 1)

end

end A323860.P16576366921280446362

/-!
# A323861: Table read by antidiagonals where A(n,k) is the number of n X k aperiodic binary toroidal necklaces.

The programs for A323861, there is no canonical definition to state claims against.
-/

/-! ## A323861.P11876984636581832417

`A323860(n+1)/A003991(n+1)`
-/

namespace A323861.P11876984636581832417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323860 (n + 1) : ℚ) / (A003991 (n + 1) : ℚ)

end

end A323861.P11876984636581832417

/-! ## A323861.P4527667070824032148

`A323860(n+1)/(A059036(n)+1)`
-/

namespace A323861.P4527667070824032148
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323860 (n + 1) : ℚ) / (A059036 n + 1 : ℚ)

end

end A323861.P4527667070824032148

/-! ## A323861.P14696793041690599360

`A323860(n+1)/A086416(A247714(n))`
-/

namespace A323861.P14696793041690599360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323860 (n + 1) : ℚ) / (A086416 (A247714 n).toNat : ℚ)

end

end A323861.P14696793041690599360

/-! ## A323861.P5847156386202091732

`A323860(n+1)/A002265(A098352(n+1))`
-/

namespace A323861.P5847156386202091732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323860 (n + 1) : ℚ) / (A002265 (A098352 (n + 1)).toNat : ℚ)

end

end A323861.P5847156386202091732

/-! ## A323861.P16948011185818890976

`A323860(n+1)/A143996(A185871(n+1))`
-/

namespace A323861.P16948011185818890976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323860 (n + 1) : ℚ) / (A143996 (A185871 (n + 1)).toNat : ℚ)

end

end A323861.P16948011185818890976

/-! ## A323861.P11594796352404363385

`A323860(n+1)/A106737(A089633(n))`
-/

namespace A323861.P11594796352404363385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323860 (n + 1) : ℚ) / (A106737 (A089633 n).toNat : ℚ)

end

end A323861.P11594796352404363385

/-! ## A323861.P239264207587250773

`A323860(n+1)/A000005(A036561(n))`
-/

namespace A323861.P239264207587250773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323860 (n + 1) : ℚ) / (A000005 (A036561 n).toNat : ℚ)

end

end A323861.P239264207587250773

/-! ## A323861.P8030994766730063104

`A323860(n+1)/A000005(A175840(n))`
-/

namespace A323861.P8030994766730063104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323860 (n + 1) : ℚ) / (A000005 (A175840 n).toNat : ℚ)

end

end A323861.P8030994766730063104

/-!
# A323862: Table read by antidiagonals where A(n,k) is the number of n X k binary arrays in which both the sequence of rows and the sequence of columns are (independently) aperiodic.

The programs for A323862, there is no canonical definition to state claims against.
-/

/-! ## A323862.P3199692691788947486

`or(A014197(A046979(n)), A323860(n+1))`
-/

namespace A323862.P3199692691788947486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014197 (A046979 n).toNat) (A323860 (n + 1))

end

end A323862.P3199692691788947486

/-! ## A323862.P6969513500982585183

`or(A001222(A323867(n)²), A323860(n+1))`
-/

namespace A323862.P6969513500982585183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A323867 n ^ 2).toNat) (A323860 (n + 1))

end

end A323862.P6969513500982585183

/-! ## A323862.P5803216398522343486

`A323860(n+1)+A000122(A139590(n+1))`
-/

namespace A323862.P5803216398522343486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323860 (n + 1) + A000122 (A139590 (n + 1)).toNat

end

end A323862.P5803216398522343486

/-! ## A323862.P11952599715097627278

`A323860(n+1)+A092037(A092057(n+1))`
-/

namespace A323862.P11952599715097627278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323860 (n + 1) + A092037 (A092057 (n + 1)).toNat

end

end A323862.P11952599715097627278

/-! ## A323862.P9832110726364413631

`A323860(n+1)+A103270(A038373(n+2))`
-/

namespace A323862.P9832110726364413631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323860 (n + 1) + A103270 (A038373 (n + 2)).toNat

end

end A323862.P9832110726364413631

/-!
# A323863: Number of n X n aperiodic binary arrays.

The programs for A323863, there is no canonical definition to state claims against.
-/

/-! ## A323863.P4497887901575381879

`A253909(n)*A323872(n)`
-/

namespace A323863.P4497887901575381879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253909 n * A323872 n

end

end A323863.P4497887901575381879

/-! ## A323863.P14912378978725875586

`A028310(n²)*A323872(n)`
-/

namespace A323863.P14912378978725875586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (n ^ 2) * A323872 n

end

end A323863.P14912378978725875586

/-! ## A323863.P4893227193947077927

`A274922(n)²*A323872(n)`
-/

namespace A323863.P4893227193947077927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n ^ 2 * A323872 n

end

end A323863.P4893227193947077927

/-! ## A323863.P1195698052287472354

`(A000007(n)+n)²*A323872(n)`
-/

namespace A323863.P1195698052287472354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + (n : ℤ)) ^ 2 * A323872 n

end

end A323863.P1195698052287472354

/-! ## A323863.P17746822198649893289

`gcd(n, A008574(n))²*A323872(n)`
-/

namespace A323863.P17746822198649893289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A008574 n) ^ 2 : ℤ) * A323872 n

end

end A323863.P17746822198649893289

/-!
# A323864: Number of aperiodic binary arrays of size n.

The programs for A323864, there is no canonical definition to state claims against.
-/

/-! ## A323864.P2866226897945971055

`A028310(n)*A323865(n)`
-/

namespace A323864.P2866226897945971055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A323865 n

end

end A323864.P2866226897945971055

/-! ## A323864.P8700628946394831782

`A065033(2*n)*A323865(n)`
-/

namespace A323864.P8700628946394831782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) * A323865 n

end

end A323864.P8700628946394831782

/-! ## A323864.P4339510895777374798

`A000007(n)+n*A323865(n)`
-/

namespace A323864.P4339510895777374798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A323865 n

end

end A323864.P4339510895777374798

/-! ## A323864.P3584127755859102271

`(A004273(n)+1-n)*A323865(n)`
-/

namespace A323864.P3584127755859102271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004273 n + (1 - (n : ℤ))) * A323865 n

end

end A323864.P3584127755859102271

/-! ## A323864.P18282995731879727103

`A008619(A004273(n))*A323865(n)`
-/

namespace A323864.P18282995731879727103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004273 n).toNat * A323865 n

end

end A323864.P18282995731879727103

/-! ## A323864.P5000334869240698341

`A008619(A004275(n))*A323865(n)`
-/

namespace A323864.P5000334869240698341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004275 n).toNat * A323865 n

end

end A323864.P5000334869240698341

/-! ## A323864.P10354452731586835269

`A002260(A179865(n+1))*A323865(n)`
-/

namespace A323864.P10354452731586835269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A179865 (n + 1)).toNat * A323865 n

end

end A323864.P10354452731586835269

/-! ## A323864.P8603825333976304556

`A003991(A152947(n+1))*A323865(n)`
-/

namespace A323864.P8603825333976304556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (A152947 (n + 1)).toNat * A323865 n

end

end A323864.P8603825333976304556

/-! ## A323864.P11739130493111435861

`(n+1-A267848((n+1)²))*A323865(n)`
-/

namespace A323864.P11739130493111435861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) - A267848 ((n + 1) ^ 2)) * A323865 n

end

end A323864.P11739130493111435861

/-!
# A323865: Number of aperiodic binary toroidal necklaces of size n.

The programs for A323865, there is no canonical definition to state claims against.
-/

/-! ## A323865.P3994652575141988454

`A323864(n)/A028310(n)`
-/

namespace A323865.P3994652575141988454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323864 n : ℚ) / (A028310 n : ℚ)

end

end A323865.P3994652575141988454

/-! ## A323865.P2730718540747471952

`abs(A323864(n)/A274922(n))`
-/

namespace A323865.P2730718540747471952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A323864 n : ℚ) / (A274922 n : ℚ)|

end

end A323865.P2730718540747471952

/-! ## A323865.P12504528471743023635

`A323864(n)/A065033(2*n)`
-/

namespace A323865.P12504528471743023635
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323864 n : ℚ) / (A065033 (2 * n) : ℚ)

end

end A323865.P12504528471743023635

/-! ## A323865.P4612579240145522570

`A323864(n)/(A004277(n)-n)`
-/

namespace A323865.P4612579240145522570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323864 n : ℚ) / (A004277 n - (n : ℤ) : ℚ)

end

end A323865.P4612579240145522570

/-! ## A323865.P9331791645531620382

`A323864(n)/A008619(A004273(n))`
-/

namespace A323865.P9331791645531620382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323864 n : ℚ) / (A008619 (A004273 n).toNat : ℚ)

end

end A323865.P9331791645531620382

/-! ## A323865.P10052373307540641914

`A323864(n)/A008619(A004275(n))`
-/

namespace A323865.P10052373307540641914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323864 n : ℚ) / (A008619 (A004275 n).toNat : ℚ)

end

end A323865.P10052373307540641914

/-! ## A323865.P15162871773791691487

`A323864(n)/A026741(A004277(n))`
-/

namespace A323865.P15162871773791691487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323864 n : ℚ) / (A026741 (A004277 n).toNat : ℚ)

end

end A323865.P15162871773791691487

/-! ## A323865.P8558154489710018155

`A323864(n)/A002260(A179865(n+1))`
-/

namespace A323865.P8558154489710018155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323864 n : ℚ) / (A002260 (A179865 (n + 1)).toNat : ℚ)

end

end A323865.P8558154489710018155

/-! ## A323865.P4365602218199154214

`A323864(n)/A002260(A034856(n+1))`
-/

namespace A323865.P4365602218199154214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323864 n : ℚ) / (A002260 (A034856 (n + 1)).toNat : ℚ)

end

end A323865.P4365602218199154214

/-! ## A323865.P14701545213556045302

`A323864(n)/A007318(A000124(n))`
-/

namespace A323865.P14701545213556045302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323864 n : ℚ) / (A007318 (A000124 n).toNat : ℚ)

end

end A323865.P14701545213556045302

/-! ## A323865.P14196347142172476547

`A323864(n)/A003991(A152947(n+1))`
-/

namespace A323865.P14196347142172476547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323864 n : ℚ) / (A003991 (A152947 (n + 1)).toNat : ℚ)

end

end A323865.P14196347142172476547

/-!
# A323866: Number of aperiodic toroidal necklaces of positive integers summing to n.

The programs for A323866, there is no canonical definition to state claims against.
-/

/-! ## A323866.P18216767768519813257

`A102800(or(A034008(n), A078896(n+1)))`
-/

namespace A323866.P18216767768519813257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (Int.lor (A034008 n) (A078896 (n + 1))).toNat

end

end A323866.P18216767768519813257

/-! ## A323866.P14687919116203522941

`A102800(or(A034008(n), A326065(n+1)))`
-/

namespace A323866.P14687919116203522941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102800 (Int.lor (A034008 n) (A326065 (n + 1))).toNat

end

end A323866.P14687919116203522941

/-! ## A323866.P10026834463381872738

`A124758(A270411(n+10)%A001764(n))`
-/

namespace A323866.P10026834463381872738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (Int.tmod (A270411 (n + 10)) (A001764 n)).toNat

end

end A323866.P10026834463381872738

/-!
# A323867: Number of aperiodic arrays of positive integers summing to n.

The programs for A323867, there is no canonical definition to state claims against.
-/

/-! ## A323867.P7602867571558895630

`or(1, A334116(A120588(n)))`
-/

namespace A323867.P7602867571558895630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A334116 (A120588 n).toNat)

end

end A323867.P7602867571558895630

/-! ## A323867.P903926084445791666

`A334116(A120588(n))+A143996(n+1)`
-/

namespace A323867.P903926084445791666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334116 (A120588 n).toNat + A143996 (n + 1)

end

end A323867.P903926084445791666

/-! ## A323867.P13485135590292926898

`A226482(A038357(n+3)-A032741(n))`
-/

namespace A323867.P13485135590292926898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226482 (A038357 (n + 3) - A032741 n).toNat

end

end A323867.P13485135590292926898

/-!
# A323868: Number of matrices of size n whose entries cover an initial interval of positive integers.

The programs for A323868, there is no canonical definition to state claims against.
-/

/-! ## A323868.P5933889425791395243

`A000005(n+1)*A000670(n+1)`
-/

namespace A323868.P5933889425791395243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A000670 (n + 1)

end

end A323868.P5933889425791395243

/-! ## A323868.P15176469193175715160

`A000005(n+1)*record[A154921(n)]`
-/

namespace A323868.P15176469193175715160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323868.P15176469193175715160

/-! ## A323868.P16923866708026298147

`A000005(n+1)*A122101(∑[n+1])`
-/

namespace A323868.P16923866708026298147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A122101 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323868.P16923866708026298147

/-! ## A323868.P4728574257813773520

`A000670(n+1)*A320111(2*(n+1))`
-/

namespace A323868.P4728574257813773520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 (n + 1) * A320111 (2 * (n + 1))

end

end A323868.P4728574257813773520

/-! ## A323868.P16128447836918012861

`(A217389(n+1)-A217389(n))*A000005(n+1)`
-/

namespace A323868.P16128447836918012861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A217389 (n + 1) - A217389 n) * A000005 (n + 1)

end

end A323868.P16128447836918012861

/-! ## A323868.P17918403960812084785

`(A011782(n+1)+A002051(n+2))*A000005(n+1)`
-/

namespace A323868.P17918403960812084785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) + A002051 (n + 2)) * A000005 (n + 1)

end

end A323868.P17918403960812084785

/-! ## A323868.P11533602840756982471

`A000005(n+1)*record[A261959(n)]`
-/

namespace A323868.P11533602840756982471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323868.P11533602840756982471

/-!
# A323869: Number of aperiodic matrices of size n whose entries cover an initial interval of positive integers.

The programs for A323869, there is no canonical definition to state claims against.
-/

/-! ## A323869.P16307579936368874885

`(n+1)*A323871(n+1)`
-/

namespace A323869.P16307579936368874885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A323871 (n + 1)

end

end A323869.P16307579936368874885

/-! ## A323869.P6949989022386233062

`record[A323871(A324347(n))*A324347(n)]`
-/

namespace A323869.P6949989022386233062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323871 (A324347 n).toNat * A324347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323869.P6949989022386233062

/-! ## A323869.P4505635852507947562

`A323871(A381225(n))*A381225(n)`
-/

namespace A323869.P4505635852507947562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323871 (A381225 n).toNat * A381225 n

end

end A323869.P4505635852507947562

/-!
# A323871: Number of aperiodic toroidal necklaces of size n whose entries cover an initial interval of positive integers.

The programs for A323871, there is no canonical definition to state claims against.
-/

/-! ## A323871.P2863310736303529627

`A323869(n+1)/(n+1)`
-/

namespace A323871.P2863310736303529627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323869 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A323871.P2863310736303529627

/-! ## A323871.P10547622599646184560

`record[A323869(A193592(n))/A193592(n)]`
-/

namespace A323871.P10547622599646184560
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323869 (A193592 n).toNat : ℚ) / (A193592 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323871.P10547622599646184560

/-! ## A323871.P16471831409846042317

`(n+1)^A008683(A001914(n+1))*A323869(n+1)`
-/

namespace A323871.P16471831409846042317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A001914 (n + 1)).toNat : ℤ) * (A323869 (n + 1) : ℚ)

end

end A323871.P16471831409846042317

/-!
# A323872: Number of n X n aperiodic binary toroidal necklaces.

The programs for A323872, there is no canonical definition to state claims against.
-/

/-! ## A323872.P7713764423071446856

`A323863(n)/n^ceil(atan(n))`
-/

namespace A323872.P7713764423071446856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323863 n : ℚ) / (n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ)

end

end A323872.P7713764423071446856

/-! ## A323872.P8447990093670861063

`A323863(n)/A253909(n)`
-/

namespace A323872.P8447990093670861063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323863 n : ℚ) / (A253909 n : ℚ)

end

end A323872.P8447990093670861063

/-! ## A323872.P1286812475390998807

`A323863(n)/A028310(n²)`
-/

namespace A323872.P1286812475390998807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323863 n : ℚ) / (A028310 (n ^ 2) : ℚ)

end

end A323872.P1286812475390998807

/-! ## A323872.P1798628198562916887

`A323863(n)/A029635(A027379(n))`
-/

namespace A323872.P1798628198562916887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323863 n : ℚ) / (A029635 (A027379 n).toNat : ℚ)

end

end A323872.P1798628198562916887

/-! ## A323872.P2843372545153382198

`A323863(n)/A093995(A179865(n+1))`
-/

namespace A323872.P2843372545153382198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A323863 n : ℚ) / (A093995 (A179865 (n + 1)).toNat : ℚ)

end

end A323872.P2843372545153382198

/-!
# A323874: Irregular triangle of 13^k mod prime(n).

The programs for A323874, there is no canonical definition to state claims against.
-/

/-! ## A323874.P11331261382761536606

`A302247(A339106(n+1)+A289223(n+2))`
-/

namespace A323874.P11331261382761536606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302247 (A339106 (n + 1) + A289223 (n + 2)).toNat

end

end A323874.P11331261382761536606

/-! ## A323874.P5795197701047379591

`A302247(A289223(n+2)+A302247(n+1)²)`
-/

namespace A323874.P5795197701047379591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302247 (A289223 (n + 2) + A302247 (n + 1) ^ 2).toNat

end

end A323874.P5795197701047379591

/-!
# A323875: Number of labeled graphs on n nodes with two connected components.

The programs for A323875, there is no canonical definition to state claims against.
-/

/-! ## A323875.P7358030571798015669

`record[A002262(n)*A143543(n+1)]`
-/

namespace A323875.P7358030571798015669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n * A143543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323875.P7358030571798015669

/-! ## A323875.P18425316150598725809

`record[A143543(n+1)*A303301(n)]`
-/

namespace A323875.P18425316150598725809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143543 (n + 1) * A303301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323875.P18425316150598725809

/-! ## A323875.P11120873838623197521

`record[char[A000124(n)]*A143543(n+1)]`
-/

namespace A323875.P11120873838623197521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A143543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323875.P11120873838623197521

/-! ## A323875.P3463119699000876666

`record[A143538(n+1)*A143543(n+1)]`
-/

namespace A323875.P3463119699000876666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143538 (n + 1) * A143543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A323875.P3463119699000876666

/-! ## A323875.P15512547296976714402

`A057427(n)*A143543(A133263(n))`
-/

namespace A323875.P15512547296976714402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A143543 (A133263 n).toNat

end

end A323875.P15512547296976714402

/-!
# A323876: Number of labeled graphs on n nodes with three connected components.

The programs for A323876, there is no canonical definition to state claims against.
-/

/-! ## A323876.P9568431917650673395

`A143543(A152950(n+1))%A001142(n)`
-/

namespace A323876.P9568431917650673395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A143543 (A152950 (n + 1)).toNat) (A001142 n)

end

end A323876.P9568431917650673395

/-! ## A323876.P4316153053676390533

`A288156(A006367(∑[n]))`
-/

namespace A323876.P4316153053676390533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288156 (A006367 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A323876.P4316153053676390533

/-!
# A323877: Number of labeled graphs on n nodes with four connected components.

The programs for A323877, there is no canonical definition to state claims against.
-/

/-! ## A323877.P3015137944244089788

`A025463(xor(9, A302352(n)))`
-/

namespace A323877.P3015137944244089788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025463 (Int.xor 9 (A302352 n)).toNat

end

end A323877.P3015137944244089788

/-!
# A323878: Number of divisors d of n such that A276086(d) divides n.

The programs for A323878, there is no canonical definition to state claims against.
-/

/-! ## A323878.P17412552901737304498

`A181108(A325249(2*n+5))%A053589(n+1)`
-/

namespace A323878.P17412552901737304498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181108 (A325249 (2 * n + 5)).toNat) (A053589 (n + 1))

end

end A323878.P17412552901737304498

/-! ## A323878.P4422284218572487575

`A049828(A257993(n+1)+A014105(2*n+1))`
-/

namespace A323878.P4422284218572487575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049828 (A257993 (n + 1) + A014105 (2 * n + 1)).toNat

end

end A323878.P4422284218572487575

/-! ## A323878.P9907792871739910581

`val(A007623((n+1)²*∏{p}[n+1, #]), 5)`
-/

namespace A323878.P9907792871739910581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007623 ((n + 1) ^ 2 * (∏ p ∈ Nat.primeFactors (f1 n), p))).toNat 5

end

end A323878.P9907792871739910581

/-! ## A323878.P6206306076550710903

`A007814(A275727(Δ[∑[n]²]))`
-/

namespace A323878.P6206306076550710903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A275727 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A323878.P6206306076550710903

/-! ## A323878.P5995328497420404581

`A230403((n+1)²*A210700(n+4))`
-/

namespace A323878.P5995328497420404581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230403 (((n + 1) ^ 2 : ℤ) * A210700 (n + 4)).toNat

end

end A323878.P5995328497420404581

/-!
# A323879: Number of divisors d of n such that A276154(d) divides n.

The programs for A323879, there is no canonical definition to state claims against.
-/

/-! ## A323879.P18122000330033390372

`A284413(A140007(n+1)-(n+3))`
-/

namespace A323879.P18122000330033390372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284413 (A140007 (n + 1) - (n + 3 : ℤ)).toNat

end

end A323879.P18122000330033390372

/-! ## A323879.P3614498851763292353

`A168570(A241986(n))`
-/

namespace A323879.P3614498851763292353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168570 (A241986 n).toNat

end

end A323879.P3614498851763292353

/-! ## A323879.P1535079365869888338

`A129308(A132231(n+1)+A051866(n))`
-/

namespace A323879.P1535079365869888338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (A132231 (n + 1) + A051866 n).toNat

end

end A323879.P1535079365869888338

/-! ## A323879.P8552487911446572609

`A328167(A328166(n+1)%A328190(3*(n+1)))`
-/

namespace A323879.P8552487911446572609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328167 (Int.tmod (A328166 (n + 1)) (A328190 (3 * (n + 1)))).toNat

end

end A323879.P8552487911446572609

/-! ## A323879.P38734612283181953

`A091002(A336917(n+1))+A276084(n+1)^A236938(n)`
-/

namespace A323879.P38734612283181953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A091002 (A336917 (n + 1)).toNat : ℚ) + (A276084 (n + 1) : ℚ) ^ (A236938 n : ℤ)

end

end A323879.P38734612283181953

/-!
# A323880: Number of divisors d > 1 of n such that A003415(d) divides n, where A003415 gives the arithmetic derivative of n.

The programs for A323880, there is no canonical definition to state claims against.
-/

/-! ## A323880.P16610365144085635698

`A073424(record[C(n, 3)-n])+A056924(n+1)`
-/

namespace A323880.P16610365144085635698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 3 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + A056924 (n + 1)

end

end A323880.P16610365144085635698

/-! ## A323880.P15227460041209450213

`A073424(A005586(n))+A056924(n+1)`
-/

namespace A323880.P15227460041209450213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A005586 n).toNat + A056924 (n + 1)

end

end A323880.P15227460041209450213

/-! ## A323880.P16650753975458875146

`A056924(n+1)+A010052(A067726(n+1))`
-/

namespace A323880.P16650753975458875146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) + A010052 (A067726 (n + 1)).toNat

end

end A323880.P16650753975458875146

/-! ## A323880.P4933497661192523964

`A056924(n+1)+A003982(A246479(n+1))`
-/

namespace A323880.P4933497661192523964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) + A003982 (A246479 (n + 1)).toNat

end

end A323880.P4933497661192523964

/-! ## A323880.P9663334593243346012

`A056924(n+1)+A036987(A269075(n+1))`
-/

namespace A323880.P9663334593243346012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) + A036987 (A269075 (n + 1)).toNat

end

end A323880.P9663334593243346012

/-!
# A323881: Dirichlet inverse of A126760.

The programs for A323881, there is no canonical definition to state claims against.
-/

/-! ## A323881.P3693895793844961777

`A323882(n+1)-A126760(n+1)`
-/

namespace A323881.P3693895793844961777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (n + 1) - A126760 (n + 1)

end

end A323881.P3693895793844961777

/-! ## A323881.P16743013221545154389

`∑{d}[n+1, A349134(#)*A353461((n+1)/#)]`
-/

namespace A323881.P16743013221545154389
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349134 d * A353461 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323881.P16743013221545154389

/-! ## A323881.P4205100760473146987

`A323882(n+1)-(A359165(n+1)+A347233(n+1))`
-/

namespace A323881.P4205100760473146987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (n + 1) - (A359165 (n + 1) + A347233 (n + 1))

end

end A323881.P4205100760473146987

/-! ## A323881.P6011896485587013733

`A323882(n+1)-A254048(A005843(n+1))`
-/

namespace A323881.P6011896485587013733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (n + 1) - A254048 (A005843 (n + 1)).toNat

end

end A323881.P6011896485587013733

/-! ## A323881.P15601140731172615076

`A323882(n+1)-A359165(2*(n+1))`
-/

namespace A323881.P15601140731172615076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (n + 1) - A359165 (2 * (n + 1))

end

end A323881.P15601140731172615076

/-! ## A323881.P6904423671300827517

`A323882(n+1)-A323882(4*(n+1))`
-/

namespace A323881.P6904423671300827517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323882 (n + 1) - A323882 (4 * (n + 1))

end

end A323881.P6904423671300827517

/-!
# A323882: Sum of A126760 and its Dirichlet inverse.

The programs for A323882, there is no canonical definition to state claims against.
-/

/-! ## A323882.P13190455578190116371

`A126760(n+1)+A323881(n+1)`
-/

namespace A323882.P13190455578190116371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (n + 1) + A323881 (n + 1)

end

end A323882.P13190455578190116371

/-! ## A323882.P5553810832747376689

`A323881(n+1)+A008620(A065330(n+1))`
-/

namespace A323882.P5553810832747376689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323881 (n + 1) + A008620 (A065330 (n + 1)).toNat

end

end A323882.P5553810832747376689

/-! ## A323882.P2343032395388384948

`A323881(n+1)+A253887(A003602(n+1))`
-/

namespace A323882.P2343032395388384948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323881 (n + 1) + A253887 (A003602 (n + 1)).toNat

end

end A323882.P2343032395388384948

/-! ## A323882.P10382614074637084686

`A323881(n+1)+A322317(A214681(n+1))`
-/

namespace A323882.P10382614074637084686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323881 (n + 1) + A322317 (A214681 (n + 1)).toNat

end

end A323882.P10382614074637084686

/-! ## A323882.P12066007399226551296

`A323881(n+1)+A254048(A109043(n+1))`
-/

namespace A323882.P12066007399226551296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323881 (n + 1) + A254048 (A109043 (n + 1)).toNat

end

end A323882.P12066007399226551296

/-! ## A323882.P12028333446353852946

`A359165(2*(n+1))+A323881(n+1)`
-/

namespace A323882.P12028333446353852946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359165 (2 * (n + 1)) + A323881 (n + 1)

end

end A323882.P12028333446353852946

/-!
# A323883: Dirichlet inverse of A322026.

The programs for A323883, there is no canonical definition to state claims against.
-/

/-! ## A323883.P2675109297097164614

`A323884(n+1)-A322026(n+1)`
-/

namespace A323883.P2675109297097164614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323884 (n + 1) - A322026 (n + 1)

end

end A323883.P2675109297097164614

/-! ## A323883.P17571290666319917687

`A323884(n+1)-A071521(A065331(n+1))`
-/

namespace A323883.P17571290666319917687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323884 (n + 1) - A071521 (A065331 (n + 1)).toNat

end

end A323883.P17571290666319917687

/-! ## A323883.P3750471788459563216

`A323884(n+1)-A078899(3*A065331(n+1))`
-/

namespace A323883.P3750471788459563216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323884 (n + 1) - A078899 (3 * A065331 (n + 1)).toNat

end

end A323883.P3750471788459563216

/-! ## A323883.P1854287384808552773

`A323884(n+1)-A323884(25*(n+1))`
-/

namespace A323883.P1854287384808552773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323884 (n + 1) - A323884 (25 * (n + 1))

end

end A323883.P1854287384808552773

/-!
# A323884: Sum of A322026 and its Dirichlet inverse.

The programs for A323884, there is no canonical definition to state claims against.
-/

/-! ## A323884.P16236164734543793435

`A322026(n+1)+A323883(n+1)`
-/

namespace A323884.P16236164734543793435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322026 (n + 1) + A323883 (n + 1)

end

end A323884.P16236164734543793435

/-! ## A323884.P16022209092230513264

`A323883(n+1)+A071521(A065331(n+1))`
-/

namespace A323884.P16022209092230513264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323883 (n + 1) + A071521 (A065331 (n + 1)).toNat

end

end A323884.P16022209092230513264

/-! ## A323884.P12809040553747912212

`A323883(n+1)+A071521(A006519(n+1)*A038500(n+1))`
-/

namespace A323884.P12809040553747912212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323883 (n + 1) + A071521 (A006519 (n + 1) * A038500 (n + 1)).toNat

end

end A323884.P12809040553747912212

/-! ## A323884.P7271780924516691429

`A323883(n+1)+A071521(2^A007814(n+1)*3^A007949(n+1))`
-/

namespace A323884.P7271780924516691429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323883 (n + 1) + A071521 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A007814 (n + 1) : ℤ) * (3 : ℚ) ^ (A007949 (n + 1) : ℤ))).toNat

end

end A323884.P7271780924516691429

/-! ## A323884.P2572600885809249425

`A323883(n+1)+A078899(3*A065331(n+1))`
-/

namespace A323884.P2572600885809249425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323883 (n + 1) + A078899 (3 * A065331 (n + 1)).toNat

end

end A323884.P2572600885809249425

/-!
# A323885: Sum of A001511 and its Dirichlet inverse.

The programs for A323885, the canonical program `A323885.P16180047191006952152` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A323885 has offset 1).

The definition of A323885 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A092673, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A323885.P16180047191006952152

`A001511(n+1)+A092673(n+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A323885

/-- `A001511(n+1)+A092673(n+1)` -/
def P16180047191006952152.Spec : Prop :=
  ∀ n, P16180047191006952152.a n = A323885 (n + 1)

theorem P16180047191006952152.correct : P16180047191006952152.Spec := by
  intro n
  simp only [A323885, Nat.add_sub_cancel]

end A323885

/-! ## A323885.P2116451761511456959

`A092673(n+1)+2-Δ[A000120(n)]`
-/

namespace A323885.P2116451761511456959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1) + (2 - (f1 (n + 1) - f1 n))

end

end A323885.P2116451761511456959

namespace A323885

/-- `A092673(n+1)+2-Δ[A000120(n)]` -/
def P2116451761511456959.Spec : Prop :=
  ∀ n, P2116451761511456959.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P12945804084598693416

`A007814(n+1)+A092673(n+1)+1`
-/

namespace A323885.P12945804084598693416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1) + (A092673 (n + 1) + 1)

end

end A323885.P12945804084598693416

namespace A323885

/-- `A007814(n+1)+A092673(n+1)+1` -/
def P12945804084598693416.Spec : Prop :=
  ∀ n, P12945804084598693416.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P15605860504889715737

`A092673(n+1)+A001222(xor(n, n+1)+1)`
-/

namespace A323885.P15605860504889715737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1) + A001222 (Nat.xor n (n + 1) + 1)

end

end A323885.P15605860504889715737

namespace A323885

/-- `A092673(n+1)+A001222(xor(n, n+1)+1)` -/
def P15605860504889715737.Spec : Prop :=
  ∀ n, P15605860504889715737.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P10726887584298954425

`A092673(n+1)+A000005(and(n+1, -(n+1)))`
-/

namespace A323885.P10726887584298954425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1) + A000005 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ))).toNat

end

end A323885.P10726887584298954425

namespace A323885

/-- `A092673(n+1)+A000005(and(n+1, -(n+1)))` -/
def P10726887584298954425.Spec : Prop :=
  ∀ n, P10726887584298954425.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P4646187677008334972

`A250243(log2(xor(n, n+1)+1))+A092673(n+1)`
-/

namespace A323885.P4646187677008334972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250243 (SequenceMachineLib.roundAway (Real.logb 2 (Nat.xor n (n + 1) + 1 : ℝ))).toNat + A092673 (n + 1)

end

end A323885.P4646187677008334972

namespace A323885

/-- `A250243(log2(xor(n, n+1)+1))+A092673(n+1)` -/
def P4646187677008334972.Spec : Prop :=
  ∀ n, P4646187677008334972.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P353372780804762417

`A092673(n+1)+A000005(xor(n, n+1)+1)-1`
-/

namespace A323885.P353372780804762417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1) + (A000005 (Nat.xor n (n + 1) + 1) - 1)

end

end A323885.P353372780804762417

namespace A323885

/-- `A092673(n+1)+A000005(xor(n, n+1)+1)-1` -/
def P353372780804762417.Spec : Prop :=
  ∀ n, P353372780804762417.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P10170442237604896505

`A092673(n+1)+A000005(n+1-and(n, n+1))`
-/

namespace A323885.P10170442237604896505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1) + A000005 (n + 1 - Nat.land n (n + 1))

end

end A323885.P10170442237604896505

namespace A323885

/-- `A092673(n+1)+A000005(n+1-and(n, n+1))` -/
def P10170442237604896505.Spec : Prop :=
  ∀ n, P10170442237604896505.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P3380409238483770771

`A092673(n+1)+A001222(or(n, n+1)-n)+1`
-/

namespace A323885.P3380409238483770771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1) + (A001222 (Nat.lor n (n + 1) - n) + 1)

end

end A323885.P3380409238483770771

namespace A323885

/-- `A092673(n+1)+A001222(or(n, n+1)-n)+1` -/
def P3380409238483770771.Spec : Prop :=
  ∀ n, P3380409238483770771.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P118382835284721560

`A092673(n+1)+A000005(xor(n+1, and(n, n+1)))`
-/

namespace A323885.P118382835284721560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1) + A000005 (Nat.xor (n + 1) (Nat.land n (n + 1)))

end

end A323885.P118382835284721560

namespace A323885

/-- `A092673(n+1)+A000005(xor(n+1, and(n, n+1)))` -/
def P118382835284721560.Spec : Prop :=
  ∀ n, P118382835284721560.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P16330425529594631430

`A250243(∑{e}[xor(n, n+1)+1, #])+A092673(n+1)`
-/

namespace A323885.P16330425529594631430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250243 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + A092673 (n + 1)

end

end A323885.P16330425529594631430

namespace A323885

/-- `A250243(∑{e}[xor(n, n+1)+1, #])+A092673(n+1)` -/
def P16330425529594631430.Spec : Prop :=
  ∀ n, P16330425529594631430.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P11543799676791359370

`A250243(∏{e}[xor(n, n+1)+1, #])+A092673(n+1)`
-/

namespace A323885.P11543799676791359370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250243 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) + A092673 (n + 1)

end

end A323885.P11543799676791359370

namespace A323885

/-- `A250243(∏{e}[xor(n, n+1)+1, #])+A092673(n+1)` -/
def P11543799676791359370.Spec : Prop :=
  ∀ n, P11543799676791359370.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P14375561028869044696

`A250243(log2(and(n+1, -(n+1)))+1)+A092673(n+1)`
-/

namespace A323885.P14375561028869044696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250243 (SequenceMachineLib.roundAway (Real.logb 2 (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℝ) + 1)).toNat + A092673 (n + 1)

end

end A323885.P14375561028869044696

namespace A323885

/-- `A250243(log2(and(n+1, -(n+1)))+1)+A092673(n+1)` -/
def P14375561028869044696.Spec : Prop :=
  ∀ n, P14375561028869044696.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P6840198437166521493

`A250243(log2(1-and(n, n+1)+n)+1)+A092673(n+1)`
-/

namespace A323885.P6840198437166521493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250243 (SequenceMachineLib.roundAway (Real.logb 2 (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) : ℝ) + 1)).toNat + A092673 (n + 1)

end

end A323885.P6840198437166521493

namespace A323885

/-- `A250243(log2(1-and(n, n+1)+n)+1)+A092673(n+1)` -/
def P6840198437166521493.Spec : Prop :=
  ∀ n, P6840198437166521493.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P11040917333986194881

`A005187(n+1)+A092673(n+1)-A005187(n)`
-/

namespace A323885.P11040917333986194881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 (n + 1) + (A092673 (n + 1) - A005187 n)

end

end A323885.P11040917333986194881

namespace A323885

/-- `A005187(n+1)+A092673(n+1)-A005187(n)` -/
def P11040917333986194881.Spec : Prop :=
  ∀ n, P11040917333986194881.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P6517970086163307528

`A092673(n+1)+A287896(n+1)/A002487(n+1)`
-/

namespace A323885.P6517970086163307528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092673 (n + 1) : ℚ) + (A287896 (n + 1) : ℚ) / (A002487 (n + 1) : ℚ)

end

end A323885.P6517970086163307528

namespace A323885

/-- `A092673(n+1)+A287896(n+1)/A002487(n+1)` -/
def P6517970086163307528.Spec : Prop :=
  ∀ n, P6517970086163307528.a n = (A323885 (n + 1) : ℚ)

end A323885

/-! ## A323885.P506615608765563407

`A001511(n+1)+A001511(A001511(n+1))*A092152(n+1)`
-/

namespace A323885.P506615608765563407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (n + 1) + A001511 (A001511 (n + 1)).toNat * A092152 (n + 1)

end

end A323885.P506615608765563407

namespace A323885

/-- `A001511(n+1)+A001511(A001511(n+1))*A092152(n+1)` -/
def P506615608765563407.Spec : Prop :=
  ∀ n, P506615608765563407.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P12521163669823926771

`A092673(n+1)+A101925(n+1)-A101925(n)`
-/

namespace A323885.P12521163669823926771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (n + 1) + (A101925 (n + 1) - A101925 n)

end

end A323885.P12521163669823926771

namespace A323885

/-- `A092673(n+1)+A101925(n+1)-A101925(n)` -/
def P12521163669823926771.Spec : Prop :=
  ∀ n, P12521163669823926771.a n = A323885 (n + 1)

end A323885

/-! ## A323885.P18078214132754878186

`A094267(2*n)+A092673(n+1)`
-/

namespace A323885.P18078214132754878186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 (2 * n) + A092673 (n + 1)

end

end A323885.P18078214132754878186

namespace A323885

/-- `A094267(2*n)+A092673(n+1)` -/
def P18078214132754878186.Spec : Prop :=
  ∀ n, P18078214132754878186.a n = A323885 (n + 1)

end A323885

/-!
# A323886: Dirichlet inverse of A004718, Per Nørgård's "infinity sequence".

The programs for A323886, there is no canonical definition to state claims against.
-/

/-! ## A323886.P34353871816312623

`A323887(n+1)-∑[A256187(n)]`
-/

namespace A323886.P34353871816312623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323887 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323886.P34353871816312623

/-! ## A323886.P18333426186518543751

`A323887(n+1)-Δ[A274604(n)]`
-/

namespace A323886.P18333426186518543751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323887 (n + 1) - (f1 (n + 1) - f1 n)

end

end A323886.P18333426186518543751

/-! ## A323886.P2937847536176051822

`A323887(n+1)-A004718(n+1)`
-/

namespace A323886.P2937847536176051822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323887 (n + 1) - A004718 (n + 1)

end

end A323886.P2937847536176051822

/-! ## A323886.P5553541541727304177

`A323887(n+1)-A323887(4*(n+1))`
-/

namespace A323886.P5553541541727304177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323887 (n + 1) - A323887 (4 * (n + 1))

end

end A323886.P5553541541727304177

/-! ## A323886.P8379324794404350623

`A323887(n+1)-A195017(A005940(n+2))`
-/

namespace A323886.P8379324794404350623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323887 (n + 1) - A195017 (A005940 (n + 2)).toNat

end

end A323886.P8379324794404350623

/-!
# A323887: Sum of Per Nørgård's "infinity sequence" (A004718) and its Dirichlet inverse (A323886).

The programs for A323887, there is no canonical definition to state claims against.
-/

/-! ## A323887.P14420071683564612516

`A004718(n+1)+A323886(n+1)`
-/

namespace A323887.P14420071683564612516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 (n + 1) + A323886 (n + 1)

end

end A323887.P14420071683564612516

/-! ## A323887.P1242376589605869242

`A323886(n+1)+∑[A256187(n)]`
-/

namespace A323887.P1242376589605869242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323886 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323887.P1242376589605869242

/-! ## A323887.P2856771081118481169

`A323886(n+1)+Δ[A274604(n)]`
-/

namespace A323887.P2856771081118481169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323886 (n + 1) + (f1 (n + 1) - f1 n)

end

end A323887.P2856771081118481169

/-! ## A323887.P11646309515782336873

`A323886(n+1)+A065620(A323908(n+1))`
-/

namespace A323887.P11646309515782336873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323886 (n + 1) + A065620 (A323908 (n + 1)).toNat

end

end A323887.P11646309515782336873

/-! ## A323887.P13866221462308417900

`A323886(n+1)+A117966(A323909(n+1))`
-/

namespace A323887.P13866221462308417900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323886 (n + 1) + A117966 (A323909 (n + 1)).toNat

end

end A323887.P13866221462308417900

/-! ## A323887.P4597550561719589952

`A323886(n+1)+A085144(A010078(n+2))`
-/

namespace A323887.P4597550561719589952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323886 (n + 1) + A085144 (A010078 (n + 2)).toNat

end

end A323887.P4597550561719589952

/-!
# A323888: Lexicographically earliest sequence such that for all i, j, a(i) = a(j) => f(i) = f(j) where f(n) = [A032742(n),A302042(n)] for all n > 1, with f(1) = 0.

The programs for A323888, there is no canonical definition to state claims against.
-/

/-! ## A323888.P12362331716888831243

`A325564(lt[A075206(n+1), A325517(n)])`
-/

namespace A323888.P12362331716888831243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A323888.P12362331716888831243

/-! ## A323888.P686104538727907995

`A325564(∑[A178688(n+1)!])`
-/

namespace A323888.P686104538727907995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A178688 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325564 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A323888.P686104538727907995

/-! ## A323888.P5246123044025940649

`A032742(n+1)%A018502(n)+1`
-/

namespace A323888.P5246123044025940649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032742 (n + 1)) (A018502 n) + 1

end

end A323888.P5246123044025940649

/-! ## A323888.P4621067365401183164

`A325564(n+1)%A132313(n+1)`
-/

namespace A323888.P4621067365401183164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325564 (n + 1)) (A132313 (n + 1))

end

end A323888.P4621067365401183164

/-!
# A323889: Lexicographically earliest positive sequence such that a(i) = a(j) => A002487(i) = A002487(j) and A278222(i) = A278222(j), for all i, j >= 0.

The programs for A323889, there is no canonical definition to state claims against.
-/

/-! ## A323889.P18162008028021515020

`A340717(n)+A054977(A002732(3*n+4))`
-/

namespace A323889.P18162008028021515020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340717 n + A054977 (A002732 (3 * n + 4)).toNat

end

end A323889.P18162008028021515020

/-! ## A323889.P15999912181628176522

`A340717(n)+A078898(A002144(2*n+3))`
-/

namespace A323889.P15999912181628176522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340717 n + A078898 (A002144 (2 * n + 3)).toNat

end

end A323889.P15999912181628176522

/-! ## A323889.P3753675105938253295

`A037213(A340717(n)²)+1`
-/

namespace A323889.P3753675105938253295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A340717 n ^ 2).toNat + 1

end

end A323889.P3753675105938253295

/-! ## A323889.P1161189503428072884

`1-A196199(A340717(n)²)`
-/

namespace A323889.P1161189503428072884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A196199 (A340717 n ^ 2).toNat

end

end A323889.P1161189503428072884

/-! ## A323889.P13539129922322753512

`abs(A196199(A340717(2*n)²))+1`
-/

namespace A323889.P13539129922322753512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A196199 (A340717 (2 * n) ^ 2).toNat| + 1

end

end A323889.P13539129922322753512

/-! ## A323889.P9267339831759968071

`A008619(A000267(A340717(n)²))`
-/

namespace A323889.P9267339831759968071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000267 (A340717 n ^ 2).toNat).toNat

end

end A323889.P9267339831759968071

/-! ## A323889.P8279113948452557419

`A340717(n)+A340677(A119317(n+1))`
-/

namespace A323889.P8279113948452557419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340717 n + A340677 (A119317 (n + 1)).toNat

end

end A323889.P8279113948452557419

/-! ## A323889.P4314174881497096251

`A340717(n)+A340676(A119317(2*n+3))`
-/

namespace A323889.P4314174881497096251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340717 n + A340676 (A119317 (2 * n + 3)).toNat

end

end A323889.P4314174881497096251

/-! ## A323889.P9290051654216703318

`A340717(n)+A257261(A106856(2*n+3))`
-/

namespace A323889.P9290051654216703318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340717 n + A257261 (A106856 (2 * n + 3)).toNat

end

end A323889.P9290051654216703318

/-! ## A323889.P7859200130022943746

`A002260(A005408(A340717(n)²))`
-/

namespace A323889.P7859200130022943746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A005408 (A340717 n ^ 2).toNat).toNat

end

end A323889.P7859200130022943746

/-! ## A323889.P14621268587471765457

`A131818(2*A340717(n)²+1)`
-/

namespace A323889.P14621268587471765457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (2 * A340717 n ^ 2 + 1).toNat

end

end A323889.P14621268587471765457

/-! ## A323889.P295198389434699884

`A340717(n)-A008683(A002146(n))`
-/

namespace A323889.P295198389434699884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340717 n - A008683 (A002146 n).toNat

end

end A323889.P295198389434699884

/-! ## A323889.P15515265994653035648

`A340717(n)+A047999(∑[n]-n)`
-/

namespace A323889.P15515265994653035648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340717 n + A047999 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A323889.P15515265994653035648

/-! ## A323889.P4313334960099443066

`A134868(∑[n]+A340717(n)-n+1)`
-/

namespace A323889.P4313334960099443066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134868 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A340717 n - (n : ℤ)) + 1).toNat

end

end A323889.P4313334960099443066

/-! ## A323889.P10946757090491894863

`A340717(n)+(2-A154754(n+1))²`
-/

namespace A323889.P10946757090491894863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340717 n + (2 - A154754 (n + 1)) ^ 2

end

end A323889.P10946757090491894863

/-! ## A323889.P3099736966502862512

`1-(A008437(n²)-A340717(n))`
-/

namespace A323889.P3099736966502862512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A008437 (n ^ 2) - A340717 n)

end

end A323889.P3099736966502862512

/-!
# A323891: a(n) is the number of partitions of 72*n + 42 into 10 odd squares.

The programs for A323891, there is no canonical definition to state claims against.
-/

/-! ## A323891.P11328395848511511958

`A235963(A006408(n+2))`
-/

namespace A323891.P11328395848511511958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A006408 (n + 2)).toNat

end

end A323891.P11328395848511511958

/-! ## A323891.P4597385906063908519

`A205560(A003453(2*n+5)*A003453(n+5))-1`
-/

namespace A323891.P4597385906063908519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205560 (A003453 (2 * n + 5) * A003453 (n + 5)).toNat - 1

end

end A323891.P4597385906063908519

/-!
# A323893: Dirichlet inverse of A048673, where A048673(n) = (A003961(n)+1) / 2, and A003961 is fully multiplicative with a(prime(i)) = prime(i+1).

The programs for A323893, there is no canonical definition to state claims against.
-/

/-! ## A323893.P6340056659116339662

`A349134(A003961(n+1))`
-/

namespace A323893.P6340056659116339662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349134 (A003961 (n + 1)).toNat

end

end A323893.P6340056659116339662

/-! ## A323893.P6810022411511071979

`∑{d}[n+1, A378520(#)]`
-/

namespace A323893.P6810022411511071979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A378520 d

end

end A323893.P6810022411511071979

/-! ## A323893.P8606173412449159965

`A323894(n+1)-A048673(n+1)`
-/

namespace A323893.P8606173412449159965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323894 (n + 1) - A048673 (n + 1)

end

end A323893.P8606173412449159965

/-! ## A323893.P3126692592917153113

`A323894(n+1)-round(A249734(n+1)/6)`
-/

namespace A323893.P3126692592917153113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323894 (n + 1) - SequenceMachineLib.roundAway ((A249734 (n + 1) : ℚ) / 6)

end

end A323893.P3126692592917153113

/-! ## A323893.P4775911372555166093

`∑{d}[n+1, A055615(#)*A349572((n+1)/#)]`
-/

namespace A323893.P4775911372555166093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A349572 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323893.P4775911372555166093

/-! ## A323893.P9975577698441628236

`∑{d}[n+1, A346234(#)*A349384((n+1)/#)]`
-/

namespace A323893.P9975577698441628236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A346234 d * A349384 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323893.P9975577698441628236

/-! ## A323893.P10564263272860307807

`∑{d}[n+1, A349358(#)*A349397((n+1)/#)]`
-/

namespace A323893.P10564263272860307807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349358 d * A349397 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323893.P10564263272860307807

/-! ## A323893.P10282875598916084113

`A323894(n+1)-A003602(A003961(n+1))`
-/

namespace A323893.P10282875598916084113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323894 (n + 1) - A003602 (A003961 (n + 1)).toNat

end

end A323893.P10282875598916084113

/-!
# A323894: Sum of A048673 and its Dirichlet inverse, A323893.

The programs for A323894, there is no canonical definition to state claims against.
-/

/-! ## A323894.P13307894681266451843

`A048673(n+1)+A323893(n+1)`
-/

namespace A323894.P13307894681266451843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048673 (n + 1) + A323893 (n + 1)

end

end A323894.P13307894681266451843

/-! ## A323894.P13091017768129118933

`A349135(A003961(n+1))`
-/

namespace A323894.P13091017768129118933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349135 (A003961 (n + 1)).toNat

end

end A323894.P13091017768129118933

/-! ## A323894.P16775078299569629410

`A349345(A243501(n+1)-1)`
-/

namespace A323894.P16775078299569629410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349345 (A243501 (n + 1) - 1).toNat

end

end A323894.P16775078299569629410

/-! ## A323894.P10293104419934161229

`A349345(Δ[A252749(n)+(n+1)²]-1)`
-/

namespace A323894.P10293104419934161229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252749 n + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349345 (f1 (n + 1) - f1 n - 1).toNat

end

end A323894.P10293104419934161229

/-! ## A323894.P11976547366260928794

`A349345(A286385(n+1)+A000203(n+1))`
-/

namespace A323894.P11976547366260928794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349345 (A286385 (n + 1) + A000203 (n + 1)).toNat

end

end A323894.P11976547366260928794

/-! ## A323894.P17836708954335575705

`A323893(n+1)+A003602(A003961(n+1))`
-/

namespace A323894.P17836708954335575705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323893 (n + 1) + A003602 (A003961 (n + 1)).toNat

end

end A323894.P17836708954335575705

/-!
# A323895: Dirichlet inverse of binary Gray code, A003188.

The programs for A323895, there is no canonical definition to state claims against.
-/

/-! ## A323895.P15678642205479223086

`A323896(n+1)-A003188(n+1)`
-/

namespace A323895.P15678642205479223086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323896 (n + 1) - A003188 (n + 1)

end

end A323895.P15678642205479223086

/-! ## A323895.P4705491823736805350

`A323896(n+1)-∑[A055975(n+1)]`
-/

namespace A323895.P4705491823736805350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323896 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323895.P4705491823736805350

/-! ## A323895.P5845872854802927342

`A323896(n+1)-Δ[A048641(n+1)]`
-/

namespace A323895.P5845872854802927342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323896 (n + 1) - (f1 (n + 1) - f1 n)

end

end A323895.P5845872854802927342

/-! ## A323895.P17863037443549369415

`A323896(n+1)-xor(n+1, A110654(n))`
-/

namespace A323895.P17863037443549369415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323896 (n + 1) - Int.xor (n + 1 : ℤ) (A110654 n)

end

end A323895.P17863037443549369415

/-! ## A323895.P6151036270640112956

`A323896(n+1)-A057300(A300838(n+1))`
-/

namespace A323895.P6151036270640112956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323896 (n + 1) - A057300 (A300838 (n + 1)).toNat

end

end A323895.P6151036270640112956

/-! ## A323895.P17437599539980982917

`A323896(n+1)-A302844(A163355(n+1))`
-/

namespace A323895.P17437599539980982917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323896 (n + 1) - A302844 (A163355 (n + 1)).toNat

end

end A323895.P17437599539980982917

/-!
# A323896: Sum of binary Gray code A003188 and its Dirichlet inverse, A323895.

The programs for A323896, there is no canonical definition to state claims against.
-/

/-! ## A323896.P1902297418562084095

`A003188(n+1)+A323895(n+1)`
-/

namespace A323896.P1902297418562084095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (n + 1) + A323895 (n + 1)

end

end A323896.P1902297418562084095

/-! ## A323896.P2177965961662209499

`A323895(n+1)+∑[A055975(n+1)]`
-/

namespace A323896.P2177965961662209499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323895 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A323896.P2177965961662209499

/-! ## A323896.P18728134671501118

`A323895(n+1)+Δ[A048641(n+1)]`
-/

namespace A323896.P18728134671501118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323895 (n + 1) + (f1 (n + 1) - f1 n)

end

end A323896.P18728134671501118

/-! ## A323896.P6804829228910972057

`A323895(n+1)+xor(n+1, A110654(n))`
-/

namespace A323896.P6804829228910972057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323895 (n + 1) + Int.xor (n + 1 : ℤ) (A110654 n)

end

end A323896.P6804829228910972057

/-! ## A323896.P7125356842155869224

`A323895(n+1)+A057300(A300838(n+1))`
-/

namespace A323896.P7125356842155869224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323895 (n + 1) + A057300 (A300838 (n + 1)).toNat

end

end A323896.P7125356842155869224

/-! ## A323896.P1439533149525266292

`A323895(n+1)+A302844(A163355(n+1))`
-/

namespace A323896.P1439533149525266292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323895 (n + 1) + A302844 (A163355 (n + 1)).toNat

end

end A323896.P1439533149525266292

/-!
# A323899: Dirichlet inverse of A287896 (A001511(n)*A002487(n)).

The programs for A323899, there is no canonical definition to state claims against.
-/

/-! ## A323899.P899769764634996222

`A323900(n+1)-A287896(n+1)`
-/

namespace A323899.P899769764634996222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323900 (n + 1) - A287896 (n + 1)

end

end A323899.P899769764634996222

/-! ## A323899.P13112894828616070606

`∑{d}[n+1, A154955(#)*A317843((n+1)/#)]`
-/

namespace A323899.P13112894828616070606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A154955 d * A317843 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A323899.P13112894828616070606

/-! ## A323899.P6030686430141293281

`A323900(n+1)+or(-A287896(n+1), A000007(n))`
-/

namespace A323899.P6030686430141293281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323900 (n + 1) + Int.lor (-A287896 (n + 1)) (A000007 n)

end

end A323899.P6030686430141293281

/-! ## A323899.P2632288624064427710

`A323900(n+1)-A001511(n+1)*A002487(n+1)`
-/

namespace A323899.P2632288624064427710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323900 (n + 1) - A001511 (n + 1) * A002487 (n + 1)

end

end A323899.P2632288624064427710

/-! ## A323899.P12157644067792944708

`A323900(n+1)-A001511(n+1)*A323365(4*(n+1))`
-/

namespace A323899.P12157644067792944708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323900 (n + 1) - A001511 (n + 1) * A323365 (4 * (n + 1))

end

end A323899.P12157644067792944708

