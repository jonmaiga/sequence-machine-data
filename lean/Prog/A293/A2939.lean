import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
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
import Seq.B006.C002
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B012.C000
import Seq.B013.C000
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

/-!
# A293900: Number of permutations of the divisors of n that are greater than 1, in which consecutive elements are not coprime and no divisor d may occur later than any divisor e if e < d and A007947(e) = A007947(d). That is, any subset of divisors sharing the same squarefree part occur always in ascending order inside the permutation.

The programs for A293900, there is no canonical definition to state claims against.
-/

/-! ## A293900.P13830440459956701431

`A163820(n+1)/A293902(n+1)`
-/

namespace A293900.P13830440459956701431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163820 (n + 1) : ℚ) / (A293902 (n + 1) : ℚ)

end

end A293900.P13830440459956701431

/-! ## A293900.P6440082673687926161

`A163820(n+1)/A112624(lcm(23, A285769(n+1)))`
-/

namespace A293900.P6440082673687926161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163820 (n + 1) : ℚ) / (A112624 (Int.lcm 23 (A285769 (n + 1))) : ℚ)

end

end A293900.P6440082673687926161

/-! ## A293900.P4236548992212267591

`A163820(n+1)/∏{e}[n+1, #!]^A001221(A244668(n+1))`
-/

namespace A293900.P4236548992212267591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163820 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℚ) ^ (A001221 (A244668 (n + 1)).toNat : ℤ)

end

end A293900.P4236548992212267591

/-! ## A293900.P9654003251680292910

`A163820(n+1)/A112624(n+1)^A001221(A007956(n+1))`
-/

namespace A293900.P9654003251680292910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163820 (n + 1) : ℚ) / (A112624 (n + 1) : ℚ) ^ (A001221 (A007956 (n + 1)).toNat : ℤ)

end

end A293900.P9654003251680292910

/-! ## A293900.P13911543415530641866

`A305194(A295557(n+1))%(2^n)`
-/

namespace A293900.P13911543415530641866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A305194 (A295557 (n + 1)).toNat) (2 ^ n : ℤ)

end

end A293900.P13911543415530641866

/-!
# A293901: Sum of proper divisors of n of the form 4k+1.

The programs for A293901, the canonical program `A293901.P14790839592899706069` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293901 has offset 1).

The definition of A293901 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293901.P10389665455808518521

`A091570(n+1)-A293903(n+1)`
-/

namespace A293901.P10389665455808518521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (n + 1) - A293903 (n + 1)

end

end A293901.P10389665455808518521

namespace A293901

/-- `A091570(n+1)-A293903(n+1)` -/
def P10389665455808518521.Spec : Prop :=
  ∀ n, P10389665455808518521.a n = A293901 (n + 1)

end A293901

/-! ## A293901.P14790839592899706069

`A050449(n+1)%(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A293901

/-- `A050449(n+1)%(n+1)` -/
def P14790839592899706069.Spec : Prop :=
  ∀ n, P14790839592899706069.a n = A293901 (n + 1)

theorem P14790839592899706069.correct : P14790839592899706069.Spec := by
  intro n
  simp only [A293901, Nat.add_sub_cancel]

end A293901

/-! ## A293901.P9199505593095793037

`(1-A326049(n+1)+n)%(n+1)`
-/

namespace A293901.P9199505593095793037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A326049 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A293901.P9199505593095793037

namespace A293901

/-- `(1-A326049(n+1)+n)%(n+1)` -/
def P9199505593095793037.Spec : Prop :=
  ∀ n, P9199505593095793037.a n = A293901 (n + 1)

end A293901

/-! ## A293901.P4595218172945319976

`(A000593(n+1)-A050452(n+1))%(n+1)`
-/

namespace A293901.P4595218172945319976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000593 (n + 1) - A050452 (n + 1)) (n + 1 : ℤ)

end

end A293901.P4595218172945319976

namespace A293901

/-- `(A000593(n+1)-A050452(n+1))%(n+1)` -/
def P4595218172945319976.Spec : Prop :=
  ∀ n, P4595218172945319976.a n = A293901 (n + 1)

end A293901

/-! ## A293901.P6249530787584911797

`(A000203(n+1)-A082052(n+1))%(n+1)`
-/

namespace A293901.P6249530787584911797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) - A082052 (n + 1)) (n + 1 : ℤ)

end

end A293901.P6249530787584911797

namespace A293901

/-- `(A000203(n+1)-A082052(n+1))%(n+1)` -/
def P6249530787584911797.Spec : Prop :=
  ∀ n, P6249530787584911797.a n = A293901 (n + 1)

end A293901

/-! ## A293901.P7424254397220947274

`A091570(n+1)-A050452(n+1)%(n+1)`
-/

namespace A293901.P7424254397220947274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (n + 1) - Int.tmod (A050452 (n + 1)) (n + 1 : ℤ)

end

end A293901.P7424254397220947274

namespace A293901

/-- `A091570(n+1)-A050452(n+1)%(n+1)` -/
def P7424254397220947274.Spec : Prop :=
  ∀ n, P7424254397220947274.a n = A293901 (n + 1)

end A293901

/-! ## A293901.P6335567304238061786

`∑{d}[n+1, A050449(#)*A157658((n+1)/#)]`
-/

namespace A293901.P6335567304238061786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050449 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293901.P6335567304238061786

namespace A293901

/-- `∑{d}[n+1, A050449(#)*A157658((n+1)/#)]` -/
def P6335567304238061786.Spec : Prop :=
  ∀ n, P6335567304238061786.a n = A293901 (n + 1)

end A293901

/-! ## A293901.P2773545994698886870

`(A245092(2*n+1)-A082052(n+1))%(n+1)`
-/

namespace A293901.P2773545994698886870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245092 (2 * n + 1) - A082052 (n + 1)) (n + 1 : ℤ)

end

end A293901.P2773545994698886870

namespace A293901

/-- `(A245092(2*n+1)-A082052(n+1))%(n+1)` -/
def P2773545994698886870.Spec : Prop :=
  ∀ n, P2773545994698886870.a n = A293901 (n + 1)

end A293901

/-! ## A293901.P2512016969112248398

`(A001065(n+1)+1+n-A082052(n+1))%(n+1)`
-/

namespace A293901.P2512016969112248398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1) + 1 + (n : ℤ) - A082052 (n + 1)) (n + 1 : ℤ)

end

end A293901.P2512016969112248398

namespace A293901

/-- `(A001065(n+1)+1+n-A082052(n+1))%(n+1)` -/
def P2512016969112248398.Spec : Prop :=
  ∀ n, P2512016969112248398.a n = A293901 (n + 1)

end A293901

/-! ## A293901.P3557677534138842777

`(A155085(n+1)-(n+1)-A082052(n+1))%(n+1)`
-/

namespace A293901.P3557677534138842777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155085 (n + 1) - (n + 1 : ℤ) - A082052 (n + 1)) (n + 1 : ℤ)

end

end A293901.P3557677534138842777

namespace A293901

/-- `(A155085(n+1)-(n+1)-A082052(n+1))%(n+1)` -/
def P3557677534138842777.Spec : Prop :=
  ∀ n, P3557677534138842777.a n = A293901 (n + 1)

end A293901

/-! ## A293901.P12920432078579211193

`(A064987(n+1)/(n+1)-A082052(n+1))%(n+1)`
-/

namespace A293901.P12920432078579211193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) - (A082052 (n + 1) : ℚ))) (n + 1 : ℤ)

end

end A293901.P12920432078579211193

namespace A293901

/-- `(A064987(n+1)/(n+1)-A082052(n+1))%(n+1)` -/
def P12920432078579211193.Spec : Prop :=
  ∀ n, P12920432078579211193.a n = A293901 (n + 1)

end A293901

/-! ## A293901.P5615217230430718970

`(A245093(∑[n+1])-A082052(n+1))%(n+1)`
-/

namespace A293901.P5615217230430718970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245093 (∑ j ∈ Finset.range (n + 1), f1 j) - A082052 (n + 1)) (n + 1 : ℤ)

end

end A293901.P5615217230430718970

namespace A293901

/-- `(A245093(∑[n+1])-A082052(n+1))%(n+1)` -/
def P5615217230430718970.Spec : Prop :=
  ∀ n, P5615217230430718970.a n = A293901 (n + 1)

end A293901

/-!
# A293902: If n = p_1^e_1 * ... * p_k^e_k, p_1, ..., p_k primes, then a(n) = Product c! where c ranges over products of all combinations of exponents e_1, ..., e_k as {e_1, e_1*e_2, e_1*e_3, e_2*e_3, e_1*e_2*e_3, ..., e_1*e_2*...*e_k}.

The programs for A293902, there is no canonical definition to state claims against.
-/

/-! ## A293902.P11518721234531110529

`A112624(lcm(A076078(n+1), A320389(n+1)))`
-/

namespace A293902.P11518721234531110529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (Int.lcm (A076078 (n + 1)) (A320389 (n + 1)))

end

end A293902.P11518721234531110529

/-! ## A293902.P2912036329391293404

`∏{d}[A076078(n+1), A324912(#)]%A166938(n+11)`
-/

namespace A293902.P2912036329391293404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ d ∈ Nat.divisors (f1 n).natAbs, A324912 d) (A166938 (n + 11))

end

end A293902.P2912036329391293404

/-! ## A293902.P13055370033371676067

`∏{e}[n+1, #!]^A001221(∏{d}[n+1, #]/(n+1))`
-/

namespace A293902.P13055370033371676067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℚ) ^ (A001221 (SequenceMachineLib.roundAway (((∏ d ∈ Nat.divisors (f2 n), d : ℕ) : ℚ) / (n + 1 : ℚ))).toNat : ℤ)

end

end A293902.P13055370033371676067

/-! ## A293902.P1539420059702586692

`A112624(lcm(11, A285769(n+1)))`
-/

namespace A293902.P1539420059702586692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (Int.lcm 11 (A285769 (n + 1)))

end

end A293902.P1539420059702586692

/-! ## A293902.P4614833938049153262

`A112624(41*A285769(n+1))`
-/

namespace A293902.P4614833938049153262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (41 * A285769 (n + 1)).toNat

end

end A293902.P4614833938049153262

/-!
# A293903: Sum of proper divisors of n of the form 4k+3.

The programs for A293903, the canonical program `A293903.P13391266891711295931` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293903 has offset 1).

The definition of A293903 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091570, A293901, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A293903.P13391266891711295931

`A091570(n+1)-A293901(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A293903

/-- `A091570(n+1)-A293901(n+1)` -/
def P13391266891711295931.Spec : Prop :=
  ∀ n, P13391266891711295931.a n = A293903 (n + 1)

theorem P13391266891711295931.correct : P13391266891711295931.Spec := by
  intro n
  simp only [A293903, Nat.add_sub_cancel]

end A293903

/-! ## A293903.P1513891018185891730

`A050452(n+1)%(n+1)`
-/

namespace A293903.P1513891018185891730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050452 (n + 1)) (n + 1 : ℤ)

end

end A293903.P1513891018185891730

namespace A293903

/-- `A050452(n+1)%(n+1)` -/
def P1513891018185891730.Spec : Prop :=
  ∀ n, P1513891018185891730.a n = A293903 (n + 1)

end A293903

/-! ## A293903.P16077727163065025211

`(1-A326052(n+1)+n)%(n+1)`
-/

namespace A293903.P16077727163065025211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (1 - A326052 (n + 1) + (n : ℤ)) (n + 1 : ℤ)

end

end A293903.P16077727163065025211

namespace A293903

/-- `(1-A326052(n+1)+n)%(n+1)` -/
def P16077727163065025211.Spec : Prop :=
  ∀ n, P16077727163065025211.a n = A293903 (n + 1)

end A293903

/-! ## A293903.P11512658794857966333

`A082052(A000265(n+1))%(n+1)`
-/

namespace A293903.P11512658794857966333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082052 (A000265 (n + 1)).toNat) (n + 1 : ℤ)

end

end A293903.P11512658794857966333

namespace A293903

/-- `A082052(A000265(n+1))%(n+1)` -/
def P11512658794857966333.Spec : Prop :=
  ∀ n, P11512658794857966333.a n = A293903 (n + 1)

end A293903

/-! ## A293903.P14582467326849891033

`A082052(A153733(n)+1)%(n+1)`
-/

namespace A293903.P14582467326849891033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082052 (A153733 n + 1).toNat) (n + 1 : ℤ)

end

end A293903.P14582467326849891033

namespace A293903

/-- `A082052(A153733(n)+1)%(n+1)` -/
def P14582467326849891033.Spec : Prop :=
  ∀ n, P14582467326849891033.a n = A293903 (n + 1)

end A293903

/-! ## A293903.P16451529423936766212

`(A000593(n+1)-A050449(n+1))%(n+1)`
-/

namespace A293903.P16451529423936766212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000593 (n + 1) - A050449 (n + 1)) (n + 1 : ℤ)

end

end A293903.P16451529423936766212

namespace A293903

/-- `(A000593(n+1)-A050449(n+1))%(n+1)` -/
def P16451529423936766212.Spec : Prop :=
  ∀ n, P16451529423936766212.a n = A293903 (n + 1)

end A293903

/-! ## A293903.P3353021069492642504

`A091570(n+1)-A050449(n+1)%(n+1)`
-/

namespace A293903.P3353021069492642504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091570 (n + 1) - Int.tmod (A050449 (n + 1)) (n + 1 : ℤ)

end

end A293903.P3353021069492642504

namespace A293903

/-- `A091570(n+1)-A050449(n+1)%(n+1)` -/
def P3353021069492642504.Spec : Prop :=
  ∀ n, P3353021069492642504.a n = A293903 (n + 1)

end A293903

/-! ## A293903.P12911099066936406843

`∑{d}[n+1, A050452(#)*A157658((n+1)/#)]`
-/

namespace A293903.P12911099066936406843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A050452 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A293903.P12911099066936406843

namespace A293903

/-- `∑{d}[n+1, A050452(#)*A157658((n+1)/#)]` -/
def P12911099066936406843.Spec : Prop :=
  ∀ n, P12911099066936406843.a n = A293903 (n + 1)

end A293903

/-!
# A293905: E.g.f.: exp(Sum_{n>=1} A000041(n-1)*x^n/n).

The programs for A293905, there is no canonical definition to state claims against.
-/

/-! ## A293905.P6316256073451125879

`A092533(A217389(n)-A002865(n))`
-/

namespace A293905.P6316256073451125879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A217389 n - A002865 n).toNat

end

end A293905.P6316256073451125879

/-! ## A293905.P4037691914134513991

`A092533(A217389(n)-A004526(n))`
-/

namespace A293905.P4037691914134513991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A217389 n - A004526 n).toNat

end

end A293905.P4037691914134513991

/-! ## A293905.P1171141713258100862

`A092533(A217389(n)-A092533(n))`
-/

namespace A293905.P1171141713258100862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092533 (A217389 n - A092533 n).toNat

end

end A293905.P1171141713258100862

/-!
# A293906: E.g.f.: exp(Sum_{n>=1} A000009(n-1)*x^n/n).

The programs for A293906, there is no canonical definition to state claims against.
-/

/-! ## A293906.P4437681597113495505

`A131055(ceil(sqrt(A244437(n))))`
-/

namespace A293906.P4437681597113495505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131055 ⌈Real.sqrt (A244437 n : ℝ)⌉.toNat

end

end A293906.P4437681597113495505

/-! ## A293906.P7400317288121039776

`A072000(A000670(n))+A068763(n+1)`
-/

namespace A293906.P7400317288121039776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072000 (A000670 n).toNat + A068763 (n + 1)

end

end A293906.P7400317288121039776

/-!
# A293908: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f.: exp(Sum_{j>=1} j^(k-1)*A000009(j)*x^j).

The programs for A293908, there is no canonical definition to state claims against.
-/

/-! ## A293908.P17458243395063368730

`A293796(n)-A035062(A293785(n))`
-/

namespace A293908.P17458243395063368730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293796 n - A035062 (A293785 n).toNat

end

end A293908.P17458243395063368730

/-!
# A293909: Number of Goldbach partitions (p,q) of 2n, p <= q, such that both 2n-2 and 2n+2 have a Goldbach partition with a greater difference between its prime parts than q-p.

The programs for A293909, there is no canonical definition to state claims against.
-/

/-! ## A293909.P10591109103336885938

`A123108(A096139(n+1)+1)-A000009(A347744(2*n+1))`
-/

namespace A293909.P10591109103336885938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A096139 (n + 1) + 1).toNat - A000009 (A347744 (2 * n + 1)).toNat

end

end A293909.P10591109103336885938

/-! ## A293909.P9422111800648360660

`A002265(2*(A096139(n+1)+1))-A000009(A347744(2*n+1))`
-/

namespace A293909.P9422111800648360660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A096139 (n + 1) + 1)).toNat - A000009 (A347744 (2 * n + 1)).toNat

end

end A293909.P9422111800648360660

/-! ## A293909.P5794058117113006556

`A171611(n+1)-A337380(A080014(n))`
-/

namespace A293909.P5794058117113006556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171611 (n + 1) - A337380 (A080014 n).toNat

end

end A293909.P5794058117113006556

/-! ## A293909.P1297482714156298920

`A351014(A346193(n+2))`
-/

namespace A293909.P1297482714156298920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351014 (A346193 (n + 2)).toNat

end

end A293909.P1297482714156298920

/-!
# A293914: Number of linear chord diagrams having n chords and minimal chord length one.

The programs for A293914, there is no canonical definition to state claims against.
-/

/-! ## A293914.P14881925002538284762

`record[A001497(n)]-A278990(n+1)`
-/

namespace A293914.P14881925002538284762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A278990 (n + 1)

end

end A293914.P14881925002538284762

/-! ## A293914.P15936015432372398558

`A001147(n+1)-A278990(n+1)`
-/

namespace A293914.P15936015432372398558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) - A278990 (n + 1)

end

end A293914.P15936015432372398558

/-! ## A293914.P355450248321575310

`∏[A005408(n)]-A079267(∑[n+1])`
-/

namespace A293914.P355450248321575310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A079267 (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A293914.P355450248321575310

/-! ## A293914.P4275316596766437682

`A001147(n+1)-∑[A003436(n+1)]`
-/

namespace A293914.P4275316596766437682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293914.P4275316596766437682

/-! ## A293914.P15950200531846026586

`record[A001497(n+1)-A079267(n+1)]`
-/

namespace A293914.P15950200531846026586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001497 (n + 1) - A079267 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293914.P15950200531846026586

/-! ## A293914.P17271441638319179472

`A001147(n+1)+A036244(n+1)-A025164(n+1)`
-/

namespace A293914.P17271441638319179472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001147 (n + 1) + (A036244 (n + 1) - A025164 (n + 1))

end

end A293914.P17271441638319179472

/-!
# A293915: Number of linear chord diagrams having n chords and minimal chord length two.

The programs for A293915, there is no canonical definition to state claims against.
-/

/-! ## A293915.P13513223843331182605

`record[A278990(n)]-A190823(n+2)`
-/

namespace A293915.P13513223843331182605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A190823 (n + 2)

end

end A293915.P13513223843331182605

/-! ## A293915.P758390990805715622

`A278990(n+2)-A190823(n+2)`
-/

namespace A293915.P758390990805715622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278990 (n + 2) - A190823 (n + 2)

end

end A293915.P758390990805715622

/-! ## A293915.P14228292557648137578

`record[A293881(∑[n]+2)]`
-/

namespace A293915.P14228292557648137578
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 (∑ j ∈ Finset.range (n + 1), f2 j + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293915.P14228292557648137578

/-! ## A293915.P10864614420665055008

`A293881(∑[n+2]+3)`
-/

namespace A293915.P10864614420665055008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A293915.P10864614420665055008

/-!
# A293916: Number of linear chord diagrams having n chords and minimal chord length three.

The programs for A293916, there is no canonical definition to state claims against.
-/

/-! ## A293916.P7334856540827106396

`record[A190823(n)]-A190824(n+3)`
-/

namespace A293916.P7334856540827106396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190823 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A190824 (n + 3)

end

end A293916.P7334856540827106396

/-! ## A293916.P8331452873361117187

`A293881(∑[n+3]+6)`
-/

namespace A293916.P8331452873361117187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A293916.P8331452873361117187

/-! ## A293916.P16870001502165852680

`record[gcd(A293881(n+3), A331126(n))]`
-/

namespace A293916.P16870001502165852680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A293881 (n + 3)) (A331126 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293916.P16870001502165852680

/-!
# A293917: Number of linear chord diagrams having n chords and minimal chord length four.

The programs for A293917, there is no canonical definition to state claims against.
-/

/-! ## A293917.P9708089098131612082

`record[A190824(n)]-A190825(n+4)`
-/

namespace A293917.P9708089098131612082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190824 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A190825 (n + 4)

end

end A293917.P9708089098131612082

/-! ## A293917.P15156169908012498263

`A293881(eq[4, n-C(∑[char[∑[n]]], 2)])`
-/

namespace A293917.P15156169908012498263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293917.P15156169908012498263

/-!
# A293918: Number of linear chord diagrams having n chords and minimal chord length five.

The programs for A293918, there is no canonical definition to state claims against.
-/

/-! ## A293918.P13739113931303973957

`A293881(A167499(n+4))`
-/

namespace A293918.P13739113931303973957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293881 (A167499 (n + 4)).toNat

end

end A293918.P13739113931303973957

/-!
# A293930: Number of circularly chained n X n alternating sign matrices.

The programs for A293930, there is no canonical definition to state claims against.
-/

/-! ## A293930.P14071037100688221240

`A041827(A016116(n))*A118034(n)`
-/

namespace A293930.P14071037100688221240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041827 (A016116 n).toNat * A118034 n

end

end A293930.P14071037100688221240

/-!
# A293931: Number of circularly chained n-tuples of 2 X 2 alternating sign matrices.

The programs for A293931, there is no canonical definition to state claims against.
-/

/-! ## A293931.P7379225064673215094

`lcm(2, record[A088014(n)])`
-/

namespace A293931.P7379225064673215094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088014 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A293931.P7379225064673215094

/-! ## A293931.P4697182088315364781

`2*A088014(n+1)`
-/

namespace A293931.P4697182088315364781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088014 (n + 1)

end

end A293931.P4697182088315364781

/-! ## A293931.P13745796623698391484

`2*(A088015(n+1)+1)`
-/

namespace A293931.P13745796623698391484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A088015 (n + 1) + 1)

end

end A293931.P13745796623698391484

/-! ## A293931.P5003334552637117833

`A004277(A088014(n+1))`
-/

namespace A293931.P5003334552637117833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A088014 (n + 1)).toNat

end

end A293931.P5003334552637117833

/-! ## A293931.P9217445739928804313

`A171734(A088015(n+1))`
-/

namespace A293931.P9217445739928804313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171734 (A088015 (n + 1)).toNat

end

end A293931.P9217445739928804313

/-!
# A293933: Poincaré series for invariant polynomial functions on the space of binary forms of degree 7.

The programs for A293933, there is no canonical definition to state claims against.
-/

/-! ## A293933.P11437327768258433986

`A001979(2*n)-A001980(2*n)`
-/

namespace A293933.P11437327768258433986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001979 (2 * n) - A001980 (2 * n)

end

end A293933.P11437327768258433986

/-!
# A293937: Poincaré series for invariant polynomial functions on the space of binary forms of degree 12.

The programs for A293937, there is no canonical definition to state claims against.
-/

/-! ## A293937.P4040041129879427321

`A167025(A005294(n+4))`
-/

namespace A293937.P4040041129879427321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167025 (A005294 (n + 4)).toNat

end

end A293937.P4040041129879427321

/-!
# A293941: Poincaré series for invariant polynomial functions on the space of binary forms of degree 16.

The programs for A293941, there is no canonical definition to state claims against.
-/

/-! ## A293941.P15722665779766292805

`A270825(A112521(n+1))`
-/

namespace A293941.P15722665779766292805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270825 (A112521 (n + 1)).toNat

end

end A293941.P15722665779766292805

/-! ## A293941.P6020257821091881861

`A205617(A026792(n+5)*A052372(n))`
-/

namespace A293941.P6020257821091881861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205617 (A026792 (n + 5) * A052372 n).toNat

end

end A293941.P6020257821091881861

/-! ## A293941.P10796147850347604856

`xor(A061399(n+1), A271237(A144904(n)))`
-/

namespace A293941.P10796147850347604856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A061399 (n + 1)) (A271237 (A144904 n).toNat)

end

end A293941.P10796147850347604856

/-!
# A293942: Poincaré series for invariant polynomial functions on the space of binary forms of degree 20.

The programs for A293942, there is no canonical definition to state claims against.
-/

/-! ## A293942.P5505775719550140114

`A372306(A027306(n))-n`
-/

namespace A293942.P5505775719550140114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372306 (A027306 n).toNat - (n : ℤ)

end

end A293942.P5505775719550140114

/-!
# A293946: a(n) = number of lattice paths from (0,0) to (3n,2n) which lie wholly below the line 3y=2x, only touching at the endpoints.

The programs for A293946, there is no canonical definition to state claims against.
-/

/-! ## A293946.P8751647818574093473

`A047020(A022283(n))`
-/

namespace A293946.P8751647818574093473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047020 (A022283 n).toNat

end

end A293946.P8751647818574093473

/-! ## A293946.P5060753349902523805

`A071202(A383465(n))`
-/

namespace A293946.P5060753349902523805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071202 (A383465 n).toNat

end

end A293946.P5060753349902523805

/-!
# A293947: Sequence P(n) arising in the analysis of the Hofstadter "brother" sequence A284644.

The programs for A293947, there is no canonical definition to state claims against.
-/

/-! ## A293947.P8268605151387828721

`A008624(11*(2^n-1))`
-/

namespace A293947.P8268605151387828721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (11 * ((2 ^ n : ℤ) - 1)).toNat

end

end A293947.P8268605151387828721

/-! ## A293947.P10602287800525215320

`A264843(a(n-1))+2*a(n-1)` with `a(0)=1`
-/

namespace A293947.P10602287800525215320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A264843 (a (n - 1)).toNat + 2 * a (n - 1)

end

end A293947.P10602287800525215320

/-! ## A293947.P10496121977181632198

`2*A233583(a(n-1)+2)+1` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A293947.P10496121977181632198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  2 * A233583 (a (n - 1) + 2).toNat + 1

end

end A293947.P10496121977181632198

/-! ## A293947.P17692518248416697014

`A124072(A139635(n+1))`
-/

namespace A293947.P17692518248416697014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (A139635 (n + 1)).toNat

end

end A293947.P17692518248416697014

/-! ## A293947.P17392070125832708676

`A059169(A005015(n))-2`
-/

namespace A293947.P17392070125832708676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059169 (A005015 n).toNat - 2

end

end A293947.P17392070125832708676

/-!
# A293948: Arises in a coin-weighing problem.

The programs for A293948, there is no canonical definition to state claims against.
-/

/-! ## A293948.P9357587742859174906

`A335944(A149327(n))`
-/

namespace A293948.P9357587742859174906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335944 (A149327 n).toNat

end

end A293948.P9357587742859174906

/-! ## A293948.P6033769200981856961

`A291219(n)-A022003(A020011(n))`
-/

namespace A293948.P6033769200981856961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291219 n - A022003 (A020011 n).toNat

end

end A293948.P6033769200981856961

/-! ## A293948.P17192047554515800606

`A291219(n)-A022003(A020056(n))`
-/

namespace A293948.P17192047554515800606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291219 n - A022003 (A020056 n).toNat

end

end A293948.P17192047554515800606

/-! ## A293948.P8865858125587973206

`A291219(n)-A261990(A007097(n))`
-/

namespace A293948.P8865858125587973206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291219 n - A261990 (A007097 n).toNat

end

end A293948.P8865858125587973206

/-! ## A293948.P1025245068311131920

`A291219(n)-A327222(A000387(n))`
-/

namespace A293948.P1025245068311131920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291219 n - A327222 (A000387 n).toNat

end

end A293948.P1025245068311131920

/-!
# A293949: Arises in a coin-weighing problem.

The programs for A293949, there is no canonical definition to state claims against.
-/

/-! ## A293949.P14996376826621977279

`ceil(abs(2-A279682(n))/3)`
-/

namespace A293949.P14996376826621977279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|2 - A279682 n| : ℚ) / 3⌉

end

end A293949.P14996376826621977279

/-! ## A293949.P17912417383680908846

`floor(A279682(n)/A158799(n))`
-/

namespace A293949.P17912417383680908846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A279682 n : ℚ) / (A158799 n : ℚ)⌋

end

end A293949.P17912417383680908846

/-! ## A293949.P12065108129085003459

`floor((A279682(n)+A000038(n))/3)`
-/

namespace A293949.P12065108129085003459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A279682 n + A000038 n : ℚ) / 3⌋

end

end A293949.P12065108129085003459

/-! ## A293949.P10463386928797357435

`floor(A279682(n)/gcd(3, A000244(n)))`
-/

namespace A293949.P10463386928797357435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A279682 n : ℚ) / (Int.gcd 3 (A000244 n) : ℚ)⌋

end

end A293949.P10463386928797357435

/-! ## A293949.P10300969057405945819

`floor((A239851(2*(n+1))-A001045(n+2))/A158799(n))`
-/

namespace A293949.P10300969057405945819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A239851 (2 * (n + 1)) - A001045 (n + 2) : ℚ) / (A158799 n : ℚ)⌋

end

end A293949.P10300969057405945819

/-!
# A293950: Number of linear extensions of a poset whose Hasse diagram consists of n binary shrubs with type A_n joins.

The programs for A293950, there is no canonical definition to state claims against.
-/

/-! ## A293950.P7586932650648896741

`A249402(3*n)`
-/

namespace A293950.P7586932650648896741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249402 (3 * n)

end

end A293950.P7586932650648896741

/-! ## A293950.P16282834255859071058

`A249583(3*n)`
-/

namespace A293950.P16282834255859071058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249583 (3 * n)

end

end A293950.P16282834255859071058

/-! ## A293950.P14227470928194458817

`record[A249402(A006368(n))]`
-/

namespace A293950.P14227470928194458817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249402 (A006368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293950.P14227470928194458817

/-! ## A293950.P6735960128568514890

`record[A249583(A014682(n)+1)]`
-/

namespace A293950.P6735960128568514890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249583 (A014682 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293950.P6735960128568514890

/-! ## A293950.P6296646446001677026

`record[gcd(A249402(n), A249583(n))]`
-/

namespace A293950.P6296646446001677026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A249402 n) (A249583 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293950.P6296646446001677026

/-!
# A293951: Number of linear extensions of a poset whose Hasse diagram consists of n binary shrubs with type B_n joins.

The programs for A293951, there is no canonical definition to state claims against.
-/

/-! ## A293951.P8712024603173096317

`A178963(3*n+2)`
-/

namespace A293951.P8712024603173096317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178963 (3 * n + 2)

end

end A293951.P8712024603173096317

/-! ## A293951.P16712783698425533845

`A249583(3*n+2)`
-/

namespace A293951.P16712783698425533845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249583 (3 * n + 2)

end

end A293951.P16712783698425533845

/-! ## A293951.P4694404251172178503

`record[A178963(ceil((lcm(2, n)+1+n)/2))]`
-/

namespace A293951.P4694404251172178503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178963 ⌈(Nat.lcm 2 n + 1 + n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293951.P4694404251172178503

/-! ## A293951.P3563761761593911417

`record[A178963(A014682(n))]`
-/

namespace A293951.P3563761761593911417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178963 (A014682 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293951.P3563761761593911417

/-! ## A293951.P1556395437567511529

`or(1, A178963(A016789(n)))`
-/

namespace A293951.P1556395437567511529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A178963 (A016789 n).toNat)

end

end A293951.P1556395437567511529

/-!
# A293952: Number of linear extensions of a poset whose Hasse diagram consists of n binary shrubs with type E_n joins.

The programs for A293952, there is no canonical definition to state claims against.
-/

/-! ## A293952.P16967349325677760089

`A178963(3*n+1)`
-/

namespace A293952.P16967349325677760089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178963 (3 * n + 1)

end

end A293952.P16967349325677760089

/-! ## A293952.P14092528002236013758

`A249402(3*n+1)`
-/

namespace A293952.P14092528002236013758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249402 (3 * n + 1)

end

end A293952.P14092528002236013758

/-! ## A293952.P10616717121062029274

`record[A249402(A006368(n)+1)]`
-/

namespace A293952.P10616717121062029274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249402 (A006368 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293952.P10616717121062029274

/-! ## A293952.P2481003109053980445

`record[A178963(A014682(n)+2)]`
-/

namespace A293952.P2481003109053980445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178963 (A014682 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293952.P2481003109053980445

/-! ## A293952.P15048534511414383107

`record[gcd(A178963(n), A249402(n))]`
-/

namespace A293952.P15048534511414383107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A178963 n) (A249402 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293952.P15048534511414383107

/-!
# A293953: Number of linear extensions of a poset whose Hasse diagram consists of n binary shrubs with type S_n joins.

The programs for A293953, there is no canonical definition to state claims against.
-/

/-! ## A293953.P3588218137160404280

`A249583(3*n+1)`
-/

namespace A293953.P3588218137160404280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249583 (3 * n + 1)

end

end A293953.P3588218137160404280

/-! ## A293953.P15493547298541379607

`or(1, A249583(A016777(n)))`
-/

namespace A293953.P15493547298541379607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A249583 (A016777 n).toNat)

end

end A293953.P15493547298541379607

/-! ## A293953.P9524857179278294182

`record[A249583(A014682(n)+2)]`
-/

namespace A293953.P9524857179278294182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249583 (A014682 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293953.P9524857179278294182

/-! ## A293953.P2839562549918871293

`record[A249583(and(n, A049347(n)))]`
-/

namespace A293953.P2839562549918871293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249583 (Int.land (n : ℤ) (A049347 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293953.P2839562549918871293

/-! ## A293953.P12076760511089350688

`A249583(A016777(n))+(n+1)%A020639(n+1)`
-/

namespace A293953.P12076760511089350688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249583 (A016777 n).toNat + Int.tmod (n + 1 : ℤ) (A020639 (n + 1))

end

end A293953.P12076760511089350688

/-!
# A293954: First differences of A055612.

The programs for A293954, there is no canonical definition to state claims against.
-/

/-! ## A293954.P1837667095644042419

`A055612(n+1)-A055612(n)`
-/

namespace A293954.P1837667095644042419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055612 (n + 1) - A055612 n

end

end A293954.P1837667095644042419

/-! ## A293954.P12176132586714299529

`Δ[A055612(n)]`
-/

namespace A293954.P12176132586714299529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293954.P12176132586714299529

/-! ## A293954.P7698578302557002476

`Δ[A129824(n)/2]`
-/

namespace A293954.P7698578302557002476
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129824 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293954.P7698578302557002476

/-! ## A293954.P6379842320860142738

`Δ[A001222(A096014(n+1))*A304902(n)]`
-/

namespace A293954.P6379842320860142738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A096014 (n + 1)).toNat * A304902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293954.P6379842320860142738

/-! ## A293954.P17555597647223228897

`Δ[A000120(A000051(n))*A304902(n)]`
-/

namespace A293954.P17555597647223228897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000051 n).toNat * A304902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293954.P17555597647223228897

/-!
# A293955: Partial sums of A055612.

The programs for A293955, there is no canonical definition to state claims against.
-/

/-! ## A293955.P10326449077332425355

`∑[A055612(n)]`
-/

namespace A293955.P10326449077332425355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055612 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293955.P10326449077332425355

/-! ## A293955.P11478552985932278723

`∑[A129824(n)/2]`
-/

namespace A293955.P11478552985932278723
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129824 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293955.P11478552985932278723

/-! ## A293955.P17338565955085378125

`∑[2*A304902(n)]-1`
-/

namespace A293955.P17338565955085378125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A304902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A293955.P17338565955085378125

/-! ## A293955.P8613054958292511305

`∑[A000032(C(2, n+2))*A304902(n)]`
-/

namespace A293955.P8613054958292511305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A304902 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293955.P8613054958292511305

/-!
# A293957: When A002487 is written as a triangle the n-th row has length 2^(n-1); a(n) is the maximal multiplicity of any entry in that row, considering the entries strictly between the initial 1 and the central 2.

The programs for A293957, there is no canonical definition to state claims against.
-/

/-! ## A293957.P2734332490911879750

`A022307(A348416(n+1)+A005246(n))`
-/

namespace A293957.P2734332490911879750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022307 (A348416 (n + 1) + A005246 n).toNat

end

end A293957.P2734332490911879750

/-! ## A293957.P15477619829190659791

`A157685(A252736(n+1)+A018128(n))`
-/

namespace A293957.P15477619829190659791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157685 (A252736 (n + 1) + A018128 n).toNat

end

end A293957.P15477619829190659791

/-!
# A293958: Smallest odd prime divisor of (2n+1)^2 + 1.

The programs for A293958, there is no canonical definition to state claims against.
-/

/-! ## A293958.P12106917730270718383

`A078701(A069894(n+1))`
-/

namespace A293958.P12106917730270718383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (A069894 (n + 1)).toNat

end

end A293958.P12106917730270718383

/-! ## A293958.P14834297269901958791

`A125256(2*n+3)`
-/

namespace A293958.P14834297269901958791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (2 * n + 3)

end

end A293958.P14834297269901958791

/-! ## A293958.P15427878547305224574

`or(A008966(n+1), A125256(A144396(n+1)))`
-/

namespace A293958.P15427878547305224574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008966 (n + 1)) (A125256 (A144396 (n + 1)).toNat)

end

end A293958.P15427878547305224574

/-! ## A293958.P5846016925989348746

`A125256(A144396(n+1))^A033999(n)²^A053679(n)`
-/

namespace A293958.P5846016925989348746
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A125256 (A144396 (n + 1)).toNat : ℝ) ^ ((A033999 n ^ 2 : ℚ) ^ (A053679 n : ℤ) : ℝ)

end

end A293958.P5846016925989348746

/-! ## A293958.P2207655257875659133

`∑{p}[A125256(A144396(n+1)), #]`
-/

namespace A293958.P2207655257875659133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125256 (A144396 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A293958.P2207655257875659133

/-! ## A293958.P3105598888588632478

`p?[lcm(A125256(n+2), A134451(n))]`
-/

namespace A293958.P3105598888588632478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A125256 (n + 2)) (A134451 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A293958.P3105598888588632478

/-! ## A293958.P7407190745415217921

`A020639(∑[4*(n+1)]+1)`
-/

namespace A293958.P7407190745415217921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A293958.P7407190745415217921

/-! ## A293958.P18201238438528782141

`p?[A020639(2*(n²+n)+1)]`
-/

namespace A293958.P18201238438528782141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * (n ^ 2 + n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A293958.P18201238438528782141

/-! ## A293958.P13599087811503047545

`or(1, A020639((n+3)*2*n+5))`
-/

namespace A293958.P13599087811503047545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A020639 ((n + 3) * (2 * n) + 5))

end

end A293958.P13599087811503047545

/-! ## A293958.P6357961398649566788

`∏{d}[A020639((n+1)²+(n+2)²), #]`
-/

namespace A293958.P6357961398649566788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) ^ 2 + (n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A293958.P6357961398649566788

/-! ## A293958.P16143013325558803604

`∑{p}[A020639((n+2)²+(n+1)²), #]`
-/

namespace A293958.P16143013325558803604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 2) ^ 2 + (n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A293958.P16143013325558803604

/-! ## A293958.P8913645835979501338

`∏{p}[A020639((n+1)*2*(n+2)+1), #]`
-/

namespace A293958.P8913645835979501338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((n + 1) * (2 * (n + 2)) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A293958.P8913645835979501338

/-! ## A293958.P13244250061298355715

`A020639(A099776(n+1))%A099744(n+5)`
-/

namespace A293958.P13244250061298355715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (A099776 (n + 1)).toNat) (A099744 (n + 5))

end

end A293958.P13244250061298355715

/-! ## A293958.P13704151013127597111

`A306289(A143978(n+1))`
-/

namespace A293958.P13704151013127597111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306289 (A143978 (n + 1)).toNat

end

end A293958.P13704151013127597111

/-!
# A293959: Construct a triangle T(n,k) (0 <= k <= n) of strings of integers, where T(0,0) = {0}, T(n,n) = {n}, and otherwise T(n,k) is the concatenation of T(n-1,k-1) and T(n-1,k). The sequence is obtained by reading across the rows of the triangle, concatenating the successive strings.

The programs for A293959, the canonical program `A293959.P4536624460785763287` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293959 has offset 0).

The definition of A293959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 120 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293959.P4536624460785763287

`A265754(n+1)-1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A293959

/-- `A265754(n+1)-1` -/
def P4536624460785763287.Spec : Prop :=
  ∀ n, P4536624460785763287.a n = A293959 n

theorem P4536624460785763287.correct : P4536624460785763287.Spec := by
  intro n
  simp only [A293959]

end A293959

/-! ## A293959.P13516430973554603572

`val(A209641(n+1), 2)-1`
-/

namespace A293959.P13516430973554603572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A209641 (n + 1)).toNat 2 : ℤ) - 1

end

end A293959.P13516430973554603572

namespace A293959

/-- `val(A209641(n+1), 2)-1` -/
def P13516430973554603572.Spec : Prop :=
  ∀ n, P13516430973554603572.a n = A293959 n

end A293959

/-! ## A293959.P541276335440061534

`(a(n-1)+1)%A051135(n+2)` with `a(0)=0`
-/

namespace A293959.P541276335440061534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.tmod (a (n - 1) + 1) (A051135 (n + 2))

end

end A293959.P541276335440061534

namespace A293959

/-- `(a(n-1)+1)%A051135(n+2)` -/
def P541276335440061534.Spec : Prop :=
  ∀ n, P541276335440061534.a n = A293959 n

end A293959

/-! ## A293959.P14897105091946928695

`A266640(xor(n+1, 2^floor(log2(n+1))-1))-1`
-/

namespace A293959.P14897105091946928695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266640 (Int.xor (n + 1 : ℤ) ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1)).toNat - 1

end

end A293959.P14897105091946928695

namespace A293959

/-- `A266640(xor(n+1, 2^floor(log2(n+1))-1))-1` -/
def P14897105091946928695.Spec : Prop :=
  ∀ n, P14897105091946928695.a n = A293959 n

end A293959

/-! ## A293959.P12624862872518512610

`A000378(A265754(n+1))`
-/

namespace A293959.P12624862872518512610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (A265754 (n + 1)).toNat

end

end A293959.P12624862872518512610

namespace A293959

/-- `A000378(A265754(n+1))` -/
def P12624862872518512610.Spec : Prop :=
  ∀ n, P12624862872518512610.a n = A293959 n

end A293959

/-! ## A293959.P1887891561661477599

`A007814(A359336(n)+1)`
-/

namespace A293959.P1887891561661477599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A359336 n + 1).toNat

end

end A293959.P1887891561661477599

namespace A293959

/-- `A007814(A359336(n)+1)` -/
def P1887891561661477599.Spec : Prop :=
  ∀ n, P1887891561661477599.a n = A293959 n

end A293959

/-! ## A293959.P13012648928808472585

`A057918(A265754(n+1)²)`
-/

namespace A293959.P13012648928808472585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A265754 (n + 1) ^ 2).toNat

end

end A293959.P13012648928808472585

namespace A293959

/-- `A057918(A265754(n+1)²)` -/
def P13012648928808472585.Spec : Prop :=
  ∀ n, P13012648928808472585.a n = A293959 n

end A293959

/-! ## A293959.P1042158444288692632

`A086520(A265754(n+1)²)`
-/

namespace A293959.P1042158444288692632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A265754 (n + 1) ^ 2).toNat

end

end A293959.P1042158444288692632

namespace A293959

/-- `A086520(A265754(n+1)²)` -/
def P1042158444288692632.Spec : Prop :=
  ∀ n, P1042158444288692632.a n = A293959 n

end A293959

/-! ## A293959.P5279007348575400234

`A080237(A209643(n+1))-1`
-/

namespace A293959.P5279007348575400234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080237 (A209643 (n + 1)).toNat - 1

end

end A293959.P5279007348575400234

namespace A293959

/-- `A080237(A209643(n+1))-1` -/
def P5279007348575400234.Spec : Prop :=
  ∀ n, P5279007348575400234.a n = A293959 n

end A293959

/-! ## A293959.P3783975176575787248

`A090996(A209862(n+1))-1`
-/

namespace A293959.P3783975176575787248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A209862 (n + 1)).toNat - 1

end

end A293959.P3783975176575787248

namespace A293959

/-- `A090996(A209862(n+1))-1` -/
def P3783975176575787248.Spec : Prop :=
  ∀ n, P3783975176575787248.a n = A293959 n

end A293959

/-! ## A293959.P15237166873905373803

`A266640(A054429(n+1))-1`
-/

namespace A293959.P15237166873905373803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266640 (A054429 (n + 1)).toNat - 1

end

end A293959.P15237166873905373803

namespace A293959

/-- `A266640(A054429(n+1))-1` -/
def P15237166873905373803.Spec : Prop :=
  ∀ n, P15237166873905373803.a n = A293959 n

end A293959

/-! ## A293959.P12951566344163503574

`A265332(A153152(n+1))-1`
-/

namespace A293959.P12951566344163503574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265332 (A153152 (n + 1)).toNat - 1

end

end A293959.P12951566344163503574

namespace A293959

/-- `A265332(A153152(n+1))-1` -/
def P12951566344163503574.Spec : Prop :=
  ∀ n, P12951566344163503574.a n = A293959 n

end A293959

/-! ## A293959.P9311360821586494574

`A359508(A276441(n+2))-1`
-/

namespace A293959.P9311360821586494574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359508 (A276441 (n + 2)).toNat - 1

end

end A293959.P9311360821586494574

namespace A293959

/-- `A359508(A276441(n+2))-1` -/
def P9311360821586494574.Spec : Prop :=
  ∀ n, P9311360821586494574.a n = A293959 n

end A293959

/-! ## A293959.P8485257338260688245

`A007814(A209641(n+1)/2)`
-/

namespace A293959.P8485257338260688245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (SequenceMachineLib.roundAway ((A209641 (n + 1) : ℚ) / 2)).toNat

end

end A293959.P8485257338260688245

namespace A293959

/-- `A007814(A209641(n+1)/2)` -/
def P8485257338260688245.Spec : Prop :=
  ∀ n, P8485257338260688245.a n = A293959 n

end A293959

/-! ## A293959.P10355337722423088725

`A023806(val(A209641(n+1), 2))`
-/

namespace A293959.P10355337722423088725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023806 (SequenceMachineLib.valuation (A209641 (n + 1)).toNat 2)

end

end A293959.P10355337722423088725

namespace A293959

/-- `A023806(val(A209641(n+1), 2))` -/
def P10355337722423088725.Spec : Prop :=
  ∀ n, P10355337722423088725.a n = A293959 n

end A293959

/-! ## A293959.P3082129113842206010

`A070198(n)%A265754(n+1)`
-/

namespace A293959.P3082129113842206010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A265754 (n + 1))

end

end A293959.P3082129113842206010

namespace A293959

/-- `A070198(n)%A265754(n+1)` -/
def P3082129113842206010.Spec : Prop :=
  ∀ n, P3082129113842206010.a n = A293959 n

end A293959

/-! ## A293959.P8323153979354904270

`A153823(n)%A265754(n+1)`
-/

namespace A293959.P8323153979354904270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A153823 n) (A265754 (n + 1))

end

end A293959.P8323153979354904270

namespace A293959

/-- `A153823(n)%A265754(n+1)` -/
def P8323153979354904270.Spec : Prop :=
  ∀ n, P8323153979354904270.a n = A293959 n

end A293959

/-! ## A293959.P4062619821539447997

`A196305(n)%A265754(n+1)`
-/

namespace A293959.P4062619821539447997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196305 n) (A265754 (n + 1))

end

end A293959.P4062619821539447997

namespace A293959

/-- `A196305(n)%A265754(n+1)` -/
def P4062619821539447997.Spec : Prop :=
  ∀ n, P4062619821539447997.a n = A293959 n

end A293959

/-! ## A293959.P5856899040588970802

`A200748(n)%A265754(n+1)`
-/

namespace A293959.P5856899040588970802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A200748 n) (A265754 (n + 1))

end

end A293959.P5856899040588970802

namespace A293959

/-- `A200748(n)%A265754(n+1)` -/
def P5856899040588970802.Spec : Prop :=
  ∀ n, P5856899040588970802.a n = A293959 n

end A293959

/-! ## A293959.P10385781699177513316

`1-A087815(A004001(n+2))+n`
-/

namespace A293959.P10385781699177513316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A087815 (A004001 (n + 2)).toNat + (n : ℤ)

end

end A293959.P10385781699177513316

namespace A293959

/-- `1-A087815(A004001(n+2))+n` -/
def P10385781699177513316.Spec : Prop :=
  ∀ n, P10385781699177513316.a n = A293959 n

end A293959

/-!
# A293960: Number A(n,k) of linear chord diagrams having n chords and no chord length larger than k; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A293960, there is no canonical definition to state claims against.
-/

/-! ## A293960.P4820566488919772479

`A120565(A276837(n)²)`
-/

namespace A293960.P4820566488919772479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A276837 n ^ 2).toNat

end

end A293960.P4820566488919772479

/-! ## A293960.P12242180892053172530

`A120565(A276837(n)^2)`
-/

namespace A293960.P12242180892053172530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A276837 n ^ 2).toNat

end

end A293960.P12242180892053172530

/-! ## A293960.P15240677353009993987

`A064097((A276837(n)+1)!)`
-/

namespace A293960.P15240677353009993987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064097 (Nat.factorial (A276837 n + 1).toNat)

end

end A293960.P15240677353009993987

/-! ## A293960.P5610018306367301945

`A006046(gcd(A185255(n), A276837(n)))`
-/

namespace A293960.P5610018306367301945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (Int.gcd (A185255 n) (A276837 n))

end

end A293960.P5610018306367301945

/-! ## A293960.P8080417452067614865

`A067693(A242095(n))`
-/

namespace A293960.P8080417452067614865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067693 (A242095 n).toNat

end

end A293960.P8080417452067614865

/-!
# A293961: Number T(n,k) of linear chord diagrams having n chords and maximal chord length k (or k=0 if n=0); triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A293961, there is no canonical definition to state claims against.
-/

/-! ## A293961.P7493333189808855236

`A326441(6*A256116(n))`
-/

namespace A293961.P7493333189808855236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326441 (6 * A256116 n).toNat

end

end A293961.P7493333189808855236

/-! ## A293961.P12193003711243003416

`A328772(2^A106579(n))`
-/

namespace A293961.P12193003711243003416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328772 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A106579 n : ℤ))).toNat

end

end A293961.P12193003711243003416

/-! ## A293961.P1578964693977791523

`∑{d}[A106579(n), A350020(#)]`
-/

namespace A293961.P1578964693977791523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A350020 d

end

end A293961.P1578964693977791523

/-! ## A293961.P1910537194355694053

`∑{d}[A256116(n), A228814(#)]`
-/

namespace A293961.P1910537194355694053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A228814 d

end

end A293961.P1910537194355694053

/-! ## A293961.P11292686492114394972

`lcm(A135010(A395480(n)), A229223(n))`
-/

namespace A293961.P11292686492114394972
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A135010 (A395480 n).toNat) (A229223 n)

end

end A293961.P11292686492114394972

/-!
# A293962: Number of linear chord diagrams having n chords and maximal chord length n, a(0)=1.

The programs for A293962, the canonical program `A293962.P5593735969565219855` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293962 has offset 0).

The definition of A293962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293962.P5593735969565219855

`(2*n-1)*a(n-1)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A293962

/-- `(2*n-1)*a(n-1)` -/
def P5593735969565219855.Spec : Prop :=
  ∀ n, P5593735969565219855.a n = A293962 n

theorem P5593735969565219855.correct : P5593735969565219855.Spec := by
  intro n
  simp only [A293962]

end A293962

/-! ## A293962.P17761116371980147946

`∏[abs(char[2]-(2*n-1))]`
-/

namespace A293962.P17761116371980147946
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - ((2 * n : ℤ) - 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A293962.P17761116371980147946

namespace A293962

/-- `∏[abs(char[2]-(2*n-1))]` -/
def P17761116371980147946.Spec : Prop :=
  ∀ n, P17761116371980147946.a n = A293962 n

end A293962

/-! ## A293962.P17407691331432278843

`ceil(lcm(2, ∏[1-2*n])/3)`
-/

namespace A293962.P17407691331432278843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lcm 2 (∏ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3⌉

end

end A293962.P17407691331432278843

namespace A293962

/-- `ceil(lcm(2, ∏[1-2*n])/3)` -/
def P17407691331432278843.Spec : Prop :=
  ∀ n, P17407691331432278843.a n = A293962 n

end A293962

/-! ## A293962.P17992026540523132780

`ceil(2*abs(∏[or(1, -2*n)])/3)`
-/

namespace A293962.P17992026540523132780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * |∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) / 3⌉

end

end A293962.P17992026540523132780

namespace A293962

/-- `ceil(2*abs(∏[or(1, -2*n)])/3)` -/
def P17992026540523132780.Spec : Prop :=
  ∀ n, P17992026540523132780.a n = A293962 n

end A293962

/-! ## A293962.P11379402814554883548

`round(2*abs(∏[or(1, -2*n)])/3)`
-/

namespace A293962.P11379402814554883548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * |∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) / 3)

end

end A293962.P11379402814554883548

namespace A293962

/-- `round(2*abs(∏[or(1, -2*n)])/3)` -/
def P11379402814554883548.Spec : Prop :=
  ∀ n, P11379402814554883548.a n = A293962 n

end A293962

/-! ## A293962.P9566920907466476657

`ceil(2*abs(∏[xor(1, -2*n)])/3)`
-/

namespace A293962.P9566920907466476657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * |∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) / 3⌉

end

end A293962.P9566920907466476657

namespace A293962

/-- `ceil(2*abs(∏[xor(1, -2*n)])/3)` -/
def P9566920907466476657.Spec : Prop :=
  ∀ n, P9566920907466476657.a n = A293962 n

end A293962

/-! ## A293962.P16058904858356336082

`round(2*abs(∏[xor(1, -2*n)])/3)`
-/

namespace A293962.P16058904858356336082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * |∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) / 3)

end

end A293962.P16058904858356336082

namespace A293962

/-- `round(2*abs(∏[xor(1, -2*n)])/3)` -/
def P16058904858356336082.Spec : Prop :=
  ∀ n, P16058904858356336082.a n = A293962 n

end A293962

/-! ## A293962.P16984269173258961303

`ceil(2*or(1, -∏[2*n-1])/3)`
-/

namespace A293962.P16984269173258961303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * Int.lor 1 (-(∏ j ∈ Finset.range (n + 1), f1 j)) : ℚ) / 3⌉

end

end A293962.P16984269173258961303

namespace A293962

/-- `ceil(2*or(1, -∏[2*n-1])/3)` -/
def P16984269173258961303.Spec : Prop :=
  ∀ n, P16984269173258961303.a n = A293962 n

end A293962

/-! ## A293962.P4603057954453255495

`round(2*or(1, -∏[2*n-1])/3)`
-/

namespace A293962.P4603057954453255495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * Int.lor 1 (-(∏ j ∈ Finset.range (n + 1), f1 j)) : ℚ) / 3)

end

end A293962.P4603057954453255495

namespace A293962

/-- `round(2*or(1, -∏[2*n-1])/3)` -/
def P4603057954453255495.Spec : Prop :=
  ∀ n, P4603057954453255495.a n = A293962 n

end A293962

/-! ## A293962.P17398443844751542766

`∏[a(n-1)+2]^floor(atan(n))` with `a(0)=-2, a(1)=1, a(2)=-1, a(3)=5`
-/

namespace A293962.P17398443844751542766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-2, 1, -1, 5] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ)

end

end A293962.P17398443844751542766

namespace A293962

/-- `∏[a(n-1)+2]^floor(atan(n))` -/
def P17398443844751542766.Spec : Prop :=
  ∀ n, P17398443844751542766.a n = (A293962 n : ℚ)

end A293962

/-!
# A293963: Number of linear chord diagrams having 2n chords and maximal chord length n, a(0)=1.

The programs for A293963, there is no canonical definition to state claims against.
-/

/-! ## A293963.P13522220713562083785

`A293961(∑[4*n])`
-/

namespace A293963.P13522220713562083785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293961 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293963.P13522220713562083785

/-! ## A293963.P10662640953302355429

`lcm((-1)^n, A293961(A001844(n)-1))`
-/

namespace A293963.P10662640953302355429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A293961 (A001844 n - 1).toNat)

end

end A293963.P10662640953302355429

/-! ## A293963.P12088502604282929773

`A293961(A046092(n))+A025469(n)`
-/

namespace A293963.P12088502604282929773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293961 (A046092 n).toNat + A025469 n

end

end A293963.P12088502604282929773

/-! ## A293963.P3297676175188677705

`A293961(A046092(n))+A257297(n)`
-/

namespace A293963.P3297676175188677705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293961 (A046092 n).toNat + A257297 n

end

end A293963.P3297676175188677705

/-! ## A293963.P6349636379286338532

`gcd(A000038(n), A293961(A046092(n)))`
-/

namespace A293963.P6349636379286338532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293961 (A046092 n).toNat)

end

end A293963.P6349636379286338532

/-!
# A293964: Number of sets of exactly two nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293964, there is no canonical definition to state claims against.
-/

/-! ## A293964.P7084293966477993258

`A319347(A001286(n+2))+A002137(n)`
-/

namespace A293964.P7084293966477993258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319347 (A001286 (n + 2)).toNat + A002137 n

end

end A293964.P7084293966477993258

/-! ## A293964.P5846752023361243795

`A037131(n)+A000005(A248784(2*n+3))`
-/

namespace A293964.P5846752023361243795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037131 n + A000005 (A248784 (2 * n + 3)).toNat

end

end A293964.P5846752023361243795

/-!
# A293965: Number of sets of exactly three nonempty words with a total of n letters over n-ary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293965, there is no canonical definition to state claims against.
-/

/-! ## A293965.P13668185638683589700

`A048865(A358834(3*n+4))+n`
-/

namespace A293965.P13668185638683589700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048865 (A358834 (3 * n + 4)).toNat + (n : ℤ)

end

end A293965.P13668185638683589700

/-!
# A293974: Row sums of antidiagonals of the Sierpinski carpet A153490.

The programs for A293974, there is no canonical definition to state claims against.
-/

/-! ## A293974.P15633529730334310335

`A000120(A292689(n+1))`
-/

namespace A293974.P15633529730334310335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A292689 (n + 1)).toNat

end

end A293974.P15633529730334310335

/-! ## A293974.P17877387474336309630

`Δ[eq[0, A362327(n+1)]]`
-/

namespace A293974.P17877387474336309630
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362327 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A293974.P17877387474336309630

/-! ## A293974.P10910442274606563301

`∑{digits}[A292688(n+1), #]`
-/

namespace A293974.P10910442274606563301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292688 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A293974.P10910442274606563301

/-! ## A293974.P14915577615232633999

`log2(∏{digits}[A292688(n+1), A000034(#)])`
-/

namespace A293974.P14915577615232633999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292688 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000034 x).prod : ℤ) : ℝ)

end

end A293974.P14915577615232633999

/-! ## A293974.P5869861567669047374

`log2(∏{digits}[A292688(n+1), A006047(#)])`
-/

namespace A293974.P5869861567669047374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292688 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A006047 x).prod : ℤ) : ℝ)

end

end A293974.P5869861567669047374

/-!
# A293975: If n is even, divide by 2; otherwise, add the next larger prime.

The programs for A293975, the canonical program `A293975.P1441853442646380636` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293975 has offset 0).

The definition of A293975 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293975.P17522750682983956054

`A142150(n)+A000035(n)*A013634(n)`
-/

namespace A293975.P17522750682983956054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 n + A000035 n * A013634 n

end

end A293975.P17522750682983956054

namespace A293975

/-- `A142150(n)+A000035(n)*A013634(n)` -/
def P17522750682983956054.Spec : Prop :=
  ∀ n, P17522750682983956054.a n = A293975 n

end A293975

/-! ## A293975.P1441853442646380636

`A026741(n)+A000035(n)*A151800(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A293975

/-- `A026741(n)+A000035(n)*A151800(n)` -/
def P1441853442646380636.Spec : Prop :=
  ∀ n, P1441853442646380636.a n = A293975 n

theorem P1441853442646380636.correct : P1441853442646380636.Spec := by
  intro n
  simp only [A293975]

end A293975

/-! ## A293975.P4050082814386840735

`A013634(n)%(A013634(n)+A001057(n))`
-/

namespace A293975.P4050082814386840735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A013634 n) (A013634 n + A001057 n)

end

end A293975.P4050082814386840735

namespace A293975

/-- `A013634(n)%(A013634(n)+A001057(n))` -/
def P4050082814386840735.Spec : Prop :=
  ∀ n, P4050082814386840735.a n = A293975 n

end A293975

/-! ## A293975.P16170265203679879048

`A026741(n)+Δ[A004526(n)]*A151800(n)`
-/

namespace A293975.P16170265203679879048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + (f1 (n + 1) - f1 n) * A151800 n

end

end A293975.P16170265203679879048

namespace A293975

/-- `A026741(n)+Δ[A004526(n)]*A151800(n)` -/
def P16170265203679879048.Spec : Prop :=
  ∀ n, P16170265203679879048.a n = A293975 n

end A293975

/-! ## A293975.P10126705055747891535

`A026741(n)+A000035(n)*A159477(n+1)`
-/

namespace A293975.P10126705055747891535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + A000035 n * A159477 (n + 1)

end

end A293975.P10126705055747891535

namespace A293975

/-- `A026741(n)+A000035(n)*A159477(n+1)` -/
def P10126705055747891535.Spec : Prop :=
  ∀ n, P10126705055747891535.a n = A293975 n

end A293975

/-! ## A293975.P11085975418785585351

`A026741(n)+and(A151800(n), A277928(n))`
-/

namespace A293975.P11085975418785585351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + Int.land (A151800 n) (A277928 n)

end

end A293975.P11085975418785585351

namespace A293975

/-- `A026741(n)+and(A151800(n), A277928(n))` -/
def P11085975418785585351.Spec : Prop :=
  ∀ n, P11085975418785585351.a n = A293975 n

end A293975

/-!
# A293976: a(2n) = a(2n-1) + a(n) for n >= 1, a(2n+1) = a(2n) + 1, a(0) = 0.

The programs for A293976, the canonical program `A293976.P12629540021161171405` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293976 has offset 0).

The definition of A293976 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293976.P12629540021161171405

`∑[a(n-2)+a(∑[n]%n)]` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A293976

/-- `∑[a(n-2)+a(∑[n]%n)]` -/
def P12629540021161171405.Spec : Prop :=
  ∀ n, (P12629540021161171405.a n : ℤ) = A293976 n

theorem P12629540021161171405.correct : P12629540021161171405.Spec := by
  intro n
  simp only [A293976]

end A293976

/-! ## A293976.P16868661432393964640

`a(n-2)+a(floor(n/2))+1` with `a(0)=0, a(1)=1`
-/

namespace A293976.P16868661432393964640
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (a ⌊(n : ℚ) / 2⌋.toNat + 1)

end

end A293976.P16868661432393964640

namespace A293976

/-- `a(n-2)+a(floor(n/2))+1` -/
def P16868661432393964640.Spec : Prop :=
  ∀ n, (P16868661432393964640.a n : ℤ) = A293976 n

end A293976

/-! ## A293976.P9694940542199914009

`record[a(C(n, 2)%n)+a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A293976.P9694940542199914009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (Nat.choose n 2 % n) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293976.P9694940542199914009

namespace A293976

/-- `record[a(C(n, 2)%n)+a(n-2)]` -/
def P9694940542199914009.Spec : Prop :=
  ∀ n, (P9694940542199914009.a n : ℤ) = A293976 n

end A293976

/-! ## A293976.P16665539902981349843

`a(ceil((n-1)/2))+a(n-2)+1` with `a(0)=0, a(1)=1`
-/

namespace A293976.P16665539902981349843
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ⌈((n : ℤ) - 1 : ℚ) / 2⌉.toNat + a (n - 2) + 1

end

end A293976.P16665539902981349843

namespace A293976

/-- `a(ceil((n-1)/2))+a(n-2)+1` -/
def P16665539902981349843.Spec : Prop :=
  ∀ n, (P16665539902981349843.a n : ℤ) = A293976 n

end A293976

/-! ## A293976.P14645794874378057521

`∑[a(n-lcm(2, n)/2)+a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A293976.P14645794874378057521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n : ℚ) - (Nat.lcm 2 n : ℚ) / 2)).toNat + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293976.P14645794874378057521

namespace A293976

/-- `∑[a(n-lcm(2, n)/2)+a(n-2)]` -/
def P14645794874378057521.Spec : Prop :=
  ∀ n, (P14645794874378057521.a n : ℤ) = A293976 n

end A293976

/-! ## A293976.P17161713707901806888

`record[a((n/2)^((n+1)%2))+a(n-2)]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A293976.P17161713707901806888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 1] fun n f1 =>
  f1 (SequenceMachineLib.roundAway (((n : ℚ) / 2) ^ ((n + 1) % 2))).toNat + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293976.P17161713707901806888

namespace A293976

/-- `record[a((n/2)^((n+1)%2))+a(n-2)]` -/
def P17161713707901806888.Spec : Prop :=
  ∀ n, (P17161713707901806888.a n : ℤ) = A293976 n

end A293976

/-! ## A293976.P696939992046081172

`∑[a(A142150(n))+a(n-2)]` with `a(0)=0, a(1)=1`
-/

namespace A293976.P696939992046081172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (A142150 n).toNat + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293976.P696939992046081172

namespace A293976

/-- `∑[a(A142150(n))+a(n-2)]` -/
def P696939992046081172.Spec : Prop :=
  ∀ n, (P696939992046081172.a n : ℤ) = A293976 n

end A293976

/-! ## A293976.P7752323858731246275

`a(n-1)+a(A057979(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A293976.P7752323858731246275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (A057979 (n + 1)).toNat

end

end A293976.P7752323858731246275

namespace A293976

/-- `a(n-1)+a(A057979(n+1))` -/
def P7752323858731246275.Spec : Prop :=
  ∀ n, (P7752323858731246275.a n : ℤ) = A293976 n

end A293976

/-!
# A293980: Number of iterations of A174221 (the PrimeLatz map) required to enter a loop, for initial value n, or -1 if this never happens.

The programs for A293980, there is no canonical definition to state claims against.
-/

/-! ## A293980.P9389710057204732667

`A259077(record[A055483(n+1)])%A055483(n+1)`
-/

namespace A293980.P9389710057204732667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055483 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259077 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat) (A055483 (n + 1))

end

end A293980.P9389710057204732667

/-!
# A293984: a(n) = A293857(n)/A010551(n).

The programs for A293984, there is no canonical definition to state claims against.
-/

/-! ## A293984.P3013730616016162058

`A293857(n)/A010551(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293984.P3013730616016162058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293857 n : ℚ) / (A010551 n : ℚ)

end

end A293984.P3013730616016162058

/-! ## A293984.P5980143059387253587

`A293857(n)/A145893(∑[n])`
-/

namespace A293984.P5980143059387253587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293857 n : ℚ) / (A145893 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A293984.P5980143059387253587

/-! ## A293984.P1239502275796751048

`A293857(n)/∏[A065033(n)]`
-/

namespace A293984.P1239502275796751048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293857 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A293984.P1239502275796751048

/-! ## A293984.P4185631953466944448

`A293857(n)/∏[A008621(A004275(n))]`
-/

namespace A293984.P4185631953466944448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A004275 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293857 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A293984.P4185631953466944448

/-! ## A293984.P10179639819516575505

`A293857(n)/∏[A034851(A000124(n))]`
-/

namespace A293984.P10179639819516575505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034851 (A000124 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293857 n : ℚ) / ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A293984.P10179639819516575505

/-!
# A293985: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(x/(1-x))/(1-x)^k.

The programs for A293985, there is no canonical definition to state claims against.
-/

/-! ## A293985.P18075513488068372215

`A059110(A061579(n))/A007318(n)`
-/

namespace A293985.P18075513488068372215
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059110 (A061579 n).toNat : ℚ) / (A007318 n : ℚ)

end

end A293985.P18075513488068372215

/-! ## A293985.P17625779430538604844

`abs(A059110(A061579(n))/A130595(n))`
-/

namespace A293985.P17625779430538604844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A059110 (A061579 n).toNat : ℚ) / (A130595 n : ℚ)|

end

end A293985.P17625779430538604844

/-! ## A293985.P13596835307061684027

`A059110(A061579(n))/sqrt(A008459(n))`
-/

namespace A293985.P13596835307061684027
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059110 (A061579 n).toNat : ℝ) / Real.sqrt (A008459 n : ℝ)

end

end A293985.P13596835307061684027

/-! ## A293985.P15932047865844483695

`A059110(A061579(n))/Δ[A102363(n)]`
-/

namespace A293985.P15932047865844483695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059110 (A061579 n).toNat : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A293985.P15932047865844483695

/-! ## A293985.P3703348129921680042

`A059110(A061579(n))/A074909(A083920(n))`
-/

namespace A293985.P3703348129921680042
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059110 (A061579 n).toNat : ℚ) / (A074909 (A083920 n).toNat : ℚ)

end

end A293985.P3703348129921680042

/-! ## A293985.P839053307901260757

`A059114(A061579(n))/A094587(n)`
-/

namespace A293985.P839053307901260757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059114 (A061579 n).toNat : ℚ) / (A094587 n : ℚ)

end

end A293985.P839053307901260757

/-!
# A293986: Expansion of e.g.f. exp((1/(1-x)^7 - 1)/7).

The programs for A293986, there is no canonical definition to state claims against.
-/

/-! ## A293986.P1181534486364352239

`A291709(eq[8, A025581(n)])`
-/

namespace A293986.P1181534486364352239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293986.P1181534486364352239

/-! ## A293986.P4375467504545369770

`A291709(eq[9, A193739(n)])`
-/

namespace A293986.P4375467504545369770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293986.P4375467504545369770

/-! ## A293986.P7427592026069830265

`A291709(eq[17, A099375(n)])`
-/

namespace A293986.P7427592026069830265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293986.P7427592026069830265

/-! ## A293986.P7229746921081677859

`A291709(eq[9, A004736(n+1)])`
-/

namespace A293986.P7229746921081677859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293986.P7229746921081677859

/-! ## A293986.P4644734417303753489

`A291709(eq[13, A272172(n+1)])`
-/

namespace A293986.P4644734417303753489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272172 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293986.P4644734417303753489

/-!
# A293987: E.g.f.: exp((1/(1-x)^8 - 1)/8).

The programs for A293987, there is no canonical definition to state claims against.
-/

/-! ## A293987.P5651142332142360106

`A291709(A056000(n+6))`
-/

namespace A293987.P5651142332142360106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (A056000 (n + 6)).toNat

end

end A293987.P5651142332142360106

/-! ## A293987.P15892355692534916521

`A291709(eq[9, A025581(n)])`
-/

namespace A293987.P15892355692534916521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293987.P15892355692534916521

/-! ## A293987.P6538586504126624578

`A291709(eq[10, A193739(n)])`
-/

namespace A293987.P6538586504126624578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293987.P6538586504126624578

/-! ## A293987.P17410116495452102275

`A291709(eq[9, A193592(n+1)])`
-/

namespace A293987.P17410116495452102275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293987.P17410116495452102275

/-! ## A293987.P14878487047687331170

`A291709(eq[10, A004736(n+1)])`
-/

namespace A293987.P14878487047687331170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293987.P14878487047687331170

/-!
# A293988: E.g.f.: exp((1/(1-x)^9 - 1)/9).

The programs for A293988, there is no canonical definition to state claims against.
-/

/-! ## A293988.P16923808095786347466

`A291709(eq[10, A025581(n)])`
-/

namespace A293988.P16923808095786347466
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293988.P16923808095786347466

/-! ## A293988.P4265709315729905599

`A291709(eq[11, A193739(n)])`
-/

namespace A293988.P4265709315729905599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293988.P4265709315729905599

/-! ## A293988.P243976606182907162

`A291709(eq[21, A099375(n)])`
-/

namespace A293988.P243976606182907162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293988.P243976606182907162

/-! ## A293988.P2519625460928167257

`A291709(eq[11, A004736(n+1)])`
-/

namespace A293988.P2519625460928167257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293988.P2519625460928167257

/-! ## A293988.P5704819359149470272

`A291709(eq[11, A275724(n+1)])`
-/

namespace A293988.P5704819359149470272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293988.P5704819359149470272

/-!
# A293989: a(0) = a(1) = 1 and a(n) = n! * [x^n] exp((1/(1-x)^(n-1) - 1)/(n-1)) for n > 1.

The programs for A293989, there is no canonical definition to state claims against.
-/

/-! ## A293989.P16688192800415115541

`A291709(∑[4*n])`
-/

namespace A293989.P16688192800415115541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293989.P16688192800415115541

/-! ## A293989.P2561362637822644125

`A291709(A046092(n))+A025469(n)`
-/

namespace A293989.P2561362637822644125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (A046092 n).toNat + A025469 n

end

end A293989.P2561362637822644125

/-! ## A293989.P6141914203359508625

`A291709(A046092(n))+A185246(n)`
-/

namespace A293989.P6141914203359508625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (A046092 n).toNat + A185246 n

end

end A293989.P6141914203359508625

/-! ## A293989.P8190073837720946590

`A291709(A046092(n))+2%A007318(∑[n])`
-/

namespace A293989.P8190073837720946590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (A046092 n).toNat + Int.tmod 2 (A007318 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A293989.P8190073837720946590

/-! ## A293989.P6461651904939534919

`A291709(A046092(n))+A008683(4*(n+1))`
-/

namespace A293989.P6461651904939534919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291709 (A046092 n).toNat + A008683 (4 * (n + 1))

end

end A293989.P6461651904939534919

/-!
# A293990: a(n) = (3*n + ((n-2) mod 4))/2.

The programs for A293990, the canonical program `A293990.P4342057461289455918` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293990 has offset 0).

The definition of A293990 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293990.P4342057461289455918

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=3, a(3)=5, a(4)=7`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A293990

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P4342057461289455918.Spec : Prop :=
  ∀ n, P4342057461289455918.a n = A293990 n

theorem P4342057461289455918.correct : P4342057461289455918.Spec := by
  intro n
  simp only [A293990]

end A293990

/-! ## A293990.P11971574698678162408

`or(1, ceil(3*n/2))`
-/

namespace A293990.P11971574698678162408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌈3 * ((n : ℚ) / 2)⌉

end

end A293990.P11971574698678162408

namespace A293990

/-- `or(1, ceil(3*n/2))` -/
def P11971574698678162408.Spec : Prop :=
  ∀ n, P11971574698678162408.a n = A293990 n

end A293990

/-! ## A293990.P3923679179213742978

`ceil(or(2, n)/2+n)`
-/

namespace A293990.P3923679179213742978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.lor 2 n : ℚ) / 2 + (n : ℚ)⌉

end

end A293990.P3923679179213742978

namespace A293990

/-- `ceil(or(2, n)/2+n)` -/
def P3923679179213742978.Spec : Prop :=
  ∀ n, P3923679179213742978.a n = A293990 n

end A293990

/-! ## A293990.P16759150934094048032

`round(or(2, n)/2+n)`
-/

namespace A293990.P16759150934094048032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 2 n : ℚ) / 2 + (n : ℚ))

end

end A293990.P16759150934094048032

namespace A293990

/-- `round(or(2, n)/2+n)` -/
def P16759150934094048032.Spec : Prop :=
  ∀ n, P16759150934094048032.a n = A293990 n

end A293990

/-! ## A293990.P18360194383302607168

`a(n-4)+6` with `a(0)=1, a(1)=3, a(2)=3, a(3)=5`
-/

namespace A293990.P18360194383302607168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 3, 5] fun n a =>
  a (n - 4) + 6

end

end A293990.P18360194383302607168

namespace A293990

/-- `a(n-4)+6` -/
def P18360194383302607168.Spec : Prop :=
  ∀ n, (P18360194383302607168.a n : ℤ) = A293990 n

end A293990

/-! ## A293990.P5543820321284285284

`floor(or(4, 6*n+3)/4)`
-/

namespace A293990.P5543820321284285284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 4 (6 * n + 3) : ℚ) / 4⌋

end

end A293990.P5543820321284285284

namespace A293990

/-- `floor(or(4, 6*n+3)/4)` -/
def P5543820321284285284.Spec : Prop :=
  ∀ n, P5543820321284285284.a n = A293990 n

end A293990

/-! ## A293990.P5739816241298382207

`∑[(gcd(4, n)+1)%3]-1`
-/

namespace A293990.P5739816241298382207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 n + 1) % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A293990.P5739816241298382207

namespace A293990

/-- `∑[(gcd(4, n)+1)%3]-1` -/
def P5739816241298382207.Spec : Prop :=
  ∀ n, P5739816241298382207.a n = A293990 n

end A293990

/-! ## A293990.P14981498104723850107

`∑[and(2, lcm(2, n+2))]-1`
-/

namespace A293990.P14981498104723850107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 (Nat.lcm 2 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A293990.P14981498104723850107

namespace A293990

/-- `∑[and(2, lcm(2, n+2))]-1` -/
def P14981498104723850107.Spec : Prop :=
  ∀ n, P14981498104723850107.a n = A293990 n

end A293990

/-! ## A293990.P4939387753927699590

`-or(1, ∑[or(n+1, -2)])`
-/

namespace A293990.P4939387753927699590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293990.P4939387753927699590

namespace A293990

/-- `-or(1, ∑[or(n+1, -2)])` -/
def P4939387753927699590.Spec : Prop :=
  ∀ n, P4939387753927699590.a n = A293990 n

end A293990

/-! ## A293990.P3024946381118103411

`∑[(-1)^floor((n/2)²)]+n`
-/

namespace A293990.P3024946381118103411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (⌊((n : ℚ) / 2) ^ 2⌋ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A293990.P3024946381118103411

namespace A293990

/-- `∑[(-1)^floor((n/2)²)]+n` -/
def P3024946381118103411.Spec : Prop :=
  ∀ n, P3024946381118103411.a n = (A293990 n : ℚ)

end A293990

/-! ## A293990.P11419994918459687988

`∑[abs(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2, a(4)=2`
-/

namespace A293990.P11419994918459687988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293990.P11419994918459687988

namespace A293990

/-- `∑[abs(a(n-4))]` -/
def P11419994918459687988.Spec : Prop :=
  ∀ n, (P11419994918459687988.a n : ℤ) = A293990 n

end A293990

/-! ## A293990.P7467081330157351610

`∑[dr(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2, a(4)=2`
-/

namespace A293990.P7467081330157351610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 2, 2] fun n f1 =>
  SequenceMachineLib.digitalRoot (f1 (n - 4) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293990.P7467081330157351610

namespace A293990

/-- `∑[dr(a(n-4))]` -/
def P7467081330157351610.Spec : Prop :=
  ∀ n, (P7467081330157351610.a n : ℤ) = A293990 n

end A293990

/-! ## A293990.P4449730749497589719

`∑[floor(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2, a(4)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A293990.P4449730749497589719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293990.P4449730749497589719

namespace A293990

/-- `∑[floor(a(n-4))]` -/
def P4449730749497589719.Spec : Prop :=
  ∀ n, (P4449730749497589719.a n : ℤ) = A293990 n

end A293990

/-! ## A293990.P780099334840192232

`∑[ceil(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2, a(4)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A293990.P780099334840192232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293990.P780099334840192232

namespace A293990

/-- `∑[ceil(a(n-4))]` -/
def P780099334840192232.Spec : Prop :=
  ∀ n, (P780099334840192232.a n : ℤ) = A293990 n

end A293990

/-! ## A293990.P5436871099722907343

`∑[round(a(n-4))]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2, a(4)=2`

`round` is left out, it is the identity on integers.
-/

namespace A293990.P5436871099722907343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 2, 2] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293990.P5436871099722907343

namespace A293990

/-- `∑[round(a(n-4))]` -/
def P5436871099722907343.Spec : Prop :=
  ∀ n, (P5436871099722907343.a n : ℤ) = A293990 n

end A293990

/-! ## A293990.P12967439377465232191

`(or(3, 3*n+1)-1)/2`
-/

namespace A293990.P12967439377465232191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor 3 (3 * n + 1) : ℤ) - 1 : ℚ) / 2

end

end A293990.P12967439377465232191

namespace A293990

/-- `(or(3, 3*n+1)-1)/2` -/
def P12967439377465232191.Spec : Prop :=
  ∀ n, P12967439377465232191.a n = (A293990 n : ℚ)

end A293990

/-! ## A293990.P10085380540402266131

`((n+2)%4+3*n)/2`
-/

namespace A293990.P10085380540402266131
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 2) % 4 + 3 * n : ℕ) : ℚ) / 2

end

end A293990.P10085380540402266131

namespace A293990

/-- `((n+2)%4+3*n)/2` -/
def P10085380540402266131.Spec : Prop :=
  ∀ n, P10085380540402266131.a n = (A293990 n : ℚ)

end A293990

/-! ## A293990.P6329293360881565514

`∑[and(2, n-a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A293990.P6329293360881565514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Int.land 2 ((n : ℤ) - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293990.P6329293360881565514

namespace A293990

/-- `∑[and(2, n-a(n-1))]` -/
def P6329293360881565514.Spec : Prop :=
  ∀ n, P6329293360881565514.a n = A293990 n

end A293990

/-! ## A293990.P11885879552565587192

`∑[a(n-4)%3]` with `a(0)=1, a(1)=2, a(2)=0, a(3)=2, a(4)=2`
-/

namespace A293990.P11885879552565587192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 0, 2, 2] fun n f1 =>
  f1 (n - 4) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293990.P11885879552565587192

namespace A293990

/-- `∑[a(n-4)%3]` -/
def P11885879552565587192.Spec : Prop :=
  ∀ n, (P11885879552565587192.a n : ℤ) = A293990 n

end A293990

/-! ## A293990.P17667863365472117550

`round(2*n-or(2, n-2)/2)`
-/

namespace A293990.P17667863365472117550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℚ) - (Int.lor 2 ((n : ℤ) - 2) : ℚ) / 2)

end

end A293990.P17667863365472117550

namespace A293990

/-- `round(2*n-or(2, n-2)/2)` -/
def P17667863365472117550.Spec : Prop :=
  ∀ n, P17667863365472117550.a n = A293990 n

end A293990

/-!
# A293991: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f.: exp(Sum_{j=1..k+1} binomial(k,j-1)*x^j/j).

The programs for A293991, there is no canonical definition to state claims against.
-/

/-! ## A293991.P5488400725619360128

`gcd(A007953(n), A328449(A257493(n)))`
-/

namespace A293991.P5488400725619360128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007953 n) (A328449 (A257493 n).toNat)

end

end A293991.P5488400725619360128

/-! ## A293991.P6089454397543047637

`A125790(A056943(n)%A085153(n+1))`
-/

namespace A293991.P6089454397543047637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125790 (Int.tmod (A056943 n) (A085153 (n + 1))).toNat

end

end A293991.P6089454397543047637

/-! ## A293991.P2472855125753240473

`A255582(A084097(n)%A254760(2*(n+2)))`
-/

namespace A293991.P2472855125753240473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255582 (Int.tmod (A084097 n) (A254760 (2 * (n + 2)))).toNat

end

end A293991.P2472855125753240473

/-! ## A293991.P5167877398053825403

`A261494(n)-A010054(A080533(n))`
-/

namespace A293991.P5167877398053825403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261494 n - A010054 (A080533 n).toNat

end

end A293991.P5167877398053825403

/-!
# A293993: Number of unlabeled multiset antichains of weight n.

The programs for A293993, there is no canonical definition to state claims against.
-/

/-! ## A293993.P11163972839013566120

`A319779(A304867(n))+A319752(n)`
-/

namespace A293993.P11163972839013566120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319779 (A304867 n).toNat + A319752 n

end

end A293993.P11163972839013566120

/-! ## A293993.P11763297165696147510

`A321412(A319629(n))+A319752(n)`
-/

namespace A293993.P11763297165696147510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321412 (A319629 n).toNat + A319752 n

end

end A293993.P11763297165696147510

/-! ## A293993.P2895376218084450499

`A326033(A325864(n))+A319752(n)`
-/

namespace A293993.P2895376218084450499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326033 (A325864 n).toNat + A319752 n

end

end A293993.P2895376218084450499

/-!
# A293994: Number of unlabeled multiset clutters of weight n.

The programs for A293994, there is no canonical definition to state claims against.
-/

/-! ## A293994.P4166095852665713711

`A285879(A281438(n+1))`
-/

namespace A293994.P4166095852665713711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285879 (A281438 (n + 1)).toNat

end

end A293994.P4166095852665713711

/-! ## A293994.P18377116267494471798

`ceil(A149505(n)/A052955(n))`
-/

namespace A293994.P18377116267494471798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A149505 n : ℚ) / (A052955 n : ℚ)⌉

end

end A293994.P18377116267494471798

/-! ## A293994.P7426928459119987786

`A040115(A005043(n))+A006840(n)`
-/

namespace A293994.P7426928459119987786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040115 (A005043 n).toNat + A006840 n

end

end A293994.P7426928459119987786

/-! ## A293994.P16760094656254170296

`xor(A011867(n), A211858(A052952(n)))`
-/

namespace A293994.P16760094656254170296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A011867 n) (A211858 (A052952 n).toNat)

end

end A293994.P16760094656254170296

/-! ## A293994.P15153936059089125952

`A173659(n)+A023193(A063776(n+1))`
-/

namespace A293994.P15153936059089125952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173659 n + A023193 (A063776 (n + 1)).toNat

end

end A293994.P15153936059089125952

/-!
# A293995: Number of linear chord diagrams having n chords and no chord length larger than three.

The programs for A293995, the canonical program `A293995.P11534387113129472380` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293995 has offset 0).

The definition of A293995 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 211 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293995.P11534387113129472380

`ogf((-1+x)/(-1+2x+x^2+8x^3-6x^4))`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A293995

/-- `ogf((-1+x)/(-1+2x+x^2+8x^3-6x^4))` -/
def P11534387113129472380.Spec : Prop :=
  ∀ n, P11534387113129472380.a n = A293995 n

theorem P11534387113129472380.correct : P11534387113129472380.Spec := by
  intro n
  simp only [A293995]

end A293995

/-! ## A293995.P13373737831721045634

`A293960(∑[n+3]+n+3)`
-/

namespace A293995.P13373737831721045634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A293995.P13373737831721045634

namespace A293995

/-- `A293960(∑[n+3]+n+3)` -/
def P13373737831721045634.Spec : Prop :=
  ∀ n, P13373737831721045634.a n = A293995 n

end A293995

/-! ## A293995.P4827991523749085942

`or(1, A293960(A046691(n+2)))`
-/

namespace A293995.P4827991523749085942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293960 (A046691 (n + 2)).toNat)

end

end A293995.P4827991523749085942

namespace A293995

/-- `or(1, A293960(A046691(n+2)))` -/
def P4827991523749085942.Spec : Prop :=
  ∀ n, P4827991523749085942.a n = A293995 n

end A293995

/-!
# A293996: Number of linear chord diagrams having n chords and no chord length larger than four.

The programs for A293996, there is no canonical definition to state claims against.
-/

/-! ## A293996.P11360819255966046888

`A293960(A052905(n+2))`
-/

namespace A293996.P11360819255966046888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A052905 (n + 2)).toNat

end

end A293996.P11360819255966046888

/-! ## A293996.P15927755489955676821

`A293960(A046691(n+3)-1)`
-/

namespace A293996.P15927755489955676821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A046691 (n + 3) - 1).toNat

end

end A293996.P15927755489955676821

/-! ## A293996.P4280780404030230260

`A293960(A000096(n+4)-4)`
-/

namespace A293996.P4280780404030230260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A000096 (n + 4) - 4).toNat

end

end A293996.P4280780404030230260

/-! ## A293996.P9700067825496905607

`A293960(A000124(n+5)-6)`
-/

namespace A293996.P9700067825496905607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A000124 (n + 5) - 6).toNat

end

end A293996.P9700067825496905607

/-! ## A293996.P4908963524768800331

`A293960(A167499(n+4)-10)`
-/

namespace A293996.P4908963524768800331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A167499 (n + 4) - 10).toNat

end

end A293996.P4908963524768800331

/-!
# A293997: Number of linear chord diagrams having n chords and no chord length larger than five.

The programs for A293997, there is no canonical definition to state claims against.
-/

/-! ## A293997.P11414741014761575112

`A293960(A055999(n+3))`
-/

namespace A293997.P11414741014761575112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A055999 (n + 3)).toNat

end

end A293997.P11414741014761575112

/-! ## A293997.P16941433119146611595

`A293960(A056119(n)+15)`
-/

namespace A293997.P16941433119146611595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A056119 n + 15).toNat

end

end A293997.P16941433119146611595

/-! ## A293997.P18262077608780482646

`A293960(Δ[Δ[A095667(n)]])`
-/

namespace A293997.P18262077608780482646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095667 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (f1 (n + 1) - f1 n).toNat

end

end A293997.P18262077608780482646

/-! ## A293997.P13546925212457717304

`A293960(Δ[A023551(n+1)])`
-/

namespace A293997.P13546925212457717304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (f1 (n + 1) - f1 n).toNat

end

end A293997.P13546925212457717304

/-! ## A293997.P13181703141205269392

`A293960(A000096(n+4)+n+1)`
-/

namespace A293997.P13181703141205269392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A000096 (n + 4) + (n + 1 : ℤ)).toNat

end

end A293997.P13181703141205269392

/-!
# A293998: Number of linear chord diagrams having n chords and no chord length larger than six.

The programs for A293998, there is no canonical definition to state claims against.
-/

/-! ## A293998.P17877365241019239095

`A293960(A056000(n+3)+3)`
-/

namespace A293998.P17877365241019239095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A056000 (n + 3) + 3).toNat

end

end A293998.P17877365241019239095

/-! ## A293998.P10759870738690748989

`A293960(A000217(n+7)-7)`
-/

namespace A293998.P10759870738690748989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A000217 (n + 7) - 7).toNat

end

end A293998.P10759870738690748989

/-! ## A293998.P17946712263953835904

`A293960(A000124(n+7)-8)`
-/

namespace A293998.P17946712263953835904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A000124 (n + 7) - 8).toNat

end

end A293998.P17946712263953835904

/-! ## A293998.P10028579043743970291

`A293960(Δ[A023551(n+2)]-1)`
-/

namespace A293998.P10028579043743970291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (f1 (n + 1) - f1 n - 1).toNat

end

end A293998.P10028579043743970291

/-! ## A293998.P2339623496690605551

`A293960(n+1+A000096(n+5))`
-/

namespace A293998.P2339623496690605551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 ((n + 1 : ℤ) + A000096 (n + 5)).toNat

end

end A293998.P2339623496690605551

/-!
# A293999: Number of linear chord diagrams having n chords and no chord length larger than seven.

The programs for A293999, there is no canonical definition to state claims against.
-/

/-! ## A293999.P11289651310070845646

`A293960(A056000(n+4)+2)`
-/

namespace A293999.P11289651310070845646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A056000 (n + 4) + 2).toNat

end

end A293999.P11289651310070845646

/-! ## A293999.P1602461727507403590

`A293960(A055999(n+5)-2)`
-/

namespace A293999.P1602461727507403590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A055999 (n + 5) - 2).toNat

end

end A293999.P1602461727507403590

/-! ## A293999.P15524450895069395756

`A293960(A000096(n+7)-7)`
-/

namespace A293999.P15524450895069395756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A000096 (n + 7) - 7).toNat

end

end A293999.P15524450895069395756

/-! ## A293999.P5972006952380315462

`A293960(A000217(n+8)-8)`
-/

namespace A293999.P5972006952380315462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 (A000217 (n + 8) - 8).toNat

end

end A293999.P5972006952380315462

/-! ## A293999.P1033838789137725494

`A293960(n+1+A000096(n+6))`
-/

namespace A293999.P1033838789137725494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293960 ((n + 1 : ℤ) + A000096 (n + 6)).toNat

end

end A293999.P1033838789137725494

