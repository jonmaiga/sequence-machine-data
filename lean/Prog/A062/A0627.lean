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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
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
# A062700: Terms of A000203 that are prime.

The programs for A062700, there is no canonical definition to state claims against.
-/

/-! ## A062700.P7854998590957678642

`A000203(A023194(n+1))`
-/

namespace A062700.P7854998590957678642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A023194 (n + 1)).toNat

end

end A062700.P7854998590957678642

/-! ## A062700.P3031267923344173460

`A023194(n+1)-A071167(n+1)`
-/

namespace A062700.P3031267923344173460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023194 (n + 1) - A071167 (n + 1)

end

end A062700.P3031267923344173460

/-! ## A062700.P7140789499119797664

`A270413(n+1)-(A071167(n+1)+1)`
-/

namespace A062700.P7140789499119797664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270413 (n + 1) - (A071167 (n + 1) + 1)

end

end A062700.P7140789499119797664

/-! ## A062700.P34083854806059736

`ceil(A292446(n+1)/2-A071167(n+1))`
-/

namespace A062700.P34083854806059736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A292446 (n + 1) : ℚ) / 2 - (A071167 (n + 1) : ℚ)⌉

end

end A062700.P34083854806059736

/-! ## A062700.P1281358733823938705

`(A292446(C(n+1, n))+1)/2-A071167(n+1)`
-/

namespace A062700.P1281358733823938705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292446 (Nat.choose (n + 1) n) + 1 : ℚ) / 2 - (A071167 (n + 1) : ℚ)

end

end A062700.P1281358733823938705

/-! ## A062700.P16510195153788737853

`(A292446(Δ[n²]-n)+1)/2-A071167(n+1)`
-/

namespace A062700.P16510195153788737853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292446 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat + 1 : ℚ) / 2 - (A071167 (n + 1) : ℚ)

end

end A062700.P16510195153788737853

/-!
# A062702: Index of factorial primes of form m!-1.

The programs for A062702, there is no canonical definition to state claims against.
-/

/-! ## A062702.P12824641229687066725

`A003604(A002982(n+1))`
-/

namespace A062702.P12824641229687066725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003604 (A002982 (n + 1)).toNat

end

end A062702.P12824641229687066725

/-!
# A062703: Squares that are the sum of two consecutive primes.

The programs for A062703, there is no canonical definition to state claims against.
-/

/-! ## A062703.P8399331125768669832

`A074924(n+1)²`
-/

namespace A062703.P8399331125768669832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1) ^ 2

end

end A062703.P8399331125768669832

/-! ## A062703.P9332389256216809128

`A074924(C(n+1, n))^2`
-/

namespace A062703.P9332389256216809128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (Nat.choose (n + 1) n) ^ 2

end

end A062703.P9332389256216809128

/-! ## A062703.P16521765818713000905

`A074924(abs(xor(n, -1)))^2`
-/

namespace A062703.P16521765818713000905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 |Int.xor (n : ℤ) (-1)|.toNat ^ 2

end

end A062703.P16521765818713000905

/-! ## A062703.P3068492868150882956

`ceil(sqrt(2*A061275(n+1)))²`
-/

namespace A062703.P3068492868150882956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (2 * A061275 (n + 1) : ℝ)⌉ ^ 2

end

end A062703.P3068492868150882956

/-! ## A062703.P16533988166766459334

`A074924(2*n+1-n)^2`
-/

namespace A062703.P16533988166766459334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (2 * n + 1 - n) ^ 2

end

end A062703.P16533988166766459334

/-! ## A062703.P5944310489387705387

`record[A074924(A324347(n))²]`
-/

namespace A062703.P5944310489387705387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (A324347 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062703.P5944310489387705387

/-! ## A062703.P4812511757786148767

`A118591(n+1)+A061275(n+1)`
-/

namespace A062703.P4812511757786148767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118591 (n + 1) + A061275 (n + 1)

end

end A062703.P4812511757786148767

/-! ## A062703.P16922024445429949541

`A074924(n+1)+2*A298462(n+1)`
-/

namespace A062703.P16922024445429949541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (n + 1) + 2 * A298462 (n + 1)

end

end A062703.P16922024445429949541

/-! ## A062703.P5159374151231256983

`lcm(2, A074924(n+1))^A020639(2*(n+1))`
-/

namespace A062703.P5159374151231256983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A074924 (n + 1)) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A062703.P5159374151231256983

/-! ## A062703.P1424190102541695807

`record[A074924(A324347(n))]*A074924(n+1)`
-/

namespace A062703.P1424190102541695807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (A324347 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A074924 (n + 1)

end

end A062703.P1424190102541695807

/-! ## A062703.P6554959785878309155

`A074924(A000027(n+1))*A074924(n+1)`
-/

namespace A062703.P6554959785878309155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074924 (A000027 (n + 1)).toNat * A074924 (n + 1)

end

end A062703.P6554959785878309155

/-! ## A062703.P2092378596218778641

`∩[(2*n)², A245360(n+1)]`
-/

namespace A062703.P2092378596218778641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062703.P2092378596218778641

/-! ## A062703.P17046872078885296173

`(2*A139013(n+1))²`
-/

namespace A062703.P17046872078885296173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A139013 (n + 1)) ^ 2

end

end A062703.P17046872078885296173

/-! ## A062703.P16904742528531000655

`4*A139013(Δ[n²]-n)²`
-/

namespace A062703.P16904742528531000655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A139013 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2

end

end A062703.P16904742528531000655

/-! ## A062703.P6284289923188598809

`2*A074924(n+1)*A139013(n+1)`
-/

namespace A062703.P6284289923188598809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A074924 (n + 1) * A139013 (n + 1))

end

end A062703.P6284289923188598809

/-! ## A062703.P14097750142866478732

`(2*A139013(n+1))^A020639(4*(n+1))`
-/

namespace A062703.P14097750142866478732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A139013 (n + 1) : ℚ) ^ (A020639 (4 * (n + 1)) : ℤ)

end

end A062703.P14097750142866478732

/-! ## A062703.P18002233222764305436

`A298462(n+1)+A000217(A074924(n+1))`
-/

namespace A062703.P18002233222764305436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298462 (n + 1) + A000217 (A074924 (n + 1)).toNat

end

end A062703.P18002233222764305436

/-! ## A062703.P9634545233002040350

`A016742(A139013(n+1))`
-/

namespace A062703.P9634545233002040350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 (A139013 (n + 1)).toNat

end

end A062703.P9634545233002040350

/-! ## A062703.P16583247113897443669

`∩[A245360(n+1), A016742(n)]`
-/

namespace A062703.P16583247113897443669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016742 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062703.P16583247113897443669

/-! ## A062703.P9327424465723579561

`∩[A245360(n+1), A055808(n)]`
-/

namespace A062703.P9327424465723579561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055808 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062703.P9327424465723579561

/-!
# A062704: Di-Boustrophedon transform of all 1's sequence: Fill in an array by diagonals alternating in the 'up' and 'down' directions. Each diagonal starts with a 1. When going in the 'up' direction the next element is the sum of the previous element of the diagonal and the previous two elements of the row the new element is in. When going in the 'down' direction the next element is the sum of the previous element of the diagonal and the previous two elements of the column the new element is in. The final element of the n-th diagonal is a(n).

The programs for A062704, there is no canonical definition to state claims against.
-/

/-! ## A062704.P4122929622470088723

`A062705(∑[n+1])`
-/

namespace A062704.P4122929622470088723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062705 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062704.P4122929622470088723

/-! ## A062704.P3997441613674672455

`record[Δ[A062705(n+2)]]`
-/

namespace A062704.P3997441613674672455
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062705 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062704.P3997441613674672455

/-! ## A062704.P14454745980551041572

`A062706(A131179(n+1))`
-/

namespace A062704.P14454745980551041572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062706 (A131179 (n + 1)).toNat

end

end A062704.P14454745980551041572

/-! ## A062704.P14418440489065300056

`A062706(A056023(∑[n+1]))`
-/

namespace A062704.P14418440489065300056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062706 (A056023 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A062704.P14418440489065300056

/-! ## A062704.P18091085335424973290

`record[A062705(A038722(n+1))]`
-/

namespace A062704.P18091085335424973290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062705 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062704.P18091085335424973290

/-! ## A062704.P4175343907077327696

`record[record[A062705(n+1)]/A062705(n+1)]`
-/

namespace A062704.P4175343907077327696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062705 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) : ℚ) / (A062705 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062704.P4175343907077327696

/-!
# A062705: Array described in A062704 read by diagonals in direction of creation.

The programs for A062705, there is no canonical definition to state claims against.
-/

/-! ## A062705.P8995726761867905279

`A062706(A056023(n+1))`
-/

namespace A062705.P8995726761867905279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062706 (A056023 (n + 1)).toNat

end

end A062705.P8995726761867905279

/-! ## A062705.P18048063639572105591

`A059234(n+1)-A185284(A087736(n))`
-/

namespace A062705.P18048063639572105591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059234 (n + 1) - A185284 (A087736 n).toNat

end

end A062705.P18048063639572105591

/-! ## A062705.P14735543773336549768

`A059217(A056023(n+1))-A185284(A087736(n))`
-/

namespace A062705.P14735543773336549768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059217 (A056023 (n + 1)).toNat - A185284 (A087736 n).toNat

end

end A062705.P14735543773336549768

/-!
# A062706: The array of A062704 read by diagonals in the 'up' direction.

The programs for A062706, there is no canonical definition to state claims against.
-/

/-! ## A062706.P14473404560575135393

`A062705(A056023(n+1))`
-/

namespace A062706.P14473404560575135393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062705 (A056023 (n + 1)).toNat

end

end A062706.P14473404560575135393

/-!
# A062707: Table by antidiagonals of n*k*(k+1)/2.

The programs for A062707, the canonical program `A062707.P7585015757933557598` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062707 has offset 0).

The definition of A062707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062707.P6254741346770307775

`A101321(n)-1`
-/

namespace A062707.P6254741346770307775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101321 n - 1

end

end A062707.P6254741346770307775

namespace A062707

/-- `A101321(n)-1` -/
def P6254741346770307775.Spec : Prop :=
  ∀ n, P6254741346770307775.a n = A062707 n

theorem P6254741346770307775.correct : P6254741346770307775.Spec := by
  intro n
  simp only [A062707, Nat.add_sub_cancel, A062707.P6254741346770307775.a, A062707.P7585015757933557598.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A101321, A101321.P11435036558127374472.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A062707

/-! ## A062707.P7733391495049307646

`A285192(n)+1-A080853(n)`
-/

namespace A062707.P7733391495049307646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285192 n + (1 - A080853 n)

end

end A062707.P7733391495049307646

namespace A062707

/-- `A285192(n)+1-A080853(n)` -/
def P7733391495049307646.Spec : Prop :=
  ∀ n, P7733391495049307646.a n = A062707 n

end A062707

/-! ## A062707.P14355514317673111712

`C(A193592(n), 2)*A002262(n)`
-/

namespace A062707.P14355514317673111712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A193592 n).toNat 2 : ℤ) * A002262 n

end

end A062707.P14355514317673111712

namespace A062707

/-- `C(A193592(n), 2)*A002262(n)` -/
def P14355514317673111712.Spec : Prop :=
  ∀ n, P14355514317673111712.a n = A062707 n

end A062707

/-! ## A062707.P14564141449482957310

`C(A193592(n), 2)*A114219(n)`
-/

namespace A062707.P14564141449482957310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A193592 n).toNat 2 : ℤ) * A114219 n

end

end A062707.P14564141449482957310

namespace A062707

/-- `C(A193592(n), 2)*A114219(n)` -/
def P14564141449482957310.Spec : Prop :=
  ∀ n, P14564141449482957310.a n = A062707 n

end A062707

/-! ## A062707.P7990814818245871433

`A128141(n+1)-A003991(n+1)`
-/

namespace A062707.P7990814818245871433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128141 (n + 1) - A003991 (n + 1)

end

end A062707.P7990814818245871433

namespace A062707

/-- `A128141(n+1)-A003991(n+1)` -/
def P7990814818245871433.Spec : Prop :=
  ∀ n, P7990814818245871433.a n = A062707 n

theorem P7990814818245871433.correct : P7990814818245871433.Spec := by
  intro n
  simp only [A062707, Nat.add_sub_cancel, A062707.P7990814818245871433.a, A062707.P7585015757933557598.a, A002262, A002262.P12129691700837801527.a, A003991, A003991.P14084851459366035567.a, A004736, A004736.P10337537277358081527.a, A128141, A128141.P68200204376407770.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A002260, A002260.P769748059679640451.a, A057944, A057944.P16851463738746886639.a, A059036, A059036.P10984433159116004346.a, A101321, A101321.P11435036558127374472.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A062707

/-! ## A062707.P7195247967636504367

`A134394(n+1)-A004736(n+1)`
-/

namespace A062707.P7195247967636504367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (n + 1) - A004736 (n + 1)

end

end A062707.P7195247967636504367

namespace A062707

/-- `A134394(n+1)-A004736(n+1)` -/
def P7195247967636504367.Spec : Prop :=
  ∀ n, P7195247967636504367.a n = A062707 n

theorem P7195247967636504367.correct : P7195247967636504367.Spec := by
  intro n
  simp only [A062707, Nat.add_sub_cancel, A062707.P7195247967636504367.a, A062707.P7585015757933557598.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A134394, A134394.P12565304534102440412.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A025581, A025581.P420762180635059694.a, A057944, A057944.P16851463738746886639.a, A101321, A101321.P11435036558127374472.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A062707

/-! ## A062707.P9108173717827692770

`A104633(n+1)-A049777(n+1)`
-/

namespace A062707.P9108173717827692770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104633 (n + 1) - A049777 (n + 1)

end

end A062707.P9108173717827692770

namespace A062707

/-- `A104633(n+1)-A049777(n+1)` -/
def P9108173717827692770.Spec : Prop :=
  ∀ n, P9108173717827692770.a n = A062707 n

theorem P9108173717827692770.correct : P9108173717827692770.Spec := by
  intro n
  simp only [A062707, Nat.add_sub_cancel, A062707.P9108173717827692770.a, A062707.P7585015757933557598.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A049777, A049777.P827072266685734770.a, A104633, A104633.P12323607776174508310.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, A112367, A112367.P5378126856570841990.a, A127739, A127739.P6291269565293973198.a, A003056, A003056.P5318256527314048597.a, A003057, A003057.P16308936517940939054.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A062707

/-! ## A062707.P12411434217278339040

`A134394(n+1)-(A025581(n)+1)`
-/

namespace A062707.P12411434217278339040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134394 (n + 1) - (A025581 n + 1)

end

end A062707.P12411434217278339040

namespace A062707

/-- `A134394(n+1)-(A025581(n)+1)` -/
def P12411434217278339040.Spec : Prop :=
  ∀ n, P12411434217278339040.a n = A062707 n

theorem P12411434217278339040.correct : P12411434217278339040.Spec := by
  intro n
  simp only [A062707, Nat.add_sub_cancel, A062707.P12411434217278339040.a, A062707.P7585015757933557598.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A025581, A025581.P420762180635059694.a, A134394, A134394.P12565304534102440412.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, A101321, A101321.P11435036558127374472.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A062707

/-! ## A062707.P15862392229304992280

`A128141(n+1)-(A059036(n)+1)`
-/

namespace A062707.P15862392229304992280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128141 (n + 1) - (A059036 n + 1)

end

end A062707.P15862392229304992280

namespace A062707

/-- `A128141(n+1)-(A059036(n)+1)` -/
def P15862392229304992280.Spec : Prop :=
  ∀ n, P15862392229304992280.a n = A062707 n

theorem P15862392229304992280.correct : P15862392229304992280.Spec := by
  intro n
  simp only [A062707, Nat.add_sub_cancel, A062707.P15862392229304992280.a, A062707.P7585015757933557598.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A059036, A059036.P10984433159116004346.a, A128141, A128141.P68200204376407770.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A003991, A003991.P14084851459366035567.a, A057944, A057944.P16851463738746886639.a, A101321, A101321.P11435036558127374472.a, A002260, A002260.P769748059679640451.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A062707

/-! ## A062707.P12219089268465349664

`A213751(n+1)-A104634(n+1)`
-/

namespace A062707.P12219089268465349664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213751 (n + 1) - A104634 (n + 1)

end

end A062707.P12219089268465349664

namespace A062707

/-- `A213751(n+1)-A104634(n+1)` -/
def P12219089268465349664.Spec : Prop :=
  ∀ n, P12219089268465349664.a n = A062707 n

theorem P12219089268465349664.correct : P12219089268465349664.Spec := by
  intro n
  simp only [A062707, Nat.add_sub_cancel, A062707.P12219089268465349664.a, A062707.P7585015757933557598.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A104634, A104634.P15686132702936156286.a, A213751, A213751.P3389573996948061720.a, A000217, A000217.P10269402890581615239.a, A000292, A000292.P18322089543142633594.a, A002024, A002024.P11700297927830783882.a, A025581, A025581.P420762180635059694.a, A057944, A057944.P16851463738746886639.a, A104633, A104633.P12323607776174508310.a, A003056, A003056.P5318256527314048597.a, A049777, A049777.P827072266685734770.a, A112367, A112367.P5378126856570841990.a, A127739, A127739.P6291269565293973198.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A062707

/-! ## A062707.P17106618601056966258

`A004736(n+1)/2*A004247(n)`
-/

namespace A062707.P17106618601056966258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / 2 * (A004247 n : ℚ)

end

end A062707.P17106618601056966258

namespace A062707

/-- `A004736(n+1)/2*A004247(n)` -/
def P17106618601056966258.Spec : Prop :=
  ∀ n, P17106618601056966258.a n = (A062707 n : ℚ)

end A062707

/-! ## A062707.P15231681865815817479

`A095832(n+1)/2*A002262(n)`
-/

namespace A062707.P15231681865815817479
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095832 (n + 1) : ℚ) / 2 * (A002262 n : ℚ)

end

end A062707.P15231681865815817479

namespace A062707

/-- `A095832(n+1)/2*A002262(n)` -/
def P15231681865815817479.Spec : Prop :=
  ∀ n, P15231681865815817479.a n = (A062707 n : ℚ)

end A062707

/-! ## A062707.P7585015757933557598

`C(A004736(n+1), 2)*A002262(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062707

/-- `C(A004736(n+1), 2)*A002262(n)` -/
def P7585015757933557598.Spec : Prop :=
  ∀ n, P7585015757933557598.a n = A062707 n

theorem P7585015757933557598.correct : P7585015757933557598.Spec := by
  intro n
  simp only [A062707]

end A062707

/-! ## A062707.P506794581788825946

`log2(A059268(n))*C(A004736(n+1), 2)`
-/

namespace A062707.P506794581788825946
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A059268 n : ℝ) * (Nat.choose (A004736 (n + 1)).toNat 2 : ℝ)

end

end A062707.P506794581788825946

namespace A062707

/-- `log2(A059268(n))*C(A004736(n+1), 2)` -/
def P506794581788825946.Spec : Prop :=
  ∀ n, P506794581788825946.a n = (A062707 n : ℝ)

end A062707

/-! ## A062707.P14785401768349102226

`A086272(n+1)-(A095832(n+1)+1)`
-/

namespace A062707.P14785401768349102226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086272 (n + 1) - (A095832 (n + 1) + 1)

end

end A062707.P14785401768349102226

namespace A062707

/-- `A086272(n+1)-(A095832(n+1)+1)` -/
def P14785401768349102226.Spec : Prop :=
  ∀ n, P14785401768349102226.a n = A062707 n

end A062707

/-! ## A062707.P16709782138586899309

`A000217(A025581(n))*A002262(n)`
-/

namespace A062707.P16709782138586899309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A025581 n).toNat * A002262 n

end

end A062707.P16709782138586899309

namespace A062707

/-- `A000217(A025581(n))*A002262(n)` -/
def P16709782138586899309.Spec : Prop :=
  ∀ n, P16709782138586899309.a n = A062707 n

end A062707

/-! ## A062707.P7469446005364213486

`A000217(A004736(n+1)-1)*A002262(n)`
-/

namespace A062707.P7469446005364213486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A004736 (n + 1) - 1).toNat * A002262 n

end

end A062707.P7469446005364213486

namespace A062707

/-- `A000217(A004736(n+1)-1)*A002262(n)` -/
def P7469446005364213486.Spec : Prop :=
  ∀ n, P7469446005364213486.a n = A062707 n

end A062707

/-! ## A062707.P2169838739055172995

`(A002260(n+1)-1)*A000217(A025581(n))`
-/

namespace A062707.P2169838739055172995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) * A000217 (A025581 n).toNat

end

end A062707.P2169838739055172995

namespace A062707

/-- `(A002260(n+1)-1)*A000217(A025581(n))` -/
def P2169838739055172995.Spec : Prop :=
  ∀ n, P2169838739055172995.a n = A062707 n

end A062707

/-! ## A062707.P15530494339995287052

`(A002260(n+1)-1)*A161680(A004736(n+1))`
-/

namespace A062707.P15530494339995287052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) * A161680 (A004736 (n + 1)).toNat

end

end A062707.P15530494339995287052

namespace A062707

/-- `(A002260(n+1)-1)*A161680(A004736(n+1))` -/
def P15530494339995287052.Spec : Prop :=
  ∀ n, P15530494339995287052.a n = A062707 n

theorem P15530494339995287052.correct : P15530494339995287052.Spec := by
  intro n
  simp only [A062707, Nat.add_sub_cancel, A062707.P15530494339995287052.a, A062707.P7585015757933557598.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A004736, A004736.P10337537277358081527.a, A161680, A161680.P17206074215489759881.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A057944, A057944.P16851463738746886639.a, A003056, A003056.P5318256527314048597.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A062707

/-! ## A062707.P7001830778296334278

`(A002260(n+1)-1)*A000217(A004736(n+1)-1)`
-/

namespace A062707.P7001830778296334278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) - 1) * A000217 (A004736 (n + 1) - 1).toNat

end

end A062707.P7001830778296334278

namespace A062707

/-- `(A002260(n+1)-1)*A000217(A004736(n+1)-1)` -/
def P7001830778296334278.Spec : Prop :=
  ∀ n, P7001830778296334278.a n = A062707 n

end A062707

/-!
# A062708: Write 0,1,2,3,4,... in a triangular spiral; then a(n) is the sequence found by reading the terms along the line from 0 in the direction 0,2,...

The programs for A062708, the canonical program `A062708.P5225757423091398055` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062708 has offset 0).

The definition of A062708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062708.P11832716352140729547

`n*(9*n-5)/2`
-/

namespace A062708.P11832716352140729547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((9 * n : ℤ) - 5) : ℚ) / 2

end

end A062708.P11832716352140729547

namespace A062708

/-- `n*(9*n-5)/2` -/
def P11832716352140729547.Spec : Prop :=
  ∀ n, P11832716352140729547.a n = (A062708 n : ℚ)

theorem P11832716352140729547.correct : P11832716352140729547.Spec := by
  intro n
  induction n with
  | zero => simp [A062708, A062708.P11832716352140729547.a, A062708.P5225757423091398055.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A062708, Nat.add_sub_cancel, A062708.P11832716352140729547.a, A062708.P5225757423091398055.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A062708

/-! ## A062708.P5225757423091398055

`9*n+a(n-1)-7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062708

/-- `9*n+a(n-1)-7` -/
def P5225757423091398055.Spec : Prop :=
  ∀ n, P5225757423091398055.a n = A062708 n

theorem P5225757423091398055.correct : P5225757423091398055.Spec := by
  intro n
  simp only [A062708]

end A062708

/-! ## A062708.P280547939985570728

`A218470(9*n+1)`
-/

namespace A062708.P280547939985570728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 (9 * n + 1)

end

end A062708.P280547939985570728

namespace A062708

/-- `A218470(9*n+1)` -/
def P280547939985570728.Spec : Prop :=
  ∀ n, P280547939985570728.a n = A062708 n

end A062708

/-! ## A062708.P7270484280709703527

`C(3*n, 2)-n`
-/

namespace A062708.P7270484280709703527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 2 : ℤ) - (n : ℤ)

end

end A062708.P7270484280709703527

namespace A062708

/-- `C(3*n, 2)-n` -/
def P7270484280709703527.Spec : Prop :=
  ∀ n, P7270484280709703527.a n = A062708 n

end A062708

/-! ## A062708.P15291529041195027631

`∑[a(n-1)+9]` with `a(0)=0, a(1)=2`
-/

namespace A062708.P15291529041195027631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062708.P15291529041195027631

namespace A062708

/-- `∑[a(n-1)+9]` -/
def P15291529041195027631.Spec : Prop :=
  ∀ n, (P15291529041195027631.a n : ℤ) = A062708 n

end A062708

/-! ## A062708.P6858399454194302480

`2*n+9*C(n, 2)`
-/

namespace A062708.P6858399454194302480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 9 * Nat.choose n 2

end

end A062708.P6858399454194302480

namespace A062708

/-- `2*n+9*C(n, 2)` -/
def P6858399454194302480.Spec : Prop :=
  ∀ n, (P6858399454194302480.a n : ℤ) = A062708 n

end A062708

/-! ## A062708.P11035313818378508104

`∑[ogf((2x+7x^2)/(1-2x+x^2))]`
-/

namespace A062708.P11035313818378508104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 7] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062708.P11035313818378508104

namespace A062708

/-- `∑[ogf((2x+7x^2)/(1-2x+x^2))]` -/
def P11035313818378508104.Spec : Prop :=
  ∀ n, P11035313818378508104.a n = A062708 n

end A062708

/-! ## A062708.P7175063734125522461

`ogf((2x+7x^2)/(1-3x+3x^2-x^3))`
-/

namespace A062708.P7175063734125522461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 7] [1, -3, 3, -1] n

end

end A062708.P7175063734125522461

namespace A062708

/-- `ogf((2x+7x^2)/(1-3x+3x^2-x^3))` -/
def P7175063734125522461.Spec : Prop :=
  ∀ n, P7175063734125522461.a n = A062708 n

end A062708

/-! ## A062708.P16039060120986624773

`7-∑[a(n-1)-9]` with `a(0)=7`
-/

namespace A062708.P16039060120986624773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062708.P16039060120986624773

namespace A062708

/-- `7-∑[a(n-1)-9]` -/
def P16039060120986624773.Spec : Prop :=
  ∀ n, P16039060120986624773.a n = A062708 n

end A062708

/-! ## A062708.P6898962223125815269

`A140064(n)-1`
-/

namespace A062708.P6898962223125815269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140064 n - 1

end

end A062708.P6898962223125815269

namespace A062708

/-- `A140064(n)-1` -/
def P6898962223125815269.Spec : Prop :=
  ∀ n, P6898962223125815269.a n = A062708 n

end A062708

/-! ## A062708.P14504262989106412667

`A051682(n)+n`
-/

namespace A062708.P14504262989106412667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051682 n + (n : ℤ)

end

end A062708.P14504262989106412667

namespace A062708

/-- `A051682(n)+n` -/
def P14504262989106412667.Spec : Prop :=
  ∀ n, P14504262989106412667.a n = A062708 n

end A062708

/-! ## A062708.P24454653915042713

`A062741(n)-n`
-/

namespace A062708.P24454653915042713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062741 n - (n : ℤ)

end

end A062708.P24454653915042713

namespace A062708

/-- `A062741(n)-n` -/
def P24454653915042713.Spec : Prop :=
  ∀ n, P24454653915042713.a n = A062708 n

end A062708

/-! ## A062708.P9289768110760351394

`A001106(n)+n²`
-/

namespace A062708.P9289768110760351394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n + (n ^ 2 : ℤ)

end

end A062708.P9289768110760351394

namespace A062708

/-- `A001106(n)+n²` -/
def P9289768110760351394.Spec : Prop :=
  ∀ n, P9289768110760351394.a n = A062708 n

end A062708

/-! ## A062708.P1145155550807789432

`A226492(n)-n²`
-/

namespace A062708.P1145155550807789432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226492 n - (n ^ 2 : ℤ)

end

end A062708.P1145155550807789432

namespace A062708

/-- `A226492(n)-n²` -/
def P1145155550807789432.Spec : Prop :=
  ∀ n, P1145155550807789432.a n = A062708 n

end A062708

/-! ## A062708.P1960217649429723236

`A001107(n)+∑[n]`
-/

namespace A062708.P1960217649429723236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001107 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062708.P1960217649429723236

namespace A062708

/-- `A001107(n)+∑[n]` -/
def P1960217649429723236.Spec : Prop :=
  ∀ n, P1960217649429723236.a n = A062708 n

end A062708

/-! ## A062708.P1424111558278547221

`A080855(n)-(n+1)`
-/

namespace A062708.P1424111558278547221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080855 n - (n + 1 : ℤ)

end

end A062708.P1424111558278547221

namespace A062708

/-- `A080855(n)-(n+1)` -/
def P1424111558278547221.Spec : Prop :=
  ∀ n, P1424111558278547221.a n = A062708 n

end A062708

/-! ## A062708.P9149998001285213498

`A117625(n)-1+n`
-/

namespace A062708.P9149998001285213498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117625 n - 1 + (n : ℤ)

end

end A062708.P9149998001285213498

namespace A062708

/-- `A117625(n)-1+n` -/
def P9149998001285213498.Spec : Prop :=
  ∀ n, P9149998001285213498.a n = A062708 n

end A062708

/-! ## A062708.P13268583547863057955

`A022266(n)-2*n`
-/

namespace A062708.P13268583547863057955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n - (2 * n : ℤ)

end

end A062708.P13268583547863057955

namespace A062708

/-- `A022266(n)-2*n` -/
def P13268583547863057955.Spec : Prop :=
  ∀ n, P13268583547863057955.a n = A062708 n

end A062708

/-! ## A062708.P13196414359043466857

`A152995(n)/2+n`
-/

namespace A062708.P13196414359043466857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152995 n : ℚ) / 2 + (n : ℚ)

end

end A062708.P13196414359043466857

namespace A062708

/-- `A152995(n)/2+n` -/
def P13196414359043466857.Spec : Prop :=
  ∀ n, P13196414359043466857.a n = (A062708 n : ℚ)

theorem P13196414359043466857.correct : P13196414359043466857.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A062708, Nat.add_sub_cancel, A062708.P13196414359043466857.a, A062708.P5225757423091398055.a, A152995, A152995.P15675158223399843988.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A062708, Nat.add_sub_cancel, A062708.P13196414359043466857.a, A062708.P5225757423091398055.a, A152995, A152995.P15675158223399843988.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A062708

/-! ## A062708.P18246781936818812197

`3*A000326(n)-n`
-/

namespace A062708.P18246781936818812197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000326 n - (n : ℤ)

end

end A062708.P18246781936818812197

namespace A062708

/-- `3*A000326(n)-n` -/
def P18246781936818812197.Spec : Prop :=
  ∀ n, P18246781936818812197.a n = A062708 n

end A062708

/-!
# A062709: a(n) = 2^n + 3.

The programs for A062709, the canonical program `A062709.P9130590619411367143` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062709 has offset 0).

The definition of A062709 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+3` (program `A062709.P9130590619411367143`, by `A062709.P9130590619411367143.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062709.P9130590619411367143

`2^n+3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062709

/-- `2^n+3` -/
def P9130590619411367143.Spec : Prop :=
  ∀ n, (P9130590619411367143.a n : ℤ) = A062709 n

theorem P9130590619411367143.correct : P9130590619411367143.Spec := by
  intro n
  simp only [A062709]

end A062709

/-!
# A062711: Number of prime Gaussian integers z=a+bi with |z|<=n.

The programs for A062711, the canonical program `A062711.P2771895812179949619` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062711 has offset 1).

The definition of A062711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062711.P2771895812179949619

`A228232(n+1)+A066490(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A062711

/-- `A228232(n+1)+A066490(n+1)` -/
def P2771895812179949619.Spec : Prop :=
  ∀ n, P2771895812179949619.a n = A062711 (n + 1)

theorem P2771895812179949619.correct : P2771895812179949619.Spec := by
  intro n
  simp only [A062711, Nat.add_sub_cancel]

end A062711

/-! ## A062711.P998387734794105378

`A348196(n+1)+A228235(n+1)`
-/

namespace A062711.P998387734794105378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348196 (n + 1) + A228235 (n + 1)

end

end A062711.P998387734794105378

namespace A062711

/-- `A348196(n+1)+A228235(n+1)` -/
def P998387734794105378.Spec : Prop :=
  ∀ n, P998387734794105378.a n = A062711 (n + 1)

end A062711

/-! ## A062711.P4002255882631873652

`A228233(n+1)-A066490(n+1)`
-/

namespace A062711.P4002255882631873652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228233 (n + 1) - A066490 (n + 1)

end

end A062711.P4002255882631873652

namespace A062711

/-- `A228233(n+1)-A066490(n+1)` -/
def P4002255882631873652.Spec : Prop :=
  ∀ n, P4002255882631873652.a n = A062711 (n + 1)

theorem P4002255882631873652.correct : P4002255882631873652.Spec := by
  intro n
  simp only [A062711, Nat.add_sub_cancel, A062711.P4002255882631873652.a, A062711.P2771895812179949619.a, A066490, A066490.P4637826063485355079.f2, A066490.P4637826063485355079.f1, A066490.P4637826063485355079.a, A228232, A228232.P13142545516159782405.a, A228233, A228233.P17833368769692923615.a, A057427, A057427.P3058147525557661423.a, A348196, A348196.P10190356890292704948.a, A000007, A000007.P6599383543502402472.a, A066339, A066339.P5957712968518338971.a, A296021, A296021.P11845768645576456076.f1, A296021.P11845768645576456076.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062711

/-! ## A062711.P6015041327857970490

`A228232(n+1)+A228235(n+1)-A228234(n+1)`
-/

namespace A062711.P6015041327857970490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228232 (n + 1) + (A228235 (n + 1) - A228234 (n + 1))

end

end A062711.P6015041327857970490

namespace A062711

/-- `A228232(n+1)+A228235(n+1)-A228234(n+1)` -/
def P6015041327857970490.Spec : Prop :=
  ∀ n, P6015041327857970490.a n = A062711 (n + 1)

end A062711

/-! ## A062711.P14866472056616657095

`A228233(n+1)+A228234(n+1)-A228235(n+1)`
-/

namespace A062711.P14866472056616657095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228233 (n + 1) + (A228234 (n + 1) - A228235 (n + 1))

end

end A062711.P14866472056616657095

namespace A062711

/-- `A228233(n+1)+A228234(n+1)-A228235(n+1)` -/
def P14866472056616657095.Spec : Prop :=
  ∀ n, P14866472056616657095.a n = A062711 (n + 1)

end A062711

/-!
# A062712: Numbers that are n-gons for three or more n's, where n=3,4,5,...,16.

The programs for A062712, there is no canonical definition to state claims against.
-/

/-! ## A062712.P15111742655217696514

`A000217(lt[A100822(n+3), A162296(3*n+1)])`
-/

namespace A062712.P15111742655217696514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100822 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162296 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A062712.P15111742655217696514

/-!
# A062713: Numbers k such that the sum of the digits of k is a prime factor of k.

The programs for A062713, there is no canonical definition to state claims against.
-/

/-! ## A062713.P8697438450761576534

`∪[A052020(n+1), A052021(n+1)]`
-/

namespace A062713.P8697438450761576534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052021 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062713.P8697438450761576534

/-! ## A062713.P8528894849212118411

`∪[A052020(n+1), A162948(n+1)]`
-/

namespace A062713.P8528894849212118411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062713.P8528894849212118411

/-! ## A062713.P17485169307078790314

`∪[A052020(n+1), A208361(n+1)]`
-/

namespace A062713.P17485169307078790314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062713.P17485169307078790314

/-! ## A062713.P17428030087227345247

`∩[A005349(n+1), A028834(n+1)]`
-/

namespace A062713.P17428030087227345247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062713.P17428030087227345247

/-! ## A062713.P7181462207944482581

`∩[A028834(n+1), A113315(n+1)*A325454(n+1)]`
-/

namespace A062713.P7181462207944482581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113315 (n + 1) * A325454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062713.P7181462207944482581

/-! ## A062713.P2610556283995697083

`∩[A028834(n+1), A261874(n+1)]`
-/

namespace A062713.P2610556283995697083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261874 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062713.P2610556283995697083

/-! ## A062713.P10291802029505866172

`filter[A028834(n+1), A188641(#)]`
-/

namespace A062713.P10291802029505866172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A188641 (f1 j).toNat = 1) n)

end

end A062713.P10291802029505866172

/-! ## A062713.P13185170775416308469

`∩[eq[1, A144261(n+1)]+1, A028834(n+1)]`
-/

namespace A062713.P13185170775416308469
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144261 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A062713.P13185170775416308469

/-! ## A062713.P1870774413401913510

`∩[eq[1, A188641(n+1)]+1, A028834(n+1)]`
-/

namespace A062713.P1870774413401913510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188641 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A062713.P1870774413401913510

/-!
# A062714: Minimal length of a sequence with terms from {1, 2, 3, ..., n} which contains, as a subsequence, each possible ordering of the n symbols 1, 2, 3, ..., n.

The programs for A062714, there is no canonical definition to state claims against.
-/

/-! ## A062714.P5721312864455298549

`∑[ceil(∑[2-acot(n)])]`
-/

namespace A062714.P5721312864455298549
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 - SequenceMachineLib.acot (n : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062714.P5721312864455298549

/-! ## A062714.P3575584584644586321

`round(∑[∑[root(n+1, 3)]])`
-/

namespace A062714.P3575584584644586321
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (3 : ℝ))

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062714.P3575584584644586321

/-! ## A062714.P15053013404849948485

`∑[∑[1-floor(sin(n²))]]`
-/

namespace A062714.P15053013404849948485
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌊Real.sin (n ^ 2 : ℝ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062714.P15053013404849948485

/-! ## A062714.P11449679350156443654

`floor(∑[n+1]^2^sin(3))`
-/

namespace A062714.P11449679350156443654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) ^ ((2 : ℝ) ^ (Real.sin (3 : ℝ)))⌋

end

end A062714.P11449679350156443654

/-! ## A062714.P8064556181659233545

`ceil((n+1)²*sin(2)-n)`
-/

namespace A062714.P8064556181659233545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ 2 : ℝ) * Real.sin (2 : ℝ) - (n : ℝ)⌉

end

end A062714.P8064556181659233545

/-!
# A062715: Triangle T(i,j) (i >= -1, -1<=j<=i) whose (i,j)-th entry is 1 if j=-1 otherwise binomial(i,j)*2^(i-j).

The programs for A062715, there is no canonical definition to state claims against.
-/

/-! ## A062715.P2640496338709327191

`A013609(A056943(n))`
-/

namespace A062715.P2640496338709327191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A056943 n).toNat

end

end A062715.P2640496338709327191

/-! ## A062715.P6246835861455487985

`A193791(n-A073424(n))`
-/

namespace A062715.P6246835861455487985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 ((n : ℤ) - A073424 n).toNat

end

end A062715.P6246835861455487985

/-! ## A062715.P15402905542660877548

`A193791(gcd(n, A010816(n)))`
-/

namespace A062715.P15402905542660877548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193791 (Int.gcd (n : ℤ) (A010816 n))

end

end A062715.P15402905542660877548

/-! ## A062715.P3055944875491324555

`gcd(A073423(n), A193791(n))`
-/

namespace A062715.P3055944875491324555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073423 n) (A193791 n)

end

end A062715.P3055944875491324555

/-! ## A062715.P14665321669270560558

`A057728(n+1)*A135225(n)`
-/

namespace A062715.P14665321669270560558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1) * A135225 n

end

end A062715.P14665321669270560558

/-! ## A062715.P17000967580431378987

`A013609(n-2*A002262(n))`
-/

namespace A062715.P17000967580431378987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 ((n : ℤ) - 2 * A002262 n).toNat

end

end A062715.P17000967580431378987

/-! ## A062715.P1084572210538464957

`A013609(2*A057944(n)-n)`
-/

namespace A062715.P1084572210538464957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (2 * A057944 n - (n : ℤ)).toNat

end

end A062715.P1084572210538464957

/-! ## A062715.P17241296257002627755

`A013609(1-A158405(n+1)+n)`
-/

namespace A062715.P17241296257002627755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (1 - A158405 (n + 1) + (n : ℤ)).toNat

end

end A062715.P17241296257002627755

/-! ## A062715.P17237785444072489767

`A013609(A057944(n)+A057944(n)-n)`
-/

namespace A062715.P17237785444072489767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A057944 n + (A057944 n - (n : ℤ))).toNat

end

end A062715.P17237785444072489767

/-! ## A062715.P4278916970556498570

`A013609(n-A002262(n)-A002262(n))`
-/

namespace A062715.P4278916970556498570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 ((n : ℤ) - A002262 n - A002262 n).toNat

end

end A062715.P4278916970556498570

/-! ## A062715.P8533793186712543819

`A013609(A057944(n)-(n-A057944(n)))`
-/

namespace A062715.P8533793186712543819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A057944 n - ((n : ℤ) - A057944 n)).toNat

end

end A062715.P8533793186712543819

/-! ## A062715.P2750467948618297629

`A013609(A061579(n)+2-A003057(n+2))`
-/

namespace A062715.P2750467948618297629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 (A061579 n + (2 - A003057 (n + 2))).toNat

end

end A062715.P2750467948618297629

/-! ## A062715.P7334034222866078889

`A188440(A386206(n))`
-/

namespace A062715.P7334034222866078889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188440 (A386206 n).toNat

end

end A062715.P7334034222866078889

/-! ## A062715.P13889903893452956048

`A128099(A082156(n+2))`
-/

namespace A062715.P13889903893452956048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128099 (A082156 (n + 2)).toNat

end

end A062715.P13889903893452956048

/-! ## A062715.P14505116195296336977

`A193791(n)%A156538(n+1)`
-/

namespace A062715.P14505116195296336977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193791 n) (A156538 (n + 1))

end

end A062715.P14505116195296336977

/-!
# A062716: Number of arrangements of 1,2,..,n*n in an n X n matrix such that each row is increasing or decreasing.

The programs for A062716, the canonical program `A062716.P5327249530867621701` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062716 has offset 1).

The definition of A062716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062716.P5327249530867621701

`2^n*n²!/n!^n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062716

/-- `2^n*n²!/n!^n` -/
def P5327249530867621701.Spec : Prop :=
  ∀ n, P5327249530867621701.a n = (A062716 (n + 1) : ℚ)

end A062716

/-! ## A062716.P7955292988195953051

`2^n*A034841(n)`
-/

namespace A062716.P7955292988195953051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A034841 n

end

end A062716.P7955292988195953051

namespace A062716

/-- `2^n*A034841(n)` -/
def P7955292988195953051.Spec : Prop :=
  ∀ n, P7955292988195953051.a n = A062716 (n + 1)

end A062716

/-! ## A062716.P314309112642802312

`n!*A000079(n)*A057599(n)`
-/

namespace A062716.P314309112642802312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A000079 n * A057599 n

end

end A062716.P314309112642802312

namespace A062716

/-- `n!*A000079(n)*A057599(n)` -/
def P314309112642802312.Spec : Prop :=
  ∀ n, P314309112642802312.a n = A062716 (n + 1)

end A062716

/-! ## A062716.P7037729316374734444

`A034841(n)*A256890(C(n+1, 2))`
-/

namespace A062716.P7037729316374734444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034841 n * A256890 (Nat.choose (n + 1) 2)

end

end A062716.P7037729316374734444

namespace A062716

/-- `A034841(n)*A256890(C(n+1, 2))` -/
def P7037729316374734444.Spec : Prop :=
  ∀ n, P7037729316374734444.a n = A062716 (n + 1)

end A062716

/-! ## A062716.P18068943407750886711

`A000142(n)*A057599(n)*2^n`
-/

namespace A062716.P18068943407750886711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A057599 n * (2 ^ n : ℤ)

end

end A062716.P18068943407750886711

namespace A062716

/-- `A000142(n)*A057599(n)*2^n` -/
def P18068943407750886711.Spec : Prop :=
  ∀ n, P18068943407750886711.a n = A062716 (n + 1)

end A062716

/-!
# A062717: Numbers m such that 6*m+1 is a perfect square.

The programs for A062717, the canonical program `A062717.P16511814154704711162` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062717 has offset 1).

The definition of A062717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062717.P16511814154704711162

`n²+n+2*ceil(n/2)²`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062717

/-- `n²+n+2*ceil(n/2)²` -/
def P16511814154704711162.Spec : Prop :=
  ∀ n, P16511814154704711162.a n = A062717 (n + 1)

theorem P16511814154704711162.correct : P16511814154704711162.Spec := by
  intro n
  simp only [A062717, Nat.add_sub_cancel]

end A062717

/-! ## A062717.P12262072007031587677

`∑[2*lcm(2, n)]`
-/

namespace A062717.P12262072007031587677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lcm 2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P12262072007031587677

namespace A062717

/-- `∑[2*lcm(2, n)]` -/
def P12262072007031587677.Spec : Prop :=
  ∀ n, (P12262072007031587677.a n : ℤ) = A062717 (n + 1)

end A062717

/-! ## A062717.P3230744083806016421

`∑[4*gcd(n, ∑[n])]`
-/

namespace A062717.P3230744083806016421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P3230744083806016421

namespace A062717

/-- `∑[4*gcd(n, ∑[n])]` -/
def P3230744083806016421.Spec : Prop :=
  ∀ n, (P3230744083806016421.a n : ℤ) = A062717 (n + 1)

end A062717

/-! ## A062717.P11509726265486169646

`∑[2*n*(n%2+1)]`
-/

namespace A062717.P11509726265486169646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n * (n % 2 + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P11509726265486169646

namespace A062717

/-- `∑[2*n*(n%2+1)]` -/
def P11509726265486169646.Spec : Prop :=
  ∀ n, (P11509726265486169646.a n : ℤ) = A062717 (n + 1)

end A062717

/-! ## A062717.P979106168976619209

`∑[(and(1, n)+1)*2*n]`
-/

namespace A062717.P979106168976619209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n + 1) * (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P979106168976619209

namespace A062717

/-- `∑[(and(1, n)+1)*2*n]` -/
def P979106168976619209.Spec : Prop :=
  ∀ n, (P979106168976619209.a n : ℤ) = A062717 (n + 1)

end A062717

/-! ## A062717.P11678219891445709431

`∑[2*n*2^and(1, n)]`
-/

namespace A062717.P11678219891445709431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * 2 ^ Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P11678219891445709431

namespace A062717

/-- `∑[2*n*2^and(1, n)]` -/
def P11678219891445709431.Spec : Prop :=
  ∀ n, (P11678219891445709431.a n : ℤ) = A062717 (n + 1)

end A062717

/-! ## A062717.P18034098939527551938

`∑[2*n*C(2, and(1, n))]`
-/

namespace A062717.P18034098939527551938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.choose 2 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P18034098939527551938

namespace A062717

/-- `∑[2*n*C(2, and(1, n))]` -/
def P18034098939527551938.Spec : Prop :=
  ∀ n, (P18034098939527551938.a n : ℤ) = A062717 (n + 1)

end A062717

/-! ## A062717.P493095234117506633

`∑[n*(xor(1, n+3)-n)]`
-/

namespace A062717.P493095234117506633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((Nat.xor 1 (n + 3) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P493095234117506633

namespace A062717

/-- `∑[n*(xor(1, n+3)-n)]` -/
def P493095234117506633.Spec : Prop :=
  ∀ n, P493095234117506633.a n = A062717 (n + 1)

end A062717

/-! ## A062717.P7382472190549737247

`∑[2*n*((2*n)%4)!]`
-/

namespace A062717.P7382472190549737247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.factorial (2 * n % 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P7382472190549737247

namespace A062717

/-- `∑[2*n*((2*n)%4)!]` -/
def P7382472190549737247.Spec : Prop :=
  ∀ n, (P7382472190549737247.a n : ℤ) = A062717 (n + 1)

end A062717

/-! ## A062717.P4617493817004414546

`∑[2*n*(2*and(1, n))!]`
-/

namespace A062717.P4617493817004414546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Nat.factorial (2 * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P4617493817004414546

namespace A062717

/-- `∑[2*n*(2*and(1, n))!]` -/
def P4617493817004414546.Spec : Prop :=
  ∀ n, (P4617493817004414546.a n : ℤ) = A062717 (n + 1)

end A062717

/-! ## A062717.P15845241053136498907

`∑[n*∑[-a(n-1)]]` with `a(0)=2, a(1)=2`
-/

namespace A062717.P15845241053136498907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f2 =>
  -f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P15845241053136498907

namespace A062717

/-- `∑[n*∑[-a(n-1)]]` -/
def P15845241053136498907.Spec : Prop :=
  ∀ n, P15845241053136498907.a n = A062717 (n + 1)

end A062717

/-! ## A062717.P7112949915556397598

`∑[(2-and(1, n-1))*2*n]`
-/

namespace A062717.P7112949915556397598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - Int.land 1 ((n : ℤ) - 1)) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P7112949915556397598

namespace A062717

/-- `∑[(2-and(1, n-1))*2*n]` -/
def P7112949915556397598.Spec : Prop :=
  ∀ n, P7112949915556397598.a n = A062717 (n + 1)

end A062717

/-! ## A062717.P916621527441818391

`∑[(or(1, n+1)-n)*2*n]`
-/

namespace A062717.P916621527441818391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 1 (n + 1) : ℤ) - (n : ℤ)) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P916621527441818391

namespace A062717

/-- `∑[(or(1, n+1)-n)*2*n]` -/
def P916621527441818391.Spec : Prop :=
  ∀ n, P916621527441818391.a n = A062717 (n + 1)

end A062717

/-! ## A062717.P8667570247149626902

`∑[(n-or(1, n-2))*2*n]`
-/

namespace A062717.P8667570247149626902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - Int.lor 1 ((n : ℤ) - 2)) * (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P8667570247149626902

namespace A062717

/-- `∑[(n-or(1, n-2))*2*n]` -/
def P8667570247149626902.Spec : Prop :=
  ∀ n, P8667570247149626902.a n = A062717 (n + 1)

end A062717

/-! ## A062717.P12501047423642222785

`∑[-(2*n*or(n+1, -2))]`
-/

namespace A062717.P12501047423642222785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℤ) * Int.lor (n + 1 : ℤ) (-2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P12501047423642222785

namespace A062717

/-- `∑[-(2*n*or(n+1, -2))]` -/
def P12501047423642222785.Spec : Prop :=
  ∀ n, P12501047423642222785.a n = A062717 (n + 1)

end A062717

/-! ## A062717.P4935934860327395096

`4*∑[ogf((x+x^2+x^3)/(1-2x^2+x^4))]`
-/

namespace A062717.P4935934860327395096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1] [1, 0, -2, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062717.P4935934860327395096

namespace A062717

/-- `4*∑[ogf((x+x^2+x^3)/(1-2x^2+x^4))]` -/
def P4935934860327395096.Spec : Prop :=
  ∀ n, P4935934860327395096.a n = A062717 (n + 1)

end A062717

/-! ## A062717.P16799711049478994653

`∑[C(2*n, a(n-1)+1)+2*n]` with `a(0)=0`
-/

namespace A062717.P16799711049478994653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  Nat.choose (2 * n) (f1 (n - 1) + 1) + 2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P16799711049478994653

namespace A062717

/-- `∑[C(2*n, a(n-1)+1)+2*n]` -/
def P16799711049478994653.Spec : Prop :=
  ∀ n, (P16799711049478994653.a n : ℤ) = A062717 (n + 1)

end A062717

/-! ## A062717.P9760144216858667910

`2*A152749(n)`
-/

namespace A062717.P9760144216858667910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152749 n

end

end A062717.P9760144216858667910

namespace A062717

/-- `2*A152749(n)` -/
def P9760144216858667910.Spec : Prop :=
  ∀ n, P9760144216858667910.a n = A062717 (n + 1)

end A062717

/-! ## A062717.P8395131711862610790

`4*A001318(n)`
-/

namespace A062717.P8395131711862610790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A001318 n

end

end A062717.P8395131711862610790

namespace A062717

/-- `4*A001318(n)` -/
def P8395131711862610790.Spec : Prop :=
  ∀ n, P8395131711862610790.a n = A062717 (n + 1)

end A062717

/-! ## A062717.P12357386505957097886

`∑[2*A109043(n)]`
-/

namespace A062717.P12357386505957097886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A109043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062717.P12357386505957097886

namespace A062717

/-- `∑[2*A109043(n)]` -/
def P12357386505957097886.Spec : Prop :=
  ∀ n, P12357386505957097886.a n = A062717 (n + 1)

end A062717

/-!
# A062718: p and p^2 + 6 are both prime.

The programs for A062718, there is no canonical definition to state claims against.
-/

/-! ## A062718.P5749130002831182524

`floor(sqrt(A079141(n+1)))`
-/

namespace A062718.P5749130002831182524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A079141 (n + 1))

end

end A062718.P5749130002831182524

/-! ## A062718.P14062515640798204663

`p?[A114269(n+1)]`
-/

namespace A062718.P14062515640798204663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062718.P14062515640798204663

/-! ## A062718.P7509768926866955639

`∩[A114269(n+1), A128925(n+1)]`
-/

namespace A062718.P7509768926866955639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P7509768926866955639

/-! ## A062718.P9711881050894543387

`∩[A038872(n+1), A114269(n+1)]`
-/

namespace A062718.P9711881050894543387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P9711881050894543387

/-! ## A062718.P12822104599427273604

`∩[A038872(n+1), A128925(n+1)]`
-/

namespace A062718.P12822104599427273604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128925 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P12822104599427273604

/-! ## A062718.P9669756001645518072

`∩[A114269(n+1), A348283(n+1)]`
-/

namespace A062718.P9669756001645518072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P9669756001645518072

/-! ## A062718.P15263748624757178967

`∩[A128925(n+1), A341783(n+1)]`
-/

namespace A062718.P15263748624757178967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128925 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341783 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P15263748624757178967

/-! ## A062718.P3702443086430272469

`∩[A042989(n+1), A114269(n+1)]`
-/

namespace A062718.P3702443086430272469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P3702443086430272469

/-! ## A062718.P111257444529343287

`∩[A045308(n+1), A114269(n+1)]`
-/

namespace A062718.P111257444529343287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P111257444529343287

/-! ## A062718.P15690697132207912697

`∩[A045405(n+1), A114269(n+1)]`
-/

namespace A062718.P15690697132207912697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P15690697132207912697

/-! ## A062718.P9088481036970474708

`∩[A045348(n+1), A114269(n+1)]`
-/

namespace A062718.P9088481036970474708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P9088481036970474708

/-! ## A062718.P14557531555801439571

`∩[A114269(n+1), A230359(n+1)]`
-/

namespace A062718.P14557531555801439571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P14557531555801439571

/-! ## A062718.P18434382207170782889

`∩[A114269(n+1), A132143(n+1)]`
-/

namespace A062718.P18434382207170782889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P18434382207170782889

/-! ## A062718.P11107318634144867967

`∩[A114269(n+1), A042988(n)]`
-/

namespace A062718.P11107318634144867967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P11107318634144867967

/-! ## A062718.P13215607112570262343

`∩[A042997(n+1), A114269(n+1)]`
-/

namespace A062718.P13215607112570262343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P13215607112570262343

/-! ## A062718.P9752001606003210626

`∩[A044042(n+1), A114269(n+1)]`
-/

namespace A062718.P9752001606003210626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044042 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P9752001606003210626

/-! ## A062718.P8319944571204031334

`∩[A114269(n+1), A216882(n+1)]`
-/

namespace A062718.P8319944571204031334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P8319944571204031334

/-! ## A062718.P16184036145022799031

`∩[A114269(n+1), A216881(n+1)]`
-/

namespace A062718.P16184036145022799031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P16184036145022799031

/-! ## A062718.P17704791259527532335

`∩[A042966(n+1), A114269(n+1)]`
-/

namespace A062718.P17704791259527532335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062718.P17704791259527532335

/-!
# A062719: a(n) = floor(Pi^n/n^Pi).

The programs for A062719, the canonical program `A062719.P12751823870104135655` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062719 has offset 1).

The definition of A062719 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(π^(n+1)/(n+1)^π)` (program `A062719.P12751823870104135655`, by `A062719.P12751823870104135655.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062719.P12751823870104135655

`floor(π^(n+1)/(n+1)^π)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062719

/-- `floor(π^(n+1)/(n+1)^π)` -/
def P12751823870104135655.Spec : Prop :=
  ∀ n, P12751823870104135655.a n = A062719 (n + 1)

theorem P12751823870104135655.correct : P12751823870104135655.Spec := by
  intro n
  simp only [A062719, Nat.add_sub_cancel]

end A062719

/-! ## A062719.P7035430256007148395

`A340682(round(ϕ*a(n-1)))` with `a(0)=3, a(1)=1, a(2)=0, a(3)=1, a(4)=1`
-/

namespace A062719.P7035430256007148395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 1, 0, 1, 1] fun n a =>
  A340682 (SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ))).toNat

end

end A062719.P7035430256007148395

namespace A062719

/-- `A340682(round(ϕ*a(n-1)))` -/
def P7035430256007148395.Spec : Prop :=
  ∀ n, P7035430256007148395.a n = A062719 (n + 1)

end A062719

/-!
# A062720: If n is odd then 2*n else prime(n).

The programs for A062720, the canonical program `A062720.P5446721574008662633` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062720 has offset 1).

The definition of A062720 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062720.P5754388249578119813

`gcd(n+1, n%2)*A000040((n+1)^and(1, n))`
-/

namespace A062720.P5754388249578119813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (n + 1) (n % 2) : ℤ) * A000040 ((n + 1) ^ Nat.land 1 n)

end

end A062720.P5754388249578119813

namespace A062720

/-- `gcd(n+1, n%2)*A000040((n+1)^and(1, n))` -/
def P5754388249578119813.Spec : Prop :=
  ∀ n, P5754388249578119813.a n = A062720 (n + 1)

end A062720

/-! ## A062720.P5446721574008662633

`((A000040(n+1)-(n+2))*and(1, n)+n)*gcd(2, n)+2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062720

/-- `((A000040(n+1)-(n+2))*and(1, n)+n)*gcd(2, n)+2` -/
def P5446721574008662633.Spec : Prop :=
  ∀ n, P5446721574008662633.a n = A062720 (n + 1)

theorem P5446721574008662633.correct : P5446721574008662633.Spec := by
  intro n
  simp only [A062720, Nat.add_sub_cancel]

end A062720

/-! ## A062720.P1442535905929351131

`A082500(A123167(n+1)+1)`
-/

namespace A062720.P1442535905929351131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A123167 (n + 1) + 1).toNat

end

end A062720.P1442535905929351131

namespace A062720

/-- `A082500(A123167(n+1)+1)` -/
def P1442535905929351131.Spec : Prop :=
  ∀ n, P1442535905929351131.a n = A062720 (n + 1)

end A062720

/-! ## A062720.P11139731656300878199

`A083221(∑[A266303(n)]+1)`
-/

namespace A062720.P11139731656300878199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A062720.P11139731656300878199

namespace A062720

/-- `A083221(∑[A266303(n)]+1)` -/
def P11139731656300878199.Spec : Prop :=
  ∀ n, P11139731656300878199.a n = A062720 (n + 1)

end A062720

/-! ## A062720.P4724801313753720689

`A083221(A131179(n+1)+1)`
-/

namespace A062720.P4724801313753720689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083221 (A131179 (n + 1) + 1).toNat

end

end A062720.P4724801313753720689

namespace A062720

/-- `A083221(A131179(n+1)+1)` -/
def P4724801313753720689.Spec : Prop :=
  ∀ n, P4724801313753720689.a n = A062720 (n + 1)

end A062720

/-! ## A062720.P6520032053586666249

`A083140(A266304(n)+2)`
-/

namespace A062720.P6520032053586666249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (A266304 n + 2).toNat

end

end A062720.P6520032053586666249

namespace A062720

/-- `A083140(A266304(n)+2)` -/
def P6520032053586666249.Spec : Prop :=
  ∀ n, P6520032053586666249.a n = A062720 (n + 1)

end A062720

/-! ## A062720.P15741562868626269645

`A083140(C(A109613(n), 2)+n+2)`
-/

namespace A062720.P15741562868626269645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083140 (Nat.choose (A109613 n).toNat 2 + n + 2)

end

end A062720.P15741562868626269645

namespace A062720

/-- `A083140(C(A109613(n), 2)+n+2)` -/
def P15741562868626269645.Spec : Prop :=
  ∀ n, P15741562868626269645.a n = A062720 (n + 1)

end A062720

/-! ## A062720.P4421983747630751713

`A249741(∑[A266303(n)])+1`
-/

namespace A062720.P4421983747630751713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249741 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A062720.P4421983747630751713

namespace A062720

/-- `A249741(∑[A266303(n)])+1` -/
def P4421983747630751713.Spec : Prop :=
  ∀ n, P4421983747630751713.a n = A062720 (n + 1)

end A062720

/-! ## A062720.P4923177841363281226

`A246275(∑[(2*n)^(n%2)])+1`
-/

namespace A062720.P4923177841363281226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ (n % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246275 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A062720.P4923177841363281226

namespace A062720

/-- `A246275(∑[(2*n)^(n%2)])+1` -/
def P4923177841363281226.Spec : Prop :=
  ∀ n, P4923177841363281226.a n = A062720 (n + 1)

end A062720

/-! ## A062720.P5676697869945717507

`A246275(∑[A266303(n)])+1`
-/

namespace A062720.P5676697869945717507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A062720.P5676697869945717507

namespace A062720

/-- `A246275(∑[A266303(n)])+1` -/
def P5676697869945717507.Spec : Prop :=
  ∀ n, P5676697869945717507.a n = A062720 (n + 1)

end A062720

/-!
# A062721: Numbers k such that k is a product of two primes and k-2 is prime.

The programs for A062721, there is no canonical definition to state claims against.
-/

/-! ## A062721.P15844624859382661067

`A063637(n+1)+2`
-/

namespace A062721.P15844624859382661067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063637 (n + 1) + 2

end

end A062721.P15844624859382661067

/-! ## A062721.P9679671780296187205

`∪[A043326(n+1), A146981(n+1)]`
-/

namespace A062721.P9679671780296187205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043326 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146981 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062721.P9679671780296187205

/-! ## A062721.P16066216653679543129

`∪[A091180(n+1), A117242(n+1)]+2`
-/

namespace A062721.P16066216653679543129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091180 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A062721.P16066216653679543129

/-! ## A062721.P14259251721138328862

`p?[A157931(n+1)-2]+2`
-/

namespace A062721.P14259251721138328862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A062721.P14259251721138328862

/-! ## A062721.P9731987156874684204

`∩[A107986(n+1), A157931(n+1)]`
-/

namespace A062721.P9731987156874684204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062721.P9731987156874684204

/-! ## A062721.P9552394787591487497

`∩[A067774(n+1), A109611(n+1)]+2`
-/

namespace A062721.P9552394787591487497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A062721.P9552394787591487497

/-! ## A062721.P12114859755177300453

`∩[A052147(n+1), A157931(n+1)]`
-/

namespace A062721.P12114859755177300453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062721.P12114859755177300453

/-! ## A062721.P15875742900344835010

`record[2-A000040(n+1)*A106667(n+1)]`
-/

namespace A062721.P15875742900344835010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A000040 (n + 1) * A106667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062721.P15875742900344835010

/-! ## A062721.P14248131699895640691

`∩[A157931(n+1), A158337(n+1)]`
-/

namespace A062721.P14248131699895640691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157931 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158337 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062721.P14248131699895640691

/-! ## A062721.P12165121794604848194

`A007429(A063637(n+1))`
-/

namespace A062721.P12165121794604848194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (A063637 (n + 1)).toNat

end

end A062721.P12165121794604848194

/-! ## A062721.P12819598216412489592

`filter[A107986(n+1), A359828(#)]`
-/

namespace A062721.P12819598216412489592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A062721.P12819598216412489592

/-! ## A062721.P17041645959641095623

`filter[A139690(n+1), A356163(#)]`
-/

namespace A062721.P17041645959641095623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A356163 (f1 j).toNat = 1) n)

end

end A062721.P17041645959641095623

/-! ## A062721.P5989834113098699348

`filter[A139690(n+1), A358680(#)]`
-/

namespace A062721.P5989834113098699348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358680 (f1 j).toNat = 1) n)

end

end A062721.P5989834113098699348

/-! ## A062721.P14436420805712493412

`filter[A139690(n+1), A359764(#)]`
-/

namespace A062721.P14436420805712493412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A062721.P14436420805712493412

/-! ## A062721.P7407416335687238980

`filter[A139690(n+1), A359781(#)]`
-/

namespace A062721.P7407416335687238980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359781 (f1 j).toNat = 1) n)

end

end A062721.P7407416335687238980

/-! ## A062721.P2489367452685679777

`filter[A139690(n+1), A359816(#)]`
-/

namespace A062721.P2489367452685679777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359816 (f1 j).toNat = 1) n)

end

end A062721.P2489367452685679777

/-! ## A062721.P9540074359763920773

`filter[A139690(n+1), A359824(#)]`
-/

namespace A062721.P9540074359763920773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A062721.P9540074359763920773

/-! ## A062721.P15577068010255940290

`filter[A139690(n+1), A359828(#)]`
-/

namespace A062721.P15577068010255940290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A062721.P15577068010255940290

/-! ## A062721.P11242597629960983483

`filter[A139690(n+1), A373374(#)]`
-/

namespace A062721.P11242597629960983483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373374 (f1 j).toNat = 1) n)

end

end A062721.P11242597629960983483

/-! ## A062721.P4090717070711886527

`filter[A139690(n+1), A373481(#)]`
-/

namespace A062721.P4090717070711886527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A062721.P4090717070711886527

/-!
# A062722: a(n) = ceiling(n/3)*round(n/4).

The programs for A062722, the canonical program `A062722.P11149970561914913597` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062722 has offset 0).

The definition of A062722 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(n/3)*round(n/4)` (program `A062722.P11149970561914913597`, by `A062722.P11149970561914913597.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062722.P11149970561914913597

`ceil(n/3)*round(n/4)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062722

/-- `ceil(n/3)*round(n/4)` -/
def P11149970561914913597.Spec : Prop :=
  ∀ n, P11149970561914913597.a n = A062722 n

theorem P11149970561914913597.correct : P11149970561914913597.Spec := by
  intro n
  simp only [A062722]

end A062722

/-! ## A062722.P1437218875496438420

`A002265(n+2)*A004277(ceil(n/3))/2`
-/

namespace A062722.P1437218875496438420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002265 (n + 2) * A004277 ⌈(n : ℚ) / 3⌉.toNat : ℚ) / 2

end

end A062722.P1437218875496438420

namespace A062722

/-- `A002265(n+2)*A004277(ceil(n/3))/2` -/
def P1437218875496438420.Spec : Prop :=
  ∀ n, P1437218875496438420.a n = (A062722 n : ℚ)

end A062722

/-! ## A062722.P12998258659119009883

`abs(A242601(n)*A242602(2*n+1))`
-/

namespace A062722.P12998258659119009883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A242601 n * A242602 (2 * n + 1)|

end

end A062722.P12998258659119009883

namespace A062722

/-- `abs(A242601(n)*A242602(2*n+1))` -/
def P12998258659119009883.Spec : Prop :=
  ∀ n, P12998258659119009883.a n = A062722 n

end A062722

/-! ## A062722.P4651542456740224373

`A001281(A002265(n+2)*A008611(2*n+1))`
-/

namespace A062722.P4651542456740224373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A002265 (n + 2) * A008611 (2 * n + 1)).toNat

end

end A062722.P4651542456740224373

namespace A062722

/-- `A001281(A002265(n+2)*A008611(2*n+1))` -/
def P4651542456740224373.Spec : Prop :=
  ∀ n, P4651542456740224373.a n = A062722 n

end A062722

/-!
# A062723: Least common multiple (LCM) of the first n+1 terms of A000792.

The programs for A062723, the canonical program `A062723.P1372919707307386588` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062723 has offset 0).

The definition of A062723 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 627 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062723.P1372919707307386588

`lcm(gcd(3, n)*a(n-1), gcd(4, n))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062723

/-- `lcm(gcd(3, n)*a(n-1), gcd(4, n))` -/
def P1372919707307386588.Spec : Prop :=
  ∀ n, (P1372919707307386588.a n : ℤ) = A062723 n

theorem P1372919707307386588.correct : P1372919707307386588.Spec := by
  intro n
  simp only [A062723]

end A062723

/-! ## A062723.P8773697755719557791

`lcm(a(n-1), A000792(n))` with `a(0)=1`
-/

namespace A062723.P8773697755719557791
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000792 n)

end

end A062723.P8773697755719557791

namespace A062723

/-- `lcm(a(n-1), A000792(n))` -/
def P8773697755719557791.Spec : Prop :=
  ∀ n, (P8773697755719557791.a n : ℤ) = A062723 n

end A062723

/-! ## A062723.P14734386054828388831

`A127975(n)*A380340(n+1)`
-/

namespace A062723.P14734386054828388831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127975 n * A380340 (n + 1)

end

end A062723.P14734386054828388831

namespace A062723

/-- `A127975(n)*A380340(n+1)` -/
def P14734386054828388831.Spec : Prop :=
  ∀ n, P14734386054828388831.a n = A062723 n

end A062723

/-! ## A062723.P6384548526453351783

`gcd(4, A016116(n))*A127975(n)`
-/

namespace A062723.P6384548526453351783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 4 (A016116 n) : ℤ) * A127975 n

end

end A062723.P6384548526453351783

namespace A062723

/-- `gcd(4, A016116(n))*A127975(n)` -/
def P6384548526453351783.Spec : Prop :=
  ∀ n, P6384548526453351783.a n = A062723 n

end A062723

/-! ## A062723.P2502213109383896295

`∏[A000041(gcd(n, A321883(n+1)))]`
-/

namespace A062723.P2502213109383896295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Int.gcd (n : ℤ) (A321883 (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A062723.P2502213109383896295

namespace A062723

/-- `∏[A000041(gcd(n, A321883(n+1)))]` -/
def P2502213109383896295.Spec : Prop :=
  ∀ n, P2502213109383896295.a n = A062723 n

end A062723

/-! ## A062723.P6244331305892198690

`lcm(-a(n-1), record[A155118(n)])` with `a(0)=1`
-/

namespace A062723.P6244331305892198690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155118 n

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (-(a (n - 1) : ℤ)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A062723.P6244331305892198690

namespace A062723

/-- `lcm(-a(n-1), record[A155118(n)])` -/
def P6244331305892198690.Spec : Prop :=
  ∀ n, (P6244331305892198690.a n : ℤ) = A062723 n

end A062723

/-! ## A062723.P5711865092015220786

`gcd(A003946(A008620(n)), A026532(n+1))`
-/

namespace A062723.P5711865092015220786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003946 (A008620 n).toNat) (A026532 (n + 1))

end

end A062723.P5711865092015220786

namespace A062723

/-- `gcd(A003946(A008620(n)), A026532(n+1))` -/
def P5711865092015220786.Spec : Prop :=
  ∀ n, (P5711865092015220786.a n : ℤ) = A062723 n

end A062723

/-!
# A062724: a(n) = floor(phi^n) + 1, where phi = (1 + sqrt(5))/2.

The programs for A062724, the canonical program `A062724.P10046373013918908394` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062724 has offset 0).

The definition of A062724 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 479 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062724.P9628796878702212804

`∑[ogf((-2+3x^2)/(-1+2x^2+x^3))]`
-/

namespace A062724.P9628796878702212804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -3] [1, 0, -2, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062724.P9628796878702212804

namespace A062724

/-- `∑[ogf((-2+3x^2)/(-1+2x^2+x^3))]` -/
def P9628796878702212804.Spec : Prop :=
  ∀ n, P9628796878702212804.a n = A062724 n

end A062724

/-! ## A062724.P205450988125455193

`ogf((2-3x^2)/(1-x-2x^2+x^3+x^4))`
-/

namespace A062724.P205450988125455193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -3] [1, -1, -2, 1, 1] n

end

end A062724.P205450988125455193

namespace A062724

/-- `ogf((2-3x^2)/(1-x-2x^2+x^3+x^4))` -/
def P205450988125455193.Spec : Prop :=
  ∀ n, P205450988125455193.a n = A062724 n

end A062724

/-! ## A062724.P10046373013918908394

`∑[a(n-3)+2*a(n-2)]` with `a(0)=2, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062724

/-- `∑[a(n-3)+2*a(n-2)]` -/
def P10046373013918908394.Spec : Prop :=
  ∀ n, (P10046373013918908394.a n : ℤ) = A062724 n

theorem P10046373013918908394.correct : P10046373013918908394.Spec := by
  intro n
  simp only [A062724]

end A062724

/-! ## A062724.P18217609048845391979

`2*a(n-2)+a(n-3)-1` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A062724.P18217609048845391979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  2 * a (n - 2) + (a (n - 3) - 1)

end

end A062724.P18217609048845391979

namespace A062724

/-- `2*a(n-2)+a(n-3)-1` -/
def P18217609048845391979.Spec : Prop :=
  ∀ n, P18217609048845391979.a n = A062724 n

end A062724

/-! ## A062724.P11524233522889684204

`2*a(n-2)-(1-a(n-3))` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A062724.P11524233522889684204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  2 * a (n - 2) - (1 - a (n - 3))

end

end A062724.P11524233522889684204

namespace A062724

/-- `2*a(n-2)-(1-a(n-3))` -/
def P11524233522889684204.Spec : Prop :=
  ∀ n, P11524233522889684204.a n = A062724 n

end A062724

/-! ## A062724.P2956190080550183940

`(1-n)%2+a(n-1)+a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A062724.P2956190080550183940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  Int.tmod (1 - (n : ℤ)) 2 + (a (n - 1) + a (n - 2))

end

end A062724.P2956190080550183940

namespace A062724

/-- `(1-n)%2+a(n-1)+a(n-2)` -/
def P2956190080550183940.Spec : Prop :=
  ∀ n, P2956190080550183940.a n = A062724 n

end A062724

/-! ## A062724.P18022403283223587461

`1-gcd(2, n)+a(n-1)+a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A062724.P18022403283223587461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  1 - (Nat.gcd 2 n : ℤ) + (a (n - 1) + a (n - 2))

end

end A062724.P18022403283223587461

namespace A062724

/-- `1-gcd(2, n)+a(n-1)+a(n-2)` -/
def P18022403283223587461.Spec : Prop :=
  ∀ n, P18022403283223587461.a n = A062724 n

end A062724

/-! ## A062724.P3597766324003267334

`a(n-1)-((n-1)%2-a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A062724.P3597766324003267334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) - (Int.tmod ((n : ℤ) - 1) 2 - a (n - 2))

end

end A062724.P3597766324003267334

namespace A062724

/-- `a(n-1)-((n-1)%2-a(n-2))` -/
def P3597766324003267334.Spec : Prop :=
  ∀ n, P3597766324003267334.a n = A062724 n

end A062724

/-! ## A062724.P18152249380358594314

`a(n-1)+a(n-2)-and(1, n+1)` with `a(0)=2, a(1)=2`
-/

namespace A062724.P18152249380358594314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 1) + (a (n - 2) - (Nat.land 1 (n + 1) : ℤ))

end

end A062724.P18152249380358594314

namespace A062724

/-- `a(n-1)+a(n-2)-and(1, n+1)` -/
def P18152249380358594314.Spec : Prop :=
  ∀ n, P18152249380358594314.a n = A062724 n

end A062724

/-! ## A062724.P7150509174105613861

`∑[a(n-2)+a(n-2)+a(n-3)]` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A062724.P7150509174105613861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1] fun n f1 =>
  f1 (n - 2) + (f1 (n - 2) + f1 (n - 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062724.P7150509174105613861

namespace A062724

/-- `∑[a(n-2)+a(n-2)+a(n-3)]` -/
def P7150509174105613861.Spec : Prop :=
  ∀ n, (P7150509174105613861.a n : ℤ) = A062724 n

end A062724

/-! ## A062724.P5900276359216100145

`a(n-2)-1+a(n-2)+a(n-3)` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A062724.P5900276359216100145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  a (n - 2) - 1 + (a (n - 2) + a (n - 3))

end

end A062724.P5900276359216100145

namespace A062724

/-- `a(n-2)-1+a(n-2)+a(n-3)` -/
def P5900276359216100145.Spec : Prop :=
  ∀ n, P5900276359216100145.a n = A062724 n

end A062724

/-! ## A062724.P16008772611289754881

`a(n-2)-(1-a(n-2)-a(n-3))` with `a(0)=2, a(1)=2, a(2)=3`
-/

namespace A062724.P16008772611289754881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 3] fun n a =>
  a (n - 2) - (1 - a (n - 2) - a (n - 3))

end

end A062724.P16008772611289754881

namespace A062724

/-- `a(n-2)-(1-a(n-2)-a(n-3))` -/
def P16008772611289754881.Spec : Prop :=
  ∀ n, P16008772611289754881.a n = A062724 n

end A062724

/-! ## A062724.P2425117994887130533

`A014217(n)+1`
-/

namespace A062724.P2425117994887130533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014217 n + 1

end

end A062724.P2425117994887130533

namespace A062724

/-- `A014217(n)+1` -/
def P2425117994887130533.Spec : Prop :=
  ∀ n, P2425117994887130533.a n = A062724 n

end A062724

/-! ## A062724.P6074101553621332813

`A192660(2*n)+1`
-/

namespace A062724.P6074101553621332813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192660 (2 * n) + 1

end

end A062724.P6074101553621332813

namespace A062724

/-- `A192660(2*n)+1` -/
def P6074101553621332813.Spec : Prop :=
  ∀ n, P6074101553621332813.a n = A062724 n

end A062724

/-! ## A062724.P50445508778222273

`A000032(n)+n%2`
-/

namespace A062724.P50445508778222273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n + ((n % 2 : ℕ) : ℤ)

end

end A062724.P50445508778222273

namespace A062724

/-- `A000032(n)+n%2` -/
def P50445508778222273.Spec : Prop :=
  ∀ n, P50445508778222273.a n = A062724 n

end A062724

/-! ## A062724.P10706024453466983344

`A001350(n)+gcd(2, n)`
-/

namespace A062724.P10706024453466983344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001350 n + (Nat.gcd 2 n : ℤ)

end

end A062724.P10706024453466983344

namespace A062724

/-- `A001350(n)+gcd(2, n)` -/
def P10706024453466983344.Spec : Prop :=
  ∀ n, P10706024453466983344.a n = A062724 n

end A062724

/-! ## A062724.P16462139379200216088

`A000032(2*n-n)+and(1, n)`
-/

namespace A062724.P16462139379200216088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n - n) + (Nat.land 1 n : ℤ)

end

end A062724.P16462139379200216088

namespace A062724

/-- `A000032(2*n-n)+and(1, n)` -/
def P16462139379200216088.Spec : Prop :=
  ∀ n, P16462139379200216088.a n = A062724 n

end A062724

/-! ## A062724.P7770481063047036801

`A000032(n-1)+a(n-2)` with `a(0)=2, a(1)=2`
-/

namespace A062724.P7770481063047036801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  A000032 (n - 1) + a (n - 2)

end

end A062724.P7770481063047036801

namespace A062724

/-- `A000032(n-1)+a(n-2)` -/
def P7770481063047036801.Spec : Prop :=
  ∀ n, P7770481063047036801.a n = A062724 n

end A062724

/-! ## A062724.P4024824923947155854

`A169986(A028310(n))`
-/

namespace A062724.P4024824923947155854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169986 (A028310 n).toNat

end

end A062724.P4024824923947155854

namespace A062724

/-- `A169986(A028310(n))` -/
def P4024824923947155854.Spec : Prop :=
  ∀ n, P4024824923947155854.a n = A062724 n

end A062724

/-! ## A062724.P8187754336368893686

`A000035(n)+A000032(n)`
-/

namespace A062724.P8187754336368893686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + A000032 n

end

end A062724.P8187754336368893686

namespace A062724

/-- `A000035(n)+A000032(n)` -/
def P8187754336368893686.Spec : Prop :=
  ∀ n, P8187754336368893686.a n = A062724 n

end A062724

/-!
# A062725: Write 0, 1, 2, 3, 4, ... in a triangular spiral, then a(n) is the sequence found by reading the terms along the line from 0 in the direction 0, 7, ...

The programs for A062725, the canonical program `A062725.P4340676513485192541` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062725 has offset 0).

The definition of A062725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062725.P6502870342179313161

`n*(9*n+5)/2`
-/

namespace A062725.P6502870342179313161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (9 * n + 5) : ℚ) / 2

end

end A062725.P6502870342179313161

namespace A062725

/-- `n*(9*n+5)/2` -/
def P6502870342179313161.Spec : Prop :=
  ∀ n, P6502870342179313161.a n = (A062725 n : ℚ)

theorem P6502870342179313161.correct : P6502870342179313161.Spec := by
  intro n
  induction n with
  | zero => simp [A062725, A062725.P6502870342179313161.a, A062725.P4340676513485192541.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A062725, Nat.add_sub_cancel, A062725.P6502870342179313161.a, A062725.P4340676513485192541.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A062725

/-! ## A062725.P4340676513485192541

`9*n+a(n-1)-2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062725

/-- `9*n+a(n-1)-2` -/
def P4340676513485192541.Spec : Prop :=
  ∀ n, P4340676513485192541.a n = A062725 n

theorem P4340676513485192541.correct : P4340676513485192541.Spec := by
  intro n
  simp only [A062725]

end A062725

/-! ## A062725.P10903421824486107371

`a(n-1)+A017245(n-1)` with `a(0)=0`
-/

namespace A062725.P10903421824486107371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A017245 (n - 1)

end

end A062725.P10903421824486107371

namespace A062725

/-- `a(n-1)+A017245(n-1)` -/
def P10903421824486107371.Spec : Prop :=
  ∀ n, P10903421824486107371.a n = A062725 n

end A062725

/-! ## A062725.P6983074735605601419

`A218470(9*n+6)`
-/

namespace A062725.P6983074735605601419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 (9 * n + 6)

end

end A062725.P6983074735605601419

namespace A062725

/-- `A218470(9*n+6)` -/
def P6983074735605601419.Spec : Prop :=
  ∀ n, P6983074735605601419.a n = A062725 n

end A062725

/-! ## A062725.P11943254641897156909

`∑[record[n-3*dr(n)]]`
-/

namespace A062725.P11943254641897156909
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (3 * SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062725.P11943254641897156909

namespace A062725

/-- `∑[record[n-3*dr(n)]]` -/
def P11943254641897156909.Spec : Prop :=
  ∀ n, P11943254641897156909.a n = A062725 n

end A062725

/-! ## A062725.P15466869836290069652

`∑[a(n-1)+9]` with `a(0)=0, a(1)=7`
-/

namespace A062725.P15466869836290069652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 7] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062725.P15466869836290069652

namespace A062725

/-- `∑[a(n-1)+9]` -/
def P15466869836290069652.Spec : Prop :=
  ∀ n, (P15466869836290069652.a n : ℤ) = A062725 n

end A062725

/-! ## A062725.P7518500841171254653

`n+C(3*n+1, 2)`
-/

namespace A062725.P7518500841171254653
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + Nat.choose (3 * n + 1) 2

end

end A062725.P7518500841171254653

namespace A062725

/-- `n+C(3*n+1, 2)` -/
def P7518500841171254653.Spec : Prop :=
  ∀ n, (P7518500841171254653.a n : ℤ) = A062725 n

end A062725

/-! ## A062725.P2985556810363833558

`∑[ogf((7x+2x^2)/(1-2x+x^2))]`
-/

namespace A062725.P2985556810363833558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062725.P2985556810363833558

namespace A062725

/-- `∑[ogf((7x+2x^2)/(1-2x+x^2))]` -/
def P2985556810363833558.Spec : Prop :=
  ∀ n, P2985556810363833558.a n = A062725 n

end A062725

/-! ## A062725.P12370396952842989253

`ogf((7x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A062725.P12370396952842989253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7, 2] [1, -3, 3, -1] n

end

end A062725.P12370396952842989253

namespace A062725

/-- `ogf((7x+2x^2)/(1-3x+3x^2-x^3))` -/
def P12370396952842989253.Spec : Prop :=
  ∀ n, P12370396952842989253.a n = A062725 n

end A062725

/-! ## A062725.P117747934978408760

`9*n-(2-a(n-1))` with `a(0)=0`
-/

namespace A062725.P117747934978408760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (9 * n : ℤ) - (2 - a (n - 1))

end

end A062725.P117747934978408760

namespace A062725

/-- `9*n-(2-a(n-1))` -/
def P117747934978408760.Spec : Prop :=
  ∀ n, P117747934978408760.a n = A062725 n

theorem P117747934978408760.correct : P117747934978408760.Spec := by
  intro n
  simp only [A062725, Nat.add_sub_cancel, A062725.P117747934978408760.a, A062725.P4340676513485192541.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062725

/-! ## A062725.P3020847473038600770

`A064225(n)-1`
-/

namespace A062725.P3020847473038600770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n - 1

end

end A062725.P3020847473038600770

namespace A062725

/-- `A064225(n)-1` -/
def P3020847473038600770.Spec : Prop :=
  ∀ n, P3020847473038600770.a n = A062725 n

end A062725

/-! ## A062725.P7424901989036400767

`A081266(n)+n`
-/

namespace A062725.P7424901989036400767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n + (n : ℤ)

end

end A062725.P7424901989036400767

namespace A062725

/-- `A081266(n)+n` -/
def P7424901989036400767.Spec : Prop :=
  ∀ n, P7424901989036400767.a n = A062725 n

end A062725

/-! ## A062725.P1899059897428911416

`A062728(n)-n`
-/

namespace A062725.P1899059897428911416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062728 n - (n : ℤ)

end

end A062725.P1899059897428911416

namespace A062725

/-- `A062728(n)-n` -/
def P1899059897428911416.Spec : Prop :=
  ∀ n, P1899059897428911416.a n = A062725 n

end A062725

/-! ## A062725.P7075068568755560613

`A179986(n)+n²`
-/

namespace A062725.P7075068568755560613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n + (n ^ 2 : ℤ)

end

end A062725.P7075068568755560613

namespace A062725

/-- `A179986(n)+n²` -/
def P7075068568755560613.Spec : Prop :=
  ∀ n, P7075068568755560613.a n = A062725 n

end A062725

/-! ## A062725.P760683464784830074

`A002943(n)+∑[n]`
-/

namespace A062725.P760683464784830074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002943 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062725.P760683464784830074

namespace A062725

/-- `A002943(n)+∑[n]` -/
def P760683464784830074.Spec : Prop :=
  ∀ n, P760683464784830074.a n = A062725 n

end A062725

/-! ## A062725.P8147029667356166222

`A038764(n)-1+n`
-/

namespace A062725.P8147029667356166222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038764 n - 1 + (n : ℤ)

end

end A062725.P8147029667356166222

namespace A062725

/-- `A038764(n)-1+n` -/
def P8147029667356166222.Spec : Prop :=
  ∀ n, P8147029667356166222.a n = A062725 n

end A062725

/-! ## A062725.P4250765311336030805

`A081267(n)-(n+1)`
-/

namespace A062725.P4250765311336030805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n - (n + 1 : ℤ)

end

end A062725.P4250765311336030805

namespace A062725

/-- `A081267(n)-(n+1)` -/
def P4250765311336030805.Spec : Prop :=
  ∀ n, P4250765311336030805.a n = A062725 n

end A062725

/-! ## A062725.P3030175435252950609

`A022267(n)+2*n`
-/

namespace A062725.P3030175435252950609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022267 n + (2 * n : ℤ)

end

end A062725.P3030175435252950609

namespace A062725

/-- `A022267(n)+2*n` -/
def P3030175435252950609.Spec : Prop :=
  ∀ n, P3030175435252950609.a n = A062725 n

end A062725

/-! ## A062725.P13241644156738461941

`A000217(3*n)+n`
-/

namespace A062725.P13241644156738461941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n) + (n : ℤ)

end

end A062725.P13241644156738461941

namespace A062725

/-- `A000217(3*n)+n` -/
def P13241644156738461941.Spec : Prop :=
  ∀ n, P13241644156738461941.a n = A062725 n

end A062725

/-! ## A062725.P14617094439655268643

`3*A005449(n)+n`
-/

namespace A062725.P14617094439655268643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A005449 n + (n : ℤ)

end

end A062725.P14617094439655268643

namespace A062725

/-- `3*A005449(n)+n` -/
def P14617094439655268643.Spec : Prop :=
  ∀ n, P14617094439655268643.a n = A062725 n

end A062725

/-!
# A062726: Numbers that do not contain repeated letters when written in Roman numerals.

The programs for A062726, there is no canonical definition to state claims against.
-/

/-! ## A062726.P15954363246533167302

`eq[A006968(n+1), A057226(n+1)]+1`
-/

namespace A062726.P15954363246533167302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006968 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057226 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A062726.P15954363246533167302

/-! ## A062726.P999980648755410610

`eq[A057226(n+1), A092196(A093783(n+1))]+1`
-/

namespace A062726.P999980648755410610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092196 (A093783 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A062726.P999980648755410610

/-!
# A062727: Sum of the divisors of n^n (A000312).

The programs for A062727, the canonical program `A062727.P11139965182496471587` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062727 has offset 0).

The definition of A062727 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062727.P11139965182496471587

`A000203(A000312(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062727

/-- `A000203(A000312(n))` -/
def P11139965182496471587.Spec : Prop :=
  ∀ n, P11139965182496471587.a n = A062727 n

theorem P11139965182496471587.correct : P11139965182496471587.Spec := by
  intro n
  simp only [A062727]

end A062727

/-! ## A062727.P2533096299191214424

`∑{d}[n^n, #]`
-/

namespace A062727.P2533096299191214424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A062727.P2533096299191214424

namespace A062727

/-- `∑{d}[n^n, #]` -/
def P2533096299191214424.Spec : Prop :=
  ∀ n, (P2533096299191214424.a n : ℤ) = A062727 n

end A062727

/-! ## A062727.P14445951647593100493

`and(∑{d}[A301742(n), #], -1)`
-/

namespace A062727.P14445951647593100493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) (-1)

end

end A062727.P14445951647593100493

namespace A062727

/-- `and(∑{d}[A301742(n), #], -1)` -/
def P14445951647593100493.Spec : Prop :=
  ∀ n, P14445951647593100493.a n = A062727 n

end A062727

/-! ## A062727.P16602373174953537175

`floor(sqrt(∑{d}[A177885(n+1), #]²+1))`
-/

namespace A062727.P16602373174953537175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177885 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt ((∑ d ∈ Nat.divisors (f1 n).natAbs, d) ^ 2 + 1)

end

end A062727.P16602373174953537175

namespace A062727

/-- `floor(sqrt(∑{d}[A177885(n+1), #]²+1))` -/
def P16602373174953537175.Spec : Prop :=
  ∀ n, (P16602373174953537175.a n : ℤ) = A062727 n

end A062727

/-!
# A062728: Second 11-gonal (or hendecagonal) numbers: a(n) = n*(9*n+7)/2.

The programs for A062728, the canonical program `A062728.P1978771371578681059` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062728 has offset 0).

The definition of A062728 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(9*n+7)/2` (program `A062728.P3468317552720417034`, by `A062728.P3468317552720417034.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062728.P3468317552720417034

`n*(9*n+7)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062728.P3468317552720417034
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (9 * n + 7) : ℚ) / 2

end

end A062728.P3468317552720417034

namespace A062728

/-- `n*(9*n+7)/2` -/
def P3468317552720417034.Spec : Prop :=
  ∀ n, P3468317552720417034.a n = (A062728 n : ℚ)

theorem P3468317552720417034.correct : P3468317552720417034.Spec := by
  intro n
  induction n with
  | zero => simp [A062728, A062728.P3468317552720417034.a, A062728.P1978771371578681059.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A062728, Nat.add_sub_cancel, A062728.P3468317552720417034.a, A062728.P1978771371578681059.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A062728

/-! ## A062728.P1978771371578681059

`9*n+a(n-1)-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062728

/-- `9*n+a(n-1)-1` -/
def P1978771371578681059.Spec : Prop :=
  ∀ n, P1978771371578681059.a n = A062728 n

theorem P1978771371578681059.correct : P1978771371578681059.Spec := by
  intro n
  simp only [A062728]

end A062728

/-! ## A062728.P3219403088746103975

`A218470(9*n+7)`
-/

namespace A062728.P3219403088746103975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 (9 * n + 7)

end

end A062728.P3219403088746103975

namespace A062728

/-- `A218470(9*n+7)` -/
def P3219403088746103975.Spec : Prop :=
  ∀ n, P3219403088746103975.a n = A062728 n

end A062728

/-! ## A062728.P10284005266769386668

`∑[a(n-1)+9]` with `a(0)=0, a(1)=8`
-/

namespace A062728.P10284005266769386668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 8] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062728.P10284005266769386668

namespace A062728

/-- `∑[a(n-1)+9]` -/
def P10284005266769386668.Spec : Prop :=
  ∀ n, (P10284005266769386668.a n : ℤ) = A062728 n

end A062728

/-! ## A062728.P13061680867838484965

`9*C(n+1, 2)-n`
-/

namespace A062728.P13061680867838484965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 * Nat.choose (n + 1) 2 : ℤ) - (n : ℤ)

end

end A062728.P13061680867838484965

namespace A062728

/-- `9*C(n+1, 2)-n` -/
def P13061680867838484965.Spec : Prop :=
  ∀ n, P13061680867838484965.a n = A062728 n

end A062728

/-! ## A062728.P9095151183032871482

`∑[ogf((8x+x^2)/(1-2x+x^2))]`
-/

namespace A062728.P9095151183032871482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062728.P9095151183032871482

namespace A062728

/-- `∑[ogf((8x+x^2)/(1-2x+x^2))]` -/
def P9095151183032871482.Spec : Prop :=
  ∀ n, P9095151183032871482.a n = A062728 n

end A062728

/-! ## A062728.P14700781315611620470

`ogf((8x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A062728.P14700781315611620470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8, 1] [1, -3, 3, -1] n

end

end A062728.P14700781315611620470

namespace A062728

/-- `ogf((8x+x^2)/(1-3x+3x^2-x^3))` -/
def P14700781315611620470.Spec : Prop :=
  ∀ n, P14700781315611620470.a n = A062728 n

end A062728

/-! ## A062728.P13319825081546748646

`Δ[(3*n+2)*C(n, 2)]`
-/

namespace A062728.P13319825081546748646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 2) * Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A062728.P13319825081546748646

namespace A062728

/-- `Δ[(3*n+2)*C(n, 2)]` -/
def P13319825081546748646.Spec : Prop :=
  ∀ n, P13319825081546748646.a n = A062728 n

end A062728

/-! ## A062728.P5453608477272846956

`9*(n²-C(n, 2))-n`
-/

namespace A062728.P5453608477272846956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ((n ^ 2 : ℤ) - (Nat.choose n 2 : ℤ)) - (n : ℤ)

end

end A062728.P5453608477272846956

namespace A062728

/-- `9*(n²-C(n, 2))-n` -/
def P5453608477272846956.Spec : Prop :=
  ∀ n, P5453608477272846956.a n = A062728 n

end A062728

/-! ## A062728.P16548813444042311943

`∑[record[n+1-3^dr(n)]]`
-/

namespace A062728.P16548813444042311943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (3 ^ SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062728.P16548813444042311943

namespace A062728

/-- `∑[record[n+1-3^dr(n)]]` -/
def P16548813444042311943.Spec : Prop :=
  ∀ n, P16548813444042311943.a n = A062728 n

end A062728

/-! ## A062728.P5694840676274823073

`9*n-(1-a(n-1))` with `a(0)=0`
-/

namespace A062728.P5694840676274823073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (9 * n : ℤ) - (1 - a (n - 1))

end

end A062728.P5694840676274823073

namespace A062728

/-- `9*n-(1-a(n-1))` -/
def P5694840676274823073.Spec : Prop :=
  ∀ n, P5694840676274823073.a n = A062728 n

theorem P5694840676274823073.correct : P5694840676274823073.Spec := by
  intro n
  simp only [A062728, Nat.add_sub_cancel, A062728.P5694840676274823073.a, A062728.P1978771371578681059.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062728

/-! ## A062728.P15284326469331672717

`n²-∑[a(n-1)-7]` with `a(0)=0`
-/

namespace A062728.P15284326469331672717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062728.P15284326469331672717

namespace A062728

/-- `n²-∑[a(n-1)-7]` -/
def P15284326469331672717.Spec : Prop :=
  ∀ n, P15284326469331672717.a n = A062728 n

end A062728

/-! ## A062728.P11063321916481323986

`abs(9*round(record[xor(1, n)²]/8)-n)`
-/

namespace A062728.P11063321916481323986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |9 * SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 8) - (n : ℤ)|

end

end A062728.P11063321916481323986

namespace A062728

/-- `abs(9*round(record[xor(1, n)²]/8)-n)` -/
def P11063321916481323986.Spec : Prop :=
  ∀ n, P11063321916481323986.a n = A062728 n

end A062728

/-! ## A062728.P16851052666457716511

`A081267(n)-1`
-/

namespace A062728.P16851052666457716511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081267 n - 1

end

end A062728.P16851052666457716511

namespace A062728

/-- `A081267(n)-1` -/
def P16851052666457716511.Spec : Prop :=
  ∀ n, P16851052666457716511.a n = A062728 n

end A062728

/-! ## A062728.P14196075479981594218

`A062725(n)+n`
-/

namespace A062728.P14196075479981594218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n + (n : ℤ)

end

end A062728.P14196075479981594218

namespace A062728

/-- `A062725(n)+n` -/
def P14196075479981594218.Spec : Prop :=
  ∀ n, P14196075479981594218.a n = A062728 n

end A062728

/-! ## A062728.P14220766064932645994

`A027468(n)-n`
-/

namespace A062728.P14220766064932645994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027468 n - (n : ℤ)

end

end A062728.P14220766064932645994

namespace A062728

/-- `A027468(n)-n` -/
def P14220766064932645994.Spec : Prop :=
  ∀ n, P14220766064932645994.a n = A062728 n

end A062728

/-! ## A062728.P10911741241366162320

`A064225(n)-1+n`
-/

namespace A062728.P10911741241366162320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064225 n - 1 + (n : ℤ)

end

end A062728.P10911741241366162320

namespace A062728

/-- `A064225(n)-1+n` -/
def P10911741241366162320.Spec : Prop :=
  ∀ n, P10911741241366162320.a n = A062728 n

end A062728

/-! ## A062728.P9713804601608418128

`A062123(n)-(n+2)`
-/

namespace A062728.P9713804601608418128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062123 n - (n + 2 : ℤ)

end

end A062728.P9713804601608418128

namespace A062728

/-- `A062123(n)-(n+2)` -/
def P9713804601608418128.Spec : Prop :=
  ∀ n, P9713804601608418128.a n = A062728 n

end A062728

/-! ## A062728.P12883664036605924673

`A081266(n)+2*n`
-/

namespace A062728.P12883664036605924673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081266 n + (2 * n : ℤ)

end

end A062728.P12883664036605924673

namespace A062728

/-- `A081266(n)+2*n` -/
def P12883664036605924673.Spec : Prop :=
  ∀ n, P12883664036605924673.a n = A062728 n

end A062728

/-! ## A062728.P7010380775798472469

`A164013(n)-(n+3)`
-/

namespace A062728.P7010380775798472469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164013 n - (n + 3 : ℤ)

end

end A062728.P7010380775798472469

namespace A062728

/-- `A164013(n)-(n+3)` -/
def P7010380775798472469.Spec : Prop :=
  ∀ n, P7010380775798472469.a n = A062728 n

end A062728

/-!
# A062729: Numbers that are not divisible by any prime=p, where either p-2 or p+2 is prime.

The programs for A062729, the canonical program `A062729.P4043378866416344569` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062729 has offset 1).

The definition of A062729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1863 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062729.P13274652915986041040

`eq[1, A072963(n+1)]+1`
-/

namespace A062729.P13274652915986041040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062729.P13274652915986041040

namespace A062729

/-- `eq[1, A072963(n+1)]+1` -/
def P13274652915986041040.Spec : Prop :=
  ∀ n, (P13274652915986041040.a n : ℤ) = A062729 (n + 1)

end A062729

/-! ## A062729.P4043378866416344569

`lt[A284599(n+1), 1]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A062729

/-- `lt[A284599(n+1), 1]+1` -/
def P4043378866416344569.Spec : Prop :=
  ∀ n, (P4043378866416344569.a n : ℤ) = A062729 (n + 1)

theorem P4043378866416344569.correct : P4043378866416344569.Spec := by
  intro n
  simp only [A062729, Nat.add_sub_cancel]

end A062729

/-! ## A062729.P9476911511268076928

`record[A072965(n+1)/A072963(n+1)]`
-/

namespace A062729.P9476911511268076928
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072965 (n + 1) : ℚ) / (A072963 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062729.P9476911511268076928

namespace A062729

/-- `record[A072965(n+1)/A072963(n+1)]` -/
def P9476911511268076928.Spec : Prop :=
  ∀ n, P9476911511268076928.a n = (A062729 (n + 1) : ℚ)

end A062729

/-! ## A062729.P11875501989171711926

`record[(n+1)/A020492(A284599(n+1)+1)]`
-/

namespace A062729.P11875501989171711926
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020492 (A284599 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062729.P11875501989171711926

namespace A062729

/-- `record[(n+1)/A020492(A284599(n+1)+1)]` -/
def P11875501989171711926.Spec : Prop :=
  ∀ n, P11875501989171711926.a n = (A062729 (n + 1) : ℚ)

end A062729

/-! ## A062729.P8545351767337641598

`record[(n+1)/A072749(A284599(n+1)+5)]`
-/

namespace A062729.P8545351767337641598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072749 (A284599 (n + 1) + 5).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062729.P8545351767337641598

namespace A062729

/-- `record[(n+1)/A072749(A284599(n+1)+5)]` -/
def P8545351767337641598.Spec : Prop :=
  ∀ n, P8545351767337641598.a n = (A062729 (n + 1) : ℚ)

end A062729

/-! ## A062729.P2891525592591449708

`record[n+1-A008475(n+2)*A284599(n+1)]`
-/

namespace A062729.P2891525592591449708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A008475 (n + 2) * A284599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062729.P2891525592591449708

namespace A062729

/-- `record[n+1-A008475(n+2)*A284599(n+1)]` -/
def P2891525592591449708.Spec : Prop :=
  ∀ n, P2891525592591449708.a n = A062729 (n + 1)

end A062729

/-! ## A062729.P7134119663810621536

`record[n+1-A020492(n+2)*A284599(n+1)]`
-/

namespace A062729.P7134119663810621536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A020492 (n + 2) * A284599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062729.P7134119663810621536

namespace A062729

/-- `record[n+1-A020492(n+2)*A284599(n+1)]` -/
def P7134119663810621536.Spec : Prop :=
  ∀ n, P7134119663810621536.a n = A062729 (n + 1)

end A062729

/-! ## A062729.P12290883618456687690

`record[(n+1)/A072963(2*(n+1))]`
-/

namespace A062729.P12290883618456687690
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072963 (2 * (n + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062729.P12290883618456687690

namespace A062729

/-- `record[(n+1)/A072963(2*(n+1))]` -/
def P12290883618456687690.Spec : Prop :=
  ∀ n, P12290883618456687690.a n = (A062729 (n + 1) : ℚ)

end A062729

/-! ## A062729.P13280610829571201506

`record[A133265(n)/(A072963(n+1)+1)]`
-/

namespace A062729.P13280610829571201506
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133265 n : ℚ) / (A072963 (n + 1) + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062729.P13280610829571201506

namespace A062729

/-- `record[A133265(n)/(A072963(n+1)+1)]` -/
def P13280610829571201506.Spec : Prop :=
  ∀ n, P13280610829571201506.a n = (A062729 (n + 1) : ℚ)

end A062729

/-! ## A062729.P7196449784250805268

`record[A133265(n)/A133265(A072963(n+1))]`
-/

namespace A062729.P7196449784250805268
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133265 n : ℚ) / (A133265 (A072963 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062729.P7196449784250805268

namespace A062729

/-- `record[A133265(n)/A133265(A072963(n+1))]` -/
def P7196449784250805268.Spec : Prop :=
  ∀ n, P7196449784250805268.a n = (A062729 (n + 1) : ℚ)

end A062729

/-!
# A062730: Rows of Pascal's triangle which contain 3 terms in arithmetic progression.

The programs for A062730, there is no canonical definition to state claims against.
-/

/-! ## A062730.P4474046610547239136

`∪[A067267(n+1), A341092(n+1)]`
-/

namespace A062730.P4474046610547239136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062730.P4474046610547239136

/-! ## A062730.P15004506735012465021

`∪[A087515(n+1), A341092(n+1)]`
-/

namespace A062730.P15004506735012465021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062730.P15004506735012465021

/-! ## A062730.P17856439143801769757

`∪[A098970(n+1), A341092(n+1)]`
-/

namespace A062730.P17856439143801769757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062730.P17856439143801769757

/-! ## A062730.P4215328297877991604

`∪[A125197(n+1), A341092(n+1)]`
-/

namespace A062730.P4215328297877991604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125197 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062730.P4215328297877991604

/-! ## A062730.P2678054186196806176

`∪[A201303(n+1), A341092(n+1)]`
-/

namespace A062730.P2678054186196806176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062730.P2678054186196806176

/-! ## A062730.P5924241036438035735

`∪[A270972(n+1), A341092(n+1)]`
-/

namespace A062730.P5924241036438035735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062730.P5924241036438035735

/-! ## A062730.P2771915900776572393

`∪[A339698(n+1), A341092(n+1)]`
-/

namespace A062730.P2771915900776572393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062730.P2771915900776572393

/-! ## A062730.P6759638316300580442

`∪[A341092(n+1), A357252(n+1)]`
-/

namespace A062730.P6759638316300580442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062730.P6759638316300580442

/-! ## A062730.P10356259470461853100

`A195437(eq[A035214(n), A105821(n+1)])`
-/

namespace A062730.P10356259470461853100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A062730.P10356259470461853100

/-! ## A062730.P13426488747670007561

`A195437(eq[A057427(n), A105821(n+1)])`
-/

namespace A062730.P13426488747670007561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105821 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A062730.P13426488747670007561

/-! ## A062730.P14840279597086227871

`A195437(eq[A035214(n), A155033(n+1)])`
-/

namespace A062730.P14840279597086227871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A062730.P14840279597086227871

/-! ## A062730.P7885728222591454534

`A195437(eq[A057427(n), A155033(n+1)])`
-/

namespace A062730.P7885728222591454534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155033 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A062730.P7885728222591454534

/-!
# A062731: Sum of divisors of 2*n.

The programs for A062731, the canonical program `A062731.P15391118010266102110` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062731 has offset 1).

The definition of A062731 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062731.P5540866227413687623

`A000203(2*(n+1))`
-/

namespace A062731.P5540866227413687623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * (n + 1))

end

end A062731.P5540866227413687623

namespace A062731

/-- `A000203(2*(n+1))` -/
def P5540866227413687623.Spec : Prop :=
  ∀ n, P5540866227413687623.a n = A062731 (n + 1)

end A062731

/-! ## A062731.P15391118010266102110

`A000203(n+1)+A054785(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062731

/-- `A000203(n+1)+A054785(n+1)` -/
def P15391118010266102110.Spec : Prop :=
  ∀ n, P15391118010266102110.a n = A062731 (n + 1)

theorem P15391118010266102110.correct : P15391118010266102110.Spec := by
  intro n
  simp only [A062731, Nat.add_sub_cancel]

end A062731

/-! ## A062731.P6816759829549726224

`∑{d}[2*(n+1), #]`
-/

namespace A062731.P6816759829549726224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d

end

end A062731.P6816759829549726224

namespace A062731

/-- `∑{d}[2*(n+1), #]` -/
def P6816759829549726224.Spec : Prop :=
  ∀ n, (P6816759829549726224.a n : ℤ) = A062731 (n + 1)

end A062731

/-! ## A062731.P17924425153317598206

`A326061(2*(n+1))+n+1`
-/

namespace A062731.P17924425153317598206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326061 (2 * (n + 1)) + (n + 1 : ℤ)

end

end A062731.P17924425153317598206

namespace A062731

/-- `A326061(2*(n+1))+n+1` -/
def P17924425153317598206.Spec : Prop :=
  ∀ n, P17924425153317598206.a n = A062731 (n + 1)

end A062731

/-! ## A062731.P13380493214934158679

`A346878(n+1)+2*(n+1)`
-/

namespace A062731.P13380493214934158679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346878 (n + 1) + (2 * (n + 1) : ℤ)

end

end A062731.P13380493214934158679

namespace A062731

/-- `A346878(n+1)+2*(n+1)` -/
def P13380493214934158679.Spec : Prop :=
  ∀ n, P13380493214934158679.a n = A062731 (n + 1)

end A062731

/-! ## A062731.P6463718666772158168

`A346880(n+1)+2*n+3`
-/

namespace A062731.P6463718666772158168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346880 (n + 1) + (2 * n + 3 : ℤ)

end

end A062731.P6463718666772158168

namespace A062731

/-- `A346880(n+1)+2*n+3` -/
def P6463718666772158168.Spec : Prop :=
  ∀ n, P6463718666772158168.a n = A062731 (n + 1)

end A062731

/-! ## A062731.P4167727070576881178

`A000203(n+2+n)%(n+2)²`
-/

namespace A062731.P4167727070576881178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 2 + n)) ((n + 2) ^ 2 : ℤ)

end

end A062731.P4167727070576881178

namespace A062731

/-- `A000203(n+2+n)%(n+2)²` -/
def P4167727070576881178.Spec : Prop :=
  ∀ n, P4167727070576881178.a n = A062731 (n + 1)

end A062731

/-! ## A062731.P13955788603001174070

`A000593(n+1)+A074400(n+1)`
-/

namespace A062731.P13955788603001174070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) + A074400 (n + 1)

end

end A062731.P13955788603001174070

namespace A062731

/-- `A000593(n+1)+A074400(n+1)` -/
def P13955788603001174070.Spec : Prop :=
  ∀ n, P13955788603001174070.a n = A062731 (n + 1)

end A062731

/-! ## A062731.P10757424172941612433

`A355750(n+1)+A099777(n+1)`
-/

namespace A062731.P10757424172941612433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355750 (n + 1) + A099777 (n + 1)

end

end A062731.P10757424172941612433

namespace A062731

/-- `A355750(n+1)+A099777(n+1)` -/
def P10757424172941612433.Spec : Prop :=
  ∀ n, P10757424172941612433.a n = A062731 (n + 1)

theorem P10757424172941612433.correct : P10757424172941612433.Spec := by
  intro n
  simp only [A062731, Nat.add_sub_cancel, A062731.P10757424172941612433.a, A062731.P15391118010266102110.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A054785, A054785.P15699579488212647133.a, A099777, A099777.P11792433152824821401.a, A355750, A355750.P5981996292456239035.a, A000005, A000005.P16091521709108585461.a, A001227, A001227.P17291574635237243988.f1, A001227.P17291574635237243988.a, A002131, A002131.P10234543156685478956.a, A000593, A000593.P13640346029616979906.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062731

/-! ## A062731.P2762759368447591075

`A272027(n+1)-A146076(n+1)`
-/

namespace A062731.P2762759368447591075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272027 (n + 1) - A146076 (n + 1)

end

end A062731.P2762759368447591075

namespace A062731

/-- `A272027(n+1)-A146076(n+1)` -/
def P2762759368447591075.Spec : Prop :=
  ∀ n, P2762759368447591075.a n = A062731 (n + 1)

end A062731

/-! ## A062731.P8260019796815160794

`A239050(n+1)-A215947(n+1)`
-/

namespace A062731.P8260019796815160794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239050 (n + 1) - A215947 (n + 1)

end

end A062731.P8260019796815160794

namespace A062731

/-- `A239050(n+1)-A215947(n+1)` -/
def P8260019796815160794.Spec : Prop :=
  ∀ n, P8260019796815160794.a n = A062731 (n + 1)

theorem P8260019796815160794.correct : P8260019796815160794.Spec := by
  intro n
  simp only [A062731, Nat.add_sub_cancel, A062731.P8260019796815160794.a, A062731.P15391118010266102110.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A054785, A054785.P15699579488212647133.a, A215947, A215947.P3538818604850998885.a, A239050, A239050.P12685587340824370499.a, A002131, A002131.P10234543156685478956.a, A074400, A074400.P16312391460013478761.a, A000593, A000593.P13640346029616979906.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062731

/-! ## A062731.P16238749069920554172

`A000593(n+1)*A088837(n+1)`
-/

namespace A062731.P16238749069920554172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (n + 1) * A088837 (n + 1)

end

end A062731.P16238749069920554172

namespace A062731

/-- `A000593(n+1)*A088837(n+1)` -/
def P16238749069920554172.Spec : Prop :=
  ∀ n, P16238749069920554172.a n = A062731 (n + 1)

end A062731

/-! ## A062731.P9770268361240887976

`A378994(n+1)*A378995(n+1)`
-/

namespace A062731.P9770268361240887976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378994 (n + 1) * A378995 (n + 1)

end

end A062731.P9770268361240887976

namespace A062731

/-- `A378994(n+1)*A378995(n+1)` -/
def P9770268361240887976.Spec : Prop :=
  ∀ n, P9770268361240887976.a n = A062731 (n + 1)

end A062731

/-! ## A062731.P3407703813587086857

`A000203(n+2+n)/A007318(C(2, n))`
-/

namespace A062731.P3407703813587086857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2 + n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A062731.P3407703813587086857

namespace A062731

/-- `A000203(n+2+n)/A007318(C(2, n))` -/
def P3407703813587086857.Spec : Prop :=
  ∀ n, P3407703813587086857.a n = (A062731 (n + 1) : ℚ)

end A062731

/-! ## A062731.P134186501997362204

`A000203(n+2+n)+C(2, A000203(n+2))`
-/

namespace A062731.P134186501997362204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2 + n) + (Nat.choose 2 (A000203 (n + 2)).toNat : ℤ)

end

end A062731.P134186501997362204

namespace A062731

/-- `A000203(n+2+n)+C(2, A000203(n+2))` -/
def P134186501997362204.Spec : Prop :=
  ∀ n, P134186501997362204.a n = A062731 (n + 1)

end A062731

/-! ## A062731.P14367183272074340850

`A000203(n+2+n)+and(1, A000010(n+3))`
-/

namespace A062731.P14367183272074340850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2 + n) + Int.land 1 (A000010 (n + 3))

end

end A062731.P14367183272074340850

namespace A062731

/-- `A000203(n+2+n)+and(1, A000010(n+3))` -/
def P14367183272074340850.Spec : Prop :=
  ∀ n, P14367183272074340850.a n = A062731 (n + 1)

end A062731

/-! ## A062731.P11774125893932515561

`A000203(n+2+n)/A000045(gcd(n, n+1))`
-/

namespace A062731.P11774125893932515561
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2 + n) : ℚ) / (A000045 (Nat.gcd n (n + 1)) : ℚ)

end

end A062731.P11774125893932515561

namespace A062731

/-- `A000203(n+2+n)/A000045(gcd(n, n+1))` -/
def P11774125893932515561.Spec : Prop :=
  ∀ n, P11774125893932515561.a n = (A062731 (n + 1) : ℚ)

end A062731

/-! ## A062731.P8698202046655104833

`A000203(n+2+n)/A000032(gcd(n+2, n+3))`
-/

namespace A062731.P8698202046655104833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2 + n) : ℚ) / (A000032 (Nat.gcd (n + 2) (n + 3)) : ℚ)

end

end A062731.P8698202046655104833

namespace A062731

/-- `A000203(n+2+n)/A000032(gcd(n+2, n+3))` -/
def P8698202046655104833.Spec : Prop :=
  ∀ n, P8698202046655104833.a n = (A062731 (n + 1) : ℚ)

end A062731

/-! ## A062731.P6541825714739541113

`A000203(n+2+n)/A008683(A005117(n+1))²`
-/

namespace A062731.P6541825714739541113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2 + n) : ℚ) / (A008683 (A005117 (n + 1)).toNat ^ 2 : ℚ)

end

end A062731.P6541825714739541113

namespace A062731

/-- `A000203(n+2+n)/A008683(A005117(n+1))²` -/
def P6541825714739541113.Spec : Prop :=
  ∀ n, P6541825714739541113.a n = (A062731 (n + 1) : ℚ)

end A062731

/-! ## A062731.P14849987401964705166

`A000203(n+2+n)/A008683(A014963(n+1))²`
-/

namespace A062731.P14849987401964705166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 2 + n) : ℚ) / (A008683 (A014963 (n + 1)).toNat ^ 2 : ℚ)

end

end A062731.P14849987401964705166

namespace A062731

/-- `A000203(n+2+n)/A008683(A014963(n+1))²` -/
def P14849987401964705166.Spec : Prop :=
  ∀ n, P14849987401964705166.a n = (A062731 (n + 1) : ℚ)

end A062731

/-!
# A062732: Squares arising in A039770.

The programs for A062732, the canonical program `A062732.P15096758420271924634` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062732 has offset 1).

The definition of A062732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1890 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062732.P15096758420271924634

`A000010(A039770(1+n))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A062732

/-- `A000010(A039770(1+n))` -/
def P15096758420271924634.Spec : Prop :=
  ∀ n, P15096758420271924634.a n = A062732 (n + 1)

theorem P15096758420271924634.correct : P15096758420271924634.Spec := by
  intro n
  simp only [A062732, Nat.add_sub_cancel]

end A062732

/-! ## A062732.P13351702536272926912

`A109606(A039770(n+1))+1`
-/

namespace A062732.P13351702536272926912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (A039770 (n + 1)).toNat + 1

end

end A062732.P13351702536272926912

namespace A062732

/-- `A109606(A039770(n+1))+1` -/
def P13351702536272926912.Spec : Prop :=
  ∀ n, P13351702536272926912.a n = A062732 (n + 1)

end A062732

/-! ## A062732.P2106908191696380694

`A000010(eq[1, A331953(A000010(n+1))]+1)`
-/

namespace A062732.P2106908191696380694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331953 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A062732.P2106908191696380694

namespace A062732

/-- `A000010(eq[1, A331953(A000010(n+1))]+1)` -/
def P2106908191696380694.Spec : Prop :=
  ∀ n, P2106908191696380694.a n = A062732 (n + 1)

end A062732

/-! ## A062732.P11616033799773857847

`A000010(eq[2, A000122(A000010(n+1))]+1)`
-/

namespace A062732.P11616033799773857847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A062732.P11616033799773857847

namespace A062732

/-- `A000010(eq[2, A000122(A000010(n+1))]+1)` -/
def P11616033799773857847.Spec : Prop :=
  ∀ n, P11616033799773857847.a n = A062732 (n + 1)

end A062732

/-! ## A062732.P9897880805980640722

`A132952(lcm(2, A039770(n+1)))`
-/

namespace A062732.P9897880805980640722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132952 (Int.lcm 2 (A039770 (n + 1)))

end

end A062732.P9897880805980640722

namespace A062732

/-- `A132952(lcm(2, A039770(n+1)))` -/
def P9897880805980640722.Spec : Prop :=
  ∀ n, P9897880805980640722.a n = A062732 (n + 1)

end A062732

/-!
# A062733: Maximal degree of an irreducible representation of the group SL(n,2) (the group of nonsingular n X n matrices over GF(2) ).

The programs for A062733, there is no canonical definition to state claims against.
-/

/-! ## A062733.P12187943018727866533

`A245092(A177555(n)+n)`
-/

namespace A062733.P12187943018727866533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A177555 n + (n : ℤ)).toNat

end

end A062733.P12187943018727866533

/-!
# A062734: Triangular array T(n,k) giving number of connected graphs with n labeled nodes and k edges (n >= 1, 0 <= k <= n(n-1)/2).

The programs for A062734, there is no canonical definition to state claims against.
-/

/-! ## A062734.P14957787563542911117

`and(A007294(A001405(n)), A369199(n))`
-/

namespace A062734.P14957787563542911117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007294 (A001405 n).toNat) (A369199 n)

end

end A062734.P14957787563542911117

/-!
# A062735: Triangular array T(n,k) giving number of weakly connected digraphs with n labeled nodes and k arcs (n >= 1, 0 <= k <= n(n-1)).

The programs for A062735, there is no canonical definition to state claims against.
-/

/-! ## A062735.P10921485547851275065

`A057272(A077168(n))`
-/

namespace A062735.P10921485547851275065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057272 (A077168 n).toNat

end

end A062735.P10921485547851275065

/-! ## A062735.P6882971850680721687

`A057272(A043319(n+1))`
-/

namespace A062735.P6882971850680721687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057272 (A043319 (n + 1)).toNat

end

end A062735.P6882971850680721687

/-! ## A062735.P1454900687521587998

`A057272(A044916(n+1))`
-/

namespace A062735.P1454900687521587998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057272 (A044916 (n + 1)).toNat

end

end A062735.P1454900687521587998

/-! ## A062735.P18045532461388074785

`A057272(A055646(n+1))`
-/

namespace A062735.P18045532461388074785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057272 (A055646 (n + 1)).toNat

end

end A062735.P18045532461388074785

/-! ## A062735.P15369729637773400904

`A057272(A055647(n)+1)`
-/

namespace A062735.P15369729637773400904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057272 (A055647 n + 1).toNat

end

end A062735.P15369729637773400904

/-!
# A062736: Primes of form Sum_{k=1..n} (prime(k)+1).

The programs for A062736, the canonical program `A062736.P495047314603251771` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062736 has offset 1).

The definition of A062736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062736.P9041353485848998875

`p?[∑[p?[comp[n²]]+1]]`
-/

namespace A062736.P9041353485848998875
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A062736.P9041353485848998875

namespace A062736

/-- `p?[∑[p?[comp[n²]]+1]]` -/
def P9041353485848998875.Spec : Prop :=
  ∀ n, (P9041353485848998875.a n : ℤ) = A062736 (n + 1)

end A062736

/-! ## A062736.P495047314603251771

`p?[A060939(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A062736

/-- `p?[A060939(n+1)]` -/
def P495047314603251771.Spec : Prop :=
  ∀ n, P495047314603251771.a n = A062736 (n + 1)

theorem P495047314603251771.correct : P495047314603251771.Spec := by
  intro n
  simp only [A062736, Nat.add_sub_cancel]

end A062736

/-! ## A062736.P7394723333468773715

`p?[A007504(n)+n]`
-/

namespace A062736.P7394723333468773715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P7394723333468773715

namespace A062736

/-- `p?[A007504(n)+n]` -/
def P7394723333468773715.Spec : Prop :=
  ∀ n, P7394723333468773715.a n = A062736 (n + 1)

end A062736

/-! ## A062736.P14134162150087671522

`p?[∑[A008864(n+1)]]`
-/

namespace A062736.P14134162150087671522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P14134162150087671522

namespace A062736

/-- `p?[∑[A008864(n+1)]]` -/
def P14134162150087671522.Spec : Prop :=
  ∀ n, P14134162150087671522.a n = A062736 (n + 1)

end A062736

/-! ## A062736.P17808275482229752561

`p?[∑[A028815(n+1)]]`
-/

namespace A062736.P17808275482229752561
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P17808275482229752561

namespace A062736

/-- `p?[∑[A028815(n+1)]]` -/
def P17808275482229752561.Spec : Prop :=
  ∀ n, P17808275482229752561.a n = A062736 (n + 1)

end A062736

/-! ## A062736.P9327027002448727082

`p?[∑[A130008(n+2)]]`
-/

namespace A062736.P9327027002448727082
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P9327027002448727082

namespace A062736

/-- `p?[∑[A130008(n+2)]]` -/
def P9327027002448727082.Spec : Prop :=
  ∀ n, P9327027002448727082.a n = A062736 (n + 1)

end A062736

/-! ## A062736.P4173925073125079963

`p?[∑[A299763(n+2)]]`
-/

namespace A062736.P4173925073125079963
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P4173925073125079963

namespace A062736

/-- `p?[∑[A299763(n+2)]]` -/
def P4173925073125079963.Spec : Prop :=
  ∀ n, P4173925073125079963.a n = A062736 (n + 1)

end A062736

/-! ## A062736.P15158409642871882129

`p?[∑[A028815(n)]-2]`
-/

namespace A062736.P15158409642871882129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P15158409642871882129

namespace A062736

/-- `p?[∑[A028815(n)]-2]` -/
def P15158409642871882129.Spec : Prop :=
  ∀ n, P15158409642871882129.a n = A062736 (n + 1)

end A062736

/-! ## A062736.P2949204238540087827

`p?[∑[A130008(n)]-2]`
-/

namespace A062736.P2949204238540087827
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P2949204238540087827

namespace A062736

/-- `p?[∑[A130008(n)]-2]` -/
def P2949204238540087827.Spec : Prop :=
  ∀ n, P2949204238540087827.a n = A062736 (n + 1)

end A062736

/-! ## A062736.P15845248548879375444

`p?[Δ[A160792(2*n)]]`
-/

namespace A062736.P15845248548879375444
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160792 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P15845248548879375444

namespace A062736

/-- `p?[Δ[A160792(2*n)]]` -/
def P15845248548879375444.Spec : Prop :=
  ∀ n, P15845248548879375444.a n = A062736 (n + 1)

end A062736

/-! ## A062736.P971277500864944169

`p?[A014284(n+2)+n]`
-/

namespace A062736.P971277500864944169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014284 (n + 2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P971277500864944169

namespace A062736

/-- `p?[A014284(n+2)+n]` -/
def P971277500864944169.Spec : Prop :=
  ∀ n, P971277500864944169.a n = A062736 (n + 1)

theorem P971277500864944169.correct : P971277500864944169.Spec := by
  intro n
  simp only [A062736, Nat.add_sub_cancel, A062736.P971277500864944169.f1, A062736.P971277500864944169.a, A062736.P495047314603251771.f1, A062736.P495047314603251771.a, A014284, A014284.P16560659510973334811.a, A060939, A060939.P1241768612471461444.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A182986, A182986.P2625431067462217415.a, A054541, A054541.P347795157194570387.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062736

/-! ## A062736.P9036559035013453677

`p?[∑[A000040(n+1)+1]]`
-/

namespace A062736.P9036559035013453677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P9036559035013453677

namespace A062736

/-- `p?[∑[A000040(n+1)+1]]` -/
def P9036559035013453677.Spec : Prop :=
  ∀ n, P9036559035013453677.a n = A062736 (n + 1)

end A062736

/-! ## A062736.P1336104245036107664

`p?[∑[A006093(n+1)+2]]`
-/

namespace A062736.P1336104245036107664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P1336104245036107664

namespace A062736

/-- `p?[∑[A006093(n+1)+2]]` -/
def P1336104245036107664.Spec : Prop :=
  ∀ n, P1336104245036107664.a n = A062736 (n + 1)

end A062736

/-! ## A062736.P1333103543076353932

`p?[∑[A008578(n+2)+1]]`
-/

namespace A062736.P1333103543076353932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P1333103543076353932

namespace A062736

/-- `p?[∑[A008578(n+2)+1]]` -/
def P1333103543076353932.Spec : Prop :=
  ∀ n, P1333103543076353932.a n = A062736 (n + 1)

end A062736

/-! ## A062736.P6148386141283130063

`p?[∑[A182986(n+2)+1]]`
-/

namespace A062736.P6148386141283130063
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P6148386141283130063

namespace A062736

/-- `p?[∑[A182986(n+2)+1]]` -/
def P6148386141283130063.Spec : Prop :=
  ∀ n, P6148386141283130063.a n = A062736 (n + 1)

end A062736

/-! ## A062736.P13951785022594973728

`p?[Δ[A023538(n+1)]+n]`
-/

namespace A062736.P13951785022594973728
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023538 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P13951785022594973728

namespace A062736

/-- `p?[Δ[A023538(n+1)]+n]` -/
def P13951785022594973728.Spec : Prop :=
  ∀ n, P13951785022594973728.a n = A062736 (n + 1)

end A062736

/-! ## A062736.P14361904964897476836

`p?[record[A160793(n+1)]+n]`
-/

namespace A062736.P14361904964897476836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P14361904964897476836

namespace A062736

/-- `p?[record[A160793(n+1)]+n]` -/
def P14361904964897476836.Spec : Prop :=
  ∀ n, P14361904964897476836.a n = A062736 (n + 1)

end A062736

/-! ## A062736.P4548382080051432161

`p?[A237589(n+1)+2+n]`
-/

namespace A062736.P4548382080051432161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P4548382080051432161

namespace A062736

/-- `p?[A237589(n+1)+2+n]` -/
def P4548382080051432161.Spec : Prop :=
  ∀ n, P4548382080051432161.a n = A062736 (n + 1)

theorem P4548382080051432161.correct : P4548382080051432161.Spec := by
  intro n
  simp only [A062736, Nat.add_sub_cancel, A062736.P4548382080051432161.f1, A062736.P4548382080051432161.a, A062736.P495047314603251771.f1, A062736.P495047314603251771.a, A060939, A060939.P1241768612471461444.a, A237589, A237589.P15064465826932885110.a, A007504, A007504.P16529107901788736493.f1, A007504.P16529107901788736493.a, A014284, A014284.P16560659510973334811.a, A182986, A182986.P2625431067462217415.a, A054541, A054541.P347795157194570387.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062736

/-! ## A062736.P14612279781696360948

`p?[A036439(n+1)-2+n]`
-/

namespace A062736.P14612279781696360948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036439 (n + 1) - 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062736.P14612279781696360948

namespace A062736

/-- `p?[A036439(n+1)-2+n]` -/
def P14612279781696360948.Spec : Prop :=
  ∀ n, P14612279781696360948.a n = A062736 (n + 1)

end A062736

/-!
# A062737: Primes p such that 4p-1 is also prime.

The programs for A062737, the canonical program `A062737.P15537786315737208090` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062737 has offset 1).

The definition of A062737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2127 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062737.P15537786315737208090

`(p?[A001749(n+1)-1]+1)/4`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062737

/-- `(p?[A001749(n+1)-1]+1)/4` -/
def P15537786315737208090.Spec : Prop :=
  ∀ n, P15537786315737208090.a n = (A062737 (n + 1) : ℚ)

end A062737

/-! ## A062737.P1540118666098476988

`p?[A005099(n+1)]`
-/

namespace A062737.P1540118666098476988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062737.P1540118666098476988

namespace A062737

/-- `p?[A005099(n+1)]` -/
def P1540118666098476988.Spec : Prop :=
  ∀ n, P1540118666098476988.a n = A062737 (n + 1)

end A062737

/-! ## A062737.P444366674166205622

`p?[A095278(n+1)+1]`
-/

namespace A062737.P444366674166205622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062737.P444366674166205622

namespace A062737

/-- `p?[A095278(n+1)+1]` -/
def P444366674166205622.Spec : Prop :=
  ∀ n, P444366674166205622.a n = A062737 (n + 1)

end A062737

/-! ## A062737.P13052014350056438126

`p?[A089986(n+1)+2]`
-/

namespace A062737.P13052014350056438126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062737.P13052014350056438126

namespace A062737

/-- `p?[A089986(n+1)+2]` -/
def P13052014350056438126.Spec : Prop :=
  ∀ n, P13052014350056438126.a n = A062737 (n + 1)

end A062737

/-! ## A062737.P3627439354287461681

`p?[A156287(n+1)-1]`
-/

namespace A062737.P3627439354287461681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062737.P3627439354287461681

namespace A062737

/-- `p?[A156287(n+1)-1]` -/
def P3627439354287461681.Spec : Prop :=
  ∀ n, P3627439354287461681.a n = A062737 (n + 1)

end A062737

/-! ## A062737.P15831435383313864423

`p?[∑[A082076(n+1)]+1]`
-/

namespace A062737.P15831435383313864423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A062737.P15831435383313864423

namespace A062737

/-- `p?[∑[A082076(n+1)]+1]` -/
def P15831435383313864423.Spec : Prop :=
  ∀ n, P15831435383313864423.a n = A062737 (n + 1)

end A062737

/-! ## A062737.P15195168064509560384

`filter[A005099(n+1), A010051(#)]`
-/

namespace A062737.P15195168064509560384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A062737.P15195168064509560384

namespace A062737

/-- `filter[A005099(n+1), A010051(#)]` -/
def P15195168064509560384.Spec : Prop :=
  ∀ n, P15195168064509560384.a n = A062737 (n + 1)

end A062737

/-! ## A062737.P2531853558395900500

`filter[A005099(n+1), A302777(#)]`
-/

namespace A062737.P2531853558395900500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A062737.P2531853558395900500

namespace A062737

/-- `filter[A005099(n+1), A302777(#)]` -/
def P2531853558395900500.Spec : Prop :=
  ∀ n, P2531853558395900500.a n = A062737 (n + 1)

end A062737

/-! ## A062737.P10423240740648442955

`filter[A005099(n+2), A355937(#)]`
-/

namespace A062737.P10423240740648442955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A062737.P10423240740648442955

namespace A062737

/-- `filter[A005099(n+2), A355937(#)]` -/
def P10423240740648442955.Spec : Prop :=
  ∀ n, P10423240740648442955.a n = A062737 (n + 1)

end A062737

/-! ## A062737.P16665375958554107098

`∩[A000040(n+1), A005099(n+1)]`
-/

namespace A062737.P16665375958554107098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062737.P16665375958554107098

namespace A062737

/-- `∩[A000040(n+1), A005099(n+1)]` -/
def P16665375958554107098.Spec : Prop :=
  ∀ n, (P16665375958554107098.a n : ℤ) = A062737 (n + 1)

end A062737

/-! ## A062737.P6164288880075975672

`∩[A000430(n+1), A005099(n+1)]`
-/

namespace A062737.P6164288880075975672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062737.P6164288880075975672

namespace A062737

/-- `∩[A000430(n+1), A005099(n+1)]` -/
def P6164288880075975672.Spec : Prop :=
  ∀ n, (P6164288880075975672.a n : ℤ) = A062737 (n + 1)

end A062737

/-! ## A062737.P6259292443266542900

`∩[A005099(n+1), A009087(n+1)]`
-/

namespace A062737.P6259292443266542900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062737.P6259292443266542900

namespace A062737

/-- `∩[A005099(n+1), A009087(n+1)]` -/
def P6259292443266542900.Spec : Prop :=
  ∀ n, (P6259292443266542900.a n : ℤ) = A062737 (n + 1)

end A062737

/-! ## A062737.P14871547583528826704

`∩[A005099(n+1), A040028(n+1)]`
-/

namespace A062737.P14871547583528826704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062737.P14871547583528826704

namespace A062737

/-- `∩[A005099(n+1), A040028(n+1)]` -/
def P14871547583528826704.Spec : Prop :=
  ∀ n, (P14871547583528826704.a n : ℤ) = A062737 (n + 1)

end A062737

/-! ## A062737.P4680626914936904986

`∩[A005099(n+1), A040036(n+1)]`
-/

namespace A062737.P4680626914936904986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062737.P4680626914936904986

namespace A062737

/-- `∩[A005099(n+1), A040036(n+1)]` -/
def P4680626914936904986.Spec : Prop :=
  ∀ n, (P4680626914936904986.a n : ℤ) = A062737 (n + 1)

end A062737

/-! ## A062737.P220133847384837116

`∩[A005099(n+1), A040044(n+1)]`
-/

namespace A062737.P220133847384837116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062737.P220133847384837116

namespace A062737

/-- `∩[A005099(n+1), A040044(n+1)]` -/
def P220133847384837116.Spec : Prop :=
  ∀ n, (P220133847384837116.a n : ℤ) = A062737 (n + 1)

end A062737

/-! ## A062737.P4768906265030613927

`∩[A005099(n+1), A040046(n+1)]`
-/

namespace A062737.P4768906265030613927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062737.P4768906265030613927

namespace A062737

/-- `∩[A005099(n+1), A040046(n+1)]` -/
def P4768906265030613927.Spec : Prop :=
  ∀ n, (P4768906265030613927.a n : ℤ) = A062737 (n + 1)

end A062737

/-! ## A062737.P1203094993998304546

`∩[A005099(n+1), A040049(n+1)]`
-/

namespace A062737.P1203094993998304546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062737.P1203094993998304546

namespace A062737

/-- `∩[A005099(n+1), A040049(n+1)]` -/
def P1203094993998304546.Spec : Prop :=
  ∀ n, (P1203094993998304546.a n : ℤ) = A062737 (n + 1)

end A062737

/-! ## A062737.P17707236467597659427

`∩[A005099(n+1), A040054(n+1)]`
-/

namespace A062737.P17707236467597659427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062737.P17707236467597659427

namespace A062737

/-- `∩[A005099(n+1), A040054(n+1)]` -/
def P17707236467597659427.Spec : Prop :=
  ∀ n, (P17707236467597659427.a n : ℤ) = A062737 (n + 1)

end A062737

/-! ## A062737.P12627467349335760672

`∩[A005099(n+1), A040060(n+1)]`
-/

namespace A062737.P12627467349335760672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062737.P12627467349335760672

namespace A062737

/-- `∩[A005099(n+1), A040060(n+1)]` -/
def P12627467349335760672.Spec : Prop :=
  ∀ n, (P12627467349335760672.a n : ℤ) = A062737 (n + 1)

end A062737

/-! ## A062737.P201236203572110381

`∩[A005099(n+1), A040062(n+1)]`
-/

namespace A062737.P201236203572110381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062737.P201236203572110381

namespace A062737

/-- `∩[A005099(n+1), A040062(n+1)]` -/
def P201236203572110381.Spec : Prop :=
  ∀ n, (P201236203572110381.a n : ℤ) = A062737 (n + 1)

end A062737

/-!
# A062738: Number of connected labeled relations.

The programs for A062738, there is no canonical definition to state claims against.
-/

/-! ## A062738.P12894369732775417701

`A000079(n)*A003027(A028310(n))`
-/

namespace A062738.P12894369732775417701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A003027 (A028310 n).toNat

end

end A062738.P12894369732775417701

/-! ## A062738.P17073093994236960042

`A003027(A028310(n))*A011782(n+1)`
-/

namespace A062738.P17073093994236960042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003027 (A028310 n).toNat * A011782 (n + 1)

end

end A062738.P17073093994236960042

/-! ## A062738.P8837731531358603919

`A000079(n)*A189898(A152947(n+1))`
-/

namespace A062738.P8837731531358603919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A189898 (A152947 (n + 1)).toNat

end

end A062738.P8837731531358603919

/-! ## A062738.P261812793746596756

`∑[A011782(n)]*A189898(A152947(n+1))`
-/

namespace A062738.P261812793746596756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A189898 (A152947 (n + 1)).toNat

end

end A062738.P261812793746596756

/-! ## A062738.P4275996017215205481

`Δ[A000051(n)]*A189898(A152947(n+1))`
-/

namespace A062738.P4275996017215205481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A189898 (A152947 (n + 1)).toNat

end

end A062738.P4275996017215205481

/-!
# A062739: Odd powerful numbers.

The programs for A062739, there is no canonical definition to state claims against.
-/

/-! ## A062739.P6013664417245780256

`∪[A075109(n+1), A363217(n+1)]`
-/

namespace A062739.P6013664417245780256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062739.P6013664417245780256

/-! ## A062739.P7627029793304910985

`∪[A075109(n+1), A390953(n+1)]`
-/

namespace A062739.P7627029793304910985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390953 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062739.P7627029793304910985

/-! ## A062739.P6097188743234511120

`∪[A075109(n+1), A395674(n+1)]`
-/

namespace A062739.P6097188743234511120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062739.P6097188743234511120

/-! ## A062739.P13405978970846430943

`∪[A244623(n+1), A363217(n+1)]`
-/

namespace A062739.P13405978970846430943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062739.P13405978970846430943

/-! ## A062739.P12319575810710918942

`A001694(A363189(n+1))`
-/

namespace A062739.P12319575810710918942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (A363189 (n + 1)).toNat

end

end A062739.P12319575810710918942

/-! ## A062739.P12411665893909769841

`A001694(eq[1, gcd(2, A001694(n+1))]+1)`
-/

namespace A062739.P12411665893909769841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A001694 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A062739.P12411665893909769841

/-! ## A062739.P16322630067891599385

`A001694(eq[1, and(1, A001694(n+1))]+1)`
-/

namespace A062739.P16322630067891599385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A001694 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A062739.P16322630067891599385

/-! ## A062739.P8440602138553033688

`A001694(record[n*A001694(n+1)%2]+1)`
-/

namespace A062739.P8440602138553033688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.tmod (A001694 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A062739.P8440602138553033688

/-! ## A062739.P13348916443281774351

`record[A001694(n+2)^(A001694(n+2)%2)]`
-/

namespace A062739.P13348916443281774351
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001694 (n + 2) : ℚ) ^ (Int.tmod (A001694 (n + 2)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062739.P13348916443281774351

/-! ## A062739.P812179182744576481

`A001694(record[(n+1)^and(1, A001694(n+1))])`
-/

namespace A062739.P812179182744576481
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.land 1 (A001694 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A062739.P812179182744576481

/-! ## A062739.P3499110912637527143

`∩[2*n+1, A001694(n+1)]`
-/

namespace A062739.P3499110912637527143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062739.P3499110912637527143

/-! ## A062739.P5992833709100820977

`∩[2*n+1, A335851(n+1)]`
-/

namespace A062739.P5992833709100820977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062739.P5992833709100820977

/-! ## A062739.P18250547654515933950

`record[A000265(A001694(n+1))]`
-/

namespace A062739.P18250547654515933950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A001694 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062739.P18250547654515933950

/-! ## A062739.P3636398914107918059

`filter[A001694(n+1), A039982(#)]`
-/

namespace A062739.P3636398914107918059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A062739.P3636398914107918059

/-! ## A062739.P13219046065636641464

`filter[A001694(n+1), A098725(#)]`
-/

namespace A062739.P13219046065636641464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A062739.P13219046065636641464

/-! ## A062739.P10472890479592113356

`filter[A001694(n+1), A166486(#)]`
-/

namespace A062739.P10472890479592113356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A062739.P10472890479592113356

/-! ## A062739.P16769760873727344060

`∩[A001694(n+1), A014076(n+1)]`
-/

namespace A062739.P16769760873727344060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062739.P16769760873727344060

/-! ## A062739.P16606516378182364173

`∩[A001694(n+1), A255763(n+1)]`
-/

namespace A062739.P16606516378182364173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062739.P16606516378182364173

/-! ## A062739.P12787816791390328828

`∩[A001694(n+1), A004273(n)]`
-/

namespace A062739.P12787816791390328828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062739.P12787816791390328828

/-! ## A062739.P7839565579167677492

`∩[A001694(n+1), A004274(n)]`
-/

namespace A062739.P7839565579167677492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062739.P7839565579167677492

/-!
# A062740: Number of connected labeled graphs with loops.

The programs for A062740, there is no canonical definition to state claims against.
-/

/-! ## A062740.P11530717517460692670

`2^n*A001187(n)`
-/

namespace A062740.P11530717517460692670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001187 n

end

end A062740.P11530717517460692670

/-! ## A062740.P12836626484426248570

`A056066(n)+A001187(n)`
-/

namespace A062740.P12836626484426248570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056066 n + A001187 n

end

end A062740.P12836626484426248570

/-! ## A062740.P16578295038020828315

`A001187(n)*A011782(n+1)`
-/

namespace A062740.P16578295038020828315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n * A011782 (n + 1)

end

end A062740.P16578295038020828315

/-! ## A062740.P11137565991696571374

`A001187(n)*A131577(n+1)`
-/

namespace A062740.P11137565991696571374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001187 n * A131577 (n + 1)

end

end A062740.P11137565991696571374

/-! ## A062740.P14217812684635001997

`(A327362(n)+A059166(n))*2^n`
-/

namespace A062740.P14217812684635001997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A327362 n + A059166 n) * (2 ^ n : ℤ)

end

end A062740.P14217812684635001997

/-!
# A062741: 3 times pentagonal numbers: 3*n*(3*n-1)/2.

The programs for A062741, the canonical program `A062741.P8795457046949095258` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062741 has offset 0).

The definition of A062741 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(3*n-1)/2` (program `A062741.P18049314239659779746`, by `A062741.P18049314239659779746.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062741.P17234380136634186176

`C(3*n, 2)`
-/

namespace A062741.P17234380136634186176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (3 * n) 2

end

end A062741.P17234380136634186176

namespace A062741

/-- `C(3*n, 2)` -/
def P17234380136634186176.Spec : Prop :=
  ∀ n, (P17234380136634186176.a n : ℤ) = A062741 n

end A062741

/-! ## A062741.P10458383661743320382

`(9*n²-3*n)/2`
-/

namespace A062741.P10458383661743320382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * n ^ 2 : ℤ) - (3 * n : ℤ) : ℚ) / 2

end

end A062741.P10458383661743320382

namespace A062741

/-- `(9*n²-3*n)/2` -/
def P10458383661743320382.Spec : Prop :=
  ∀ n, P10458383661743320382.a n = (A062741 n : ℚ)

theorem P10458383661743320382.correct : P10458383661743320382.Spec := by
  intro n
  induction n with
  | zero => simp [A062741, A062741.P10458383661743320382.a, A062741.P8795457046949095258.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A062741, Nat.add_sub_cancel, A062741.P10458383661743320382.a, A062741.P8795457046949095258.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A062741

/-! ## A062741.P18049314239659779746

`3*n*(3*n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A062741.P18049314239659779746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) * ((3 * n : ℤ) - 1) : ℚ) / 2

end

end A062741.P18049314239659779746

namespace A062741

/-- `3*n*(3*n-1)/2` -/
def P18049314239659779746.Spec : Prop :=
  ∀ n, P18049314239659779746.a n = (A062741 n : ℚ)

theorem P18049314239659779746.correct : P18049314239659779746.Spec := by
  intro n
  induction n with
  | zero => simp [A062741, A062741.P18049314239659779746.a, A062741.P8795457046949095258.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A062741, Nat.add_sub_cancel, A062741.P18049314239659779746.a, A062741.P8795457046949095258.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A062741

/-! ## A062741.P8795457046949095258

`a(n-1)+9*n-6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062741

/-- `a(n-1)+9*n-6` -/
def P8795457046949095258.Spec : Prop :=
  ∀ n, P8795457046949095258.a n = A062741 n

theorem P8795457046949095258.correct : P8795457046949095258.Spec := by
  intro n
  simp only [A062741]

end A062741

/-! ## A062741.P14142355340879596576

`A000326(n)*3`
-/

namespace A062741.P14142355340879596576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 n * 3

end

end A062741.P14142355340879596576

namespace A062741

/-- `A000326(n)*3` -/
def P14142355340879596576.Spec : Prop :=
  ∀ n, P14142355340879596576.a n = A062741 n

end A062741

/-! ## A062741.P17022537536576819125

`A218470(9*n+2)`
-/

namespace A062741.P17022537536576819125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218470 (9 * n + 2)

end

end A062741.P17022537536576819125

namespace A062741

/-- `A218470(9*n+2)` -/
def P17022537536576819125.Spec : Prop :=
  ∀ n, P17022537536576819125.a n = A062741 n

end A062741

/-! ## A062741.P3199742566456032683

`∑[a(n-1)+9]` with `a(0)=0, a(1)=3`
-/

namespace A062741.P3199742566456032683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062741.P3199742566456032683

namespace A062741

/-- `∑[a(n-1)+9]` -/
def P3199742566456032683.Spec : Prop :=
  ∀ n, (P3199742566456032683.a n : ℤ) = A062741 n

end A062741

/-! ## A062741.P4531485502135675970

`∑[ogf((3x+6x^2)/(1-2x+x^2))]`
-/

namespace A062741.P4531485502135675970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062741.P4531485502135675970

namespace A062741

/-- `∑[ogf((3x+6x^2)/(1-2x+x^2))]` -/
def P4531485502135675970.Spec : Prop :=
  ∀ n, P4531485502135675970.a n = A062741 n

end A062741

/-! ## A062741.P4735508434724400785

`ogf((3x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A062741.P4735508434724400785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 6] [1, -3, 3, -1] n

end

end A062741.P4735508434724400785

namespace A062741

/-- `ogf((3x+6x^2)/(1-3x+3x^2-x^3))` -/
def P4735508434724400785.Spec : Prop :=
  ∀ n, P4735508434724400785.a n = A062741 n

end A062741

/-! ## A062741.P6104392373430540987

`6-∑[a(n-1)-9]` with `a(0)=6`
-/

namespace A062741.P6104392373430540987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062741.P6104392373430540987

namespace A062741

/-- `6-∑[a(n-1)-9]` -/
def P6104392373430540987.Spec : Prop :=
  ∀ n, P6104392373430540987.a n = A062741 n

end A062741

/-! ## A062741.P17900823221311407502

`A080855(n)-1`
-/

namespace A062741.P17900823221311407502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080855 n - 1

end

end A062741.P17900823221311407502

namespace A062741

/-- `A080855(n)-1` -/
def P17900823221311407502.Spec : Prop :=
  ∀ n, P17900823221311407502.a n = A062741 n

end A062741

/-! ## A062741.P10786704660241248371

`A062708(n)+n`
-/

namespace A062741.P10786704660241248371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062708 n + (n : ℤ)

end

end A062741.P10786704660241248371

namespace A062741

/-- `A062708(n)+n` -/
def P10786704660241248371.Spec : Prop :=
  ∀ n, P10786704660241248371.a n = A062741 n

end A062741

/-! ## A062741.P15094678993946979202

`A022266(n)-n`
-/

namespace A062741.P15094678993946979202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022266 n - (n : ℤ)

end

end A062741.P15094678993946979202

namespace A062741

/-- `A022266(n)-n` -/
def P15094678993946979202.Spec : Prop :=
  ∀ n, P15094678993946979202.a n = A062741 n

end A062741

/-! ## A062741.P6692449876915261102

`3*sqrt(A100255(n))`
-/

namespace A062741.P6692449876915261102
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A100255 n : ℝ)

end

end A062741.P6692449876915261102

namespace A062741

/-- `3*sqrt(A100255(n))` -/
def P6692449876915261102.Spec : Prop :=
  ∀ n, P6692449876915261102.a n = (A062741 n : ℝ)

end A062741

/-! ## A062741.P18370436042925224105

`A218471(n)+n²`
-/

namespace A062741.P18370436042925224105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218471 n + (n ^ 2 : ℤ)

end

end A062741.P18370436042925224105

namespace A062741

/-- `A218471(n)+n²` -/
def P18370436042925224105.Spec : Prop :=
  ∀ n, P18370436042925224105.a n = A062741 n

end A062741

/-! ## A062741.P12690456456407109811

`A002939(n)+∑[n]`
-/

namespace A062741.P12690456456407109811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002939 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062741.P12690456456407109811

namespace A062741

/-- `A002939(n)+∑[n]` -/
def P12690456456407109811.Spec : Prop :=
  ∀ n, P12690456456407109811.a n = A062741 n

end A062741

/-! ## A062741.P9528917447896660687

`3*(A143689(n)-1)`
-/

namespace A062741.P9528917447896660687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A143689 n - 1)

end

end A062741.P9528917447896660687

namespace A062741

/-- `3*(A143689(n)-1)` -/
def P9528917447896660687.Spec : Prop :=
  ∀ n, P9528917447896660687.a n = A062741 n

end A062741

/-! ## A062741.P7526884896617541629

`3/2*A049450(n)`
-/

namespace A062741.P7526884896617541629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A049450 n : ℚ)

end

end A062741.P7526884896617541629

namespace A062741

/-- `3/2*A049450(n)` -/
def P7526884896617541629.Spec : Prop :=
  ∀ n, P7526884896617541629.a n = (A062741 n : ℚ)

theorem P7526884896617541629.correct : P7526884896617541629.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A062741, Nat.add_sub_cancel, A062741.P7526884896617541629.a, A062741.P8795457046949095258.a, A049450, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A062741, Nat.add_sub_cancel, A062741.P7526884896617541629.a, A062741.P8795457046949095258.a, A049450, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A062741

/-! ## A062741.P678367495448701448

`3/4*A033579(n)`
-/

namespace A062741.P678367495448701448
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A033579 n : ℚ)

end

end A062741.P678367495448701448

namespace A062741

/-- `3/4*A033579(n)` -/
def P678367495448701448.Spec : Prop :=
  ∀ n, P678367495448701448.a n = (A062741 n : ℚ)

theorem P678367495448701448.correct : P678367495448701448.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A062741, Nat.add_sub_cancel, A062741.P678367495448701448.a, A062741.P8795457046949095258.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A062741, Nat.add_sub_cancel, A062741.P678367495448701448.a, A062741.P8795457046949095258.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A062741

/-! ## A062741.P5454962075427081902

`3/5*A152734(n)`
-/

namespace A062741.P5454962075427081902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A152734 n : ℚ)

end

end A062741.P5454962075427081902

namespace A062741

/-- `3/5*A152734(n)` -/
def P5454962075427081902.Spec : Prop :=
  ∀ n, P5454962075427081902.a n = (A062741 n : ℚ)

end A062741

/-!
# A062742: Index j of prime p(j) such that floor(p(j)/j) = n is first satisfied.

The programs for A062742, there is no canonical definition to state claims against.
-/

/-! ## A062742.P11467030169818131163

`A038624(n+1)+A000007(n)`
-/

namespace A062742.P11467030169818131163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038624 (n + 1) + A000007 n

end

end A062742.P11467030169818131163

/-! ## A062742.P17341616247391754077

`A088157(n)+A038624(n+1)`
-/

namespace A062742.P17341616247391754077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 n + A038624 (n + 1)

end

end A062742.P17341616247391754077

/-! ## A062742.P7967404566494132792

`A112316(n)+A038624(n+1)`
-/

namespace A062742.P7967404566494132792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n + A038624 (n + 1)

end

end A062742.P7967404566494132792

/-! ## A062742.P15825872786336192862

`A151810(n)+A038624(n+1)`
-/

namespace A062742.P15825872786336192862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151810 n + A038624 (n + 1)

end

end A062742.P15825872786336192862

/-! ## A062742.P7648544117769991429

`A151878(n)+A038624(n+1)`
-/

namespace A062742.P7648544117769991429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A038624 (n + 1)

end

end A062742.P7648544117769991429

/-! ## A062742.P13033934312658376597

`A151909(n)+A038624(n+1)`
-/

namespace A062742.P13033934312658376597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n + A038624 (n + 1)

end

end A062742.P13033934312658376597

/-! ## A062742.P2614380084227740464

`A151933(n)+A038624(n+1)`
-/

namespace A062742.P2614380084227740464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A038624 (n + 1)

end

end A062742.P2614380084227740464

/-! ## A062742.P4015126282821129944

`A151934(n)+A038624(n+1)`
-/

namespace A062742.P4015126282821129944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 n + A038624 (n + 1)

end

end A062742.P4015126282821129944

/-! ## A062742.P11153935961231083554

`A151935(n)+A038624(n+1)`
-/

namespace A062742.P11153935961231083554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 n + A038624 (n + 1)

end

end A062742.P11153935961231083554

/-! ## A062742.P8206625472524530555

`A038624(n+1)*A054977(n)`
-/

namespace A062742.P8206625472524530555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038624 (n + 1) * A054977 n

end

end A062742.P8206625472524530555

/-!
# A062743: Smallest prime prime(m) such that floor(prime(m)/m) = n.

The programs for A062743, there is no canonical definition to state claims against.
-/

/-! ## A062743.P12244625486540776502

`A038623(n+1)+A000007(n)`
-/

namespace A062743.P12244625486540776502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038623 (n + 1) + A000007 n

end

end A062743.P12244625486540776502

/-! ## A062743.P13780837827827122604

`A088157(n)+A038623(n+1)`
-/

namespace A062743.P13780837827827122604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 n + A038623 (n + 1)

end

end A062743.P13780837827827122604

/-! ## A062743.P1634984740877035059

`A112316(n)+A038623(n+1)`
-/

namespace A062743.P1634984740877035059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112316 n + A038623 (n + 1)

end

end A062743.P1634984740877035059

/-! ## A062743.P17842081645568297368

`A151810(n)+A038623(n+1)`
-/

namespace A062743.P17842081645568297368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151810 n + A038623 (n + 1)

end

end A062743.P17842081645568297368

/-! ## A062743.P15093674349532310975

`A151878(n)+A038623(n+1)`
-/

namespace A062743.P15093674349532310975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n + A038623 (n + 1)

end

end A062743.P15093674349532310975

/-! ## A062743.P14702012705304511733

`A151909(n)+A038623(n+1)`
-/

namespace A062743.P14702012705304511733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151909 n + A038623 (n + 1)

end

end A062743.P14702012705304511733

/-! ## A062743.P12373932001956992299

`A151933(n)+A038623(n+1)`
-/

namespace A062743.P12373932001956992299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n + A038623 (n + 1)

end

end A062743.P12373932001956992299

/-! ## A062743.P14895657176031948969

`A151934(n)+A038623(n+1)`
-/

namespace A062743.P14895657176031948969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151934 n + A038623 (n + 1)

end

end A062743.P14895657176031948969

/-! ## A062743.P14451486740331196639

`A151935(n)+A038623(n+1)`
-/

namespace A062743.P14451486740331196639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151935 n + A038623 (n + 1)

end

end A062743.P14451486740331196639

/-! ## A062743.P10791113048241490834

`A070536(A006530(n+1))+A038623(n+1)`
-/

namespace A062743.P10791113048241490834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070536 (A006530 (n + 1)).toNat + A038623 (n + 1)

end

end A062743.P10791113048241490834

/-!
# A062745: Generalized Catalan array FS(3; n,r).

The programs for A062745, there is no canonical definition to state claims against.
-/

/-! ## A062745.P7541220220344700986

`A280759(A020703(n+1)-1)`
-/

namespace A062745.P7541220220344700986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280759 (A020703 (n + 1) - 1).toNat

end

end A062745.P7541220220344700986

/-! ## A062745.P14054563653755720901

`A280759(A057428(n)+A020703(n+1))`
-/

namespace A062745.P14054563653755720901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280759 (A057428 n + A020703 (n + 1)).toNat

end

end A062745.P14054563653755720901

/-! ## A062745.P3734760735488647612

`A280759(A033999(2*n+1)+A020703(n+1))`
-/

namespace A062745.P3734760735488647612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280759 (A033999 (2 * n + 1) + A020703 (n + 1)).toNat

end

end A062745.P3734760735488647612

/-!
# A062747: Row sums of (unsigned) staircase array A062746.

The programs for A062747, there is no canonical definition to state claims against.
-/

/-! ## A062747.P2123097466767208077

`A098272(n)-a(n-1)` with `a(0)=1`
-/

namespace A062747.P2123097466767208077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A098272 n - a (n - 1)

end

end A062747.P2123097466767208077

/-! ## A062747.P3609262310770280960

`A001764(n)*A004171(n)-a(n-1)` with `a(0)=1`
-/

namespace A062747.P3609262310770280960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001764 n * A004171 n - a (n - 1)

end

end A062747.P3609262310770280960

/-! ## A062747.P8373678760082206698

`2*A001764(n)*A171449(n)²-a(n-1)` with `a(0)=1`
-/

namespace A062747.P8373678760082206698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A001764 n * A171449 n ^ 2 - a (n - 1)

end

end A062747.P8373678760082206698

/-! ## A062747.P12195225762091160108

`A123223(A000217(3*n+1)+n)-a(n-1)` with `a(0)=1`
-/

namespace A062747.P12195225762091160108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A123223 (A000217 (3 * n + 1) + (n : ℤ)).toNat - a (n - 1)

end

end A062747.P12195225762091160108

/-!
# A062748: Fourth column (r=3) of FS(3) staircase array A062745.

The programs for A062748, the canonical program `A062748.P14956383250975312494` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062748 has offset 0).

The definition of A062748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062748.P3143614420979166925

`C(n+4, 3)-1`
-/

namespace A062748.P3143614420979166925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 3 : ℤ) - 1

end

end A062748.P3143614420979166925

namespace A062748

/-- `C(n+4, 3)-1` -/
def P3143614420979166925.Spec : Prop :=
  ∀ n, P3143614420979166925.a n = A062748 n

end A062748

/-! ## A062748.P14956383250975312494

`A000292(n+2)-1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062748

/-- `A000292(n+2)-1` -/
def P14956383250975312494.Spec : Prop :=
  ∀ n, P14956383250975312494.a n = A062748 n

theorem P14956383250975312494.correct : P14956383250975312494.Spec := by
  intro n
  simp only [A062748]

end A062748

/-! ## A062748.P5082504277150582115

`∑[C(n+3, 2)]`
-/

namespace A062748.P5082504277150582115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062748.P5082504277150582115

namespace A062748

/-- `∑[C(n+3, 2)]` -/
def P5082504277150582115.Spec : Prop :=
  ∀ n, (P5082504277150582115.a n : ℤ) = A062748 n

end A062748

/-! ## A062748.P16697083661622232899

`∑[∑[n+2]+1]`
-/

namespace A062748.P16697083661622232899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062748.P16697083661622232899

namespace A062748

/-- `∑[∑[n+2]+1]` -/
def P16697083661622232899.Spec : Prop :=
  ∀ n, (P16697083661622232899.a n : ℤ) = A062748 n

end A062748

/-! ## A062748.P3561924850603391676

`xor(-1, -C(n+4, 3))`
-/

namespace A062748.P3561924850603391676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-1) (-(Nat.choose (n + 4) 3 : ℤ))

end

end A062748.P3561924850603391676

namespace A062748

/-- `xor(-1, -C(n+4, 3))` -/
def P3561924850603391676.Spec : Prop :=
  ∀ n, P3561924850603391676.a n = A062748 n

end A062748

/-! ## A062748.P8905340113565348296

`ogf((3-3x+x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A062748.P8905340113565348296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, 1] [1, -4, 6, -4, 1] n

end

end A062748.P8905340113565348296

namespace A062748

/-- `ogf((3-3x+x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P8905340113565348296.Spec : Prop :=
  ∀ n, P8905340113565348296.a n = A062748 n

end A062748

/-! ## A062748.P6781841811519787191

`a(n-2)+(n+2)²` with `a(0)=3, a(1)=9`
-/

namespace A062748.P6781841811519787191
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 9] fun n a =>
  a (n - 2) + (n + 2) ^ 2

end

end A062748.P6781841811519787191

namespace A062748

/-- `a(n-2)+(n+2)²` -/
def P6781841811519787191.Spec : Prop :=
  ∀ n, (P6781841811519787191.a n : ℤ) = A062748 n

end A062748

/-! ## A062748.P12357008335740446689

`∑[record[(n-2)*(n-3)]]/2`
-/

namespace A062748.P12357008335740446689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * ((n : ℤ) - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A062748.P12357008335740446689

namespace A062748

/-- `∑[record[(n-2)*(n-3)]]/2` -/
def P12357008335740446689.Spec : Prop :=
  ∀ n, P12357008335740446689.a n = (A062748 n : ℚ)

end A062748

/-! ## A062748.P16270930456909797813

`floor(∑[1-∑[a(n-1)-1]])` with `a(0)=-2`

`floor` is left out, it is the identity on integers.
-/

namespace A062748.P16270930456909797813
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-2] fun n f2 =>
  f2 (n - 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062748.P16270930456909797813

namespace A062748

/-- `floor(∑[1-∑[a(n-1)-1]])` -/
def P16270930456909797813.Spec : Prop :=
  ∀ n, P16270930456909797813.a n = A062748 n

end A062748

/-! ## A062748.P1623720685231022476

`∑[∑[n]]-∑[a(n-1)-2]` with `a(0)=-3`
-/

namespace A062748.P1623720685231022476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.rec [-3] fun n f3 =>
  f3 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ∑ j ∈ Finset.range (n + 1), f3 j

end

end A062748.P1623720685231022476

namespace A062748

/-- `∑[∑[n]]-∑[a(n-1)-2]` -/
def P1623720685231022476.Spec : Prop :=
  ∀ n, P1623720685231022476.a n = A062748 n

end A062748

/-! ## A062748.P18264169927529782139

`Δ[C(n+2, 4)]+(n+1)*(n+3)`
-/

namespace A062748.P18264169927529782139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n + 1) * (n + 3) : ℤ)

end

end A062748.P18264169927529782139

namespace A062748

/-- `Δ[C(n+2, 4)]+(n+1)*(n+3)` -/
def P18264169927529782139.Spec : Prop :=
  ∀ n, P18264169927529782139.a n = A062748 n

theorem P18264169927529782139.correct : P18264169927529782139.Spec := by
  intro n
  simp only [A062748, Nat.add_sub_cancel, A062748.P18264169927529782139.f1, A062748.P18264169927529782139.a, A062748.P14956383250975312494.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062748

/-! ## A062748.P16536321342835743759

`∏[(n+3)/(n+1)]+a(n-1)` with `a(0)=3`
-/

namespace A062748.P16536321342835743759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A062748.P16536321342835743759

namespace A062748

/-- `∏[(n+3)/(n+1)]+a(n-1)` -/
def P16536321342835743759.Spec : Prop :=
  ∀ n, P16536321342835743759.a n = (A062748 n : ℚ)

end A062748

/-! ## A062748.P3285538989671998779

`((n+4)*a(n-1)+3)/(n+1)` with `a(0)=3`
-/

namespace A062748.P3285538989671998779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [3] fun n a =>
  ((n + 4 : ℚ) * a (n - 1) + 3) / (n + 1 : ℚ)

end

end A062748.P3285538989671998779

namespace A062748

/-- `((n+4)*a(n-1)+3)/(n+1)` -/
def P3285538989671998779.Spec : Prop :=
  ∀ n, P3285538989671998779.a n = (A062748 n : ℚ)

end A062748

/-! ## A062748.P4411861596566309927

`n+1+C(n+2, 2)+C(n+3, 3)`
-/

namespace A062748.P4411861596566309927
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + (Nat.choose (n + 2) 2 + Nat.choose (n + 3) 3)

end

end A062748.P4411861596566309927

namespace A062748

/-- `n+1+C(n+2, 2)+C(n+3, 3)` -/
def P4411861596566309927.Spec : Prop :=
  ∀ n, (P4411861596566309927.a n : ℤ) = A062748 n

theorem P4411861596566309927.correct : P4411861596566309927.Spec := by
  intro n
  simp only [A062748, Nat.add_sub_cancel, A062748.P4411861596566309927.a, A062748.P14956383250975312494.a, A000292, A000292.P18322089543142633594.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062748

/-! ## A062748.P13786148875367663697

`A092286(n)+3`
-/

namespace A062748.P13786148875367663697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092286 n + 3

end

end A062748.P13786148875367663697

namespace A062748

/-- `A092286(n)+3` -/
def P13786148875367663697.Spec : Prop :=
  ∀ n, P13786148875367663697.a n = A062748 n

end A062748

/-! ## A062748.P15624893177535271576

`A166830(n+1)+1`
-/

namespace A062748.P15624893177535271576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166830 (n + 1) + 1

end

end A062748.P15624893177535271576

namespace A062748

/-- `A166830(n+1)+1` -/
def P15624893177535271576.Spec : Prop :=
  ∀ n, P15624893177535271576.a n = A062748 n

end A062748

/-! ## A062748.P11969624653896855392

`A222001(n+1)-3`
-/

namespace A062748.P11969624653896855392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222001 (n + 1) - 3

end

end A062748.P11969624653896855392

namespace A062748

/-- `A222001(n+1)-3` -/
def P11969624653896855392.Spec : Prop :=
  ∀ n, P11969624653896855392.a n = A062748 n

theorem P11969624653896855392.correct : P11969624653896855392.Spec := by
  intro n
  simp only [A062748, Nat.add_sub_cancel, A062748.P11969624653896855392.a, A062748.P14956383250975312494.a, A000292, A000292.P18322089543142633594.a, A222001, A222001.P3078309820610259511.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062748

/-! ## A062748.P15549171073794758259

`A005286(n)+2+n`
-/

namespace A062748.P15549171073794758259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005286 n + 2 + (n : ℤ)

end

end A062748.P15549171073794758259

namespace A062748

/-- `A005286(n)+2+n` -/
def P15549171073794758259.Spec : Prop :=
  ∀ n, P15549171073794758259.a n = A062748 n

end A062748

/-! ## A062748.P697839044107676708

`A005586(n)+3+n`
-/

namespace A062748.P697839044107676708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005586 n + 3 + (n : ℤ)

end

end A062748.P697839044107676708

namespace A062748

/-- `A005586(n)+3+n` -/
def P697839044107676708.Spec : Prop :=
  ∀ n, P697839044107676708.a n = A062748 n

end A062748

/-! ## A062748.P17633167903442686213

`A238806(n+1)+n²`
-/

namespace A062748.P17633167903442686213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238806 (n + 1) + (n ^ 2 : ℤ)

end

end A062748.P17633167903442686213

namespace A062748

/-- `A238806(n+1)+n²` -/
def P17633167903442686213.Spec : Prop :=
  ∀ n, P17633167903442686213.a n = A062748 n

end A062748

/-!
# A062749: Sixth column (r=5) of FS(3) staircase array A062745.

The programs for A062749, the canonical program `A062749.P11696945361512974517` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062749 has offset 0).

The definition of A062749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062749.P11696945361512974517

`∑[∑[∑[∑[n+3]+3]+3]+3]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062749

/-- `∑[∑[∑[∑[n+3]+3]+3]+3]` -/
def P11696945361512974517.Spec : Prop :=
  ∀ n, (P11696945361512974517.a n : ℤ) = A062749 n

theorem P11696945361512974517.correct : P11696945361512974517.Spec := by
  intro n
  simp only [A062749]

end A062749

/-! ## A062749.P16463338433093518566

`A062748(n)+A063258(n)+A062988(n)`
-/

namespace A062749.P16463338433093518566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062748 n + (A063258 n + A062988 n)

end

end A062749.P16463338433093518566

namespace A062749

/-- `A062748(n)+A063258(n)+A062988(n)` -/
def P16463338433093518566.Spec : Prop :=
  ∀ n, P16463338433093518566.a n = A062749 n

end A062749

/-! ## A062749.P6576567804793980627

`A007993(n+2)+3*n`
-/

namespace A062749.P6576567804793980627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007993 (n + 2) + (3 * n : ℤ)

end

end A062749.P6576567804793980627

namespace A062749

/-- `A007993(n+2)+3*n` -/
def P6576567804793980627.Spec : Prop :=
  ∀ n, P6576567804793980627.a n = A062749 n

end A062749

/-! ## A062749.P7961501791508341926

`Δ[A062966(n)]-A167614(n+1)`
-/

namespace A062749.P7961501791508341926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A167614 (n + 1)

end

end A062749.P7961501791508341926

namespace A062749

/-- `Δ[A062966(n)]-A167614(n+1)` -/
def P7961501791508341926.Spec : Prop :=
  ∀ n, P7961501791508341926.a n = A062749 n

end A062749

/-! ## A062749.P8245204643720023814

`lcm(∑[A005718(n+1)], A054977(n))`
-/

namespace A062749.P8245204643720023814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A054977 n)

end

end A062749.P8245204643720023814

namespace A062749

/-- `lcm(∑[A005718(n+1)], A054977(n))` -/
def P8245204643720023814.Spec : Prop :=
  ∀ n, (P8245204643720023814.a n : ℤ) = A062749 n

end A062749

/-! ## A062749.P17621451128318968613

`A027659(n+1)-A167614(n+1)`
-/

namespace A062749.P17621451128318968613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027659 (n + 1) - A167614 (n + 1)

end

end A062749.P17621451128318968613

namespace A062749

/-- `A027659(n+1)-A167614(n+1)` -/
def P17621451128318968613.Spec : Prop :=
  ∀ n, P17621451128318968613.a n = A062749 n

end A062749

/-! ## A062749.P14477389112741631500

`∑[A005718(n+1)]*A054977(n+1)`
-/

namespace A062749.P14477389112741631500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A054977 (n + 1)

end

end A062749.P14477389112741631500

namespace A062749

/-- `∑[A005718(n+1)]*A054977(n+1)` -/
def P14477389112741631500.Spec : Prop :=
  ∀ n, P14477389112741631500.a n = A062749 n

end A062749

/-! ## A062749.P14626030432934371154

`∑[A005718(n+1)]*A057427(n+1)`
-/

namespace A062749.P14626030432934371154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005718 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A057427 (n + 1)

end

end A062749.P14626030432934371154

namespace A062749

/-- `∑[A005718(n+1)]*A057427(n+1)` -/
def P14626030432934371154.Spec : Prop :=
  ∀ n, P14626030432934371154.a n = A062749 n

end A062749

/-!
# A062753: Multiples of 4 whose sum of digits is also a multiple of 4.

The programs for A062753, the canonical program `A062753.P6486166718394067354` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062753 has offset 1).

The definition of A062753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062753.P6486166718394067354

`filter[A268620(n+2), A121262(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062753

/-- `filter[A268620(n+2), A121262(#)]` -/
def P6486166718394067354.Spec : Prop :=
  ∀ n, P6486166718394067354.a n = A062753 (n + 1)

theorem P6486166718394067354.correct : P6486166718394067354.Spec := by
  intro n
  simp only [A062753, Nat.add_sub_cancel]

end A062753

/-! ## A062753.P15294275022585340159

`∩[A268620(n+1), A008574(n)]`
-/

namespace A062753.P15294275022585340159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062753.P15294275022585340159

namespace A062753

/-- `∩[A268620(n+1), A008574(n)]` -/
def P15294275022585340159.Spec : Prop :=
  ∀ n, (P15294275022585340159.a n : ℤ) = A062753 (n + 1)

end A062753

/-! ## A062753.P6408005732989109916

`∩[A268620(n+1), A337120(n)]`
-/

namespace A062753.P6408005732989109916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337120 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062753.P6408005732989109916

namespace A062753

/-- `∩[A268620(n+1), A337120(n)]` -/
def P6408005732989109916.Spec : Prop :=
  ∀ n, (P6408005732989109916.a n : ℤ) = A062753 (n + 1)

end A062753

/-! ## A062753.P3496758253337565665

`∩[A268620(n+1), A008486(n)+n]`
-/

namespace A062753.P3496758253337565665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062753.P3496758253337565665

namespace A062753

/-- `∩[A268620(n+1), A008486(n)+n]` -/
def P3496758253337565665.Spec : Prop :=
  ∀ n, (P3496758253337565665.a n : ℤ) = A062753 (n + 1)

end A062753

/-! ## A062753.P2242920782450075068

`∩[A268620(n+1), A341016(n+1)]`
-/

namespace A062753.P2242920782450075068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341016 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062753.P2242920782450075068

namespace A062753

/-- `∩[A268620(n+1), A341016(n+1)]` -/
def P2242920782450075068.Spec : Prop :=
  ∀ n, (P2242920782450075068.a n : ℤ) = A062753 (n + 1)

end A062753

/-! ## A062753.P11742006964605491560

`∩[A268620(n+1), A336627(n)]`
-/

namespace A062753.P11742006964605491560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336627 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062753.P11742006964605491560

namespace A062753

/-- `∩[A268620(n+1), A336627(n)]` -/
def P11742006964605491560.Spec : Prop :=
  ∀ n, (P11742006964605491560.a n : ℤ) = A062753 (n + 1)

end A062753

/-! ## A062753.P11150004765582496139

`filter[A268620(n+2), A011765(#)]`
-/

namespace A062753.P11150004765582496139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A062753.P11150004765582496139

namespace A062753

/-- `filter[A268620(n+2), A011765(#)]` -/
def P11150004765582496139.Spec : Prop :=
  ∀ n, P11150004765582496139.a n = A062753 (n + 1)

end A062753

/-! ## A062753.P11472100857603292425

`eq[4, gcd(A007953(n), A010121(n))]`
-/

namespace A062753.P11472100857603292425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007953 n) (A010121 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062753.P11472100857603292425

namespace A062753

/-- `eq[4, gcd(A007953(n), A010121(n))]` -/
def P11472100857603292425.Spec : Prop :=
  ∀ n, (P11472100857603292425.a n : ℤ) = A062753 (n + 1)

end A062753

/-! ## A062753.P9373501491596149626

`eq[-a(n-2), A007814(A007953(n)+2)%(n+1)]` with `a(0)=1, a(1)=7`
-/

namespace A062753.P9373501491596149626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  -f1 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (A007953 n + 2).toNat) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062753.P9373501491596149626

namespace A062753

/-- `eq[-a(n-2), A007814(A007953(n)+2)%(n+1)]` -/
def P9373501491596149626.Spec : Prop :=
  ∀ n, (P9373501491596149626.a n : ℤ) = A062753 (n + 1)

end A062753

/-! ## A062753.P18357975791989129973

`eq[A009001(n), A249695(A007953(n))]`
-/

namespace A062753.P18357975791989129973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249695 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062753.P18357975791989129973

namespace A062753

/-- `eq[A009001(n), A249695(A007953(n))]` -/
def P18357975791989129973.Spec : Prop :=
  ∀ n, (P18357975791989129973.a n : ℤ) = A062753 (n + 1)

end A062753

/-! ## A062753.P14824277537520148091

`eq[A009001(n), A249695(A062028(n))]`
-/

namespace A062753.P14824277537520148091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249695 (A062028 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062753.P14824277537520148091

namespace A062753

/-- `eq[A009001(n), A249695(A062028(n))]` -/
def P14824277537520148091.Spec : Prop :=
  ∀ n, (P14824277537520148091.a n : ℤ) = A062753 (n + 1)

end A062753

/-! ## A062753.P1125437997481410904

`eq[A010131(n), A059132(A160939(n+1))]`
-/

namespace A062753.P1125437997481410904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010131 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059132 (A160939 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062753.P1125437997481410904

namespace A062753

/-- `eq[A010131(n), A059132(A160939(n+1))]` -/
def P1125437997481410904.Spec : Prop :=
  ∀ n, (P1125437997481410904.a n : ℤ) = A062753 (n + 1)

end A062753

/-! ## A062753.P16043801859435783800

`eq[1, A249695(A007953(n))*A249695(n)]`
-/

namespace A062753.P16043801859435783800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249695 (A007953 n).toNat * A249695 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062753.P16043801859435783800

namespace A062753

/-- `eq[1, A249695(A007953(n))*A249695(n)]` -/
def P16043801859435783800.Spec : Prop :=
  ∀ n, (P16043801859435783800.a n : ℤ) = A062753 (n + 1)

end A062753

/-! ## A062753.P9479741925577686622

`∩[A019442(n+1), A268620(n+1)]`
-/

namespace A062753.P9479741925577686622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268620 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062753.P9479741925577686622

namespace A062753

/-- `∩[A019442(n+1), A268620(n+1)]` -/
def P9479741925577686622.Spec : Prop :=
  ∀ n, (P9479741925577686622.a n : ℤ) = A062753 (n + 1)

end A062753

/-!
# A062754: a(n) = gcd(n, sigma(n+1)).

The programs for A062754, the canonical program `A062754.P15390687729710535169` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062754 has offset 1).

The definition of A062754 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062754.P15390687729710535169

`gcd(n+1, ∑{d}[n+2, #])`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062754

/-- `gcd(n+1, ∑{d}[n+2, #])` -/
def P15390687729710535169.Spec : Prop :=
  ∀ n, (P15390687729710535169.a n : ℤ) = A062754 (n + 1)

theorem P15390687729710535169.correct : P15390687729710535169.Spec := by
  intro n
  simp only [A062754, Nat.add_sub_cancel]

end A062754

/-! ## A062754.P2709549261531155756

`gcd(n+1, A000203(n+2))`
-/

namespace A062754.P2709549261531155756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A000203 (n + 2))

end

end A062754.P2709549261531155756

namespace A062754

/-- `gcd(n+1, A000203(n+2))` -/
def P2709549261531155756.Spec : Prop :=
  ∀ n, (P2709549261531155756.a n : ℤ) = A062754 (n + 1)

end A062754

/-! ## A062754.P17335011066763718067

`gcd(2*(n+1), A074400(n+2))/2`
-/

namespace A062754.P17335011066763718067
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (2 * (n + 1) : ℤ) (A074400 (n + 2)) : ℚ) / 2

end

end A062754.P17335011066763718067

namespace A062754

/-- `gcd(2*(n+1), A074400(n+2))/2` -/
def P17335011066763718067.Spec : Prop :=
  ∀ n, P17335011066763718067.a n = (A062754 (n + 1) : ℚ)

end A062754

/-! ## A062754.P3575327412684446237

`gcd(Δ[A005132(n)], A064987(n+2))`
-/

namespace A062754.P3575327412684446237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005132 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A064987 (n + 2))

end

end A062754.P3575327412684446237

namespace A062754

/-- `gcd(Δ[A005132(n)], A064987(n+2))` -/
def P3575327412684446237.Spec : Prop :=
  ∀ n, (P3575327412684446237.a n : ℤ) = A062754 (n + 1)

end A062754

/-! ## A062754.P7908452652121055296

`gcd(A000027(n+1), A017665(n+2))`
-/

namespace A062754.P7908452652121055296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A017665 (n + 2))

end

end A062754.P7908452652121055296

namespace A062754

/-- `gcd(A000027(n+1), A017665(n+2))` -/
def P7908452652121055296.Spec : Prop :=
  ∀ n, (P7908452652121055296.a n : ℤ) = A062754 (n + 1)

end A062754

/-! ## A062754.P18076689977095686355

`gcd(1-A088580(n+2), A028310(n+1))`
-/

namespace A062754.P18076689977095686355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A088580 (n + 2)) (A028310 (n + 1))

end

end A062754.P18076689977095686355

namespace A062754

/-- `gcd(1-A088580(n+2), A028310(n+1))` -/
def P18076689977095686355.Spec : Prop :=
  ∀ n, (P18076689977095686355.a n : ℤ) = A062754 (n + 1)

end A062754

/-! ## A062754.P14653908090262381668

`gcd(1-A000027(n+2), A143348(n+2))`
-/

namespace A062754.P14653908090262381668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A000027 (n + 2)) (A143348 (n + 2))

end

end A062754.P14653908090262381668

namespace A062754

/-- `gcd(1-A000027(n+2), A143348(n+2))` -/
def P14653908090262381668.Spec : Prop :=
  ∀ n, (P14653908090262381668.a n : ℤ) = A062754 (n + 1)

end A062754

/-! ## A062754.P15829991740290089387

`gcd(1-A087156(n+2), A272211(n+2))`
-/

namespace A062754.P15829991740290089387
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A087156 (n + 2)) (A272211 (n + 2))

end

end A062754.P15829991740290089387

namespace A062754

/-- `gcd(1-A087156(n+2), A272211(n+2))` -/
def P15829991740290089387.Spec : Prop :=
  ∀ n, (P15829991740290089387.a n : ℤ) = A062754 (n + 1)

end A062754

/-! ## A062754.P10937848252716615292

`gcd(2-A114637(n+2), A076722(n+2))`
-/

namespace A062754.P10937848252716615292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 - A114637 (n + 2)) (A076722 (n + 2))

end

end A062754.P10937848252716615292

namespace A062754

/-- `gcd(2-A114637(n+2), A076722(n+2))` -/
def P10937848252716615292.Spec : Prop :=
  ∀ n, (P10937848252716615292.a n : ℤ) = A062754 (n + 1)

end A062754

/-! ## A062754.P2836459477899653362

`gcd(A033880(n+2)+2, A060681(2*(n+1)))`
-/

namespace A062754.P2836459477899653362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033880 (n + 2) + 2) (A060681 (2 * (n + 1)))

end

end A062754.P2836459477899653362

namespace A062754

/-- `gcd(A033880(n+2)+2, A060681(2*(n+1)))` -/
def P2836459477899653362.Spec : Prop :=
  ∀ n, (P2836459477899653362.a n : ℤ) = A062754 (n + 1)

end A062754

/-! ## A062754.P16442554189360982135

`gcd(A242112(2*n), A245092(A000027(2*n+3)))`
-/

namespace A062754.P16442554189360982135
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242112 (2 * n)) (A245092 (A000027 (2 * n + 3)).toNat)

end

end A062754.P16442554189360982135

namespace A062754

/-- `gcd(A242112(2*n), A245092(A000027(2*n+3)))` -/
def P16442554189360982135.Spec : Prop :=
  ∀ n, (P16442554189360982135.a n : ℤ) = A062754 (n + 1)

end A062754

/-! ## A062754.P10968774086545052196

`gcd(Δ[A024916(n+1)], A008620(3*n))`
-/

namespace A062754.P10968774086545052196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (f1 (n + 1) - f1 n) (A008620 (3 * n))

end

end A062754.P10968774086545052196

namespace A062754

/-- `gcd(Δ[A024916(n+1)], A008620(3*n))` -/
def P10968774086545052196.Spec : Prop :=
  ∀ n, (P10968774086545052196.a n : ℤ) = A062754 (n + 1)

end A062754

/-! ## A062754.P12038667329751679730

`gcd(A220096(2*(n+1)), A220096(A074400(n+2)))`
-/

namespace A062754.P12038667329751679730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A220096 (2 * (n + 1))) (A220096 (A074400 (n + 2)).toNat)

end

end A062754.P12038667329751679730

namespace A062754

/-- `gcd(A220096(2*(n+1)), A220096(A074400(n+2)))` -/
def P12038667329751679730.Spec : Prop :=
  ∀ n, (P12038667329751679730.a n : ℤ) = A062754 (n + 1)

end A062754

/-! ## A062754.P8318643434498821939

`gcd(A143348(n+2), A233583(n+2))`
-/

namespace A062754.P8318643434498821939
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A143348 (n + 2)) (A233583 (n + 2))

end

end A062754.P8318643434498821939

namespace A062754

/-- `gcd(A143348(n+2), A233583(n+2))` -/
def P8318643434498821939.Spec : Prop :=
  ∀ n, (P8318643434498821939.a n : ℤ) = A062754 (n + 1)

end A062754

/-!
# A062755: a(n) = sigma_n(n^2): sum of n-th powers of divisors of n^2.

The programs for A062755, there is no canonical definition to state claims against.
-/

/-! ## A062755.P23246950267461095

`∑{d}[(n+1)², #^(n+1)]`
-/

namespace A062755.P23246950267461095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ (n + 1)

end

end A062755.P23246950267461095

/-! ## A062755.P4390201513857066383

`record[∑{d}[(1-n)², #^(n-1)]]`
-/

namespace A062755.P4390201513857066383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) ^ 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, (d : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062755.P4390201513857066383

/-!
# A062756: Number of 1's in ternary (base-3) expansion of n.

The programs for A062756, the canonical program `A062756.P1690328074711592095` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062756 has offset 0).

The definition of A062756 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062756.P17306763373796802716

`log2(A120880(n))`
-/

namespace A062756.P17306763373796802716
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A120880 n : ℝ)

end

end A062756.P17306763373796802716

namespace A062756

/-- `log2(A120880(n))` -/
def P17306763373796802716.Spec : Prop :=
  ∀ n, P17306763373796802716.a n = (A062756 n : ℝ)

end A062756

/-! ## A062756.P1690328074711592095

`val(A006047(n), 2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062756

/-- `val(A006047(n), 2)` -/
def P1690328074711592095.Spec : Prop :=
  ∀ n, (P1690328074711592095.a n : ℤ) = A062756 n

theorem P1690328074711592095.correct : P1690328074711592095.Spec := by
  intro n
  simp only [A062756]

end A062756

/-! ## A062756.P3375924704084584449

`val(A120879(n), 3)`
-/

namespace A062756.P3375924704084584449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A120879 n).toNat 3

end

end A062756.P3375924704084584449

namespace A062756

/-- `val(A120879(n), 3)` -/
def P3375924704084584449.Spec : Prop :=
  ∀ n, (P3375924704084584449.a n : ℤ) = A062756 n

end A062756

/-! ## A062756.P17779151602938593866

`∑{e}[A290091(n), #]`
-/

namespace A062756.P17779151602938593866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A062756.P17779151602938593866

namespace A062756

/-- `∑{e}[A290091(n), #]` -/
def P17779151602938593866.Spec : Prop :=
  ∀ n, (P17779151602938593866.a n : ℤ) = A062756 n

end A062756

/-! ## A062756.P15677702332891325967

`n-2*A189641(n+1)`
-/

namespace A062756.P15677702332891325967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2 * A189641 (n + 1)

end

end A062756.P15677702332891325967

namespace A062756

/-- `n-2*A189641(n+1)` -/
def P15677702332891325967.Spec : Prop :=
  ∀ n, P15677702332891325967.a n = A062756 n

end A062756

/-! ## A062756.P4578816852562411584

`2*A189674(n+1)-n`
-/

namespace A062756.P4578816852562411584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189674 (n + 1) - (n : ℤ)

end

end A062756.P4578816852562411584

namespace A062756

/-- `2*A189674(n+1)-n` -/
def P4578816852562411584.Spec : Prop :=
  ∀ n, P4578816852562411584.a n = A062756 n

end A062756

/-! ## A062756.P17504495969528919867

`n-∑[2*A189640(n+1)]`
-/

namespace A062756.P17504495969528919867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189640 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062756.P17504495969528919867

namespace A062756

/-- `n-∑[2*A189640(n+1)]` -/
def P17504495969528919867.Spec : Prop :=
  ∀ n, P17504495969528919867.a n = A062756 n

end A062756

/-! ## A062756.P11696144760800396310

`∑[2*A189673(n+1)]-n`
-/

namespace A062756.P11696144760800396310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A189673 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A062756.P11696144760800396310

namespace A062756

/-- `∑[2*A189673(n+1)]-n` -/
def P11696144760800396310.Spec : Prop :=
  ∀ n, P11696144760800396310.a n = A062756 n

end A062756

/-! ## A062756.P11926728001293539007

`A007814(A006047(n))`
-/

namespace A062756.P11926728001293539007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A006047 n).toNat

end

end A062756.P11926728001293539007

namespace A062756

/-- `A007814(A006047(n))` -/
def P11926728001293539007.Spec : Prop :=
  ∀ n, P11926728001293539007.a n = A062756 n

end A062756

/-! ## A062756.P18035260344135306466

`A005812(A244042(n))`
-/

namespace A062756.P18035260344135306466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005812 (A244042 n).toNat

end

end A062756.P18035260344135306466

namespace A062756

/-- `A005812(A244042(n))` -/
def P18035260344135306466.Spec : Prop :=
  ∀ n, P18035260344135306466.a n = A062756 n

end A062756

/-! ## A062756.P12944381182153501433

`A000120(A289813(n))`
-/

namespace A062756.P12944381182153501433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289813 n).toNat

end

end A062756.P12944381182153501433

namespace A062756

/-- `A000120(A289813(n))` -/
def P12944381182153501433.Spec : Prop :=
  ∀ n, P12944381182153501433.a n = A062756 n

end A062756

/-! ## A062756.P15505752026646492235

`A001222(A290091(n))`
-/

namespace A062756.P15505752026646492235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A290091 n).toNat

end

end A062756.P15505752026646492235

namespace A062756

/-- `A001222(A290091(n))` -/
def P15505752026646492235.Spec : Prop :=
  ∀ n, P15505752026646492235.a n = A062756 n

end A062756

/-! ## A062756.P11894453548485134213

`A241917(A331279(n))`
-/

namespace A062756.P11894453548485134213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241917 (A331279 n).toNat

end

end A062756.P11894453548485134213

namespace A062756

/-- `A241917(A331279(n))` -/
def P11894453548485134213.Spec : Prop :=
  ∀ n, P11894453548485134213.a n = A062756 n

end A062756

/-! ## A062756.P3559590556567924147

`A000120(A120880(n)-1)`
-/

namespace A062756.P3559590556567924147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A120880 n - 1).toNat

end

end A062756.P3559590556567924147

namespace A062756

/-- `A000120(A120880(n)-1)` -/
def P3559590556567924147.Spec : Prop :=
  ∀ n, P3559590556567924147.a n = A062756 n

end A062756

/-! ## A062756.P14782471442933475161

`A002487(A120880(n)-1)`
-/

namespace A062756.P14782471442933475161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A120880 n - 1).toNat

end

end A062756.P14782471442933475161

namespace A062756

/-- `A002487(A120880(n)-1)` -/
def P14782471442933475161.Spec : Prop :=
  ∀ n, P14782471442933475161.a n = A062756 n

end A062756

/-! ## A062756.P16394529042036694542

`A160384(n)-A081603(n)`
-/

namespace A062756.P16394529042036694542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160384 n - A081603 n

end

end A062756.P16394529042036694542

namespace A062756

/-- `A160384(n)-A081603(n)` -/
def P16394529042036694542.Spec : Prop :=
  ∀ n, P16394529042036694542.a n = A062756 n

end A062756

/-! ## A062756.P12387979707728781633

`A120855(n)-A160384(n)`
-/

namespace A062756.P12387979707728781633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120855 n - A160384 n

end

end A062756.P12387979707728781633

namespace A062756

/-- `A120855(n)-A160384(n)` -/
def P12387979707728781633.Spec : Prop :=
  ∀ n, P12387979707728781633.a n = A062756 n

end A062756

/-! ## A062756.P15701377197695931554

`A053735(n-A300222(n))`
-/

namespace A062756.P15701377197695931554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 ((n : ℤ) - A300222 n).toNat

end

end A062756.P15701377197695931554

namespace A062756

/-- `A053735(n-A300222(n))` -/
def P15701377197695931554.Spec : Prop :=
  ∀ n, P15701377197695931554.a n = A062756 n

end A062756

/-! ## A062756.P11603104519193377816

`∑{digits}[A007089(n), A289813(#)]`
-/

namespace A062756.P11603104519193377816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A289813 x).sum

end

end A062756.P11603104519193377816

namespace A062756

/-- `∑{digits}[A007089(n), A289813(#)]` -/
def P11603104519193377816.Spec : Prop :=
  ∀ n, P11603104519193377816.a n = A062756 n

end A062756

/-!
# A062758: Product of squares of divisors of n.

The programs for A062758, the canonical program `A062758.P10816466318006647829` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062758 has offset 1).

The definition of A062758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062758.P10816466318006647829

`A007955(n+1)²`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062758

/-- `A007955(n+1)²` -/
def P10816466318006647829.Spec : Prop :=
  ∀ n, P10816466318006647829.a n = A062758 (n + 1)

theorem P10816466318006647829.correct : P10816466318006647829.Spec := by
  intro n
  simp only [A062758, Nat.add_sub_cancel]

end A062758

/-! ## A062758.P9765971307093011598

`(n+1)^A000005(n+1)`
-/

namespace A062758.P9765971307093011598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A000005 (n + 1) : ℤ)

end

end A062758.P9765971307093011598

namespace A062758

/-- `(n+1)^A000005(n+1)` -/
def P9765971307093011598.Spec : Prop :=
  ∀ n, P9765971307093011598.a n = (A062758 (n + 1) : ℚ)

end A062758

/-! ## A062758.P3527735476333259638

`∏{d}[n+1, #²]`
-/

namespace A062758.P3527735476333259638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), d ^ 2

end

end A062758.P3527735476333259638

namespace A062758

/-- `∏{d}[n+1, #²]` -/
def P3527735476333259638.Spec : Prop :=
  ∀ n, (P3527735476333259638.a n : ℤ) = A062758 (n + 1)

end A062758

/-! ## A062758.P13562207211147697117

`∏[ratio[∏{d}[n, #]]²]`
-/

namespace A062758.P13562207211147697117
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A062758.P13562207211147697117

namespace A062758

/-- `∏[ratio[∏{d}[n, #]]²]` -/
def P13562207211147697117.Spec : Prop :=
  ∀ n, P13562207211147697117.a n = (A062758 (n + 1) : ℚ)

end A062758

/-! ## A062758.P16686653155168350040

`∏{d}[n+1, #]^2`
-/

namespace A062758.P16686653155168350040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n), d) ^ 2

end

end A062758.P16686653155168350040

namespace A062758

/-- `∏{d}[n+1, #]^2` -/
def P16686653155168350040.Spec : Prop :=
  ∀ n, (P16686653155168350040.a n : ℤ) = A062758 (n + 1)

end A062758

/-! ## A062758.P14604463829716748040

`∏{d}[xor(n, -1), #]²`
-/

namespace A062758.P14604463829716748040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, d) ^ 2

end

end A062758.P14604463829716748040

namespace A062758

/-- `∏{d}[xor(n, -1), #]²` -/
def P14604463829716748040.Spec : Prop :=
  ∀ n, (P14604463829716748040.a n : ℤ) = A062758 (n + 1)

end A062758

/-! ## A062758.P10352393883613692516

`4^∑{d}[n+1, log2(#)]`
-/

namespace A062758.P10352393883613692516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ (∑ d ∈ Nat.divisors (f1 n), Real.logb 2 (d : ℝ))

end

end A062758.P10352393883613692516

namespace A062758

/-- `4^∑{d}[n+1, log2(#)]` -/
def P10352393883613692516.Spec : Prop :=
  ∀ n, P10352393883613692516.a n = (A062758 (n + 1) : ℝ)

end A062758

/-! ## A062758.P17448844648075561544

`exp(∑{d}[n+1, log(#²)])`
-/

namespace A062758.P17448844648075561544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ d ∈ Nat.divisors (f1 n), Real.log (d ^ 2 : ℝ))

end

end A062758.P17448844648075561544

namespace A062758

/-- `exp(∑{d}[n+1, log(#²)])` -/
def P17448844648075561544.Spec : Prop :=
  ∀ n, P17448844648075561544.a n = (A062758 (n + 1) : ℝ)

end A062758

/-! ## A062758.P3872127933404047600

`∏{d}[n-Δ[n²], #]²`
-/

namespace A062758.P3872127933404047600
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ d ∈ Nat.divisors (f1 n).natAbs, d) ^ 2

end

end A062758.P3872127933404047600

namespace A062758

/-- `∏{d}[n-Δ[n²], #]²` -/
def P3872127933404047600.Spec : Prop :=
  ∀ n, (P3872127933404047600.a n : ℤ) = A062758 (n + 1)

end A062758

/-! ## A062758.P2148626813921686940

`root(∏{d}[n+1, #], 1/2)`
-/

namespace A062758.P2148626813921686940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) ^ (1 / ((1 : ℚ) / 2 : ℝ))

end

end A062758.P2148626813921686940

namespace A062758

/-- `root(∏{d}[n+1, #], 1/2)` -/
def P2148626813921686940.Spec : Prop :=
  ∀ n, P2148626813921686940.a n = (A062758 (n + 1) : ℝ)

end A062758

/-! ## A062758.P18293813234246723358

`(n+1)^∏{e}[n+1, #+1]`
-/

namespace A062758.P18293813234246723358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A062758.P18293813234246723358

namespace A062758

/-- `(n+1)^∏{e}[n+1, #+1]` -/
def P18293813234246723358.Spec : Prop :=
  ∀ n, (P18293813234246723358.a n : ℤ) = A062758 (n + 1)

end A062758

/-! ## A062758.P17799289632341922760

`abs(∏{d}[2*n-(n-1), -#])²`
-/

namespace A062758.P17799289632341922760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ d ∈ Nat.divisors (f1 n).natAbs, (-(d : ℤ))| ^ 2

end

end A062758.P17799289632341922760

namespace A062758

/-- `abs(∏{d}[2*n-(n-1), -#])²` -/
def P17799289632341922760.Spec : Prop :=
  ∀ n, P17799289632341922760.a n = A062758 (n + 1)

end A062758

/-! ## A062758.P654715341729888828

`∏{d}[2*n-(n-1), sqrt(#)]²²`
-/

namespace A062758.P654715341729888828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ d ∈ Nat.divisors (f1 n).natAbs, Real.sqrt (d : ℝ)) ^ 2) ^ 2

end

end A062758.P654715341729888828

namespace A062758

/-- `∏{d}[2*n-(n-1), sqrt(#)]²²` -/
def P654715341729888828.Spec : Prop :=
  ∀ n, P654715341729888828.a n = (A062758 (n + 1) : ℝ)

end A062758

/-! ## A062758.P9270301322986208502

`lcm(n+1, ∏{d}[n+1, lcm(#, n+1)])`
-/

namespace A062758.P9270301322986208502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (∏ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1))

end

end A062758.P9270301322986208502

namespace A062758

/-- `lcm(n+1, ∏{d}[n+1, lcm(#, n+1)])` -/
def P9270301322986208502.Spec : Prop :=
  ∀ n, (P9270301322986208502.a n : ℤ) = A062758 (n + 1)

end A062758

/-! ## A062758.P6398605896219971283

`abs(A217854(n+1))`
-/

namespace A062758.P6398605896219971283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A217854 (n + 1)|

end

end A062758.P6398605896219971283

namespace A062758

/-- `abs(A217854(n+1))` -/
def P6398605896219971283.Spec : Prop :=
  ∀ n, P6398605896219971283.a n = A062758 (n + 1)

end A062758

/-! ## A062758.P4357970796486473311

`(n+1)^Δ[A006218(n)]`
-/

namespace A062758.P4357970796486473311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A062758.P4357970796486473311

namespace A062758

/-- `(n+1)^Δ[A006218(n)]` -/
def P4357970796486473311.Spec : Prop :=
  ∀ n, P4357970796486473311.a n = (A062758 (n + 1) : ℚ)

end A062758

/-! ## A062758.P14039800353503477162

`(n+1)^Δ[A054519(n)]`
-/

namespace A062758.P14039800353503477162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A062758.P14039800353503477162

namespace A062758

/-- `(n+1)^Δ[A054519(n)]` -/
def P14039800353503477162.Spec : Prop :=
  ∀ n, P14039800353503477162.a n = (A062758 (n + 1) : ℚ)

end A062758

/-! ## A062758.P3944277477136598102

`(n+1)^(A325765(n)+1)`
-/

namespace A062758.P3944277477136598102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A325765 n + 1 : ℤ)

end

end A062758.P3944277477136598102

namespace A062758

/-- `(n+1)^(A325765(n)+1)` -/
def P3944277477136598102.Spec : Prop :=
  ∀ n, P3944277477136598102.a n = (A062758 (n + 1) : ℚ)

end A062758

/-! ## A062758.P9705132565560205540

`((n+1)*A007956(n+1))²`
-/

namespace A062758.P9705132565560205540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A007956 (n + 1)) ^ 2

end

end A062758.P9705132565560205540

namespace A062758

/-- `((n+1)*A007956(n+1))²` -/
def P9705132565560205540.Spec : Prop :=
  ∀ n, P9705132565560205540.a n = A062758 (n + 1)

end A062758

/-! ## A062758.P11707454061789925774

`(n+1)²*A277169(n+1)`
-/

namespace A062758.P11707454061789925774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A277169 (n + 1)

end

end A062758.P11707454061789925774

namespace A062758

/-- `(n+1)²*A277169(n+1)` -/
def P11707454061789925774.Spec : Prop :=
  ∀ n, P11707454061789925774.a n = A062758 (n + 1)

end A062758

/-!
# A062759: Largest power of squarefree kernel of n (= A007947) which divides n.

The programs for A062759, the canonical program `A062759.P12008267209011574230` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062759 has offset 1).

The definition of A062759 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A051904, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062759.P12008267209011574230

`A007947(n+1)^A051904(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A062759

/-- `A007947(n+1)^A051904(n+1)` -/
def P12008267209011574230.Spec : Prop :=
  ∀ n, P12008267209011574230.a n = (A062759 (n + 1) : ℚ)

end A062759

/-! ## A062759.P14546890068890517153

`(n+1)/A062760(n+1)`
-/

namespace A062759.P14546890068890517153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A062760 (n + 1) : ℚ)

end

end A062759.P14546890068890517153

namespace A062759

/-- `(n+1)/A062760(n+1)` -/
def P14546890068890517153.Spec : Prop :=
  ∀ n, P14546890068890517153.a n = (A062759 (n + 1) : ℚ)

end A062759

/-! ## A062759.P4068086542936756403

`A007947(n+1)*A354090(n+1)`
-/

namespace A062759.P4068086542936756403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1) * A354090 (n + 1)

end

end A062759.P4068086542936756403

namespace A062759

/-- `A007947(n+1)*A354090(n+1)` -/
def P4068086542936756403.Spec : Prop :=
  ∀ n, P4068086542936756403.a n = A062759 (n + 1)

end A062759

/-! ## A062759.P14748897856572883154

`A295417(n+1)/A066636(n+1)`
-/

namespace A062759.P14748897856572883154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295417 (n + 1) : ℚ) / (A066636 (n + 1) : ℚ)

end

end A062759.P14748897856572883154

namespace A062759

/-- `A295417(n+1)/A066636(n+1)` -/
def P14748897856572883154.Spec : Prop :=
  ∀ n, P14748897856572883154.a n = (A062759 (n + 1) : ℚ)

end A062759

/-! ## A062759.P3499200033573713436

`A064549(n+1)/A304776(n+1)`
-/

namespace A062759.P3499200033573713436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064549 (n + 1) : ℚ) / (A304776 (n + 1) : ℚ)

end

end A062759.P3499200033573713436

namespace A062759

/-- `A064549(n+1)/A304776(n+1)` -/
def P3499200033573713436.Spec : Prop :=
  ∀ n, P3499200033573713436.a n = (A062759 (n + 1) : ℚ)

end A062759

/-! ## A062759.P7777336101750449411

`A066638(n+1)/A373703(n+1)`
-/

namespace A062759.P7777336101750449411
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (n + 1) : ℚ) / (A373703 (n + 1) : ℚ)

end

end A062759.P7777336101750449411

namespace A062759

/-- `A066638(n+1)/A373703(n+1)` -/
def P7777336101750449411.Spec : Prop :=
  ∀ n, P7777336101750449411.a n = (A062759 (n + 1) : ℚ)

end A062759

/-! ## A062759.P17207763313148548051

`(A076618(n+1)-1)*A354090(n+1)`
-/

namespace A062759.P17207763313148548051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076618 (n + 1) - 1) * A354090 (n + 1)

end

end A062759.P17207763313148548051

namespace A062759

/-- `(A076618(n+1)-1)*A354090(n+1)` -/
def P17207763313148548051.Spec : Prop :=
  ∀ n, P17207763313148548051.a n = A062759 (n + 1)

end A062759

/-! ## A062759.P11149614612993643472

`((n+1)/A003557(n+1))^A051904(n+1)`
-/

namespace A062759.P11149614612993643472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A003557 (n + 1) : ℚ)) ^ (A051904 (n + 1) : ℤ)

end

end A062759.P11149614612993643472

namespace A062759

/-- `((n+1)/A003557(n+1))^A051904(n+1)` -/
def P11149614612993643472.Spec : Prop :=
  ∀ n, P11149614612993643472.a n = (A062759 (n + 1) : ℚ)

end A062759

/-! ## A062759.P14238439171172015765

`A007947(n+1)^A071178(A046523(n+1))`
-/

namespace A062759.P14238439171172015765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A071178 (A046523 (n + 1)).toNat : ℤ)

end

end A062759.P14238439171172015765

namespace A062759

/-- `A007947(n+1)^A071178(A046523(n+1))` -/
def P14238439171172015765.Spec : Prop :=
  ∀ n, P14238439171172015765.a n = (A062759 (n + 1) : ℚ)

end A062759

/-! ## A062759.P12564629056081393360

`A007947(n+1)^A071178(A089247(n+1))`
-/

namespace A062759.P12564629056081393360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A071178 (A089247 (n + 1)).toNat : ℤ)

end

end A062759.P12564629056081393360

namespace A062759

/-- `A007947(n+1)^A071178(A089247(n+1))` -/
def P12564629056081393360.Spec : Prop :=
  ∀ n, P12564629056081393360.a n = (A062759 (n + 1) : ℚ)

end A062759

/-! ## A062759.P3428090244220389852

`A007947(n+1)^A071178(A238745(n+1))`
-/

namespace A062759.P3428090244220389852
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007947 (n + 1) : ℚ) ^ (A071178 (A238745 (n + 1)).toNat : ℤ)

end

end A062759.P3428090244220389852

namespace A062759

/-- `A007947(n+1)^A071178(A238745(n+1))` -/
def P3428090244220389852.Spec : Prop :=
  ∀ n, P3428090244220389852.a n = (A062759 (n + 1) : ℚ)

end A062759

/-! ## A062759.P15137355981861886307

`A354090(A064549(n+1))`
-/

namespace A062759.P15137355981861886307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354090 (A064549 (n + 1)).toNat

end

end A062759.P15137355981861886307

namespace A062759

/-- `A354090(A064549(n+1))` -/
def P15137355981861886307.Spec : Prop :=
  ∀ n, P15137355981861886307.a n = A062759 (n + 1)

end A062759

/-! ## A062759.P5882587289123428883

`A354090((n+1)*A304776(n+1))`
-/

namespace A062759.P5882587289123428883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354090 ((n + 1 : ℤ) * A304776 (n + 1)).toNat

end

end A062759.P5882587289123428883

namespace A062759

/-- `A354090((n+1)*A304776(n+1))` -/
def P5882587289123428883.Spec : Prop :=
  ∀ n, P5882587289123428883.a n = A062759 (n + 1)

end A062759

/-! ## A062759.P10247692730697726217

`A354090((n+1)²/A354090(n+1))`
-/

namespace A062759.P10247692730697726217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354090 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A354090 (n + 1) : ℚ))).toNat

end

end A062759.P10247692730697726217

namespace A062759

/-- `A354090((n+1)²/A354090(n+1))` -/
def P10247692730697726217.Spec : Prop :=
  ∀ n, P10247692730697726217.a n = A062759 (n + 1)

end A062759

/-! ## A062759.P13470342971658104229

`A052410(A066638(n+1))*A354090(n+1)`
-/

namespace A062759.P13470342971658104229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A066638 (n + 1)).toNat * A354090 (n + 1)

end

end A062759.P13470342971658104229

namespace A062759

/-- `A052410(A066638(n+1))*A354090(n+1)` -/
def P13470342971658104229.Spec : Prop :=
  ∀ n, P13470342971658104229.a n = A062759 (n + 1)

end A062759

/-! ## A062759.P5049049317003720433

`(n+1)/A066636(A304768(n+1))`
-/

namespace A062759.P5049049317003720433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A066636 (A304768 (n + 1)).toNat : ℚ)

end

end A062759.P5049049317003720433

namespace A062759

/-- `(n+1)/A066636(A304768(n+1))` -/
def P5049049317003720433.Spec : Prop :=
  ∀ n, P5049049317003720433.a n = (A062759 (n + 1) : ℚ)

end A062759

/-! ## A062759.P11189218807000475303

`gcd(A085079(n+1), A089247(A085079(n+1)))`
-/

namespace A062759.P11189218807000475303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A085079 (n + 1)) (A089247 (A085079 (n + 1)).toNat)

end

end A062759.P11189218807000475303

namespace A062759

/-- `gcd(A085079(n+1), A089247(A085079(n+1)))` -/
def P11189218807000475303.Spec : Prop :=
  ∀ n, (P11189218807000475303.a n : ℤ) = A062759 (n + 1)

end A062759

/-!
# A062760: a(n) is n divided by the largest power of the squarefree kernel of n (A007947) which divides it.

The programs for A062760, the canonical program `A062760.P2564918414846003503` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062760 has offset 1).

The definition of A062760 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062759, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062760.P2564918414846003503

`(n+1)/A062759(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A062760

/-- `(n+1)/A062759(n+1)` -/
def P2564918414846003503.Spec : Prop :=
  ∀ n, P2564918414846003503.a n = (A062760 (n + 1) : ℚ)

end A062760

/-! ## A062760.P1229499183802316022

`(n+1)/A007947(n+1)^A051904(n+1)`
-/

namespace A062760.P1229499183802316022
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A007947 (n + 1) : ℚ) ^ (A051904 (n + 1) : ℤ)

end

end A062760.P1229499183802316022

namespace A062760

/-- `(n+1)/A007947(n+1)^A051904(n+1)` -/
def P1229499183802316022.Spec : Prop :=
  ∀ n, P1229499183802316022.a n = (A062760 (n + 1) : ℚ)

end A062760

/-! ## A062760.P4313970821461840745

`A003557(A304776(n+1))`
-/

namespace A062760.P4313970821461840745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A304776 (n + 1)).toNat

end

end A062760.P4313970821461840745

namespace A062760

/-- `A003557(A304776(n+1))` -/
def P4313970821461840745.Spec : Prop :=
  ∀ n, P4313970821461840745.a n = A062760 (n + 1)

end A062760

/-! ## A062760.P11267010649493631051

`A304776(n+1)/A007947(n+1)`
-/

namespace A062760.P11267010649493631051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304776 (n + 1) : ℚ) / (A007947 (n + 1) : ℚ)

end

end A062760.P11267010649493631051

namespace A062760

/-- `A304776(n+1)/A007947(n+1)` -/
def P11267010649493631051.Spec : Prop :=
  ∀ n, P11267010649493631051.a n = (A062760 (n + 1) : ℚ)

end A062760

/-! ## A062760.P16378600128965354273

`A066638(n+1)/A295417(n+1)`
-/

namespace A062760.P16378600128965354273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066638 (n + 1) : ℚ) / (A295417 (n + 1) : ℚ)

end

end A062760.P16378600128965354273

namespace A062760

/-- `A066638(n+1)/A295417(n+1)` -/
def P16378600128965354273.Spec : Prop :=
  ∀ n, P16378600128965354273.a n = (A062760 (n + 1) : ℚ)

end A062760

/-! ## A062760.P1239561895429391757

`A373703(n+1)/A066636(n+1)`
-/

namespace A062760.P1239561895429391757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A373703 (n + 1) : ℚ) / (A066636 (n + 1) : ℚ)

end

end A062760.P1239561895429391757

namespace A062760

/-- `A373703(n+1)/A066636(n+1)` -/
def P1239561895429391757.Spec : Prop :=
  ∀ n, P1239561895429391757.a n = (A062760 (n + 1) : ℚ)

end A062760

/-! ## A062760.P1371692243541676588

`A304776(A102631(n+1))/A304776(n+1)`
-/

namespace A062760.P1371692243541676588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304776 (A102631 (n + 1)).toNat : ℚ) / (A304776 (n + 1) : ℚ)

end

end A062760.P1371692243541676588

namespace A062760

/-- `A304776(A102631(n+1))/A304776(n+1)` -/
def P1371692243541676588.Spec : Prop :=
  ∀ n, P1371692243541676588.a n = (A062760 (n + 1) : ℚ)

end A062760

/-! ## A062760.P7412158606024681782

`A066636(A295417(n+1))`
-/

namespace A062760.P7412158606024681782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (A295417 (n + 1)).toNat

end

end A062760.P7412158606024681782

namespace A062760

/-- `A066636(A295417(n+1))` -/
def P7412158606024681782.Spec : Prop :=
  ∀ n, P7412158606024681782.a n = A062760 (n + 1)

end A062760

/-! ## A062760.P2087804764310418979

`A066636(A304768(n+1))`
-/

namespace A062760.P2087804764310418979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (A304768 (n + 1)).toNat

end

end A062760.P2087804764310418979

namespace A062760

/-- `A066636(A304768(n+1))` -/
def P2087804764310418979.Spec : Prop :=
  ∀ n, P2087804764310418979.a n = A062760 (n + 1)

end A062760

/-! ## A062760.P13929669745292397914

`A066636(A007947(n+1)*A066636(n+1))`
-/

namespace A062760.P13929669745292397914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (A007947 (n + 1) * A066636 (n + 1)).toNat

end

end A062760.P13929669745292397914

namespace A062760

/-- `A066636(A007947(n+1)*A066636(n+1))` -/
def P13929669745292397914.Spec : Prop :=
  ∀ n, P13929669745292397914.a n = A062760 (n + 1)

end A062760

/-! ## A062760.P8054851175133711509

`A066636(A015052(n+1)*A066636(n+1))`
-/

namespace A062760.P8054851175133711509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (A015052 (n + 1) * A066636 (n + 1)).toNat

end

end A062760.P8054851175133711509

namespace A062760

/-- `A066636(A015052(n+1)*A066636(n+1))` -/
def P8054851175133711509.Spec : Prop :=
  ∀ n, P8054851175133711509.a n = A062760 (n + 1)

end A062760

/-! ## A062760.P18368625930317629049

`A066636(A015053(n+1)*A066636(n+1))`
-/

namespace A062760.P18368625930317629049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (A015053 (n + 1) * A066636 (n + 1)).toNat

end

end A062760.P18368625930317629049

namespace A062760

/-- `A066636(A015053(n+1)*A066636(n+1))` -/
def P18368625930317629049.Spec : Prop :=
  ∀ n, P18368625930317629049.a n = A062760 (n + 1)

end A062760

/-! ## A062760.P12724425854298460100

`A066636(A062759(n+1)*A066636(n+1))`
-/

namespace A062760.P12724425854298460100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (A062759 (n + 1) * A066636 (n + 1)).toNat

end

end A062760.P12724425854298460100

namespace A062760

/-- `A066636(A062759(n+1)*A066636(n+1))` -/
def P12724425854298460100.Spec : Prop :=
  ∀ n, P12724425854298460100.a n = A062760 (n + 1)

end A062760

/-! ## A062760.P6762118984700490534

`A066636(A066638(n+1)/A003557(n+1))`
-/

namespace A062760.P6762118984700490534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (SequenceMachineLib.roundAway ((A066638 (n + 1) : ℚ) / (A003557 (n + 1) : ℚ))).toNat

end

end A062760.P6762118984700490534

namespace A062760

/-- `A066636(A066638(n+1)/A003557(n+1))` -/
def P6762118984700490534.Spec : Prop :=
  ∀ n, P6762118984700490534.a n = A062760 (n + 1)

end A062760

/-! ## A062760.P5684072559027829584

`A304768(A304768(n+1))/A007947(n+1)`
-/

namespace A062760.P5684072559027829584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304768 (A304768 (n + 1)).toNat : ℚ) / (A007947 (n + 1) : ℚ)

end

end A062760.P5684072559027829584

namespace A062760

/-- `A304768(A304768(n+1))/A007947(n+1)` -/
def P5684072559027829584.Spec : Prop :=
  ∀ n, P5684072559027829584.a n = (A062760 (n + 1) : ℚ)

end A062760

/-! ## A062760.P17121960878738258011

`A304776((n+1)²)/A304776(n+1)`
-/

namespace A062760.P17121960878738258011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304776 ((n + 1) ^ 2) : ℚ) / (A304776 (n + 1) : ℚ)

end

end A062760.P17121960878738258011

namespace A062760

/-- `A304776((n+1)²)/A304776(n+1)` -/
def P17121960878738258011.Spec : Prop :=
  ∀ n, P17121960878738258011.a n = (A062760 (n + 1) : ℚ)

end A062760

/-!
# A062761: Number of powerful numbers between 2^(n-1)+1 and 2^n.

The programs for A062761, there is no canonical definition to state claims against.
-/

/-! ## A062761.P9982335709479198731

`A062762(n)-A217038(A094373(n))`
-/

namespace A062761.P9982335709479198731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062762 n - A217038 (A094373 n).toNat

end

end A062761.P9982335709479198731

/-! ## A062761.P7176890271676717368

`A348018(ceil(2^(n-1)))-A217038(A094373(n))`
-/

namespace A062761.P7176890271676717368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - A217038 (A094373 n).toNat

end

end A062761.P7176890271676717368

/-! ## A062761.P946465520727662028

`Δ[A217038(A094373(n))]`
-/

namespace A062761.P946465520727662028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A094373 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062761.P946465520727662028

/-! ## A062761.P9289707476320313888

`A048766(A174286(n+1))+A007359(n)`
-/

namespace A062761.P9289707476320313888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A174286 (n + 1)).toNat + A007359 n

end

end A062761.P9289707476320313888

/-!
# A062762: Number of powerful numbers not exceeding 2^n.

The programs for A062762, there is no canonical definition to state claims against.
-/

/-! ## A062762.P11540781900271873039

`∑[A062761(n)]`
-/

namespace A062762.P11540781900271873039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062762.P11540781900271873039

/-! ## A062762.P17936422855393290041

`A394768(n)+A070228(n)`
-/

namespace A062762.P17936422855393290041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394768 n + A070228 n

end

end A062762.P17936422855393290041

/-! ## A062762.P7474444029522419613

`A348018(ceil(2^(n-1)))`
-/

namespace A062762.P7474444029522419613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A062762.P7474444029522419613

/-! ## A062762.P15372089909502231970

`A217038(A094373(n))+A062761(n)`
-/

namespace A062762.P15372089909502231970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217038 (A094373 n).toNat + A062761 n

end

end A062762.P15372089909502231970

/-! ## A062762.P3999205813868634348

`A348018(A011782(n))+A067159(n)`
-/

namespace A062762.P3999205813868634348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348018 (A011782 n).toNat + A067159 (n + 12)

end

end A062762.P3999205813868634348

/-!
# A062763: a(n) is the greatest common divisor of (n-1)! and n^n.

The programs for A062763, the canonical program `A062763.P7976318326589902452` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062763 has offset 1).

The definition of A062763 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062763.P581133277098867095

`A051696(n+1)/(n+1)`
-/

namespace A062763.P581133277098867095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051696 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A062763.P581133277098867095

namespace A062763

/-- `A051696(n+1)/(n+1)` -/
def P581133277098867095.Spec : Prop :=
  ∀ n, P581133277098867095.a n = (A062763 (n + 1) : ℚ)

end A062763

/-! ## A062763.P7976318326589902452

`gcd(n!, (n+1)^(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062763

/-- `gcd(n!, (n+1)^(n+1))` -/
def P7976318326589902452.Spec : Prop :=
  ∀ n, (P7976318326589902452.a n : ℤ) = A062763 (n + 1)

theorem P7976318326589902452.correct : P7976318326589902452.Spec := by
  intro n
  simp only [A062763, Nat.add_sub_cancel]

end A062763

/-! ## A062763.P4100997430761259463

`gcd(A062776(n+1), A214402(n+1))/(n+1)`
-/

namespace A062763.P4100997430761259463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A062776 (n + 1)) (A214402 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A062763.P4100997430761259463

namespace A062763

/-- `gcd(A062776(n+1), A214402(n+1))/(n+1)` -/
def P4100997430761259463.Spec : Prop :=
  ∀ n, P4100997430761259463.a n = (A062763 (n + 1) : ℚ)

end A062763

/-! ## A062763.P11762501669685624706

`gcd(A193679(n+1)^4, A066570(n+1))/(n+1)`
-/

namespace A062763.P11762501669685624706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A193679 (n + 1) ^ 4) (A066570 (n + 1)) : ℚ) / (n + 1 : ℚ)

end

end A062763.P11762501669685624706

namespace A062763

/-- `gcd(A193679(n+1)^4, A066570(n+1))/(n+1)` -/
def P11762501669685624706.Spec : Prop :=
  ∀ n, P11762501669685624706.a n = (A062763 (n + 1) : ℚ)

end A062763

/-! ## A062763.P17691998316488240677

`∏{p}[n+1, #^val((n-1)!, #)]`
-/

namespace A062763.P17691998316488240677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (Nat.factorial ((n : ℤ) - 1).toNat) p

end

end A062763.P17691998316488240677

namespace A062763

/-- `∏{p}[n+1, #^val((n-1)!, #)]` -/
def P17691998316488240677.Spec : Prop :=
  ∀ n, (P17691998316488240677.a n : ℤ) = A062763 (n + 1)

end A062763

/-! ## A062763.P9547735437700347858

`n!/A095996(n+1)`
-/

namespace A062763.P9547735437700347858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A095996 (n + 1) : ℚ)

end

end A062763.P9547735437700347858

namespace A062763

/-- `n!/A095996(n+1)` -/
def P9547735437700347858.Spec : Prop :=
  ∀ n, P9547735437700347858.a n = (A062763 (n + 1) : ℚ)

end A062763

/-! ## A062763.P15459792404876664242

`n!/(A036503(n+1)-char[1])`
-/

namespace A062763.P15459792404876664242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / (A036503 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℚ)

end

end A062763.P15459792404876664242

namespace A062763

/-- `n!/(A036503(n+1)-char[1])` -/
def P15459792404876664242.Spec : Prop :=
  ∀ n, P15459792404876664242.a n = (A062763 (n + 1) : ℚ)

end A062763

/-! ## A062763.P6005009066183260845

`A000142(n)/A095996(n+1)`
-/

namespace A062763.P6005009066183260845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n : ℚ) / (A095996 (n + 1) : ℚ)

end

end A062763.P6005009066183260845

namespace A062763

/-- `A000142(n)/A095996(n+1)` -/
def P6005009066183260845.Spec : Prop :=
  ∀ n, P6005009066183260845.a n = (A062763 (n + 1) : ℚ)

end A062763

/-! ## A062763.P5200711280470405108

`gcd(A000142(n), A063709(n+1))`
-/

namespace A062763.P5200711280470405108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 n) (A063709 (n + 1))

end

end A062763.P5200711280470405108

namespace A062763

/-- `gcd(A000142(n), A063709(n+1))` -/
def P5200711280470405108.Spec : Prop :=
  ∀ n, (P5200711280470405108.a n : ℤ) = A062763 (n + 1)

end A062763

/-! ## A062763.P11997535433582724511

`gcd((n+1)^n, n!)`
-/

namespace A062763.P11997535433582724511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) ^ n) (Nat.factorial n)

end

end A062763.P11997535433582724511

namespace A062763

/-- `gcd((n+1)^n, n!)` -/
def P11997535433582724511.Spec : Prop :=
  ∀ n, (P11997535433582724511.a n : ℤ) = A062763 (n + 1)

end A062763

/-!
# A062764: Number of partitions of the unit square into 2^n dyadic rectangles, each of area 2^{-n}.

The programs for A062764, the canonical program `A062764.P7071436010926554289` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062764 has offset 0).

The definition of A062764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062764.P7071436010926554289

`2*a(n-1)²-a(n-2)^4` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062764

/-- `2*a(n-1)²-a(n-2)^4` -/
def P7071436010926554289.Spec : Prop :=
  ∀ n, P7071436010926554289.a n = A062764 n

theorem P7071436010926554289.correct : P7071436010926554289.Spec := by
  intro n
  simp only [A062764]

end A062764

/-! ## A062764.P15056547090413460487

`2*a(n-1)²-a(n-2)²²` with `a(0)=1, a(1)=2`
-/

namespace A062764.P15056547090413460487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) ^ 2 - (a (n - 2) ^ 2) ^ 2

end

end A062764.P15056547090413460487

namespace A062764

/-- `2*a(n-1)²-a(n-2)²²` -/
def P15056547090413460487.Spec : Prop :=
  ∀ n, P15056547090413460487.a n = A062764 n

theorem P15056547090413460487.correct : P15056547090413460487.Spec := by
  intro n
  simp only [A062764, Nat.add_sub_cancel, A062764.P15056547090413460487.a, A062764.P7071436010926554289.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A062764

/-!
# A062765: a(n) = n*(n-1)*(n-3)*(n-5).

The programs for A062765, the canonical program `A062765.P15457690247426009891` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062765 has offset 0).

The definition of A062765 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(n-1)*(n-3)*(n-5)` (program `A062765.P15457690247426009891`, by `A062765.P15457690247426009891.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062765.P15457690247426009891

`n*(n-1)*(n-3)*(n-5)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062765

/-- `n*(n-1)*(n-3)*(n-5)` -/
def P15457690247426009891.Spec : Prop :=
  ∀ n, P15457690247426009891.a n = A062765 n

theorem P15457690247426009891.correct : P15457690247426009891.Spec := by
  intro n
  simp only [A062765]

end A062765

/-! ## A062765.P4279682009153733487

`∏{p}[A147571(n+1), n+2-#]`
-/

namespace A062765.P4279682009153733487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147571 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((n + 2 : ℤ) - (p : ℤ))

end

end A062765.P4279682009153733487

namespace A062765

/-- `∏{p}[A147571(n+1), n+2-#]` -/
def P4279682009153733487.Spec : Prop :=
  ∀ n, P4279682009153733487.a n = A062765 n

end A062765

/-! ## A062765.P16123568879969840210

`A002061(A002061(n))-A016993(A007531(n))`
-/

namespace A062765.P16123568879969840210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A002061 n).toNat - A016993 (A007531 n).toNat

end

end A062765.P16123568879969840210

namespace A062765

/-- `A002061(A002061(n))-A016993(A007531(n))` -/
def P16123568879969840210.Spec : Prop :=
  ∀ n, P16123568879969840210.a n = A062765 n

end A062765

/-!
# A062766: Number of nonisomorphic cyclic subgroups of general affine group AGL(n,2).

The programs for A062766, there is no canonical definition to state claims against.
-/

/-! ## A062766.P16943373461463612483

`A079643(2*A306903(2*n+1))`
-/

namespace A062766.P16943373461463612483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079643 (2 * A306903 (2 * n + 1)).toNat

end

end A062766.P16943373461463612483

/-! ## A062766.P1077136625301349026

`A366160(A084376(n+1))`
-/

namespace A062766.P1077136625301349026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366160 (A084376 (n + 1)).toNat

end

end A062766.P1077136625301349026

/-! ## A062766.P11034659416362056205

`A366160(A098693(n+2))`
-/

namespace A062766.P11034659416362056205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366160 (A098693 (n + 2)).toNat

end

end A062766.P11034659416362056205

/-! ## A062766.P12247325647368475839

`A268345(n)+A268352(n+2)%3`
-/

namespace A062766.P12247325647368475839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268345 n + Int.tmod (A268352 (n + 2)) 3

end

end A062766.P12247325647368475839

/-! ## A062766.P3234682584237828477

`A195098(A373096(2*(n+2))+A000009(2*(n+2)))`
-/

namespace A062766.P3234682584237828477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195098 (A373096 (2 * (n + 2)) + A000009 (2 * (n + 2))).toNat

end

end A062766.P3234682584237828477

/-!
# A062767: Numbers k such that 3k+1, 3k+5 and 3k+7 are all prime.

The programs for A062767, there is no canonical definition to state claims against.
-/

/-! ## A062767.P4238632914963404074

`2*A215918(n+1)`
-/

namespace A062767.P4238632914963404074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215918 (n + 1)

end

end A062767.P4238632914963404074

/-! ## A062767.P5002602670477235718

`floor(A022005(n+1)/3)`
-/

namespace A062767.P5002602670477235718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A022005 (n + 1) : ℚ) / 3⌋

end

end A062767.P5002602670477235718

/-! ## A062767.P6234057382709073880

`floor(A144840(n+1)/3)`
-/

namespace A062767.P6234057382709073880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A144840 (n + 1) : ℚ) / 3⌋

end

end A062767.P6234057382709073880

/-! ## A062767.P14392303052943373330

`(A073649(n+1)-5)/3`
-/

namespace A062767.P14392303052943373330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073649 (n + 1) - 5 : ℚ) / 3

end

end A062767.P14392303052943373330

/-! ## A062767.P4756721400062768416

`(A001359(n+1)+A098413(n+1)-A006512(n+1)-5)/3`
-/

namespace A062767.P4756721400062768416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) + (A098413 (n + 1) - A006512 (n + 1)) - 5 : ℚ) / 3

end

end A062767.P4756721400062768416

/-! ## A062767.P2972010149828057814

`A215918(n+1)+record[A215918(A325563(n+1))]`
-/

namespace A062767.P2972010149828057814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215918 (A325563 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215918 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062767.P2972010149828057814

/-! ## A062767.P13151769339278593295

`A215918(n+1)+record[A215918(A032742(n+1))]`
-/

namespace A062767.P13151769339278593295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215918 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215918 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062767.P13151769339278593295

/-! ## A062767.P7303529076178747388

`2*∩[A056956(n+1), A307562(n+1)]`
-/

namespace A062767.P7303529076178747388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062767.P7303529076178747388

/-! ## A062767.P9548185949149012473

`2*∩[A056956(n+1), A153218(n+1)]`
-/

namespace A062767.P9548185949149012473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062767.P9548185949149012473

/-! ## A062767.P1402497824631057200

`2*∩[A059325(n+1), A307562(n+1)]`
-/

namespace A062767.P1402497824631057200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062767.P1402497824631057200

/-! ## A062767.P7124888625851633229

`2*∩[A024899(n+1), A153196(n+1)]`
-/

namespace A062767.P7124888625851633229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062767.P7124888625851633229

/-! ## A062767.P5137122234406281674

`2*∩[A056956(n+1), A153196(n+1)]`
-/

namespace A062767.P5137122234406281674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056956 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062767.P5137122234406281674

/-! ## A062767.P11805530986542163847

`2*∩[A153196(n+1), A307562(n+1)]`
-/

namespace A062767.P11805530986542163847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062767.P11805530986542163847

/-! ## A062767.P9620205774162978310

`A004277(A215918(n+1))`
-/

namespace A062767.P9620205774162978310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A215918 (n + 1)).toNat

end

end A062767.P9620205774162978310

/-! ## A062767.P4005103916532346071

`2*eq[A072815(n), A100923(n+1)]`
-/

namespace A062767.P4005103916532346071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100923 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062767.P4005103916532346071

/-! ## A062767.P17170965398041006983

`2*eq[A072815(n), A172155(n+1)]`
-/

namespace A062767.P17170965398041006983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172155 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062767.P17170965398041006983

/-! ## A062767.P10280248873969898547

`2*eq[A072815(n), A182481(n+1)]`
-/

namespace A062767.P10280248873969898547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A062767.P10280248873969898547

/-!
# A062768: Multiples of 6 such that the sum of the digits is equal to 6.

The programs for A062768, there is no canonical definition to state claims against.
-/

/-! ## A062768.P16159255752450672000

`6*A088408(n+1)`
-/

namespace A062768.P16159255752450672000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A088408 (n + 1)

end

end A062768.P16159255752450672000

/-! ## A062768.P9308272339139097774

`A052220(eq[2, gcd(2, A052220(n+1))]+1)`
-/

namespace A062768.P9308272339139097774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A052220 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A062768.P9308272339139097774

/-! ## A062768.P1924012171636726582

`∩[A052220(n+1), A061822(n)]`
-/

namespace A062768.P1924012171636726582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061822 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062768.P1924012171636726582

/-! ## A062768.P8923601374615342003

`∩[A052220(n+1), A218291(n+1)]`
-/

namespace A062768.P8923601374615342003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218291 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062768.P8923601374615342003

/-! ## A062768.P9307630046687227994

`∩[A052220(n+1), A285829(n+1)]`
-/

namespace A062768.P9307630046687227994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062768.P9307630046687227994

/-! ## A062768.P8762521966588297478

`∩[A052221(n+1)-1, A285829(n+1)]`
-/

namespace A062768.P8762521966588297478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052221 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062768.P8762521966588297478

/-! ## A062768.P15055053784687955518

`∩[A052222(n+1)-2, A285829(n+1)]`
-/

namespace A062768.P15055053784687955518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062768.P15055053784687955518

/-! ## A062768.P10765286504157642387

`∩[A052220(n+1), A101814(n+1)]`
-/

namespace A062768.P10765286504157642387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062768.P10765286504157642387

/-! ## A062768.P8263248249500137428

`∩[A052220(n+1), A374198(n+1)]`
-/

namespace A062768.P8263248249500137428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374198 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062768.P8263248249500137428

/-! ## A062768.P9766758478274768913

`filter[A052220(n+1), A079979(#)]`
-/

namespace A062768.P9766758478274768913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A079979 (f1 j).toNat = 1) n)

end

end A062768.P9766758478274768913

/-! ## A062768.P1778297992913771772

`filter[A052220(n+1), A294936(#)]`
-/

namespace A062768.P1778297992913771772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A062768.P1778297992913771772

/-! ## A062768.P10805928180643409232

`filter[A052220(n+1), A354034(#)]`
-/

namespace A062768.P10805928180643409232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A062768.P10805928180643409232

/-! ## A062768.P12535470521892235736

`filter[A052220(n+1), A374197(#)]`
-/

namespace A062768.P12535470521892235736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374197 (f1 j).toNat = 1) n)

end

end A062768.P12535470521892235736

/-! ## A062768.P13293517492941141415

`filter[A052220(n+1), A378550(#)]`
-/

namespace A062768.P13293517492941141415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378550 (f1 j).toNat = 1) n)

end

end A062768.P13293517492941141415

/-! ## A062768.P16934898387873907751

`filter[A052220(n+1), A379964(#)]`
-/

namespace A062768.P16934898387873907751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A062768.P16934898387873907751

/-! ## A062768.P7677426951499198720

`∩[A052220(n+1), A298033(n)]`
-/

namespace A062768.P7677426951499198720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298033 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062768.P7677426951499198720

/-! ## A062768.P17811141337916062353

`∩[A005349(n+1), A052220(n+1)]`
-/

namespace A062768.P17811141337916062353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062768.P17811141337916062353

/-! ## A062768.P3434987900175249957

`∩[2*A203016(n+1), A052220(n+1)]`
-/

namespace A062768.P3434987900175249957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A203016 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052220 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062768.P3434987900175249957

/-! ## A062768.P4400016200323071801

`∩[A217009(2*n+1), A017245(2*n)]-1`
-/

namespace A062768.P4400016200323071801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217009 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A062768.P4400016200323071801

/-!
# A062769: Smallest number m such that the continued fraction expansion of sqrt(m) has period 2n + 1.

The programs for A062769, there is no canonical definition to state claims against.
-/

/-! ## A062769.P10061928373810917720

`A013646(Δ[n²])`
-/

namespace A062769.P10061928373810917720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A062769.P10061928373810917720

/-! ## A062769.P11024242942182231545

`root(A013646(2*n+1), 2)²`
-/

namespace A062769.P11024242942182231545
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A013646 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A062769.P11024242942182231545

/-! ## A062769.P6051715070301016419

`or(A000038(n), A013646(2*n+1))`
-/

namespace A062769.P6051715070301016419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A013646 (2 * n + 1))

end

end A062769.P6051715070301016419

/-! ## A062769.P5789589330406093923

`A013646(2*n+1)%A014284(n+37)`
-/

namespace A062769.P5789589330406093923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013646 (2 * n + 1)) (A014284 (n + 37))

end

end A062769.P5789589330406093923

/-! ## A062769.P8550938430983154898

`lcm(A013646(A005408(n)), A020985(n))`
-/

namespace A062769.P8550938430983154898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A013646 (A005408 n).toNat) (A020985 n)

end

end A062769.P8550938430983154898

/-! ## A062769.P290912633767886404

`A013646(A103517(n)-1)+A000007(n)`
-/

namespace A062769.P290912633767886404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (A103517 n - 1).toNat + A000007 n

end

end A062769.P290912633767886404

/-! ## A062769.P6746102764287810548

`A158327(A158327(n+1)+1)+A013646(2*n+1)`
-/

namespace A062769.P6746102764287810548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158327 (A158327 (n + 1) + 1).toNat + A013646 (2 * n + 1)

end

end A062769.P6746102764287810548

/-! ## A062769.P11223354732247471396

`∏{p}[A013646(2*n+1), #]`
-/

namespace A062769.P11223354732247471396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A062769.P11223354732247471396

/-! ## A062769.P11816734837790991586

`filter[A013646(2*n+1), A008966(#)]`
-/

namespace A062769.P11816734837790991586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A062769.P11816734837790991586

/-! ## A062769.P8030832675204196462

`filter[A013646(2*n+1), A014578(#)]`
-/

namespace A062769.P8030832675204196462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014578 (f1 j).toNat = 1) n)

end

end A062769.P8030832675204196462

/-! ## A062769.P825665311631506596

`filter[A013646(2*n+1), A011558(#)]`
-/

namespace A062769.P825665311631506596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A062769.P825665311631506596

/-! ## A062769.P408410129113926960

`filter[A013646(2*n+1), A014306(#)]`
-/

namespace A062769.P408410129113926960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A062769.P408410129113926960

/-! ## A062769.P8391894504774444216

`filter[A013646(2*n+1), A049240(#)]`
-/

namespace A062769.P8391894504774444216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A062769.P8391894504774444216

/-! ## A062769.P3387722630059554616

`filter[A013646(2*n+1), A098725(#)]`
-/

namespace A062769.P3387722630059554616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A062769.P3387722630059554616

/-! ## A062769.P7391010027699362367

`filter[A013646(2*n+1), A101040(#)]`
-/

namespace A062769.P7391010027699362367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A062769.P7391010027699362367

/-! ## A062769.P14337218090669616586

`filter[A013646(2*n+1), A105597(#)]`
-/

namespace A062769.P14337218090669616586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A062769.P14337218090669616586

/-! ## A062769.P1966046906021153024

`filter[A013646(2*n+1), A123927(#)]`
-/

namespace A062769.P1966046906021153024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123927 (f1 j).toNat = 1) n)

end

end A062769.P1966046906021153024

/-! ## A062769.P12012046797965105629

`A013646(A005408(n))/A020985(A013646(n))²`
-/

namespace A062769.P12012046797965105629
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A013646 (A005408 n).toNat : ℚ) / (A020985 (A013646 n).toNat ^ 2 : ℚ)

end

end A062769.P12012046797965105629

/-! ## A062769.P6976572566102974459

`filter[A013646(2*n+1), A097325(#)]`
-/

namespace A062769.P6976572566102974459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013646 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A062769.P6976572566102974459

/-!
# A062770: n/[largest power of squarefree kernel] equals 1; perfect powers of sqf-kernels (or sqf-numbers).

The programs for A062770, the canonical program `A062770.P13203404241284622665` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062770 has offset 1).

The definition of A062770 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072774, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062770.P13203404241284622665

`A072774(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A062770

/-- `A072774(n+2)` -/
def P13203404241284622665.Spec : Prop :=
  ∀ n, P13203404241284622665.a n = A062770 (n + 1)

theorem P13203404241284622665.correct : P13203404241284622665.Spec := by
  intro n
  simp only [A062770, Nat.add_sub_cancel]

end A062770

/-! ## A062770.P18092631137985751891

`sqrt(A384517(n+1))`
-/

namespace A062770.P18092631137985751891
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A384517 (n + 1) : ℝ)

end

end A062770.P18092631137985751891

namespace A062770

/-- `sqrt(A384517(n+1))` -/
def P18092631137985751891.Spec : Prop :=
  ∀ n, P18092631137985751891.a n = (A062770 (n + 1) : ℝ)

end A062770

/-! ## A062770.P4663660282076936492

`eq[1, A353745(n+1)]+1`
-/

namespace A062770.P4663660282076936492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353745 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062770.P4663660282076936492

namespace A062770

/-- `eq[1, A353745(n+1)]+1` -/
def P4663660282076936492.Spec : Prop :=
  ∀ n, (P4663660282076936492.a n : ℤ) = A062770 (n + 1)

end A062770

/-! ## A062770.P903187923815060299

`eq[1, A066636(n+2)]+2`
-/

namespace A062770.P903187923815060299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066636 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A062770.P903187923815060299

namespace A062770

/-- `eq[1, A066636(n+2)]+2` -/
def P903187923815060299.Spec : Prop :=
  ∀ n, (P903187923815060299.a n : ℤ) = A062770 (n + 1)

end A062770

/-! ## A062770.P7376649182911270204

`eq[1, A309004(n+2)]+2`
-/

namespace A062770.P7376649182911270204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309004 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A062770.P7376649182911270204

namespace A062770

/-- `eq[1, A309004(n+2)]+2` -/
def P7376649182911270204.Spec : Prop :=
  ∀ n, (P7376649182911270204.a n : ℤ) = A062770 (n + 1)

end A062770

/-! ## A062770.P4403304962799083018

`lt[A062977(n+2), 1]+2`
-/

namespace A062770.P4403304962799083018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062977 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A062770.P4403304962799083018

namespace A062770

/-- `lt[A062977(n+2), 1]+2` -/
def P4403304962799083018.Spec : Prop :=
  ∀ n, (P4403304962799083018.a n : ℤ) = A062770 (n + 1)

end A062770

/-! ## A062770.P18376396140283554191

`eq[1, A001222(A328830(n+1))]+1`
-/

namespace A062770.P18376396140283554191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A328830 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062770.P18376396140283554191

namespace A062770

/-- `eq[1, A001222(A328830(n+1))]+1` -/
def P18376396140283554191.Spec : Prop :=
  ∀ n, (P18376396140283554191.a n : ℤ) = A062770 (n + 1)

end A062770

/-! ## A062770.P797101511601813938

`∪[A059046(n+1), A182853(n+1)]`
-/

namespace A062770.P797101511601813938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A062770.P797101511601813938

namespace A062770

/-- `∪[A059046(n+1), A182853(n+1)]` -/
def P797101511601813938.Spec : Prop :=
  ∀ n, (P797101511601813938.a n : ℤ) = A062770 (n + 1)

end A062770

/-! ## A062770.P9424043887054427914

`record[A062759(n+2)]`
-/

namespace A062770.P9424043887054427914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062770.P9424043887054427914

namespace A062770

/-- `record[A062759(n+2)]` -/
def P9424043887054427914.Spec : Prop :=
  ∀ n, P9424043887054427914.a n = A062770 (n + 1)

end A062770

/-! ## A062770.P2476803460245336156

`record[A327526(n+2)]`
-/

namespace A062770.P2476803460245336156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327526 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062770.P2476803460245336156

namespace A062770

/-- `record[A327526(n+2)]` -/
def P2476803460245336156.Spec : Prop :=
  ∀ n, P2476803460245336156.a n = A062770 (n + 1)

end A062770

/-! ## A062770.P7079174323170857643

`record[A375931(n+2)]`
-/

namespace A062770.P7079174323170857643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375931 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062770.P7079174323170857643

namespace A062770

/-- `record[A375931(n+2)]` -/
def P7079174323170857643.Spec : Prop :=
  ∀ n, P7079174323170857643.a n = A062770 (n + 1)

end A062770

/-! ## A062770.P10191894409275872770

`filter[n+2, A384667(#)]`
-/

namespace A062770.P10191894409275872770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j) = 1) n)

end

end A062770.P10191894409275872770

namespace A062770

/-- `filter[n+2, A384667(#)]` -/
def P10191894409275872770.Spec : Prop :=
  ∀ n, (P10191894409275872770.a n : ℤ) = A062770 (n + 1)

end A062770

/-! ## A062770.P2061640111700548544

`eq[1, A071625(n+1)]+1`
-/

namespace A062770.P2061640111700548544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062770.P2061640111700548544

namespace A062770

/-- `eq[1, A071625(n+1)]+1` -/
def P2061640111700548544.Spec : Prop :=
  ∀ n, (P2061640111700548544.a n : ℤ) = A062770 (n + 1)

end A062770

/-! ## A062770.P2833825460475588020

`eq[1, A062760(n+2)]+2`
-/

namespace A062770.P2833825460475588020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062760 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A062770.P2833825460475588020

namespace A062770

/-- `eq[1, A062760(n+2)]+2` -/
def P2833825460475588020.Spec : Prop :=
  ∀ n, (P2833825460475588020.a n : ℤ) = A062770 (n + 1)

end A062770

/-! ## A062770.P3222972936583721289

`eq[1, A071625(A028310(n))]`
-/

namespace A062770.P3222972936583721289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062770.P3222972936583721289

namespace A062770

/-- `eq[1, A071625(A028310(n))]` -/
def P3222972936583721289.Spec : Prop :=
  ∀ n, (P3222972936583721289.a n : ℤ) = A062770 (n + 1)

end A062770

/-! ## A062770.P5643649653226996619

`A020725(eq[1, A071625(n+1)])`
-/

namespace A062770.P5643649653226996619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071625 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A062770.P5643649653226996619

namespace A062770

/-- `A020725(eq[1, A071625(n+1)])` -/
def P5643649653226996619.Spec : Prop :=
  ∀ n, P5643649653226996619.a n = A062770 (n + 1)

end A062770

/-! ## A062770.P14390143804758417282

`eq[1, A001221(A181819(n+1))]+1`
-/

namespace A062770.P14390143804758417282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A181819 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062770.P14390143804758417282

namespace A062770

/-- `eq[1, A001221(A181819(n+1))]+1` -/
def P14390143804758417282.Spec : Prop :=
  ∀ n, (P14390143804758417282.a n : ℤ) = A062770 (n + 1)

end A062770

/-!
# A062771: Order of automorphism group of the group C_n X C_2 (where C_n is the cyclic group with n elements).

The programs for A062771, the canonical program `A062771.P7382483284661769712` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062771 has offset 1).

The definition of A062771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062771.P7382483284661769712

`A000034(n)*A345082(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A062771

/-- `A000034(n)*A345082(n+1)` -/
def P7382483284661769712.Spec : Prop :=
  ∀ n, P7382483284661769712.a n = A062771 (n + 1)

theorem P7382483284661769712.correct : P7382483284661769712.Spec := by
  intro n
  simp only [A062771, Nat.add_sub_cancel]

end A062771

/-! ## A062771.P4477988598941406362

`(A000035(n)+1)*A345082(n+1)`
-/

namespace A062771.P4477988598941406362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A345082 (n + 1)

end

end A062771.P4477988598941406362

namespace A062771

/-- `(A000035(n)+1)*A345082(n+1)` -/
def P4477988598941406362.Spec : Prop :=
  ∀ n, P4477988598941406362.a n = A062771 (n + 1)

theorem P4477988598941406362.correct : P4477988598941406362.Spec := by
  intro n
  simp only [A062771, Nat.add_sub_cancel, A062771.P4477988598941406362.a, A062771.P7382483284661769712.a, A000034, A000034.P10773112074177680709.a, A000035, A000035.P2023072528413494694.a, A345082, A345082.P16266768967040016348.a, A000010, A000010.P4673923239450215316.a, A319998, A319998.P4025482794031375230.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P15666735857375843373.a, A319997, A319997.P3728645225630001544.a, A001221, A001221.P10258181745752134128.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A043529, A043529.P13978693915657788930.a, A349444, A349444.P9210141452199048946.f1, A349444.P9210141452199048946.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062771

/-! ## A062771.P3359261458707194817

`(2-A059841(n))*A345082(n+1)`
-/

namespace A062771.P3359261458707194817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A059841 n) * A345082 (n + 1)

end

end A062771.P3359261458707194817

namespace A062771

/-- `(2-A059841(n))*A345082(n+1)` -/
def P3359261458707194817.Spec : Prop :=
  ∀ n, P3359261458707194817.a n = A062771 (n + 1)

end A062771

/-! ## A062771.P12155835263376681849

`A062570(n+1)+2*A319998(n+1)`
-/

namespace A062771.P12155835263376681849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) + 2 * A319998 (n + 1)

end

end A062771.P12155835263376681849

namespace A062771

/-- `A062570(n+1)+2*A319998(n+1)` -/
def P12155835263376681849.Spec : Prop :=
  ∀ n, P12155835263376681849.a n = A062771 (n + 1)

end A062771

/-! ## A062771.P9821471942624430924

`A000010(2*(n+1))+2*A319998(n+1)`
-/

namespace A062771.P9821471942624430924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) + 2 * A319998 (n + 1)

end

end A062771.P9821471942624430924

namespace A062771

/-- `A000010(2*(n+1))+2*A319998(n+1)` -/
def P9821471942624430924.Spec : Prop :=
  ∀ n, P9821471942624430924.a n = A062771 (n + 1)

end A062771

/-! ## A062771.P1238950585491578105

`A000005(gcd(n+3, n-1))*A000010(2*(n+1))`
-/

namespace A062771.P1238950585491578105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1)) * A000010 (2 * (n + 1))

end

end A062771.P1238950585491578105

namespace A062771

/-- `A000005(gcd(n+3, n-1))*A000010(2*(n+1))` -/
def P1238950585491578105.Spec : Prop :=
  ∀ n, P1238950585491578105.a n = A062771 (n + 1)

end A062771

/-! ## A062771.P4217966270066026513

`A000010(n+1)+A062570(n+1)-A325596(n+1)`
-/

namespace A062771.P4217966270066026513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (A062570 (n + 1) - A325596 (n + 1))

end

end A062771.P4217966270066026513

namespace A062771

/-- `A000010(n+1)+A062570(n+1)-A325596(n+1)` -/
def P4217966270066026513.Spec : Prop :=
  ∀ n, P4217966270066026513.a n = A062771 (n + 1)

end A062771

/-! ## A062771.P15788883720301832392

`A062570(n+1)+A345082(n+1)-A319997(n+1)`
-/

namespace A062771.P15788883720301832392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (n + 1) + (A345082 (n + 1) - A319997 (n + 1))

end

end A062771.P15788883720301832392

namespace A062771

/-- `A062570(n+1)+A345082(n+1)-A319997(n+1)` -/
def P15788883720301832392.Spec : Prop :=
  ∀ n, P15788883720301832392.a n = A062771 (n + 1)

end A062771

/-! ## A062771.P15003175034499245424

`Δ[A047325(n+1)]*A062570(n+1)`
-/

namespace A062771.P15003175034499245424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047325 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A062570 (n + 1)

end

end A062771.P15003175034499245424

namespace A062771

/-- `Δ[A047325(n+1)]*A062570(n+1)` -/
def P15003175034499245424.Spec : Prop :=
  ∀ n, P15003175034499245424.a n = A062771 (n + 1)

end A062771

/-! ## A062771.P4765357651434559231

`C(4, sqrt(A177499(n+1)))*A000010(n+1)`
-/

namespace A062771.P4765357651434559231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 4 (SequenceMachineLib.roundAway (Real.sqrt (A177499 (n + 1) : ℝ))).toNat : ℤ) * A000010 (n + 1)

end

end A062771.P4765357651434559231

namespace A062771

/-- `C(4, sqrt(A177499(n+1)))*A000010(n+1)` -/
def P4765357651434559231.Spec : Prop :=
  ∀ n, P4765357651434559231.a n = A062771 (n + 1)

end A062771

/-! ## A062771.P1884153147146409538

`(2-A131729(n+1))*A000010(2*(n+1))`
-/

namespace A062771.P1884153147146409538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A131729 (n + 1)) * A000010 (2 * (n + 1))

end

end A062771.P1884153147146409538

namespace A062771

/-- `(2-A131729(n+1))*A000010(2*(n+1))` -/
def P1884153147146409538.Spec : Prop :=
  ∀ n, P1884153147146409538.a n = A062771 (n + 1)

end A062771

/-! ## A062771.P6365588877644024056

`A345082(n+1)+A059841(n+1)*A345082(n+1)`
-/

namespace A062771.P6365588877644024056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345082 (n + 1) + A059841 (n + 1) * A345082 (n + 1)

end

end A062771.P6365588877644024056

namespace A062771

/-- `A345082(n+1)+A059841(n+1)*A345082(n+1)` -/
def P6365588877644024056.Spec : Prop :=
  ∀ n, P6365588877644024056.a n = A062771 (n + 1)

end A062771

/-! ## A062771.P16290425715073535221

`A000010(2*(n+1))*A181801(3*n+1)`
-/

namespace A062771.P16290425715073535221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) * A181801 (3 * n + 1)

end

end A062771.P16290425715073535221

namespace A062771

/-- `A000010(2*(n+1))*A181801(3*n+1)` -/
def P16290425715073535221.Spec : Prop :=
  ∀ n, P16290425715073535221.a n = A062771 (n + 1)

end A062771

/-! ## A062771.P6797356734894883126

`A018252(A001511(A060648(n+1)))*A000010(n+1)`
-/

namespace A062771.P6797356734894883126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A001511 (A060648 (n + 1)).toNat).toNat * A000010 (n + 1)

end

end A062771.P6797356734894883126

namespace A062771

/-- `A018252(A001511(A060648(n+1)))*A000010(n+1)` -/
def P6797356734894883126.Spec : Prop :=
  ∀ n, P6797356734894883126.a n = A062771 (n + 1)

end A062771

/-! ## A062771.P16138820283511043203

`A018252(A001511(A062380(n+1)))*A000010(n+1)`
-/

namespace A062771.P16138820283511043203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A001511 (A062380 (n + 1)).toNat).toNat * A000010 (n + 1)

end

end A062771.P16138820283511043203

namespace A062771

/-- `A018252(A001511(A062380(n+1)))*A000010(n+1)` -/
def P16138820283511043203.Spec : Prop :=
  ∀ n, P16138820283511043203.a n = A062771 (n + 1)

end A062771

/-! ## A062771.P8311816873554297624

`A000010(2*(n+1))*A115362(A098848(n))`
-/

namespace A062771.P8311816873554297624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1)) * A115362 (A098848 n).toNat

end

end A062771.P8311816873554297624

namespace A062771

/-- `A000010(2*(n+1))*A115362(A098848(n))` -/
def P8311816873554297624.Spec : Prop :=
  ∀ n, P8311816873554297624.a n = A062771 (n + 1)

end A062771

/-!
# A062772: Smallest prime larger than square of n-th prime.

The programs for A062772, the canonical program `A062772.P2777884273118347424` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062772 has offset 1).

The definition of A062772 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A151800, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062772.P15162933505883417096

`A007491(A000040(n+1))`
-/

namespace A062772.P15162933505883417096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A000040 (n + 1)).toNat

end

end A062772.P15162933505883417096

namespace A062772

/-- `A007491(A000040(n+1))` -/
def P15162933505883417096.Spec : Prop :=
  ∀ n, P15162933505883417096.a n = A062772 (n + 1)

end A062772

/-! ## A062772.P2777884273118347424

`A151800(A001248(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062772

/-- `A151800(A001248(n+1))` -/
def P2777884273118347424.Spec : Prop :=
  ∀ n, P2777884273118347424.a n = A062772 (n + 1)

theorem P2777884273118347424.correct : P2777884273118347424.Spec := by
  intro n
  simp only [A062772, Nat.add_sub_cancel]

end A062772

/-! ## A062772.P3223366287681272490

`A091666(n+1)+A001248(n+1)`
-/

namespace A062772.P3223366287681272490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091666 (n + 1) + A001248 (n + 1)

end

end A062772.P3223366287681272490

namespace A062772

/-- `A091666(n+1)+A001248(n+1)` -/
def P3223366287681272490.Spec : Prop :=
  ∀ n, P3223366287681272490.a n = A062772 (n + 1)

theorem P3223366287681272490.correct : P3223366287681272490.Spec := by
  intro n
  simp only [A062772, Nat.add_sub_cancel, A062772.P3223366287681272490.a, A062772.P2777884273118347424.a, A001248, A001248.P16278241061688229202.a, A091666, A091666.P2525373801874084828.a, A151800, A151800.P4570031678714564115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062772

/-! ## A062772.P3114866228308389473

`A091666(n+1)+A000040(n+1)²`
-/

namespace A062772.P3114866228308389473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091666 (n + 1) + A000040 (n + 1) ^ 2

end

end A062772.P3114866228308389473

namespace A062772

/-- `A091666(n+1)+A000040(n+1)²` -/
def P3114866228308389473.Spec : Prop :=
  ∀ n, P3114866228308389473.a n = A062772 (n + 1)

theorem P3114866228308389473.correct : P3114866228308389473.Spec := by
  intro n
  simp only [A062772, Nat.add_sub_cancel, A062772.P3114866228308389473.a, A062772.P2777884273118347424.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A091666, A091666.P2525373801874084828.a, A151800, A151800.P4570031678714564115.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062772

/-! ## A062772.P14716012327637051616

`A054270(n+1)+A091666(n+1)+A054271(n+1)`
-/

namespace A062772.P14716012327637051616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054270 (n + 1) + (A091666 (n + 1) + A054271 (n + 1))

end

end A062772.P14716012327637051616

namespace A062772

/-- `A054270(n+1)+A091666(n+1)+A054271(n+1)` -/
def P14716012327637051616.Spec : Prop :=
  ∀ n, P14716012327637051616.a n = A062772 (n + 1)

theorem P14716012327637051616.correct : P14716012327637051616.Spec := by
  intro n
  simp only [A062772, Nat.add_sub_cancel, A062772.P14716012327637051616.a, A062772.P2777884273118347424.a, A001248, A001248.P16278241061688229202.a, A054270, A054270.P1038476005510522765.a, A054271, A054271.P1599914643439914482.a, A091666, A091666.P2525373801874084828.a, A151800, A151800.P4570031678714564115.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000879, A000879.P11642258310759995278.a, A007918, A007918.P9623913995348804173.f2, A007918.P9623913995348804173.f1, A007918.P9623913995348804173.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A008864, A008864.P9177617808325052279.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062772

/-! ## A062772.P9522459028871734076

`A007491(p?[comp[n²]])`
-/

namespace A062772.P9522459028871734076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A062772.P9522459028871734076

namespace A062772

/-- `A007491(p?[comp[n²]])` -/
def P9522459028871734076.Spec : Prop :=
  ∀ n, P9522459028871734076.a n = A062772 (n + 1)

end A062772

/-! ## A062772.P6162901883215572645

`A007491(Δ[A007504(n)])`
-/

namespace A062772.P6162901883215572645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (f1 (n + 1) - f1 n).toNat

end

end A062772.P6162901883215572645

namespace A062772

/-- `A007491(Δ[A007504(n)])` -/
def P6162901883215572645.Spec : Prop :=
  ∀ n, P6162901883215572645.a n = A062772 (n + 1)

end A062772

/-! ## A062772.P935214997911593482

`A379405(A006093(n+1))`
-/

namespace A062772.P935214997911593482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379405 (A006093 (n + 1)).toNat

end

end A062772.P935214997911593482

namespace A062772

/-- `A379405(A006093(n+1))` -/
def P935214997911593482.Spec : Prop :=
  ∀ n, P935214997911593482.a n = A062772 (n + 1)

end A062772

/-! ## A062772.P9229149749580314612

`A007491(A008578(n+2))`
-/

namespace A062772.P9229149749580314612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A008578 (n + 2)).toNat

end

end A062772.P9229149749580314612

namespace A062772

/-- `A007491(A008578(n+2))` -/
def P9229149749580314612.Spec : Prop :=
  ∀ n, P9229149749580314612.a n = A062772 (n + 1)

end A062772

/-! ## A062772.P15272688956255109584

`A007491(A182986(n+2))`
-/

namespace A062772.P15272688956255109584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A182986 (n + 2)).toNat

end

end A062772.P15272688956255109584

namespace A062772

/-- `A007491(A182986(n+2))` -/
def P15272688956255109584.Spec : Prop :=
  ∀ n, P15272688956255109584.a n = A062772 (n + 1)

end A062772

/-! ## A062772.P14005073461688882101

`A007491(record[A006530(n+2)])`
-/

namespace A062772.P14005073461688882101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062772.P14005073461688882101

namespace A062772

/-- `A007491(record[A006530(n+2)])` -/
def P14005073461688882101.Spec : Prop :=
  ∀ n, P14005073461688882101.a n = A062772 (n + 1)

end A062772

/-! ## A062772.P10575807217193420749

`A007491(record[A014963(n+2)])`
-/

namespace A062772.P10575807217193420749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062772.P10575807217193420749

namespace A062772

/-- `A007491(record[A014963(n+2)])` -/
def P10575807217193420749.Spec : Prop :=
  ∀ n, P10575807217193420749.a n = A062772 (n + 1)

end A062772

/-! ## A062772.P13832412323923043240

`A007491(record[A020639(n+2)])`
-/

namespace A062772.P13832412323923043240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062772.P13832412323923043240

namespace A062772

/-- `A007491(record[A020639(n+2)])` -/
def P13832412323923043240.Spec : Prop :=
  ∀ n, P13832412323923043240.a n = A062772 (n + 1)

end A062772

/-! ## A062772.P15755556074756033453

`A379405(A000040(n+1)-1)`
-/

namespace A062772.P15755556074756033453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379405 (A000040 (n + 1) - 1).toNat

end

end A062772.P15755556074756033453

namespace A062772

/-- `A379405(A000040(n+1)-1)` -/
def P15755556074756033453.Spec : Prop :=
  ∀ n, P15755556074756033453.a n = A062772 (n + 1)

end A062772

/-! ## A062772.P11925063744778406428

`A007491(eq[1, A013632(n)]+1)`
-/

namespace A062772.P11925063744778406428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A062772.P11925063744778406428

namespace A062772

/-- `A007491(eq[1, A013632(n)]+1)` -/
def P11925063744778406428.Spec : Prop :=
  ∀ n, P11925063744778406428.a n = A062772 (n + 1)

end A062772

/-! ## A062772.P7630807711734991582

`A007491(record[A000010(n+1)+1])`
-/

namespace A062772.P7630807711734991582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A062772.P7630807711734991582

namespace A062772

/-- `A007491(record[A000010(n+1)+1])` -/
def P7630807711734991582.Spec : Prop :=
  ∀ n, P7630807711734991582.a n = A062772 (n + 1)

end A062772

/-! ## A062772.P16448064849148967063

`record[A053000(n+1)+A006530(2*(n+1))²]`
-/

namespace A062772.P16448064849148967063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053000 (n + 1) + A006530 (2 * (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062772.P16448064849148967063

namespace A062772

/-- `record[A053000(n+1)+A006530(2*(n+1))²]` -/
def P16448064849148967063.Spec : Prop :=
  ∀ n, P16448064849148967063.a n = A062772 (n + 1)

end A062772

/-! ## A062772.P7849614920846629135

`A007491(A007504(n+1)-A007504(n))`
-/

namespace A062772.P7849614920846629135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (A007504 (n + 1) - A007504 n).toNat

end

end A062772.P7849614920846629135

namespace A062772

/-- `A007491(A007504(n+1)-A007504(n))` -/
def P7849614920846629135.Spec : Prop :=
  ∀ n, P7849614920846629135.a n = A062772 (n + 1)

end A062772

/-! ## A062772.P13355977254475512191

`∩[A135930(n+1), A379405(n)]`
-/

namespace A062772.P13355977254475512191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135930 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379405 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062772.P13355977254475512191

namespace A062772

/-- `∩[A135930(n+1), A379405(n)]` -/
def P13355977254475512191.Spec : Prop :=
  ∀ n, (P13355977254475512191.a n : ℤ) = A062772 (n + 1)

end A062772

/-! ## A062772.P13702753868242603309

`∩[A007491(n+1), A135930(n+1)]`
-/

namespace A062772.P13702753868242603309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007491 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135930 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A062772.P13702753868242603309

namespace A062772

/-- `∩[A007491(n+1), A135930(n+1)]` -/
def P13702753868242603309.Spec : Prop :=
  ∀ n, (P13702753868242603309.a n : ℤ) = A062772 (n + 1)

end A062772

/-!
# A062773: Index of the smallest prime which follows square of n-th prime.

The programs for A062773, the canonical program `A062773.P16388033772693534914` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062773 has offset 1).

The definition of A062773 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062772, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062773.P16388033772693534914

`A000720(A062772(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A062773

/-- `A000720(A062772(n+1))` -/
def P16388033772693534914.Spec : Prop :=
  ∀ n, P16388033772693534914.a n = A062773 (n + 1)

theorem P16388033772693534914.correct : P16388033772693534914.Spec := by
  intro n
  simp only [A062773, Nat.add_sub_cancel]

end A062773

/-! ## A062773.P8729252410512906261

`∑[A050216(n)]+1`
-/

namespace A062773.P8729252410512906261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A062773.P8729252410512906261

namespace A062773

/-- `∑[A050216(n)]+1` -/
def P8729252410512906261.Spec : Prop :=
  ∀ n, P8729252410512906261.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P13210058199318646321

`A000879(n+1)+1`
-/

namespace A062773.P13210058199318646321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000879 (n + 1) + 1

end

end A062773.P13210058199318646321

namespace A062773

/-- `A000879(n+1)+1` -/
def P13210058199318646321.Spec : Prop :=
  ∀ n, P13210058199318646321.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P5164305864589583665

`A250473(n+1)+n`
-/

namespace A062773.P5164305864589583665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250473 (n + 1) + (n : ℤ)

end

end A062773.P5164305864589583665

namespace A062773

/-- `A250473(n+1)+n` -/
def P5164305864589583665.Spec : Prop :=
  ∀ n, P5164305864589583665.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P7340115272992612657

`A054272(n+1)+1+n`
-/

namespace A062773.P7340115272992612657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054272 (n + 1) + 1 + (n : ℤ)

end

end A062773.P7340115272992612657

namespace A062773

/-- `A054272(n+1)+1+n` -/
def P7340115272992612657.Spec : Prop :=
  ∀ n, P7340115272992612657.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P7148015567516779360

`A250474(n+1)-1+n`
-/

namespace A062773.P7148015567516779360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - 1 + (n : ℤ)

end

end A062773.P7148015567516779360

namespace A062773

/-- `A250474(n+1)-1+n` -/
def P7148015567516779360.Spec : Prop :=
  ∀ n, P7148015567516779360.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P10219994720679942598

`A250474(n+1)+A023443(n)`
-/

namespace A062773.P10219994720679942598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) + A023443 n

end

end A062773.P10219994720679942598

namespace A062773

/-- `A250474(n+1)+A023443(n)` -/
def P10219994720679942598.Spec : Prop :=
  ∀ n, P10219994720679942598.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P14892098304794580773

`A250474(n+1)-A024000(n)`
-/

namespace A062773.P14892098304794580773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250474 (n + 1) - A024000 n

end

end A062773.P14892098304794580773

namespace A062773

/-- `A250474(n+1)-A024000(n)` -/
def P14892098304794580773.Spec : Prop :=
  ∀ n, P14892098304794580773.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P761974883679880486

`A066883(n+1)+A014688(n+1)`
-/

namespace A062773.P761974883679880486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066883 (n + 1) + A014688 (n + 1)

end

end A062773.P761974883679880486

namespace A062773

/-- `A066883(n+1)+A014688(n+1)` -/
def P761974883679880486.Spec : Prop :=
  ∀ n, P761974883679880486.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P3863763126762071243

`A001248(n+1)-A120389(n+1)`
-/

namespace A062773.P3863763126762071243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A120389 (n + 1)

end

end A062773.P3863763126762071243

namespace A062773

/-- `A001248(n+1)-A120389(n+1)` -/
def P3863763126762071243.Spec : Prop :=
  ∀ n, P3863763126762071243.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P17472278675426576872

`A000040(n+1)²-A120389(n+1)`
-/

namespace A062773.P17472278675426576872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 - A120389 (n + 1)

end

end A062773.P17472278675426576872

namespace A062773

/-- `A000040(n+1)²-A120389(n+1)` -/
def P17472278675426576872.Spec : Prop :=
  ∀ n, P17472278675426576872.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P10267077509158994867

`A066883(n+1)+A095116(n+1)+1`
-/

namespace A062773.P10267077509158994867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066883 (n + 1) + (A095116 (n + 1) + 1)

end

end A062773.P10267077509158994867

namespace A062773

/-- `A066883(n+1)+A095116(n+1)+1` -/
def P10267077509158994867.Spec : Prop :=
  ∀ n, P10267077509158994867.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P954499457438587170

`A000040(n+1)²+1-A053683(n+1)`
-/

namespace A062773.P954499457438587170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + (1 - A053683 (n + 1))

end

end A062773.P954499457438587170

namespace A062773

/-- `A000040(n+1)²+1-A053683(n+1)` -/
def P954499457438587170.Spec : Prop :=
  ∀ n, P954499457438587170.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P12585487721001932604

`A181962(n+1)-n`
-/

namespace A062773.P12585487721001932604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181962 (n + 1) - (n : ℤ)

end

end A062773.P12585487721001932604

namespace A062773

/-- `A181962(n+1)-n` -/
def P12585487721001932604.Spec : Prop :=
  ∀ n, P12585487721001932604.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P3387267350393512834

`A038107(Δ[A007504(n)])+1`
-/

namespace A062773.P3387267350393512834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (f1 (n + 1) - f1 n).toNat + 1

end

end A062773.P3387267350393512834

namespace A062773

/-- `A038107(Δ[A007504(n)])+1` -/
def P3387267350393512834.Spec : Prop :=
  ∀ n, P3387267350393512834.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P2176363254166316634

`A038107(A000040(n+1))+1`
-/

namespace A062773.P2176363254166316634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A000040 (n + 1)).toNat + 1

end

end A062773.P2176363254166316634

namespace A062773

/-- `A038107(A000040(n+1))+1` -/
def P2176363254166316634.Spec : Prop :=
  ∀ n, P2176363254166316634.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P13790841056035821023

`A038107(A008578(n+2))+1`
-/

namespace A062773.P13790841056035821023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A008578 (n + 2)).toNat + 1

end

end A062773.P13790841056035821023

namespace A062773

/-- `A038107(A008578(n+2))+1` -/
def P13790841056035821023.Spec : Prop :=
  ∀ n, P13790841056035821023.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P17045159648766810764

`A038107(A182986(n+2))+1`
-/

namespace A062773.P17045159648766810764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A182986 (n + 2)).toNat + 1

end

end A062773.P17045159648766810764

namespace A062773

/-- `A038107(A182986(n+2))+1` -/
def P17045159648766810764.Spec : Prop :=
  ∀ n, P17045159648766810764.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P7096181077441645155

`A038107(record[A006530(n+2)])+1`
-/

namespace A062773.P7096181077441645155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A062773.P7096181077441645155

namespace A062773

/-- `A038107(record[A006530(n+2)])+1` -/
def P7096181077441645155.Spec : Prop :=
  ∀ n, P7096181077441645155.a n = A062773 (n + 1)

end A062773

/-! ## A062773.P185842468772686762

`A038107(record[A020639(n+2)])+1`
-/

namespace A062773.P185842468772686762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1

end

end A062773.P185842468772686762

namespace A062773

/-- `A038107(record[A020639(n+2)])+1` -/
def P185842468772686762.Spec : Prop :=
  ∀ n, P185842468772686762.a n = A062773 (n + 1)

end A062773

/-!
# A062774: Inverse Moebius transform of PrimePi function.

The programs for A062774, the canonical program `A062774.P18360295498494493866` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062774 has offset 1).

The definition of A062774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062774.P3014068795788280151

`∑{d}[n+1, A000720(#)]`
-/

namespace A062774.P3014068795788280151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000720 d

end

end A062774.P3014068795788280151

namespace A062774

/-- `∑{d}[n+1, A000720(#)]` -/
def P3014068795788280151.Spec : Prop :=
  ∀ n, P3014068795788280151.a n = A062774 (n + 1)

end A062774

/-! ## A062774.P9682950853682250189

`∑{d}[n+1, A036234(#)-1]`
-/

namespace A062774.P9682950853682250189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A036234 d - 1)

end

end A062774.P9682950853682250189

namespace A062774

/-- `∑{d}[n+1, A036234(#)-1]` -/
def P9682950853682250189.Spec : Prop :=
  ∀ n, P9682950853682250189.a n = A062774 (n + 1)

end A062774

/-! ## A062774.P15151178177282307699

`A334800(n+1)+A062799(n+1)`
-/

namespace A062774.P15151178177282307699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334800 (n + 1) + A062799 (n + 1)

end

end A062774.P15151178177282307699

namespace A062774

/-- `A334800(n+1)+A062799(n+1)` -/
def P15151178177282307699.Spec : Prop :=
  ∀ n, P15151178177282307699.a n = A062774 (n + 1)

theorem P15151178177282307699.correct : P15151178177282307699.Spec := by
  intro n
  simp only [A062774, Nat.add_sub_cancel, A062774.P15151178177282307699.a, A062774.P18360295498494493866.f1, A062774.P18360295498494493866.a, A062799, A062799.P13116436156649917585.f1, A062799.P13116436156649917585.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A334800, A334800.P4513335297567322539.a, A001511, A001511.P17146462531039486101.a, A205745, A205745.P10456452147523085489.f1, A205745.P10456452147523085489.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062774

/-! ## A062774.P1272174785531558400

`A046992(n+1)-A368616(n+1)`
-/

namespace A062774.P1272174785531558400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1) - A368616 (n + 1)

end

end A062774.P1272174785531558400

namespace A062774

/-- `A046992(n+1)-A368616(n+1)` -/
def P1272174785531558400.Spec : Prop :=
  ∀ n, P1272174785531558400.a n = A062774 (n + 1)

theorem P1272174785531558400.correct : P1272174785531558400.Spec := by
  intro n
  simp only [A062774, Nat.add_sub_cancel, A062774.P1272174785531558400.a, A062774.P18360295498494493866.f1, A062774.P18360295498494493866.a, A046992, A046992.P5723550036857346414.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A368616, A368616.P2512839611313928927.a, A002815, A002815.P11144953744924913715.f1, A002815.P11144953744924913715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062774

/-! ## A062774.P15240823975990219608

`∑{d}[n+1, A000005(#)*A062778((n+1)/#)]`
-/

namespace A062774.P15240823975990219608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A062778 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062774.P15240823975990219608

namespace A062774

/-- `∑{d}[n+1, A000005(#)*A062778((n+1)/#)]` -/
def P15240823975990219608.Spec : Prop :=
  ∀ n, P15240823975990219608.a n = A062774 (n + 1)

end A062774

/-! ## A062774.P11426604603349943026

`∑{d}[n+1, A023900(#)*A386596((n+1)/#)]`
-/

namespace A062774.P11426604603349943026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A386596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062774.P11426604603349943026

namespace A062774

/-- `∑{d}[n+1, A023900(#)*A386596((n+1)/#)]` -/
def P11426604603349943026.Spec : Prop :=
  ∀ n, P11426604603349943026.a n = A062774 (n + 1)

end A062774

/-! ## A062774.P2738875750257574866

`∑{d}[n+1, A130054(#)*A333699((n+1)/#)]`
-/

namespace A062774.P2738875750257574866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130054 d * A333699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062774.P2738875750257574866

namespace A062774

/-- `∑{d}[n+1, A130054(#)*A333699((n+1)/#)]` -/
def P2738875750257574866.Spec : Prop :=
  ∀ n, P2738875750257574866.a n = A062774 (n + 1)

end A062774

/-! ## A062774.P8104079218779322200

`A046992(n+1)-(A368641(n+1)+A048865(n+1))`
-/

namespace A062774.P8104079218779322200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1) - (A368641 (n + 1) + A048865 (n + 1))

end

end A062774.P8104079218779322200

namespace A062774

/-- `A046992(n+1)-(A368641(n+1)+A048865(n+1))` -/
def P8104079218779322200.Spec : Prop :=
  ∀ n, P8104079218779322200.a n = A062774 (n + 1)

theorem P8104079218779322200.correct : P8104079218779322200.Spec := by
  intro n
  simp only [A062774, Nat.add_sub_cancel, A062774.P8104079218779322200.a, A062774.P18360295498494493866.f1, A062774.P18360295498494493866.a, A046992, A046992.P5723550036857346414.a, A048865, A048865.P11145010694177444749.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A368641, A368641.P10387616186859536638.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A001221, A001221.P10258181745752134128.a, A002815, A002815.P11144953744924913715.f1, A002815.P11144953744924913715.a, A368616, A368616.P2512839611313928927.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062774

/-! ## A062774.P5805780056066078181

`A069264(n+1)+A334800(n+1)-A330018(n+1)`
-/

namespace A062774.P5805780056066078181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069264 (n + 1) + (A334800 (n + 1) - A330018 (n + 1))

end

end A062774.P5805780056066078181

namespace A062774

/-- `A069264(n+1)+A334800(n+1)-A330018(n+1)` -/
def P5805780056066078181.Spec : Prop :=
  ∀ n, P5805780056066078181.a n = A062774 (n + 1)

theorem P5805780056066078181.correct : P5805780056066078181.Spec := by
  intro n
  simp only [A062774, Nat.add_sub_cancel, A062774.P5805780056066078181.a, A062774.P18360295498494493866.f1, A062774.P18360295498494493866.a, A069264, A069264.P9562559770750993337.f1, A069264.P9562559770750993337.f2, A069264.P9562559770750993337.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A330018, A330018.P8032385890936907680.a, A334800, A334800.P4513335297567322539.a, A062799, A062799.P13116436156649917585.f1, A062799.P13116436156649917585.a, A064680, A064680.P14625774430786589521.a, A001511, A001511.P17146462531039486101.a, A205745, A205745.P10456452147523085489.f1, A205745.P10456452147523085489.a, A006519, A006519.P10435570611646570274.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062774

/-! ## A062774.P7511740754123091110

`A046992(n+1)+A368611(n+1)-A368610(n+1)`
-/

namespace A062774.P7511740754123091110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046992 (n + 1) + (A368611 (n + 1) - A368610 (n + 1))

end

end A062774.P7511740754123091110

namespace A062774

/-- `A046992(n+1)+A368611(n+1)-A368610(n+1)` -/
def P7511740754123091110.Spec : Prop :=
  ∀ n, P7511740754123091110.a n = A062774 (n + 1)

theorem P7511740754123091110.correct : P7511740754123091110.Spec := by
  intro n
  simp only [A062774, Nat.add_sub_cancel, A062774.P7511740754123091110.a, A062774.P18360295498494493866.f1, A062774.P18360295498494493866.a, A046992, A046992.P5723550036857346414.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A368610, A368610.P12539630653234803959.a, A368611, A368611.P6772497377963491420.f1, A368611.P6772497377963491420.a, A002815, A002815.P11144953744924913715.f1, A002815.P11144953744924913715.a, A368616, A368616.P2512839611313928927.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062774

/-! ## A062774.P18360295498494493866

`∑{d}[n+1, A230980(#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062774

/-- `∑{d}[n+1, A230980(#)]` -/
def P18360295498494493866.Spec : Prop :=
  ∀ n, P18360295498494493866.a n = A062774 (n + 1)

theorem P18360295498494493866.correct : P18360295498494493866.Spec := by
  intro n
  simp only [A062774, Nat.add_sub_cancel]

end A062774

/-! ## A062774.P13266707558958977527

`A013939(n+1)+A368612(n+2)-A368610(n+1)`
-/

namespace A062774.P13266707558958977527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013939 (n + 1) + (A368612 (n + 2) - A368610 (n + 1))

end

end A062774.P13266707558958977527

namespace A062774

/-- `A013939(n+1)+A368612(n+2)-A368610(n+1)` -/
def P13266707558958977527.Spec : Prop :=
  ∀ n, P13266707558958977527.a n = A062774 (n + 1)

end A062774

/-! ## A062774.P3813014145535095311

`A368612(n+2)-(A368612(n+1)+A048865(n+1))`
-/

namespace A062774.P3813014145535095311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368612 (n + 2) - (A368612 (n + 1) + A048865 (n + 1))

end

end A062774.P3813014145535095311

namespace A062774

/-- `A368612(n+2)-(A368612(n+1)+A048865(n+1))` -/
def P3813014145535095311.Spec : Prop :=
  ∀ n, P3813014145535095311.a n = A062774 (n + 1)

end A062774

/-! ## A062774.P2039331915247422549

`A368612(n+2)-(A368616(n+1)+A368613(n+1))`
-/

namespace A062774.P2039331915247422549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368612 (n + 2) - (A368616 (n + 1) + A368613 (n + 1))

end

end A062774.P2039331915247422549

namespace A062774

/-- `A368612(n+2)-(A368616(n+1)+A368613(n+1))` -/
def P2039331915247422549.Spec : Prop :=
  ∀ n, P2039331915247422549.a n = A062774 (n + 1)

end A062774

/-! ## A062774.P6265723829351734100

`A368610(n+2)-(A368610(n+1)+A000720(n+2))`
-/

namespace A062774.P6265723829351734100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368610 (n + 2) - (A368610 (n + 1) + A000720 (n + 2))

end

end A062774.P6265723829351734100

namespace A062774

/-- `A368610(n+2)-(A368610(n+1)+A000720(n+2))` -/
def P6265723829351734100.Spec : Prop :=
  ∀ n, P6265723829351734100.a n = A062774 (n + 1)

end A062774

/-! ## A062774.P7922557739884656924

`∑{d}[n+1, A056811(#²)]`
-/

namespace A062774.P7922557739884656924
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A056811 (d ^ 2)

end

end A062774.P7922557739884656924

namespace A062774

/-- `∑{d}[n+1, A056811(#²)]` -/
def P7922557739884656924.Spec : Prop :=
  ∀ n, P7922557739884656924.a n = A062774 (n + 1)

end A062774

/-!
# A062775: Number of Pythagorean triples mod n: total number of solutions to x^2 + y^2 = z^2 mod n.

The programs for A062775, there is no canonical definition to state claims against.
-/

/-! ## A062775.P4623707375066911381

`A038712(A000188(n+1))*A087687(n+1)`
-/

namespace A062775.P4623707375066911381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (A000188 (n + 1)).toNat * A087687 (n + 1)

end

end A062775.P4623707375066911381

/-! ## A062775.P3767859477711118405

`A059905(xor(n, n+1))*A087687(n+1)`
-/

namespace A062775.P3767859477711118405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (Nat.xor n (n + 1)) * A087687 (n + 1)

end

end A062775.P3767859477711118405

/-! ## A062775.P302063013069939778

`A059905(A038712(n+1))*A087687(n+1)`
-/

namespace A062775.P302063013069939778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059905 (A038712 (n + 1)).toNat * A087687 (n + 1)

end

end A062775.P302063013069939778

/-! ## A062775.P18155008380865207600

`2*A331996(n+1)-A088964(n+1)`
-/

namespace A062775.P18155008380865207600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331996 (n + 1) - A088964 (n + 1)

end

end A062775.P18155008380865207600

/-! ## A062775.P12123141108359147222

`A004277(A331996(n+1))-A088964(n+1)`
-/

namespace A062775.P12123141108359147222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A331996 (n + 1)).toNat - A088964 (n + 1)

end

end A062775.P12123141108359147222

/-!
# A062776: Greatest common divisor of (n+2)! and n^n.

The programs for A062776, the canonical program `A062776.P13129070237513551766` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062776 has offset 1).

The definition of A062776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062776.P13129070237513551766

`gcd((n+3)!, (n+1)^(n+1))`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062776

/-- `gcd((n+3)!, (n+1)^(n+1))` -/
def P13129070237513551766.Spec : Prop :=
  ∀ n, (P13129070237513551766.a n : ℤ) = A062776 (n + 1)

theorem P13129070237513551766.correct : P13129070237513551766.Spec := by
  intro n
  simp only [A062776, Nat.add_sub_cancel]

end A062776

/-! ## A062776.P11228242325757691685

`A051696(n+1)*A135517(n+2)`
-/

namespace A062776.P11228242325757691685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051696 (n + 1) * A135517 (n + 2)

end

end A062776.P11228242325757691685

namespace A062776

/-- `A051696(n+1)*A135517(n+2)` -/
def P11228242325757691685.Spec : Prop :=
  ∀ n, P11228242325757691685.a n = A062776 (n + 1)

end A062776

/-! ## A062776.P7706852703023463231

`gcd(2*∏[n+3], (n+1)^A000027(n+1))`
-/

namespace A062776.P7706852703023463231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((2 * (∏ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (A000027 (n + 1) : ℤ)))

end

end A062776.P7706852703023463231

namespace A062776

/-- `gcd(2*∏[n+3], (n+1)^A000027(n+1))` -/
def P7706852703023463231.Spec : Prop :=
  ∀ n, (P7706852703023463231.a n : ℤ) = A062776 (n + 1)

end A062776

/-! ## A062776.P13412938940593749439

`gcd(A000142(n+3), A000312(n+1))`
-/

namespace A062776.P13412938940593749439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000142 (n + 3)) (A000312 (n + 1))

end

end A062776.P13412938940593749439

namespace A062776

/-- `gcd(A000142(n+3), A000312(n+1))` -/
def P13412938940593749439.Spec : Prop :=
  ∀ n, (P13412938940593749439.a n : ℤ) = A062776 (n + 1)

end A062776

/-!
# A062777: a(n) = 2^n - mu(n).

The programs for A062777, the canonical program `A062777.P18345783557940935035` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062777 has offset 1).

The definition of A062777 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008683, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062777.P18345783557940935035

`A000079(n+1)-A008683(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A062777

/-- `A000079(n+1)-A008683(n+1)` -/
def P18345783557940935035.Spec : Prop :=
  ∀ n, P18345783557940935035.a n = A062777 (n + 1)

theorem P18345783557940935035.correct : P18345783557940935035.Spec := by
  intro n
  simp only [A062777, Nat.add_sub_cancel]

end A062777

/-! ## A062777.P8126922066552030829

`2^(n+1)-∏{e}[n+1, floor(log(atan(#)))]`
-/

namespace A062777.P8126922066552030829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.log (Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋

end

end A062777.P8126922066552030829

namespace A062777

/-- `2^(n+1)-∏{e}[n+1, floor(log(atan(#)))]` -/
def P8126922066552030829.Spec : Prop :=
  ∀ n, P8126922066552030829.a n = A062777 (n + 1)

end A062777

/-! ## A062777.P9014486075639895014

`2^(n+1)-round(acot(∏{e}[n+1, -#]))`
-/

namespace A062777.P9014486075639895014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - SequenceMachineLib.roundAway (SequenceMachineLib.acot ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ)) : ℤ) : ℝ))

end

end A062777.P9014486075639895014

namespace A062777

/-- `2^(n+1)-round(acot(∏{e}[n+1, -#]))` -/
def P9014486075639895014.Spec : Prop :=
  ∀ n, P9014486075639895014.a n = A062777 (n + 1)

end A062777

/-! ## A062777.P16808371880575078463

`2^(n+1)-∏{e}[n+1, floor(log2(atan(#)))]`
-/

namespace A062777.P16808371880575078463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - ∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.logb 2 (Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋

end

end A062777.P16808371880575078463

namespace A062777

/-- `2^(n+1)-∏{e}[n+1, floor(log2(atan(#)))]` -/
def P16808371880575078463.Spec : Prop :=
  ∀ n, P16808371880575078463.a n = A062777 (n + 1)

end A062777

/-! ## A062777.P1088191104467373478

`A048578(n)-A007423(n+1)`
-/

namespace A062777.P1088191104467373478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048578 n - A007423 (n + 1)

end

end A062777.P1088191104467373478

namespace A062777

/-- `A048578(n)-A007423(n+1)` -/
def P1088191104467373478.Spec : Prop :=
  ∀ n, P1088191104467373478.a n = A062777 (n + 1)

end A062777

/-! ## A062777.P1300001356624838187

`A157658(n+1)+A151821(n+1)`
-/

namespace A062777.P1300001356624838187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157658 (n + 1) + A151821 (n + 1)

end

end A062777.P1300001356624838187

namespace A062777

/-- `A157658(n+1)+A151821(n+1)` -/
def P1300001356624838187.Spec : Prop :=
  ∀ n, P1300001356624838187.a n = A062777 (n + 1)

end A062777

/-! ## A062777.P3135762705439877870

`A126646(n)+1-A008683(n+1)`
-/

namespace A062777.P3135762705439877870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + (1 - A008683 (n + 1))

end

end A062777.P3135762705439877870

namespace A062777

/-- `A126646(n)+1-A008683(n+1)` -/
def P3135762705439877870.Spec : Prop :=
  ∀ n, P3135762705439877870.a n = A062777 (n + 1)

theorem P3135762705439877870.correct : P3135762705439877870.Spec := by
  intro n
  simp only [A062777, Nat.add_sub_cancel, A062777.P3135762705439877870.a, A062777.P18345783557940935035.a, A000079, A000079.P10855139691139572931.a, A008683, A008683.P18254306604665478110.a, A126646, A126646.P3746310572697910447.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062777

/-! ## A062777.P16726385738906846093

`A265160(n+1)-A014193(n+1)`
-/

namespace A062777.P16726385738906846093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265160 (n + 1) - A014193 (n + 1)

end

end A062777.P16726385738906846093

namespace A062777

/-- `A265160(n+1)-A014193(n+1)` -/
def P16726385738906846093.Spec : Prop :=
  ∀ n, P16726385738906846093.a n = A062777 (n + 1)

end A062777

/-! ## A062777.P4505430223330600523

`A011782(n+2)-A008683(n+1)`
-/

namespace A062777.P4505430223330600523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 2) - A008683 (n + 1)

end

end A062777.P4505430223330600523

namespace A062777

/-- `A011782(n+2)-A008683(n+1)` -/
def P4505430223330600523.Spec : Prop :=
  ∀ n, P4505430223330600523.a n = A062777 (n + 1)

end A062777

/-! ## A062777.P6429830107475119447

`A045663(n+1)+A182256(n+1)-A008683(n+1)`
-/

namespace A062777.P6429830107475119447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045663 (n + 1) + (A182256 (n + 1) - A008683 (n + 1))

end

end A062777.P6429830107475119447

namespace A062777

/-- `A045663(n+1)+A182256(n+1)-A008683(n+1)` -/
def P6429830107475119447.Spec : Prop :=
  ∀ n, P6429830107475119447.a n = A062777 (n + 1)

theorem P6429830107475119447.correct : P6429830107475119447.Spec := by
  intro n
  simp only [A062777, Nat.add_sub_cancel, A062777.P6429830107475119447.a, A062777.P18345783557940935035.a, A000079, A000079.P10855139691139572931.a, A008683, A008683.P18254306604665478110.a, A045663, A045663.P16332658941745437849.a, A182256, A182256.P11479187978899896629.a, A000048, A000048.P16452762028424782785.a, A004277, A004277.P16255821370285667660.a, A132971, A132971.P9197609016375066540.a, A156552, A156552.P4268073137713085227.a, A000007, A000007.P6599383543502402472.a, A005843, A005843.P3167286115683555970.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A056303, A056303.P18308971732008802848.f1, A056303.P18308971732008802848.a, A085357, A085357.P3258697467278337073.a, A106400, A106400.P11201390576172776043.a, A233583, A233583.P15026547221992958741.a, A005940, A005940.P5942875842694471387.a, A008966, A008966.P884693903657889754.a, A010060, A010060.P3080921269106500717.a, A056295, A056295.P9438402425658344231.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062777

/-! ## A062777.P12750992423234809680

`A000079(n+1)-A127511(n+1)/A000079(n)`
-/

namespace A062777.P12750992423234809680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 (n + 1) : ℚ) - (A127511 (n + 1) : ℚ) / (A000079 n : ℚ)

end

end A062777.P12750992423234809680

namespace A062777

/-- `A000079(n+1)-A127511(n+1)/A000079(n)` -/
def P12750992423234809680.Spec : Prop :=
  ∀ n, P12750992423234809680.a n = (A062777 (n + 1) : ℚ)

end A062777

/-!
# A062778: Values of Moebius-transform of PrimePi function.

The programs for A062778, the canonical program `A062778.P15711731261721006587` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062778 has offset 1).

The definition of A062778 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062778.P14539815556075735529

`∑{d}[n+1, A000720(#)*A008683((n+1)/#)]`
-/

namespace A062778.P14539815556075735529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000720 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062778.P14539815556075735529

namespace A062778

/-- `∑{d}[n+1, A000720(#)*A008683((n+1)/#)]` -/
def P14539815556075735529.Spec : Prop :=
  ∀ n, P14539815556075735529.a n = A062778 (n + 1)

end A062778

/-! ## A062778.P15711731261721006587

`∑{d}[n+1, A007427(#)*A062774((n+1)/#)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062778

/-- `∑{d}[n+1, A007427(#)*A062774((n+1)/#)]` -/
def P15711731261721006587.Spec : Prop :=
  ∀ n, P15711731261721006587.a n = A062778 (n + 1)

theorem P15711731261721006587.correct : P15711731261721006587.Spec := by
  intro n
  simp only [A062778, Nat.add_sub_cancel]

end A062778

/-! ## A062778.P15105528197734849435

`∑{d}[n+1, A055615(#)*A333699((n+1)/#)]`
-/

namespace A062778.P15105528197734849435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A333699 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062778.P15105528197734849435

namespace A062778

/-- `∑{d}[n+1, A055615(#)*A333699((n+1)/#)]` -/
def P15105528197734849435.Spec : Prop :=
  ∀ n, P15105528197734849435.a n = A062778 (n + 1)

end A062778

/-! ## A062778.P4766829569791476869

`∑{d}[n+1, A046692(#)*A386596((n+1)/#)]`
-/

namespace A062778.P4766829569791476869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A386596 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062778.P4766829569791476869

namespace A062778

/-- `∑{d}[n+1, A046692(#)*A386596((n+1)/#)]` -/
def P4766829569791476869.Spec : Prop :=
  ∀ n, P4766829569791476869.a n = A062778 (n + 1)

end A062778

/-! ## A062778.P5436644701646185236

`∑{d}[n+1, A008683(#)*A230980((n+1)/#)]`
-/

namespace A062778.P5436644701646185236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A230980 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062778.P5436644701646185236

namespace A062778

/-- `∑{d}[n+1, A008683(#)*A230980((n+1)/#)]` -/
def P5436644701646185236.Spec : Prop :=
  ∀ n, P5436644701646185236.a n = A062778 (n + 1)

end A062778

/-!
# A062779: a(n) = 2*n*(2*n)!.

The programs for A062779, the canonical program `A062779.P12352062528915645241` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062779 has offset 0).

The definition of A062779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(2*n)!` (program `A062779.P12352062528915645241`, by `A062779.P12352062528915645241.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062779.P12352062528915645241

`2*n*(2*n)!`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062779

/-- `2*n*(2*n)!` -/
def P12352062528915645241.Spec : Prop :=
  ∀ n, (P12352062528915645241.a n : ℤ) = A062779 n

theorem P12352062528915645241.correct : P12352062528915645241.Spec := by
  intro n
  simp only [A062779]

end A062779

/-! ## A062779.P14498853543184353461

`A001563(2*n)`
-/

namespace A062779.P14498853543184353461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 (2 * n)

end

end A062779.P14498853543184353461

namespace A062779

/-- `A001563(2*n)` -/
def P14498853543184353461.Spec : Prop :=
  ∀ n, P14498853543184353461.a n = A062779 n

end A062779

/-! ## A062779.P8956333386464415648

`2*n*A010050(n)`
-/

namespace A062779.P8956333386464415648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) * A010050 n

end

end A062779.P8956333386464415648

namespace A062779

/-- `2*n*A010050(n)` -/
def P8956333386464415648.Spec : Prop :=
  ∀ n, P8956333386464415648.a n = A062779 n

theorem P8956333386464415648.correct : P8956333386464415648.Spec := by
  intro n
  simp only [A062779, Nat.add_sub_cancel, A062779.P8956333386464415648.a, A062779.P12352062528915645241.a, A010050, A010050.P16096830225553856271.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062779

/-! ## A062779.P10095167370114454621

`record[or(1, n)!-n!]`
-/

namespace A062779.P10095167370114454621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.lor 1 n) : ℤ) - (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062779.P10095167370114454621

namespace A062779

/-- `record[or(1, n)!-n!]` -/
def P10095167370114454621.Spec : Prop :=
  ∀ n, P10095167370114454621.a n = A062779 n

end A062779

/-! ## A062779.P9133902382464094647

`record[xor(1, n)!-n!]`
-/

namespace A062779.P9133902382464094647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.xor 1 n) : ℤ) - (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062779.P9133902382464094647

namespace A062779

/-- `record[xor(1, n)!-n!]` -/
def P9133902382464094647.Spec : Prop :=
  ∀ n, P9133902382464094647.a n = A062779 n

end A062779

/-!
# A062780: Differences between consecutive prime powers of primes (see A053810).

The programs for A062780, there is no canonical definition to state claims against.
-/

/-! ## A062780.P16029121865288687868

`A053810(n+2)-A053810(n+1)`
-/

namespace A062780.P16029121865288687868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 2) - A053810 (n + 1)

end

end A062780.P16029121865288687868

/-! ## A062780.P17259659812357685841

`Δ[A053810(n+1)]`
-/

namespace A062780.P17259659812357685841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062780.P17259659812357685841

/-! ## A062780.P5115035101381382060

`abs(Δ[A053810(1-(n-2*n))])`
-/

namespace A062780.P5115035101381382060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A062780.P5115035101381382060

/-! ## A062780.P15267197477513356863

`Δ[record[A053810(A262519(n))]]`
-/

namespace A062780.P15267197477513356863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062780.P15267197477513356863

/-! ## A062780.P14956136547358688623

`Δ[A053811(n+1)^A053812(n+1)]`
-/

namespace A062780.P14956136547358688623
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053811 (n + 1) : ℚ) ^ (A053812 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062780.P14956136547358688623

/-! ## A062780.P12491288139561221833

`Δ[∩[A025475(n+1), A114129(n+1)]]`
-/

namespace A062780.P12491288139561221833
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025475 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A062780.P12491288139561221833

/-! ## A062780.P10275586202848878294

`Δ[∩[A072777(n+1), A114129(n+1)]]`
-/

namespace A062780.P10275586202848878294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072777 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114129 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A062780.P10275586202848878294

/-! ## A062780.P17500184051860772480

`Δ[record[A053810(A143182(n))]]`
-/

namespace A062780.P17500184051860772480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053810 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062780.P17500184051860772480

/-! ## A062780.P18183808672946401163

`Δ[record[A008475(A093771(n+1))]]`
-/

namespace A062780.P18183808672946401163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A093771 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062780.P18183808672946401163

/-! ## A062780.P17999867746030394073

`Δ[record[A008475(A114129(n+1))]]`
-/

namespace A062780.P17999867746030394073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (A114129 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062780.P17999867746030394073

/-!
# A062782: a(n) = (n^2)! / (n^n).

The programs for A062782, the canonical program `A062782.P1162762639487667040` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062782 has offset 0).

The definition of A062782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062782.P1162762639487667040

`n²!/n^n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062782

/-- `n²!/n^n` -/
def P1162762639487667040.Spec : Prop :=
  ∀ n, P1162762639487667040.a n = (A062782 n : ℚ)

end A062782

/-! ## A062782.P7418273168568595554

`n^-n*n²!`
-/

namespace A062782.P7418273168568595554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (-(n : ℤ) : ℤ) * (Nat.factorial (n ^ 2) : ℚ)

end

end A062782.P7418273168568595554

namespace A062782

/-- `n^-n*n²!` -/
def P7418273168568595554.Spec : Prop :=
  ∀ n, P7418273168568595554.a n = (A062782 n : ℚ)

end A062782

/-! ## A062782.P14801936593951556233

`A000142(n²)/n^n`
-/

namespace A062782.P14801936593951556233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n ^ 2) : ℚ) / (n ^ n : ℚ)

end

end A062782.P14801936593951556233

namespace A062782

/-- `A000142(n²)/n^n` -/
def P14801936593951556233.Spec : Prop :=
  ∀ n, P14801936593951556233.a n = (A062782 n : ℚ)

end A062782

/-! ## A062782.P14822627466838940024

`A088020(n)/A000312(n)`
-/

namespace A062782.P14822627466838940024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088020 n : ℚ) / (A000312 n : ℚ)

end

end A062782.P14822627466838940024

namespace A062782

/-- `A088020(n)/A000312(n)` -/
def P14822627466838940024.Spec : Prop :=
  ∀ n, P14822627466838940024.a n = (A062782 n : ℚ)

end A062782

/-!
# A062783: a(n) = 3*n*(4*n-1).

The programs for A062783, the canonical program `A062783.P15889295991207525073` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062783 has offset 0).

The definition of A062783 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n*(4*n-1)` (program `A062783.P15889295991207525073`, by `A062783.P15889295991207525073.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A062783.P15889295991207525073

`3*n*(4*n-1)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062783

/-- `3*n*(4*n-1)` -/
def P15889295991207525073.Spec : Prop :=
  ∀ n, P15889295991207525073.a n = A062783 n

theorem P15889295991207525073.correct : P15889295991207525073.Spec := by
  intro n
  simp only [A062783]

end A062783

/-! ## A062783.P4535903079151311785

`C(5*n, 2)-∑[n]`
-/

namespace A062783.P4535903079151311785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (5 * n) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A062783.P4535903079151311785

namespace A062783

/-- `C(5*n, 2)-∑[n]` -/
def P4535903079151311785.Spec : Prop :=
  ∀ n, P4535903079151311785.a n = A062783 n

end A062783

/-! ## A062783.P14389775243177077844

`3*C(4*n, 2)/2`
-/

namespace A062783.P14389775243177077844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (4 * n) 2 : ℚ) / 2

end

end A062783.P14389775243177077844

namespace A062783

/-- `3*C(4*n, 2)/2` -/
def P14389775243177077844.Spec : Prop :=
  ∀ n, P14389775243177077844.a n = (A062783 n : ℚ)

theorem P14389775243177077844.correct : P14389775243177077844.Spec := by
  intro n
  simp only [A062783, Nat.add_sub_cancel, A062783.P14389775243177077844.a, A062783.P15889295991207525073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062783

/-! ## A062783.P14731956500970315250

`∑[a(n-1)+24]` with `a(0)=0, a(1)=9`
-/

namespace A062783.P14731956500970315250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n f1 =>
  f1 (n - 1) + 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062783.P14731956500970315250

namespace A062783

/-- `∑[a(n-1)+24]` -/
def P14731956500970315250.Spec : Prop :=
  ∀ n, (P14731956500970315250.a n : ℤ) = A062783 n

end A062783

/-! ## A062783.P18218982269215047409

`9*n+24*C(n, 2)`
-/

namespace A062783.P18218982269215047409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n + 24 * Nat.choose n 2

end

end A062783.P18218982269215047409

namespace A062783

/-- `9*n+24*C(n, 2)` -/
def P18218982269215047409.Spec : Prop :=
  ∀ n, (P18218982269215047409.a n : ℤ) = A062783 n

theorem P18218982269215047409.correct : P18218982269215047409.Spec := by
  intro n
  simp only [A062783, Nat.add_sub_cancel, A062783.P18218982269215047409.a, A062783.P15889295991207525073.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062783

/-! ## A062783.P2435076388544375721

`abs(n*or(3, -(12*n)))`
-/

namespace A062783.P2435076388544375721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * Int.lor 3 (-(12 * n : ℤ))|

end

end A062783.P2435076388544375721

namespace A062783

/-- `abs(n*or(3, -(12*n)))` -/
def P2435076388544375721.Spec : Prop :=
  ∀ n, P2435076388544375721.a n = A062783 n

end A062783

/-! ## A062783.P16758923104911511988

`A014642(n)+n`
-/

namespace A062783.P16758923104911511988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014642 n + (n : ℤ)

end

end A062783.P16758923104911511988

namespace A062783

/-- `A014642(n)+n` -/
def P16758923104911511988.Spec : Prop :=
  ∀ n, P16758923104911511988.a n = A062783 n

theorem P16758923104911511988.correct : P16758923104911511988.Spec := by
  intro n
  simp only [A062783, Nat.add_sub_cancel, A062783.P16758923104911511988.a, A062783.P15889295991207525073.a, A014642, A014642.P1230047363248524840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062783

/-! ## A062783.P3970929293647192557

`A126964(n)-n`
-/

namespace A062783.P3970929293647192557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126964 n - (n : ℤ)

end

end A062783.P3970929293647192557

namespace A062783

/-- `A126964(n)-n` -/
def P3970929293647192557.Spec : Prop :=
  ∀ n, P3970929293647192557.a n = A062783 n

theorem P3970929293647192557.correct : P3970929293647192557.Spec := by
  intro n
  simp only [A062783, Nat.add_sub_cancel, A062783.P3970929293647192557.a, A062783.P15889295991207525073.a, A126964, A126964.P15256011894595819792.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062783

/-! ## A062783.P13745547568360185961

`sqrt(A014794(n))+n`
-/

namespace A062783.P13745547568360185961
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A014794 n : ℝ) + (n : ℝ)

end

end A062783.P13745547568360185961

namespace A062783

/-- `sqrt(A014794(n))+n` -/
def P13745547568360185961.Spec : Prop :=
  ∀ n, P13745547568360185961.a n = (A062783 n : ℝ)

end A062783

/-! ## A062783.P5619454867934500285

`A244802(n+1)-1`
-/

namespace A062783.P5619454867934500285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244802 (n + 1) - 1

end

end A062783.P5619454867934500285

namespace A062783

/-- `A244802(n+1)-1` -/
def P5619454867934500285.Spec : Prop :=
  ∀ n, P5619454867934500285.a n = A062783 n

theorem P5619454867934500285.correct : P5619454867934500285.Spec := by
  intro n
  simp only [A062783, Nat.add_sub_cancel, A062783.P5619454867934500285.a, A062783.P15889295991207525073.a, A244802, A244802.P1468068994303542896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062783

/-! ## A062783.P2626950739950673836

`3*A014635(n)/2`
-/

namespace A062783.P2626950739950673836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A014635 n : ℚ) / 2

end

end A062783.P2626950739950673836

namespace A062783

/-- `3*A014635(n)/2` -/
def P2626950739950673836.Spec : Prop :=
  ∀ n, P2626950739950673836.a n = (A062783 n : ℚ)

theorem P2626950739950673836.correct : P2626950739950673836.Spec := by
  intro n
  simp only [A062783, Nat.add_sub_cancel, A062783.P2626950739950673836.a, A062783.P15889295991207525073.a, A014635, A014635.P12617269699985302371.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062783

/-! ## A062783.P14964225650314477043

`A185918(n)+1-n`
-/

namespace A062783.P14964225650314477043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185918 n + (1 - (n : ℤ))

end

end A062783.P14964225650314477043

namespace A062783

/-- `A185918(n)+1-n` -/
def P14964225650314477043.Spec : Prop :=
  ∀ n, P14964225650314477043.a n = A062783 n

theorem P14964225650314477043.correct : P14964225650314477043.Spec := by
  intro n
  simp only [A062783, Nat.add_sub_cancel, A062783.P14964225650314477043.a, A062783.P15889295991207525073.a, A185918, A185918.P12744030162887049850.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062783

/-! ## A062783.P13244213301897736585

`2*A033579(n)+n`
-/

namespace A062783.P13244213301897736585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A033579 n + (n : ℤ)

end

end A062783.P13244213301897736585

namespace A062783

/-- `2*A033579(n)+n` -/
def P13244213301897736585.Spec : Prop :=
  ∀ n, P13244213301897736585.a n = A062783 n

theorem P13244213301897736585.correct : P13244213301897736585.Spec := by
  intro n
  simp only [A062783, Nat.add_sub_cancel, A062783.P13244213301897736585.a, A062783.P15889295991207525073.a, A033579, A033579.P8592719016639374159.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062783

/-! ## A062783.P1793349438420058857

`A396291(n)+2*n`
-/

namespace A062783.P1793349438420058857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396291 n + (2 * n : ℤ)

end

end A062783.P1793349438420058857

namespace A062783

/-- `A396291(n)+2*n` -/
def P1793349438420058857.Spec : Prop :=
  ∀ n, P1793349438420058857.a n = A062783 n

theorem P1793349438420058857.correct : P1793349438420058857.Spec := by
  intro n
  simp only [A062783, Nat.add_sub_cancel, A062783.P1793349438420058857.a, A062783.P15889295991207525073.a, A396291, A396291.P2280103338649089632.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062783

/-! ## A062783.P14364130633628012582

`2*A049452(n)-n`
-/

namespace A062783.P14364130633628012582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049452 n - (n : ℤ)

end

end A062783.P14364130633628012582

namespace A062783

/-- `2*A049452(n)-n` -/
def P14364130633628012582.Spec : Prop :=
  ∀ n, P14364130633628012582.a n = A062783 n

theorem P14364130633628012582.correct : P14364130633628012582.Spec := by
  intro n
  simp only [A062783, Nat.add_sub_cancel, A062783.P14364130633628012582.a, A062783.P15889295991207525073.a, A049452, A049452.P12714994684333640872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062783

/-! ## A062783.P15706244055331154103

`A396288(n)-2*n`
-/

namespace A062783.P15706244055331154103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396288 n - (2 * n : ℤ)

end

end A062783.P15706244055331154103

namespace A062783

/-- `A396288(n)-2*n` -/
def P15706244055331154103.Spec : Prop :=
  ∀ n, P15706244055331154103.a n = A062783 n

theorem P15706244055331154103.correct : P15706244055331154103.Spec := by
  intro n
  simp only [A062783, Nat.add_sub_cancel, A062783.P15706244055331154103.a, A062783.P15889295991207525073.a, A396288, A396288.P9785100004130404729.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062783

/-! ## A062783.P6709017190026654107

`4*A049450(n)+n`
-/

namespace A062783.P6709017190026654107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A049450 n + (n : ℤ)

end

end A062783.P6709017190026654107

namespace A062783

/-- `4*A049450(n)+n` -/
def P6709017190026654107.Spec : Prop :=
  ∀ n, P6709017190026654107.a n = A062783 n

theorem P6709017190026654107.correct : P6709017190026654107.Spec := by
  intro n
  simp only [A062783, Nat.add_sub_cancel, A062783.P6709017190026654107.a, A062783.P15889295991207525073.a, A049450, A049450.P1815257678583562472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062783

/-! ## A062783.P16534185089606579135

`A139273(n)+(2*n)²`
-/

namespace A062783.P16534185089606579135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139273 n + ((2 * n) ^ 2 : ℤ)

end

end A062783.P16534185089606579135

namespace A062783

/-- `A139273(n)+(2*n)²` -/
def P16534185089606579135.Spec : Prop :=
  ∀ n, P16534185089606579135.a n = A062783 n

theorem P16534185089606579135.correct : P16534185089606579135.Spec := by
  intro n
  simp only [A062783, Nat.add_sub_cancel, A062783.P16534185089606579135.a, A062783.P15889295991207525073.a, A139273, A139273.P14013562454579091989.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062783

/-! ## A062783.P12867610841412742656

`A195018(n)+2*n²`
-/

namespace A062783.P12867610841412742656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195018 n + (2 * n ^ 2 : ℤ)

end

end A062783.P12867610841412742656

namespace A062783

/-- `A195018(n)+2*n²` -/
def P12867610841412742656.Spec : Prop :=
  ∀ n, P12867610841412742656.a n = A062783 n

theorem P12867610841412742656.correct : P12867610841412742656.Spec := by
  intro n
  simp only [A062783, Nat.add_sub_cancel, A062783.P12867610841412742656.a, A062783.P15889295991207525073.a, A195018, A195018.P10780825552711397623.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062783

/-! ## A062783.P13795797520539060755

`A081587(n)-(∑[n]+1)`
-/

namespace A062783.P13795797520539060755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081587 n - ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A062783.P13795797520539060755

namespace A062783

/-- `A081587(n)-(∑[n]+1)` -/
def P13795797520539060755.Spec : Prop :=
  ∀ n, P13795797520539060755.a n = A062783 n

end A062783

/-!
# A062784: Numbers k such that sigma(k) + phi(k) is a perfect square.

The programs for A062784, there is no canonical definition to state claims against.
-/

/-! ## A062784.P10879387799470661236

`eq[1, A067349(n+1)%2]+1`
-/

namespace A062784.P10879387799470661236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067349 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062784.P10879387799470661236

/-! ## A062784.P18370910045049534510

`lt[1, 2*A067349(a(n-1)+n)%2]` with `a(0)=1, a(1)=0`
-/

namespace A062784.P18370910045049534510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n f2 =>
  2 * Int.tmod (A067349 (f2 (n - 1) + (n : ℤ)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A062784.P18370910045049534510

/-! ## A062784.P3559086062768360267

`eq[1, A067349(A028310(n))%2]`
-/

namespace A062784.P3559086062768360267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067349 (A028310 n).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A062784.P3559086062768360267

/-! ## A062784.P7549529079612558453

`lt[1, 3^val(A067349(A000007(n)+n)+1, 2)]`
-/

namespace A062784.P7549529079612558453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (A067349 (A000007 n + (n : ℤ)).toNat + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A062784.P7549529079612558453

/-! ## A062784.P9775953949152284679

`eq[1, A003285(A065387(n+1)+1)]+1`
-/

namespace A062784.P9775953949152284679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003285 (A065387 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A062784.P9775953949152284679

/-!
# A062785: a(n) = Chowla's function of n * sigma(n).

The programs for A062785, the canonical program `A062785.P8716232642993824825` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062785 has offset 1).

The definition of A062785 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062785.P8716232642993824825

`A000203(n+1)*A048050(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A062785

/-- `A000203(n+1)*A048050(n+1)` -/
def P8716232642993824825.Spec : Prop :=
  ∀ n, P8716232642993824825.a n = A062785 (n + 1)

theorem P8716232642993824825.correct : P8716232642993824825.Spec := by
  intro n
  simp only [A062785, Nat.add_sub_cancel]

end A062785

/-! ## A062785.P14236666686400225317

`(A173455(n+1)-1)*A000203(n+1)`
-/

namespace A062785.P14236666686400225317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173455 (n + 1) - 1) * A000203 (n + 1)

end

end A062785.P14236666686400225317

namespace A062785

/-- `(A173455(n+1)-1)*A000203(n+1)` -/
def P14236666686400225317.Spec : Prop :=
  ∀ n, P14236666686400225317.a n = A062785 (n + 1)

end A062785

/-! ## A062785.P9362176931460006556

`A048050(n+1)*A245092(2*n+1)`
-/

namespace A062785.P9362176931460006556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048050 (n + 1) * A245092 (2 * n + 1)

end

end A062785.P9362176931460006556

namespace A062785

/-- `A048050(n+1)*A245092(2*n+1)` -/
def P9362176931460006556.Spec : Prop :=
  ∀ n, P9362176931460006556.a n = A062785 (n + 1)

end A062785

/-! ## A062785.P8931202110369544663

`(A001065(n+1)-A057427(n))*A000203(n+1)`
-/

namespace A062785.P8931202110369544663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) - A057427 n) * A000203 (n + 1)

end

end A062785.P8931202110369544663

namespace A062785

/-- `(A001065(n+1)-A057427(n))*A000203(n+1)` -/
def P8931202110369544663.Spec : Prop :=
  ∀ n, P8931202110369544663.a n = A062785 (n + 1)

end A062785

/-! ## A062785.P10409615317696410225

`(A048050(n+1)+A020725(n+1))*A048050(n+1)`
-/

namespace A062785.P10409615317696410225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048050 (n + 1) + A020725 (n + 1)) * A048050 (n + 1)

end

end A062785.P10409615317696410225

namespace A062785

/-- `(A048050(n+1)+A020725(n+1))*A048050(n+1)` -/
def P10409615317696410225.Spec : Prop :=
  ∀ n, P10409615317696410225.a n = A062785 (n + 1)

end A062785

/-! ## A062785.P12550659147830195394

`(A065475(n+1)+A048050(n+1))*A048050(n+1)`
-/

namespace A062785.P12550659147830195394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A065475 (n + 1) + A048050 (n + 1)) * A048050 (n + 1)

end

end A062785.P12550659147830195394

namespace A062785

/-- `(A065475(n+1)+A048050(n+1))*A048050(n+1)` -/
def P12550659147830195394.Spec : Prop :=
  ∀ n, P12550659147830195394.a n = A062785 (n + 1)

theorem P12550659147830195394.correct : P12550659147830195394.Spec := by
  intro n
  simp only [A062785, Nat.add_sub_cancel, A062785.P12550659147830195394.a, A062785.P8716232642993824825.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048050, A048050.P12972569362416034982.a, A065475, A065475.P2637304413385993180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062785

/-! ## A062785.P13152622571587263421

`(A105221(n+1)+A060278(n+1))*A000203(n+1)`
-/

namespace A062785.P13152622571587263421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A105221 (n + 1) + A060278 (n + 1)) * A000203 (n + 1)

end

end A062785.P13152622571587263421

namespace A062785

/-- `(A105221(n+1)+A060278(n+1))*A000203(n+1)` -/
def P13152622571587263421.Spec : Prop :=
  ∀ n, P13152622571587263421.a n = A062785 (n + 1)

end A062785

/-! ## A062785.P14479748226843357681

`(A114637(n+1)+A048050(n+1))*A048050(n+1)`
-/

namespace A062785.P14479748226843357681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A114637 (n + 1) + A048050 (n + 1)) * A048050 (n + 1)

end

end A062785.P14479748226843357681

namespace A062785

/-- `(A114637(n+1)+A048050(n+1))*A048050(n+1)` -/
def P14479748226843357681.Spec : Prop :=
  ∀ n, P14479748226843357681.a n = A062785 (n + 1)

end A062785

/-! ## A062785.P18275379323184865032

`(A000203(n+1)-A065475(n+1))*A000203(n+1)`
-/

namespace A062785.P18275379323184865032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A065475 (n + 1)) * A000203 (n + 1)

end

end A062785.P18275379323184865032

namespace A062785

/-- `(A000203(n+1)-A065475(n+1))*A000203(n+1)` -/
def P18275379323184865032.Spec : Prop :=
  ∀ n, P18275379323184865032.a n = A062785 (n + 1)

theorem P18275379323184865032.correct : P18275379323184865032.Spec := by
  intro n
  simp only [A062785, Nat.add_sub_cancel, A062785.P18275379323184865032.a, A062785.P8716232642993824825.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A048050, A048050.P12972569362416034982.a, A065475, A065475.P2637304413385993180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062785

/-! ## A062785.P360403958753628819

`(A308473(n+1)-A066760(n+1))*A000203(n+1)`
-/

namespace A062785.P360403958753628819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A308473 (n + 1) - A066760 (n + 1)) * A000203 (n + 1)

end

end A062785.P360403958753628819

namespace A062785

/-- `(A308473(n+1)-A066760(n+1))*A000203(n+1)` -/
def P360403958753628819.Spec : Prop :=
  ∀ n, P360403958753628819.a n = A062785 (n + 1)

end A062785

/-!
# A062786: Centered 10-gonal numbers.

The programs for A062786, the canonical program `A062786.P7119948337593956357` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062786 has offset 1).

The definition of A062786 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062786.P7119948337593956357

`1+5*(n+1)*n`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062786

/-- `1+5*(n+1)*n` -/
def P7119948337593956357.Spec : Prop :=
  ∀ n, (P7119948337593956357.a n : ℤ) = A062786 (n + 1)

theorem P7119948337593956357.correct : P7119948337593956357.Spec := by
  intro n
  simp only [A062786, Nat.add_sub_cancel]

end A062786

/-! ## A062786.P5031243809839366773

`A028387(A016861(n))/5`
-/

namespace A062786.P5031243809839366773
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028387 (A016861 n).toNat : ℚ) / 5

end

end A062786.P5031243809839366773

namespace A062786

/-- `A028387(A016861(n))/5` -/
def P5031243809839366773.Spec : Prop :=
  ∀ n, P5031243809839366773.a n = (A062786 (n + 1) : ℚ)

end A062786

/-! ## A062786.P12621686830563419505

`or(1, ∑[10*n])`
-/

namespace A062786.P12621686830563419505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062786.P12621686830563419505

namespace A062786

/-- `or(1, ∑[10*n])` -/
def P12621686830563419505.Spec : Prop :=
  ∀ n, (P12621686830563419505.a n : ℤ) = A062786 (n + 1)

end A062786

/-! ## A062786.P14487139677589619149

`xor(1, ∑[10*n])`
-/

namespace A062786.P14487139677589619149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062786.P14487139677589619149

namespace A062786

/-- `xor(1, ∑[10*n])` -/
def P14487139677589619149.Spec : Prop :=
  ∀ n, (P14487139677589619149.a n : ℤ) = A062786 (n + 1)

end A062786

/-! ## A062786.P8647855487799804814

`∑[a(n-1)+10]` with `a(0)=1, a(1)=10`
-/

namespace A062786.P8647855487799804814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062786.P8647855487799804814

namespace A062786

/-- `∑[a(n-1)+10]` -/
def P8647855487799804814.Spec : Prop :=
  ∀ n, (P8647855487799804814.a n : ℤ) = A062786 (n + 1)

end A062786

/-! ## A062786.P8231013798510284788

`∑[ogf((1+8x+x^2)/(1-2x+x^2))]`
-/

namespace A062786.P8231013798510284788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 1] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062786.P8231013798510284788

namespace A062786

/-- `∑[ogf((1+8x+x^2)/(1-2x+x^2))]` -/
def P8231013798510284788.Spec : Prop :=
  ∀ n, P8231013798510284788.a n = A062786 (n + 1)

end A062786

/-! ## A062786.P7724637180271774474

`ogf((1+8x+x^2)/(1-3x+3x^2-x^3))`
-/

namespace A062786.P7724637180271774474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 8, 1] [1, -3, 3, -1] n

end

end A062786.P7724637180271774474

namespace A062786

/-- `ogf((1+8x+x^2)/(1-3x+3x^2-x^3))` -/
def P7724637180271774474.Spec : Prop :=
  ∀ n, P7724637180271774474.a n = A062786 (n + 1)

end A062786

/-! ## A062786.P5610189384355311815

`A273366(n)/2`
-/

namespace A062786.P5610189384355311815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273366 n : ℚ) / 2

end

end A062786.P5610189384355311815

namespace A062786

/-- `A273366(n)/2` -/
def P5610189384355311815.Spec : Prop :=
  ∀ n, P5610189384355311815.a n = (A062786 (n + 1) : ℚ)

theorem P5610189384355311815.correct : P5610189384355311815.Spec := by
  intro n
  simp only [A062786, Nat.add_sub_cancel, A062786.P5610189384355311815.a, A062786.P7119948337593956357.a, A273366, A273366.P15027353470211613559.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062786

/-! ## A062786.P2806778748137841503

`A016756(n)%A001539(n)`
-/

namespace A062786.P2806778748137841503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016756 n) (A001539 n)

end

end A062786.P2806778748137841503

namespace A062786

/-- `A016756(n)%A001539(n)` -/
def P2806778748137841503.Spec : Prop :=
  ∀ n, P2806778748137841503.a n = A062786 (n + 1)

end A062786

/-! ## A062786.P5366481324388088721

`A016826(n)%A006222(n)`
-/

namespace A062786.P5366481324388088721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016826 n) (A006222 n)

end

end A062786.P5366481324388088721

namespace A062786

/-- `A016826(n)%A006222(n)` -/
def P5366481324388088721.Spec : Prop :=
  ∀ n, P5366481324388088721.a n = A062786 (n + 1)

end A062786

/-! ## A062786.P13013179934264249777

`A016863(n)%A007533(n)`
-/

namespace A062786.P13013179934264249777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016863 n) (A007533 n)

end

end A062786.P13013179934264249777

namespace A062786

/-- `A016863(n)%A007533(n)` -/
def P13013179934264249777.Spec : Prop :=
  ∀ n, P13013179934264249777.a n = A062786 (n + 1)

end A062786

/-! ## A062786.P13984133288050084613

`A005904(n)%A273366(n)`
-/

namespace A062786.P13984133288050084613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005904 n) (A273366 n)

end

end A062786.P13984133288050084613

namespace A062786

/-- `A005904(n)%A273366(n)` -/
def P13984133288050084613.Spec : Prop :=
  ∀ n, P13984133288050084613.a n = A062786 (n + 1)

end A062786

/-! ## A062786.P10361845515753254851

`A134163(n)%A177072(n)`
-/

namespace A062786.P10361845515753254851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134163 n) (A177072 n)

end

end A062786.P10361845515753254851

namespace A062786

/-- `A134163(n)%A177072(n)` -/
def P10361845515753254851.Spec : Prop :=
  ∀ n, P10361845515753254851.a n = A062786 (n + 1)

end A062786

/-! ## A062786.P3348435850088615807

`gcd(A005904(n), A109119(n))`
-/

namespace A062786.P3348435850088615807
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005904 n) (A109119 n)

end

end A062786.P3348435850088615807

namespace A062786

/-- `gcd(A005904(n), A109119(n))` -/
def P3348435850088615807.Spec : Prop :=
  ∀ n, (P3348435850088615807.a n : ℤ) = A062786 (n + 1)

end A062786

/-! ## A062786.P12724841800153109804

`A338795(n+1)%A001504(n)`
-/

namespace A062786.P12724841800153109804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338795 (n + 1)) (A001504 n)

end

end A062786.P12724841800153109804

namespace A062786

/-- `A338795(n+1)%A001504(n)` -/
def P12724841800153109804.Spec : Prop :=
  ∀ n, P12724841800153109804.a n = A062786 (n + 1)

end A062786

/-! ## A062786.P14380458595550883421

`A183066(n)%A229013(n+1)`
-/

namespace A062786.P14380458595550883421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A183066 n) (A229013 (n + 1))

end

end A062786.P14380458595550883421

namespace A062786

/-- `A183066(n)%A229013(n+1)` -/
def P14380458595550883421.Spec : Prop :=
  ∀ n, P14380458595550883421.a n = A062786 (n + 1)

end A062786

/-! ## A062786.P3514009125420042413

`A167573(n+1)%A093500(n+1)`
-/

namespace A062786.P3514009125420042413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A167573 (n + 1)) (A093500 (n + 1))

end

end A062786.P3514009125420042413

namespace A062786

/-- `A167573(n+1)%A093500(n+1)` -/
def P3514009125420042413.Spec : Prop :=
  ∀ n, P3514009125420042413.a n = A062786 (n + 1)

end A062786

/-! ## A062786.P10297328773525860831

`A157916(n+1)%A154517(n+1)`
-/

namespace A062786.P10297328773525860831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157916 (n + 1)) (A154517 (n + 1))

end

end A062786.P10297328773525860831

namespace A062786

/-- `A157916(n+1)%A154517(n+1)` -/
def P10297328773525860831.Spec : Prop :=
  ∀ n, P10297328773525860831.a n = A062786 (n + 1)

end A062786

/-! ## A062786.P11846408671380263689

`Δ[A004466(n)]`
-/

namespace A062786.P11846408671380263689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004466 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A062786.P11846408671380263689

namespace A062786

/-- `Δ[A004466(n)]` -/
def P11846408671380263689.Spec : Prop :=
  ∀ n, P11846408671380263689.a n = A062786 (n + 1)

end A062786

/-! ## A062786.P14422128345666811650

`∑[A008706(2*n)]`
-/

namespace A062786.P14422128345666811650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062786.P14422128345666811650

namespace A062786

/-- `∑[A008706(2*n)]` -/
def P14422128345666811650.Spec : Prop :=
  ∀ n, P14422128345666811650.a n = A062786 (n + 1)

end A062786

/-!
# A062787: a(n) = floor(exp(gamma) n log log n ) - phi(n), where gamma is Euler's constant (A001620).

The programs for A062787, the canonical program `A062787.P5490258356335580690` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062787 has offset 2).

The definition of A062787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062787.P13048437429962799897

`A058210(n+2)-A000010(n+2)`
-/

namespace A062787.P13048437429962799897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058210 (n + 2) - A000010 (n + 2)

end

end A062787.P13048437429962799897

namespace A062787

/-- `A058210(n+2)-A000010(n+2)` -/
def P13048437429962799897.Spec : Prop :=
  ∀ n, P13048437429962799897.a n = A062787 (n + 2)

end A062787

/-! ## A062787.P5490258356335580690

`A058210(n+2)-Δ[A005728(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A062787

/-- `A058210(n+2)-Δ[A005728(n+1)]` -/
def P5490258356335580690.Spec : Prop :=
  ∀ n, P5490258356335580690.a n = A062787 (n + 2)

theorem P5490258356335580690.correct : P5490258356335580690.Spec := by
  intro n
  simp only [A062787, Nat.add_sub_cancel]

end A062787

/-! ## A062787.P2922068190184462755

`A000203(n+2)+A058209(n+2)-A000010(n+2)`
-/

namespace A062787.P2922068190184462755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) + (A058209 (n + 2) - A000010 (n + 2))

end

end A062787.P2922068190184462755

namespace A062787

/-- `A000203(n+2)+A058209(n+2)-A000010(n+2)` -/
def P2922068190184462755.Spec : Prop :=
  ∀ n, P2922068190184462755.a n = A062787 (n + 2)

end A062787

/-! ## A062787.P13324352204778613236

`A058209(n+2)+A051612(n+2)`
-/

namespace A062787.P13324352204778613236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058209 (n + 2) + A051612 (n + 2)

end

end A062787.P13324352204778613236

namespace A062787

/-- `A058209(n+2)+A051612(n+2)` -/
def P13324352204778613236.Spec : Prop :=
  ∀ n, P13324352204778613236.a n = A062787 (n + 2)

end A062787

/-! ## A062787.P4145166057550926363

`A058210(n+2)-Δ[A015614(n+1)]`
-/

namespace A062787.P4145166057550926363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058210 (n + 2) - (f1 (n + 1) - f1 n)

end

end A062787.P4145166057550926363

namespace A062787

/-- `A058210(n+2)-Δ[A015614(n+1)]` -/
def P4145166057550926363.Spec : Prop :=
  ∀ n, P4145166057550926363.a n = A062787 (n + 2)

theorem P4145166057550926363.correct : P4145166057550926363.Spec := by
  intro n
  simp only [A062787, Nat.add_sub_cancel, A062787.P4145166057550926363.f1, A062787.P4145166057550926363.a, A062787.P5490258356335580690.f1, A062787.P5490258356335580690.a, A005728, A005728.P12032251568510858139.a, A015614, A015614.P13535555482679389419.a, A058210, A058210.P13532441663654932347.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P8962335469571691680.f2, A002088.P8962335469571691680.f1, A002088.P8962335469571691680.a, A185670, A185670.P7671735460308608982.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A063985, A063985.P3942861327483730228.a, A100613, A100613.P7468063633472476903.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062787

/-!
# A062788: Squares of the form 5n*(n-1)+1.

The programs for A062788, the canonical program `A062788.P2540204846468012777` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062788 has offset 1).

The definition of A062788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062788.P2540204846468012777

`A049683(2*(n+1)-1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062788

/-- `A049683(2*(n+1)-1)` -/
def P2540204846468012777.Spec : Prop :=
  ∀ n, P2540204846468012777.a n = A062788 (n + 1)

theorem P2540204846468012777.correct : P2540204846468012777.Spec := by
  intro n
  simp only [A062788, Nat.add_sub_cancel]

end A062788

/-! ## A062788.P2473071659780995544

`ceil(∑[ϕ^(6*n)])²`
-/

namespace A062788.P2473071659780995544
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (6 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ ^ 2

end

end A062788.P2473071659780995544

namespace A062788

/-- `ceil(∑[ϕ^(6*n)])²` -/
def P2473071659780995544.Spec : Prop :=
  ∀ n, P2473071659780995544.a n = A062788 (n + 1)

end A062788

/-! ## A062788.P13536776911859309558

`∑[A004292(2*n)]`
-/

namespace A062788.P13536776911859309558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004292 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062788.P13536776911859309558

namespace A062788

/-- `∑[A004292(2*n)]` -/
def P13536776911859309558.Spec : Prop :=
  ∀ n, P13536776911859309558.a n = A062788 (n + 1)

end A062788

/-! ## A062788.P3746019077654929667

`Δ[A049683(n)]^2`
-/

namespace A062788.P3746019077654929667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049683 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A062788.P3746019077654929667

namespace A062788

/-- `Δ[A049683(n)]^2` -/
def P3746019077654929667.Spec : Prop :=
  ∀ n, P3746019077654929667.a n = A062788 (n + 1)

end A062788

/-! ## A062788.P6380554060242571891

`2*A107075(n+1)-1`
-/

namespace A062788.P6380554060242571891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107075 (n + 1) - 1

end

end A062788.P6380554060242571891

namespace A062788

/-- `2*A107075(n+1)-1` -/
def P6380554060242571891.Spec : Prop :=
  ∀ n, P6380554060242571891.a n = A062788 (n + 1)

end A062788

/-!
# A062789: a(n) = gcd(n, phi(n) * (phi(n) + 1)).

The programs for A062789, the canonical program `A062789.P13648497980355874832` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062789 has offset 1).

The definition of A062789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062789.P2364646341474146415

`gcd(n+1, A002378(A000010(n+1)))`
-/

namespace A062789.P2364646341474146415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002378 (A000010 (n + 1)).toNat)

end

end A062789.P2364646341474146415

namespace A062789

/-- `gcd(n+1, A002378(A000010(n+1)))` -/
def P2364646341474146415.Spec : Prop :=
  ∀ n, (P2364646341474146415.a n : ℤ) = A062789 (n + 1)

end A062789

/-! ## A062789.P13648497980355874832

`gcd(A000027(n+1), A002378(A016035(n+1)))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062789

/-- `gcd(A000027(n+1), A002378(A016035(n+1)))` -/
def P13648497980355874832.Spec : Prop :=
  ∀ n, (P13648497980355874832.a n : ℤ) = A062789 (n + 1)

theorem P13648497980355874832.correct : P13648497980355874832.Spec := by
  intro n
  simp only [A062789, Nat.add_sub_cancel]

end A062789

/-! ## A062789.P8861438082640566309

`gcd(A051953(n+1)-A127473(n+1), A009262(n+1))`
-/

namespace A062789.P8861438082640566309
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A051953 (n + 1) - A127473 (n + 1)) (A009262 (n + 1))

end

end A062789.P8861438082640566309

namespace A062789

/-- `gcd(A051953(n+1)-A127473(n+1), A009262(n+1))` -/
def P8861438082640566309.Spec : Prop :=
  ∀ n, (P8861438082640566309.a n : ℤ) = A062789 (n + 1)

end A062789

/-! ## A062789.P7030902938721275573

`gcd(A039649(n+1), A109395(n+1))*A009195(n+1)`
-/

namespace A062789.P7030902938721275573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A039649 (n + 1)) (A109395 (n + 1)) : ℤ) * A009195 (n + 1)

end

end A062789.P7030902938721275573

namespace A062789

/-- `gcd(A039649(n+1), A109395(n+1))*A009195(n+1)` -/
def P7030902938721275573.Spec : Prop :=
  ∀ n, P7030902938721275573.a n = A062789 (n + 1)

end A062789

/-! ## A062789.P3854221100938140864

`gcd(n+1, A002378(Δ[A049643(n)]))`
-/

namespace A062789.P3854221100938140864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A002378 (f1 (n + 1) - f1 n).toNat)

end

end A062789.P3854221100938140864

namespace A062789

/-- `gcd(n+1, A002378(Δ[A049643(n)]))` -/
def P3854221100938140864.Spec : Prop :=
  ∀ n, (P3854221100938140864.a n : ℤ) = A062789 (n + 1)

end A062789

/-!
# A062790: Moebius transform of the cototient function A051953.

The programs for A062790, the canonical program `A062790.P5415624989759604668` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062790 has offset 1).

The definition of A062790 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A007431, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A062790.P5415624989759604668

`A000010(n+1)-A007431(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A062790

/-- `A000010(n+1)-A007431(n+1)` -/
def P5415624989759604668.Spec : Prop :=
  ∀ n, P5415624989759604668.a n = A062790 (n + 1)

theorem P5415624989759604668.correct : P5415624989759604668.Spec := by
  intro n
  simp only [A062790, Nat.add_sub_cancel]

end A062790

/-! ## A062790.P3773667016298011827

`A056239(A318836(n+1))`
-/

namespace A062790.P3773667016298011827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A318836 (n + 1)).toNat

end

end A062790.P3773667016298011827

namespace A062790

/-- `A056239(A318836(n+1))` -/
def P3773667016298011827.Spec : Prop :=
  ∀ n, P3773667016298011827.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P4091529638547073412

`Δ[A005728(n)]-A007431(n+1)`
-/

namespace A062790.P4091529638547073412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007431 (n + 1)

end

end A062790.P4091529638547073412

namespace A062790

/-- `Δ[A005728(n)]-A007431(n+1)` -/
def P4091529638547073412.Spec : Prop :=
  ∀ n, P4091529638547073412.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P14201526699586204350

`∑{d}[n+1, A001065(#)*A007427((n+1)/#)]`
-/

namespace A062790.P14201526699586204350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d * A007427 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P14201526699586204350

namespace A062790

/-- `∑{d}[n+1, A001065(#)*A007427((n+1)/#)]` -/
def P14201526699586204350.Spec : Prop :=
  ∀ n, P14201526699586204350.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P9048679441324492817

`∑{d}[n+1, A007432(#)*A032741((n+1)/#)]`
-/

namespace A062790.P9048679441324492817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007432 d * A032741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P9048679441324492817

namespace A062790

/-- `∑{d}[n+1, A007432(#)*A032741((n+1)/#)]` -/
def P9048679441324492817.Spec : Prop :=
  ∀ n, P9048679441324492817.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P14895295435827219283

`∑{d}[n+1, A008683(#)*A051953((n+1)/#)]`
-/

namespace A062790.P14895295435827219283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A051953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P14895295435827219283

namespace A062790

/-- `∑{d}[n+1, A008683(#)*A051953((n+1)/#)]` -/
def P14895295435827219283.Spec : Prop :=
  ∀ n, P14895295435827219283.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P9587633517271786284

`∑{d}[n+1, A055615(#)*A063754((n+1)/#)]`
-/

namespace A062790.P9587633517271786284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A063754 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P9587633517271786284

namespace A062790

/-- `∑{d}[n+1, A055615(#)*A063754((n+1)/#)]` -/
def P9587633517271786284.Spec : Prop :=
  ∀ n, P9587633517271786284.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P13385980094617140698

`∑{d}[n+1, A000010(#)*A157658((n+1)/#)]`
-/

namespace A062790.P13385980094617140698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P13385980094617140698

namespace A062790

/-- `∑{d}[n+1, A000010(#)*A157658((n+1)/#)]` -/
def P13385980094617140698.Spec : Prop :=
  ∀ n, P13385980094617140698.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P4526166488931324043

`∑{d}[n+1, A007428(#)*A211779((n+1)/#)]`
-/

namespace A062790.P4526166488931324043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007428 d * A211779 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P4526166488931324043

namespace A062790

/-- `∑{d}[n+1, A007428(#)*A211779((n+1)/#)]` -/
def P4526166488931324043.Spec : Prop :=
  ∀ n, P4526166488931324043.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P14674654947033058279

`∑{d}[n+1, A083254(#)*A174726((n+1)/#)]`
-/

namespace A062790.P14674654947033058279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A083254 d * A174726 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P14674654947033058279

namespace A062790

/-- `∑{d}[n+1, A083254(#)*A174726((n+1)/#)]` -/
def P14674654947033058279.Spec : Prop :=
  ∀ n, P14674654947033058279.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P12656036165071430387

`∑{d}[n+1, A003966(#)*A300719((n+1)/#)]`
-/

namespace A062790.P12656036165071430387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A003966 d * A300719 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P12656036165071430387

namespace A062790

/-- `∑{d}[n+1, A003966(#)*A300719((n+1)/#)]` -/
def P12656036165071430387.Spec : Prop :=
  ∀ n, P12656036165071430387.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P10092532629973460687

`∑{d}[n+1, A064279(#)*A328502((n+1)/#)]`
-/

namespace A062790.P10092532629973460687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A064279 d * A328502 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P10092532629973460687

namespace A062790

/-- `∑{d}[n+1, A064279(#)*A328502((n+1)/#)]` -/
def P10092532629973460687.Spec : Prop :=
  ∀ n, P10092532629973460687.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P12309688982296784685

`∑{d}[n+1, A091570(#)*A327274((n+1)/#)]`
-/

namespace A062790.P12309688982296784685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091570 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P12309688982296784685

namespace A062790

/-- `∑{d}[n+1, A091570(#)*A327274((n+1)/#)]` -/
def P12309688982296784685.Spec : Prop :=
  ∀ n, P12309688982296784685.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P3641414023358934105

`∑{d}[n+1, A174725(#)*A297159((n+1)/#)]`
-/

namespace A062790.P3641414023358934105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A174725 d * A297159 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P3641414023358934105

namespace A062790

/-- `∑{d}[n+1, A174725(#)*A297159((n+1)/#)]` -/
def P3641414023358934105.Spec : Prop :=
  ∀ n, P3641414023358934105.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P17722228125749637531

`∑{d}[n+1, A130107(#)*A344617((n+1)/#)]`
-/

namespace A062790.P17722228125749637531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A130107 d * A344617 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P17722228125749637531

namespace A062790

/-- `∑{d}[n+1, A130107(#)*A344617((n+1)/#)]` -/
def P17722228125749637531.Spec : Prop :=
  ∀ n, P17722228125749637531.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P8377781278483653028

`∑{d}[n+1, A255242(#)*A378219((n+1)/#)]`
-/

namespace A062790.P8377781278483653028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A255242 d * A378219 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P8377781278483653028

namespace A062790

/-- `∑{d}[n+1, A255242(#)*A378219((n+1)/#)]` -/
def P8377781278483653028.Spec : Prop :=
  ∀ n, P8377781278483653028.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P11912072485288919875

`∑{d}[n+1, A318325(#)*A378453((n+1)/#)]`
-/

namespace A062790.P11912072485288919875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A318325 d * A378453 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062790.P11912072485288919875

namespace A062790

/-- `∑{d}[n+1, A318325(#)*A378453((n+1)/#)]` -/
def P11912072485288919875.Spec : Prop :=
  ∀ n, P11912072485288919875.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P11921436563198191613

`Δ[A005728(n)-A007431(n)]-A007431(n)`
-/

namespace A062790.P11921436563198191613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - A007431 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A007431 n

end

end A062790.P11921436563198191613

namespace A062790

/-- `Δ[A005728(n)-A007431(n)]-A007431(n)` -/
def P11921436563198191613.Spec : Prop :=
  ∀ n, P11921436563198191613.a n = A062790 (n + 1)

end A062790

/-! ## A062790.P17428800103228154871

`A062401(n+1)-(A353636(n+1)+A007431(n+1))`
-/

namespace A062790.P17428800103228154871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062401 (n + 1) - (A353636 (n + 1) + A007431 (n + 1))

end

end A062790.P17428800103228154871

namespace A062790

/-- `A062401(n+1)-(A353636(n+1)+A007431(n+1))` -/
def P17428800103228154871.Spec : Prop :=
  ∀ n, P17428800103228154871.a n = A062790 (n + 1)

theorem P17428800103228154871.correct : P17428800103228154871.Spec := by
  intro n
  simp only [A062790, Nat.add_sub_cancel, A062790.P17428800103228154871.a, A062790.P5415624989759604668.a, A000010, A000010.P4673923239450215316.a, A007431, A007431.P16849793818733668455.f1, A007431.P16849793818733668455.a, A062401, A062401.P14719521271091436929.f1, A062401.P14719521271091436929.a, A353636, A353636.P9241397115263292708.a, A003557, A003557.P6364735403900941810.a, A007432, A007432.P16663120023730915232.f1, A007432.P16663120023730915232.a, A173557, A173557.P15666735857375843373.a, A001221, A001221.P10258181745752134128.a, A007428, A007428.P12532017655611739201.f1, A007428.P12532017655611739201.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A005089, A005089.P4329807401814625450.f1, A005089.P4329807401814625450.a, A005091, A005091.P2802037195389751204.f1, A005091.P2802037195389751204.a, A059841, A059841.P2666504972441551157.a, A247343, A247343.P16054937885260863727.f1, A247343.P16054937885260863727.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062790

/-! ## A062790.P1430470616228786912

`A063994(n+1)*A247074(n+1)-A007431(n+1)`
-/

namespace A062790.P1430470616228786912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063994 (n + 1) * A247074 (n + 1) - A007431 (n + 1)

end

end A062790.P1430470616228786912

namespace A062790

/-- `A063994(n+1)*A247074(n+1)-A007431(n+1)` -/
def P1430470616228786912.Spec : Prop :=
  ∀ n, P1430470616228786912.a n = A062790 (n + 1)

end A062790

/-!
# A062791: Moebius transform of A001405 (binomial(n, floor(n/2))).

The programs for A062791, the canonical program `A062791.P796838549966541692` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062791 has offset 1).

The definition of A062791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062791.P796838549966541692

`∑{d}[n+1, A007427(#)*A062798((n+1)/#)]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A062791

/-- `∑{d}[n+1, A007427(#)*A062798((n+1)/#)]` -/
def P796838549966541692.Spec : Prop :=
  ∀ n, P796838549966541692.a n = A062791 (n + 1)

theorem P796838549966541692.correct : P796838549966541692.Spec := by
  intro n
  simp only [A062791, Nat.add_sub_cancel]

end A062791

/-! ## A062791.P347700977030625506

`A001405(A069747(n+1))-A277127(n+1)`
-/

namespace A062791.P347700977030625506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A069747 (n + 1)).toNat - A277127 (n + 1)

end

end A062791.P347700977030625506

namespace A062791

/-- `A001405(A069747(n+1))-A277127(n+1)` -/
def P347700977030625506.Spec : Prop :=
  ∀ n, P347700977030625506.a n = A062791 (n + 1)

end A062791

/-! ## A062791.P107951435905236931

`A374685(A274174(n))+A000700(2*n+1)`
-/

namespace A062791.P107951435905236931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374685 (A274174 n).toNat + A000700 (2 * n + 1)

end

end A062791.P107951435905236931

namespace A062791

/-- `A374685(A274174(n))+A000700(2*n+1)` -/
def P107951435905236931.Spec : Prop :=
  ∀ n, P107951435905236931.a n = A062791 (n + 1)

end A062791

/-! ## A062791.P7228234693768420503

`A189663(A271769(n+9)+A232697(3*n))`
-/

namespace A062791.P7228234693768420503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189663 (A271769 (n + 9) + A232697 (3 * n)).toNat

end

end A062791.P7228234693768420503

namespace A062791

/-- `A189663(A271769(n+9)+A232697(3*n))` -/
def P7228234693768420503.Spec : Prop :=
  ∀ n, P7228234693768420503.a n = A062791 (n + 1)

end A062791

/-!
# A062792: Moebius transform of primorial numbers.

The programs for A062792, there is no canonical definition to state claims against.
-/

/-! ## A062792.P9974384335908881001

`A234306(A057588(n+1))+2`
-/

namespace A062792.P9974384335908881001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234306 (A057588 (n + 1)).toNat + 2

end

end A062792.P9974384335908881001

/-!
# A062793: Moebius transform of n^n.

The programs for A062793, there is no canonical definition to state claims against.
-/

/-! ## A062793.P8402490789809916281

`ratio[A092416(n)]`
-/

namespace A062793.P8402490789809916281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092416 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A062793.P8402490789809916281

/-! ## A062793.P16944680462315051266

`A092416(n+1)/A092416(n)`
-/

namespace A062793.P16944680462315051266
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092416 (n + 1) : ℚ) / (A092416 n : ℚ)

end

end A062793.P16944680462315051266

/-!
# A062794: Moebius transform of n!.

The programs for A062794, there is no canonical definition to state claims against.
-/

/-! ## A062794.P2863345588755070020

`∑{d}[n+1, A321521(#)*A327274((n+1)/#)]`
-/

namespace A062794.P2863345588755070020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A321521 d * A327274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062794.P2863345588755070020

/-! ## A062794.P5333135936855143211

`(n+1)!-A001222(A008286(n))`
-/

namespace A062794.P5333135936855143211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - A001222 (A008286 n).toNat

end

end A062794.P5333135936855143211

/-! ## A062794.P10424889905879445824

`A000142(n+1)-A001222(A008286(n))`
-/

namespace A062794.P10424889905879445824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - A001222 (A008286 n).toNat

end

end A062794.P10424889905879445824

/-!
# A062796: Inverse Moebius transform of f(n) = n^n (A000312).

The programs for A062796, the canonical program `A062796.P113913747754977025` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062796 has offset 1).

The definition of A062796 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062796.P113913747754977025

`∑{d}[n+1, #^#]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062796

/-- `∑{d}[n+1, #^#]` -/
def P113913747754977025.Spec : Prop :=
  ∀ n, (P113913747754977025.a n : ℤ) = A062796 (n + 1)

theorem P113913747754977025.correct : P113913747754977025.Spec := by
  intro n
  simp only [A062796, Nat.add_sub_cancel]

end A062796

/-! ## A062796.P15575087939457952348

`record[∑{d}[1-n, #^#]]`
-/

namespace A062796.P15575087939457952348
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, d ^ d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062796.P15575087939457952348

namespace A062796

/-- `record[∑{d}[1-n, #^#]]` -/
def P15575087939457952348.Spec : Prop :=
  ∀ n, (P15575087939457952348.a n : ℤ) = A062796 (n + 1)

end A062796

/-! ## A062796.P8101131728431401580

`∑[abs(Δ[∑{d}[n, #^#]])]`
-/

namespace A062796.P8101131728431401580
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d ^ d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A062796.P8101131728431401580

namespace A062796

/-- `∑[abs(Δ[∑{d}[n, #^#]])]` -/
def P8101131728431401580.Spec : Prop :=
  ∀ n, P8101131728431401580.a n = A062796 (n + 1)

end A062796

/-! ## A062796.P2926226877339201091

`-∑[-Δ[∑{d}[n, #^#]]]`
-/

namespace A062796.P2926226877339201091
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d ^ d

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062796.P2926226877339201091

namespace A062796

/-- `-∑[-Δ[∑{d}[n, #^#]]]` -/
def P2926226877339201091.Spec : Prop :=
  ∀ n, P2926226877339201091.a n = A062796 (n + 1)

end A062796

/-! ## A062796.P13267202095617470678

`A308698(∑[n+2])`
-/

namespace A062796.P13267202095617470678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308698 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A062796.P13267202095617470678

namespace A062796

/-- `A308698(∑[n+2])` -/
def P13267202095617470678.Spec : Prop :=
  ∀ n, P13267202095617470678.a n = A062796 (n + 1)

end A062796

/-!
# A062797: Inverse Moebius transform of f(x) = primorial(x) = A002110(x).

The programs for A062797, there is no canonical definition to state claims against.
-/

/-! ## A062797.P13862718360112121452

`∑{d}[n+1, A002110(#)]`
-/

namespace A062797.P13862718360112121452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002110 d

end

end A062797.P13862718360112121452

/-! ## A062797.P14499631776494919432

`∑{d}[n+1, A057588(#)+1]`
-/

namespace A062797.P14499631776494919432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A057588 d + 1)

end

end A062797.P14499631776494919432

/-! ## A062797.P11416342213874781336

`record[∑{d}[A154958(n), A002110(#)]]`
-/

namespace A062797.P11416342213874781336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154958 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A002110 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062797.P11416342213874781336

/-! ## A062797.P14361624887586245035

`record[∑{d}[A286626(n), A002110(#)]]`
-/

namespace A062797.P14361624887586245035
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286626 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A002110 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062797.P14361624887586245035

/-! ## A062797.P11861776533828606947

`record[∑{d}[A328399(n), A002110(#)]]`
-/

namespace A062797.P11861776533828606947
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328399 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A002110 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062797.P11861776533828606947

/-! ## A062797.P5754405458027586983

`∑{d}[n+1, A108951(A000040(#))]`
-/

namespace A062797.P5754405458027586983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A108951 (A000040 d).toNat

end

end A062797.P5754405458027586983

/-!
# A062798: Inverse Moebius transform of A001405 (binomial(n, floor(n/2))).

The programs for A062798, the canonical program `A062798.P11132465264146368345` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062798 has offset 1).

The definition of A062798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A062798.P11132465264146368345

`∑{d}[n+1, C(#, floor(#/2))]`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A062798

/-- `∑{d}[n+1, C(#, floor(#/2))]` -/
def P11132465264146368345.Spec : Prop :=
  ∀ n, (P11132465264146368345.a n : ℤ) = A062798 (n + 1)

theorem P11132465264146368345.correct : P11132465264146368345.Spec := by
  intro n
  simp only [A062798, Nat.add_sub_cancel]

end A062798

/-! ## A062798.P12478543067801712221

`∑{d}[n+1, A001405(#)]`
-/

namespace A062798.P12478543067801712221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001405 d

end

end A062798.P12478543067801712221

namespace A062798

/-- `∑{d}[n+1, A001405(#)]` -/
def P12478543067801712221.Spec : Prop :=
  ∀ n, P12478543067801712221.a n = A062798 (n + 1)

theorem P12478543067801712221.correct : P12478543067801712221.Spec := by
  intro n
  simp only [A062798, Nat.add_sub_cancel, A062798.P12478543067801712221.f1, A062798.P12478543067801712221.a, A062798.P11132465264146368345.f1, A062798.P11132465264146368345.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062798

/-! ## A062798.P11588534344189874742

`∑{d}[n+1, abs(A126930(#))]`
-/

namespace A062798.P11588534344189874742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), |A126930 d|

end

end A062798.P11588534344189874742

namespace A062798

/-- `∑{d}[n+1, abs(A126930(#))]` -/
def P11588534344189874742.Spec : Prop :=
  ∀ n, P11588534344189874742.a n = A062798 (n + 1)

end A062798

/-! ## A062798.P1597143813616982111

`∑{d}[n+1, A014495(#)+1]`
-/

namespace A062798.P1597143813616982111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A014495 d + 1)

end

end A062798.P1597143813616982111

namespace A062798

/-- `∑{d}[n+1, A014495(#)+1]` -/
def P1597143813616982111.Spec : Prop :=
  ∀ n, P1597143813616982111.a n = A062798 (n + 1)

theorem P1597143813616982111.correct : P1597143813616982111.Spec := by
  intro n
  simp only [A062798, Nat.add_sub_cancel, A062798.P1597143813616982111.f1, A062798.P1597143813616982111.a, A062798.P11132465264146368345.f1, A062798.P11132465264146368345.a, A014495, A014495.P8648755420632744383.a, A001405, A001405.P5205018418992951678.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A062798

/-! ## A062798.P6136194007804717958

`∑{d}[n+1, A000005(#)*A062791((n+1)/#)]`
-/

namespace A062798.P6136194007804717958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A062791 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062798.P6136194007804717958

namespace A062798

/-- `∑{d}[n+1, A000005(#)*A062791((n+1)/#)]` -/
def P6136194007804717958.Spec : Prop :=
  ∀ n, P6136194007804717958.a n = A062798 (n + 1)

end A062798

/-! ## A062798.P14790362993695428971

`record[∑{d}[n-1, C(#, ceil(#/2))]]`
-/

namespace A062798.P14790362993695428971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, Nat.choose d ⌈(d : ℚ) / 2⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A062798.P14790362993695428971

namespace A062798

/-- `record[∑{d}[n-1, C(#, ceil(#/2))]]` -/
def P14790362993695428971.Spec : Prop :=
  ∀ n, (P14790362993695428971.a n : ℤ) = A062798 (n + 1)

end A062798

/-!
# A062799: Inverse Möbius transform of the numbers of distinct prime factors (A001221).

The programs for A062799, the canonical program `A062799.P13116436156649917585` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A062799 has offset 1).

The definition of A062799 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A062799.P9405200325849752260

`∑{d}[n+1, A001221(#)]`
-/

namespace A062799.P9405200325849752260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001221 d

end

end A062799.P9405200325849752260

namespace A062799

/-- `∑{d}[n+1, A001221(#)]` -/
def P9405200325849752260.Spec : Prop :=
  ∀ n, P9405200325849752260.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P18183222504768251527

`∑{p}[n+1, A000005((n+1)/#)]`
-/

namespace A062799.P18183222504768251527
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (p : ℚ))).toNat

end

end A062799.P18183222504768251527

namespace A062799

/-- `∑{p}[n+1, A000005((n+1)/#)]` -/
def P18183222504768251527.Spec : Prop :=
  ∀ n, P18183222504768251527.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P15819707547222273880

`∑{d}[n+1, A001222(A007947(#))]`
-/

namespace A062799.P15819707547222273880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001222 (A007947 d).toNat

end

end A062799.P15819707547222273880

namespace A062799

/-- `∑{d}[n+1, A001222(A007947(#))]` -/
def P15819707547222273880.Spec : Prop :=
  ∀ n, P15819707547222273880.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P3471194754463886419

`A238951(n+1)+A238950(n+1)`
-/

namespace A062799.P3471194754463886419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238951 (n + 1) + A238950 (n + 1)

end

end A062799.P3471194754463886419

namespace A062799

/-- `A238951(n+1)+A238950(n+1)` -/
def P3471194754463886419.Spec : Prop :=
  ∀ n, P3471194754463886419.a n = A062799 (n + 1)

theorem P3471194754463886419.correct : P3471194754463886419.Spec := by
  intro n
  simp only [A062799, Nat.add_sub_cancel, A062799.P3471194754463886419.a, A062799.P13116436156649917585.f1, A062799.P13116436156649917585.a, A001511, A001511.P17146462531039486101.a, A205745, A205745.P10456452147523085489.f1, A205745.P10456452147523085489.a, A238950, A238950.P10491739874639615946.a, A238951, A238951.P14408596811991432527.a, A006519, A006519.P10435570611646570274.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062799

/-! ## A062799.P754560831312122325

`A062774(n+1)-A334800(n+1)`
-/

namespace A062799.P754560831312122325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062774 (n + 1) - A334800 (n + 1)

end

end A062799.P754560831312122325

namespace A062799

/-- `A062774(n+1)-A334800(n+1)` -/
def P754560831312122325.Spec : Prop :=
  ∀ n, P754560831312122325.a n = A062799 (n + 1)

theorem P754560831312122325.correct : P754560831312122325.Spec := by
  intro n
  simp only [A062799, Nat.add_sub_cancel, A062799.P754560831312122325.a, A062799.P13116436156649917585.f1, A062799.P13116436156649917585.a, A001511, A001511.P17146462531039486101.a, A062774, A062774.P18360295498494493866.f1, A062774.P18360295498494493866.a, A205745, A205745.P10456452147523085489.f1, A205745.P10456452147523085489.a, A334800, A334800.P4513335297567322539.a, A006519, A006519.P10435570611646570274.a, A230980, A230980.P7768329975809437652.f2, A230980.P7768329975809437652.f1, A230980.P7768329975809437652.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062799

/-! ## A062799.P8273493172520521898

`A069264(n+1)-A330018(n+1)`
-/

namespace A062799.P8273493172520521898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069264 (n + 1) - A330018 (n + 1)

end

end A062799.P8273493172520521898

namespace A062799

/-- `A069264(n+1)-A330018(n+1)` -/
def P8273493172520521898.Spec : Prop :=
  ∀ n, P8273493172520521898.a n = A062799 (n + 1)

theorem P8273493172520521898.correct : P8273493172520521898.Spec := by
  intro n
  simp only [A062799, Nat.add_sub_cancel, A062799.P8273493172520521898.a, A062799.P13116436156649917585.f1, A062799.P13116436156649917585.a, A001511, A001511.P17146462531039486101.a, A069264, A069264.P9562559770750993337.f1, A069264.P9562559770750993337.f2, A069264.P9562559770750993337.a, A205745, A205745.P10456452147523085489.f1, A205745.P10456452147523085489.a, A330018, A330018.P8032385890936907680.a, A006519, A006519.P10435570611646570274.a, A064680, A064680.P14625774430786589521.a, A171977, A171977.P14092944863121073856.a, A038712, A038712.P3404197303190209645.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A062799

/-! ## A062799.P14564522560736493188

`A319131(n+1)-A351746(n+1)`
-/

namespace A062799.P14564522560736493188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319131 (n + 1) - A351746 (n + 1)

end

end A062799.P14564522560736493188

namespace A062799

/-- `A319131(n+1)-A351746(n+1)` -/
def P14564522560736493188.Spec : Prop :=
  ∀ n, P14564522560736493188.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P9473645464986304809

`A358769(n+1)+2*A238951(n+1)`
-/

namespace A062799.P9473645464986304809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358769 (n + 1) + 2 * A238951 (n + 1)

end

end A062799.P9473645464986304809

namespace A062799

/-- `A358769(n+1)+2*A238951(n+1)` -/
def P9473645464986304809.Spec : Prop :=
  ∀ n, P9473645464986304809.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P13278665363106652963

`2*A238950(n+1)-A358769(n+1)`
-/

namespace A062799.P13278665363106652963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A238950 (n + 1) - A358769 (n + 1)

end

end A062799.P13278665363106652963

namespace A062799

/-- `2*A238950(n+1)-A358769(n+1)` -/
def P13278665363106652963.Spec : Prop :=
  ∀ n, P13278665363106652963.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P16285024520539421261

`∑{d}[n+1, A000005(#)*A010051((n+1)/#)]`
-/

namespace A062799.P16285024520539421261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A010051 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062799.P16285024520539421261

namespace A062799

/-- `∑{d}[n+1, A000005(#)*A010051((n+1)/#)]` -/
def P16285024520539421261.Spec : Prop :=
  ∀ n, P16285024520539421261.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P5219293159739602859

`∑{d}[n+1, A007425(#)*A143519((n+1)/#)]`
-/

namespace A062799.P5219293159739602859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A143519 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062799.P5219293159739602859

namespace A062799

/-- `∑{d}[n+1, A007425(#)*A143519((n+1)/#)]` -/
def P5219293159739602859.Spec : Prop :=
  ∀ n, P5219293159739602859.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P14529222191933643957

`∑{d}[n+1, A069359(#)*A130054((n+1)/#)]`
-/

namespace A062799.P14529222191933643957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069359 d * A130054 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062799.P14529222191933643957

namespace A062799

/-- `∑{d}[n+1, A069359(#)*A130054((n+1)/#)]` -/
def P14529222191933643957.Spec : Prop :=
  ∀ n, P14529222191933643957.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P13116436156649917585

`∑{d}[n+1, A001511(#)*A205745((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A062799

/-- `∑{d}[n+1, A001511(#)*A205745((n+1)/#)]` -/
def P13116436156649917585.Spec : Prop :=
  ∀ n, P13116436156649917585.a n = A062799 (n + 1)

theorem P13116436156649917585.correct : P13116436156649917585.Spec := by
  intro n
  simp only [A062799, Nat.add_sub_cancel]

end A062799

/-! ## A062799.P12455038519939823920

`∑{d}[n+1, A038712(#)*A305614((n+1)/#)]`
-/

namespace A062799.P12455038519939823920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A305614 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062799.P12455038519939823920

namespace A062799

/-- `∑{d}[n+1, A038712(#)*A305614((n+1)/#)]` -/
def P12455038519939823920.Spec : Prop :=
  ∀ n, P12455038519939823920.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P1322919316913740134

`∑{d}[n+1, A023900(#)*A323599((n+1)/#)]`
-/

namespace A062799.P1322919316913740134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A323599 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062799.P1322919316913740134

namespace A062799

/-- `∑{d}[n+1, A023900(#)*A323599((n+1)/#)]` -/
def P1322919316913740134.Spec : Prop :=
  ∀ n, P1322919316913740134.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P2883674411368916022

`∑{d}[n+1, A008966(#)*A345345((n+1)/#)]`
-/

namespace A062799.P2883674411368916022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A345345 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062799.P2883674411368916022

namespace A062799

/-- `∑{d}[n+1, A008966(#)*A345345((n+1)/#)]` -/
def P2883674411368916022.Spec : Prop :=
  ∀ n, P2883674411368916022.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P1235403259336311987

`∑{d}[n+1, A069735(#)*A304438((n+1)/#)]`
-/

namespace A062799.P1235403259336311987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A069735 d * A304438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062799.P1235403259336311987

namespace A062799

/-- `∑{d}[n+1, A069735(#)*A304438((n+1)/#)]` -/
def P1235403259336311987.Spec : Prop :=
  ∀ n, P1235403259336311987.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P6059447671263438150

`∑{d}[n+1, A055615(#)*A323600((n+1)/#)]`
-/

namespace A062799.P6059447671263438150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A323600 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062799.P6059447671263438150

namespace A062799

/-- `∑{d}[n+1, A055615(#)*A323600((n+1)/#)]` -/
def P6059447671263438150.Spec : Prop :=
  ∀ n, P6059447671263438150.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P16925516818971753316

`∑{d}[n+1, A034444(#)*A358769((n+1)/#)]`
-/

namespace A062799.P16925516818971753316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A034444 d * A358769 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A062799.P16925516818971753316

namespace A062799

/-- `∑{d}[n+1, A034444(#)*A358769((n+1)/#)]` -/
def P16925516818971753316.Spec : Prop :=
  ∀ n, P16925516818971753316.a n = A062799 (n + 1)

end A062799

/-! ## A062799.P14482354929517049562

`A000005(n+1)*A346009(n+1)/A346010(n+1)`
-/

namespace A062799.P14482354929517049562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) * A346009 (n + 1) : ℚ) / (A346010 (n + 1) : ℚ)

end

end A062799.P14482354929517049562

namespace A062799

/-- `A000005(n+1)*A346009(n+1)/A346010(n+1)` -/
def P14482354929517049562.Spec : Prop :=
  ∀ n, P14482354929517049562.a n = (A062799 (n + 1) : ℚ)

end A062799

