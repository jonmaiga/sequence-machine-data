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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A255000: Prime(n + d(n)), with d(n) = prime(n+1) - prime(n), for n >= 1.

The programs for A255000, the canonical program `A255000.P13204659214420156332` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255000 has offset 1).

The definition of A255000 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255000.P13204659214420156332

`A000040(n+1+A001223(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A255000

/-- `A000040(n+1+A001223(n+1))` -/
def P13204659214420156332.Spec : Prop :=
  ∀ n, P13204659214420156332.a n = A255000 (n + 1)

theorem P13204659214420156332.correct : P13204659214420156332.Spec := by
  intro n
  simp only [A255000, Nat.add_sub_cancel]

end A255000

/-! ## A255000.P7259481805195860796

`A065091(p?[2*n+1]-(p?[round(8*n/7)]-n))`
-/

namespace A255000.P7259481805195860796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - (n : ℤ))).toNat

end

end A255000.P7259481805195860796

namespace A255000

/-- `A065091(p?[2*n+1]-(p?[round(8*n/7)]-n))` -/
def P7259481805195860796.Spec : Prop :=
  ∀ n, P7259481805195860796.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P15702426991808700728

`A000040(p?[2*n+1]+1-(p?[round(8*n/7)]-n))`
-/

namespace A255000.P15702426991808700728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 : ℤ) - (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) - (n : ℤ))).toNat

end

end A255000.P15702426991808700728

namespace A255000

/-- `A000040(p?[2*n+1]+1-(p?[round(8*n/7)]-n))` -/
def P15702426991808700728.Spec : Prop :=
  ∀ n, P15702426991808700728.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P16894423356202017751

`A065091((p?[2*n+1]+1+n)%(p?[round(8*n/7)]+1))`
-/

namespace A255000.P16894423356202017751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) + 1 + n : ℤ) (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) + 1)).toNat

end

end A255000.P16894423356202017751

namespace A255000

/-- `A065091((p?[2*n+1]+1+n)%(p?[round(8*n/7)]+1))` -/
def P16894423356202017751.Spec : Prop :=
  ∀ n, P16894423356202017751.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P10219752936184167127

`A000040(A123128(n+1))`
-/

namespace A255000.P10219752936184167127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A123128 (n + 1)).toNat

end

end A255000.P10219752936184167127

namespace A255000

/-- `A000040(A123128(n+1))` -/
def P10219752936184167127.Spec : Prop :=
  ∀ n, P10219752936184167127.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P397203224479305830

`A065091(A147966(n+1))`
-/

namespace A255000.P397203224479305830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A147966 (n + 1)).toNat

end

end A255000.P397203224479305830

namespace A255000

/-- `A065091(A147966(n+1))` -/
def P397203224479305830.Spec : Prop :=
  ∀ n, P397203224479305830.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P16869711438058422750

`A008578(A123128(n+1)+1)`
-/

namespace A255000.P16869711438058422750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A123128 (n + 1) + 1).toNat

end

end A255000.P16869711438058422750

namespace A255000

/-- `A008578(A123128(n+1)+1)` -/
def P16869711438058422750.Spec : Prop :=
  ∀ n, P16869711438058422750.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P17561757022180702967

`A000040(A147966(n+1)+1)`
-/

namespace A255000.P17561757022180702967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A147966 (n + 1) + 1).toNat

end

end A255000.P17561757022180702967

namespace A255000

/-- `A000040(A147966(n+1)+1)` -/
def P17561757022180702967.Spec : Prop :=
  ∀ n, P17561757022180702967.a n = A255000 (n + 1)

theorem P17561757022180702967.correct : P17561757022180702967.Spec := by
  intro n
  simp only [A255000, Nat.add_sub_cancel, A255000.P17561757022180702967.a, A255000.P13204659214420156332.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5083310856331133973.a, A147966, A147966.P17845740115898667296.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255000

/-! ## A255000.P13286238699357563309

`A158611(A123128(n+1)+2)`
-/

namespace A255000.P13286238699357563309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A123128 (n + 1) + 2).toNat

end

end A255000.P13286238699357563309

namespace A255000

/-- `A158611(A123128(n+1)+2)` -/
def P13286238699357563309.Spec : Prop :=
  ∀ n, P13286238699357563309.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P5034738914541231677

`A065091(A001223(n+1)+n)`
-/

namespace A255000.P5034738914541231677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A001223 (n + 1) + (n : ℤ)).toNat

end

end A255000.P5034738914541231677

namespace A255000

/-- `A065091(A001223(n+1)+n)` -/
def P5034738914541231677.Spec : Prop :=
  ∀ n, P5034738914541231677.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P18126297369658211083

`A065091(A075526(n+1)+n)`
-/

namespace A255000.P18126297369658211083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A075526 (n + 1) + (n : ℤ)).toNat

end

end A255000.P18126297369658211083

namespace A255000

/-- `A065091(A075526(n+1)+n)` -/
def P18126297369658211083.Spec : Prop :=
  ∀ n, P18126297369658211083.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P12490349571753232812

`A000040(A076368(n+2)+n)`
-/

namespace A255000.P12490349571753232812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A076368 (n + 2) + (n : ℤ)).toNat

end

end A255000.P12490349571753232812

namespace A255000

/-- `A000040(A076368(n+2)+n)` -/
def P12490349571753232812.Spec : Prop :=
  ∀ n, P12490349571753232812.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P11993812073962102428

`A006005(A076368(n+2)+n)`
-/

namespace A255000.P11993812073962102428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A076368 (n + 2) + (n : ℤ)).toNat

end

end A255000.P11993812073962102428

namespace A255000

/-- `A006005(A076368(n+2)+n)` -/
def P11993812073962102428.Spec : Prop :=
  ∀ n, P11993812073962102428.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P18387360851016507178

`A065091(A054541(n+2)+n)`
-/

namespace A255000.P18387360851016507178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A054541 (n + 2) + (n : ℤ)).toNat

end

end A255000.P18387360851016507178

namespace A255000

/-- `A065091(A054541(n+2)+n)` -/
def P18387360851016507178.Spec : Prop :=
  ∀ n, P18387360851016507178.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P6231018761352927675

`A000040(A230846(n+2)+n)`
-/

namespace A255000.P6231018761352927675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230846 (n + 2) + (n : ℤ)).toNat

end

end A255000.P6231018761352927675

namespace A255000

/-- `A000040(A230846(n+2)+n)` -/
def P6231018761352927675.Spec : Prop :=
  ∀ n, P6231018761352927675.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P9962515671007411693

`A000040(A230847(n+2)+n)`
-/

namespace A255000.P9962515671007411693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A230847 (n + 2) + (n : ℤ)).toNat

end

end A255000.P9962515671007411693

namespace A255000

/-- `A000040(A230847(n+2)+n)` -/
def P9962515671007411693.Spec : Prop :=
  ∀ n, P9962515671007411693.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P8423199583270255343

`A065091(log2(A218075(n+1))+n)`
-/

namespace A255000.P8423199583270255343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.roundAway (Real.logb 2 (A218075 (n + 1) : ℝ) + (n : ℝ))).toNat

end

end A255000.P8423199583270255343

namespace A255000

/-- `A065091(log2(A218075(n+1))+n)` -/
def P8423199583270255343.Spec : Prop :=
  ∀ n, P8423199583270255343.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P6281104208945789689

`A000040(Δ[A014688(n+1)]+n)`
-/

namespace A255000.P6281104208945789689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A255000.P6281104208945789689

namespace A255000

/-- `A000040(Δ[A014688(n+1)]+n)` -/
def P6281104208945789689.Spec : Prop :=
  ∀ n, P6281104208945789689.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P1704641140783438310

`A065091(Δ[A000040(n+1)]+n)`
-/

namespace A255000.P1704641140783438310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A255000.P1704641140783438310

namespace A255000

/-- `A065091(Δ[A000040(n+1)]+n)` -/
def P1704641140783438310.Spec : Prop :=
  ∀ n, P1704641140783438310.a n = A255000 (n + 1)

end A255000

/-! ## A255000.P17971770494671760233

`A065091(Δ[A006093(n+1)]+n)`
-/

namespace A255000.P17971770494671760233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A255000.P17971770494671760233

namespace A255000

/-- `A065091(Δ[A006093(n+1)]+n)` -/
def P17971770494671760233.Spec : Prop :=
  ∀ n, P17971770494671760233.a n = A255000 (n + 1)

end A255000

/-!
# A255001: Number of partitions of 4n into distinct parts with equal sums of odd and even parts.

The programs for A255001, there is no canonical definition to state claims against.
-/

/-! ## A255001.P1575529279124130696

`A000009(n)*A069910(n)`
-/

namespace A255001.P1575529279124130696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A069910 n

end

end A255001.P1575529279124130696

/-! ## A255001.P8331471524106711505

`A000009(n)*A000700(2*n)`
-/

namespace A255001.P8331471524106711505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A000700 (2 * n)

end

end A255001.P8331471524106711505

/-! ## A255001.P7654386071598082223

`A000009(n)*A081362(2*n)`
-/

namespace A255001.P7654386071598082223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n * A081362 (2 * n)

end

end A255001.P7654386071598082223

/-! ## A255001.P6947370424380928898

`A035457(2*n)*A069910(n)`
-/

namespace A255001.P6947370424380928898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) * A069910 n

end

end A255001.P6947370424380928898

/-! ## A255001.P10336142060677249726

`abs(A000700(2*n)*A081360(n))`
-/

namespace A255001.P10336142060677249726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000700 (2 * n) * A081360 n|

end

end A255001.P10336142060677249726

/-! ## A255001.P14600132932982845652

`∑[A087897(n)]*A000700(2*n)`
-/

namespace A255001.P14600132932982845652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000700 (2 * n)

end

end A255001.P14600132932982845652

/-! ## A255001.P306893689768534508

`A000700(2*n)*A035457(2*n)`
-/

namespace A255001.P306893689768534508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * n) * A035457 (2 * n)

end

end A255001.P306893689768534508

/-! ## A255001.P7725799610520374135

`A035457(2*n)*A081362(2*n)`
-/

namespace A255001.P7725799610520374135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035457 (2 * n) * A081362 (2 * n)

end

end A255001.P7725799610520374135

/-! ## A255001.P12083577334097195892

`A000700(2*n)*A172033(2*n)`
-/

namespace A255001.P12083577334097195892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * n) * A172033 (2 * n)

end

end A255001.P12083577334097195892

/-! ## A255001.P6128254228107451718

`A081362(2*n)*A172033(2*n)`
-/

namespace A255001.P6128254228107451718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081362 (2 * n) * A172033 (2 * n)

end

end A255001.P6128254228107451718

/-! ## A255001.P16674283072826101398

`A000700(2*n)*A219347(A000124(n))`
-/

namespace A255001.P16674283072826101398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000700 (2 * n) * A219347 (A000124 n).toNat

end

end A255001.P16674283072826101398

/-!
# A255003: Lexicographically earliest permutation of positive integers such that a(a(n)+a(n+1)) is even for all n.

The programs for A255003, there is no canonical definition to state claims against.
-/

/-! ## A255003.P483141057549137721

`A218252(n+3)-A329683(A062709(n))`
-/

namespace A255003.P483141057549137721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218252 (n + 3) - A329683 (A062709 n).toNat

end

end A255003.P483141057549137721

/-! ## A255003.P2255004331534314596

`A218252(n+3)-A061142(A038580(3*n+5))`
-/

namespace A255003.P2255004331534314596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218252 (n + 3) - A061142 (A038580 (3 * n + 5)).toNat

end

end A255003.P2255004331534314596

/-! ## A255003.P16800899359634258828

`A218252(n+3)-A302041(A042950(n+3))`
-/

namespace A255003.P16800899359634258828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218252 (n + 3) - A302041 (A042950 (n + 3)).toNat

end

end A255003.P16800899359634258828

/-! ## A255003.P6293798073423709871

`A218252(n+3)-A076839(A279254(2*n+5))`
-/

namespace A255003.P6293798073423709871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218252 (n + 3) - A076839 (A279254 (2 * n + 5)).toNat

end

end A255003.P6293798073423709871

/-!
# A255004: Lexicographically earliest permutation of positive integers such that a(a(n)+a(n+1)) is prime for all n.

The programs for A255004, there is no canonical definition to state claims against.
-/

/-! ## A255004.P17489604456451270839

`A394857(n+1)%A128894(2*n+1)`
-/

namespace A255004.P17489604456451270839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394857 (n + 1)) (A128894 (2 * n + 1))

end

end A255004.P17489604456451270839

/-! ## A255004.P389149459538988532

`A394857(n+1)%A022843(A160786(n))`
-/

namespace A255004.P389149459538988532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A394857 (n + 1)) (A022843 (A160786 n).toNat)

end

end A255004.P389149459538988532

/-! ## A255004.P9420231215386532354

`A394857(n+1)+A000007(A137948(3*n))`
-/

namespace A255004.P9420231215386532354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394857 (n + 1) + A000007 (A137948 (3 * n)).toNat

end

end A255004.P9420231215386532354

/-! ## A255004.P305733061849993055

`A394857(n+1)+A154955(A142029(2*(n+2)))`
-/

namespace A255004.P305733061849993055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394857 (n + 1) + A154955 (A142029 (2 * (n + 2))).toNat

end

end A255004.P305733061849993055

/-! ## A255004.P90038506288843670

`A394857(n+1)+A000007(A001106(3*n+2))`
-/

namespace A255004.P90038506288843670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394857 (n + 1) + A000007 (A001106 (3 * n + 2)).toNat

end

end A255004.P90038506288843670

/-!
# A255005: a(n) = the digit sum of prime(n) + the digit product of prime(n).

The programs for A255005, the canonical program `A255005.P10936210896201179594` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255005 has offset 1).

The definition of A255005 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007605, A053666, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255005.P10936210896201179594

`A007605(n+1)+A053666(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A255005

/-- `A007605(n+1)+A053666(n+1)` -/
def P10936210896201179594.Spec : Prop :=
  ∀ n, P10936210896201179594.a n = A255005 (n + 1)

theorem P10936210896201179594.correct : P10936210896201179594.Spec := by
  intro n
  simp only [A255005, Nat.add_sub_cancel]

end A255005

/-! ## A255005.P11572462632381402648

`A053666(n+1)+A065073(n+1)-A000040(n+1)`
-/

namespace A255005.P11572462632381402648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053666 (n + 1) + (A065073 (n + 1) - A000040 (n + 1))

end

end A255005.P11572462632381402648

namespace A255005

/-- `A053666(n+1)+A065073(n+1)-A000040(n+1)` -/
def P11572462632381402648.Spec : Prop :=
  ∀ n, P11572462632381402648.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P12967022083058772513

`A000040(n+1)+A053666(n+1)-A068395(n+1)`
-/

namespace A255005.P12967022083058772513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A053666 (n + 1) - A068395 (n + 1))

end

end A255005.P12967022083058772513

namespace A255005

/-- `A000040(n+1)+A053666(n+1)-A068395(n+1)` -/
def P12967022083058772513.Spec : Prop :=
  ∀ n, P12967022083058772513.a n = A255005 (n + 1)

theorem P12967022083058772513.correct : P12967022083058772513.Spec := by
  intro n
  simp only [A255005, Nat.add_sub_cancel, A255005.P12967022083058772513.a, A255005.P10936210896201179594.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A007605, A007605.P14521423581831153617.a, A053666, A053666.P18378645910674080637.f1, A053666.P18378645910674080637.a, A068395, A068395.P13008118586817300563.a, A007953, A007953.P3472751987379697826.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A255005

/-! ## A255005.P16365651988185195788

`A053666(n+1)+A007953(n+1)+A239324(n)-A239324(n+1)`
-/

namespace A255005.P16365651988185195788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053666 (n + 1) + (A007953 (n + 1) + (A239324 n - A239324 (n + 1)))

end

end A255005.P16365651988185195788

namespace A255005

/-- `A053666(n+1)+A007953(n+1)+A239324(n)-A239324(n+1)` -/
def P16365651988185195788.Spec : Prop :=
  ∀ n, P16365651988185195788.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P18415117610672367620

`A061762(eq[1, ∑{e}[n, #]])`
-/

namespace A255005.P18415117610672367620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A255005.P18415117610672367620

namespace A255005

/-- `A061762(eq[1, ∑{e}[n, #]])` -/
def P18415117610672367620.Spec : Prop :=
  ∀ n, P18415117610672367620.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P11208453009301103038

`A061762(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])`
-/

namespace A255005.P11208453009301103038
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A255005.P11208453009301103038

namespace A255005

/-- `A061762(record[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+1])` -/
def P11208453009301103038.Spec : Prop :=
  ∀ n, P11208453009301103038.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P12147929971597723966

`A061762(A000040(n+1))`
-/

namespace A255005.P12147929971597723966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (A000040 (n + 1)).toNat

end

end A255005.P12147929971597723966

namespace A255005

/-- `A061762(A000040(n+1))` -/
def P12147929971597723966.Spec : Prop :=
  ∀ n, P12147929971597723966.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P7797380828416650009

`A061762(A004087(n+1))`
-/

namespace A255005.P7797380828416650009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (A004087 (n + 1)).toNat

end

end A255005.P7797380828416650009

namespace A255005

/-- `A061762(A004087(n+1))` -/
def P7797380828416650009.Spec : Prop :=
  ∀ n, P7797380828416650009.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P13711367233627137006

`A061762(A028906(n+1))`
-/

namespace A255005.P13711367233627137006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (A028906 (n + 1)).toNat

end

end A255005.P13711367233627137006

namespace A255005

/-- `A061762(A028906(n+1))` -/
def P13711367233627137006.Spec : Prop :=
  ∀ n, P13711367233627137006.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P9208245091412049240

`A061762(A008578(n+2))`
-/

namespace A255005.P9208245091412049240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (A008578 (n + 2)).toNat

end

end A255005.P9208245091412049240

namespace A255005

/-- `A061762(A008578(n+2))` -/
def P9208245091412049240.Spec : Prop :=
  ∀ n, P9208245091412049240.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P12284847859735882377

`A061762(A182986(n+2))`
-/

namespace A255005.P12284847859735882377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (A182986 (n + 2)).toNat

end

end A255005.P12284847859735882377

namespace A255005

/-- `A061762(A182986(n+2))` -/
def P12284847859735882377.Spec : Prop :=
  ∀ n, P12284847859735882377.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P13751274061460642910

`A061762(eq[0, A007920(n)])`
-/

namespace A255005.P13751274061460642910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255005.P13751274061460642910

namespace A255005

/-- `A061762(eq[0, A007920(n)])` -/
def P13751274061460642910.Spec : Prop :=
  ∀ n, P13751274061460642910.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P1692884326710234635

`A061762(eq[0, A325142(n)])`
-/

namespace A255005.P1692884326710234635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255005.P1692884326710234635

namespace A255005

/-- `A061762(eq[0, A325142(n)])` -/
def P1692884326710234635.Spec : Prop :=
  ∀ n, P1692884326710234635.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P6924532655044489224

`A061762(eq[1, A003415(n)])`
-/

namespace A255005.P6924532655044489224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255005.P6924532655044489224

namespace A255005

/-- `A061762(eq[1, A003415(n)])` -/
def P6924532655044489224.Spec : Prop :=
  ∀ n, P6924532655044489224.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P9990015565441223259

`A061762(eq[1, A105700(n)])`
-/

namespace A255005.P9990015565441223259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255005.P9990015565441223259

namespace A255005

/-- `A061762(eq[1, A105700(n)])` -/
def P9990015565441223259.Spec : Prop :=
  ∀ n, P9990015565441223259.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P3598256868254549818

`A061762(record[A006530(n+2)])`
-/

namespace A255005.P3598256868254549818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255005.P3598256868254549818

namespace A255005

/-- `A061762(record[A006530(n+2)])` -/
def P3598256868254549818.Spec : Prop :=
  ∀ n, P3598256868254549818.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P2465048374553801658

`A061762(record[A014963(n+2)])`
-/

namespace A255005.P2465048374553801658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255005.P2465048374553801658

namespace A255005

/-- `A061762(record[A014963(n+2)])` -/
def P2465048374553801658.Spec : Prop :=
  ∀ n, P2465048374553801658.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P9525124463581228423

`A061762(record[A020639(n+2)])`
-/

namespace A255005.P9525124463581228423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A255005.P9525124463581228423

namespace A255005

/-- `A061762(record[A020639(n+2)])` -/
def P9525124463581228423.Spec : Prop :=
  ∀ n, P9525124463581228423.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P7047682617694145518

`A061762(eq[1, A001222(n+1)]+1)`
-/

namespace A255005.P7047682617694145518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A255005.P7047682617694145518

namespace A255005

/-- `A061762(eq[1, A001222(n+1)]+1)` -/
def P7047682617694145518.Spec : Prop :=
  ∀ n, P7047682617694145518.a n = A255005 (n + 1)

end A255005

/-! ## A255005.P15571912618351173953

`A061762(eq[2, A000005(n+1)]+1)`
-/

namespace A255005.P15571912618351173953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061762 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A255005.P15571912618351173953

namespace A255005

/-- `A061762(eq[2, A000005(n+1)]+1)` -/
def P15571912618351173953.Spec : Prop :=
  ∀ n, P15571912618351173953.a n = A255005 (n + 1)

end A255005

/-!
# A255006: a(n) is the numerator of polygamma(2n+1, 1) / Pi^(2n+2).

The programs for A255006, there is no canonical definition to state claims against.
-/

/-! ## A255006.P12733558256063055893

`A011782(n)*A087258(A002105(n+1))`
-/

namespace A255006.P12733558256063055893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A087258 (A002105 (n + 1)).toNat

end

end A255006.P12733558256063055893

/-! ## A255006.P12112660239779962362

`gcd(A003722(A060074(n)), A009123(2*n))`
-/

namespace A255006.P12112660239779962362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003722 (A060074 n).toNat) (A009123 (2 * n))

end

end A255006.P12112660239779962362

/-!
# A255007: a(n) is the denominator of polygamma(2n+1, 1) / Pi^(2n+2).

The programs for A255007, there is no canonical definition to state claims against.
-/

/-! ## A255007.P5537493073739749817

`A036283(n+1)/A006519(A103517(n))`
-/

namespace A255007.P5537493073739749817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036283 (n + 1) : ℚ) / (A006519 (A103517 n).toNat : ℚ)

end

end A255007.P5537493073739749817

/-! ## A255007.P6101507805231388872

`A036283(n+1)/gcd(A000302(n), A036283(n+1))`
-/

namespace A255007.P6101507805231388872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036283 (n + 1) : ℚ) / (Int.gcd (A000302 n) (A036283 (n + 1)) : ℚ)

end

end A255007.P6101507805231388872

/-! ## A255007.P17684436108571109080

`A036283(n+1)/A237425(2*n+1)`
-/

namespace A255007.P17684436108571109080
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036283 (n + 1) : ℚ) / (A237425 (2 * n + 1) : ℚ)

end

end A255007.P17684436108571109080

/-! ## A255007.P3271988765379509993

`ceil(acot(n))*A000265(A006953(n+1))`
-/

namespace A255007.P3271988765379509993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A000265 (A006953 (n + 1)).toNat

end

end A255007.P3271988765379509993

/-! ## A255007.P16228237012808829229

`A000265(A006953(n+1))*A141044(n+1)`
-/

namespace A255007.P16228237012808829229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A006953 (n + 1)).toNat * A141044 (n + 1)

end

end A255007.P16228237012808829229

/-!
# A255009: Array T(n,k) read by ascending antidiagonals, where T(n,k) is the denominator of polygamma(n, 1) - polygamma(n, k).

The programs for A255009, there is no canonical definition to state claims against.
-/

/-! ## A255009.P12543140656311457144

`A038388(A233543(n)^A097805(n))`
-/

namespace A255009.P12543140656311457144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038388 (SequenceMachineLib.roundAway ((A233543 n : ℚ) ^ (A097805 n : ℤ))).toNat

end

end A255009.P12543140656311457144

/-! ## A255009.P14501837314007380876

`A007948(A233543(n)^A060637(n))`
-/

namespace A255009.P14501837314007380876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (SequenceMachineLib.roundAway ((A233543 n : ℚ) ^ (A060637 n : ℤ))).toNat

end

end A255009.P14501837314007380876

/-! ## A255009.P5485489302984731335

`A007948(A233543(n)^A094587(n))`
-/

namespace A255009.P5485489302984731335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (SequenceMachineLib.roundAway ((A233543 n : ℚ) ^ (A094587 n : ℤ))).toNat

end

end A255009.P5485489302984731335

/-! ## A255009.P4885920231216420261

`A007948(A233543(n)^A113993(n))`
-/

namespace A255009.P4885920231216420261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (SequenceMachineLib.roundAway ((A233543 n : ℚ) ^ (A113993 n : ℤ))).toNat

end

end A255009.P4885920231216420261

/-! ## A255009.P13799791876801610190

`A007948(A233543(n)^A114292(n))`
-/

namespace A255009.P13799791876801610190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (SequenceMachineLib.roundAway ((A233543 n : ℚ) ^ (A114292 n : ℤ))).toNat

end

end A255009.P13799791876801610190

/-!
# A255010: a(n) = A099795(n)^-1 mod prime(n).

The programs for A255010, there is no canonical definition to state claims against.
-/

/-! ## A255010.P16716370819438999070

`A000040(n+1)-A059955(ceil(acot(n)+n))`
-/

namespace A255010.P16716370819438999070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A059955 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

end

end A255010.P16716370819438999070

/-! ## A255010.P8182858546767951166

`A000040(n+1)-A059955(ceil(2/(n+1)+n))`
-/

namespace A255010.P8182858546767951166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A059955 ⌈2 / (n + 1 : ℚ) + (n : ℚ)⌉.toNat

end

end A255010.P8182858546767951166

/-! ## A255010.P14847085210633668766

`p?[ceil(2/acot(n))]-A099796(n+1)`
-/

namespace A255010.P14847085210633668766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / SequenceMachineLib.acot (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A099796 (n + 1)

end

end A255010.P14847085210633668766

/-! ## A255010.P16365355192411450324

`Δ[A007504(n)]-A099796(n+1)`
-/

namespace A255010.P16365355192411450324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A099796 (n + 1)

end

end A255010.P16365355192411450324

/-! ## A255010.P6264881622413151150

`p?[A001057(n)]-A099796(n+1)`
-/

namespace A255010.P6264881622413151150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A099796 (n + 1)

end

end A255010.P6264881622413151150

/-! ## A255010.P14241342016361359892

`A000040(n+1)-A099796(n+1)`
-/

namespace A255010.P14241342016361359892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A099796 (n + 1)

end

end A255010.P14241342016361359892

/-! ## A255010.P3090681535375148714

`A216884(n+1)-A099796(n+1)`
-/

namespace A255010.P3090681535375148714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1) - A099796 (n + 1)

end

end A255010.P3090681535375148714

/-! ## A255010.P7164902628643997518

`record[A006530(n+2)]-A099796(n+1)`
-/

namespace A255010.P7164902628643997518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A099796 (n + 1)

end

end A255010.P7164902628643997518

/-! ## A255010.P403388542957892599

`record[A020639(n+2)]-A099796(n+1)`
-/

namespace A255010.P403388542957892599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A099796 (n + 1)

end

end A255010.P403388542957892599

/-!
# A255011: Number of cells formed by connecting all the 4n points on the perimeter of an n X n square by straight lines; a(0) = 0 by convention.

The programs for A255011, there is no canonical definition to state claims against.
-/

/-! ## A255011.P8145649617389586058

`A331448(n)+1-A331449(n)`
-/

namespace A255011.P8145649617389586058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331448 n + (1 - A331449 n)

end

end A255011.P8145649617389586058

/-! ## A255011.P6421218724971882203

`1-(A331449(2*n-n)-A331448(n))`
-/

namespace A255011.P6421218724971882203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A331449 (2 * n - n) - A331448 n)

end

end A255011.P6421218724971882203

/-! ## A255011.P7590031923987227460

`A331448(n)-lcm(1-A331449(n), A087960(n))`
-/

namespace A255011.P7590031923987227460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331448 n - (Int.lcm (1 - A331449 n) (A087960 n) : ℤ)

end

end A255011.P7590031923987227460

/-! ## A255011.P13613936421792535853

`A331448(n)+1-(A334690(round(sqrt(n²+1)))+4*n)`
-/

namespace A255011.P13613936421792535853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331448 n + 1 - (A334690 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + (4 * n : ℤ))

end

end A255011.P13613936421792535853

/-! ## A255011.P3826456925545193952

`lcm(A178334(n), A331452(A179865(n+1)))`
-/

namespace A255011.P3826456925545193952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A178334 n) (A331452 (A179865 (n + 1)).toNat)

end

end A255011.P3826456925545193952

/-!
# A255014: Abelian complexity function of the 4-bonacci word (A254990).

The programs for A255014, there is no canonical definition to state claims against.
-/

/-! ## A255014.P9704216954842590724

`A178042(A255445(n+1)%A066207(3*(n+1)))`
-/

namespace A255014.P9704216954842590724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178042 (Int.tmod (A255445 (n + 1)) (A066207 (3 * (n + 1)))).toNat

end

end A255014.P9704216954842590724

/-! ## A255014.P7216434865481369503

`A325272(A265067(floor(n/(xor(n, n+1)+1))+1))+1`
-/

namespace A255014.P7216434865481369503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325272 (A265067 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ + 1).toNat).toNat + 1

end

end A255014.P7216434865481369503

/-! ## A255014.P1849061907145002419

`ceil(log(A176543(3*(n+1)/2^val(n+1, 2))))`
-/

namespace A255014.P1849061907145002419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (A176543 (SequenceMachineLib.roundAway (3 * ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)))).toNat : ℝ)⌉

end

end A255014.P1849061907145002419

/-! ## A255014.P10043174929744005059

`A015135(A160239(n+1))`
-/

namespace A255014.P10043174929744005059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015135 (A160239 (n + 1)).toNat

end

end A255014.P10043174929744005059

/-! ## A255014.P4087368801207815113

`A178042(A255445(n+1))`
-/

namespace A255014.P4087368801207815113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178042 (A255445 (n + 1)).toNat

end

end A255014.P4087368801207815113

/-!
# A255015: Number of toroidal n X n binary arrays, allowing rotation of rows and/or columns as well as matrix transposition.

The programs for A255015, there is no canonical definition to state claims against.
-/

/-! ## A255015.P13737396488001350572

`A270428(a(n-1)²)+n` with `a(0)=1`
-/

namespace A255015.P13737396488001350572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A270428 (a (n - 1) ^ 2).toNat + (n : ℤ)

end

end A255015.P13737396488001350572

/-!
# A255016: Number of toroidal n X n binary arrays, allowing rotation and/or reflection of rows and/or columns as well as matrix transposition.

The programs for A255016, there is no canonical definition to state claims against.
-/

/-! ## A255016.P2139311371232351958

`A049533(∑[floor(n/log2(10))+1]!)`
-/

namespace A255016.P2139311371232351958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / Real.logb 2 (10 : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049533 (Nat.factorial (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A255016.P2139311371232351958

/-!
# A255017: Intersection of A013917 and A071150.

The programs for A255017, there is no canonical definition to state claims against.
-/

/-! ## A255017.P12661532688355712674

`∩[A013917(n+1), A071150(n+1)]`
-/

namespace A255017.P12661532688355712674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255017.P12661532688355712674

/-! ## A255017.P587704885288093960

`∩[A071150(n+1), A228102(n+1)]`
-/

namespace A255017.P587704885288093960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228102 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255017.P587704885288093960

/-! ## A255017.P13311727492230256173

`∩[A000040(A013916(n+1)), A071150(n+1)]`
-/

namespace A255017.P13311727492230256173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A013916 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255017.P13311727492230256173

/-! ## A255017.P12880487736986076545

`∩[A013917(n+1), A065091(A071149(n+1))]`
-/

namespace A255017.P12880487736986076545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A071149 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255017.P12880487736986076545

/-! ## A255017.P18124171505384293911

`∩[A071150(n+1), A000040(A280536(n+1))]`
-/

namespace A255017.P18124171505384293911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A280536 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255017.P18124171505384293911

/-!
# A255019: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255019, there is no canonical definition to state claims against.
-/

/-! ## A255019.P2070780184616709804

`A255027((n+1)²+n²)`
-/

namespace A255019.P2070780184616709804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 ((n + 1) ^ 2 + n ^ 2)

end

end A255019.P2070780184616709804

/-! ## A255019.P11832112581526902363

`record[A255027(Δ[A235355(n)])]`
-/

namespace A255019.P11832112581526902363
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255019.P11832112581526902363

/-! ## A255019.P6055118104738995985

`record[root(A255027(n+1), A143182(n))]`
-/

namespace A255019.P6055118104738995985
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A255027 (n + 1) : ℝ) ^ (1 / (A143182 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255019.P6055118104738995985

/-! ## A255019.P9572854316716229126

`record[gcd(A003987(n), A255027(n+1))]`
-/

namespace A255019.P9572854316716229126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A255027 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255019.P9572854316716229126

/-! ## A255019.P8377126850215014193

`A252335(n+1)/2`
-/

namespace A255019.P8377126850215014193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252335 (n + 1) : ℚ) / 2

end

end A255019.P8377126850215014193

/-!
# A255020: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255020, there is no canonical definition to state claims against.
-/

/-! ## A255020.P17896470442464821716

`A252336(n+1)/2`
-/

namespace A255020.P17896470442464821716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252336 (n + 1) : ℚ) / 2

end

end A255020.P17896470442464821716

/-! ## A255020.P5129878699633458233

`floor(A252336(Δ[n²]-n)/2)`
-/

namespace A255020.P5129878699633458233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A252336 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat : ℚ) / 2⌋

end

end A255020.P5129878699633458233

/-! ## A255020.P3930238408949709455

`record[A252336(A152271(n))/2]`
-/

namespace A255020.P3930238408949709455
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252336 (A152271 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255020.P3930238408949709455

/-! ## A255020.P14861075536749258439

`record[A252336(A134478(n))/2]`
-/

namespace A255020.P14861075536749258439
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252336 (A134478 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255020.P14861075536749258439

/-! ## A255020.P123290777863111098

`record[A252336(A143182(n))/2]`
-/

namespace A255020.P123290777863111098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252336 (A143182 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255020.P123290777863111098

/-!
# A255021: Number of (n+2) X (2+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255021, there is no canonical definition to state claims against.
-/

/-! ## A255021.P5693783671754784287

`A252337(n+1)/2`
-/

namespace A255021.P5693783671754784287
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252337 (n + 1) : ℚ) / 2

end

end A255021.P5693783671754784287

/-! ## A255021.P6559807439306603916

`record[A252337(A134478(n))/2]`
-/

namespace A255021.P6559807439306603916
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252337 (A134478 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255021.P6559807439306603916

/-! ## A255021.P490906674971605883

`A252263(n+1)-A252363(n+1)/2`
-/

namespace A255021.P490906674971605883
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252263 (n + 1) : ℚ) - (A252363 (n + 1) : ℚ) / 2

end

end A255021.P490906674971605883

/-! ## A255021.P14715242339396236000

`2^A008683(A003629(n+1))*A252337(n+1)`
-/

namespace A255021.P14715242339396236000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ) * (A252337 (n + 1) : ℚ)

end

end A255021.P14715242339396236000

/-! ## A255021.P6575048070365832946

`record[A252337(A143182(n))/2]`
-/

namespace A255021.P6575048070365832946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252337 (A143182 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255021.P6575048070365832946

/-!
# A255022: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255022, there is no canonical definition to state claims against.
-/

/-! ## A255022.P12227809645755781991

`A252338(n+1)/2`
-/

namespace A255022.P12227809645755781991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252338 (n + 1) : ℚ) / 2

end

end A255022.P12227809645755781991

/-! ## A255022.P16544327399951546605

`A255027(∑[n+2]+4)`
-/

namespace A255022.P16544327399951546605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255022.P16544327399951546605

/-! ## A255022.P17893255850949009449

`or(1, A255027(A167614(n+1)))`
-/

namespace A255022.P17893255850949009449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A255027 (A167614 (n + 1)).toNat)

end

end A255022.P17893255850949009449

/-! ## A255022.P7470336981660514745

`A255027(A167614(n+1))+A178780(n)`
-/

namespace A255022.P7470336981660514745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (A167614 (n + 1)).toNat + A178780 n

end

end A255022.P7470336981660514745

/-! ## A255022.P15084944278720709975

`lcm(A020985(n), A255027(A167614(n+1)))`
-/

namespace A255022.P15084944278720709975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A255027 (A167614 (n + 1)).toNat)

end

end A255022.P15084944278720709975

/-!
# A255023: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255023, there is no canonical definition to state claims against.
-/

/-! ## A255023.P5223534455812584939

`A252339(n+1)/2`
-/

namespace A255023.P5223534455812584939
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252339 (n + 1) : ℚ) / 2

end

end A255023.P5223534455812584939

/-! ## A255023.P11543134276410476059

`2^A008683(A181758(n+1))*A252339(n+1)`
-/

namespace A255023.P11543134276410476059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ) * (A252339 (n + 1) : ℚ)

end

end A255023.P11543134276410476059

/-! ## A255023.P4535751793746974928

`A255027(A374004(n+1))`
-/

namespace A255023.P4535751793746974928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (A374004 (n + 1)).toNat

end

end A255023.P4535751793746974928

/-! ## A255023.P4537727896574195167

`A255027(A141214(n)+7)`
-/

namespace A255023.P4537727896574195167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (A141214 n + 7).toNat

end

end A255023.P4537727896574195167

/-! ## A255023.P14677635002614702781

`A255027(A052905(n)+9)`
-/

namespace A255023.P14677635002614702781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (A052905 n + 9).toNat

end

end A255023.P14677635002614702781

/-!
# A255024: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255024, there is no canonical definition to state claims against.
-/

/-! ## A255024.P10424145161749151249

`A252340(n+1)/2`
-/

namespace A255024.P10424145161749151249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252340 (n + 1) : ℚ) / 2

end

end A255024.P10424145161749151249

/-! ## A255024.P11163635489944307337

`A255027(A374005(n+1))`
-/

namespace A255024.P11163635489944307337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (A374005 (n + 1)).toNat

end

end A255024.P11163635489944307337

/-! ## A255024.P5965976007067799954

`record[A255027(A167499(A162330(n+1)))]`
-/

namespace A255024.P5965976007067799954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (A167499 (A162330 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255024.P5965976007067799954

/-! ## A255024.P5682931737692881040

`A255027(Δ[A264443(n)])`
-/

namespace A255024.P5682931737692881040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (f1 (n + 1) - f1 n).toNat

end

end A255024.P5682931737692881040

/-! ## A255024.P6226245377297355840

`A255027(A046691(n+3))`
-/

namespace A255024.P6226245377297355840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (A046691 (n + 3)).toNat

end

end A255024.P6226245377297355840

/-!
# A255025: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255025, there is no canonical definition to state claims against.
-/

/-! ## A255025.P5547740838863888075

`A252341(n+1)/2`
-/

namespace A255025.P5547740838863888075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252341 (n + 1) : ℚ) / 2

end

end A255025.P5547740838863888075

/-! ## A255025.P9502822088355336583

`A255027(A374007(n+1))`
-/

namespace A255025.P9502822088355336583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (A374007 (n + 1)).toNat

end

end A255025.P9502822088355336583

/-! ## A255025.P10730047162155660879

`A255027(A167499(n+4)+1)`
-/

namespace A255025.P10730047162155660879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (A167499 (n + 4) + 1).toNat

end

end A255025.P10730047162155660879

/-! ## A255025.P11391091094007047144

`A255027(A161680(n+6)+6)`
-/

namespace A255025.P11391091094007047144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (A161680 (n + 6) + 6).toNat

end

end A255025.P11391091094007047144

/-! ## A255025.P12471529381834593475

`A255027(A000096(n+6)-A004275(n+4))`
-/

namespace A255025.P12471529381834593475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (A000096 (n + 6) - A004275 (n + 4)).toNat

end

end A255025.P12471529381834593475

/-!
# A255026: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255026, there is no canonical definition to state claims against.
-/

/-! ## A255026.P2112158530051543731

`A252342(n+1)/2`
-/

namespace A255026.P2112158530051543731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252342 (n + 1) : ℚ) / 2

end

end A255026.P2112158530051543731

/-! ## A255026.P15016283641255600320

`A255027(A374008(n+1))`
-/

namespace A255026.P15016283641255600320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (A374008 (n + 1)).toNat

end

end A255026.P15016283641255600320

/-! ## A255026.P16831782777097625187

`A255027(eq[11, A066657(n)])`
-/

namespace A255026.P16831782777097625187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255026.P16831782777097625187

/-! ## A255026.P7864348028437333296

`A255027(eq[8, A131818(n+1)])`
-/

namespace A255026.P7864348028437333296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255026.P7864348028437333296

/-! ## A255026.P12682115015873401338

`A252343(eq[11, A066657(n)])/2`
-/

namespace A255026.P12682115015873401338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252343 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A255026.P12682115015873401338

/-!
# A255027: T(n,k)=Number of (n+2)X(k+2) 0..1 arrays with no 3x3 subblock diagonal sum 0 or 1 and no antidiagonal sum 0 or 1 and no row sum 0 or 1 and no column sum 0 or 1.

The programs for A255027, there is no canonical definition to state claims against.
-/

/-! ## A255027.P12972477152358511174

`A252343(n+1)/2`
-/

namespace A255027.P12972477152358511174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A252343 (n + 1) : ℚ) / 2

end

end A255027.P12972477152358511174

/-! ## A255027.P5703520709526495988

`2^A008683(A059843(n+1))*A252343(n+1)`
-/

namespace A255027.P5703520709526495988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A059843 (n + 1)).toNat : ℤ) * (A252343 (n + 1) : ℚ)

end

end A255027.P5703520709526495988

/-! ## A255027.P15909876319542754018

`2^A008683(A092627(n+1))*A252343(n+1)`
-/

namespace A255027.P15909876319542754018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A092627 (n + 1)).toNat : ℤ) * (A252343 (n + 1) : ℚ)

end

end A255027.P15909876319542754018

/-! ## A255027.P9643665902931700390

`2^A008683(A212266(n+1))*A252343(n+1)`
-/

namespace A255027.P9643665902931700390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A212266 (n + 1)).toNat : ℤ) * (A252343 (n + 1) : ℚ)

end

end A255027.P9643665902931700390

/-! ## A255027.P16256243862459665697

`2^A008683(A088175(n+2))*A252343(n+1)`
-/

namespace A255027.P16256243862459665697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A088175 (n + 2)).toNat : ℤ) * (A252343 (n + 1) : ℚ)

end

end A255027.P16256243862459665697

/-! ## A255027.P9785280118798373424

`2^A008683(A233893(n+1))*A252343(n+1)`
-/

namespace A255027.P9785280118798373424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A233893 (n + 1)).toNat : ℤ) * (A252343 (n + 1) : ℚ)

end

end A255027.P9785280118798373424

/-!
# A255028: Number of (n+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255028, there is no canonical definition to state claims against.
-/

/-! ## A255028.P6015381205268275572

`A255036(∑[4*n]+1)`
-/

namespace A255028.P6015381205268275572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255028.P6015381205268275572

/-! ## A255028.P1297551348048462570

`record[gcd(A114327(n), A255036(n+1))]`
-/

namespace A255028.P1297551348048462570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A255036 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255028.P1297551348048462570

/-! ## A255028.P13319943220323837547

`lcm(or(1, 1-n)+n, A255036(A001844(n)))`
-/

namespace A255028.P13319943220323837547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Int.lor 1 (1 - (n : ℤ)) + (n : ℤ)) (A255036 (A001844 n).toNat)

end

end A255028.P13319943220323837547

/-! ## A255028.P873472384562952224

`A255036(A001844(n))+A025439(n)`
-/

namespace A255028.P873472384562952224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A001844 n).toNat + A025439 n

end

end A255028.P873472384562952224

/-! ## A255028.P2414449646163257817

`A255036(A001844(n))%A017382(n)`
-/

namespace A255028.P2414449646163257817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255036 (A001844 n).toNat) (A017382 n)

end

end A255028.P2414449646163257817

/-!
# A255029: Number of (n+2)X(1+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255029, there is no canonical definition to state claims against.
-/

/-! ## A255029.P2326916062960877315

`A255036(∑[n]+1)`
-/

namespace A255029.P2326916062960877315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255029.P2326916062960877315

/-! ## A255029.P9534517940343702723

`record[A255036(n+1)]`
-/

namespace A255029.P9534517940343702723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255029.P9534517940343702723

/-! ## A255029.P10044024191011066048

`xor(1, xor(1, A255036(A000217(n)+1)))`
-/

namespace A255029.P10044024191011066048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A255036 (A000217 n + 1).toNat))

end

end A255029.P10044024191011066048

/-! ## A255029.P14893299356144325515

`A062557(2*n)*A255036(A000124(n))`
-/

namespace A255029.P14893299356144325515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 (2 * n) * A255036 (A000124 n).toNat

end

end A255029.P14893299356144325515

/-! ## A255029.P9323398821892155642

`or(1, A100910(n))*A255036(A000124(n))`
-/

namespace A255029.P9323398821892155642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A100910 n) * A255036 (A000124 n).toNat

end

end A255029.P9323398821892155642

/-! ## A255029.P12958624165699626256

`char[A061579(n)]*A255036(A000217(n)+1)`
-/

namespace A255029.P12958624165699626256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255036 (A000217 n + 1).toNat

end

end A255029.P12958624165699626256

/-! ## A255029.P219764685567493503

`A255036(A000124(n))/A062557(A088207(n))`
-/

namespace A255029.P219764685567493503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255036 (A000124 n).toNat : ℚ) / (A062557 (A088207 n).toNat : ℚ)

end

end A255029.P219764685567493503

/-! ## A255029.P6086757652227400494

`A255036(A000217(n+1))+A000035(2*n)`
-/

namespace A255029.P6086757652227400494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A000217 (n + 1)).toNat + A000035 (2 * n)

end

end A255029.P6086757652227400494

/-! ## A255029.P10401983837473270628

`A033999(2*n)*A255036(A000217(n+1))`
-/

namespace A255029.P10401983837473270628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A255036 (A000217 (n + 1)).toNat

end

end A255029.P10401983837473270628

/-! ## A255029.P6064011044865358928

`lcm(A035214(n+1), A255036(A000217(n+1)))`
-/

namespace A255029.P6064011044865358928
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035214 (n + 1)) (A255036 (A000217 (n + 1)).toNat)

end

end A255029.P6064011044865358928

/-!
# A255030: Number of (n+2) X (2+2) 0..1 arrays with every 3 X 3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255030, there is no canonical definition to state claims against.
-/

/-! ## A255030.P11465922952849455510

`A255036(∑[n+2])`
-/

namespace A255030.P11465922952849455510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255030.P11465922952849455510

/-! ## A255030.P14390495982480016435

`record[A255036(A000096(A331742(n)))]`
-/

namespace A255030.P14390495982480016435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A000096 (A331742 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255030.P14390495982480016435

/-! ## A255030.P17160387866682497682

`record[A255036(A000096(A002260(n+1)))]`
-/

namespace A255030.P17160387866682497682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A000096 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255030.P17160387866682497682

/-! ## A255030.P4276692709959137410

`record[A255036(A000096(A003963(n+1)))]`
-/

namespace A255030.P4276692709959137410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A000096 (A003963 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255030.P4276692709959137410

/-! ## A255030.P2143926575080392441

`record[A255036(A000096(A032742(n+1)))]`
-/

namespace A255030.P2143926575080392441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A000096 (A032742 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255030.P2143926575080392441

/-! ## A255030.P3343440374490414241

`record[A255036(A000096(A138528(n+1)))]`
-/

namespace A255030.P3343440374490414241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A000096 (A138528 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255030.P3343440374490414241

/-! ## A255030.P4292337690482184276

`record[A255036(A000096(A265110(n+1)))]`
-/

namespace A255030.P4292337690482184276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A000096 (A265110 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255030.P4292337690482184276

/-! ## A255030.P15690708070489153358

`A007318(A000096(2*n+1))*A255036(A000096(n+1))`
-/

namespace A255030.P15690708070489153358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 (2 * n + 1)).toNat * A255036 (A000096 (n + 1)).toNat

end

end A255030.P15690708070489153358

/-!
# A255031: Number of (n+2)X(3+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255031, there is no canonical definition to state claims against.
-/

/-! ## A255031.P11222181783278627794

`A255036(∑[n+3]+1)`
-/

namespace A255031.P11222181783278627794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255031.P11222181783278627794

/-! ## A255031.P6181894542490730447

`A255036(A034856(n+2))%A017382(n)`
-/

namespace A255031.P6181894542490730447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255036 (A034856 (n + 2)).toNat) (A017382 n)

end

end A255031.P6181894542490730447

/-! ## A255031.P16772964732890952269

`or(A255036(A034856(n+2)), A327177(n))`
-/

namespace A255031.P16772964732890952269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A255036 (A034856 (n + 2)).toNat) (A327177 n)

end

end A255031.P16772964732890952269

/-! ## A255031.P10286849341398231389

`lcm(A000038(n)!, A255036(A034856(n+2)))`
-/

namespace A255031.P10286849341398231389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (Nat.factorial (A000038 n).toNat : ℤ) (A255036 (A034856 (n + 2)).toNat)

end

end A255031.P10286849341398231389

/-! ## A255031.P9462418364487709732

`char[A002262(n)]*A255036(A034856(n+2))`
-/

namespace A255031.P9462418364487709732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255036 (A034856 (n + 2)).toNat

end

end A255031.P9462418364487709732

/-! ## A255031.P10034637536899649685

`char[A003188(n)]*A255036(A034856(n+2))`
-/

namespace A255031.P10034637536899649685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255036 (A034856 (n + 2)).toNat

end

end A255031.P10034637536899649685

/-! ## A255031.P9740366164495702042

`char[A004442(n)]*A255036(A034856(n+2))`
-/

namespace A255031.P9740366164495702042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255036 (A034856 (n + 2)).toNat

end

end A255031.P9740366164495702042

/-! ## A255031.P7405149342477228701

`char[A025581(n)]*A255036(A034856(n+2))`
-/

namespace A255031.P7405149342477228701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255036 (A034856 (n + 2)).toNat

end

end A255031.P7405149342477228701

/-! ## A255031.P4117129847598217197

`A007318(A000096(n))*A255036(A034856(n+2))`
-/

namespace A255031.P4117129847598217197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A255036 (A034856 (n + 2)).toNat

end

end A255031.P4117129847598217197

/-!
# A255032: Number of (n+2)X(4+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255032, there is no canonical definition to state claims against.
-/

/-! ## A255032.P2366685053995723528

`A255036(∑[n+4]+3)`
-/

namespace A255032.P2366685053995723528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A255032.P2366685053995723528

/-! ## A255032.P2672128409986372389

`or(A156659(n), A255036(A055998(n+2)))`
-/

namespace A255032.P2672128409986372389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A156659 n) (A255036 (A055998 (n + 2)).toNat)

end

end A255032.P2672128409986372389

/-! ## A255032.P4713017691569059650

`A255036(A056000(n)+7)%A255040(n+1)`
-/

namespace A255032.P4713017691569059650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255036 (A056000 n + 7).toNat) (A255040 (n + 1))

end

end A255032.P4713017691569059650

/-! ## A255032.P9809039947108539965

`A255036(A055998(n+2))%A002997(n+1)²`
-/

namespace A255032.P9809039947108539965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255036 (A055998 (n + 2)).toNat) (A002997 (n + 1) ^ 2)

end

end A255032.P9809039947108539965

/-! ## A255032.P4865037677147881347

`A255036(A055998(n+2))+char[A008607(n+4)+2]`
-/

namespace A255032.P4865037677147881347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (n + 4) + 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A055998 (n + 2)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A255032.P4865037677147881347

/-! ## A255032.P9735797478687220723

`A007318(A000096(n))*A255036(A055998(n+2))`
-/

namespace A255032.P9735797478687220723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000096 n).toNat * A255036 (A055998 (n + 2)).toNat

end

end A255032.P9735797478687220723

/-! ## A255032.P14746762381889922952

`A008292(A001227(n+1))*A255036(A055998(n+2))`
-/

namespace A255032.P14746762381889922952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008292 (A001227 (n + 1)).toNat * A255036 (A055998 (n + 2)).toNat

end

end A255032.P14746762381889922952

/-! ## A255032.P3427306042011903044

`A079277(A000040(n+1))*A255036(A055998(n+2))`
-/

namespace A255032.P3427306042011903044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079277 (A000040 (n + 1)).toNat * A255036 (A055998 (n + 2)).toNat

end

end A255032.P3427306042011903044

/-!
# A255033: Number of (n+2)X(5+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255033, there is no canonical definition to state claims against.
-/

/-! ## A255033.P7923686969019015546

`A255036(∑[n+5]+6)`
-/

namespace A255033.P7923686969019015546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A255033.P7923686969019015546

/-! ## A255033.P12563316490832857522

`1/A255036(eq[4, A025581(n)]+1)^-1`
-/

namespace A255033.P12563316490832857522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A255036 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) ^ (-1 : ℤ)

end

end A255033.P12563316490832857522

/-! ## A255033.P1579093462340379613

`A255036(Δ[A264443(n)])+gcd(n, n+1)-1`
-/

namespace A255033.P1579093462340379613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (f1 (n + 1) - f1 n).toNat + ((Nat.gcd n (n + 1) : ℤ) - 1)

end

end A255033.P1579093462340379613

/-! ## A255033.P13081001895763392921

`A255036(Δ[A264443(n)])+A000007(n+1)`
-/

namespace A255033.P13081001895763392921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (f1 (n + 1) - f1 n).toNat + A000007 (n + 1)

end

end A255033.P13081001895763392921

/-! ## A255033.P17448090198257446424

`A255036(Δ[A264443(n)])%A101704(n+5)`
-/

namespace A255033.P17448090198257446424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255036 (f1 (n + 1) - f1 n).toNat) (A101704 (n + 5))

end

end A255033.P17448090198257446424

/-!
# A255034: Number of (n+2)X(6+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255034, there is no canonical definition to state claims against.
-/

/-! ## A255034.P14635885508187592148

`A255036((n+4)²-∑[n+1]+1)`
-/

namespace A255034.P14635885508187592148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (((n + 4) ^ 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A255034.P14635885508187592148

/-! ## A255034.P15964944131641560294

`lcm(A035214(n), A255036(A000217(n+6)-5))`
-/

namespace A255034.P15964944131641560294
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035214 n) (A255036 (A000217 (n + 6) - 5).toNat)

end

end A255034.P15964944131641560294

/-! ## A255034.P16854686731265341583

`A033999(n)²*A255036(A000217(n+6)-5)`
-/

namespace A255034.P16854686731265341583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A255036 (A000217 (n + 6) - 5).toNat

end

end A255034.P16854686731265341583

/-! ## A255034.P6994655843060676112

`char[A230414(n)]*A255036(A000217(n+6)-5)`
-/

namespace A255034.P6994655843060676112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255036 (A000217 (n + 6) - 5).toNat

end

end A255034.P6994655843060676112

/-! ## A255034.P18235760678310597986

`char[A286957(n)]*A255036(A000217(n+6)-5)`
-/

namespace A255034.P18235760678310597986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286957 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255036 (A000217 (n + 6) - 5).toNat

end

end A255034.P18235760678310597986

/-! ## A255034.P3090606065885966606

`char[n-A057944(n)]*A255036(A000217(n+6)-5)`
-/

namespace A255034.P3090606065885966606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A057944 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A255036 (A000217 (n + 6) - 5).toNat

end

end A255034.P3090606065885966606

/-! ## A255034.P7066179078019068125

`A255036(A000217(n+6)-5)+A008683(4*(n+1))`
-/

namespace A255034.P7066179078019068125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A000217 (n + 6) - 5).toNat + A008683 (4 * (n + 1))

end

end A255034.P7066179078019068125

/-! ## A255034.P9627280959764904083

`A255036(A000217(n+6)-5)/A008683(gcd(n, n+1))`
-/

namespace A255034.P9627280959764904083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255036 (A000217 (n + 6) - 5).toNat : ℚ) / (A008683 (Nat.gcd n (n + 1)) : ℚ)

end

end A255034.P9627280959764904083

/-!
# A255035: Number of (n+2)X(7+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255035, there is no canonical definition to state claims against.
-/

/-! ## A255035.P13778175520280118628

`A255036(A055999(n+4))`
-/

namespace A255035.P13778175520280118628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A055999 (n + 4)).toNat

end

end A255035.P13778175520280118628

/-! ## A255035.P15283495151770040266

`A255036(A046691(n+5)-2)`
-/

namespace A255035.P15283495151770040266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A046691 (n + 5) - 2).toNat

end

end A255035.P15283495151770040266

/-! ## A255035.P333965494240166536

`A255036(A000124(n+7)-7)`
-/

namespace A255035.P333965494240166536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A000124 (n + 7) - 7).toNat

end

end A255035.P333965494240166536

/-! ## A255035.P5272322835982884479

`A255036(n+5+A046691(n+4))`
-/

namespace A255035.P5272322835982884479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 ((n + 5 : ℤ) + A046691 (n + 4)).toNat

end

end A255035.P5272322835982884479

/-!
# A255037: Number of (2+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255037, there is no canonical definition to state claims against.
-/

/-! ## A255037.P7321420545608770914

`A255036(∑[n+1]+2)`
-/

namespace A255037.P7321420545608770914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255037.P7321420545608770914

/-! ## A255037.P17542706251221098965

`record[gcd(A002262(n), A255036(n+2))]`
-/

namespace A255037.P17542706251221098965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A255036 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255037.P17542706251221098965

/-! ## A255037.P16088409853992616393

`A255036(A000096(n)+3)/gcd(n, n+1)`
-/

namespace A255037.P16088409853992616393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255036 (A000096 n + 3).toNat : ℚ) / (Nat.gcd n (n + 1) : ℚ)

end

end A255037.P16088409853992616393

/-! ## A255037.P10003930681698817950

`A255036(A000096(n)+3)+n*A000007(n)`
-/

namespace A255037.P10003930681698817950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A000096 n + 3).toNat + (n : ℤ) * A000007 n

end

end A255037.P10003930681698817950

/-! ## A255037.P5678698992633196508

`A040001(2*n+1)*A255036(A133263(n+1))`
-/

namespace A255037.P5678698992633196508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n + 1) * A255036 (A133263 (n + 1)).toNat

end

end A255037.P5678698992633196508

/-!
# A255038: Number of (3+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255038, there is no canonical definition to state claims against.
-/

/-! ## A255038.P3977260465496354036

`A255036(∑[n+2]+4)`
-/

namespace A255038.P3977260465496354036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255038.P3977260465496354036

/-! ## A255038.P3593773303709538577

`record[A255036(9-∑[3-n])]`
-/

namespace A255038.P3593773303709538577
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (9 - ∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255038.P3593773303709538577

/-! ## A255038.P772509123605655178

`A255036(A167614(n+1))+A010673(12*n)`
-/

namespace A255038.P772509123605655178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A167614 (n + 1)).toNat + A010673 (12 * n)

end

end A255038.P772509123605655178

/-! ## A255038.P4487518222917066165

`or(A100910(n+6), A255036(A000124(n+2)+2))`
-/

namespace A255038.P4487518222917066165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100910 (n + 6)) (A255036 (A000124 (n + 2) + 2).toNat)

end

end A255038.P4487518222917066165

/-! ## A255038.P8572088670515804445

`A062557(2*A088207(n))*A255036(A000124(n+2)+2)`
-/

namespace A255038.P8572088670515804445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062557 (2 * A088207 n).toNat * A255036 (A000124 (n + 2) + 2).toNat

end

end A255038.P8572088670515804445

/-!
# A255039: Number of (4+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255039, there is no canonical definition to state claims against.
-/

/-! ## A255039.P15618329828212872167

`A255036(∑[n+3]+7)`
-/

namespace A255039.P15618329828212872167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A255039.P15618329828212872167

/-! ## A255039.P11331700234370700934

`A255036(A052905(n)+9)%A017143(n)`
-/

namespace A255039.P11331700234370700934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255036 (A052905 n + 9).toNat) (A017143 n)

end

end A255039.P11331700234370700934

/-! ## A255039.P4356959390003146189

`lcm(A006340(n), A255036(A052905(n)+9))`
-/

namespace A255039.P4356959390003146189
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006340 n) (A255036 (A052905 n + 9).toNat)

end

end A255039.P4356959390003146189

/-! ## A255039.P8032473306583064962

`lcm(A155040(n), A255036(A167614(n+2)+1))`
-/

namespace A255039.P8032473306583064962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A155040 n) (A255036 (A167614 (n + 2) + 1).toNat)

end

end A255039.P8032473306583064962

/-! ## A255039.P9502562394799539423

`A255036(A052905(n)+9)-A316524(n*(n+2)+1)`
-/

namespace A255039.P9502562394799539423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A052905 n + 9).toNat - A316524 (n * (n + 2) + 1)

end

end A255039.P9502562394799539423

/-! ## A255039.P2328379032847975749

`(2*n+1-A005843(n))*A255036(A052905(n)+9)`
-/

namespace A255039.P2328379032847975749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1 : ℤ) - A005843 n) * A255036 (A052905 n + 9).toNat

end

end A255039.P2328379032847975749

/-! ## A255039.P7729762617183787703

`A000041(gcd(n, n+1))*A255036(A167614(n+2)+1)`
-/

namespace A255039.P7729762617183787703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.gcd n (n + 1)) * A255036 (A167614 (n + 2) + 1).toNat

end

end A255039.P7729762617183787703

/-! ## A255039.P5384467978142668051

`A204162(A125102(n))*A255036(A052905(n)+9)`
-/

namespace A255039.P5384467978142668051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204162 (A125102 n).toNat * A255036 (A052905 n + 9).toNat

end

end A255039.P5384467978142668051

/-!
# A255040: Number of (5+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255040, there is no canonical definition to state claims against.
-/

/-! ## A255040.P15666168437023413655

`A255036(∑[n+4]+11)`
-/

namespace A255040.P15666168437023413655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A255040.P15666168437023413655

/-! ## A255040.P17238965198328351632

`lcm((-1)^n, A255036(A027379(n+2)+8))`
-/

namespace A255040.P17238965198328351632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A255036 (A027379 (n + 2) + 8).toNat)

end

end A255040.P17238965198328351632

/-! ## A255040.P13772243964747975975

`lcm(A035214(n), A255036(A056000(n)+15))`
-/

namespace A255040.P13772243964747975975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035214 n) (A255036 (A056000 n + 15).toNat)

end

end A255040.P13772243964747975975

/-! ## A255040.P4362344665201748488

`A255036(A056000(n)+15)%record[A255034(n+1)]`
-/

namespace A255040.P4362344665201748488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255036 (A056000 n + 15).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A255040.P4362344665201748488

/-! ## A255040.P17434522039787236919

`A255036(A000124(n+4)+4)%A127229(n+5)`
-/

namespace A255040.P17434522039787236919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255036 (A000124 (n + 4) + 4).toNat) (A127229 (n + 5))

end

end A255040.P17434522039787236919

/-! ## A255040.P7921573291041870130

`A133707(n+1)²*A255036(A027379(n+2)+8)`
-/

namespace A255040.P7921573291041870130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) ^ 2 * A255036 (A027379 (n + 2) + 8).toNat

end

end A255040.P7921573291041870130

/-! ## A255040.P6868271714648419564

`A001221(A020483(n))*A255036(A056000(n)+15)`
-/

namespace A255040.P6868271714648419564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A020483 n).toNat * A255036 (A056000 n + 15).toNat

end

end A255040.P6868271714648419564

/-! ## A255040.P2027852785700493650

`A001221(A215133(n+1))*A255036(A056000(n)+15)`
-/

namespace A255040.P2027852785700493650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A215133 (n + 1)).toNat * A255036 (A056000 n + 15).toNat

end

end A255040.P2027852785700493650

/-! ## A255040.P15895848044810574252

`A056926(A056000(n)+15)*A255036(A056000(n)+15)`
-/

namespace A255040.P15895848044810574252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A056000 n + 15).toNat * A255036 (A056000 n + 15).toNat

end

end A255040.P15895848044810574252

/-!
# A255041: Number of (6+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255041, there is no canonical definition to state claims against.
-/

/-! ## A255041.P13106649862401075606

`A255036(A056115(n)+21)`
-/

namespace A255041.P13106649862401075606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A056115 n + 21).toNat

end

end A255041.P13106649862401075606

/-! ## A255041.P8632008104474882399

`A255036(A167499(n+4)+1)`
-/

namespace A255041.P8632008104474882399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A167499 (n + 4) + 1).toNat

end

end A255041.P8632008104474882399

/-! ## A255041.P13747832243810030159

`A255036(A167614(n+4)+3)`
-/

namespace A255041.P13747832243810030159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A167614 (n + 4) + 3).toNat

end

end A255041.P13747832243810030159

/-! ## A255041.P12166759047423828277

`A255036(A134869(n+5)+5)`
-/

namespace A255041.P12166759047423828277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A134869 (n + 5) + 5).toNat

end

end A255041.P12166759047423828277

/-! ## A255041.P526403577745738420

`A255036(A000096(n+4)+7)`
-/

namespace A255041.P526403577745738420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A000096 (n + 4) + 7).toNat

end

end A255041.P526403577745738420

/-! ## A255041.P16058329659184418882

`A255036(A000217(n+5)+6)`
-/

namespace A255041.P16058329659184418882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A000217 (n + 5) + 6).toNat

end

end A255041.P16058329659184418882

/-! ## A255041.P18327830952920946896

`A255036(A255546(2*(n+3))+A103517(n+6))`
-/

namespace A255041.P18327830952920946896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A255546 (2 * (n + 3)) + A103517 (n + 6)).toNat

end

end A255041.P18327830952920946896

/-!
# A255042: Number of (7+2)X(n+2) 0..1 arrays with every 3X3 subblock sum of the two sums of the central row and central column minus the two minimums of the diagonal and antidiagonal nondecreasing horizontally, vertically and ne-to-sw antidiagonally.

The programs for A255042, there is no canonical definition to state claims against.
-/

/-! ## A255042.P359471464150751007

`A255036(A167487(n+5))`
-/

namespace A255042.P359471464150751007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A167487 (n + 5)).toNat

end

end A255042.P359471464150751007

/-! ## A255042.P1046009669442132036

`A255036(A167499(n+5)+2)`
-/

namespace A255042.P1046009669442132036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A167499 (n + 5) + 2).toNat

end

end A255042.P1046009669442132036

/-! ## A255042.P4892299019276976883

`A255036(A167614(n+5)+4)`
-/

namespace A255042.P4892299019276976883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A167614 (n + 5) + 4).toNat

end

end A255042.P4892299019276976883

/-! ## A255042.P1894482335323303326

`A255036(A000217(n+6)+7)`
-/

namespace A255042.P1894482335323303326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A000217 (n + 6) + 7).toNat

end

end A255042.P1894482335323303326

/-! ## A255042.P17482142311547269235

`A255036(A027379(n+4)+10)`
-/

namespace A255042.P17482142311547269235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A027379 (n + 4) + 10).toNat

end

end A255042.P17482142311547269235

/-! ## A255042.P11757381254729481537

`A255036(A000096(n+7)-7-2*n)`
-/

namespace A255042.P11757381254729481537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A000096 (n + 7) - 7 - (2 * n : ℤ)).toNat

end

end A255042.P11757381254729481537

/-! ## A255042.P3051664572943590184

`A255036(A020742(n+6)+A000096(n+3))`
-/

namespace A255042.P3051664572943590184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255036 (A020742 (n + 6) + A000096 (n + 3)).toNat

end

end A255042.P3051664572943590184

/-!
# A255043: a(n) = (5*9^n - 1)/2.

The programs for A255043, the canonical program `A255043.P11816968028690220401` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255043 has offset 0).

The definition of A255043 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*9^n-1)/2` (program `A255043.P8287702117058467559`, by `A255043.P8287702117058467559.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A255043.P8287702117058467559

`(5*9^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255043.P8287702117058467559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 9 ^ n : ℤ) - 1 : ℚ) / 2

end

end A255043.P8287702117058467559

namespace A255043

/-- `(5*9^n-1)/2` -/
def P8287702117058467559.Spec : Prop :=
  ∀ n, P8287702117058467559.a n = (A255043 n : ℚ)

theorem P8287702117058467559.correct : P8287702117058467559.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A255043, Nat.add_sub_cancel, A255043.P8287702117058467559.a, A255043.P11816968028690220401.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A255043, Nat.add_sub_cancel, A255043.P8287702117058467559.a, A255043.P11816968028690220401.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A255043

/-! ## A255043.P11816968028690220401

`10*a(n-1)-9*a(n-2)` with `a(0)=2, a(1)=22`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A255043

/-- `10*a(n-1)-9*a(n-2)` -/
def P11816968028690220401.Spec : Prop :=
  ∀ n, P11816968028690220401.a n = A255043 n

theorem P11816968028690220401.correct : P11816968028690220401.Spec := by
  intro n
  simp only [A255043]

end A255043

/-! ## A255043.P15252058042268016570

`2*A138894(n)`
-/

namespace A255043.P15252058042268016570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138894 n

end

end A255043.P15252058042268016570

namespace A255043

/-- `2*A138894(n)` -/
def P15252058042268016570.Spec : Prop :=
  ∀ n, P15252058042268016570.a n = A255043 n

end A255043

/-! ## A255043.P18355720271944064066

`ogf((2+2x)/(1-10x+9x^2))`
-/

namespace A255043.P18355720271944064066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 2] [1, -10, 9] n

end

end A255043.P18355720271944064066

namespace A255043

/-- `ogf((2+2x)/(1-10x+9x^2))` -/
def P18355720271944064066.Spec : Prop :=
  ∀ n, P18355720271944064066.a n = A255043 n

end A255043

/-! ## A255043.P17054452238743696912

`9*a(n-1)+4` with `a(0)=2`
-/

namespace A255043.P17054452238743696912
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  9 * a (n - 1) + 4

end

end A255043.P17054452238743696912

namespace A255043

/-- `9*a(n-1)+4` -/
def P17054452238743696912.Spec : Prop :=
  ∀ n, (P17054452238743696912.a n : ℤ) = A255043 n

end A255043

/-! ## A255043.P6249292512823082578

`lcm(9, a(n-1))+4` with `a(0)=2`
-/

namespace A255043.P6249292512823082578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Nat.lcm 9 (a (n - 1)) + 4

end

end A255043.P6249292512823082578

namespace A255043

/-- `lcm(9, a(n-1))+4` -/
def P6249292512823082578.Spec : Prop :=
  ∀ n, (P6249292512823082578.a n : ℤ) = A255043 n

end A255043

/-! ## A255043.P18162424964987194847

`∑[9*a(n-1)]` with `a(0)=2, a(1)=20`
-/

namespace A255043.P18162424964987194847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 20] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255043.P18162424964987194847

namespace A255043

/-- `∑[9*a(n-1)]` -/
def P18162424964987194847.Spec : Prop :=
  ∀ n, (P18162424964987194847.a n : ℤ) = A255043 n

end A255043

/-! ## A255043.P3987269497980595713

`record[-xor(1, 3*a(n-1))]` with `a(0)=2`
-/

namespace A255043.P3987269497980595713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  -Int.xor 1 (3 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255043.P3987269497980595713

namespace A255043

/-- `record[-xor(1, 3*a(n-1))]` -/
def P3987269497980595713.Spec : Prop :=
  ∀ n, P3987269497980595713.a n = A255043 n

end A255043

/-! ## A255043.P15852537264784535220

`a(n-1)/(1/3)²+4` with `a(0)=2`
-/

namespace A255043.P15852537264784535220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 + 4

end

end A255043.P15852537264784535220

namespace A255043

/-- `a(n-1)/(1/3)²+4` -/
def P15852537264784535220.Spec : Prop :=
  ∀ n, P15852537264784535220.a n = (A255043 n : ℚ)

end A255043

/-! ## A255043.P13976887426631025419

`4-(a(n-1)-10*a(n-1))` with `a(0)=2`
-/

namespace A255043.P13976887426631025419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 - (a (n - 1) - 10 * a (n - 1))

end

end A255043.P13976887426631025419

namespace A255043

/-- `4-(a(n-1)-10*a(n-1))` -/
def P13976887426631025419.Spec : Prop :=
  ∀ n, P13976887426631025419.a n = A255043 n

end A255043

/-! ## A255043.P15213175843482170573

`A135423(n)-1`
-/

namespace A255043.P15213175843482170573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135423 n - 1

end

end A255043.P15213175843482170573

namespace A255043

/-- `A135423(n)-1` -/
def P15213175843482170573.Spec : Prop :=
  ∀ n, P15213175843482170573.a n = A255043 n

end A255043

/-! ## A255043.P1196243851271988429

`A060816(Δ[n²])`
-/

namespace A255043.P1196243851271988429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060816 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A255043.P1196243851271988429

namespace A255043

/-- `A060816(Δ[n²])` -/
def P1196243851271988429.Spec : Prop :=
  ∀ n, P1196243851271988429.a n = A255043 n

end A255043

/-! ## A255043.P731659483051889963

`A321573(Δ[n²])`
-/

namespace A255043.P731659483051889963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321573 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A255043.P731659483051889963

namespace A255043

/-- `A321573(Δ[n²])` -/
def P731659483051889963.Spec : Prop :=
  ∀ n, P731659483051889963.a n = A255043 n

end A255043

/-! ## A255043.P5236298978694235671

`A255044(∑[n+3])`
-/

namespace A255043.P5236298978694235671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255044 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A255043.P5236298978694235671

namespace A255043

/-- `A255044(∑[n+3])` -/
def P5236298978694235671.Spec : Prop :=
  ∀ n, P5236298978694235671.a n = A255043 n

end A255043

/-! ## A255043.P13693843847470612636

`∑[2*A003952(n)]`
-/

namespace A255043.P13693843847470612636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255043.P13693843847470612636

namespace A255043

/-- `∑[2*A003952(n)]` -/
def P13693843847470612636.Spec : Prop :=
  ∀ n, P13693843847470612636.a n = A255043 n

end A255043

/-! ## A255043.P17176865838450268177

`A134931(2*n)+1`
-/

namespace A255043.P17176865838450268177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134931 (2 * n) + 1

end

end A255043.P17176865838450268177

namespace A255043

/-- `A134931(2*n)+1` -/
def P17176865838450268177.Spec : Prop :=
  ∀ n, P17176865838450268177.a n = A255043 n

end A255043

/-! ## A255043.P2420952986068626593

`A137340(2*n)+1`
-/

namespace A255043.P2420952986068626593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137340 (2 * n) + 1

end

end A255043.P2420952986068626593

namespace A255043

/-- `A137340(2*n)+1` -/
def P2420952986068626593.Spec : Prop :=
  ∀ n, P2420952986068626593.a n = A255043 n

end A255043

/-! ## A255043.P14843429821934719515

`A096019(2*n)-1`
-/

namespace A255043.P14843429821934719515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096019 (2 * n) - 1

end

end A255043.P14843429821934719515

namespace A255043

/-- `A096019(2*n)-1` -/
def P14843429821934719515.Spec : Prop :=
  ∀ n, P14843429821934719515.a n = A255043 n

end A255043

/-! ## A255043.P3852660601496368800

`2*(A137483(n)-1)`
-/

namespace A255043.P3852660601496368800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A137483 n - 1)

end

end A255043.P3852660601496368800

namespace A255043

/-- `2*(A137483(n)-1)` -/
def P3852660601496368800.Spec : Prop :=
  ∀ n, P3852660601496368800.a n = A255043 n

end A255043

/-! ## A255043.P16529804090156579385

`A181655(4*n+1)`
-/

namespace A255043.P16529804090156579385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181655 (4 * n + 1)

end

end A255043.P16529804090156579385

namespace A255043

/-- `A181655(4*n+1)` -/
def P16529804090156579385.Spec : Prop :=
  ∀ n, P16529804090156579385.a n = A255043 n

end A255043

/-!
# A255045: a(n) = (1 + A160552(n))/2.

The programs for A255045, there is no canonical definition to state claims against.
-/

/-! ## A255045.P10017743577353828389

`(1+A160552(n+1))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255045.P10017743577353828389
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A160552 (n + 1) : ℚ) / 2

end

end A255045.P10017743577353828389

/-! ## A255045.P14516494791434839928

`ceil(A160552(n+1)/2)`
-/

namespace A255045.P14516494791434839928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A160552 (n + 1) : ℚ) / 2⌉

end

end A255045.P14516494791434839928

/-! ## A255045.P7666818830627440284

`A162777(n)+2-a(n-1)` with `a(0)=1`
-/

namespace A255045.P7666818830627440284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A162777 n + (2 - a (n - 1))

end

end A255045.P7666818830627440284

/-! ## A255045.P4687612026901734530

`a(n-2)+Δ[A139251(n)/2]` with `a(0)=1, a(1)=1`
-/

namespace A255045.P4687612026901734530
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139251 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 2) + (f1 (n + 1) - f1 n)

end

end A255045.P4687612026901734530

/-! ## A255045.P2850160744030530279

`A139251(n+1)/2+1-a(n-1)` with `a(0)=1`
-/

namespace A255045.P2850160744030530279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A139251 (n + 1) : ℚ) / 2 + (1 - a (n - 1))

end

end A255045.P2850160744030530279

/-! ## A255045.P7700833595027680068

`ceil(Δ[A255747(n)/2])`
-/

namespace A255045.P7700833595027680068
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255747 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A255045.P7700833595027680068

/-! ## A255045.P14760287391686500822

`ceil(A151568(n+1)/4)`
-/

namespace A255045.P14760287391686500822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151568 (n + 1) : ℚ) / 4⌉

end

end A255045.P14760287391686500822

/-! ## A255045.P9950972657254628454

`ceil(A151569(n+1)/6)`
-/

namespace A255045.P9950972657254628454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151569 (n + 1) : ℚ) / 6⌉

end

end A255045.P9950972657254628454

/-! ## A255045.P2868087846294438849

`A255747(n+1)-A152998(n)`
-/

namespace A255045.P2868087846294438849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 (n + 1) - A152998 n

end

end A255045.P2868087846294438849

/-! ## A255045.P16115956704255378340

`ceil(A169708(n+1)/8)`
-/

namespace A255045.P16115956704255378340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A169708 (n + 1) : ℚ) / 8⌉

end

end A255045.P16115956704255378340

/-! ## A255045.P11598145725716093428

`ceil(A170903(n+1)/4)`
-/

namespace A255045.P11598145725716093428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A170903 (n + 1) : ℚ) / 4⌉

end

end A255045.P11598145725716093428

/-! ## A255045.P14708492563981695220

`A255046(A053645(n+1))`
-/

namespace A255045.P14708492563981695220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255046 (A053645 (n + 1)).toNat

end

end A255045.P14708492563981695220

/-! ## A255045.P6033298640570076971

`A000463(Δ[A255747(n)])`
-/

namespace A255045.P6033298640570076971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (f1 (n + 1) - f1 n).toNat

end

end A255045.P6033298640570076971

/-! ## A255045.P10841501246842907261

`A001057(Δ[A255747(n)])`
-/

namespace A255045.P10841501246842907261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (f1 (n + 1) - f1 n).toNat

end

end A255045.P10841501246842907261

/-! ## A255045.P6901142534001680543

`A003602(Δ[A255747(n)])`
-/

namespace A255045.P6901142534001680543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255747 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (f1 (n + 1) - f1 n).toNat

end

end A255045.P6901142534001680543

/-! ## A255045.P10430912794738959455

`A000463(A160552(n+1))`
-/

namespace A255045.P10430912794738959455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A160552 (n + 1)).toNat

end

end A255045.P10430912794738959455

/-! ## A255045.P16954993029808961358

`A001281(A160552(n+1)+1)`
-/

namespace A255045.P16954993029808961358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A160552 (n + 1) + 1).toNat

end

end A255045.P16954993029808961358

/-! ## A255045.P7319846760863565104

`A151548(n)-(A160552(n)+A151549(n))`
-/

namespace A255045.P7319846760863565104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n - (A160552 n + A151549 n)

end

end A255045.P7319846760863565104

/-! ## A255045.P17040195675354593428

`A160552(n+1)+A160552(n)-A151549(n)`
-/

namespace A255045.P17040195675354593428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (n + 1) + (A160552 n - A151549 n)

end

end A255045.P17040195675354593428

/-! ## A255045.P8354374664534021978

`A255046(n)-A160552(n)`
-/

namespace A255045.P8354374664534021978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255046 n - A160552 n

end

end A255045.P8354374664534021978

/-!
# A255046: a(n) = (1 + A151548(n))/2.

The programs for A255046, there is no canonical definition to state claims against.
-/

/-! ## A255046.P4643225379763783422

`(1+A151548(n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255046.P4643225379763783422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + A151548 n : ℚ) / 2

end

end A255046.P4643225379763783422

/-! ## A255046.P13202113545224080820

`A151549(n)+1`
-/

namespace A255046.P13202113545224080820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151549 n + 1

end

end A255046.P13202113545224080820

/-! ## A255046.P7984685153630783657

`ceil(A151548(n)/2)`
-/

namespace A255046.P7984685153630783657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A151548 n : ℚ) / 2⌉

end

end A255046.P7984685153630783657

/-! ## A255046.P18102025066144137347

`round(A151548(2*n-n)/2)`
-/

namespace A255046.P18102025066144137347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A151548 (2 * n - n) : ℚ) / 2)

end

end A255046.P18102025066144137347

/-! ## A255046.P4013903345692577944

`2*A152980(n-1)+1-a(n-1)` with `a(0)=1`
-/

namespace A255046.P4013903345692577944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A152980 (n - 1) + 1 - a (n - 1)

end

end A255046.P4013903345692577944

/-! ## A255046.P7903128090919541544

`floor(A160552(lt[n, 2*and(n, 2*n)]-1)/2)+1`
-/

namespace A255046.P7903128090919541544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A160552 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - 1) : ℚ) / 2⌋ + 1

end

end A255046.P7903128090919541544

/-! ## A255046.P17664642404973878632

`A255045(A206332(n+1))`
-/

namespace A255046.P17664642404973878632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255045 (A206332 (n + 1)).toNat

end

end A255046.P17664642404973878632

/-! ## A255046.P17862749126643222334

`A255045(A004760(n+2))`
-/

namespace A255046.P17862749126643222334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255045 (A004760 (n + 2)).toNat

end

end A255046.P17862749126643222334

/-! ## A255046.P1642978801023344644

`A151548(n)-A151549(n)`
-/

namespace A255046.P1642978801023344644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n - A151549 n

end

end A255046.P1642978801023344644

/-! ## A255046.P12952329985517549682

`A246336(n)-A159793(n)`
-/

namespace A255046.P12952329985517549682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246336 n - A159793 n

end

end A255046.P12952329985517549682

/-! ## A255046.P1031638610521295885

`A255045(n+1)+A160552(n)`
-/

namespace A255046.P1031638610521295885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255045 (n + 1) + A160552 n

end

end A255046.P1031638610521295885

/-! ## A255046.P1899584705303412876

`A255045(n+1)+A151548(n)-A139251(n+1)`
-/

namespace A255046.P1899584705303412876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255045 (n + 1) + (A151548 n - A139251 (n + 1))

end

end A255046.P1899584705303412876

/-! ## A255046.P10570316084738163895

`A000463(A151548(n))`
-/

namespace A255046.P10570316084738163895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A151548 n).toNat

end

end A255046.P10570316084738163895

/-! ## A255046.P8345860081435344425

`A001281(A151548(n)+1)`
-/

namespace A255046.P8345860081435344425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A151548 n + 1).toNat

end

end A255046.P8345860081435344425

/-! ## A255046.P9549436981976730992

`A004525(A151548(n)+1)`
-/

namespace A255046.P9549436981976730992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A151548 n + 1).toNat

end

end A255046.P9549436981976730992

/-! ## A255046.P8765459416622616281

`A004524(A151548(n)+2)`
-/

namespace A255046.P8765459416622616281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A151548 n + 2).toNat

end

end A255046.P8765459416622616281

/-!
# A255047: 1 together with the positive terms of A000225.

The programs for A255047, the canonical program `A255047.P13163507632883428523` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255047 has offset 0).

The definition of A255047 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255047.P13163507632883428523

`or(1, 2^n-1)`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A255047

/-- `or(1, 2^n-1)` -/
def P13163507632883428523.Spec : Prop :=
  ∀ n, P13163507632883428523.a n = A255047 n

theorem P13163507632883428523.correct : P13163507632883428523.Spec := by
  intro n
  simp only [A255047]

end A255047

/-! ## A255047.P10118758583110003418

`abs(or(1, -2^n))`
-/

namespace A255047.P10118758583110003418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(2 ^ n : ℤ))|

end

end A255047.P10118758583110003418

namespace A255047

/-- `abs(or(1, -2^n))` -/
def P10118758583110003418.Spec : Prop :=
  ∀ n, P10118758583110003418.a n = A255047 n

end A255047

/-! ## A255047.P10695964221097242145

`-or(1, -2^n)`
-/

namespace A255047.P10695964221097242145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (-(2 ^ n : ℤ))

end

end A255047.P10695964221097242145

namespace A255047

/-- `-or(1, -2^n)` -/
def P10695964221097242145.Spec : Prop :=
  ∀ n, P10695964221097242145.a n = A255047 n

end A255047

/-! ## A255047.P3578454429842153517

`ceil(abs(2^n-ϕ))`
-/

namespace A255047.P3578454429842153517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(2 ^ n : ℝ) - Real.goldenRatio|⌉

end

end A255047.P3578454429842153517

namespace A255047

/-- `ceil(abs(2^n-ϕ))` -/
def P3578454429842153517.Spec : Prop :=
  ∀ n, P3578454429842153517.a n = A255047 n

end A255047

/-! ## A255047.P14178062083914636813

`lcm(2, (-2)^n)-1`
-/

namespace A255047.P14178062083914636813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 ((-2) ^ n) : ℤ) - 1

end

end A255047.P14178062083914636813

namespace A255047

/-- `lcm(2, (-2)^n)-1` -/
def P14178062083914636813.Spec : Prop :=
  ∀ n, P14178062083914636813.a n = A255047 n

end A255047

/-! ## A255047.P16711287589114965424

`2^n-ceil(sin(n)²)`
-/

namespace A255047.P16711287589114965424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A255047.P16711287589114965424

namespace A255047

/-- `2^n-ceil(sin(n)²)` -/
def P16711287589114965424.Spec : Prop :=
  ∀ n, P16711287589114965424.a n = A255047 n

end A255047

/-! ## A255047.P11882601050877219534

`round(2^n-atan(atan(n)))`
-/

namespace A255047.P11882601050877219534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℝ) - Real.arctan (Real.arctan (n : ℝ)))

end

end A255047.P11882601050877219534

namespace A255047

/-- `round(2^n-atan(atan(n)))` -/
def P11882601050877219534.Spec : Prop :=
  ∀ n, P11882601050877219534.a n = A255047 n

end A255047

/-! ## A255047.P15151361186674472798

`ogf((1-2x+2x^2)/(1-3x+2x^2))`
-/

namespace A255047.P15151361186674472798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 2] [1, -3, 2] n

end

end A255047.P15151361186674472798

namespace A255047

/-- `ogf((1-2x+2x^2)/(1-3x+2x^2))` -/
def P15151361186674472798.Spec : Prop :=
  ∀ n, P15151361186674472798.a n = A255047 n

end A255047

/-! ## A255047.P15150489192785840564

`2^n-floor(atan(n+1))`
-/

namespace A255047.P15150489192785840564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A255047.P15150489192785840564

namespace A255047

/-- `2^n-floor(atan(n+1))` -/
def P15150489192785840564.Spec : Prop :=
  ∀ n, P15150489192785840564.a n = A255047 n

end A255047

/-! ## A255047.P5163357646998511449

`2^n-(1-floor(acot(n)))`
-/

namespace A255047.P5163357646998511449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - (1 - ⌊SequenceMachineLib.acot (n : ℝ)⌋)

end

end A255047.P5163357646998511449

namespace A255047

/-- `2^n-(1-floor(acot(n)))` -/
def P5163357646998511449.Spec : Prop :=
  ∀ n, P5163357646998511449.a n = A255047 n

end A255047

/-! ## A255047.P9638151296483594975

`1+2*a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A255047.P9638151296483594975
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 + 2 * a (n - 1)

end

end A255047.P9638151296483594975

namespace A255047

/-- `1+2*a(n-1)` -/
def P9638151296483594975.Spec : Prop :=
  ∀ n, (P9638151296483594975.a n : ℤ) = A255047 n

end A255047

/-! ## A255047.P4221117899929342122

`xor(1, 2*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A255047.P4221117899929342122
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Nat.xor 1 (2 * a (n - 1))

end

end A255047.P4221117899929342122

namespace A255047

/-- `xor(1, 2*a(n-1))` -/
def P4221117899929342122.Spec : Prop :=
  ∀ n, (P4221117899929342122.a n : ℤ) = A255047 n

end A255047

/-! ## A255047.P6914689440426521134

`∑[2*a(n-1)]` with `a(0)=1, a(1)=0, a(2)=2`
-/

namespace A255047.P6914689440426521134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 2] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255047.P6914689440426521134

namespace A255047

/-- `∑[2*a(n-1)]` -/
def P6914689440426521134.Spec : Prop :=
  ∀ n, (P6914689440426521134.a n : ℤ) = A255047 n

end A255047

/-! ## A255047.P16960820118586344763

`2^n-a(n%2)` with `a(0)=1, a(1)=1`
-/

namespace A255047.P16960820118586344763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (2 ^ n : ℤ) - a (n % 2)

end

end A255047.P16960820118586344763

namespace A255047

/-- `2^n-a(n%2)` -/
def P16960820118586344763.Spec : Prop :=
  ∀ n, P16960820118586344763.a n = A255047 n

end A255047

/-! ## A255047.P9470983885623867230

`2^n-n²%(n+1)`
-/

namespace A255047.P9470983885623867230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A255047.P9470983885623867230

namespace A255047

/-- `2^n-n²%(n+1)` -/
def P9470983885623867230.Spec : Prop :=
  ∀ n, P9470983885623867230.a n = A255047 n

end A255047

/-! ## A255047.P12500133209824137688

`2^n-a(∑[(-1)^n])` with `a(0)=1`
-/

namespace A255047.P12500133209824137688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) - a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255047.P12500133209824137688

namespace A255047

/-- `2^n-a(∑[(-1)^n])` -/
def P12500133209824137688.Spec : Prop :=
  ∀ n, P12500133209824137688.a n = A255047 n

end A255047

/-! ## A255047.P7212704174936109356

`2^n-gcd(2, a(n-1))` with `a(0)=1`
-/

namespace A255047.P7212704174936109356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) - (Int.gcd 2 (a (n - 1)) : ℤ)

end

end A255047.P7212704174936109356

namespace A255047

/-- `2^n-gcd(2, a(n-1))` -/
def P7212704174936109356.Spec : Prop :=
  ∀ n, P7212704174936109356.a n = A255047 n

end A255047

/-! ## A255047.P15331247988899579914

`2^n-and(1, a(n-1))` with `a(0)=1`
-/

namespace A255047.P15331247988899579914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 ^ n : ℤ) - Int.land 1 (a (n - 1))

end

end A255047.P15331247988899579914

namespace A255047

/-- `2^n-and(1, a(n-1))` -/
def P15331247988899579914.Spec : Prop :=
  ∀ n, P15331247988899579914.a n = A255047 n

end A255047

/-! ## A255047.P7865485423008896055

`3-2*(1-a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A255047.P7865485423008896055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  3 - 2 * (1 - a (n - 1))

end

end A255047.P7865485423008896055

namespace A255047

/-- `3-2*(1-a(n-1))` -/
def P7865485423008896055.Spec : Prop :=
  ∀ n, P7865485423008896055.a n = A255047 n

end A255047

/-! ## A255047.P5800723487156748359

`a(n-1)+2^(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A255047.P5800723487156748359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A255047.P5800723487156748359

namespace A255047

/-- `a(n-1)+2^(n-1)` -/
def P5800723487156748359.Spec : Prop :=
  ∀ n, P5800723487156748359.a n = (A255047 n : ℚ)

end A255047

/-!
# A255048: Partial sums of A253088.

The programs for A255048, there is no canonical definition to state claims against.
-/

/-! ## A255048.P14065173211517462329

`∑[A253088(n)]`
-/

namespace A255048.P14065173211517462329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255048.P14065173211517462329

/-! ## A255048.P3088106790770132706

`A253088(n)+a(A023443(n))` with `a(0)=1`
-/

namespace A255048.P3088106790770132706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253088 n + a (A023443 n).toNat

end

end A255048.P3088106790770132706

/-! ## A255048.P8989640426350445272

`A253088(n)+a(abs(A024000(n)))` with `a(0)=1`
-/

namespace A255048.P8989640426350445272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253088 n + a |A024000 n|.toNat

end

end A255048.P8989640426350445272

/-! ## A255048.P12862485497978510474

`A253088(n)+a(n-A057427(n))` with `a(0)=1`
-/

namespace A255048.P12862485497978510474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253088 n + a ((n : ℤ) - A057427 n).toNat

end

end A255048.P12862485497978510474

/-! ## A255048.P1851794510186773693

`a(n-1)+A253088(n)+A000007(n)` with `a(0)=1`
-/

namespace A255048.P1851794510186773693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A253088 n + A000007 n)

end

end A255048.P1851794510186773693

/-! ## A255048.P4227507619272909235

`a(n-1)+A178334(n)*A253088(n)` with `a(0)=1`
-/

namespace A255048.P4227507619272909235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A178334 n * A253088 n

end

end A255048.P4227507619272909235

/-! ## A255048.P3139125111797917079

`a(n-1)+A253088(n)%A087348(n+1)` with `a(0)=1`
-/

namespace A255048.P3139125111797917079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + Int.tmod (A253088 n) (A087348 (n + 1))

end

end A255048.P3139125111797917079

/-! ## A255048.P252614638733591092

`a(n-1)+A253088(n)+and(2, A000035(n))` with `a(0)=1`
-/

namespace A255048.P252614638733591092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A253088 n + Int.land 2 (A000035 n))

end

end A255048.P252614638733591092

/-! ## A255048.P13210548800573879741

`a(n-1)+A253088(n)+A008683(32*(n+1))` with `a(0)=1`
-/

namespace A255048.P13210548800573879741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A253088 n + A008683 (32 * (n + 1)))

end

end A255048.P13210548800573879741

/-! ## A255048.P11428722331445194042

`a(n-1)+A253088(n)+A132896(A000217(n))` with `a(0)=1`
-/

namespace A255048.P11428722331445194042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A253088 n + A132896 (A000217 n).toNat)

end

end A255048.P11428722331445194042

/-!
# A255049: a(n) = 2*A160552(n).

The programs for A255049, there is no canonical definition to state claims against.
-/

/-! ## A255049.P2941455209952558093

`2*A160552(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255049.P2941455209952558093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A160552 n

end

end A255049.P2941455209952558093

/-! ## A255049.P16934951820722243950

`2*A266529(Δ[n²])`
-/

namespace A255049.P16934951820722243950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A266529 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A255049.P16934951820722243950

/-! ## A255049.P5528680249201710294

`A151568(n)-(-1)^n`
-/

namespace A255049.P5528680249201710294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151568 n - (-1) ^ n

end

end A255049.P5528680249201710294

/-! ## A255049.P8122924060646238848

`2*round(A151569(n)/3)`
-/

namespace A255049.P8122924060646238848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.roundAway ((A151569 n : ℚ) / 3)

end

end A255049.P8122924060646238848

/-! ## A255049.P3162496935066945685

`lcm(2, A160552(char[1]+n))`
-/

namespace A255049.P3162496935066945685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A160552 ((if ∃ j, f1 j = n then 1 else 0) + n))

end

end A255049.P3162496935066945685

/-! ## A255049.P1693648436551741497

`2*(A151704(n)-(-1)^n)`
-/

namespace A255049.P1693648436551741497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A151704 n - (-1) ^ n)

end

end A255049.P1693648436551741497

/-! ## A255049.P13756560074267499320

`2*A139251(n)-a(n-1)` with `a(0)=0`
-/

namespace A255049.P13756560074267499320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * A139251 n - a (n - 1)

end

end A255049.P13756560074267499320

/-! ## A255049.P8523434801508718477

`abs(a(n-1)-Δ[A187220(n)])` with `a(0)=0`
-/

namespace A255049.P8523434801508718477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187220 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |a (n - 1) - (f1 (n + 1) - f1 n)|

end

end A255049.P8523434801508718477

/-! ## A255049.P8314322087615534354

`A005843(A160552(n))`
-/

namespace A255049.P8314322087615534354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A160552 n).toNat

end

end A255049.P8314322087615534354

/-! ## A255049.P2364747720985651058

`A151569(n)-A151704(n)`
-/

namespace A255049.P2364747720985651058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151569 n - A151704 n

end

end A255049.P2364747720985651058

/-! ## A255049.P935556909848147064

`xor(A010684(n), A151568(n))`
-/

namespace A255049.P935556909848147064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010684 n) (A151568 n)

end

end A255049.P935556909848147064

/-! ## A255049.P12571594353449735572

`Δ[A139250(n)-A160552(n)]`
-/

namespace A255049.P12571594353449735572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139250 n - A160552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255049.P12571594353449735572

/-! ## A255049.P11891499391453541552

`A151548(n)-A160552(n+1)`
-/

namespace A255049.P11891499391453541552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151548 n - A160552 (n + 1)

end

end A255049.P11891499391453541552

/-! ## A255049.P5806594512748936362

`2*(A151569(n)-A151568(n))`
-/

namespace A255049.P5806594512748936362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A151569 n - A151568 n)

end

end A255049.P5806594512748936362

/-! ## A255049.P10440696048640765901

`2*(A151568(n)-A151704(n))`
-/

namespace A255049.P10440696048640765901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A151568 n - A151704 n)

end

end A255049.P10440696048640765901

/-! ## A255049.P3220584381270294306

`2*(A151861(n)-A151859(n))`
-/

namespace A255049.P3220584381270294306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A151861 n - A151859 n)

end

end A255049.P3220584381270294306

/-! ## A255049.P13146109348844709589

`2*(A151865(n)-A151863(n))`
-/

namespace A255049.P13146109348844709589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A151865 n - A151863 n)

end

end A255049.P13146109348844709589

/-! ## A255049.P5866716539341916714

`A139251(n+1)-A160762(n+1)`
-/

namespace A255049.P5866716539341916714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139251 (n + 1) - A160762 (n + 1)

end

end A255049.P5866716539341916714

/-! ## A255049.P17407611162521949860

`A169707(n+1)-A187220(n+1)`
-/

namespace A255049.P17407611162521949860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169707 (n + 1) - A187220 (n + 1)

end

end A255049.P17407611162521949860

/-! ## A255049.P11989306941955531152

`A266529(2*n+1)+A266529(2*(n+1))`
-/

namespace A255049.P11989306941955531152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266529 (2 * n + 1) + A266529 (2 * (n + 1))

end

end A255049.P11989306941955531152

/-!
# A255050: G.f.: Product_{j>=1} 1/(1-x^j)^binomial(j+3,3).

The programs for A255050, there is no canonical definition to state claims against.
-/

/-! ## A255050.P2548044601188552074

`record[gcd(A049600(n+9), A075196(n+6))]`
-/

namespace A255050.P2548044601188552074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049600 (n + 9)) (A075196 (n + 6))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255050.P2548044601188552074

/-! ## A255050.P1105055973889045183

`A075196(A055998(n+1))-C(2, n+2)`
-/

namespace A255050.P1105055973889045183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (A055998 (n + 1)).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A255050.P1105055973889045183

/-! ## A255050.P12863458562295465306

`A075196(A253145(n)+A103517(n))`
-/

namespace A255050.P12863458562295465306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (A253145 n + A103517 n).toNat

end

end A255050.P12863458562295465306

/-! ## A255050.P12375235657245991588

`A075196(A055998(n+1))-A000007(n)`
-/

namespace A255050.P12375235657245991588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (A055998 (n + 1)).toNat - A000007 n

end

end A255050.P12375235657245991588

/-! ## A255050.P6257280047107604206

`A075196(A052905(n)+2-A000038(n))`
-/

namespace A255050.P6257280047107604206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (A052905 n + (2 - A000038 n)).toNat

end

end A255050.P6257280047107604206

/-! ## A255050.P16934587411959773827

`A075196(2-(A000038(n)-A052905(n)))`
-/

namespace A255050.P16934587411959773827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (2 - (A000038 n - A052905 n)).toNat

end

end A255050.P16934587411959773827

/-! ## A255050.P2862020459923420508

`A075196(A055998(n+1))-A036987(2*n)`
-/

namespace A255050.P2862020459923420508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (A055998 (n + 1)).toNat - A036987 (2 * n)

end

end A255050.P2862020459923420508

/-! ## A255050.P17522139108138116035

`A075196(A055998(n+1))-A199398(A008574(n))`
-/

namespace A255050.P17522139108138116035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (A055998 (n + 1)).toNat - A199398 (A008574 n).toNat

end

end A255050.P17522139108138116035

/-! ## A255050.P5030836645816377865

`A075196(A055998(n+1))-A199398(A022144(n))`
-/

namespace A255050.P5030836645816377865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (A055998 (n + 1)).toNat - A199398 (A022144 n).toNat

end

end A255050.P5030836645816377865

/-! ## A255050.P8671251286983336274

`A075196(A055998(n+1))/A014963(A016825(n))`
-/

namespace A255050.P8671251286983336274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075196 (A055998 (n + 1)).toNat : ℚ) / (A014963 (A016825 n).toNat : ℚ)

end

end A255050.P8671251286983336274

/-! ## A255050.P717766346621385423

`A075196(A055998(n+1))/A014963(A017545(n))`
-/

namespace A255050.P717766346621385423
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075196 (A055998 (n + 1)).toNat : ℚ) / (A014963 (A017545 n).toNat : ℚ)

end

end A255050.P717766346621385423

/-!
# A255051: a(1)=1, a(n+1) = a(n)/gcd(a(n),n) if this GCD is > 1, else a(n+1) = a(n) + n + 1.

The programs for A255051, the canonical program `A255051.P17806579451308869438` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255051 has offset 1).

The definition of A255051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A255051.P17806579451308869438

`gcd(2*or(3, n), ∑[n+1])`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A255051

/-- `gcd(2*or(3, n), ∑[n+1])` -/
def P17806579451308869438.Spec : Prop :=
  ∀ n, (P17806579451308869438.a n : ℤ) = A255051 (n + 1)

theorem P17806579451308869438.correct : P17806579451308869438.Spec := by
  intro n
  simp only [A255051, Nat.add_sub_cancel]

end A255051

/-! ## A255051.P17489730003160552276

`gcd(xor(3, n)+n+3, ∑[n+1]²)`
-/

namespace A255051.P17489730003160552276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.xor 3 n + (n + 3)) ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2)

end

end A255051.P17489730003160552276

namespace A255051

/-- `gcd(xor(3, n)+n+3, ∑[n+1]²)` -/
def P17489730003160552276.Spec : Prop :=
  ∀ n, (P17489730003160552276.a n : ℤ) = A255051 (n + 1)

end A255051

/-! ## A255051.P5874004121234115839

`2*or(3, n-1)/a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A255051.P5874004121234115839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  2 * ((Int.lor 3 ((n : ℤ) - 1) : ℚ) / a (n - 2))

end

end A255051.P5874004121234115839

namespace A255051

/-- `2*or(3, n-1)/a(n-2)` -/
def P5874004121234115839.Spec : Prop :=
  ∀ n, P5874004121234115839.a n = (A255051 (n + 1) : ℚ)

end A255051

/-! ## A255051.P18148630481107327486

`(1-xor(3, -n)+n)/a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A255051.P18148630481107327486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (1 - Int.xor 3 (-(n : ℤ)) + (n : ℤ) : ℚ) / a (n - 2)

end

end A255051.P18148630481107327486

namespace A255051

/-- `(1-xor(3, -n)+n)/a(n-2)` -/
def P18148630481107327486.Spec : Prop :=
  ∀ n, P18148630481107327486.a n = (A255051 (n + 1) : ℚ)

end A255051

/-! ## A255051.P1749914172650737998

`gcd(a(n-1)+n+1, and(2, n-1))` with `a(0)=1`
-/

namespace A255051.P1749914172650737998
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + (n + 1) : ℤ) (Int.land 2 ((n : ℤ) - 1))

end

end A255051.P1749914172650737998

namespace A255051

/-- `gcd(a(n-1)+n+1, and(2, n-1))` -/
def P1749914172650737998.Spec : Prop :=
  ∀ n, (P1749914172650737998.a n : ℤ) = A255051 (n + 1)

end A255051

/-! ## A255051.P24213072799993203

`(1-(xor(3, -n)-n))/a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A255051.P24213072799993203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (1 - (Int.xor 3 (-(n : ℤ)) - (n : ℤ)) : ℚ) / a (n - 2)

end

end A255051.P24213072799993203

namespace A255051

/-- `(1-(xor(3, -n)-n))/a(n-2)` -/
def P24213072799993203.Spec : Prop :=
  ∀ n, P24213072799993203.a n = (A255051 (n + 1) : ℚ)

end A255051

/-! ## A255051.P9910998900210263907

`gcd(a(n-1)+1+n, 2%a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A255051.P9910998900210263907
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.gcd (a (n - 1) + 1 + n) (2 % a (n - 2))

end

end A255051.P9910998900210263907

namespace A255051

/-- `gcd(a(n-1)+1+n, 2%a(n-2))` -/
def P9910998900210263907.Spec : Prop :=
  ∀ n, (P9910998900210263907.a n : ℤ) = A255051 (n + 1)

end A255051

/-! ## A255051.P17718659985790806696

`lcm(2, a(n-2)%n+n)/a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A255051.P17718659985790806696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (Int.lcm 2 (Int.tmod (SequenceMachineLib.roundAway (a (n - 2))) (n : ℤ) + (n : ℤ)) : ℚ) / a (n - 2)

end

end A255051.P17718659985790806696

namespace A255051

/-- `lcm(2, a(n-2)%n+n)/a(n-2)` -/
def P17718659985790806696.Spec : Prop :=
  ∀ n, P17718659985790806696.a n = (A255051 (n + 1) : ℚ)

end A255051

/-! ## A255051.P4156718989475876688

`gcd(a(n-1)+n+1, 1-gcd(n, a(n-1)))` with `a(0)=1`
-/

namespace A255051.P4156718989475876688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.gcd (a (n - 1) + n + 1 : ℤ) (1 - (Nat.gcd n (a (n - 1)) : ℤ))

end

end A255051.P4156718989475876688

namespace A255051

/-- `gcd(a(n-1)+n+1, 1-gcd(n, a(n-1)))` -/
def P4156718989475876688.Spec : Prop :=
  ∀ n, (P4156718989475876688.a n : ℤ) = A255051 (n + 1)

end A255051

/-! ## A255051.P10561618202168772931

`gcd(or(6, n+n), A000217(n+1))`
-/

namespace A255051.P10561618202168772931
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.lor 6 (n + n) : ℤ) (A000217 (n + 1))

end

end A255051.P10561618202168772931

namespace A255051

/-- `gcd(or(6, n+n), A000217(n+1))` -/
def P10561618202168772931.Spec : Prop :=
  ∀ n, (P10561618202168772931.a n : ℤ) = A255051 (n + 1)

end A255051

/-! ## A255051.P8481934963283465726

`gcd(∑[n+1], A017137(A002265(n)))`
-/

namespace A255051.P8481934963283465726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A017137 (A002265 n).toNat)

end

end A255051.P8481934963283465726

namespace A255051

/-- `gcd(∑[n+1], A017137(A002265(n)))` -/
def P8481934963283465726.Spec : Prop :=
  ∀ n, (P8481934963283465726.a n : ℤ) = A255051 (n + 1)

end A255051

/-!
# A255052: G.f.: Product_{j>=1} 1/(1-x^j)^binomial(j+4,4).

The programs for A255052, there is no canonical definition to state claims against.
-/

/-! ## A255052.P7281660668601533588

`record[gcd(A049600(n+14), A075196(n+10))]`
-/

namespace A255052.P7281660668601533588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049600 (n + 14)) (A075196 (n + 10))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255052.P7281660668601533588

/-! ## A255052.P44698706786378087

`A075196(A052905(n+1)+1)-A000038(n)`
-/

namespace A255052.P44698706786378087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075196 (A052905 (n + 1) + 1).toNat - A000038 n

end

end A255052.P44698706786378087

/-! ## A255052.P3627694098708007945

`A075196(A052905(n+1)+1)%A074601(n)`
-/

namespace A255052.P3627694098708007945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075196 (A052905 (n + 1) + 1).toNat) (A074601 n)

end

end A255052.P3627694098708007945

/-! ## A255052.P16788696034144366575

`gcd(A123108(2*n)-n, A075196(A052905(n+1)+1))`
-/

namespace A255052.P16788696034144366575
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A123108 (2 * n) - (n : ℤ)) (A075196 (A052905 (n + 1) + 1).toNat)

end

end A255052.P16788696034144366575

/-! ## A255052.P3079885285896647664

`record[gcd(A075196(n+7), A255903(n+11))]`
-/

namespace A255052.P3079885285896647664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A075196 (n + 7)) (A255903 (n + 11))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255052.P3079885285896647664

/-!
# A255053: Least inverse of A255072; a(n) = smallest k such that A255072(k) = n.

The programs for A255053, there is no canonical definition to state claims against.
-/

/-! ## A255053.P1888387603018601426

`a(n-1)+A255054(n-1)` with `a(0)=0`
-/

namespace A255053.P1888387603018601426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A255054 (n - 1)

end

end A255053.P1888387603018601426

/-! ## A255053.P885839782887365330

`A255056(n)-A255123(n)`
-/

namespace A255053.P885839782887365330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255056 n - A255123 n

end

end A255053.P885839782887365330

/-! ## A255053.P8664257143686873408

`∑[A255054(n)]-A255054(n)`
-/

namespace A255053.P8664257143686873408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A255054 n

end

end A255053.P8664257143686873408

/-! ## A255053.P7988798851943004299

`A255055(n)+1-A255054(n)`
-/

namespace A255053.P7988798851943004299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255055 n + (1 - A255054 n)

end

end A255053.P7988798851943004299

/-! ## A255053.P6260299488807463063

`A255055(n)-(A255124(n)+A255123(n))`
-/

namespace A255053.P6260299488807463063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255055 n - (A255124 n + A255123 n)

end

end A255053.P6260299488807463063

/-!
# A255054: Run lengths in A255072.

The programs for A255054, there is no canonical definition to state claims against.
-/

/-! ## A255054.P9945189370978381930

`1+A255123(n)+A255124(n)`
-/

namespace A255054.P9945189370978381930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A255123 n + A255124 n

end

end A255054.P9945189370978381930

/-! ## A255054.P13258364960926687005

`1+A255055(n)-A255053(n)`
-/

namespace A255054.P13258364960926687005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A255055 n - A255053 n

end

end A255054.P13258364960926687005

/-! ## A255054.P14468259869196117293

`A255053(n+1)-A255053(n)`
-/

namespace A255054.P14468259869196117293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255053 (n + 1) - A255053 n

end

end A255054.P14468259869196117293

/-! ## A255054.P18364802154165804826

`Δ[A255053(n)]`
-/

namespace A255054.P18364802154165804826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255054.P18364802154165804826

/-! ## A255054.P14342461472815087154

`Δ[A255056(n)-A255123(n)]`
-/

namespace A255054.P14342461472815087154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255056 n - A255123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255054.P14342461472815087154

/-! ## A255054.P7367367037434687134

`A328617(A255053(n+1)%(A255053(n)+1)+1)`
-/

namespace A255054.P7367367037434687134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328617 (Int.tmod (A255053 (n + 1)) (A255053 n + 1) + 1).toNat

end

end A255054.P7367367037434687134

/-!
# A255055: Greatest inverse of A255072; a(n) = largest k such that A255072(k) = n.

The programs for A255055, there is no canonical definition to state claims against.
-/

/-! ## A255055.P15921312956725562327

`A255054(n)+a(n-1)` with `a(0)=0`
-/

namespace A255055.P15921312956725562327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A255054 n + a (n - 1)

end

end A255055.P15921312956725562327

/-! ## A255055.P1082600623679203604

`A255056(n)+A255124(n)`
-/

namespace A255055.P1082600623679203604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255056 n + A255124 n

end

end A255055.P1082600623679203604

/-! ## A255055.P3734668400322837125

`A255053(n)+A255054(n)-1`
-/

namespace A255055.P3734668400322837125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255053 n + A255054 n - 1

end

end A255055.P3734668400322837125

/-! ## A255055.P15920231707130759474

`∑[A255054(n)]-1`
-/

namespace A255055.P15920231707130759474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A255055.P15920231707130759474

/-! ## A255055.P3245157295423073914

`A255053(n+1)-1`
-/

namespace A255055.P3245157295423073914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255053 (n + 1) - 1

end

end A255055.P3245157295423073914

/-! ## A255055.P11642465424680534885

`∑[A255054(n)%A005899(n)]`
-/

namespace A255055.P11642465424680534885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255054 n) (A005899 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255055.P11642465424680534885

/-! ## A255055.P8184711492932622903

`A255056(n+1)-(A255123(n+1)+1)`
-/

namespace A255055.P8184711492932622903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255056 (n + 1) - (A255123 (n + 1) + 1)

end

end A255055.P8184711492932622903

/-! ## A255055.P13624853033116393227

`Δ[∑[A255053(n)]-n]`
-/

namespace A255055.P13624853033116393227
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255053 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255055.P13624853033116393227

/-! ## A255055.P3688051501804768684

`A023443(A255053(n+1))`
-/

namespace A255055.P3688051501804768684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A255053 (n + 1)).toNat

end

end A255055.P3688051501804768684

/-!
# A255056: Trunk of number-of-runs beanstalk: The unique infinite sequence such that a(n-1) = a(n) - number of runs in binary representation of a(n).

The programs for A255056, there is no canonical definition to state claims against.
-/

/-! ## A255056.P4045038518135089475

`2*A255057(n)`
-/

namespace A255056.P4045038518135089475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255057 n

end

end A255056.P4045038518135089475

/-! ## A255056.P3963496681216464044

`A255066(A255122(n))`
-/

namespace A255056.P3963496681216464044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255066 (A255122 n).toNat

end

end A255056.P3963496681216464044

/-! ## A255056.P14155640713186797676

`A255123(n)+A255053(n)`
-/

namespace A255056.P14155640713186797676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255123 n + A255053 n

end

end A255056.P14155640713186797676

/-! ## A255056.P6216630451572200152

`A255055(n)-A255124(n)`
-/

namespace A255056.P6216630451572200152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255055 n - A255124 n

end

end A255056.P6216630451572200152

/-! ## A255056.P15499916550484489125

`A255057(A005843(n)/2)+A255057(n)`
-/

namespace A255056.P15499916550484489125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255057 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A255057 n

end

end A255056.P15499916550484489125

/-! ## A255056.P7923407383394524065

`A255057(A023443(n+1))+A255057(n)`
-/

namespace A255056.P7923407383394524065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255057 (A023443 (n + 1)).toNat + A255057 n

end

end A255056.P7923407383394524065

/-! ## A255056.P6581680309400018217

`∑[A255336(n)]`
-/

namespace A255056.P6581680309400018217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255056.P6581680309400018217

/-! ## A255056.P8285668814501079485

`∑[2*A255337(n)]`
-/

namespace A255056.P8285668814501079485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255056.P8285668814501079485

/-! ## A255056.P3701932813144514799

`A255057(n+1)+A255057(n)-A255337(n+1)`
-/

namespace A255056.P3701932813144514799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255057 (n + 1) + (A255057 n - A255337 (n + 1))

end

end A255056.P3701932813144514799

/-! ## A255056.P15674257751603843977

`A255057(n+1)+A255057(n+1)-A255336(n+1)`
-/

namespace A255056.P15674257751603843977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255057 (n + 1) + (A255057 (n + 1) - A255336 (n + 1))

end

end A255056.P15674257751603843977

/-! ## A255056.P13516255567883864962

`A005843(A255057(n))`
-/

namespace A255056.P13516255567883864962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A255057 n).toNat

end

end A255056.P13516255567883864962

/-! ## A255056.P14626177466102191586

`2*eq[1, A255339(n)]`
-/

namespace A255056.P14626177466102191586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255339 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255056.P14626177466102191586

/-! ## A255056.P7844016644776436714

`2*eq[1, Δ[A255338(n)]]`
-/

namespace A255056.P7844016644776436714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255056.P7844016644776436714

/-! ## A255056.P16633604951353506053

`A255066(A255338(A255067(n)))`
-/

namespace A255056.P16633604951353506053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255066 (A255338 (A255067 n).toNat).toNat

end

end A255056.P16633604951353506053

/-! ## A255056.P16844863695715161157

`A236840(A255057(n+1)+A255057(n+1))`
-/

namespace A255056.P16844863695715161157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236840 (A255057 (n + 1) + A255057 (n + 1)).toNat

end

end A255056.P16844863695715161157

/-! ## A255056.P5283782159208491083

`eq[0, A255327(n)]`
-/

namespace A255056.P5283782159208491083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255327 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255056.P5283782159208491083

/-! ## A255056.P13338061791759258035

`A255066(A255072(A255066(n)))`
-/

namespace A255056.P13338061791759258035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255066 (A255072 (A255066 n).toNat).toNat

end

end A255056.P13338061791759258035

/-! ## A255056.P15202391505844190550

`∑[A001222(A278532(n))]`
-/

namespace A255056.P15202391505844190550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278532 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255056.P15202391505844190550

/-! ## A255056.P13438574095912056550

`A255067(A255122(n))+A255057(n)`
-/

namespace A255056.P13438574095912056550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255067 (A255122 n).toNat + A255057 n

end

end A255056.P13438574095912056550

/-!
# A255057: The trunk of number-of-runs beanstalk, halved: a(n) = A255056(n)/2.

The programs for A255057, there is no canonical definition to state claims against.
-/

/-! ## A255057.P11934704704745180275

`A255056(n)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255057.P11934704704745180275
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255056 n : ℚ) / 2

end

end A255057.P11934704704745180275

/-! ## A255057.P8877601563616071995

`A255067(A255122(n))`
-/

namespace A255057.P8877601563616071995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255067 (A255122 n).toNat

end

end A255057.P8877601563616071995

/-! ## A255057.P5271816526494680835

`(A255123(n)+A255053(n))/2`
-/

namespace A255057.P5271816526494680835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255123 n + A255053 n : ℚ) / 2

end

end A255057.P5271816526494680835

/-! ## A255057.P9186629462449283876

`(A255055(n)-A255124(n))/2`
-/

namespace A255057.P9186629462449283876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255055 n - A255124 n : ℚ) / 2

end

end A255057.P9186629462449283876

/-! ## A255057.P7190644876321727990

`∑[A255337(n)]`
-/

namespace A255057.P7190644876321727990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255057.P7190644876321727990

/-! ## A255057.P15160436386751480267

`∑[A255336(n)/2]`
-/

namespace A255057.P15160436386751480267
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255336 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255057.P15160436386751480267

/-! ## A255057.P1413697730569168832

`∑[A001281(A255336(n))]`
-/

namespace A255057.P1413697730569168832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A255336 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255057.P1413697730569168832

/-! ## A255057.P12962454127123663140

`∑[A004526(A255336(n)+1)]`
-/

namespace A255057.P12962454127123663140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A255336 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255057.P12962454127123663140

/-! ## A255057.P6770456890892241067

`eq[1, A255339(n)]`
-/

namespace A255057.P6770456890892241067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255339 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255057.P6770456890892241067

/-! ## A255057.P6904201141866394938

`eq[1, Δ[A255338(n)]]`
-/

namespace A255057.P6904201141866394938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255057.P6904201141866394938

/-! ## A255057.P11805949773270083729

`A255067(A255338(A255067(n)))`
-/

namespace A255057.P11805949773270083729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255067 (A255338 (A255067 n).toNat).toNat

end

end A255057.P11805949773270083729

/-! ## A255057.P11144256404113537855

`A001281(A255056(n))`
-/

namespace A255057.P11144256404113537855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A255056 n).toNat

end

end A255057.P11144256404113537855

/-! ## A255057.P18259585221822228763

`A004526(∑[A255336(n)])`
-/

namespace A255057.P18259585221822228763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255336 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A255057.P18259585221822228763

/-! ## A255057.P9025899068413620798

`A008619(A255056(n)+1)-1`
-/

namespace A255057.P9025899068413620798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A255056 n + 1).toNat - 1

end

end A255057.P9025899068413620798

/-! ## A255057.P17800942628785058083

`A255070(A255056(n+1))`
-/

namespace A255057.P17800942628785058083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255070 (A255056 (n + 1)).toNat

end

end A255057.P17800942628785058083

/-! ## A255057.P5164221668072731470

`eq[0, A255327(2*n)]`
-/

namespace A255057.P5164221668072731470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255327 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255057.P5164221668072731470

/-! ## A255057.P2589943541097125090

`eq[0, A255327(n)]/2`
-/

namespace A255057.P2589943541097125090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255327 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) / 2

end

end A255057.P2589943541097125090

/-! ## A255057.P3794280381570683189

`∑[A001222(A278532(n))/2]`
-/

namespace A255057.P3794280381570683189
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001222 (A278532 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255057.P3794280381570683189

/-!
# A255058: Branching degree of node n in the trunk of number-of-runs beanstalk: a(n) = A106836(1+A255057(n)).

The programs for A255058, there is no canonical definition to state claims against.
-/

/-! ## A255058.P1190375584178613180

`A106836(1+A255057(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255058.P1190375584178613180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106836 (1 + A255057 n).toNat

end

end A255058.P1190375584178613180

/-! ## A255058.P16154259979099675701

`A106836(A255056(n)/2+1)`
-/

namespace A255058.P16154259979099675701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106836 (SequenceMachineLib.roundAway ((A255056 n : ℚ) / 2 + 1)).toNat

end

end A255058.P16154259979099675701

/-! ## A255058.P11492409135558877597

`A106836(1-(A255057(n)-A255056(n)))`
-/

namespace A255058.P11492409135558877597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106836 (1 - (A255057 n - A255056 n)).toNat

end

end A255058.P11492409135558877597

/-! ## A255058.P4571140458276557452

`A106836(eq[1, A255339(n)]+1)`
-/

namespace A255058.P4571140458276557452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A255058.P4571140458276557452

/-! ## A255058.P12055153955804346708

`A106836(eq[1, Δ[A255338(n)]]+1)`
-/

namespace A255058.P12055153955804346708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255338 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106836 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A255058.P12055153955804346708

/-!
# A255059: Positions n where A255054(n) is odd.

The programs for A255059, there is no canonical definition to state claims against.
-/

/-! ## A255059.P3417797633461082216

`comp[A255060(n+1)]`
-/

namespace A255059.P3417797633461082216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A255059.P3417797633461082216

/-! ## A255059.P3447372735856091353

`eq[1, A255054(n)%2]`
-/

namespace A255059.P3447372735856091353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255054 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255059.P3447372735856091353

/-! ## A255059.P9061064626079014302

`eq[0, A007814(A255054(n))]`
-/

namespace A255059.P9061064626079014302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A255054 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255059.P9061064626079014302

/-! ## A255059.P14734814627681226996

`eq[2, A171977(A255054(n)²)]`
-/

namespace A255059.P14734814627681226996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (A255054 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255059.P14734814627681226996

/-! ## A255059.P14540664530519467066

`eq[1, A059841(A255054(n)+1)]`
-/

namespace A255059.P14540664530519467066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A255054 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255059.P14540664530519467066

/-! ## A255059.P14146461123126769153

`eq[2, A020639(A255054(n)+1)]`
-/

namespace A255059.P14146461123126769153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A255054 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255059.P14146461123126769153

/-! ## A255059.P18207627538289167982

`eq[2, A171977(A255054(n)+2)]`
-/

namespace A255059.P18207627538289167982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (A255054 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255059.P18207627538289167982

/-! ## A255059.P146995263790551986

`eq[1, A000007(val(A255054(n), 2))]`
-/

namespace A255059.P146995263790551986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (SequenceMachineLib.valuation (A255054 n).toNat 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255059.P146995263790551986

/-! ## A255059.P11807492890365201149

`eq[A040007(2*n+1), A040007(A255054(n))]`
-/

namespace A255059.P11807492890365201149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 (A255054 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255059.P11807492890365201149

/-!
# A255060: Positions n where A255054(n) is even.

The programs for A255060, there is no canonical definition to state claims against.
-/

/-! ## A255060.P17247139793913949023

`comp[A255059(n+1)]`
-/

namespace A255060.P17247139793913949023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255059 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A255060.P17247139793913949023

/-! ## A255060.P3728611352651427697

`eq[0, A255054(n)%2]`
-/

namespace A255060.P3728611352651427697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255054 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255060.P3728611352651427697

/-! ## A255060.P15409731581409695839

`eq[1, A059841(A255054(n))]`
-/

namespace A255060.P15409731581409695839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A255054 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255060.P15409731581409695839

/-! ## A255060.P3072474988343007422

`eq[1, A230850(A255054(n)²)]`
-/

namespace A255060.P3072474988343007422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (A255054 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255060.P3072474988343007422

/-! ## A255060.P13288322173042865516

`eq[2, A020639(A255054(n)²)]`
-/

namespace A255060.P13288322173042865516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A255054 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255060.P13288322173042865516

/-! ## A255060.P9877227912298599815

`eq[1, A010169(A255054(n)+1)]`
-/

namespace A255060.P9877227912298599815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010169 (A255054 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255060.P9877227912298599815

/-! ## A255060.P1102540832037858825

`eq[2, A171977(A255054(n)+1)]`
-/

namespace A255060.P1102540832037858825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171977 (A255054 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255060.P1102540832037858825

/-! ## A255060.P16709466442468807928

`lt[A122574(A255053(n+1)-A255053(n)+1), 1]`
-/

namespace A255060.P16709466442468807928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122574 (A255053 (n + 1) - A255053 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A255060.P16709466442468807928

/-! ## A255060.P6839529103589881276

`eq[1, A019427(A255053(n+1)+A255053(n))]`
-/

namespace A255060.P6839529103589881276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019427 (A255053 (n + 1) + A255053 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255060.P6839529103589881276

/-!
# A255061: Number of steps to reach 0 when starting from (2^n)-2 and iterating the map x -> x - (number of runs in binary representation of x): a(n) = A255072(A000918(n)).

The programs for A255061, the canonical program `A255061.P11875405185225927149` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255061 has offset 1).

The definition of A255061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255061.P7629695950664305716

`A255062(n+1)-1`
-/

namespace A255061.P7629695950664305716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 (n + 1) - 1

end

end A255061.P7629695950664305716

namespace A255061

/-- `A255062(n+1)-1` -/
def P7629695950664305716.Spec : Prop :=
  ∀ n, P7629695950664305716.a n = A255061 (n + 1)

end A255061

/-! ## A255061.P78187987265227645

`a(n-1)+A255071(n)` with `a(0)=0, a(1)=1`
-/

namespace A255061.P78187987265227645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A255071 n

end

end A255061.P78187987265227645

namespace A255061

/-- `a(n-1)+A255071(n)` -/
def P78187987265227645.Spec : Prop :=
  ∀ n, P78187987265227645.a n = A255061 (n + 1)

end A255061

/-! ## A255061.P11875405185225927149

`A255072(A000918(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A255061

/-- `A255072(A000918(n+1))` -/
def P11875405185225927149.Spec : Prop :=
  ∀ n, P11875405185225927149.a n = A255061 (n + 1)

theorem P11875405185225927149.correct : P11875405185225927149.Spec := by
  intro n
  simp only [A255061, Nat.add_sub_cancel]

end A255061

/-! ## A255061.P3695064314498166475

`Δ[∑[A255062(n)]-n]`
-/

namespace A255061.P3695064314498166475
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255061.P3695064314498166475

namespace A255061

/-- `Δ[∑[A255062(n)]-n]` -/
def P3695064314498166475.Spec : Prop :=
  ∀ n, P3695064314498166475.a n = A255061 (n + 1)

end A255061

/-! ## A255061.P3460744012224763791

`A255071(n)+a(n-1)` with `a(0)=0`
-/

namespace A255061.P3460744012224763791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A255071 n + a (n - 1)

end

end A255061.P3460744012224763791

namespace A255061

/-- `A255071(n)+a(n-1)` -/
def P3460744012224763791.Spec : Prop :=
  ∀ n, P3460744012224763791.a n = A255061 (n + 1)

end A255061

/-!
# A255062: Number of steps to reach 0 when starting from (2^n)-1 and iterating the map x -> x - (number of runs in binary representation of x): a(n) = A255072(A000225(n)).

The programs for A255062, the canonical program `A255062.P10358150081938219572` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255062 has offset 0).

The definition of A255062 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255062.P4993196327898688425

`a(n-1)+A255071(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A255062.P4993196327898688425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + A255071 (n - 1)

end

end A255062.P4993196327898688425

namespace A255062

/-- `a(n-1)+A255071(n-1)` -/
def P4993196327898688425.Spec : Prop :=
  ∀ n, P4993196327898688425.a n = A255062 n

end A255062

/-! ## A255062.P10358150081938219572

`A255072(A000225(n))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A255062

/-- `A255072(A000225(n))` -/
def P10358150081938219572.Spec : Prop :=
  ∀ n, P10358150081938219572.a n = A255062 n

theorem P10358150081938219572.correct : P10358150081938219572.Spec := by
  intro n
  simp only [A255062]

end A255062

/-! ## A255062.P6281999390131684928

`A255061(A028310(n))+ceil(sin(n)²)`
-/

namespace A255062.P6281999390131684928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255061 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A255062.P6281999390131684928

namespace A255062

/-- `A255061(A028310(n))+ceil(sin(n)²)` -/
def P6281999390131684928.Spec : Prop :=
  ∀ n, P6281999390131684928.a n = A255062 n

end A255062

/-! ## A255062.P4813084794555969743

`A255061(A028310(n))+A057427(n)`
-/

namespace A255062.P4813084794555969743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255061 (A028310 n).toNat + A057427 n

end

end A255062.P4813084794555969743

namespace A255062

/-- `A255061(A028310(n))+A057427(n)` -/
def P4813084794555969743.Spec : Prop :=
  ∀ n, P4813084794555969743.a n = A255062 n

end A255062

/-! ## A255062.P17668924802094898013

`eq[A255053(n), A255067(n)]`
-/

namespace A255062.P17668924802094898013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255067 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A255062.P17668924802094898013

namespace A255062

/-- `eq[A255053(n), A255067(n)]` -/
def P17668924802094898013.Spec : Prop :=
  ∀ n, (P17668924802094898013.a n : ℤ) = A255062 n

end A255062

/-!
# A255063: Number of times an evil number is encountered when iterating from 2^(n+1)-2 to (2^n)-2 with the map x -> x - (number of runs in binary representation of x).

The programs for A255063, there is no canonical definition to state claims against.
-/

/-! ## A255063.P14296282681116477450

`Δ[A255062(n)]-A255064(n)`
-/

namespace A255063.P14296282681116477450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255064 n

end

end A255063.P14296282681116477450

/-! ## A255063.P1735265726397270167

`A255071(round(sqrt(n²+1)))-A255064(n)`
-/

namespace A255063.P1735265726397270167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255071 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A255064 n

end

end A255063.P1735265726397270167

/-! ## A255063.P7670844005476456630

`A255062(n+1)-(A255064(n)+A255062(n))`
-/

namespace A255063.P7670844005476456630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 (n + 1) - (A255064 n + A255062 n)

end

end A255063.P7670844005476456630

/-! ## A255063.P13256056036010100101

`Δ[A255072(2^n*ceil(n/98))]-A255064(n)`
-/

namespace A255063.P13256056036010100101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 ((2 ^ n : ℤ) * ⌈(n : ℚ) / 98⌉).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255064 n

end

end A255063.P13256056036010100101

/-!
# A255064: Number of times an odious number is encountered when iterating from 2^(n+1)-2 to (2^n)-2 with the map x -> x - (number of runs in binary representation of x).

The programs for A255064, there is no canonical definition to state claims against.
-/

/-! ## A255064.P14670313196119815136

`Δ[A255062(n)]-A255063(n)`
-/

namespace A255064.P14670313196119815136
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A255063 n

end

end A255064.P14670313196119815136

/-! ## A255064.P5880169398566451099

`A255071(round(sqrt(n²+1)))-A255063(n)`
-/

namespace A255064.P5880169398566451099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255071 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat - A255063 n

end

end A255064.P5880169398566451099

/-! ## A255064.P14595550526961395259

`A255125(n)+A255126(n)-A255063(n)`
-/

namespace A255064.P14595550526961395259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255125 n + (A255126 n - A255063 n)

end

end A255064.P14595550526961395259

/-! ## A255064.P14481991235535699118

`A255062(n+1)-(A255063(n)+A255062(n))`
-/

namespace A255064.P14481991235535699118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255062 (n + 1) - (A255063 n + A255062 n)

end

end A255064.P14481991235535699118

/-!
# A255065: Expansion of x * psi(x^5) * f(-x^10) / f(-x^4, -x^6) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A255065, there is no canonical definition to state claims against.
-/

/-! ## A255065.P1398572813615218515

`A053266(n+1)-A053264(n+1)`
-/

namespace A255065.P1398572813615218515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053266 (n + 1) - A053264 (n + 1)

end

end A255065.P1398572813615218515

/-! ## A255065.P10460196025504937264

`A053266(n+1)-A053260(2*(n+1))`
-/

namespace A255065.P10460196025504937264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053266 (n + 1) - A053260 (2 * (n + 1))

end

end A255065.P10460196025504937264

/-! ## A255065.P17800679401709150676

`A259910(n+1)-A259920(2*(n+1))`
-/

namespace A255065.P17800679401709150676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259910 (n + 1) - A259920 (2 * (n + 1))

end

end A255065.P17800679401709150676

/-! ## A255065.P11228919651095110840

`A279135(n+1)-A053264(n+1)`
-/

namespace A255065.P11228919651095110840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279135 (n + 1) - A053264 (n + 1)

end

end A255065.P11228919651095110840

/-! ## A255065.P3063900364881504734

`A279135(n+1)-A053260(2*(n+1))`
-/

namespace A255065.P3063900364881504734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279135 (n + 1) - A053260 (2 * (n + 1))

end

end A255065.P3063900364881504734

/-!
# A255066: The trunk of number-of-runs beanstalk (A255056) with reversed subsections.

The programs for A255066, there is no canonical definition to state claims against.
-/

/-! ## A255066.P651021980116076553

`A255056(A255122(n))`
-/

namespace A255066.P651021980116076553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255056 (A255122 n).toNat

end

end A255066.P651021980116076553

/-! ## A255066.P14233830110667264145

`2*A255067(n)`
-/

namespace A255066.P14233830110667264145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A255067 n

end

end A255066.P14233830110667264145

/-! ## A255066.P14577928715374161801

`A255067(n)+A255067(n%(n+1))`
-/

namespace A255066.P14577928715374161801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255067 n + A255067 (n % (n + 1))

end

end A255066.P14577928715374161801

/-! ## A255066.P16600104068574838863

`A255067(A005843(n)/2)+A255067(n)`
-/

namespace A255066.P16600104068574838863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255067 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A255067 n

end

end A255066.P16600104068574838863

/-! ## A255066.P615921844338438335

`A005843(A255067(n))`
-/

namespace A255066.P615921844338438335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A255067 n).toNat

end

end A255066.P615921844338438335

/-! ## A255066.P17951646232945115025

`A255067(n)+A255057(A255122(n))`
-/

namespace A255066.P17951646232945115025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255067 n + A255057 (A255122 n).toNat

end

end A255066.P17951646232945115025

/-! ## A255066.P14135900730963944349

`and(2, A000918(n+1))*A255057(A255122(n))`
-/

namespace A255066.P14135900730963944349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A000918 (n + 1)) * A255057 (A255122 n).toNat

end

end A255066.P14135900730963944349

/-!
# A255067: Terms of A255066 halved.

The programs for A255067, there is no canonical definition to state claims against.
-/

/-! ## A255067.P2169271444146604028

`A255066(n)/2`
-/

namespace A255067.P2169271444146604028
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255066 n : ℚ) / 2

end

end A255067.P2169271444146604028

/-! ## A255067.P1933244212247998446

`A255057(A255122(n))`
-/

namespace A255067.P1933244212247998446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255057 (A255122 n).toNat

end

end A255067.P1933244212247998446

/-! ## A255067.P252876480278957471

`A038572(A255066(n))`
-/

namespace A255067.P252876480278957471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A255066 n).toNat

end

end A255067.P252876480278957471

/-! ## A255067.P16011728957917731354

`A004524(A255066(n)+1)`
-/

namespace A255067.P16011728957917731354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A255066 n + 1).toNat

end

end A255067.P16011728957917731354

/-! ## A255067.P16018430378763071320

`A004526(A255066(n)+1)`
-/

namespace A255067.P16018430378763071320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A255066 n + 1).toNat

end

end A255067.P16018430378763071320

/-! ## A255067.P11795685892468677503

`A123108(A255066(n)+1)`
-/

namespace A255067.P11795685892468677503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A255066 n + 1).toNat

end

end A255067.P11795685892468677503

/-! ## A255067.P10024943790217768483

`A026741(lcm(2, A255066(n)))`
-/

namespace A255067.P10024943790217768483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.lcm 2 (A255066 n))

end

end A255067.P10024943790217768483

/-! ## A255067.P8983474787610368709

`A123108(xor(1, A255066(n)))`
-/

namespace A255067.P8983474787610368709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (Int.xor 1 (A255066 n)).toNat

end

end A255067.P8983474787610368709

/-! ## A255067.P15556642467962933849

`A008619(A255066(n)+1)-1`
-/

namespace A255067.P15556642467962933849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A255066 n + 1).toNat - 1

end

end A255067.P15556642467962933849

/-! ## A255067.P4546458064711113343

`A001281(A255066(n)+2)-1`
-/

namespace A255067.P4546458064711113343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A255066 n + 2).toNat - 1

end

end A255067.P4546458064711113343

/-! ## A255067.P14205344478671244983

`A004525(A255066(n)+2)-1`
-/

namespace A255067.P14205344478671244983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A255066 n + 2).toNat - 1

end

end A255067.P14205344478671244983

/-! ## A255067.P13555001330940901490

`A026741(A255066(n)+2)-1`
-/

namespace A255067.P13555001330940901490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A255066 n + 2).toNat - 1

end

end A255067.P13555001330940901490

/-! ## A255067.P7303012790812385006

`A004526(A255066(2*n-n))`
-/

namespace A255067.P7303012790812385006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A255066 (2 * n - n)).toNat

end

end A255067.P7303012790812385006

/-! ## A255067.P12874902311252185733

`A001281(A255066(A001281(2*n)))`
-/

namespace A255067.P12874902311252185733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A255066 (A001281 (2 * n)).toNat).toNat

end

end A255067.P12874902311252185733

/-! ## A255067.P15907797821050654018

`A026741(A255066(n))%A000070(n)`
-/

namespace A255067.P15907797821050654018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026741 (A255066 n).toNat) (A000070 n)

end

end A255067.P15907797821050654018

/-! ## A255067.P10581091333104757740

`A026741(A255066(n)%A158187(n))`
-/

namespace A255067.P10581091333104757740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (Int.tmod (A255066 n) (A158187 n)).toNat

end

end A255067.P10581091333104757740

/-! ## A255067.P1851861758977474614

`A004525(2*A255066(n)-A255066(n))`
-/

namespace A255067.P1851861758977474614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (2 * A255066 n - A255066 n).toNat

end

end A255067.P1851861758977474614

/-! ## A255067.P13356428884392600355

`A026741(2*A255066(n)-A255066(n))`
-/

namespace A255067.P13356428884392600355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (2 * A255066 n - A255066 n).toNat

end

end A255067.P13356428884392600355

/-! ## A255067.P2523616292817402159

`A008615(3*A255066(n))`
-/

namespace A255067.P2523616292817402159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (3 * A255066 n).toNat

end

end A255067.P2523616292817402159

/-!
# A255068: a(n) is the largest k such that A255070(k) = n.

The programs for A255068, the canonical program `A255068.P12646045524398561054` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255068 has offset 0).

The definition of A255068 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091067, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A255068.P12646045524398561054

`A091067(n+1)-1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A255068

/-- `A091067(n+1)-1` -/
def P12646045524398561054.Spec : Prop :=
  ∀ n, P12646045524398561054.a n = A255068 n

theorem P12646045524398561054.correct : P12646045524398561054.Spec := by
  intro n
  simp only [A255068]

end A255068

/-! ## A255068.P15034950983085003021

`comp[and(n, n+1)+n]`
-/

namespace A255068.P15034950983085003021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A255068.P15034950983085003021

namespace A255068

/-- `comp[and(n, n+1)+n]` -/
def P15034950983085003021.Spec : Prop :=
  ∀ n, (P15034950983085003021.a n : ℤ) = A255068 n

end A255068

/-! ## A255068.P8519973231700748203

`∑[A106836(n+1)]-1`
-/

namespace A255068.P8519973231700748203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106836 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A255068.P8519973231700748203

namespace A255068

/-- `∑[A106836(n+1)]-1` -/
def P8519973231700748203.Spec : Prop :=
  ∀ n, P8519973231700748203.a n = A255068 n

end A255068

/-! ## A255068.P9245877897920379761

`comp[A269361(n+1)-1]`
-/

namespace A255068.P9245877897920379761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269361 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A255068.P9245877897920379761

namespace A255068

/-- `comp[A269361(n+1)-1]` -/
def P9245877897920379761.Spec : Prop :=
  ∀ n, (P9245877897920379761.a n : ℤ) = A255068 n

end A255068

/-! ## A255068.P5807092650996426516

`A246590(n+1)/2-1`
-/

namespace A255068.P5807092650996426516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246590 (n + 1) : ℚ) / 2 - 1

end

end A255068.P5807092650996426516

namespace A255068

/-- `A246590(n+1)/2-1` -/
def P5807092650996426516.Spec : Prop :=
  ∀ n, P5807092650996426516.a n = (A255068 n : ℚ)

theorem P5807092650996426516.correct : P5807092650996426516.Spec := by
  intro n
  simp only [A255068, Nat.add_sub_cancel, A255068.P5807092650996426516.a, A255068.P12646045524398561054.a, A091067, A091067.P11627584915333469325.a, A246590, A246590.P10952296055587311205.a, A060833, A060833.P4612277402793640164.f1, A060833.P4612277402793640164.f2, A060833.P4612277402793640164.a, A073089, A073089.P6746371190418764077.a, A382732, A382732.P8564990345405423015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255068

/-! ## A255068.P6190796268194603534

`A269363(A269368(n+1))-1`
-/

namespace A255068.P6190796268194603534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269363 (A269368 (n + 1)).toNat - 1

end

end A255068.P6190796268194603534

namespace A255068

/-- `A269363(A269368(n+1))-1` -/
def P6190796268194603534.Spec : Prop :=
  ∀ n, P6190796268194603534.a n = A255068 n

end A255068

/-! ## A255068.P9622006816399282910

`lt[A003188(n+1), A003188(n)]`
-/

namespace A255068.P9622006816399282910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255068.P9622006816399282910

namespace A255068

/-- `lt[A003188(n+1), A003188(n)]` -/
def P9622006816399282910.Spec : Prop :=
  ∀ n, (P9622006816399282910.a n : ℤ) = A255068 n

end A255068

/-! ## A255068.P9804507185061517989

`A060833(n+2)-2`
-/

namespace A255068.P9804507185061517989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060833 (n + 2) - 2

end

end A255068.P9804507185061517989

namespace A255068

/-- `A060833(n+2)-2` -/
def P9804507185061517989.Spec : Prop :=
  ∀ n, P9804507185061517989.a n = A255068 n

theorem P9804507185061517989.correct : P9804507185061517989.Spec := by
  intro n
  simp only [A255068, Nat.add_sub_cancel, A255068.P9804507185061517989.a, A255068.P12646045524398561054.a, A060833, A060833.P4612277402793640164.f1, A060833.P4612277402793640164.f2, A060833.P4612277402793640164.a, A091067, A091067.P11627584915333469325.a, A073089, A073089.P6746371190418764077.a, A382732, A382732.P8564990345405423015.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A255068

/-! ## A255068.P6608648346174698108

`lt[A317335(n+1), 0]`
-/

namespace A255068.P6608648346174698108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317335 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A255068.P6608648346174698108

namespace A255068

/-- `lt[A317335(n+1), 0]` -/
def P6608648346174698108.Spec : Prop :=
  ∀ n, (P6608648346174698108.a n : ℤ) = A255068 n

end A255068

/-! ## A255068.P8948775251043883021

`record[n-A317335(n+3)]`
-/

namespace A255068.P8948775251043883021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A317335 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255068.P8948775251043883021

namespace A255068

/-- `record[n-A317335(n+3)]` -/
def P8948775251043883021.Spec : Prop :=
  ∀ n, P8948775251043883021.a n = A255068 n

end A255068

/-! ## A255068.P7885677552981210097

`lt[0, A322015(n)]`
-/

namespace A255068.P7885677552981210097
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322015 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255068.P7885677552981210097

namespace A255068

/-- `lt[0, A322015(n)]` -/
def P7885677552981210097.Spec : Prop :=
  ∀ n, (P7885677552981210097.a n : ℤ) = A255068 n

end A255068

/-! ## A255068.P13302112785460432378

`lt[1, A089309(n+1)]`
-/

namespace A255068.P13302112785460432378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255068.P13302112785460432378

namespace A255068

/-- `lt[1, A089309(n+1)]` -/
def P13302112785460432378.Spec : Prop :=
  ∀ n, (P13302112785460432378.a n : ℤ) = A255068 n

end A255068

/-! ## A255068.P5110078071762615823

`lt[1, A089309(n)]-1`
-/

namespace A255068.P5110078071762615823
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - 1

end

end A255068.P5110078071762615823

namespace A255068

/-- `lt[1, A089309(n)]-1` -/
def P5110078071762615823.Spec : Prop :=
  ∀ n, P5110078071762615823.a n = A255068 n

end A255068

/-! ## A255068.P438305511801636567

`comp[2*n-A135481(n)]`
-/

namespace A255068.P438305511801636567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A135481 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A255068.P438305511801636567

namespace A255068

/-- `comp[2*n-A135481(n)]` -/
def P438305511801636567.Spec : Prop :=
  ∀ n, (P438305511801636567.a n : ℤ) = A255068 n

end A255068

/-! ## A255068.P4659951157551927675

`lt[A286548(n+1), A286548(n)]`
-/

namespace A255068.P4659951157551927675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286548 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A255068.P4659951157551927675

namespace A255068

/-- `lt[A286548(n+1), A286548(n)]` -/
def P4659951157551927675.Spec : Prop :=
  ∀ n, (P4659951157551927675.a n : ℤ) = A255068 n

end A255068

/-! ## A255068.P16124448969706749415

`lt[0, Δ[and(n, 2*n)]]`
-/

namespace A255068.P16124448969706749415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A255068.P16124448969706749415

namespace A255068

/-- `lt[0, Δ[and(n, 2*n)]]` -/
def P16124448969706749415.Spec : Prop :=
  ∀ n, (P16124448969706749415.a n : ℤ) = A255068 n

end A255068

/-! ## A255068.P16685440301531194027

`lt[Δ[xor(n, 2*n)], 0]`
-/

namespace A255068.P16685440301531194027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A255068.P16685440301531194027

namespace A255068

/-- `lt[Δ[xor(n, 2*n)], 0]` -/
def P16685440301531194027.Spec : Prop :=
  ∀ n, (P16685440301531194027.a n : ℤ) = A255068 n

end A255068

/-! ## A255068.P4436888728809242607

`lt[Δ[or(n, 2*n)], 2]`
-/

namespace A255068.P4436888728809242607
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A255068.P4436888728809242607

namespace A255068

/-- `lt[Δ[or(n, 2*n)], 2]` -/
def P4436888728809242607.Spec : Prop :=
  ∀ n, (P4436888728809242607.a n : ℤ) = A255068 n

end A255068

/-! ## A255068.P3997273830294826086

`lt[ratio[xor(n, 2*n+1)], 1]`
-/

namespace A255068.P3997273830294826086
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℚ)) n

end

end A255068.P3997273830294826086

namespace A255068

/-- `lt[ratio[xor(n, 2*n+1)], 1]` -/
def P3997273830294826086.Spec : Prop :=
  ∀ n, (P3997273830294826086.a n : ℤ) = A255068 n

end A255068

/-! ## A255068.P7666540958803214002

`eq[0, A014577(n)]`
-/

namespace A255068.P7666540958803214002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A255068.P7666540958803214002

namespace A255068

/-- `eq[0, A014577(n)]` -/
def P7666540958803214002.Spec : Prop :=
  ∀ n, (P7666540958803214002.a n : ℤ) = A255068 n

end A255068

/-!
# A255069: First differences of A255071.

The programs for A255069, the canonical program `A255069.P16990446007770203954` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255069 has offset 1).

The definition of A255069 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255069.P16990446007770203954

`A255071(n+2)-A255071(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A255069

/-- `A255071(n+2)-A255071(n+1)` -/
def P16990446007770203954.Spec : Prop :=
  ∀ n, P16990446007770203954.a n = A255069 (n + 1)

theorem P16990446007770203954.correct : P16990446007770203954.Spec := by
  intro n
  simp only [A255069, Nat.add_sub_cancel]

end A255069

/-! ## A255069.P10806930254427073755

`Δ[A255071(n+1)]`
-/

namespace A255069.P10806930254427073755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255069.P10806930254427073755

namespace A255069

/-- `Δ[A255071(n+1)]` -/
def P10806930254427073755.Spec : Prop :=
  ∀ n, P10806930254427073755.a n = A255069 (n + 1)

theorem P10806930254427073755.correct : P10806930254427073755.Spec := by
  intro n
  simp only [A255069, Nat.add_sub_cancel, A255069.P10806930254427073755.f1, A255069.P10806930254427073755.a, A255069.P16990446007770203954.a, SequenceMachineLib.memo_apply]

end A255069

/-! ## A255069.P6889652429508122387

`abs(Δ[A255071(ϕ²-(ϕ-n))])`
-/

namespace A255069.P6889652429508122387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255071 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A255069.P6889652429508122387

namespace A255069

/-- `abs(Δ[A255071(ϕ²-(ϕ-n))])` -/
def P6889652429508122387.Spec : Prop :=
  ∀ n, P6889652429508122387.a n = A255069 (n + 1)

end A255069

/-! ## A255069.P6803234933204511293

`Δ[record[A255071(A022446(n))]]`
-/

namespace A255069.P6803234933204511293
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255071 (A022446 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255069.P6803234933204511293

namespace A255069

/-- `Δ[record[A255071(A022446(n))]]` -/
def P6803234933204511293.Spec : Prop :=
  ∀ n, P6803234933204511293.a n = A255069 (n + 1)

end A255069

/-! ## A255069.P15194390412628260494

`Δ[record[A255071(A028920(n))]]`
-/

namespace A255069.P15194390412628260494
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255071 (A028920 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A255069.P15194390412628260494

namespace A255069

/-- `Δ[record[A255071(A028920(n))]]` -/
def P15194390412628260494.Spec : Prop :=
  ∀ n, P15194390412628260494.a n = A255069 (n + 1)

end A255069

/-!
# A255070: (1/2)*(n minus number of runs in the binary expansion of n): a(n) = (n - A005811(n)) / 2 = A236840(n)/2.

The programs for A255070, the canonical program `A255070.P12600322617074170858` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255070 has offset 0).

The definition of A255070 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255070.P12600322617074170858

`A236840(n)/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A255070

/-- `A236840(n)/2` -/
def P12600322617074170858.Spec : Prop :=
  ∀ n, P12600322617074170858.a n = (A255070 n : ℚ)

end A255070

/-! ## A255070.P10787457214696114747

`(n-A005811(n))/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A255070.P10787457214696114747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A005811 n : ℚ) / 2

end

end A255070.P10787457214696114747

namespace A255070

/-- `(n-A005811(n))/2` -/
def P10787457214696114747.Spec : Prop :=
  ∀ n, P10787457214696114747.a n = (A255070 n : ℚ)

end A255070

/-! ## A255070.P18053623119344603426

`∑[char[comp[and(n, n-1)+n]]]`
-/

namespace A255070.P18053623119344603426
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ((n : ℤ) - 1) + (n : ℤ)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255070.P18053623119344603426

namespace A255070

/-- `∑[char[comp[and(n, n-1)+n]]]` -/
def P18053623119344603426.Spec : Prop :=
  ∀ n, (P18053623119344603426.a n : ℤ) = A255070 n

end A255070

/-! ## A255070.P6646103153570365540

`∑[char[or(n, n+1)+2+n]]`
-/

namespace A255070.P6646103153570365540
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 2 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255070.P6646103153570365540

namespace A255070

/-- `∑[char[or(n, n+1)+2+n]]` -/
def P6646103153570365540.Spec : Prop :=
  ∀ n, (P6646103153570365540.a n : ℤ) = A255070 n

end A255070

/-! ## A255070.P15622492988272970672

`∑[char[or(n, -xor(n, -n))]]-1`
-/

namespace A255070.P15622492988272970672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-Int.xor (n : ℤ) (-(n : ℤ)))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A255070.P15622492988272970672

namespace A255070

/-- `∑[char[or(n, -xor(n, -n))]]-1` -/
def P15622492988272970672.Spec : Prop :=
  ∀ n, P15622492988272970672.a n = A255070 n

end A255070

/-! ## A255070.P11684345387563352973

`∑[char[3*(n+1)-and(n, n+1)]]`
-/

namespace A255070.P11684345387563352973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * (n + 1) : ℤ) - (Nat.land n (n + 1) : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255070.P11684345387563352973

namespace A255070

/-- `∑[char[3*(n+1)-and(n, n+1)]]` -/
def P11684345387563352973.Spec : Prop :=
  ∀ n, (P11684345387563352973.a n : ℤ) = A255070 n

end A255070

/-! ## A255070.P18244163063469979953

`n-∑[char[and(n, n+1)+1+n]]`
-/

namespace A255070.P18244163063469979953
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1) + 1 + n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A255070.P18244163063469979953

namespace A255070

/-- `n-∑[char[and(n, n+1)+1+n]]` -/
def P18244163063469979953.Spec : Prop :=
  ∀ n, P18244163063469979953.a n = A255070 n

end A255070

/-! ## A255070.P8442471796387777081

`char[or(n, n+1)+2+n]+a(n-1)` with `a(0)=0`
-/

namespace A255070.P8442471796387777081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (n + 1) + 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = n then 1 else 0) + a (n - 1)

end

end A255070.P8442471796387777081

namespace A255070

/-- `char[or(n, n+1)+2+n]+a(n-1)` -/
def P8442471796387777081.Spec : Prop :=
  ∀ n, (P8442471796387777081.a n : ℤ) = A255070 n

end A255070

/-! ## A255070.P876980064344573837

`∑[A038189(n)]`
-/

namespace A255070.P876980064344573837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255070.P876980064344573837

namespace A255070

/-- `∑[A038189(n)]` -/
def P876980064344573837.Spec : Prop :=
  ∀ n, P876980064344573837.a n = A255070 n

end A255070

/-! ## A255070.P15560033141726635849

`∑[A089013(n)]-1`
-/

namespace A255070.P15560033141726635849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089013 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A255070.P15560033141726635849

namespace A255070

/-- `∑[A089013(n)]-1` -/
def P15560033141726635849.Spec : Prop :=
  ∀ n, P15560033141726635849.a n = A255070 n

end A255070

/-! ## A255070.P11245049113885834675

`∑[A014707(abs(1-n))]`
-/

namespace A255070.P11245049113885834675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255070.P11245049113885834675

namespace A255070

/-- `∑[A014707(abs(1-n))]` -/
def P11245049113885834675.Spec : Prop :=
  ∀ n, P11245049113885834675.a n = A255070 n

end A255070

/-! ## A255070.P9327708945382644534

`∑[char[A091067(n+1)]]`
-/

namespace A255070.P9327708945382644534
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091067 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255070.P9327708945382644534

namespace A255070

/-- `∑[char[A091067(n+1)]]` -/
def P9327708945382644534.Spec : Prop :=
  ∀ n, (P9327708945382644534.a n : ℤ) = A255070 n

end A255070

/-! ## A255070.P6797933970168281902

`∑[char[A255068(n)+1]]`
-/

namespace A255070.P6797933970168281902
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255068 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255070.P6797933970168281902

namespace A255070

/-- `∑[char[A255068(n)+1]]` -/
def P6797933970168281902.Spec : Prop :=
  ∀ n, (P6797933970168281902.a n : ℤ) = A255070 n

end A255070

/-! ## A255070.P3738306420200293913

`∑[char[A269363(n+1)]]`
-/

namespace A255070.P3738306420200293913
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269363 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255070.P3738306420200293913

namespace A255070

/-- `∑[char[A269363(n+1)]]` -/
def P3738306420200293913.Spec : Prop :=
  ∀ n, (P3738306420200293913.a n : ℤ) = A255070 n

end A255070

/-! ## A255070.P6420685617277973616

`∑[(1-A121238(n))/2]`
-/

namespace A255070.P6420685617277973616
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A121238 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255070.P6420685617277973616

namespace A255070

/-- `∑[(1-A121238(n))/2]` -/
def P6420685617277973616.Spec : Prop :=
  ∀ n, P6420685617277973616.a n = (A255070 n : ℚ)

end A255070

/-! ## A255070.P1540454719087546880

`∑[and(2, A300867(n))/2]`
-/

namespace A255070.P1540454719087546880
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A300867 n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255070.P1540454719087546880

namespace A255070

/-- `∑[and(2, A300867(n))/2]` -/
def P1540454719087546880.Spec : Prop :=
  ∀ n, P1540454719087546880.a n = (A255070 n : ℚ)

end A255070

/-! ## A255070.P11033042993391273211

`A239904(n)-floor(n/2)`
-/

namespace A255070.P11033042993391273211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239904 n - ⌊(n : ℚ) / 2⌋

end

end A255070.P11033042993391273211

namespace A255070

/-- `A239904(n)-floor(n/2)` -/
def P11033042993391273211.Spec : Prop :=
  ∀ n, P11033042993391273211.a n = A255070 n

end A255070

/-! ## A255070.P13595484661211789546

`ceil(n/2-A069010(n))`
-/

namespace A255070.P13595484661211789546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 2 - (A069010 n : ℚ)⌉

end

end A255070.P13595484661211789546

namespace A255070

/-- `ceil(n/2-A069010(n))` -/
def P13595484661211789546.Spec : Prop :=
  ∀ n, P13595484661211789546.a n = A255070 n

end A255070

/-! ## A255070.P1006850479083374999

`n-∑[A082410(n+1)]`
-/

namespace A255070.P1006850479083374999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255070.P1006850479083374999

namespace A255070

/-- `n-∑[A082410(n+1)]` -/
def P1006850479083374999.Spec : Prop :=
  ∀ n, P1006850479083374999.a n = A255070 n

end A255070

/-! ## A255070.P14164049592519169746

`1-A088023(n+1)+n`
-/

namespace A255070.P14164049592519169746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A088023 (n + 1) + (n : ℤ)

end

end A255070.P14164049592519169746

namespace A255070

/-- `1-A088023(n+1)+n` -/
def P14164049592519169746.Spec : Prop :=
  ∀ n, P14164049592519169746.a n = A255070 n

end A255070

/-!
# A255071: Number of steps required to reach (2^n)-2 from 2^(n+1)-2 by iterating the map x -> x - (number of runs in binary representation of x).

The programs for A255071, the canonical program `A255071.P3876478389989175484` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255071 has offset 1).

The definition of A255071 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255071.P9076240168051915985

`A255125(n+1)+A255126(n+1)`
-/

namespace A255071.P9076240168051915985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255125 (n + 1) + A255126 (n + 1)

end

end A255071.P9076240168051915985

namespace A255071

/-- `A255125(n+1)+A255126(n+1)` -/
def P9076240168051915985.Spec : Prop :=
  ∀ n, P9076240168051915985.a n = A255071 (n + 1)

end A255071

/-! ## A255071.P5043715497705428563

`A255063(n+1)+A255064(n+1)`
-/

namespace A255071.P5043715497705428563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255063 (n + 1) + A255064 (n + 1)

end

end A255071.P5043715497705428563

namespace A255071

/-- `A255063(n+1)+A255064(n+1)` -/
def P5043715497705428563.Spec : Prop :=
  ∀ n, P5043715497705428563.a n = A255071 (n + 1)

end A255071

/-! ## A255071.P3876478389989175484

`A255061(n+2)-A255061(n+1)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A255071

/-- `A255061(n+2)-A255061(n+1)` -/
def P3876478389989175484.Spec : Prop :=
  ∀ n, P3876478389989175484.a n = A255071 (n + 1)

theorem P3876478389989175484.correct : P3876478389989175484.Spec := by
  intro n
  simp only [A255071, Nat.add_sub_cancel]

end A255071

/-! ## A255071.P13079684253514542456

`A255072(2^(n+2)-2)-A255072(2^(n+1)-2)`
-/

namespace A255071.P13079684253514542456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255072 (2 ^ (n + 2) - 2) - A255072 (2 ^ (n + 1) - 2)

end

end A255071.P13079684253514542456

namespace A255071

/-- `A255072(2^(n+2)-2)-A255072(2^(n+1)-2)` -/
def P13079684253514542456.Spec : Prop :=
  ∀ n, P13079684253514542456.a n = A255071 (n + 1)

end A255071

/-! ## A255071.P14692203150152221288

`∑[A255069(round(acot(n)+n))]`
-/

namespace A255071.P14692203150152221288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255069 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255071.P14692203150152221288

namespace A255071

/-- `∑[A255069(round(acot(n)+n))]` -/
def P14692203150152221288.Spec : Prop :=
  ∀ n, P14692203150152221288.a n = A255071 (n + 1)

end A255071

/-!
# A255072: Number of steps to reach 0 starting with n and using the iterated process: x -> x - (number of runs in binary representation of x).

The programs for A255072, the canonical program `A255072.P11066675909169792664` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A255072 has offset 0).

The definition of A255072 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A255072.P11066675909169792664

`1+a(A236840(n))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A255072

/-- `1+a(A236840(n))` -/
def P11066675909169792664.Spec : Prop :=
  ∀ n, (P11066675909169792664.a n : ℤ) = A255072 n

theorem P11066675909169792664.correct : P11066675909169792664.Spec := by
  intro n
  simp only [A255072]

end A255072

/-! ## A255072.P13194871142307243874

`1+a(n-A005811(n))` with `a(0)=0`
-/

namespace A255072.P13194871142307243874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a ((n : ℤ) - A005811 n).toNat

end

end A255072.P13194871142307243874

namespace A255072

/-- `1+a(n-A005811(n))` -/
def P13194871142307243874.Spec : Prop :=
  ∀ n, (P13194871142307243874.a n : ℤ) = A255072 n

end A255072

/-! ## A255072.P13927264285809920300

`∑[char[∑[A255054(n)]]]`
-/

namespace A255072.P13927264285809920300
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255072.P13927264285809920300

namespace A255072

/-- `∑[char[∑[A255054(n)]]]` -/
def P13927264285809920300.Spec : Prop :=
  ∀ n, (P13927264285809920300.a n : ℤ) = A255072 n

end A255072

/-! ## A255072.P13543464325921731795

`∑[char[A255053(n+1)]]`
-/

namespace A255072.P13543464325921731795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255053 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255072.P13543464325921731795

namespace A255072

/-- `∑[char[A255053(n+1)]]` -/
def P13543464325921731795.Spec : Prop :=
  ∀ n, (P13543464325921731795.a n : ℤ) = A255072 n

end A255072

/-! ## A255072.P15584547054661690476

`∑[char[A255055(n)+1]]`
-/

namespace A255072.P15584547054661690476
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255055 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A255072.P15584547054661690476

namespace A255072

/-- `∑[char[A255055(n)+1]]` -/
def P15584547054661690476.Spec : Prop :=
  ∀ n, (P15584547054661690476.a n : ℤ) = A255072 n

end A255072

/-! ## A255072.P4241922727834367516

`∑[char[A255053(n)]]-1`
-/

namespace A255072.P4241922727834367516
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255053 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A255072.P4241922727834367516

namespace A255072

/-- `∑[char[A255053(n)]]-1` -/
def P4241922727834367516.Spec : Prop :=
  ∀ n, P4241922727834367516.a n = A255072 n

end A255072

/-!
# A255073: Primes that remain prime after each digit is replaced by the power of its position.

The programs for A255073, there is no canonical definition to state claims against.
-/

/-! ## A255073.P7552332212103216649

`A075239(lt[A350844(n), A276633(2*n+1)])`
-/

namespace A255073.P7552332212103216649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350844 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276633 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075239 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A255073.P7552332212103216649

/-! ## A255073.P8253976044440322831

`∩[A028809(n+1), A075239(n+1)]`
-/

namespace A255073.P8253976044440322831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028809 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255073.P8253976044440322831

/-! ## A255073.P5080862916204927989

`∩[A075239(n+1), A329974(n+1)]`
-/

namespace A255073.P5080862916204927989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255073.P5080862916204927989

/-! ## A255073.P15831038338880876515

`∩[A075239(n+1), A322547(n+1)]`
-/

namespace A255073.P15831038338880876515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322547 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A255073.P15831038338880876515

/-!
# A255074: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum one and no antidiagonal sum one.

The programs for A255074, there is no canonical definition to state claims against.
-/

/-! ## A255074.P2117059629278342535

`A255082(∑[4*n]+1)`
-/

namespace A255074.P2117059629278342535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255074.P2117059629278342535

/-! ## A255074.P9749266015340987283

`record[A003982(n)*A255082(n+1)]`
-/

namespace A255074.P9749266015340987283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A255082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255074.P9749266015340987283

/-! ## A255074.P14547619369233792688

`record[gcd(A003987(n), A255082(n+1))]`
-/

namespace A255074.P14547619369233792688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A255082 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255074.P14547619369233792688

/-! ## A255074.P10062191901420007872

`record[A255082(A057028(A185868(n+1)))]`
-/

namespace A255074.P10062191901420007872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A057028 (A185868 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255074.P10062191901420007872

/-! ## A255074.P2083451612138403118

`A255082(A001844(n))+A034501(n+1)`
-/

namespace A255074.P2083451612138403118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A001844 n).toNat + A034501 (n + 1)

end

end A255074.P2083451612138403118

/-!
# A255075: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum one and no antidiagonal sum one.

The programs for A255075, there is no canonical definition to state claims against.
-/

/-! ## A255075.P18263042693220929210

`A255082(∑[n]+1)`
-/

namespace A255075.P18263042693220929210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255075.P18263042693220929210

/-! ## A255075.P164012345157429647

`lcm(2, A255082(A000124(n)))`
-/

namespace A255075.P164012345157429647
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A255082 (A000124 n).toNat)

end

end A255075.P164012345157429647

/-! ## A255075.P15161130544706963338

`record[A010054(n)*A255082(n+1)]`
-/

namespace A255075.P15161130544706963338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A255082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255075.P15161130544706963338

/-! ## A255075.P13071571510960400629

`record[A103451(n)*A255082(n+1)]`
-/

namespace A255075.P13071571510960400629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A255082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255075.P13071571510960400629

/-! ## A255075.P15975802890848516620

`record[gcd(A002262(n), A255082(n+1))]`
-/

namespace A255075.P15975802890848516620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A255082 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255075.P15975802890848516620

/-!
# A255076: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum one and no antidiagonal sum one.

The programs for A255076, there is no canonical definition to state claims against.
-/

/-! ## A255076.P9926910132674184413

`A255082(∑[n+1]+2)`
-/

namespace A255076.P9926910132674184413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255076.P9926910132674184413

/-! ## A255076.P9099528062056338043

`record[A010054(n)*A255082(n+2)]`
-/

namespace A255076.P9099528062056338043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A255082 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255076.P9099528062056338043

/-! ## A255076.P10539098526587280834

`record[gcd(A002262(n), A255082(n+2))]`
-/

namespace A255076.P10539098526587280834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A255082 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255076.P10539098526587280834

/-! ## A255076.P17967120063096778809

`record[A255082(Δ[A003453(n+5)])]`
-/

namespace A255076.P17967120063096778809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003453 (n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255076.P17967120063096778809

/-! ## A255076.P4844379115722140486

`A255082(A000096(n+1))%A259641(n+1)`
-/

namespace A255076.P4844379115722140486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255082 (A000096 (n + 1)).toNat) (A259641 (n + 1))

end

end A255076.P4844379115722140486

/-!
# A255077: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum one and no antidiagonal sum one.

The programs for A255077, there is no canonical definition to state claims against.
-/

/-! ## A255077.P7505340252506091676

`A255082(∑[n+2]+4)`
-/

namespace A255077.P7505340252506091676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255077.P7505340252506091676

/-! ## A255077.P1349524053647556323

`A255082(A167614(n+1))+A185284(n)`
-/

namespace A255077.P1349524053647556323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A167614 (n + 1)).toNat + A185284 n

end

end A255077.P1349524053647556323

/-! ## A255077.P14630208669259970090

`A255082(A167614(n+1))%A238355(n)`
-/

namespace A255077.P14630208669259970090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255082 (A167614 (n + 1)).toNat) (A238355 (n + 10))

end

end A255077.P14630208669259970090

/-! ## A255077.P138281362966340423

`lcm(A020985(n), A255082(A167614(n+1)))`
-/

namespace A255077.P138281362966340423
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A255082 (A167614 (n + 1)).toNat)

end

end A255077.P138281362966340423

/-! ## A255077.P537588507239049449

`or(A084928(n+1), A255082(A167614(n+1)))`
-/

namespace A255077.P537588507239049449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A084928 (n + 1)) (A255082 (A167614 (n + 1)).toNat)

end

end A255077.P537588507239049449

/-!
# A255078: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum one and no antidiagonal sum one.

The programs for A255078, there is no canonical definition to state claims against.
-/

/-! ## A255078.P13397266282793293879

`A255082(A374004(n+1))`
-/

namespace A255078.P13397266282793293879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A374004 (n + 1)).toNat

end

end A255078.P13397266282793293879

/-! ## A255078.P14103865622953159574

`A255082(A052905(n)+9)`
-/

namespace A255078.P14103865622953159574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A052905 n + 9).toNat

end

end A255078.P14103865622953159574

/-! ## A255078.P5907853974205819455

`A255082(A055999(n)+10)`
-/

namespace A255078.P5907853974205819455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A055999 n + 10).toNat

end

end A255078.P5907853974205819455

/-! ## A255078.P8492814242543402243

`A255082(A167614(n+2)+1)`
-/

namespace A255078.P8492814242543402243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A167614 (n + 2) + 1).toNat

end

end A255078.P8492814242543402243

/-! ## A255078.P7900658626553109150

`A255082(A000217(n+3)+4)`
-/

namespace A255078.P7900658626553109150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A000217 (n + 3) + 4).toNat

end

end A255078.P7900658626553109150

/-!
# A255079: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum one and no antidiagonal sum one.

The programs for A255079, there is no canonical definition to state claims against.
-/

/-! ## A255079.P4916084715537313877

`A255082(A374005(n+1))`
-/

namespace A255079.P4916084715537313877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A374005 (n + 1)).toNat

end

end A255079.P4916084715537313877

/-! ## A255079.P3424363255535511907

`A255082(A056000(n)+15)`
-/

namespace A255079.P3424363255535511907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A056000 n + 15).toNat

end

end A255079.P3424363255535511907

/-! ## A255079.P10443414633772467030

`A255082(A046691(n+3))`
-/

namespace A255079.P10443414633772467030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A046691 (n + 3)).toNat

end

end A255079.P10443414633772467030

/-! ## A255079.P10080791192995709054

`A255082(eq[4, A193592(n)])`
-/

namespace A255079.P10080791192995709054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255079.P10080791192995709054

/-! ## A255079.P8560710565989663596

`A255082(Δ[A023545(n+1)])`
-/

namespace A255079.P8560710565989663596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (f1 (n + 1) - f1 n).toNat

end

end A255079.P8560710565989663596

/-!
# A255080: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum one and no antidiagonal sum one.

The programs for A255080, there is no canonical definition to state claims against.
-/

/-! ## A255080.P56951590514077595

`A255082(A374007(n+1))`
-/

namespace A255080.P56951590514077595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A374007 (n + 1)).toNat

end

end A255080.P56951590514077595

/-! ## A255080.P9144639847311359240

`A255082(A056115(n)+21)`
-/

namespace A255080.P9144639847311359240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A056115 n + 21).toNat

end

end A255080.P9144639847311359240

/-! ## A255080.P14592005916499788563

`A255082(eq[7, A131818(n+1)])`
-/

namespace A255080.P14592005916499788563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255080.P14592005916499788563

/-! ## A255080.P11370429849483667696

`A255082(eq[3, A219347(n)])`
-/

namespace A255080.P11370429849483667696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255080.P11370429849483667696

/-! ## A255080.P9049995297250118714

`A255082(eq[5, A193592(n)])`
-/

namespace A255080.P9049995297250118714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255080.P9049995297250118714

/-!
# A255081: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum one and no antidiagonal sum one.

The programs for A255081, there is no canonical definition to state claims against.
-/

/-! ## A255081.P16159077567518375769

`A255082(A374008(n+1))`
-/

namespace A255081.P16159077567518375769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A374008 (n + 1)).toNat

end

end A255081.P16159077567518375769

/-! ## A255081.P17324917049044687883

`A255082(eq[11, A066657(n)])`
-/

namespace A255081.P17324917049044687883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255081.P17324917049044687883

/-! ## A255081.P18045249691215998020

`A255082(eq[8, A131818(n+1)])`
-/

namespace A255081.P18045249691215998020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255081.P18045249691215998020

/-! ## A255081.P16599956045885766450

`A255082(A055999(n+4))`
-/

namespace A255081.P16599956045885766450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (A055999 (n + 4)).toNat

end

end A255081.P16599956045885766450

/-! ## A255081.P2587932205127808136

`A255082(eq[4, A219347(n)])`
-/

namespace A255081.P2587932205127808136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255082 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A255081.P2587932205127808136

/-!
# A255083: Number of (n+2)X(n+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255083, there is no canonical definition to state claims against.
-/

/-! ## A255083.P17251440948006987001

`A255091(∑[4*n]+1)`
-/

namespace A255083.P17251440948006987001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255083.P17251440948006987001

/-! ## A255083.P6843410510689408025

`record[A003982(n)*A255091(n+1)]`
-/

namespace A255083.P6843410510689408025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A255091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255083.P6843410510689408025

/-! ## A255083.P16986333632392934476

`record[gcd(A114327(n), A255091(n+1))]`
-/

namespace A255083.P16986333632392934476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A255091 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255083.P16986333632392934476

/-! ## A255083.P1683837803576651640

`A255091(A001844(n))+A185284(n)`
-/

namespace A255083.P1683837803576651640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A001844 n).toNat + A185284 n

end

end A255083.P1683837803576651640

/-! ## A255083.P12894696159354013902

`lcm(A033999(n), A255091(A001844(n)))`
-/

namespace A255083.P12894696159354013902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A255091 (A001844 n).toNat)

end

end A255083.P12894696159354013902

/-!
# A255084: Number of (n+2)X(1+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255084, there is no canonical definition to state claims against.
-/

/-! ## A255084.P18293883785886240468

`A255091(∑[n]+1)`
-/

namespace A255084.P18293883785886240468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255084.P18293883785886240468

/-! ## A255084.P4920978840344551931

`record[A010054(n)*A255091(n+1)]`
-/

namespace A255084.P4920978840344551931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A255091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255084.P4920978840344551931

/-! ## A255084.P7590252871943492098

`record[A255091(n+1)/A086645(n)]`
-/

namespace A255084.P7590252871943492098
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255091 (n + 1) : ℚ) / (A086645 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255084.P7590252871943492098

/-! ## A255084.P14942242052121423818

`record[A255091(n+1)/A144303(n)]`
-/

namespace A255084.P14942242052121423818
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255091 (n + 1) : ℚ) / (A144303 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255084.P14942242052121423818

/-! ## A255084.P9526549477806838181

`record[gcd(A002262(n), A255091(n+1))]`
-/

namespace A255084.P9526549477806838181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A255091 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255084.P9526549477806838181

/-!
# A255085: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255085, there is no canonical definition to state claims against.
-/

/-! ## A255085.P15282363275161753287

`A255091(∑[n+1]+2)`
-/

namespace A255085.P15282363275161753287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255085.P15282363275161753287

/-! ## A255085.P7721164133515409557

`record[A010054(n)*A255091(n+2)]`
-/

namespace A255085.P7721164133515409557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A255091 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255085.P7721164133515409557

/-! ## A255085.P1080226960433444295

`record[gcd(A002262(n), A255091(n+2))]`
-/

namespace A255085.P1080226960433444295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A255091 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255085.P1080226960433444295

/-! ## A255085.P5116361865615431488

`lcm(A033999(n), A255091(A000096(n+1)))`
-/

namespace A255085.P5116361865615431488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A255091 (A000096 (n + 1)).toNat)

end

end A255085.P5116361865615431488

/-! ## A255085.P1708857053194226076

`or(A055672(n²), A255091(A000096(n+1)))`
-/

namespace A255085.P1708857053194226076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A055672 (n ^ 2)) (A255091 (A000096 (n + 1)).toNat)

end

end A255085.P1708857053194226076

/-!
# A255086: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255086, there is no canonical definition to state claims against.
-/

/-! ## A255086.P11504586982474798281

`A255091(∑[n+2]+4)`
-/

namespace A255086.P11504586982474798281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255086.P11504586982474798281

/-! ## A255086.P15148691236774923776

`A255091(A167614(n+1))%A017481(n)`
-/

namespace A255086.P15148691236774923776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255091 (A167614 (n + 1)).toNat) (A017481 n)

end

end A255086.P15148691236774923776

/-! ## A255086.P7268672194607552415

`lcm(A033999(n), A255091(A167614(n+1)))`
-/

namespace A255086.P7268672194607552415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A255091 (A167614 (n + 1)).toNat)

end

end A255086.P7268672194607552415

/-! ## A255086.P8899728004693495895

`or(A000007(n), A255091(A167614(n+1)))`
-/

namespace A255086.P8899728004693495895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255091 (A167614 (n + 1)).toNat)

end

end A255086.P8899728004693495895

/-! ## A255086.P14489809314051741877

`or(A000038(n), A255091(A167614(n+1)))`
-/

namespace A255086.P14489809314051741877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A255091 (A167614 (n + 1)).toNat)

end

end A255086.P14489809314051741877

/-!
# A255087: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255087, there is no canonical definition to state claims against.
-/

/-! ## A255087.P5974635981592321581

`A255091(A055999(n)+10)`
-/

namespace A255087.P5974635981592321581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A055999 n + 10).toNat

end

end A255087.P5974635981592321581

/-! ## A255087.P17543074525751914598

`A255091(A167614(n+2)+1)`
-/

namespace A255087.P17543074525751914598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A167614 (n + 2) + 1).toNat

end

end A255087.P17543074525751914598

/-! ## A255087.P566401769487327500

`A255091(A166136(n+2)-2)`
-/

namespace A255087.P566401769487327500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A166136 (n + 2) - 2).toNat

end

end A255087.P566401769487327500

/-! ## A255087.P3323346894405867456

`A255091(A166136(n+1)+1+n)`
-/

namespace A255087.P3323346894405867456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A255087.P3323346894405867456

/-! ## A255087.P894740918072931304

`A255091(A374004(n+1))`
-/

namespace A255087.P894740918072931304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A374004 (n + 1)).toNat

end

end A255087.P894740918072931304

/-!
# A255088: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255088, there is no canonical definition to state claims against.
-/

/-! ## A255088.P15917414835191556392

`A255091(A167499(n+3))`
-/

namespace A255088.P15917414835191556392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A167499 (n + 3)).toNat

end

end A255088.P15917414835191556392

/-! ## A255088.P12005725012307822162

`A255091(A077169(n+5))`
-/

namespace A255088.P12005725012307822162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A077169 (n + 5)).toNat

end

end A255088.P12005725012307822162

/-! ## A255088.P3990614470043663708

`A255091(A155212(n)+13)`
-/

namespace A255088.P3990614470043663708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A155212 n + 13).toNat

end

end A255088.P3990614470043663708

/-! ## A255088.P3270850390332171677

`A255091(A000096(n+3)+6)`
-/

namespace A255088.P3270850390332171677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A000096 (n + 3) + 6).toNat

end

end A255088.P3270850390332171677

/-! ## A255088.P2366369273564290583

`A255091(A374005(n+1))`
-/

namespace A255088.P2366369273564290583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A374005 (n + 1)).toNat

end

end A255088.P2366369273564290583

/-!
# A255089: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255089, there is no canonical definition to state claims against.
-/

/-! ## A255089.P15188109041821147593

`A255091(A166136(n+4))`
-/

namespace A255089.P15188109041821147593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A166136 (n + 4)).toNat

end

end A255089.P15188109041821147593

/-! ## A255089.P1272314626178267169

`A255091(A000096(n+4)+7)`
-/

namespace A255089.P1272314626178267169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A000096 (n + 4) + 7).toNat

end

end A255089.P1272314626178267169

/-! ## A255089.P16537627641434352222

`A255091(A000124(n+6)-(n+1))`
-/

namespace A255089.P16537627641434352222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A255089.P16537627641434352222

/-! ## A255089.P16228569618002455719

`A255091(A374007(n+1))`
-/

namespace A255089.P16228569618002455719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A374007 (n + 1)).toNat

end

end A255089.P16228569618002455719

/-! ## A255089.P7033457953222463370

`A255091(A052905(n+3))`
-/

namespace A255089.P7033457953222463370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A052905 (n + 3)).toNat

end

end A255089.P7033457953222463370

/-!
# A255090: Number of (n+2)X(7+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 2 and no row sum 0 and no column sum 0.

The programs for A255090, there is no canonical definition to state claims against.
-/

/-! ## A255090.P1792900061311745677

`A255091(A000124(n+6)+6)`
-/

namespace A255090.P1792900061311745677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A000124 (n + 6) + 6).toNat

end

end A255090.P1792900061311745677

/-! ## A255090.P11816247051602854751

`A255091(A000217(n+6)+7)`
-/

namespace A255090.P11816247051602854751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A000217 (n + 6) + 7).toNat

end

end A255090.P11816247051602854751

/-! ## A255090.P2305964564917249530

`A255091(A034856(n+4)+n+15)`
-/

namespace A255090.P2305964564917249530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A034856 (n + 4) + (n + 15 : ℤ)).toNat

end

end A255090.P2305964564917249530

/-! ## A255090.P2073409971803581635

`A255091(A374008(n+1))`
-/

namespace A255090.P2073409971803581635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A374008 (n + 1)).toNat

end

end A255090.P2073409971803581635

/-! ## A255090.P15236624857482865240

`A255091(A055999(n+4))`
-/

namespace A255090.P15236624857482865240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255091 (A055999 (n + 4)).toNat

end

end A255090.P15236624857482865240

/-!
# A255092: Least prime p such that p+n is product of (n+1) primes (with multiplicity).

The programs for A255092, there is no canonical definition to state claims against.
-/

/-! ## A255092.P5576451129966013255

`A156615(A293621(n+1))`
-/

namespace A255092.P5576451129966013255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156615 (A293621 (n + 1)).toNat

end

end A255092.P5576451129966013255

/-!
# A255093: Number of (n+2) X (n+2) 0..1 arrays with no 3 X 3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 1 and no column sum 1.

The programs for A255093, there is no canonical definition to state claims against.
-/

/-! ## A255093.P6759747800004530664

`A255101(∑[4*n]+1)`
-/

namespace A255093.P6759747800004530664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255093.P6759747800004530664

/-! ## A255093.P6827214680383539975

`record[A003982(n)*A255101(n+1)]`
-/

namespace A255093.P6827214680383539975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A255101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255093.P6827214680383539975

/-! ## A255093.P11850071060721390261

`record[root(A255101(n+1), A113881(n+1))]`
-/

namespace A255093.P11850071060721390261
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A255101 (n + 1) : ℝ) ^ (1 / (A113881 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255093.P11850071060721390261

/-! ## A255093.P5113976983760375062

`lcm(A020985(n), A255101(A001844(n)))`
-/

namespace A255093.P5113976983760375062
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A255101 (A001844 n).toNat)

end

end A255093.P5113976983760375062

/-! ## A255093.P8504242418955642115

`or(A033684(n), A255101(A001844(n)))`
-/

namespace A255093.P8504242418955642115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033684 n) (A255101 (A001844 n).toNat)

end

end A255093.P8504242418955642115

/-!
# A255094: Number of (n+2) X (1+2) 0..1 arrays with no 3 x 3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 1 and no column sum 1.

The programs for A255094, there is no canonical definition to state claims against.
-/

/-! ## A255094.P1296848208905295254

`A255101(∑[n]+1)`
-/

namespace A255094.P1296848208905295254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A255094.P1296848208905295254

/-! ## A255094.P10237353915187463103

`record[A010054(n)*A255101(n+1)]`
-/

namespace A255094.P10237353915187463103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A255101 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255094.P10237353915187463103

/-! ## A255094.P8508850931053964084

`record[root(A255101(n+1), A007318(n))]`
-/

namespace A255094.P8508850931053964084
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A255101 (n + 1) : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255094.P8508850931053964084

/-! ## A255094.P6444415773334191908

`record[gcd(A002262(n), A255101(n+1))]`
-/

namespace A255094.P6444415773334191908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A255101 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255094.P6444415773334191908

/-! ## A255094.P16838577661351720277

`or(and(2, n)/2, A255101(A000124(n)))`
-/

namespace A255094.P16838577661351720277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((Nat.land 2 n : ℚ) / 2)) (A255101 (A000124 n).toNat)

end

end A255094.P16838577661351720277

/-!
# A255095: Number of (n+2)X(2+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 1 and no column sum 1.

The programs for A255095, there is no canonical definition to state claims against.
-/

/-! ## A255095.P2318377634772672526

`A255101(∑[n+1]+2)`
-/

namespace A255095.P2318377634772672526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A255095.P2318377634772672526

/-! ## A255095.P13359691271363538548

`or(1, A255101(A133263(n+1)))`
-/

namespace A255095.P13359691271363538548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A255101 (A133263 (n + 1)).toNat)

end

end A255095.P13359691271363538548

/-! ## A255095.P13524768187597006767

`record[A010054(n)*A255101(n+2)]`
-/

namespace A255095.P13524768187597006767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A255101 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255095.P13524768187597006767

/-! ## A255095.P3876313338804562738

`record[gcd(A002262(n), A255101(n+2))]`
-/

namespace A255095.P3876313338804562738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A255101 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255095.P3876313338804562738

/-! ## A255095.P8049274473899457146

`A255101(A133263(n+1))%A320560(n)`
-/

namespace A255095.P8049274473899457146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255101 (A133263 (n + 1)).toNat) (A320560 (n + 10))

end

end A255095.P8049274473899457146

/-!
# A255096: Number of (n+2)X(3+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 1 and no column sum 1.

The programs for A255096, there is no canonical definition to state claims against.
-/

/-! ## A255096.P3601601278437914745

`A255101(∑[n+2]+4)`
-/

namespace A255096.P3601601278437914745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A255096.P3601601278437914745

/-! ## A255096.P8233751087223852779

`record[A255101(n+4)/A126075(n)^4]`
-/

namespace A255096.P8233751087223852779
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255101 (n + 4) : ℚ) / (A126075 n ^ 4 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A255096.P8233751087223852779

/-! ## A255096.P13864949830506968761

`A255101(A055998(n)+6)%A000984(n+5)`
-/

namespace A255096.P13864949830506968761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255101 (A055998 n + 6).toNat) (A000984 (n + 5))

end

end A255096.P13864949830506968761

/-! ## A255096.P14554287770634446109

`A014963(A083209(n+1))*A255101(A055998(n)+6)`
-/

namespace A255096.P14554287770634446109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A083209 (n + 1)).toNat * A255101 (A055998 n + 6).toNat

end

end A255096.P14554287770634446109

/-! ## A255096.P238385568265381055

`A014963(A027379(n+6))*A255101(A055998(n)+6)`
-/

namespace A255096.P238385568265381055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A027379 (n + 6)).toNat * A255101 (A055998 n + 6).toNat

end

end A255096.P238385568265381055

/-!
# A255097: Number of (n+2)X(4+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 1 and no column sum 1.

The programs for A255097, there is no canonical definition to state claims against.
-/

/-! ## A255097.P12483727361508147302

`A255101(A374004(n+1))`
-/

namespace A255097.P12483727361508147302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A374004 (n + 1)).toNat

end

end A255097.P12483727361508147302

/-! ## A255097.P15831416698892604294

`A255101(A141214(n)+7)`
-/

namespace A255097.P15831416698892604294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A141214 n + 7).toNat

end

end A255097.P15831416698892604294

/-! ## A255097.P17635355159233677043

`A255101(A052905(n)+9)`
-/

namespace A255097.P17635355159233677043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A052905 n + 9).toNat

end

end A255097.P17635355159233677043

/-! ## A255097.P6221516618533450550

`A255101(A055999(n)+10)`
-/

namespace A255097.P6221516618533450550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A055999 n + 10).toNat

end

end A255097.P6221516618533450550

/-! ## A255097.P7414069891988598938

`A255101(A167614(n+2)+1)`
-/

namespace A255097.P7414069891988598938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A167614 (n + 2) + 1).toNat

end

end A255097.P7414069891988598938

/-!
# A255098: Number of (n+2)X(5+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 1 and no column sum 1.

The programs for A255098, there is no canonical definition to state claims against.
-/

/-! ## A255098.P15979354673553509546

`A255101(A374005(n+1))`
-/

namespace A255098.P15979354673553509546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A374005 (n + 1)).toNat

end

end A255098.P15979354673553509546

/-! ## A255098.P11235708796322784252

`A255101(A167499(n+3))`
-/

namespace A255098.P11235708796322784252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A167499 (n + 3)).toNat

end

end A255098.P11235708796322784252

/-! ## A255098.P2950158529486134554

`A255101(A077169(n+5))`
-/

namespace A255098.P2950158529486134554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A077169 (n + 5)).toNat

end

end A255098.P2950158529486134554

/-! ## A255098.P4624895290413631331

`A255101(A000096(n+3)+6)`
-/

namespace A255098.P4624895290413631331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A000096 (n + 3) + 6).toNat

end

end A255098.P4624895290413631331

/-! ## A255098.P13469070729570103365

`A255101(A000217(n+4)+5)`
-/

namespace A255098.P13469070729570103365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A000217 (n + 4) + 5).toNat

end

end A255098.P13469070729570103365

/-!
# A255099: Number of (n+2)X(6+2) 0..1 arrays with no 3x3 subblock diagonal sum 1 and no antidiagonal sum 1 and no row sum 1 and no column sum 1.

The programs for A255099, there is no canonical definition to state claims against.
-/

/-! ## A255099.P14138801273146003208

`A255101(A374007(n+1))`
-/

namespace A255099.P14138801273146003208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A374007 (n + 1)).toNat

end

end A255099.P14138801273146003208

/-! ## A255099.P14174336930428677636

`A255101(A166136(n+4))`
-/

namespace A255099.P14174336930428677636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A166136 (n + 4)).toNat

end

end A255099.P14174336930428677636

/-! ## A255099.P14749628618470282878

`A255101(A000217(n+5)+6)`
-/

namespace A255099.P14749628618470282878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A000217 (n + 5) + 6).toNat

end

end A255099.P14749628618470282878

/-! ## A255099.P13330815125745920261

`A255101(A000124(n+6)-(n+1))`
-/

namespace A255099.P13330815125745920261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (A000124 (n + 6) - (n + 1 : ℤ)).toNat

end

end A255099.P13330815125745920261

/-! ## A255099.P3203162979840677283

`A255101(Δ[A023551(n+2)]-A005408(n))`
-/

namespace A255099.P3203162979840677283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255101 (f1 (n + 1) - f1 n - A005408 n).toNat

end

end A255099.P3203162979840677283

