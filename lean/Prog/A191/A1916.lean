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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
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
import Seq.B000.C038
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
import Seq.B006.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A191600: Number of n X n symmetric binary matrices with each 1 adjacent to no more than 1 horizontally, vertically or diagonally neighboring 1.

The programs for A191600, there is no canonical definition to state claims against.
-/

/-! ## A191600.P1843144275177064494

`A014132(A306081(n))+n²`
-/

namespace A191600.P1843144275177064494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A306081 n).toNat + (n ^ 2 : ℤ)

end

end A191600.P1843144275177064494

/-!
# A191605: Number of n-step two-sided prudent self-avoiding walks.

The programs for A191605, there is no canonical definition to state claims against.
-/

/-! ## A191605.P6713340009708991050

`2*A191652(n)-A191625(n)`
-/

namespace A191605.P6713340009708991050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191652 n - A191625 n

end

end A191605.P6713340009708991050

/-! ## A191605.P8256101367390607008

`2*A191652(n)+A191625(n)*A309214(4*n+2)`
-/

namespace A191605.P8256101367390607008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191652 n + A191625 n * A309214 (4 * n + 2)

end

end A191605.P8256101367390607008

/-! ## A191605.P7262863680632448414

`A004277(A191652(n))-A191625(n)`
-/

namespace A191605.P7262863680632448414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A191652 n).toNat - A191625 n

end

end A191605.P7262863680632448414

/-!
# A191606: Let y=(1-sqrt(1-4*z))/(1+sqrt(1-4*z)) denote the g.f. for the Catalan numbers (A000108); sequence has g.f. sum(k>=1, y^(2^k)/(1+y^(2^(k+1))) ).

The programs for A191606, there is no canonical definition to state claims against.
-/

/-! ## A191606.P14837833653140918064

`A132292(A318113(n+1))`
-/

namespace A191606.P14837833653140918064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A318113 (n + 1)).toNat

end

end A191606.P14837833653140918064

/-! ## A191606.P14375159809777814416

`A289122(n*A025235(n))`
-/

namespace A191606.P14375159809777814416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 ((n : ℤ) * A025235 n).toNat

end

end A191606.P14375159809777814416

/-! ## A191606.P15273942139717958387

`A289122(lcm(n, A025235(n)))`
-/

namespace A191606.P15273942139717958387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289122 (Int.lcm (n : ℤ) (A025235 n))

end

end A191606.P15273942139717958387

/-! ## A191606.P5780979165619066244

`A103221(or(∑[n], A217233(n)))`
-/

namespace A191606.P5780979165619066244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A217233 n)).toNat

end

end A191606.P5780979165619066244

/-!
# A191607: Table of the difference of numerator and denominator of Farey sequences, read by rows.

The programs for A191607, there is no canonical definition to state claims against.
-/

/-! ## A191607.P3376349417139494567

`A006843(n+1)-A006842(n+1)`
-/

namespace A191607.P3376349417139494567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006843 (n + 1) - A006842 (n + 1)

end

end A191607.P3376349417139494567

/-! ## A191607.P7042794695882307932

`2*A006843(n+1)-A133404(n+1)`
-/

namespace A191607.P7042794695882307932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006843 (n + 1) - A133404 (n + 1)

end

end A191607.P7042794695882307932

/-! ## A191607.P4424078491020859183

`A133404(n+1)-2*A006842(n+1)`
-/

namespace A191607.P4424078491020859183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133404 (n + 1) - 2 * A006842 (n + 1)

end

end A191607.P4424078491020859183

/-! ## A191607.P6875523068894120618

`A004277(A006843(n+1))-A133404(n+1)`
-/

namespace A191607.P6875523068894120618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A006843 (n + 1)).toNat - A133404 (n + 1)

end

end A191607.P6875523068894120618

/-! ## A191607.P15629902398512965267

`A133404(n+1)-A005843(A006842(n+1))`
-/

namespace A191607.P15629902398512965267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133404 (n + 1) - A005843 (A006842 (n + 1)).toNat

end

end A191607.P15629902398512965267

/-! ## A191607.P2653281408787528254

`A053615(A006842(n+1)+A006843(n+1)²)`
-/

namespace A191607.P2653281408787528254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A006842 (n + 1) + A006843 (n + 1) ^ 2).toNat

end

end A191607.P2653281408787528254

/-!
# A191610: Possible number of trailing zeros in k!.

The programs for A191610, the canonical program `A191610.P14444303028635319100` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191610 has offset 1).

The definition of A191610 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191610.P14444303028635319100

`a(floor(n/5))+n` with `a(0)=0`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191610

/-- `a(floor(n/5))+n` -/
def P14444303028635319100.Spec : Prop :=
  ∀ n, (P14444303028635319100.a n : ℤ) = A191610 (n + 1)

theorem P14444303028635319100.correct : P14444303028635319100.Spec := by
  intro n
  simp only [A191610, Nat.add_sub_cancel]

end A191610

/-! ## A191610.P11569879158133366166

`a(n-1)+val(n, 5)+1` with `a(0)=0`
-/

namespace A191610.P11569879158133366166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + SequenceMachineLib.valuation n 5 + 1

end

end A191610.P11569879158133366166

namespace A191610

/-- `a(n-1)+val(n, 5)+1` -/
def P11569879158133366166.Spec : Prop :=
  ∀ n, (P11569879158133366166.a n : ℤ) = A191610 (n + 1)

end A191610

/-! ## A191610.P8331801640819863470

`∑[val(abs(1-n)+1, 5)+1]-1`
-/

namespace A191610.P8331801640819863470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (|1 - (n : ℤ)| + 1).toNat 5 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A191610.P8331801640819863470

namespace A191610

/-- `∑[val(abs(1-n)+1, 5)+1]-1` -/
def P8331801640819863470.Spec : Prop :=
  ∀ n, P8331801640819863470.a n = A191610 (n + 1)

end A191610

/-! ## A191610.P16839489690211495868

`A027868(n)+n`
-/

namespace A191610.P16839489690211495868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 n + (n : ℤ)

end

end A191610.P16839489690211495868

namespace A191610

/-- `A027868(n)+n` -/
def P16839489690211495868.Spec : Prop :=
  ∀ n, P16839489690211495868.a n = A191610 (n + 1)

end A191610

/-! ## A191610.P10419638102597195454

`comp[A000966(n+1)]`
-/

namespace A191610.P10419638102597195454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A191610.P10419638102597195454

namespace A191610

/-- `comp[A000966(n+1)]` -/
def P10419638102597195454.Spec : Prop :=
  ∀ n, (P10419638102597195454.a n : ℤ) = A191610 (n + 1)

end A191610

/-! ## A191610.P111710352273926785

`comp[A007845(n+1)+n]`
-/

namespace A191610.P111710352273926785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007845 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A191610.P111710352273926785

namespace A191610

/-- `comp[A007845(n+1)+n]` -/
def P111710352273926785.Spec : Prop :=
  ∀ n, (P111710352273926785.a n : ℤ) = A191610 (n + 1)

end A191610

/-! ## A191610.P7060724235879920947

`∑[val(A004277(n), 5)]+n`
-/

namespace A191610.P7060724235879920947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004277 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A191610.P7060724235879920947

namespace A191610

/-- `∑[val(A004277(n), 5)]+n` -/
def P7060724235879920947.Spec : Prop :=
  ∀ n, (P7060724235879920947.a n : ℤ) = A191610 (n + 1)

end A191610

/-! ## A191610.P10962461912586046075

`∑[val(A028310(n), 5)]+n`
-/

namespace A191610.P10962461912586046075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A028310 n).toNat 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A191610.P10962461912586046075

namespace A191610

/-- `∑[val(A028310(n), 5)]+n` -/
def P10962461912586046075.Spec : Prop :=
  ∀ n, (P10962461912586046075.a n : ℤ) = A191610 (n + 1)

end A191610

/-! ## A191610.P10838988143301551570

`n-A001057(2*A027868(n))`
-/

namespace A191610.P10838988143301551570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A001057 (2 * A027868 n).toNat

end

end A191610.P10838988143301551570

namespace A191610

/-- `n-A001057(2*A027868(n))` -/
def P10838988143301551570.Spec : Prop :=
  ∀ n, P10838988143301551570.a n = A191610 (n + 1)

end A191610

/-! ## A191610.P9001059885032941058

`A027869(n)+n-A137581(n)`
-/

namespace A191610.P9001059885032941058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027869 n + ((n : ℤ) - A137581 n)

end

end A191610.P9001059885032941058

namespace A191610

/-- `A027869(n)+n-A137581(n)` -/
def P9001059885032941058.Spec : Prop :=
  ∀ n, P9001059885032941058.a n = A191610 (n + 1)

end A191610

/-! ## A191610.P2693589059027515831

`∑[A055457(n+1)]-A055457(n+1)`
-/

namespace A191610.P2693589059027515831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A055457 (n + 1)

end

end A191610.P2693589059027515831

namespace A191610

/-- `∑[A055457(n+1)]-A055457(n+1)` -/
def P2693589059027515831.Spec : Prop :=
  ∀ n, P2693589059027515831.a n = A191610 (n + 1)

end A191610

/-! ## A191610.P404886087454218936

`∑[A112765(n+1)]-A112765(n+1)+n`
-/

namespace A191610.P404886087454218936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A112765 (n + 1) + (n : ℤ)

end

end A191610.P404886087454218936

namespace A191610

/-- `∑[A112765(n+1)]-A112765(n+1)+n` -/
def P404886087454218936.Spec : Prop :=
  ∀ n, P404886087454218936.a n = A191610 (n + 1)

end A191610

/-! ## A191610.P7629480364984419944

`A034886(n)+n-A008906(n)`
-/

namespace A191610.P7629480364984419944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n + ((n : ℤ) - A008906 n)

end

end A191610.P7629480364984419944

namespace A191610

/-- `A034886(n)+n-A008906(n)` -/
def P7629480364984419944.Spec : Prop :=
  ∀ n, P7629480364984419944.a n = A191610 (n + 1)

end A191610

/-! ## A191610.P5222651191426557987

`∑[A112765(A257088(n))]+n`
-/

namespace A191610.P5222651191426557987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A257088 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A191610.P5222651191426557987

namespace A191610

/-- `∑[A112765(A257088(n))]+n` -/
def P5222651191426557987.Spec : Prop :=
  ∀ n, P5222651191426557987.a n = A191610 (n + 1)

end A191610

/-! ## A191610.P8138217831759095187

`∑[val(n*a(A014963(2*(n+1))), 5)+1]` with `a(0)=0, a(1)=1`
-/

namespace A191610.P8138217831759095187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  SequenceMachineLib.valuation (n * f1 (A014963 (2 * (n + 1))).toNat) 5 + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191610.P8138217831759095187

namespace A191610

/-- `∑[val(n*a(A014963(2*(n+1))), 5)+1]` -/
def P8138217831759095187.Spec : Prop :=
  ∀ n, (P8138217831759095187.a n : ℤ) = A191610 (n + 1)

end A191610

/-! ## A191610.P8159351148416476286

`∑[A112765(A066393(n))]+n`
-/

namespace A191610.P8159351148416476286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A066393 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A191610.P8159351148416476286

namespace A191610

/-- `∑[A112765(A066393(n))]+n` -/
def P8159351148416476286.Spec : Prop :=
  ∀ n, P8159351148416476286.a n = A191610 (n + 1)

end A191610

/-! ## A191610.P7350420391427221458

`∑[A112765(A008574(n))]+n`
-/

namespace A191610.P7350420391427221458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A191610.P7350420391427221458

namespace A191610

/-- `∑[A112765(A008574(n))]+n` -/
def P7350420391427221458.Spec : Prop :=
  ∀ n, P7350420391427221458.a n = A191610 (n + 1)

end A191610

/-! ## A191610.P17850252301639960643

`A027868(5*n)`
-/

namespace A191610.P17850252301639960643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027868 (5 * n)

end

end A191610.P17850252301639960643

namespace A191610

/-- `A027868(5*n)` -/
def P17850252301639960643.Spec : Prop :=
  ∀ n, P17850252301639960643.a n = A191610 (n + 1)

end A191610

/-! ## A191610.P7887892581951695188

`∑[A112765(A008706(n))]`
-/

namespace A191610.P7887892581951695188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A008706 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191610.P7887892581951695188

namespace A191610

/-- `∑[A112765(A008706(n))]` -/
def P7887892581951695188.Spec : Prop :=
  ∀ n, P7887892581951695188.a n = A191610 (n + 1)

end A191610

/-! ## A191610.P7710212809945167810

`∑[A112765(A008458(n)-n)]`
-/

namespace A191610.P7710212809945167810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112765 (A008458 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191610.P7710212809945167810

namespace A191610

/-- `∑[A112765(A008458(n)-n)]` -/
def P7710212809945167810.Spec : Prop :=
  ∀ n, P7710212809945167810.a n = A191610 (n + 1)

end A191610

/-!
# A191611: Places n where A085392(n+1)-A085392(n) = 1.

The programs for A191611, there is no canonical definition to state claims against.
-/

/-! ## A191611.P10880934250956413989

`A343733(n+1)+C(2, n)²`
-/

namespace A191611.P10880934250956413989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343733 (n + 1) + (Nat.choose 2 n ^ 2 : ℤ)

end

end A191611.P10880934250956413989

/-! ## A191611.P6173719412233034859

`record[A152057(A270427(n+2))]`
-/

namespace A191611.P6173719412233034859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152057 (A270427 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191611.P6173719412233034859

/-! ## A191611.P13272282689608810915

`A152057(lt[A084183(n), A152057(n)])`
-/

namespace A191611.P13272282689608810915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084183 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152057 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191611.P13272282689608810915

/-! ## A191611.P1444252100832956907

`A152057(lt[A152046(n), A152057(n)])`
-/

namespace A191611.P1444252100832956907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152057 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A191611.P1444252100832956907

/-! ## A191611.P3677700623008793003

`A072868(∑[A303940(n)])-A303940(n)`
-/

namespace A191611.P3677700623008793003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303940 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072868 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A303940 n

end

end A191611.P3677700623008793003

/-!
# A191612: Image of A008578 (the noncomposite numbers) under the "forming" transformation.

The programs for A191612, there is no canonical definition to state claims against.
-/

/-! ## A191612.P12787981426673620830

`record[gcd(n+1, (n+1)%A166597(n))]`
-/

namespace A191612.P12787981426673620830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (Int.tmod (n + 1 : ℤ) (A166597 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191612.P12787981426673620830

/-! ## A191612.P3312386224854679178

`∪[A047157(n), A113709(n+2)]`
-/

namespace A191612.P3312386224854679178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047157 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113709 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191612.P3312386224854679178

/-! ## A191612.P6954481436181615062

`∪[A113709(n+2), A241906(n)]`
-/

namespace A191612.P6954481436181615062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113709 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241906 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191612.P6954481436181615062

/-! ## A191612.P8956513115387822294

`∪[A113709(n+2), A333680(n)]`
-/

namespace A191612.P8956513115387822294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113709 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333680 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191612.P8956513115387822294

/-! ## A191612.P12493669693475654568

`∪[A113709(n+2), A365574(n)]`
-/

namespace A191612.P12493669693475654568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113709 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191612.P12493669693475654568

/-! ## A191612.P6419385673003958462

`∪[A006286(n+1), A113709(n+2)]`
-/

namespace A191612.P6419385673003958462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006286 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113709 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191612.P6419385673003958462

/-! ## A191612.P16590482065713717472

`∪[A033554(n+1), A113709(n+2)]`
-/

namespace A191612.P16590482065713717472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033554 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113709 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191612.P16590482065713717472

/-! ## A191612.P10924228784564131635

`∪[A085933(n+1), A113709(n+2)]`
-/

namespace A191612.P10924228784564131635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085933 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113709 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191612.P10924228784564131635

/-! ## A191612.P2165531910602321380

`∪[A096361(n+1), A113709(n+2)]`
-/

namespace A191612.P2165531910602321380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113709 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191612.P2165531910602321380

/-! ## A191612.P15693903458389896874

`∪[A114341(n+1), A113709(n+2)]`
-/

namespace A191612.P15693903458389896874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114341 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113709 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191612.P15693903458389896874

/-!
# A191613: Number of even divisors of lambda(n).

The programs for A191613, there is no canonical definition to state claims against.
-/

/-! ## A191613.P13868325651392110997

`A183063(A002322(n+1))`
-/

namespace A191613.P13868325651392110997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183063 (A002322 (n + 1)).toNat

end

end A191613.P13868325651392110997

/-! ## A191613.P13353623012238048822

`A157928(n)*A395473(n+1)`
-/

namespace A191613.P13353623012238048822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n * A395473 (n + 1)

end

end A191613.P13353623012238048822

/-! ## A191613.P6030662122367248759

`A395473(n+1)%A000008(n)`
-/

namespace A191613.P6030662122367248759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A395473 (n + 1)) (A000008 n)

end

end A191613.P6030662122367248759

/-! ## A191613.P5391716196587416626

`A066800(n+1)-A193169(n+1)`
-/

namespace A191613.P5391716196587416626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066800 (n + 1) - A193169 (n + 1)

end

end A191613.P5391716196587416626

/-! ## A191613.P9202177057964323943

`A395473(n+1)-A019590(n+1)`
-/

namespace A191613.P9202177057964323943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395473 (n + 1) - A019590 (n + 1)

end

end A191613.P9202177057964323943

/-! ## A191613.P16176137532418626106

`∑{d}[A002322(n+1), A000035(#+1)]`
-/

namespace A191613.P16176137532418626106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000035 (d + 1)

end

end A191613.P16176137532418626106

/-! ## A191613.P7455069628370187088

`∑{d}[A002322(n+1), A007947(#+1)%2]`
-/

namespace A191613.P7455069628370187088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002322 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A007947 (d + 1)) 2

end

end A191613.P7455069628370187088

/-! ## A191613.P9435940668356671495

`A000005(A002322(n+1))-A193169(n+1)`
-/

namespace A191613.P9435940668356671495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A002322 (n + 1)).toNat - A193169 (n + 1)

end

end A191613.P9435940668356671495

/-! ## A191613.P10136994245725690541

`and(A153788(n), A395473(n+1))`
-/

namespace A191613.P10136994245725690541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A153788 n) (A395473 (n + 1))

end

end A191613.P10136994245725690541

/-! ## A191613.P10153974452424755286

`and(A010737(n), A395473(n+1))`
-/

namespace A191613.P10153974452424755286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010737 n) (A395473 (n + 1))

end

end A191613.P10153974452424755286

/-! ## A191613.P12370166930238075748

`and(A178885(n), A395473(n+1))`
-/

namespace A191613.P12370166930238075748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A178885 n) (A395473 (n + 1))

end

end A191613.P12370166930238075748

/-! ## A191613.P11320516529494584583

`and(A274638(n), A395473(n+1))`
-/

namespace A191613.P11320516529494584583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A274638 n) (A395473 (n + 1))

end

end A191613.P11320516529494584583

/-! ## A191613.P17377186699121616516

`and(A055010(n), A395473(n+1))`
-/

namespace A191613.P17377186699121616516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A055010 n) (A395473 (n + 1))

end

end A191613.P17377186699121616516

/-! ## A191613.P9412260075612239174

`and(A054135(n+1), A395473(n+1))`
-/

namespace A191613.P9412260075612239174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054135 (n + 1)) (A395473 (n + 1))

end

end A191613.P9412260075612239174

/-! ## A191613.P9963370920496925898

`and(A087522(n), A395473(n+1))`
-/

namespace A191613.P9963370920496925898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A087522 n) (A395473 (n + 1))

end

end A191613.P9963370920496925898

/-! ## A191613.P595323977114393380

`and(A070050(n+1), A395473(n+1))`
-/

namespace A191613.P595323977114393380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A070050 (n + 1)) (A395473 (n + 1))

end

end A191613.P595323977114393380

/-! ## A191613.P8678327761766081474

`and(A005666(n), A395473(n+1))`
-/

namespace A191613.P8678327761766081474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005666 n) (A395473 (n + 1))

end

end A191613.P8678327761766081474

/-!
# A191614: The lexicographically earliest sequence such that a(n) - a(n-1) is the largest proper divisor of a(n).

The programs for A191614, there is no canonical definition to state claims against.
-/

/-! ## A191614.P6898659917275672812

`A338702(a(n-1))` with `a(0)=1`
-/

namespace A191614.P6898659917275672812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A338702 (a (n - 1)).toNat

end

end A191614.P6898659917275672812

/-! ## A191614.P16067955119065140639

`A227007(n+1)-1`
-/

namespace A191614.P16067955119065140639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227007 (n + 1) - 1

end

end A191614.P16067955119065140639

/-! ## A191614.P2850126576481220454

`eq[1, A343068(n+1)]+1`
-/

namespace A191614.P2850126576481220454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343068 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A191614.P2850126576481220454

/-! ## A191614.P13060692626759600234

`A023443(A227007(n+1))`
-/

namespace A191614.P13060692626759600234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A227007 (n + 1)).toNat

end

end A191614.P13060692626759600234

/-! ## A191614.P13893571754591878061

`A289207(A227007(n+1)+1)`
-/

namespace A191614.P13893571754591878061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A227007 (n + 1) + 1).toNat

end

end A191614.P13893571754591878061

/-!
# A191615: a(1) = 1; a(n) is the smallest number such that a(n)-a(n-1) = A085392 (m), where A085392(m) is the largest noncomposite divisor <m of m.

The programs for A191615, there is no canonical definition to state claims against.
-/

/-! ## A191615.P7947265684345105625

`A366604(A242536(n))`
-/

namespace A191615.P7947265684345105625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366604 (A242536 n).toNat

end

end A191615.P7947265684345105625

/-! ## A191615.P5177965905005162439

`∑[gcd(A033638(n), A298224(n+1))]`
-/

namespace A191615.P5177965905005162439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033638 n) (A298224 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191615.P5177965905005162439

/-! ## A191615.P2407500738078259800

`record[A331995(n+1)%A332017(n+2)]`
-/

namespace A191615.P2407500738078259800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331995 (n + 1)) (A332017 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191615.P2407500738078259800

/-! ## A191615.P4830898465012561869

`A276625(n+1)+A007953(A333730(n+1))`
-/

namespace A191615.P4830898465012561869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276625 (n + 1) + A007953 (A333730 (n + 1)).toNat

end

end A191615.P4830898465012561869

/-! ## A191615.P4709830806233155219

`A265748(n+1)-A000120(A037082(n+1))`
-/

namespace A191615.P4709830806233155219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265748 (n + 1) - A000120 (A037082 (n + 1)).toNat

end

end A191615.P4709830806233155219

/-!
# A191616: a(1) = 1; a(n) is the largest number m such that m-A085392(m) = a(n-1).

The programs for A191616, there is no canonical definition to state claims against.
-/

/-! ## A191616.P6726628553908621363

`a(n-1)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=5, a(4)=10, a(5)=15, a(6)=20, a(7)=25, a(8)=30, a(9)=32`
-/

namespace A191616.P6726628553908621363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 5, 10, 15, 20, 25, 30, 32] fun n a =>
  a (n - 1)

end

end A191616.P6726628553908621363

/-! ## A191616.P12370037954244472273

`eq[round(sin(n%10/ϕ)), char[round(2^(n-2))]]`
-/

namespace A191616.P12370037954244472273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (((n % 10 : ℕ) : ℝ) / Real.goldenRatio))

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n

end

end A191616.P12370037954244472273

/-! ## A191616.P2432000768584622503

`∑[A080967(3*n)]-n`
-/

namespace A191616.P2432000768584622503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080967 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A191616.P2432000768584622503

/-! ## A191616.P16741681354756900249

`eq[char[2^n], A163812(n)]`
-/

namespace A191616.P16741681354756900249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163812 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A191616.P16741681354756900249

/-! ## A191616.P225052491514556890

`∪[5*(n+1), A062740(n)]`
-/

namespace A191616.P225052491514556890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062740 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191616.P225052491514556890

/-!
# A191618: Least a such that (2^n+a)*2^n - 1 is prime.

The programs for A191618, there is no canonical definition to state claims against.
-/

/-! ## A191618.P3139607880216550790

`A272903(∑[2^n]+2)`
-/

namespace A191618.P3139607880216550790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272903 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A191618.P3139607880216550790

/-! ## A191618.P4509899287787807814

`A272903(A048578(n))%14`
-/

namespace A191618.P4509899287787807814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A272903 (A048578 n).toNat) 14

end

end A191618.P4509899287787807814

/-! ## A191618.P11645546467903705852

`A054977(n)*A272903(A048578(n))`
-/

namespace A191618.P11645546467903705852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A272903 (A048578 n).toNat

end

end A191618.P11645546467903705852

/-! ## A191618.P2459113170659535671

`A272903(A048578(n))/A054977(n+2)`
-/

namespace A191618.P2459113170659535671
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272903 (A048578 n).toNat : ℚ) / (A054977 (n + 2) : ℚ)

end

end A191618.P2459113170659535671

/-! ## A191618.P6844353650397061849

`A124625(2*n)*A272903(A048578(n))`
-/

namespace A191618.P6844353650397061849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (2 * n) * A272903 (A048578 n).toNat

end

end A191618.P6844353650397061849

/-!
# A191621: a(n) = ((n+1)^n-(n-1)^n)/2+1.

The programs for A191621, the canonical program `A191621.P7409711259235409146` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191621 has offset 1).

The definition of A191621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191621.P7409711259235409146

`((n+2)^(n+1)-n^(n+1))/2+1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191621

/-- `((n+2)^(n+1)-n^(n+1))/2+1` -/
def P7409711259235409146.Spec : Prop :=
  ∀ n, P7409711259235409146.a n = (A191621 (n + 1) : ℚ)

end A191621

/-! ## A191621.P1890727461081471257

`record[or(A054977(n), A302583(n))]`
-/

namespace A191621.P1890727461081471257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054977 n) (A302583 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191621.P1890727461081471257

namespace A191621

/-- `record[or(A054977(n), A302583(n))]` -/
def P1890727461081471257.Spec : Prop :=
  ∀ n, P1890727461081471257.a n = A191621 (n + 1)

end A191621

/-! ## A191621.P6443120389899046017

`record[xor(A054977(2*n), A302583(n))]`
-/

namespace A191621.P6443120389899046017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A054977 (2 * n)) (A302583 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191621.P6443120389899046017

namespace A191621

/-- `record[xor(A054977(2*n), A302583(n))]` -/
def P6443120389899046017.Spec : Prop :=
  ∀ n, P6443120389899046017.a n = A191621 (n + 1)

end A191621

/-!
# A191624: Largest prime factor of n^n - n^(n-1) - n^(n-2) - ... - n^2 - n - 1.

The programs for A191624, there is no canonical definition to state claims against.
-/

/-! ## A191624.P2232059333953747702

`A006530(A051846(n+2)/A001263(n+1))`
-/

namespace A191624.P2232059333953747702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A051846 (n + 2) : ℚ) / (A001263 (n + 1) : ℚ))).toNat

end

end A191624.P2232059333953747702

/-!
# A191625: Number of n-step two-sided prudent self-avoiding walks ending at the northeast corner of their box.

The programs for A191625, there is no canonical definition to state claims against.
-/

/-! ## A191625.P15528181186411920230

`2*A191652(n)-A191605(n)`
-/

namespace A191625.P15528181186411920230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A191652 n - A191605 n

end

end A191625.P15528181186411920230

/-! ## A191625.P7156624867468483577

`A191605(n)-A005843(A191605(n)-A191652(n))`
-/

namespace A191625.P7156624867468483577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191605 n - A005843 (A191605 n - A191652 n).toNat

end

end A191625.P7156624867468483577

/-! ## A191625.P10307821492888768788

`A178036(n)+A102681(A111433(n))`
-/

namespace A191625.P10307821492888768788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178036 n + A102681 (A111433 n).toNat

end

end A191625.P10307821492888768788

/-! ## A191625.P6402265764664339251

`A004277(A191652(n))-A191605(n)`
-/

namespace A191625.P6402265764664339251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A191652 n).toNat - A191605 n

end

end A191625.P6402265764664339251

/-! ## A191625.P5354463949897081554

`A342721(A002572(n+1))+A178036(n)`
-/

namespace A191625.P5354463949897081554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342721 (A002572 (n + 1)).toNat + A178036 n

end

end A191625.P5354463949897081554

/-!
# A191626: Integers n such that both 6n and 36n fall between pairs of twin primes, that is, 6n-1, 6n+1, 36n-1, and 36n+1 are prime.

The programs for A191626, the canonical program `A191626.P15638970992533597585` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191626 has offset 1).

The definition of A191626 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 227 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191626.P3549453401565109906

`∩[A040040(n+1), A124519(n+1)]/3`
-/

namespace A191626.P3549453401565109906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 3

end

end A191626.P3549453401565109906

namespace A191626

/-- `∩[A040040(n+1), A124519(n+1)]/3` -/
def P3549453401565109906.Spec : Prop :=
  ∀ n, P3549453401565109906.a n = (A191626 (n + 1) : ℚ)

end A191626

/-! ## A191626.P15638970992533597585

`∩[A002822(n+1), A014574(n+1)]/6`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A191626

/-- `∩[A002822(n+1), A014574(n+1)]/6` -/
def P15638970992533597585.Spec : Prop :=
  ∀ n, P15638970992533597585.a n = (A191626 (n + 1) : ℚ)

end A191626

/-! ## A191626.P1138367513168455384

`A353461(∩[A001359(n+1), A153196(n+1)])`
-/

namespace A191626.P1138367513168455384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153196 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353461 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A191626.P1138367513168455384

namespace A191626

/-- `A353461(∩[A001359(n+1), A153196(n+1)])` -/
def P1138367513168455384.Spec : Prop :=
  ∀ n, P1138367513168455384.a n = A191626 (n + 1)

end A191626

/-! ## A191626.P1900253187361087396

`A002264(∩[A040040(n+1), A124519(n+1)])`
-/

namespace A191626.P1900253187361087396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124519 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A191626.P1900253187361087396

namespace A191626

/-- `A002264(∩[A040040(n+1), A124519(n+1)])` -/
def P1900253187361087396.Spec : Prop :=
  ∀ n, P1900253187361087396.a n = A191626 (n + 1)

end A191626

/-! ## A191626.P753134207980061561

`A002822(eq[1, A182481(A014574(n+1))])`
-/

namespace A191626.P753134207980061561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182481 (A014574 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002822 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191626.P753134207980061561

namespace A191626

/-- `A002822(eq[1, A182481(A014574(n+1))])` -/
def P753134207980061561.Spec : Prop :=
  ∀ n, P753134207980061561.a n = A191626 (n + 1)

end A191626

/-!
# A191627: a(n) = floor(3^n/(3n-1)).

The programs for A191627, the canonical program `A191627.P14936194722001355821` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191627 has offset 1).

The definition of A191627 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3^(n+1)/(3*(n+1)-1))` (program `A191627.P14936194722001355821`, by `A191627.P14936194722001355821.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191627.P14936194722001355821

`floor(3^(n+1)/(3*(n+1)-1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191627

/-- `floor(3^(n+1)/(3*(n+1)-1))` -/
def P14936194722001355821.Spec : Prop :=
  ∀ n, P14936194722001355821.a n = A191627 (n + 1)

theorem P14936194722001355821.correct : P14936194722001355821.Spec := by
  intro n
  simp only [A191627, Nat.add_sub_cancel]

end A191627

/-! ## A191627.P17498805445963550300

`A001462(or(1, A151474(n)))`
-/

namespace A191627.P17498805445963550300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.lor 1 (A151474 n)).toNat

end

end A191627.P17498805445963550300

namespace A191627

/-- `A001462(or(1, A151474(n)))` -/
def P17498805445963550300.Spec : Prop :=
  ∀ n, P17498805445963550300.a n = A191627 (n + 1)

end A191627

/-! ## A191627.P9040799574083866407

`A001462(A162352(n)+A151474(n))`
-/

namespace A191627.P9040799574083866407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A162352 n + A151474 n).toNat

end

end A191627.P9040799574083866407

namespace A191627

/-- `A001462(A162352(n)+A151474(n))` -/
def P9040799574083866407.Spec : Prop :=
  ∀ n, P9040799574083866407.a n = A191627 (n + 1)

end A191627

/-! ## A191627.P11329732547031549671

`A114589(n)-A284905(A118049(n))`
-/

namespace A191627.P11329732547031549671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114589 n - A284905 (A118049 n).toNat

end

end A191627.P11329732547031549671

namespace A191627

/-- `A114589(n)-A284905(A118049(n))` -/
def P11329732547031549671.Spec : Prop :=
  ∀ n, P11329732547031549671.a n = A191627 (n + 1)

end A191627

/-!
# A191628: a(n) = floor((3^n)/(3*n - 2)).

The programs for A191628, the canonical program `A191628.P9574359255543688186` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191628 has offset 1).

The definition of A191628 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3^(n+1)/(3*(n+1)-2))` (program `A191628.P9574359255543688186`, by `A191628.P9574359255543688186.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191628.P9574359255543688186

`floor(3^(n+1)/(3*(n+1)-2))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191628

/-- `floor(3^(n+1)/(3*(n+1)-2))` -/
def P9574359255543688186.Spec : Prop :=
  ∀ n, P9574359255543688186.a n = A191628 (n + 1)

theorem P9574359255543688186.correct : P9574359255543688186.Spec := by
  intro n
  simp only [A191628, Nat.add_sub_cancel]

end A191628

/-! ## A191628.P4891306670531741355

`A162352(A284778(n))+A007054(n)`
-/

namespace A191628.P4891306670531741355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162352 (A284778 n).toNat + A007054 n

end

end A191628.P4891306670531741355

namespace A191628

/-- `A162352(A284778(n))+A007054(n)` -/
def P4891306670531741355.Spec : Prop :=
  ∀ n, P4891306670531741355.a n = A191628 (n + 1)

end A191628

/-!
# A191629: a(n) = floor((2^n)/(3*n - 1)).

The programs for A191629, the canonical program `A191629.P16470151248058492777` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191629 has offset 1).

The definition of A191629 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^(n+1)/(3*(n+1)-1))` (program `A191629.P16470151248058492777`, by `A191629.P16470151248058492777.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191629.P16470151248058492777

`floor(2^(n+1)/(3*(n+1)-1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191629

/-- `floor(2^(n+1)/(3*(n+1)-1))` -/
def P16470151248058492777.Spec : Prop :=
  ∀ n, P16470151248058492777.a n = A191629 (n + 1)

theorem P16470151248058492777.correct : P16470151248058492777.Spec := by
  intro n
  simp only [A191629, Nat.add_sub_cancel]

end A191629

/-! ## A191629.P16264239467593011543

`round(∑[xor(2, ∑[2^n])]/(6*n+4))`
-/

namespace A191629.P16264239467593011543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (6 * n + 4 : ℚ))

end

end A191629.P16264239467593011543

namespace A191629

/-- `round(∑[xor(2, ∑[2^n])]/(6*n+4))` -/
def P16264239467593011543.Spec : Prop :=
  ∀ n, P16264239467593011543.a n = A191629 (n + 1)

end A191629

/-! ## A191629.P13171148402658419812

`A000194(A212199(n+1))`
-/

namespace A191629.P13171148402658419812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A212199 (n + 1)).toNat

end

end A191629.P13171148402658419812

namespace A191629

/-- `A000194(A212199(n+1))` -/
def P13171148402658419812.Spec : Prop :=
  ∀ n, P13171148402658419812.a n = A191629 (n + 1)

end A191629

/-! ## A191629.P4865060872470792401

`A121900(A068596(n+1))`
-/

namespace A191629.P4865060872470792401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121900 (A068596 (n + 1)).toNat

end

end A191629.P4865060872470792401

namespace A191629

/-- `A121900(A068596(n+1))` -/
def P4865060872470792401.Spec : Prop :=
  ∀ n, P4865060872470792401.a n = A191629 (n + 1)

end A191629

/-! ## A191629.P16257963185836236005

`A273190(A151398(n+1))`
-/

namespace A191629.P16257963185836236005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A151398 (n + 1)).toNat

end

end A191629.P16257963185836236005

namespace A191629

/-- `A273190(A151398(n+1))` -/
def P16257963185836236005.Spec : Prop :=
  ∀ n, P16257963185836236005.a n = A191629 (n + 1)

end A191629

/-!
# A191630: a(n) = floor((-1 + 2^n)/(1 + 2*n)).

The programs for A191630, the canonical program `A191630.P10439707206516364533` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191630 has offset 1).

The definition of A191630 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((-1+2^(n+1))/(1+2*(n+1)))` (program `A191630.P10439707206516364533`, by `A191630.P10439707206516364533.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191630.P10439707206516364533

`floor((-1+2^(n+1))/(1+2*(n+1)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191630

/-- `floor((-1+2^(n+1))/(1+2*(n+1)))` -/
def P10439707206516364533.Spec : Prop :=
  ∀ n, P10439707206516364533.a n = A191630 (n + 1)

theorem P10439707206516364533.correct : P10439707206516364533.Spec := by
  intro n
  simp only [A191630, Nat.add_sub_cancel]

end A191630

/-! ## A191630.P14034935240827727261

`round(∑[A000225(n)]/(2*n+3))`
-/

namespace A191630.P14034935240827727261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 * n + 3 : ℚ))

end

end A191630.P14034935240827727261

namespace A191630

/-- `round(∑[A000225(n)]/(2*n+3))` -/
def P14034935240827727261.Spec : Prop :=
  ∀ n, P14034935240827727261.a n = A191630 (n + 1)

end A191630

/-! ## A191630.P5959110188981764414

`round(A000295(n+1)/(2*n+3))`
-/

namespace A191630.P5959110188981764414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000295 (n + 1) : ℚ) / (2 * n + 3 : ℚ))

end

end A191630.P5959110188981764414

namespace A191630

/-- `round(A000295(n+1)/(2*n+3))` -/
def P5959110188981764414.Spec : Prop :=
  ∀ n, P5959110188981764414.a n = A191630 (n + 1)

end A191630

/-! ## A191630.P11706791659577311209

`abs(floor(A000225(n+1)/Δ[(n+1)²]))`
-/

namespace A191630.P11706791659577311209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A000225 (n + 1) : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ)⌋|

end

end A191630.P11706791659577311209

namespace A191630

/-- `abs(floor(A000225(n+1)/Δ[(n+1)²]))` -/
def P11706791659577311209.Spec : Prop :=
  ∀ n, P11706791659577311209.a n = A191630 (n + 1)

end A191630

/-! ## A191630.P3140135360628728763

`ceil(A077957(2*(n+1))/(2*n+3))-1`
-/

namespace A191630.P3140135360628728763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A077957 (2 * (n + 1)) : ℚ) / (2 * n + 3 : ℚ)⌉ - 1

end

end A191630.P3140135360628728763

namespace A191630

/-- `ceil(A077957(2*(n+1))/(2*n+3))-1` -/
def P3140135360628728763.Spec : Prop :=
  ∀ n, P3140135360628728763.a n = A191630 (n + 1)

end A191630

/-! ## A191630.P4366817111586980689

`ceil(A005803(n+1)/A144396(n+1))`
-/

namespace A191630.P4366817111586980689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005803 (n + 1) : ℚ) / (A144396 (n + 1) : ℚ)⌉

end

end A191630.P4366817111586980689

namespace A191630

/-- `ceil(A005803(n+1)/A144396(n+1))` -/
def P4366817111586980689.Spec : Prop :=
  ∀ n, P4366817111586980689.a n = A191630 (n + 1)

end A191630

/-! ## A191630.P18343155584642328053

`ceil(A048578(n)/A004273(n+2))-1`
-/

namespace A191630.P18343155584642328053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A048578 n : ℚ) / (A004273 (n + 2) : ℚ)⌉ - 1

end

end A191630.P18343155584642328053

namespace A191630

/-- `ceil(A048578(n)/A004273(n+2))-1` -/
def P18343155584642328053.Spec : Prop :=
  ∀ n, P18343155584642328053.a n = A191630 (n + 1)

end A191630

/-! ## A191630.P5441010213713315874

`ceil((A131064(n)-A097813(n))/(2*n+3))`
-/

namespace A191630.P5441010213713315874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A131064 n - A097813 n : ℚ) / (2 * n + 3 : ℚ)⌉

end

end A191630.P5441010213713315874

namespace A191630

/-- `ceil((A131064(n)-A097813(n))/(2*n+3))` -/
def P5441010213713315874.Spec : Prop :=
  ∀ n, P5441010213713315874.a n = A191630 (n + 1)

end A191630

/-! ## A191630.P17452661331720375905

`A390161(∑[n+1])-1`
-/

namespace A191630.P17452661331720375905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390161 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A191630.P17452661331720375905

namespace A191630

/-- `A390161(∑[n+1])-1` -/
def P17452661331720375905.Spec : Prop :=
  ∀ n, P17452661331720375905.a n = A191630 (n + 1)

end A191630

/-!
# A191631: a(n) = floor((2^n)/(2n-1)).

The programs for A191631, the canonical program `A191631.P1092473259146426443` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191631 has offset 1).

The definition of A191631 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(2^(n+1)/(2*(n+1)-1))` (program `A191631.P1092473259146426443`, by `A191631.P1092473259146426443.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191631.P1092473259146426443

`floor(2^(n+1)/(2*(n+1)-1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191631

/-- `floor(2^(n+1)/(2*(n+1)-1))` -/
def P1092473259146426443.Spec : Prop :=
  ∀ n, P1092473259146426443.a n = A191631 (n + 1)

theorem P1092473259146426443.correct : P1092473259146426443.Spec := by
  intro n
  simp only [A191631, Nat.add_sub_cancel]

end A191631

/-! ## A191631.P15152623415794268713

`ceil(A132824(n+1)/(2*n+1))`
-/

namespace A191631.P15152623415794268713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A132824 (n + 1) : ℚ) / (2 * n + 1 : ℚ)⌉

end

end A191631.P15152623415794268713

namespace A191631

/-- `ceil(A132824(n+1)/(2*n+1))` -/
def P15152623415794268713.Spec : Prop :=
  ∀ n, P15152623415794268713.a n = A191631 (n + 1)

end A191631

/-! ## A191631.P3148476797267072841

`round(A132045(n+1)/(2*n+1))`
-/

namespace A191631.P3148476797267072841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A132045 (n + 1) : ℚ) / (2 * n + 1 : ℚ))

end

end A191631.P3148476797267072841

namespace A191631

/-- `round(A132045(n+1)/(2*n+1))` -/
def P3148476797267072841.Spec : Prop :=
  ∀ n, P3148476797267072841.a n = A191631 (n + 1)

end A191631

/-! ## A191631.P18071770508990485923

`round((2^(n+1)-n)/A005408(n))`
-/

namespace A191631.P18071770508990485923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 ^ (n + 1) : ℤ) - (n : ℤ) : ℚ) / (A005408 n : ℚ))

end

end A191631.P18071770508990485923

namespace A191631

/-- `round((2^(n+1)-n)/A005408(n))` -/
def P18071770508990485923.Spec : Prop :=
  ∀ n, P18071770508990485923.a n = A191631 (n + 1)

end A191631

/-! ## A191631.P12953542285680641658

`round((A000325(n+1)+1)/Δ[n²])`
-/

namespace A191631.P12953542285680641658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000325 (n + 1) + 1 : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ))

end

end A191631.P12953542285680641658

namespace A191631

/-- `round((A000325(n+1)+1)/Δ[n²])` -/
def P12953542285680641658.Spec : Prop :=
  ∀ n, P12953542285680641658.a n = A191631 (n + 1)

end A191631

/-! ## A191631.P1824134580370753718

`round((A000051(n+1)-(n+1))/(2*n+1))`
-/

namespace A191631.P1824134580370753718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000051 (n + 1) - (n + 1 : ℤ) : ℚ) / (2 * n + 1 : ℚ))

end

end A191631.P1824134580370753718

namespace A191631

/-- `round((A000051(n+1)-(n+1))/(2*n+1))` -/
def P1824134580370753718.Spec : Prop :=
  ∀ n, P1824134580370753718.a n = A191631 (n + 1)

end A191631

/-!
# A191632: a(n) = floor((3^n)/(2*n - 1)).

The programs for A191632, the canonical program `A191632.P223930602793260662` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191632 has offset 1).

The definition of A191632 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(3^(n+1)/(2*(n+1)-1))` (program `A191632.P223930602793260662`, by `A191632.P223930602793260662.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191632.P223930602793260662

`floor(3^(n+1)/(2*(n+1)-1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191632

/-- `floor(3^(n+1)/(2*(n+1)-1))` -/
def P223930602793260662.Spec : Prop :=
  ∀ n, P223930602793260662.a n = A191632 (n + 1)

theorem P223930602793260662.correct : P223930602793260662.Spec := by
  intro n
  simp only [A191632, Nat.add_sub_cancel]

end A191632

/-! ## A191632.P16486393600897289391

`ceil(A034472(n+1)/(2*n+1))-1`
-/

namespace A191632.P16486393600897289391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A034472 (n + 1) : ℚ) / (2 * n + 1 : ℚ)⌉ - 1

end

end A191632.P16486393600897289391

namespace A191632

/-- `ceil(A034472(n+1)/(2*n+1))-1` -/
def P16486393600897289391.Spec : Prop :=
  ∀ n, P16486393600897289391.a n = A191632 (n + 1)

end A191632

/-! ## A191632.P13897381162751925490

`A028310(floor(A000244(n+1)/A143452(n)))`
-/

namespace A191632.P13897381162751925490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊(A000244 (n + 1) : ℚ) / (A143452 n : ℚ)⌋.toNat

end

end A191632.P13897381162751925490

namespace A191632

/-- `A028310(floor(A000244(n+1)/A143452(n)))` -/
def P13897381162751925490.Spec : Prop :=
  ∀ n, P13897381162751925490.a n = A191632 (n + 1)

end A191632

/-! ## A191632.P5452031111156305981

`xor(A049680(n), A054973(A007052(n)))`
-/

namespace A191632.P5452031111156305981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A049680 n) (A054973 (A007052 n).toNat)

end

end A191632.P5452031111156305981

namespace A191632

/-- `xor(A049680(n), A054973(A007052(n)))` -/
def P5452031111156305981.Spec : Prop :=
  ∀ n, P5452031111156305981.a n = A191632 (n + 1)

end A191632

/-!
# A191633: a(n) = floor((1 + 2^n)/(1 + 2*n)).

The programs for A191633, the canonical program `A191633.P15657010612709148605` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191633 has offset 1).

The definition of A191633 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((1+2^(n+1))/(1+2*(n+1)))` (program `A191633.P15657010612709148605`, by `A191633.P15657010612709148605.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191633.P15657010612709148605

`floor((1+2^(n+1))/(1+2*(n+1)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191633

/-- `floor((1+2^(n+1))/(1+2*(n+1)))` -/
def P15657010612709148605.Spec : Prop :=
  ∀ n, P15657010612709148605.a n = A191633 (n + 1)

theorem P15657010612709148605.correct : P15657010612709148605.Spec := by
  intro n
  simp only [A191633, Nat.add_sub_cancel]

end A191633

/-! ## A191633.P11089884662860833512

`ceil(A056469(n+2)/(2*n+3))-1`
-/

namespace A191633.P11089884662860833512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A056469 (n + 2) : ℚ) / (2 * n + 3 : ℚ)⌉ - 1

end

end A191633.P11089884662860833512

namespace A191633

/-- `ceil(A056469(n+2)/(2*n+3))-1` -/
def P11089884662860833512.Spec : Prop :=
  ∀ n, P11089884662860833512.a n = A191633 (n + 1)

end A191633

/-! ## A191633.P15269049747873585928

`A129359(A260403(n+1))`
-/

namespace A191633.P15269049747873585928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129359 (A260403 (n + 1)).toNat

end

end A191633.P15269049747873585928

namespace A191633

/-- `A129359(A260403(n+1))` -/
def P15269049747873585928.Spec : Prop :=
  ∀ n, P15269049747873585928.a n = A191633 (n + 1)

end A191633

/-! ## A191633.P11966668457325177939

`A117668(A274836(n))`
-/

namespace A191633.P11966668457325177939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117668 (A274836 n).toNat

end

end A191633.P11966668457325177939

namespace A191633

/-- `A117668(A274836(n))` -/
def P11966668457325177939.Spec : Prop :=
  ∀ n, P11966668457325177939.a n = A191633 (n + 1)

end A191633

/-! ## A191633.P11609905239789621146

`A351846(A370212(n))`
-/

namespace A191633.P11609905239789621146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A370212 n).toNat

end

end A191633.P11609905239789621146

namespace A191633

/-- `A351846(A370212(n))` -/
def P11609905239789621146.Spec : Prop :=
  ∀ n, P11609905239789621146.a n = A191633 (n + 1)

end A191633

/-!
# A191634: a(n) = floor((1 + 3^n)/(1 + 3*n)).

The programs for A191634, the canonical program `A191634.P897002540457566451` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191634 has offset 1).

The definition of A191634 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((1+3^(n+1))/(1+3*(n+1)))` (program `A191634.P897002540457566451`, by `A191634.P897002540457566451.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191634.P897002540457566451

`floor((1+3^(n+1))/(1+3*(n+1)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191634

/-- `floor((1+3^(n+1))/(1+3*(n+1)))` -/
def P897002540457566451.Spec : Prop :=
  ∀ n, P897002540457566451.a n = A191634 (n + 1)

theorem P897002540457566451.correct : P897002540457566451.Spec := by
  intro n
  simp only [A191634, Nat.add_sub_cancel]

end A191634

/-! ## A191634.P12166776549483474531

`A226762(A182453(n))`
-/

namespace A191634.P12166776549483474531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226762 (A182453 n).toNat

end

end A191634.P12166776549483474531

namespace A191634

/-- `A226762(A182453(n))` -/
def P12166776549483474531.Spec : Prop :=
  ∀ n, P12166776549483474531.a n = A191634 (n + 1)

end A191634

/-!
# A191636: a(n) = floor((-1 + 4^n)/(-1 + 2*n)).

The programs for A191636, the canonical program `A191636.P4826952910047171391` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191636 has offset 1).

The definition of A191636 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((-1+4^(n+1))/(-1+2*(n+1)))` (program `A191636.P4826952910047171391`, by `A191636.P4826952910047171391.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191636.P4826952910047171391

`floor((-1+4^(n+1))/(-1+2*(n+1)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191636

/-- `floor((-1+4^(n+1))/(-1+2*(n+1)))` -/
def P4826952910047171391.Spec : Prop :=
  ∀ n, P4826952910047171391.a n = A191636 (n + 1)

theorem P4826952910047171391.correct : P4826952910047171391.Spec := by
  intro n
  simp only [A191636, Nat.add_sub_cancel]

end A191636

/-! ## A191636.P18257518018724697665

`A053639(Δ[n²])-1`
-/

namespace A191636.P18257518018724697665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053639 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A191636.P18257518018724697665

namespace A191636

/-- `A053639(Δ[n²])-1` -/
def P18257518018724697665.Spec : Prop :=
  ∀ n, P18257518018724697665.a n = A191636 (n + 1)

end A191636

/-! ## A191636.P9777494114449119293

`A281375(2*n+1)-A000007(n)`
-/

namespace A191636.P9777494114449119293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281375 (2 * n + 1) - A000007 n

end

end A191636.P9777494114449119293

namespace A191636

/-- `A281375(2*n+1)-A000007(n)` -/
def P9777494114449119293.Spec : Prop :=
  ∀ n, P9777494114449119293.a n = A191636 (n + 1)

end A191636

/-! ## A191636.P10143891374281876232

`record[(A053639(n+1)-1)/A033999(n)]`
-/

namespace A191636.P10143891374281876232
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053639 (n + 1) - 1 : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191636.P10143891374281876232

namespace A191636

/-- `record[(A053639(n+1)-1)/A033999(n)]` -/
def P10143891374281876232.Spec : Prop :=
  ∀ n, P10143891374281876232.a n = (A191636 (n + 1) : ℚ)

end A191636

/-! ## A191636.P7172970838776961881

`A082482(2*n+1)+A065482(2*n+1)`
-/

namespace A191636.P7172970838776961881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082482 (2 * n + 1) + A065482 (2 * n + 1)

end

end A191636.P7172970838776961881

namespace A191636

/-- `A082482(2*n+1)+A065482(2*n+1)` -/
def P7172970838776961881.Spec : Prop :=
  ∀ n, P7172970838776961881.a n = A191636 (n + 1)

end A191636

/-! ## A191636.P9661989230997303233

`A281375(2*n+1)+A043545(2*n)-1`
-/

namespace A191636.P9661989230997303233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281375 (2 * n + 1) + (A043545 (2 * n) - 1)

end

end A191636.P9661989230997303233

namespace A191636

/-- `A281375(2*n+1)+A043545(2*n)-1` -/
def P9661989230997303233.Spec : Prop :=
  ∀ n, P9661989230997303233.a n = A191636 (n + 1)

end A191636

/-! ## A191636.P16536103226968187394

`A281375(2*n+1)-A209229(2*n+1)`
-/

namespace A191636.P16536103226968187394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281375 (2 * n + 1) - A209229 (2 * n + 1)

end

end A191636.P16536103226968187394

namespace A191636

/-- `A281375(2*n+1)-A209229(2*n+1)` -/
def P16536103226968187394.Spec : Prop :=
  ∀ n, P16536103226968187394.a n = A191636 (n + 1)

end A191636

/-! ## A191636.P14632535186627909895

`A053638(2*n+1)+A065482(2*n+1)-1`
-/

namespace A191636.P14632535186627909895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053638 (2 * n + 1) + (A065482 (2 * n + 1) - 1)

end

end A191636.P14632535186627909895

namespace A191636

/-- `A053638(2*n+1)+A065482(2*n+1)-1` -/
def P14632535186627909895.Spec : Prop :=
  ∀ n, P14632535186627909895.a n = A191636 (n + 1)

end A191636

/-! ## A191636.P13364730965883727631

`A033999(2*n+1)+A033999(2*n)*A053639(2*n+1)`
-/

namespace A191636.P13364730965883727631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) + A033999 (2 * n) * A053639 (2 * n + 1)

end

end A191636.P13364730965883727631

namespace A191636

/-- `A033999(2*n+1)+A033999(2*n)*A053639(2*n+1)` -/
def P13364730965883727631.Spec : Prop :=
  ∀ n, P13364730965883727631.a n = A191636 (n + 1)

end A191636

/-! ## A191636.P15872034465702644267

`ceil(A100102(n+1)/(2*n+1))`
-/

namespace A191636.P15872034465702644267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A100102 (n + 1) : ℚ) / (2 * n + 1 : ℚ)⌉

end

end A191636.P15872034465702644267

namespace A191636

/-- `ceil(A100102(n+1)/(2*n+1))` -/
def P15872034465702644267.Spec : Prop :=
  ∀ n, P15872034465702644267.a n = A191636 (n + 1)

end A191636

/-! ## A191636.P7351245027386963840

`round(A024037(n+1)/(2*n+1))`
-/

namespace A191636.P7351245027386963840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A024037 (n + 1) : ℚ) / (2 * n + 1 : ℚ))

end

end A191636.P7351245027386963840

namespace A191636

/-- `round(A024037(n+1)/(2*n+1))` -/
def P7351245027386963840.Spec : Prop :=
  ∀ n, P7351245027386963840.a n = A191636 (n + 1)

end A191636

/-! ## A191636.P6156145263017622497

`round(abs(A024036(n+1)-n)/Δ[n²])`
-/

namespace A191636.P6156145263017622497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((|A024036 (n + 1) - (n : ℤ)| : ℚ) / ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ))

end

end A191636.P6156145263017622497

namespace A191636

/-- `round(abs(A024036(n+1)-n)/Δ[n²])` -/
def P6156145263017622497.Spec : Prop :=
  ∀ n, P6156145263017622497.a n = A191636 (n + 1)

end A191636

/-! ## A191636.P4475912082310550657

`ceil(A084173(2*n+1)/(2*n+1))`
-/

namespace A191636.P4475912082310550657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084173 (2 * n + 1) : ℚ) / (2 * n + 1 : ℚ)⌉

end

end A191636.P4475912082310550657

namespace A191636

/-- `ceil(A084173(2*n+1)/(2*n+1))` -/
def P4475912082310550657.Spec : Prop :=
  ∀ n, P4475912082310550657.a n = A191636 (n + 1)

end A191636

/-!
# A191637: a(n) = floor((1 + 4^n)/(1 + 2*n)).

The programs for A191637, the canonical program `A191637.P14953562971432491213` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191637 has offset 1).

The definition of A191637 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((1+4^(n+1))/(1+2*(n+1)))` (program `A191637.P14953562971432491213`, by `A191637.P14953562971432491213.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191637.P14953562971432491213

`floor((1+4^(n+1))/(1+2*(n+1)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191637

/-- `floor((1+4^(n+1))/(1+2*(n+1)))` -/
def P14953562971432491213.Spec : Prop :=
  ∀ n, P14953562971432491213.a n = A191637 (n + 1)

theorem P14953562971432491213.correct : P14953562971432491213.Spec := by
  intro n
  simp only [A191637, Nat.add_sub_cancel]

end A191637

/-! ## A191637.P2621198892595432299

`A006788(2*n+3)`
-/

namespace A191637.P2621198892595432299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006788 (2 * n + 3)

end

end A191637.P2621198892595432299

namespace A191637

/-- `A006788(2*n+3)` -/
def P2621198892595432299.Spec : Prop :=
  ∀ n, P2621198892595432299.a n = A191637 (n + 1)

end A191637

/-! ## A191637.P17586790901790358707

`A053637(2*n+3)-1`
-/

namespace A191637.P17586790901790358707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053637 (2 * n + 3) - 1

end

end A191637.P17586790901790358707

namespace A191637

/-- `A053637(2*n+3)-1` -/
def P17586790901790358707.Spec : Prop :=
  ∀ n, P17586790901790358707.a n = A191637 (n + 1)

end A191637

/-! ## A191637.P10434022984022227826

`record[A006788(A029579(n))]`
-/

namespace A191637.P10434022984022227826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006788 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191637.P10434022984022227826

namespace A191637

/-- `record[A006788(A029579(n))]` -/
def P10434022984022227826.Spec : Prop :=
  ∀ n, P10434022984022227826.a n = A191637 (n + 1)

end A191637

/-! ## A191637.P17418832565294379624

`record[A006788(A093178(n))]`
-/

namespace A191637.P17418832565294379624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006788 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191637.P17418832565294379624

namespace A191637

/-- `record[A006788(A093178(n))]` -/
def P17418832565294379624.Spec : Prop :=
  ∀ n, P17418832565294379624.a n = A191637 (n + 1)

end A191637

/-! ## A191637.P16958392618128478981

`record[floor((-2)^n/(n+1))]`
-/

namespace A191637.P16958392618128478981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((-2) ^ n : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191637.P16958392618128478981

namespace A191637

/-- `record[floor((-2)^n/(n+1))]` -/
def P16958392618128478981.Spec : Prop :=
  ∀ n, P16958392618128478981.a n = A191637 (n + 1)

end A191637

/-! ## A191637.P16708313067194451393

`A000225(2*(n+1))-A350294(2*(n+1))`
-/

namespace A191637.P16708313067194451393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (2 * (n + 1)) - A350294 (2 * (n + 1))

end

end A191637.P16708313067194451393

namespace A191637

/-- `A000225(2*(n+1))-A350294(2*(n+1))` -/
def P16708313067194451393.Spec : Prop :=
  ∀ n, P16708313067194451393.a n = A191637 (n + 1)

end A191637

/-!
# A191638: a(n) = floor((-1 + 4^n)/(-1 + 3*n)).

The programs for A191638, the canonical program `A191638.P8409145969612425683` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191638 has offset 1).

The definition of A191638 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((-1+4^(n+1))/(-1+3*(n+1)))` (program `A191638.P8409145969612425683`, by `A191638.P8409145969612425683.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191638.P8409145969612425683

`floor((-1+4^(n+1))/(-1+3*(n+1)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191638

/-- `floor((-1+4^(n+1))/(-1+3*(n+1)))` -/
def P8409145969612425683.Spec : Prop :=
  ∀ n, P8409145969612425683.a n = A191638 (n + 1)

theorem P8409145969612425683.correct : P8409145969612425683.Spec := by
  intro n
  simp only [A191638, Nat.add_sub_cancel]

end A191638

/-! ## A191638.P1940004907769407128

`record[floor(A126646(n)/A165355(n))]`
-/

namespace A191638.P1940004907769407128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126646 n : ℚ) / (A165355 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191638.P1940004907769407128

namespace A191638

/-- `record[floor(A126646(n)/A165355(n))]` -/
def P1940004907769407128.Spec : Prop :=
  ∀ n, P1940004907769407128.a n = A191638 (n + 1)

end A191638

/-! ## A191638.P68906819509601104

`record[floor(A285475(n)/A001651(n+1))]`
-/

namespace A191638.P68906819509601104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A285475 n : ℚ) / (A001651 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191638.P68906819509601104

namespace A191638

/-- `record[floor(A285475(n)/A001651(n+1))]` -/
def P68906819509601104.Spec : Prop :=
  ∀ n, P68906819509601104.a n = A191638 (n + 1)

end A191638

/-!
# A191639: a(n) = floor((1 + 4^n)/(1 + 3*n)).

The programs for A191639, the canonical program `A191639.P2804359241417467413` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191639 has offset 1).

The definition of A191639 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((1+4^(n+1))/(1+3*(n+1)))` (program `A191639.P2804359241417467413`, by `A191639.P2804359241417467413.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191639.P2804359241417467413

`floor((1+4^(n+1))/(1+3*(n+1)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191639

/-- `floor((1+4^(n+1))/(1+3*(n+1)))` -/
def P2804359241417467413.Spec : Prop :=
  ∀ n, P2804359241417467413.a n = A191639 (n + 1)

theorem P2804359241417467413.correct : P2804359241417467413.Spec := by
  intro n
  simp only [A191639, Nat.add_sub_cancel]

end A191639

/-! ## A191639.P13731675031937401547

`A191629(2*n+3)`
-/

namespace A191639.P13731675031937401547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191629 (2 * n + 3)

end

end A191639.P13731675031937401547

namespace A191639

/-- `A191629(2*n+3)` -/
def P13731675031937401547.Spec : Prop :=
  ∀ n, P13731675031937401547.a n = A191639 (n + 1)

end A191639

/-! ## A191639.P13902807562914510157

`-Δ[-∑[A191629(n+1+n)]]`
-/

namespace A191639.P13902807562914510157
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191629 (n + 1 + n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f1 (n + 1) - f1 n)

end

end A191639.P13902807562914510157

namespace A191639

/-- `-Δ[-∑[A191629(n+1+n)]]` -/
def P13902807562914510157.Spec : Prop :=
  ∀ n, P13902807562914510157.a n = A191639 (n + 1)

end A191639

/-! ## A191639.P9931082285520461057

`record[A191629(A000265(n+1))]`
-/

namespace A191639.P9931082285520461057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191629 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191639.P9931082285520461057

namespace A191639

/-- `record[A191629(A000265(n+1))]` -/
def P9931082285520461057.Spec : Prop :=
  ∀ n, P9931082285520461057.a n = A191639 (n + 1)

end A191639

/-! ## A191639.P17535355432543553970

`record[A191629(abs(n-A035327(n)))]`
-/

namespace A191639.P17535355432543553970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191629 |(n : ℤ) - A035327 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191639.P17535355432543553970

namespace A191639

/-- `record[A191629(abs(n-A035327(n)))]` -/
def P17535355432543553970.Spec : Prop :=
  ∀ n, P17535355432543553970.a n = A191639 (n + 1)

end A191639

/-! ## A191639.P17219399326583987700

`record[A191629(gcd(n, A007814(n+2)))]`
-/

namespace A191639.P17219399326583987700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191629 (Int.gcd (n : ℤ) (A007814 (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191639.P17219399326583987700

namespace A191639

/-- `record[A191629(gcd(n, A007814(n+2)))]` -/
def P17219399326583987700.Spec : Prop :=
  ∀ n, P17219399326583987700.a n = A191639 (n + 1)

end A191639

/-! ## A191639.P12289095621738893104

`record[A191629(n+1)/A001511(n+1)]`
-/

namespace A191639.P12289095621738893104
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191629 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191639.P12289095621738893104

namespace A191639

/-- `record[A191629(n+1)/A001511(n+1)]` -/
def P12289095621738893104.Spec : Prop :=
  ∀ n, P12289095621738893104.a n = (A191639 (n + 1) : ℚ)

end A191639

/-! ## A191639.P13810801415284711430

`record[lcm(A131734(n+1), A191629(n+1))]`
-/

namespace A191639.P13810801415284711430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A131734 (n + 1)) (A191629 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191639.P13810801415284711430

namespace A191639

/-- `record[lcm(A131734(n+1), A191629(n+1))]` -/
def P13810801415284711430.Spec : Prop :=
  ∀ n, (P13810801415284711430.a n : ℤ) = A191639 (n + 1)

end A191639

/-! ## A191639.P18335644655889884824

`record[A191629(A099375(n))]`
-/

namespace A191639.P18335644655889884824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191629 (A099375 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191639.P18335644655889884824

namespace A191639

/-- `record[A191629(A099375(n))]` -/
def P18335644655889884824.Spec : Prop :=
  ∀ n, P18335644655889884824.a n = A191639 (n + 1)

end A191639

/-!
# A191640: a(n) = floor((-1 + 4^n)/(-1 + 4*n)).

The programs for A191640, the canonical program `A191640.P10587211563247670597` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191640 has offset 1).

The definition of A191640 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((-1+4^(n+1))/(-1+4*(n+1)))` (program `A191640.P10587211563247670597`, by `A191640.P10587211563247670597.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191640.P10587211563247670597

`floor((-1+4^(n+1))/(-1+4*(n+1)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191640

/-- `floor((-1+4^(n+1))/(-1+4*(n+1)))` -/
def P10587211563247670597.Spec : Prop :=
  ∀ n, P10587211563247670597.a n = A191640 (n + 1)

theorem P10587211563247670597.correct : P10587211563247670597.Spec := by
  intro n
  simp only [A191640, Nat.add_sub_cancel]

end A191640

/-! ## A191640.P8273976003024264994

`A191631(2*(n+1))`
-/

namespace A191640.P8273976003024264994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191631 (2 * (n + 1))

end

end A191640.P8273976003024264994

namespace A191640

/-- `A191631(2*(n+1))` -/
def P8273976003024264994.Spec : Prop :=
  ∀ n, P8273976003024264994.a n = A191640 (n + 1)

end A191640

/-! ## A191640.P3611340772757741536

`record[A191631((n+1)%4+n+1)]`
-/

namespace A191640.P3611340772757741536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191631 ((n + 1) % 4 + (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191640.P3611340772757741536

namespace A191640

/-- `record[A191631((n+1)%4+n+1)]` -/
def P3611340772757741536.Spec : Prop :=
  ∀ n, P3611340772757741536.a n = A191640 (n + 1)

end A191640

/-! ## A191640.P8822469533622129218

`record[A191631(A000265(n+1)+1)]`
-/

namespace A191640.P8822469533622129218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191631 (A000265 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191640.P8822469533622129218

namespace A191640

/-- `record[A191631(A000265(n+1)+1)]` -/
def P8822469533622129218.Spec : Prop :=
  ∀ n, P8822469533622129218.a n = A191640 (n + 1)

end A191640

/-! ## A191640.P18252350657930707578

`record[A191631(n+1)/A040005(n)]`
-/

namespace A191640.P18252350657930707578
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191631 (n + 1) : ℚ) / (A040005 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191640.P18252350657930707578

namespace A191640

/-- `record[A191631(n+1)/A040005(n)]` -/
def P18252350657930707578.Spec : Prop :=
  ∀ n, P18252350657930707578.a n = (A191640 (n + 1) : ℚ)

end A191640

/-! ## A191640.P9101489282922409020

`record[A191631(n+2)/A000034(n)]`
-/

namespace A191640.P9101489282922409020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191631 (n + 2) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191640.P9101489282922409020

namespace A191640

/-- `record[A191631(n+2)/A000034(n)]` -/
def P9101489282922409020.Spec : Prop :=
  ∀ n, P9101489282922409020.a n = (A191640 (n + 1) : ℚ)

end A191640

/-! ## A191640.P7598987002705974296

`record[A191631(n+1)^Δ[A004526(n)]]`
-/

namespace A191640.P7598987002705974296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191631 (n + 1) : ℚ) ^ (f2 (n + 1) - f2 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191640.P7598987002705974296

namespace A191640

/-- `record[A191631(n+1)^Δ[A004526(n)]]` -/
def P7598987002705974296.Spec : Prop :=
  ∀ n, P7598987002705974296.a n = (A191640 (n + 1) : ℚ)

end A191640

/-! ## A191640.P10277145094867283473

`A191631(A103517(n))-A000007(n)`
-/

namespace A191640.P10277145094867283473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191631 (A103517 n).toNat - A000007 n

end

end A191640.P10277145094867283473

namespace A191640

/-- `A191631(A103517(n))-A000007(n)` -/
def P10277145094867283473.Spec : Prop :=
  ∀ n, P10277145094867283473.a n = A191640 (n + 1)

end A191640

/-! ## A191640.P7712706930430999007

`or(A000007(n), A191631(A005408(n)+1))`
-/

namespace A191640.P7712706930430999007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A191631 (A005408 n + 1).toNat)

end

end A191640.P7712706930430999007

namespace A191640

/-- `or(A000007(n), A191631(A005408(n)+1))` -/
def P7712706930430999007.Spec : Prop :=
  ∀ n, P7712706930430999007.a n = A191640 (n + 1)

end A191640

/-! ## A191640.P9546666275350137094

`record[A191631(A286565(n+1)+A286565(n+1))]`
-/

namespace A191640.P9546666275350137094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191631 (A286565 (n + 1) + A286565 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191640.P9546666275350137094

namespace A191640

/-- `record[A191631(A286565(n+1)+A286565(n+1))]` -/
def P9546666275350137094.Spec : Prop :=
  ∀ n, P9546666275350137094.a n = A191640 (n + 1)

end A191640

/-!
# A191641: a(n) = floor((1 + 4^n)/(1 + 4*n)).

The programs for A191641, the canonical program `A191641.P16867583107805000527` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191641 has offset 1).

The definition of A191641 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((1+4^(n+1))/(1+4*(n+1)))` (program `A191641.P16867583107805000527`, by `A191641.P16867583107805000527.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191641.P16867583107805000527

`floor((1+4^(n+1))/(1+4*(n+1)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191641

/-- `floor((1+4^(n+1))/(1+4*(n+1)))` -/
def P16867583107805000527.Spec : Prop :=
  ∀ n, P16867583107805000527.a n = A191641 (n + 1)

theorem P16867583107805000527.correct : P16867583107805000527.Spec := by
  intro n
  simp only [A191641, Nat.add_sub_cancel]

end A191641

/-! ## A191641.P10413485492480212207

`A191633(2*(n+1))`
-/

namespace A191641.P10413485492480212207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191633 (2 * (n + 1))

end

end A191641.P10413485492480212207

namespace A191641

/-- `A191633(2*(n+1))` -/
def P10413485492480212207.Spec : Prop :=
  ∀ n, P10413485492480212207.a n = A191641 (n + 1)

end A191641

/-! ## A191641.P5468801401026974271

`or(A000007(n), A191633(A005408(n)+1))`
-/

namespace A191641.P5468801401026974271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A191633 (A005408 n + 1).toNat)

end

end A191641.P5468801401026974271

namespace A191641

/-- `or(A000007(n), A191633(A005408(n)+1))` -/
def P5468801401026974271.Spec : Prop :=
  ∀ n, P5468801401026974271.a n = A191641 (n + 1)

end A191641

/-! ## A191641.P8849018198768656113

`A191633(A005408(n)+1)+A011731(∑{e}[n+1, #]+1)`
-/

namespace A191641.P8849018198768656113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191633 (A005408 n + 1).toNat + A011731 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A191641.P8849018198768656113

namespace A191641

/-- `A191633(A005408(n)+1)+A011731(∑{e}[n+1, #]+1)` -/
def P8849018198768656113.Spec : Prop :=
  ∀ n, P8849018198768656113.a n = A191641 (n + 1)

end A191641

/-! ## A191641.P89009653173839121

`A191633(A005408(n)+1)+A102683(∑{e}[n+1, #]+1)`
-/

namespace A191641.P89009653173839121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191633 (A005408 n + 1).toNat + A102683 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + 1)

end

end A191641.P89009653173839121

namespace A191641

/-- `A191633(A005408(n)+1)+A102683(∑{e}[n+1, #]+1)` -/
def P89009653173839121.Spec : Prop :=
  ∀ n, P89009653173839121.a n = A191641 (n + 1)

end A191641

/-! ## A191641.P4081889834576687181

`A191633(A005408(n)+1)+A011731(A000196(n))`
-/

namespace A191641.P4081889834576687181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191633 (A005408 n + 1).toNat + A011731 (A000196 n).toNat

end

end A191641.P4081889834576687181

namespace A191641

/-- `A191633(A005408(n)+1)+A011731(A000196(n))` -/
def P4081889834576687181.Spec : Prop :=
  ∀ n, P4081889834576687181.a n = A191641 (n + 1)

end A191641

/-! ## A191641.P10847156538798791519

`A191633(A005408(n)+1)+A102683(A219347(n))`
-/

namespace A191641.P10847156538798791519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191633 (A005408 n + 1).toNat + A102683 (A219347 n).toNat

end

end A191641.P10847156538798791519

namespace A191641

/-- `A191633(A005408(n)+1)+A102683(A219347(n))` -/
def P10847156538798791519.Spec : Prop :=
  ∀ n, P10847156538798791519.a n = A191641 (n + 1)

end A191641

/-! ## A191641.P11645081877094030294

`A191633(A004275(n+2))+A036987(A240754(n+1))`
-/

namespace A191641.P11645081877094030294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191633 (A004275 (n + 2)).toNat + A036987 (A240754 (n + 1)).toNat

end

end A191641.P11645081877094030294

namespace A191641

/-- `A191633(A004275(n+2))+A036987(A240754(n+1))` -/
def P11645081877094030294.Spec : Prop :=
  ∀ n, P11645081877094030294.a n = A191641 (n + 1)

end A191641

/-! ## A191641.P3823534942671590303

`A191633(A004275(n+2))/A056059(A056059(n+1))`
-/

namespace A191641.P3823534942671590303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191633 (A004275 (n + 2)).toNat : ℚ) / (A056059 (A056059 (n + 1)).toNat : ℚ)

end

end A191641.P3823534942671590303

namespace A191641

/-- `A191633(A004275(n+2))/A056059(A056059(n+1))` -/
def P3823534942671590303.Spec : Prop :=
  ∀ n, P3823534942671590303.a n = (A191641 (n + 1) : ℚ)

end A191641

/-! ## A191641.P1061284567328775977

`A191633(A004275(n+2))/A014963(A108454(n+1))`
-/

namespace A191641.P1061284567328775977
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191633 (A004275 (n + 2)).toNat : ℚ) / (A014963 (A108454 (n + 1)).toNat : ℚ)

end

end A191641.P1061284567328775977

namespace A191641

/-- `A191633(A004275(n+2))/A014963(A108454(n+1))` -/
def P1061284567328775977.Spec : Prop :=
  ∀ n, P1061284567328775977.a n = (A191641 (n + 1) : ℚ)

end A191641

/-! ## A191641.P8237085174616355659

`A191633(A004275(n+2))%Δ[4^n]`
-/

namespace A191641.P8237085174616355659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A191633 (A004275 (n + 2)).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A191641.P8237085174616355659

namespace A191641

/-- `A191633(A004275(n+2))%Δ[4^n]` -/
def P8237085174616355659.Spec : Prop :=
  ∀ n, P8237085174616355659.a n = A191641 (n + 1)

end A191641

/-!
# A191642: Kochański's (or Kochanski's) sequence.

The programs for A191642, there is no canonical definition to state claims against.
-/

/-! ## A191642.P8557036483226915340

`floor(A199658(n+2)/A199672(n+1))`
-/

namespace A191642.P8557036483226915340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199658 (n + 2) : ℚ) / (A199672 (n + 1) : ℚ)⌋

end

end A191642.P8557036483226915340

/-! ## A191642.P15375293971046934848

`floor(A199658(n+2)/(∑[A199658(n+1)]-1))`
-/

namespace A191642.P15375293971046934848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199658 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A199658 (n + 2) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ)⌋

end

end A191642.P15375293971046934848

/-!
# A191646: Triangle read by rows: T(n,k) = number of connected multigraphs with n >= 0 edges and 1 <= k <= n+1 vertices, with no loops allowed.

The programs for A191646, there is no canonical definition to state claims against.
-/

/-! ## A191646.P10225968226204760266

`or(A170957(2*n), A172236(n+1))`
-/

namespace A191646.P10225968226204760266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A170957 (2 * n)) (A172236 (n + 1))

end

end A191646.P10225968226204760266

/-! ## A191646.P14787315891432431442

`A287272(A266632(n+1))+A097805(n)`
-/

namespace A191646.P14787315891432431442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A266632 (n + 1)).toNat + A097805 n

end

end A191646.P14787315891432431442

/-! ## A191646.P2191751563343414933

`A287272(A266632(n+1))+A213888(n)`
-/

namespace A191646.P2191751563343414933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A266632 (n + 1)).toNat + A213888 n

end

end A191646.P2191751563343414933

/-! ## A191646.P10783302520311187925

`A287272(A266632(n+1))+A213889(n)`
-/

namespace A191646.P10783302520311187925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A266632 (n + 1)).toNat + A213889 n

end

end A191646.P10783302520311187925

/-! ## A191646.P13167841508649223766

`or(A080885(A345838(n+1)), A172236(n+1))`
-/

namespace A191646.P13167841508649223766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A080885 (A345838 (n + 1)).toNat) (A172236 (n + 1))

end

end A191646.P13167841508649223766

/-!
# A191649: Number of lattice paths from (0,0) to (n,n) using steps (0,1), (1,0), (1,1), (2,2).

The programs for A191649, there is no canonical definition to state claims against.
-/

/-! ## A191649.P17294517467574402749

`round(A347007(2*(n+1))/4)`
-/

namespace A191649.P17294517467574402749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A347007 (2 * (n + 1)) : ℚ) / 4)

end

end A191649.P17294517467574402749

/-!
# A191650: Number of n X n symmetric binary matrices with each 1 adjacent to exactly 1 antidiagonally neighboring 1.

The programs for A191650, there is no canonical definition to state claims against.
-/

/-! ## A191650.P12808696560897816975

`a(n-1)*A191651(n)` with `a(0)=1`
-/

namespace A191650.P12808696560897816975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A191651 n

end

end A191650.P12808696560897816975

/-! ## A191650.P4886604649055629657

`∏[A191651(n+1)]/A191651(n+1)`
-/

namespace A191650.P4886604649055629657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191651 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A191651 (n + 1) : ℚ)

end

end A191650.P4886604649055629657

/-! ## A191650.P8395355464083388133

`∏[A162351(record[(C(comp[∑[n]]-n, 2)-n)*(n-C(∑[char[∑[n]]], 2))!])]`
-/

namespace A191650.P8395355464083388133
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

open Classical in
def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) * (Nat.factorial ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f5 j) 2 : ℤ)).toNat : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162351 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191650.P8395355464083388133

/-! ## A191650.P13266370512005191374

`∏[A318874(∏[A056011(n+1)])]`
-/

namespace A191650.P13266370512005191374
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318874 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A191650.P13266370512005191374

/-!
# A191651: Ratio A191650(n+1)/A191650(n).

The programs for A191651, the canonical program `A191651.P14271140535102503527` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191651 has offset 1).

The definition of A191651 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 602 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191651.P15891501632799844509

`A191650(n+2)/A191650(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191651.P15891501632799844509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191650 (n + 2) : ℚ) / (A191650 (n + 1) : ℚ)

end

end A191651.P15891501632799844509

namespace A191651

/-- `A191650(n+2)/A191650(n+1)` -/
def P15891501632799844509.Spec : Prop :=
  ∀ n, P15891501632799844509.a n = (A191651 (n + 1) : ℚ)

end A191651

/-! ## A191651.P14271140535102503527

`a(n-1)+a(n-3)-a(n-4)+a(n-5)+a(n-6)-a(n-9)` with `a(0)=2, a(1)=2, a(2)=2, a(3)=4, a(4)=6, a(5)=9, a(6)=15, a(7)=20, a(8)=28`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191651

/-- `a(n-1)+a(n-3)-a(n-4)+a(n-5)+a(n-6)-a(n-9)` -/
def P14271140535102503527.Spec : Prop :=
  ∀ n, P14271140535102503527.a n = A191651 (n + 1)

theorem P14271140535102503527.correct : P14271140535102503527.Spec := by
  intro n
  simp only [A191651, Nat.add_sub_cancel]

end A191651

/-! ## A191651.P9780831800793283314

`A226916(n+9)*A226916(n+10)`
-/

namespace A191651.P9780831800793283314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226916 (n + 9) * A226916 (n + 10)

end

end A191651.P9780831800793283314

namespace A191651

/-- `A226916(n+9)*A226916(n+10)` -/
def P9780831800793283314.Spec : Prop :=
  ∀ n, P9780831800793283314.a n = A191651 (n + 1)

end A191651

/-! ## A191651.P12888567544951467872

`A097333(∑[char[2*n]])*A108104(n+3)`
-/

namespace A191651.P12888567544951467872
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097333 (∑ j ∈ Finset.range (n + 1), f1 j) * A108104 (n + 3)

end

end A191651.P12888567544951467872

namespace A191651

/-- `A097333(∑[char[2*n]])*A108104(n+3)` -/
def P12888567544951467872.Spec : Prop :=
  ∀ n, P12888567544951467872.a n = A191651 (n + 1)

end A191651

/-! ## A191651.P18368538185431029252

`(A108104(n+2)+A108104(n))*A108104(n+3)`
-/

namespace A191651.P18368538185431029252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A108104 (n + 2) + A108104 n) * A108104 (n + 3)

end

end A191651.P18368538185431029252

namespace A191651

/-- `(A108104(n+2)+A108104(n))*A108104(n+3)` -/
def P18368538185431029252.Spec : Prop :=
  ∀ n, P18368538185431029252.a n = A191651 (n + 1)

end A191651

/-! ## A191651.P18098581703286459514

`Δ[A224809(n+7)]-A224809(n+3)`
-/

namespace A191651.P18098581703286459514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224809 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A224809 (n + 3)

end

end A191651.P18098581703286459514

namespace A191651

/-- `Δ[A224809(n+7)]-A224809(n+3)` -/
def P18098581703286459514.Spec : Prop :=
  ∀ n, P18098581703286459514.a n = A191651 (n + 1)

end A191651

/-! ## A191651.P15657000830996664205

`A224809(n+8)-(A224809(n+3)+A224809(n+7))`
-/

namespace A191651.P15657000830996664205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224809 (n + 8) - (A224809 (n + 3) + A224809 (n + 7))

end

end A191651.P15657000830996664205

namespace A191651

/-- `A224809(n+8)-(A224809(n+3)+A224809(n+7))` -/
def P15657000830996664205.Spec : Prop :=
  ∀ n, P15657000830996664205.a n = A191651 (n + 1)

end A191651

/-!
# A191652: Number of n-step two-sided prudent self-avoiding walks ending on the top side of their box.

The programs for A191652, there is no canonical definition to state claims against.
-/

/-! ## A191652.P14955182931651422787

`(A191605(n)+A191625(n))/2`
-/

namespace A191652.P14955182931651422787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191605 n + A191625 n : ℚ) / 2

end

end A191652.P14955182931651422787

/-! ## A191652.P8842009997205005226

`A191605(n+2)/2-A191605(n+1)`
-/

namespace A191652.P8842009997205005226
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191605 (n + 2) : ℚ) / 2 - (A191605 (n + 1) : ℚ)

end

end A191652.P8842009997205005226

/-! ## A191652.P15209143038226459702

`A004525(A191625(n)+A191605(n))`
-/

namespace A191652.P15209143038226459702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A191625 n + A191605 n).toNat

end

end A191652.P15209143038226459702

/-! ## A191652.P11579006335980093398

`A004526(A191625(n)+A191605(n))`
-/

namespace A191652.P11579006335980093398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A191625 n + A191605 n).toNat

end

end A191652.P11579006335980093398

/-! ## A191652.P13200194565129752172

`A026741(A191625(n)+A191605(n))`
-/

namespace A191652.P13200194565129752172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A191625 n + A191605 n).toNat

end

end A191652.P13200194565129752172

/-!
# A191653: Number of n-step two-sided prudent self-avoiding walks ending at the northwest corner of their box.

The programs for A191653, there is no canonical definition to state claims against.
-/

/-! ## A191653.P14714861996367750784

`A191827(n)+A014027(A018042(n))`
-/

namespace A191653.P14714861996367750784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191827 n + A014027 (A018042 n).toNat

end

end A191653.P14714861996367750784

/-! ## A191653.P8157788263977751680

`A191827(n)-A025457(A000110(n))`
-/

namespace A191653.P8157788263977751680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191827 n - A025457 (A000110 n).toNat

end

end A191653.P8157788263977751680

/-! ## A191653.P13308120168687126958

`A191827(n)-A010059(A052481(n))`
-/

namespace A191653.P13308120168687126958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191827 n - A010059 (A052481 n).toNat

end

end A191653.P13308120168687126958

/-! ## A191653.P5369962653076849663

`A191827(n)-A185284(A000124(n))`
-/

namespace A191653.P5369962653076849663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191827 n - A185284 (A000124 n).toNat

end

end A191653.P5369962653076849663

/-! ## A191653.P11146376961563068650

`A191827(n)-A354996(A007838(n))`
-/

namespace A191653.P11146376961563068650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191827 n - A354996 (A007838 n).toNat

end

end A191653.P11146376961563068650

/-!
# A191654: First repeating AN iterates. The AN (Adjective-before-Noun) function of a finite sequence s of nonnegative integers is the finite sequence a,0,b,1,c,2,...m,z, where a=#0's in s, b=#1's in s,..., m=#z's in s, where m is the greatest term in s.

The programs for A191654, there is no canonical definition to state claims against.
-/

/-! ## A191654.P9517371051097632319

`A109973(xor(1, n)+1)`
-/

namespace A191654.P9517371051097632319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109973 (Nat.xor 1 n + 1)

end

end A191654.P9517371051097632319

/-! ## A191654.P18110226242045867170

`A109973((-1)^n+n+1)`
-/

namespace A191654.P18110226242045867170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109973 ((-1) ^ n + (n + 1 : ℤ)).toNat

end

end A191654.P18110226242045867170

/-! ## A191654.P5492413622876113244

`dr(A109973(A014681(n+1)))`
-/

namespace A191654.P5492413622876113244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A109973 (A014681 (n + 1)).toNat)

end

end A191654.P5492413622876113244

/-! ## A191654.P8085699682059833872

`or(A000007(n), A109973(A014681(n+1)))`
-/

namespace A191654.P8085699682059833872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A109973 (A014681 (n + 1)).toNat)

end

end A191654.P8085699682059833872

/-! ## A191654.P14881836234938525339

`A020985(n)²*A109973(A014681(n+1))`
-/

namespace A191654.P14881836234938525339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A109973 (A014681 (n + 1)).toNat

end

end A191654.P14881836234938525339

/-! ## A191654.P7785452112957847176

`A054977(n+1)*A109973(A014681(n+1))`
-/

namespace A191654.P7785452112957847176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (n + 1) * A109973 (A014681 (n + 1)).toNat

end

end A191654.P7785452112957847176

/-! ## A191654.P9023816965725330837

`A057427(n+1)*A109973(A014681(n+1))`
-/

namespace A191654.P9023816965725330837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A109973 (A014681 (n + 1)).toNat

end

end A191654.P9023816965725330837

/-! ## A191654.P15451650819676459439

`lcm(A062157(n+1), A109973(A014681(n+1)))`
-/

namespace A191654.P15451650819676459439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A062157 (n + 1)) (A109973 (A014681 (n + 1)).toNat)

end

end A191654.P15451650819676459439

/-! ## A191654.P971428919314662979

`A007318(C(2, n+1))*A109973(A014681(n+1))`
-/

namespace A191654.P971428919314662979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A109973 (A014681 (n + 1)).toNat

end

end A191654.P971428919314662979

/-!
# A191655: Dispersion of (2,5,8,11,14,17,...), by antidiagonals.

The programs for A191655, there is no canonical definition to state claims against.
-/

/-! ## A191655.P9532408197384315514

`A191656(A066182(n+1)+1)-1`
-/

namespace A191655.P9532408197384315514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191656 (A066182 (n + 1) + 1).toNat - 1

end

end A191655.P9532408197384315514

/-! ## A191655.P6714790563839059325

`A194915(n+1)+A055641(2^n)`
-/

namespace A191655.P6714790563839059325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194915 (n + 1) + A055641 (2 ^ n)

end

end A191655.P6714790563839059325

/-! ## A191655.P3843807600639548279

`A179801(A016116(n))+A059399(n+1)`
-/

namespace A191655.P3843807600639548279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179801 (A016116 n).toNat + A059399 (n + 1)

end

end A191655.P3843807600639548279

/-! ## A191655.P1607097042914906956

`A059399(n+1)+A007814(A322283(n))`
-/

namespace A191655.P1607097042914906956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059399 (n + 1) + A007814 (A322283 n).toNat

end

end A191655.P1607097042914906956

/-! ## A191655.P17641709138390737665

`A194988(n+1)+A179801(A016116(n))`
-/

namespace A191655.P17641709138390737665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194988 (n + 1) + A179801 (A016116 n).toNat

end

end A191655.P17641709138390737665

/-!
# A191656: Dispersion of (2,4,5,7,8,10,...), by antidiagonals.

The programs for A191656, there is no canonical definition to state claims against.
-/

/-! ## A191656.P1919861978985132330

`A367856(A066182(n+1))`
-/

namespace A191656.P1919861978985132330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367856 (A066182 (n + 1)).toNat

end

end A191656.P1919861978985132330

/-! ## A191656.P11249298326514528165

`A083044(A066182(n+1))-A087960(n)²`
-/

namespace A191656.P11249298326514528165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083044 (A066182 (n + 1)).toNat - A087960 n ^ 2

end

end A191656.P11249298326514528165

/-! ## A191656.P1751774977980243741

`A083044(A066182(n+1))-A165326(n)²`
-/

namespace A191656.P1751774977980243741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083044 (A066182 (n + 1)).toNat - A165326 n ^ 2

end

end A191656.P1751774977980243741

/-! ## A191656.P12003294300570031001

`A260196(n+2)+A083044(A066182(n+1))`
-/

namespace A191656.P12003294300570031001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A083044 (A066182 (n + 1)).toNat

end

end A191656.P12003294300570031001

/-! ## A191656.P11065172392500552566

`A164117(Δ[n²])+A083044(A066182(n+1))`
-/

namespace A191656.P11065172392500552566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A083044 (A066182 (n + 1)).toNat

end

end A191656.P11065172392500552566

/-! ## A191656.P5614776497884987625

`A280193(Δ[n²])+A083044(A066182(n+1))`
-/

namespace A191656.P5614776497884987625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A083044 (A066182 (n + 1)).toNat

end

end A191656.P5614776497884987625

/-! ## A191656.P1661424805403599041

`A165326(2*(n+1))+A083044(A066182(n+1))`
-/

namespace A191656.P1661424805403599041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165326 (2 * (n + 1)) + A083044 (A066182 (n + 1)).toNat

end

end A191656.P1661424805403599041

/-! ## A191656.P13287251613432814719

`A163805(A016813(n))+A083044(A066182(n+1))`
-/

namespace A191656.P13287251613432814719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163805 (A016813 n).toNat + A083044 (A066182 (n + 1)).toNat

end

end A191656.P13287251613432814719

/-! ## A191656.P15416692198462508574

`round(sqrt(A083044(n)*A191655(n+1)))`
-/

namespace A191656.P15416692198462508574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A083044 n * A191655 (n + 1) : ℝ))

end

end A191656.P15416692198462508574

/-! ## A191656.P6136557962584399358

`A087960(A307880(n+1))+A083044(A066182(n+1))`
-/

namespace A191656.P6136557962584399358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 (A307880 (n + 1)).toNat + A083044 (A066182 (n + 1)).toNat

end

end A191656.P6136557962584399358

/-!
# A191659: First differences of A000219.

The programs for A191659, there is no canonical definition to state claims against.
-/

/-! ## A191659.P9700893906167154191

`∑[A191660(n)]-A191660(n)`
-/

namespace A191659.P9700893906167154191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A191660 n

end

end A191659.P9700893906167154191

/-! ## A191659.P4158209465550537513

`Δ[A000219(n)]`
-/

namespace A191659.P4158209465550537513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191659.P4158209465550537513

/-! ## A191659.P7036062371952225419

`A000219(n+1)-A000219(n)`
-/

namespace A191659.P7036062371952225419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (n + 1) - A000219 n

end

end A191659.P7036062371952225419

/-! ## A191659.P8814829798591116646

`record[A000219(A008624(n))]-A000219(n)`
-/

namespace A191659.P8814829798591116646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 (A008624 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A000219 n

end

end A191659.P8814829798591116646

/-! ## A191659.P7797552627326436554

`Δ[A309267(n)-a(n-1)]` with `a(0)=1`
-/

namespace A191659.P7797552627326436554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A309267 n - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191659.P7797552627326436554

/-! ## A191659.P5543740746055518839

`Δ[sqrt(A383354(n))]`
-/

namespace A191659.P5543740746055518839
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A383354 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191659.P5543740746055518839

/-! ## A191659.P1401194608527285471

`Δ[A242642(A179865(n+1))]`
-/

namespace A191659.P1401194608527285471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191659.P1401194608527285471

/-! ## A191659.P18153305822505094922

`Δ[A255961(∑[n]+2*n+1)]`
-/

namespace A191659.P18153305822505094922
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (∑ j ∈ Finset.range (n + 1), f2 j + (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191659.P18153305822505094922

/-! ## A191659.P8495199056697539342

`Δ[A293551(∑[n+3])]`
-/

namespace A191659.P8495199056697539342
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191659.P8495199056697539342

/-! ## A191659.P16270888865165666070

`Δ[A242641(A058331(n))]`
-/

namespace A191659.P16270888865165666070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A058331 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191659.P16270888865165666070

/-!
# A191660: Second differences of A000219.

The programs for A191660, there is no canonical definition to state claims against.
-/

/-! ## A191660.P11186251264408806877

`A191661(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A191660.P11186251264408806877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A191661 (n - 1) + a (n - 1)

end

end A191660.P11186251264408806877

/-! ## A191660.P11391143468094659478

`Δ[A191659(n)]`
-/

namespace A191660.P11391143468094659478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191660.P11391143468094659478

/-! ## A191660.P10317008523805515245

`A191659(n+1)-A191659(n)`
-/

namespace A191660.P10317008523805515245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191659 (n + 1) - A191659 n

end

end A191660.P10317008523805515245

/-! ## A191660.P14159472025479486282

`Δ[Δ[A000219(n)]]`
-/

namespace A191660.P14159472025479486282
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191660.P14159472025479486282

/-! ## A191660.P5920705480369444034

`Δ[Δ[A242642(A179865(n+1))]]`
-/

namespace A191660.P5920705480369444034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A179865 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191660.P5920705480369444034

/-! ## A191660.P14051910317698293616

`Δ[Δ[A255961(∑[n]+2*n+1)]]`
-/

namespace A191660.P14051910317698293616
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (∑ j ∈ Finset.range (n + 1), f3 j + (2 * n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191660.P14051910317698293616

/-! ## A191660.P1637685479664942656

`Δ[Δ[A242641(A058331(n))]]`
-/

namespace A191660.P1637685479664942656
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A058331 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191660.P1637685479664942656

/-! ## A191660.P16818684973582734674

`Δ[Δ[A242641(2*(n+1)²)]]`
-/

namespace A191660.P16818684973582734674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (2 * (n + 1) ^ 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191660.P16818684973582734674

/-!
# A191661: Third differences of A000219.

The programs for A191661, there is no canonical definition to state claims against.
-/

/-! ## A191661.P658000169074718922

`Δ[A191660(n)]`
-/

namespace A191661.P658000169074718922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191660 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191661.P658000169074718922

/-! ## A191661.P1122054914646018671

`A191660(n+1)-A191660(n)`
-/

namespace A191661.P1122054914646018671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191660 (n + 1) - A191660 n

end

end A191661.P1122054914646018671

/-! ## A191661.P16427564939679149725

`Δ[Δ[A191659(n)]]`
-/

namespace A191661.P16427564939679149725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191659 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191661.P16427564939679149725

/-! ## A191661.P2650332940135183310

`Δ[Δ[Δ[A000219(n)]]]`
-/

namespace A191661.P2650332940135183310
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191661.P2650332940135183310

/-! ## A191661.P14295548041476568089

`Δ[Δ[Δ[A242641(A058331(n))]]]`
-/

namespace A191661.P14295548041476568089
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A058331 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191661.P14295548041476568089

/-! ## A191661.P16518453148105961332

`Δ[Δ[Δ[A242641(2*(n+1)²)]]]`
-/

namespace A191661.P16518453148105961332
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (2 * (n + 1) ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191661.P16518453148105961332

/-!
# A191662: a(n) = n! / A000034(n-1).

The programs for A191662, the canonical program `A191662.P2264076630088995538` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191662 has offset 1).

The definition of A191662 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191662.P2264076630088995538

`n*(n+1)*a(n-2)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191662

/-- `n*(n+1)*a(n-2)` -/
def P2264076630088995538.Spec : Prop :=
  ∀ n, (P2264076630088995538.a n : ℤ) = A191662 (n + 1)

theorem P2264076630088995538.correct : P2264076630088995538.Spec := by
  intro n
  simp only [A191662, Nat.add_sub_cancel]

end A191662

/-! ## A191662.P1937454759437172249

`A052612(n+1)/2`
-/

namespace A191662.P1937454759437172249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052612 (n + 1) : ℚ) / 2

end

end A191662.P1937454759437172249

namespace A191662

/-- `A052612(n+1)/2` -/
def P1937454759437172249.Spec : Prop :=
  ∀ n, P1937454759437172249.a n = (A191662 (n + 1) : ℚ)

end A191662

/-! ## A191662.P9148230445120030253

`(n+1)!/A000034(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191662.P9148230445120030253
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A191662.P9148230445120030253

namespace A191662

/-- `(n+1)!/A000034(n)` -/
def P9148230445120030253.Spec : Prop :=
  ∀ n, P9148230445120030253.a n = (A191662 (n + 1) : ℚ)

end A191662

/-! ## A191662.P3063156824297361170

`gcd(n+1, ∑[n])*n!`
-/

namespace A191662.P3063156824297361170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j) * Nat.factorial n

end

end A191662.P3063156824297361170

namespace A191662

/-- `gcd(n+1, ∑[n])*n!` -/
def P3063156824297361170.Spec : Prop :=
  ∀ n, (P3063156824297361170.a n : ℤ) = A191662 (n + 1)

end A191662

/-! ## A191662.P2005049012787587851

`lcm(2, n+1)/2*n!`
-/

namespace A191662.P2005049012787587851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 (n + 1) : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A191662.P2005049012787587851

namespace A191662

/-- `lcm(2, n+1)/2*n!` -/
def P2005049012787587851.Spec : Prop :=
  ∀ n, P2005049012787587851.a n = (A191662 (n + 1) : ℚ)

end A191662

/-! ## A191662.P87940454134599301

`2*a(n-2)*∑[n]` with `a(0)=1, a(1)=1`
-/

namespace A191662.P87940454134599301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n a =>
  2 * (a (n - 2) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A191662.P87940454134599301

namespace A191662

/-- `2*a(n-2)*∑[n]` -/
def P87940454134599301.Spec : Prop :=
  ∀ n, (P87940454134599301.a n : ℤ) = A191662 (n + 1)

end A191662

/-! ## A191662.P9203832660781356859

`a(n-1)*A064680(n+1)` with `a(0)=1`
-/

namespace A191662.P9203832660781356859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A064680 (n + 1)

end

end A191662.P9203832660781356859

namespace A191662

/-- `a(n-1)*A064680(n+1)` -/
def P9203832660781356859.Spec : Prop :=
  ∀ n, P9203832660781356859.a n = A191662 (n + 1)

end A191662

/-! ## A191662.P6313880644886124309

`A077012(A084265(n))`
-/

namespace A191662.P6313880644886124309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077012 (A084265 n).toNat

end

end A191662.P6313880644886124309

namespace A191662

/-- `A077012(A084265(n))` -/
def P6313880644886124309.Spec : Prop :=
  ∀ n, P6313880644886124309.a n = A191662 (n + 1)

end A191662

/-! ## A191662.P9587527062126306094

`A123316(A084263(n))`
-/

namespace A191662.P9587527062126306094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123316 (A084263 n).toNat

end

end A191662.P9587527062126306094

namespace A191662

/-- `A123316(A084263(n))` -/
def P9587527062126306094.Spec : Prop :=
  ∀ n, P9587527062126306094.a n = A191662 (n + 1)

end A191662

/-! ## A191662.P3692042518567614467

`A066387(A093005(n+1))`
-/

namespace A191662.P3692042518567614467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066387 (A093005 (n + 1)).toNat

end

end A191662.P3692042518567614467

namespace A191662

/-- `A066387(A093005(n+1))` -/
def P3692042518567614467.Spec : Prop :=
  ∀ n, P3692042518567614467.a n = A191662 (n + 1)

end A191662

/-!
# A191664: Dispersion of A014601 (numbers >2, congruent to 0 or 3 mod 4), by antidiagonals.

The programs for A191664, there is no canonical definition to state claims against.
-/

/-! ## A191664.P4200093949303516662

`or(A127282(n+1), A255555(n+1))`
-/

namespace A191664.P4200093949303516662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A127282 (n + 1)) (A255555 (n + 1))

end

end A191664.P4200093949303516662

/-! ## A191664.P327991953941253356

`A336356(A054392(n))+A255555(n+1)`
-/

namespace A191664.P327991953941253356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336356 (A054392 n).toNat + A255555 (n + 1)

end

end A191664.P327991953941253356

/-! ## A191664.P5528183561355497228

`A255555(n+1)+A217156(A193722(n))`
-/

namespace A191664.P5528183561355497228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255555 (n + 1) + A217156 (A193722 n).toNat

end

end A191664.P5528183561355497228

/-! ## A191664.P6472170540573497410

`or(A102448(A167667(n)), A255555(n+1))`
-/

namespace A191664.P6472170540573497410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A102448 (A167667 n).toNat) (A255555 (n + 1))

end

end A191664.P6472170540573497410

/-! ## A191664.P17247620864942642028

`or(A255555(n+1), A289235(A156616(n)))`
-/

namespace A191664.P17247620864942642028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A255555 (n + 1)) (A289235 (A156616 n).toNat)

end

end A191664.P17247620864942642028

/-!
# A191665: Dispersion of A042963 (numbers >1, congruent to 1 or 2 mod 4), by antidiagonals.

The programs for A191665, there is no canonical definition to state claims against.
-/

/-! ## A191665.P17982655674501857102

`A098003(A191451(n+1))`
-/

namespace A191665.P17982655674501857102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098003 (A191451 (n + 1)).toNat

end

end A191665.P17982655674501857102

/-! ## A191665.P6731774340806580231

`A180200(A220347(n+1)%A198684(n+1))`
-/

namespace A191665.P6731774340806580231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (Int.tmod (A220347 (n + 1)) (A198684 (n + 1))).toNat

end

end A191665.P6731774340806580231

/-! ## A191665.P16517540072018651046

`A056926(A060961(n))*A180200(A220347(n+1))`
-/

namespace A191665.P16517540072018651046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A060961 n).toNat * A180200 (A220347 (n + 1)).toNat

end

end A191665.P16517540072018651046

/-! ## A191665.P14700539207865952437

`A180200(A220347(n+1))+A000038(A059455(n+2))`
-/

namespace A191665.P14700539207865952437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180200 (A220347 (n + 1)).toNat + A000038 (A059455 (n + 2)).toNat

end

end A191665.P14700539207865952437

/-! ## A191665.P12213049689733941036

`A180200(A220347(n+1))%A000040(A058696(n))`
-/

namespace A191665.P12213049689733941036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180200 (A220347 (n + 1)).toNat) (A000040 (A058696 n).toNat)

end

end A191665.P12213049689733941036

/-!
# A191668: Dispersion of A016825 (4k+2, k>0), by antidiagonals.

The programs for A191668, the canonical program `A191668.P15255064753067516664` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191668 has offset 1).

The definition of A191668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191668.P15255064753067516664

`(8+(3*floor((4*(col(n)+1)+1)/3)-2)*4^(row(n)-col(n)+1))/12`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191668

/-- `(8+(3*floor((4*(col(n)+1)+1)/3)-2)*4^(row(n)-col(n)+1))/12` -/
def P15255064753067516664.Spec : Prop :=
  ∀ n, P15255064753067516664.a n = (A191668 (n + 1) : ℚ)

end A191668

/-! ## A191668.P6934801418416764691

`(8+(3*A042965(col(n)+2)-2)*A000302(row(n)-col(n)+1))/12`
-/

namespace A191668.P6934801418416764691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 + (3 * A042965 (SequenceMachineLib.triCol n + 2) - 2) * A000302 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat : ℚ) / 12

end

end A191668.P6934801418416764691

namespace A191668

/-- `(8+(3*A042965(col(n)+2)-2)*A000302(row(n)-col(n)+1))/12` -/
def P6934801418416764691.Spec : Prop :=
  ∀ n, P6934801418416764691.a n = (A191668 (n + 1) : ℚ)

end A191668

/-! ## A191668.P10611575339812055188

`A260596(∑[char[∑[n]]]²-n)`
-/

namespace A191668.P10611575339812055188
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260596 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A191668.P10611575339812055188

namespace A191668

/-- `A260596(∑[char[∑[n]]]²-n)` -/
def P10611575339812055188.Spec : Prop :=
  ∀ n, P10611575339812055188.a n = A191668 (n + 1)

end A191668

/-!
# A191669: Dispersion of A004767 (4k+3, k>=0), by antidiagonals.

The programs for A191669, there is no canonical definition to state claims against.
-/

/-! ## A191669.P7910621404183393301

`round(A347834(∑[char[∑[n]]]²-n)/2)`
-/

namespace A191669.P7910621404183393301
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A347834 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n) : ℚ) / 2)

end

end A191669.P7910621404183393301

/-! ## A191669.P7742266845750291612

`ceil(A347834(A038722(n+1))/2)`
-/

namespace A191669.P7742266845750291612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347834 (A038722 (n + 1)).toNat : ℚ) / 2⌉

end

end A191669.P7742266845750291612

/-! ## A191669.P4895769319415916819

`ceil(A347834(A061579(n)+1)/2)`
-/

namespace A191669.P4895769319415916819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347834 (A061579 n + 1).toNat : ℚ) / 2⌉

end

end A191669.P4895769319415916819

/-! ## A191669.P13805617274193223742

`ceil(A347834(A114327(n)+1+n)/2)`
-/

namespace A191669.P13805617274193223742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347834 (A114327 n + 1 + (n : ℤ)).toNat : ℚ) / 2⌉

end

end A191669.P13805617274193223742

/-! ## A191669.P9641621630509978037

`ceil(A347834(A093995(n+1)-n)/2)`
-/

namespace A191669.P9641621630509978037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A347834 (A093995 (n + 1) - (n : ℤ)).toNat : ℚ) / 2⌉

end

end A191669.P9641621630509978037

/-! ## A191669.P15586110507769613653

`round(A347834(A038722(n+1))%A055237(n)/2)`
-/

namespace A191669.P15586110507769613653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.tmod (A347834 (A038722 (n + 1)).toNat) (A055237 n) : ℚ) / 2)

end

end A191669.P15586110507769613653

/-! ## A191669.P15845268276943580834

`(A007318(∑[n])*A347834(A093995(n+1)-n)+1)/2`
-/

namespace A191669.P15845268276943580834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A347834 (A093995 (n + 1) - (n : ℤ)).toNat + 1 : ℚ) / 2

end

end A191669.P15845268276943580834

/-!
# A191670: Dispersion of A042968 (>1 and congruent to 1 or 2 or 3 mod 4), by antidiagonals.

The programs for A191670, there is no canonical definition to state claims against.
-/

/-! ## A191670.P7204023787262548398

`A367882(A066182(n+1))`
-/

namespace A191670.P7204023787262548398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367882 (A066182 (n + 1)).toNat

end

end A191670.P7204023787262548398

/-! ## A191670.P6114869461122814437

`round(sqrt(A191671(n+1)*A191673(n+1)))`
-/

namespace A191670.P6114869461122814437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A191671 (n + 1) * A191673 (n + 1) : ℝ))

end

end A191670.P6114869461122814437

/-! ## A191670.P8113687729737623999

`A000194(A191671(n+1)*A191673(n+1))`
-/

namespace A191670.P8113687729737623999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A191671 (n + 1) * A191673 (n + 1)).toNat

end

end A191670.P8113687729737623999

/-! ## A191670.P1181454760265922011

`A137734(A191671(n+1)*A191673(n+1))`
-/

namespace A191670.P1181454760265922011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (A191671 (n + 1) * A191673 (n + 1)).toNat

end

end A191670.P1181454760265922011

/-!
# A191671: Dispersion of A004772 (>1 and congruent to 0 or 2 or 3 mod 4), by antidiagonals.

The programs for A191671, there is no canonical definition to state claims against.
-/

/-! ## A191671.P14913469462378082730

`A367882(n)+1`
-/

namespace A191671.P14913469462378082730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367882 n + 1

end

end A191671.P14913469462378082730

/-! ## A191671.P2954626136532288324

`A318578(A054582(n))`
-/

namespace A191671.P2954626136532288324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318578 (A054582 n).toNat

end

end A191671.P2954626136532288324

/-! ## A191671.P14925573414343901595

`A318578(A075300(n)+1)`
-/

namespace A191671.P14925573414343901595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318578 (A075300 n + 1).toNat

end

end A191671.P14925573414343901595

/-! ## A191671.P15229952913825523181

`A318578(A130321(n)*A158405(n+1))`
-/

namespace A191671.P15229952913825523181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318578 (A130321 n * A158405 (n + 1)).toNat

end

end A191671.P15229952913825523181

/-! ## A191671.P15972179132425433535

`A318578(lcm(A130321(n), A158405(n+1)))`
-/

namespace A191671.P15972179132425433535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318578 (Int.lcm (A130321 n) (A158405 (n + 1)))

end

end A191671.P15972179132425433535

/-! ## A191671.P13745776230003903041

`A318578(sqrt(A262616(n))*A158405(n+1))`
-/

namespace A191671.P13745776230003903041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318578 (SequenceMachineLib.roundAway (Real.sqrt (A262616 n : ℝ) * (A158405 (n + 1) : ℝ))).toNat

end

end A191671.P13745776230003903041

/-!
# A191672: Dispersion of A042965 (>1 and congruent to 0 or 1 or 3 mod 4), by antidiagonals.

The programs for A191672, there is no canonical definition to state claims against.
-/

/-! ## A191672.P10143094881639166760

`Δ[∑[n]-A040051(A249027(n+1))]`
-/

namespace A191672.P10143094881639166760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A040051 (A249027 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191672.P10143094881639166760

/-! ## A191672.P14173417943752019578

`A064578(A066182(n+1)%A117075(n+1))`
-/

namespace A191672.P14173417943752019578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064578 (Int.tmod (A066182 (n + 1)) (A117075 (n + 1))).toNat

end

end A191672.P14173417943752019578

/-! ## A191672.P10756948709770912846

`Δ[A079978(A308704(n+1))+∑[n]]`
-/

namespace A191672.P10756948709770912846
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079978 (A308704 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191672.P10756948709770912846

/-! ## A191672.P9832813815097289986

`Δ[A297770(A351013(n+2))%2]+n+1`
-/

namespace A191672.P9832813815097289986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297770 (A351013 (n + 2)).toNat) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) + 1

end

end A191672.P9832813815097289986

/-! ## A191672.P4029935481015196894

`Δ[A325433(A008305(n+1))]+n+1`
-/

namespace A191672.P4029935481015196894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325433 (A008305 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ) + 1

end

end A191672.P4029935481015196894

/-!
# A191673: Dispersion of A004773 (>1 and congruent to 0 or 1 or 2 mod 4), by antidiagonals.

The programs for A191673, there is no canonical definition to state claims against.
-/

/-! ## A191673.P3338180629101124850

`round(sqrt(A191670(n+1)*A191672(n+1)))`
-/

namespace A191673.P3338180629101124850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A191670 (n + 1) * A191672 (n + 1) : ℝ))

end

end A191673.P3338180629101124850

/-! ## A191673.P1009768121424012827

`A000194(A191670(n+1)*A191672(n+1))`
-/

namespace A191673.P1009768121424012827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A191670 (n + 1) * A191672 (n + 1)).toNat

end

end A191673.P1009768121424012827

/-! ## A191673.P11871123150327003420

`∑{e}[A005029(n), A064578(#)]`
-/

namespace A191673.P11871123150327003420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A064578 (Nat.factorization (f1 n).natAbs p)

end

end A191673.P11871123150327003420

/-! ## A191673.P4357920469360002123

`∑{e}[A005015(n), A194982(#)]`
-/

namespace A191673.P4357920469360002123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A194982 (Nat.factorization (f1 n).natAbs p)

end

end A191673.P4357920469360002123

/-!
# A191677: Numbers n such that 1^(n-1)+2^(n-1)+...+n^(n-1) == 0 (mod n).

The programs for A191677, there is no canonical definition to state claims against.
-/

/-! ## A191677.P14917985536969930965

`∪[A121707(n+1), A008574(n)]`
-/

namespace A191677.P14917985536969930965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A191677.P14917985536969930965

/-! ## A191677.P11462687042288831110

`record[A263022(n+2)]`
-/

namespace A191677.P11462687042288831110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191677.P11462687042288831110

/-! ## A191677.P14349667440574602567

`lt[A204187(n+1), 1]+1`
-/

namespace A191677.P14349667440574602567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204187 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A191677.P14349667440574602567

/-! ## A191677.P4700911867054028891

`record[gcd(n+2, A204187(n+2))]`
-/

namespace A191677.P4700911867054028891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A204187 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191677.P4700911867054028891

/-! ## A191677.P8607167235644069815

`A055032(eq[0, A204187(n+1)]+1)`
-/

namespace A191677.P8607167235644069815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A191677.P8607167235644069815

/-! ## A191677.P6606829308662405784

`A263022(lt[n, A263022(n+2)]+2)`
-/

namespace A191677.P6606829308662405784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263022 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263022 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A191677.P6606829308662405784

/-! ## A191677.P6981479149068664011

`record[A000027(n+1)-A204187(n+1)]`
-/

namespace A191677.P6981479149068664011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) - A204187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191677.P6981479149068664011

/-! ## A191677.P13388262433845768028

`record[A055032(n+1)-A204187(n+1)]`
-/

namespace A191677.P13388262433845768028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055032 (n + 1) - A204187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191677.P13388262433845768028

/-! ## A191677.P13163099980041907801

`A055032(eq[n, n*A201560(n+1)]+1)`
-/

namespace A191677.P13163099980041907801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A201560 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055032 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A191677.P13163099980041907801

/-! ## A191677.P6510871126673346433

`eq[A048298(n+1), A204187(A048298(n+1)+n)]`
-/

namespace A191677.P6510871126673346433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204187 (A048298 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A191677.P6510871126673346433

/-! ## A191677.P16873595994704058114

`record[(n+1)/A055023(n+1)-A204187(n+1)]`
-/

namespace A191677.P16873595994704058114
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A055023 (n + 1) : ℚ) - (A204187 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191677.P16873595994704058114

/-!
# A191678: Number of lattice paths from (0,0) to (n,n) using steps (1,0), (1,1), (0,2), (2,2).

The programs for A191678, there is no canonical definition to state claims against.
-/

/-! ## A191678.P8889797267151078946

`A002265(A104191(n)+A008864(n+1))`
-/

namespace A191678.P8889797267151078946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A104191 n + A008864 (n + 1)).toNat

end

end A191678.P8889797267151078946

/-! ## A191678.P14738562968685635995

`A115000(n+5)+A002265(A104191(n))`
-/

namespace A191678.P14738562968685635995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115000 (n + 5) + A002265 (A104191 n).toNat

end

end A191678.P14738562968685635995

/-! ## A191678.P16499885028401953847

`A008611(xor(A003963(n+1), A151162(n)))`
-/

namespace A191678.P16499885028401953847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (Int.xor (A003963 (n + 1)) (A151162 n)).toNat

end

end A191678.P16499885028401953847

/-!
# A191680: Number of compositions of odd natural numbers into 9 parts <= n.

The programs for A191680, the canonical program `A191680.P16764621605857169803` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191680 has offset 0).

The definition of A191680 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191680.P16764621605857169803

`floor(1/2*(n+1)^9)`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191680

/-- `floor(1/2*(n+1)^9)` -/
def P16764621605857169803.Spec : Prop :=
  ∀ n, P16764621605857169803.a n = A191680 n

theorem P16764621605857169803.correct : P16764621605857169803.Spec := by
  intro n
  simp only [A191680]

end A191680

/-! ## A191680.P11312271745799692874

`round(sinh(9*log(n+1)))`
-/

namespace A191680.P11312271745799692874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (9 * Real.log (n + 1 : ℝ)))

end

end A191680.P11312271745799692874

namespace A191680

/-- `round(sinh(9*log(n+1)))` -/
def P11312271745799692874.Spec : Prop :=
  ∀ n, P11312271745799692874.a n = A191680 n

end A191680

/-! ## A191680.P14217268528621797981

`round(cot(2/(n+1)^9))`
-/

namespace A191680.P14217268528621797981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (2 / ((n + 1) ^ 9 : ℚ) : ℝ))

end

end A191680.P14217268528621797981

namespace A191680

/-- `round(cot(2/(n+1)^9))` -/
def P14217268528621797981.Spec : Prop :=
  ∀ n, P14217268528621797981.a n = A191680 n

end A191680

/-! ## A191680.P6849615869766857672

`ceil(A258810(n+1)/2)`
-/

namespace A191680.P6849615869766857672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A258810 (n + 1) : ℚ) / 2⌉

end

end A191680.P6849615869766857672

namespace A191680

/-- `ceil(A258810(n+1)/2)` -/
def P6849615869766857672.Spec : Prop :=
  ∀ n, P6849615869766857672.a n = A191680 n

end A191680

/-! ## A191680.P2571478055139844951

`A168116(n+1)-∑[(n+1)%2]`
-/

namespace A191680.P2571478055139844951
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168116 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A191680.P2571478055139844951

namespace A191680

/-- `A168116(n+1)-∑[(n+1)%2]` -/
def P2571478055139844951.Spec : Prop :=
  ∀ n, P2571478055139844951.a n = A191680 n

end A191680

/-! ## A191680.P10544839589931038250

`A191496(n)-A059841(n)`
-/

namespace A191680.P10544839589931038250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191496 n - A059841 n

end

end A191680.P10544839589931038250

namespace A191680

/-- `A191496(n)-A059841(n)` -/
def P10544839589931038250.Spec : Prop :=
  ∀ n, P10544839589931038250.a n = A191680 n

end A191680

/-! ## A191680.P11167104646173587

`A191496(n)+A191902(n)-A191484(n)`
-/

namespace A191680.P11167104646173587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191496 n + (A191902 n - A191484 n)

end

end A191680.P11167104646173587

namespace A191680

/-- `A191496(n)+A191902(n)-A191484(n)` -/
def P11167104646173587.Spec : Prop :=
  ∀ n, P11167104646173587.a n = A191680 n

end A191680

/-! ## A191680.P10679456329316941602

`A191496(n)-Δ[A191496(n+1)]%3`
-/

namespace A191680.P10679456329316941602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191496 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191496 n - Int.tmod (f1 (n + 1) - f1 n) 3

end

end A191680.P10679456329316941602

namespace A191680

/-- `A191496(n)-Δ[A191496(n+1)]%3` -/
def P10679456329316941602.Spec : Prop :=
  ∀ n, P10679456329316941602.a n = A191680 n

end A191680

/-!
# A191681: a(n) = (9^n - 1)/2.

The programs for A191681, the canonical program `A191681.P8699073646742784318` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191681 has offset 0).

The definition of A191681 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9^n-1)/2` (program `A191681.P12974731174224595993`, by `A191681.P12974731174224595993.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191681.P8699073646742784318

`10*a(n-1)-9*a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191681

/-- `10*a(n-1)-9*a(n-2)` -/
def P8699073646742784318.Spec : Prop :=
  ∀ n, P8699073646742784318.a n = A191681 n

theorem P8699073646742784318.correct : P8699073646742784318.Spec := by
  intro n
  simp only [A191681]

end A191681

/-! ## A191681.P9594203784937603427

`4*A002452(n)`
-/

namespace A191681.P9594203784937603427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002452 n

end

end A191681.P9594203784937603427

namespace A191681

/-- `4*A002452(n)` -/
def P9594203784937603427.Spec : Prop :=
  ∀ n, P9594203784937603427.a n = A191681 n

end A191681

/-! ## A191681.P7393392079188543476

`2*A125857(n+1)`
-/

namespace A191681.P7393392079188543476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A125857 (n + 1)

end

end A191681.P7393392079188543476

namespace A191681

/-- `2*A125857(n+1)` -/
def P7393392079188543476.Spec : Prop :=
  ∀ n, P7393392079188543476.a n = A191681 n

end A191681

/-! ## A191681.P12974731174224595993

`(9^n-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191681.P12974731174224595993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 ^ n : ℤ) - 1 : ℚ) / 2

end

end A191681.P12974731174224595993

namespace A191681

/-- `(9^n-1)/2` -/
def P12974731174224595993.Spec : Prop :=
  ∀ n, P12974731174224595993.a n = (A191681 n : ℚ)

theorem P12974731174224595993.correct : P12974731174224595993.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A191681, Nat.add_sub_cancel, A191681.P12974731174224595993.a, A191681.P8699073646742784318.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A191681, Nat.add_sub_cancel, A191681.P12974731174224595993.a, A191681.P8699073646742784318.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A191681

/-! ## A191681.P5652115178757408035

`ogf(4x/(1-10x+9x^2))`
-/

namespace A191681.P5652115178757408035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -10, 9] n

end

end A191681.P5652115178757408035

namespace A191681

/-- `ogf(4x/(1-10x+9x^2))` -/
def P5652115178757408035.Spec : Prop :=
  ∀ n, P5652115178757408035.a n = A191681 n

end A191681

/-! ## A191681.P4461055004673684067

`9*a(n-1)+4` with `a(0)=0`
-/

namespace A191681.P4461055004673684067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  9 * a (n - 1) + 4

end

end A191681.P4461055004673684067

namespace A191681

/-- `9*a(n-1)+4` -/
def P4461055004673684067.Spec : Prop :=
  ∀ n, (P4461055004673684067.a n : ℤ) = A191681 n

end A191681

/-! ## A191681.P4062873525223712858

`lcm(9, a(n-1))+4` with `a(0)=0`
-/

namespace A191681.P4062873525223712858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm 9 (a (n - 1)) + 4

end

end A191681.P4062873525223712858

namespace A191681

/-- `lcm(9, a(n-1))+4` -/
def P4062873525223712858.Spec : Prop :=
  ∀ n, (P4062873525223712858.a n : ℤ) = A191681 n

end A191681

/-! ## A191681.P5408853929688821015

`∑[9*a(n-1)]` with `a(0)=0, a(1)=4`
-/

namespace A191681.P5408853929688821015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  9 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191681.P5408853929688821015

namespace A191681

/-- `∑[9*a(n-1)]` -/
def P5408853929688821015.Spec : Prop :=
  ∀ n, (P5408853929688821015.a n : ℤ) = A191681 n

end A191681

/-! ## A191681.P8482304730646477738

`xor(1, ceil(Δ[(3^n/4)²]))`
-/

namespace A191681.P8482304730646477738
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 ^ n : ℚ) / 4) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈f1 (n + 1) - f1 n⌉

end

end A191681.P8482304730646477738

namespace A191681

/-- `xor(1, ceil(Δ[(3^n/4)²]))` -/
def P8482304730646477738.Spec : Prop :=
  ∀ n, P8482304730646477738.a n = A191681 n

end A191681

/-! ## A191681.P3972671502031073374

`lcm(3^n+1, 3^n-1)`
-/

namespace A191681.P3972671502031073374
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 ^ n + 1 : ℤ) ((3 ^ n : ℤ) - 1)

end

end A191681.P3972671502031073374

namespace A191681

/-- `lcm(3^n+1, 3^n-1)` -/
def P3972671502031073374.Spec : Prop :=
  ∀ n, (P3972671502031073374.a n : ℤ) = A191681 n

end A191681

/-! ## A191681.P13718232821874961230

`record[-xor(1, 3*a(n-1))]` with `a(0)=0`
-/

namespace A191681.P13718232821874961230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  -Int.xor 1 (3 * f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191681.P13718232821874961230

namespace A191681

/-- `record[-xor(1, 3*a(n-1))]` -/
def P13718232821874961230.Spec : Prop :=
  ∀ n, P13718232821874961230.a n = A191681 n

end A191681

/-! ## A191681.P158930076769401359

`a(n-1)/(1/3)²+4` with `a(0)=0`
-/

namespace A191681.P158930076769401359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 + 4

end

end A191681.P158930076769401359

namespace A191681

/-- `a(n-1)/(1/3)²+4` -/
def P158930076769401359.Spec : Prop :=
  ∀ n, P158930076769401359.a n = (A191681 n : ℚ)

end A191681

/-! ## A191681.P16711162032540340364

`∑[a(n-1)/(1/3)²]` with `a(0)=0, a(1)=4`
-/

namespace A191681.P16711162032540340364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0, 4] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191681.P16711162032540340364

namespace A191681

/-- `∑[a(n-1)/(1/3)²]` -/
def P16711162032540340364.Spec : Prop :=
  ∀ n, P16711162032540340364.a n = (A191681 n : ℚ)

end A191681

/-! ## A191681.P4766433705908143909

`a(n-1)+Δ[3^(n-1)]²` with `a(0)=0`
-/

namespace A191681.P4766433705908143909
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (f1 (n + 1) - f1 n) ^ 2

end

end A191681.P4766433705908143909

namespace A191681

/-- `a(n-1)+Δ[3^(n-1)]²` -/
def P4766433705908143909.Spec : Prop :=
  ∀ n, P4766433705908143909.a n = (A191681 n : ℚ)

end A191681

/-! ## A191681.P10010938424603620712

`4-(a(n-1)-10*a(n-1))` with `a(0)=0`
-/

namespace A191681.P10010938424603620712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  4 - (a (n - 1) - 10 * a (n - 1))

end

end A191681.P10010938424603620712

namespace A191681

/-- `4-(a(n-1)-10*a(n-1))` -/
def P10010938424603620712.Spec : Prop :=
  ∀ n, P10010938424603620712.a n = A191681 n

end A191681

/-! ## A191681.P5836582389020896870

`Δ[A002754(n)]`
-/

namespace A191681.P5836582389020896870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002754 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191681.P5836582389020896870

namespace A191681

/-- `Δ[A002754(n)]` -/
def P5836582389020896870.Spec : Prop :=
  ∀ n, P5836582389020896870.a n = A191681 n

end A191681

/-! ## A191681.P11319089270278073595

`record[A076040(n)]`
-/

namespace A191681.P11319089270278073595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191681.P11319089270278073595

namespace A191681

/-- `record[A076040(n)]` -/
def P11319089270278073595.Spec : Prop :=
  ∀ n, P11319089270278073595.a n = A191681 n

end A191681

/-! ## A191681.P17303255667222677511

`A083884(n)-1`
-/

namespace A191681.P17303255667222677511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083884 n - 1

end

end A191681.P17303255667222677511

namespace A191681

/-- `A083884(n)-1` -/
def P17303255667222677511.Spec : Prop :=
  ∀ n, P17303255667222677511.a n = A191681 n

end A191681

/-! ## A191681.P10242499067561191038

`A003462(2*n)`
-/

namespace A191681.P10242499067561191038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 (2 * n)

end

end A191681.P10242499067561191038

namespace A191681

/-- `A003462(2*n)` -/
def P10242499067561191038.Spec : Prop :=
  ∀ n, P10242499067561191038.a n = A191681 n

end A191681

/-! ## A191681.P5688717956902774742

`A076040(2*n)`
-/

namespace A191681.P5688717956902774742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076040 (2 * n)

end

end A191681.P5688717956902774742

namespace A191681

/-- `A076040(2*n)` -/
def P5688717956902774742.Spec : Prop :=
  ∀ n, P5688717956902774742.a n = A191681 n

end A191681

/-!
# A191682: Twice A113473.

The programs for A191682, the canonical program `A191682.P14682788425840518512` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191682 has offset 1).

The definition of A191682 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191682.P5335992095420358378

`2*ceil(log2(n+2))`
-/

namespace A191682.P5335992095420358378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌈Real.logb 2 (n + 2 : ℝ)⌉

end

end A191682.P5335992095420358378

namespace A191682

/-- `2*ceil(log2(n+2))` -/
def P5335992095420358378.Spec : Prop :=
  ∀ n, P5335992095420358378.a n = A191682 (n + 1)

end A191682

/-! ## A191682.P3569777772341117563

`a(floor(sinh(log(n))))+2` with `a(0)=2`
-/

namespace A191682.P3569777772341117563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ⌊Real.sinh (Real.log (n : ℝ))⌋.toNat + 2

end

end A191682.P3569777772341117563

namespace A191682

/-- `a(floor(sinh(log(n))))+2` -/
def P3569777772341117563.Spec : Prop :=
  ∀ n, (P3569777772341117563.a n : ℤ) = A191682 (n + 1)

end A191682

/-! ## A191682.P15493396125824846226

`∑[round(acot(and(n, n+1)))]`
-/

namespace A191682.P15493396125824846226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (Nat.land n (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191682.P15493396125824846226

namespace A191682

/-- `∑[round(acot(and(n, n+1)))]` -/
def P15493396125824846226.Spec : Prop :=
  ∀ n, P15493396125824846226.a n = A191682 (n + 1)

end A191682

/-! ## A191682.P10089997040552623517

`val(4^ceil(log2(n+2)), 2)`
-/

namespace A191682.P10089997040552623517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.roundAway ((4 : ℚ) ^ (⌈Real.logb 2 (n + 2 : ℝ)⌉ : ℤ))).toNat 2

end

end A191682.P10089997040552623517

namespace A191682

/-- `val(4^ceil(log2(n+2)), 2)` -/
def P10089997040552623517.Spec : Prop :=
  ∀ n, (P10089997040552623517.a n : ℤ) = A191682 (n + 1)

end A191682

/-! ## A191682.P14682788425840518512

`a(floor((n-1)/2))+2` with `a(0)=2`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191682

/-- `a(floor((n-1)/2))+2` -/
def P14682788425840518512.Spec : Prop :=
  ∀ n, (P14682788425840518512.a n : ℤ) = A191682 (n + 1)

theorem P14682788425840518512.correct : P14682788425840518512.Spec := by
  intro n
  simp only [A191682, Nat.add_sub_cancel]

end A191682

/-! ## A191682.P5635098479058619287

`or(1, floor(log2((n+1)²)))+1`
-/

namespace A191682.P5635098479058619287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (Nat.log 2 ((n + 1) ^ 2)) + 1

end

end A191682.P5635098479058619287

namespace A191682

/-- `or(1, floor(log2((n+1)²)))+1` -/
def P5635098479058619287.Spec : Prop :=
  ∀ n, (P5635098479058619287.a n : ℤ) = A191682 (n + 1)

end A191682

/-! ## A191682.P7530699639618318995

`∑[C(2, and(n, n+1)+1)]`
-/

namespace A191682.P7530699639618318995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land n (n + 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191682.P7530699639618318995

namespace A191682

/-- `∑[C(2, and(n, n+1)+1)]` -/
def P7530699639618318995.Spec : Prop :=
  ∀ n, (P7530699639618318995.a n : ℤ) = A191682 (n + 1)

end A191682

/-! ## A191682.P4277395817592800970

`∑[2-2%∏{p}[n+1, #]]`
-/

namespace A191682.P4277395817592800970
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ((2 % (∏ p ∈ Nat.primeFactors (f2 n), p) : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191682.P4277395817592800970

namespace A191682

/-- `∑[2-2%∏{p}[n+1, #]]` -/
def P4277395817592800970.Spec : Prop :=
  ∀ n, P4277395817592800970.a n = A191682 (n + 1)

end A191682

/-! ## A191682.P15469952143091229013

`∑[2*∏{p}[n+1, val(#, 2)]]`
-/

namespace A191682.P15469952143091229013
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.valuation p 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191682.P15469952143091229013

namespace A191682

/-- `∑[2*∏{p}[n+1, val(#, 2)]]` -/
def P15469952143091229013.Spec : Prop :=
  ∀ n, (P15469952143091229013.a n : ℤ) = A191682 (n + 1)

end A191682

/-! ## A191682.P5266122296179505971

`∑[2*C(2, ∑{p}[n+1, #])]`
-/

namespace A191682.P5266122296179505971
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191682.P5266122296179505971

namespace A191682

/-- `∑[2*C(2, ∑{p}[n+1, #])]` -/
def P5266122296179505971.Spec : Prop :=
  ∀ n, (P5266122296179505971.a n : ℤ) = A191682 (n + 1)

end A191682

/-! ## A191682.P14449298755328854339

`∑[2*∏{p}[n+1, C(2, #)]]`
-/

namespace A191682.P14449298755328854339
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose 2 p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191682.P14449298755328854339

namespace A191682

/-- `∑[2*∏{p}[n+1, C(2, #)]]` -/
def P14449298755328854339.Spec : Prop :=
  ∀ n, (P14449298755328854339.a n : ℤ) = A191682 (n + 1)

end A191682

/-! ## A191682.P4533495326538643631

`∑[C(2, ∏{p}[n+1, C(#, 2)])]`
-/

namespace A191682.P4533495326538643631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (∏ p ∈ Nat.primeFactors (f2 n), Nat.choose p 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191682.P4533495326538643631

namespace A191682

/-- `∑[C(2, ∏{p}[n+1, C(#, 2)])]` -/
def P4533495326538643631.Spec : Prop :=
  ∀ n, (P4533495326538643631.a n : ℤ) = A191682 (n + 1)

end A191682

/-! ## A191682.P17548484255869798044

`∑[floor(2/(and(n, n+1)+1))]`
-/

namespace A191682.P17548484255869798044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (Nat.land n (n + 1) + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191682.P17548484255869798044

namespace A191682

/-- `∑[floor(2/(and(n, n+1)+1))]` -/
def P17548484255869798044.Spec : Prop :=
  ∀ n, P17548484255869798044.a n = A191682 (n + 1)

end A191682

/-! ## A191682.P4264896803029100147

`floor(a(floor(n/(1/n+2))))+2` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A191682.P4264896803029100147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  a ⌊(n : ℚ) / (1 / (n : ℚ) + 2)⌋.toNat + 2

end

end A191682.P4264896803029100147

namespace A191682

/-- `floor(a(floor(n/(1/n+2))))+2` -/
def P4264896803029100147.Spec : Prop :=
  ∀ n, (P4264896803029100147.a n : ℤ) = A191682 (n + 1)

end A191682

/-! ## A191682.P3715062250594474577

`∑[2*A036987(n)]`
-/

namespace A191682.P3715062250594474577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036987 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191682.P3715062250594474577

namespace A191682

/-- `∑[2*A036987(n)]` -/
def P3715062250594474577.Spec : Prop :=
  ∀ n, P3715062250594474577.a n = A191682 (n + 1)

end A191682

/-! ## A191682.P12135308098697067455

`Δ[2*A083652(n)]`
-/

namespace A191682.P12135308098697067455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A083652 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191682.P12135308098697067455

namespace A191682

/-- `Δ[2*A083652(n)]` -/
def P12135308098697067455.Spec : Prop :=
  ∀ n, P12135308098697067455.a n = A191682 (n + 1)

end A191682

/-! ## A191682.P14069096200699781129

`A129972(n+1)+1`
-/

namespace A191682.P14069096200699781129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129972 (n + 1) + 1

end

end A191682.P14069096200699781129

namespace A191682

/-- `A129972(n+1)+1` -/
def P14069096200699781129.Spec : Prop :=
  ∀ n, P14069096200699781129.a n = A191682 (n + 1)

end A191682

/-! ## A191682.P17638224668676708530

`floor(log2(A264618(n+1)))`
-/

namespace A191682.P17638224668676708530
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A264618 (n + 1)).toNat

end

end A191682.P17638224668676708530

namespace A191682

/-- `floor(log2(A264618(n+1)))` -/
def P17638224668676708530.Spec : Prop :=
  ∀ n, (P17638224668676708530.a n : ℤ) = A191682 (n + 1)

end A191682

/-! ## A191682.P9583803892833828688

`floor(log2(A264619(n+1)))`
-/

namespace A191682.P9583803892833828688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A264619 (n + 1)).toNat

end

end A191682.P9583803892833828688

namespace A191682

/-- `floor(log2(A264619(n+1)))` -/
def P9583803892833828688.Spec : Prop :=
  ∀ n, (P9583803892833828688.a n : ℤ) = A191682 (n + 1)

end A191682

/-! ## A191682.P15900037827708480967

`ceil(log2(A001196(n+1)))`
-/

namespace A191682.P15900037827708480967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A001196 (n + 1) : ℝ)⌉

end

end A191682.P15900037827708480967

namespace A191682

/-- `ceil(log2(A001196(n+1)))` -/
def P15900037827708480967.Spec : Prop :=
  ∀ n, P15900037827708480967.a n = A191682 (n + 1)

end A191682

/-!
# A191683: Smallest representative squarefree composite n with prescribed number of prime factors and prescribed, prime arithmetic average of these factors.

The programs for A191683, there is no canonical definition to state claims against.
-/

/-! ## A191683.P8027336620080018437

`∩[A070006(n+1), A120993(n+1)]`
-/

namespace A191683.P8027336620080018437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070006 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191683.P8027336620080018437

/-! ## A191683.P11889573939629324801

`∩[A120993(n+1), A134344(n+1)]`
-/

namespace A191683.P11889573939629324801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191683.P11889573939629324801

/-! ## A191683.P8945377722698136606

`∩[A120993(n+1), A187073(n+1)]`
-/

namespace A191683.P8945377722698136606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191683.P8945377722698136606

/-! ## A191683.P14218028696785274516

`∩[A114985(n+1), A243128(n+1)]`
-/

namespace A191683.P14218028696785274516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114985 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243128 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191683.P14218028696785274516

/-! ## A191683.P507160060523786458

`∩[A187073(n+1), A189302(n+1)]`
-/

namespace A191683.P507160060523786458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191683.P507160060523786458

/-!
# A191684: Number of lattice paths from (0,0) to (n,n) using steps (0,1), (0,2), (1,0), (2,2).

The programs for A191684, there is no canonical definition to state claims against.
-/

/-! ## A191684.P16792907978581764988

`A349427(n)+A270488(A299944(n+1))`
-/

namespace A191684.P16792907978581764988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349427 n + A270488 (A299944 (n + 1)).toNat

end

end A191684.P16792907978581764988

/-!
# A191685: Eighth diagonal a(n) = s(n,n-7) of the unsigned Stirling numbers of the first kind with n>7.

The programs for A191685, there is no canonical definition to state claims against.
-/

/-! ## A191685.P14226373542861333316

`∑[(n+7)*A112002(n+1)]`
-/

namespace A191685.P14226373542861333316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A112002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191685.P14226373542861333316

/-! ## A191685.P17272487056372008174

`A094638(A051936(n+9)-2*n)`
-/

namespace A191685.P17272487056372008174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094638 (A051936 (n + 9) - (2 * n : ℤ)).toNat

end

end A191685.P17272487056372008174

/-! ## A191685.P17550876236488921737

`A132393(A155212(n+5))`
-/

namespace A191685.P17550876236488921737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A155212 (n + 5)).toNat

end

end A191685.P17550876236488921737

/-! ## A191685.P14116316716281922886

`A130534(eq[7, A025581(n)])`
-/

namespace A191685.P14116316716281922886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191685.P14116316716281922886

/-! ## A191685.P677088850952197576

`A130534(eq[15, A099375(n)])`
-/

namespace A191685.P677088850952197576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191685.P677088850952197576

/-! ## A191685.P8853408509996853451

`A130534(eq[8, A004736(n+1)])`
-/

namespace A191685.P8853408509996853451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A191685.P8853408509996853451

/-! ## A191685.P1057617221576539759

`A028421(eq[7, A025581(n)])/(n+1)`
-/

namespace A191685.P1057617221576539759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028421 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / (n + 1 : ℚ)

end

end A191685.P1057617221576539759

/-!
# A191686: a(n) = n^(n-1) - (n-1)^(n-1) - ... - 2^(n-1) - 1^(n-1).

The programs for A191686, there is no canonical definition to state claims against.
-/

/-! ## A191686.P3496298402879454299

`2*A000169(n+1)-A076015(n+1)`
-/

namespace A191686.P3496298402879454299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000169 (n + 1) - A076015 (n + 1)

end

end A191686.P3496298402879454299

/-! ## A191686.P12897105141714676957

`A000169(n+1)-A215083(record[A061579(n)])`
-/

namespace A191686.P12897105141714676957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) - A215083 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191686.P12897105141714676957

/-! ## A191686.P2194660828183465803

`A000169(n+1)-A215078(A000096(n))`
-/

namespace A191686.P2194660828183465803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) - A215078 (A000096 n).toNat

end

end A191686.P2194660828183465803

/-! ## A191686.P10725475169852095835

`A000169(n+1)-A215078(record[A061579(n)])`
-/

namespace A191686.P10725475169852095835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) - A215078 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A191686.P10725475169852095835

/-! ## A191686.P16403490894876533113

`A000169(n+1)-A103438(A046092(n))`
-/

namespace A191686.P16403490894876533113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000169 (n + 1) - A103438 (A046092 n).toNat

end

end A191686.P16403490894876533113

/-!
# A191687: Table T(n,k) = ceiling((1/2)*((k+1)^n+(1+(-1)^k)/2)) read by antidiagonals.

The programs for A191687, the canonical program `A191687.P10494467792192809389` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191687 has offset 0).

The definition of A191687 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ceil(1/2*(col(n)+1)^(row(n)-col(n)))` (program `A191687.P10494467792192809389`, by `A191687.P10494467792192809389.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191687.P10494467792192809389

`ceil(1/2*(col(n)+1)^(row(n)-col(n)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191687

/-- `ceil(1/2*(col(n)+1)^(row(n)-col(n)))` -/
def P10494467792192809389.Spec : Prop :=
  ∀ n, P10494467792192809389.a n = A191687 n

theorem P10494467792192809389.correct : P10494467792192809389.Spec := by
  intro n
  simp only [A191687]

end A191687

/-! ## A191687.P766463956661026845

`ceil(1/2*((col(n)+1)^(row(n)-col(n))+1+-1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191687.P766463956661026845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 : ℚ) / 2 * ((SequenceMachineLib.triCol n + 1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) + ((1 : ℤ) + (-1) : ℚ))⌉

end

end A191687.P766463956661026845

namespace A191687

/-- `ceil(1/2*((col(n)+1)^(row(n)-col(n))+1+-1))` -/
def P766463956661026845.Spec : Prop :=
  ∀ n, P766463956661026845.a n = A191687 n

theorem P766463956661026845.correct : P766463956661026845.Spec := by
  intro n
  simp only [A191687, Nat.add_sub_cancel, A191687.P766463956661026845.a, A191687.P10494467792192809389.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A191687

/-! ## A191687.P3037374650284129987

`ceil(1/2*((col(n)+1)^(row(n)-col(n))+(1+(-1)^col(n))/2))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A191687.P3037374650284129987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(1 : ℚ) / 2 * ((SequenceMachineLib.triCol n + 1 : ℚ) ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ) + (1 + (-1) ^ SequenceMachineLib.triCol n : ℚ) / 2)⌉

end

end A191687.P3037374650284129987

namespace A191687

/-- `ceil(1/2*((col(n)+1)^(row(n)-col(n))+(1+(-1)^col(n))/2))` -/
def P3037374650284129987.Spec : Prop :=
  ∀ n, P3037374650284129987.a n = A191687 n

end A191687

/-! ## A191687.P8080504616464100748

`A192396(n)+A070909(n)`
-/

namespace A191687.P8080504616464100748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192396 n + A070909 n

end

end A191687.P8080504616464100748

namespace A191687

/-- `A192396(n)+A070909(n)` -/
def P8080504616464100748.Spec : Prop :=
  ∀ n, P8080504616464100748.a n = A191687 n

end A191687

/-! ## A191687.P1182781094059750201

`A009998(n)-A192396(n)`
-/

namespace A191687.P1182781094059750201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009998 n - A192396 n

end

end A191687.P1182781094059750201

namespace A191687

/-- `A009998(n)-A192396(n)` -/
def P1182781094059750201.Spec : Prop :=
  ∀ n, P1182781094059750201.a n = A191687 n

end A191687

/-! ## A191687.P9477218328486842864

`A000027(ceil(A009998(n)/2))`
-/

namespace A191687.P9477218328486842864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌈(A009998 n : ℚ) / 2⌉.toNat

end

end A191687.P9477218328486842864

namespace A191687

/-- `A000027(ceil(A009998(n)/2))` -/
def P9477218328486842864.Spec : Prop :=
  ∀ n, P9477218328486842864.a n = A191687 n

end A191687

/-! ## A191687.P1270551297371657428

`A065033(A009998(n))`
-/

namespace A191687.P1270551297371657428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A009998 n).toNat

end

end A191687.P1270551297371657428

namespace A191687

/-- `A065033(A009998(n))` -/
def P1270551297371657428.Spec : Prop :=
  ∀ n, P1270551297371657428.a n = A191687 n

end A191687

/-! ## A191687.P8771568179431735484

`A004526(A009998(n)+1)`
-/

namespace A191687.P8771568179431735484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A009998 n + 1).toNat

end

end A191687.P8771568179431735484

namespace A191687

/-- `A004526(A009998(n)+1)` -/
def P8771568179431735484.Spec : Prop :=
  ∀ n, P8771568179431735484.a n = A191687 n

end A191687

/-!
# A191688: E.g.f. 1/(1-sin(x)^3).

The programs for A191688, there is no canonical definition to state claims against.
-/

/-! ## A191688.P8187036368181724293

`A131561(A000831(n))*A375561(n)`
-/

namespace A191688.P8187036368181724293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131561 (A000831 n).toNat * A375561 n

end

end A191688.P8187036368181724293

/-! ## A191688.P13532959784151042931

`A375561(n)/A165586(A349311(n))`
-/

namespace A191688.P13532959784151042931
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375561 n : ℚ) / (A165586 (A349311 n).toNat : ℚ)

end

end A191688.P13532959784151042931

/-! ## A191688.P7196704945516005452

`A375588(n)/A165586(A349311(n))`
-/

namespace A191688.P7196704945516005452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A375588 n : ℚ) / (A165586 (A349311 n).toNat : ℚ)

end

end A191688.P7196704945516005452

/-!
# A191690: a(n) = n^n-n^(n-1)-n^(n-2)-...-n^2-n-1.

The programs for A191690, there is no canonical definition to state claims against.
-/

/-! ## A191690.P2860579457489241180

`A117667(n+1)-1`
-/

namespace A191690.P2860579457489241180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117667 (n + 1) - 1

end

end A191690.P2860579457489241180

/-! ## A191690.P17155517368272465568

`(n+1)^(n+1)-A023037(n+1)`
-/

namespace A191690.P17155517368272465568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ (n + 1) : ℤ) - A023037 (n + 1)

end

end A191690.P17155517368272465568

/-! ## A191690.P4137916387534075900

`(n-1)*A023037(n+1)+1`
-/

namespace A191690.P4137916387534075900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A023037 (n + 1) + 1

end

end A191690.P4137916387534075900

/-! ## A191690.P1065655121159248583

`n/(n+1)*A062813(n+1)`
-/

namespace A191690.P1065655121159248583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (n + 1 : ℚ) * (A062813 (n + 1) : ℚ)

end

end A191690.P1065655121159248583

/-! ## A191690.P10612648154709788511

`n*A051846(A028310(n))`
-/

namespace A191690.P10612648154709788511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A051846 (A028310 n).toNat

end

end A191690.P10612648154709788511

/-! ## A191690.P6353146688064072370

`A134824(n+2)+A117667(n+1)`
-/

namespace A191690.P6353146688064072370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A117667 (n + 1)

end

end A191690.P6353146688064072370

/-! ## A191690.P1459393086721257254

`A014566(n+1)-(A023037(n+1)+1)`
-/

namespace A191690.P1459393086721257254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014566 (n + 1) - (A023037 (n + 1) + 1)

end

end A191690.P1459393086721257254

/-! ## A191690.P1165921650906172265

`2*A000312(n+1)-A031973(n+1)`
-/

namespace A191690.P1165921650906172265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000312 (n + 1) - A031973 (n + 1)

end

end A191690.P1165921650906172265

/-! ## A191690.P8110540064564493827

`n*A000169(n+1)-A060072(n+1)`
-/

namespace A191690.P8110540064564493827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A000169 (n + 1) - A060072 (n + 1)

end

end A191690.P8110540064564493827

/-! ## A191690.P9352024586782230952

`n*(A068475(n+1)-A000312(n+1))`
-/

namespace A191690.P9352024586782230952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A068475 (n + 1) - A000312 (n + 1))

end

end A191690.P9352024586782230952

/-!
# A191692: [(1-e^n)/(1-e*n)], where [ ]=floor.

The programs for A191692, there is no canonical definition to state claims against.
-/

/-! ## A191692.P12064308942302690927

`A254011(A048770(n)+11)`
-/

namespace A191692.P12064308942302690927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254011 (A048770 n + 11).toNat

end

end A191692.P12064308942302690927

/-! ## A191692.P18179861719800332325

`A185283(ceil(2^(n-1))*A000669(n+1))`
-/

namespace A191692.P18179861719800332325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * A000669 (n + 1)).toNat

end

end A191692.P18179861719800332325

/-! ## A191692.P15913391527213290514

`A001462(A137745(n+1)+A002212(n))`
-/

namespace A191692.P15913391527213290514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A137745 (n + 1) + A002212 n).toNat

end

end A191692.P15913391527213290514

/-! ## A191692.P14245365371955068342

`A185283(A000669(n+1)*A011782(n))`
-/

namespace A191692.P14245365371955068342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185283 (A000669 (n + 1) * A011782 n).toNat

end

end A191692.P14245365371955068342

/-! ## A191692.P10083696458630785744

`A005117(A003008(n+1))-A326456(2*(n+2))`
-/

namespace A191692.P10083696458630785744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A003008 (n + 1)).toNat - A326456 (2 * (n + 2))

end

end A191692.P10083696458630785744

/-!
# A191693: [(1+e^n)/(1+e*n)], where [ ]=floor.

The programs for A191693, the canonical program `A191693.P119415532225289215` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191693 has offset 1).

The definition of A191693 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191693.P119415532225289215

`floor((1+e^(n+1))/(1+e*(n+1)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191693

/-- `floor((1+e^(n+1))/(1+e*(n+1)))` -/
def P119415532225289215.Spec : Prop :=
  ∀ n, P119415532225289215.a n = A191693 (n + 1)

theorem P119415532225289215.correct : P119415532225289215.Spec := by
  intro n
  simp only [A191693, Nat.add_sub_cancel]

end A191693

/-! ## A191693.P7786985718965748980

`A238436(n)-A006926(A290995(n))`
-/

namespace A191693.P7786985718965748980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238436 n - A006926 (A290995 n).toNat

end

end A191693.P7786985718965748980

namespace A191693

/-- `A238436(n)-A006926(A290995(n))` -/
def P7786985718965748980.Spec : Prop :=
  ∀ n, P7786985718965748980.a n = A191693 (n + 1)

end A191693

/-! ## A191693.P14202548665753880904

`A238436(n)-A249344(A037278(n+1))`
-/

namespace A191693.P14202548665753880904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238436 n - A249344 (A037278 (n + 1)).toNat

end

end A191693.P14202548665753880904

namespace A191693

/-- `A238436(n)-A249344(A037278(n+1))` -/
def P14202548665753880904.Spec : Prop :=
  ∀ n, P14202548665753880904.a n = A191693 (n + 1)

end A191693

/-! ## A191693.P11082968738502306582

`A238436(n)-A083025(A323930(n+1))`
-/

namespace A191693.P11082968738502306582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238436 n - A083025 (A323930 (n + 1)).toNat

end

end A191693.P11082968738502306582

namespace A191693

/-- `A238436(n)-A083025(A323930(n+1))` -/
def P11082968738502306582.Spec : Prop :=
  ∀ n, P11082968738502306582.a n = A191693 (n + 1)

end A191693

/-! ## A191693.P10580712837508588408

`A238436(n)-A380399(A358334(2*n+1))`
-/

namespace A191693.P10580712837508588408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238436 n - A380399 (A358334 (2 * n + 1)).toNat

end

end A191693.P10580712837508588408

namespace A191693

/-- `A238436(n)-A380399(A358334(2*n+1))` -/
def P10580712837508588408.Spec : Prop :=
  ∀ n, P10580712837508588408.a n = A191693 (n + 1)

end A191693

/-!
# A191694: a(n) = floor((3^n - 2^n)/n).

The programs for A191694, the canonical program `A191694.P18015504464666419477` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191694 has offset 1).

The definition of A191694 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((3^(n+1)-2^(n+1))/(n+1))` (program `A191694.P18015504464666419477`, by `A191694.P18015504464666419477.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191694.P18015504464666419477

`floor((3^(n+1)-2^(n+1))/(n+1))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191694

/-- `floor((3^(n+1)-2^(n+1))/(n+1))` -/
def P18015504464666419477.Spec : Prop :=
  ∀ n, P18015504464666419477.a n = A191694 (n + 1)

theorem P18015504464666419477.correct : P18015504464666419477.Spec := by
  intro n
  simp only [A191694, Nat.add_sub_cancel]

end A191694

/-! ## A191694.P15782952258291390972

`round(A094616(n)/(2*(n+1)))`
-/

namespace A191694.P15782952258291390972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A094616 n : ℚ) / (2 * (n + 1) : ℚ))

end

end A191694.P15782952258291390972

namespace A191694

/-- `round(A094616(n)/(2*(n+1)))` -/
def P15782952258291390972.Spec : Prop :=
  ∀ n, P15782952258291390972.a n = A191694 (n + 1)

end A191694

/-! ## A191694.P9234332987659467993

`record[floor(A193857(n)/A193862(n))]`
-/

namespace A191694.P9234332987659467993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193857 n : ℚ) / (A193862 n : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191694.P9234332987659467993

namespace A191694

/-- `record[floor(A193857(n)/A193862(n))]` -/
def P9234332987659467993.Spec : Prop :=
  ∀ n, P9234332987659467993.a n = A191694 (n + 1)

end A191694

/-! ## A191694.P6828615379815767103

`record[floor(A193856(n)/A115068(n+1))]`
-/

namespace A191694.P6828615379815767103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193856 n : ℚ) / (A115068 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191694.P6828615379815767103

namespace A191694

/-- `record[floor(A193856(n)/A115068(n+1))]` -/
def P6828615379815767103.Spec : Prop :=
  ∀ n, P6828615379815767103.a n = A191694 (n + 1)

end A191694

/-! ## A191694.P16648138401387037028

`record[floor(A193860(n)/A115068(n+1))]`
-/

namespace A191694.P16648138401387037028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193860 n : ℚ) / (A115068 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191694.P16648138401387037028

namespace A191694

/-- `record[floor(A193860(n)/A115068(n+1))]` -/
def P16648138401387037028.Spec : Prop :=
  ∀ n, P16648138401387037028.a n = A191694 (n + 1)

end A191694

/-!
# A191695: a(n) = floor((5^n)/(3^n - 2^n)).

The programs for A191695, the canonical program `A191695.P9122011329277189982` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191695 has offset 1).

The definition of A191695 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5^(n+1)/(3^(n+1)-2^(n+1)))` (program `A191695.P9122011329277189982`, by `A191695.P9122011329277189982.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191695.P9122011329277189982

`floor(5^(n+1)/(3^(n+1)-2^(n+1)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191695

/-- `floor(5^(n+1)/(3^(n+1)-2^(n+1)))` -/
def P9122011329277189982.Spec : Prop :=
  ∀ n, P9122011329277189982.a n = A191695 (n + 1)

theorem P9122011329277189982.correct : P9122011329277189982.Spec := by
  intro n
  simp only [A191695, Nat.add_sub_cancel]

end A191695

/-! ## A191695.P7068194857000068282

`A002024(∑[A094982(n)]+10)`
-/

namespace A191695.P7068194857000068282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094982 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j + 10).toNat

end

end A191695.P7068194857000068282

namespace A191695

/-- `A002024(∑[A094982(n)]+10)` -/
def P7068194857000068282.Spec : Prop :=
  ∀ n, P7068194857000068282.a n = A191695 (n + 1)

end A191695

/-! ## A191695.P12736229583600443363

`A103128(A180224(n+1)+12)`
-/

namespace A191695.P12736229583600443363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A180224 (n + 1) + 12).toNat

end

end A191695.P12736229583600443363

namespace A191695

/-- `A103128(A180224(n+1)+12)` -/
def P12736229583600443363.Spec : Prop :=
  ∀ n, P12736229583600443363.a n = A191695 (n + 1)

end A191695

/-!
# A191696: a(n) = floor((5^n)/(3^n + 2^n)).

The programs for A191696, the canonical program `A191696.P18391728392533928109` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191696 has offset 1).

The definition of A191696 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(5^(n+1)/(3^(n+1)+2^(n+1)))` (program `A191696.P18391728392533928109`, by `A191696.P18391728392533928109.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191696.P18391728392533928109

`floor(5^(n+1)/(3^(n+1)+2^(n+1)))`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191696

/-- `floor(5^(n+1)/(3^(n+1)+2^(n+1)))` -/
def P18391728392533928109.Spec : Prop :=
  ∀ n, P18391728392533928109.a n = A191696 (n + 1)

theorem P18391728392533928109.correct : P18391728392533928109.Spec := by
  intro n
  simp only [A191696, Nat.add_sub_cancel]

end A191696

/-! ## A191696.P15029173239470028554

`A055086(A028310(n*A257104(n)))`
-/

namespace A191696.P15029173239470028554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055086 (A028310 ((n : ℤ) * A257104 n).toNat).toNat

end

end A191696.P15029173239470028554

namespace A191696

/-- `A055086(A028310(n*A257104(n)))` -/
def P15029173239470028554.Spec : Prop :=
  ∀ n, P15029173239470028554.a n = A191696 (n + 1)

end A191696

/-! ## A191696.P980692470344929020

`A265370(A136302(n+1)-A135364(n))`
-/

namespace A191696.P980692470344929020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265370 (A136302 (n + 1) - A135364 n).toNat

end

end A191696.P980692470344929020

namespace A191696

/-- `A265370(A136302(n+1)-A135364(n))` -/
def P980692470344929020.Spec : Prop :=
  ∀ n, P980692470344929020.a n = A191696 (n + 1)

end A191696

/-! ## A191696.P4449370975510486102

`A067085(A368672(n))`
-/

namespace A191696.P4449370975510486102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067085 (A368672 n).toNat

end

end A191696.P4449370975510486102

namespace A191696

/-- `A067085(A368672(n))` -/
def P4449370975510486102.Spec : Prop :=
  ∀ n, P4449370975510486102.a n = A191696 (n + 1)

end A191696

/-! ## A191696.P13826744569752173389

`A295866(A382131(n+2))`
-/

namespace A191696.P13826744569752173389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295866 (A382131 (n + 2)).toNat

end

end A191696.P13826744569752173389

namespace A191696

/-- `A295866(A382131(n+2))` -/
def P13826744569752173389.Spec : Prop :=
  ∀ n, P13826744569752173389.a n = A191696 (n + 1)

end A191696

/-!
# A191697: a(n) = r1^n + r2^n + r3^n where r1, r2, r3 are the three roots of x^3 - 2*x - 2 = 0.

The programs for A191697, the canonical program `A191697.P2156871554166107523` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191697 has offset 1).

The definition of A191697 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 403 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191697.P468959171632598027

`ogf((4x+6x^2)/(1-2x^2-2x^3))`
-/

namespace A191697.P468959171632598027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4, 6] [1, 0, -2, -2] n

end

end A191697.P468959171632598027

namespace A191697

/-- `ogf((4x+6x^2)/(1-2x^2-2x^3))` -/
def P468959171632598027.Spec : Prop :=
  ∀ n, P468959171632598027.a n = A191697 (n + 1)

end A191697

/-! ## A191697.P2156871554166107523

`2*(a(n-2)+a(n-3))` with `a(0)=0, a(1)=4, a(2)=6`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191697

/-- `2*(a(n-2)+a(n-3))` -/
def P2156871554166107523.Spec : Prop :=
  ∀ n, (P2156871554166107523.a n : ℤ) = A191697 (n + 1)

theorem P2156871554166107523.correct : P2156871554166107523.Spec := by
  intro n
  simp only [A191697, Nat.add_sub_cancel]

end A191697

/-! ## A191697.P7073618197067025400

`a(n-2)+a(n-3)+a(n-2)+a(n-3)` with `a(0)=0, a(1)=4, a(2)=6`
-/

namespace A191697.P7073618197067025400
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 6] fun n a =>
  a (n - 2) + (a (n - 3) + (a (n - 2) + a (n - 3)))

end

end A191697.P7073618197067025400

namespace A191697

/-- `a(n-2)+a(n-3)+a(n-2)+a(n-3)` -/
def P7073618197067025400.Spec : Prop :=
  ∀ n, (P7073618197067025400.a n : ℤ) = A191697 (n + 1)

theorem P7073618197067025400.correct : P7073618197067025400.Spec := by
  intro n
  simp only [A191697, Nat.add_sub_cancel, A191697.P7073618197067025400.a, A191697.P2156871554166107523.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A191697

/-! ## A191697.P2649328014029422584

`A270307(n)-A033999(n)`
-/

namespace A191697.P2649328014029422584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270307 n - A033999 n

end

end A191697.P2649328014029422584

namespace A191697

/-- `A270307(n)-A033999(n)` -/
def P2649328014029422584.Spec : Prop :=
  ∀ n, P2649328014029422584.a n = A191697 (n + 1)

end A191697

/-! ## A191697.P2065141400851366811

`A052907(n+1)+Δ[A052907(n+2)]`
-/

namespace A191697.P2065141400851366811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052907 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052907 (n + 1) + (f1 (n + 1) - f1 n)

end

end A191697.P2065141400851366811

namespace A191697

/-- `A052907(n+1)+Δ[A052907(n+2)]` -/
def P2065141400851366811.Spec : Prop :=
  ∀ n, P2065141400851366811.a n = A191697 (n + 1)

end A191697

/-!
# A191698: a(n) = (122n^3 + 140n^2 + 45n + 3n(-1)^n)/8.

The programs for A191698, the canonical program `A191698.P14614098435645277721` is in `Seq.B000.C027`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191698 has offset 0).

The definition of A191698 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191698.P14614098435645277721

`(122*n^3+140*n²+45*n+3*n*(-1)^n)/8`

The canonical program, it is in `Seq.B000.C027`.
-/

namespace A191698

/-- `(122*n^3+140*n²+45*n+3*n*(-1)^n)/8` -/
def P14614098435645277721.Spec : Prop :=
  ∀ n, P14614098435645277721.a n = (A191698 n : ℚ)

end A191698

/-! ## A191698.P10269524195758225166

`A001400(13*n)-A001400(n)`
-/

namespace A191698.P10269524195758225166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001400 (13 * n) - A001400 n

end

end A191698.P10269524195758225166

namespace A191698

/-- `A001400(13*n)-A001400(n)` -/
def P10269524195758225166.Spec : Prop :=
  ∀ n, P10269524195758225166.a n = A191698 n

end A191698

/-!
# A191699: Numbers k such that k*(k-1)^k - (k-1)*k^(k-1) - 1 is prime.

The programs for A191699, there is no canonical definition to state claims against.
-/

/-! ## A191699.P3960038867249053512

`A026363(p?[∑[A135080(n)]])`
-/

namespace A191699.P3960038867249053512
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135080 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026363 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A191699.P3960038867249053512

/-! ## A191699.P17330176398716035567

`A051534(A295370(n)+2+n)`
-/

namespace A191699.P17330176398716035567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051534 (A295370 n + 2 + (n : ℤ)).toNat

end

end A191699.P17330176398716035567

