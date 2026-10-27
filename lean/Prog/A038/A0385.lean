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
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B001.C011
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
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
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
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
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
# A038500: Highest power of 3 dividing n.

The programs for A038500, the canonical program `A038500.P18314557775098268376` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038500 has offset 1).

The definition of A038500 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038500.P11969988801852159247

`3^val(n+1, 3)`
-/

namespace A038500.P11969988801852159247
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (n + 1) 3

end

end A038500.P11969988801852159247

namespace A038500

/-- `3^val(n+1, 3)` -/
def P11969988801852159247.Spec : Prop :=
  ∀ n, (P11969988801852159247.a n : ℤ) = A038500 (n + 1)

end A038500

/-! ## A038500.P1148076245775153945

`(n+1)/A038502(n+1)`
-/

namespace A038500.P1148076245775153945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A038502 (n + 1) : ℚ)

end

end A038500.P1148076245775153945

namespace A038500

/-- `(n+1)/A038502(n+1)` -/
def P1148076245775153945.Spec : Prop :=
  ∀ n, P1148076245775153945.a n = (A038500 (n + 1) : ℚ)

end A038500

/-! ## A038500.P18314557775098268376

`gcd(n+1, 3^(n+1))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038500

/-- `gcd(n+1, 3^(n+1))` -/
def P18314557775098268376.Spec : Prop :=
  ∀ n, (P18314557775098268376.a n : ℤ) = A038500 (n + 1)

theorem P18314557775098268376.correct : P18314557775098268376.Spec := by
  intro n
  simp only [A038500, Nat.add_sub_cancel]

end A038500

/-! ## A038500.P7285203005872284084

`3^dr(val(record[(n-1)²], 9))`
-/

namespace A038500.P7285203005872284084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.digitalRoot (SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 9 : ℤ)

end

end A038500.P7285203005872284084

namespace A038500

/-- `3^dr(val(record[(n-1)²], 9))` -/
def P7285203005872284084.Spec : Prop :=
  ∀ n, (P7285203005872284084.a n : ℤ) = A038500 (n + 1)

end A038500

/-! ## A038500.P18159451482474113646

`abs(Δ[A128173(n)])`
-/

namespace A038500.P18159451482474113646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128173 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A038500.P18159451482474113646

namespace A038500

/-- `abs(Δ[A128173(n)])` -/
def P18159451482474113646.Spec : Prop :=
  ∀ n, P18159451482474113646.a n = A038500 (n + 1)

end A038500

/-! ## A038500.P14557552529140782298

`3^Δ[A054861(n)]`
-/

namespace A038500.P14557552529140782298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A038500.P14557552529140782298

namespace A038500

/-- `3^Δ[A054861(n)]` -/
def P14557552529140782298.Spec : Prop :=
  ∀ n, P14557552529140782298.a n = (A038500 (n + 1) : ℚ)

end A038500

/-! ## A038500.P16315781741751491668

`A074724(n+1)/3`
-/

namespace A038500.P16315781741751491668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074724 (n + 1) : ℚ) / 3

end

end A038500.P16315781741751491668

namespace A038500

/-- `A074724(n+1)/3` -/
def P16315781741751491668.Spec : Prop :=
  ∀ n, P16315781741751491668.a n = (A038500 (n + 1) : ℚ)

end A038500

/-! ## A038500.P6423266545844666632

`3^A007949(n+1)`
-/

namespace A038500.P6423266545844666632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A007949 (n + 1) : ℤ)

end

end A038500.P6423266545844666632

namespace A038500

/-- `3^A007949(n+1)` -/
def P6423266545844666632.Spec : Prop :=
  ∀ n, P6423266545844666632.a n = (A038500 (n + 1) : ℚ)

end A038500

/-! ## A038500.P1675534258569796882

`A000244(val(n+1, 3))`
-/

namespace A038500.P1675534258569796882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (SequenceMachineLib.valuation (n + 1) 3)

end

end A038500.P1675534258569796882

namespace A038500

/-- `A000244(val(n+1, 3))` -/
def P1675534258569796882.Spec : Prop :=
  ∀ n, P1675534258569796882.a n = A038500 (n + 1)

end A038500

/-! ## A038500.P6616578393244030864

`A050733(val(n+1, 3))`
-/

namespace A038500.P6616578393244030864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050733 (SequenceMachineLib.valuation (n + 1) 3)

end

end A038500.P6616578393244030864

namespace A038500

/-- `A050733(val(n+1, 3))` -/
def P6616578393244030864.Spec : Prop :=
  ∀ n, P6616578393244030864.a n = A038500 (n + 1)

end A038500

/-! ## A038500.P16475472202382592759

`3^(A051064(n+1)-1)`
-/

namespace A038500.P16475472202382592759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ (A051064 (n + 1) - 1 : ℤ)

end

end A038500.P16475472202382592759

namespace A038500

/-- `3^(A051064(n+1)-1)` -/
def P16475472202382592759.Spec : Prop :=
  ∀ n, P16475472202382592759.a n = (A038500 (n + 1) : ℚ)

end A038500

/-! ## A038500.P991613312787788683

`∏{d}[n+1, gcd(3, A014963(#))]`
-/

namespace A038500.P991613312787788683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), Int.gcd 3 (A014963 d)

end

end A038500.P991613312787788683

namespace A038500

/-- `∏{d}[n+1, gcd(3, A014963(#))]` -/
def P991613312787788683.Spec : Prop :=
  ∀ n, (P991613312787788683.a n : ℤ) = A038500 (n + 1)

end A038500

/-! ## A038500.P16001255310277941462

`A000244(Δ[A054861(n)])`
-/

namespace A038500.P16001255310277941462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (f1 (n + 1) - f1 n).toNat

end

end A038500.P16001255310277941462

namespace A038500

/-- `A000244(Δ[A054861(n)])` -/
def P16001255310277941462.Spec : Prop :=
  ∀ n, P16001255310277941462.a n = A038500 (n + 1)

end A038500

/-! ## A038500.P6610950209143984270

`A065331(A000265(n+1))`
-/

namespace A038500.P6610950209143984270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A000265 (n + 1)).toNat

end

end A038500.P6610950209143984270

namespace A038500

/-- `A065331(A000265(n+1))` -/
def P6610950209143984270.Spec : Prop :=
  ∀ n, P6610950209143984270.a n = A038500 (n + 1)

end A038500

/-! ## A038500.P10323529116749328943

`A003558(A080278(n+1))`
-/

namespace A038500.P10323529116749328943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (A080278 (n + 1)).toNat

end

end A038500.P10323529116749328943

namespace A038500

/-- `A003558(A080278(n+1))` -/
def P10323529116749328943.Spec : Prop :=
  ∀ n, P10323529116749328943.a n = A038500 (n + 1)

end A038500

/-! ## A038500.P14353393948119557212

`A072963(A065331(n+1))`
-/

namespace A038500.P14353393948119557212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072963 (A065331 (n + 1)).toNat

end

end A038500.P14353393948119557212

namespace A038500

/-- `A072963(A065331(n+1))` -/
def P14353393948119557212.Spec : Prop :=
  ∀ n, P14353393948119557212.a n = A038500 (n + 1)

end A038500

/-! ## A038500.P11764870841972941289

`A065331(A097706(n+1))`
-/

namespace A038500.P11764870841972941289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (A097706 (n + 1)).toNat

end

end A038500.P11764870841972941289

namespace A038500

/-- `A065331(A097706(n+1))` -/
def P11764870841972941289.Spec : Prop :=
  ∀ n, P11764870841972941289.a n = A038500 (n + 1)

end A038500

/-! ## A038500.P4425786223045942916

`A355582(A132740(n+1))`
-/

namespace A038500.P4425786223045942916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355582 (A132740 (n + 1)).toNat

end

end A038500.P4425786223045942916

namespace A038500

/-- `A355582(A132740(n+1))` -/
def P4425786223045942916.Spec : Prop :=
  ∀ n, P4425786223045942916.a n = A038500 (n + 1)

end A038500

/-! ## A038500.P2199479865737183685

`A244042(A300222(n)+1)`
-/

namespace A038500.P2199479865737183685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244042 (A300222 n + 1).toNat

end

end A038500.P2199479865737183685

namespace A038500

/-- `A244042(A300222(n)+1)` -/
def P2199479865737183685.Spec : Prop :=
  ∀ n, P2199479865737183685.a n = A038500 (n + 1)

end A038500

/-!
# A038501: Upper bound on minimal norm of a quadratic form where n runs over the odd primes.

The programs for A038501, there is no canonical definition to state claims against.
-/

/-! ## A038501.P10279880500360512870

`A070667(∑[A317166(n)²])`
-/

namespace A038501.P10279880500360512870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317166 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070667 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038501.P10279880500360512870

/-! ## A038501.P18317819581732356529

`∑[A002487(Δ[A007016(n)²]+n)]`
-/

namespace A038501.P18317819581732356529
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007016 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (f2 (n + 1) - f2 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038501.P18317819581732356529

/-!
# A038502: Remove 3's from n.

The programs for A038502, the canonical program `A038502.P13149226578735079959` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038502 has offset 1).

The definition of A038502 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038502.P13149226578735079959

`(n+1)/3^val(n+1, 3)`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038502

/-- `(n+1)/3^val(n+1, 3)` -/
def P13149226578735079959.Spec : Prop :=
  ∀ n, P13149226578735079959.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P16026893551272668160

`(n+1)/A038500(n+1)`
-/

namespace A038502.P16026893551272668160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A038500 (n + 1) : ℚ)

end

end A038502.P16026893551272668160

namespace A038502

/-- `(n+1)/A038500(n+1)` -/
def P16026893551272668160.Spec : Prop :=
  ∀ n, P16026893551272668160.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P7830287339262534654

`(n+1)/gcd(n+1, 3^(n+1))`
-/

namespace A038502.P7830287339262534654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.gcd (n + 1) (3 ^ (n + 1)) : ℚ)

end

end A038502.P7830287339262534654

namespace A038502

/-- `(n+1)/gcd(n+1, 3^(n+1))` -/
def P7830287339262534654.Spec : Prop :=
  ∀ n, P7830287339262534654.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P13936733958964063597

`(n+1)*3^-val(n+1, 3)`
-/

namespace A038502.P13936733958964063597
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (3 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 3 : ℤ) : ℤ)

end

end A038502.P13936733958964063597

namespace A038502

/-- `(n+1)*3^-val(n+1, 3)` -/
def P13936733958964063597.Spec : Prop :=
  ∀ n, P13936733958964063597.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P9052466148922718173

`gcd(n+1, A327625(n+1))`
-/

namespace A038502.P9052466148922718173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A327625 (n + 1))

end

end A038502.P9052466148922718173

namespace A038502

/-- `gcd(n+1, A327625(n+1))` -/
def P9052466148922718173.Spec : Prop :=
  ∀ n, (P9052466148922718173.a n : ℤ) = A038502 (n + 1)

end A038502

/-! ## A038502.P10956433759401921137

`3*(n+1)/A074724(n+1)`
-/

namespace A038502.P10956433759401921137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1 : ℚ) / (A074724 (n + 1) : ℚ))

end

end A038502.P10956433759401921137

namespace A038502

/-- `3*(n+1)/A074724(n+1)` -/
def P10956433759401921137.Spec : Prop :=
  ∀ n, P10956433759401921137.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P15797592789859231010

`(n+1)/3^A007949(n+1)`
-/

namespace A038502.P15797592789859231010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 : ℚ) ^ (A007949 (n + 1) : ℤ)

end

end A038502.P15797592789859231010

namespace A038502

/-- `(n+1)/3^A007949(n+1)` -/
def P15797592789859231010.Spec : Prop :=
  ∀ n, P15797592789859231010.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P17728807434077808735

`(n+1)/A065331((n+1)/(or(n, n+1)-n))`
-/

namespace A038502.P17728807434077808735
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat : ℚ)

end

end A038502.P17728807434077808735

namespace A038502

/-- `(n+1)/A065331((n+1)/(or(n, n+1)-n))` -/
def P17728807434077808735.Spec : Prop :=
  ∀ n, P17728807434077808735.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P16631331667807514778

`(n+1)/A065331((n+1)/xor(n, or(n, n+1)))`
-/

namespace A038502.P16631331667807514778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor n (Nat.lor n (n + 1)) : ℚ))).toNat : ℚ)

end

end A038502.P16631331667807514778

namespace A038502

/-- `(n+1)/A065331((n+1)/xor(n, or(n, n+1)))` -/
def P16631331667807514778.Spec : Prop :=
  ∀ n, P16631331667807514778.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P3799204389403200867

`(n+1)/A065331((n+1)/and(n+1, -(n+1)))`
-/

namespace A038502.P3799204389403200867
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat : ℚ)

end

end A038502.P3799204389403200867

namespace A038502

/-- `(n+1)/A065331((n+1)/and(n+1, -(n+1)))` -/
def P3799204389403200867.Spec : Prop :=
  ∀ n, P3799204389403200867.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P17357148994502996261

`(n+1)/A065331((n+1)/ceil(xor(n, n+1)/2))`
-/

namespace A038502.P17357148994502996261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌈(Nat.xor n (n + 1) : ℚ) / 2⌉ : ℚ))).toNat : ℚ)

end

end A038502.P17357148994502996261

namespace A038502

/-- `(n+1)/A065331((n+1)/ceil(xor(n, n+1)/2))` -/
def P17357148994502996261.Spec : Prop :=
  ∀ n, P17357148994502996261.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P2178110779209093963

`(n+1)/A065331(2*(n+1)/(xor(n, n+1)+1))`
-/

namespace A038502.P2178110779209093963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065331 (SequenceMachineLib.roundAway ((2 * (n + 1) : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ))).toNat : ℚ)

end

end A038502.P2178110779209093963

namespace A038502

/-- `(n+1)/A065331(2*(n+1)/(xor(n, n+1)+1))` -/
def P2178110779209093963.Spec : Prop :=
  ∀ n, P2178110779209093963.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P1863670098720088680

`(n+1)/A065331((n+1)/(1-and(n, n+1)+n))`
-/

namespace A038502.P1863670098720088680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) : ℚ))).toNat : ℚ)

end

end A038502.P1863670098720088680

namespace A038502

/-- `(n+1)/A065331((n+1)/(1-and(n, n+1)+n))` -/
def P1863670098720088680.Spec : Prop :=
  ∀ n, P1863670098720088680.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P5471112347380543719

`(n+1)/A065331((n+1)/xor(n+1, and(n, n+1)))`
-/

namespace A038502.P5471112347380543719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.xor (n + 1) (Nat.land n (n + 1)) : ℚ))).toNat : ℚ)

end

end A038502.P5471112347380543719

namespace A038502

/-- `(n+1)/A065331((n+1)/xor(n+1, and(n, n+1)))` -/
def P5471112347380543719.Spec : Prop :=
  ∀ n, P5471112347380543719.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P16369607831047894059

`(n+1)/A065331((n+1)/floor((xor(n, n+1)+1)/2))`
-/

namespace A038502.P16369607831047894059
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (⌊(Nat.xor n (n + 1) + 1 : ℚ) / 2⌋ : ℚ))).toNat : ℚ)

end

end A038502.P16369607831047894059

namespace A038502

/-- `(n+1)/A065331((n+1)/floor((xor(n, n+1)+1)/2))` -/
def P16369607831047894059.Spec : Prop :=
  ∀ n, P16369607831047894059.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P9518513981764956737

`(n+1)/A065331((n+1)/(n+1)%(xor(n, n+1)+1))`
-/

namespace A038502.P9518513981764956737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A065331 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (((n + 1) % (Nat.xor n (n + 1) + 1) : ℕ) : ℚ))).toNat : ℚ)

end

end A038502.P9518513981764956737

namespace A038502

/-- `(n+1)/A065331((n+1)/(n+1)%(xor(n, n+1)+1))` -/
def P9518513981764956737.Spec : Prop :=
  ∀ n, P9518513981764956737.a n = (A038502 (n + 1) : ℚ)

end A038502

/-! ## A038502.P10196779136986725610

`gcd(A131738(n), A383793(n+1))`
-/

namespace A038502.P10196779136986725610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A383793 (n + 1))

end

end A038502.P10196779136986725610

namespace A038502

/-- `gcd(A131738(n), A383793(n+1))` -/
def P10196779136986725610.Spec : Prop :=
  ∀ n, (P10196779136986725610.a n : ℤ) = A038502 (n + 1)

end A038502

/-! ## A038502.P4984746017034326866

`A347717(n+1)-A007949(n+1)`
-/

namespace A038502.P4984746017034326866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347717 (n + 1) - A007949 (n + 1)

end

end A038502.P4984746017034326866

namespace A038502

/-- `A347717(n+1)-A007949(n+1)` -/
def P4984746017034326866.Spec : Prop :=
  ∀ n, P4984746017034326866.a n = A038502 (n + 1)

end A038502

/-! ## A038502.P16945850491278314080

`A006519(n+1)*A065330(n+1)`
-/

namespace A038502.P16945850491278314080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A065330 (n + 1)

end

end A038502.P16945850491278314080

namespace A038502

/-- `A006519(n+1)*A065330(n+1)` -/
def P16945850491278314080.Spec : Prop :=
  ∀ n, P16945850491278314080.a n = A038502 (n + 1)

end A038502

/-! ## A038502.P8591137152618483238

`A132741(n+1)*A165725(n+1)`
-/

namespace A038502.P8591137152618483238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132741 (n + 1) * A165725 (n + 1)

end

end A038502.P8591137152618483238

namespace A038502

/-- `A132741(n+1)*A165725(n+1)` -/
def P8591137152618483238.Spec : Prop :=
  ∀ n, P8591137152618483238.a n = A038502 (n + 1)

end A038502

/-!
# A038503: Sum of every 4th entry of row n in Pascal's triangle, starting at "n choose 0".

The programs for A038503, the canonical program `A038503.P6100478724578909006` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038503 has offset 0).

The definition of A038503 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038503.P6100478724578909006

`4*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038503

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)` -/
def P6100478724578909006.Spec : Prop :=
  ∀ n, P6100478724578909006.a n = A038503 n

theorem P6100478724578909006.correct : P6100478724578909006.Spec := by
  intro n
  simp only [A038503]

end A038503

/-! ## A038503.P14512185107539147585

`ogf((1-3x+3x^2-x^3)/(1-4x+6x^2-4x^3))`
-/

namespace A038503.P14512185107539147585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 3, -1] [1, -4, 6, -4] n

end

end A038503.P14512185107539147585

namespace A038503

/-- `ogf((1-3x+3x^2-x^3)/(1-4x+6x^2-4x^3))` -/
def P14512185107539147585.Spec : Prop :=
  ∀ n, P14512185107539147585.a n = A038503 n

end A038503

/-! ## A038503.P15852816560596642090

`A137171(3*(n+1)+n)`
-/

namespace A038503.P15852816560596642090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (3 * (n + 1) + n)

end

end A038503.P15852816560596642090

namespace A038503

/-- `A137171(3*(n+1)+n)` -/
def P15852816560596642090.Spec : Prop :=
  ∀ n, P15852816560596642090.a n = A038503 n

end A038503

/-! ## A038503.P3965998481292398315

`A000749(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A038503.P3965998481292398315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000749 (n - 1) + a (n - 1)

end

end A038503.P3965998481292398315

namespace A038503

/-- `A000749(n-1)+a(n-1)` -/
def P3965998481292398315.Spec : Prop :=
  ∀ n, P3965998481292398315.a n = A038503 n

end A038503

/-! ## A038503.P9357965309314217555

`A146559(n)+A038505(n)`
-/

namespace A038503.P9357965309314217555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n + A038505 n

end

end A038503.P9357965309314217555

namespace A038503

/-- `A146559(n)+A038505(n)` -/
def P9357965309314217555.Spec : Prop :=
  ∀ n, P9357965309314217555.a n = A038503 n

end A038503

/-! ## A038503.P10374883874108133173

`∑[A138569(A289207(2*n))]+1`
-/

namespace A038503.P10374883874108133173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138569 (A289207 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A038503.P10374883874108133173

namespace A038503

/-- `∑[A138569(A289207(2*n))]+1` -/
def P10374883874108133173.Spec : Prop :=
  ∀ n, P10374883874108133173.a n = A038503 n

end A038503

/-! ## A038503.P11780732566009064672

`A138569(2*n+1)+A000749(n)`
-/

namespace A038503.P11780732566009064672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138569 (2 * n + 1) + A000749 n

end

end A038503.P11780732566009064672

namespace A038503

/-- `A138569(2*n+1)+A000749(n)` -/
def P11780732566009064672.Spec : Prop :=
  ∀ n, P11780732566009064672.a n = A038503 n

end A038503

/-! ## A038503.P11008094238013406906

`A138231(2*n+1)+A038505(n)`
-/

namespace A038503.P11008094238013406906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (2 * n + 1) + A038505 n

end

end A038503.P11008094238013406906

namespace A038503

/-- `A138231(2*n+1)+A038505(n)` -/
def P11008094238013406906.Spec : Prop :=
  ∀ n, P11008094238013406906.a n = A038503 n

end A038503

/-! ## A038503.P12906957232603994668

`A138569(2*n+1)+A138569(2*n)`
-/

namespace A038503.P12906957232603994668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138569 (2 * n + 1) + A138569 (2 * n)

end

end A038503.P12906957232603994668

namespace A038503

/-- `A138569(2*n+1)+A138569(2*n)` -/
def P12906957232603994668.Spec : Prop :=
  ∀ n, P12906957232603994668.a n = A038503 n

end A038503

/-! ## A038503.P14362158220425274084

`A038518(n)+A038519(n)-A038505(n)`
-/

namespace A038503.P14362158220425274084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 n + (A038519 n - A038505 n)

end

end A038503.P14362158220425274084

namespace A038503

/-- `A038518(n)+A038519(n)-A038505(n)` -/
def P14362158220425274084.Spec : Prop :=
  ∀ n, P14362158220425274084.a n = A038503 n

end A038503

/-! ## A038503.P10961733604368468146

`A009545(n+1)+A038505(n)-A009545(n)`
-/

namespace A038503.P10961733604368468146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 (n + 1) + (A038505 n - A009545 n)

end

end A038503.P10961733604368468146

namespace A038503

/-- `A009545(n+1)+A038505(n)-A009545(n)` -/
def P10961733604368468146.Spec : Prop :=
  ∀ n, P10961733604368468146.a n = A038503 n

end A038503

/-! ## A038503.P16254968056661640835

`Δ[A038504(n)]`
-/

namespace A038503.P16254968056661640835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038503.P16254968056661640835

namespace A038503

/-- `Δ[A038504(n)]` -/
def P16254968056661640835.Spec : Prop :=
  ∀ n, P16254968056661640835.a n = A038503 n

end A038503

/-! ## A038503.P652846878654435105

`Δ[A137776(2*n)]`
-/

namespace A038503.P652846878654435105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137776 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038503.P652846878654435105

namespace A038503

/-- `Δ[A137776(2*n)]` -/
def P652846878654435105.Spec : Prop :=
  ∀ n, P652846878654435105.a n = A038503 n

end A038503

/-! ## A038503.P16305893760736668314

`A011782(n)-A038505(n)`
-/

namespace A038503.P16305893760736668314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A038505 n

end

end A038503.P16305893760736668314

namespace A038503

/-- `A011782(n)-A038505(n)` -/
def P16305893760736668314.Spec : Prop :=
  ∀ n, P16305893760736668314.a n = A038503 n

end A038503

/-! ## A038503.P15701798736587806057

`A146559(n)+Δ[A000749(n)]`
-/

namespace A038503.P15701798736587806057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n + (f1 (n + 1) - f1 n)

end

end A038503.P15701798736587806057

namespace A038503

/-- `A146559(n)+Δ[A000749(n)]` -/
def P15701798736587806057.Spec : Prop :=
  ∀ n, P15701798736587806057.a n = A038503 n

end A038503

/-! ## A038503.P3515835766151911327

`A038504(n+1)-A038504(n)`
-/

namespace A038503.P3515835766151911327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 (n + 1) - A038504 n

end

end A038503.P3515835766151911327

namespace A038503

/-- `A038504(n+1)-A038504(n)` -/
def P3515835766151911327.Spec : Prop :=
  ∀ n, P3515835766151911327.a n = A038503 n

end A038503

/-! ## A038503.P4990763727959785168

`(A146559(n)+A011782(n))/2`
-/

namespace A038503.P4990763727959785168
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A146559 n + A011782 n : ℚ) / 2

end

end A038503.P4990763727959785168

namespace A038503

/-- `(A146559(n)+A011782(n))/2` -/
def P4990763727959785168.Spec : Prop :=
  ∀ n, P4990763727959785168.a n = (A038503 n : ℚ)

end A038503

/-! ## A038503.P12794961490760993931

`A158780(2*n+1)-A038505(n)`
-/

namespace A038503.P12794961490760993931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n + 1) - A038505 n

end

end A038503.P12794961490760993931

namespace A038503

/-- `A158780(2*n+1)-A038505(n)` -/
def P12794961490760993931.Spec : Prop :=
  ∀ n, P12794961490760993931.a n = A038503 n

end A038503

/-! ## A038503.P2462372787059480514

`A000749(n)+A011782(n)-A000749(n+1)`
-/

namespace A038503.P2462372787059480514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 n + (A011782 n - A000749 (n + 1))

end

end A038503.P2462372787059480514

namespace A038503

/-- `A000749(n)+A011782(n)-A000749(n+1)` -/
def P2462372787059480514.Spec : Prop :=
  ∀ n, P2462372787059480514.a n = A038503 n

end A038503

/-! ## A038503.P451048308682522713

`A000749(n)+A131885(n)-A038505(n+1)`
-/

namespace A038503.P451048308682522713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 n + (A131885 n - A038505 (n + 1))

end

end A038503.P451048308682522713

namespace A038503

/-- `A000749(n)+A131885(n)-A038505(n+1)` -/
def P451048308682522713.Spec : Prop :=
  ∀ n, P451048308682522713.a n = A038503 n

end A038503

/-!
# A038504: Sum of every 4th entry of row n in Pascal's triangle, starting at "n choose 1".

The programs for A038504, the canonical program `A038504.P339107708639265369` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038504 has offset 0).

The definition of A038504 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038504.P339107708639265369

`4*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038504

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)` -/
def P339107708639265369.Spec : Prop :=
  ∀ n, P339107708639265369.a n = A038504 n

theorem P339107708639265369.correct : P339107708639265369.Spec := by
  intro n
  simp only [A038504]

end A038504

/-! ## A038504.P1090044678455929057

`ogf((x-2x^2+x^3)/(1-4x+6x^2-4x^3))`
-/

namespace A038504.P1090044678455929057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2, 1] [1, -4, 6, -4] n

end

end A038504.P1090044678455929057

namespace A038504

/-- `ogf((x-2x^2+x^3)/(1-4x+6x^2-4x^3))` -/
def P1090044678455929057.Spec : Prop :=
  ∀ n, P1090044678455929057.a n = A038504 n

end A038504

/-! ## A038504.P12567247596169281774

`A137776(2*n)`
-/

namespace A038504.P12567247596169281774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137776 (2 * n)

end

end A038504.P12567247596169281774

namespace A038504

/-- `A137776(2*n)` -/
def P12567247596169281774.Spec : Prop :=
  ∀ n, P12567247596169281774.a n = A038504 n

end A038504

/-! ## A038504.P9139777852037276336

`A137171(4*n+2)`
-/

namespace A038504.P9139777852037276336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (4 * n + 2)

end

end A038504.P9139777852037276336

namespace A038504

/-- `A137171(4*n+2)` -/
def P9139777852037276336.Spec : Prop :=
  ∀ n, P9139777852037276336.a n = A038504 n

end A038504

/-! ## A038504.P3494726178465999244

`A009545(n)+A000749(n)`
-/

namespace A038504.P3494726178465999244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n + A000749 n

end

end A038504.P3494726178465999244

namespace A038504

/-- `A009545(n)+A000749(n)` -/
def P3494726178465999244.Spec : Prop :=
  ∀ n, P3494726178465999244.a n = A038504 n

end A038504

/-! ## A038504.P15368250661929203033

`A000749(n)-Δ[A146559(n)]`
-/

namespace A038504.P15368250661929203033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 n - (f1 (n + 1) - f1 n)

end

end A038504.P15368250661929203033

namespace A038504

/-- `A000749(n)-Δ[A146559(n)]` -/
def P15368250661929203033.Spec : Prop :=
  ∀ n, P15368250661929203033.a n = A038504 n

end A038504

/-! ## A038504.P348683801660204439

`A138231(2*n)+A000749(n)`
-/

namespace A038504.P348683801660204439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138231 (2 * n) + A000749 n

end

end A038504.P348683801660204439

namespace A038504

/-- `A138231(2*n)+A000749(n)` -/
def P348683801660204439.Spec : Prop :=
  ∀ n, P348683801660204439.a n = A038504 n

end A038504

/-! ## A038504.P16144196561166561652

`A138569(2*n)+A009545(n)`
-/

namespace A038504.P16144196561166561652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138569 (2 * n) + A009545 n

end

end A038504.P16144196561166561652

namespace A038504

/-- `A138569(2*n)+A009545(n)` -/
def P16144196561166561652.Spec : Prop :=
  ∀ n, P16144196561166561652.a n = A038504 n

end A038504

/-! ## A038504.P14025814522898734576

`A138232(2*n+1)+A000749(n)`
-/

namespace A038504.P14025814522898734576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138232 (2 * n + 1) + A000749 n

end

end A038504.P14025814522898734576

namespace A038504

/-- `A138232(2*n+1)+A000749(n)` -/
def P14025814522898734576.Spec : Prop :=
  ∀ n, P14025814522898734576.a n = A038504 n

end A038504

/-! ## A038504.P3049779964324768901

`A038520(n)+A038521(n)-A000749(n)`
-/

namespace A038504.P3049779964324768901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038520 n + (A038521 n - A000749 n)

end

end A038504.P3049779964324768901

namespace A038504

/-- `A038520(n)+A038521(n)-A000749(n)` -/
def P3049779964324768901.Spec : Prop :=
  ∀ n, P3049779964324768901.a n = A038504 n

end A038504

/-! ## A038504.P1560976241838083678

`Δ[A038505(n)]`
-/

namespace A038504.P1560976241838083678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038504.P1560976241838083678

namespace A038504

/-- `Δ[A038505(n)]` -/
def P1560976241838083678.Spec : Prop :=
  ∀ n, P1560976241838083678.a n = A038504 n

end A038504

/-! ## A038504.P15500032036465617803

`A131577(n)-A000749(n)`
-/

namespace A038504.P15500032036465617803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A000749 n

end

end A038504.P15500032036465617803

namespace A038504

/-- `A131577(n)-A000749(n)` -/
def P15500032036465617803.Spec : Prop :=
  ∀ n, P15500032036465617803.a n = A038504 n

end A038504

/-! ## A038504.P14955838633221599574

`∑[A038503(n)]-A038503(n)`
-/

namespace A038504.P14955838633221599574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A038503 n

end

end A038504.P14955838633221599574

namespace A038504

/-- `∑[A038503(n)]-A038503(n)` -/
def P14955838633221599574.Spec : Prop :=
  ∀ n, P14955838633221599574.a n = A038504 n

end A038504

/-! ## A038504.P1065652373407944762

`A038505(n+1)-A038505(n)`
-/

namespace A038504.P1065652373407944762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 (n + 1) - A038505 n

end

end A038504.P1065652373407944762

namespace A038504

/-- `A038505(n+1)-A038505(n)` -/
def P1065652373407944762.Spec : Prop :=
  ∀ n, P1065652373407944762.a n = A038504 n

end A038504

/-! ## A038504.P7626434908333632246

`(A131577(n)+A009545(n))/2`
-/

namespace A038504.P7626434908333632246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 n + A009545 n : ℚ) / 2

end

end A038504.P7626434908333632246

namespace A038504

/-- `(A131577(n)+A009545(n))/2` -/
def P7626434908333632246.Spec : Prop :=
  ∀ n, P7626434908333632246.a n = (A038504 n : ℚ)

end A038504

/-! ## A038504.P8153553517244707655

`A158780(2*n)-A000749(n)`
-/

namespace A038504.P8153553517244707655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n) - A000749 n

end

end A038504.P8153553517244707655

namespace A038504

/-- `A158780(2*n)-A000749(n)` -/
def P8153553517244707655.Spec : Prop :=
  ∀ n, P8153553517244707655.a n = A038504 n

end A038504

/-! ## A038504.P15263606871065488594

`A131577(n)-A138569(2*n)`
-/

namespace A038504.P15263606871065488594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A138569 (2 * n)

end

end A038504.P15263606871065488594

namespace A038504

/-- `A131577(n)-A138569(2*n)` -/
def P15263606871065488594.Spec : Prop :=
  ∀ n, P15263606871065488594.a n = A038504 n

end A038504

/-! ## A038504.P16125135152347971189

`(A009545(n)+∑[A166444(n)])/2`
-/

namespace A038504.P16125135152347971189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166444 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A009545 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A038504.P16125135152347971189

namespace A038504

/-- `(A009545(n)+∑[A166444(n)])/2` -/
def P16125135152347971189.Spec : Prop :=
  ∀ n, P16125135152347971189.a n = (A038504 n : ℚ)

end A038504

/-! ## A038504.P7440760017825517771

`A158780(2*n)-A138569(2*n)`
-/

namespace A038504.P7440760017825517771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n) - A138569 (2 * n)

end

end A038504.P7440760017825517771

namespace A038504

/-- `A158780(2*n)-A138569(2*n)` -/
def P7440760017825517771.Spec : Prop :=
  ∀ n, P7440760017825517771.a n = A038504 n

end A038504

/-! ## A038504.P16223415384162459463

`A009545(n)-(A038505(n)-∑[A038505(n)])`
-/

namespace A038504.P16223415384162459463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n - (A038505 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038504.P16223415384162459463

namespace A038504

/-- `A009545(n)-(A038505(n)-∑[A038505(n)])` -/
def P16223415384162459463.Spec : Prop :=
  ∀ n, P16223415384162459463.a n = A038504 n

end A038504

/-!
# A038505: Sum of every 4th entry of row n in Pascal's triangle, starting at binomial(n,2).

The programs for A038505, the canonical program `A038505.P15386344615957042470` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038505 has offset 0).

The definition of A038505 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038505.P15386344615957042470

`4*a(n-1)-6*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038505

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)` -/
def P15386344615957042470.Spec : Prop :=
  ∀ n, P15386344615957042470.a n = A038505 n

theorem P15386344615957042470.correct : P15386344615957042470.Spec := by
  intro n
  simp only [A038505]

end A038505

/-! ## A038505.P13267201090117742184

`A000749(n+1)-A000749(n)`
-/

namespace A038505.P13267201090117742184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 (n + 1) - A000749 n

end

end A038505.P13267201090117742184

namespace A038505

/-- `A000749(n+1)-A000749(n)` -/
def P13267201090117742184.Spec : Prop :=
  ∀ n, P13267201090117742184.a n = A038505 n

end A038505

/-! ## A038505.P10151937492015110606

`A038503(n+2)-2*A038503(n+1)+A038503(n)`
-/

namespace A038505.P10151937492015110606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 (n + 2) - 2 * A038503 (n + 1) + A038503 n

end

end A038505.P10151937492015110606

namespace A038505

/-- `A038503(n+2)-2*A038503(n+1)+A038503(n)` -/
def P10151937492015110606.Spec : Prop :=
  ∀ n, P10151937492015110606.a n = A038505 n

end A038505

/-! ## A038505.P9808626106825581389

`ogf((x^2-x^3)/(1-4x+6x^2-4x^3))`
-/

namespace A038505.P9808626106825581389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -1] [1, -4, 6, -4] n

end

end A038505.P9808626106825581389

namespace A038505

/-- `ogf((x^2-x^3)/(1-4x+6x^2-4x^3))` -/
def P9808626106825581389.Spec : Prop :=
  ∀ n, P9808626106825581389.a n = A038505 n

end A038505

/-! ## A038505.P14735070139230851993

`A137171(3*n+n+1)`
-/

namespace A038505.P14735070139230851993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (3 * n + (n + 1))

end

end A038505.P14735070139230851993

namespace A038505

/-- `A137171(3*n+n+1)` -/
def P14735070139230851993.Spec : Prop :=
  ∀ n, P14735070139230851993.a n = A038505 n

end A038505

/-! ## A038505.P8549803872508646516

`A038504(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A038505.P8549803872508646516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A038504 (n - 1) + a (n - 1)

end

end A038505.P8549803872508646516

namespace A038505

/-- `A038504(n-1)+a(n-1)` -/
def P8549803872508646516.Spec : Prop :=
  ∀ n, P8549803872508646516.a n = A038505 n

end A038505

/-! ## A038505.P9275422229671583875

`A038503(n)-A146559(n)`
-/

namespace A038505.P9275422229671583875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n - A146559 n

end

end A038505.P9275422229671583875

namespace A038505

/-- `A038503(n)-A146559(n)` -/
def P9275422229671583875.Spec : Prop :=
  ∀ n, P9275422229671583875.a n = A038505 n

end A038505

/-! ## A038505.P5558935910460441223

`A038503(n)-A138231(2*n+1)`
-/

namespace A038505.P5558935910460441223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n - A138231 (2 * n + 1)

end

end A038505.P5558935910460441223

namespace A038505

/-- `A038503(n)-A138231(2*n+1)` -/
def P5558935910460441223.Spec : Prop :=
  ∀ n, P5558935910460441223.a n = A038505 n

end A038505

/-! ## A038505.P17967357211790461692

`A038518(n)+A038519(n)-A038503(n)`
-/

namespace A038505.P17967357211790461692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 n + (A038519 n - A038503 n)

end

end A038505.P17967357211790461692

namespace A038505

/-- `A038518(n)+A038519(n)-A038503(n)` -/
def P17967357211790461692.Spec : Prop :=
  ∀ n, P17967357211790461692.a n = A038505 n

end A038505

/-! ## A038505.P4863176032861828968

`A009545(n)+A038503(n)-A099087(n)`
-/

namespace A038505.P4863176032861828968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n + (A038503 n - A099087 n)

end

end A038505.P4863176032861828968

namespace A038505

/-- `A009545(n)+A038503(n)-A099087(n)` -/
def P4863176032861828968.Spec : Prop :=
  ∀ n, P4863176032861828968.a n = A038505 n

end A038505

/-! ## A038505.P11419836378301228812

`A038503(n)+∑[A038504(n)-A038503(n)]`
-/

namespace A038505.P11419836378301228812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n - A038503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038505.P11419836378301228812

namespace A038505

/-- `A038503(n)+∑[A038504(n)-A038503(n)]` -/
def P11419836378301228812.Spec : Prop :=
  ∀ n, P11419836378301228812.a n = A038505 n

end A038505

/-! ## A038505.P17538006264822169403

`A009545(n)+A038503(n)-A009545(n+1)`
-/

namespace A038505.P17538006264822169403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009545 n + (A038503 n - A009545 (n + 1))

end

end A038505.P17538006264822169403

namespace A038505

/-- `A009545(n)+A038503(n)-A009545(n+1)` -/
def P17538006264822169403.Spec : Prop :=
  ∀ n, P17538006264822169403.a n = A038505 n

end A038505

/-! ## A038505.P14741823783118050027

`Δ[A000749(n)]`
-/

namespace A038505.P14741823783118050027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038505.P14741823783118050027

namespace A038505

/-- `Δ[A000749(n)]` -/
def P14741823783118050027.Spec : Prop :=
  ∀ n, P14741823783118050027.a n = A038505 n

end A038505

/-! ## A038505.P8459312752361812648

`Δ[A138569(2*n)]`
-/

namespace A038505.P8459312752361812648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138569 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038505.P8459312752361812648

namespace A038505

/-- `Δ[A138569(2*n)]` -/
def P8459312752361812648.Spec : Prop :=
  ∀ n, P8459312752361812648.a n = A038505 n

end A038505

/-! ## A038505.P17744957733377346747

`Δ[A137171(4*n)]`
-/

namespace A038505.P17744957733377346747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038505.P17744957733377346747

namespace A038505

/-- `Δ[A137171(4*n)]` -/
def P17744957733377346747.Spec : Prop :=
  ∀ n, P17744957733377346747.a n = A038505 n

end A038505

/-! ## A038505.P8127138345220892956

`A011782(n)-A038503(n)`
-/

namespace A038505.P8127138345220892956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A038503 n

end

end A038505.P8127138345220892956

namespace A038505

/-- `A011782(n)-A038503(n)` -/
def P8127138345220892956.Spec : Prop :=
  ∀ n, P8127138345220892956.a n = A038505 n

end A038505

/-! ## A038505.P2107438073042331328

`∑[A038504(n)]-A038504(n)`
-/

namespace A038505.P2107438073042331328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A038504 n

end

end A038505.P2107438073042331328

namespace A038505

/-- `∑[A038504(n)]-A038504(n)` -/
def P2107438073042331328.Spec : Prop :=
  ∀ n, P2107438073042331328.a n = A038505 n

end A038505

/-! ## A038505.P15960386779615191811

`(A011782(n)-A146559(n))/2`
-/

namespace A038505.P15960386779615191811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n - A146559 n : ℚ) / 2

end

end A038505.P15960386779615191811

namespace A038505

/-- `(A011782(n)-A146559(n))/2` -/
def P15960386779615191811.Spec : Prop :=
  ∀ n, P15960386779615191811.a n = (A038505 n : ℚ)

end A038505

/-! ## A038505.P8350695839678404471

`A158780(2*n+1)-A038503(n)`
-/

namespace A038505.P8350695839678404471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158780 (2 * n + 1) - A038503 n

end

end A038505.P8350695839678404471

namespace A038505

/-- `A158780(2*n+1)-A038503(n)` -/
def P8350695839678404471.Spec : Prop :=
  ∀ n, P8350695839678404471.a n = A038505 n

end A038505

/-! ## A038505.P3475518215740501983

`A038503(n)-A138569(2*n+3)`
-/

namespace A038505.P3475518215740501983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n - A138569 (2 * n + 3)

end

end A038505.P3475518215740501983

namespace A038505

/-- `A038503(n)-A138569(2*n+3)` -/
def P3475518215740501983.Spec : Prop :=
  ∀ n, P3475518215740501983.a n = A038505 n

end A038505

/-!
# A038506: Floor of decimal expansion of n read as if it were "base e".

The programs for A038506, there is no canonical definition to state claims against.
-/

/-! ## A038506.P13923919052835086179

`A131650(A024662(n+1))`
-/

namespace A038506.P13923919052835086179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131650 (A024662 (n + 1)).toNat

end

end A038506.P13923919052835086179

/-!
# A038507: a(n) = n! + 1.

The programs for A038507, the canonical program `A038507.P6297172410669872132` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038507 has offset 0).

The definition of A038507 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!+1` (program `A038507.P6297172410669872132`, by `A038507.P6297172410669872132.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A038507.P6297172410669872132

`n!+1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038507

/-- `n!+1` -/
def P6297172410669872132.Spec : Prop :=
  ∀ n, (P6297172410669872132.a n : ℤ) = A038507 n

theorem P6297172410669872132.correct : P6297172410669872132.Spec := by
  intro n
  simp only [A038507]

end A038507

/-! ## A038507.P10373030163917042211

`n*(a(n-1)-1)+1` with `a(0)=2`
-/

namespace A038507.P10373030163917042211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (n : ℤ) * (a (n - 1) - 1) + 1

end

end A038507.P10373030163917042211

namespace A038507

/-- `n*(a(n-1)-1)+1` -/
def P10373030163917042211.Spec : Prop :=
  ∀ n, P10373030163917042211.a n = A038507 n

end A038507

/-! ## A038507.P13261459643797335172

`abs(xor(n!, -1))`
-/

namespace A038507.P13261459643797335172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (Nat.factorial n : ℤ) (-1)|

end

end A038507.P13261459643797335172

namespace A038507

/-- `abs(xor(n!, -1))` -/
def P13261459643797335172.Spec : Prop :=
  ∀ n, P13261459643797335172.a n = A038507 n

end A038507

/-! ## A038507.P7258397955735551273

`-xor(n!, -1)`
-/

namespace A038507.P7258397955735551273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (Nat.factorial n : ℤ) (-1)

end

end A038507.P7258397955735551273

namespace A038507

/-- `-xor(n!, -1)` -/
def P7258397955735551273.Spec : Prop :=
  ∀ n, P7258397955735551273.a n = A038507 n

end A038507

/-! ## A038507.P5227069923962924990

`ϕ²-(ϕ-n!)`
-/

namespace A038507.P5227069923962924990
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 - (Real.goldenRatio - (Nat.factorial n : ℝ))

end

end A038507.P5227069923962924990

namespace A038507

/-- `ϕ²-(ϕ-n!)` -/
def P5227069923962924990.Spec : Prop :=
  ∀ n, P5227069923962924990.a n = (A038507 n : ℝ)

theorem P5227069923962924990.correct : P5227069923962924990.Spec := by
  intro n
  simp only [A038507, Nat.add_sub_cancel, A038507.P5227069923962924990.a, A038507.P6297172410669872132.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A038507

/-! ## A038507.P5660380149816172381

`xor(3, xor(3, n!)-1)`
-/

namespace A038507.P5660380149816172381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 ((Nat.xor 3 (Nat.factorial n) : ℤ) - 1)

end

end A038507.P5660380149816172381

namespace A038507

/-- `xor(3, xor(3, n!)-1)` -/
def P5660380149816172381.Spec : Prop :=
  ∀ n, P5660380149816172381.a n = A038507 n

end A038507

/-! ## A038507.P13186131288906040222

`ceil(abs(1-ϕ-n!))`
-/

namespace A038507.P13186131288906040222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|1 - Real.goldenRatio - (Nat.factorial n : ℝ)|⌉

end

end A038507.P13186131288906040222

namespace A038507

/-- `ceil(abs(1-ϕ-n!))` -/
def P13186131288906040222.Spec : Prop :=
  ∀ n, P13186131288906040222.a n = A038507 n

end A038507

/-! ## A038507.P12371560480528879923

`round(abs(1-ϕ-n!))`
-/

namespace A038507.P12371560480528879923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway |1 - Real.goldenRatio - (Nat.factorial n : ℝ)|

end

end A038507.P12371560480528879923

namespace A038507

/-- `round(abs(1-ϕ-n!))` -/
def P12371560480528879923.Spec : Prop :=
  ∀ n, P12371560480528879923.a n = A038507 n

end A038507

/-! ## A038507.P10395553751842660190

`floor(abs(3-(ϕ-n!)))`
-/

namespace A038507.P10395553751842660190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊|3 - (Real.goldenRatio - (Nat.factorial n : ℝ))|⌋

end

end A038507.P10395553751842660190

namespace A038507

/-- `floor(abs(3-(ϕ-n!)))` -/
def P10395553751842660190.Spec : Prop :=
  ∀ n, P10395553751842660190.a n = A038507 n

end A038507

/-! ## A038507.P2738046819777740611

`abs(or(n, -1)-n!)`
-/

namespace A038507.P2738046819777740611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (n : ℤ) (-1) - (Nat.factorial n : ℤ)|

end

end A038507.P2738046819777740611

namespace A038507

/-- `abs(or(n, -1)-n!)` -/
def P2738046819777740611.Spec : Prop :=
  ∀ n, P2738046819777740611.a n = A038507 n

end A038507

/-!
# A038508: Expansion of (1-2*x-x^2)/((1-2*x)*(1-2*x+2*x^2)).

The programs for A038508, the canonical program `A038508.P8474496301089087671` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038508 has offset 0).

The definition of A038508 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038508.P8474496301089087671

`4*a(n-1)-2*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=5`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038508

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)` -/
def P8474496301089087671.Spec : Prop :=
  ∀ n, P8474496301089087671.a n = A038508 n

theorem P8474496301089087671.correct : P8474496301089087671.Spec := by
  intro n
  simp only [A038508]

end A038508

/-! ## A038508.P7889321230268405221

`ogf((1-2x-x^2)/(1-4x+2x^2+4x^3))`
-/

namespace A038508.P7889321230268405221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, -1] [1, -4, 2, 4] n

end

end A038508.P7889321230268405221

namespace A038508

/-- `ogf((1-2x-x^2)/(1-4x+2x^2+4x^3))` -/
def P7889321230268405221.Spec : Prop :=
  ∀ n, P7889321230268405221.a n = A038508 n

end A038508

/-! ## A038508.P14196341523248597936

`A094297(n)+a(n-1)` with `a(0)=1`
-/

namespace A038508.P14196341523248597936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094297 n + a (n - 1)

end

end A038508.P14196341523248597936

namespace A038508

/-- `A094297(n)+a(n-1)` -/
def P14196341523248597936.Spec : Prop :=
  ∀ n, P14196341523248597936.a n = A038508 n

end A038508

/-! ## A038508.P10860518413116696373

`A155020(n)+Δ[ceil(2^(n-1))]`
-/

namespace A038508.P10860518413116696373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155020 n + (f1 (n + 1) - f1 n)

end

end A038508.P10860518413116696373

namespace A038508

/-- `A155020(n)+Δ[ceil(2^(n-1))]` -/
def P10860518413116696373.Spec : Prop :=
  ∀ n, P10860518413116696373.a n = A038508 n

end A038508

/-! ## A038508.P7489521463183897510

`A099176(n)+A007179(n)`
-/

namespace A038508.P7489521463183897510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099176 n + A007179 n

end

end A038508.P7489521463183897510

namespace A038508

/-- `A099176(n)+A007179(n)` -/
def P7489521463183897510.Spec : Prop :=
  ∀ n, P7489521463183897510.a n = A038508 n

end A038508

/-! ## A038508.P3408983901519638636

`A131577(n)+A002605(abs(1-n))+A002605(n)`
-/

namespace A038508.P3408983901519638636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n + (A002605 |1 - (n : ℤ)|.toNat + A002605 n)

end

end A038508.P3408983901519638636

namespace A038508

/-- `A131577(n)+A002605(abs(1-n))+A002605(n)` -/
def P3408983901519638636.Spec : Prop :=
  ∀ n, P3408983901519638636.a n = A038508 n

end A038508

/-! ## A038508.P2571910726822513503

`Δ[A094286(n+1)]`
-/

namespace A038508.P2571910726822513503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094286 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038508.P2571910726822513503

namespace A038508

/-- `Δ[A094286(n+1)]` -/
def P2571910726822513503.Spec : Prop :=
  ∀ n, P2571910726822513503.a n = A038508 n

end A038508

/-! ## A038508.P10925129398154820754

`∑[ceil(A287594(n)/4)]`
-/

namespace A038508.P10925129398154820754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A287594 n : ℚ) / 4⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038508.P10925129398154820754

namespace A038508

/-- `∑[ceil(A287594(n)/4)]` -/
def P10925129398154820754.Spec : Prop :=
  ∀ n, P10925129398154820754.a n = A038508 n

end A038508

/-! ## A038508.P386785094775300214

`A094297(n+1)-A002605(n)`
-/

namespace A038508.P386785094775300214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094297 (n + 1) - A002605 n

end

end A038508.P386785094775300214

namespace A038508

/-- `A094297(n+1)-A002605(n)` -/
def P386785094775300214.Spec : Prop :=
  ∀ n, P386785094775300214.a n = A038508 n

end A038508

/-! ## A038508.P9530687917900005418

`(A000079(n)+∑[A026150(n)])/2`
-/

namespace A038508.P9530687917900005418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000079 n + ∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A038508.P9530687917900005418

namespace A038508

/-- `(A000079(n)+∑[A026150(n)])/2` -/
def P9530687917900005418.Spec : Prop :=
  ∀ n, P9530687917900005418.a n = (A038508 n : ℚ)

end A038508

/-! ## A038508.P4744121619074353835

`A094286(n+2)-A094286(n+1)`
-/

namespace A038508.P4744121619074353835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094286 (n + 2) - A094286 (n + 1)

end

end A038508.P4744121619074353835

namespace A038508

/-- `A094286(n+2)-A094286(n+1)` -/
def P4744121619074353835.Spec : Prop :=
  ∀ n, P4744121619074353835.a n = A038508 n

end A038508

/-! ## A038508.P8739619756648650357

`A011782(n)+floor(A002605(n+1)/2)`
-/

namespace A038508.P8739619756648650357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n + ⌊(A002605 (n + 1) : ℚ) / 2⌋

end

end A038508.P8739619756648650357

namespace A038508

/-- `A011782(n)+floor(A002605(n+1)/2)` -/
def P8739619756648650357.Spec : Prop :=
  ∀ n, P8739619756648650357.a n = A038508 n

end A038508

/-! ## A038508.P8424951987932411227

`(A011782(n+1)+A002605(n+1))/2`
-/

namespace A038508.P8424951987932411227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 (n + 1) + A002605 (n + 1) : ℚ) / 2

end

end A038508.P8424951987932411227

namespace A038508

/-- `(A011782(n+1)+A002605(n+1))/2` -/
def P8424951987932411227.Spec : Prop :=
  ∀ n, P8424951987932411227.a n = (A038508 n : ℚ)

end A038508

/-! ## A038508.P14070372569804844231

`(A131577(n+1)+A002605(n+1))/2`
-/

namespace A038508.P14070372569804844231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131577 (n + 1) + A002605 (n + 1) : ℚ) / 2

end

end A038508.P14070372569804844231

namespace A038508

/-- `(A131577(n+1)+A002605(n+1))/2` -/
def P14070372569804844231.Spec : Prop :=
  ∀ n, P14070372569804844231.a n = (A038508 n : ℚ)

end A038508

/-! ## A038508.P15153559601467443519

`(A016116(2*n)+A002605(n+1))/2`
-/

namespace A038508.P15153559601467443519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016116 (2 * n) + A002605 (n + 1) : ℚ) / 2

end

end A038508.P15153559601467443519

namespace A038508

/-- `(A016116(2*n)+A002605(n+1))/2` -/
def P15153559601467443519.Spec : Prop :=
  ∀ n, P15153559601467443519.a n = (A038508 n : ℚ)

end A038508

/-! ## A038508.P3149593896755728779

`(A002605(n)+A026150(n)+2^n)/2`
-/

namespace A038508.P3149593896755728779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002605 n + (A026150 n + (2 ^ n : ℤ)) : ℚ) / 2

end

end A038508.P3149593896755728779

namespace A038508

/-- `(A002605(n)+A026150(n)+2^n)/2` -/
def P3149593896755728779.Spec : Prop :=
  ∀ n, P3149593896755728779.a n = (A038508 n : ℚ)

end A038508

/-! ## A038508.P13783290674920955298

`(A074323(2*n+1)+A002605(n+1))/2`
-/

namespace A038508.P13783290674920955298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074323 (2 * n + 1) + A002605 (n + 1) : ℚ) / 2

end

end A038508.P13783290674920955298

namespace A038508

/-- `(A074323(2*n+1)+A002605(n+1))/2` -/
def P13783290674920955298.Spec : Prop :=
  ∀ n, P13783290674920955298.a n = (A038508 n : ℚ)

end A038508

/-! ## A038508.P422767406406633131

`Δ[(A000051(n)+∑[A002605(n)])/2]`
-/

namespace A038508.P422767406406633131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A000051 n + ∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038508.P422767406406633131

namespace A038508

/-- `Δ[(A000051(n)+∑[A002605(n)])/2]` -/
def P422767406406633131.Spec : Prop :=
  ∀ n, P422767406406633131.a n = (A038508 n : ℚ)

end A038508

/-!
# A038509: Composite numbers congruent to +-1 mod 6.

The programs for A038509, the canonical program `A038509.P14900524453190628503` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038509 has offset 1).

The definition of A038509 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6756 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038509.P16292623244546319095

`lt[3, A020639(n+1)%(n+1)]+1`
-/

namespace A038509.P16292623244546319095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020639 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A038509.P16292623244546319095

namespace A038509

/-- `lt[3, A020639(n+1)%(n+1)]+1` -/
def P16292623244546319095.Spec : Prop :=
  ∀ n, (P16292623244546319095.a n : ℤ) = A038509 (n + 1)

end A038509

/-! ## A038509.P2562491178957799615

`∩[2*n+1, A090818(n+2)]`
-/

namespace A038509.P2562491178957799615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038509.P2562491178957799615

namespace A038509

/-- `∩[2*n+1, A090818(n+2)]` -/
def P2562491178957799615.Spec : Prop :=
  ∀ n, (P2562491178957799615.a n : ℤ) = A038509 (n + 1)

end A038509

/-! ## A038509.P12169502932799895904

`filter[A090818(n+1), A355450(#)]`
-/

namespace A038509.P12169502932799895904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355450 (f1 j).toNat = 1) n)

end

end A038509.P12169502932799895904

namespace A038509

/-- `filter[A090818(n+1), A355450(#)]` -/
def P12169502932799895904.Spec : Prop :=
  ∀ n, P12169502932799895904.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P9618116552022249439

`filter[A090818(n+2), A039982(#)]`
-/

namespace A038509.P9618116552022249439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039982 (f1 j).toNat = 1) n)

end

end A038509.P9618116552022249439

namespace A038509

/-- `filter[A090818(n+2), A039982(#)]` -/
def P9618116552022249439.Spec : Prop :=
  ∀ n, P9618116552022249439.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P7518822662065906754

`filter[A090818(n+2), A098725(#)]`
-/

namespace A038509.P7518822662065906754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A038509.P7518822662065906754

namespace A038509

/-- `filter[A090818(n+2), A098725(#)]` -/
def P7518822662065906754.Spec : Prop :=
  ∀ n, P7518822662065906754.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P14608547103142849141

`filter[A090818(n+2), A166486(#)]`
-/

namespace A038509.P14608547103142849141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A038509.P14608547103142849141

namespace A038509

/-- `filter[A090818(n+2), A166486(#)]` -/
def P14608547103142849141.Spec : Prop :=
  ∀ n, P14608547103142849141.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P17048962399890584647

`filter[A090818(n+2), A320106(#)]`
-/

namespace A038509.P17048962399890584647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A038509.P17048962399890584647

namespace A038509

/-- `filter[A090818(n+2), A320106(#)]` -/
def P17048962399890584647.Spec : Prop :=
  ∀ n, P17048962399890584647.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P8585883125551374115

`filter[A090818(n+2), A354354(#)]`
-/

namespace A038509.P8585883125551374115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A038509.P8585883125551374115

namespace A038509

/-- `filter[A090818(n+2), A354354(#)]` -/
def P8585883125551374115.Spec : Prop :=
  ∀ n, P8585883125551374115.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P15169706460215896803

`filter[A090818(n+2), A359374(#)]`
-/

namespace A038509.P15169706460215896803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A038509.P15169706460215896803

namespace A038509

/-- `filter[A090818(n+2), A359374(#)]` -/
def P15169706460215896803.Spec : Prop :=
  ∀ n, P15169706460215896803.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P18267114505600211403

`filter[A090818(n+2), A374134(#)]`
-/

namespace A038509.P18267114505600211403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090818 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374134 (f1 j).toNat = 1) n)

end

end A038509.P18267114505600211403

namespace A038509

/-- `filter[A090818(n+2), A374134(#)]` -/
def P18267114505600211403.Spec : Prop :=
  ∀ n, P18267114505600211403.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P14900524453190628503

`A007310(A199593(n+1))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038509

/-- `A007310(A199593(n+1))` -/
def P14900524453190628503.Spec : Prop :=
  ∀ n, P14900524453190628503.a n = A038509 (n + 1)

theorem P14900524453190628503.correct : P14900524453190628503.Spec := by
  intro n
  simp only [A038509, Nat.add_sub_cancel]

end A038509

/-! ## A038509.P13369466654129241369

`filter[A007310(n+1), A066247(#)]`
-/

namespace A038509.P13369466654129241369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A038509.P13369466654129241369

namespace A038509

/-- `filter[A007310(n+1), A066247(#)]` -/
def P13369466654129241369.Spec : Prop :=
  ∀ n, P13369466654129241369.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P4885282404472377066

`filter[A007310(n+1), A202238(#)]`
-/

namespace A038509.P4885282404472377066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A038509.P4885282404472377066

namespace A038509

/-- `filter[A007310(n+1), A202238(#)]` -/
def P4885282404472377066.Spec : Prop :=
  ∀ n, P4885282404472377066.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P14088536638517305588

`filter[A007310(n+1), A323162(#)]`
-/

namespace A038509.P14088536638517305588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A038509.P14088536638517305588

namespace A038509

/-- `filter[A007310(n+1), A323162(#)]` -/
def P14088536638517305588.Spec : Prop :=
  ∀ n, P14088536638517305588.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P13985397038023229167

`filter[A007310(n+2), A005171(#)]`
-/

namespace A038509.P13985397038023229167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A038509.P13985397038023229167

namespace A038509

/-- `filter[A007310(n+2), A005171(#)]` -/
def P13985397038023229167.Spec : Prop :=
  ∀ n, P13985397038023229167.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P6546680856464557179

`filter[A007310(n+2), A292438(#)]`
-/

namespace A038509.P6546680856464557179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A038509.P6546680856464557179

namespace A038509

/-- `filter[A007310(n+2), A292438(#)]` -/
def P6546680856464557179.Spec : Prop :=
  ∀ n, P6546680856464557179.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P7419455487135530122

`filter[A038179(n+1), A005171(#)]`
-/

namespace A038509.P7419455487135530122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A038509.P7419455487135530122

namespace A038509

/-- `filter[A038179(n+1), A005171(#)]` -/
def P7419455487135530122.Spec : Prop :=
  ∀ n, P7419455487135530122.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P4604592843734778807

`filter[A038179(n+1), A066247(#)]`
-/

namespace A038509.P4604592843734778807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A038509.P4604592843734778807

namespace A038509

/-- `filter[A038179(n+1), A066247(#)]` -/
def P4604592843734778807.Spec : Prop :=
  ∀ n, P4604592843734778807.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P15677694445069235446

`filter[A038179(n+1), A202238(#)]`
-/

namespace A038509.P15677694445069235446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A038509.P15677694445069235446

namespace A038509

/-- `filter[A038179(n+1), A202238(#)]` -/
def P15677694445069235446.Spec : Prop :=
  ∀ n, P15677694445069235446.a n = A038509 (n + 1)

end A038509

/-! ## A038509.P9775521650250326396

`filter[A038179(n+1), A292438(#)]`
-/

namespace A038509.P9775521650250326396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038179 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A038509.P9775521650250326396

namespace A038509

/-- `filter[A038179(n+1), A292438(#)]` -/
def P9775521650250326396.Spec : Prop :=
  ∀ n, P9775521650250326396.a n = A038509 (n + 1)

end A038509

/-!
# A038510: Composite numbers with smallest prime factor >= 7.

The programs for A038510, the canonical program `A038510.P9284818905078478089` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038510 has offset 1).

The definition of A038510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7092 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038510.P9284818905078478089

`filter[A038509(n+1), A011558(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038510

/-- `filter[A038509(n+1), A011558(#)]` -/
def P9284818905078478089.Spec : Prop :=
  ∀ n, P9284818905078478089.a n = A038510 (n + 1)

theorem P9284818905078478089.correct : P9284818905078478089.Spec := by
  intro n
  simp only [A038510, Nat.add_sub_cancel]

end A038510

/-! ## A038510.P3186305945920904133

`filter[A038509(n+1), A162289(#)]`
-/

namespace A038510.P3186305945920904133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A038510.P3186305945920904133

namespace A038510

/-- `filter[A038509(n+1), A162289(#)]` -/
def P3186305945920904133.Spec : Prop :=
  ∀ n, P3186305945920904133.a n = A038510 (n + 1)

end A038510

/-! ## A038510.P3970617920804877978

`filter[A070884(n), A005171(#)]`
-/

namespace A038510.P3970617920804877978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A038510.P3970617920804877978

namespace A038510

/-- `filter[A070884(n), A005171(#)]` -/
def P3970617920804877978.Spec : Prop :=
  ∀ n, P3970617920804877978.a n = A038510 (n + 1)

end A038510

/-! ## A038510.P6434407868130044675

`filter[A070884(n), A066247(#)]`
-/

namespace A038510.P6434407868130044675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A038510.P6434407868130044675

namespace A038510

/-- `filter[A070884(n), A066247(#)]` -/
def P6434407868130044675.Spec : Prop :=
  ∀ n, P6434407868130044675.a n = A038510 (n + 1)

end A038510

/-! ## A038510.P1525738240031042729

`filter[A070884(n), A202238(#)]`
-/

namespace A038510.P1525738240031042729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A038510.P1525738240031042729

namespace A038510

/-- `filter[A070884(n), A202238(#)]` -/
def P1525738240031042729.Spec : Prop :=
  ∀ n, P1525738240031042729.a n = A038510 (n + 1)

end A038510

/-! ## A038510.P15073751016793878092

`filter[A070884(n), A292438(#)]`
-/

namespace A038510.P15073751016793878092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A038510.P15073751016793878092

namespace A038510

/-- `filter[A070884(n), A292438(#)]` -/
def P15073751016793878092.Spec : Prop :=
  ∀ n, P15073751016793878092.a n = A038510 (n + 1)

end A038510

/-! ## A038510.P15699587242388893588

`filter[A070884(n), A323162(#)]`
-/

namespace A038510.P15699587242388893588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A038510.P15699587242388893588

namespace A038510

/-- `filter[A070884(n), A323162(#)]` -/
def P15699587242388893588.Spec : Prop :=
  ∀ n, P15699587242388893588.a n = A038510 (n + 1)

end A038510

/-! ## A038510.P4639498776848998317

`∩[A038509(n+1), A070884(n)]`
-/

namespace A038510.P4639498776848998317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038510.P4639498776848998317

namespace A038510

/-- `∩[A038509(n+1), A070884(n)]` -/
def P4639498776848998317.Spec : Prop :=
  ∀ n, (P4639498776848998317.a n : ℤ) = A038510 (n + 1)

end A038510

/-! ## A038510.P6913652118044795561

`∩[A067793(n+1), A070884(n)]`
-/

namespace A038510.P6913652118044795561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067793 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038510.P6913652118044795561

namespace A038510

/-- `∩[A067793(n+1), A070884(n)]` -/
def P6913652118044795561.Spec : Prop :=
  ∀ n, (P6913652118044795561.a n : ℤ) = A038510 (n + 1)

end A038510

/-! ## A038510.P14424004203346198581

`∩[A007775(n+1), A038509(n+1)]`
-/

namespace A038510.P14424004203346198581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038510.P14424004203346198581

namespace A038510

/-- `∩[A007775(n+1), A038509(n+1)]` -/
def P14424004203346198581.Spec : Prop :=
  ∀ n, (P14424004203346198581.a n : ℤ) = A038510 (n + 1)

end A038510

/-! ## A038510.P3076901018674215479

`filter[A054403(n+1), A005171(#)]`
-/

namespace A038510.P3076901018674215479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A038510.P3076901018674215479

namespace A038510

/-- `filter[A054403(n+1), A005171(#)]` -/
def P3076901018674215479.Spec : Prop :=
  ∀ n, P3076901018674215479.a n = A038510 (n + 1)

end A038510

/-! ## A038510.P1314946815868558278

`filter[A054403(n+1), A066247(#)]`
-/

namespace A038510.P1314946815868558278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A038510.P1314946815868558278

namespace A038510

/-- `filter[A054403(n+1), A066247(#)]` -/
def P1314946815868558278.Spec : Prop :=
  ∀ n, P1314946815868558278.a n = A038510 (n + 1)

end A038510

/-! ## A038510.P18273011366762450894

`filter[A054403(n+1), A202238(#)]`
-/

namespace A038510.P18273011366762450894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A038510.P18273011366762450894

namespace A038510

/-- `filter[A054403(n+1), A202238(#)]` -/
def P18273011366762450894.Spec : Prop :=
  ∀ n, P18273011366762450894.a n = A038510 (n + 1)

end A038510

/-! ## A038510.P6120143567908598115

`filter[A054403(n+1), A292438(#)]`
-/

namespace A038510.P6120143567908598115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A038510.P6120143567908598115

namespace A038510

/-- `filter[A054403(n+1), A292438(#)]` -/
def P6120143567908598115.Spec : Prop :=
  ∀ n, P6120143567908598115.a n = A038510 (n + 1)

end A038510

/-! ## A038510.P2879822504054333784

`filter[A054403(n+1), A323162(#)]`
-/

namespace A038510.P2879822504054333784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A038510.P2879822504054333784

namespace A038510

/-- `filter[A054403(n+1), A323162(#)]` -/
def P2879822504054333784.Spec : Prop :=
  ∀ n, P2879822504054333784.a n = A038510 (n + 1)

end A038510

/-! ## A038510.P16330665497472969055

`∩[A054403(n+1), A038509(n+1)]`
-/

namespace A038510.P16330665497472969055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038510.P16330665497472969055

namespace A038510

/-- `∩[A054403(n+1), A038509(n+1)]` -/
def P16330665497472969055.Spec : Prop :=
  ∀ n, (P16330665497472969055.a n : ℤ) = A038510 (n + 1)

end A038510

/-! ## A038510.P2468316559512820084

`∩[A070884(n), A100490(n)]`
-/

namespace A038510.P2468316559512820084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038510.P2468316559512820084

namespace A038510

/-- `∩[A070884(n), A100490(n)]` -/
def P2468316559512820084.Spec : Prop :=
  ∀ n, (P2468316559512820084.a n : ℤ) = A038510 (n + 1)

end A038510

/-! ## A038510.P14680716963314636836

`filter[A053795(n+1), A162289(#)]`
-/

namespace A038510.P14680716963314636836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A038510.P14680716963314636836

namespace A038510

/-- `filter[A053795(n+1), A162289(#)]` -/
def P14680716963314636836.Spec : Prop :=
  ∀ n, P14680716963314636836.a n = A038510 (n + 1)

end A038510

/-! ## A038510.P13303379496553648090

`filter[A053795(n+1), A187074(#)]`
-/

namespace A038510.P13303379496553648090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A038510.P13303379496553648090

namespace A038510

/-- `filter[A053795(n+1), A187074(#)]` -/
def P13303379496553648090.Spec : Prop :=
  ∀ n, P13303379496553648090.a n = A038510 (n + 1)

end A038510

/-! ## A038510.P6140890990639316339

`filter[A100490(n+1), A162289(#)]`
-/

namespace A038510.P6140890990639316339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A162289 (f1 j).toNat = 1) n)

end

end A038510.P6140890990639316339

namespace A038510

/-- `filter[A100490(n+1), A162289(#)]` -/
def P6140890990639316339.Spec : Prop :=
  ∀ n, P6140890990639316339.a n = A038510 (n + 1)

end A038510

/-!
# A038511: Composite numbers with smallest prime factor >= 11.

The programs for A038511, the canonical program `A038511.P1114232487141861154` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038511 has offset 1).

The definition of A038511 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6988 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038511.P1114232487141861154

`filter[A133630(n+1), A162289(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038511

/-- `filter[A133630(n+1), A162289(#)]` -/
def P1114232487141861154.Spec : Prop :=
  ∀ n, P1114232487141861154.a n = A038511 (n + 1)

theorem P1114232487141861154.correct : P1114232487141861154.Spec := by
  intro n
  simp only [A038511, Nat.add_sub_cancel]

end A038511

/-! ## A038511.P3192905234887584918

`∩[A008364(n+1), A038510(n+1)]`
-/

namespace A038511.P3192905234887584918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P3192905234887584918

namespace A038511

/-- `∩[A008364(n+1), A038510(n+1)]` -/
def P3192905234887584918.Spec : Prop :=
  ∀ n, (P3192905234887584918.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P2194112532785935253

`filter[A055398(n+2), A005171(#)]`
-/

namespace A038511.P2194112532785935253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A038511.P2194112532785935253

namespace A038511

/-- `filter[A055398(n+2), A005171(#)]` -/
def P2194112532785935253.Spec : Prop :=
  ∀ n, P2194112532785935253.a n = A038511 (n + 1)

end A038511

/-! ## A038511.P17173543430154294195

`∩[A038510(n+1), A055398(n+1)]`
-/

namespace A038511.P17173543430154294195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P17173543430154294195

namespace A038511

/-- `∩[A038510(n+1), A055398(n+1)]` -/
def P17173543430154294195.Spec : Prop :=
  ∀ n, (P17173543430154294195.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P18205650535544198831

`∩[A055398(n+1), A067793(n+1)]`
-/

namespace A038511.P18205650535544198831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067793 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P18205650535544198831

namespace A038511

/-- `∩[A055398(n+1), A067793(n+1)]` -/
def P18205650535544198831.Spec : Prop :=
  ∀ n, (P18205650535544198831.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P14156975737926057973

`∩[A038510(n+1), A052424(n+1)]`
-/

namespace A038511.P14156975737926057973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P14156975737926057973

namespace A038511

/-- `∩[A038510(n+1), A052424(n+1)]` -/
def P14156975737926057973.Spec : Prop :=
  ∀ n, (P14156975737926057973.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P13147916356187864282

`∩[A008364(n+1), A038509(n+1)]`
-/

namespace A038511.P13147916356187864282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P13147916356187864282

namespace A038511

/-- `∩[A008364(n+1), A038509(n+1)]` -/
def P13147916356187864282.Spec : Prop :=
  ∀ n, (P13147916356187864282.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P7246811535411607306

`∩[A038509(n+1), A052424(n+1)]`
-/

namespace A038511.P7246811535411607306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P7246811535411607306

namespace A038511

/-- `∩[A038509(n+1), A052424(n+1)]` -/
def P7246811535411607306.Spec : Prop :=
  ∀ n, (P7246811535411607306.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P4588416251874456742

`∩[A038509(n+1), A055398(n+1)]`
-/

namespace A038511.P4588416251874456742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P4588416251874456742

namespace A038511

/-- `∩[A038509(n+1), A055398(n+1)]` -/
def P4588416251874456742.Spec : Prop :=
  ∀ n, (P4588416251874456742.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P15231156294511643899

`∩[A133630(n+1), A070884(n)]`
-/

namespace A038511.P15231156294511643899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070884 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P15231156294511643899

namespace A038511

/-- `∩[A133630(n+1), A070884(n)]` -/
def P15231156294511643899.Spec : Prop :=
  ∀ n, (P15231156294511643899.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P763180088161924665

`∩[A007775(n+1), A133630(n+1)]`
-/

namespace A038511.P763180088161924665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P763180088161924665

namespace A038511

/-- `∩[A007775(n+1), A133630(n+1)]` -/
def P763180088161924665.Spec : Prop :=
  ∀ n, (P763180088161924665.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P2148660842385599867

`∩[A054403(n+1), A133630(n+1)]`
-/

namespace A038511.P2148660842385599867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P2148660842385599867

namespace A038511

/-- `∩[A054403(n+1), A133630(n+1)]` -/
def P2148660842385599867.Spec : Prop :=
  ∀ n, (P2148660842385599867.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P4756151145611004064

`∩[A008364(n+1), A069063(n+1)]`
-/

namespace A038511.P4756151145611004064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P4756151145611004064

namespace A038511

/-- `∩[A008364(n+1), A069063(n+1)]` -/
def P4756151145611004064.Spec : Prop :=
  ∀ n, (P4756151145611004064.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P18389327604834402090

`∩[A055398(n+1), A100490(n)]`
-/

namespace A038511.P18389327604834402090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P18389327604834402090

namespace A038511

/-- `∩[A055398(n+1), A100490(n)]` -/
def P18389327604834402090.Spec : Prop :=
  ∀ n, (P18389327604834402090.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P6525636426888997666

`∩[A008364(n+1), A053795(n+1)]`
-/

namespace A038511.P6525636426888997666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P6525636426888997666

namespace A038511

/-- `∩[A008364(n+1), A053795(n+1)]` -/
def P6525636426888997666.Spec : Prop :=
  ∀ n, (P6525636426888997666.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P13372017542216819833

`∩[A052424(n+1), A053795(n+1)]`
-/

namespace A038511.P13372017542216819833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P13372017542216819833

namespace A038511

/-- `∩[A052424(n+1), A053795(n+1)]` -/
def P13372017542216819833.Spec : Prop :=
  ∀ n, (P13372017542216819833.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P5183088427886148890

`∩[A053795(n+1), A055398(n+1)]`
-/

namespace A038511.P5183088427886148890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P5183088427886148890

namespace A038511

/-- `∩[A053795(n+1), A055398(n+1)]` -/
def P5183088427886148890.Spec : Prop :=
  ∀ n, (P5183088427886148890.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P15528352857575388394

`∩[A038509(n+1), A235583(n+1)]`
-/

namespace A038511.P15528352857575388394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P15528352857575388394

namespace A038511

/-- `∩[A038509(n+1), A235583(n+1)]` -/
def P15528352857575388394.Spec : Prop :=
  ∀ n, (P15528352857575388394.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P7837060086734765413

`∩[A038510(n+1), A235583(n+1)]`
-/

namespace A038511.P7837060086734765413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P7837060086734765413

namespace A038511

/-- `∩[A038510(n+1), A235583(n+1)]` -/
def P7837060086734765413.Spec : Prop :=
  ∀ n, (P7837060086734765413.a n : ℤ) = A038511 (n + 1)

end A038511

/-! ## A038511.P15290023916480928915

`∩[A235583(n+1), A271630(n+1)]`
-/

namespace A038511.P15290023916480928915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038511.P15290023916480928915

namespace A038511

/-- `∩[A235583(n+1), A271630(n+1)]` -/
def P15290023916480928915.Spec : Prop :=
  ∀ n, (P15290023916480928915.a n : ℤ) = A038511 (n + 1)

end A038511

/-!
# A038512: Nonprime numbers with smallest prime factor >= 13.

The programs for A038512, the canonical program `A038512.P8659192709119909117` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038512 has offset 1).

The definition of A038512 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5048 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038512.P8659192709119909117

`∩[A008365(n+1), A038510(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038512

/-- `∩[A008365(n+1), A038510(n+1)]` -/
def P8659192709119909117.Spec : Prop :=
  ∀ n, (P8659192709119909117.a n : ℤ) = A038512 (n + 1)

theorem P8659192709119909117.correct : P8659192709119909117.Spec := by
  intro n
  simp only [A038512, Nat.add_sub_cancel]

end A038512

/-! ## A038512.P5486051088400655553

`∩[A008365(n+1), A038511(n+1)]`
-/

namespace A038512.P5486051088400655553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P5486051088400655553

namespace A038512

/-- `∩[A008365(n+1), A038511(n+1)]` -/
def P5486051088400655553.Spec : Prop :=
  ∀ n, (P5486051088400655553.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P8027942928904081669

`∩[A008365(n+1), A133630(n+1)]`
-/

namespace A038512.P8027942928904081669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P8027942928904081669

namespace A038512

/-- `∩[A008365(n+1), A133630(n+1)]` -/
def P8027942928904081669.Spec : Prop :=
  ∀ n, (P8027942928904081669.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P5603164958240119089

`∩[A008365(n+1), A271630(n+1)]`
-/

namespace A038512.P5603164958240119089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P5603164958240119089

namespace A038512

/-- `∩[A008365(n+1), A271630(n+1)]` -/
def P5603164958240119089.Spec : Prop :=
  ∀ n, (P5603164958240119089.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P2375349676701745977

`∩[A008365(n+1), A038509(n+1)]`
-/

namespace A038512.P2375349676701745977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P2375349676701745977

namespace A038512

/-- `∩[A008365(n+1), A038509(n+1)]` -/
def P2375349676701745977.Spec : Prop :=
  ∀ n, (P2375349676701745977.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P6006367706762451353

`∩[A008365(n+1), A390467(n+1)]`
-/

namespace A038512.P6006367706762451353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P6006367706762451353

namespace A038512

/-- `∩[A008365(n+1), A390467(n+1)]` -/
def P6006367706762451353.Spec : Prop :=
  ∀ n, (P6006367706762451353.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P620332882228316071

`∩[A008365(n+1), A069063(n+1)]`
-/

namespace A038512.P620332882228316071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069063 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P620332882228316071

namespace A038512

/-- `∩[A008365(n+1), A069063(n+1)]` -/
def P620332882228316071.Spec : Prop :=
  ∀ n, (P620332882228316071.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P7856588838950018927

`∩[A008365(n+1), A053795(n+1)]`
-/

namespace A038512.P7856588838950018927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P7856588838950018927

namespace A038512

/-- `∩[A008365(n+1), A053795(n+1)]` -/
def P7856588838950018927.Spec : Prop :=
  ∀ n, (P7856588838950018927.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P9154044546858776859

`∩[A038511(n+1), A236204(n+1)]`
-/

namespace A038512.P9154044546858776859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P9154044546858776859

namespace A038512

/-- `∩[A038511(n+1), A236204(n+1)]` -/
def P9154044546858776859.Spec : Prop :=
  ∀ n, (P9154044546858776859.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P9704709370038779105

`∩[A038511(n+1), A236208(n+1)]`
-/

namespace A038512.P9704709370038779105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P9704709370038779105

namespace A038512

/-- `∩[A038511(n+1), A236208(n+1)]` -/
def P9704709370038779105.Spec : Prop :=
  ∀ n, (P9704709370038779105.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P10904321416738723254

`∩[A008365(n+1), A067887(n+1)]`
-/

namespace A038512.P10904321416738723254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P10904321416738723254

namespace A038512

/-- `∩[A008365(n+1), A067887(n+1)]` -/
def P10904321416738723254.Spec : Prop :=
  ∀ n, (P10904321416738723254.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P16598501894762424197

`∩[A008365(n+1), A333039(n+1)]`
-/

namespace A038512.P16598501894762424197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P16598501894762424197

namespace A038512

/-- `∩[A008365(n+1), A333039(n+1)]` -/
def P16598501894762424197.Spec : Prop :=
  ∀ n, (P16598501894762424197.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P3919687552229388946

`∩[A008365(n+1), A071904(n+1)]`
-/

namespace A038512.P3919687552229388946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071904 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P3919687552229388946

namespace A038512

/-- `∩[A008365(n+1), A071904(n+1)]` -/
def P3919687552229388946.Spec : Prop :=
  ∀ n, (P3919687552229388946.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P8697008192062630632

`∩[A008365(n+1), A270574(n+1)]`
-/

namespace A038512.P8697008192062630632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P8697008192062630632

namespace A038512

/-- `∩[A008365(n+1), A270574(n+1)]` -/
def P8697008192062630632.Spec : Prop :=
  ∀ n, (P8697008192062630632.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P10766000332950347875

`∩[A008365(n+1), A052202(n+1)]`
-/

namespace A038512.P10766000332950347875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052202 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P10766000332950347875

namespace A038512

/-- `∩[A008365(n+1), A052202(n+1)]` -/
def P10766000332950347875.Spec : Prop :=
  ∀ n, (P10766000332950347875.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P9246999517519127540

`∩[A008365(n+1), A078505(n+1)]`
-/

namespace A038512.P9246999517519127540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P9246999517519127540

namespace A038512

/-- `∩[A008365(n+1), A078505(n+1)]` -/
def P9246999517519127540.Spec : Prop :=
  ∀ n, (P9246999517519127540.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P13641074988212264

`∩[A038511(n+1), A204454(n+1)]`
-/

namespace A038512.P13641074988212264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P13641074988212264

namespace A038512

/-- `∩[A038511(n+1), A204454(n+1)]` -/
def P13641074988212264.Spec : Prop :=
  ∀ n, (P13641074988212264.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P17944086560713823518

`∩[A008365(n+1), A083247(n+1)]`
-/

namespace A038512.P17944086560713823518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008365 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083247 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P17944086560713823518

namespace A038512

/-- `∩[A008365(n+1), A083247(n+1)]` -/
def P17944086560713823518.Spec : Prop :=
  ∀ n, (P17944086560713823518.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P6387275800584804284

`∩[A038511(n+1), A236217(n+1)]`
-/

namespace A038512.P6387275800584804284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236217 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038512.P6387275800584804284

namespace A038512

/-- `∩[A038511(n+1), A236217(n+1)]` -/
def P6387275800584804284.Spec : Prop :=
  ∀ n, (P6387275800584804284.a n : ℤ) = A038512 (n + 1)

end A038512

/-! ## A038512.P14890861268336258894

`lt[11, A107286(n)]`
-/

namespace A038512.P14890861268336258894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A038512.P14890861268336258894

namespace A038512

/-- `lt[11, A107286(n)]` -/
def P14890861268336258894.Spec : Prop :=
  ∀ n, (P14890861268336258894.a n : ℤ) = A038512 (n + 1)

end A038512

/-!
# A038513: Numbers with three not necessarily distinct prime factors with smallest prime >=5.

The programs for A038513, the canonical program `A038513.P216814139241609581` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038513 has offset 0).

The definition of A038513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5214 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038513.P11316424317760373859

`filter[A307515(n+1), A369058(#)]`
-/

namespace A038513.P11316424317760373859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A369058 (f1 j).toNat = 1) n)

end

end A038513.P11316424317760373859

namespace A038513

/-- `filter[A307515(n+1), A369058(#)]` -/
def P11316424317760373859.Spec : Prop :=
  ∀ n, P11316424317760373859.a n = A038513 n

end A038513

/-! ## A038513.P216814139241609581

`filter[A046316(n+1), A187074(#)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038513

/-- `filter[A046316(n+1), A187074(#)]` -/
def P216814139241609581.Spec : Prop :=
  ∀ n, P216814139241609581.a n = A038513 n

theorem P216814139241609581.correct : P216814139241609581.Spec := by
  intro n
  simp only [A038513]

end A038513

/-! ## A038513.P18174493567276789175

`filter[A046316(n+1), A359172(#)]`
-/

namespace A038513.P18174493567276789175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359172 (f1 j).toNat = 1) n)

end

end A038513.P18174493567276789175

namespace A038513

/-- `filter[A046316(n+1), A359172(#)]` -/
def P18174493567276789175.Spec : Prop :=
  ∀ n, P18174493567276789175.a n = A038513 n

end A038513

/-! ## A038513.P16944473107522831723

`filter[A046316(n+1), A359374(#)]`
-/

namespace A038513.P16944473107522831723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A038513.P16944473107522831723

namespace A038513

/-- `filter[A046316(n+1), A359374(#)]` -/
def P16944473107522831723.Spec : Prop :=
  ∀ n, P16944473107522831723.a n = A038513 n

end A038513

/-! ## A038513.P7752855341187033247

`filter[A046316(n+1), A373155(#)]`
-/

namespace A038513.P7752855341187033247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A038513.P7752855341187033247

namespace A038513

/-- `filter[A046316(n+1), A373155(#)]` -/
def P7752855341187033247.Spec : Prop :=
  ∀ n, P7752855341187033247.a n = A038513 n

end A038513

/-! ## A038513.P2786135489958515129

`filter[A046316(n+1), A373156(#)]`
-/

namespace A038513.P2786135489958515129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373156 (f1 j).toNat = 1) n)

end

end A038513.P2786135489958515129

namespace A038513

/-- `filter[A046316(n+1), A373156(#)]` -/
def P2786135489958515129.Spec : Prop :=
  ∀ n, P2786135489958515129.a n = A038513 n

end A038513

/-! ## A038513.P3213018534445720453

`filter[A046316(n+1), A374043(#)]`
-/

namespace A038513.P3213018534445720453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A038513.P3213018534445720453

namespace A038513

/-- `filter[A046316(n+1), A374043(#)]` -/
def P3213018534445720453.Spec : Prop :=
  ∀ n, P3213018534445720453.a n = A038513 n

end A038513

/-! ## A038513.P6721560571512105432

`filter[A046316(n+2), A372573(#)]`
-/

namespace A038513.P6721560571512105432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372573 (f1 j).toNat = 1) n)

end

end A038513.P6721560571512105432

namespace A038513

/-- `filter[A046316(n+2), A372573(#)]` -/
def P6721560571512105432.Spec : Prop :=
  ∀ n, P6721560571512105432.a n = A038513 n

end A038513

/-! ## A038513.P1387813514924810897

`filter[A046316(n+2), A373836(#)]`
-/

namespace A038513.P1387813514924810897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373836 (f1 j).toNat = 1) n)

end

end A038513.P1387813514924810897

namespace A038513

/-- `filter[A046316(n+2), A373836(#)]` -/
def P1387813514924810897.Spec : Prop :=
  ∀ n, P1387813514924810897.a n = A038513 n

end A038513

/-! ## A038513.P8675746492330394408

`filter[A046316(n+2), A373851(#)]`
-/

namespace A038513.P8675746492330394408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373851 (f1 j).toNat = 1) n)

end

end A038513.P8675746492330394408

namespace A038513

/-- `filter[A046316(n+2), A373851(#)]` -/
def P8675746492330394408.Spec : Prop :=
  ∀ n, P8675746492330394408.a n = A038513 n

end A038513

/-! ## A038513.P7137619721847792864

`filter[A046316(n+2), A374041(#)]`
-/

namespace A038513.P7137619721847792864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374041 (f1 j).toNat = 1) n)

end

end A038513.P7137619721847792864

namespace A038513

/-- `filter[A046316(n+2), A374041(#)]` -/
def P7137619721847792864.Spec : Prop :=
  ∀ n, P7137619721847792864.a n = A038513 n

end A038513

/-! ## A038513.P1073797257395664062

`∩[A046316(n+1), A307515(n+1)]`
-/

namespace A038513.P1073797257395664062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038513.P1073797257395664062

namespace A038513

/-- `∩[A046316(n+1), A307515(n+1)]` -/
def P1073797257395664062.Spec : Prop :=
  ∀ n, (P1073797257395664062.a n : ℤ) = A038513 n

end A038513

/-! ## A038513.P17156313275442288030

`filter[A046316(n+1), A320106(#)]`
-/

namespace A038513.P17156313275442288030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A038513.P17156313275442288030

namespace A038513

/-- `filter[A046316(n+1), A320106(#)]` -/
def P17156313275442288030.Spec : Prop :=
  ∀ n, P17156313275442288030.a n = A038513 n

end A038513

/-! ## A038513.P5266395300561719814

`filter[A046316(n+1), A354354(#)]`
-/

namespace A038513.P5266395300561719814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A038513.P5266395300561719814

namespace A038513

/-- `filter[A046316(n+1), A354354(#)]` -/
def P5266395300561719814.Spec : Prop :=
  ∀ n, P5266395300561719814.a n = A038513 n

end A038513

/-! ## A038513.P6788468848733938445

`filter[A307515(n+1), A340369(#)]`
-/

namespace A038513.P6788468848733938445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340369 (f1 j).toNat = 1) n)

end

end A038513.P6788468848733938445

namespace A038513

/-- `filter[A307515(n+1), A340369(#)]` -/
def P6788468848733938445.Spec : Prop :=
  ∀ n, P6788468848733938445.a n = A038513 n

end A038513

/-! ## A038513.P533360961055391223

`∩[A038509(n+1), A046316(n+1)]`
-/

namespace A038513.P533360961055391223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038513.P533360961055391223

namespace A038513

/-- `∩[A038509(n+1), A046316(n+1)]` -/
def P533360961055391223.Spec : Prop :=
  ∀ n, (P533360961055391223.a n : ℤ) = A038513 n

end A038513

/-! ## A038513.P3476333883693920666

`∩[A038509(n+1), A358774(n+1)]`
-/

namespace A038513.P3476333883693920666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038513.P3476333883693920666

namespace A038513

/-- `∩[A038509(n+1), A358774(n+1)]` -/
def P3476333883693920666.Spec : Prop :=
  ∀ n, (P3476333883693920666.a n : ℤ) = A038513 n

end A038513

/-! ## A038513.P9225367417605431806

`∩[A014612(n+1), A038509(n+1)]`
-/

namespace A038513.P9225367417605431806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038513.P9225367417605431806

namespace A038513

/-- `∩[A014612(n+1), A038509(n+1)]` -/
def P9225367417605431806.Spec : Prop :=
  ∀ n, (P9225367417605431806.a n : ℤ) = A038513 n

end A038513

/-! ## A038513.P17520793064945572785

`∩[A014612(n+1), A307515(n+1)]`
-/

namespace A038513.P17520793064945572785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038513.P17520793064945572785

namespace A038513

/-- `∩[A014612(n+1), A307515(n+1)]` -/
def P17520793064945572785.Spec : Prop :=
  ∀ n, (P17520793064945572785.a n : ℤ) = A038513 n

end A038513

/-! ## A038513.P15145647182560123885

`∩[A038509(n+1), A358763(n+1)]`
-/

namespace A038513.P15145647182560123885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038513.P15145647182560123885

namespace A038513

/-- `∩[A038509(n+1), A358763(n+1)]` -/
def P15145647182560123885.Spec : Prop :=
  ∀ n, (P15145647182560123885.a n : ℤ) = A038513 n

end A038513

/-!
# A038514: Primes corresponding to A046411.

The programs for A038514, there is no canonical definition to state claims against.
-/

/-! ## A038514.P16897339265310004642

`A037276(A046411(n+1))`
-/

namespace A038514.P16897339265310004642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A046411 (n + 1)).toNat

end

end A038514.P16897339265310004642

/-! ## A038514.P1614449107576708695

`A049201(A046411(n+1)%A046425(n))`
-/

namespace A038514.P1614449107576708695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049201 (Int.tmod (A046411 (n + 1)) (A046425 n)).toNat

end

end A038514.P1614449107576708695

/-! ## A038514.P10516452302170675470

`or(A049201(A046411(n+1)), A346619(n))`
-/

namespace A038514.P10516452302170675470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049201 (A046411 (n + 1)).toNat) (A346619 n)

end

end A038514.P10516452302170675470

/-! ## A038514.P9219079319787794202

`A049201(lcm(A046411(n+1), A309873(n+1)))`
-/

namespace A038514.P9219079319787794202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049201 (Int.lcm (A046411 (n + 1)) (A309873 (n + 1)))

end

end A038514.P9219079319787794202

/-! ## A038514.P18041163110333456939

`or(A049201(A046411(n+1)), A297086(n+1))`
-/

namespace A038514.P18041163110333456939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049201 (A046411 (n + 1)).toNat) (A297086 (n + 1))

end

end A038514.P18041163110333456939

/-! ## A038514.P10009960503735431440

`A049201(A046411(n+1))%A328663(n+1)`
-/

namespace A038514.P10009960503735431440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049201 (A046411 (n + 1)).toNat) (A328663 (n + 1))

end

end A038514.P10009960503735431440

/-! ## A038514.P6551989897170950920

`p?[A037276(A002808(n+1))%A072841(n+1)]`
-/

namespace A038514.P6551989897170950920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037276 (A002808 (n + 1)).toNat) (A072841 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038514.P6551989897170950920

/-! ## A038514.P17138215730061488347

`p?[A037276(A024619(n+1))%A038692(n+1)]`
-/

namespace A038514.P17138215730061488347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037276 (A024619 (n + 1)).toNat) (A038692 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038514.P17138215730061488347

/-!
# A038515: Number of self-avoiding walks on a tetrahedral (diamond) net, having 2n steps and forming a closed loop.

The programs for A038515, there is no canonical definition to state claims against.
-/

/-! ## A038515.P17066468328885485412

`A019554(n^n)-n`
-/

namespace A038515.P17066468328885485412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n ^ n) - (n : ℤ)

end

end A038515.P17066468328885485412

/-! ## A038515.P3506497519009397686

`A033677(n^n)-n`
-/

namespace A038515.P3506497519009397686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n ^ n) - (n : ℤ)

end

end A038515.P3506497519009397686

/-!
# A038516: Total number of different legs traversed by all loops of length 2n in A038515.

The programs for A038516, there is no canonical definition to state claims against.
-/

/-! ## A038516.P16315298933580301702

`floor(floor(A100669(A255537(n+2))/2)/2)`
-/

namespace A038516.P16315298933580301702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(A100669 (A255537 (n + 2)).toNat : ℚ) / 2⌋ : ℚ) / 2⌋

end

end A038516.P16315298933580301702

/-! ## A038516.P8334074873552822975

`A377410(A351293(n)*A360070(n+1))`
-/

namespace A038516.P8334074873552822975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377410 (A351293 n * A360070 (n + 1)).toNat

end

end A038516.P8334074873552822975

/-!
# A038518: Number of elements of GF(2^n) with trace 0 and subtrace 0.

The programs for A038518, the canonical program `A038518.P15128670911872601038` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038518 has offset 0).

The definition of A038518 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038518.P15128670911872601038

`2*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038518

/-- `2*a(n-2)+4*a(n-3)` -/
def P15128670911872601038.Spec : Prop :=
  ∀ n, (P15128670911872601038.a n : ℤ) = A038518 n

theorem P15128670911872601038.correct : P15128670911872601038.Spec := by
  intro n
  simp only [A038518]

end A038518

/-! ## A038518.P17839987425024435978

`ogf((x+x^2-x^3)/(1-2x^2-4x^3))`
-/

namespace A038518.P17839987425024435978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -1] [1, 0, -2, -4] n

end

end A038518.P17839987425024435978

namespace A038518

/-- `ogf((x+x^2-x^3)/(1-2x^2-4x^3))` -/
def P17839987425024435978.Spec : Prop :=
  ∀ n, P17839987425024435978.a n = A038518 n

end A038518

/-! ## A038518.P13737094054614194731

`A137171(A047522(n+1))`
-/

namespace A038518.P13737094054614194731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A047522 (n + 1)).toNat

end

end A038518.P13737094054614194731

namespace A038518

/-- `A137171(A047522(n+1))` -/
def P13737094054614194731.Spec : Prop :=
  ∀ n, P13737094054614194731.a n = A038518 n

end A038518

/-! ## A038518.P14389090638018409291

`A038519(n)-A009116(n)`
-/

namespace A038518.P14389090638018409291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 n - A009116 n

end

end A038518.P14389090638018409291

namespace A038518

/-- `A038519(n)-A009116(n)` -/
def P14389090638018409291.Spec : Prop :=
  ∀ n, P14389090638018409291.a n = A038518 n

end A038518

/-! ## A038518.P15522336062292365460

`A137171(A047451(n+1)+1)`
-/

namespace A038518.P15522336062292365460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A047451 (n + 1) + 1).toNat

end

end A038518.P15522336062292365460

namespace A038518

/-- `A137171(A047451(n+1)+1)` -/
def P15522336062292365460.Spec : Prop :=
  ∀ n, P15522336062292365460.a n = A038518 n

end A038518

/-! ## A038518.P7923346088739920096

`A038503(n)+A038505(n)-A038519(n)`
-/

namespace A038518.P7923346088739920096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n + (A038505 n - A038519 n)

end

end A038518.P7923346088739920096

namespace A038518

/-- `A038503(n)+A038505(n)-A038519(n)` -/
def P7923346088739920096.Spec : Prop :=
  ∀ n, P7923346088739920096.a n = A038518 n

end A038518

/-! ## A038518.P1764209015653769877

`A038505(n)-A009545(n)*A056594(n+1)`
-/

namespace A038518.P1764209015653769877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n - A009545 n * A056594 (n + 1)

end

end A038518.P1764209015653769877

namespace A038518

/-- `A038505(n)-A009545(n)*A056594(n+1)` -/
def P1764209015653769877.Spec : Prop :=
  ∀ n, P1764209015653769877.a n = A038518 n

end A038518

/-! ## A038518.P4478398629172369364

`A011782(n)-A038519(n)`
-/

namespace A038518.P4478398629172369364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A038519 n

end

end A038518.P4478398629172369364

namespace A038518

/-- `A011782(n)-A038519(n)` -/
def P4478398629172369364.Spec : Prop :=
  ∀ n, P4478398629172369364.a n = A038518 n

end A038518

/-! ## A038518.P701236580895336188

`A038519(n+1)-A038521(n)`
-/

namespace A038518.P701236580895336188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 (n + 1) - A038521 n

end

end A038518.P701236580895336188

namespace A038518

/-- `A038519(n+1)-A038521(n)` -/
def P701236580895336188.Spec : Prop :=
  ∀ n, P701236580895336188.a n = A038518 n

end A038518

/-! ## A038518.P13211718666753202563

`A038521(n+1)-A038520(n)`
-/

namespace A038518.P13211718666753202563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038521 (n + 1) - A038520 n

end

end A038518.P13211718666753202563

namespace A038518

/-- `A038521(n+1)-A038520(n)` -/
def P13211718666753202563.Spec : Prop :=
  ∀ n, P13211718666753202563.a n = A038518 n

end A038518

/-! ## A038518.P1358876406611519445

`A038519(n+1)+A038519(n)-A038520(n+1)`
-/

namespace A038518.P1358876406611519445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 (n + 1) + (A038519 n - A038520 (n + 1))

end

end A038518.P1358876406611519445

namespace A038518

/-- `A038519(n+1)+A038519(n)-A038520(n+1)` -/
def P1358876406611519445.Spec : Prop :=
  ∀ n, P1358876406611519445.a n = A038518 n

end A038518

/-! ## A038518.P6352930120545151802

`A000079(n)-(A038520(n+1)+A038520(n))`
-/

namespace A038518.P6352930120545151802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A038520 (n + 1) + A038520 n)

end

end A038518.P6352930120545151802

namespace A038518

/-- `A000079(n)-(A038520(n+1)+A038520(n))` -/
def P6352930120545151802.Spec : Prop :=
  ∀ n, P6352930120545151802.a n = A038518 n

end A038518

/-! ## A038518.P10563911234397858252

`A135092(n)%A173559(n)`
-/

namespace A038518.P10563911234397858252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135092 n) (A173559 n)

end

end A038518.P10563911234397858252

namespace A038518

/-- `A135092(n)%A173559(n)` -/
def P10563911234397858252.Spec : Prop :=
  ∀ n, P10563911234397858252.a n = A038518 n

end A038518

/-!
# A038519: Number of elements of GF(2^n) with trace 0 and subtrace 1.

The programs for A038519, the canonical program `A038519.P16051754133522929450` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038519 has offset 0).

The definition of A038519 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038519.P16051754133522929450

`2*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038519

/-- `2*a(n-2)+4*a(n-3)` -/
def P16051754133522929450.Spec : Prop :=
  ∀ n, (P16051754133522929450.a n : ℤ) = A038519 n

theorem P16051754133522929450.correct : P16051754133522929450.Spec := by
  intro n
  simp only [A038519]

end A038519

/-! ## A038519.P8325114332820198439

`ogf((-1+x^2+x^3)/(-1+2x^2+4x^3))`
-/

namespace A038519.P8325114332820198439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, -1] [1, 0, -2, -4] n

end

end A038519.P8325114332820198439

namespace A038519

/-- `ogf((-1+x^2+x^3)/(-1+2x^2+4x^3))` -/
def P8325114332820198439.Spec : Prop :=
  ∀ n, P8325114332820198439.a n = A038519 n

end A038519

/-! ## A038519.P13032209797323082787

`A137171(A047621(n+1))`
-/

namespace A038519.P13032209797323082787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A047621 (n + 1)).toNat

end

end A038519.P13032209797323082787

namespace A038519

/-- `A137171(A047621(n+1))` -/
def P13032209797323082787.Spec : Prop :=
  ∀ n, P13032209797323082787.a n = A038519 n

end A038519

/-! ## A038519.P16542077836079378706

`A038518(n)+A009116(n)`
-/

namespace A038519.P16542077836079378706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 n + A009116 n

end

end A038519.P16542077836079378706

namespace A038519

/-- `A038518(n)+A009116(n)` -/
def P16542077836079378706.Spec : Prop :=
  ∀ n, P16542077836079378706.a n = A038519 n

end A038519

/-! ## A038519.P17447502798460847485

`A137171(A047463(n+1)+1)`
-/

namespace A038519.P17447502798460847485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A047463 (n + 1) + 1).toNat

end

end A038519.P17447502798460847485

namespace A038519

/-- `A137171(A047463(n+1)+1)` -/
def P17447502798460847485.Spec : Prop :=
  ∀ n, P17447502798460847485.a n = A038519 n

end A038519

/-! ## A038519.P17847646685597404865

`A038503(n)+A038505(n)-A038518(n)`
-/

namespace A038519.P17847646685597404865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038503 n + (A038505 n - A038518 n)

end

end A038519.P17847646685597404865

namespace A038519

/-- `A038503(n)+A038505(n)-A038518(n)` -/
def P17847646685597404865.Spec : Prop :=
  ∀ n, P17847646685597404865.a n = A038519 n

end A038519

/-! ## A038519.P10763695505734446330

`A038505(n)+A009116(n)*A056594(n)`
-/

namespace A038519.P10763695505734446330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n + A009116 n * A056594 n

end

end A038519.P10763695505734446330

namespace A038519

/-- `A038505(n)+A009116(n)*A056594(n)` -/
def P10763695505734446330.Spec : Prop :=
  ∀ n, P10763695505734446330.a n = A038519 n

end A038519

/-! ## A038519.P9982721580655937905

`A038505(n)-A009116(n+1)*A219977(n)`
-/

namespace A038519.P9982721580655937905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n - A009116 (n + 1) * A219977 n

end

end A038519.P9982721580655937905

namespace A038519

/-- `A038505(n)-A009116(n+1)*A219977(n)` -/
def P9982721580655937905.Spec : Prop :=
  ∀ n, P9982721580655937905.a n = A038519 n

end A038519

/-! ## A038519.P17067920880506408383

`A038505(n)-A009545(n+1)*A219977(n+1)`
-/

namespace A038519.P17067920880506408383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038505 n - A009545 (n + 1) * A219977 (n + 1)

end

end A038519.P17067920880506408383

namespace A038519

/-- `A038505(n)-A009545(n+1)*A219977(n+1)` -/
def P17067920880506408383.Spec : Prop :=
  ∀ n, P17067920880506408383.a n = A038519 n

end A038519

/-! ## A038519.P3802384337654310391

`A011782(n)-A038518(n)`
-/

namespace A038519.P3802384337654310391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A038518 n

end

end A038519.P3802384337654310391

namespace A038519

/-- `A011782(n)-A038518(n)` -/
def P3802384337654310391.Spec : Prop :=
  ∀ n, P3802384337654310391.a n = A038519 n

end A038519

/-! ## A038519.P10365434909965311423

`A038518(n+1)-A038520(n)`
-/

namespace A038519.P10365434909965311423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 (n + 1) - A038520 n

end

end A038519.P10365434909965311423

namespace A038519

/-- `A038518(n+1)-A038520(n)` -/
def P10365434909965311423.Spec : Prop :=
  ∀ n, P10365434909965311423.a n = A038519 n

end A038519

/-! ## A038519.P16961540144617905858

`A038520(n+1)-A038521(n)`
-/

namespace A038519.P16961540144617905858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038520 (n + 1) - A038521 n

end

end A038519.P16961540144617905858

namespace A038519

/-- `A038520(n+1)-A038521(n)` -/
def P16961540144617905858.Spec : Prop :=
  ∀ n, P16961540144617905858.a n = A038519 n

end A038519

/-! ## A038519.P14148924503239767106

`A038521(n+1)+A108520(n)-A038521(n)`
-/

namespace A038519.P14148924503239767106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038521 (n + 1) + (A108520 n - A038521 n)

end

end A038519.P14148924503239767106

namespace A038519

/-- `A038521(n+1)+A108520(n)-A038521(n)` -/
def P14148924503239767106.Spec : Prop :=
  ∀ n, P14148924503239767106.a n = A038519 n

end A038519

/-! ## A038519.P11009085092592650546

`A038518(n+1)+A038518(n)-A038521(n+1)`
-/

namespace A038519.P11009085092592650546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 (n + 1) + (A038518 n - A038521 (n + 1))

end

end A038519.P11009085092592650546

namespace A038519

/-- `A038518(n+1)+A038518(n)-A038521(n+1)` -/
def P11009085092592650546.Spec : Prop :=
  ∀ n, P11009085092592650546.a n = A038519 n

end A038519

/-!
# A038520: Number of elements of GF(2^n) with trace 1 and subtrace 0.

The programs for A038520, the canonical program `A038520.P4836941786753717559` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038520 has offset 0).

The definition of A038520 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038520.P4836941786753717559

`2*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=0, a(3)=3`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038520

/-- `2*a(n-2)+4*a(n-3)` -/
def P4836941786753717559.Spec : Prop :=
  ∀ n, (P4836941786753717559.a n : ℤ) = A038520 n

theorem P4836941786753717559.correct : P4836941786753717559.Spec := by
  intro n
  simp only [A038520]

end A038520

/-! ## A038520.P11370999243487324751

`ogf((x+x^3)/(1-2x^2-4x^3))`
-/

namespace A038520.P11370999243487324751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 1] [1, 0, -2, -4] n

end

end A038520.P11370999243487324751

namespace A038520

/-- `ogf((x+x^3)/(1-2x^2-4x^3))` -/
def P11370999243487324751.Spec : Prop :=
  ∀ n, P11370999243487324751.a n = A038520 n

end A038520

/-! ## A038520.P8496060714662474805

`A137171(A047451(n+1))`
-/

namespace A038520.P8496060714662474805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A047451 (n + 1)).toNat

end

end A038520.P8496060714662474805

namespace A038520

/-- `A137171(A047451(n+1))` -/
def P8496060714662474805.Spec : Prop :=
  ∀ n, P8496060714662474805.a n = A038520 n

end A038520

/-! ## A038520.P12576945400926058019

`A137171(A047522(n+1)-1)`
-/

namespace A038520.P12576945400926058019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A047522 (n + 1) - 1).toNat

end

end A038520.P12576945400926058019

namespace A038520

/-- `A137171(A047522(n+1)-1)` -/
def P12576945400926058019.Spec : Prop :=
  ∀ n, P12576945400926058019.a n = A038520 n

end A038520

/-! ## A038520.P847629562382439259

`A000749(n)+A038504(n)-A038521(n)`
-/

namespace A038520.P847629562382439259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 n + (A038504 n - A038521 n)

end

end A038520.P847629562382439259

namespace A038520

/-- `A000749(n)+A038504(n)-A038521(n)` -/
def P847629562382439259.Spec : Prop :=
  ∀ n, P847629562382439259.a n = A038520 n

end A038520

/-! ## A038520.P7977558575424392605

`A038521(n)+A108520(n)-A078069(n)`
-/

namespace A038520.P7977558575424392605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038521 n + (A108520 n - A078069 n)

end

end A038520.P7977558575424392605

namespace A038520

/-- `A038521(n)+A108520(n)-A078069(n)` -/
def P7977558575424392605.Spec : Prop :=
  ∀ n, P7977558575424392605.a n = A038520 n

end A038520

/-! ## A038520.P13518646774092473600

`A038521(n)-(A009116(n+1)+A009116(n))`
-/

namespace A038520.P13518646774092473600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038521 n - (A009116 (n + 1) + A009116 n)

end

end A038520.P13518646774092473600

namespace A038520

/-- `A038521(n)-(A009116(n+1)+A009116(n))` -/
def P13518646774092473600.Spec : Prop :=
  ∀ n, P13518646774092473600.a n = A038520 n

end A038520

/-! ## A038520.P8438329431281098805

`A038521(n)-(A134142(n)+A108520(n+1))`
-/

namespace A038520.P8438329431281098805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038521 n - (A134142 n + A108520 (n + 1))

end

end A038520.P8438329431281098805

namespace A038520

/-- `A038521(n)-(A134142(n)+A108520(n+1))` -/
def P8438329431281098805.Spec : Prop :=
  ∀ n, P8438329431281098805.a n = A038520 n

end A038520

/-! ## A038520.P18264892092392504516

`A078069(n+1)+A038521(n)-A134813(n+1)`
-/

namespace A038520.P18264892092392504516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078069 (n + 1) + (A038521 n - A134813 (n + 1))

end

end A038520.P18264892092392504516

namespace A038520

/-- `A078069(n+1)+A038521(n)-A134813(n+1)` -/
def P18264892092392504516.Spec : Prop :=
  ∀ n, P18264892092392504516.a n = A038520 n

end A038520

/-! ## A038520.P1182120427682361925

`A131577(n)-A038521(n)`
-/

namespace A038520.P1182120427682361925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A038521 n

end

end A038520.P1182120427682361925

namespace A038520

/-- `A131577(n)-A038521(n)` -/
def P1182120427682361925.Spec : Prop :=
  ∀ n, P1182120427682361925.a n = A038520 n

end A038520

/-! ## A038520.P9783793683340735101

`Δ[A038518(n)]-A009116(n)`
-/

namespace A038520.P9783793683340735101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A009116 n

end

end A038520.P9783793683340735101

namespace A038520

/-- `Δ[A038518(n)]-A009116(n)` -/
def P9783793683340735101.Spec : Prop :=
  ∀ n, P9783793683340735101.a n = A038520 n

end A038520

/-! ## A038520.P13840371403207151054

`A038518(n+1)-A038519(n)`
-/

namespace A038520.P13840371403207151054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 (n + 1) - A038519 n

end

end A038520.P13840371403207151054

namespace A038520

/-- `A038518(n+1)-A038519(n)` -/
def P13840371403207151054.Spec : Prop :=
  ∀ n, P13840371403207151054.a n = A038520 n

end A038520

/-! ## A038520.P3182855875519840072

`A038521(n+1)-A038518(n)`
-/

namespace A038520.P3182855875519840072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038521 (n + 1) - A038518 n

end

end A038520.P3182855875519840072

namespace A038520

/-- `A038521(n+1)-A038518(n)` -/
def P3182855875519840072.Spec : Prop :=
  ∀ n, P3182855875519840072.a n = A038520 n

end A038520

/-! ## A038520.P11687290195961429171

`Δ[A038519(n)]-A009116(n+1)`
-/

namespace A038520.P11687290195961429171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A009116 (n + 1)

end

end A038520.P11687290195961429171

namespace A038520

/-- `Δ[A038519(n)]-A009116(n+1)` -/
def P11687290195961429171.Spec : Prop :=
  ∀ n, P11687290195961429171.a n = A038520 n

end A038520

/-! ## A038520.P7381246716004268279

`A137776(2*n+1)-A038521(n)`
-/

namespace A038520.P7381246716004268279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137776 (2 * n + 1) - A038521 n

end

end A038520.P7381246716004268279

namespace A038520

/-- `A137776(2*n+1)-A038521(n)` -/
def P7381246716004268279.Spec : Prop :=
  ∀ n, P7381246716004268279.a n = A038520 n

end A038520

/-! ## A038520.P2730467132087975318

`Δ[A038519(n)-A009116(n)]-A009116(n)`
-/

namespace A038520.P2730467132087975318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 n - A009116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A009116 n

end

end A038520.P2730467132087975318

namespace A038520

/-- `Δ[A038519(n)-A009116(n)]-A009116(n)` -/
def P2730467132087975318.Spec : Prop :=
  ∀ n, P2730467132087975318.a n = A038520 n

end A038520

/-! ## A038520.P10354856735976099390

`A038521(n+1)+A038521(n)-A038519(n+1)`
-/

namespace A038520.P10354856735976099390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038521 (n + 1) + (A038521 n - A038519 (n + 1))

end

end A038520.P10354856735976099390

namespace A038520

/-- `A038521(n+1)+A038521(n)-A038519(n+1)` -/
def P10354856735976099390.Spec : Prop :=
  ∀ n, P10354856735976099390.a n = A038520 n

end A038520

/-! ## A038520.P15535150640427498013

`A000079(n)-(A038519(n+1)+A038519(n))`
-/

namespace A038520.P15535150640427498013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A038519 (n + 1) + A038519 n)

end

end A038520.P15535150640427498013

namespace A038520

/-- `A000079(n)-(A038519(n+1)+A038519(n))` -/
def P15535150640427498013.Spec : Prop :=
  ∀ n, P15535150640427498013.a n = A038520 n

end A038520

/-! ## A038520.P15080481614459819422

`A134136(n+1)-(A134812(n+1)+A038518(n))`
-/

namespace A038520.P15080481614459819422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134136 (n + 1) - (A134812 (n + 1) + A038518 n)

end

end A038520.P15080481614459819422

namespace A038520

/-- `A134136(n+1)-(A134812(n+1)+A038518(n))` -/
def P15080481614459819422.Spec : Prop :=
  ∀ n, P15080481614459819422.a n = A038520 n

end A038520

/-!
# A038521: Number of elements of GF(2^n) with trace 1 and subtrace 1.

The programs for A038521, the canonical program `A038521.P3204574119109807193` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038521 has offset 0).

The definition of A038521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038521.P3204574119109807193

`2*a(n-2)+4*a(n-3)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038521

/-- `2*a(n-2)+4*a(n-3)` -/
def P3204574119109807193.Spec : Prop :=
  ∀ n, (P3204574119109807193.a n : ℤ) = A038521 n

theorem P3204574119109807193.correct : P3204574119109807193.Spec := by
  intro n
  simp only [A038521]

end A038521

/-! ## A038521.P11014813612723279294

`ogf((2x^2+x^3)/(1-2x^2-4x^3))`
-/

namespace A038521.P11014813612723279294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 2, 1] [1, 0, -2, -4] n

end

end A038521.P11014813612723279294

namespace A038521

/-- `ogf((2x^2+x^3)/(1-2x^2-4x^3))` -/
def P11014813612723279294.Spec : Prop :=
  ∀ n, P11014813612723279294.a n = A038521 n

end A038521

/-! ## A038521.P10367503696360914209

`A137171(A047463(n+1))`
-/

namespace A038521.P10367503696360914209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A047463 (n + 1)).toNat

end

end A038521.P10367503696360914209

namespace A038521

/-- `A137171(A047463(n+1))` -/
def P10367503696360914209.Spec : Prop :=
  ∀ n, P10367503696360914209.a n = A038521 n

end A038521

/-! ## A038521.P5576787971152490236

`A137171(A047621(n+1)-1)`
-/

namespace A038521.P5576787971152490236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137171 (A047621 (n + 1) - 1).toNat

end

end A038521.P5576787971152490236

namespace A038521

/-- `A137171(A047621(n+1)-1)` -/
def P5576787971152490236.Spec : Prop :=
  ∀ n, P5576787971152490236.a n = A038521 n

end A038521

/-! ## A038521.P3417222780126051850

`A000749(n)+A038504(n)-A038520(n)`
-/

namespace A038521.P3417222780126051850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000749 n + (A038504 n - A038520 n)

end

end A038521.P3417222780126051850

namespace A038521

/-- `A000749(n)+A038504(n)-A038520(n)` -/
def P3417222780126051850.Spec : Prop :=
  ∀ n, P3417222780126051850.a n = A038521 n

end A038521

/-! ## A038521.P10374848686726522420

`A009116(n+1)+A038520(n)+A009116(n)`
-/

namespace A038521.P10374848686726522420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 (n + 1) + (A038520 n + A009116 n)

end

end A038521.P10374848686726522420

namespace A038521

/-- `A009116(n+1)+A038520(n)+A009116(n)` -/
def P10374848686726522420.Spec : Prop :=
  ∀ n, P10374848686726522420.a n = A038521 n

end A038521

/-! ## A038521.P7285072531612091809

`A131577(n)-A038520(n)`
-/

namespace A038521.P7285072531612091809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n - A038520 n

end

end A038521.P7285072531612091809

namespace A038521

/-- `A131577(n)-A038520(n)` -/
def P7285072531612091809.Spec : Prop :=
  ∀ n, P7285072531612091809.a n = A038521 n

end A038521

/-! ## A038521.P3566358355799901245

`A134136(n)-A134812(n)`
-/

namespace A038521.P3566358355799901245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134136 n - A134812 n

end

end A038521.P3566358355799901245

namespace A038521

/-- `A134136(n)-A134812(n)` -/
def P3566358355799901245.Spec : Prop :=
  ∀ n, P3566358355799901245.a n = A038521 n

end A038521

/-! ## A038521.P8454026598238148989

`A009116(n)+Δ[A038519(n)]`
-/

namespace A038521.P8454026598238148989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 n + (f1 (n + 1) - f1 n)

end

end A038521.P8454026598238148989

namespace A038521

/-- `A009116(n)+Δ[A038519(n)]` -/
def P8454026598238148989.Spec : Prop :=
  ∀ n, P8454026598238148989.a n = A038521 n

end A038521

/-! ## A038521.P5278346702448031645

`A038519(n+1)-A038518(n)`
-/

namespace A038521.P5278346702448031645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038519 (n + 1) - A038518 n

end

end A038521.P5278346702448031645

namespace A038521

/-- `A038519(n+1)-A038518(n)` -/
def P5278346702448031645.Spec : Prop :=
  ∀ n, P5278346702448031645.a n = A038521 n

end A038521

/-! ## A038521.P8728806171111793097

`A038520(n+1)-A038519(n)`
-/

namespace A038521.P8728806171111793097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038520 (n + 1) - A038519 n

end

end A038521.P8728806171111793097

namespace A038521

/-- `A038520(n+1)-A038519(n)` -/
def P8728806171111793097.Spec : Prop :=
  ∀ n, P8728806171111793097.a n = A038521 n

end A038521

/-! ## A038521.P17898832195723244342

`A009116(n+1)+Δ[A038518(n)]`
-/

namespace A038521.P17898832195723244342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009116 (n + 1) + (f1 (n + 1) - f1 n)

end

end A038521.P17898832195723244342

namespace A038521

/-- `A009116(n+1)+Δ[A038518(n)]` -/
def P17898832195723244342.Spec : Prop :=
  ∀ n, P17898832195723244342.a n = A038521 n

end A038521

/-! ## A038521.P16824484201050183349

`A137776(2*n+1)-A038520(n)`
-/

namespace A038521.P16824484201050183349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137776 (2 * n + 1) - A038520 n

end

end A038521.P16824484201050183349

namespace A038521

/-- `A137776(2*n+1)-A038520(n)` -/
def P16824484201050183349.Spec : Prop :=
  ∀ n, P16824484201050183349.a n = A038521 n

end A038521

/-! ## A038521.P14622443730790571778

`A176739(n)-(A134812(n+1)+A134812(n))`
-/

namespace A038521.P14622443730790571778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176739 n - (A134812 (n + 1) + A134812 n)

end

end A038521.P14622443730790571778

namespace A038521

/-- `A176739(n)-(A134812(n+1)+A134812(n))` -/
def P14622443730790571778.Spec : Prop :=
  ∀ n, P14622443730790571778.a n = A038521 n

end A038521

/-! ## A038521.P4239390948958348937

`A038520(n+1)+A038520(n)-A038518(n+1)`
-/

namespace A038521.P4239390948958348937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038520 (n + 1) + (A038520 n - A038518 (n + 1))

end

end A038521.P4239390948958348937

namespace A038521

/-- `A038520(n+1)+A038520(n)-A038518(n+1)` -/
def P4239390948958348937.Spec : Prop :=
  ∀ n, P4239390948958348937.a n = A038521 n

end A038521

/-!
# A038523: A minimal sequence of weights with distinct weighings, with limit of two weights per pan.

The programs for A038523, there is no canonical definition to state claims against.
-/

/-! ## A038523.P8436848061821058904

`record[A128885(n)-A276142(n+1)]`
-/

namespace A038523.P8436848061821058904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128885 n - A276142 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038523.P8436848061821058904

/-! ## A038523.P3288294762999106934

`A306229(A123888(n)+A003056(n))`
-/

namespace A038523.P3288294762999106934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306229 (A123888 n + A003056 n).toNat

end

end A038523.P3288294762999106934

/-! ## A038523.P569342961211155587

`A038567(A000244(n)*A014395(n))`
-/

namespace A038523.P569342961211155587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A000244 n * A014395 n).toNat

end

end A038523.P569342961211155587

/-!
# A038526: Concatenation of prime factors of n-th Fibonacci number.

The programs for A038526, there is no canonical definition to state claims against.
-/

/-! ## A038526.P7872170472490728574

`A037276(A000045(n+3))`
-/

namespace A038526.P7872170472490728574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (A000045 (n + 3)).toNat

end

end A038526.P7872170472490728574

/-! ## A038526.P3277868976351153219

`A037276(Δ[round(ϕ*a(n-1))])` with `a(0)=3`
-/

namespace A038526.P3277868976351153219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (f1 (n + 1) - f1 n).toNat

end

end A038526.P3277868976351153219

/-! ## A038526.P5574965553061407080

`A037276(record[round(ϕ*a(n-1))])` with `a(0)=2, a(1)=1`
-/

namespace A038526.P5574965553061407080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038526.P5574965553061407080

/-! ## A038526.P9132265912365656358

`A037276(record[a(n-1)+a(n-2)])` with `a(0)=2, a(1)=0, a(2)=1`
-/

namespace A038526.P9132265912365656358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A038526.P9132265912365656358

/-! ## A038526.P16830543743202156497

`A037276(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=2, a(1)=2`
-/

namespace A038526.P16830543743202156497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037276 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A038526.P16830543743202156497

/-!
# A038527: Same as A038528, except you may rearrange the digits before applying f; sequence gives n such that f(f(f(...(n)))) = 0 or empty.

The programs for A038527, there is no canonical definition to state claims against.
-/

/-! ## A038527.P5656164954142343118

`∩[A324705(n+1), A007089(n)]`
-/

namespace A038527.P5656164954142343118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038527.P5656164954142343118

/-! ## A038527.P6007477744896841146

`∩[A327476(n+1), A007089(n)]`
-/

namespace A038527.P6007477744896841146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038527.P6007477744896841146

/-! ## A038527.P8377306138575898378

`∩[A324705(n+1), A344939(n)]`
-/

namespace A038527.P8377306138575898378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324705 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038527.P8377306138575898378

/-! ## A038527.P13735149620316674734

`∩[A327476(n+1), A344939(n)]`
-/

namespace A038527.P13735149620316674734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344939 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038527.P13735149620316674734

/-!
# A038528: If n has decimal expansion abc...d, with k digits, let f(n) be obtained by deleting all k's from abc...d, closing up and deleting initial 0's; sequence gives n such that f(f(f(...(n)))) = 0 or empty.

The programs for A038528, there is no canonical definition to state claims against.
-/

/-! ## A038528.P4503567049262399067

`A171795(eq[∑{e}[n+1, #], A117910(n+1)])`
-/

namespace A038528.P4503567049262399067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171795 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A038528.P4503567049262399067

/-! ## A038528.P16713574738939161554

`A171795(∑[A051118(n)+1])`
-/

namespace A038528.P16713574738939161554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051118 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171795 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038528.P16713574738939161554

/-!
# A038529: n-th prime - n-th composite.

The programs for A038529, the canonical program `A038529.P12826483427186246447` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038529 has offset 1).

The definition of A038529 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038529.P12826483427186246447

`A000040(n+1)-A002808(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038529

/-- `A000040(n+1)-A002808(n+1)` -/
def P12826483427186246447.Spec : Prop :=
  ∀ n, P12826483427186246447.a n = A038529 (n + 1)

theorem P12826483427186246447.correct : P12826483427186246447.Spec := by
  intro n
  simp only [A038529, Nat.add_sub_cancel]

end A038529

/-! ## A038529.P4843955485735566035

`Δ[A007504(n)-A053767(n)]`
-/

namespace A038529.P4843955485735566035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n - A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038529.P4843955485735566035

namespace A038529

/-- `Δ[A007504(n)-A053767(n)]` -/
def P4843955485735566035.Spec : Prop :=
  ∀ n, P4843955485735566035.a n = A038529 (n + 1)

end A038529

/-! ## A038529.P4782468316447749772

`A075526(n)+A014238(n+1)`
-/

namespace A038529.P4782468316447749772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n + A014238 (n + 1)

end

end A038529.P4782468316447749772

namespace A038529

/-- `A075526(n)+A014238(n+1)` -/
def P4782468316447749772.Spec : Prop :=
  ∀ n, P4782468316447749772.a n = A038529 (n + 1)

end A038529

/-! ## A038529.P10852410425678935621

`Δ[A007504(n)]-comp[A351078(n)]`
-/

namespace A038529.P10852410425678935621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

end

end A038529.P10852410425678935621

namespace A038529

/-- `Δ[A007504(n)]-comp[A351078(n)]` -/
def P10852410425678935621.Spec : Prop :=
  ∀ n, P10852410425678935621.a n = A038529 (n + 1)

end A038529

/-! ## A038529.P11184476204699528682

`Δ[A007504(n)]-A002808(n+1)`
-/

namespace A038529.P11184476204699528682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002808 (n + 1)

end

end A038529.P11184476204699528682

namespace A038529

/-- `Δ[A007504(n)]-A002808(n+1)` -/
def P11184476204699528682.Spec : Prop :=
  ∀ n, P11184476204699528682.a n = A038529 (n + 1)

end A038529

/-! ## A038529.P4358004172280933037

`A000040(n+1)-Δ[A053767(n)]`
-/

namespace A038529.P4358004172280933037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (f1 (n + 1) - f1 n)

end

end A038529.P4358004172280933037

namespace A038529

/-- `A000040(n+1)-Δ[A053767(n)]` -/
def P4358004172280933037.Spec : Prop :=
  ∀ n, P4358004172280933037.a n = A038529 (n + 1)

end A038529

/-! ## A038529.P7913587752011153284

`Δ[A007504(n)]-A018252(n+2)`
-/

namespace A038529.P7913587752011153284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A018252 (n + 2)

end

end A038529.P7913587752011153284

namespace A038529

/-- `Δ[A007504(n)]-A018252(n+2)` -/
def P7913587752011153284.Spec : Prop :=
  ∀ n, P7913587752011153284.a n = A038529 (n + 1)

end A038529

/-! ## A038529.P10610047652954852637

`Δ[A007504(n)]-A141468(n+3)`
-/

namespace A038529.P10610047652954852637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A141468 (n + 3)

end

end A038529.P10610047652954852637

namespace A038529

/-- `Δ[A007504(n)]-A141468(n+3)` -/
def P10610047652954852637.Spec : Prop :=
  ∀ n, P10610047652954852637.a n = A038529 (n + 1)

end A038529

/-! ## A038529.P15335752991382202174

`Δ[A007504(n)]-lt[2, A077462(n)]`
-/

namespace A038529.P15335752991382202174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ)

end

end A038529.P15335752991382202174

namespace A038529

/-- `Δ[A007504(n)]-lt[2, A077462(n)]` -/
def P15335752991382202174.Spec : Prop :=
  ∀ n, P15335752991382202174.a n = A038529 (n + 1)

end A038529

/-! ## A038529.P481172150563096852

`A006093(n+1)-A072668(n+1)`
-/

namespace A038529.P481172150563096852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A072668 (n + 1)

end

end A038529.P481172150563096852

namespace A038529

/-- `A006093(n+1)-A072668(n+1)` -/
def P481172150563096852.Spec : Prop :=
  ∀ n, P481172150563096852.a n = A038529 (n + 1)

theorem P481172150563096852.correct : P481172150563096852.Spec := by
  intro n
  simp only [A038529, Nat.add_sub_cancel, A038529.P481172150563096852.a, A038529.P12826483427186246447.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A006093, A006093.P2906174024863549003.a, A072668, A072668.P5648318357023435289.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038529

/-! ## A038529.P6820123281847528680

`A014237(n+1)-A065310(n+1)`
-/

namespace A038529.P6820123281847528680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (n + 1) - A065310 (n + 1)

end

end A038529.P6820123281847528680

namespace A038529

/-- `A014237(n+1)-A065310(n+1)` -/
def P6820123281847528680.Spec : Prop :=
  ∀ n, P6820123281847528680.a n = A038529 (n + 1)

end A038529

/-! ## A038529.P1607381148014944352

`A014689(n+1)-A073169(n+1)`
-/

namespace A038529.P1607381148014944352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014689 (n + 1) - A073169 (n + 1)

end

end A038529.P1607381148014944352

namespace A038529

/-- `A014689(n+1)-A073169(n+1)` -/
def P1607381148014944352.Spec : Prop :=
  ∀ n, P1607381148014944352.a n = A038529 (n + 1)

theorem P1607381148014944352.correct : P1607381148014944352.Spec := by
  intro n
  simp only [A038529, Nat.add_sub_cancel, A038529.P1607381148014944352.a, A038529.P12826483427186246447.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A014689, A014689.P6286543075765329050.a, A073169, A073169.P14738260624206914448.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038529

/-! ## A038529.P10873878757844142546

`A008864(n+1)-A079696(n+1)`
-/

namespace A038529.P10873878757844142546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A079696 (n + 1)

end

end A038529.P10873878757844142546

namespace A038529

/-- `A008864(n+1)-A079696(n+1)` -/
def P10873878757844142546.Spec : Prop :=
  ∀ n, P10873878757844142546.a n = A038529 (n + 1)

theorem P10873878757844142546.correct : P10873878757844142546.Spec := by
  intro n
  simp only [A038529, Nat.add_sub_cancel, A038529.P10873878757844142546.a, A038529.P12826483427186246447.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A008864, A008864.P9177617808325052279.a, A079696, A079696.P2621453534582977077.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038529

/-! ## A038529.P4329634297201968711

`A100484(n+1)-A064799(n+1)`
-/

namespace A038529.P4329634297201968711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) - A064799 (n + 1)

end

end A038529.P4329634297201968711

namespace A038529

/-- `A100484(n+1)-A064799(n+1)` -/
def P4329634297201968711.Spec : Prop :=
  ∀ n, P4329634297201968711.a n = A038529 (n + 1)

theorem P4329634297201968711.correct : P4329634297201968711.Spec := by
  intro n
  simp only [A038529, Nat.add_sub_cancel, A038529.P4329634297201968711.a, A038529.P12826483427186246447.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A064799, A064799.P13450618005534133469.a, A100484, A100484.P9678625670825099636.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038529

/-! ## A038529.P12977735425122427879

`A014688(n+1)-A161537(n+1)`
-/

namespace A038529.P12977735425122427879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A161537 (n + 1)

end

end A038529.P12977735425122427879

namespace A038529

/-- `A014688(n+1)-A161537(n+1)` -/
def P12977735425122427879.Spec : Prop :=
  ∀ n, P12977735425122427879.a n = A038529 (n + 1)

end A038529

/-! ## A038529.P16396734434218892891

`A168563(n+1)-A031131(n+1)`
-/

namespace A038529.P16396734434218892891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168563 (n + 1) - A031131 (n + 1)

end

end A038529.P16396734434218892891

namespace A038529

/-- `A168563(n+1)-A031131(n+1)` -/
def P16396734434218892891.Spec : Prop :=
  ∀ n, P16396734434218892891.a n = A038529 (n + 1)

end A038529

/-! ## A038529.P17659634175009374160

`A086801(n+1)-A164028(n+1)`
-/

namespace A038529.P17659634175009374160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (n + 1) - A164028 (n + 1)

end

end A038529.P17659634175009374160

namespace A038529

/-- `A086801(n+1)-A164028(n+1)` -/
def P17659634175009374160.Spec : Prop :=
  ∀ n, P17659634175009374160.a n = A038529 (n + 1)

theorem P17659634175009374160.correct : P17659634175009374160.Spec := by
  intro n
  simp only [A038529, Nat.add_sub_cancel, A038529.P17659634175009374160.a, A038529.P12826483427186246447.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A086801, A086801.P17699144881820784956.a, A164028, A164028.P16722215845011041546.a, A000005, A000005.P16091521709108585461.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038529

/-! ## A038529.P16810914293303388599

`A134591(n+1)-A129189(n+1)`
-/

namespace A038529.P16810914293303388599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134591 (n + 1) - A129189 (n + 1)

end

end A038529.P16810914293303388599

namespace A038529

/-- `A134591(n+1)-A129189(n+1)` -/
def P16810914293303388599.Spec : Prop :=
  ∀ n, P16810914293303388599.a n = A038529 (n + 1)

theorem P16810914293303388599.correct : P16810914293303388599.Spec := by
  intro n
  simp only [A038529, Nat.add_sub_cancel, A038529.P16810914293303388599.a, A038529.P12826483427186246447.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A129189, A129189.P3252235154664414244.a, A134591, A134591.P13784663667261059065.a, A000005, A000005.P16091521709108585461.a, A014689, A014689.P6286543075765329050.a, A064799, A064799.P13450618005534133469.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038529

/-! ## A038529.P10133123255703715721

`A161671(n+1)-A161811(n+1)`
-/

namespace A038529.P10133123255703715721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161671 (n + 1) - A161811 (n + 1)

end

end A038529.P10133123255703715721

namespace A038529

/-- `A161671(n+1)-A161811(n+1)` -/
def P10133123255703715721.Spec : Prop :=
  ∀ n, P10133123255703715721.a n = A038529 (n + 1)

end A038529

/-! ## A038529.P6802836105581951507

`A000040(n+1)-A018252(n+2)`
-/

namespace A038529.P6802836105581951507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A018252 (n + 2)

end

end A038529.P6802836105581951507

namespace A038529

/-- `A000040(n+1)-A018252(n+2)` -/
def P6802836105581951507.Spec : Prop :=
  ∀ n, P6802836105581951507.a n = A038529 (n + 1)

end A038529

/-!
# A038531: Primes that are concatenations of k-th prime and k-th composite.

The programs for A038531, there is no canonical definition to state claims against.
-/

/-! ## A038531.P13758931989909137847

`p?[A038530(n+1)]`
-/

namespace A038531.P13758931989909137847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038531.P13758931989909137847

/-! ## A038531.P11158718957079219628

`p?[record[A038530(A117910(n))]]`
-/

namespace A038531.P11158718957079219628
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038530 (A117910 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038531.P11158718957079219628

/-! ## A038531.P16057373511962923383

`p?[record[A038530(A126759(n))]]`
-/

namespace A038531.P16057373511962923383
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038530 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038531.P16057373511962923383

/-! ## A038531.P368954981782748000

`p?[record[A038530(A133310(n))]]`
-/

namespace A038531.P368954981782748000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038530 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038531.P368954981782748000

/-! ## A038531.P8585662722579395816

`p?[A253910(n+1)+A018252(n+2)-A018252(n+1)]`
-/

namespace A038531.P8585662722579395816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253910 (n + 1) + (A018252 (n + 2) - A018252 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A038531.P8585662722579395816

/-!
# A038533: Denominator of coefficients of both EllipticK/Pi and EllipticE/Pi.

The programs for A038533, there is no canonical definition to state claims against.
-/

/-! ## A038533.P2357167806268860252

`4^n*a(floor(n/2))` with `a(0)=2`
-/

namespace A038533.P2357167806268860252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  4 ^ n * a ⌊(n : ℚ) / 2⌋.toNat

end

end A038533.P2357167806268860252

/-! ## A038533.P15765288250408860170

`2*∏[gcd(2*n, 2^n)²]`
-/

namespace A038533.P15765288250408860170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * n) (2 ^ n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A038533.P15765288250408860170

/-! ## A038533.P12027700619983822142

`2*4^∑[∑{e}[xor(n, -n), #]]`
-/

namespace A038533.P12027700619983822142
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * 4 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038533.P12027700619983822142

/-! ## A038533.P2534180577211081924

`2*∏[4^∑{e}[xor(n, -n), #]]`
-/

namespace A038533.P2534180577211081924
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A038533.P2534180577211081924

/-! ## A038533.P3717358924707088121

`and(n, -n)²*4*a(n-1)` with `a(0)=2`
-/

namespace A038533.P3717358924707088121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  Int.land (n : ℤ) (-(n : ℤ)) ^ 2 * (4 * a (n - 1))

end

end A038533.P3717358924707088121

/-! ## A038533.P11951462928852577936

`4*a(n-1)*gcd(n², a(n-1))` with `a(0)=2`
-/

namespace A038533.P11951462928852577936
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) * Nat.gcd (n ^ 2) (a (n - 1))

end

end A038533.P11951462928852577936

/-! ## A038533.P18046197606309487021

`2*A056982(n)`
-/

namespace A038533.P18046197606309487021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A056982 n

end

end A038533.P18046197606309487021

/-! ## A038533.P4077060962824473935

`2^A178207(n)`
-/

namespace A038533.P4077060962824473935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A178207 n : ℤ)

end

end A038533.P4077060962824473935

/-! ## A038533.P6029247200091469377

`2*A046161(n)²`
-/

namespace A038533.P6029247200091469377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046161 n ^ 2

end

end A038533.P6029247200091469377

/-! ## A038533.P2361207707556967915

`A101926(n)²/2`
-/

namespace A038533.P2361207707556967915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A101926 n ^ 2 : ℚ) / 2

end

end A038533.P2361207707556967915

/-!
# A038534: Numerators of coefficients of EllipticK/Pi.

The programs for A038534, the canonical program `A038534.P10789016678078004537` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038534 has offset 0).

The definition of A038534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038534.P10789016678078004537

`A001790(n)²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038534

/-- `A001790(n)²` -/
def P10789016678078004537.Spec : Prop :=
  ∀ n, P10789016678078004537.a n = A038534 n

theorem P10789016678078004537.correct : P10789016678078004537.Spec := by
  intro n
  simp only [A038534]

end A038534

/-! ## A038534.P686164925905836649

`(A056040(2*n)/A060632(2*n))²`
-/

namespace A038534.P686164925905836649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A056040 (2 * n) : ℚ) / (A060632 (2 * n) : ℚ)) ^ 2

end

end A038534.P686164925905836649

namespace A038534

/-- `(A056040(2*n)/A060632(2*n))²` -/
def P686164925905836649.Spec : Prop :=
  ∀ n, P686164925905836649.a n = (A038534 n : ℚ)

end A038534

/-! ## A038534.P9835797596140091076

`A180955(∑[n])²`
-/

namespace A038534.P9835797596140091076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180955 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A038534.P9835797596140091076

namespace A038534

/-- `A180955(∑[n])²` -/
def P9835797596140091076.Spec : Prop :=
  ∀ n, P9835797596140091076.a n = A038534 n

end A038534

/-! ## A038534.P15340338860583084788

`A273167(∑[n])²`
-/

namespace A038534.P15340338860583084788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273167 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A038534.P15340338860583084788

namespace A038534

/-- `A273167(∑[n])²` -/
def P15340338860583084788.Spec : Prop :=
  ∀ n, P15340338860583084788.a n = A038534 n

end A038534

/-! ## A038534.P13973771894050906843

`A273169(∑[n])²`
-/

namespace A038534.P13973771894050906843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273169 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A038534.P13973771894050906843

namespace A038534

/-- `A273169(∑[n])²` -/
def P13973771894050906843.Spec : Prop :=
  ∀ n, P13973771894050906843.a n = A038534 n

end A038534

/-! ## A038534.P18148887269026899320

`A036069(2*n)²`
-/

namespace A038534.P18148887269026899320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036069 (2 * n) ^ 2

end

end A038534.P18148887269026899320

namespace A038534

/-- `A036069(2*n)²` -/
def P18148887269026899320.Spec : Prop :=
  ∀ n, P18148887269026899320.a n = A038534 n

end A038534

/-! ## A038534.P1393142204697114641

`A163590(2*n)²`
-/

namespace A038534.P1393142204697114641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163590 (2 * n) ^ 2

end

end A038534.P1393142204697114641

namespace A038534

/-- `A163590(2*n)²` -/
def P1393142204697114641.Spec : Prop :=
  ∀ n, P1393142204697114641.a n = A038534 n

end A038534

/-! ## A038534.P2289160328354690480

`A380910(2*n)²`
-/

namespace A038534.P2289160328354690480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380910 (2 * n) ^ 2

end

end A038534.P2289160328354690480

namespace A038534

/-- `A380910(2*n)²` -/
def P2289160328354690480.Spec : Prop :=
  ∀ n, P2289160328354690480.a n = A038534 n

end A038534

/-! ## A038534.P15919214989005438969

`A273171(C(n, 2))²`
-/

namespace A038534.P15919214989005438969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273171 (Nat.choose n 2) ^ 2

end

end A038534.P15919214989005438969

namespace A038534

/-- `A273171(C(n, 2))²` -/
def P15919214989005438969.Spec : Prop :=
  ∀ n, P15919214989005438969.a n = A038534 n

end A038534

/-! ## A038534.P2122380171858191116

`A100258(∑[n]+n)²`
-/

namespace A038534.P2122380171858191116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100258 (∑ j ∈ Finset.range (n + 1), f1 j + n) ^ 2

end

end A038534.P2122380171858191116

namespace A038534

/-- `A100258(∑[n]+n)²` -/
def P2122380171858191116.Spec : Prop :=
  ∀ n, P2122380171858191116.a n = A038534 n

end A038534

/-!
# A038535: Numerators of coefficients of EllipticE/Pi.

The programs for A038535, there is no canonical definition to state claims against.
-/

/-! ## A038535.P17416529412071523868

`(1-2*n)*A002596(n)²`
-/

namespace A038535.P17416529412071523868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) * A002596 n ^ 2

end

end A038535.P17416529412071523868

/-! ## A038535.P3226009617812830755

`A001790(n)/A001316(n)*A002420(n)`
-/

namespace A038535.P3226009617812830755
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (A001316 n : ℚ) * (A002420 n : ℚ)

end

end A038535.P3226009617812830755

/-! ## A038535.P13471417736592021254

`A001790(n)/A165747(n)*A001790(n)`
-/

namespace A038535.P13471417736592021254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n : ℚ) / (A165747 n : ℚ) * (A001790 n : ℚ)

end

end A038535.P13471417736592021254

/-! ## A038535.P943530488751125197

`A000265(n+1)*A002596(n+1)*A002596(n)`
-/

namespace A038535.P943530488751125197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A002596 (n + 1) * A002596 n

end

end A038535.P943530488751125197

/-! ## A038535.P10287500023911145499

`A001790(n)²/A165747(n)`
-/

namespace A038535.P10287500023911145499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n ^ 2 : ℚ) / (A165747 n : ℚ)

end

end A038535.P10287500023911145499

/-! ## A038535.P14047681649957955484

`A038534(n)/(1-A005843(n))`
-/

namespace A038535.P14047681649957955484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038534 n : ℚ) / (1 - A005843 n : ℚ)

end

end A038535.P14047681649957955484

/-! ## A038535.P15442333657755150587

`A038534(n)/A024000(2*n)`
-/

namespace A038535.P15442333657755150587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038534 n : ℚ) / (A024000 (2 * n) : ℚ)

end

end A038535.P15442333657755150587

/-! ## A038535.P14955959874654566557

`A038534(n)/(A024000(n)-n)`
-/

namespace A038535.P14955959874654566557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038534 n : ℚ) / (A024000 n - (n : ℤ) : ℚ)

end

end A038535.P14955959874654566557

/-! ## A038535.P3240516341201926002

`A001790(n)²/(2-A005408(n))`
-/

namespace A038535.P3240516341201926002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001790 n ^ 2 : ℚ) / (2 - A005408 n : ℚ)

end

end A038535.P3240516341201926002

/-!
# A038536: Odd values of k > 1 for which there are k-hyperperfect numbers.

The programs for A038536, there is no canonical definition to state claims against.
-/

/-! ## A038536.P72949086849678293

`(A034938(n+1)-4)/3`
-/

namespace A038536.P72949086849678293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034938 (n + 1) - 4 : ℚ) / 3

end

end A038536.P72949086849678293

/-! ## A038536.P6017601555724334154

`floor(2*A034937(n+1)/3)`
-/

namespace A038536.P6017601555724334154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((A034937 (n + 1) : ℚ) / 3)⌋

end

end A038536.P6017601555724334154

/-! ## A038536.P17045105293238646926

`A026215(A034937(n+1))`
-/

namespace A038536.P17045105293238646926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026215 (A034937 (n + 1)).toNat

end

end A038536.P17045105293238646926

/-! ## A038536.P13736586634734954353

`(p?[A138341(A000040(n+1))]-4)/3`
-/

namespace A038536.P13736586634734954353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138341 (A000040 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 4 : ℚ) / 3

end

end A038536.P13736586634734954353

/-! ## A038536.P6815481087901940594

`A063195(A034938(n+1))`
-/

namespace A038536.P6815481087901940594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063195 (A034938 (n + 1)).toNat

end

end A038536.P6815481087901940594

/-! ## A038536.P10382983023825698839

`A002264(2*A034937(n+1))`
-/

namespace A038536.P10382983023825698839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * A034937 (n + 1)).toNat

end

end A038536.P10382983023825698839

/-! ## A038536.P1406929135507745328

`A008611(A034938(n+1)-3)`
-/

namespace A038536.P1406929135507745328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A034938 (n + 1) - 3).toNat

end

end A038536.P1406929135507745328

/-! ## A038536.P18058101241894890702

`A008620(A034938(n+1)-5)`
-/

namespace A038536.P18058101241894890702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A034938 (n + 1) - 5).toNat

end

end A038536.P18058101241894890702

/-!
# A038538: Number of semisimple rings with n elements.

The programs for A038538, there is no canonical definition to state claims against.
-/

/-! ## A038538.P14355003101648849199

`∏{e}[n+1, A004101(#)]`
-/

namespace A038538.P14355003101648849199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A004101 (Nat.factorization (f1 n) p)

end

end A038538.P14355003101648849199

/-! ## A038538.P18446300488151811318

`A052305(A101296(n+1))`
-/

namespace A038538.P18446300488151811318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052305 (A101296 (n + 1)).toNat

end

end A038538.P18446300488151811318

/-! ## A038538.P11634960723064188332

`∏{e}[A242420(n+1), A318027(#)]`
-/

namespace A038538.P11634960723064188332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A318027 (Nat.factorization (f1 n).natAbs p)

end

end A038538.P11634960723064188332

/-! ## A038538.P767892247466125936

`∏{e}[A045967(n+1), A239952(#)]`
-/

namespace A038538.P767892247466125936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045967 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A239952 (Nat.factorization (f1 n).natAbs p)

end

end A038538.P767892247466125936

/-! ## A038538.P9600415343928033602

`A232012(A000688(n+1))%A000040(A232012(n+1))`
-/

namespace A038538.P9600415343928033602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A232012 (A000688 (n + 1)).toNat) (A000040 (A232012 (n + 1)).toNat)

end

end A038538.P9600415343928033602

/-! ## A038538.P6472329506528028168

`A076634(A037291(n+1))`
-/

namespace A038538.P6472329506528028168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076634 (A037291 (n + 1)).toNat

end

end A038538.P6472329506528028168

/-! ## A038538.P1115148130056216349

`A227581(A127707(n+1))`
-/

namespace A038538.P1115148130056216349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227581 (A127707 (n + 1)).toNat

end

end A038538.P1115148130056216349

/-! ## A038538.P16161930625506499039

`A059981(A354358(n+1))`
-/

namespace A038538.P16161930625506499039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059981 (A354358 (n + 1)).toNat

end

end A038538.P16161930625506499039

/-! ## A038538.P8535850274798413899

`A366693(A112622(n+1))`
-/

namespace A038538.P8535850274798413899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366693 (A112622 (n + 1)).toNat

end

end A038538.P8535850274798413899

/-!
# A038540: a(n) = number of modules with n elements over the ring of integers in the real quadratic field of discriminant 40.

The programs for A038540, there is no canonical definition to state claims against.
-/

/-! ## A038540.P9958045090850896182

`A352555(A003961(n+1))%A342779(n+1)`
-/

namespace A038540.P9958045090850896182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A352555 (A003961 (n + 1)).toNat) (A342779 (n + 1))

end

end A038540.P9958045090850896182

/-! ## A038540.P15139771814685386254

`A158388(A323347(n))*A352555(A003961(n+1))`
-/

namespace A038540.P15139771814685386254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A323347 n).toNat * A352555 (A003961 (n + 1)).toNat

end

end A038540.P15139771814685386254

/-! ## A038540.P4602263433004614953

`A158388(A325164(n+1))*A352555(A003961(n+1))`
-/

namespace A038540.P4602263433004614953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (A325164 (n + 1)).toNat * A352555 (A003961 (n + 1)).toNat

end

end A038540.P4602263433004614953

/-! ## A038540.P3845044125992503516

`A271699(A262079(n+1))!*A352555(A003961(n+1))`
-/

namespace A038540.P3845044125992503516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A271699 (A262079 (n + 1)).toNat).toNat : ℤ) * A352555 (A003961 (n + 1)).toNat

end

end A038540.P3845044125992503516

/-! ## A038540.P4324914337142059998

`A352555(A003961(n+1))+A000122(A070852(3*n+4))`
-/

namespace A038540.P4324914337142059998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352555 (A003961 (n + 1)).toNat + A000122 (A070852 (3 * n + 4)).toNat

end

end A038540.P4324914337142059998

/-! ## A038540.P12377424036074684936

`A352555(A003961(n+1)^A262079(n+1))`
-/

namespace A038540.P12377424036074684936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352555 (SequenceMachineLib.roundAway ((A003961 (n + 1) : ℚ) ^ (A262079 (n + 1) : ℤ))).toNat

end

end A038540.P12377424036074684936

/-! ## A038540.P6000392276265547817

`A057427(Δ[n^3])*A352555(A003961(n+1))`
-/

namespace A038540.P6000392276265547817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A352555 (A003961 (n + 1)).toNat

end

end A038540.P6000392276265547817

/-!
# A038542: Primes p such that Ramanujan function tau(p) is divisible by 11.

The programs for A038542, there is no canonical definition to state claims against.
-/

/-! ## A038542.P13506580103705008625

`A020725(lt[A126839(n+1), A010051(n+1)])`
-/

namespace A038542.P13506580103705008625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038542.P13506580103705008625

/-! ## A038542.P141109808706416511

`A065190(lt[A126839(n+1), A010051(n+1)])`
-/

namespace A038542.P141109808706416511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126839 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065190 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A038542.P141109808706416511

/-!
# A038543: Primes p such that Ramanujan function tau(p) is divisible by 13.

The programs for A038543, there is no canonical definition to state claims against.
-/

/-! ## A038543.P1821774352557870992

`A099375(6*A042878(n))`
-/

namespace A038543.P1821774352557870992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 (6 * A042878 n).toNat

end

end A038543.P1821774352557870992

/-!
# A038544: a(n) = Sum_{i=0..10^n} i^3.

The programs for A038544, the canonical program `A038544.P6421879482260911790` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038544 has offset 0).

The definition of A038544 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038544.P6421879482260911790

`A037156(n)²`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038544

/-- `A037156(n)²` -/
def P6421879482260911790.Spec : Prop :=
  ∀ n, P6421879482260911790.a n = A038544 n

theorem P6421879482260911790.correct : P6421879482260911790.Spec := by
  intro n
  simp only [A038544]

end A038544

/-! ## A038544.P6266640689683396615

`C(10^n+1, 2)²`
-/

namespace A038544.P6266640689683396615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (10 ^ n + 1) 2 ^ 2

end

end A038544.P6266640689683396615

namespace A038544

/-- `C(10^n+1, 2)²` -/
def P6266640689683396615.Spec : Prop :=
  ∀ n, (P6266640689683396615.a n : ℤ) = A038544 n

end A038544

/-! ## A038544.P7433525313709208197

`A037156(n)^(A057427(n)+1)`
-/

namespace A038544.P7433525313709208197
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037156 n : ℚ) ^ (A057427 n + 1 : ℤ)

end

end A038544.P7433525313709208197

namespace A038544

/-- `A037156(n)^(A057427(n)+1)` -/
def P7433525313709208197.Spec : Prop :=
  ∀ n, P7433525313709208197.a n = (A038544 n : ℚ)

end A038544

/-! ## A038544.P15056942964687703750

`A037156(n)^A006337(A003151(n+1))`
-/

namespace A038544.P15056942964687703750
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037156 n : ℚ) ^ (A006337 (A003151 (n + 1)).toNat : ℤ)

end

end A038544.P15056942964687703750

namespace A038544

/-- `A037156(n)^A006337(A003151(n+1))` -/
def P15056942964687703750.Spec : Prop :=
  ∀ n, P15056942964687703750.a n = (A038544 n : ℚ)

end A038544

/-! ## A038544.P4164565669573395943

`(10^n+1)²*(10^n)²/4`
-/

namespace A038544.P4164565669573395943
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 ^ n + 1) ^ 2 * (10 ^ n) ^ 2 : ℚ) / 4

end

end A038544.P4164565669573395943

namespace A038544

/-- `(10^n+1)²*(10^n)²/4` -/
def P4164565669573395943.Spec : Prop :=
  ∀ n, P4164565669573395943.a n = (A038544 n : ℚ)

end A038544

/-!
# A038547: Least number with exactly n odd divisors.

The programs for A038547, there is no canonical definition to state claims against.
-/

/-! ## A038547.P17010170252971062897

`A119265(∑[n+1])`
-/

namespace A038547.P17010170252971062897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119265 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038547.P17010170252971062897

/-! ## A038547.P319123646459630102

`lcm(2, A119265(A000217(n+1)))/2`
-/

namespace A038547.P319123646459630102
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A119265 (A000217 (n + 1)).toNat) : ℚ) / 2

end

end A038547.P319123646459630102

/-! ## A038547.P7397164934775010209

`A119265(A000217(n+1))%Δ[A021544(n)]`
-/

namespace A038547.P7397164934775010209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021544 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119265 (A000217 (n + 1)).toNat) (f1 (n + 1) - f1 n)

end

end A038547.P7397164934775010209

/-! ## A038547.P9564985981937072544

`A119265(A000217(n+1))+and(2, A008574(n))`
-/

namespace A038547.P9564985981937072544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119265 (A000217 (n + 1)).toNat + Int.land 2 (A008574 n)

end

end A038547.P9564985981937072544

/-! ## A038547.P15391502257745533862

`A193334((n+1)²)+A119265(A000217(n+1))`
-/

namespace A038547.P15391502257745533862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193334 ((n + 1) ^ 2) + A119265 (A000217 (n + 1)).toNat

end

end A038547.P15391502257745533862

/-! ## A038547.P10094409089322637187

`A119265(A000217(n+1))+A008683(4*(n+1))`
-/

namespace A038547.P10094409089322637187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119265 (A000217 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A038547.P10094409089322637187

/-! ## A038547.P14602750104826315254

`A119265(A000217(n+1))^A007318(C(n, n²)!)`
-/

namespace A038547.P14602750104826315254
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119265 (A000217 (n + 1)).toNat : ℚ) ^ (A007318 (Nat.factorial (Nat.choose n (n ^ 2))) : ℤ)

end

end A038547.P14602750104826315254

/-! ## A038547.P180418659293501243

`sqrt(A357450(n+1))`
-/

namespace A038547.P180418659293501243
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A357450 (n + 1) : ℝ)

end

end A038547.P180418659293501243

/-! ## A038547.P6669421385382066228

`A007318(A000217(2*n))*A119265(A000217(n+1))`
-/

namespace A038547.P6669421385382066228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 (2 * n)).toNat * A119265 (A000217 (n + 1)).toNat

end

end A038547.P6669421385382066228

/-!
# A038548: Number of divisors of n that are at most sqrt(n).

The programs for A038548, the canonical program `A038548.P12593795823109361725` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038548 has offset 1).

The definition of A038548 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038548.P17082916698525719492

`ceil(A000005(n+1)/2)`
-/

namespace A038548.P17082916698525719492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000005 (n + 1) : ℚ) / 2⌉

end

end A038548.P17082916698525719492

namespace A038548

/-- `ceil(A000005(n+1)/2)` -/
def P17082916698525719492.Spec : Prop :=
  ∀ n, P17082916698525719492.a n = A038548 (n + 1)

end A038548

/-! ## A038548.P1420100750266992139

`A056924(n+1)+A010052(n+1)`
-/

namespace A038548.P1420100750266992139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056924 (n + 1) + A010052 (n + 1)

end

end A038548.P1420100750266992139

namespace A038548

/-- `A056924(n+1)+A010052(n+1)` -/
def P1420100750266992139.Spec : Prop :=
  ∀ n, P1420100750266992139.a n = A038548 (n + 1)

end A038548

/-! ## A038548.P12593795823109361725

`A000005(n+1)-A056924(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038548

/-- `A000005(n+1)-A056924(n+1)` -/
def P12593795823109361725.Spec : Prop :=
  ∀ n, P12593795823109361725.a n = A038548 (n + 1)

theorem P12593795823109361725.correct : P12593795823109361725.Spec := by
  intro n
  simp only [A038548, Nat.add_sub_cancel]

end A038548

/-! ## A038548.P9123318794126949598

`(A000005(n+1)+A010052(n+1))/2`
-/

namespace A038548.P9123318794126949598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (n + 1) + A010052 (n + 1) : ℚ) / 2

end

end A038548.P9123318794126949598

namespace A038548

/-- `(A000005(n+1)+A010052(n+1))/2` -/
def P9123318794126949598.Spec : Prop :=
  ∀ n, P9123318794126949598.a n = (A038548 (n + 1) : ℚ)

end A038548

/-! ## A038548.P12259047067358431653

`A034178(4*(n+1))`
-/

namespace A038548.P12259047067358431653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (4 * (n + 1))

end

end A038548.P12259047067358431653

namespace A038548

/-- `A034178(4*(n+1))` -/
def P12259047067358431653.Spec : Prop :=
  ∀ n, P12259047067358431653.a n = A038548 (n + 1)

end A038548

/-! ## A038548.P11799826595778358427

`ceil(∏{e}[n+1, #+1]/2)`
-/

namespace A038548.P11799826595778358427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2⌉

end

end A038548.P11799826595778358427

namespace A038548

/-- `ceil(∏{e}[n+1, #+1]/2)` -/
def P11799826595778358427.Spec : Prop :=
  ∀ n, P11799826595778358427.a n = A038548 (n + 1)

end A038548

/-! ## A038548.P1401342655651066549

`round(∏{e}[n+1, #+1]/2)`
-/

namespace A038548.P1401342655651066549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2)

end

end A038548.P1401342655651066549

namespace A038548

/-- `round(∏{e}[n+1, #+1]/2)` -/
def P1401342655651066549.Spec : Prop :=
  ∀ n, P1401342655651066549.a n = A038548 (n + 1)

end A038548

/-! ## A038548.P16460141027589190293

`round(∑{d}[n+1, gcd(n, #)]/2)`
-/

namespace A038548.P16460141027589190293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℚ) / 2)

end

end A038548.P16460141027589190293

namespace A038548

/-- `round(∑{d}[n+1, gcd(n, #)]/2)` -/
def P16460141027589190293.Spec : Prop :=
  ∀ n, P16460141027589190293.a n = A038548 (n + 1)

end A038548

/-! ## A038548.P14573986937298712131

`ceil((∑{d}[n+1, n²%#]+1)/2)`
-/

namespace A038548.P14573986937298712131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ d ∈ Nat.divisors (f1 n), n ^ 2 % d + 1 : ℕ) : ℚ) / 2⌉

end

end A038548.P14573986937298712131

namespace A038548

/-- `ceil((∑{d}[n+1, n²%#]+1)/2)` -/
def P14573986937298712131.Spec : Prop :=
  ∀ n, P14573986937298712131.a n = A038548 (n + 1)

end A038548

/-! ## A038548.P1213555518453380331

`A072670(n)+1`
-/

namespace A038548.P1213555518453380331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n + 1

end

end A038548.P1213555518453380331

namespace A038548

/-- `A072670(n)+1` -/
def P1213555518453380331.Spec : Prop :=
  ∀ n, P1213555518453380331.a n = A038548 (n + 1)

theorem P1213555518453380331.correct : P1213555518453380331.Spec := by
  intro n
  simp only [A038548, Nat.add_sub_cancel, A038548.P1213555518453380331.a, A038548.P12593795823109361725.a, A000005, A000005.P16091521709108585461.a, A056924, A056924.P8846060015044098494.a, A072670, A072670.P17694124448625562099.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038548

/-! ## A038548.P8931693921775586227

`sqrt(A330571(n+1))`
-/

namespace A038548.P8931693921775586227
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A330571 (n + 1) : ℝ)

end

end A038548.P8931693921775586227

namespace A038548

/-- `sqrt(A330571(n+1))` -/
def P8931693921775586227.Spec : Prop :=
  ∀ n, P8931693921775586227.a n = (A038548 (n + 1) : ℝ)

end A038548

/-! ## A038548.P3047868259327557330

`Δ[A132106(n)/2]`
-/

namespace A038548.P3047868259327557330
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132106 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038548.P3047868259327557330

namespace A038548

/-- `Δ[A132106(n)/2]` -/
def P3047868259327557330.Spec : Prop :=
  ∀ n, P3047868259327557330.a n = (A038548 (n + 1) : ℚ)

end A038548

/-! ## A038548.P4261065094414383820

`A161841(n+1)/2`
-/

namespace A038548.P4261065094414383820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161841 (n + 1) : ℚ) / 2

end

end A038548.P4261065094414383820

namespace A038548

/-- `A161841(n+1)/2` -/
def P4261065094414383820.Spec : Prop :=
  ∀ n, P4261065094414383820.a n = (A038548 (n + 1) : ℚ)

theorem P4261065094414383820.correct : P4261065094414383820.Spec := by
  intro n
  simp only [A038548, Nat.add_sub_cancel, A038548.P4261065094414383820.a, A038548.P12593795823109361725.a, A000005, A000005.P16091521709108585461.a, A056924, A056924.P8846060015044098494.a, A161841, A161841.P10874343468678800026.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038548

/-! ## A038548.P9848455227029504500

`floor(sqrt(A337174(n+1)))`
-/

namespace A038548.P9848455227029504500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A337174 (n + 1))

end

end A038548.P9848455227029504500

namespace A038548

/-- `floor(sqrt(A337174(n+1)))` -/
def P9848455227029504500.Spec : Prop :=
  ∀ n, P9848455227029504500.a n = A038548 (n + 1)

end A038548

/-! ## A038548.P3086837844882695239

`∑{d}[n+1, A065043(#)]`
-/

namespace A038548.P3086837844882695239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065043 d

end

end A038548.P3086837844882695239

namespace A038548

/-- `∑{d}[n+1, A065043(#)]` -/
def P3086837844882695239.Spec : Prop :=
  ∀ n, P3086837844882695239.a n = A038548 (n + 1)

end A038548

/-! ## A038548.P9250021797842910832

`ceil(Δ[A006218(n)/2])`
-/

namespace A038548.P9250021797842910832
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006218 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A038548.P9250021797842910832

namespace A038548

/-- `ceil(Δ[A006218(n)/2])` -/
def P9250021797842910832.Spec : Prop :=
  ∀ n, P9250021797842910832.a n = A038548 (n + 1)

end A038548

/-! ## A038548.P3241860913028607259

`ceil(Δ[A054519(n)/2])`
-/

namespace A038548.P3241860913028607259
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054519 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A038548.P3241860913028607259

namespace A038548

/-- `ceil(Δ[A054519(n)/2])` -/
def P3241860913028607259.Spec : Prop :=
  ∀ n, P3241860913028607259.a n = A038548 (n + 1)

end A038548

/-! ## A038548.P17596261183901177320

`floor(A325765(n)/2)+1`
-/

namespace A038548.P17596261183901177320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A325765 n : ℚ) / 2⌋ + 1

end

end A038548.P17596261183901177320

namespace A038548

/-- `floor(A325765(n)/2)+1` -/
def P17596261183901177320.Spec : Prop :=
  ∀ n, P17596261183901177320.a n = A038548 (n + 1)

end A038548

/-! ## A038548.P3427055199515915124

`A161840(n+1)/2+1`
-/

namespace A038548.P3427055199515915124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161840 (n + 1) : ℚ) / 2 + 1

end

end A038548.P3427055199515915124

namespace A038548

/-- `A161840(n+1)/2+1` -/
def P3427055199515915124.Spec : Prop :=
  ∀ n, P3427055199515915124.a n = (A038548 (n + 1) : ℚ)

theorem P3427055199515915124.correct : P3427055199515915124.Spec := by
  intro n
  simp only [A038548, Nat.add_sub_cancel, A038548.P3427055199515915124.a, A038548.P12593795823109361725.a, A000005, A000005.P16091521709108585461.a, A056924, A056924.P8846060015044098494.a, A161840, A161840.P9787077699229106813.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A072670, A072670.P17694124448625562099.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038548

/-!
# A038549: Least number with exactly n divisors that are at most its square root.

The programs for A038549, there is no canonical definition to state claims against.
-/

/-! ## A038549.P17000260252442742542

`A072671(n)+1`
-/

namespace A038549.P17000260252442742542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072671 n + 1

end

end A038549.P17000260252442742542

/-! ## A038549.P12366531206005772969

`n-(A023443(n)-A072671(n))`
-/

namespace A038549.P12366531206005772969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - A072671 n)

end

end A038549.P12366531206005772969

/-! ## A038549.P8705992065974957797

`1-(A000038(n)-or(2, A072671(n)))`
-/

namespace A038549.P8705992065974957797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A000038 n - Int.lor 2 (A072671 n))

end

end A038549.P8705992065974957797

/-! ## A038549.P11710742661258413083

`A072671(n)-(n-1)-A001489(n)`
-/

namespace A038549.P11710742661258413083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072671 n - ((n : ℤ) - 1) - A001489 n

end

end A038549.P11710742661258413083

/-! ## A038549.P12072751506975628075

`A005408(n)-(2*n-A072671(n))`
-/

namespace A038549.P12072751506975628075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - ((2 * n : ℤ) - A072671 n)

end

end A038549.P12072751506975628075

/-! ## A038549.P8781551566623678720

`A020639(A001504(n))-(1-A072671(n))`
-/

namespace A038549.P8781551566623678720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A001504 n).toNat - (1 - A072671 n)

end

end A038549.P8781551566623678720

/-! ## A038549.P15122225903782876795

`1-A072671(n)*A325142(A178334(n))`
-/

namespace A038549.P15122225903782876795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A072671 n * A325142 (A178334 n).toNat

end

end A038549.P15122225903782876795

/-! ## A038549.P9129902933909767888

`A008619(n)-(A004526(n)-A072671(n))`
-/

namespace A038549.P9129902933909767888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n - (A004526 n - A072671 n)

end

end A038549.P9129902933909767888

/-!
# A038550: Products of an odd prime and a power of two (sorted).

The programs for A038550, the canonical program `A038550.P5719490266772145792` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038550 has offset 1).

The definition of A038550 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038550.P940332160862356537

`A100368(n+1)/2`
-/

namespace A038550.P940332160862356537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100368 (n + 1) : ℚ) / 2

end

end A038550.P940332160862356537

namespace A038550

/-- `A100368(n+1)/2` -/
def P940332160862356537.Spec : Prop :=
  ∀ n, P940332160862356537.a n = (A038550 (n + 1) : ℚ)

theorem P940332160862356537.correct : P940332160862356537.Spec := by
  intro n
  simp only [A038550, Nat.add_sub_cancel, A038550.P940332160862356537.a, A038550.P5719490266772145792.f1, A038550.P5719490266772145792.f2, A038550.P5719490266772145792.a, A100368, A100368.P13264735113197873513.a, A318451, A318451.P1128071880896831267.f1, A318451.P1128071880896831267.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038550

/-! ## A038550.P14184337718678303801

`eq[1, A087436(n+1)]+1`
-/

namespace A038550.P14184337718678303801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038550.P14184337718678303801

namespace A038550

/-- `eq[1, A087436(n+1)]+1` -/
def P14184337718678303801.Spec : Prop :=
  ∀ n, (P14184337718678303801.a n : ℤ) = A038550 (n + 1)

end A038550

/-! ## A038550.P5719490266772145792

`eq[1, A318451(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038550

/-- `eq[1, A318451(n+1)]+1` -/
def P5719490266772145792.Spec : Prop :=
  ∀ n, (P5719490266772145792.a n : ℤ) = A038550 (n + 1)

theorem P5719490266772145792.correct : P5719490266772145792.Spec := by
  intro n
  simp only [A038550, Nat.add_sub_cancel]

end A038550

/-! ## A038550.P17976017067951077073

`eq[1, A353670(n+1)]+1`
-/

namespace A038550.P17976017067951077073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353670 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038550.P17976017067951077073

namespace A038550

/-- `eq[1, A353670(n+1)]+1` -/
def P17976017067951077073.Spec : Prop :=
  ∀ n, (P17976017067951077073.a n : ℤ) = A038550 (n + 1)

end A038550

/-! ## A038550.P16910057732526760893

`eq[2, A301957(n+1)]+1`
-/

namespace A038550.P16910057732526760893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038550.P16910057732526760893

namespace A038550

/-- `eq[2, A301957(n+1)]+1` -/
def P16910057732526760893.Spec : Prop :=
  ∀ n, (P16910057732526760893.a n : ℤ) = A038550 (n + 1)

end A038550

/-! ## A038550.P1211152130342517985

`eq[2, A318874(n+1)]+1`
-/

namespace A038550.P1211152130342517985
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038550.P1211152130342517985

namespace A038550

/-- `eq[2, A318874(n+1)]+1` -/
def P1211152130342517985.Spec : Prop :=
  ∀ n, (P1211152130342517985.a n : ℤ) = A038550 (n + 1)

end A038550

/-! ## A038550.P11765912044316008006

`eq[2, A336158(n+1)]+1`
-/

namespace A038550.P11765912044316008006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336158 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038550.P11765912044316008006

namespace A038550

/-- `eq[2, A336158(n+1)]+1` -/
def P11765912044316008006.Spec : Prop :=
  ∀ n, (P11765912044316008006.a n : ℤ) = A038550 (n + 1)

end A038550

/-! ## A038550.P17266504710414414375

`eq[2, A369466(n+1)]+1`
-/

namespace A038550.P17266504710414414375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369466 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038550.P17266504710414414375

namespace A038550

/-- `eq[2, A369466(n+1)]+1` -/
def P17266504710414414375.Spec : Prop :=
  ∀ n, (P17266504710414414375.a n : ℤ) = A038550 (n + 1)

end A038550

/-! ## A038550.P11190826473340771499

`eq[val(n+1, 2)+1, A001222(n+1)]+1`
-/

namespace A038550.P11190826473340771499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038550.P11190826473340771499

namespace A038550

/-- `eq[val(n+1, 2)+1, A001222(n+1)]+1` -/
def P11190826473340771499.Spec : Prop :=
  ∀ n, (P11190826473340771499.a n : ℤ) = A038550 (n + 1)

end A038550

/-! ## A038550.P15798880361006488867

`eq[1, A001222((n+1)/and(n+1, -(n+1)))]+1`
-/

namespace A038550.P15798880361006488867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038550.P15798880361006488867

namespace A038550

/-- `eq[1, A001222((n+1)/and(n+1, -(n+1)))]+1` -/
def P15798880361006488867.Spec : Prop :=
  ∀ n, (P15798880361006488867.a n : ℤ) = A038550 (n + 1)

end A038550

/-! ## A038550.P17571817273785510277

`eq[2, A000005(A000265(n+1))]+1`
-/

namespace A038550.P17571817273785510277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000265 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A038550.P17571817273785510277

namespace A038550

/-- `eq[2, A000005(A000265(n+1))]+1` -/
def P17571817273785510277.Spec : Prop :=
  ∀ n, (P17571817273785510277.a n : ℤ) = A038550 (n + 1)

end A038550

/-! ## A038550.P911836492337956282

`∪[A065091(n+1), A100368(n+1)]`
-/

namespace A038550.P911836492337956282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100368 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038550.P911836492337956282

namespace A038550

/-- `∪[A065091(n+1), A100368(n+1)]` -/
def P911836492337956282.Spec : Prop :=
  ∀ n, (P911836492337956282.a n : ℤ) = A038550 (n + 1)

end A038550

/-! ## A038550.P3304422083548393485

`eq[A000265(n+1), A318884(n+1)]+1`
-/

namespace A038550.P3304422083548393485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A038550.P3304422083548393485

namespace A038550

/-- `eq[A000265(n+1), A318884(n+1)]+1` -/
def P3304422083548393485.Spec : Prop :=
  ∀ n, (P3304422083548393485.a n : ℤ) = A038550 (n + 1)

end A038550

/-! ## A038550.P9384958513735208927

`filter[A093641(n+1), A340373(#)]`
-/

namespace A038550.P9384958513735208927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340373 (f1 j).toNat = 1) n)

end

end A038550.P9384958513735208927

namespace A038550

/-- `filter[A093641(n+1), A340373(#)]` -/
def P9384958513735208927.Spec : Prop :=
  ∀ n, P9384958513735208927.a n = A038550 (n + 1)

end A038550

/-! ## A038550.P7208653213339770398

`filter[A093641(n+1), A347523(#)]`
-/

namespace A038550.P7208653213339770398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A038550.P7208653213339770398

namespace A038550

/-- `filter[A093641(n+1), A347523(#)]` -/
def P7208653213339770398.Spec : Prop :=
  ∀ n, P7208653213339770398.a n = A038550 (n + 1)

end A038550

/-! ## A038550.P15933461430538250278

`filter[A093641(n+1), A353670(#)]`
-/

namespace A038550.P15933461430538250278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093641 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A038550.P15933461430538250278

namespace A038550

/-- `filter[A093641(n+1), A353670(#)]` -/
def P15933461430538250278.Spec : Prop :=
  ∀ n, P15933461430538250278.a n = A038550 (n + 1)

end A038550

/-! ## A038550.P248359677912135129

`filter[A123345(n+1), A353670(#)]`
-/

namespace A038550.P248359677912135129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123345 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A038550.P248359677912135129

namespace A038550

/-- `filter[A123345(n+1), A353670(#)]` -/
def P248359677912135129.Spec : Prop :=
  ∀ n, P248359677912135129.a n = A038550 (n + 1)

end A038550

/-! ## A038550.P4506373741930392088

`filter[A267895(n+1), A340371(#)]`
-/

namespace A038550.P4506373741930392088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A038550.P4506373741930392088

namespace A038550

/-- `filter[A267895(n+1), A340371(#)]` -/
def P4506373741930392088.Spec : Prop :=
  ∀ n, P4506373741930392088.a n = A038550 (n + 1)

end A038550

/-! ## A038550.P4875505301805545804

`filter[A267895(n+1), A353627(#)]`
-/

namespace A038550.P4875505301805545804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A038550.P4875505301805545804

namespace A038550

/-- `filter[A267895(n+1), A353627(#)]` -/
def P4875505301805545804.Spec : Prop :=
  ∀ n, P4875505301805545804.a n = A038550 (n + 1)

end A038550

/-!
# A038552: Largest squarefree number k such that Q(sqrt(-k)) has class number n.

The programs for A038552, there is no canonical definition to state claims against.
-/

/-! ## A038552.P14266462273470180120

`A357600(A037334(n+1))`
-/

namespace A038552.P14266462273470180120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357600 (A037334 (n + 1)).toNat

end

end A038552.P14266462273470180120

/-! ## A038552.P1725985798455963547

`A357600(A037441(n+1))`
-/

namespace A038552.P1725985798455963547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357600 (A037441 (n + 1)).toNat

end

end A038552.P1725985798455963547

/-! ## A038552.P17267961135502883830

`A357600(A037442(n+1))`
-/

namespace A038552.P17267961135502883830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357600 (A037442 (n + 1)).toNat

end

end A038552.P17267961135502883830

/-!
# A038553: Maximum cycle length in differentiation digraph for n-bit binary sequences.

The programs for A038553, there is no canonical definition to state claims against.
-/

/-! ## A038553.P8962871213147784765

`lcm((n+1)/2^val(n+1, 2), A085587(n+1))`
-/

namespace A038553.P8962871213147784765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))) (A085587 (n + 1))

end

end A038553.P8962871213147784765

/-! ## A038553.P4230919269344211584

`lcm(A000265(n+1), A085587(n+1))`
-/

namespace A038553.P4230919269344211584
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000265 (n + 1)) (A085587 (n + 1))

end

end A038553.P4230919269344211584

/-! ## A038553.P13387874930136908503

`lcm(A005408(A025480(n)), A085587(n+1))`
-/

namespace A038553.P13387874930136908503
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005408 (A025480 n).toNat) (A085587 (n + 1))

end

end A038553.P13387874930136908503

/-!
# A038554: Derivative of n: write n in binary, replace each pair of adjacent bits with their mod 2 sum (a(0)=a(1)=0 by convention). Also n XOR (n shift 1).

The programs for A038554, the canonical program `A038554.P18074075277458443425` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038554 has offset 0).

The definition of A038554 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038554.P4976524127706548089

`2*a(floor(n/2))+floor((n+1)/2)%2` with `a(0)=0, a(1)=0`
-/

namespace A038554.P4976524127706548089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  2 * a ⌊(n : ℚ) / 2⌋.toNat + Int.tmod ⌊(n + 1 : ℚ) / 2⌋ 2

end

end A038554.P4976524127706548089

namespace A038554

/-- `2*a(floor(n/2))+floor((n+1)/2)%2` -/
def P4976524127706548089.Spec : Prop :=
  ∀ n, P4976524127706548089.a n = A038554 n

end A038554

/-! ## A038554.P11341305118106326706

`floor(A038556(n)/2)`
-/

namespace A038554.P11341305118106326706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038556 n : ℚ) / 2⌋

end

end A038554.P11341305118106326706

namespace A038554

/-- `floor(A038556(n)/2)` -/
def P11341305118106326706.Spec : Prop :=
  ∀ n, P11341305118106326706.a n = A038554 n

end A038554

/-! ## A038554.P18074075277458443425

`floor(xor(n, A006257(n))/2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038554

/-- `floor(xor(n, A006257(n))/2)` -/
def P18074075277458443425.Spec : Prop :=
  ∀ n, P18074075277458443425.a n = A038554 n

theorem P18074075277458443425.correct : P18074075277458443425.Spec := by
  intro n
  simp only [A038554]

end A038554

/-! ## A038554.P13457847766028495677

`xor(n, floor(n/2))-A053644(n)`
-/

namespace A038554.P13457847766028495677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ - A053644 n

end

end A038554.P13457847766028495677

namespace A038554

/-- `xor(n, floor(n/2))-A053644(n)` -/
def P13457847766028495677.Spec : Prop :=
  ∀ n, P13457847766028495677.a n = A038554 n

end A038554

/-! ## A038554.P13728566582665067688

`A003188(2^ceil(log2(n+1))-(n+1))`
-/

namespace A038554.P13728566582665067688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) - (n + 1 : ℚ))).toNat

end

end A038554.P13728566582665067688

namespace A038554

/-- `A003188(2^ceil(log2(n+1))-(n+1))` -/
def P13728566582665067688.Spec : Prop :=
  ∀ n, P13728566582665067688.a n = A038554 n

end A038554

/-! ## A038554.P9689191997840888301

`A003188(n)-A053644(n)`
-/

namespace A038554.P9689191997840888301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n - A053644 n

end

end A038554.P9689191997840888301

namespace A038554

/-- `A003188(n)-A053644(n)` -/
def P9689191997840888301.Spec : Prop :=
  ∀ n, P9689191997840888301.a n = A038554 n

end A038554

/-! ## A038554.P6773064228761057602

`A003817(n)-A180201(n)`
-/

namespace A038554.P6773064228761057602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n - A180201 n

end

end A038554.P6773064228761057602

namespace A038554

/-- `A003817(n)-A180201(n)` -/
def P6773064228761057602.Spec : Prop :=
  ∀ n, P6773064228761057602.a n = A038554 n

end A038554

/-! ## A038554.P2495209875322417302

`xor(n, A053644(n)+A004526(n))`
-/

namespace A038554.P2495209875322417302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A053644 n + A004526 n)

end

end A038554.P2495209875322417302

namespace A038554

/-- `xor(n, A053644(n)+A004526(n))` -/
def P2495209875322417302.Spec : Prop :=
  ∀ n, P2495209875322417302.a n = A038554 n

end A038554

/-! ## A038554.P1103450385218480507

`A003188(n)%A000010(2^ceil(log2(n+1)))`
-/

namespace A038554.P1103450385218480507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003188 n) (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))).toNat)

end

end A038554.P1103450385218480507

namespace A038554

/-- `A003188(n)%A000010(2^ceil(log2(n+1)))` -/
def P1103450385218480507.Spec : Prop :=
  ∀ n, P1103450385218480507.a n = A038554 n

end A038554

/-! ## A038554.P18075969969946482158

`A003188(n)-A003188(A003817(n))`
-/

namespace A038554.P18075969969946482158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n - A003188 (A003817 n).toNat

end

end A038554.P18075969969946482158

namespace A038554

/-- `A003188(n)-A003188(A003817(n))` -/
def P18075969969946482158.Spec : Prop :=
  ∀ n, P18075969969946482158.a n = A038554 n

end A038554

/-! ## A038554.P2122294022979994399

`and(A003188(n), A003188(A035327(n)))`
-/

namespace A038554.P2122294022979994399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003188 n) (A003188 (A035327 n).toNat)

end

end A038554.P2122294022979994399

namespace A038554

/-- `and(A003188(n), A003188(A035327(n)))` -/
def P2122294022979994399.Spec : Prop :=
  ∀ n, P2122294022979994399.a n = A038554 n

end A038554

/-! ## A038554.P11917090824084629197

`xor(A004526(n), A004526(A006257(n)))`
-/

namespace A038554.P11917090824084629197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 n) (A004526 (A006257 n).toNat)

end

end A038554.P11917090824084629197

namespace A038554

/-- `xor(A004526(n), A004526(A006257(n)))` -/
def P11917090824084629197.Spec : Prop :=
  ∀ n, P11917090824084629197.a n = A038554 n

end A038554

/-! ## A038554.P8136375280741639212

`xor(A004526(n), A053645(A028310(n)))`
-/

namespace A038554.P8136375280741639212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004526 n) (A053645 (A028310 n).toNat)

end

end A038554.P8136375280741639212

namespace A038554

/-- `xor(A004526(n), A053645(A028310(n)))` -/
def P8136375280741639212.Spec : Prop :=
  ∀ n, P8136375280741639212.a n = A038554 n

end A038554

/-! ## A038554.P13800624061645541314

`xor(A028242(A006257(n)), A123108(n))`
-/

namespace A038554.P13800624061645541314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A028242 (A006257 n).toNat) (A123108 n)

end

end A038554.P13800624061645541314

namespace A038554

/-- `xor(A028242(A006257(n)), A123108(n))` -/
def P13800624061645541314.Spec : Prop :=
  ∀ n, P13800624061645541314.a n = A038554 n

end A038554

/-! ## A038554.P2870426790937800443

`A064706(A006068(A062383(n)-(n+1)))`
-/

namespace A038554.P2870426790937800443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 (A006068 (A062383 n - (n + 1 : ℤ)).toNat).toNat

end

end A038554.P2870426790937800443

namespace A038554

/-- `A064706(A006068(A062383(n)-(n+1)))` -/
def P2870426790937800443.Spec : Prop :=
  ∀ n, P2870426790937800443.a n = A038554 n

end A038554

/-! ## A038554.P5214646644579544291

`A000225(A070939(n)-1)-A279645(n)`
-/

namespace A038554.P5214646644579544291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (A070939 n - 1).toNat - A279645 n

end

end A038554.P5214646644579544291

namespace A038554

/-- `A000225(A070939(n)-1)-A279645(n)` -/
def P5214646644579544291.Spec : Prop :=
  ∀ n, P5214646644579544291.a n = A038554 n

end A038554

/-! ## A038554.P16221388303577764143

`and(A292264(n)+A003188(n), A003188(n))`
-/

namespace A038554.P16221388303577764143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A292264 n + A003188 n) (A003188 n)

end

end A038554.P16221388303577764143

namespace A038554

/-- `and(A292264(n)+A003188(n), A003188(n))` -/
def P16221388303577764143.Spec : Prop :=
  ∀ n, P16221388303577764143.a n = A038554 n

end A038554

/-! ## A038554.P1376256808664865722

`A003188(n)-A292264(and(n, A003188(n)))`
-/

namespace A038554.P1376256808664865722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n - A292264 (Int.land (n : ℤ) (A003188 n)).toNat

end

end A038554.P1376256808664865722

namespace A038554

/-- `A003188(n)-A292264(and(n, A003188(n)))` -/
def P1376256808664865722.Spec : Prop :=
  ∀ n, P1376256808664865722.a n = A038554 n

end A038554

/-! ## A038554.P16072629165195745800

`A004526(A038556(n))`
-/

namespace A038554.P16072629165195745800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A038556 n).toNat

end

end A038554.P16072629165195745800

namespace A038554

/-- `A004526(A038556(n))` -/
def P16072629165195745800.Spec : Prop :=
  ∀ n, P16072629165195745800.a n = A038554 n

end A038554

/-! ## A038554.P10611597585269493007

`A004526(xor(n, A006257(n)))`
-/

namespace A038554.P10611597585269493007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.xor (n : ℤ) (A006257 n)).toNat

end

end A038554.P10611597585269493007

namespace A038554

/-- `A004526(xor(n, A006257(n)))` -/
def P10611597585269493007.Spec : Prop :=
  ∀ n, P10611597585269493007.a n = A038554 n

end A038554

/-!
# A038555: Derivative of n in base 3.

The programs for A038555, there is no canonical definition to state claims against.
-/

/-! ## A038555.P4375043510255440566

`floor(A038557(n)/3)`
-/

namespace A038555.P4375043510255440566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038557 n : ℚ) / 3⌋

end

end A038555.P4375043510255440566

/-! ## A038555.P10200030992936570914

`A002264(A038557(n))`
-/

namespace A038555.P10200030992936570914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A038557 n).toNat

end

end A038555.P10200030992936570914

/-! ## A038555.P17993891448443951577

`A008620(A038557(n))-A000188(A000040(n+3))`
-/

namespace A038555.P17993891448443951577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A038557 n).toNat - A000188 (A000040 (n + 3)).toNat

end

end A038555.P17993891448443951577

/-! ## A038555.P16276637409033197613

`A008683(A002148(n))+A008620(A038557(n))`
-/

namespace A038555.P16276637409033197613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A002148 n).toNat + A008620 (A038557 n).toNat

end

end A038555.P16276637409033197613

/-!
# A038556: Periodic derivative of n.

The programs for A038556, the canonical program `A038556.P6997511803854896681` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038556 has offset 0).

The definition of A038556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038556.P16398005215506172630

`xor(n, Δ[n²]-2^ceil(log2(n+1)))`
-/

namespace A038556.P16398005215506172630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (SequenceMachineLib.roundAway (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)))

end

end A038556.P16398005215506172630

namespace A038556

/-- `xor(n, Δ[n²]-2^ceil(log2(n+1)))` -/
def P16398005215506172630.Spec : Prop :=
  ∀ n, P16398005215506172630.a n = A038556 n

end A038556

/-! ## A038556.P2986756281908362999

`A003188(Δ[n²])-2^ceil(log2(n+1))`
-/

namespace A038556.P2986756281908362999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003188 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ)

end

end A038556.P2986756281908362999

namespace A038556

/-- `A003188(Δ[n²])-2^ceil(log2(n+1))` -/
def P2986756281908362999.Spec : Prop :=
  ∀ n, P2986756281908362999.a n = (A038556 n : ℚ)

end A038556

/-! ## A038556.P6997511803854896681

`A001969(A038554(n)+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A038556

/-- `A001969(A038554(n)+1)` -/
def P6997511803854896681.Spec : Prop :=
  ∀ n, P6997511803854896681.a n = A038556 n

theorem P6997511803854896681.correct : P6997511803854896681.Spec := by
  intro n
  simp only [A038556]

end A038556

/-! ## A038556.P3373407718743432069

`A048724(A003817(n)-n)`
-/

namespace A038556.P3373407718743432069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 (A003817 n - (n : ℤ)).toNat

end

end A038556.P3373407718743432069

namespace A038556

/-- `A048724(A003817(n)-n)` -/
def P3373407718743432069.Spec : Prop :=
  ∀ n, P3373407718743432069.a n = A038556 n

end A038556

/-! ## A038556.P3528294834225387792

`A048724(n-A006257(n))`
-/

namespace A038556.P3528294834225387792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 ((n : ℤ) - A006257 n).toNat

end

end A038556.P3528294834225387792

namespace A038556

/-- `A048724(n-A006257(n))` -/
def P3528294834225387792.Spec : Prop :=
  ∀ n, P3528294834225387792.a n = A038556 n

end A038556

/-! ## A038556.P15170946510571326373

`A065621(n+1)-A062383(n)`
-/

namespace A038556.P15170946510571326373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (n + 1) - A062383 n

end

end A038556.P15170946510571326373

namespace A038556

/-- `A065621(n+1)-A062383(n)` -/
def P15170946510571326373.Spec : Prop :=
  ∀ n, P15170946510571326373.a n = A038556 n

end A038556

/-! ## A038556.P17452745987598253223

`A003188(2*(A003817(n)-n))`
-/

namespace A038556.P17452745987598253223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * (A003817 n - (n : ℤ))).toNat

end

end A038556.P17452745987598253223

namespace A038556

/-- `A003188(2*(A003817(n)-n))` -/
def P17452745987598253223.Spec : Prop :=
  ∀ n, P17452745987598253223.a n = A038556 n

end A038556

/-! ## A038556.P2649202045524006987

`A003188(2*(n-A006257(n)))`
-/

namespace A038556.P2649202045524006987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * ((n : ℤ) - A006257 n)).toNat

end

end A038556.P2649202045524006987

namespace A038556

/-- `A003188(2*(n-A006257(n)))` -/
def P2649202045524006987.Spec : Prop :=
  ∀ n, P2649202045524006987.a n = A038556 n

end A038556

/-! ## A038556.P8397013930483861982

`and(A003817(n), A065621(n+1))`
-/

namespace A038556.P8397013930483861982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A065621 (n + 1))

end

end A038556.P8397013930483861982

namespace A038556

/-- `and(A003817(n), A065621(n+1))` -/
def P8397013930483861982.Spec : Prop :=
  ∀ n, P8397013930483861982.a n = A038556 n

end A038556

/-! ## A038556.P12855824024599520616

`A003188(2*xor(n, A003817(n)))`
-/

namespace A038556.P12855824024599520616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * Int.xor (n : ℤ) (A003817 n)).toNat

end

end A038556.P12855824024599520616

namespace A038556

/-- `A003188(2*xor(n, A003817(n)))` -/
def P12855824024599520616.Spec : Prop :=
  ∀ n, P12855824024599520616.a n = A038556 n

end A038556

/-! ## A038556.P5508449489365637620

`and(A003188(2*n+1), A003817(n))`
-/

namespace A038556.P5508449489365637620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003188 (2 * n + 1)) (A003817 n)

end

end A038556.P5508449489365637620

namespace A038556

/-- `and(A003188(2*n+1), A003817(n))` -/
def P5508449489365637620.Spec : Prop :=
  ∀ n, P5508449489365637620.a n = A038556 n

end A038556

/-! ## A038556.P15627696658618278139

`A003188(2*n+1)-A038572(2*n+1)+n`
-/

namespace A038556.P15627696658618278139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * n + 1) - A038572 (2 * n + 1) + (n : ℤ)

end

end A038556.P15627696658618278139

namespace A038556

/-- `A003188(2*n+1)-A038572(2*n+1)+n` -/
def P15627696658618278139.Spec : Prop :=
  ∀ n, P15627696658618278139.a n = A038556 n

end A038556

/-! ## A038556.P8540411517165105234

`A003188(2*n+1)-A004760(n+2)+n`
-/

namespace A038556.P8540411517165105234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * n + 1) - A004760 (n + 2) + (n : ℤ)

end

end A038556.P8540411517165105234

namespace A038556

/-- `A003188(2*n+1)-A004760(n+2)+n` -/
def P8540411517165105234.Spec : Prop :=
  ∀ n, P8540411517165105234.a n = A038556 n

end A038556

/-! ## A038556.P17524002230212624659

`A392521(Δ[n²])`
-/

namespace A038556.P17524002230212624659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392521 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A038556.P17524002230212624659

namespace A038556

/-- `A392521(Δ[n²])` -/
def P17524002230212624659.Spec : Prop :=
  ∀ n, P17524002230212624659.a n = A038556 n

end A038556

/-! ## A038556.P15300724483169079584

`A392521(2*n+1)%(2*n+1)`
-/

namespace A038556.P15300724483169079584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A392521 (2 * n + 1)) (2 * n + 1 : ℤ)

end

end A038556.P15300724483169079584

namespace A038556

/-- `A392521(2*n+1)%(2*n+1)` -/
def P15300724483169079584.Spec : Prop :=
  ∀ n, P15300724483169079584.a n = A038556 n

end A038556

/-! ## A038556.P8910846855890030818

`A142149(2*(A003817(n)-n))`
-/

namespace A038556.P8910846855890030818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142149 (2 * (A003817 n - (n : ℤ))).toNat

end

end A038556.P8910846855890030818

namespace A038556

/-- `A142149(2*(A003817(n)-n))` -/
def P8910846855890030818.Spec : Prop :=
  ∀ n, P8910846855890030818.a n = A038556 n

end A038556

/-!
# A038557: Periodic derivative of n in base 3.

The programs for A038557, there is no canonical definition to state claims against.
-/

/-! ## A038557.P9922522945979100360

`A038555(A297250(n+2))`
-/

namespace A038557.P9922522945979100360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038555 (A297250 (n + 2)).toNat

end

end A038557.P9922522945979100360

/-!
# A038558: Smallest number with derivative n.

The programs for A038558, the canonical program `A038558.P636742692231698886` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038558 has offset 0).

The definition of A038558 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038558.P636742692231698886

`A233279(n)+A053644(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038558

/-- `A233279(n)+A053644(n)` -/
def P636742692231698886.Spec : Prop :=
  ∀ n, P636742692231698886.a n = A038558 n

theorem P636742692231698886.correct : P636742692231698886.Spec := by
  intro n
  simp only [A038558]

end A038558

/-! ## A038558.P17256311016931650377

`A006257(A233279(n))+A006068(n)`
-/

namespace A038558.P17256311016931650377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A233279 n).toNat + A006068 n

end

end A038558.P17256311016931650377

namespace A038558

/-- `A006257(A233279(n))+A006068(n)` -/
def P17256311016931650377.Spec : Prop :=
  ∀ n, P17256311016931650377.a n = A038558 n

end A038558

/-! ## A038558.P13239113756430270335

`A006257(A233279(n))+A268716(n)/2`
-/

namespace A038558.P13239113756430270335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006257 (A233279 n).toNat : ℚ) + (A268716 n : ℚ) / 2

end

end A038558.P13239113756430270335

namespace A038558

/-- `A006257(A233279(n))+A268716(n)/2` -/
def P13239113756430270335.Spec : Prop :=
  ∀ n, P13239113756430270335.a n = (A038558 n : ℚ)

end A038558

/-! ## A038558.P2132947311175743690

`xor(A001969(n+1), A006257(A233279(n)))`
-/

namespace A038558.P2132947311175743690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001969 (n + 1)) (A006257 (A233279 n).toNat)

end

end A038558.P2132947311175743690

namespace A038558

/-- `xor(A001969(n+1), A006257(A233279(n)))` -/
def P2132947311175743690.Spec : Prop :=
  ∀ n, P2132947311175743690.a n = A038558 n

end A038558

/-! ## A038558.P17500246274556244175

`A063946(A233279(n)+A006068(n))-A006068(n)`
-/

namespace A038558.P17500246274556244175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A233279 n + A006068 n).toNat - A006068 n

end

end A038558.P17500246274556244175

namespace A038558

/-- `A063946(A233279(n)+A006068(n))-A006068(n)` -/
def P17500246274556244175.Spec : Prop :=
  ∀ n, P17500246274556244175.a n = A038558 n

end A038558

/-! ## A038558.P1451625682842941224

`A001969(n+1)-A006257(2*A265263(n))`
-/

namespace A038558.P1451625682842941224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1) - A006257 (2 * A265263 n).toNat

end

end A038558.P1451625682842941224

namespace A038558

/-- `A001969(n+1)-A006257(2*A265263(n))` -/
def P1451625682842941224.Spec : Prop :=
  ∀ n, P1451625682842941224.a n = A038558 n

end A038558

/-! ## A038558.P8187495784659992248

`A233279(n)+A004526(A062383(n))`
-/

namespace A038558.P8187495784659992248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 n + A004526 (A062383 n).toNat

end

end A038558.P8187495784659992248

namespace A038558

/-- `A233279(n)+A004526(A062383(n))` -/
def P8187495784659992248.Spec : Prop :=
  ∀ n, P8187495784659992248.a n = A038558 n

end A038558

/-! ## A038558.P13687026150646092502

`A334727(A003817(n))+A233279(n)`
-/

namespace A038558.P13687026150646092502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334727 (A003817 n).toNat + A233279 n

end

end A038558.P13687026150646092502

namespace A038558

/-- `A334727(A003817(n))+A233279(n)` -/
def P13687026150646092502.Spec : Prop :=
  ∀ n, P13687026150646092502.a n = A038558 n

end A038558

/-! ## A038558.P8352709280561548307

`A006068(2*A053644(n))-A006068(n)`
-/

namespace A038558.P8352709280561548307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (2 * A053644 n).toNat - A006068 n

end

end A038558.P8352709280561548307

namespace A038558

/-- `A006068(2*A053644(n))-A006068(n)` -/
def P8352709280561548307.Spec : Prop :=
  ∀ n, P8352709280561548307.a n = A038558 n

end A038558

/-! ## A038558.P7988768915662263078

`A006257(A233279(n))+2*n-A292601(2*n)`
-/

namespace A038558.P7988768915662263078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (A233279 n).toNat + ((2 * n : ℤ) - A292601 (2 * n))

end

end A038558.P7988768915662263078

namespace A038558

/-- `A006257(A233279(n))+2*n-A292601(2*n)` -/
def P7988768915662263078.Spec : Prop :=
  ∀ n, P7988768915662263078.a n = A038558 n

end A038558

/-! ## A038558.P11197315642479290573

`A233279(A063946(n))+A006257(A233279(n))`
-/

namespace A038558.P11197315642479290573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A063946 n).toNat + A006257 (A233279 n).toNat

end

end A038558.P11197315642479290573

namespace A038558

/-- `A233279(A063946(n))+A006257(A233279(n))` -/
def P11197315642479290573.Spec : Prop :=
  ∀ n, P11197315642479290573.a n = A038558 n

end A038558

/-! ## A038558.P13042776586845144265

`A193231(A234612(n))+A006257(A233279(n))`
-/

namespace A038558.P13042776586845144265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A234612 n).toNat + A006257 (A233279 n).toNat

end

end A038558.P13042776586845144265

namespace A038558

/-- `A193231(A234612(n))+A006257(A233279(n))` -/
def P13042776586845144265.Spec : Prop :=
  ∀ n, P13042776586845144265.a n = A038558 n

end A038558

/-! ## A038558.P16894721306387213072

`A233279(n)+A072376(A233279(n)+n)`
-/

namespace A038558.P16894721306387213072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 n + A072376 (A233279 n + (n : ℤ)).toNat

end

end A038558.P16894721306387213072

namespace A038558

/-- `A233279(n)+A072376(A233279(n)+n)` -/
def P16894721306387213072.Spec : Prop :=
  ∀ n, P16894721306387213072.a n = A038558 n

end A038558

/-! ## A038558.P12605447636524321293

`A233279(A072376(2*n)+n)`
-/

namespace A038558.P12605447636524321293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233279 (A072376 (2 * n) + (n : ℤ)).toNat

end

end A038558.P12605447636524321293

namespace A038558

/-- `A233279(A072376(2*n)+n)` -/
def P12605447636524321293.Spec : Prop :=
  ∀ n, P12605447636524321293.a n = A038558 n

end A038558

/-! ## A038558.P14772578038477508217

`A003817(2*n)-A006068(n)`
-/

namespace A038558.P14772578038477508217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (2 * n) - A006068 n

end

end A038558.P14772578038477508217

namespace A038558

/-- `A003817(2*n)-A006068(n)` -/
def P14772578038477508217.Spec : Prop :=
  ∀ n, P14772578038477508217.a n = A038558 n

end A038558

/-! ## A038558.P7466971738840323008

`A003817(2*n)-A292600(2*n)`
-/

namespace A038558.P7466971738840323008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (2 * n) - A292600 (2 * n)

end

end A038558.P7466971738840323008

namespace A038558

/-- `A003817(2*n)-A292600(2*n)` -/
def P7466971738840323008.Spec : Prop :=
  ∀ n, P7466971738840323008.a n = A038558 n

end A038558

/-! ## A038558.P5115904662387053286

`xor(A003817(2*n), A292600(2*n+1))`
-/

namespace A038558.P5115904662387053286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 (2 * n)) (A292600 (2 * n + 1))

end

end A038558.P5115904662387053286

namespace A038558

/-- `xor(A003817(2*n), A292600(2*n+1))` -/
def P5115904662387053286.Spec : Prop :=
  ∀ n, P5115904662387053286.a n = A038558 n

end A038558

/-! ## A038558.P6411223369707691671

`2*n+1-char[xor(n, 2*n)]-A006257(A265263(2*n))`
-/

namespace A038558.P6411223369707691671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) - A006257 (A265263 (2 * n)).toNat

end

end A038558.P6411223369707691671

namespace A038558

/-- `2*n+1-char[xor(n, 2*n)]-A006257(A265263(2*n))` -/
def P6411223369707691671.Spec : Prop :=
  ∀ n, P6411223369707691671.a n = A038558 n

end A038558

/-! ## A038558.P3666614829990547521

`A335133(A335133(n)+A053644(n))`
-/

namespace A038558.P3666614829990547521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335133 (A335133 n + A053644 n).toNat

end

end A038558.P3666614829990547521

namespace A038558

/-- `A335133(A335133(n)+A053644(n))` -/
def P3666614829990547521.Spec : Prop :=
  ∀ n, P3666614829990547521.a n = A038558 n

end A038558

/-! ## A038558.P14424121364568210027

`eq[1, A010059(n)]-A006257(A265263(2*n))`
-/

namespace A038558.P14424121364568210027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A006257 (A265263 (2 * n)).toNat

end

end A038558.P14424121364568210027

namespace A038558

/-- `eq[1, A010059(n)]-A006257(A265263(2*n))` -/
def P14424121364568210027.Spec : Prop :=
  ∀ n, P14424121364568210027.a n = A038558 n

end A038558

/-!
# A038559: a(n) = 2*A040027(n-1) + Bell(n), where Bell = A000110.

The programs for A038559, there is no canonical definition to state claims against.
-/

/-! ## A038559.P12963585376734379694

`A038560(n)-A032347(n)`
-/

namespace A038559.P12963585376734379694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038560 n - A032347 n

end

end A038559.P12963585376734379694

/-! ## A038559.P16911601757188274422

`A046936(∑[n])+A038561(n)`
-/

namespace A038559.P16911601757188274422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 (∑ j ∈ Finset.range (n + 1), f1 j) + A038561 n

end

end A038559.P16911601757188274422

/-! ## A038559.P14358380831163473709

`2*A038561(n)-A000110(n)`
-/

namespace A038559.P14358380831163473709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038561 n - A000110 n

end

end A038559.P14358380831163473709

/-! ## A038559.P1989819893200607347

`2*A038561(n)-Δ[A005001(n)]`
-/

namespace A038559.P1989819893200607347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038561 n - (f1 (n + 1) - f1 n)

end

end A038559.P1989819893200607347

/-! ## A038559.P16398807393073532792

`2*A046937(A000217(n))-A000110(n)`
-/

namespace A038559.P16398807393073532792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046937 (A000217 n).toNat - A000110 n

end

end A038559.P16398807393073532792

/-! ## A038559.P18425761675163417271

`2*A038561(n)-A011971(A000217(n))`
-/

namespace A038559.P18425761675163417271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038561 n - A011971 (A000217 n).toNat

end

end A038559.P18425761675163417271

/-! ## A038559.P11725049700385744548

`2*A038561(n)-A108087(A000124(n))`
-/

namespace A038559.P11725049700385744548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038561 n - A108087 (A000124 n).toNat

end

end A038559.P11725049700385744548

/-! ## A038559.P14115198388752281754

`2*A038561(n)-A212431(A000096(n))`
-/

namespace A038559.P14115198388752281754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A038561 n - A212431 (A000096 n).toNat

end

end A038559.P14115198388752281754

/-! ## A038559.P1485971344540889068

`A000110(n)+A038561(n)-A032347(n)`
-/

namespace A038559.P1485971344540889068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 n + (A038561 n - A032347 n)

end

end A038559.P1485971344540889068

/-!
# A038560: Binomial recurrence coefficients.

The programs for A038560, there is no canonical definition to state claims against.
-/

/-! ## A038560.P14362256740909345869

`A038561(n)+A000110(n)`
-/

namespace A038560.P14362256740909345869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038561 n + A000110 n

end

end A038560.P14362256740909345869

/-! ## A038560.P2724532768900975086

`A038559(n)+A032347(n)`
-/

namespace A038560.P2724532768900975086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038559 n + A032347 n

end

end A038560.P2724532768900975086

/-! ## A038560.P11229714168993801765

`A046937(∑[n])+A000110(n)`
-/

namespace A038560.P11229714168993801765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (∑ j ∈ Finset.range (n + 1), f1 j) + A000110 n

end

end A038560.P11229714168993801765

/-! ## A038560.P3838411526362175989

`A095149(∑[n])+A038561(n)`
-/

namespace A038560.P3838411526362175989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (∑ j ∈ Finset.range (n + 1), f1 j) + A038561 n

end

end A038560.P3838411526362175989

/-! ## A038560.P8436668967646753919

`A186020(∑[n])+A038561(n)`
-/

namespace A038560.P8436668967646753919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186020 (∑ j ∈ Finset.range (n + 1), f1 j) + A038561 n

end

end A038560.P8436668967646753919

/-! ## A038560.P15524668953930291756

`A038561(n)+Δ[A005001(n)]`
-/

namespace A038560.P15524668953930291756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038561 n + (f1 (n + 1) - f1 n)

end

end A038560.P15524668953930291756

/-! ## A038560.P16696874975164291703

`3*A038561(n)-A038559(n)`
-/

namespace A038560.P16696874975164291703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A038561 n - A038559 n

end

end A038560.P16696874975164291703

/-! ## A038560.P8464541970996379454

`A038561(n)+A011971(A000217(n))`
-/

namespace A038560.P8464541970996379454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038561 n + A011971 (A000217 n).toNat

end

end A038560.P8464541970996379454

/-! ## A038560.P14649133490293595774

`A108087(A000124(n))+A038561(n)`
-/

namespace A038560.P14649133490293595774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 (A000124 n).toNat + A038561 n

end

end A038560.P14649133490293595774

/-! ## A038560.P17590667701730459363

`A212431(A000096(n))+A038561(n)`
-/

namespace A038560.P17590667701730459363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212431 (A000096 n).toNat + A038561 n

end

end A038560.P17590667701730459363

/-!
# A038561: Left-hand border of triangle A046937.

The programs for A038561, there is no canonical definition to state claims against.
-/

/-! ## A038561.P11956911295162206337

`A046937(∑[n])`
-/

namespace A038561.P11956911295162206337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A038561.P11956911295162206337

/-! ## A038561.P4311129851326321798

`A046936(∑[n])+A000110(n)`
-/

namespace A038561.P4311129851326321798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046936 (∑ j ∈ Finset.range (n + 1), f1 j) + A000110 n

end

end A038561.P4311129851326321798

/-! ## A038561.P7919936942300809066

`record[A046937(n)/A046899(n)]`
-/

namespace A038561.P7919936942300809066
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046937 n : ℚ) / (A046899 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038561.P7919936942300809066

/-! ## A038561.P18182822903399267066

`record[gcd(A002262(n), A046937(n))]`
-/

namespace A038561.P18182822903399267066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A046937 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038561.P18182822903399267066

/-! ## A038561.P3921219377045954263

`record[A046937(n)/A133819(n+1)]`
-/

namespace A038561.P3921219377045954263
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046937 n : ℚ) / (A133819 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038561.P3921219377045954263

/-! ## A038561.P6858494443479824787

`record[A046937(A000217(A008615(n)))]`
-/

namespace A038561.P6858494443479824787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (A000217 (A008615 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038561.P6858494443479824787

/-! ## A038561.P7063094306630145734

`record[A046937(A057944(A014682(n)))]`
-/

namespace A038561.P7063094306630145734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (A057944 (A014682 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038561.P7063094306630145734

/-! ## A038561.P14002793042893940569

`record[A046937(A008795(A093178(n)))]`
-/

namespace A038561.P14002793042893940569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (A008795 (A093178 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038561.P14002793042893940569

/-! ## A038561.P15414626930291563755

`record[A046937(A123596(A026741(n)))]`
-/

namespace A038561.P15414626930291563755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (A123596 (A026741 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038561.P15414626930291563755

/-! ## A038561.P1854203144836446904

`record[A046937(A000217(A263390(n)))]`
-/

namespace A038561.P1854203144836446904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046937 (A000217 (A263390 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038561.P1854203144836446904

/-!
# A038562: Let a (resp. b,c,d) be number of primes in the range {2..p} that end in 1 (resp. 3,7,9); sequence gives p such that a=d and b=c.

The programs for A038562, there is no canonical definition to state claims against.
-/

/-! ## A038562.P10836450646027520703

`A000040(A038563(n+1))`
-/

namespace A038562.P10836450646027520703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038563 (n + 1)).toNat

end

end A038562.P10836450646027520703

/-! ## A038562.P11447278043016807154

`A008578(A038563(n+1)+1)`
-/

namespace A038562.P11447278043016807154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A038563 (n + 1) + 1).toNat

end

end A038562.P11447278043016807154

/-! ## A038562.P99320274674897154

`A182986(A038563(n+1)+1)`
-/

namespace A038562.P99320274674897154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A038563 (n + 1) + 1).toNat

end

end A038562.P99320274674897154

/-! ## A038562.P9775458322879738623

`∑{d}[A038563(n+1), A007444(#)]`
-/

namespace A038562.P9775458322879738623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038563 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A038562.P9775458322879738623

/-! ## A038562.P98356035676195295

`A054977(n+1)+A006093(A038563(n+1))`
-/

namespace A038562.P98356035676195295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) + A006093 (A038563 (n + 1)).toNat

end

end A038562.P98356035676195295

/-! ## A038562.P5693188564094192555

`A006093(A038563(n+1))+A034947(n+1)²`
-/

namespace A038562.P5693188564094192555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038563 (n + 1)).toNat + A034947 (n + 1) ^ 2

end

end A038562.P5693188564094192555

/-! ## A038562.P11833871498556558462

`A006093(A038563(n+1))+A007318(C(2, n))²`
-/

namespace A038562.P11833871498556558462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038563 (n + 1)).toNat + A007318 (Nat.choose 2 n) ^ 2

end

end A038562.P11833871498556558462

/-! ## A038562.P16089445500137118883

`A006093(A038563(n+1))+A000041(C(2, n+2))`
-/

namespace A038562.P16089445500137118883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038563 (n + 1)).toNat + A000041 (Nat.choose 2 (n + 2))

end

end A038562.P16089445500137118883

/-! ## A038562.P18079664736813316949

`A006093(A038563(n+1))+A000108(C(2, n+2))`
-/

namespace A038562.P18079664736813316949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038563 (n + 1)).toNat + A000108 (Nat.choose 2 (n + 2))

end

end A038562.P18079664736813316949

/-! ## A038562.P2568594193725805907

`A006093(A038563(n+1))+A007318(C(2, n+2))`
-/

namespace A038562.P2568594193725805907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038563 (n + 1)).toNat + A007318 (Nat.choose 2 (n + 2))

end

end A038562.P2568594193725805907

/-! ## A038562.P1495616060302964779

`A006093(A038563(n+1))+and(1, A127229(n+5))`
-/

namespace A038562.P1495616060302964779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038563 (n + 1)).toNat + Int.land 1 (A127229 (n + 5))

end

end A038562.P1495616060302964779

/-! ## A038562.P198577865792606710

`A006093(A038563(n+1))+A006530(gcd(n, n+1))`
-/

namespace A038562.P198577865792606710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038563 (n + 1)).toNat + A006530 (Nat.gcd n (n + 1))

end

end A038562.P198577865792606710

/-! ## A038562.P1802374410163886420

`A006093(A038563(n+1))+and(1, A020883(n+1))!`
-/

namespace A038562.P1802374410163886420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038563 (n + 1)).toNat + (Nat.factorial (Int.land 1 (A020883 (n + 1))).toNat : ℤ)

end

end A038562.P1802374410163886420

/-! ## A038562.P16094598744114049780

`A006093(A038563(n+1))-A008683(A007918(n))`
-/

namespace A038562.P16094598744114049780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038563 (n + 1)).toNat - A008683 (A007918 n).toNat

end

end A038562.P16094598744114049780

/-! ## A038562.P1367833792302089832

`A006093(A038563(n+1))+A001221(A000057(n+1))`
-/

namespace A038562.P1367833792302089832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038563 (n + 1)).toNat + A001221 (A000057 (n + 1)).toNat

end

end A038562.P1367833792302089832

/-! ## A038562.P6662686490170792805

`A006093(A038563(n+1))+A001221(A006450(n+1))`
-/

namespace A038562.P6662686490170792805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038563 (n + 1)).toNat + A001221 (A006450 (n + 1)).toNat

end

end A038562.P6662686490170792805

/-! ## A038562.P14268434994904054386

`A006093(A038563(n+1))-A008683(A039650(n+1))`
-/

namespace A038562.P14268434994904054386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038563 (n + 1)).toNat - A008683 (A039650 (n + 1)).toNat

end

end A038562.P14268434994904054386

/-! ## A038562.P13653078455294038305

`A006093(A038563(n+1))-A082551(A002378(n)+1)`
-/

namespace A038562.P13653078455294038305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038563 (n + 1)).toNat - A082551 (A002378 n + 1).toNat

end

end A038562.P13653078455294038305

/-! ## A038562.P18094900424796754786

`A006093(A038563(n+1))+A000045(A020639(2*(n+2)))`
-/

namespace A038562.P18094900424796754786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A038563 (n + 1)).toNat + A000045 (A020639 (2 * (n + 2))).toNat

end

end A038562.P18094900424796754786

/-!
# A038563: Indices of primes appearing in A038562.

The programs for A038563, there is no canonical definition to state claims against.
-/

/-! ## A038563.P7440859244334825087

`A000720(A038562(n+2))`
-/

namespace A038563.P7440859244334825087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A038562 (n + 2)).toNat

end

end A038563.P7440859244334825087

/-! ## A038563.P16706455732704185505

`∑{d}[A038562(n+2), A061395(#)]`
-/

namespace A038563.P16706455732704185505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038562 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A038563.P16706455732704185505

/-! ## A038563.P3016375776119747800

`A061395(or(and(1, n), A038562(n+2)))`
-/

namespace A038563.P3016375776119747800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (Nat.land 1 n : ℤ) (A038562 (n + 2))).toNat

end

end A038563.P3016375776119747800

/-! ## A038563.P3249921785536218902

`lcm(A061395(A038562(n+2)), A154325(n))`
-/

namespace A038563.P3249921785536218902
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A061395 (A038562 (n + 2)).toNat) (A154325 n)

end

end A038563.P3249921785536218902

/-! ## A038563.P14963971731703263989

`A061395(or(A038562(n+2), A209229(n)))`
-/

namespace A038563.P14963971731703263989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (A038562 (n + 2)) (A209229 n)).toNat

end

end A038563.P14963971731703263989

/-! ## A038563.P5347639305535265148

`A061395(A038562(n+2))+A000038(n+1)`
-/

namespace A038563.P5347639305535265148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A038562 (n + 2)).toNat + A000038 (n + 1)

end

end A038563.P5347639305535265148

/-! ## A038563.P15540610145991903817

`A061395(A038562(n+2)%A030516(n+1))`
-/

namespace A038563.P15540610145991903817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A038562 (n + 2)) (A030516 (n + 1))).toNat

end

end A038563.P15540610145991903817

/-! ## A038563.P17158019469534502367

`A061395(A038562(n+2))%A083841(n+1)`
-/

namespace A038563.P17158019469534502367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061395 (A038562 (n + 2)).toNat) (A083841 (n + 1))

end

end A038563.P17158019469534502367

/-! ## A038563.P8247095728572466941

`A061395(A038562(n+2))+A000212(C(n, n²))`
-/

namespace A038563.P8247095728572466941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A038562 (n + 2)).toNat + A000212 (Nat.choose n (n ^ 2))

end

end A038563.P8247095728572466941

/-! ## A038563.P13030482617388927782

`A000035(2*n+1)*A061395(A038562(n+2))`
-/

namespace A038563.P13030482617388927782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n + 1) * A061395 (A038562 (n + 2)).toNat

end

end A038563.P13030482617388927782

/-! ## A038563.P17381351325197910942

`A061395(A038562(n+2))+A008683(4*(n+1))`
-/

namespace A038563.P17381351325197910942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A038562 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A038563.P17381351325197910942

/-! ## A038563.P16428306826191682857

`A007318(and(2, n-3))*A061395(A038562(n+2))`
-/

namespace A038563.P16428306826191682857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Int.land 2 ((n : ℤ) - 3)).toNat * A061395 (A038562 (n + 2)).toNat

end

end A038563.P16428306826191682857

/-!
# A038566: Numerators in canonical bijection from positive integers to positive rationals <= 1: arrange fractions by increasing denominator then by increasing numerator.

The programs for A038566, the canonical program `A038566.P5775218228113679093` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038566 has offset 1).

The definition of A038566 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A169581, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A038566.P5775218228113679093

`A002260(A169581(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038566

/-- `A002260(A169581(n+1))` -/
def P5775218228113679093.Spec : Prop :=
  ∀ n, P5775218228113679093.a n = A038566 (n + 1)

theorem P5775218228113679093.correct : P5775218228113679093.Spec := by
  intro n
  simp only [A038566, Nat.add_sub_cancel]

end A038566

/-! ## A038566.P11180467981264587203

`A038569(2*n)`
-/

namespace A038566.P11180467981264587203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (2 * n)

end

end A038566.P11180467981264587203

namespace A038566

/-- `A038569(2*n)` -/
def P11180467981264587203.Spec : Prop :=
  ∀ n, P11180467981264587203.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P15770311651464912227

`A038568(abs(1-2*n))`
-/

namespace A038566.P15770311651464912227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 |1 - (2 * n : ℤ)|.toNat

end

end A038566.P15770311651464912227

namespace A038566

/-- `A038568(abs(1-2*n))` -/
def P15770311651464912227.Spec : Prop :=
  ∀ n, P15770311651464912227.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P10939120331608510243

`A020652(round(sqrt(n²+1)))`
-/

namespace A038566.P10939120331608510243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020652 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A038566.P10939120331608510243

namespace A038566

/-- `A020652(round(sqrt(n²+1)))` -/
def P10939120331608510243.Spec : Prop :=
  ∀ n, P10939120331608510243.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P17918406511618419660

`A020653(A002088(A038569(n+n)))`
-/

namespace A038566.P17918406511618419660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (A002088 (A038569 (n + n)).toNat).toNat

end

end A038566.P17918406511618419660

namespace A038566

/-- `A020653(A002088(A038569(n+n)))` -/
def P17918406511618419660.Spec : Prop :=
  ∀ n, P17918406511618419660.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P13044380993270297524

`A020652(A028310(n))%A094319(n)`
-/

namespace A038566.P13044380993270297524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020652 (A028310 n).toNat) (A094319 n)

end

end A038566.P13044380993270297524

namespace A038566

/-- `A020652(A028310(n))%A094319(n)` -/
def P13044380993270297524.Spec : Prop :=
  ∀ n, P13044380993270297524.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P17859610704065803921

`A038569(A005843(n))%A299536(n)`
-/

namespace A038566.P17859610704065803921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038569 (A005843 n).toNat) (A299536 n)

end

end A038566.P17859610704065803921

namespace A038566

/-- `A038569(A005843(n))%A299536(n)` -/
def P17859610704065803921.Spec : Prop :=
  ∀ n, P17859610704065803921.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P10047054651412817674

`A128227(eq[1, A050873(n+1)])`
-/

namespace A038566.P10047054651412817674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038566.P10047054651412817674

namespace A038566

/-- `A128227(eq[1, A050873(n+1)])` -/
def P10047054651412817674.Spec : Prop :=
  ∀ n, P10047054651412817674.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P9756058560590483493

`A128227(eq[1, A054521(n+1)])`
-/

namespace A038566.P9756058560590483493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038566.P9756058560590483493

namespace A038566

/-- `A128227(eq[1, A054521(n+1)])` -/
def P9756058560590483493.Spec : Prop :=
  ∀ n, P9756058560590483493.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P9052508126209314370

`A193738(eq[1, A050873(n+1)])`
-/

namespace A038566.P9052508126209314370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038566.P9052508126209314370

namespace A038566

/-- `A193738(eq[1, A050873(n+1)])` -/
def P9052508126209314370.Spec : Prop :=
  ∀ n, P9052508126209314370.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P5447743043920372025

`A193738(eq[1, A054521(n+1)])`
-/

namespace A038566.P5447743043920372025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038566.P5447743043920372025

namespace A038566

/-- `A193738(eq[1, A054521(n+1)])` -/
def P5447743043920372025.Spec : Prop :=
  ∀ n, P5447743043920372025.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P2528599945592560488

`A193738(eq[1, A231425(n+1)])`
-/

namespace A038566.P2528599945592560488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038566.P2528599945592560488

namespace A038566

/-- `A193738(eq[1, A231425(n+1)])` -/
def P2528599945592560488.Spec : Prop :=
  ∀ n, P2528599945592560488.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P15946313832616015877

`A002260(eq[1, A050873(n+1)]+1)`
-/

namespace A038566.P15946313832616015877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038566.P15946313832616015877

namespace A038566

/-- `A002260(eq[1, A050873(n+1)]+1)` -/
def P15946313832616015877.Spec : Prop :=
  ∀ n, P15946313832616015877.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P210354186920647612

`A002262(eq[1, A050873(n+1)])+1`
-/

namespace A038566.P210354186920647612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A038566.P210354186920647612

namespace A038566

/-- `A002262(eq[1, A050873(n+1)])+1` -/
def P210354186920647612.Spec : Prop :=
  ∀ n, P210354186920647612.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P5980208750711627913

`A002260(eq[1, A054521(n+1)]+1)`
-/

namespace A038566.P5980208750711627913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054521 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038566.P5980208750711627913

namespace A038566

/-- `A002260(eq[1, A054521(n+1)]+1)` -/
def P5980208750711627913.Spec : Prop :=
  ∀ n, P5980208750711627913.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P9803716933113914485

`A164306(A169581(2*n+1-n))`
-/

namespace A038566.P9803716933113914485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (A169581 (2 * n + 1 - n)).toNat

end

end A038566.P9803716933113914485

namespace A038566

/-- `A164306(A169581(2*n+1-n))` -/
def P9803716933113914485.Spec : Prop :=
  ∀ n, P9803716933113914485.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P7049287440370986737

`A002260(eq[A002024(n+1), A054531(n+1)]+1)`
-/

namespace A038566.P7049287440370986737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A038566.P7049287440370986737

namespace A038566

/-- `A002260(eq[A002024(n+1), A054531(n+1)]+1)` -/
def P7049287440370986737.Spec : Prop :=
  ∀ n, P7049287440370986737.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P13372444744652169927

`A002260(eq[A002260(n+1), A164306(n+1)]+1)`
-/

namespace A038566.P13372444744652169927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A038566.P13372444744652169927

namespace A038566

/-- `A002260(eq[A002260(n+1), A164306(n+1)]+1)` -/
def P13372444744652169927.Spec : Prop :=
  ∀ n, P13372444744652169927.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P2597802888765020868

`A317988(2*n+3)`
-/

namespace A038566.P2597802888765020868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317988 (2 * n + 3)

end

end A038566.P2597802888765020868

namespace A038566

/-- `A317988(2*n+3)` -/
def P2597802888765020868.Spec : Prop :=
  ∀ n, P2597802888765020868.a n = A038566 (n + 1)

end A038566

/-! ## A038566.P3365284452130580014

`A352911(A004274(n+1))`
-/

namespace A038566.P3365284452130580014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352911 (A004274 (n + 1)).toNat

end

end A038566.P3365284452130580014

namespace A038566

/-- `A352911(A004274(n+1))` -/
def P3365284452130580014.Spec : Prop :=
  ∀ n, P3365284452130580014.a n = A038566 (n + 1)

end A038566

/-!
# A038567: Denominators in canonical bijection from positive integers to positive rationals <= 1.

The programs for A038567, the canonical program `A038567.P2197162168153652474` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038567 has offset 0).

The definition of A038567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038567.P15500293990688884437

`A071912(2*n+1)`
-/

namespace A038567.P15500293990688884437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (2 * n + 1)

end

end A038567.P15500293990688884437

namespace A038567

/-- `A071912(2*n+1)` -/
def P15500293990688884437.Spec : Prop :=
  ∀ n, P15500293990688884437.a n = A038567 n

end A038567

/-! ## A038567.P16215511256761609846

`A038568(2*n)`
-/

namespace A038567.P16215511256761609846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (2 * n)

end

end A038567.P16215511256761609846

namespace A038567

/-- `A038568(2*n)` -/
def P16215511256761609846.Spec : Prop :=
  ∀ n, P16215511256761609846.a n = A038567 n

end A038567

/-! ## A038567.P10413972290371535359

`∑[char[A002088(n)]]`
-/

namespace A038567.P10413972290371535359
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038567.P10413972290371535359

namespace A038567

/-- `∑[char[A002088(n)]]` -/
def P10413972290371535359.Spec : Prop :=
  ∀ n, (P10413972290371535359.a n : ℤ) = A038567 n

end A038567

/-! ## A038567.P3502641906660575881

`∑[char[A005728(n)-1]]`
-/

namespace A038567.P3502641906660575881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038567.P3502641906660575881

namespace A038567

/-- `∑[char[A005728(n)-1]]` -/
def P3502641906660575881.Spec : Prop :=
  ∀ n, (P3502641906660575881.a n : ℤ) = A038567 n

end A038567

/-! ## A038567.P13526043880647675345

`∑[round(acot(A038566(n+1)))]`
-/

namespace A038567.P13526043880647675345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A038566 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038567.P13526043880647675345

namespace A038567

/-- `∑[round(acot(A038566(n+1)))]` -/
def P13526043880647675345.Spec : Prop :=
  ∀ n, P13526043880647675345.a n = A038567 n

end A038567

/-! ## A038567.P2197162168153652474

`round(sqrt(2*A169581(n+1)))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038567

/-- `round(sqrt(2*A169581(n+1)))` -/
def P2197162168153652474.Spec : Prop :=
  ∀ n, P2197162168153652474.a n = A038567 n

theorem P2197162168153652474.correct : P2197162168153652474.Spec := by
  intro n
  simp only [A038567]

end A038567

/-! ## A038567.P1077800261674614855

`∑[char[A049643(n)-1]]+1`
-/

namespace A038567.P1077800261674614855
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049643 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A038567.P1077800261674614855

namespace A038567

/-- `∑[char[A049643(n)-1]]+1` -/
def P1077800261674614855.Spec : Prop :=
  ∀ n, (P1077800261674614855.a n : ℤ) = A038567 n

end A038567

/-! ## A038567.P15926632476118030828

`∑[char[∑[A000010(n+1)]]]+1`
-/

namespace A038567.P15926632476118030828
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A038567.P15926632476118030828

namespace A038567

/-- `∑[char[∑[A000010(n+1)]]]+1` -/
def P15926632476118030828.Spec : Prop :=
  ∀ n, (P15926632476118030828.a n : ℤ) = A038567 n

end A038567

/-! ## A038567.P11541360118242148149

`∑[char[∑[A109606(n+1)+1]]]+1`
-/

namespace A038567.P11541360118242148149
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A038567.P11541360118242148149

namespace A038567

/-- `∑[char[∑[A109606(n+1)+1]]]+1` -/
def P11541360118242148149.Spec : Prop :=
  ∀ n, (P11541360118242148149.a n : ℤ) = A038567 n

end A038567

/-! ## A038567.P1762008557381201630

`∑[char[∑[A039649(n+1)-1]]]+1`
-/

namespace A038567.P1762008557381201630
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A038567.P1762008557381201630

namespace A038567

/-- `∑[char[∑[A039649(n+1)-1]]]+1` -/
def P1762008557381201630.Spec : Prop :=
  ∀ n, (P1762008557381201630.a n : ℤ) = A038567 n

end A038567

/-! ## A038567.P17927686807575381743

`A038569(A004273(n))`
-/

namespace A038567.P17927686807575381743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A004273 n).toNat

end

end A038567.P17927686807575381743

namespace A038567

/-- `A038569(A004273(n))` -/
def P17927686807575381743.Spec : Prop :=
  ∀ n, P17927686807575381743.a n = A038567 n

end A038567

/-! ## A038567.P12315038665051553651

`∑[A063524(A038566(n+1))]`
-/

namespace A038567.P12315038665051553651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A038566 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038567.P12315038665051553651

namespace A038567

/-- `∑[A063524(A038566(n+1))]` -/
def P12315038665051553651.Spec : Prop :=
  ∀ n, P12315038665051553651.a n = A038567 n

end A038567

/-! ## A038567.P7692191442818026588

`A038569(A008486(n)-(n+1))`
-/

namespace A038567.P7692191442818026588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A008486 n - (n + 1 : ℤ)).toNat

end

end A038567.P7692191442818026588

namespace A038567

/-- `A038569(A008486(n)-(n+1))` -/
def P7692191442818026588.Spec : Prop :=
  ∀ n, P7692191442818026588.a n = A038567 n

end A038567

/-! ## A038567.P5879103977047030865

`A038569(A008486(n)-1-n)`
-/

namespace A038567.P5879103977047030865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A008486 n - 1 - (n : ℤ)).toNat

end

end A038567.P5879103977047030865

namespace A038567

/-- `A038569(A008486(n)-1-n)` -/
def P5879103977047030865.Spec : Prop :=
  ∀ n, P5879103977047030865.a n = A038567 n

end A038567

/-! ## A038567.P11324570640513379050

`A038569(2*n-A062157(n))`
-/

namespace A038567.P11324570640513379050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 ((2 * n : ℤ) - A062157 n).toNat

end

end A038567.P11324570640513379050

namespace A038567

/-- `A038569(2*n-A062157(n))` -/
def P11324570640513379050.Spec : Prop :=
  ∀ n, P11324570640513379050.a n = A038567 n

end A038567

/-! ## A038567.P3989992924065583377

`∑[A008966(A038566(n+1)²)]`
-/

namespace A038567.P3989992924065583377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (A038566 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038567.P3989992924065583377

namespace A038567

/-- `∑[A008966(A038566(n+1)²)]` -/
def P3989992924065583377.Spec : Prop :=
  ∀ n, P3989992924065583377.a n = A038567 n

end A038567

/-! ## A038567.P17585144605802987634

`∑[A323402(A038566(n+1)²)]`
-/

namespace A038567.P17585144605802987634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323402 (A038566 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038567.P17585144605802987634

namespace A038567

/-- `∑[A323402(A038566(n+1)²)]` -/
def P17585144605802987634.Spec : Prop :=
  ∀ n, P17585144605802987634.a n = A038567 n

end A038567

/-! ## A038567.P4611750638179583893

`A020653(A002088(A038568(n+n)))`
-/

namespace A038567.P4611750638179583893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020653 (A002088 (A038568 (n + n)).toNat).toNat

end

end A038567.P4611750638179583893

namespace A038567

/-- `A020653(A002088(A038568(n+n)))` -/
def P4611750638179583893.Spec : Prop :=
  ∀ n, P4611750638179583893.a n = A038567 n

end A038567

/-! ## A038567.P15582402078852764638

`∑[char[A029578(A005728(n))]]`
-/

namespace A038567.P15582402078852764638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A005728 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038567.P15582402078852764638

namespace A038567

/-- `∑[char[A029578(A005728(n))]]` -/
def P15582402078852764638.Spec : Prop :=
  ∀ n, (P15582402078852764638.a n : ℤ) = A038567 n

end A038567

/-!
# A038568: Numerators in canonical bijection from positive integers to positive rationals.

The programs for A038568, there is no canonical definition to state claims against.
-/

/-! ## A038568.P1717163460213127024

`A038569(A014681(n))`
-/

namespace A038568.P1717163460213127024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A014681 n).toNat

end

end A038568.P1717163460213127024

/-! ## A038568.P4723384451863371488

`A038569(A062157(n)+n)`
-/

namespace A038568.P4723384451863371488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A062157 n + (n : ℤ)).toNat

end

end A038568.P4723384451863371488

/-! ## A038568.P15610581475753816990

`A038569(A065190(n+1)-1)`
-/

namespace A038568.P15610581475753816990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A065190 (n + 1) - 1).toNat

end

end A038568.P15610581475753816990

/-! ## A038568.P566830565304506596

`A038569(A296911(n)%A005408(n))`
-/

namespace A038568.P566830565304506596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (Int.tmod (A296911 n) (A005408 n)).toNat

end

end A038568.P566830565304506596

/-! ## A038568.P14523335989567303873

`A038569(A047451(n+1)%A016777(n))`
-/

namespace A038568.P14523335989567303873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (Int.tmod (A047451 (n + 1)) (A016777 n)).toNat

end

end A038568.P14523335989567303873

/-! ## A038568.P2906568606027296900

`A317988(n+4)`
-/

namespace A038568.P2906568606027296900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317988 (n + 4)

end

end A038568.P2906568606027296900

/-! ## A038568.P15103304550882099203

`A038569(A028242(A053438(n)))`
-/

namespace A038568.P15103304550882099203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A028242 (A053438 n).toNat).toNat

end

end A038568.P15103304550882099203

/-! ## A038568.P13666073372694646794

`A038569(A319514((n+3)*2*n))`
-/

namespace A038568.P13666073372694646794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038569 (A319514 ((n + 3) * (2 * n))).toNat

end

end A038568.P13666073372694646794

/-!
# A038569: Denominators in a certain bijection from positive integers to positive rationals.

The programs for A038569, there is no canonical definition to state claims against.
-/

/-! ## A038569.P13867555159296018998

`A038568(A014681(n))`
-/

namespace A038569.P13867555159296018998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A014681 n).toNat

end

end A038569.P13867555159296018998

/-! ## A038569.P5427130680970902851

`A038568(abs(A114285(n)))`
-/

namespace A038569.P5427130680970902851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 |A114285 n|.toNat

end

end A038569.P5427130680970902851

/-! ## A038569.P16676785056278731154

`A038568(A062157(n)+n)`
-/

namespace A038569.P16676785056278731154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A062157 n + (n : ℤ)).toNat

end

end A038569.P16676785056278731154

/-! ## A038569.P2004380604038674767

`A038568(A065190(n+1)-1)`
-/

namespace A038569.P2004380604038674767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (A065190 (n + 1) - 1).toNat

end

end A038569.P2004380604038674767

/-! ## A038569.P4897664176580138288

`A038568((A086970(n)-1)/2)`
-/

namespace A038569.P4897664176580138288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (SequenceMachineLib.roundAway ((A086970 n - 1 : ℚ) / 2)).toNat

end

end A038569.P4897664176580138288

/-! ## A038569.P6016600979019878495

`A038568(abs(1-A004442(n+1)))`
-/

namespace A038569.P6016600979019878495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 |1 - A004442 (n + 1)|.toNat

end

end A038569.P6016600979019878495

/-! ## A038569.P11204738060491106261

`A038568(n+1-2%A038568(n))`
-/

namespace A038569.P11204738060491106261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 ((n + 1 : ℤ) - Int.tmod 2 (A038568 n)).toNat

end

end A038569.P11204738060491106261

/-! ## A038569.P7493611186037464850

`A038568(A016813(n)%A047243(n+1))`
-/

namespace A038569.P7493611186037464850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 (Int.tmod (A016813 n) (A047243 (n + 1))).toNat

end

end A038569.P7493611186037464850

/-! ## A038569.P2819259226659842511

`A317988(xor(1, n+1)+3)`
-/

namespace A038569.P2819259226659842511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317988 (Nat.xor 1 (n + 1) + 3)

end

end A038569.P2819259226659842511

/-! ## A038569.P2143107885148702318

`A317988(A014681(n+4))`
-/

namespace A038569.P2143107885148702318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317988 (A014681 (n + 4)).toNat

end

end A038569.P2143107885148702318

/-! ## A038569.P16530907703047893555

`A317988(A065190(n+1)+3)`
-/

namespace A038569.P16530907703047893555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317988 (A065190 (n + 1) + 3).toNat

end

end A038569.P16530907703047893555

/-! ## A038569.P11117060625421987349

`A317988(A014681(n)-(n-A020705(n)))`
-/

namespace A038569.P11117060625421987349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317988 (A014681 n - ((n : ℤ) - A020705 n)).toNat

end

end A038569.P11117060625421987349

/-! ## A038569.P6953275488998805493

`A038568(n+1-and(2, A080079((n+1)²)))`
-/

namespace A038569.P6953275488998805493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038568 ((n + 1 : ℤ) - Int.land 2 (A080079 ((n + 1) ^ 2))).toNat

end

end A038569.P6953275488998805493

/-!
# A038570: Second derivative of n.

The programs for A038570, the canonical program `A038570.P3791970673246993572` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038570 has offset 0).

The definition of A038570 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038570.P3791970673246993572

`A038554(A038554(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038570

/-- `A038554(A038554(n))` -/
def P3791970673246993572.Spec : Prop :=
  ∀ n, P3791970673246993572.a n = A038570 n

theorem P3791970673246993572.correct : P3791970673246993572.Spec := by
  intro n
  simp only [A038570]

end A038570

/-! ## A038570.P2593139408672746412

`A064706(n)-A233280(A342126(n))`
-/

namespace A038570.P2593139408672746412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064706 n - A233280 (A342126 n).toNat

end

end A038570.P2593139408672746412

namespace A038570

/-- `A064706(n)-A233280(A342126(n))` -/
def P2593139408672746412.Spec : Prop :=
  ∀ n, P2593139408672746412.a n = A038570 n

end A038570

/-! ## A038570.P5581638688861887257

`A087734(A003188(A038572(A006257(A003188(n)))))`
-/

namespace A038570.P5581638688861887257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087734 (A003188 (A038572 (A006257 (A003188 n).toNat).toNat).toNat).toNat

end

end A038570.P5581638688861887257

namespace A038570

/-- `A087734(A003188(A038572(A006257(A003188(n)))))` -/
def P5581638688861887257.Spec : Prop :=
  ∀ n, P5581638688861887257.a n = A038570 n

end A038570

/-! ## A038570.P12836043756574170693

`floor(A038556(A038556(n))/4)`
-/

namespace A038570.P12836043756574170693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038556 (A038556 n).toNat : ℚ) / 4⌋

end

end A038570.P12836043756574170693

namespace A038570

/-- `floor(A038556(A038556(n))/4)` -/
def P12836043756574170693.Spec : Prop :=
  ∀ n, P12836043756574170693.a n = A038570 n

end A038570

/-! ## A038570.P8680450326643171610

`A002265(A038556(A038556(n)))`
-/

namespace A038570.P8680450326643171610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A038556 (A038556 n).toNat).toNat

end

end A038570.P8680450326643171610

namespace A038570

/-- `A002265(A038556(A038556(n)))` -/
def P8680450326643171610.Spec : Prop :=
  ∀ n, P8680450326643171610.a n = A038570 n

end A038570

/-! ## A038570.P4520616542537449095

`A054438(A038558(n))`
-/

namespace A038570.P4520616542537449095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054438 (A038558 n).toNat

end

end A038570.P4520616542537449095

namespace A038570

/-- `A054438(A038558(n))` -/
def P4520616542537449095.Spec : Prop :=
  ∀ n, P4520616542537449095.a n = A038570 n

end A038570

/-! ## A038570.P3801216948652122720

`A064706(n)%A080100(A335587(n))`
-/

namespace A038570.P3801216948652122720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A064706 n) (A080100 (A335587 n).toNat)

end

end A038570.P3801216948652122720

namespace A038570

/-- `A064706(n)%A080100(A335587(n))` -/
def P3801216948652122720.Spec : Prop :=
  ∀ n, P3801216948652122720.a n = A038570 n

end A038570

/-!
# A038571: Number of times n must be differentiated to reach 0.

The programs for A038571, the canonical program `A038571.P3590139113610856527` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038571 has offset 0).

The definition of A038571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038571.P3590139113610856527

`a(A038554(n))+1` with `a(0)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038571

/-- `a(A038554(n))+1` -/
def P3590139113610856527.Spec : Prop :=
  ∀ n, (P3590139113610856527.a n : ℤ) = A038571 n

theorem P3590139113610856527.correct : P3590139113610856527.Spec := by
  intro n
  simp only [A038571]

end A038571

/-! ## A038571.P15576894376050342971

`A005496(a(A038554(n)))` with `a(0)=0`
-/

namespace A038571.P15576894376050342971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005496 (a (A038554 n).toNat).toNat

end

end A038571.P15576894376050342971

namespace A038571

/-- `A005496(a(A038554(n)))` -/
def P15576894376050342971.Spec : Prop :=
  ∀ n, P15576894376050342971.a n = A038571 n

end A038571

/-! ## A038571.P9601154987754315573

`A005555(a(A038554(n)))` with `a(0)=0`
-/

namespace A038571.P9601154987754315573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A005555 (a (A038554 n).toNat).toNat

end

end A038571.P9601154987754315573

namespace A038571

/-- `A005555(a(A038554(n)))` -/
def P9601154987754315573.Spec : Prop :=
  ∀ n, P9601154987754315573.a n = A038571 n

end A038571

/-! ## A038571.P2230033337544836170

`A077168(a(A038554(n)))` with `a(0)=0`
-/

namespace A038571.P2230033337544836170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A077168 (a (A038554 n).toNat).toNat

end

end A038571.P2230033337544836170

namespace A038571

/-- `A077168(a(A038554(n)))` -/
def P2230033337544836170.Spec : Prop :=
  ∀ n, P2230033337544836170.a n = A038571 n

end A038571

/-! ## A038571.P13558908948347426920

`A000005(A000079(a(A038554(n))))` with `a(0)=0`
-/

namespace A038571.P13558908948347426920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000005 (A000079 (a (A038554 n).toNat).toNat).toNat

end

end A038571.P13558908948347426920

namespace A038571

/-- `A000005(A000079(a(A038554(n))))` -/
def P13558908948347426920.Spec : Prop :=
  ∀ n, P13558908948347426920.a n = A038571 n

end A038571

/-! ## A038571.P2201760241732597439

`A302030(A207901(a(A038554(n))))` with `a(0)=0`
-/

namespace A038571.P2201760241732597439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A302030 (A207901 (a (A038554 n).toNat).toNat).toNat

end

end A038571.P2201760241732597439

namespace A038571

/-- `A302030(A207901(a(A038554(n))))` -/
def P2201760241732597439.Spec : Prop :=
  ∀ n, P2201760241732597439.a n = A038571 n

end A038571

/-!
# A038572: a(n) = n rotated one binary place to the right.

The programs for A038572, the canonical program `A038572.P9289042872142352092` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038572 has offset 0).

The definition of A038572 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038572.P9289042872142352092

`or(a(n-2)+1, floor(n/2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A038572

/-- `or(a(n-2)+1, floor(n/2))` -/
def P9289042872142352092.Spec : Prop :=
  ∀ n, P9289042872142352092.a n = A038572 n

theorem P9289042872142352092.correct : P9289042872142352092.Spec := by
  intro n
  simp only [A038572]

end A038572

/-! ## A038572.P8167357933269444677

`comp[lt[xor(n, 2*n), 2*n]]-a(n-1)` with `a(0)=0`
-/

namespace A038572.P8167357933269444677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - a (n - 1)

end

end A038572.P8167357933269444677

namespace A038572

/-- `comp[lt[xor(n, 2*n), 2*n]]-a(n-1)` -/
def P8167357933269444677.Spec : Prop :=
  ∀ n, P8167357933269444677.a n = A038572 n

end A038572

/-! ## A038572.P17526030257934542374

`A004761(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A038572.P17526030257934542374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004761 (n + 1) - a (n - 1)

end

end A038572.P17526030257934542374

namespace A038572

/-- `A004761(n+1)-a(n-1)` -/
def P17526030257934542374.Spec : Prop :=
  ∀ n, P17526030257934542374.a n = A038572 n

end A038572

/-! ## A038572.P13727773191416474449

`comp[A004755(n+1)]-a(n-1)` with `a(0)=0`
-/

namespace A038572.P13727773191416474449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - a (n - 1)

end

end A038572.P13727773191416474449

namespace A038572

/-- `comp[A004755(n+1)]-a(n-1)` -/
def P13727773191416474449.Spec : Prop :=
  ∀ n, P13727773191416474449.a n = A038572 n

end A038572

/-! ## A038572.P4956650100011435473

`A273105(n)-(Δ[n²]-2^ceil(log2(n+1)))`
-/

namespace A038572.P4956650100011435473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273105 n : ℚ) - (((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ))

end

end A038572.P4956650100011435473

namespace A038572

/-- `A273105(n)-(Δ[n²]-2^ceil(log2(n+1)))` -/
def P4956650100011435473.Spec : Prop :=
  ∀ n, P4956650100011435473.a n = (A038572 n : ℚ)

end A038572

/-! ## A038572.P5800081502914700792

`A088161(n)+A006257(n)`
-/

namespace A038572.P5800081502914700792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088161 n + A006257 n

end

end A038572.P5800081502914700792

namespace A038572

/-- `A088161(n)+A006257(n)` -/
def P5800081502914700792.Spec : Prop :=
  ∀ n, P5800081502914700792.a n = A038572 n

theorem P5800081502914700792.correct : P5800081502914700792.Spec := by
  intro n
  simp only [A038572, Nat.add_sub_cancel, A038572.P5800081502914700792.a, A038572.P9289042872142352092.a, A006257, A006257.P8910165504183276925.a, A088161, A088161.P8986286637870394846.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038572

/-! ## A038572.P13514796295752092858

`A063946(record[A063946(n)])-a(n-1)` with `a(0)=0`
-/

namespace A038572.P13514796295752092858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A063946 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - a (n - 1)

end

end A038572.P13514796295752092858

namespace A038572

/-- `A063946(record[A063946(n)])-a(n-1)` -/
def P13514796295752092858.Spec : Prop :=
  ∀ n, P13514796295752092858.a n = A038572 n

end A038572

/-! ## A038572.P16514507546935660021

`A142150(A035327(n))+n-A142150(n)`
-/

namespace A038572.P16514507546935660021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A035327 n).toNat + ((n : ℤ) - A142150 n)

end

end A038572.P16514507546935660021

namespace A038572

/-- `A142150(A035327(n))+n-A142150(n)` -/
def P16514507546935660021.Spec : Prop :=
  ∀ n, P16514507546935660021.a n = A038572 n

end A038572

/-! ## A038572.P15441937243094887185

`A053644(n*A000035(n))+A004526(n)`
-/

namespace A038572.P15441937243094887185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 ((n : ℤ) * A000035 n).toNat + A004526 n

end

end A038572.P15441937243094887185

namespace A038572

/-- `A053644(n*A000035(n))+A004526(n)` -/
def P15441937243094887185.Spec : Prop :=
  ∀ n, P15441937243094887185.a n = A038572 n

end A038572

/-! ## A038572.P14853078430381141317

`A004526(n)+A030101(n)-A030101(A004526(n))`
-/

namespace A038572.P14853078430381141317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n + (A030101 n - A030101 (A004526 n).toNat)

end

end A038572.P14853078430381141317

namespace A038572

/-- `A004526(n)+A030101(n)-A030101(A004526(n))` -/
def P14853078430381141317.Spec : Prop :=
  ∀ n, P14853078430381141317.a n = A038572 n

end A038572

/-! ## A038572.P9017689668420875749

`A030101(n)+A123108(n)-A030101(A123108(n))`
-/

namespace A038572.P9017689668420875749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 n + (A123108 n - A030101 (A123108 n).toNat)

end

end A038572.P9017689668420875749

namespace A038572

/-- `A030101(n)+A123108(n)-A030101(A123108(n))` -/
def P9017689668420875749.Spec : Prop :=
  ∀ n, P9017689668420875749.a n = A038572 n

end A038572

/-! ## A038572.P12370806968179585092

`A281553(A006068(n))`
-/

namespace A038572.P12370806968179585092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281553 (A006068 n).toNat

end

end A038572.P12370806968179585092

namespace A038572

/-- `A281553(A006068(n))` -/
def P12370806968179585092.Spec : Prop :=
  ∀ n, P12370806968179585092.a n = A038572 n

end A038572

/-! ## A038572.P7577169457670511599

`A080544(2*n+1)-A053644(2*n+1)`
-/

namespace A038572.P7577169457670511599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080544 (2 * n + 1) - A053644 (2 * n + 1)

end

end A038572.P7577169457670511599

namespace A038572

/-- `A080544(2*n+1)-A053644(2*n+1)` -/
def P7577169457670511599.Spec : Prop :=
  ∀ n, P7577169457670511599.a n = A038572 n

end A038572

/-! ## A038572.P8655819703354295129

`A160588(A171757(n+1)-(n+2))`
-/

namespace A038572.P8655819703354295129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160588 (A171757 (n + 1) - (n + 2 : ℤ)).toNat

end

end A038572.P8655819703354295129

namespace A038572

/-- `A160588(A171757(n+1)-(n+2))` -/
def P8655819703354295129.Spec : Prop :=
  ∀ n, P8655819703354295129.a n = A038572 n

end A038572

/-! ## A038572.P9617344449194760576

`A004526(A053641(A004760(n+2)))`
-/

namespace A038572.P9617344449194760576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A053641 (A004760 (n + 2)).toNat).toNat

end

end A038572.P9617344449194760576

namespace A038572

/-- `A004526(A053641(A004760(n+2)))` -/
def P9617344449194760576.Spec : Prop :=
  ∀ n, P9617344449194760576.a n = A038572 n

end A038572

/-! ## A038572.P2094802554171652302

`A053645(A080542(A080542(2*n+1)))`
-/

namespace A038572.P2094802554171652302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A080542 (A080542 (2 * n + 1)).toNat).toNat

end

end A038572.P2094802554171652302

namespace A038572

/-- `A053645(A080542(A080542(2*n+1)))` -/
def P2094802554171652302.Spec : Prop :=
  ∀ n, P2094802554171652302.a n = A038572 n

end A038572

/-! ## A038572.P3177950474805849884

`A142150(A003817(n)+n)+A142150(n)`
-/

namespace A038572.P3177950474805849884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A003817 n + (n : ℤ)).toNat + A142150 n

end

end A038572.P3177950474805849884

namespace A038572

/-- `A142150(A003817(n)+n)+A142150(n)` -/
def P3177950474805849884.Spec : Prop :=
  ∀ n, P3177950474805849884.a n = A038572 n

end A038572

/-! ## A038572.P14744491675811676287

`A080542(A080542(2*n+1))-A053644(2*n+1)`
-/

namespace A038572.P14744491675811676287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (A080542 (2 * n + 1)).toNat - A053644 (2 * n + 1)

end

end A038572.P14744491675811676287

namespace A038572

/-- `A080542(A080542(2*n+1))-A053644(2*n+1)` -/
def P14744491675811676287.Spec : Prop :=
  ∀ n, P14744491675811676287.a n = A038572 n

end A038572

/-!
# A038573: a(n) = 2^A000120(n) - 1.

The programs for A038573, the canonical program `A038573.P5952807231814584452` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038573 has offset 0).

The definition of A038573 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038573.P4081796980278300748

`(n%2+1)*a(floor(n/2))+n%2` with `a(0)=0`
-/

namespace A038573.P4081796980278300748
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (n % 2 + 1) * a ⌊(n : ℚ) / 2⌋.toNat + n % 2

end

end A038573.P4081796980278300748

namespace A038573

/-- `(n%2+1)*a(floor(n/2))+n%2` -/
def P4081796980278300748.Spec : Prop :=
  ∀ n, (P4081796980278300748.a n : ℤ) = A038573 n

end A038573

/-! ## A038573.P5952807231814584452

`A001316(n)-1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038573

/-- `A001316(n)-1` -/
def P5952807231814584452.Spec : Prop :=
  ∀ n, P5952807231814584452.a n = A038573 n

theorem P5952807231814584452.correct : P5952807231814584452.Spec := by
  intro n
  simp only [A038573]

end A038573

/-! ## A038573.P5232786536822274358

`2^A000120(n)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A038573.P5232786536822274358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000120 n : ℤ) - 1

end

end A038573.P5232786536822274358

namespace A038573

/-- `2^A000120(n)-1` -/
def P5232786536822274358.Spec : Prop :=
  ∀ n, P5232786536822274358.a n = (A038573 n : ℚ)

end A038573

/-! ## A038573.P10006820124136872755

`2*a(and(n, n-1))+1` with `a(0)=0`
-/

namespace A038573.P10006820124136872755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

end

end A038573.P10006820124136872755

namespace A038573

/-- `2*a(and(n, n-1))+1` -/
def P10006820124136872755.Spec : Prop :=
  ∀ n, (P10006820124136872755.a n : ℤ) = A038573 n

end A038573

/-! ## A038573.P4731542473030744554

`lcm(2, a(and(n, n-1)))+1` with `a(0)=0`
-/

namespace A038573.P4731542473030744554
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 2 (a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) + 1

end

end A038573.P4731542473030744554

namespace A038573

/-- `lcm(2, a(and(n, n-1)))+1` -/
def P4731542473030744554.Spec : Prop :=
  ∀ n, (P4731542473030744554.a n : ℤ) = A038573 n

end A038573

/-! ## A038573.P12508022783546914903

`or(1, 2*a(and(n, n-1)))` with `a(0)=0`
-/

namespace A038573.P12508022783546914903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lor 1 (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A038573.P12508022783546914903

namespace A038573

/-- `or(1, 2*a(and(n, n-1)))` -/
def P12508022783546914903.Spec : Prop :=
  ∀ n, (P12508022783546914903.a n : ℤ) = A038573 n

end A038573

/-! ## A038573.P1594529646566303566

`xor(1, 2*a(and(n, n-1)))` with `a(0)=0`
-/

namespace A038573.P1594529646566303566
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat)

end

end A038573.P1594529646566303566

namespace A038573

/-- `xor(1, 2*a(and(n, n-1)))` -/
def P1594529646566303566.Spec : Prop :=
  ∀ n, (P1594529646566303566.a n : ℤ) = A038573 n

end A038573

/-! ## A038573.P17376225355289653246

`lcm(n, 2*(a(n-1)+1))/n-1` with `a(0)=0`
-/

namespace A038573.P17376225355289653246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  (Int.lcm (n : ℤ) (SequenceMachineLib.roundAway (2 * (a (n - 1) + 1))) : ℚ) / (n : ℚ) - 1

end

end A038573.P17376225355289653246

namespace A038573

/-- `lcm(n, 2*(a(n-1)+1))/n-1` -/
def P17376225355289653246.Spec : Prop :=
  ∀ n, P17376225355289653246.a n = (A038573 n : ℚ)

end A038573

/-! ## A038573.P9134919321591914918

`n-A048967(n)`
-/

namespace A038573.P9134919321591914918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A048967 n

end

end A038573.P9134919321591914918

namespace A038573

/-- `n-A048967(n)` -/
def P9134919321591914918.Spec : Prop :=
  ∀ n, P9134919321591914918.a n = A038573 n

end A038573

/-! ## A038573.P961311948279216863

`sqrt(A102376(n))-1`
-/

namespace A038573.P961311948279216863
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A102376 n : ℝ) - 1

end

end A038573.P961311948279216863

namespace A038573

/-- `sqrt(A102376(n))-1` -/
def P961311948279216863.Spec : Prop :=
  ∀ n, P961311948279216863.a n = (A038573 n : ℝ)

end A038573

/-! ## A038573.P5253494081822139591

`Δ[A006046(n)]-1`
-/

namespace A038573.P5253494081822139591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A038573.P5253494081822139591

namespace A038573

/-- `Δ[A006046(n)]-1` -/
def P5253494081822139591.Spec : Prop :=
  ∀ n, P5253494081822139591.a n = A038573 n

end A038573

/-! ## A038573.P11888662438164676802

`A060632(2*n)-1`
-/

namespace A038573.P11888662438164676802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060632 (2 * n) - 1

end

end A038573.P11888662438164676802

namespace A038573

/-- `A060632(2*n)-1` -/
def P11888662438164676802.Spec : Prop :=
  ∀ n, P11888662438164676802.a n = A038573 n

end A038573

/-! ## A038573.P9694363046117821325

`A117973(n)/2-1`
-/

namespace A038573.P9694363046117821325
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A117973 n : ℚ) / 2 - 1

end

end A038573.P9694363046117821325

namespace A038573

/-- `A117973(n)/2-1` -/
def P9694363046117821325.Spec : Prop :=
  ∀ n, P9694363046117821325.a n = (A038573 n : ℚ)

theorem P9694363046117821325.correct : P9694363046117821325.Spec := by
  intro n
  simp only [A038573, Nat.add_sub_cancel, A038573.P9694363046117821325.a, A038573.P5952807231814584452.a, A001316, A001316.P6850078358198232129.a, A117973, A117973.P11230116199213534894.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038573

/-! ## A038573.P2147971610157475727

`A160713(n)/3-1`
-/

namespace A038573.P2147971610157475727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160713 n : ℚ) / 3 - 1

end

end A038573.P2147971610157475727

namespace A038573

/-- `A160713(n)/3-1` -/
def P2147971610157475727.Spec : Prop :=
  ∀ n, P2147971610157475727.a n = (A038573 n : ℚ)

theorem P2147971610157475727.correct : P2147971610157475727.Spec := by
  intro n
  simp only [A038573, Nat.add_sub_cancel, A038573.P2147971610157475727.a, A038573.P5952807231814584452.a, A001316, A001316.P6850078358198232129.a, A160713, A160713.P13545516001355508578.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038573

/-! ## A038573.P3107127785746853737

`A256257(n)/6-1`
-/

namespace A038573.P3107127785746853737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256257 n : ℚ) / 6 - 1

end

end A038573.P3107127785746853737

namespace A038573

/-- `A256257(n)/6-1` -/
def P3107127785746853737.Spec : Prop :=
  ∀ n, P3107127785746853737.a n = (A038573 n : ℚ)

theorem P3107127785746853737.correct : P3107127785746853737.Spec := by
  intro n
  simp only [A038573, Nat.add_sub_cancel, A038573.P3107127785746853737.a, A038573.P5952807231814584452.a, A001316, A001316.P6850078358198232129.a, A256257, A256257.P3128146653347024265.a, A000120, A000120.P2816527436160941581.a, A160713, A160713.P13545516001355508578.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038573

/-! ## A038573.P4361879599009464558

`2*n-A071042(n)`
-/

namespace A038573.P4361879599009464558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A071042 n

end

end A038573.P4361879599009464558

namespace A038573

/-- `2*n-A071042(n)` -/
def P4361879599009464558.Spec : Prop :=
  ∀ n, P4361879599009464558.a n = A038573 n

end A038573

/-! ## A038573.P3738968719890604174

`∑[A151930(abs(1-n))]`
-/

namespace A038573.P3738968719890604174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151930 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038573.P3738968719890604174

namespace A038573

/-- `∑[A151930(abs(1-n))]` -/
def P3738968719890604174.Spec : Prop :=
  ∀ n, P3738968719890604174.a n = A038573 n

end A038573

/-! ## A038573.P10925878160316768814

`sqrt(Δ[A116520(n)])-1`
-/

namespace A038573.P10925878160316768814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116520 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f1 (n + 1) - f1 n : ℝ) - 1

end

end A038573.P10925878160316768814

namespace A038573

/-- `sqrt(Δ[A116520(n)])-1` -/
def P10925878160316768814.Spec : Prop :=
  ∀ n, P10925878160316768814.a n = (A038573 n : ℝ)

end A038573

/-! ## A038573.P11793786386892229167

`∑[1-Δ[A261366(n)]]`
-/

namespace A038573.P11793786386892229167
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261366 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038573.P11793786386892229167

namespace A038573

/-- `∑[1-Δ[A261366(n)]]` -/
def P11793786386892229167.Spec : Prop :=
  ∀ n, P11793786386892229167.a n = A038573 n

end A038573

/-! ## A038573.P3997387695488318923

`(A160723(n+1)-1)/3`
-/

namespace A038573.P3997387695488318923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160723 (n + 1) - 1 : ℚ) / 3

end

end A038573.P3997387695488318923

namespace A038573

/-- `(A160723(n+1)-1)/3` -/
def P3997387695488318923.Spec : Prop :=
  ∀ n, P3997387695488318923.a n = (A038573 n : ℚ)

theorem P3997387695488318923.correct : P3997387695488318923.Spec := by
  intro n
  simp only [A038573, Nat.add_sub_cancel, A038573.P3997387695488318923.a, A038573.P5952807231814584452.a, A001316, A001316.P6850078358198232129.a, A160723, A160723.P3417646803809005033.a, A000120, A000120.P2816527436160941581.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A038573

/-!
# A038574: Write n in ternary, sort digits into increasing order.

The programs for A038574, there is no canonical definition to state claims against.
-/

/-! ## A038574.P11944292574838208144

`A023745(A387188(n))`
-/

namespace A038574.P11944292574838208144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023745 (A387188 n).toNat

end

end A038574.P11944292574838208144

/-! ## A038574.P1618041889942953217

`A319651(n)-A164993(n)`
-/

namespace A038574.P1618041889942953217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319651 n - A164993 n

end

end A038574.P1618041889942953217

/-! ## A038574.P11185970406898698515

`A319803(n)-A319651(n)`
-/

namespace A038574.P11185970406898698515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319803 n - A319651 n

end

end A038574.P11185970406898698515

/-! ## A038574.P6305631678635404523

`A030102(A319651(n))`
-/

namespace A038574.P6305631678635404523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (A319651 n).toNat

end

end A038574.P6305631678635404523

/-! ## A038574.P8569373863713631559

`A319803(n)/2-A164994(n)`
-/

namespace A038574.P8569373863713631559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A319803 n : ℚ) / 2 - (A164994 n : ℚ)

end

end A038574.P8569373863713631559

/-! ## A038574.P4998095386849304763

`A004526(A319803(n))-A164994(n)`
-/

namespace A038574.P4998095386849304763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A319803 n).toNat - A164994 n

end

end A038574.P4998095386849304763

/-! ## A038574.P4543254157664940165

`A164994(A008585(n))-A008585(A164994(n))`
-/

namespace A038574.P4543254157664940165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164994 (A008585 n).toNat - A008585 (A164994 n).toNat

end

end A038574.P4543254157664940165

/-! ## A038574.P16973117555716895063

`A028898(A038586(n))`
-/

namespace A038574.P16973117555716895063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028898 (A038586 n).toNat

end

end A038574.P16973117555716895063

/-!
# A038575: Number of prime factors of n-th Fibonacci number, counted with multiplicity.

The programs for A038575, there is no canonical definition to state claims against.
-/

/-! ## A038575.P2040511010382509216

`∑{e}[A278245(A028310(n)), #]`
-/

namespace A038575.P2040511010382509216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278245 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A038575.P2040511010382509216

/-! ## A038575.P8390180281657814188

`∑{e}[A278245(A233583(n+1)), #]`
-/

namespace A038575.P8390180281657814188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278245 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A038575.P8390180281657814188

/-! ## A038575.P7388267809578212798

`A001222(A278245(gcd(n, C(2, n))))`
-/

namespace A038575.P7388267809578212798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278245 (Nat.gcd n (Nat.choose 2 n))).toNat

end

end A038575.P7388267809578212798

/-! ## A038575.P3844111453364982030

`A001222(A278245(floor(acot(n)+n)))`
-/

namespace A038575.P3844111453364982030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278245 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat).toNat

end

end A038575.P3844111453364982030

/-! ## A038575.P16167243440393851933

`A001222(A278245(round(acot(n)+n)))`
-/

namespace A038575.P16167243440393851933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278245 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat).toNat

end

end A038575.P16167243440393851933

/-!
# A038576: CONTINUANT transform of {phi(n)}, 1, 1, 2, 2, 4, 2, .. (A002088).

The programs for A038576, the canonical program `A038576.P5654296326106724929` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038576 has offset 1).

The definition of A038576 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038576.P5654296326106724929

`A000010(n+1)*a(n-1)+a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A038576

/-- `A000010(n+1)*a(n-1)+a(n-2)` -/
def P5654296326106724929.Spec : Prop :=
  ∀ n, P5654296326106724929.a n = A038576 (n + 1)

theorem P5654296326106724929.correct : P5654296326106724929.Spec := by
  intro n
  simp only [A038576, Nat.add_sub_cancel]

end A038576

/-!
# A038577: Number of self-avoiding walks of length n from origin in strip Z X {0,1}.

The programs for A038577, there is no canonical definition to state claims against.
-/

/-! ## A038577.P4599696298665822125

`A154955(n+1)+A110935(n)`
-/

namespace A038577.P4599696298665822125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154955 (n + 1) + A110935 n

end

end A038577.P4599696298665822125

/-! ## A038577.P13074331379167633727

`A110935(n)+A008683(A025586(n+1))`
-/

namespace A038577.P13074331379167633727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110935 n + A008683 (A025586 (n + 1)).toNat

end

end A038577.P13074331379167633727

/-! ## A038577.P12927817069653364275

`A110935(n)+A008683(Δ[A067945(n+1)])`
-/

namespace A038577.P12927817069653364275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067945 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110935 n + A008683 (f1 (n + 1) - f1 n).toNat

end

end A038577.P12927817069653364275

/-! ## A038577.P10331598141797826586

`A110935(n)+A008683(A023898(n+1))`
-/

namespace A038577.P10331598141797826586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110935 n + A008683 (A023898 (n + 1)).toNat

end

end A038577.P10331598141797826586

/-! ## A038577.P589811689697645034

`A110935(n)+A008683(A067945(n+1))`
-/

namespace A038577.P589811689697645034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110935 n + A008683 (A067945 (n + 1)).toNat

end

end A038577.P589811689697645034

/-! ## A038577.P15352258674208015463

`A110935(n)+A008683(A029930(n))`
-/

namespace A038577.P15352258674208015463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110935 n + A008683 (A029930 n).toNat

end

end A038577.P15352258674208015463

/-! ## A038577.P637117199569199689

`A110935(n)+A008683(A025613(n+1))`
-/

namespace A038577.P637117199569199689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110935 n + A008683 (A025613 (n + 1)).toNat

end

end A038577.P637117199569199689

/-!
# A038578: Number of self-avoiding closed walks from 0 of area n in strip Z X {-1,0,1}.

The programs for A038578, there is no canonical definition to state claims against.
-/

/-! ## A038578.P10040776300632130817

`A158411(A000302(n))*A291397(n)`
-/

namespace A038578.P10040776300632130817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158411 (A000302 n).toNat * A291397 n

end

end A038578.P10040776300632130817

/-! ## A038578.P5873501523458464250

`A158411(A291397(n)²)*A291397(n)`
-/

namespace A038578.P5873501523458464250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158411 (A291397 n ^ 2).toNat * A291397 n

end

end A038578.P5873501523458464250

/-!
# A038579: Number of self-avoiding closed walks from 0 of area n in strip Z X {0,1,2}.

The programs for A038579, there is no canonical definition to state claims against.
-/

/-! ## A038579.P16334753976701862350

`∑[∑[A344838(A339684(n+1))]]`
-/

namespace A038579.P16334753976701862350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344838 (A339684 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038579.P16334753976701862350

/-! ## A038579.P2308737040842865641

`A175656(n+1)-A227783(A227807(n+11))`
-/

namespace A038579.P2308737040842865641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175656 (n + 1) - A227783 (A227807 (n + 11)).toNat

end

end A038579.P2308737040842865641

/-!
# A038580: Primes with indices that are primes with prime indices.

The programs for A038580, the canonical program `A038580.P18310898613718582429` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038580 has offset 1).

The definition of A038580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038580.P18310898613718582429

`A000040(A000040(A000040(n+1)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038580

/-- `A000040(A000040(A000040(n+1)))` -/
def P18310898613718582429.Spec : Prop :=
  ∀ n, P18310898613718582429.a n = A038580 (n + 1)

theorem P18310898613718582429.correct : P18310898613718582429.Spec := by
  intro n
  simp only [A038580, Nat.add_sub_cancel]

end A038580

/-! ## A038580.P4942032084140414904

`A378027(n+1)+A006450(n+1)`
-/

namespace A038580.P4942032084140414904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378027 (n + 1) + A006450 (n + 1)

end

end A038580.P4942032084140414904

namespace A038580

/-- `A378027(n+1)+A006450(n+1)` -/
def P4942032084140414904.Spec : Prop :=
  ∀ n, P4942032084140414904.a n = A038580 (n + 1)

theorem P4942032084140414904.correct : P4942032084140414904.Spec := by
  intro n
  simp only [A038580, Nat.add_sub_cancel, A038580.P4942032084140414904.a, A038580.P18310898613718582429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A378027, A378027.P2516659449213067990.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038580

/-! ## A038580.P4306175426886937586

`∪[A049079(n+1), A049090(n+1)]`
-/

namespace A038580.P4306175426886937586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049079 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038580.P4306175426886937586

namespace A038580

/-- `∪[A049079(n+1), A049090(n+1)]` -/
def P4306175426886937586.Spec : Prop :=
  ∀ n, (P4306175426886937586.a n : ℤ) = A038580 (n + 1)

end A038580

/-! ## A038580.P7048574033488485389

`∪[A049090(n+1), A333243(n+1)]`
-/

namespace A038580.P7048574033488485389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333243 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038580.P7048574033488485389

namespace A038580

/-- `∪[A049090(n+1), A333243(n+1)]` -/
def P7048574033488485389.Spec : Prop :=
  ∀ n, (P7048574033488485389.a n : ℤ) = A038580 (n + 1)

end A038580

/-! ## A038580.P4896273430274967854

`∪[A333243(n+1), A333244(n+1)]`
-/

namespace A038580.P4896273430274967854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333243 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038580.P4896273430274967854

namespace A038580

/-- `∪[A333243(n+1), A333244(n+1)]` -/
def P4896273430274967854.Spec : Prop :=
  ∀ n, (P4896273430274967854.a n : ℤ) = A038580 (n + 1)

end A038580

/-! ## A038580.P12857475608215451734

`A006450(Δ[A007504(n)])`
-/

namespace A038580.P12857475608215451734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (n + 1) - f1 n).toNat

end

end A038580.P12857475608215451734

namespace A038580

/-- `A006450(Δ[A007504(n)])` -/
def P12857475608215451734.Spec : Prop :=
  ∀ n, P12857475608215451734.a n = A038580 (n + 1)

end A038580

/-! ## A038580.P8261670729737471980

`A006450(A000040(n+1))`
-/

namespace A038580.P8261670729737471980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A000040 (n + 1)).toNat

end

end A038580.P8261670729737471980

namespace A038580

/-- `A006450(A000040(n+1))` -/
def P8261670729737471980.Spec : Prop :=
  ∀ n, P8261670729737471980.a n = A038580 (n + 1)

end A038580

/-! ## A038580.P2752589377281927440

`A006450(A008578(n+2))`
-/

namespace A038580.P2752589377281927440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A008578 (n + 2)).toNat

end

end A038580.P2752589377281927440

namespace A038580

/-- `A006450(A008578(n+2))` -/
def P2752589377281927440.Spec : Prop :=
  ∀ n, P2752589377281927440.a n = A038580 (n + 1)

end A038580

/-! ## A038580.P4581594095604154229

`A006450(A182986(n+2))`
-/

namespace A038580.P4581594095604154229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A182986 (n + 2)).toNat

end

end A038580.P4581594095604154229

namespace A038580

/-- `A006450(A182986(n+2))` -/
def P4581594095604154229.Spec : Prop :=
  ∀ n, P4581594095604154229.a n = A038580 (n + 1)

end A038580

/-! ## A038580.P14243945842890556465

`A006450(A158611(n+3))`
-/

namespace A038580.P14243945842890556465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A158611 (n + 3)).toNat

end

end A038580.P14243945842890556465

namespace A038580

/-- `A006450(A158611(n+3))` -/
def P14243945842890556465.Spec : Prop :=
  ∀ n, P14243945842890556465.a n = A038580 (n + 1)

end A038580

/-! ## A038580.P13289640849758641690

`A006450(∑[A054541(n+1)])`
-/

namespace A038580.P13289640849758641690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038580.P13289640849758641690

namespace A038580

/-- `A006450(∑[A054541(n+1)])` -/
def P13289640849758641690.Spec : Prop :=
  ∀ n, P13289640849758641690.a n = A038580 (n + 1)

end A038580

/-! ## A038580.P16906074544779218474

`A006450(record[A006530(n+2)])`
-/

namespace A038580.P16906074544779218474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038580.P16906074544779218474

namespace A038580

/-- `A006450(record[A006530(n+2)])` -/
def P16906074544779218474.Spec : Prop :=
  ∀ n, P16906074544779218474.a n = A038580 (n + 1)

end A038580

/-! ## A038580.P14631696122520844341

`A006450(record[A008472(n+2)])`
-/

namespace A038580.P14631696122520844341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038580.P14631696122520844341

namespace A038580

/-- `A006450(record[A008472(n+2)])` -/
def P14631696122520844341.Spec : Prop :=
  ∀ n, P14631696122520844341.a n = A038580 (n + 1)

end A038580

/-! ## A038580.P16236699915079422696

`A006450(record[A020639(n+2)])`
-/

namespace A038580.P16236699915079422696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A038580.P16236699915079422696

namespace A038580

/-- `A006450(record[A020639(n+2)])` -/
def P16236699915079422696.Spec : Prop :=
  ∀ n, P16236699915079422696.a n = A038580 (n + 1)

end A038580

/-! ## A038580.P10471618901780782050

`A006450(A006093(n+1)+1)`
-/

namespace A038580.P10471618901780782050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A006093 (n + 1) + 1).toNat

end

end A038580.P10471618901780782050

namespace A038580

/-- `A006450(A006093(n+1)+1)` -/
def P10471618901780782050.Spec : Prop :=
  ∀ n, P10471618901780782050.a n = A038580 (n + 1)

theorem P10471618901780782050.correct : P10471618901780782050.Spec := by
  intro n
  simp only [A038580, Nat.add_sub_cancel, A038580.P10471618901780782050.a, A038580.P18310898613718582429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006093, A006093.P2906174024863549003.a, A006450, A006450.P16445646407241112379.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038580

/-! ## A038580.P9598924612171887584

`A006450(A040976(n+1)+2)`
-/

namespace A038580.P9598924612171887584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A040976 (n + 1) + 2).toNat

end

end A038580.P9598924612171887584

namespace A038580

/-- `A006450(A040976(n+1)+2)` -/
def P9598924612171887584.Spec : Prop :=
  ∀ n, P9598924612171887584.a n = A038580 (n + 1)

theorem P9598924612171887584.correct : P9598924612171887584.Spec := by
  intro n
  simp only [A038580, Nat.add_sub_cancel, A038580.P9598924612171887584.a, A038580.P18310898613718582429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038580

/-! ## A038580.P8489932130507039055

`A006450(A052147(n+1)-2)`
-/

namespace A038580.P8489932130507039055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A052147 (n + 1) - 2).toNat

end

end A038580.P8489932130507039055

namespace A038580

/-- `A006450(A052147(n+1)-2)` -/
def P8489932130507039055.Spec : Prop :=
  ∀ n, P8489932130507039055.a n = A038580 (n + 1)

theorem P8489932130507039055.correct : P8489932130507039055.Spec := by
  intro n
  simp only [A038580, Nat.add_sub_cancel, A038580.P8489932130507039055.a, A038580.P18310898613718582429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038580

/-! ## A038580.P17642817012940394074

`A006450(A100484(n+1)/2)`
-/

namespace A038580.P17642817012940394074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A038580.P17642817012940394074

namespace A038580

/-- `A006450(A100484(n+1)/2)` -/
def P17642817012940394074.Spec : Prop :=
  ∀ n, P17642817012940394074.a n = A038580 (n + 1)

end A038580

/-! ## A038580.P1492141309819752180

`A006450(A014692(n+1)+n)`
-/

namespace A038580.P1492141309819752180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A014692 (n + 1) + (n : ℤ)).toNat

end

end A038580.P1492141309819752180

namespace A038580

/-- `A006450(A014692(n+1)+n)` -/
def P1492141309819752180.Spec : Prop :=
  ∀ n, P1492141309819752180.a n = A038580 (n + 1)

theorem P1492141309819752180.correct : P1492141309819752180.Spec := by
  intro n
  simp only [A038580, Nat.add_sub_cancel, A038580.P1492141309819752180.a, A038580.P18310898613718582429.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A006450, A006450.P16445646407241112379.a, A014692, A014692.P2004927767556050134.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038580

/-!
# A038581: Absolute value of first differences of A038552, divided by 24.

The programs for A038581, there is no canonical definition to state claims against.
-/

/-! ## A038581.P11942018884543534414

`abs(A038552(n+2)-A038552(n+1))/24`
-/

namespace A038581.P11942018884543534414
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A038552 (n + 2) - A038552 (n + 1)| : ℚ) / 24

end

end A038581.P11942018884543534414

/-! ## A038581.P4950896252550976855

`abs(Δ[A038552(n+1)/24])`
-/

namespace A038581.P4950896252550976855
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038552 (n + 1) : ℚ) / 24

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A038581.P4950896252550976855

/-! ## A038581.P5640920506475035375

`round(sqrt(Δ[A038552(((-1)^n)²+n)/24]²+1))`
-/

namespace A038581.P5640920506475035375
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038552 (((-1) ^ n) ^ 2 + (n : ℤ)).toNat : ℚ) / 24

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((f1 (n + 1) - f1 n) ^ 2 + 1 : ℝ))

end

end A038581.P5640920506475035375

/-! ## A038581.P9076431311300901694

`lcm(Δ[A038552(n+1)/24], A064179(n+1))`
-/

namespace A038581.P9076431311300901694
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038552 (n + 1) : ℚ) / 24

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)) (A064179 (n + 1))

end

end A038581.P9076431311300901694

/-! ## A038581.P3609501966478280593

`Δ[A038552(A330336(n)+1)/24]`
-/

namespace A038581.P3609501966478280593
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038552 (A330336 n + 1).toNat : ℚ) / 24

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038581.P3609501966478280593

/-!
# A038582: Numbers k such that sum of the first k primes is a palindrome.

The programs for A038582, there is no canonical definition to state claims against.
-/

/-! ## A038582.P6253255443526108266

`A000720(A038584(n+1))`
-/

namespace A038582.P6253255443526108266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A038584 (n + 1)).toNat

end

end A038582.P6253255443526108266

/-!
# A038583: Palindromes that are the sum of consecutive initial primes.

The programs for A038583, there is no canonical definition to state claims against.
-/

/-! ## A038583.P14347854061120543524

`A007504(A038582(n+1))`
-/

namespace A038583.P14347854061120543524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A038582 (n + 1)).toNat

end

end A038583.P14347854061120543524

/-!
# A038584: Primes p such that the sum of the primes from 2 through p is a palindrome.

The programs for A038584, there is no canonical definition to state claims against.
-/

/-! ## A038584.P7333614777133899565

`A000040(A038582(n+1))`
-/

namespace A038584.P7333614777133899565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A038582 (n + 1)).toNat

end

end A038584.P7333614777133899565

/-!
# A038585: Write n in binary, delete 0's.

The programs for A038585, the canonical program `A038585.P5564166495363490604` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038585 has offset 1).

The definition of A038585 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A038585.P9013087609555130895

`(9*(n+1)%2+1)*a(floor((n+1)/2)-1)+(n+1)%2` with `a(0)=1`
-/

namespace A038585.P9013087609555130895
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (9 * ((n + 1) % 2) + 1) * a (⌊(n + 1 : ℚ) / 2⌋ - 1).toNat + (n + 1) % 2

end

end A038585.P9013087609555130895

namespace A038585

/-- `(9*(n+1)%2+1)*a(floor((n+1)/2)-1)+(n+1)%2` -/
def P9013087609555130895.Spec : Prop :=
  ∀ n, (P9013087609555130895.a n : ℤ) = A038585 (n + 1)

end A038585

/-! ## A038585.P5564166495363490604

`A002275(A000120(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A038585

/-- `A002275(A000120(n+1))` -/
def P5564166495363490604.Spec : Prop :=
  ∀ n, P5564166495363490604.a n = A038585 (n + 1)

theorem P5564166495363490604.correct : P5564166495363490604.Spec := by
  intro n
  simp only [A038585, Nat.add_sub_cancel]

end A038585

/-! ## A038585.P4773538927447585771

`A002275(n-∑[val(n+1, 2)]+1)`
-/

namespace A038585.P4773538927447585771
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 1).toNat

end

end A038585.P4773538927447585771

namespace A038585

/-- `A002275(n-∑[val(n+1, 2)]+1)` -/
def P4773538927447585771.Spec : Prop :=
  ∀ n, P4773538927447585771.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P4819314383541034669

`A038713(A048896(n))`
-/

namespace A038585.P4819314383541034669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038713 (A048896 n).toNat

end

end A038585.P4819314383541034669

namespace A038585

/-- `A038713(A048896(n))` -/
def P4819314383541034669.Spec : Prop :=
  ∀ n, P4819314383541034669.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P3681627912202480390

`A131664(A389902(n))`
-/

namespace A038585.P3681627912202480390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131664 (A389902 n).toNat

end

end A038585.P3681627912202480390

namespace A038585

/-- `A131664(A389902(n))` -/
def P3681627912202480390.Spec : Prop :=
  ∀ n, P3681627912202480390.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P11051399281354267487

`A002275(Δ[A000788(n)])`
-/

namespace A038585.P11051399281354267487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (f1 (n + 1) - f1 n).toNat

end

end A038585.P11051399281354267487

namespace A038585

/-- `A002275(Δ[A000788(n)])` -/
def P11051399281354267487.Spec : Prop :=
  ∀ n, P11051399281354267487.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P8672054111501130041

`A002275(A048881(n)+1)`
-/

namespace A038585.P8672054111501130041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A048881 n + 1).toNat

end

end A038585.P8672054111501130041

namespace A038585

/-- `A002275(A048881(n)+1)` -/
def P8672054111501130041.Spec : Prop :=
  ∀ n, P8672054111501130041.a n = A038585 (n + 1)

theorem P8672054111501130041.correct : P8672054111501130041.Spec := by
  intro n
  simp only [A038585, Nat.add_sub_cancel, A038585.P8672054111501130041.a, A038585.P5564166495363490604.a, A000120, A000120.P2816527436160941581.a, A002275, A002275.P11331712682657475845.a, A048881, A048881.P16567064232951496228.a, A005187, A005187.P3874015513960485494.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038585

/-! ## A038585.P15739891501164786255

`A007088(A071055(n)+1)`
-/

namespace A038585.P15739891501164786255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A071055 n + 1).toNat

end

end A038585.P15739891501164786255

namespace A038585

/-- `A007088(A071055(n)+1)` -/
def P15739891501164786255.Spec : Prop :=
  ∀ n, P15739891501164786255.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P8662897605499113127

`A007931(A071055(n)+1)`
-/

namespace A038585.P8662897605499113127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A071055 n + 1).toNat

end

end A038585.P8662897605499113127

namespace A038585

/-- `A007931(A071055(n)+1)` -/
def P8662897605499113127.Spec : Prop :=
  ∀ n, P8662897605499113127.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P2091609455062542594

`A081242(A001316(n+1))`
-/

namespace A038585.P2091609455062542594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081242 (A001316 (n + 1)).toNat

end

end A038585.P2091609455062542594

namespace A038585

/-- `A081242(A001316(n+1))` -/
def P2091609455062542594.Spec : Prop :=
  ∀ n, P2091609455062542594.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P6518731338286505340

`A256077(2*A048896(n))`
-/

namespace A038585.P6518731338286505340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256077 (2 * A048896 n).toNat

end

end A038585.P6518731338286505340

namespace A038585

/-- `A256077(2*A048896(n))` -/
def P6518731338286505340.Spec : Prop :=
  ∀ n, P6518731338286505340.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P12145292250319900997

`A007088(or(1, A071055(n)))`
-/

namespace A038585.P12145292250319900997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor 1 (A071055 n)).toNat

end

end A038585.P12145292250319900997

namespace A038585

/-- `A007088(or(1, A071055(n)))` -/
def P12145292250319900997.Spec : Prop :=
  ∀ n, P12145292250319900997.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P1968995445450352443

`A007088(xor(1, A071055(n)))`
-/

namespace A038585.P1968995445450352443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.xor 1 (A071055 n)).toNat

end

end A038585.P1968995445450352443

namespace A038585

/-- `A007088(xor(1, A071055(n)))` -/
def P1968995445450352443.Spec : Prop :=
  ∀ n, P1968995445450352443.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P4634793175693867973

`A007088(A001316(n+1)-1)`
-/

namespace A038585.P4634793175693867973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A001316 (n + 1) - 1).toNat

end

end A038585.P4634793175693867973

namespace A038585

/-- `A007088(A001316(n+1)-1)` -/
def P4634793175693867973.Spec : Prop :=
  ∀ n, P4634793175693867973.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P4698757147654554259

`A007931(A001316(n+1)-1)`
-/

namespace A038585.P4698757147654554259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007931 (A001316 (n + 1) - 1).toNat

end

end A038585.P4698757147654554259

namespace A038585

/-- `A007931(A001316(n+1)-1)` -/
def P4698757147654554259.Spec : Prop :=
  ∀ n, P4698757147654554259.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P6090285234313679684

`A305989(A001316(n+1)-1)`
-/

namespace A038585.P6090285234313679684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A001316 (n + 1) - 1).toNat

end

end A038585.P6090285234313679684

namespace A038585

/-- `A305989(A001316(n+1)-1)` -/
def P6090285234313679684.Spec : Prop :=
  ∀ n, P6090285234313679684.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P2922579521440652659

`A337099(2*A000120(n+1))`
-/

namespace A038585.P2922579521440652659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337099 (2 * A000120 (n + 1)).toNat

end

end A038585.P2922579521440652659

namespace A038585

/-- `A337099(2*A000120(n+1))` -/
def P2922579521440652659.Spec : Prop :=
  ∀ n, P2922579521440652659.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P14933475591735288065

`A007088(2*A048896(n)-1)`
-/

namespace A038585.P14933475591735288065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (2 * A048896 n - 1).toNat

end

end A038585.P14933475591735288065

namespace A038585

/-- `A007088(2*A048896(n)-1)` -/
def P14933475591735288065.Spec : Prop :=
  ∀ n, P14933475591735288065.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P5036675683193220164

`A096299(A001316(n+1)/2)`
-/

namespace A038585.P5036675683193220164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096299 (SequenceMachineLib.roundAway ((A001316 (n + 1) : ℚ) / 2)).toNat

end

end A038585.P5036675683193220164

namespace A038585

/-- `A096299(A001316(n+1)/2)` -/
def P5036675683193220164.Spec : Prop :=
  ∀ n, P5036675683193220164.a n = A038585 (n + 1)

end A038585

/-! ## A038585.P6439848716347488384

`A007088(n+1-A048967(n+1))`
-/

namespace A038585.P6439848716347488384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 ((n + 1 : ℤ) - A048967 (n + 1)).toNat

end

end A038585.P6439848716347488384

namespace A038585

/-- `A007088(n+1-A048967(n+1))` -/
def P6439848716347488384.Spec : Prop :=
  ∀ n, P6439848716347488384.a n = A038585 (n + 1)

end A038585

/-!
# A038586: Write n in ternary then sort the digits.

The programs for A038586, there is no canonical definition to state claims against.
-/

/-! ## A038586.P16442601555831213616

`A007089(A038574(n))`
-/

namespace A038586.P16442601555831213616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A038574 n).toNat

end

end A038586.P16442601555831213616

/-! ## A038586.P12576340570228189995

`A087712(A006047(n))-A000007(n)`
-/

namespace A038586.P12576340570228189995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A006047 n).toNat - A000007 n

end

end A038586.P12576340570228189995

/-! ## A038586.P3401240517042726649

`A087712(A006047(n))%A239426(n)`
-/

namespace A038586.P3401240517042726649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087712 (A006047 n).toNat) (A239426 n)

end

end A038586.P3401240517042726649

/-! ## A038586.P4536807366504437079

`A087712(A006047(n))-A000038(n)/2`
-/

namespace A038586.P4536807366504437079
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087712 (A006047 n).toNat : ℚ) - (A000038 n : ℚ) / 2

end

end A038586.P4536807366504437079

/-! ## A038586.P11107872183968538370

`A087712(A006047(n))-A008574(n)%2`
-/

namespace A038586.P11107872183968538370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A006047 n).toNat - Int.tmod (A008574 n) 2

end

end A038586.P11107872183968538370

/-! ## A038586.P13585921960777240153

`A087712(A006047(n))-A086932(n+1)%2`
-/

namespace A038586.P13585921960777240153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A006047 n).toNat - Int.tmod (A086932 (n + 1)) 2

end

end A038586.P13585921960777240153

/-! ## A038586.P3996836955220373857

`A087712(A006047(A000038(n)+n))-A000038(n)`
-/

namespace A038586.P3996836955220373857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A006047 (A000038 n + (n : ℤ)).toNat).toNat - A000038 n

end

end A038586.P3996836955220373857

/-! ## A038586.P4672302346542104003

`A305877(A319651(n))`
-/

namespace A038586.P4672302346542104003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305877 (A319651 n).toNat

end

end A038586.P4672302346542104003

/-! ## A038586.P735314810429430867

`A087712(A006047(n))-A086932(A008574(n))`
-/

namespace A038586.P735314810429430867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A006047 n).toNat - A086932 (A008574 n).toNat

end

end A038586.P735314810429430867

/-! ## A038586.P16965047564689363362

`A087712(A006047(n))*A324113(2*n+3)`
-/

namespace A038586.P16965047564689363362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087712 (A006047 n).toNat * A324113 (2 * n + 3)

end

end A038586.P16965047564689363362

/-!
# A038587: Sizes of successive clusters in hexagonal lattice A_2 centered at deep hole.

The programs for A038587, the canonical program `A038587.P18029741549322607791` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038587 has offset 0).

The definition of A038587 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038587.P18029741549322607791

`∑[A005882(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A038587

/-- `∑[A005882(n)]` -/
def P18029741549322607791.Spec : Prop :=
  ∀ n, P18029741549322607791.a n = A038587 n

theorem P18029741549322607791.correct : P18029741549322607791.Spec := by
  intro n
  simp only [A038587]

end A038587

/-! ## A038587.P16573447642412674699

`∑[3*A033687(n)]`
-/

namespace A038587.P16573447642412674699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A033687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P16573447642412674699

namespace A038587

/-- `∑[3*A033687(n)]` -/
def P16573447642412674699.Spec : Prop :=
  ∀ n, P16573447642412674699.a n = A038587 n

end A038587

/-! ## A038587.P4469482415033850932

`∑[A008585(A033687(n))]`
-/

namespace A038587.P4469482415033850932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A033687 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P4469482415033850932

namespace A038587

/-- `∑[A008585(A033687(n))]` -/
def P4469482415033850932.Spec : Prop :=
  ∀ n, P4469482415033850932.a n = A038587 n

end A038587

/-! ## A038587.P13069460310963052044

`∑[A129576(n)*A176040(n)]`
-/

namespace A038587.P13069460310963052044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129576 n * A176040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P13069460310963052044

namespace A038587

/-- `∑[A129576(n)*A176040(n)]` -/
def P13069460310963052044.Spec : Prop :=
  ∀ n, P13069460310963052044.a n = A038587 n

end A038587

/-! ## A038587.P17749973410679311282

`∑[(A033999(n)+2)*A129576(n)]`
-/

namespace A038587.P17749973410679311282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033999 n + 2) * A129576 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P17749973410679311282

namespace A038587

/-- `∑[(A033999(n)+2)*A129576(n)]` -/
def P17749973410679311282.Spec : Prop :=
  ∀ n, P17749973410679311282.a n = A038587 n

end A038587

/-! ## A038587.P37915311033964631

`∑[A008585(A129576(n)/A276391(n+1))]`
-/

namespace A038587.P37915311033964631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (SequenceMachineLib.roundAway ((A129576 n : ℚ) / (A276391 (n + 1) : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P37915311033964631

namespace A038587

/-- `∑[A008585(A129576(n)/A276391(n+1))]` -/
def P37915311033964631.Spec : Prop :=
  ∀ n, P37915311033964631.a n = A038587 n

end A038587

/-! ## A038587.P10397580624470497293

`A008486(∑[A033687(n)])`
-/

namespace A038587.P10397580624470497293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A038587.P10397580624470497293

namespace A038587

/-- `A008486(∑[A033687(n)])` -/
def P10397580624470497293.Spec : Prop :=
  ∀ n, P10397580624470497293.a n = A038587 n

end A038587

/-! ## A038587.P8531587266828816854

`∑[3*A113063(3*n+1)]`
-/

namespace A038587.P8531587266828816854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A113063 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P8531587266828816854

namespace A038587

/-- `∑[3*A113063(3*n+1)]` -/
def P8531587266828816854.Spec : Prop :=
  ∀ n, P8531587266828816854.a n = A038587 n

end A038587

/-! ## A038587.P2881167545571494875

`∑[abs(A005928(3*n+1))]`
-/

namespace A038587.P2881167545571494875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005928 (3 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P2881167545571494875

namespace A038587

/-- `∑[abs(A005928(3*n+1))]` -/
def P2881167545571494875.Spec : Prop :=
  ∀ n, P2881167545571494875.a n = A038587 n

end A038587

/-! ## A038587.P3274681417998364396

`∑[3*A002324(3*n+1)]`
-/

namespace A038587.P3274681417998364396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002324 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P3274681417998364396

namespace A038587

/-- `∑[3*A002324(3*n+1)]` -/
def P3274681417998364396.Spec : Prop :=
  ∀ n, P3274681417998364396.a n = A038587 n

end A038587

/-! ## A038587.P13538626346936080919

`∑[3*abs(A113447(3*n+1))]`
-/

namespace A038587.P13538626346936080919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * |A113447 (3 * n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P13538626346936080919

namespace A038587

/-- `∑[3*abs(A113447(3*n+1))]` -/
def P13538626346936080919.Spec : Prop :=
  ∀ n, P13538626346936080919.a n = A038587 n

end A038587

/-! ## A038587.P8655192203857235973

`∑[-A005928(2*n+1+n)]`
-/

namespace A038587.P8655192203857235973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A005928 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P8655192203857235973

namespace A038587

/-- `∑[-A005928(2*n+1+n)]` -/
def P8655192203857235973.Spec : Prop :=
  ∀ n, P8655192203857235973.a n = A038587 n

end A038587

/-! ## A038587.P7368189085963218103

`∑[A107760(A165355(n))]`
-/

namespace A038587.P7368189085963218103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 (A165355 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P7368189085963218103

namespace A038587

/-- `∑[A107760(A165355(n))]` -/
def P7368189085963218103.Spec : Prop :=
  ∀ n, P7368189085963218103.a n = A038587 n

end A038587

/-! ## A038587.P16505702105210692173

`∑[A107760(A067745(n+1))]`
-/

namespace A038587.P16505702105210692173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 (A067745 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P16505702105210692173

namespace A038587

/-- `∑[A107760(A067745(n+1))]` -/
def P16505702105210692173.Spec : Prop :=
  ∀ n, P16505702105210692173.a n = A038587 n

end A038587

/-! ## A038587.P10503954731471427533

`∑[A107760(2*n+1+n)]`
-/

namespace A038587.P10503954731471427533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107760 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P10503954731471427533

namespace A038587

/-- `∑[A107760(2*n+1+n)]` -/
def P10503954731471427533.Spec : Prop :=
  ∀ n, P10503954731471427533.a n = A038587 n

end A038587

/-! ## A038587.P720589975713298075

`∑[A113062(2*n+1+n)]`
-/

namespace A038587.P720589975713298075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 (2 * n + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P720589975713298075

namespace A038587

/-- `∑[A113062(2*n+1+n)]` -/
def P720589975713298075.Spec : Prop :=
  ∀ n, P720589975713298075.a n = A038587 n

end A038587

/-! ## A038587.P5287590873663368817

`∑[A129576(2*n+2*n+1)]`
-/

namespace A038587.P5287590873663368817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129576 (2 * n + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P5287590873663368817

namespace A038587

/-- `∑[A129576(2*n+2*n+1)]` -/
def P5287590873663368817.Spec : Prop :=
  ∀ n, P5287590873663368817.a n = A038587 n

end A038587

/-! ## A038587.P9661304609390796831

`∑[A033685(3*n+1)]`
-/

namespace A038587.P9661304609390796831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033685 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P9661304609390796831

namespace A038587

/-- `∑[A033685(3*n+1)]` -/
def P9661304609390796831.Spec : Prop :=
  ∀ n, P9661304609390796831.a n = A038587 n

end A038587

/-! ## A038587.P2490018047468398346

`∑[3*A123477(3*n+1)]`
-/

namespace A038587.P2490018047468398346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A123477 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038587.P2490018047468398346

namespace A038587

/-- `∑[3*A123477(3*n+1)]` -/
def P2490018047468398346.Spec : Prop :=
  ∀ n, P2490018047468398346.a n = A038587 n

end A038587

/-!
# A038588: Sizes of clusters in hexagonal lattice A_2 centered at deep hole.

The programs for A038588, the canonical program `A038588.P5041427114804262842` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038588 has offset 0).

The definition of A038588 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4134 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038588.P5308171797889047587

`∩[3*n, A038591(n)]`
-/

namespace A038588.P5308171797889047587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038588.P5308171797889047587

namespace A038588

/-- `∩[3*n, A038591(n)]` -/
def P5308171797889047587.Spec : Prop :=
  ∀ n, (P5308171797889047587.a n : ℤ) = A038588 n

end A038588

/-! ## A038588.P5041427114804262842

`A038587(A267137(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A038588

/-- `A038587(A267137(n+1))` -/
def P5041427114804262842.Spec : Prop :=
  ∀ n, P5041427114804262842.a n = A038588 n

theorem P5041427114804262842.correct : P5041427114804262842.Spec := by
  intro n
  simp only [A038588]

end A038588

/-! ## A038588.P3469040372481983221

`record[A038587(A305800(n+1)-1)]`
-/

namespace A038588.P3469040372481983221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038587 (A305800 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038588.P3469040372481983221

namespace A038588

/-- `record[A038587(A305800(n+1)-1)]` -/
def P3469040372481983221.Spec : Prop :=
  ∀ n, P3469040372481983221.a n = A038588 n

end A038588

/-! ## A038588.P276214164248854846

`record[A038587(n)%A038587(n+1)]`
-/

namespace A038588.P276214164248854846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038587 n) (A038587 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038588.P276214164248854846

namespace A038588

/-- `record[A038587(n)%A038587(n+1)]` -/
def P276214164248854846.Spec : Prop :=
  ∀ n, P276214164248854846.a n = A038588 n

end A038588

/-! ## A038588.P16575037721597962518

`∩[A038591(n), A305495(n+1)]`
-/

namespace A038588.P16575037721597962518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305495 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038588.P16575037721597962518

namespace A038588

/-- `∩[A038591(n), A305495(n+1)]` -/
def P16575037721597962518.Spec : Prop :=
  ∀ n, (P16575037721597962518.a n : ℤ) = A038588 n

end A038588

/-! ## A038588.P12461245050084313109

`record[A038587(A341311(n+1))]`
-/

namespace A038588.P12461245050084313109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038587 (A341311 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038588.P12461245050084313109

namespace A038588

/-- `record[A038587(A341311(n+1))]` -/
def P12461245050084313109.Spec : Prop :=
  ∀ n, P12461245050084313109.a n = A038588 n

end A038588

/-! ## A038588.P8483309106843615022

`∩[A038591(n), A047231(n+1)]`
-/

namespace A038588.P8483309106843615022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038588.P8483309106843615022

namespace A038588

/-- `∩[A038591(n), A047231(n+1)]` -/
def P8483309106843615022.Spec : Prop :=
  ∀ n, (P8483309106843615022.a n : ℤ) = A038588 n

end A038588

/-! ## A038588.P13983993323816516245

`∩[A038591(n), A047244(n+1)]`
-/

namespace A038588.P13983993323816516245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047244 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038588.P13983993323816516245

namespace A038588

/-- `∩[A038591(n), A047244(n+1)]` -/
def P13983993323816516245.Spec : Prop :=
  ∀ n, (P13983993323816516245.a n : ℤ) = A038588 n

end A038588

/-! ## A038588.P8134675059984658472

`∩[A038591(n), A047271(n+1)]`
-/

namespace A038588.P8134675059984658472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038588.P8134675059984658472

namespace A038588

/-- `∩[A038591(n), A047271(n+1)]` -/
def P8134675059984658472.Spec : Prop :=
  ∀ n, (P8134675059984658472.a n : ℤ) = A038588 n

end A038588

/-! ## A038588.P17793296690117044391

`∩[A038591(n), A189637(n+1)]`
-/

namespace A038588.P17793296690117044391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189637 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038588.P17793296690117044391

namespace A038588

/-- `∩[A038591(n), A189637(n+1)]` -/
def P17793296690117044391.Spec : Prop :=
  ∀ n, (P17793296690117044391.a n : ℤ) = A038588 n

end A038588

/-! ## A038588.P2514543998962671088

`∩[A038591(n), A189708(n+1)]`
-/

namespace A038588.P2514543998962671088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189708 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038588.P2514543998962671088

namespace A038588

/-- `∩[A038591(n), A189708(n+1)]` -/
def P2514543998962671088.Spec : Prop :=
  ∀ n, (P2514543998962671088.a n : ℤ) = A038588 n

end A038588

/-! ## A038588.P7468125713356506731

`∩[A038591(n), A278996(n+1)]`
-/

namespace A038588.P7468125713356506731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278996 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038588.P7468125713356506731

namespace A038588

/-- `∩[A038591(n), A278996(n+1)]` -/
def P7468125713356506731.Spec : Prop :=
  ∀ n, (P7468125713356506731.a n : ℤ) = A038588 n

end A038588

/-! ## A038588.P15372946325045451696

`∩[A038591(n), A355200(n+1)]`
-/

namespace A038588.P15372946325045451696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355200 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038588.P15372946325045451696

namespace A038588

/-- `∩[A038591(n), A355200(n+1)]` -/
def P15372946325045451696.Spec : Prop :=
  ∀ n, (P15372946325045451696.a n : ℤ) = A038588 n

end A038588

/-! ## A038588.P6305242331929704406

`record[A038587(A078898(n))]`
-/

namespace A038588.P6305242331929704406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038587 (A078898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038588.P6305242331929704406

namespace A038588

/-- `record[A038587(A078898(n))]` -/
def P6305242331929704406.Spec : Prop :=
  ∀ n, P6305242331929704406.a n = A038588 n

end A038588

/-! ## A038588.P2247540874816711292

`record[A038587(A057979(n+1))]`
-/

namespace A038588.P2247540874816711292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038587 (A057979 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038588.P2247540874816711292

namespace A038588

/-- `record[A038587(A057979(n+1))]` -/
def P2247540874816711292.Spec : Prop :=
  ∀ n, P2247540874816711292.a n = A038588 n

end A038588

/-! ## A038588.P16291508041127008827

`∩[A038591(n), A084090(n+1)]`
-/

namespace A038588.P16291508041127008827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038588.P16291508041127008827

namespace A038588

/-- `∩[A038591(n), A084090(n+1)]` -/
def P16291508041127008827.Spec : Prop :=
  ∀ n, (P16291508041127008827.a n : ℤ) = A038588 n

end A038588

/-! ## A038588.P12544779269160586342

`∩[A038591(n), A047250(n+1)]`
-/

namespace A038588.P12544779269160586342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038588.P12544779269160586342

namespace A038588

/-- `∩[A038591(n), A047250(n+1)]` -/
def P12544779269160586342.Spec : Prop :=
  ∀ n, (P12544779269160586342.a n : ℤ) = A038588 n

end A038588

/-! ## A038588.P10476148568684498214

`∩[A038591(n), A047229(n+1)]`
-/

namespace A038588.P10476148568684498214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038588.P10476148568684498214

namespace A038588

/-- `∩[A038591(n), A047229(n+1)]` -/
def P10476148568684498214.Spec : Prop :=
  ∀ n, (P10476148568684498214.a n : ℤ) = A038588 n

end A038588

/-! ## A038588.P4107049110611836135

`record[A038587(A267110(n+1))]`
-/

namespace A038588.P4107049110611836135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038587 (A267110 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038588.P4107049110611836135

namespace A038588

/-- `record[A038587(A267110(n+1))]` -/
def P4107049110611836135.Spec : Prop :=
  ∀ n, P4107049110611836135.a n = A038588 n

end A038588

/-! ## A038588.P14798685404389749044

`record[A038587(A008611(n+1))]`
-/

namespace A038588.P14798685404389749044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038587 (A008611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038588.P14798685404389749044

namespace A038588

/-- `record[A038587(A008611(n+1))]` -/
def P14798685404389749044.Spec : Prop :=
  ∀ n, P14798685404389749044.a n = A038588 n

end A038588

/-!
# A038589: Sizes of successive clusters in hexagonal lattice A_2 centered at lattice point.

The programs for A038589, the canonical program `A038589.P3494655804322990247` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A038589 has offset 0).

The definition of A038589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A038589.P14927989922768365541

`1+A014201(n)`
-/

namespace A038589.P14927989922768365541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A014201 n

end

end A038589.P14927989922768365541

namespace A038589

/-- `1+A014201(n)` -/
def P14927989922768365541.Spec : Prop :=
  ∀ n, P14927989922768365541.a n = A038589 n

theorem P14927989922768365541.correct : P14927989922768365541.Spec := by
  intro n
  simp only [A038589, Nat.add_sub_cancel, A038589.P14927989922768365541.a, A038589.P3494655804322990247.a, A014201, A014201.P10815389346971354780.a, A014202, A014202.P4565710394663599738.f2, A014202.P4565710394663599738.f1, A014202.P4565710394663599738.a, A016921, A016921.P18318603358862595186.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A038589

/-! ## A038589.P1591919423288817954

`∑[A004016(n)]`
-/

namespace A038589.P1591919423288817954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038589.P1591919423288817954

namespace A038589

/-- `∑[A004016(n)]` -/
def P1591919423288817954.Spec : Prop :=
  ∀ n, P1591919423288817954.a n = A038589 n

end A038589

/-! ## A038589.P1121100159935049309

`∑[abs(A180318(n))]`
-/

namespace A038589.P1121100159935049309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A180318 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038589.P1121100159935049309

namespace A038589

/-- `∑[abs(A180318(n))]` -/
def P1121100159935049309.Spec : Prop :=
  ∀ n, P1121100159935049309.a n = A038589 n

end A038589

/-! ## A038589.P5265602818835697280

`∑[A033716(4*n)]`
-/

namespace A038589.P5265602818835697280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038589.P5265602818835697280

namespace A038589

/-- `∑[A033716(4*n)]` -/
def P5265602818835697280.Spec : Prop :=
  ∀ n, P5265602818835697280.a n = A038589 n

end A038589

/-! ## A038589.P746042286855753842

`∑[A217220(4*n)]`
-/

namespace A038589.P746042286855753842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217220 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038589.P746042286855753842

namespace A038589

/-- `∑[A217220(4*n)]` -/
def P746042286855753842.Spec : Prop :=
  ∀ n, P746042286855753842.a n = A038589 n

end A038589

/-! ## A038589.P3494655804322990247

`A016921(A014202(n))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A038589

/-- `A016921(A014202(n))` -/
def P3494655804322990247.Spec : Prop :=
  ∀ n, P3494655804322990247.a n = A038589 n

theorem P3494655804322990247.correct : P3494655804322990247.Spec := by
  intro n
  simp only [A038589]

end A038589

/-! ## A038589.P8641322026933309222

`∑[lcm(A005928(n), A033716(n))]`
-/

namespace A038589.P8641322026933309222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005928 n) (A033716 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038589.P8641322026933309222

namespace A038589

/-- `∑[lcm(A005928(n), A033716(n))]` -/
def P8641322026933309222.Spec : Prop :=
  ∀ n, (P8641322026933309222.a n : ℤ) = A038589 n

end A038589

/-! ## A038589.P12882528324856630915

`∑[A244339(2*n)]`
-/

namespace A038589.P12882528324856630915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244339 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038589.P12882528324856630915

namespace A038589

/-- `∑[A244339(2*n)]` -/
def P12882528324856630915.Spec : Prop :=
  ∀ n, P12882528324856630915.a n = A038589 n

end A038589

/-! ## A038589.P10218804250868281515

`∑[A253623(2*n)]`
-/

namespace A038589.P10218804250868281515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253623 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038589.P10218804250868281515

namespace A038589

/-- `∑[A253623(2*n)]` -/
def P10218804250868281515.Spec : Prop :=
  ∀ n, P10218804250868281515.a n = A038589 n

end A038589

/-! ## A038589.P10531101989602172806

`∑[A180318(4*n)]`
-/

namespace A038589.P10531101989602172806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180318 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038589.P10531101989602172806

namespace A038589

/-- `∑[A180318(4*n)]` -/
def P10531101989602172806.Spec : Prop :=
  ∀ n, P10531101989602172806.a n = A038589 n

end A038589

/-! ## A038589.P12507704659348656382

`∑[A005928(3*n)]`
-/

namespace A038589.P12507704659348656382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005928 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038589.P12507704659348656382

namespace A038589

/-- `∑[A005928(3*n)]` -/
def P12507704659348656382.Spec : Prop :=
  ∀ n, P12507704659348656382.a n = A038589 n

end A038589

/-! ## A038589.P17969065160461248965

`∑[A113062(3*n)]`
-/

namespace A038589.P17969065160461248965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113062 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038589.P17969065160461248965

namespace A038589

/-- `∑[A113062(3*n)]` -/
def P17969065160461248965.Spec : Prop :=
  ∀ n, P17969065160461248965.a n = A038589 n

end A038589

/-! ## A038589.P17957422438189685564

`A004442(A014201(n))`
-/

namespace A038589.P17957422438189685564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A014201 n).toNat

end

end A038589.P17957422438189685564

namespace A038589

/-- `A004442(A014201(n))` -/
def P17957422438189685564.Spec : Prop :=
  ∀ n, P17957422438189685564.a n = A038589 n

end A038589

/-! ## A038589.P11572594604075319630

`∑[A115978(4*n)]`
-/

namespace A038589.P11572594604075319630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115978 (4 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038589.P11572594604075319630

namespace A038589

/-- `∑[A115978(4*n)]` -/
def P11572594604075319630.Spec : Prop :=
  ∀ n, P11572594604075319630.a n = A038589 n

end A038589

/-! ## A038589.P6450121195241101274

`A244339(6*n)+a(n-1)` with `a(0)=1`
-/

namespace A038589.P6450121195241101274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A244339 (6 * n) + a (n - 1)

end

end A038589.P6450121195241101274

namespace A038589

/-- `A244339(6*n)+a(n-1)` -/
def P6450121195241101274.Spec : Prop :=
  ∀ n, P6450121195241101274.a n = A038589 n

end A038589

/-! ## A038589.P6168242917835620464

`A253623(6*n)+a(n-1)` with `a(0)=1`
-/

namespace A038589.P6168242917835620464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253623 (6 * n) + a (n - 1)

end

end A038589.P6168242917835620464

namespace A038589

/-- `A253623(6*n)+a(n-1)` -/
def P6168242917835620464.Spec : Prop :=
  ∀ n, P6168242917835620464.a n = A038589 n

end A038589

/-! ## A038589.P9817048739738886524

`∑[A226535(12*n)]`
-/

namespace A038589.P9817048739738886524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226535 (12 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038589.P9817048739738886524

namespace A038589

/-- `∑[A226535(12*n)]` -/
def P9817048739738886524.Spec : Prop :=
  ∀ n, P9817048739738886524.a n = A038589 n

end A038589

/-!
# A038590: Sizes of clusters in hexagonal lattice A_2 centered at lattice point.

The programs for A038590, there is no canonical definition to state claims against.
-/

/-! ## A038590.P11973935366666722530

`∑[A035019(n)]`
-/

namespace A038590.P11973935366666722530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038590.P11973935366666722530

/-! ## A038590.P10969489515738237254

`A016921(A038161(n))`
-/

namespace A038590.P10969489515738237254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A038161 n).toNat

end

end A038590.P10969489515738237254

/-! ## A038590.P17395832117662706599

`record[A033716(2*n)-a(n-1)]` with `a(0)=1`
-/

namespace A038590.P17395832117662706599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A033716 (2 * n) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038590.P17395832117662706599

/-! ## A038590.P13605060296417873333

`∑[A033716(A270248(n+1))]`
-/

namespace A038590.P13605060296417873333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033716 (A270248 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038590.P13605060296417873333

/-! ## A038590.P4789208282358464641

`filter[A038591(n), A187074(#)]`
-/

namespace A038590.P4789208282358464641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A038590.P4789208282358464641

/-! ## A038590.P8072320436689745669

`filter[A038591(n), A354354(#)]`
-/

namespace A038590.P8072320436689745669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354354 (f1 j).toNat = 1) n)

end

end A038590.P8072320436689745669

/-! ## A038590.P6786615908829620652

`filter[A038591(n), A373155(#)]`
-/

namespace A038590.P6786615908829620652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A038590.P6786615908829620652

/-! ## A038590.P2617287707371270465

`filter[A038591(n), A374043(#)]`
-/

namespace A038590.P2617287707371270465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374043 (f1 j).toNat = 1) n)

end

end A038590.P2617287707371270465

/-! ## A038590.P283872203436142196

`∩[A016921(n), A038591(n)]`
-/

namespace A038590.P283872203436142196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038590.P283872203436142196

/-! ## A038590.P14608351466859287154

`∩[A084089(n+1), A038591(n)]`
-/

namespace A038590.P14608351466859287154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038590.P14608351466859287154

/-! ## A038590.P907984583237854613

`∑[A004016(A003136(n+1))]`
-/

namespace A038590.P907984583237854613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (A003136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038590.P907984583237854613

/-! ## A038590.P3291124885958244750

`∑[A004016(lt[0, A004016(n)])]`
-/

namespace A038590.P3291124885958244750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038590.P3291124885958244750

/-! ## A038590.P15937549742967740405

`∑[A004016(A270248(n+1)/4)]`
-/

namespace A038590.P15937549742967740405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004016 (SequenceMachineLib.roundAway ((A270248 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038590.P15937549742967740405

/-! ## A038590.P18163117040411413567

`A038589(A003136(n+1))`
-/

namespace A038590.P18163117040411413567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038589 (A003136 (n + 1)).toNat

end

end A038590.P18163117040411413567

/-! ## A038590.P7605557940088506722

`∩[A038591(n), A374044(n+1)]`
-/

namespace A038590.P7605557940088506722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038590.P7605557940088506722

/-! ## A038590.P7105275096430026213

`∩[A016777(n), A038591(n)]`
-/

namespace A038590.P7105275096430026213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038590.P7105275096430026213

/-! ## A038590.P12262036833213868681

`∩[A007310(n+1), A038591(n)]`
-/

namespace A038590.P12262036833213868681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038590.P12262036833213868681

/-! ## A038590.P12944504400724075383

`∩[A008585(n)+1, A038591(n)]`
-/

namespace A038590.P12944504400724075383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038590.P12944504400724075383

/-! ## A038590.P10490910224455605913

`∩[A033627(n+1), A038591(n)]`
-/

namespace A038590.P10490910224455605913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038590.P10490910224455605913

/-! ## A038590.P3810682694796940826

`∩[A047239(n+1), A038591(n)]`
-/

namespace A038590.P3810682694796940826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038591 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038590.P3810682694796940826

/-!
# A038591: Sizes of clusters in hexagonal lattice A_2 with 3-fold symmetry.

The programs for A038591, there is no canonical definition to state claims against.
-/

/-! ## A038591.P289392392672607160

`∪[A038588(n), A038590(n)]`
-/

namespace A038591.P289392392672607160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038588 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038591.P289392392672607160

/-! ## A038591.P4401163223368830759

`∪[∑[A035019(n)], A038588(n)]`
-/

namespace A038591.P4401163223368830759
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035019 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038588 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

end

end A038591.P4401163223368830759

/-!
# A038592: Number of cubefree self avoiding walks in 2 dimensions of length n.

The programs for A038592, there is no canonical definition to state claims against.
-/

/-! ## A038592.P9615088620772271583

`∑[A261212(A261204(n))]-ceil(n/6)`
-/

namespace A038592.P9615088620772271583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261212 (A261204 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ⌈(n : ℚ) / 6⌉

end

end A038592.P9615088620772271583

/-! ## A038592.P5697781505727509596

`A000038(n)!+∑[A261212(A261204(n))]-2`
-/

namespace A038592.P5697781505727509596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261212 (A261204 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A000038 n).toNat : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A038592.P5697781505727509596

/-! ## A038592.P15794121326318713581

`A007843(A369000(2*(n+1))+A058877(n+1))`
-/

namespace A038592.P15794121326318713581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007843 (A369000 (2 * (n + 1)) + A058877 (n + 1)).toNat

end

end A038592.P15794121326318713581

/-!
# A038593: Differences between positive cubes in 1, 2 or 3 ways: union of A014439, A014440 and A014441.

The programs for A038593, there is no canonical definition to state claims against.
-/

/-! ## A038593.P9435924978327930515

`∪[A014439(n+1), A034179(n+1)]`
-/

namespace A038593.P9435924978327930515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034179 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038593.P9435924978327930515

/-! ## A038593.P12022295592321914747

`A181123(n+2)`
-/

namespace A038593.P12022295592321914747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2)

end

end A038593.P12022295592321914747

/-! ## A038593.P14242638547910672569

`record[A181123(A324346(A324346(n)))]`
-/

namespace A038593.P14242638547910672569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A324346 (A324346 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038593.P14242638547910672569

/-! ## A038593.P8088539606886375478

`∪[A038847(n+1), A038848(n+1)]`
-/

namespace A038593.P8088539606886375478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A038593.P8088539606886375478

/-! ## A038593.P10919932253366385310

`∩[A020894(n+2), A152043(n+1)]`
-/

namespace A038593.P10919932253366385310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038593.P10919932253366385310

/-! ## A038593.P4732297393391353890

`∑[A038598(n+1)]`
-/

namespace A038593.P4732297393391353890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A038593.P4732297393391353890

/-! ## A038593.P6690919624398260647

`record[A181123(A133310(A008619(n)))]`
-/

namespace A038593.P6690919624398260647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A133310 (A008619 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038593.P6690919624398260647

/-! ## A038593.P4001303679124827572

`record[A181123(A028242(A244478(n)))]`
-/

namespace A038593.P4001303679124827572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A028242 (A244478 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038593.P4001303679124827572

/-! ## A038593.P8572973182752079874

`record[A181123(A126759(A126759(n)))]`
-/

namespace A038593.P8572973182752079874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A126759 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A038593.P8572973182752079874

/-!
# A038594: Numbers n such that n and n+1 are differences between 2 positive cubes in at least one way.

The programs for A038594, there is no canonical definition to state claims against.
-/

/-! ## A038594.P1192224915453043740

`A038595(n+1)-1`
-/

namespace A038594.P1192224915453043740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038595 (n + 1) - 1

end

end A038594.P1192224915453043740

/-! ## A038594.P11790231638103240465

`A097807(gcd(n, n+1))+A038595(n+1)`
-/

namespace A038594.P11790231638103240465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097807 (Nat.gcd n (n + 1)) + A038595 (n + 1)

end

end A038594.P11790231638103240465

/-! ## A038594.P16741066390547735000

`A212212(Δ[A004396(n)]+1)+A038595(n+1)`
-/

namespace A038594.P16741066390547735000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212212 (f1 (n + 1) - f1 n + 1).toNat + A038595 (n + 1)

end

end A038594.P16741066390547735000

/-! ## A038594.P12689713057514961465

`A120304(A005378(∑[(-1)^n]))+A038595(n+1)`
-/

namespace A038594.P12689713057514961465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120304 (A005378 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat + A038595 (n + 1)

end

end A038594.P12689713057514961465

/-! ## A038594.P9038859193118937246

`A134824(n+2)+A038595(n+1)`
-/

namespace A038594.P9038859193118937246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A038595 (n + 1)

end

end A038594.P9038859193118937246

/-! ## A038594.P8053694864839927934

`A260196(n+2)+A038595(n+1)`
-/

namespace A038594.P8053694864839927934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A038595 (n + 1)

end

end A038594.P8053694864839927934

/-! ## A038594.P13018595238977469349

`A038593(A038632(n+1))`
-/

namespace A038594.P13018595238977469349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038632 (n + 1)).toNat

end

end A038594.P13018595238977469349

/-! ## A038594.P14061790403286180128

`A181123(A038632(n+1)+1)`
-/

namespace A038594.P14061790403286180128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038632 (n + 1) + 1).toNat

end

end A038594.P14061790403286180128

/-! ## A038594.P10227675554562346782

`∩[A038593(n+1)-1, A038593(n+1)]`
-/

namespace A038594.P10227675554562346782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038594.P10227675554562346782

/-! ## A038594.P10226118018094019893

`∩[A181123(n+1)-1, A181123(n+1)]`
-/

namespace A038594.P10226118018094019893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038594.P10226118018094019893

/-! ## A038594.P4224465907790381010

`A038593(eq[1, A038593(n+1)-A181123(n+1)])`
-/

namespace A038594.P4224465907790381010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - A181123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A038594.P4224465907790381010

/-!
# A038595: Numbers n such that n and n-1 are differences between 2 positive cubes in at least one way.

The programs for A038595, there is no canonical definition to state claims against.
-/

/-! ## A038595.P906111944473174794

`A038594(n+1)+1`
-/

namespace A038595.P906111944473174794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038594 (n + 1) + 1

end

end A038595.P906111944473174794

/-! ## A038595.P12252127305327975551

`A038593(A038632(n+1)+1)`
-/

namespace A038595.P12252127305327975551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (A038632 (n + 1) + 1).toNat

end

end A038595.P12252127305327975551

/-! ## A038595.P14063252897814542290

`A181123(A038632(n+1)+2)`
-/

namespace A038595.P14063252897814542290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A038632 (n + 1) + 2).toNat

end

end A038595.P14063252897814542290

/-! ## A038595.P7532664034161735773

`∩[A038593(n+1)+1, A038593(n+1)]`
-/

namespace A038595.P7532664034161735773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038595.P7532664034161735773

/-! ## A038595.P7121102703311751481

`∩[A181123(n+1)+1, A181123(n+1)]`
-/

namespace A038595.P7121102703311751481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A038595.P7121102703311751481

/-! ## A038595.P12757138703691394671

`A038593(eq[1, A038598(n+1)]+1)`
-/

namespace A038595.P12757138703691394671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A038595.P12757138703691394671

/-! ## A038595.P16431741618078949537

`A181123(eq[1, A038598(n+1)]+2)`
-/

namespace A038595.P16431741618078949537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038598 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A038595.P16431741618078949537

/-!
# A038596: Squares that are a difference between 2 positive cubes.

The programs for A038596, there is no canonical definition to state claims against.
-/

/-! ## A038596.P12582713363102300570

`A038597(n+1)²`
-/

namespace A038596.P12582713363102300570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038597 (n + 1) ^ 2

end

end A038596.P12582713363102300570

/-! ## A038596.P11402640195115797487

`A038597(n+1)^A000034(2*n+1)`
-/

namespace A038596.P11402640195115797487
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038597 (n + 1) : ℚ) ^ (A000034 (2 * n + 1) : ℤ)

end

end A038596.P11402640195115797487

/-! ## A038596.P325025799223009097

`A038597(n+1)^A020639(2*(n+1))`
-/

namespace A038596.P325025799223009097
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038597 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ)

end

end A038596.P325025799223009097

/-! ## A038596.P4815863944002348658

`A038597(n+1)^(2%A002407(n+1))`
-/

namespace A038596.P4815863944002348658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038597 (n + 1) : ℚ) ^ (Int.tmod 2 (A002407 (n + 1)) : ℤ)

end

end A038596.P4815863944002348658

/-! ## A038596.P8832670399561780426

`A038597(A000027(n+1))*A038597(n+1)`
-/

namespace A038596.P8832670399561780426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038597 (A000027 (n + 1)).toNat * A038597 (n + 1)

end

end A038596.P8832670399561780426

/-! ## A038596.P5018136549379841142

`A038597(n+1)^A000005(A000040(n+1))`
-/

namespace A038596.P5018136549379841142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038597 (n + 1) : ℚ) ^ (A000005 (A000040 (n + 1)).toNat : ℤ)

end

end A038596.P5018136549379841142

/-! ## A038596.P17283336278499058291

`A038597(A001057(2*n+1))*A038597(n+1)`
-/

namespace A038596.P17283336278499058291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038597 (A001057 (2 * n + 1)).toNat * A038597 (n + 1)

end

end A038596.P17283336278499058291

/-! ## A038596.P3495643520537176256

`A038597(n+1)%A038597(n+2)*A038597(n+1)`
-/

namespace A038596.P3495643520537176256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038597 (n + 1)) (A038597 (n + 2)) * A038597 (n + 1)

end

end A038596.P3495643520537176256

/-! ## A038596.P10570570890527231491

`A038597(A003056(∑[n+1]))*A038597(n+1)`
-/

namespace A038596.P10570570890527231491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038597 (A003056 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat * A038597 (n + 1)

end

end A038596.P10570570890527231491

/-! ## A038596.P1190173183262655975

`A000290(2*A038597(n+1)-A038597(n+1))`
-/

namespace A038596.P1190173183262655975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A038597 (n + 1) - A038597 (n + 1)).toNat

end

end A038596.P1190173183262655975

/-!
# A038597: Numbers whose square is a difference between 2 positive cubes in at least one way.

The programs for A038597, there is no canonical definition to state claims against.
-/

/-! ## A038597.P1671164328273463740

`sqrt(A038596(n+1))`
-/

namespace A038597.P1671164328273463740
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A038596 (n + 1) : ℝ)

end

end A038597.P1671164328273463740

/-! ## A038597.P14100423359965249626

`root(A038596(n+1), 2%A024675(n+1))`
-/

namespace A038597.P14100423359965249626
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038596 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A024675 (n + 1)) : ℝ))

end

end A038597.P14100423359965249626

/-! ## A038597.P16878393701662142798

`root(A038596(n+1), A001316(A001316(n)))`
-/

namespace A038597.P16878393701662142798
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038596 (n + 1) : ℝ) ^ (1 / (A001316 (A001316 n).toNat : ℝ))

end

end A038597.P16878393701662142798

/-! ## A038597.P15936280529782047124

`A038596(n+1)^(A009003(n+1)/A072592(n+1))`
-/

namespace A038597.P15936280529782047124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038596 (n + 1) : ℝ) ^ ((A009003 (n + 1) : ℚ) / (A072592 (n + 1) : ℚ) : ℝ)

end

end A038597.P15936280529782047124

/-! ## A038597.P10054908074098411534

`A000027(root(A038596(n+1), 2))`
-/

namespace A038597.P10054908074098411534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A038596 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A038597.P10054908074098411534

/-! ## A038597.P10615017639430436550

`root(A038596(n+1), dr(A038648(n+1)))`
-/

namespace A038597.P10615017639430436550
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038596 (n + 1) : ℝ) ^ (1 / (SequenceMachineLib.digitalRoot (A038648 (n + 1)) : ℝ))

end

end A038597.P10615017639430436550

/-!
# A038598: First differences between numbers that are a difference between 2 positive cubes.

The programs for A038598, there is no canonical definition to state claims against.
-/

/-! ## A038598.P6659261213419472487

`Δ[A181123(n+1)]`
-/

namespace A038598.P6659261213419472487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038598.P6659261213419472487

/-! ## A038598.P14845330483427683262

`Δ[record[A181123(A133310(n))]]`
-/

namespace A038598.P14845330483427683262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038598.P14845330483427683262

/-! ## A038598.P14455418565098538125

`A038593(n+1)-A181123(n+1)`
-/

namespace A038598.P14455418565098538125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038593 (n + 1) - A181123 (n + 1)

end

end A038598.P14455418565098538125

/-! ## A038598.P17963885635971411344

`A181123(n+2)-A181123(n+1)`
-/

namespace A038598.P17963885635971411344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181123 (n + 2) - A181123 (n + 1)

end

end A038598.P17963885635971411344

/-! ## A038598.P4487254776389740409

`Δ[∩[A020894(n+1), A152043(n+1)]]`
-/

namespace A038598.P4487254776389740409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020894 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152043 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A038598.P4487254776389740409

/-! ## A038598.P10207066311157412195

`Δ[A038593(A000007(n)+n)%A022521(n)]`
-/

namespace A038598.P10207066311157412195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038593 (A000007 n + (n : ℤ)).toNat) (A022521 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A038598.P10207066311157412195

/-!
# A038599: Numbers k such that k^3 - 2 is prime.

The programs for A038599, there is no canonical definition to state claims against.
-/

/-! ## A038599.P8734484487011026037

`(A038600(n+1)+2)^(1/3)`
-/

namespace A038599.P8734484487011026037
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A038600 (n + 1) + 2 : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A038599.P8734484487011026037

/-! ## A038599.P16235318785174752127

`root(A236334(n+1), 3)`
-/

namespace A038599.P16235318785174752127
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A236334 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A038599.P16235318785174752127

/-! ## A038599.P9611095235726813384

`ceil(root(A038600(n+1), 3))`
-/

namespace A038599.P9611095235726813384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A038600 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌉

end

end A038599.P9611095235726813384

/-! ## A038599.P14721626097175635412

`A000027(round(root(A038600(n+1), 3)))`
-/

namespace A038599.P14721626097175635412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A038600 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A038599.P14721626097175635412

/-! ## A038599.P7927763137738381898

`A141310(floor(root(A038600(n+1), 3)))`
-/

namespace A038599.P7927763137738381898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 ⌊(A038600 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋.toNat

end

end A038599.P7927763137738381898

/-! ## A038599.P9215562729643504332

`A004151(round(root(A038600(n+1), 3)))`
-/

namespace A038599.P9215562729643504332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway ((A038600 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat

end

end A038599.P9215562729643504332

/-! ## A038599.P10854801205437872491

`A126762(floor(root(A038600(n+1), 3)))`
-/

namespace A038599.P10854801205437872491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126762 ⌊(A038600 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋.toNat

end

end A038599.P10854801205437872491

