import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
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
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A059007: Numbers m such that m^2 reversed is a prime.

The programs for A059007, there is no canonical definition to state claims against.
-/

/-! ## A059007.P7551271505330339051

`sqrt(A068989(n+1))`
-/

namespace A059007.P7551271505330339051
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A068989 (n + 1) : ℝ)

end

end A059007.P7551271505330339051

/-! ## A059007.P2837605355950129804

`root(A068989(n+1), 2%A007488(n+1))`
-/

namespace A059007.P2837605355950129804
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068989 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A007488 (n + 1)) : ℝ))

end

end A059007.P2837605355950129804

/-! ## A059007.P17916482849967423485

`root(A068989(n+1), 2)%A057699(n+1)`
-/

namespace A059007.P17916482849967423485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A068989 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))) (A057699 (n + 1))

end

end A059007.P17916482849967423485

/-! ## A059007.P4893174779064324626

`root(A068989(n+1)%A058996(n+1), 2)`
-/

namespace A059007.P4893174779064324626
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A068989 (n + 1)) (A058996 (n + 1)) : ℝ) ^ (1 / (2 : ℝ))

end

end A059007.P4893174779064324626

/-! ## A059007.P16101984006331308073

`root(A068989(n+1), gcd(2, A272692(n+1)))`
-/

namespace A059007.P16101984006331308073
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A068989 (n + 1) : ℝ) ^ (1 / (Int.gcd 2 (A272692 (n + 1)) : ℝ))

end

end A059007.P16101984006331308073

/-! ## A059007.P3312713875418532522

`A000720(A000040(root(A068989(n+1), 2)))`
-/

namespace A059007.P3312713875418532522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000040 (SequenceMachineLib.roundAway ((A068989 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat).toNat

end

end A059007.P3312713875418532522

/-!
# A059008: Numbers n such that n^3 reversed is a prime.

The programs for A059008, there is no canonical definition to state claims against.
-/

/-! ## A059008.P610738709888212185

`root(A161354(n+1), 3)`
-/

namespace A059008.P610738709888212185
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A161354 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

end

end A059008.P610738709888212185

/-! ## A059008.P9488109021671217449

`A161354(n+1)^(A161346(n+1)/A161345(n+1))`
-/

namespace A059008.P9488109021671217449
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A161354 (n + 1) : ℝ) ^ ((A161346 (n + 1) : ℚ) / (A161345 (n + 1) : ℚ) : ℝ)

end

end A059008.P9488109021671217449

/-!
# A059009: Numbers having an odd number of zeros in their binary expansion.

The programs for A059009, the canonical program `A059009.P17758398350065127331` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059009 has offset 0).

The definition of A059009 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059009.P17758398350065127331

`Δ[n²]-xor(n, a(floor(n/2)))` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059009

/-- `Δ[n²]-xor(n, a(floor(n/2)))` -/
def P17758398350065127331.Spec : Prop :=
  ∀ n, P17758398350065127331.a n = A059009 n

theorem P17758398350065127331.correct : P17758398350065127331.Spec := by
  intro n
  simp only [A059009]

end A059009

/-! ## A059009.P16438065083530668744

`xor(1, or(a(floor(n/2))+n, 2*n))` with `a(0)=0`
-/

namespace A059009.P16438065083530668744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.xor 1 (Nat.lor (a ⌊(n : ℚ) / 2⌋.toNat + n) (2 * n))

end

end A059009.P16438065083530668744

namespace A059009

/-- `xor(1, or(a(floor(n/2))+n, 2*n))` -/
def P16438065083530668744.Spec : Prop :=
  ∀ n, (P16438065083530668744.a n : ℤ) = A059009 n

end A059009

/-! ## A059009.P15715990108808733247

`comp[A059010(n)]`
-/

namespace A059009.P15715990108808733247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A059009.P15715990108808733247

namespace A059009

/-- `comp[A059010(n)]` -/
def P15715990108808733247.Spec : Prop :=
  ∀ n, (P15715990108808733247.a n : ℤ) = A059009 n

end A059009

/-! ## A059009.P4924476777494456544

`Δ[n²]-A298952(n)`
-/

namespace A059009.P4924476777494456544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A298952 n

end

end A059009.P4924476777494456544

namespace A059009

/-- `Δ[n²]-A298952(n)` -/
def P4924476777494456544.Spec : Prop :=
  ∀ n, P4924476777494456544.a n = A059009 n

end A059009

/-! ## A059009.P6510523359862904234

`A080791(n)%2+2*n`
-/

namespace A059009.P6510523359862904234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A080791 n) 2 + (2 * n : ℤ)

end

end A059009.P6510523359862904234

namespace A059009

/-- `A080791(n)%2+2*n` -/
def P6510523359862904234.Spec : Prop :=
  ∀ n, P6510523359862904234.a n = A059009 n

end A059009

/-! ## A059009.P2775456622611518963

`xor(1-(A080100(n)%3)%2, 2*n)`
-/

namespace A059009.P2775456622611518963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - Int.tmod (Int.tmod (A080100 n) 3) 2) (2 * n : ℤ)

end

end A059009.P2775456622611518963

namespace A059009

/-- `xor(1-(A080100(n)%3)%2, 2*n)` -/
def P2775456622611518963.Spec : Prop :=
  ∀ n, P2775456622611518963.a n = A059009 n

end A059009

/-! ## A059009.P15169655558472942427

`char[A122497(n+1)+2*n+1]+2*n`
-/

namespace A059009.P15169655558472942427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122497 (n + 1) + (2 * n : ℤ) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 * n

end

end A059009.P15169655558472942427

namespace A059009

/-- `char[A122497(n+1)+2*n+1]+2*n` -/
def P15169655558472942427.Spec : Prop :=
  ∀ n, (P15169655558472942427.a n : ℤ) = A059009 n

end A059009

/-! ## A059009.P8600179890622399879

`A016813(n)-A059010(n)`
-/

namespace A059009.P8600179890622399879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A059010 n

end

end A059009.P8600179890622399879

namespace A059009

/-- `A016813(n)-A059010(n)` -/
def P8600179890622399879.Spec : Prop :=
  ∀ n, P8600179890622399879.a n = A059009 n

end A059009

/-! ## A059009.P15090161971473372014

`A002943(n)/A059010(n)`
-/

namespace A059009.P15090161971473372014
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002943 n : ℚ) / (A059010 n : ℚ)

end

end A059009.P15090161971473372014

namespace A059009

/-- `A002943(n)/A059010(n)` -/
def P15090161971473372014.Spec : Prop :=
  ∀ n, P15090161971473372014.a n = (A059009 n : ℚ)

end A059009

/-! ## A059009.P17343991474549197092

`A000035(A080791(n))+2*n`
-/

namespace A059009.P17343991474549197092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A080791 n).toNat + (2 * n : ℤ)

end

end A059009.P17343991474549197092

namespace A059009

/-- `A000035(A080791(n))+2*n` -/
def P17343991474549197092.Spec : Prop :=
  ∀ n, P17343991474549197092.a n = A059009 n

end A059009

/-! ## A059009.P7253436449673182571

`A059448(A080100(n))+2*n`
-/

namespace A059009.P7253436449673182571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (A080100 n).toNat + (2 * n : ℤ)

end

end A059009.P7253436449673182571

namespace A059009

/-- `A059448(A080100(n))+2*n` -/
def P7253436449673182571.Spec : Prop :=
  ∀ n, P7253436449673182571.a n = A059009 n

end A059009

/-! ## A059009.P15901471000943270506

`∪[A059011(n+1), A059013(n+1)]`
-/

namespace A059009.P15901471000943270506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059013 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059009.P15901471000943270506

namespace A059009

/-- `∪[A059011(n+1), A059013(n+1)]` -/
def P15901471000943270506.Spec : Prop :=
  ∀ n, (P15901471000943270506.a n : ℤ) = A059009 n

end A059009

/-! ## A059009.P15695374864290765427

`2*n+1-A000035(A008687(n+1))`
-/

namespace A059009.P15695374864290765427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A000035 (A008687 (n + 1)).toNat

end

end A059009.P15695374864290765427

namespace A059009

/-- `2*n+1-A000035(A008687(n+1))` -/
def P15695374864290765427.Spec : Prop :=
  ∀ n, P15695374864290765427.a n = A059009 n

end A059009

/-! ## A059009.P12324474546607520647

`2*n+1-A000035(A076895(n+1))`
-/

namespace A059009.P12324474546607520647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A000035 (A076895 (n + 1)).toNat

end

end A059009.P12324474546607520647

namespace A059009

/-- `2*n+1-A000035(A076895(n+1))` -/
def P12324474546607520647.Spec : Prop :=
  ∀ n, P12324474546607520647.a n = A059009 n

end A059009

/-! ## A059009.P88263516460739564

`(A122497(A028310(n))+4)%4+2*n-1`
-/

namespace A059009.P88263516460739564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122497 (A028310 n).toNat + 4) 4 + (2 * n : ℤ) - 1

end

end A059009.P88263516460739564

namespace A059009

/-- `(A122497(A028310(n))+4)%4+2*n-1` -/
def P88263516460739564.Spec : Prop :=
  ∀ n, P88263516460739564.a n = A059009 n

end A059009

/-! ## A059009.P16745473685552447579

`A079944(A061393(A008687(n+1)))+2*n`
-/

namespace A059009.P16745473685552447579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079944 (A061393 (A008687 (n + 1)).toNat).toNat + (2 * n : ℤ)

end

end A059009.P16745473685552447579

namespace A059009

/-- `A079944(A061393(A008687(n+1)))+2*n` -/
def P16745473685552447579.Spec : Prop :=
  ∀ n, P16745473685552447579.a n = A059009 n

end A059009

/-! ## A059009.P6951580459014206441

`A000069(n+1)+A001969(n+1)-A059010(n)`
-/

namespace A059009.P6951580459014206441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A001969 (n + 1) - A059010 n)

end

end A059009.P6951580459014206441

namespace A059009

/-- `A000069(n+1)+A001969(n+1)-A059010(n)` -/
def P6951580459014206441.Spec : Prop :=
  ∀ n, P6951580459014206441.a n = A059009 n

end A059009

/-! ## A059009.P12810734693636791276

`A025428(A267584(n))+2*n`
-/

namespace A059009.P12810734693636791276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025428 (A267584 n).toNat + (2 * n : ℤ)

end

end A059009.P12810734693636791276

namespace A059009

/-- `A025428(A267584(n))+2*n` -/
def P12810734693636791276.Spec : Prop :=
  ∀ n, P12810734693636791276.a n = A059009 n

end A059009

/-!
# A059010: Natural numbers having an even number of nonleading zeros in their binary expansion.

The programs for A059010, the canonical program `A059010.P779181372278355505` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059010 has offset 0).

The definition of A059010 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059010.P779181372278355505

`Δ[n²]-xor(n, a(floor(n/2)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059010

/-- `Δ[n²]-xor(n, a(floor(n/2)))` -/
def P779181372278355505.Spec : Prop :=
  ∀ n, P779181372278355505.a n = A059010 n

theorem P779181372278355505.correct : P779181372278355505.Spec := by
  intro n
  simp only [A059010]

end A059010

/-! ## A059010.P13655178755968984340

`xor(1, or(a(floor(n/2))+n, 2*n))` with `a(0)=1`
-/

namespace A059010.P13655178755968984340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor 1 (Nat.lor (a ⌊(n : ℚ) / 2⌋.toNat + n) (2 * n))

end

end A059010.P13655178755968984340

namespace A059010

/-- `xor(1, or(a(floor(n/2))+n, 2*n))` -/
def P13655178755968984340.Spec : Prop :=
  ∀ n, (P13655178755968984340.a n : ℤ) = A059010 n

end A059010

/-! ## A059010.P11206585021008362374

`(a(floor(n/2))+1+n)%2+2*n` with `a(0)=1`
-/

namespace A059010.P11206585021008362374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (a ⌊(n : ℚ) / 2⌋.toNat + 1 + n) % 2 + 2 * n

end

end A059010.P11206585021008362374

namespace A059010

/-- `(a(floor(n/2))+1+n)%2+2*n` -/
def P11206585021008362374.Spec : Prop :=
  ∀ n, (P11206585021008362374.a n : ℤ) = A059010 n

end A059010

/-! ## A059010.P12513841433066561385

`comp[A059009(n)]`
-/

namespace A059010.P12513841433066561385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A059010.P12513841433066561385

namespace A059010

/-- `comp[A059009(n)]` -/
def P12513841433066561385.Spec : Prop :=
  ∀ n, (P12513841433066561385.a n : ℤ) = A059010 n

end A059010

/-! ## A059010.P14543145617187136802

`A298952(n)+2*n`
-/

namespace A059010.P14543145617187136802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298952 n + (2 * n : ℤ)

end

end A059010.P14543145617187136802

namespace A059010

/-- `A298952(n)+2*n` -/
def P14543145617187136802.Spec : Prop :=
  ∀ n, P14543145617187136802.a n = A059010 n

end A059010

/-! ## A059010.P13524622815658351761

`gcd(2, A080791(n))-(1-n)+n`
-/

namespace A059010.P13524622815658351761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A080791 n) : ℤ) - (1 - (n : ℤ)) + (n : ℤ)

end

end A059010.P13524622815658351761

namespace A059010

/-- `gcd(2, A080791(n))-(1-n)+n` -/
def P13524622815658351761.Spec : Prop :=
  ∀ n, P13524622815658351761.a n = A059010 n

end A059010

/-! ## A059010.P17446698461499204023

`eq[0, A014577(5*(2*a(floor(n/2))-(-1)^n+1))]` with `a(0)=2`
-/

namespace A059010.P17446698461499204023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A014577 (5 * (2 * f2 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059010.P17446698461499204023

namespace A059010

/-- `eq[0, A014577(5*(2*a(floor(n/2))-(-1)^n+1))]` -/
def P17446698461499204023.Spec : Prop :=
  ∀ n, (P17446698461499204023.a n : ℤ) = A059010 n

end A059010

/-! ## A059010.P17874879618623196037

`eq[0, A337165(5*(2*a(floor(n/2))-(-1)^n+1))]` with `a(0)=2`
-/

namespace A059010.P17874879618623196037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A337165 (5 * (2 * f2 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059010.P17874879618623196037

namespace A059010

/-- `eq[0, A337165(5*(2*a(floor(n/2))-(-1)^n+1))]` -/
def P17874879618623196037.Spec : Prop :=
  ∀ n, (P17874879618623196037.a n : ℤ) = A059010 n

end A059010

/-! ## A059010.P13055546008190898171

`lt[0, A357368(5*(2*a(floor(n/2))-(-1)^n+1))]` with `a(0)=-1`
-/

namespace A059010.P13055546008190898171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n f2 =>
  A357368 (5 * (2 * f2 ⌊(n : ℚ) / 2⌋.toNat - (-1) ^ n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059010.P13055546008190898171

namespace A059010

/-- `lt[0, A357368(5*(2*a(floor(n/2))-(-1)^n+1))]` -/
def P13055546008190898171.Spec : Prop :=
  ∀ n, (P13055546008190898171.a n : ℤ) = A059010 n

end A059010

/-! ## A059010.P7200103340309795175

`A016813(n)-A059009(n)`
-/

namespace A059010.P7200103340309795175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A059009 n

end

end A059010.P7200103340309795175

namespace A059010

/-- `A016813(n)-A059009(n)` -/
def P7200103340309795175.Spec : Prop :=
  ∀ n, P7200103340309795175.a n = A059010 n

end A059010

/-! ## A059010.P124024768603641063

`xor(A005843(n), A298952(n))`
-/

namespace A059010.P124024768603641063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005843 n) (A298952 n)

end

end A059010.P124024768603641063

namespace A059010

/-- `xor(A005843(n), A298952(n))` -/
def P124024768603641063.Spec : Prop :=
  ∀ n, P124024768603641063.a n = A059010 n

end A059010

/-! ## A059010.P15735461785480823908

`A002324(A080100(n))+2*n`
-/

namespace A059010.P15735461785480823908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (A080100 n).toNat + (2 * n : ℤ)

end

end A059010.P15735461785480823908

namespace A059010

/-- `A002324(A080100(n))+2*n` -/
def P15735461785480823908.Spec : Prop :=
  ∀ n, P15735461785480823908.a n = A059010 n

end A059010

/-! ## A059010.P4785799505020880308

`A000035(A008687(n+1))+2*n`
-/

namespace A059010.P4785799505020880308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A008687 (n + 1)).toNat + (2 * n : ℤ)

end

end A059010.P4785799505020880308

namespace A059010

/-- `A000035(A008687(n+1))+2*n` -/
def P4785799505020880308.Spec : Prop :=
  ∀ n, P4785799505020880308.a n = A059010 n

end A059010

/-! ## A059010.P167409554653058334

`A000035(A076895(n+1))+2*n`
-/

namespace A059010.P167409554653058334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A076895 (n + 1)).toNat + (2 * n : ℤ)

end

end A059010.P167409554653058334

namespace A059010

/-- `A000035(A076895(n+1))+2*n` -/
def P167409554653058334.Spec : Prop :=
  ∀ n, P167409554653058334.a n = A059010 n

end A059010

/-! ## A059010.P5446305167467740451

`2*n+1-A000035(A080791(n))`
-/

namespace A059010.P5446305167467740451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A000035 (A080791 n).toNat

end

end A059010.P5446305167467740451

namespace A059010

/-- `2*n+1-A000035(A080791(n))` -/
def P5446305167467740451.Spec : Prop :=
  ∀ n, P5446305167467740451.a n = A059010 n

end A059010

/-! ## A059010.P4340131413106192316

`∪[A059012(n+1), A059014(n+1)]`
-/

namespace A059010.P4340131413106192316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059010.P4340131413106192316

namespace A059010

/-- `∪[A059012(n+1), A059014(n+1)]` -/
def P4340131413106192316.Spec : Prop :=
  ∀ n, (P4340131413106192316.a n : ℤ) = A059010 n

end A059010

/-! ## A059010.P13076907010344087474

`((A122497(A028310(n))+4)²%3)%4+2*n`
-/

namespace A059010.P13076907010344087474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.tmod ((A122497 (A028310 n).toNat + 4) ^ 2) 3) 4 + (2 * n : ℤ)

end

end A059010.P13076907010344087474

namespace A059010

/-- `((A122497(A028310(n))+4)²%3)%4+2*n` -/
def P13076907010344087474.Spec : Prop :=
  ∀ n, P13076907010344087474.a n = A059010 n

end A059010

/-! ## A059010.P12701175981517386819

`A000069(n+1)+A001969(n+1)-A059009(n)`
-/

namespace A059010.P12701175981517386819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1) + (A001969 (n + 1) - A059009 n)

end

end A059010.P12701175981517386819

namespace A059010

/-- `A000069(n+1)+A001969(n+1)-A059009(n)` -/
def P12701175981517386819.Spec : Prop :=
  ∀ n, P12701175981517386819.a n = A059010 n

end A059010

/-! ## A059010.P1392833154583208725

`(A328012(n+2)-1)/2`
-/

namespace A059010.P1392833154583208725
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328012 (n + 2) - 1 : ℚ) / 2

end

end A059010.P1392833154583208725

namespace A059010

/-- `(A328012(n+2)-1)/2` -/
def P1392833154583208725.Spec : Prop :=
  ∀ n, P1392833154583208725.a n = (A059010 n : ℚ)

end A059010

/-!
# A059011: Odd number of 0's and 1's in binary expansion.

The programs for A059011, the canonical program `A059011.P915381792524988000` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059011 has offset 1).

The definition of A059011 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059011.P3011535835826144959

`xor(1, A059012(n+1))`
-/

namespace A059011.P3011535835826144959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A059012 (n + 1))

end

end A059011.P3011535835826144959

namespace A059011

/-- `xor(1, A059012(n+1))` -/
def P3011535835826144959.Spec : Prop :=
  ∀ n, P3011535835826144959.a n = A059011 (n + 1)

end A059011

/-! ## A059011.P915381792524988000

`A059009(A053738(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059011

/-- `A059009(A053738(n+1))` -/
def P915381792524988000.Spec : Prop :=
  ∀ n, P915381792524988000.a n = A059011 (n + 1)

theorem P915381792524988000.correct : P915381792524988000.Spec := by
  intro n
  simp only [A059011, Nat.add_sub_cancel]

end A059011

/-! ## A059011.P16721930770190185015

`eq[1, A010126(A164884(n))]`
-/

namespace A059011.P16721930770190185015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010126 (A164884 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059011.P16721930770190185015

namespace A059011

/-- `eq[1, A010126(A164884(n))]` -/
def P16721930770190185015.Spec : Prop :=
  ∀ n, (P16721930770190185015.a n : ℤ) = A059011 (n + 1)

end A059011

/-! ## A059011.P17276120175374756304

`filter[A059009(n), A010060(#)]`
-/

namespace A059011.P17276120175374756304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A059011.P17276120175374756304

namespace A059011

/-- `filter[A059009(n), A010060(#)]` -/
def P17276120175374756304.Spec : Prop :=
  ∀ n, P17276120175374756304.a n = A059011 (n + 1)

end A059011

/-! ## A059011.P181729495417021813

`A000069(A053738(n+1)+1)`
-/

namespace A059011.P181729495417021813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A053738 (n + 1) + 1).toNat

end

end A059011.P181729495417021813

namespace A059011

/-- `A000069(A053738(n+1)+1)` -/
def P181729495417021813.Spec : Prop :=
  ∀ n, P181729495417021813.a n = A059011 (n + 1)

end A059011

/-! ## A059011.P11457710310225120046

`eq[A275973(n+1), A277822(n)]`
-/

namespace A059011.P11457710310225120046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059011.P11457710310225120046

namespace A059011

/-- `eq[A275973(n+1), A277822(n)]` -/
def P11457710310225120046.Spec : Prop :=
  ∀ n, (P11457710310225120046.a n : ℤ) = A059011 (n + 1)

end A059011

/-! ## A059011.P14907146558965040675

`∩[A000069(n+1), A059009(n)]`
-/

namespace A059011.P14907146558965040675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059011.P14907146558965040675

namespace A059011

/-- `∩[A000069(n+1), A059009(n)]` -/
def P14907146558965040675.Spec : Prop :=
  ∀ n, (P14907146558965040675.a n : ℤ) = A059011 (n + 1)

end A059011

/-! ## A059011.P3169647263567500138

`filter[A053754(n+1), A010060(#)]`
-/

namespace A059011.P3169647263567500138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A059011.P3169647263567500138

namespace A059011

/-- `filter[A053754(n+1), A010060(#)]` -/
def P3169647263567500138.Spec : Prop :=
  ∀ n, P3169647263567500138.a n = A059011 (n + 1)

end A059011

/-! ## A059011.P2803057876892622123

`A059009(A053754(2*(n+1))/2)`
-/

namespace A059011.P2803057876892622123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 (SequenceMachineLib.roundAway ((A053754 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A059011.P2803057876892622123

namespace A059011

/-- `A059009(A053754(2*(n+1))/2)` -/
def P2803057876892622123.Spec : Prop :=
  ∀ n, P2803057876892622123.a n = A059011 (n + 1)

end A059011

/-! ## A059011.P12886021396359146056

`∩[A000069(n+1), A053754(n+1)]`
-/

namespace A059011.P12886021396359146056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059011.P12886021396359146056

namespace A059011

/-- `∩[A000069(n+1), A053754(n+1)]` -/
def P12886021396359146056.Spec : Prop :=
  ∀ n, (P12886021396359146056.a n : ℤ) = A059011 (n + 1)

end A059011

/-! ## A059011.P11685196427480914645

`A000069(A053754(2*(n+1))/2+1)`
-/

namespace A059011.P11685196427480914645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (SequenceMachineLib.roundAway ((A053754 (2 * (n + 1)) : ℚ) / 2 + 1)).toNat

end

end A059011.P11685196427480914645

namespace A059011

/-- `A000069(A053754(2*(n+1))/2+1)` -/
def P11685196427480914645.Spec : Prop :=
  ∀ n, P11685196427480914645.a n = A059011 (n + 1)

end A059011

/-! ## A059011.P2774378682001308576

`filter[A307613(2*n), A010060(#)]`
-/

namespace A059011.P2774378682001308576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307613 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A059011.P2774378682001308576

namespace A059011

/-- `filter[A307613(2*n), A010060(#)]` -/
def P2774378682001308576.Spec : Prop :=
  ∀ n, P2774378682001308576.a n = A059011 (n + 1)

end A059011

/-! ## A059011.P12479825052179988758

`filter[A000069(n+1), A059448(#)]`
-/

namespace A059011.P12479825052179988758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059448 (f1 j).toNat = 1) n)

end

end A059011.P12479825052179988758

namespace A059011

/-- `filter[A000069(n+1), A059448(#)]` -/
def P12479825052179988758.Spec : Prop :=
  ∀ n, P12479825052179988758.a n = A059011 (n + 1)

end A059011

/-! ## A059011.P4890564701998342400

`filter[A053754(n+2), A059448(#)]`
-/

namespace A059011.P4890564701998342400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059448 (f1 j).toNat = 1) n)

end

end A059011.P4890564701998342400

namespace A059011

/-- `filter[A053754(n+2), A059448(#)]` -/
def P4890564701998342400.Spec : Prop :=
  ∀ n, P4890564701998342400.a n = A059011 (n + 1)

end A059011

/-! ## A059011.P18272344300692756017

`lt[1-A059448(n+1), A010060(n+1)]+1`
-/

namespace A059011.P18272344300692756017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A059448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A059011.P18272344300692756017

namespace A059011

/-- `lt[1-A059448(n+1), A010060(n+1)]+1` -/
def P18272344300692756017.Spec : Prop :=
  ∀ n, (P18272344300692756017.a n : ℤ) = A059011 (n + 1)

end A059011

/-! ## A059011.P11645831819876477767

`lt[A010060(A003817(n)), A010060(n)]`
-/

namespace A059011.P11645831819876477767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A003817 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059011.P11645831819876477767

namespace A059011

/-- `lt[A010060(A003817(n)), A010060(n)]` -/
def P11645831819876477767.Spec : Prop :=
  ∀ n, (P11645831819876477767.a n : ℤ) = A059011 (n + 1)

end A059011

/-! ## A059011.P17591315634645626537

`lt[A010059(n), A010060(A035327(n))]`
-/

namespace A059011.P17591315634645626537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059011.P17591315634645626537

namespace A059011

/-- `lt[A010059(n), A010060(A035327(n))]` -/
def P17591315634645626537.Spec : Prop :=
  ∀ n, (P17591315634645626537.a n : ℤ) = A059011 (n + 1)

end A059011

/-! ## A059011.P17069401193715149122

`lt[1, A010060(n)+A000035(A023416(n))]`
-/

namespace A059011.P17069401193715149122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + A000035 (A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A059011.P17069401193715149122

namespace A059011

/-- `lt[1, A010060(n)+A000035(A023416(n))]` -/
def P17069401193715149122.Spec : Prop :=
  ∀ n, (P17069401193715149122.a n : ℤ) = A059011 (n + 1)

end A059011

/-! ## A059011.P4371391276819575731

`eq[2, A010060(n)+A010060(A035327(n))]`
-/

namespace A059011.P4371391276819575731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n + A010060 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059011.P4371391276819575731

namespace A059011

/-- `eq[2, A010060(n)+A010060(A035327(n))]` -/
def P4371391276819575731.Spec : Prop :=
  ∀ n, (P4371391276819575731.a n : ℤ) = A059011 (n + 1)

end A059011

/-! ## A059011.P3626177913519535975

`eq[1, A010060(n*A010060(A035327(n)))]`
-/

namespace A059011.P3626177913519535975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 ((n : ℤ) * A010060 (A035327 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059011.P3626177913519535975

namespace A059011

/-- `eq[1, A010060(n*A010060(A035327(n)))]` -/
def P3626177913519535975.Spec : Prop :=
  ∀ n, (P3626177913519535975.a n : ℤ) = A059011 (n + 1)

end A059011

/-!
# A059012: Numbers that have an even number of 0's and 1's in their binary expansion.

The programs for A059012, the canonical program `A059012.P14582640495260364617` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059012 has offset 1).

The definition of A059012 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059012.P14582640495260364617

`xor(1, A059011(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059012

/-- `xor(1, A059011(n+1))` -/
def P14582640495260364617.Spec : Prop :=
  ∀ n, P14582640495260364617.a n = A059012 (n + 1)

theorem P14582640495260364617.correct : P14582640495260364617.Spec := by
  intro n
  simp only [A059012, Nat.add_sub_cancel]

end A059012

/-! ## A059012.P14023802610688666221

`A059010(A053738(n+1))`
-/

namespace A059012.P14023802610688666221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 (A053738 (n + 1)).toNat

end

end A059012.P14023802610688666221

namespace A059012

/-- `A059010(A053738(n+1))` -/
def P14023802610688666221.Spec : Prop :=
  ∀ n, P14023802610688666221.a n = A059012 (n + 1)

end A059012

/-! ## A059012.P10151035089204088777

`A001969(A053738(n+1)+1)`
-/

namespace A059012.P10151035089204088777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (A053738 (n + 1) + 1).toNat

end

end A059012.P10151035089204088777

namespace A059012

/-- `A001969(A053738(n+1)+1)` -/
def P10151035089204088777.Spec : Prop :=
  ∀ n, P10151035089204088777.a n = A059012 (n + 1)

end A059012

/-! ## A059012.P9359165098163820233

`∩[A001969(n+1), A059010(n)]`
-/

namespace A059012.P9359165098163820233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059012.P9359165098163820233

namespace A059012

/-- `∩[A001969(n+1), A059010(n)]` -/
def P9359165098163820233.Spec : Prop :=
  ∀ n, (P9359165098163820233.a n : ℤ) = A059012 (n + 1)

end A059012

/-! ## A059012.P13890710640851087413

`A001969(ceil((A059011(n+1)+1)/2))`
-/

namespace A059012.P13890710640851087413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 ⌈(A059011 (n + 1) + 1 : ℚ) / 2⌉.toNat

end

end A059012.P13890710640851087413

namespace A059012

/-- `A001969(ceil((A059011(n+1)+1)/2))` -/
def P13890710640851087413.Spec : Prop :=
  ∀ n, P13890710640851087413.a n = A059012 (n + 1)

end A059012

/-! ## A059012.P10166110189979107616

`∩[A053754(n+1), A059010(n)]`
-/

namespace A059012.P10166110189979107616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059012.P10166110189979107616

namespace A059012

/-- `∩[A053754(n+1), A059010(n)]` -/
def P10166110189979107616.Spec : Prop :=
  ∀ n, (P10166110189979107616.a n : ℤ) = A059012 (n + 1)

end A059012

/-! ## A059012.P17930467373446470827

`A059010(A053754(2*(n+1))/2)`
-/

namespace A059012.P17930467373446470827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 (SequenceMachineLib.roundAway ((A053754 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A059012.P17930467373446470827

namespace A059012

/-- `A059010(A053754(2*(n+1))/2)` -/
def P17930467373446470827.Spec : Prop :=
  ∀ n, P17930467373446470827.a n = A059012 (n + 1)

end A059012

/-! ## A059012.P16292530725525136006

`A001969(A053754(2*(n+1))/2+1)`
-/

namespace A059012.P16292530725525136006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (SequenceMachineLib.roundAway ((A053754 (2 * (n + 1)) : ℚ) / 2 + 1)).toNat

end

end A059012.P16292530725525136006

namespace A059012

/-- `A001969(A053754(2*(n+1))/2+1)` -/
def P16292530725525136006.Spec : Prop :=
  ∀ n, P16292530725525136006.a n = A059012 (n + 1)

end A059012

/-! ## A059012.P1882757846442235857

`A004442(A059011(n+1))`
-/

namespace A059012.P1882757846442235857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A059011 (n + 1)).toNat

end

end A059012.P1882757846442235857

namespace A059012

/-- `A004442(A059011(n+1))` -/
def P1882757846442235857.Spec : Prop :=
  ∀ n, P1882757846442235857.a n = A059012 (n + 1)

end A059012

/-! ## A059012.P6703489866690990733

`xor(1, eq[1, A088705(A000120(n)*A023416(n))])`
-/

namespace A059012.P6703489866690990733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088705 (A000120 n * A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059012.P6703489866690990733

namespace A059012

/-- `xor(1, eq[1, A088705(A000120(n)*A023416(n))])` -/
def P6703489866690990733.Spec : Prop :=
  ∀ n, (P6703489866690990733.a n : ℤ) = A059012 (n + 1)

end A059012

/-! ## A059012.P7941554092901534073

`filter[A059010(n), A010059(#)]`
-/

namespace A059012.P7941554092901534073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A059012.P7941554092901534073

namespace A059012

/-- `filter[A059010(n), A010059(#)]` -/
def P7941554092901534073.Spec : Prop :=
  ∀ n, P7941554092901534073.a n = A059012 (n + 1)

end A059012

/-! ## A059012.P15875009295984878624

`filter[A059010(n), A092436(#)]`
-/

namespace A059012.P15875009295984878624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A059012.P15875009295984878624

namespace A059012

/-- `filter[A059010(n), A092436(#)]` -/
def P15875009295984878624.Spec : Prop :=
  ∀ n, P15875009295984878624.a n = A059012 (n + 1)

end A059012

/-! ## A059012.P6710005547454512677

`filter[A053754(n+2), A010059(#)]`
-/

namespace A059012.P6710005547454512677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A059012.P6710005547454512677

namespace A059012

/-- `filter[A053754(n+2), A010059(#)]` -/
def P6710005547454512677.Spec : Prop :=
  ∀ n, P6710005547454512677.a n = A059012 (n + 1)

end A059012

/-! ## A059012.P8742290273397123531

`filter[A053754(n+2), A092436(#)]`
-/

namespace A059012.P8742290273397123531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A092436 (f1 j).toNat = 1) n)

end

end A059012.P8742290273397123531

namespace A059012

/-- `filter[A053754(n+2), A092436(#)]` -/
def P8742290273397123531.Spec : Prop :=
  ∀ n, P8742290273397123531.a n = A059012 (n + 1)

end A059012

/-! ## A059012.P4639529418289067455

`filter[A001969(n+2), A298952(#)]`
-/

namespace A059012.P4639529418289067455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A298952 (f1 j).toNat = 1) n)

end

end A059012.P4639529418289067455

namespace A059012

/-- `filter[A001969(n+2), A298952(#)]` -/
def P4639529418289067455.Spec : Prop :=
  ∀ n, P4639529418289067455.a n = A059012 (n + 1)

end A059012

/-! ## A059012.P2843486463320874384

`filter[A053754(n+2), A298952(#)]`
-/

namespace A059012.P2843486463320874384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053754 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A298952 (f1 j).toNat = 1) n)

end

end A059012.P2843486463320874384

namespace A059012

/-- `filter[A053754(n+2), A298952(#)]` -/
def P2843486463320874384.Spec : Prop :=
  ∀ n, P2843486463320874384.a n = A059012 (n + 1)

end A059012

/-! ## A059012.P9980400999408753579

`lt[A010060(n+1), 1-A059448(n+1)]+1`
-/

namespace A059012.P9980400999408753579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A059448 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A059012.P9980400999408753579

namespace A059012

/-- `lt[A010060(n+1), 1-A059448(n+1)]+1` -/
def P9980400999408753579.Spec : Prop :=
  ∀ n, (P9980400999408753579.a n : ℤ) = A059012 (n + 1)

end A059012

/-! ## A059012.P16061180954936654668

`lt[A010060(n), A010059(A035327(n))]`
-/

namespace A059012.P16061180954936654668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059012.P16061180954936654668

namespace A059012

/-- `lt[A010060(n), A010059(A035327(n))]` -/
def P16061180954936654668.Spec : Prop :=
  ∀ n, (P16061180954936654668.a n : ℤ) = A059012 (n + 1)

end A059012

/-! ## A059012.P513852275666784897

`lt[A010060(n), A000035(A023416(n)+1)]`
-/

namespace A059012.P513852275666784897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A023416 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059012.P513852275666784897

namespace A059012

/-- `lt[A010060(n), A000035(A023416(n)+1)]` -/
def P513852275666784897.Spec : Prop :=
  ∀ n, (P513852275666784897.a n : ℤ) = A059012 (n + 1)

end A059012

/-! ## A059012.P10037573577336148032

`lt[A001285(n)*A001285(A035327(n)), 2]`
-/

namespace A059012.P10037573577336148032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n * A001285 (A035327 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059012.P10037573577336148032

namespace A059012

/-- `lt[A001285(n)*A001285(A035327(n)), 2]` -/
def P10037573577336148032.Spec : Prop :=
  ∀ n, (P10037573577336148032.a n : ℤ) = A059012 (n + 1)

end A059012

/-!
# A059013: Odd number of 0's and even number of 1's in binary expansion.

The programs for A059013, the canonical program `A059013.P9698162491277761355` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059013 has offset 1).

The definition of A059013 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059013.P16078797966903132766

`xor(1, A059014(n+1))`
-/

namespace A059013.P16078797966903132766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A059014 (n + 1))

end

end A059013.P16078797966903132766

namespace A059013

/-- `xor(1, A059014(n+1))` -/
def P16078797966903132766.Spec : Prop :=
  ∀ n, P16078797966903132766.a n = A059013 (n + 1)

end A059013

/-! ## A059013.P9698162491277761355

`A059009(A053754(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059013

/-- `A059009(A053754(n+1))` -/
def P9698162491277761355.Spec : Prop :=
  ∀ n, P9698162491277761355.a n = A059013 (n + 1)

theorem P9698162491277761355.correct : P9698162491277761355.Spec := by
  intro n
  simp only [A059013, Nat.add_sub_cancel]

end A059013

/-! ## A059013.P7393623866685366626

`A001969(A053754(n+1)+1)`
-/

namespace A059013.P7393623866685366626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (A053754 (n + 1) + 1).toNat

end

end A059013.P7393623866685366626

namespace A059013

/-- `A001969(A053754(n+1)+1)` -/
def P7393623866685366626.Spec : Prop :=
  ∀ n, P7393623866685366626.a n = A059013 (n + 1)

end A059013

/-! ## A059013.P620302795708359373

`∩[A001969(n+1), A059009(n)]`
-/

namespace A059013.P620302795708359373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059013.P620302795708359373

namespace A059013

/-- `∩[A001969(n+1), A059009(n)]` -/
def P620302795708359373.Spec : Prop :=
  ∀ n, (P620302795708359373.a n : ℤ) = A059013 (n + 1)

end A059013

/-! ## A059013.P8665366460717182818

`A004442(A059014(n+1))`
-/

namespace A059013.P8665366460717182818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A059014 (n + 1)).toNat

end

end A059013.P8665366460717182818

namespace A059013

/-- `A004442(A059014(n+1))` -/
def P8665366460717182818.Spec : Prop :=
  ∀ n, P8665366460717182818.a n = A059013 (n + 1)

end A059013

/-! ## A059013.P5805046272911944904

`filter[A059009(n), A010059(#)]`
-/

namespace A059013.P5805046272911944904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059009 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010059 (f1 j).toNat = 1) n)

end

end A059013.P5805046272911944904

namespace A059013

/-- `filter[A059009(n), A010059(#)]` -/
def P5805046272911944904.Spec : Prop :=
  ∀ n, P5805046272911944904.a n = A059013 (n + 1)

end A059013

/-! ## A059013.P13732604237413068536

`eq[A275973(2*n+1), A277822(2*n+1)]`
-/

namespace A059013.P13732604237413068536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059013.P13732604237413068536

namespace A059013

/-- `eq[A275973(2*n+1), A277822(2*n+1)]` -/
def P13732604237413068536.Spec : Prop :=
  ∀ n, (P13732604237413068536.a n : ℤ) = A059013 (n + 1)

end A059013

/-! ## A059013.P7207591305617705772

`lt[A010060(n), A000035(A023416(n))]`
-/

namespace A059013.P7207591305617705772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A023416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059013.P7207591305617705772

namespace A059013

/-- `lt[A010060(n), A000035(A023416(n))]` -/
def P7207591305617705772.Spec : Prop :=
  ∀ n, (P7207591305617705772.a n : ℤ) = A059013 (n + 1)

end A059013

/-! ## A059013.P13795277717171898196

`lt[A001285(n), A001285(A035327(n))]`
-/

namespace A059013.P13795277717171898196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059013.P13795277717171898196

namespace A059013

/-- `lt[A001285(n), A001285(A035327(n))]` -/
def P13795277717171898196.Spec : Prop :=
  ∀ n, (P13795277717171898196.a n : ℤ) = A059013 (n + 1)

end A059013

/-! ## A059013.P16925127709107524286

`lt[A010060(n), A010060(A035327(n))]`
-/

namespace A059013.P16925127709107524286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059013.P16925127709107524286

namespace A059013

/-- `lt[A010060(n), A010060(A035327(n))]` -/
def P16925127709107524286.Spec : Prop :=
  ∀ n, (P16925127709107524286.a n : ℤ) = A059013 (n + 1)

end A059013

/-! ## A059013.P9035562026970482814

`lt[A010059(A035327(n)), A010059(n)]`
-/

namespace A059013.P9035562026970482814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A035327 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059013.P9035562026970482814

namespace A059013

/-- `lt[A010059(A035327(n)), A010059(n)]` -/
def P9035562026970482814.Spec : Prop :=
  ∀ n, (P9035562026970482814.a n : ℤ) = A059013 (n + 1)

end A059013

/-! ## A059013.P6617575400282784594

`lt[A268676(n), A268676(A035327(n))]`
-/

namespace A059013.P6617575400282784594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059013.P6617575400282784594

namespace A059013

/-- `lt[A268676(n), A268676(A035327(n))]` -/
def P6617575400282784594.Spec : Prop :=
  ∀ n, (P6617575400282784594.a n : ℤ) = A059013 (n + 1)

end A059013

/-! ## A059013.P10345725526251434670

`lt[A341389(A233280(n))+A010060(n), 1]`
-/

namespace A059013.P10345725526251434670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (A233280 n).toNat + A010060 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059013.P10345725526251434670

namespace A059013

/-- `lt[A341389(A233280(n))+A010060(n), 1]` -/
def P10345725526251434670.Spec : Prop :=
  ∀ n, (P10345725526251434670.a n : ℤ) = A059013 (n + 1)

end A059013

/-! ## A059013.P5649139045052834701

`lt[A341389(A233280(n))+A268726(n), 1]`
-/

namespace A059013.P5649139045052834701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (A233280 n).toNat + A268726 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059013.P5649139045052834701

namespace A059013

/-- `lt[A341389(A233280(n))+A268726(n), 1]` -/
def P5649139045052834701.Spec : Prop :=
  ∀ n, (P5649139045052834701.a n : ℤ) = A059013 (n + 1)

end A059013

/-! ## A059013.P10715103397584313678

`eq[A023416(n)%2, A006519(A000120(n)+1)]`
-/

namespace A059013.P10715103397584313678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023416 n) 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A000120 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059013.P10715103397584313678

namespace A059013

/-- `eq[A023416(n)%2, A006519(A000120(n)+1)]` -/
def P10715103397584313678.Spec : Prop :=
  ∀ n, (P10715103397584313678.a n : ℤ) = A059013 (n + 1)

end A059013

/-! ## A059013.P4048281773127442246

`A140106(A059011(2*n+1)+1)`
-/

namespace A059013.P4048281773127442246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (A059011 (2 * n + 1) + 1).toNat

end

end A059013.P4048281773127442246

namespace A059013

/-- `A140106(A059011(2*n+1)+1)` -/
def P4048281773127442246.Spec : Prop :=
  ∀ n, P4048281773127442246.a n = A059013 (n + 1)

end A059013

/-! ## A059013.P15725739551074207648

`A004526(A059011(2*n+1)-1)`
-/

namespace A059013.P15725739551074207648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A059011 (2 * n + 1) - 1).toNat

end

end A059013.P15725739551074207648

namespace A059013

/-- `A004526(A059011(2*n+1)-1)` -/
def P15725739551074207648.Spec : Prop :=
  ∀ n, P15725739551074207648.a n = A059013 (n + 1)

end A059013

/-! ## A059013.P14906946060334126239

`lt[A059448(A004277(n))+A010060(n), 1]`
-/

namespace A059013.P14906946060334126239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059448 (A004277 n).toNat + A010060 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059013.P14906946060334126239

namespace A059013

/-- `lt[A059448(A004277(n))+A010060(n), 1]` -/
def P14906946060334126239.Spec : Prop :=
  ∀ n, (P14906946060334126239.a n : ℤ) = A059013 (n + 1)

end A059013

/-! ## A059013.P1256344484384281920

`lt[A010060(A003817(2*n)), A010059(n)]`
-/

namespace A059013.P1256344484384281920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A003817 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059013.P1256344484384281920

namespace A059013

/-- `lt[A010060(A003817(2*n)), A010059(n)]` -/
def P1256344484384281920.Spec : Prop :=
  ∀ n, (P1256344484384281920.a n : ℤ) = A059013 (n + 1)

end A059013

/-! ## A059013.P3259650022743280808

`lt[A010060(A003817(2*n)), 1-A010060(n)]`
-/

namespace A059013.P3259650022743280808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A003817 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010060 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059013.P3259650022743280808

namespace A059013

/-- `lt[A010060(A003817(2*n)), 1-A010060(n)]` -/
def P3259650022743280808.Spec : Prop :=
  ∀ n, (P3259650022743280808.a n : ℤ) = A059013 (n + 1)

end A059013

/-!
# A059014: Numbers that have an even number of 0's and an odd number of 1's in binary expansion.

The programs for A059014, the canonical program `A059014.P3544405708758436744` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059014 has offset 1).

The definition of A059014 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059014.P3544405708758436744

`xor(1, A059013(n+1))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A059014

/-- `xor(1, A059013(n+1))` -/
def P3544405708758436744.Spec : Prop :=
  ∀ n, P3544405708758436744.a n = A059014 (n + 1)

theorem P3544405708758436744.correct : P3544405708758436744.Spec := by
  intro n
  simp only [A059014, Nat.add_sub_cancel]

end A059014

/-! ## A059014.P14267306826677896138

`A059010(A053754(n+1))`
-/

namespace A059014.P14267306826677896138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 (A053754 (n + 1)).toNat

end

end A059014.P14267306826677896138

namespace A059014

/-- `A059010(A053754(n+1))` -/
def P14267306826677896138.Spec : Prop :=
  ∀ n, P14267306826677896138.a n = A059014 (n + 1)

end A059014

/-! ## A059014.P8637569762554650821

`ceil(A059011(A004277(n))/2)`
-/

namespace A059014.P8637569762554650821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A059011 (A004277 n).toNat : ℚ) / 2⌉

end

end A059014.P8637569762554650821

namespace A059014

/-- `ceil(A059011(A004277(n))/2)` -/
def P8637569762554650821.Spec : Prop :=
  ∀ n, P8637569762554650821.a n = A059014 (n + 1)

end A059014

/-! ## A059014.P8207611167901679951

`∩[A053738(n+1), A059010(n)]`
-/

namespace A059014.P8207611167901679951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059014.P8207611167901679951

namespace A059014

/-- `∩[A053738(n+1), A059010(n)]` -/
def P8207611167901679951.Spec : Prop :=
  ∀ n, (P8207611167901679951.a n : ℤ) = A059014 (n + 1)

end A059014

/-! ## A059014.P13924110460985692344

`record[(A000265(A059011(n+1)+1)-1)/2]`
-/

namespace A059014.P13924110460985692344
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000265 (A059011 (n + 1) + 1).toNat - 1 : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059014.P13924110460985692344

namespace A059014

/-- `record[(A000265(A059011(n+1)+1)-1)/2]` -/
def P13924110460985692344.Spec : Prop :=
  ∀ n, P13924110460985692344.a n = (A059014 (n + 1) : ℚ)

end A059014

/-! ## A059014.P1614347217159006308

`A000069(A053754(n+1)+1)`
-/

namespace A059014.P1614347217159006308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (A053754 (n + 1) + 1).toNat

end

end A059014.P1614347217159006308

namespace A059014

/-- `A000069(A053754(n+1)+1)` -/
def P1614347217159006308.Spec : Prop :=
  ∀ n, P1614347217159006308.a n = A059014 (n + 1)

end A059014

/-! ## A059014.P14484376556494522928

`∩[A000069(n+1), A059010(n)]`
-/

namespace A059014.P14484376556494522928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059014.P14484376556494522928

namespace A059014

/-- `∩[A000069(n+1), A059010(n)]` -/
def P14484376556494522928.Spec : Prop :=
  ∀ n, (P14484376556494522928.a n : ℤ) = A059014 (n + 1)

end A059014

/-! ## A059014.P12547062929910633520

`∩[A000069(n+1), A053738(n+1)]`
-/

namespace A059014.P12547062929910633520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059014.P12547062929910633520

namespace A059014

/-- `∩[A000069(n+1), A053738(n+1)]` -/
def P12547062929910633520.Spec : Prop :=
  ∀ n, (P12547062929910633520.a n : ℤ) = A059014 (n + 1)

end A059014

/-! ## A059014.P3504689150971371648

`A004442(A059013(n+1))`
-/

namespace A059014.P3504689150971371648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A059013 (n + 1)).toNat

end

end A059014.P3504689150971371648

namespace A059014

/-- `A004442(A059013(n+1))` -/
def P3504689150971371648.Spec : Prop :=
  ∀ n, P3504689150971371648.a n = A059014 (n + 1)

end A059014

/-! ## A059014.P17386664542011565528

`filter[A059010(n), A010060(#)]`
-/

namespace A059014.P17386664542011565528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059010 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A059014.P17386664542011565528

namespace A059014

/-- `filter[A059010(n), A010060(#)]` -/
def P17386664542011565528.Spec : Prop :=
  ∀ n, P17386664542011565528.a n = A059014 (n + 1)

end A059014

/-! ## A059014.P7106598983223914228

`eq[A277822(n), A298952(n)]`
-/

namespace A059014.P7106598983223914228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298952 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059014.P7106598983223914228

namespace A059014

/-- `eq[A277822(n), A298952(n)]` -/
def P7106598983223914228.Spec : Prop :=
  ∀ n, (P7106598983223914228.a n : ℤ) = A059014 (n + 1)

end A059014

/-! ## A059014.P1977511648596832863

`eq[1, A010126(A164884(2*n))]`
-/

namespace A059014.P1977511648596832863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010126 (A164884 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059014.P1977511648596832863

namespace A059014

/-- `eq[1, A010126(A164884(2*n))]` -/
def P1977511648596832863.Spec : Prop :=
  ∀ n, (P1977511648596832863.a n : ℤ) = A059014 (n + 1)

end A059014

/-! ## A059014.P13930699491436320048

`filter[A053738(n+1), A010060(#)]`
-/

namespace A059014.P13930699491436320048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010060 (f1 j).toNat = 1) n)

end

end A059014.P13930699491436320048

namespace A059014

/-- `filter[A053738(n+1), A010060(#)]` -/
def P13930699491436320048.Spec : Prop :=
  ∀ n, P13930699491436320048.a n = A059014 (n + 1)

end A059014

/-! ## A059014.P7814929032409161935

`filter[A000069(n+1), A298952(#)]`
-/

namespace A059014.P7814929032409161935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A298952 (f1 j).toNat = 1) n)

end

end A059014.P7814929032409161935

namespace A059014

/-- `filter[A000069(n+1), A298952(#)]` -/
def P7814929032409161935.Spec : Prop :=
  ∀ n, P7814929032409161935.a n = A059014 (n + 1)

end A059014

/-! ## A059014.P10330426420103221153

`filter[A053738(n+1), A298952(#)]`
-/

namespace A059014.P10330426420103221153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053738 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A298952 (f1 j).toNat = 1) n)

end

end A059014.P10330426420103221153

namespace A059014

/-- `filter[A053738(n+1), A298952(#)]` -/
def P10330426420103221153.Spec : Prop :=
  ∀ n, P10330426420103221153.a n = A059014 (n + 1)

end A059014

/-! ## A059014.P15699153797753073611

`filter[A143579(2*n), A298952(#)]`
-/

namespace A059014.P15699153797753073611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143579 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A298952 (f1 j).toNat = 1) n)

end

end A059014.P15699153797753073611

namespace A059014

/-- `filter[A143579(2*n), A298952(#)]` -/
def P15699153797753073611.Spec : Prop :=
  ∀ n, P15699153797753073611.a n = A059014 (n + 1)

end A059014

/-! ## A059014.P16243865216353801379

`eq[A102391(n), A275973(n+1)]`
-/

namespace A059014.P16243865216353801379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102391 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059014.P16243865216353801379

namespace A059014

/-- `eq[A102391(n), A275973(n+1)]` -/
def P16243865216353801379.Spec : Prop :=
  ∀ n, (P16243865216353801379.a n : ℤ) = A059014 (n + 1)

end A059014

/-! ## A059014.P12806798340489796181

`filter[A160017(2*n+1), A298952(#)]`
-/

namespace A059014.P12806798340489796181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160017 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A298952 (f1 j).toNat = 1) n)

end

end A059014.P12806798340489796181

namespace A059014

/-- `filter[A160017(2*n+1), A298952(#)]` -/
def P12806798340489796181.Spec : Prop :=
  ∀ n, P12806798340489796181.a n = A059014 (n + 1)

end A059014

/-! ## A059014.P5207472316636566482

`eq[A275973(2*n+1), A277822(n)]`
-/

namespace A059014.P5207472316636566482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275973 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277822 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059014.P5207472316636566482

namespace A059014

/-- `eq[A275973(2*n+1), A277822(n)]` -/
def P5207472316636566482.Spec : Prop :=
  ∀ n, (P5207472316636566482.a n : ℤ) = A059014 (n + 1)

end A059014

/-! ## A059014.P17150390977162970189

`lt[A010059(n), A005590(A003817(n))]`
-/

namespace A059014.P17150390977162970189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A003817 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059014.P17150390977162970189

namespace A059014

/-- `lt[A010059(n), A005590(A003817(n))]` -/
def P17150390977162970189.Spec : Prop :=
  ∀ n, (P17150390977162970189.a n : ℤ) = A059014 (n + 1)

end A059014

/-!
# A059015: Total number of 0's in binary expansions of 0, ..., n.

The programs for A059015, the canonical program `A059015.P11480840936605404321` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059015 has offset 0).

The definition of A059015 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000788, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059015.P11480840936605404321

`A083652(n)-A000788(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059015

/-- `A083652(n)-A000788(n)` -/
def P11480840936605404321.Spec : Prop :=
  ∀ n, P11480840936605404321.a n = A059015 n

theorem P11480840936605404321.correct : P11480840936605404321.Spec := by
  intro n
  simp only [A059015]

end A059015

/-! ## A059015.P14682261892529811397

`∑[a(floor(n/2))+a(n%2)]` with `a(0)=1, a(1)=0`
-/

namespace A059015.P14682261892529811397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + f1 (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059015.P14682261892529811397

namespace A059015

/-- `∑[a(floor(n/2))+a(n%2)]` -/
def P14682261892529811397.Spec : Prop :=
  ∀ n, (P14682261892529811397.a n : ℤ) = A059015 n

end A059015

/-! ## A059015.P13973591988029513034

`∑[a(floor(n/2))+and(1, n+1)]` with `a(0)=1, a(1)=0`
-/

namespace A059015.P13973591988029513034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 ⌊(n : ℚ) / 2⌋.toNat + Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059015.P13973591988029513034

namespace A059015

/-- `∑[a(floor(n/2))+and(1, n+1)]` -/
def P13973591988029513034.Spec : Prop :=
  ∀ n, (P13973591988029513034.a n : ℤ) = A059015 n

end A059015

/-! ## A059015.P13750070404554138389

`∑[∑[a(∑[a(n-2)²])-a(n-1)]]+1` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A059015.P13750070404554138389
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f3 =>
  f3 (n - 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  f2 (∑ j ∈ Finset.range (n + 1), f3 j) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A059015.P13750070404554138389

namespace A059015

/-- `∑[∑[a(∑[a(n-2)²])-a(n-1)]]+1` -/
def P13750070404554138389.Spec : Prop :=
  ∀ n, P13750070404554138389.a n = A059015 n

end A059015

/-! ## A059015.P4608528371673832048

`∑[A023416(n)]`
-/

namespace A059015.P4608528371673832048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059015.P4608528371673832048

namespace A059015

/-- `∑[A023416(n)]` -/
def P4608528371673832048.Spec : Prop :=
  ∀ n, P4608528371673832048.a n = A059015 n

end A059015

/-! ## A059015.P13793343344165026829

`A181132(n)+1`
-/

namespace A059015.P13793343344165026829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181132 n + 1

end

end A059015.P13793343344165026829

namespace A059015

/-- `A181132(n)+1` -/
def P13793343344165026829.Spec : Prop :=
  ∀ n, P13793343344165026829.a n = A059015 n

theorem P13793343344165026829.correct : P13793343344165026829.Spec := by
  intro n
  simp only [A059015, Nat.add_sub_cancel, A059015.P13793343344165026829.a, A059015.P11480840936605404321.a, A000788, A000788.P8338375810879423652.a, A083652, A083652.P17078178510795744902.a, A181132, A181132.P3293973136529451721.a, A083741, A083741.P6552315304162526779.a, A136013, A136013.P12572160085575880269.a, A245788, A245788.P10796889760857720878.f2, A245788.P10796889760857720878.f1, A245788.P10796889760857720878.a, A298011, A298011.P12682259250450599023.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A059015

/-! ## A059015.P15918425757846191956

`∑[A080791(n)]+1`
-/

namespace A059015.P15918425757846191956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A059015.P15918425757846191956

namespace A059015

/-- `∑[A080791(n)]+1` -/
def P15918425757846191956.Spec : Prop :=
  ∀ n, P15918425757846191956.a n = A059015 n

end A059015

/-! ## A059015.P12124640516095955995

`∑[val(A176893(n), 2)]`
-/

namespace A059015.P12124640516095955995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A176893 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059015.P12124640516095955995

namespace A059015

/-- `∑[val(A176893(n), 2)]` -/
def P12124640516095955995.Spec : Prop :=
  ∀ n, (P12124640516095955995.a n : ℤ) = A059015 n

end A059015

/-! ## A059015.P16195634694649914958

`∑[log2(A080100(n))]+1`
-/

namespace A059015.P16195634694649914958
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A080100 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A059015.P16195634694649914958

namespace A059015

/-- `∑[log2(A080100(n))]+1` -/
def P16195634694649914958.Spec : Prop :=
  ∀ n, P16195634694649914958.a n = (A059015 n : ℝ)

end A059015

/-! ## A059015.P5063824311783522601

`∑[∑[A089263(n)]]+1`
-/

namespace A059015.P5063824311783522601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089263 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A059015.P5063824311783522601

namespace A059015

/-- `∑[∑[A089263(n)]]+1` -/
def P5063824311783522601.Spec : Prop :=
  ∀ n, P5063824311783522601.a n = A059015 n

end A059015

/-! ## A059015.P15189673579203618147

`∑[A008687(n+1)]-n`
-/

namespace A059015.P15189673579203618147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A059015.P15189673579203618147

namespace A059015

/-- `∑[A008687(n+1)]-n` -/
def P15189673579203618147.Spec : Prop :=
  ∀ n, P15189673579203618147.a n = A059015 n

end A059015

/-! ## A059015.P8660111061705194316

`∑[∑{digits}[A007088(n), 1-#]]`
-/

namespace A059015.P8660111061705194316
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f2 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059015.P8660111061705194316

namespace A059015

/-- `∑[∑{digits}[A007088(n), 1-#]]` -/
def P8660111061705194316.Spec : Prop :=
  ∀ n, P8660111061705194316.a n = A059015 n

end A059015

/-! ## A059015.P10334384833955078673

`∑[A233272(n)-n]-n`
-/

namespace A059015.P10334384833955078673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233272 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A059015.P10334384833955078673

namespace A059015

/-- `∑[A233272(n)-n]-n` -/
def P10334384833955078673.Spec : Prop :=
  ∀ n, P10334384833955078673.a n = A059015 n

end A059015

/-! ## A059015.P13793655850417468465

`∑[A290251(2*n+1)]-n`
-/

namespace A059015.P13793655850417468465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290251 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A059015.P13793655850417468465

namespace A059015

/-- `∑[A290251(2*n+1)]-n` -/
def P13793655850417468465.Spec : Prop :=
  ∀ n, P13793655850417468465.a n = A059015 n

end A059015

/-! ## A059015.P2720836166758536377

`∑[log2(A267584(2*n+1))]-n`
-/

namespace A059015.P2720836166758536377
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A267584 (2 * n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℝ)

end

end A059015.P2720836166758536377

namespace A059015

/-- `∑[log2(A267584(2*n+1))]-n` -/
def P2720836166758536377.Spec : Prop :=
  ∀ n, P2720836166758536377.a n = (A059015 n : ℝ)

end A059015

/-! ## A059015.P12149253077965345060

`∑[floor(log2(2*n+1))-A000120(n)]+1`
-/

namespace A059015.P12149253077965345060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (2 * n + 1) : ℤ) - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A059015.P12149253077965345060

namespace A059015

/-- `∑[floor(log2(2*n+1))-A000120(n)]+1` -/
def P12149253077965345060.Spec : Prop :=
  ∀ n, P12149253077965345060.a n = A059015 n

end A059015

/-! ## A059015.P12766270288651090493

`∑[A000120(A035327(n))]`
-/

namespace A059015.P12766270288651090493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035327 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059015.P12766270288651090493

namespace A059015

/-- `∑[A000120(A035327(n))]` -/
def P12766270288651090493.Spec : Prop :=
  ∀ n, P12766270288651090493.a n = A059015 n

end A059015

/-! ## A059015.P7751583190999420034

`A000788(n)-A301336(n)`
-/

namespace A059015.P7751583190999420034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n - A301336 n

end

end A059015.P7751583190999420034

namespace A059015

/-- `A000788(n)-A301336(n)` -/
def P7751583190999420034.Spec : Prop :=
  ∀ n, P7751583190999420034.a n = A059015 n

end A059015

/-! ## A059015.P11393113024572919319

`∑[A070939(n)-A000120(n)]`
-/

namespace A059015.P11393113024572919319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n - A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059015.P11393113024572919319

namespace A059015

/-- `∑[A070939(n)-A000120(n)]` -/
def P11393113024572919319.Spec : Prop :=
  ∀ n, P11393113024572919319.a n = A059015 n

end A059015

/-! ## A059015.P16872735920667596461

`A000788(n)+1-A268289(n)`
-/

namespace A059015.P16872735920667596461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n + (1 - A268289 n)

end

end A059015.P16872735920667596461

namespace A059015

/-- `A000788(n)+1-A268289(n)` -/
def P16872735920667596461.Spec : Prop :=
  ∀ n, P16872735920667596461.a n = A059015 n

end A059015

/-!
# A059016: Number of 0's in binary expansion of Fibonacci(n).

The programs for A059016, the canonical program `A059016.P3331646903593192012` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059016 has offset 0).

The definition of A059016 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059016.P3331646903593192012

`A023416(A000045(n))`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059016

/-- `A023416(A000045(n))` -/
def P3331646903593192012.Spec : Prop :=
  ∀ n, P3331646903593192012.a n = A059016 n

theorem P3331646903593192012.correct : P3331646903593192012.Spec := by
  intro n
  simp only [A059016]

end A059016

/-! ## A059016.P3550841944151374513

`A011373(n)-A350700(n)`
-/

namespace A059016.P3550841944151374513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n - A350700 n

end

end A059016.P3550841944151374513

namespace A059016

/-- `A011373(n)-A350700(n)` -/
def P3550841944151374513.Spec : Prop :=
  ∀ n, P3550841944151374513.a n = A059016 n

end A059016

/-! ## A059016.P11449357174202821178

`A011373(n)-Δ[A214923(abs(1-n))]`
-/

namespace A059016.P11449357174202821178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214923 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011373 n - (f1 (n + 1) - f1 n)

end

end A059016.P11449357174202821178

namespace A059016

/-- `A011373(n)-Δ[A214923(abs(1-n))]` -/
def P11449357174202821178.Spec : Prop :=
  ∀ n, P11449357174202821178.a n = A059016 n

end A059016

/-! ## A059016.P10102842098089284442

`A020909(A028310(n))-A011373(n)`
-/

namespace A059016.P10102842098089284442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020909 (A028310 n).toNat - A011373 n

end

end A059016.P10102842098089284442

namespace A059016

/-- `A020909(A028310(n))-A011373(n)` -/
def P10102842098089284442.Spec : Prop :=
  ∀ n, P10102842098089284442.a n = A059016 n

end A059016

/-! ## A059016.P9460963971043290490

`∑{digits}[A004687(n), A000045(#)]-A350700(n)`
-/

namespace A059016.P9460963971043290490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000045 x).sum - A350700 n

end

end A059016.P9460963971043290490

namespace A059016

/-- `∑{digits}[A004687(n), A000045(#)]-A350700(n)` -/
def P9460963971043290490.Spec : Prop :=
  ∀ n, P9460963971043290490.a n = A059016 n

end A059016

/-! ## A059016.P13789861467638394971

`∑{digits}[A004687(n), A004687(#)]-A350700(n)`
-/

namespace A059016.P13789861467638394971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A004687 x).sum - A350700 n

end

end A059016.P13789861467638394971

namespace A059016

/-- `∑{digits}[A004687(n), A004687(#)]-A350700(n)` -/
def P13789861467638394971.Spec : Prop :=
  ∀ n, P13789861467638394971.a n = A059016 n

end A059016

/-! ## A059016.P16552514785220981630

`∑{digits}[A004685(n), 1-#]`
-/

namespace A059016.P16552514785220981630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => 1 - (x : ℤ)).sum

end

end A059016.P16552514785220981630

namespace A059016

/-- `∑{digits}[A004685(n), 1-#]` -/
def P16552514785220981630.Spec : Prop :=
  ∀ n, P16552514785220981630.a n = A059016 n

end A059016

/-!
# A059018: Write 10*n in base 4; a(n) = sum of digits mod 4.

The programs for A059018, the canonical program `A059018.P17827601340596542486` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059018 has offset 0).

The definition of A059018 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1001 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059018.P17827601340596542486

`A053839(10*n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A059018

/-- `A053839(10*n)` -/
def P17827601340596542486.Spec : Prop :=
  ∀ n, P17827601340596542486.a n = A059018 n

theorem P17827601340596542486.correct : P17827601340596542486.Spec := by
  intro n
  simp only [A059018]

end A059018

/-! ## A059018.P13365467397812303993

`A053737(10*n)%4`
-/

namespace A059018.P13365467397812303993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053737 (10 * n)) 4

end

end A059018.P13365467397812303993

namespace A059018

/-- `A053737(10*n)%4` -/
def P13365467397812303993.Spec : Prop :=
  ∀ n, P13365467397812303993.a n = A059018 n

end A059018

/-! ## A059018.P2575391116548839268

`and(3, A087069(10*n))`
-/

namespace A059018.P2575391116548839268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A087069 (10 * n))

end

end A059018.P2575391116548839268

namespace A059018

/-- `and(3, A087069(10*n))` -/
def P2575391116548839268.Spec : Prop :=
  ∀ n, P2575391116548839268.a n = A059018 n

end A059018

/-! ## A059018.P5509032540216212526

`A010873(A053737(10*n))`
-/

namespace A059018.P5509032540216212526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A053737 (10 * n)).toNat

end

end A059018.P5509032540216212526

namespace A059018

/-- `A010873(A053737(10*n))` -/
def P5509032540216212526.Spec : Prop :=
  ∀ n, P5509032540216212526.a n = A059018 n

end A059018

/-! ## A059018.P2124925738421088214

`A010873(A087069(10*n))`
-/

namespace A059018.P2124925738421088214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A087069 (10 * n)).toNat

end

end A059018.P2124925738421088214

namespace A059018

/-- `A010873(A087069(10*n))` -/
def P2124925738421088214.Spec : Prop :=
  ∀ n, P2124925738421088214.a n = A059018 n

end A059018

/-! ## A059018.P6873945963276505737

`A020654(10*n+1)%4`
-/

namespace A059018.P6873945963276505737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020654 (10 * n + 1)) 4

end

end A059018.P6873945963276505737

namespace A059018

/-- `A020654(10*n+1)%4` -/
def P6873945963276505737.Spec : Prop :=
  ∀ n, P6873945963276505737.a n = A059018 n

end A059018

/-!
# A059019: Number of Dyck paths of semilength n with no peak at height 3.

The programs for A059019, there is no canonical definition to state claims against.
-/

/-! ## A059019.P12737540493912290391

`A135337(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A059019.P12737540493912290391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A135337 (n - 1) + a (n - 1)

end

end A059019.P12737540493912290391

/-! ## A059019.P14524579945704355673

`A114489(A022856(n+2))`
-/

namespace A059019.P14524579945704355673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114489 (A022856 (n + 2)).toNat

end

end A059019.P14524579945704355673

/-! ## A059019.P7276449917037391393

`A114489(A016028(n+1)-1)`
-/

namespace A059019.P7276449917037391393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114489 (A016028 (n + 1) - 1).toNat

end

end A059019.P7276449917037391393

/-! ## A059019.P4695795152187745393

`A114489(A000124(n)-A004275(n))`
-/

namespace A059019.P4695795152187745393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114489 (A000124 n - A004275 n).toNat

end

end A059019.P4695795152187745393

/-! ## A059019.P16540460153761750502

`A114489(A057428(n)+A016028(n+1))`
-/

namespace A059019.P16540460153761750502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114489 (A057428 n + A016028 (n + 1)).toNat

end

end A059019.P16540460153761750502

/-! ## A059019.P16256773760717762953

`A114489(A000124(n)-A300576(n+1))`
-/

namespace A059019.P16256773760717762953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114489 (A000124 n - A300576 (n + 1)).toNat

end

end A059019.P16256773760717762953

/-!
# A059020: Number of 2 X n checkerboards (with at least one red square) in which the set of red squares is edge connected.

The programs for A059020, the canonical program `A059020.P3737895964616894655` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059020 has offset 0).

The definition of A059020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059020.P3737895964616894655

`2*a(n-1)+a(n-2)+4*n-1` with `a(0)=0, a(1)=3`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059020

/-- `2*a(n-1)+a(n-2)+4*n-1` -/
def P3737895964616894655.Spec : Prop :=
  ∀ n, P3737895964616894655.a n = A059020 n

theorem P3737895964616894655.correct : P3737895964616894655.Spec := by
  intro n
  simp only [A059020]

end A059020

/-! ## A059020.P17155348589090539357

`∑[ogf((3x+x^2)/(1-3x+x^2+x^3))]`
-/

namespace A059020.P17155348589090539357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1] [1, -3, 1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P17155348589090539357

namespace A059020

/-- `∑[ogf((3x+x^2)/(1-3x+x^2+x^3))]` -/
def P17155348589090539357.Spec : Prop :=
  ∀ n, P17155348589090539357.a n = A059020 n

end A059020

/-! ## A059020.P14506195249827308957

`ogf((3x+x^2)/(1-4x+4x^2-x^4))`
-/

namespace A059020.P14506195249827308957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 1] [1, -4, 4, 0, -1] n

end

end A059020.P14506195249827308957

namespace A059020

/-- `ogf((3x+x^2)/(1-4x+4x^2-x^4))` -/
def P14506195249827308957.Spec : Prop :=
  ∀ n, P14506195249827308957.a n = A059020 n

end A059020

/-! ## A059020.P7197437202424849274

`∑[a(n-2)+2*(a(n-1)+2)]` with `a(0)=0, a(1)=3`
-/

namespace A059020.P7197437202424849274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 2) + 2 * (f1 (n - 1) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P7197437202424849274

namespace A059020

/-- `∑[a(n-2)+2*(a(n-1)+2)]` -/
def P7197437202424849274.Spec : Prop :=
  ∀ n, (P7197437202424849274.a n : ℤ) = A059020 n

end A059020

/-! ## A059020.P10162867000511767655

`∑[a(n-1)+4+a(n-1)+a(n-2)]` with `a(0)=0, a(1)=3`
-/

namespace A059020.P10162867000511767655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n f1 =>
  f1 (n - 1) + 4 + (f1 (n - 1) + f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P10162867000511767655

namespace A059020

/-- `∑[a(n-1)+4+a(n-1)+a(n-2)]` -/
def P10162867000511767655.Spec : Prop :=
  ∀ n, (P10162867000511767655.a n : ℤ) = A059020 n

end A059020

/-! ## A059020.P9516728808949563894

`A048777(n)-(n+1)`
-/

namespace A059020.P9516728808949563894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048777 n - (n + 1 : ℤ)

end

end A059020.P9516728808949563894

namespace A059020

/-- `A048777(n)-(n+1)` -/
def P9516728808949563894.Spec : Prop :=
  ∀ n, P9516728808949563894.a n = A059020 n

end A059020

/-! ## A059020.P17277724771644831973

`∑[∑[A078057(n)]-1]`
-/

namespace A059020.P17277724771644831973
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078057 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P17277724771644831973

namespace A059020

/-- `∑[∑[A078057(n)]-1]` -/
def P17277724771644831973.Spec : Prop :=
  ∀ n, P17277724771644831973.a n = A059020 n

end A059020

/-! ## A059020.P1074973903769439572

`∑[A005409(n+2)-1]`
-/

namespace A059020.P1074973903769439572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005409 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P1074973903769439572

namespace A059020

/-- `∑[A005409(n+2)-1]` -/
def P1074973903769439572.Spec : Prop :=
  ∀ n, P1074973903769439572.a n = A059020 n

end A059020

/-! ## A059020.P13610834031303489026

`∑[A000129(n+2)-2]`
-/

namespace A059020.P13610834031303489026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P13610834031303489026

namespace A059020

/-- `∑[A000129(n+2)-2]` -/
def P13610834031303489026.Spec : Prop :=
  ∀ n, P13610834031303489026.a n = A059020 n

end A059020

/-! ## A059020.P11200413503818770645

`∑[A052937(n+1)-3]`
-/

namespace A059020.P11200413503818770645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052937 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P11200413503818770645

namespace A059020

/-- `∑[A052937(n+1)-3]` -/
def P11200413503818770645.Spec : Prop :=
  ∀ n, P11200413503818770645.a n = A059020 n

end A059020

/-! ## A059020.P4980121605991444631

`∑[A215928(n+2)-2]`
-/

namespace A059020.P4980121605991444631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215928 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P4980121605991444631

namespace A059020

/-- `∑[A215928(n+2)-2]` -/
def P4980121605991444631.Spec : Prop :=
  ∀ n, P4980121605991444631.a n = A059020 n

end A059020

/-! ## A059020.P9560763734710425823

`∑[A174191(n+2)-3]`
-/

namespace A059020.P9560763734710425823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174191 (n + 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P9560763734710425823

namespace A059020

/-- `∑[A174191(n+2)-3]` -/
def P9560763734710425823.Spec : Prop :=
  ∀ n, P9560763734710425823.a n = A059020 n

end A059020

/-! ## A059020.P7486067485210462886

`∑[A238375(2*n)-1]`
-/

namespace A059020.P7486067485210462886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238375 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P7486067485210462886

namespace A059020

/-- `∑[A238375(2*n)-1]` -/
def P7486067485210462886.Spec : Prop :=
  ∀ n, P7486067485210462886.a n = A059020 n

end A059020

/-! ## A059020.P9338267438929821121

`Δ[A271389(n)]-(n+1)`
-/

namespace A059020.P9338267438929821121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n + 1 : ℤ)

end

end A059020.P9338267438929821121

namespace A059020

/-- `Δ[A271389(n)]-(n+1)` -/
def P9338267438929821121.Spec : Prop :=
  ∀ n, P9338267438929821121.a n = A059020 n

end A059020

/-! ## A059020.P2448611171050863588

`∑[∑[∑[A052542(n)]]-1]`
-/

namespace A059020.P2448611171050863588
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P2448611171050863588

namespace A059020

/-- `∑[∑[∑[A052542(n)]]-1]` -/
def P2448611171050863588.Spec : Prop :=
  ∀ n, P2448611171050863588.a n = A059020 n

end A059020

/-! ## A059020.P502734292887132953

`∑[abs(A077985(n+1))-2]`
-/

namespace A059020.P502734292887132953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A077985 (n + 1)| - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P502734292887132953

namespace A059020

/-- `∑[abs(A077985(n+1))-2]` -/
def P502734292887132953.Spec : Prop :=
  ∀ n, P502734292887132953.a n = A059020 n

end A059020

/-! ## A059020.P7435330196017242748

`∑[∑[A001333(n+1)]-1]`
-/

namespace A059020.P7435330196017242748
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P7435330196017242748

namespace A059020

/-- `∑[∑[A001333(n+1)]-1]` -/
def P7435330196017242748.Spec : Prop :=
  ∀ n, P7435330196017242748.a n = A059020 n

end A059020

/-! ## A059020.P10313440581508423869

`∑[∑[xor(1, A265278(n+1))]]`
-/

namespace A059020.P10313440581508423869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A265278 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P10313440581508423869

namespace A059020

/-- `∑[∑[xor(1, A265278(n+1))]]` -/
def P10313440581508423869.Spec : Prop :=
  ∀ n, P10313440581508423869.a n = A059020 n

end A059020

/-! ## A059020.P11770989504149917393

`Δ[A048776(n)-(n+1)²]`
-/

namespace A059020.P11770989504149917393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048776 n - ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059020.P11770989504149917393

namespace A059020

/-- `Δ[A048776(n)-(n+1)²]` -/
def P11770989504149917393.Spec : Prop :=
  ∀ n, P11770989504149917393.a n = A059020 n

end A059020

/-! ## A059020.P14785826031707654916

`∑[∑[A293004(n+1)]+n]`
-/

namespace A059020.P14785826031707654916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293004 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059020.P14785826031707654916

namespace A059020

/-- `∑[∑[A293004(n+1)]+n]` -/
def P14785826031707654916.Spec : Prop :=
  ∀ n, P14785826031707654916.a n = A059020 n

end A059020

/-!
# A059021: Number of 3 X n checkerboards (with at least one red square) in which the set of red squares is edge-connected.

The programs for A059021, there is no canonical definition to state claims against.
-/

/-! ## A059021.P2134891587087522199

`∑[∑[A163029(n+1)]-A163029(n+1)]`
-/

namespace A059021.P2134891587087522199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163029 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A163029 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059021.P2134891587087522199

/-! ## A059021.P2226733756837244839

`A287151(A034856(n+1))%(8^n)`
-/

namespace A059021.P2226733756837244839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A287151 (A034856 (n + 1)).toNat) (8 ^ n : ℤ)

end

end A059021.P2226733756837244839

/-! ## A059021.P2939286563967834426

`A287151(A034856(n+1))-A000007(n)`
-/

namespace A059021.P2939286563967834426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287151 (A034856 (n + 1)).toNat - A000007 n

end

end A059021.P2939286563967834426

/-! ## A059021.P10408586450428815763

`A287151(A101881(2*n))-A000007(n)`
-/

namespace A059021.P10408586450428815763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287151 (A101881 (2 * n)).toNat - A000007 n

end

end A059021.P10408586450428815763

/-! ## A059021.P17361838428650894346

`and(A057428(n), A287151(A034856(n+1)))`
-/

namespace A059021.P17361838428650894346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A287151 (A034856 (n + 1)).toNat)

end

end A059021.P17361838428650894346

/-!
# A059022: Triangle of Stirling numbers of order 3.

The programs for A059022, there is no canonical definition to state claims against.
-/

/-! ## A059022.P8854535138914532299

`A051724(6*A200092(n+3))`
-/

namespace A059022.P8854535138914532299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (6 * A200092 (n + 3)).toNat

end

end A059022.P8854535138914532299

/-! ## A059022.P7566111044406861088

`A106615(7*A200092(n+3))`
-/

namespace A059022.P7566111044406861088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106615 (7 * A200092 (n + 3)).toNat

end

end A059022.P7566111044406861088

/-! ## A059022.P4123014743489671810

`A171181(lcm(2, A200092(n+3)))`
-/

namespace A059022.P4123014743489671810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171181 (Int.lcm 2 (A200092 (n + 3)))

end

end A059022.P4123014743489671810

/-! ## A059022.P3830348273378679817

`A063928(A200092(n+3)^A208879(n))`
-/

namespace A059022.P3830348273378679817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (SequenceMachineLib.roundAway ((A200092 (n + 3) : ℚ) ^ (A208879 n : ℤ))).toNat

end

end A059022.P3830348273378679817

/-! ## A059022.P542968975610917892

`A063928(A200092(n+3)^A213652(n))`
-/

namespace A059022.P542968975610917892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063928 (SequenceMachineLib.roundAway ((A200092 (n + 3) : ℚ) ^ (A213652 n : ℤ))).toNat

end

end A059022.P542968975610917892

/-!
# A059023: Triangle of Stirling numbers of order 4.

The programs for A059023, there is no canonical definition to state claims against.
-/

/-! ## A059023.P14774462251605770355

`C(n+2, and(4, A129015(n)))`
-/

namespace A059023.P14774462251605770355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) (Int.land 4 (A129015 n)).toNat

end

end A059023.P14774462251605770355

/-! ## A059023.P16248044918156152003

`A346906(floor(n-atan(n))*comp[n!])`
-/

namespace A059023.P16248044918156152003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346906 (⌊(n : ℝ) - Real.arctan (n : ℝ)⌋ * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)).toNat

end

end A059023.P16248044918156152003

/-! ## A059023.P2776620992089100903

`A380611(A354797(n))`
-/

namespace A059023.P2776620992089100903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380611 (A354797 n).toNat

end

end A059023.P2776620992089100903

/-! ## A059023.P12957615285673612021

`A001405(A165252(n!))`
-/

namespace A059023.P12957615285673612021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (A165252 (Nat.factorial n)).toNat

end

end A059023.P12957615285673612021

/-!
# A059024: Triangle of Stirling numbers of order 5.

The programs for A059024, there is no canonical definition to state claims against.
-/

/-! ## A059024.P8805898971551203435

`A208879(∑[n^(3%(n+2))]%(∑[∑{d}[n, #]]+1))`
-/

namespace A059024.P8805898971551203435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ (3 % (n + 2))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208879 ((∑ j ∈ Finset.range (n + 1), f1 j) % (∑ j ∈ Finset.range (n + 1), f2 j + 1))

end

end A059024.P8805898971551203435

/-! ## A059024.P9480452381352074278

`A292630(A048006(n+1))`
-/

namespace A059024.P9480452381352074278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292630 (A048006 (n + 1)).toNat

end

end A059024.P9480452381352074278

/-! ## A059024.P492015796999784184

`A152831(n*A160639(n))`
-/

namespace A059024.P492015796999784184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152831 ((n : ℤ) * A160639 n).toNat

end

end A059024.P492015796999784184

/-! ## A059024.P7857386867712470128

`abs(A182928(A008277(2*n+1)))`
-/

namespace A059024.P7857386867712470128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182928 (A008277 (2 * n + 1)).toNat|

end

end A059024.P7857386867712470128

/-! ## A059024.P14591745028005203731

`∏{p}[A254108(2*n+5), A267751(#)]`
-/

namespace A059024.P14591745028005203731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254108 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A267751 p

end

end A059024.P14591745028005203731

/-!
# A059025: Triangle of Stirling numbers of order 6.

The programs for A059025, there is no canonical definition to state claims against.
-/

/-! ## A059025.P1979831214073255315

`A361948(A032426(n+1))`
-/

namespace A059025.P1979831214073255315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361948 (A032426 (n + 1)).toNat

end

end A059025.P1979831214073255315

/-! ## A059025.P10959772755504946578

`A208879(A313851(n)+5)`
-/

namespace A059025.P10959772755504946578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208879 (A313851 n + 5).toNat

end

end A059025.P10959772755504946578

/-! ## A059025.P6272754778977881685

`A292630(lcm(3, A251656(n)))`
-/

namespace A059025.P6272754778977881685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292630 (Int.lcm 3 (A251656 n))

end

end A059025.P6272754778977881685

/-! ## A059025.P1415036797267935469

`A210736(A287847((2-n)²))`
-/

namespace A059025.P1415036797267935469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 (A287847 ((2 - (n : ℤ)) ^ 2).toNat).toNat

end

end A059025.P1415036797267935469

/-! ## A059025.P504351886154146829

`A361948(A366958(n+1)-n)`
-/

namespace A059025.P504351886154146829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361948 (A366958 (n + 1) - (n : ℤ)).toNat

end

end A059025.P504351886154146829

/-!
# A059026: Table B(n,m) read by rows: B(n,m) = LCM(n,m)/n + LCM(n,m)/m - 1 for all 1<=m<=n.

The programs for A059026, the canonical program `A059026.P8859748193139893075` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059026 has offset 1).

The definition of A059026 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059026.P8859748193139893075

`lcm(row(n)+1, col(n)+1)/(row(n)+1)+lcm(row(n)+1, col(n)+1)/(col(n)+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059026

/-- `lcm(row(n)+1, col(n)+1)/(row(n)+1)+lcm(row(n)+1, col(n)+1)/(col(n)+1)-1` -/
def P8859748193139893075.Spec : Prop :=
  ∀ n, P8859748193139893075.a n = (A059026 (n + 1) : ℚ)

end A059026

/-! ## A059026.P5080994615554860120

`floor((n+1-C(∑[char[∑[n+1]]], 2))/A050873(n+1))`
-/

namespace A059026.P5080994615554860120
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℚ) / (A050873 (n + 1) : ℚ)⌋

end

end A059026.P5080994615554860120

namespace A059026

/-- `floor((n+1-C(∑[char[∑[n+1]]], 2))/A050873(n+1))` -/
def P5080994615554860120.Spec : Prop :=
  ∀ n, P5080994615554860120.a n = A059026 (n + 1)

end A059026

/-! ## A059026.P5259690332071025696

`A199408(n+1)/A050873(n+1)`
-/

namespace A059026.P5259690332071025696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199408 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)

end

end A059026.P5259690332071025696

namespace A059026

/-- `A199408(n+1)/A050873(n+1)` -/
def P5259690332071025696.Spec : Prop :=
  ∀ n, P5259690332071025696.a n = (A059026 (n + 1) : ℚ)

end A059026

/-! ## A059026.P15748708878589759038

`floor(A094727(n+1)/A050873(n+1))`
-/

namespace A059026.P15748708878589759038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094727 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ)⌋

end

end A059026.P15748708878589759038

namespace A059026

/-- `floor(A094727(n+1)/A050873(n+1))` -/
def P15748708878589759038.Spec : Prop :=
  ∀ n, P15748708878589759038.a n = A059026 (n + 1)

end A059026

/-! ## A059026.P8525355560437192320

`A054531(n+1)+A164306(n+1)-1`
-/

namespace A059026.P8525355560437192320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) + (A164306 (n + 1) - 1)

end

end A059026.P8525355560437192320

namespace A059026

/-- `A054531(n+1)+A164306(n+1)-1` -/
def P8525355560437192320.Spec : Prop :=
  ∀ n, P8525355560437192320.a n = A059026 (n + 1)

end A059026

/-! ## A059026.P12722429164281339342

`A108872(n+1)/A050873(n+1)-1`
-/

namespace A059026.P12722429164281339342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108872 (n + 1) : ℚ) / (A050873 (n + 1) : ℚ) - 1

end

end A059026.P12722429164281339342

namespace A059026

/-- `A108872(n+1)/A050873(n+1)-1` -/
def P12722429164281339342.Spec : Prop :=
  ∀ n, P12722429164281339342.a n = (A059026 (n + 1) : ℚ)

end A059026

/-! ## A059026.P4313029137140228623

`A054531(n+1)-A024000(A164306(n+1))`
-/

namespace A059026.P4313029137140228623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (n + 1) - A024000 (A164306 (n + 1)).toNat

end

end A059026.P4313029137140228623

namespace A059026

/-- `A054531(n+1)-A024000(A164306(n+1))` -/
def P4313029137140228623.Spec : Prop :=
  ∀ n, P4313029137140228623.a n = A059026 (n + 1)

end A059026

/-! ## A059026.P16082522814608691456

`A199408(n+1)/(A108872(n+1)-A199408(n+1))`
-/

namespace A059026.P16082522814608691456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199408 (n + 1) : ℚ) / (A108872 (n + 1) - A199408 (n + 1) : ℚ)

end

end A059026.P16082522814608691456

namespace A059026

/-- `A199408(n+1)/(A108872(n+1)-A199408(n+1))` -/
def P16082522814608691456.Spec : Prop :=
  ∀ n, P16082522814608691456.a n = (A059026 (n + 1) : ℚ)

end A059026

/-! ## A059026.P3054410859205724044

`A199408(n+1)/A109004(comp[∑[n]])`
-/

namespace A059026.P3054410859205724044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199408 (n + 1) : ℚ) / (A109004 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) : ℚ)

end

end A059026.P3054410859205724044

namespace A059026

/-- `A199408(n+1)/A109004(comp[∑[n]])` -/
def P3054410859205724044.Spec : Prop :=
  ∀ n, P3054410859205724044.a n = (A059026 (n + 1) : ℚ)

end A059026

/-! ## A059026.P13330273621732098664

`A341315(comp[∑[n]])-1`
-/

namespace A059026.P13330273621732098664
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341315 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A059026.P13330273621732098664

namespace A059026

/-- `A341315(comp[∑[n]])-1` -/
def P13330273621732098664.Spec : Prop :=
  ∀ n, P13330273621732098664.a n = A059026 (n + 1)

end A059026

/-! ## A059026.P9571215594007713625

`A023443(A341315(comp[∑[n]]))`
-/

namespace A059026.P9571215594007713625
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A341315 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A059026.P9571215594007713625

namespace A059026

/-- `A023443(A341315(comp[∑[n]]))` -/
def P9571215594007713625.Spec : Prop :=
  ∀ n, P9571215594007713625.a n = A059026 (n + 1)

end A059026

/-! ## A059026.P18379898144013605827

`A023444(A341315(comp[∑[n]])+1)`
-/

namespace A059026.P18379898144013605827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A341315 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A059026.P18379898144013605827

namespace A059026

/-- `A023444(A341315(comp[∑[n]])+1)` -/
def P18379898144013605827.Spec : Prop :=
  ∀ n, P18379898144013605827.a n = A059026 (n + 1)

end A059026

/-! ## A059026.P13804005612326766149

`A289207(A341315(comp[∑[n]])+1)`
-/

namespace A059026.P13804005612326766149
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A341315 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) + 1).toNat

end

end A059026.P13804005612326766149

namespace A059026

/-- `A289207(A341315(comp[∑[n]])+1)` -/
def P13804005612326766149.Spec : Prop :=
  ∀ n, P13804005612326766149.a n = A059026 (n + 1)

end A059026

/-! ## A059026.P8507141761920405509

`A135223(C(A341315(comp[∑[n]]), 2))`
-/

namespace A059026.P8507141761920405509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135223 (Nat.choose (A341315 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat 2)

end

end A059026.P8507141761920405509

namespace A059026

/-- `A135223(C(A341315(comp[∑[n]]), 2))` -/
def P8507141761920405509.Spec : Prop :=
  ∀ n, P8507141761920405509.a n = A059026 (n + 1)

end A059026

/-! ## A059026.P8264802321181908986

`A316436(A087112(n+1))-1`
-/

namespace A059026.P8264802321181908986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316436 (A087112 (n + 1)).toNat - 1

end

end A059026.P8264802321181908986

namespace A059026

/-- `A316436(A087112(n+1))-1` -/
def P8264802321181908986.Spec : Prop :=
  ∀ n, P8264802321181908986.a n = A059026 (n + 1)

end A059026

/-! ## A059026.P7542640187988727541

`A259361(A341315(comp[∑[n]])²)`
-/

namespace A059026.P7542640187988727541
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A341315 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) ^ 2).toNat

end

end A059026.P7542640187988727541

namespace A059026

/-- `A259361(A341315(comp[∑[n]])²)` -/
def P7542640187988727541.Spec : Prop :=
  ∀ n, P7542640187988727541.a n = A059026 (n + 1)

end A059026

/-!
# A059027: Number of Dyck paths of semilength n with no peak at height 4.

The programs for A059027, there is no canonical definition to state claims against.
-/

/-! ## A059027.P9219711174652905440

`A241272(A306847(n)+1)+A086581(n)`
-/

namespace A059027.P9219711174652905440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241272 (A306847 n + 1).toNat + A086581 n

end

end A059027.P9219711174652905440

/-! ## A059027.P3326352080992323556

`A100196(A301578(n))`
-/

namespace A059027.P3326352080992323556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A301578 n).toNat

end

end A059027.P3326352080992323556

/-! ## A059027.P8870361546108995196

`A157271(round(sqrt(A130464(n))))`
-/

namespace A059027.P8870361546108995196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (SequenceMachineLib.roundAway (Real.sqrt (A130464 n : ℝ))).toNat

end

end A059027.P8870361546108995196

/-! ## A059027.P7215303813195704250

`A036593(A036594(n))+A005773(n)`
-/

namespace A059027.P7215303813195704250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036593 (A036594 n).toNat + A005773 n

end

end A059027.P7215303813195704250

/-!
# A059028: Row sums of A059026: a(n) = Sum_{m=1..n} (lcm(n,m)/n + lcm(n,m)/m - 1).

The programs for A059028, the canonical program `A059028.P10481110246671892895` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059028 has offset 1).

The definition of A059028 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059028.P13440091924975898209

`3*A332049(n+1)+1-n`
-/

namespace A059028.P13440091924975898209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A332049 (n + 1) + (1 - (n : ℤ))

end

end A059028.P13440091924975898209

namespace A059028

/-- `3*A332049(n+1)+1-n` -/
def P13440091924975898209.Spec : Prop :=
  ∀ n, P13440091924975898209.a n = A059028 (n + 1)

theorem P13440091924975898209.correct : P13440091924975898209.Spec := by
  intro n
  simp only [A059028, Nat.add_sub_cancel, A059028.P13440091924975898209.a, A059028.P10481110246671892895.a, A057661, A057661.P8562176095648835282.a, A332049, A332049.P9341534089412861099.a, A057660, A057660.P308819105178745283.a, A000290, A000290.P12206242496348924484.a, A001157, A001157.P6892814788348726787.a, A065764, A065764.P16236740945723656355.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A035316, A035316.P17845884678165723091.f1, A035316.P17845884678165723091.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059028

/-! ## A059028.P10481110246671892895

`3*A057661(n+1)-(n+2)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A059028

/-- `3*A057661(n+1)-(n+2)` -/
def P10481110246671892895.Spec : Prop :=
  ∀ n, P10481110246671892895.a n = A059028 (n + 1)

theorem P10481110246671892895.correct : P10481110246671892895.Spec := by
  intro n
  simp only [A059028, Nat.add_sub_cancel]

end A059028

/-! ## A059028.P2009126252985137860

`3*∑{d}[n+1, A023896(#)]-n-2`
-/

namespace A059028.P2009126252985137860
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (∑ d ∈ Nat.divisors (f1 n), A023896 d) - (n : ℤ) - 2

end

end A059028.P2009126252985137860

namespace A059028

/-- `3*∑{d}[n+1, A023896(#)]-n-2` -/
def P2009126252985137860.Spec : Prop :=
  ∀ n, P2009126252985137860.a n = A059028 (n + 1)

end A059028

/-! ## A059028.P11084302929519168208

`∑{d}[n+1, A023900(#)*A382069((n+1)/#)]`
-/

namespace A059028.P11084302929519168208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A382069 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A059028.P11084302929519168208

namespace A059028

/-- `∑{d}[n+1, A023900(#)*A382069((n+1)/#)]` -/
def P11084302929519168208.Spec : Prop :=
  ∀ n, P11084302929519168208.a n = A059028 (n + 1)

end A059028

/-! ## A059028.P11737229374566760790

`A341316(n+1)-(n+2)`
-/

namespace A059028.P11737229374566760790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341316 (n + 1) - (n + 2 : ℤ)

end

end A059028.P11737229374566760790

namespace A059028

/-- `A341316(n+1)-(n+2)` -/
def P11737229374566760790.Spec : Prop :=
  ∀ n, P11737229374566760790.a n = A059028 (n + 1)

end A059028

/-! ## A059028.P13233589691471830321

`A014682(A057660(n+1))-(n+1)`
-/

namespace A059028.P13233589691471830321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A057660 (n + 1)).toNat - (n + 1 : ℤ)

end

end A059028.P13233589691471830321

namespace A059028

/-- `A014682(A057660(n+1))-(n+1)` -/
def P13233589691471830321.Spec : Prop :=
  ∀ n, P13233589691471830321.a n = A059028 (n + 1)

end A059028

/-! ## A059028.P18087540609261006524

`A014682(∑{d}[n+1, A000010(#²)])-(n+1)`
-/

namespace A059028.P18087540609261006524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (∑ d ∈ Nat.divisors (f1 n), A000010 (d ^ 2)).toNat - (n + 1 : ℤ)

end

end A059028.P18087540609261006524

namespace A059028

/-- `A014682(∑{d}[n+1, A000010(#²)])-(n+1)` -/
def P18087540609261006524.Spec : Prop :=
  ∀ n, P18087540609261006524.a n = A059028 (n + 1)

end A059028

/-! ## A059028.P14150300375435976553

`A001651(A057660(n+1))-n`
-/

namespace A059028.P14150300375435976553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A057660 (n + 1)).toNat - (n : ℤ)

end

end A059028.P14150300375435976553

namespace A059028

/-- `A001651(A057660(n+1))-n` -/
def P14150300375435976553.Spec : Prop :=
  ∀ n, P14150300375435976553.a n = A059028 (n + 1)

end A059028

/-! ## A059028.P7318291211121899765

`A001651(∑{d}[n+1, A000010(#²)])-n`
-/

namespace A059028.P7318291211121899765
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (∑ d ∈ Nat.divisors (f1 n), A000010 (d ^ 2)).toNat - (n : ℤ)

end

end A059028.P7318291211121899765

namespace A059028

/-- `A001651(∑{d}[n+1, A000010(#²)])-n` -/
def P7318291211121899765.Spec : Prop :=
  ∀ n, P7318291211121899765.a n = A059028 (n + 1)

end A059028

/-!
# A059029: a(n) = n if n is even, 2*n + 1 if n is odd.

The programs for A059029, the canonical program `A059029.P1250238157803535770` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059029 has offset 0).

The definition of A059029 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059029.P1250238157803535770

`n+(n+1)*(1-(-1)^n)/2`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059029

/-- `n+(n+1)*(1-(-1)^n)/2` -/
def P1250238157803535770.Spec : Prop :=
  ∀ n, P1250238157803535770.a n = (A059029 n : ℚ)

end A059029

/-! ## A059029.P16329222048998014040

`or(n%2, lcm(2, n))`
-/

namespace A059029.P16329222048998014040
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (n % 2) (Nat.lcm 2 n)

end

end A059029.P16329222048998014040

namespace A059029

/-- `or(n%2, lcm(2, n))` -/
def P16329222048998014040.Spec : Prop :=
  ∀ n, (P16329222048998014040.a n : ℤ) = A059029 n

end A059029

/-! ## A059029.P491402412710064936

`floor(Δ[n²]/gcd(2, n))`
-/

namespace A059029.P491402412710064936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) / (Nat.gcd 2 n : ℚ)⌋

end

end A059029.P491402412710064936

namespace A059029

/-- `floor(Δ[n²]/gcd(2, n))` -/
def P491402412710064936.Spec : Prop :=
  ∀ n, P491402412710064936.a n = A059029 n

end A059029

/-! ## A059029.P8169520878138438903

`xor(1, a(n-2)+3)` with `a(0)=0, a(1)=3`
-/

namespace A059029.P8169520878138438903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 3] fun n a =>
  Nat.xor 1 (a (n - 2) + 3)

end

end A059029.P8169520878138438903

namespace A059029

/-- `xor(1, a(n-2)+3)` -/
def P8169520878138438903.Spec : Prop :=
  ∀ n, (P8169520878138438903.a n : ℤ) = A059029 n

end A059029

/-! ## A059029.P16348471597532745509

`(n*(n+2))%(2*(n+1))`
-/

namespace A059029.P16348471597532745509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n + 2) % (2 * (n + 1))

end

end A059029.P16348471597532745509

namespace A059029

/-- `(n*(n+2))%(2*(n+1))` -/
def P16348471597532745509.Spec : Prop :=
  ∀ n, (P16348471597532745509.a n : ℤ) = A059029 n

end A059029

/-! ## A059029.P11031877132677094034

`ogf((3x+2x^2+x^3)/(1-2x^2+x^4))`
-/

namespace A059029.P11031877132677094034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3, 2, 1] [1, 0, -2, 0, 1] n

end

end A059029.P11031877132677094034

namespace A059029

/-- `ogf((3x+2x^2+x^3)/(1-2x^2+x^4))` -/
def P11031877132677094034.Spec : Prop :=
  ∀ n, P11031877132677094034.a n = A059029 n

end A059029

/-! ## A059029.P1157536840567444547

`xor(1, C(n, 2*floor(n/2))+n)`
-/

namespace A059029.P1157536840567444547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (Nat.choose n (2 * ⌊(n : ℚ) / 2⌋).toNat + n)

end

end A059029.P1157536840567444547

namespace A059029

/-- `xor(1, C(n, 2*floor(n/2))+n)` -/
def P1157536840567444547.Spec : Prop :=
  ∀ n, (P1157536840567444547.a n : ℤ) = A059029 n

end A059029

/-! ## A059029.P7516163819452610508

`floor((n+2)*n/gcd(n+1, ∑[n]))`
-/

namespace A059029.P7516163819452610508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) * ((n : ℚ) / (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ))⌋

end

end A059029.P7516163819452610508

namespace A059029

/-- `floor((n+2)*n/gcd(n+1, ∑[n]))` -/
def P7516163819452610508.Spec : Prop :=
  ∀ n, P7516163819452610508.a n = A059029 n

end A059029

/-! ## A059029.P1299298994303113745

`floor(lcm(2*n, 2*(n+2))/(n+1))`
-/

namespace A059029.P1299298994303113745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (2 * n) (2 * (n + 2)) : ℚ) / (n + 1 : ℚ)⌋

end

end A059029.P1299298994303113745

namespace A059029

/-- `floor(lcm(2*n, 2*(n+2))/(n+1))` -/
def P1299298994303113745.Spec : Prop :=
  ∀ n, P1299298994303113745.a n = A059029 n

end A059029

/-! ## A059029.P18193239562917535389

`floor((n+1)^(n-a(n-1))+n)` with `a(0)=0`
-/

namespace A059029.P18193239562917535389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(n + 1 : ℚ) ^ ((n : ℤ) - a (n - 1) : ℤ) + (n : ℚ)⌋

end

end A059029.P18193239562917535389

namespace A059029

/-- `floor((n+1)^(n-a(n-1))+n)` -/
def P18193239562917535389.Spec : Prop :=
  ∀ n, P18193239562917535389.a n = A059029 n

end A059029

/-! ## A059029.P15276835606256275650

`gcd(3*n-2*floor(n/2), C(3*n-2*floor(n/2), 2))`
-/

namespace A059029.P15276835606256275650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((3 * n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋) (Nat.choose ((3 * n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋).toNat 2 : ℤ)

end

end A059029.P15276835606256275650

namespace A059029

/-- `gcd(3*n-2*floor(n/2), C(3*n-2*floor(n/2), 2))` -/
def P15276835606256275650.Spec : Prop :=
  ∀ n, (P15276835606256275650.a n : ℤ) = A059029 n

end A059029

/-! ## A059029.P4995312962955266442

`Δ[A032438(n)]`
-/

namespace A059029.P4995312962955266442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059029.P4995312962955266442

namespace A059029

/-- `Δ[A032438(n)]` -/
def P4995312962955266442.Spec : Prop :=
  ∀ n, P4995312962955266442.a n = A059029 n

end A059029

/-! ## A059029.P14996169996764782133

`round(A166138(n)/3)`
-/

namespace A059029.P14996169996764782133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166138 n : ℚ) / 3)

end

end A059029.P14996169996764782133

namespace A059029

/-- `round(A166138(n)/3)` -/
def P14996169996764782133.Spec : Prop :=
  ∀ n, P14996169996764782133.a n = A059029 n

end A059029

/-! ## A059029.P13640399341198163432

`xor(1, A043547(n+1))`
-/

namespace A059029.P13640399341198163432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A043547 (n + 1))

end

end A059029.P13640399341198163432

namespace A059029

/-- `xor(1, A043547(n+1))` -/
def P13640399341198163432.Spec : Prop :=
  ∀ n, P13640399341198163432.a n = A059029 n

end A059029

/-! ## A059029.P3716231219930852141

`or(lcm(2, n), A000035(n))`
-/

namespace A059029.P3716231219930852141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.lcm 2 n : ℤ) (A000035 n)

end

end A059029.P3716231219930852141

namespace A059029

/-- `or(lcm(2, n), A000035(n))` -/
def P3716231219930852141.Spec : Prop :=
  ∀ n, P3716231219930852141.a n = A059029 n

end A059029

/-! ## A059029.P3317116285744510208

`(3*n-2*floor(n/2))/A066806(Δ[3*n-2*floor(n/2)])`
-/

namespace A059029.P3317116285744510208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * n : ℤ) - 2 * ⌊(n : ℚ) / 2⌋ : ℚ) / (A066806 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A059029.P3317116285744510208

namespace A059029

/-- `(3*n-2*floor(n/2))/A066806(Δ[3*n-2*floor(n/2)])` -/
def P3317116285744510208.Spec : Prop :=
  ∀ n, P3317116285744510208.a n = (A059029 n : ℚ)

end A059029

/-! ## A059029.P2324341632617507654

`A014601(n)/A040001(n)`
-/

namespace A059029.P2324341632617507654
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014601 n : ℚ) / (A040001 n : ℚ)

end

end A059029.P2324341632617507654

namespace A059029

/-- `A014601(n)/A040001(n)` -/
def P2324341632617507654.Spec : Prop :=
  ∀ n, P2324341632617507654.a n = (A059029 n : ℚ)

end A059029

/-! ## A059029.P12969185178939134184

`xor(A000035(n), A109043(n))`
-/

namespace A059029.P12969185178939134184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 n) (A109043 n)

end

end A059029.P12969185178939134184

namespace A059029

/-- `xor(A000035(n), A109043(n))` -/
def P12969185178939134184.Spec : Prop :=
  ∀ n, P12969185178939134184.a n = A059029 n

end A059029

/-! ## A059029.P17200686503485791492

`xor(A010673(n), A227906(n))`
-/

namespace A059029.P17200686503485791492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010673 n) (A227906 n)

end

end A059029.P17200686503485791492

namespace A059029

/-- `xor(A010673(n), A227906(n))` -/
def P17200686503485791492.Spec : Prop :=
  ∀ n, P17200686503485791492.a n = A059029 n

end A059029

/-! ## A059029.P13802079775216337

`xor(A141310(n), A266072(n))`
-/

namespace A059029.P13802079775216337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A141310 n) (A266072 n)

end

end A059029.P13802079775216337

namespace A059029

/-- `xor(A141310(n), A266072(n))` -/
def P13802079775216337.Spec : Prop :=
  ∀ n, P13802079775216337.a n = A059029 n

end A059029

/-!
# A059030: Fourth main diagonal of A059026: a(n) = B(n+3,n) = lcm(n+3,n)/(n+3) + lcm(n+3,n)/n - 1 for all n >= 1.

The programs for A059030, the canonical program `A059030.P5403458251181948125` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059030 has offset 1).

The definition of A059030 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059030.P5403458251181948125

`lcm(n+4, n+1)/(n+4)+lcm(n+4, n+1)/(n+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059030

/-- `lcm(n+4, n+1)/(n+4)+lcm(n+4, n+1)/(n+1)-1` -/
def P5403458251181948125.Spec : Prop :=
  ∀ n, P5403458251181948125.a n = (A059030 (n + 1) : ℚ)

end A059030

/-! ## A059030.P3161051862435632731

`∑[Δ[lcm(3, 2*n+3)]/3]`
-/

namespace A059030.P3161051862435632731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (2 * n + 3)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059030.P3161051862435632731

namespace A059030

/-- `∑[Δ[lcm(3, 2*n+3)]/3]` -/
def P3161051862435632731.Spec : Prop :=
  ∀ n, P3161051862435632731.a n = (A059030 (n + 1) : ℚ)

end A059030

/-! ## A059030.P1553458737335023042

`∑[(n+2)²]%(2*n+5)`
-/

namespace A059030.P1553458737335023042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (2 * n + 5)

end

end A059030.P1553458737335023042

namespace A059030

/-- `∑[(n+2)²]%(2*n+5)` -/
def P1553458737335023042.Spec : Prop :=
  ∀ n, (P1553458737335023042.a n : ℤ) = A059030 (n + 1)

end A059030

/-! ## A059030.P15705286154527496366

`floor(2*(n+2)/gcd(3, n+1))`
-/

namespace A059030.P15705286154527496366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 * ((n + 2 : ℚ) / (Nat.gcd 3 (n + 1) : ℚ))⌋

end

end A059030.P15705286154527496366

namespace A059030

/-- `floor(2*(n+2)/gcd(3, n+1))` -/
def P15705286154527496366.Spec : Prop :=
  ∀ n, P15705286154527496366.a n = A059030 (n + 1)

end A059030

/-! ## A059030.P2812257670193069822

`floor(2*(n+2)/or(1, n%3))`
-/

namespace A059030.P2812257670193069822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (n + 2) : ℚ) / (Nat.lor 1 (n % 3) : ℚ)⌋

end

end A059030.P2812257670193069822

namespace A059030

/-- `floor(2*(n+2)/or(1, n%3))` -/
def P2812257670193069822.Spec : Prop :=
  ∀ n, P2812257670193069822.a n = A059030 (n + 1)

end A059030

/-! ## A059030.P10840047198732074976

`floor(2*(n+2)/sqrt(dr((n+1)^6)))`
-/

namespace A059030.P10840047198732074976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (n + 2) : ℝ) / Real.sqrt (SequenceMachineLib.digitalRoot ((n + 1) ^ 6 : ℤ) : ℝ)⌋

end

end A059030.P10840047198732074976

namespace A059030

/-- `floor(2*(n+2)/sqrt(dr((n+1)^6)))` -/
def P10840047198732074976.Spec : Prop :=
  ∀ n, P10840047198732074976.a n = A059030 (n + 1)

end A059030

/-! ## A059030.P8774319909793195431

`lcm(n+1, 2*n+5)/(n+1)-1`
-/

namespace A059030.P8774319909793195431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (2 * n + 5) : ℚ) / (n + 1 : ℚ) - 1

end

end A059030.P8774319909793195431

namespace A059030

/-- `lcm(n+1, 2*n+5)/(n+1)-1` -/
def P8774319909793195431.Spec : Prop :=
  ∀ n, P8774319909793195431.a n = (A059030 (n + 1) : ℚ)

end A059030

/-! ## A059030.P17857069964767311355

`2*(A117909(n)+A008620(n))`
-/

namespace A059030.P17857069964767311355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A117909 n + A008620 n)

end

end A059030.P17857069964767311355

namespace A059030

/-- `2*(A117909(n)+A008620(n))` -/
def P17857069964767311355.Spec : Prop :=
  ∀ n, P17857069964767311355.a n = A059030 (n + 1)

end A059030

/-! ## A059030.P1114955829388643841

`abs(A130724(n+1)-n)+1`
-/

namespace A059030.P1114955829388643841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130724 (n + 1) - (n : ℤ)| + 1

end

end A059030.P1114955829388643841

namespace A059030

/-- `abs(A130724(n+1)-n)+1` -/
def P1114955829388643841.Spec : Prop :=
  ∀ n, P1114955829388643841.a n = A059030 (n + 1)

end A059030

/-! ## A059030.P6872481026854450647

`A353313(n+1)+A002264(n+2)`
-/

namespace A059030.P6872481026854450647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353313 (n + 1) + A002264 (n + 2)

end

end A059030.P6872481026854450647

namespace A059030

/-- `A353313(n+1)+A002264(n+2)` -/
def P6872481026854450647.Spec : Prop :=
  ∀ n, P6872481026854450647.a n = A059030 (n + 1)

end A059030

/-! ## A059030.P2707265910629390807

`2*(A051176(n+1)+A011655(n+1))`
-/

namespace A059030.P2707265910629390807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A051176 (n + 1) + A011655 (n + 1))

end

end A059030.P2707265910629390807

namespace A059030

/-- `2*(A051176(n+1)+A011655(n+1))` -/
def P2707265910629390807.Spec : Prop :=
  ∀ n, P2707265910629390807.a n = A059030 (n + 1)

end A059030

/-! ## A059030.P9697264318561435012

`A011655(n+1)+A068217(n+1)+A011655(n+1)`
-/

namespace A059030.P9697264318561435012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (n + 1) + (A068217 (n + 1) + A011655 (n + 1))

end

end A059030.P9697264318561435012

namespace A059030

/-- `A011655(n+1)+A068217(n+1)+A011655(n+1)` -/
def P9697264318561435012.Spec : Prop :=
  ∀ n, P9697264318561435012.a n = A059030 (n + 1)

end A059030

/-! ## A059030.P10407317549575457355

`A146535(n+3)-1`
-/

namespace A059030.P10407317549575457355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146535 (n + 3) - 1

end

end A059030.P10407317549575457355

namespace A059030

/-- `A146535(n+3)-1` -/
def P10407317549575457355.Spec : Prop :=
  ∀ n, P10407317549575457355.a n = A059030 (n + 1)

end A059030

/-! ## A059030.P8324659353780568287

`A342918(2*(n+2))-1`
-/

namespace A059030.P8324659353780568287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342918 (2 * (n + 2)) - 1

end

end A059030.P8324659353780568287

namespace A059030

/-- `A342918(2*(n+2))-1` -/
def P8324659353780568287.Spec : Prop :=
  ∀ n, P8324659353780568287.a n = A059030 (n + 1)

end A059030

/-! ## A059030.P8154120309566091632

`A339873(2*(n+2))/A143771(2*(n+2))`
-/

namespace A059030.P8154120309566091632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A339873 (2 * (n + 2)) : ℚ) / (A143771 (2 * (n + 2)) : ℚ)

end

end A059030.P8154120309566091632

namespace A059030

/-- `A339873(2*(n+2))/A143771(2*(n+2))` -/
def P8154120309566091632.Spec : Prop :=
  ∀ n, P8154120309566091632.a n = (A059030 (n + 1) : ℚ)

end A059030

/-! ## A059030.P3857677038991331330

`A144437(n+1)+A145064(2*n)-1`
-/

namespace A059030.P3857677038991331330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144437 (n + 1) + (A145064 (2 * n) - 1)

end

end A059030.P3857677038991331330

namespace A059030

/-- `A144437(n+1)+A145064(2*n)-1` -/
def P3857677038991331330.Spec : Prop :=
  ∀ n, P3857677038991331330.a n = A059030 (n + 1)

end A059030

/-! ## A059030.P1976045616548531395

`A145064(2*n)+A169609(n+1)-1`
-/

namespace A059030.P1976045616548531395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (2 * n) + (A169609 (n + 1) - 1)

end

end A059030.P1976045616548531395

namespace A059030

/-- `A145064(2*n)+A169609(n+1)-1` -/
def P1976045616548531395.Spec : Prop :=
  ∀ n, P1976045616548531395.a n = A059030 (n + 1)

end A059030

/-! ## A059030.P12810715928731102748

`A145064(2*n)+2*A011655(n+1)`
-/

namespace A059030.P12810715928731102748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (2 * n) + 2 * A011655 (n + 1)

end

end A059030.P12810715928731102748

namespace A059030

/-- `A145064(2*n)+2*A011655(n+1)` -/
def P12810715928731102748.Spec : Prop :=
  ∀ n, P12810715928731102748.a n = A059030 (n + 1)

end A059030

/-! ## A059030.P9896128515968738478

`2*(A166711(n+1)+A117910(2*n))`
-/

namespace A059030.P9896128515968738478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A166711 (n + 1) + A117910 (2 * n))

end

end A059030.P9896128515968738478

namespace A059030

/-- `2*(A166711(n+1)+A117910(2*n))` -/
def P9896128515968738478.Spec : Prop :=
  ∀ n, P9896128515968738478.a n = A059030 (n + 1)

end A059030

/-! ## A059030.P11639023038866580320

`A353314(2*(n+1))-A004396(2*(n+1))`
-/

namespace A059030.P11639023038866580320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353314 (2 * (n + 1)) - A004396 (2 * (n + 1))

end

end A059030.P11639023038866580320

namespace A059030

/-- `A353314(2*(n+1))-A004396(2*(n+1))` -/
def P11639023038866580320.Spec : Prop :=
  ∀ n, P11639023038866580320.a n = A059030 (n + 1)

end A059030

/-!
# A059031: Fifth main diagonal of A059026: a(n) = B(n+4,n) = lcm(n+4,n)/(n+4) + lcm(n+4,n)/n - 1 for all n >= 1.

The programs for A059031, the canonical program `A059031.P17027132897088170039` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059031 has offset 1).

The definition of A059031 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059031.P17027132897088170039

`lcm(n+5, n+1)/(n+5)+lcm(n+5, n+1)/(n+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059031

/-- `lcm(n+5, n+1)/(n+5)+lcm(n+5, n+1)/(n+1)-1` -/
def P17027132897088170039.Spec : Prop :=
  ∀ n, P17027132897088170039.a n = (A059031 (n + 1) : ℚ)

end A059031

/-! ## A059031.P3510621458671219352

`floor((2*n+5)/gcd(4, n+1))`
-/

namespace A059031.P3510621458671219352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 5 : ℚ) / (Nat.gcd 4 (n + 1) : ℚ)⌋

end

end A059031.P3510621458671219352

namespace A059031

/-- `floor((2*n+5)/gcd(4, n+1))` -/
def P3510621458671219352.Spec : Prop :=
  ∀ n, P3510621458671219352.a n = A059031 (n + 1)

end A059031

/-! ## A059031.P9653949948461553592

`lcm(n+1, 2*(n+3))/(n+1)-1`
-/

namespace A059031.P9653949948461553592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm (n + 1) (2 * (n + 3)) : ℚ) / (n + 1 : ℚ) - 1

end

end A059031.P9653949948461553592

namespace A059031

/-- `lcm(n+1, 2*(n+3))/(n+1)-1` -/
def P9653949948461553592.Spec : Prop :=
  ∀ n, P9653949948461553592.a n = (A059031 (n + 1) : ℚ)

end A059031

/-! ## A059031.P5887159943034404966

`xor(1, A065259(n+1)+1)`
-/

namespace A059031.P5887159943034404966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A065259 (n + 1) + 1)

end

end A059031.P5887159943034404966

namespace A059031

/-- `xor(1, A065259(n+1)+1)` -/
def P5887159943034404966.Spec : Prop :=
  ∀ n, P5887159943034404966.a n = A059031 (n + 1)

end A059031

/-! ## A059031.P3243289704198403962

`A065260(xor(1, n)+1)+1`
-/

namespace A059031.P3243289704198403962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065260 (Nat.xor 1 n + 1) + 1

end

end A059031.P3243289704198403962

namespace A059031

/-- `A065260(xor(1, n)+1)+1` -/
def P3243289704198403962.Spec : Prop :=
  ∀ n, P3243289704198403962.a n = A059031 (n + 1)

end A059031

/-! ## A059031.P3519431542163743507

`A065260(A004442(n)+1)+1`
-/

namespace A059031.P3519431542163743507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065260 (A004442 n + 1).toNat + 1

end

end A059031.P3519431542163743507

namespace A059031

/-- `A065260(A004442(n)+1)+1` -/
def P3519431542163743507.Spec : Prop :=
  ∀ n, P3519431542163743507.a n = A059031 (n + 1)

end A059031

/-! ## A059031.P3523554167166344470

`A145979(n+1)-1`
-/

namespace A059031.P3523554167166344470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 (n + 1) - 1

end

end A059031.P3523554167166344470

namespace A059031

/-- `A145979(n+1)-1` -/
def P3523554167166344470.Spec : Prop :=
  ∀ n, P3523554167166344470.a n = A059031 (n + 1)

end A059031

/-! ## A059031.P7519811355281230620

`xor(1, A065171(n+2))`
-/

namespace A059031.P7519811355281230620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A065171 (n + 2))

end

end A059031.P7519811355281230620

namespace A059031

/-- `xor(1, A065171(n+2))` -/
def P7519811355281230620.Spec : Prop :=
  ∀ n, P7519811355281230620.a n = A059031 (n + 1)

end A059031

/-! ## A059031.P1166985953701369275

`Δ[∑[A145979(n)]-n]`
-/

namespace A059031.P1166985953701369275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145979 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A059031.P1166985953701369275

namespace A059031

/-- `Δ[∑[A145979(n)]-n]` -/
def P1166985953701369275.Spec : Prop :=
  ∀ n, P1166985953701369275.a n = A059031 (n + 1)

end A059031

/-! ## A059031.P16787217062031569738

`sqrt(A061038(n+3))-1`
-/

namespace A059031.P16787217062031569738
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061038 (n + 3) : ℝ) - 1

end

end A059031.P16787217062031569738

namespace A059031

/-- `sqrt(A061038(n+3))-1` -/
def P16787217062031569738.Spec : Prop :=
  ∀ n, P16787217062031569738.a n = (A059031 (n + 1) : ℝ)

end A059031

/-! ## A059031.P7026145654054232796

`(n+3)/2*A176895(n+1)-1`
-/

namespace A059031.P7026145654054232796
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 2 * (A176895 (n + 1) : ℚ) - 1

end

end A059031.P7026145654054232796

namespace A059031

/-- `(n+3)/2*A176895(n+1)-1` -/
def P7026145654054232796.Spec : Prop :=
  ∀ n, P7026145654054232796.a n = (A059031 (n + 1) : ℚ)

end A059031

/-! ## A059031.P2598095023404749062

`A246416(n+1)+A247617(n+1)-1`
-/

namespace A059031.P2598095023404749062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246416 (n + 1) + (A247617 (n + 1) - 1)

end

end A059031.P2598095023404749062

namespace A059031

/-- `A246416(n+1)+A247617(n+1)-1` -/
def P2598095023404749062.Spec : Prop :=
  ∀ n, P2598095023404749062.a n = A059031 (n + 1)

end A059031

/-! ## A059031.P7469192645835132903

`A014695(n+1)*A176743(n+1)-1`
-/

namespace A059031.P7469192645835132903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014695 (n + 1) * A176743 (n + 1) - 1

end

end A059031.P7469192645835132903

namespace A059031

/-- `A014695(n+1)*A176743(n+1)-1` -/
def P7469192645835132903.Spec : Prop :=
  ∀ n, P7469192645835132903.a n = A059031 (n + 1)

end A059031

/-! ## A059031.P733751855770030966

`(A191567(n+1)-A060819(n+1))/A060819(n+1)`
-/

namespace A059031.P733751855770030966
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191567 (n + 1) - A060819 (n + 1) : ℚ) / (A060819 (n + 1) : ℚ)

end

end A059031.P733751855770030966

namespace A059031

/-- `(A191567(n+1)-A060819(n+1))/A060819(n+1)` -/
def P733751855770030966.Spec : Prop :=
  ∀ n, P733751855770030966.a n = (A059031 (n + 1) : ℚ)

end A059031

/-! ## A059031.P15640209010014452142

`A065172(xor(1, n+2))`
-/

namespace A059031.P15640209010014452142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065172 (Nat.xor 1 (n + 2))

end

end A059031.P15640209010014452142

namespace A059031

/-- `A065172(xor(1, n+2))` -/
def P15640209010014452142.Spec : Prop :=
  ∀ n, P15640209010014452142.a n = A059031 (n + 1)

end A059031

/-! ## A059031.P7328114250135055429

`∑[A215898(n+2)+1]`
-/

namespace A059031.P7328114250135055429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215898 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059031.P7328114250135055429

namespace A059031

/-- `∑[A215898(n+2)+1]` -/
def P7328114250135055429.Spec : Prop :=
  ∀ n, P7328114250135055429.a n = A059031 (n + 1)

end A059031

/-! ## A059031.P17814604584736326057

`A065172(A065190(n+2))`
-/

namespace A059031.P17814604584736326057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065172 (A065190 (n + 2)).toNat

end

end A059031.P17814604584736326057

namespace A059031

/-- `A065172(A065190(n+2))` -/
def P17814604584736326057.Spec : Prop :=
  ∀ n, P17814604584736326057.a n = A059031 (n + 1)

end A059031

/-! ## A059031.P16929819376927129218

`Δ[A272212(n+3)]+n+2`
-/

namespace A059031.P16929819376927129218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272212 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 2 : ℤ)

end

end A059031.P16929819376927129218

namespace A059031

/-- `Δ[A272212(n+3)]+n+2` -/
def P16929819376927129218.Spec : Prop :=
  ∀ n, P16929819376927129218.a n = A059031 (n + 1)

end A059031

/-! ## A059031.P11639383912763770046

`A246416(n+1)+A052928(A247617(n+1))`
-/

namespace A059031.P11639383912763770046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246416 (n + 1) + A052928 (A247617 (n + 1)).toNat

end

end A059031.P11639383912763770046

namespace A059031

/-- `A246416(n+1)+A052928(A247617(n+1))` -/
def P11639383912763770046.Spec : Prop :=
  ∀ n, P11639383912763770046.a n = A059031 (n + 1)

end A059031

/-! ## A059031.P3641960953674841056

`A004442(A065171(n+2))`
-/

namespace A059031.P3641960953674841056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A065171 (n + 2)).toNat

end

end A059031.P3641960953674841056

namespace A059031

/-- `A004442(A065171(n+2))` -/
def P3641960953674841056.Spec : Prop :=
  ∀ n, P3641960953674841056.a n = A059031 (n + 1)

end A059031

/-!
# A059032: Another variant of Boustrophedon transform applied to 1, 0, 0, 0, ...

The programs for A059032, there is no canonical definition to state claims against.
-/

/-! ## A059032.P16041439949210561490

`A059034(∑[n]+n)`
-/

namespace A059032.P16041439949210561490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059034 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A059032.P16041439949210561490

/-! ## A059032.P3636319170030900062

`A007318(∑[n])*A059034(A000096(n))`
-/

namespace A059032.P3636319170030900062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A059034 (A000096 n).toNat

end

end A059032.P3636319170030900062

/-! ## A059032.P61906581823925334

`A007318(A331845(n))+A059034(A000096(n))-1`
-/

namespace A059032.P61906581823925334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A331845 n).toNat + (A059034 (A000096 n).toNat - 1)

end

end A059032.P61906581823925334

/-! ## A059032.P13035355165130151387

`(A020639(2*A315564(n))-1)*A059034(A000096(n))`
-/

namespace A059032.P13035355165130151387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * A315564 n).toNat - 1) * A059034 (A000096 n).toNat

end

end A059032.P13035355165130151387

/-! ## A059032.P9698693891141465463

`(A020639(A268581(n+1)+5)-1)*A059034(A000096(n))`
-/

namespace A059032.P9698693891141465463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020639 (A268581 (n + 1) + 5).toNat - 1) * A059034 (A000096 n).toNat

end

end A059032.P9698693891141465463

/-!
# A059033: Triangle in A059032 read by rows from left to right.

The programs for A059033, there is no canonical definition to state claims against.
-/

/-! ## A059033.P7523722203831162755

`A059034(A056023(n+1)-1)`
-/

namespace A059033.P7523722203831162755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059034 (A056023 (n + 1) - 1).toNat

end

end A059033.P7523722203831162755

/-!
# A059034: Triangle in A059032 read by rows in natural order.

The programs for A059034, there is no canonical definition to state claims against.
-/

/-! ## A059034.P17541470680180826187

`A059033(A056023(n+1)-1)`
-/

namespace A059034.P17541470680180826187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059033 (A056023 (n + 1) - 1).toNat

end

end A059034.P17541470680180826187

/-!
# A059035: Row sums of A059032.

The programs for A059035, there is no canonical definition to state claims against.
-/

/-! ## A059035.P12011932750544322305

`A001951(ceil(sqrt(A005790(n))))`
-/

namespace A059035.P12011932750544322305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001951 ⌈Real.sqrt (A005790 n : ℝ)⌉.toNat

end

end A059035.P12011932750544322305

/-! ## A059035.P14249274700313097142

`A007916(A347585(n))-A000009(n)`
-/

namespace A059035.P14249274700313097142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007916 (A347585 n).toNat - A000009 n

end

end A059035.P14249274700313097142

/-!
# A059036: In a triangle of numbers (such as that in A059032, A059033, A059034) how many entries lie above position (n,k)? Answer: T(n,k) = (n+1)*(k+1)-1 (n >= 0, k >= 0).

The programs for A059036, the canonical program `A059036.P14090632459187506294` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059036 has offset 0).

The definition of A059036 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(col(n)+1)*(row(n)-col(n)+1)-1` (program `A059036.P14090632459187506294`, by `A059036.P14090632459187506294.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A059036.P14090632459187506294

`(col(n)+1)*(row(n)-col(n)+1)-1`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059036

/-- `(col(n)+1)*(row(n)-col(n)+1)-1` -/
def P14090632459187506294.Spec : Prop :=
  ∀ n, P14090632459187506294.a n = A059036 n

theorem P14090632459187506294.correct : P14090632459187506294.Spec := by
  intro n
  simp only [A059036]

end A059036

/-! ## A059036.P18158974080143773900

`(row(n)-col(n)+1)*(col(n)+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A059036.P18158974080143773900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1) * (SequenceMachineLib.triCol n + 1 : ℤ) - 1

end

end A059036.P18158974080143773900

namespace A059036

/-- `(row(n)-col(n)+1)*(col(n)+1)-1` -/
def P18158974080143773900.Spec : Prop :=
  ∀ n, P18158974080143773900.a n = A059036 n

theorem P18158974080143773900.correct : P18158974080143773900.Spec := by
  intro n
  simp only [A059036, Nat.add_sub_cancel, A059036.P18158974080143773900.a, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A059036

/-! ## A059036.P6447960273049312628

`col(n)*(row(n)-col(n))+row(n)`
-/

namespace A059036.P6447960273049312628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℤ) * ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) + (SequenceMachineLib.triRow n : ℤ)

end

end A059036.P6447960273049312628

namespace A059036

/-- `col(n)*(row(n)-col(n))+row(n)` -/
def P6447960273049312628.Spec : Prop :=
  ∀ n, P6447960273049312628.a n = A059036 n

theorem P6447960273049312628.correct : P6447960273049312628.Spec := by
  intro n
  simp only [A059036, Nat.add_sub_cancel, A059036.P6447960273049312628.a, A059036.P14090632459187506294.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A059036

/-! ## A059036.P10984433159116004346

`A003991(n+1)-1`
-/

namespace A059036.P10984433159116004346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - 1

end

end A059036.P10984433159116004346

namespace A059036

/-- `A003991(n+1)-1` -/
def P10984433159116004346.Spec : Prop :=
  ∀ n, P10984433159116004346.a n = A059036 n

end A059036

/-! ## A059036.P16948789843477615685

`sqrt(A098359(n+1))-1`
-/

namespace A059036.P16948789843477615685
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A098359 (n + 1) : ℝ) - 1

end

end A059036.P16948789843477615685

namespace A059036

/-- `sqrt(A098359(n+1))-1` -/
def P16948789843477615685.Spec : Prop :=
  ∀ n, P16948789843477615685.a n = (A059036 n : ℝ)

end A059036

/-! ## A059036.P16734562667786836015

`A098352(n+1)/4-1`
-/

namespace A059036.P16734562667786836015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098352 (n + 1) : ℚ) / 4 - 1

end

end A059036.P16734562667786836015

namespace A059036

/-- `A098352(n+1)/4-1` -/
def P16734562667786836015.Spec : Prop :=
  ∀ n, P16734562667786836015.a n = (A059036 n : ℚ)

theorem P16734562667786836015.correct : P16734562667786836015.Spec := by
  intro n
  simp only [A059036, Nat.add_sub_cancel, A059036.P16734562667786836015.a, A059036.P14090632459187506294.a, A098352, A098352.P3707437164941693741.a, A003991, A003991.P6365127437582401781.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059036

/-! ## A059036.P7324254139507910603

`A004247(n)+∑[char[∑[n+1]]]`
-/

namespace A059036.P7324254139507910603
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A059036.P7324254139507910603

namespace A059036

/-- `A004247(n)+∑[char[∑[n+1]]]` -/
def P7324254139507910603.Spec : Prop :=
  ∀ n, P7324254139507910603.a n = A059036 n

end A059036

/-! ## A059036.P12171596107765854765

`A098360(n+1)^(1/3)-1`
-/

namespace A059036.P12171596107765854765
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A098360 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ) - 1

end

end A059036.P12171596107765854765

namespace A059036

/-- `A098360(n+1)^(1/3)-1` -/
def P12171596107765854765.Spec : Prop :=
  ∀ n, P12171596107765854765.a n = (A059036 n : ℝ)

end A059036

/-! ## A059036.P16101323623644075367

`A023443(A003991(n+1))`
-/

namespace A059036.P16101323623644075367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A003991 (n + 1)).toNat

end

end A059036.P16101323623644075367

namespace A059036

/-- `A023443(A003991(n+1))` -/
def P16101323623644075367.Spec : Prop :=
  ∀ n, P16101323623644075367.a n = A059036 n

end A059036

/-! ## A059036.P11134061910708913476

`A049687(n)+A049615(n)`
-/

namespace A059036.P11134061910708913476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049687 n + A049615 n

end

end A059036.P11134061910708913476

namespace A059036

/-- `A049687(n)+A049615(n)` -/
def P11134061910708913476.Spec : Prop :=
  ∀ n, P11134061910708913476.a n = A059036 n

end A059036

/-! ## A059036.P2713158985800239393

`A141387(n)-A004247(n)`
-/

namespace A059036.P2713158985800239393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141387 n - A004247 n

end

end A059036.P2713158985800239393

namespace A059036

/-- `A141387(n)-A004247(n)` -/
def P2713158985800239393.Spec : Prop :=
  ∀ n, P2713158985800239393.a n = A059036 n

theorem P2713158985800239393.correct : P2713158985800239393.Spec := by
  intro n
  simp only [A059036, Nat.add_sub_cancel, A059036.P2713158985800239393.a, A059036.P14090632459187506294.a, A004247, A004247.P2751605162508615148.a, A141387, A141387.P5238259369822402056.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059036

/-! ## A059036.P9166320270935429496

`A101447(n)-A128139(n)`
-/

namespace A059036.P9166320270935429496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101447 n - A128139 n

end

end A059036.P9166320270935429496

namespace A059036

/-- `A101447(n)-A128139(n)` -/
def P9166320270935429496.Spec : Prop :=
  ∀ n, P9166320270935429496.a n = A059036 n

theorem P9166320270935429496.correct : P9166320270935429496.Spec := by
  intro n
  simp only [A059036, Nat.add_sub_cancel, A059036.P9166320270935429496.a, A059036.P14090632459187506294.a, A101447, A101447.P4489853314784773764.a, A128139, A128139.P11791759487030447530.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059036

/-! ## A059036.P12168621527524018271

`A002262(n)+∑[A114327(n)]`
-/

namespace A059036.P12168621527524018271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059036.P12168621527524018271

namespace A059036

/-- `A002262(n)+∑[A114327(n)]` -/
def P12168621527524018271.Spec : Prop :=
  ∀ n, P12168621527524018271.a n = A059036 n

end A059036

/-! ## A059036.P12860774102040018041

`A094053(n+1)+A002262(n)`
-/

namespace A059036.P12860774102040018041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (n + 1) + A002262 n

end

end A059036.P12860774102040018041

namespace A059036

/-- `A094053(n+1)+A002262(n)` -/
def P12860774102040018041.Spec : Prop :=
  ∀ n, P12860774102040018041.a n = A059036 n

theorem P12860774102040018041.correct : P12860774102040018041.Spec := by
  intro n
  simp only [A059036, Nat.add_sub_cancel, A059036.P12860774102040018041.a, A059036.P14090632459187506294.a, A002262, A002262.P17823619022233514403.a, A094053, A094053.P7632435431613033853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059036

/-! ## A059036.P10997102505869090264

`A003056(n)+A077028(n)-1`
-/

namespace A059036.P10997102505869090264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + (A077028 n - 1)

end

end A059036.P10997102505869090264

namespace A059036

/-- `A003056(n)+A077028(n)-1` -/
def P10997102505869090264.Spec : Prop :=
  ∀ n, P10997102505869090264.a n = A059036 n

end A059036

/-! ## A059036.P8318180494850950531

`A002024(n+1)-A176270(n)`
-/

namespace A059036.P8318180494850950531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - A176270 n

end

end A059036.P8318180494850950531

namespace A059036

/-- `A002024(n+1)-A176270(n)` -/
def P8318180494850950531.Spec : Prop :=
  ∀ n, P8318180494850950531.a n = A059036 n

end A059036

/-! ## A059036.P6834413644898344254

`A105020(n)-A081493(n+1)`
-/

namespace A059036.P6834413644898344254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105020 n - A081493 (n + 1)

end

end A059036.P6834413644898344254

namespace A059036

/-- `A105020(n)-A081493(n+1)` -/
def P6834413644898344254.Spec : Prop :=
  ∀ n, P6834413644898344254.a n = A059036 n

theorem P6834413644898344254.correct : P6834413644898344254.Spec := by
  intro n
  simp only [A059036, Nat.add_sub_cancel, A059036.P6834413644898344254.a, A059036.P14090632459187506294.a, A081493, A081493.P4701708159405145004.a, A105020, A105020.P13422593106926396251.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059036

/-! ## A059036.P14781313531545603986

`A096038(n+1)-A104587(n)`
-/

namespace A059036.P14781313531545603986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096038 (n + 1) - A104587 n

end

end A059036.P14781313531545603986

namespace A059036

/-- `A096038(n+1)-A104587(n)` -/
def P14781313531545603986.Spec : Prop :=
  ∀ n, P14781313531545603986.a n = A059036 n

theorem P14781313531545603986.correct : P14781313531545603986.Spec := by
  intro n
  simp only [A059036, Nat.add_sub_cancel, A059036.P14781313531545603986.a, A059036.P14090632459187506294.a, A096038, A096038.P12589696669190235938.a, A104587, A104587.P8087848092054787042.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059036

/-! ## A059036.P2327795047044120421

`A129312(n+1)-A077028(n)`
-/

namespace A059036.P2327795047044120421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129312 (n + 1) - A077028 n

end

end A059036.P2327795047044120421

namespace A059036

/-- `A129312(n+1)-A077028(n)` -/
def P2327795047044120421.Spec : Prop :=
  ∀ n, P2327795047044120421.a n = A059036 n

theorem P2327795047044120421.correct : P2327795047044120421.Spec := by
  intro n
  simp only [A059036, Nat.add_sub_cancel, A059036.P2327795047044120421.a, A059036.P14090632459187506294.a, A077028, A077028.P18404356772921913843.a, A129312, A129312.P198002191961826283.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059036

/-! ## A059036.P4186480495878406117

`A128141(n+1)-A101321(n)`
-/

namespace A059036.P4186480495878406117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128141 (n + 1) - A101321 n

end

end A059036.P4186480495878406117

namespace A059036

/-- `A128141(n+1)-A101321(n)` -/
def P4186480495878406117.Spec : Prop :=
  ∀ n, P4186480495878406117.a n = A059036 n

theorem P4186480495878406117.correct : P4186480495878406117.Spec := by
  intro n
  simp only [A059036, Nat.add_sub_cancel, A059036.P4186480495878406117.a, A059036.P14090632459187506294.a, A101321, A101321.P14393802291670128662.a, A128141, A128141.P68200204376407770.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A059036

/-!
# A059037: The transformation of A059032 applied to 1, 1, 1, 1, ...

The programs for A059037, there is no canonical definition to state claims against.
-/

/-! ## A059037.P4659275617578370419

`A059039(∑[n]+n)`
-/

namespace A059037.P4659275617578370419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059039 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A059037.P4659275617578370419

/-! ## A059037.P12781301193666839845

`record[root(A059038(n), A007318(n))]`
-/

namespace A059037.P12781301193666839845
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A059038 n : ℝ) ^ (1 / (A007318 n : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059037.P12781301193666839845

/-! ## A059037.P4950882540878742522

`record[A059038(record[n/A007318(n)])]`
-/

namespace A059037.P4950882540878742522
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A007318 n : ℚ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059038 (SequenceMachineLib.roundAway (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059037.P4950882540878742522

/-! ## A059037.P4065889492902795291

`record[A059038(n)/A008958(n)]`
-/

namespace A059037.P4065889492902795291
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059038 n : ℚ) / (A008958 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059037.P4065889492902795291

/-! ## A059037.P6477229397802417123

`record[A059038(n)/A022166(n)]`
-/

namespace A059037.P6477229397802417123
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059038 n : ℚ) / (A022166 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059037.P6477229397802417123

/-!
# A059038: Triangle in A059037 read by rows from left to right.

The programs for A059038, there is no canonical definition to state claims against.
-/

/-! ## A059038.P15029096136725302029

`A059039(A056023(n+1)-1)`
-/

namespace A059038.P15029096136725302029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059039 (A056023 (n + 1) - 1).toNat

end

end A059038.P15029096136725302029

/-!
# A059039: Triangle in A059037 read by rows in natural order.

The programs for A059039, there is no canonical definition to state claims against.
-/

/-! ## A059039.P10089591092942021920

`A059038(A056023(n+1)-1)`
-/

namespace A059039.P10089591092942021920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059038 (A056023 (n + 1) - 1).toNat

end

end A059039.P10089591092942021920

/-!
# A059040: Row sums of triangle A059037.

The programs for A059040, there is no canonical definition to state claims against.
-/

/-! ## A059040.P12711527934076974725

`A089300(∑[comp[6^n]])`
-/

namespace A059040.P12711527934076974725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089300 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A059040.P12711527934076974725

/-!
# A059041: Numbers k such that 3*7^k + 2 is prime.

The programs for A059041, there is no canonical definition to state claims against.
-/

/-! ## A059041.P11938848427406604082

`lt[A249150(∑[∑{e}[n, #]]), 2]`
-/

namespace A059041.P11938848427406604082
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249150 (∑ j ∈ Finset.range (n + 1), f2 j)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f4 j : ℤ)) n

end

end A059041.P11938848427406604082

/-! ## A059041.P12409935879323503898

`lt[∑{digits}[n, 10^#]%A045542(n+1), 12]`
-/

namespace A059041.P12409935879323503898
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => 10 ^ x).sum : ℕ) : ℤ) (A045542 (n + 1))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A059041.P12409935879323503898

/-! ## A059041.P8562180322872081575

`lt[lcm(n+1, 1-n)/4, A079372(n+1)]`
-/

namespace A059041.P8562180322872081575
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 1 : ℤ) (1 - (n : ℤ)) : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079372 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A059041.P8562180322872081575

/-! ## A059041.P7048379205795140810

`eq[A028639(n), A046771(n)]`
-/

namespace A059041.P7048379205795140810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028639 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059041.P7048379205795140810

/-! ## A059041.P5644162880110400455

`eq[A028655(n), A046771(n)]`
-/

namespace A059041.P5644162880110400455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028655 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059041.P5644162880110400455

/-!
# A059042: Numbers k such that 2*7^k + 5 is prime.

The programs for A059042, there is no canonical definition to state claims against.
-/

/-! ## A059042.P16532696928016707111

`eq[A030016(A007305(n)), A305313(n+1)]`
-/

namespace A059042.P16532696928016707111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030016 (A007305 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305313 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059042.P16532696928016707111

/-! ## A059042.P5250402416999096116

`lt[A292942(n), A001223(A045559(3*(n+1)))]`
-/

namespace A059042.P5250402416999096116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292942 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A045559 (3 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059042.P5250402416999096116

/-! ## A059042.P5832670232979048327

`eq[0, A277517(n+2)%∑[char[3*n]]]`
-/

namespace A059042.P5832670232979048327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A277517 (n + 2)) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059042.P5832670232979048327

/-! ## A059042.P16807591153057194703

`eq[1, A117506(A243496(n))]`
-/

namespace A059042.P16807591153057194703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117506 (A243496 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059042.P16807591153057194703

/-! ## A059042.P5458025787528724854

`A096994(A005232(n))+n`
-/

namespace A059042.P5458025787528724854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096994 (A005232 n).toNat + (n : ℤ)

end

end A059042.P5458025787528724854

/-!
# A059043: Numbers in which each digit is the (immediate) successor of the previous one (if it exists) and 0 is considered the successor of 9.

The programs for A059043, there is no canonical definition to state claims against.
-/

/-! ## A059043.P253451991193738680

`A226134(record[A347689(n)])`
-/

namespace A059043.P253451991193738680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226134 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A059043.P253451991193738680

/-! ## A059043.P6644260593081215201

`lt[lcm(11, 1-n), 89]`
-/

namespace A059043.P6644260593081215201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 11 (1 - (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  89

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059043.P6644260593081215201

/-! ## A059043.P17556682226720875146

`record[A309590(n)]`
-/

namespace A059043.P17556682226720875146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059043.P17556682226720875146

/-! ## A059043.P9028746064562328467

`eq[1, A307651(n)]`
-/

namespace A059043.P9028746064562328467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307651 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059043.P9028746064562328467

/-! ## A059043.P1603162230678379053

`eq[A054899(n), A097462(n)]`
-/

namespace A059043.P1603162230678379053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097462 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059043.P1603162230678379053

/-!
# A059045: Square array T(n,k) read by antidiagonals where T(0,k) = 0 and T(n,k) = 1 + 2k + 3k^2 + ... + n*k^(n-1).

The programs for A059045, the canonical program `A059045.P2231944952749090750` is in `Seq.B000.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059045 has offset 0).

The definition of A059045 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A059045.P2231944952749090750

`(row(n)-col(n))*col(n)^(row(n)-col(n)-1)+T(n-1,k)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C009`.
-/

namespace A059045

/-- `(row(n)-col(n))*col(n)^(row(n)-col(n)-1)+T(n-1,k)` -/
def P2231944952749090750.Spec : Prop :=
  ∀ n, P2231944952749090750.a n = (A059045 n : ℚ)

end A059045

/-! ## A059045.P7708562259768689739

`A317659(n+1)%record[A015159(n)]`
-/

namespace A059045.P7708562259768689739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015159 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A317659 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A059045.P7708562259768689739

namespace A059045

/-- `A317659(n+1)%record[A015159(n)]` -/
def P7708562259768689739.Spec : Prop :=
  ∀ n, P7708562259768689739.a n = A059045 n

end A059045

/-! ## A059045.P15463403336093164778

`A317659(n+1)-A000007(A090025(n))`
-/

namespace A059045.P15463403336093164778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317659 (n + 1) - A000007 (A090025 n).toNat

end

end A059045.P15463403336093164778

namespace A059045

/-- `A317659(n+1)-A000007(A090025(n))` -/
def P15463403336093164778.Spec : Prop :=
  ∀ n, P15463403336093164778.a n = A059045 n

end A059045

/-! ## A059045.P5049420880712836399

`A317659(n+1)-A186741(A199647(n+1))`
-/

namespace A059045.P5049420880712836399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317659 (n + 1) - A186741 (A199647 (n + 1)).toNat

end

end A059045.P5049420880712836399

namespace A059045

/-- `A317659(n+1)-A186741(A199647(n+1))` -/
def P5049420880712836399.Spec : Prop :=
  ∀ n, P5049420880712836399.a n = A059045 n

end A059045

/-! ## A059045.P18254553283205012899

`A317659(n+1)-A127647(A305523(n+1))`
-/

namespace A059045.P18254553283205012899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317659 (n + 1) - A127647 (A305523 (n + 1)).toNat

end

end A059045.P18254553283205012899

namespace A059045

/-- `A317659(n+1)-A127647(A305523(n+1))` -/
def P18254553283205012899.Spec : Prop :=
  ∀ n, P18254553283205012899.a n = A059045 n

end A059045

/-!
# A059046: Numbers n such that sigma(n)-n divides n-1.

The programs for A059046, there is no canonical definition to state claims against.
-/

/-! ## A059046.P7595706446683438671

`∪[A000430(n+1), A306531(n+1)]`
-/

namespace A059046.P7595706446683438671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059046.P7595706446683438671

/-! ## A059046.P11765960833711776514

`∪[A246655(n+1), A306531(n+1)]`
-/

namespace A059046.P11765960833711776514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059046.P11765960833711776514

/-! ## A059046.P2340859599660671503

`∪[A306531(n+1), A000961(n+2)]`
-/

namespace A059046.P2340859599660671503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059046.P2340859599660671503

/-! ## A059046.P2145980154650079146

`eq[0, (n+1)%A001065(n+2)]+2`
-/

namespace A059046.P2145980154650079146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A001065 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A059046.P2145980154650079146

/-! ## A059046.P7028481210579662029

`record[A033879(n+2)+gcd(n+1, A001065(n+2))]`
-/

namespace A059046.P7028481210579662029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033879 (n + 2) + (Int.gcd (n + 1 : ℤ) (A001065 (n + 2)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059046.P7028481210579662029

/-!
# A059047: Numbers x such that sigma(x)-x divides x-1, other than prime powers.

The programs for A059047, there is no canonical definition to state claims against.
-/

/-! ## A059047.P8756959125627592047

`filter[A306531(n+1), A008966(#)]`
-/

namespace A059047.P8756959125627592047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A059047.P8756959125627592047

/-! ## A059047.P8145232407040612077

`filter[A301482(n+1), A353476(#)]`
-/

namespace A059047.P8145232407040612077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353476 (f1 j).toNat = 1) n)

end

end A059047.P8145232407040612077

/-! ## A059047.P12692155514457525402

`filter[A301482(n+1), A353480(#)]`
-/

namespace A059047.P12692155514457525402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A059047.P12692155514457525402

/-! ## A059047.P9415035619674208637

`filter[A301482(n+1), A353481(#)]`
-/

namespace A059047.P9415035619674208637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353481 (f1 j).toNat = 1) n)

end

end A059047.P9415035619674208637

/-! ## A059047.P4313905216886805979

`filter[A301482(n+1), A353676(#)]`
-/

namespace A059047.P4313905216886805979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301482 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353676 (f1 j).toNat = 1) n)

end

end A059047.P4313905216886805979

/-!
# A059049: Number of 6-element ordered T_0-antichains on an unlabeled n-set; T_1-hypergraphs on 6 labeled nodes with n (not necessarily empty) distinct hyperedges (n=0,1,...,64).

The programs for A059049, there is no canonical definition to state claims against.
-/

/-! ## A059049.P1777646527500305369

`∑[A325686(A112957(n+1))]`
-/

namespace A059049.P1777646527500305369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325686 (A112957 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059049.P1777646527500305369

/-! ## A059049.P16376491650319791787

`∑[A329354(A321242(n+1))]`
-/

namespace A059049.P16376491650319791787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329354 (A321242 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059049.P16376491650319791787

/-!
# A059052: Number of n-element unlabeled ordered T_0-antichains; T_1-hypergraphs (with empty hyperedge but without multiple hyperedges) on n labeled nodes.

The programs for A059052, there is no canonical definition to state claims against.
-/

/-! ## A059052.P10434419753661932856

`2*A059523(n)`
-/

namespace A059052.P10434419753661932856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059523 n

end

end A059052.P10434419753661932856

/-! ## A059052.P10469939541124273781

`lcm(∏{e}[n+1, #+1]², A326960(n))`
-/

namespace A059052.P10469939541124273781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) ^ 2 : ℕ) : ℤ) (A326960 n)

end

end A059052.P10469939541124273781

/-! ## A059052.P16033632961606221289

`A326960(A063524(n)+n)`
-/

namespace A059052.P16033632961606221289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326960 (A063524 n + (n : ℤ)).toNat

end

end A059052.P16033632961606221289

/-! ## A059052.P2270153170761788896

`lcm(A326951(val(n+1, 2)), A326960(n))`
-/

namespace A059052.P2270153170761788896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A326951 (SequenceMachineLib.valuation (n + 1) 2)) (A326960 n)

end

end A059052.P2270153170761788896

/-! ## A059052.P2902989185685773683

`A059523(A007095(n))+A059523(n)`
-/

namespace A059052.P2902989185685773683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059523 (A007095 n).toNat + A059523 n

end

end A059052.P2902989185685773683

/-!
# A059053: Number of chiral pairs of necklaces with n beads and two colors (color complements being equivalent); i.e., turning the necklace over neither leaves it unchanged nor simply swaps the colors.

The programs for A059053, the canonical program `A059053.P13144788230309501113` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059053 has offset 0).

The definition of A059053 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000013, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059053.P16123833302645455740

`A000011(n)-A016116(n)`
-/

namespace A059053.P16123833302645455740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000011 n - A016116 n

end

end A059053.P16123833302645455740

namespace A059053

/-- `A000011(n)-A016116(n)` -/
def P16123833302645455740.Spec : Prop :=
  ∀ n, P16123833302645455740.a n = A059053 n

end A059053

/-! ## A059053.P11697158410769541702

`A000013(n)-A000011(n)`
-/

namespace A059053.P11697158410769541702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 n - A000011 n

end

end A059053.P11697158410769541702

namespace A059053

/-- `A000013(n)-A000011(n)` -/
def P11697158410769541702.Spec : Prop :=
  ∀ n, P11697158410769541702.a n = A059053 n

end A059053

/-! ## A059053.P13144788230309501113

`(A000013(n)-A016116(n))/2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A059053

/-- `(A000013(n)-A016116(n))/2` -/
def P13144788230309501113.Spec : Prop :=
  ∀ n, P13144788230309501113.a n = (A059053 n : ℚ)

end A059053

/-! ## A059053.P12128779044715231566

`∑{d}[n, A308706(#)]`
-/

namespace A059053.P12128779044715231566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A308706 d

end

end A059053.P12128779044715231566

namespace A059053

/-- `∑{d}[n, A308706(#)]` -/
def P12128779044715231566.Spec : Prop :=
  ∀ n, P12128779044715231566.a n = A059053 n

end A059053

/-! ## A059053.P6424101738171644798

`A045674(n)+A045677(n)-A000011(n)`
-/

namespace A059053.P6424101738171644798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045674 n + (A045677 n - A000011 n)

end

end A059053.P6424101738171644798

namespace A059053

/-- `A045674(n)+A045677(n)-A000011(n)` -/
def P6424101738171644798.Spec : Prop :=
  ∀ n, P6424101738171644798.a n = A059053 n

end A059053

/-! ## A059053.P18086836663057400158

`A000013(n)%A000011(n%A000011(n))`
-/

namespace A059053.P18086836663057400158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000013 n) (A000011 (Int.tmod (n : ℤ) (A000011 n)).toNat)

end

end A059053.P18086836663057400158

namespace A059053

/-- `A000013(n)%A000011(n%A000011(n))` -/
def P18086836663057400158.Spec : Prop :=
  ∀ n, P18086836663057400158.a n = A059053 n

end A059053

/-! ## A059053.P6985119890290683877

`(A000031(n)-A000011(n))%A000016(n)`
-/

namespace A059053.P6985119890290683877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000031 n - A000011 n) (A000016 n)

end

end A059053.P6985119890290683877

namespace A059053

/-- `(A000031(n)-A000011(n))%A000016(n)` -/
def P6985119890290683877.Spec : Prop :=
  ∀ n, P6985119890290683877.a n = A059053 n

end A059053

/-! ## A059053.P12153166706825803262

`A320647(∑[n-1]+3)`
-/

namespace A059053.P12153166706825803262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320647 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A059053.P12153166706825803262

namespace A059053

/-- `A320647(∑[n-1]+3)` -/
def P12153166706825803262.Spec : Prop :=
  ∀ n, P12153166706825803262.a n = A059053 n

end A059053

/-! ## A059053.P12503741650243942471

`A320742(A212342(n+1))`
-/

namespace A059053.P12503741650243942471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (A212342 (n + 1)).toNat

end

end A059053.P12503741650243942471

namespace A059053

/-- `A320742(A212342(n+1))` -/
def P12503741650243942471.Spec : Prop :=
  ∀ n, P12503741650243942471.a n = A059053 n

end A059053

/-! ## A059053.P17746802127878985195

`A320742(A347513(n+3))`
-/

namespace A059053.P17746802127878985195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320742 (A347513 (n + 3)).toNat

end

end A059053.P17746802127878985195

namespace A059053

/-- `A320742(A347513(n+3))` -/
def P17746802127878985195.Spec : Prop :=
  ∀ n, P17746802127878985195.a n = A059053 n

end A059053

/-!
# A059054: Integers which can be written as (b^k+1)/(b+1) for positive integers b and k.

The programs for A059054, there is no canonical definition to state claims against.
-/

/-! ## A059054.P13938599425627332063

`∏{e}[3^n, A206943(#)]`
-/

namespace A059054.P13938599425627332063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A206943 (Nat.factorization (f1 n) p)

end

end A059054.P13938599425627332063

/-! ## A059054.P12690673858903795655

`∏{e}[3^n, A206944(#)]`
-/

namespace A059054.P12690673858903795655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A206944 (Nat.factorization (f1 n) p)

end

end A059054.P12690673858903795655

/-! ## A059054.P13574575846249815817

`lt[A059929(A138036(n)), A273943(2*n+1)]`
-/

namespace A059054.P13574575846249815817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059929 (A138036 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059054.P13574575846249815817

/-! ## A059054.P15827620955032990219

`eq[A059851(A138036(n)), A179391(n+1)]`
-/

namespace A059054.P15827620955032990219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059851 (A138036 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179391 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059054.P15827620955032990219

/-! ## A059054.P13929088820390769347

`record[A327531(A101321(n))]`
-/

namespace A059054.P13929088820390769347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327531 (A101321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059054.P13929088820390769347

/-!
# A059055: Primes which can be written as (b^k+1)/(b+1) for positive integers b and k.

The programs for A059055, there is no canonical definition to state claims against.
-/

/-! ## A059055.P16723012290553490952

`∩[A059054(n+1), A206864(n+1)]`
-/

namespace A059055.P16723012290553490952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059055.P16723012290553490952

/-! ## A059055.P12507057213238557771

`∩[A059054(n+1), A206946(n+1)]`
-/

namespace A059055.P12507057213238557771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059055.P12507057213238557771

/-! ## A059055.P4435815680660357961

`∪[A002383(n+1), A343774(n+1)]`
-/

namespace A059055.P4435815680660357961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059055.P4435815680660357961

/-! ## A059055.P8878176520181339510

`p?[A059054(n+1)]`
-/

namespace A059055.P8878176520181339510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059054 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A059055.P8878176520181339510

/-! ## A059055.P14548915732543334919

`or(1, p?[A059054(A008619(2*n))])`
-/

namespace A059055.P14548915732543334919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059054 (A008619 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A059055.P14548915732543334919

/-! ## A059055.P15673249606515534152

`∩[A042986(n+1), A059054(n+1)]`
-/

namespace A059055.P15673249606515534152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059055.P15673249606515534152

/-! ## A059055.P9039608248227443501

`∩[A045321(n+1), A059054(n+1)]`
-/

namespace A059055.P9039608248227443501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059055.P9039608248227443501

/-! ## A059055.P14553001414529278509

`∩[A059054(n+1), A325143(n+1)]`
-/

namespace A059055.P14553001414529278509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059055.P14553001414529278509

/-! ## A059055.P7859254004464728742

`∩[A009087(n+1), A059054(n+1)]`
-/

namespace A059055.P7859254004464728742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059055.P7859254004464728742

/-! ## A059055.P1349952779284171576

`∩[A059054(n+1), A090190(n+1)]`
-/

namespace A059055.P1349952779284171576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090190 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A059055.P1349952779284171576

/-!
# A059056: Penrice Christmas gift numbers, Card-matching numbers (Dinner-Diner matching numbers): Triangle T(n,k) = number of ways to get k matches for a deck with n cards, 2 of each kind.

The programs for A059056, there is no canonical definition to state claims against.
-/

/-! ## A059056.P3842581278046336766

`A059057(n)/2^A000196(n)`
-/

namespace A059056.P3842581278046336766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059057 n : ℚ) / (2 : ℚ) ^ (A000196 n : ℤ)

end

end A059056.P3842581278046336766

/-! ## A059056.P15096643140950839218

`A059057(n)/A000079(A000196(n))`
-/

namespace A059056.P15096643140950839218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059057 n : ℚ) / (A000079 (A000196 n).toNat : ℚ)

end

end A059056.P15096643140950839218

/-! ## A059056.P3922315485800937801

`A335872(A161983(n))/A000079(A000196(n))`
-/

namespace A059056.P3922315485800937801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335872 (A161983 n).toNat : ℚ) / (A000079 (A000196 n).toNat : ℚ)

end

end A059056.P3922315485800937801

/-! ## A059056.P483893444254427464

`A335872(A007606(n+1)-1)/A000079(A000196(n))`
-/

namespace A059056.P483893444254427464
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335872 (A007606 (n + 1) - 1).toNat : ℚ) / (A000079 (A000196 n).toNat : ℚ)

end

end A059056.P483893444254427464

/-!
# A059057: Penrice Christmas gift numbers, Card-matching numbers (Dinner-Diner matching numbers).

The programs for A059057, there is no canonical definition to state claims against.
-/

/-! ## A059057.P17403775632692304180

`2^A000196(n)*A059056(n)`
-/

namespace A059057.P17403775632692304180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A000196 n : ℤ) * (A059056 n : ℚ)

end

end A059057.P17403775632692304180

/-! ## A059057.P17234112919698798889

`A000079(A000196(n))*A059056(n)`
-/

namespace A059057.P17234112919698798889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A000196 n).toNat * A059056 n

end

end A059057.P17234112919698798889

/-! ## A059057.P18390022944701351943

`A335872(A161983(n))`
-/

namespace A059057.P18390022944701351943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335872 (A161983 n).toNat

end

end A059057.P18390022944701351943

/-! ## A059057.P8777488836044521048

`A335872(A007606(n+1)-1)`
-/

namespace A059057.P8777488836044521048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335872 (A007606 (n + 1) - 1).toNat

end

end A059057.P8777488836044521048

/-! ## A059057.P11821099693646962119

`A335872(lt[A008297(n+1), 0])`
-/

namespace A059057.P11821099693646962119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008297 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335872 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A059057.P11821099693646962119

/-! ## A059057.P13966704174145841931

`A335872(eq[1, A057211(n+1)])`
-/

namespace A059057.P13966704174145841931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335872 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A059057.P13966704174145841931

/-!
# A059059: Card-matching numbers (Dinner-Diner matching numbers).

The programs for A059059, there is no canonical definition to state claims against.
-/

/-! ## A059059.P906128864593720313

`A187507(or(A000034(n), A148040(n)))`
-/

namespace A059059.P906128864593720313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (Int.lor (A000034 n) (A148040 n)).toNat

end

end A059059.P906128864593720313

/-! ## A059059.P16431679379400067968

`A187507(or(A148040(n), A344772(n+1)))`
-/

namespace A059059.P16431679379400067968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187507 (Int.lor (A148040 n) (A344772 (n + 1))).toNat

end

end A059059.P16431679379400067968

/-!
# A059060: Card-matching numbers (Dinner-Diner matching numbers).

The programs for A059060, there is no canonical definition to state claims against.
-/

/-! ## A059060.P12033454005244693462

`A325200(∑[A325200(2^n-1)])`
-/

namespace A059060.P12033454005244693462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325200 (2 ^ n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325200 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A059060.P12033454005244693462

/-! ## A059060.P12193638699286683815

`A326453(A138289(n+1)+A000007(n))`
-/

namespace A059060.P12193638699286683815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326453 (A138289 (n + 1) + A000007 n).toNat

end

end A059060.P12193638699286683815

/-! ## A059060.P10429912246811220409

`A326453(A138289(n+1)%A000400(n))`
-/

namespace A059060.P10429912246811220409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326453 (Int.tmod (A138289 (n + 1)) (A000400 n)).toNat

end

end A059060.P10429912246811220409

/-! ## A059060.P3108332106928184631

`and(A000290(A041165(n)), A338546(n+1))`
-/

namespace A059060.P3108332106928184631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000290 (A041165 n).toNat) (A338546 (n + 1))

end

end A059060.P3108332106928184631

/-!
# A059061: Card-matching numbers (Dinner-Diner matching numbers).

The programs for A059061, there is no canonical definition to state claims against.
-/

/-! ## A059061.P2760457349676783886

`and(n!, record[A015070(n)])`
-/

namespace A059061.P2760457349676783886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial n : ℤ) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A059061.P2760457349676783886

/-! ## A059061.P11458879128288369870

`and(record[A015070(n)], A261006(n))`
-/

namespace A059061.P11458879128288369870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A261006 n)

end

end A059061.P11458879128288369870

/-! ## A059061.P7607742228796098532

`and(-A064987(n+1), A099952(n+1))`
-/

namespace A059061.P7607742228796098532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-A064987 (n + 1)) (A099952 (n + 1))

end

end A059061.P7607742228796098532

/-!
# A059063: Card-matching numbers (Dinner-Diner matching numbers).

The programs for A059063, there is no canonical definition to state claims against.
-/

/-! ## A059063.P15802037199496500657

`A047470(A128470(char[n!]+a(n-1)))` with `a(0)=1, a(1)=0, a(2)=0`
-/

namespace A059063.P15802037199496500657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0] fun n a =>
  A047470 (A128470 (((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + a (n - 1)).toNat).toNat

end

end A059063.P15802037199496500657

/-! ## A059063.P9729195142302840300

`A276086(n)*A339629(A293328(n))`
-/

namespace A059063.P9729195142302840300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n * A339629 (A293328 n).toNat

end

end A059063.P9729195142302840300

/-! ## A059063.P3898009323087267929

`∑[A178090(A056119(n))]^A001221(n+3)`
-/

namespace A059063.P3898009323087267929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178090 (A056119 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A001221 (n + 3) : ℤ)

end

end A059063.P3898009323087267929

/-! ## A059063.P6811419284940466077

`A056456(n+3)^A080791(A018327(n+1))`
-/

namespace A059063.P6811419284940466077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056456 (n + 3) : ℚ) ^ (A080791 (A018327 (n + 1)).toNat : ℤ)

end

end A059063.P6811419284940466077

/-!
# A059064: Card-matching numbers (Dinner-Diner matching numbers).

The programs for A059064, the canonical program `A059064.P3418469825707099881` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059064 has offset 0).

The definition of A059064 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8263 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059064.P18044763273738678688

`comp[∑[2*n]]%2*A247644(n+1)`
-/

namespace A059064.P18044763273738678688
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n % 2 : ℕ) : ℤ) * A247644 (n + 1)

end

end A059064.P18044763273738678688

namespace A059064

/-- `comp[∑[2*n]]%2*A247644(n+1)` -/
def P18044763273738678688.Spec : Prop :=
  ∀ n, P18044763273738678688.a n = A059064 n

end A059064

/-! ## A059064.P3418469825707099881

`(A071028(n)*A249095(n))²`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A059064

/-- `(A071028(n)*A249095(n))²` -/
def P3418469825707099881.Spec : Prop :=
  ∀ n, P3418469825707099881.a n = A059064 n

theorem P3418469825707099881.correct : P3418469825707099881.Spec := by
  intro n
  simp only [A059064]

end A059064

/-! ## A059064.P8068766674352558041

`A071028(n)*A247644(n+1)`
-/

namespace A059064.P8068766674352558041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071028 n * A247644 (n + 1)

end

end A059064.P8068766674352558041

namespace A059064

/-- `A071028(n)*A247644(n+1)` -/
def P8068766674352558041.Spec : Prop :=
  ∀ n, P8068766674352558041.a n = A059064 n

end A059064

/-! ## A059064.P15628014200177559156

`A178112(comp[round(sqrt(n+1))²+n])²`
-/

namespace A059064.P15628014200177559156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178112 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2

end

end A059064.P15628014200177559156

namespace A059064

/-- `A178112(comp[round(sqrt(n+1))²+n])²` -/
def P15628014200177559156.Spec : Prop :=
  ∀ n, P15628014200177559156.a n = A059064 n

end A059064

/-! ## A059064.P3546153386601403558

`A204293(comp[round(sqrt(n+1))²+n])²`
-/

namespace A059064.P3546153386601403558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204293 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) ^ 2

end

end A059064.P3546153386601403558

namespace A059064

/-- `A204293(comp[round(sqrt(n+1))²+n])²` -/
def P3546153386601403558.Spec : Prop :=
  ∀ n, P3546153386601403558.a n = A059064 n

end A059064

/-! ## A059064.P4016497559229294249

`A051159(A161983(n))²`
-/

namespace A059064.P4016497559229294249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A161983 n).toNat ^ 2

end

end A059064.P4016497559229294249

namespace A059064

/-- `A051159(A161983(n))²` -/
def P4016497559229294249.Spec : Prop :=
  ∀ n, P4016497559229294249.a n = A059064 n

end A059064

/-! ## A059064.P15752928320266376029

`A051159(A007606(n+1)-1)²`
-/

namespace A059064.P15752928320266376029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A007606 (n + 1) - 1).toNat ^ 2

end

end A059064.P15752928320266376029

namespace A059064

/-- `A051159(A007606(n+1)-1)²` -/
def P15752928320266376029.Spec : Prop :=
  ∀ n, P15752928320266376029.a n = A059064 n

end A059064

/-! ## A059064.P4220038895571748573

`A051159(eq[1, A057211(n+1)])²`
-/

namespace A059064.P4220038895571748573
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057211 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) ^ 2

end

end A059064.P4220038895571748573

namespace A059064

/-- `A051159(eq[1, A057211(n+1)])²` -/
def P4220038895571748573.Spec : Prop :=
  ∀ n, P4220038895571748573.a n = A059064 n

end A059064

/-! ## A059064.P7671436751488564397

`A051159(eq[A051159(n), A204293(n)])²`
-/

namespace A059064.P7671436751488564397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204293 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) ^ 2

end

end A059064.P7671436751488564397

namespace A059064

/-- `A051159(eq[A051159(n), A204293(n)])²` -/
def P7671436751488564397.Spec : Prop :=
  ∀ n, P7671436751488564397.a n = A059064 n

end A059064

/-! ## A059064.P11397884519786290711

`A051159(A116942(2*n))²`
-/

namespace A059064.P11397884519786290711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A116942 (2 * n)).toNat ^ 2

end

end A059064.P11397884519786290711

namespace A059064

/-- `A051159(A116942(2*n))²` -/
def P11397884519786290711.Spec : Prop :=
  ∀ n, P11397884519786290711.a n = A059064 n

end A059064

/-! ## A059064.P13547392767971073413

`A051159(A316670(n+1))²`
-/

namespace A059064.P13547392767971073413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A316670 (n + 1)).toNat ^ 2

end

end A059064.P13547392767971073413

namespace A059064

/-- `A051159(A316670(n+1))²` -/
def P13547392767971073413.Spec : Prop :=
  ∀ n, P13547392767971073413.a n = A059064 n

end A059064

/-! ## A059064.P3523491187843852892

`(A071028(n)*A140751(n))²`
-/

namespace A059064.P3523491187843852892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071028 n * A140751 n) ^ 2

end

end A059064.P3523491187843852892

namespace A059064

/-- `(A071028(n)*A140751(n))²` -/
def P3523491187843852892.Spec : Prop :=
  ∀ n, P3523491187843852892.a n = A059064 n

end A059064

/-! ## A059064.P13518984334430975850

`A059065(n)/A059065(A048760(n))`
-/

namespace A059064.P13518984334430975850
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059065 n : ℚ) / (A059065 (A048760 n).toNat : ℚ)

end

end A059064.P13518984334430975850

namespace A059064

/-- `A059065(n)/A059065(A048760(n))` -/
def P13518984334430975850.Spec : Prop :=
  ∀ n, P13518984334430975850.a n = (A059064 n : ℚ)

end A059064

/-! ## A059064.P10476326580701345399

`A145893(A161983(n))/A214080(n)²`
-/

namespace A059064.P10476326580701345399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145893 (A161983 n).toNat : ℚ) / (A214080 n ^ 2 : ℚ)

end

end A059064.P10476326580701345399

namespace A059064

/-- `A145893(A161983(n))/A214080(n)²` -/
def P10476326580701345399.Spec : Prop :=
  ∀ n, P10476326580701345399.a n = (A059064 n : ℚ)

end A059064

/-! ## A059064.P13018371410611637100

`A051159(A316965(n)+1)²`
-/

namespace A059064.P13018371410611637100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051159 (A316965 n + 1).toNat ^ 2

end

end A059064.P13018371410611637100

namespace A059064

/-- `A051159(A316965(n)+1)²` -/
def P13018371410611637100.Spec : Prop :=
  ∀ n, P13018371410611637100.a n = A059064 n

end A059064

/-! ## A059064.P3079883759154671933

`A179181(A007606(n+1))²`
-/

namespace A059064.P3079883759154671933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179181 (A007606 (n + 1)).toNat ^ 2

end

end A059064.P3079883759154671933

namespace A059064

/-- `A179181(A007606(n+1))²` -/
def P3079883759154671933.Spec : Prop :=
  ∀ n, P3079883759154671933.a n = A059064 n

end A059064

/-! ## A059064.P4519609876200776529

`A179181(A161983(n+1))²`
-/

namespace A059064.P4519609876200776529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179181 (A161983 (n + 1)).toNat ^ 2

end

end A059064.P4519609876200776529

namespace A059064

/-- `A179181(A161983(n+1))²` -/
def P4519609876200776529.Spec : Prop :=
  ∀ n, P4519609876200776529.a n = A059064 n

end A059064

/-! ## A059064.P6832778019026960221

`A260492(n)²`
-/

namespace A059064.P6832778019026960221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260492 n ^ 2

end

end A059064.P6832778019026960221

namespace A059064

/-- `A260492(n)²` -/
def P6832778019026960221.Spec : Prop :=
  ∀ n, P6832778019026960221.a n = A059064 n

end A059064

/-! ## A059064.P13630872446676373128

`A260492(n-char[1])^2`
-/

namespace A059064.P13630872446676373128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260492 (n - (if ∃ j, f1 j = n then 1 else 0)) ^ 2

end

end A059064.P13630872446676373128

namespace A059064

/-- `A260492(n-char[1])^2` -/
def P13630872446676373128.Spec : Prop :=
  ∀ n, P13630872446676373128.a n = A059064 n

end A059064

/-! ## A059064.P16228882847423815372

`A002620(2*A260492(n))`
-/

namespace A059064.P16228882847423815372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A260492 n).toNat

end

end A059064.P16228882847423815372

namespace A059064

/-- `A002620(2*A260492(n))` -/
def P16228882847423815372.Spec : Prop :=
  ∀ n, P16228882847423815372.a n = A059064 n

end A059064

/-!
# A059065: Card-matching numbers (Dinner-Diner matching numbers).

The programs for A059065, there is no canonical definition to state claims against.
-/

/-! ## A059065.P15705442368527974792

`A145893(comp[round(sqrt(n+1))²+n])`
-/

namespace A059065.P15705442368527974792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145893 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A059065.P15705442368527974792

/-! ## A059065.P2432465763771619839

`A145894(comp[round(sqrt(n+1))²+n])`
-/

namespace A059065.P2432465763771619839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n + 1 : ℝ)) ^ 2 + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145894 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A059065.P2432465763771619839

/-! ## A059065.P6350772582744172543

`lcm(A145893(A161983(n)), A214080(n))`
-/

namespace A059065.P6350772582744172543
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A145893 (A161983 n).toNat) (A214080 n)

end

end A059065.P6350772582744172543

/-! ## A059065.P11551348496066139545

`(A214080(n)*A260492(n))²`
-/

namespace A059065.P11551348496066139545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214080 n * A260492 n) ^ 2

end

end A059065.P11551348496066139545

/-! ## A059065.P16464745505502563469

`lcm(A145894(A161983(n)), A260492(n))`
-/

namespace A059065.P16464745505502563469
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A145894 (A161983 n).toNat) (A260492 n)

end

end A059065.P16464745505502563469

/-! ## A059065.P14557036876801275073

`A145893(A161983(n))%A000079(3*n+1)`
-/

namespace A059065.P14557036876801275073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145893 (A161983 n).toNat) (A000079 (3 * n + 1))

end

end A059065.P14557036876801275073

/-!
# A059066: Card-matching numbers (Dinner-Diner matching numbers).

The programs for A059066, there is no canonical definition to state claims against.
-/

/-! ## A059066.P12761774461213635302

`A255593(A059067(n))`
-/

namespace A059066.P12761774461213635302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255593 (A059067 n).toNat

end

end A059066.P12761774461213635302

/-!
# A059073: Card-matching numbers (Dinner-Diner matching numbers).

The programs for A059073, there is no canonical definition to state claims against.
-/

/-! ## A059073.P16808333576312267621

`A059058(∑[n]+n²-n)`
-/

namespace A059073.P16808333576312267621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059058 (∑ j ∈ Finset.range (n + 1), f1 j + n ^ 2 - n)

end

end A059073.P16808333576312267621

/-! ## A059073.P15125088895702978847

`and(-3, A059058(A000326(n)))`
-/

namespace A059073.P15125088895702978847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A059058 (A000326 n).toNat)

end

end A059073.P15125088895702978847

/-! ## A059073.P17598922655477473610

`A016266(n)*A059058(A000326(n))`
-/

namespace A059073.P17598922655477473610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016266 n * A059058 (A000326 n).toNat

end

end A059073.P17598922655477473610

/-! ## A059073.P9553851082198945528

`A059058(A000326(n))^A016266(n+1)`
-/

namespace A059073.P9553851082198945528
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059058 (A000326 n).toNat : ℚ) ^ (A016266 (n + 1) : ℤ)

end

end A059073.P9553851082198945528

/-! ## A059073.P3039969259962191348

`A046212(2*n+1)*A059058(A000326(n))`
-/

namespace A059073.P3039969259962191348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046212 (2 * n + 1) * A059058 (A000326 n).toNat

end

end A059073.P3039969259962191348

/-!
# A059074: Number of derangements of a multiset comprising 4 repeats of an n-element set.

The programs for A059074, there is no canonical definition to state claims against.
-/

/-! ## A059074.P4295192109273439676

`A059060(C(2*n, 2))`
-/

namespace A059074.P4295192109273439676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059060 (Nat.choose (2 * n) 2)

end

end A059074.P4295192109273439676

/-! ## A059074.P251844872729013916

`A059060(2*n²-n)`
-/

namespace A059074.P251844872729013916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059060 (2 * n ^ 2 - n)

end

end A059074.P251844872729013916

/-! ## A059074.P5566025996420431224

`A059060(A161680(2*n))+A007814(2*n+1)`
-/

namespace A059074.P5566025996420431224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059060 (A161680 (2 * n)).toNat + A007814 (2 * n + 1)

end

end A059074.P5566025996420431224

/-! ## A059074.P16637998479435804188

`A059060(A161680(2*n))+A003982(2*n+3)`
-/

namespace A059074.P16637998479435804188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059060 (A161680 (2 * n)).toNat + A003982 (2 * n + 3)

end

end A059074.P16637998479435804188

/-!
# A059076: Number of pairs of orientable necklaces with n beads and two colors; i.e., turning the necklace over does not leave it unchanged.

The programs for A059076, the canonical program `A059076.P1559801332482280449` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059076 has offset 0).

The definition of A059076 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000031, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059076.P9891978029484494887

`A000029(n)-A029744(n+1)`
-/

namespace A059076.P9891978029484494887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 n - A029744 (n + 1)

end

end A059076.P9891978029484494887

namespace A059076

/-- `A000029(n)-A029744(n+1)` -/
def P9891978029484494887.Spec : Prop :=
  ∀ n, P9891978029484494887.a n = A059076 n

end A059076

/-! ## A059076.P11397647483850309181

`A000031(n)-A000029(n)`
-/

namespace A059076.P11397647483850309181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - A000029 n

end

end A059076.P11397647483850309181

namespace A059076

/-- `A000031(n)-A000029(n)` -/
def P11397647483850309181.Spec : Prop :=
  ∀ n, P11397647483850309181.a n = A059076 n

end A059076

/-! ## A059076.P1559801332482280449

`(A000031(n)-A029744(n+1))/2`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A059076

/-- `(A000031(n)-A029744(n+1))/2` -/
def P1559801332482280449.Spec : Prop :=
  ∀ n, P1559801332482280449.a n = (A059076 n : ℚ)

end A059076

/-! ## A059076.P5355765117855003649

`(A052823(n)+2)%A000029(n)`
-/

namespace A059076.P5355765117855003649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A052823 n + 2) (A000029 n)

end

end A059076.P5355765117855003649

namespace A059076

/-- `(A052823(n)+2)%A000029(n)` -/
def P5355765117855003649.Spec : Prop :=
  ∀ n, P5355765117855003649.a n = A059076 n

end A059076

/-! ## A059076.P15131632823989385725

`A000031(n)-(A115119(n)+A001371(n))`
-/

namespace A059076.P15131632823989385725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n - (A115119 n + A001371 n)

end

end A059076.P15131632823989385725

namespace A059076

/-- `A000031(n)-(A115119(n)+A001371(n))` -/
def P15131632823989385725.Spec : Prop :=
  ∀ n, P15131632823989385725.a n = A059076 n

end A059076

/-! ## A059076.P673329912148275315

`(A000016(n)+A000013(n))%A000029(n)`
-/

namespace A059076.P673329912148275315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000016 n + A000013 n) (A000029 n)

end

end A059076.P673329912148275315

namespace A059076

/-- `(A000016(n)+A000013(n))%A000029(n)` -/
def P673329912148275315.Spec : Prop :=
  ∀ n, P673329912148275315.a n = A059076 n

end A059076

/-! ## A059076.P6331570434219900696

`A020639(A209211(n+1))+A052823(n)-A000029(n)`
-/

namespace A059076.P6331570434219900696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A209211 (n + 1)).toNat + (A052823 n - A000029 n)

end

end A059076.P6331570434219900696

namespace A059076

/-- `A020639(A209211(n+1))+A052823(n)-A000029(n)` -/
def P6331570434219900696.Spec : Prop :=
  ∀ n, P6331570434219900696.a n = A059076 n

end A059076

/-! ## A059076.P8593437711920228381

`A020639(A007782(n))+A052823(n)-A000029(n)`
-/

namespace A059076.P8593437711920228381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A007782 n).toNat + (A052823 n - A000029 n)

end

end A059076.P8593437711920228381

namespace A059076

/-- `A020639(A007782(n))+A052823(n)-A000029(n)` -/
def P8593437711920228381.Spec : Prop :=
  ∀ n, P8593437711920228381.a n = A059076 n

end A059076

/-! ## A059076.P14201564142342797662

`A052823(n)+A020639(A136028(n))-A000029(n)`
-/

namespace A059076.P14201564142342797662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052823 n + (A020639 (A136028 n).toNat - A000029 n)

end

end A059076.P14201564142342797662

namespace A059076

/-- `A052823(n)+A020639(A136028(n))-A000029(n)` -/
def P14201564142342797662.Spec : Prop :=
  ∀ n, P14201564142342797662.a n = A059076 n

end A059076

/-! ## A059076.P8223389992279400030

`A305541(∑[n-1]+3)`
-/

namespace A059076.P8223389992279400030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305541 (∑ j ∈ Finset.range (n + 1), f1 j + 3).toNat

end

end A059076.P8223389992279400030

namespace A059076

/-- `A305541(∑[n-1]+3)` -/
def P8223389992279400030.Spec : Prop :=
  ∀ n, P8223389992279400030.a n = A059076 n

end A059076

/-!
# A059077: Numbers k such that 2*7^k - 3 is prime.

The programs for A059077, there is no canonical definition to state claims against.
-/

/-! ## A059077.P8672412861722639753

`∑[A049902(n+1)^A005086(A339401(n))]`
-/

namespace A059077.P8672412861722639753
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049902 (n + 1) : ℚ) ^ (A005086 (A339401 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059077.P8672412861722639753

/-!
# A059078: Number of orientable necklaces with 2n beads and two colors which when turned over produce their own color complement.

The programs for A059078, the canonical program `A059078.P12967757561561579669` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059078 has offset 0).

The definition of A059078 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059053, A059076, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A059078.P12967757561561579669

`A059076(2*n)-2*A059053(2*n)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A059078

/-- `A059076(2*n)-2*A059053(2*n)` -/
def P12967757561561579669.Spec : Prop :=
  ∀ n, P12967757561561579669.a n = A059078 n

theorem P12967757561561579669.correct : P12967757561561579669.Spec := by
  intro n
  simp only [A059078]

end A059078

/-! ## A059078.P9227552389562653015

`(A011782(n)-A000013(n))/2`
-/

namespace A059078.P9227552389562653015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n - A000013 n : ℚ) / 2

end

end A059078.P9227552389562653015

namespace A059078

/-- `(A011782(n)-A000013(n))/2` -/
def P9227552389562653015.Spec : Prop :=
  ∀ n, P9227552389562653015.a n = (A059078 n : ℚ)

end A059078

/-! ## A059078.P9330727686619265227

`(A045678(n)-A045677(n))/2`
-/

namespace A059078.P9330727686619265227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A045678 n - A045677 n : ℚ) / 2

end

end A059078.P9330727686619265227

namespace A059078

/-- `(A045678(n)-A045677(n))/2` -/
def P9330727686619265227.Spec : Prop :=
  ∀ n, P9330727686619265227.a n = (A059078 n : ℚ)

end A059078

/-! ## A059078.P15047086403963335809

`Δ[A290075(n+2)]-A000011(n)`
-/

namespace A059078.P15047086403963335809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290075 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000011 n

end

end A059078.P15047086403963335809

namespace A059078

/-- `Δ[A290075(n+2)]-A000011(n)` -/
def P15047086403963335809.Spec : Prop :=
  ∀ n, P15047086403963335809.a n = A059078 n

end A059078

/-! ## A059078.P6896111547017122475

`(∑[A034008(n)]-A000013(n))/2`
-/

namespace A059078.P6896111547017122475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A000013 n : ℤ) : ℚ) / 2

end

end A059078.P6896111547017122475

namespace A059078

/-- `(∑[A034008(n)]-A000013(n))/2` -/
def P6896111547017122475.Spec : Prop :=
  ∀ n, P6896111547017122475.a n = (A059078 n : ℚ)

end A059078

/-! ## A059078.P9293672549349065282

`A216957(n+1)/2-A000013(n)`
-/

namespace A059078.P9293672549349065282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216957 (n + 1) : ℚ) / 2 - (A000013 n : ℚ)

end

end A059078.P9293672549349065282

namespace A059078

/-- `A216957(n+1)/2-A000013(n)` -/
def P9293672549349065282.Spec : Prop :=
  ∀ n, P9293672549349065282.a n = (A059078 n : ℚ)

end A059078

/-! ## A059078.P6732761119760332732

`A011782(n)-A216957(n+1)/2`
-/

namespace A059078.P6732761119760332732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011782 n : ℚ) - (A216957 (n + 1) : ℚ) / 2

end

end A059078.P6732761119760332732

namespace A059078

/-- `A011782(n)-A216957(n+1)/2` -/
def P6732761119760332732.Spec : Prop :=
  ∀ n, P6732761119760332732.a n = (A059078 n : ℚ)

end A059078

/-! ## A059078.P12868480726706490965

`A006080(n+1)-A045629(n)`
-/

namespace A059078.P12868480726706490965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006080 (n + 1) - A045629 n

end

end A059078.P12868480726706490965

namespace A059078

/-- `A006080(n+1)-A045629(n)` -/
def P12868480726706490965.Spec : Prop :=
  ∀ n, P12868480726706490965.a n = A059078 n

end A059078

/-!
# A059081: Number of 5-element T_0-antichains on a labeled n-set, n=0,..,32.

The programs for A059081, there is no canonical definition to state claims against.
-/

/-! ## A059081.P13994107562267902878

`A261557(5^C(n, 4))`
-/

namespace A059081.P13994107562267902878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261557 (5 ^ Nat.choose n 4)

end

end A059081.P13994107562267902878

/-! ## A059081.P4317703684207766614

`A388724(A370585(n²))`
-/

namespace A059081.P4317703684207766614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388724 (A370585 (n ^ 2)).toNat

end

end A059081.P4317703684207766614

/-!
# A059082: Number of 6-element T_0-antichains on a labeled n-set, n = 0, ..., 64.

The programs for A059082, there is no canonical definition to state claims against.
-/

/-! ## A059082.P6049339782629101320

`∑[A039943(C(n, 4))²]`
-/

namespace A059082.P6049339782629101320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039943 (Nat.choose n 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A059082.P6049339782629101320

/-! ## A059082.P1283391678864875349

`A344760(C(ceil(2^(n-1)), 8))`
-/

namespace A059082.P1283391678864875349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344760 (Nat.choose ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat 8)

end

end A059082.P1283391678864875349

/-!
# A059085: Number of labeled n-node T_0-hypergraphs without multiple hyperedges (empty hyperedge included).

The programs for A059085, there is no canonical definition to state claims against.
-/

/-! ## A059085.P5062449830090991632

`2*A059088(n)`
-/

namespace A059085.P5062449830090991632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059088 n

end

end A059085.P5062449830090991632

/-! ## A059085.P8349196950174420510

`A059088(A007095(n))+A059088(n)`
-/

namespace A059085.P8349196950174420510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059088 (A007095 n).toNat + A059088 n

end

end A059085.P8349196950174420510

/-! ## A059085.P14872719725602225205

`A059088(n)+A059088(A062399(n))`
-/

namespace A059085.P14872719725602225205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059088 n + A059088 (A062399 n).toNat

end

end A059085.P14872719725602225205

/-! ## A059085.P4714617062336957709

`A059088(A004916(n+1))+A059088(n)`
-/

namespace A059085.P4714617062336957709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059088 (A004916 (n + 1)).toNat + A059088 n

end

end A059085.P4714617062336957709

/-!
# A059088: Number of labeled n-node T_0-hypergraphs without multiple hyperedges (empty hyperedge excluded).

The programs for A059088, there is no canonical definition to state claims against.
-/

/-! ## A059088.P9527552072649211675

`A059085(n)/2`
-/

namespace A059088.P9527552072649211675
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059085 n : ℚ) / 2

end

end A059088.P9527552072649211675

/-!
# A059089: Number of labeled T_0-hypergraphs with n distinct hyperedges (empty hyperedge excluded).

The programs for A059089, there is no canonical definition to state claims against.
-/

/-! ## A059089.P16576071344410144042

`A059086(n)-a(n-1)` with `a(0)=2`
-/

namespace A059089.P16576071344410144042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A059086 n - a (n - 1)

end

end A059089.P16576071344410144042

/-!
# A059094: Numbers whose sum of digits is a cube.

The programs for A059094, there is no canonical definition to state claims against.
-/

/-! ## A059094.P16469977864535409101

`∪[A052222(n+1), A236751(n+1)]`
-/

namespace A059094.P16469977864535409101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059094.P16469977864535409101

/-! ## A059094.P11999846534852945494

`eq[1, A055401(A007953(n))]`
-/

namespace A059094.P11999846534852945494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059094.P11999846534852945494

/-! ## A059094.P1443980362362301047

`eq[1, A055401(A118881(n))]`
-/

namespace A059094.P1443980362362301047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059094.P1443980362362301047

/-! ## A059094.P4952928612479010118

`eq[1, A055400(A118881(n)+1)]`
-/

namespace A059094.P4952928612479010118
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A118881 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059094.P4952928612479010118

/-! ## A059094.P6980389407930523451

`eq[1, A055401(A062028(n)-n)]`
-/

namespace A059094.P6980389407930523451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055401 (A062028 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059094.P6980389407930523451

/-! ## A059094.P6014030009508381231

`record[(n+1)*A010057(A007953(n+1))]`
-/

namespace A059094.P6014030009508381231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010057 (A007953 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A059094.P6014030009508381231

/-! ## A059094.P297955897343095053

`eq[A000038(n), A070923(A007953(n))]`
-/

namespace A059094.P297955897343095053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070923 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059094.P297955897343095053

/-! ## A059094.P1609835507696101677

`eq[A000038(n), A055400(A118881(n))]`
-/

namespace A059094.P1609835507696101677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059094.P1609835507696101677

/-! ## A059094.P12040619352158690474

`eq[1, A055400(A160939(n+1)-n)]`
-/

namespace A059094.P12040619352158690474
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055400 (A160939 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A059094.P12040619352158690474

/-! ## A059094.P7469197916030608134

`eq[A010057(A007953(n)), A054977(n)]`
-/

namespace A059094.P7469197916030608134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A007953 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059094.P7469197916030608134

/-! ## A059094.P14978487843527372838

`lt[A000007(n), A010057(A007953(n))]`
-/

namespace A059094.P14978487843527372838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059094.P14978487843527372838

/-! ## A059094.P3120869647624931607

`lt[A010057(2*n), A010057(A007953(n))]`
-/

namespace A059094.P3120869647624931607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A059094.P3120869647624931607

/-!
# A059095: List consisting of the representation of n in base 3 using digits -1, 0, 1.

The programs for A059095, there is no canonical definition to state claims against.
-/

/-! ## A059095.P7410112743812249804

`A008683(A185265(n))^A007610(A000285(n))`
-/

namespace A059095.P7410112743812249804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008683 (A185265 n).toNat : ℚ) ^ (A007610 (A000285 n).toNat : ℤ)

end

end A059095.P7410112743812249804

/-! ## A059095.P17883774193564666777

`A046978(A118034(n)+xor(n, floor(n/2)))`
-/

namespace A059095.P17883774193564666777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A118034 n + Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋).toNat

end

end A059095.P17883774193564666777

/-! ## A059095.P13132108082918334650

`A046978(A118034(n)+xor(2*n, and(n, -2))/2)`
-/

namespace A059095.P13132108082918334650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (SequenceMachineLib.roundAway ((A118034 n : ℚ) + (Int.xor (2 * n : ℤ) (Int.land (n : ℤ) (-2)) : ℚ) / 2)).toNat

end

end A059095.P13132108082918334650

/-! ## A059095.P17558229877894866378

`A046978(A118034(n)+ceil(xor(n-1, 2*n)/2))`
-/

namespace A059095.P17558229877894866378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A118034 n + ⌈(Int.xor ((n : ℤ) - 1) (2 * n : ℤ) : ℚ) / 2⌉).toNat

end

end A059095.P17558229877894866378

/-! ## A059095.P14970530517374768386

`A046978(A118034(n)+round(xor(2*n+1, n+1)/2))`
-/

namespace A059095.P14970530517374768386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046978 (A118034 n + SequenceMachineLib.roundAway ((Nat.xor (2 * n + 1) (n + 1) : ℚ) / 2)).toNat

end

end A059095.P14970530517374768386

/-!
# A059096: Numbers k such that 405*k^8 + 108*k^6 + 27*k^4 + 6*k^2 + 1 is prime.

The programs for A059096, there is no canonical definition to state claims against.
-/

/-! ## A059096.P4294503455585966744

`A157725(n)-A002321(A052301(n+1))`
-/

namespace A059096.P4294503455585966744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 n - A002321 (A052301 (n + 1)).toNat

end

end A059096.P4294503455585966744

/-! ## A059096.P4861612297789913935

`A267700(n)+A125693(A185264(3*n+2))`
-/

namespace A059096.P4861612297789913935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267700 n + A125693 (A185264 (3 * n + 2)).toNat

end

end A059096.P4861612297789913935

/-!
# A059097: Numbers k such that the binomial coefficient C(2k,k) is not divisible by the square of an odd prime.

The programs for A059097, there is no canonical definition to state claims against.
-/

/-! ## A059097.P17522908275097775371

`lt[A110493(n), 3]`
-/

namespace A059097.P17522908275097775371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110493 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A059097.P17522908275097775371

/-! ## A059097.P16173454536796650939

`∪[A155180(n+1), record[A239622(n)]]`
-/

namespace A059097.P16173454536796650939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155180 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239622 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A059097.P16173454536796650939

/-! ## A059097.P295344946693186680

`eq[4, lcm(4, A056043(A004275(n+1)))]`
-/

namespace A059097.P295344946693186680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A056043 (A004275 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059097.P295344946693186680

/-! ## A059097.P1704231079417435661

`eq[A008642(A000120(n)), A292441(n)]`
-/

namespace A059097.P1704231079417435661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 (A000120 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059097.P1704231079417435661

/-! ## A059097.P590073524397843992

`eq[A241898(A001316(n)), A292441(n)]`
-/

namespace A059097.P590073524397843992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241898 (A001316 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292441 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A059097.P590073524397843992

/-!
# A059098: Triangle read by rows. T(n, k) = Sum_{i=0..n} Stirling2(n, i)*Product_{j=1..k} (i - j + 1) for 0 <= k <= n.

The programs for A059098, the canonical program `A059098.P1341871741941125375` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A059098 has offset 0).

The definition of A059098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2186 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A059098.P1341871741941125375

`A049020(n)*A233543(n)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A059098

/-- `A049020(n)*A233543(n)` -/
def P1341871741941125375.Spec : Prop :=
  ∀ n, P1341871741941125375.a n = A059098 n

theorem P1341871741941125375.correct : P1341871741941125375.Spec := by
  intro n
  simp only [A059098]

end A059098

/-! ## A059098.P4143867824958308617

`A002262(n)!*A049020(n)`
-/

namespace A059098.P4143867824958308617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * A049020 n

end

end A059098.P4143867824958308617

namespace A059098

/-- `A002262(n)!*A049020(n)` -/
def P4143867824958308617.Spec : Prop :=
  ∀ n, P4143867824958308617.a n = A059098 n

end A059098

/-! ## A059098.P15393756432307473751

`A144328(n+1)!*A049020(n)`
-/

namespace A059098.P15393756432307473751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A144328 (n + 1)).toNat : ℤ) * A049020 n

end

end A059098.P15393756432307473751

namespace A059098

/-- `A144328(n+1)!*A049020(n)` -/
def P15393756432307473751.Spec : Prop :=
  ∀ n, P15393756432307473751.a n = A059098 n

end A059098

/-! ## A059098.P12506310447278454006

`∑{e}[A059268(n), #]!*A049020(n)`
-/

namespace A059098.P12506310447278454006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) : ℤ) * A049020 n

end

end A059098.P12506310447278454006

namespace A059098

/-- `∑{e}[A059268(n), #]!*A049020(n)` -/
def P12506310447278454006.Spec : Prop :=
  ∀ n, P12506310447278454006.a n = A059098 n

end A059098

/-! ## A059098.P16915370506299430683

`A049020(n)*A112624(A059268(n))`
-/

namespace A059098.P16915370506299430683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049020 n * A112624 (A059268 n).toNat

end

end A059098.P16915370506299430683

namespace A059098

/-- `A049020(n)*A112624(A059268(n))` -/
def P16915370506299430683.Spec : Prop :=
  ∀ n, P16915370506299430683.a n = A059098 n

end A059098

/-!
# A059099: Expansion of exp(exp(x)-1)/(2-exp(x)).

The programs for A059099, there is no canonical definition to state claims against.
-/

/-! ## A059099.P4952790660683889925

`A331797(n)+A000110(n)`
-/

namespace A059099.P4952790660683889925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331797 n + A000110 n

end

end A059099.P4952790660683889925

/-! ## A059099.P4403415118099251499

`A331797(n)+abs(A292935(n))`
-/

namespace A059099.P4403415118099251499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331797 n + |A292935 n|

end

end A059099.P4403415118099251499

/-! ## A059099.P11856671085285105310

`A331797(n)+Δ[A005001(n)]`
-/

namespace A059099.P11856671085285105310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331797 n + (f1 (n + 1) - f1 n)

end

end A059099.P11856671085285105310

/-! ## A059099.P11981127007769041134

`A331797(n)+A011971(A000217(n))`
-/

namespace A059099.P11981127007769041134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331797 n + A011971 (A000217 n).toNat

end

end A059099.P11981127007769041134

/-! ## A059099.P305112650133237842

`A331797(n)+A121207(A000096(n))`
-/

namespace A059099.P305112650133237842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331797 n + A121207 (A000096 n).toNat

end

end A059099.P305112650133237842

