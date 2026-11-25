import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C008
import Seq.B000.C012
import Seq.B000.C017
import Seq.B000.C025
import Seq.B000.C040
import Seq.B000.C048
import Seq.B000.C051
import Seq.B001.C002
import Seq.B001.C015
import Seq.B003.C005
import Seq.B004.C000
import Seq.B005.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A402314: Class numbers associated with terms of A045535.

The programs for A402314, there is no canonical definition to state claims against.
-/

/-! ## A402314.P10325018066108299776

`A402320(n)`
-/

namespace A402314.P10325018066108299776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A402320 n

end

end A402314.P10325018066108299776

/-!
# A402315: Records in A045535.

The programs for A402315, there is no canonical definition to state claims against.
-/

/-! ## A402315.P18009504352153760836

`record[A062241(abs(n-1))]`
-/

namespace A402315.P18009504352153760836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062241 |(n : ℤ) - 1|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A402315.P18009504352153760836

/-!
# A402325: Number of ways to write n = x*y with 1 <= x <= n, 1 <= y <= n, where neither x nor y is squarefree.

The programs for A402325, the canonical program `A402325.P1348422923174333742` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402325 has offset 1).

The definition of A402325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402325.P1348422923174333742

`∑{d}[n+1, (1-A008683(#)²)*(1-A008683((n+1)/#)²)]`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A402325

/-- `∑{d}[n+1, (1-A008683(#)²)*(1-A008683((n+1)/#)²)]` -/
def P1348422923174333742.Spec : Prop :=
  ∀ n, P1348422923174333742.a n = A402325 (n + 1)

theorem P1348422923174333742.correct : P1348422923174333742.Spec := by
  intro n
  simp only [A402325, Nat.add_sub_cancel]

end A402325

/-! ## A402325.P10195676950719469460

`and(A204842(n), A347709(n+1))`
-/

namespace A402325.P10195676950719469460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A204842 n) (A347709 (n + 1))

end

end A402325.P10195676950719469460

namespace A402325

/-- `and(A204842(n), A347709(n+1))` -/
def P10195676950719469460.Spec : Prop :=
  ∀ n, P10195676950719469460.a n = A402325 (n + 1)

end A402325

/-! ## A402325.P9710033287128936943

`A235665(n+1)%A046951(n+1)`
-/

namespace A402325.P9710033287128936943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235665 (n + 1)) (A046951 (n + 1))

end

end A402325.P9710033287128936943

namespace A402325

/-- `A235665(n+1)%A046951(n+1)` -/
def P9710033287128936943.Spec : Prop :=
  ∀ n, P9710033287128936943.a n = A402325 (n + 1)

end A402325

/-! ## A402325.P6436752000486110984

`A349496(n+1)%A046951(n+1)`
-/

namespace A402325.P6436752000486110984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349496 (n + 1)) (A046951 (n + 1))

end

end A402325.P6436752000486110984

namespace A402325

/-- `A349496(n+1)%A046951(n+1)` -/
def P6436752000486110984.Spec : Prop :=
  ∀ n, P6436752000486110984.a n = A402325 (n + 1)

end A402325

/-! ## A402325.P18125142166146782367

`A357198(n)%A336736(n+1)`
-/

namespace A402325.P18125142166146782367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A357198 n) (A336736 (n + 1))

end

end A402325.P18125142166146782367

namespace A402325

/-- `A357198(n)%A336736(n+1)` -/
def P18125142166146782367.Spec : Prop :=
  ∀ n, P18125142166146782367.a n = A402325 (n + 1)

end A402325

/-!
# A402330: Product of the first n primes p for which p mod 8 equals 1 or 7 (A001132).

The programs for A402330, there is no canonical definition to state claims against.
-/

/-! ## A402330.P10695470817155616604

`∏[p?[fp[or(4, n+2)]]]`
-/

namespace A402330.P10695470817155616604
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 4 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => n < f3 j) 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A402330.P10695470817155616604

/-! ## A402330.P17015691069189438435

`∏[p?[A069909(n)]]`
-/

namespace A402330.P17015691069189438435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069909 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A402330.P17015691069189438435

/-! ## A402330.P13218431447290858018

`∏[A001132(n+1)]`
-/

namespace A402330.P13218431447290858018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A402330.P13218431447290858018

/-! ## A402330.P7865699409183651494

`∏[A038873(n+2)]`
-/

namespace A402330.P7865699409183651494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038873 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A402330.P7865699409183651494

/-! ## A402330.P14577905832498844864

`∏[A097958(n+2)]`
-/

namespace A402330.P14577905832498844864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097958 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A402330.P14577905832498844864

/-!
# A402332: Triangle read by rows: T(n,k) = number of standard shifted Young tableaux with k rows containing n, n-1, ..., n-k+1 entries.

The programs for A402332, there is no canonical definition to state claims against.
-/

/-! ## A402332.P16872909162190873999

`A004065(A023758(n+2))`
-/

namespace A402332.P16872909162190873999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004065 (A023758 (n + 2)).toNat

end

end A402332.P16872909162190873999

/-!
# A402333: a(n) = 1 + Sum_{k=1..n} binomial(n+3,k) * a(n-k).

The programs for A402333, the canonical program `A402333.P16742404134170930567` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402333 has offset 0).

The definition of A402333 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402333.P16742404134170930567

`A000670(n+3)-(n+3)*A000670(n+2)-C(n+3, 2)*A000670(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A402333

/-- `A000670(n+3)-(n+3)*A000670(n+2)-C(n+3, 2)*A000670(n+1)` -/
def P16742404134170930567.Spec : Prop :=
  ∀ n, P16742404134170930567.a n = A402333 n

theorem P16742404134170930567.correct : P16742404134170930567.Spec := by
  intro n
  simp only [A402333]

end A402333

/-!
# A402336: G.f.: Sum_{k>=1} x^k / Product_{j=k..4*k} (1 - x^j).

The programs for A402336, there is no canonical definition to state claims against.
-/

/-! ## A402336.P3164868907369534401

`A273190(A202027(n+1))`
-/

namespace A402336.P3164868907369534401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A202027 (n + 1)).toNat

end

end A402336.P3164868907369534401

/-!
# A402349: Numbers that are neither squarefree, prime powers, nor highly composite.

The programs for A402349, there is no canonical definition to state claims against.
-/

/-! ## A402349.P14985664077452676381

`∩[A177425(n+1), A336426(n+1)]`
-/

namespace A402349.P14985664077452676381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402349.P14985664077452676381

/-! ## A402349.P3697500770830695148

`∩[A182854(n+1), A336426(n+1)]`
-/

namespace A402349.P3697500770830695148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182854 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402349.P3697500770830695148

/-! ## A402349.P13133962080228165358

`∩[A336426(n+1), A383113(n+1)]`
-/

namespace A402349.P13133962080228165358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383113 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402349.P13133962080228165358

/-! ## A402349.P15610375613778071180

`∩[A336426(n+1), A393914(n+1)]`
-/

namespace A402349.P15610375613778071180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402349.P15610375613778071180

/-!
# A402356: a(n) = Index of A077569(n) in A025487.

The programs for A402356, there is no canonical definition to state claims against.
-/

/-! ## A402356.P2540609995668040951

`A085089(A077569(n+1))`
-/

namespace A402356.P2540609995668040951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085089 (A077569 (n + 1)).toNat

end

end A402356.P2540609995668040951

/-!
# A402357: Number of strongly connected digraphs on n unlabeled nodes such that for every node h, every strongly connected component of D - h receives exactly one edge from outside.

The programs for A402357, there is no canonical definition to state claims against.
-/

/-! ## A402357.P15370408298327366003

`A194417(A249563(n))`
-/

namespace A402357.P15370408298327366003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194417 (A249563 n).toNat

end

end A402357.P15370408298327366003

/-!
# A402365: Numbers that are the sum of five distinct positive 5th powers.

The programs for A402365, there is no canonical definition to state claims against.
-/

/-! ## A402365.P12069837742114842918

`A194768(A014313(n+1))`
-/

namespace A402365.P12069837742114842918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194768 (A014313 (n + 1)).toNat

end

end A402365.P12069837742114842918

/-! ## A402365.P6861672952326818453

`∩[A003350(n+1), A194768(n+1)]`
-/

namespace A402365.P6861672952326818453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402365.P6861672952326818453

/-! ## A402365.P13393074798418152877

`∩[A194768(n+1), A344643(n+1)]`
-/

namespace A402365.P13393074798418152877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344643 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A402365.P13393074798418152877

/-!
# A402376: Least number k such that the first n primes have Kronecker symbol (p|k) = 1.

The programs for A402376, there is no canonical definition to state claims against.
-/

/-! ## A402376.P13838408247489027313

`min(A002189(n), A045535(n))`
-/

namespace A402376.P13838408247489027313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  min (A002189 n) (A045535 n)

end

end A402376.P13838408247489027313

/-!
# A402380: a(n) = 1 + Sum_{k=1..n} binomial(k+2,k) * a(n-k).

The programs for A402380, the canonical program `A402380.P10968575607552383000` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402380 has offset 0).

The definition of A402380 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402380.P10968575607552383000

`ogf((1-2x+x^2)/(1-6x+6x^2-2x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A402380

/-- `ogf((1-2x+x^2)/(1-6x+6x^2-2x^3))` -/
def P10968575607552383000.Spec : Prop :=
  ∀ n, P10968575607552383000.a n = A402380 n

theorem P10968575607552383000.correct : P10968575607552383000.Spec := by
  intro n
  simp only [A402380]

end A402380

/-! ## A402380.P6181136430648798397

`2*(3*a(n-1)-3*a(n-2)+a(n-3))` with `a(0)=1, a(1)=4, a(2)=19`
-/

namespace A402380.P6181136430648798397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4, 19] fun n a =>
  2 * (3 * a (n - 1) - 3 * a (n - 2) + a (n - 3))

end

end A402380.P6181136430648798397

namespace A402380

/-- `2*(3*a(n-1)-3*a(n-2)+a(n-3))` -/
def P6181136430648798397.Spec : Prop :=
  ∀ n, P6181136430648798397.a n = A402380 n

end A402380

/-! ## A402380.P10160235812889063064

`∑[A145839(n)]`
-/

namespace A402380.P10160235812889063064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145839 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A402380.P10160235812889063064

namespace A402380

/-- `∑[A145839(n)]` -/
def P10160235812889063064.Spec : Prop :=
  ∀ n, P10160235812889063064.a n = A402380 n

end A402380

/-!
# A402381: a(n) = 1 + Sum_{k=1..n} binomial(k+3,k) * a(n-k).

The programs for A402381, the canonical program `A402381.P17987411779444983411` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402381 has offset 0).

The definition of A402381 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402381.P17987411779444983411

`ogf((1-3x+3x^2-x^3)/(1-8x+12x^2-8x^3+2x^4))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A402381

/-- `ogf((1-3x+3x^2-x^3)/(1-8x+12x^2-8x^3+2x^4))` -/
def P17987411779444983411.Spec : Prop :=
  ∀ n, P17987411779444983411.a n = A402381 n

theorem P17987411779444983411.correct : P17987411779444983411.Spec := by
  intro n
  simp only [A402381]

end A402381

/-! ## A402381.P17015440554800748394

`2*(4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4))` with `a(0)=1, a(1)=5, a(2)=31, a(3)=195`
-/

namespace A402381.P17015440554800748394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 31, 195] fun n a =>
  2 * (4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4))

end

end A402381.P17015440554800748394

namespace A402381

/-- `2*(4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4))` -/
def P17015440554800748394.Spec : Prop :=
  ∀ n, P17015440554800748394.a n = A402381 n

end A402381

/-! ## A402381.P4881451796937242722

`∑[A145840(n)]`
-/

namespace A402381.P4881451796937242722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A402381.P4881451796937242722

namespace A402381

/-- `∑[A145840(n)]` -/
def P4881451796937242722.Spec : Prop :=
  ∀ n, P4881451796937242722.a n = A402381 n

end A402381

/-! ## A402381.P5430145529985031206

`∑{#}[n, C(n, #)*A374454(#)]`
-/

namespace A402381.P5430145529985031206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A374454 k

end

end A402381.P5430145529985031206

namespace A402381

/-- `∑{#}[n, C(n, #)*A374454(#)]` -/
def P5430145529985031206.Spec : Prop :=
  ∀ n, P5430145529985031206.a n = A402381 n

end A402381

/-!
# A402382: a(n) = 1 + Sum_{k=1..n} binomial(k+4,k) * a(n-k).

The programs for A402382, the canonical program `A402382.P14542025862079204209` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402382 has offset 0).

The definition of A402382 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402382.P14542025862079204209

`ogf((1-4x+6x^2-4x^3+x^4)/(1-10x+20x^2-20x^3+10x^4-2x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A402382

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-10x+20x^2-20x^3+10x^4-2x^5))` -/
def P14542025862079204209.Spec : Prop :=
  ∀ n, P14542025862079204209.a n = A402382 n

theorem P14542025862079204209.correct : P14542025862079204209.Spec := by
  intro n
  simp only [A402382]

end A402382

/-! ## A402382.P12041548670086592333

`∑[A145841(n)]`
-/

namespace A402382.P12041548670086592333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145841 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A402382.P12041548670086592333

namespace A402382

/-- `∑[A145841(n)]` -/
def P12041548670086592333.Spec : Prop :=
  ∀ n, P12041548670086592333.a n = A402382 n

end A402382

/-! ## A402382.P4475317251774725700

`∑{#}[n, C(n, #)*A374455(#)]`
-/

namespace A402382.P4475317251774725700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A374455 k

end

end A402382.P4475317251774725700

namespace A402382

/-- `∑{#}[n, C(n, #)*A374455(#)]` -/
def P4475317251774725700.Spec : Prop :=
  ∀ n, P4475317251774725700.a n = A402382 n

end A402382

/-!
# A402389: a(n) = 1 + Sum_{k=1..n} k^k * a(n-k).

The programs for A402389, there is no canonical definition to state claims against.
-/

/-! ## A402389.P4731051105423681261

`∑[A277610(n)]`
-/

namespace A402389.P4731051105423681261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A402389.P4731051105423681261

/-!
# A402394: a(n) = minimal exponent in the prime factorization of A025487(n).

The programs for A402394, there is no canonical definition to state claims against.
-/

/-! ## A402394.P472039576629608398

`A051904(A025487(n+1))`
-/

namespace A402394.P472039576629608398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051904 (A025487 (n + 1)).toNat

end

end A402394.P472039576629608398

/-! ## A402394.P10563506616984955642

`A055396(A181820(n+1))`
-/

namespace A402394.P10563506616984955642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A181820 (n + 1)).toNat

end

end A402394.P10563506616984955642

/-! ## A402394.P11592417550963889080

`A065120(A329905(n+1))`
-/

namespace A402394.P11592417550963889080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (A329905 (n + 1)).toNat

end

end A402394.P11592417550963889080

/-! ## A402394.P17126736753778769490

`A071178(A181815(n+1))`
-/

namespace A402394.P17126736753778769490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A181815 (n + 1)).toNat

end

end A402394.P17126736753778769490

/-! ## A402394.P12230949995061501441

`A325184(A036912(n+1))`
-/

namespace A402394.P12230949995061501441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325184 (A036912 (n + 1)).toNat

end

end A402394.P12230949995061501441

/-!
# A402397: a(n) = 1 + Sum_{k=1..n} k^2 * a(n-k).

The programs for A402397, the canonical program `A402397.P1678479917354929505` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402397 has offset 0).

The definition of A402397 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402397.P1678479917354929505

`ogf((1-2x+x^2)/(1-4x+2x^2-x^3))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A402397

/-- `ogf((1-2x+x^2)/(1-4x+2x^2-x^3))` -/
def P1678479917354929505.Spec : Prop :=
  ∀ n, P1678479917354929505.a n = A402397 n

theorem P1678479917354929505.correct : P1678479917354929505.Spec := by
  intro n
  simp only [A402397]

end A402397

/-! ## A402397.P10222361725415542352

`4*a(n-1)-2*a(n-2)+a(n-3)` with `a(0)=1, a(1)=2, a(2)=7`
-/

namespace A402397.P10222361725415542352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 7] fun n a =>
  4 * a (n - 1) - 2 * a (n - 2) + a (n - 3)

end

end A402397.P10222361725415542352

namespace A402397

/-- `4*a(n-1)-2*a(n-2)+a(n-3)` -/
def P10222361725415542352.Spec : Prop :=
  ∀ n, P10222361725415542352.a n = A402397 n

end A402397

/-! ## A402397.P1384110107148631230

`∑[A143864(∑[n+1])]`
-/

namespace A402397.P1384110107148631230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143864 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A402397.P1384110107148631230

namespace A402397

/-- `∑[A143864(∑[n+1])]` -/
def P1384110107148631230.Spec : Prop :=
  ∀ n, P1384110107148631230.a n = A402397 n

end A402397

/-! ## A402397.P15854303296128813759

`∑[A320251(∑[n+3])]`
-/

namespace A402397.P15854303296128813759
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320251 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A402397.P15854303296128813759

namespace A402397

/-- `∑[A320251(∑[n+3])]` -/
def P15854303296128813759.Spec : Prop :=
  ∀ n, P15854303296128813759.a n = A402397 n

end A402397

/-!
# A402398: a(n) = 1 + Sum_{k=1..n} k^3 * a(n-k).

The programs for A402398, the canonical program `A402398.P1342544052929108606` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402398 has offset 0).

The definition of A402398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402398.P1342544052929108606

`ogf((1-3x+3x^2-x^3)/(1-5x+2x^2-5x^3+x^4))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A402398

/-- `ogf((1-3x+3x^2-x^3)/(1-5x+2x^2-5x^3+x^4))` -/
def P1342544052929108606.Spec : Prop :=
  ∀ n, P1342544052929108606.a n = A402398 n

theorem P1342544052929108606.correct : P1342544052929108606.Spec := by
  intro n
  simp only [A402398]

end A402398

/-! ## A402398.P2986681437493692083

`5*a(n-1)-2*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=11, a(3)=55`
-/

namespace A402398.P2986681437493692083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 11, 55] fun n a =>
  5 * a (n - 1) - 2 * a (n - 2) + 5 * a (n - 3) - a (n - 4)

end

end A402398.P2986681437493692083

namespace A402398

/-- `5*a(n-1)-2*a(n-2)+5*a(n-3)-a(n-4)` -/
def P2986681437493692083.Spec : Prop :=
  ∀ n, P2986681437493692083.a n = A402398 n

end A402398

/-!
# A402399: a(n) = 1 + Sum_{k=1..n} k^4 * a(n-k).

The programs for A402399, the canonical program `A402399.P879438839120521346` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A402399 has offset 0).

The definition of A402399 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A402399.P879438839120521346

`ogf((1-4x+6x^2-4x^3+x^4)/(1-6x-x^2-21x^3+4x^4-x^5))`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A402399

/-- `ogf((1-4x+6x^2-4x^3+x^4)/(1-6x-x^2-21x^3+4x^4-x^5))` -/
def P879438839120521346.Spec : Prop :=
  ∀ n, P879438839120521346.a n = A402399 n

theorem P879438839120521346.correct : P879438839120521346.Spec := by
  intro n
  simp only [A402399]

end A402399

/-! ## A402399.P3327062641550318726

`6*a(n-1)+a(n-2)+21*a(n-3)-4*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=19, a(3)=133, a(4)=856`
-/

namespace A402399.P3327062641550318726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 19, 133, 856] fun n a =>
  6 * a (n - 1) + a (n - 2) + 21 * a (n - 3) - 4 * a (n - 4) + a (n - 5)

end

end A402399.P3327062641550318726

namespace A402399

/-- `6*a(n-1)+a(n-2)+21*a(n-3)-4*a(n-4)+a(n-5)` -/
def P3327062641550318726.Spec : Prop :=
  ∀ n, P3327062641550318726.a n = A402399 n

end A402399

/-! ## A402399.P16047837830152773975

`∑[A401322(n)]`
-/

namespace A402399.P16047837830152773975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401322 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A402399.P16047837830152773975

namespace A402399

/-- `∑[A401322(n)]` -/
def P16047837830152773975.Spec : Prop :=
  ∀ n, P16047837830152773975.a n = A402399 n

end A402399

