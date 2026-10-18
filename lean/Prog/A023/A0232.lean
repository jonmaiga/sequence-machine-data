import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
# A023201: Primes p such that p + 6 is also prime. (Lesser of a pair of sexy primes.)

The programs for A023201, the canonical program `A023201.P15581086770608415372` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023201 has offset 1).

The definition of A023201 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023201.P16311684881141591966

`A087695(n+1)-3`
-/

namespace A023201.P16311684881141591966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087695 (n + 1) - 3

end

end A023201.P16311684881141591966

namespace A023201

/-- `A087695(n+1)-3` -/
def P16311684881141591966.Spec : Prop :=
  ∀ n, P16311684881141591966.a n = A023201 (n + 1)

end A023201

/-! ## A023201.P8027792247853439004

`A046117(n+1)-6`
-/

namespace A023201.P8027792247853439004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1) - 6

end

end A023201.P8027792247853439004

namespace A023201

/-- `A046117(n+1)-6` -/
def P8027792247853439004.Spec : Prop :=
  ∀ n, P8027792247853439004.a n = A023201 (n + 1)

end A023201

/-! ## A023201.P5788086979336282669

`2*A088763(n+1)-3`
-/

namespace A023201.P5788086979336282669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088763 (n + 1) - 3

end

end A023201.P5788086979336282669

namespace A023201

/-- `2*A088763(n+1)-3` -/
def P5788086979336282669.Spec : Prop :=
  ∀ n, P5788086979336282669.a n = A023201 (n + 1)

end A023201

/-! ## A023201.P1562551413846708323

`A104010(n+1)/2-3`
-/

namespace A023201.P1562551413846708323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104010 (n + 1) : ℚ) / 2 - 3

end

end A023201.P1562551413846708323

namespace A023201

/-- `A104010(n+1)/2-3` -/
def P1562551413846708323.Spec : Prop :=
  ∀ n, P1562551413846708323.a n = (A023201 (n + 1) : ℚ)

end A023201

/-! ## A023201.P12258717351778351567

`A227346(n)+a(n-1)` with `a(0)=5`
-/

namespace A023201.P12258717351778351567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A227346 n + a (n - 1)

end

end A023201.P12258717351778351567

namespace A023201

/-- `A227346(n)+a(n-1)` -/
def P12258717351778351567.Spec : Prop :=
  ∀ n, P12258717351778351567.a n = A023201 (n + 1)

end A023201

/-! ## A023201.P9250728094899821551

`A111192(n+1)/A046117(n+1)`
-/

namespace A023201.P9250728094899821551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111192 (n + 1) : ℚ) / (A046117 (n + 1) : ℚ)

end

end A023201.P9250728094899821551

namespace A023201

/-- `A111192(n+1)/A046117(n+1)` -/
def P9250728094899821551.Spec : Prop :=
  ∀ n, P9250728094899821551.a n = (A023201 (n + 1) : ℚ)

end A023201

/-! ## A023201.P3761964651149969780

`A104010(n+1)%A046117(n+1)`
-/

namespace A023201.P3761964651149969780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A104010 (n + 1)) (A046117 (n + 1))

end

end A023201.P3761964651149969780

namespace A023201

/-- `A104010(n+1)%A046117(n+1)` -/
def P3761964651149969780.Spec : Prop :=
  ∀ n, P3761964651149969780.a n = A023201 (n + 1)

end A023201

/-! ## A023201.P3226416664685762143

`A067831(n+2)-6`
-/

namespace A023201.P3226416664685762143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067831 (n + 2) - 6

end

end A023201.P3226416664685762143

namespace A023201

/-- `A067831(n+2)-6` -/
def P3226416664685762143.Spec : Prop :=
  ∀ n, P3226416664685762143.a n = A023201 (n + 1)

end A023201

/-! ## A023201.P213958820035562944

`A172071(n+2)-6`
-/

namespace A023201.P213958820035562944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172071 (n + 2) - 6

end

end A023201.P213958820035562944

namespace A023201

/-- `A172071(n+2)-6` -/
def P213958820035562944.Spec : Prop :=
  ∀ n, P213958820035562944.a n = A023201 (n + 1)

end A023201

/-! ## A023201.P14129866989745907791

`A172988(n+2)-6`
-/

namespace A023201.P14129866989745907791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172988 (n + 2) - 6

end

end A023201.P14129866989745907791

namespace A023201

/-- `A172988(n+2)-6` -/
def P14129866989745907791.Spec : Prop :=
  ∀ n, P14129866989745907791.a n = A023201 (n + 1)

end A023201

/-! ## A023201.P13981847748762264984

`A111192(n+1)/A067831(n+2)`
-/

namespace A023201.P13981847748762264984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111192 (n + 1) : ℚ) / (A067831 (n + 2) : ℚ)

end

end A023201.P13981847748762264984

namespace A023201

/-- `A111192(n+1)/A067831(n+2)` -/
def P13981847748762264984.Spec : Prop :=
  ∀ n, P13981847748762264984.a n = (A023201 (n + 1) : ℚ)

end A023201

/-! ## A023201.P12697003343802808350

`A111192(n+1)/A172071(n+2)`
-/

namespace A023201.P12697003343802808350
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111192 (n + 1) : ℚ) / (A172071 (n + 2) : ℚ)

end

end A023201.P12697003343802808350

namespace A023201

/-- `A111192(n+1)/A172071(n+2)` -/
def P12697003343802808350.Spec : Prop :=
  ∀ n, P12697003343802808350.a n = (A023201 (n + 1) : ℚ)

end A023201

/-! ## A023201.P16533742064651411704

`A111192(n+1)/A172988(n+2)`
-/

namespace A023201.P16533742064651411704
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111192 (n + 1) : ℚ) / (A172988 (n + 2) : ℚ)

end

end A023201.P16533742064651411704

namespace A023201

/-- `A111192(n+1)/A172988(n+2)` -/
def P16533742064651411704.Spec : Prop :=
  ∀ n, P16533742064651411704.a n = (A023201 (n + 1) : ℚ)

end A023201

/-! ## A023201.P15581086770608415372

`p?[A015914(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023201

/-- `p?[A015914(n+1)]` -/
def P15581086770608415372.Spec : Prop :=
  ∀ n, P15581086770608415372.a n = A023201 (n + 1)

theorem P15581086770608415372.correct : P15581086770608415372.Spec := by
  intro n
  simp only [A023201, Nat.add_sub_cancel]

end A023201

/-! ## A023201.P10638353904346602278

`p?[A262084(n+1)]`
-/

namespace A023201.P10638353904346602278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023201.P10638353904346602278

namespace A023201

/-- `p?[A262084(n+1)]` -/
def P10638353904346602278.Spec : Prop :=
  ∀ n, P10638353904346602278.a n = A023201 (n + 1)

end A023201

/-! ## A023201.P7225660734623946803

`A156274(Δ[n²])`
-/

namespace A023201.P7225660734623946803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A023201.P7225660734623946803

namespace A023201

/-- `A156274(Δ[n²])` -/
def P7225660734623946803.Spec : Prop :=
  ∀ n, P7225660734623946803.a n = A023201 (n + 1)

end A023201

/-! ## A023201.P3905705656309945255

`p?[A156274(2*n+1)]`
-/

namespace A023201.P3905705656309945255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023201.P3905705656309945255

namespace A023201

/-- `p?[A156274(2*n+1)]` -/
def P3905705656309945255.Spec : Prop :=
  ∀ n, P3905705656309945255.a n = A023201 (n + 1)

end A023201

/-! ## A023201.P4584477648829282700

`A156274(2*n+1)+A132747(2*n+1)`
-/

namespace A023201.P4584477648829282700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156274 (2 * n + 1) + A132747 (2 * n + 1)

end

end A023201.P4584477648829282700

namespace A023201

/-- `A156274(2*n+1)+A132747(2*n+1)` -/
def P4584477648829282700.Spec : Prop :=
  ∀ n, P4584477648829282700.a n = A023201 (n + 1)

end A023201

/-! ## A023201.P15445892987650681190

`p?[p?[2*n+1]-6]`
-/

namespace A023201.P15445892987650681190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023201.P15445892987650681190

namespace A023201

/-- `p?[p?[2*n+1]-6]` -/
def P15445892987650681190.Spec : Prop :=
  ∀ n, P15445892987650681190.a n = A023201 (n + 1)

end A023201

/-! ## A023201.P5942700175441292419

`p?[A086304(n+1)]`
-/

namespace A023201.P5942700175441292419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023201.P5942700175441292419

namespace A023201

/-- `p?[A086304(n+1)]` -/
def P5942700175441292419.Spec : Prop :=
  ∀ n, P5942700175441292419.a n = A023201 (n + 1)

end A023201

/-!
# A023202: Primes p such that p + 8 is also prime.

The programs for A023202, the canonical program `A023202.P11096894219968463901` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023202 has offset 1).

The definition of A023202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8242 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023202.P17846797640834965518

`A087680(n+1)-4`
-/

namespace A023202.P17846797640834965518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087680 (n + 1) - 4

end

end A023202.P17846797640834965518

namespace A023202

/-- `A087680(n+1)-4` -/
def P17846797640834965518.Spec : Prop :=
  ∀ n, P17846797640834965518.a n = A023202 (n + 1)

end A023202

/-! ## A023202.P4656637571041954602

`2*A088764(n+1)-3`
-/

namespace A023202.P4656637571041954602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088764 (n + 1) - 3

end

end A023202.P4656637571041954602

namespace A023202

/-- `2*A088764(n+1)-3` -/
def P4656637571041954602.Spec : Prop :=
  ∀ n, P4656637571041954602.a n = A023202 (n + 1)

end A023202

/-! ## A023202.P11096894219968463901

`p?[A015915(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023202

/-- `p?[A015915(n+1)]` -/
def P11096894219968463901.Spec : Prop :=
  ∀ n, P11096894219968463901.a n = A023202 (n + 1)

theorem P11096894219968463901.correct : P11096894219968463901.Spec := by
  intro n
  simp only [A023202, Nat.add_sub_cancel]

end A023202

/-! ## A023202.P1472065293436272061

`p?[A262085(n+1)]`
-/

namespace A023202.P1472065293436272061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023202.P1472065293436272061

namespace A023202

/-- `p?[A262085(n+1)]` -/
def P1472065293436272061.Spec : Prop :=
  ∀ n, P1472065293436272061.a n = A023202 (n + 1)

end A023202

/-! ## A023202.P12043030551422266907

`∩[A015915(n+1), A040044(n+1)]`
-/

namespace A023202.P12043030551422266907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P12043030551422266907

namespace A023202

/-- `∩[A015915(n+1), A040044(n+1)]` -/
def P12043030551422266907.Spec : Prop :=
  ∀ n, (P12043030551422266907.a n : ℤ) = A023202 (n + 1)

end A023202

/-! ## A023202.P18370969566846079688

`∩[A015915(n+1), A040046(n+1)]`
-/

namespace A023202.P18370969566846079688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P18370969566846079688

namespace A023202

/-- `∩[A015915(n+1), A040046(n+1)]` -/
def P18370969566846079688.Spec : Prop :=
  ∀ n, (P18370969566846079688.a n : ℤ) = A023202 (n + 1)

end A023202

/-! ## A023202.P16386011584302905668

`∩[A015915(n+1), A040060(n+1)]`
-/

namespace A023202.P16386011584302905668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P16386011584302905668

namespace A023202

/-- `∩[A015915(n+1), A040060(n+1)]` -/
def P16386011584302905668.Spec : Prop :=
  ∀ n, (P16386011584302905668.a n : ℤ) = A023202 (n + 1)

end A023202

/-! ## A023202.P14385955915313707999

`∩[A015915(n+1), A040036(n+1)]`
-/

namespace A023202.P14385955915313707999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P14385955915313707999

namespace A023202

/-- `∩[A015915(n+1), A040036(n+1)]` -/
def P14385955915313707999.Spec : Prop :=
  ∀ n, (P14385955915313707999.a n : ℤ) = A023202 (n + 1)

end A023202

/-! ## A023202.P5894356445102448783

`∩[A015915(n+1), A040028(n+1)]`
-/

namespace A023202.P5894356445102448783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P5894356445102448783

namespace A023202

/-- `∩[A015915(n+1), A040028(n+1)]` -/
def P5894356445102448783.Spec : Prop :=
  ∀ n, (P5894356445102448783.a n : ℤ) = A023202 (n + 1)

end A023202

/-! ## A023202.P11401892876309970688

`∩[A015915(n+1), A040049(n+1)]`
-/

namespace A023202.P11401892876309970688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P11401892876309970688

namespace A023202

/-- `∩[A015915(n+1), A040049(n+1)]` -/
def P11401892876309970688.Spec : Prop :=
  ∀ n, (P11401892876309970688.a n : ℤ) = A023202 (n + 1)

end A023202

/-! ## A023202.P16957634175866494393

`∩[A040078(n+1), A015915(n+1)]`
-/

namespace A023202.P16957634175866494393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P16957634175866494393

namespace A023202

/-- `∩[A040078(n+1), A015915(n+1)]` -/
def P16957634175866494393.Spec : Prop :=
  ∀ n, (P16957634175866494393.a n : ℤ) = A023202 (n + 1)

end A023202

/-! ## A023202.P9611573629148350681

`∩[A015915(n+1), A040054(n+1)]`
-/

namespace A023202.P9611573629148350681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P9611573629148350681

namespace A023202

/-- `∩[A015915(n+1), A040054(n+1)]` -/
def P9611573629148350681.Spec : Prop :=
  ∀ n, (P9611573629148350681.a n : ℤ) = A023202 (n + 1)

end A023202

/-! ## A023202.P15372978893962793121

`∩[A040062(n+1), A015915(n+1)]`
-/

namespace A023202.P15372978893962793121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P15372978893962793121

namespace A023202

/-- `∩[A040062(n+1), A015915(n+1)]` -/
def P15372978893962793121.Spec : Prop :=
  ∀ n, (P15372978893962793121.a n : ℤ) = A023202 (n + 1)

end A023202

/-! ## A023202.P14420877040297614796

`∩[A040085(n+1), A015915(n+1)]`
-/

namespace A023202.P14420877040297614796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P14420877040297614796

namespace A023202

/-- `∩[A040085(n+1), A015915(n+1)]` -/
def P14420877040297614796.Spec : Prop :=
  ∀ n, (P14420877040297614796.a n : ℤ) = A023202 (n + 1)

end A023202

/-! ## A023202.P16654878428160360880

`∩[A045405(n+1), A015915(n+1)]`
-/

namespace A023202.P16654878428160360880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P16654878428160360880

namespace A023202

/-- `∩[A045405(n+1), A015915(n+1)]` -/
def P16654878428160360880.Spec : Prop :=
  ∀ n, (P16654878428160360880.a n : ℤ) = A023202 (n + 1)

end A023202

/-! ## A023202.P3513769214653754370

`∩[A015915(n+1), A042988(n)]`
-/

namespace A023202.P3513769214653754370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P3513769214653754370

namespace A023202

/-- `∩[A015915(n+1), A042988(n)]` -/
def P3513769214653754370.Spec : Prop :=
  ∀ n, (P3513769214653754370.a n : ℤ) = A023202 (n + 1)

end A023202

/-! ## A023202.P4391581442057766440

`∩[A262085(n+1), A042988(n)]`
-/

namespace A023202.P4391581442057766440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P4391581442057766440

namespace A023202

/-- `∩[A262085(n+1), A042988(n)]` -/
def P4391581442057766440.Spec : Prop :=
  ∀ n, (P4391581442057766440.a n : ℤ) = A023202 (n + 1)

end A023202

/-! ## A023202.P4320706482645711292

`p?[p?[2*n+1]-8]`
-/

namespace A023202.P4320706482645711292
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023202.P4320706482645711292

namespace A023202

/-- `p?[p?[2*n+1]-8]` -/
def P4320706482645711292.Spec : Prop :=
  ∀ n, P4320706482645711292.a n = A023202 (n + 1)

end A023202

/-! ## A023202.P3700680325555628689

`∩[A000040(n+1), A015915(n+1)]`
-/

namespace A023202.P3700680325555628689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P3700680325555628689

namespace A023202

/-- `∩[A000040(n+1), A015915(n+1)]` -/
def P3700680325555628689.Spec : Prop :=
  ∀ n, (P3700680325555628689.a n : ℤ) = A023202 (n + 1)

end A023202

/-! ## A023202.P2676219819599576105

`∩[A006005(n+1), A015915(n+1)]`
-/

namespace A023202.P2676219819599576105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015915 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023202.P2676219819599576105

namespace A023202

/-- `∩[A006005(n+1), A015915(n+1)]` -/
def P2676219819599576105.Spec : Prop :=
  ∀ n, (P2676219819599576105.a n : ℤ) = A023202 (n + 1)

end A023202

/-!
# A023203: 

The programs for A023203, there is no canonical definition to state claims against.
-/

/-! ## A023203.P1615056993556906337

`A087696(n+1)-5`
-/

namespace A023203.P1615056993556906337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087696 (n + 1) - 5

end

end A023203.P1615056993556906337

/-! ## A023203.P9631727184595402376

`2*A088765(n+1)-5`
-/

namespace A023203.P9631727184595402376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088765 (n + 1) - 5

end

end A023203.P9631727184595402376

/-! ## A023203.P9744658246642968473

`A079033(n)+a(n-1)` with `a(0)=3`
-/

namespace A023203.P9744658246642968473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A079033 n + a (n - 1)

end

end A023203.P9744658246642968473

/-! ## A023203.P1838784519664034435

`p?[A015916(n+1)]`
-/

namespace A023203.P1838784519664034435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023203.P1838784519664034435

/-! ## A023203.P1544291019503532326

`p?[A262086(n+1)]`
-/

namespace A023203.P1544291019503532326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023203.P1544291019503532326

/-! ## A023203.P16033513672255455375

`A140445(Δ[n²])`
-/

namespace A023203.P16033513672255455375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140445 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A023203.P16033513672255455375

/-! ## A023203.P3462029856425829952

`p?[A140445(2*n+1)]`
-/

namespace A023203.P3462029856425829952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140445 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023203.P3462029856425829952

/-! ## A023203.P7679187358604180452

`∩[A262086(n+1), A042990(n)]`
-/

namespace A023203.P7679187358604180452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262086 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023203.P7679187358604180452

/-! ## A023203.P16465772481792332854

`p?[p?[2*n+1]-10]`
-/

namespace A023203.P16465772481792332854
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023203.P16465772481792332854

/-! ## A023203.P17121399730749301171

`p?[A172407(n+1)]`
-/

namespace A023203.P17121399730749301171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023203.P17121399730749301171

/-! ## A023203.P16787716141655467671

`p?[A028815(n)-11]`
-/

namespace A023203.P16787716141655467671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023203.P16787716141655467671

/-! ## A023203.P15125125848710798730

`p?[A088967(n+1)-1]`
-/

namespace A023203.P15125125848710798730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088967 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023203.P15125125848710798730

/-! ## A023203.P1774614925704784034

`p?[A040976(n+1)-8]`
-/

namespace A023203.P1774614925704784034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023203.P1774614925704784034

/-! ## A023203.P7450254474499372649

`p?[A006093(n+1)-9]`
-/

namespace A023203.P7450254474499372649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - 9

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023203.P7450254474499372649

/-! ## A023203.P10977810921947768409

`∩[A172407(n+1), A042990(n)]`
-/

namespace A023203.P10977810921947768409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023203.P10977810921947768409

/-! ## A023203.P41030361107335978

`∩[A000040(n+1), A172407(n+1)]`
-/

namespace A023203.P41030361107335978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023203.P41030361107335978

/-! ## A023203.P13685582390181441383

`∩[A004139(n+1), A172407(n+1)]`
-/

namespace A023203.P13685582390181441383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023203.P13685582390181441383

/-! ## A023203.P17616275291195014863

`∩[A007645(n+1), A172407(n+1)]`
-/

namespace A023203.P17616275291195014863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023203.P17616275291195014863

/-! ## A023203.P3097237755168231322

`∩[A040116(n+1), A172407(n+1)]`
-/

namespace A023203.P3097237755168231322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023203.P3097237755168231322

/-! ## A023203.P13689869192690987815

`∩[A045319(n+1), A172407(n+1)]`
-/

namespace A023203.P13689869192690987815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023203.P13689869192690987815

/-!
# A023204: Primes p such that 2*p + 3 is also prime.

The programs for A023204, there is no canonical definition to state claims against.
-/

/-! ## A023204.P17690430415955258692

`(A089531(n+1)-3)/2`
-/

namespace A023204.P17690430415955258692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089531 (n + 1) - 3 : ℚ) / 2

end

end A023204.P17690430415955258692

/-! ## A023204.P2920218500521155332

`A226754(n+1)/A089531(n+1)`
-/

namespace A023204.P2920218500521155332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226754 (n + 1) : ℚ) / (A089531 (n + 1) : ℚ)

end

end A023204.P2920218500521155332

/-! ## A023204.P6808720925436224645

`A000040(A089530(n+1))`
-/

namespace A023204.P6808720925436224645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A089530 (n + 1)).toNat

end

end A023204.P6808720925436224645

/-! ## A023204.P14658132702161392247

`p?[A105760(n+1)+2]`
-/

namespace A023204.P14658132702161392247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023204.P14658132702161392247

/-! ## A023204.P3173148710670471973

`record[A006530(A105760(n+1)+2)]`
-/

namespace A023204.P3173148710670471973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A105760 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023204.P3173148710670471973

/-! ## A023204.P2436039286074536967

`record[A020639(A155722(n+1)+3)]`
-/

namespace A023204.P2436039286074536967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155722 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023204.P2436039286074536967

/-! ## A023204.P653535260480756515

`p?[A067076(n+1)]`
-/

namespace A023204.P653535260480756515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023204.P653535260480756515

/-! ## A023204.P8562162465464269549

`record[A023569(n+3)]`
-/

namespace A023204.P8562162465464269549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023569 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023204.P8562162465464269549

/-! ## A023204.P8983081079495456309

`p?[∑[A028334(n+2)]]`
-/

namespace A023204.P8983081079495456309
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023204.P8983081079495456309

/-! ## A023204.P17379367658792540995

`p?[Δ[A005521(n)]-1]`
-/

namespace A023204.P17379367658792540995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005521 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023204.P17379367658792540995

/-! ## A023204.P8555527710441245436

`p?[A089038(n+1)+1]`
-/

namespace A023204.P8555527710441245436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023204.P8555527710441245436

/-! ## A023204.P4340765316419436641

`p?[A005097(n+1)-1]`
-/

namespace A023204.P4340765316419436641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023204.P4340765316419436641

/-! ## A023204.P1717987923713455777

`p?[A102781(n+1)-1]`
-/

namespace A023204.P1717987923713455777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023204.P1717987923713455777

/-! ## A023204.P53863980708902820

`p?[A130290(n+1)-1]`
-/

namespace A023204.P53863980708902820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023204.P53863980708902820

/-! ## A023204.P7372893053088372312

`p?[A006254(n+1)-2]`
-/

namespace A023204.P7372893053088372312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023204.P7372893053088372312

/-! ## A023204.P17709114999283751862

`p?[A111333(n+1)-2]`
-/

namespace A023204.P17709114999283751862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023204.P17709114999283751862

/-! ## A023204.P2891745164829421131

`p?[A130291(n+1)-2]`
-/

namespace A023204.P2891745164829421131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130291 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023204.P2891745164829421131

/-! ## A023204.P14241781516950063549

`p?[A161720(n+3)+2]`
-/

namespace A023204.P14241781516950063549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023204.P14241781516950063549

/-!
# A023205: Numbers m such that m and 2*m + 5 are both prime.

The programs for A023205, the canonical program `A023205.P16444965507466187398` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023205 has offset 1).

The definition of A023205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1702 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023205.P16444965507466187398

`p?[A141544(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023205

/-- `p?[A141544(n+1)]` -/
def P16444965507466187398.Spec : Prop :=
  ∀ n, P16444965507466187398.a n = A023205 (n + 1)

theorem P16444965507466187398.correct : P16444965507466187398.Spec := by
  intro n
  simp only [A023205, Nat.add_sub_cancel]

end A023205

/-! ## A023205.P9319869705953548708

`p?[A104635(n+1)-2]`
-/

namespace A023205.P9319869705953548708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023205.P9319869705953548708

namespace A023205

/-- `p?[A104635(n+1)-2]` -/
def P9319869705953548708.Spec : Prop :=
  ∀ n, P9319869705953548708.a n = A023205 (n + 1)

end A023205

/-! ## A023205.P12548465992257241340

`p?[2*A089986(n+1)+1]`
-/

namespace A023205.P12548465992257241340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089986 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023205.P12548465992257241340

namespace A023205

/-- `p?[2*A089986(n+1)+1]` -/
def P12548465992257241340.Spec : Prop :=
  ∀ n, P12548465992257241340.a n = A023205 (n + 1)

end A023205

/-! ## A023205.P7399701999450173624

`p?[2*A095278(n+1)-1]`
-/

namespace A023205.P7399701999450173624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095278 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023205.P7399701999450173624

namespace A023205

/-- `p?[2*A095278(n+1)-1]` -/
def P7399701999450173624.Spec : Prop :=
  ∀ n, P7399701999450173624.a n = A023205 (n + 1)

end A023205

/-! ## A023205.P11843053643093752951

`∩[A007645(n+1), A141544(n+1)]`
-/

namespace A023205.P11843053643093752951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P11843053643093752951

namespace A023205

/-- `∩[A007645(n+1), A141544(n+1)]` -/
def P11843053643093752951.Spec : Prop :=
  ∀ n, (P11843053643093752951.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P16233018244537407367

`∩[A040116(n+1), A141544(n+1)]`
-/

namespace A023205.P16233018244537407367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P16233018244537407367

namespace A023205

/-- `∩[A040116(n+1), A141544(n+1)]` -/
def P16233018244537407367.Spec : Prop :=
  ∀ n, (P16233018244537407367.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P1140946298898916451

`∩[A042966(n+1), A141544(n+1)]`
-/

namespace A023205.P1140946298898916451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P1140946298898916451

namespace A023205

/-- `∩[A042966(n+1), A141544(n+1)]` -/
def P1140946298898916451.Spec : Prop :=
  ∀ n, (P1140946298898916451.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P6168581245521392118

`∩[A045331(n+1), A141544(n+1)]`
-/

namespace A023205.P6168581245521392118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P6168581245521392118

namespace A023205

/-- `∩[A045331(n+1), A141544(n+1)]` -/
def P6168581245521392118.Spec : Prop :=
  ∀ n, (P6168581245521392118.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P14331516212460868961

`∩[A080191(n+1), A141544(n+1)]`
-/

namespace A023205.P14331516212460868961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P14331516212460868961

namespace A023205

/-- `∩[A080191(n+1), A141544(n+1)]` -/
def P14331516212460868961.Spec : Prop :=
  ∀ n, (P14331516212460868961.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P16084245461692618505

`∩[A000040(n+1), A141544(n+1)]`
-/

namespace A023205.P16084245461692618505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P16084245461692618505

namespace A023205

/-- `∩[A000040(n+1), A141544(n+1)]` -/
def P16084245461692618505.Spec : Prop :=
  ∀ n, (P16084245461692618505.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P7768467639664991500

`∩[A004139(n+1), A141544(n+1)]`
-/

namespace A023205.P7768467639664991500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P7768467639664991500

namespace A023205

/-- `∩[A004139(n+1), A141544(n+1)]` -/
def P7768467639664991500.Spec : Prop :=
  ∀ n, (P7768467639664991500.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P13211194530121475808

`∩[A045319(n+1), A141544(n+1)]`
-/

namespace A023205.P13211194530121475808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P13211194530121475808

namespace A023205

/-- `∩[A045319(n+1), A141544(n+1)]` -/
def P13211194530121475808.Spec : Prop :=
  ∀ n, (P13211194530121475808.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P15241848467221552998

`∩[A051948(n+1), A141544(n+1)]`
-/

namespace A023205.P15241848467221552998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P15241848467221552998

namespace A023205

/-- `∩[A051948(n+1), A141544(n+1)]` -/
def P15241848467221552998.Spec : Prop :=
  ∀ n, (P15241848467221552998.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P13083836108195665264

`∩[A053813(n+1), A141544(n+1)]`
-/

namespace A023205.P13083836108195665264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P13083836108195665264

namespace A023205

/-- `∩[A053813(n+1), A141544(n+1)]` -/
def P13083836108195665264.Spec : Prop :=
  ∀ n, (P13083836108195665264.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P8918635005249117411

`∩[A065091(n+1), A141544(n+1)]`
-/

namespace A023205.P8918635005249117411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P8918635005249117411

namespace A023205

/-- `∩[A065091(n+1), A141544(n+1)]` -/
def P8918635005249117411.Spec : Prop :=
  ∀ n, (P8918635005249117411.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P963231946542867354

`∩[A140826(n+1), A141544(n+1)]`
-/

namespace A023205.P963231946542867354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P963231946542867354

namespace A023205

/-- `∩[A140826(n+1), A141544(n+1)]` -/
def P963231946542867354.Spec : Prop :=
  ∀ n, (P963231946542867354.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P2196126423893757995

`∩[A066542(n+1), A141544(n+1)]`
-/

namespace A023205.P2196126423893757995
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P2196126423893757995

namespace A023205

/-- `∩[A066542(n+1), A141544(n+1)]` -/
def P2196126423893757995.Spec : Prop :=
  ∀ n, (P2196126423893757995.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P14775817550324038272

`∩[A053577(n+1), A141544(n+1)]`
-/

namespace A023205.P14775817550324038272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P14775817550324038272

namespace A023205

/-- `∩[A053577(n+1), A141544(n+1)]` -/
def P14775817550324038272.Spec : Prop :=
  ∀ n, (P14775817550324038272.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P16701995234182648512

`∩[A066191(n+1), A141544(n+1)]`
-/

namespace A023205.P16701995234182648512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023205.P16701995234182648512

namespace A023205

/-- `∩[A066191(n+1), A141544(n+1)]` -/
def P16701995234182648512.Spec : Prop :=
  ∀ n, (P16701995234182648512.a n : ℤ) = A023205 (n + 1)

end A023205

/-! ## A023205.P10634320112492180555

`filter[A141544(n+1), A010051(#)]`
-/

namespace A023205.P10634320112492180555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023205.P10634320112492180555

namespace A023205

/-- `filter[A141544(n+1), A010051(#)]` -/
def P10634320112492180555.Spec : Prop :=
  ∀ n, P10634320112492180555.a n = A023205 (n + 1)

end A023205

/-!
# A023206: Numbers m such that m and 2*m + 7 both prime.

The programs for A023206, the canonical program `A023206.P13975797796772789515` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023206 has offset 1).

The definition of A023206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 840 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023206.P5860573141334408420

`p?[A105760(n+1)]`
-/

namespace A023206.P5860573141334408420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023206.P5860573141334408420

namespace A023206

/-- `p?[A105760(n+1)]` -/
def P5860573141334408420.Spec : Prop :=
  ∀ n, P5860573141334408420.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P11209476969890217845

`p?[A161720(n+3)]`
-/

namespace A023206.P11209476969890217845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023206.P11209476969890217845

namespace A023206

/-- `p?[A161720(n+3)]` -/
def P11209476969890217845.Spec : Prop :=
  ∀ n, P11209476969890217845.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P6879623516805404840

`p?[∑[A028334(n+4)]]`
-/

namespace A023206.P6879623516805404840
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023206.P6879623516805404840

namespace A023206

/-- `p?[∑[A028334(n+4)]]` -/
def P6879623516805404840.Spec : Prop :=
  ∀ n, P6879623516805404840.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P12362814559949227539

`p?[A155722(n+1)+1]`
-/

namespace A023206.P12362814559949227539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023206.P12362814559949227539

namespace A023206

/-- `p?[A155722(n+1)+1]` -/
def P12362814559949227539.Spec : Prop :=
  ∀ n, P12362814559949227539.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P5242707440047826721

`p?[A089038(n+1)-1]`
-/

namespace A023206.P5242707440047826721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023206.P5242707440047826721

namespace A023206

/-- `p?[A089038(n+1)-1]` -/
def P5242707440047826721.Spec : Prop :=
  ∀ n, P5242707440047826721.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P11108761526114299425

`p?[A101448(n+1)+2]`
-/

namespace A023206.P11108761526114299425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023206.P11108761526114299425

namespace A023206

/-- `p?[A101448(n+1)+2]` -/
def P11108761526114299425.Spec : Prop :=
  ∀ n, P11108761526114299425.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P16992976390801826335

`p?[A067076(n+1)-2]`
-/

namespace A023206.P16992976390801826335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023206.P16992976390801826335

namespace A023206

/-- `p?[A067076(n+1)-2]` -/
def P16992976390801826335.Spec : Prop :=
  ∀ n, P16992976390801826335.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P9593751911379314271

`p?[A005097(n+1)-3]`
-/

namespace A023206.P9593751911379314271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023206.P9593751911379314271

namespace A023206

/-- `p?[A005097(n+1)-3]` -/
def P9593751911379314271.Spec : Prop :=
  ∀ n, P9593751911379314271.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P10287331894406514246

`p?[A102781(n+1)-3]`
-/

namespace A023206.P10287331894406514246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023206.P10287331894406514246

namespace A023206

/-- `p?[A102781(n+1)-3]` -/
def P10287331894406514246.Spec : Prop :=
  ∀ n, P10287331894406514246.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P13975797796772789515

`p?[A006254(n+2)-4]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023206

/-- `p?[A006254(n+2)-4]` -/
def P13975797796772789515.Spec : Prop :=
  ∀ n, P13975797796772789515.a n = A023206 (n + 1)

theorem P13975797796772789515.correct : P13975797796772789515.Spec := by
  intro n
  simp only [A023206, Nat.add_sub_cancel]

end A023206

/-! ## A023206.P623015730109826276

`p?[A098090(n+1)-5]`
-/

namespace A023206.P623015730109826276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023206.P623015730109826276

namespace A023206

/-- `p?[A098090(n+1)-5]` -/
def P623015730109826276.Spec : Prop :=
  ∀ n, P623015730109826276.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P4017598967203480854

`p?[A097363(n+1)-10]`
-/

namespace A023206.P4017598967203480854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097363 (n + 1) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023206.P4017598967203480854

namespace A023206

/-- `p?[A097363(n+1)-10]` -/
def P4017598967203480854.Spec : Prop :=
  ∀ n, P4017598967203480854.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P5287409735995580959

`record[A006530(A105760(n+2))]`
-/

namespace A023206.P5287409735995580959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A105760 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023206.P5287409735995580959

namespace A023206

/-- `record[A006530(A105760(n+2))]` -/
def P5287409735995580959.Spec : Prop :=
  ∀ n, P5287409735995580959.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P4491750897696704055

`filter[A105760(n+2), A010051(#)]`
-/

namespace A023206.P4491750897696704055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023206.P4491750897696704055

namespace A023206

/-- `filter[A105760(n+2), A010051(#)]` -/
def P4491750897696704055.Spec : Prop :=
  ∀ n, P4491750897696704055.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P13003545450929386195

`filter[A105760(n+2), A302777(#)]`
-/

namespace A023206.P13003545450929386195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A023206.P13003545450929386195

namespace A023206

/-- `filter[A105760(n+2), A302777(#)]` -/
def P13003545450929386195.Spec : Prop :=
  ∀ n, P13003545450929386195.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P6277330829547503184

`filter[A105760(n+2), A355937(#)]`
-/

namespace A023206.P6277330829547503184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A023206.P6277330829547503184

namespace A023206

/-- `filter[A105760(n+2), A355937(#)]` -/
def P6277330829547503184.Spec : Prop :=
  ∀ n, P6277330829547503184.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P15739566950498421956

`filter[A161720(n+5), A010051(#)]`
-/

namespace A023206.P15739566950498421956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023206.P15739566950498421956

namespace A023206

/-- `filter[A161720(n+5), A010051(#)]` -/
def P15739566950498421956.Spec : Prop :=
  ∀ n, P15739566950498421956.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P17624798295214212862

`filter[A161720(n+5), A302777(#)]`
-/

namespace A023206.P17624798295214212862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A023206.P17624798295214212862

namespace A023206

/-- `filter[A161720(n+5), A302777(#)]` -/
def P17624798295214212862.Spec : Prop :=
  ∀ n, P17624798295214212862.a n = A023206 (n + 1)

end A023206

/-! ## A023206.P5347753934578586537

`filter[A161720(n+5), A355937(#)]`
-/

namespace A023206.P5347753934578586537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A023206.P5347753934578586537

namespace A023206

/-- `filter[A161720(n+5), A355937(#)]` -/
def P5347753934578586537.Spec : Prop :=
  ∀ n, P5347753934578586537.a n = A023206 (n + 1)

end A023206

/-!
# A023207: Numbers m such that m and 2*m + 9 both prime.

The programs for A023207, the canonical program `A023207.P14272775065074491551` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023207 has offset 1).

The definition of A023207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023207.P10297445661127633664

`p?[A155722(n+1)]`
-/

namespace A023207.P10297445661127633664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023207.P10297445661127633664

namespace A023207

/-- `p?[A155722(n+1)]` -/
def P10297445661127633664.Spec : Prop :=
  ∀ n, P10297445661127633664.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P16675198457297701720

`p?[A101448(n+1)+1]`
-/

namespace A023207.P16675198457297701720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101448 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023207.P16675198457297701720

namespace A023207

/-- `p?[A101448(n+1)+1]` -/
def P16675198457297701720.Spec : Prop :=
  ∀ n, P16675198457297701720.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P8956412996693996298

`p?[A105760(n+1)-1]`
-/

namespace A023207.P8956412996693996298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105760 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023207.P8956412996693996298

namespace A023207

/-- `p?[A105760(n+1)-1]` -/
def P8956412996693996298.Spec : Prop :=
  ∀ n, P8956412996693996298.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P15123436423679758567

`p?[A153081(n+1)+2]`
-/

namespace A023207.P15123436423679758567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153081 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023207.P15123436423679758567

namespace A023207

/-- `p?[A153081(n+1)+2]` -/
def P15123436423679758567.Spec : Prop :=
  ∀ n, P15123436423679758567.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P9502633256957946096

`p?[A089038(n+1)-2]`
-/

namespace A023207.P9502633256957946096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089038 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023207.P9502633256957946096

namespace A023207

/-- `p?[A089038(n+1)-2]` -/
def P9502633256957946096.Spec : Prop :=
  ∀ n, P9502633256957946096.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P14272775065074491551

`p?[A067076(n+1)-3]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023207

/-- `p?[A067076(n+1)-3]` -/
def P14272775065074491551.Spec : Prop :=
  ∀ n, P14272775065074491551.a n = A023207 (n + 1)

theorem P14272775065074491551.correct : P14272775065074491551.Spec := by
  intro n
  simp only [A023207, Nat.add_sub_cancel]

end A023207

/-! ## A023207.P5882213071150489614

`p?[A161720(n+3)-1]`
-/

namespace A023207.P5882213071150489614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161720 (n + 3) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023207.P5882213071150489614

namespace A023207

/-- `p?[A161720(n+3)-1]` -/
def P5882213071150489614.Spec : Prop :=
  ∀ n, P5882213071150489614.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P16340914322062688463

`p?[A005097(n+1)-4]`
-/

namespace A023207.P16340914322062688463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023207.P16340914322062688463

namespace A023207

/-- `p?[A005097(n+1)-4]` -/
def P16340914322062688463.Spec : Prop :=
  ∀ n, P16340914322062688463.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P9855097396354893220

`p?[A130290(n+1)-4]`
-/

namespace A023207.P9855097396354893220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130290 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023207.P9855097396354893220

namespace A023207

/-- `p?[A130290(n+1)-4]` -/
def P9855097396354893220.Spec : Prop :=
  ∀ n, P9855097396354893220.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P3995454311909901079

`p?[A098090(n+1)-6]`
-/

namespace A023207.P3995454311909901079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098090 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023207.P3995454311909901079

namespace A023207

/-- `p?[A098090(n+1)-6]` -/
def P3995454311909901079.Spec : Prop :=
  ∀ n, P3995454311909901079.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P16576604612842536700

`p?[A089192(n+1)-8]`
-/

namespace A023207.P16576604612842536700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089192 (n + 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023207.P16576604612842536700

namespace A023207

/-- `p?[A089192(n+1)-8]` -/
def P16576604612842536700.Spec : Prop :=
  ∀ n, P16576604612842536700.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P14306115727197362471

`p?[∑[A028334(n+3)]-2]`
-/

namespace A023207.P14306115727197362471
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028334 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023207.P14306115727197362471

namespace A023207

/-- `p?[∑[A028334(n+3)]-2]` -/
def P14306115727197362471.Spec : Prop :=
  ∀ n, P14306115727197362471.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P5459453235841780792

`record[A006530(A155722(n+2))]`
-/

namespace A023207.P5459453235841780792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A155722 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023207.P5459453235841780792

namespace A023207

/-- `record[A006530(A155722(n+2))]` -/
def P5459453235841780792.Spec : Prop :=
  ∀ n, P5459453235841780792.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P281508048904660476

`record[A020639(A155722(n+3))]`
-/

namespace A023207.P281508048904660476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155722 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023207.P281508048904660476

namespace A023207

/-- `record[A020639(A155722(n+3))]` -/
def P281508048904660476.Spec : Prop :=
  ∀ n, P281508048904660476.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P9805376774382394220

`filter[A155722(n+1), A010051(#)]`
-/

namespace A023207.P9805376774382394220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023207.P9805376774382394220

namespace A023207

/-- `filter[A155722(n+1), A010051(#)]` -/
def P9805376774382394220.Spec : Prop :=
  ∀ n, P9805376774382394220.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P10732273862581336612

`filter[A155722(n+1), A323153(#)]`
-/

namespace A023207.P10732273862581336612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A023207.P10732273862581336612

namespace A023207

/-- `filter[A155722(n+1), A323153(#)]` -/
def P10732273862581336612.Spec : Prop :=
  ∀ n, P10732273862581336612.a n = A023207 (n + 1)

end A023207

/-! ## A023207.P3803791983105237890

`filter[A155722(n+2), A323152(#)]`
-/

namespace A023207.P3803791983105237890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A023207.P3803791983105237890

namespace A023207

/-- `filter[A155722(n+2), A323152(#)]` -/
def P3803791983105237890.Spec : Prop :=
  ∀ n, P3803791983105237890.a n = A023207 (n + 1)

end A023207

/-!
# A023208: Primes p such that 3*p + 2 is also prime.

The programs for A023208, the canonical program `A023208.P15659647281431019452` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023208 has offset 1).

The definition of A023208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023208.P15659647281431019452

`floor(A094524(n+1)/3)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023208

/-- `floor(A094524(n+1)/3)` -/
def P15659647281431019452.Spec : Prop :=
  ∀ n, P15659647281431019452.a n = A023208 (n + 1)

theorem P15659647281431019452.correct : P15659647281431019452.Spec := by
  intro n
  simp only [A023208, Nat.add_sub_cancel]

end A023208

/-! ## A023208.P14326796170161111401

`A162338(n+2)`
-/

namespace A023208.P14326796170161111401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162338 (n + 2)

end

end A023208.P14326796170161111401

namespace A023208

/-- `A162338(n+2)` -/
def P14326796170161111401.Spec : Prop :=
  ∀ n, P14326796170161111401.a n = A023208 (n + 1)

end A023208

/-! ## A023208.P15998936454744131845

`(p?[3*A000040(n+1)+2]-2)/3`
-/

namespace A023208.P15998936454744131845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (n + 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2 : ℚ) / 3

end

end A023208.P15998936454744131845

namespace A023208

/-- `(p?[3*A000040(n+1)+2]-2)/3` -/
def P15998936454744131845.Spec : Prop :=
  ∀ n, P15998936454744131845.a n = (A023208 (n + 1) : ℚ)

end A023208

/-! ## A023208.P8398595037512505288

`p?[A024893(n+1)]`
-/

namespace A023208.P8398595037512505288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023208.P8398595037512505288

namespace A023208

/-- `p?[A024893(n+1)]` -/
def P8398595037512505288.Spec : Prop :=
  ∀ n, P8398595037512505288.a n = A023208 (n + 1)

end A023208

/-! ## A023208.P544476219308607849

`p?[A088879(n+1)+1]`
-/

namespace A023208.P544476219308607849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088879 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023208.P544476219308607849

namespace A023208

/-- `p?[A088879(n+1)+1]` -/
def P544476219308607849.Spec : Prop :=
  ∀ n, P544476219308607849.a n = A023208 (n + 1)

end A023208

/-! ## A023208.P6861528930638592415

`p?[A087370(n+1)-1]`
-/

namespace A023208.P6861528930638592415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023208.P6861528930638592415

namespace A023208

/-- `p?[A087370(n+1)-1]` -/
def P6861528930638592415.Spec : Prop :=
  ∀ n, P6861528930638592415.a n = A023208 (n + 1)

end A023208

/-! ## A023208.P814378069115049196

`p?[A228121(n+1)-2]`
-/

namespace A023208.P814378069115049196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023208.P814378069115049196

namespace A023208

/-- `p?[A228121(n+1)-2]` -/
def P814378069115049196.Spec : Prop :=
  ∀ n, P814378069115049196.a n = A023208 (n + 1)

end A023208

/-! ## A023208.P6806649943229737983

`p?[2*A059325(n+1)+1]`
-/

namespace A023208.P6806649943229737983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A059325 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023208.P6806649943229737983

namespace A023208

/-- `p?[2*A059325(n+1)+1]` -/
def P6806649943229737983.Spec : Prop :=
  ∀ n, P6806649943229737983.a n = A023208 (n + 1)

end A023208

/-! ## A023208.P3401414209086986577

`p?[2*A024898(n+1)-1]`
-/

namespace A023208.P3401414209086986577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024898 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023208.P3401414209086986577

namespace A023208

/-- `p?[2*A024898(n+1)-1]` -/
def P3401414209086986577.Spec : Prop :=
  ∀ n, P3401414209086986577.a n = A023208 (n + 1)

end A023208

/-! ## A023208.P12882451136694463744

`record[A006530(A024893(n+3))]`
-/

namespace A023208.P12882451136694463744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024893 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023208.P12882451136694463744

namespace A023208

/-- `record[A006530(A024893(n+3))]` -/
def P12882451136694463744.Spec : Prop :=
  ∀ n, P12882451136694463744.a n = A023208 (n + 1)

end A023208

/-! ## A023208.P11326372358613116220

`filter[A024893(n+2), A010051(#)]`
-/

namespace A023208.P11326372358613116220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023208.P11326372358613116220

namespace A023208

/-- `filter[A024893(n+2), A010051(#)]` -/
def P11326372358613116220.Spec : Prop :=
  ∀ n, P11326372358613116220.a n = A023208 (n + 1)

end A023208

/-! ## A023208.P11853001996924028340

`filter[A024893(n+2), A379969(#)]`
-/

namespace A023208.P11853001996924028340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A023208.P11853001996924028340

namespace A023208

/-- `filter[A024893(n+2), A379969(#)]` -/
def P11853001996924028340.Spec : Prop :=
  ∀ n, P11853001996924028340.a n = A023208 (n + 1)

end A023208

/-! ## A023208.P11056287597561878307

`filter[A024893(n+3), A365716(#)]`
-/

namespace A023208.P11056287597561878307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A023208.P11056287597561878307

namespace A023208

/-- `filter[A024893(n+3), A365716(#)]` -/
def P11056287597561878307.Spec : Prop :=
  ∀ n, P11056287597561878307.a n = A023208 (n + 1)

end A023208

/-! ## A023208.P10600349221105001064

`filter[A024893(n+3), A380467(#)]`
-/

namespace A023208.P10600349221105001064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A023208.P10600349221105001064

namespace A023208

/-- `filter[A024893(n+3), A380467(#)]` -/
def P10600349221105001064.Spec : Prop :=
  ∀ n, P10600349221105001064.a n = A023208 (n + 1)

end A023208

/-! ## A023208.P5873573897253154211

`∩[A024893(n+1), A042990(n)]`
-/

namespace A023208.P5873573897253154211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023208.P5873573897253154211

namespace A023208

/-- `∩[A024893(n+1), A042990(n)]` -/
def P5873573897253154211.Spec : Prop :=
  ∀ n, (P5873573897253154211.a n : ℤ) = A023208 (n + 1)

end A023208

/-! ## A023208.P4695621877472199853

`∩[A000040(n+1), A024893(n+1)]`
-/

namespace A023208.P4695621877472199853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023208.P4695621877472199853

namespace A023208

/-- `∩[A000040(n+1), A024893(n+1)]` -/
def P4695621877472199853.Spec : Prop :=
  ∀ n, (P4695621877472199853.a n : ℤ) = A023208 (n + 1)

end A023208

/-! ## A023208.P13407235658428466782

`∩[A024893(n+1), A040159(n+1)]`
-/

namespace A023208.P13407235658428466782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023208.P13407235658428466782

namespace A023208

/-- `∩[A024893(n+1), A040159(n+1)]` -/
def P13407235658428466782.Spec : Prop :=
  ∀ n, (P13407235658428466782.a n : ℤ) = A023208 (n + 1)

end A023208

/-! ## A023208.P2768892120236576503

`∩[A024893(n+1), A040161(n+1)]`
-/

namespace A023208.P2768892120236576503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023208.P2768892120236576503

namespace A023208

/-- `∩[A024893(n+1), A040161(n+1)]` -/
def P2768892120236576503.Spec : Prop :=
  ∀ n, (P2768892120236576503.a n : ℤ) = A023208 (n + 1)

end A023208

/-! ## A023208.P16921810133891979879

`∩[A024893(n+1), A040165(n+1)]`
-/

namespace A023208.P16921810133891979879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023208.P16921810133891979879

namespace A023208

/-- `∩[A024893(n+1), A040165(n+1)]` -/
def P16921810133891979879.Spec : Prop :=
  ∀ n, (P16921810133891979879.a n : ℤ) = A023208 (n + 1)

end A023208

/-!
# A023209: Primes p such that 3p + 4 is also prime.

The programs for A023209, there is no canonical definition to state claims against.
-/

/-! ## A023209.P2306953221421725193

`(A322923(n+1)-4)/3`
-/

namespace A023209.P2306953221421725193
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A322923 (n + 1) - 4 : ℚ) / 3

end

end A023209.P2306953221421725193

/-! ## A023209.P4768032977524412586

`p?[n*(2-A245838(n+1))]`
-/

namespace A023209.P4768032977524412586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A245838 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023209.P4768032977524412586

/-! ## A023209.P8811712593502470953

`p?[A034936(n+1)]`
-/

namespace A023209.P8811712593502470953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023209.P8811712593502470953

/-! ## A023209.P13172290883463931789

`p?[A089953(n+1)+1]`
-/

namespace A023209.P13172290883463931789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023209.P13172290883463931789

/-! ## A023209.P17059979363917364205

`p?[A024892(n+1)-1]`
-/

namespace A023209.P17059979363917364205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023209.P17059979363917364205

/-! ## A023209.P17806382567124682098

`p?[A153183(n+1)-2]`
-/

namespace A023209.P17806382567124682098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023209.P17806382567124682098

/-! ## A023209.P15994357645632837824

`p?[A107303(n+1)-3]`
-/

namespace A023209.P15994357645632837824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107303 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023209.P15994357645632837824

/-! ## A023209.P9252378998442370595

`p?[2*A153218(n+1)+1]`
-/

namespace A023209.P9252378998442370595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153218 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023209.P9252378998442370595

/-! ## A023209.P913206831248720654

`p?[2*A024899(n+1)-1]`
-/

namespace A023209.P913206831248720654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024899 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023209.P913206831248720654

/-! ## A023209.P4986141281894802085

`record[A006530(A034936(n+2))]`
-/

namespace A023209.P4986141281894802085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034936 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023209.P4986141281894802085

/-! ## A023209.P956994044877087731

`filter[A034936(n+1), A010051(#)]`
-/

namespace A023209.P956994044877087731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023209.P956994044877087731

/-! ## A023209.P16006026982472680570

`filter[A034936(n+1), A379969(#)]`
-/

namespace A023209.P16006026982472680570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A023209.P16006026982472680570

/-! ## A023209.P3968458620118127789

`filter[A034936(n+2), A365716(#)]`
-/

namespace A023209.P3968458620118127789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A023209.P3968458620118127789

/-! ## A023209.P7601956056548077908

`filter[A034936(n+2), A380467(#)]`
-/

namespace A023209.P7601956056548077908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A023209.P7601956056548077908

/-! ## A023209.P10068019020898364042

`record[A006530(A089953(n+2)+1)]`
-/

namespace A023209.P10068019020898364042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089953 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023209.P10068019020898364042

/-! ## A023209.P14634816147863094739

`record[A006530(A024892(n+2)-1)]`
-/

namespace A023209.P14634816147863094739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024892 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023209.P14634816147863094739

/-! ## A023209.P9043294210431046093

`∩[A000040(n+1), A034936(n+1)]`
-/

namespace A023209.P9043294210431046093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023209.P9043294210431046093

/-! ## A023209.P18288185604547242784

`∩[A034936(n+1), A042966(n+1)]`
-/

namespace A023209.P18288185604547242784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023209.P18288185604547242784

/-! ## A023209.P8658536795780166049

`∩[A034936(n+1), A042997(n+1)]`
-/

namespace A023209.P8658536795780166049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023209.P8658536795780166049

/-! ## A023209.P14649768241704497571

`∩[A034936(n+1), A045405(n+1)]`
-/

namespace A023209.P14649768241704497571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023209.P14649768241704497571

/-!
# A023210: Primes p such that 3*p + 8 is also prime.

The programs for A023210, the canonical program `A023210.P1819903065177715597` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023210 has offset 1).

The definition of A023210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1760 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023210.P14089629404680199360

`p?[A088879(n+1)-1]`
-/

namespace A023210.P14089629404680199360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088879 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P14089629404680199360

namespace A023210

/-- `p?[A088879(n+1)-1]` -/
def P14089629404680199360.Spec : Prop :=
  ∀ n, P14089629404680199360.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P8123396237374241442

`p?[A024893(n+1)-2]`
-/

namespace A023210.P8123396237374241442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P8123396237374241442

namespace A023210

/-- `p?[A024893(n+1)-2]` -/
def P8123396237374241442.Spec : Prop :=
  ∀ n, P8123396237374241442.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P3316362443831259909

`p?[A087370(n+1)-3]`
-/

namespace A023210.P3316362443831259909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087370 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P3316362443831259909

namespace A023210

/-- `p?[A087370(n+1)-3]` -/
def P3316362443831259909.Spec : Prop :=
  ∀ n, P3316362443831259909.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P612533255863096782

`p?[A228121(n+1)-4]`
-/

namespace A023210.P612533255863096782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228121 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P612533255863096782

namespace A023210

/-- `p?[A228121(n+1)-4]` -/
def P612533255863096782.Spec : Prop :=
  ∀ n, P612533255863096782.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P1819903065177715597

`p?[2*A059325(n+1)-1]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023210

/-- `p?[2*A059325(n+1)-1]` -/
def P1819903065177715597.Spec : Prop :=
  ∀ n, P1819903065177715597.a n = A023210 (n + 1)

theorem P1819903065177715597.correct : P1819903065177715597.Spec := by
  intro n
  simp only [A023210, Nat.add_sub_cancel]

end A023210

/-! ## A023210.P8522320248466063974

`p?[2*A024898(n+1)-3]`
-/

namespace A023210.P8522320248466063974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024898 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P8522320248466063974

namespace A023210

/-- `p?[2*A024898(n+1)-3]` -/
def P8522320248466063974.Spec : Prop :=
  ∀ n, P8522320248466063974.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P13152823240625945125

`∩[A000040(n+1), A024893(n+1)-2]`
-/

namespace A023210.P13152823240625945125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023210.P13152823240625945125

namespace A023210

/-- `∩[A000040(n+1), A024893(n+1)-2]` -/
def P13152823240625945125.Spec : Prop :=
  ∀ n, (P13152823240625945125.a n : ℤ) = A023210 (n + 1)

end A023210

/-! ## A023210.P564853081839488174

`p?[A024898(n+1)+A059325(n+1)-2]`
-/

namespace A023210.P564853081839488174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) + (A059325 (n + 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P564853081839488174

namespace A023210

/-- `p?[A024898(n+1)+A059325(n+1)-2]` -/
def P564853081839488174.Spec : Prop :=
  ∀ n, P564853081839488174.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P2084707636506264832

`∩[A001751(n+1), A024893(n+1)-2]`
-/

namespace A023210.P2084707636506264832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023210.P2084707636506264832

namespace A023210

/-- `∩[A001751(n+1), A024893(n+1)-2]` -/
def P2084707636506264832.Spec : Prop :=
  ∀ n, (P2084707636506264832.a n : ℤ) = A023210 (n + 1)

end A023210

/-! ## A023210.P11467939088863935855

`∩[A024893(n+1)-2, A038550(n+1)]`
-/

namespace A023210.P11467939088863935855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038550 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023210.P11467939088863935855

namespace A023210

/-- `∩[A024893(n+1)-2, A038550(n+1)]` -/
def P11467939088863935855.Spec : Prop :=
  ∀ n, (P11467939088863935855.a n : ℤ) = A023210 (n + 1)

end A023210

/-! ## A023210.P310891075481208604

`p?[(1-n)*A156706(n+1)]`
-/

namespace A023210.P310891075481208604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (n : ℤ)) * A156706 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P310891075481208604

namespace A023210

/-- `p?[(1-n)*A156706(n+1)]` -/
def P310891075481208604.Spec : Prop :=
  ∀ n, P310891075481208604.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P5326885460817773369

`p?[2*n-A167020(n+1)]`
-/

namespace A023210.P5326885460817773369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A167020 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P5326885460817773369

namespace A023210

/-- `p?[2*n-A167020(n+1)]` -/
def P5326885460817773369.Spec : Prop :=
  ∀ n, P5326885460817773369.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P7532739763609739264

`p?[A167020(n+2)+2*n]`
-/

namespace A023210.P7532739763609739264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (n + 2) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P7532739763609739264

namespace A023210

/-- `p?[A167020(n+2)+2*n]` -/
def P7532739763609739264.Spec : Prop :=
  ∀ n, P7532739763609739264.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P2457788739014306985

`p?[A156706(2*n+1)+A005843(n)]`
-/

namespace A023210.P2457788739014306985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (2 * n + 1) + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P2457788739014306985

namespace A023210

/-- `p?[A156706(2*n+1)+A005843(n)]` -/
def P2457788739014306985.Spec : Prop :=
  ∀ n, P2457788739014306985.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P17462938489991408368

`p?[A005843(n)-A075743(2*n+1)]`
-/

namespace A023210.P17462938489991408368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - A075743 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P17462938489991408368

namespace A023210

/-- `p?[A005843(n)-A075743(2*n+1)]` -/
def P17462938489991408368.Spec : Prop :=
  ∀ n, P17462938489991408368.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P4977479995299118234

`p?[2*n+1-A060324(2*(n+1))]`
-/

namespace A023210.P4977479995299118234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A060324 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P4977479995299118234

namespace A023210

/-- `p?[2*n+1-A060324(2*(n+1))]` -/
def P4977479995299118234.Spec : Prop :=
  ∀ n, P4977479995299118234.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P5539628591681035161

`p?[(A010051(3*n+5)+char[1])*(n-1)]`
-/

namespace A023210.P5539628591681035161
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010051 (3 * n + 5) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) * ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P5539628591681035161

namespace A023210

/-- `p?[(A010051(3*n+5)+char[1])*(n-1)]` -/
def P5539628591681035161.Spec : Prop :=
  ∀ n, P5539628591681035161.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P16151849241257673658

`p?[A014681(2*A059325(n+1))]`
-/

namespace A023210.P16151849241257673658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A059325 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P16151849241257673658

namespace A023210

/-- `p?[A014681(2*A059325(n+1))]` -/
def P16151849241257673658.Spec : Prop :=
  ∀ n, P16151849241257673658.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P2192392362719433952

`p?[A023443(2*A059325(n+1))]`
-/

namespace A023210.P2192392362719433952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (2 * A059325 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P2192392362719433952

namespace A023210

/-- `p?[A023443(2*A059325(n+1))]` -/
def P2192392362719433952.Spec : Prop :=
  ∀ n, P2192392362719433952.a n = A023210 (n + 1)

end A023210

/-! ## A023210.P16827123271442126039

`p?[A101443(A101448(n+1))]`
-/

namespace A023210.P16827123271442126039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101443 (A101448 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023210.P16827123271442126039

namespace A023210

/-- `p?[A101443(A101448(n+1))]` -/
def P16827123271442126039.Spec : Prop :=
  ∀ n, P16827123271442126039.a n = A023210 (n + 1)

end A023210

/-!
# A023211: Primes p such that 3*p + 10 is also prime.

The programs for A023211, the canonical program `A023211.P15510924814259681776` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023211 has offset 1).

The definition of A023211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2941 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023211.P15510924814259681776

`p?[n-A245838(n+2)²]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A023211

/-- `p?[n-A245838(n+2)²]` -/
def P15510924814259681776.Spec : Prop :=
  ∀ n, P15510924814259681776.a n = A023211 (n + 1)

theorem P15510924814259681776.correct : P15510924814259681776.Spec := by
  intro n
  simp only [A023211, Nat.add_sub_cancel]

end A023211

/-! ## A023211.P5741733810725241866

`p?[A089953(n+1)-1]`
-/

namespace A023211.P5741733810725241866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023211.P5741733810725241866

namespace A023211

/-- `p?[A089953(n+1)-1]` -/
def P5741733810725241866.Spec : Prop :=
  ∀ n, P5741733810725241866.a n = A023211 (n + 1)

end A023211

/-! ## A023211.P5103264555107467828

`p?[A034936(n+1)-2]`
-/

namespace A023211.P5103264555107467828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023211.P5103264555107467828

namespace A023211

/-- `p?[A034936(n+1)-2]` -/
def P5103264555107467828.Spec : Prop :=
  ∀ n, P5103264555107467828.a n = A023211 (n + 1)

end A023211

/-! ## A023211.P13161985716088175226

`p?[A024892(n+1)-3]`
-/

namespace A023211.P13161985716088175226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023211.P13161985716088175226

namespace A023211

/-- `p?[A024892(n+1)-3]` -/
def P13161985716088175226.Spec : Prop :=
  ∀ n, P13161985716088175226.a n = A023211 (n + 1)

end A023211

/-! ## A023211.P719915472325414350

`p?[A153183(n+1)-4]`
-/

namespace A023211.P719915472325414350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023211.P719915472325414350

namespace A023211

/-- `p?[A153183(n+1)-4]` -/
def P719915472325414350.Spec : Prop :=
  ∀ n, P719915472325414350.a n = A023211 (n + 1)

end A023211

/-! ## A023211.P10552928630786410761

`p?[2*A153218(n+1)-1]`
-/

namespace A023211.P10552928630786410761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153218 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023211.P10552928630786410761

namespace A023211

/-- `p?[2*A153218(n+1)-1]` -/
def P10552928630786410761.Spec : Prop :=
  ∀ n, P10552928630786410761.a n = A023211 (n + 1)

end A023211

/-! ## A023211.P14806863236306015763

`p?[Δ[A107303(n+1)]+a(n-1)]` with `a(0)=1`
-/

namespace A023211.P14806863236306015763
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107303 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f2 (n + 1) - f2 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023211.P14806863236306015763

namespace A023211

/-- `p?[Δ[A107303(n+1)]+a(n-1)]` -/
def P14806863236306015763.Spec : Prop :=
  ∀ n, P14806863236306015763.a n = A023211 (n + 1)

end A023211

/-! ## A023211.P18335187633032106719

`∩[A000040(n+1), A034936(n+1)-2]`
-/

namespace A023211.P18335187633032106719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023211.P18335187633032106719

namespace A023211

/-- `∩[A000040(n+1), A034936(n+1)-2]` -/
def P18335187633032106719.Spec : Prop :=
  ∀ n, (P18335187633032106719.a n : ℤ) = A023211 (n + 1)

end A023211

/-! ## A023211.P9273805744593046117

`∩[A034936(n+1)-2, A051948(n+1)]`
-/

namespace A023211.P9273805744593046117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023211.P9273805744593046117

namespace A023211

/-- `∩[A034936(n+1)-2, A051948(n+1)]` -/
def P9273805744593046117.Spec : Prop :=
  ∀ n, (P9273805744593046117.a n : ℤ) = A023211 (n + 1)

end A023211

/-! ## A023211.P3780946211967433529

`∩[A034936(n+1)-2, A053577(n+1)]`
-/

namespace A023211.P3780946211967433529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023211.P3780946211967433529

namespace A023211

/-- `∩[A034936(n+1)-2, A053577(n+1)]` -/
def P3780946211967433529.Spec : Prop :=
  ∀ n, (P3780946211967433529.a n : ℤ) = A023211 (n + 1)

end A023211

/-! ## A023211.P4489670540166228939

`∩[A034936(n+1)-2, A053813(n+1)]`
-/

namespace A023211.P4489670540166228939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023211.P4489670540166228939

namespace A023211

/-- `∩[A034936(n+1)-2, A053813(n+1)]` -/
def P4489670540166228939.Spec : Prop :=
  ∀ n, (P4489670540166228939.a n : ℤ) = A023211 (n + 1)

end A023211

/-! ## A023211.P14830907588743850757

`∩[A034936(n+1)-2, A065091(n+1)]`
-/

namespace A023211.P14830907588743850757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023211.P14830907588743850757

namespace A023211

/-- `∩[A034936(n+1)-2, A065091(n+1)]` -/
def P14830907588743850757.Spec : Prop :=
  ∀ n, (P14830907588743850757.a n : ℤ) = A023211 (n + 1)

end A023211

/-! ## A023211.P5851890940595183934

`p?[A153218(n+2)+A153218(n+2)-1]`
-/

namespace A023211.P5851890940595183934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 2) + (A153218 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023211.P5851890940595183934

namespace A023211

/-- `p?[A153218(n+2)+A153218(n+2)-1]` -/
def P5851890940595183934.Spec : Prop :=
  ∀ n, P5851890940595183934.a n = A023211 (n + 1)

end A023211

/-! ## A023211.P17261430713239068826

`∩[A001751(n+1), A034936(n+1)-2]`
-/

namespace A023211.P17261430713239068826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023211.P17261430713239068826

namespace A023211

/-- `∩[A001751(n+1), A034936(n+1)-2]` -/
def P17261430713239068826.Spec : Prop :=
  ∀ n, (P17261430713239068826.a n : ℤ) = A023211 (n + 1)

end A023211

/-! ## A023211.P12034566132897181186

`∩[A034936(n+1)-2, A058363(n+1)]`
-/

namespace A023211.P12034566132897181186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023211.P12034566132897181186

namespace A023211

/-- `∩[A034936(n+1)-2, A058363(n+1)]` -/
def P12034566132897181186.Spec : Prop :=
  ∀ n, (P12034566132897181186.a n : ℤ) = A023211 (n + 1)

end A023211

/-! ## A023211.P11537198837644575897

`p?[eq[1, A245838(n+1)]-2]`
-/

namespace A023211.P11537198837644575897
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023211.P11537198837644575897

namespace A023211

/-- `p?[eq[1, A245838(n+1)]-2]` -/
def P11537198837644575897.Spec : Prop :=
  ∀ n, P11537198837644575897.a n = A023211 (n + 1)

end A023211

/-! ## A023211.P2206626193281490961

`p?[eq[1, A156706(n+1)]-2]`
-/

namespace A023211.P2206626193281490961
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023211.P2206626193281490961

namespace A023211

/-- `p?[eq[1, A156706(n+1)]-2]` -/
def P2206626193281490961.Spec : Prop :=
  ∀ n, P2206626193281490961.a n = A023211 (n + 1)

end A023211

/-! ## A023211.P2865810158594008438

`p?[eq[1, A001222(3*(n+3)+1)]]`
-/

namespace A023211.P2865810158594008438
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (n + 3) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023211.P2865810158594008438

namespace A023211

/-- `p?[eq[1, A001222(3*(n+3)+1)]]` -/
def P2865810158594008438.Spec : Prop :=
  ∀ n, (P2865810158594008438.a n : ℤ) = A023211 (n + 1)

end A023211

/-! ## A023211.P16553995771287532824

`p?[eq[2, A000005(3*(n+3)+1)]]`
-/

namespace A023211.P16553995771287532824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (3 * (n + 3) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023211.P16553995771287532824

namespace A023211

/-- `p?[eq[2, A000005(3*(n+3)+1)]]` -/
def P16553995771287532824.Spec : Prop :=
  ∀ n, (P16553995771287532824.a n : ℤ) = A023211 (n + 1)

end A023211

/-! ## A023211.P7819615614510221820

`p?[n-A000040(A318503(3*n+4))]`
-/

namespace A023211.P7819615614510221820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000040 (A318503 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023211.P7819615614510221820

namespace A023211

/-- `p?[n-A000040(A318503(3*n+4))]` -/
def P7819615614510221820.Spec : Prop :=
  ∀ n, P7819615614510221820.a n = A023211 (n + 1)

end A023211

/-!
# A023212: Primes p such that 4*p+1 is also prime.

The programs for A023212, there is no canonical definition to state claims against.
-/

/-! ## A023212.P16917246529635568462

`floor(A090866(n+1)/4)`
-/

namespace A023212.P16917246529635568462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A090866 (n + 1) : ℚ) / 4⌋

end

end A023212.P16917246529635568462

/-! ## A023212.P2127159558468060690

`p?[A230076(n+1)]`
-/

namespace A023212.P2127159558468060690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023212.P2127159558468060690

/-! ## A023212.P5414641465854277515

`p?[floor(A186300(n+1)/2)]`
-/

namespace A023212.P5414641465854277515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186300 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023212.P5414641465854277515

/-! ## A023212.P7076238477896674554

`p?[2*A105133(n+1)+1]`
-/

namespace A023212.P7076238477896674554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105133 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023212.P7076238477896674554

/-! ## A023212.P1242098273128449423

`p?[2*A005125(n+1)-1]`
-/

namespace A023212.P1242098273128449423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005125 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023212.P1242098273128449423

/-! ## A023212.P5696494593190278651

`∩[A007645(n+1), A230076(n+1)]`
-/

namespace A023212.P5696494593190278651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P5696494593190278651

/-! ## A023212.P16275671452439180725

`∩[A040116(n+1), A230076(n+1)]`
-/

namespace A023212.P16275671452439180725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P16275671452439180725

/-! ## A023212.P15947906961217796338

`∩[A040159(n+1), A230076(n+1)]`
-/

namespace A023212.P15947906961217796338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P15947906961217796338

/-! ## A023212.P6540993569836046379

`∩[A040161(n+1), A230076(n+1)]`
-/

namespace A023212.P6540993569836046379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P6540993569836046379

/-! ## A023212.P17649867247176301772

`∩[A040165(n+1), A230076(n+1)]`
-/

namespace A023212.P17649867247176301772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P17649867247176301772

/-! ## A023212.P11075519419044645436

`∩[A040169(n+1), A230076(n+1)]`
-/

namespace A023212.P11075519419044645436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P11075519419044645436

/-! ## A023212.P13270600866227467178

`∩[A040171(n+1), A230076(n+1)]`
-/

namespace A023212.P13270600866227467178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P13270600866227467178

/-! ## A023212.P12891104882223819156

`∩[A040177(n+1), A230076(n+1)]`
-/

namespace A023212.P12891104882223819156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040177 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P12891104882223819156

/-! ## A023212.P8035313395900049683

`∩[A040179(n+1), A230076(n+1)]`
-/

namespace A023212.P8035313395900049683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P8035313395900049683

/-! ## A023212.P10832078299757071159

`∩[A040184(n+1), A230076(n+1)]`
-/

namespace A023212.P10832078299757071159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P10832078299757071159

/-! ## A023212.P8181575036431117058

`∩[A040970(n+1), A230076(n+1)]`
-/

namespace A023212.P8181575036431117058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P8181575036431117058

/-! ## A023212.P13682569627693872061

`∩[A040972(n+1), A230076(n+1)]`
-/

namespace A023212.P13682569627693872061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P13682569627693872061

/-! ## A023212.P1402592690733259720

`∩[A040974(n+1), A230076(n+1)]`
-/

namespace A023212.P1402592690733259720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P1402592690733259720

/-! ## A023212.P9135436880381019986

`∩[A040978(n+1), A230076(n+1)]`
-/

namespace A023212.P9135436880381019986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P9135436880381019986

/-! ## A023212.P322539944631054116

`∩[A040980(n+1), A230076(n+1)]`
-/

namespace A023212.P322539944631054116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023212.P322539944631054116

/-!
# A023213: Primes p such that 4p + 3 is prime.

The programs for A023213, there is no canonical definition to state claims against.
-/

/-! ## A023213.P4092604975902835436

`floor(A126330(n+1)/4)`
-/

namespace A023213.P4092604975902835436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A126330 (n + 1) : ℚ) / 4⌋

end

end A023213.P4092604975902835436

/-! ## A023213.P12668880821771627713

`(A372113(n+1)-1)/2`
-/

namespace A023213.P12668880821771627713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A372113 (n + 1) - 1 : ℚ) / 2

end

end A023213.P12668880821771627713

/-! ## A023213.P11539966440933924810

`(p?[4*A000040(n+1)+3]-3)/4`
-/

namespace A023213.P11539966440933924810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000040 (n + 1) + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 3 : ℚ) / 4

end

end A023213.P11539966440933924810

/-! ## A023213.P9195610910602552478

`p?[A095278(n+1)]`
-/

namespace A023213.P9195610910602552478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023213.P9195610910602552478

/-! ## A023213.P4433754746665424650

`p?[∑[A082076(n+1)]]`
-/

namespace A023213.P4433754746665424650
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082076 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023213.P4433754746665424650

/-! ## A023213.P14984210091144813338

`p?[A089986(n+1)+1]`
-/

namespace A023213.P14984210091144813338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023213.P14984210091144813338

/-! ## A023213.P6177212333615994251

`p?[A005099(n+1)-1]`
-/

namespace A023213.P6177212333615994251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023213.P6177212333615994251

/-! ## A023213.P8925853057710442586

`p?[A156287(n+1)-2]`
-/

namespace A023213.P8925853057710442586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023213.P8925853057710442586

/-! ## A023213.P3793613014717613690

`p?[floor(A002145(n+1)/4)]`
-/

namespace A023213.P3793613014717613690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002145 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023213.P3793613014717613690

/-! ## A023213.P15550702408622959965

`record[A006530(A095278(n+3))]`
-/

namespace A023213.P15550702408622959965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A095278 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023213.P15550702408622959965

/-! ## A023213.P14512075116126250172

`filter[A095278(n+2), A010051(#)]`
-/

namespace A023213.P14512075116126250172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023213.P14512075116126250172

/-! ## A023213.P8643933294750287726

`∩[A000040(n+1), A095278(n+1)]`
-/

namespace A023213.P8643933294750287726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023213.P8643933294750287726

/-! ## A023213.P18375349111487554990

`∩[A042966(n+1), A095278(n+1)]`
-/

namespace A023213.P18375349111487554990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023213.P18375349111487554990

/-! ## A023213.P10761702076007312935

`∩[A045344(n+1), A095278(n+1)]`
-/

namespace A023213.P10761702076007312935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023213.P10761702076007312935

/-! ## A023213.P5606804735288411657

`∩[A045348(n+1), A095278(n+1)]`
-/

namespace A023213.P5606804735288411657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023213.P5606804735288411657

/-! ## A023213.P8138391656483092182

`∩[A095278(n+1), A106843(n+1)]`
-/

namespace A023213.P8138391656483092182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023213.P8138391656483092182

/-! ## A023213.P8011299654610714272

`∩[A095278(n+1), A116974(n+1)]`
-/

namespace A023213.P8011299654610714272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023213.P8011299654610714272

/-! ## A023213.P1030468630401251094

`∩[A095278(n+1), A216881(n+1)]`
-/

namespace A023213.P1030468630401251094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023213.P1030468630401251094

/-! ## A023213.P6379896296765591031

`∩[A095278(n+1), A216882(n+1)]`
-/

namespace A023213.P6379896296765591031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023213.P6379896296765591031

/-!
# A023214: Primes p such that 4*p + 5 is also prime.

The programs for A023214, the canonical program `A023214.P17104771354373498863` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023214 has offset 1).

The definition of A023214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 881 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023214.P132979171223049527

`p?[A111215(n+1)]`
-/

namespace A023214.P132979171223049527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023214.P132979171223049527

namespace A023214

/-- `p?[A111215(n+1)]` -/
def P132979171223049527.Spec : Prop :=
  ∀ n, P132979171223049527.a n = A023214 (n + 1)

end A023214

/-! ## A023214.P15333954638904083935

`p?[∑[A082074(n+1)]]`
-/

namespace A023214.P15333954638904083935
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023214.P15333954638904083935

namespace A023214

/-- `p?[∑[A082074(n+1)]]` -/
def P15333954638904083935.Spec : Prop :=
  ∀ n, P15333954638904083935.a n = A023214 (n + 1)

end A023214

/-! ## A023214.P5669233155087991057

`p?[A111199(n+1)+1]`
-/

namespace A023214.P5669233155087991057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023214.P5669233155087991057

namespace A023214

/-- `p?[A111199(n+1)+1]` -/
def P5669233155087991057.Spec : Prop :=
  ∀ n, P5669233155087991057.a n = A023214 (n + 1)

end A023214

/-! ## A023214.P17104771354373498863

`p?[A005098(n+1)-1]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023214

/-- `p?[A005098(n+1)-1]` -/
def P17104771354373498863.Spec : Prop :=
  ∀ n, P17104771354373498863.a n = A023214 (n + 1)

theorem P17104771354373498863.correct : P17104771354373498863.Spec := by
  intro n
  simp only [A023214, Nat.add_sub_cancel]

end A023214

/-! ## A023214.P6135342569317803496

`p?[abs(floor((A002144(n+1)-2)/4))]`
-/

namespace A023214.P6135342569317803496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊(A002144 (n + 1) - 2 : ℚ) / 4⌋|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023214.P6135342569317803496

namespace A023214

/-- `p?[abs(floor((A002144(n+1)-2)/4))]` -/
def P6135342569317803496.Spec : Prop :=
  ∀ n, P6135342569317803496.a n = A023214 (n + 1)

end A023214

/-! ## A023214.P8931371480359229748

`record[A020639(A111215(n+2))]`
-/

namespace A023214.P8931371480359229748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A111215 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023214.P8931371480359229748

namespace A023214

/-- `record[A020639(A111215(n+2))]` -/
def P8931371480359229748.Spec : Prop :=
  ∀ n, P8931371480359229748.a n = A023214 (n + 1)

end A023214

/-! ## A023214.P14295644883380603371

`filter[A111215(n+2), A010051(#)]`
-/

namespace A023214.P14295644883380603371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023214.P14295644883380603371

namespace A023214

/-- `filter[A111215(n+2), A010051(#)]` -/
def P14295644883380603371.Spec : Prop :=
  ∀ n, P14295644883380603371.a n = A023214 (n + 1)

end A023214

/-! ## A023214.P4902863198503007426

`∩[A111215(n+1), A042990(n)]`
-/

namespace A023214.P4902863198503007426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023214.P4902863198503007426

namespace A023214

/-- `∩[A111215(n+1), A042990(n)]` -/
def P4902863198503007426.Spec : Prop :=
  ∀ n, (P4902863198503007426.a n : ℤ) = A023214 (n + 1)

end A023214

/-! ## A023214.P12085498461320110863

`∩[A111215(n+1), A140460(n)]`
-/

namespace A023214.P12085498461320110863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140460 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023214.P12085498461320110863

namespace A023214

/-- `∩[A111215(n+1), A140460(n)]` -/
def P12085498461320110863.Spec : Prop :=
  ∀ n, (P12085498461320110863.a n : ℤ) = A023214 (n + 1)

end A023214

/-! ## A023214.P10001269361789554497

`record[A020639(A111199(n+1)+1)]`
-/

namespace A023214.P10001269361789554497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A111199 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023214.P10001269361789554497

namespace A023214

/-- `record[A020639(A111199(n+1)+1)]` -/
def P10001269361789554497.Spec : Prop :=
  ∀ n, P10001269361789554497.a n = A023214 (n + 1)

end A023214

/-! ## A023214.P7957404054044786296

`record[A020639(A005098(n+2)-1)]`
-/

namespace A023214.P7957404054044786296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005098 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023214.P7957404054044786296

namespace A023214

/-- `record[A020639(A005098(n+2)-1)]` -/
def P7957404054044786296.Spec : Prop :=
  ∀ n, P7957404054044786296.a n = A023214 (n + 1)

end A023214

/-! ## A023214.P2381819902643182172

`∩[A000040(n+1), A111215(n+1)]`
-/

namespace A023214.P2381819902643182172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023214.P2381819902643182172

namespace A023214

/-- `∩[A000040(n+1), A111215(n+1)]` -/
def P2381819902643182172.Spec : Prop :=
  ∀ n, (P2381819902643182172.a n : ℤ) = A023214 (n + 1)

end A023214

/-! ## A023214.P8930268793040213710

`∩[A008578(n+1), A111215(n+1)]`
-/

namespace A023214.P8930268793040213710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023214.P8930268793040213710

namespace A023214

/-- `∩[A008578(n+1), A111215(n+1)]` -/
def P8930268793040213710.Spec : Prop :=
  ∀ n, (P8930268793040213710.a n : ℤ) = A023214 (n + 1)

end A023214

/-! ## A023214.P1103865458424078027

`∩[A025584(n+1), A111215(n+1)]`
-/

namespace A023214.P1103865458424078027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023214.P1103865458424078027

namespace A023214

/-- `∩[A025584(n+1), A111215(n+1)]` -/
def P1103865458424078027.Spec : Prop :=
  ∀ n, (P1103865458424078027.a n : ℤ) = A023214 (n + 1)

end A023214

/-! ## A023214.P5777073108021357635

`∩[A040028(n+1), A111215(n+1)]`
-/

namespace A023214.P5777073108021357635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023214.P5777073108021357635

namespace A023214

/-- `∩[A040028(n+1), A111215(n+1)]` -/
def P5777073108021357635.Spec : Prop :=
  ∀ n, (P5777073108021357635.a n : ℤ) = A023214 (n + 1)

end A023214

/-! ## A023214.P13043810184376602298

`∩[A040036(n+1), A111215(n+1)]`
-/

namespace A023214.P13043810184376602298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023214.P13043810184376602298

namespace A023214

/-- `∩[A040036(n+1), A111215(n+1)]` -/
def P13043810184376602298.Spec : Prop :=
  ∀ n, (P13043810184376602298.a n : ℤ) = A023214 (n + 1)

end A023214

/-! ## A023214.P610530807964987061

`∩[A040044(n+1), A111215(n+1)]`
-/

namespace A023214.P610530807964987061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023214.P610530807964987061

namespace A023214

/-- `∩[A040044(n+1), A111215(n+1)]` -/
def P610530807964987061.Spec : Prop :=
  ∀ n, (P610530807964987061.a n : ℤ) = A023214 (n + 1)

end A023214

/-! ## A023214.P187262597962502351

`∩[A040046(n+1), A111215(n+1)]`
-/

namespace A023214.P187262597962502351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023214.P187262597962502351

namespace A023214

/-- `∩[A040046(n+1), A111215(n+1)]` -/
def P187262597962502351.Spec : Prop :=
  ∀ n, (P187262597962502351.a n : ℤ) = A023214 (n + 1)

end A023214

/-! ## A023214.P4533328752680342893

`∩[A040049(n+1), A111215(n+1)]`
-/

namespace A023214.P4533328752680342893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023214.P4533328752680342893

namespace A023214

/-- `∩[A040049(n+1), A111215(n+1)]` -/
def P4533328752680342893.Spec : Prop :=
  ∀ n, (P4533328752680342893.a n : ℤ) = A023214 (n + 1)

end A023214

/-! ## A023214.P8795184686647964068

`∩[A040054(n+1), A111215(n+1)]`
-/

namespace A023214.P8795184686647964068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023214.P8795184686647964068

namespace A023214

/-- `∩[A040054(n+1), A111215(n+1)]` -/
def P8795184686647964068.Spec : Prop :=
  ∀ n, (P8795184686647964068.a n : ℤ) = A023214 (n + 1)

end A023214

/-!
# A023215: Primes p such that 4*p + 7 is also prime.

The programs for A023215, the canonical program `A023215.P13763397625159322075` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023215 has offset 1).

The definition of A023215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1491 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023215.P13763397625159322075

`p?[2*A005124(n+1)-1]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023215

/-- `p?[2*A005124(n+1)-1]` -/
def P13763397625159322075.Spec : Prop :=
  ∀ n, P13763397625159322075.a n = A023215 (n + 1)

theorem P13763397625159322075.correct : P13763397625159322075.Spec := by
  intro n
  simp only [A023215, Nat.add_sub_cancel]

end A023215

/-! ## A023215.P1978744575429104204

`p?[round(p?[4*n-1]/4)-2]`
-/

namespace A023215.P1978744575429104204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ) / 4) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023215.P1978744575429104204

namespace A023215

/-- `p?[round(p?[4*n-1]/4)-2]` -/
def P1978744575429104204.Spec : Prop :=
  ∀ n, P1978744575429104204.a n = A023215 (n + 1)

end A023215

/-! ## A023215.P5423983141915445603

`p?[A089986(n+1)]`
-/

namespace A023215.P5423983141915445603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023215.P5423983141915445603

namespace A023215

/-- `p?[A089986(n+1)]` -/
def P5423983141915445603.Spec : Prop :=
  ∀ n, P5423983141915445603.a n = A023215 (n + 1)

end A023215

/-! ## A023215.P5830198202743628841

`p?[∑[A082076(n+2)]]`
-/

namespace A023215.P5830198202743628841
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082076 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023215.P5830198202743628841

namespace A023215

/-- `p?[∑[A082076(n+2)]]` -/
def P5830198202743628841.Spec : Prop :=
  ∀ n, P5830198202743628841.a n = A023215 (n + 1)

end A023215

/-! ## A023215.P4722489378731058171

`p?[A095278(n+1)-1]`
-/

namespace A023215.P4722489378731058171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023215.P4722489378731058171

namespace A023215

/-- `p?[A095278(n+1)-1]` -/
def P4722489378731058171.Spec : Prop :=
  ∀ n, P4722489378731058171.a n = A023215 (n + 1)

end A023215

/-! ## A023215.P2269133593411296202

`p?[A005099(n+1)-2]`
-/

namespace A023215.P2269133593411296202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005099 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023215.P2269133593411296202

namespace A023215

/-- `p?[A005099(n+1)-2]` -/
def P2269133593411296202.Spec : Prop :=
  ∀ n, P2269133593411296202.a n = A023215 (n + 1)

end A023215

/-! ## A023215.P8741645538368303760

`p?[A156287(n+1)-3]`
-/

namespace A023215.P8741645538368303760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156287 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023215.P8741645538368303760

namespace A023215

/-- `p?[A156287(n+1)-3]` -/
def P8741645538368303760.Spec : Prop :=
  ∀ n, P8741645538368303760.a n = A023215 (n + 1)

end A023215

/-! ## A023215.P10553086471792279694

`filter[A089986(n+3), A010051(#)]`
-/

namespace A023215.P10553086471792279694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023215.P10553086471792279694

namespace A023215

/-- `filter[A089986(n+3), A010051(#)]` -/
def P10553086471792279694.Spec : Prop :=
  ∀ n, P10553086471792279694.a n = A023215 (n + 1)

end A023215

/-! ## A023215.P15606120817665584403

`filter[A089986(n+3), A353817(#)]`
-/

namespace A023215.P15606120817665584403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353817 (f1 j).toNat = 1) n)

end

end A023215.P15606120817665584403

namespace A023215

/-- `filter[A089986(n+3), A353817(#)]` -/
def P15606120817665584403.Spec : Prop :=
  ∀ n, P15606120817665584403.a n = A023215 (n + 1)

end A023215

/-! ## A023215.P1331832920907365899

`record[A020639(A095278(n+4)-1)]`
-/

namespace A023215.P1331832920907365899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A095278 (n + 4) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023215.P1331832920907365899

namespace A023215

/-- `record[A020639(A095278(n+4)-1)]` -/
def P1331832920907365899.Spec : Prop :=
  ∀ n, P1331832920907365899.a n = A023215 (n + 1)

end A023215

/-! ## A023215.P5979932348519000294

`∩[A000040(n+1), A089986(n+1)]`
-/

namespace A023215.P5979932348519000294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023215.P5979932348519000294

namespace A023215

/-- `∩[A000040(n+1), A089986(n+1)]` -/
def P5979932348519000294.Spec : Prop :=
  ∀ n, (P5979932348519000294.a n : ℤ) = A023215 (n + 1)

end A023215

/-! ## A023215.P5338624691799069926

`∩[A004139(n+1), A089986(n+1)]`
-/

namespace A023215.P5338624691799069926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023215.P5338624691799069926

namespace A023215

/-- `∩[A004139(n+1), A089986(n+1)]` -/
def P5338624691799069926.Spec : Prop :=
  ∀ n, (P5338624691799069926.a n : ℤ) = A023215 (n + 1)

end A023215

/-! ## A023215.P5355685058454603320

`∩[A007645(n+1), A089986(n+1)]`
-/

namespace A023215.P5355685058454603320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023215.P5355685058454603320

namespace A023215

/-- `∩[A007645(n+1), A089986(n+1)]` -/
def P5355685058454603320.Spec : Prop :=
  ∀ n, (P5355685058454603320.a n : ℤ) = A023215 (n + 1)

end A023215

/-! ## A023215.P3673398497569159790

`∩[A040116(n+1), A089986(n+1)]`
-/

namespace A023215.P3673398497569159790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023215.P3673398497569159790

namespace A023215

/-- `∩[A040116(n+1), A089986(n+1)]` -/
def P3673398497569159790.Spec : Prop :=
  ∀ n, (P3673398497569159790.a n : ℤ) = A023215 (n + 1)

end A023215

/-! ## A023215.P11857474727480659643

`∩[A045319(n+1), A089986(n+1)]`
-/

namespace A023215.P11857474727480659643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023215.P11857474727480659643

namespace A023215

/-- `∩[A045319(n+1), A089986(n+1)]` -/
def P11857474727480659643.Spec : Prop :=
  ∀ n, (P11857474727480659643.a n : ℤ) = A023215 (n + 1)

end A023215

/-! ## A023215.P11940035263527532826

`∩[A045331(n+1), A089986(n+1)]`
-/

namespace A023215.P11940035263527532826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023215.P11940035263527532826

namespace A023215

/-- `∩[A045331(n+1), A089986(n+1)]` -/
def P11940035263527532826.Spec : Prop :=
  ∀ n, (P11940035263527532826.a n : ℤ) = A023215 (n + 1)

end A023215

/-! ## A023215.P6944043488351702123

`∩[A045405(n+1), A089986(n+1)]`
-/

namespace A023215.P6944043488351702123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023215.P6944043488351702123

namespace A023215

/-- `∩[A045405(n+1), A089986(n+1)]` -/
def P6944043488351702123.Spec : Prop :=
  ∀ n, (P6944043488351702123.a n : ℤ) = A023215 (n + 1)

end A023215

/-!
# A023216: Primes p such that 4*p + 9 is also prime.

The programs for A023216, the canonical program `A023216.P12727548628450943701` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023216 has offset 1).

The definition of A023216 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1364 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023216.P12727548628450943701

`p?[floor(p?[2*n+2*n+1]/4)-2]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A023216

/-- `p?[floor(p?[2*n+2*n+1]/4)-2]` -/
def P12727548628450943701.Spec : Prop :=
  ∀ n, P12727548628450943701.a n = A023216 (n + 1)

theorem P12727548628450943701.correct : P12727548628450943701.Spec := by
  intro n
  simp only [A023216, Nat.add_sub_cancel]

end A023216

/-! ## A023216.P10764483910969852254

`p?[A111199(n+1)]`
-/

namespace A023216.P10764483910969852254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023216.P10764483910969852254

namespace A023216

/-- `p?[A111199(n+1)]` -/
def P10764483910969852254.Spec : Prop :=
  ∀ n, P10764483910969852254.a n = A023216 (n + 1)

end A023216

/-! ## A023216.P8177901659595752490

`p?[A111215(n+1)-1]`
-/

namespace A023216.P8177901659595752490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023216.P8177901659595752490

namespace A023216

/-- `p?[A111215(n+1)-1]` -/
def P8177901659595752490.Spec : Prop :=
  ∀ n, P8177901659595752490.a n = A023216 (n + 1)

end A023216

/-! ## A023216.P13857444312430507032

`p?[A005098(n+1)-2]`
-/

namespace A023216.P13857444312430507032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023216.P13857444312430507032

namespace A023216

/-- `p?[A005098(n+1)-2]` -/
def P13857444312430507032.Spec : Prop :=
  ∀ n, P13857444312430507032.a n = A023216 (n + 1)

end A023216

/-! ## A023216.P6457381095971031583

`p?[∑[A082074(n+1)]-1]`
-/

namespace A023216.P6457381095971031583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023216.P6457381095971031583

namespace A023216

/-- `p?[∑[A082074(n+1)]-1]` -/
def P6457381095971031583.Spec : Prop :=
  ∀ n, P6457381095971031583.a n = A023216 (n + 1)

end A023216

/-! ## A023216.P11200967433433861233

`p?[abs(2-floor(A002144(n+1)/4))]`
-/

namespace A023216.P11200967433433861233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - ⌊(A002144 (n + 1) : ℚ) / 4⌋|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023216.P11200967433433861233

namespace A023216

/-- `p?[abs(2-floor(A002144(n+1)/4))]` -/
def P11200967433433861233.Spec : Prop :=
  ∀ n, P11200967433433861233.a n = A023216 (n + 1)

end A023216

/-! ## A023216.P1993533696699428936

`record[A006530(A111199(n+2))]`
-/

namespace A023216.P1993533696699428936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A111199 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023216.P1993533696699428936

namespace A023216

/-- `record[A006530(A111199(n+2))]` -/
def P1993533696699428936.Spec : Prop :=
  ∀ n, P1993533696699428936.a n = A023216 (n + 1)

end A023216

/-! ## A023216.P11210038207694636480

`filter[A111199(n+1), A010051(#)]`
-/

namespace A023216.P11210038207694636480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023216.P11210038207694636480

namespace A023216

/-- `filter[A111199(n+1), A010051(#)]` -/
def P11210038207694636480.Spec : Prop :=
  ∀ n, P11210038207694636480.a n = A023216 (n + 1)

end A023216

/-! ## A023216.P543452657012266926

`∩[A000040(n+1), A111199(n+1)]`
-/

namespace A023216.P543452657012266926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023216.P543452657012266926

namespace A023216

/-- `∩[A000040(n+1), A111199(n+1)]` -/
def P543452657012266926.Spec : Prop :=
  ∀ n, (P543452657012266926.a n : ℤ) = A023216 (n + 1)

end A023216

/-! ## A023216.P2585942530430767406

`∩[A042986(n+1), A111199(n+1)]`
-/

namespace A023216.P2585942530430767406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023216.P2585942530430767406

namespace A023216

/-- `∩[A042986(n+1), A111199(n+1)]` -/
def P2585942530430767406.Spec : Prop :=
  ∀ n, (P2585942530430767406.a n : ℤ) = A023216 (n + 1)

end A023216

/-! ## A023216.P18023906249429343965

`∩[A045344(n+1), A111199(n+1)]`
-/

namespace A023216.P18023906249429343965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023216.P18023906249429343965

namespace A023216

/-- `∩[A045344(n+1), A111199(n+1)]` -/
def P18023906249429343965.Spec : Prop :=
  ∀ n, (P18023906249429343965.a n : ℤ) = A023216 (n + 1)

end A023216

/-! ## A023216.P7703605237509483665

`∩[A045346(n+1), A111199(n+1)]`
-/

namespace A023216.P7703605237509483665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023216.P7703605237509483665

namespace A023216

/-- `∩[A045346(n+1), A111199(n+1)]` -/
def P7703605237509483665.Spec : Prop :=
  ∀ n, (P7703605237509483665.a n : ℤ) = A023216 (n + 1)

end A023216

/-! ## A023216.P13474669864782482611

`∩[A049545(n+1), A111199(n+1)]`
-/

namespace A023216.P13474669864782482611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023216.P13474669864782482611

namespace A023216

/-- `∩[A049545(n+1), A111199(n+1)]` -/
def P13474669864782482611.Spec : Prop :=
  ∀ n, (P13474669864782482611.a n : ℤ) = A023216 (n + 1)

end A023216

/-! ## A023216.P2898110030701329270

`∩[A106843(n+1), A111199(n+1)]`
-/

namespace A023216.P2898110030701329270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023216.P2898110030701329270

namespace A023216

/-- `∩[A106843(n+1), A111199(n+1)]` -/
def P2898110030701329270.Spec : Prop :=
  ∀ n, (P2898110030701329270.a n : ℤ) = A023216 (n + 1)

end A023216

/-! ## A023216.P1727709313829218845

`∩[A111199(n+1), A116974(n+1)]`
-/

namespace A023216.P1727709313829218845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023216.P1727709313829218845

namespace A023216

/-- `∩[A111199(n+1), A116974(n+1)]` -/
def P1727709313829218845.Spec : Prop :=
  ∀ n, (P1727709313829218845.a n : ℤ) = A023216 (n + 1)

end A023216

/-! ## A023216.P8010593783127379973

`∩[A111199(n+1), A174219(n+1)]`
-/

namespace A023216.P8010593783127379973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023216.P8010593783127379973

namespace A023216

/-- `∩[A111199(n+1), A174219(n+1)]` -/
def P8010593783127379973.Spec : Prop :=
  ∀ n, (P8010593783127379973.a n : ℤ) = A023216 (n + 1)

end A023216

/-! ## A023216.P14034841339515920982

`∩[A111199(n+1), A175787(n+1)]`
-/

namespace A023216.P14034841339515920982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023216.P14034841339515920982

namespace A023216

/-- `∩[A111199(n+1), A175787(n+1)]` -/
def P14034841339515920982.Spec : Prop :=
  ∀ n, (P14034841339515920982.a n : ℤ) = A023216 (n + 1)

end A023216

/-! ## A023216.P3822533367091275045

`∩[A111199(n+1), A182986(n+1)]`
-/

namespace A023216.P3822533367091275045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023216.P3822533367091275045

namespace A023216

/-- `∩[A111199(n+1), A182986(n+1)]` -/
def P3822533367091275045.Spec : Prop :=
  ∀ n, (P3822533367091275045.a n : ℤ) = A023216 (n + 1)

end A023216

/-! ## A023216.P643584366071753479

`∩[A111199(n+1), A251595(n+1)]`
-/

namespace A023216.P643584366071753479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023216.P643584366071753479

namespace A023216

/-- `∩[A111199(n+1), A251595(n+1)]` -/
def P643584366071753479.Spec : Prop :=
  ∀ n, (P643584366071753479.a n : ℤ) = A023216 (n + 1)

end A023216

/-! ## A023216.P12913346173893681386

`∩[A348283(n+1), A111199(n+1)]`
-/

namespace A023216.P12913346173893681386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023216.P12913346173893681386

namespace A023216

/-- `∩[A348283(n+1), A111199(n+1)]` -/
def P12913346173893681386.Spec : Prop :=
  ∀ n, (P12913346173893681386.a n : ℤ) = A023216 (n + 1)

end A023216

/-!
# A023217: Primes p such that 5*p + 2 is also prime.

The programs for A023217, the canonical program `A023217.P2024308431007413825` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023217 has offset 1).

The definition of A023217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9573 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023217.P2024308431007413825

`p?[floor(A030432(n+1)/5)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023217

/-- `p?[floor(A030432(n+1)/5)]` -/
def P2024308431007413825.Spec : Prop :=
  ∀ n, P2024308431007413825.a n = A023217 (n + 1)

theorem P2024308431007413825.correct : P2024308431007413825.Spec := by
  intro n
  simp only [A023217, Nat.add_sub_cancel]

end A023217

/-! ## A023217.P18352733174138464301

`p?[A111223(n+1)]`
-/

namespace A023217.P18352733174138464301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023217.P18352733174138464301

namespace A023217

/-- `p?[A111223(n+1)]` -/
def P18352733174138464301.Spec : Prop :=
  ∀ n, P18352733174138464301.a n = A023217 (n + 1)

end A023217

/-! ## A023217.P15367627553978616211

`p?[A111224(n+1)+1]`
-/

namespace A023217.P15367627553978616211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111224 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023217.P15367627553978616211

namespace A023217

/-- `p?[A111224(n+1)+1]` -/
def P15367627553978616211.Spec : Prop :=
  ∀ n, P15367627553978616211.a n = A023217 (n + 1)

end A023217

/-! ## A023217.P1032357069894713848

`p?[A024895(n+1)-1]`
-/

namespace A023217.P1032357069894713848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024895 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023217.P1032357069894713848

namespace A023217

/-- `p?[A024895(n+1)-1]` -/
def P1032357069894713848.Spec : Prop :=
  ∀ n, P1032357069894713848.a n = A023217 (n + 1)

end A023217

/-! ## A023217.P11944602039329392149

`p?[round(A106952(n+1)/5)]`
-/

namespace A023217.P11944602039329392149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A106952 (n + 1) : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023217.P11944602039329392149

namespace A023217

/-- `p?[round(A106952(n+1)/5)]` -/
def P11944602039329392149.Spec : Prop :=
  ∀ n, P11944602039329392149.a n = A023217 (n + 1)

end A023217

/-! ## A023217.P3990678519137799336

`p?[2*A102342(n+1)+1]`
-/

namespace A023217.P3990678519137799336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102342 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023217.P3990678519137799336

namespace A023217

/-- `p?[2*A102342(n+1)+1]` -/
def P3990678519137799336.Spec : Prop :=
  ∀ n, P3990678519137799336.a n = A023217 (n + 1)

end A023217

/-! ## A023217.P15471540659312188349

`p?[2*A024914(n+1)-1]`
-/

namespace A023217.P15471540659312188349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024914 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023217.P15471540659312188349

namespace A023217

/-- `p?[2*A024914(n+1)-1]` -/
def P15471540659312188349.Spec : Prop :=
  ∀ n, P15471540659312188349.a n = A023217 (n + 1)

end A023217

/-! ## A023217.P4009665903799914142

`record[A006530(A111223(n+3))]`
-/

namespace A023217.P4009665903799914142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A111223 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023217.P4009665903799914142

namespace A023217

/-- `record[A006530(A111223(n+3))]` -/
def P4009665903799914142.Spec : Prop :=
  ∀ n, P4009665903799914142.a n = A023217 (n + 1)

end A023217

/-! ## A023217.P3510295832205168777

`filter[A111223(n+2), A010051(#)]`
-/

namespace A023217.P3510295832205168777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023217.P3510295832205168777

namespace A023217

/-- `filter[A111223(n+2), A010051(#)]` -/
def P3510295832205168777.Spec : Prop :=
  ∀ n, P3510295832205168777.a n = A023217 (n + 1)

end A023217

/-! ## A023217.P10480549904536661001

`filter[A111223(n+2), A379969(#)]`
-/

namespace A023217.P10480549904536661001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A023217.P10480549904536661001

namespace A023217

/-- `filter[A111223(n+2), A379969(#)]` -/
def P10480549904536661001.Spec : Prop :=
  ∀ n, P10480549904536661001.a n = A023217 (n + 1)

end A023217

/-! ## A023217.P3755008568100433970

`filter[A111223(n+3), A365716(#)]`
-/

namespace A023217.P3755008568100433970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A023217.P3755008568100433970

namespace A023217

/-- `filter[A111223(n+3), A365716(#)]` -/
def P3755008568100433970.Spec : Prop :=
  ∀ n, P3755008568100433970.a n = A023217 (n + 1)

end A023217

/-! ## A023217.P12506511958858908460

`filter[A111223(n+3), A380467(#)]`
-/

namespace A023217.P12506511958858908460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A023217.P12506511958858908460

namespace A023217

/-- `filter[A111223(n+3), A380467(#)]` -/
def P12506511958858908460.Spec : Prop :=
  ∀ n, P12506511958858908460.a n = A023217 (n + 1)

end A023217

/-! ## A023217.P9942733353982492703

`∩[A000040(n+1), A111223(n+1)]`
-/

namespace A023217.P9942733353982492703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023217.P9942733353982492703

namespace A023217

/-- `∩[A000040(n+1), A111223(n+1)]` -/
def P9942733353982492703.Spec : Prop :=
  ∀ n, (P9942733353982492703.a n : ℤ) = A023217 (n + 1)

end A023217

/-! ## A023217.P10269552547769507898

`∩[A004139(n+1), A111223(n+1)]`
-/

namespace A023217.P10269552547769507898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023217.P10269552547769507898

namespace A023217

/-- `∩[A004139(n+1), A111223(n+1)]` -/
def P10269552547769507898.Spec : Prop :=
  ∀ n, (P10269552547769507898.a n : ℤ) = A023217 (n + 1)

end A023217

/-! ## A023217.P12703999652632545367

`∩[A007645(n+1), A111223(n+1)]`
-/

namespace A023217.P12703999652632545367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023217.P12703999652632545367

namespace A023217

/-- `∩[A007645(n+1), A111223(n+1)]` -/
def P12703999652632545367.Spec : Prop :=
  ∀ n, (P12703999652632545367.a n : ℤ) = A023217 (n + 1)

end A023217

/-! ## A023217.P15895312364909988190

`∩[A040116(n+1), A111223(n+1)]`
-/

namespace A023217.P15895312364909988190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023217.P15895312364909988190

namespace A023217

/-- `∩[A040116(n+1), A111223(n+1)]` -/
def P15895312364909988190.Spec : Prop :=
  ∀ n, (P15895312364909988190.a n : ℤ) = A023217 (n + 1)

end A023217

/-! ## A023217.P16913398746128152049

`∩[A042966(n+1), A111223(n+1)]`
-/

namespace A023217.P16913398746128152049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023217.P16913398746128152049

namespace A023217

/-- `∩[A042966(n+1), A111223(n+1)]` -/
def P16913398746128152049.Spec : Prop :=
  ∀ n, (P16913398746128152049.a n : ℤ) = A023217 (n + 1)

end A023217

/-! ## A023217.P413340734448273858

`∩[A045319(n+1), A111223(n+1)]`
-/

namespace A023217.P413340734448273858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023217.P413340734448273858

namespace A023217

/-- `∩[A045319(n+1), A111223(n+1)]` -/
def P413340734448273858.Spec : Prop :=
  ∀ n, (P413340734448273858.a n : ℤ) = A023217 (n + 1)

end A023217

/-! ## A023217.P2854176581745036793

`∩[A045331(n+1), A111223(n+1)]`
-/

namespace A023217.P2854176581745036793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023217.P2854176581745036793

namespace A023217

/-- `∩[A045331(n+1), A111223(n+1)]` -/
def P2854176581745036793.Spec : Prop :=
  ∀ n, (P2854176581745036793.a n : ℤ) = A023217 (n + 1)

end A023217

/-! ## A023217.P10531785577036866068

`∩[A051948(n+1), A111223(n+1)]`
-/

namespace A023217.P10531785577036866068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111223 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023217.P10531785577036866068

namespace A023217

/-- `∩[A051948(n+1), A111223(n+1)]` -/
def P10531785577036866068.Spec : Prop :=
  ∀ n, (P10531785577036866068.a n : ℤ) = A023217 (n + 1)

end A023217

/-!
# A023218: Primes p such that 5*p + 4 is also prime.

The programs for A023218, the canonical program `A023218.P971650435398565174` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023218 has offset 1).

The definition of A023218 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9748 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023218.P12726019239496486049

`floor(A136071(n+1)/5)`
-/

namespace A023218.P12726019239496486049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136071 (n + 1) : ℚ) / 5⌋

end

end A023218.P12726019239496486049

namespace A023218

/-- `floor(A136071(n+1)/5)` -/
def P12726019239496486049.Spec : Prop :=
  ∀ n, P12726019239496486049.a n = A023218 (n + 1)

end A023218

/-! ## A023218.P971650435398565174

`p?[floor(A030433(n+1)/5)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023218

/-- `p?[floor(A030433(n+1)/5)]` -/
def P971650435398565174.Spec : Prop :=
  ∀ n, P971650435398565174.a n = A023218 (n + 1)

theorem P971650435398565174.correct : P971650435398565174.Spec := by
  intro n
  simp only [A023218, Nat.add_sub_cancel]

end A023218

/-! ## A023218.P7825575326242920109

`record[A006530((A030433(n+1)-4)/5)]`
-/

namespace A023218.P7825575326242920109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A030433 (n + 1) - 4 : ℚ) / 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023218.P7825575326242920109

namespace A023218

/-- `record[A006530((A030433(n+1)-4)/5)]` -/
def P7825575326242920109.Spec : Prop :=
  ∀ n, P7825575326242920109.a n = A023218 (n + 1)

end A023218

/-! ## A023218.P14235605971296113088

`record[A020639((A030433(n+1)-4)/5)]`
-/

namespace A023218.P14235605971296113088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A030433 (n + 1) - 4 : ℚ) / 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023218.P14235605971296113088

namespace A023218

/-- `record[A020639((A030433(n+1)-4)/5)]` -/
def P14235605971296113088.Spec : Prop :=
  ∀ n, P14235605971296113088.a n = A023218 (n + 1)

end A023218

/-! ## A023218.P8435983126420836434

`p?[A024897(n+1)]`
-/

namespace A023218.P8435983126420836434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023218.P8435983126420836434

namespace A023218

/-- `p?[A024897(n+1)]` -/
def P8435983126420836434.Spec : Prop :=
  ∀ n, P8435983126420836434.a n = A023218 (n + 1)

end A023218

/-! ## A023218.P17970935291238682590

`p?[A111230(n+1)+2]`
-/

namespace A023218.P17970935291238682590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111230 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023218.P17970935291238682590

namespace A023218

/-- `p?[A111230(n+1)+2]` -/
def P17970935291238682590.Spec : Prop :=
  ∀ n, P17970935291238682590.a n = A023218 (n + 1)

end A023218

/-! ## A023218.P18434835474287944486

`p?[A153355(n+1)-1]`
-/

namespace A023218.P18434835474287944486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153355 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023218.P18434835474287944486

namespace A023218

/-- `p?[A153355(n+1)-1]` -/
def P18434835474287944486.Spec : Prop :=
  ∀ n, P18434835474287944486.a n = A023218 (n + 1)

end A023218

/-! ## A023218.P12309929998003356978

`p?[2*A102700(n+1)+1]`
-/

namespace A023218.P12309929998003356978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102700 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023218.P12309929998003356978

namespace A023218

/-- `p?[2*A102700(n+1)+1]` -/
def P12309929998003356978.Spec : Prop :=
  ∀ n, P12309929998003356978.a n = A023218 (n + 1)

end A023218

/-! ## A023218.P4718311907654930723

`p?[2*A105042(n+1)-1]`
-/

namespace A023218.P4718311907654930723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105042 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023218.P4718311907654930723

namespace A023218

/-- `p?[2*A105042(n+1)-1]` -/
def P4718311907654930723.Spec : Prop :=
  ∀ n, P4718311907654930723.a n = A023218 (n + 1)

end A023218

/-! ## A023218.P11320297918513474234

`filter[A024897(n+1), A010051(#)]`
-/

namespace A023218.P11320297918513474234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023218.P11320297918513474234

namespace A023218

/-- `filter[A024897(n+1), A010051(#)]` -/
def P11320297918513474234.Spec : Prop :=
  ∀ n, P11320297918513474234.a n = A023218 (n + 1)

end A023218

/-! ## A023218.P3849098010296679399

`filter[A024897(n+1), A365716(#)]`
-/

namespace A023218.P3849098010296679399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A023218.P3849098010296679399

namespace A023218

/-- `filter[A024897(n+1), A365716(#)]` -/
def P3849098010296679399.Spec : Prop :=
  ∀ n, P3849098010296679399.a n = A023218 (n + 1)

end A023218

/-! ## A023218.P13507901650124182757

`filter[A024897(n+1), A379969(#)]`
-/

namespace A023218.P13507901650124182757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A023218.P13507901650124182757

namespace A023218

/-- `filter[A024897(n+1), A379969(#)]` -/
def P13507901650124182757.Spec : Prop :=
  ∀ n, P13507901650124182757.a n = A023218 (n + 1)

end A023218

/-! ## A023218.P9365512380950688512

`filter[A024897(n+1), A380467(#)]`
-/

namespace A023218.P9365512380950688512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A023218.P9365512380950688512

namespace A023218

/-- `filter[A024897(n+1), A380467(#)]` -/
def P9365512380950688512.Spec : Prop :=
  ∀ n, P9365512380950688512.a n = A023218 (n + 1)

end A023218

/-! ## A023218.P6594903063580527137

`record[A006530(A153355(n+1)-1)]`
-/

namespace A023218.P6594903063580527137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153355 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023218.P6594903063580527137

namespace A023218

/-- `record[A006530(A153355(n+1)-1)]` -/
def P6594903063580527137.Spec : Prop :=
  ∀ n, P6594903063580527137.a n = A023218 (n + 1)

end A023218

/-! ## A023218.P7889574594887350090

`∩[A000040(n+1), A024897(n+1)]`
-/

namespace A023218.P7889574594887350090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023218.P7889574594887350090

namespace A023218

/-- `∩[A000040(n+1), A024897(n+1)]` -/
def P7889574594887350090.Spec : Prop :=
  ∀ n, (P7889574594887350090.a n : ℤ) = A023218 (n + 1)

end A023218

/-! ## A023218.P5797162502860555175

`∩[A000430(n+1), A024897(n+1)]`
-/

namespace A023218.P5797162502860555175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023218.P5797162502860555175

namespace A023218

/-- `∩[A000430(n+1), A024897(n+1)]` -/
def P5797162502860555175.Spec : Prop :=
  ∀ n, (P5797162502860555175.a n : ℤ) = A023218 (n + 1)

end A023218

/-! ## A023218.P3657811575191372080

`∩[A006005(n+1), A024897(n+1)]`
-/

namespace A023218.P3657811575191372080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023218.P3657811575191372080

namespace A023218

/-- `∩[A006005(n+1), A024897(n+1)]` -/
def P3657811575191372080.Spec : Prop :=
  ∀ n, (P3657811575191372080.a n : ℤ) = A023218 (n + 1)

end A023218

/-! ## A023218.P8538275013918758585

`∩[A008578(n+1), A024897(n+1)]`
-/

namespace A023218.P8538275013918758585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023218.P8538275013918758585

namespace A023218

/-- `∩[A008578(n+1), A024897(n+1)]` -/
def P8538275013918758585.Spec : Prop :=
  ∀ n, (P8538275013918758585.a n : ℤ) = A023218 (n + 1)

end A023218

/-! ## A023218.P1128666504246204626

`∩[A024897(n+1), A033946(n+1)]`
-/

namespace A023218.P1128666504246204626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023218.P1128666504246204626

namespace A023218

/-- `∩[A024897(n+1), A033946(n+1)]` -/
def P1128666504246204626.Spec : Prop :=
  ∀ n, (P1128666504246204626.a n : ℤ) = A023218 (n + 1)

end A023218

/-! ## A023218.P13567503116689985407

`∩[A024897(n+1), A040028(n+1)]`
-/

namespace A023218.P13567503116689985407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023218.P13567503116689985407

namespace A023218

/-- `∩[A024897(n+1), A040028(n+1)]` -/
def P13567503116689985407.Spec : Prop :=
  ∀ n, (P13567503116689985407.a n : ℤ) = A023218 (n + 1)

end A023218

/-!
# A023219: Primes p such that 5p+6 is a prime.

The programs for A023219, the canonical program `A023219.P7384479823826026076` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023219 has offset 1).

The definition of A023219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2742 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023219.P7323834009808685666

`A000040(A090161(n+1))`
-/

namespace A023219.P7323834009808685666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A090161 (n + 1)).toNat

end

end A023219.P7323834009808685666

namespace A023219

/-- `A000040(A090161(n+1))` -/
def P7323834009808685666.Spec : Prop :=
  ∀ n, P7323834009808685666.a n = A023219 (n + 1)

end A023219

/-! ## A023219.P2347233366177097257

`p?[A081759(n+1)]`
-/

namespace A023219.P2347233366177097257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023219.P2347233366177097257

namespace A023219

/-- `p?[A081759(n+1)]` -/
def P2347233366177097257.Spec : Prop :=
  ∀ n, P2347233366177097257.a n = A023219 (n + 1)

end A023219

/-! ## A023219.P7384479823826026076

`p?[A024894(n+1)-1]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023219

/-- `p?[A024894(n+1)-1]` -/
def P7384479823826026076.Spec : Prop :=
  ∀ n, P7384479823826026076.a n = A023219 (n + 1)

theorem P7384479823826026076.correct : P7384479823826026076.Spec := by
  intro n
  simp only [A023219, Nat.add_sub_cancel]

end A023219

/-! ## A023219.P8703103499820905062

`p?[2*A126785(n+1)+1]`
-/

namespace A023219.P8703103499820905062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126785 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023219.P8703103499820905062

namespace A023219

/-- `p?[2*A126785(n+1)+1]` -/
def P8703103499820905062.Spec : Prop :=
  ∀ n, P8703103499820905062.a n = A023219 (n + 1)

end A023219

/-! ## A023219.P12756409461108399317

`p?[2*A024912(n+1)-1]`
-/

namespace A023219.P12756409461108399317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024912 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023219.P12756409461108399317

namespace A023219

/-- `p?[2*A024912(n+1)-1]` -/
def P12756409461108399317.Spec : Prop :=
  ∀ n, P12756409461108399317.a n = A023219 (n + 1)

end A023219

/-! ## A023219.P8304479234584962976

`record[A006530(A081759(n+2))]`
-/

namespace A023219.P8304479234584962976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A081759 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023219.P8304479234584962976

namespace A023219

/-- `record[A006530(A081759(n+2))]` -/
def P8304479234584962976.Spec : Prop :=
  ∀ n, P8304479234584962976.a n = A023219 (n + 1)

end A023219

/-! ## A023219.P17143123878968858231

`filter[A081759(n+1), A010051(#)]`
-/

namespace A023219.P17143123878968858231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023219.P17143123878968858231

namespace A023219

/-- `filter[A081759(n+1), A010051(#)]` -/
def P17143123878968858231.Spec : Prop :=
  ∀ n, P17143123878968858231.a n = A023219 (n + 1)

end A023219

/-! ## A023219.P5770887035295616612

`filter[A081759(n+1), A379969(#)]`
-/

namespace A023219.P5770887035295616612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A023219.P5770887035295616612

namespace A023219

/-- `filter[A081759(n+1), A379969(#)]` -/
def P5770887035295616612.Spec : Prop :=
  ∀ n, P5770887035295616612.a n = A023219 (n + 1)

end A023219

/-! ## A023219.P11362954714766024292

`∩[A000040(n+1), A081759(n+1)]`
-/

namespace A023219.P11362954714766024292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023219.P11362954714766024292

namespace A023219

/-- `∩[A000040(n+1), A081759(n+1)]` -/
def P11362954714766024292.Spec : Prop :=
  ∀ n, (P11362954714766024292.a n : ℤ) = A023219 (n + 1)

end A023219

/-! ## A023219.P5677829655467032698

`∩[A045344(n+1), A081759(n+1)]`
-/

namespace A023219.P5677829655467032698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023219.P5677829655467032698

namespace A023219

/-- `∩[A045344(n+1), A081759(n+1)]` -/
def P5677829655467032698.Spec : Prop :=
  ∀ n, (P5677829655467032698.a n : ℤ) = A023219 (n + 1)

end A023219

/-! ## A023219.P5202798401344624625

`∩[A045346(n+1), A081759(n+1)]`
-/

namespace A023219.P5202798401344624625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023219.P5202798401344624625

namespace A023219

/-- `∩[A045346(n+1), A081759(n+1)]` -/
def P5202798401344624625.Spec : Prop :=
  ∀ n, (P5202798401344624625.a n : ℤ) = A023219 (n + 1)

end A023219

/-! ## A023219.P15044955165348328067

`∩[A051948(n+1), A081759(n+1)]`
-/

namespace A023219.P15044955165348328067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023219.P15044955165348328067

namespace A023219

/-- `∩[A051948(n+1), A081759(n+1)]` -/
def P15044955165348328067.Spec : Prop :=
  ∀ n, (P15044955165348328067.a n : ℤ) = A023219 (n + 1)

end A023219

/-! ## A023219.P785843713361463003

`∩[A053577(n+1), A081759(n+1)]`
-/

namespace A023219.P785843713361463003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023219.P785843713361463003

namespace A023219

/-- `∩[A053577(n+1), A081759(n+1)]` -/
def P785843713361463003.Spec : Prop :=
  ∀ n, (P785843713361463003.a n : ℤ) = A023219 (n + 1)

end A023219

/-! ## A023219.P3092176318358278266

`∩[A053813(n+1), A081759(n+1)]`
-/

namespace A023219.P3092176318358278266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023219.P3092176318358278266

namespace A023219

/-- `∩[A053813(n+1), A081759(n+1)]` -/
def P3092176318358278266.Spec : Prop :=
  ∀ n, (P3092176318358278266.a n : ℤ) = A023219 (n + 1)

end A023219

/-! ## A023219.P1091736404357482104

`∩[A065091(n+1), A081759(n+1)]`
-/

namespace A023219.P1091736404357482104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023219.P1091736404357482104

namespace A023219

/-- `∩[A065091(n+1), A081759(n+1)]` -/
def P1091736404357482104.Spec : Prop :=
  ∀ n, (P1091736404357482104.a n : ℤ) = A023219 (n + 1)

end A023219

/-! ## A023219.P3635223186355294475

`∩[A066191(n+1), A081759(n+1)]`
-/

namespace A023219.P3635223186355294475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023219.P3635223186355294475

namespace A023219

/-- `∩[A066191(n+1), A081759(n+1)]` -/
def P3635223186355294475.Spec : Prop :=
  ∀ n, (P3635223186355294475.a n : ℤ) = A023219 (n + 1)

end A023219

/-! ## A023219.P12112692981497729792

`∩[A066542(n+1), A081759(n+1)]`
-/

namespace A023219.P12112692981497729792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023219.P12112692981497729792

namespace A023219

/-- `∩[A066542(n+1), A081759(n+1)]` -/
def P12112692981497729792.Spec : Prop :=
  ∀ n, (P12112692981497729792.a n : ℤ) = A023219 (n + 1)

end A023219

/-! ## A023219.P6377454244633135160

`∩[A081759(n+1), A083249(n+1)]`
-/

namespace A023219.P6377454244633135160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023219.P6377454244633135160

namespace A023219

/-- `∩[A081759(n+1), A083249(n+1)]` -/
def P6377454244633135160.Spec : Prop :=
  ∀ n, (P6377454244633135160.a n : ℤ) = A023219 (n + 1)

end A023219

/-! ## A023219.P13269362817097869044

`∩[A116974(n+1), A081759(n+1)]`
-/

namespace A023219.P13269362817097869044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023219.P13269362817097869044

namespace A023219

/-- `∩[A116974(n+1), A081759(n+1)]` -/
def P13269362817097869044.Spec : Prop :=
  ∀ n, (P13269362817097869044.a n : ℤ) = A023219 (n + 1)

end A023219

/-! ## A023219.P13876514351570338868

`∩[A081759(n+1), A082378(n+1)]`
-/

namespace A023219.P13876514351570338868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023219.P13876514351570338868

namespace A023219

/-- `∩[A081759(n+1), A082378(n+1)]` -/
def P13876514351570338868.Spec : Prop :=
  ∀ n, (P13876514351570338868.a n : ℤ) = A023219 (n + 1)

end A023219

/-!
# A023220: Primes p such that 5*p + 8 is also prime.

The programs for A023220, the canonical program `A023220.P13118839527709711084` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023220 has offset 1).

The definition of A023220 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1360 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023220.P2067094033293532124

`p?[A111225(n+1)]`
-/

namespace A023220.P2067094033293532124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023220.P2067094033293532124

namespace A023220

/-- `p?[A111225(n+1)]` -/
def P2067094033293532124.Spec : Prop :=
  ∀ n, P2067094033293532124.a n = A023220 (n + 1)

end A023220

/-! ## A023220.P13118839527709711084

`p?[A087505(n+1)-1]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023220

/-- `p?[A087505(n+1)-1]` -/
def P13118839527709711084.Spec : Prop :=
  ∀ n, P13118839527709711084.a n = A023220 (n + 1)

theorem P13118839527709711084.correct : P13118839527709711084.Spec := by
  intro n
  simp only [A023220, Nat.add_sub_cancel]

end A023220

/-! ## A023220.P8180352323288347434

`p?[A024896(n+1)-2]`
-/

namespace A023220.P8180352323288347434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024896 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023220.P8180352323288347434

namespace A023220

/-- `p?[A024896(n+1)-2]` -/
def P8180352323288347434.Spec : Prop :=
  ∀ n, P8180352323288347434.a n = A023220 (n + 1)

end A023220

/-! ## A023220.P9456900216464191541

`p?[A107304(n+1)-3]`
-/

namespace A023220.P9456900216464191541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107304 (n + 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023220.P9456900216464191541

namespace A023220

/-- `p?[A107304(n+1)-3]` -/
def P9456900216464191541.Spec : Prop :=
  ∀ n, P9456900216464191541.a n = A023220 (n + 1)

end A023220

/-! ## A023220.P9272922771611797231

`p?[2*A126332(n+1)+1]`
-/

namespace A023220.P9272922771611797231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A126332 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023220.P9272922771611797231

namespace A023220

/-- `p?[2*A126332(n+1)+1]` -/
def P9272922771611797231.Spec : Prop :=
  ∀ n, P9272922771611797231.a n = A023220 (n + 1)

end A023220

/-! ## A023220.P13886441436971027791

`p?[2*A102338(n+1)-1]`
-/

namespace A023220.P13886441436971027791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A102338 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023220.P13886441436971027791

namespace A023220

/-- `p?[2*A102338(n+1)-1]` -/
def P13886441436971027791.Spec : Prop :=
  ∀ n, P13886441436971027791.a n = A023220 (n + 1)

end A023220

/-! ## A023220.P7593851857988846882

`record[A006530(A111225(n+2))]`
-/

namespace A023220.P7593851857988846882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A111225 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023220.P7593851857988846882

namespace A023220

/-- `record[A006530(A111225(n+2))]` -/
def P7593851857988846882.Spec : Prop :=
  ∀ n, P7593851857988846882.a n = A023220 (n + 1)

end A023220

/-! ## A023220.P16606214264477793231

`filter[A111225(n+1), A010051(#)]`
-/

namespace A023220.P16606214264477793231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023220.P16606214264477793231

namespace A023220

/-- `filter[A111225(n+1), A010051(#)]` -/
def P16606214264477793231.Spec : Prop :=
  ∀ n, P16606214264477793231.a n = A023220 (n + 1)

end A023220

/-! ## A023220.P9606683151103171570

`filter[A111225(n+1), A379969(#)]`
-/

namespace A023220.P9606683151103171570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A023220.P9606683151103171570

namespace A023220

/-- `filter[A111225(n+1), A379969(#)]` -/
def P9606683151103171570.Spec : Prop :=
  ∀ n, P9606683151103171570.a n = A023220 (n + 1)

end A023220

/-! ## A023220.P5805763689339068148

`filter[A111225(n+2), A365716(#)]`
-/

namespace A023220.P5805763689339068148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A023220.P5805763689339068148

namespace A023220

/-- `filter[A111225(n+2), A365716(#)]` -/
def P5805763689339068148.Spec : Prop :=
  ∀ n, P5805763689339068148.a n = A023220 (n + 1)

end A023220

/-! ## A023220.P5025940053961165510

`filter[A111225(n+2), A380467(#)]`
-/

namespace A023220.P5025940053961165510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A023220.P5025940053961165510

namespace A023220

/-- `filter[A111225(n+2), A380467(#)]` -/
def P5025940053961165510.Spec : Prop :=
  ∀ n, P5025940053961165510.a n = A023220 (n + 1)

end A023220

/-! ## A023220.P17813426198741419297

`∩[A111225(n+1), A042990(n)]`
-/

namespace A023220.P17813426198741419297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023220.P17813426198741419297

namespace A023220

/-- `∩[A111225(n+1), A042990(n)]` -/
def P17813426198741419297.Spec : Prop :=
  ∀ n, (P17813426198741419297.a n : ℤ) = A023220 (n + 1)

end A023220

/-! ## A023220.P14804047025191542090

`∩[A000040(n+1), A111225(n+1)]`
-/

namespace A023220.P14804047025191542090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023220.P14804047025191542090

namespace A023220

/-- `∩[A000040(n+1), A111225(n+1)]` -/
def P14804047025191542090.Spec : Prop :=
  ∀ n, (P14804047025191542090.a n : ℤ) = A023220 (n + 1)

end A023220

/-! ## A023220.P10046836351456547336

`∩[A004139(n+1), A111225(n+1)]`
-/

namespace A023220.P10046836351456547336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023220.P10046836351456547336

namespace A023220

/-- `∩[A004139(n+1), A111225(n+1)]` -/
def P10046836351456547336.Spec : Prop :=
  ∀ n, (P10046836351456547336.a n : ℤ) = A023220 (n + 1)

end A023220

/-! ## A023220.P13683986250235574468

`∩[A007645(n+1), A111225(n+1)]`
-/

namespace A023220.P13683986250235574468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023220.P13683986250235574468

namespace A023220

/-- `∩[A007645(n+1), A111225(n+1)]` -/
def P13683986250235574468.Spec : Prop :=
  ∀ n, (P13683986250235574468.a n : ℤ) = A023220 (n + 1)

end A023220

/-! ## A023220.P17335255703819991051

`∩[A040116(n+1), A111225(n+1)]`
-/

namespace A023220.P17335255703819991051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023220.P17335255703819991051

namespace A023220

/-- `∩[A040116(n+1), A111225(n+1)]` -/
def P17335255703819991051.Spec : Prop :=
  ∀ n, (P17335255703819991051.a n : ℤ) = A023220 (n + 1)

end A023220

/-! ## A023220.P8633461777446201808

`∩[A045319(n+1), A111225(n+1)]`
-/

namespace A023220.P8633461777446201808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023220.P8633461777446201808

namespace A023220

/-- `∩[A045319(n+1), A111225(n+1)]` -/
def P8633461777446201808.Spec : Prop :=
  ∀ n, (P8633461777446201808.a n : ℤ) = A023220 (n + 1)

end A023220

/-! ## A023220.P11739361603193759340

`∩[A045331(n+1), A111225(n+1)]`
-/

namespace A023220.P11739361603193759340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023220.P11739361603193759340

namespace A023220

/-- `∩[A045331(n+1), A111225(n+1)]` -/
def P11739361603193759340.Spec : Prop :=
  ∀ n, (P11739361603193759340.a n : ℤ) = A023220 (n + 1)

end A023220

/-! ## A023220.P7376857010754861504

`∩[A049545(n+1), A111225(n+1)]`
-/

namespace A023220.P7376857010754861504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023220.P7376857010754861504

namespace A023220

/-- `∩[A049545(n+1), A111225(n+1)]` -/
def P7376857010754861504.Spec : Prop :=
  ∀ n, (P7376857010754861504.a n : ℤ) = A023220 (n + 1)

end A023220

/-! ## A023220.P6274728350295367555

`∩[A051948(n+1), A111225(n+1)]`
-/

namespace A023220.P6274728350295367555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111225 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023220.P6274728350295367555

namespace A023220

/-- `∩[A051948(n+1), A111225(n+1)]` -/
def P6274728350295367555.Spec : Prop :=
  ∀ n, (P6274728350295367555.a n : ℤ) = A023220 (n + 1)

end A023220

/-!
# A023221: Primes p such that 6*p + 5 is also prime.

The programs for A023221, the canonical program `A023221.P15927786172642082817` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023221 has offset 1).

The definition of A023221 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1254 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023221.P15927786172642082817

`p?[A059325(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023221

/-- `p?[A059325(n+1)]` -/
def P15927786172642082817.Spec : Prop :=
  ∀ n, P15927786172642082817.a n = A023221 (n + 1)

theorem P15927786172642082817.correct : P15927786172642082817.Spec := by
  intro n
  simp only [A023221, Nat.add_sub_cancel]

end A023221

/-! ## A023221.P18365201617380730121

`p?[∑[A358565(n+2)]]`
-/

namespace A023221.P18365201617380730121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358565 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023221.P18365201617380730121

namespace A023221

/-- `p?[∑[A358565(n+2)]]` -/
def P18365201617380730121.Spec : Prop :=
  ∀ n, P18365201617380730121.a n = A023221 (n + 1)

end A023221

/-! ## A023221.P2221586457845830994

`p?[A024898(n+1)-1]`
-/

namespace A023221.P2221586457845830994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023221.P2221586457845830994

namespace A023221

/-- `p?[A024898(n+1)-1]` -/
def P2221586457845830994.Spec : Prop :=
  ∀ n, P2221586457845830994.a n = A023221 (n + 1)

end A023221

/-! ## A023221.P6173666552377694627

`p?[A153134(n+1)-2]`
-/

namespace A023221.P6173666552377694627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023221.P6173666552377694627

namespace A023221

/-- `p?[A153134(n+1)-2]` -/
def P6173666552377694627.Spec : Prop :=
  ∀ n, P6173666552377694627.a n = A023221 (n + 1)

end A023221

/-! ## A023221.P11163264064695407300

`record[A006530(A059325(n+3))]`
-/

namespace A023221.P11163264064695407300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A059325 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023221.P11163264064695407300

namespace A023221

/-- `record[A006530(A059325(n+3))]` -/
def P11163264064695407300.Spec : Prop :=
  ∀ n, P11163264064695407300.a n = A023221 (n + 1)

end A023221

/-! ## A023221.P7871618983053274101

`record[A006530(A088879(n+3))]`
-/

namespace A023221.P7871618983053274101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A088879 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023221.P7871618983053274101

namespace A023221

/-- `record[A006530(A088879(n+3))]` -/
def P7871618983053274101.Spec : Prop :=
  ∀ n, P7871618983053274101.a n = A023221 (n + 1)

end A023221

/-! ## A023221.P6504049731153094027

`filter[A059325(n+2), A010051(#)]`
-/

namespace A023221.P6504049731153094027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023221.P6504049731153094027

namespace A023221

/-- `filter[A059325(n+2), A010051(#)]` -/
def P6504049731153094027.Spec : Prop :=
  ∀ n, P6504049731153094027.a n = A023221 (n + 1)

end A023221

/-! ## A023221.P18390265784261504886

`∩[A000040(n+1), A059325(n+1)]`
-/

namespace A023221.P18390265784261504886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023221.P18390265784261504886

namespace A023221

/-- `∩[A000040(n+1), A059325(n+1)]` -/
def P18390265784261504886.Spec : Prop :=
  ∀ n, (P18390265784261504886.a n : ℤ) = A023221 (n + 1)

end A023221

/-! ## A023221.P8755960415709639167

`∩[A045319(n+1), A059325(n+1)]`
-/

namespace A023221.P8755960415709639167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023221.P8755960415709639167

namespace A023221

/-- `∩[A045319(n+1), A059325(n+1)]` -/
def P8755960415709639167.Spec : Prop :=
  ∀ n, (P8755960415709639167.a n : ℤ) = A023221 (n + 1)

end A023221

/-! ## A023221.P5940736038586584274

`∩[A045320(n+1), A059325(n+1)]`
-/

namespace A023221.P5940736038586584274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023221.P5940736038586584274

namespace A023221

/-- `∩[A045320(n+1), A059325(n+1)]` -/
def P5940736038586584274.Spec : Prop :=
  ∀ n, (P5940736038586584274.a n : ℤ) = A023221 (n + 1)

end A023221

/-! ## A023221.P13310645085197909718

`∩[A000040(n+1), A024898(n+1)-1]`
-/

namespace A023221.P13310645085197909718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024898 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023221.P13310645085197909718

namespace A023221

/-- `∩[A000040(n+1), A024898(n+1)-1]` -/
def P13310645085197909718.Spec : Prop :=
  ∀ n, (P13310645085197909718.a n : ℤ) = A023221 (n + 1)

end A023221

/-! ## A023221.P538843109560558530

`∩[A000040(n+1), A153134(n+1)-2]`
-/

namespace A023221.P538843109560558530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023221.P538843109560558530

namespace A023221

/-- `∩[A000040(n+1), A153134(n+1)-2]` -/
def P538843109560558530.Spec : Prop :=
  ∀ n, (P538843109560558530.a n : ℤ) = A023221 (n + 1)

end A023221

/-! ## A023221.P13467284874188198950

`∩[A008578(n+2), A153134(n+2)-2]`
-/

namespace A023221.P13467284874188198950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 2) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023221.P13467284874188198950

namespace A023221

/-- `∩[A008578(n+2), A153134(n+2)-2]` -/
def P13467284874188198950.Spec : Prop :=
  ∀ n, (P13467284874188198950.a n : ℤ) = A023221 (n + 1)

end A023221

/-! ## A023221.P5179869033809151360

`∩[A153134(n+2)-2, A182986(n+2)]`
-/

namespace A023221.P5179869033809151360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153134 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023221.P5179869033809151360

namespace A023221

/-- `∩[A153134(n+2)-2, A182986(n+2)]` -/
def P5179869033809151360.Spec : Prop :=
  ∀ n, (P5179869033809151360.a n : ℤ) = A023221 (n + 1)

end A023221

/-! ## A023221.P13200965538574828408

`∩[A049543(n+1), A059325(n+1)]`
-/

namespace A023221.P13200965538574828408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023221.P13200965538574828408

namespace A023221

/-- `∩[A049543(n+1), A059325(n+1)]` -/
def P13200965538574828408.Spec : Prop :=
  ∀ n, (P13200965538574828408.a n : ℤ) = A023221 (n + 1)

end A023221

/-! ## A023221.P14942564408947917655

`p?[eq[1, A075743(2*n+1)]]`
-/

namespace A023221.P14942564408947917655
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075743 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023221.P14942564408947917655

namespace A023221

/-- `p?[eq[1, A075743(2*n+1)]]` -/
def P14942564408947917655.Spec : Prop :=
  ∀ n, (P14942564408947917655.a n : ℤ) = A023221 (n + 1)

end A023221

/-! ## A023221.P3550697561211017788

`p?[eq[1, A156706(2*n+1)²]]`
-/

namespace A023221.P3550697561211017788
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (2 * n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023221.P3550697561211017788

namespace A023221

/-- `p?[eq[1, A156706(2*n+1)²]]` -/
def P3550697561211017788.Spec : Prop :=
  ∀ n, (P3550697561211017788.a n : ℤ) = A023221 (n + 1)

end A023221

/-! ## A023221.P5793247326199685914

`eq[A156706(2*n+1)², A175126(n)]`
-/

namespace A023221.P5793247326199685914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (2 * n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023221.P5793247326199685914

namespace A023221

/-- `eq[A156706(2*n+1)², A175126(n)]` -/
def P5793247326199685914.Spec : Prop :=
  ∀ n, (P5793247326199685914.a n : ℤ) = A023221 (n + 1)

end A023221

/-! ## A023221.P4021585786610505677

`eq[A098098(n), A129283(n)]`
-/

namespace A023221.P4021585786610505677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098098 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023221.P4021585786610505677

namespace A023221

/-- `eq[A098098(n), A129283(n)]` -/
def P4021585786610505677.Spec : Prop :=
  ∀ n, (P4021585786610505677.a n : ℤ) = A023221 (n + 1)

end A023221

/-!
# A023222: Primes p such that 6*p + 7 is also prime.

The programs for A023222, the canonical program `A023222.P6978621992250826147` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023222 has offset 1).

The definition of A023222 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023222.P15583932139860888414

`p?[A153218(n+1)]`
-/

namespace A023222.P15583932139860888414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023222.P15583932139860888414

namespace A023222

/-- `p?[A153218(n+1)]` -/
def P15583932139860888414.Spec : Prop :=
  ∀ n, P15583932139860888414.a n = A023222 (n + 1)

end A023222

/-! ## A023222.P13044974967798921413

`p?[A024899(n+1)-1]`
-/

namespace A023222.P13044974967798921413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023222.P13044974967798921413

namespace A023222

/-- `p?[A024899(n+1)-1]` -/
def P13044974967798921413.Spec : Prop :=
  ∀ n, P13044974967798921413.a n = A023222 (n + 1)

end A023222

/-! ## A023222.P16027473427853098264

`p?[floor(A034936(n+1)/2)]`
-/

namespace A023222.P16027473427853098264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A034936 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023222.P16027473427853098264

namespace A023222

/-- `p?[floor(A034936(n+1)/2)]` -/
def P16027473427853098264.Spec : Prop :=
  ∀ n, P16027473427853098264.a n = A023222 (n + 1)

end A023222

/-! ## A023222.P6978621992250826147

`p?[eq[1, A245838(2*(n+1))]]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A023222

/-- `p?[eq[1, A245838(2*(n+1))]]` -/
def P6978621992250826147.Spec : Prop :=
  ∀ n, (P6978621992250826147.a n : ℤ) = A023222 (n + 1)

theorem P6978621992250826147.correct : P6978621992250826147.Spec := by
  intro n
  simp only [A023222, Nat.add_sub_cancel]

end A023222

/-! ## A023222.P14728227704349299486

`record[A006530(A089953(n+2))]`
-/

namespace A023222.P14728227704349299486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089953 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023222.P14728227704349299486

namespace A023222

/-- `record[A006530(A089953(n+2))]` -/
def P14728227704349299486.Spec : Prop :=
  ∀ n, P14728227704349299486.a n = A023222 (n + 1)

end A023222

/-! ## A023222.P16990837837561373134

`record[A006530(A153218(n+3))]`
-/

namespace A023222.P16990837837561373134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153218 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023222.P16990837837561373134

namespace A023222

/-- `record[A006530(A153218(n+3))]` -/
def P16990837837561373134.Spec : Prop :=
  ∀ n, P16990837837561373134.a n = A023222 (n + 1)

end A023222

/-! ## A023222.P1873689103857200350

`filter[A153218(n+2), A010051(#)]`
-/

namespace A023222.P1873689103857200350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023222.P1873689103857200350

namespace A023222

/-- `filter[A153218(n+2), A010051(#)]` -/
def P1873689103857200350.Spec : Prop :=
  ∀ n, P1873689103857200350.a n = A023222 (n + 1)

end A023222

/-! ## A023222.P845813948433369258

`record[A006530(A034936(n+2)-1)]`
-/

namespace A023222.P845813948433369258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A034936 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023222.P845813948433369258

namespace A023222

/-- `record[A006530(A034936(n+2)-1)]` -/
def P845813948433369258.Spec : Prop :=
  ∀ n, P845813948433369258.a n = A023222 (n + 1)

end A023222

/-! ## A023222.P11483259371189185816

`p?[A014682(A034936(n+1)-1)]`
-/

namespace A023222.P11483259371189185816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A034936 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023222.P11483259371189185816

namespace A023222

/-- `p?[A014682(A034936(n+1)-1)]` -/
def P11483259371189185816.Spec : Prop :=
  ∀ n, P11483259371189185816.a n = A023222 (n + 1)

end A023222

/-! ## A023222.P10228996136326632602

`record[A006530(A024892(n+2)-2)]`
-/

namespace A023222.P10228996136326632602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024892 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023222.P10228996136326632602

namespace A023222

/-- `record[A006530(A024892(n+2)-2)]` -/
def P10228996136326632602.Spec : Prop :=
  ∀ n, P10228996136326632602.a n = A023222 (n + 1)

end A023222

/-! ## A023222.P8652181768706484846

`∩[A000040(n+1), A153218(n+1)]`
-/

namespace A023222.P8652181768706484846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023222.P8652181768706484846

namespace A023222

/-- `∩[A000040(n+1), A153218(n+1)]` -/
def P8652181768706484846.Spec : Prop :=
  ∀ n, (P8652181768706484846.a n : ℤ) = A023222 (n + 1)

end A023222

/-! ## A023222.P4648767061236949514

`∩[A045344(n+1), A153218(n+1)]`
-/

namespace A023222.P4648767061236949514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023222.P4648767061236949514

namespace A023222

/-- `∩[A045344(n+1), A153218(n+1)]` -/
def P4648767061236949514.Spec : Prop :=
  ∀ n, (P4648767061236949514.a n : ℤ) = A023222 (n + 1)

end A023222

/-! ## A023222.P18243400862574270228

`∩[A045348(n+1), A153218(n+1)]`
-/

namespace A023222.P18243400862574270228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023222.P18243400862574270228

namespace A023222

/-- `∩[A045348(n+1), A153218(n+1)]` -/
def P18243400862574270228.Spec : Prop :=
  ∀ n, (P18243400862574270228.a n : ℤ) = A023222 (n + 1)

end A023222

/-! ## A023222.P17988825230416864726

`∩[A049545(n+1), A153218(n+1)]`
-/

namespace A023222.P17988825230416864726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023222.P17988825230416864726

namespace A023222

/-- `∩[A049545(n+1), A153218(n+1)]` -/
def P17988825230416864726.Spec : Prop :=
  ∀ n, (P17988825230416864726.a n : ℤ) = A023222 (n + 1)

end A023222

/-! ## A023222.P4053338480129762388

`p?[A034936(n+1)%A024899(n+1)]`
-/

namespace A023222.P4053338480129762388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034936 (n + 1)) (A024899 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023222.P4053338480129762388

namespace A023222

/-- `p?[A034936(n+1)%A024899(n+1)]` -/
def P4053338480129762388.Spec : Prop :=
  ∀ n, P4053338480129762388.a n = A023222 (n + 1)

end A023222

/-! ## A023222.P9460681480701358035

`∩[A000040(n+1), A024899(n+1)-1]`
-/

namespace A023222.P9460681480701358035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023222.P9460681480701358035

namespace A023222

/-- `∩[A000040(n+1), A024899(n+1)-1]` -/
def P9460681480701358035.Spec : Prop :=
  ∀ n, (P9460681480701358035.a n : ℤ) = A023222 (n + 1)

end A023222

/-! ## A023222.P6885767364970927091

`∩[A024899(n+2)-1, A182986(n+2)]`
-/

namespace A023222.P6885767364970927091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 2) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023222.P6885767364970927091

namespace A023222

/-- `∩[A024899(n+2)-1, A182986(n+2)]` -/
def P6885767364970927091.Spec : Prop :=
  ∀ n, (P6885767364970927091.a n : ℤ) = A023222 (n + 1)

end A023222

/-!
# A023223: Primes p such that 7*p + 2 is also prime.

The programs for A023223, the canonical program `A023223.P4921598859195295087` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023223 has offset 1).

The definition of A023223 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1305 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023223.P4921598859195295087

`p?[A105772(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023223

/-- `p?[A105772(n+1)]` -/
def P4921598859195295087.Spec : Prop :=
  ∀ n, P4921598859195295087.a n = A023223 (n + 1)

theorem P4921598859195295087.correct : P4921598859195295087.Spec := by
  intro n
  simp only [A023223, Nat.add_sub_cancel]

end A023223

/-! ## A023223.P3816463881822644936

`p?[A024904(n+1)-1]`
-/

namespace A023223.P3816463881822644936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024904 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023223.P3816463881822644936

namespace A023223

/-- `p?[A024904(n+1)-1]` -/
def P3816463881822644936.Spec : Prop :=
  ∀ n, P3816463881822644936.a n = A023223 (n + 1)

end A023223

/-! ## A023223.P17719028290160367426

`p?[or(1, A105772(-xor(n, -1)))]`
-/

namespace A023223.P17719028290160367426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A105772 (-Int.xor (n : ℤ) (-1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023223.P17719028290160367426

namespace A023223

/-- `p?[or(1, A105772(-xor(n, -1)))]` -/
def P17719028290160367426.Spec : Prop :=
  ∀ n, P17719028290160367426.a n = A023223 (n + 1)

end A023223

/-! ## A023223.P2752926829556584556

`∩[A040028(n+1), A105772(n+1)]`
-/

namespace A023223.P2752926829556584556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P2752926829556584556

namespace A023223

/-- `∩[A040028(n+1), A105772(n+1)]` -/
def P2752926829556584556.Spec : Prop :=
  ∀ n, (P2752926829556584556.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P8793420454110328062

`∩[A040036(n+1), A105772(n+1)]`
-/

namespace A023223.P8793420454110328062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P8793420454110328062

namespace A023223

/-- `∩[A040036(n+1), A105772(n+1)]` -/
def P8793420454110328062.Spec : Prop :=
  ∀ n, (P8793420454110328062.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P13450090033372238903

`∩[A040044(n+1), A105772(n+1)]`
-/

namespace A023223.P13450090033372238903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P13450090033372238903

namespace A023223

/-- `∩[A040044(n+1), A105772(n+1)]` -/
def P13450090033372238903.Spec : Prop :=
  ∀ n, (P13450090033372238903.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P7362084100477593166

`∩[A040046(n+1), A105772(n+1)]`
-/

namespace A023223.P7362084100477593166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P7362084100477593166

namespace A023223

/-- `∩[A040046(n+1), A105772(n+1)]` -/
def P7362084100477593166.Spec : Prop :=
  ∀ n, (P7362084100477593166.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P5769971259114311172

`∩[A040049(n+1), A105772(n+1)]`
-/

namespace A023223.P5769971259114311172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P5769971259114311172

namespace A023223

/-- `∩[A040049(n+1), A105772(n+1)]` -/
def P5769971259114311172.Spec : Prop :=
  ∀ n, (P5769971259114311172.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P1998338896988449105

`∩[A040054(n+1), A105772(n+1)]`
-/

namespace A023223.P1998338896988449105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P1998338896988449105

namespace A023223

/-- `∩[A040054(n+1), A105772(n+1)]` -/
def P1998338896988449105.Spec : Prop :=
  ∀ n, (P1998338896988449105.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P1685377157809098959

`∩[A040060(n+1), A105772(n+1)]`
-/

namespace A023223.P1685377157809098959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P1685377157809098959

namespace A023223

/-- `∩[A040060(n+1), A105772(n+1)]` -/
def P1685377157809098959.Spec : Prop :=
  ∀ n, (P1685377157809098959.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P1267628194520306357

`∩[A040062(n+1), A105772(n+1)]`
-/

namespace A023223.P1267628194520306357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P1267628194520306357

namespace A023223

/-- `∩[A040062(n+1), A105772(n+1)]` -/
def P1267628194520306357.Spec : Prop :=
  ∀ n, (P1267628194520306357.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P76154564698115792

`∩[A040065(n+1), A105772(n+1)]`
-/

namespace A023223.P76154564698115792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P76154564698115792

namespace A023223

/-- `∩[A040065(n+1), A105772(n+1)]` -/
def P76154564698115792.Spec : Prop :=
  ∀ n, (P76154564698115792.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P16841546692417371119

`∩[A040078(n+1), A105772(n+1)]`
-/

namespace A023223.P16841546692417371119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P16841546692417371119

namespace A023223

/-- `∩[A040078(n+1), A105772(n+1)]` -/
def P16841546692417371119.Spec : Prop :=
  ∀ n, (P16841546692417371119.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P3247290961461323527

`∩[A040083(n+1), A105772(n+1)]`
-/

namespace A023223.P3247290961461323527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P3247290961461323527

namespace A023223

/-- `∩[A040083(n+1), A105772(n+1)]` -/
def P3247290961461323527.Spec : Prop :=
  ∀ n, (P3247290961461323527.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P8869200640850257661

`∩[A040085(n+1), A105772(n+1)]`
-/

namespace A023223.P8869200640850257661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P8869200640850257661

namespace A023223

/-- `∩[A040085(n+1), A105772(n+1)]` -/
def P8869200640850257661.Spec : Prop :=
  ∀ n, (P8869200640850257661.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P2173979540674349299

`∩[A040087(n+1), A105772(n+1)]`
-/

namespace A023223.P2173979540674349299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P2173979540674349299

namespace A023223

/-- `∩[A040087(n+1), A105772(n+1)]` -/
def P2173979540674349299.Spec : Prop :=
  ∀ n, (P2173979540674349299.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P7472672994874301123

`∩[A045410(n+1), A105772(n+1)]`
-/

namespace A023223.P7472672994874301123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045410 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P7472672994874301123

namespace A023223

/-- `∩[A045410(n+1), A105772(n+1)]` -/
def P7472672994874301123.Spec : Prop :=
  ∀ n, (P7472672994874301123.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P12049801073897172796

`∩[A000040(n+1), A105772(n+1)]`
-/

namespace A023223.P12049801073897172796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P12049801073897172796

namespace A023223

/-- `∩[A000040(n+1), A105772(n+1)]` -/
def P12049801073897172796.Spec : Prop :=
  ∀ n, (P12049801073897172796.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P3160938101960053246

`∩[A006005(n+1), A105772(n+1)]`
-/

namespace A023223.P3160938101960053246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P3160938101960053246

namespace A023223

/-- `∩[A006005(n+1), A105772(n+1)]` -/
def P3160938101960053246.Spec : Prop :=
  ∀ n, (P3160938101960053246.a n : ℤ) = A023223 (n + 1)

end A023223

/-! ## A023223.P9971895640753327006

`∩[A008578(n+1), A105772(n+1)]`
-/

namespace A023223.P9971895640753327006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023223.P9971895640753327006

namespace A023223

/-- `∩[A008578(n+1), A105772(n+1)]` -/
def P9971895640753327006.Spec : Prop :=
  ∀ n, (P9971895640753327006.a n : ℤ) = A023223 (n + 1)

end A023223

/-!
# A023224: Primes p such that 7*p + 4 is also prime.

The programs for A023224, the canonical program `A023224.P3715858878049786222` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023224 has offset 1).

The definition of A023224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2469 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023224.P3715858878049786222

`p?[floor(A141893(n+1)/7)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023224

/-- `p?[floor(A141893(n+1)/7)]` -/
def P3715858878049786222.Spec : Prop :=
  ∀ n, P3715858878049786222.a n = A023224 (n + 1)

theorem P3715858878049786222.correct : P3715858878049786222.Spec := by
  intro n
  simp only [A023224, Nat.add_sub_cancel]

end A023224

/-! ## A023224.P13736328391902065741

`p?[A024902(n+1)]`
-/

namespace A023224.P13736328391902065741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023224.P13736328391902065741

namespace A023224

/-- `p?[A024902(n+1)]` -/
def P13736328391902065741.Spec : Prop :=
  ∀ n, P13736328391902065741.a n = A023224 (n + 1)

end A023224

/-! ## A023224.P1238296829027876944

`p?[A101123(n+1)+1]`
-/

namespace A023224.P1238296829027876944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101123 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023224.P1238296829027876944

namespace A023224

/-- `p?[A101123(n+1)+1]` -/
def P1238296829027876944.Spec : Prop :=
  ∀ n, P1238296829027876944.a n = A023224 (n + 1)

end A023224

/-! ## A023224.P17309849374975656167

`∩[A002476(n+1), A024902(n+1)]`
-/

namespace A023224.P17309849374975656167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P17309849374975656167

namespace A023224

/-- `∩[A002476(n+1), A024902(n+1)]` -/
def P17309849374975656167.Spec : Prop :=
  ∀ n, (P17309849374975656167.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P4303394423607454829

`∩[A007645(n+1), A024902(n+1)]`
-/

namespace A023224.P4303394423607454829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P4303394423607454829

namespace A023224

/-- `∩[A007645(n+1), A024902(n+1)]` -/
def P4303394423607454829.Spec : Prop :=
  ∀ n, (P4303394423607454829.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P17350153834155076770

`∩[A024902(n+1), A040116(n+1)]`
-/

namespace A023224.P17350153834155076770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P17350153834155076770

namespace A023224

/-- `∩[A024902(n+1), A040116(n+1)]` -/
def P17350153834155076770.Spec : Prop :=
  ∀ n, (P17350153834155076770.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P6696877003479527281

`∩[A024902(n+1), A045331(n+1)]`
-/

namespace A023224.P6696877003479527281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P6696877003479527281

namespace A023224

/-- `∩[A024902(n+1), A045331(n+1)]` -/
def P6696877003479527281.Spec : Prop :=
  ∀ n, (P6696877003479527281.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P12331689606412507443

`∩[A024902(n+1), A045348(n+1)]`
-/

namespace A023224.P12331689606412507443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P12331689606412507443

namespace A023224

/-- `∩[A024902(n+1), A045348(n+1)]` -/
def P12331689606412507443.Spec : Prop :=
  ∀ n, (P12331689606412507443.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P10981489741817983772

`∩[A024902(n+1), A045371(n+1)]`
-/

namespace A023224.P10981489741817983772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P10981489741817983772

namespace A023224

/-- `∩[A024902(n+1), A045371(n+1)]` -/
def P10981489741817983772.Spec : Prop :=
  ∀ n, (P10981489741817983772.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P14293408534015166176

`∩[A024902(n+1), A045375(n+1)]`
-/

namespace A023224.P14293408534015166176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P14293408534015166176

namespace A023224

/-- `∩[A024902(n+1), A045375(n+1)]` -/
def P14293408534015166176.Spec : Prop :=
  ∀ n, (P14293408534015166176.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P8137630974054848157

`∩[A024902(n+1), A049591(n+1)]`
-/

namespace A023224.P8137630974054848157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P8137630974054848157

namespace A023224

/-- `∩[A024902(n+1), A049591(n+1)]` -/
def P8137630974054848157.Spec : Prop :=
  ∀ n, (P8137630974054848157.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P3592042687256106640

`∩[A024902(n+1), A053176(n+1)]`
-/

namespace A023224.P3592042687256106640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P3592042687256106640

namespace A023224

/-- `∩[A024902(n+1), A053176(n+1)]` -/
def P3592042687256106640.Spec : Prop :=
  ∀ n, (P3592042687256106640.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P8558918467825548040

`∩[A024902(n+1), A067774(n+1)]`
-/

namespace A023224.P8558918467825548040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P8558918467825548040

namespace A023224

/-- `∩[A024902(n+1), A067774(n+1)]` -/
def P8558918467825548040.Spec : Prop :=
  ∀ n, (P8558918467825548040.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P11334706203054052808

`∩[A024902(n+1), A138645(n+1)]`
-/

namespace A023224.P11334706203054052808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P11334706203054052808

namespace A023224

/-- `∩[A024902(n+1), A138645(n+1)]` -/
def P11334706203054052808.Spec : Prop :=
  ∀ n, (P11334706203054052808.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P11977843410390033150

`∩[A024902(n+1), A140557(n+1)]`
-/

namespace A023224.P11977843410390033150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140557 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P11977843410390033150

namespace A023224

/-- `∩[A024902(n+1), A140557(n+1)]` -/
def P11977843410390033150.Spec : Prop :=
  ∀ n, (P11977843410390033150.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P6249183017436037926

`∩[A024902(n+1), A140562(n+1)]`
-/

namespace A023224.P6249183017436037926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140562 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P6249183017436037926

namespace A023224

/-- `∩[A024902(n+1), A140562(n+1)]` -/
def P6249183017436037926.Spec : Prop :=
  ∀ n, (P6249183017436037926.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P2938491314079078788

`∩[A024902(n+1), A140563(n+1)]`
-/

namespace A023224.P2938491314079078788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140563 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P2938491314079078788

namespace A023224

/-- `∩[A024902(n+1), A140563(n+1)]` -/
def P2938491314079078788.Spec : Prop :=
  ∀ n, (P2938491314079078788.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P7314932267126973133

`∩[A024902(n+1), A167464(n+1)]`
-/

namespace A023224.P7314932267126973133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167464 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P7314932267126973133

namespace A023224

/-- `∩[A024902(n+1), A167464(n+1)]` -/
def P7314932267126973133.Spec : Prop :=
  ∀ n, (P7314932267126973133.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P9325492826288608956

`∩[A024902(n+1), A279815(n+1)]`
-/

namespace A023224.P9325492826288608956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P9325492826288608956

namespace A023224

/-- `∩[A024902(n+1), A279815(n+1)]` -/
def P9325492826288608956.Spec : Prop :=
  ∀ n, (P9325492826288608956.a n : ℤ) = A023224 (n + 1)

end A023224

/-! ## A023224.P3371013183133224566

`∩[A024902(n+1), A106118(n+1)]`
-/

namespace A023224.P3371013183133224566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023224.P3371013183133224566

namespace A023224

/-- `∩[A024902(n+1), A106118(n+1)]` -/
def P3371013183133224566.Spec : Prop :=
  ∀ n, (P3371013183133224566.a n : ℤ) = A023224 (n + 1)

end A023224

/-!
# A023225: Primes p such that 7*p + 6 is also prime.

The programs for A023225, the canonical program `A023225.P1273185913112020908` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023225 has offset 1).

The definition of A023225 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023225.P1273185913112020908

`floor(A136072(n+1)/7)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023225

/-- `floor(A136072(n+1)/7)` -/
def P1273185913112020908.Spec : Prop :=
  ∀ n, P1273185913112020908.a n = A023225 (n + 1)

theorem P1273185913112020908.correct : P1273185913112020908.Spec := by
  intro n
  simp only [A023225, Nat.add_sub_cancel]

end A023225

/-! ## A023225.P16922040341422539731

`p?[A024900(n+1)]`
-/

namespace A023225.P16922040341422539731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023225.P16922040341422539731

namespace A023225

/-- `p?[A024900(n+1)]` -/
def P16922040341422539731.Spec : Prop :=
  ∀ n, P16922040341422539731.a n = A023225 (n + 1)

end A023225

/-! ## A023225.P4904190201407237653

`p?[2*A138622(n+1)-1]`
-/

namespace A023225.P4904190201407237653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138622 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023225.P4904190201407237653

namespace A023225

/-- `p?[2*A138622(n+1)-1]` -/
def P4904190201407237653.Spec : Prop :=
  ∀ n, P4904190201407237653.a n = A023225 (n + 1)

end A023225

/-! ## A023225.P6304305235028611143

`∩[A024900(n+1), A045405(n+1)]`
-/

namespace A023225.P6304305235028611143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023225.P6304305235028611143

namespace A023225

/-- `∩[A024900(n+1), A045405(n+1)]` -/
def P6304305235028611143.Spec : Prop :=
  ∀ n, (P6304305235028611143.a n : ℤ) = A023225 (n + 1)

end A023225

/-! ## A023225.P16283538432955298854

`∩[A024900(n+1), A049545(n+1)]`
-/

namespace A023225.P16283538432955298854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023225.P16283538432955298854

namespace A023225

/-- `∩[A024900(n+1), A049545(n+1)]` -/
def P16283538432955298854.Spec : Prop :=
  ∀ n, (P16283538432955298854.a n : ℤ) = A023225 (n + 1)

end A023225

/-! ## A023225.P4021550390707696996

`∩[A000040(n+1), A024900(n+1)]`
-/

namespace A023225.P4021550390707696996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023225.P4021550390707696996

namespace A023225

/-- `∩[A000040(n+1), A024900(n+1)]` -/
def P4021550390707696996.Spec : Prop :=
  ∀ n, (P4021550390707696996.a n : ℤ) = A023225 (n + 1)

end A023225

/-! ## A023225.P3321411756500356834

`∩[A024900(n+1), A045344(n+1)]`
-/

namespace A023225.P3321411756500356834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023225.P3321411756500356834

namespace A023225

/-- `∩[A024900(n+1), A045344(n+1)]` -/
def P3321411756500356834.Spec : Prop :=
  ∀ n, (P3321411756500356834.a n : ℤ) = A023225 (n + 1)

end A023225

/-! ## A023225.P3011760257362800201

`∩[A024900(n+1), A065091(n+1)]`
-/

namespace A023225.P3011760257362800201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023225.P3011760257362800201

namespace A023225

/-- `∩[A024900(n+1), A065091(n+1)]` -/
def P3011760257362800201.Spec : Prop :=
  ∀ n, (P3011760257362800201.a n : ℤ) = A023225 (n + 1)

end A023225

/-! ## A023225.P4228799614529265847

`∩[A024900(n+1), A083249(n+1)]`
-/

namespace A023225.P4228799614529265847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023225.P4228799614529265847

namespace A023225

/-- `∩[A024900(n+1), A083249(n+1)]` -/
def P4228799614529265847.Spec : Prop :=
  ∀ n, (P4228799614529265847.a n : ℤ) = A023225 (n + 1)

end A023225

/-! ## A023225.P2344736981028463036

`∩[A024900(n+1), A182986(n+1)]`
-/

namespace A023225.P2344736981028463036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023225.P2344736981028463036

namespace A023225

/-- `∩[A024900(n+1), A182986(n+1)]` -/
def P2344736981028463036.Spec : Prop :=
  ∀ n, (P2344736981028463036.a n : ℤ) = A023225 (n + 1)

end A023225

/-! ## A023225.P14807808101279381148

`∩[A024900(n+1), A051948(n+1)]`
-/

namespace A023225.P14807808101279381148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023225.P14807808101279381148

namespace A023225

/-- `∩[A024900(n+1), A051948(n+1)]` -/
def P14807808101279381148.Spec : Prop :=
  ∀ n, (P14807808101279381148.a n : ℤ) = A023225 (n + 1)

end A023225

/-! ## A023225.P680777664394967531

`∩[A024900(n+1), A053813(n+1)]`
-/

namespace A023225.P680777664394967531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023225.P680777664394967531

namespace A023225

/-- `∩[A024900(n+1), A053813(n+1)]` -/
def P680777664394967531.Spec : Prop :=
  ∀ n, (P680777664394967531.a n : ℤ) = A023225 (n + 1)

end A023225

/-! ## A023225.P8933937799296640458

`∩[A024900(n+1), A066542(n+1)]`
-/

namespace A023225.P8933937799296640458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023225.P8933937799296640458

namespace A023225

/-- `∩[A024900(n+1), A066542(n+1)]` -/
def P8933937799296640458.Spec : Prop :=
  ∀ n, (P8933937799296640458.a n : ℤ) = A023225 (n + 1)

end A023225

/-! ## A023225.P13298450905534304771

`∩[A024900(n+1), A140826(n+1)]`
-/

namespace A023225.P13298450905534304771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023225.P13298450905534304771

namespace A023225

/-- `∩[A024900(n+1), A140826(n+1)]` -/
def P13298450905534304771.Spec : Prop :=
  ∀ n, (P13298450905534304771.a n : ℤ) = A023225 (n + 1)

end A023225

/-! ## A023225.P8407751009486310159

`∩[A024900(n+1), A161346(n+1)]`
-/

namespace A023225.P8407751009486310159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023225.P8407751009486310159

namespace A023225

/-- `∩[A024900(n+1), A161346(n+1)]` -/
def P8407751009486310159.Spec : Prop :=
  ∀ n, (P8407751009486310159.a n : ℤ) = A023225 (n + 1)

end A023225

/-! ## A023225.P17067342639099781949

`∩[A024900(n+1), A053577(n+1)]`
-/

namespace A023225.P17067342639099781949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023225.P17067342639099781949

namespace A023225

/-- `∩[A024900(n+1), A053577(n+1)]` -/
def P17067342639099781949.Spec : Prop :=
  ∀ n, (P17067342639099781949.a n : ℤ) = A023225 (n + 1)

end A023225

/-! ## A023225.P15933021340755512067

`∩[A024900(n+1), A066191(n+1)]`
-/

namespace A023225.P15933021340755512067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023225.P15933021340755512067

namespace A023225

/-- `∩[A024900(n+1), A066191(n+1)]` -/
def P15933021340755512067.Spec : Prop :=
  ∀ n, (P15933021340755512067.a n : ℤ) = A023225 (n + 1)

end A023225

/-! ## A023225.P17445933507807093870

`record[A006530(A024900(n+2))]`
-/

namespace A023225.P17445933507807093870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024900 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023225.P17445933507807093870

namespace A023225

/-- `record[A006530(A024900(n+2))]` -/
def P17445933507807093870.Spec : Prop :=
  ∀ n, P17445933507807093870.a n = A023225 (n + 1)

end A023225

/-! ## A023225.P3260497739789930881

`filter[A024900(n+1), A010051(#)]`
-/

namespace A023225.P3260497739789930881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023225.P3260497739789930881

namespace A023225

/-- `filter[A024900(n+1), A010051(#)]` -/
def P3260497739789930881.Spec : Prop :=
  ∀ n, P3260497739789930881.a n = A023225 (n + 1)

end A023225

/-! ## A023225.P6451647480627318510

`filter[A024900(n+1), A379969(#)]`
-/

namespace A023225.P6451647480627318510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A023225.P6451647480627318510

namespace A023225

/-- `filter[A024900(n+1), A379969(#)]` -/
def P6451647480627318510.Spec : Prop :=
  ∀ n, P6451647480627318510.a n = A023225 (n + 1)

end A023225

/-!
# A023226: Primes p such that 7*p + 8 is also prime.

The programs for A023226, the canonical program `A023226.P6331527255177992895` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023226 has offset 1).

The definition of A023226 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1293 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023226.P6331527255177992895

`p?[A111249(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023226

/-- `p?[A111249(n+1)]` -/
def P6331527255177992895.Spec : Prop :=
  ∀ n, P6331527255177992895.a n = A023226 (n + 1)

theorem P6331527255177992895.correct : P6331527255177992895.Spec := by
  intro n
  simp only [A023226, Nat.add_sub_cancel]

end A023226

/-! ## A023226.P13985037497585714189

`p?[A024905(n+1)-1]`
-/

namespace A023226.P13985037497585714189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024905 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023226.P13985037497585714189

namespace A023226

/-- `p?[A024905(n+1)-1]` -/
def P13985037497585714189.Spec : Prop :=
  ∀ n, P13985037497585714189.a n = A023226 (n + 1)

end A023226

/-! ## A023226.P1170426101027018887

`∩[A040028(n+1), A111249(n+1)]`
-/

namespace A023226.P1170426101027018887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P1170426101027018887

namespace A023226

/-- `∩[A040028(n+1), A111249(n+1)]` -/
def P1170426101027018887.Spec : Prop :=
  ∀ n, (P1170426101027018887.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P4016678590493489380

`∩[A040036(n+1), A111249(n+1)]`
-/

namespace A023226.P4016678590493489380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P4016678590493489380

namespace A023226

/-- `∩[A040036(n+1), A111249(n+1)]` -/
def P4016678590493489380.Spec : Prop :=
  ∀ n, (P4016678590493489380.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P6676070091993954053

`∩[A040044(n+1), A111249(n+1)]`
-/

namespace A023226.P6676070091993954053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P6676070091993954053

namespace A023226

/-- `∩[A040044(n+1), A111249(n+1)]` -/
def P6676070091993954053.Spec : Prop :=
  ∀ n, (P6676070091993954053.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P11771670776122427316

`∩[A040046(n+1), A111249(n+1)]`
-/

namespace A023226.P11771670776122427316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P11771670776122427316

namespace A023226

/-- `∩[A040046(n+1), A111249(n+1)]` -/
def P11771670776122427316.Spec : Prop :=
  ∀ n, (P11771670776122427316.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P15817068171262687239

`∩[A040049(n+1), A111249(n+1)]`
-/

namespace A023226.P15817068171262687239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P15817068171262687239

namespace A023226

/-- `∩[A040049(n+1), A111249(n+1)]` -/
def P15817068171262687239.Spec : Prop :=
  ∀ n, (P15817068171262687239.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P10125198659473182768

`∩[A040054(n+1), A111249(n+1)]`
-/

namespace A023226.P10125198659473182768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P10125198659473182768

namespace A023226

/-- `∩[A040054(n+1), A111249(n+1)]` -/
def P10125198659473182768.Spec : Prop :=
  ∀ n, (P10125198659473182768.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P7849977533321489238

`∩[A040060(n+1), A111249(n+1)]`
-/

namespace A023226.P7849977533321489238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P7849977533321489238

namespace A023226

/-- `∩[A040060(n+1), A111249(n+1)]` -/
def P7849977533321489238.Spec : Prop :=
  ∀ n, (P7849977533321489238.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P1465995724495045080

`∩[A040062(n+1), A111249(n+1)]`
-/

namespace A023226.P1465995724495045080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P1465995724495045080

namespace A023226

/-- `∩[A040062(n+1), A111249(n+1)]` -/
def P1465995724495045080.Spec : Prop :=
  ∀ n, (P1465995724495045080.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P6610889552422621212

`∩[A040065(n+1), A111249(n+1)]`
-/

namespace A023226.P6610889552422621212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P6610889552422621212

namespace A023226

/-- `∩[A040065(n+1), A111249(n+1)]` -/
def P6610889552422621212.Spec : Prop :=
  ∀ n, (P6610889552422621212.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P10225391560543120190

`∩[A040078(n+1), A111249(n+1)]`
-/

namespace A023226.P10225391560543120190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P10225391560543120190

namespace A023226

/-- `∩[A040078(n+1), A111249(n+1)]` -/
def P10225391560543120190.Spec : Prop :=
  ∀ n, (P10225391560543120190.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P2412930593103853411

`∩[A040083(n+1), A111249(n+1)]`
-/

namespace A023226.P2412930593103853411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P2412930593103853411

namespace A023226

/-- `∩[A040083(n+1), A111249(n+1)]` -/
def P2412930593103853411.Spec : Prop :=
  ∀ n, (P2412930593103853411.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P690251201601595039

`∩[A040085(n+1), A111249(n+1)]`
-/

namespace A023226.P690251201601595039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P690251201601595039

namespace A023226

/-- `∩[A040085(n+1), A111249(n+1)]` -/
def P690251201601595039.Spec : Prop :=
  ∀ n, (P690251201601595039.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P7243937071468484247

`∩[A040087(n+1), A111249(n+1)]`
-/

namespace A023226.P7243937071468484247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P7243937071468484247

namespace A023226

/-- `∩[A040087(n+1), A111249(n+1)]` -/
def P7243937071468484247.Spec : Prop :=
  ∀ n, (P7243937071468484247.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P8351092477057324006

`∩[A040089(n+1), A111249(n+1)]`
-/

namespace A023226.P8351092477057324006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P8351092477057324006

namespace A023226

/-- `∩[A040089(n+1), A111249(n+1)]` -/
def P8351092477057324006.Spec : Prop :=
  ∀ n, (P8351092477057324006.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P10389181662697276151

`∩[A040095(n+1), A111249(n+1)]`
-/

namespace A023226.P10389181662697276151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P10389181662697276151

namespace A023226

/-- `∩[A040095(n+1), A111249(n+1)]` -/
def P10389181662697276151.Spec : Prop :=
  ∀ n, (P10389181662697276151.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P13560967561332685531

`∩[A040159(n+1), A111249(n+1)]`
-/

namespace A023226.P13560967561332685531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P13560967561332685531

namespace A023226

/-- `∩[A040159(n+1), A111249(n+1)]` -/
def P13560967561332685531.Spec : Prop :=
  ∀ n, (P13560967561332685531.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P13998925861259962110

`∩[A040161(n+1), A111249(n+1)]`
-/

namespace A023226.P13998925861259962110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P13998925861259962110

namespace A023226

/-- `∩[A040161(n+1), A111249(n+1)]` -/
def P13998925861259962110.Spec : Prop :=
  ∀ n, (P13998925861259962110.a n : ℤ) = A023226 (n + 1)

end A023226

/-! ## A023226.P13751478137036010899

`∩[A040970(n+1), A111249(n+1)]`
-/

namespace A023226.P13751478137036010899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111249 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023226.P13751478137036010899

namespace A023226

/-- `∩[A040970(n+1), A111249(n+1)]` -/
def P13751478137036010899.Spec : Prop :=
  ∀ n, (P13751478137036010899.a n : ℤ) = A023226 (n + 1)

end A023226

/-!
# A023227: Primes p such that 7*p + 10 is also prime.

The programs for A023227, the canonical program `A023227.P17859908620912783993` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023227 has offset 1).

The definition of A023227 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1787 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023227.P17859908620912783993

`p?[A111250(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023227

/-- `p?[A111250(n+1)]` -/
def P17859908620912783993.Spec : Prop :=
  ∀ n, P17859908620912783993.a n = A023227 (n + 1)

theorem P17859908620912783993.correct : P17859908620912783993.Spec := by
  intro n
  simp only [A023227, Nat.add_sub_cancel]

end A023227

/-! ## A023227.P13367961022448244661

`p?[A089033(n+1)-1]`
-/

namespace A023227.P13367961022448244661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089033 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023227.P13367961022448244661

namespace A023227

/-- `p?[A089033(n+1)-1]` -/
def P13367961022448244661.Spec : Prop :=
  ∀ n, P13367961022448244661.a n = A023227 (n + 1)

end A023227

/-! ## A023227.P14884546037699829514

`p?[A024903(n+1)-2]`
-/

namespace A023227.P14884546037699829514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024903 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023227.P14884546037699829514

namespace A023227

/-- `p?[A024903(n+1)-2]` -/
def P14884546037699829514.Spec : Prop :=
  ∀ n, P14884546037699829514.a n = A023227 (n + 1)

end A023227

/-! ## A023227.P10472405773489745611

`∩[A007645(n+1), A111250(n+1)]`
-/

namespace A023227.P10472405773489745611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P10472405773489745611

namespace A023227

/-- `∩[A007645(n+1), A111250(n+1)]` -/
def P10472405773489745611.Spec : Prop :=
  ∀ n, (P10472405773489745611.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P11968301260698390067

`∩[A040116(n+1), A111250(n+1)]`
-/

namespace A023227.P11968301260698390067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P11968301260698390067

namespace A023227

/-- `∩[A040116(n+1), A111250(n+1)]` -/
def P11968301260698390067.Spec : Prop :=
  ∀ n, (P11968301260698390067.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P2221322482994136831

`∩[A045331(n+1), A111250(n+1)]`
-/

namespace A023227.P2221322482994136831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P2221322482994136831

namespace A023227

/-- `∩[A045331(n+1), A111250(n+1)]` -/
def P2221322482994136831.Spec : Prop :=
  ∀ n, (P2221322482994136831.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P14585062234871580717

`∩[A049549(n+1), A111250(n+1)]`
-/

namespace A023227.P14585062234871580717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P14585062234871580717

namespace A023227

/-- `∩[A049549(n+1), A111250(n+1)]` -/
def P14585062234871580717.Spec : Prop :=
  ∀ n, (P14585062234871580717.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P17012115863720731029

`∩[A111250(n+1), A279815(n+1)]`
-/

namespace A023227.P17012115863720731029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P17012115863720731029

namespace A023227

/-- `∩[A111250(n+1), A279815(n+1)]` -/
def P17012115863720731029.Spec : Prop :=
  ∀ n, (P17012115863720731029.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P14278874220474176981

`∩[A000040(n+1), A111250(n+1)]`
-/

namespace A023227.P14278874220474176981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P14278874220474176981

namespace A023227

/-- `∩[A000040(n+1), A111250(n+1)]` -/
def P14278874220474176981.Spec : Prop :=
  ∀ n, (P14278874220474176981.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P17957491797150685470

`∩[A004139(n+1), A111250(n+1)]`
-/

namespace A023227.P17957491797150685470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P17957491797150685470

namespace A023227

/-- `∩[A004139(n+1), A111250(n+1)]` -/
def P17957491797150685470.Spec : Prop :=
  ∀ n, (P17957491797150685470.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P17045665433431878334

`∩[A045319(n+1), A111250(n+1)]`
-/

namespace A023227.P17045665433431878334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P17045665433431878334

namespace A023227

/-- `∩[A045319(n+1), A111250(n+1)]` -/
def P17045665433431878334.Spec : Prop :=
  ∀ n, (P17045665433431878334.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P9611430344327375365

`∩[A051948(n+1), A111250(n+1)]`
-/

namespace A023227.P9611430344327375365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P9611430344327375365

namespace A023227

/-- `∩[A051948(n+1), A111250(n+1)]` -/
def P9611430344327375365.Spec : Prop :=
  ∀ n, (P9611430344327375365.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P7259174537849451020

`∩[A053813(n+1), A111250(n+1)]`
-/

namespace A023227.P7259174537849451020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P7259174537849451020

namespace A023227

/-- `∩[A053813(n+1), A111250(n+1)]` -/
def P7259174537849451020.Spec : Prop :=
  ∀ n, (P7259174537849451020.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P6408688421300295205

`∩[A065091(n+1), A111250(n+1)]`
-/

namespace A023227.P6408688421300295205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P6408688421300295205

namespace A023227

/-- `∩[A065091(n+1), A111250(n+1)]` -/
def P6408688421300295205.Spec : Prop :=
  ∀ n, (P6408688421300295205.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P15139435457311266296

`∩[A106118(n+1), A111250(n+1)]`
-/

namespace A023227.P15139435457311266296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P15139435457311266296

namespace A023227

/-- `∩[A106118(n+1), A111250(n+1)]` -/
def P15139435457311266296.Spec : Prop :=
  ∀ n, (P15139435457311266296.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P1638694931378489173

`∩[A111250(n+1), A116974(n+1)]`
-/

namespace A023227.P1638694931378489173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P1638694931378489173

namespace A023227

/-- `∩[A111250(n+1), A116974(n+1)]` -/
def P1638694931378489173.Spec : Prop :=
  ∀ n, (P1638694931378489173.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P18411620089148365521

`∩[A111250(n+1), A140826(n+1)]`
-/

namespace A023227.P18411620089148365521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140826 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P18411620089148365521

namespace A023227

/-- `∩[A111250(n+1), A140826(n+1)]` -/
def P18411620089148365521.Spec : Prop :=
  ∀ n, (P18411620089148365521.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P3205073622155531712

`∩[A066542(n+1), A111250(n+1)]`
-/

namespace A023227.P3205073622155531712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P3205073622155531712

namespace A023227

/-- `∩[A066542(n+1), A111250(n+1)]` -/
def P3205073622155531712.Spec : Prop :=
  ∀ n, (P3205073622155531712.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P1340729753503783336

`∩[A111250(n+1), A182140(n+1)]`
-/

namespace A023227.P1340729753503783336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P1340729753503783336

namespace A023227

/-- `∩[A111250(n+1), A182140(n+1)]` -/
def P1340729753503783336.Spec : Prop :=
  ∀ n, (P1340729753503783336.a n : ℤ) = A023227 (n + 1)

end A023227

/-! ## A023227.P7911308960830208935

`∩[A053577(n+1), A111250(n+1)]`
-/

namespace A023227.P7911308960830208935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053577 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023227.P7911308960830208935

namespace A023227

/-- `∩[A053577(n+1), A111250(n+1)]` -/
def P7911308960830208935.Spec : Prop :=
  ∀ n, (P7911308960830208935.a n : ℤ) = A023227 (n + 1)

end A023227

/-!
# A023228: Numbers k such that k and 8*k + 1 are both prime.

The programs for A023228, the canonical program `A023228.P10498132971099518493` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023228 has offset 1).

The definition of A023228 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 669 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023228.P7890578347379295745

`p?[A005123(n+1)]`
-/

namespace A023228.P7890578347379295745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023228.P7890578347379295745

namespace A023228

/-- `p?[A005123(n+1)]` -/
def P7890578347379295745.Spec : Prop :=
  ∀ n, P7890578347379295745.a n = A023228 (n + 1)

end A023228

/-! ## A023228.P2582852536488848086

`p?[A153762(n+1)+1]`
-/

namespace A023228.P2582852536488848086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023228.P2582852536488848086

namespace A023228

/-- `p?[A153762(n+1)+1]` -/
def P2582852536488848086.Spec : Prop :=
  ∀ n, P2582852536488848086.a n = A023228 (n + 1)

end A023228

/-! ## A023228.P10498132971099518493

`p?[floor(A007519(n+1)/8)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023228

/-- `p?[floor(A007519(n+1)/8)]` -/
def P10498132971099518493.Spec : Prop :=
  ∀ n, P10498132971099518493.a n = A023228 (n + 1)

theorem P10498132971099518493.correct : P10498132971099518493.Spec := by
  intro n
  simp only [A023228, Nat.add_sub_cancel]

end A023228

/-! ## A023228.P9567825620144305586

`filter[A005123(n+1), A010051(#)]`
-/

namespace A023228.P9567825620144305586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023228.P9567825620144305586

namespace A023228

/-- `filter[A005123(n+1), A010051(#)]` -/
def P9567825620144305586.Spec : Prop :=
  ∀ n, P9567825620144305586.a n = A023228 (n + 1)

end A023228

/-! ## A023228.P6748044296261872503

`filter[A005123(n+1), A323153(#)]`
-/

namespace A023228.P6748044296261872503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A023228.P6748044296261872503

namespace A023228

/-- `filter[A005123(n+1), A323153(#)]` -/
def P6748044296261872503.Spec : Prop :=
  ∀ n, P6748044296261872503.a n = A023228 (n + 1)

end A023228

/-! ## A023228.P7029932691284538292

`∩[A005123(n+1), A042988(n)]`
-/

namespace A023228.P7029932691284538292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P7029932691284538292

namespace A023228

/-- `∩[A005123(n+1), A042988(n)]` -/
def P7029932691284538292.Spec : Prop :=
  ∀ n, (P7029932691284538292.a n : ℤ) = A023228 (n + 1)

end A023228

/-! ## A023228.P5477513935279235871

`∩[A000040(n+1), A005123(n+1)]`
-/

namespace A023228.P5477513935279235871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P5477513935279235871

namespace A023228

/-- `∩[A000040(n+1), A005123(n+1)]` -/
def P5477513935279235871.Spec : Prop :=
  ∀ n, (P5477513935279235871.a n : ℤ) = A023228 (n + 1)

end A023228

/-! ## A023228.P3934703278060807319

`∩[A003627(n+1), A005123(n+1)]`
-/

namespace A023228.P3934703278060807319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P3934703278060807319

namespace A023228

/-- `∩[A003627(n+1), A005123(n+1)]` -/
def P3934703278060807319.Spec : Prop :=
  ∀ n, (P3934703278060807319.a n : ℤ) = A023228 (n + 1)

end A023228

/-! ## A023228.P13933222189570288682

`∩[A005123(n+1), A008578(n+1)]`
-/

namespace A023228.P13933222189570288682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P13933222189570288682

namespace A023228

/-- `∩[A005123(n+1), A008578(n+1)]` -/
def P13933222189570288682.Spec : Prop :=
  ∀ n, (P13933222189570288682.a n : ℤ) = A023228 (n + 1)

end A023228

/-! ## A023228.P12109656094731915169

`∩[A005123(n+1), A040028(n+1)]`
-/

namespace A023228.P12109656094731915169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P12109656094731915169

namespace A023228

/-- `∩[A005123(n+1), A040028(n+1)]` -/
def P12109656094731915169.Spec : Prop :=
  ∀ n, (P12109656094731915169.a n : ℤ) = A023228 (n + 1)

end A023228

/-! ## A023228.P1074374195500299401

`∩[A005123(n+1), A040036(n+1)]`
-/

namespace A023228.P1074374195500299401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P1074374195500299401

namespace A023228

/-- `∩[A005123(n+1), A040036(n+1)]` -/
def P1074374195500299401.Spec : Prop :=
  ∀ n, (P1074374195500299401.a n : ℤ) = A023228 (n + 1)

end A023228

/-! ## A023228.P11883353742061199258

`∩[A005123(n+1), A040044(n+1)]`
-/

namespace A023228.P11883353742061199258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P11883353742061199258

namespace A023228

/-- `∩[A005123(n+1), A040044(n+1)]` -/
def P11883353742061199258.Spec : Prop :=
  ∀ n, (P11883353742061199258.a n : ℤ) = A023228 (n + 1)

end A023228

/-! ## A023228.P115726759074685242

`∩[A005123(n+1), A040046(n+1)]`
-/

namespace A023228.P115726759074685242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P115726759074685242

namespace A023228

/-- `∩[A005123(n+1), A040046(n+1)]` -/
def P115726759074685242.Spec : Prop :=
  ∀ n, (P115726759074685242.a n : ℤ) = A023228 (n + 1)

end A023228

/-! ## A023228.P17070406162865153653

`∩[A005123(n+1), A040049(n+1)]`
-/

namespace A023228.P17070406162865153653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P17070406162865153653

namespace A023228

/-- `∩[A005123(n+1), A040049(n+1)]` -/
def P17070406162865153653.Spec : Prop :=
  ∀ n, (P17070406162865153653.a n : ℤ) = A023228 (n + 1)

end A023228

/-! ## A023228.P13058549814296574531

`∩[A005123(n+1), A040054(n+1)]`
-/

namespace A023228.P13058549814296574531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P13058549814296574531

namespace A023228

/-- `∩[A005123(n+1), A040054(n+1)]` -/
def P13058549814296574531.Spec : Prop :=
  ∀ n, (P13058549814296574531.a n : ℤ) = A023228 (n + 1)

end A023228

/-! ## A023228.P2828742389140863997

`∩[A005123(n+1), A040060(n+1)]`
-/

namespace A023228.P2828742389140863997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P2828742389140863997

namespace A023228

/-- `∩[A005123(n+1), A040060(n+1)]` -/
def P2828742389140863997.Spec : Prop :=
  ∀ n, (P2828742389140863997.a n : ℤ) = A023228 (n + 1)

end A023228

/-! ## A023228.P2372436145466324494

`∩[A005123(n+1), A040062(n+1)]`
-/

namespace A023228.P2372436145466324494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P2372436145466324494

namespace A023228

/-- `∩[A005123(n+1), A040062(n+1)]` -/
def P2372436145466324494.Spec : Prop :=
  ∀ n, (P2372436145466324494.a n : ℤ) = A023228 (n + 1)

end A023228

/-! ## A023228.P7725487081432395768

`∩[A005123(n+1), A040065(n+1)]`
-/

namespace A023228.P7725487081432395768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P7725487081432395768

namespace A023228

/-- `∩[A005123(n+1), A040065(n+1)]` -/
def P7725487081432395768.Spec : Prop :=
  ∀ n, (P7725487081432395768.a n : ℤ) = A023228 (n + 1)

end A023228

/-! ## A023228.P12067495782562100854

`∩[A005123(n+1), A040078(n+1)]`
-/

namespace A023228.P12067495782562100854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P12067495782562100854

namespace A023228

/-- `∩[A005123(n+1), A040078(n+1)]` -/
def P12067495782562100854.Spec : Prop :=
  ∀ n, (P12067495782562100854.a n : ℤ) = A023228 (n + 1)

end A023228

/-! ## A023228.P14130129214115717651

`∩[A005123(n+1), A040083(n+1)]`
-/

namespace A023228.P14130129214115717651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023228.P14130129214115717651

namespace A023228

/-- `∩[A005123(n+1), A040083(n+1)]` -/
def P14130129214115717651.Spec : Prop :=
  ∀ n, (P14130129214115717651.a n : ℤ) = A023228 (n + 1)

end A023228

/-!
# A023229: Primes p such that 8*p + 3 is also prime.

The programs for A023229, the canonical program `A023229.P10386872787772600893` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023229 has offset 1).

The definition of A023229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1369 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023229.P10386872787772600893

`p?[A005124(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023229

/-- `p?[A005124(n+1)]` -/
def P10386872787772600893.Spec : Prop :=
  ∀ n, P10386872787772600893.a n = A023229 (n + 1)

theorem P10386872787772600893.correct : P10386872787772600893.Spec := by
  intro n
  simp only [A023229, Nat.add_sub_cancel]

end A023229

/-! ## A023229.P7718040800855146162

`record[A006530(A005124(n+3))]`
-/

namespace A023229.P7718040800855146162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005124 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023229.P7718040800855146162

namespace A023229

/-- `record[A006530(A005124(n+3))]` -/
def P7718040800855146162.Spec : Prop :=
  ∀ n, P7718040800855146162.a n = A023229 (n + 1)

end A023229

/-! ## A023229.P1227325395871169632

`filter[A005124(n+2), A010051(#)]`
-/

namespace A023229.P1227325395871169632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023229.P1227325395871169632

namespace A023229

/-- `filter[A005124(n+2), A010051(#)]` -/
def P1227325395871169632.Spec : Prop :=
  ∀ n, P1227325395871169632.a n = A023229 (n + 1)

end A023229

/-! ## A023229.P13471110973241589057

`∩[A005124(n+1), A042990(n)]`
-/

namespace A023229.P13471110973241589057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023229.P13471110973241589057

namespace A023229

/-- `∩[A005124(n+1), A042990(n)]` -/
def P13471110973241589057.Spec : Prop :=
  ∀ n, (P13471110973241589057.a n : ℤ) = A023229 (n + 1)

end A023229

/-! ## A023229.P15130899744018267683

`∩[A000040(n+1), A005124(n+1)]`
-/

namespace A023229.P15130899744018267683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023229.P15130899744018267683

namespace A023229

/-- `∩[A000040(n+1), A005124(n+1)]` -/
def P15130899744018267683.Spec : Prop :=
  ∀ n, (P15130899744018267683.a n : ℤ) = A023229 (n + 1)

end A023229

/-! ## A023229.P16370316016233246534

`∩[A005124(n+1), A042986(n+1)]`
-/

namespace A023229.P16370316016233246534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023229.P16370316016233246534

namespace A023229

/-- `∩[A005124(n+1), A042986(n+1)]` -/
def P16370316016233246534.Spec : Prop :=
  ∀ n, (P16370316016233246534.a n : ℤ) = A023229 (n + 1)

end A023229

/-! ## A023229.P8307275852666831639

`∩[A005124(n+1), A045344(n+1)]`
-/

namespace A023229.P8307275852666831639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023229.P8307275852666831639

namespace A023229

/-- `∩[A005124(n+1), A045344(n+1)]` -/
def P8307275852666831639.Spec : Prop :=
  ∀ n, (P8307275852666831639.a n : ℤ) = A023229 (n + 1)

end A023229

/-! ## A023229.P7681633642047316024

`∩[A005124(n+1), A106843(n+1)]`
-/

namespace A023229.P7681633642047316024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023229.P7681633642047316024

namespace A023229

/-- `∩[A005124(n+1), A106843(n+1)]` -/
def P7681633642047316024.Spec : Prop :=
  ∀ n, (P7681633642047316024.a n : ℤ) = A023229 (n + 1)

end A023229

/-! ## A023229.P1500967019948848832

`∩[A005124(n+1), A116974(n+1)]`
-/

namespace A023229.P1500967019948848832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023229.P1500967019948848832

namespace A023229

/-- `∩[A005124(n+1), A116974(n+1)]` -/
def P1500967019948848832.Spec : Prop :=
  ∀ n, (P1500967019948848832.a n : ℤ) = A023229 (n + 1)

end A023229

/-! ## A023229.P15114858262976867332

`∩[A005124(n+1), A174219(n+1)]`
-/

namespace A023229.P15114858262976867332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023229.P15114858262976867332

namespace A023229

/-- `∩[A005124(n+1), A174219(n+1)]` -/
def P15114858262976867332.Spec : Prop :=
  ∀ n, (P15114858262976867332.a n : ℤ) = A023229 (n + 1)

end A023229

/-! ## A023229.P5351356063598383072

`∩[A005124(n+1), A175787(n+1)]`
-/

namespace A023229.P5351356063598383072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023229.P5351356063598383072

namespace A023229

/-- `∩[A005124(n+1), A175787(n+1)]` -/
def P5351356063598383072.Spec : Prop :=
  ∀ n, (P5351356063598383072.a n : ℤ) = A023229 (n + 1)

end A023229

/-! ## A023229.P17023918205505579106

`∩[A005124(n+1), A049543(n+1)]`
-/

namespace A023229.P17023918205505579106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049543 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023229.P17023918205505579106

namespace A023229

/-- `∩[A005124(n+1), A049543(n+1)]` -/
def P17023918205505579106.Spec : Prop :=
  ∀ n, (P17023918205505579106.a n : ℤ) = A023229 (n + 1)

end A023229

/-! ## A023229.P3181652784232098566

`p?[A095278(n+2)-A006530(A095278(n+2))]`
-/

namespace A023229.P3181652784232098566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095278 (n + 2) - A006530 (A095278 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023229.P3181652784232098566

namespace A023229

/-- `p?[A095278(n+2)-A006530(A095278(n+2))]` -/
def P3181652784232098566.Spec : Prop :=
  ∀ n, P3181652784232098566.a n = A023229 (n + 1)

end A023229

/-! ## A023229.P17672586371015366451

`p?[lt[A000005(8*n+3), 3]]`
-/

namespace A023229.P17672586371015366451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 3)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023229.P17672586371015366451

namespace A023229

/-- `p?[lt[A000005(8*n+3), 3]]` -/
def P17672586371015366451.Spec : Prop :=
  ∀ n, (P17672586371015366451.a n : ℤ) = A023229 (n + 1)

end A023229

/-! ## A023229.P13946232192898300022

`p?[n*A001222(8*n+3)]`
-/

namespace A023229.P13946232192898300022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (8 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023229.P13946232192898300022

namespace A023229

/-- `p?[n*A001222(8*n+3)]` -/
def P13946232192898300022.Spec : Prop :=
  ∀ n, P13946232192898300022.a n = A023229 (n + 1)

end A023229

/-! ## A023229.P1425900392449537433

`record[A006530(A007520(n+2)-3)]`
-/

namespace A023229.P1425900392449537433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A007520 (n + 2) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023229.P1425900392449537433

namespace A023229

/-- `record[A006530(A007520(n+2)-3)]` -/
def P1425900392449537433.Spec : Prop :=
  ∀ n, P1425900392449537433.a n = A023229 (n + 1)

end A023229

/-! ## A023229.P12151389133378825306

`record[A006530(A045339(n+3)-3)]`
-/

namespace A023229.P12151389133378825306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A045339 (n + 3) - 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023229.P12151389133378825306

namespace A023229

/-- `record[A006530(A045339(n+3)-3)]` -/
def P12151389133378825306.Spec : Prop :=
  ∀ n, P12151389133378825306.a n = A023229 (n + 1)

end A023229

/-! ## A023229.P7383402104604856704

`filter[A005124(n+3), A080339(#)]`
-/

namespace A023229.P7383402104604856704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005124 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A023229.P7383402104604856704

namespace A023229

/-- `filter[A005124(n+3), A080339(#)]` -/
def P7383402104604856704.Spec : Prop :=
  ∀ n, P7383402104604856704.a n = A023229 (n + 1)

end A023229

/-! ## A023229.P13087909106111385538

`p?[A246425(A095278(n+2)-1)]`
-/

namespace A023229.P13087909106111385538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A095278 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023229.P13087909106111385538

namespace A023229

/-- `p?[A246425(A095278(n+2)-1)]` -/
def P13087909106111385538.Spec : Prop :=
  ∀ n, P13087909106111385538.a n = A023229 (n + 1)

end A023229

/-!
# A023230: Numbers k such that k and 8*k + 5 are both prime.

The programs for A023230, the canonical program `A023230.P3973530591756639462` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023230 has offset 1).

The definition of A023230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1688 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023230.P3973530591756639462

`p?[floor(A141196(n+1)/8)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023230

/-- `p?[floor(A141196(n+1)/8)]` -/
def P3973530591756639462.Spec : Prop :=
  ∀ n, P3973530591756639462.a n = A023230 (n + 1)

theorem P3973530591756639462.correct : P3973530591756639462.Spec := by
  intro n
  simp only [A023230, Nat.add_sub_cancel]

end A023230

/-! ## A023230.P1101961769523571444

`p?[A105133(n+1)]`
-/

namespace A023230.P1101961769523571444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023230.P1101961769523571444

namespace A023230

/-- `p?[A105133(n+1)]` -/
def P1101961769523571444.Spec : Prop :=
  ∀ n, P1101961769523571444.a n = A023230 (n + 1)

end A023230

/-! ## A023230.P5871040028949298554

`p?[A005125(n+1)-1]`
-/

namespace A023230.P5871040028949298554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005125 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023230.P5871040028949298554

namespace A023230

/-- `p?[A005125(n+1)-1]` -/
def P5871040028949298554.Spec : Prop :=
  ∀ n, P5871040028949298554.a n = A023230 (n + 1)

end A023230

/-! ## A023230.P2084362642834724736

`p?[floor(A186300(n+1)/4)]`
-/

namespace A023230.P2084362642834724736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A186300 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023230.P2084362642834724736

namespace A023230

/-- `p?[floor(A186300(n+1)/4)]` -/
def P2084362642834724736.Spec : Prop :=
  ∀ n, P2084362642834724736.a n = A023230 (n + 1)

end A023230

/-! ## A023230.P13124350036774817838

`p?[floor(A007521(n+1)/8)]`
-/

namespace A023230.P13124350036774817838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007521 (n + 1) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023230.P13124350036774817838

namespace A023230

/-- `p?[floor(A007521(n+1)/8)]` -/
def P13124350036774817838.Spec : Prop :=
  ∀ n, P13124350036774817838.a n = A023230 (n + 1)

end A023230

/-! ## A023230.P12567308037201271004

`p?[floor(A045366(n+1)/8)]`
-/

namespace A023230.P12567308037201271004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045366 (n + 1) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023230.P12567308037201271004

namespace A023230

/-- `p?[floor(A045366(n+1)/8)]` -/
def P12567308037201271004.Spec : Prop :=
  ∀ n, P12567308037201271004.a n = A023230 (n + 1)

end A023230

/-! ## A023230.P9449899672233736031

`record[A006530(A105133(n+3))]`
-/

namespace A023230.P9449899672233736031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A105133 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023230.P9449899672233736031

namespace A023230

/-- `record[A006530(A105133(n+3))]` -/
def P9449899672233736031.Spec : Prop :=
  ∀ n, P9449899672233736031.a n = A023230 (n + 1)

end A023230

/-! ## A023230.P1500979396655374952

`filter[A105133(n+2), A010051(#)]`
-/

namespace A023230.P1500979396655374952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023230.P1500979396655374952

namespace A023230

/-- `filter[A105133(n+2), A010051(#)]` -/
def P1500979396655374952.Spec : Prop :=
  ∀ n, P1500979396655374952.a n = A023230 (n + 1)

end A023230

/-! ## A023230.P7723994380617227577

`∩[A000040(n+1), A105133(n+1)]`
-/

namespace A023230.P7723994380617227577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023230.P7723994380617227577

namespace A023230

/-- `∩[A000040(n+1), A105133(n+1)]` -/
def P7723994380617227577.Spec : Prop :=
  ∀ n, (P7723994380617227577.a n : ℤ) = A023230 (n + 1)

end A023230

/-! ## A023230.P15290718499847797230

`∩[A004139(n+1), A105133(n+1)]`
-/

namespace A023230.P15290718499847797230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023230.P15290718499847797230

namespace A023230

/-- `∩[A004139(n+1), A105133(n+1)]` -/
def P15290718499847797230.Spec : Prop :=
  ∀ n, (P15290718499847797230.a n : ℤ) = A023230 (n + 1)

end A023230

/-! ## A023230.P1164652606936258202

`∩[A007645(n+1), A105133(n+1)]`
-/

namespace A023230.P1164652606936258202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023230.P1164652606936258202

namespace A023230

/-- `∩[A007645(n+1), A105133(n+1)]` -/
def P1164652606936258202.Spec : Prop :=
  ∀ n, (P1164652606936258202.a n : ℤ) = A023230 (n + 1)

end A023230

/-! ## A023230.P4991936091814126774

`∩[A040116(n+1), A105133(n+1)]`
-/

namespace A023230.P4991936091814126774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023230.P4991936091814126774

namespace A023230

/-- `∩[A040116(n+1), A105133(n+1)]` -/
def P4991936091814126774.Spec : Prop :=
  ∀ n, (P4991936091814126774.a n : ℤ) = A023230 (n + 1)

end A023230

/-! ## A023230.P11421352661972502060

`∩[A045319(n+1), A105133(n+1)]`
-/

namespace A023230.P11421352661972502060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023230.P11421352661972502060

namespace A023230

/-- `∩[A045319(n+1), A105133(n+1)]` -/
def P11421352661972502060.Spec : Prop :=
  ∀ n, (P11421352661972502060.a n : ℤ) = A023230 (n + 1)

end A023230

/-! ## A023230.P6025566232937249952

`∩[A045331(n+1), A105133(n+1)]`
-/

namespace A023230.P6025566232937249952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023230.P6025566232937249952

namespace A023230

/-- `∩[A045331(n+1), A105133(n+1)]` -/
def P6025566232937249952.Spec : Prop :=
  ∀ n, (P6025566232937249952.a n : ℤ) = A023230 (n + 1)

end A023230

/-! ## A023230.P2030334623133269345

`∩[A045393(n+1), A105133(n+1)]`
-/

namespace A023230.P2030334623133269345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023230.P2030334623133269345

namespace A023230

/-- `∩[A045393(n+1), A105133(n+1)]` -/
def P2030334623133269345.Spec : Prop :=
  ∀ n, (P2030334623133269345.a n : ℤ) = A023230 (n + 1)

end A023230

/-! ## A023230.P11133759892920846285

`∩[A049545(n+1), A105133(n+1)]`
-/

namespace A023230.P11133759892920846285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023230.P11133759892920846285

namespace A023230

/-- `∩[A049545(n+1), A105133(n+1)]` -/
def P11133759892920846285.Spec : Prop :=
  ∀ n, (P11133759892920846285.a n : ℤ) = A023230 (n + 1)

end A023230

/-! ## A023230.P4491788359621340787

`∩[A065091(n+1), A105133(n+1)]`
-/

namespace A023230.P4491788359621340787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023230.P4491788359621340787

namespace A023230

/-- `∩[A065091(n+1), A105133(n+1)]` -/
def P4491788359621340787.Spec : Prop :=
  ∀ n, (P4491788359621340787.a n : ℤ) = A023230 (n + 1)

end A023230

/-! ## A023230.P16458278748293489953

`∩[A105133(n+1), A106118(n+1)]`
-/

namespace A023230.P16458278748293489953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023230.P16458278748293489953

namespace A023230

/-- `∩[A105133(n+1), A106118(n+1)]` -/
def P16458278748293489953.Spec : Prop :=
  ∀ n, (P16458278748293489953.a n : ℤ) = A023230 (n + 1)

end A023230

/-! ## A023230.P4290387734480991584

`∩[A105133(n+1), A182140(n+1)]`
-/

namespace A023230.P4290387734480991584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023230.P4290387734480991584

namespace A023230

/-- `∩[A105133(n+1), A182140(n+1)]` -/
def P4290387734480991584.Spec : Prop :=
  ∀ n, (P4290387734480991584.a n : ℤ) = A023230 (n + 1)

end A023230

/-!
# A023231: Primes p such that 8*p + 7 is also prime.

The programs for A023231, the canonical program `A023231.P13970784106652136912` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023231 has offset 1).

The definition of A023231 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 812 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023231.P5199569028207666777

`p?[A139487(n+1)]`
-/

namespace A023231.P5199569028207666777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023231.P5199569028207666777

namespace A023231

/-- `p?[A139487(n+1)]` -/
def P5199569028207666777.Spec : Prop :=
  ∀ n, P5199569028207666777.a n = A023231 (n + 1)

end A023231

/-! ## A023231.P13970784106652136912

`p?[A005122(n+1)-1]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023231

/-- `p?[A005122(n+1)-1]` -/
def P13970784106652136912.Spec : Prop :=
  ∀ n, P13970784106652136912.a n = A023231 (n + 1)

theorem P13970784106652136912.correct : P13970784106652136912.Spec := by
  intro n
  simp only [A023231, Nat.add_sub_cancel]

end A023231

/-! ## A023231.P2379430229698046004

`p?[A153766(n+1)-2]`
-/

namespace A023231.P2379430229698046004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153766 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023231.P2379430229698046004

namespace A023231

/-- `p?[A153766(n+1)-2]` -/
def P2379430229698046004.Spec : Prop :=
  ∀ n, P2379430229698046004.a n = A023231 (n + 1)

end A023231

/-! ## A023231.P1918512276322921958

`p?[floor(A007522(n+1)/8)]`
-/

namespace A023231.P1918512276322921958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007522 (n + 1) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023231.P1918512276322921958

namespace A023231

/-- `p?[floor(A007522(n+1)/8)]` -/
def P1918512276322921958.Spec : Prop :=
  ∀ n, P1918512276322921958.a n = A023231 (n + 1)

end A023231

/-! ## A023231.P15699198749265835939

`p?[floor(A045382(n+1)/8)]`
-/

namespace A023231.P15699198749265835939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A045382 (n + 1) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023231.P15699198749265835939

namespace A023231

/-- `p?[floor(A045382(n+1)/8)]` -/
def P15699198749265835939.Spec : Prop :=
  ∀ n, P15699198749265835939.a n = A023231 (n + 1)

end A023231

/-! ## A023231.P1411783816493381721

`p?[floor(A094712(n+1)/8)]`
-/

namespace A023231.P1411783816493381721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A094712 (n + 1) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023231.P1411783816493381721

namespace A023231

/-- `p?[floor(A094712(n+1)/8)]` -/
def P1411783816493381721.Spec : Prop :=
  ∀ n, P1411783816493381721.a n = A023231 (n + 1)

end A023231

/-! ## A023231.P7481937170734341589

`record[A006530(A139487(n+2))]`
-/

namespace A023231.P7481937170734341589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A139487 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023231.P7481937170734341589

namespace A023231

/-- `record[A006530(A139487(n+2))]` -/
def P7481937170734341589.Spec : Prop :=
  ∀ n, P7481937170734341589.a n = A023231 (n + 1)

end A023231

/-! ## A023231.P5527309479136921099

`filter[A139487(n+2), A010051(#)]`
-/

namespace A023231.P5527309479136921099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023231.P5527309479136921099

namespace A023231

/-- `filter[A139487(n+2), A010051(#)]` -/
def P5527309479136921099.Spec : Prop :=
  ∀ n, P5527309479136921099.a n = A023231 (n + 1)

end A023231

/-! ## A023231.P13458294268109178487

`filter[A139487(n+2), A323153(#)]`
-/

namespace A023231.P13458294268109178487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A023231.P13458294268109178487

namespace A023231

/-- `filter[A139487(n+2), A323153(#)]` -/
def P13458294268109178487.Spec : Prop :=
  ∀ n, P13458294268109178487.a n = A023231 (n + 1)

end A023231

/-! ## A023231.P10048151292499289299

`record[A006530(A005122(n+2)-1)]`
-/

namespace A023231.P10048151292499289299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005122 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023231.P10048151292499289299

namespace A023231

/-- `record[A006530(A005122(n+2)-1)]` -/
def P10048151292499289299.Spec : Prop :=
  ∀ n, P10048151292499289299.a n = A023231 (n + 1)

end A023231

/-! ## A023231.P18309113394658055194

`record[A020639(A005122(n+2)-1)]`
-/

namespace A023231.P18309113394658055194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A005122 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023231.P18309113394658055194

namespace A023231

/-- `record[A020639(A005122(n+2)-1)]` -/
def P18309113394658055194.Spec : Prop :=
  ∀ n, P18309113394658055194.a n = A023231 (n + 1)

end A023231

/-! ## A023231.P2977096288183970505

`record[A006530(A153766(n+2)-2)]`
-/

namespace A023231.P2977096288183970505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153766 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023231.P2977096288183970505

namespace A023231

/-- `record[A006530(A153766(n+2)-2)]` -/
def P2977096288183970505.Spec : Prop :=
  ∀ n, P2977096288183970505.a n = A023231 (n + 1)

end A023231

/-! ## A023231.P2783682239632304739

`∩[A000040(n+1), A139487(n+1)]`
-/

namespace A023231.P2783682239632304739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023231.P2783682239632304739

namespace A023231

/-- `∩[A000040(n+1), A139487(n+1)]` -/
def P2783682239632304739.Spec : Prop :=
  ∀ n, (P2783682239632304739.a n : ℤ) = A023231 (n + 1)

end A023231

/-! ## A023231.P10695745010161829785

`∩[A008578(n+1), A139487(n+1)]`
-/

namespace A023231.P10695745010161829785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023231.P10695745010161829785

namespace A023231

/-- `∩[A008578(n+1), A139487(n+1)]` -/
def P10695745010161829785.Spec : Prop :=
  ∀ n, (P10695745010161829785.a n : ℤ) = A023231 (n + 1)

end A023231

/-! ## A023231.P15780599888458188941

`∩[A040028(n+1), A139487(n+1)]`
-/

namespace A023231.P15780599888458188941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023231.P15780599888458188941

namespace A023231

/-- `∩[A040028(n+1), A139487(n+1)]` -/
def P15780599888458188941.Spec : Prop :=
  ∀ n, (P15780599888458188941.a n : ℤ) = A023231 (n + 1)

end A023231

/-! ## A023231.P17392884527012696457

`∩[A040036(n+1), A139487(n+1)]`
-/

namespace A023231.P17392884527012696457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023231.P17392884527012696457

namespace A023231

/-- `∩[A040036(n+1), A139487(n+1)]` -/
def P17392884527012696457.Spec : Prop :=
  ∀ n, (P17392884527012696457.a n : ℤ) = A023231 (n + 1)

end A023231

/-! ## A023231.P2847345684553568760

`∩[A040044(n+1), A139487(n+1)]`
-/

namespace A023231.P2847345684553568760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023231.P2847345684553568760

namespace A023231

/-- `∩[A040044(n+1), A139487(n+1)]` -/
def P2847345684553568760.Spec : Prop :=
  ∀ n, (P2847345684553568760.a n : ℤ) = A023231 (n + 1)

end A023231

/-! ## A023231.P15429401157735806893

`∩[A040046(n+1), A139487(n+1)]`
-/

namespace A023231.P15429401157735806893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023231.P15429401157735806893

namespace A023231

/-- `∩[A040046(n+1), A139487(n+1)]` -/
def P15429401157735806893.Spec : Prop :=
  ∀ n, (P15429401157735806893.a n : ℤ) = A023231 (n + 1)

end A023231

/-! ## A023231.P15701846035544544907

`∩[A040049(n+1), A139487(n+1)]`
-/

namespace A023231.P15701846035544544907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023231.P15701846035544544907

namespace A023231

/-- `∩[A040049(n+1), A139487(n+1)]` -/
def P15701846035544544907.Spec : Prop :=
  ∀ n, (P15701846035544544907.a n : ℤ) = A023231 (n + 1)

end A023231

/-! ## A023231.P17366851829152180359

`∩[A040054(n+1), A139487(n+1)]`
-/

namespace A023231.P17366851829152180359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023231.P17366851829152180359

namespace A023231

/-- `∩[A040054(n+1), A139487(n+1)]` -/
def P17366851829152180359.Spec : Prop :=
  ∀ n, (P17366851829152180359.a n : ℤ) = A023231 (n + 1)

end A023231

/-!
# A023232: Primes p such that 8*p + 9 is also prime.

The programs for A023232, the canonical program `A023232.P8454457185386987942` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023232 has offset 1).

The definition of A023232 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023232.P8454457185386987942

`p?[2*A155942(n+1)-1]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023232

/-- `p?[2*A155942(n+1)-1]` -/
def P8454457185386987942.Spec : Prop :=
  ∀ n, P8454457185386987942.a n = A023232 (n + 1)

theorem P8454457185386987942.correct : P8454457185386987942.Spec := by
  intro n
  simp only [A023232, Nat.add_sub_cancel]

end A023232

/-! ## A023232.P4772648568101549380

`p?[A155942(n+2)+A155942(n+2)-1]`
-/

namespace A023232.P4772648568101549380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155942 (n + 2) + (A155942 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023232.P4772648568101549380

namespace A023232

/-- `p?[A155942(n+2)+A155942(n+2)-1]` -/
def P4772648568101549380.Spec : Prop :=
  ∀ n, P4772648568101549380.a n = A023232 (n + 1)

end A023232

/-! ## A023232.P8194956566507390470

`p?[ceil((p?[8*n+1]-2)/8)-1]`
-/

namespace A023232.P8194956566507390470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 2 : ℚ) / 8⌉ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023232.P8194956566507390470

namespace A023232

/-- `p?[ceil((p?[8*n+1]-2)/8)-1]` -/
def P8194956566507390470.Spec : Prop :=
  ∀ n, P8194956566507390470.a n = A023232 (n + 1)

end A023232

/-! ## A023232.P11787109685870471517

`p?[A153762(n+1)]`
-/

namespace A023232.P11787109685870471517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023232.P11787109685870471517

namespace A023232

/-- `p?[A153762(n+1)]` -/
def P11787109685870471517.Spec : Prop :=
  ∀ n, P11787109685870471517.a n = A023232 (n + 1)

end A023232

/-! ## A023232.P615833367511040153

`p?[A005123(n+1)-1]`
-/

namespace A023232.P615833367511040153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005123 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023232.P615833367511040153

namespace A023232

/-- `p?[A005123(n+1)-1]` -/
def P615833367511040153.Spec : Prop :=
  ∀ n, P615833367511040153.a n = A023232 (n + 1)

end A023232

/-! ## A023232.P11630340192496029650

`filter[A153762(n+1), A010051(#)]`
-/

namespace A023232.P11630340192496029650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023232.P11630340192496029650

namespace A023232

/-- `filter[A153762(n+1), A010051(#)]` -/
def P11630340192496029650.Spec : Prop :=
  ∀ n, P11630340192496029650.a n = A023232 (n + 1)

end A023232

/-! ## A023232.P5066105842962831213

`∩[A000040(n+1), A153762(n+1)]`
-/

namespace A023232.P5066105842962831213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023232.P5066105842962831213

namespace A023232

/-- `∩[A000040(n+1), A153762(n+1)]` -/
def P5066105842962831213.Spec : Prop :=
  ∀ n, (P5066105842962831213.a n : ℤ) = A023232 (n + 1)

end A023232

/-! ## A023232.P3995883001787463894

`∩[A004139(n+1), A153762(n+1)]`
-/

namespace A023232.P3995883001787463894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023232.P3995883001787463894

namespace A023232

/-- `∩[A004139(n+1), A153762(n+1)]` -/
def P3995883001787463894.Spec : Prop :=
  ∀ n, (P3995883001787463894.a n : ℤ) = A023232 (n + 1)

end A023232

/-! ## A023232.P610961191130772393

`∩[A045319(n+1), A153762(n+1)]`
-/

namespace A023232.P610961191130772393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023232.P610961191130772393

namespace A023232

/-- `∩[A045319(n+1), A153762(n+1)]` -/
def P610961191130772393.Spec : Prop :=
  ∀ n, (P610961191130772393.a n : ℤ) = A023232 (n + 1)

end A023232

/-! ## A023232.P5906438226595143153

`∩[A045320(n+1), A153762(n+1)]`
-/

namespace A023232.P5906438226595143153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023232.P5906438226595143153

namespace A023232

/-- `∩[A045320(n+1), A153762(n+1)]` -/
def P5906438226595143153.Spec : Prop :=
  ∀ n, (P5906438226595143153.a n : ℤ) = A023232 (n + 1)

end A023232

/-! ## A023232.P8000367805867296596

`∩[A045334(n+1), A153762(n+1)]`
-/

namespace A023232.P8000367805867296596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045334 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023232.P8000367805867296596

namespace A023232

/-- `∩[A045334(n+1), A153762(n+1)]` -/
def P8000367805867296596.Spec : Prop :=
  ∀ n, (P8000367805867296596.a n : ℤ) = A023232 (n + 1)

end A023232

/-! ## A023232.P1450598828043126142

`∩[A045344(n+1), A153762(n+1)]`
-/

namespace A023232.P1450598828043126142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023232.P1450598828043126142

namespace A023232

/-- `∩[A045344(n+1), A153762(n+1)]` -/
def P1450598828043126142.Spec : Prop :=
  ∀ n, (P1450598828043126142.a n : ℤ) = A023232 (n + 1)

end A023232

/-! ## A023232.P4591937555735174987

`∩[A045405(n+1), A153762(n+1)]`
-/

namespace A023232.P4591937555735174987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045405 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023232.P4591937555735174987

namespace A023232

/-- `∩[A045405(n+1), A153762(n+1)]` -/
def P4591937555735174987.Spec : Prop :=
  ∀ n, (P4591937555735174987.a n : ℤ) = A023232 (n + 1)

end A023232

/-! ## A023232.P834195097164593869

`∩[A045428(n+1), A153762(n+1)]`
-/

namespace A023232.P834195097164593869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023232.P834195097164593869

namespace A023232

/-- `∩[A045428(n+1), A153762(n+1)]` -/
def P834195097164593869.Spec : Prop :=
  ∀ n, (P834195097164593869.a n : ℤ) = A023232 (n + 1)

end A023232

/-! ## A023232.P2630929235444099482

`∩[A049549(n+1), A153762(n+1)]`
-/

namespace A023232.P2630929235444099482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023232.P2630929235444099482

namespace A023232

/-- `∩[A049549(n+1), A153762(n+1)]` -/
def P2630929235444099482.Spec : Prop :=
  ∀ n, (P2630929235444099482.a n : ℤ) = A023232 (n + 1)

end A023232

/-! ## A023232.P9640407183921594444

`∩[A065091(n+1), A153762(n+1)]`
-/

namespace A023232.P9640407183921594444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023232.P9640407183921594444

namespace A023232

/-- `∩[A065091(n+1), A153762(n+1)]` -/
def P9640407183921594444.Spec : Prop :=
  ∀ n, (P9640407183921594444.a n : ℤ) = A023232 (n + 1)

end A023232

/-! ## A023232.P17086592259262374684

`∩[A106843(n+1), A153762(n+1)]`
-/

namespace A023232.P17086592259262374684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023232.P17086592259262374684

namespace A023232

/-- `∩[A106843(n+1), A153762(n+1)]` -/
def P17086592259262374684.Spec : Prop :=
  ∀ n, (P17086592259262374684.a n : ℤ) = A023232 (n + 1)

end A023232

/-! ## A023232.P15190147793442946353

`∩[A116974(n+1), A153762(n+1)]`
-/

namespace A023232.P15190147793442946353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023232.P15190147793442946353

namespace A023232

/-- `∩[A116974(n+1), A153762(n+1)]` -/
def P15190147793442946353.Spec : Prop :=
  ∀ n, (P15190147793442946353.a n : ℤ) = A023232 (n + 1)

end A023232

/-! ## A023232.P4970503955896209637

`∩[A153762(n+1), A182986(n+1)]`
-/

namespace A023232.P4970503955896209637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153762 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023232.P4970503955896209637

namespace A023232

/-- `∩[A153762(n+1), A182986(n+1)]` -/
def P4970503955896209637.Spec : Prop :=
  ∀ n, (P4970503955896209637.a n : ℤ) = A023232 (n + 1)

end A023232

/-!
# A023233: Primes p such that 9*p + 2 is also prime.

The programs for A023233, the canonical program `A023233.P18087890990746675777` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023233 has offset 1).

The definition of A023233 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1723 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023233.P18087890990746675777

`p?[A024907(n+1)-1]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023233

/-- `p?[A024907(n+1)-1]` -/
def P18087890990746675777.Spec : Prop :=
  ∀ n, P18087890990746675777.a n = A023233 (n + 1)

theorem P18087890990746675777.correct : P18087890990746675777.Spec := by
  intro n
  simp only [A023233, Nat.add_sub_cancel]

end A023233

/-! ## A023233.P4501041139650057410

`p?[floor(A061238(n+1)/9)]`
-/

namespace A023233.P4501041139650057410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061238 (n + 1) : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023233.P4501041139650057410

namespace A023233

/-- `p?[floor(A061238(n+1)/9)]` -/
def P4501041139650057410.Spec : Prop :=
  ∀ n, P4501041139650057410.a n = A023233 (n + 1)

end A023233

/-! ## A023233.P4138109599121679494

`p?[floor(A129807(n+1)/9)]`
-/

namespace A023233.P4138109599121679494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A129807 (n + 1) : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023233.P4138109599121679494

namespace A023233

/-- `p?[floor(A129807(n+1)/9)]` -/
def P4138109599121679494.Spec : Prop :=
  ∀ n, P4138109599121679494.a n = A023233 (n + 1)

end A023233

/-! ## A023233.P15176038404957075228

`p?[eq[1, A001222(9*n+2)]]`
-/

namespace A023233.P15176038404957075228
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (9 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023233.P15176038404957075228

namespace A023233

/-- `p?[eq[1, A001222(9*n+2)]]` -/
def P15176038404957075228.Spec : Prop :=
  ∀ n, (P15176038404957075228.a n : ℤ) = A023233 (n + 1)

end A023233

/-! ## A023233.P10186282210093084053

`p?[lt[A000005(8*n+2+n), 3]]`
-/

namespace A023233.P10186282210093084053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (8 * n + 2 + n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023233.P10186282210093084053

namespace A023233

/-- `p?[lt[A000005(8*n+2+n), 3]]` -/
def P10186282210093084053.Spec : Prop :=
  ∀ n, (P10186282210093084053.a n : ℤ) = A023233 (n + 1)

end A023233

/-! ## A023233.P15485695585921377731

`p?[lt[9*n, A006530(9*n+2)+1]]`
-/

namespace A023233.P15485695585921377731
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (9 * n + 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023233.P15485695585921377731

namespace A023233

/-- `p?[lt[9*n, A006530(9*n+2)+1]]` -/
def P15485695585921377731.Spec : Prop :=
  ∀ n, (P15485695585921377731.a n : ℤ) = A023233 (n + 1)

end A023233

/-! ## A023233.P5979722638430727820

`record[A006530(A049229(n+1)-2)]`
-/

namespace A023233.P5979722638430727820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A049229 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023233.P5979722638430727820

namespace A023233

/-- `record[A006530(A049229(n+1)-2)]` -/
def P5979722638430727820.Spec : Prop :=
  ∀ n, P5979722638430727820.a n = A023233 (n + 1)

end A023233

/-! ## A023233.P6597614678755722780

`record[A006530(A063642(n+1)-2)]`
-/

namespace A023233.P6597614678755722780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A063642 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023233.P6597614678755722780

namespace A023233

/-- `record[A006530(A063642(n+1)-2)]` -/
def P6597614678755722780.Spec : Prop :=
  ∀ n, P6597614678755722780.a n = A023233 (n + 1)

end A023233

/-! ## A023233.P9188926736496312421

`record[A006530(A061238(n+2)-2)]`
-/

namespace A023233.P9188926736496312421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061238 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023233.P9188926736496312421

namespace A023233

/-- `record[A006530(A061238(n+2)-2)]` -/
def P9188926736496312421.Spec : Prop :=
  ∀ n, P9188926736496312421.a n = A023233 (n + 1)

end A023233

/-! ## A023233.P1544089523259260581

`p?[A156706(A001748(n+1))+A008864(n+1)]`
-/

namespace A023233.P1544089523259260581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A001748 (n + 1)).toNat + A008864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023233.P1544089523259260581

namespace A023233

/-- `p?[A156706(A001748(n+1))+A008864(n+1)]` -/
def P1544089523259260581.Spec : Prop :=
  ∀ n, P1544089523259260581.a n = A023233 (n + 1)

end A023233

/-! ## A023233.P15142528190637624302

`p?[A167020(3*n+2)+A005843(n)]`
-/

namespace A023233.P15142528190637624302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167020 (3 * n + 2) + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023233.P15142528190637624302

namespace A023233

/-- `p?[A167020(3*n+2)+A005843(n)]` -/
def P15142528190637624302.Spec : Prop :=
  ∀ n, P15142528190637624302.a n = A023233 (n + 1)

end A023233

/-! ## A023233.P14723302956709531119

`p?[lt[A000040(n+1), A020639(9*n+2)]]`
-/

namespace A023233.P14723302956709531119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (9 * n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023233.P14723302956709531119

namespace A023233

/-- `p?[lt[A000040(n+1), A020639(9*n+2)]]` -/
def P14723302956709531119.Spec : Prop :=
  ∀ n, (P14723302956709531119.a n : ℤ) = A023233 (n + 1)

end A023233

/-! ## A023233.P11216555798973267096

`p?[n*A107286(A017185(n))]`
-/

namespace A023233.P11216555798973267096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A107286 (A017185 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023233.P11216555798973267096

namespace A023233

/-- `p?[n*A107286(A017185(n))]` -/
def P11216555798973267096.Spec : Prop :=
  ∀ n, P11216555798973267096.a n = A023233 (n + 1)

end A023233

/-!
# A023234: Primes p such that 9*p + 4 is also prime.

The programs for A023234, the canonical program `A023234.P391613333200129420` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023234 has offset 1).

The definition of A023234 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1768 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023234.P391613333200129420

`p?[A024908(n+1)-1]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023234

/-- `p?[A024908(n+1)-1]` -/
def P391613333200129420.Spec : Prop :=
  ∀ n, P391613333200129420.a n = A023234 (n + 1)

theorem P391613333200129420.correct : P391613333200129420.Spec := by
  intro n
  simp only [A023234, Nat.add_sub_cancel]

end A023234

/-! ## A023234.P8994745854690129660

`p?[floor(A061239(n+1)/9)]`
-/

namespace A023234.P8994745854690129660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A061239 (n + 1) : ℚ) / 9⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023234.P8994745854690129660

namespace A023234

/-- `p?[floor(A061239(n+1)/9)]` -/
def P8994745854690129660.Spec : Prop :=
  ∀ n, P8994745854690129660.a n = A023234 (n + 1)

end A023234

/-! ## A023234.P14976502316959766738

`record[A006530(A024908(n+2)-1)]`
-/

namespace A023234.P14976502316959766738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024908 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023234.P14976502316959766738

namespace A023234

/-- `record[A006530(A024908(n+2)-1)]` -/
def P14976502316959766738.Spec : Prop :=
  ∀ n, P14976502316959766738.a n = A023234 (n + 1)

end A023234

/-! ## A023234.P4303836151230079111

`p?[n*A156706(3*n+1)]`
-/

namespace A023234.P4303836151230079111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A156706 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023234.P4303836151230079111

namespace A023234

/-- `p?[n*A156706(3*n+1)]` -/
def P4303836151230079111.Spec : Prop :=
  ∀ n, P4303836151230079111.a n = A023234 (n + 1)

end A023234

/-! ## A023234.P9104654111402234754

`p?[lt[A001222(3*(n+1)+6*n+1), 2]]`
-/

namespace A023234.P9104654111402234754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (n + 1) + 6 * n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023234.P9104654111402234754

namespace A023234

/-- `p?[lt[A001222(3*(n+1)+6*n+1), 2]]` -/
def P9104654111402234754.Spec : Prop :=
  ∀ n, (P9104654111402234754.a n : ℤ) = A023234 (n + 1)

end A023234

/-! ## A023234.P5575878464097271132

`p?[lt[A000005(2*(n+1)+7*n+11), 3]+1]`
-/

namespace A023234.P5575878464097271132
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * (n + 1) + (7 * n + 11))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023234.P5575878464097271132

namespace A023234

/-- `p?[lt[A000005(2*(n+1)+7*n+11), 3]+1]` -/
def P5575878464097271132.Spec : Prop :=
  ∀ n, (P5575878464097271132.a n : ℤ) = A023234 (n + 1)

end A023234

/-! ## A023234.P13107674551744652024

`record[A006530(A061239(n+1)-4)]`
-/

namespace A023234.P13107674551744652024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A061239 (n + 1) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023234.P13107674551744652024

namespace A023234

/-- `record[A006530(A061239(n+1)-4)]` -/
def P13107674551744652024.Spec : Prop :=
  ∀ n, P13107674551744652024.a n = A023234 (n + 1)

end A023234

/-! ## A023234.P17763211176276209343

`p?[A014681(A024908(n+1))]`
-/

namespace A023234.P17763211176276209343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A024908 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023234.P17763211176276209343

namespace A023234

/-- `p?[A014681(A024908(n+1))]` -/
def P17763211176276209343.Spec : Prop :=
  ∀ n, P17763211176276209343.a n = A023234 (n + 1)

end A023234

/-! ## A023234.P3621569921139837240

`record[A014963(A024908(n+2)-1)]`
-/

namespace A023234.P3621569921139837240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A024908 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023234.P3621569921139837240

namespace A023234

/-- `record[A014963(A024908(n+2)-1)]` -/
def P3621569921139837240.Spec : Prop :=
  ∀ n, P3621569921139837240.a n = A023234 (n + 1)

end A023234

/-! ## A023234.P13874409550685402232

`p?[(n+1)*A001222(A017305(n+1)-n)]`
-/

namespace A023234.P13874409550685402232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001222 (A017305 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023234.P13874409550685402232

namespace A023234

/-- `p?[(n+1)*A001222(A017305(n+1)-n)]` -/
def P13874409550685402232.Spec : Prop :=
  ∀ n, P13874409550685402232.a n = A023234 (n + 1)

end A023234

/-! ## A023234.P2036637708332495638

`record[A014963(lt[A001222(3*(3*n+5)+7), 2]+2)]`
-/

namespace A023234.P2036637708332495638
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 * (3 * n + 5) + 7)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023234.P2036637708332495638

namespace A023234

/-- `record[A014963(lt[A001222(3*(3*n+5)+7), 2]+2)]` -/
def P2036637708332495638.Spec : Prop :=
  ∀ n, P2036637708332495638.a n = A023234 (n + 1)

end A023234

/-! ## A023234.P11375849421473264516

`p?[A137241(A034936(n+2))]`
-/

namespace A023234.P11375849421473264516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A034936 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023234.P11375849421473264516

namespace A023234

/-- `p?[A137241(A034936(n+2))]` -/
def P11375849421473264516.Spec : Prop :=
  ∀ n, P11375849421473264516.a n = A023234 (n + 1)

end A023234

/-! ## A023234.P4961909113267515566

`p?[A137241(A089953(n+2)+1)]`
-/

namespace A023234.P4961909113267515566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A089953 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023234.P4961909113267515566

namespace A023234

/-- `p?[A137241(A089953(n+2)+1)]` -/
def P4961909113267515566.Spec : Prop :=
  ∀ n, P4961909113267515566.a n = A023234 (n + 1)

end A023234

/-! ## A023234.P6170609843035540685

`p?[A137241(A107303(n+1))-1]`
-/

namespace A023234.P6170609843035540685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A107303 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023234.P6170609843035540685

namespace A023234

/-- `p?[A137241(A107303(n+1))-1]` -/
def P6170609843035540685.Spec : Prop :=
  ∀ n, P6170609843035540685.a n = A023234 (n + 1)

end A023234

/-! ## A023234.P10660071821733754122

`p?[A137241(A024892(n+2)-1)]`
-/

namespace A023234.P10660071821733754122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A024892 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023234.P10660071821733754122

namespace A023234

/-- `p?[A137241(A024892(n+2)-1)]` -/
def P10660071821733754122.Spec : Prop :=
  ∀ n, P10660071821733754122.a n = A023234 (n + 1)

end A023234

/-! ## A023234.P9510006722346534429

`p?[A137241(A153183(n+2)-2)]`
-/

namespace A023234.P9510006722346534429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A153183 (n + 2) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023234.P9510006722346534429

namespace A023234

/-- `p?[A137241(A153183(n+2)-2)]` -/
def P9510006722346534429.Spec : Prop :=
  ∀ n, P9510006722346534429.a n = A023234 (n + 1)

end A023234

/-! ## A023234.P987139209753144408

`p?[n*A001222(A016777(A016777(n)))]`
-/

namespace A023234.P987139209753144408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (A016777 (A016777 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023234.P987139209753144408

namespace A023234

/-- `p?[n*A001222(A016777(A016777(n)))]` -/
def P987139209753144408.Spec : Prop :=
  ∀ n, P987139209753144408.a n = A023234 (n + 1)

end A023234

/-! ## A023234.P18112814231467678174

`p?[n*A107286(A017209(n))]`
-/

namespace A023234.P18112814231467678174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A107286 (A017209 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023234.P18112814231467678174

namespace A023234

/-- `p?[n*A107286(A017209(n))]` -/
def P18112814231467678174.Spec : Prop :=
  ∀ n, P18112814231467678174.a n = A023234 (n + 1)

end A023234

/-!
# A023235: Primes p such that 9*p + 8 is also prime.

The programs for A023235, the canonical program `A023235.P10290147567702551712` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023235 has offset 1).

The definition of A023235 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023235.P10290147567702551712

`floor(A136073(n+1)/9)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023235

/-- `floor(A136073(n+1)/9)` -/
def P10290147567702551712.Spec : Prop :=
  ∀ n, P10290147567702551712.a n = A023235 (n + 1)

theorem P10290147567702551712.correct : P10290147567702551712.Spec := by
  intro n
  simp only [A023235, Nat.add_sub_cancel]

end A023235

/-! ## A023235.P15641164710033726952

`p?[A258663(n+1)-1]`
-/

namespace A023235.P15641164710033726952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258663 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023235.P15641164710033726952

namespace A023235

/-- `p?[A258663(n+1)-1]` -/
def P15641164710033726952.Spec : Prop :=
  ∀ n, P15641164710033726952.a n = A023235 (n + 1)

end A023235

/-! ## A023235.P4843673109496035325

`p?[2*A138918(n+1)-1]`
-/

namespace A023235.P4843673109496035325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A138918 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023235.P4843673109496035325

namespace A023235

/-- `p?[2*A138918(n+1)-1]` -/
def P4843673109496035325.Spec : Prop :=
  ∀ n, P4843673109496035325.a n = A023235 (n + 1)

end A023235

/-! ## A023235.P7890589160347153627

`p?[2*(A246965(n+1)-2)+1]`
-/

namespace A023235.P7890589160347153627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A246965 (n + 1) - 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023235.P7890589160347153627

namespace A023235

/-- `p?[2*(A246965(n+1)-2)+1]` -/
def P7890589160347153627.Spec : Prop :=
  ∀ n, P7890589160347153627.a n = A023235 (n + 1)

end A023235

/-! ## A023235.P17225055622225949399

`p?[A138918(n+2)+A138918(n+2)-1]`
-/

namespace A023235.P17225055622225949399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138918 (n + 2) + (A138918 (n + 2) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023235.P17225055622225949399

namespace A023235

/-- `p?[A138918(n+2)+A138918(n+2)-1]` -/
def P17225055622225949399.Spec : Prop :=
  ∀ n, P17225055622225949399.a n = A023235 (n + 1)

end A023235

/-! ## A023235.P6093317615427954352

`p?[A066182(2*A138918(n+2))]`
-/

namespace A023235.P6093317615427954352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (2 * A138918 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023235.P6093317615427954352

namespace A023235

/-- `p?[A066182(2*A138918(n+2))]` -/
def P6093317615427954352.Spec : Prop :=
  ∀ n, P6093317615427954352.a n = A023235 (n + 1)

end A023235

/-! ## A023235.P15248420420518804512

`p?[n*A075743(3*n+2)]`
-/

namespace A023235.P15248420420518804512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A075743 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023235.P15248420420518804512

namespace A023235

/-- `p?[n*A075743(3*n+2)]` -/
def P15248420420518804512.Spec : Prop :=
  ∀ n, P15248420420518804512.a n = A023235 (n + 1)

end A023235

/-! ## A023235.P5339014722808595135

`p?[n*A001222(9*n+8)]`
-/

namespace A023235.P5339014722808595135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (9 * n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023235.P5339014722808595135

namespace A023235

/-- `p?[n*A001222(9*n+8)]` -/
def P5339014722808595135.Spec : Prop :=
  ∀ n, P5339014722808595135.a n = A023235 (n + 1)

end A023235

/-! ## A023235.P828927180204055839

`p?[lt[A000005(and(1, n+1)+9*n+8), 3]]`
-/

namespace A023235.P828927180204055839
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.land 1 (n + 1) + (9 * n + 8))

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023235.P828927180204055839

namespace A023235

/-- `p?[lt[A000005(and(1, n+1)+9*n+8), 3]]` -/
def P828927180204055839.Spec : Prop :=
  ∀ n, (P828927180204055839.a n : ℤ) = A023235 (n + 1)

end A023235

/-! ## A023235.P3493863895962412101

`A006530(A136073(n+1)-8)`
-/

namespace A023235.P3493863895962412101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A136073 (n + 1) - 8).toNat

end

end A023235.P3493863895962412101

namespace A023235

/-- `A006530(A136073(n+1)-8)` -/
def P3493863895962412101.Spec : Prop :=
  ∀ n, P3493863895962412101.a n = A023235 (n + 1)

end A023235

/-! ## A023235.P14172981267018645402

`record[A014963(A258663(n+2)-1)]`
-/

namespace A023235.P14172981267018645402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A258663 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023235.P14172981267018645402

namespace A023235

/-- `record[A014963(A258663(n+2)-1)]` -/
def P14172981267018645402.Spec : Prop :=
  ∀ n, P14172981267018645402.a n = A023235 (n + 1)

end A023235

/-! ## A023235.P4149146520665667758

`p?[A014681(2*A138918(n+1))]`
-/

namespace A023235.P4149146520665667758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A138918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023235.P4149146520665667758

namespace A023235

/-- `p?[A014681(2*A138918(n+1))]` -/
def P4149146520665667758.Spec : Prop :=
  ∀ n, P4149146520665667758.a n = A023235 (n + 1)

end A023235

/-! ## A023235.P12717340773756831299

`p?[A143051(2*A138918(n+1))]`
-/

namespace A023235.P12717340773756831299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143051 (2 * A138918 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023235.P12717340773756831299

namespace A023235

/-- `p?[A143051(2*A138918(n+1))]` -/
def P12717340773756831299.Spec : Prop :=
  ∀ n, P12717340773756831299.a n = A023235 (n + 1)

end A023235

/-! ## A023235.P10319477443604246560

`p?[n*A167020(A026741(n+1)+n+1)]`
-/

namespace A023235.P10319477443604246560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A167020 (A026741 (n + 1) + (n : ℤ) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023235.P10319477443604246560

namespace A023235

/-- `p?[n*A167020(A026741(n+1)+n+1)]` -/
def P10319477443604246560.Spec : Prop :=
  ∀ n, P10319477443604246560.a n = A023235 (n + 1)

end A023235

/-!
# A023236: Primes p such that 9*p + 10 is also prime.

The programs for A023236, the canonical program `A023236.P11167435057986219502` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023236 has offset 1).

The definition of A023236 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2319 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023236.P11167435057986219502

`p?[A024906(n+1)-1]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023236

/-- `p?[A024906(n+1)-1]` -/
def P11167435057986219502.Spec : Prop :=
  ∀ n, P11167435057986219502.a n = A023236 (n + 1)

theorem P11167435057986219502.correct : P11167435057986219502.Spec := by
  intro n
  simp only [A023236, Nat.add_sub_cancel]

end A023236

/-! ## A023236.P3200135782960196846

`p?[2*A111094(n+1)-1]`
-/

namespace A023236.P3200135782960196846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A111094 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023236.P3200135782960196846

namespace A023236

/-- `p?[2*A111094(n+1)-1]` -/
def P3200135782960196846.Spec : Prop :=
  ∀ n, P3200135782960196846.a n = A023236 (n + 1)

end A023236

/-! ## A023236.P17413379274640363633

`p?[n*A156706(3*(n+1))]`
-/

namespace A023236.P17413379274640363633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A156706 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023236.P17413379274640363633

namespace A023236

/-- `p?[n*A156706(3*(n+1))]` -/
def P17413379274640363633.Spec : Prop :=
  ∀ n, P17413379274640363633.a n = A023236 (n + 1)

end A023236

/-! ## A023236.P2815882861652544369

`p?[n*A001222(9*n+10)]`
-/

namespace A023236.P2815882861652544369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (9 * n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023236.P2815882861652544369

namespace A023236

/-- `p?[n*A001222(9*n+10)]` -/
def P2815882861652544369.Spec : Prop :=
  ∀ n, P2815882861652544369.a n = A023236 (n + 1)

end A023236

/-! ## A023236.P11643513326668381915

`p?[n*A010051(9*n+10)]`
-/

namespace A023236.P11643513326668381915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A010051 (9 * n + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023236.P11643513326668381915

namespace A023236

/-- `p?[n*A010051(9*n+10)]` -/
def P11643513326668381915.Spec : Prop :=
  ∀ n, P11643513326668381915.a n = A023236 (n + 1)

end A023236

/-! ## A023236.P11444092665286095373

`p?[eq[2, A000005(9*(n+1)+1)]]`
-/

namespace A023236.P11444092665286095373
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (9 * (n + 1) + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023236.P11444092665286095373

namespace A023236

/-- `p?[eq[2, A000005(9*(n+1)+1)]]` -/
def P11444092665286095373.Spec : Prop :=
  ∀ n, (P11444092665286095373.a n : ℤ) = A023236 (n + 1)

end A023236

/-! ## A023236.P5483492376750671511

`eq[∑{e}[9*(n+1)+1, #], A003415(n)]`
-/

namespace A023236.P5483492376750671511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n + 1) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A023236.P5483492376750671511

namespace A023236

/-- `eq[∑{e}[9*(n+1)+1, #], A003415(n)]` -/
def P5483492376750671511.Spec : Prop :=
  ∀ n, (P5483492376750671511.a n : ℤ) = A023236 (n + 1)

end A023236

/-! ## A023236.P17303780270369944297

`eq[A018783(n), A368201(n+1)]`
-/

namespace A023236.P17303780270369944297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023236.P17303780270369944297

namespace A023236

/-- `eq[A018783(n), A368201(n+1)]` -/
def P17303780270369944297.Spec : Prop :=
  ∀ n, (P17303780270369944297.a n : ℤ) = A023236 (n + 1)

end A023236

/-! ## A023236.P7310237685203173880

`eq[A175126(n), A368201(n+1)]`
-/

namespace A023236.P7310237685203173880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023236.P7310237685203173880

namespace A023236

/-- `eq[A175126(n), A368201(n+1)]` -/
def P7310237685203173880.Spec : Prop :=
  ∀ n, (P7310237685203173880.a n : ℤ) = A023236 (n + 1)

end A023236

/-! ## A023236.P2097682623555429812

`eq[A210442(n), A368201(n+1)]`
-/

namespace A023236.P2097682623555429812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210442 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368201 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023236.P2097682623555429812

namespace A023236

/-- `eq[A210442(n), A368201(n+1)]` -/
def P2097682623555429812.Spec : Prop :=
  ∀ n, (P2097682623555429812.a n : ℤ) = A023236 (n + 1)

end A023236

/-! ## A023236.P17730768079123032537

`eq[A368201(n+1), A368922(n)]`
-/

namespace A023236.P17730768079123032537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368922 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023236.P17730768079123032537

namespace A023236

/-- `eq[A368201(n+1), A368922(n)]` -/
def P17730768079123032537.Spec : Prop :=
  ∀ n, (P17730768079123032537.a n : ℤ) = A023236 (n + 1)

end A023236

/-! ## A023236.P8885458992074571395

`eq[A368201(n+1), A370482(n)]`
-/

namespace A023236.P8885458992074571395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023236.P8885458992074571395

namespace A023236

/-- `eq[A368201(n+1), A370482(n)]` -/
def P8885458992074571395.Spec : Prop :=
  ∀ n, (P8885458992074571395.a n : ℤ) = A023236 (n + 1)

end A023236

/-! ## A023236.P15266114175556009697

`p?[A137241(A024892(n+1))-1]`
-/

namespace A023236.P15266114175556009697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A024892 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023236.P15266114175556009697

namespace A023236

/-- `p?[A137241(A024892(n+1))-1]` -/
def P15266114175556009697.Spec : Prop :=
  ∀ n, P15266114175556009697.a n = A023236 (n + 1)

end A023236

/-!
# A023237: Primes p such that 10*p + 1 is also prime.

The programs for A023237, there is no canonical definition to state claims against.
-/

/-! ## A023237.P3846050441033645103

`floor(A055781(n+1)/10)`
-/

namespace A023237.P3846050441033645103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055781 (n + 1) : ℚ) / 10⌋

end

end A023237.P3846050441033645103

/-! ## A023237.P15853718241602901913

`p?[A089374(n+1)]`
-/

namespace A023237.P15853718241602901913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023237.P15853718241602901913

/-! ## A023237.P7684617319545323621

`∩[A007645(n+1), A089374(n+1)]`
-/

namespace A023237.P7684617319545323621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P7684617319545323621

/-! ## A023237.P7222259017975594831

`∩[A045331(n+1), A089374(n+1)]`
-/

namespace A023237.P7222259017975594831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P7222259017975594831

/-! ## A023237.P17299015357633900267

`∩[A040116(n+1), A089374(n+1)]`
-/

namespace A023237.P17299015357633900267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P17299015357633900267

/-! ## A023237.P17397156619774639392

`∩[A089374(n+1), A325143(n+1)]`
-/

namespace A023237.P17397156619774639392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325143 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P17397156619774639392

/-! ## A023237.P10278192230872092481

`∩[A045393(n+1), A089374(n+1)]`
-/

namespace A023237.P10278192230872092481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P10278192230872092481

/-! ## A023237.P6769557158966554891

`∩[A000040(n+1), A089374(n+1)]`
-/

namespace A023237.P6769557158966554891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P6769557158966554891

/-! ## A023237.P3182309507425793825

`∩[A004139(n+1), A089374(n+1)]`
-/

namespace A023237.P3182309507425793825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P3182309507425793825

/-! ## A023237.P5342017401538702025

`∩[A045319(n+1), A089374(n+1)]`
-/

namespace A023237.P5342017401538702025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P5342017401538702025

/-! ## A023237.P17864101835390712262

`∩[A053813(n+1), A089374(n+1)]`
-/

namespace A023237.P17864101835390712262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P17864101835390712262

/-! ## A023237.P15239312239692994500

`∩[A065091(n+1), A089374(n+1)]`
-/

namespace A023237.P15239312239692994500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P15239312239692994500

/-! ## A023237.P12556490477743131580

`∩[A089374(n+1), A132630(n+1)]`
-/

namespace A023237.P12556490477743131580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P12556490477743131580

/-! ## A023237.P5277179005335707504

`∩[A182140(n+1), A089374(n+1)]`
-/

namespace A023237.P5277179005335707504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P5277179005335707504

/-! ## A023237.P9473583159796078241

`∩[A089374(n+1), A182986(n+1)]`
-/

namespace A023237.P9473583159796078241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P9473583159796078241

/-! ## A023237.P8790185442442177934

`∩[A089374(n+1), A189710(n+1)]`
-/

namespace A023237.P8790185442442177934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P8790185442442177934

/-! ## A023237.P8595626612003588863

`∩[A089374(n+1), A301987(n+1)]`
-/

namespace A023237.P8595626612003588863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P8595626612003588863

/-! ## A023237.P4375995595884191008

`∩[A089374(n+1), A187711(n+1)]`
-/

namespace A023237.P4375995595884191008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023237.P4375995595884191008

/-! ## A023237.P10813527123783169650

`record[A006530(A089374(n+2))]`
-/

namespace A023237.P10813527123783169650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089374 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023237.P10813527123783169650

/-! ## A023237.P12472929192201033955

`filter[A089374(n+1), A010051(#)]`
-/

namespace A023237.P12472929192201033955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023237.P12472929192201033955

/-!
# A023238: Primes p such that 10*p + 3 is also prime.

The programs for A023238, there is no canonical definition to state claims against.
-/

/-! ## A023238.P7559478894916538153

`floor(A055782(n+1)/10)`
-/

namespace A023238.P7559478894916538153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055782 (n + 1) : ℚ) / 10⌋

end

end A023238.P7559478894916538153

/-! ## A023238.P4700111177015793798

`p?[A102338(n+1)]`
-/

namespace A023238.P4700111177015793798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023238.P4700111177015793798

/-! ## A023238.P15480932497230060441

`p?[A126332(n+1)+1]`
-/

namespace A023238.P15480932497230060441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126332 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023238.P15480932497230060441

/-! ## A023238.P1222272300165489456

`p?[A024913(n+1)-1]`
-/

namespace A023238.P1222272300165489456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023238.P1222272300165489456

/-! ## A023238.P17567726729574233987

`record[A006530(A087505(n+2))]`
-/

namespace A023238.P17567726729574233987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A087505 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023238.P17567726729574233987

/-! ## A023238.P16992416598550276107

`record[A006530(A102338(n+3))]`
-/

namespace A023238.P16992416598550276107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102338 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023238.P16992416598550276107

/-! ## A023238.P14344375531450622828

`filter[A102338(n+2), A010051(#)]`
-/

namespace A023238.P14344375531450622828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023238.P14344375531450622828

/-! ## A023238.P3817837919130795441

`∩[A102338(n+1), A042988(n)]`
-/

namespace A023238.P3817837919130795441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023238.P3817837919130795441

/-! ## A023238.P1280993624551711363

`record[A006530(A111225(n+1)+1)]`
-/

namespace A023238.P1280993624551711363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A111225 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023238.P1280993624551711363

/-! ## A023238.P7394601324491573858

`record[A006530(A024896(n+2)-1)]`
-/

namespace A023238.P7394601324491573858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024896 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023238.P7394601324491573858

/-! ## A023238.P13803344867795201797

`∩[A000040(n+1), A102338(n+1)]`
-/

namespace A023238.P13803344867795201797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023238.P13803344867795201797

/-! ## A023238.P11690241979457383663

`∩[A045344(n+1), A102338(n+1)]`
-/

namespace A023238.P11690241979457383663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023238.P11690241979457383663

/-! ## A023238.P17405904100562527744

`∩[A049545(n+1), A102338(n+1)]`
-/

namespace A023238.P17405904100562527744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023238.P17405904100562527744

/-! ## A023238.P3455024256679949007

`∩[A102338(n+1), A106843(n+1)]`
-/

namespace A023238.P3455024256679949007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023238.P3455024256679949007

/-! ## A023238.P14000772874307862934

`∩[A102338(n+1), A116974(n+1)]`
-/

namespace A023238.P14000772874307862934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023238.P14000772874307862934

/-! ## A023238.P2128953691752377380

`∩[A102338(n+1), A353393(n+1)]`
-/

namespace A023238.P2128953691752377380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023238.P2128953691752377380

/-! ## A023238.P7975346727105037101

`A000040(eq[1, A232210(n+1)]+1)`
-/

namespace A023238.P7975346727105037101
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232210 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A023238.P7975346727105037101

/-!
# A023239: Primes p such that 10*p + 7 is also prime.

The programs for A023239, the canonical program `A023239.P3515851609114574213` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023239 has offset 1).

The definition of A023239 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023239.P18279847813860471403

`floor(A055783(n+1)/10)`
-/

namespace A023239.P18279847813860471403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055783 (n + 1) : ℚ) / 10⌋

end

end A023239.P18279847813860471403

namespace A023239

/-- `floor(A055783(n+1)/10)` -/
def P18279847813860471403.Spec : Prop :=
  ∀ n, P18279847813860471403.a n = A023239 (n + 1)

end A023239

/-! ## A023239.P3515851609114574213

`p?[floor(A030432(n+1)/10)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023239

/-- `p?[floor(A030432(n+1)/10)]` -/
def P3515851609114574213.Spec : Prop :=
  ∀ n, P3515851609114574213.a n = A023239 (n + 1)

theorem P3515851609114574213.correct : P3515851609114574213.Spec := by
  intro n
  simp only [A023239, Nat.add_sub_cancel]

end A023239

/-! ## A023239.P5596139349473949339

`p?[floor(A141886(n+1)/10)]`
-/

namespace A023239.P5596139349473949339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A141886 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023239.P5596139349473949339

namespace A023239

/-- `p?[floor(A141886(n+1)/10)]` -/
def P5596139349473949339.Spec : Prop :=
  ∀ n, P5596139349473949339.a n = A023239 (n + 1)

end A023239

/-! ## A023239.P15861992208154024394

`p?[A102342(n+1)]`
-/

namespace A023239.P15861992208154024394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023239.P15861992208154024394

namespace A023239

/-- `p?[A102342(n+1)]` -/
def P15861992208154024394.Spec : Prop :=
  ∀ n, P15861992208154024394.a n = A023239 (n + 1)

end A023239

/-! ## A023239.P11590800441203086040

`p?[A024914(n+1)-1]`
-/

namespace A023239.P11590800441203086040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024914 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023239.P11590800441203086040

namespace A023239

/-- `p?[A024914(n+1)-1]` -/
def P11590800441203086040.Spec : Prop :=
  ∀ n, P11590800441203086040.a n = A023239 (n + 1)

end A023239

/-! ## A023239.P5183865774859013008

`p?[floor(A111223(n+1)/2)]`
-/

namespace A023239.P5183865774859013008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A111223 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023239.P5183865774859013008

namespace A023239

/-- `p?[floor(A111223(n+1)/2)]` -/
def P5183865774859013008.Spec : Prop :=
  ∀ n, P5183865774859013008.a n = A023239 (n + 1)

end A023239

/-! ## A023239.P12565436711021803200

`record[A020639(A102342(n+3))]`
-/

namespace A023239.P12565436711021803200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A102342 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023239.P12565436711021803200

namespace A023239

/-- `record[A020639(A102342(n+3))]` -/
def P12565436711021803200.Spec : Prop :=
  ∀ n, P12565436711021803200.a n = A023239 (n + 1)

end A023239

/-! ## A023239.P12100280245873438756

`filter[A102342(n+2), A010051(#)]`
-/

namespace A023239.P12100280245873438756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023239.P12100280245873438756

namespace A023239

/-- `filter[A102342(n+2), A010051(#)]` -/
def P12100280245873438756.Spec : Prop :=
  ∀ n, P12100280245873438756.a n = A023239 (n + 1)

end A023239

/-! ## A023239.P4928983772372519649

`∩[A000040(n+1), A102342(n+1)]`
-/

namespace A023239.P4928983772372519649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023239.P4928983772372519649

namespace A023239

/-- `∩[A000040(n+1), A102342(n+1)]` -/
def P4928983772372519649.Spec : Prop :=
  ∀ n, (P4928983772372519649.a n : ℤ) = A023239 (n + 1)

end A023239

/-! ## A023239.P16140603606313071133

`∩[A004139(n+1), A102342(n+1)]`
-/

namespace A023239.P16140603606313071133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023239.P16140603606313071133

namespace A023239

/-- `∩[A004139(n+1), A102342(n+1)]` -/
def P16140603606313071133.Spec : Prop :=
  ∀ n, (P16140603606313071133.a n : ℤ) = A023239 (n + 1)

end A023239

/-! ## A023239.P9027565898000031416

`∩[A007645(n+1), A102342(n+1)]`
-/

namespace A023239.P9027565898000031416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023239.P9027565898000031416

namespace A023239

/-- `∩[A007645(n+1), A102342(n+1)]` -/
def P9027565898000031416.Spec : Prop :=
  ∀ n, (P9027565898000031416.a n : ℤ) = A023239 (n + 1)

end A023239

/-! ## A023239.P8548201898375630535

`∩[A040116(n+1), A102342(n+1)]`
-/

namespace A023239.P8548201898375630535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040116 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023239.P8548201898375630535

namespace A023239

/-- `∩[A040116(n+1), A102342(n+1)]` -/
def P8548201898375630535.Spec : Prop :=
  ∀ n, (P8548201898375630535.a n : ℤ) = A023239 (n + 1)

end A023239

/-! ## A023239.P4234976596614530189

`∩[A045319(n+1), A102342(n+1)]`
-/

namespace A023239.P4234976596614530189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023239.P4234976596614530189

namespace A023239

/-- `∩[A045319(n+1), A102342(n+1)]` -/
def P4234976596614530189.Spec : Prop :=
  ∀ n, (P4234976596614530189.a n : ℤ) = A023239 (n + 1)

end A023239

/-! ## A023239.P5681809239967100183

`∩[A045331(n+1), A102342(n+1)]`
-/

namespace A023239.P5681809239967100183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023239.P5681809239967100183

namespace A023239

/-- `∩[A045331(n+1), A102342(n+1)]` -/
def P5681809239967100183.Spec : Prop :=
  ∀ n, (P5681809239967100183.a n : ℤ) = A023239 (n + 1)

end A023239

/-! ## A023239.P10034780050422305651

`∩[A049549(n+1), A102342(n+1)]`
-/

namespace A023239.P10034780050422305651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049549 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023239.P10034780050422305651

namespace A023239

/-- `∩[A049549(n+1), A102342(n+1)]` -/
def P10034780050422305651.Spec : Prop :=
  ∀ n, (P10034780050422305651.a n : ℤ) = A023239 (n + 1)

end A023239

/-! ## A023239.P11310611396999532727

`∩[A059456(n+1), A102342(n+1)]`
-/

namespace A023239.P11310611396999532727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059456 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023239.P11310611396999532727

namespace A023239

/-- `∩[A059456(n+1), A102342(n+1)]` -/
def P11310611396999532727.Spec : Prop :=
  ∀ n, (P11310611396999532727.a n : ℤ) = A023239 (n + 1)

end A023239

/-! ## A023239.P1601653389369052025

`∩[A065091(n+1), A102342(n+1)]`
-/

namespace A023239.P1601653389369052025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023239.P1601653389369052025

namespace A023239

/-- `∩[A065091(n+1), A102342(n+1)]` -/
def P1601653389369052025.Spec : Prop :=
  ∀ n, (P1601653389369052025.a n : ℤ) = A023239 (n + 1)

end A023239

/-! ## A023239.P6705333006219639214

`p?[n*A001222(10*n+7)]`
-/

namespace A023239.P6705333006219639214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001222 (10 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023239.P6705333006219639214

namespace A023239

/-- `p?[n*A001222(10*n+7)]` -/
def P6705333006219639214.Spec : Prop :=
  ∀ n, P6705333006219639214.a n = A023239 (n + 1)

end A023239

/-! ## A023239.P10868338054112890557

`p?[eq[2, A000005(5*(2*n+1)+2)]]`
-/

namespace A023239.P10868338054112890557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (5 * (2 * n + 1) + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023239.P10868338054112890557

namespace A023239

/-- `p?[eq[2, A000005(5*(2*n+1)+2)]]` -/
def P10868338054112890557.Spec : Prop :=
  ∀ n, (P10868338054112890557.a n : ℤ) = A023239 (n + 1)

end A023239

/-!
# A023240: Primes p such that 10*p + 9 is also prime.

The programs for A023240, the canonical program `A023240.P11335105020919164782` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023240 has offset 1).

The definition of A023240 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023240.P11335105020919164782

`floor(A055784(n+1)/10)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023240

/-- `floor(A055784(n+1)/10)` -/
def P11335105020919164782.Spec : Prop :=
  ∀ n, P11335105020919164782.a n = A023240 (n + 1)

theorem P11335105020919164782.correct : P11335105020919164782.Spec := by
  intro n
  simp only [A023240, Nat.add_sub_cancel]

end A023240

/-! ## A023240.P16541407453859262124

`p?[floor(A030433(n+1)/10)]`
-/

namespace A023240.P16541407453859262124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A030433 (n + 1) : ℚ) / 10⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023240.P16541407453859262124

namespace A023240

/-- `p?[floor(A030433(n+1)/10)]` -/
def P16541407453859262124.Spec : Prop :=
  ∀ n, P16541407453859262124.a n = A023240 (n + 1)

end A023240

/-! ## A023240.P16820887903574636563

`p?[A102700(n+1)]`
-/

namespace A023240.P16820887903574636563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023240.P16820887903574636563

namespace A023240

/-- `p?[A102700(n+1)]` -/
def P16820887903574636563.Spec : Prop :=
  ∀ n, P16820887903574636563.a n = A023240 (n + 1)

end A023240

/-! ## A023240.P14093657003772514913

`p?[A105042(n+1)-1]`
-/

namespace A023240.P14093657003772514913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023240.P14093657003772514913

namespace A023240

/-- `p?[A105042(n+1)-1]` -/
def P14093657003772514913.Spec : Prop :=
  ∀ n, P14093657003772514913.a n = A023240 (n + 1)

end A023240

/-! ## A023240.P5573864589802584973

`p?[floor(A024897(n+1)/2)]`
-/

namespace A023240.P5573864589802584973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024897 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023240.P5573864589802584973

namespace A023240

/-- `p?[floor(A024897(n+1)/2)]` -/
def P5573864589802584973.Spec : Prop :=
  ∀ n, P5573864589802584973.a n = A023240 (n + 1)

end A023240

/-! ## A023240.P983916511950812390

`record[A006530(A102700(n+2))]`
-/

namespace A023240.P983916511950812390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A102700 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023240.P983916511950812390

namespace A023240

/-- `record[A006530(A102700(n+2))]` -/
def P983916511950812390.Spec : Prop :=
  ∀ n, P983916511950812390.a n = A023240 (n + 1)

end A023240

/-! ## A023240.P8712030671708099577

`filter[A102700(n+1), A010051(#)]`
-/

namespace A023240.P8712030671708099577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A023240.P8712030671708099577

namespace A023240

/-- `filter[A102700(n+1), A010051(#)]` -/
def P8712030671708099577.Spec : Prop :=
  ∀ n, P8712030671708099577.a n = A023240 (n + 1)

end A023240

/-! ## A023240.P9680259118621869906

`∩[A102700(n+1), A042990(n)]`
-/

namespace A023240.P9680259118621869906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023240.P9680259118621869906

namespace A023240

/-- `∩[A102700(n+1), A042990(n)]` -/
def P9680259118621869906.Spec : Prop :=
  ∀ n, (P9680259118621869906.a n : ℤ) = A023240 (n + 1)

end A023240

/-! ## A023240.P2012637115190847906

`record[A006530(A024897(n+1)-1)]`
-/

namespace A023240.P2012637115190847906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A024897 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023240.P2012637115190847906

namespace A023240

/-- `record[A006530(A024897(n+1)-1)]` -/
def P2012637115190847906.Spec : Prop :=
  ∀ n, P2012637115190847906.a n = A023240 (n + 1)

end A023240

/-! ## A023240.P7240270535047585013

`record[A020639(A105042(n+2)-1)]`
-/

namespace A023240.P7240270535047585013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A105042 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023240.P7240270535047585013

namespace A023240

/-- `record[A020639(A105042(n+2)-1)]` -/
def P7240270535047585013.Spec : Prop :=
  ∀ n, P7240270535047585013.a n = A023240 (n + 1)

end A023240

/-! ## A023240.P17811938173873687779

`record[A006530(A153355(n+1)-2)]`
-/

namespace A023240.P17811938173873687779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A153355 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023240.P17811938173873687779

namespace A023240

/-- `record[A006530(A153355(n+1)-2)]` -/
def P17811938173873687779.Spec : Prop :=
  ∀ n, P17811938173873687779.a n = A023240 (n + 1)

end A023240

/-! ## A023240.P15055969050159181402

`∩[A000040(n+1), A102700(n+1)]`
-/

namespace A023240.P15055969050159181402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023240.P15055969050159181402

namespace A023240

/-- `∩[A000040(n+1), A102700(n+1)]` -/
def P15055969050159181402.Spec : Prop :=
  ∀ n, (P15055969050159181402.a n : ℤ) = A023240 (n + 1)

end A023240

/-! ## A023240.P5423905886118139490

`∩[A045344(n+1), A102700(n+1)]`
-/

namespace A023240.P5423905886118139490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023240.P5423905886118139490

namespace A023240

/-- `∩[A045344(n+1), A102700(n+1)]` -/
def P5423905886118139490.Spec : Prop :=
  ∀ n, (P5423905886118139490.a n : ℤ) = A023240 (n + 1)

end A023240

/-! ## A023240.P14421958113993562003

`∩[A049551(n+1), A102700(n+1)]`
-/

namespace A023240.P14421958113993562003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023240.P14421958113993562003

namespace A023240

/-- `∩[A049551(n+1), A102700(n+1)]` -/
def P14421958113993562003.Spec : Prop :=
  ∀ n, (P14421958113993562003.a n : ℤ) = A023240 (n + 1)

end A023240

/-! ## A023240.P8817545860791857157

`∩[A102700(n+1), A106843(n+1)]`
-/

namespace A023240.P8817545860791857157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106843 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023240.P8817545860791857157

namespace A023240

/-- `∩[A102700(n+1), A106843(n+1)]` -/
def P8817545860791857157.Spec : Prop :=
  ∀ n, (P8817545860791857157.a n : ℤ) = A023240 (n + 1)

end A023240

/-! ## A023240.P6326169665113187385

`∩[A102700(n+1), A116974(n+1)]`
-/

namespace A023240.P6326169665113187385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023240.P6326169665113187385

namespace A023240

/-- `∩[A102700(n+1), A116974(n+1)]` -/
def P6326169665113187385.Spec : Prop :=
  ∀ n, (P6326169665113187385.a n : ℤ) = A023240 (n + 1)

end A023240

/-! ## A023240.P9327806280404963396

`∩[A102700(n+1), A174219(n+1)]`
-/

namespace A023240.P9327806280404963396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174219 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023240.P9327806280404963396

namespace A023240

/-- `∩[A102700(n+1), A174219(n+1)]` -/
def P9327806280404963396.Spec : Prop :=
  ∀ n, (P9327806280404963396.a n : ℤ) = A023240 (n + 1)

end A023240

/-! ## A023240.P7553326668819473527

`∩[A102700(n+1), A175787(n+1)]`
-/

namespace A023240.P7553326668819473527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023240.P7553326668819473527

namespace A023240

/-- `∩[A102700(n+1), A175787(n+1)]` -/
def P7553326668819473527.Spec : Prop :=
  ∀ n, (P7553326668819473527.a n : ℤ) = A023240 (n + 1)

end A023240

/-! ## A023240.P2393669552286182272

`∩[A102700(n+1), A182986(n+1)]`
-/

namespace A023240.P2393669552286182272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023240.P2393669552286182272

namespace A023240

/-- `∩[A102700(n+1), A182986(n+1)]` -/
def P2393669552286182272.Spec : Prop :=
  ∀ n, (P2393669552286182272.a n : ℤ) = A023240 (n + 1)

end A023240

/-!
# A023241: Primes that remain prime through 2 iterations of function f(x) = x + 6.

The programs for A023241, there is no canonical definition to state claims against.
-/

/-! ## A023241.P4573861801812771205

`A006489(n+1)-6`
-/

namespace A023241.P4573861801812771205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1) - 6

end

end A023241.P4573861801812771205

/-! ## A023241.P15917268400995028297

`∪[A023271(n+1), A046118(n+1)]`
-/

namespace A023241.P15917268400995028297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023241.P15917268400995028297

/-! ## A023241.P17592746565224074327

`p?[A046133(n+1)+6]-6`
-/

namespace A023241.P17592746565224074327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1) + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6

end

end A023241.P17592746565224074327

/-! ## A023241.P17460104959220807743

`p?[A092216(n+1)-6]-6`
-/

namespace A023241.P17460104959220807743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092216 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 6

end

end A023241.P17460104959220807743

/-! ## A023241.P4349284723395845200

`p?[A023201(n+1)-6]`
-/

namespace A023241.P4349284723395845200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023241.P4349284723395845200

/-! ## A023241.P11831304309199246024

`p?[A046117(n+1)-12]`
-/

namespace A023241.P11831304309199246024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046117 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023241.P11831304309199246024

/-! ## A023241.P588507933881094887

`∩[A015917(n+1), A023201(n+1)]`
-/

namespace A023241.P588507933881094887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023241.P588507933881094887

/-! ## A023241.P3430515833187383650

`∩[A023201(n+1), A046133(n+1)]`
-/

namespace A023241.P3430515833187383650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023241.P3430515833187383650

/-! ## A023241.P16912618274189264097

`∩[A023201(n+1), A086136(n+1)]`
-/

namespace A023241.P16912618274189264097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023241.P16912618274189264097

/-! ## A023241.P5724439372451648557

`∩[A015914(n+1), A015917(n+1)]`
-/

namespace A023241.P5724439372451648557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023241.P5724439372451648557

/-! ## A023241.P15276816794417461993

`∩[A015914(n+1), A046133(n+1)]`
-/

namespace A023241.P15276816794417461993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023241.P15276816794417461993

/-! ## A023241.P11313765059686319419

`∩[A015914(n+1), A086136(n+1)]`
-/

namespace A023241.P11313765059686319419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023241.P11313765059686319419

/-! ## A023241.P13158102703673054899

`p?[A262084(n+1)-6]`
-/

namespace A023241.P13158102703673054899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023241.P13158102703673054899

/-! ## A023241.P18317182723809548861

`∩[A015917(n+1), A262084(n+1)]`
-/

namespace A023241.P18317182723809548861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023241.P18317182723809548861

/-! ## A023241.P10495584367295643936

`∩[A046133(n+1), A262084(n+1)]`
-/

namespace A023241.P10495584367295643936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023241.P10495584367295643936

/-! ## A023241.P7777973678856118201

`∩[A086136(n+1), A262084(n+1)]`
-/

namespace A023241.P7777973678856118201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023241.P7777973678856118201

/-! ## A023241.P8106421876082050665

`∩[A023201(n+1), A056775(n+1)]`
-/

namespace A023241.P8106421876082050665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023241.P8106421876082050665

/-! ## A023241.P4209085007072328547

`∩[A056775(n+1), A262084(n+1)]`
-/

namespace A023241.P4209085007072328547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056775 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023241.P4209085007072328547

/-! ## A023241.P11011653761410089102

`A000040(A377317(n+1))`
-/

namespace A023241.P11011653761410089102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A377317 (n + 1)).toNat

end

end A023241.P11011653761410089102

/-! ## A023241.P15347139958261549616

`∩[A046133(n+1), A086304(n+1)]`
-/

namespace A023241.P15347139958261549616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023241.P15347139958261549616

/-!
# A023242: Primes that remain prime through 2 iterations of function f(x) = 2x + 3.

The programs for A023242, there is no canonical definition to state claims against.
-/

/-! ## A023242.P7173062417849318747

`(A247010(n+1)-3)/2`
-/

namespace A023242.P7173062417849318747
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247010 (n + 1) - 3 : ℚ) / 2

end

end A023242.P7173062417849318747

/-! ## A023242.P11827799389335760911

`∩[A023204(n+1), A023216(n+1)]`
-/

namespace A023242.P11827799389335760911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023242.P11827799389335760911

/-! ## A023242.P5423837953860671697

`∩[A023204(n+1), A111199(n+1)]`
-/

namespace A023242.P5423837953860671697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023242.P5423837953860671697

/-! ## A023242.P4822268497575356715

`∩[A023216(n+1), A067076(n+1)]`
-/

namespace A023242.P4822268497575356715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067076 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023242.P4822268497575356715

/-! ## A023242.P13967208075337253768

`A006530(A247010(n+1)-3)`
-/

namespace A023242.P13967208075337253768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A247010 (n + 1) - 3).toNat

end

end A023242.P13967208075337253768

/-! ## A023242.P8101943103544062878

`A014682(A247010(n+1)-3)`
-/

namespace A023242.P8101943103544062878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A247010 (n + 1) - 3).toNat

end

end A023242.P8101943103544062878

/-! ## A023242.P1419556021522952856

`p?[A323161(A023204(n+1))-4]`
-/

namespace A023242.P1419556021522952856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A023204 (n + 1)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023242.P1419556021522952856

/-! ## A023242.P3561278449410991096

`∑{d}[A247010(n+1), A297381(#)]`
-/

namespace A023242.P3561278449410991096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297381 d

end

end A023242.P3561278449410991096

/-! ## A023242.P5809988654367187402

`p?[eq[A051686(n+2), A278223(n+2)]]`
-/

namespace A023242.P5809988654367187402
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (n + 2)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023242.P5809988654367187402

/-! ## A023242.P183512412551969776

`A175126(A247010(n+1)-3)`
-/

namespace A023242.P183512412551969776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175126 (A247010 (n + 1) - 3).toNat

end

end A023242.P183512412551969776

/-!
# A023243: Primes that remain prime through 2 iterations of the function f(x) = 2x + 5.

The programs for A023243, there is no canonical definition to state claims against.
-/

/-! ## A023243.P12383526651012503609

`p?[A323161(A023205(n+1))-5]`
-/

namespace A023243.P12383526651012503609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A023205 (n + 1)).toNat - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023243.P12383526651012503609

/-! ## A023243.P1440391186395782716

`∩[A000040(n+1), A323161(A023205(n+1))-5]`
-/

namespace A023243.P1440391186395782716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A023205 (n + 1)).toNat - 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023243.P1440391186395782716

/-! ## A023243.P8339113377999678313

`p?[lt[A245203(n+3), A101264(n+2)]]`
-/

namespace A023243.P8339113377999678313
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245203 (n + 3)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101264 (n + 2)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023243.P8339113377999678313

/-! ## A023243.P16908629017471538719

`p?[A104635(n+1)-A282026(A090658(n+1))]`
-/

namespace A023243.P16908629017471538719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104635 (n + 1) - A282026 (A090658 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023243.P16908629017471538719

/-! ## A023243.P12210023801273983739

`p?[eq[A033809(n+4), A289310(2*n+5)]]`
-/

namespace A023243.P12210023801273983739
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033809 (n + 4)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289310 (2 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023243.P12210023801273983739

/-!
# A023244: Primes that remain prime through 2 iterations of the function f(x) = 2x + 7.

The programs for A023244, the canonical program `A023244.P3210221976177104251` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023244 has offset 1).

The definition of A023244 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 204 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023244.P3210221976177104251

`p?[A319702(A023206(n+1))-5]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023244

/-- `p?[A319702(A023206(n+1))-5]` -/
def P3210221976177104251.Spec : Prop :=
  ∀ n, P3210221976177104251.a n = A023244 (n + 1)

theorem P3210221976177104251.correct : P3210221976177104251.Spec := by
  intro n
  simp only [A023244, Nat.add_sub_cancel]

end A023244

/-! ## A023244.P16451594990714198284

`p?[floor(p?[A005097(n+1)-3]/2)-3]`
-/

namespace A023244.P16451594990714198284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005097 (n + 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) : ℚ) / 2⌋ - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023244.P16451594990714198284

namespace A023244

/-- `p?[floor(p?[A005097(n+1)-3]/2)-3]` -/
def P16451594990714198284.Spec : Prop :=
  ∀ n, P16451594990714198284.a n = A023244 (n + 1)

end A023244

/-! ## A023244.P13394885202631470869

`∩[A000040(n+1), A319702(A023206(n+1))-5]`
-/

namespace A023244.P13394885202631470869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A023206 (n + 1)).toNat - 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023244.P13394885202631470869

namespace A023244

/-- `∩[A000040(n+1), A319702(A023206(n+1))-5]` -/
def P13394885202631470869.Spec : Prop :=
  ∀ n, (P13394885202631470869.a n : ℤ) = A023244 (n + 1)

end A023244

/-! ## A023244.P6930433468830925201

`p?[eq[A051686(n+5), A278223(n+4)]]`
-/

namespace A023244.P6930433468830925201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051686 (n + 5)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278223 (n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023244.P6930433468830925201

namespace A023244

/-- `p?[eq[A051686(n+5), A278223(n+4)]]` -/
def P6930433468830925201.Spec : Prop :=
  ∀ n, (P6930433468830925201.a n : ℤ) = A023244 (n + 1)

end A023244

/-!
# A023245: Primes that remain prime through 2 iterations of the function f(x) = 2x + 9.

The programs for A023245, there is no canonical definition to state claims against.
-/

/-! ## A023245.P4762838978652092290

`p?[A273943(A209202(n+1))]`
-/

namespace A023245.P4762838978652092290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A209202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023245.P4762838978652092290

/-! ## A023245.P7407675964545031266

`record[A006530(A209202(n+3))]`
-/

namespace A023245.P7407675964545031266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A209202 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023245.P7407675964545031266

/-! ## A023245.P5566917043641904361

`p?[A014682(A209202(n+2))]`
-/

namespace A023245.P5566917043641904361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A209202 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023245.P5566917043641904361

/-! ## A023245.P554193969714933685

`p?[A323161(A023207(n+1))-7]`
-/

namespace A023245.P554193969714933685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A023207 (n + 1)).toNat - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023245.P554193969714933685

/-! ## A023245.P14739883014306354356

`A017666(p?[A038572(A209202(n+1))])`
-/

namespace A023245.P14739883014306354356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A209202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A023245.P14739883014306354356

/-! ## A023245.P11025656392179781726

`p?[A038572(A209202(n+1))]%A007488(n+1)`
-/

namespace A023245.P11025656392179781726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A209202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A007488 (n + 1))

end

end A023245.P11025656392179781726

/-! ## A023245.P8442760862863327913

`A038502(p?[A278537(A209202(n+1))])`
-/

namespace A023245.P8442760862863327913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278537 (A209202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A023245.P8442760862863327913

/-! ## A023245.P3302291566130650006

`p?[A110514(A209202(n+1)-2)]`
-/

namespace A023245.P3302291566130650006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110514 (A209202 (n + 1) - 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023245.P3302291566130650006

/-! ## A023245.P9563938401652519212

`p?[A004525(A209202(A000027(n+1)))]`
-/

namespace A023245.P9563938401652519212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A209202 (A000027 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023245.P9563938401652519212

/-!
# A023246: Primes that remain prime through 2 iterations of the function f(x) = 3*x + 2.

The programs for A023246, there is no canonical definition to state claims against.
-/

/-! ## A023246.P4111184800404679732

`floor(A152292(n+1)/3)`
-/

namespace A023246.P4111184800404679732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152292 (n + 1) : ℚ) / 3⌋

end

end A023246.P4111184800404679732

/-! ## A023246.P10453460313291844787

`∩[A023208(n+1), A023235(n+1)]`
-/

namespace A023246.P10453460313291844787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023246.P10453460313291844787

/-! ## A023246.P15827500601324400421

`∩[A023235(n+1), A162338(n+1)]`
-/

namespace A023246.P15827500601324400421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023246.P15827500601324400421

/-! ## A023246.P12466988647864014598

`(p?[floor(A136073(n+1)/3)]-2)/3`
-/

namespace A023246.P12466988647864014598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136073 (n + 1) : ℚ) / 3⌋

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2 : ℚ) / 3

end

end A023246.P12466988647864014598

/-! ## A023246.P72237378290700356

`∩[A023235(n+1), A024893(n+1)]`
-/

namespace A023246.P72237378290700356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024893 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023246.P72237378290700356

/-! ## A023246.P14669392936291837810

`A006530(A152292(n+1)-2)`
-/

namespace A023246.P14669392936291837810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A152292 (n + 1) - 2).toNat

end

end A023246.P14669392936291837810

/-! ## A023246.P16549401219139114169

`filter[A023235(n+1), A075743(#)]`
-/

namespace A023246.P16549401219139114169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023235 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075743 (f1 j).toNat = 1) n)

end

end A023246.P16549401219139114169

/-! ## A023246.P15953276579239639601

`A034699(A152292(n+1)-2)`
-/

namespace A023246.P15953276579239639601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (A152292 (n + 1) - 2).toNat

end

end A023246.P15953276579239639601

/-! ## A023246.P13206610967645041093

`A046640(A152292(n+1)-2)`
-/

namespace A023246.P13206610967645041093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046640 (A152292 (n + 1) - 2).toNat

end

end A023246.P13206610967645041093

/-! ## A023246.P11752738719521198350

`p?[A023208(n+1)*A075743(A094524(n+1))]`
-/

namespace A023246.P11752738719521198350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023208 (n + 1) * A075743 (A094524 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023246.P11752738719521198350

/-!
# A023247: Primes p such that 3*p + 4 and 9*p + 16 are also prime.

The programs for A023247, the canonical program `A023247.P8495313482969675933` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023247 has offset 1).

The definition of A023247 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 188 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023247.P8495313482969675933

`p?[eq[A075743(n+1), A245838(3*n+5)]]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A023247

/-- `p?[eq[A075743(n+1), A245838(3*n+5)]]` -/
def P8495313482969675933.Spec : Prop :=
  ∀ n, (P8495313482969675933.a n : ℤ) = A023247 (n + 1)

theorem P8495313482969675933.correct : P8495313482969675933.Spec := by
  intro n
  simp only [A023247, Nat.add_sub_cancel]

end A023247

/-! ## A023247.P5193398764692896103

`p?[eq[A156706(n+1), A245838(3*n+5)]]`
-/

namespace A023247.P5193398764692896103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245838 (3 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023247.P5193398764692896103

namespace A023247

/-- `p?[eq[A156706(n+1), A245838(3*n+5)]]` -/
def P5193398764692896103.Spec : Prop :=
  ∀ n, (P5193398764692896103.a n : ℤ) = A023247 (n + 1)

end A023247

/-! ## A023247.P17107568007584726330

`p?[eq[2, A225302(3*n+5)]]`
-/

namespace A023247.P17107568007584726330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225302 (3 * n + 5)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023247.P17107568007584726330

namespace A023247

/-- `p?[eq[2, A225302(3*n+5)]]` -/
def P17107568007584726330.Spec : Prop :=
  ∀ n, (P17107568007584726330.a n : ℤ) = A023247 (n + 1)

end A023247

/-! ## A023247.P6467811314281484903

`eq[A225244(n), A225302(3*n+5)]`
-/

namespace A023247.P6467811314281484903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225244 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225302 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023247.P6467811314281484903

namespace A023247

/-- `eq[A225244(n), A225302(3*n+5)]` -/
def P6467811314281484903.Spec : Prop :=
  ∀ n, (P6467811314281484903.a n : ℤ) = A023247 (n + 1)

end A023247

/-! ## A023247.P4081521333356277300

`p?[lt[A181569(9*n+15), A014973(3*n+4)]]`
-/

namespace A023247.P4081521333356277300
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181569 (9 * n + 15)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014973 (3 * n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023247.P4081521333356277300

namespace A023247

/-- `p?[lt[A181569(9*n+15), A014973(3*n+4)]]` -/
def P4081521333356277300.Spec : Prop :=
  ∀ n, (P4081521333356277300.a n : ℤ) = A023247 (n + 1)

end A023247

/-!
# A023248: Primes that remain prime through 2 iterations of function f(x) = 3x + 8.

The programs for A023248, there is no canonical definition to state claims against.
-/

/-! ## A023248.P18679731275475854

`p?[A103627(A023210(n+1))-2]`
-/

namespace A023248.P18679731275475854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103627 (A023210 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023248.P18679731275475854

/-! ## A023248.P12498666955920125647

`∩[A045429(n+1), A317717(n+1)]`
-/

namespace A023248.P12498666955920125647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317717 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023248.P12498666955920125647

/-!
# A023249: Primes that remain prime through 2 iterations of function f(x) = 3x + 10.

The programs for A023249, there is no canonical definition to state claims against.
-/

/-! ## A023249.P35885732950378232

`p?[abs(A137241(A023211(n+1)))]`
-/

namespace A023249.P35885732950378232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137241 (A023211 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023249.P35885732950378232

/-! ## A023249.P13024495302610483094

`p?[-A137241(A023211(n+2))]`
-/

namespace A023249.P13024495302610483094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137241 (A023211 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023249.P13024495302610483094

/-! ## A023249.P4000561491683071916

`p?[-A137241(p?[A089953(n+1)-1])]`
-/

namespace A023249.P4000561491683071916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089953 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137241 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023249.P4000561491683071916

/-! ## A023249.P10176316573099514452

`p?[-A137241(p?[A034936(n+1)-2])]`
-/

namespace A023249.P10176316573099514452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034936 (n + 1) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137241 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023249.P10176316573099514452

/-! ## A023249.P9800576515296364954

`p?[-A137241(p?[A024892(n+1)-3])]`
-/

namespace A023249.P9800576515296364954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024892 (n + 1) - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137241 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023249.P9800576515296364954

/-! ## A023249.P14881475097361199758

`p?[-A137241(p?[A153183(n+1)-4])]`
-/

namespace A023249.P14881475097361199758
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153183 (n + 1) - 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137241 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023249.P14881475097361199758

/-! ## A023249.P10891045139517326989

`p?[-A137241(p?[A107303(n+1)-5])]`
-/

namespace A023249.P10891045139517326989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107303 (n + 1) - 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137241 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023249.P10891045139517326989

/-! ## A023249.P14170920440502163678

`p?[-A137241(p?[2*A153218(n+1)-1])]`
-/

namespace A023249.P14170920440502163678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A153218 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137241 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023249.P14170920440502163678

/-!
# A023250: Primes that remain prime through 2 iterations of function f(x) = 4x + 3.

The programs for A023250, the canonical program `A023250.P13940782783570891803` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023250 has offset 1).

The definition of A023250 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1430 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023250.P16535581600116854746

`∩[A023213(n+1), A157975(n+1)]`
-/

namespace A023250.P16535581600116854746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157975 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P16535581600116854746

namespace A023250

/-- `∩[A023213(n+1), A157975(n+1)]` -/
def P16535581600116854746.Spec : Prop :=
  ∀ n, (P16535581600116854746.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P13940782783570891803

`p?[A192638(n+1)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A023250

/-- `p?[A192638(n+1)]` -/
def P13940782783570891803.Spec : Prop :=
  ∀ n, P13940782783570891803.a n = A023250 (n + 1)

theorem P13940782783570891803.correct : P13940782783570891803.Spec := by
  intro n
  simp only [A023250, Nat.add_sub_cancel]

end A023250

/-! ## A023250.P2378962912535500688

`∩[A023213(n+1), A192638(n+1)]`
-/

namespace A023250.P2378962912535500688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P2378962912535500688

namespace A023250

/-- `∩[A023213(n+1), A192638(n+1)]` -/
def P2378962912535500688.Spec : Prop :=
  ∀ n, (P2378962912535500688.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P8331560654967846241

`∩[A157975(n+1), A192638(n+1)]`
-/

namespace A023250.P8331560654967846241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157975 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P8331560654967846241

namespace A023250

/-- `∩[A157975(n+1), A192638(n+1)]` -/
def P8331560654967846241.Spec : Prop :=
  ∀ n, (P8331560654967846241.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P11356985351921497090

`∩[A045347(n+1), A192638(n+1)]`
-/

namespace A023250.P11356985351921497090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045347 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P11356985351921497090

namespace A023250

/-- `∩[A045347(n+1), A192638(n+1)]` -/
def P11356985351921497090.Spec : Prop :=
  ∀ n, (P11356985351921497090.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P12794198742130151078

`∩[A045348(n+1), A192638(n+1)]`
-/

namespace A023250.P12794198742130151078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P12794198742130151078

namespace A023250

/-- `∩[A045348(n+1), A192638(n+1)]` -/
def P12794198742130151078.Spec : Prop :=
  ∀ n, (P12794198742130151078.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P8327646033739825288

`∩[A045371(n+1), A192638(n+1)]`
-/

namespace A023250.P8327646033739825288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P8327646033739825288

namespace A023250

/-- `∩[A045371(n+1), A192638(n+1)]` -/
def P8327646033739825288.Spec : Prop :=
  ∀ n, (P8327646033739825288.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P1188529950913984495

`∩[A045346(n+1), A192638(n+1)]`
-/

namespace A023250.P1188529950913984495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P1188529950913984495

namespace A023250

/-- `∩[A045346(n+1), A192638(n+1)]` -/
def P1188529950913984495.Spec : Prop :=
  ∀ n, (P1188529950913984495.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P5124208919161602668

`∩[A042966(n+1), A192638(n+1)]`
-/

namespace A023250.P5124208919161602668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P5124208919161602668

namespace A023250

/-- `∩[A042966(n+1), A192638(n+1)]` -/
def P5124208919161602668.Spec : Prop :=
  ∀ n, (P5124208919161602668.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P824667314377414722

`∩[A192638(n+1), A216881(n+1)]`
-/

namespace A023250.P824667314377414722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P824667314377414722

namespace A023250

/-- `∩[A192638(n+1), A216881(n+1)]` -/
def P824667314377414722.Spec : Prop :=
  ∀ n, (P824667314377414722.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P12363284961902750386

`∩[A192638(n+1), A216882(n+1)]`
-/

namespace A023250.P12363284961902750386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P12363284961902750386

namespace A023250

/-- `∩[A192638(n+1), A216882(n+1)]` -/
def P12363284961902750386.Spec : Prop :=
  ∀ n, (P12363284961902750386.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P12467374283250307641

`∩[A192638(n+1), A216883(n+1)]`
-/

namespace A023250.P12467374283250307641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P12467374283250307641

namespace A023250

/-- `∩[A192638(n+1), A216883(n+1)]` -/
def P12467374283250307641.Spec : Prop :=
  ∀ n, (P12467374283250307641.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P10234598828225824744

`∩[A000040(n+1), A192638(n+1)]`
-/

namespace A023250.P10234598828225824744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P10234598828225824744

namespace A023250

/-- `∩[A000040(n+1), A192638(n+1)]` -/
def P10234598828225824744.Spec : Prop :=
  ∀ n, (P10234598828225824744.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P16403516175942409841

`∩[A045319(n+1), A192638(n+1)]`
-/

namespace A023250.P16403516175942409841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P16403516175942409841

namespace A023250

/-- `∩[A045319(n+1), A192638(n+1)]` -/
def P16403516175942409841.Spec : Prop :=
  ∀ n, (P16403516175942409841.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P12475765508574350800

`∩[A045344(n+1), A192638(n+1)]`
-/

namespace A023250.P12475765508574350800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P12475765508574350800

namespace A023250

/-- `∩[A045344(n+1), A192638(n+1)]` -/
def P12475765508574350800.Spec : Prop :=
  ∀ n, (P12475765508574350800.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P8773490346630924524

`∩[A116974(n+1), A192638(n+1)]`
-/

namespace A023250.P8773490346630924524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P8773490346630924524

namespace A023250

/-- `∩[A116974(n+1), A192638(n+1)]` -/
def P8773490346630924524.Spec : Prop :=
  ∀ n, (P8773490346630924524.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P4375565347120758880

`∩[A182986(n+1), A192638(n+1)]`
-/

namespace A023250.P4375565347120758880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P4375565347120758880

namespace A023250

/-- `∩[A182986(n+1), A192638(n+1)]` -/
def P4375565347120758880.Spec : Prop :=
  ∀ n, (P4375565347120758880.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P13381048045607002230

`∩[A186285(n+1), A192638(n+1)]`
-/

namespace A023250.P13381048045607002230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186285 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P13381048045607002230

namespace A023250

/-- `∩[A186285(n+1), A192638(n+1)]` -/
def P13381048045607002230.Spec : Prop :=
  ∀ n, (P13381048045607002230.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P2571841886451137911

`∩[A192638(n+1), A197636(n+1)]`
-/

namespace A023250.P2571841886451137911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P2571841886451137911

namespace A023250

/-- `∩[A192638(n+1), A197636(n+1)]` -/
def P2571841886451137911.Spec : Prop :=
  ∀ n, (P2571841886451137911.a n : ℤ) = A023250 (n + 1)

end A023250

/-! ## A023250.P12513843061425054236

`∩[A192638(n+1), A393213(n+1)]`
-/

namespace A023250.P12513843061425054236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192638 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023250.P12513843061425054236

namespace A023250

/-- `∩[A192638(n+1), A393213(n+1)]` -/
def P12513843061425054236.Spec : Prop :=
  ∀ n, (P12513843061425054236.a n : ℤ) = A023250 (n + 1)

end A023250

/-!
# A023251: Primes that remain prime through 2 iterations of function f(x) = 4x + 9.

The programs for A023251, the canonical program `A023251.P18393185888038551927` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023251 has offset 1).

The definition of A023251 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1822 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023251.P18393185888038551927

`∩[A023216(n+1), A156005(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A023251

/-- `∩[A023216(n+1), A156005(n+1)]` -/
def P18393185888038551927.Spec : Prop :=
  ∀ n, (P18393185888038551927.a n : ℤ) = A023251 (n + 1)

theorem P18393185888038551927.correct : P18393185888038551927.Spec := by
  intro n
  simp only [A023251, Nat.add_sub_cancel]

end A023251

/-! ## A023251.P6997305530257230184

`∩[A111199(n+1), A156005(n+1)]`
-/

namespace A023251.P6997305530257230184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023251.P6997305530257230184

namespace A023251

/-- `∩[A111199(n+1), A156005(n+1)]` -/
def P6997305530257230184.Spec : Prop :=
  ∀ n, (P6997305530257230184.a n : ℤ) = A023251 (n + 1)

end A023251

/-! ## A023251.P4686063000727738071

`∩[A111215(n+1)-1, A156005(n+1)]`
-/

namespace A023251.P4686063000727738071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111215 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023251.P4686063000727738071

namespace A023251

/-- `∩[A111215(n+1)-1, A156005(n+1)]` -/
def P4686063000727738071.Spec : Prop :=
  ∀ n, (P4686063000727738071.a n : ℤ) = A023251 (n + 1)

end A023251

/-! ## A023251.P10550315837738896471

`∩[A005098(n+1)-2, A156005(n+1)]`
-/

namespace A023251.P10550315837738896471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005098 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023251.P10550315837738896471

namespace A023251

/-- `∩[A005098(n+1)-2, A156005(n+1)]` -/
def P10550315837738896471.Spec : Prop :=
  ∀ n, (P10550315837738896471.a n : ℤ) = A023251 (n + 1)

end A023251

/-! ## A023251.P10162775761309274290

`∩[∑[A082074(n+1)]-1, A156005(n+1)]`
-/

namespace A023251.P10162775761309274290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082074 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A023251.P10162775761309274290

namespace A023251

/-- `∩[∑[A082074(n+1)]-1, A156005(n+1)]` -/
def P10162775761309274290.Spec : Prop :=
  ∀ n, (P10162775761309274290.a n : ℤ) = A023251 (n + 1)

end A023251

/-! ## A023251.P5572087781914165907

`∩[A075518(A080147(n+1))-2, A156005(n+1)]`
-/

namespace A023251.P5572087781914165907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075518 (A080147 (n + 1)).toNat - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023251.P5572087781914165907

namespace A023251

/-- `∩[A075518(A080147(n+1))-2, A156005(n+1)]` -/
def P5572087781914165907.Spec : Prop :=
  ∀ n, (P5572087781914165907.a n : ℤ) = A023251 (n + 1)

end A023251

/-! ## A023251.P4590889224601176277

`∩[A004273(A105133(n+1)), A156005(n+1)]`
-/

namespace A023251.P4590889224601176277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A105133 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023251.P4590889224601176277

namespace A023251

/-- `∩[A004273(A105133(n+1)), A156005(n+1)]` -/
def P4590889224601176277.Spec : Prop :=
  ∀ n, (P4590889224601176277.a n : ℤ) = A023251 (n + 1)

end A023251

/-!
# A023252: Primes that remain prime through 2 iterations of function f(x) = 5x + 2.

The programs for A023252, there is no canonical definition to state claims against.
-/

/-! ## A023252.P9895619175349998934

`A045319(lt[1, A280720(n+1)])`
-/

namespace A023252.P9895619175349998934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A023252.P9895619175349998934

/-! ## A023252.P17670029168527745194

`A065091(lt[1, A280720(n+1)])`
-/

namespace A023252.P17670029168527745194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A023252.P17670029168527745194

/-! ## A023252.P6982798363385205545

`A000040(lt[1, A280720(n+1)]+1)`
-/

namespace A023252.P6982798363385205545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A023252.P6982798363385205545

/-! ## A023252.P8949041482130576187

`A040976(lt[1, A280720(n+1)]+1)+2`
-/

namespace A023252.P8949041482130576187
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) + 2

end

end A023252.P8949041482130576187

/-! ## A023252.P15192998356396342774

`A086801(lt[1, A280720(n+1)]+1)+3`
-/

namespace A023252.P15192998356396342774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086801 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1) + 3

end

end A023252.P15192998356396342774

/-!
# A023253: Primes that remain prime through 2 iterations of the function f(x) = 5x + 4.

The programs for A023253, the canonical program `A023253.P15115840622694205473` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023253 has offset 1).

The definition of A023253 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1213 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023253.P15115840622694205473

`∩[A023218(n+1), A136089(n+1)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A023253

/-- `∩[A023218(n+1), A136089(n+1)]` -/
def P15115840622694205473.Spec : Prop :=
  ∀ n, (P15115840622694205473.a n : ℤ) = A023253 (n + 1)

theorem P15115840622694205473.correct : P15115840622694205473.Spec := by
  intro n
  simp only [A023253, Nat.add_sub_cancel]

end A023253

/-! ## A023253.P17636627807314650530

`∩[A024897(n+1), A136089(n+1)]`
-/

namespace A023253.P17636627807314650530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024897 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136089 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023253.P17636627807314650530

namespace A023253

/-- `∩[A024897(n+1), A136089(n+1)]` -/
def P17636627807314650530.Spec : Prop :=
  ∀ n, (P17636627807314650530.a n : ℤ) = A023253 (n + 1)

end A023253

/-! ## A023253.P2947541975469088662

`floor(A152294(n+1)/5)`
-/

namespace A023253.P2947541975469088662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152294 (n + 1) : ℚ) / 5⌋

end

end A023253.P2947541975469088662

namespace A023253

/-- `floor(A152294(n+1)/5)` -/
def P2947541975469088662.Spec : Prop :=
  ∀ n, P2947541975469088662.a n = A023253 (n + 1)

end A023253

/-! ## A023253.P17576248335102233985

`A006530(A152294(n+1)-4)`
-/

namespace A023253.P17576248335102233985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A152294 (n + 1) - 4).toNat

end

end A023253.P17576248335102233985

namespace A023253

/-- `A006530(A152294(n+1)-4)` -/
def P17576248335102233985.Spec : Prop :=
  ∀ n, P17576248335102233985.a n = A023253 (n + 1)

end A023253

/-! ## A023253.P2245037483629442431

`A020639((A152294(n+1)-4)/5)`
-/

namespace A023253.P2245037483629442431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A152294 (n + 1) - 4 : ℚ) / 5)).toNat

end

end A023253.P2245037483629442431

namespace A023253

/-- `A020639((A152294(n+1)-4)/5)` -/
def P2245037483629442431.Spec : Prop :=
  ∀ n, P2245037483629442431.a n = A023253 (n + 1)

end A023253

/-!
# A023254: Primes that remain prime through 2 iterations of the function f(x) = 5x + 6.

The programs for A023254, there is no canonical definition to state claims against.
-/

/-! ## A023254.P13148400527526703747

`p?[A308539(A320829(3*n+4))]`
-/

namespace A023254.P13148400527526703747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308539 (A320829 (3 * n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023254.P13148400527526703747

/-!
# A023255: Primes that remain prime through 2 iterations of the function f(x) = 5x + 8.

The programs for A023255, there is no canonical definition to state claims against.
-/

/-! ## A023255.P11570507910091046707

`A272384(lt[A318758(n+1), A080963(n)])`
-/

namespace A023255.P11570507910091046707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318758 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080963 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272384 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A023255.P11570507910091046707

/-! ## A023255.P367926833816038774

`∩[A240960(A034838(n+4)), A260488(n)]`
-/

namespace A023255.P367926833816038774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240960 (A034838 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260488 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023255.P367926833816038774

/-!
# A023256: Primes that remain prime through 2 iterations of function f(x) = 6x + 1.

The programs for A023256, the canonical program `A023256.P9214186173841082197` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023256 has offset 1).

The definition of A023256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 793 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023256.P9214186173841082197

`p?[A263309(n+1)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023256

/-- `p?[A263309(n+1)]` -/
def P9214186173841082197.Spec : Prop :=
  ∀ n, P9214186173841082197.a n = A023256 (n + 1)

theorem P9214186173841082197.correct : P9214186173841082197.Spec := by
  intro n
  simp only [A023256, Nat.add_sub_cancel]

end A023256

/-! ## A023256.P14885839548680820999

`p?[record[A263309(A291769(n))]]`
-/

namespace A023256.P14885839548680820999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023256.P14885839548680820999

namespace A023256

/-- `p?[record[A263309(A291769(n))]]` -/
def P14885839548680820999.Spec : Prop :=
  ∀ n, P14885839548680820999.a n = A023256 (n + 1)

end A023256

/-! ## A023256.P17316353222182265657

`p?[record[A263309(A324347(n))]]`
-/

namespace A023256.P17316353222182265657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023256.P17316353222182265657

namespace A023256

/-- `p?[record[A263309(A324347(n))]]` -/
def P17316353222182265657.Spec : Prop :=
  ∀ n, P17316353222182265657.a n = A023256 (n + 1)

end A023256

/-! ## A023256.P17088004476803536346

`∩[A007693(n+1), A263309(n+1)]`
-/

namespace A023256.P17088004476803536346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P17088004476803536346

namespace A023256

/-- `∩[A007693(n+1), A263309(n+1)]` -/
def P17088004476803536346.Spec : Prop :=
  ∀ n, (P17088004476803536346.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P14679868657219309487

`∩[A045349(n+1), A263309(n+1)]`
-/

namespace A023256.P14679868657219309487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P14679868657219309487

namespace A023256

/-- `∩[A045349(n+1), A263309(n+1)]` -/
def P14679868657219309487.Spec : Prop :=
  ∀ n, (P14679868657219309487.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P2863725937737707265

`∩[A045372(n+1), A263309(n+1)]`
-/

namespace A023256.P2863725937737707265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P2863725937737707265

namespace A023256

/-- `∩[A045372(n+1), A263309(n+1)]` -/
def P2863725937737707265.Spec : Prop :=
  ∀ n, (P2863725937737707265.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P11673197329701619921

`∩[A045348(n+1), A263309(n+1)]`
-/

namespace A023256.P11673197329701619921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045348 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P11673197329701619921

namespace A023256

/-- `∩[A045348(n+1), A263309(n+1)]` -/
def P11673197329701619921.Spec : Prop :=
  ∀ n, (P11673197329701619921.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P9903898630959532474

`∩[A045371(n+1), A263309(n+1)]`
-/

namespace A023256.P9903898630959532474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P9903898630959532474

namespace A023256

/-- `∩[A045371(n+1), A263309(n+1)]` -/
def P9903898630959532474.Spec : Prop :=
  ∀ n, (P9903898630959532474.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P16435800711233516664

`∩[A042986(n+1), A263309(n+1)]`
-/

namespace A023256.P16435800711233516664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P16435800711233516664

namespace A023256

/-- `∩[A042986(n+1), A263309(n+1)]` -/
def P16435800711233516664.Spec : Prop :=
  ∀ n, (P16435800711233516664.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P1317142531668377831

`∩[A045321(n+1), A263309(n+1)]`
-/

namespace A023256.P1317142531668377831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P1317142531668377831

namespace A023256

/-- `∩[A045321(n+1), A263309(n+1)]` -/
def P1317142531668377831.Spec : Prop :=
  ∀ n, (P1317142531668377831.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P9527536925485726851

`∩[A042997(n+1), A263309(n+1)]`
-/

namespace A023256.P9527536925485726851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P9527536925485726851

namespace A023256

/-- `∩[A042997(n+1), A263309(n+1)]` -/
def P9527536925485726851.Spec : Prop :=
  ∀ n, (P9527536925485726851.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P13584846775108177622

`∩[A216881(n+1), A263309(n+1)]`
-/

namespace A023256.P13584846775108177622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P13584846775108177622

namespace A023256

/-- `∩[A216881(n+1), A263309(n+1)]` -/
def P13584846775108177622.Spec : Prop :=
  ∀ n, (P13584846775108177622.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P2498104678198406262

`∩[A216882(n+1), A263309(n+1)]`
-/

namespace A023256.P2498104678198406262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216882 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P2498104678198406262

namespace A023256

/-- `∩[A216882(n+1), A263309(n+1)]` -/
def P2498104678198406262.Spec : Prop :=
  ∀ n, (P2498104678198406262.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P10702738304976046368

`∩[A042966(n+1), A263309(n+1)]`
-/

namespace A023256.P10702738304976046368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P10702738304976046368

namespace A023256

/-- `∩[A042966(n+1), A263309(n+1)]` -/
def P10702738304976046368.Spec : Prop :=
  ∀ n, (P10702738304976046368.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P14745340493790154531

`∩[A058853(n+1), A263309(n+1)]`
-/

namespace A023256.P14745340493790154531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058853 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P14745340493790154531

namespace A023256

/-- `∩[A058853(n+1), A263309(n+1)]` -/
def P14745340493790154531.Spec : Prop :=
  ∀ n, (P14745340493790154531.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P9834495062210762485

`∩[A000040(n+1), A263309(n+1)]`
-/

namespace A023256.P9834495062210762485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P9834495062210762485

namespace A023256

/-- `∩[A000040(n+1), A263309(n+1)]` -/
def P9834495062210762485.Spec : Prop :=
  ∀ n, (P9834495062210762485.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P9385697009745430493

`∩[A045319(n+1), A263309(n+1)]`
-/

namespace A023256.P9385697009745430493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P9385697009745430493

namespace A023256

/-- `∩[A045319(n+1), A263309(n+1)]` -/
def P9385697009745430493.Spec : Prop :=
  ∀ n, (P9385697009745430493.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P8938507147358932896

`∩[A045344(n+1), A263309(n+1)]`
-/

namespace A023256.P8938507147358932896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P8938507147358932896

namespace A023256

/-- `∩[A045344(n+1), A263309(n+1)]` -/
def P8938507147358932896.Spec : Prop :=
  ∀ n, (P8938507147358932896.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P13760144446846775145

`∩[A138837(n+1), A263309(n+1)]`
-/

namespace A023256.P13760144446846775145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P13760144446846775145

namespace A023256

/-- `∩[A138837(n+1), A263309(n+1)]` -/
def P13760144446846775145.Spec : Prop :=
  ∀ n, (P13760144446846775145.a n : ℤ) = A023256 (n + 1)

end A023256

/-! ## A023256.P531531374736657205

`∩[A175787(n+1), A263309(n+1)]`
-/

namespace A023256.P531531374736657205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023256.P531531374736657205

namespace A023256

/-- `∩[A175787(n+1), A263309(n+1)]` -/
def P531531374736657205.Spec : Prop :=
  ∀ n, (P531531374736657205.a n : ℤ) = A023256 (n + 1)

end A023256

/-!
# A023257: Primes that remain prime through 2 iterations of function f(x) = 6x + 5.

The programs for A023257, there is no canonical definition to state claims against.
-/

/-! ## A023257.P3458250176364748547

`floor(A152295(n+1)/6)`
-/

namespace A023257.P3458250176364748547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152295 (n + 1) : ℚ) / 6⌋

end

end A023257.P3458250176364748547

/-! ## A023257.P7573102578797703828

`(A152295(A289441(2*(n+1)))-5)/6`
-/

namespace A023257.P7573102578797703828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152295 (A289441 (2 * (n + 1))).toNat - 5 : ℚ) / 6

end

end A023257.P7573102578797703828

/-! ## A023257.P9797134138336771066

`ceil(A152295(n+1)/6-A000035(2*n+1))`
-/

namespace A023257.P9797134138336771066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A152295 (n + 1) : ℚ) / 6 - (A000035 (2 * n + 1) : ℚ)⌉

end

end A023257.P9797134138336771066

/-! ## A023257.P8802512240553801453

`ceil(A152295(n+1)/6-A188967(A188969(n+1)))`
-/

namespace A023257.P8802512240553801453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A152295 (n + 1) : ℚ) / 6 - (A188967 (A188969 (n + 1)).toNat : ℚ)⌉

end

end A023257.P8802512240553801453

/-! ## A023257.P12360755546257969025

`A020639((A152295(n+1)-5)/6)`
-/

namespace A023257.P12360755546257969025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A152295 (n + 1) - 5 : ℚ) / 6)).toNat

end

end A023257.P12360755546257969025

/-! ## A023257.P11191380195035674296

`A014963((A152295(n+1)-5)/6)`
-/

namespace A023257.P11191380195035674296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A152295 (n + 1) - 5 : ℚ) / 6)).toNat

end

end A023257.P11191380195035674296

/-! ## A023257.P1433491113628728029

`A008612(A152295(n+1))`
-/

namespace A023257.P1433491113628728029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (A152295 (n + 1)).toNat

end

end A023257.P1433491113628728029

/-! ## A023257.P638099590548252329

`A008615(A152295(n+1)-2)`
-/

namespace A023257.P638099590548252329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A152295 (n + 1) - 2).toNat

end

end A023257.P638099590548252329

/-! ## A023257.P16603859555358212149

`A010764(A152295(n+1)-2)`
-/

namespace A023257.P16603859555358212149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010764 (A152295 (n + 1) - 2).toNat

end

end A023257.P16603859555358212149

/-! ## A023257.P12916017205671312476

`A078898(A152295(n+1)-8)`
-/

namespace A023257.P12916017205671312476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A152295 (n + 1) - 8).toNat

end

end A023257.P12916017205671312476

/-!
# A023258: Primes that remain prime through 2 iterations of function f(x) = 6x + 7.

The programs for A023258, there is no canonical definition to state claims against.
-/

/-! ## A023258.P10255310277679646330

`A111689(A023270(n+1))`
-/

namespace A023258.P10255310277679646330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111689 (A023270 (n + 1)).toNat

end

end A023258.P10255310277679646330

/-! ## A023258.P13918133124020422355

`record[A006530(A246683(3*n+5))]`
-/

namespace A023258.P13918133124020422355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A246683 (3 * n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023258.P13918133124020422355

/-!
# A023259: Primes that remain prime through 2 iterations of function f(x) = 7x + 6.

The programs for A023259, there is no canonical definition to state claims against.
-/

/-! ## A023259.P4605199935205612872

`A132270(∩[A023225(n+1), A136072(n+1)])`
-/

namespace A023259.P4605199935205612872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136072 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A023259.P4605199935205612872

/-! ## A023259.P16277882528462235461

`A132270(∩[A024900(n+1), A136072(n+1)])`
-/

namespace A023259.P16277882528462235461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136072 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132270 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A023259.P16277882528462235461

/-! ## A023259.P15483154539048677898

`A242062(∩[A023225(n+1), A136072(n+1)])`
-/

namespace A023259.P15483154539048677898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136072 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242062 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A023259.P15483154539048677898

/-!
# A023260: Primes that remain prime through 2 iterations of function f(x) = 8x + 1.

The programs for A023260, there is no canonical definition to state claims against.
-/

/-! ## A023260.P18382755749540958123

`floor(A085958(n+1)/8)`
-/

namespace A023260.P18382755749540958123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A085958 (n + 1) : ℚ) / 8⌋

end

end A023260.P18382755749540958123

/-! ## A023260.P8709120456732121866

`A110962((A085958(n+1)-1)/2)`
-/

namespace A023260.P8709120456732121866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110962 (SequenceMachineLib.roundAway ((A085958 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A023260.P8709120456732121866

/-! ## A023260.P5672467346873344821

`A006530(A085958(n+1)-1)`
-/

namespace A023260.P5672467346873344821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A085958 (n + 1) - 1).toNat

end

end A023260.P5672467346873344821

/-! ## A023260.P4468821784672878712

`A006530(xor(1, A085958(n+1)))`
-/

namespace A023260.P4468821784672878712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor 1 (A085958 (n + 1))).toNat

end

end A023260.P4468821784672878712

/-! ## A023260.P15654225001320318475

`A006530(A000010(A085958(n+1)))`
-/

namespace A023260.P15654225001320318475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A000010 (A085958 (n + 1)).toNat).toNat

end

end A023260.P15654225001320318475

/-!
# A023261: Primes that remain prime through 2 iterations of function f(x) = 8x + 3.

The programs for A023261, there is no canonical definition to state claims against.
-/

/-! ## A023261.P8497202973262903447

`A000040(record[or(2, A347917(n))])`
-/

namespace A023261.P8497202973262903447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A347917 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023261.P8497202973262903447

/-! ## A023261.P7206996938462306411

`filter[A141191(n+1), A103582(#)]`
-/

namespace A023261.P7206996938462306411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103582 (f1 j).toNat = 1) n)

end

end A023261.P7206996938462306411

/-!
# A023262: Primes that remain prime through 2 iterations of the function f(x) = 8*x + 5.

The programs for A023262, there is no canonical definition to state claims against.
-/

/-! ## A023262.P18175304506030203508

`A107685(A084932(n+2))`
-/

namespace A023262.P18175304506030203508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107685 (A084932 (n + 2)).toNat

end

end A023262.P18175304506030203508

/-! ## A023262.P5140892109149223380

`A132244(A302139(n+1)-6)`
-/

namespace A023262.P5140892109149223380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132244 (A302139 (n + 1) - 6).toNat

end

end A023262.P5140892109149223380

/-!
# A023263: Primes that remain prime through 2 iterations of function f(x) = 8x + 7.

The programs for A023263, there is no canonical definition to state claims against.
-/

/-! ## A023263.P1119883105999864363

`floor(A158238(n+1)/8)`
-/

namespace A023263.P1119883105999864363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A158238 (n + 1) : ℚ) / 8⌋

end

end A023263.P1119883105999864363

/-! ## A023263.P6867735734747986763

`(A158238(round(acot(n+2)+n)+1)-7)/8`
-/

namespace A023263.P6867735734747986763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158238 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n + 2 : ℝ) + (n : ℝ)) + 1).toNat - 7 : ℚ) / 8

end

end A023263.P6867735734747986763

/-! ## A023263.P17633206984558699069

`(A158238(round((2*(n+1)-1)/2))-7)/8`
-/

namespace A023263.P17633206984558699069
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A158238 (SequenceMachineLib.roundAway (((2 * (n + 1) : ℤ) - 1 : ℚ) / 2)).toNat - 7 : ℚ) / 8

end

end A023263.P17633206984558699069

/-! ## A023263.P11414074651788467360

`A000027(ceil(A158238(n+1)/8))-1`
-/

namespace A023263.P11414074651788467360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 ⌈(A158238 (n + 1) : ℚ) / 8⌉.toNat - 1

end

end A023263.P11414074651788467360

/-! ## A023263.P8325266607863510622

`A020639((A158238(n+1)-7)/8)`
-/

namespace A023263.P8325266607863510622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A158238 (n + 1) - 7 : ℚ) / 8)).toNat

end

end A023263.P8325266607863510622

/-! ## A023263.P9675022155396551977

`∩[A023231(n+1), A127580(n+1)]`
-/

namespace A023263.P9675022155396551977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023231 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127580 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023263.P9675022155396551977

/-! ## A023263.P12809720461739124959

`A006530((A158238(n+1)-7)/2)`
-/

namespace A023263.P12809720461739124959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A158238 (n + 1) - 7 : ℚ) / 2)).toNat

end

end A023263.P12809720461739124959

/-! ## A023263.P17155494449092221615

`A006530(A158238(n+1)-7)`
-/

namespace A023263.P17155494449092221615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A158238 (n + 1) - 7).toNat

end

end A023263.P17155494449092221615

/-! ## A023263.P1752190455819018543

`A006530(xor(7, A158238(n+1)))`
-/

namespace A023263.P1752190455819018543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor 7 (A158238 (n + 1))).toNat

end

end A023263.P1752190455819018543

/-!
# A023264: Primes that remain prime through 2 iterations of function f(x) = 8x + 9.

The programs for A023264, there is no canonical definition to state claims against.
-/

/-! ## A023264.P7771766578805974088

`A166159(A115093(n+1))`
-/

namespace A023264.P7771766578805974088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166159 (A115093 (n + 1)).toNat

end

end A023264.P7771766578805974088

/-!
# A023265: Primes that remain prime through 2 iterations of function f(x) = 9x + 2.

The programs for A023265, there is no canonical definition to state claims against.
-/

/-! ## A023265.P6739126699872823160

`∩[A376457(n+1), A386026(n+1)]`
-/

namespace A023265.P6739126699872823160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376457 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023265.P6739126699872823160

/-! ## A023265.P13677360202855777397

`A000040(eq[A115576(3*(n+1)), A116357(2*(n+1))])`
-/

namespace A023265.P13677360202855777397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115576 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116357 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A023265.P13677360202855777397

/-! ## A023265.P17038389784911347022

`filter[A066594(n+1), A103583(#)]`
-/

namespace A023265.P17038389784911347022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103583 (f1 j).toNat = 1) n)

end

end A023265.P17038389784911347022

/-!
# A023267: Primes that remain prime through 2 iterations of function f(x) = 9x + 8.

The programs for A023267, there is no canonical definition to state claims against.
-/

/-! ## A023267.P16137896018592316781

`p?[∑[A239669(A038293(n))]]`
-/

namespace A023267.P16137896018592316781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239669 (A038293 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023267.P16137896018592316781

/-!
# A023269: Primes that remain prime through 2 iterations of function f(x) = 10x + 3.

The programs for A023269, the canonical program `A023269.P10197537875240591780` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023269 has offset 1).

The definition of A023269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023269.P12994948035660368673

`∩[A023238(n+1), A101472(n+1)]`
-/

namespace A023269.P12994948035660368673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023269.P12994948035660368673

namespace A023269

/-- `∩[A023238(n+1), A101472(n+1)]` -/
def P12994948035660368673.Spec : Prop :=
  ∀ n, (P12994948035660368673.a n : ℤ) = A023269 (n + 1)

end A023269

/-! ## A023269.P7027188486519258241

`∩[floor(A055782(n+1)/10), A101472(n+1)]`
-/

namespace A023269.P7027188486519258241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055782 (n + 1) : ℚ) / 10⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023269.P7027188486519258241

namespace A023269

/-- `∩[floor(A055782(n+1)/10), A101472(n+1)]` -/
def P7027188486519258241.Spec : Prop :=
  ∀ n, (P7027188486519258241.a n : ℤ) = A023269 (n + 1)

end A023269

/-! ## A023269.P10197537875240591780

`p?[∩[A101472(n+1), A102338(n+1)]]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A023269

/-- `p?[∩[A101472(n+1), A102338(n+1)]]` -/
def P10197537875240591780.Spec : Prop :=
  ∀ n, (P10197537875240591780.a n : ℤ) = A023269 (n + 1)

theorem P10197537875240591780.correct : P10197537875240591780.Spec := by
  intro n
  simp only [A023269, Nat.add_sub_cancel]

end A023269

/-! ## A023269.P3626123919579562134

`p?[∩[A024913(n+1)-1, A101472(n+1)]]`
-/

namespace A023269.P3626123919579562134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 1) - 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101472 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023269.P3626123919579562134

namespace A023269

/-- `p?[∩[A024913(n+1)-1, A101472(n+1)]]` -/
def P3626123919579562134.Spec : Prop :=
  ∀ n, (P3626123919579562134.a n : ℤ) = A023269 (n + 1)

end A023269

/-!
# A023270: Primes that remain prime through 2 iterations of function f(x) = 10x + 9.

The programs for A023270, there is no canonical definition to state claims against.
-/

/-! ## A023270.P14206476954728038910

`∩[A023240(n+1), A102703(n+1)]`
-/

namespace A023270.P14206476954728038910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023240 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023270.P14206476954728038910

/-! ## A023270.P14300165514472973167

`∩[floor(A055784(n+1)/10), A102703(n+1)]`
-/

namespace A023270.P14300165514472973167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A055784 (n + 1) : ℚ) / 10⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102703 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023270.P14300165514472973167

/-! ## A023270.P8450933171426704064

`p?[∩[A102700(n+1), A102703(n+1)]]`
-/

namespace A023270.P8450933171426704064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102700 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102703 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023270.P8450933171426704064

/-! ## A023270.P15406887513995486927

`p?[∩[A102703(n+1), A105042(n+1)-1]]`
-/

namespace A023270.P15406887513995486927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102703 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105042 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023270.P15406887513995486927

/-! ## A023270.P17097955703241468878

`p?[∩[A102703(n+1), A166458(n+1)-1]]`
-/

namespace A023270.P17097955703241468878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102703 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166458 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023270.P17097955703241468878

/-!
# A023271: Primes p such that p, p+6, p+12, p+18 are all primes.

The programs for A023271, there is no canonical definition to state claims against.
-/

/-! ## A023271.P6078750186707161602

`A046122(n+1)-6`
-/

namespace A023271.P6078750186707161602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046122 (n + 1) - 6

end

end A023271.P6078750186707161602

/-! ## A023271.P7922414129368004471

`A046123(n+1)-12`
-/

namespace A023271.P7922414129368004471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046123 (n + 1) - 12

end

end A023271.P7922414129368004471

/-! ## A023271.P16470267203476228493

`A046124(n+1)+A023460(n)-n`
-/

namespace A023271.P16470267203476228493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046124 (n + 1) + (A023460 n - (n : ℤ))

end

end A023271.P16470267203476228493

/-! ## A023271.P13340722742519390886

`A275682(record[A266303(n)])-6`
-/

namespace A023271.P13340722742519390886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275682 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 6

end

end A023271.P13340722742519390886

/-! ## A023271.P3364361080967237816

`A275682(A111284(n+1))-6`
-/

namespace A023271.P3364361080967237816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275682 (A111284 (n + 1)).toNat - 6

end

end A023271.P3364361080967237816

/-! ## A023271.P895568917140036159

`p?[A023241(n+1)-6]`
-/

namespace A023271.P895568917140036159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1) - 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023271.P895568917140036159

/-! ## A023271.P3632934645379294842

`p?[A006489(n+1)-12]`
-/

namespace A023271.P3632934645379294842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006489 (n + 1) - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023271.P3632934645379294842

/-! ## A023271.P14201818785975960567

`p?[A275682(A053438(n))-12]`
-/

namespace A023271.P14201818785975960567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275682 (A053438 n).toNat - 12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023271.P14201818785975960567

/-! ## A023271.P1724050106754499789

`A123083(3*n+n+1)`
-/

namespace A023271.P1724050106754499789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123083 (3 * n + (n + 1))

end

end A023271.P1724050106754499789

/-! ## A023271.P6849647624183085152

`∩[A023241(n+1), A153418(n+1)]`
-/

namespace A023271.P6849647624183085152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153418 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023271.P6849647624183085152

/-!
# A023272: Primes that remain prime through 3 iterations of the function f(x) = 2*x + 1.

The programs for A023272, there is no canonical definition to state claims against.
-/

/-! ## A023272.P7129626769333623634

`∩[A007700(n+1), A023231(n+1)]`
-/

namespace A023272.P7129626769333623634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023272.P7129626769333623634

/-! ## A023272.P4396568758769986483

`p?[A124493(n+1)-1]`
-/

namespace A023272.P4396568758769986483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124493 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023272.P4396568758769986483

/-! ## A023272.P2310048661141849098

`p?[floor(A007700(n+1)/2)]`
-/

namespace A023272.P2310048661141849098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007700 (n + 1) : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023272.P2310048661141849098

/-! ## A023272.P16411741957416262776

`p?[floor(A059455(n+1)/4)]`
-/

namespace A023272.P16411741957416262776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A059455 (n + 1) : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023272.P16411741957416262776

/-! ## A023272.P15775538998197690748

`p?[floor(A066179(n+1)/8)]`
-/

namespace A023272.P15775538998197690748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A066179 (n + 1) : ℚ) / 8⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023272.P15775538998197690748

/-! ## A023272.P524703549204702754

`∩[A005384(n+1), A244087(n+1)]`
-/

namespace A023272.P524703549204702754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023272.P524703549204702754

/-! ## A023272.P1939846680335199182

`∩[A007700(n+1), A244087(n+1)]`
-/

namespace A023272.P1939846680335199182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023272.P1939846680335199182

/-! ## A023272.P17587936923833447989

`∩[A244087(n+1), A348511(n+1)]`
-/

namespace A023272.P17587936923833447989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348511 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023272.P17587936923833447989

/-!
# A023273: Primes that remain prime through 3 iterations of function f(x) = 2x + 3.

The programs for A023273, there is no canonical definition to state claims against.
-/

/-! ## A023273.P5803987650613277951

`∩[A023242(n+1), A156004(n+1)]`
-/

namespace A023273.P5803987650613277951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156004 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023273.P5803987650613277951

/-! ## A023273.P1899376320150329954

`∩[A023242(n+1), A156014(n+1)]`
-/

namespace A023273.P1899376320150329954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023273.P1899376320150329954

/-! ## A023273.P14820674095204698346

`∩[A023242(n+1), A156010(n+1)]`
-/

namespace A023273.P14820674095204698346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023242 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156010 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023273.P14820674095204698346

/-! ## A023273.P18191231785349076833

`∩[A156010(n+1), A156014(n+1)]`
-/

namespace A023273.P18191231785349076833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156010 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156014 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023273.P18191231785349076833

/-! ## A023273.P9934616685979524774

`p?[A323161(A023242(n+1))-4]`
-/

namespace A023273.P9934616685979524774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323161 (A023242 (n + 1)).toNat - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023273.P9934616685979524774

/-!
# A023274: Primes that remain prime through 3 iterations of function f(x) = 2x + 5.

The programs for A023274, there is no canonical definition to state claims against.
-/

/-! ## A023274.P14617086101960093656

`p?[A014682(A023243(n+1)-5)]`
-/

namespace A023274.P14617086101960093656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A023243 (n + 1) - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023274.P14617086101960093656

/-!
# A023275: Primes that remain prime through 3 iterations of function f(x) = 2x + 7.

The programs for A023275, there is no canonical definition to state claims against.
-/

/-! ## A023275.P9318329084959144287

`p?[A319702(A023244(n+1))-5]`
-/

namespace A023275.P9318329084959144287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319702 (A023244 (n + 1)).toNat - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023275.P9318329084959144287

/-!
# A023276: Primes that remain prime through 3 iterations of function f(x) = 2x + 9.

The programs for A023276, there is no canonical definition to state claims against.
-/

/-! ## A023276.P12910826955206456688

`p?[A288735(Δ[A038504(n)])]`
-/

namespace A023276.P12910826955206456688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288735 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023276.P12910826955206456688

/-! ## A023276.P626880529304506509

`p?[A167707(∑[A092982(n+1)])]`
-/

namespace A023276.P626880529304506509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092982 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167707 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023276.P626880529304506509

/-!
# A023277: Primes that remain prime through 3 iterations of function f(x) = 3x + 2.

The programs for A023277, there is no canonical definition to state claims against.
-/

/-! ## A023277.P17222070785376499743

`∩[A023246(n+1), A136090(n+1)]`
-/

namespace A023277.P17222070785376499743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023246 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136090 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023277.P17222070785376499743

/-! ## A023277.P6976059622787014612

`∩[A136090(n+1), floor(A152292(n+1)/3)]`
-/

namespace A023277.P6976059622787014612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A152292 (n + 1) : ℚ) / 3⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023277.P6976059622787014612

/-! ## A023277.P12964638367292710419

`∩[floor(A023235(n+1)/3), A023235(n+1)]`
-/

namespace A023277.P12964638367292710419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A023235 (n + 1) : ℚ) / 3⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023277.P12964638367292710419

/-! ## A023277.P12433619060113345798

`∩[A136090(n+1), A006530(A152292(n+1)-2)]`
-/

namespace A023277.P12433619060113345798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A152292 (n + 1) - 2).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023277.P12433619060113345798

/-!
# A023280: Primes that remain prime through 3 iterations of function f(x) = 3x + 10.

The programs for A023280, there is no canonical definition to state claims against.
-/

/-! ## A023280.P664417512413928168

`p?[abs(A137241(A023249(n+1)))]`
-/

namespace A023280.P664417512413928168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A137241 (A023249 (n + 1)).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023280.P664417512413928168

/-! ## A023280.P14852333497426517902

`p?[-A137241(A023249(n+3))]`
-/

namespace A023280.P14852333497426517902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A137241 (A023249 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023280.P14852333497426517902

/-! ## A023280.P14033437232152510399

`p?[∏{p}[A137241(A023249(n+5)), #]]`
-/

namespace A023280.P14033437232152510399
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137241 (A023249 (n + 5)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023280.P14033437232152510399

/-!
# A023281: Primes that remain prime through 3 iterations of function f(x) = 4x + 3.

The programs for A023281, the canonical program `A023281.P8211061823659445661` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023281 has offset 1).

The definition of A023281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023281.P8211061823659445661

`∩[A023250(n+1), A127580(n+1)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A023281

/-- `∩[A023250(n+1), A127580(n+1)]` -/
def P8211061823659445661.Spec : Prop :=
  ∀ n, (P8211061823659445661.a n : ℤ) = A023281 (n + 1)

theorem P8211061823659445661.correct : P8211061823659445661.Spec := by
  intro n
  simp only [A023281, Nat.add_sub_cancel]

end A023281

/-!
# A023282: Primes that remain prime through 3 iterations of function f(x) = 4x + 9.

The programs for A023282, there is no canonical definition to state claims against.
-/

/-! ## A023282.P7934834510357106338

`∩[A023251(n+1), A156009(n+1)]`
-/

namespace A023282.P7934834510357106338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156009 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023282.P7934834510357106338

/-!
# A023283: Primes that remain prime through 3 iterations of function f(x) = 5x + 2.

The programs for A023283, there is no canonical definition to state claims against.
-/

/-! ## A023283.P13054719621379285408

`A045319(lt[2, A280720(n+1)])`
-/

namespace A023283.P13054719621379285408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A023283.P13054719621379285408

/-! ## A023283.P8184016384093721749

`A065091(lt[2, A280720(n+1)])`
-/

namespace A023283.P8184016384093721749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A023283.P8184016384093721749

/-! ## A023283.P9561617460071714013

`A000040(lt[2, A280720(n+1)]+1)`
-/

namespace A023283.P9561617460071714013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A023283.P9561617460071714013

/-! ## A023283.P18197354477144633992

`A008578(lt[2, A280720(n+1)]+2)`
-/

namespace A023283.P18197354477144633992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280720 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2)

end

end A023283.P18197354477144633992

/-!
# A023285: Primes that remain prime through 3 iterations of function f(x) = 5x + 6.

The programs for A023285, there is no canonical definition to state claims against.
-/

/-! ## A023285.P15600362123960729142

`A155471(A155471(A111359(n+1))-(n+1))`
-/

namespace A023285.P15600362123960729142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155471 (A155471 (A111359 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A023285.P15600362123960729142

/-!
# A023286: Primes that remain prime through 3 iterations of function f(x) = 5x + 8.

The programs for A023286, there is no canonical definition to state claims against.
-/

/-! ## A023286.P8000881643659130792

`A214794(A001674(n))`
-/

namespace A023286.P8000881643659130792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214794 (A001674 n).toNat

end

end A023286.P8000881643659130792

/-!
# A023287: Primes that remain prime through 3 iterations of function f(x) = 6x + 1.

The programs for A023287, there is no canonical definition to state claims against.
-/

/-! ## A023287.P14416697369595216005

`∩[A023256(n+1), A263310(n+1)]`
-/

namespace A023287.P14416697369595216005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023256 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023287.P14416697369595216005

/-! ## A023287.P329128208163398582

`p?[A263310(n+1)]`
-/

namespace A023287.P329128208163398582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A023287.P329128208163398582

/-! ## A023287.P15723965632947192184

`record[p?[A263310(A291769(n))]]`
-/

namespace A023287.P15723965632947192184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263310 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023287.P15723965632947192184

/-! ## A023287.P13370391399781134696

`record[p?[A263310(A292266(n))]]`
-/

namespace A023287.P13370391399781134696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263310 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023287.P13370391399781134696

/-! ## A023287.P1213658059475465304

`record[p?[A263310(A324347(n))]]`
-/

namespace A023287.P1213658059475465304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263310 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023287.P1213658059475465304

/-! ## A023287.P14141271016385695500

`record[p?[A263310(A052938(n))]]`
-/

namespace A023287.P14141271016385695500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263310 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023287.P14141271016385695500

/-! ## A023287.P12993449984517731153

`∩[A007693(n+1), A263310(n+1)]`
-/

namespace A023287.P12993449984517731153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023287.P12993449984517731153

/-! ## A023287.P449733410401923357

`record[p?[A263310(A154958(n))]]`
-/

namespace A023287.P449733410401923357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263310 (A154958 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023287.P449733410401923357

/-! ## A023287.P5603790234280312311

`∩[A030430(n+1), A263310(n+1)]`
-/

namespace A023287.P5603790234280312311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023287.P5603790234280312311

/-! ## A023287.P14568034615665522768

`∩[A045453(n+1), A263310(n+1)]`
-/

namespace A023287.P14568034615665522768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023287.P14568034615665522768

/-! ## A023287.P8169490224502792201

`∩[A090756(n+1), A263310(n+1)]`
-/

namespace A023287.P8169490224502792201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263310 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023287.P8169490224502792201

/-!
# A023288: Primes that remain prime through 3 iterations of function f(x) = 6x + 5.

The programs for A023288, there is no canonical definition to state claims against.
-/

/-! ## A023288.P2863098494354552337

`A008612(∩[A023257(n+1), A152295(n+1)])`
-/

namespace A023288.P2863098494354552337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023257 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152295 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A023288.P2863098494354552337

/-!
# A023289: Primes that remain prime through 3 iterations of function f(x) = 6x + 7.

The programs for A023289, there is no canonical definition to state claims against.
-/

/-! ## A023289.P14757166247958692484

`A251549(A317614(3*n+2)+A075506(n))`
-/

namespace A023289.P14757166247958692484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251549 (A317614 (3 * n + 2) + A075506 n).toNat

end

end A023289.P14757166247958692484

/-!
# A023296: Primes that remain prime through 3 iterations of function f(x) = 9x + 2.

The programs for A023296, there is no canonical definition to state claims against.
-/

/-! ## A023296.P1449492035584898739

`A365769(A349929(n+2))`
-/

namespace A023296.P1449492035584898739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365769 (A349929 (n + 2)).toNat

end

end A023296.P1449492035584898739

/-!
# A023297: Primes that remain prime through 3 iterations of function f(x) = 9x + 4.

The programs for A023297, there is no canonical definition to state claims against.
-/

/-! ## A023297.P13220899803405782123

`p?[∑[dr(A086642(n+1))]]`
-/

namespace A023297.P13220899803405782123
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A086642 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A023297.P13220899803405782123

/-!
# A023299: Primes that remain prime through 3 iterations of function f(x) = 9x + 10.

The programs for A023299, there is no canonical definition to state claims against.
-/

/-! ## A023299.P4345539745765779223

`A023268(∑[A046942((n+1)/∏{p}[n+1, (n+1)/#])])`
-/

namespace A023299.P4345539745765779223
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046942 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023268 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023299.P4345539745765779223

