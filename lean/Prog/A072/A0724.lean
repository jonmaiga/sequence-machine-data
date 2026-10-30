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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B000.C044
import Seq.B000.C046
import Seq.B000.C048
import Seq.B000.C049
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
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A072400: (Factors of 4 removed from n) modulo 8.

The programs for A072400, the canonical program `A072400.P6107365061276263182` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072400 has offset 1).

The definition of A072400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072400.P6107365061276263182

`A065883(n+1)%8`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072400

/-- `A065883(n+1)%8` -/
def P6107365061276263182.Spec : Prop :=
  ∀ n, P6107365061276263182.a n = A072400 (n + 1)

theorem P6107365061276263182.correct : P6107365061276263182.Spec := by
  intro n
  simp only [A072400, Nat.add_sub_cancel]

end A072400

/-! ## A072400.P8107173526615935640

`((n+1)/4^val(n+1, 4))%8`
-/

namespace A072400.P8107173526615935640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))) 8

end

end A072400.P8107173526615935640

namespace A072400

/-- `((n+1)/4^val(n+1, 4))%8` -/
def P8107173526615935640.Spec : Prop :=
  ∀ n, P8107173526615935640.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P13477925474262574438

`and(7, (n+1)/4^val(n+1, 4))`
-/

namespace A072400.P13477925474262574438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ)))

end

end A072400.P13477925474262574438

namespace A072400

/-- `and(7, (n+1)/4^val(n+1, 4))` -/
def P13477925474262574438.Spec : Prop :=
  ∀ n, P13477925474262574438.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P15472481152167250602

`Δ[A069891(n)]%8`
-/

namespace A072400.P15472481152167250602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) 8

end

end A072400.P15472481152167250602

namespace A072400

/-- `Δ[A069891(n)]%8` -/
def P15472481152167250602.Spec : Prop :=
  ∀ n, P15472481152167250602.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P774885659569176426

`A007913(n+1)%8`
-/

namespace A072400.P774885659569176426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007913 (n + 1)) 8

end

end A072400.P774885659569176426

namespace A072400

/-- `A007913(n+1)%8` -/
def P774885659569176426.Spec : Prop :=
  ∀ n, P774885659569176426.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P11894451093574243671

`(n+1-A326128(n+1))%8`
-/

namespace A072400.P11894451093574243671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 1 : ℤ) - A326128 (n + 1)) 8

end

end A072400.P11894451093574243671

namespace A072400

/-- `(n+1-A326128(n+1))%8` -/
def P11894451093574243671.Spec : Prop :=
  ∀ n, P11894451093574243671.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P9127775417170738245

`((n+1)/A000188(n+1)²)%8`
-/

namespace A072400.P9127775417170738245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A000188 (n + 1) ^ 2 : ℚ))) 8

end

end A072400.P9127775417170738245

namespace A072400

/-- `((n+1)/A000188(n+1)²)%8` -/
def P9127775417170738245.Spec : Prop :=
  ∀ n, P9127775417170738245.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P3644656949582712750

`A010877(A007913(n+1))`
-/

namespace A072400.P3644656949582712750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A007913 (n + 1)).toNat

end

end A072400.P3644656949582712750

namespace A072400

/-- `A010877(A007913(n+1))` -/
def P3644656949582712750.Spec : Prop :=
  ∀ n, P3644656949582712750.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P9383125673457692609

`A010877(A065883(n+1))`
-/

namespace A072400.P9383125673457692609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010877 (A065883 (n + 1)).toNat

end

end A072400.P9383125673457692609

namespace A072400

/-- `A010877(A065883(n+1))` -/
def P9383125673457692609.Spec : Prop :=
  ∀ n, P9383125673457692609.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P11629331072364864619

`and(7, A007913(A000027(n+1)))`
-/

namespace A072400.P11629331072364864619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (A007913 (A000027 (n + 1)).toNat)

end

end A072400.P11629331072364864619

namespace A072400

/-- `and(7, A007913(A000027(n+1)))` -/
def P11629331072364864619.Spec : Prop :=
  ∀ n, P11629331072364864619.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P2744067122057037150

`(A000203(n+1)-A326126(n+1))%8`
-/

namespace A072400.P2744067122057037150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (n + 1) - A326126 (n + 1)) 8

end

end A072400.P2744067122057037150

namespace A072400

/-- `(A000203(n+1)-A326126(n+1))%8` -/
def P2744067122057037150.Spec : Prop :=
  ∀ n, P2744067122057037150.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P16761646206937860303

`(A039653(n+1)+1-A326126(n+1))%8`
-/

namespace A072400.P16761646206937860303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039653 (n + 1) + 1 - A326126 (n + 1)) 8

end

end A072400.P16761646206937860303

namespace A072400

/-- `(A039653(n+1)+1-A326126(n+1))%8` -/
def P16761646206937860303.Spec : Prop :=
  ∀ n, P16761646206937860303.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P673782743336483234

`(A285309(n+1)+A035316(n+1)-A326126(n+1))%8`
-/

namespace A072400.P673782743336483234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A285309 (n + 1) + A035316 (n + 1) - A326126 (n + 1)) 8

end

end A072400.P673782743336483234

namespace A072400

/-- `(A285309(n+1)+A035316(n+1)-A326126(n+1))%8` -/
def P673782743336483234.Spec : Prop :=
  ∀ n, P673782743336483234.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P10408741066741224300

`(A007503(n+1)-A062249(n+1)+n+1-A326126(n+1))%8`
-/

namespace A072400.P10408741066741224300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007503 (n + 1) - A062249 (n + 1) + (n + 1 : ℤ) - A326126 (n + 1)) 8

end

end A072400.P10408741066741224300

namespace A072400

/-- `(A007503(n+1)-A062249(n+1)+n+1-A326126(n+1))%8` -/
def P10408741066741224300.Spec : Prop :=
  ∀ n, P10408741066741224300.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P14002319727463181089

`A117811(2*n+1)%8`
-/

namespace A072400.P14002319727463181089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117811 (2 * n + 1)) 8

end

end A072400.P14002319727463181089

namespace A072400

/-- `A117811(2*n+1)%8` -/
def P14002319727463181089.Spec : Prop :=
  ∀ n, P14002319727463181089.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P9204529954572974687

`A364900(2*n+1)%8`
-/

namespace A072400.P9204529954572974687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A364900 (2 * n + 1)) 8

end

end A072400.P9204529954572974687

namespace A072400

/-- `A364900(2*n+1)%8` -/
def P9204529954572974687.Spec : Prop :=
  ∀ n, P9204529954572974687.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P13044342305330718577

`A030103(A030103(n+1))%8`
-/

namespace A072400.P13044342305330718577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030103 (A030103 (n + 1)).toNat) 8

end

end A072400.P13044342305330718577

namespace A072400

/-- `A030103(A030103(n+1))%8` -/
def P13044342305330718577.Spec : Prop :=
  ∀ n, P13044342305330718577.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P1657456690531878304

`((n+1)/∑{#}[n, floor((#+1)²/(n+1))-floor(((#+1)²-1)/(n+1))]²)%8`
-/

namespace A072400.P1657456690531878304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (((∑ k ∈ Finset.range (f1 n + 1), (⌊((k + 1) ^ 2 : ℚ) / (n + 1 : ℚ)⌋ - ⌊(((k + 1) ^ 2 : ℤ) - 1 : ℚ) / (n + 1 : ℚ)⌋)) ^ 2 : ℤ) : ℚ))) 8

end

end A072400.P1657456690531878304

namespace A072400

/-- `((n+1)/∑{#}[n, floor((#+1)²/(n+1))-floor(((#+1)²-1)/(n+1))]²)%8` -/
def P1657456690531878304.Spec : Prop :=
  ∀ n, P1657456690531878304.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P1697900330762372847

`and(7, (n+1)/∑{#}[n, floor((#+1)²/(n+1))-floor(((#+1)²-1)/(n+1))]²)`
-/

namespace A072400.P1697900330762372847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (((∑ k ∈ Finset.range (f1 n + 1), (⌊((k + 1) ^ 2 : ℚ) / (n + 1 : ℚ)⌋ - ⌊(((k + 1) ^ 2 : ℤ) - 1 : ℚ) / (n + 1 : ℚ)⌋)) ^ 2 : ℤ) : ℚ)))

end

end A072400.P1697900330762372847

namespace A072400

/-- `and(7, (n+1)/∑{#}[n, floor((#+1)²/(n+1))-floor(((#+1)²-1)/(n+1))]²)` -/
def P1697900330762372847.Spec : Prop :=
  ∀ n, P1697900330762372847.a n = A072400 (n + 1)

end A072400

/-! ## A072400.P14934978400474709491

`and(A007913(n+1), A147596(n+1))`
-/

namespace A072400.P14934978400474709491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007913 (n + 1)) (A147596 (n + 1))

end

end A072400.P14934978400474709491

namespace A072400

/-- `and(A007913(n+1), A147596(n+1))` -/
def P14934978400474709491.Spec : Prop :=
  ∀ n, P14934978400474709491.a n = A072400 (n + 1)

end A072400

/-!
# A072401: 1 iff n is of the form 4^m*(8k+7).

The programs for A072401, there is no canonical definition to state claims against.
-/

/-! ## A072401.P16675654191687713611

`A057427(A064873(n))`
-/

namespace A072401.P16675654191687713611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A064873 n).toNat

end

end A072401.P16675654191687713611

/-! ## A072401.P8067972076739882685

`1-A071374(n)`
-/

namespace A072401.P8067972076739882685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A071374 n

end

end A072401.P8067972076739882685

/-! ## A072401.P13259324179635170558

`C(A002828(n), 4)`
-/

namespace A072401.P13259324179635170558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A002828 n).toNat 4

end

end A072401.P13259324179635170558

/-! ## A072401.P3019051127706542333

`char[A004215(n+1)]`
-/

namespace A072401.P3019051127706542333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A072401.P3019051127706542333

/-! ## A072401.P8133772244524785190

`char[lt[A387658(n), 1]]`
-/

namespace A072401.P8133772244524785190
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387658 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = n then 1 else 0

end

end A072401.P8133772244524785190

/-! ## A072401.P13314150915738634597

`C(T(n-1,k+1), A005875(n))` with `a(0)=0`
-/

namespace A072401.P13314150915738634597
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.choose (SequenceMachineLib.triUpRight a n) (A005875 n).toNat

end

end A072401.P13314150915738634597

/-! ## A072401.P16170800835092670769

`C(2, A000164(n)+2)`
-/

namespace A072401.P16170800835092670769
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A000164 n + 2).toNat

end

end A072401.P16170800835092670769

/-! ## A072401.P1642111328326890737

`C(2, A002102(n)+2)`
-/

namespace A072401.P1642111328326890737
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A002102 n + 2).toNat

end

end A072401.P1642111328326890737

/-! ## A072401.P15705050183272553958

`1-char[A000378(n+1)]`
-/

namespace A072401.P15705050183272553958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000378 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072401.P15705050183272553958

/-! ## A072401.P7840593041179462759

`A000007(A000164(n))`
-/

namespace A072401.P7840593041179462759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A000164 n).toNat

end

end A072401.P7840593041179462759

/-! ## A072401.P16378168192424040656

`A000007(A002102(n))`
-/

namespace A072401.P16378168192424040656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A002102 n).toNat

end

end A072401.P16378168192424040656

/-! ## A072401.P16614320586361209727

`A000007(A005875(n))`
-/

namespace A072401.P16614320586361209727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A005875 n).toNat

end

end A072401.P16614320586361209727

/-! ## A072401.P6694853597289766309

`A000007(A246631(n))`
-/

namespace A072401.P6694853597289766309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A246631 n).toNat

end

end A072401.P6694853597289766309

/-! ## A072401.P6648938824309166569

`A000007(A283273(n))`
-/

namespace A072401.P6648938824309166569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A283273 n).toNat

end

end A072401.P6648938824309166569

/-! ## A072401.P2103182993979382870

`A038189(A262678(n))`
-/

namespace A072401.P2103182993979382870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038189 (A262678 n).toNat

end

end A072401.P2103182993979382870

/-! ## A072401.P5343647705765874395

`A000007(A387658(n))`
-/

namespace A072401.P5343647705765874395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A387658 n).toNat

end

end A072401.P5343647705765874395

/-! ## A072401.P6557268138781810410

`A002828(A064873(n)²)`
-/

namespace A072401.P6557268138781810410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A064873 n ^ 2).toNat

end

end A072401.P6557268138781810410

/-! ## A072401.P15309841002799736415

`A168046(A064873(n)²)`
-/

namespace A072401.P15309841002799736415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A064873 n ^ 2).toNat

end

end A072401.P15309841002799736415

/-! ## A072401.P10328461936077693307

`A157928(A064873(n)+1)`
-/

namespace A072401.P10328461936077693307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 (A064873 n + 1).toNat

end

end A072401.P10328461936077693307

/-! ## A072401.P6080451093553102451

`A000007(A014455(2*n))`
-/

namespace A072401.P6080451093553102451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A014455 (2 * n)).toNat

end

end A072401.P6080451093553102451

/-!
# A072403: Numerator of the Reingold-Tarjan sequence, denominator=A072404.

The programs for A072403, the canonical program `A072403.P5671364084038198275` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072403 has offset 1).

The definition of A072403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4096 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072403.P5671364084038198275

`A038502(∑[∏{p}[2*n, n*val(#², 2)]]-n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072403

/-- `A038502(∑[∏{p}[2*n, n*val(#², 2)]]-n)` -/
def P5671364084038198275.Spec : Prop :=
  ∀ n, P5671364084038198275.a n = A072403 (n + 1)

theorem P5671364084038198275.correct : P5671364084038198275.Spec := by
  intro n
  simp only [A072403, Nat.add_sub_cancel]

end A072403

/-! ## A072403.P6618791335082869941

`A038502(A010078(n+1))`
-/

namespace A072403.P6618791335082869941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A010078 (n + 1)).toNat

end

end A072403.P6618791335082869941

namespace A072403

/-- `A038502(A010078(n+1))` -/
def P6618791335082869941.Spec : Prop :=
  ∀ n, P6618791335082869941.a n = A072403 (n + 1)

end A072403

/-! ## A072403.P17764382695908040528

`A038502(A035327(2*n)+n)`
-/

namespace A072403.P17764382695908040528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A035327 (2 * n) + (n : ℤ)).toNat

end

end A072403.P17764382695908040528

namespace A072403

/-- `A038502(A035327(2*n)+n)` -/
def P17764382695908040528.Spec : Prop :=
  ∀ n, P17764382695908040528.a n = A072403 (n + 1)

end A072403

/-! ## A072403.P10263158622502531677

`A038502(A142151(2*n)-n+1)`
-/

namespace A072403.P10263158622502531677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (A142151 (2 * n) - (n : ℤ) + 1).toNat

end

end A072403.P10263158622502531677

namespace A072403

/-- `A038502(A142151(2*n)-n+1)` -/
def P10263158622502531677.Spec : Prop :=
  ∀ n, P10263158622502531677.a n = A072403 (n + 1)

end A072403

/-! ## A072403.P9816895407885698280

`A038502(xor(2*n+1, A279645(2*n+1)))`
-/

namespace A072403.P9816895407885698280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (Int.xor (2 * n + 1 : ℤ) (A279645 (2 * n + 1))).toNat

end

end A072403.P9816895407885698280

namespace A072403

/-- `A038502(xor(2*n+1, A279645(2*n+1)))` -/
def P9816895407885698280.Spec : Prop :=
  ∀ n, P9816895407885698280.a n = A072403 (n + 1)

end A072403

/-!
# A072404: Denominator of the Reingold-Tarjan sequence, numerator=A072403.

The programs for A072404, there is no canonical definition to state claims against.
-/

/-! ## A072404.P16808118711726436688

`A165824(or(A000579(n), A052534(n)))`
-/

namespace A072404.P16808118711726436688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165824 (Int.lor (A000579 n) (A052534 n)).toNat

end

end A072404.P16808118711726436688

/-! ## A072404.P6195267479407433221

`A169697(A151907(n)+A079314(n))`
-/

namespace A072404.P6195267479407433221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169697 (A151907 n + A079314 n).toNat

end

end A072404.P6195267479407433221

/-! ## A072404.P9541811987249179983

`A153284(A077446(n+1))^A374684(n)`
-/

namespace A072404.P9541811987249179983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A153284 (A077446 (n + 1)).toNat : ℚ) ^ (A374684 n : ℤ)

end

end A072404.P9541811987249179983

/-! ## A072404.P4361966679313074791

`A326702(A005106(n+1))^A374684(n)`
-/

namespace A072404.P4361966679313074791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326702 (A005106 (n + 1)).toNat : ℚ) ^ (A374684 n : ℤ)

end

end A072404.P4361966679313074791

/-! ## A072404.P18134772892863617134

`A165096(A003358(n+5))^A374684(n)`
-/

namespace A072404.P18134772892863617134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165096 (A003358 (n + 5)).toNat : ℚ) ^ (A374684 n : ℤ)

end

end A072404.P18134772892863617134

/-!
# A072405: Triangle T(n, k) = C(n,k) - C(n-2,k-1) for n >= 3 and T(n, k) = 1 otherwise, read by rows.

The programs for A072405, the canonical program `A072405.P2649620501641644678` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072405 has offset 0).

The definition of A072405 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072405.P2649620501641644678

`T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A072405

/-- `T(n-1,k-1)+T(n-1,k)` -/
def P2649620501641644678.Spec : Prop :=
  ∀ n, (P2649620501641644678.a n : ℤ) = A072405 n

theorem P2649620501641644678.correct : P2649620501641644678.Spec := by
  intro n
  simp only [A072405]

end A072405

/-! ## A072405.P7203589029140668565

`T(n-1,k)+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1`
-/

namespace A072405.P7203589029140668565
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUpLeft a n

end

end A072405.P7203589029140668565

namespace A072405

/-- `T(n-1,k)+T(n-1,k-1)` -/
def P7203589029140668565.Spec : Prop :=
  ∀ n, (P7203589029140668565.a n : ℤ) = A072405 n

end A072405

/-! ## A072405.P13451216957335715144

`T(row(n)-2, col(n)-2)+T(n-2,k-1)+T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=1, a(6)=1, a(7)=2, a(8)=2`
-/

namespace A072405.P13451216957335715144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 1, 1, 1, 2, 2] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2) + SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUp a n

end

end A072405.P13451216957335715144

namespace A072405

/-- `T(row(n)-2, col(n)-2)+T(n-2,k-1)+T(n-1,k)` -/
def P13451216957335715144.Spec : Prop :=
  ∀ n, (P13451216957335715144.a n : ℤ) = A072405 n

end A072405

/-! ## A072405.P7982870211538293422

`A130716(n)+A122218(n)`
-/

namespace A072405.P7982870211538293422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130716 n + A122218 n

end

end A072405.P7982870211538293422

namespace A072405

/-- `A130716(n)+A122218(n)` -/
def P7982870211538293422.Spec : Prop :=
  ∀ n, P7982870211538293422.a n = A072405 n

theorem P7982870211538293422.correct : P7982870211538293422.Spec := by
  intro n
  simp only [A072405, Nat.add_sub_cancel, A072405.P7982870211538293422.a, A072405.P2649620501641644678.a, A122218, A122218.P3700712301954717953.a, A130716, A130716.P13605837186844265742.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072405

/-! ## A072405.P12372373564534648849

`A028326(n)-A028262(n)`
-/

namespace A072405.P12372373564534648849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 n - A028262 n

end

end A072405.P12372373564534648849

namespace A072405

/-- `A028326(n)-A028262(n)` -/
def P12372373564534648849.Spec : Prop :=
  ∀ n, P12372373564534648849.a n = A072405 n

end A072405

/-! ## A072405.P4681644682062719372

`A007318(n)+1-A323211(n)`
-/

namespace A072405.P4681644682062719372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (1 - A323211 n)

end

end A072405.P4681644682062719372

namespace A072405

/-- `A007318(n)+1-A323211(n)` -/
def P4681644682062719372.Spec : Prop :=
  ∀ n, P4681644682062719372.a n = A072405 n

end A072405

/-! ## A072405.P18134578812917666993

`A014473(n)+2-A323211(n)`
-/

namespace A072405.P18134578812917666993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + (2 - A323211 n)

end

end A072405.P18134578812917666993

namespace A072405

/-- `A014473(n)+2-A323211(n)` -/
def P18134578812917666993.Spec : Prop :=
  ∀ n, P18134578812917666993.a n = A072405 n

end A072405

/-! ## A072405.P1615053553397566064

`2*A007318(n)-A028262(n)`
-/

namespace A072405.P1615053553397566064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007318 n - A028262 n

end

end A072405.P1615053553397566064

namespace A072405

/-- `2*A007318(n)-A028262(n)` -/
def P1615053553397566064.Spec : Prop :=
  ∀ n, P1615053553397566064.a n = A072405 n

end A072405

/-! ## A072405.P1578928971722502551

`2*A028262(n)-A028313(n)`
-/

namespace A072405.P1578928971722502551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028262 n - A028313 n

end

end A072405.P1578928971722502551

namespace A072405

/-- `2*A028262(n)-A028313(n)` -/
def P1578928971722502551.Spec : Prop :=
  ∀ n, P1578928971722502551.a n = A072405 n

end A072405

/-! ## A072405.P13002438855294681777

`(A087698(n)+A007318(n))/2`
-/

namespace A072405.P13002438855294681777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A087698 n + A007318 n : ℚ) / 2

end

end A072405.P13002438855294681777

namespace A072405

/-- `(A087698(n)+A007318(n))/2` -/
def P13002438855294681777.Spec : Prop :=
  ∀ n, P13002438855294681777.a n = (A072405 n : ℚ)

end A072405

/-! ## A072405.P17667225530667203496

`A209561(A271439(n)+A010054(n))`
-/

namespace A072405.P17667225530667203496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (A271439 n + A010054 n).toNat

end

end A072405.P17667225530667203496

namespace A072405

/-- `A209561(A271439(n)+A010054(n))` -/
def P17667225530667203496.Spec : Prop :=
  ∀ n, P17667225530667203496.a n = A072405 n

end A072405

/-! ## A072405.P7917299308342601782

`A209561(A271439(n)+A089799(n))`
-/

namespace A072405.P7917299308342601782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (A271439 n + A089799 n).toNat

end

end A072405.P7917299308342601782

namespace A072405

/-- `A209561(A271439(n)+A089799(n))` -/
def P7917299308342601782.Spec : Prop :=
  ∀ n, P7917299308342601782.a n = A072405 n

end A072405

/-! ## A072405.P1889258344028065004

`A209561(gcd(A010816(n), A083920(n)))`
-/

namespace A072405.P1889258344028065004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (Int.gcd (A010816 n) (A083920 n))

end

end A072405.P1889258344028065004

namespace A072405

/-- `A209561(gcd(A010816(n), A083920(n)))` -/
def P1889258344028065004.Spec : Prop :=
  ∀ n, P1889258344028065004.a n = A072405 n

end A072405

/-! ## A072405.P4390082381730766130

`A209561(or(A010054(n), A271439(n)))`
-/

namespace A072405.P4390082381730766130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209561 (Int.lor (A010054 n) (A271439 n)).toNat

end

end A072405.P4390082381730766130

namespace A072405

/-- `A209561(or(A010054(n), A271439(n)))` -/
def P4390082381730766130.Spec : Prop :=
  ∀ n, P4390082381730766130.a n = A072405 n

end A072405

/-! ## A072405.P17615462918476530025

`A007318(n)-(A028275(n)-A028262(n))`
-/

namespace A072405.P17615462918476530025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - (A028275 n - A028262 n)

end

end A072405.P17615462918476530025

namespace A072405

/-- `A007318(n)-(A028275(n)-A028262(n))` -/
def P17615462918476530025.Spec : Prop :=
  ∀ n, P17615462918476530025.a n = A072405 n

end A072405

/-! ## A072405.P9740263438389994257

`A000007(n)+A007318(n)-A144225(n+1)`
-/

namespace A072405.P9740263438389994257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A007318 n - A144225 (n + 1))

end

end A072405.P9740263438389994257

namespace A072405

/-- `A000007(n)+A007318(n)-A144225(n+1)` -/
def P9740263438389994257.Spec : Prop :=
  ∀ n, P9740263438389994257.a n = A072405 n

end A072405

/-! ## A072405.P4895050529575570478

`A007318(n)+A132044(n)-A173075(n)`
-/

namespace A072405.P4895050529575570478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n + (A132044 n - A173075 n)

end

end A072405.P4895050529575570478

namespace A072405

/-- `A007318(n)+A132044(n)-A173075(n)` -/
def P4895050529575570478.Spec : Prop :=
  ∀ n, P4895050529575570478.a n = A072405 n

end A072405

/-! ## A072405.P2163356862711881272

`A026615(n)%A177227(n)`
-/

namespace A072405.P2163356862711881272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A026615 n) (A177227 n)

end

end A072405.P2163356862711881272

namespace A072405

/-- `A026615(n)%A177227(n)` -/
def P2163356862711881272.Spec : Prop :=
  ∀ n, P2163356862711881272.a n = A072405 n

end A072405

/-! ## A072405.P7160960041144052986

`A028310(A122218(n))`
-/

namespace A072405.P7160960041144052986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A122218 n).toNat

end

end A072405.P7160960041144052986

namespace A072405

/-- `A028310(A122218(n))` -/
def P7160960041144052986.Spec : Prop :=
  ∀ n, P7160960041144052986.a n = A072405 n

end A072405

/-! ## A072405.P9509997506260697166

`A005843(A007318(n))-A028262(n)`
-/

namespace A072405.P9509997506260697166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A007318 n).toNat - A028262 n

end

end A072405.P9509997506260697166

namespace A072405

/-- `A005843(A007318(n))-A028262(n)` -/
def P9509997506260697166.Spec : Prop :=
  ∀ n, P9509997506260697166.a n = A072405 n

end A072405

/-!
# A072406: Number of values of k for which C(n,k)-C(n-2,k-1) is odd.

The programs for A072406, the canonical program `A072406.P4918471637462842481` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072406 has offset 0).

The definition of A072406 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1162 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072406.P4918471637462842481

`A114212(A047621(n+1)%(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A072406

/-- `A114212(A047621(n+1)%(n+1))` -/
def P4918471637462842481.Spec : Prop :=
  ∀ n, P4918471637462842481.a n = A072406 n

theorem P4918471637462842481.correct : P4918471637462842481.Spec := by
  intro n
  simp only [A072406]

end A072406

/-! ## A072406.P6952420876770635196

`A114212(n-2%A195909(n+1))`
-/

namespace A072406.P6952420876770635196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114212 ((n : ℤ) - Int.tmod 2 (A195909 (n + 1))).toNat

end

end A072406.P6952420876770635196

namespace A072406

/-- `A114212(n-2%A195909(n+1))` -/
def P6952420876770635196.Spec : Prop :=
  ∀ n, P6952420876770635196.a n = A072406 n

end A072406

/-!
# A072408: Least number > 1 which equals n-th power of the sum of its digits in decimal base.

The programs for A072408, there is no canonical definition to state claims against.
-/

/-! ## A072408.P18177541222406871813

`A046017(n+1)^(n+1)`
-/

namespace A072408.P18177541222406871813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046017 (n + 1) ^ (n + 1)

end

end A072408.P18177541222406871813

/-! ## A072408.P18387463978079347070

`floor(A076090(n+1)+acot(n))`
-/

namespace A072408.P18387463978079347070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A076090 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A072408.P18387463978079347070

/-! ## A072408.P15678512967941663293

`A076090(n+1)+A000007(n)`
-/

namespace A072408.P15678512967941663293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076090 (n + 1) + A000007 n

end

end A072408.P15678512967941663293

/-! ## A072408.P15210147138191816558

`A076090(n+1)+char[A175165(n)²]`
-/

namespace A072408.P15210147138191816558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175165 n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076090 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072408.P15210147138191816558

/-! ## A072408.P10256123608000519555

`A076090(n+1)+char[A356813(n+4)]`
-/

namespace A072408.P10256123608000519555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356813 (n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076090 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072408.P10256123608000519555

/-!
# A072409: 4th-order digital invariants: the sum of the 4th power of the digits of n equals some number k and the sum of the 4th power of the digits of k equals n.

The programs for A072409, there is no canonical definition to state claims against.
-/

/-! ## A072409.P13650647354353002279

`A113708(A338354(n)+∑[∑{e}[n+1, #]+1])`
-/

namespace A072409.P13650647354353002279
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113708 (A338354 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A072409.P13650647354353002279

/-!
# A072410: Number of iterations of the map k -> A000001(k) needed to reach 1 starting at n, or -1 if no such number exists.

The programs for A072410, there is no canonical definition to state claims against.
-/

/-! ## A072410.P831316378976211032

`(A270120(A000001(n+1))+1)%A348553(A131702(n+1))`
-/

namespace A072410.P831316378976211032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270120 (A000001 (n + 1)).toNat + 1) (A348553 (A131702 (n + 1)).toNat)

end

end A072410.P831316378976211032

/-! ## A072410.P9846146412612172491

`(A270120(A000001(n+1))+1)%A000005(A060546(n))`
-/

namespace A072410.P9846146412612172491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A270120 (A000001 (n + 1)).toNat + 1) (A000005 (A060546 n).toNat)

end

end A072410.P9846146412612172491

/-! ## A072410.P4801930223435359221

`A270120(A000001(n+1))+A057427(10*n²)`
-/

namespace A072410.P4801930223435359221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270120 (A000001 (n + 1)).toNat + A057427 (10 * n ^ 2)

end

end A072410.P4801930223435359221

/-! ## A072410.P305654915097627688

`A057515(A201733(n+1)%A178653(n+1))`
-/

namespace A072410.P305654915097627688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057515 (Int.tmod (A201733 (n + 1)) (A178653 (n + 1))).toNat

end

end A072410.P305654915097627688

/-! ## A072410.P13370463179108635569

`A270120(A005180((n+1)²))+A270120(A000001(n+1))`
-/

namespace A072410.P13370463179108635569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270120 (A005180 ((n + 1) ^ 2)).toNat + A270120 (A000001 (n + 1)).toNat

end

end A072410.P13370463179108635569

/-!
# A072411: LCM of exponents in prime factorization of n, a(1) = 1.

The programs for A072411, there is no canonical definition to state claims against.
-/

/-! ## A072411.P5788925958034614065

`A290103(A181819(n+1))`
-/

namespace A072411.P5788925958034614065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (A181819 (n + 1)).toNat

end

end A072411.P5788925958034614065

/-! ## A072411.P16309498336684899128

`lcm(A067029(n+1), a(A028234(n+1)-1))` with `a(0)=1, a(1)=1`
-/

namespace A072411.P16309498336684899128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  Int.lcm (A067029 (n + 1)) (a (A028234 (n + 1) - 1).toNat : ℤ)

end

end A072411.P16309498336684899128

/-! ## A072411.P11322164868685655226

`A284569(A156552(n+1))`
-/

namespace A072411.P11322164868685655226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 (A156552 (n + 1)).toNat

end

end A072411.P11322164868685655226

/-! ## A072411.P11395703356745166492

`A316431(2*A181819(n+1))`
-/

namespace A072411.P11395703356745166492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * A181819 (n + 1)).toNat

end

end A072411.P11395703356745166492

/-! ## A072411.P11220182673940670111

`A290103(∏{e}[n+1, A000040(#)])`
-/

namespace A072411.P11220182673940670111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290103 (∏ p ∈ Nat.primeFactors (f1 n), A000040 (Nat.factorization (f1 n) p)).toNat

end

end A072411.P11220182673940670111

/-! ## A072411.P16568021839861966332

`A316431(2*A329601(n+1)*A351944(n+1))`
-/

namespace A072411.P16568021839861966332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316431 (2 * (A329601 (n + 1) * A351944 (n + 1))).toNat

end

end A072411.P16568021839861966332

/-! ## A072411.P12896834175977263380

`A157754(n+1)+A034151(A034124(3*n+1))`
-/

namespace A072411.P12896834175977263380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (n + 1) + A034151 (A034124 (3 * n + 1)).toNat

end

end A072411.P12896834175977263380

/-! ## A072411.P7441440286297969486

`A157754(n+1)+A034151(A034101(3*n+1))`
-/

namespace A072411.P7441440286297969486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (n + 1) + A034151 (A034101 (3 * n + 1)).toNat

end

end A072411.P7441440286297969486

/-! ## A072411.P3680639150730055992

`gcd(A109834(n+1), A157754(n+1))`
-/

namespace A072411.P3680639150730055992
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A109834 (n + 1)) (A157754 (n + 1))

end

end A072411.P3680639150730055992

/-! ## A072411.P1418681742623140379

`A157754(n^A051904(n²+1)+1)`
-/

namespace A072411.P1418681742623140379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A051904 (n ^ 2 + 1) : ℤ) + 1)).toNat

end

end A072411.P1418681742623140379

/-! ## A072411.P3406153657596802713

`A157754(n^A052409(n²+1)+1)`
-/

namespace A072411.P3406153657596802713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157754 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A052409 (n ^ 2 + 1) : ℤ) + 1)).toNat

end

end A072411.P3406153657596802713

/-! ## A072411.P12813201563165899807

`A290107(3^A157754(n+1))`
-/

namespace A072411.P12813201563165899807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A157754 (n + 1) : ℤ))).toNat

end

end A072411.P12813201563165899807

/-! ## A072411.P8079285507547820366

`gcd(A157754(n+1)+A064451(n+1), A064451(n+1))`
-/

namespace A072411.P8079285507547820366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157754 (n + 1) + A064451 (n + 1)) (A064451 (n + 1))

end

end A072411.P8079285507547820366

/-! ## A072411.P4296892541379198330

`A086342(∏{e}[n+1, A006516(#)+A000225(#)])`
-/

namespace A072411.P4296892541379198330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 (∏ p ∈ Nat.primeFactors (f1 n), (A006516 (Nat.factorization (f1 n) p) + A000225 (Nat.factorization (f1 n) p))).toNat

end

end A072411.P4296892541379198330

/-! ## A072411.P16284152850901614482

`gcd(A025552(n), A157754(n+1))`
-/

namespace A072411.P16284152850901614482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025552 n) (A157754 (n + 1))

end

end A072411.P16284152850901614482

/-! ## A072411.P5201258966035061994

`gcd(A052777(n), A290107(n+1))`
-/

namespace A072411.P5201258966035061994
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A052777 n) (A290107 (n + 1))

end

end A072411.P5201258966035061994

/-! ## A072411.P1119967721201032060

`gcd(A157754(n+1)+A152761(n), A152761(n))`
-/

namespace A072411.P1119967721201032060
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A157754 (n + 1) + A152761 n) (A152761 n)

end

end A072411.P1119967721201032060

/-! ## A072411.P13845384868201825729

`A001222(5^A290107(n+1))`
-/

namespace A072411.P13845384868201825729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A290107 (n + 1) : ℤ))).toNat

end

end A072411.P13845384868201825729

/-! ## A072411.P6763169307658369728

`A290107(n+1)+and(8, A290107(A007318(n)))`
-/

namespace A072411.P6763169307658369728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290107 (n + 1) + Int.land 8 (A290107 (A007318 n).toNat)

end

end A072411.P6763169307658369728

/-! ## A072411.P9775259366719754864

`A332898(A290107(∑[n+1])²)+A290107(n+1)`
-/

namespace A072411.P9775259366719754864
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332898 (A290107 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat + A290107 (n + 1)

end

end A072411.P9775259366719754864

/-!
# A072412: Numbers k such that the LCM of exponents in the prime factorization of k does not equal the largest exponent.

The programs for A072412, there is no canonical definition to state claims against.
-/

/-! ## A072412.P16365957485610674982

`∩[A260985(n+1), A335463(n+1)]`
-/

namespace A072412.P16365957485610674982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072412.P16365957485610674982

/-! ## A072412.P2937879515896822288

`A335248(A060874(n+1))`
-/

namespace A072412.P2937879515896822288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335248 (A060874 (n + 1)).toNat

end

end A072412.P2937879515896822288

/-!
# A072413: Numbers k such that the LCM of exponents in the prime factorization of k does not equal the product of the exponents.

The programs for A072413, there is no canonical definition to state claims against.
-/

/-! ## A072413.P8118027948727948386

`lt[A072411(n+1), A005361(n+1)]+1`
-/

namespace A072413.P8118027948727948386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072413.P8118027948727948386

/-! ## A072413.P14704479290498948595

`lt[A072411(n+1), A183094(n+1)]+1`
-/

namespace A072413.P14704479290498948595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A072413.P14704479290498948595

/-! ## A072413.P14940351019446885060

`A020725(lt[A072411(n+1), A005361(n+1)])`
-/

namespace A072413.P14940351019446885060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A072413.P14940351019446885060

/-! ## A072413.P9091246146598113750

`A114637(lt[A072411(n+1), A005361(n+1)])`
-/

namespace A072413.P9091246146598113750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A072413.P9091246146598113750

/-! ## A072413.P12815783511671816216

`A020725(lt[A072411(n+1), A183094(n+1)])`
-/

namespace A072413.P12815783511671816216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072411 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183094 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A072413.P12815783511671816216

/-!
# A072414: Non-Achilles numbers for which LCM of the exponents in the prime factorization of n is not equal to the maximum of the same exponents.

The programs for A072414, there is no canonical definition to state claims against.
-/

/-! ## A072414.P7729253145057362227

`∩[A072412(n+1), A396323(n+1)]`
-/

namespace A072414.P7729253145057362227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072414.P7729253145057362227

/-! ## A072414.P12322602826713276826

`filter[A072412(n+1), A389905(#)]`
-/

namespace A072414.P12322602826713276826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A072414.P12322602826713276826

/-! ## A072414.P13483885508722668120

`∩[A072412(n+1), A391319(n+1)]`
-/

namespace A072414.P13483885508722668120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072414.P13483885508722668120

/-! ## A072414.P6039320805132920281

`∩[A072412(n+1), A390949(n+1)]`
-/

namespace A072414.P6039320805132920281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390949 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072414.P6039320805132920281

/-! ## A072414.P15198108691188160125

`∩[A279456(n+1), A383516(n+1)]`
-/

namespace A072414.P15198108691188160125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072414.P15198108691188160125

/-!
# A072415: a(1) = 2; a(n) = a(n-1)-th even nontotient number.

The programs for A072415, there is no canonical definition to state claims against.
-/

/-! ## A072415.P42733091660088376

`A005277(a(n-1))` with `a(0)=2`
-/

namespace A072415.P42733091660088376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005277 (a (n - 1)).toNat

end

end A072415.P42733091660088376

/-! ## A072415.P1851249808159919347

`record[A005277(a(∑[n]%n))]` with `a(0)=2`
-/

namespace A072415.P1851249808159919347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A005277 (f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072415.P1851249808159919347

/-! ## A072415.P12125425169394840036

`A005277(floor(a(A023443(n))))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A072415.P12125425169394840036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A005277 (a (A023443 n).toNat).toNat

end

end A072415.P12125425169394840036

/-!
# A072416: a(1) = 2; a(n) = half of the a(n-1)-th even nontotient number.

The programs for A072416, there is no canonical definition to state claims against.
-/

/-! ## A072416.P14055844098774140438

`A005277(a(n-1))/2` with `a(0)=2`
-/

namespace A072416.P14055844098774140438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (A005277 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 2

end

end A072416.P14055844098774140438

/-! ## A072416.P18205161157798376574

`A014682(A005277(a(n-1)))` with `a(0)=2`
-/

namespace A072416.P18205161157798376574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A014682 (A005277 (a (n - 1)).toNat).toNat

end

end A072416.P18205161157798376574

/-! ## A072416.P3014211439937128815

`A079695(a(n-1))` with `a(0)=2`
-/

namespace A072416.P3014211439937128815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A079695 (a (n - 1)).toNat

end

end A072416.P3014211439937128815

/-! ## A072416.P345732273215555844

`A079697(a(n-1))` with `a(0)=2`
-/

namespace A072416.P345732273215555844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A079697 (a (n - 1)).toNat

end

end A072416.P345732273215555844

/-! ## A072416.P13135482465065878053

`A355451(n+1)+A302032(A005277(a(n-1)))` with `a(0)=2`
-/

namespace A072416.P13135482465065878053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A355451 (n + 1) + A302032 (A005277 (a (n - 1)).toNat).toNat

end

end A072416.P13135482465065878053

/-!
# A072418: Parity of floor(3^n/2^n).

The programs for A072418, the canonical program `A072418.P10046062430467039498` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072418 has offset 1).

The definition of A072418 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072418.P10046062430467039498

`A002379(n+1)%2`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072418

/-- `A002379(n+1)%2` -/
def P10046062430467039498.Spec : Prop :=
  ∀ n, P10046062430467039498.a n = A072418 (n + 1)

theorem P10046062430467039498.correct : P10046062430467039498.Spec := by
  intro n
  simp only [A072418, Nat.add_sub_cancel]

end A072418

/-! ## A072418.P7966655308902536718

`floor(3^(n+1)/2^(n+1))%2`
-/

namespace A072418.P7966655308902536718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊(3 ^ (n + 1) : ℚ) / (2 ^ (n + 1) : ℚ)⌋ 2

end

end A072418.P7966655308902536718

namespace A072418

/-- `floor(3^(n+1)/2^(n+1))%2` -/
def P7966655308902536718.Spec : Prop :=
  ∀ n, P7966655308902536718.a n = A072418 (n + 1)

end A072418

/-! ## A072418.P15944696160936579260

`char[A073632(n+1)-1]`
-/

namespace A072418.P15944696160936579260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073632 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A072418.P15944696160936579260

namespace A072418

/-- `char[A073632(n+1)-1]` -/
def P15944696160936579260.Spec : Prop :=
  ∀ n, (P15944696160936579260.a n : ℤ) = A072418 (n + 1)

end A072418

/-! ## A072418.P7850997495352784982

`A000035(A242734(n+1)+A004273(n))`
-/

namespace A072418.P7850997495352784982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A242734 (n + 1) + A004273 n).toNat

end

end A072418.P7850997495352784982

namespace A072418

/-- `A000035(A242734(n+1)+A004273(n))` -/
def P7850997495352784982.Spec : Prop :=
  ∀ n, P7850997495352784982.a n = A072418 (n + 1)

end A072418

/-! ## A072418.P2079205831102992089

`and(1, floor((3/2)^(n+1)))`
-/

namespace A072418.P2079205831102992089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ⌊((3 : ℚ) / 2) ^ (n + 1)⌋

end

end A072418.P2079205831102992089

namespace A072418

/-- `and(1, floor((3/2)^(n+1)))` -/
def P2079205831102992089.Spec : Prop :=
  ∀ n, P2079205831102992089.a n = A072418 (n + 1)

end A072418

/-! ## A072418.P2529131626642365705

`(A259796(n+1)%2)²`
-/

namespace A072418.P2529131626642365705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A259796 (n + 1)) 2 ^ 2

end

end A072418.P2529131626642365705

namespace A072418

/-- `(A259796(n+1)%2)²` -/
def P2529131626642365705.Spec : Prop :=
  ∀ n, P2529131626642365705.a n = A072418 (n + 1)

end A072418

/-! ## A072418.P5168557589092798009

`A000217(and(1, A002379(n+1))^n)`
-/

namespace A072418.P5168557589092798009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.land 1 (A002379 (n + 1)) ^ n).toNat

end

end A072418.P5168557589092798009

namespace A072418

/-- `A000217(and(1, A002379(n+1))^n)` -/
def P5168557589092798009.Spec : Prop :=
  ∀ n, P5168557589092798009.a n = A072418 (n + 1)

end A072418

/-! ## A072418.P11677346309614111321

`log2(gcd(2, A060692(n+1)))`
-/

namespace A072418.P11677346309614111321
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (A060692 (n + 1)) : ℝ)

end

end A072418.P11677346309614111321

namespace A072418

/-- `log2(gcd(2, A060692(n+1)))` -/
def P11677346309614111321.Spec : Prop :=
  ∀ n, P11677346309614111321.a n = (A072418 (n + 1) : ℝ)

end A072418

/-! ## A072418.P14351707751503538599

`and(A000079(n+1), A000244(n+1))/A000079(n+1)`
-/

namespace A072418.P14351707751503538599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land (A000079 (n + 1)) (A000244 (n + 1)) : ℚ) / (A000079 (n + 1) : ℚ)

end

end A072418.P14351707751503538599

namespace A072418

/-- `and(A000079(n+1), A000244(n+1))/A000079(n+1)` -/
def P14351707751503538599.Spec : Prop :=
  ∀ n, P14351707751503538599.a n = (A072418 (n + 1) : ℚ)

end A072418

/-!
# A072420: Minimum number of steps needed to transform n into 153 where each step is either tripling or taking the sum of cubes of digits.

The programs for A072420, there is no canonical definition to state claims against.
-/

/-! ## A072420.P8582609041022638733

`4-Δ[A005088(A033583(2*n+1))]`
-/

namespace A072420.P8582609041022638733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005088 (A033583 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (f1 (n + 1) - f1 n)

end

end A072420.P8582609041022638733

/-! ## A072420.P16205050586265309857

`A237110(A253495(n+1))-A237112(n+1)`
-/

namespace A072420.P16205050586265309857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237110 (A253495 (n + 1)).toNat - A237112 (n + 1)

end

end A072420.P16205050586265309857

/-!
# A072426: Numbers whose Hebrew name begin with the letter "Shin".

The programs for A072426, there is no canonical definition to state claims against.
-/

/-! ## A072426.P16451595150065651228

`A376665(A087006(n+2))`
-/

namespace A072426.P16451595150065651228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376665 (A087006 (n + 2)).toNat

end

end A072426.P16451595150065651228

/-!
# A072427: Numbers n for which there is a unique k such that n = k + reverse(k).

The programs for A072427, there is no canonical definition to state claims against.
-/

/-! ## A072427.P16668976289840753529

`A067030(eq[1, A067032(n)])`
-/

namespace A072427.P16668976289840753529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072427.P16668976289840753529

/-! ## A072427.P16122803699913830794

`A067030(lt[A067032(n), 2])`
-/

namespace A072427.P16122803699913830794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A072427.P16122803699913830794

/-! ## A072427.P17190786318950721446

`A067030(record[n/A067032(n)])`
-/

namespace A072427.P17190786318950721446
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A067032 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A072427.P17190786318950721446

/-! ## A072427.P2077141834581659070

`record[(2-A067032(n))*A067030(n)]`
-/

namespace A072427.P2077141834581659070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A067032 n) * A067030 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072427.P2077141834581659070

/-! ## A072427.P6926567620053652435

`A067030(eq[A067033(n), A067034(n)])`
-/

namespace A072427.P6926567620053652435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067033 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A072427.P6926567620053652435

/-! ## A072427.P9637154116641504568

`A067030(lt[A067034(n), A067033(n)+1])`
-/

namespace A072427.P9637154116641504568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067034 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067033 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A072427.P9637154116641504568

/-! ## A072427.P9775689722756738023

`A067030(lt[A067034(n)-1, A067033(n)])`
-/

namespace A072427.P9775689722756738023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067034 n - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067033 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A072427.P9775689722756738023

/-! ## A072427.P9870811561048227628

`record[A056964(A067033(n))/A067032(n)]`
-/

namespace A072427.P9870811561048227628
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056964 (A067033 n).toNat : ℚ) / (A067032 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072427.P9870811561048227628

/-!
# A072428: Numbers n for which there are exactly four k such that n = k + reverse(k).

The programs for A072428, there is no canonical definition to state claims against.
-/

/-! ## A072428.P10935796238225488327

`A067030(eq[4, A067032(n)])`
-/

namespace A072428.P10935796238225488327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072428.P10935796238225488327

/-! ## A072428.P1332092217433110403

`A056964(A067033(eq[4, A067032(n)]))`
-/

namespace A072428.P1332092217433110403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A072428.P1332092217433110403

/-! ## A072428.P12157130751082447395

`A056964(A067034(eq[4, A067032(n)]))`
-/

namespace A072428.P12157130751082447395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A072428.P12157130751082447395

/-!
# A072429: Numbers n for which there are exactly five k such that n = k + reverse(k).

The programs for A072429, there is no canonical definition to state claims against.
-/

/-! ## A072429.P2786745327599160549

`A067030(eq[5, A067032(n)])`
-/

namespace A072429.P2786745327599160549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072429.P2786745327599160549

/-! ## A072429.P2264521895849043705

`A056964(A067033(eq[5, A067032(n)]))`
-/

namespace A072429.P2264521895849043705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A072429.P2264521895849043705

/-! ## A072429.P4455744556791032601

`A056964(A067034(eq[5, A067032(n)]))`
-/

namespace A072429.P4455744556791032601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A072429.P4455744556791032601

/-!
# A072430: Numbers n for which there are exactly six k such that n = k + reverse(k).

The programs for A072430, there is no canonical definition to state claims against.
-/

/-! ## A072430.P10159122461961198607

`A067030(eq[6, A067032(n)])`
-/

namespace A072430.P10159122461961198607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072430.P10159122461961198607

/-! ## A072430.P5716657868881414862

`A056964(A067033(eq[6, A067032(n)]))`
-/

namespace A072430.P5716657868881414862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A072430.P5716657868881414862

/-! ## A072430.P3940192973284789391

`A056964(A067034(eq[6, A067032(n)]))`
-/

namespace A072430.P3940192973284789391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A072430.P3940192973284789391

/-!
# A072431: Numbers n for which there are exactly seven k such that n = k + reverse(k).

The programs for A072431, there is no canonical definition to state claims against.
-/

/-! ## A072431.P1542205318211301713

`A067030(eq[7, A067032(n)])`
-/

namespace A072431.P1542205318211301713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072431.P1542205318211301713

/-! ## A072431.P9767721801348646435

`A056964(A067033(eq[7, A067032(n)]))`
-/

namespace A072431.P9767721801348646435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A072431.P9767721801348646435

/-! ## A072431.P10606720725708553292

`A056964(A067034(eq[7, A067032(n)]))`
-/

namespace A072431.P10606720725708553292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A072431.P10606720725708553292

/-!
# A072432: Numbers n for which there are exactly eight k such that n = k + reverse(k).

The programs for A072432, there is no canonical definition to state claims against.
-/

/-! ## A072432.P3481194809292762777

`A067030(eq[8, A067032(n)])`
-/

namespace A072432.P3481194809292762777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072432.P3481194809292762777

/-! ## A072432.P6387388563981811404

`A056964(A067033(eq[8, A067032(n)]))`
-/

namespace A072432.P6387388563981811404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A072432.P6387388563981811404

/-! ## A072432.P16992063129422668366

`A056964(A067034(eq[8, A067032(n)]))`
-/

namespace A072432.P16992063129422668366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A072432.P16992063129422668366

/-!
# A072433: Numbers n for which there are exactly nine k such that n = k + reverse(k).

The programs for A072433, there is no canonical definition to state claims against.
-/

/-! ## A072433.P6640833674043869310

`A067030(eq[9, A067032(n)])`
-/

namespace A072433.P6640833674043869310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072433.P6640833674043869310

/-! ## A072433.P15287497527649198323

`A056964(A067033(eq[9, A067032(n)]))`
-/

namespace A072433.P15287497527649198323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067033 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A072433.P15287497527649198323

/-! ## A072433.P1802282980466940549

`A056964(A067034(eq[9, A067032(n)]))`
-/

namespace A072433.P1802282980466940549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (A067034 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)).toNat

end

end A072433.P1802282980466940549

/-!
# A072434: Numbers n for which there are exactly ten k such that n = k + reverse(k).

The programs for A072434, there is no canonical definition to state claims against.
-/

/-! ## A072434.P13582762081975955640

`A067030(eq[10, A067032(n)])`
-/

namespace A072434.P13582762081975955640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072434.P13582762081975955640

/-!
# A072435: Numbers n for which there are exactly twelve k such that n = k + reverse(k).

The programs for A072435, there is no canonical definition to state claims against.
-/

/-! ## A072435.P8266194574843345707

`A067030(eq[12, A067032(n)])`
-/

namespace A072435.P8266194574843345707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067032 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067030 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072435.P8266194574843345707

/-!
# A072436: Remove prime factors of form 4*k+3.

The programs for A072436, the canonical program `A072436.P7287158936470340465` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072436 has offset 1).

The definition of A072436 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072436.P10505594344286207323

`(n+1)/A097706(n+1)`
-/

namespace A072436.P10505594344286207323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A097706 (n + 1) : ℚ)

end

end A072436.P10505594344286207323

namespace A072436

/-- `(n+1)/A097706(n+1)` -/
def P10505594344286207323.Spec : Prop :=
  ∀ n, P10505594344286207323.a n = (A072436 (n + 1) : ℚ)

end A072436

/-! ## A072436.P11345903607623634486

`2^val(n+1, 2)*A170818(n+1)`
-/

namespace A072436.P11345903607623634486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A170818 (n + 1)

end

end A072436.P11345903607623634486

namespace A072436

/-- `2^val(n+1, 2)*A170818(n+1)` -/
def P11345903607623634486.Spec : Prop :=
  ∀ n, P11345903607623634486.a n = A072436 (n + 1)

end A072436

/-! ## A072436.P7287158936470340465

`A006519(n+1)*A170818(n+1)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A072436

/-- `A006519(n+1)*A170818(n+1)` -/
def P7287158936470340465.Spec : Prop :=
  ∀ n, P7287158936470340465.a n = A072436 (n + 1)

theorem P7287158936470340465.correct : P7287158936470340465.Spec := by
  intro n
  simp only [A072436, Nat.add_sub_cancel]

end A072436

/-! ## A072436.P11500554065612937917

`(n+1)/A072438(A000265(n+1))`
-/

namespace A072436.P11500554065612937917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072438 (A000265 (n + 1)).toNat : ℚ)

end

end A072436.P11500554065612937917

namespace A072436

/-- `(n+1)/A072438(A000265(n+1))` -/
def P11500554065612937917.Spec : Prop :=
  ∀ n, P11500554065612937917.a n = (A072436 (n + 1) : ℚ)

end A072436

/-! ## A072436.P16176946706105527819

`(n+1)/A132740(A072438(n+1))`
-/

namespace A072436.P16176946706105527819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A132740 (A072438 (n + 1)).toNat : ℚ)

end

end A072436.P16176946706105527819

namespace A072436

/-- `(n+1)/A132740(A072438(n+1))` -/
def P16176946706105527819.Spec : Prop :=
  ∀ n, P16176946706105527819.a n = (A072436 (n + 1) : ℚ)

end A072436

/-! ## A072436.P8421444433346265710

`(n+1)/A072438(A153733(n)+1)`
-/

namespace A072436.P8421444433346265710
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072438 (A153733 n + 1).toNat : ℚ)

end

end A072436.P8421444433346265710

namespace A072436

/-- `(n+1)/A072438(A153733(n)+1)` -/
def P8421444433346265710.Spec : Prop :=
  ∀ n, P8421444433346265710.a n = (A072436 (n + 1) : ℚ)

end A072436

/-! ## A072436.P11803540506937032366

`lcm(A132741(n+1), A170818(n+1))`
-/

namespace A072436.P11803540506937032366
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A132741 (n + 1)) (A170818 (n + 1))

end

end A072436.P11803540506937032366

namespace A072436

/-- `lcm(A132741(n+1), A170818(n+1))` -/
def P11803540506937032366.Spec : Prop :=
  ∀ n, (P11803540506937032366.a n : ℤ) = A072436 (n + 1)

end A072436

/-! ## A072436.P539196269677793453

`A170818(n+1)*A343430(A065331(n+1))`
-/

namespace A072436.P539196269677793453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170818 (n + 1) * A343430 (A065331 (n + 1)).toNat

end

end A072436.P539196269677793453

namespace A072436

/-- `A170818(n+1)*A343430(A065331(n+1))` -/
def P539196269677793453.Spec : Prop :=
  ∀ n, P539196269677793453.a n = A072436 (n + 1)

end A072436

/-! ## A072436.P7086083340237465039

`A170818(n+1)*A343430(n+1)/A343431(n+1)`
-/

namespace A072436.P7086083340237465039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A170818 (n + 1) * A343430 (n + 1) : ℚ) / (A343431 (n + 1) : ℚ)

end

end A072436.P7086083340237465039

namespace A072436

/-- `A170818(n+1)*A343430(n+1)/A343431(n+1)` -/
def P7086083340237465039.Spec : Prop :=
  ∀ n, P7086083340237465039.a n = (A072436 (n + 1) : ℚ)

end A072436

/-! ## A072436.P9197035276322765162

`(n+1)/A267099(A170818(A267099(n+1)))`
-/

namespace A072436.P9197035276322765162
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A267099 (A170818 (A267099 (n + 1)).toNat).toNat : ℚ)

end

end A072436.P9197035276322765162

namespace A072436

/-- `(n+1)/A267099(A170818(A267099(n+1)))` -/
def P9197035276322765162.Spec : Prop :=
  ∀ n, P9197035276322765162.a n = (A072436 (n + 1) : ℚ)

end A072436

/-! ## A072436.P7573373472604594789

`gcd(n+1, A327123((n+1)²))`
-/

namespace A072436.P7573373472604594789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A327123 ((n + 1) ^ 2))

end

end A072436.P7573373472604594789

namespace A072436

/-- `gcd(n+1, A327123((n+1)²))` -/
def P7573373472604594789.Spec : Prop :=
  ∀ n, (P7573373472604594789.a n : ℤ) = A072436 (n + 1)

end A072436

/-!
# A072437: Numbers with no prime factors of form 4*k+3.

The programs for A072437, the canonical program `A072437.P9080563627844174689` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072437 has offset 1).

The definition of A072437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072437.P13079190241904764351

`eq[1, A324893(n+1)]+1`
-/

namespace A072437.P13079190241904764351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324893 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072437.P13079190241904764351

namespace A072437

/-- `eq[1, A324893(n+1)]+1` -/
def P13079190241904764351.Spec : Prop :=
  ∀ n, (P13079190241904764351.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P9080563627844174689

`lt[A140211(n+1), 2]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072437

/-- `lt[A140211(n+1), 2]+1` -/
def P9080563627844174689.Spec : Prop :=
  ∀ n, (P9080563627844174689.a n : ℤ) = A072437 (n + 1)

theorem P9080563627844174689.correct : P9080563627844174689.Spec := by
  intro n
  simp only [A072437, Nat.add_sub_cancel]

end A072437

/-! ## A072437.P8440040225039027186

`lt[n, A326052(n+1)]+1`
-/

namespace A072437.P8440040225039027186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326052 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072437.P8440040225039027186

namespace A072437

/-- `lt[n, A326052(n+1)]+1` -/
def P8440040225039027186.Spec : Prop :=
  ∀ n, (P8440040225039027186.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P5490231448594330473

`record[A326052(record[A326052(n+1)])]`
-/

namespace A072437.P5490231448594330473
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326052 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326052 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072437.P5490231448594330473

namespace A072437

/-- `record[A326052(record[A326052(n+1)])]` -/
def P5490231448594330473.Spec : Prop :=
  ∀ n, P5490231448594330473.a n = A072437 (n + 1)

end A072437

/-! ## A072437.P8581919482879074756

`record[A072436(n+1)]`
-/

namespace A072437.P8581919482879074756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072437.P8581919482879074756

namespace A072437

/-- `record[A072436(n+1)]` -/
def P8581919482879074756.Spec : Prop :=
  ∀ n, P8581919482879074756.a n = A072437 (n + 1)

end A072437

/-! ## A072437.P9969071031836545171

`lt[n*A001842(n), n]`
-/

namespace A072437.P9969071031836545171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001842 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072437.P9969071031836545171

namespace A072437

/-- `lt[n*A001842(n), n]` -/
def P9969071031836545171.Spec : Prop :=
  ∀ n, (P9969071031836545171.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P14863970959387732533

`lt[n*A260728(n), n]`
-/

namespace A072437.P14863970959387732533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A260728 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A072437.P14863970959387732533

namespace A072437

/-- `lt[n*A260728(n), n]` -/
def P14863970959387732533.Spec : Prop :=
  ∀ n, (P14863970959387732533.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P15045706323903942215

`eq[0, A005091(n+1)]+1`
-/

namespace A072437.P15045706323903942215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005091 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072437.P15045706323903942215

namespace A072437

/-- `eq[0, A005091(n+1)]+1` -/
def P15045706323903942215.Spec : Prop :=
  ∀ n, (P15045706323903942215.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P17646344383458034003

`eq[0, A050454(n+1)]+1`
-/

namespace A072437.P17646344383458034003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050454 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072437.P17646344383458034003

namespace A072437

/-- `eq[0, A050454(n+1)]+1` -/
def P17646344383458034003.Spec : Prop :=
  ∀ n, (P17646344383458034003.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P2518520759768730545

`eq[0, A050465(n+1)]+1`
-/

namespace A072437.P2518520759768730545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050465 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072437.P2518520759768730545

namespace A072437

/-- `eq[0, A050465(n+1)]+1` -/
def P2518520759768730545.Spec : Prop :=
  ∀ n, (P2518520759768730545.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P13578763659084973208

`eq[1, A097706(n+1)]+1`
-/

namespace A072437.P13578763659084973208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072437.P13578763659084973208

namespace A072437

/-- `eq[1, A097706(n+1)]+1` -/
def P13578763659084973208.Spec : Prop :=
  ∀ n, (P13578763659084973208.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P4692580030476214432

`eq[1, A170819(n+1)]+1`
-/

namespace A072437.P4692580030476214432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170819 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072437.P4692580030476214432

namespace A072437

/-- `eq[1, A170819(n+1)]+1` -/
def P4692580030476214432.Spec : Prop :=
  ∀ n, (P4692580030476214432.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P1994334608162123768

`eq[1, A278509(n+1)]+1`
-/

namespace A072437.P1994334608162123768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278509 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072437.P1994334608162123768

namespace A072437

/-- `eq[1, A278509(n+1)]+1` -/
def P1994334608162123768.Spec : Prop :=
  ∀ n, (P1994334608162123768.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P9932269738161900841

`eq[1, A286363(n+1)]+1`
-/

namespace A072437.P9932269738161900841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286363 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072437.P9932269738161900841

namespace A072437

/-- `eq[1, A286363(n+1)]+1` -/
def P9932269738161900841.Spec : Prop :=
  ∀ n, (P9932269738161900841.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P9038563614653450739

`lt[A001842(n+1), 1]+1`
-/

namespace A072437.P9038563614653450739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072437.P9038563614653450739

namespace A072437

/-- `lt[A001842(n+1), 1]+1` -/
def P9038563614653450739.Spec : Prop :=
  ∀ n, (P9038563614653450739.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P18368692081866018804

`lt[A005085(n+1), 1]+1`
-/

namespace A072437.P18368692081866018804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005085 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072437.P18368692081866018804

namespace A072437

/-- `lt[A005085(n+1), 1]+1` -/
def P18368692081866018804.Spec : Prop :=
  ∀ n, (P18368692081866018804.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P8805860589888904196

`lt[A050453(n+1), 1]+1`
-/

namespace A072437.P8805860589888904196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050453 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072437.P8805860589888904196

namespace A072437

/-- `lt[A050453(n+1), 1]+1` -/
def P8805860589888904196.Spec : Prop :=
  ∀ n, (P8805860589888904196.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P5364177040886042220

`lt[A050455(n+1), 1]+1`
-/

namespace A072437.P5364177040886042220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050455 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072437.P5364177040886042220

namespace A072437

/-- `lt[A050455(n+1), 1]+1` -/
def P5364177040886042220.Spec : Prop :=
  ∀ n, (P5364177040886042220.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P17824755473311407575

`lt[A065339(n+1), 1]+1`
-/

namespace A072437.P17824755473311407575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065339 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072437.P17824755473311407575

namespace A072437

/-- `lt[A065339(n+1), 1]+1` -/
def P17824755473311407575.Spec : Prop :=
  ∀ n, (P17824755473311407575.a n : ℤ) = A072437 (n + 1)

end A072437

/-! ## A072437.P17697818377465008548

`lt[A260728(n+1), 1]+1`
-/

namespace A072437.P17697818377465008548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260728 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072437.P17697818377465008548

namespace A072437

/-- `lt[A260728(n+1), 1]+1` -/
def P17697818377465008548.Spec : Prop :=
  ∀ n, (P17697818377465008548.a n : ℤ) = A072437 (n + 1)

end A072437

/-!
# A072438: Remove prime factors of form 4*k+1.

The programs for A072438, the canonical program `A072438.P8372132607125939071` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072438 has offset 1).

The definition of A072438 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072438.P8372132607125939071

`∏{d}[n+1, A392055(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A072438

/-- `∏{d}[n+1, A392055(#)]` -/
def P8372132607125939071.Spec : Prop :=
  ∀ n, P8372132607125939071.a n = A072438 (n + 1)

theorem P8372132607125939071.correct : P8372132607125939071.Spec := by
  intro n
  simp only [A072438, Nat.add_sub_cancel]

end A072438

/-! ## A072438.P15967571183688859091

`(1+n)/A170818(n+1)`
-/

namespace A072438.P15967571183688859091
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + n : ℚ) / (A170818 (n + 1) : ℚ)

end

end A072438.P15967571183688859091

namespace A072438

/-- `(1+n)/A170818(n+1)` -/
def P15967571183688859091.Spec : Prop :=
  ∀ n, P15967571183688859091.a n = (A072438 (n + 1) : ℚ)

end A072438

/-! ## A072438.P4359710410767116263

`2^val(n+1, 2)*A097706(n+1)`
-/

namespace A072438.P4359710410767116263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ) * A097706 (n + 1)

end

end A072438.P4359710410767116263

namespace A072438

/-- `2^val(n+1, 2)*A097706(n+1)` -/
def P4359710410767116263.Spec : Prop :=
  ∀ n, P4359710410767116263.a n = A072438 (n + 1)

end A072438

/-! ## A072438.P4998534682864997035

`A006519(n+1)*A097706(n+1)`
-/

namespace A072438.P4998534682864997035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1) * A097706 (n + 1)

end

end A072438.P4998534682864997035

namespace A072438

/-- `A006519(n+1)*A097706(n+1)` -/
def P4998534682864997035.Spec : Prop :=
  ∀ n, P4998534682864997035.a n = A072438 (n + 1)

end A072438

/-! ## A072438.P4866683266124431678

`(n+1)/A072436(A000265(n+1))`
-/

namespace A072438.P4866683266124431678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A072436 (A000265 (n + 1)).toNat : ℚ)

end

end A072438.P4866683266124431678

namespace A072438

/-- `(n+1)/A072436(A000265(n+1))` -/
def P4866683266124431678.Spec : Prop :=
  ∀ n, P4866683266124431678.a n = (A072438 (n + 1) : ℚ)

end A072438

/-! ## A072438.P7059839412975105511

`A072436(A065338(n+1))*A097706(n+1)`
-/

namespace A072438.P7059839412975105511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A065338 (n + 1)).toNat * A097706 (n + 1)

end

end A072438.P7059839412975105511

namespace A072438

/-- `A072436(A065338(n+1))*A097706(n+1)` -/
def P7059839412975105511.Spec : Prop :=
  ∀ n, P7059839412975105511.a n = A072438 (n + 1)

end A072438

/-! ## A072438.P8782900933872782784

`A097706(n+1)*A343430(A065331(n+1))`
-/

namespace A072438.P8782900933872782784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097706 (n + 1) * A343430 (A065331 (n + 1)).toNat

end

end A072438.P8782900933872782784

namespace A072438

/-- `A097706(n+1)*A343430(A065331(n+1))` -/
def P8782900933872782784.Spec : Prop :=
  ∀ n, P8782900933872782784.a n = A072438 (n + 1)

end A072438

/-! ## A072438.P17756279237198856171

`gcd(A281660(n), A392059(n+1))`
-/

namespace A072438.P17756279237198856171
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A281660 n) (A392059 (n + 1))

end

end A072438.P17756279237198856171

namespace A072438

/-- `gcd(A281660(n), A392059(n+1))` -/
def P17756279237198856171.Spec : Prop :=
  ∀ n, (P17756279237198856171.a n : ℤ) = A072438 (n + 1)

end A072438

/-! ## A072438.P13207379161783306415

`gcd(n+1, A392059(2*n+1))`
-/

namespace A072438.P13207379161783306415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A392059 (2 * n + 1))

end

end A072438.P13207379161783306415

namespace A072438

/-- `gcd(n+1, A392059(2*n+1))` -/
def P13207379161783306415.Spec : Prop :=
  ∀ n, (P13207379161783306415.a n : ℤ) = A072438 (n + 1)

end A072438

/-! ## A072438.P1893758554492656182

`gcd(n+1, A392059(n+1)²)`
-/

namespace A072438.P1893758554492656182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A392059 (n + 1) ^ 2)

end

end A072438.P1893758554492656182

namespace A072438

/-- `gcd(n+1, A392059(n+1)²)` -/
def P1893758554492656182.Spec : Prop :=
  ∀ n, (P1893758554492656182.a n : ℤ) = A072438 (n + 1)

end A072438

/-! ## A072438.P18190325479289758578

`gcd(n+1, A370548(n+1))`
-/

namespace A072438.P18190325479289758578
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A370548 (n + 1))

end

end A072438.P18190325479289758578

namespace A072438

/-- `gcd(n+1, A370548(n+1))` -/
def P18190325479289758578.Spec : Prop :=
  ∀ n, (P18190325479289758578.a n : ℤ) = A072438 (n + 1)

end A072438

/-!
# A072439: Primes prime(k) such that the number of binary 1's in prime(k) equals the number of binary 1's in k.

The programs for A072439, the canonical program `A072439.P1791281845013310770` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072439 has offset 1).

The definition of A072439 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071600, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072439.P1791281845013310770

`A000040(A071600(n+1))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072439

/-- `A000040(A071600(n+1))` -/
def P1791281845013310770.Spec : Prop :=
  ∀ n, P1791281845013310770.a n = A072439 (n + 1)

theorem P1791281845013310770.correct : P1791281845013310770.Spec := by
  intro n
  simp only [A072439, Nat.add_sub_cancel]

end A072439

/-! ## A072439.P15449877447537729983

`A008578(A071600(n+1)+1)`
-/

namespace A072439.P15449877447537729983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A071600 (n + 1) + 1).toNat

end

end A072439.P15449877447537729983

namespace A072439

/-- `A008578(A071600(n+1)+1)` -/
def P15449877447537729983.Spec : Prop :=
  ∀ n, P15449877447537729983.a n = A072439 (n + 1)

end A072439

/-! ## A072439.P5309662199139822291

`A182986(A071600(n+1)+1)`
-/

namespace A072439.P5309662199139822291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A071600 (n + 1) + 1).toNat

end

end A072439.P5309662199139822291

namespace A072439

/-- `A182986(A071600(n+1)+1)` -/
def P5309662199139822291.Spec : Prop :=
  ∀ n, P5309662199139822291.a n = A072439 (n + 1)

end A072439

/-! ## A072439.P6474796895759615158

`A158611(A071600(n+1)+2)`
-/

namespace A072439.P6474796895759615158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A071600 (n + 1) + 2).toNat

end

end A072439.P6474796895759615158

namespace A072439

/-- `A158611(A071600(n+1)+2)` -/
def P6474796895759615158.Spec : Prop :=
  ∀ n, P6474796895759615158.a n = A072439 (n + 1)

end A072439

/-! ## A072439.P7809370491342814863

`A073846(2*A071600(n+1))`
-/

namespace A072439.P7809370491342814863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A071600 (n + 1)).toNat

end

end A072439.P7809370491342814863

namespace A072439

/-- `A073846(2*A071600(n+1))` -/
def P7809370491342814863.Spec : Prop :=
  ∀ n, P7809370491342814863.a n = A072439 (n + 1)

end A072439

/-! ## A072439.P8510807603992043708

`A082500(2*A071600(n+1))`
-/

namespace A072439.P8510807603992043708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A071600 (n + 1)).toNat

end

end A072439.P8510807603992043708

namespace A072439

/-- `A082500(2*A071600(n+1))` -/
def P8510807603992043708.Spec : Prop :=
  ∀ n, P8510807603992043708.a n = A072439 (n + 1)

end A072439

/-!
# A072440: 3-smooth numbers k with decimal digits <= 3.

The programs for A072440, there is no canonical definition to state claims against.
-/

/-! ## A072440.P727532137361478876

`record[A350604(A199342(n+1))]`
-/

namespace A072440.P727532137361478876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350604 (A199342 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072440.P727532137361478876

/-!
# A072441: Least k such that Sum_{i=1..k} sin(1/sqrt(i)) > n.

The programs for A072441, there is no canonical definition to state claims against.
-/

/-! ## A072441.P4269802596201938762

`ceil(((2*n+1)/2^(2*n/(n+1)))²)`
-/

namespace A072441.P4269802596201938762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((2 * n + 1 : ℝ) / (2 : ℝ) ^ ((2 * n : ℚ) / (n + 1 : ℚ) : ℝ)) ^ 2⌉

end

end A072441.P4269802596201938762

/-! ## A072441.P1120294118928780815

`or(A000035(A085157(n)), A087811(n+1))`
-/

namespace A072441.P1120294118928780815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A085157 n).toNat) (A087811 (n + 1))

end

end A072441.P1120294118928780815

/-! ## A072441.P15097539335720307471

`or(A087811(n+1), A354199(A326020(n)))`
-/

namespace A072441.P15097539335720307471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087811 (n + 1)) (A354199 (A326020 n).toNat)

end

end A072441.P15097539335720307471

/-! ## A072441.P9408132131059643354

`or(A087811(n+1), A336868(A005836(n+1)))`
-/

namespace A072441.P9408132131059643354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A087811 (n + 1)) (A336868 (A005836 (n + 1)).toNat)

end

end A072441.P9408132131059643354

/-! ## A072441.P17231983092912717216

`or(A002620(n+2), A051731(A344061(n+1)))`
-/

namespace A072441.P17231983092912717216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002620 (n + 2)) (A051731 (A344061 (n + 1)).toNat)

end

end A072441.P17231983092912717216

/-!
# A072442: Least k such that Sum_{i=1..k} cos(1/sqrt(i)) > n.

The programs for A072442, the canonical program `A072442.P9458739971674614714` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072442 has offset 0).

The definition of A072442 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 253 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072442.P17316245434724858981

`A055642(A239413(n+1))+n`
-/

namespace A072442.P17316245434724858981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A239413 (n + 1)).toNat + (n : ℤ)

end

end A072442.P17316245434724858981

namespace A072442

/-- `A055642(A239413(n+1))+n` -/
def P17316245434724858981.Spec : Prop :=
  ∀ n, P17316245434724858981.a n = A072442 n

end A072442

/-! ## A072442.P9458739971674614714

`A055642(A211422(2*n+1))+n`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072442

/-- `A055642(A211422(2*n+1))+n` -/
def P9458739971674614714.Spec : Prop :=
  ∀ n, P9458739971674614714.a n = A072442 n

theorem P9458739971674614714.correct : P9458739971674614714.Spec := by
  intro n
  simp only [A072442]

end A072442

/-! ## A072442.P5655017211859872660

`A055642(A089019(3*n+1))+n`
-/

namespace A072442.P5655017211859872660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A089019 (3 * n + 1)).toNat + (n : ℤ)

end

end A072442.P5655017211859872660

namespace A072442

/-- `A055642(A089019(3*n+1))+n` -/
def P5655017211859872660.Spec : Prop :=
  ∀ n, P5655017211859872660.a n = A072442 n

end A072442

/-! ## A072442.P15667696563119345365

`A056239(A000040(n+1)*A130255(n+1))`
-/

namespace A072442.P15667696563119345365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A000040 (n + 1) * A130255 (n + 1)).toNat

end

end A072442.P15667696563119345365

namespace A072442

/-- `A056239(A000040(n+1)*A130255(n+1))` -/
def P15667696563119345365.Spec : Prop :=
  ∀ n, P15667696563119345365.a n = A072442 n

end A072442

/-! ## A072442.P4786865968176101273

`A055642(A106864(n+3))+n`
-/

namespace A072442.P4786865968176101273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A106864 (n + 3)).toNat + (n : ℤ)

end

end A072442.P4786865968176101273

namespace A072442

/-- `A055642(A106864(n+3))+n` -/
def P4786865968176101273.Spec : Prop :=
  ∀ n, P4786865968176101273.a n = A072442 n

end A072442

/-! ## A072442.P11965970082206442340

`A055642(A336380(2*(n+1))+A068340(n+1))+n`
-/

namespace A072442.P11965970082206442340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A336380 (2 * (n + 1)) + A068340 (n + 1)).toNat + (n : ℤ)

end

end A072442.P11965970082206442340

namespace A072442

/-- `A055642(A336380(2*(n+1))+A068340(n+1))+n` -/
def P11965970082206442340.Spec : Prop :=
  ∀ n, P11965970082206442340.a n = A072442 n

end A072442

/-! ## A072442.P4408026533121027814

`A055642(A095286(3*n+2))+n`
-/

namespace A072442.P4408026533121027814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A095286 (3 * n + 2)).toNat + (n : ℤ)

end

end A072442.P4408026533121027814

namespace A072442

/-- `A055642(A095286(3*n+2))+n` -/
def P4408026533121027814.Spec : Prop :=
  ∀ n, P4408026533121027814.a n = A072442 n

end A072442

/-! ## A072442.P8022872358978646301

`A055642(A154331(2*(n+2)))+n`
-/

namespace A072442.P8022872358978646301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A154331 (2 * (n + 2))).toNat + (n : ℤ)

end

end A072442.P8022872358978646301

namespace A072442

/-- `A055642(A154331(2*(n+2)))+n` -/
def P8022872358978646301.Spec : Prop :=
  ∀ n, P8022872358978646301.a n = A072442 n

end A072442

/-! ## A072442.P10196990099351690399

`lt[A000005(n+4)², A250561(n+1)]`
-/

namespace A072442.P10196990099351690399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 4) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250561 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072442.P10196990099351690399

namespace A072442

/-- `lt[A000005(n+4)², A250561(n+1)]` -/
def P10196990099351690399.Spec : Prop :=
  ∀ n, (P10196990099351690399.a n : ℤ) = A072442 n

end A072442

/-! ## A072442.P4201564724405664946

`lt[A220377(n+6), A015903(A277320(n+1))]`
-/

namespace A072442.P4201564724405664946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220377 (n + 6)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015903 (A277320 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072442.P4201564724405664946

namespace A072442

/-- `lt[A220377(n+6), A015903(A277320(n+1))]` -/
def P4201564724405664946.Spec : Prop :=
  ∀ n, (P4201564724405664946.a n : ℤ) = A072442 n

end A072442

/-! ## A072442.P17271876304709976874

`lt[A000122(A004736(n+1)), A262917(n+1)]`
-/

namespace A072442.P17271876304709976874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A004736 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072442.P17271876304709976874

namespace A072442

/-- `lt[A000122(A004736(n+1)), A262917(n+1)]` -/
def P17271876304709976874.Spec : Prop :=
  ∀ n, (P17271876304709976874.a n : ℤ) = A072442 n

end A072442

/-! ## A072442.P4849486516467589747

`lt[A000122(A009194(2*(n+2))), A262917(n+1)]`
-/

namespace A072442.P4849486516467589747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 (A009194 (2 * (n + 2))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262917 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072442.P4849486516467589747

namespace A072442

/-- `lt[A000122(A009194(2*(n+2))), A262917(n+1)]` -/
def P4849486516467589747.Spec : Prop :=
  ∀ n, (P4849486516467589747.a n : ℤ) = A072442 n

end A072442

/-!
# A072443: Nonsquares which are the product of two numbers with the same digits (leading zeros are forbidden).

The programs for A072443, there is no canonical definition to state claims against.
-/

/-! ## A072443.P7240949266642967860

`filter[A331221(n+1), A049240(#)]`
-/

namespace A072443.P7240949266642967860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331221 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A049240 (f1 j).toNat = 1) n)

end

end A072443.P7240949266642967860

/-! ## A072443.P6117018300713538007

`A005451(A129623(n+1))`
-/

namespace A072443.P6117018300713538007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005451 (A129623 (n + 1)).toNat

end

end A072443.P6117018300713538007

/-! ## A072443.P6232894805320537648

`A023443(A129623(n+1)+1)`
-/

namespace A072443.P6232894805320537648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A129623 (n + 1) + 1).toNat

end

end A072443.P6232894805320537648

/-! ## A072443.P4947087970905170565

`A060000(A129623(n+1)+1)`
-/

namespace A072443.P4947087970905170565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (A129623 (n + 1) + 1).toNat

end

end A072443.P4947087970905170565

/-! ## A072443.P5925327272733275586

`A199969(A129623(n+1)+1)`
-/

namespace A072443.P5925327272733275586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A129623 (n + 1) + 1).toNat

end

end A072443.P5925327272733275586

/-!
# A072444: Number of subsets S of the power set P{1,2,...,n} such that: {1}, {2},..., {n} are all elements of S; if X and Y are elements of S and X and Y have a nonempty intersection, then the union of X and Y is an element of S. The sets S are counted modulo permutations on the elements 1,2,...,n.

The programs for A072444, there is no canonical definition to state claims against.
-/

/-! ## A072444.P5918676119144894635

`∑[A326899(n)]`
-/

namespace A072444.P5918676119144894635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326899 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072444.P5918676119144894635

/-!
# A072445: Number of subsets S of the power set P{1,2,...,n} such that: {1}, {2},..., {n} are all elements of S; {1,2,...,n} is an element of S; if X and Y are elements of S and X and Y have a nonempty intersection, then the union of X and Y is an element of S. The sets S are counted modulo permutations on the elements 1,2,...,n.

The programs for A072445, there is no canonical definition to state claims against.
-/

/-! ## A072445.P13541751757896827187

`A356311(A000479(n))+ceil((n+1)²/12)`
-/

namespace A072445.P13541751757896827187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356311 (A000479 n).toNat + ⌈((n + 1) ^ 2 : ℚ) / 12⌉

end

end A072445.P13541751757896827187

/-! ## A072445.P6607207676795721985

`A325617(n)+A237765(A335595(n))`
-/

namespace A072445.P6607207676795721985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325617 n + A237765 (A335595 n).toNat

end

end A072445.P6607207676795721985

/-!
# A072446: Number of connectedness systems on n vertices that contain all singletons.

The programs for A072446, there is no canonical definition to state claims against.
-/

/-! ## A072446.P16531860744925679282

`A326866(n)/2^n`
-/

namespace A072446.P16531860744925679282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326866 n : ℚ) / (2 ^ n : ℚ)

end

end A072446.P16531860744925679282

/-! ## A072446.P10566419040533757839

`floor(A326866(n)/A000079(n))`
-/

namespace A072446.P10566419040533757839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326866 n : ℚ) / (A000079 n : ℚ)⌋

end

end A072446.P10566419040533757839

/-! ## A072446.P252701414401486135

`floor(A326866(n)/A117302(n+1))`
-/

namespace A072446.P252701414401486135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A326866 n : ℚ) / (A117302 (n + 1) : ℚ)⌋

end

end A072446.P252701414401486135

/-!
# A072447: Number of connectedness systems on n vertices that contain all singletons and the set of all the vertices.

The programs for A072447, there is no canonical definition to state claims against.
-/

/-! ## A072447.P7187814806549910143

`A326868(n+1)/A373969(n)`
-/

namespace A072447.P7187814806549910143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326868 (n + 1) : ℚ) / (A373969 n : ℚ)

end

end A072447.P7187814806549910143

/-!
# A072448: Squares of the terms of the decimal expansion of Pi.

The programs for A072448, there is no canonical definition to state claims against.
-/

/-! ## A072448.P13637701931875367864

`A000796(n)²`
-/

namespace A072448.P13637701931875367864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) ^ 2

end

end A072448.P13637701931875367864

/-! ## A072448.P15584539655847805030

`(9-A030644(n))²`
-/

namespace A072448.P15584539655847805030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (9 - A030644 (n + 1)) ^ 2

end

end A072448.P15584539655847805030

/-! ## A072448.P13125705534976246497

`(1-A123152(n+1))²`
-/

namespace A072448.P13125705534976246497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A123152 (n + 1)) ^ 2

end

end A072448.P13125705534976246497

/-! ## A072448.P7540301690392516948

`Δ[Δ[A227844(n+1)]]²`
-/

namespace A072448.P7540301690392516948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A072448.P7540301690392516948

/-! ## A072448.P880476768617509757

`A261197(n+1)^(2/3)`
-/

namespace A072448.P880476768617509757
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A261197 (n + 1) : ℝ) ^ ((2 : ℚ) / 3 : ℝ)

end

end A072448.P880476768617509757

/-! ## A072448.P18194021463546441517

`A054846(A261197(n+1))`
-/

namespace A072448.P18194021463546441517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A261197 (n + 1)).toNat

end

end A072448.P18194021463546441517

/-! ## A072448.P8160651916686162489

`(A187747(n)+A001113(n))²`
-/

namespace A072448.P8160651916686162489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A187747 n + A001113 (n + 1)) ^ 2

end

end A072448.P8160651916686162489

/-! ## A072448.P3720670437335453484

`Δ[Δ[A227844(n+1)]]*A000796(n)`
-/

namespace A072448.P3720670437335453484
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000796 (n + 1)

end

end A072448.P3720670437335453484

/-! ## A072448.P7972539971114151735

`A010879(A065253(n+1))²`
-/

namespace A072448.P7972539971114151735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A065253 (n + 1)).toNat ^ 2

end

end A072448.P7972539971114151735

/-! ## A072448.P6449512364180800465

`A001355(Δ[n²])²`
-/

namespace A072448.P6449512364180800465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A072448.P6449512364180800465

/-! ## A072448.P5079779847542487808

`A076790(Δ[n²])²`
-/

namespace A072448.P5079779847542487808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A072448.P5079779847542487808

/-! ## A072448.P8701475097075726420

`A110766(Δ[n²])²`
-/

namespace A072448.P8701475097075726420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2

end

end A072448.P8701475097075726420

/-! ## A072448.P12269845045263008474

`A001355(2*n+1)*A001355(2*n+1)`
-/

namespace A072448.P12269845045263008474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * n + 1) * A001355 (2 * n + 1)

end

end A072448.P12269845045263008474

/-! ## A072448.P11435592001585331216

`A076790(2*n+1)*A076790(2*n+1)`
-/

namespace A072448.P11435592001585331216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (2 * n + 1) * A076790 (2 * n + 1)

end

end A072448.P11435592001585331216

/-! ## A072448.P15780710177237366792

`A110766(2*n+1)*A110766(2*n+1)`
-/

namespace A072448.P15780710177237366792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1) * A110766 (2 * n + 1)

end

end A072448.P15780710177237366792

/-! ## A072448.P3691083572564063938

`Δ[A059582(n)]²`
-/

namespace A072448.P3691083572564063938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2

end

end A072448.P3691083572564063938

/-! ## A072448.P11055520099750214510

`(A059582(n+1)-A059582(n))²`
-/

namespace A072448.P11055520099750214510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A059582 (n + 1) - A059582 n) ^ 2

end

end A072448.P11055520099750214510

/-! ## A072448.P7223685966864973042

`A095709(∑[n]+1)²`
-/

namespace A072448.P7223685966864973042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095709 (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ 2

end

end A072448.P7223685966864973042

/-! ## A072448.P9293164968731176341

`(A097902(∑[n])/3)²`
-/

namespace A072448.P9293164968731176341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A097902 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3) ^ 2

end

end A072448.P9293164968731176341

/-! ## A072448.P3389875682618136977

`A138114(∑[n+1])²`
-/

namespace A072448.P3389875682618136977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138114 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A072448.P3389875682618136977

/-!
# A072450: Continued fraction expansion of the limit of a nested radical, sqrt(1 + sqrt(2 + sqrt(3 + sqrt(4 + ... )))).

The programs for A072450, there is no canonical definition to state claims against.
-/

/-! ## A072450.P8487409990794088650

`gcd(A080782(2*n+1), A080782(A183023(n+1)))`
-/

namespace A072450.P8487409990794088650
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080782 (2 * n + 1)) (A080782 (A183023 (n + 1)).toNat)

end

end A072450.P8487409990794088650

/-! ## A072450.P16759123485562779317

`gcd(A128914(3*n+5), A128918(A000040(n+1)))`
-/

namespace A072450.P16759123485562779317
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A128914 (3 * n + 5)) (A128918 (A000040 (n + 1)).toNat)

end

end A072450.P16759123485562779317

/-!
# A072451: Number of odd terms in the reduced residue system of 2*n-1.

The programs for A072451, the canonical program `A072451.P2994685750961621523` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072451 has offset 1).

The definition of A072451 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072451.P2994685750961621523

`A055034(2*n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A072451

/-- `A055034(2*n+1)` -/
def P2994685750961621523.Spec : Prop :=
  ∀ n, P2994685750961621523.a n = A072451 (n + 1)

theorem P2994685750961621523.correct : P2994685750961621523.Spec := by
  intro n
  simp only [A072451, Nat.add_sub_cancel]

end A072451

/-! ## A072451.P9543644708179236993

`A349136(Δ[n²])`
-/

namespace A072451.P9543644708179236993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349136 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072451.P9543644708179236993

namespace A072451

/-- `A349136(Δ[n²])` -/
def P9543644708179236993.Spec : Prop :=
  ∀ n, P9543644708179236993.a n = A072451 (n + 1)

end A072451

/-! ## A072451.P14843802996334913403

`A349444(Δ[n²])`
-/

namespace A072451.P14843802996334913403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349444 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072451.P14843802996334913403

namespace A072451

/-- `A349444(Δ[n²])` -/
def P14843802996334913403.Spec : Prop :=
  ∀ n, P14843802996334913403.a n = A072451 (n + 1)

end A072451

/-! ## A072451.P7182857895639068044

`ceil(A037225(n)/2)`
-/

namespace A072451.P7182857895639068044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A037225 n : ℚ) / 2⌉

end

end A072451.P7182857895639068044

namespace A072451

/-- `ceil(A037225(n)/2)` -/
def P7182857895639068044.Spec : Prop :=
  ∀ n, P7182857895639068044.a n = A072451 (n + 1)

end A072451

/-! ## A072451.P17771079852798272485

`abs(A349444(2*n+1))`
-/

namespace A072451.P17771079852798272485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A349444 (2 * n + 1)|

end

end A072451.P17771079852798272485

namespace A072451

/-- `abs(A349444(2*n+1))` -/
def P17771079852798272485.Spec : Prop :=
  ∀ n, P17771079852798272485.a n = A072451 (n + 1)

end A072451

/-! ## A072451.P3368119186643470299

`ceil(A000010(Δ[n²])/2)`
-/

namespace A072451.P3368119186643470299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2⌉

end

end A072451.P3368119186643470299

namespace A072451

/-- `ceil(A000010(Δ[n²])/2)` -/
def P3368119186643470299.Spec : Prop :=
  ∀ n, P3368119186643470299.a n = A072451 (n + 1)

end A072451

/-! ## A072451.P14630116509350270354

`ceil(A062570(2*n+1)/2)`
-/

namespace A072451.P14630116509350270354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A062570 (2 * n + 1) : ℚ) / 2⌉

end

end A072451.P14630116509350270354

namespace A072451

/-- `ceil(A062570(2*n+1)/2)` -/
def P14630116509350270354.Spec : Prop :=
  ∀ n, P14630116509350270354.a n = A072451 (n + 1)

end A072451

/-! ## A072451.P12880905887621045604

`round(A000010(2*n+1)/2)`
-/

namespace A072451.P12880905887621045604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000010 (2 * n + 1) : ℚ) / 2)

end

end A072451.P12880905887621045604

namespace A072451

/-- `round(A000010(2*n+1)/2)` -/
def P12880905887621045604.Spec : Prop :=
  ∀ n, P12880905887621045604.a n = A072451 (n + 1)

end A072451

/-! ## A072451.P15408573724373648124

`round(A319997(2*n+1)/2)`
-/

namespace A072451.P15408573724373648124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A319997 (2 * n + 1) : ℚ) / 2)

end

end A072451.P15408573724373648124

namespace A072451

/-- `round(A319997(2*n+1)/2)` -/
def P15408573724373648124.Spec : Prop :=
  ∀ n, P15408573724373648124.a n = A072451 (n + 1)

end A072451

/-! ## A072451.P9626980980244976340

`A349136(2*n+1)%(n+2)`
-/

namespace A072451.P9626980980244976340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A349136 (2 * n + 1)) (n + 2 : ℤ)

end

end A072451.P9626980980244976340

namespace A072451

/-- `A349136(2*n+1)%(n+2)` -/
def P9626980980244976340.Spec : Prop :=
  ∀ n, P9626980980244976340.a n = A072451 (n + 1)

end A072451

/-! ## A072451.P6677986990815791858

`A000010(abs(1-n)+n+2)/2`
-/

namespace A072451.P6677986990815791858
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (|1 - (n : ℤ)| + (n + 2 : ℤ)).toNat : ℚ) / 2

end

end A072451.P6677986990815791858

namespace A072451

/-- `A000010(abs(1-n)+n+2)/2` -/
def P6677986990815791858.Spec : Prop :=
  ∀ n, P6677986990815791858.a n = (A072451 (n + 1) : ℚ)

end A072451

/-! ## A072451.P4088012888159264201

`floor((A000010(n+1+n)+1)/2)`
-/

namespace A072451.P4088012888159264201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1 + n) + 1 : ℚ) / 2⌋

end

end A072451.P4088012888159264201

namespace A072451

/-- `floor((A000010(n+1+n)+1)/2)` -/
def P4088012888159264201.Spec : Prop :=
  ∀ n, P4088012888159264201.a n = A072451 (n + 1)

end A072451

/-! ## A072451.P6266435225657184804

`A037225(n)/A040000(n)`
-/

namespace A072451.P6266435225657184804
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037225 n : ℚ) / (A040000 n : ℚ)

end

end A072451.P6266435225657184804

namespace A072451

/-- `A037225(n)/A040000(n)` -/
def P6266435225657184804.Spec : Prop :=
  ∀ n, P6266435225657184804.a n = (A072451 (n + 1) : ℚ)

end A072451

/-! ## A072451.P3330412628940057833

`(A010051(2*(n+1))+A000010(2*n+1))/2`
-/

namespace A072451.P3330412628940057833
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010051 (2 * (n + 1)) + A000010 (2 * n + 1) : ℚ) / 2

end

end A072451.P3330412628940057833

namespace A072451

/-- `(A010051(2*(n+1))+A000010(2*n+1))/2` -/
def P3330412628940057833.Spec : Prop :=
  ∀ n, P3330412628940057833.a n = (A072451 (n + 1) : ℚ)

end A072451

/-! ## A072451.P5217426814687231524

`gcd(2, A000040(n+1))*A000010(2*n+1)/2`
-/

namespace A072451.P5217426814687231524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Int.gcd 2 (A000040 (n + 1)) : ℤ) * A000010 (2 * n + 1) : ℚ) / 2

end

end A072451.P5217426814687231524

namespace A072451

/-- `gcd(2, A000040(n+1))*A000010(2*n+1)/2` -/
def P5217426814687231524.Spec : Prop :=
  ∀ n, P5217426814687231524.a n = (A072451 (n + 1) : ℚ)

end A072451

/-! ## A072451.P3218065460407119428

`(A000010(2*n+1)+and(1, A000010(n+2)))/2`
-/

namespace A072451.P3218065460407119428
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) + Int.land 1 (A000010 (n + 2)) : ℚ) / 2

end

end A072451.P3218065460407119428

namespace A072451

/-- `(A000010(2*n+1)+and(1, A000010(n+2)))/2` -/
def P3218065460407119428.Spec : Prop :=
  ∀ n, P3218065460407119428.a n = (A072451 (n + 1) : ℚ)

end A072451

/-! ## A072451.P11855938265573358591

`(A000010(2*n+1)+A000045(C(2, n+2)))/2`
-/

namespace A072451.P11855938265573358591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) + A000045 (Nat.choose 2 (n + 2)) : ℚ) / 2

end

end A072451.P11855938265573358591

namespace A072451

/-- `(A000010(2*n+1)+A000045(C(2, n+2)))/2` -/
def P11855938265573358591.Spec : Prop :=
  ∀ n, P11855938265573358591.a n = (A072451 (n + 1) : ℚ)

end A072451

/-! ## A072451.P9057533966810657026

`1/A000032(C(2, n+2))*A000010(2*n+1)`
-/

namespace A072451.P9057533966810657026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A000032 (Nat.choose 2 (n + 2)) : ℚ) * (A000010 (2 * n + 1) : ℚ)

end

end A072451.P9057533966810657026

namespace A072451

/-- `1/A000032(C(2, n+2))*A000010(2*n+1)` -/
def P9057533966810657026.Spec : Prop :=
  ∀ n, P9057533966810657026.a n = (A072451 (n + 1) : ℚ)

end A072451

/-! ## A072451.P15847301072758172337

`(A000010(2*n+1)+C(A000010(n+1), n+1))/2`
-/

namespace A072451.P15847301072758172337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (2 * n + 1) + (Nat.choose (A000010 (n + 1)).toNat (n + 1) : ℤ) : ℚ) / 2

end

end A072451.P15847301072758172337

namespace A072451

/-- `(A000010(2*n+1)+C(A000010(n+1), n+1))/2` -/
def P15847301072758172337.Spec : Prop :=
  ∀ n, P15847301072758172337.a n = (A072451 (n + 1) : ℚ)

end A072451

/-! ## A072451.P17722429618737956549

`n+1-A359164(Δ[n²])`
-/

namespace A072451.P17722429618737956549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A359164 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A072451.P17722429618737956549

namespace A072451

/-- `n+1-A359164(Δ[n²])` -/
def P17722429618737956549.Spec : Prop :=
  ∀ n, P17722429618737956549.a n = A072451 (n + 1)

end A072451

/-! ## A072451.P10439603685344483539

`∑{#}[n, floor(1/gcd(2*(n+1)-(#+1), #))]`
-/

namespace A072451.P10439603685344483539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ⌊1 / (Int.gcd ((2 * (n + 1) : ℤ) - (k + 1 : ℤ)) (k : ℤ) : ℚ)⌋

end

end A072451.P10439603685344483539

namespace A072451

/-- `∑{#}[n, floor(1/gcd(2*(n+1)-(#+1), #))]` -/
def P10439603685344483539.Spec : Prop :=
  ∀ n, P10439603685344483539.a n = A072451 (n + 1)

end A072451

/-!
# A072452: a(n) = reversal(a(n-1)+n) for n>0, a(0) = 0.

The programs for A072452, there is no canonical definition to state claims against.
-/

/-! ## A072452.P6272524936557054003

`A004086(a(n-1)+n)` with `a(0)=0`
-/

namespace A072452.P6272524936557054003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004086 (a (n - 1) + (n : ℤ)).toNat

end

end A072452.P6272524936557054003

/-! ## A072452.P15565256012677060370

`A004086(n-floor(-a(n-1)))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A072452.P15565256012677060370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004086 ((n : ℤ) - (-a (n - 1))).toNat

end

end A072452.P15565256012677060370

/-! ## A072452.P11595973436911128300

`A004086(n+a(A023443(n)))` with `a(0)=0`
-/

namespace A072452.P11595973436911128300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004086 ((n : ℤ) + a (A023443 n).toNat).toNat

end

end A072452.P11595973436911128300

/-! ## A072452.P13107788802847629453

`a(n-1)+n-A056965(a(n-1)+n)` with `a(0)=0`
-/

namespace A072452.P13107788802847629453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n : ℤ) - A056965 (a (n - 1) + (n : ℤ)).toNat

end

end A072452.P13107788802847629453

/-! ## A072452.P3461351722811179435

`A135020(2*(a(n-1)+n))` with `a(0)=0`
-/

namespace A072452.P3461351722811179435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A135020 (2 * (a (n - 1) + (n : ℤ))).toNat

end

end A072452.P3461351722811179435

/-! ## A072452.P3854846783210907283

`A004093(A008706(a(n-1)+n))` with `a(0)=0`
-/

namespace A072452.P3854846783210907283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004093 (A008706 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A072452.P3854846783210907283

/-! ## A072452.P2004626139577769833

`A135020(A005843(a(n-1)+n))` with `a(0)=0`
-/

namespace A072452.P2004626139577769833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A135020 (A005843 (a (n - 1) + (n : ℤ)).toNat).toNat

end

end A072452.P2004626139577769833

/-! ## A072452.P12628308603748945114

`A103168(10*(a(n-1)+n))` with `a(0)=0`
-/

namespace A072452.P12628308603748945114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A103168 (10 * (a (n - 1) + (n : ℤ))).toNat

end

end A072452.P12628308603748945114

/-!
# A072453: Shadow transform of A000522.

The programs for A072453, there is no canonical definition to state claims against.
-/

/-! ## A072453.P5760112739753125363

`A338753(A366375(n))`
-/

namespace A072453.P5760112739753125363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338753 (A366375 n).toNat

end

end A072453.P5760112739753125363

/-! ## A072453.P4954929369542041349

`A056674(A286375(n)+2)`
-/

namespace A072453.P4954929369542041349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (A286375 n + 2).toNat

end

end A072453.P4954929369542041349

/-! ## A072453.P17882168291467110519

`A056674(A278222(A000578(n))+2)`
-/

namespace A072453.P17882168291467110519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056674 (A278222 (A000578 n).toNat + 2).toNat

end

end A072453.P17882168291467110519

/-! ## A072453.P2709263192490756773

`and(A000120(n), A006984(A301333(n)))`
-/

namespace A072453.P2709263192490756773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 n) (A006984 (A301333 n).toNat)

end

end A072453.P2709263192490756773

/-! ## A072453.P536805393526275648

`and(A000120(n), A190549(A286375(n)))`
-/

namespace A072453.P536805393526275648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000120 n) (A190549 (A286375 n).toNat)

end

end A072453.P536805393526275648

/-!
# A072454: Number of nontotients in the reduced residue system of 2n-1.

The programs for A072454, there is no canonical definition to state claims against.
-/

/-! ## A072454.P13259601913445327766

`A072106(2*n+1)`
-/

namespace A072454.P13259601913445327766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072106 (2 * n + 1)

end

end A072454.P13259601913445327766

/-! ## A072454.P13965707449989179702

`A037225(n)-A072455(n+1)`
-/

namespace A072454.P13965707449989179702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n - A072455 (n + 1)

end

end A072454.P13965707449989179702

/-! ## A072454.P3133509282972331393

`A000010(Δ[n²])-A072455(n+1)`
-/

namespace A072454.P3133509282972331393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A072455 (n + 1)

end

end A072454.P3133509282972331393

/-! ## A072454.P761774570282971066

`A062570(Δ[n²])-A072455(n+1)`
-/

namespace A072454.P761774570282971066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A072455 (n + 1)

end

end A072454.P761774570282971066

/-! ## A072454.P16618280030099179211

`A325596(Δ[n²])-A072455(n+1)`
-/

namespace A072454.P16618280030099179211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325596 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A072455 (n + 1)

end

end A072454.P16618280030099179211

/-! ## A072454.P7847220444170930013

`A062771(2*n+1)-A072455(n+1)`
-/

namespace A072454.P7847220444170930013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062771 (2 * n + 1) - A072455 (n + 1)

end

end A072454.P7847220444170930013

/-! ## A072454.P8351811185421363913

`A326305(2*n+1)-A072455(n+1)`
-/

namespace A072454.P8351811185421363913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326305 (2 * n + 1) - A072455 (n + 1)

end

end A072454.P8351811185421363913

/-! ## A072454.P3622488240130876958

`A177066(n+1)/A177066(n)-A072455(n+1)`
-/

namespace A072454.P3622488240130876958
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177066 (n + 1) : ℚ) / (A177066 n : ℚ) - (A072455 (n + 1) : ℚ)

end

end A072454.P3622488240130876958

/-!
# A072455: Number of totients in the reduced residue system of 2n-1.

The programs for A072455, there is no canonical definition to state claims against.
-/

/-! ## A072455.P18333040435259813174

`A000010(2*(n+1)-1)-A072454(n+1)`
-/

namespace A072455.P18333040435259813174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * (n + 1) - 1) - A072454 (n + 1)

end

end A072455.P18333040435259813174

/-! ## A072455.P13719654530187789616

`A037225(n)-A072454(n+1)`
-/

namespace A072455.P13719654530187789616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n - A072454 (n + 1)

end

end A072455.P13719654530187789616

/-! ## A072455.P9402410912428558051

`A062570(Δ[n²])-A072454(n+1)`
-/

namespace A072455.P9402410912428558051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A072454 (n + 1)

end

end A072455.P9402410912428558051

/-! ## A072455.P3532498351482123605

`A319997(Δ[n²])-A072454(n+1)`
-/

namespace A072455.P3532498351482123605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319997 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A072454 (n + 1)

end

end A072455.P3532498351482123605

/-! ## A072455.P14555026359856877567

`abs(A000010(2*n+1)-A072454(n+1))`
-/

namespace A072455.P14555026359856877567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000010 (2 * n + 1) - A072454 (n + 1)|

end

end A072455.P14555026359856877567

/-! ## A072455.P13093483221786120823

`A037225(n)-A072106(2*n+1)`
-/

namespace A072455.P13093483221786120823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n - A072106 (2 * n + 1)

end

end A072455.P13093483221786120823

/-! ## A072455.P13259100601755364481

`A325596(2*n+1)-A072454(n+1)`
-/

namespace A072455.P13259100601755364481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325596 (2 * n + 1) - A072454 (n + 1)

end

end A072455.P13259100601755364481

/-! ## A072455.P11107297576232368840

`A000010(2*n+1)-A072106(2*n+1)`
-/

namespace A072455.P11107297576232368840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (2 * n + 1) - A072106 (2 * n + 1)

end

end A072455.P11107297576232368840

/-! ## A072455.P12652981497266919240

`A062570(2*n+1)-A072106(2*n+1)`
-/

namespace A072455.P12652981497266919240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (2 * n + 1) - A072106 (2 * n + 1)

end

end A072455.P12652981497266919240

/-!
# A072456: Annihilating primes for A000522.

The programs for A072456, there is no canonical definition to state claims against.
-/

/-! ## A072456.P15983704660409665331

`p?[eq[0, A072453(n)]]`
-/

namespace A072456.P15983704660409665331
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072453 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A072456.P15983704660409665331

/-! ## A072456.P13065297568223051748

`p?[n*A072453(A072453(n)+8)]`
-/

namespace A072456.P13065297568223051748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A072453 (A072453 n + 8).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072456.P13065297568223051748

/-! ## A072456.P3789867845767234286

`p?[n-lcm(A028392(n), A072453(n))]`
-/

namespace A072456.P3789867845767234286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Int.lcm (A028392 n) (A072453 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072456.P3789867845767234286

/-! ## A072456.P11502497499315120010

`p?[gcd(n+1, A072453(A020639(n+1)))]`
-/

namespace A072456.P11502497499315120010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A072453 (A020639 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A072456.P11502497499315120010

/-! ## A072456.P130479446301856617

`p?[lcm(n+1, A310721(A072453(n+1)))]`
-/

namespace A072456.P130479446301856617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A310721 (A072453 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A072456.P130479446301856617

/-! ## A072456.P6585919730465847578

`p?[lcm(n, A310721(A072453(n)²))]`
-/

namespace A072456.P6585919730465847578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A310721 (A072453 n ^ 2).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A072456.P6585919730465847578

/-!
# A072457: Shadow transform of tetrahedral numbers A000292.

The programs for A072457, there is no canonical definition to state claims against.
-/

/-! ## A072457.P14684090939366667158

`A144871(∑[n+2]-1)%(n+1)`
-/

namespace A072457.P14684090939366667158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A144871 (∑ j ∈ Finset.range (n + 1), f1 j - 1)) (n + 1 : ℤ)

end

end A072457.P14684090939366667158

/-! ## A072457.P5895332276766625625

`A144871(A034856(n+1))-floor(acot(n))`
-/

namespace A072457.P5895332276766625625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (A034856 (n + 1)).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A072457.P5895332276766625625

/-! ## A072457.P17344064016499851557

`A144871(∑[n+2]-1)-A000007(n)`
-/

namespace A072457.P17344064016499851557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A000007 n

end

end A072457.P17344064016499851557

/-! ## A072457.P13011366961011135546

`A057427(n)*A144871(∑[n+2]-1)`
-/

namespace A072457.P13011366961011135546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A144871 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A072457.P13011366961011135546

/-! ## A072457.P16888323520937598992

`A057428(n)²*A144871(∑[n+2]-1)`
-/

namespace A072457.P16888323520937598992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2 * A144871 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A072457.P16888323520937598992

/-! ## A072457.P1627348973912405182

`log2(A040000(n))*A144871(∑[n+2]-1)`
-/

namespace A072457.P1627348973912405182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040000 n : ℝ) * (A144871 (∑ j ∈ Finset.range (n + 1), f1 j - 1) : ℝ)

end

end A072457.P1627348973912405182

/-! ## A072457.P3316381353837919478

`and(1, A000040(n+1))*A144871(∑[n+2]-1)`
-/

namespace A072457.P3316381353837919478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A000040 (n + 1)) * A144871 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A072457.P3316381353837919478

/-! ## A072457.P12394084226509840852

`A144871(∑[n+2]-1)-A000045(C(2, n+2))`
-/

namespace A072457.P12394084226509840852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A000045 (Nat.choose 2 (n + 2))

end

end A072457.P12394084226509840852

/-! ## A072457.P3612788491394158096

`A144871(∑[n+2]-1)+A008683(2*(n+1)²)`
-/

namespace A072457.P3612788491394158096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (∑ j ∈ Finset.range (n + 1), f1 j - 1) + A008683 (2 * (n + 1) ^ 2)

end

end A072457.P3612788491394158096

/-! ## A072457.P10067416850826251434

`A144871(∑[n+2]-1)-A001222(A014963(4*n+2))`
-/

namespace A072457.P10067416850826251434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144871 (∑ j ∈ Finset.range (n + 1), f1 j - 1) - A001222 (A014963 (4 * n + 2)).toNat

end

end A072457.P10067416850826251434

/-!
# A072458: Shadow transform of Catalan numbers A000108.

The programs for A072458, there is no canonical definition to state claims against.
-/

/-! ## A072458.P6362858325902488208

`A040076(A261982(n)+A014442(n+1))`
-/

namespace A072458.P6362858325902488208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040076 (A261982 n + A014442 (n + 1)).toNat

end

end A072458.P6362858325902488208

/-! ## A072458.P12637939139848377596

`and(A001221(A152548(n)), A195839(n+1))`
-/

namespace A072458.P12637939139848377596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001221 (A152548 n).toNat) (A195839 (n + 1))

end

end A072458.P12637939139848377596

/-! ## A072458.P9293185375788157397

`and(A233330(3*(n+1)), A357975(A268335(n+1)))`
-/

namespace A072458.P9293185375788157397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A233330 (3 * (n + 1))) (A357975 (A268335 (n + 1)).toNat)

end

end A072458.P9293185375788157397

/-! ## A072458.P17566094432663985282

`and(A049513(n), A347742(A347742(n)))`
-/

namespace A072458.P17566094432663985282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A049513 n) (A347742 (A347742 n).toNat)

end

end A072458.P17566094432663985282

/-! ## A072458.P7553769077930873895

`A243148(or(A213891(3*n+1), A332287(3*n+4)))`
-/

namespace A072458.P7553769077930873895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243148 (Int.lor (A213891 (3 * n + 1)) (A332287 (3 * n + 4))).toNat

end

end A072458.P7553769077930873895

/-!
# A072459: Largest prime divisor of even nontotients.

The programs for A072459, the canonical program `A072459.P15882184568483572984` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072459 has offset 1).

The definition of A072459 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005277, A006530, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A072459.P15882184568483572984

`A006530(A005277(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A072459

/-- `A006530(A005277(n+1))` -/
def P15882184568483572984.Spec : Prop :=
  ∀ n, P15882184568483572984.a n = A072459 (n + 1)

theorem P15882184568483572984.correct : P15882184568483572984.Spec := by
  intro n
  simp only [A072459, Nat.add_sub_cancel]

end A072459

/-! ## A072459.P4675411137098698884

`A006530(A079695(n+1))`
-/

namespace A072459.P4675411137098698884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A079695 (n + 1)).toNat

end

end A072459.P4675411137098698884

namespace A072459

/-- `A006530(A079695(n+1))` -/
def P4675411137098698884.Spec : Prop :=
  ∀ n, P4675411137098698884.a n = A072459 (n + 1)

end A072459

/-! ## A072459.P10441213614872914692

`A006530(A079697(n+1))`
-/

namespace A072459.P10441213614872914692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A079697 (n + 1)).toNat

end

end A072459.P10441213614872914692

namespace A072459

/-- `A006530(A079697(n+1))` -/
def P10441213614872914692.Spec : Prop :=
  ∀ n, P10441213614872914692.a n = A072459 (n + 1)

end A072459

/-! ## A072459.P17485988034604362744

`A006530(comp[floor(A000010(n+1)/2)])`
-/

namespace A072459.P17485988034604362744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000010 (n + 1) : ℚ) / 2⌋

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A072459.P17485988034604362744

namespace A072459

/-- `A006530(comp[floor(A000010(n+1)/2)])` -/
def P17485988034604362744.Spec : Prop :=
  ∀ n, P17485988034604362744.a n = A072459 (n + 1)

end A072459

/-! ## A072459.P2951398352575533715

`A006530(eq[1, A071615(n+1)]+1)`
-/

namespace A072459.P2951398352575533715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071615 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A072459.P2951398352575533715

namespace A072459

/-- `A006530(eq[1, A071615(n+1)]+1)` -/
def P2951398352575533715.Spec : Prop :=
  ∀ n, P2951398352575533715.a n = A072459 (n + 1)

end A072459

/-! ## A072459.P8982083614114798307

`p?[A006530(2*(n+1))*A322310(2*(n+1))]`
-/

namespace A072459.P8982083614114798307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * (n + 1)) * A322310 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072459.P8982083614114798307

namespace A072459

/-- `p?[A006530(2*(n+1))*A322310(2*(n+1))]` -/
def P8982083614114798307.Spec : Prop :=
  ∀ n, P8982083614114798307.a n = A072459 (n + 1)

end A072459

/-! ## A072459.P12872050128226354983

`A006530(A307854(n+2)-1)`
-/

namespace A072459.P12872050128226354983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A307854 (n + 2) - 1).toNat

end

end A072459.P12872050128226354983

namespace A072459

/-- `A006530(A307854(n+2)-1)` -/
def P12872050128226354983.Spec : Prop :=
  ∀ n, P12872050128226354983.a n = A072459 (n + 1)

end A072459

/-! ## A072459.P2545683378744061373

`A006530(A004442(A307854(n+2)))`
-/

namespace A072459.P2545683378744061373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A004442 (A307854 (n + 2)).toNat).toNat

end

end A072459.P2545683378744061373

namespace A072459

/-- `A006530(A004442(A307854(n+2)))` -/
def P2545683378744061373.Spec : Prop :=
  ∀ n, P2545683378744061373.a n = A072459 (n + 1)

end A072459

/-!
# A072460: Smallest even nontotient number whose largest prime divisor equals the n-th prime.

The programs for A072460, there is no canonical definition to state claims against.
-/

/-! ## A072460.P39880608188149579

`A071616(p?[2*n+5])`
-/

namespace A072460.P39880608188149579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071616 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A072460.P39880608188149579

/-! ## A072460.P13068725420762828130

`A071616(A215848(n+1))`
-/

namespace A072460.P13068725420762828130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071616 (A215848 (n + 1)).toNat

end

end A072460.P13068725420762828130

/-! ## A072460.P10271930022727558261

`A071616(A045344(n+2))`
-/

namespace A072460.P10271930022727558261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071616 (A045344 (n + 2)).toNat

end

end A072460.P10271930022727558261

/-! ## A072460.P15420166996961529324

`A071616(A065091(n+2))`
-/

namespace A072460.P15420166996961529324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071616 (A065091 (n + 2)).toNat

end

end A072460.P15420166996961529324

/-! ## A072460.P1202825607467330893

`A071616(A140475(n+2))`
-/

namespace A072460.P1202825607467330893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071616 (A140475 (n + 2)).toNat

end

end A072460.P1202825607467330893

/-! ## A072460.P13913853363678101072

`A071616(A000040(n+3))`
-/

namespace A072460.P13913853363678101072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071616 (A000040 (n + 3)).toNat

end

end A072460.P13913853363678101072

/-! ## A072460.P14479551646610228729

`A071616(record[A006530(A017329(n))])`
-/

namespace A072460.P14479551646610228729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A017329 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071616 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072460.P14479551646610228729

/-! ## A072460.P2646504301002478463

`A071616(A151800(p?[A247328(n+1)]))`
-/

namespace A072460.P2646504301002478463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071616 (A151800 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A072460.P2646504301002478463

/-! ## A072460.P13064040510215023461

`A071616(A136548(p?[A267873(n)]))`
-/

namespace A072460.P13064040510215023461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071616 (A136548 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A072460.P13064040510215023461

/-!
# A072461: Numbers k such that sigma(k) == 1 (mod 4).

The programs for A072461, the canonical program `A072461.P3037339602671730277` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072461 has offset 1).

The definition of A072461 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4895 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072461.P3037339602671730277

`A028982(eq[1, A152677(n+1)%4]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072461

/-- `A028982(eq[1, A152677(n+1)%4]+1)` -/
def P3037339602671730277.Spec : Prop :=
  ∀ n, P3037339602671730277.a n = A072461 (n + 1)

theorem P3037339602671730277.correct : P3037339602671730277.Spec := by
  intro n
  simp only [A072461, Nat.add_sub_cancel]

end A072461

/-! ## A072461.P11280120831687346170

`eq[1, val(A000203(n+1)+1, 2)]+1`
-/

namespace A072461.P11280120831687346170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (n + 1) + 1).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A072461.P11280120831687346170

namespace A072461

/-- `eq[1, val(A000203(n+1)+1, 2)]+1` -/
def P11280120831687346170.Spec : Prop :=
  ∀ n, (P11280120831687346170.a n : ℤ) = A072461 (n + 1)

end A072461

/-! ## A072461.P13272559801754736508

`eq[1, A105824(n+1)]+1`
-/

namespace A072461.P13272559801754736508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072461.P13272559801754736508

namespace A072461

/-- `eq[1, A105824(n+1)]+1` -/
def P13272559801754736508.Spec : Prop :=
  ∀ n, (P13272559801754736508.a n : ℤ) = A072461 (n + 1)

end A072461

/-! ## A072461.P2049527113289375990

`eq[8, and(24, A006352(n))]`
-/

namespace A072461.P2049527113289375990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 24 (A006352 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072461.P2049527113289375990

namespace A072461

/-- `eq[8, and(24, A006352(n))]` -/
def P2049527113289375990.Spec : Prop :=
  ∀ n, (P2049527113289375990.a n : ℤ) = A072461 (n + 1)

end A072461

/-! ## A072461.P323115525097169318

`eq[A000038(n), A010873(A039653(n))]`
-/

namespace A072461.P323115525097169318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072461.P323115525097169318

namespace A072461

/-- `eq[A000038(n), A010873(A039653(n))]` -/
def P323115525097169318.Spec : Prop :=
  ∀ n, (P323115525097169318.a n : ℤ) = A072461 (n + 1)

end A072461

/-! ## A072461.P8634337597341048537

`eq[n, A028310(n)*A105824(A028310(n))]`
-/

namespace A072461.P8634337597341048537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A105824 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072461.P8634337597341048537

namespace A072461

/-- `eq[n, A028310(n)*A105824(A028310(n))]` -/
def P8634337597341048537.Spec : Prop :=
  ∀ n, (P8634337597341048537.a n : ℤ) = A072461 (n + 1)

end A072461

/-! ## A072461.P5059020871926487870

`eq[A009001(A039653(n)), A054977(n)]`
-/

namespace A072461.P5059020871926487870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072461.P5059020871926487870

namespace A072461

/-- `eq[A009001(A039653(n)), A054977(n)]` -/
def P5059020871926487870.Spec : Prop :=
  ∀ n, (P5059020871926487870.a n : ℤ) = A072461 (n + 1)

end A072461

/-! ## A072461.P508865499687824618

`eq[A009001(A039653(n)), A057427(n)]`
-/

namespace A072461.P508865499687824618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A039653 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072461.P508865499687824618

namespace A072461

/-- `eq[A009001(A039653(n)), A057427(n)]` -/
def P508865499687824618.Spec : Prop :=
  ∀ n, (P508865499687824618.a n : ℤ) = A072461 (n + 1)

end A072461

/-!
# A072462: Numbers k such that sigma(k) == 3 (mod 4).

The programs for A072462, the canonical program `A072462.P1277985972236002111` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072462 has offset 1).

The definition of A072462 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072462.P1277985972236002111

`A028982(eq[3, A152677(n+1)%4]+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072462

/-- `A028982(eq[3, A152677(n+1)%4]+1)` -/
def P1277985972236002111.Spec : Prop :=
  ∀ n, P1277985972236002111.a n = A072462 (n + 1)

theorem P1277985972236002111.correct : P1277985972236002111.Spec := by
  intro n
  simp only [A072462, Nat.add_sub_cancel]

end A072462

/-! ## A072462.P4746937711069255370

`eq[3, and(3, A000203(n+1))]+1`
-/

namespace A072462.P4746937711069255370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A000203 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072462.P4746937711069255370

namespace A072462

/-- `eq[3, and(3, A000203(n+1))]+1` -/
def P4746937711069255370.Spec : Prop :=
  ∀ n, (P4746937711069255370.a n : ℤ) = A072462 (n + 1)

end A072462

/-! ## A072462.P12867615649098782121

`lt[2, A105824(n+1)]+1`
-/

namespace A072462.P12867615649098782121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105824 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072462.P12867615649098782121

namespace A072462

/-- `lt[2, A105824(n+1)]+1` -/
def P12867615649098782121.Spec : Prop :=
  ∀ n, (P12867615649098782121.a n : ℤ) = A072462 (n + 1)

end A072462

/-! ## A072462.P1435804982180713958

`lt[2, (A001065(n+1)+n+1)%4]+1`
-/

namespace A072462.P1435804982180713958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001065 (n + 1) + (n + 1 : ℤ)) 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072462.P1435804982180713958

namespace A072462

/-- `lt[2, (A001065(n+1)+n+1)%4]+1` -/
def P1435804982180713958.Spec : Prop :=
  ∀ n, (P1435804982180713958.a n : ℤ) = A072462 (n + 1)

end A072462

/-! ## A072462.P8789795730215869059

`eq[2, A010873(A039653(n))]`
-/

namespace A072462.P8789795730215869059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072462.P8789795730215869059

namespace A072462

/-- `eq[2, A010873(A039653(n))]` -/
def P8789795730215869059.Spec : Prop :=
  ∀ n, (P8789795730215869059.a n : ℤ) = A072462 (n + 1)

end A072462

/-! ## A072462.P14651133269962316130

`eq[3, A105824(A028310(n))]`
-/

namespace A072462.P14651133269962316130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105824 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072462.P14651133269962316130

namespace A072462

/-- `eq[3, A105824(A028310(n))]` -/
def P14651133269962316130.Spec : Prop :=
  ∀ n, (P14651133269962316130.a n : ℤ) = A072462 (n + 1)

end A072462

/-! ## A072462.P2480637532799656104

`eq[24, and(24, A006352(n))]`
-/

namespace A072462.P2480637532799656104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 24 (A006352 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072462.P2480637532799656104

namespace A072462

/-- `eq[24, and(24, A006352(n))]` -/
def P2480637532799656104.Spec : Prop :=
  ∀ n, (P2480637532799656104.a n : ℤ) = A072462 (n + 1)

end A072462

/-! ## A072462.P7183196135012671442

`eq[1, A009001(A039653(n)+2)]`
-/

namespace A072462.P7183196135012671442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (A039653 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072462.P7183196135012671442

namespace A072462

/-- `eq[1, A009001(A039653(n)+2)]` -/
def P7183196135012671442.Spec : Prop :=
  ∀ n, (P7183196135012671442.a n : ℤ) = A072462 (n + 1)

end A072462

/-! ## A072462.P18058559612363798290

`eq[2, A054977(n)-A009001(A039653(n))]`
-/

namespace A072462.P18058559612363798290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n - A009001 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072462.P18058559612363798290

namespace A072462

/-- `eq[2, A054977(n)-A009001(A039653(n))]` -/
def P18058559612363798290.Spec : Prop :=
  ∀ n, (P18058559612363798290.a n : ℤ) = A072462 (n + 1)

end A072462

/-! ## A072462.P5289772475336464021

`eq[2, A057427(n)-A009001(A039653(n))]`
-/

namespace A072462.P5289772475336464021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A009001 (A039653 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072462.P5289772475336464021

namespace A072462

/-- `eq[2, A057427(n)-A009001(A039653(n))]` -/
def P5289772475336464021.Spec : Prop :=
  ∀ n, (P5289772475336464021.a n : ℤ) = A072462 (n + 1)

end A072462

/-!
# A072463: Shadow transform of sigma(n), A000203, starting with 0, sigma(1), sigma(2), ...

The programs for A072463, there is no canonical definition to state claims against.
-/

/-! ## A072463.P15290552599890042392

`A001222(or(A022300(2*(n+1)), A086893(n+1)))`
-/

namespace A072463.P15290552599890042392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.lor (A022300 (2 * (n + 1))) (A086893 (n + 1))).toNat

end

end A072463.P15290552599890042392

/-! ## A072463.P2332943803735327402

`A048272(A000040(n+1)^val(A144540(2*n+1)+1, 2))`
-/

namespace A072463.P2332943803735327402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048272 (A000040 (n + 1) ^ SequenceMachineLib.valuation (A144540 (2 * n + 1) + 1).toNat 2).toNat

end

end A072463.P2332943803735327402

/-! ## A072463.P4163329914421895281

`A092523(A185083(n)+A007088(n))`
-/

namespace A072463.P4163329914421895281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092523 (A185083 n + A007088 n).toNat

end

end A072463.P4163329914421895281

/-! ## A072463.P2979077748183956014

`A175078(A246517(n+1)+A036497(n))`
-/

namespace A072463.P2979077748183956014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175078 (A246517 (n + 1) + A036497 n).toNat

end

end A072463.P2979077748183956014

/-!
# A072464: Code word lengths for non-redundant MML code for positive integers.

The programs for A072464, the canonical program `A072464.P9450388406469305649` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072464 has offset 1).

The definition of A072464 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072464.P18429687256730074085

`∑[A255308(1+n)]`
-/

namespace A072464.P18429687256730074085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255308 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072464.P18429687256730074085

namespace A072464

/-- `∑[A255308(1+n)]` -/
def P18429687256730074085.Spec : Prop :=
  ∀ n, P18429687256730074085.a n = A072464 (n + 1)

end A072464

/-! ## A072464.P10052127996301648289

`floor(log2(A010097(n+1)))`
-/

namespace A072464.P10052127996301648289
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A010097 (n + 1)).toNat

end

end A072464.P10052127996301648289

namespace A072464

/-- `floor(log2(A010097(n+1)))` -/
def P10052127996301648289.Spec : Prop :=
  ∀ n, (P10052127996301648289.a n : ℤ) = A072464 (n + 1)

end A072464

/-! ## A072464.P6663036441785581748

`ceil(log2(A028432(n+1)))`
-/

namespace A072464.P6663036441785581748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A028432 (n + 1) : ℝ)⌉

end

end A072464.P6663036441785581748

namespace A072464

/-- `ceil(log2(A028432(n+1)))` -/
def P6663036441785581748.Spec : Prop :=
  ∀ n, P6663036441785581748.a n = A072464 (n + 1)

end A072464

/-! ## A072464.P9450388406469305649

`A292046(ceil(log2(n+2)))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072464

/-- `A292046(ceil(log2(n+2)))` -/
def P9450388406469305649.Spec : Prop :=
  ∀ n, P9450388406469305649.a n = A072464 (n + 1)

theorem P9450388406469305649.correct : P9450388406469305649.Spec := by
  intro n
  simp only [A072464, Nat.add_sub_cancel]

end A072464

/-! ## A072464.P5036703428675908724

`∑[A293668(n+1)-1]`
-/

namespace A072464.P5036703428675908724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293668 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072464.P5036703428675908724

namespace A072464

/-- `∑[A293668(n+1)-1]` -/
def P5036703428675908724.Spec : Prop :=
  ∀ n, P5036703428675908724.a n = A072464 (n + 1)

end A072464

/-! ## A072464.P3168850785372916512

`a(n-1)+A165471(n+1)*A255308(n+1)` with `a(0)=1`
-/

namespace A072464.P3168850785372916512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A165471 (n + 1) * A255308 (n + 1)

end

end A072464.P3168850785372916512

namespace A072464

/-- `a(n-1)+A165471(n+1)*A255308(n+1)` -/
def P3168850785372916512.Spec : Prop :=
  ∀ n, P3168850785372916512.a n = A072464 (n + 1)

end A072464

/-! ## A072464.P5238622961947944873

`A292046(n+2)-(n+2)`
-/

namespace A072464.P5238622961947944873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292046 (n + 2) - (n + 2 : ℤ)

end

end A072464.P5238622961947944873

namespace A072464

/-- `A292046(n+2)-(n+2)` -/
def P5238622961947944873.Spec : Prop :=
  ∀ n, P5238622961947944873.a n = A072464 (n + 1)

end A072464

/-! ## A072464.P14329072055568799400

`A029837(A028432(n+1))`
-/

namespace A072464.P14329072055568799400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A028432 (n + 1)).toNat

end

end A072464.P14329072055568799400

namespace A072464

/-- `A029837(A028432(n+1))` -/
def P14329072055568799400.Spec : Prop :=
  ∀ n, P14329072055568799400.a n = A072464 (n + 1)

end A072464

/-! ## A072464.P13149463279904733681

`A070939(A028423(n+1))`
-/

namespace A072464.P13149463279904733681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A028423 (n + 1)).toNat

end

end A072464.P13149463279904733681

namespace A072464

/-- `A070939(A028423(n+1))` -/
def P13149463279904733681.Spec : Prop :=
  ∀ n, P13149463279904733681.a n = A072464 (n + 1)

end A072464

/-! ## A072464.P9000293815405667539

`A070939(A281223(n+1))`
-/

namespace A072464.P9000293815405667539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A281223 (n + 1)).toNat

end

end A072464.P9000293815405667539

namespace A072464

/-- `A070939(A281223(n+1))` -/
def P9000293815405667539.Spec : Prop :=
  ∀ n, P9000293815405667539.a n = A072464 (n + 1)

end A072464

/-!
# A072465: A Fibonacci-like model in which each pair of rabbits dies after the birth of their 4th litter: a(n) = a(n-2) + a(n-3) + a(n-4) + a(n-5).

The programs for A072465, the canonical program `A072465.P1620774437948209727` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072465 has offset 0).

The definition of A072465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-2)+a(n-3)+a(n-4)+a(n-5)` (program `A072465.P1620774437948209727`, by `A072465.P1620774437948209727.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072465.P11244787646564454128

`a(n-1)+a(n-2)-a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5`
-/

namespace A072465.P11244787646564454128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 5] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 6)

end

end A072465.P11244787646564454128

namespace A072465

/-- `a(n-1)+a(n-2)-a(n-6)` -/
def P11244787646564454128.Spec : Prop :=
  ∀ n, P11244787646564454128.a n = A072465 n

end A072465

/-! ## A072465.P1620774437948209727

`a(n-2)+a(n-3)+a(n-4)+a(n-5)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A072465

/-- `a(n-2)+a(n-3)+a(n-4)+a(n-5)` -/
def P1620774437948209727.Spec : Prop :=
  ∀ n, (P1620774437948209727.a n : ℤ) = A072465 n

theorem P1620774437948209727.correct : P1620774437948209727.Spec := by
  intro n
  simp only [A072465]

end A072465

/-! ## A072465.P2301208307756361961

`ogf((-1-x)/(-1+x^2+x^3+x^4+x^5))`
-/

namespace A072465.P2301208307756361961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, 0, -1, -1, -1, -1] n

end

end A072465.P2301208307756361961

namespace A072465

/-- `ogf((-1-x)/(-1+x^2+x^3+x^4+x^5))` -/
def P2301208307756361961.Spec : Prop :=
  ∀ n, P2301208307756361961.a n = A072465 n

end A072465

/-! ## A072465.P3121925524506084273

`A013982(abs(1-n))+A013982(n)`
-/

namespace A072465.P3121925524506084273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013982 |1 - (n : ℤ)|.toNat + A013982 n

end

end A072465.P3121925524506084273

namespace A072465

/-- `A013982(abs(1-n))+A013982(n)` -/
def P3121925524506084273.Spec : Prop :=
  ∀ n, P3121925524506084273.a n = A072465 n

end A072465

/-! ## A072465.P1914375208227168083

`∑[-Δ[A013982(n)-A047084(n)]]`
-/

namespace A072465.P1914375208227168083
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013982 n - A047084 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072465.P1914375208227168083

namespace A072465

/-- `∑[-Δ[A013982(n)-A047084(n)]]` -/
def P1914375208227168083.Spec : Prop :=
  ∀ n, P1914375208227168083.a n = A072465 n

end A072465

/-! ## A072465.P17374637830164501953

`A047084(n+1)-A013982(n+1)`
-/

namespace A072465.P17374637830164501953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047084 (n + 1) - A013982 (n + 1)

end

end A072465.P17374637830164501953

namespace A072465

/-- `A047084(n+1)-A013982(n+1)` -/
def P17374637830164501953.Spec : Prop :=
  ∀ n, P17374637830164501953.a n = A072465 n

end A072465

/-! ## A072465.P12485437554768117578

`A013982(n+4)-(A013982(n+1)+A013982(n+2))`
-/

namespace A072465.P12485437554768117578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013982 (n + 4) - (A013982 (n + 1) + A013982 (n + 2))

end

end A072465.P12485437554768117578

namespace A072465

/-- `A013982(n+4)-(A013982(n+1)+A013982(n+2))` -/
def P12485437554768117578.Spec : Prop :=
  ∀ n, P12485437554768117578.a n = A072465 n

end A072465

/-! ## A072465.P10197581621294649498

`∑[A047084(n+1)-Δ[A047084(n+2)]]`
-/

namespace A072465.P10197581621294649498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047084 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047084 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072465.P10197581621294649498

namespace A072465

/-- `∑[A047084(n+1)-Δ[A047084(n+2)]]` -/
def P10197581621294649498.Spec : Prop :=
  ∀ n, P10197581621294649498.a n = A072465 n

end A072465

/-!
# A072466: Numbers with 11 odd integers in their Collatz (or 3x+1) trajectory.

The programs for A072466, there is no canonical definition to state claims against.
-/

/-! ## A072466.P6897953637119508019

`eq[10, A006667(A028310(n))]`
-/

namespace A072466.P6897953637119508019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072466.P6897953637119508019

/-! ## A072466.P1182342758831666652

`A020725(eq[10, A006667(n+1)])`
-/

namespace A072466.P1182342758831666652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072466.P1182342758831666652

/-! ## A072466.P10925025172523563329

`A153152(eq[10, A006667(n+1)])`
-/

namespace A072466.P10925025172523563329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072466.P10925025172523563329

/-! ## A072466.P3882273682382087661

`A020725(eq[11, A078719(n+1)])`
-/

namespace A072466.P3882273682382087661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078719 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A072466.P3882273682382087661

/-! ## A072466.P17319616062577554335

`eq[10, A006667(A004277(n))]`
-/

namespace A072466.P17319616062577554335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072466.P17319616062577554335

/-! ## A072466.P5848883270827884893

`eq[10, A006667(A257088(n))]`
-/

namespace A072466.P5848883270827884893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A257088 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072466.P5848883270827884893

/-! ## A072466.P670409695094767481

`eq[10, A006667(A060000(n+1))]`
-/

namespace A072466.P670409695094767481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A060000 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072466.P670409695094767481

/-! ## A072466.P235049644378676785

`eq[10, A006667(A008574(n))]`
-/

namespace A072466.P235049644378676785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072466.P235049644378676785

/-! ## A072466.P14186672852158750326

`eq[10, A006667(A022144(n))]`
-/

namespace A072466.P14186672852158750326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (A022144 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072466.P14186672852158750326

/-!
# A072467: Triangle in which n-th row contains n primes == 1 mod (n) and the first term of a row is just greater than the last term of the previous row.

The programs for A072467, there is no canonical definition to state claims against.
-/

/-! ## A072467.P13066996120207969031

`p?[∑[A110592(A212051(n))]]`
-/

namespace A072467.P13066996120207969031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A212051 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072467.P13066996120207969031

/-! ## A072467.P996430561676509825

`p?[∑[A110592(A050749(n+1))]]`
-/

namespace A072467.P996430561676509825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (A050749 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072467.P996430561676509825

/-! ## A072467.P10199891970601898552

`p?[∑[A130241(A120835(n+1))]]`
-/

namespace A072467.P10199891970601898552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130241 (A120835 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A072467.P10199891970601898552

/-! ## A072467.P11308964918826190389

`eq[A003415(n), A010052(A182485(n))]`
-/

namespace A072467.P11308964918826190389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A182485 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072467.P11308964918826190389

/-! ## A072467.P17745036788303270068

`eq[A003415(n), A115571(n+1)]`
-/

namespace A072467.P17745036788303270068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115571 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072467.P17745036788303270068

/-!
# A072468: Leading diagonal of triangle in A072467.

The programs for A072468, there is no canonical definition to state claims against.
-/

/-! ## A072468.P14416161678816736199

`A072467(∑[n+1])`
-/

namespace A072468.P14416161678816736199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072467 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072468.P14416161678816736199

/-! ## A072468.P9160053305392921823

`record[A072467(A271668(n))]`
-/

namespace A072468.P9160053305392921823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072467 (A271668 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072468.P9160053305392921823

/-! ## A072468.P12463785594465333364

`record[A072467(abs(A145063(n)))]`
-/

namespace A072468.P12463785594465333364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072467 |A145063 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072468.P12463785594465333364

/-! ## A072468.P16341777327379056891

`record[A072467(n+1)/A091965(n)]`
-/

namespace A072468.P16341777327379056891
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072467 (n + 1) : ℚ) / (A091965 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072468.P16341777327379056891

/-! ## A072468.P1248227706148944150

`abs(A072467(abs(A145063(2*n)))-n)+n`
-/

namespace A072468.P1248227706148944150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A072467 |A145063 (2 * n)|.toNat - (n : ℤ))| + (n : ℤ)

end

end A072468.P1248227706148944150

/-! ## A072468.P2357192943349145328

`A072467(A000217(n+1))%A173703(n+1)`
-/

namespace A072468.P2357192943349145328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072467 (A000217 (n + 1)).toNat) (A173703 (n + 1))

end

end A072468.P2357192943349145328

/-! ## A072468.P9686193096101158222

`A072467(A000217(n+1))+A000007(3*n+1)`
-/

namespace A072468.P9686193096101158222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072467 (A000217 (n + 1)).toNat + A000007 (3 * n + 1)

end

end A072468.P9686193096101158222

/-!
# A072469: Right diagonal of triangle in A072467.

The programs for A072469, there is no canonical definition to state claims against.
-/

/-! ## A072469.P18335795050403830533

`A072467(∑[n]+1)`
-/

namespace A072469.P18335795050403830533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072467 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A072469.P18335795050403830533

/-! ## A072469.P2447488494201342677

`record[A072467(A286235(n+1))]`
-/

namespace A072469.P2447488494201342677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072467 (A286235 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072469.P2447488494201342677

/-! ## A072469.P3164933574348962307

`A072467(A000124(n))+A000035(2*n)`
-/

namespace A072469.P3164933574348962307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072467 (A000124 n).toNat + A000035 (2 * n)

end

end A072469.P3164933574348962307

/-! ## A072469.P16626082616458115791

`A072467(A000124(n))+char[A163878(3*n+4)]`
-/

namespace A072469.P16626082616458115791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163878 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072467 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072469.P16626082616458115791

/-! ## A072469.P13335512711506032346

`A072467(A000124(n))+char[A290920(3*n+4)]`
-/

namespace A072469.P13335512711506032346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290920 (3 * n + 4)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072467 (A000124 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072469.P13335512711506032346

/-! ## A072469.P10765073890265831031

`A214263(A016789(n))+A072467(A000124(n))`
-/

namespace A072469.P10765073890265831031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214263 (A016789 n).toNat + A072467 (A000124 n).toNat

end

end A072469.P10765073890265831031

/-! ## A072469.P3623030754842216584

`A214263(A163997(n+1))+A072467(A000124(n))`
-/

namespace A072469.P3623030754842216584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214263 (A163997 (n + 1)).toNat + A072467 (A000124 n).toNat

end

end A072469.P3623030754842216584

/-! ## A072469.P10382268307630942391

`A266178(A163997(n+2))+A072467(A000124(n))`
-/

namespace A072469.P10382268307630942391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266178 (A163997 (n + 2)).toNat + A072467 (A000124 n).toNat

end

end A072469.P10382268307630942391

/-!
# A072470: a(0) = 0, a(1) = 9; for n > 1 a(n) = smallest positive square (possibly required to be greater than a(n-1)?) such that a(0) + a(1) + ... + a(n) is a square.

The programs for A072470, there is no canonical definition to state claims against.
-/

/-! ## A072470.P14938218745504062367

`A000290(∪[A127689(n+1), A377017(n)])`
-/

namespace A072470.P14938218745504062367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127689 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377017 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A072470.P14938218745504062367

/-!
# A072471: Squares such that the sum of two neighboring term is also a square.

The programs for A072471, there is no canonical definition to state claims against.
-/

/-! ## A072471.P8702651776711006355

`record[A076600(a(A049820(n+1)))]²` with `a(0)=0, a(1)=5`
-/

namespace A072471.P8702651776711006355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  A076600 (f1 (A049820 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ 2

end

end A072471.P8702651776711006355

/-! ## A072471.P11042240458977515186

`eq[gcd(n, ∑[n]), A289441(2*n+5)]²`
-/

namespace A072471.P11042240458977515186
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (2 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n ^ 2

end

end A072471.P11042240458977515186

/-!
# A072472: a(n) = product of numbers from prime(n)+1 up to prime(n+1), where prime(n) is the n-th prime.

The programs for A072472, there is no canonical definition to state claims against.
-/

/-! ## A072472.P17365485930830087746

`A000040(n+2)*A061214(n+1)`
-/

namespace A072472.P17365485930830087746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A061214 (n + 1)

end

end A072472.P17365485930830087746

/-! ## A072472.P13672156970862062074

`A061214(n+1)*A065091(n+1)`
-/

namespace A072472.P13672156970862062074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061214 (n + 1) * A065091 (n + 1)

end

end A072472.P13672156970862062074

/-! ## A072472.P15136700627712872436

`A361761(n+1)/A000040(n+1)`
-/

namespace A072472.P15136700627712872436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361761 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

end

end A072472.P15136700627712872436

/-! ## A072472.P6788771151146702023

`lcm(A058077(n+1), A061214(n+1))`
-/

namespace A072472.P6788771151146702023
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A058077 (n + 1)) (A061214 (n + 1))

end

end A072472.P6788771151146702023

/-! ## A072472.P6925434462247477379

`record[A078587(n+4)]*A061214(n+1)`
-/

namespace A072472.P6925434462247477379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078587 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A061214 (n + 1)

end

end A072472.P6925434462247477379

/-! ## A072472.P10020038774508377637

`A061214(n+1)*A063934(2*(n+1))`
-/

namespace A072472.P10020038774508377637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061214 (n + 1) * A063934 (2 * (n + 1))

end

end A072472.P10020038774508377637

/-! ## A072472.P11350525360239015311

`A361761(n+1)/A109763(2*(n+1))`
-/

namespace A072472.P11350525360239015311
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361761 (n + 1) : ℚ) / (A109763 (2 * (n + 1)) : ℚ)

end

end A072472.P11350525360239015311

/-! ## A072472.P14504034712046762925

`A061214(n+1)/A361760(n+1)*A361761(n+1)`
-/

namespace A072472.P14504034712046762925
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061214 (n + 1) : ℚ) / (A361760 (n + 1) : ℚ) * (A361761 (n + 1) : ℚ)

end

end A072472.P14504034712046762925

/-! ## A072472.P14703157736880661639

`A361760(n+1)/A000040(n+1)*A000040(n+2)`
-/

namespace A072472.P14703157736880661639
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361760 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ) * (A000040 (n + 2) : ℚ)

end

end A072472.P14703157736880661639

/-! ## A072472.P13037741027448964987

`A061214(n+1)/A061214(n+2)*A361760(n+2)`
-/

namespace A072472.P13037741027448964987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061214 (n + 1) : ℚ) / (A061214 (n + 2) : ℚ) * (A361760 (n + 2) : ℚ)

end

end A072472.P13037741027448964987

/-!
# A072473: a(n) = prime(2*n) - prime(n).

The programs for A072473, the canonical program `A072473.P11303799734713741739` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072473 has offset 1).

The definition of A072473 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000040(2*(n+1))-A000040(n+1)` (program `A072473.P11303799734713741739`, by `A072473.P11303799734713741739.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A072473.P3407629193092000128

`A066066(n+1)+A000040(n+1)`
-/

namespace A072473.P3407629193092000128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066066 (n + 1) + A000040 (n + 1)

end

end A072473.P3407629193092000128

namespace A072473

/-- `A066066(n+1)+A000040(n+1)` -/
def P3407629193092000128.Spec : Prop :=
  ∀ n, P3407629193092000128.a n = A072473 (n + 1)

theorem P3407629193092000128.correct : P3407629193092000128.Spec := by
  intro n
  simp only [A072473, Nat.add_sub_cancel, A072473.P3407629193092000128.a, A072473.P11303799734713741739.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066066, A066066.P16664765326660587690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072473

/-! ## A072473.P11303799734713741739

`A000040(2*(n+1))-A000040(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072473

/-- `A000040(2*(n+1))-A000040(n+1)` -/
def P11303799734713741739.Spec : Prop :=
  ∀ n, P11303799734713741739.a n = A072473 (n + 1)

theorem P11303799734713741739.correct : P11303799734713741739.Spec := by
  intro n
  simp only [A072473, Nat.add_sub_cancel]

end A072473

/-! ## A072473.P4695582345751239340

`A255171(n)+a(n-1)` with `a(0)=1`
-/

namespace A072473.P4695582345751239340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A255171 n + a (n - 1)

end

end A072473.P4695582345751239340

namespace A072473

/-- `A255171(n)+a(n-1)` -/
def P4695582345751239340.Spec : Prop :=
  ∀ n, P4695582345751239340.a n = A072473 (n + 1)

end A072473

/-! ## A072473.P17080554998603710374

`A031215(n+1)-Δ[A007504(n)]`
-/

namespace A072473.P17080554998603710374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - (f1 (n + 1) - f1 n)

end

end A072473.P17080554998603710374

namespace A072473

/-- `A031215(n+1)-Δ[A007504(n)]` -/
def P17080554998603710374.Spec : Prop :=
  ∀ n, P17080554998603710374.a n = A072473 (n + 1)

end A072473

/-! ## A072473.P7215758643791731373

`A074766(n+1)+A014688(n+1)`
-/

namespace A072473.P7215758643791731373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074766 (n + 1) + A014688 (n + 1)

end

end A072473.P7215758643791731373

namespace A072473

/-- `A074766(n+1)+A014688(n+1)` -/
def P7215758643791731373.Spec : Prop :=
  ∀ n, P7215758643791731373.a n = A072473 (n + 1)

end A072473

/-! ## A072473.P4220384901478319854

`A031215(n+1)-A000040(n+1)`
-/

namespace A072473.P4220384901478319854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - A000040 (n + 1)

end

end A072473.P4220384901478319854

namespace A072473

/-- `A031215(n+1)-A000040(n+1)` -/
def P4220384901478319854.Spec : Prop :=
  ∀ n, P4220384901478319854.a n = A072473 (n + 1)

end A072473

/-! ## A072473.P2676363543498257624

`A116368(n+1)-A001043(n+1)`
-/

namespace A072473.P2676363543498257624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116368 (n + 1) - A001043 (n + 1)

end

end A072473.P2676363543498257624

namespace A072473

/-- `A116368(n+1)-A001043(n+1)` -/
def P2676363543498257624.Spec : Prop :=
  ∀ n, P2676363543498257624.a n = A072473 (n + 1)

theorem P2676363543498257624.correct : P2676363543498257624.Spec := by
  intro n
  simp only [A072473, Nat.add_sub_cancel, A072473.P2676363543498257624.a, A072473.P11303799734713741739.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A116368, A116368.P4128061207012300454.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072473

/-! ## A072473.P288194605023793193

`A092390(n+1)-A100484(n+1)`
-/

namespace A072473.P288194605023793193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092390 (n + 1) - A100484 (n + 1)

end

end A072473.P288194605023793193

namespace A072473

/-- `A092390(n+1)-A100484(n+1)` -/
def P288194605023793193.Spec : Prop :=
  ∀ n, P288194605023793193.a n = A072473 (n + 1)

theorem P288194605023793193.correct : P288194605023793193.Spec := by
  intro n
  simp only [A072473, Nat.add_sub_cancel, A072473.P288194605023793193.a, A072473.P11303799734713741739.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A092390, A092390.P1796857975132051005.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072473

/-! ## A072473.P3754849864055200478

`A272042(n+1)-A031215(n+1)`
-/

namespace A072473.P3754849864055200478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272042 (n + 1) - A031215 (n + 1)

end

end A072473.P3754849864055200478

namespace A072473

/-- `A272042(n+1)-A031215(n+1)` -/
def P3754849864055200478.Spec : Prop :=
  ∀ n, P3754849864055200478.a n = A072473 (n + 1)

theorem P3754849864055200478.correct : P3754849864055200478.Spec := by
  intro n
  simp only [A072473, Nat.add_sub_cancel, A072473.P3754849864055200478.a, A072473.P11303799734713741739.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A272042, A272042.P8498336041531170135.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072473

/-! ## A072473.P822881953475815329

`A275988(n+1)-A255174(n+1)`
-/

namespace A072473.P822881953475815329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275988 (n + 1) - A255174 (n + 1)

end

end A072473.P822881953475815329

namespace A072473

/-- `A275988(n+1)-A255174(n+1)` -/
def P822881953475815329.Spec : Prop :=
  ∀ n, P822881953475815329.a n = A072473 (n + 1)

theorem P822881953475815329.correct : P822881953475815329.Spec := by
  intro n
  simp only [A072473, Nat.add_sub_cancel, A072473.P822881953475815329.a, A072473.P11303799734713741739.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A255174, A255174.P18399948904925372527.a, A275988, A275988.P10341730878342561824.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072473

/-! ## A072473.P3857725071233088585

`A031215(n+1)-abs(Δ[A022837(n)])`
-/

namespace A072473.P3857725071233088585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - |f1 (n + 1) - f1 n|

end

end A072473.P3857725071233088585

namespace A072473

/-- `A031215(n+1)-abs(Δ[A022837(n)])` -/
def P3857725071233088585.Spec : Prop :=
  ∀ n, P3857725071233088585.a n = A072473 (n + 1)

end A072473

/-! ## A072473.P17752440122744420379

`A031215(n+1)-abs(Δ[A117128(n)])`
-/

namespace A072473.P17752440122744420379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117128 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - |f1 (n + 1) - f1 n|

end

end A072473.P17752440122744420379

namespace A072473

/-- `A031215(n+1)-abs(Δ[A117128(n)])` -/
def P17752440122744420379.Spec : Prop :=
  ∀ n, P17752440122744420379.a n = A072473 (n + 1)

end A072473

/-! ## A072473.P6119054204785938225

`A031215(n+1)-sqrt(A001248(n+1))`
-/

namespace A072473.P6119054204785938225
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A031215 (n + 1) : ℝ) - Real.sqrt (A001248 (n + 1) : ℝ)

end

end A072473.P6119054204785938225

namespace A072473

/-- `A031215(n+1)-sqrt(A001248(n+1))` -/
def P6119054204785938225.Spec : Prop :=
  ∀ n, P6119054204785938225.a n = (A072473 (n + 1) : ℝ)

end A072473

/-! ## A072473.P13466331386595593110

`A031215(n+1)-∑[A054541(n+1)]`
-/

namespace A072473.P13466331386595593110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072473.P13466331386595593110

namespace A072473

/-- `A031215(n+1)-∑[A054541(n+1)]` -/
def P13466331386595593110.Spec : Prop :=
  ∀ n, P13466331386595593110.a n = A072473 (n + 1)

end A072473

/-! ## A072473.P12872423700468961369

`A008864(n+1)+A066066(n+1)-1`
-/

namespace A072473.P12872423700468961369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) + (A066066 (n + 1) - 1)

end

end A072473.P12872423700468961369

namespace A072473

/-- `A008864(n+1)+A066066(n+1)-1` -/
def P12872423700468961369.Spec : Prop :=
  ∀ n, P12872423700468961369.a n = A072473 (n + 1)

theorem P12872423700468961369.correct : P12872423700468961369.Spec := by
  intro n
  simp only [A072473, Nat.add_sub_cancel, A072473.P12872423700468961369.a, A072473.P11303799734713741739.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A008864, A008864.P9177617808325052279.a, A066066, A066066.P16664765326660587690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072473

/-! ## A072473.P5316067739096626336

`A031215(n+1)-(A040976(n+1)+2)`
-/

namespace A072473.P5316067739096626336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) - (A040976 (n + 1) + 2)

end

end A072473.P5316067739096626336

namespace A072473

/-- `A031215(n+1)-(A040976(n+1)+2)` -/
def P5316067739096626336.Spec : Prop :=
  ∀ n, P5316067739096626336.a n = A072473 (n + 1)

theorem P5316067739096626336.correct : P5316067739096626336.Spec := by
  intro n
  simp only [A072473, Nat.add_sub_cancel, A072473.P5316067739096626336.a, A072473.P11303799734713741739.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072473

/-! ## A072473.P12498650561234001187

`A031215(n+1)+2-A052147(n+1)`
-/

namespace A072473.P12498650561234001187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031215 (n + 1) + (2 - A052147 (n + 1))

end

end A072473.P12498650561234001187

namespace A072473

/-- `A031215(n+1)+2-A052147(n+1)` -/
def P12498650561234001187.Spec : Prop :=
  ∀ n, P12498650561234001187.a n = A072473 (n + 1)

theorem P12498650561234001187.correct : P12498650561234001187.Spec := by
  intro n
  simp only [A072473, Nat.add_sub_cancel, A072473.P12498650561234001187.a, A072473.P11303799734713741739.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A052147, A052147.P15217781913070555828.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072473

/-! ## A072473.P10748701797238922569

`A055670(2*(n+1))-A028815(n+1)`
-/

namespace A072473.P10748701797238922569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (2 * (n + 1)) - A028815 (n + 1)

end

end A072473.P10748701797238922569

namespace A072473

/-- `A055670(2*(n+1))-A028815(n+1)` -/
def P10748701797238922569.Spec : Prop :=
  ∀ n, P10748701797238922569.a n = A072473 (n + 1)

end A072473

/-! ## A072473.P13215570791251392995

`(A066066(n+1)+A031215(n+1))/2`
-/

namespace A072473.P13215570791251392995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066066 (n + 1) + A031215 (n + 1) : ℚ) / 2

end

end A072473.P13215570791251392995

namespace A072473

/-- `(A066066(n+1)+A031215(n+1))/2` -/
def P13215570791251392995.Spec : Prop :=
  ∀ n, P13215570791251392995.a n = (A072473 (n + 1) : ℚ)

theorem P13215570791251392995.correct : P13215570791251392995.Spec := by
  intro n
  simp only [A072473, Nat.add_sub_cancel, A072473.P13215570791251392995.a, A072473.P11303799734713741739.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A031215, A031215.P2952175553723239727.a, A066066, A066066.P16664765326660587690.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072473

/-! ## A072473.P14641894324276190045

`A066066(n+1)+A100484(n+1)/2`
-/

namespace A072473.P14641894324276190045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066066 (n + 1) : ℚ) + (A100484 (n + 1) : ℚ) / 2

end

end A072473.P14641894324276190045

namespace A072473

/-- `A066066(n+1)+A100484(n+1)/2` -/
def P14641894324276190045.Spec : Prop :=
  ∀ n, P14641894324276190045.a n = (A072473 (n + 1) : ℚ)

theorem P14641894324276190045.correct : P14641894324276190045.Spec := by
  intro n
  simp only [A072473, Nat.add_sub_cancel, A072473.P14641894324276190045.a, A072473.P11303799734713741739.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A066066, A066066.P16664765326660587690.a, A100484, A100484.P9678625670825099636.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072473

/-!
# A072474: Sum of next n squares.

The programs for A072474, the canonical program `A072474.P14611267747009341394` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072474 has offset 1).

The definition of A072474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072474.P17749383124414626814

`ogf((1+7x+14x^2+7x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A072474.P17749383124414626814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 7, 14, 7, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A072474.P17749383124414626814

namespace A072474

/-- `ogf((1+7x+14x^2+7x^3+x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P17749383124414626814.Spec : Prop :=
  ∀ n, P17749383124414626814.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P12454065177046928085

`(n+1)*(3*(n+1)²+1)*((n+1)²+2)/12`
-/

namespace A072474.P12454065177046928085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * (3 * (n + 1) ^ 2 + 1) * ((n + 1) ^ 2 + 2) : ℚ) / 12

end

end A072474.P12454065177046928085

namespace A072474

/-- `(n+1)*(3*(n+1)²+1)*((n+1)²+2)/12` -/
def P12454065177046928085.Spec : Prop :=
  ∀ n, P12454065177046928085.a n = (A072474 (n + 1) : ℚ)

end A072474

/-! ## A072474.P14611267747009341394

`A000330((n+1)*(n+2)/2)-A000330((n+1)*n/2)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072474

/-- `A000330((n+1)*(n+2)/2)-A000330((n+1)*n/2)` -/
def P14611267747009341394.Spec : Prop :=
  ∀ n, P14611267747009341394.a n = A072474 (n + 1)

theorem P14611267747009341394.correct : P14611267747009341394.Spec := by
  intro n
  simp only [A072474, Nat.add_sub_cancel]

end A072474

/-! ## A072474.P9481504218966149073

`∑[∑[round(5/acot(n)^3)+n]]`
-/

namespace A072474.P9481504218966149073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (5 / SequenceMachineLib.acot (n : ℝ) ^ 3) + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072474.P9481504218966149073

namespace A072474

/-- `∑[∑[round(5/acot(n)^3)+n]]` -/
def P9481504218966149073.Spec : Prop :=
  ∀ n, P9481504218966149073.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P18142679519798771448

`∑[A380353(n+1)]`
-/

namespace A072474.P18142679519798771448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380353 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072474.P18142679519798771448

namespace A072474

/-- `∑[A380353(n+1)]` -/
def P18142679519798771448.Spec : Prop :=
  ∀ n, P18142679519798771448.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P14775282026061034502

`∑[∑[A008531(n)+n]]`
-/

namespace A072474.P14775282026061034502
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008531 n + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072474.P14775282026061034502

namespace A072474

/-- `∑[∑[A008531(n)+n]]` -/
def P14775282026061034502.Spec : Prop :=
  ∀ n, P14775282026061034502.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P17894732052837360374

`∑[A222408(n)+∑[n]]`
-/

namespace A072474.P17894732052837360374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222408 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072474.P17894732052837360374

namespace A072474

/-- `∑[A222408(n)+∑[n]]` -/
def P17894732052837360374.Spec : Prop :=
  ∀ n, P17894732052837360374.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P4120767263753918804

`∑[A072025(n)+∑[n]²]`
-/

namespace A072474.P4120767263753918804
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072025 n + (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072474.P4120767263753918804

namespace A072474

/-- `∑[A072025(n)+∑[n]²]` -/
def P4120767263753918804.Spec : Prop :=
  ∀ n, P4120767263753918804.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P1335883862921972427

`∑[A143008(n)-∑[n]²]`
-/

namespace A072474.P1335883862921972427
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143008 n - (((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072474.P1335883862921972427

namespace A072474

/-- `∑[A143008(n)-∑[n]²]` -/
def P1335883862921972427.Spec : Prop :=
  ∀ n, P1335883862921972427.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P17833029823078005391

`∑[(∑[5*n]+1)*A000124(n)]`
-/

namespace A072474.P17833029823078005391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j + 1 : ℕ) : ℤ) * A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072474.P17833029823078005391

namespace A072474

/-- `∑[(∑[5*n]+1)*A000124(n)]` -/
def P17833029823078005391.Spec : Prop :=
  ∀ n, P17833029823078005391.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P4367833926528241792

`A387429(n+1)+A000292(n)`
-/

namespace A072474.P4367833926528241792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387429 (n + 1) + A000292 n

end

end A072474.P4367833926528241792

namespace A072474

/-- `A387429(n+1)+A000292(n)` -/
def P4367833926528241792.Spec : Prop :=
  ∀ n, P4367833926528241792.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P108937252838179331

`A220892(n)-A201106(n+1)`
-/

namespace A072474.P108937252838179331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220892 n - A201106 (n + 1)

end

end A072474.P108937252838179331

namespace A072474

/-- `A220892(n)-A201106(n+1)` -/
def P108937252838179331.Spec : Prop :=
  ∀ n, P108937252838179331.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P5932967901717809366

`A328994(n+1)-A176060(n)`
-/

namespace A072474.P5932967901717809366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328994 (n + 1) - A176060 n

end

end A072474.P5932967901717809366

namespace A072474

/-- `A328994(n+1)-A176060(n)` -/
def P5932967901717809366.Spec : Prop :=
  ∀ n, P5932967901717809366.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P231425750023455289

`∑[(A000217(n)+1)*A005891(n)]`
-/

namespace A072474.P231425750023455289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + 1) * A005891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072474.P231425750023455289

namespace A072474

/-- `∑[(A000217(n)+1)*A005891(n)]` -/
def P231425750023455289.Spec : Prop :=
  ∀ n, P231425750023455289.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P14885120155685173139

`A260513(n+1)+A372751(n+1)-A372583(n+1)`
-/

namespace A072474.P14885120155685173139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260513 (n + 1) + (A372751 (n + 1) - A372583 (n + 1))

end

end A072474.P14885120155685173139

namespace A072474

/-- `A260513(n+1)+A372751(n+1)-A372583(n+1)` -/
def P14885120155685173139.Spec : Prop :=
  ∀ n, P14885120155685173139.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P1239399433887143103

`A132117(n+1)+A000217(n)*A006003(n+1)`
-/

namespace A072474.P1239399433887143103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132117 (n + 1) + A000217 n * A006003 (n + 1)

end

end A072474.P1239399433887143103

namespace A072474

/-- `A132117(n+1)+A000217(n)*A006003(n+1)` -/
def P1239399433887143103.Spec : Prop :=
  ∀ n, P1239399433887143103.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P5665301893206882282

`A260513(n+1)+A260513(n+1)-A006003(n+1)`
-/

namespace A072474.P5665301893206882282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260513 (n + 1) + (A260513 (n + 1) - A006003 (n + 1))

end

end A072474.P5665301893206882282

namespace A072474

/-- `A260513(n+1)+A260513(n+1)-A006003(n+1)` -/
def P5665301893206882282.Spec : Prop :=
  ∀ n, P5665301893206882282.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P16964855657745394027

`Δ[A153058(∑[n])]`
-/

namespace A072474.P16964855657745394027
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153058 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072474.P16964855657745394027

namespace A072474

/-- `Δ[A153058(∑[n])]` -/
def P16964855657745394027.Spec : Prop :=
  ∀ n, P16964855657745394027.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P7047687456689781040

`∑[A051624(∑[n]+1)]`
-/

namespace A072474.P7047687456689781040
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051624 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072474.P7047687456689781040

namespace A072474

/-- `∑[A051624(∑[n]+1)]` -/
def P7047687456689781040.Spec : Prop :=
  ∀ n, P7047687456689781040.a n = A072474 (n + 1)

end A072474

/-! ## A072474.P18185867741164041731

`Δ[A000330(∑[n])]`
-/

namespace A072474.P18185867741164041731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072474.P18185867741164041731

namespace A072474

/-- `Δ[A000330(∑[n])]` -/
def P18185867741164041731.Spec : Prop :=
  ∀ n, P18185867741164041731.a n = A072474 (n + 1)

end A072474

/-!
# A072475: Sum of next n composite numbers.

The programs for A072475, there is no canonical definition to state claims against.
-/

/-! ## A072475.P4215043049429882247

`A024850(n+1)+A007504(n+1)`
-/

namespace A072475.P4215043049429882247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024850 (n + 1) + A007504 (n + 1)

end

end A072475.P4215043049429882247

/-! ## A072475.P15184416504623424002

`A024850(n+1)+∑[A000040(n+1)]`
-/

namespace A072475.P15184416504623424002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024850 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072475.P15184416504623424002

/-! ## A072475.P6619374769809045286

`n+1+A101301(n+1)+A024850(n+1)`
-/

namespace A072475.P6619374769809045286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + (A101301 (n + 1) + A024850 (n + 1))

end

end A072475.P6619374769809045286

/-! ## A072475.P14174240567483703482

`A024850(n+1)+A071411(n+1)+A051349(n+1)`
-/

namespace A072475.P14174240567483703482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024850 (n + 1) + (A071411 (n + 1) + A051349 (n + 1))

end

end A072475.P14174240567483703482

/-! ## A072475.P18269873537716238395

`A024850(n+1)+∑[record[A006530(n+2)]]`
-/

namespace A072475.P18269873537716238395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024850 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072475.P18269873537716238395

/-! ## A072475.P3790453525393536069

`A024850(n+1)+∑[record[A014963(n+2)]]`
-/

namespace A072475.P3790453525393536069
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024850 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072475.P3790453525393536069

/-! ## A072475.P17539300620724056304

`Δ[A053767(∑[n])]`
-/

namespace A072475.P17539300620724056304
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072475.P17539300620724056304

/-! ## A072475.P8599796403981770581

`Δ[A051349(∑[n]+1)]`
-/

namespace A072475.P8599796403981770581
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072475.P8599796403981770581

/-! ## A072475.P1789748768380163095

`abs(Δ[A051349(A000124(n))])`
-/

namespace A072475.P1789748768380163095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (A000124 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A072475.P1789748768380163095

/-! ## A072475.P5439430887310686708

`abs(Δ[A053767(A000217(n))])`
-/

namespace A072475.P5439430887310686708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A072475.P5439430887310686708

/-! ## A072475.P8152573438995390650

`Δ[record[A053767(A220691(n+1))]]`
-/

namespace A072475.P8152573438995390650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 (A220691 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072475.P8152573438995390650

/-!
# A072476: Difference between the sum of first n prime numbers and the sum of first n composite numbers.

The programs for A072476, the canonical program `A072476.P13674208267984674051` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072476 has offset 1).

The definition of A072476 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072476.P13674208267984674051

`∑[A038529(1+n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A072476

/-- `∑[A038529(1+n)]` -/
def P13674208267984674051.Spec : Prop :=
  ∀ n, P13674208267984674051.a n = A072476 (n + 1)

theorem P13674208267984674051.correct : P13674208267984674051.Spec := by
  intro n
  simp only [A072476, Nat.add_sub_cancel]

end A072476

/-! ## A072476.P3648160247228061762

`A007504(n+1)-A053767(n+1)`
-/

namespace A072476.P3648160247228061762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - A053767 (n + 1)

end

end A072476.P3648160247228061762

namespace A072476

/-- `A007504(n+1)-A053767(n+1)` -/
def P3648160247228061762.Spec : Prop :=
  ∀ n, P3648160247228061762.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P11627958233409843763

`A071411(n+1)-A072668(n+1)`
-/

namespace A072476.P11627958233409843763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071411 (n + 1) - A072668 (n + 1)

end

end A072476.P11627958233409843763

namespace A072476

/-- `A071411(n+1)-A072668(n+1)` -/
def P11627958233409843763.Spec : Prop :=
  ∀ n, P11627958233409843763.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P36726138262892413

`∑[Δ[A007504(n)]-A002808(n+1)]`
-/

namespace A072476.P36726138262892413
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P36726138262892413

namespace A072476

/-- `∑[Δ[A007504(n)]-A002808(n+1)]` -/
def P36726138262892413.Spec : Prop :=
  ∀ n, P36726138262892413.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P4614013510369032351

`∑[A000040(n+1)-Δ[A053767(n)]]`
-/

namespace A072476.P4614013510369032351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P4614013510369032351

namespace A072476

/-- `∑[A000040(n+1)-Δ[A053767(n)]]` -/
def P4614013510369032351.Spec : Prop :=
  ∀ n, P4614013510369032351.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P1984453216426059964

`∑[Δ[A007504(n)]-A141468(n+3)]`
-/

namespace A072476.P1984453216426059964
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A141468 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P1984453216426059964

namespace A072476

/-- `∑[Δ[A007504(n)]-A141468(n+3)]` -/
def P1984453216426059964.Spec : Prop :=
  ∀ n, P1984453216426059964.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P6485723475459478635

`∑[A000040(n+1)-A002808(n+1)]`
-/

namespace A072476.P6485723475459478635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P6485723475459478635

namespace A072476

/-- `∑[A000040(n+1)-A002808(n+1)]` -/
def P6485723475459478635.Spec : Prop :=
  ∀ n, P6485723475459478635.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P8632096147967886321

`∑[A008864(n+1)-A079696(n+1)]`
-/

namespace A072476.P8632096147967886321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A079696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P8632096147967886321

namespace A072476

/-- `∑[A008864(n+1)-A079696(n+1)]` -/
def P8632096147967886321.Spec : Prop :=
  ∀ n, P8632096147967886321.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P7922324554801016956

`∑[A000040(n+1)-A018252(n+2)]`
-/

namespace A072476.P7922324554801016956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P7922324554801016956

namespace A072476

/-- `∑[A000040(n+1)-A018252(n+2)]` -/
def P7922324554801016956.Spec : Prop :=
  ∀ n, P7922324554801016956.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P4388402276740182582

`A007504(n+1)-∑[A018252(n+2)]`
-/

namespace A072476.P4388402276740182582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P4388402276740182582

namespace A072476

/-- `A007504(n+1)-∑[A018252(n+2)]` -/
def P4388402276740182582.Spec : Prop :=
  ∀ n, P4388402276740182582.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P1066046631798887136

`∑[A000040(n+1)-lt[1, A328847(n)]]`
-/

namespace A072476.P1066046631798887136
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P1066046631798887136

namespace A072476

/-- `∑[A000040(n+1)-lt[1, A328847(n)]]` -/
def P1066046631798887136.Spec : Prop :=
  ∀ n, P1066046631798887136.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P4428350435729486309

`∑[A014237(n+1)-Δ[A018252(n+1)]]`
-/

namespace A072476.P4428350435729486309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014237 (n + 1) - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P4428350435729486309

namespace A072476

/-- `∑[A014237(n+1)-Δ[A018252(n+1)]]` -/
def P4428350435729486309.Spec : Prop :=
  ∀ n, P4428350435729486309.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P3867936044060776090

`∑[A040976(n+1)-comp[A040976(n+1)]]`
-/

namespace A072476.P3867936044060776090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P3867936044060776090

namespace A072476

/-- `∑[A040976(n+1)-comp[A040976(n+1)]]` -/
def P3867936044060776090.Spec : Prop :=
  ∀ n, P3867936044060776090.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P1234831998800158958

`∑[A006093(n+1)+1-A002808(n+1)]`
-/

namespace A072476.P1234831998800158958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (1 - A002808 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P1234831998800158958

namespace A072476

/-- `∑[A006093(n+1)+1-A002808(n+1)]` -/
def P1234831998800158958.Spec : Prop :=
  ∀ n, P1234831998800158958.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P4421066015406856101

`∑[A006093(n+1)+1-A018252(n+2)]`
-/

namespace A072476.P4421066015406856101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1 - A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P4421066015406856101

namespace A072476

/-- `∑[A006093(n+1)+1-A018252(n+2)]` -/
def P4421066015406856101.Spec : Prop :=
  ∀ n, P4421066015406856101.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P3554425787133956980

`∑[A040976(n+1)+2-A002808(n+1)]`
-/

namespace A072476.P3554425787133956980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + (2 - A002808 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P3554425787133956980

namespace A072476

/-- `∑[A040976(n+1)+2-A002808(n+1)]` -/
def P3554425787133956980.Spec : Prop :=
  ∀ n, P3554425787133956980.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P4252179126475876747

`∑[A040976(n+1)+2-A018252(n+2)]`
-/

namespace A072476.P4252179126475876747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2 - A018252 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P4252179126475876747

namespace A072476

/-- `∑[A040976(n+1)+2-A018252(n+2)]` -/
def P4252179126475876747.Spec : Prop :=
  ∀ n, P4252179126475876747.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P16718052035494677215

`∑[A040976(n+1)+2-lt[0, A082023(n)]]`
-/

namespace A072476.P16718052035494677215
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2 - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P16718052035494677215

namespace A072476

/-- `∑[A040976(n+1)+2-lt[0, A082023(n)]]` -/
def P16718052035494677215.Spec : Prop :=
  ∀ n, P16718052035494677215.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P11908144183225162885

`∑[A006093(n+1)-lt[2, A000005(n+1)]]`
-/

namespace A072476.P11908144183225162885
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P11908144183225162885

namespace A072476

/-- `∑[A006093(n+1)-lt[2, A000005(n+1)]]` -/
def P11908144183225162885.Spec : Prop :=
  ∀ n, P11908144183225162885.a n = A072476 (n + 1)

end A072476

/-! ## A072476.P8433448368416186185

`∑[A000040(n+1)-(lt[1, A001222(n+1)]+1)]`
-/

namespace A072476.P8433448368416186185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072476.P8433448368416186185

namespace A072476

/-- `∑[A000040(n+1)-(lt[1, A001222(n+1)]+1)]` -/
def P8433448368416186185.Spec : Prop :=
  ∀ n, P8433448368416186185.a n = A072476 (n + 1)

end A072476

/-!
# A072477: a(n) = (2*n)!*binomial(2*n,n)/8.

The programs for A072477, the canonical program `A072477.P6260770259912250749` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072477 has offset 2).

The definition of A072477 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072477.P6260770259912250749

`(2*(n+2))!*C(2*(n+2), n+2)/8`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A072477

/-- `(2*(n+2))!*C(2*(n+2), n+2)/8` -/
def P6260770259912250749.Spec : Prop :=
  ∀ n, P6260770259912250749.a n = (A072477 (n + 2) : ℚ)

end A072477

/-! ## A072477.P950937330916877738

`∏[4*n+6]²/2`
-/

namespace A072477.P950937330916877738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∏ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ) / 2

end

end A072477.P950937330916877738

namespace A072477

/-- `∏[4*n+6]²/2` -/
def P950937330916877738.Spec : Prop :=
  ∀ n, P950937330916877738.a n = (A072477 (n + 2) : ℚ)

end A072477

/-! ## A072477.P13449059688117244320

`floor(A123072(n+2)/4)`
-/

namespace A072477.P13449059688117244320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A123072 (n + 2) : ℚ) / 4⌋

end

end A072477.P13449059688117244320

namespace A072477

/-- `floor(A123072(n+2)/4)` -/
def P13449059688117244320.Spec : Prop :=
  ∀ n, P13449059688117244320.a n = A072477 (n + 2)

end A072477

/-! ## A072477.P9056333472025351529

`2*A355989(2*n+3)²`
-/

namespace A072477.P9056333472025351529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A355989 (2 * n + 3) ^ 2

end

end A072477.P9056333472025351529

namespace A072477

/-- `2*A355989(2*n+3)²` -/
def P9056333472025351529.Spec : Prop :=
  ∀ n, P9056333472025351529.a n = A072477 (n + 2)

end A072477

/-! ## A072477.P5254155729699400675

`floor(A329965(2*n+3)/4)`
-/

namespace A072477.P5254155729699400675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A329965 (2 * n + 3) : ℚ) / 4⌋

end

end A072477.P5254155729699400675

namespace A072477

/-- `floor(A329965(2*n+3)/4)` -/
def P5254155729699400675.Spec : Prop :=
  ∀ n, P5254155729699400675.a n = A072477 (n + 2)

end A072477

/-!
# A072478: Surface area of n-dimensional sphere of radius r is n*V_n*r^(n-1) = n*Pi^(n/2)*r^(n-1)/(n/2)! = S_n*Pi^floor(n/2)*r^(n-1); sequence gives numerator of S_n.

The programs for A072478, the canonical program `A072478.P10372949114239921515` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072478 has offset 0).

The definition of A072478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A072478.P10936076366412686730

`ogf((2x+2x^2-2x^3-4x^4-x^6+2x^8)/(1-3x^2+2x^4))`
-/

namespace A072478.P10936076366412686730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 2, -2, -4, 0, -1, 0, 2] [1, 0, -3, 0, 2] n

end

end A072478.P10936076366412686730

namespace A072478

/-- `ogf((2x+2x^2-2x^3-4x^4-x^6+2x^8)/(1-3x^2+2x^4))` -/
def P10936076366412686730.Spec : Prop :=
  ∀ n, P10936076366412686730.a n = A072478 n

end A072478

/-! ## A072478.P10372949114239921515

`3*a(n-2)-2*a(n-4)` with `a(0)=0, a(1)=2, a(2)=2, a(3)=4, a(4)=2, a(5)=8, a(6)=1, a(7)=16, a(8)=1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A072478

/-- `3*a(n-2)-2*a(n-4)` -/
def P10372949114239921515.Spec : Prop :=
  ∀ n, P10372949114239921515.a n = A072478 n

theorem P10372949114239921515.correct : P10372949114239921515.Spec := by
  intro n
  simp only [A072478]

end A072478

/-! ## A072478.P8876479885127773323

`2/gcd(n+2, 2*a(n-2))*a(n-2)` with `a(0)=0, a(1)=2, a(2)=2`
-/

namespace A072478.P8876479885127773323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2, 2] fun n a =>
  2 / (Int.gcd (n + 2 : ℤ) (SequenceMachineLib.roundAway (2 * a (n - 2))) : ℚ) * a (n - 2)

end

end A072478.P8876479885127773323

namespace A072478

/-- `2/gcd(n+2, 2*a(n-2))*a(n-2)` -/
def P8876479885127773323.Spec : Prop :=
  ∀ n, P8876479885127773323.a n = (A072478 n : ℚ)

end A072478

/-! ## A072478.P6769666490544267782

`lcm(2^(∑[n]%(n+1)), A134451(A103694(n)))`
-/

namespace A072478.P6769666490544267782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)) : ℤ) (A134451 (A103694 n).toNat)

end

end A072478.P6769666490544267782

namespace A072478

/-- `lcm(2^(∑[n]%(n+1)), A134451(A103694(n)))` -/
def P6769666490544267782.Spec : Prop :=
  ∀ n, (P6769666490544267782.a n : ℤ) = A072478 n

end A072478

/-! ## A072478.P9614713278322040884

`gcd(A193356(n+1)%A193229(n), A138219(n))`
-/

namespace A072478.P9614713278322040884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A193356 (n + 1)) (A193229 n)) (A138219 n)

end

end A072478.P9614713278322040884

namespace A072478

/-- `gcd(A193356(n+1)%A193229(n), A138219(n))` -/
def P9614713278322040884.Spec : Prop :=
  ∀ n, (P9614713278322040884.a n : ℤ) = A072478 n

end A072478

/-! ## A072478.P8497934463049203131

`A072345(n)+A010815(A112037(n+2))`
-/

namespace A072478.P8497934463049203131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n + A010815 (A112037 (n + 2)).toNat

end

end A072478.P8497934463049203131

namespace A072478

/-- `A072345(n)+A010815(A112037(n+2))` -/
def P8497934463049203131.Spec : Prop :=
  ∀ n, P8497934463049203131.a n = A072478 n

end A072478

/-! ## A072478.P8503037403296425145

`A010815(A112037(n+2))+ceil(2^A001057(n))`
-/

namespace A072478.P8503037403296425145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A112037 (n + 2)).toNat + ⌈(2 : ℚ) ^ (A001057 n : ℤ)⌉

end

end A072478.P8503037403296425145

namespace A072478

/-- `A010815(A112037(n+2))+ceil(2^A001057(n))` -/
def P8503037403296425145.Spec : Prop :=
  ∀ n, P8503037403296425145.a n = A072478 n

end A072478

/-! ## A072478.P17865225388940527845

`A010815(A112037(n+2))+ceil(2^A246425(n))`
-/

namespace A072478.P17865225388940527845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A112037 (n + 2)).toNat + ⌈(2 : ℚ) ^ (A246425 n : ℤ)⌉

end

end A072478.P17865225388940527845

namespace A072478

/-- `A010815(A112037(n+2))+ceil(2^A246425(n))` -/
def P17865225388940527845.Spec : Prop :=
  ∀ n, P17865225388940527845.a n = A072478 n

end A072478

/-! ## A072478.P11093175285546570641

`ceil(A138219(n)/A142150(n)!)`
-/

namespace A072478.P11093175285546570641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A138219 n : ℚ) / (Nat.factorial (A142150 n).toNat : ℚ)⌉

end

end A072478.P11093175285546570641

namespace A072478

/-- `ceil(A138219(n)/A142150(n)!)` -/
def P11093175285546570641.Spec : Prop :=
  ∀ n, P11093175285546570641.a n = A072478 n

end A072478

/-! ## A072478.P11232491116912446865

`A072345(n)-A015998(A089730(n+1))`
-/

namespace A072478.P11232491116912446865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072345 n - A015998 (A089730 (n + 1)).toNat

end

end A072478.P11232491116912446865

namespace A072478

/-- `A072345(n)-A015998(A089730(n+1))` -/
def P11232491116912446865.Spec : Prop :=
  ∀ n, P11232491116912446865.a n = A072478 n

end A072478

/-!
# A072479: Surface area of n-dimensional sphere of radius r is n*V_n*r^(n-1) = n*Pi^(n/2)*r^(n-1)/(n/2)! = S_n*Pi^floor(n/2)*r^(n-1); sequence gives denominator of S_n.

The programs for A072479, the canonical program `A072479.P734407684098892103` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072479 has offset 0).

The definition of A072479 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 121 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072479.P10555957370187917232

`ceil(A072346(n)/round(1/acot(n)))`
-/

namespace A072479.P10555957370187917232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072346 n : ℚ) / (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) : ℚ)⌉

end

end A072479.P10555957370187917232

namespace A072479

/-- `ceil(A072346(n)/round(1/acot(n)))` -/
def P10555957370187917232.Spec : Prop :=
  ∀ n, P10555957370187917232.a n = A072479 n

end A072479

/-! ## A072479.P734407684098892103

`ceil(A072346(n)/A028310(n))`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072479

/-- `ceil(A072346(n)/A028310(n))` -/
def P734407684098892103.Spec : Prop :=
  ∀ n, P734407684098892103.a n = A072479 n

theorem P734407684098892103.correct : P734407684098892103.Spec := by
  intro n
  simp only [A072479]

end A072479

/-! ## A072479.P528585211467112557

`ceil(A072346(n)/A233583(n+1))`
-/

namespace A072479.P528585211467112557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A072346 n : ℚ) / (A233583 (n + 1) : ℚ)⌉

end

end A072479.P528585211467112557

namespace A072479

/-- `ceil(A072346(n)/A233583(n+1))` -/
def P528585211467112557.Spec : Prop :=
  ∀ n, P528585211467112557.a n = A072479 n

end A072479

/-! ## A072479.P13968232788720140844

`round(A072346(A028310(n))/A233583(n+1))`
-/

namespace A072479.P13968232788720140844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A072346 (A028310 n).toNat : ℚ) / (A233583 (n + 1) : ℚ))

end

end A072479.P13968232788720140844

namespace A072479

/-- `round(A072346(A028310(n))/A233583(n+1))` -/
def P13968232788720140844.Spec : Prop :=
  ∀ n, P13968232788720140844.a n = A072479 n

end A072479

/-! ## A072479.P127658441466146138

`A028310(floor(A072346(n)/A233583(n+1)))`
-/

namespace A072479.P127658441466146138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊(A072346 n : ℚ) / (A233583 (n + 1) : ℚ)⌋.toNat

end

end A072479.P127658441466146138

namespace A072479

/-- `A028310(floor(A072346(n)/A233583(n+1)))` -/
def P127658441466146138.Spec : Prop :=
  ∀ n, P127658441466146138.a n = A072479 n

end A072479

/-!
# A072480: Shadow transform of factorials A000142.

The programs for A072480, there is no canonical definition to state claims against.
-/

/-! ## A072480.P14428333105811330872

`n-A064760(round(sqrt(n²+1)))`
-/

namespace A072480.P14428333105811330872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A064760 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A072480.P14428333105811330872

/-! ## A072480.P15560214116431195222

`C(n, n²)+n-A002034(A028310(n))`
-/

namespace A072480.P15560214116431195222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (n ^ 2) + n : ℤ) - A002034 (A028310 n).toNat

end

end A072480.P15560214116431195222

/-! ## A072480.P9887492152333794389

`char[A024008(n)]+n-A002034(A028310(n))`
-/

namespace A072480.P9887492152333794389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024008 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n : ℕ) : ℤ) - A002034 (A028310 n).toNat

end

end A072480.P9887492152333794389

/-! ## A072480.P4455142658297414570

`char[A224508(2*n+1)]+n-A002034(A028310(n))`
-/

namespace A072480.P4455142658297414570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224508 (2 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n : ℕ) : ℤ) - A002034 (A028310 n).toNat

end

end A072480.P4455142658297414570

/-! ## A072480.P14493450056035998496

`char[A204693(n)-2*n]+n-A002034(A028310(n))`
-/

namespace A072480.P14493450056035998496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204693 n - (2 * n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + n : ℕ) : ℤ) - A002034 (A028310 n).toNat

end

end A072480.P14493450056035998496

/-! ## A072480.P11705115078325778664

`n-A000035(A151800(n))*A002034(A000038(n)+n)`
-/

namespace A072480.P11705115078325778664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000035 (A151800 n).toNat * A002034 (A000038 n + (n : ℤ)).toNat

end

end A072480.P11705115078325778664

/-! ## A072480.P926209959862093842

`A233583(n+1)-A002034(A000038(n)+n)`
-/

namespace A072480.P926209959862093842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A002034 (A000038 n + (n : ℤ)).toNat

end

end A072480.P926209959862093842

/-! ## A072480.P8079718629338215432

`∑{#}[n-1, C(gcd(n, #!), n)]`
-/

namespace A072480.P8079718629338215432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (Nat.gcd n (Nat.factorial k)) n

end

end A072480.P8079718629338215432

/-!
# A072481: a(n) = Sum_{k=1..n} Sum_{d=1..k} (k mod d).

The programs for A072481, the canonical program `A072481.P6215182981061618954` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072481 has offset 0).

The definition of A072481 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072481.P6215182981061618954

`∑[n²-∑[∑{d}[n, #]]]`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A072481

/-- `∑[n²-∑[∑{d}[n, #]]]` -/
def P6215182981061618954.Spec : Prop :=
  ∀ n, P6215182981061618954.a n = A072481 n

theorem P6215182981061618954.correct : P6215182981061618954.Spec := by
  intro n
  simp only [A072481]

end A072481

/-! ## A072481.P9021284665205643889

`∑[∑[2*n-∑{d}[n, #]]-n]`
-/

namespace A072481.P9021284665205643889
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072481.P9021284665205643889

namespace A072481

/-- `∑[∑[2*n-∑{d}[n, #]]-n]` -/
def P9021284665205643889.Spec : Prop :=
  ∀ n, P9021284665205643889.a n = A072481 n

end A072481

/-! ## A072481.P3816975360647103963

`∑[(n²+1)%(∑[∑{d}[n, #]]+1)]`
-/

namespace A072481.P3816975360647103963
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2 + 1) % (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072481.P3816975360647103963

namespace A072481

/-- `∑[(n²+1)%(∑[∑{d}[n, #]]+1)]` -/
def P3816975360647103963.Spec : Prop :=
  ∀ n, (P3816975360647103963.a n : ℤ) = A072481 n

end A072481

/-! ## A072481.P9144847961270701255

`∑[A111490(n)-n]`
-/

namespace A072481.P9144847961270701255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111490 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072481.P9144847961270701255

namespace A072481

/-- `∑[A111490(n)-n]` -/
def P9144847961270701255.Spec : Prop :=
  ∀ n, P9144847961270701255.a n = A072481 n

end A072481

/-! ## A072481.P422443538120763877

`A004125(n)+a(n-1)` with `a(0)=0`
-/

namespace A072481.P422443538120763877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A004125 n + a (n - 1)

end

end A072481.P422443538120763877

namespace A072481

/-- `A004125(n)+a(n-1)` -/
def P422443538120763877.Spec : Prop :=
  ∀ n, P422443538120763877.a n = A072481 n

end A072481

/-! ## A072481.P7875782915229084180

`∑[A004125(abs(1-n)+1)]`
-/

namespace A072481.P7875782915229084180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072481.P7875782915229084180

namespace A072481

/-- `∑[A004125(abs(1-n)+1)]` -/
def P7875782915229084180.Spec : Prop :=
  ∀ n, P7875782915229084180.a n = A072481 n

end A072481

/-! ## A072481.P8287007556017262563

`∑[∑[A235796(abs(1-n)+1)]]`
-/

namespace A072481.P8287007556017262563
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (|1 - (n : ℤ)| + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072481.P8287007556017262563

namespace A072481

/-- `∑[∑[A235796(abs(1-n)+1)]]` -/
def P8287007556017262563.Spec : Prop :=
  ∀ n, P8287007556017262563.a n = A072481 n

end A072481

/-! ## A072481.P7984036585843363460

`∑[A123327(n+1)]-(n+1)²`
-/

namespace A072481.P7984036585843363460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123327 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A072481.P7984036585843363460

namespace A072481

/-- `∑[A123327(n+1)]-(n+1)²` -/
def P7984036585843363460.Spec : Prop :=
  ∀ n, P7984036585843363460.a n = A072481 n

end A072481

/-! ## A072481.P7366153020930290737

`∑[A004125(n+1)]-A004125(n+1)`
-/

namespace A072481.P7366153020930290737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004125 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A004125 (n + 1)

end

end A072481.P7366153020930290737

namespace A072481

/-- `∑[A004125(n+1)]-A004125(n+1)` -/
def P7366153020930290737.Spec : Prop :=
  ∀ n, P7366153020930290737.a n = A072481 n

end A072481

/-! ## A072481.P9107070175399334775

`∑[∑[A235796(n+1)]-A235796(n+1)]`
-/

namespace A072481.P9107070175399334775
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235796 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A235796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072481.P9107070175399334775

namespace A072481

/-- `∑[∑[A235796(n+1)]-A235796(n+1)]` -/
def P9107070175399334775.Spec : Prop :=
  ∀ n, P9107070175399334775.a n = A072481 n

end A072481

/-! ## A072481.P12879193255374366121

`∑[A237588(n+1)-∑[A237588(n+1)]]`
-/

namespace A072481.P12879193255374366121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237588 (n + 1) - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072481.P12879193255374366121

namespace A072481

/-- `∑[A237588(n+1)-∑[A237588(n+1)]]` -/
def P12879193255374366121.Spec : Prop :=
  ∀ n, P12879193255374366121.a n = A072481 n

end A072481

/-! ## A072481.P2235563290826330389

`(∑[A067436(n+1)]-A067436(n+1))/2`
-/

namespace A072481.P2235563290826330389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067436 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - A067436 (n + 1) : ℤ) : ℚ) / 2

end

end A072481.P2235563290826330389

namespace A072481

/-- `(∑[A067436(n+1)]-A067436(n+1))/2` -/
def P2235563290826330389.Spec : Prop :=
  ∀ n, P2235563290826330389.a n = (A072481 n : ℚ)

end A072481

/-! ## A072481.P13801705215866438563

`A024916(n+1)+A000330(n)-A175254(n+1)`
-/

namespace A072481.P13801705215866438563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (n + 1) + (A000330 n - A175254 (n + 1))

end

end A072481.P13801705215866438563

namespace A072481

/-- `A024916(n+1)+A000330(n)-A175254(n+1)` -/
def P13801705215866438563.Spec : Prop :=
  ∀ n, P13801705215866438563.a n = A072481 n

end A072481

/-! ## A072481.P15511731596491997371

`A000330(n+1)-(A175254(n+1)+A004125(n+1))`
-/

namespace A072481.P15511731596491997371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000330 (n + 1) - (A175254 (n + 1) + A004125 (n + 1))

end

end A072481.P15511731596491997371

namespace A072481

/-- `A000330(n+1)-(A175254(n+1)+A004125(n+1))` -/
def P15511731596491997371.Spec : Prop :=
  ∀ n, P15511731596491997371.a n = A072481 n

end A072481

/-! ## A072481.P12444980351915049297

`A175254(n+1)-(A294017(n+1)+A004125(n+1))`
-/

namespace A072481.P12444980351915049297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175254 (n + 1) - (A294017 (n + 1) + A004125 (n + 1))

end

end A072481.P12444980351915049297

namespace A072481

/-- `A175254(n+1)-(A294017(n+1)+A004125(n+1))` -/
def P12444980351915049297.Spec : Prop :=
  ∀ n, P12444980351915049297.a n = A072481 n

end A072481

/-! ## A072481.P14696628528500502961

`∑[∑{#}[n, (n+1)%(#+1)]]-∑{#}[n, (n+1)%(#+1)]`
-/

namespace A072481.P14696628528500502961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f2 n + 1), (n + 1) % (k + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((∑ k ∈ Finset.range (f3 n + 1), (n + 1) % (k + 1) : ℕ) : ℤ)

end

end A072481.P14696628528500502961

namespace A072481

/-- `∑[∑{#}[n, (n+1)%(#+1)]]-∑{#}[n, (n+1)%(#+1)]` -/
def P14696628528500502961.Spec : Prop :=
  ∀ n, P14696628528500502961.a n = A072481 n

end A072481

/-!
# A072482: Partition the nonnegative integers into minimal groups whose sums are palindromes; this sequence gives the sums.

The programs for A072482, there is no canonical definition to state claims against.
-/

/-! ## A072482.P15167888345769471586

`A262038(record[A175423(n)])`
-/

namespace A072482.P15167888345769471586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175423 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262038 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A072482.P15167888345769471586

/-! ## A072482.P14419015723046871385

`eq[A080867(n), A351868(n)]`
-/

namespace A072482.P14419015723046871385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080867 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351868 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072482.P14419015723046871385

/-! ## A072482.P16505082693471830510

`record[gcd(A014105(n), A029731(n+1))]`
-/

namespace A072482.P16505082693471830510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014105 n) (A029731 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072482.P16505082693471830510

/-! ## A072482.P12244295159527480732

`eq[dr(A247802(n+1)), A137564(n)]`
-/

namespace A072482.P12244295159527480732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A247802 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072482.P12244295159527480732

/-! ## A072482.P13531762624389852620

`∩[A052061(n+1), A201060(n+1)]`
-/

namespace A072482.P13531762624389852620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052061 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072482.P13531762624389852620

/-!
# A072484: Triangle in which the n-th row contains the n smallest numbers containing the string of digits of n in increasing order.

The programs for A072484, there is no canonical definition to state claims against.
-/

/-! ## A072484.P6144584225767989788

`A293869(A245300(n)+A004736(n+1))`
-/

namespace A072484.P6144584225767989788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293869 (A245300 n + A004736 (n + 1)).toNat

end

end A072484.P6144584225767989788

/-! ## A072484.P8500661458158154821

`A337918(n+1)%A016947(A238802(n))`
-/

namespace A072484.P8500661458158154821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337918 (n + 1)) (A016947 (A238802 n).toNat)

end

end A072484.P8500661458158154821

/-! ## A072484.P9526547585783595925

`A337918(n+1)%A297569(n)`
-/

namespace A072484.P9526547585783595925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337918 (n + 1)) (A297569 n)

end

end A072484.P9526547585783595925

/-! ## A072484.P13909909505324869167

`A337918(n+1)+C(n, ∑[A144183(n)])`
-/

namespace A072484.P13909909505324869167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144183 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337918 (n + 1) + (Nat.choose n (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℤ)

end

end A072484.P13909909505324869167

/-! ## A072484.P16231510939379119360

`floor(atan(A332065(n+1)))*A337918(n+1)`
-/

namespace A072484.P16231510939379119360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A332065 (n + 1) : ℝ)⌋ * A337918 (n + 1)

end

end A072484.P16231510939379119360

/-! ## A072484.P6592044310489531797

`A337918(n+1)+A000007(A047858(n))`
-/

namespace A072484.P6592044310489531797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337918 (n + 1) + A000007 (A047858 n).toNat

end

end A072484.P6592044310489531797

/-! ## A072484.P18157496221690397665

`A337918(n+1)+A000007(A140183(n))`
-/

namespace A072484.P18157496221690397665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337918 (n + 1) + A000007 (A140183 n).toNat

end

end A072484.P18157496221690397665

/-! ## A072484.P8698649007566166472

`A337918(n+1)+A000007(A144183(n))`
-/

namespace A072484.P8698649007566166472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337918 (n + 1) + A000007 (A144183 n).toNat

end

end A072484.P8698649007566166472

/-! ## A072484.P7224553562165274363

`A008480(A158565(n))*A337918(n+1)`
-/

namespace A072484.P7224553562165274363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A158565 n).toNat * A337918 (n + 1)

end

end A072484.P7224553562165274363

/-! ## A072484.P5879271815214248542

`A337918(A096780(A096780(A096781(n+1))))`
-/

namespace A072484.P5879271815214248542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337918 (A096780 (A096780 (A096781 (n + 1)).toNat).toNat).toNat

end

end A072484.P5879271815214248542

/-!
# A072485: n-th number that includes the substring [n] in its decimal expansion.

The programs for A072485, there is no canonical definition to state claims against.
-/

/-! ## A072485.P16079914865056621368

`A072484(∑[n+1])`
-/

namespace A072485.P16079914865056621368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072484 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072485.P16079914865056621368

/-! ## A072485.P16627596877535021279

`or(char[2], A072484(A000124(n)+n))`
-/

namespace A072485.P16627596877535021279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A072484 (A000124 n + (n : ℤ)).toNat)

end

end A072485.P16627596877535021279

/-! ## A072485.P17690705353247176963

`A000027(A072484(A000124(n)+n))`
-/

namespace A072485.P17690705353247176963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A072484 (A000124 n + (n : ℤ)).toNat).toNat

end

end A072485.P17690705353247176963

/-! ## A072485.P16453783452061781372

`A072484(A000124(n)+n)+char[A064160(n)]`
-/

namespace A072485.P16453783452061781372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064160 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072484 (A000124 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A072485.P16453783452061781372

/-! ## A072485.P17089730100800513733

`A072484(A000217(n+1))%A126956(n+1)`
-/

namespace A072485.P17089730100800513733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072484 (A000217 (n + 1)).toNat) (A126956 (n + 1))

end

end A072485.P17089730100800513733

/-! ## A072485.P16582000142112131760

`A072484(A000124(n)+n)+A000007(n+1)`
-/

namespace A072485.P16582000142112131760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072484 (A000124 n + (n : ℤ)).toNat + A000007 (n + 1)

end

end A072485.P16582000142112131760

/-! ## A072485.P8603614570616543740

`A007318(C(2, n))*A072484(A000124(n)+n)`
-/

namespace A072485.P8603614570616543740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A072484 (A000124 n + (n : ℤ)).toNat

end

end A072485.P8603614570616543740

/-! ## A072485.P7727649075679181032

`A072484(A000124(n)+n)%A000040(n+2)²`
-/

namespace A072485.P7727649075679181032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072484 (A000124 n + (n : ℤ)).toNat) (A000040 (n + 2) ^ 2)

end

end A072485.P7727649075679181032

/-! ## A072485.P9787050617190527088

`A335379(4*(n+1))+A072484(A000124(n)+n)`
-/

namespace A072485.P9787050617190527088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335379 (4 * (n + 1)) + A072484 (A000124 n + (n : ℤ)).toNat

end

end A072485.P9787050617190527088

/-! ## A072485.P9690814429386416885

`(A072484(A000124(n)+n)^(A000032(C(2, n+2))/4))²`
-/

namespace A072485.P9690814429386416885
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A072484 (A000124 n + (n : ℤ)).toNat : ℝ) ^ ((A000032 (Nat.choose 2 (n + 2)) : ℚ) / 4 : ℝ)) ^ 2

end

end A072485.P9690814429386416885

/-! ## A072485.P13226145201985824585

`A053119(A057944(n))*A072484(A000124(n)+n)`
-/

namespace A072485.P13226145201985824585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053119 (A057944 n).toNat * A072484 (A000124 n + (n : ℤ)).toNat

end

end A072485.P13226145201985824585

/-! ## A072485.P14011047817886812904

`A065941(A178334(n))*A072484(A000124(n)+n)`
-/

namespace A072485.P14011047817886812904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065941 (A178334 n).toNat * A072484 (A000124 n + (n : ℤ)).toNat

end

end A072485.P14011047817886812904

/-! ## A072485.P16092033318150911017

`A054977(A065515(n+1))*A072484(A000124(n)+n)`
-/

namespace A072485.P16092033318150911017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A065515 (n + 1)).toNat * A072484 (A000124 n + (n : ℤ)).toNat

end

end A072485.P16092033318150911017

/-!
# A072486: a(1) = 1, a(n) = a(n-1) times smallest prime factor of n.

The programs for A072486, the canonical program `A072486.P2808628883728102682` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072486 has offset 1).

The definition of A072486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072486.P3664328129616347928

`∏[A020639(1+n)]`
-/

namespace A072486.P3664328129616347928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072486.P3664328129616347928

namespace A072486

/-- `∏[A020639(1+n)]` -/
def P3664328129616347928.Spec : Prop :=
  ∀ n, P3664328129616347928.a n = A072486 (n + 1)

end A072486

/-! ## A072486.P17742004230486930524

`∏[sqrt(A088377(n+1))]`
-/

namespace A072486.P17742004230486930524
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A088377 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072486.P17742004230486930524

namespace A072486

/-- `∏[sqrt(A088377(n+1))]` -/
def P17742004230486930524.Spec : Prop :=
  ∀ n, P17742004230486930524.a n = (A072486 (n + 1) : ℝ)

end A072486

/-! ## A072486.P12817651272081160320

`∏[A014673(2*(n+1))]`
-/

namespace A072486.P12817651272081160320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072486.P12817651272081160320

namespace A072486

/-- `∏[A014673(2*(n+1))]` -/
def P12817651272081160320.Spec : Prop :=
  ∀ n, P12817651272081160320.a n = A072486 (n + 1)

end A072486

/-! ## A072486.P16600340107109059710

`a(n-1)*A092067(n)` with `a(0)=1`
-/

namespace A072486.P16600340107109059710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A092067 n

end

end A072486.P16600340107109059710

namespace A072486

/-- `a(n-1)*A092067(n)` -/
def P16600340107109059710.Spec : Prop :=
  ∀ n, P16600340107109059710.a n = A072486 (n + 1)

end A072486

/-! ## A072486.P2951018919322565370

`∏[A061228(n+1)-(n+1)]`
-/

namespace A072486.P2951018919322565370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072486.P2951018919322565370

namespace A072486

/-- `∏[A061228(n+1)-(n+1)]` -/
def P2951018919322565370.Spec : Prop :=
  ∀ n, P2951018919322565370.a n = A072486 (n + 1)

end A072486

/-! ## A072486.P3160435443361528795

`∏[(n+1)/A032742(n+1)]`
-/

namespace A072486.P3160435443361528795
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032742 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072486.P3160435443361528795

namespace A072486

/-- `∏[(n+1)/A032742(n+1)]` -/
def P3160435443361528795.Spec : Prop :=
  ∀ n, P3160435443361528795.a n = (A072486 (n + 1) : ℚ)

end A072486

/-! ## A072486.P13064164861096590427

`a(n-1)*A020639(n+1)` with `a(0)=1`
-/

namespace A072486.P13064164861096590427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A020639 (n + 1)

end

end A072486.P13064164861096590427

namespace A072486

/-- `a(n-1)*A020639(n+1)` -/
def P13064164861096590427.Spec : Prop :=
  ∀ n, P13064164861096590427.a n = A072486 (n + 1)

end A072486

/-! ## A072486.P16655000445530603463

`∏[A006530(A028233(n+1))]`
-/

namespace A072486.P16655000445530603463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028233 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072486.P16655000445530603463

namespace A072486

/-- `∏[A006530(A028233(n+1))]` -/
def P16655000445530603463.Spec : Prop :=
  ∀ n, P16655000445530603463.a n = A072486 (n + 1)

end A072486

/-! ## A072486.P6494358935049831390

`∏[A006530(A068794(n+1))]`
-/

namespace A072486.P6494358935049831390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A068794 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072486.P6494358935049831390

namespace A072486

/-- `∏[A006530(A068794(n+1))]` -/
def P6494358935049831390.Spec : Prop :=
  ∀ n, P6494358935049831390.a n = A072486 (n + 1)

end A072486

/-! ## A072486.P10370679997118907369

`∏[A006530(A074828(n+1))]`
-/

namespace A072486.P10370679997118907369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072486.P10370679997118907369

namespace A072486

/-- `∏[A006530(A074828(n+1))]` -/
def P10370679997118907369.Spec : Prop :=
  ∀ n, P10370679997118907369.a n = A072486 (n + 1)

end A072486

/-! ## A072486.P15887512311169334177

`∏[A006530(A304181(n+1))]`
-/

namespace A072486.P15887512311169334177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A304181 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072486.P15887512311169334177

namespace A072486

/-- `∏[A006530(A304181(n+1))]` -/
def P15887512311169334177.Spec : Prop :=
  ∀ n, P15887512311169334177.a n = A072486 (n + 1)

end A072486

/-! ## A072486.P2808628883728102682

`∏[A353270(A353270(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A072486

/-- `∏[A353270(A353270(n+1))]` -/
def P2808628883728102682.Spec : Prop :=
  ∀ n, P2808628883728102682.a n = A072486 (n + 1)

theorem P2808628883728102682.correct : P2808628883728102682.Spec := by
  intro n
  simp only [A072486, Nat.add_sub_cancel]

end A072486

/-! ## A072486.P14830625011871639417

`∏[A240694(A006218(n)+2)]`
-/

namespace A072486.P14830625011871639417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240694 (A006218 n + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072486.P14830625011871639417

namespace A072486

/-- `∏[A240694(A006218(n)+2)]` -/
def P14830625011871639417.Spec : Prop :=
  ∀ n, P14830625011871639417.a n = A072486 (n + 1)

end A072486

/-! ## A072486.P15515486472928692906

`∏[A102457(n+2)%A006935(n+1)]`
-/

namespace A072486.P15515486472928692906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102457 (n + 2)) (A006935 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072486.P15515486472928692906

namespace A072486

/-- `∏[A102457(n+2)%A006935(n+1)]` -/
def P15515486472928692906.Spec : Prop :=
  ∀ n, P15515486472928692906.a n = A072486 (n + 1)

end A072486

/-! ## A072486.P12225894865819768231

`∏[gcd(A102457(n+2), A271669(n+1))]`
-/

namespace A072486.P12225894865819768231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102457 (n + 2)) (A271669 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072486.P12225894865819768231

namespace A072486

/-- `∏[gcd(A102457(n+2), A271669(n+1))]` -/
def P12225894865819768231.Spec : Prop :=
  ∀ n, (P12225894865819768231.a n : ℤ) = A072486 (n + 1)

end A072486

/-! ## A072486.P15098204394783934850

`∏[A092067(n+1)]/A092067(n+1)`
-/

namespace A072486.P15098204394783934850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092067 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A092067 (n + 1) : ℚ)

end

end A072486.P15098204394783934850

namespace A072486

/-- `∏[A092067(n+1)]/A092067(n+1)` -/
def P15098204394783934850.Spec : Prop :=
  ∀ n, P15098204394783934850.a n = (A072486 (n + 1) : ℚ)

end A072486

/-! ## A072486.P18715578877671131

`∏[A102457(n+3)]/A102457(n+3)`
-/

namespace A072486.P18715578877671131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A102457 (n + 3) : ℚ)

end

end A072486.P18715578877671131

namespace A072486

/-- `∏[A102457(n+3)]/A102457(n+3)` -/
def P18715578877671131.Spec : Prop :=
  ∀ n, P18715578877671131.a n = (A072486 (n + 1) : ℚ)

end A072486

/-! ## A072486.P13563918799666864283

`a(n-1)*A227196((n+1)²)` with `a(0)=1`
-/

namespace A072486.P13563918799666864283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A227196 ((n + 1) ^ 2)

end

end A072486.P13563918799666864283

namespace A072486

/-- `a(n-1)*A227196((n+1)²)` -/
def P13563918799666864283.Spec : Prop :=
  ∀ n, P13563918799666864283.a n = A072486 (n + 1)

end A072486

/-!
# A072487: a(1) = 1, a(n) = a(n-1) times largest nontrivial divisor if n is composite.

The programs for A072487, there is no canonical definition to state claims against.
-/

/-! ## A072487.P1904469172926037720

`∏[A117818(n+1)]`
-/

namespace A072487.P1904469172926037720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072487.P1904469172926037720

/-! ## A072487.P3305086566418596942

`∏[A032742(n+1)+n*and(1, ∑{e}[n+1, #]!)]`
-/

namespace A072487.P3305086566418596942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (n + 1) + (n * Nat.land 1 (Nat.factorial (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072487.P3305086566418596942

/-! ## A072487.P11604366103770047914

`A034386(n+1)*A076929(n+1)`
-/

namespace A072487.P11604366103770047914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (n + 1) * A076929 (n + 1)

end

end A072487.P11604366103770047914

/-! ## A072487.P7474644471171734815

`∏[(n+1)/A020639(gcd(n+1, n!))]`
-/

namespace A072487.P7474644471171734815
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A020639 (Nat.gcd (n + 1) (Nat.factorial n)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072487.P7474644471171734815

/-! ## A072487.P13217106708603470748

`∏[A346701(n+1)%A338602(n+1)]`
-/

namespace A072487.P13217106708603470748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346701 (n + 1)) (A338602 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072487.P13217106708603470748

/-!
# A072488: a(1) = 1, a(n) = a(n-1) times largest divisor of n <= n^(1/2).

The programs for A072488, there is no canonical definition to state claims against.
-/

/-! ## A072488.P12424482900605685283

`A033676(n+1)*a(n-1)` with `a(0)=1`
-/

namespace A072488.P12424482900605685283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A033676 (n + 1) * a (n - 1)

end

end A072488.P12424482900605685283

/-! ## A072488.P13002438517711839801

`∏[A033676(n+1)]`
-/

namespace A072488.P13002438517711839801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033676 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072488.P13002438517711839801

/-! ## A072488.P11808953419235297404

`∏[A162348(Δ[n²])]`
-/

namespace A072488.P11808953419235297404
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072488.P11808953419235297404

/-! ## A072488.P14397641782624874726

`∏[A207375(∑[2-char[n²]])]`
-/

namespace A072488.P14397641782624874726
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207375 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072488.P14397641782624874726

/-! ## A072488.P15905413223484802355

`∏[(n+1)/A033677(n+1)]`
-/

namespace A072488.P15905413223484802355
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A033677 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072488.P15905413223484802355

/-! ## A072488.P9163605529982628243

`a(n-1)*A162348(2*n+1)` with `a(0)=1`
-/

namespace A072488.P9163605529982628243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A162348 (2 * n + 1)

end

end A072488.P9163605529982628243

/-!
# A072489: a(1) = 1, a(n) = a(n-1) times smallest divisor of n >= n^(1/2).

The programs for A072489, there is no canonical definition to state claims against.
-/

/-! ## A072489.P6186487897938571241

`a(n-1)*A033677(n+1)` with `a(0)=1`
-/

namespace A072489.P6186487897938571241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A033677 (n + 1)

end

end A072489.P6186487897938571241

/-! ## A072489.P279638785316470788

`(n+1)*a(n-1)/A033676(n+1)` with `a(0)=1`
-/

namespace A072489.P279638785316470788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) * a (n - 1) / (A033676 (n + 1) : ℚ)

end

end A072489.P279638785316470788

/-! ## A072489.P14634269203750350454

`∏[A033677(n+1)]`
-/

namespace A072489.P14634269203750350454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072489.P14634269203750350454

/-! ## A072489.P13889114076996999605

`∏[A162348(2*(1+n))]`
-/

namespace A072489.P13889114076996999605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162348 (2 * (1 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072489.P13889114076996999605

/-! ## A072489.P5851073118453986078

`∏[A248835(1+n)-(n+1)]`
-/

namespace A072489.P5851073118453986078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248835 (1 + n) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072489.P5851073118453986078

/-! ## A072489.P11965204609431990583

`∏[(n+1)/A033676(n+1)]`
-/

namespace A072489.P11965204609431990583
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A033676 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A072489.P11965204609431990583

/-!
# A072490: Number of squarefree numbers (excluding 1) less than n.

The programs for A072490, the canonical program `A072490.P2566266464626917977` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072490 has offset 1).

The definition of A072490 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072490.P16691355259550406415

`∑[char[record[∏{p}[n+2, #]]]]`
-/

namespace A072490.P16691355259550406415
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072490.P16691355259550406415

namespace A072490

/-- `∑[char[record[∏{p}[n+2, #]]]]` -/
def P16691355259550406415.Spec : Prop :=
  ∀ n, (P16691355259550406415.a n : ℤ) = A072490 (n + 1)

end A072490

/-! ## A072490.P6148330182842175814

`comp[record[∏{p}[n+2, #]]+n]-n`
-/

namespace A072490.P6148330182842175814
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A072490.P6148330182842175814

namespace A072490

/-- `comp[record[∏{p}[n+2, #]]+n]-n` -/
def P6148330182842175814.Spec : Prop :=
  ∀ n, P6148330182842175814.a n = A072490 (n + 1)

end A072490

/-! ## A072490.P2566266464626917977

`a(n-1)+C(∏{p}[n, #], n)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A072490

/-- `a(n-1)+C(∏{p}[n, #], n)` -/
def P2566266464626917977.Spec : Prop :=
  ∀ n, (P2566266464626917977.a n : ℤ) = A072490 (n + 1)

theorem P2566266464626917977.correct : P2566266464626917977.Spec := by
  intro n
  simp only [A072490, Nat.add_sub_cancel]

end A072490

/-! ## A072490.P8415543155279348660

`∑[1-A087049(n)]`
-/

namespace A072490.P8415543155279348660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A087049 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072490.P8415543155279348660

namespace A072490

/-- `∑[1-A087049(n)]` -/
def P8415543155279348660.Spec : Prop :=
  ∀ n, P8415543155279348660.a n = A072490 (n + 1)

end A072490

/-! ## A072490.P10461174212490585998

`∑[char[A144338(n+1)]]`
-/

namespace A072490.P10461174212490585998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072490.P10461174212490585998

namespace A072490

/-- `∑[char[A144338(n+1)]]` -/
def P10461174212490585998.Spec : Prop :=
  ∀ n, (P10461174212490585998.a n : ℤ) = A072490 (n + 1)

end A072490

/-! ## A072490.P15343779327794581971

`∑[char[A005117(n+2)]]`
-/

namespace A072490.P15343779327794581971
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072490.P15343779327794581971

namespace A072490

/-- `∑[char[A005117(n+2)]]` -/
def P15343779327794581971.Spec : Prop :=
  ∀ n, (P15343779327794581971.a n : ℤ) = A072490 (n + 1)

end A072490

/-! ## A072490.P14340864680165884404

`∑[char[A007947(n+2)]]`
-/

namespace A072490.P14340864680165884404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072490.P14340864680165884404

namespace A072490

/-- `∑[char[A007947(n+2)]]` -/
def P14340864680165884404.Spec : Prop :=
  ∀ n, (P14340864680165884404.a n : ℤ) = A072490 (n + 1)

end A072490

/-! ## A072490.P13022743975550291991

`∑[char[A067535(n+2)]]`
-/

namespace A072490.P13022743975550291991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067535 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072490.P13022743975550291991

namespace A072490

/-- `∑[char[A067535(n+2)]]` -/
def P13022743975550291991.Spec : Prop :=
  ∀ n, (P13022743975550291991.a n : ℤ) = A072490 (n + 1)

end A072490

/-! ## A072490.P13445110486197800059

`A289207(A107079(n+1))`
-/

namespace A072490.P13445110486197800059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A107079 (n + 1)).toNat

end

end A072490.P13445110486197800059

namespace A072490

/-- `A289207(A107079(n+1))` -/
def P13445110486197800059.Spec : Prop :=
  ∀ n, P13445110486197800059.a n = A072490 (n + 1)

end A072490

/-! ## A072490.P4688199656798287315

`A057428(n)+A013928(n+1)`
-/

namespace A072490.P4688199656798287315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A013928 (n + 1)

end

end A072490.P4688199656798287315

namespace A072490

/-- `A057428(n)+A013928(n+1)` -/
def P4688199656798287315.Spec : Prop :=
  ∀ n, P4688199656798287315.a n = A072490 (n + 1)

end A072490

/-! ## A072490.P12933061088099271155

`A013928(n+1)-A057427(n)`
-/

namespace A072490.P12933061088099271155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) - A057427 n

end

end A072490.P12933061088099271155

namespace A072490

/-- `A013928(n+1)-A057427(n)` -/
def P12933061088099271155.Spec : Prop :=
  ∀ n, P12933061088099271155.a n = A072490 (n + 1)

end A072490

/-! ## A072490.P7913779221718052441

`A107079(n+1)-A040000(n)`
-/

namespace A072490.P7913779221718052441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1) - A040000 n

end

end A072490.P7913779221718052441

namespace A072490

/-- `A107079(n+1)-A040000(n)` -/
def P7913779221718052441.Spec : Prop :=
  ∀ n, P7913779221718052441.a n = A072490 (n + 1)

end A072490

/-! ## A072490.P8797765987109030819

`A107079(n+1)-A034444(A034444(n+1))`
-/

namespace A072490.P8797765987109030819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1) - A034444 (A034444 (n + 1)).toNat

end

end A072490.P8797765987109030819

namespace A072490

/-- `A107079(n+1)-A034444(A034444(n+1))` -/
def P8797765987109030819.Spec : Prop :=
  ∀ n, P8797765987109030819.a n = A072490 (n + 1)

end A072490

/-! ## A072490.P7922928122366116417

`∑[char[A070321(n+2)]]`
-/

namespace A072490.P7922928122366116417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070321 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072490.P7922928122366116417

namespace A072490

/-- `∑[char[A070321(n+2)]]` -/
def P7922928122366116417.Spec : Prop :=
  ∀ n, (P7922928122366116417.a n : ℤ) = A072490 (n + 1)

end A072490

/-! ## A072490.P5333083360155497068

`A013928(n+1)+A000005(n+2)-A212356(n+2)`
-/

namespace A072490.P5333083360155497068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013928 (n + 1) + A000005 (n + 2) - A212356 (n + 2)

end

end A072490.P5333083360155497068

namespace A072490

/-- `A013928(n+1)+A000005(n+2)-A212356(n+2)` -/
def P5333083360155497068.Spec : Prop :=
  ∀ n, P5333083360155497068.a n = A072490 (n + 1)

end A072490

/-! ## A072490.P4728477200069870768

`∑[char[A072775(n+2)]]`
-/

namespace A072490.P4728477200069870768
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072775 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072490.P4728477200069870768

namespace A072490

/-- `∑[char[A072775(n+2)]]` -/
def P4728477200069870768.Spec : Prop :=
  ∀ n, (P4728477200069870768.a n : ℤ) = A072490 (n + 1)

end A072490

/-! ## A072490.P12288704990512890387

`∑[char[A075372(n+2)]]`
-/

namespace A072490.P12288704990512890387
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075372 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072490.P12288704990512890387

namespace A072490

/-- `∑[char[A075372(n+2)]]` -/
def P12288704990512890387.Spec : Prop :=
  ∀ n, (P12288704990512890387.a n : ℤ) = A072490 (n + 1)

end A072490

/-! ## A072490.P13653463413860296269

`∑[char[A076043(n)]]`
-/

namespace A072490.P13653463413860296269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076043 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072490.P13653463413860296269

namespace A072490

/-- `∑[char[A076043(n)]]` -/
def P13653463413860296269.Spec : Prop :=
  ∀ n, (P13653463413860296269.a n : ℤ) = A072490 (n + 1)

end A072490

/-! ## A072490.P14465159402074937570

`∑[char[A084334(n+2)]]`
-/

namespace A072490.P14465159402074937570
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084334 (n + 2)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072490.P14465159402074937570

namespace A072490

/-- `∑[char[A084334(n+2)]]` -/
def P14465159402074937570.Spec : Prop :=
  ∀ n, (P14465159402074937570.a n : ℤ) = A072490 (n + 1)

end A072490

/-! ## A072490.P12556695628464420503

`∑[char[A226693(n+1)]]`
-/

namespace A072490.P12556695628464420503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226693 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A072490.P12556695628464420503

namespace A072490

/-- `∑[char[A226693(n+1)]]` -/
def P12556695628464420503.Spec : Prop :=
  ∀ n, (P12556695628464420503.a n : ℤ) = A072490 (n + 1)

end A072490

/-!
# A072491: Define f(1) = 0. For n>=2, let f(n) = n - p where p is the largest prime <= n. a(n) = number of iterations of f to reach 0, starting from n.

The programs for A072491, the canonical program `A072491.P7864567576661670138` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072491 has offset 0).

The definition of A072491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072491.P3065312345271467892

`1+a(n-A007917(n))` with `a(0)=0, a(1)=1`
-/

namespace A072491.P3065312345271467892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A007917 n).toNat

end

end A072491.P3065312345271467892

namespace A072491

/-- `1+a(n-A007917(n))` -/
def P3065312345271467892.Spec : Prop :=
  ∀ n, (P3065312345271467892.a n : ℤ) = A072491 n

end A072491

/-! ## A072491.P7864567576661670138

`a(A064722(n))+1` with `a(0)=0`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A072491

/-- `a(A064722(n))+1` -/
def P7864567576661670138.Spec : Prop :=
  ∀ n, (P7864567576661670138.a n : ℤ) = A072491 n

theorem P7864567576661670138.correct : P7864567576661670138.Spec := by
  intro n
  simp only [A072491]

end A072491

/-! ## A072491.P4748313678676875786

`a(A175851(n)-1)+1` with `a(0)=0`
-/

namespace A072491.P4748313678676875786
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A175851 n - 1).toNat + 1

end

end A072491.P4748313678676875786

namespace A072491

/-- `a(A175851(n)-1)+1` -/
def P4748313678676875786.Spec : Prop :=
  ∀ n, (P4748313678676875786.a n : ℤ) = A072491 n

end A072491

/-! ## A072491.P18037850106587315480

`1+a(n-A151799(n+1))` with `a(0)=0, a(1)=1`
-/

namespace A072491.P18037850106587315480
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  1 + a ((n : ℤ) - A151799 (n + 1)).toNat

end

end A072491.P18037850106587315480

namespace A072491

/-- `1+a(n-A151799(n+1))` -/
def P18037850106587315480.Spec : Prop :=
  ∀ n, (P18037850106587315480.a n : ℤ) = A072491 n

end A072491

/-! ## A072491.P5573590960643904147

`A155051(a(A064722(n)))` with `a(0)=0`
-/

namespace A072491.P5573590960643904147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A155051 (a (A064722 n).toNat).toNat

end

end A072491.P5573590960643904147

namespace A072491

/-- `A155051(a(A064722(n)))` -/
def P5573590960643904147.Spec : Prop :=
  ∀ n, P5573590960643904147.a n = A072491 n

end A072491

/-! ## A072491.P1613984204668261604

`A253565(a(n-A151799(n+1)))` with `a(0)=0, a(1)=1`
-/

namespace A072491.P1613984204668261604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A253565 (a ((n : ℤ) - A151799 (n + 1)).toNat).toNat

end

end A072491.P1613984204668261604

namespace A072491

/-- `A253565(a(n-A151799(n+1)))` -/
def P1613984204668261604.Spec : Prop :=
  ∀ n, P1613984204668261604.a n = A072491 n

end A072491

/-! ## A072491.P17914403017148920524

`a(n-A136548(n+1))+1` with `a(0)=0`
-/

namespace A072491.P17914403017148920524
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A136548 (n + 1)).toNat + 1

end

end A072491.P17914403017148920524

namespace A072491

/-- `a(n-A136548(n+1))+1` -/
def P17914403017148920524.Spec : Prop :=
  ∀ n, (P17914403017148920524.a n : ℤ) = A072491 n

end A072491

/-! ## A072491.P406727870513020810

`dr(A007924(n))`
-/

namespace A072491.P406727870513020810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007924 n)

end

end A072491.P406727870513020810

namespace A072491

/-- `dr(A007924(n))` -/
def P406727870513020810.Spec : Prop :=
  ∀ n, (P406727870513020810.a n : ℤ) = A072491 n

end A072491

/-! ## A072491.P11978231377717131783

`A175077(n+1)+A175078(n+1)-1`
-/

namespace A072491.P11978231377717131783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175077 (n + 1) + (A175078 (n + 1) - 1)

end

end A072491.P11978231377717131783

namespace A072491

/-- `A175077(n+1)+A175078(n+1)-1` -/
def P11978231377717131783.Spec : Prop :=
  ∀ n, P11978231377717131783.a n = A072491 n

end A072491

/-! ## A072491.P7897875303203626090

`A107286((A175077(n+1)+1)*A107286(n))`
-/

namespace A072491.P7897875303203626090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 ((A175077 (n + 1) + 1) * A107286 n).toNat

end

end A072491.P7897875303203626090

namespace A072491

/-- `A107286((A175077(n+1)+1)*A107286(n))` -/
def P7897875303203626090.Spec : Prop :=
  ∀ n, P7897875303203626090.a n = A072491 n

end A072491

/-!
# A072492: Values of n for which A072491(n)=3.

The programs for A072492, the canonical program `A072492.P5866814603808169309` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072492 has offset 1).

The definition of A072492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3398 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072492.P5866814603808169309

`eq[3, A072491(n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A072492

/-- `eq[3, A072491(n)]` -/
def P5866814603808169309.Spec : Prop :=
  ∀ n, (P5866814603808169309.a n : ℤ) = A072492 (n + 1)

theorem P5866814603808169309.correct : P5866814603808169309.Spec := by
  intro n
  simp only [A072492, Nat.add_sub_cancel]

end A072492

/-! ## A072492.P2209216730177738258

`eq[4, a(A064722(n))+1]` with `a(0)=1`
-/

namespace A072492.P2209216730177738258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  f2 (A064722 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072492.P2209216730177738258

namespace A072492

/-- `eq[4, a(A064722(n))+1]` -/
def P2209216730177738258.Spec : Prop :=
  ∀ n, (P2209216730177738258.a n : ℤ) = A072492 (n + 1)

end A072492

/-! ## A072492.P10767410602718940000

`lt[2, gcd(A072491(n), A158799(n))]`
-/

namespace A072492.P10767410602718940000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A072491 n) (A158799 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072492.P10767410602718940000

namespace A072492

/-- `lt[2, gcd(A072491(n), A158799(n))]` -/
def P10767410602718940000.Spec : Prop :=
  ∀ n, (P10767410602718940000.a n : ℤ) = A072492 (n + 1)

end A072492

/-! ## A072492.P6538257938103767000

`lt[A000005(A015913(n+1)), A072491(n)]`
-/

namespace A072492.P6538257938103767000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A015913 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072492.P6538257938103767000

namespace A072492

/-- `lt[A000005(A015913(n+1)), A072491(n)]` -/
def P6538257938103767000.Spec : Prop :=
  ∀ n, (P6538257938103767000.a n : ℤ) = A072492 (n + 1)

end A072492

/-! ## A072492.P7668473757734562028

`eq[3, dr(A007924(n))]`
-/

namespace A072492.P7668473757734562028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007924 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A072492.P7668473757734562028

namespace A072492

/-- `eq[3, dr(A007924(n))]` -/
def P7668473757734562028.Spec : Prop :=
  ∀ n, (P7668473757734562028.a n : ℤ) = A072492 (n + 1)

end A072492

/-! ## A072492.P11243448465557068774

`lt[A020639(A013599(n)), A072491(n)]`
-/

namespace A072492.P11243448465557068774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A013599 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A072492.P11243448465557068774

namespace A072492

/-- `lt[A020639(A013599(n)), A072491(n)]` -/
def P11243448465557068774.Spec : Prop :=
  ∀ n, (P11243448465557068774.a n : ℤ) = A072492 (n + 1)

end A072492

/-!
# A072493: a(1) = 1 and a(n) = ceiling((Sum_{k=1..n-1} a(k))/3) for n >= 2.

The programs for A072493, the canonical program `A072493.P1514285638704659196` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A072493 has offset 1).

The definition of A072493 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 798 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A072493.P1514285638704659196

`Δ[floor((1/3+1)*a(n-1))]` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A072493

/-- `Δ[floor((1/3+1)*a(n-1))]` -/
def P1514285638704659196.Spec : Prop :=
  ∀ n, P1514285638704659196.a n = A072493 (n + 1)

theorem P1514285638704659196.correct : P1514285638704659196.Spec := by
  intro n
  simp only [A072493, Nat.add_sub_cancel]

end A072493

/-! ## A072493.P353133699196135354

`Δ[floor(2*2/3*a(n-1))]` with `a(0)=2, a(1)=3`
-/

namespace A072493.P353133699196135354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  ⌊2 * ((2 : ℚ) / 3 * (f1 (n - 1) : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072493.P353133699196135354

namespace A072493

/-- `Δ[floor(2*2/3*a(n-1))]` -/
def P353133699196135354.Spec : Prop :=
  ∀ n, P353133699196135354.a n = A072493 (n + 1)

theorem P353133699196135354.correct : P353133699196135354.Spec := by
  intro n
  simp only [A072493, Nat.add_sub_cancel, A072493.P353133699196135354.f1, A072493.P353133699196135354.a, A072493.P1514285638704659196.f1, A072493.P1514285638704659196.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A072493

/-! ## A072493.P9626556695241233813

`Δ[a(n-1)+ceil(a(n-1)/3)]` with `a(0)=0, a(1)=1`
-/

namespace A072493.P9626556695241233813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + ⌈(f1 (n - 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072493.P9626556695241233813

namespace A072493

/-- `Δ[a(n-1)+ceil(a(n-1)/3)]` -/
def P9626556695241233813.Spec : Prop :=
  ∀ n, P9626556695241233813.a n = A072493 (n + 1)

end A072493

/-! ## A072493.P8606257554408332693

`Δ[floor(a(n-1)+a(n-1)/3)]` with `a(0)=2, a(1)=3`
-/

namespace A072493.P8606257554408332693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) + (f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072493.P8606257554408332693

namespace A072493

/-- `Δ[floor(a(n-1)+a(n-1)/3)]` -/
def P8606257554408332693.Spec : Prop :=
  ∀ n, P8606257554408332693.a n = A072493 (n + 1)

theorem P8606257554408332693.correct : P8606257554408332693.Spec := by
  intro n
  simp only [A072493, Nat.add_sub_cancel, A072493.P8606257554408332693.f1, A072493.P8606257554408332693.a, A072493.P1514285638704659196.f1, A072493.P1514285638704659196.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A072493

/-! ## A072493.P12752257687284545471

`Δ[a(n-1)-floor((1-a(n-1))/3)]` with `a(0)=1, a(1)=2`
-/

namespace A072493.P12752257687284545471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) - ⌊(1 - f1 (n - 1) : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A072493.P12752257687284545471

namespace A072493

/-- `Δ[a(n-1)-floor((1-a(n-1))/3)]` -/
def P12752257687284545471.Spec : Prop :=
  ∀ n, P12752257687284545471.a n = A072493 (n + 1)

end A072493

/-! ## A072493.P15115400212077072362

`A245356(n+1)/4`
-/

namespace A072493.P15115400212077072362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245356 (n + 1) : ℚ) / 4

end

end A072493.P15115400212077072362

namespace A072493

/-- `A245356(n+1)/4` -/
def P15115400212077072362.Spec : Prop :=
  ∀ n, P15115400212077072362.a n = (A072493 (n + 1) : ℚ)

theorem P15115400212077072362.correct : P15115400212077072362.Spec := by
  intro n
  simp only [A072493, Nat.add_sub_cancel, A072493.P15115400212077072362.a, A072493.P1514285638704659196.f1, A072493.P1514285638704659196.a, A245356, A245356.P3604867257649377348.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A072493

/-! ## A072493.P11757174890274711300

`ceil(A087192(n+1)/4)`
-/

namespace A072493.P11757174890274711300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087192 (n + 1) : ℚ) / 4⌉

end

end A072493.P11757174890274711300

namespace A072493

/-- `ceil(A087192(n+1)/4)` -/
def P11757174890274711300.Spec : Prop :=
  ∀ n, P11757174890274711300.a n = A072493 (n + 1)

end A072493

/-!
# A072494: First of triples of consecutive happy numbers, i.e., the first of three consecutive integers each of which is a happy number (A007770).

The programs for A072494, there is no canonical definition to state claims against.
-/

/-! ## A072494.P15078566199172291172

`∩[A035502(n+1)-1, A035502(n+1)]`
-/

namespace A072494.P15078566199172291172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035502 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072494.P15078566199172291172

/-! ## A072494.P785599185271958764

`∩[A035502(n+1), A023443(A035502(n+1))]`
-/

namespace A072494.P785599185271958764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A035502 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072494.P785599185271958764

/-! ## A072494.P7622132657438344770

`∩[A035502(n+1), A289207(A035503(n+1))]`
-/

namespace A072494.P7622132657438344770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035502 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A035503 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072494.P7622132657438344770

/-! ## A072494.P10715369339546236243

`∩[A289207(A035502(n+1)+1), A035502(n+1)]`
-/

namespace A072494.P10715369339546236243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A035502 (n + 1) + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035502 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A072494.P10715369339546236243

/-! ## A072494.P18053945165825739342

`A023443(∩[A035503(n+1)-1, A035503(n+1)])`
-/

namespace A072494.P18053945165825739342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035503 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035503 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A072494.P18053945165825739342

/-!
# A072495: Automorphic numbers: numbers k such that k^21 ends with k. Also m-morphic numbers for any m such that (m-1)/10 is an even integer not divisible by 10.

The programs for A072495, there is no canonical definition to state claims against.
-/

/-! ## A072495.P8464550839049809521

`A246422(n+1)%∑[A375593(n+1)]`
-/

namespace A072495.P8464550839049809521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246422 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A072495.P8464550839049809521

/-! ## A072495.P8373298405245349099

`A246422(n+1)%A001358(A299281(n))`
-/

namespace A072495.P8373298405245349099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246422 (n + 1)) (A001358 (A299281 n).toNat)

end

end A072495.P8373298405245349099

/-! ## A072495.P2836856709089042678

`A066247(A292313(n+1))*A246422(n+1)`
-/

namespace A072495.P2836856709089042678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A292313 (n + 1)).toNat * A246422 (n + 1)

end

end A072495.P2836856709089042678

/-! ## A072495.P17301174678718591918

`A246422(n+1)+A121373(A006512(3*n+5))`
-/

namespace A072495.P17301174678718591918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246422 (n + 1) + A121373 (A006512 (3 * n + 5)).toNat

end

end A072495.P17301174678718591918

/-! ## A072495.P16562308847089868629

`A066247(A000961(n+1)*A050376(n+1))*A246422(n+1)`
-/

namespace A072495.P16562308847089868629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A000961 (n + 1) * A050376 (n + 1)).toNat * A246422 (n + 1)

end

end A072495.P16562308847089868629

/-! ## A072495.P9942438932110886741

`A066247(A008864(2*(n+1))*A053446(n+1))*A246422(n+1)`
-/

namespace A072495.P9942438932110886741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 (A008864 (2 * (n + 1)) * A053446 (n + 1)).toNat * A246422 (n + 1)

end

end A072495.P9942438932110886741

/-! ## A072495.P14413686569130958832

`A000194(A246422(n+1)²)`
-/

namespace A072495.P14413686569130958832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A246422 (n + 1) ^ 2).toNat

end

end A072495.P14413686569130958832

/-! ## A072495.P8400794058213996188

`A000196(comp[A246449(n+1)]²)`
-/

namespace A072495.P8400794058213996188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246449 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n ^ 2)

end

end A072495.P8400794058213996188

/-! ## A072495.P15604780156329265960

`∪[A023106(n), A075821(n+1)]`
-/

namespace A072495.P15604780156329265960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023106 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072495.P15604780156329265960

/-! ## A072495.P7129722765966977776

`∪[A046469(n), A075821(n+1)]`
-/

namespace A072495.P7129722765966977776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046469 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075821 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A072495.P7129722765966977776

/-!
# A072496: k-morphic numbers for any k such that (k-1)/10 is an odd integer not divisible by 5.

The programs for A072496, there is no canonical definition to state claims against.
-/

/-! ## A072496.P15001970157230822948

`or(A000035(A089841(n)), A010456(n+1))`
-/

namespace A072496.P15001970157230822948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A089841 n).toNat) (A010456 (n + 1))

end

end A072496.P15001970157230822948

/-! ## A072496.P15743536910191908737

`A025442(A010462(n+1))+A010456(n+1)`
-/

namespace A072496.P15743536910191908737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A010462 (n + 1)).toNat + A010456 (n + 1)

end

end A072496.P15743536910191908737

/-! ## A072496.P5909211061226578035

`A340599(A289654(n+1))+A010456(n+1)`
-/

namespace A072496.P5909211061226578035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340599 (A289654 (n + 1)).toNat + A010456 (n + 1)

end

end A072496.P5909211061226578035

/-! ## A072496.P14206015523850488748

`or(A000035(A010441(n+1)), A010456(n+1))`
-/

namespace A072496.P14206015523850488748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A010441 (n + 1)).toNat) (A010456 (n + 1))

end

end A072496.P14206015523850488748

/-! ## A072496.P16335776956949623767

`A025442(A010462(n+1))+comp[A028808(n+1)]`
-/

namespace A072496.P16335776956949623767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028808 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025442 (A010462 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A072496.P16335776956949623767

/-!
# A072497: Numbers k such that k^2 is a member of A072498.

The programs for A072497, there is no canonical definition to state claims against.
-/

/-! ## A072497.P10522224834969348144

`comp[A072327(n+1)-1]+1`
-/

namespace A072497.P10522224834969348144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072327 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A072497.P10522224834969348144

/-! ## A072497.P16647956096358006558

`eq[char[A072327(n+1)], A000007(n)]`
-/

namespace A072497.P16647956096358006558
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072327 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A072497.P16647956096358006558

/-! ## A072497.P8684089998354912984

`eq[char[A072327(n+1)], A000038(n)]`
-/

namespace A072497.P8684089998354912984
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072327 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A072497.P8684089998354912984

/-! ## A072497.P10994247625650108651

`eq[char[A072327(n+1)], A010051(2*(n+1))]`
-/

namespace A072497.P10994247625650108651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072327 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A072497.P10994247625650108651

/-! ## A072497.P9865505965761421402

`record[A233583(n+1)+char[A072327(n+1)]]`
-/

namespace A072497.P9865505965761421402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072327 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072497.P9865505965761421402

/-! ## A072497.P18410251442455401338

`lt[1, A076933((n+1)²)]+1`
-/

namespace A072497.P18410251442455401338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076933 ((n + 1) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072497.P18410251442455401338

/-! ## A072497.P2854539040964882861

`lt[1, A076933(A028310(n)²)]`
-/

namespace A072497.P2854539040964882861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076933 (A028310 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072497.P2854539040964882861

/-! ## A072497.P5184783449750721256

`record[A000188(A072498(n+1))]`
-/

namespace A072497.P5184783449750721256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A072498 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072497.P5184783449750721256

/-! ## A072497.P10130456779539375175

`lt[1, A076933(A028310(n²))]`
-/

namespace A072497.P10130456779539375175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076933 (A028310 (n ^ 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072497.P10130456779539375175

/-!
# A072498: n is not equal to the product of the k smallest divisors of n for any k.

The programs for A072498, there is no canonical definition to state claims against.
-/

/-! ## A072498.P6051950801014468825

`lt[1, A076933(n+1)]+1`
-/

namespace A072498.P6051950801014468825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A072498.P6051950801014468825

/-! ## A072498.P12613980768633419773

`eq[1, A035191(a(A076933(n)))]` with `a(0)=2, a(1)=4`
-/

namespace A072498.P12613980768633419773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  A035191 (f2 (A076933 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072498.P12613980768633419773

/-! ## A072498.P4983932992091029951

`eq[1, A076933(a(A076933(n)))]` with `a(0)=2, a(1)=4`
-/

namespace A072498.P4983932992091029951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 4] fun n f2 =>
  A076933 (f2 (A076933 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A072498.P4983932992091029951

/-! ## A072498.P201900071059535029

`lt[A135875(n+1), n]+1`
-/

namespace A072498.P201900071059535029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135875 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A072498.P201900071059535029

/-! ## A072498.P15925326452918958861

`record[(n+4)%A135874(n+4)]`
-/

namespace A072498.P15925326452918958861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 4 : ℤ) (A135874 (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A072498.P15925326452918958861

/-! ## A072498.P2197962849825655767

`eq[n+1, (n+1)%A135874(n+1)]+1`
-/

namespace A072498.P2197962849825655767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A135874 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A072498.P2197962849825655767

/-! ## A072498.P9502514734050457514

`lt[1, A076933(A028310(n))]`
-/

namespace A072498.P9502514734050457514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076933 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A072498.P9502514734050457514

/-!
# A072499: Product of divisors of n which are <= n^(1/2).

The programs for A072499, there is no canonical definition to state claims against.
-/

/-! ## A072499.P12712916210405402996

`A072500(n+1)/A072501(n+1)`
-/

namespace A072499.P12712916210405402996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072500 (n + 1) : ℚ) / (A072501 (n + 1) : ℚ)

end

end A072499.P12712916210405402996

/-! ## A072499.P7183539477071784332

`A007956(n+1)/A363521(n+1)`
-/

namespace A072499.P7183539477071784332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007956 (n + 1) : ℚ) / (A363521 (n + 1) : ℚ)

end

end A072499.P7183539477071784332

/-! ## A072499.P3225444177858374301

`(n+1)^A038548(n+1)/A072500(n+1)`
-/

namespace A072499.P3225444177858374301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A038548 (n + 1) : ℤ) / (A072500 (n + 1) : ℚ)

end

end A072499.P3225444177858374301

/-! ## A072499.P16375551681980239223

`A007955(n+1)/(A072501(n+1)*A363520(n+1))`
-/

namespace A072499.P16375551681980239223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007955 (n + 1) : ℚ) / (A072501 (n + 1) * A363520 (n + 1) : ℚ)

end

end A072499.P16375551681980239223

