import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A306500: a(n) is the smallest prime p such that Sum_{primes q <= p} Kronecker(-A003657(n),q) > 0, or 0 if no such prime exists.

The programs for A306500, there is no canonical definition to state claims against.
-/

/-! ## A306500.P14105351176647203973

`A392284(A003657(n+1))`
-/

namespace A306500.P14105351176647203973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392284 (A003657 (n + 1)).toNat

end

end A306500.P14105351176647203973

/-!
# A306504: Expansion of 1/(x^6+2*x^5-x^4-4*x^3-x^2-2*x+1).

The programs for A306504, the canonical program `A306504.P537346651132004984` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306504 has offset 0).

The definition of A306504 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-2x-x^2-4x^3-x^4+2x^5+x^6))` (program `A306504.P537346651132004984`, by `A306504.P537346651132004984.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A306504.P537346651132004984

`ogf(1/(1-2x-x^2-4x^3-x^4+2x^5+x^6))`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306504

/-- `ogf(1/(1-2x-x^2-4x^3-x^4+2x^5+x^6))` -/
def P537346651132004984.Spec : Prop :=
  ∀ n, P537346651132004984.a n = A306504 n

theorem P537346651132004984.correct : P537346651132004984.Spec := by
  intro n
  simp only [A306504]

end A306504

/-! ## A306504.P14613636448831227678

`A182195(A026023(n))`
-/

namespace A306504.P14613636448831227678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182195 (A026023 n).toNat

end

end A306504.P14613636448831227678

namespace A306504

/-- `A182195(A026023(n))` -/
def P14613636448831227678.Spec : Prop :=
  ∀ n, P14613636448831227678.a n = A306504 n

end A306504

/-! ## A306504.P18361987979638955227

`A182195(Δ[A104993(n)])`
-/

namespace A306504.P18361987979638955227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182195 (f1 (n + 1) - f1 n).toNat

end

end A306504.P18361987979638955227

namespace A306504

/-- `A182195(Δ[A104993(n)])` -/
def P18361987979638955227.Spec : Prop :=
  ∀ n, P18361987979638955227.a n = A306504 n

end A306504

/-!
# A306505: Number of non-isomorphic antichains of nonempty subsets of {1,...,n}.

The programs for A306505, there is no canonical definition to state claims against.
-/

/-! ## A306505.P3240331729391043880

`A003182(n)-1`
-/

namespace A306505.P3240331729391043880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003182 n - 1

end

end A306505.P3240331729391043880

/-! ## A306505.P3213780645912310033

`∑[A261005(n)]`
-/

namespace A306505.P3213780645912310033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261005 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306505.P3213780645912310033

/-! ## A306505.P6895743696468822788

`∑[A006602(n)]-1`
-/

namespace A306505.P6895743696468822788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A306505.P6895743696468822788

/-! ## A306505.P10794166400317994920

`∑[A006602(A028310(n))]`
-/

namespace A306505.P10794166400317994920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306505.P10794166400317994920

/-! ## A306505.P14219683387305893624

`∑[A006602(A000007(n)+n)]`
-/

namespace A306505.P14219683387305893624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006602 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306505.P14219683387305893624

/-!
# A306509: a(n) is the number of divisors of the sum of digits of n.

The programs for A306509, the canonical program `A306509.P15356614961765278864` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306509 has offset 1).

The definition of A306509 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A306509.P15356614961765278864

`A000005(A007953(n+1))`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A306509

/-- `A000005(A007953(n+1))` -/
def P15356614961765278864.Spec : Prop :=
  ∀ n, P15356614961765278864.a n = A306509 (n + 1)

theorem P15356614961765278864.correct : P15356614961765278864.Spec := by
  intro n
  simp only [A306509, Nat.add_sub_cancel]

end A306509

/-! ## A306509.P2944977649092556993

`∏{e}[∑{digits}[n+1, #], #+1]`
-/

namespace A306509.P2944977649092556993
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)

end

end A306509.P2944977649092556993

namespace A306509

/-- `∏{e}[∑{digits}[n+1, #], #+1]` -/
def P2944977649092556993.Spec : Prop :=
  ∀ n, (P2944977649092556993.a n : ℤ) = A306509 (n + 1)

end A306509

/-! ## A306509.P11714812896550695167

`A000005(∑{digits}[n+1, #])`
-/

namespace A306509.P11714812896550695167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A306509.P11714812896550695167

namespace A306509

/-- `A000005(∑{digits}[n+1, #])` -/
def P11714812896550695167.Spec : Prop :=
  ∀ n, P11714812896550695167.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P16297929834372633696

`A122667(∑{digits}[n+1, #])`
-/

namespace A306509.P16297929834372633696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122667 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A306509.P16297929834372633696

namespace A306509

/-- `A122667(∑{digits}[n+1, #])` -/
def P16297929834372633696.Spec : Prop :=
  ∀ n, P16297929834372633696.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P13844073870691693731

`A122668(∑{digits}[n+1, #])`
-/

namespace A306509.P13844073870691693731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122668 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A306509.P13844073870691693731

namespace A306509

/-- `A122668(∑{digits}[n+1, #])` -/
def P13844073870691693731.Spec : Prop :=
  ∀ n, P13844073870691693731.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P12444920029116610485

`A134687(∑{digits}[n+1, #])`
-/

namespace A306509.P12444920029116610485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134687 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A306509.P12444920029116610485

namespace A306509

/-- `A134687(∑{digits}[n+1, #])` -/
def P12444920029116610485.Spec : Prop :=
  ∀ n, P12444920029116610485.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P10540642768380271073

`A179941(∑{digits}[n+1, #])`
-/

namespace A306509.P10540642768380271073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A306509.P10540642768380271073

namespace A306509

/-- `A179941(∑{digits}[n+1, #])` -/
def P10540642768380271073.Spec : Prop :=
  ∀ n, P10540642768380271073.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P7292637344663610307

`A184395(∑{digits}[n+1, #])`
-/

namespace A306509.P7292637344663610307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184395 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A306509.P7292637344663610307

namespace A306509

/-- `A184395(∑{digits}[n+1, #])` -/
def P7292637344663610307.Spec : Prop :=
  ∀ n, P7292637344663610307.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P15457662612974630278

`A000005(log(∏{digits}[n+1, exp(#)]))`
-/

namespace A306509.P15457662612974630278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod)).toNat

end

end A306509.P15457662612974630278

namespace A306509

/-- `A000005(log(∏{digits}[n+1, exp(#)]))` -/
def P15457662612974630278.Spec : Prop :=
  ∀ n, P15457662612974630278.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P3750681721738219594

`A000005(log2(∏{digits}[n+1, 2^#]))`
-/

namespace A306509.P3750681721738219594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ))).toNat

end

end A306509.P3750681721738219594

namespace A306509

/-- `A000005(log2(∏{digits}[n+1, 2^#]))` -/
def P3750681721738219594.Spec : Prop :=
  ∀ n, P3750681721738219594.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P11170323229332827927

`A000005(Δ[A037123(n)])`
-/

namespace A306509.P11170323229332827927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (f1 (n + 1) - f1 n).toNat

end

end A306509.P11170323229332827927

namespace A306509

/-- `A000005(Δ[A037123(n)])` -/
def P11170323229332827927.Spec : Prop :=
  ∀ n, P11170323229332827927.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P6969804211144398384

`A046951(A118881(n+1))`
-/

namespace A306509.P6969804211144398384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (A118881 (n + 1)).toNat

end

end A306509.P6969804211144398384

namespace A306509

/-- `A046951(A118881(n+1))` -/
def P6969804211144398384.Spec : Prop :=
  ∀ n, P6969804211144398384.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P4674648364082524325

`A000005(sqrt(A118881(n+1)))`
-/

namespace A306509.P4674648364082524325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.sqrt (A118881 (n + 1) : ℝ))).toNat

end

end A306509.P4674648364082524325

namespace A306509

/-- `A000005(sqrt(A118881(n+1)))` -/
def P4674648364082524325.Spec : Prop :=
  ∀ n, P4674648364082524325.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P18136131356183333648

`A000005(log2(A329562(n+1)))`
-/

namespace A306509.P18136131356183333648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (Real.logb 2 (A329562 (n + 1) : ℝ))).toNat

end

end A306509.P18136131356183333648

namespace A306509

/-- `A000005(log2(A329562(n+1)))` -/
def P18136131356183333648.Spec : Prop :=
  ∀ n, P18136131356183333648.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P3236517751583218926

`A183063(2*A007953(n+1))`
-/

namespace A306509.P3236517751583218926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (2 * A007953 (n + 1)).toNat

end

end A306509.P3236517751583218926

namespace A306509

/-- `A183063(2*A007953(n+1))` -/
def P3236517751583218926.Spec : Prop :=
  ∀ n, P3236517751583218926.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P4180194682515228870

`A320111(2*A007953(n+1))`
-/

namespace A306509.P4180194682515228870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320111 (2 * A007953 (n + 1)).toNat

end

end A306509.P4180194682515228870

namespace A306509

/-- `A320111(2*A007953(n+1))` -/
def P4180194682515228870.Spec : Prop :=
  ∀ n, P4180194682515228870.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P8132087783441721720

`∏{e}[A007953(n+1), A178338(#)]`
-/

namespace A306509.P8132087783441721720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A178338 (Nat.factorization (f1 n).natAbs p)

end

end A306509.P8132087783441721720

namespace A306509

/-- `∏{e}[A007953(n+1), A178338(#)]` -/
def P8132087783441721720.Spec : Prop :=
  ∀ n, P8132087783441721720.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P6439078619527353403

`A000005(A057147(n+1)/(n+1))`
-/

namespace A306509.P6439078619527353403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A057147 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A306509.P6439078619527353403

namespace A306509

/-- `A000005(A057147(n+1)/(n+1))` -/
def P6439078619527353403.Spec : Prop :=
  ∀ n, P6439078619527353403.a n = A306509 (n + 1)

end A306509

/-! ## A306509.P13017665607475484270

`A000005(A118137(n)-A007953(n))`
-/

namespace A306509.P13017665607475484270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A118137 n - A007953 n).toNat

end

end A306509.P13017665607475484270

namespace A306509

/-- `A000005(A118137(n)-A007953(n))` -/
def P13017665607475484270.Spec : Prop :=
  ∀ n, P13017665607475484270.a n = A306509 (n + 1)

theorem P13017665607475484270.correct : P13017665607475484270.Spec := by
  intro n
  simp only [A306509, Nat.add_sub_cancel, A306509.P13017665607475484270.a, A306509.P15356614961765278864.a, A000005, A000005.P16091521709108585461.a, A007953, A007953.P3472751987379697826.a, A118137, A118137.P7047369831656418636.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A054899, A054899.P10770181254942084517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306509

/-!
# A306510: Numbers k such that twice the number of divisors of k is equal to the number of divisors of the sum of digits of k.

The programs for A306510, the canonical program `A306510.P7325178267120369206` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306510 has offset 1).

The definition of A306510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 420 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306510.P7325178267120369206

`eq[2*A145154(n), A145154(A007953(n))]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A306510

/-- `eq[2*A145154(n), A145154(A007953(n))]` -/
def P7325178267120369206.Spec : Prop :=
  ∀ n, (P7325178267120369206.a n : ℤ) = A306510 (n + 1)

theorem P7325178267120369206.correct : P7325178267120369206.Spec := by
  intro n
  simp only [A306510, Nat.add_sub_cancel]

end A306510

/-! ## A306510.P8802625657258104040

`p?[n*A035590(A214949(n))]`
-/

namespace A306510.P8802625657258104040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A035590 (A214949 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306510.P8802625657258104040

namespace A306510

/-- `p?[n*A035590(A214949(n))]` -/
def P8802625657258104040.Spec : Prop :=
  ∀ n, P8802625657258104040.a n = A306510 (n + 1)

end A306510

/-! ## A306510.P7086089618724045592

`p?[or(A050688(n+1), A344879(n+1))]`
-/

namespace A306510.P7086089618724045592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A050688 (n + 1)) (A344879 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A306510.P7086089618724045592

namespace A306510

/-- `p?[or(A050688(n+1), A344879(n+1))]` -/
def P7086089618724045592.Spec : Prop :=
  ∀ n, P7086089618724045592.a n = A306510 (n + 1)

end A306510

/-! ## A306510.P13586420033056662655

`∩[A104213(n+1), A324978(n+1)]`
-/

namespace A306510.P13586420033056662655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324978 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306510.P13586420033056662655

namespace A306510

/-- `∩[A104213(n+1), A324978(n+1)]` -/
def P13586420033056662655.Spec : Prop :=
  ∀ n, (P13586420033056662655.a n : ℤ) = A306510 (n + 1)

end A306510

/-!
# A306511: Number of permutations p of [n] having at least one index i with |p(i)-i| = 1.

The programs for A306511, the canonical program `A306511.P12945767139372474350` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306511 has offset 0).

The definition of A306511 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306511.P12945767139372474350

`n!-A078480(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A306511

/-- `n!-A078480(n)` -/
def P12945767139372474350.Spec : Prop :=
  ∀ n, P12945767139372474350.a n = A306511 n

theorem P12945767139372474350.correct : P12945767139372474350.Spec := by
  intro n
  simp only [A306511]

end A306511

/-! ## A306511.P14616018416488273236

`n!-∑[A000271(n)]`
-/

namespace A306511.P14616018416488273236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306511.P14616018416488273236

namespace A306511

/-- `n!-∑[A000271(n)]` -/
def P14616018416488273236.Spec : Prop :=
  ∀ n, P14616018416488273236.a n = A306511 n

end A306511

/-! ## A306511.P7213475141105319402

`A000142(n)-A078480(n)`
-/

namespace A306511.P7213475141105319402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A078480 n

end

end A306511.P7213475141105319402

namespace A306511

/-- `A000142(n)-A078480(n)` -/
def P7213475141105319402.Spec : Prop :=
  ∀ n, P7213475141105319402.a n = A306511 n

end A306511

/-! ## A306511.P3210744778167432796

`A000142(n)-∑[A000271(n)]`
-/

namespace A306511.P3210744778167432796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306511.P3210744778167432796

namespace A306511

/-- `A000142(n)-∑[A000271(n)]` -/
def P3210744778167432796.Spec : Prop :=
  ∀ n, P3210744778167432796.a n = A306511 n

end A306511

/-! ## A306511.P11960510686407384324

`Δ[A003422(n)]-A078480(n)`
-/

namespace A306511.P11960510686407384324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A078480 n

end

end A306511.P11960510686407384324

namespace A306511

/-- `Δ[A003422(n)]-A078480(n)` -/
def P11960510686407384324.Spec : Prop :=
  ∀ n, P11960510686407384324.a n = A306511 n

end A306511

/-! ## A306511.P4132405145254481202

`A000142(n)-∑[∑[A000179(n)]]`
-/

namespace A306511.P4132405145254481202
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000179 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306511.P4132405145254481202

namespace A306511

/-- `A000142(n)-∑[∑[A000179(n)]]` -/
def P4132405145254481202.Spec : Prop :=
  ∀ n, P4132405145254481202.a n = A306511 n

end A306511

/-! ## A306511.P17499551778380445733

`∏[A007318(∑[n]+1)]-A078480(n)`
-/

namespace A306511.P17499551778380445733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j - A078480 n

end

end A306511.P17499551778380445733

namespace A306511

/-- `∏[A007318(∑[n]+1)]-A078480(n)` -/
def P17499551778380445733.Spec : Prop :=
  ∀ n, P17499551778380445733.a n = A306511 n

end A306511

/-! ## A306511.P7555759339887482716

`A000142(n)-∑[A047922(A000096(n))]`
-/

namespace A306511.P7555759339887482716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047922 (A000096 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306511.P7555759339887482716

namespace A306511

/-- `A000142(n)-∑[A047922(A000096(n))]` -/
def P7555759339887482716.Spec : Prop :=
  ∀ n, P7555759339887482716.a n = A306511 n

end A306511

/-!
# A306515: Binary numbers with string structure 10s00, s in {0,1}*, such that it results in a non-palindromic cycle of length 4 in the Reverse and Add! procedure in base 2.

The programs for A306515, there is no canonical definition to state claims against.
-/

/-! ## A306515.P12129092540551105193

`A007088(A306514(n+1))`
-/

namespace A306515.P12129092540551105193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A306514 (n + 1)).toNat

end

end A306515.P12129092540551105193

/-! ## A306515.P750069224498342431

`A231891(A306514(n+1)-1)`
-/

namespace A306515.P750069224498342431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231891 (A306514 (n + 1) - 1).toNat

end

end A306515.P750069224498342431

/-!
# A306517: a(n) is the binary number with string structure 10s00, s in {0,1}*, such that it results in a non-palindromic cycle of length 4 in the Reverse and Add! procedure in base 2 and is not in the trajectory of any m < a(n).

The programs for A306517, there is no canonical definition to state claims against.
-/

/-! ## A306517.P10472905225717553720

`A007088(A306516(n+1))`
-/

namespace A306517.P10472905225717553720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A306516 (n + 1)).toNat

end

end A306517.P10472905225717553720

/-!
# A306518: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals, where column k is the expansion of Product_{d|k} theta_3(q^d).

The programs for A306518, there is no canonical definition to state claims against.
-/

/-! ## A306518.P8681203163382098547

`A317641(A034261(n)^A000688(n+1)!)`
-/

namespace A306518.P8681203163382098547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (A034261 n ^ Nat.factorial (A000688 (n + 1)).toNat).toNat

end

end A306518.P8681203163382098547

/-! ## A306518.P3366980591269834918

`A179766(A249027(n+1)%A036331(n+1))`
-/

namespace A306518.P3366980591269834918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179766 (Int.tmod (A249027 (n + 1)) (A036331 (n + 1))).toNat

end

end A306518.P3366980591269834918

/-! ## A306518.P11522430592760405087

`A179766(gcd(A028641(n+1), A249027(n+1)))`
-/

namespace A306518.P11522430592760405087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179766 (Int.gcd (A028641 (n + 1)) (A249027 (n + 1)))

end

end A306518.P11522430592760405087

/-! ## A306518.P15721882048627507020

`A179766(gcd(A003418(n), A249027(n+1)))`
-/

namespace A306518.P15721882048627507020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179766 (Int.gcd (A003418 n) (A249027 (n + 1)))

end

end A306518.P15721882048627507020

/-! ## A306518.P11752583393604773976

`A317641(A034261(n)^A000688(n+1)²)`
-/

namespace A306518.P11752583393604773976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (SequenceMachineLib.roundAway ((A034261 n : ℚ) ^ (A000688 (n + 1) ^ 2 : ℤ))).toNat

end

end A306518.P11752583393604773976

/-!
# A306519: Expansion of 2/(1 + 2*x + sqrt(1 - 4*x*(1 + x))).

The programs for A306519, the canonical program `A306519.P16959847342839691536` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306519 has offset 0).

The definition of A306519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306519.P2976986404101488741

`abs(∑[A100238(n+1)/2])`
-/

namespace A306519.P2976986404101488741
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100238 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A306519.P2976986404101488741

namespace A306519

/-- `abs(∑[A100238(n+1)/2])` -/
def P2976986404101488741.Spec : Prop :=
  ∀ n, P2976986404101488741.a n = (A306519 n : ℚ)

end A306519

/-! ## A306519.P16959847342839691536

`A071356(n-1)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A306519

/-- `A071356(n-1)-a(n-1)` -/
def P16959847342839691536.Spec : Prop :=
  ∀ n, P16959847342839691536.a n = A306519 n

theorem P16959847342839691536.correct : P16959847342839691536.Spec := by
  intro n
  simp only [A306519]

end A306519

/-! ## A306519.P1462843618789436948

`(A052709(n+1)+(-1)^n)/2`
-/

namespace A306519.P1462843618789436948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052709 (n + 1) + (-1) ^ n : ℚ) / 2

end

end A306519.P1462843618789436948

namespace A306519

/-- `(A052709(n+1)+(-1)^n)/2` -/
def P1462843618789436948.Spec : Prop :=
  ∀ n, P1462843618789436948.a n = (A306519 n : ℚ)

end A306519

/-! ## A306519.P3957727281855797889

`∑[A100238(n+1)]/A280560(n+2)`
-/

namespace A306519.P3957727281855797889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100238 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A280560 (n + 2) : ℚ)

end

end A306519.P3957727281855797889

namespace A306519

/-- `∑[A100238(n+1)]/A280560(n+2)` -/
def P3957727281855797889.Spec : Prop :=
  ∀ n, P3957727281855797889.a n = (A306519 n : ℚ)

end A306519

/-! ## A306519.P12033004576911596798

`A110681(∑[n]-n)-a(n-1)` with `a(0)=1`
-/

namespace A306519.P12033004576911596798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110681 (∑ j ∈ Finset.range (n + 1), f1 j - n) - a (n - 1)

end

end A306519.P12033004576911596798

namespace A306519

/-- `A110681(∑[n]-n)-a(n-1)` -/
def P12033004576911596798.Spec : Prop :=
  ∀ n, P12033004576911596798.a n = A306519 n

end A306519

/-!
# A306521: Least integer N > 2 such that the number of primes (<=N) <= the number of base-n-zero containing numbers (<=N).

The programs for A306521, there is no canonical definition to state claims against.
-/

/-! ## A306521.P6928204166844833973

`∑{d}[A186053(A097801(n)), #]`
-/

namespace A306521.P6928204166844833973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186053 (A097801 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A306521.P6928204166844833973

/-! ## A306521.P10919067516278310964

`A204890(A061190(n)+A018042(n))`
-/

namespace A306521.P10919067516278310964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204890 (A061190 n + A018042 n).toNat

end

end A306521.P10919067516278310964

/-!
# A306523: Number of permutations p of [n] having no index i with |p(i)-i| = 2.

The programs for A306523, there is no canonical definition to state claims against.
-/

/-! ## A306523.P5070852145589076876

`n!-A306524(n)`
-/

namespace A306523.P5070852145589076876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A306524 n

end

end A306523.P5070852145589076876

/-! ## A306523.P3731245737894431397

`A000142(n)-A306524(n)`
-/

namespace A306523.P3731245737894431397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A306524 n

end

end A306523.P3731245737894431397

/-! ## A306523.P4091510106436715931

`Δ[A003422(n)]-A306524(n)`
-/

namespace A306523.P4091510106436715931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003422 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A306524 n

end

end A306523.P4091510106436715931

/-! ## A306523.P11605526100820727280

`A028421(A000217(n))-A306524(n)`
-/

namespace A306523.P11605526100820727280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (A000217 n).toNat - A306524 n

end

end A306523.P11605526100820727280

/-!
# A306524: Number of permutations p of [n] having at least one index i with |p(i)-i| = 2.

The programs for A306524, there is no canonical definition to state claims against.
-/

/-! ## A306524.P14917033850271389404

`n!-A306523(n)`
-/

namespace A306524.P14917033850271389404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) - A306523 n

end

end A306524.P14917033850271389404

/-! ## A306524.P372280892067031266

`A000142(n)-A306523(n)`
-/

namespace A306524.P372280892067031266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n - A306523 n

end

end A306524.P372280892067031266

/-! ## A306524.P16477515443478737969

`A028421(A000217(n))-A306523(n)`
-/

namespace A306524.P16477515443478737969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028421 (A000217 n).toNat - A306523 n

end

end A306524.P16477515443478737969

/-! ## A306524.P9889236201012949665

`A068106(A000096(n))-A306523(n)`
-/

namespace A306524.P9889236201012949665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068106 (A000096 n).toNat - A306523 n

end

end A306524.P9889236201012949665

/-!
# A306525: Row sums of A306234.

The programs for A306525, there is no canonical definition to state claims against.
-/

/-! ## A306525.P9904600248508446045

`A097422(n)-A008612(A097422(n)+A008612(n))`
-/

namespace A306525.P9904600248508446045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097422 n - A008612 (A097422 n + A008612 n).toNat

end

end A306525.P9904600248508446045

/-! ## A306525.P221737653823948116

`round(A013928((n+1)^n)^(2/3))`
-/

namespace A306525.P221737653823948116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A013928 ((n + 1) ^ n) : ℝ) ^ ((2 : ℚ) / 3 : ℝ))

end

end A306525.P221737653823948116

/-!
# A306526: a(n) = greatest integer N such that (number of primes <= N) >= (number of numbers <= N that contain a zero in base n).

The programs for A306526, there is no canonical definition to state claims against.
-/

/-! ## A306526.P14280028148036873814

`A265645(n+2)-A010054(A002110(n))`
-/

namespace A306526.P14280028148036873814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265645 (n + 2) - A010054 (A002110 n).toNat

end

end A306526.P14280028148036873814

/-! ## A306526.P7706459697108800543

`A265645(n+2)-A071041(A174500(2*(n+1)))`
-/

namespace A306526.P7706459697108800543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265645 (n + 2) - A071041 (A174500 (2 * (n + 1))).toNat

end

end A306526.P7706459697108800543

/-!
# A306528: Numbers k such that gcd(k, phi(k)) = gcd(k, psi(k)).

The programs for A306528, the canonical program `A306528.P17599500303172333272` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306528 has offset 1).

The definition of A306528 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306528.P1375479567728191054

`comp[A306711(n+1)-1]+1`
-/

namespace A306528.P1375479567728191054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306711 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A306528.P1375479567728191054

namespace A306528

/-- `comp[A306711(n+1)-1]+1` -/
def P1375479567728191054.Spec : Prop :=
  ∀ n, (P1375479567728191054.a n : ℤ) = A306528 (n + 1)

end A306528

/-! ## A306528.P17599500303172333272

`eq[A109395(n+1), A332881(n+1)]+1`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A306528

/-- `eq[A109395(n+1), A332881(n+1)]+1` -/
def P17599500303172333272.Spec : Prop :=
  ∀ n, (P17599500303172333272.a n : ℤ) = A306528 (n + 1)

theorem P17599500303172333272.correct : P17599500303172333272.Spec := by
  intro n
  simp only [A306528, Nat.add_sub_cancel]

end A306528

/-! ## A306528.P9725337188985392470

`eq[A009195(n+1), A306695(n+1)]+1`
-/

namespace A306528.P9725337188985392470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306695 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A306528.P9725337188985392470

namespace A306528

/-- `eq[A009195(n+1), A306695(n+1)]+1` -/
def P9725337188985392470.Spec : Prop :=
  ∀ n, (P9725337188985392470.a n : ℤ) = A306528 (n + 1)

end A306528

/-! ## A306528.P15705146612947578666

`eq[char[A306711(n+1)], A000007(n)]`
-/

namespace A306528.P15705146612947578666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306711 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A306528.P15705146612947578666

namespace A306528

/-- `eq[char[A306711(n+1)], A000007(n)]` -/
def P15705146612947578666.Spec : Prop :=
  ∀ n, (P15705146612947578666.a n : ℤ) = A306528 (n + 1)

end A306528

/-! ## A306528.P5851230789562085594

`eq[char[A306711(n+1)], A000038(n)]`
-/

namespace A306528.P5851230789562085594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306711 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A306528.P5851230789562085594

namespace A306528

/-- `eq[char[A306711(n+1)], A000038(n)]` -/
def P5851230789562085594.Spec : Prop :=
  ∀ n, (P5851230789562085594.a n : ℤ) = A306528 (n + 1)

end A306528

/-! ## A306528.P4592209075477201681

`eq[char[A306711(n+1)], A208604(2*n)]`
-/

namespace A306528.P4592209075477201681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306711 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208604 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A306528.P4592209075477201681

namespace A306528

/-- `eq[char[A306711(n+1)], A208604(2*n)]` -/
def P4592209075477201681.Spec : Prop :=
  ∀ n, (P4592209075477201681.a n : ℤ) = A306528 (n + 1)

end A306528

/-!
# A306529: x-value of the smallest solution to x^2 - p*y^2 = 2*(-1)^((p+1)/4), p = A002145(n).

The programs for A306529, there is no canonical definition to state claims against.
-/

/-! ## A306529.P8934562485165622900

`round(sqrt(A081231(n+1)))`
-/

namespace A306529.P8934562485165622900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A081231 (n + 1) : ℝ))

end

end A306529.P8934562485165622900

/-! ## A306529.P16174978978714436933

`A082394(n+1)/A306566(n+1)`
-/

namespace A306529.P16174978978714436933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082394 (n + 1) : ℚ) / (A306566 (n + 1) : ℚ)

end

end A306529.P16174978978714436933

/-! ## A306529.P11825461348350370484

`floor(sqrt(A081231(n+1)+A049474(n)))`
-/

namespace A306529.P11825461348350370484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A081231 (n + 1) + A049474 n)

end

end A306529.P11825461348350370484

/-! ## A306529.P14084488680488824110

`floor(sqrt(A081231(n+1)+A001221(n+1)))`
-/

namespace A306529.P14084488680488824110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A081231 (n + 1) + A001221 (n + 1))

end

end A306529.P14084488680488824110

/-! ## A306529.P15205678712282520581

`floor(sqrt(A081231(n+1)+A067541(n+1)))`
-/

namespace A306529.P15205678712282520581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A081231 (n + 1) + A067541 (n + 1))

end

end A306529.P15205678712282520581

/-! ## A306529.P7748139443304493137

`A006703(A002145(n+1))/A306566(n+1)`
-/

namespace A306529.P7748139443304493137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (A002145 (n + 1)).toNat : ℚ) / (A306566 (n + 1) : ℚ)

end

end A306529.P7748139443304493137

/-!
# A306531: Composite numbers k such that the sum of their aliquot parts divides k-1.

The programs for A306531, there is no canonical definition to state claims against.
-/

/-! ## A306531.P13719526793143247994

`∩[A059046(n+1), A373482(n+1)]`
-/

namespace A306531.P13719526793143247994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373482 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306531.P13719526793143247994

/-! ## A306531.P12124135445390505197

`filter[A059046(n+1), A005171(#)]`
-/

namespace A306531.P12124135445390505197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A306531.P12124135445390505197

/-! ## A306531.P15201180538411021387

`filter[A059046(n+1), A066247(#)]`
-/

namespace A306531.P15201180538411021387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A306531.P15201180538411021387

/-! ## A306531.P2005875787450733171

`∩[A003624(n+1), A059046(n+1)]`
-/

namespace A306531.P2005875787450733171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306531.P2005875787450733171

/-! ## A306531.P11286696761591513640

`∩[A059046(n+1), A346041(n+1)]`
-/

namespace A306531.P11286696761591513640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346041 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306531.P11286696761591513640

/-! ## A306531.P2074452267933472527

`∩[A059046(n+1), A269131(n+1)]`
-/

namespace A306531.P2074452267933472527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306531.P2074452267933472527

/-! ## A306531.P5241733058089399388

`∩[A059046(n+1), A078177(n+1)]`
-/

namespace A306531.P5241733058089399388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078177 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306531.P5241733058089399388

/-! ## A306531.P17753135250618091278

`∩[A002808(n+1), A059046(n+1)]`
-/

namespace A306531.P17753135250618091278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306531.P17753135250618091278

/-! ## A306531.P16541170313428163052

`∩[A018252(n+1), A059046(n+1)]`
-/

namespace A306531.P16541170313428163052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A306531.P16541170313428163052

/-!
# A306533: Square array A(n,k), n >= 1, k >= 0, read by antidiagonals: A(n,k) = Sum_{j=1..n} floor(n/j^k).

The programs for A306533, there is no canonical definition to state claims against.
-/

/-! ## A306533.P9336667619823897398

`A331154(n+1)+A055641(A174378(2*(n+1)))`
-/

namespace A306533.P9336667619823897398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331154 (n + 1) + A055641 (A174378 (2 * (n + 1))).toNat

end

end A306533.P9336667619823897398

/-! ## A306533.P10050804007135677896

`A331154(n+1)+A086074(A063834(n))`
-/

namespace A306533.P10050804007135677896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331154 (n + 1) + A086074 (A063834 n).toNat

end

end A306533.P10050804007135677896

/-! ## A306533.P12165688350147315911

`A331150(n+1)+A102683(A005043(n))`
-/

namespace A306533.P12165688350147315911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331150 (n + 1) + A102683 (A005043 n).toNat

end

end A306533.P12165688350147315911

/-! ## A306533.P15845273593441570148

`or(A011734(A285835(n)), A331150(n+1))`
-/

namespace A306533.P15845273593441570148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A011734 (A285835 n).toNat) (A331150 (n + 1))

end

end A306533.P15845273593441570148

/-! ## A306533.P10106844717124457986

`or(A059841(A266721(n)), A331150(n+1))`
-/

namespace A306533.P10106844717124457986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A059841 (A266721 n).toNat) (A331150 (n + 1))

end

end A306533.P10106844717124457986

/-!
# A306534: Square array A(n,k), n >= 0, k >= 1, read by antidiagonals: A(n,k) = Sum_{j=0..n} floor(n/k^j).

The programs for A306534, there is no canonical definition to state claims against.
-/

/-! ## A306534.P5475602087309058895

`A002262(n)+(record[A128647(n+1)]%A306680(n))²`
-/

namespace A306534.P5475602087309058895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A306680 n) ^ 2

end

end A306534.P5475602087309058895

/-! ## A306534.P3925086748149547466

`A002262(n)+((A010783(n+1)-1)%A093679(3*n+5))²`
-/

namespace A306534.P3925086748149547466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + Int.tmod (A010783 (n + 1) - 1) (A093679 (3 * n + 5)) ^ 2

end

end A306534.P3925086748149547466

/-! ## A306534.P52266251728338928

`A002262(n)+(A008589(A243451(n+4))%A306680(n))²`
-/

namespace A306534.P52266251728338928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + Int.tmod (A008589 (A243451 (n + 4)).toNat) (A306680 n) ^ 2

end

end A306534.P52266251728338928

/-! ## A306534.P6935733901939672480

`A002262(n)+(A010783(n+1)-A001222(A121558(n+1)))²`
-/

namespace A306534.P6935733901939672480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + (A010783 (n + 1) - A001222 (A121558 (n + 1)).toNat) ^ 2

end

end A306534.P6935733901939672480

/-! ## A306534.P6026033337817455447

`A025690(n+1)+(A010783(n+1)-A001222(A121558(n+1)))²`
-/

namespace A306534.P6026033337817455447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025690 (n + 1) + (A010783 (n + 1) - A001222 (A121558 (n + 1)).toNat) ^ 2

end

end A306534.P6026033337817455447

/-!
# A306535: Number of permutations p of [2n] having no index i with |p(i)-i| = n.

The programs for A306535, there is no canonical definition to state claims against.
-/

/-! ## A306535.P5769511308255066477

`(2*n)!-A306675(n)`
-/

namespace A306535.P5769511308255066477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℤ) - A306675 n

end

end A306535.P5769511308255066477

/-! ## A306535.P3709229238355614777

`record[1-a(n-1)/cot(atan(n))]` with `a(0)=1`
-/

namespace A306535.P3709229238355614777
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - f1 (n - 1) / Real.cot (Real.arctan (n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306535.P3709229238355614777

/-! ## A306535.P12244690303782362119

`1+2*n*(2*n-1)*a(n-1)-2*n` with `a(0)=1`
-/

namespace A306535.P12244690303782362119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 + 2 * ((n : ℤ) * (((2 * n : ℤ) - 1) * a (n - 1))) - (2 * n : ℤ)

end

end A306535.P12244690303782362119

/-! ## A306535.P16368831818072522377

`A000166(2*n)`
-/

namespace A306535.P16368831818072522377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 (2 * n)

end

end A306535.P16368831818072522377

/-! ## A306535.P6506381845101541807

`A174318(2*n)`
-/

namespace A306535.P6506381845101541807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174318 (2 * n)

end

end A306535.P6506381845101541807

/-!
# A306537: The least prime q such that Kronecker(D/q) = 1 where D runs through all positive fundamental discriminants (A003658).

The programs for A306537, there is no canonical definition to state claims against.
-/

/-! ## A306537.P17911796023936499153

`A306220(37*A003658(n+1))`
-/

namespace A306537.P17911796023936499153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (37 * A003658 (n + 1)).toNat

end

end A306537.P17911796023936499153

/-! ## A306537.P9492981151761888615

`A306220(37*(eq[1, A290098(n+1)]+1))`
-/

namespace A306537.P9492981151761888615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (37 * (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1))

end

end A306537.P9492981151761888615

/-! ## A306537.P12051380422886307181

`A306220(37*record[and(n+1, A037449(n+1))])`
-/

namespace A306537.P12051380422886307181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A037449 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (37 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306537.P12051380422886307181

/-! ## A306537.P13772609597844711746

`A306220(37*∪[A002144(n+1), A072902(n+1)])`
-/

namespace A306537.P13772609597844711746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (37 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A306537.P13772609597844711746

/-! ## A306537.P12500255262488607781

`A306220(37*∪[A003653(n+1), A072902(n+1)])`
-/

namespace A306537.P12500255262488607781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003653 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072902 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (37 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A306537.P12500255262488607781

/-! ## A306537.P12335888751881463764

`A306220(37*record[A037449(n+1)*A290098(n+1)])`
-/

namespace A306537.P12335888751881463764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (n + 1) * A290098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (37 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306537.P12335888751881463764

/-! ## A306537.P11658281455501577705

`A306220(37*record[(n+1)*A290098(n+1)]%A001043(n+1))`
-/

namespace A306537.P11658281455501577705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A290098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306220 (37 * Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A001043 (n + 1))).toNat

end

end A306537.P11658281455501577705

/-!
# A306538: The least prime q such that Kronecker(D/q) = 1 where D runs through all negative fundamental discriminants (-A003657).

The programs for A306538, there is no canonical definition to state claims against.
-/

/-! ## A306538.P10829438889722746262

`A099408(A003657(n+1))`
-/

namespace A306538.P10829438889722746262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099408 (A003657 (n + 1)).toNat

end

end A306538.P10829438889722746262

/-! ## A306538.P10334258104214574020

`A099408(lt[0, A191410(n+1)]+1)`
-/

namespace A306538.P10334258104214574020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A306538.P10334258104214574020

/-! ## A306538.P1230895941505285833

`A099408(∪[A039957(n+1), A191483(n+1)])`
-/

namespace A306538.P1230895941505285833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191483 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099408 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A306538.P1230895941505285833

/-! ## A306538.P2784532446252724430

`A099408(eq[A037449(n+1), A178182(n+1)]+1)`
-/

namespace A306538.P2784532446252724430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037449 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A306538.P2784532446252724430

/-! ## A306538.P11104440828278686309

`A099408(eq[A191410(n+1), A202084(n+1)]+1)`
-/

namespace A306538.P11104440828278686309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099408 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A306538.P11104440828278686309

/-!
# A306541: The least prime q such that Kronecker(D/q) >= 0 where D runs through all positive fundamental discriminants (A003658).

The programs for A306541, there is no canonical definition to state claims against.
-/

/-! ## A306541.P11954861616284490807

`A020639(A003658(n+1)*A306537(n+1))`
-/

namespace A306541.P11954861616284490807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003658 (n + 1) * A306537 (n + 1)).toNat

end

end A306541.P11954861616284490807

/-! ## A306541.P15656360920655399434

`A020639(lcm(A003658(n+1), A306537(n+1)))`
-/

namespace A306541.P15656360920655399434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A003658 (n + 1)) (A306537 (n + 1)))

end

end A306541.P15656360920655399434

/-! ## A306541.P10730467710379665798

`A020639((eq[1, A290098(n+1)]+1)*A306537(n+1))`
-/

namespace A306541.P10730467710379665798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℤ) * A306537 (n + 1)).toNat

end

end A306541.P10730467710379665798

/-! ## A306541.P7936352121735236713

`A040976(val(A155771(n+4)*A155774(n+1), 3)+1)+2`
-/

namespace A306541.P7936352121735236713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.valuation (A155771 (n + 4) * A155774 (n + 1)).toNat 3 + 1) + 2

end

end A306541.P7936352121735236713

/-! ## A306541.P12595229509870067393

`A387087(A250120(n)*A324522(n+1))`
-/

namespace A306541.P12595229509870067393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387087 (A250120 n * A324522 (n + 1)).toNat

end

end A306541.P12595229509870067393

/-!
# A306542: The least prime q such that Kronecker(D/q) >= 0 where D runs through all negative fundamental discriminants (-A003657).

The programs for A306542, there is no canonical definition to state claims against.
-/

/-! ## A306542.P8184199034806941182

`A020639(A003657(n+1)*A306538(n+1))`
-/

namespace A306542.P8184199034806941182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003657 (n + 1) * A306538 (n + 1)).toNat

end

end A306542.P8184199034806941182

/-! ## A306542.P7264656345873594262

`A074828(A003657(n+1)*A306538(n+1))`
-/

namespace A306542.P7264656345873594262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (A003657 (n + 1) * A306538 (n + 1)).toNat

end

end A306542.P7264656345873594262

/-! ## A306542.P8646742647417183735

`A020639(lcm(A003657(n+1), A306538(n+1)))`
-/

namespace A306542.P8646742647417183735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lcm (A003657 (n + 1)) (A306538 (n + 1)))

end

end A306542.P8646742647417183735

/-! ## A306542.P67575747043391983

`A020639((lt[0, A191410(n+1)]+1)*A306538(n+1))`
-/

namespace A306542.P67575747043391983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) * A306538 (n + 1)).toNat

end

end A306542.P67575747043391983

/-! ## A306542.P17513248323404911497

`A074828((lt[0, A191410(n+1)]+1)*A306538(n+1))`
-/

namespace A306542.P17513248323404911497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) * A306538 (n + 1)).toNat

end

end A306542.P17513248323404911497

/-!
# A306543: Number T(n,k) of permutations p of [n] such that |p(j)-j| >= k (for all j in [n]); triangle T(n,k), n >= 0, 0 <= k <= floor(n/2), read by rows.

The programs for A306543, there is no canonical definition to state claims against.
-/

/-! ## A306543.P6482587613786984013

`gcd(A084950(n), A316432(A057640(3*n+1)))`
-/

namespace A306543.P6482587613786984013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A084950 n) (A316432 (A057640 (3 * n + 1)).toNat)

end

end A306543.P6482587613786984013

/-! ## A306543.P5753370772363640552

`A219071(A001602(n+1))+A084938(2*(n+2))`
-/

namespace A306543.P5753370772363640552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219071 (A001602 (n + 1)).toNat + A084938 (2 * (n + 2))

end

end A306543.P5753370772363640552

/-! ## A306543.P581183498140592922

`A189661(A060436(n+1))+A084938(2*(n+2))`
-/

namespace A306543.P581183498140592922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189661 (A060436 (n + 1)).toNat + A084938 (2 * (n + 2))

end

end A306543.P581183498140592922

/-! ## A306543.P12123072898297280568

`A084938(2*(n+2))+A003849(A268448(3*n+2))`
-/

namespace A306543.P12123072898297280568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (2 * (n + 2)) + A003849 (A268448 (3 * n + 2)).toNat

end

end A306543.P12123072898297280568

/-!
# A306544: Any positive integer n has a smallest multiple consisting of a succession of 1's followed by a succession of 0's (A052983). This multiple is regarded as a binary number and a(n) is its conversion to base 10.

The programs for A306544, there is no canonical definition to state claims against.
-/

/-! ## A306544.P418832426482749140

`gcd(∑[A241177(2*n+1)], A241159(2*(n+2)))`
-/

namespace A306544.P418832426482749140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241177 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A241159 (2 * (n + 2)))

end

end A306544.P418832426482749140

/-!
# A306545: Number of permutations p of [2n+2] such that min_{j=1..2n+2} |p(j)-j| = n.

The programs for A306545, there is no canonical definition to state claims against.
-/

/-! ## A306545.P15685096703729259541

`A299789((n+2)²-2)`
-/

namespace A306545.P15685096703729259541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299789 ((n + 2) ^ 2 - 2)

end

end A306545.P15685096703729259541

/-!
# A306546: Modified Collatz Map such that odd numbers are treated the same, but even numbers have all factors of 2 removed.

The programs for A306546, the canonical program `A306546.P4171820241899143861` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306546 has offset 1).

The definition of A306546 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306546.P4171820241899143861

`A006370(A259445(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A306546

/-- `A006370(A259445(n+1))` -/
def P4171820241899143861.Spec : Prop :=
  ∀ n, P4171820241899143861.a n = A306546 (n + 1)

theorem P4171820241899143861.correct : P4171820241899143861.Spec := by
  intro n
  simp only [A306546, Nat.add_sub_cancel]

end A306546

/-! ## A306546.P12521927381128189862

`A006370((n+1)/A160467(n+1))`
-/

namespace A306546.P12521927381128189862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A160467 (n + 1) : ℚ))).toNat

end

end A306546.P12521927381128189862

namespace A306546

/-- `A006370((n+1)/A160467(n+1))` -/
def P12521927381128189862.Spec : Prop :=
  ∀ n, P12521927381128189862.a n = A306546 (n + 1)

end A306546

/-! ## A306546.P7972036030163606334

`A006370(A000034(n)*A000265(n+1))`
-/

namespace A306546.P7972036030163606334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A000034 n * A000265 (n + 1)).toNat

end

end A306546.P7972036030163606334

namespace A306546

/-- `A006370(A000034(n)*A000265(n+1))` -/
def P7972036030163606334.Spec : Prop :=
  ∀ n, P7972036030163606334.a n = A306546 (n + 1)

end A306546

/-! ## A306546.P9628128560919667317

`A001316(n+1)*A014682(n+1)/A001316(n)`
-/

namespace A306546.P9628128560919667317
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001316 (n + 1) * A014682 (n + 1) : ℚ) / (A001316 n : ℚ)

end

end A306546.P9628128560919667317

namespace A306546

/-- `A001316(n+1)*A014682(n+1)/A001316(n)` -/
def P9628128560919667317.Spec : Prop :=
  ∀ n, P9628128560919667317.a n = (A306546 (n + 1) : ℚ)

end A306546

/-! ## A306546.P14751692158734525205

`Δ[A022998(n+1)]+A000265(n+1)+n`
-/

namespace A306546.P14751692158734525205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A000265 (n + 1) + (n : ℤ))

end

end A306546.P14751692158734525205

namespace A306546

/-- `Δ[A022998(n+1)]+A000265(n+1)+n` -/
def P14751692158734525205.Spec : Prop :=
  ∀ n, P14751692158734525205.a n = A306546 (n + 1)

end A306546

/-! ## A306546.P1928662188012876414

`A014601((n+1)*A000035(n+1))+A000265(n+1)`
-/

namespace A306546.P1928662188012876414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 ((n + 1 : ℤ) * A000035 (n + 1)).toNat + A000265 (n + 1)

end

end A306546.P1928662188012876414

namespace A306546

/-- `A014601((n+1)*A000035(n+1))+A000265(n+1)` -/
def P1928662188012876414.Spec : Prop :=
  ∀ n, P1928662188012876414.a n = A306546 (n + 1)

end A306546

/-! ## A306546.P15502109471222615676

`A266437(n+1)+A030101(A030101(n+1))`
-/

namespace A306546.P15502109471222615676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 (n + 1) + A030101 (A030101 (n + 1)).toNat

end

end A306546.P15502109471222615676

namespace A306546

/-- `A266437(n+1)+A030101(A030101(n+1))` -/
def P15502109471222615676.Spec : Prop :=
  ∀ n, P15502109471222615676.a n = A306546 (n + 1)

end A306546

/-! ## A306546.P1860104235248430370

`A266437(n+1)+A093803(2*(n+1))`
-/

namespace A306546.P1860104235248430370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266437 (n + 1) + A093803 (2 * (n + 1))

end

end A306546.P1860104235248430370

namespace A306546

/-- `A266437(n+1)+A093803(2*(n+1))` -/
def P1860104235248430370.Spec : Prop :=
  ∀ n, P1860104235248430370.a n = A306546 (n + 1)

end A306546

/-! ## A306546.P8369848751016116696

`A030101(A030101(n+1))-A131732(2*n+1)`
-/

namespace A306546.P8369848751016116696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A030101 (n + 1)).toNat - A131732 (2 * n + 1)

end

end A306546.P8369848751016116696

namespace A306546

/-- `A030101(A030101(n+1))-A131732(2*n+1)` -/
def P8369848751016116696.Spec : Prop :=
  ∀ n, P8369848751016116696.a n = A306546 (n + 1)

end A306546

/-! ## A306546.P7824772236971308113

`A193356(A193356(n+1)+A000265(n+1)+1)+A000265(n+1)`
-/

namespace A306546.P7824772236971308113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (A193356 (n + 1) + A000265 (n + 1) + 1).toNat + A000265 (n + 1)

end

end A306546.P7824772236971308113

namespace A306546

/-- `A193356(A193356(n+1)+A000265(n+1)+1)+A000265(n+1)` -/
def P7824772236971308113.Spec : Prop :=
  ∀ n, P7824772236971308113.a n = A306546 (n + 1)

end A306546

/-!
# A306548: Triangle T(n,k) read by rows, where the k-th column is the shifted self-convolution of the power function n^k, n >= 0, 0 <= k <= n.

The programs for A306548, there is no canonical definition to state claims against.
-/

/-! ## A306548.P6278113104170967757

`A108611(6*A071920(n+1))`
-/

namespace A306548.P6278113104170967757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (6 * A071920 (n + 1)).toNat

end

end A306548.P6278113104170967757

/-! ## A306548.P10178998917335376092

`A191228(A297802(n+2))`
-/

namespace A306548.P10178998917335376092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191228 (A297802 (n + 2)).toNat

end

end A306548.P10178998917335376092

/-! ## A306548.P9827180061866069866

`floor(root(n+1, n+1)*A071920(A000005(2^n)))`
-/

namespace A306548.P9827180061866069866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) ^ (1 / (n + 1 : ℝ)) * (A071920 (A000005 (2 ^ n)).toNat : ℝ)⌋

end

end A306548.P9827180061866069866

/-! ## A306548.P6779643874533154050

`A261423(A132974(n))%A225640(n)`
-/

namespace A306548.P6779643874533154050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261423 (A132974 n).toNat) (A225640 n)

end

end A306548.P6779643874533154050

/-! ## A306548.P12552094472408541141

`A037853(A364071(n+1))`
-/

namespace A306548.P12552094472408541141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037853 (A364071 (n + 1)).toNat

end

end A306548.P12552094472408541141

/-!
# A306549: a(n) is the product of the positions of the zeros in the binary expansion of n (the most significant bit having position 1).

The programs for A306549, the canonical program `A306549.P16886189725106089348` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306549 has offset 0).

The definition of A306549 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A306286, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A306549.P16886189725106089348

`A070939(n)!/A306286(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A306549

/-- `A070939(n)!/A306286(n)` -/
def P16886189725106089348.Spec : Prop :=
  ∀ n, P16886189725106089348.a n = (A306549 n : ℚ)

end A306549

/-! ## A306549.P17448715795829569487

`A306286(A122155(n+1))`
-/

namespace A306549.P17448715795829569487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (A122155 (n + 1)).toNat

end

end A306549.P17448715795829569487

namespace A306549

/-- `A306286(A122155(n+1))` -/
def P17448715795829569487.Spec : Prop :=
  ∀ n, P17448715795829569487.a n = A306549 n

end A306549

/-! ## A306549.P730346523791048539

`A306286(A337909(n+1)-1)`
-/

namespace A306549.P730346523791048539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (A337909 (n + 1) - 1).toNat

end

end A306549.P730346523791048539

namespace A306549

/-- `A306286(A337909(n+1)-1)` -/
def P730346523791048539.Spec : Prop :=
  ∀ n, P730346523791048539.a n = A306549 n

end A306549

/-! ## A306549.P11972186186050531003

`A306286(xor(n, A053644(n+1)-1))`
-/

namespace A306549.P11972186186050531003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (Int.xor (n : ℤ) (A053644 (n + 1) - 1)).toNat

end

end A306549.P11972186186050531003

namespace A306549

/-- `A306286(xor(n, A053644(n+1)-1))` -/
def P11972186186050531003.Spec : Prop :=
  ∀ n, P11972186186050531003.a n = A306549 n

end A306549

/-! ## A306549.P18387282805320197533

`a(A025480(n))*A070940(n+1)` with `a(0)=1`
-/

namespace A306549.P18387282805320197533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (A025480 n).toNat * A070940 (n + 1)

end

end A306549.P18387282805320197533

namespace A306549

/-- `a(A025480(n))*A070940(n+1)` -/
def P18387282805320197533.Spec : Prop :=
  ∀ n, P18387282805320197533.a n = A306549 n

end A306549

/-! ## A306549.P6303371679597270414

`A306286(3*A053644(n+1)-(n+1))`
-/

namespace A306549.P6303371679597270414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (3 * A053644 (n + 1) - (n + 1 : ℤ)).toNat

end

end A306549.P6303371679597270414

namespace A306549

/-- `A306286(3*A053644(n+1)-(n+1))` -/
def P6303371679597270414.Spec : Prop :=
  ∀ n, P6303371679597270414.a n = A306549 n

end A306549

/-! ## A306549.P272754115049838541

`A306286(lcm(3, A053644(n+1))-(n+1))`
-/

namespace A306549.P272754115049838541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (Int.lcm 3 (A053644 (n + 1)) - (n + 1))

end

end A306549.P272754115049838541

namespace A306549

/-- `A306286(lcm(3, A053644(n+1))-(n+1))` -/
def P272754115049838541.Spec : Prop :=
  ∀ n, P272754115049838541.a n = A306549 n

end A306549

/-! ## A306549.P7837070534777389963

`A306286(A053644(n)+A035327(n))`
-/

namespace A306549.P7837070534777389963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (A053644 n + A035327 n).toNat

end

end A306549.P7837070534777389963

namespace A306549

/-- `A306286(A053644(n)+A035327(n))` -/
def P7837070534777389963.Spec : Prop :=
  ∀ n, P7837070534777389963.a n = A306549 n

end A306549

/-! ## A306549.P15781275244752848786

`A306286(A035327(n)+n)/A306286(n)`
-/

namespace A306549.P15781275244752848786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306286 (A035327 n + (n : ℤ)).toNat : ℚ) / (A306286 n : ℚ)

end

end A306549.P15781275244752848786

namespace A306549

/-- `A306286(A035327(n)+n)/A306286(n)` -/
def P15781275244752848786.Spec : Prop :=
  ∀ n, P15781275244752848786.a n = (A306549 n : ℚ)

end A306549

/-! ## A306549.P13622873341929605663

`A306286(A337909(n+2))`
-/

namespace A306549.P13622873341929605663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 (A337909 (n + 2)).toNat

end

end A306549.P13622873341929605663

namespace A306549

/-- `A306286(A337909(n+2))` -/
def P13622873341929605663.Spec : Prop :=
  ∀ n, P13622873341929605663.a n = A306549 n

end A306549

/-!
# A306550: Array read by antidiagonals where A(n,k) is the number of labeled k-antichains covering n vertices.

The programs for A306550, there is no canonical definition to state claims against.
-/

/-! ## A306550.P16785481254459750697

`A161910(A187081(n)²)`
-/

namespace A306550.P16785481254459750697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161910 (A187081 n ^ 2).toNat

end

end A306550.P16785481254459750697

/-! ## A306550.P10506154032785918822

`A003035(A324323(n)+2)`
-/

namespace A306550.P10506154032785918822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003035 (A324323 n + 2).toNat

end

end A306550.P10506154032785918822

/-! ## A306550.P11489723977574425225

`A237595(2^A324323(n))`
-/

namespace A306550.P11489723977574425225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237595 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A324323 n : ℤ))).toNat

end

end A306550.P11489723977574425225

/-! ## A306550.P16906389058919373911

`A340764(2^A324323(n))`
-/

namespace A306550.P16906389058919373911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340764 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A324323 n : ℤ))).toNat

end

end A306550.P16906389058919373911

/-! ## A306550.P5289229780016214115

`A353856(2^A324323(n))`
-/

namespace A306550.P5289229780016214115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353856 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A324323 n : ℤ))).toNat

end

end A306550.P5289229780016214115

/-!
# A306551: Number of non-double-crossing set partitions of {1,...,n}.

The programs for A306551, there is no canonical definition to state claims against.
-/

/-! ## A306551.P8892385801890571280

`A000110(n)-A306558(n)`
-/

namespace A306551.P8892385801890571280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A306558 n

end

end A306551.P8892385801890571280

/-! ## A306551.P3447838131752931190

`A192128(n)-A306558(n)`
-/

namespace A306551.P3447838131752931190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192128 n - A306558 n

end

end A306551.P3447838131752931190

/-! ## A306551.P16110164845987931973

`A192867(n)-A306558(n)`
-/

namespace A306551.P16110164845987931973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192867 n - A306558 n

end

end A306551.P16110164845987931973

/-! ## A306551.P3222487534168942823

`abs(A292935(n))-A306558(n)`
-/

namespace A306551.P3222487534168942823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 n| - A306558 n

end

end A306551.P3222487534168942823

/-! ## A306551.P6804275221603221236

`sqrt(A001247(n))-A306558(n)`
-/

namespace A306551.P6804275221603221236
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001247 n : ℝ) - (A306558 n : ℝ)

end

end A306551.P6804275221603221236

/-!
# A306552: Expansion of the 10-adic cube root of -1/7, that is, the 10-adic integer solution to x^3 = -1/7.

The programs for A306552, there is no canonical definition to state claims against.
-/

/-! ## A306552.P10239928637339790823

`A225402(n)+A225411(n)-A319739(n)`
-/

namespace A306552.P10239928637339790823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A319739 n)

end

end A306552.P10239928637339790823

/-! ## A306552.P1133973538610678200

`A225405(n)+A225408(n)-A319739(n)`
-/

namespace A306552.P1133973538610678200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A319739 n)

end

end A306552.P1133973538610678200

/-! ## A306552.P14626983501065055530

`A225406(n)+A225409(n)-A319739(n)`
-/

namespace A306552.P14626983501065055530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A319739 n)

end

end A306552.P14626983501065055530

/-! ## A306552.P9061447515344431500

`A225442(n)+A225451(n)-A319739(n)`
-/

namespace A306552.P9061447515344431500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A319739 n)

end

end A306552.P9061447515344431500

/-! ## A306552.P16412155824190917343

`A225457(n)+A225460(n)-A319739(n)`
-/

namespace A306552.P16412155824190917343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A319739 n)

end

end A306552.P16412155824190917343

/-! ## A306552.P6444024409284137835

`A309609(n)+A309612(n)-A319739(n)`
-/

namespace A306552.P6444024409284137835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309609 n + (A309612 n - A319739 n)

end

end A306552.P6444024409284137835

/-! ## A306552.P4923766750990234077

`A309601(n)+A309647(n)-A319739(n)`
-/

namespace A306552.P4923766750990234077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309601 n + (A309647 n - A319739 n)

end

end A306552.P4923766750990234077

/-! ## A306552.P14613785699850713315

`A309602(n)+A309646(n)-A319739(n)`
-/

namespace A306552.P14613785699850713315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309602 n + (A309646 n - A319739 n)

end

end A306552.P14613785699850713315

/-! ## A306552.P6113654547799895883

`A225404(n+1)+A225407(n)-A319739(n)`
-/

namespace A306552.P6113654547799895883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A319739 n)

end

end A306552.P6113654547799895883

/-! ## A306552.P17113423557060376105

`A306554(n+1)+A306555(n+1)-A319739(n)`
-/

namespace A306552.P17113423557060376105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A319739 n)

end

end A306552.P17113423557060376105

/-! ## A306552.P6483089422551701267

`A306553(n+1)+A319740(n+1)-A319739(n)`
-/

namespace A306552.P6483089422551701267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306553 (n + 1) + (A319740 (n + 1) - A319739 n)

end

end A306552.P6483089422551701267

/-!
# A306553: Expansion of the 10-adic cube root of -1/11, that is, the 10-adic integer solution to x^3 = -1/11.

The programs for A306553, there is no canonical definition to state claims against.
-/

/-! ## A306553.P5242042897137836527

`A225402(n)+A225411(n)-A319740(n+1)`
-/

namespace A306553.P5242042897137836527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A319740 (n + 1))

end

end A306553.P5242042897137836527

/-! ## A306553.P14975512013174432620

`A225405(n)+A225408(n)-A319740(n+1)`
-/

namespace A306553.P14975512013174432620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A319740 (n + 1))

end

end A306553.P14975512013174432620

/-! ## A306553.P4332265170942992088

`A225406(n)+A225409(n)-A319740(n+1)`
-/

namespace A306553.P4332265170942992088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A319740 (n + 1))

end

end A306553.P4332265170942992088

/-! ## A306553.P9922285834361080137

`A153042(n+1)+A225412(n)-A319740(n+1)`
-/

namespace A306553.P9922285834361080137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A319740 (n + 1))

end

end A306553.P9922285834361080137

/-! ## A306553.P10923133503681865950

`A225404(n+1)+A225407(n)-A319740(n+1)`
-/

namespace A306553.P10923133503681865950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A319740 (n + 1))

end

end A306553.P10923133503681865950

/-! ## A306553.P15908199705429064331

`A306552(n+1)+A319739(n)-A319740(n+1)`
-/

namespace A306553.P15908199705429064331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306552 (n + 1) + (A319739 n - A319740 (n + 1))

end

end A306553.P15908199705429064331

/-! ## A306553.P1933341334923610815

`A306554(n+1)+A306555(n+1)-A319740(n+1)`
-/

namespace A306553.P1933341334923610815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306554 (n + 1) + (A306555 (n + 1) - A319740 (n + 1))

end

end A306553.P1933341334923610815

/-!
# A306554: Expansion of the 10-adic cube root of 1/13, that is, the 10-adic integer solution to x^3 = 1/13.

The programs for A306554, there is no canonical definition to state claims against.
-/

/-! ## A306554.P6312070885412243652

`A225401(n)+A225410(n)-A306555(n+1)`
-/

namespace A306554.P6312070885412243652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A306555 (n + 1))

end

end A306554.P6312070885412243652

/-! ## A306554.P7296815024443949613

`A225402(n)+A225411(n)-A306555(n+1)`
-/

namespace A306554.P7296815024443949613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A306555 (n + 1))

end

end A306554.P7296815024443949613

/-! ## A306554.P8503750709056811080

`A225405(n)+A225408(n)-A306555(n+1)`
-/

namespace A306554.P8503750709056811080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A306555 (n + 1))

end

end A306554.P8503750709056811080

/-! ## A306554.P2298341356864454465

`A225406(n)+A225409(n)-A306555(n+1)`
-/

namespace A306554.P2298341356864454465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A306555 (n + 1))

end

end A306554.P2298341356864454465

/-! ## A306554.P12920357745042015847

`A225442(n)+A225451(n)-A306555(n+1)`
-/

namespace A306554.P12920357745042015847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A306555 (n + 1))

end

end A306554.P12920357745042015847

/-! ## A306554.P10466398413456620207

`A153042(n+1)+A225412(n)-A306555(n+1)`
-/

namespace A306554.P10466398413456620207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A306555 (n + 1))

end

end A306554.P10466398413456620207

/-! ## A306554.P8336703824443871181

`A225404(n+1)+A225407(n)-A306555(n+1)`
-/

namespace A306554.P8336703824443871181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A306555 (n + 1))

end

end A306554.P8336703824443871181

/-! ## A306554.P12805512416564618991

`A306552(n+1)+A319739(n)-A306555(n+1)`
-/

namespace A306554.P12805512416564618991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306552 (n + 1) + (A319739 n - A306555 (n + 1))

end

end A306554.P12805512416564618991

/-! ## A306554.P13379425108306803641

`A306553(n+1)+A319740(n+1)-A306555(n+1)`
-/

namespace A306554.P13379425108306803641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306553 (n + 1) + (A319740 (n + 1) - A306555 (n + 1))

end

end A306554.P13379425108306803641

/-!
# A306555: Expansion of the 10-adic cube root of -1/13, that is, the 10-adic integer solution to x^3 = -1/13.

The programs for A306555, there is no canonical definition to state claims against.
-/

/-! ## A306555.P7985646486181077173

`A225401(n)+A225410(n)-A306554(n+1)`
-/

namespace A306555.P7985646486181077173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225401 n + (A225410 n - A306554 (n + 1))

end

end A306555.P7985646486181077173

/-! ## A306555.P8512758259098655315

`A225402(n)+A225411(n)-A306554(n+1)`
-/

namespace A306555.P8512758259098655315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225402 n + (A225411 n - A306554 (n + 1))

end

end A306555.P8512758259098655315

/-! ## A306555.P17593882108842314750

`A225405(n)+A225408(n)-A306554(n+1)`
-/

namespace A306555.P17593882108842314750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225405 n + (A225408 n - A306554 (n + 1))

end

end A306555.P17593882108842314750

/-! ## A306555.P8943383796707627381

`A225406(n)+A225409(n)-A306554(n+1)`
-/

namespace A306555.P8943383796707627381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225406 n + (A225409 n - A306554 (n + 1))

end

end A306555.P8943383796707627381

/-! ## A306555.P16516576849428587683

`A225442(n)+A225451(n)-A306554(n+1)`
-/

namespace A306555.P16516576849428587683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225442 n + (A225451 n - A306554 (n + 1))

end

end A306555.P16516576849428587683

/-! ## A306555.P6416880527028948885

`A225457(n)+A225460(n)-A306554(n+1)`
-/

namespace A306555.P6416880527028948885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225457 n + (A225460 n - A306554 (n + 1))

end

end A306555.P6416880527028948885

/-! ## A306555.P6807972469794138816

`A153042(n+1)+A225412(n)-A306554(n+1)`
-/

namespace A306555.P6807972469794138816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153042 (n + 1) + (A225412 n - A306554 (n + 1))

end

end A306555.P6807972469794138816

/-! ## A306555.P14308772440021325664

`A225404(n+1)+A225407(n)-A306554(n+1)`
-/

namespace A306555.P14308772440021325664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225404 (n + 1) + (A225407 n - A306554 (n + 1))

end

end A306555.P14308772440021325664

/-! ## A306555.P17483533027564334182

`A306552(n+1)+A319739(n)-A306554(n+1)`
-/

namespace A306555.P17483533027564334182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306552 (n + 1) + (A319739 n - A306554 (n + 1))

end

end A306555.P17483533027564334182

/-! ## A306555.P11495451690664319512

`A306553(n+1)+A319740(n+1)-A306554(n+1)`
-/

namespace A306555.P11495451690664319512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306553 (n + 1) + (A319740 (n + 1) - A306554 (n + 1))

end

end A306555.P11495451690664319512

/-!
# A306556: Integers that appear as (unreduced) numerators of segment endpoints when a ternary Cantor set is created.

The programs for A306556, there is no canonical definition to state claims against.
-/

/-! ## A306556.P14245490101911269244

`∑[ceil(and(n, -n)/2)^log2(3)]`
-/

namespace A306556.P14245490101911269244
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (⌈(Int.land (n : ℤ) (-(n : ℤ)) : ℚ) / 2⌉ : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306556.P14245490101911269244

/-! ## A306556.P10169747204165737583

`round(∑[and(n, -n)^log2(3)+1]/3)`
-/

namespace A306556.P10169747204165737583
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j) / 3)

end

end A306556.P10169747204165737583

/-! ## A306556.P14568345426352054409

`ceil((∑[and(n, -n)^log2(3)]+n)*γ²)`
-/

namespace A306556.P14568345426352054409
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) * Real.eulerMascheroniConstant ^ 2⌉

end

end A306556.P14568345426352054409

/-! ## A306556.P5983221754416298114

`round((∑[and(n, -n)^log2(3)]+n)*γ²)`
-/

namespace A306556.P5983221754416298114
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) * Real.eulerMascheroniConstant ^ 2)

end

end A306556.P5983221754416298114

/-! ## A306556.P1488156777250306189

`floor((∑[and(n, -n)^log2(3)]+1+n)/3)`
-/

namespace A306556.P1488156777250306189
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j + 1 + (n : ℝ)) / 3⌋

end

end A306556.P1488156777250306189

/-! ## A306556.P8034006402261877745

`n%2+a(and(n-1, -(n+1)))+a(n-1)` with `a(0)=0`
-/

namespace A306556.P8034006402261877745
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  n % 2 + (a (Int.land ((n : ℤ) - 1) (-(n + 1 : ℤ))).toNat + a (n - 1))

end

end A306556.P8034006402261877745

/-! ## A306556.P12386898589534924773

`record[A368229(n)]`
-/

namespace A306556.P12386898589534924773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368229 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306556.P12386898589534924773

/-! ## A306556.P7893897117420498405

`eq[0, A227833(n)]`
-/

namespace A306556.P7893897117420498405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227833 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306556.P7893897117420498405

/-! ## A306556.P17415681229116872358

`floor(∑[A061393(n)]/3)`
-/

namespace A306556.P17415681229116872358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌋

end

end A306556.P17415681229116872358

/-! ## A306556.P16438598467458546524

`record[ceil(A004488(n)/3)]`
-/

namespace A306556.P16438598467458546524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004488 n : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306556.P16438598467458546524

/-!
# A306557: Numerator coefficients of the bivariate Maclaurin series ("inverse Kepler equation") developed as Lagrange inversion E=KeplerInv(e,M) of Kepler's equation M = Kepler(e,E) = E - e*sin(E).

The programs for A306557, there is no canonical definition to state claims against.
-/

/-! ## A306557.P7128034892554558214

`A124360(A000296(n)*A008615(n))`
-/

namespace A306557.P7128034892554558214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124360 (A000296 n * A008615 n).toNat

end

end A306557.P7128034892554558214

/-! ## A306557.P6788745226524024121

`A060819(A199101(n+3)^A263297(n+1))`
-/

namespace A306557.P6788745226524024121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (SequenceMachineLib.roundAway ((A199101 (n + 3) : ℚ) ^ (A263297 (n + 1) : ℤ))).toNat

end

end A306557.P6788745226524024121

/-!
# A306558: Number of double-crossing set partitions of {1,...,n}.

The programs for A306558, there is no canonical definition to state claims against.
-/

/-! ## A306558.P3930453959156923216

`A000110(n)-A306551(n)`
-/

namespace A306558.P3930453959156923216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n - A306551 n

end

end A306558.P3930453959156923216

/-! ## A306558.P640996146526857491

`A263822(n+1)+char[6]`
-/

namespace A306558.P640996146526857491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263822 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A306558.P640996146526857491

/-! ## A306558.P897919584880434862

`A102236(A282845(n))`
-/

namespace A306558.P897919584880434862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102236 (A282845 n).toNat

end

end A306558.P897919584880434862

/-! ## A306558.P6173710469224701895

`A257726(A290895(n))`
-/

namespace A306558.P6173710469224701895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257726 (A290895 n).toNat

end

end A306558.P6173710469224701895

/-! ## A306558.P6301375465563240212

`A339559(A394801(n))`
-/

namespace A306558.P6301375465563240212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339559 (A394801 n).toNat

end

end A306558.P6301375465563240212

/-!
# A306560: Smallest number of 1's required to build n using +, *, ^ and tetration.

The programs for A306560, there is no canonical definition to state claims against.
-/

/-! ## A306560.P13491386817492357076

`A228710(A071207(n))+A005208(n+1)`
-/

namespace A306560.P13491386817492357076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 (A071207 n).toNat + A005208 (n + 1)

end

end A306560.P13491386817492357076

/-! ## A306560.P4521952734272768056

`A025280(n+1)-A179801(A327884(n))`
-/

namespace A306560.P4521952734272768056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025280 (n + 1) - A179801 (A327884 n).toNat

end

end A306560.P4521952734272768056

/-! ## A306560.P3822499632991574303

`A025280(n+1)+A228710(A071207(n))-1`
-/

namespace A306560.P3822499632991574303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025280 (n + 1) + (A228710 (A071207 n).toNat - 1)

end

end A306560.P3822499632991574303

/-! ## A306560.P16813764820515670519

`A005208(n+1)+1-A179801(A327884(n))`
-/

namespace A306560.P16813764820515670519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005208 (n + 1) + (1 - A179801 (A327884 n).toNat)

end

end A306560.P16813764820515670519

/-! ## A306560.P14847608325453539492

`A228710(A071207(n))+floor(A217250(n+1)/2)`
-/

namespace A306560.P14847608325453539492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228710 (A071207 n).toNat + ⌊(A217250 (n + 1) : ℚ) / 2⌋

end

end A306560.P14847608325453539492

/-!
# A306561: Square numbers that are also central polygonal numbers (i.e., square numbers found in the Lazy Caterer's sequence).

The programs for A306561, the canonical program `A306561.P7138890654757422040` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306561 has offset 1).

The definition of A306561 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306561.P7138890654757422040

`A006452(n+1)²`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A306561

/-- `A006452(n+1)²` -/
def P7138890654757422040.Spec : Prop :=
  ∀ n, P7138890654757422040.a n = A306561 (n + 1)

theorem P7138890654757422040.correct : P7138890654757422040.Spec := by
  intro n
  simp only [A306561, Nat.add_sub_cancel]

end A306561

/-! ## A306561.P4812721011525227488

`A006454(n)+1`
-/

namespace A306561.P4812721011525227488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006454 n + 1

end

end A306561.P4812721011525227488

namespace A306561

/-- `A006454(n)+1` -/
def P4812721011525227488.Spec : Prop :=
  ∀ n, P4812721011525227488.a n = A306561 (n + 1)

end A306561

/-! ## A306561.P7638562337495744836

`∏[ratio[A006452(n)]²]`
-/

namespace A306561.P7638562337495744836
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006452 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℚ) / (f2 n : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306561.P7638562337495744836

namespace A306561

/-- `∏[ratio[A006452(n)]²]` -/
def P7638562337495744836.Spec : Prop :=
  ∀ n, P7638562337495744836.a n = (A306561 (n + 1) : ℚ)

end A306561

/-! ## A306561.P3526019591135450305

`A217278(Δ[n²])+1`
-/

namespace A306561.P3526019591135450305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217278 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A306561.P3526019591135450305

namespace A306561

/-- `A217278(Δ[n²])+1` -/
def P3526019591135450305.Spec : Prop :=
  ∀ n, P3526019591135450305.a n = A306561 (n + 1)

end A306561

/-! ## A306561.P12077383931184482828

`A216162(2*(n+1))²`
-/

namespace A306561.P12077383931184482828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216162 (2 * (n + 1)) ^ 2

end

end A306561.P12077383931184482828

namespace A306561

/-- `A216162(2*(n+1))²` -/
def P12077383931184482828.Spec : Prop :=
  ∀ n, P12077383931184482828.a n = A306561 (n + 1)

end A306561

/-! ## A306561.P1061060931514928922

`(A217975(n+1)/2)²`
-/

namespace A306561.P1061060931514928922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A217975 (n + 1) : ℚ) / 2) ^ 2

end

end A306561.P1061060931514928922

namespace A306561

/-- `(A217975(n+1)/2)²` -/
def P1061060931514928922.Spec : Prop :=
  ∀ n, P1061060931514928922.a n = (A306561 (n + 1) : ℚ)

end A306561

/-! ## A306561.P12075468779417938024

`(A077447(n+1)/4)²`
-/

namespace A306561.P12075468779417938024
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A077447 (n + 1) : ℚ) / 4) ^ 2

end

end A306561.P12075468779417938024

namespace A306561

/-- `(A077447(n+1)/4)²` -/
def P12075468779417938024.Spec : Prop :=
  ∀ n, P12075468779417938024.a n = (A306561 (n + 1) : ℚ)

end A306561

/-! ## A306561.P2622968281259965239

`C(A006451(n)+1, 2)+1`
-/

namespace A306561.P2622968281259965239
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006451 n + 1).toNat 2 + 1

end

end A306561.P2622968281259965239

namespace A306561

/-- `C(A006451(n)+1, 2)+1` -/
def P2622968281259965239.Spec : Prop :=
  ∀ n, (P2622968281259965239.a n : ℤ) = A306561 (n + 1)

end A306561

/-! ## A306561.P5061298278233530284

`record[Δ[A276600(n+1)/2]²]`
-/

namespace A306561.P5061298278233530284
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276600 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306561.P5061298278233530284

namespace A306561

/-- `record[Δ[A276600(n+1)/2]²]` -/
def P5061298278233530284.Spec : Prop :=
  ∀ n, P5061298278233530284.a n = (A306561 (n + 1) : ℚ)

end A306561

/-! ## A306561.P16811777115855995992

`A182334(A114119(n))+1`
-/

namespace A306561.P16811777115855995992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182334 (A114119 n).toNat + 1

end

end A306561.P16811777115855995992

namespace A306561

/-- `A182334(A114119(n))+1` -/
def P16811777115855995992.Spec : Prop :=
  ∀ n, P16811777115855995992.a n = A306561 (n + 1)

end A306561

/-! ## A306561.P16817920243744438820

`A299921(A007494(n+1))`
-/

namespace A306561.P16817920243744438820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299921 (A007494 (n + 1)).toNat

end

end A306561.P16817920243744438820

namespace A306561

/-- `A299921(A007494(n+1))` -/
def P16817920243744438820.Spec : Prop :=
  ∀ n, P16817920243744438820.a n = A306561 (n + 1)

end A306561

/-! ## A306561.P16739449378326478931

`A299921(A294732(n+3))`
-/

namespace A306561.P16739449378326478931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299921 (A294732 (n + 3)).toNat

end

end A306561.P16739449378326478931

namespace A306561

/-- `A299921(A294732(n+3))` -/
def P16739449378326478931.Spec : Prop :=
  ∀ n, P16739449378326478931.a n = A306561 (n + 1)

end A306561

/-! ## A306561.P13238557519515661310

`record[A217278(A026741(n))+1]`
-/

namespace A306561.P13238557519515661310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217278 (A026741 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306561.P13238557519515661310

namespace A306561

/-- `record[A217278(A026741(n))+1]` -/
def P13238557519515661310.Spec : Prop :=
  ∀ n, P13238557519515661310.a n = A306561 (n + 1)

end A306561

/-! ## A306561.P3591870888882323701

`(A048739(n)-A216134(n))²`
-/

namespace A306561.P3591870888882323701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048739 n - A216134 n) ^ 2

end

end A306561.P3591870888882323701

namespace A306561

/-- `(A048739(n)-A216134(n))²` -/
def P3591870888882323701.Spec : Prop :=
  ∀ n, P3591870888882323701.a n = A306561 (n + 1)

end A306561

/-! ## A306561.P17402223272319433052

`(A266504(A042948(n+1))/2)²`
-/

namespace A306561.P17402223272319433052
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A266504 (A042948 (n + 1)).toNat : ℚ) / 2) ^ 2

end

end A306561.P17402223272319433052

namespace A306561

/-- `(A266504(A042948(n+1))/2)²` -/
def P17402223272319433052.Spec : Prop :=
  ∀ n, P17402223272319433052.a n = (A306561 (n + 1) : ℚ)

end A306561

/-! ## A306561.P11356281153899806833

`(A266504(A338062(n+1))/2)²`
-/

namespace A306561.P11356281153899806833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A266504 (A338062 (n + 1)).toNat : ℚ) / 2) ^ 2

end

end A306561.P11356281153899806833

namespace A306561

/-- `(A266504(A338062(n+1))/2)²` -/
def P11356281153899806833.Spec : Prop :=
  ∀ n, P11356281153899806833.a n = (A306561 (n + 1) : ℚ)

end A306561

/-! ## A306561.P17040560418822472834

`(A266506(A047467(n+2))/2)²`
-/

namespace A306561.P17040560418822472834
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A266506 (A047467 (n + 2)).toNat : ℚ) / 2) ^ 2

end

end A306561.P17040560418822472834

namespace A306561

/-- `(A266506(A047467(n+2))/2)²` -/
def P17040560418822472834.Spec : Prop :=
  ∀ n, P17040560418822472834.a n = (A306561 (n + 1) : ℚ)

end A306561

/-! ## A306561.P1385063235412718730

`(A216134(n+1)-A006451(n))²`
-/

namespace A306561.P1385063235412718730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A216134 (n + 1) - A006451 n) ^ 2

end

end A306561.P1385063235412718730

namespace A306561

/-- `(A216134(n+1)-A006451(n))²` -/
def P1385063235412718730.Spec : Prop :=
  ∀ n, P1385063235412718730.a n = A306561 (n + 1)

end A306561

/-! ## A306561.P7860707642727246431

`(A077443(n+1)-A156066(n+1))²`
-/

namespace A306561.P7860707642727246431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077443 (n + 1) - A156066 (n + 1)) ^ 2

end

end A306561.P7860707642727246431

namespace A306561

/-- `(A077443(n+1)-A156066(n+1))²` -/
def P7860707642727246431.Spec : Prop :=
  ∀ n, P7860707642727246431.a n = A306561 (n + 1)

end A306561

/-! ## A306561.P7693924938532030778

`(A077241(n+1)-A143609(n+2))²`
-/

namespace A306561.P7693924938532030778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077241 (n + 1) - A143609 (n + 2)) ^ 2

end

end A306561.P7693924938532030778

namespace A306561

/-- `(A077241(n+1)-A143609(n+2))²` -/
def P7693924938532030778.Spec : Prop :=
  ∀ n, P7693924938532030778.a n = A306561 (n + 1)

theorem P7693924938532030778.correct : P7693924938532030778.Spec := by
  intro n
  simp only [A306561, Nat.add_sub_cancel, A306561.P7693924938532030778.a, A306561.P7138890654757422040.a, A006452, A006452.P10442096349668342578.a, A077241, A077241.P11340406433568583916.a, A143609, A143609.P8190246402705195611.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A306561

/-!
# A306562: a(n) = 1 + 2 - 3 - 4 + 5 + 6 + 7 - 8 - 9 - 10 - 11 + 12 + 13 + 14 + 15 + ... + (+-1)*n, where, after the 1st summand there is one plus, two minuses, three plusses, etc.

The programs for A306562, the canonical program `A306562.P13225205083291661171` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306562 has offset 0).

The definition of A306562 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A306562.P13225205083291661171

`a(n-1)+(n+1)*(-1)^floor(sqrt(2*n)-1/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A306562

/-- `a(n-1)+(n+1)*(-1)^floor(sqrt(2*n)-1/2)` -/
def P13225205083291661171.Spec : Prop :=
  ∀ n, P13225205083291661171.a n = (A306562 n : ℚ)

end A306562

/-! ## A306562.P16119339116946339608

`∑[(n+1)*A165326(round(sqrt(2*n)))]`
-/

namespace A306562.P16119339116946339608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A165326 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306562.P16119339116946339608

namespace A306562

/-- `∑[(n+1)*A165326(round(sqrt(2*n)))]` -/
def P16119339116946339608.Spec : Prop :=
  ∀ n, P16119339116946339608.a n = A306562 n

end A306562

/-! ## A306562.P16838594461173304285

`2-∑[(n+1)/A033999(round(sqrt(2*n)))]`
-/

namespace A306562.P16838594461173304285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A033999 (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306562.P16838594461173304285

namespace A306562

/-- `2-∑[(n+1)/A033999(round(sqrt(2*n)))]` -/
def P16838594461173304285.Spec : Prop :=
  ∀ n, P16838594461173304285.a n = (A306562 n : ℚ)

end A306562

/-! ## A306562.P5162069780068480436

`2-∑[(n+1)*A033999(A123578(n))]`
-/

namespace A306562.P5162069780068480436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033999 (A123578 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306562.P5162069780068480436

namespace A306562

/-- `2-∑[(n+1)*A033999(A123578(n))]` -/
def P5162069780068480436.Spec : Prop :=
  ∀ n, P5162069780068480436.a n = A306562 n

end A306562

/-! ## A306562.P16266160193725324204

`∑[(n+1)*A033999(A123578(n)+1)]+2`
-/

namespace A306562.P16266160193725324204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A033999 (A123578 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A306562.P16266160193725324204

namespace A306562

/-- `∑[(n+1)*A033999(A123578(n)+1)]+2` -/
def P16266160193725324204.Spec : Prop :=
  ∀ n, P16266160193725324204.a n = A306562 n

end A306562

/-!
# A306563: Number of power towers of x whose integrals over [0, 1] are above average.

The programs for A306563, there is no canonical definition to state claims against.
-/

/-! ## A306563.P3132020812091975833

`A185712(A098813(n+1))`
-/

namespace A306563.P3132020812091975833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185712 (A098813 (n + 1)).toNat

end

end A306563.P3132020812091975833

/-! ## A306563.P16587701078728562228

`A008651(2*A295143(n))`
-/

namespace A306563.P16587701078728562228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (2 * A295143 n).toNat

end

end A306563.P16587701078728562228

/-! ## A306563.P15351122536702689998

`A190169(n)+A086600(A223096(n))`
-/

namespace A306563.P15351122536702689998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190169 n + A086600 (A223096 n).toNat

end

end A306563.P15351122536702689998

/-! ## A306563.P8746692487305437079

`A008651(A295143(n)+A295143(n)-A008651(n))`
-/

namespace A306563.P8746692487305437079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008651 (A295143 n + (A295143 n - A008651 n)).toNat

end

end A306563.P8746692487305437079

/-!
# A306564: Record values in A216476.

The programs for A306564, there is no canonical definition to state claims against.
-/

/-! ## A306564.P12378244755019553119

`A216476(A216502(n+1))`
-/

namespace A306564.P12378244755019553119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216476 (A216502 (n + 1)).toNat

end

end A306564.P12378244755019553119

/-! ## A306564.P7613033078682934233

`record[A216476(n+1)]`
-/

namespace A306564.P7613033078682934233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306564.P7613033078682934233

/-! ## A306564.P7952392888193001363

`record[A000010(A322528(n+4)-1)]`
-/

namespace A306564.P7952392888193001363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A322528 (n + 4) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306564.P7952392888193001363

/-! ## A306564.P2379536005711841067

`record[A002326(n)-A034492(n+1)]`
-/

namespace A306564.P2379536005711841067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002326 n - A034492 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306564.P2379536005711841067

/-! ## A306564.P17478268130374979528

`record[A002326(n)%A007749(n+1)]`
-/

namespace A306564.P17478268130374979528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002326 n) (A007749 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306564.P17478268130374979528

/-!
# A306566: y-value of the smallest solution to x^2 - p*y^2 = 2*(-1)^((p+1)/4), p = A002145(n).

The programs for A306566, there is no canonical definition to state claims against.
-/

/-! ## A306566.P2597111070828120217

`A082394(n+1)/A306529(n+1)`
-/

namespace A306566.P2597111070828120217
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082394 (n + 1) : ℚ) / (A306529 (n + 1) : ℚ)

end

end A306566.P2597111070828120217

/-! ## A306566.P17151873381300220123

`A006703(p?[4*n-1])/A306529(n+1)`
-/

namespace A306566.P17151873381300220123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / (A306529 (n + 1) : ℚ)

end

end A306566.P17151873381300220123

/-! ## A306566.P7346566446101357460

`A006703(A002145(n+1))/A306529(n+1)`
-/

namespace A306566.P7346566446101357460
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (A002145 (n + 1)).toNat : ℚ) / (A306529 (n + 1) : ℚ)

end

end A306566.P7346566446101357460

/-! ## A306566.P17412375594405825902

`A006703(A045326(n+2))/A306529(n+1)`
-/

namespace A306566.P17412375594405825902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (A045326 (n + 2)).toNat : ℚ) / (A306529 (n + 1) : ℚ)

end

end A306566.P17412375594405825902

/-! ## A306566.P16248526688762184001

`A006703(A281664(n+2)+1)/A306529(n+1)`
-/

namespace A306566.P16248526688762184001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (A281664 (n + 2) + 1).toNat : ℚ) / (A306529 (n + 1) : ℚ)

end

end A306566.P16248526688762184001

/-! ## A306566.P14522612403190036307

`A006703(record[A014963(4*n+3)])/A306529(n+1)`
-/

namespace A306566.P14522612403190036307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006703 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / (A306529 (n + 1) : ℚ)

end

end A306566.P14522612403190036307

/-!
# A306570: Values of n such that 5^n ends in n, or expomorphic numbers relative to "base" 5.

The programs for A306570, there is no canonical definition to state claims against.
-/

/-! ## A306570.P17322563607250828747

`∏[A001065((2*n+1)^(n-1)+2)+4]`
-/

namespace A306570.P17322563607250828747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (SequenceMachineLib.roundAway ((2 * n + 1 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 2)).toNat + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A306570.P17322563607250828747

/-!
# A306573: Numbers k such that 11^(k+7) + 7^(k+5) + 5^(k+3) + 3^(k+2) + 2^(k+1) + 1 is prime.

The programs for A306573, there is no canonical definition to state claims against.
-/

/-! ## A306573.P5028068504172697332

`A171679(A053681(n))`
-/

namespace A306573.P5028068504172697332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171679 (A053681 n).toNat

end

end A306573.P5028068504172697332

/-!
# A306575: Expansion of 1/(1 - x - x^2/(1 - x^2 - x^3/(1 - x^3 - x^4/(1 - x^4 - x^5/(1 - ...))))), a continued fraction.

The programs for A306575, there is no canonical definition to state claims against.
-/

/-! ## A306575.P5033594816813821204

`A060384(A125898(n+1)*A251072(n))`
-/

namespace A306575.P5033594816813821204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A125898 (n + 1) * A251072 n).toNat

end

end A306575.P5033594816813821204

/-! ## A306575.P4455087919108506683

`A060384(A125898(n+1)^A251072(n))`
-/

namespace A306575.P4455087919108506683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (SequenceMachineLib.roundAway ((A125898 (n + 1) : ℚ) ^ (A251072 n : ℤ))).toNat

end

end A306575.P4455087919108506683

/-! ## A306575.P17555667638623892667

`A060384(lcm(A125898(n+1), A251072(n)))`
-/

namespace A306575.P17555667638623892667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (Int.lcm (A125898 (n + 1)) (A251072 n))

end

end A306575.P17555667638623892667

/-! ## A306575.P324719372500475489

`A060384(A125898(n+1)%A067381(n+1))`
-/

namespace A306575.P324719372500475489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (Int.tmod (A125898 (n + 1)) (A067381 (n + 1))).toNat

end

end A306575.P324719372500475489

/-! ## A306575.P6073112303991581508

`A060384(A125898(n+1)+A251072(n)²²)`
-/

namespace A306575.P6073112303991581508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A125898 (n + 1) + (A251072 n ^ 2) ^ 2).toNat

end

end A306575.P6073112303991581508

/-!
# A306576: Expansion of 1/(1 - x - 2*x/(1 - 2*x - 3*x/(1 - 3*x - 4*x/(1 - 4*x - 5*x/(1 - ...))))), a continued fraction.

The programs for A306576, there is no canonical definition to state claims against.
-/

/-! ## A306576.P17247743101169201428

`floor(A054965((n+1)^(n+1)+1)/3)`
-/

namespace A306576.P17247743101169201428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054965 ((n + 1) ^ (n + 1) + 1) : ℚ) / 3⌋

end

end A306576.P17247743101169201428

/-!
# A306577: Last odd number reached by n before 1 through Collatz iteration, where a(n) = 1 when no other odd number is reached, or -1 if 1 is never reached.

The programs for A306577, there is no canonical definition to state claims against.
-/

/-! ## A306577.P9760431077795518538

`or(1, A238192(n+1))`
-/

namespace A306577.P9760431077795518538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A238192 (n + 1))

end

end A306577.P9760431077795518538

/-! ## A306577.P8688607510177443058

`or(1, A237660(2*(n+1)))`
-/

namespace A306577.P8688607510177443058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A237660 (2 * (n + 1)))

end

end A306577.P8688607510177443058

/-! ## A306577.P14510440260878213859

`A009001(A238192(n+1))`
-/

namespace A306577.P14510440260878213859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A238192 (n + 1)).toNat

end

end A306577.P14510440260878213859

/-! ## A306577.P17750286406680417053

`A238192(n+1)+A036987(n)`
-/

namespace A306577.P17750286406680417053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (n + 1) + A036987 n

end

end A306577.P17750286406680417053

/-! ## A306577.P16916476149618600512

`∏{p}[A238192(n+1), A006530(#)]`
-/

namespace A306577.P16916476149618600512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A006530 p

end

end A306577.P16916476149618600512

/-! ## A306577.P17513567852839431465

`∏{p}[A238192(n+1), A014963(#)]`
-/

namespace A306577.P17513567852839431465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A014963 p

end

end A306577.P17513567852839431465

/-! ## A306577.P11986750759573557803

`∏{p}[A238192(n+1), A020639(#)]`
-/

namespace A306577.P11986750759573557803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p

end

end A306577.P11986750759573557803

/-! ## A306577.P17022319728599506637

`A060000(A238192(n+1)+2)-1`
-/

namespace A306577.P17022319728599506637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (A238192 (n + 1) + 2).toNat - 1

end

end A306577.P17022319728599506637

/-! ## A306577.P6749759489110296362

`gcd(A154269(n+1), A238192(n+1))`
-/

namespace A306577.P6749759489110296362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A154269 (n + 1)) (A238192 (n + 1))

end

end A306577.P6749759489110296362

/-! ## A306577.P14871181204329949761

`A238192(n+1)+A154269(A238192(n+1)+1)`
-/

namespace A306577.P14871181204329949761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (n + 1) + A154269 (A238192 (n + 1) + 1).toNat

end

end A306577.P14871181204329949761

/-! ## A306577.P1423345895492672602

`A238192(n+1)+A083889(A238192(n+1)+2)`
-/

namespace A306577.P1423345895492672602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238192 (n + 1) + A083889 (A238192 (n + 1) + 2).toNat

end

end A306577.P1423345895492672602

/-! ## A306577.P1058088806355139280

`A123108(2*A238192(n+1))`
-/

namespace A306577.P1058088806355139280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * A238192 (n + 1)).toNat

end

end A306577.P1058088806355139280

/-! ## A306577.P5226556882204075520

`A014963(2*(n+1))+A238192(n+1)-1`
-/

namespace A306577.P5226556882204075520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * (n + 1)) + (A238192 (n + 1) - 1)

end

end A306577.P5226556882204075520

/-!
# A306578: a(n) = n! * [x^n] A_n(x) with A_n(x) = exp(x*A_n(((x+1)^n-1)/n)) if n > 0 and A_0(x) = exp(x).

The programs for A306578, there is no canonical definition to state claims against.
-/

/-! ## A306578.P15688533265860745520

`A143632(∑[4*n])`
-/

namespace A306578.P15688533265860745520
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306578.P15688533265860745520

/-! ## A306578.P3325510041240988384

`A143632(A046092(n))+A025469(n)`
-/

namespace A306578.P3325510041240988384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143632 (A046092 n).toNat + A025469 n

end

end A306578.P3325510041240988384

/-! ## A306578.P11199764023636749942

`A178780(n)+A143632(A046092(n))`
-/

namespace A306578.P11199764023636749942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 n + A143632 (A046092 n).toNat

end

end A306578.P11199764023636749942

/-! ## A306578.P13736757031100598190

`A143632(A046092(n))^A178334(n)`
-/

namespace A306578.P13736757031100598190
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143632 (A046092 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A306578.P13736757031100598190

/-! ## A306578.P11372149955989666234

`gcd(A000038(n), A143632(A046092(n)))`
-/

namespace A306578.P11372149955989666234
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A143632 (A046092 n).toNat)

end

end A306578.P11372149955989666234

/-!
# A306582: a(n) is the least integer k such that the remainder of k modulo p is strictly increasing over the first n primes.

The programs for A306582, there is no canonical definition to state claims against.
-/

/-! ## A306582.P15861227804883513341

`A324598(A381858(n+1))`
-/

namespace A306582.P15861227804883513341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324598 (A381858 (n + 1)).toNat

end

end A306582.P15861227804883513341

/-! ## A306582.P11680075225265417222

`A324598(A202088(n+1)+1)`
-/

namespace A306582.P11680075225265417222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324598 (A202088 (n + 1) + 1).toNat

end

end A306582.P11680075225265417222

/-!
# A306583: Positive integers that cannot be represented as a sum or difference of factorials of distinct integers.

The programs for A306583, there is no canonical definition to state claims against.
-/

/-! ## A306583.P17263120013922428117

`A040131(A261902(n+1))+10+n`
-/

namespace A306583.P17263120013922428117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040131 (A261902 (n + 1)).toNat + 10 + (n : ℤ)

end

end A306583.P17263120013922428117

/-! ## A306583.P8156882929774648131

`∑[A010194(Δ[A084214(n)])]`
-/

namespace A306583.P8156882929774648131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084214 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306583.P8156882929774648131

/-! ## A306583.P6636545161565803138

`∑[A010194(record[A349905(n+1)])]`
-/

namespace A306583.P6636545161565803138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349905 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306583.P6636545161565803138

/-! ## A306583.P8198528594282339353

`32%A016105(A328130(n+1)+1)+n`
-/

namespace A306583.P8198528594282339353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 32 (A016105 (A328130 (n + 1) + 1).toNat) + (n : ℤ)

end

end A306583.P8198528594282339353

/-! ## A306583.P14843172626044457806

`∑[A010194(A263469(n+1)²)]`
-/

namespace A306583.P14843172626044457806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010194 (A263469 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A306583.P14843172626044457806

/-!
# A306584: For any n >= 0, let f_n be the representation of n in the factorial number system: for any i >= 0, 0 <= f_n(i) <= i and n = Sum_{i >= 0} f_n(i) * i!. The representation of a(n) in the factorial number system, say g, satisfies g(i) = f_n(f_n(i)) for any i >= 0.

The programs for A306584, there is no canonical definition to state claims against.
-/

/-! ## A306584.P15221699498907331266

`n%A079210(A100978(n+1))`
-/

namespace A306584.P15221699498907331266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A079210 (A100978 (n + 1)).toNat)

end

end A306584.P15221699498907331266

/-! ## A306584.P7274373335344321840

`A070474(n)*A322980(A007676(n))`
-/

namespace A306584.P7274373335344321840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070474 n * A322980 (A007676 n).toNat

end

end A306584.P7274373335344321840

/-! ## A306584.P14102257014324825654

`A060356(n)%A005875(A000079(n))`
-/

namespace A306584.P14102257014324825654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060356 n) (A005875 (A000079 n).toNat)

end

end A306584.P14102257014324825654

/-! ## A306584.P11316347046771468425

`A000578(n)%A008329(A175041(n))`
-/

namespace A306584.P11316347046771468425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 n) (A008329 (A175041 n).toNat)

end

end A306584.P11316347046771468425

/-! ## A306584.P1656999762505046346

`A070474(n)%A070466(A279697(n))`
-/

namespace A306584.P1656999762505046346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070474 n) (A070466 (A279697 n).toNat)

end

end A306584.P1656999762505046346

/-!
# A306585: Start with n and find the LCM of n and A140635(n), and continue until a number m is reached such that A140635(m) = m.

The programs for A306585, there is no canonical definition to state claims against.
-/

/-! ## A306585.P6093419401215637730

`A106612(A002635(n)*A022404(n+1))`
-/

namespace A306585.P6093419401215637730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A002635 n * A022404 (n + 1)).toNat

end

end A306585.P6093419401215637730

/-! ## A306585.P8737424635887811269

`A140635(A002635(n)*A022404(n+1))`
-/

namespace A306585.P8737424635887811269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (A002635 n * A022404 (n + 1)).toNat

end

end A306585.P8737424635887811269

/-! ## A306585.P6387615294488917376

`A140635(C(A022404(n+1), A002635(n)))`
-/

namespace A306585.P6387615294488917376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140635 (Nat.choose (A022404 (n + 1)).toNat (A002635 n).toNat)

end

end A306585.P6387615294488917376

/-! ## A306585.P4456979838686123850

`A022404(n+1)*A246588(A062572(n+1))`
-/

namespace A306585.P4456979838686123850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022404 (n + 1) * A246588 (A062572 (n + 1)).toNat

end

end A306585.P4456979838686123850

/-! ## A306585.P6255337410355108187

`A028310(A022404(n+1)*A303975(3*(n+1)))`
-/

namespace A306585.P6255337410355108187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A022404 (n + 1) * A303975 (3 * (n + 1))).toNat

end

end A306585.P6255337410355108187

/-!
# A306586: Least prime p(k) such that k*p exceeds 10^n.

The programs for A306586, there is no canonical definition to state claims against.
-/

/-! ## A306586.P4715203383562644415

`A000040(A090977(n))`
-/

namespace A306586.P4715203383562644415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A090977 n).toNat

end

end A306586.P4715203383562644415

/-! ## A306586.P12668414137283147889

`A008578(A090977(n)+1)`
-/

namespace A306586.P12668414137283147889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A090977 n + 1).toNat

end

end A306586.P12668414137283147889

/-! ## A306586.P7758445050105977855

`∑{d}[A090977(n), A007444(#)]`
-/

namespace A306586.P7758445050105977855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A306586.P7758445050105977855

/-! ## A306586.P13988968628090843048

`A006093(A090977(n))+A007318(∑[n])`
-/

namespace A306586.P13988968628090843048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A090977 n).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A306586.P13988968628090843048

/-! ## A306586.P15495316010738144481

`A035674(n+1)+A008864(A090977(n))-1`
-/

namespace A306586.P15495316010738144481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035674 (n + 1) + (A008864 (A090977 n).toNat - 1)

end

end A306586.P15495316010738144481

/-!
# A306587: Numbers k such that A002182(k)+1 is prime.

The programs for A306587, there is no canonical definition to state claims against.
-/

/-! ## A306587.P8457778461655997623

`eq[1, A141345(n+1)]+1`
-/

namespace A306587.P8457778461655997623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141345 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A306587.P8457778461655997623

/-! ## A306587.P16020025152308675657

`record[n+1-A005374(A141345(n+1)-1)]`
-/

namespace A306587.P16020025152308675657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A005374 (A141345 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306587.P16020025152308675657

/-! ## A306587.P9324996281169728846

`record[A000290(n+1)/(A141345(n+1)+n)]`
-/

namespace A306587.P9324996281169728846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (n + 1) : ℚ) / (A141345 (n + 1) + (n : ℤ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306587.P9324996281169728846

/-! ## A306587.P4973760547077956736

`record[(n+1)/A141345(n+1)]%A237637(n+1)`
-/

namespace A306587.P4973760547077956736
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A141345 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))) (A237637 (n + 1))

end

end A306587.P4973760547077956736

/-! ## A306587.P8162493547309880648

`record[A005374(n+1)/A141345(A005374(n+1))]`
-/

namespace A306587.P8162493547309880648
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005374 (n + 1) : ℚ) / (A141345 (A005374 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306587.P8162493547309880648

/-! ## A306587.P5262185457168515837

`record[n+1-A023436(A141345(n+1)-1)]`
-/

namespace A306587.P5262185457168515837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A023436 (A141345 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306587.P5262185457168515837

/-!
# A306588: Numbers k such that A002182(k)-1 is prime.

The programs for A306588, there is no canonical definition to state claims against.
-/

/-! ## A306588.P16609439387599827212

`eq[1, A324385(n+2)]+2`
-/

namespace A306588.P16609439387599827212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324385 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A306588.P16609439387599827212

/-! ## A306588.P3299046937752042682

`record[(n+3)/A324385(n+3)]`
-/

namespace A306588.P3299046937752042682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A324385 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306588.P3299046937752042682

/-! ## A306588.P11352281683534607296

`A009056(eq[1, A324385(n+2)])`
-/

namespace A306588.P11352281683534607296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A306588.P11352281683534607296

/-! ## A306588.P14594441115484891985

`record[A009056(n+1)-A324385(n+2)]`
-/

namespace A306588.P14594441115484891985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (n + 1) - A324385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A306588.P14594441115484891985

/-! ## A306588.P12005337890380156239

`A020725(record[n+2-A324385(n+2)])`
-/

namespace A306588.P12005337890380156239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) - A324385 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A306588.P12005337890380156239

/-! ## A306588.P13705858499902317395

`eq[1, A324385(A233583(n+1))]`
-/

namespace A306588.P13705858499902317395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324385 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A306588.P13705858499902317395

/-!
# A306591: a(n) is the denominator of 1/2 - 1/(prime(n)+1), where prime(n) is the n-th prime.

The programs for A306591, the canonical program `A306591.P16637579630859096376` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A306591 has offset 1).

The definition of A306591 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1229 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A306591.P16637579630859096376

`A145979(p?[a(n-1)+2]-1)` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A306591

/-- `A145979(p?[a(n-1)+2]-1)` -/
def P16637579630859096376.Spec : Prop :=
  ∀ n, P16637579630859096376.a n = A306591 (n + 1)

theorem P16637579630859096376.correct : P16637579630859096376.Spec := by
  intro n
  simp only [A306591, Nat.add_sub_cancel]

end A306591

/-! ## A306591.P13303244006365070394

`A145979(∑[A075526(n)])`
-/

namespace A306591.P13303244006365070394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A306591.P13303244006365070394

namespace A306591

/-- `A145979(∑[A075526(n)])` -/
def P13303244006365070394.Spec : Prop :=
  ∀ n, P13303244006365070394.a n = A306591 (n + 1)

end A306591

/-! ## A306591.P8735383315856988314

`A145979(A006093(n+1))`
-/

namespace A306591.P8735383315856988314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 (A006093 (n + 1)).toNat

end

end A306591.P8735383315856988314

namespace A306591

/-- `A145979(A006093(n+1))` -/
def P8735383315856988314.Spec : Prop :=
  ∀ n, P8735383315856988314.a n = A306591 (n + 1)

end A306591

/-! ## A306591.P4659626880371561119

`A263326(A000040(n+1))`
-/

namespace A306591.P4659626880371561119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263326 (A000040 (n + 1)).toNat

end

end A306591.P4659626880371561119

namespace A306591

/-- `A263326(A000040(n+1))` -/
def P4659626880371561119.Spec : Prop :=
  ∀ n, P4659626880371561119.a n = A306591 (n + 1)

end A306591

/-! ## A306591.P16320708894262614322

`A263326(A008578(n+2))`
-/

namespace A306591.P16320708894262614322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263326 (A008578 (n + 2)).toNat

end

end A306591.P16320708894262614322

namespace A306591

/-- `A263326(A008578(n+2))` -/
def P16320708894262614322.Spec : Prop :=
  ∀ n, P16320708894262614322.a n = A306591 (n + 1)

end A306591

/-! ## A306591.P3978153933270589058

`A263326(A182986(n+2))`
-/

namespace A306591.P3978153933270589058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263326 (A182986 (n + 2)).toNat

end

end A306591.P3978153933270589058

namespace A306591

/-- `A263326(A182986(n+2))` -/
def P3978153933270589058.Spec : Prop :=
  ∀ n, P3978153933270589058.a n = A306591 (n + 1)

end A306591

/-! ## A306591.P18308819731855186338

`A145979(A040976(n+1)+1)`
-/

namespace A306591.P18308819731855186338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 (A040976 (n + 1) + 1).toNat

end

end A306591.P18308819731855186338

namespace A306591

/-- `A145979(A040976(n+1)+1)` -/
def P18308819731855186338.Spec : Prop :=
  ∀ n, P18308819731855186338.a n = A306591 (n + 1)

end A306591

/-! ## A306591.P12529918429370503702

`A145979(A000040(n+1)-1)`
-/

namespace A306591.P12529918429370503702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 (A000040 (n + 1) - 1).toNat

end

end A306591.P12529918429370503702

namespace A306591

/-- `A145979(A000040(n+1)-1)` -/
def P12529918429370503702.Spec : Prop :=
  ∀ n, P12529918429370503702.a n = A306591 (n + 1)

end A306591

/-! ## A306591.P1224005093959059587

`A225975(A089241(n+1))`
-/

namespace A306591.P1224005093959059587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225975 (A089241 (n + 1)).toNat

end

end A306591.P1224005093959059587

namespace A306591

/-- `A225975(A089241(n+1))` -/
def P1224005093959059587.Spec : Prop :=
  ∀ n, P1224005093959059587.a n = A306591 (n + 1)

end A306591

/-!
# A306592: Number of ways to write n as u^2 + 2*v^2 + 3*x^2 + 4*y^2 + 5*z^2, where u,v,x,y,z are generalized pentagonal numbers (A001318).

The programs for A306592, there is no canonical definition to state claims against.
-/

/-! ## A306592.P7119524229170328683

`A005811(A340948(n)+A184482(A046854(n)))`
-/

namespace A306592.P7119524229170328683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A340948 n + A184482 (A046854 n).toNat).toNat

end

end A306592.P7119524229170328683

/-! ## A306592.P11889990659494568869

`A381609(A249795(n))+A057360(n)`
-/

namespace A306592.P11889990659494568869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381609 (A249795 n).toNat + A057360 n

end

end A306592.P11889990659494568869

/-! ## A306592.P13256699003026415375

`A000120(A251691(n)+A187199(n+1))`
-/

namespace A306592.P13256699003026415375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A251691 n + A187199 (n + 1)).toNat

end

end A306592.P13256699003026415375

/-!
# A306593: Least number k such that the determinant of the circulant matrix formed by its decimal digits is equal to n.

The programs for A306593, there is no canonical definition to state claims against.
-/

/-! ## A306593.P6202834126597572652

`A056715(A111696(n))+n`
-/

namespace A306593.P6202834126597572652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056715 (A111696 n).toNat + (n : ℤ)

end

end A306593.P6202834126597572652

/-! ## A306593.P15352657310014732543

`A121308(A322193(n))+n`
-/

namespace A306593.P15352657310014732543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121308 (A322193 n).toNat + (n : ℤ)

end

end A306593.P15352657310014732543

/-! ## A306593.P11966790780025055787

`12*A185037(A325534(n))+n`
-/

namespace A306593.P11966790780025055787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A185037 (A325534 n).toNat + (n : ℤ)

end

end A306593.P11966790780025055787

/-! ## A306593.P13587926530213076114

`A249517(n+1)%(A235229(2*n+1)-1)`
-/

namespace A306593.P13587926530213076114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249517 (n + 1)) (A235229 (2 * n + 1) - 1)

end

end A306593.P13587926530213076114

/-!
# A306595: Determinant of the circulant matrix whose first column corresponds to the binary digits of n.

The programs for A306595, there is no canonical definition to state claims against.
-/

/-! ## A306595.P13410383798140915569

`A000120(n)*A013595(A319005(2*(n+2)))`
-/

namespace A306595.P13410383798140915569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n * A013595 (A319005 (2 * (n + 2))).toNat

end

end A306595.P13410383798140915569

/-! ## A306595.P16213970391698097746

`A320658(A117595(n+1))`
-/

namespace A306595.P16213970391698097746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320658 (A117595 (n + 1)).toNat

end

end A306595.P16213970391698097746

/-! ## A306595.P1249133124610716771

`A001222(A348211(3*n+4))%4`
-/

namespace A306595.P1249133124610716771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (A348211 (3 * n + 4)).toNat) 4

end

end A306595.P1249133124610716771

/-! ## A306595.P5723724964248578694

`A056558(C(3*n, A208510(3*n+4)))`
-/

namespace A306595.P5723724964248578694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056558 (Nat.choose (3 * n) (A208510 (3 * n + 4)).toNat)

end

end A306595.P5723724964248578694

/-! ## A306595.P8122534024682902793

`and(A096100(n+1)+1, A053632(3*n+2))`
-/

namespace A306595.P8122534024682902793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A096100 (n + 1) + 1) (A053632 (3 * n + 2))

end

end A306595.P8122534024682902793

/-!
# A306597: a(n) = Card({ Sum_{k=1..n}(x_k * k) : (x_k)_{k=1..n} is an n-tuple of nonnegative integers such that Sum_{k=1..n}(x_k * T_k) = T_n }), where T_k denotes the k-th triangular number.

The programs for A306597, there is no canonical definition to state claims against.
-/

/-! ## A306597.P2452433715037005259

`A285975(A145547(n+1))+A061925(n)`
-/

namespace A306597.P2452433715037005259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285975 (A145547 (n + 1)).toNat + A061925 n

end

end A306597.P2452433715037005259

/-! ## A306597.P2388374176555304491

`A105343(n)-A324823(A000045(2*(n+1)))`
-/

namespace A306597.P2388374176555304491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105343 n - A324823 (A000045 (2 * (n + 1))).toNat

end

end A306597.P2388374176555304491

/-! ## A306597.P9816380080571970953

`A334028(A319564(n+2))+A000982(n)`
-/

namespace A306597.P9816380080571970953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334028 (A319564 (n + 2)).toNat + A000982 n

end

end A306597.P9816380080571970953

/-! ## A306597.P14461429459787298472

`A337502(n+1)+char[A051958(n)]`
-/

namespace A306597.P14461429459787298472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051958 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337502 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A306597.P14461429459787298472

/-! ## A306597.P11578008657053424573

`A337502(n+1)+char[A080093(n+1)]`
-/

namespace A306597.P11578008657053424573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080093 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337502 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A306597.P11578008657053424573

/-!
# A306599: In base 8: a(n) sets a new record for the number of Reverse and Add! steps needed to reach a palindrome starting with a(n).

The programs for A306599, there is no canonical definition to state claims against.
-/

/-! ## A306599.P12522430470446994089

`A245542(n)-A000005(A006902(n))`
-/

namespace A306599.P12522430470446994089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245542 n - A000005 (A006902 n).toNat

end

end A306599.P12522430470446994089

/-! ## A306599.P15866199403089478319

`A245542(n)-A001221(A094347(n))`
-/

namespace A306599.P15866199403089478319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245542 n - A001221 (A094347 n).toNat

end

end A306599.P15866199403089478319

