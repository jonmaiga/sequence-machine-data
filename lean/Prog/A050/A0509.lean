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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
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
# A050904: Numbers n such that 291*2^n-1 is prime.

The programs for A050904, there is no canonical definition to state claims against.
-/

/-! ## A050904.P4846357262934145926

`eq[A119665(3*n+2), A226206(A000203(n+3))]`
-/

namespace A050904.P4846357262934145926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119665 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226206 (A000203 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050904.P4846357262934145926

/-!
# A050909: Iterated triangular numbers with seed 9.

The programs for A050909, the canonical program `A050909.P12396744796371579053` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050909 has offset 0).

The definition of A050909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050909.P12396744796371579053

`C(a(n-1)+1, 2)` with `a(0)=9`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050909

/-- `C(a(n-1)+1, 2)` -/
def P12396744796371579053.Spec : Prop :=
  ∀ n, (P12396744796371579053.a n : ℤ) = A050909 n

theorem P12396744796371579053.correct : P12396744796371579053.Spec := by
  intro n
  simp only [A050909]

end A050909

/-! ## A050909.P4928917124966692412

`(a(n-1)+a(n-1)²)/2` with `a(0)=9`
-/

namespace A050909.P4928917124966692412
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [9] fun n a =>
  (a (n - 1) + a (n - 1) ^ 2) / 2

end

end A050909.P4928917124966692412

namespace A050909

/-- `(a(n-1)+a(n-1)²)/2` -/
def P4928917124966692412.Spec : Prop :=
  ∀ n, P4928917124966692412.a n = (A050909 n : ℚ)

end A050909

/-! ## A050909.P11520148654281007547

`(a(n-1)+1)/2*a(n-1)` with `a(0)=9`
-/

namespace A050909.P11520148654281007547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [9] fun n a =>
  (a (n - 1) + 1) / 2 * a (n - 1)

end

end A050909.P11520148654281007547

namespace A050909

/-- `(a(n-1)+1)/2*a(n-1)` -/
def P11520148654281007547.Spec : Prop :=
  ∀ n, P11520148654281007547.a n = (A050909 n : ℚ)

end A050909

/-!
# A050910: Number of pure 3-complexes on 8 unlabeled nodes with n multiple 3-simplexes.

The programs for A050910, there is no canonical definition to state claims against.
-/

/-! ## A050910.P13589134967084804716

`A187188((A085810(n+1)+1)²)`
-/

namespace A050910.P13589134967084804716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187188 ((A085810 (n + 1) + 1) ^ 2).toNat

end

end A050910.P13589134967084804716

/-! ## A050910.P16104122048160773411

`A349621(A349714(n))+A349603(n)`
-/

namespace A050910.P16104122048160773411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349621 (A349714 n).toNat + A349603 n

end

end A050910.P16104122048160773411

/-!
# A050911: Number of pure 2-complexes on 6 unlabeled nodes with n multiple 2-simplexes.

The programs for A050911, there is no canonical definition to state claims against.
-/

/-! ## A050911.P5142820014283610623

`A305027(∑[n+4]+2)`
-/

namespace A050911.P5142820014283610623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305027 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A050911.P5142820014283610623

/-! ## A050911.P7194046575548172190

`A055642(n)*A305027(A046691(n+2))`
-/

namespace A050911.P7194046575548172190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n * A305027 (A046691 (n + 2)).toNat

end

end A050911.P7194046575548172190

/-! ## A050911.P15970780913400374003

`A226250(or(A148403(n), A305161(n)))`
-/

namespace A050911.P15970780913400374003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226250 (Int.lor (A148403 n) (A305161 n)).toNat

end

end A050911.P15970780913400374003

/-!
# A050912: Number of pure 2-complexes on 7 unlabeled nodes with n multiple 2-simplexes.

The programs for A050912, there is no canonical definition to state claims against.
-/

/-! ## A050912.P17705177416844467272

`A305027(A052905(n+2))`
-/

namespace A050912.P17705177416844467272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305027 (A052905 (n + 2)).toNat

end

end A050912.P17705177416844467272

/-! ## A050912.P10383901358098858257

`A305027(A056115(n)+10)`
-/

namespace A050912.P10383901358098858257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305027 (A056115 n + 10).toNat

end

end A050912.P10383901358098858257

/-! ## A050912.P5720895090340028396

`A305027(eq[4, A025581(n)])`
-/

namespace A050912.P5720895090340028396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050912.P5720895090340028396

/-! ## A050912.P13545798067842845927

`A305027(eq[9, A099375(n)])`
-/

namespace A050912.P13545798067842845927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305027 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050912.P13545798067842845927

/-!
# A050913: Pure 2-complexes on an infinite set of nodes with n multiple 2-simplexes. Also n-rowed binary matrices with all row sums 3, up to row and column permutation.

The programs for A050913, there is no canonical definition to state claims against.
-/

/-! ## A050913.P8240889749851342163

`A331461(A167614(n+2))`
-/

namespace A050913.P8240889749851342163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (A167614 (n + 2)).toNat

end

end A050913.P8240889749851342163

/-! ## A050913.P13434523887254019765

`A331461(A141214(n)+6)`
-/

namespace A050913.P13434523887254019765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (A141214 n + 6).toNat

end

end A050913.P13434523887254019765

/-! ## A050913.P16639733637753133464

`A331461(A052905(n)+8)`
-/

namespace A050913.P16639733637753133464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (A052905 n + 8).toNat

end

end A050913.P16639733637753133464

/-! ## A050913.P6759997697805663313

`A331461(eq[2, A141169(n)])`
-/

namespace A050913.P6759997697805663313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050913.P6759997697805663313

/-! ## A050913.P5335254281262611507

`A331461(eq[3, A002262(n)])`
-/

namespace A050913.P5335254281262611507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050913.P5335254281262611507

/-!
# A050914: a(n) = n*3^n + 1.

The programs for A050914, the canonical program `A050914.P3795340419774393656` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050914 has offset 0).

The definition of A050914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*3^n+1` (program `A050914.P3795340419774393656`, by `A050914.P3795340419774393656.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050914.P3795340419774393656

`n*3^n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050914

/-- `n*3^n+1` -/
def P3795340419774393656.Spec : Prop :=
  ∀ n, (P3795340419774393656.a n : ℤ) = A050914 n

theorem P3795340419774393656.correct : P3795340419774393656.Spec := by
  intro n
  simp only [A050914]

end A050914

/-! ## A050914.P5374762698941460832

`ogf((1-3x+6x^2)/(1-7x+15x^2-9x^3))`
-/

namespace A050914.P5374762698941460832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 6] [1, -7, 15, -9] n

end

end A050914.P5374762698941460832

namespace A050914

/-- `ogf((1-3x+6x^2)/(1-7x+15x^2-9x^3))` -/
def P5374762698941460832.Spec : Prop :=
  ∀ n, P5374762698941460832.a n = A050914 n

end A050914

/-! ## A050914.P10136166937302879863

`abs(xor(3^n*n, -1))`
-/

namespace A050914.P10136166937302879863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (3 ^ n * n : ℤ) (-1)|

end

end A050914.P10136166937302879863

namespace A050914

/-- `abs(xor(3^n*n, -1))` -/
def P10136166937302879863.Spec : Prop :=
  ∀ n, P10136166937302879863.a n = A050914 n

end A050914

/-! ## A050914.P17305547366644197804

`-xor(n*3^n, -1)`
-/

namespace A050914.P17305547366644197804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (n * 3 ^ n : ℤ) (-1)

end

end A050914.P17305547366644197804

namespace A050914

/-- `-xor(n*3^n, -1)` -/
def P17305547366644197804.Spec : Prop :=
  ∀ n, P17305547366644197804.a n = A050914 n

end A050914

/-! ## A050914.P9412225154761321808

`∑[ogf((1-3x+6x^2)/(1-6x+9x^2))]`
-/

namespace A050914.P9412225154761321808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 6] [1, -6, 9] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050914.P9412225154761321808

namespace A050914

/-- `∑[ogf((1-3x+6x^2)/(1-6x+9x^2))]` -/
def P9412225154761321808.Spec : Prop :=
  ∀ n, P9412225154761321808.a n = A050914 n

end A050914

/-! ## A050914.P12981188893572980215

`∑[or(1, A229277(n))]`
-/

namespace A050914.P12981188893572980215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A229277 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050914.P12981188893572980215

namespace A050914

/-- `∑[or(1, A229277(n))]` -/
def P12981188893572980215.Spec : Prop :=
  ∀ n, P12981188893572980215.a n = A050914 n

end A050914

/-! ## A050914.P16641778117211396792

`∑[Δ[n²]*A133494(n)]`
-/

namespace A050914.P16641778117211396792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A133494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050914.P16641778117211396792

namespace A050914

/-- `∑[Δ[n²]*A133494(n)]` -/
def P16641778117211396792.Spec : Prop :=
  ∀ n, P16641778117211396792.a n = A050914 n

end A050914

/-! ## A050914.P12601563944465624330

`∑[∑[(n+1)*A052156(n)]]`
-/

namespace A050914.P12601563944465624330
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A052156 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050914.P12601563944465624330

namespace A050914

/-- `∑[∑[(n+1)*A052156(n)]]` -/
def P12601563944465624330.Spec : Prop :=
  ∀ n, P12601563944465624330.a n = A050914 n

end A050914

/-! ## A050914.P211057138866088019

`∑{#}[n, C(n, #)*A167667(#)]`
-/

namespace A050914.P211057138866088019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A167667 k

end

end A050914.P211057138866088019

namespace A050914

/-- `∑{#}[n, C(n, #)*A167667(#)]` -/
def P211057138866088019.Spec : Prop :=
  ∀ n, P211057138866088019.a n = A050914 n

end A050914

/-! ## A050914.P9626759768171121604

`∑[∑[(n+1)*∑[A118264(n)]]]`
-/

namespace A050914.P9626759768171121604
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050914.P9626759768171121604

namespace A050914

/-- `∑[∑[(n+1)*∑[A118264(n)]]]` -/
def P9626759768171121604.Spec : Prop :=
  ∀ n, P9626759768171121604.a n = A050914 n

end A050914

/-! ## A050914.P17524445460182753317

`abs(2-3*(A027471(n+1)+1))`
-/

namespace A050914.P17524445460182753317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - 3 * (A027471 (n + 1) + 1)|

end

end A050914.P17524445460182753317

namespace A050914

/-- `abs(2-3*(A027471(n+1)+1))` -/
def P17524445460182753317.Spec : Prop :=
  ∀ n, P17524445460182753317.a n = A050914 n

end A050914

/-! ## A050914.P14662348791433070971

`∑[(2*n+1)*abs(A141413(n+1))]`
-/

namespace A050914.P14662348791433070971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * |A141413 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050914.P14662348791433070971

namespace A050914

/-- `∑[(2*n+1)*abs(A141413(n+1))]` -/
def P14662348791433070971.Spec : Prop :=
  ∀ n, P14662348791433070971.a n = A050914 n

end A050914

/-! ## A050914.P17340408305379508368

`round((2*n*Δ[A007051(n)]+1)/2)`
-/

namespace A050914.P17340408305379508368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 * n : ℤ) * (f1 (n + 1) - f1 n) + 1 : ℚ) / 2)

end

end A050914.P17340408305379508368

namespace A050914

/-- `round((2*n*Δ[A007051(n)]+1)/2)` -/
def P17340408305379508368.Spec : Prop :=
  ∀ n, P17340408305379508368.a n = A050914 n

end A050914

/-! ## A050914.P10242711443859941243

`∑[A229277(n)+A000007(n)]`
-/

namespace A050914.P10242711443859941243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229277 n + A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050914.P10242711443859941243

namespace A050914

/-- `∑[A229277(n)+A000007(n)]` -/
def P10242711443859941243.Spec : Prop :=
  ∀ n, P10242711443859941243.a n = A050914 n

end A050914

/-! ## A050914.P17424980915997090143

`∑[A027261(n)-A140429(n)]`
-/

namespace A050914.P17424980915997090143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027261 n - A140429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050914.P17424980915997090143

namespace A050914

/-- `∑[A027261(n)-A140429(n)]` -/
def P17424980915997090143.Spec : Prop :=
  ∀ n, P17424980915997090143.a n = A050914 n

end A050914

/-! ## A050914.P953015749190554748

`abs(A083877(n+1)-A080926(n))`
-/

namespace A050914.P953015749190554748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083877 (n + 1) - A080926 n|

end

end A050914.P953015749190554748

namespace A050914

/-- `abs(A083877(n+1)-A080926(n))` -/
def P953015749190554748.Spec : Prop :=
  ∀ n, P953015749190554748.a n = A050914 n

end A050914

/-! ## A050914.P6098444031996065097

`lcm(A036290(n)+1, gcd(n, A010685(n)))`
-/

namespace A050914.P6098444031996065097
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A036290 n + 1) (Int.gcd (n : ℤ) (A010685 n) : ℤ)

end

end A050914.P6098444031996065097

namespace A050914

/-- `lcm(A036290(n)+1, gcd(n, A010685(n)))` -/
def P6098444031996065097.Spec : Prop :=
  ∀ n, (P6098444031996065097.a n : ℤ) = A050914 n

end A050914

/-! ## A050914.P16545929842248942635

`abs(Δ[A024024(n)]-A288834(n+1))`
-/

namespace A050914.P16545929842248942635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024024 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n - A288834 (n + 1)|

end

end A050914.P16545929842248942635

namespace A050914

/-- `abs(Δ[A024024(n)]-A288834(n+1))` -/
def P16545929842248942635.Spec : Prop :=
  ∀ n, P16545929842248942635.a n = A050914 n

end A050914

/-! ## A050914.P1699877309690886823

`∑[(2*n+1)*A017913(A004275(n))]`
-/

namespace A050914.P1699877309690886823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A017913 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050914.P1699877309690886823

namespace A050914

/-- `∑[(2*n+1)*A017913(A004275(n))]` -/
def P1699877309690886823.Spec : Prop :=
  ∀ n, P1699877309690886823.a n = A050914 n

end A050914

/-! ## A050914.P12801004121845879880

`∑[(2*n+1)*A108411(A004273(n))]`
-/

namespace A050914.P12801004121845879880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A108411 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050914.P12801004121845879880

namespace A050914

/-- `∑[(2*n+1)*A108411(A004273(n))]` -/
def P12801004121845879880.Spec : Prop :=
  ∀ n, P12801004121845879880.a n = A050914 n

end A050914

/-!
# A050915: a(n) = n*4^n + 1.

The programs for A050915, the canonical program `A050915.P14282271171773606295` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050915 has offset 0).

The definition of A050915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*4^n+1` (program `A050915.P14282271171773606295`, by `A050915.P14282271171773606295.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050915.P14282271171773606295

`n*4^n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050915

/-- `n*4^n+1` -/
def P14282271171773606295.Spec : Prop :=
  ∀ n, (P14282271171773606295.a n : ℤ) = A050915 n

theorem P14282271171773606295.correct : P14282271171773606295.Spec := by
  intro n
  simp only [A050915]

end A050915

/-! ## A050915.P18372106303464450876

`ogf((1-4x+12x^2)/(1-9x+24x^2-16x^3))`
-/

namespace A050915.P18372106303464450876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 12] [1, -9, 24, -16] n

end

end A050915.P18372106303464450876

namespace A050915

/-- `ogf((1-4x+12x^2)/(1-9x+24x^2-16x^3))` -/
def P18372106303464450876.Spec : Prop :=
  ∀ n, P18372106303464450876.a n = A050915 n

end A050915

/-! ## A050915.P9718724069302681812

`or(1, 4^n*n)`
-/

namespace A050915.P9718724069302681812
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 ^ n * n)

end

end A050915.P9718724069302681812

namespace A050915

/-- `or(1, 4^n*n)` -/
def P9718724069302681812.Spec : Prop :=
  ∀ n, (P9718724069302681812.a n : ℤ) = A050915 n

end A050915

/-! ## A050915.P15674408420932097800

`xor(1, 4^n*n)`
-/

namespace A050915.P15674408420932097800
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 ^ n * n)

end

end A050915.P15674408420932097800

namespace A050915

/-- `xor(1, 4^n*n)` -/
def P15674408420932097800.Spec : Prop :=
  ∀ n, (P15674408420932097800.a n : ℤ) = A050915 n

end A050915

/-! ## A050915.P1827143006958730400

`∑{#}[n, (2-C(#, n))^(2*n)]`
-/

namespace A050915.P1827143006958730400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (2 - (Nat.choose k n : ℤ)) ^ (2 * n)

end

end A050915.P1827143006958730400

namespace A050915

/-- `∑{#}[n, (2-C(#, n))^(2*n)]` -/
def P1827143006958730400.Spec : Prop :=
  ∀ n, P1827143006958730400.a n = A050915 n

end A050915

/-! ## A050915.P7148174309985935542

`A005183(2*n)`
-/

namespace A050915.P7148174309985935542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005183 (2 * n)

end

end A050915.P7148174309985935542

namespace A050915

/-- `A005183(2*n)` -/
def P7148174309985935542.Spec : Prop :=
  ∀ n, P7148174309985935542.a n = A050915 n

end A050915

/-! ## A050915.P12280231853848834910

`record[A085750(n+1)+1]`
-/

namespace A050915.P12280231853848834910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085750 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050915.P12280231853848834910

namespace A050915

/-- `record[A085750(n+1)+1]` -/
def P12280231853848834910.Spec : Prop :=
  ∀ n, P12280231853848834910.a n = A050915 n

end A050915

/-! ## A050915.P6609310274602741328

`record[A005183(n)/A033999(n)]`
-/

namespace A050915.P6609310274602741328
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005183 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050915.P6609310274602741328

namespace A050915

/-- `record[A005183(n)/A033999(n)]` -/
def P6609310274602741328.Spec : Prop :=
  ∀ n, P6609310274602741328.a n = (A050915 n : ℚ)

end A050915

/-! ## A050915.P2880719702930875074

`record[or(A001787(n), A033999(n))]`
-/

namespace A050915.P2880719702930875074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001787 n) (A033999 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050915.P2880719702930875074

namespace A050915

/-- `record[or(A001787(n), A033999(n))]` -/
def P2880719702930875074.Spec : Prop :=
  ∀ n, P2880719702930875074.a n = A050915 n

end A050915

/-! ## A050915.P16700149049326528967

`ceil(A002064(2*n)/2)`
-/

namespace A050915.P16700149049326528967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A002064 (2 * n) : ℚ) / 2⌉

end

end A050915.P16700149049326528967

namespace A050915

/-- `ceil(A002064(2*n)/2)` -/
def P16700149049326528967.Spec : Prop :=
  ∀ n, P16700149049326528967.a n = A050915 n

end A050915

/-! ## A050915.P2906087006613901545

`ceil(A048474(2*n)/3)`
-/

namespace A050915.P2906087006613901545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048474 (2 * n) : ℚ) / 3⌉

end

end A050915.P2906087006613901545

namespace A050915

/-- `ceil(A048474(2*n)/3)` -/
def P2906087006613901545.Spec : Prop :=
  ∀ n, P2906087006613901545.a n = A050915 n

end A050915

/-! ## A050915.P14583678129781433458

`(A005985(2*n+1)+1)/2`
-/

namespace A050915.P14583678129781433458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005985 (2 * n + 1) + 1 : ℚ) / 2

end

end A050915.P14583678129781433458

namespace A050915

/-- `(A005985(2*n+1)+1)/2` -/
def P14583678129781433458.Spec : Prop :=
  ∀ n, P14583678129781433458.a n = (A050915 n : ℚ)

end A050915

/-! ## A050915.P13649696354951638303

`(n*A081294(n+1)+2)/2`
-/

namespace A050915.P13649696354951638303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A081294 (n + 1) + 2 : ℚ) / 2

end

end A050915.P13649696354951638303

namespace A050915

/-- `(n*A081294(n+1)+2)/2` -/
def P13649696354951638303.Spec : Prop :=
  ∀ n, P13649696354951638303.a n = (A050915 n : ℚ)

end A050915

/-! ## A050915.P770996976222418066

`(n*A000079(n+1)²+4)/4`
-/

namespace A050915.P770996976222418066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000079 (n + 1) ^ 2 + 4 : ℚ) / 4

end

end A050915.P770996976222418066

namespace A050915

/-- `(n*A000079(n+1)²+4)/4` -/
def P770996976222418066.Spec : Prop :=
  ∀ n, P770996976222418066.a n = (A050915 n : ℚ)

end A050915

/-! ## A050915.P4669646265031516559

`(n*A000079(2*(n+1))+4)/4`
-/

namespace A050915.P4669646265031516559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A000079 (2 * (n + 1)) + 4 : ℚ) / 4

end

end A050915.P4669646265031516559

namespace A050915

/-- `(n*A000079(2*(n+1))+4)/4` -/
def P4669646265031516559.Spec : Prop :=
  ∀ n, P4669646265031516559.a n = (A050915 n : ℚ)

end A050915

/-! ## A050915.P17800143032523294343

`(A048495(2*n)+A000079(n)²)/2`
-/

namespace A050915.P17800143032523294343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048495 (2 * n) + A000079 n ^ 2 : ℚ) / 2

end

end A050915.P17800143032523294343

namespace A050915

/-- `(A048495(2*n)+A000079(n)²)/2` -/
def P17800143032523294343.Spec : Prop :=
  ∀ n, P17800143032523294343.a n = (A050915 n : ℚ)

end A050915

/-! ## A050915.P9438540832229982278

`(A002064(2*n)+A000034(2*n))/2`
-/

namespace A050915.P9438540832229982278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002064 (2 * n) + A000034 (2 * n) : ℚ) / 2

end

end A050915.P9438540832229982278

namespace A050915

/-- `(A002064(2*n)+A000034(2*n))/2` -/
def P9438540832229982278.Spec : Prop :=
  ∀ n, P9438540832229982278.a n = (A050915 n : ℚ)

end A050915

/-! ## A050915.P13464311103339555196

`(A048495(2*n)+A000079(2*n))/2`
-/

namespace A050915.P13464311103339555196
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048495 (2 * n) + A000079 (2 * n) : ℚ) / 2

end

end A050915.P13464311103339555196

namespace A050915

/-- `(A048495(2*n)+A000079(2*n))/2` -/
def P13464311103339555196.Spec : Prop :=
  ∀ n, P13464311103339555196.a n = (A050915 n : ℚ)

end A050915

/-! ## A050915.P3235556225317362147

`A003013(2*n+1)/Δ[n²]`
-/

namespace A050915.P3235556225317362147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003013 (2 * n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)

end

end A050915.P3235556225317362147

namespace A050915

/-- `A003013(2*n+1)/Δ[n²]` -/
def P3235556225317362147.Spec : Prop :=
  ∀ n, P3235556225317362147.a n = (A050915 n : ℚ)

end A050915

/-! ## A050915.P5709713659273306114

`ceil(A048482(2*n)/(2*n+1))`
-/

namespace A050915.P5709713659273306114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048482 (2 * n) : ℚ) / (2 * n + 1 : ℚ)⌉

end

end A050915.P5709713659273306114

namespace A050915

/-- `ceil(A048482(2*n)/(2*n+1))` -/
def P5709713659273306114.Spec : Prop :=
  ∀ n, P5709713659273306114.a n = A050915 n

end A050915

/-!
# A050916: a(n) = n*5^n + 1.

The programs for A050916, the canonical program `A050916.P966275114646513705` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050916 has offset 0).

The definition of A050916 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*5^n+1` (program `A050916.P966275114646513705`, by `A050916.P966275114646513705.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050916.P966275114646513705

`n*5^n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050916

/-- `n*5^n+1` -/
def P966275114646513705.Spec : Prop :=
  ∀ n, (P966275114646513705.a n : ℤ) = A050916 n

theorem P966275114646513705.correct : P966275114646513705.Spec := by
  intro n
  simp only [A050916]

end A050916

/-! ## A050916.P6703964972658554505

`ogf((1-5x+20x^2)/(1-11x+35x^2-25x^3))`
-/

namespace A050916.P6703964972658554505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -5, 20] [1, -11, 35, -25] n

end

end A050916.P6703964972658554505

namespace A050916

/-- `ogf((1-5x+20x^2)/(1-11x+35x^2-25x^3))` -/
def P6703964972658554505.Spec : Prop :=
  ∀ n, P6703964972658554505.a n = A050916 n

end A050916

/-! ## A050916.P17376519483606253810

`-xor(-1, A036291(n))`
-/

namespace A050916.P17376519483606253810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A036291 n)

end

end A050916.P17376519483606253810

namespace A050916

/-- `-xor(-1, A036291(n))` -/
def P17376519483606253810.Spec : Prop :=
  ∀ n, P17376519483606253810.a n = A050916 n

end A050916

/-! ## A050916.P17897392293342934831

`-xor(n*A000351(n), log2(1/2))`
-/

namespace A050916.P17897392293342934831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n : ℤ) * A000351 n) (SequenceMachineLib.roundAway (Real.logb 2 ((1 : ℚ) / 2 : ℝ)))

end

end A050916.P17897392293342934831

namespace A050916

/-- `-xor(n*A000351(n), log2(1/2))` -/
def P17897392293342934831.Spec : Prop :=
  ∀ n, P17897392293342934831.a n = A050916 n

end A050916

/-! ## A050916.P13115820795064894468

`abs(xor(A033999(n), A036291(n)))`
-/

namespace A050916.P13115820795064894468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A033999 n) (A036291 n)|

end

end A050916.P13115820795064894468

namespace A050916

/-- `abs(xor(A033999(n), A036291(n)))` -/
def P13115820795064894468.Spec : Prop :=
  ∀ n, P13115820795064894468.a n = A050916 n

end A050916

/-! ## A050916.P4290609067962949995

`or(A036291(n)+1, A000007(n))`
-/

namespace A050916.P4290609067962949995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036291 n + 1) (A000007 n)

end

end A050916.P4290609067962949995

namespace A050916

/-- `or(A036291(n)+1, A000007(n))` -/
def P4290609067962949995.Spec : Prop :=
  ∀ n, P4290609067962949995.a n = A050916 n

end A050916

/-! ## A050916.P9038323623384536926

`abs(A153881(n+1)-A036291(n))`
-/

namespace A050916.P9038323623384536926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A153881 (n + 1) - A036291 n|

end

end A050916.P9038323623384536926

namespace A050916

/-- `abs(A153881(n+1)-A036291(n))` -/
def P9038323623384536926.Spec : Prop :=
  ∀ n, P9038323623384536926.a n = A050916 n

end A050916

/-! ## A050916.P15650590606110234824

`∑{e}[A126243(n+1), A036291(n)+#]`
-/

namespace A050916.P15650590606110234824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A036291 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A050916.P15650590606110234824

namespace A050916

/-- `∑{e}[A126243(n+1), A036291(n)+#]` -/
def P15650590606110234824.Spec : Prop :=
  ∀ n, P15650590606110234824.a n = A050916 n

end A050916

/-! ## A050916.P8825114351575114223

`∑{e}[A168031(n+1), A036291(n)+#]`
-/

namespace A050916.P8825114351575114223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A036291 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A050916.P8825114351575114223

namespace A050916

/-- `∑{e}[A168031(n+1), A036291(n)+#]` -/
def P8825114351575114223.Spec : Prop :=
  ∀ n, P8825114351575114223.a n = A050916 n

end A050916

/-! ## A050916.P7216947832639249360

`∑{e}[A235266(n+1), A036291(n)+#]`
-/

namespace A050916.P7216947832639249360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A036291 n + (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A050916.P7216947832639249360

namespace A050916

/-- `∑{e}[A235266(n+1), A036291(n)+#]` -/
def P7216947832639249360.Spec : Prop :=
  ∀ n, P7216947832639249360.a n = A050916 n

end A050916

/-! ## A050916.P48467293332686488

`ceil(A036291(n)+2/(5*A007318(n)))`
-/

namespace A050916.P48467293332686488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036291 n : ℚ) + 2 / (5 * A007318 n : ℚ)⌉

end

end A050916.P48467293332686488

namespace A050916

/-- `ceil(A036291(n)+2/(5*A007318(n)))` -/
def P48467293332686488.Spec : Prop :=
  ∀ n, P48467293332686488.a n = A050916 n

end A050916

/-! ## A050916.P14216488751927647781

`abs(A116156(n)/A001478(n+1)-1)`
-/

namespace A050916.P14216488751927647781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A116156 n : ℚ) / (A001478 (n + 1) : ℚ) - 1|

end

end A050916.P14216488751927647781

namespace A050916

/-- `abs(A116156(n)/A001478(n+1)-1)` -/
def P14216488751927647781.Spec : Prop :=
  ∀ n, P14216488751927647781.a n = (A050916 n : ℚ)

end A050916

/-!
# A050917: a(n) = n*6^n + 1.

The programs for A050917, the canonical program `A050917.P3700556668548926092` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050917 has offset 0).

The definition of A050917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*6^n+1` (program `A050917.P3700556668548926092`, by `A050917.P3700556668548926092.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050917.P3700556668548926092

`n*6^n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050917

/-- `n*6^n+1` -/
def P3700556668548926092.Spec : Prop :=
  ∀ n, (P3700556668548926092.a n : ℤ) = A050917 n

theorem P3700556668548926092.correct : P3700556668548926092.Spec := by
  intro n
  simp only [A050917]

end A050917

/-! ## A050917.P13516606740692990018

`ogf((1-6x+30x^2)/(1-13x+48x^2-36x^3))`
-/

namespace A050917.P13516606740692990018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6, 30] [1, -13, 48, -36] n

end

end A050917.P13516606740692990018

namespace A050917

/-- `ogf((1-6x+30x^2)/(1-13x+48x^2-36x^3))` -/
def P13516606740692990018.Spec : Prop :=
  ∀ n, P13516606740692990018.a n = A050917 n

end A050917

/-! ## A050917.P7321295585257055095

`or(1, 6^n*n)`
-/

namespace A050917.P7321295585257055095
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (6 ^ n * n)

end

end A050917.P7321295585257055095

namespace A050917

/-- `or(1, 6^n*n)` -/
def P7321295585257055095.Spec : Prop :=
  ∀ n, (P7321295585257055095.a n : ℤ) = A050917 n

end A050917

/-! ## A050917.P4952199724072444717

`xor(1, 6^n*n)`
-/

namespace A050917.P4952199724072444717
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (6 ^ n * n)

end

end A050917.P4952199724072444717

namespace A050917

/-- `xor(1, 6^n*n)` -/
def P4952199724072444717.Spec : Prop :=
  ∀ n, (P4952199724072444717.a n : ℤ) = A050917 n

end A050917

/-! ## A050917.P16067124803811243363

`ceil((3*n*A000400(n)+2)/3)`
-/

namespace A050917.P16067124803811243363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(3 * ((n : ℤ) * A000400 n) + 2 : ℚ) / 3⌉

end

end A050917.P16067124803811243363

namespace A050917

/-- `ceil((3*n*A000400(n)+2)/3)` -/
def P16067124803811243363.Spec : Prop :=
  ∀ n, P16067124803811243363.a n = A050917 n

end A050917

/-! ## A050917.P1136448751009571913

`record[or(A027266(n), A165326(n))]`
-/

namespace A050917.P1136448751009571913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A027266 n) (A165326 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050917.P1136448751009571913

namespace A050917

/-- `record[or(A027266(n), A165326(n))]` -/
def P1136448751009571913.Spec : Prop :=
  ∀ n, P1136448751009571913.a n = A050917 n

end A050917

/-! ## A050917.P5384125916928245546

`(A053469(n+1)-A000400(n)+1)*A010121(n²+1)`
-/

namespace A050917.P5384125916928245546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053469 (n + 1) - A000400 n + 1) * A010121 (n ^ 2 + 1)

end

end A050917.P5384125916928245546

namespace A050917

/-- `(A053469(n+1)-A000400(n)+1)*A010121(n²+1)` -/
def P5384125916928245546.Spec : Prop :=
  ∀ n, P5384125916928245546.a n = A050917 n

end A050917

/-! ## A050917.P11423640352381196286

`(A116164(n)+1+n)/(n+1)`
-/

namespace A050917.P11423640352381196286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116164 n + 1 + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A050917.P11423640352381196286

namespace A050917

/-- `(A116164(n)+1+n)/(n+1)` -/
def P11423640352381196286.Spec : Prop :=
  ∀ n, P11423640352381196286.a n = (A050917 n : ℚ)

theorem P11423640352381196286.correct : P11423640352381196286.Spec := by
  intro n
  simp only [A050917, Nat.add_sub_cancel, A050917.P11423640352381196286.a, A050917.P3700556668548926092.a, A116164, A116164.P10854320643788573529.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050917

/-! ## A050917.P108111844383243310

`(A036292(n)+1)%A266806(n)`
-/

namespace A050917.P108111844383243310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036292 n + 1) (A266806 n)

end

end A050917.P108111844383243310

namespace A050917

/-- `(A036292(n)+1)%A266806(n)` -/
def P108111844383243310.Spec : Prop :=
  ∀ n, P108111844383243310.a n = A050917 n

end A050917

/-! ## A050917.P15098358991825417249

`abs(n*A026549(2*n)-A008683(A100276(n)))`
-/

namespace A050917.P15098358991825417249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A026549 (2 * n) - A008683 (A100276 n).toNat|

end

end A050917.P15098358991825417249

namespace A050917

/-- `abs(n*A026549(2*n)-A008683(A100276(n)))` -/
def P15098358991825417249.Spec : Prop :=
  ∀ n, P15098358991825417249.a n = A050917 n

end A050917

/-!
# A050918: Woodall primes: primes of form k*2^k-1.

The programs for A050918, there is no canonical definition to state claims against.
-/

/-! ## A050918.P5083283480441477032

`A003261(A002234(n+1))`
-/

namespace A050918.P5083283480441477032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003261 (A002234 (n + 1)).toNat

end

end A050918.P5083283480441477032

/-!
# A050919: a(n) = n*7^n + 1.

The programs for A050919, the canonical program `A050919.P18278914643895436143` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050919 has offset 0).

The definition of A050919 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*7^n+1` (program `A050919.P18278914643895436143`, by `A050919.P18278914643895436143.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050919.P18278914643895436143

`n*7^n+1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050919

/-- `n*7^n+1` -/
def P18278914643895436143.Spec : Prop :=
  ∀ n, (P18278914643895436143.a n : ℤ) = A050919 n

theorem P18278914643895436143.correct : P18278914643895436143.Spec := by
  intro n
  simp only [A050919]

end A050919

/-! ## A050919.P8896211985591104086

`ogf((1-7x+42x^2)/(1-15x+63x^2-49x^3))`
-/

namespace A050919.P8896211985591104086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -7, 42] [1, -15, 63, -49] n

end

end A050919.P8896211985591104086

namespace A050919

/-- `ogf((1-7x+42x^2)/(1-15x+63x^2-49x^3))` -/
def P8896211985591104086.Spec : Prop :=
  ∀ n, P8896211985591104086.a n = A050919 n

end A050919

/-! ## A050919.P5351660150532872052

`-xor(-1, A036293(n))`
-/

namespace A050919.P5351660150532872052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A036293 n)

end

end A050919.P5351660150532872052

namespace A050919

/-- `-xor(-1, A036293(n))` -/
def P5351660150532872052.Spec : Prop :=
  ∀ n, P5351660150532872052.a n = A050919 n

end A050919

/-! ## A050919.P6542110136603492537

`-xor(n*A000420(n), -1)`
-/

namespace A050919.P6542110136603492537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor ((n : ℤ) * A000420 n) (-1)

end

end A050919.P6542110136603492537

namespace A050919

/-- `-xor(n*A000420(n), -1)` -/
def P6542110136603492537.Spec : Prop :=
  ∀ n, P6542110136603492537.a n = A050919 n

end A050919

/-! ## A050919.P12224682946971095182

`abs(n*A103458(n)+1-n)`
-/

namespace A050919.P12224682946971095182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A103458 n + 1 - (n : ℤ)|

end

end A050919.P12224682946971095182

namespace A050919

/-- `abs(n*A103458(n)+1-n)` -/
def P12224682946971095182.Spec : Prop :=
  ∀ n, P12224682946971095182.a n = A050919 n

end A050919

/-! ## A050919.P11343441009678849735

`abs(xor(A033999(n), A036293(n)))`
-/

namespace A050919.P11343441009678849735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (A033999 n) (A036293 n)|

end

end A050919.P11343441009678849735

namespace A050919

/-- `abs(xor(A033999(n), A036293(n)))` -/
def P11343441009678849735.Spec : Prop :=
  ∀ n, P11343441009678849735.a n = A050919 n

end A050919

/-! ## A050919.P5489779259255882508

`or(A036293(n)+1, A000007(n))`
-/

namespace A050919.P5489779259255882508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036293 n + 1) (A000007 n)

end

end A050919.P5489779259255882508

namespace A050919

/-- `or(A036293(n)+1, A000007(n))` -/
def P5489779259255882508.Spec : Prop :=
  ∀ n, P5489779259255882508.a n = A050919 n

end A050919

/-! ## A050919.P3858345966579225256

`(A036293(n)+1)%A064753(n+1)`
-/

namespace A050919.P3858345966579225256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036293 n + 1) (A064753 (n + 1))

end

end A050919.P3858345966579225256

namespace A050919

/-- `(A036293(n)+1)%A064753(n+1)` -/
def P3858345966579225256.Spec : Prop :=
  ∀ n, P3858345966579225256.a n = A050919 n

end A050919

/-! ## A050919.P1492362983551865234

`(A116165(n)+1+n)/(n+1)`
-/

namespace A050919.P1492362983551865234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116165 n + 1 + (n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A050919.P1492362983551865234

namespace A050919

/-- `(A116165(n)+1+n)/(n+1)` -/
def P1492362983551865234.Spec : Prop :=
  ∀ n, P1492362983551865234.a n = (A050919 n : ℚ)

theorem P1492362983551865234.correct : P1492362983551865234.Spec := by
  intro n
  simp only [A050919, Nat.add_sub_cancel, A050919.P1492362983551865234.a, A050919.P18278914643895436143.a, A116165, A116165.P322017445968686295.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050919

/-! ## A050919.P16393922930362958583

`(n*A000420(n)+1)%A180035(2*n+3)`
-/

namespace A050919.P16393922930362958583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A000420 n + 1) (A180035 (2 * n + 3))

end

end A050919.P16393922930362958583

namespace A050919

/-- `(n*A000420(n)+1)%A180035(2*n+3)` -/
def P16393922930362958583.Spec : Prop :=
  ∀ n, P16393922930362958583.a n = A050919 n

end A050919

/-!
# A050921: Smallest prime of form n*2^m+1, m >= 0, or 0 if no such prime exists.

The programs for A050921, there is no canonical definition to state claims against.
-/

/-! ## A050921.P9827243635608630702

`(n+1)*2^A040076(n+1)+1`
-/

namespace A050921.P9827243635608630702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (A040076 (n + 1) : ℤ) + 1

end

end A050921.P9827243635608630702

/-! ## A050921.P164083377820449774

`(n+1)*A000079(A040076(n+1))+1`
-/

namespace A050921.P164083377820449774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 (A040076 (n + 1)).toNat + 1

end

end A050921.P164083377820449774

/-! ## A050921.P6406789239207270899

`(n+1)*A000079(A225721(n+2))+1`
-/

namespace A050921.P6406789239207270899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000079 (A225721 (n + 2)).toNat + 1

end

end A050921.P6406789239207270899

/-! ## A050921.P9109100505056206939

`A034694(lcm(n+1, A079706(n+1)))`
-/

namespace A050921.P9109100505056206939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (Int.lcm (n + 1 : ℤ) (A079706 (n + 1)))

end

end A050921.P9109100505056206939

/-! ## A050921.P10998992548430922990

`A303636(A008292(n+1))+A034694(n+1)`
-/

namespace A050921.P10998992548430922990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303636 (A008292 (n + 1)).toNat + A034694 (n + 1)

end

end A050921.P10998992548430922990

/-!
# A050922: Triangle in which n-th row gives prime factors of n-th Fermat number 2^(2^n)+1.

The programs for A050922, there is no canonical definition to state claims against.
-/

/-! ## A050922.P5320054613676313985

`A176689(A285039(n+1))`
-/

namespace A050922.P5320054613676313985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176689 (A285039 (n + 1)).toNat

end

end A050922.P5320054613676313985

/-! ## A050922.P13528087956613164442

`A176689(A099884(n))`
-/

namespace A050922.P13528087956613164442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176689 (A099884 n).toNat

end

end A050922.P13528087956613164442

/-! ## A050922.P4694335593039806535

`A176689(A075300(n)+1)`
-/

namespace A050922.P4694335593039806535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176689 (A075300 n + 1).toNat

end

end A050922.P4694335593039806535

/-!
# A050923: a(n) = 2^(n!).

The programs for A050923, the canonical program `A050923.P13598549048314492457` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050923 has offset 0).

The definition of A050923 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n!` (program `A050923.P13598549048314492457`, by `A050923.P13598549048314492457.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050923.P13598549048314492457

`2^n!`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050923

/-- `2^n!` -/
def P13598549048314492457.Spec : Prop :=
  ∀ n, (P13598549048314492457.a n : ℤ) = A050923 n

theorem P13598549048314492457.correct : P13598549048314492457.Spec := by
  intro n
  simp only [A050923]

end A050923

/-!
# A050924: a(n) = (a(n-1)+1)^(a(n-1)), a(0) = 0.

The programs for A050924, there is no canonical definition to state claims against.
-/

/-! ## A050924.P14108829593279280053

`10^a(n-1)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=9`
-/

namespace A050924.P14108829593279280053
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 9] fun n a =>
  10 ^ a (n - 1)

end

end A050924.P14108829593279280053

/-!
# A050925: Numerator of (n+1)*Bernoulli(n).

The programs for A050925, there is no canonical definition to state claims against.
-/

/-! ## A050925.P11786655660003923879

`A027641(n)*A159353(n+1)`
-/

namespace A050925.P11786655660003923879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A159353 (n + 1)

end

end A050925.P11786655660003923879

/-! ## A050925.P7484384388803370243

`A027641(n)*A326478(n+1)`
-/

namespace A050925.P7484384388803370243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 n * A326478 (n + 1)

end

end A050925.P7484384388803370243

/-! ## A050925.P6696197933707811031

`A159353(n+1)*A176327(n)-char[1]`
-/

namespace A050925.P6696197933707811031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (n + 1) * A176327 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A050925.P6696197933707811031

/-! ## A050925.P8386337110774247429

`or(-char[1], A164555(n))*A159353(n+1)`
-/

namespace A050925.P8386337110774247429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A164555 n) * A159353 (n + 1)

end

end A050925.P8386337110774247429

/-! ## A050925.P13263278969973210875

`(-1)^n*A164555(round(sqrt(n²+1)))*A159353(n+1)`
-/

namespace A050925.P13263278969973210875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A164555 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat * A159353 (n + 1)

end

end A050925.P13263278969973210875

/-! ## A050925.P16939556332460340902

`A159075(n)+A159353(n+1)*A176327(n)`
-/

namespace A050925.P16939556332460340902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159075 n + A159353 (n + 1) * A176327 n

end

end A050925.P16939556332460340902

/-! ## A050925.P663702204377384658

`A159353(n+1)*A164555(n)*A033999(n)`
-/

namespace A050925.P663702204377384658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (n + 1) * A164555 n * A033999 n

end

end A050925.P663702204377384658

/-! ## A050925.P8666109543307452859

`A326579(n+1)/A027642(n)*A027641(n)`
-/

namespace A050925.P8666109543307452859
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326579 (n + 1) : ℚ) / (A027642 n : ℚ) * (A027641 n : ℚ)

end

end A050925.P8666109543307452859

/-! ## A050925.P223820231867496135

`A159353(n+1)*A309873(n+1)*A164555(n)`
-/

namespace A050925.P223820231867496135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159353 (n + 1) * A309873 (n + 1) * A164555 n

end

end A050925.P223820231867496135

/-! ## A050925.P14662504061955716508

`A140351(n+1)+a(n-1)` with `a(0)=1, a(1)=-1, a(2)=1`
-/

namespace A050925.P14662504061955716508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 1] fun n a =>
  A140351 (n + 1) + a (n - 1)

end

end A050925.P14662504061955716508

/-! ## A050925.P7346928162638403321

`A053382(∑[n+2]-1)`
-/

namespace A050925.P7346928162638403321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053382 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A050925.P7346928162638403321

/-! ## A050925.P15265921183370055577

`A196838(∑[n+1]+1)`
-/

namespace A050925.P15265921183370055577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196838 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A050925.P15265921183370055577

/-! ## A050925.P17371511710388212496

`A000188(A326578(n+1))*A027641(n)`
-/

namespace A050925.P17371511710388212496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A326578 (n + 1)).toNat * A027641 n

end

end A050925.P17371511710388212496

/-!
# A050926: Binary representation of A007908(n).

The programs for A050926, the canonical program `A050926.P6020126411824028661` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050926 has offset 1).

The definition of A050926 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A050926.P6020126411824028661

`A007088(A007908(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A050926

/-- `A007088(A007908(n+1))` -/
def P6020126411824028661.Spec : Prop :=
  ∀ n, P6020126411824028661.a n = A050926 (n + 1)

theorem P6020126411824028661.correct : P6020126411824028661.Spec := by
  intro n
  simp only [A050926, Nat.add_sub_cancel]

end A050926

/-!
# A050927: Number of directed multigraphs with loops on 3 nodes with n arcs.

The programs for A050927, there is no canonical definition to state claims against.
-/

/-! ## A050927.P7125415057232172300

`A138107(∑[n+3]+n+3)`
-/

namespace A050927.P7125415057232172300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A050927.P7125415057232172300

/-! ## A050927.P6465244745584660579

`record[A138107(abs(A046691(n)))]`
-/

namespace A050927.P6465244745584660579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050927.P6465244745584660579

/-! ## A050927.P18227503413817275409

`record[C(A138107(n), A318557(n+2))]`
-/

namespace A050927.P18227503413817275409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A138107 n).toNat (A318557 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050927.P18227503413817275409

/-! ## A050927.P7527595526612437887

`record[gcd(A138107(n+1), A182172(n+4))]`
-/

namespace A050927.P7527595526612437887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138107 (n + 1)) (A182172 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050927.P7527595526612437887

/-! ## A050927.P3498971110869128427

`record[A138107(A038722(A167499(n)))]`
-/

namespace A050927.P3498971110869128427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (A038722 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050927.P3498971110869128427

/-!
# A050928: Sum of digits of A050926(n).

The programs for A050928, there is no canonical definition to state claims against.
-/

/-! ## A050928.P12615373027978857424

`∑{digits}[A097583(n+1), A000120(#)]`
-/

namespace A050928.P12615373027978857424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097583 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000120 x).sum

end

end A050928.P12615373027978857424

/-!
# A050929: Number of directed multigraphs with loops on 4 nodes with n arcs.

The programs for A050929, there is no canonical definition to state claims against.
-/

/-! ## A050929.P3558740462983832215

`A138107(∑[n+5]+5)`
-/

namespace A050929.P3558740462983832215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A050929.P3558740462983832215

/-! ## A050929.P18401030588234513230

`record[A138107(A052905(n))]`
-/

namespace A050929.P18401030588234513230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050929.P18401030588234513230

/-! ## A050929.P13096300324424311429

`record[A138107(A055999(n)+1)]`
-/

namespace A050929.P13096300324424311429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (A055999 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050929.P13096300324424311429

/-! ## A050929.P4170038663786627182

`record[A138107(abs(A046691(n))-1)]`
-/

namespace A050929.P4170038663786627182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (|A046691 n| - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050929.P4170038663786627182

/-! ## A050929.P9761905678386028855

`record[A138107(A046691(n+1)-1)]`
-/

namespace A050929.P9761905678386028855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138107 (A046691 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050929.P9761905678386028855

/-!
# A050930: Number of directed loopless multigraphs on 4 nodes with n arcs.

The programs for A050930, there is no canonical definition to state claims against.
-/

/-! ## A050930.P1083118461955094173

`A333361(eq[4, A025581(n)])`
-/

namespace A050930.P1083118461955094173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333361 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050930.P1083118461955094173

/-! ## A050930.P10107135985420171010

`A333361(A155212(n+1)+3)`
-/

namespace A050930.P10107135985420171010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333361 (A155212 (n + 1) + 3).toNat

end

end A050930.P10107135985420171010

/-! ## A050930.P12227075460476815408

`A333361(A027379(n+3)-2)`
-/

namespace A050930.P12227075460476815408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333361 (A027379 (n + 3) - 2).toNat

end

end A050930.P12227075460476815408

/-! ## A050930.P16552701914827904313

`A333361(A000124(n+5)-6)`
-/

namespace A050930.P16552701914827904313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333361 (A000124 (n + 5) - 6).toNat

end

end A050930.P16552701914827904313

/-! ## A050930.P14207628532555725194

`A333361(A133263(n+5)-7)`
-/

namespace A050930.P14207628532555725194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333361 (A133263 (n + 5) - 7).toNat

end

end A050930.P14207628532555725194

/-!
# A050931: Numbers having a prime factor congruent to 1 mod 6.

The programs for A050931, the canonical program `A050931.P15021199958239579984` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050931 has offset 1).

The definition of A050931 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6103 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050931.P2981049256698480366

`comp[A230780(n+1)-1]+1`
-/

namespace A050931.P2981049256698480366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230780 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A050931.P2981049256698480366

namespace A050931

/-- `comp[A230780(n+1)-1]+1` -/
def P2981049256698480366.Spec : Prop :=
  ∀ n, (P2981049256698480366.a n : ℤ) = A050931 (n + 1)

end A050931

/-! ## A050931.P12911170365297612784

`∪[A072864(n+1), A387216(n+1)]`
-/

namespace A050931.P12911170365297612784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050931.P12911170365297612784

namespace A050931

/-- `∪[A072864(n+1), A387216(n+1)]` -/
def P12911170365297612784.Spec : Prop :=
  ∀ n, (P12911170365297612784.a n : ℤ) = A050931 (n + 1)

end A050931

/-! ## A050931.P15809057949776981177

`∪[A232437(n+1), A387216(n+1)]`
-/

namespace A050931.P15809057949776981177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050931.P15809057949776981177

namespace A050931

/-- `∪[A232437(n+1), A387216(n+1)]` -/
def P15809057949776981177.Spec : Prop :=
  ∀ n, (P15809057949776981177.a n : ℤ) = A050931 (n + 1)

end A050931

/-! ## A050931.P916597218536961063

`eq[2, A100063(A003958(n+1))]+1`
-/

namespace A050931.P916597218536961063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100063 (A003958 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050931.P916597218536961063

namespace A050931

/-- `eq[2, A100063(A003958(n+1))]+1` -/
def P916597218536961063.Spec : Prop :=
  ∀ n, (P916597218536961063.a n : ℤ) = A050931 (n + 1)

end A050931

/-! ## A050931.P15021199958239579984

`lt[0, A005072(n+1)]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050931

/-- `lt[0, A005072(n+1)]+1` -/
def P15021199958239579984.Spec : Prop :=
  ∀ n, (P15021199958239579984.a n : ℤ) = A050931 (n + 1)

theorem P15021199958239579984.correct : P15021199958239579984.Spec := by
  intro n
  simp only [A050931, Nat.add_sub_cancel]

end A050931

/-! ## A050931.P18075280264615817261

`lt[0, A005073(n+1)]+1`
-/

namespace A050931.P18075280264615817261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005073 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050931.P18075280264615817261

namespace A050931

/-- `lt[0, A005073(n+1)]+1` -/
def P18075280264615817261.Spec : Prop :=
  ∀ n, (P18075280264615817261.a n : ℤ) = A050931 (n + 1)

end A050931

/-! ## A050931.P8327189834992165902

`lt[1, A170824(n+1)]+1`
-/

namespace A050931.P8327189834992165902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050931.P8327189834992165902

namespace A050931

/-- `lt[1, A170824(n+1)]+1` -/
def P8327189834992165902.Spec : Prop :=
  ∀ n, (P8327189834992165902.a n : ℤ) = A050931 (n + 1)

end A050931

/-! ## A050931.P2778256932413608365

`lt[1, gcd(3, ∏{p}[n, #-1])]`
-/

namespace A050931.P2778256932413608365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 3 (∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050931.P2778256932413608365

namespace A050931

/-- `lt[1, gcd(3, ∏{p}[n, #-1])]` -/
def P2778256932413608365.Spec : Prop :=
  ∀ n, (P2778256932413608365.a n : ℤ) = A050931 (n + 1)

end A050931

/-! ## A050931.P787824194777458247

`lt[2, ∑{d}[n, A000086(#)]]`
-/

namespace A050931.P787824194777458247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), A000086 d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050931.P787824194777458247

namespace A050931

/-- `lt[2, ∑{d}[n, A000086(#)]]` -/
def P787824194777458247.Spec : Prop :=
  ∀ n, (P787824194777458247.a n : ℤ) = A050931 (n + 1)

end A050931

/-! ## A050931.P12467712155758485602

`lt[0, A005088(n+1)]+1`
-/

namespace A050931.P12467712155758485602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050931.P12467712155758485602

namespace A050931

/-- `lt[0, A005088(n+1)]+1` -/
def P12467712155758485602.Spec : Prop :=
  ∀ n, (P12467712155758485602.a n : ℤ) = A050931 (n + 1)

end A050931

/-! ## A050931.P1698818201374981795

`lt[1, A115069(n+1)]+1`
-/

namespace A050931.P1698818201374981795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115069 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050931.P1698818201374981795

namespace A050931

/-- `lt[1, A115069(n+1)]+1` -/
def P1698818201374981795.Spec : Prop :=
  ∀ n, (P1698818201374981795.a n : ℤ) = A050931 (n + 1)

end A050931

/-! ## A050931.P191729472336660764

`lt[1, A248909(n+1)]+1`
-/

namespace A050931.P191729472336660764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248909 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050931.P191729472336660764

namespace A050931

/-- `lt[1, A248909(n+1)]+1` -/
def P191729472336660764.Spec : Prop :=
  ∀ n, (P191729472336660764.a n : ℤ) = A050931 (n + 1)

end A050931

/-! ## A050931.P6670689183879166348

`lt[A000010(∏{p}[n, #])%6, 1]`
-/

namespace A050931.P6670689183879166348
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (∏ p ∈ Nat.primeFactors (f2 n), p)) 6

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A050931.P6670689183879166348

namespace A050931

/-- `lt[A000010(∏{p}[n, #])%6, 1]` -/
def P6670689183879166348.Spec : Prop :=
  ∀ n, (P6670689183879166348.a n : ℤ) = A050931 (n + 1)

end A050931

/-! ## A050931.P16064886521749693026

`eq[1, A000010(a(A005088(n)))]` with `a(0)=3`
-/

namespace A050931.P16064886521749693026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A000010 (f2 (A005088 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050931.P16064886521749693026

namespace A050931

/-- `eq[1, A000010(a(A005088(n)))]` -/
def P16064886521749693026.Spec : Prop :=
  ∀ n, (P16064886521749693026.a n : ℤ) = A050931 (n + 1)

end A050931

/-! ## A050931.P1571051207299109459

`eq[3, A000040(a(A005088(n)))]` with `a(0)=1`
-/

namespace A050931.P1571051207299109459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (A005088 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050931.P1571051207299109459

namespace A050931

/-- `eq[3, A000040(a(A005088(n)))]` -/
def P1571051207299109459.Spec : Prop :=
  ∀ n, (P1571051207299109459.a n : ℤ) = A050931 (n + 1)

end A050931

/-!
# A050932: Denominator of (n+1)*Bernoulli(n).

The programs for A050932, the canonical program `A050932.P7455964368993444167` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050932 has offset 0).

The definition of A050932 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050932.P58494450188003610

`A326579(n+1)/(n+1)`
-/

namespace A050932.P58494450188003610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326579 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A050932.P58494450188003610

namespace A050932

/-- `A326579(n+1)/(n+1)` -/
def P58494450188003610.Spec : Prop :=
  ∀ n, P58494450188003610.a n = (A050932 n : ℚ)

end A050932

/-! ## A050932.P7455964368993444167

`lcm(n+1, A027642(n))/(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A050932

/-- `lcm(n+1, A027642(n))/(n+1)` -/
def P7455964368993444167.Spec : Prop :=
  ∀ n, P7455964368993444167.a n = (A050932 n : ℚ)

end A050932

/-! ## A050932.P18319209088331144794

`A027642(n)/A326584(n+1)`
-/

namespace A050932.P18319209088331144794
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A326584 (n + 1) : ℚ)

end

end A050932.P18319209088331144794

namespace A050932

/-- `A027642(n)/A326584(n+1)` -/
def P18319209088331144794.Spec : Prop :=
  ∀ n, P18319209088331144794.a n = (A050932 n : ℚ)

end A050932

/-! ## A050932.P5835652173227902560

`A027642(n)/gcd(A004442(n), A027642(n))`
-/

namespace A050932.P5835652173227902560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (Int.gcd (A004442 n) (A027642 n) : ℚ)

end

end A050932.P5835652173227902560

namespace A050932

/-- `A027642(n)/gcd(A004442(n), A027642(n))` -/
def P5835652173227902560.Spec : Prop :=
  ∀ n, P5835652173227902560.a n = (A050932 n : ℚ)

end A050932

/-! ## A050932.P6914152802657827649

`A141056(n)/gcd(A007947(n+1), A141056(n))`
-/

namespace A050932.P6914152802657827649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141056 n : ℚ) / (Int.gcd (A007947 (n + 1)) (A141056 n) : ℚ)

end

end A050932.P6914152802657827649

namespace A050932

/-- `A141056(n)/gcd(A007947(n+1), A141056(n))` -/
def P6914152802657827649.Spec : Prop :=
  ∀ n, P6914152802657827649.a n = (A050932 n : ℚ)

end A050932

/-! ## A050932.P17164534038957980654

`A027642(n)/(A089026(n+1)*A166123(n+1))`
-/

namespace A050932.P17164534038957980654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027642 n : ℚ) / (A089026 (n + 1) * A166123 (n + 1) : ℚ)

end

end A050932.P17164534038957980654

namespace A050932

/-- `A027642(n)/(A089026(n+1)*A166123(n+1))` -/
def P17164534038957980654.Spec : Prop :=
  ∀ n, P17164534038957980654.a n = (A050932 n : ℚ)

end A050932

/-! ## A050932.P6124994019419757369

`lcm(A015053(n+1), A176289(n))/A015053(n+1)`
-/

namespace A050932.P6124994019419757369
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A015053 (n + 1)) (A176289 n) : ℚ) / (A015053 (n + 1) : ℚ)

end

end A050932.P6124994019419757369

namespace A050932

/-- `lcm(A015053(n+1), A176289(n))/A015053(n+1)` -/
def P6124994019419757369.Spec : Prop :=
  ∀ n, P6124994019419757369.a n = (A050932 n : ℚ)

end A050932

/-! ## A050932.P7510947442321854855

`A006955((n+1)%2*n/2)`
-/

namespace A050932.P7510947442321854855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006955 (SequenceMachineLib.roundAway ((((n + 1) % 2 : ℕ) : ℚ) * ((n : ℚ) / 2))).toNat

end

end A050932.P7510947442321854855

namespace A050932

/-- `A006955((n+1)%2*n/2)` -/
def P7510947442321854855.Spec : Prop :=
  ∀ n, P7510947442321854855.a n = A050932 n

end A050932

/-! ## A050932.P16905774238854548727

`A006955(A142150(n))`
-/

namespace A050932.P16905774238854548727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006955 (A142150 n).toNat

end

end A050932.P16905774238854548727

namespace A050932

/-- `A006955(A142150(n))` -/
def P16905774238854548727.Spec : Prop :=
  ∀ n, P16905774238854548727.a n = A050932 n

end A050932

/-! ## A050932.P15403242045237182009

`A166120(n+1)/A166123(n+1)`
-/

namespace A050932.P15403242045237182009
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166120 (n + 1) : ℚ) / (A166123 (n + 1) : ℚ)

end

end A050932.P15403242045237182009

namespace A050932

/-- `A166120(n+1)/A166123(n+1)` -/
def P15403242045237182009.Spec : Prop :=
  ∀ n, P15403242045237182009.a n = (A050932 n : ℚ)

end A050932

/-! ## A050932.P3352762054603857821

`A140219(n)/a(n-1)` with `a(0)=1`
-/

namespace A050932.P3352762054603857821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A140219 n : ℚ) / a (n - 1)

end

end A050932.P3352762054603857821

namespace A050932

/-- `A140219(n)/a(n-1)` -/
def P3352762054603857821.Spec : Prop :=
  ∀ n, P3352762054603857821.a n = (A050932 n : ℚ)

end A050932

/-! ## A050932.P11977222039966642950

`A140219(A003815(n))`
-/

namespace A050932.P11977222039966642950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140219 (A003815 n).toNat

end

end A050932.P11977222039966642950

namespace A050932

/-- `A140219(A003815(n))` -/
def P11977222039966642950.Spec : Prop :=
  ∀ n, P11977222039966642950.a n = A050932 n

end A050932

/-! ## A050932.P2098595753424291464

`A140219(A237420(n))`
-/

namespace A050932.P2098595753424291464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140219 (A237420 n).toNat

end

end A050932.P2098595753424291464

namespace A050932

/-- `A140219(A237420(n))` -/
def P2098595753424291464.Spec : Prop :=
  ∀ n, P2098595753424291464.a n = A050932 n

end A050932

/-! ## A050932.P12045774204928913088

`A140219(A124625(n+1))`
-/

namespace A050932.P12045774204928913088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140219 (A124625 (n + 1)).toNat

end

end A050932.P12045774204928913088

namespace A050932

/-- `A140219(A124625(n+1))` -/
def P12045774204928913088.Spec : Prop :=
  ∀ n, P12045774204928913088.a n = A050932 n

end A050932

/-! ## A050932.P8734875189195788644

`A140219(A338824(n+2))`
-/

namespace A050932.P8734875189195788644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140219 (A338824 (n + 2)).toNat

end

end A050932.P8734875189195788644

namespace A050932

/-- `A140219(A338824(n+2))` -/
def P8734875189195788644.Spec : Prop :=
  ∀ n, P8734875189195788644.a n = A050932 n

end A050932

/-! ## A050932.P2536281948199747932

`gcd(A027642(n), A140219(n))`
-/

namespace A050932.P2536281948199747932
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027642 n) (A140219 n)

end

end A050932.P2536281948199747932

namespace A050932

/-- `gcd(A027642(n), A140219(n))` -/
def P2536281948199747932.Spec : Prop :=
  ∀ n, (P2536281948199747932.a n : ℤ) = A050932 n

end A050932

/-! ## A050932.P3463375745663229509

`A140219(n)/A140219(A124625(n))`
-/

namespace A050932.P3463375745663229509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140219 n : ℚ) / (A140219 (A124625 n).toNat : ℚ)

end

end A050932.P3463375745663229509

namespace A050932

/-- `A140219(n)/A140219(A124625(n))` -/
def P3463375745663229509.Spec : Prop :=
  ∀ n, P3463375745663229509.a n = (A050932 n : ℚ)

end A050932

/-! ## A050932.P12854537630208855462

`gcd(A141056(n), A318256(n))`
-/

namespace A050932.P12854537630208855462
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A141056 n) (A318256 n)

end

end A050932.P12854537630208855462

namespace A050932

/-- `gcd(A141056(n), A318256(n))` -/
def P12854537630208855462.Spec : Prop :=
  ∀ n, (P12854537630208855462.a n : ℤ) = A050932 n

end A050932

/-! ## A050932.P7193484821417481016

`A100616(A093178(n+1))`
-/

namespace A050932.P7193484821417481016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (A093178 (n + 1)).toNat

end

end A050932.P7193484821417481016

namespace A050932

/-- `A100616(A093178(n+1))` -/
def P7193484821417481016.Spec : Prop :=
  ∀ n, P7193484821417481016.a n = A050932 n

end A050932

/-! ## A050932.P13116383065267271268

`A100616(A193356(n+1))`
-/

namespace A050932.P13116383065267271268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100616 (A193356 (n + 1)).toNat

end

end A050932.P13116383065267271268

namespace A050932

/-- `A100616(A193356(n+1))` -/
def P13116383065267271268.Spec : Prop :=
  ∀ n, P13116383065267271268.a n = A050932 n

end A050932

/-!
# A050934: Numbers k such that phi(k)*d(k) is a multiple of sigma(k), where d(k) is the number of divisors of k.

The programs for A050934, there is no canonical definition to state claims against.
-/

/-! ## A050934.P5472481230915293848

`A081377(A164001(n+1)%A227046(n+1))`
-/

namespace A050934.P5472481230915293848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081377 (Int.tmod (A164001 (n + 1)) (A227046 (n + 1))).toNat

end

end A050934.P5472481230915293848

/-! ## A050934.P1314604631500922427

`A081377(∑[A229116(n)!])`
-/

namespace A050934.P1314604631500922427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A229116 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081377 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050934.P1314604631500922427

/-! ## A050934.P1835386817187397149

`record[A076533(n+1)/A030273(n)]`
-/

namespace A050934.P1835386817187397149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076533 (n + 1) : ℚ) / (A030273 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050934.P1835386817187397149

/-!
# A050935: a(n) = a(n-1) - a(n-3) with a(1)=0, a(2)=0, a(3)=1.

The programs for A050935, the canonical program `A050935.P3233222883992199911` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050935 has offset 1).

The definition of A050935 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)-a(n-3)` (program `A050935.P3233222883992199911`, by `A050935.P3233222883992199911.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050935.P8211737733893509267

`ogf(x^2/(1-x+x^3))`
-/

namespace A050935.P8211737733893509267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -1, 0, 1] n

end

end A050935.P8211737733893509267

namespace A050935

/-- `ogf(x^2/(1-x+x^3))` -/
def P8211737733893509267.Spec : Prop :=
  ∀ n, P8211737733893509267.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P3233222883992199911

`a(n-1)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050935

/-- `a(n-1)-a(n-3)` -/
def P3233222883992199911.Spec : Prop :=
  ∀ n, P3233222883992199911.a n = A050935 (n + 1)

theorem P3233222883992199911.correct : P3233222883992199911.Spec := by
  intro n
  simp only [A050935, Nat.add_sub_cancel]

end A050935

/-! ## A050935.P5371929692518321941

`A033999(n)*A176971(n+1)`
-/

namespace A050935.P5371929692518321941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A176971 (n + 1)

end

end A050935.P5371929692518321941

namespace A050935

/-- `A033999(n)*A176971(n+1)` -/
def P5371929692518321941.Spec : Prop :=
  ∀ n, P5371929692518321941.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P2858145545636072836

`A056594(2*n)*A176971(n+1)`
-/

namespace A050935.P2858145545636072836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A176971 (n + 1)

end

end A050935.P2858145545636072836

namespace A050935

/-- `A056594(2*n)*A176971(n+1)` -/
def P2858145545636072836.Spec : Prop :=
  ∀ n, P2858145545636072836.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P7878793199501921452

`Δ[ogf(-1/(1-x+x^3))]`
-/

namespace A050935.P7878793199501921452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1] [1, -1, 0, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050935.P7878793199501921452

namespace A050935

/-- `Δ[ogf(-1/(1-x+x^3))]` -/
def P7878793199501921452.Spec : Prop :=
  ∀ n, P7878793199501921452.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P6985940176740192851

`Δ[Δ[n-A203400(n+2)]]`
-/

namespace A050935.P6985940176740192851
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A203400 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050935.P6985940176740192851

namespace A050935

/-- `Δ[Δ[n-A203400(n+2)]]` -/
def P6985940176740192851.Spec : Prop :=
  ∀ n, P6985940176740192851.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P16072991783666216636

`∑[A078013(abs(2-n))]`
-/

namespace A050935.P16072991783666216636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078013 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A050935.P16072991783666216636

namespace A050935

/-- `∑[A078013(abs(2-n))]` -/
def P16072991783666216636.Spec : Prop :=
  ∀ n, P16072991783666216636.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P1698588264557020731

`-A078013(n+1)`
-/

namespace A050935.P1698588264557020731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A078013 (n + 1)

end

end A050935.P1698588264557020731

namespace A050935

/-- `-A078013(n+1)` -/
def P1698588264557020731.Spec : Prop :=
  ∀ n, P1698588264557020731.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P5820492034800086823

`A062157(2*n)*A078013(n+1)`
-/

namespace A050935.P5820492034800086823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (2 * n) * A078013 (n + 1)

end

end A050935.P5820492034800086823

namespace A050935

/-- `A062157(2*n)*A078013(n+1)` -/
def P5820492034800086823.Spec : Prop :=
  ∀ n, P5820492034800086823.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P378376094783276201

`A014021(2*n+1)-A078013(n+1)`
-/

namespace A050935.P378376094783276201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014021 (2 * n + 1) - A078013 (n + 1)

end

end A050935.P378376094783276201

namespace A050935

/-- `A014021(2*n+1)-A078013(n+1)` -/
def P378376094783276201.Spec : Prop :=
  ∀ n, P378376094783276201.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P3098284342580486301

`1-(A078013(n+1)+A033999(2*n))`
-/

namespace A050935.P3098284342580486301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A078013 (n + 1) + A033999 (2 * n))

end

end A050935.P3098284342580486301

namespace A050935

/-- `1-(A078013(n+1)+A033999(2*n))` -/
def P3098284342580486301.Spec : Prop :=
  ∀ n, P3098284342580486301.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P3723714691860714687

`A033999(2*n+1)*A078013(n+1)`
-/

namespace A050935.P3723714691860714687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A078013 (n + 1)

end

end A050935.P3723714691860714687

namespace A050935

/-- `A033999(2*n+1)*A078013(n+1)` -/
def P3723714691860714687.Spec : Prop :=
  ∀ n, P3723714691860714687.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P7182587381423121017

`A124304(n+1)*A124304(n)-A078013(n+1)`
-/

namespace A050935.P7182587381423121017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124304 (n + 1) * A124304 n - A078013 (n + 1)

end

end A050935.P7182587381423121017

namespace A050935

/-- `A124304(n+1)*A124304(n)-A078013(n+1)` -/
def P7182587381423121017.Spec : Prop :=
  ∀ n, P7182587381423121017.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P17431856046832193898

`A104769(n+1)+A247917(n)-A078013(n+1)`
-/

namespace A050935.P17431856046832193898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (n + 1) + (A247917 n - A078013 (n + 1))

end

end A050935.P17431856046832193898

namespace A050935

/-- `A104769(n+1)+A247917(n)-A078013(n+1)` -/
def P17431856046832193898.Spec : Prop :=
  ∀ n, P17431856046832193898.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P10876420734640822725

`Δ[A078013(n+3)]`
-/

namespace A050935.P10876420734640822725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078013 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050935.P10876420734640822725

namespace A050935

/-- `Δ[A078013(n+3)]` -/
def P10876420734640822725.Spec : Prop :=
  ∀ n, P10876420734640822725.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P815329138314842253

`Δ[Δ[Δ[A077869(n+1)]]]`
-/

namespace A050935.P815329138314842253
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A050935.P815329138314842253

namespace A050935

/-- `Δ[Δ[Δ[A077869(n+1)]]]` -/
def P815329138314842253.Spec : Prop :=
  ∀ n, P815329138314842253.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P18067973117647395470

`A078013(2*n)-(A176971(2*n)+A078013(n+1))`
-/

namespace A050935.P18067973117647395470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078013 (2 * n) - (A176971 (2 * n) + A078013 (n + 1))

end

end A050935.P18067973117647395470

namespace A050935

/-- `A078013(2*n)-(A176971(2*n)+A078013(n+1))` -/
def P18067973117647395470.Spec : Prop :=
  ∀ n, P18067973117647395470.a n = A050935 (n + 1)

end A050935

/-! ## A050935.P3587127933690572677

`A176971(n+1)/A033999(n²)`
-/

namespace A050935.P3587127933690572677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176971 (n + 1) : ℚ) / (A033999 (n ^ 2) : ℚ)

end

end A050935.P3587127933690572677

namespace A050935

/-- `A176971(n+1)/A033999(n²)` -/
def P3587127933690572677.Spec : Prop :=
  ∀ n, P3587127933690572677.a n = (A050935 (n + 1) : ℚ)

end A050935

/-!
# A050936: Sum of two or more consecutive prime numbers.

The programs for A050936, there is no canonical definition to state claims against.
-/

/-! ## A050936.P129097989469189470

`∪[A067372(n+1), A084146(n+1)]`
-/

namespace A050936.P129097989469189470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050936.P129097989469189470

/-! ## A050936.P4883568798657148180

`∪[A084146(n+1), A309770(n+1)]`
-/

namespace A050936.P4883568798657148180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A050936.P4883568798657148180

/-! ## A050936.P14459635413753401832

`lt[0, A084143(n+1)]+1`
-/

namespace A050936.P14459635413753401832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050936.P14459635413753401832

/-! ## A050936.P12567583148555149047

`eq[2, a(A084143(n))-1]` with `a(0)=4`
-/

namespace A050936.P12567583148555149047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  f2 (A084143 n).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050936.P12567583148555149047

/-! ## A050936.P4964610738049373528

`lt[0, A084143(A028310(n))]`
-/

namespace A050936.P4964610738049373528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084143 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050936.P4964610738049373528

/-! ## A050936.P5473201010891144576

`lt[char[A151800(n)], A054845(n)]`
-/

namespace A050936.P5473201010891144576
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A050936.P5473201010891144576

/-! ## A050936.P7997574005033378556

`eq[2, A000045(a(A084143(n)))]` with `a(0)=4`
-/

namespace A050936.P7997574005033378556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000045 (f2 (A084143 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050936.P7997574005033378556

/-! ## A050936.P3664226851592692250

`eq[char[A087072(n+1)], A000007(n)]`
-/

namespace A050936.P3664226851592692250
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087072 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050936.P3664226851592692250

/-! ## A050936.P6303443177615649336

`eq[char[A087072(n+1)], A000038(n)]`
-/

namespace A050936.P6303443177615649336
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087072 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050936.P6303443177615649336

/-! ## A050936.P14836272001769645184

`lt[char[A000040(n+1)], A054845(n)]`
-/

namespace A050936.P14836272001769645184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A050936.P14836272001769645184

/-! ## A050936.P4999256357321113310

`eq[char[A087072(n+1)], A036987(2*n)]`
-/

namespace A050936.P4999256357321113310
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087072 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050936.P4999256357321113310

/-!
# A050937: Nonprime Fibonacci numbers with a prime index.

The programs for A050937, there is no canonical definition to state claims against.
-/

/-! ## A050937.P13306928795896954765

`A000045(A090819(n+1))`
-/

namespace A050937.P13306928795896954765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A090819 (n + 1)).toNat

end

end A050937.P13306928795896954765

/-! ## A050937.P12107310629442349180

`A000045(p?[A261312(n+1)])`
-/

namespace A050937.P12107310629442349180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A050937.P12107310629442349180

/-! ## A050937.P7551232500185139741

`abs(A236191(p?[A261312(n+1)]))`
-/

namespace A050937.P7551232500185139741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261312 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A236191 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat|

end

end A050937.P7551232500185139741

/-! ## A050937.P16856112128568934291

`A000045(p?[comp[A001605(n+1)]])`
-/

namespace A050937.P16856112128568934291
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001605 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A050937.P16856112128568934291

/-! ## A050937.P15481175719407646252

`A000045(p?[comp[A072556(n+1)]])`
-/

namespace A050937.P15481175719407646252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072556 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A050937.P15481175719407646252

/-! ## A050937.P17421058458573459107

`A000045(p?[comp[A069744(n+1)+1]])`
-/

namespace A050937.P17421058458573459107
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069744 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A050937.P17421058458573459107

/-! ## A050937.P16304256664318667852

`A167808(p?[comp[A069744(n+1)+1]])`
-/

namespace A050937.P16304256664318667852
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069744 (n + 1) + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167808 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A050937.P16304256664318667852

/-! ## A050937.P12307818346523769234

`A000045(A000040(A134787(n+1)))`
-/

namespace A050937.P12307818346523769234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000040 (A134787 (n + 1)).toNat).toNat

end

end A050937.P12307818346523769234

/-! ## A050937.P18099156249323207158

`A000045(A000040(comp[A339082(n+1)]))`
-/

namespace A050937.P18099156249323207158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339082 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000040 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)).toNat

end

end A050937.P18099156249323207158

/-!
# A050939: Numbers that are not the sum of consecutive Fibonacci numbers.

The programs for A050939, the canonical program `A050939.P13334191487414510968` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050939 has offset 1).

The definition of A050939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050939.P6922847325800967862

`comp[A007298(n+1)]`
-/

namespace A050939.P6922847325800967862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A050939.P6922847325800967862

namespace A050939

/-- `comp[A007298(n+1)]` -/
def P6922847325800967862.Spec : Prop :=
  ∀ n, (P6922847325800967862.a n : ℤ) = A050939 (n + 1)

end A050939

/-! ## A050939.P13334191487414510968

`comp[A193922(n)-1]+1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A050939

/-- `comp[A193922(n)-1]+1` -/
def P13334191487414510968.Spec : Prop :=
  ∀ n, (P13334191487414510968.a n : ℤ) = A050939 (n + 1)

theorem P13334191487414510968.correct : P13334191487414510968.Spec := by
  intro n
  simp only [A050939, Nat.add_sub_cancel]

end A050939

/-! ## A050939.P11444434638374245954

`lt[1, A200650(n+1)]+1`
-/

namespace A050939.P11444434638374245954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200650 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050939.P11444434638374245954

namespace A050939

/-- `lt[1, A200650(n+1)]+1` -/
def P11444434638374245954.Spec : Prop :=
  ∀ n, (P11444434638374245954.a n : ℤ) = A050939 (n + 1)

end A050939

/-! ## A050939.P2368146746273820658

`comp[A143061(n+1)-char[1]]`
-/

namespace A050939.P2368146746273820658
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143061 (n + 1) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A050939.P2368146746273820658

namespace A050939

/-- `comp[A143061(n+1)-char[1]]` -/
def P2368146746273820658.Spec : Prop :=
  ∀ n, (P2368146746273820658.a n : ℤ) = A050939 (n + 1)

end A050939

/-! ## A050939.P9885161389864196706

`comp[A204922(n+1)-1]+1`
-/

namespace A050939.P9885161389864196706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204922 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A050939.P9885161389864196706

namespace A050939

/-- `comp[A204922(n+1)-1]+1` -/
def P9885161389864196706.Spec : Prop :=
  ∀ n, (P9885161389864196706.a n : ℤ) = A050939 (n + 1)

end A050939

/-! ## A050939.P17730178077116430628

`comp[A094570(n+1)-A094570(n)]`
-/

namespace A050939.P17730178077116430628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094570 (n + 1) - A094570 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A050939.P17730178077116430628

namespace A050939

/-- `comp[A094570(n+1)-A094570(n)]` -/
def P17730178077116430628.Spec : Prop :=
  ∀ n, (P17730178077116430628.a n : ℤ) = A050939 (n + 1)

end A050939

/-! ## A050939.P11983072357926387034

`comp[A108037(n)-A104762(n+1)]`
-/

namespace A050939.P11983072357926387034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 n - A104762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A050939.P11983072357926387034

namespace A050939

/-- `comp[A108037(n)-A104762(n+1)]` -/
def P11983072357926387034.Spec : Prop :=
  ∀ n, (P11983072357926387034.a n : ℤ) = A050939 (n + 1)

end A050939

/-! ## A050939.P17550375468805688741

`comp[A108037(n)-A104763(n+1)]`
-/

namespace A050939.P17550375468805688741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108037 n - A104763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A050939.P17550375468805688741

namespace A050939

/-- `comp[A108037(n)-A104763(n+1)]` -/
def P17550375468805688741.Spec : Prop :=
  ∀ n, (P17550375468805688741.a n : ℤ) = A050939 (n + 1)

end A050939

/-! ## A050939.P8150192745174541241

`comp[A104762(n+1)-A141169(n)]`
-/

namespace A050939.P8150192745174541241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (n + 1) - A141169 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A050939.P8150192745174541241

namespace A050939

/-- `comp[A104762(n+1)-A141169(n)]` -/
def P8150192745174541241.Spec : Prop :=
  ∀ n, (P8150192745174541241.a n : ℤ) = A050939 (n + 1)

end A050939

/-! ## A050939.P6048139353798486507

`lt[1, A003603(A003603(n+1))]+1`
-/

namespace A050939.P6048139353798486507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003603 (A003603 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050939.P6048139353798486507

namespace A050939

/-- `lt[1, A003603(A003603(n+1))]+1` -/
def P6048139353798486507.Spec : Prop :=
  ∀ n, (P6048139353798486507.a n : ℤ) = A050939 (n + 1)

end A050939

/-! ## A050939.P11603218863381481282

`comp[A104762(n+1)-A104763(n+1)]`
-/

namespace A050939.P11603218863381481282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104762 (n + 1) - A104763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A050939.P11603218863381481282

namespace A050939

/-- `comp[A104762(n+1)-A104763(n+1)]` -/
def P11603218863381481282.Spec : Prop :=
  ∀ n, (P11603218863381481282.a n : ℤ) = A050939 (n + 1)

end A050939

/-! ## A050939.P7047577729413831365

`lt[1, A204929(n+1)]+1`
-/

namespace A050939.P7047577729413831365
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204929 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A050939.P7047577729413831365

namespace A050939

/-- `lt[1, A204929(n+1)]+1` -/
def P7047577729413831365.Spec : Prop :=
  ∀ n, (P7047577729413831365.a n : ℤ) = A050939 (n + 1)

end A050939

/-! ## A050939.P12685762874049232782

`lt[2, A256660(n)]`
-/

namespace A050939.P12685762874049232782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256660 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050939.P12685762874049232782

namespace A050939

/-- `lt[2, A256660(n)]` -/
def P12685762874049232782.Spec : Prop :=
  ∀ n, (P12685762874049232782.a n : ℤ) = A050939 (n + 1)

end A050939

/-! ## A050939.P12630223411708929541

`eq[0, A010056(A256663(n))]`
-/

namespace A050939.P12630223411708929541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010056 (A256663 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050939.P12630223411708929541

namespace A050939

/-- `eq[0, A010056(A256663(n))]` -/
def P12630223411708929541.Spec : Prop :=
  ∀ n, (P12630223411708929541.a n : ℤ) = A050939 (n + 1)

end A050939

/-! ## A050939.P6411183471986834682

`lt[2, A090079(A052499(n))]+2`
-/

namespace A050939.P6411183471986834682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090079 (A052499 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A050939.P6411183471986834682

namespace A050939

/-- `lt[2, A090079(A052499(n))]+2` -/
def P6411183471986834682.Spec : Prop :=
  ∀ n, (P6411183471986834682.a n : ℤ) = A050939 (n + 1)

end A050939

/-! ## A050939.P697478697392839050

`lt[1, A256664(A256664(n)+n)]`
-/

namespace A050939.P697478697392839050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256664 (A256664 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A050939.P697478697392839050

namespace A050939

/-- `lt[1, A256664(A256664(n)+n)]` -/
def P697478697392839050.Spec : Prop :=
  ∀ n, (P697478697392839050.a n : ℤ) = A050939 (n + 1)

end A050939

/-!
# A050940: Numbers that are not the sum (of a nonempty sequence) of consecutive primes.

The programs for A050940, there is no canonical definition to state claims against.
-/

/-! ## A050940.P18274975181342211564

`comp[A034707(n+1)]`
-/

namespace A050940.P18274975181342211564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034707 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A050940.P18274975181342211564

/-! ## A050940.P10792400891993916751

`eq[0, A054845(n)]`
-/

namespace A050940.P10792400891993916751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050940.P10792400891993916751

/-! ## A050940.P10796249119358781168

`lt[A032741(n)*A054845(n), 1]`
-/

namespace A050940.P10796249119358781168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n * A054845 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050940.P10796249119358781168

/-! ## A050940.P13242051655350058930

`lt[A054845(n), acot(A067372(n+1))]`
-/

namespace A050940.P13242051655350058930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A067372 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A050940.P13242051655350058930

/-! ## A050940.P5065181909708796008

`lt[lcm(A000203(n+1), A054845(n)), 1]`
-/

namespace A050940.P5065181909708796008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000203 (n + 1)) (A054845 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050940.P5065181909708796008

/-! ## A050940.P12727251860488785369

`lt[A054845(n), A349315(n)/(n+1)]`
-/

namespace A050940.P12727251860488785369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A349315 n : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A050940.P12727251860488785369

/-! ## A050940.P50093240193891926

`lt[A054845(n), A000005(n+1)/(n+1)]`
-/

namespace A050940.P50093240193891926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A050940.P50093240193891926

/-! ## A050940.P10137492070283255772

`lt[A054845(n), A014860(A001222(n+1))]`
-/

namespace A050940.P10137492070283255772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014860 (A001222 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A050940.P10137492070283255772

/-! ## A050940.P13217395300218278860

`lt[A007590(n)*A054845(n), 1]`
-/

namespace A050940.P13217395300218278860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n * A054845 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050940.P13217395300218278860

/-! ## A050940.P13248155527847190535

`lt[A054845(n)*A058841(n), 1]`
-/

namespace A050940.P13248155527847190535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n * A058841 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050940.P13248155527847190535

/-! ## A050940.P8658102497663266431

`lt[A054845(n)^A169609(n), 1]`
-/

namespace A050940.P8658102497663266431
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054845 n : ℚ) ^ (A169609 n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A050940.P8658102497663266431

/-! ## A050940.P5284690302926805294

`lt[char[A151800(n)], 1-A054845(n)]`
-/

namespace A050940.P5284690302926805294
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A054845 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A050940.P5284690302926805294

/-! ## A050940.P8895441881145072861

`lt[A054845(n), acot(A050936(n+1))]`
-/

namespace A050940.P8895441881145072861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A050936 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A050940.P8895441881145072861

/-! ## A050940.P18049595820299647956

`lt[A054845(n), acot(A054996(n+1))]`
-/

namespace A050940.P18049595820299647956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A054996 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A050940.P18049595820299647956

/-! ## A050940.P10918383665936276604

`lt[A054845(n), acot(A054997(n+1))]`
-/

namespace A050940.P10918383665936276604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A054997 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A050940.P10918383665936276604

/-! ## A050940.P10626271141084206978

`lt[A054845(n), acot(A054998(n+1))]`
-/

namespace A050940.P10626271141084206978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A054998 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A050940.P10626271141084206978

/-! ## A050940.P13064024313360796605

`lt[A054845(n), acot(A054999(n+1))]`
-/

namespace A050940.P13064024313360796605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A054999 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A050940.P13064024313360796605

/-! ## A050940.P15917531770944837768

`lt[A054845(n), acot(A309770(n+1))]`
-/

namespace A050940.P15917531770944837768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054845 n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A309770 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A050940.P15917531770944837768

/-! ## A050940.P14195737254309953800

`record[n-A020991(n+1)*A054845(n)]`
-/

namespace A050940.P14195737254309953800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A020991 (n + 1) * A054845 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050940.P14195737254309953800

/-! ## A050940.P687802569068086180

`record[n-A054845(n)*A275319(n+1)]`
-/

namespace A050940.P687802569068086180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A054845 n * A275319 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050940.P687802569068086180

/-!
# A050941: Numbers that are not the sum of consecutive triangular numbers.

The programs for A050941, there is no canonical definition to state claims against.
-/

/-! ## A050941.P11106002956679224694

`comp[A034706(n+1)]`
-/

namespace A050941.P11106002956679224694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A050941.P11106002956679224694

/-! ## A050941.P4327604789406195783

`filter[A050942(n+1), A123110(#)]`
-/

namespace A050941.P4327604789406195783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A123110 (f1 j).toNat = 1) n)

end

end A050941.P4327604789406195783

/-! ## A050941.P17165059257330468348

`∩[A050942(n+1), A242401(n+1)]`
-/

namespace A050941.P17165059257330468348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050942 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242401 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050941.P17165059257330468348

/-! ## A050941.P16453771124787299932

`∩[A014132(n+1), A050942(n+1)]`
-/

namespace A050941.P16453771124787299932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050941.P16453771124787299932

/-! ## A050941.P14035255035805778046

`lt[A307666(n+1), 1]+1`
-/

namespace A050941.P14035255035805778046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A050941.P14035255035805778046

/-! ## A050941.P16207808517971440844

`lt[A307666(A028310(n)), 1]`
-/

namespace A050941.P16207808517971440844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050941.P16207808517971440844

/-! ## A050941.P4590893188758957295

`lt[A307666(A000007(n)+n), 1]`
-/

namespace A050941.P4590893188758957295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A050941.P4590893188758957295

/-! ## A050941.P1400317518209241447

`eq[1, char[A034706(A263273(n)+1)]+1]`
-/

namespace A050941.P1400317518209241447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (A263273 n + 1).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050941.P1400317518209241447

/-! ## A050941.P9616081162538002093

`eq[2, A241218((n+1)*char[A034706(n+1)])]`
-/

namespace A050941.P9616081162538002093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241218 ((n + 1) * (if ∃ j, f3 j = (n : ℤ) then 1 else 0))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050941.P9616081162538002093

/-! ## A050941.P17815000007134876070

`eq[2*A307666(A028310(n)), A073424(n)]`
-/

namespace A050941.P17815000007134876070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A307666 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050941.P17815000007134876070

/-! ## A050941.P2193257991479333084

`eq[2, A225804((n+1)*char[A034706(n+1)]+1)]`
-/

namespace A050941.P2193257991479333084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034706 (n + 1)

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225804 ((n + 1) * (if ∃ j, f3 j = (n : ℤ) then 1 else 0) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050941.P2193257991479333084

/-!
# A050942: Numbers that are not the sum of 2 or more consecutive nonzero triangular numbers.

The programs for A050942, there is no canonical definition to state claims against.
-/

/-! ## A050942.P9119109582178570141

`eq[char[A050943(n)], A000007(n)]`
-/

namespace A050942.P9119109582178570141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050943 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050942.P9119109582178570141

/-! ## A050942.P16051850174049553440

`eq[char[A050943(n)], A000038(n)]`
-/

namespace A050942.P16051850174049553440
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050943 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050942.P16051850174049553440

/-! ## A050942.P11041516588857878185

`eq[char[A050943(n)], A020761(n)]`
-/

namespace A050942.P11041516588857878185
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050943 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050942.P11041516588857878185

/-! ## A050942.P4999306917919918510

`eq[A159634(n+1)%2, char[A050943(n)]]`
-/

namespace A050942.P4999306917919918510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159634 (n + 1)) 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050943 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A050942.P4999306917919918510

/-! ## A050942.P10181202557753708432

`eq[A073424(n), A307666(A028310(n))]`
-/

namespace A050942.P10181202557753708432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A050942.P10181202557753708432

/-!
# A050943: The sum of 2 or more consecutive nonzero triangular numbers.

The programs for A050943, there is no canonical definition to state claims against.
-/

/-! ## A050943.P15511123126977311557

`lt[A023531(n), A307666(n+1)]+1`
-/

namespace A050943.P15511123126977311557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307666 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A050943.P15511123126977311557

/-! ## A050943.P4202104531078663524

`eq[char[A050942(n+1)], A000007(n)]`
-/

namespace A050943.P4202104531078663524
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050942 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050943.P4202104531078663524

/-! ## A050943.P575378339145472836

`eq[char[A050942(n+1)], A000038(n)]`
-/

namespace A050943.P575378339145472836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050942 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050943.P575378339145472836

/-! ## A050943.P1153366679940003251

`eq[char[A050942(n+1)], A020761(n)]`
-/

namespace A050943.P1153366679940003251
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050942 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050943.P1153366679940003251

/-! ## A050943.P2762399432560933602

`eq[char[A050942(n+1)], A130706(n)]`
-/

namespace A050943.P2762399432560933602
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050942 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A050943.P2762399432560933602

/-!
# A050944: Numbers k such that sigma(k) > sigma(k+1) > sigma(k+2) > sigma(k+3).

The programs for A050944, the canonical program `A050944.P6983789930678344606` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050944 has offset 1).

The definition of A050944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 348 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050944.P2393514173747231038

`A053226(A053245(n+1))`
-/

namespace A050944.P2393514173747231038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (A053245 (n + 1)).toNat

end

end A050944.P2393514173747231038

namespace A050944

/-- `A053226(A053245(n+1))` -/
def P2393514173747231038.Spec : Prop :=
  ∀ n, P2393514173747231038.a n = A050944 (n + 1)

end A050944

/-! ## A050944.P6971165261410236527

`A053226(∩[A053242(n+1)-1, A053242(n+1)])`
-/

namespace A050944.P6971165261410236527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053242 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053242 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053226 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A050944.P6971165261410236527

namespace A050944

/-- `A053226(∩[A053242(n+1)-1, A053242(n+1)])` -/
def P6971165261410236527.Spec : Prop :=
  ∀ n, P6971165261410236527.a n = A050944 (n + 1)

end A050944

/-! ## A050944.P6983789930678344606

`∩[A066507(n+1), A364657(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A050944

/-- `∩[A066507(n+1), A364657(n+1)]` -/
def P6983789930678344606.Spec : Prop :=
  ∀ n, (P6983789930678344606.a n : ℤ) = A050944 (n + 1)

theorem P6983789930678344606.correct : P6983789930678344606.Spec := by
  intro n
  simp only [A050944, Nat.add_sub_cancel]

end A050944

/-! ## A050944.P4414378688031307212

`∩[A106092(n+1), A364657(n+1)]`
-/

namespace A050944.P4414378688031307212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050944.P4414378688031307212

namespace A050944

/-- `∩[A106092(n+1), A364657(n+1)]` -/
def P4414378688031307212.Spec : Prop :=
  ∀ n, (P4414378688031307212.a n : ℤ) = A050944 (n + 1)

end A050944

/-! ## A050944.P4050585231262075160

`∩[A047262(n+1), A364657(n+1)]`
-/

namespace A050944.P4050585231262075160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050944.P4050585231262075160

namespace A050944

/-- `∩[A047262(n+1), A364657(n+1)]` -/
def P4050585231262075160.Spec : Prop :=
  ∀ n, (P4050585231262075160.a n : ℤ) = A050944 (n + 1)

end A050944

/-! ## A050944.P4660053105842247922

`filter[A364657(n+1), A059841(#)]`
-/

namespace A050944.P4660053105842247922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A050944.P4660053105842247922

namespace A050944

/-- `filter[A364657(n+1), A059841(#)]` -/
def P4660053105842247922.Spec : Prop :=
  ∀ n, P4660053105842247922.a n = A050944 (n + 1)

end A050944

/-! ## A050944.P10848577774946965427

`filter[A364657(n+1), A108357(#)]`
-/

namespace A050944.P10848577774946965427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A050944.P10848577774946965427

namespace A050944

/-- `filter[A364657(n+1), A108357(#)]` -/
def P10848577774946965427.Spec : Prop :=
  ∀ n, P10848577774946965427.a n = A050944 (n + 1)

end A050944

/-! ## A050944.P17375271047433532095

`filter[A364657(n+1), A135528(#)]`
-/

namespace A050944.P17375271047433532095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A050944.P17375271047433532095

namespace A050944

/-- `filter[A364657(n+1), A135528(#)]` -/
def P17375271047433532095.Spec : Prop :=
  ∀ n, P17375271047433532095.a n = A050944 (n + 1)

end A050944

/-! ## A050944.P16151682550017625615

`filter[A364657(n+1), A266591(#)]`
-/

namespace A050944.P16151682550017625615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A050944.P16151682550017625615

namespace A050944

/-- `filter[A364657(n+1), A266591(#)]` -/
def P16151682550017625615.Spec : Prop :=
  ∀ n, P16151682550017625615.a n = A050944 (n + 1)

end A050944

/-! ## A050944.P14579838054360140479

`filter[A364657(n+1), A267043(#)]`
-/

namespace A050944.P14579838054360140479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267043 (f1 j).toNat = 1) n)

end

end A050944.P14579838054360140479

namespace A050944

/-- `filter[A364657(n+1), A267043(#)]` -/
def P14579838054360140479.Spec : Prop :=
  ∀ n, P14579838054360140479.a n = A050944 (n + 1)

end A050944

/-!
# A050946: "Stirling-Bernoulli transform" of Fibonacci numbers.

The programs for A050946, there is no canonical definition to state claims against.
-/

/-! ## A050946.P12803487552498532985

`A307361(n)/Δ[A047243(n+2)]`
-/

namespace A050946.P12803487552498532985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047243 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307361 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A050946.P12803487552498532985

/-! ## A050946.P5919215974195047416

`A307361(n)/A052938(Δ[A168397(n+1)])`
-/

namespace A050946.P5919215974195047416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168397 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307361 n : ℚ) / (A052938 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A050946.P5919215974195047416

/-! ## A050946.P12218238875797834061

`A307361(n)/A261770(Δ[A168397(n+1)])`
-/

namespace A050946.P12218238875797834061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168397 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307361 n : ℚ) / (A261770 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A050946.P12218238875797834061

/-!
# A050947: Values of Soviet money, 1961-1991 (in kopecks; 100 kopecks = 1 rouble).

The programs for A050947, there is no canonical definition to state claims against.
-/

/-! ## A050947.P14511556948968653700

`record[A326038(A077491(n+1))]`
-/

namespace A050947.P14511556948968653700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326038 (A077491 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050947.P14511556948968653700

/-! ## A050947.P5753567691106039773

`filter[A282032(n+1), A248392(#)]`
-/

namespace A050947.P5753567691106039773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A248392 (f1 j).toNat = 1) n)

end

end A050947.P5753567691106039773

/-! ## A050947.P17422901889555305663

`∩[A101886(n+1), A140730(n)]`
-/

namespace A050947.P17422901889555305663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140730 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050947.P17422901889555305663

/-! ## A050947.P8841989673906174262

`∩[A032543(n+1), A101886(n+1)]`
-/

namespace A050947.P8841989673906174262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050947.P8841989673906174262

/-! ## A050947.P12873637523120016621

`∩[A101886(n+1), A282032(n+1)]`
-/

namespace A050947.P12873637523120016621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050947.P12873637523120016621

/-!
# A050948: Pi expressed in base e: Pi = Sum a(i)*exp(-i), i=-1,0,1,2,...

The programs for A050948, there is no canonical definition to state claims against.
-/

/-! ## A050948.P7950135506740017851

`abs(Δ[A083054(A043816(n+1))])`
-/

namespace A050948.P7950135506740017851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083054 (A043816 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A050948.P7950135506740017851

/-! ## A050948.P10342274634623068154

`abs(A030203(2*A217873(n)+1))`
-/

namespace A050948.P10342274634623068154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A030203 (2 * A217873 n + 1).toNat|

end

end A050948.P10342274634623068154

/-! ## A050948.P6192178138684951605

`A340998(and(A171596(n), A249501(n+1)))`
-/

namespace A050948.P6192178138684951605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 ((Int.land (A171596 n) (A249501 (n + 1))).toNat + 140)

end

end A050948.P6192178138684951605

/-! ## A050948.P8599165032077561450

`A000079(n)%A269978(3*∑{d}[n+1, #])`
-/

namespace A050948.P8599165032077561450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A269978 (3 * (∑ d ∈ Nat.divisors (f1 n), d)))

end

end A050948.P8599165032077561450

/-! ## A050948.P9824160261470006018

`A190487(and((n+1)*∑{d}[n+1, (-1)^(#+1)*#], A120143(n+3)))`
-/

namespace A050948.P9824160261470006018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190487 (Int.land ((n + 1 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), (-1) ^ (d + 1) * (d : ℤ))) (A120143 (n + 3))).toNat

end

end A050948.P9824160261470006018

/-!
# A050949: e expressed in base Pi: e = Sum a(i)*Pi^(-i), i=0,1,2,...

The programs for A050949, there is no canonical definition to state claims against.
-/

/-! ## A050949.P2209849470030945250

`A096810(A184271(n+1)-A126988(n+1))`
-/

namespace A050949.P2209849470030945250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096810 (A184271 (n + 1) - A126988 (n + 1)).toNat

end

end A050949.P2209849470030945250

/-! ## A050949.P5446159262263164214

`A347883(A109278(n+1)-A026584(n+1))`
-/

namespace A050949.P5446159262263164214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347883 (A109278 (n + 1) - A026584 (n + 1)).toNat

end

end A050949.P5446159262263164214

/-! ## A050949.P17646385777685386592

`A060572(A376710(n)+A115576(n+1))`
-/

namespace A050949.P17646385777685386592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060572 (A376710 n + A115576 (n + 1)).toNat

end

end A050949.P17646385777685386592

/-! ## A050949.P3460628379126476240

`A060572(A376710(n)+A115581(n+1))`
-/

namespace A050949.P3460628379126476240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060572 (A376710 n + A115581 (n + 1)).toNat

end

end A050949.P3460628379126476240

/-! ## A050949.P12682360845680006973

`A287520(A204892(n+1)+A087009(n))`
-/

namespace A050949.P12682360845680006973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287520 (A204892 (n + 1) + A087009 n).toNat

end

end A050949.P12682360845680006973

/-!
# A050950: Discriminants of real quadratic fields with class number 1 and related continued fraction period length of 1.

The programs for A050950, there is no canonical definition to state claims against.
-/

/-! ## A050950.P446649899029258652

`record[p?[A323728(n+1)]]`
-/

namespace A050950.P446649899029258652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323728 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050950.P446649899029258652

/-! ## A050950.P1885615905659539077

`record[∑{p}[A067666(n+4), #]]`
-/

namespace A050950.P1885615905659539077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067666 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050950.P1885615905659539077

/-! ## A050950.P4468976302172950836

`record[A006530(n^C(2, ∑{e}[n, #])!+4)]`
-/

namespace A050950.P4468976302172950836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n ^ Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050950.P4468976302172950836

/-!
# A050952: Discriminants of real quadratic fields with class number 1 and related continued fraction period length of 3.

The programs for A050952, there is no canonical definition to state claims against.
-/

/-! ## A050952.P35121341435014623

`∩[A003172(n+1), A146328(n+1)]`
-/

namespace A050952.P35121341435014623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050952.P35121341435014623

/-! ## A050952.P3673337296965641038

`∩[A003172(n+1), A146348(n+1)]`
-/

namespace A050952.P3673337296965641038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050952.P3673337296965641038

/-! ## A050952.P6786203505101697665

`∩[A003656(n+1), A146328(n+1)]`
-/

namespace A050952.P6786203505101697665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146328 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050952.P6786203505101697665

/-!
# A050954: Discriminants of real quadratic fields with class number 1 and related continued fraction period length of 5.

The programs for A050954, there is no canonical definition to state claims against.
-/

/-! ## A050954.P9386615901374426302

`A146350(A129525(n+1))`
-/

namespace A050954.P9386615901374426302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146350 (A129525 (n + 1)).toNat

end

end A050954.P9386615901374426302

/-! ## A050954.P4633359769076659165

`A146350(A052063(n+2))`
-/

namespace A050954.P4633359769076659165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146350 (A052063 (n + 2)).toNat

end

end A050954.P4633359769076659165

/-! ## A050954.P9313939816160673304

`∩[A003172(n+1), A146330(n+1)]`
-/

namespace A050954.P9313939816160673304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050954.P9313939816160673304

/-! ## A050954.P7969633930991250644

`∩[A003172(n+1), A146350(n+1)]`
-/

namespace A050954.P7969633930991250644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050954.P7969633930991250644

/-! ## A050954.P2138137341219307161

`∩[A003656(n+1), A146330(n+1)]`
-/

namespace A050954.P2138137341219307161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050954.P2138137341219307161

/-!
# A050956: Discriminants of real quadratic fields with class number 1 and related continued fraction period length of 7.

The programs for A050956, there is no canonical definition to state claims against.
-/

/-! ## A050956.P11936065398776479237

`A146352(A338973(n+1))`
-/

namespace A050956.P11936065398776479237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146352 (A338973 (n + 1)).toNat

end

end A050956.P11936065398776479237

/-! ## A050956.P13832774621771018667

`p?[or(A146352(n+1), A152815(n))]`
-/

namespace A050956.P13832774621771018667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A146352 (n + 1)) (A152815 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050956.P13832774621771018667

/-! ## A050956.P16175237752743574831

`∩[A003172(n+1), A146332(n+1)]`
-/

namespace A050956.P16175237752743574831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050956.P16175237752743574831

/-! ## A050956.P6119297845600396771

`∩[A003172(n+1), A146352(n+1)]`
-/

namespace A050956.P6119297845600396771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050956.P6119297845600396771

/-! ## A050956.P3020534338334279028

`∩[A003656(n+1), A146332(n+1)]`
-/

namespace A050956.P3020534338334279028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050956.P3020534338334279028

/-!
# A050957: Discriminants of real quadratic fields with class number 1 and related continued fraction period length of 8.

The programs for A050957, there is no canonical definition to state claims against.
-/

/-! ## A050957.P11661960981894829634

`∩[A020348(n+1), A374845(n+1)]`
-/

namespace A050957.P11661960981894829634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374845 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050957.P11661960981894829634

/-!
# A050958: Discriminants of real quadratic fields with class number 1 and related continued fraction period length of 9.

The programs for A050958, there is no canonical definition to state claims against.
-/

/-! ## A050958.P4061994425147792152

`∩[A003172(n+1), A143577(n+1)]`
-/

namespace A050958.P4061994425147792152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050958.P4061994425147792152

/-! ## A050958.P7604249302617005660

`∩[A003172(n+1), A146354(n+1)]`
-/

namespace A050958.P7604249302617005660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050958.P7604249302617005660

/-! ## A050958.P4711575706732657195

`∩[A143577(n+1), A391423(n+1)]`
-/

namespace A050958.P4711575706732657195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050958.P4711575706732657195

/-! ## A050958.P8470244597771199694

`filter[A146354(n+1), A202053(#)]`
-/

namespace A050958.P8470244597771199694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202053 (f1 j).toNat = 1) n)

end

end A050958.P8470244597771199694

/-! ## A050958.P9573335092900517332

`∩[A003656(n+1), A143577(n+1)]`
-/

namespace A050958.P9573335092900517332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050958.P9573335092900517332

/-!
# A050959: Discriminants of real quadratic fields with class number 1 and related continued fraction period length of 10.

The programs for A050959, there is no canonical definition to state claims against.
-/

/-! ## A050959.P4702525414784679271

`∩[A020349(n+1), A220844(n+1)]`
-/

namespace A050959.P4702525414784679271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220844 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050959.P4702525414784679271

/-!
# A050960: Discriminants of real quadratic fields with class number 1 and related continued fraction period length of 11.

The programs for A050960, there is no canonical definition to state claims against.
-/

/-! ## A050960.P2431912244312630891

`∩[A146356(n+1), A391423(n+1)]`
-/

namespace A050960.P2431912244312630891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050960.P2431912244312630891

/-! ## A050960.P8571171934060665914

`filter[A146356(n+1), A202053(#)]`
-/

namespace A050960.P8571171934060665914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146356 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202053 (f1 j).toNat = 1) n)

end

end A050960.P8571171934060665914

/-! ## A050960.P1562747191592923174

`∩[A003656(n+1), A146335(n+1)]`
-/

namespace A050960.P1562747191592923174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146335 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050960.P1562747191592923174

/-! ## A050960.P8672234535696220725

`∩[A003656(n+1), A146356(n+1)]`
-/

namespace A050960.P8672234535696220725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050960.P8672234535696220725

/-! ## A050960.P15282442104183044057

`A146356(lt[A146378(n+1), 2*n])`
-/

namespace A050960.P15282442104183044057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146378 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146356 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A050960.P15282442104183044057

/-!
# A050962: Discriminants of real quadratic fields with class number 1 and related continued fraction period length of 13.

The programs for A050962, there is no canonical definition to state claims against.
-/

/-! ## A050962.P15750935340595532412

`∩[A333640(n+1), A391423(n+1)]`
-/

namespace A050962.P15750935340595532412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050962.P15750935340595532412

/-! ## A050962.P4372585840194613312

`record[A014973(A202053(n+1)*A333640(n+1))]`
-/

namespace A050962.P4372585840194613312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A202053 (n + 1) * A333640 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050962.P4372585840194613312

/-! ## A050962.P16684921826285800108

`p?[A146358(n+1)*A191314(A008279(n))]`
-/

namespace A050962.P16684921826285800108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146358 (n + 1) * A191314 (A008279 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050962.P16684921826285800108

/-!
# A050963: Discriminants of real quadratic fields with class number 1 and related continued fraction period length of 14.

The programs for A050963, there is no canonical definition to state claims against.
-/

/-! ## A050963.P17747218776801984900

`A020353(A345061(2*n+1)%A020328(2*(n+2)))`
-/

namespace A050963.P17747218776801984900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020353 (Int.tmod (A345061 (2 * n + 1)) (A020328 (2 * (n + 2)))).toNat

end

end A050963.P17747218776801984900

/-!
# A050964: Discriminants of real quadratic fields with class number 1 and related continued fraction period length of 15.

The programs for A050964, there is no canonical definition to state claims against.
-/

/-! ## A050964.P13354208277651459610

`∩[A146360(n+1), A391423(n+1)]`
-/

namespace A050964.P13354208277651459610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050964.P13354208277651459610

/-! ## A050964.P9313424124627482553

`filter[A146360(n+1), A202053(#)]`
-/

namespace A050964.P9313424124627482553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202053 (f1 j).toNat = 1) n)

end

end A050964.P9313424124627482553

/-! ## A050964.P777816791367451421

`A146360(record[val(A146327(n+1), 2)])`
-/

namespace A050964.P777816791367451421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A146327 (n + 1)).toNat 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146360 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A050964.P777816791367451421

/-! ## A050964.P17739757801549675948

`A146360(lt[A275972(n), A348968(n+1)])`
-/

namespace A050964.P17739757801549675948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275972 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348968 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146360 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A050964.P17739757801549675948

/-! ## A050964.P5739531348599710144

`record[A146360(A014499(2^n))]`
-/

namespace A050964.P5739531348599710144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146360 (A014499 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050964.P5739531348599710144

/-!
# A050966: Discriminants of real quadratic fields with class number 1 and related continued fraction period length of 17.

The programs for A050966, there is no canonical definition to state claims against.
-/

/-! ## A050966.P13831573333428179787

`∩[A146340(n+1), A391423(n+1)]`
-/

namespace A050966.P13831573333428179787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146340 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A050966.P13831573333428179787

/-! ## A050966.P391562793273037509

`record[A014973(A146340(A086335(n+1)))]`
-/

namespace A050966.P391562793273037509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (A146340 (A086335 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050966.P391562793273037509

/-! ## A050966.P12171279519991353834

`p?[A146362(n+1)*A202053(A146362(n+1))]`
-/

namespace A050966.P12171279519991353834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146362 (n + 1) * A202053 (A146362 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A050966.P12171279519991353834

/-! ## A050966.P966668210716408785

`A146362(∑[A068045(A055942(n))])`
-/

namespace A050966.P966668210716408785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068045 (A055942 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146362 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050966.P966668210716408785

/-!
# A050970: Numerator of S(n)/Pi^n, where S(n) = Sum_{k=-inf..+inf} (4k+1)^(-n).

The programs for A050970, there is no canonical definition to state claims against.
-/

/-! ## A050970.P17601170978662793218

`gcd(A099612(n), A198631(n))`
-/

namespace A050970.P17601170978662793218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A099612 n) (A198631 n)

end

end A050970.P17601170978662793218

/-! ## A050970.P17728693556915240851

`A099612(n)/A048896(A057979(n))`
-/

namespace A050970.P17728693556915240851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099612 n : ℚ) / (A048896 (A057979 n).toNat : ℚ)

end

end A050970.P17728693556915240851

/-! ## A050970.P10968474642887339184

`A099612(n)/A048896(A093178(n))`
-/

namespace A050970.P10968474642887339184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099612 n : ℚ) / (A048896 (A093178 n).toNat : ℚ)

end

end A050970.P10968474642887339184

/-! ## A050970.P10103965785074907581

`lcm(A066532(n+1), A099612(n))/A066532(n+1)`
-/

namespace A050970.P10103965785074907581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A066532 (n + 1)) (A099612 n) : ℚ) / (A066532 (n + 1) : ℚ)

end

end A050970.P10103965785074907581

/-! ## A050970.P797305899989312030

`lcm(A001316(n), A099612(n))/A001316(n)`
-/

namespace A050970.P797305899989312030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A001316 n) (A099612 n) : ℚ) / (A001316 n : ℚ)

end

end A050970.P797305899989312030

/-! ## A050970.P2344376461918712910

`A000111(n)/gcd(A000111(n), A000165(n))`
-/

namespace A050970.P2344376461918712910
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000111 n : ℚ) / (Int.gcd (A000111 n) (A000165 n) : ℚ)

end

end A050970.P2344376461918712910

/-!
# A050971: Denominator of 4*S(n)/Pi^n, where S(n) = Sum_{k=-inf..+inf} ((4k+1)^(-n)).

The programs for A050971, there is no canonical definition to state claims against.
-/

/-! ## A050971.P18037544968401712298

`A068205(n+1)/4`
-/

namespace A050971.P18037544968401712298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068205 (n + 1) : ℚ) / 4

end

end A050971.P18037544968401712298

/-! ## A050971.P7799853516789419684

`A004731(A141310(n)+n)*A046983(n)`
-/

namespace A050971.P7799853516789419684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004731 (A141310 n + (n : ℤ)).toNat * A046983 n

end

end A050971.P7799853516789419684

/-! ## A050971.P11145191070147141519

`A000165(n)/gcd(A000111(n), A000165(n))`
-/

namespace A050971.P11145191070147141519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 n : ℚ) / (Int.gcd (A000111 n) (A000165 n) : ℚ)

end

end A050971.P11145191070147141519

/-! ## A050971.P3130341798268170644

`A050970(n+1)/A000111(n)*A000165(n)`
-/

namespace A050971.P3130341798268170644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050970 (n + 1) : ℚ) / (A000111 n : ℚ) * (A000165 n : ℚ)

end

end A050971.P3130341798268170644

/-! ## A050971.P5792880258735275339

`lcm(A000165(n), A099612(n))/A000111(n)`
-/

namespace A050971.P5792880258735275339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000165 n) (A099612 n) : ℚ) / (A000111 n : ℚ)

end

end A050971.P5792880258735275339

/-!
# A050972: Smaller member of friendly pairs ordered by smallest maximal element.

The programs for A050972, there is no canonical definition to state claims against.
-/

/-! ## A050972.P16057100076356588609

`A259918(A082743(n))`
-/

namespace A050972.P16057100076356588609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259918 (A082743 n).toNat

end

end A050972.P16057100076356588609

/-! ## A050972.P15813676107005930824

`A259918(A381225(n))`
-/

namespace A050972.P15813676107005930824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259918 (A381225 n).toNat

end

end A050972.P15813676107005930824

/-! ## A050972.P16075843433635458902

`A259918(∑[A287378(n)])`
-/

namespace A050972.P16075843433635458902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259918 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A050972.P16075843433635458902

/-! ## A050972.P5765735615064631563

`A259918(A001104(n+1))`
-/

namespace A050972.P5765735615064631563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259918 (A001104 (n + 1)).toNat

end

end A050972.P5765735615064631563

/-! ## A050972.P3348240744286419032

`A259918(A002998(n+1))`
-/

namespace A050972.P3348240744286419032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259918 (A002998 (n + 1)).toNat

end

end A050972.P3348240744286419032

/-!
# A050973: Larger member of friendly pairs ordered by smallest maximal element.

The programs for A050973, there is no canonical definition to state claims against.
-/

/-! ## A050973.P4250692485915698171

`A095301(A062399(n+1))`
-/

namespace A050973.P4250692485915698171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095301 (A062399 (n + 1)).toNat

end

end A050973.P4250692485915698171

/-! ## A050973.P11562512640825463761

`A095301(A087051(n)+1)`
-/

namespace A050973.P11562512640825463761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095301 (A087051 n + 1).toNat

end

end A050973.P11562512640825463761

/-! ## A050973.P16442746789633958862

`A175542(A095301(n+1))`
-/

namespace A050973.P16442746789633958862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175542 (A095301 (n + 1)).toNat

end

end A050973.P16442746789633958862

/-! ## A050973.P13082564707511466242

`A095301(A351870(n+1))`
-/

namespace A050973.P13082564707511466242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095301 (A351870 (n + 1)).toNat

end

end A050973.P13082564707511466242

/-! ## A050973.P11096214488605259856

`A095301(A238363(∑[n+1]))`
-/

namespace A050973.P11096214488605259856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095301 (A238363 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A050973.P11096214488605259856

/-!
# A050975: Haupt-exponents of 3 modulo integers relatively prime to 3.

The programs for A050975, there is no canonical definition to state claims against.
-/

/-! ## A050975.P3327947751671685170

`A053446(2+n)`
-/

namespace A050975.P3327947751671685170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053446 (2 + n)

end

end A050975.P3327947751671685170

/-! ## A050975.P10823856070426020570

`A337937(n+2)/A337714(n+2)`
-/

namespace A050975.P10823856070426020570
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337937 (n + 2) : ℚ) / (A337714 (n + 2) : ℚ)

end

end A050975.P10823856070426020570

/-! ## A050975.P14975161980976793748

`A007734(∑[n%2+1]+1)`
-/

namespace A050975.P14975161980976793748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A050975.P14975161980976793748

/-! ## A050975.P12659328874912384347

`A054704(∑[and(1, n)+1]+1)`
-/

namespace A050975.P12659328874912384347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A050975.P12659328874912384347

/-! ## A050975.P7835741907736340314

`A007734(A001651(n+2))`
-/

namespace A050975.P7835741907736340314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A001651 (n + 2)).toNat

end

end A050975.P7835741907736340314

/-! ## A050975.P2160246857333373494

`A007734(A097482(n+2))`
-/

namespace A050975.P2160246857333373494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A097482 (n + 2)).toNat

end

end A050975.P2160246857333373494

/-! ## A050975.P1055886765645220867

`A054704(∑[A000034(n)]+1)`
-/

namespace A050975.P1055886765645220867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A050975.P1055886765645220867

/-! ## A050975.P9611006746070474741

`A007734(record[A038502(n+2)])`
-/

namespace A050975.P9611006746070474741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050975.P9611006746070474741

/-! ## A050975.P6864922014138360768

`A054704(record[A038502(n+2)])`
-/

namespace A050975.P6864922014138360768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050975.P6864922014138360768

/-! ## A050975.P9704605473235948796

`A007734(A032766(n+1)+1)`
-/

namespace A050975.P9704605473235948796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A032766 (n + 1) + 1).toNat

end

end A050975.P9704605473235948796

/-! ## A050975.P4951707936729281601

`A070676(lt[1, A070683(n+4)])`
-/

namespace A050975.P4951707936729281601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070683 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070676 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050975.P4951707936729281601

/-! ## A050975.P13821118662352778606

`A007734(A133223(n+2))`
-/

namespace A050975.P13821118662352778606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A133223 (n + 2)).toNat

end

end A050975.P13821118662352778606

/-! ## A050975.P6741666846121878200

`A054704(A057353(2*n+1)+2)`
-/

namespace A050975.P6741666846121878200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054704 (A057353 (2 * n + 1) + 2).toNat

end

end A050975.P6741666846121878200

/-! ## A050975.P6548792050321383437

`A007734(A016051(n+2))`
-/

namespace A050975.P6548792050321383437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A016051 (n + 2)).toNat

end

end A050975.P6548792050321383437

/-! ## A050975.P4434797180069038877

`A007734(A051063(n+2))`
-/

namespace A050975.P4434797180069038877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007734 (A051063 (n + 2)).toNat

end

end A050975.P4434797180069038877

/-!
# A050976: Haupt-exponents of 4 modulo integers relatively prime to 4.

The programs for A050976, there is no canonical definition to state claims against.
-/

/-! ## A050976.P6710660621390242601

`lcm(2, A002326(n+1))/2`
-/

namespace A050976.P6710660621390242601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A002326 (n + 1)) : ℚ) / 2

end

end A050976.P6710660621390242601

/-! ## A050976.P8284189566445003813

`A053447(n+1)`
-/

namespace A050976.P8284189566445003813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 (n + 1)

end

end A050976.P8284189566445003813

/-! ## A050976.P7870416238969715467

`A055388(n+2)/2`
-/

namespace A050976.P7870416238969715467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055388 (n + 2) : ℚ) / 2

end

end A050976.P7870416238969715467

/-! ## A050976.P11294582022258069870

`lcm((-1)^n, A053447(Δ[n²]-n))`
-/

namespace A050976.P11294582022258069870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A053447 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A050976.P11294582022258069870

/-! ## A050976.P13739471875123515338

`ratio[A053447(n)]*A053447(n)`
-/

namespace A050976.P13739471875123515338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A053447 n : ℚ)

end

end A050976.P13739471875123515338

/-! ## A050976.P17077030441801044479

`gcd(A002326(n+1), A216829(n+2))`
-/

namespace A050976.P17077030441801044479
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002326 (n + 1)) (A216829 (n + 2))

end

end A050976.P17077030441801044479

/-! ## A050976.P18202434288016121751

`A026741(A002326(n+1))`
-/

namespace A050976.P18202434288016121751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A002326 (n + 1)).toNat

end

end A050976.P18202434288016121751

/-! ## A050976.P4144670539880321290

`A001281(A055388(n+2))`
-/

namespace A050976.P4144670539880321290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A055388 (n + 2)).toNat

end

end A050976.P4144670539880321290

/-! ## A050976.P9893561825576784017

`A004526(lcm(2, A002326(n+1)))`
-/

namespace A050976.P9893561825576784017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.lcm 2 (A002326 (n + 1)))

end

end A050976.P9893561825576784017

/-! ## A050976.P14175727348622034022

`A007735(2*n+3)`
-/

namespace A050976.P14175727348622034022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007735 (2 * n + 3)

end

end A050976.P14175727348622034022

/-! ## A050976.P603757837436194587

`A054705(2*n+3)`
-/

namespace A050976.P603757837436194587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054705 (2 * n + 3)

end

end A050976.P603757837436194587

/-! ## A050976.P15445119081122230965

`A026741(A024222(2*(n+2)))`
-/

namespace A050976.P15445119081122230965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A024222 (2 * (n + 2))).toNat

end

end A050976.P15445119081122230965

/-! ## A050976.P8163289091600677093

`A060819(2*A002326(n+1))`
-/

namespace A050976.P8163289091600677093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A002326 (n + 1)).toNat

end

end A050976.P8163289091600677093

/-! ## A050976.P1820308571384368567

`A030065(2*A055388(n+2))`
-/

namespace A050976.P1820308571384368567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030065 (2 * A055388 (n + 2)).toNat

end

end A050976.P1820308571384368567

/-! ## A050976.P2435402001614385662

`A060819(2*A055388(n+2))`
-/

namespace A050976.P2435402001614385662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 * A055388 (n + 2)).toNat

end

end A050976.P2435402001614385662

/-! ## A050976.P4609802130436816835

`A026741(A323712(2*(n+1)))`
-/

namespace A050976.P4609802130436816835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A323712 (2 * (n + 1))).toNat

end

end A050976.P4609802130436816835

/-!
# A050977: Haupt-exponents of 5 modulo integers relatively prime to 5.

The programs for A050977, there is no canonical definition to state claims against.
-/

/-! ## A050977.P18432923809089545609

`A053448(2+n)`
-/

namespace A050977.P18432923809089545609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053448 (2 + n)

end

end A050977.P18432923809089545609

/-! ## A050977.P139507688189063497

`A007736(∑[char[or(3, n)]+1]+1)`
-/

namespace A050977.P139507688189063497
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A050977.P139507688189063497

/-! ## A050977.P3775656786487515600

`A007736(A047201(n+2))`
-/

namespace A050977.P3775656786487515600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (A047201 (n + 2)).toNat

end

end A050977.P3775656786487515600

/-! ## A050977.P7413118776141361591

`A007736(record[A132739(n+2)])`
-/

namespace A050977.P7413118776141361591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050977.P7413118776141361591

/-! ## A050977.P3457658223093109902

`A054706(record[A132739(n+2)])`
-/

namespace A050977.P3457658223093109902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050977.P3457658223093109902

/-! ## A050977.P9637142717214846831

`A007736(A001068(n+1)+1)`
-/

namespace A050977.P9637142717214846831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (A001068 (n + 1) + 1).toNat

end

end A050977.P9637142717214846831

/-! ## A050977.P14814588724358963450

`A054706(A001068(n+1)+1)`
-/

namespace A050977.P14814588724358963450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (A001068 (n + 1) + 1).toNat

end

end A050977.P14814588724358963450

/-! ## A050977.P1409131100717002010

`A054706(A002265(n+1)+2+n)`
-/

namespace A050977.P1409131100717002010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (A002265 (n + 1) + 2 + (n : ℤ)).toNat

end

end A050977.P1409131100717002010

/-! ## A050977.P2763463394759319351

`A007736(A265428(n)+A008619(n))`
-/

namespace A050977.P2763463394759319351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007736 (A265428 n + A008619 n).toNat

end

end A050977.P2763463394759319351

/-! ## A050977.P2889780949141537582

`A054706(A002265(5*n+9))`
-/

namespace A050977.P2889780949141537582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054706 (A002265 (5 * n + 9)).toNat

end

end A050977.P2889780949141537582

/-!
# A050978: Haupt-exponents of 6 modulo integers relatively prime to 6.

The programs for A050978, there is no canonical definition to state claims against.
-/

/-! ## A050978.P5794905428561625445

`A053449(n+2)`
-/

namespace A050978.P5794905428561625445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053449 (n + 2)

end

end A050978.P5794905428561625445

/-! ## A050978.P14983472581177133062

`A007737(A007310(n+2))`
-/

namespace A050978.P14983472581177133062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A007310 (n + 2)).toNat

end

end A050978.P14983472581177133062

/-! ## A050978.P8564912569810303451

`A007737(A038179(n+3))`
-/

namespace A050978.P8564912569810303451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A038179 (n + 3)).toNat

end

end A050978.P8564912569810303451

/-! ## A050978.P2415818921813251962

`A007737(Δ[A184533(n+1)])`
-/

namespace A050978.P2415818921813251962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (f1 (n + 1) - f1 n).toNat

end

end A050978.P2415818921813251962

/-! ## A050978.P17047361236071218757

`A007737(record[A051724(n+5)])`
-/

namespace A050978.P17047361236071218757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050978.P17047361236071218757

/-! ## A050978.P14525431341387876376

`A007737(A047233(n+2)+1)`
-/

namespace A050978.P14525431341387876376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A047233 (n + 2) + 1).toNat

end

end A050978.P14525431341387876376

/-! ## A050978.P3590023266932294631

`A054707(A047235(n+1)+3)`
-/

namespace A050978.P3590023266932294631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054707 (A047235 (n + 1) + 3).toNat

end

end A050978.P3590023266932294631

/-! ## A050978.P7240828642573333393

`A007737(A063221(n+2)/2)`
-/

namespace A050978.P7240828642573333393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (SequenceMachineLib.roundAway ((A063221 (n + 2) : ℚ) / 2)).toNat

end

end A050978.P7240828642573333393

/-! ## A050978.P11373108739533531457

`A007737(A091999(n+2)/2)`
-/

namespace A050978.P11373108739533531457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (SequenceMachineLib.roundAway ((A091999 (n + 2) : ℚ) / 2)).toNat

end

end A050978.P11373108739533531457

/-! ## A050978.P8833770040385135993

`A070681(A007494(n+1))`
-/

namespace A050978.P8833770040385135993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070681 (A007494 (n + 1)).toNat

end

end A050978.P8833770040385135993

/-! ## A050978.P11525933092655736409

`A070681(A294732(n+3))`
-/

namespace A050978.P11525933092655736409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070681 (A294732 (n + 3)).toNat

end

end A050978.P11525933092655736409

/-! ## A050978.P10950025653133793658

`A070681(lt[0, A070681(n)])`
-/

namespace A050978.P10950025653133793658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070681 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050978.P10950025653133793658

/-! ## A050978.P11393233906881293047

`A007737(A063221(n+2))`
-/

namespace A050978.P11393233906881293047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A063221 (n + 2)).toNat

end

end A050978.P11393233906881293047

/-! ## A050978.P11379383081564550839

`A007737(A091999(n+2))`
-/

namespace A050978.P11379383081564550839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A091999 (n + 2)).toNat

end

end A050978.P11379383081564550839

/-! ## A050978.P16580267685056914592

`A007737(A259755(n+2)/2)`
-/

namespace A050978.P16580267685056914592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (SequenceMachineLib.roundAway ((A259755 (n + 2) : ℚ) / 2)).toNat

end

end A050978.P16580267685056914592

/-! ## A050978.P10168584934171140037

`A007737(A016825(Δ[A001859(n)]))`
-/

namespace A050978.P10168584934171140037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A016825 (f1 (n + 1) - f1 n).toNat).toNat

end

end A050978.P10168584934171140037

/-! ## A050978.P744188717335692219

`A007737(A306771(n+2))`
-/

namespace A050978.P744188717335692219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A306771 (n + 2)).toNat

end

end A050978.P744188717335692219

/-! ## A050978.P1456928660252900882

`A007737(A259755(n+2))`
-/

namespace A050978.P1456928660252900882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007737 (A259755 (n + 2)).toNat

end

end A050978.P1456928660252900882

/-!
# A050979: Haupt-exponents of 7 modulo integers relatively prime to 7.

The programs for A050979, there is no canonical definition to state claims against.
-/

/-! ## A050979.P5305976172269734647

`A053450(n+2)`
-/

namespace A050979.P5305976172269734647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053450 (n + 2)

end

end A050979.P5305976172269734647

/-! ## A050979.P18136866725098591879

`A007738(A047304(2+n))`
-/

namespace A050979.P18136866725098591879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (A047304 (2 + n)).toNat

end

end A050979.P18136866725098591879

/-! ## A050979.P13124168041799630247

`A007738(record[A106608(n+2)])`
-/

namespace A050979.P13124168041799630247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050979.P13124168041799630247

/-! ## A050979.P16058358410957139212

`A054708(record[A242603(n+2)])`
-/

namespace A050979.P16058358410957139212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054708 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050979.P16058358410957139212

/-! ## A050979.P18437718729520807664

`A007738(A047368(n+2)+1)`
-/

namespace A050979.P18437718729520807664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (A047368 (n + 2) + 1).toNat

end

end A050979.P18437718729520807664

/-! ## A050979.P14839850454572381340

`A054708(A047368(n+2)+1)`
-/

namespace A050979.P14839850454572381340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054708 (A047368 (n + 2) + 1).toNat

end

end A050979.P14839850454572381340

/-! ## A050979.P17065531098468867926

`A070678(A047303(n+1)+2)`
-/

namespace A050979.P17065531098468867926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070678 (A047303 (n + 1) + 2).toNat

end

end A050979.P17065531098468867926

/-!
# A050980: Haupt-exponents of 8 modulo integers relatively prime to 8.

The programs for A050980, there is no canonical definition to state claims against.
-/

/-! ## A050980.P2978873527465750728

`A053451(1+n)`
-/

namespace A050980.P2978873527465750728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053451 (1 + n)

end

end A050980.P2978873527465750728

/-! ## A050980.P13659778706950603760

`-Δ[a(n-1)-A053451(n)]` with `a(0)=1`
-/

namespace A050980.P13659778706950603760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - A053451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A050980.P13659778706950603760

/-! ## A050980.P3333141286197110214

`lcm((-1)^n, A053451(Δ[n²]-n))`
-/

namespace A050980.P3333141286197110214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A053451 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A050980.P3333141286197110214

/-! ## A050980.P16300269380669604807

`A053451(Δ[n²]-n)%A017341(n)`
-/

namespace A050980.P16300269380669604807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053451 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat) (A017341 n)

end

end A050980.P16300269380669604807

/-! ## A050980.P10643085520869432253

`gcd(A000038(n), A053451(Δ[n²]-n))`
-/

namespace A050980.P10643085520869432253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A053451 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat)

end

end A050980.P10643085520869432253

/-! ## A050980.P4732493541255188950

`A002326(n+1)/A003558(n+1)*A003570(n+1)`
-/

namespace A050980.P4732493541255188950
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002326 (n + 1) : ℚ) / (A003558 (n + 1) : ℚ) * (A003570 (n + 1) : ℚ)

end

end A050980.P4732493541255188950

/-! ## A050980.P373549896612886674

`A051176(A002326(n+1))`
-/

namespace A050980.P373549896612886674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051176 (A002326 (n + 1)).toNat

end

end A050980.P373549896612886674

/-! ## A050980.P6838022271082323741

`A007739(2*n+3)`
-/

namespace A050980.P6838022271082323741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007739 (2 * n + 3)

end

end A050980.P6838022271082323741

/-! ## A050980.P3633865026048087760

`A054709(2*n+3)`
-/

namespace A050980.P3633865026048087760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054709 (2 * n + 3)

end

end A050980.P3633865026048087760

/-! ## A050980.P699909316508943281

`A000027(A007739(Δ[(n+1)²]))`
-/

namespace A050980.P699909316508943281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A007739 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A050980.P699909316508943281

/-! ## A050980.P2687842110882051826

`A054709(Δ[A005893(n+1)])-1`
-/

namespace A050980.P2687842110882051826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054709 (f1 (n + 1) - f1 n).toNat - 1

end

end A050980.P2687842110882051826

/-!
# A050981: Haupt-exponents of 9 modulo integers relatively prime to 9.

The programs for A050981, there is no canonical definition to state claims against.
-/

/-! ## A050981.P16077069610786165130

`A050975(n+1)/gcd(2, A050975(n+1))`
-/

namespace A050981.P16077069610786165130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050975 (n + 1) : ℚ) / (Int.gcd 2 (A050975 (n + 1)) : ℚ)

end

end A050981.P16077069610786165130

/-! ## A050981.P1773601174264332802

`A050975(n+1)/A040001(A050975(n+1))`
-/

namespace A050981.P1773601174264332802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A050975 (n + 1) : ℚ) / (A040001 (A050975 (n + 1)).toNat : ℚ)

end

end A050981.P1773601174264332802

/-! ## A050981.P17538074021867789582

`A053452(2+n)`
-/

namespace A050981.P17538074021867789582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053452 (2 + n)

end

end A050981.P17538074021867789582

/-! ## A050981.P8241050917484769879

`lcm(2, A053446(n+2))/2`
-/

namespace A050981.P8241050917484769879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A053446 (n + 2)) : ℚ) / 2

end

end A050981.P8241050917484769879

/-! ## A050981.P17843723543462223444

`A026741(A050975(n+1))`
-/

namespace A050981.P17843723543462223444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A050975 (n + 1)).toNat

end

end A050981.P17843723543462223444

/-! ## A050981.P8977992795702390889

`A026741(A053446(n+2))`
-/

namespace A050981.P8977992795702390889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A053446 (n + 2)).toNat

end

end A050981.P8977992795702390889

/-! ## A050981.P2792824223335159283

`A007740(2*(n+1)-floor(n/2))`
-/

namespace A050981.P2792824223335159283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007740 ((2 * (n + 1) : ℤ) - ⌊(n : ℚ) / 2⌋).toNat

end

end A050981.P2792824223335159283

/-! ## A050981.P6006524086205049239

`A054717(record[A145064(n)])`
-/

namespace A050981.P6006524086205049239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050981.P6006524086205049239

/-! ## A050981.P13160269917896034961

`A054717(A007494(n)+2)`
-/

namespace A050981.P13160269917896034961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (A007494 n + 2).toNat

end

end A050981.P13160269917896034961

/-! ## A050981.P6862916168903812442

`A054717(∑[A000034(n)]+1)`
-/

namespace A050981.P6862916168903812442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A050981.P6862916168903812442

/-! ## A050981.P11813693233306552090

`A054717(record[A038502(n+2)])`
-/

namespace A050981.P11813693233306552090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A050981.P11813693233306552090

/-! ## A050981.P14187260504469622484

`A054717(A032766(n+1)+1)`
-/

namespace A050981.P14187260504469622484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (A032766 (n + 1) + 1).toNat

end

end A050981.P14187260504469622484

/-! ## A050981.P11492681394753090711

`A054717(A080513(n)+1+n)`
-/

namespace A050981.P11492681394753090711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054717 (A080513 n + 1 + (n : ℤ)).toNat

end

end A050981.P11492681394753090711

/-! ## A050981.P12222182168045968175

`A070679(lt[1, A070683(n+4)])`
-/

namespace A050981.P12222182168045968175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070683 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070679 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A050981.P12222182168045968175

/-!
# A050982: 5-idempotent numbers.

The programs for A050982, the canonical program `A050982.P18014931874891723079` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050982 has offset 5).

The definition of A050982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050982.P18014931874891723079

`C(n+5, 5)*5^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050982

/-- `C(n+5, 5)*5^n` -/
def P18014931874891723079.Spec : Prop :=
  ∀ n, (P18014931874891723079.a n : ℤ) = A050982 (n + 5)

theorem P18014931874891723079.correct : P18014931874891723079.Spec := by
  intro n
  simp only [A050982, Nat.add_sub_cancel]

end A050982

/-! ## A050982.P8062365076394851390

`(25/n+5)*a(n-1)` with `a(0)=1`
-/

namespace A050982.P8062365076394851390
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (25 / (n : ℚ) + 5) * a (n - 1)

end

end A050982.P8062365076394851390

namespace A050982

/-- `(25/n+5)*a(n-1)` -/
def P8062365076394851390.Spec : Prop :=
  ∀ n, P8062365076394851390.a n = (A050982 (n + 5) : ℚ)

end A050982

/-! ## A050982.P6265711047638814454

`5^n*∑[∑[∑[∑[n+1]]]]`
-/

namespace A050982.P6265711047638814454
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050982.P6265711047638814454

namespace A050982

/-- `5^n*∑[∑[∑[∑[n+1]]]]` -/
def P6265711047638814454.Spec : Prop :=
  ∀ n, (P6265711047638814454.a n : ℤ) = A050982 (n + 5)

end A050982

/-! ## A050982.P832905658993139209

`A013612(A055999(n+3))`
-/

namespace A050982.P832905658993139209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (A055999 (n + 3)).toNat

end

end A050982.P832905658993139209

namespace A050982

/-- `A013612(A055999(n+3))` -/
def P832905658993139209.Spec : Prop :=
  ∀ n, P832905658993139209.a n = A050982 (n + 5)

end A050982

/-! ## A050982.P6190934931628177526

`A013612(Δ[A023551(n+1)])`
-/

namespace A050982.P6190934931628177526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (f1 (n + 1) - f1 n).toNat

end

end A050982.P6190934931628177526

namespace A050982

/-- `A013612(Δ[A023551(n+1)])` -/
def P6190934931628177526.Spec : Prop :=
  ∀ n, P6190934931628177526.a n = A050982 (n + 5)

end A050982

/-! ## A050982.P11250822495653783322

`A013612(eq[6, A004736(n+1)])`
-/

namespace A050982.P11250822495653783322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013612 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050982.P11250822495653783322

namespace A050982

/-- `A013612(eq[6, A004736(n+1)])` -/
def P11250822495653783322.Spec : Prop :=
  ∀ n, P11250822495653783322.a n = A050982 (n + 5)

end A050982

/-! ## A050982.P16465689597868525291

`A059297(A055999(n+4)-2*(n+1))`
-/

namespace A050982.P16465689597868525291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059297 (A055999 (n + 4) - (2 * (n + 1) : ℤ)).toNat

end

end A050982.P16465689597868525291

namespace A050982

/-- `A059297(A055999(n+4)-2*(n+1))` -/
def P16465689597868525291.Spec : Prop :=
  ∀ n, P16465689597868525291.a n = A050982 (n + 5)

end A050982

/-!
# A050983: de Bruijn's S(4,n).

The programs for A050983, the canonical program `A050983.P14810741635901789946` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050983 has offset 0).

The definition of A050983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050983.P14810741635901789946

`C(2*n, n)*∑{#}[n, C(2*n, n+#)²*C(2*n+#, #)]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050983

/-- `C(2*n, n)*∑{#}[n, C(2*n, n+#)²*C(2*n+#, #)]` -/
def P14810741635901789946.Spec : Prop :=
  ∀ n, (P14810741635901789946.a n : ℤ) = A050983 n

theorem P14810741635901789946.correct : P14810741635901789946.Spec := by
  intro n
  simp only [A050983]

end A050983

/-! ## A050983.P18198072047101081374

`record[abs(A228304(n))]`
-/

namespace A050983.P18198072047101081374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A228304 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050983.P18198072047101081374

namespace A050983

/-- `record[abs(A228304(n))]` -/
def P18198072047101081374.Spec : Prop :=
  ∀ n, P18198072047101081374.a n = A050983 n

end A050983

/-! ## A050983.P15070107047985600418

`abs(A228304(2*n))`
-/

namespace A050983.P15070107047985600418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A228304 (2 * n)|

end

end A050983.P15070107047985600418

namespace A050983

/-- `abs(A228304(2*n))` -/
def P15070107047985600418.Spec : Prop :=
  ∀ n, P15070107047985600418.a n = A050983 n

end A050983

/-! ## A050983.P5289037553690322524

`A000984(n)*A099601(n)`
-/

namespace A050983.P5289037553690322524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n * A099601 n

end

end A050983.P5289037553690322524

namespace A050983

/-- `A000984(n)*A099601(n)` -/
def P5289037553690322524.Spec : Prop :=
  ∀ n, P5289037553690322524.a n = A050983 n

end A050983

/-! ## A050983.P16270524191589701967

`sqrt(A002894(n))*A099601(n)`
-/

namespace A050983.P16270524191589701967
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A002894 n : ℝ) * (A099601 n : ℝ)

end

end A050983.P16270524191589701967

namespace A050983

/-- `sqrt(A002894(n))*A099601(n)` -/
def P16270524191589701967.Spec : Prop :=
  ∀ n, P16270524191589701967.a n = (A050983 n : ℝ)

end A050983

/-!
# A050984: de Bruijn's S(5,n) = Sum_{k = 0..2*n} (-1)^(n+k)*binomial(2*n, k)^5.

The programs for A050984, the canonical program `A050984.P5993832405979032238` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050984 has offset 0).

The definition of A050984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[2*n, (-1)^(n+#)*C(2*n, #)^5]` (program `A050984.P5993832405979032238`, by `A050984.P5993832405979032238.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A050984.P5993832405979032238

`∑{#}[2*n, (-1)^(n+#)*C(2*n, #)^5]`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050984

/-- `∑{#}[2*n, (-1)^(n+#)*C(2*n, #)^5]` -/
def P5993832405979032238.Spec : Prop :=
  ∀ n, P5993832405979032238.a n = A050984 n

theorem P5993832405979032238.correct : P5993832405979032238.Spec := by
  intro n
  simp only [A050984]

end A050984

/-! ## A050984.P5471755970829980591

`record[A350594(∑[n+3]-3)]`
-/

namespace A050984.P5471755970829980591
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350594 (∑ j ∈ Finset.range (n + 1), f2 j - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050984.P5471755970829980591

namespace A050984

/-- `record[A350594(∑[n+3]-3)]` -/
def P5471755970829980591.Spec : Prop :=
  ∀ n, P5471755970829980591.a n = A050984 n

end A050984

/-! ## A050984.P2352428307484062849

`A350594(eq[5, A025581(n)])`
-/

namespace A050984.P2352428307484062849
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350594 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050984.P2352428307484062849

namespace A050984

/-- `A350594(eq[5, A025581(n)])` -/
def P2352428307484062849.Spec : Prop :=
  ∀ n, P2352428307484062849.a n = A050984 n

end A050984

/-! ## A050984.P13154775466849655917

`record[abs(A350594(A055999(n)))]`
-/

namespace A050984.P13154775466849655917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A350594 (A055999 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050984.P13154775466849655917

namespace A050984

/-- `record[abs(A350594(A055999(n)))]` -/
def P13154775466849655917.Spec : Prop :=
  ∀ n, P13154775466849655917.a n = A050984 n

end A050984

/-! ## A050984.P15085276793667796911

`A350594(Δ[A023551(n+1)])`
-/

namespace A050984.P15085276793667796911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350594 (f1 (n + 1) - f1 n).toNat

end

end A050984.P15085276793667796911

namespace A050984

/-- `A350594(Δ[A023551(n+1)])` -/
def P15085276793667796911.Spec : Prop :=
  ∀ n, P15085276793667796911.a n = A050984 n

end A050984

/-!
# A050985: Cubefree part of n.

The programs for A050985, the canonical program `A050985.P12411912326700818488` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050985 has offset 1).

The definition of A050985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A050985.P2004288919227995893

`(n+1)/A008834(n+1)`
-/

namespace A050985.P2004288919227995893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A008834 (n + 1) : ℚ)

end

end A050985.P2004288919227995893

namespace A050985

/-- `(n+1)/A008834(n+1)` -/
def P2004288919227995893.Spec : Prop :=
  ∀ n, P2004288919227995893.a n = (A050985 (n + 1) : ℚ)

end A050985

/-! ## A050985.P10145331609153136904

`gcd(n+1, A277780(n+1))`
-/

namespace A050985.P10145331609153136904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A277780 (n + 1))

end

end A050985.P10145331609153136904

namespace A050985

/-- `gcd(n+1, A277780(n+1))` -/
def P10145331609153136904.Spec : Prop :=
  ∀ n, (P10145331609153136904.a n : ℤ) = A050985 (n + 1)

end A050985

/-! ## A050985.P12804760906388489743

`(n+1)/A053150(n+1)^3`
-/

namespace A050985.P12804760906388489743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053150 (n + 1) ^ 3 : ℚ)

end

end A050985.P12804760906388489743

namespace A050985

/-- `(n+1)/A053150(n+1)^3` -/
def P12804760906388489743.Spec : Prop :=
  ∀ n, P12804760906388489743.a n = (A050985 (n + 1) : ℚ)

end A050985

/-! ## A050985.P2265364350292068416

`(n+1)/A000578(A053150(n+1))`
-/

namespace A050985.P2265364350292068416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A000578 (A053150 (n + 1)).toNat : ℚ)

end

end A050985.P2265364350292068416

namespace A050985

/-- `(n+1)/A000578(A053150(n+1))` -/
def P2265364350292068416.Spec : Prop :=
  ∀ n, P2265364350292068416.a n = (A050985 (n + 1) : ℚ)

end A050985

/-! ## A050985.P5625494041265927790

`A056551(n+1)/A048798(n+1)`
-/

namespace A050985.P5625494041265927790
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056551 (n + 1) : ℚ) / (A048798 (n + 1) : ℚ)

end

end A050985.P5625494041265927790

namespace A050985

/-- `A056551(n+1)/A048798(n+1)` -/
def P5625494041265927790.Spec : Prop :=
  ∀ n, P5625494041265927790.a n = (A050985 (n + 1) : ℚ)

end A050985

/-! ## A050985.P5921580834222589971

`(n+1)/A053149(A062378(n+1))`
-/

namespace A050985.P5921580834222589971
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053149 (A062378 (n + 1)).toNat : ℚ)

end

end A050985.P5921580834222589971

namespace A050985

/-- `(n+1)/A053149(A062378(n+1))` -/
def P5921580834222589971.Spec : Prop :=
  ∀ n, P5921580834222589971.a n = (A050985 (n + 1) : ℚ)

end A050985

/-! ## A050985.P17495961640265320339

`(n+1)/A048762(A113061(n+1))`
-/

namespace A050985.P17495961640265320339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A048762 (A113061 (n + 1)).toNat : ℚ)

end

end A050985.P17495961640265320339

namespace A050985

/-- `(n+1)/A048762(A113061(n+1))` -/
def P17495961640265320339.Spec : Prop :=
  ∀ n, P17495961640265320339.a n = (A050985 (n + 1) : ℚ)

end A050985

/-! ## A050985.P17517978470633663339

`A053149(n+1)/A159253(n+1)`
-/

namespace A050985.P17517978470633663339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 (n + 1) : ℚ) / (A159253 (n + 1) : ℚ)

end

end A050985.P17517978470633663339

namespace A050985

/-- `A053149(n+1)/A159253(n+1)` -/
def P17517978470633663339.Spec : Prop :=
  ∀ n, P17517978470633663339.a n = (A050985 (n + 1) : ℚ)

end A050985

/-! ## A050985.P14432613585494143251

`A327626(n+1)/A113061(n+1)`
-/

namespace A050985.P14432613585494143251
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327626 (n + 1) : ℚ) / (A113061 (n + 1) : ℚ)

end

end A050985.P14432613585494143251

namespace A050985

/-- `A327626(n+1)/A113061(n+1)` -/
def P14432613585494143251.Spec : Prop :=
  ∀ n, P14432613585494143251.a n = (A050985 (n + 1) : ℚ)

end A050985

/-! ## A050985.P12411912326700818488

`∑{d}[n+1, A073185(#)*A210826((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A050985

/-- `∑{d}[n+1, A073185(#)*A210826((n+1)/#)]` -/
def P12411912326700818488.Spec : Prop :=
  ∀ n, P12411912326700818488.a n = A050985 (n + 1)

theorem P12411912326700818488.correct : P12411912326700818488.Spec := by
  intro n
  simp only [A050985, Nat.add_sub_cancel]

end A050985

/-! ## A050985.P17768935320686438972

`A007913(A000189(n+1))*A056552(n+1)`
-/

namespace A050985.P17768935320686438972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A000189 (n + 1)).toNat * A056552 (n + 1)

end

end A050985.P17768935320686438972

namespace A050985

/-- `A007913(A000189(n+1))*A056552(n+1)` -/
def P17768935320686438972.Spec : Prop :=
  ∀ n, P17768935320686438972.a n = A050985 (n + 1)

end A050985

/-! ## A050985.P11903055246823246568

`(n+1)/A053149(A003557(A003557(n+1)))`
-/

namespace A050985.P11903055246823246568
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A053149 (A003557 (A003557 (n + 1)).toNat).toNat : ℚ)

end

end A050985.P11903055246823246568

namespace A050985

/-- `(n+1)/A053149(A003557(A003557(n+1)))` -/
def P11903055246823246568.Spec : Prop :=
  ∀ n, P11903055246823246568.a n = (A050985 (n + 1) : ℚ)

end A050985

/-! ## A050985.P13138639716449929014

`A000578(A056552(n+1))/A048798(n+1)`
-/

namespace A050985.P13138639716449929014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (A056552 (n + 1)).toNat : ℚ) / (A048798 (n + 1) : ℚ)

end

end A050985.P13138639716449929014

namespace A050985

/-- `A000578(A056552(n+1))/A048798(n+1)` -/
def P13138639716449929014.Spec : Prop :=
  ∀ n, P13138639716449929014.a n = (A050985 (n + 1) : ℚ)

end A050985

/-! ## A050985.P6929246359785271433

`A007913(A000189(n+1))*A019555(n+1)/A053150(n+1)`
-/

namespace A050985.P6929246359785271433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007913 (A000189 (n + 1)).toNat * A019555 (n + 1) : ℚ) / (A053150 (n + 1) : ℚ)

end

end A050985.P6929246359785271433

namespace A050985

/-- `A007913(A000189(n+1))*A019555(n+1)/A053150(n+1)` -/
def P6929246359785271433.Spec : Prop :=
  ∀ n, P6929246359785271433.a n = (A050985 (n + 1) : ℚ)

end A050985

/-! ## A050985.P10768797427721592082

`A053165((n+1)*A053150(n+1))`
-/

namespace A050985.P10768797427721592082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 ((n + 1 : ℤ) * A053150 (n + 1)).toNat

end

end A050985.P10768797427721592082

namespace A050985

/-- `A053165((n+1)*A053150(n+1))` -/
def P10768797427721592082.Spec : Prop :=
  ∀ n, P10768797427721592082.a n = A050985 (n + 1)

end A050985

/-! ## A050985.P914135495580759573

`A000578(∏{p}[A048798(n+1), #])/A048798(n+1)`
-/

namespace A050985.P914135495580759573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p) : ℚ) / (A048798 (n + 1) : ℚ)

end

end A050985.P914135495580759573

namespace A050985

/-- `A000578(∏{p}[A048798(n+1), #])/A048798(n+1)` -/
def P914135495580759573.Spec : Prop :=
  ∀ n, P914135495580759573.a n = (A050985 (n + 1) : ℚ)

end A050985

/-! ## A050985.P3743267406241697815

`A367699((n+1)*A366906(A366905(n+1)))`
-/

namespace A050985.P3743267406241697815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367699 ((n + 1 : ℤ) * A366906 (A366905 (n + 1)).toNat).toNat

end

end A050985.P3743267406241697815

namespace A050985

/-- `A367699((n+1)*A366906(A366905(n+1)))` -/
def P3743267406241697815.Spec : Prop :=
  ∀ n, P3743267406241697815.a n = A050985 (n + 1)

end A050985

/-! ## A050985.P1273027984245776074

`A056622(A360541(n+1))*A360541(A056622(n+1))`
-/

namespace A050985.P1273027984245776074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056622 (A360541 (n + 1)).toNat * A360541 (A056622 (n + 1)).toNat

end

end A050985.P1273027984245776074

namespace A050985

/-- `A056622(A360541(n+1))*A360541(A056622(n+1))` -/
def P1273027984245776074.Spec : Prop :=
  ∀ n, P1273027984245776074.a n = A050985 (n + 1)

end A050985

/-! ## A050985.P4587771199125956298

`A048798((n+1)²)`
-/

namespace A050985.P4587771199125956298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048798 ((n + 1) ^ 2)

end

end A050985.P4587771199125956298

namespace A050985

/-- `A048798((n+1)²)` -/
def P4587771199125956298.Spec : Prop :=
  ∀ n, P4587771199125956298.a n = A050985 (n + 1)

end A050985

/-! ## A050985.P3299800121806056247

`A053149((n+1)²)/(n+1)²`
-/

namespace A050985.P3299800121806056247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053149 ((n + 1) ^ 2) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A050985.P3299800121806056247

namespace A050985

/-- `A053149((n+1)²)/(n+1)²` -/
def P3299800121806056247.Spec : Prop :=
  ∀ n, P3299800121806056247.a n = (A050985 (n + 1) : ℚ)

end A050985

/-!
# A050987: Number of n-digit left-truncatable primes.

The programs for A050987, there is no canonical definition to state claims against.
-/

/-! ## A050987.P6285087890129024381

`∑{d}[A217092(n+1), A166158(#)]`
-/

namespace A050987.P6285087890129024381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217092 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A166158 d

end

end A050987.P6285087890129024381

/-!
# A050988: 6-idempotent numbers.

The programs for A050988, the canonical program `A050988.P17384540802425875620` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050988 has offset 6).

The definition of A050988 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050988.P17384540802425875620

`C(n+6, 6)*6^n`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050988

/-- `C(n+6, 6)*6^n` -/
def P17384540802425875620.Spec : Prop :=
  ∀ n, (P17384540802425875620.a n : ℤ) = A050988 (n + 6)

theorem P17384540802425875620.correct : P17384540802425875620.Spec := by
  intro n
  simp only [A050988, Nat.add_sub_cancel]

end A050988

/-! ## A050988.P187999201815928781

`6^n*C(n+6, 6)`
-/

namespace A050988.P187999201815928781
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n * Nat.choose (n + 6) 6

end

end A050988.P187999201815928781

namespace A050988

/-- `6^n*C(n+6, 6)` -/
def P187999201815928781.Spec : Prop :=
  ∀ n, (P187999201815928781.a n : ℤ) = A050988 (n + 6)

theorem P187999201815928781.correct : P187999201815928781.Spec := by
  intro n
  simp only [A050988, Nat.add_sub_cancel, A050988.P187999201815928781.a, A050988.P17384540802425875620.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A050988

/-! ## A050988.P16522530238736003690

`6*(6/n+1)*a(n-1)` with `a(0)=1`
-/

namespace A050988.P16522530238736003690
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  6 * ((6 / (n : ℚ) + 1) * a (n - 1))

end

end A050988.P16522530238736003690

namespace A050988

/-- `6*(6/n+1)*a(n-1)` -/
def P16522530238736003690.Spec : Prop :=
  ∀ n, P16522530238736003690.a n = (A050988 (n + 6) : ℚ)

end A050988

/-! ## A050988.P4471227859895680101

`(n+1)*A036224(n)`
-/

namespace A050988.P4471227859895680101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A036224 n

end

end A050988.P4471227859895680101

namespace A050988

/-- `(n+1)*A036224(n)` -/
def P4471227859895680101.Spec : Prop :=
  ∀ n, P4471227859895680101.a n = A050988 (n + 6)

end A050988

/-! ## A050988.P9608309371100256638

`2^n*A036220(n)`
-/

namespace A050988.P9608309371100256638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A036220 n

end

end A050988.P9608309371100256638

namespace A050988

/-- `2^n*A036220(n)` -/
def P9608309371100256638.Spec : Prop :=
  ∀ n, P9608309371100256638.a n = A050988 (n + 6)

end A050988

/-! ## A050988.P8297266122181276328

`3^n*A002409(n)`
-/

namespace A050988.P8297266122181276328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A002409 n

end

end A050988.P8297266122181276328

namespace A050988

/-- `3^n*A002409(n)` -/
def P8297266122181276328.Spec : Prop :=
  ∀ n, P8297266122181276328.a n = A050988 (n + 6)

end A050988

/-! ## A050988.P6641805943635769279

`A082140(n)*A099856(n)`
-/

namespace A050988.P6641805943635769279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082140 n * A099856 n

end

end A050988.P6641805943635769279

namespace A050988

/-- `A082140(n)*A099856(n)` -/
def P6641805943635769279.Spec : Prop :=
  ∀ n, P6641805943635769279.a n = A050988 (n + 6)

end A050988

/-! ## A050988.P4145647867804645371

`lcm(A002409(n), A036220(n))`
-/

namespace A050988.P4145647867804645371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002409 n) (A036220 n)

end

end A050988.P4145647867804645371

namespace A050988

/-- `lcm(A002409(n), A036220(n))` -/
def P4145647867804645371.Spec : Prop :=
  ∀ n, (P4145647867804645371.a n : ℤ) = A050988 (n + 6)

end A050988

/-! ## A050988.P14707641328137950359

`∑[A006976(n)]*A000244(n)`
-/

namespace A050988.P14707641328137950359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006976 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000244 n

end

end A050988.P14707641328137950359

namespace A050988

/-- `∑[A006976(n)]*A000244(n)` -/
def P14707641328137950359.Spec : Prop :=
  ∀ n, P14707641328137950359.a n = A050988 (n + 6)

end A050988

/-! ## A050988.P17467165883323007678

`A000244(n)/A000302(n)*A140406(n)`
-/

namespace A050988.P17467165883323007678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n : ℚ) / (A000302 n : ℚ) * (A140406 n : ℚ)

end

end A050988.P17467165883323007678

namespace A050988

/-- `A000244(n)/A000302(n)*A140406(n)` -/
def P17467165883323007678.Spec : Prop :=
  ∀ n, P17467165883323007678.a n = (A050988 (n + 6) : ℚ)

end A050988

/-!
# A050989: 7-idempotent numbers.

The programs for A050989, the canonical program `A050989.P5102155973164446818` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050989 has offset 7).

The definition of A050989 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050989.P5102155973164446818

`7^n*C(n+7, 7)`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A050989

/-- `7^n*C(n+7, 7)` -/
def P5102155973164446818.Spec : Prop :=
  ∀ n, (P5102155973164446818.a n : ℤ) = A050989 (n + 7)

theorem P5102155973164446818.correct : P5102155973164446818.Spec := by
  intro n
  simp only [A050989, Nat.add_sub_cancel]

end A050989

/-! ## A050989.P10123255939259609591

`(49/n+7)*a(n-1)` with `a(0)=1`
-/

namespace A050989.P10123255939259609591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (49 / (n : ℚ) + 7) * a (n - 1)

end

end A050989.P10123255939259609591

namespace A050989

/-- `(49/n+7)*a(n-1)` -/
def P10123255939259609591.Spec : Prop :=
  ∀ n, P10123255939259609591.a n = (A050989 (n + 7) : ℚ)

end A050989

/-! ## A050989.P6302657266149008975

`(n+1)*A053110(n)`
-/

namespace A050989.P6302657266149008975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A053110 n

end

end A050989.P6302657266149008975

namespace A050989

/-- `(n+1)*A053110(n)` -/
def P6302657266149008975.Spec : Prop :=
  ∀ n, P6302657266149008975.a n = A050989 (n + 7)

end A050989

/-! ## A050989.P12940716153215354978

`7^n*A000580(n+7)`
-/

namespace A050989.P12940716153215354978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * A000580 (n + 7)

end

end A050989.P12940716153215354978

namespace A050989

/-- `7^n*A000580(n+7)` -/
def P12940716153215354978.Spec : Prop :=
  ∀ n, P12940716153215354978.a n = A050989 (n + 7)

theorem P12940716153215354978.correct : P12940716153215354978.Spec := by
  intro n
  simp only [A050989, Nat.add_sub_cancel, A050989.P12940716153215354978.a, A050989.P5102155973164446818.a, A000580, A000580.P16667415707980948191.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050989

/-! ## A050989.P3446098964105398229

`C(n+7, 7)*A000420(n)`
-/

namespace A050989.P3446098964105398229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 7) 7 : ℤ) * A000420 n

end

end A050989.P3446098964105398229

namespace A050989

/-- `C(n+7, 7)*A000420(n)` -/
def P3446098964105398229.Spec : Prop :=
  ∀ n, P3446098964105398229.a n = A050989 (n + 7)

theorem P3446098964105398229.correct : P3446098964105398229.Spec := by
  intro n
  simp only [A050989, Nat.add_sub_cancel, A050989.P3446098964105398229.a, A050989.P5102155973164446818.a, A000420, A000420.P3695589171832359676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A050989

/-! ## A050989.P13482314513969016217

`7^n*∑[A000579(n+6)]`
-/

namespace A050989.P13482314513969016217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000579 (n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A050989.P13482314513969016217

namespace A050989

/-- `7^n*∑[A000579(n+6)]` -/
def P13482314513969016217.Spec : Prop :=
  ∀ n, P13482314513969016217.a n = A050989 (n + 7)

end A050989

/-! ## A050989.P9051401375718168833

`∑[C(n+6, 6)/4]*A208704(n+1)`
-/

namespace A050989.P9051401375718168833
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 6) 6 : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (A208704 (n + 1) : ℚ)

end

end A050989.P9051401375718168833

namespace A050989

/-- `∑[C(n+6, 6)/4]*A208704(n+1)` -/
def P9051401375718168833.Spec : Prop :=
  ∀ n, P9051401375718168833.a n = (A050989 (n + 7) : ℚ)

end A050989

/-! ## A050989.P15264246213494192408

`A027466(eq[8, A002260(n+1)])`
-/

namespace A050989.P15264246213494192408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050989.P15264246213494192408

namespace A050989

/-- `A027466(eq[8, A002260(n+1)])` -/
def P15264246213494192408.Spec : Prop :=
  ∀ n, P15264246213494192408.a n = A050989 (n + 7)

end A050989

/-! ## A050989.P2038556979282765341

`A027466(eq[64, A133819(n+1)])`
-/

namespace A050989.P2038556979282765341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133819 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027466 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050989.P2038556979282765341

namespace A050989

/-- `A027466(eq[64, A133819(n+1)])` -/
def P2038556979282765341.Spec : Prop :=
  ∀ n, P2038556979282765341.a n = A050989 (n + 7)

end A050989

/-! ## A050989.P18075265088408900038

`A000420(n)/A000400(n)*A141407(n)`
-/

namespace A050989.P18075265088408900038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000420 n : ℚ) / (A000400 n : ℚ) * (A141407 n : ℚ)

end

end A050989.P18075265088408900038

namespace A050989

/-- `A000420(n)/A000400(n)*A141407(n)` -/
def P18075265088408900038.Spec : Prop :=
  ∀ n, P18075265088408900038.a n = (A050989 (n + 7) : ℚ)

end A050989

/-! ## A050989.P5729088688648888051

`A036226(n)/A140406(n)*A053107(n)`
-/

namespace A050989.P5729088688648888051
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036226 n : ℚ) / (A140406 n : ℚ) * (A053107 n : ℚ)

end

end A050989.P5729088688648888051

namespace A050989

/-- `A036226(n)/A140406(n)*A053107(n)` -/
def P5729088688648888051.Spec : Prop :=
  ∀ n, P5729088688648888051.a n = (A050989 (n + 7) : ℚ)

end A050989

/-!
# A050990: 2-Knödel numbers.

The programs for A050990, there is no canonical definition to state claims against.
-/

/-! ## A050990.P16648745490224023555

`record[gcd(A005843(n+2), A006863(n+1))]`
-/

namespace A050990.P16648745490224023555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (n + 2)) (A006863 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050990.P16648745490224023555

/-! ## A050990.P14775063511125117995

`record[gcd(n+4, A079612(n+2))]`
-/

namespace A050990.P14775063511125117995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 4 : ℤ) (A079612 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050990.P14775063511125117995

/-! ## A050990.P17377646160858775642

`eq[1, n%A002322(n+1)]+1`
-/

namespace A050990.P17377646160858775642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A002322 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A050990.P17377646160858775642

/-! ## A050990.P11735453178703373738

`A398539(∑[n+1]+2)`
-/

namespace A050990.P11735453178703373738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398539 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A050990.P11735453178703373738

/-! ## A050990.P9253762291814608774

`lt[(n+1)%A002322(A214920(n+2)+5), 1]+3`
-/

namespace A050990.P9253762291814608774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A002322 (A214920 (n + 2) + 5).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 3

end

end A050990.P9253762291814608774

/-!
# A050992: 4-Knödel numbers.

The programs for A050992, there is no canonical definition to state claims against.
-/

/-! ## A050992.P5303202719533363594

`record[gcd(A005843(n+3), A006863(n+1))]`
-/

namespace A050992.P5303202719533363594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (n + 3)) (A006863 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050992.P5303202719533363594

/-! ## A050992.P12868236526069340776

`record[gcd(n+6, A079612(n+2))]`
-/

namespace A050992.P12868236526069340776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 6 : ℤ) (A079612 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A050992.P12868236526069340776

/-! ## A050992.P7380315570622950042

`lt[(n+1)%A002322(n+5), 1]+5`
-/

namespace A050992.P7380315570622950042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A002322 (n + 5))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 5

end

end A050992.P7380315570622950042

/-! ## A050992.P8056325167126688176

`A242800(n+3)+A165020(A374783(n+1))`
-/

namespace A050992.P8056325167126688176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242800 (n + 3) + A165020 (A374783 (n + 1)).toNat

end

end A050992.P8056325167126688176

/-! ## A050992.P17284790568293705394

`A242800(n+3)+A165020(A374786(n+1))`
-/

namespace A050992.P17284790568293705394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242800 (n + 3) + A165020 (A374786 (n + 1)).toNat

end

end A050992.P17284790568293705394

/-!
# A050993: 5-Knödel numbers.

The programs for A050993, there is no canonical definition to state claims against.
-/

/-! ## A050993.P12082414600810236019

`eq[5, A276976(A028310(n))]`
-/

namespace A050993.P12082414600810236019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050993.P12082414600810236019

/-! ## A050993.P6185011744362722503

`A020725(eq[5, A219175(n+1)])`
-/

namespace A050993.P6185011744362722503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219175 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050993.P6185011744362722503

/-! ## A050993.P11150005628669188148

`A065475(eq[5, A276976(n+1)])`
-/

namespace A050993.P11150005628669188148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050993.P11150005628669188148

/-! ## A050993.P11389116118111245460

`A153152(eq[5, A276976(n+1)])`
-/

namespace A050993.P11389116118111245460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A050993.P11389116118111245460

/-! ## A050993.P2703174409469579202

`eq[5, A276976(A257088(n))]`
-/

namespace A050993.P2703174409469579202
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A050993.P2703174409469579202

/-!
# A050994: Reduced numerators of series expansion for integrand in Renyi's parking constant.

The programs for A050994, there is no canonical definition to state claims against.
-/

/-! ## A050994.P7594747873689530055

`A001057(A217900(n)+A001969(n+1))`
-/

namespace A050994.P7594747873689530055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A217900 n + A001969 (n + 1)).toNat

end

end A050994.P7594747873689530055

/-!
# A050995: Reduced denominators of series expansion for integrand in Renyi's parking constant.

The programs for A050995, there is no canonical definition to state claims against.
-/

/-! ## A050995.P16676743679885261591

`n*A330740(n*a(n-1))` with `a(0)=1`
-/

namespace A050995.P16676743679885261591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * A330740 ((n : ℤ) * a (n - 1)).toNat

end

end A050995.P16676743679885261591

/-! ## A050995.P13273632089269858644

`n!²/A000005(A338632(n))`
-/

namespace A050995.P13273632089269858644
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2 : ℚ) / (A000005 (A338632 n).toNat : ℚ)

end

end A050995.P13273632089269858644

/-! ## A050995.P908845221762162069

`A001044(n)/A001227(A317021(n))`
-/

namespace A050995.P908845221762162069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001044 n : ℚ) / (A001227 (A317021 n).toNat : ℚ)

end

end A050995.P908845221762162069

/-!
# A050997: Fifth powers of primes.

The programs for A050997, the canonical program `A050997.P5231147570234137425` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050997 has offset 1).

The definition of A050997 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050997.P5231147570234137425

`A000040(n+1)^5`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050997

/-- `A000040(n+1)^5` -/
def P5231147570234137425.Spec : Prop :=
  ∀ n, P5231147570234137425.a n = A050997 (n + 1)

theorem P5231147570234137425.correct : P5231147570234137425.Spec := by
  intro n
  simp only [A050997, Nat.add_sub_cancel]

end A050997

/-! ## A050997.P11785833242642513383

`sqrt(A030629(n+1))`
-/

namespace A050997.P11785833242642513383
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030629 (n + 1) : ℝ)

end

end A050997.P11785833242642513383

namespace A050997

/-- `sqrt(A030629(n+1))` -/
def P11785833242642513383.Spec : Prop :=
  ∀ n, P11785833242642513383.a n = (A050997 (n + 1) : ℝ)

end A050997

/-! ## A050997.P4952159741482730827

`Δ[A007504(n)]^5`
-/

namespace A050997.P4952159741482730827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 5

end

end A050997.P4952159741482730827

namespace A050997

/-- `Δ[A007504(n)]^5` -/
def P4952159741482730827.Spec : Prop :=
  ∀ n, P4952159741482730827.a n = A050997 (n + 1)

end A050997

/-! ## A050997.P13206515575470974833

`sqrt(A001248(n+1)^5)`
-/

namespace A050997.P13206515575470974833
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) ^ 5 : ℝ)

end

end A050997.P13206515575470974833

namespace A050997

/-- `sqrt(A001248(n+1)^5)` -/
def P13206515575470974833.Spec : Prop :=
  ∀ n, P13206515575470974833.a n = (A050997 (n + 1) : ℝ)

end A050997

/-! ## A050997.P5377348614236877952

`∑[A054541(n+1)]^5`
-/

namespace A050997.P5377348614236877952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 5

end

end A050997.P5377348614236877952

namespace A050997

/-- `∑[A054541(n+1)]^5` -/
def P5377348614236877952.Spec : Prop :=
  ∀ n, P5377348614236877952.a n = A050997 (n + 1)

end A050997

/-! ## A050997.P13109371973935156768

`abs((-A000040(2*n-(n-1)))^5)`
-/

namespace A050997.P13109371973935156768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(-A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat) ^ 5|

end

end A050997.P13109371973935156768

namespace A050997

/-- `abs((-A000040(2*n-(n-1)))^5)` -/
def P13109371973935156768.Spec : Prop :=
  ∀ n, P13109371973935156768.a n = A050997 (n + 1)

end A050997

/-! ## A050997.P4569453751080663209

`A138404(n+1)+A000040(n+1)`
-/

namespace A050997.P4569453751080663209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138404 (n + 1) + A000040 (n + 1)

end

end A050997.P4569453751080663209

namespace A050997

/-- `A138404(n+1)+A000040(n+1)` -/
def P4569453751080663209.Spec : Prop :=
  ∀ n, P4569453751080663209.a n = A050997 (n + 1)

theorem P4569453751080663209.correct : P4569453751080663209.Spec := by
  intro n
  simp only [A050997, Nat.add_sub_cancel, A050997.P4569453751080663209.a, A050997.P5231147570234137425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A138404, A138404.P10090745085082303621.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050997

/-! ## A050997.P8994134477192732830

`A138405(n+1)+A001248(n+1)`
-/

namespace A050997.P8994134477192732830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138405 (n + 1) + A001248 (n + 1)

end

end A050997.P8994134477192732830

namespace A050997

/-- `A138405(n+1)+A001248(n+1)` -/
def P8994134477192732830.Spec : Prop :=
  ∀ n, P8994134477192732830.a n = A050997 (n + 1)

theorem P8994134477192732830.correct : P8994134477192732830.Spec := by
  intro n
  simp only [A050997, Nat.add_sub_cancel, A050997.P8994134477192732830.a, A050997.P5231147570234137425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A138405, A138405.P11027892364164327132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050997

/-! ## A050997.P18010958839107996861

`A138406(n+1)+A030078(n+1)`
-/

namespace A050997.P18010958839107996861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138406 (n + 1) + A030078 (n + 1)

end

end A050997.P18010958839107996861

namespace A050997

/-- `A138406(n+1)+A030078(n+1)` -/
def P18010958839107996861.Spec : Prop :=
  ∀ n, P18010958839107996861.a n = A050997 (n + 1)

theorem P18010958839107996861.correct : P18010958839107996861.Spec := by
  intro n
  simp only [A050997, Nat.add_sub_cancel, A050997.P18010958839107996861.a, A050997.P5231147570234137425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030078, A030078.P13819432151207990454.a, A138406, A138406.P10473857449717588869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050997

/-! ## A050997.P10826841044251841969

`A138407(n+1)+A030514(n+1)`
-/

namespace A050997.P10826841044251841969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138407 (n + 1) + A030514 (n + 1)

end

end A050997.P10826841044251841969

namespace A050997

/-- `A138407(n+1)+A030514(n+1)` -/
def P10826841044251841969.Spec : Prop :=
  ∀ n, P10826841044251841969.a n = A050997 (n + 1)

theorem P10826841044251841969.correct : P10826841044251841969.Spec := by
  intro n
  simp only [A050997, Nat.add_sub_cancel, A050997.P10826841044251841969.a, A050997.P5231147570234137425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030514, A030514.P11974636125371552077.a, A138407, A138407.P5183959354295253319.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050997

/-! ## A050997.P5325625130552189100

`A135179(n+1)+A135178(n+1)`
-/

namespace A050997.P5325625130552189100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135179 (n + 1) + A135178 (n + 1)

end

end A050997.P5325625130552189100

namespace A050997

/-- `A135179(n+1)+A135178(n+1)` -/
def P5325625130552189100.Spec : Prop :=
  ∀ n, P5325625130552189100.a n = A050997 (n + 1)

theorem P5325625130552189100.correct : P5325625130552189100.Spec := by
  intro n
  simp only [A050997, Nat.add_sub_cancel, A050997.P5325625130552189100.a, A050997.P5231147570234137425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A135178, A135178.P2117100385622879640.a, A135179, A135179.P4376560334268819902.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050997

/-! ## A050997.P9795174420869257113

`A135180(n+1)+A135177(n+1)`
-/

namespace A050997.P9795174420869257113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135180 (n + 1) + A135177 (n + 1)

end

end A050997.P9795174420869257113

namespace A050997

/-- `A135180(n+1)+A135177(n+1)` -/
def P9795174420869257113.Spec : Prop :=
  ∀ n, P9795174420869257113.a n = A050997 (n + 1)

theorem P9795174420869257113.correct : P9795174420869257113.Spec := by
  intro n
  simp only [A050997, Nat.add_sub_cancel, A050997.P9795174420869257113.a, A050997.P5231147570234137425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A135177, A135177.P13258641397500885273.a, A135180, A135180.P11010931225065724081.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, A079704, A079704.P2518524558801344655.a, A135179, A135179.P4376560334268819902.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050997

/-! ## A050997.P12929227252686056020

`A030516(n+1)-A138412(n+1)`
-/

namespace A050997.P12929227252686056020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030516 (n + 1) - A138412 (n + 1)

end

end A050997.P12929227252686056020

namespace A050997

/-- `A030516(n+1)-A138412(n+1)` -/
def P12929227252686056020.Spec : Prop :=
  ∀ n, P12929227252686056020.a n = A050997 (n + 1)

theorem P12929227252686056020.correct : P12929227252686056020.Spec := by
  intro n
  simp only [A050997, Nat.add_sub_cancel, A050997.P12929227252686056020.a, A050997.P5231147570234137425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030516, A030516.P1711246340231228216.a, A138412, A138412.P9166921573337738631.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050997

/-! ## A050997.P4583937803326938022

`A131993(n+1)-A131992(n+1)`
-/

namespace A050997.P4583937803326938022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131993 (n + 1) - A131992 (n + 1)

end

end A050997.P4583937803326938022

namespace A050997

/-- `A131993(n+1)-A131992(n+1)` -/
def P4583937803326938022.Spec : Prop :=
  ∀ n, P4583937803326938022.a n = A050997 (n + 1)

theorem P4583937803326938022.correct : P4583937803326938022.Spec := by
  intro n
  simp only [A050997, Nat.add_sub_cancel, A050997.P4583937803326938022.a, A050997.P5231147570234137425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A131992, A131992.P14412535243323881656.a, A131993, A131993.P9985447541558130858.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050997

/-! ## A050997.P14981610437623215542

`A135181(n+1)-A135177(n+1)`
-/

namespace A050997.P14981610437623215542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135181 (n + 1) - A135177 (n + 1)

end

end A050997.P14981610437623215542

namespace A050997

/-- `A135181(n+1)-A135177(n+1)` -/
def P14981610437623215542.Spec : Prop :=
  ∀ n, P14981610437623215542.a n = A050997 (n + 1)

theorem P14981610437623215542.correct : P14981610437623215542.Spec := by
  intro n
  simp only [A050997, Nat.add_sub_cancel, A050997.P14981610437623215542.a, A050997.P5231147570234137425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A135177, A135177.P13258641397500885273.a, A135181, A135181.P6699023682953178213.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050997

/-! ## A050997.P4407612361807200104

`A135182(n+1)-A135178(n+1)`
-/

namespace A050997.P4407612361807200104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135182 (n + 1) - A135178 (n + 1)

end

end A050997.P4407612361807200104

namespace A050997

/-- `A135182(n+1)-A135178(n+1)` -/
def P4407612361807200104.Spec : Prop :=
  ∀ n, P4407612361807200104.a n = A050997 (n + 1)

theorem P4407612361807200104.correct : P4407612361807200104.Spec := by
  intro n
  simp only [A050997, Nat.add_sub_cancel, A050997.P4407612361807200104.a, A050997.P5231147570234137425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A135178, A135178.P2117100385622879640.a, A135182, A135182.P14277112270970235389.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050997

/-! ## A050997.P10718015049926378153

`A000040(n+1)*A030514(n+1)`
-/

namespace A050997.P10718015049926378153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A030514 (n + 1)

end

end A050997.P10718015049926378153

namespace A050997

/-- `A000040(n+1)*A030514(n+1)` -/
def P10718015049926378153.Spec : Prop :=
  ∀ n, P10718015049926378153.a n = A050997 (n + 1)

theorem P10718015049926378153.correct : P10718015049926378153.Spec := by
  intro n
  simp only [A050997, Nat.add_sub_cancel, A050997.P10718015049926378153.a, A050997.P5231147570234137425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A030514, A030514.P11974636125371552077.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050997

/-! ## A050997.P5539002889246024969

`A001248(n+1)*A030078(n+1)`
-/

namespace A050997.P5539002889246024969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A030078 (n + 1)

end

end A050997.P5539002889246024969

namespace A050997

/-- `A001248(n+1)*A030078(n+1)` -/
def P5539002889246024969.Spec : Prop :=
  ∀ n, P5539002889246024969.a n = A050997 (n + 1)

theorem P5539002889246024969.correct : P5539002889246024969.Spec := by
  intro n
  simp only [A050997, Nat.add_sub_cancel, A050997.P5539002889246024969.a, A050997.P5231147570234137425.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001248, A001248.P16278241061688229202.a, A030078, A030078.P13819432151207990454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050997

/-! ## A050997.P10979070418941602408

`A030516(n+1)/A000040(n+1)`
-/

namespace A050997.P10979070418941602408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030516 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A050997.P10979070418941602408

namespace A050997

/-- `A030516(n+1)/A000040(n+1)` -/
def P10979070418941602408.Spec : Prop :=
  ∀ n, P10979070418941602408.a n = (A050997 (n + 1) : ℚ)

end A050997

/-! ## A050997.P2357938054253207637

`A092759(n+1)/A001248(n+1)`
-/

namespace A050997.P2357938054253207637
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092759 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A050997.P2357938054253207637

namespace A050997

/-- `A092759(n+1)/A001248(n+1)` -/
def P2357938054253207637.Spec : Prop :=
  ∀ n, P2357938054253207637.a n = (A050997 (n + 1) : ℚ)

end A050997

/-! ## A050997.P14346676069199445970

`p?[comp[n²]]^5`
-/

namespace A050997.P14346676069199445970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ 5

end

end A050997.P14346676069199445970

namespace A050997

/-- `p?[comp[n²]]^5` -/
def P14346676069199445970.Spec : Prop :=
  ∀ n, (P14346676069199445970.a n : ℤ) = A050997 (n + 1)

end A050997

/-!
# A050999: Sum of squares of odd divisors of n.

The programs for A050999, the canonical program `A050999.P18306880422002560695` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A050999 has offset 1).

The definition of A050999 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A050999.P15607579623782211137

`1/2*∑{d}[n+1, (1-(-1)^#)*#²]`
-/

namespace A050999.P15607579623782211137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * ((∑ d ∈ Nat.divisors (f1 n), (1 - (-1) ^ d) * (d ^ 2 : ℤ) : ℤ) : ℚ)

end

end A050999.P15607579623782211137

namespace A050999

/-- `1/2*∑{d}[n+1, (1-(-1)^#)*#²]` -/
def P15607579623782211137.Spec : Prop :=
  ∀ n, P15607579623782211137.a n = (A050999 (n + 1) : ℚ)

end A050999

/-! ## A050999.P18306880422002560695

`A001157(2*(n+1))-4*A001157(n+1)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A050999

/-- `A001157(2*(n+1))-4*A001157(n+1)` -/
def P18306880422002560695.Spec : Prop :=
  ∀ n, P18306880422002560695.a n = A050999 (n + 1)

theorem P18306880422002560695.correct : P18306880422002560695.Spec := by
  intro n
  simp only [A050999, Nat.add_sub_cancel]

end A050999

/-! ## A050999.P9007860046011287886

`∑{d}[n+1, (#*#%2)²]`
-/

namespace A050999.P9007860046011287886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d * (d % 2)) ^ 2

end

end A050999.P9007860046011287886

namespace A050999

/-- `∑{d}[n+1, (#*#%2)²]` -/
def P9007860046011287886.Spec : Prop :=
  ∀ n, (P9007860046011287886.a n : ℤ) = A050999 (n + 1)

end A050999

/-! ## A050999.P5875832303629854549

`∑{d}[n+1, (lcm(2, #)-#)²]`
-/

namespace A050999.P5875832303629854549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((Nat.lcm 2 d : ℤ) - (d : ℤ)) ^ 2

end

end A050999.P5875832303629854549

namespace A050999

/-- `∑{d}[n+1, (lcm(2, #)-#)²]` -/
def P5875832303629854549.Spec : Prop :=
  ∀ n, P5875832303629854549.a n = A050999 (n + 1)

end A050999

/-! ## A050999.P5861911921648078681

`∑{d}[n+1, (#*and(1, #))²]`
-/

namespace A050999.P5861911921648078681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d * Nat.land 1 d) ^ 2

end

end A050999.P5861911921648078681

namespace A050999

/-- `∑{d}[n+1, (#*and(1, #))²]` -/
def P5861911921648078681.Spec : Prop :=
  ∀ n, (P5861911921648078681.a n : ℤ) = A050999 (n + 1)

end A050999

/-! ## A050999.P9585096914948371059

`∑{d}[(n+1)/2^val(n+1, 2), #²]`
-/

namespace A050999.P9585096914948371059
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2

end

end A050999.P9585096914948371059

namespace A050999

/-- `∑{d}[(n+1)/2^val(n+1, 2), #²]` -/
def P9585096914948371059.Spec : Prop :=
  ∀ n, (P9585096914948371059.a n : ℤ) = A050999 (n + 1)

end A050999

/-! ## A050999.P13461446744391393579

`∑{d}[(n+1)/(or(n, n+1)-n), #²]`
-/

namespace A050999.P13461446744391393579
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2

end

end A050999.P13461446744391393579

namespace A050999

/-- `∑{d}[(n+1)/(or(n, n+1)-n), #²]` -/
def P13461446744391393579.Spec : Prop :=
  ∀ n, (P13461446744391393579.a n : ℤ) = A050999 (n + 1)

end A050999

/-! ## A050999.P7624359674589704109

`∑{d}[(n+1)/and(n+1, -(n+1)), #²]`
-/

namespace A050999.P7624359674589704109
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2

end

end A050999.P7624359674589704109

namespace A050999

/-- `∑{d}[(n+1)/and(n+1, -(n+1)), #²]` -/
def P7624359674589704109.Spec : Prop :=
  ∀ n, (P7624359674589704109.a n : ℤ) = A050999 (n + 1)

end A050999

/-! ## A050999.P18430052095956415176

`∑{d}[A000265(n+1), #²]`
-/

namespace A050999.P18430052095956415176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A050999.P18430052095956415176

namespace A050999

/-- `∑{d}[A000265(n+1), #²]` -/
def P18430052095956415176.Spec : Prop :=
  ∀ n, (P18430052095956415176.a n : ℤ) = A050999 (n + 1)

end A050999

/-! ## A050999.P14804942558225492056

`∑{d}[A153733(n)+1, #²]`
-/

namespace A050999.P14804942558225492056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A050999.P14804942558225492056

namespace A050999

/-- `∑{d}[A153733(n)+1, #²]` -/
def P14804942558225492056.Spec : Prop :=
  ∀ n, (P14804942558225492056.a n : ℤ) = A050999 (n + 1)

end A050999

/-! ## A050999.P5614685523527704089

`∑{d}[n+1, #*A193356(#)]`
-/

namespace A050999.P5614685523527704089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A193356 d

end

end A050999.P5614685523527704089

namespace A050999

/-- `∑{d}[n+1, #*A193356(#)]` -/
def P5614685523527704089.Spec : Prop :=
  ∀ n, P5614685523527704089.a n = A050999 (n + 1)

end A050999

/-! ## A050999.P4762119154326162220

`∑{d}[A166466(n+1)/3, #²]`
-/

namespace A050999.P4762119154326162220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166466 (n + 1) : ℚ) / 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2

end

end A050999.P4762119154326162220

namespace A050999

/-- `∑{d}[A166466(n+1)/3, #²]` -/
def P4762119154326162220.Spec : Prop :=
  ∀ n, (P4762119154326162220.a n : ℤ) = A050999 (n + 1)

end A050999

/-! ## A050999.P15321333428750996247

`A001157(A000265(n+1))`
-/

namespace A050999.P15321333428750996247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A000265 (n + 1)).toNat

end

end A050999.P15321333428750996247

namespace A050999

/-- `A001157(A000265(n+1))` -/
def P15321333428750996247.Spec : Prop :=
  ∀ n, P15321333428750996247.a n = A050999 (n + 1)

end A050999

/-! ## A050999.P13012026986444811965

`A099978(A003602(n+1))`
-/

namespace A050999.P13012026986444811965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099978 (A003602 (n + 1)).toNat

end

end A050999.P13012026986444811965

namespace A050999

/-- `A099978(A003602(n+1))` -/
def P13012026986444811965.Spec : Prop :=
  ∀ n, P13012026986444811965.a n = A050999 (n + 1)

end A050999

/-! ## A050999.P7453309999881495174

`∑{d}[A005408(A025480(n)), #²]`
-/

namespace A050999.P7453309999881495174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A025480 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A050999.P7453309999881495174

namespace A050999

/-- `∑{d}[A005408(A025480(n)), #²]` -/
def P7453309999881495174.Spec : Prop :=
  ∀ n, (P7453309999881495174.a n : ℤ) = A050999 (n + 1)

end A050999

/-! ## A050999.P14245208741004521159

`∑{d}[A004442(A153733(n)), #²]`
-/

namespace A050999.P14245208741004521159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A153733 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A050999.P14245208741004521159

namespace A050999

/-- `∑{d}[A004442(A153733(n)), #²]` -/
def P14245208741004521159.Spec : Prop :=
  ∀ n, (P14245208741004521159.a n : ℤ) = A050999 (n + 1)

end A050999

/-! ## A050999.P140642251043310870

`A076598(A000265(2*(n+1)))`
-/

namespace A050999.P140642251043310870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076598 (A000265 (2 * (n + 1))).toNat

end

end A050999.P140642251043310870

namespace A050999

/-- `A076598(A000265(2*(n+1)))` -/
def P140642251043310870.Spec : Prop :=
  ∀ n, P140642251043310870.a n = A050999 (n + 1)

end A050999

/-! ## A050999.P16338060906966413755

`A076577(2*A025480(n)+1)`
-/

namespace A050999.P16338060906966413755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076577 (2 * A025480 n + 1).toNat

end

end A050999.P16338060906966413755

namespace A050999

/-- `A076577(2*A025480(n)+1)` -/
def P16338060906966413755.Spec : Prop :=
  ∀ n, P16338060906966413755.a n = A050999 (n + 1)

end A050999

/-! ## A050999.P4937973179659546700

`A321543(A000265(2*n+2))`
-/

namespace A050999.P4937973179659546700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321543 (A000265 (2 * n + 2)).toNat

end

end A050999.P4937973179659546700

namespace A050999

/-- `A321543(A000265(2*n+2))` -/
def P4937973179659546700.Spec : Prop :=
  ∀ n, P4937973179659546700.a n = A050999 (n + 1)

end A050999

/-! ## A050999.P8234955535773083018

`A050453(n+1)+A050450(n+1)`
-/

namespace A050999.P8234955535773083018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050453 (n + 1) + A050450 (n + 1)

end

end A050999.P8234955535773083018

namespace A050999

/-- `A050453(n+1)+A050450(n+1)` -/
def P8234955535773083018.Spec : Prop :=
  ∀ n, P8234955535773083018.a n = A050999 (n + 1)

theorem P8234955535773083018.correct : P8234955535773083018.Spec := by
  intro n
  simp only [A050999, Nat.add_sub_cancel, A050999.P8234955535773083018.a, A050999.P18306880422002560695.a, A001157, A001157.P17878717581134609993.f1, A001157.P17878717581134609993.a, A050450, A050450.P4021675749699126775.a, A050453, A050453.P6605765519543064582.f1, A050453.P6605765519543064582.a, A062828, A062828.P6719252676437091402.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A050999

