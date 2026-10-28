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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A293700: First differences of A293698.

The programs for A293700, the canonical program `A293700.P7866924572608709519` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293700 has offset 1).

The definition of A293700 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293700.P7866924572608709519

`Δ[A293698(n+1)]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293700

/-- `Δ[A293698(n+1)]` -/
def P7866924572608709519.Spec : Prop :=
  ∀ n, P7866924572608709519.a n = A293700 (n + 1)

theorem P7866924572608709519.correct : P7866924572608709519.Spec := by
  intro n
  simp only [A293700, Nat.add_sub_cancel]

end A293700

/-! ## A293700.P17502117161243624048

`A293698(n+2)-A293698(n+1)`
-/

namespace A293700.P17502117161243624048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293698 (n + 2) - A293698 (n + 1)

end

end A293700.P17502117161243624048

namespace A293700

/-- `A293698(n+2)-A293698(n+1)` -/
def P17502117161243624048.Spec : Prop :=
  ∀ n, P17502117161243624048.a n = A293700 (n + 1)

theorem P17502117161243624048.correct : P17502117161243624048.Spec := by
  intro n
  simp only [A293700, Nat.add_sub_cancel, A293700.P17502117161243624048.a, A293700.P7866924572608709519.f1, A293700.P7866924572608709519.a, SequenceMachineLib.memo_apply]

end A293700

/-! ## A293700.P8657072060499946921

`Δ[eq[1, floor(tan(n))]]`
-/

namespace A293700.P8657072060499946921
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (n : ℝ)⌋

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A293700.P8657072060499946921

namespace A293700

/-- `Δ[eq[1, floor(tan(n))]]` -/
def P8657072060499946921.Spec : Prop :=
  ∀ n, P8657072060499946921.a n = A293700 (n + 1)

theorem P8657072060499946921.correct : P8657072060499946921.Spec := by
  intro n
  simp only [A293700, Nat.add_sub_cancel, A293700.P8657072060499946921.f2, A293700.P8657072060499946921.f3, A293700.P8657072060499946921.f1, A293700.P8657072060499946921.a, A293700.P7866924572608709519.f1, A293700.P7866924572608709519.a, A293698, A293698.P13028461660533902574.f1, A293698.P13028461660533902574.f2, A293698.P13028461660533902574.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293700

/-! ## A293700.P7338157809684569695

`Δ[eq[2, ceil(tan(n))]]`
-/

namespace A293700.P7338157809684569695
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ)⌉

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A293700.P7338157809684569695

namespace A293700

/-- `Δ[eq[2, ceil(tan(n))]]` -/
def P7338157809684569695.Spec : Prop :=
  ∀ n, P7338157809684569695.a n = A293700 (n + 1)

end A293700

/-! ## A293700.P7842887319413035899

`Δ[eq[1, A000503(n)]]`
-/

namespace A293700.P7842887319413035899
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A293700.P7842887319413035899

namespace A293700

/-- `Δ[eq[1, A000503(n)]]` -/
def P7842887319413035899.Spec : Prop :=
  ∀ n, P7842887319413035899.a n = A293700 (n + 1)

theorem P7842887319413035899.correct : P7842887319413035899.Spec := by
  intro n
  simp only [A293700, Nat.add_sub_cancel, A293700.P7842887319413035899.f2, A293700.P7842887319413035899.f3, A293700.P7842887319413035899.f1, A293700.P7842887319413035899.a, A293700.P7866924572608709519.f1, A293700.P7866924572608709519.a, A000503, A000503.P652587286000263430.a, A293698, A293698.P13028461660533902574.f1, A293698.P13028461660533902574.f2, A293698.P13028461660533902574.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293700

/-! ## A293700.P2821142806707853847

`A293699(A293703(n+2)-(n+2))`
-/

namespace A293700.P2821142806707853847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293699 (A293703 (n + 2) - (n + 2 : ℤ)).toNat

end

end A293700.P2821142806707853847

namespace A293700

/-- `A293699(A293703(n+2)-(n+2))` -/
def P2821142806707853847.Spec : Prop :=
  ∀ n, P2821142806707853847.a n = A293700 (n + 1)

end A293700

/-! ## A293700.P4145312942297295017

`A293699(n+1-A293706(n+3))`
-/

namespace A293700.P4145312942297295017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293699 ((n + 1 : ℤ) - A293706 (n + 3)).toNat

end

end A293700.P4145312942297295017

namespace A293700

/-- `A293699(n+1-A293706(n+3))` -/
def P4145312942297295017.Spec : Prop :=
  ∀ n, P4145312942297295017.a n = A293700 (n + 1)

end A293700

/-!
# A293701: a(n) is the length of the longest palindromic subsequence in the first n terms of A293700.

The programs for A293701, there is no canonical definition to state claims against.
-/

/-! ## A293701.P14672270858933182643

`n+1-A037213(A293704(n+1)²)`
-/

namespace A293701.P14672270858933182643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A037213 (A293704 (n + 1) ^ 2).toNat

end

end A293701.P14672270858933182643

/-! ## A293701.P4232188724023850835

`A180493(A293704(n+1)+1+n)`
-/

namespace A293701.P4232188724023850835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180493 (A293704 (n + 1) + 1 + (n : ℤ)).toNat

end

end A293701.P4232188724023850835

/-! ## A293701.P16901033049177701065

`A272269(A293704(n+1)+2+n)`
-/

namespace A293701.P16901033049177701065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272269 (A293704 (n + 1) + 2 + (n : ℤ)).toNat

end

end A293701.P16901033049177701065

/-! ## A293701.P10943997731430003032

`A000005(2^(A293704(n+1)+n))`
-/

namespace A293701.P10943997731430003032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A293704 (n + 1) + (n : ℤ) : ℤ))).toNat

end

end A293701.P10943997731430003032

/-! ## A293701.P12067594919499932235

`A293704(n+1)+A325964(A293661(n+1))+n`
-/

namespace A293701.P12067594919499932235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293704 (n + 1) + (A325964 (A293661 (n + 1)).toNat + (n : ℤ))

end

end A293701.P12067594919499932235

/-!
# A293703: a(n) is the length of the longest palindromic subsequence in the first differences of the list of the first n negative and positive roots of floor(tan(k))=1.

The programs for A293703, there is no canonical definition to state claims against.
-/

/-! ## A293703.P3508711319951802416

`2*n+1-A293706(A080907(n+1))`
-/

namespace A293703.P3508711319951802416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A293706 (A080907 (n + 1)).toNat

end

end A293703.P3508711319951802416

/-! ## A293703.P17295354475359406373

`abs(A293706(A080907(n+1))-A005408(n))`
-/

namespace A293703.P17295354475359406373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293706 (A080907 (n + 1)).toNat - A005408 n|

end

end A293703.P17295354475359406373

/-! ## A293703.P18343271680691888363

`A336193(A336193(2*n+1))-A293706(n+2)`
-/

namespace A293703.P18343271680691888363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336193 (A336193 (2 * n + 1)).toNat - A293706 (n + 2)

end

end A293703.P18343271680691888363

/-! ## A293703.P149078329904582163

`A056239(A000040(2*n+1))-A293706(n+2)`
-/

namespace A293703.P149078329904582163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A000040 (2 * n + 1)).toNat - A293706 (n + 2)

end

end A293703.P149078329904582163

/-!
# A293704: a(n) is the shift of the longest palindromic subsequence in the first n terms of A293700.

The programs for A293704, there is no canonical definition to state claims against.
-/

/-! ## A293704.P4875494299559458281

`A293701(n+1)+A000007(A345170(n+4))-(n+1)`
-/

namespace A293704.P4875494299559458281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293701 (n + 1) + A000007 (A345170 (n + 4)).toNat - (n + 1 : ℤ)

end

end A293704.P4875494299559458281

/-! ## A293704.P12323513365253352115

`A293701(n+1)-(n+1)%A038011(n)`
-/

namespace A293704.P12323513365253352115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293701 (n + 1) - Int.tmod (n + 1 : ℤ) (A038011 n)

end

end A293704.P12323513365253352115

/-! ## A293704.P10336664991506793331

`A293701(n+1)-A246367(A246368(n+1))`
-/

namespace A293704.P10336664991506793331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293701 (n + 1) - A246367 (A246368 (n + 1)).toNat

end

end A293704.P10336664991506793331

/-! ## A293704.P969404570502852115

`A293701(n+1)-A033999(A074300(n+1))²-n`
-/

namespace A293704.P969404570502852115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293701 (n + 1) - A033999 (A074300 (n + 1)).toNat ^ 2 - (n : ℤ)

end

end A293704.P969404570502852115

/-! ## A293704.P3716400079568350292

`A293701(n+1)-A033999(A271269(n+1))²-n`
-/

namespace A293704.P3716400079568350292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293701 (n + 1) - A033999 (A271269 (n + 1)).toNat ^ 2 - (n : ℤ)

end

end A293704.P3716400079568350292

/-!
# A293706: a(n) is the shift of the longest palindromic subsequence within the first differences of the concatenation of the first n negative and positive roots of floor(tan(k)) = 1.

The programs for A293706, there is no canonical definition to state claims against.
-/

/-! ## A293706.P17476796658082800587

`∑[A000038(A257242(n+8))]`
-/

namespace A293706.P17476796658082800587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A257242 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293706.P17476796658082800587

/-! ## A293706.P2619943121271127057

`∑[and(2, A257242(A257242(n+8)+8))]`
-/

namespace A293706.P2619943121271127057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A257242 (A257242 (n + 8) + 8).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293706.P2619943121271127057

/-! ## A293706.P3249090745247964248

`∑[floor(2/A257174(5*A257242(n+8)))]`
-/

namespace A293706.P3249090745247964248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (A257174 (5 * A257242 (n + 8)).toNat : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293706.P3249090745247964248

/-! ## A293706.P16090602122428548118

`∑[and(2, Δ[A336430(n+1)])]`
-/

namespace A293706.P16090602122428548118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336430 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293706.P16090602122428548118

/-! ## A293706.P1219336902558025716

`∑[A000122(A279367(n+1)+A076921(n+1))]`
-/

namespace A293706.P1219336902558025716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A279367 (n + 1) + A076921 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293706.P1219336902558025716

/-! ## A293706.P1771245996608016927

`∑[and(3, 2*n*A267884(A339110(n)))]`
-/

namespace A293706.P1771245996608016927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((2 * n : ℤ) * A267884 (A339110 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293706.P1771245996608016927

/-!
# A293708: Numbers n such that phi(sigma(n))/n > phi(sigma(m))/m for all m < n, where sigma is the sum of divisors function (A000203) and phi is Euler's totient function (A000010).

The programs for A293708, there is no canonical definition to state claims against.
-/

/-! ## A293708.P4624542412511254218

`A318278(∑[A138904(n²)])`
-/

namespace A293708.P4624542412511254218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138904 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318278 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A293708.P4624542412511254218

/-! ## A293708.P4299937874216349823

`record[A139770(A304706(n))²]`
-/

namespace A293708.P4299937874216349823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (A304706 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293708.P4299937874216349823

/-! ## A293708.P15128361542533493165

`record[A139770(A347664(n))²]`
-/

namespace A293708.P15128361542533493165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (A347664 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293708.P15128361542533493165

/-! ## A293708.P9186158530638610762

`record[A139770(A014261(n+1))²]`
-/

namespace A293708.P9186158530638610762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139770 (A014261 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293708.P9186158530638610762

/-! ## A293708.P15510411955401580931

`record[A046523(A168542(2*n+1))²]`
-/

namespace A293708.P15510411955401580931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (A168542 (2 * n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293708.P15510411955401580931

/-!
# A293709: Number of Hamiltonian walks on a Sierpinski fractal.

The programs for A293709, there is no canonical definition to state claims against.
-/

/-! ## A293709.P18143169709922976002

`A074232(∏[A008998(n)])`
-/

namespace A293709.P18143169709922976002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074232 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A293709.P18143169709922976002

/-!
# A293710: Expansion of x^2/(1 - 4*x - 4*x^2 - x^3).

The programs for A293710, the canonical program `A293710.P5526450087690189851` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293710 has offset 0).

The definition of A293710 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(x^2/(1-4x-4x^2-x^3))` (program `A293710.P5526450087690189851`, by `A293710.P5526450087690189851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A293710.P5526450087690189851

`ogf(x^2/(1-4x-4x^2-x^3))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293710

/-- `ogf(x^2/(1-4x-4x^2-x^3))` -/
def P5526450087690189851.Spec : Prop :=
  ∀ n, P5526450087690189851.a n = A293710 n

theorem P5526450087690189851.correct : P5526450087690189851.Spec := by
  intro n
  simp only [A293710]

end A293710

/-! ## A293710.P12078816348934774693

`4*a(n-1)+4*a(n-2)+a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A293710.P12078816348934774693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  4 * a (n - 1) + 4 * a (n - 2) + a (n - 3)

end

end A293710.P12078816348934774693

namespace A293710

/-- `4*a(n-1)+4*a(n-2)+a(n-3)` -/
def P12078816348934774693.Spec : Prop :=
  ∀ n, (P12078816348934774693.a n : ℤ) = A293710 n

end A293710

/-! ## A293710.P6675626925221910955

`a(n-3)+4*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A293710.P6675626925221910955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 3) + 4 * (a (n - 1) + a (n - 2))

end

end A293710.P6675626925221910955

namespace A293710

/-- `a(n-3)+4*(a(n-1)+a(n-2))` -/
def P6675626925221910955.Spec : Prop :=
  ∀ n, (P6675626925221910955.a n : ℤ) = A293710 n

end A293710

/-! ## A293710.P18074074432760514651

`A285184(2*n)-A052980(2*n+1)`
-/

namespace A293710.P18074074432760514651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 (2 * n) - A052980 (2 * n + 1)

end

end A293710.P18074074432760514651

namespace A293710

/-- `A285184(2*n)-A052980(2*n+1)` -/
def P18074074432760514651.Spec : Prop :=
  ∀ n, P18074074432760514651.a n = A293710 n

end A293710

/-! ## A293710.P15242260380193558804

`A335242(2*n+1)-A214260(2*n)`
-/

namespace A293710.P15242260380193558804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335242 (2 * n + 1) - A214260 (2 * n)

end

end A293710.P15242260380193558804

namespace A293710

/-- `A335242(2*n+1)-A214260(2*n)` -/
def P15242260380193558804.Spec : Prop :=
  ∀ n, P15242260380193558804.a n = A293710 n

end A293710

/-! ## A293710.P13271946950168327773

`A052980(2*(n+1))-A332647(2*n+1)`
-/

namespace A293710.P13271946950168327773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052980 (2 * (n + 1)) - A332647 (2 * n + 1)

end

end A293710.P13271946950168327773

namespace A293710

/-- `A052980(2*(n+1))-A332647(2*n+1)` -/
def P13271946950168327773.Spec : Prop :=
  ∀ n, P13271946950168327773.a n = A293710 n

end A293710

/-! ## A293710.P2586467806801786628

`A110513(2*(n+1))-A332647(2*n+1)`
-/

namespace A293710.P2586467806801786628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110513 (2 * (n + 1)) - A332647 (2 * n + 1)

end

end A293710.P2586467806801786628

namespace A293710

/-- `A110513(2*(n+1))-A332647(2*n+1)` -/
def P2586467806801786628.Spec : Prop :=
  ∀ n, P2586467806801786628.a n = A293710 n

end A293710

/-! ## A293710.P10233099391462015217

`A190512(2*n+1)-A332647(2*n+1)`
-/

namespace A293710.P10233099391462015217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190512 (2 * n + 1) - A332647 (2 * n + 1)

end

end A293710.P10233099391462015217

namespace A293710

/-- `A190512(2*n+1)-A332647(2*n+1)` -/
def P10233099391462015217.Spec : Prop :=
  ∀ n, P10233099391462015217.a n = A293710 n

end A293710

/-! ## A293710.P4502177051123113459

`A193641(2*n+1)-A332491(2*n+1)`
-/

namespace A293710.P4502177051123113459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (2 * n + 1) - A332491 (2 * n + 1)

end

end A293710.P4502177051123113459

namespace A293710

/-- `A193641(2*n+1)-A332491(2*n+1)` -/
def P4502177051123113459.Spec : Prop :=
  ∀ n, P4502177051123113459.a n = A293710 n

end A293710

/-! ## A293710.P1759982192351860193

`A008998(2*n)+A285184(2*n)-A008998(2*n+1)`
-/

namespace A293710.P1759982192351860193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (2 * n) + (A285184 (2 * n) - A008998 (2 * n + 1))

end

end A293710.P1759982192351860193

namespace A293710

/-- `A008998(2*n)+A285184(2*n)-A008998(2*n+1)` -/
def P1759982192351860193.Spec : Prop :=
  ∀ n, P1759982192351860193.a n = A293710 n

end A293710

/-! ## A293710.P17054876715689094678

`A335274(2*n+1)-(A335274(2*n)+A008998(2*n))`
-/

namespace A293710.P17054876715689094678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335274 (2 * n + 1) - (A335274 (2 * n) + A008998 (2 * n))

end

end A293710.P17054876715689094678

namespace A293710

/-- `A335274(2*n+1)-(A335274(2*n)+A008998(2*n))` -/
def P17054876715689094678.Spec : Prop :=
  ∀ n, P17054876715689094678.a n = A293710 n

end A293710

/-! ## A293710.P10121870146842917821

`A110513(2*n+1)+A335242(2*n+1)+A110513(2*n)`
-/

namespace A293710.P10121870146842917821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110513 (2 * n + 1) + (A335242 (2 * n + 1) + A110513 (2 * n))

end

end A293710.P10121870146842917821

namespace A293710

/-- `A110513(2*n+1)+A335242(2*n+1)+A110513(2*n)` -/
def P10121870146842917821.Spec : Prop :=
  ∀ n, P10121870146842917821.a n = A293710 n

end A293710

/-! ## A293710.P6649712010091463358

`A008998(2*n+1)-(A332491(2*n+1)+A052980(2*n))`
-/

namespace A293710.P6649712010091463358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008998 (2 * n + 1) - (A332491 (2 * n + 1) + A052980 (2 * n))

end

end A293710.P6649712010091463358

namespace A293710

/-- `A008998(2*n+1)-(A332491(2*n+1)+A052980(2*n))` -/
def P6649712010091463358.Spec : Prop :=
  ∀ n, P6649712010091463358.a n = A293710 n

end A293710

/-! ## A293710.P15018647348574197541

`A335242(2*n+1)+A052980(2*n)-A052980(2*n+1)`
-/

namespace A293710.P15018647348574197541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335242 (2 * n + 1) + (A052980 (2 * n) - A052980 (2 * n + 1))

end

end A293710.P15018647348574197541

namespace A293710

/-- `A335242(2*n+1)+A052980(2*n)-A052980(2*n+1)` -/
def P15018647348574197541.Spec : Prop :=
  ∀ n, P15018647348574197541.a n = A293710 n

end A293710

/-! ## A293710.P4906947652214003288

`A193641(2*n+1)+A008998(2*n)-A332647(2*n+1)`
-/

namespace A293710.P4906947652214003288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193641 (2 * n + 1) + (A008998 (2 * n) - A332647 (2 * n + 1))

end

end A293710.P4906947652214003288

namespace A293710

/-- `A193641(2*n+1)+A008998(2*n)-A332647(2*n+1)` -/
def P4906947652214003288.Spec : Prop :=
  ∀ n, P4906947652214003288.a n = A293710 n

end A293710

/-! ## A293710.P13475083821500610126

`A335242(2*n+1)+A008998(2*n)-A193641(2*n+1)`
-/

namespace A293710.P13475083821500610126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335242 (2 * n + 1) + (A008998 (2 * n) - A193641 (2 * n + 1))

end

end A293710.P13475083821500610126

namespace A293710

/-- `A335242(2*n+1)+A008998(2*n)-A193641(2*n+1)` -/
def P13475083821500610126.Spec : Prop :=
  ∀ n, P13475083821500610126.a n = A293710 n

end A293710

/-! ## A293710.P855070389863554347

`A020708(2*n)-Δ[A285184(2*n)]`
-/

namespace A293710.P855070389863554347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285184 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 (2 * n) - (f1 (n + 1) - f1 n)

end

end A293710.P855070389863554347

namespace A293710

/-- `A020708(2*n)-Δ[A285184(2*n)]` -/
def P855070389863554347.Spec : Prop :=
  ∀ n, P855070389863554347.a n = A293710 n

end A293710

/-! ## A293710.P13212659852447051611

`A020708(2*n)%A052980(2*n+1)`
-/

namespace A293710.P13212659852447051611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020708 (2 * n)) (A052980 (2 * n + 1))

end

end A293710.P13212659852447051611

namespace A293710

/-- `A020708(2*n)%A052980(2*n+1)` -/
def P13212659852447051611.Spec : Prop :=
  ∀ n, P13212659852447051611.a n = A293710 n

end A293710

/-! ## A293710.P5145146518174410055

`A020708(2*n)-(A332647(2*n+1)+A008998(2*n+1))`
-/

namespace A293710.P5145146518174410055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020708 (2 * n) - (A332647 (2 * n + 1) + A008998 (2 * n + 1))

end

end A293710.P5145146518174410055

namespace A293710

/-- `A020708(2*n)-(A332647(2*n+1)+A008998(2*n+1))` -/
def P5145146518174410055.Spec : Prop :=
  ∀ n, P5145146518174410055.a n = A293710 n

end A293710

/-! ## A293710.P8926263548283224375

`A008998(A103517(n))%A052980(A005408(n))`
-/

namespace A293710.P8926263548283224375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008998 (A103517 n).toNat) (A052980 (A005408 n).toNat)

end

end A293710.P8926263548283224375

namespace A293710

/-- `A008998(A103517(n))%A052980(A005408(n))` -/
def P8926263548283224375.Spec : Prop :=
  ∀ n, P8926263548283224375.a n = A293710 n

end A293710

/-!
# A293711: Numbers k such that phi(sigma(k))/k < phi(sigma(m))/m for all m < k, where sigma is the sum of divisors function (A000203) and phi is Euler's totient function (A000010).

The programs for A293711, there is no canonical definition to state claims against.
-/

/-! ## A293711.P1784757589017240057

`record[∏{p}[A293713(n+1), #]]`
-/

namespace A293711.P1784757589017240057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293713 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293711.P1784757589017240057

/-! ## A293711.P9126979196247681974

`record[A007913(A293713(n+1))]`
-/

namespace A293711.P9126979196247681974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A293713 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293711.P9126979196247681974

/-! ## A293711.P12854160266535434538

`filter[A293713(n+1), A008966(#)]`
-/

namespace A293711.P12854160266535434538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A293711.P12854160266535434538

/-! ## A293711.P13477635661466138799

`filter[A293713(n+1), A359473(#)]`
-/

namespace A293711.P13477635661466138799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A293711.P13477635661466138799

/-! ## A293711.P10806449105556103272

`filter[A293713(n+1), A373486(#)]`
-/

namespace A293711.P10806449105556103272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373486 (f1 j).toNat = 1) n)

end

end A293711.P10806449105556103272

/-!
# A293712: Numbers k such that psi(phi(k))/k > psi(phi(m))/m for all m < k, where phi is Euler's totient function (A000010) and psi is the Dedekind psi function (A001615).

The programs for A293712, there is no canonical definition to state claims against.
-/

/-! ## A293712.P5550215106648189074

`eq[A374201(n), A392610(n)]`
-/

namespace A293712.P5550215106648189074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374201 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293712.P5550215106648189074

/-! ## A293712.P15654802932543428085

`record[A135506(A060735(n+2))]`
-/

namespace A293712.P15654802932543428085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135506 (A060735 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293712.P15654802932543428085

/-! ## A293712.P10454551563272358390

`eq[A092976(n), A392610(n)]`
-/

namespace A293712.P10454551563272358390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092976 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293712.P10454551563272358390

/-! ## A293712.P2204894103056741063

`eq[A217670(n), A392610(n)]`
-/

namespace A293712.P2204894103056741063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217670 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293712.P2204894103056741063

/-! ## A293712.P7293963362639677023

`eq[A225244(n), A392610(n)]`
-/

namespace A293712.P7293963362639677023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392610 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293712.P7293963362639677023

/-!
# A293714: Numbers k such that phi(phi(k))/k < phi(phi(m))/m for all m < k, where phi is Euler's totient function (A000010).

The programs for A293714, there is no canonical definition to state claims against.
-/

/-! ## A293714.P17404071187720747176

`∑[A175732(A129104(∑[n]))]`
-/

namespace A293714.P17404071187720747176
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175732 (A129104 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293714.P17404071187720747176

/-! ## A293714.P12130695021137884879

`∑[A000005(A155195(floor((n²-n)/9)))]`
-/

namespace A293714.P12130695021137884879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A155195 ⌊((n ^ 2 : ℤ) - (n : ℤ) : ℚ) / 9⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293714.P12130695021137884879

/-!
# A293715: Numbers k such that A007755(k) is prime.

The programs for A293715, there is no canonical definition to state claims against.
-/

/-! ## A293715.P1469744466537224946

`A136040(n%a(n-1))+2` with `a(0)=2`
-/

namespace A293715.P1469744466537224946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A136040 (Int.tmod (n : ℤ) (a (n - 1))).toNat + 2

end

end A293715.P1469744466537224946

/-! ## A293715.P2235141273284382460

`A136040(n-floor(atan(a(n-1)))+1)+2` with `a(0)=2`
-/

namespace A293715.P2235141273284382460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A136040 ((n : ℤ) - ⌊Real.arctan (a (n - 1) : ℝ)⌋ + 1).toNat + 2

end

end A293715.P2235141273284382460

/-! ## A293715.P8021273962479786807

`A136040(n)+a(val(A049653(n+2), 2))` with `a(0)=2`
-/

namespace A293715.P8021273962479786807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A136040 n + a (SequenceMachineLib.valuation (A049653 (n + 2)).toNat 2)

end

end A293715.P8021273962479786807

/-! ## A293715.P1499847089867390290

`A136040(n)+a(A020639(A000010(n+2))-2)` with `a(0)=2`
-/

namespace A293715.P1499847089867390290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A136040 n + a (A020639 (A000010 (n + 2)).toNat - 2).toNat

end

end A293715.P1499847089867390290

/-! ## A293715.P3585918811663098416

`A136040(A028310(n))+A020639(A000010(n+2))`
-/

namespace A293715.P3585918811663098416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136040 (A028310 n).toNat + A020639 (A000010 (n + 2)).toNat

end

end A293715.P3585918811663098416

/-! ## A293715.P14365523695173654529

`A136040(A028310(n))+A020639(A000040(n+1)-1)`
-/

namespace A293715.P14365523695173654529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136040 (A028310 n).toNat + A020639 (A000040 (n + 1) - 1).toNat

end

end A293715.P14365523695173654529

/-! ## A293715.P9999990914104431006

`A136040(A028310(n))+A001221(2*A000040(n+1))`
-/

namespace A293715.P9999990914104431006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136040 (A028310 n).toNat + A001221 (2 * A000040 (n + 1)).toNat

end

end A293715.P9999990914104431006

/-!
# A293716: E.g.f.: exp(x + 2*x^2 + 3*x^3).

The programs for A293716, there is no canonical definition to state claims against.
-/

/-! ## A293716.P3029534138735998867

`A293718(∑[n+3])`
-/

namespace A293716.P3029534138735998867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293718 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293716.P3029534138735998867

/-! ## A293716.P17730157032846032906

`or(1, A293718(A027379(n+1)))`
-/

namespace A293716.P17730157032846032906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293718 (A027379 (n + 1)).toNat)

end

end A293716.P17730157032846032906

/-! ## A293716.P13452274520830730400

`or(1, A293718(A055998(n+1)))`
-/

namespace A293716.P13452274520830730400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293718 (A055998 (n + 1)).toNat)

end

end A293716.P13452274520830730400

/-! ## A293716.P15230968529603434092

`A293718(A027379(n+1))+A019590(n+3)`
-/

namespace A293716.P15230968529603434092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293718 (A027379 (n + 1)).toNat + A019590 (n + 3)

end

end A293716.P15230968529603434092

/-! ## A293716.P7648041473030805587

`A057427(A008486(n))*A293718(A027379(n+1))`
-/

namespace A293716.P7648041473030805587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008486 n).toNat * A293718 (A027379 (n + 1)).toNat

end

end A293716.P7648041473030805587

/-! ## A293716.P14944040956095080002

`A001222(A033207(n+1))*A293718(A027379(n+1))`
-/

namespace A293716.P14944040956095080002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A033207 (n + 1)).toNat * A293718 (A027379 (n + 1)).toNat

end

end A293716.P14944040956095080002

/-!
# A293717: E.g.f.: exp(x + 2*x^2 + 3*x^3 + 4*x^4).

The programs for A293717, there is no canonical definition to state claims against.
-/

/-! ## A293717.P5514774117982621521

`A293718(∑[n+3]+n+3)`
-/

namespace A293717.P5514774117982621521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293718 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A293717.P5514774117982621521

/-! ## A293717.P9026511392417188226

`or(1, A293718(A046691(n+2)))`
-/

namespace A293717.P9026511392417188226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293718 (A046691 (n + 2)).toNat)

end

end A293717.P9026511392417188226

/-! ## A293717.P2132919162888433992

`A057427(n+1)*A293718(A046691(n+2))`
-/

namespace A293717.P2132919162888433992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A293718 (A046691 (n + 2)).toNat

end

end A293717.P2132919162888433992

/-! ## A293717.P14161751265583371556

`A007318(C(3, n²))*A293718(A046691(n+2))`
-/

namespace A293717.P14161751265583371556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 3 (n ^ 2)) * A293718 (A046691 (n + 2)).toNat

end

end A293717.P14161751265583371556

/-! ## A293717.P3433824322674626067

`A293718(A046691(n+2))+A000007(3*n+2)`
-/

namespace A293717.P3433824322674626067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293718 (A046691 (n + 2)).toNat + A000007 (3 * n + 2)

end

end A293717.P3433824322674626067

/-!
# A293718: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of e.g.f. exp(Sum_{j=1..k} j*x^j).

The programs for A293718, there is no canonical definition to state claims against.
-/

/-! ## A293718.P1846625613184530405

`A152483(A293669(n))-1`
-/

namespace A293718.P1846625613184530405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152483 (A293669 n).toNat - 1

end

end A293718.P1846625613184530405

/-!
# A293720: Expansion of e.g.f.: exp(x + 4*x^2).

The programs for A293720, there is no canonical definition to state claims against.
-/

/-! ## A293720.P7085671520504056362

`a(n-1)+8*(n-1)*a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A293720.P7085671520504056362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  a (n - 1) + 8 * (((n : ℤ) - 1) * a (n - 2))

end

end A293720.P7085671520504056362

/-! ## A293720.P17232111427564569013

`A293724(∑[n+2]-1)`
-/

namespace A293720.P17232111427564569013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293724 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A293720.P17232111427564569013

/-! ## A293720.P4602825493196583194

`or(1, A293724(A034856(n+1)))`
-/

namespace A293720.P4602825493196583194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293724 (A034856 (n + 1)).toNat)

end

end A293720.P4602825493196583194

/-! ## A293720.P9621781127774976692

`A293724(A034856(n+1))+A000007(n+1)`
-/

namespace A293720.P9621781127774976692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293724 (A034856 (n + 1)).toNat + A000007 (n + 1)

end

end A293720.P9621781127774976692

/-! ## A293720.P2261821161919251741

`A293724(A034856(n+1))+A000038(n+1)`
-/

namespace A293720.P2261821161919251741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293724 (A034856 (n + 1)).toNat + A000038 (n + 1)

end

end A293720.P2261821161919251741

/-! ## A293720.P15303255629775382330

`A293724(A034856(n+1))+A010875(6*n)`
-/

namespace A293720.P15303255629775382330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293724 (A034856 (n + 1)).toNat + A010875 (6 * n)

end

end A293720.P15303255629775382330

/-! ## A293720.P16548198028672547595

`A293724(A034856(n+1))%A000522(n+1)`
-/

namespace A293720.P16548198028672547595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293724 (A034856 (n + 1)).toNat) (A000522 (n + 1))

end

end A293720.P16548198028672547595

/-! ## A293720.P605274545681491675

`A293724(A034856(n+1))^(A078425(n+1)%2)`
-/

namespace A293720.P605274545681491675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293724 (A034856 (n + 1)).toNat : ℚ) ^ (Int.tmod (A078425 (n + 1)) 2 : ℤ)

end

end A293720.P605274545681491675

/-! ## A293720.P7266211264807542268

`A293724(A034856(n+1))^(A000290(n)%(n+1))`
-/

namespace A293720.P7266211264807542268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293724 (A034856 (n + 1)).toNat : ℚ) ^ (Int.tmod (A000290 n) (n + 1 : ℤ) : ℤ)

end

end A293720.P7266211264807542268

/-! ## A293720.P13942262858208181298

`A293724(A034856(n+1))+A112367(A112367(n))`
-/

namespace A293720.P13942262858208181298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293724 (A034856 (n + 1)).toNat + A112367 (A112367 n).toNat

end

end A293720.P13942262858208181298

/-!
# A293721: E.g.f.: exp(x + 4*x^2 + 9*x^3).

The programs for A293721, there is no canonical definition to state claims against.
-/

/-! ## A293721.P1436736728306480109

`A293724(∑[n+3])`
-/

namespace A293721.P1436736728306480109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293724 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293721.P1436736728306480109

/-! ## A293721.P8899668527525393217

`or(1, A293724(A027379(n+1)))`
-/

namespace A293721.P8899668527525393217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293724 (A027379 (n + 1)).toNat)

end

end A293721.P8899668527525393217

/-! ## A293721.P16340144529460226210

`A293724(A027379(n+1))+A001489(n)+n`
-/

namespace A293721.P16340144529460226210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293724 (A027379 (n + 1)).toNat + (A001489 n + (n : ℤ))

end

end A293721.P16340144529460226210

/-! ## A293721.P4813038102114124001

`A293724(A027379(n+1))-Δ[A294433(n)]%3`
-/

namespace A293721.P4813038102114124001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293724 (A027379 (n + 1)).toNat - Int.tmod (f1 (n + 1) - f1 n) 3

end

end A293721.P4813038102114124001

/-! ## A293721.P3899819611732987005

`A293724(A027379(n+1))+Δ[A002378(n)]%(n+1)`
-/

namespace A293721.P3899819611732987005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293724 (A027379 (n + 1)).toNat + Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A293721.P3899819611732987005

/-! ## A293721.P10188118719557223612

`A293724(A027379(n+1))-A181841(n+2)%3+2`
-/

namespace A293721.P10188118719557223612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293724 (A027379 (n + 1)).toNat - Int.tmod (A181841 (n + 2)) 3 + 2

end

end A293721.P10188118719557223612

/-!
# A293722: Number of distinct nonempty subsequences of the binary expansion of n.

The programs for A293722, there is no canonical definition to state claims against.
-/

/-! ## A293722.P2006498503812638552

`A293170(n)-1`
-/

namespace A293722.P2006498503812638552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293170 n - 1

end

end A293722.P2006498503812638552

/-! ## A293722.P7168660388644005045

`A023443(A293170(n))`
-/

namespace A293722.P7168660388644005045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A293170 n).toNat

end

end A293722.P7168660388644005045

/-! ## A293722.P13425909769368947011

`A023444(A293170(n)+1)`
-/

namespace A293722.P13425909769368947011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A293170 n + 1).toNat

end

end A293722.P13425909769368947011

/-! ## A293722.P3213315328363617991

`A046667(2*A293170(n))`
-/

namespace A293722.P3213315328363617991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046667 (2 * A293170 n).toNat

end

end A293722.P3213315328363617991

/-! ## A293722.P10573514782266996092

`A023444(2*A293170(n))/2`
-/

namespace A293722.P10573514782266996092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023444 (2 * A293170 n).toNat : ℚ) / 2

end

end A293722.P10573514782266996092

/-! ## A293722.P1725140597708077294

`abs(A293170(n)+A082303(A049077(2*n+1)))`
-/

namespace A293722.P1725140597708077294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A293170 n + A082303 (A049077 (2 * n + 1)).toNat|

end

end A293722.P1725140597708077294

/-! ## A293722.P17486491418627034962

`xor(-A293170(n), A083365(A001511(2*n+1)))`
-/

namespace A293722.P17486491418627034962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-A293170 n) (A083365 (A001511 (2 * n + 1)).toNat)

end

end A293722.P17486491418627034962

/-! ## A293722.P405559416769254694

`A259361(A293170(n)²)`
-/

namespace A293722.P405559416769254694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A293170 n ^ 2).toNat

end

end A293722.P405559416769254694

/-! ## A293722.P11697327099384890899

`A259361(A293170(n)^2)`
-/

namespace A293722.P11697327099384890899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A293170 n ^ 2).toNat

end

end A293722.P11697327099384890899

/-! ## A293722.P14346003642213775713

`A002260(A293170(n)+∑[n+2])`
-/

namespace A293722.P14346003642213775713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A293170 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A293722.P14346003642213775713

/-! ## A293722.P15050460281449401187

`A334300(A196168(n))`
-/

namespace A293722.P15050460281449401187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334300 (A196168 n).toNat

end

end A293722.P15050460281449401187

/-!
# A293723: E.g.f.: exp(x + 4*x^2 + 9*x^3 + 16*x^4).

The programs for A293723, there is no canonical definition to state claims against.
-/

/-! ## A293723.P18151064568631940634

`A293724(∑[n+3]+n+3)`
-/

namespace A293723.P18151064568631940634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293724 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A293723.P18151064568631940634

/-! ## A293723.P5422663398858728275

`or(1, A293724(A046691(n+2)))`
-/

namespace A293723.P5422663398858728275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293724 (A046691 (n + 2)).toNat)

end

end A293723.P5422663398858728275

/-! ## A293723.P1552770662876038132

`gcd(A000038(n), A293724(A046691(n+2)))`
-/

namespace A293723.P1552770662876038132
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293724 (A046691 (n + 2)).toNat)

end

end A293723.P1552770662876038132

/-! ## A293723.P13124605297765361252

`A000040(n+2)%2*A293724(A046691(n+2))`
-/

namespace A293723.P13124605297765361252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 2)) 2 * A293724 (A046691 (n + 2)).toNat

end

end A293723.P13124605297765361252

/-! ## A293723.P3803208234803461107

`A293724(A046691(n+2))%A062194(n+2)`
-/

namespace A293723.P3803208234803461107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293724 (A046691 (n + 2)).toNat) (A062194 (n + 2))

end

end A293723.P3803208234803461107

/-!
# A293724: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of e.g.f. exp(Sum_{j=1..k} j^2*x^j).

The programs for A293724, there is no canonical definition to state claims against.
-/

/-! ## A293724.P12325994245017213577

`A113745(A096670(n+1)%A270929(2*n+3))`
-/

namespace A293724.P12325994245017213577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113745 (Int.tmod (A096670 (n + 1)) (A270929 (2 * n + 3))).toNat

end

end A293724.P12325994245017213577

/-!
# A293725: Numbers k such that c(k,0) = c(k,1), where c(k,d) = number of d's in the first k digits of the base-2 expansion of sqrt(2).

The programs for A293725, there is no canonical definition to state claims against.
-/

/-! ## A293725.P14605738049781593843

`2*A293726(n+1)`
-/

namespace A293725.P14605738049781593843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293726 (n + 1)

end

end A293725.P14605738049781593843

/-! ## A293725.P17747697059959220031

`A293726(-xor(n, -1))/(1-1/2)`
-/

namespace A293725.P17747697059959220031
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293726 (-Int.xor (n : ℤ) (-1)).toNat : ℚ) / (1 - (1 : ℚ) / 2)

end

end A293725.P17747697059959220031

/-! ## A293725.P16258346736207703543

`A004277(A293726(n+1))`
-/

namespace A293725.P16258346736207703543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A293726 (n + 1)).toNat

end

end A293725.P16258346736207703543

/-! ## A293725.P5781462815587792276

`A004275(A293726(n+1)+1)`
-/

namespace A293725.P5781462815587792276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A293726 (n + 1) + 1).toNat

end

end A293725.P5781462815587792276

/-! ## A293725.P7624861943972028879

`A004273(A293726(n+1)+1)-1`
-/

namespace A293725.P7624861943972028879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A293726 (n + 1) + 1).toNat - 1

end

end A293725.P7624861943972028879

/-! ## A293725.P5608977308913496228

`A005408(A293726(n+1)-1)+1`
-/

namespace A293725.P5608977308913496228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A293726 (n + 1) - 1).toNat + 1

end

end A293725.P5608977308913496228

/-! ## A293725.P11249525235830310354

`A005408(A293726(-xor(n, -1)))-1`
-/

namespace A293725.P11249525235830310354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A293726 (-Int.xor (n : ℤ) (-1)).toNat).toNat - 1

end

end A293725.P11249525235830310354

/-! ## A293725.P15469309619696864152

`A032742(4*A293726(-xor(n, -1)))`
-/

namespace A293725.P15469309619696864152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (4 * A293726 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A293725.P15469309619696864152

/-! ## A293725.P14810607334617608899

`A293726(n+1)+A293726(-xor(n, -1))`
-/

namespace A293725.P14810607334617608899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293726 (n + 1) + A293726 (-Int.xor (n : ℤ) (-1)).toNat

end

end A293725.P14810607334617608899

/-! ## A293725.P8494672436263800382

`2/A293726(n+1)^or(-1, A000041(n))`
-/

namespace A293725.P8494672436263800382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A293726 (n + 1) : ℚ) ^ (Int.lor (-1) (A000041 n) : ℤ)

end

end A293725.P8494672436263800382

/-!
# A293726: a(n) = (1/2)*A293725(n).

The programs for A293726, there is no canonical definition to state claims against.
-/

/-! ## A293726.P14128568957912358818

`1/2*A293725(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293726.P14128568957912358818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A293725 (n + 1) : ℚ)

end

end A293726.P14128568957912358818

/-! ## A293726.P294045455697766529

`A293725(n+1)/2`
-/

namespace A293726.P294045455697766529
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293725 (n + 1) : ℚ) / 2

end

end A293726.P294045455697766529

/-! ## A293726.P15366247410095241761

`A001281(A293725(n+1))`
-/

namespace A293726.P15366247410095241761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A293725 (n + 1)).toNat

end

end A293726.P15366247410095241761

/-! ## A293726.P7729604859732147352

`A004524(A293725(n+1)+1)`
-/

namespace A293726.P7729604859732147352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A293725 (n + 1) + 1).toNat

end

end A293726.P7729604859732147352

/-! ## A293726.P10326347415733891475

`A004526(A293725(n+1)+1)`
-/

namespace A293726.P10326347415733891475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A293725 (n + 1) + 1).toNat

end

end A293726.P10326347415733891475

/-! ## A293726.P9533888836169314866

`A028242(A293725(n+1)+1)`
-/

namespace A293726.P9533888836169314866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A293725 (n + 1) + 1).toNat

end

end A293726.P9533888836169314866

/-! ## A293726.P16988969927192674818

`A001057(A293725(n+1)-1)`
-/

namespace A293726.P16988969927192674818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A293725 (n + 1) - 1).toNat

end

end A293726.P16988969927192674818

/-! ## A293726.P16486514523591141803

`A003602(A293725(n+1)-1)`
-/

namespace A293726.P16486514523591141803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (A293725 (n + 1) - 1).toNat

end

end A293726.P16486514523591141803

/-! ## A293726.P14109504343829375085

`A008619(A293725(n+1)-1)`
-/

namespace A293726.P14109504343829375085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A293725 (n + 1) - 1).toNat

end

end A293726.P14109504343829375085

/-! ## A293726.P1355305104415562540

`A002265(2*A293725(n+1))`
-/

namespace A293726.P1355305104415562540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A293725 (n + 1)).toNat

end

end A293726.P1355305104415562540

/-!
# A293727: Numbers k such that c(k,0) < c(k,1), where c(k,d) = number of d's in the first k digits of the base-2 expansion of sqrt(2).

The programs for A293727, there is no canonical definition to state claims against.
-/

/-! ## A293727.P8791712789737398825

`record[(n+1)%A246339(A008619(n))]`
-/

namespace A293727.P8791712789737398825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A246339 (A008619 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293727.P8791712789737398825

/-! ## A293727.P13876510387691218019

`∑[and(A065218(n+1), A248596(2*(n+2)))!]`
-/

namespace A293727.P13876510387691218019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Int.land (A065218 (n + 1)) (A248596 (2 * (n + 2)))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293727.P13876510387691218019

/-! ## A293727.P3972061653055319975

`A028310(lt[A006005(n+1), A192327(3*n+2)])`
-/

namespace A293727.P3972061653055319975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192327 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A293727.P3972061653055319975

/-! ## A293727.P11815386769423377537

`A028310(lt[A006093(n+1), A192327(3*n+2)])`
-/

namespace A293727.P11815386769423377537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192327 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A293727.P11815386769423377537

/-! ## A293727.P15514278965817484742

`A028310(lt[A008578(n+1), A192327(3*n+2)])`
-/

namespace A293727.P15514278965817484742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192327 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A293727.P15514278965817484742

/-!
# A293728: Numbers k such that c(k,0) > c(k,1), where c(k,d) = number of d's in the first k digits of base-2 expansion of sqrt(2).

The programs for A293728, there is no canonical definition to state claims against.
-/

/-! ## A293728.P9132291844984665219

`lt[A246339(A008619(n))-n, 1]`
-/

namespace A293728.P9132291844984665219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246339 (A008619 n).toNat - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A293728.P9132291844984665219

/-! ## A293728.P8144879649260513284

`lt[A119880(n), A244490(3*n+2)]+10`
-/

namespace A293728.P8144879649260513284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119880 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244490 (3 * n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 10

end

end A293728.P8144879649260513284

/-!
# A293731: E.g.f.: exp(Sum_{n>=1} n*A000041(n)*x^n), where A000041(n) is the number of partitions of n.

The programs for A293731, there is no canonical definition to state claims against.
-/

/-! ## A293731.P5609573760112707833

`A293796(∑[n+3])`
-/

namespace A293731.P5609573760112707833
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293796 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293731.P5609573760112707833

/-! ## A293731.P1951025594836444064

`A033999(A034262(n))*A293796(A141214(n))`
-/

namespace A293731.P1951025594836444064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A034262 n).toNat * A293796 (A141214 n).toNat

end

end A293731.P1951025594836444064

/-! ## A293731.P6914751330988913890

`A293796(A141214(n))%A284096(n+1)`
-/

namespace A293731.P6914751330988913890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293796 (A141214 n).toNat) (A284096 (n + 1))

end

end A293731.P6914751330988913890

/-!
# A293732: Number of multisets of nonempty words with a total of n letters over binary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293732, there is no canonical definition to state claims against.
-/

/-! ## A293732.P1656140691565080676

`A293108(∑[n+3])`
-/

namespace A293732.P1656140691565080676
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293732.P1656140691565080676

/-! ## A293732.P6491625795203347004

`lcm((-1)^n, A293108(A055998(n+1)))`
-/

namespace A293732.P6491625795203347004
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A293108 (A055998 (n + 1)).toNat)

end

end A293732.P6491625795203347004

/-! ## A293732.P9214524410961972747

`A057979(2*n)*A293108(A055998(n+1))`
-/

namespace A293732.P9214524410961972747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (2 * n) * A293108 (A055998 (n + 1)).toNat

end

end A293732.P9214524410961972747

/-! ## A293732.P12072213844224972836

`A293108(A055998(n+1))%A007578(n+2)`
-/

namespace A293732.P12072213844224972836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293108 (A055998 (n + 1)).toNat) (A007578 (n + 2))

end

end A293732.P12072213844224972836

/-! ## A293732.P13832276846439048059

`A293108(A055998(n+1))+char[A048927(n+1)]`
-/

namespace A293732.P13832276846439048059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048927 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A055998 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A293732.P13832276846439048059

/-! ## A293732.P5458677379053574083

`A293108(A055998(n+1))+char[A344237(n+1)]`
-/

namespace A293732.P5458677379053574083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344237 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A055998 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A293732.P5458677379053574083

/-! ## A293732.P15848049310092465564

`A000041(A178334(n))*A293108(A055998(n+1))`
-/

namespace A293732.P15848049310092465564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A178334 n).toNat * A293108 (A055998 (n + 1)).toNat

end

end A293732.P15848049310092465564

/-! ## A293732.P18248622099645424714

`A293108(A055998(n+1))*A293108(A000217(n))`
-/

namespace A293732.P18248622099645424714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A055998 (n + 1)).toNat * A293108 (A000217 n).toNat

end

end A293732.P18248622099645424714

/-! ## A293732.P4303324854245445113

`A001222(A001122(n+1))*A293108(A055998(n+1))`
-/

namespace A293732.P4303324854245445113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001122 (n + 1)).toNat * A293108 (A055998 (n + 1)).toNat

end

end A293732.P4303324854245445113

/-! ## A293732.P16512291008778831557

`A003557(A014963(n+2))*A293108(A055998(n+1))`
-/

namespace A293732.P16512291008778831557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A014963 (n + 2)).toNat * A293108 (A055998 (n + 1)).toNat

end

end A293732.P16512291008778831557

/-!
# A293733: Number of multisets of nonempty words with a total of n letters over ternary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293733, there is no canonical definition to state claims against.
-/

/-! ## A293733.P16550582732088711758

`A293108(∑[n+4]+2)`
-/

namespace A293733.P16550582732088711758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A293733.P16550582732088711758

/-! ## A293733.P13187119166923967379

`xor(1, xor(1, A293108(A056000(n)+6)))`
-/

namespace A293733.P13187119166923967379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A293108 (A056000 n + 6).toNat))

end

end A293733.P13187119166923967379

/-! ## A293733.P3636718328540125365

`or(A000007(n), A293108(A056000(n)+6))`
-/

namespace A293733.P3636718328540125365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293108 (A056000 n + 6).toNat)

end

end A293733.P3636718328540125365

/-! ## A293733.P13945703259077490563

`A293108(A056000(n)+6)+A000035(2*n)`
-/

namespace A293733.P13945703259077490563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A056000 n + 6).toNat + A000035 (2 * n)

end

end A293733.P13945703259077490563

/-! ## A293733.P7944832756599197954

`A293108(A056000(n)+6)%(A000984(n)+1)`
-/

namespace A293733.P7944832756599197954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293108 (A056000 n + 6).toNat) (A000984 n + 1)

end

end A293733.P7944832756599197954

/-! ## A293733.P13263999285373309307

`abs(A009531(2*n+1)*A293108(A056000(n)+6))`
-/

namespace A293733.P13263999285373309307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009531 (2 * n + 1) * A293108 (A056000 n + 6).toNat|

end

end A293733.P13263999285373309307

/-!
# A293734: Number of multisets of nonempty words with a total of n letters over quaternary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293734, there is no canonical definition to state claims against.
-/

/-! ## A293734.P11791724063483339748

`A293108(A052905(n+2))`
-/

namespace A293734.P11791724063483339748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A052905 (n + 2)).toNat

end

end A293734.P11791724063483339748

/-! ## A293734.P16196166929726661229

`A293108(eq[4, A025581(n)])`
-/

namespace A293734.P16196166929726661229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293734.P16196166929726661229

/-! ## A293734.P12069414248097896958

`A293108(Δ[A055831(n+4)])`
-/

namespace A293734.P12069414248097896958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (f1 (n + 1) - f1 n).toNat

end

end A293734.P12069414248097896958

/-! ## A293734.P8850530305142773800

`A293108(A046691(n+3)-1)`
-/

namespace A293734.P8850530305142773800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A046691 (n + 3) - 1).toNat

end

end A293734.P8850530305142773800

/-! ## A293734.P12264224587999828654

`A293108(A016885(n+1)+∑[n]+2)`
-/

namespace A293734.P12264224587999828654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A016885 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ)).toNat

end

end A293734.P12264224587999828654

/-! ## A293734.P952197037214321531

`A293108(A166136(n+1)+A016777(n))`
-/

namespace A293734.P952197037214321531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A166136 (n + 1) + A016777 n).toNat

end

end A293734.P952197037214321531

/-! ## A293734.P17051869005468374965

`A293108(A057428(n)+A046691(n+3))`
-/

namespace A293734.P17051869005468374965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A057428 n + A046691 (n + 3)).toNat

end

end A293734.P17051869005468374965

/-!
# A293735: Number of multisets of nonempty words with a total of n letters over quinary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293735, there is no canonical definition to state claims against.
-/

/-! ## A293735.P16449982682439795665

`A293108((n+4)²-∑[n+1])`
-/

namespace A293735.P16449982682439795665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 ((n + 4) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293735.P16449982682439795665

/-! ## A293735.P3921821119652566841

`abs(1-A293108(A046691(n+4)-2))+1`
-/

namespace A293735.P3921821119652566841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A293108 (A046691 (n + 4) - 2).toNat| + 1

end

end A293735.P3921821119652566841

/-! ## A293735.P11143415673688483922

`A293108(A055999(n+3))%A093143(n+1)`
-/

namespace A293735.P11143415673688483922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293108 (A055999 (n + 3)).toNat) (A093143 (n + 1))

end

end A293735.P11143415673688483922

/-! ## A293735.P240222628673467429

`A293108(A046691(n+4)-2)%A093143(n+1)`
-/

namespace A293735.P240222628673467429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293108 (A046691 (n + 4) - 2).toNat) (A093143 (n + 1))

end

end A293735.P240222628673467429

/-! ## A293735.P12706362996064366606

`A293108(A000217(n+6)-6)+val(A001903(n), 2)`
-/

namespace A293735.P12706362996064366606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A000217 (n + 6) - 6).toNat + (SequenceMachineLib.valuation (A001903 n).toNat 2 : ℤ)

end

end A293735.P12706362996064366606

/-! ## A293735.P4589997370402809744

`A293108(A000217(n+6)-6)+A046109(n+1)%2`
-/

namespace A293735.P4589997370402809744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A000217 (n + 6) - 6).toNat + Int.tmod (A046109 (n + 1)) 2

end

end A293735.P4589997370402809744

/-! ## A293735.P10431623966932325306

`A293108(A000217(n+6)-6)+val(n+1, A000096(n+6))`
-/

namespace A293735.P10431623966932325306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A000217 (n + 6) - 6).toNat + (SequenceMachineLib.valuation (n + 1) (A000096 (n + 6)).toNat : ℤ)

end

end A293735.P10431623966932325306

/-! ## A293735.P14487827091911743469

`A293108(A000217(n+6)-6)+2%A020639(A008574(n))`
-/

namespace A293735.P14487827091911743469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A000217 (n + 6) - 6).toNat + Int.tmod 2 (A020639 (A008574 n).toNat)

end

end A293735.P14487827091911743469

/-! ## A293735.P11834739092778871044

`A293108(A000217(n+6)-6)%A052225(n+1)`
-/

namespace A293735.P11834739092778871044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293108 (A000217 (n + 6) - 6).toNat) (A052225 (n + 1))

end

end A293735.P11834739092778871044

/-!
# A293736: Number of multisets of nonempty words with a total of n letters over senary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293736, there is no canonical definition to state claims against.
-/

/-! ## A293736.P1790724217794084170

`A293108(eq[6, A025581(n)])`
-/

namespace A293736.P1790724217794084170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293736.P1790724217794084170

/-! ## A293736.P14152376357987114925

`A293108(A055999(n+4)-1)`
-/

namespace A293736.P14152376357987114925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A055999 (n + 4) - 1).toNat

end

end A293736.P14152376357987114925

/-! ## A293736.P2396373743696529354

`A293108(A052905(n+4)-2)`
-/

namespace A293736.P2396373743696529354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A052905 (n + 4) - 2).toNat

end

end A293736.P2396373743696529354

/-! ## A293736.P9907961591163705052

`A293108(A000217(n+7)-7)`
-/

namespace A293736.P9907961591163705052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A000217 (n + 7) - 7).toNat

end

end A293736.P9907961591163705052

/-! ## A293736.P3217805138822852600

`A293108(A000124(n+7)-8)`
-/

namespace A293736.P3217805138822852600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A000124 (n + 7) - 8).toNat

end

end A293736.P3217805138822852600

/-! ## A293736.P18059087469045430440

`A293108(eq[7, A004736(n+1)])`
-/

namespace A293736.P18059087469045430440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293736.P18059087469045430440

/-! ## A293736.P2285813680734481893

`A293108((n+9)²-A167499(n+9))`
-/

namespace A293736.P2285813680734481893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (((n + 9) ^ 2 : ℤ) - A167499 (n + 9)).toNat

end

end A293736.P2285813680734481893

/-! ## A293736.P18146654519811038799

`A293108((n+10)²%A000124(n+12))`
-/

namespace A293736.P18146654519811038799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (Int.tmod ((n + 10) ^ 2 : ℤ) (A000124 (n + 12))).toNat

end

end A293736.P18146654519811038799

/-! ## A293736.P8648368397537808795

`A293108(A167499(n+4)+2*n+1)`
-/

namespace A293736.P8648368397537808795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A167499 (n + 4) + (2 * n + 1 : ℤ)).toNat

end

end A293736.P8648368397537808795

/-! ## A293736.P9052036272941694482

`A293108(A028310(n)+A000217(n+6))`
-/

namespace A293736.P9052036272941694482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A028310 n + A000217 (n + 6)).toNat

end

end A293736.P9052036272941694482

/-!
# A293737: Number of multisets of nonempty words with a total of n letters over septenary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293737, there is no canonical definition to state claims against.
-/

/-! ## A293737.P6346828318945322219

`A293108(A046691(n+6)-4)`
-/

namespace A293737.P6346828318945322219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A046691 (n + 6) - 4).toNat

end

end A293737.P6346828318945322219

/-! ## A293737.P6913624670481522252

`A293108(A000217(n+8)-8)`
-/

namespace A293737.P6913624670481522252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A000217 (n + 8) - 8).toNat

end

end A293737.P6913624670481522252

/-! ## A293737.P9855173718288319467

`A293108(A166136(n+4)+A016777(n+2))`
-/

namespace A293737.P9855173718288319467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A166136 (n + 4) + A016777 (n + 2)).toNat

end

end A293737.P9855173718288319467

/-! ## A293737.P17374639039947326154

`A293108(A005843(n+4)+A000096(n+5))`
-/

namespace A293737.P17374639039947326154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A005843 (n + 4) + A000096 (n + 5)).toNat

end

end A293737.P17374639039947326154

/-! ## A293737.P674506349475547837

`A293108(A055998(n+8)-A004277(n+12))`
-/

namespace A293737.P674506349475547837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A055998 (n + 8) - A004277 (n + 12)).toNat

end

end A293737.P674506349475547837

/-!
# A293738: Number of multisets of nonempty words with a total of n letters over octonary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293738, there is no canonical definition to state claims against.
-/

/-! ## A293738.P16990751737943666715

`A293108(eq[8, A025581(n)])`
-/

namespace A293738.P16990751737943666715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293738.P16990751737943666715

/-! ## A293738.P11363464145055072860

`A293108(A000217(n+9)-9)`
-/

namespace A293738.P11363464145055072860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A000217 (n + 9) - 9).toNat

end

end A293738.P11363464145055072860

/-! ## A293738.P12252276383844357451

`A293108(eq[9, A004736(n+1)])`
-/

namespace A293738.P12252276383844357451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293738.P12252276383844357451

/-! ## A293738.P16376109531156924953

`A293108((n+6)²-A055998(n))`
-/

namespace A293738.P16376109531156924953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (((n + 6) ^ 2 : ℤ) - A055998 n).toNat

end

end A293738.P16376109531156924953

/-! ## A293738.P8302925271635565481

`A293108(A000096(n+7)+n+1)`
-/

namespace A293738.P8302925271635565481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A293738.P8302925271635565481

/-!
# A293739: Number of multisets of nonempty words with a total of n letters over nonary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293739, there is no canonical definition to state claims against.
-/

/-! ## A293739.P5821484621963797338

`A293108(A034856(n+9)-8)`
-/

namespace A293739.P5821484621963797338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A034856 (n + 9) - 8).toNat

end

end A293739.P5821484621963797338

/-! ## A293739.P2576809899955164734

`A293108(A000217(n+10)-10)`
-/

namespace A293739.P2576809899955164734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A000217 (n + 10) - 10).toNat

end

end A293739.P2576809899955164734

/-! ## A293739.P12540142175935342513

`A293108(A014206(n+7)-A167614(n+3))`
-/

namespace A293739.P12540142175935342513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A014206 (n + 7) - A167614 (n + 3)).toNat

end

end A293739.P12540142175935342513

/-! ## A293739.P5033464569035113031

`A293108(A005843(n+5)+A000096(n+7))`
-/

namespace A293739.P5033464569035113031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A005843 (n + 5) + A000096 (n + 7)).toNat

end

end A293739.P5033464569035113031

/-! ## A293739.P10308040428463403041

`A293108(A046691(n+6)+A005408(n+6))`
-/

namespace A293739.P10308040428463403041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A046691 (n + 6) + A005408 (n + 6)).toNat

end

end A293739.P10308040428463403041

/-! ## A293739.P6995009568614547345

`A293108(A055998(n+6)+A004277(n+6))`
-/

namespace A293739.P6995009568614547345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A055998 (n + 6) + A004277 (n + 6)).toNat

end

end A293739.P6995009568614547345

/-!
# A293740: Number of multisets of nonempty words with a total of n letters over denary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293740, there is no canonical definition to state claims against.
-/

/-! ## A293740.P14696888466356860545

`A293108(A055998(n+9)-8)`
-/

namespace A293740.P14696888466356860545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A055998 (n + 9) - 8).toNat

end

end A293740.P14696888466356860545

/-! ## A293740.P14386089706280059697

`A293108(A000217(n+11)-11)`
-/

namespace A293740.P14386089706280059697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A000217 (n + 11) - 11).toNat

end

end A293740.P14386089706280059697

/-! ## A293740.P6659566265360542622

`A293108(A133263(n+4)+A016993(n+6))`
-/

namespace A293740.P6659566265360542622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A133263 (n + 4) + A016993 (n + 6)).toNat

end

end A293740.P6659566265360542622

/-! ## A293740.P7593751040745632168

`A293108(A166136(n+7)+A016777(n+4))`
-/

namespace A293740.P7593751040745632168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293108 (A166136 (n + 7) + A016777 (n + 4)).toNat

end

end A293740.P7593751040745632168

/-!
# A293741: Number of sets of nonempty words with a total of n letters over binary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293741, there is no canonical definition to state claims against.
-/

/-! ## A293741.P16394632923521981750

`A293112(∑[n+3])`
-/

namespace A293741.P16394632923521981750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293741.P16394632923521981750

/-! ## A293741.P10166398296242358804

`A293112(A055998(n+1))^(char[1]+1)`
-/

namespace A293741.P10166398296242358804
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A055998 (n + 1)).toNat ^ ((if ∃ j, f1 j = n then 1 else 0) + 1)

end

end A293741.P10166398296242358804

/-! ## A293741.P8334381876692672556

`A293112(A055998(n+1))%A155110(n)`
-/

namespace A293741.P8334381876692672556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293112 (A055998 (n + 1)).toNat) (A155110 n)

end

end A293741.P8334381876692672556

/-! ## A293741.P8257378979962397068

`gcd(A000038(n), A293112(A055998(n+1)))`
-/

namespace A293741.P8257378979962397068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A293112 (A055998 (n + 1)).toNat)

end

end A293741.P8257378979962397068

/-! ## A293741.P5529231323657739005

`A293112(A055998(n+1))+A000007(n+1)`
-/

namespace A293741.P5529231323657739005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A055998 (n + 1)).toNat + A000007 (n + 1)

end

end A293741.P5529231323657739005

/-! ## A293741.P4757489207935340452

`A033999(2*n)*A293112(A055998(n+1))`
-/

namespace A293741.P4757489207935340452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n) * A293112 (A055998 (n + 1)).toNat

end

end A293741.P4757489207935340452

/-! ## A293741.P15410397674490813305

`(n-A023443(n))*A293112(A055998(n+1))`
-/

namespace A293741.P15410397674490813305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A023443 n) * A293112 (A055998 (n + 1)).toNat

end

end A293741.P15410397674490813305

/-!
# A293742: Number of sets of nonempty words with a total of n letters over ternary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293742, there is no canonical definition to state claims against.
-/

/-! ## A293742.P17619994446230818418

`A293112(∑[n+4]+2)`
-/

namespace A293742.P17619994446230818418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A293742.P17619994446230818418

/-! ## A293742.P6288244021104708603

`gcd(n, n+1)*A293112(A046691(n+2))`
-/

namespace A293742.P6288244021104708603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A293112 (A046691 (n + 2)).toNat

end

end A293742.P6288244021104708603

/-! ## A293742.P2710276891773781719

`A293112(A155212(n)+4)+A283978(2*n)`
-/

namespace A293742.P2710276891773781719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A155212 n + 4).toNat + A283978 (2 * n)

end

end A293742.P2710276891773781719

/-! ## A293742.P5840003656326769041

`A293112(A155212(n)+4)+A010872(6*n)`
-/

namespace A293742.P5840003656326769041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A155212 n + 4).toNat + A010872 (6 * n)

end

end A293742.P5840003656326769041

/-! ## A293742.P4124428935806482663

`A007318(A000217(n))*A293112(A046691(n+2))`
-/

namespace A293742.P4124428935806482663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A293112 (A046691 (n + 2)).toNat

end

end A293742.P4124428935806482663

/-! ## A293742.P10762674631850293979

`A014963(A008458(n))*A293112(A046691(n+2))`
-/

namespace A293742.P10762674631850293979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A293112 (A046691 (n + 2)).toNat

end

end A293742.P10762674631850293979

/-! ## A293742.P2215538552487910558

`A295308(A295294(n+1))+A293112(A046691(n+2))`
-/

namespace A293742.P2215538552487910558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295308 (A295294 (n + 1)).toNat + A293112 (A046691 (n + 2)).toNat

end

end A293742.P2215538552487910558

/-! ## A293742.P7413837883740475130

`A206719(A000040(n+1))*A293112(A155212(n)+4)`
-/

namespace A293742.P7413837883740475130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206719 (A000040 (n + 1)).toNat * A293112 (A155212 n + 4).toNat

end

end A293742.P7413837883740475130

/-! ## A293742.P2312827202838122290

`A293112(A133263(n+2)+A005408(n))%A231378(n+1)`
-/

namespace A293742.P2312827202838122290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293112 (A133263 (n + 2) + A005408 n).toNat) (A231378 (n + 1))

end

end A293742.P2312827202838122290

/-!
# A293743: Number of sets of nonempty words with a total of n letters over quaternary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293743, there is no canonical definition to state claims against.
-/

/-! ## A293743.P14314957698591399410

`A293112(∑[n+5]+5)`
-/

namespace A293743.P14314957698591399410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A293743.P14314957698591399410

/-! ## A293743.P15531880801053571873

`xor(2, xor(2, A293112(A052905(n+2))))`
-/

namespace A293743.P15531880801053571873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (Int.xor 2 (A293112 (A052905 (n + 2)).toNat))

end

end A293743.P15531880801053571873

/-! ## A293743.P15391628232184807309

`or(A000007(n), A293112(A052905(n+2)))`
-/

namespace A293743.P15391628232184807309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A293112 (A052905 (n + 2)).toNat)

end

end A293743.P15391628232184807309

/-! ## A293743.P4039357083158336002

`A106400(n)²*A293112(A052905(n+2))`
-/

namespace A293743.P4039357083158336002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 * A293112 (A052905 (n + 2)).toNat

end

end A293743.P4039357083158336002

/-! ## A293743.P14486003882256508984

`A293112(A052905(n+2))+A000007(n+1)`
-/

namespace A293743.P14486003882256508984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A052905 (n + 2)).toNat + A000007 (n + 1)

end

end A293743.P14486003882256508984

/-! ## A293743.P11886685639351163848

`A293112(A052905(n+2))+n%A028310(n)`
-/

namespace A293743.P11886685639351163848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A052905 (n + 2)).toNat + Int.tmod (n : ℤ) (A028310 n)

end

end A293743.P11886685639351163848

/-! ## A293743.P13725393170236698359

`A293112(A052905(n+2))+A008683(4*(n+1))`
-/

namespace A293743.P13725393170236698359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A052905 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A293743.P13725393170236698359

/-! ## A293743.P5483384681370603267

`A014963(6*(n+1))*A293112(A052905(n+2))`
-/

namespace A293743.P5483384681370603267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A293112 (A052905 (n + 2)).toNat

end

end A293743.P5483384681370603267

/-! ## A293743.P11624813192697636620

`gcd(n+1, A000040(n+1))²*A293112(A052905(n+2))`
-/

namespace A293743.P11624813192697636620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n + 1 : ℤ) (A000040 (n + 1)) ^ 2 : ℤ) * A293112 (A052905 (n + 2)).toNat

end

end A293743.P11624813192697636620

/-! ## A293743.P16953022537539564367

`A001221(A135832(n+1))*A293112(A052905(n+2))`
-/

namespace A293743.P16953022537539564367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A135832 (n + 1)).toNat * A293112 (A052905 (n + 2)).toNat

end

end A293743.P16953022537539564367

/-!
# A293744: Number of sets of nonempty words with a total of n letters over quinary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293744, there is no canonical definition to state claims against.
-/

/-! ## A293744.P7806759139448644500

`A293112(A052905(n+3)-1)`
-/

namespace A293744.P7806759139448644500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A052905 (n + 3) - 1).toNat

end

end A293744.P7806759139448644500

/-! ## A293744.P7880663135901306200

`A293112(A046691(n+4)-2)`
-/

namespace A293744.P7880663135901306200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A046691 (n + 4) - 2).toNat

end

end A293744.P7880663135901306200

/-! ## A293744.P7729575839032209949

`A293112(A000217(n+6)-6)`
-/

namespace A293744.P7729575839032209949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A000217 (n + 6) - 6).toNat

end

end A293744.P7729575839032209949

/-! ## A293744.P17410966251759358920

`A293112(A000124(n+6)-7)`
-/

namespace A293744.P17410966251759358920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A000124 (n + 6) - 7).toNat

end

end A293744.P17410966251759358920

/-! ## A293744.P11975157939511826176

`A293112(A167614(n+1)+A062545(A062545(n)))`
-/

namespace A293744.P11975157939511826176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A167614 (n + 1) + A062545 (A062545 n).toNat).toNat

end

end A293744.P11975157939511826176

/-!
# A293745: Number of sets of nonempty words with a total of n letters over senary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293745, there is no canonical definition to state claims against.
-/

/-! ## A293745.P6420230572419421321

`A293112(eq[6, A025581(n)])`
-/

namespace A293745.P6420230572419421321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293745.P6420230572419421321

/-! ## A293745.P688734671821237373

`A293112(A055999(n+4)-1)`
-/

namespace A293745.P688734671821237373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A055999 (n + 4) - 1).toNat

end

end A293745.P688734671821237373

/-! ## A293745.P14762545581106199463

`A293112(A052905(n+4)-2)`
-/

namespace A293745.P14762545581106199463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A052905 (n + 4) - 2).toNat

end

end A293745.P14762545581106199463

/-! ## A293745.P9465326756992582622

`A293112(A046691(n+5)-3)`
-/

namespace A293745.P9465326756992582622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A046691 (n + 5) - 3).toNat

end

end A293745.P9465326756992582622

/-! ## A293745.P4582012749494741406

`A293112(A000217(n+7)-7)`
-/

namespace A293745.P4582012749494741406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A000217 (n + 7) - 7).toNat

end

end A293745.P4582012749494741406

/-! ## A293745.P16461679069491312297

`A293112(eq[7, A004736(n+1)])`
-/

namespace A293745.P16461679069491312297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293745.P16461679069491312297

/-! ## A293745.P1639207064021619223

`A293112(A055998(n+4)+n+3)`
-/

namespace A293745.P1639207064021619223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A055998 (n + 4) + (n + 3 : ℤ)).toNat

end

end A293745.P1639207064021619223

/-! ## A293745.P9888148428156320902

`A293112(A025480(A028563(n+4))-1)`
-/

namespace A293745.P9888148428156320902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A025480 (A028563 (n + 4)).toNat - 1).toNat

end

end A293745.P9888148428156320902

/-! ## A293745.P2257407332563675994

`A293112(A167614(n+3)+A016789(n+2))`
-/

namespace A293745.P2257407332563675994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A167614 (n + 3) + A016789 (n + 2)).toNat

end

end A293745.P2257407332563675994

/-!
# A293746: Number of sets of nonempty words with a total of n letters over septenary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293746, there is no canonical definition to state claims against.
-/

/-! ## A293746.P3595901680771261571

`A293112(eq[7, A025581(n)])`
-/

namespace A293746.P3595901680771261571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293746.P3595901680771261571

/-! ## A293746.P7717253085171993710

`A293112(A055999(n+5)-2)`
-/

namespace A293746.P7717253085171993710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A055999 (n + 5) - 2).toNat

end

end A293746.P7717253085171993710

/-! ## A293746.P6539241172783753289

`A293112(A000217(n+8)-8)`
-/

namespace A293746.P6539241172783753289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A000217 (n + 8) - 8).toNat

end

end A293746.P6539241172783753289

/-! ## A293746.P2090202921601790912

`A293112(eq[8, A004736(n+1)])`
-/

namespace A293746.P2090202921601790912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293746.P2090202921601790912

/-! ## A293746.P11897689910168274059

`A293112(A167614(n+5)+A005843(n+2))`
-/

namespace A293746.P11897689910168274059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A167614 (n + 5) + A005843 (n + 2)).toNat

end

end A293746.P11897689910168274059

/-! ## A293746.P5567783240377624270

`A293112(A052905(n+3)+A004275(n+7))`
-/

namespace A293746.P5567783240377624270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A052905 (n + 3) + A004275 (n + 7)).toNat

end

end A293746.P5567783240377624270

/-! ## A293746.P15481152718106421714

`A293112(A016789(n+4)-A080956(n+6))`
-/

namespace A293746.P15481152718106421714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A016789 (n + 4) - A080956 (n + 6)).toNat

end

end A293746.P15481152718106421714

/-!
# A293747: Number of sets of nonempty words with a total of n letters over octonary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293747, there is no canonical definition to state claims against.
-/

/-! ## A293747.P9278816825383463943

`A293112(A052905(n+6)-4)`
-/

namespace A293747.P9278816825383463943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A052905 (n + 6) - 4).toNat

end

end A293747.P9278816825383463943

/-! ## A293747.P13891667974194692194

`A293112(A034856(n+8)-7)`
-/

namespace A293747.P13891667974194692194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A034856 (n + 8) - 7).toNat

end

end A293747.P13891667974194692194

/-! ## A293747.P7626181129749373155

`A293112(A000217(n+9)-9)`
-/

namespace A293747.P7626181129749373155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A000217 (n + 9) - 9).toNat

end

end A293747.P7626181129749373155

/-! ## A293747.P9060580088049164193

`A293112(A000096(n+7)+n+1)`
-/

namespace A293747.P9060580088049164193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A000096 (n + 7) + (n + 1 : ℤ)).toNat

end

end A293747.P9060580088049164193

/-! ## A293747.P8230181420231102636

`A293112(A000124(n+8)+n-1)`
-/

namespace A293747.P8230181420231102636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A000124 (n + 8) + ((n : ℤ) - 1)).toNat

end

end A293747.P8230181420231102636

/-! ## A293747.P2412820927781624242

`A293112(A046691(n+4)+A016777(n+6))`
-/

namespace A293747.P2412820927781624242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A046691 (n + 4) + A016777 (n + 6)).toNat

end

end A293747.P2412820927781624242

/-! ## A293747.P11077604126010044035

`A293112(A055998(n+8)-A033662(n+4))`
-/

namespace A293747.P11077604126010044035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A055998 (n + 8) - A033662 (n + 4)).toNat

end

end A293747.P11077604126010044035

/-!
# A293748: Number of sets of nonempty words with a total of n letters over nonary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293748, there is no canonical definition to state claims against.
-/

/-! ## A293748.P1337608606415254086

`A293112(A052905(n+7)-5)`
-/

namespace A293748.P1337608606415254086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A052905 (n + 7) - 5).toNat

end

end A293748.P1337608606415254086

/-! ## A293748.P12413046113271690280

`A293112(A000217(n+10)-10)`
-/

namespace A293748.P12413046113271690280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A000217 (n + 10) - 10).toNat

end

end A293748.P12413046113271690280

/-! ## A293748.P10244248492763878112

`A293112(A000124(n+10)-11)`
-/

namespace A293748.P10244248492763878112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A000124 (n + 10) - 11).toNat

end

end A293748.P10244248492763878112

/-! ## A293748.P15136152609053143273

`A293112(A161680(n+11)-10)`
-/

namespace A293748.P15136152609053143273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A161680 (n + 11) - 10).toNat

end

end A293748.P15136152609053143273

/-! ## A293748.P6528138948861800838

`A293112(A034856(n+8)+n+2)`
-/

namespace A293748.P6528138948861800838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A034856 (n + 8) + (n + 2 : ℤ)).toNat

end

end A293748.P6528138948861800838

/-!
# A293749: Number of sets of nonempty words with a total of n letters over denary alphabet such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293749, there is no canonical definition to state claims against.
-/

/-! ## A293749.P15583675564528904737

`A293112(A056000(n+7)-1)`
-/

namespace A293749.P15583675564528904737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A056000 (n + 7) - 1).toNat

end

end A293749.P15583675564528904737

/-! ## A293749.P8465348484714657461

`A293112(A000217(n+11)-11)`
-/

namespace A293749.P8465348484714657461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A000217 (n + 11) - 11).toNat

end

end A293749.P8465348484714657461

/-! ## A293749.P8519969473659420533

`A293112(A161680(n+12)-11)`
-/

namespace A293749.P8519969473659420533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A161680 (n + 12) - 11).toNat

end

end A293749.P8519969473659420533

/-! ## A293749.P17057929216874882767

`A293112(2*n+A166136(n+8)+4)`
-/

namespace A293749.P17057929216874882767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 ((2 * n : ℤ) + (A166136 (n + 8) + 4)).toNat

end

end A293749.P17057929216874882767

/-! ## A293749.P16175192990424781969

`A293112(2*n+A000217(n+9)+10)`
-/

namespace A293749.P16175192990424781969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 ((2 * n : ℤ) + (A000217 (n + 9) + 10)).toNat

end

end A293749.P16175192990424781969

/-! ## A293749.P5752809053165753031

`A293112(Δ[n²]+A000096(n+8)+10)`
-/

namespace A293749.P5752809053165753031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A000096 (n + 8) + 10)).toNat

end

end A293749.P5752809053165753031

/-! ## A293749.P8280053862917413188

`A293112(A052905(n+6)+A005408(n+7))`
-/

namespace A293749.P8280053862917413188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293112 (A052905 (n + 6) + A005408 (n + 7)).toNat

end

end A293749.P8280053862917413188

/-!
# A293750: a(n) is the total number of line segments that belong to the Dyck paths in the diagram of the symmetries of sigma described in A236104 and A237593 after n-th stage, with a(0) = 0.

The programs for A293750, there is no canonical definition to state claims against.
-/

/-! ## A293750.P10713892351843090692

`A294847(n)-2`
-/

namespace A293750.P10713892351843090692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294847 n - 2

end

end A293750.P10713892351843090692

/-! ## A293750.P10247677314629740212

`2*A294849(n)`
-/

namespace A293750.P10247677314629740212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A294849 n

end

end A293750.P10247677314629740212

/-! ## A293750.P76208430062442974

`2*(A294848(n)-1)`
-/

namespace A293750.P76208430062442974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A294848 n - 1)

end

end A293750.P76208430062442974

/-! ## A293750.P2015136278601138889

`A005843(A294849(n))`
-/

namespace A293750.P2015136278601138889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A294849 n).toNat

end

end A293750.P2015136278601138889

/-! ## A293750.P7333970825110102043

`A023444(A294847(n))`
-/

namespace A293750.P7333970825110102043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A294847 n).toNat

end

end A293750.P7333970825110102043

/-!
# A293751: Values of positive integer i such that floor(tan(-i)) = 1.

The programs for A293751, the canonical program `A293751.P1475450915144499424` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293751 has offset 1).

The definition of A293751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1040 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293751.P17164771493762112541

`eq[1, floor(tan(-n))]`
-/

namespace A293751.P17164771493762112541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (-(n : ℤ) : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293751.P17164771493762112541

namespace A293751

/-- `eq[1, floor(tan(-n))]` -/
def P17164771493762112541.Spec : Prop :=
  ∀ n, (P17164771493762112541.a n : ℤ) = A293751 (n + 1)

end A293751

/-! ## A293751.P14596748867031045391

`eq[1, -ceil(tan(n))]`
-/

namespace A293751.P14596748867031045391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -⌈Real.tan (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293751.P14596748867031045391

namespace A293751

/-- `eq[1, -ceil(tan(n))]` -/
def P14596748867031045391.Spec : Prop :=
  ∀ n, (P14596748867031045391.a n : ℤ) = A293751 (n + 1)

end A293751

/-! ## A293751.P1869359945231044515

`eq[0, ceil(tan(n))+1]`
-/

namespace A293751.P1869359945231044515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (n : ℝ)⌉ + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293751.P1869359945231044515

namespace A293751

/-- `eq[0, ceil(tan(n))+1]` -/
def P1869359945231044515.Spec : Prop :=
  ∀ n, (P1869359945231044515.a n : ℤ) = A293751 (n + 1)

theorem P1869359945231044515.correct : P1869359945231044515.Spec := by
  intro n
  simp only [A293751, Nat.add_sub_cancel, A293751.P1869359945231044515.f1, A293751.P1869359945231044515.f2, A293751.P1869359945231044515.a, A293751.P1475450915144499424.f1, A293751.P1475450915144499424.f2, A293751.P1475450915144499424.a, A195910, A195910.P3481932194148912844.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A293751

/-! ## A293751.P10677822494214365970

`eq[1, floor(tan(n))+3]`
-/

namespace A293751.P10677822494214365970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.tan (n : ℝ)⌋ + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293751.P10677822494214365970

namespace A293751

/-- `eq[1, floor(tan(n))+3]` -/
def P10677822494214365970.Spec : Prop :=
  ∀ n, (P10677822494214365970.a n : ℤ) = A293751 (n + 1)

end A293751

/-! ## A293751.P16415946067681403912

`eq[2, 1-ceil(tan(n))]`
-/

namespace A293751.P16415946067681403912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈Real.tan (n : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293751.P16415946067681403912

namespace A293751

/-- `eq[2, 1-ceil(tan(n))]` -/
def P16415946067681403912.Spec : Prop :=
  ∀ n, (P16415946067681403912.a n : ℤ) = A293751 (n + 1)

end A293751

/-! ## A293751.P11398265396482278044

`lt[1, 1/(tan(n)+2)]`
-/

namespace A293751.P11398265396482278044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / (Real.tan (n : ℝ) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A293751.P11398265396482278044

namespace A293751

/-- `lt[1, 1/(tan(n)+2)]` -/
def P11398265396482278044.Spec : Prop :=
  ∀ n, (P11398265396482278044.a n : ℤ) = A293751 (n + 1)

end A293751

/-! ## A293751.P1475450915144499424

`eq[0, A195910(n)+1]`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A293751

/-- `eq[0, A195910(n)+1]` -/
def P1475450915144499424.Spec : Prop :=
  ∀ n, (P1475450915144499424.a n : ℤ) = A293751 (n + 1)

theorem P1475450915144499424.correct : P1475450915144499424.Spec := by
  intro n
  simp only [A293751, Nat.add_sub_cancel]

end A293751

/-! ## A293751.P2220747616022700385

`lt[(A000503(n)+2)², 1]`
-/

namespace A293751.P2220747616022700385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000503 n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A293751.P2220747616022700385

namespace A293751

/-- `lt[(A000503(n)+2)², 1]` -/
def P2220747616022700385.Spec : Prop :=
  ∀ n, (P2220747616022700385.a n : ℤ) = A293751 (n + 1)

end A293751

/-! ## A293751.P15780059010164173708

`eq[A000503(n), A113679(n)]`
-/

namespace A293751.P15780059010164173708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000503 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113679 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293751.P15780059010164173708

namespace A293751

/-- `eq[A000503(n), A113679(n)]` -/
def P15780059010164173708.Spec : Prop :=
  ∀ n, (P15780059010164173708.a n : ℤ) = A293751 (n + 1)

end A293751

/-! ## A293751.P904286556901833439

`eq[A077594(n), A195910(n)]`
-/

namespace A293751.P904286556901833439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195910 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293751.P904286556901833439

namespace A293751

/-- `eq[A077594(n), A195910(n)]` -/
def P904286556901833439.Spec : Prop :=
  ∀ n, (P904286556901833439.a n : ℤ) = A293751 (n + 1)

end A293751

/-! ## A293751.P11190816899256133962

`eq[A195910(n), A260196(n)]`
-/

namespace A293751.P11190816899256133962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195910 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293751.P11190816899256133962

namespace A293751

/-- `eq[A195910(n), A260196(n)]` -/
def P11190816899256133962.Spec : Prop :=
  ∀ n, (P11190816899256133962.a n : ℤ) = A293751 (n + 1)

end A293751

/-!
# A293752: Numbers k such that c(k,0) = c(k,1), where c(k,d) = number of d's in the first k digits of the base-2 expansion of phi (the golden ratio, (1+sqrt(5))/2).

The programs for A293752, there is no canonical definition to state claims against.
-/

/-! ## A293752.P6966807885939843205

`2*A293753(n+1)`
-/

namespace A293752.P6966807885939843205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293753 (n + 1)

end

end A293752.P6966807885939843205

/-! ## A293752.P12048631115520629827

`A004277(A293753(n+1))`
-/

namespace A293752.P12048631115520629827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A293753 (n + 1)).toNat

end

end A293752.P12048631115520629827

/-! ## A293752.P10309096713163632022

`A004275(A293753(n+1)+1)`
-/

namespace A293752.P10309096713163632022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A293753 (n + 1) + 1).toNat

end

end A293752.P10309096713163632022

/-! ## A293752.P18216074755778054203

`A051755(A293753(n+1)+1)`
-/

namespace A293752.P18216074755778054203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051755 (A293753 (n + 1) + 1).toNat

end

end A293752.P18216074755778054203

/-! ## A293752.P16112093536716104192

`A058992(A293753(n+1)+2)`
-/

namespace A293752.P16112093536716104192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058992 (A293753 (n + 1) + 2).toNat

end

end A293752.P16112093536716104192

/-! ## A293752.P18176205374963984107

`A004280(A293753(n+1)+1)+1`
-/

namespace A293752.P18176205374963984107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004280 (A293753 (n + 1) + 1).toNat + 1

end

end A293752.P18176205374963984107

/-! ## A293752.P13422677717034617302

`A005408(A293753(n+1)-1)+1`
-/

namespace A293752.P13422677717034617302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A293753 (n + 1) - 1).toNat + 1

end

end A293752.P13422677717034617302

/-! ## A293752.P5193425478755235767

`A005843(A293753(n+1)+1)-2`
-/

namespace A293752.P5193425478755235767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A293753 (n + 1) + 1).toNat - 2

end

end A293752.P5193425478755235767

/-! ## A293752.P4155481288131861478

`A028310(A293753(n+1)/(1-1/2))`
-/

namespace A293752.P4155481288131861478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A293753 (n + 1) : ℚ) / (1 - (1 : ℚ) / 2))).toNat

end

end A293752.P4155481288131861478

/-!
# A293753: a(n) = (1/2)*A293752(n).

The programs for A293753, there is no canonical definition to state claims against.
-/

/-! ## A293753.P17014136923588752026

`1/2*A293752(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A293753.P17014136923588752026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A293752 (n + 1) : ℚ)

end

end A293753.P17014136923588752026

/-! ## A293753.P14755157847748472660

`A293752(n+1)/2`
-/

namespace A293753.P14755157847748472660
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293752 (n + 1) : ℚ) / 2

end

end A293753.P14755157847748472660

/-! ## A293753.P12426140288432833939

`A001281(A293752(n+1))`
-/

namespace A293753.P12426140288432833939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A293752 (n + 1)).toNat

end

end A293753.P12426140288432833939

/-! ## A293753.P11913827167938459702

`A004524(A293752(n+1)+1)`
-/

namespace A293753.P11913827167938459702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A293752 (n + 1) + 1).toNat

end

end A293753.P11913827167938459702

/-! ## A293753.P11593900387267290468

`A004526(A293752(n+1)+1)`
-/

namespace A293753.P11593900387267290468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A293752 (n + 1) + 1).toNat

end

end A293753.P11593900387267290468

/-! ## A293753.P16867975767113287809

`A028242(A293752(n+1)+1)`
-/

namespace A293753.P16867975767113287809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A293752 (n + 1) + 1).toNat

end

end A293753.P16867975767113287809

/-! ## A293753.P9410195501085714084

`A057979(A293752(n+1)+1)`
-/

namespace A293753.P9410195501085714084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (A293752 (n + 1) + 1).toNat

end

end A293753.P9410195501085714084

/-! ## A293753.P14244086983814300344

`A123108(A293752(n+1)+1)`
-/

namespace A293753.P14244086983814300344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A293752 (n + 1) + 1).toNat

end

end A293753.P14244086983814300344

/-! ## A293753.P15952250837073498416

`A000463(A293752(n+1)-1)`
-/

namespace A293753.P15952250837073498416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A293752 (n + 1) - 1).toNat

end

end A293753.P15952250837073498416

/-! ## A293753.P4652063460097009516

`A001057(A293752(n+1)-1)`
-/

namespace A293753.P4652063460097009516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A293752 (n + 1) - 1).toNat

end

end A293753.P4652063460097009516

/-!
# A293754: Numbers k such that c(k,0) < c(k,1), where c(k,d) = number of d's in the first k digits of the base-2 expansion of phi (the golden ratio, (1+sqrt(5))/2).

The programs for A293754, there is no canonical definition to state claims against.
-/

/-! ## A293754.P7134456750863464782

`round(∑[ratio[ratio[acot(n)]]])`
-/

namespace A293754.P7134456750863464782
noncomputable section

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) / f3 n

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) / f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293754.P7134456750863464782

/-!
# A293755: Numbers k such that c(k,0) > c(k,1), where c(k,d) = number of d's in the first k digits of the base-2 expansion of phi (the golden ratio, (1+sqrt(5))/2).

The programs for A293755, there is no canonical definition to state claims against.
-/

/-! ## A293755.P7722703518364518313

`eq[17, A305025(A007401(n+1))]`
-/

namespace A293755.P7722703518364518313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305025 (A007401 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293755.P7722703518364518313

/-! ## A293755.P10536077820290101690

`lt[A000203(A271326(n+1)), A123221(n)]`
-/

namespace A293755.P10536077820290101690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A271326 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123221 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293755.P10536077820290101690

/-!
# A293760: Numbers k such that c(k,0) = c(k,1), where c(k,d) = number of d's in the first k digits of the base-2 expansion of e.

The programs for A293760, there is no canonical definition to state claims against.
-/

/-! ## A293760.P2535558119335905551

`eq[A000007(n), A369900(n)]`
-/

namespace A293760.P2535558119335905551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369900 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293760.P2535558119335905551

/-! ## A293760.P14642805309344447645

`eq[A000038(n), A369900(n)]`
-/

namespace A293760.P14642805309344447645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369900 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293760.P14642805309344447645

/-! ## A293760.P5354274792682334570

`eq[A015087(n), A369900(n)]`
-/

namespace A293760.P5354274792682334570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015087 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369900 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293760.P5354274792682334570

/-! ## A293760.P13669132493685248867

`eq[A015283(n), A369900(n)]`
-/

namespace A293760.P13669132493685248867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369900 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293760.P13669132493685248867

/-! ## A293760.P15583029128882575645

`eq[A016124(n), A369900(n)]`
-/

namespace A293760.P15583029128882575645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016124 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369900 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293760.P15583029128882575645

/-!
# A293761: Numbers k such that (d(k), d(k+1)) = (0,0) in the base-2 digits d(i) of sqrt(2).

The programs for A293761, there is no canonical definition to state claims against.
-/

/-! ## A293761.P3475277454502765359

`A247631(n+1)+1`
-/

namespace A293761.P3475277454502765359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247631 (n + 1) + 1

end

end A293761.P3475277454502765359

/-! ## A293761.P6209779629850029509

`∩[A246339(n+1), A320985(n+1)]`
-/

namespace A293761.P6209779629850029509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246339 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293761.P6209779629850029509

/-! ## A293761.P15346220182858521573

`∩[A247635(n+1)+1, A320985(n+1)]`
-/

namespace A293761.P15346220182858521573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247635 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293761.P15346220182858521573

/-! ## A293761.P8791438745215879656

`A246339(eq[1, A246339(n+2)-A246339(n+1)]+1)`
-/

namespace A293761.P8791438745215879656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246339 (n + 2) - A246339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246339 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A293761.P8791438745215879656

/-! ## A293761.P2905634345909974263

`A020725(A247631(n+1))`
-/

namespace A293761.P2905634345909974263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A247631 (n + 1)).toNat

end

end A293761.P2905634345909974263

/-! ## A293761.P7331338943260181961

`eq[0, A004539(A004539(n+1)+n)]`
-/

namespace A293761.P7331338943260181961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A004539 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293761.P7331338943260181961

/-! ## A293761.P529911474282249896

`eq[0, and(5, A201125(n+1))]`
-/

namespace A293761.P529911474282249896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A201125 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293761.P529911474282249896

/-!
# A293762: Numbers k such that (d(k), d(k+1)) = (0,1) in the base-2 digits d(i) of sqrt(2).

The programs for A293762, there is no canonical definition to state claims against.
-/

/-! ## A293762.P7565490054289626798

`A247632(n+1)+1`
-/

namespace A293762.P7565490054289626798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247632 (n + 1) + 1

end

end A293762.P7565490054289626798

/-! ## A293762.P10016602984169890833

`∩[A092855(n+1), A246339(n+1)]`
-/

namespace A293762.P10016602984169890833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246339 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293762.P10016602984169890833

/-! ## A293762.P1168595421234067141

`A247636(Δ[n²])+1`
-/

namespace A293762.P1168595421234067141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247636 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A293762.P1168595421234067141

/-! ## A293762.P11954801838337010020

`A293763(n+1)+A233836(2*(n+1))`
-/

namespace A293762.P11954801838337010020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293763 (n + 1) + A233836 (2 * (n + 1))

end

end A293762.P11954801838337010020

/-! ## A293762.P4165656265686621698

`∩[A092855(n+1), A247636(n+1)+1]`
-/

namespace A293762.P4165656265686621698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247636 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293762.P4165656265686621698

/-! ## A293762.P12225326674706546933

`∩[A247636(n+1), A320985(n+1)]+1`
-/

namespace A293762.P12225326674706546933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A293762.P12225326674706546933

/-! ## A293762.P14240991136228619844

`∑[A233836(2*n+1)+A233836(2*(n+1))]`
-/

namespace A293762.P14240991136228619844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233836 (2 * n + 1) + A233836 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293762.P14240991136228619844

/-! ## A293762.P5868683583634982979

`A020725(A247632(n+1))`
-/

namespace A293762.P5868683583634982979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A247632 (n + 1)).toNat

end

end A293762.P5868683583634982979

/-! ## A293762.P3786185975611417707

`eq[1, Δ[A004539(n+1)]]+1`
-/

namespace A293762.P3786185975611417707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A293762.P3786185975611417707

/-! ## A293762.P5443076862747965485

`A023443(comp[A004539(n+2)+n])+2`
-/

namespace A293762.P5443076862747965485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 2) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 2

end

end A293762.P5443076862747965485

/-! ## A293762.P4587062872881921646

`lt[A004539(A028310(n)), A004539(n+1)]`
-/

namespace A293762.P4587062872881921646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293762.P4587062872881921646

/-!
# A293763: Numbers k such that (d(k), d(k+1)) = (1,0) in the base-2 digits d(i) of sqrt(2).

The programs for A293763, there is no canonical definition to state claims against.
-/

/-! ## A293763.P8201890251584146122

`∩[A004713(n+1), A320985(n+1)]`
-/

namespace A293763.P8201890251584146122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293763.P8201890251584146122

/-! ## A293763.P1451241863795807881

`record[A004713(n+1)%(1-A004713(n+2))]`
-/

namespace A293763.P1451241863795807881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004713 (n + 1)) (1 - A004713 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293763.P1451241863795807881

/-! ## A293763.P6913152223656892392

`A247636(A004277(n))+A057427(n)`
-/

namespace A293763.P6913152223656892392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247636 (A004277 n).toNat + A057427 n

end

end A293763.P6913152223656892392

/-! ## A293763.P2404289836034805153

`A293762(n+1)-A233836(2*(n+1))`
-/

namespace A293763.P2404289836034805153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293762 (n + 1) - A233836 (2 * (n + 1))

end

end A293763.P2404289836034805153

/-! ## A293763.P3567015927498806281

`lt[Δ[A004539(abs(1-n)+1)]+n+1, n+1]`
-/

namespace A293763.P3567015927498806281
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n + 1 : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A293763.P3567015927498806281

/-! ## A293763.P1128779839652675206

`filter[A320985(n+1), A004539(#)]`
-/

namespace A293763.P1128779839652675206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A004539 (f1 j).toNat = 1) n)

end

end A293763.P1128779839652675206

/-! ## A293763.P455631850974913924

`eq[char[A293761(n+1)], A004539(n+1)]`
-/

namespace A293763.P455631850974913924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293761 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A293763.P455631850974913924

/-! ## A293763.P16976818574519551258

`record[(n+1)*(A004539(n+1)-A004539(n+2))]`
-/

namespace A293763.P16976818574519551258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004539 (n + 1) - A004539 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293763.P16976818574519551258

/-! ## A293763.P13603809084947798859

`eq[1, A005117(4*(Δ[A004539(n+1)]+1)+1)]+1`
-/

namespace A293763.P13603809084947798859
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (4 * (f3 (n + 1) - f3 n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A293763.P13603809084947798859

/-! ## A293763.P12013636224522524911

`lt[A004539(n+1), A004539(A028310(n))]`
-/

namespace A293763.P12013636224522524911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293763.P12013636224522524911

/-! ## A293763.P18143723893993536744

`lt[A004539(n+1), A004539(A004539(n+1)+n)]`
-/

namespace A293763.P18143723893993536744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A004539 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293763.P18143723893993536744

/-!
# A293764: Numbers k such that (d(k), d(k+1)) = (1,1) in the base-2 digits d(i) of sqrt(2).

The programs for A293764, there is no canonical definition to state claims against.
-/

/-! ## A293764.P3472356835361293900

`A247634(n+1)+1`
-/

namespace A293764.P3472356835361293900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247634 (n + 1) + 1

end

end A293764.P3472356835361293900

/-! ## A293764.P17453450562354704130

`∩[A004713(n+1), A092855(n+1)]`
-/

namespace A293764.P17453450562354704130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293764.P17453450562354704130

/-! ## A293764.P2261541200800643078

`A004713(eq[1, Δ[A004713(n+1)]]+1)`
-/

namespace A293764.P2261541200800643078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A293764.P2261541200800643078

/-! ## A293764.P7666244492616062118

`∩[A092855(n+1), A247635(n+1)+1]`
-/

namespace A293764.P7666244492616062118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247635 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293764.P7666244492616062118

/-! ## A293764.P15050579056897077347

`∩[A004713(n+1), A004713(n+2)-1]`
-/

namespace A293764.P15050579056897077347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293764.P15050579056897077347

/-! ## A293764.P3829475566248201584

`A004713(eq[1, ratio[n-A004713(n+1)]]+1)`
-/

namespace A293764.P3829475566248201584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004713 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A293764.P3829475566248201584

/-! ## A293764.P1414376755030775777

`A004713(eq[1, A004713(n+2)-A004713(n+1)]+1)`
-/

namespace A293764.P1414376755030775777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (n + 2) - A004713 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A293764.P1414376755030775777

/-! ## A293764.P11421626878127073878

`A004713(eq[1, A004713(n+2)%A004713(n+1)]+1)`
-/

namespace A293764.P11421626878127073878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004713 (n + 2)) (A004713 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004713 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A293764.P11421626878127073878

/-! ## A293764.P12781471637867619848

`A020725(A247634(n+1))`
-/

namespace A293764.P12781471637867619848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A247634 (n + 1)).toNat

end

end A293764.P12781471637867619848

/-! ## A293764.P18142836257284161540

`filter[A092855(n+1), A004539(#)]`
-/

namespace A293764.P18142836257284161540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092855 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A004539 (f1 j).toNat = 1) n)

end

end A293764.P18142836257284161540

/-! ## A293764.P11285435871606579545

`eq[char[A004539(n+1)+n], A004539(n+1)]`
-/

namespace A293764.P11285435871606579545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A293764.P11285435871606579545

/-!
# A293765: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + 2, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A293765, there is no canonical definition to state claims against.
-/

/-! ## A293765.P3635453378707591250

`A295947(n)-1`
-/

namespace A293765.P3635453378707591250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295947 n - 1

end

end A293765.P3635453378707591250

/-! ## A293765.P10921422975963342887

`(A295947(n)+log2(1/2))*A020985(n)²`
-/

namespace A293765.P10921422975963342887
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A295947 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A020985 n ^ 2 : ℝ)

end

end A293765.P10921422975963342887

/-! ## A293765.P5297319641880194817

`(A295947(n)+log2(1/2))*A008836(n+1)²`
-/

namespace A293765.P5297319641880194817
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A295947 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A008836 (n + 1) ^ 2 : ℝ)

end

end A293765.P5297319641880194817

/-! ## A293765.P13198206384970472493

`A330025(A017353(n))+A295947(n)`
-/

namespace A293765.P13198206384970472493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A017353 n).toNat + A295947 n

end

end A293765.P13198206384970472493

/-! ## A293765.P8923795636334140114

`A321800(A332550(n))+A295947(n)`
-/

namespace A293765.P8923795636334140114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A332550 n).toNat + A295947 n

end

end A293765.P8923795636334140114

/-! ## A293765.P17328040333880475431

`A332732(A000040(n+1))+A295947(n)`
-/

namespace A293765.P17328040333880475431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332732 (A000040 (n + 1)).toNat + A295947 n

end

end A293765.P17328040333880475431

/-! ## A293765.P7531866849943808028

`A332732(A332768(n+1))+A295947(n)`
-/

namespace A293765.P7531866849943808028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332732 (A332768 (n + 1)).toNat + A295947 n

end

end A293765.P7531866849943808028

/-! ## A293765.P1412205502252270349

`A001489(n)+A295947(n)+A023443(n)`
-/

namespace A293765.P1412205502252270349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001489 n + (A295947 n + A023443 n)

end

end A293765.P1412205502252270349

/-! ## A293765.P10619361998398977519

`(A295947(n)+log2(1/2))*val(A001317(n), 3)!`
-/

namespace A293765.P10619361998398977519
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A295947 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (Nat.factorial (SequenceMachineLib.valuation (A001317 n).toNat 3) : ℝ)

end

end A293765.P10619361998398977519

/-! ## A293765.P5404679506677703646

`(A295947(n)+log2(1/2))*A057427(A007318(n))`
-/

namespace A293765.P5404679506677703646
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A295947 n : ℝ) + Real.logb 2 ((1 : ℚ) / 2 : ℝ)) * (A057427 (A007318 n).toNat : ℝ)

end

end A293765.P5404679506677703646

/-! ## A293765.P811941884503399216

`A321317(A050603(n²))+A295947(n)`
-/

namespace A293765.P811941884503399216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321317 (A050603 (n ^ 2)).toNat + A295947 n

end

end A293765.P811941884503399216

/-!
# A293766: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) + 3, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A293766, there is no canonical definition to state claims against.
-/

/-! ## A293766.P16556019441685977500

`A295954(n)-1`
-/

namespace A293766.P16556019441685977500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295954 n - 1

end

end A293766.P16556019441685977500

/-! ## A293766.P15871536153339014686

`A330025(A017353(n))+A295954(n)`
-/

namespace A293766.P15871536153339014686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A017353 n).toNat + A295954 n

end

end A293766.P15871536153339014686

/-! ## A293766.P7380435697639670826

`A321800(A050603(n))+A295954(n)`
-/

namespace A293766.P7380435697639670826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A050603 n).toNat + A295954 n

end

end A293766.P7380435697639670826

/-! ## A293766.P4954316724785468963

`A359551(A001359(n+1))+A295954(n)`
-/

namespace A293766.P4954316724785468963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359551 (A001359 (n + 1)).toNat + A295954 n

end

end A293766.P4954316724785468963

/-! ## A293766.P11862231437040546142

`A359551(A140633(n+1))+A295954(n)`
-/

namespace A293766.P11862231437040546142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359551 (A140633 (n + 1)).toNat + A295954 n

end

end A293766.P11862231437040546142

/-! ## A293766.P17816949553127022443

`A325970(A113601(n+1))+A295954(n)`
-/

namespace A293766.P17816949553127022443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325970 (A113601 (n + 1)).toNat + A295954 n

end

end A293766.P17816949553127022443

/-! ## A293766.P15916431822877374332

`A321800(A151934(n))+A295954(n)`
-/

namespace A293766.P15916431822877374332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A151934 n).toNat + A295954 n

end

end A293766.P15916431822877374332

/-!
# A293767: Solution of the complementary equation a(n) = a(n-1) + a(n-2) + b(n-1) - 1, where a(0) = 1, a(1) = 3, b(0) = 2, b(1) = 4.

The programs for A293767, there is no canonical definition to state claims against.
-/

/-! ## A293767.P1695979571207999035

`A294541(n)+A024000(A212804(n))`
-/

namespace A293767.P1695979571207999035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294541 n + A024000 (A212804 n).toNat

end

end A293767.P1695979571207999035

/-! ## A293767.P14723886069111419484

`A293076(n)+A004526(A006355(n))`
-/

namespace A293767.P14723886069111419484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293076 n + A004526 (A006355 n).toNat

end

end A293767.P14723886069111419484

/-! ## A293767.P9775362191816151203

`A293076(n)+A029578(A163733(n+1))`
-/

namespace A293767.P9775362191816151203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293076 n + A029578 (A163733 (n + 1)).toNat

end

end A293767.P9775362191816151203

/-! ## A293767.P7091656685185277579

`A004526(A006355(n))+A294541(n)+A024000(A006355(n))`
-/

namespace A293767.P7091656685185277579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A006355 n).toNat + (A294541 n + A024000 (A006355 n).toNat)

end

end A293767.P7091656685185277579

/-! ## A293767.P17334663214717140619

`A298560(A179865(n+1))+A293076(n)`
-/

namespace A293767.P17334663214717140619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298560 (A179865 (n + 1)).toNat + A293076 n

end

end A293767.P17334663214717140619

/-!
# A293771: Minimum number of steps needed to compute n using a machine that can read, write and add starting with the number 1.

The programs for A293771, there is no canonical definition to state claims against.
-/

/-! ## A293771.P7099766638115364641

`A091333(n+1)%A109413(n)`
-/

namespace A293771.P7099766638115364641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091333 (n + 1)) (A109413 n)

end

end A293771.P7099766638115364641

/-! ## A293771.P1434358031897742336

`ceil(A005245((n+1)²)/2)%A109413(n)`
-/

namespace A293771.P1434358031897742336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A005245 ((n + 1) ^ 2) : ℚ) / 2⌉ (A109413 n)

end

end A293771.P1434358031897742336

/-! ## A293771.P4709173566867563536

`ceil(A213923((n+1)²)/4)%A109413(n)`
-/

namespace A293771.P4709173566867563536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(A213923 ((n + 1) ^ 2) : ℚ) / 4⌉ (A109413 n)

end

end A293771.P4709173566867563536

/-! ## A293771.P2842700128309258521

`A091333(n+1)-A000007(A007608(n))`
-/

namespace A293771.P2842700128309258521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091333 (n + 1) - A000007 (A007608 n).toNat

end

end A293771.P2842700128309258521

/-! ## A293771.P17810998743887834732

`A065033(A005245((n+1)²))%A109413(n)`
-/

namespace A293771.P17810998743887834732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A005245 ((n + 1) ^ 2)).toNat) (A109413 n)

end

end A293771.P17810998743887834732

/-! ## A293771.P16056189850853948770

`A008621(A213923((n+1)²))%A109413(n)`
-/

namespace A293771.P16056189850853948770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008621 (A213923 ((n + 1) ^ 2)).toNat) (A109413 n)

end

end A293771.P16056189850853948770

/-! ## A293771.P11320567049788567609

`(round(A005245((n+1)²)/2)%A000040(n+1))%A109413(n)`
-/

namespace A293771.P11320567049788567609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod (SequenceMachineLib.roundAway ((A005245 ((n + 1) ^ 2) : ℚ) / 2)) (A000040 (n + 1))) (A109413 n)

end

end A293771.P11320567049788567609

/-!
# A293774: Number of permutations of length n sortable by 3 passes through a pop-stack.

The programs for A293774, the canonical program `A293774.P16303586779055971358` is in `Seq.B000.C041`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293774 has offset 0).

The definition of A293774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A293774.P16303586779055971358

`ogf((1-x-2x^2-6x^3-6x^4-8x^5-11x^6-5x^7-2x^8-4x^9-2x^10)/(1-2x-2x^2-6x^3-8x^4-16x^5-22x^6-10x^7-4x^8-8x^9-4x^10))`

The canonical program, it is in `Seq.B000.C041`.
-/

namespace A293774

/-- `ogf((1-x-2x^2-6x^3-6x^4-8x^5-11x^6-5x^7-2x^8-4x^9-2x^10)/(1-2x-2x^2-6x^3-8x^4-16x^5-22x^6-10x^7-4x^8-8x^9-4x^10))` -/
def P16303586779055971358.Spec : Prop :=
  ∀ n, P16303586779055971358.a n = A293774 n

theorem P16303586779055971358.correct : P16303586779055971358.Spec := by
  intro n
  simp only [A293774]

end A293774

/-! ## A293774.P3177113120064054720

`A354166(∑[A319946(n)])`
-/

namespace A293774.P3177113120064054720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354166 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A293774.P3177113120064054720

namespace A293774

/-- `A354166(∑[A319946(n)])` -/
def P3177113120064054720.Spec : Prop :=
  ∀ n, P3177113120064054720.a n = A293774 n

end A293774

/-! ## A293774.P5950439201560248510

`A265650(A052536(n)-∑[n])`
-/

namespace A293774.P5950439201560248510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265650 (A052536 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A293774.P5950439201560248510

namespace A293774

/-- `A265650(A052536(n)-∑[n])` -/
def P5950439201560248510.Spec : Prop :=
  ∀ n, P5950439201560248510.a n = A293774 n

end A293774

/-!
# A293775: Number of permutations of length n sortable by 4 passes through a pop-stack.

The programs for A293775, there is no canonical definition to state claims against.
-/

/-! ## A293775.P9000360040147654204

`n*a(n-1)-A028382(a(n-2))` with `a(0)=1, a(1)=1`
-/

namespace A293775.P9000360040147654204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  (n : ℤ) * a (n - 1) - A028382 (a (n - 2)).toNat

end

end A293775.P9000360040147654204

/-! ## A293775.P9460953129533823072

`n!-A014376(A265036(n))`
-/

namespace A293775.P9460953129533823072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A014376 (A265036 n).toNat

end

end A293775.P9460953129533823072

/-! ## A293775.P9811590991887319778

`A000142(n)-A014376(A001405(n))`
-/

namespace A293775.P9811590991887319778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A014376 (A001405 n).toNat

end

end A293775.P9811590991887319778

/-!
# A293777: Number of centrally symmetric diagonal Latin squares of order n with the first row in ascending order.

The programs for A293777, there is no canonical definition to state claims against.
-/

/-! ## A293777.P15807271363702287717

`A293778(n+1)/(n+1)!`
-/

namespace A293777.P15807271363702287717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A293778 (n + 1) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A293777.P15807271363702287717

/-!
# A293778: Number of centrally symmetric diagonal Latin squares of order n.

The programs for A293778, there is no canonical definition to state claims against.
-/

/-! ## A293778.P933583339620631460

`A293777(n+1)*(n+1)!`
-/

namespace A293778.P933583339620631460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293777 (n + 1) * (Nat.factorial (n + 1) : ℤ)

end

end A293778.P933583339620631460

/-! ## A293778.P14331552738197050344

`Δ[A007489(n)]*A293777(n+1)`
-/

namespace A293778.P14331552738197050344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A293777 (n + 1)

end

end A293778.P14331552738197050344

/-! ## A293778.P15950929322734824822

`∏[A005555(n)]*A293777(n+1)`
-/

namespace A293778.P15950929322734824822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005555 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A293777 (n + 1)

end

end A293778.P15950929322734824822

/-! ## A293778.P8140944874269525803

`∏[A077168(n)]*A293777(n+1)`
-/

namespace A293778.P8140944874269525803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A293777 (n + 1)

end

end A293778.P8140944874269525803

/-! ## A293778.P9257759188517881339

`∏[A082743(n)]*A293777(n+1)`
-/

namespace A293778.P9257759188517881339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082743 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A293777 (n + 1)

end

end A293778.P9257759188517881339

/-!
# A293780: Where records occur in A008479.

The programs for A293780, there is no canonical definition to state claims against.
-/

/-! ## A293780.P11647504590351802499

`A293781(n)+a(n-1)` with `a(0)=1`
-/

namespace A293780.P11647504590351802499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A293781 n + a (n - 1)

end

end A293780.P11647504590351802499

/-! ## A293780.P14976526192478368151

`∑[A293781(abs(1-n)+1)]-3`
-/

namespace A293780.P14976526192478368151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293781 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 3

end

end A293780.P14976526192478368151

/-! ## A293780.P6221977066684594253

`∑[A293781(A028310(n))%A022115(n)]`
-/

namespace A293780.P6221977066684594253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293781 (A028310 n).toNat) (A022115 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293780.P6221977066684594253

/-! ## A293780.P9005346592301297212

`A092486(∑[A293781(n+1)])-A293781(n+1)`
-/

namespace A293780.P9005346592301297212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092486 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A293781 (n + 1)

end

end A293780.P9005346592301297212

/-! ## A293780.P10398352611513359808

`A014681(∑[A293781(n+1)])-A293781(n+1)`
-/

namespace A293780.P10398352611513359808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A293781 (n + 1)

end

end A293780.P10398352611513359808

/-!
# A293781: First differences of A293780.

The programs for A293781, there is no canonical definition to state claims against.
-/

/-! ## A293781.P3996358843971042439

`Δ[A293780(n+1)]`
-/

namespace A293781.P3996358843971042439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293780 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293781.P3996358843971042439

/-! ## A293781.P14519680600842428736

`Δ[record[A293780(A203814(n))]]`
-/

namespace A293781.P14519680600842428736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293780 (A203814 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293781.P14519680600842428736

/-! ## A293781.P16214191972474244576

`Δ[record[A293780(A331303(n))]]`
-/

namespace A293781.P16214191972474244576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293780 (A331303 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293781.P16214191972474244576

/-! ## A293781.P16161562592408730099

`A293780(n+2)-A293780(n+1)`
-/

namespace A293781.P16161562592408730099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293780 (n + 2) - A293780 (n + 1)

end

end A293781.P16161562592408730099

/-! ## A293781.P8234825608707635155

`Δ[record[A293780(A065648(n))]]`
-/

namespace A293781.P8234825608707635155
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293780 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293781.P8234825608707635155

/-! ## A293781.P89628926093736991

`Δ[record[A293780(A134478(n))]]`
-/

namespace A293781.P89628926093736991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293780 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A293781.P89628926093736991

/-!
# A293784: Number of permutations of length n sortable by 6 passes through a pop-stack.

The programs for A293784, there is no canonical definition to state claims against.
-/

/-! ## A293784.P17861194602791526318

`xor(A000142(n), A261517(A002113(n+4)))`
-/

namespace A293784.P17861194602791526318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000142 n) (A261517 (A002113 (n + 4)).toNat)

end

end A293784.P17861194602791526318

/-!
# A293785: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f. exp(Sum_{j>=1} j^(k-1)*x^j).

The programs for A293785, there is no canonical definition to state claims against.
-/

/-! ## A293785.P16621930494277845463

`A156882(n)%A183226(A156882(n))`
-/

namespace A293785.P16621930494277845463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156882 n) (A183226 (A156882 n).toNat)

end

end A293785.P16621930494277845463

/-! ## A293785.P16738299887284205004

`A111528(n)+A025469(A022345(n))`
-/

namespace A293785.P16738299887284205004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 n + A025469 (A022345 n).toNat

end

end A293785.P16738299887284205004

/-! ## A293785.P2146029239079454628

`A111528(n)+A051767(A028326(n))`
-/

namespace A293785.P2146029239079454628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 n + A051767 (A028326 n).toNat

end

end A293785.P2146029239079454628

/-! ## A293785.P4646255786601289817

`A111528(n)+A016389(A086645(n))`
-/

namespace A293785.P4646255786601289817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 n + A016389 (A086645 n).toNat

end

end A293785.P4646255786601289817

/-! ## A293785.P9124558345491831303

`A111528(n)+A025466(A154229(n))`
-/

namespace A293785.P9124558345491831303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111528 n + A025466 (A154229 n).toNat

end

end A293785.P9124558345491831303

/-!
# A293786: a(n) = n! * [x^n] exp(Sum_{j>=1} j^(n-1)*x^j).

The programs for A293786, there is no canonical definition to state claims against.
-/

/-! ## A293786.P7902049353660706218

`A293785(∑[4*n])`
-/

namespace A293786.P7902049353660706218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293785 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A293786.P7902049353660706218

/-! ## A293786.P18398101069309915630

`or(1, A293785(A046092(n)))`
-/

namespace A293786.P18398101069309915630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293785 (A046092 n).toNat)

end

end A293786.P18398101069309915630

/-! ## A293786.P17521152115558323093

`or(1, A293785(A106232(n+1)))`
-/

namespace A293786.P17521152115558323093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A293785 (A106232 (n + 1)).toNat)

end

end A293786.P17521152115558323093

/-! ## A293786.P16054737486586599181

`A293785(A046092(n))+A025469(n)`
-/

namespace A293786.P16054737486586599181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293785 (A046092 n).toNat + A025469 n

end

end A293786.P16054737486586599181

/-! ## A293786.P9491745450980087114

`A014963(A000010(33*(n+1)))*A293785(A106232(n+1))`
-/

namespace A293786.P9491745450980087114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000010 (33 * (n + 1))).toNat * A293785 (A106232 (n + 1)).toNat

end

end A293786.P9491745450980087114

/-!
# A293787: Numbers k such that (d(k), d(k+1)) = (0,0) in the base-2 digits d(i) of sqrt(3).

The programs for A293787, the canonical program `A293787.P5712687042617370225` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293787 has offset 1).

The definition of A293787 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2454 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293787.P5712687042617370225

`eq[0, A004547(A004547(n+1)+n)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293787

/-- `eq[0, A004547(A004547(n+1)+n)]` -/
def P5712687042617370225.Spec : Prop :=
  ∀ n, (P5712687042617370225.a n : ℤ) = A293787 (n + 1)

theorem P5712687042617370225.correct : P5712687042617370225.Spec := by
  intro n
  simp only [A293787, Nat.add_sub_cancel]

end A293787

/-! ## A293787.P10858958351297936452

`lt[A004547(n+1)+A004547(A233583(n+1)), 1]`
-/

namespace A293787.P10858958351297936452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1) + A004547 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A293787.P10858958351297936452

namespace A293787

/-- `lt[A004547(n+1)+A004547(A233583(n+1)), 1]` -/
def P10858958351297936452.Spec : Prop :=
  ∀ n, (P10858958351297936452.a n : ℤ) = A293787 (n + 1)

end A293787

/-! ## A293787.P11158282943257593487

`eq[1, A293325(n)%4]`
-/

namespace A293787.P11158282943257593487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293325 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293787.P11158282943257593487

namespace A293787

/-- `eq[1, A293325(n)%4]` -/
def P11158282943257593487.Spec : Prop :=
  ∀ n, (P11158282943257593487.a n : ℤ) = A293787 (n + 1)

end A293787

/-! ## A293787.P7993182858444896574

`eq[and(3, A094386(n+1)), 0]`
-/

namespace A293787.P7993182858444896574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A094386 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A293787.P7993182858444896574

namespace A293787

/-- `eq[and(3, A094386(n+1)), 0]` -/
def P7993182858444896574.Spec : Prop :=
  ∀ n, (P7993182858444896574.a n : ℤ) = A293787 (n + 1)

end A293787

/-! ## A293787.P14417468756644867685

`eq[and(3, A293325(n)), A158388(n)]`
-/

namespace A293787.P14417468756644867685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A293325 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293787.P14417468756644867685

namespace A293787

/-- `eq[and(3, A293325(n)), A158388(n)]` -/
def P14417468756644867685.Spec : Prop :=
  ∀ n, (P14417468756644867685.a n : ℤ) = A293787 (n + 1)

end A293787

/-! ## A293787.P7943739752049787568

`eq[A094386(n+1)%4, A000038(n)]`
-/

namespace A293787.P7943739752049787568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094386 (n + 1)) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293787.P7943739752049787568

namespace A293787

/-- `eq[A094386(n+1)%4, A000038(n)]` -/
def P7943739752049787568.Spec : Prop :=
  ∀ n, (P7943739752049787568.a n : ℤ) = A293787 (n + 1)

end A293787

/-!
# A293788: Numbers k such that (d(k), d(k+1)) = (0,1) in the base-2 digits d(i) of sqrt(3).

The programs for A293788, the canonical program `A293788.P13888126167259245464` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293788 has offset 1).

The definition of A293788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2488 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293788.P13888126167259245464

`eq[3, A004556(a(n-1)+1)+A004547(n+1)]` with `a(0)=1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293788

/-- `eq[3, A004556(a(n-1)+1)+A004547(n+1)]` -/
def P13888126167259245464.Spec : Prop :=
  ∀ n, (P13888126167259245464.a n : ℤ) = A293788 (n + 1)

theorem P13888126167259245464.correct : P13888126167259245464.Spec := by
  intro n
  simp only [A293788, Nat.add_sub_cancel]

end A293788

/-! ## A293788.P14947145792534871394

`eq[1, A004547(n+1)*A004549(a(n-1)+1)]` with `a(0)=3`
-/

namespace A293788.P14947145792534871394
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A004547 (n + 1) * A004549 (f2 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293788.P14947145792534871394

namespace A293788

/-- `eq[1, A004547(n+1)*A004549(a(n-1)+1)]` -/
def P14947145792534871394.Spec : Prop :=
  ∀ n, (P14947145792534871394.a n : ℤ) = A293788 (n + 1)

end A293788

/-! ## A293788.P13824153941256364337

`eq[1, A004575(a(n-1)*A004547(n+1)+1)]` with `a(0)=3`
-/

namespace A293788.P13824153941256364337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A004575 (f2 (n - 1) * A004547 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293788.P13824153941256364337

namespace A293788

/-- `eq[1, A004575(a(n-1)*A004547(n+1)+1)]` -/
def P13824153941256364337.Spec : Prop :=
  ∀ n, (P13824153941256364337.a n : ℤ) = A293788 (n + 1)

end A293788

/-! ## A293788.P1003155446483855607

`eq[2, A004547(n+1)*A323704(a(n-1)+1)]` with `a(0)=3`
-/

namespace A293788.P1003155446483855607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A004547 (n + 1) * A323704 (f2 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293788.P1003155446483855607

namespace A293788

/-- `eq[2, A004547(n+1)*A323704(a(n-1)+1)]` -/
def P1003155446483855607.Spec : Prop :=
  ∀ n, (P1003155446483855607.a n : ℤ) = A293788 (n + 1)

end A293788

/-! ## A293788.P2211372971625090463

`lt[A004547(A028310(n)), A004547(n+1)]`
-/

namespace A293788.P2211372971625090463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293788.P2211372971625090463

namespace A293788

/-- `lt[A004547(A028310(n)), A004547(n+1)]` -/
def P2211372971625090463.Spec : Prop :=
  ∀ n, (P2211372971625090463.a n : ℤ) = A293788 (n + 1)

end A293788

/-! ## A293788.P995093875821819347

`lt[A004547(A233583(n+1)), A004547(n+1)]`
-/

namespace A293788.P995093875821819347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293788.P995093875821819347

namespace A293788

/-- `lt[A004547(A233583(n+1)), A004547(n+1)]` -/
def P995093875821819347.Spec : Prop :=
  ∀ n, (P995093875821819347.a n : ℤ) = A293788 (n + 1)

end A293788

/-! ## A293788.P6598980702398446866

`eq[A094386(n+1)%4, A158388(n)]`
-/

namespace A293788.P6598980702398446866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094386 (n + 1)) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293788.P6598980702398446866

namespace A293788

/-- `eq[A094386(n+1)%4, A158388(n)]` -/
def P6598980702398446866.Spec : Prop :=
  ∀ n, (P6598980702398446866.a n : ℤ) = A293788 (n + 1)

end A293788

/-!
# A293789: Numbers k such that (d(k), d(k+1)) = (1,0) in the base-2 digits d(i) of sqrt(3).

The programs for A293789, the canonical program `A293789.P10665216587015611791` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293789 has offset 1).

The definition of A293789 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2489 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293789.P2792934421121563972

`eq[char[A293787(n+1)], A004547(n+1)]`
-/

namespace A293789.P2792934421121563972
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293787 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A293789.P2792934421121563972

namespace A293789

/-- `eq[char[A293787(n+1)], A004547(n+1)]` -/
def P2792934421121563972.Spec : Prop :=
  ∀ n, (P2792934421121563972.a n : ℤ) = A293789 (n + 1)

end A293789

/-! ## A293789.P10665216587015611791

`lt[A004547(n+1), A004547(A028310(n))]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293789

/-- `lt[A004547(n+1), A004547(A028310(n))]` -/
def P10665216587015611791.Spec : Prop :=
  ∀ n, (P10665216587015611791.a n : ℤ) = A293789 (n + 1)

theorem P10665216587015611791.correct : P10665216587015611791.Spec := by
  intro n
  simp only [A293789, Nat.add_sub_cancel]

end A293789

/-! ## A293789.P9985556632591943830

`lt[A004547(n+1), A004547(A004547(n+1)+n)]`
-/

namespace A293789.P9985556632591943830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (A004547 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293789.P9985556632591943830

namespace A293789

/-- `lt[A004547(n+1), A004547(A004547(n+1)+n)]` -/
def P9985556632591943830.Spec : Prop :=
  ∀ n, (P9985556632591943830.a n : ℤ) = A293789 (n + 1)

end A293789

/-! ## A293789.P9683203909959945776

`lt[A004547(n+1), A004547(A233583(n+1))]`
-/

namespace A293789.P9683203909959945776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A293789.P9683203909959945776

namespace A293789

/-- `lt[A004547(n+1), A004547(A233583(n+1))]` -/
def P9683203909959945776.Spec : Prop :=
  ∀ n, (P9683203909959945776.a n : ℤ) = A293789 (n + 1)

end A293789

/-! ## A293789.P12030010036623901582

`eq[3, A293325(n)%4]`
-/

namespace A293789.P12030010036623901582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293325 n) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293789.P12030010036623901582

namespace A293789

/-- `eq[3, A293325(n)%4]` -/
def P12030010036623901582.Spec : Prop :=
  ∀ n, (P12030010036623901582.a n : ℤ) = A293789 (n + 1)

end A293789

/-! ## A293789.P18131867929962947363

`eq[1, val(A094386(n+1), 2)]`
-/

namespace A293789.P18131867929962947363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A094386 (n + 1)).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293789.P18131867929962947363

namespace A293789

/-- `eq[1, val(A094386(n+1), 2)]` -/
def P18131867929962947363.Spec : Prop :=
  ∀ n, (P18131867929962947363.a n : ℤ) = A293789 (n + 1)

end A293789

/-! ## A293789.P7263313418831135543

`eq[2, gcd(A000079(n), A094386(n+1))]`
-/

namespace A293789.P7263313418831135543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A094386 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293789.P7263313418831135543

namespace A293789

/-- `eq[2, gcd(A000079(n), A094386(n+1))]` -/
def P7263313418831135543.Spec : Prop :=
  ∀ n, (P7263313418831135543.a n : ℤ) = A293789 (n + 1)

end A293789

/-!
# A293790: Numbers k such that (d(k), d(k+1)) = (1,1) in the base-2 digits d(i) of sqrt(3).

The programs for A293790, the canonical program `A293790.P12012869596680859351` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293790 has offset 1).

The definition of A293790 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2568 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293790.P12012869596680859351

`record[C(n, a(n-1))*A004547(n+1)]` with `a(0)=1`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293790

/-- `record[C(n, a(n-1))*A004547(n+1)]` -/
def P12012869596680859351.Spec : Prop :=
  ∀ n, P12012869596680859351.a n = A293790 (n + 1)

theorem P12012869596680859351.correct : P12012869596680859351.Spec := by
  intro n
  simp only [A293790, Nat.add_sub_cancel]

end A293790

/-! ## A293790.P2758395525935314169

`eq[char[A004547(n+1)+n], A004547(n+1)]`
-/

namespace A293790.P2758395525935314169
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A293790.P2758395525935314169

namespace A293790

/-- `eq[char[A004547(n+1)+n], A004547(n+1)]` -/
def P2758395525935314169.Spec : Prop :=
  ∀ n, (P2758395525935314169.a n : ℤ) = A293790 (n + 1)

end A293790

/-! ## A293790.P2562264363071467332

`eq[1, A004547(A004547(n+1)+n+1)]+1`
-/

namespace A293790.P2562264363071467332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (A004547 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A293790.P2562264363071467332

namespace A293790

/-- `eq[1, A004547(A004547(n+1)+n+1)]+1` -/
def P2562264363071467332.Spec : Prop :=
  ∀ n, (P2562264363071467332.a n : ℤ) = A293790 (n + 1)

end A293790

/-! ## A293790.P16420164008183064809

`lt[2, A004547(n+1)*A004547(A233583(n+1))*n*(n+2)]`
-/

namespace A293790.P16420164008183064809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004547 (n + 1) * A004547 (A233583 (n + 1)).toNat * (n * (n + 2) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A293790.P16420164008183064809

namespace A293790

/-- `lt[2, A004547(n+1)*A004547(A233583(n+1))*n*(n+2)]` -/
def P16420164008183064809.Spec : Prop :=
  ∀ n, (P16420164008183064809.a n : ℤ) = A293790 (n + 1)

end A293790

/-! ## A293790.P6937292792226420794

`eq[3, and(3, A094386(n+1))]`
-/

namespace A293790.P6937292792226420794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A094386 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293790.P6937292792226420794

namespace A293790

/-- `eq[3, and(3, A094386(n+1))]` -/
def P6937292792226420794.Spec : Prop :=
  ∀ n, (P6937292792226420794.a n : ℤ) = A293790 (n + 1)

end A293790

/-! ## A293790.P2457865320358083795

`eq[A094386(n+1)%4, A020639(3*A000040(n+1))]`
-/

namespace A293790.P2457865320358083795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094386 (n + 1)) 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (3 * A000040 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293790.P2457865320358083795

namespace A293790

/-- `eq[A094386(n+1)%4, A020639(3*A000040(n+1))]` -/
def P2457865320358083795.Spec : Prop :=
  ∀ n, (P2457865320358083795.a n : ℤ) = A293790 (n + 1)

end A293790

/-!
# A293792: Numbers k such that (d(k), d(k+1)) = (0,0) in the base-2 digits d(i) of e.

The programs for A293792, the canonical program `A293792.P6768095798108131778` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293792 has offset 1).

The definition of A293792 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293792.P16683006364879774138

`eq[char[A293794(n+1)], A004593(n+2)]`
-/

namespace A293792.P16683006364879774138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293794 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A293792.P16683006364879774138

namespace A293792

/-- `eq[char[A293794(n+1)], A004593(n+2)]` -/
def P16683006364879774138.Spec : Prop :=
  ∀ n, (P16683006364879774138.a n : ℤ) = A293792 (n + 1)

end A293792

/-! ## A293792.P6768095798108131778

`eq[char[record[(n+1)*(A004593(n+2)-A004593(n+3))]], A004593(n+2)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A293792

/-- `eq[char[record[(n+1)*(A004593(n+2)-A004593(n+3))]], A004593(n+2)]` -/
def P6768095798108131778.Spec : Prop :=
  ∀ n, (P6768095798108131778.a n : ℤ) = A293792 (n + 1)

theorem P6768095798108131778.correct : P6768095798108131778.Spec := by
  intro n
  simp only [A293792, Nat.add_sub_cancel]

end A293792

/-! ## A293792.P6797388573184420529

`eq[and(4, A293337(n)), A004593(n+2)]`
-/

namespace A293792.P6797388573184420529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 4 (A293337 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A293792.P6797388573184420529

namespace A293792

/-- `eq[and(4, A293337(n)), A004593(n+2)]` -/
def P6797388573184420529.Spec : Prop :=
  ∀ n, (P6797388573184420529.a n : ℤ) = A293792 (n + 1)

end A293792

/-!
# A293793: Numbers k such that (d(k), d(k+1)) = (0,1) in the base-2 digits d(i) of e.

The programs for A293793, there is no canonical definition to state claims against.
-/

/-! ## A293793.P10924474735003676411

`A293794(n+1)+A051482(2*(n+1))`
-/

namespace A293793.P10924474735003676411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293794 (n + 1) + A051482 (2 * (n + 1))

end

end A293793.P10924474735003676411

/-! ## A293793.P7420348619942863325

`∑[A051482(2*n+1)+A051482(2*(n+1))]`
-/

namespace A293793.P7420348619942863325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051482 (2 * n + 1) + A051482 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A293793.P7420348619942863325

/-! ## A293793.P5036993422081270380

`eq[1, Δ[A004593(n+2)]]+1`
-/

namespace A293793.P5036993422081270380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A293793.P5036993422081270380

/-! ## A293793.P6125343463941213625

`record[Δ[(n+1)*A004593(n+3)]]`
-/

namespace A293793.P6125343463941213625
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004593 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293793.P6125343463941213625

/-! ## A293793.P17100459202785401632

`A051482(2*(n+1))+record[(n+1)*(A004593(n+2)-A004593(n+3))]`
-/

namespace A293793.P17100459202785401632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004593 (n + 2) - A004593 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051482 (2 * (n + 1)) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293793.P17100459202785401632

/-! ## A293793.P1334789769322308043

`record[Δ[(n+1)*(A293337(n)+1)%2]]`
-/

namespace A293793.P1334789769322308043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A293337 n + 1) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293793.P1334789769322308043

/-!
# A293794: Numbers k such that (d(k), d(k+1)) = (1,0) in the base-2 digits d(i) of e.

The programs for A293794, there is no canonical definition to state claims against.
-/

/-! ## A293794.P15649524354479054753

`record[∑[A051482(n+1)]*A059841(n)]`
-/

namespace A293794.P15649524354479054753
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051482 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * A059841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293794.P15649524354479054753

/-! ## A293794.P6460536603687002829

`A094058(∑[A051482(2*n+1)])`
-/

namespace A293794.P6460536603687002829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051482 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A293794.P6460536603687002829

/-! ## A293794.P14767901754398176853

`eq[char[A293792(n+1)], A004593(n+2)]`
-/

namespace A293794.P14767901754398176853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293792 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A293794.P14767901754398176853

/-! ## A293794.P9386255821717393770

`record[(n+1)*(A004593(n+2)-A004593(n+3))]`
-/

namespace A293794.P9386255821717393770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A004593 (n + 2) - A004593 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293794.P9386255821717393770

/-! ## A293794.P4962017300557902095

`record[A094058(n+1)%A131738(A004712(n+1))]`
-/

namespace A293794.P4962017300557902095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094058 (n + 1)) (A131738 (A004712 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293794.P4962017300557902095

/-!
# A293795: Numbers k such that (d(k), d(k+1)) = (1,1) in the base-2 digits d(i) of e.

The programs for A293795, the canonical program `A293795.P7536653038350909202` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A293795 has offset 1).

The definition of A293795 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5047 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A293795.P2101565158494205668

`∩[A004712(n+1)+1, A094058(n+1)]`
-/

namespace A293795.P2101565158494205668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004712 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293795.P2101565158494205668

namespace A293795

/-- `∩[A004712(n+1)+1, A094058(n+1)]` -/
def P2101565158494205668.Spec : Prop :=
  ∀ n, (P2101565158494205668.a n : ℤ) = A293795 (n + 1)

end A293795

/-! ## A293795.P9479332649520395623

`∩[A094058(n+2)-1, A094058(n+2)]`
-/

namespace A293795.P9479332649520395623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293795.P9479332649520395623

namespace A293795

/-- `∩[A094058(n+2)-1, A094058(n+2)]` -/
def P9479332649520395623.Spec : Prop :=
  ∀ n, (P9479332649520395623.a n : ℤ) = A293795 (n + 1)

end A293795

/-! ## A293795.P7536653038350909202

`A094058(eq[1, A094058(n+1)-A004712(n+1)]+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A293795

/-- `A094058(eq[1, A094058(n+1)-A004712(n+1)]+1)` -/
def P7536653038350909202.Spec : Prop :=
  ∀ n, P7536653038350909202.a n = A293795 (n + 1)

theorem P7536653038350909202.correct : P7536653038350909202.Spec := by
  intro n
  simp only [A293795, Nat.add_sub_cancel]

end A293795

/-! ## A293795.P3400026856987314278

`A094058(eq[1, A094058(n+1)%A004712(n+1)]+1)`
-/

namespace A293795.P3400026856987314278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A094058 (n + 1)) (A004712 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A293795.P3400026856987314278

namespace A293795

/-- `A094058(eq[1, A094058(n+1)%A004712(n+1)]+1)` -/
def P3400026856987314278.Spec : Prop :=
  ∀ n, P3400026856987314278.a n = A293795 (n + 1)

end A293795

/-! ## A293795.P1381630162655960014

`∩[A094058(n+1), comp[A293794(n+1)]]`
-/

namespace A293795.P1381630162655960014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293794 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A293795.P1381630162655960014

namespace A293795

/-- `∩[A094058(n+1), comp[A293794(n+1)]]` -/
def P1381630162655960014.Spec : Prop :=
  ∀ n, (P1381630162655960014.a n : ℤ) = A293795 (n + 1)

end A293795

/-! ## A293795.P10191609477943486098

`eq[char[A004593(n+2)+n], A004593(n+2)]`
-/

namespace A293795.P10191609477943486098
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 2) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A293795.P10191609477943486098

namespace A293795

/-- `eq[char[A004593(n+2)+n], A004593(n+2)]` -/
def P10191609477943486098.Spec : Prop :=
  ∀ n, (P10191609477943486098.a n : ℤ) = A293795 (n + 1)

end A293795

/-! ## A293795.P7056172643325258847

`∩[A023444(A094058(n+1)+1), A094058(n+1)]`
-/

namespace A293795.P7056172643325258847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A094058 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A293795.P7056172643325258847

namespace A293795

/-- `∩[A023444(A094058(n+1)+1), A094058(n+1)]` -/
def P7056172643325258847.Spec : Prop :=
  ∀ n, (P7056172643325258847.a n : ℤ) = A293795 (n + 1)

end A293795

/-! ## A293795.P11603095208542157968

`eq[6, and(6, A027437(n))]`
-/

namespace A293795.P11603095208542157968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 6 (A027437 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A293795.P11603095208542157968

namespace A293795

/-- `eq[6, and(6, A027437(n))]` -/
def P11603095208542157968.Spec : Prop :=
  ∀ n, (P11603095208542157968.a n : ℤ) = A293795 (n + 1)

end A293795

/-!
# A293796: Square array A(n,k), n >= 0, k >= 0, read by antidiagonals, where column k is the expansion of e.g.f.: exp(Sum_{j>=1} j^(k-1)*A000041(j)*x^j).

The programs for A293796, there is no canonical definition to state claims against.
-/

/-! ## A293796.P17643778460893304173

`A293908(n)+A035062(A293785(n))`
-/

namespace A293796.P17643778460893304173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293908 n + A035062 (A293785 n).toNat

end

end A293796.P17643778460893304173

/-! ## A293796.P3198427320754449653

`or(1, A220845(A341923(n+1)))`
-/

namespace A293796.P3198427320754449653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A220845 (A341923 (n + 1)).toNat)

end

end A293796.P3198427320754449653

/-! ## A293796.P9766085652108861890

`A327262(A293785(comp[∑[n-1]]))`
-/

namespace A293796.P9766085652108861890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327262 (A293785 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A293796.P9766085652108861890

/-!
# A293797: Number of multisets of nonempty words with a total of n letters over binary alphabet containing the second letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293797, there is no canonical definition to state claims against.
-/

/-! ## A293797.P16883990638657028086

`A293732(n+2)-A000041(n+2)`
-/

namespace A293797.P16883990638657028086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293732 (n + 2) - A000041 (n + 2)

end

end A293797.P16883990638657028086

/-! ## A293797.P13199922204056503432

`A293732(n+2)-(A000065(n+2)+1)`
-/

namespace A293797.P13199922204056503432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293732 (n + 2) - (A000065 (n + 2) + 1)

end

end A293797.P13199922204056503432

/-! ## A293797.P18392328818751101463

`A293109(∑[n+2]+3)`
-/

namespace A293797.P18392328818751101463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A293797.P18392328818751101463

/-! ## A293797.P7379236016313427871

`record[A293109(C(n, 2)+2)]`
-/

namespace A293797.P7379236016313427871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (Nat.choose n 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293797.P7379236016313427871

/-! ## A293797.P3240178267205094320

`record[gcd(A293109(n+3), A293112(n))]`
-/

namespace A293797.P3240178267205094320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A293109 (n + 3)) (A293112 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A293797.P3240178267205094320

/-!
# A293798: Number of multisets of nonempty words with a total of n letters over ternary alphabet containing the third letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293798, there is no canonical definition to state claims against.
-/

/-! ## A293798.P12541705362925881896

`A293733(n+3)-A293732(n+3)`
-/

namespace A293798.P12541705362925881896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293733 (n + 3) - A293732 (n + 3)

end

end A293798.P12541705362925881896

/-! ## A293798.P11714517514333807255

`A293109(A167614(n+2))`
-/

namespace A293798.P11714517514333807255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A167614 (n + 2)).toNat

end

end A293798.P11714517514333807255

/-! ## A293798.P12610096309065737889

`A293109(A052905(n)+8)`
-/

namespace A293798.P12610096309065737889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A052905 n + 8).toNat

end

end A293798.P12610096309065737889

/-! ## A293798.P2507768124160107253

`A293109(A055999(n)+9)`
-/

namespace A293798.P2507768124160107253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A055999 n + 9).toNat

end

end A293798.P2507768124160107253

/-! ## A293798.P9331225888818269160

`A293109(eq[3, A002262(n)])`
-/

namespace A293798.P9331225888818269160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293798.P9331225888818269160

/-!
# A293799: Number of multisets of nonempty words with a total of n letters over quaternary alphabet containing the fourth letter such that within each prefix of a word every letter of the alphabet is at least as frequent as the subsequent alphabet letter.

The programs for A293799, there is no canonical definition to state claims against.
-/

/-! ## A293799.P1184909845648868237

`A293734(n+4)-A293733(n+4)`
-/

namespace A293799.P1184909845648868237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293734 (n + 4) - A293733 (n + 4)

end

end A293799.P1184909845648868237

/-! ## A293799.P14345920197529149316

`A293109(eq[4, A002262(n)])`
-/

namespace A293799.P14345920197529149316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A293799.P14345920197529149316

/-! ## A293799.P7949512782775694117

`A293109(A167499(n+3)-1)`
-/

namespace A293799.P7949512782775694117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A167499 (n + 3) - 1).toNat

end

end A293799.P7949512782775694117

/-! ## A293799.P462852315583279781

`A293109(A000124(n+4)+3)`
-/

namespace A293799.P462852315583279781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A000124 (n + 4) + 3).toNat

end

end A293799.P462852315583279781

/-! ## A293799.P12169169093059078345

`A293109(A034856(n+3)+6)`
-/

namespace A293799.P12169169093059078345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293109 (A034856 (n + 3) + 6).toNat

end

end A293799.P12169169093059078345

