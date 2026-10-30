import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C050
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A219600: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal or vertical neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 7Xn array.

The programs for A219600, there is no canonical definition to state claims against.
-/

/-! ## A219600.P13714341351333623207

`A219595(A302537(n)+27)`
-/

namespace A219600.P13714341351333623207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A302537 n + 27).toNat

end

end A219600.P13714341351333623207

/-! ## A219600.P9898451393946188339

`A219595(eq[11, A066657(n)])`
-/

namespace A219600.P9898451393946188339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219600.P9898451393946188339

/-! ## A219600.P11524857686033458527

`A219595(A167614(n+5)+4)`
-/

namespace A219600.P11524857686033458527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219595 (A167614 (n + 5) + 4).toNat

end

end A219600.P11524857686033458527

/-!
# A219601: Number of partitions of n in which no parts are multiples of 6.

The programs for A219601, there is no canonical definition to state claims against.
-/

/-! ## A219601.P3365625960636945583

`A061198(A167499(n+4))`
-/

namespace A219601.P3365625960636945583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061198 (A167499 (n + 4)).toNat

end

end A219601.P3365625960636945583

/-! ## A219601.P13350747965912151252

`A061198(A034856(n+4)+7)`
-/

namespace A219601.P13350747965912151252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061198 (A034856 (n + 4) + 7).toNat

end

end A219601.P13350747965912151252

/-! ## A219601.P14127679115516694628

`A286653(∑[n+6]+9)`
-/

namespace A219601.P14127679115516694628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286653 (∑ j ∈ Finset.range (n + 1), f1 j + 9)

end

end A219601.P14127679115516694628

/-! ## A219601.P1533768902622200236

`A097797(A028310(n))%A125649(n+1)`
-/

namespace A219601.P1533768902622200236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097797 (A028310 n).toNat) (A125649 (n + 1))

end

end A219601.P1533768902622200236

/-! ## A219601.P13384094577515296680

`∑[A048766(A002836(n))]`
-/

namespace A219601.P13384094577515296680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A002836 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219601.P13384094577515296680

/-!
# A219602: Primes p such that p^2-2 is composite.

The programs for A219602, there is no canonical definition to state claims against.
-/

/-! ## A219602.P14059718373186281792

`p?[A106563(n+1)]`
-/

namespace A219602.P14059718373186281792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219602.P14059718373186281792

/-! ## A219602.P8640916522718694101

`p?[A106545(n+1)+1+n]`
-/

namespace A219602.P8640916522718694101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106545 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219602.P8640916522718694101

/-! ## A219602.P7425868930231054563

`p?[(n+2)%A056895(2*n+1)]`
-/

namespace A219602.P7425868930231054563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A056895 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219602.P7425868930231054563

/-! ## A219602.P16606107046234810997

`p?[n-A106545(A007918(n))]`
-/

namespace A219602.P16606107046234810997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106545 (A007918 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219602.P16606107046234810997

/-! ## A219602.P18025299989908362766

`p?[n-A106545(A029579(n))]`
-/

namespace A219602.P18025299989908362766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106545 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219602.P18025299989908362766

/-! ## A219602.P15177696827737310832

`p?[n-A106545(A109613(n))]`
-/

namespace A219602.P15177696827737310832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A106545 (A109613 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A219602.P15177696827737310832

/-! ## A219602.P2394194276181722460

`filter[A106563(n+1), A010051(#)]`
-/

namespace A219602.P2394194276181722460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A219602.P2394194276181722460

/-!
# A219603: a(n) = prime(n) * prime(2*n-1).

The programs for A219603, the canonical program `A219603.P9927665276144650148` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219603 has offset 1).

The definition of A219603 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(n+1)*A000040(2*n+1)` (program `A219603.P9927665276144650148`, by `A219603.P9927665276144650148.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219603.P15991745566308022439

`A000040(n+1)*A031368(n+1)`
-/

namespace A219603.P15991745566308022439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A031368 (n + 1)

end

end A219603.P15991745566308022439

namespace A219603

/-- `A000040(n+1)*A031368(n+1)` -/
def P15991745566308022439.Spec : Prop :=
  ∀ n, P15991745566308022439.a n = A219603 (n + 1)

end A219603

/-! ## A219603.P9927665276144650148

`A000040(n+1)*A000040(2*n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A219603

/-- `A000040(n+1)*A000040(2*n+1)` -/
def P9927665276144650148.Spec : Prop :=
  ∀ n, P9927665276144650148.a n = A219603 (n + 1)

theorem P9927665276144650148.correct : P9927665276144650148.Spec := by
  intro n
  simp only [A219603, Nat.add_sub_cancel]

end A219603

/-! ## A219603.P4540576999663670824

`A000040(n+1)*A000040(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A219603.P4540576999663670824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000040 (2 * (n + 1) - 1)

end

end A219603.P4540576999663670824

namespace A219603

/-- `A000040(n+1)*A000040(2*(n+1)-1)` -/
def P4540576999663670824.Spec : Prop :=
  ∀ n, P4540576999663670824.a n = A219603 (n + 1)

end A219603

/-! ## A219603.P5698792983861860317

`Δ[A007504(n)]*A031368(n+1)`
-/

namespace A219603.P5698792983861860317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A031368 (n + 1)

end

end A219603.P5698792983861860317

namespace A219603

/-- `Δ[A007504(n)]*A031368(n+1)` -/
def P5698792983861860317.Spec : Prop :=
  ∀ n, P5698792983861860317.a n = A219603 (n + 1)

end A219603

/-! ## A219603.P6878251509549279736

`sqrt(A001248(n+1))*A031368(n+1)`
-/

namespace A219603.P6878251509549279736
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (n + 1) : ℝ) * (A031368 (n + 1) : ℝ)

end

end A219603.P6878251509549279736

namespace A219603

/-- `sqrt(A001248(n+1))*A031368(n+1)` -/
def P6878251509549279736.Spec : Prop :=
  ∀ n, P6878251509549279736.a n = (A219603 (n + 1) : ℝ)

end A219603

/-! ## A219603.P4345124200975265649

`(A006093(n+1)+1)*A031368(n+1)`
-/

namespace A219603.P4345124200975265649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A031368 (n + 1)

end

end A219603.P4345124200975265649

namespace A219603

/-- `(A006093(n+1)+1)*A031368(n+1)` -/
def P4345124200975265649.Spec : Prop :=
  ∀ n, P4345124200975265649.a n = A219603 (n + 1)

theorem P4345124200975265649.correct : P4345124200975265649.Spec := by
  intro n
  simp only [A219603, Nat.add_sub_cancel, A219603.P4345124200975265649.a, A219603.P9927665276144650148.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A031368, A031368.P13740709942306963407.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219603

/-! ## A219603.P7195166369659654583

`(A109723(n)-A109722(n))*A000040(n+1)`
-/

namespace A219603.P7195166369659654583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109723 n - A109722 n) * A000040 (n + 1)

end

end A219603.P7195166369659654583

namespace A219603

/-- `(A109723(n)-A109722(n))*A000040(n+1)` -/
def P7195166369659654583.Spec : Prop :=
  ∀ n, P7195166369659654583.a n = A219603 (n + 1)

end A219603

/-! ## A219603.P18048349845525781059

`(A031215(n+1)-A072473(n+1))*A031368(n+1)`
-/

namespace A219603.P18048349845525781059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A031215 (n + 1) - A072473 (n + 1)) * A031368 (n + 1)

end

end A219603.P18048349845525781059

namespace A219603

/-- `(A031215(n+1)-A072473(n+1))*A031368(n+1)` -/
def P18048349845525781059.Spec : Prop :=
  ∀ n, P18048349845525781059.a n = A219603 (n + 1)

theorem P18048349845525781059.correct : P18048349845525781059.Spec := by
  intro n
  simp only [A219603, Nat.add_sub_cancel, A219603.P18048349845525781059.a, A219603.P9927665276144650148.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A031368, A031368.P13740709942306963407.a, A072473, A072473.P11303799734713741739.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219603

/-! ## A219603.P16865985377161337691

`A031368(n+1)/A031215(n+1)*A319613(n+1)`
-/

namespace A219603.P16865985377161337691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031368 (n + 1) : ℚ) / (A031215 (n + 1) : ℚ) * (A319613 (n + 1) : ℚ)

end

end A219603.P16865985377161337691

namespace A219603

/-- `A031368(n+1)/A031215(n+1)*A319613(n+1)` -/
def P16865985377161337691.Spec : Prop :=
  ∀ n, P16865985377161337691.a n = (A219603 (n + 1) : ℚ)

end A219603

/-! ## A219603.P4163596259802174571

`A008578(n+2)*A031368(n+1)`
-/

namespace A219603.P4163596259802174571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A031368 (n + 1)

end

end A219603.P4163596259802174571

namespace A219603

/-- `A008578(n+2)*A031368(n+1)` -/
def P4163596259802174571.Spec : Prop :=
  ∀ n, P4163596259802174571.a n = A219603 (n + 1)

end A219603

/-! ## A219603.P6309686583402746765

`A000040(2*n+1)*Δ[A007504(n)]`
-/

namespace A219603.P6309686583402746765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (2 * n + 1) * (f1 (n + 1) - f1 n)

end

end A219603.P6309686583402746765

namespace A219603

/-- `A000040(2*n+1)*Δ[A007504(n)]` -/
def P6309686583402746765.Spec : Prop :=
  ∀ n, P6309686583402746765.a n = A219603 (n + 1)

end A219603

/-! ## A219603.P12887692931917253786

`A031368(n+1)*A067747(2*n+1)`
-/

namespace A219603.P12887692931917253786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (n + 1) * A067747 (2 * n + 1)

end

end A219603.P12887692931917253786

namespace A219603

/-- `A031368(n+1)*A067747(2*n+1)` -/
def P12887692931917253786.Spec : Prop :=
  ∀ n, P12887692931917253786.a n = A219603 (n + 1)

end A219603

/-! ## A219603.P15901995969490633087

`A008578(2*(n+1))*A008578(n+2)`
-/

namespace A219603.P15901995969490633087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (2 * (n + 1)) * A008578 (n + 2)

end

end A219603.P15901995969490633087

namespace A219603

/-- `A008578(2*(n+1))*A008578(n+2)` -/
def P15901995969490633087.Spec : Prop :=
  ∀ n, P15901995969490633087.a n = A219603 (n + 1)

end A219603

/-! ## A219603.P16521516744780890369

`A182986(2*(n+1))*A182986(n+2)`
-/

namespace A219603.P16521516744780890369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (2 * (n + 1)) * A182986 (n + 2)

end

end A219603.P16521516744780890369

namespace A219603

/-- `A182986(2*(n+1))*A182986(n+2)` -/
def P16521516744780890369.Spec : Prop :=
  ∀ n, P16521516744780890369.a n = A219603 (n + 1)

end A219603

/-! ## A219603.P3949343051969906979

`sqrt(A280076(2*(n+1))*A280076(n+2))`
-/

namespace A219603.P3949343051969906979
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A280076 (2 * (n + 1)) * A280076 (n + 2) : ℝ)

end

end A219603.P3949343051969906979

namespace A219603

/-- `sqrt(A280076(2*(n+1))*A280076(n+2))` -/
def P3949343051969906979.Spec : Prop :=
  ∀ n, P3949343051969906979.a n = (A219603 (n + 1) : ℝ)

end A219603

/-! ## A219603.P8975711688672571647

`record[A051698(n)]*A000040(Δ[n²])`
-/

namespace A219603.P8975711688672571647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000040 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

end

end A219603.P8975711688672571647

namespace A219603

/-- `record[A051698(n)]*A000040(Δ[n²])` -/
def P8975711688672571647.Spec : Prop :=
  ∀ n, P8975711688672571647.a n = A219603 (n + 1)

end A219603

/-!
# A219604: Smallest prime p such that 2n+1 = 4q + p for some odd prime q, or 0 if no such prime exists.

The programs for A219604, there is no canonical definition to state claims against.
-/

/-! ## A219604.P8392004497673558241

`A219252(A056965(n)+A011782(n))`
-/

namespace A219604.P8392004497673558241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219252 (A056965 n + A011782 n).toNat

end

end A219604.P8392004497673558241

/-! ## A219604.P11736175096526722419

`A219252(A011782(n)-A108782(n))`
-/

namespace A219604.P11736175096526722419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219252 (A011782 n - A108782 n).toNat

end

end A219604.P11736175096526722419

/-!
# A219605: Square array T(n,k), read by antidiagonals: T(n,2*k) = T(n,2*k-1)*n, T(n,2*k+1) = T(n,2*k)+n, T(n,0) = 1.

The programs for A219605, there is no canonical definition to state claims against.
-/

/-! ## A219605.P766224653549107365

`A191372(A267072(n+2))`
-/

namespace A219605.P766224653549107365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191372 (A267072 (n + 2)).toNat

end

end A219605.P766224653549107365

/-! ## A219605.P6869138269907770593

`A034463(A331278(n)+A026670(n))`
-/

namespace A219605.P6869138269907770593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (A331278 n + A026670 n).toNat

end

end A219605.P6869138269907770593

/-! ## A219605.P12196621591580332422

`A034463(A331278(n)+A029635(n))`
-/

namespace A219605.P12196621591580332422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (A331278 n + A029635 n).toNat

end

end A219605.P12196621591580332422

/-! ## A219605.P7613888183193278128

`A319856(A331277(n)+A009999(n))`
-/

namespace A219605.P7613888183193278128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319856 (A331277 n + A009999 n).toNat

end

end A219605.P7613888183193278128

/-! ## A219605.P8439752436642491718

`A007318(n)-A352516(A209760(n+3))`
-/

namespace A219605.P8439752436642491718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A352516 (A209760 (n + 3)).toNat

end

end A219605.P8439752436642491718

/-!
# A219606: Prime gaps and primes interleaved.

The programs for A219606, there is no canonical definition to state claims against.
-/

/-! ## A219606.P2463227934296541943

`A134735(xor(1, n)+1)`
-/

namespace A219606.P2463227934296541943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (Nat.xor 1 n + 1)

end

end A219606.P2463227934296541943

/-! ## A219606.P17827412825254423794

`A134735(A004442(n)+1)`
-/

namespace A219606.P17827412825254423794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (A004442 n + 1).toNat

end

end A219606.P17827412825254423794

/-! ## A219606.P18158942506568214728

`A134735(A014681(n+1))`
-/

namespace A219606.P18158942506568214728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (A014681 (n + 1)).toNat

end

end A219606.P18158942506568214728

/-! ## A219606.P982274470783019072

`A134735(A103889(n+1))`
-/

namespace A219606.P982274470783019072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (A103889 (n + 1)).toNat

end

end A219606.P982274470783019072

/-! ## A219606.P3454229311862554573

`A134735(A008619(4*A008619(n)))-A134735(n+1)`
-/

namespace A219606.P3454229311862554573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134735 (A008619 (4 * A008619 n).toNat).toNat - A134735 (n + 1)

end

end A219606.P3454229311862554573

/-!
# A219607: Number of partitions of n into distinct parts 5*k+2 or 5*k+3.

The programs for A219607, there is no canonical definition to state claims against.
-/

/-! ## A219607.P12368023843137955352

`lcm(A284322(n), A298735(A090167(n)))`
-/

namespace A219607.P12368023843137955352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A284322 n) (A298735 (A090167 n).toNat)

end

end A219607.P12368023843137955352

/-! ## A219607.P12405991708345284384

`abs(A284322(A036987((∑[n+2]+4)²)+n))`
-/

namespace A219607.P12405991708345284384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A284322 (A036987 ((∑ j ∈ Finset.range (n + 1), f1 j + 4) ^ 2) + (n : ℤ)).toNat|

end

end A219607.P12405991708345284384

/-! ## A219607.P13261365280141301595

`gcd(A000038(A000045(n)), A284322(n))`
-/

namespace A219607.P13261365280141301595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (A000045 n).toNat) (A284322 n)

end

end A219607.P13261365280141301595

/-! ## A219607.P7661093064903903569

`abs(A033999(A008468(n+1))*A284322(n))`
-/

namespace A219607.P7661093064903903569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033999 (A008468 (n + 1)).toNat * A284322 n|

end

end A219607.P7661093064903903569

/-! ## A219607.P3960839054388813065

`abs(A284322(n)%A131308(A138927(n+1)))`
-/

namespace A219607.P3960839054388813065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A284322 n) (A131308 (A138927 (n + 1)).toNat)|

end

end A219607.P3960839054388813065

/-!
# A219608: Odd terms in A060142.

The programs for A219608, there is no canonical definition to state claims against.
-/

/-! ## A219608.P15577980763916597334

`1+2*A060142(n)`
-/

namespace A219608.P15577980763916597334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A060142 n

end

end A219608.P15577980763916597334

/-! ## A219608.P1077191407652239297

`ceil(A307096(n+1)/2)`
-/

namespace A219608.P1077191407652239297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A307096 (n + 1) : ℚ) / 2⌉

end

end A219608.P1077191407652239297

/-! ## A219608.P10149560988112476504

`a(n-1)+2*A219609(n)` with `a(0)=1`
-/

namespace A219608.P10149560988112476504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * A219609 n

end

end A219608.P10149560988112476504

/-! ## A219608.P5819228279863233664

`A307096(n+1)-(A060142(n)+A060142(n))`
-/

namespace A219608.P5819228279863233664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307096 (n + 1) - (A060142 n + A060142 n)

end

end A219608.P5819228279863233664

/-! ## A219608.P17147322891148808694

`A060142(A026351(n))`
-/

namespace A219608.P17147322891148808694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (A026351 n).toNat

end

end A219608.P17147322891148808694

/-! ## A219608.P4253488523517858677

`A060142(A066096(n)+1)`
-/

namespace A219608.P4253488523517858677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (A066096 n + 1).toNat

end

end A219608.P4253488523517858677

/-! ## A219608.P14154478919383506333

`or(1, A060142(A004956(n)))`
-/

namespace A219608.P14154478919383506333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A060142 (A004956 n).toNat)

end

end A219608.P14154478919383506333

/-! ## A219608.P13454183867453219570

`A060142(A026352(n)-n)`
-/

namespace A219608.P13454183867453219570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (A026352 n - (n : ℤ)).toNat

end

end A219608.P13454183867453219570

/-! ## A219608.P6212626572960031455

`A060142(A026355(n+1)-1)`
-/

namespace A219608.P6212626572960031455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (A026355 (n + 1) - 1).toNat

end

end A219608.P6212626572960031455

/-! ## A219608.P16058398103283826973

`A060142(A026356(n+1)-(n+1))`
-/

namespace A219608.P16058398103283826973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (A026356 (n + 1) - (n + 1 : ℤ)).toNat

end

end A219608.P16058398103283826973

/-! ## A219608.P2321515632709335707

`A336231(A026356(n+1))`
-/

namespace A219608.P2321515632709335707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336231 (A026356 (n + 1)).toNat

end

end A219608.P2321515632709335707

/-! ## A219608.P15489435682864651435

`A060142(A004957(n))/2+1`
-/

namespace A219608.P15489435682864651435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060142 (A004957 n).toNat : ℚ) / 2 + 1

end

end A219608.P15489435682864651435

/-! ## A219608.P6779977648398958725

`A336231(A026351(n)+1+n)`
-/

namespace A219608.P6779977648398958725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336231 (A026351 n + 1 + (n : ℤ)).toNat

end

end A219608.P6779977648398958725

/-! ## A219608.P2127159882712049312

`A060142(A019446(A026352(n)))`
-/

namespace A219608.P2127159882712049312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (A019446 (A026352 n).toNat).toNat

end

end A219608.P2127159882712049312

/-! ## A219608.P5060426635915166857

`∩[2*n+1, A336231(n+1)]`
-/

namespace A219608.P5060426635915166857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A219608.P5060426635915166857

/-! ## A219608.P13113976435325232184

`record[A000265(A060142(n+1))]`
-/

namespace A219608.P13113976435325232184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A060142 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219608.P13113976435325232184

/-! ## A219608.P10935883409554102341

`filter[A060142(n+1), A359832(#)]`
-/

namespace A219608.P10935883409554102341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A219608.P10935883409554102341

/-! ## A219608.P3303651339148592125

`filter[A060142(n), A098725(#)]`
-/

namespace A219608.P3303651339148592125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A219608.P3303651339148592125

/-! ## A219608.P14078319419237590783

`filter[A060142(n), A166486(#)]`
-/

namespace A219608.P14078319419237590783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A219608.P14078319419237590783

/-! ## A219608.P4740978711713664177

`filter[A060142(n+1), A039982(#)]`
-/

namespace A219608.P4740978711713664177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A219608.P4740978711713664177

/-!
# A219609: Half of first differences of A219608.

The programs for A219609, there is no canonical definition to state claims against.
-/

/-! ## A219609.P1365034590882989357

`Δ[A060142(n)]`
-/

namespace A219609.P1365034590882989357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219609.P1365034590882989357

/-! ## A219609.P12658978287650220036

`A060142(n+1)-A060142(n)`
-/

namespace A219609.P12658978287650220036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060142 (n + 1) - A060142 n

end

end A219609.P12658978287650220036

/-! ## A219609.P7467980947241430172

`Δ[A219608(n+1)/2]`
-/

namespace A219609.P7467980947241430172
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219608 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219609.P7467980947241430172

/-! ## A219609.P12798659234334880621

`Δ[A307096(n+1)/4]`
-/

namespace A219609.P12798659234334880621
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307096 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219609.P12798659234334880621

/-! ## A219609.P16595342844688245696

`Δ[A336231(A026351(n))]`
-/

namespace A219609.P16595342844688245696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336231 (A026351 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219609.P16595342844688245696

/-! ## A219609.P8921325750898259711

`A004524(Δ[A219608(n+1)]+1)`
-/

namespace A219609.P8921325750898259711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219608 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (f1 (n + 1) - f1 n + 1).toNat

end

end A219609.P8921325750898259711

/-! ## A219609.P4107751356358580387

`runs[∑[A086747(n)]]`
-/

namespace A219609.P4107751356358580387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A219609.P4107751356358580387

/-! ## A219609.P17565147806234111207

`Δ[eq[0, A343030(n)]]`
-/

namespace A219609.P17565147806234111207
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A219609.P17565147806234111207

/-! ## A219609.P12766697657013520450

`Δ[lt[A316831(n), 2]]`
-/

namespace A219609.P12766697657013520450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A219609.P12766697657013520450

/-! ## A219609.P14146816380549651861

`Δ[eq[A000120(n), A004718(n)]]`
-/

namespace A219609.P14146816380549651861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004718 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A219609.P14146816380549651861

/-! ## A219609.P9620331169841527882

`Δ[eq[1, A086747(2*n+1)]]`
-/

namespace A219609.P9620331169841527882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A219609.P9620331169841527882

/-! ## A219609.P18227223873596207116

`Δ[A004524(A219608(n+1))]`
-/

namespace A219609.P18227223873596207116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A219608 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219609.P18227223873596207116

/-! ## A219609.P8077984774123114817

`Δ[lt[A086747(2*n), A086747(2*n+1)]]`
-/

namespace A219609.P8077984774123114817
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A219609.P8077984774123114817

/-!
# A219610: Number of ways n can be written as sum of squares < n.

The programs for A219610, there is no canonical definition to state claims against.
-/

/-! ## A219610.P6088117518912060505

`A001156(n)-char[(n+1)²]`
-/

namespace A219610.P6088117518912060505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001156 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219610.P6088117518912060505

/-! ## A219610.P5216525997465017185

`A339365(n)+A339364(n)-char[(n+1)²]`
-/

namespace A219610.P5216525997465017185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339365 n + A339364 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219610.P5216525997465017185

/-! ## A219610.P690451915571052781

`A000007(n)+A001156(n)-A010052(n)`
-/

namespace A219610.P690451915571052781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A001156 n - A010052 n)

end

end A219610.P690451915571052781

/-! ## A219610.P17891225325432201287

`A010052(n)+A001156(n)-A000122(n)`
-/

namespace A219610.P17891225325432201287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n + (A001156 n - A000122 n)

end

end A219610.P17891225325432201287

/-! ## A219610.P9253058049541081826

`(A001156(n)-A010052(n))^and(1, A000040(n+1))`
-/

namespace A219610.P9253058049541081826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001156 n - A010052 n : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A219610.P9253058049541081826

/-! ## A219610.P16595487407634633758

`xor(A001156(n)-A010052(n), A000007(2*n))`
-/

namespace A219610.P16595487407634633758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001156 n - A010052 n) (A000007 (2 * n))

end

end A219610.P16595487407634633758

/-! ## A219610.P4867369055846172766

`A265260(4*n)-char[(n+1)²]`
-/

namespace A219610.P4867369055846172766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265260 (4 * n) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219610.P4867369055846172766

/-!
# A219612: Numbers k that divide the sum of the first k Fibonacci numbers (beginning with F(0)).

The programs for A219612, there is no canonical definition to state claims against.
-/

/-! ## A219612.P12687083171036514228

`A101907(n+1)+1`
-/

namespace A219612.P12687083171036514228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101907 (n + 1) + 1

end

end A219612.P12687083171036514228

/-! ## A219612.P4993593847758352492

`eq[1, A214967(n+2)]+1`
-/

namespace A219612.P4993593847758352492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214967 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A219612.P4993593847758352492

/-! ## A219612.P4468714384455845089

`eq[n, n*A002726(n+1)]+1`
-/

namespace A219612.P4468714384455845089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A002726 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A219612.P4468714384455845089

/-! ## A219612.P6134547802842622200

`eq[A002726(n+1), A057427(n)]+1`
-/

namespace A219612.P6134547802842622200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A219612.P6134547802842622200

/-! ## A219612.P8591032695867336586

`eq[A002726(n+1), A294619(n)]+1`
-/

namespace A219612.P8591032695867336586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002726 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A219612.P8591032695867336586

/-! ## A219612.P11686533529293250471

`record[A000027(n+1)/A214967(n+2)]`
-/

namespace A219612.P11686533529293250471
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A214967 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219612.P11686533529293250471

/-! ## A219612.P1635838859195385620

`record[A005408(n)-n*A214967(n+2)]`
-/

namespace A219612.P1635838859195385620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - (n : ℤ) * A214967 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219612.P1635838859195385620

/-! ## A219612.P7337589513069345991

`record[A008619(A014601(n))/A214967(n+2)]`
-/

namespace A219612.P7337589513069345991
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A014601 n).toNat : ℚ) / (A214967 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219612.P7337589513069345991

/-! ## A219612.P15188575791709788876

`record[A000463(2*n+1)/A214967(n+2)]`
-/

namespace A219612.P15188575791709788876
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000463 (2 * n + 1) : ℚ) / (A214967 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219612.P15188575791709788876

/-! ## A219612.P1179090603624396503

`record[A008619(A005408(n))/A214967(n+2)]`
-/

namespace A219612.P1179090603624396503
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008619 (A005408 n).toNat : ℚ) / (A214967 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219612.P1179090603624396503

/-! ## A219612.P5204683180610421082

`record[A110654(A103517(n))/A214967(n+2)]`
-/

namespace A219612.P5204683180610421082
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110654 (A103517 n).toNat : ℚ) / (A214967 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219612.P5204683180610421082

/-! ## A219612.P6505177211950095687

`record[A008620(A008486(n))/A214967(n+2)]`
-/

namespace A219612.P6505177211950095687
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 (A008486 n).toNat : ℚ) / (A214967 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219612.P6505177211950095687

/-! ## A219612.P12563590260598785708

`record[A008620(A016777(n))/A214967(n+2)]`
-/

namespace A219612.P12563590260598785708
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008620 (A016777 n).toNat : ℚ) / (A214967 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219612.P12563590260598785708

/-!
# A219613: E.g.f. tan(x/(1-x)).

The programs for A219613, there is no canonical definition to state claims against.
-/

/-! ## A219613.P17305862442404344928

`A157224(A350252(n)+A054846(n+1))`
-/

namespace A219613.P17305862442404344928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157224 (A350252 n + A054846 (n + 1)).toNat

end

end A219613.P17305862442404344928

/-! ## A219613.P11864985707945789857

`A248607(n*a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A219613.P11864985707945789857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A248607 ((n : ℤ) * a (n - 1)).toNat

end

end A219613.P11864985707945789857

/-!
# A219614: Number of ways to put n labeled objects into n labeled boxes so that no two nonempty boxes are adjacent.

The programs for A219614, there is no canonical definition to state claims against.
-/

/-! ## A219614.P12131045065928082484

`A347778(A148378(n))`
-/

namespace A219614.P12131045065928082484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347778 (A148378 n).toNat

end

end A219614.P12131045065928082484

/-! ## A219614.P1794200779699512086

`A001462(A210977(n!))`
-/

namespace A219614.P1794200779699512086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A210977 (Nat.factorial n)).toNat

end

end A219614.P1794200779699512086

/-!
# A219615: a(n) = Sum_{k=0..12} binomial(n,k).

The programs for A219615, the canonical program `A219615.P10648182080128368590` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219615 has offset 0).

The definition of A219615 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[12, C(n, #)]` (program `A219615.P10648182080128368590`, by `A219615.P10648182080128368590.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219615.P10648182080128368590

`∑{#}[12, C(n, #)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219615

/-- `∑{#}[12, C(n, #)]` -/
def P10648182080128368590.Spec : Prop :=
  ∀ n, (P10648182080128368590.a n : ℤ) = A219615 n

theorem P10648182080128368590.correct : P10648182080128368590.Spec := by
  intro n
  simp only [A219615]

end A219615

/-! ## A219615.P10194641318081300882

`Δ[A219676(n)]`
-/

namespace A219615.P10194641318081300882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219615.P10194641318081300882

namespace A219615

/-- `Δ[A219676(n)]` -/
def P10194641318081300882.Spec : Prop :=
  ∀ n, P10194641318081300882.a n = A219615 n

end A219615

/-! ## A219615.P15093587587077422900

`∑[A219531(A028310(n)-1)]`
-/

namespace A219615.P15093587587077422900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219531 (A028310 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219615.P15093587587077422900

namespace A219615

/-- `∑[A219531(A028310(n)-1)]` -/
def P15093587587077422900.Spec : Prop :=
  ∀ n, P15093587587077422900.a n = A219615 n

end A219615

/-! ## A219615.P13764932870775551023

`A219676(n+1)-A219676(n)`
-/

namespace A219615.P13764932870775551023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219676 (n + 1) - A219676 n

end

end A219615.P13764932870775551023

namespace A219615

/-- `A219676(n+1)-A219676(n)` -/
def P13764932870775551023.Spec : Prop :=
  ∀ n, P13764932870775551023.a n = A219615 n

end A219615

/-! ## A219615.P15927644404626215224

`Δ[Δ[A220051(n)]]`
-/

namespace A219615.P15927644404626215224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220051 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219615.P15927644404626215224

namespace A219615

/-- `Δ[Δ[A220051(n)]]` -/
def P15927644404626215224.Spec : Prop :=
  ∀ n, P15927644404626215224.a n = A219615 n

end A219615

/-! ## A219615.P6189066994967633679

`A004070(A027379(n+10)+n+3)`
-/

namespace A219615.P6189066994967633679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004070 (A027379 (n + 10) + (n + 3 : ℤ)).toNat

end

end A219615.P6189066994967633679

namespace A219615

/-- `A004070(A027379(n+10)+n+3)` -/
def P6189066994967633679.Spec : Prop :=
  ∀ n, P6189066994967633679.a n = A219615 n

end A219615

/-!
# A219619: a(n) = n! * (n^4 + n^2 + 1).

The programs for A219619, the canonical program `A219619.P7418221172582934328` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219619 has offset 0).

The definition of A219619 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(n^4+n²+1)` (program `A219619.P7418221172582934328`, by `A219619.P7418221172582934328.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219619.P7418221172582934328

`n!*(n^4+n²+1)`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219619

/-- `n!*(n^4+n²+1)` -/
def P7418221172582934328.Spec : Prop :=
  ∀ n, (P7418221172582934328.a n : ℤ) = A219619 n

theorem P7418221172582934328.correct : P7418221172582934328.Spec := by
  intro n
  simp only [A219619]

end A219619

/-! ## A219619.P11773297555618560246

`A000142(n)*A059826(n)`
-/

namespace A219619.P11773297555618560246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A059826 n

end

end A219619.P11773297555618560246

namespace A219619

/-- `A000142(n)*A059826(n)` -/
def P11773297555618560246.Spec : Prop :=
  ∀ n, P11773297555618560246.a n = A219619 n

theorem P11773297555618560246.correct : P11773297555618560246.Spec := by
  intro n
  simp only [A219619, Nat.add_sub_cancel, A219619.P11773297555618560246.a, A219619.P7418221172582934328.a, A000142, A000142.P3272619076580183195.a, A059826, A059826.P10107357562865888263.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219619

/-! ## A219619.P17599372273722535792

`(n²²+1+n²)*n!`
-/

namespace A219619.P17599372273722535792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 + 1 + n ^ 2) * Nat.factorial n

end

end A219619.P17599372273722535792

namespace A219619

/-- `(n²²+1+n²)*n!` -/
def P17599372273722535792.Spec : Prop :=
  ∀ n, (P17599372273722535792.a n : ℤ) = A219619 n

theorem P17599372273722535792.correct : P17599372273722535792.Spec := by
  intro n
  simp only [A219619, Nat.add_sub_cancel, A219619.P17599372273722535792.a, A219619.P7418221172582934328.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A219619

/-! ## A219619.P12896372158603174786

`((1-n)²+n)*A001564(n)`
-/

namespace A219619.P12896372158603174786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 + (n : ℤ)) * A001564 n

end

end A219619.P12896372158603174786

namespace A219619

/-- `((1-n)²+n)*A001564(n)` -/
def P12896372158603174786.Spec : Prop :=
  ∀ n, P12896372158603174786.a n = A219619 n

theorem P12896372158603174786.correct : P12896372158603174786.Spec := by
  intro n
  simp only [A219619, Nat.add_sub_cancel, A219619.P12896372158603174786.a, A219619.P7418221172582934328.a, A001564, A001564.P17765539125247951244.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219619

/-! ## A219619.P8519353216251060593

`A001564(n)*A002061(n)`
-/

namespace A219619.P8519353216251060593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001564 n * A002061 n

end

end A219619.P8519353216251060593

namespace A219619

/-- `A001564(n)*A002061(n)` -/
def P8519353216251060593.Spec : Prop :=
  ∀ n, P8519353216251060593.a n = A219619 n

theorem P8519353216251060593.correct : P8519353216251060593.Spec := by
  intro n
  simp only [A219619, Nat.add_sub_cancel, A219619.P8519353216251060593.a, A219619.P7418221172582934328.a, A001564, A001564.P17765539125247951244.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219619

/-! ## A219619.P11994536412502095169

`Δ[A001563(n)]*A002061(n)`
-/

namespace A219619.P11994536412502095169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A002061 n

end

end A219619.P11994536412502095169

namespace A219619

/-- `Δ[A001563(n)]*A002061(n)` -/
def P11994536412502095169.Spec : Prop :=
  ∀ n, P11994536412502095169.a n = A219619 n

end A219619

/-! ## A219619.P15522125636437911315

`A000142(n)*A002061(n²+1)`
-/

namespace A219619.P15522125636437911315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A002061 (n ^ 2 + 1)

end

end A219619.P15522125636437911315

namespace A219619

/-- `A000142(n)*A002061(n²+1)` -/
def P15522125636437911315.Spec : Prop :=
  ∀ n, P15522125636437911315.a n = A219619 n

theorem P15522125636437911315.correct : P15522125636437911315.Spec := by
  intro n
  simp only [A219619, Nat.add_sub_cancel, A219619.P15522125636437911315.a, A219619.P7418221172582934328.a, A000142, A000142.P3272619076580183195.a, A002061, A002061.P13016590216674735232.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219619

/-!
# A219620: Number of n X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 n X n array.

The programs for A219620, there is no canonical definition to state claims against.
-/

/-! ## A219620.P16953596327155555700

`A219627(∑[4*n]+1)`
-/

namespace A219620.P16953596327155555700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219620.P16953596327155555700

/-! ## A219620.P18191809559605600635

`record[A219627(A286145(n)+1)]`
-/

namespace A219620.P18191809559605600635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A286145 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219620.P18191809559605600635

/-! ## A219620.P7848264142790019837

`record[A219627(A330613(n+1))]`
-/

namespace A219620.P7848264142790019837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219620.P7848264142790019837

/-!
# A219621: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 n X 2 array.

The programs for A219621, the canonical program `A219621.P904046251740502379` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219621 has offset 1).

The definition of A219621 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219621.P3467386969723453577

`∑[∑[4+n²]-1]`
-/

namespace A219621.P3467386969723453577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 + n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219621.P3467386969723453577

namespace A219621

/-- `∑[∑[4+n²]-1]` -/
def P3467386969723453577.Spec : Prop :=
  ∀ n, P3467386969723453577.a n = A219621 (n + 1)

end A219621

/-! ## A219621.P17612801703150499858

`∑[∑[n²]]+C(2*n+3, 2)`
-/

namespace A219621.P17612801703150499858
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose (2 * n + 3) 2

end

end A219621.P17612801703150499858

namespace A219621

/-- `∑[∑[n²]]+C(2*n+3, 2)` -/
def P17612801703150499858.Spec : Prop :=
  ∀ n, (P17612801703150499858.a n : ℤ) = A219621 (n + 1)

end A219621

/-! ## A219621.P14398374053960792184

`ogf((3-4x+2x^2+x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A219621.P14398374053960792184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -4, 2, 1] [1, -5, 10, -10, 5, -1] n

end

end A219621.P14398374053960792184

namespace A219621

/-- `ogf((3-4x+2x^2+x^3)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P14398374053960792184.Spec : Prop :=
  ∀ n, P14398374053960792184.a n = A219621 (n + 1)

end A219621

/-! ## A219621.P9322899656445812663

`floor(∑[∑[∑[a(n-1)+2]]])` with `a(0)=3, a(1)=2, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A219621.P9322899656445812663
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 3] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219621.P9322899656445812663

namespace A219621

/-- `floor(∑[∑[∑[a(n-1)+2]]])` -/
def P9322899656445812663.Spec : Prop :=
  ∀ n, (P9322899656445812663.a n : ℤ) = A219621 (n + 1)

end A219621

/-! ## A219621.P3374665513867240091

`ceil(∑[∑[∑[a(n-1)+2]]])` with `a(0)=3, a(1)=2, a(2)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A219621.P3374665513867240091
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [3, 2, 3] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219621.P3374665513867240091

namespace A219621

/-- `ceil(∑[∑[∑[a(n-1)+2]]])` -/
def P3374665513867240091.Spec : Prop :=
  ∀ n, (P3374665513867240091.a n : ℤ) = A219621 (n + 1)

end A219621

/-! ## A219621.P16365182867181106468

`a(n-1)+∑[n*n+3]+n` with `a(0)=3`
-/

namespace A219621.P16365182867181106468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * n + 3

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A219621.P16365182867181106468

namespace A219621

/-- `a(n-1)+∑[n*n+3]+n` -/
def P16365182867181106468.Spec : Prop :=
  ∀ n, (P16365182867181106468.a n : ℤ) = A219621 (n + 1)

end A219621

/-! ## A219621.P11508144235258929926

`∑[∑[∑[a(n-1)+2]]]-(n+1)` with `a(0)=4, a(1)=1`
-/

namespace A219621.P11508144235258929926
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [4, 1] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A219621.P11508144235258929926

namespace A219621

/-- `∑[∑[∑[a(n-1)+2]]]-(n+1)` -/
def P11508144235258929926.Spec : Prop :=
  ∀ n, P11508144235258929926.a n = A219621 (n + 1)

end A219621

/-! ## A219621.P904046251740502379

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=11, a(2)=27, a(3)=56, a(4)=105`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219621

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P904046251740502379.Spec : Prop :=
  ∀ n, P904046251740502379.a n = A219621 (n + 1)

theorem P904046251740502379.correct : P904046251740502379.Spec := by
  intro n
  simp only [A219621, Nat.add_sub_cancel]

end A219621

/-! ## A219621.P10554074901306161886

`abs(∑[∑[A000290(n)+4]-1])`
-/

namespace A219621.P10554074901306161886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A219621.P10554074901306161886

namespace A219621

/-- `abs(∑[∑[A000290(n)+4]-1])` -/
def P10554074901306161886.Spec : Prop :=
  ∀ n, P10554074901306161886.a n = A219621 (n + 1)

end A219621

/-! ## A219621.P7625757625207993

`A006008(n+1)+(n+1)*(n+2)`
-/

namespace A219621.P7625757625207993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006008 (n + 1) + ((n + 1) * (n + 2) : ℤ)

end

end A219621.P7625757625207993

namespace A219621

/-- `A006008(n+1)+(n+1)*(n+2)` -/
def P7625757625207993.Spec : Prop :=
  ∀ n, P7625757625207993.a n = A219621 (n + 1)

end A219621

/-! ## A219621.P15098691436129777674

`(∑[(A000124(n)+3)/2]+1)*(n+1)`
-/

namespace A219621.P15098691436129777674
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000124 n + 3 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * (n + 1 : ℚ)

end

end A219621.P15098691436129777674

namespace A219621

/-- `(∑[(A000124(n)+3)/2]+1)*(n+1)` -/
def P15098691436129777674.Spec : Prop :=
  ∀ n, P15098691436129777674.a n = (A219621 (n + 1) : ℚ)

end A219621

/-! ## A219621.P1197819545279186693

`A322595(n)+A117662(n)`
-/

namespace A219621.P1197819545279186693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322595 n + A117662 n

end

end A219621.P1197819545279186693

namespace A219621

/-- `A322595(n)+A117662(n)` -/
def P1197819545279186693.Spec : Prop :=
  ∀ n, P1197819545279186693.a n = A219621 (n + 1)

end A219621

/-! ## A219621.P16945721851407782871

`A005701(n)-A016061(n)`
-/

namespace A219621.P16945721851407782871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - A016061 n

end

end A219621.P16945721851407782871

namespace A219621

/-- `A005701(n)-A016061(n)` -/
def P16945721851407782871.Spec : Prop :=
  ∀ n, P16945721851407782871.a n = A219621 (n + 1)

end A219621

/-! ## A219621.P918852860265146491

`A055417(n)+A051744(n+1)`
-/

namespace A219621.P918852860265146491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055417 n + A051744 (n + 1)

end

end A219621.P918852860265146491

namespace A219621

/-- `A055417(n)+A051744(n+1)` -/
def P918852860265146491.Spec : Prop :=
  ∀ n, P918852860265146491.a n = A219621 (n + 1)

end A219621

/-! ## A219621.P14712446034622912001

`A400561(n+2)+A008778(n)`
-/

namespace A219621.P14712446034622912001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400561 (n + 2) + A008778 n

end

end A219621.P14712446034622912001

namespace A219621

/-- `A400561(n+2)+A008778(n)` -/
def P14712446034622912001.Spec : Prop :=
  ∀ n, P14712446034622912001.a n = A219621 (n + 1)

end A219621

/-! ## A219621.P18006792944678844457

`A395260(n+1)-A056520(n)`
-/

namespace A219621.P18006792944678844457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395260 (n + 1) - A056520 n

end

end A219621.P18006792944678844457

namespace A219621

/-- `A395260(n+1)-A056520(n)` -/
def P18006792944678844457.Spec : Prop :=
  ∀ n, P18006792944678844457.a n = A219621 (n + 1)

end A219621

/-! ## A219621.P6721306862210049255

`A127407(n+2)-A162148(n)`
-/

namespace A219621.P6721306862210049255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127407 (n + 2) - A162148 n

end

end A219621.P6721306862210049255

namespace A219621

/-- `A127407(n+2)-A162148(n)` -/
def P6721306862210049255.Spec : Prop :=
  ∀ n, P6721306862210049255.a n = A219621 (n + 1)

end A219621

/-! ## A219621.P1816235360818683506

`A014105(n+1)+A008911(n+1)/2`
-/

namespace A219621.P1816235360818683506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014105 (n + 1) : ℚ) + (A008911 (n + 1) : ℚ) / 2

end

end A219621.P1816235360818683506

namespace A219621

/-- `A014105(n+1)+A008911(n+1)/2` -/
def P1816235360818683506.Spec : Prop :=
  ∀ n, P1816235360818683506.a n = (A219621 (n + 1) : ℚ)

end A219621

/-! ## A219621.P5939767724097456319

`A000217(n+1)+A006008(n+1)+A000217(n+1)`
-/

namespace A219621.P5939767724097456319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A006008 (n + 1) + A000217 (n + 1))

end

end A219621.P5939767724097456319

namespace A219621

/-- `A000217(n+1)+A006008(n+1)+A000217(n+1)` -/
def P5939767724097456319.Spec : Prop :=
  ∀ n, P5939767724097456319.a n = A219621 (n + 1)

end A219621

/-! ## A219621.P3234196806473904622

`A136396(n+1)+n*(n+2)`
-/

namespace A219621.P3234196806473904622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136396 (n + 1) + (n * (n + 2) : ℤ)

end

end A219621.P3234196806473904622

namespace A219621

/-- `A136396(n+1)+n*(n+2)` -/
def P3234196806473904622.Spec : Prop :=
  ∀ n, P3234196806473904622.a n = A219621 (n + 1)

end A219621

/-!
# A219622: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX3 array.

The programs for A219622, there is no canonical definition to state claims against.
-/

/-! ## A219622.P17394246481812162619

`A219627(∑[n+3]+1)`
-/

namespace A219622.P17394246481812162619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219622.P17394246481812162619

/-! ## A219622.P12749801565409078114

`A323402(n+2)+A219627(A034856(n+2))`
-/

namespace A219622.P12749801565409078114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323402 (n + 2) + A219627 (A034856 (n + 2)).toNat

end

end A219622.P12749801565409078114

/-! ## A219622.P9407365514664777818

`A219627(A034856(n+2))%A282789(n+1)`
-/

namespace A219622.P9407365514664777818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219627 (A034856 (n + 2)).toNat) (A282789 (n + 1))

end

end A219622.P9407365514664777818

/-! ## A219622.P17132404716358671035

`or(A108497(n+1), A219627(A034856(n+2)))`
-/

namespace A219622.P17132404716358671035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A108497 (n + 1)) (A219627 (A034856 (n + 2)).toNat)

end

end A219622.P17132404716358671035

/-!
# A219623: Number of nX4 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX4 array.

The programs for A219623, there is no canonical definition to state claims against.
-/

/-! ## A219623.P15674168751070674274

`A219627(∑[n+4]+3)`
-/

namespace A219623.P15674168751070674274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A219623.P15674168751070674274

/-! ## A219623.P15936244756921067421

`A219627(A056000(n)+7)%A275963(n+1)`
-/

namespace A219623.P15936244756921067421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219627 (A056000 n + 7).toNat) (A275963 (n + 1))

end

end A219623.P15936244756921067421

/-!
# A219624: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX5 array.

The programs for A219624, there is no canonical definition to state claims against.
-/

/-! ## A219624.P12662564400030139775

`A219627(∑[n+5]+6)`
-/

namespace A219624.P12662564400030139775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A219624.P12662564400030139775

/-!
# A219625: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX6 array.

The programs for A219625, there is no canonical definition to state claims against.
-/

/-! ## A219625.P4827676125169904714

`A219627(C(n+6, 2)+n+1)`
-/

namespace A219625.P4827676125169904714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (Nat.choose (n + 6) 2 + (n + 1))

end

end A219625.P4827676125169904714

/-! ## A219625.P10542313110975093928

`A219627(A052905(n+3))`
-/

namespace A219625.P10542313110975093928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A052905 (n + 3)).toNat

end

end A219625.P10542313110975093928

/-! ## A219625.P1411133490799410907

`A219627(A056119(n)+16)`
-/

namespace A219625.P1411133490799410907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A056119 n + 16).toNat

end

end A219625.P1411133490799410907

/-! ## A219625.P7159698101284762889

`A219627(eq[3, A219347(n)])`
-/

namespace A219625.P7159698101284762889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219625.P7159698101284762889

/-! ## A219625.P6027329348820567275

`A219627(eq[3, A274661(n)])`
-/

namespace A219625.P6027329348820567275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274661 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219625.P6027329348820567275

/-!
# A219626: Number of nX7 arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nX7 array.

The programs for A219626, there is no canonical definition to state claims against.
-/

/-! ## A219626.P6197296232103003513

`A219627(A055999(n+4))`
-/

namespace A219626.P6197296232103003513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A055999 (n + 4)).toNat

end

end A219626.P6197296232103003513

/-! ## A219626.P10301319013702119544

`A219627(eq[4, A219347(n)])`
-/

namespace A219626.P10301319013702119544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219626.P10301319013702119544

/-! ## A219626.P15514791832166610554

`A219627(eq[6, A193592(n)])`
-/

namespace A219626.P15514791832166610554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219626.P15514791832166610554

/-! ## A219626.P640234171831168398

`A219627(Δ[A023551(n+2)])`
-/

namespace A219626.P640234171831168398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (f1 (n + 1) - f1 n).toNat

end

end A219626.P640234171831168398

/-!
# A219627: T(n,k)=Number of nXk arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 nXk array.

The programs for A219627, there is no canonical definition to state claims against.
-/

/-! ## A219627.P1299187095571284672

`A347520(A220153(n+1))`
-/

namespace A219627.P1299187095571284672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347520 (A220153 (n + 1)).toNat

end

end A219627.P1299187095571284672

/-! ## A219627.P9712585309453618047

`A335524(A220153(n+1)+1)`
-/

namespace A219627.P9712585309453618047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (A220153 (n + 1) + 1).toNat

end

end A219627.P9712585309453618047

/-!
# A219628: Number of 2 X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 2 X n array.

The programs for A219628, the canonical program `A219628.P6226752128468833797` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219628 has offset 1).

The definition of A219628 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219628.P5380899998040570059

`ogf((6-19x+29x^2-16x^3-7x^4+12x^5-x^6-x^7)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A219628.P5380899998040570059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -19, 29, -16, -7, 12, -1, -1] [1, -5, 10, -10, 5, -1] n

end

end A219628.P5380899998040570059

namespace A219628

/-- `ogf((6-19x+29x^2-16x^3-7x^4+12x^5-x^6-x^7)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P5380899998040570059.Spec : Prop :=
  ∀ n, P5380899998040570059.a n = A219628 (n + 1)

end A219628

/-! ## A219628.P6226752128468833797

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=6, a(1)=11, a(2)=24, a(3)=54, a(4)=103, a(5)=178, a(6)=290, a(7)=453`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219628

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P6226752128468833797.Spec : Prop :=
  ∀ n, P6226752128468833797.a n = A219628 (n + 1)

theorem P6226752128468833797.correct : P6226752128468833797.Spec := by
  intro n
  simp only [A219628, Nat.add_sub_cancel]

end A219628

/-! ## A219628.P6225562149689335294

`A219627(∑[n+1]+2)`
-/

namespace A219628.P6225562149689335294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219628.P6225562149689335294

namespace A219628

/-- `A219627(∑[n+1]+2)` -/
def P6225562149689335294.Spec : Prop :=
  ∀ n, P6225562149689335294.a n = A219628 (n + 1)

end A219628

/-! ## A219628.P3247131064490444959

`record[A219627(A101881(n)+3)]`
-/

namespace A219628.P3247131064490444959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A101881 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219628.P3247131064490444959

namespace A219628

/-- `record[A219627(A101881(n)+3)]` -/
def P3247131064490444959.Spec : Prop :=
  ∀ n, P3247131064490444959.a n = A219628 (n + 1)

end A219628

/-! ## A219628.P11463076434943000732

`record[A219627(C(A237591(n+2), 2)+2)]`
-/

namespace A219628.P11463076434943000732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (Nat.choose (A237591 (n + 2)).toNat 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219628.P11463076434943000732

namespace A219628

/-- `record[A219627(C(A237591(n+2), 2)+2)]` -/
def P11463076434943000732.Spec : Prop :=
  ∀ n, P11463076434943000732.a n = A219628 (n + 1)

end A219628

/-!
# A219629: Number of 3Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 3Xn array.

The programs for A219629, there is no canonical definition to state claims against.
-/

/-! ## A219629.P2089819072521609960

`A219627(∑[n+2]+4)`
-/

namespace A219629.P2089819072521609960
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219629.P2089819072521609960

/-! ## A219629.P8049302966980202075

`A219627(A167614(n+1))+A011738(n)`
-/

namespace A219629.P8049302966980202075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A167614 (n + 1)).toNat + A011738 n

end

end A219629.P8049302966980202075

/-! ## A219629.P17302104151833475141

`A219627(A167614(n+1))+A025437(n)`
-/

namespace A219629.P17302104151833475141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A167614 (n + 1)).toNat + A025437 n

end

end A219629.P17302104151833475141

/-! ## A219629.P8707975593358636825

`A219627(A167614(n+1))+A025444(n)`
-/

namespace A219629.P8707975593358636825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A167614 (n + 1)).toNat + A025444 n

end

end A219629.P8707975593358636825

/-! ## A219629.P12825704692346996721

`A219627(A167614(n+1))+A025469(n)`
-/

namespace A219629.P12825704692346996721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A167614 (n + 1)).toNat + A025469 n

end

end A219629.P12825704692346996721

/-!
# A219630: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 4Xn array.

The programs for A219630, there is no canonical definition to state claims against.
-/

/-! ## A219630.P35727568305593543

`A219627(A145018(n+4))`
-/

namespace A219630.P35727568305593543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A145018 (n + 4)).toNat

end

end A219630.P35727568305593543

/-! ## A219630.P17953344417483845947

`A219627(A141214(n)+7)`
-/

namespace A219630.P17953344417483845947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A141214 n + 7).toNat

end

end A219630.P17953344417483845947

/-! ## A219630.P3138930721179606943

`A219627(A052905(n)+9)`
-/

namespace A219630.P3138930721179606943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A052905 n + 9).toNat

end

end A219630.P3138930721179606943

/-! ## A219630.P8986848904579664780

`A219627(A055999(n)+10)`
-/

namespace A219630.P8986848904579664780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A055999 n + 10).toNat

end

end A219630.P8986848904579664780

/-! ## A219630.P1030527704455902167

`A219627(eq[5, A066657(n)])`
-/

namespace A219630.P1030527704455902167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219630.P1030527704455902167

/-!
# A219631: Number of 5 X n arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 5 X n array.

The programs for A219631, there is no canonical definition to state claims against.
-/

/-! ## A219631.P5110028185806283342

`A219627(A167499(n+3))`
-/

namespace A219631.P5110028185806283342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A167499 (n + 3)).toNat

end

end A219631.P5110028185806283342

/-! ## A219631.P3891104714613015585

`A219627(A155212(n)+13)`
-/

namespace A219631.P3891104714613015585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A155212 n + 13).toNat

end

end A219631.P3891104714613015585

/-! ## A219631.P5737462764706660458

`A219627(A056000(n)+15)`
-/

namespace A219631.P5737462764706660458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A056000 n + 15).toNat

end

end A219631.P5737462764706660458

/-! ## A219631.P15518732017896193265

`A219627(eq[7, A066657(n)])`
-/

namespace A219631.P15518732017896193265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219631.P15518732017896193265

/-! ## A219631.P7028251808432785740

`A219627(A326178(eq[4, col(n)]))`
-/

namespace A219631.P7028251808432785740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A326178 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)).toNat

end

end A219631.P7028251808432785740

/-!
# A219632: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 6Xn array.

The programs for A219632, there is no canonical definition to state claims against.
-/

/-! ## A219632.P15128866376290172138

`A219627(A166136(n+4))`
-/

namespace A219632.P15128866376290172138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A166136 (n + 4)).toNat

end

end A219632.P15128866376290172138

/-! ## A219632.P16922573453008630845

`A219627(A056115(n)+21)`
-/

namespace A219632.P16922573453008630845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A056115 n + 21).toNat

end

end A219632.P16922573453008630845

/-! ## A219632.P15475121302343617186

`A219627(A167499(n+4)+1)`
-/

namespace A219632.P15475121302343617186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A167499 (n + 4) + 1).toNat

end

end A219632.P15475121302343617186

/-! ## A219632.P16936822011831617457

`A219627(A133263(n+5)+4)`
-/

namespace A219632.P16936822011831617457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A133263 (n + 5) + 4).toNat

end

end A219632.P16936822011831617457

/-! ## A219632.P12654978750956244647

`A219627(A000217(n+5)+6)`
-/

namespace A219632.P12654978750956244647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A000217 (n + 5) + 6).toNat

end

end A219632.P12654978750956244647

/-!
# A219633: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..2 7Xn array.

The programs for A219633, there is no canonical definition to state claims against.
-/

/-! ## A219633.P10994564296524920716

`A219627(A056119(n)+28)`
-/

namespace A219633.P10994564296524920716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A056119 n + 28).toNat

end

end A219633.P10994564296524920716

/-! ## A219633.P14388024494574969891

`A219627(eq[11, A066657(n)])`
-/

namespace A219633.P14388024494574969891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219633.P14388024494574969891

/-! ## A219633.P15397124857120427338

`A219627(A168106(n)-n)`
-/

namespace A219633.P15397124857120427338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A168106 n - (n : ℤ)).toNat

end

end A219633.P15397124857120427338

/-! ## A219633.P4767545356428174291

`A219627(A166136(n+5)+1)`
-/

namespace A219633.P4767545356428174291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219627 (A166136 (n + 5) + 1).toNat

end

end A219633.P4767545356428174291

/-!
# A219636: Complement of A035336.

The programs for A219636, the canonical program `A219636.P17854170644708396736` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219636 has offset 1).

The definition of A219636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219636.P9399744799590916894

`floor(∑[ϕ^((n-1)%2)])`
-/

namespace A219636.P9399744799590916894
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ (Int.tmod ((n : ℤ) - 1) 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A219636.P9399744799590916894

namespace A219636

/-- `floor(∑[ϕ^((n-1)%2)])` -/
def P9399744799590916894.Spec : Prop :=
  ∀ n, P9399744799590916894.a n = A219636 (n + 1)

end A219636

/-! ## A219636.P18377994449611774385

`floor(∑[gcd(2, n)^log2(ϕ)])-1`
-/

namespace A219636.P18377994449611774385
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℝ) ^ (Real.logb 2 Real.goldenRatio)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - 1

end

end A219636.P18377994449611774385

namespace A219636

/-- `floor(∑[gcd(2, n)^log2(ϕ)])-1` -/
def P18377994449611774385.Spec : Prop :=
  ∀ n, P18377994449611774385.a n = A219636 (n + 1)

end A219636

/-! ## A219636.P1433700789996493537

`ceil(∑[∏[ϕ-n%2]])-2`
-/

namespace A219636.P1433700789996493537
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - ((n % 2 : ℕ) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - 2

end

end A219636.P1433700789996493537

namespace A219636

/-- `ceil(∑[∏[ϕ-n%2]])-2` -/
def P1433700789996493537.Spec : Prop :=
  ∀ n, P1433700789996493537.a n = A219636 (n + 1)

end A219636

/-! ## A219636.P12451606831985967298

`ceil(∑[ϕ^((n+1)%2)])-2`
-/

namespace A219636.P12451606831985967298
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ j ∈ Finset.range (n + 1), f1 j⌉ - 2

end

end A219636.P12451606831985967298

namespace A219636

/-- `ceil(∑[ϕ^((n+1)%2)])-2` -/
def P12451606831985967298.Spec : Prop :=
  ∀ n, P12451606831985967298.a n = A219636 (n + 1)

end A219636

/-! ## A219636.P9037876328242013319

`floor((floor(n/2)+1)/ϕ+n)`
-/

namespace A219636.P9037876328242013319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℚ) / 2⌋ + 1 : ℝ) / Real.goldenRatio + (n : ℝ)⌋

end

end A219636.P9037876328242013319

namespace A219636

/-- `floor((floor(n/2)+1)/ϕ+n)` -/
def P9037876328242013319.Spec : Prop :=
  ∀ n, P9037876328242013319.a n = A219636 (n + 1)

end A219636

/-! ## A219636.P4491180792050079326

`ceil(ϕ*∑[ϕ-a(n-1)])-2` with `a(0)=1`
-/

namespace A219636.P4491180792050079326
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  Real.goldenRatio - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (∑ j ∈ Finset.range (n + 1), f1 j)⌉ - 2

end

end A219636.P4491180792050079326

namespace A219636

/-- `ceil(ϕ*∑[ϕ-a(n-1)])-2` -/
def P4491180792050079326.Spec : Prop :=
  ∀ n, P4491180792050079326.a n = A219636 (n + 1)

end A219636

/-! ## A219636.P17854170644708396736

`A307295(n)-2`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A219636

/-- `A307295(n)-2` -/
def P17854170644708396736.Spec : Prop :=
  ∀ n, P17854170644708396736.a n = A219636 (n + 1)

theorem P17854170644708396736.correct : P17854170644708396736.Spec := by
  intro n
  simp only [A219636, Nat.add_sub_cancel]

end A219636

/-! ## A219636.P956474295452594955

`comp[A035336(n+1)]`
-/

namespace A219636.P956474295452594955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219636.P956474295452594955

namespace A219636

/-- `comp[A035336(n+1)]` -/
def P956474295452594955.Spec : Prop :=
  ∀ n, (P956474295452594955.a n : ℤ) = A219636 (n + 1)

end A219636

/-! ## A219636.P15538606880636734463

`comp[A047924(n)-4]`
-/

namespace A219636.P15538606880636734463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047924 n - 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219636.P15538606880636734463

namespace A219636

/-- `comp[A047924(n)-4]` -/
def P15538606880636734463.Spec : Prop :=
  ∀ n, (P15538606880636734463.a n : ℤ) = A219636 (n + 1)

end A219636

/-! ## A219636.P14146334594812292587

`A187485(n+1)-1`
-/

namespace A219636.P14146334594812292587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187485 (n + 1) - 1

end

end A219636.P14146334594812292587

namespace A219636

/-- `A187485(n+1)-1` -/
def P14146334594812292587.Spec : Prop :=
  ∀ n, P14146334594812292587.a n = A219636 (n + 1)

end A219636

/-! ## A219636.P8452551306099919335

`∑[A363057(n+1)]-1`
-/

namespace A219636.P8452551306099919335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363057 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A219636.P8452551306099919335

namespace A219636

/-- `∑[A363057(n+1)]-1` -/
def P8452551306099919335.Spec : Prop :=
  ∀ n, P8452551306099919335.a n = A219636 (n + 1)

end A219636

/-! ## A219636.P8856989045186919834

`comp[A003623(n+1)-1]`
-/

namespace A219636.P8856989045186919834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003623 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219636.P8856989045186919834

namespace A219636

/-- `comp[A003623(n+1)-1]` -/
def P8856989045186919834.Spec : Prop :=
  ∀ n, (P8856989045186919834.a n : ℤ) = A219636 (n + 1)

end A219636

/-! ## A219636.P9876096393890139573

`comp[A089910(n+1)-2]`
-/

namespace A219636.P9876096393890139573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089910 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219636.P9876096393890139573

namespace A219636

/-- `comp[A089910(n+1)-2]` -/
def P9876096393890139573.Spec : Prop :=
  ∀ n, (P9876096393890139573.a n : ℤ) = A219636 (n + 1)

end A219636

/-! ## A219636.P12458236382250417771

`comp[A276885(n+1)-2]`
-/

namespace A219636.P12458236382250417771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276885 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219636.P12458236382250417771

namespace A219636

/-- `comp[A276885(n+1)-2]` -/
def P12458236382250417771.Spec : Prop :=
  ∀ n, (P12458236382250417771.a n : ℤ) = A219636 (n + 1)

end A219636

/-! ## A219636.P3031928738962894102

`comp[A002251(n+1)+n]`
-/

namespace A219636.P3031928738962894102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002251 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219636.P3031928738962894102

namespace A219636

/-- `comp[A002251(n+1)+n]` -/
def P3031928738962894102.Spec : Prop :=
  ∀ n, (P3031928738962894102.a n : ℤ) = A219636 (n + 1)

end A219636

/-! ## A219636.P18179777118582334210

`comp[A283233(n+1)+n]`
-/

namespace A219636.P18179777118582334210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283233 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219636.P18179777118582334210

namespace A219636

/-- `comp[A283233(n+1)+n]` -/
def P18179777118582334210.Spec : Prop :=
  ∀ n, (P18179777118582334210.a n : ℤ) = A219636 (n + 1)

end A219636

/-! ## A219636.P10905018749847346069

`A287723(n+1)-(n+2)`
-/

namespace A219636.P10905018749847346069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287723 (n + 1) - (n + 2 : ℤ)

end

end A219636.P10905018749847346069

namespace A219636

/-- `A287723(n+1)-(n+2)` -/
def P10905018749847346069.Spec : Prop :=
  ∀ n, P10905018749847346069.a n = A219636 (n + 1)

theorem P10905018749847346069.correct : P10905018749847346069.Spec := by
  intro n
  simp only [A219636, Nat.add_sub_cancel, A219636.P10905018749847346069.a, A219636.P17854170644708396736.a, A287723, A287723.P11608785159484584755.f1, A287723.P11608785159484584755.a, A307295, A307295.P4534131516467912471.a, A001468, A001468.P12360075344960480253.a, A142150, A142150.P17187063318547882225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219636

/-! ## A219636.P17981320827412060144

`comp[A188434(n+1)-2]-1`
-/

namespace A219636.P17981320827412060144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188434 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A219636.P17981320827412060144

namespace A219636

/-- `comp[A188434(n+1)-2]-1` -/
def P17981320827412060144.Spec : Prop :=
  ∀ n, P17981320827412060144.a n = A219636 (n + 1)

end A219636

/-! ## A219636.P17075141642338958437

`comp[2*A000201(n+1)+n]`
-/

namespace A219636.P17075141642338958437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000201 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219636.P17075141642338958437

namespace A219636

/-- `comp[2*A000201(n+1)+n]` -/
def P17075141642338958437.Spec : Prop :=
  ∀ n, (P17075141642338958437.a n : ℤ) = A219636 (n + 1)

end A219636

/-! ## A219636.P12288425311998996323

`comp[2*A003622(n+1)-n]`
-/

namespace A219636.P12288425311998996323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003622 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219636.P12288425311998996323

namespace A219636

/-- `comp[2*A003622(n+1)-n]` -/
def P12288425311998996323.Spec : Prop :=
  ∀ n, (P12288425311998996323.a n : ℤ) = A219636 (n + 1)

end A219636

/-!
# A219637: Numbers that occur twice in A219641.

The programs for A219637, the canonical program `A219637.P9877023548532234555` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219637 has offset 1).

The definition of A219637 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219637.P4663925054585787348

`A219640(n)+n`
-/

namespace A219637.P4663925054585787348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 n + (n : ℤ)

end

end A219637.P4663925054585787348

namespace A219637

/-- `A219640(n)+n` -/
def P4663925054585787348.Spec : Prop :=
  ∀ n, P4663925054585787348.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P13814817517951291347

`comp[A219638(n+1)]+n`
-/

namespace A219637.P13814817517951291347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + n

end

end A219637.P13814817517951291347

namespace A219637

/-- `comp[A219638(n+1)]+n` -/
def P13814817517951291347.Spec : Prop :=
  ∀ n, (P13814817517951291347.a n : ℤ) = A219637 (n + 1)

end A219637

/-! ## A219637.P4190674134072362357

`A219641(n)+floor(ϕ*(n+1))-1`
-/

namespace A219637.P4190674134072362357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + (⌊Real.goldenRatio * (n + 1 : ℝ)⌋ - 1)

end

end A219637.P4190674134072362357

namespace A219637

/-- `A219641(n)+floor(ϕ*(n+1))-1` -/
def P4190674134072362357.Spec : Prop :=
  ∀ n, P4190674134072362357.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P3457123521381143703

`A005206(n)+A219641(n)+n`
-/

namespace A219637.P3457123521381143703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n + (A219641 n + (n : ℤ))

end

end A219637.P3457123521381143703

namespace A219637

/-- `A005206(n)+A219641(n)+n` -/
def P3457123521381143703.Spec : Prop :=
  ∀ n, P3457123521381143703.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P16577566685062014164

`A058065(n)+n-A213911(n)`
-/

namespace A219637.P16577566685062014164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 n + ((n : ℤ) - A213911 n)

end

end A219637.P16577566685062014164

namespace A219637

/-- `A058065(n)+n-A213911(n)` -/
def P16577566685062014164.Spec : Prop :=
  ∀ n, P16577566685062014164.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P2587086802038022376

`∑[A261095(n)]+n-A261095(n)`
-/

namespace A219637.P2587086802038022376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - A261095 n)

end

end A219637.P2587086802038022376

namespace A219637

/-- `∑[A261095(n)]+n-A261095(n)` -/
def P2587086802038022376.Spec : Prop :=
  ∀ n, P2587086802038022376.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P15561627620508668765

`A003622(n+1)-(A007895(n)+1)`
-/

namespace A219637.P15561627620508668765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) - (A007895 n + 1)

end

end A219637.P15561627620508668765

namespace A219637

/-- `A003622(n+1)-(A007895(n)+1)` -/
def P15561627620508668765.Spec : Prop :=
  ∀ n, P15561627620508668765.a n = A219637 (n + 1)

theorem P15561627620508668765.correct : P15561627620508668765.Spec := by
  intro n
  simp only [A219637, Nat.add_sub_cancel, A219637.P15561627620508668765.a, A219637.P9877023548532234555.a, A003622, A003622.P18369330713868503528.a, A007895, A007895.P13159574906702943091.a, A143299, A143299.P15563677956109418683.a, A000201, A000201.P2935798382643029248.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219637

/-! ## A219637.P9877023548532234555

`A003622(n+1)-A143299(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A219637

/-- `A003622(n+1)-A143299(n+1)` -/
def P9877023548532234555.Spec : Prop :=
  ∀ n, P9877023548532234555.a n = A219637 (n + 1)

theorem P9877023548532234555.correct : P9877023548532234555.Spec := by
  intro n
  simp only [A219637, Nat.add_sub_cancel]

end A219637

/-! ## A219637.P17776770495362261722

`A219639(n+1)-A000201(n+1)`
-/

namespace A219637.P17776770495362261722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219639 (n + 1) - A000201 (n + 1)

end

end A219637.P17776770495362261722

namespace A219637

/-- `A219639(n+1)-A000201(n+1)` -/
def P17776770495362261722.Spec : Prop :=
  ∀ n, P17776770495362261722.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P1231589752427709656

`A219639(n+1)-A066096(n+1)`
-/

namespace A219637.P1231589752427709656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219639 (n + 1) - A066096 (n + 1)

end

end A219637.P1231589752427709656

namespace A219637

/-- `A219639(n+1)-A066096(n+1)` -/
def P1231589752427709656.Spec : Prop :=
  ∀ n, P1231589752427709656.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P15937655142396591894

`A001950(n+1)-(A007895(n)+2)`
-/

namespace A219637.P15937655142396591894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) - (A007895 n + 2)

end

end A219637.P15937655142396591894

namespace A219637

/-- `A001950(n+1)-(A007895(n)+2)` -/
def P15937655142396591894.Spec : Prop :=
  ∀ n, P15937655142396591894.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P730512890476607151

`A022342(n+1)+n-A007895(n)`
-/

namespace A219637.P730512890476607151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1) + ((n : ℤ) - A007895 n)

end

end A219637.P730512890476607151

namespace A219637

/-- `A022342(n+1)+n-A007895(n)` -/
def P730512890476607151.Spec : Prop :=
  ∀ n, P730512890476607151.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P16241173637663045112

`A219639(n+1)-(A022342(n+1)+1)`
-/

namespace A219637.P16241173637663045112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219639 (n + 1) - (A022342 (n + 1) + 1)

end

end A219637.P16241173637663045112

namespace A219637

/-- `A219639(n+1)-(A022342(n+1)+1)` -/
def P16241173637663045112.Spec : Prop :=
  ∀ n, P16241173637663045112.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P18176760374910403530

`A000201(n+1)-A143299(n+1)+n`
-/

namespace A219637.P18176760374910403530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - A143299 (n + 1) + (n : ℤ)

end

end A219637.P18176760374910403530

namespace A219637

/-- `A000201(n+1)-A143299(n+1)+n` -/
def P18176760374910403530.Spec : Prop :=
  ∀ n, P18176760374910403530.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P785851749474986476

`A219639(n+1)-A003622(n+1)+n`
-/

namespace A219637.P785851749474986476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219639 (n + 1) - A003622 (n + 1) + (n : ℤ)

end

end A219637.P785851749474986476

namespace A219637

/-- `A219639(n+1)-A003622(n+1)+n` -/
def P785851749474986476.Spec : Prop :=
  ∀ n, P785851749474986476.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P1865250111947633669

`A035336(n+1)+A219641(n)-A001950(n+1)`
-/

namespace A219637.P1865250111947633669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) + (A219641 n - A001950 (n + 1))

end

end A219637.P1865250111947633669

namespace A219637

/-- `A035336(n+1)+A219641(n)-A001950(n+1)` -/
def P1865250111947633669.Spec : Prop :=
  ∀ n, P1865250111947633669.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P5625708526509676922

`record[A261094(n)+n]`
-/

namespace A219637.P5625708526509676922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219637.P5625708526509676922

namespace A219637

/-- `record[A261094(n)+n]` -/
def P5625708526509676922.Spec : Prop :=
  ∀ n, P5625708526509676922.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P15770418887392876930

`A219640(n-(A219641(n)-A219640(n)))`
-/

namespace A219637.P15770418887392876930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 ((n : ℤ) - (A219641 n - A219640 n)).toNat

end

end A219637.P15770418887392876930

namespace A219637

/-- `A219640(n-(A219641(n)-A219640(n)))` -/
def P15770418887392876930.Spec : Prop :=
  ∀ n, P15770418887392876930.a n = A219637 (n + 1)

end A219637

/-! ## A219637.P727510749330415554

`eq[A000038(n), A000038(A261094(n))]+n`
-/

namespace A219637.P727510749330415554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A261094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + n

end

end A219637.P727510749330415554

namespace A219637

/-- `eq[A000038(n), A000038(A261094(n))]+n` -/
def P727510749330415554.Spec : Prop :=
  ∀ n, (P727510749330415554.a n : ℤ) = A219637 (n + 1)

end A219637

/-!
# A219638: Complement of A219640. Natural numbers that do not occur in A219641.

The programs for A219638, the canonical program `A219638.P10933090665757419275` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219638 has offset 1).

The definition of A219638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219638.P10933090665757419275

`comp[n-ceil(A104324(n)/2)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A219638

/-- `comp[n-ceil(A104324(n)/2)]` -/
def P10933090665757419275.Spec : Prop :=
  ∀ n, (P10933090665757419275.a n : ℤ) = A219638 (n + 1)

theorem P10933090665757419275.correct : P10933090665757419275.Spec := by
  intro n
  simp only [A219638, Nat.add_sub_cancel]

end A219638

/-! ## A219638.P1203674245490144718

`comp[n-A004526(A104324(n)+1)]`
-/

namespace A219638.P1203674245490144718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 (A104324 n + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219638.P1203674245490144718

namespace A219638

/-- `comp[n-A004526(A104324(n)+1)]` -/
def P1203674245490144718.Spec : Prop :=
  ∀ n, (P1203674245490144718.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P8430205613904300234

`comp[A219640(n)]`
-/

namespace A219638.P8430205613904300234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219638.P8430205613904300234

namespace A219638

/-- `comp[A219640(n)]` -/
def P8430205613904300234.Spec : Prop :=
  ∀ n, (P8430205613904300234.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P14103180496394193438

`lt[A261094(n)², n]`
-/

namespace A219638.P14103180496394193438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A219638.P14103180496394193438

namespace A219638

/-- `lt[A261094(n)², n]` -/
def P14103180496394193438.Spec : Prop :=
  ∀ n, (P14103180496394193438.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P13776360599017224186

`eq[A001223(n+1)%2, A261094(n)]`
-/

namespace A219638.P13776360599017224186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001223 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219638.P13776360599017224186

namespace A219638

/-- `eq[A001223(n+1)%2, A261094(n)]` -/
def P13776360599017224186.Spec : Prop :=
  ∀ n, (P13776360599017224186.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P15399338326599241001

`eq[A000038(n), A261094(n)]`
-/

namespace A219638.P15399338326599241001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219638.P15399338326599241001

namespace A219638

/-- `eq[A000038(n), A261094(n)]` -/
def P15399338326599241001.Spec : Prop :=
  ∀ n, (P15399338326599241001.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P18105185364064149803

`eq[floor(1/A158660(n)), A261094(n)]`
-/

namespace A219638.P18105185364064149803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A158660 n : ℚ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219638.P18105185364064149803

namespace A219638

/-- `eq[floor(1/A158660(n)), A261094(n)]` -/
def P18105185364064149803.Spec : Prop :=
  ∀ n, (P18105185364064149803.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P15584045984191912158

`eq[3, A004743(n+1)%4]`
-/

namespace A219638.P15584045984191912158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004743 (n + 1)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219638.P15584045984191912158

namespace A219638

/-- `eq[3, A004743(n+1)%4]` -/
def P15584045984191912158.Spec : Prop :=
  ∀ n, (P15584045984191912158.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P8098263469683794857

`eq[A000007(n), A261094(n)]`
-/

namespace A219638.P8098263469683794857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219638.P8098263469683794857

namespace A219638

/-- `eq[A000007(n), A261094(n)]` -/
def P8098263469683794857.Spec : Prop :=
  ∀ n, (P8098263469683794857.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P16206992793894605356

`eq[A130706(n), A261094(n)]`
-/

namespace A219638.P16206992793894605356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219638.P16206992793894605356

namespace A219638

/-- `eq[A130706(n), A261094(n)]` -/
def P16206992793894605356.Spec : Prop :=
  ∀ n, (P16206992793894605356.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P4889986553589403959

`eq[A130713(n), A261094(n)]`
-/

namespace A219638.P4889986553589403959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219638.P4889986553589403959

namespace A219638

/-- `eq[A130713(n), A261094(n)]` -/
def P4889986553589403959.Spec : Prop :=
  ∀ n, (P4889986553589403959.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P5939596298138027270

`eq[A166926(n), A261094(n)]`
-/

namespace A219638.P5939596298138027270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166926 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219638.P5939596298138027270

namespace A219638

/-- `eq[A166926(n), A261094(n)]` -/
def P5939596298138027270.Spec : Prop :=
  ∀ n, (P5939596298138027270.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P17175768147474295857

`eq[A169585(n), A261094(n)]`
-/

namespace A219638.P17175768147474295857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169585 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219638.P17175768147474295857

namespace A219638

/-- `eq[A169585(n), A261094(n)]` -/
def P17175768147474295857.Spec : Prop :=
  ∀ n, (P17175768147474295857.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P7559774779661606517

`eq[A261094(n), A263013(n)]`
-/

namespace A219638.P7559774779661606517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263013 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219638.P7559774779661606517

namespace A219638

/-- `eq[A261094(n), A263013(n)]` -/
def P7559774779661606517.Spec : Prop :=
  ∀ n, (P7559774779661606517.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P1826199024256906013

`eq[A154272(n+1), A261094(n)]`
-/

namespace A219638.P1826199024256906013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154272 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219638.P1826199024256906013

namespace A219638

/-- `eq[A154272(n+1), A261094(n)]` -/
def P1826199024256906013.Spec : Prop :=
  ∀ n, (P1826199024256906013.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P12809646662600799301

`eq[A154955(n+1), A261094(n)]`
-/

namespace A219638.P12809646662600799301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219638.P12809646662600799301

namespace A219638

/-- `eq[A154955(n+1), A261094(n)]` -/
def P12809646662600799301.Spec : Prop :=
  ∀ n, (P12809646662600799301.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P9649084169028022292

`eq[A173012(n+1), A261094(n)]`
-/

namespace A219638.P9649084169028022292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219638.P9649084169028022292

namespace A219638

/-- `eq[A173012(n+1), A261094(n)]` -/
def P9649084169028022292.Spec : Prop :=
  ∀ n, (P9649084169028022292.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P1839964153297919453

`eq[A185906(n+1), A261094(n)]`
-/

namespace A219638.P1839964153297919453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219638.P1839964153297919453

namespace A219638

/-- `eq[A185906(n+1), A261094(n)]` -/
def P1839964153297919453.Spec : Prop :=
  ∀ n, (P1839964153297919453.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P17203060380360130661

`eq[A237836(n+1)%2, A261094(n)]`
-/

namespace A219638.P17203060380360130661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A237836 (n + 1)) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219638.P17203060380360130661

namespace A219638

/-- `eq[A237836(n+1)%2, A261094(n)]` -/
def P17203060380360130661.Spec : Prop :=
  ∀ n, (P17203060380360130661.a n : ℤ) = A219638 (n + 1)

end A219638

/-! ## A219638.P16129861782496791296

`eq[1, Δ[A283794(n+1)]]`
-/

namespace A219638.P16129861782496791296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283794 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219638.P16129861782496791296

namespace A219638

/-- `eq[1, Δ[A283794(n+1)]]` -/
def P16129861782496791296.Spec : Prop :=
  ∀ n, (P16129861782496791296.a n : ℤ) = A219638 (n + 1)

end A219638

/-!
# A219639: Numbers that occur only once in A219641.

The programs for A219639, the canonical program `A219639.P7622676545603227676` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219639 has offset 1).

The definition of A219639 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219641, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219639.P7622676545603227676

`A219641(A035336(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A219639

/-- `A219641(A035336(n+1))` -/
def P7622676545603227676.Spec : Prop :=
  ∀ n, P7622676545603227676.a n = A219639 (n + 1)

theorem P7622676545603227676.correct : P7622676545603227676.Spec := by
  intro n
  simp only [A219639, Nat.add_sub_cancel]

end A219639

/-! ## A219639.P9971156757309132578

`A219640(n)+A003622(n+1)`
-/

namespace A219639.P9971156757309132578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 n + A003622 (n + 1)

end

end A219639.P9971156757309132578

namespace A219639

/-- `A219640(n)+A003622(n+1)` -/
def P9971156757309132578.Spec : Prop :=
  ∀ n, P9971156757309132578.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P9422390838798959440

`A219641(n)+A075317(n+1)`
-/

namespace A219639.P9422390838798959440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + A075317 (n + 1)

end

end A219639.P9422390838798959440

namespace A219639

/-- `A219641(n)+A075317(n+1)` -/
def P9422390838798959440.Spec : Prop :=
  ∀ n, P9422390838798959440.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P1245357924043333157

`A134859(n+1)-A007895(n)`
-/

namespace A219639.P1245357924043333157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134859 (n + 1) - A007895 n

end

end A219639.P1245357924043333157

namespace A219639

/-- `A134859(n+1)-A007895(n)` -/
def P1245357924043333157.Spec : Prop :=
  ∀ n, P1245357924043333157.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P8500677677697828211

`A219637(n+1)+A000201(n+1)`
-/

namespace A219639.P8500677677697828211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219637 (n + 1) + A000201 (n + 1)

end

end A219639.P8500677677697828211

namespace A219639

/-- `A219637(n+1)+A000201(n+1)` -/
def P8500677677697828211.Spec : Prop :=
  ∀ n, P8500677677697828211.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P8476739765118348045

`A219637(n+1)+A066096(n+1)`
-/

namespace A219639.P8476739765118348045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219637 (n + 1) + A066096 (n + 1)

end

end A219639.P8476739765118348045

namespace A219639

/-- `A219637(n+1)+A066096(n+1)` -/
def P8476739765118348045.Spec : Prop :=
  ∀ n, P8476739765118348045.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P6988344333368588495

`A035336(n+1)-A143299(n+1)`
-/

namespace A219639.P6988344333368588495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035336 (n + 1) - A143299 (n + 1)

end

end A219639.P6988344333368588495

namespace A219639

/-- `A035336(n+1)-A143299(n+1)` -/
def P6988344333368588495.Spec : Prop :=
  ∀ n, P6988344333368588495.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P5475871080342966152

`A000201(n+1)+A219640(n)+n`
-/

namespace A219639.P5475871080342966152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) + (A219640 n + (n : ℤ))

end

end A219639.P5475871080342966152

namespace A219639

/-- `A000201(n+1)+A219640(n)+n` -/
def P5475871080342966152.Spec : Prop :=
  ∀ n, P5475871080342966152.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P14072991079669866162

`A022342(n+1)+A219637(n+1)+1`
-/

namespace A219639.P14072991079669866162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1) + (A219637 (n + 1) + 1)

end

end A219639.P14072991079669866162

namespace A219639

/-- `A022342(n+1)+A219637(n+1)+1` -/
def P14072991079669866162.Spec : Prop :=
  ∀ n, P14072991079669866162.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P8580761584856112526

`A003622(n+1)+A219637(n+1)-n`
-/

namespace A219639.P8580761584856112526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + (A219637 (n + 1) - (n : ℤ))

end

end A219639.P8580761584856112526

namespace A219639

/-- `A003622(n+1)+A219637(n+1)-n` -/
def P8580761584856112526.Spec : Prop :=
  ∀ n, P8580761584856112526.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P3027215218167517425

`A003622(A003622(n+1)-n)-A007895(n)`
-/

namespace A219639.P3027215218167517425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (A003622 (n + 1) - (n : ℤ)).toNat - A007895 n

end

end A219639.P3027215218167517425

namespace A219639

/-- `A003622(A003622(n+1)-n)-A007895(n)` -/
def P3027215218167517425.Spec : Prop :=
  ∀ n, P3027215218167517425.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P45712020829987479

`A003622(n+1)+A219641(n)+A060143(n+1)`
-/

namespace A219639.P45712020829987479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) + (A219641 n + A060143 (n + 1))

end

end A219639.P45712020829987479

namespace A219639

/-- `A003622(n+1)+A219641(n)+A060143(n+1)` -/
def P45712020829987479.Spec : Prop :=
  ∀ n, P45712020829987479.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P8382154345123497742

`A022342(n+1)+A219641(n)+A066096(n+1)`
-/

namespace A219639.P8382154345123497742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1) + (A219641 n + A066096 (n + 1))

end

end A219639.P8382154345123497742

namespace A219639

/-- `A022342(n+1)+A219641(n)+A066096(n+1)` -/
def P8382154345123497742.Spec : Prop :=
  ∀ n, P8382154345123497742.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P3861146207819254959

`A219637(A000201(n+1))+1`
-/

namespace A219639.P3861146207819254959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219637 (A000201 (n + 1)).toNat + 1

end

end A219639.P3861146207819254959

namespace A219639

/-- `A219637(A000201(n+1))+1` -/
def P3861146207819254959.Spec : Prop :=
  ∀ n, P3861146207819254959.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P17909228698332664235

`A219637(A066096(n+1))+1`
-/

namespace A219639.P17909228698332664235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219637 (A066096 (n + 1)).toNat + 1

end

end A219639.P17909228698332664235

namespace A219639

/-- `A219637(A066096(n+1))+1` -/
def P17909228698332664235.Spec : Prop :=
  ∀ n, P17909228698332664235.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P9934269460571168984

`A219637(A022342(n+1)+1)+1`
-/

namespace A219639.P9934269460571168984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219637 (A022342 (n + 1) + 1).toNat + 1

end

end A219639.P9934269460571168984

namespace A219639

/-- `A219637(A022342(n+1)+1)+1` -/
def P9934269460571168984.Spec : Prop :=
  ∀ n, P9934269460571168984.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P13220889604286689552

`A219637(A003622(n+1)-n)+1`
-/

namespace A219639.P13220889604286689552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219637 (A003622 (n + 1) - (n : ℤ)).toNat + 1

end

end A219639.P13220889604286689552

namespace A219639

/-- `A219637(A003622(n+1)-n)+1` -/
def P13220889604286689552.Spec : Prop :=
  ∀ n, P13220889604286689552.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P4693725091435063951

`A219640(n)+A000201(A000201(n+1))`
-/

namespace A219639.P4693725091435063951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 n + A000201 (A000201 (n + 1)).toNat

end

end A219639.P4693725091435063951

namespace A219639

/-- `A219640(n)+A000201(A000201(n+1))` -/
def P4693725091435063951.Spec : Prop :=
  ∀ n, P4693725091435063951.a n = A219639 (n + 1)

end A219639

/-! ## A219639.P7249173581205678044

`A219640(comp[ceil((n+1)/ϕ+n-1)])`
-/

namespace A219639.P7249173581205678044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio + ((n : ℤ) - 1 : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A219639.P7249173581205678044

namespace A219639

/-- `A219640(comp[ceil((n+1)/ϕ+n-1)])` -/
def P7249173581205678044.Spec : Prop :=
  ∀ n, P7249173581205678044.a n = A219639 (n + 1)

end A219639

/-!
# A219640: Numbers m for which there exists k such that m = k - (number of 1's in Zeckendorf expansion of k); distinct values in A219641.

The programs for A219640, the canonical program `A219640.P16398760893083071170` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219640 has offset 0).

The definition of A219640 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219641, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219640.P16398760893083071170

`A219641(A022342(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A219640

/-- `A219641(A022342(n+1))` -/
def P16398760893083071170.Spec : Prop :=
  ∀ n, P16398760893083071170.a n = A219640 n

theorem P16398760893083071170.correct : P16398760893083071170.Spec := by
  intro n
  simp only [A219640]

end A219640

/-! ## A219640.P14822028732847778410

`comp[A219638(n+1)]`
-/

namespace A219640.P14822028732847778410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219640.P14822028732847778410

namespace A219640

/-- `comp[A219638(n+1)]` -/
def P14822028732847778410.Spec : Prop :=
  ∀ n, (P14822028732847778410.a n : ℤ) = A219640 n

end A219640

/-! ## A219640.P14408882551635355165

`A219637(n+1)-n`
-/

namespace A219640.P14408882551635355165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219637 (n + 1) - (n : ℤ)

end

end A219640.P14408882551635355165

namespace A219640

/-- `A219637(n+1)-n` -/
def P14408882551635355165.Spec : Prop :=
  ∀ n, P14408882551635355165.a n = A219640 n

end A219640

/-! ## A219640.P15421645035163847786

`A219641(n)+A005206(n)`
-/

namespace A219640.P15421645035163847786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + A005206 n

end

end A219640.P15421645035163847786

namespace A219640

/-- `A219641(n)+A005206(n)` -/
def P15421645035163847786.Spec : Prop :=
  ∀ n, P15421645035163847786.a n = A219640 n

end A219640

/-! ## A219640.P16880388603255881403

`A058065(n)-A213911(n)`
-/

namespace A219640.P16880388603255881403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058065 n - A213911 n

end

end A219640.P16880388603255881403

namespace A219640

/-- `A058065(n)-A213911(n)` -/
def P16880388603255881403.Spec : Prop :=
  ∀ n, P16880388603255881403.a n = A219640 n

end A219640

/-! ## A219640.P9968666778569454984

`∑[A261095(n)]-A261095(n)`
-/

namespace A219640.P9968666778569454984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261095 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A261095 n

end

end A219640.P9968666778569454984

namespace A219640

/-- `∑[A261095(n)]-A261095(n)` -/
def P9968666778569454984.Spec : Prop :=
  ∀ n, P9968666778569454984.a n = A219640 n

end A219640

/-! ## A219640.P1638487823613105846

`A219641(n)+A060143(n+1)`
-/

namespace A219640.P1638487823613105846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + A060143 (n + 1)

end

end A219640.P1638487823613105846

namespace A219640

/-- `A219641(n)+A060143(n+1)` -/
def P1638487823613105846.Spec : Prop :=
  ∀ n, P1638487823613105846.a n = A219640 n

end A219640

/-! ## A219640.P17707661486626573436

`A022342(n+1)-A007895(n)`
-/

namespace A219640.P17707661486626573436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 1) - A007895 n

end

end A219640.P17707661486626573436

namespace A219640

/-- `A022342(n+1)-A007895(n)` -/
def P17707661486626573436.Spec : Prop :=
  ∀ n, P17707661486626573436.a n = A219640 n

end A219640

/-! ## A219640.P8432011612494999073

`A005206(n)+n-A007895(n)`
-/

namespace A219640.P8432011612494999073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n + ((n : ℤ) - A007895 n)

end

end A219640.P8432011612494999073

namespace A219640

/-- `A005206(n)+n-A007895(n)` -/
def P8432011612494999073.Spec : Prop :=
  ∀ n, P8432011612494999073.a n = A219640 n

end A219640

/-! ## A219640.P3592082837125955643

`A000201(n+1)-(A007895(n)+1)`
-/

namespace A219640.P3592082837125955643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - (A007895 n + 1)

end

end A219640.P3592082837125955643

namespace A219640

/-- `A000201(n+1)-(A007895(n)+1)` -/
def P3592082837125955643.Spec : Prop :=
  ∀ n, P3592082837125955643.a n = A219640 n

end A219640

/-! ## A219640.P1698138761265512744

`A000201(n+1)-A143299(n+1)`
-/

namespace A219640.P1698138761265512744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 1) - A143299 (n + 1)

end

end A219640.P1698138761265512744

namespace A219640

/-- `A000201(n+1)-A143299(n+1)` -/
def P1698138761265512744.Spec : Prop :=
  ∀ n, P1698138761265512744.a n = A219640 n

end A219640

/-! ## A219640.P3862228640395651075

`A219639(n+1)-A003622(n+1)`
-/

namespace A219640.P3862228640395651075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219639 (n + 1) - A003622 (n + 1)

end

end A219640.P3862228640395651075

namespace A219640

/-- `A219639(n+1)-A003622(n+1)` -/
def P3862228640395651075.Spec : Prop :=
  ∀ n, P3862228640395651075.a n = A219640 n

end A219640

/-! ## A219640.P10696666816695082677

`∪[A219637(n+1), A219639(n+1)]`
-/

namespace A219640.P10696666816695082677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219637 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219639 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A219640.P10696666816695082677

namespace A219640

/-- `∪[A219637(n+1), A219639(n+1)]` -/
def P10696666816695082677.Spec : Prop :=
  ∀ n, (P10696666816695082677.a n : ℤ) = A219640 n

end A219640

/-! ## A219640.P7155002787307875666

`A003622(n+1)-(A143299(n+1)+n)`
-/

namespace A219640.P7155002787307875666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 1) - (A143299 (n + 1) + (n : ℤ))

end

end A219640.P7155002787307875666

namespace A219640

/-- `A003622(n+1)-(A143299(n+1)+n)` -/
def P7155002787307875666.Spec : Prop :=
  ∀ n, P7155002787307875666.a n = A219640 n

end A219640

/-! ## A219640.P3583152652835220836

`A219639(n+1)-(A000201(n+1)+n)`
-/

namespace A219640.P3583152652835220836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219639 (n + 1) - (A000201 (n + 1) + (n : ℤ))

end

end A219640.P3583152652835220836

namespace A219640

/-- `A219639(n+1)-(A000201(n+1)+n)` -/
def P3583152652835220836.Spec : Prop :=
  ∀ n, P3583152652835220836.a n = A219640 n

end A219640

/-! ## A219640.P12234240585153009242

`record[A261094(n)+n]-n`
-/

namespace A219640.P12234240585153009242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261094 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A219640.P12234240585153009242

namespace A219640

/-- `record[A261094(n)+n]-n` -/
def P12234240585153009242.Spec : Prop :=
  ∀ n, P12234240585153009242.a n = A219640 n

end A219640

/-! ## A219640.P6102062361183834259

`eq[1, A005614(n)]-A007895(n)`
-/

namespace A219640.P6102062361183834259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A007895 n

end

end A219640.P6102062361183834259

namespace A219640

/-- `eq[1, A005614(n)]-A007895(n)` -/
def P6102062361183834259.Spec : Prop :=
  ∀ n, P6102062361183834259.a n = A219640 n

end A219640

/-! ## A219640.P16731948529310678278

`eq[A000007(n), A000007(A261094(n))]`
-/

namespace A219640.P16731948529310678278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A261094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219640.P16731948529310678278

namespace A219640

/-- `eq[A000007(n), A000007(A261094(n))]` -/
def P16731948529310678278.Spec : Prop :=
  ∀ n, (P16731948529310678278.a n : ℤ) = A219640 n

end A219640

/-! ## A219640.P6347922901189771349

`eq[A000038(n), A000038(A261094(n))]`
-/

namespace A219640.P6347922901189771349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A261094 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219640.P6347922901189771349

namespace A219640

/-- `eq[A000038(n), A000038(A261094(n))]` -/
def P6347922901189771349.Spec : Prop :=
  ∀ n, (P6347922901189771349.a n : ℤ) = A219640 n

end A219640

/-!
# A219641: a(n) = n minus (number of 1's in Zeckendorf expansion of n).

The programs for A219641, the canonical program `A219641.P1602393212941527080` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219641 has offset 0).

The definition of A219641 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007895, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219641.P1602393212941527080

`n-A007895(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A219641

/-- `n-A007895(n)` -/
def P1602393212941527080.Spec : Prop :=
  ∀ n, P1602393212941527080.a n = A219641 n

theorem P1602393212941527080.correct : P1602393212941527080.Spec := by
  intro n
  simp only [A219641]

end A219641

/-! ## A219641.P18425970584499542389

`n-dr(A014417(n))`
-/

namespace A219641.P18425970584499542389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (A014417 n) : ℤ)

end

end A219641.P18425970584499542389

namespace A219641

/-- `n-dr(A014417(n))` -/
def P18425970584499542389.Spec : Prop :=
  ∀ n, P18425970584499542389.a n = A219641 n

end A219641

/-! ## A219641.P12448738728107558264

`floor(n-A104324(n)/2)`
-/

namespace A219641.P12448738728107558264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) - (A104324 n : ℚ) / 2⌋

end

end A219641.P12448738728107558264

namespace A219641

/-- `floor(n-A104324(n)/2)` -/
def P12448738728107558264.Spec : Prop :=
  ∀ n, P12448738728107558264.a n = A219641 n

end A219641

/-! ## A219641.P1447770523032827484

`1-A143299(n+1)+n`
-/

namespace A219641.P1447770523032827484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A143299 (n + 1) + (n : ℤ)

end

end A219641.P1447770523032827484

namespace A219641

/-- `1-A143299(n+1)+n` -/
def P1447770523032827484.Spec : Prop :=
  ∀ n, P1447770523032827484.a n = A219641 n

theorem P1447770523032827484.correct : P1447770523032827484.Spec := by
  intro n
  simp only [A219641, Nat.add_sub_cancel, A219641.P1447770523032827484.a, A219641.P1602393212941527080.a, A007895, A007895.P13159574906702943091.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219641

/-! ## A219641.P18433987994470765809

`A288625(n+1)-(n+2)`
-/

namespace A219641.P18433987994470765809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288625 (n + 1) - (n + 2 : ℤ)

end

end A219641.P18433987994470765809

namespace A219641

/-- `A288625(n+1)-(n+2)` -/
def P18433987994470765809.Spec : Prop :=
  ∀ n, P18433987994470765809.a n = A219641 n

theorem P18433987994470765809.correct : P18433987994470765809.Spec := by
  intro n
  simp only [A219641, Nat.add_sub_cancel, A219641.P18433987994470765809.a, A219641.P1602393212941527080.a, A007895, A007895.P13159574906702943091.a, A288625, A288625.P5745602300368746224.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219641

/-! ## A219641.P14417456521291640315

`comp[A283794(n+1)-2]-n`
-/

namespace A219641.P14417456521291640315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283794 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A219641.P14417456521291640315

namespace A219641

/-- `comp[A283794(n+1)-2]-n` -/
def P14417456521291640315.Spec : Prop :=
  ∀ n, P14417456521291640315.a n = A219641 n

end A219641

/-! ## A219641.P7435334721780148889

`(A288930(n+1)-(n+2))/2`
-/

namespace A219641.P7435334721780148889
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288930 (n + 1) - (n + 2 : ℤ) : ℚ) / 2

end

end A219641.P7435334721780148889

namespace A219641

/-- `(A288930(n+1)-(n+2))/2` -/
def P7435334721780148889.Spec : Prop :=
  ∀ n, P7435334721780148889.a n = (A219641 n : ℚ)

theorem P7435334721780148889.correct : P7435334721780148889.Spec := by
  intro n
  simp only [A219641, Nat.add_sub_cancel, A219641.P7435334721780148889.a, A219641.P1602393212941527080.a, A007895, A007895.P13159574906702943091.a, A288930, A288930.P1598540981707641911.a, A143299, A143299.P15563677956109418683.a, A288625, A288625.P5745602300368746224.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219641

/-! ## A219641.P10122494824214149295

`A219640(A319433(n))`
-/

namespace A219641.P10122494824214149295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 (A319433 n).toNat

end

end A219641.P10122494824214149295

namespace A219641

/-- `A219640(A319433(n))` -/
def P10122494824214149295.Spec : Prop :=
  ∀ n, P10122494824214149295.a n = A219641 n

end A219641

/-! ## A219641.P7033533129486408757

`A220115(n)+A011371(n)`
-/

namespace A219641.P7033533129486408757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220115 n + A011371 n

end

end A219641.P7033533129486408757

namespace A219641

/-- `A220115(n)+A011371(n)` -/
def P7033533129486408757.Spec : Prop :=
  ∀ n, P7033533129486408757.a n = A219641 n

theorem P7033533129486408757.correct : P7033533129486408757.Spec := by
  intro n
  simp only [A219641, Nat.add_sub_cancel, A219641.P7033533129486408757.a, A219641.P1602393212941527080.a, A007895, A007895.P13159574906702943091.a, A011371, A011371.P12398255777927387864.a, A220115, A220115.P11390568708152913507.a, A000120, A000120.P2816527436160941581.a, A143299, A143299.P15563677956109418683.a, A005187, A005187.P3874015513960485494.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219641

/-! ## A219641.P4814063902062573914

`n-A110654(A104324(n))`
-/

namespace A219641.P4814063902062573914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A110654 (A104324 n).toNat

end

end A219641.P4814063902062573914

namespace A219641

/-- `n-A110654(A104324(n))` -/
def P4814063902062573914.Spec : Prop :=
  ∀ n, P4814063902062573914.a n = A219641 n

end A219641

/-! ## A219641.P11728854315130981420

`A219640(n)-A005206(n)`
-/

namespace A219641.P11728854315130981420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 n - A005206 n

end

end A219641.P11728854315130981420

namespace A219641

/-- `A219640(n)-A005206(n)` -/
def P11728854315130981420.Spec : Prop :=
  ∀ n, P11728854315130981420.a n = A219641 n

end A219641

/-! ## A219641.P1805076514217376917

`A219640(A058065(n)-n)`
-/

namespace A219641.P1805076514217376917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219640 (A058065 n - (n : ℤ)).toNat

end

end A219641.P1805076514217376917

namespace A219641

/-- `A219640(A058065(n)-n)` -/
def P1805076514217376917.Spec : Prop :=
  ∀ n, P1805076514217376917.a n = A219641 n

end A219641

/-! ## A219641.P10288826646642817916

`n-A004526(A104324(n)+1)`
-/

namespace A219641.P10288826646642817916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A004526 (A104324 n + 1).toNat

end

end A219641.P10288826646642817916

namespace A219641

/-- `n-A004526(A104324(n)+1)` -/
def P10288826646642817916.Spec : Prop :=
  ∀ n, P10288826646642817916.a n = A219641 n

end A219641

/-! ## A219641.P13722652241141052182

`A288625(n+1)%A057544(n)`
-/

namespace A219641.P13722652241141052182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288625 (n + 1)) (A057544 n)

end

end A219641.P13722652241141052182

namespace A219641

/-- `A288625(n+1)%A057544(n)` -/
def P13722652241141052182.Spec : Prop :=
  ∀ n, P13722652241141052182.a n = A219641 n

end A219641

/-! ## A219641.P4878067148143477730

`n-(A213911(n)+A003849(n))`
-/

namespace A219641.P4878067148143477730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A213911 n + A003849 n)

end

end A219641.P4878067148143477730

namespace A219641

/-- `n-(A213911(n)+A003849(n))` -/
def P4878067148143477730.Spec : Prop :=
  ∀ n, P4878067148143477730.a n = A219641 n

theorem P4878067148143477730.correct : P4878067148143477730.Spec := by
  intro n
  simp only [A219641, Nat.add_sub_cancel, A219641.P4878067148143477730.a, A219641.P1602393212941527080.a, A003849, A003849.P15070805603138295355.a, A007895, A007895.P13159574906702943091.a, A213911, A213911.P10704289243874186372.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219641

/-! ## A219641.P2488115725655344819

`A220115(n)+n-A000120(n)`
-/

namespace A219641.P2488115725655344819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220115 n + ((n : ℤ) - A000120 n)

end

end A219641.P2488115725655344819

namespace A219641

/-- `A220115(n)+n-A000120(n)` -/
def P2488115725655344819.Spec : Prop :=
  ∀ n, P2488115725655344819.a n = A219641 n

theorem P2488115725655344819.correct : P2488115725655344819.Spec := by
  intro n
  simp only [A219641, Nat.add_sub_cancel, A219641.P2488115725655344819.a, A219641.P1602393212941527080.a, A000120, A000120.P2816527436160941581.a, A007895, A007895.P13159574906702943091.a, A220115, A220115.P11390568708152913507.a, A005187, A005187.P3874015513960485494.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, A003849, A003849.P15070805603138295355.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219641

/-! ## A219641.P6315941928339250176

`A213911(n)+n-A104324(n)`
-/

namespace A219641.P6315941928339250176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213911 n + ((n : ℤ) - A104324 n)

end

end A219641.P6315941928339250176

namespace A219641

/-- `A213911(n)+n-A104324(n)` -/
def P6315941928339250176.Spec : Prop :=
  ∀ n, P6315941928339250176.a n = A219641 n

theorem P6315941928339250176.correct : P6315941928339250176.Spec := by
  intro n
  simp only [A219641, Nat.add_sub_cancel, A219641.P6315941928339250176.a, A219641.P1602393212941527080.a, A007895, A007895.P13159574906702943091.a, A104324, A104324.P1859779613873930843.a, A213911, A213911.P10704289243874186372.a, A003849, A003849.P15070805603138295355.a, A143299, A143299.P15563677956109418683.a, A066628, A066628.P4571683134443220888.f1, A066628.P4571683134443220888.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219641

/-! ## A219641.P1273873284766069519

`A219637(n+1)-A022342(n+1)`
-/

namespace A219641.P1273873284766069519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219637 (n + 1) - A022342 (n + 1)

end

end A219641.P1273873284766069519

namespace A219641

/-- `A219637(n+1)-A022342(n+1)` -/
def P1273873284766069519.Spec : Prop :=
  ∀ n, P1273873284766069519.a n = A219641 n

end A219641

/-! ## A219641.P13024211072086948138

`A219639(n+1)%A075317(n+1)`
-/

namespace A219641.P13024211072086948138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219639 (n + 1)) (A075317 (n + 1))

end

end A219641.P13024211072086948138

namespace A219641

/-- `A219639(n+1)%A075317(n+1)` -/
def P13024211072086948138.Spec : Prop :=
  ∀ n, P13024211072086948138.a n = A219641 n

end A219641

/-! ## A219641.P1894566945586484643

`A288930(n+1)%A288625(n+1)`
-/

namespace A219641.P1894566945586484643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A288930 (n + 1)) (A288625 (n + 1))

end

end A219641.P1894566945586484643

namespace A219641

/-- `A288930(n+1)%A288625(n+1)` -/
def P1894566945586484643.Spec : Prop :=
  ∀ n, P1894566945586484643.a n = A219641 n

end A219641

/-!
# A219642: Number of steps to reach 0 starting with n and using the iterated process: x -> x - (number of 1's in Zeckendorf expansion of x).

The programs for A219642, the canonical program `A219642.P8698780994322484832` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219642 has offset 0).

The definition of A219642 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219641, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219642.P8698780994322484832

`1+a(A219641(n))` with `a(0)=0`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A219642

/-- `1+a(A219641(n))` -/
def P8698780994322484832.Spec : Prop :=
  ∀ n, (P8698780994322484832.a n : ℤ) = A219642 n

theorem P8698780994322484832.correct : P8698780994322484832.Spec := by
  intro n
  simp only [A219642]

end A219642

/-! ## A219642.P17591358071679778273

`∑[char[∑[A219644(n)]]]`
-/

namespace A219642.P17591358071679778273
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219642.P17591358071679778273

namespace A219642

/-- `∑[char[∑[A219644(n)]]]` -/
def P17591358071679778273.Spec : Prop :=
  ∀ n, (P17591358071679778273.a n : ℤ) = A219642 n

end A219642

/-! ## A219642.P7484141431556892936

`∑[char[A219643(1+n)]]`
-/

namespace A219642.P7484141431556892936
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219643 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219642.P7484141431556892936

namespace A219642

/-- `∑[char[A219643(1+n)]]` -/
def P7484141431556892936.Spec : Prop :=
  ∀ n, (P7484141431556892936.a n : ℤ) = A219642 n

end A219642

/-! ## A219642.P4408471505706013673

`∑[char[A219645(n)+1]]`
-/

namespace A219642.P4408471505706013673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219645 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219642.P4408471505706013673

namespace A219642

/-- `∑[char[A219645(n)+1]]` -/
def P4408471505706013673.Spec : Prop :=
  ∀ n, (P4408471505706013673.a n : ℤ) = A219642 n

end A219642

/-! ## A219642.P3093494766927344118

`∑[char[A219643(n)]]-1`
-/

namespace A219642.P3093494766927344118
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219643 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A219642.P3093494766927344118

namespace A219642

/-- `∑[char[A219643(n)]]-1` -/
def P3093494766927344118.Spec : Prop :=
  ∀ n, P3093494766927344118.a n = A219642 n

end A219642

/-! ## A219642.P14737650039869447665

`a(n-A007895(n))+1` with `a(0)=0`
-/

namespace A219642.P14737650039869447665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A007895 n).toNat + 1

end

end A219642.P14737650039869447665

namespace A219642

/-- `a(n-A007895(n))+1` -/
def P14737650039869447665.Spec : Prop :=
  ∀ n, (P14737650039869447665.a n : ℤ) = A219642 n

end A219642

/-!
# A219643: Least inverse of A219642; a(n) = minimal i such that A219642(i) = n.

The programs for A219643, there is no canonical definition to state claims against.
-/

/-! ## A219643.P16369828428774903256

`A219648(n)-A261083(n)`
-/

namespace A219643.P16369828428774903256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219648 n - A261083 n

end

end A219643.P16369828428774903256

/-! ## A219643.P2417848402695915056

`∑[A219644(n)]-A219644(n)`
-/

namespace A219643.P2417848402695915056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A219644 n

end

end A219643.P2417848402695915056

/-! ## A219643.P17118196038765787926

`A219645(n)+1-A219644(n)`
-/

namespace A219643.P17118196038765787926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219645 n + (1 - A219644 n)

end

end A219643.P17118196038765787926

/-! ## A219643.P6212694765414585565

`A219645(n)-A057890(A219644(n))`
-/

namespace A219643.P6212694765414585565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219645 n - A057890 (A219644 n).toNat

end

end A219643.P6212694765414585565

/-! ## A219643.P2925593406983065588

`A219645(n)-(A261084(n)+A261083(n))`
-/

namespace A219643.P2925593406983065588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219645 n - (A261084 n + A261083 n)

end

end A219643.P2925593406983065588

/-! ## A219643.P676583233496930847

`A261076(A261102(n))-A261083(n)`
-/

namespace A219643.P676583233496930847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261076 (A261102 n).toNat - A261083 n

end

end A219643.P676583233496930847

/-! ## A219643.P11494321514783929964

`A261076(A219642(A261076(n)))-A261083(n)`
-/

namespace A219643.P11494321514783929964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261076 (A219642 (A261076 n).toNat).toNat - A261083 n

end

end A219643.P11494321514783929964

/-!
# A219644: Run lengths in A219642.

The programs for A219644, there is no canonical definition to state claims against.
-/

/-! ## A219644.P8018616341850045605

`A219643(n+1)-A219643(n)`
-/

namespace A219644.P8018616341850045605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219643 (n + 1) - A219643 n

end

end A219644.P8018616341850045605

/-! ## A219644.P17144346605408699192

`Δ[A219643(n)]`
-/

namespace A219644.P17144346605408699192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219644.P17144346605408699192

/-! ## A219644.P6824783268767621871

`Δ[A219648(n)-A261083(n)]`
-/

namespace A219644.P6824783268767621871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219648 n - A261083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219644.P6824783268767621871

/-! ## A219644.P314583928543516191

`A261083(n)+A261084(n)+1`
-/

namespace A219644.P314583928543516191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261083 n + (A261084 n + 1)

end

end A219644.P314583928543516191

/-! ## A219644.P3657338315157624670

`1-(A219643(n)-A219645(n))`
-/

namespace A219644.P3657338315157624670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A219643 n - A219645 n)

end

end A219644.P3657338315157624670

/-! ## A219644.P7673314630212073155

`A296885(A219643(n+1)%(A219643(n)+1)+1)`
-/

namespace A219644.P7673314630212073155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296885 (Int.tmod (A219643 (n + 1)) (A219643 n + 1) + 1).toNat

end

end A219644.P7673314630212073155

/-! ## A219644.P16583016511933853115

`runs[A219642(n)]`
-/

namespace A219644.P16583016511933853115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A219644.P16583016511933853115

/-!
# A219645: Greatest inverse of A219642; a(n) = maximal i such that A219642(i) = n.

The programs for A219645, there is no canonical definition to state claims against.
-/

/-! ## A219645.P16329346543706237859

`A219643(n)+A219644(n)-1`
-/

namespace A219645.P16329346543706237859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219643 n + A219644 n - 1

end

end A219645.P16329346543706237859

/-! ## A219645.P10716197705185616486

`∑[A219644(n)]-1`
-/

namespace A219645.P10716197705185616486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219644 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A219645.P10716197705185616486

/-! ## A219645.P18335269382658920583

`A219643(n+1)-1`
-/

namespace A219645.P18335269382658920583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219643 (n + 1) - 1

end

end A219645.P18335269382658920583

/-! ## A219645.P13818173215082383856

`A261084(n)+A219648(n)`
-/

namespace A219645.P13818173215082383856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261084 n + A219648 n

end

end A219645.P13818173215082383856

/-! ## A219645.P591753089159397744

`∑[A219644(n)%A016813(n)]`
-/

namespace A219645.P591753089159397744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219644 n) (A016813 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219645.P591753089159397744

/-! ## A219645.P8985538569827934819

`A219648(n+1)-(A261083(n+1)+1)`
-/

namespace A219645.P8985538569827934819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219648 (n + 1) - (A261083 (n + 1) + 1)

end

end A219645.P8985538569827934819

/-! ## A219645.P9154448413644576703

`A261084(n)+A261083(n)+A219643(n)`
-/

namespace A219645.P9154448413644576703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261084 n + A261083 n + A219643 n

end

end A219645.P9154448413644576703

/-! ## A219645.P6986243617665438312

`A261084(n)+A261076(A261102(n))`
-/

namespace A219645.P6986243617665438312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261084 n + A261076 (A261102 n).toNat

end

end A219645.P6986243617665438312

/-! ## A219645.P15604522106827237428

`lt[0, Δ[A219642(n)]]`
-/

namespace A219645.P15604522106827237428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219645.P15604522106827237428

/-! ## A219645.P8780933080001302791

`A023443(A219643(n+1))`
-/

namespace A219645.P8780933080001302791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A219643 (n + 1)).toNat

end

end A219645.P8780933080001302791

/-!
# A219646: Partial sums of A219642.

The programs for A219646, the canonical program `A219646.P1459568560880754385` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219646 has offset 0).

The definition of A219646 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219646.P1459568560880754385

`∑[A219642(n)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A219646

/-- `∑[A219642(n)]` -/
def P1459568560880754385.Spec : Prop :=
  ∀ n, P1459568560880754385.a n = A219646 n

theorem P1459568560880754385.correct : P1459568560880754385.Spec := by
  intro n
  simp only [A219646]

end A219646

/-! ## A219646.P10125352518782014767

`A219647(n)-n`
-/

namespace A219646.P10125352518782014767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219647 n - (n : ℤ)

end

end A219646.P10125352518782014767

namespace A219646

/-- `A219647(n)-n` -/
def P10125352518782014767.Spec : Prop :=
  ∀ n, P10125352518782014767.a n = A219646 n

theorem P10125352518782014767.correct : P10125352518782014767.Spec := by
  intro n
  simp only [A219646, Nat.add_sub_cancel, A219646.P10125352518782014767.a, A219646.P1459568560880754385.f1, A219646.P1459568560880754385.a, A219642, A219642.P8698780994322484832.a, A219647, A219647.P16831968749245997982.a, A219641, A219641.P1602393212941527080.a, A007895, A007895.P13159574906702943091.a, A143299, A143299.P15563677956109418683.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219646

/-! ## A219646.P8868206461894047246

`∑[∑[char[∑[A219644(n)]]]]`
-/

namespace A219646.P8868206461894047246
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219644 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219646.P8868206461894047246

namespace A219646

/-- `∑[∑[char[∑[A219644(n)]]]]` -/
def P8868206461894047246.Spec : Prop :=
  ∀ n, (P8868206461894047246.a n : ℤ) = A219646 n

end A219646

/-! ## A219646.P3312231724695719004

`∑[∑[char[A219643(n+1)]]]`
-/

namespace A219646.P3312231724695719004
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219643 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219646.P3312231724695719004

namespace A219646

/-- `∑[∑[char[A219643(n+1)]]]` -/
def P3312231724695719004.Spec : Prop :=
  ∀ n, (P3312231724695719004.a n : ℤ) = A219646 n

end A219646

/-! ## A219646.P15626438428119003229

`∑[∑[char[A219645(n)+1]]]`
-/

namespace A219646.P15626438428119003229
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219645 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219646.P15626438428119003229

namespace A219646

/-- `∑[∑[char[A219645(n)+1]]]` -/
def P15626438428119003229.Spec : Prop :=
  ∀ n, (P15626438428119003229.a n : ℤ) = A219646 n

end A219646

/-! ## A219646.P819496752972362932

`eq[0, A219649(n)]-n`
-/

namespace A219646.P819496752972362932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A219646.P819496752972362932

namespace A219646

/-- `eq[0, A219649(n)]-n` -/
def P819496752972362932.Spec : Prop :=
  ∀ n, P819496752972362932.a n = A219646 n

end A219646

/-! ## A219646.P16667629920941205054

`lt[A000120(n), Δ[A219649(n)]]-n`
-/

namespace A219646.P16667629920941205054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - (n : ℤ)

end

end A219646.P16667629920941205054

namespace A219646

/-- `lt[A000120(n), Δ[A219649(n)]]-n` -/
def P16667629920941205054.Spec : Prop :=
  ∀ n, P16667629920941205054.a n = A219646 n

end A219646

/-!
# A219647: Positions of zeros in A219649.

The programs for A219647, the canonical program `A219647.P16831968749245997982` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219647 has offset 0).

The definition of A219647 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219646, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219647.P16831968749245997982

`n+A219646(n)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A219647

/-- `n+A219646(n)` -/
def P16831968749245997982.Spec : Prop :=
  ∀ n, P16831968749245997982.a n = A219647 n

theorem P16831968749245997982.correct : P16831968749245997982.Spec := by
  intro n
  simp only [A219647]

end A219647

/-! ## A219647.P8248408722376711879

`∑[A219642(n)]+n`
-/

namespace A219647.P8248408722376711879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A219647.P8248408722376711879

namespace A219647

/-- `∑[A219642(n)]+n` -/
def P8248408722376711879.Spec : Prop :=
  ∀ n, P8248408722376711879.a n = A219647 n

theorem P8248408722376711879.correct : P8248408722376711879.Spec := by
  intro n
  simp only [A219647, Nat.add_sub_cancel, A219647.P8248408722376711879.f1, A219647.P8248408722376711879.a, A219647.P16831968749245997982.a, A219642, A219642.P8698780994322484832.a, A219646, A219646.P1459568560880754385.f1, A219646.P1459568560880754385.a, A219641, A219641.P1602393212941527080.a, A007895, A007895.P13159574906702943091.a, A143299, A143299.P15563677956109418683.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219647

/-! ## A219647.P223295673705652796

`∑[∑[char[∑[A219644(n)]]]]+n`
-/

namespace A219647.P223295673705652796
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219644 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A219647.P223295673705652796

namespace A219647

/-- `∑[∑[char[∑[A219644(n)]]]]+n` -/
def P223295673705652796.Spec : Prop :=
  ∀ n, (P223295673705652796.a n : ℤ) = A219647 n

end A219647

/-! ## A219647.P6170706552393525236

`∑[∑[char[A219643(n+1)]]]+n`
-/

namespace A219647.P6170706552393525236
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219643 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A219647.P6170706552393525236

namespace A219647

/-- `∑[∑[char[A219643(n+1)]]]+n` -/
def P6170706552393525236.Spec : Prop :=
  ∀ n, (P6170706552393525236.a n : ℤ) = A219647 n

end A219647

/-! ## A219647.P9954281840983614936

`∑[∑[char[A219645(n)+1]]]+n`
-/

namespace A219647.P9954281840983614936
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219645 n + 1

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A219647.P9954281840983614936

namespace A219647

/-- `∑[∑[char[A219645(n)+1]]]+n` -/
def P9954281840983614936.Spec : Prop :=
  ∀ n, (P9954281840983614936.a n : ℤ) = A219647 n

end A219647

/-! ## A219647.P16095644166688802106

`A219646(n)-A001489(n)`
-/

namespace A219647.P16095644166688802106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219646 n - A001489 n

end

end A219647.P16095644166688802106

namespace A219647

/-- `A219646(n)-A001489(n)` -/
def P16095644166688802106.Spec : Prop :=
  ∀ n, P16095644166688802106.a n = A219647 n

theorem P16095644166688802106.correct : P16095644166688802106.Spec := by
  intro n
  simp only [A219647, Nat.add_sub_cancel, A219647.P16095644166688802106.a, A219647.P16831968749245997982.a, A001489, A001489.P15233530513763566776.a, A219646, A219646.P1459568560880754385.f1, A219646.P1459568560880754385.a, A219642, A219642.P8698780994322484832.a, A219641, A219641.P1602393212941527080.a, A007895, A007895.P13159574906702943091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219647

/-! ## A219647.P3753087671896860685

`A219646(n)-(A219656(n)-A219657(n))`
-/

namespace A219647.P3753087671896860685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219646 n - (A219656 n - A219657 n)

end

end A219647.P3753087671896860685

namespace A219647

/-- `A219646(n)-(A219656(n)-A219657(n))` -/
def P3753087671896860685.Spec : Prop :=
  ∀ n, P3753087671896860685.a n = A219647 n

theorem P3753087671896860685.correct : P3753087671896860685.Spec := by
  intro n
  simp only [A219647, Nat.add_sub_cancel, A219647.P3753087671896860685.a, A219647.P16831968749245997982.a, A219646, A219646.P1459568560880754385.f1, A219646.P1459568560880754385.a, A219656, A219656.P7922601538606286653.f1, A219656.P7922601538606286653.a, A219657, A219657.P5273342973543630628.a, A219642, A219642.P8698780994322484832.a, A219652, A219652.P12184869098295570606.a, A219641, A219641.P1602393212941527080.a, A219651, A219651.P5835350949150730882.a, A007895, A007895.P13159574906702943091.a, A034968, A034968.P11463317321541393924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219647

/-! ## A219647.P14056197798445954406

`n-(A218254(A213707(n))-A219646(n))`
-/

namespace A219647.P14056197798445954406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A218254 (A213707 n).toNat - A219646 n)

end

end A219647.P14056197798445954406

namespace A219647

/-- `n-(A218254(A213707(n))-A219646(n))` -/
def P14056197798445954406.Spec : Prop :=
  ∀ n, P14056197798445954406.a n = A219647 n

end A219647

/-! ## A219647.P3178924096295614675

`eq[0, A219649(n)]`
-/

namespace A219647.P3178924096295614675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219647.P3178924096295614675

namespace A219647

/-- `eq[0, A219649(n)]` -/
def P3178924096295614675.Spec : Prop :=
  ∀ n, (P3178924096295614675.a n : ℤ) = A219647 n

end A219647

/-! ## A219647.P10306308054307605762

`lt[A000120(n), Δ[A219649(n)]]`
-/

namespace A219647.P10306308054307605762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219649 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219647.P10306308054307605762

namespace A219647

/-- `lt[A000120(n), Δ[A219649(n)]]` -/
def P10306308054307605762.Spec : Prop :=
  ∀ n, (P10306308054307605762.a n : ℤ) = A219647 n

end A219647

/-! ## A219647.P411187242335016515

`record[n-A011971(n)*A219649(n)]`
-/

namespace A219647.P411187242335016515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011971 n * A219649 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219647.P411187242335016515

namespace A219647

/-- `record[n-A011971(n)*A219649(n)]` -/
def P411187242335016515.Spec : Prop :=
  ∀ n, P411187242335016515.a n = A219647 n

end A219647

/-!
# A219648: The infinite trunk of Zeckendorf beanstalk. The only infinite sequence such that a(n-1) = a(n) - number of 1's in Zeckendorf representation of a(n).

The programs for A219648, there is no canonical definition to state claims against.
-/

/-! ## A219648.P7683183109584796721

`A261076(A261102(n))`
-/

namespace A219648.P7683183109584796721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261076 (A261102 n).toNat

end

end A219648.P7683183109584796721

/-! ## A219648.P4648929228912952260

`A261083(n)+A219643(n)`
-/

namespace A219648.P4648929228912952260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261083 n + A219643 n

end

end A219648.P4648929228912952260

/-! ## A219648.P11155752915404140201

`A219645(n)-A261084(n)`
-/

namespace A219648.P11155752915404140201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219645 n - A261084 n

end

end A219648.P11155752915404140201

/-! ## A219648.P15996070886725546446

`A219643(n+1)-(A261084(n)+1)`
-/

namespace A219648.P15996070886725546446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219643 (n + 1) - (A261084 n + 1)

end

end A219648.P15996070886725546446

/-! ## A219648.P17268272593900529758

`A261076(A219642(A261076(n)))`
-/

namespace A219648.P17268272593900529758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261076 (A219642 (A261076 n).toNat).toNat

end

end A219648.P17268272593900529758

/-! ## A219648.P5591380684779173720

`A219641(A261083(n+1)+A219645(n)+1)`
-/

namespace A219648.P5591380684779173720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 (A261083 (n + 1) + (A219645 n + 1)).toNat

end

end A219648.P5591380684779173720

/-! ## A219648.P18103749569189605834

`A219649(A219647(A179016(n+1))-n)`
-/

namespace A219648.P18103749569189605834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219649 (A219647 (A179016 (n + 1)).toNat - (n : ℤ)).toNat

end

end A219648.P18103749569189605834

/-! ## A219648.P10533199819437928635

`A219649(A219647(4*n)-n)`
-/

namespace A219648.P10533199819437928635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219649 (A219647 (4 * n) - (n : ℤ)).toNat

end

end A219648.P10533199819437928635

/-!
# A219649: Irregular table, where row n (n >= 0) starts with n, the next term is A219641(n), and the successive terms are obtained by repeatedly subtracting the number of 1's in the previous term's Zeckendorf expansion, until zero is reached, after which the next row starts with one larger n.

The programs for A219649, there is no canonical definition to state claims against.
-/

/-! ## A219649.P10263188647877294767

`A025581(lt[A174630(n), 8])`
-/

namespace A219649.P10263188647877294767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174630 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A219649.P10263188647877294767

/-! ## A219649.P4322604137832021269

`A025581(record[A029333(A117384(n+1))])`
-/

namespace A219649.P4322604137832021269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029333 (A117384 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A219649.P4322604137832021269

/-! ## A219649.P12775370250486342615

`A025581(lt[A003242(n), A247995(n+4)])`
-/

namespace A219649.P12775370250486342615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247995 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219649.P12775370250486342615

/-! ## A219649.P13523741265258920376

`A025581(lt[A033880(n+1), A318050(n+3)])`
-/

namespace A219649.P13523741265258920376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033880 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318050 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219649.P13523741265258920376

/-! ## A219649.P3700433038974491104

`A025581(lt[A336866(n), A367081(n)])`
-/

namespace A219649.P3700433038974491104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336866 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219649.P3700433038974491104

/-!
# A219650: The nonnegative integers n such that there exists a number k with A034968(n+k)=k.

The programs for A219650, the canonical program `A219650.P9586038116927092165` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219650 has offset 0).

The definition of A219650 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219651, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219650.P11634952507038716050

`a(n-1)+A230405(n-1)` with `a(0)=0`
-/

namespace A219650.P11634952507038716050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + A230405 (n - 1)

end

end A219650.P11634952507038716050

namespace A219650

/-- `a(n-1)+A230405(n-1)` -/
def P11634952507038716050.Spec : Prop :=
  ∀ n, P11634952507038716050.a n = A219650 n

end A219650

/-! ## A219650.P9586038116927092165

`A219651(2*n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A219650

/-- `A219651(2*n)` -/
def P9586038116927092165.Spec : Prop :=
  ∀ n, P9586038116927092165.a n = A219650 n

theorem P9586038116927092165.correct : P9586038116927092165.Spec := by
  intro n
  simp only [A219650]

end A219650

/-! ## A219650.P9583135208856735749

`comp[A219658(n+1)]`
-/

namespace A219650.P9583135208856735749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219658 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219650.P9583135208856735749

namespace A219650

/-- `comp[A219658(n+1)]` -/
def P9583135208856735749.Spec : Prop :=
  ∀ n, (P9583135208856735749.a n : ℤ) = A219650 n

end A219650

/-! ## A219650.P13712755947920089681

`2*n-∑{digits}[A007623(2*n), #]`
-/

namespace A219650.P13712755947920089681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A219650.P13712755947920089681

namespace A219650

/-- `2*n-∑{digits}[A007623(2*n), #]` -/
def P13712755947920089681.Spec : Prop :=
  ∀ n, P13712755947920089681.a n = A219650 n

end A219650

/-! ## A219650.P6578197037935536455

`∑[A230405(n)]-A230405(n)`
-/

namespace A219650.P6578197037935536455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230405 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A230405 n

end

end A219650.P6578197037935536455

namespace A219650

/-- `∑[A230405(n)]-A230405(n)` -/
def P6578197037935536455.Spec : Prop :=
  ∀ n, P6578197037935536455.a n = A219650 n

end A219650

/-! ## A219650.P1540996753289503874

`lt[1, A135530(A230427(n))]`
-/

namespace A219650.P1540996753289503874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (A230427 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219650.P1540996753289503874

namespace A219650

/-- `lt[1, A135530(A230427(n))]` -/
def P1540996753289503874.Spec : Prop :=
  ∀ n, (P1540996753289503874.a n : ℤ) = A219650 n

end A219650

/-! ## A219650.P2712687125149337154

`lt[0, A230424(n)]`
-/

namespace A219650.P2712687125149337154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219650.P2712687125149337154

namespace A219650

/-- `lt[0, A230424(n)]` -/
def P2712687125149337154.Spec : Prop :=
  ∀ n, (P2712687125149337154.a n : ℤ) = A219650 n

end A219650

/-! ## A219650.P6770009595702502964

`record[n*A230412(n)]`
-/

namespace A219650.P6770009595702502964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219650.P6770009595702502964

namespace A219650

/-- `record[n*A230412(n)]` -/
def P6770009595702502964.Spec : Prop :=
  ∀ n, P6770009595702502964.a n = A219650 n

end A219650

/-! ## A219650.P10330542903385006113

`lt[n, (A230414(n)+1)²]`
-/

namespace A219650.P10330542903385006113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A230414 n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219650.P10330542903385006113

namespace A219650

/-- `lt[n, (A230414(n)+1)²]` -/
def P10330542903385006113.Spec : Prop :=
  ∀ n, (P10330542903385006113.a n : ℤ) = A219650 n

end A219650

/-! ## A219650.P5293571180318155935

`eq[A230413(n), A230414(n)]`
-/

namespace A219650.P5293571180318155935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230413 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219650.P5293571180318155935

namespace A219650

/-- `eq[A230413(n), A230414(n)]` -/
def P5293571180318155935.Spec : Prop :=
  ∀ n, (P5293571180318155935.a n : ℤ) = A219650 n

end A219650

/-! ## A219650.P9243625858555699600

`lt[A230425(n), A230414(n)+1]`
-/

namespace A219650.P9243625858555699600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230425 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219650.P9243625858555699600

namespace A219650

/-- `lt[A230425(n), A230414(n)+1]` -/
def P9243625858555699600.Spec : Prop :=
  ∀ n, (P9243625858555699600.a n : ℤ) = A219650 n

end A219650

/-! ## A219650.P8706043819011521811

`lt[A230426(n), A230414(n)+1]`
-/

namespace A219650.P8706043819011521811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230426 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219650.P8706043819011521811

namespace A219650

/-- `lt[A230426(n), A230414(n)+1]` -/
def P8706043819011521811.Spec : Prop :=
  ∀ n, (P8706043819011521811.a n : ℤ) = A219650 n

end A219650

/-! ## A219650.P11369911966733437306

`lt[A230427(n), A230414(n)+1]`
-/

namespace A219650.P11369911966733437306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219650.P11369911966733437306

namespace A219650

/-- `lt[A230427(n), A230414(n)+1]` -/
def P11369911966733437306.Spec : Prop :=
  ∀ n, (P11369911966733437306.a n : ℤ) = A219650 n

end A219650

/-! ## A219650.P8076707339980535873

`record[n*(A230424(n)-A230423(n))]`
-/

namespace A219650.P8076707339980535873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A230424 n - A230423 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219650.P8076707339980535873

namespace A219650

/-- `record[n*(A230424(n)-A230423(n))]` -/
def P8076707339980535873.Spec : Prop :=
  ∀ n, P8076707339980535873.a n = A219650 n

end A219650

/-! ## A219650.P4283038831499181635

`comp[eq[1, A230425(n)]]`
-/

namespace A219650.P4283038831499181635
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230425 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A219650.P4283038831499181635

namespace A219650

/-- `comp[eq[1, A230425(n)]]` -/
def P4283038831499181635.Spec : Prop :=
  ∀ n, (P4283038831499181635.a n : ℤ) = A219650 n

end A219650

/-! ## A219650.P10640098054294343335

`eq[A000038(n), A000038(A230414(n))]`
-/

namespace A219650.P10640098054294343335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A230414 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219650.P10640098054294343335

namespace A219650

/-- `eq[A000038(n), A000038(A230414(n))]` -/
def P10640098054294343335.Spec : Prop :=
  ∀ n, (P10640098054294343335.a n : ℤ) = A219650 n

end A219650

/-! ## A219650.P15860967278182152458

`eq[A000007(n), A000007(A230414(n))]`
-/

namespace A219650.P15860967278182152458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A230414 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219650.P15860967278182152458

namespace A219650

/-- `eq[A000007(n), A000007(A230414(n))]` -/
def P15860967278182152458.Spec : Prop :=
  ∀ n, (P15860967278182152458.a n : ℤ) = A219650 n

end A219650

/-! ## A219650.P17749441298736845349

`eq[A130706(n), A130706(A230414(n))]`
-/

namespace A219650.P17749441298736845349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A230414 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219650.P17749441298736845349

namespace A219650

/-- `eq[A130706(n), A130706(A230414(n))]` -/
def P17749441298736845349.Spec : Prop :=
  ∀ n, (P17749441298736845349.a n : ℤ) = A219650 n

end A219650

/-! ## A219650.P4558880151637613295

`eq[A130713(n), A130713(A230414(n))]`
-/

namespace A219650.P4558880151637613295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130713 (A230414 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219650.P4558880151637613295

namespace A219650

/-- `eq[A130713(n), A130713(A230414(n))]` -/
def P4558880151637613295.Spec : Prop :=
  ∀ n, (P4558880151637613295.a n : ℤ) = A219650 n

end A219650

/-! ## A219650.P4085762875786892464

`2*n-A034968(2*n)`
-/

namespace A219650.P4085762875786892464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A034968 (2 * n)

end

end A219650.P4085762875786892464

namespace A219650

/-- `2*n-A034968(2*n)` -/
def P4085762875786892464.Spec : Prop :=
  ∀ n, P4085762875786892464.a n = A219650 n

theorem P4085762875786892464.correct : P4085762875786892464.Spec := by
  intro n
  simp only [A219650, Nat.add_sub_cancel, A219650.P4085762875786892464.a, A219650.P9586038116927092165.a, A034968, A034968.P11463317321541393924.a, A219651, A219651.P5835350949150730882.a, A099563, A099563.P5019841788924108469.f2, A099563.P5019841788924108469.f1, A099563.P5019841788924108469.f4, A099563.P5019841788924108469.f3, A099563.P5019841788924108469.a, A257687, A257687.P7012285749589745258.a, A084558, A084558.P8374569854218058976.a, A090529, A090529.P4680555822996673914.f1, A090529.P4680555822996673914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219650

/-!
# A219651: a(n) = n minus (sum of digits in factorial base expansion of n).

The programs for A219651, the canonical program `A219651.P5835350949150730882` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219651 has offset 0).

The definition of A219651 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034968, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219651.P5835350949150730882

`n-A034968(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A219651

/-- `n-A034968(n)` -/
def P5835350949150730882.Spec : Prop :=
  ∀ n, P5835350949150730882.a n = A219651 n

theorem P5835350949150730882.correct : P5835350949150730882.Spec := by
  intro n
  simp only [A219651]

end A219651

/-! ## A219651.P17164941739439952490

`A219650(floor(n/2))`
-/

namespace A219651.P17164941739439952490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219650 ⌊(n : ℚ) / 2⌋.toNat

end

end A219651.P17164941739439952490

namespace A219651

/-- `A219650(floor(n/2))` -/
def P17164941739439952490.Spec : Prop :=
  ∀ n, P17164941739439952490.a n = A219651 n

end A219651

/-! ## A219651.P10788134858786785331

`n-Δ[A368342(n)]`
-/

namespace A219651.P10788134858786785331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368342 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f1 (n + 1) - f1 n)

end

end A219651.P10788134858786785331

namespace A219651

/-- `n-Δ[A368342(n)]` -/
def P10788134858786785331.Spec : Prop :=
  ∀ n, P10788134858786785331.a n = A219651 n

end A219651

/-! ## A219651.P12974701523413048814

`n-∑{digits}[A007623(n), #]`
-/

namespace A219651.P12974701523413048814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum : ℕ) : ℤ)

end

end A219651.P12974701523413048814

namespace A219651

/-- `n-∑{digits}[A007623(n), #]` -/
def P12974701523413048814.Spec : Prop :=
  ∀ n, P12974701523413048814.a n = A219651 n

end A219651

/-! ## A219651.P9376977580473616137

`n-A139365(A220655(n+1))`
-/

namespace A219651.P9376977580473616137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A139365 (A220655 (n + 1)).toNat

end

end A219651.P9376977580473616137

namespace A219651

/-- `n-A139365(A220655(n+1))` -/
def P9376977580473616137.Spec : Prop :=
  ∀ n, P9376977580473616137.a n = A219651 n

end A219651

/-! ## A219651.P14199726359364859005

`A230424(A219650(n))%(A034968(n)+1+n)`
-/

namespace A219651.P14199726359364859005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A230424 (A219650 n).toNat) (A034968 n + 1 + (n : ℤ))

end

end A219651.P14199726359364859005

namespace A219651

/-- `A230424(A219650(n))%(A034968(n)+1+n)` -/
def P14199726359364859005.Spec : Prop :=
  ∀ n, P14199726359364859005.a n = A219651 n

end A219651

/-! ## A219651.P3176910696228934043

`n-A276150(A351576(n))`
-/

namespace A219651.P3176910696228934043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276150 (A351576 n).toNat

end

end A219651.P3176910696228934043

namespace A219651

/-- `n-A276150(A351576(n))` -/
def P3176910696228934043.Spec : Prop :=
  ∀ n, P3176910696228934043.a n = A219651 n

end A219651

/-! ## A219651.P9273332823967544519

`n-A276146(A225901(n))`
-/

namespace A219651.P9273332823967544519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A276146 (A225901 n).toNat

end

end A219651.P9273332823967544519

namespace A219651

/-- `n-A276146(A225901(n))` -/
def P9273332823967544519.Spec : Prop :=
  ∀ n, P9273332823967544519.a n = A219651 n

end A219651

/-! ## A219651.P15107023020359676647

`filter[A004526(n), A230412(#)]`
-/

namespace A219651.P15107023020359676647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A230412 (f1 j).toNat = 1) n)

end

end A219651.P15107023020359676647

namespace A219651

/-- `filter[A004526(n), A230412(#)]` -/
def P15107023020359676647.Spec : Prop :=
  ∀ n, P15107023020359676647.a n = A219651 n

end A219651

/-! ## A219651.P17142499179781894295

`filter[A140106(n+2), A230412(#)]`
-/

namespace A219651.P17142499179781894295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A230412 (f1 j).toNat = 1) n)

end

end A219651.P17142499179781894295

namespace A219651

/-- `filter[A140106(n+2), A230412(#)]` -/
def P17142499179781894295.Spec : Prop :=
  ∀ n, P17142499179781894295.a n = A219651 n

end A219651

/-! ## A219651.P8118357445467628548

`n-A056239(A275735(n))`
-/

namespace A219651.P8118357445467628548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A056239 (A275735 n).toNat

end

end A219651.P8118357445467628548

namespace A219651

/-- `n-A056239(A275735(n))` -/
def P8118357445467628548.Spec : Prop :=
  ∀ n, P8118357445467628548.a n = A219651 n

end A219651

/-! ## A219651.P1699810687450085778

`filter[A002265(2*n), A230412(#)]`
-/

namespace A219651.P1699810687450085778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A230412 (f1 j).toNat = 1) n)

end

end A219651.P1699810687450085778

namespace A219651

/-- `filter[A002265(2*n), A230412(#)]` -/
def P1699810687450085778.Spec : Prop :=
  ∀ n, P1699810687450085778.a n = A219651 n

end A219651

/-! ## A219651.P4378464880516856250

`filter[A124072(2*n), A230412(#)]`
-/

namespace A219651.P4378464880516856250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124072 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A230412 (f1 j).toNat = 1) n)

end

end A219651.P4378464880516856250

namespace A219651

/-- `filter[A124072(2*n), A230412(#)]` -/
def P4378464880516856250.Spec : Prop :=
  ∀ n, P4378464880516856250.a n = A219651 n

end A219651

/-! ## A219651.P15615659475648052018

`filter[A130722(2*n), A230412(#)]`
-/

namespace A219651.P15615659475648052018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130722 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A230412 (f1 j).toNat = 1) n)

end

end A219651.P15615659475648052018

namespace A219651

/-- `filter[A130722(2*n), A230412(#)]` -/
def P15615659475648052018.Spec : Prop :=
  ∀ n, P15615659475648052018.a n = A219651 n

end A219651

/-! ## A219651.P9236074700342778175

`filter[A130845(2*n), A230412(#)]`
-/

namespace A219651.P9236074700342778175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130845 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A230412 (f1 j).toNat = 1) n)

end

end A219651.P9236074700342778175

namespace A219651

/-- `filter[A130845(2*n), A230412(#)]` -/
def P9236074700342778175.Spec : Prop :=
  ∀ n, P9236074700342778175.a n = A219651 n

end A219651

/-! ## A219651.P15172061351645705513

`filter[A131505(2*n), A230412(#)]`
-/

namespace A219651.P15172061351645705513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131505 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A230412 (f1 j).toNat = 1) n)

end

end A219651.P15172061351645705513

namespace A219651

/-- `filter[A131505(2*n), A230412(#)]` -/
def P15172061351645705513.Spec : Prop :=
  ∀ n, P15172061351645705513.a n = A219651 n

end A219651

/-! ## A219651.P4512001351641771873

`filter[A131508(2*n), A230412(#)]`
-/

namespace A219651.P4512001351641771873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131508 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A230412 (f1 j).toNat = 1) n)

end

end A219651.P4512001351641771873

namespace A219651

/-- `filter[A131508(2*n), A230412(#)]` -/
def P4512001351641771873.Spec : Prop :=
  ∀ n, P4512001351641771873.a n = A219651 n

end A219651

/-! ## A219651.P4628293628502260089

`filter[A274576(2*n), A230412(#)]`
-/

namespace A219651.P4628293628502260089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274576 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A230412 (f1 j).toNat = 1) n)

end

end A219651.P4628293628502260089

namespace A219651

/-- `filter[A274576(2*n), A230412(#)]` -/
def P4628293628502260089.Spec : Prop :=
  ∀ n, P4628293628502260089.a n = A219651 n

end A219651

/-! ## A219651.P15533353136506318423

`filter[A026922(2*n+1), A230412(#)]`
-/

namespace A219651.P15533353136506318423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A230412 (f1 j).toNat = 1) n)

end

end A219651.P15533353136506318423

namespace A219651

/-- `filter[A026922(2*n+1), A230412(#)]` -/
def P15533353136506318423.Spec : Prop :=
  ∀ n, P15533353136506318423.a n = A219651 n

end A219651

/-!
# A219652: Number of steps to reach 0 starting with n and using the iterated process: x -> x - (sum of digits in factorial expansion of x).

The programs for A219652, the canonical program `A219652.P12184869098295570606` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219652 has offset 0).

The definition of A219652 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219651, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219652.P12184869098295570606

`1+a(A219651(n))` with `a(0)=0`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A219652

/-- `1+a(A219651(n))` -/
def P12184869098295570606.Spec : Prop :=
  ∀ n, (P12184869098295570606.a n : ℤ) = A219652 n

theorem P12184869098295570606.correct : P12184869098295570606.Spec := by
  intro n
  simp only [A219652]

end A219652

/-! ## A219652.P12856715300767627462

`∑[char[∑[A219654(n)]]]`
-/

namespace A219652.P12856715300767627462
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219654 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219652.P12856715300767627462

namespace A219652

/-- `∑[char[∑[A219654(n)]]]` -/
def P12856715300767627462.Spec : Prop :=
  ∀ n, (P12856715300767627462.a n : ℤ) = A219652 n

end A219652

/-! ## A219652.P3660345084686962158

`∑[char[A219653(n+1)]]`
-/

namespace A219652.P3660345084686962158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219653 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219652.P3660345084686962158

namespace A219652

/-- `∑[char[A219653(n+1)]]` -/
def P3660345084686962158.Spec : Prop :=
  ∀ n, (P3660345084686962158.a n : ℤ) = A219652 n

end A219652

/-! ## A219652.P18188777181387324981

`∑[char[A219655(n)+1]]`
-/

namespace A219652.P18188777181387324981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219655 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219652.P18188777181387324981

namespace A219652

/-- `∑[char[A219655(n)+1]]` -/
def P18188777181387324981.Spec : Prop :=
  ∀ n, (P18188777181387324981.a n : ℤ) = A219652 n

end A219652

/-! ## A219652.P10809591865517542806

`∑[char[A219653(n)]]-1`
-/

namespace A219652.P10809591865517542806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219653 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A219652.P10809591865517542806

namespace A219652

/-- `∑[char[A219653(n)]]-1` -/
def P10809591865517542806.Spec : Prop :=
  ∀ n, P10809591865517542806.a n = A219652 n

end A219652

/-! ## A219652.P6753097723302333285

`a(n-A034968(n))+1` with `a(0)=0`
-/

namespace A219652.P6753097723302333285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A034968 n).toNat + 1

end

end A219652.P6753097723302333285

namespace A219652

/-- `a(n-A034968(n))+1` -/
def P6753097723302333285.Spec : Prop :=
  ∀ n, (P6753097723302333285.a n : ℤ) = A219652 n

theorem P6753097723302333285.correct : P6753097723302333285.Spec := by
  intro n
  simp only [A219652, Nat.add_sub_cancel, A219652.P6753097723302333285.a, A219652.P12184869098295570606.a, A034968, A034968.P11463317321541393924.a, A219651, A219651.P5835350949150730882.a, A099563, A099563.P5019841788924108469.f2, A099563.P5019841788924108469.f1, A099563.P5019841788924108469.f4, A099563.P5019841788924108469.f3, A099563.P5019841788924108469.a, A257687, A257687.P7012285749589745258.a, A084558, A084558.P8374569854218058976.a, A090529, A090529.P4680555822996673914.f1, A090529.P4680555822996673914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219652

/-! ## A219652.P14565981307759733733

`Δ[A219656(A004273(n)-n)]`
-/

namespace A219652.P14565981307759733733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219656 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219652.P14565981307759733733

namespace A219652

/-- `Δ[A219656(A004273(n)-n)]` -/
def P14565981307759733733.Spec : Prop :=
  ∀ n, P14565981307759733733.a n = A219652 n

end A219652

/-! ## A219652.P3140724167529595705

`Δ[A219656(n)]-char[A219655(n)]`
-/

namespace A219652.P3140724167529595705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219655 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A219652.P3140724167529595705

namespace A219652

/-- `Δ[A219656(n)]-char[A219655(n)]` -/
def P3140724167529595705.Spec : Prop :=
  ∀ n, P3140724167529595705.a n = A219652 n

end A219652

/-! ## A219652.P3478754349895291966

`A219656(n)-A219656(A004273(n)-n)`
-/

namespace A219652.P3478754349895291966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219656 n - A219656 (A004273 n - (n : ℤ)).toNat

end

end A219652.P3478754349895291966

namespace A219652

/-- `A219656(n)-A219656(A004273(n)-n)` -/
def P3478754349895291966.Spec : Prop :=
  ∀ n, P3478754349895291966.a n = A219652 n

end A219652

/-! ## A219652.P1980612670084831033

`Δ[A219656(A004526(A004273(n)))]`
-/

namespace A219652.P1980612670084831033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219656 (A004526 (A004273 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219652.P1980612670084831033

namespace A219652

/-- `Δ[A219656(A004526(A004273(n)))]` -/
def P1980612670084831033.Spec : Prop :=
  ∀ n, P1980612670084831033.a n = A219652 n

end A219652

/-!
# A219653: Least inverse of A219652; a(n) = minimal i such that A219652(i) = n.

The programs for A219653, there is no canonical definition to state claims against.
-/

/-! ## A219653.P8542840942619863570

`∑[A219654(n)]-A219654(n)`
-/

namespace A219653.P8542840942619863570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A219654 n

end

end A219653.P8542840942619863570

/-! ## A219653.P11831286562915180690

`A219655(n)+1-A219654(n)`
-/

namespace A219653.P11831286562915180690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219655 n + (1 - A219654 n)

end

end A219653.P11831286562915180690

/-! ## A219653.P4140379078678502049

`A219666(n)-A231723(n)`
-/

namespace A219653.P4140379078678502049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219666 n - A231723 n

end

end A219653.P4140379078678502049

/-! ## A219653.P13867188276349169448

`∑[A230406(n)]-A231723(n)`
-/

namespace A219653.P13867188276349169448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A231723 n

end

end A219653.P13867188276349169448

/-! ## A219653.P6974829607363719782

`A230416(A230432(n))-A231723(n)`
-/

namespace A219653.P6974829607363719782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230416 (A230432 n).toNat - A231723 n

end

end A219653.P6974829607363719782

/-! ## A219653.P4918071656714752877

`A219655(n)-(A231724(n)+A231723(n))`
-/

namespace A219653.P4918071656714752877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219655 n - (A231724 n + A231723 n)

end

end A219653.P4918071656714752877

/-! ## A219653.P12584111097663791848

`A219651(A230430(n))-A231723(n)`
-/

namespace A219653.P12584111097663791848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 (A230430 n).toNat - A231723 n

end

end A219653.P12584111097663791848

/-!
# A219654: Run lengths in A219652.

The programs for A219654, there is no canonical definition to state claims against.
-/

/-! ## A219654.P6493951962457569115

`A219653(n+1)-A219653(n)`
-/

namespace A219654.P6493951962457569115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219653 (n + 1) - A219653 n

end

end A219654.P6493951962457569115

/-! ## A219654.P5508127534832675570

`Δ[A219653(n)]`
-/

namespace A219654.P5508127534832675570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219654.P5508127534832675570

/-! ## A219654.P3460131476301423617

`A231723(n)+A231724(n)+1`
-/

namespace A219654.P3460131476301423617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231723 n + (A231724 n + 1)

end

end A219654.P3460131476301423617

/-! ## A219654.P9893475966902132728

`Δ[A219666(n)-A231723(n)]`
-/

namespace A219654.P9893475966902132728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219666 n - A231723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219654.P9893475966902132728

/-! ## A219654.P14550629774166710796

`runs[A219652(n)]`
-/

namespace A219654.P14550629774166710796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A219654.P14550629774166710796

/-! ## A219654.P13656069787567882608

`runs[a(A219651(n))+1]` with `a(0)=1`
-/

namespace A219654.P13656069787567882608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (A219651 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f1 j ≠ f1 (j - 1)) n

end

end A219654.P13656069787567882608

/-!
# A219655: Greatest inverse of A219652; a(n) = maximal i such that A219652(i) = n.

The programs for A219655, there is no canonical definition to state claims against.
-/

/-! ## A219655.P16692386627648097235

`A219653(n)+A219654(n)-1`
-/

namespace A219655.P16692386627648097235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219653 n + A219654 n - 1

end

end A219655.P16692386627648097235

/-! ## A219655.P12558768844115363317

`∑[A219654(n)]-1`
-/

namespace A219655.P12558768844115363317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A219655.P12558768844115363317

/-! ## A219655.P16767333677160550995

`A219653(1+n)-1`
-/

namespace A219655.P16767333677160550995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219653 (1 + n) - 1

end

end A219655.P16767333677160550995

/-! ## A219655.P17644810201100030888

`∑[A219654(n)%A002522(n)]`
-/

namespace A219655.P17644810201100030888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219654 n) (A002522 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219655.P17644810201100030888

/-! ## A219655.P15255333210051064702

`A280193(2*n+1)+A219653(n+1)`
-/

namespace A219655.P15255333210051064702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A219653 (n + 1)

end

end A219655.P15255333210051064702

/-! ## A219655.P12863810904782413022

`A260196(2*(n+1))+A219653(n+1)`
-/

namespace A219655.P12863810904782413022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (2 * (n + 1)) + A219653 (n + 1)

end

end A219655.P12863810904782413022

/-! ## A219655.P1231120450902202237

`A231724(n)+A219666(n)`
-/

namespace A219655.P1231120450902202237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231724 n + A219666 n

end

end A219655.P1231120450902202237

/-! ## A219655.P1074448975888885376

`A219666(n+1)-(A231723(n+1)+1)`
-/

namespace A219655.P1074448975888885376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219666 (n + 1) - (A231723 (n + 1) + 1)

end

end A219655.P1074448975888885376

/-! ## A219655.P15844998658416604351

`2*A230413(a(n-1))+1` with `a(0)=0`
-/

namespace A219655.P15844998658416604351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * A230413 (a (n - 1)).toNat + 1

end

end A219655.P15844998658416604351

/-! ## A219655.P13098954549373916772

`eq[1, Δ[A219652(n)]]`
-/

namespace A219655.P13098954549373916772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219655.P13098954549373916772

/-! ## A219655.P5651800649332199858

`A023443(A219653(n+1))`
-/

namespace A219655.P5651800649332199858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A219653 (n + 1)).toNat

end

end A219655.P5651800649332199858

/-! ## A219655.P3100559257202559832

`lt[1, A002024(Δ[A219652(n)]+1)]`
-/

namespace A219655.P3100559257202559832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219655.P3100559257202559832

/-! ## A219655.P13261225933177421903

`lt[1, A005117(Δ[A219652(n)]+1)]`
-/

namespace A219655.P13261225933177421903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219655.P13261225933177421903

/-! ## A219655.P10057821931977554133

`lt[1, A020639(Δ[A219652(n)]+1)]`
-/

namespace A219655.P10057821931977554133
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219655.P10057821931977554133

/-! ## A219655.P8024112683706761879

`lt[1, A238606(Δ[A219652(n)]+1)]`
-/

namespace A219655.P8024112683706761879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238606 (f3 (n + 1) - f3 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219655.P8024112683706761879

/-! ## A219655.P13775248461154992429

`lt[1, A000203(Δ[A219652(n)]+1)-1]`
-/

namespace A219655.P13775248461154992429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f3 (n + 1) - f3 n + 1).toNat - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219655.P13775248461154992429

/-! ## A219655.P13359670698214820406

`lt[n, A000203(n+1)*Δ[A219652(n)]]`
-/

namespace A219655.P13359670698214820406
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) * (f3 (n + 1) - f3 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A219655.P13359670698214820406

/-!
# A219656: Partial sums of A219652.

The programs for A219656, the canonical program `A219656.P7922601538606286653` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219656 has offset 0).

The definition of A219656 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219656.P7922601538606286653

`∑[A219652(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A219656

/-- `∑[A219652(n)]` -/
def P7922601538606286653.Spec : Prop :=
  ∀ n, P7922601538606286653.a n = A219656 n

theorem P7922601538606286653.correct : P7922601538606286653.Spec := by
  intro n
  simp only [A219656]

end A219656

/-! ## A219656.P12826025121749136712

`A219657(n)-n`
-/

namespace A219656.P12826025121749136712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219657 n - (n : ℤ)

end

end A219656.P12826025121749136712

namespace A219656

/-- `A219657(n)-n` -/
def P12826025121749136712.Spec : Prop :=
  ∀ n, P12826025121749136712.a n = A219656 n

theorem P12826025121749136712.correct : P12826025121749136712.Spec := by
  intro n
  simp only [A219656, Nat.add_sub_cancel, A219656.P12826025121749136712.a, A219656.P7922601538606286653.f1, A219656.P7922601538606286653.a, A219652, A219652.P12184869098295570606.a, A219657, A219657.P5273342973543630628.a, A219651, A219651.P5835350949150730882.a, A034968, A034968.P11463317321541393924.a, A099563, A099563.P5019841788924108469.f2, A099563.P5019841788924108469.f1, A099563.P5019841788924108469.f4, A099563.P5019841788924108469.f3, A099563.P5019841788924108469.a, A257687, A257687.P7012285749589745258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219656

/-! ## A219656.P4561552088674445471

`∑[a(A219651(n))+1]` with `a(0)=0`
-/

namespace A219656.P4561552088674445471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (A219651 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219656.P4561552088674445471

namespace A219656

/-- `∑[a(A219651(n))+1]` -/
def P4561552088674445471.Spec : Prop :=
  ∀ n, (P4561552088674445471.a n : ℤ) = A219656 n

theorem P4561552088674445471.correct : P4561552088674445471.Spec := by
  intro n
  simp only [A219656, Nat.add_sub_cancel, A219656.P4561552088674445471.f1, A219656.P4561552088674445471.a, A219656.P7922601538606286653.f1, A219656.P7922601538606286653.a, A219651, A219651.P5835350949150730882.a, A219652, A219652.P12184869098295570606.a, A034968, A034968.P11463317321541393924.a, A099563, A099563.P5019841788924108469.f2, A099563.P5019841788924108469.f1, A099563.P5019841788924108469.f4, A099563.P5019841788924108469.f3, A099563.P5019841788924108469.a, A257687, A257687.P7012285749589745258.a, A084558, A084558.P8374569854218058976.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219656

/-! ## A219656.P2599707218511003109

`∑[∑[char[A219653(n+1)]]]`
-/

namespace A219656.P2599707218511003109
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219653 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219656.P2599707218511003109

namespace A219656

/-- `∑[∑[char[A219653(n+1)]]]` -/
def P2599707218511003109.Spec : Prop :=
  ∀ n, (P2599707218511003109.a n : ℤ) = A219656 n

end A219656

/-! ## A219656.P13408113852871072960

`∑[∑[char[A219653(n)]]-1]`
-/

namespace A219656.P13408113852871072960
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219653 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219656.P13408113852871072960

namespace A219656

/-- `∑[∑[char[A219653(n)]]-1]` -/
def P13408113852871072960.Spec : Prop :=
  ∀ n, P13408113852871072960.a n = A219656 n

end A219656

/-! ## A219656.P15736638199326199078

`∑[a(n-A034968(n))+1]` with `a(0)=0`
-/

namespace A219656.P15736638199326199078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 ((n : ℤ) - A034968 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219656.P15736638199326199078

namespace A219656

/-- `∑[a(n-A034968(n))+1]` -/
def P15736638199326199078.Spec : Prop :=
  ∀ n, (P15736638199326199078.a n : ℤ) = A219656 n

theorem P15736638199326199078.correct : P15736638199326199078.Spec := by
  intro n
  simp only [A219656, Nat.add_sub_cancel, A219656.P15736638199326199078.f1, A219656.P15736638199326199078.a, A219656.P7922601538606286653.f1, A219656.P7922601538606286653.a, A034968, A034968.P11463317321541393924.a, A219652, A219652.P12184869098295570606.a, A099563, A099563.P5019841788924108469.f2, A099563.P5019841788924108469.f1, A099563.P5019841788924108469.f4, A099563.P5019841788924108469.f3, A099563.P5019841788924108469.a, A219651, A219651.P5835350949150730882.a, A257687, A257687.P7012285749589745258.a, A084558, A084558.P8374569854218058976.a, A090529, A090529.P4680555822996673914.f1, A090529.P4680555822996673914.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219656

/-! ## A219656.P7711023444986611520

`eq[0, A219659(n)]-n`
-/

namespace A219656.P7711023444986611520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A219656.P7711023444986611520

namespace A219656

/-- `eq[0, A219659(n)]-n` -/
def P7711023444986611520.Spec : Prop :=
  ∀ n, P7711023444986611520.a n = A219656 n

end A219656

/-!
# A219657: Positions of zeros in A219659.

The programs for A219657, the canonical program `A219657.P5273342973543630628` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219657 has offset 0).

The definition of A219657 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219656, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219657.P5273342973543630628

`n+A219656(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A219657

/-- `n+A219656(n)` -/
def P5273342973543630628.Spec : Prop :=
  ∀ n, P5273342973543630628.a n = A219657 n

theorem P5273342973543630628.correct : P5273342973543630628.Spec := by
  intro n
  simp only [A219657]

end A219657

/-! ## A219657.P9869843776801003572

`∑[A219652(n)]+n`
-/

namespace A219657.P9869843776801003572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A219657.P9869843776801003572

namespace A219657

/-- `∑[A219652(n)]+n` -/
def P9869843776801003572.Spec : Prop :=
  ∀ n, P9869843776801003572.a n = A219657 n

theorem P9869843776801003572.correct : P9869843776801003572.Spec := by
  intro n
  simp only [A219657, Nat.add_sub_cancel, A219657.P9869843776801003572.f1, A219657.P9869843776801003572.a, A219657.P5273342973543630628.a, A219652, A219652.P12184869098295570606.a, A219656, A219656.P7922601538606286653.f1, A219656.P7922601538606286653.a, A219651, A219651.P5835350949150730882.a, A034968, A034968.P11463317321541393924.a, A099563, A099563.P5019841788924108469.f2, A099563.P5019841788924108469.f1, A099563.P5019841788924108469.f4, A099563.P5019841788924108469.f3, A099563.P5019841788924108469.a, A257687, A257687.P7012285749589745258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219657

/-! ## A219657.P3506014651915018386

`∑[∑[char[A219653(n)]]]-1`
-/

namespace A219657.P3506014651915018386
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219653 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A219657.P3506014651915018386

namespace A219657

/-- `∑[∑[char[A219653(n)]]]-1` -/
def P3506014651915018386.Spec : Prop :=
  ∀ n, P3506014651915018386.a n = A219657 n

end A219657

/-! ## A219657.P2237944837604226787

`∑[a(A219651(n))+1]` with `a(0)=0, a(1)=2`
-/

namespace A219657.P2237944837604226787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (A219651 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219657.P2237944837604226787

namespace A219657

/-- `∑[a(A219651(n))+1]` -/
def P2237944837604226787.Spec : Prop :=
  ∀ n, (P2237944837604226787.a n : ℤ) = A219657 n

end A219657

/-! ## A219657.P12908244004874397030

`∑[a(n-A034968(n))+1]` with `a(0)=0, a(1)=2`
-/

namespace A219657.P12908244004874397030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 ((n : ℤ) - A034968 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219657.P12908244004874397030

namespace A219657

/-- `∑[a(n-A034968(n))+1]` -/
def P12908244004874397030.Spec : Prop :=
  ∀ n, (P12908244004874397030.a n : ℤ) = A219657 n

end A219657

/-! ## A219657.P7761617817194262979

`A219656(n)-A001489(n)`
-/

namespace A219657.P7761617817194262979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219656 n - A001489 n

end

end A219657.P7761617817194262979

namespace A219657

/-- `A219656(n)-A001489(n)` -/
def P7761617817194262979.Spec : Prop :=
  ∀ n, P7761617817194262979.a n = A219657 n

theorem P7761617817194262979.correct : P7761617817194262979.Spec := by
  intro n
  simp only [A219657, Nat.add_sub_cancel, A219657.P7761617817194262979.a, A219657.P5273342973543630628.a, A001489, A001489.P15233530513763566776.a, A219656, A219656.P7922601538606286653.f1, A219656.P7922601538606286653.a, A219652, A219652.P12184869098295570606.a, A219651, A219651.P5835350949150730882.a, A034968, A034968.P11463317321541393924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219657

/-! ## A219657.P10074005578566036950

`A219647(n)-(A219646(n)-A219656(n))`
-/

namespace A219657.P10074005578566036950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219647 n - (A219646 n - A219656 n)

end

end A219657.P10074005578566036950

namespace A219657

/-- `A219647(n)-(A219646(n)-A219656(n))` -/
def P10074005578566036950.Spec : Prop :=
  ∀ n, P10074005578566036950.a n = A219657 n

theorem P10074005578566036950.correct : P10074005578566036950.Spec := by
  intro n
  simp only [A219657, Nat.add_sub_cancel, A219657.P10074005578566036950.a, A219657.P5273342973543630628.a, A219646, A219646.P1459568560880754385.f1, A219646.P1459568560880754385.a, A219647, A219647.P16831968749245997982.a, A219656, A219656.P7922601538606286653.f1, A219656.P7922601538606286653.a, A219642, A219642.P8698780994322484832.a, A219652, A219652.P12184869098295570606.a, A219641, A219641.P1602393212941527080.a, A219651, A219651.P5835350949150730882.a, A007895, A007895.P13159574906702943091.a, A034968, A034968.P11463317321541393924.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219657

/-! ## A219657.P17963831230839581954

`A004273(n)-(A004526(A004273(n))-A219656(n))`
-/

namespace A219657.P17963831230839581954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n - (A004526 (A004273 n).toNat - A219656 n)

end

end A219657.P17963831230839581954

namespace A219657

/-- `A004273(n)-(A004526(A004273(n))-A219656(n))` -/
def P17963831230839581954.Spec : Prop :=
  ∀ n, P17963831230839581954.a n = A219657 n

end A219657

/-! ## A219657.P2126083001027990012

`n-(A218254(A213707(n))-A219656(n))`
-/

namespace A219657.P2126083001027990012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A218254 (A213707 n).toNat - A219656 n)

end

end A219657.P2126083001027990012

namespace A219657

/-- `n-(A218254(A213707(n))-A219656(n))` -/
def P2126083001027990012.Spec : Prop :=
  ∀ n, P2126083001027990012.a n = A219657 n

end A219657

/-! ## A219657.P14529374877746776884

`eq[0, A219659(n)]`
-/

namespace A219657.P14529374877746776884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219659 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219657.P14529374877746776884

namespace A219657

/-- `eq[0, A219659(n)]` -/
def P14529374877746776884.Spec : Prop :=
  ∀ n, (P14529374877746776884.a n : ℤ) = A219657 n

end A219657

/-! ## A219657.P2866793717225747143

`record[n-A011971(n)*A219659(n)]`
-/

namespace A219657.P2866793717225747143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A011971 n * A219659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219657.P2866793717225747143

namespace A219657

/-- `record[n-A011971(n)*A219659(n)]` -/
def P2866793717225747143.Spec : Prop :=
  ∀ n, P2866793717225747143.a n = A219657 n

end A219657

/-! ## A219657.P11921048899861865541

`lt[A219659(n), A014963(A004277(n+2))]`
-/

namespace A219657.P11921048899861865541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219659 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A004277 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219657.P11921048899861865541

namespace A219657

/-- `lt[A219659(n), A014963(A004277(n+2))]` -/
def P11921048899861865541.Spec : Prop :=
  ∀ n, (P11921048899861865541.a n : ℤ) = A219657 n

end A219657

/-!
# A219658: Complement of A219650. Natural numbers that do not occur in A219651.

The programs for A219658, the canonical program `A219658.P6237713231171060493` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219658 has offset 1).

The definition of A219658 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219658.P6237713231171060493

`comp[A219650(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A219658

/-- `comp[A219650(n)]` -/
def P6237713231171060493.Spec : Prop :=
  ∀ n, (P6237713231171060493.a n : ℤ) = A219658 (n + 1)

theorem P6237713231171060493.correct : P6237713231171060493.Spec := by
  intro n
  simp only [A219658, Nat.add_sub_cancel]

end A219658

/-! ## A219658.P9456944116967284150

`comp[A219651(n)]`
-/

namespace A219658.P9456944116967284150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A219658.P9456944116967284150

namespace A219658

/-- `comp[A219651(n)]` -/
def P9456944116967284150.Spec : Prop :=
  ∀ n, (P9456944116967284150.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P1585506590411631699

`eq[0, A230424(n)]`
-/

namespace A219658.P1585506590411631699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230424 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219658.P1585506590411631699

namespace A219658

/-- `eq[0, A230424(n)]` -/
def P1585506590411631699.Spec : Prop :=
  ∀ n, (P1585506590411631699.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P17086957361905199459

`eq[1, A230425(n)]`
-/

namespace A219658.P17086957361905199459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230425 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219658.P17086957361905199459

namespace A219658

/-- `eq[1, A230425(n)]` -/
def P17086957361905199459.Spec : Prop :=
  ∀ n, (P17086957361905199459.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P6057150385667652376

`eq[1, A230426(n)]`
-/

namespace A219658.P6057150385667652376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219658.P6057150385667652376

namespace A219658

/-- `eq[1, A230426(n)]` -/
def P6057150385667652376.Spec : Prop :=
  ∀ n, (P6057150385667652376.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P12957873218999159400

`eq[1, A230427(n)]`
-/

namespace A219658.P12957873218999159400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219658.P12957873218999159400

namespace A219658

/-- `eq[1, A230427(n)]` -/
def P12957873218999159400.Spec : Prop :=
  ∀ n, (P12957873218999159400.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P4271004749920794620

`lt[A230414(n)², n]`
-/

namespace A219658.P4271004749920794620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A219658.P4271004749920794620

namespace A219658

/-- `lt[A230414(n)², n]` -/
def P4271004749920794620.Spec : Prop :=
  ∀ n, (P4271004749920794620.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P10286946144853104110

`lt[n*A230412(n), n]`
-/

namespace A219658.P10286946144853104110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A230412 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A219658.P10286946144853104110

namespace A219658

/-- `lt[n*A230412(n), n]` -/
def P10286946144853104110.Spec : Prop :=
  ∀ n, (P10286946144853104110.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P15832069455945835010

`lt[A230414(n+1), 1]+1`
-/

namespace A219658.P15832069455945835010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A219658.P15832069455945835010

namespace A219658

/-- `lt[A230414(n+1), 1]+1` -/
def P15832069455945835010.Spec : Prop :=
  ∀ n, (P15832069455945835010.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P15064981741873293823

`eq[A230412(n), A230423(n)]`
-/

namespace A219658.P15064981741873293823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230412 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219658.P15064981741873293823

namespace A219658

/-- `eq[A230412(n), A230423(n)]` -/
def P15064981741873293823.Spec : Prop :=
  ∀ n, (P15064981741873293823.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P5567115326370104819

`lt[A230414(n), A230413(n)]`
-/

namespace A219658.P5567115326370104819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230413 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219658.P5567115326370104819

namespace A219658

/-- `lt[A230414(n), A230413(n)]` -/
def P5567115326370104819.Spec : Prop :=
  ∀ n, (P5567115326370104819.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P8493062848419072555

`lt[A230414(n), A230425(n)]`
-/

namespace A219658.P8493062848419072555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230425 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219658.P8493062848419072555

namespace A219658

/-- `lt[A230414(n), A230425(n)]` -/
def P8493062848419072555.Spec : Prop :=
  ∀ n, (P8493062848419072555.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P4870666561615254883

`lt[A230414(n), A230426(n)]`
-/

namespace A219658.P4870666561615254883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219658.P4870666561615254883

namespace A219658

/-- `lt[A230414(n), A230426(n)]` -/
def P4870666561615254883.Spec : Prop :=
  ∀ n, (P4870666561615254883.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P8259360798280086924

`lt[A230414(n), A230427(n)]`
-/

namespace A219658.P8259360798280086924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219658.P8259360798280086924

namespace A219658

/-- `lt[A230414(n), A230427(n)]` -/
def P8259360798280086924.Spec : Prop :=
  ∀ n, (P8259360798280086924.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P17613690234498415987

`eq[A012245(n+1), A230423(n)]`
-/

namespace A219658.P17613690234498415987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219658.P17613690234498415987

namespace A219658

/-- `eq[A012245(n+1), A230423(n)]` -/
def P17613690234498415987.Spec : Prop :=
  ∀ n, (P17613690234498415987.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P7253596500356336484

`eq[A156297(4*n+1), A230414(n)]`
-/

namespace A219658.P7253596500356336484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219658.P7253596500356336484

namespace A219658

/-- `eq[A156297(4*n+1), A230414(n)]` -/
def P7253596500356336484.Spec : Prop :=
  ∀ n, (P7253596500356336484.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P3656946618218702891

`eq[A156297(4*n+1), A230423(n)]`
-/

namespace A219658.P3656946618218702891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156297 (4 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219658.P3656946618218702891

namespace A219658

/-- `eq[A156297(4*n+1), A230423(n)]` -/
def P3656946618218702891.Spec : Prop :=
  ∀ n, (P3656946618218702891.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P11465576632653253077

`eq[A000007(n), A230414(n)]`
-/

namespace A219658.P11465576632653253077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219658.P11465576632653253077

namespace A219658

/-- `eq[A000007(n), A230414(n)]` -/
def P11465576632653253077.Spec : Prop :=
  ∀ n, (P11465576632653253077.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P1693904589881514269

`eq[A000007(n), A230423(n)]`
-/

namespace A219658.P1693904589881514269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230423 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219658.P1693904589881514269

namespace A219658

/-- `eq[A000007(n), A230423(n)]` -/
def P1693904589881514269.Spec : Prop :=
  ∀ n, (P1693904589881514269.a n : ℤ) = A219658 (n + 1)

end A219658

/-! ## A219658.P18285520101057030844

`eq[A000038(n), A230414(n)]`
-/

namespace A219658.P18285520101057030844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230414 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A219658.P18285520101057030844

namespace A219658

/-- `eq[A000038(n), A230414(n)]` -/
def P18285520101057030844.Spec : Prop :=
  ∀ n, (P18285520101057030844.a n : ℤ) = A219658 (n + 1)

end A219658

/-!
# A219659: Irregular table where row n (n >= 0) starts with n, the next term is A219651(n), and the successive terms are obtained by repeatedly subtracting the sum of digits in the previous term's factorial expansion, until zero is reached, after which the next row starts with one larger n.

The programs for A219659, there is no canonical definition to state claims against.
-/

/-! ## A219659.P11547574743340457300

`A073932(n+1)-A082586(A214215(n+1))`
-/

namespace A219659.P11547574743340457300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073932 (n + 1) - A082586 (A214215 (n + 1)).toNat

end

end A219659.P11547574743340457300

/-! ## A219659.P3201218566623491512

`A144789(A379972(n+1))`
-/

namespace A219659.P3201218566623491512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144789 (A379972 (n + 1)).toNat

end

end A219659.P3201218566623491512

/-! ## A219659.P12121230867357008152

`A122201(lt[A143472(n), A262191(n+5)])`
-/

namespace A219659.P12121230867357008152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143472 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262191 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122201 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219659.P12121230867357008152

/-! ## A219659.P3484586559174857639

`A089840(lt[A058334(n+1), A108435(n+4)])`
-/

namespace A219659.P3484586559174857639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108435 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219659.P3484586559174857639

/-! ## A219659.P16811266408646557260

`A025581(lt[A292258(n+1), 21])`
-/

namespace A219659.P16811266408646557260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292258 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A219659.P16811266408646557260

/-!
# A219660: a(n) = number of bit-positions where Fibonacci numbers F(n) and F(n+1) contain both an 1-bit in their binary representation.

The programs for A219660, the canonical program `A219660.P14458110715348428642` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219660 has offset 0).

The definition of A219660 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219660.P14458110715348428642

`A000120(A051122(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A219660

/-- `A000120(A051122(n))` -/
def P14458110715348428642.Spec : Prop :=
  ∀ n, P14458110715348428642.a n = A219660 n

theorem P14458110715348428642.correct : P14458110715348428642.Spec := by
  intro n
  simp only [A219660]

end A219660

/-! ## A219660.P5723821857609010197

`A207328(and(A000045(n), A052956(n)))`
-/

namespace A219660.P5723821857609010197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207328 (Int.land (A000045 n) (A052956 n)).toNat

end

end A219660.P5723821857609010197

namespace A219660

/-- `A207328(and(A000045(n), A052956(n)))` -/
def P5723821857609010197.Spec : Prop :=
  ∀ n, P5723821857609010197.a n = A219660 n

end A219660

/-! ## A219660.P9568308307363257459

`A000120(A051123(n)-A051124(n))`
-/

namespace A219660.P9568308307363257459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A051123 n - A051124 n).toNat

end

end A219660.P9568308307363257459

namespace A219660

/-- `A000120(A051123(n)-A051124(n))` -/
def P9568308307363257459.Spec : Prop :=
  ∀ n, P9568308307363257459.a n = A219660 n

end A219660

/-! ## A219660.P15268561501748851179

`A000120(and(A000045(n+1), A000045(n)))`
-/

namespace A219660.P15268561501748851179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.land (A000045 (n + 1)) (A000045 n)).toNat

end

end A219660.P15268561501748851179

namespace A219660

/-- `A000120(and(A000045(n+1), A000045(n)))` -/
def P15268561501748851179.Spec : Prop :=
  ∀ n, P15268561501748851179.a n = A219660 n

end A219660

/-! ## A219660.P1955856859292481631

`A007302(and(A000045(n+1), A000045(n)))`
-/

namespace A219660.P1955856859292481631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007302 (Int.land (A000045 (n + 1)) (A000045 n)).toNat

end

end A219660.P1955856859292481631

namespace A219660

/-- `A007302(and(A000045(n+1), A000045(n)))` -/
def P1955856859292481631.Spec : Prop :=
  ∀ n, P1955856859292481631.a n = A219660 n

end A219660

/-!
# A219661: Number of steps to go from (n+1)!-1 to n!-1 with map x -> x - (sum of digits in factorial base representation of x).

The programs for A219661, the canonical program `A219661.P4255572767879971879` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219661 has offset 1).

The definition of A219661 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219652, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219661.P1562382448577476439

`A219662(n+1)+A219663(n+1)`
-/

namespace A219661.P1562382448577476439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219662 (n + 1) + A219663 (n + 1)

end

end A219661.P1562382448577476439

namespace A219661

/-- `A219662(n+1)+A219663(n+1)` -/
def P1562382448577476439.Spec : Prop :=
  ∀ n, P1562382448577476439.a n = A219661 (n + 1)

end A219661

/-! ## A219661.P4255572767879971879

`A219652((n+2)!-1)-A219652((n+1)!-1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A219661

/-- `A219652((n+2)!-1)-A219652((n+1)!-1)` -/
def P4255572767879971879.Spec : Prop :=
  ∀ n, P4255572767879971879.a n = A219661 (n + 1)

theorem P4255572767879971879.correct : P4255572767879971879.Spec := by
  intro n
  simp only [A219661, Nat.add_sub_cancel]

end A219661

/-! ## A219661.P15292335397179392251

`Δ[A219665(n+1)]`
-/

namespace A219661.P15292335397179392251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219661.P15292335397179392251

namespace A219661

/-- `Δ[A219665(n+1)]` -/
def P15292335397179392251.Spec : Prop :=
  ∀ n, P15292335397179392251.a n = A219661 (n + 1)

end A219661

/-! ## A219661.P6838416227348389589

`Δ[A226061(n+1)]`
-/

namespace A219661.P6838416227348389589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219661.P6838416227348389589

namespace A219661

/-- `Δ[A226061(n+1)]` -/
def P6838416227348389589.Spec : Prop :=
  ∀ n, P6838416227348389589.a n = A219661 (n + 1)

end A219661

/-! ## A219661.P8512200416692271156

`Δ[record[A226061(A143182(n))]]`
-/

namespace A219661.P8512200416692271156
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226061 (A143182 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219661.P8512200416692271156

namespace A219661

/-- `Δ[record[A226061(A143182(n))]]` -/
def P8512200416692271156.Spec : Prop :=
  ∀ n, P8512200416692271156.a n = A219661 (n + 1)

end A219661

/-!
# A219662: Number of times an even number is encountered, when going from (n+1)!-1 to n!-1 using the iterative process described in A219652.

The programs for A219662, there is no canonical definition to state claims against.
-/

/-! ## A219662.P3171247558931435533

`A219661(n+1)-A219663(n+1)`
-/

namespace A219662.P3171247558931435533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219661 (n + 1) - A219663 (n + 1)

end

end A219662.P3171247558931435533

/-! ## A219662.P18149215711293083372

`Δ[A219665(n+1)]-A219663(n+1)`
-/

namespace A219662.P18149215711293083372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A219663 (n + 1)

end

end A219662.P18149215711293083372

/-! ## A219662.P6853333526083371886

`Δ[A226061(n+1)]-A219663(n+1)`
-/

namespace A219662.P6853333526083371886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A219663 (n + 1)

end

end A219662.P6853333526083371886

/-! ## A219662.P9506608843025164846

`A226061(n+2)-(A226061(n+1)+A219663(n+1))`
-/

namespace A219662.P9506608843025164846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226061 (n + 2) - (A226061 (n + 1) + A219663 (n + 1))

end

end A219662.P9506608843025164846

/-! ## A219662.P4832224931693298166

`A219665(n+2)-A219665(n+1)-A219663(n+1)`
-/

namespace A219662.P4832224931693298166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219665 (n + 2) - A219665 (n + 1) - A219663 (n + 1)

end

end A219662.P4832224931693298166

/-!
# A219663: Number of times an odd number is encountered, when going from (n+1)!-1 to n!-1 using the iterative process described in A219652.

The programs for A219663, there is no canonical definition to state claims against.
-/

/-! ## A219663.P12535934859520148979

`A219661(n+1)-A219662(n+1)`
-/

namespace A219663.P12535934859520148979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219661 (n + 1) - A219662 (n + 1)

end

end A219663.P12535934859520148979

/-! ## A219663.P2215602792089794397

`Δ[A219665(n+1)]-A219662(n+1)`
-/

namespace A219663.P2215602792089794397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219665 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A219662 (n + 1)

end

end A219663.P2215602792089794397

/-! ## A219663.P15192898978953931543

`Δ[A226061(n+1)]-A219662(n+1)`
-/

namespace A219663.P15192898978953931543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226061 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A219662 (n + 1)

end

end A219663.P15192898978953931543

/-! ## A219663.P8022898633543644562

`A219665(n+2)-A219665(n+1)-A219662(n+1)`
-/

namespace A219663.P8022898633543644562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219665 (n + 2) - A219665 (n + 1) - A219662 (n + 1)

end

end A219663.P8022898633543644562

/-! ## A219663.P18414884526994234866

`A226061(n+2)-A226061(n+1)-A219662(n+1)`
-/

namespace A219663.P18414884526994234866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226061 (n + 2) - A226061 (n + 1) - A219662 (n + 1)

end

end A219663.P18414884526994234866

/-!
# A219664: Repeating part of A220664: First differences of the numbers given as concatenation of permutations of (1,...,m) for sufficiently large m.

The programs for A219664, there is no canonical definition to state claims against.
-/

/-! ## A219664.P12005005712471351799

`9*A217626(n+1)`
-/

namespace A219664.P12005005712471351799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A217626 (n + 1)

end

end A219664.P12005005712471351799

/-! ## A219664.P3703610073297488864

`A220664(A220655(n+1))`
-/

namespace A219664.P3703610073297488864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220664 (A220655 (n + 1)).toNat

end

end A219664.P3703610073297488864

/-! ## A219664.P6183047891092454013

`Δ[A050278(1+n)]`
-/

namespace A219664.P6183047891092454013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219664.P6183047891092454013

/-! ## A219664.P15339519356157085550

`Δ[A050289(1+n)]`
-/

namespace A219664.P15339519356157085550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050289 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219664.P15339519356157085550

/-! ## A219664.P15457109904194853920

`Δ[A178477(n+1)]`
-/

namespace A219664.P15457109904194853920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219664.P15457109904194853920

/-! ## A219664.P4226682611420476697

`Δ[A178478(n+1)]`
-/

namespace A219664.P4226682611420476697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178478 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219664.P4226682611420476697

/-! ## A219664.P14318253507415849495

`A050278(n+2)-A050278(n+1)`
-/

namespace A219664.P14318253507415849495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050278 (n + 2) - A050278 (n + 1)

end

end A219664.P14318253507415849495

/-! ## A219664.P17386627586390368444

`A050289(n+2)-A050289(n+1)`
-/

namespace A219664.P17386627586390368444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050289 (n + 2) - A050289 (n + 1)

end

end A219664.P17386627586390368444

/-! ## A219664.P15327458318858843473

`A178477(n+2)-A178477(n+1)`
-/

namespace A219664.P15327458318858843473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178477 (n + 2) - A178477 (n + 1)

end

end A219664.P15327458318858843473

/-! ## A219664.P370346879048064313

`A178478(n+2)-A178478(n+1)`
-/

namespace A219664.P370346879048064313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178478 (n + 2) - A178478 (n + 1)

end

end A219664.P370346879048064313

/-! ## A219664.P1430886903267123056

`Δ[A178476(n+1)]`
-/

namespace A219664.P1430886903267123056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219664.P1430886903267123056

/-! ## A219664.P8937412933721164607

`A008591(A217626(n+1))`
-/

namespace A219664.P8937412933721164607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A217626 (n + 1)).toNat

end

end A219664.P8937412933721164607

/-! ## A219664.P16629124141587909680

`A178476(n+2)-A178476(n+1)`
-/

namespace A219664.P16629124141587909680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178476 (n + 2) - A178476 (n + 1)

end

end A219664.P16629124141587909680

/-! ## A219664.P10695430140353044332

`Δ[A007092(A023744(n+1))]`
-/

namespace A219664.P10695430140353044332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A023744 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219664.P10695430140353044332

/-! ## A219664.P1081157805565687781

`A107346(n+1)`
-/

namespace A219664.P1081157805565687781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107346 (n + 1)

end

end A219664.P1081157805565687781

/-! ## A219664.P10774545099687555425

`Δ[A178475(n+1)]`
-/

namespace A219664.P10774545099687555425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178475 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219664.P10774545099687555425

/-! ## A219664.P693898181925015616

`A178475(n+2)-A178475(n+1)`
-/

namespace A219664.P693898181925015616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178475 (n + 2) - A178475 (n + 1)

end

end A219664.P693898181925015616

/-!
# A219665: One more than the partial sums of A219661.

The programs for A219665, the canonical program `A219665.P14331942833812049253` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219665 has offset 1).

The definition of A219665 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A219652, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A219665.P13088832986306042488

`A226061(n+1)+1`
-/

namespace A219665.P13088832986306042488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226061 (n + 1) + 1

end

end A219665.P13088832986306042488

namespace A219665

/-- `A226061(n+1)+1` -/
def P13088832986306042488.Spec : Prop :=
  ∀ n, P13088832986306042488.a n = A219665 (n + 1)

theorem P13088832986306042488.correct : P13088832986306042488.Spec := by
  intro n
  simp only [A219665, Nat.add_sub_cancel, A219665.P13088832986306042488.a, A219665.P14331942833812049253.a, A219652, A219652.P12184869098295570606.a, A226061, A226061.P362389854874692894.a, A219651, A219651.P5835350949150730882.a, A034968, A034968.P11463317321541393924.a, A099563, A099563.P5019841788924108469.f2, A099563.P5019841788924108469.f1, A099563.P5019841788924108469.f4, A099563.P5019841788924108469.f3, A099563.P5019841788924108469.a, A257687, A257687.P7012285749589745258.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A219665

/-! ## A219665.P14331942833812049253

`A219652((n+1)!)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A219665

/-- `A219652((n+1)!)` -/
def P14331942833812049253.Spec : Prop :=
  ∀ n, P14331942833812049253.a n = A219665 (n + 1)

theorem P14331942833812049253.correct : P14331942833812049253.Spec := by
  intro n
  simp only [A219665, Nat.add_sub_cancel]

end A219665

/-! ## A219665.P15093904247178907329

`A219661(n)+a(n-1)` with `a(0)=1`
-/

namespace A219665.P15093904247178907329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A219661 n + a (n - 1)

end

end A219665.P15093904247178907329

namespace A219665

/-- `A219661(n)+a(n-1)` -/
def P15093904247178907329.Spec : Prop :=
  ∀ n, P15093904247178907329.a n = A219665 (n + 1)

end A219665

/-! ## A219665.P8812536917269005305

`∑[A219661(A028310(n))]`
-/

namespace A219665.P8812536917269005305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219661 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219665.P8812536917269005305

namespace A219665

/-- `∑[A219661(A028310(n))]` -/
def P8812536917269005305.Spec : Prop :=
  ∀ n, P8812536917269005305.a n = A219665 (n + 1)

end A219665

/-! ## A219665.P1257218882515069250

`∑[A219661(A123108(2*n))]`
-/

namespace A219665.P1257218882515069250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219661 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219665.P1257218882515069250

namespace A219665

/-- `∑[A219661(A123108(2*n))]` -/
def P1257218882515069250.Spec : Prop :=
  ∀ n, P1257218882515069250.a n = A219665 (n + 1)

end A219665

/-!
# A219666: The infinite trunk of factorial expansion beanstalk. The only infinite sequence such that a(n-1) = a(n) - sum of digits in factorial expansion of a(n).

The programs for A219666, there is no canonical definition to state claims against.
-/

/-! ## A219666.P5750677473174045359

`A230416(A230432(n))`
-/

namespace A219666.P5750677473174045359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230416 (A230432 n).toNat

end

end A219666.P5750677473174045359

/-! ## A219666.P10882502251058499680

`∑[A230406(n)]`
-/

namespace A219666.P10882502251058499680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230406 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219666.P10882502251058499680

/-! ## A219666.P1954786238971598618

`A231723(n)+A219653(n)`
-/

namespace A219666.P1954786238971598618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231723 n + A219653 n

end

end A219666.P1954786238971598618

/-! ## A219666.P3501577756109514913

`A219655(n)-A231724(n)`
-/

namespace A219666.P3501577756109514913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219655 n - A231724 n

end

end A219666.P3501577756109514913

/-! ## A219666.P11705799178099692339

`eq[0, A230425(n)]`
-/

namespace A219666.P11705799178099692339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230425 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219666.P11705799178099692339

/-! ## A219666.P10758172623975740967

`eq[0, A230426(n)]`
-/

namespace A219666.P10758172623975740967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230426 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219666.P10758172623975740967

/-! ## A219666.P10858443843966714468

`eq[0, A230427(n)]`
-/

namespace A219666.P10858443843966714468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A219666.P10858443843966714468

/-! ## A219666.P7332742408684531283

`A219651(A230430(n))`
-/

namespace A219666.P7332742408684531283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219651 (A230430 n).toNat

end

end A219666.P7332742408684531283

/-! ## A219666.P9860647522596161726

`record[n-A034968(n)*A230427(n)]`
-/

namespace A219666.P9860647522596161726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A034968 n * A230427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219666.P9860647522596161726

/-! ## A219666.P9750272017719846516

`A230416(A219652(A230416(n)))`
-/

namespace A219666.P9750272017719846516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230416 (A219652 (A230416 n).toNat).toNat

end

end A219666.P9750272017719846516

/-! ## A219666.P6474134890986660817

`record[gcd(n, A034968(A230427(n)²))]`
-/

namespace A219666.P6474134890986660817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A034968 (A230427 n ^ 2).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219666.P6474134890986660817

/-! ## A219666.P10461181314025961134

`lt[A135530(n)*A230427(n), 1]`
-/

namespace A219666.P10461181314025961134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 n * A230427 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A219666.P10461181314025961134

/-!
# A219667: Number of happy numbers without zeros and with digits in nondecreasing order <= 10^n.

The programs for A219667, there is no canonical definition to state claims against.
-/

/-! ## A219667.P4506242315877454478

`A327259(A081284(n)+A024207(n))`
-/

namespace A219667.P4506242315877454478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327259 (A081284 n + A024207 n).toNat

end

end A219667.P4506242315877454478

/-! ## A219667.P1625073011383992708

`A002264(or(A136512(n), A203570(n)))`
-/

namespace A219667.P1625073011383992708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (Int.lor (A136512 n) (A203570 n)).toNat

end

end A219667.P1625073011383992708

/-!
# A219668: Numbers m for which sigma(m) - m = tau(m)^k for some integer k > 0.

The programs for A219668, there is no canonical definition to state claims against.
-/

/-! ## A219668.P7579893560079434773

`A111305(∑[A111634(n+1)])`
-/

namespace A219668.P7579893560079434773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111634 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111305 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A219668.P7579893560079434773

/-!
# A219669: Primes neighboring a 5-smooth number.

The programs for A219669, there is no canonical definition to state claims against.
-/

/-! ## A219669.P12193858767550709722

`∪[A002200(n+1), A293194(n+1)]`
-/

namespace A219669.P12193858767550709722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002200 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A219669.P12193858767550709722

/-! ## A219669.P1653006990519221563

`A000040(lt[A086376(n), A053626(n+1)])`
-/

namespace A219669.P1653006990519221563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086376 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219669.P1653006990519221563

/-! ## A219669.P727814051211282314

`A346153(A033994(n+1))`
-/

namespace A219669.P727814051211282314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346153 (A033994 (n + 1)).toNat

end

end A219669.P727814051211282314

/-! ## A219669.P18086981797754876489

`A346153(∑[∑[A047216(2*(n+1))]])`
-/

namespace A219669.P18086981797754876489
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047216 (2 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346153 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A219669.P18086981797754876489

/-! ## A219669.P405146410097028384

`A000040(∑[runs[A329205(3*(n+1))]])`
-/

namespace A219669.P405146410097028384
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329205 (3 * (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219669.P405146410097028384

/-!
# A219670: Number of n-step paths on cubic lattice from (0,0,0) to (1,0,0) with moves in any direction on {-1,0,1}^3 and zero moves allowed.

The programs for A219670, there is no canonical definition to state claims against.
-/

/-! ## A219670.P4162042880741830579

`Δ[A097861(n)]*A168597(n)`
-/

namespace A219670.P4162042880741830579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A168597 n

end

end A219670.P4162042880741830579

/-! ## A219670.P5029636375987768074

`A002426(n)²*Δ[A097861(n)]`
-/

namespace A219670.P5029636375987768074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n ^ 2 * (f1 (n + 1) - f1 n)

end

end A219670.P5029636375987768074

/-! ## A219670.P8851143331142738136

`A002426(n)²*A005213(2*n+1)`
-/

namespace A219670.P8851143331142738136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 n ^ 2 * A005213 (2 * n + 1)

end

end A219670.P8851143331142738136

/-! ## A219670.P2993515241176778450

`A025178(n+1)/2*A002426(n)²`
-/

namespace A219670.P2993515241176778450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025178 (n + 1) : ℚ) / 2 * (A002426 n ^ 2 : ℚ)

end

end A219670.P2993515241176778450

/-! ## A219670.P8095746664553057686

`A005213(2*n)²*A005213(2*n+1)`
-/

namespace A219670.P8095746664553057686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005213 (2 * n) ^ 2 * A005213 (2 * n + 1)

end

end A219670.P8095746664553057686

/-! ## A219670.P3742466209040830680

`(A002426(n)-A005043(n))*A002426(n)²`
-/

namespace A219670.P3742466209040830680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002426 n - A005043 n) * A002426 n ^ 2

end

end A219670.P3742466209040830680

/-! ## A219670.P11950428161894019729

`sqrt(A219986(n))*A002426(n)`
-/

namespace A219670.P11950428161894019729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A219986 n : ℝ) * (A002426 n : ℝ)

end

end A219670.P11950428161894019729

/-!
# A219671: Number of n-step paths on cubic lattice from (0,0,0) to (1,0,0) with moves in any direction but no zero moves allowed.

The programs for A219671, there is no canonical definition to state claims against.
-/

/-! ## A219671.P10720411582740882486

`n²*A061500(n!²)`
-/

namespace A219671.P10720411582740882486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A061500 (Nat.factorial n ^ 2)

end

end A219671.P10720411582740882486

/-!
# A219672: a(n) = Sum_{k=0..n} binomial(n,k)^2*Fibonacci(k).

The programs for A219672, the canonical program `A219672.P17993281874233651930` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219672 has offset 0).

The definition of A219672 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)²*A000045(#)]` (program `A219672.P17993281874233651930`, by `A219672.P17993281874233651930.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219672.P17993281874233651930

`∑{#}[n, C(n, #)²*A000045(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A219672

/-- `∑{#}[n, C(n, #)²*A000045(#)]` -/
def P17993281874233651930.Spec : Prop :=
  ∀ n, P17993281874233651930.a n = A219672 n

theorem P17993281874233651930.correct : P17993281874233651930.Spec := by
  intro n
  simp only [A219672]

end A219672

/-! ## A219672.P17172694058760663616

`A114198(n)+A114198(n)-A219673(n)`
-/

namespace A219672.P17172694058760663616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114198 n + (A114198 n - A219673 n)

end

end A219672.P17172694058760663616

namespace A219672

/-- `A114198(n)+A114198(n)-A219673(n)` -/
def P17172694058760663616.Spec : Prop :=
  ∀ n, P17172694058760663616.a n = A219672 n

end A219672

/-! ## A219672.P17498241354740020697

`2*A114198(n)-A219673(n)`
-/

namespace A219672.P17498241354740020697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114198 n - A219673 n

end

end A219672.P17498241354740020697

namespace A219672

/-- `2*A114198(n)-A219673(n)` -/
def P17498241354740020697.Spec : Prop :=
  ∀ n, P17498241354740020697.a n = A219672 n

end A219672

/-! ## A219672.P5173255753760621519

`(2*A114198(A028310(n)))%A219673(n)`
-/

namespace A219672.P5173255753760621519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A114198 (A028310 n).toNat) (A219673 n)

end

end A219672.P5173255753760621519

namespace A219672

/-- `(2*A114198(A028310(n)))%A219673(n)` -/
def P5173255753760621519.Spec : Prop :=
  ∀ n, P5173255753760621519.a n = A219672 n

end A219672

/-! ## A219672.P11082268951900222664

`(2*A114198(n))%(A219673(n)^A304042(n))`
-/

namespace A219672.P11082268951900222664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A114198 n) (SequenceMachineLib.roundAway ((A219673 n : ℚ) ^ (A304042 n : ℤ)))

end

end A219672.P11082268951900222664

namespace A219672

/-- `(2*A114198(n))%(A219673(n)^A304042(n))` -/
def P11082268951900222664.Spec : Prop :=
  ∀ n, P11082268951900222664.a n = A219672 n

end A219672

/-!
# A219673: a(n) = Sum_{k=0..n} binomial(n,k)^2*Lucas(k) where Lucas(n) = A000032(n).

The programs for A219673, the canonical program `A219673.P18204926787379279707` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219673 has offset 0).

The definition of A219673 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)²*A000032(#)]` (program `A219673.P18204926787379279707`, by `A219673.P18204926787379279707.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219673.P18204926787379279707

`∑{#}[n, C(n, #)²*A000032(#)]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A219673

/-- `∑{#}[n, C(n, #)²*A000032(#)]` -/
def P18204926787379279707.Spec : Prop :=
  ∀ n, P18204926787379279707.a n = A219673 n

theorem P18204926787379279707.correct : P18204926787379279707.Spec := by
  intro n
  simp only [A219673]

end A219673

/-! ## A219673.P2595312852129457541

`A114198(n)+A114198(n)-A219672(n)`
-/

namespace A219673.P2595312852129457541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114198 n + (A114198 n - A219672 n)

end

end A219673.P2595312852129457541

namespace A219673

/-- `A114198(n)+A114198(n)-A219672(n)` -/
def P2595312852129457541.Spec : Prop :=
  ∀ n, P2595312852129457541.a n = A219673 n

end A219673

/-! ## A219673.P17163379226492841577

`2*A114198(n)-A219672(n)`
-/

namespace A219673.P17163379226492841577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114198 n - A219672 n

end

end A219673.P17163379226492841577

namespace A219673

/-- `2*A114198(n)-A219672(n)` -/
def P17163379226492841577.Spec : Prop :=
  ∀ n, P17163379226492841577.a n = A219673 n

end A219673

/-! ## A219673.P12075156685518208878

`2*A114198(n)+A001478(A219672(n)+1)+1`
-/

namespace A219673.P12075156685518208878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114198 n + (A001478 (A219672 n + 1).toNat + 1)

end

end A219673.P12075156685518208878

namespace A219673

/-- `2*A114198(n)+A001478(A219672(n)+1)+1` -/
def P12075156685518208878.Spec : Prop :=
  ∀ n, P12075156685518208878.a n = A219673 n

end A219673

/-!
# A219675: Starting with a(0)=0, a(n) = 1 + the sum of the digital sums of a(0) through a(n-1).

The programs for A219675, the canonical program `A219675.P3662688382853343317` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219675 has offset 0).

The definition of A219675 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219675.P861323272522236529

`A004207(n)-floor(acot(n))`
-/

namespace A219675.P861323272522236529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A219675.P861323272522236529

namespace A219675

/-- `A004207(n)-floor(acot(n))` -/
def P861323272522236529.Spec : Prop :=
  ∀ n, P861323272522236529.a n = A219675 n

end A219675

/-! ## A219675.P7895694866991958530

`A065075(n)+a(n-1)` with `a(0)=0`
-/

namespace A219675.P7895694866991958530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A065075 n + a (n - 1)

end

end A219675.P7895694866991958530

namespace A219675

/-- `A065075(n)+a(n-1)` -/
def P7895694866991958530.Spec : Prop :=
  ∀ n, P7895694866991958530.a n = A219675 n

end A219675

/-! ## A219675.P3662688382853343317

`A004207(n)-A000007(n)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A219675

/-- `A004207(n)-A000007(n)` -/
def P3662688382853343317.Spec : Prop :=
  ∀ n, P3662688382853343317.a n = A219675 n

theorem P3662688382853343317.correct : P3662688382853343317.Spec := by
  intro n
  simp only [A219675]

end A219675

/-! ## A219675.P9547164530859194377

`A004207(n)*A057427(n)`
-/

namespace A219675.P9547164530859194377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n * A057427 n

end

end A219675.P9547164530859194377

namespace A219675

/-- `A004207(n)*A057427(n)` -/
def P9547164530859194377.Spec : Prop :=
  ∀ n, P9547164530859194377.a n = A219675 n

end A219675

/-! ## A219675.P17944588289054912620

`A004207(n)%A000156(n)`
-/

namespace A219675.P17944588289054912620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004207 n) (A000156 n)

end

end A219675.P17944588289054912620

namespace A219675

/-- `A004207(n)%A000156(n)` -/
def P17944588289054912620.Spec : Prop :=
  ∀ n, P17944588289054912620.a n = A219675 n

end A219675

/-! ## A219675.P6897229793436954181

`lcm(A004207(n), A112347(n))`
-/

namespace A219675.P6897229793436954181
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004207 n) (A112347 n)

end

end A219675.P6897229793436954181

namespace A219675

/-- `lcm(A004207(n), A112347(n))` -/
def P6897229793436954181.Spec : Prop :=
  ∀ n, (P6897229793436954181.a n : ℤ) = A219675 n

end A219675

/-! ## A219675.P5931872671095790762

`and(A004207(n), A057428(n))`
-/

namespace A219675.P5931872671095790762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004207 n) (A057428 n)

end

end A219675.P5931872671095790762

namespace A219675

/-- `and(A004207(n), A057428(n))` -/
def P5931872671095790762.Spec : Prop :=
  ∀ n, P5931872671095790762.a n = A219675 n

end A219675

/-! ## A219675.P12185988129349420392

`and(A004207(n), A134824(n))`
-/

namespace A219675.P12185988129349420392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004207 n) (A134824 n)

end

end A219675.P12185988129349420392

namespace A219675

/-- `and(A004207(n), A134824(n))` -/
def P12185988129349420392.Spec : Prop :=
  ∀ n, P12185988129349420392.a n = A219675 n

end A219675

/-! ## A219675.P2775269426944048608

`A004207(n)+A040000(n)-2`
-/

namespace A219675.P2775269426944048608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n + (A040000 n - 2)

end

end A219675.P2775269426944048608

namespace A219675

/-- `A004207(n)+A040000(n)-2` -/
def P2775269426944048608.Spec : Prop :=
  ∀ n, P2775269426944048608.a n = A219675 n

end A219675

/-! ## A219675.P12860205000508393416

`A004207(n)-A004277(n)%2`
-/

namespace A219675.P12860205000508393416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n - Int.tmod (A004277 n) 2

end

end A219675.P12860205000508393416

namespace A219675

/-- `A004207(n)-A004277(n)%2` -/
def P12860205000508393416.Spec : Prop :=
  ∀ n, P12860205000508393416.a n = A219675 n

end A219675

/-! ## A219675.P11098654922815041979

`A004207(n)+n-A028310(n)`
-/

namespace A219675.P11098654922815041979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n + ((n : ℤ) - A028310 n)

end

end A219675.P11098654922815041979

namespace A219675

/-- `A004207(n)+n-A028310(n)` -/
def P11098654922815041979.Spec : Prop :=
  ∀ n, P11098654922815041979.a n = A219675 n

end A219675

/-! ## A219675.P16982007274832219587

`A004207(n+1)-A065075(n+1)`
-/

namespace A219675.P16982007274832219587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 (n + 1) - A065075 (n + 1)

end

end A219675.P16982007274832219587

namespace A219675

/-- `A004207(n+1)-A065075(n+1)` -/
def P16982007274832219587.Spec : Prop :=
  ∀ n, P16982007274832219587.a n = A219675 n

end A219675

/-! ## A219675.P357252718783882471

`A004207(n)-A000010(n+2)%2`
-/

namespace A219675.P357252718783882471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n - Int.tmod (A000010 (n + 2)) 2

end

end A219675.P357252718783882471

namespace A219675

/-- `A004207(n)-A000010(n+2)%2` -/
def P357252718783882471.Spec : Prop :=
  ∀ n, P357252718783882471.a n = A219675 n

end A219675

/-! ## A219675.P4999096626426033984

`A004207(A028310(n))%A286660(n)`
-/

namespace A219675.P4999096626426033984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004207 (A028310 n).toNat) (A286660 n)

end

end A219675.P4999096626426033984

namespace A219675

/-- `A004207(A028310(n))%A286660(n)` -/
def P4999096626426033984.Spec : Prop :=
  ∀ n, P4999096626426033984.a n = A219675 n

end A219675

/-! ## A219675.P13390701594722639441

`A004207(n)-(A286660(A028310(n))-A286660(n))`
-/

namespace A219675.P13390701594722639441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004207 n - (A286660 (A028310 n).toNat - A286660 n)

end

end A219675.P13390701594722639441

namespace A219675

/-- `A004207(n)-(A286660(A028310(n))-A286660(n))` -/
def P13390701594722639441.Spec : Prop :=
  ∀ n, P13390701594722639441.a n = A219675 n

end A219675

/-! ## A219675.P7451416998276831286

`A000007(A000007(n)*A004207(n))*A004207(n)`
-/

namespace A219675.P7451416998276831286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000007 n * A004207 n).toNat * A004207 n

end

end A219675.P7451416998276831286

namespace A219675

/-- `A000007(A000007(n)*A004207(n))*A004207(n)` -/
def P7451416998276831286.Spec : Prop :=
  ∀ n, P7451416998276831286.a n = A219675 n

end A219675

/-! ## A219675.P12000092440941227559

`xor(A000007(2*n), A004207(n))`
-/

namespace A219675.P12000092440941227559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (2 * n)) (A004207 n)

end

end A219675.P12000092440941227559

namespace A219675

/-- `xor(A000007(2*n), A004207(n))` -/
def P12000092440941227559.Spec : Prop :=
  ∀ n, P12000092440941227559.a n = A219675 n

end A219675

/-! ## A219675.P12428921987127454871

`A160931(a(n-1)-1)+1` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A219675.P12428921987127454871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  A160931 (a (n - 1) - 1).toNat + 1

end

end A219675.P12428921987127454871

namespace A219675

/-- `A160931(a(n-1)-1)+1` -/
def P12428921987127454871.Spec : Prop :=
  ∀ n, P12428921987127454871.a n = A219675 n

end A219675

/-! ## A219675.P12953759192566727703

`A062028(a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A219675.P12953759192566727703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A062028 (a (n - 1)).toNat

end

end A219675.P12953759192566727703

namespace A219675

/-- `A062028(a(n-1))` -/
def P12953759192566727703.Spec : Prop :=
  ∀ n, P12953759192566727703.a n = A219675 n

end A219675

/-! ## A219675.P7325616625848508153

`A007953(a(n-1))+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A219675.P7325616625848508153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A007953 (a (n - 1)).toNat + a (n - 1)

end

end A219675.P7325616625848508153

namespace A219675

/-- `A007953(a(n-1))+a(n-1)` -/
def P7325616625848508153.Spec : Prop :=
  ∀ n, P7325616625848508153.a n = A219675 n

end A219675

/-!
# A219676: a(n) = Sum_{k=0..13} binomial(n, k).

The programs for A219676, the canonical program `A219676.P11847803995651408889` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219676 has offset 0).

The definition of A219676 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[13, C(n, #)]` (program `A219676.P11847803995651408889`, by `A219676.P11847803995651408889.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A219676.P11847803995651408889

`∑{#}[13, C(n, #)]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219676

/-- `∑{#}[13, C(n, #)]` -/
def P11847803995651408889.Spec : Prop :=
  ∀ n, (P11847803995651408889.a n : ℤ) = A219676 n

theorem P11847803995651408889.correct : P11847803995651408889.Spec := by
  intro n
  simp only [A219676]

end A219676

/-! ## A219676.P4544007732177627562

`2*a(n-1)-C(n-1, 13)` with `a(0)=1`
-/

namespace A219676.P4544007732177627562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) - (Nat.choose ((n : ℤ) - 1).toNat 13 : ℤ)

end

end A219676.P4544007732177627562

namespace A219676

/-- `2*a(n-1)-C(n-1, 13)` -/
def P4544007732177627562.Spec : Prop :=
  ∀ n, P4544007732177627562.a n = A219676 n

end A219676

/-! ## A219676.P1319586212055367108

`Δ[A220051(n)]`
-/

namespace A219676.P1319586212055367108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A219676.P1319586212055367108

namespace A219676

/-- `Δ[A220051(n)]` -/
def P1319586212055367108.Spec : Prop :=
  ∀ n, P1319586212055367108.a n = A219676 n

end A219676

/-! ## A219676.P16780350366269515289

`A220051(n+1)-A220051(n)`
-/

namespace A219676.P16780350366269515289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220051 (n + 1) - A220051 n

end

end A219676.P16780350366269515289

namespace A219676

/-- `A220051(n+1)-A220051(n)` -/
def P16780350366269515289.Spec : Prop :=
  ∀ n, P16780350366269515289.a n = A219676 n

end A219676

/-! ## A219676.P14356128779096815065

`A055248(∑[comp[A007840(3*(n+1))]])`
-/

namespace A219676.P14356128779096815065
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007840 (3 * (n + 1))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219676.P14356128779096815065

namespace A219676

/-- `A055248(∑[comp[A007840(3*(n+1))]])` -/
def P14356128779096815065.Spec : Prop :=
  ∀ n, P14356128779096815065.a n = A219676 n

end A219676

/-! ## A219676.P16907737847491604710

`A055248(∑[comp[A007588(3*n+2)]])`
-/

namespace A219676.P16907737847491604710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007588 (3 * n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219676.P16907737847491604710

namespace A219676

/-- `A055248(∑[comp[A007588(3*n+2)]])` -/
def P16907737847491604710.Spec : Prop :=
  ∀ n, P16907737847491604710.a n = A219676 n

end A219676

/-! ## A219676.P15434445905787654866

`A055248(∑[comp[A245002(3*(n+2))]])`
-/

namespace A219676.P15434445905787654866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245002 (3 * (n + 2))

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055248 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A219676.P15434445905787654866

namespace A219676

/-- `A055248(∑[comp[A245002(3*(n+2))]])` -/
def P15434445905787654866.Spec : Prop :=
  ∀ n, P15434445905787654866.a n = A219676 n

end A219676

/-!
# A219678: Number of tripartite partitions of (n,n,n) into triples.

The programs for A219678, there is no canonical definition to state claims against.
-/

/-! ## A219678.P4768731388204149834

`A219727(∑[n+3]+n+3)`
-/

namespace A219678.P4768731388204149834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219727 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A219678.P4768731388204149834

/-! ## A219678.P6374450544908622996

`record[gcd(A219727(n), A326925(n+1))]`
-/

namespace A219678.P6374450544908622996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219727 n) (A326925 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219678.P6374450544908622996

/-!
# A219679: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X n array.

The programs for A219679, there is no canonical definition to state claims against.
-/

/-! ## A219679.P15629092680686237430

`A219686(∑[4*n]+1)`
-/

namespace A219679.P15629092680686237430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219679.P15629092680686237430

/-! ## A219679.P12830978253768022195

`lcm(∏{e}[n+1, #+1]-∑{e}[n+1, #], A219686(n²+(n+1)²))`
-/

namespace A219679.P12830978253768022195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p : ℕ) : ℤ)) (A219686 (n ^ 2 + (n + 1) ^ 2))

end

end A219679.P12830978253768022195

/-! ## A219679.P3525442411945412204

`record[A219686(A330613(n+1))]`
-/

namespace A219679.P3525442411945412204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219679.P3525442411945412204

/-! ## A219679.P16007889653330352155

`A219686(A001844(n))+char[8]`
-/

namespace A219679.P16007889653330352155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219679.P16007889653330352155

/-!
# A219680: Number of n X 2 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X 2 array.

The programs for A219680, the canonical program `A219680.P3301988451115669389` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219680 has offset 1).

The definition of A219680 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219680.P1745410390109257078

`ogf((3-11x+19x^2-16x^3+5x^4+2x^5-x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A219680.P1745410390109257078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -11, 19, -16, 5, 2, -1] [1, -5, 10, -10, 5, -1] n

end

end A219680.P1745410390109257078

namespace A219680

/-- `ogf((3-11x+19x^2-16x^3+5x^4+2x^5-x^6)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P1745410390109257078.Spec : Prop :=
  ∀ n, P1745410390109257078.a n = A219680 (n + 1)

end A219680

/-! ## A219680.P3301988451115669389

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=4, a(2)=9, a(3)=19, a(4)=35, a(5)=60, a(6)=98`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219680

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P3301988451115669389.Spec : Prop :=
  ∀ n, P3301988451115669389.a n = A219680 (n + 1)

theorem P3301988451115669389.correct : P3301988451115669389.Spec := by
  intro n
  simp only [A219680, Nat.add_sub_cancel]

end A219680

/-! ## A219680.P3212379344132823041

`A132411(n)+A055417(A028310(n))`
-/

namespace A219680.P3212379344132823041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 n + A055417 (A028310 n).toNat

end

end A219680.P3212379344132823041

namespace A219680

/-- `A132411(n)+A055417(A028310(n))` -/
def P3212379344132823041.Spec : Prop :=
  ∀ n, P3212379344132823041.a n = A219680 (n + 1)

end A219680

/-! ## A219680.P15401445113148044468

`A116722(n+1)+A301729(A004275(n))+1`
-/

namespace A219680.P15401445113148044468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116722 (n + 1) + (A301729 (A004275 n).toNat + 1)

end

end A219680.P15401445113148044468

namespace A219680

/-- `A116722(n+1)+A301729(A004275(n))+1` -/
def P15401445113148044468.Spec : Prop :=
  ∀ n, P15401445113148044468.a n = A219680 (n + 1)

end A219680

/-! ## A219680.P4275952568513435131

`A134479(n)+A097805(A167499(n+1))`
-/

namespace A219680.P4275952568513435131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134479 n + A097805 (A167499 (n + 1)).toNat

end

end A219680.P4275952568513435131

namespace A219680

/-- `A134479(n)+A097805(A167499(n+1))` -/
def P4275952568513435131.Spec : Prop :=
  ∀ n, P4275952568513435131.a n = A219680 (n + 1)

end A219680

/-!
# A219681: Number of nX3 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX3 array.

The programs for A219681, there is no canonical definition to state claims against.
-/

/-! ## A219681.P2045946681856603094

`A219686(∑[n+3]+1)`
-/

namespace A219681.P2045946681856603094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219681.P2045946681856603094

/-! ## A219681.P4141550238528893385

`A177849(n)*A219686(A034856(n+2))`
-/

namespace A219681.P4141550238528893385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177849 n * A219686 (A034856 (n + 2)).toNat

end

end A219681.P4141550238528893385

/-! ## A219681.P10481192182672039856

`A219686(A034856(n+2))%A017224(n)`
-/

namespace A219681.P10481192182672039856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219686 (A034856 (n + 2)).toNat) (A017224 n)

end

end A219681.P10481192182672039856

/-! ## A219681.P16220933216459761944

`and(A057428(n+1), A219686(A034856(n+2)))`
-/

namespace A219681.P16220933216459761944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 (n + 1)) (A219686 (A034856 (n + 2)).toNat)

end

end A219681.P16220933216459761944

/-!
# A219682: Number of n X 4 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X 4 array.

The programs for A219682, there is no canonical definition to state claims against.
-/

/-! ## A219682.P11983802337555865726

`A219686(∑[a(n-1)+1]+2)` with `a(0)=5, a(1)=5`
-/

namespace A219682.P11983802337555865726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A219682.P11983802337555865726

/-! ## A219682.P12720257290591812010

`A219686(A141214(n+1))`
-/

namespace A219682.P12720257290591812010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A141214 (n + 1)).toNat

end

end A219682.P12720257290591812010

/-! ## A219682.P4306758735840229003

`A219686(A027379(n+2))`
-/

namespace A219682.P4306758735840229003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A027379 (n + 2)).toNat

end

end A219682.P4306758735840229003

/-! ## A219682.P17227766639888309290

`A219686(A055998(n+2))`
-/

namespace A219682.P17227766639888309290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A055998 (n + 2)).toNat

end

end A219682.P17227766639888309290

/-! ## A219682.P17048804794189162014

`A219686(A155212(n)+5)`
-/

namespace A219682.P17048804794189162014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A155212 n + 5).toNat

end

end A219682.P17048804794189162014

/-!
# A219683: Number of nX5 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX5 array.

The programs for A219683, there is no canonical definition to state claims against.
-/

/-! ## A219683.P944661951816963318

`A219686(Δ[A264443(n)])`
-/

namespace A219683.P944661951816963318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (f1 (n + 1) - f1 n).toNat

end

end A219683.P944661951816963318

/-! ## A219683.P83857843633979126

`A219686(A046691(n+3))`
-/

namespace A219683.P83857843633979126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A046691 (n + 3)).toNat

end

end A219683.P83857843633979126

/-! ## A219683.P18356951582363307518

`A219686(A056115(n)+11)`
-/

namespace A219683.P18356951582363307518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A056115 n + 11).toNat

end

end A219683.P18356951582363307518

/-! ## A219683.P16752643005163448085

`A219686(eq[2, A092921(n)])`
-/

namespace A219683.P16752643005163448085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219683.P16752643005163448085

/-! ## A219683.P2942978051722773729

`A219686(eq[3, A152157(n)])`
-/

namespace A219683.P2942978051722773729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219683.P2942978051722773729

/-!
# A219684: Number of nX6 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 nX6 array.

The programs for A219684, there is no canonical definition to state claims against.
-/

/-! ## A219684.P11256130878967394032

`A219686(A052905(n+3))`
-/

namespace A219684.P11256130878967394032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A052905 (n + 3)).toNat

end

end A219684.P11256130878967394032

/-! ## A219684.P18336717229461065341

`A219686(A056119(n)+16)`
-/

namespace A219684.P18336717229461065341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A056119 n + 16).toNat

end

end A219684.P18336717229461065341

/-! ## A219684.P5401303754381085546

`A219686(eq[3, A219347(n)])`
-/

namespace A219684.P5401303754381085546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219684.P5401303754381085546

/-! ## A219684.P10366961202229624374

`A219686(eq[5, A193592(n)])`
-/

namespace A219684.P10366961202229624374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219684.P10366961202229624374

/-! ## A219684.P16230673656383724534

`A219686(eq[8, A258709(n)])`
-/

namespace A219684.P16230673656383724534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219684.P16230673656383724534

/-!
# A219685: Number of n X 7 arrays of the minimum value of corresponding elements and their horizontal, vertical, or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 n X 7 array.

The programs for A219685, there is no canonical definition to state claims against.
-/

/-! ## A219685.P4787656859390082632

`A219686(A055999(n+4))`
-/

namespace A219685.P4787656859390082632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A055999 (n + 4)).toNat

end

end A219685.P4787656859390082632

/-! ## A219685.P9905943541028200581

`A219686(A056121(n)+22)`
-/

namespace A219685.P9905943541028200581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A056121 n + 22).toNat

end

end A219685.P9905943541028200581

/-! ## A219685.P16612445091046358159

`A219686(eq[4, A219347(n)])`
-/

namespace A219685.P16612445091046358159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219685.P16612445091046358159

/-! ## A219685.P13210754567151839559

`A219686(eq[6, A193592(n)])`
-/

namespace A219685.P13210754567151839559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219685.P13210754567151839559

/-! ## A219685.P6351569045402588769

`A219686(A155212(n+3)+2)`
-/

namespace A219685.P6351569045402588769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A155212 (n + 3) + 2).toNat

end

end A219685.P6351569045402588769

/-!
# A219687: Number of 3 X n arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 3 X n array.

The programs for A219687, there is no canonical definition to state claims against.
-/

/-! ## A219687.P2731707511276313304

`A219686(∑[n+2]+4)`
-/

namespace A219687.P2731707511276313304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219687.P2731707511276313304

/-! ## A219687.P13161925879995553551

`A219686(A167614(n+1))+and(2, char[1])`
-/

namespace A219687.P13161925879995553551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A167614 (n + 1)).toNat + (Nat.land 2 (if ∃ j, f1 j = n then 1 else 0) : ℤ)

end

end A219687.P13161925879995553551

/-! ## A219687.P15207680448519054063

`record[A219686(n+4)/A132819(n+2)]`
-/

namespace A219687.P15207680448519054063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219686 (n + 4) : ℚ) / (A132819 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219687.P15207680448519054063

/-! ## A219687.P14893054590720302020

`A219686(A167614(n+1))+A011742(n)`
-/

namespace A219687.P14893054590720302020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A167614 (n + 1)).toNat + A011742 n

end

end A219687.P14893054590720302020

/-! ## A219687.P11289382141937776544

`A219686(A167614(n+1))+A025439(n)`
-/

namespace A219687.P11289382141937776544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A167614 (n + 1)).toNat + A025439 n

end

end A219687.P11289382141937776544

/-!
# A219688: Number of 4Xn arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 4Xn array.

The programs for A219688, there is no canonical definition to state claims against.
-/

/-! ## A219688.P9374951658042170479

`A219686(∑[n+3]+7)`
-/

namespace A219688.P9374951658042170479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A219688.P9374951658042170479

/-!
# A219689: Number of 5Xn arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 5Xn array.

The programs for A219689, there is no canonical definition to state claims against.
-/

/-! ## A219689.P12393161678021628247

`A219686(∑[n+4]+11)`
-/

namespace A219689.P12393161678021628247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A219689.P12393161678021628247

/-! ## A219689.P7823122538175239818

`A219686(A167499(n+3))%A263122(n+1)`
-/

namespace A219689.P7823122538175239818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219686 (A167499 (n + 3)).toNat) (A263122 (n + 1))

end

end A219689.P7823122538175239818

/-!
# A219690: Number of 6Xn arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 6Xn array.

The programs for A219690, there is no canonical definition to state claims against.
-/

/-! ## A219690.P1358410133521715228

`A219686(A166136(n+4))`
-/

namespace A219690.P1358410133521715228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A166136 (n + 4)).toNat

end

end A219690.P1358410133521715228

/-! ## A219690.P1778184907921464630

`A219686(A056115(n)+21)`
-/

namespace A219690.P1778184907921464630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A056115 n + 21).toNat

end

end A219690.P1778184907921464630

/-! ## A219690.P378872860160450778

`A219686(A167499(n+4)+1)`
-/

namespace A219690.P378872860160450778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A167499 (n + 4) + 1).toNat

end

end A219690.P378872860160450778

/-! ## A219690.P6973643050868392063

`A219686(A000124(n+5)+5)`
-/

namespace A219690.P6973643050868392063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A000124 (n + 5) + 5).toNat

end

end A219690.P6973643050868392063

/-! ## A219690.P14071393850725976777

`A219686(A000096(n+4)+7)`
-/

namespace A219690.P14071393850725976777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A000096 (n + 4) + 7).toNat

end

end A219690.P14071393850725976777

/-!
# A219691: Number of 7Xn arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and nonincreasing columns, 0..2 7Xn array.

The programs for A219691, there is no canonical definition to state claims against.
-/

/-! ## A219691.P17787255965393412813

`A219686(A056119(n)+28)`
-/

namespace A219691.P17787255965393412813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A056119 n + 28).toNat

end

end A219691.P17787255965393412813

/-! ## A219691.P2427422276208809203

`A219686(eq[11, A066657(n)])`
-/

namespace A219691.P2427422276208809203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219691.P2427422276208809203

/-! ## A219691.P17865782706225432256

`A219686(A167499(n+5)+2)`
-/

namespace A219691.P17865782706225432256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A167499 (n + 5) + 2).toNat

end

end A219691.P17865782706225432256

/-! ## A219691.P10037563096625230719

`A219686(A167614(n+5)+4)`
-/

namespace A219691.P10037563096625230719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (A167614 (n + 5) + 4).toNat

end

end A219691.P10037563096625230719

/-! ## A219691.P18086030995209057747

`A219686(eq[8, A131818(n+1)])`
-/

namespace A219691.P18086030995209057747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219686 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A219691.P18086030995209057747

/-!
# A219692: a(n) = Sum_{j=0..floor(n/3)} (-1)^j C(n,j) * C(2j,j) * C(2n-2j,n-j) * (C(2n-3j-1,n) + C(2n-3j,n)).

The programs for A219692, there is no canonical definition to state claims against.
-/

/-! ## A219692.P4202831189591223442

`A119357(A010061(a(n-1)-n))` with `a(0)=2`
-/

namespace A219692.P4202831189591223442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A119357 (A010061 (a (n - 1) - (n : ℤ)).toNat).toNat

end

end A219692.P4202831189591223442

/-!
# A219693: The number of symmetric positive definite 2 X 2 matrices whose entries are integers of absolute value at most n.

The programs for A219693, there is no canonical definition to state claims against.
-/

/-! ## A219693.P14985181218176996242

`A102098(∑[n+2]-1)+and(2*n, -n)`
-/

namespace A219693.P14985181218176996242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102098 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + Int.land (2 * n : ℤ) (-(n : ℤ))

end

end A219693.P14985181218176996242

/-! ## A219693.P11178602249503978566

`A213064(n)+(n+1)*A000005(6^n)`
-/

namespace A219693.P11178602249503978566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213064 n + (n + 1 : ℤ) * A000005 (6 ^ n)

end

end A219693.P11178602249503978566

/-! ## A219693.P10857493434371897713

`A094792(n)-A094853(A094796(n))`
-/

namespace A219693.P10857493434371897713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094792 n - A094853 (A094796 n).toNat

end

end A219693.P10857493434371897713

/-!
# A219694: Triangular array read by rows: T(n,k) is the number of functions f:{1,2,...,n} -> {1,2,...,n} that have exactly k nonrecurrent elements; n>=1, 0<=k<=n-1.

The programs for A219694, the canonical program `A219694.P2768783579713774095` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219694 has offset 1).

The definition of A219694 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A219694.P5371439033827404375

`A066324(C(row(n)+1, 2)+row(n)+1-col(n))`
-/

namespace A219694.P5371439033827404375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066324 ((Nat.choose (SequenceMachineLib.triRow n + 1) 2 : ℤ) + ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ))).toNat

end

end A219694.P5371439033827404375

namespace A219694

/-- `A066324(C(row(n)+1, 2)+row(n)+1-col(n))` -/
def P5371439033827404375.Spec : Prop :=
  ∀ n, P5371439033827404375.a n = A219694 (n + 1)

end A219694

/-! ## A219694.P2768783579713774095

`(row(n)+1-col(n))*(row(n)+1)^col(n)*row(n)!/col(n)!`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219694

/-- `(row(n)+1-col(n))*(row(n)+1)^col(n)*row(n)!/col(n)!` -/
def P2768783579713774095.Spec : Prop :=
  ∀ n, P2768783579713774095.a n = (A219694 (n + 1) : ℚ)

end A219694

/-! ## A219694.P18132781621014480692

`A076112(n+1)*A132159(n)`
-/

namespace A219694.P18132781621014480692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076112 (n + 1) * A132159 n

end

end A219694.P18132781621014480692

namespace A219694

/-- `A076112(n+1)*A132159(n)` -/
def P18132781621014480692.Spec : Prop :=
  ∀ n, P18132781621014480692.a n = A219694 (n + 1)

end A219694

/-! ## A219694.P11744370801521305474

`A002024(n+1)*A122525(n+1)`
-/

namespace A219694.P11744370801521305474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) * A122525 (n + 1)

end

end A219694.P11744370801521305474

namespace A219694

/-- `A002024(n+1)*A122525(n+1)` -/
def P11744370801521305474.Spec : Prop :=
  ∀ n, P11744370801521305474.a n = A219694 (n + 1)

end A219694

/-! ## A219694.P4868739323667547059

`A004526(A131507(n)+1)*A122525(n+1)`
-/

namespace A219694.P4868739323667547059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A131507 n + 1).toNat * A122525 (n + 1)

end

end A219694.P4868739323667547059

namespace A219694

/-- `A004526(A131507(n)+1)*A122525(n+1)` -/
def P4868739323667547059.Spec : Prop :=
  ∀ n, P4868739323667547059.a n = A219694 (n + 1)

end A219694

/-! ## A219694.P16906072507287006112

`A066324(A038722(n+1))`
-/

namespace A219694.P16906072507287006112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066324 (A038722 (n + 1)).toNat

end

end A219694.P16906072507287006112

namespace A219694

/-- `A066324(A038722(n+1))` -/
def P16906072507287006112.Spec : Prop :=
  ∀ n, P16906072507287006112.a n = A219694 (n + 1)

end A219694

/-! ## A219694.P1186807570315171608

`A066324(∑[A010054(n)]²-n)`
-/

namespace A219694.P1186807570315171608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066324 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n : ℤ)).toNat

end

end A219694.P1186807570315171608

namespace A219694

/-- `A066324(∑[A010054(n)]²-n)` -/
def P1186807570315171608.Spec : Prop :=
  ∀ n, P1186807570315171608.a n = A219694 (n + 1)

end A219694

/-! ## A219694.P5345114135241827261

`A066324(A002024(n+1)²-n)`
-/

namespace A219694.P5345114135241827261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066324 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A219694.P5345114135241827261

namespace A219694

/-- `A066324(A002024(n+1)²-n)` -/
def P5345114135241827261.Spec : Prop :=
  ∀ n, P5345114135241827261.a n = A219694 (n + 1)

end A219694

/-! ## A219694.P13547204165497238562

`A243203(2*A004736(n+1)+n)`
-/

namespace A219694.P13547204165497238562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243203 (2 * A004736 (n + 1) + (n : ℤ)).toNat

end

end A219694.P13547204165497238562

namespace A219694

/-- `A243203(2*A004736(n+1)+n)` -/
def P13547204165497238562.Spec : Prop :=
  ∀ n, P13547204165497238562.a n = A219694 (n + 1)

end A219694

/-! ## A219694.P16855619816694148167

`A243203(A004736(n+1)+A004736(n+1)+n)`
-/

namespace A219694.P16855619816694148167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243203 (A004736 (n + 1) + (A004736 (n + 1) + (n : ℤ))).toNat

end

end A219694.P16855619816694148167

namespace A219694

/-- `A243203(A004736(n+1)+A004736(n+1)+n)` -/
def P16855619816694148167.Spec : Prop :=
  ∀ n, P16855619816694148167.a n = A219694 (n + 1)

end A219694

/-! ## A219694.P560373937153955676

`A066324(n+1)/A259334(n+1)*A122525(n+1)`
-/

namespace A219694.P560373937153955676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066324 (n + 1) : ℚ) / (A259334 (n + 1) : ℚ) * (A122525 (n + 1) : ℚ)

end

end A219694.P560373937153955676

namespace A219694

/-- `A066324(n+1)/A259334(n+1)*A122525(n+1)` -/
def P560373937153955676.Spec : Prop :=
  ∀ n, P560373937153955676.a n = (A219694 (n + 1) : ℚ)

end A219694

/-! ## A219694.P7686544995904636503

`A066324(n+1)*A122525(n+1)/A259334(n+1)`
-/

namespace A219694.P7686544995904636503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066324 (n + 1) * A122525 (n + 1) : ℚ) / (A259334 (n + 1) : ℚ)

end

end A219694.P7686544995904636503

namespace A219694

/-- `A066324(n+1)*A122525(n+1)/A259334(n+1)` -/
def P7686544995904636503.Spec : Prop :=
  ∀ n, P7686544995904636503.a n = (A219694 (n + 1) : ℚ)

end A219694

/-!
# A219695: For odd numbers 2n - 1, half the difference between the largest divisor not exceeding the square root, and the least divisor not less than the square root.

The programs for A219695, there is no canonical definition to state claims against.
-/

/-! ## A219695.P10377371106271117608

`sqrt(A377499(n+1)²-(2*(n+1)-1))`
-/

namespace A219695.P10377371106271117608
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A377499 (n + 1) ^ 2 - ((2 * (n + 1) : ℤ) - 1) : ℝ)

end

end A219695.P10377371106271117608

/-! ## A219695.P508078409642704344

`A056737(2*(n+1)-1)/2`
-/

namespace A219695.P508078409642704344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056737 (2 * (n + 1) - 1) : ℚ) / 2

end

end A219695.P508078409642704344

/-! ## A219695.P13171402842212806058

`(A033677(2*(n+1)-1)-A033676(2*(n+1)-1))/2`
-/

namespace A219695.P13171402842212806058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033677 (2 * (n + 1) - 1) - A033676 (2 * (n + 1) - 1) : ℚ) / 2

end

end A219695.P13171402842212806058

/-! ## A219695.P17657608202251524172

`A377499(n+1)-A377864(n+1)`
-/

namespace A219695.P17657608202251524172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377499 (n + 1) - A377864 (n + 1)

end

end A219695.P17657608202251524172

/-! ## A219695.P11520268545954398540

`A377865(n+1)-A377499(n+1)`
-/

namespace A219695.P11520268545954398540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377865 (n + 1) - A377499 (n + 1)

end

end A219695.P11520268545954398540

/-! ## A219695.P13085009815581416447

`n%(A033677(Δ[n²])+1)`
-/

namespace A219695.P13085009815581416447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A033677 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1)

end

end A219695.P13085009815581416447

/-! ## A219695.P14402689475269085209

`floor(A056737(2*n+1)/2)`
-/

namespace A219695.P14402689475269085209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A056737 (2 * n + 1) : ℚ) / 2⌋

end

end A219695.P14402689475269085209

/-! ## A219695.P3424097560788171820

`2*A056737(n+1+n)/4`
-/

namespace A219695.P3424097560788171820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A056737 (n + 1 + n) : ℚ) / 4)

end

end A219695.P3424097560788171820

/-! ## A219695.P17338868445313195794

`(n+1)%(A033677(2*n+1)+1)-1`
-/

namespace A219695.P17338868445313195794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A033677 (2 * n + 1) + 1) - 1

end

end A219695.P17338868445313195794

/-! ## A219695.P7174592323688326071

`A001281(A056737(Δ[n²]))`
-/

namespace A219695.P7174592323688326071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A056737 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A219695.P7174592323688326071

/-! ## A219695.P17501033130157448674

`A014682(A056737(2*n+1))`
-/

namespace A219695.P17501033130157448674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A056737 (2 * n + 1)).toNat

end

end A219695.P17501033130157448674

/-! ## A219695.P1358089292853955924

`1/2*A056737(A005408(n))`
-/

namespace A219695.P1358089292853955924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A056737 (A005408 n).toNat : ℚ)

end

end A219695.P1358089292853955924

/-! ## A219695.P6556771408551788724

`A004526(A056737(Δ[n²])+1)`
-/

namespace A219695.P6556771408551788724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A056737 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1).toNat

end

end A219695.P6556771408551788724

/-! ## A219695.P10749547867684721504

`A377499(n+1)-A033676(2*n+1)`
-/

namespace A219695.P10749547867684721504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377499 (n + 1) - A033676 (2 * n + 1)

end

end A219695.P10749547867684721504

/-! ## A219695.P4007691423163026928

`A033677(2*n+1)-A377499(n+1)`
-/

namespace A219695.P4007691423163026928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (2 * n + 1) - A377499 (n + 1)

end

end A219695.P4007691423163026928

/-! ## A219695.P16410000172042903778

`A361565(2*n+1)-A377864(n+1)`
-/

namespace A219695.P16410000172042903778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361565 (2 * n + 1) - A377864 (n + 1)

end

end A219695.P16410000172042903778

/-! ## A219695.P13561715387786182108

`A377865(n+1)-A361565(2*n+1)`
-/

namespace A219695.P13561715387786182108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377865 (n + 1) - A361565 (2 * n + 1)

end

end A219695.P13561715387786182108

/-! ## A219695.P6931377997796560406

`A107325(2*n+1)-A033676(2*n+1)`
-/

namespace A219695.P6931377997796560406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107325 (2 * n + 1) - A033676 (2 * n + 1)

end

end A219695.P6931377997796560406

/-! ## A219695.P4611992522936900987

`A361565(2*n+1)-A033676(2*n+1)`
-/

namespace A219695.P4611992522936900987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361565 (2 * n + 1) - A033676 (2 * n + 1)

end

end A219695.P4611992522936900987

/-! ## A219695.P13165929792133244673

`A033677(2*n+1)-A361565(2*n+1)`
-/

namespace A219695.P13165929792133244673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (2 * n + 1) - A361565 (2 * n + 1)

end

end A219695.P13165929792133244673

/-!
# A219696: Numbers k such that the trajectory of 3k + 1 under the '3x + 1' map reaches k.

The programs for A219696, there is no canonical definition to state claims against.
-/

/-! ## A219696.P12230009788604050822

`A004277(lt[A317549(n+1), A105730(2*n)])`
-/

namespace A219696.P12230009788604050822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105730 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219696.P12230009788604050822

/-! ## A219696.P4041721246399321031

`∑[gcd(A003500(n), A325850(n))]`
-/

namespace A219696.P4041721246399321031
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003500 n) (A325850 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219696.P4041721246399321031

/-! ## A219696.P2682401967356303972

`lt[A337604(n+3), A173530(A001222(2*n+1))]`
-/

namespace A219696.P2682401967356303972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337604 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173530 (A001222 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A219696.P2682401967356303972

/-!
# A219697: Primes neighboring a 7-smooth number.

The programs for A219697, there is no canonical definition to state claims against.
-/

/-! ## A219697.P9246593920149356491

`A000040(lt[A325277(2*(n+2)), A037244(n)])`
-/

namespace A219697.P9246593920149356491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325277 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219697.P9246593920149356491

/-! ## A219697.P10787540580274549744

`A000040(lt[A000040(n+1), A054501(n+1)])`
-/

namespace A219697.P10787540580274549744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054501 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219697.P10787540580274549744

/-! ## A219697.P8302343031097671966

`A000040(lt[A224850(n+1), A186971(n+1)])`
-/

namespace A219697.P8302343031097671966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186971 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219697.P8302343031097671966

/-! ## A219697.P12293261579796222715

`A000040(lt[A228559(n+1), A323642(n+1)])`
-/

namespace A219697.P12293261579796222715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219697.P12293261579796222715

/-! ## A219697.P17335931977812057791

`A000040(lt[A224850(n+1), A000720(n+2)])`
-/

namespace A219697.P17335931977812057791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224850 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A219697.P17335931977812057791

/-!
# A219698: Number of n X n arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X n array.

The programs for A219698, there is no canonical definition to state claims against.
-/

/-! ## A219698.P829739851027339820

`A219704(∑[4*n]+1)`
-/

namespace A219698.P829739851027339820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A219698.P829739851027339820

/-! ## A219698.P17795765178145566393

`record[A219704(Δ[A235355(n)])]`
-/

namespace A219698.P17795765178145566393
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219698.P17795765178145566393

/-! ## A219698.P9538369268222896108

`record[A219704(A330613(n+1))]`
-/

namespace A219698.P9538369268222896108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219698.P9538369268222896108

/-! ## A219698.P14270835258930634435

`A219704(A001844(n))+char[10]`
-/

namespace A219698.P14270835258930634435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A219698.P14270835258930634435

/-! ## A219698.P128800404598992067

`record[gcd(A003987(n), A219704(n+1))]`
-/

namespace A219698.P128800404598992067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A219704 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A219698.P128800404598992067

/-!
# A219699: Number of n X 3 arrays of the minimum value of corresponding elements and their horizontal, vertical or antidiagonal neighbors in a random, but sorted with lexicographically nondecreasing rows and columns, 0..1 n X 3 array.

The programs for A219699, the canonical program `A219699.P1379669255733614019` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A219699 has offset 1).

The definition of A219699 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A219699.P11034151912309731577

`∑[a(n-1)+∑[n]-2]` with `a(0)=3, a(1)=2, a(2)=8`
-/

namespace A219699.P11034151912309731577
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 2, 8] fun n f1 =>
  f1 (n - 1) + (((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A219699.P11034151912309731577

namespace A219699

/-- `∑[a(n-1)+∑[n]-2]` -/
def P11034151912309731577.Spec : Prop :=
  ∀ n, P11034151912309731577.a n = A219699 (n + 1)

end A219699

/-! ## A219699.P6669356754419560297

`ogf((3-10x+18x^2-20x^3+15x^4-5x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A219699.P6669356754419560297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -10, 18, -20, 15, -5] [1, -5, 10, -10, 5, -1] n

end

end A219699.P6669356754419560297

namespace A219699

/-- `ogf((3-10x+18x^2-20x^3+15x^4-5x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P6669356754419560297.Spec : Prop :=
  ∀ n, P6669356754419560297.a n = A219699 (n + 1)

end A219699

/-! ## A219699.P1379669255733614019

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=3, a(1)=5, a(2)=13, a(3)=25, a(4)=45, a(5)=78`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A219699

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P1379669255733614019.Spec : Prop :=
  ∀ n, P1379669255733614019.a n = A219699 (n + 1)

theorem P1379669255733614019.correct : P1379669255733614019.Spec := by
  intro n
  simp only [A219699, Nat.add_sub_cancel]

end A219699

/-! ## A219699.P385562263676591534

`A219704(∑[n+2]+4)`
-/

namespace A219699.P385562263676591534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219704 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A219699.P385562263676591534

namespace A219699

/-- `A219704(∑[n+2]+4)` -/
def P385562263676591534.Spec : Prop :=
  ∀ n, P385562263676591534.a n = A219699 (n + 1)

end A219699

/-! ## A219699.P12894860152626584262

`or(char[1], A219704(A167614(n+1)))`
-/

namespace A219699.P12894860152626584262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A219704 (A167614 (n + 1)).toNat)

end

end A219699.P12894860152626584262

namespace A219699

/-- `or(char[1], A219704(A167614(n+1)))` -/
def P12894860152626584262.Spec : Prop :=
  ∀ n, P12894860152626584262.a n = A219699 (n + 1)

end A219699

