import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C038
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C047
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
import SequenceMachineLib.Triangle

/-!
# A368100: Numbers of which it is possible to choose a different prime factor of each prime index.

The programs for A368100, there is no canonical definition to state claims against.
-/

/-! ## A368100.P4013617868943557752

`∩[2*n+1, A326537(n+1)]`
-/

namespace A368100.P4013617868943557752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326537 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368100.P4013617868943557752

/-! ## A368100.P17419210720990254655

`record[A000265(A326537(n+1))]`
-/

namespace A368100.P17419210720990254655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A326537 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368100.P17419210720990254655

/-! ## A368100.P11908959633393374279

`filter[A326537(n+1), A000035(#)]`
-/

namespace A368100.P11908959633393374279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A368100.P11908959633393374279

/-! ## A368100.P8864582432429227901

`filter[A326537(n+1), A035263(#)]`
-/

namespace A368100.P8864582432429227901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A368100.P8864582432429227901

/-! ## A368100.P2015205961836007817

`filter[A326537(n+1), A104106(#)]`
-/

namespace A368100.P2015205961836007817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326537 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A104106 (f1 j).toNat = 1) n)

end

end A368100.P2015205961836007817

/-!
# A368101: Numbers of which there is exactly one way to choose a different prime factor of each prime index.

The programs for A368101, there is no canonical definition to state claims against.
-/

/-! ## A368101.P8957011587405656453

`A005408(eq[1, A367771(n)])`
-/

namespace A368101.P8957011587405656453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A368101.P8957011587405656453

/-! ## A368101.P15203835775309226186

`∩[A322846(n+1), A329629(n+1)]`
-/

namespace A368101.P15203835775309226186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368101.P15203835775309226186

/-! ## A368101.P3357802263551327982

`∩[A322846(n+1), A340019(n+1)]`
-/

namespace A368101.P3357802263551327982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368101.P3357802263551327982

/-! ## A368101.P5856048149314718891

`∩[A322846(n+1), A368603(n+1)]`
-/

namespace A368101.P5856048149314718891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322846 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368101.P5856048149314718891

/-! ## A368101.P14651728718079615981

`∩[A322847(n+1), A329629(n+1)]`
-/

namespace A368101.P14651728718079615981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329629 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368101.P14651728718079615981

/-!
# A368104: The number of bi-unitary divisors of the powerful part of n.

The programs for A368104, the canonical program `A368104.P6809811150617499491` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368104 has offset 1).

The definition of A368104 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368104.P6809811150617499491

`A286324(A057521(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A368104

/-- `A286324(A057521(n+1))` -/
def P6809811150617499491.Spec : Prop :=
  ∀ n, P6809811150617499491.a n = A368104 (n + 1)

theorem P6809811150617499491.correct : P6809811150617499491.Spec := by
  intro n
  simp only [A368104, Nat.add_sub_cancel]

end A368104

/-! ## A368104.P14835760200498903158

`A286324(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))`
-/

namespace A368104.P14835760200498903158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)))

end

end A368104.P14835760200498903158

namespace A368104

/-- `A286324(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))` -/
def P14835760200498903158.Spec : Prop :=
  ∀ n, P14835760200498903158.a n = A368104 (n + 1)

end A368104

/-! ## A368104.P3253653864320430975

`A365348(A003557(n+1))`
-/

namespace A368104.P3253653864320430975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365348 (A003557 (n + 1)).toNat

end

end A368104.P3253653864320430975

namespace A368104

/-- `A365348(A003557(n+1))` -/
def P3253653864320430975.Spec : Prop :=
  ∀ n, P3253653864320430975.a n = A368104 (n + 1)

end A368104

/-! ## A368104.P12853089405016812845

`A368169(n+1)*A370080(n+1)`
-/

namespace A368104.P12853089405016812845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368169 (n + 1) * A370080 (n + 1)

end

end A368104.P12853089405016812845

namespace A368104

/-- `A368169(n+1)*A370080(n+1)` -/
def P12853089405016812845.Spec : Prop :=
  ∀ n, P12853089405016812845.a n = A368104 (n + 1)

end A368104

/-! ## A368104.P4207654362591737825

`A286324(n+1)/A056671(n+1)`
-/

namespace A368104.P4207654362591737825
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286324 (n + 1) : ℚ) / (A056671 (n + 1) : ℚ)

end

end A368104.P4207654362591737825

namespace A368104

/-- `A286324(n+1)/A056671(n+1)` -/
def P4207654362591737825.Spec : Prop :=
  ∀ n, P4207654362591737825.a n = (A368104 (n + 1) : ℚ)

end A368104

/-! ## A368104.P8654926300225029195

`A366902(A365683((n+1)²))`
-/

namespace A368104.P8654926300225029195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366902 (A365683 ((n + 1) ^ 2)).toNat

end

end A368104.P8654926300225029195

namespace A368104

/-- `A366902(A365683((n+1)²))` -/
def P8654926300225029195.Spec : Prop :=
  ∀ n, P8654926300225029195.a n = A368104 (n + 1)

end A368104

/-! ## A368104.P11085139172526552433

`A366902((n+1)*A350390(n+1))`
-/

namespace A368104.P11085139172526552433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366902 ((n + 1 : ℤ) * A350390 (n + 1)).toNat

end

end A368104.P11085139172526552433

namespace A368104

/-- `A366902((n+1)*A350390(n+1))` -/
def P11085139172526552433.Spec : Prop :=
  ∀ n, P11085139172526552433.a n = A368104 (n + 1)

end A368104

/-! ## A368104.P4408562061888669242

`A362852(n+1)*A362852(A129202(n))`
-/

namespace A368104.P4408562061888669242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362852 (n + 1) * A362852 (A129202 n).toNat

end

end A368104.P4408562061888669242

namespace A368104

/-- `A362852(n+1)*A362852(A129202(n))` -/
def P4408562061888669242.Spec : Prop :=
  ∀ n, P4408562061888669242.a n = A368104 (n + 1)

end A368104

/-! ## A368104.P10902315525913243487

`A001223(gcd(2^∑{e}[n+1, #], A325390(n+1)))`
-/

namespace A368104.P10902315525913243487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (Int.gcd (2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℤ) (A325390 (n + 1)))

end

end A368104.P10902315525913243487

namespace A368104

/-- `A001223(gcd(2^∑{e}[n+1, #], A325390(n+1)))` -/
def P10902315525913243487.Spec : Prop :=
  ∀ n, P10902315525913243487.a n = A368104 (n + 1)

end A368104

/-! ## A368104.P15680270414922475311

`A086876(A037291(n+1))`
-/

namespace A368104.P15680270414922475311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086876 (A037291 (n + 1)).toNat

end

end A368104.P15680270414922475311

namespace A368104

/-- `A086876(A037291(n+1))` -/
def P15680270414922475311.Spec : Prop :=
  ∀ n, P15680270414922475311.a n = A368104 (n + 1)

end A368104

/-!
# A368105: The number of bi-unitary divisors of n that are powerful (A001694).

The programs for A368105, the canonical program `A368105.P6887596357651866009` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368105 has offset 1).

The definition of A368105 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368105.P9167287831996936827

`A363332(n+1)*A368885(n+1)`
-/

namespace A368105.P9167287831996936827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363332 (n + 1) * A368885 (n + 1)

end

end A368105.P9167287831996936827

namespace A368105

/-- `A363332(n+1)*A368885(n+1)` -/
def P9167287831996936827.Spec : Prop :=
  ∀ n, P9167287831996936827.a n = A368105 (n + 1)

end A368105

/-! ## A368105.P6887596357651866009

`∑{d}[n+1, A227291(#)*A325837((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A368105

/-- `∑{d}[n+1, A227291(#)*A325837((n+1)/#)]` -/
def P6887596357651866009.Spec : Prop :=
  ∀ n, P6887596357651866009.a n = A368105 (n + 1)

theorem P6887596357651866009.correct : P6887596357651866009.Spec := by
  intro n
  simp only [A368105, Nat.add_sub_cancel]

end A368105

/-! ## A368105.P6956591620968553514

`A366763(A350390(A057521(n+1)))`
-/

namespace A368105.P6956591620968553514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366763 (A350390 (A057521 (n + 1)).toNat).toNat

end

end A368105.P6956591620968553514

namespace A368105

/-- `A366763(A350390(A057521(n+1)))` -/
def P6956591620968553514.Spec : Prop :=
  ∀ n, P6956591620968553514.a n = A368105 (n + 1)

end A368105

/-! ## A368105.P1007142270859002726

`A366763(A350390((n+1)/A055231(n+1)))`
-/

namespace A368105.P1007142270859002726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366763 (A350390 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A055231 (n + 1) : ℚ))).toNat).toNat

end

end A368105.P1007142270859002726

namespace A368105

/-- `A366763(A350390((n+1)/A055231(n+1)))` -/
def P1007142270859002726.Spec : Prop :=
  ∀ n, P1007142270859002726.a n = A368105 (n + 1)

end A368105

/-! ## A368105.P5401004453332850357

`∏{e}[n+1, A006530(A000142(#))]`
-/

namespace A368105.P5401004453332850357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A006530 (A000142 (Nat.factorization (f1 n) p)).toNat

end

end A368105.P5401004453332850357

namespace A368105

/-- `∏{e}[n+1, A006530(A000142(#))]` -/
def P5401004453332850357.Spec : Prop :=
  ∀ n, P5401004453332850357.a n = A368105 (n + 1)

end A368105

/-! ## A368105.P16727171897120108654

`∏{e}[n+1, A001221(A084920(2^#))]`
-/

namespace A368105.P16727171897120108654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A001221 (A084920 (2 ^ Nat.factorization (f1 n) p)).toNat

end

end A368105.P16727171897120108654

namespace A368105

/-- `∏{e}[n+1, A001221(A084920(2^#))]` -/
def P16727171897120108654.Spec : Prop :=
  ∀ n, P16727171897120108654.a n = A368105 (n + 1)

end A368105

/-! ## A368105.P14443764064686415450

`A365488((A356194(n+1)/A019555(n+1))²)`
-/

namespace A368105.P14443764064686415450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365488 (SequenceMachineLib.roundAway (((A356194 (n + 1) : ℚ) / (A019555 (n + 1) : ℚ)) ^ 2)).toNat

end

end A368105.P14443764064686415450

namespace A368105

/-- `A365488((A356194(n+1)/A019555(n+1))²)` -/
def P14443764064686415450.Spec : Prop :=
  ∀ n, P14443764064686415450.a n = A368105 (n + 1)

end A368105

/-! ## A368105.P2584731565100303442

`A325837((n+1)*A331737(n+1))`
-/

namespace A368105.P2584731565100303442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 ((n + 1 : ℤ) * A331737 (n + 1)).toNat

end

end A368105.P2584731565100303442

namespace A368105

/-- `A325837((n+1)*A331737(n+1))` -/
def P2584731565100303442.Spec : Prop :=
  ∀ n, P2584731565100303442.a n = A368105 (n + 1)

end A368105

/-! ## A368105.P10482949888142155752

`A368977(A331737(n+1)*A390371(n+1))`
-/

namespace A368105.P10482949888142155752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368977 (A331737 (n + 1) * A390371 (n + 1)).toNat

end

end A368105.P10482949888142155752

namespace A368105

/-- `A368977(A331737(n+1)*A390371(n+1))` -/
def P10482949888142155752.Spec : Prop :=
  ∀ n, P10482949888142155752.a n = A368105 (n + 1)

end A368105

/-! ## A368105.P3854111232695405671

`A368977(A350390(n+1)*A390371(n+1))`
-/

namespace A368105.P3854111232695405671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368977 (A350390 (n + 1) * A390371 (n + 1)).toNat

end

end A368105.P3854111232695405671

namespace A368105

/-- `A368977(A350390(n+1)*A390371(n+1))` -/
def P3854111232695405671.Spec : Prop :=
  ∀ n, P3854111232695405671.a n = A368105 (n + 1)

end A368105

/-!
# A368106: The number of infinitary divisors of the powerful part of n.

The programs for A368106, the canonical program `A368106.P645412121077292751` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368106 has offset 1).

The definition of A368106 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037445, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368106.P645412121077292751

`A037445(A057521(n+1))`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A368106

/-- `A037445(A057521(n+1))` -/
def P645412121077292751.Spec : Prop :=
  ∀ n, P645412121077292751.a n = A368106 (n + 1)

theorem P645412121077292751.correct : P645412121077292751.Spec := by
  intro n
  simp only [A368106, Nat.add_sub_cancel]

end A368106

/-! ## A368106.P499860512524174993

`A037445(n+1)/∏{e}[n+1, ceil(2/#)]`
-/

namespace A368106.P499860512524174993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037445 (n + 1) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), ⌈2 / (Nat.factorization (f1 n) p : ℚ)⌉ : ℤ) : ℚ)

end

end A368106.P499860512524174993

namespace A368106

/-- `A037445(n+1)/∏{e}[n+1, ceil(2/#)]` -/
def P499860512524174993.Spec : Prop :=
  ∀ n, P499860512524174993.a n = (A368106 (n + 1) : ℚ)

end A368106

/-! ## A368106.P901956022937290611

`A037445(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))`
-/

namespace A368106.P901956022937290611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)))

end

end A368106.P901956022937290611

namespace A368106

/-- `A037445(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))` -/
def P901956022937290611.Spec : Prop :=
  ∀ n, P901956022937290611.a n = A368106 (n + 1)

end A368106

/-! ## A368106.P9781274746627311505

`A037445(A212173(n+1))`
-/

namespace A368106.P9781274746627311505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A212173 (n + 1)).toNat

end

end A368106.P9781274746627311505

namespace A368106

/-- `A037445(A212173(n+1))` -/
def P9781274746627311505.Spec : Prop :=
  ∀ n, P9781274746627311505.a n = A368106 (n + 1)

end A368106

/-! ## A368106.P3356645849331573965

`A037445(n+1)/A056671(n+1)`
-/

namespace A368106.P3356645849331573965
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037445 (n + 1) : ℚ) / (A056671 (n + 1) : ℚ)

end

end A368106.P3356645849331573965

namespace A368106

/-- `A037445(n+1)/A056671(n+1)` -/
def P3356645849331573965.Spec : Prop :=
  ∀ n, P3356645849331573965.a n = (A368106 (n + 1) : ℚ)

end A368106

/-! ## A368106.P10843802690448418023

`A037445(A064549(A003557(n+1)))`
-/

namespace A368106.P10843802690448418023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A064549 (A003557 (n + 1)).toNat).toNat

end

end A368106.P10843802690448418023

namespace A368106

/-- `A037445(A064549(A003557(n+1)))` -/
def P10843802690448418023.Spec : Prop :=
  ∀ n, P10843802690448418023.a n = A368106 (n + 1)

end A368106

/-! ## A368106.P13666877919849077528

`A252505(A062379((n+1)*A053165(n+1)))`
-/

namespace A368106.P13666877919849077528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252505 (A062379 ((n + 1 : ℤ) * A053165 (n + 1)).toNat).toNat

end

end A368106.P13666877919849077528

namespace A368106

/-- `A252505(A062379((n+1)*A053165(n+1)))` -/
def P13666877919849077528.Spec : Prop :=
  ∀ n, P13666877919849077528.a n = A368106 (n + 1)

end A368106

/-! ## A368106.P16384356497958760331

`A037445(A377709(A360721(n+1))²)`
-/

namespace A368106.P16384356497958760331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A377709 (A360721 (n + 1)).toNat ^ 2).toNat

end

end A368106.P16384356497958760331

namespace A368106

/-- `A037445(A377709(A360721(n+1))²)` -/
def P16384356497958760331.Spec : Prop :=
  ∀ n, P16384356497958760331.a n = A368106 (n + 1)

end A368106

/-! ## A368106.P6724737890294043652

`A360721(A377709(A360721(n+1))²)`
-/

namespace A368106.P6724737890294043652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360721 (A377709 (A360721 (n + 1)).toNat ^ 2).toNat

end

end A368106.P6724737890294043652

namespace A368106

/-- `A360721(A377709(A360721(n+1))²)` -/
def P6724737890294043652.Spec : Prop :=
  ∀ n, P6724737890294043652.a n = A368106 (n + 1)

end A368106

/-! ## A368106.P17549932954825339807

`A215467(A124859(n+1))`
-/

namespace A368106.P17549932954825339807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215467 (A124859 (n + 1)).toNat

end

end A368106.P17549932954825339807

namespace A368106

/-- `A215467(A124859(n+1))` -/
def P17549932954825339807.Spec : Prop :=
  ∀ n, P17549932954825339807.a n = A368106 (n + 1)

end A368106

/-!
# A368107: Prime powers p^m such that p | m.

The programs for A368107, there is no canonical definition to state claims against.
-/

/-! ## A368107.P18407264413360839059

`∩[A072873(n+1), A257278(n+1)]`
-/

namespace A368107.P18407264413360839059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368107.P18407264413360839059

/-! ## A368107.P13729775781999420092

`∩[A072873(n+1), A100391(n+1)]`
-/

namespace A368107.P13729775781999420092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368107.P13729775781999420092

/-! ## A368107.P18149026742348214494

`∩[A100391(n+1), A227993(n+1)]`
-/

namespace A368107.P18149026742348214494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100391 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368107.P18149026742348214494

/-! ## A368107.P8898943022212017702

`∩[A122494(n+1), A227993(n+1)]`
-/

namespace A368107.P8898943022212017702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122494 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227993 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368107.P8898943022212017702

/-! ## A368107.P9168881307945705977

`∩[A227993(n+1), A257278(n+1)]`
-/

namespace A368107.P9168881307945705977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368107.P9168881307945705977

/-!
# A368108: a(1,2,3) = 1,2,3. For n > 3, a(n) is the smallest of the least novel multiples of all primes which divide an earlier term but do not divide a(n-1). If the prime divisors of all prior terms also divide a(n-1), a(n) is the least novel multiple of the smallest prime which does not divide a(n-1).

The programs for A368108, there is no canonical definition to state claims against.
-/

/-! ## A368108.P17683361773794406947

`A351495(n+1)%A368133(A085790(3*(n+1)))`
-/

namespace A368108.P17683361773794406947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351495 (n + 1)) (A368133 (A085790 (3 * (n + 1))).toNat)

end

end A368108.P17683361773794406947

/-!
# A368109: Number of ways to choose a binary index of each binary index of n.

The programs for A368109, there is no canonical definition to state claims against.
-/

/-! ## A368109.P7436260487061373296

`∏{p}[A019565(n), A232551(#)]`
-/

namespace A368109.P7436260487061373296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A232551 p

end

end A368109.P7436260487061373296

/-! ## A368109.P3020321633095772383

`∏{p}[A019565(n), A325121(#)]`
-/

namespace A368109.P3020321633095772383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A325121 p

end

end A368109.P3020321633095772383

/-! ## A368109.P2987635837545644178

`∏{p}[A019565(n), A338898(#)]`
-/

namespace A368109.P2987635837545644178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A338898 p

end

end A368109.P2987635837545644178

/-! ## A368109.P14219345336341988225

`∏{p}[A019565(n), A000120(A061395(#))]`
-/

namespace A368109.P14219345336341988225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000120 (A061395 p).toNat

end

end A368109.P14219345336341988225

/-! ## A368109.P9275750949439127112

`A358260(A059900(n))`
-/

namespace A368109.P9275750949439127112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358260 (A059900 n).toNat

end

end A368109.P9275750949439127112

/-! ## A368109.P15208396224823151912

`A358260(A344535(n))`
-/

namespace A368109.P15208396224823151912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358260 (A344535 n).toNat

end

end A368109.P15208396224823151912

/-! ## A368109.P3931069520242300848

`A035218(2*A309840(n))`
-/

namespace A368109.P3931069520242300848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (2 * A309840 n).toNat

end

end A368109.P3931069520242300848

/-! ## A368109.P3777894735856322775

`A343068(A019565(n))`
-/

namespace A368109.P3777894735856322775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343068 (A019565 n).toNat

end

end A368109.P3777894735856322775

/-! ## A368109.P8201816813072497804

`A046951(7*A052330(n))`
-/

namespace A368109.P8201816813072497804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (7 * A052330 n).toNat

end

end A368109.P8201816813072497804

/-! ## A368109.P15409789023977208128

`A032741(A140947(n+1))*A367912(n)`
-/

namespace A368109.P15409789023977208128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A140947 (n + 1)).toNat * A367912 n

end

end A368109.P15409789023977208128

/-!
# A368110: Numbers of which it is possible to choose a different divisor of each prime index.

The programs for A368110, there is no canonical definition to state claims against.
-/

/-! ## A368110.P988571420903979267

`comp[A355740(n+1)-1]+1`
-/

namespace A368110.P988571420903979267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355740 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A368110.P988571420903979267

/-! ## A368110.P14904665228071080691

`comp[∪[A000292(2*n), A355740(n+1)]]`
-/

namespace A368110.P14904665228071080691
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (2 * n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355740 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A368110.P14904665228071080691

/-! ## A368110.P16643747208414670749

`∩[A171948(n+1), A352489(n+1)]`
-/

namespace A368110.P16643747208414670749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A368110.P16643747208414670749

/-! ## A368110.P12808906785274677502

`lt[A068346(n²), A179986(n)]`
-/

namespace A368110.P12808906785274677502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368110.P12808906785274677502

/-! ## A368110.P9227727896015820373

`lt[A068346(n²), A132411(2*n)]`
-/

namespace A368110.P9227727896015820373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068346 (n ^ 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132411 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A368110.P9227727896015820373

/-! ## A368110.P7740205933556386443

`A380695(n+1)%A276625(n+5)`
-/

namespace A368110.P7740205933556386443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380695 (n + 1)) (A276625 (n + 5))

end

end A368110.P7740205933556386443

/-! ## A368110.P3515726369708820601

`A380692(n+1)%A325044(n+1)²`
-/

namespace A368110.P3515726369708820601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A380692 (n + 1)) (A325044 (n + 1) ^ 2)

end

end A368110.P3515726369708820601

/-! ## A368110.P8060271981758643651

`filter[A371170(n+1), A166486(#)]`
-/

namespace A368110.P8060271981758643651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A368110.P8060271981758643651

/-! ## A368110.P14320119251432633583

`filter[A371170(n+1), A359550(#)]`
-/

namespace A368110.P14320119251432633583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359550 (f1 j).toNat = 1) n)

end

end A368110.P14320119251432633583

/-! ## A368110.P12675709793521017169

`filter[A371170(n+1), A359832(#)]`
-/

namespace A368110.P12675709793521017169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359832 (f1 j).toNat = 1) n)

end

end A368110.P12675709793521017169

/-!
# A368112: Sorted positions of first appearances in A368109 (number of ways to choose a binary index of each binary index).

The programs for A368112, there is no canonical definition to state claims against.
-/

/-! ## A368112.P1886703698478124201

`A367915(∑[A348290(n+1)²])`
-/

namespace A368112.P1886703698478124201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348290 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367915 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A368112.P1886703698478124201

/-!
# A368113: Trajectory of 7 under the '7x+1' map.

The programs for A368113, there is no canonical definition to state claims against.
-/

/-! ## A368113.P3791190830974440348

`A133421(a(n-1))` with `a(0)=7`
-/

namespace A368113.P3791190830974440348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [7] fun n a =>
  A133421 (a (n - 1)).toNat

end

end A368113.P3791190830974440348

/-!
# A368114: Trajectory of 11 under the '11x+1' map.

The programs for A368114, there is no canonical definition to state claims against.
-/

/-! ## A368114.P2484827091395705303

`A368085(A000217(n+4)+n+1)`
-/

namespace A368114.P2484827091395705303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368085 (A000217 (n + 4) + (n + 1 : ℤ)).toNat

end

end A368114.P2484827091395705303

/-!
# A368116: A(m, n) = lcm_{p in Partitions(n)} (Product_{r in p}(r + m)). Array read by ascending antidiagonals, for m, n >= 0.

The programs for A368116, there is no canonical definition to state claims against.
-/

/-! ## A368116.P17068764189436137675

`A124391(A258222(n))`
-/

namespace A368116.P17068764189436137675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124391 (A258222 n).toNat

end

end A368116.P17068764189436137675

/-! ## A368116.P208028389429634534

`A008279(n)*A030598(A079588(n))`
-/

namespace A368116.P208028389429634534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A030598 (A079588 n).toNat

end

end A368116.P208028389429634534

/-! ## A368116.P3635009203975408685

`lcm(A008279(n), A320111(A287022(n)))`
-/

namespace A368116.P3635009203975408685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008279 n) (A320111 (A287022 n).toNat)

end

end A368116.P3635009203975408685

/-! ## A368116.P13839699441364408751

`A008279(n)*A359236(A000051(n+1))`
-/

namespace A368116.P13839699441364408751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n * A359236 (A000051 (n + 1)).toNat

end

end A368116.P13839699441364408751

/-! ## A368116.P17748900373422587868

`A018293(A351790(n))*A183328(n+1)`
-/

namespace A368116.P17748900373422587868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018293 (A351790 n).toNat * A183328 (n + 1)

end

end A368116.P17748900373422587868

/-!
# A368117: a(n) = Product_{(s - 2)|n, s prime} s if n > 0, a(0) = 1.

The programs for A368117, there is no canonical definition to state claims against.
-/

/-! ## A368117.P13758807966253278048

`A160014(eq[2, col(n)])`
-/

namespace A368117.P13758807966253278048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160014 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A368117.P13758807966253278048

/-! ## A368117.P11625497574321960563

`A160014(∑[n+2]+3)`
-/

namespace A368117.P11625497574321960563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160014 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A368117.P11625497574321960563

/-! ## A368117.P12728765145641685444

`A160014(A373662(2*(n+1)))%A089981(n+1)`
-/

namespace A368117.P12728765145641685444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160014 (A373662 (2 * (n + 1))).toNat) (A089981 (n + 1))

end

end A368117.P12728765145641685444

/-! ## A368117.P13630427066472925199

`A160014(A373662(2*(n+1)))+A000035(2*(n+2))`
-/

namespace A368117.P13630427066472925199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160014 (A373662 (2 * (n + 1))).toNat + A000035 (2 * (n + 2))

end

end A368117.P13630427066472925199

/-!
# A368118: a(n) = ceiling(1/p(n)) if p(n) > 0 otherwise 0, where p(n) = 2*sin(Pi * Gamma(n) / n).

The programs for A368118, there is no canonical definition to state claims against.
-/

/-! ## A368118.P16485307096210994183

`A008621(A020915(n))*A010051(n+1)`
-/

namespace A368118.P16485307096210994183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A020915 n).toNat * A010051 (n + 1)

end

end A368118.P16485307096210994183

/-! ## A368118.P5495056465080573983

`A010051(n+1)*A110591(A307683(n+1))`
-/

namespace A368118.P5495056465080573983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A110591 (A307683 (n + 1)).toNat

end

end A368118.P5495056465080573983

/-! ## A368118.P6075206675677911402

`A100682(A049084(n+1)%A138599(n+1))`
-/

namespace A368118.P6075206675677911402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100682 (Int.tmod (A049084 (n + 1)) (A138599 (n + 1))).toNat

end

end A368118.P6075206675677911402

/-! ## A368118.P14689966756721398506

`A100682(A049084(n+1))%A270929(n+1)`
-/

namespace A368118.P14689966756721398506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100682 (A049084 (n + 1)).toNat) (A270929 (n + 1))

end

end A368118.P14689966756721398506

/-! ## A368118.P655966267222483953

`A010051(n+1)*A070939(A050142(n))`
-/

namespace A368118.P655966267222483953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (n + 1) * A070939 (A050142 n).toNat

end

end A368118.P655966267222483953

/-!
# A368119: Array read by ascending antidiagonals. A(n, k) = Product_{j=0..k-1} (n*j + 1).

The programs for A368119, there is no canonical definition to state claims against.
-/

/-! ## A368119.P10444746277527420602

`A256268(∑[2*n]%comp[∑[n]])`
-/

namespace A368119.P10444746277527420602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256268 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A368119.P10444746277527420602

/-! ## A368119.P15698829213137865865

`A256268(∑[char[∑[n]]]²-n-1)`
-/

namespace A368119.P15698829213137865865
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256268 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A368119.P15698829213137865865

/-! ## A368119.P5319028418028851018

`A142589(A056943(n))`
-/

namespace A368119.P5319028418028851018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142589 (A056943 n).toNat

end

end A368119.P5319028418028851018

/-! ## A368119.P15097824650781831956

`A256268(A061579(n))%A000045(n+4)`
-/

namespace A368119.P15097824650781831956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A256268 (A061579 n).toNat) (A000045 (n + 4))

end

end A368119.P15097824650781831956

/-! ## A368119.P4143695680688295703

`A142589(A038722(n+1)-A002024(n+1))`
-/

namespace A368119.P4143695680688295703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142589 (A038722 (n + 1) - A002024 (n + 1)).toNat

end

end A368119.P4143695680688295703

/-! ## A368119.P17563340259943502926

`gcd(A015912(2*(n+1)), A256268(A061579(n)))`
-/

namespace A368119.P17563340259943502926
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A015912 (2 * (n + 1))) (A256268 (A061579 n).toNat)

end

end A368119.P17563340259943502926

/-!
# A368124: A variant of A367146 with application of the distance minimization to the first of two symmetrized versions of the strip bijection between two square lattices as described in A368121.

The programs for A368124, there is no canonical definition to state claims against.
-/

/-! ## A368124.P2648802760360260457

`A001175(A001175(n+1)*A350354(n))`
-/

namespace A368124.P2648802760360260457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A001175 (n + 1) * A350354 n).toNat

end

end A368124.P2648802760360260457

/-! ## A368124.P6639473397808762653

`A103517(n)*A293442(A124974(n+1))`
-/

namespace A368124.P6639473397808762653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103517 n * A293442 (A124974 (n + 1)).toNat

end

end A368124.P6639473397808762653

/-! ## A368124.P6851620429011444162

`A300915(n+1)+A007949(A300876(n+1))`
-/

namespace A368124.P6851620429011444162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300915 (n + 1) + A007949 (A300876 (n + 1)).toNat

end

end A368124.P6851620429011444162

/-!
# A368129: A variant of A367146 with application of the distance minimization to the second of two symmetrized versions of the strip bijection between two square lattices as described in A368126.

The programs for A368129, there is no canonical definition to state claims against.
-/

/-! ## A368129.P10739847123752158993

`A368130(A183079(n+1))%A024779(2*n+3)`
-/

namespace A368129.P10739847123752158993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368130 (A183079 (n + 1)).toNat) (A024779 (2 * n + 3))

end

end A368129.P10739847123752158993

/-! ## A368129.P12758623731951030435

`A121041(2*(n+1))*A351391(3*(n+1))`
-/

namespace A368129.P12758623731951030435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121041 (2 * (n + 1)) * A351391 (3 * (n + 1))

end

end A368129.P12758623731951030435

/-!
# A368130: A variant of A367894 with application of the distance minimization to the second of two symmetrized versions of the strip bijection between two square lattices as described in A368126.

The programs for A368130, there is no canonical definition to state claims against.
-/

/-! ## A368130.P548185498882020270

`A372011(A041091(n))`
-/

namespace A368130.P548185498882020270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372011 (A041091 n).toNat

end

end A368130.P548185498882020270

/-!
# A368131: a(n) = floor(n * log(4/3) / log(3/2)).

The programs for A368131, the canonical program `A368131.P4340374644539258575` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368131 has offset 0).

The definition of A368131 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(n*log(4/3)/log(3/2))` (program `A368131.P4340374644539258575`, by `A368131.P4340374644539258575.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A368131.P4340374644539258575

`floor(n*log(4/3)/log(3/2))`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A368131

/-- `floor(n*log(4/3)/log(3/2))` -/
def P4340374644539258575.Spec : Prop :=
  ∀ n, P4340374644539258575.a n = A368131 n

theorem P4340374644539258575.correct : P4340374644539258575.Spec := by
  intro n
  simp only [A368131]

end A368131

/-! ## A368131.P17876517175209701736

`A054414(n)-2*n-1`
-/

namespace A368131.P17876517175209701736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 n - (2 * n : ℤ) - 1

end

end A368131.P17876517175209701736

namespace A368131

/-- `A054414(n)-2*n-1` -/
def P17876517175209701736.Spec : Prop :=
  ∀ n, P17876517175209701736.a n = A368131 n

end A368131

/-! ## A368131.P15228103014535900482

`A054414(n)-Δ[n²]`
-/

namespace A368131.P15228103014535900482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054414 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A368131.P15228103014535900482

namespace A368131

/-- `A054414(n)-Δ[n²]` -/
def P15228103014535900482.Spec : Prop :=
  ∀ n, P15228103014535900482.a n = A368131 n

end A368131

/-! ## A368131.P3741867590252311111

`A054414(n)%A157142(n)`
-/

namespace A368131.P3741867590252311111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054414 n) (A157142 n)

end

end A368131.P3741867590252311111

namespace A368131

/-- `A054414(n)%A157142(n)` -/
def P3741867590252311111.Spec : Prop :=
  ∀ n, P3741867590252311111.a n = A368131 n

end A368131

/-! ## A368131.P9450293598212149218

`∑[runs[A098294(n)]-1]`
-/

namespace A368131.P9450293598212149218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368131.P9450293598212149218

namespace A368131

/-- `∑[runs[A098294(n)]-1]` -/
def P9450293598212149218.Spec : Prop :=
  ∀ n, P9450293598212149218.a n = A368131 n

end A368131

/-! ## A368131.P5137567994833547496

`∑[A047234(runs[A098294(n)])]`
-/

namespace A368131.P5137567994833547496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047234 (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368131.P5137567994833547496

namespace A368131

/-- `∑[A047234(runs[A098294(n)])]` -/
def P5137567994833547496.Spec : Prop :=
  ∀ n, P5137567994833547496.a n = A368131 n

end A368131

/-! ## A368131.P13148583670983743621

`∑[A085146(runs[A098294(n)])]`
-/

namespace A368131.P13148583670983743621
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085146 (SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A368131.P13148583670983743621

namespace A368131

/-- `∑[A085146(runs[A098294(n)])]` -/
def P13148583670983743621.Spec : Prop :=
  ∀ n, P13148583670983743621.a n = A368131 n

end A368131

/-! ## A368131.P6661659431055423090

`A136409(A054414(n))-n`
-/

namespace A368131.P6661659431055423090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136409 (A054414 n).toNat - (n : ℤ)

end

end A368131.P6661659431055423090

namespace A368131

/-- `A136409(A054414(n))-n` -/
def P6661659431055423090.Spec : Prop :=
  ∀ n, P6661659431055423090.a n = A368131 n

end A368131

/-!
# A368132: a(n) = Product_{k=1..n} (n + k)^k.

The programs for A368132, there is no canonical definition to state claims against.
-/

/-! ## A368132.P3335408901670942767

`∏[A000142(n)]*A296589(n)`
-/

namespace A368132.P3335408901670942767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A296589 n

end

end A368132.P3335408901670942767

/-!
# A368133: a(1,2,3) = 1,2,3; let j = a(n-1), M(n) = Product_{i = 1..n-2} { p a distinct prime: p | a(i), gcd(p, j) = 1 }. For n > 3, a(n) is the least novel multiple of M(n) if M(n) > 1; otherwise a(n) is the least novel multiple of A053669(j), the smallest prime which does not divide j.

The programs for A368133, there is no canonical definition to state claims against.
-/

/-! ## A368133.P1992765788613412023

`A362855(n+1)%∑[2*∑{d}[1+n, #]]`
-/

namespace A368133.P1992765788613412023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362855 (n + 1)) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A368133.P1992765788613412023

/-! ## A368133.P13062590460456500459

`A362855(A033619(n+1)+1)`
-/

namespace A368133.P13062590460456500459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362855 (A033619 (n + 1) + 1).toNat

end

end A368133.P13062590460456500459

/-! ## A368133.P10054635629222589682

`A362855(n+1)%A055562(n)²`
-/

namespace A368133.P10054635629222589682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A362855 (n + 1)) (A055562 n ^ 2)

end

end A368133.P10054635629222589682

/-! ## A368133.P12793958787770560999

`A362855(n+1)+char[A006960(n)]`
-/

namespace A368133.P12793958787770560999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006960 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362855 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A368133.P12793958787770560999

/-! ## A368133.P18436946568663977998

`A362855(n+1)+char[A070797(n+1)]`
-/

namespace A368133.P18436946568663977998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070797 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362855 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A368133.P18436946568663977998

/-! ## A368133.P17605645339711507908

`A362855(n+1)+char[A094612(n+1)]`
-/

namespace A368133.P17605645339711507908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094612 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362855 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A368133.P17605645339711507908

/-! ## A368133.P12259996105420657505

`A362855(n+1)+char[A105992(n+1)]`
-/

namespace A368133.P12259996105420657505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105992 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362855 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A368133.P12259996105420657505

/-! ## A368133.P13788986464191130960

`A362855(n+1)+char[A157120(n+1)]`
-/

namespace A368133.P13788986464191130960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157120 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362855 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A368133.P13788986464191130960

/-! ## A368133.P18221053393446012857

`A362855(n+1)+char[A371558(n+2)]`
-/

namespace A368133.P18221053393446012857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371558 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362855 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A368133.P18221053393446012857

/-!
# A368134: Characteristic numbers of Markov triples in the binary tree A368546.

The programs for A368134, there is no canonical definition to state claims against.
-/

/-! ## A368134.P12853564446865186277

`A305310(lt[A237984(2*(n+2)), A005384(n+1)])`
-/

namespace A368134.P12853564446865186277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237984 (2 * (n + 2))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A368134.P12853564446865186277

/-!
# A368141: Number of ways of tiling the n X n torus up to diagonal and antidiagonal reflections of the square by a tile that is fixed under only 180-degree rotations.

The programs for A368141, there is no canonical definition to state claims against.
-/

/-! ## A368141.P7073936568569754299

`A368144(n+1)-A101637(A047937(n))`
-/

namespace A368141.P7073936568569754299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368144 (n + 1) - A101637 (A047937 n).toNat

end

end A368141.P7073936568569754299

/-!
# A368143: Number of ways of tiling the n X n torus up to 90-degree rotations of the square by two tiles that are each fixed under 90-degree rotation of the square.

The programs for A368143, there is no canonical definition to state claims against.
-/

/-! ## A368143.P687414487643275774

`A368144(n+1)+A053644(A061602(n+1))`
-/

namespace A368143.P687414487643275774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368144 (n + 1) + A053644 (A061602 (n + 1)).toNat

end

end A368143.P687414487643275774

/-! ## A368143.P9585325662201656728

`A368144(n+1)+A053644(A129655(n+1))`
-/

namespace A368143.P9585325662201656728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368144 (n + 1) + A053644 (A129655 (n + 1)).toNat

end

end A368143.P9585325662201656728

/-!
# A368144: Number of ways of tiling the n X n torus up to 90-degree rotations of the square by a tile that is fixed only under 180-degree rotation of the square.

The programs for A368144, there is no canonical definition to state claims against.
-/

/-! ## A368144.P7577325201913906841

`A368143(n+1)-A053644(A061602(n+1))`
-/

namespace A368144.P7577325201913906841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368143 (n + 1) - A053644 (A061602 (n + 1)).toNat

end

end A368144.P7577325201913906841

/-! ## A368144.P12237925069429136301

`A368143(n+1)-A053644(A129655(n+1))`
-/

namespace A368144.P12237925069429136301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368143 (n + 1) - A053644 (A129655 (n + 1)).toNat

end

end A368144.P12237925069429136301

/-!
# A368146: Decimal expansion of 174/96 = 29/16, being the highest possible win/loss points ratio in a completed 5-set tennis match, with 10-point final tie-break, which the player loses.

The programs for A368146, the canonical program `A368146.P16394658131120442199` is in `Seq.B000.C047`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368146 has offset 1).

The definition of A368146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368146.P16394658131120442199

`a(n-1)` with `a(0)=1, a(1)=8, a(2)=1, a(3)=2, a(4)=5, a(5)=0`

The canonical program, it is in `Seq.B000.C047`.
-/

namespace A368146

/-- `a(n-1)` -/
def P16394658131120442199.Spec : Prop :=
  ∀ n, (P16394658131120442199.a n : ℤ) = A368146 (n + 1)

theorem P16394658131120442199.correct : P16394658131120442199.Spec := by
  intro n
  simp only [A368146, Nat.add_sub_cancel]

end A368146

/-!
# A368147: Lexicographically earliest sequence of positive integers such that for any n > 0, a(n) = a(2*n), a(n) and a(n+1) are coprime, and all pairs of adjacent terms are distinct.

The programs for A368147, there is no canonical definition to state claims against.
-/

/-! ## A368147.P4392396567596205583

`A283977(2*(n+1))-A294137(A331927(n))`
-/

namespace A368147.P4392396567596205583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283977 (2 * (n + 1)) - A294137 (A331927 n).toNat

end

end A368147.P4392396567596205583

/-! ## A368147.P10460424027462109185

`A002487(2*(n+1))-A291437(A184318(3*n+2))`
-/

namespace A368147.P10460424027462109185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (2 * (n + 1)) - A291437 (A184318 (3 * n + 2)).toNat

end

end A368147.P10460424027462109185

/-! ## A368147.P9876263783754329623

`A195932(A002487(n+1)%(A259361(n+1)+A198465(3*n+1)))`
-/

namespace A368147.P9876263783754329623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195932 (Int.tmod (A002487 (n + 1)) (A259361 (n + 1) + A198465 (3 * n + 1))).toNat

end

end A368147.P9876263783754329623

/-! ## A368147.P17650724799414244996

`A001511(A073138(n)^(n-∑[val(n+1, 2)]))`
-/

namespace A368147.P17650724799414244996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.roundAway ((A073138 n : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ))).toNat

end

end A368147.P17650724799414244996

/-! ## A368147.P15922874198475442231

`A000120(lcm(A001227(n+5), A006921(n)))`
-/

namespace A368147.P15922874198475442231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A001227 (n + 5)) (A006921 n))

end

end A368147.P15922874198475442231

/-!
# A368148: Square array A(n, k), n, k > 0, read and filled in the greedy way by upwards antidiagonals such that A(n, k) corresponds to the size of the connected component (relative to the Von Neumann neighborhood) of terms equal to A(n, k) including the position (n, k).

The programs for A368148, there is no canonical definition to state claims against.
-/

/-! ## A368148.P8318529740879394059

`A135352(A222608(n+1)+3)`
-/

namespace A368148.P8318529740879394059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135352 (A222608 (n + 1) + 3).toNat

end

end A368148.P8318529740879394059

/-! ## A368148.P12501610421479234734

`A196564(A204723(n+1))`
-/

namespace A368148.P12501610421479234734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A204723 (n + 1)).toNat

end

end A368148.P12501610421479234734

/-! ## A368148.P1078485037675734955

`A265262(A269565(n+1))`
-/

namespace A368148.P1078485037675734955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265262 (A269565 (n + 1)).toNat

end

end A368148.P1078485037675734955

/-! ## A368148.P665672578080076634

`A374209(A223406(n+1))`
-/

namespace A368148.P665672578080076634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374209 (A223406 (n + 1)).toNat

end

end A368148.P665672578080076634

/-! ## A368148.P3650503108047021172

`A001221(A234769(n+1)-3)`
-/

namespace A368148.P3650503108047021172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A234769 (n + 1) - 3).toNat

end

end A368148.P3650503108047021172

/-!
# A368149: Triangular array T(n,k), read by rows: coefficients of strong divisibility sequence of polynomials p(1,x) = 1, p(2,x) = 1 + 2*x, p(n,x) = u*p(n-1,x) + v*p(n-2,x) for n >= 3, where u = p(2,x), v = 1 - x^2.

The programs for A368149, there is no canonical definition to state claims against.
-/

/-! ## A368149.P16256135281726509316

`T(n-1,k)+2*T(n-1,k-1)+T(n-2,k)-T(row(n)-2, col(n)-2)` with `a(0)=1`
-/

namespace A368149.P16256135281726509316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp a n + 2 * SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp2 a n - SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2)

end

end A368149.P16256135281726509316

/-! ## A368149.P8588943340790714548

`A102756(∑[2*n]%comp[∑[n]])`
-/

namespace A368149.P8588943340790714548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102756 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A368149.P8588943340790714548

/-! ## A368149.P6765219915108120572

`A102756(∑[char[∑[n]]]²-n-1)`
-/

namespace A368149.P6765219915108120572
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102756 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A368149.P6765219915108120572

/-! ## A368149.P3544074699261355732

`2*A209999(n+1)-A210236(n+1)`
-/

namespace A368149.P3544074699261355732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A209999 (n + 1) - A210236 (n + 1)

end

end A368149.P3544074699261355732

/-! ## A368149.P4274423137484444857

`A102756(A061579(n))%A001567(n+1)`
-/

namespace A368149.P4274423137484444857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102756 (A061579 n).toNat) (A001567 (n + 1))

end

end A368149.P4274423137484444857

/-! ## A368149.P4861101164410156953

`A209999(n+1)+A210235(n+2)-A209999(n+2)`
-/

namespace A368149.P4861101164410156953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209999 (n + 1) + (A210235 (n + 2) - A209999 (n + 2))

end

end A368149.P4861101164410156953

/-!
# A368156: Triangular array T(n,k), read by rows: coefficients of strong divisibility sequence of polynomials p(1,x) = 1, p(2,x) = 1 + 2*x, p(n,x) = u*p(n-1,x) + v*p(n-2,x) for n >= 3, where u = p(2,x), v = 1 + x^2.

The programs for A368156, there is no canonical definition to state claims against.
-/

/-! ## A368156.P16222953320064895915

`T(row(n)-2, col(n)-2)+T(n-2,k)+T(n-1,k)+2*T(n-1,k-1)` with `a(0)=1`
-/

namespace A368156.P16222953320064895915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2) + SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUp a n + 2 * SequenceMachineLib.triUpLeft a n

end

end A368156.P16222953320064895915

/-!
# A368157: Triangular array T(n,k), read by rows: coefficients of strong divisibility sequence of polynomials p(1,x) = 1, p(2,x) = 1 + 2*x, p(n,x) = u*p(n-1,x) + v*p(n-2,x) for n >= 3, where u = p(2,x), v = 1 + 2*x^2.

The programs for A368157, there is no canonical definition to state claims against.
-/

/-! ## A368157.P10485909083630135678

`T(n-2,k)+T(n-1,k)+2*(T(row(n)-2, col(n)-2)+T(n-1,k-1))` with `a(0)=1`
-/

namespace A368157.P10485909083630135678
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.triUp2 a n + SequenceMachineLib.triUp a n + 2 * (SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 2) + SequenceMachineLib.triUpLeft a n)

end

end A368157.P10485909083630135678

/-!
# A368158: Irregular triangular array T, read by rows: T(n,k) = number of sums |x-y| + |y-z| = k, where x,y,z are in {1,2,...,n} and x <= y.

The programs for A368158, there is no canonical definition to state claims against.
-/

/-! ## A368158.P8360857490717309394

`A368607(n+1)+Δ[A368606(n+1)]`
-/

namespace A368158.P8360857490717309394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368607 (n + 1) + (f1 (n + 1) - f1 n)

end

end A368158.P8360857490717309394

/-! ## A368158.P11012332313742369709

`Δ[A368606(n+1)]+A368516(n+1)/2`
-/

namespace A368158.P11012332313742369709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368606 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) + (A368516 (n + 1) : ℚ) / 2

end

end A368158.P11012332313742369709

/-!
# A368159: The n-th term in the trajectory of the n-th prime P under the 'Px+1' map.

The programs for A368159, there is no canonical definition to state claims against.
-/

/-! ## A368159.P12778604191639641239

`A368085(C(n+1+n+1-1, 2)+n+1)`
-/

namespace A368159.P12778604191639641239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368085 (Nat.choose ((n + 1 + (n + 1) : ℤ) - 1).toNat 2 + (n + 1))

end

end A368159.P12778604191639641239

/-! ## A368159.P15108319306188084123

`A368085((n+1)²+n²)`
-/

namespace A368159.P15108319306188084123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368085 ((n + 1) ^ 2 + n ^ 2)

end

end A368159.P15108319306188084123

/-! ## A368159.P8941040008923589522

`A368085(A001844(n))+A000007(3*n+4)`
-/

namespace A368159.P8941040008923589522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368085 (A001844 n).toNat + A000007 (3 * n + 4)

end

end A368159.P8941040008923589522

/-!
# A368160: For any n > 0, a(n) is obtained by interpreting the factorial base expansion of n in base m + 1, where m is the maximum digit in the factorial base expansion of n; a(0) = 0.

The programs for A368160, there is no canonical definition to state claims against.
-/

/-! ## A368160.P5977531860416649383

`A334878(A276076(n))`
-/

namespace A368160.P5977531860416649383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334878 (A276076 n).toNat

end

end A368160.P5977531860416649383

/-! ## A368160.P3719632113514992619

`A334878(A276086(n))`
-/

namespace A368160.P3719632113514992619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334878 (A276086 n).toNat

end

end A368160.P3719632113514992619

/-!
# A368161: a(n) = least perfect power m that is the sum of n consecutive perfect powers, or -1 if m does not exist.

The programs for A368161, there is no canonical definition to state claims against.
-/

/-! ## A368161.P1156519638658709687

`A143697(A064115(n+2)+A063748(n+2))`
-/

namespace A368161.P1156519638658709687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143697 (A064115 (n + 2) + A063748 (n + 2)).toNat

end

end A368161.P1156519638658709687

/-!
# A368164: Number of nondeterministic Dyck bridges of length 2*n.

The programs for A368164, the canonical program `A368164.P6703348240690476893` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368164 has offset 0).

The definition of A368164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368164.P9180020316205597009

`A089022(n)+∑{#}[n-1, C(2*n, #)*2^(2*n-#)]`
-/

namespace A368164.P9180020316205597009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089022 n : ℚ) + ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (2 * n) k : ℚ) * (2 : ℚ) ^ ((2 * n : ℤ) - (k : ℤ) : ℤ)

end

end A368164.P9180020316205597009

namespace A368164

/-- `A089022(n)+∑{#}[n-1, C(2*n, #)*2^(2*n-#)]` -/
def P9180020316205597009.Spec : Prop :=
  ∀ n, P9180020316205597009.a n = (A368164 n : ℚ)

end A368164

/-! ## A368164.P6703348240690476893

`A000244(2*n)-∑{#}[2*n-(n+1), C(2*n, #+n+1)*2^(2*n-(#+n))]`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A368164

/-- `A000244(2*n)-∑{#}[2*n-(n+1), C(2*n, #+n+1)*2^(2*n-(#+n))]` -/
def P6703348240690476893.Spec : Prop :=
  ∀ n, P6703348240690476893.a n = (A368164 n : ℚ)

end A368164

/-! ## A368164.P7892721381092437477

`A000244(n)²-∑{#}[2*n-(n+1), C(2*n, #+n+1)*2^(2*n-(#+n))]`
-/

namespace A368164.P7892721381092437477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n ^ 2 : ℚ) - ∑ k ∈ Finset.range (f1 n + 1).toNat, (Nat.choose (2 * n) (k + (n + 1)) : ℚ) * (2 : ℚ) ^ ((2 * n : ℤ) - (k + n : ℤ) : ℤ)

end

end A368164.P7892721381092437477

namespace A368164

/-- `A000244(n)²-∑{#}[2*n-(n+1), C(2*n, #+n+1)*2^(2*n-(#+n))]` -/
def P7892721381092437477.Spec : Prop :=
  ∀ n, P7892721381092437477.a n = (A368164 n : ℚ)

end A368164

/-!
# A368165: Expansion of e.g.f. -log(1 + x^2/2 * log(1 - x)).

The programs for A368165, there is no canonical definition to state claims against.
-/

/-! ## A368165.P6541641797780697736

`A199969(A351492(n)+1)`
-/

namespace A368165.P6541641797780697736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A351492 n + 1).toNat

end

end A368165.P6541641797780697736

/-! ## A368165.P11435246546937421964

`A351492(A151771(n)+n)`
-/

namespace A368165.P11435246546937421964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351492 (A151771 n + (n : ℤ)).toNat

end

end A368165.P11435246546937421964

/-! ## A368165.P8262108015290730897

`A351492(n)%A289427(n)`
-/

namespace A368165.P8262108015290730897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351492 n) (A289427 n)

end

end A368165.P8262108015290730897

/-! ## A368165.P946275007786321034

`A351492(A242534(n+1)+n)`
-/

namespace A368165.P946275007786321034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351492 (A242534 (n + 1) + (n : ℤ)).toNat

end

end A368165.P946275007786321034

/-! ## A368165.P7235028048815829540

`char[A327482(n+1)]*A351492(n)`
-/

namespace A368165.P7235028048815829540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327482 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A351492 n

end

end A368165.P7235028048815829540

/-!
# A368166: Expansion of e.g.f. -log(1 + x^3/6 * log(1 - x)).

The programs for A368166, there is no canonical definition to state claims against.
-/

/-! ## A368166.P10159307901810983538

`A351493(n)%A095062(3*n+2)`
-/

namespace A368166.P10159307901810983538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351493 n) (A095062 (3 * n + 2))

end

end A368166.P10159307901810983538

/-! ## A368166.P7201402835312011024

`A351493(n)-A209229(24*2^n-8)`
-/

namespace A368166.P7201402835312011024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351493 n - A209229 (24 * 2 ^ n - 8)

end

end A368166.P7201402835312011024

/-! ## A368166.P7217787337124944627

`A351493(n)-A000007(A000129(n))`
-/

namespace A368166.P7217787337124944627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351493 n - A000007 (A000129 n).toNat

end

end A368166.P7217787337124944627

/-! ## A368166.P1645661961135842419

`A351493(n)-A000035(A007283(n))`
-/

namespace A368166.P1645661961135842419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351493 n - A000035 (A007283 n).toNat

end

end A368166.P1645661961135842419

/-! ## A368166.P8234437505502563640

`A351493(n)-A010054(A018010(n))`
-/

namespace A368166.P8234437505502563640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351493 n - A010054 (A018010 n).toNat

end

end A368166.P8234437505502563640

/-!
# A368167: The largest unitary divisor of n that is a cubefull exponentially odd number (A335988).

The programs for A368167, the canonical program `A368167.P14958017841539973394` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368167 has offset 1).

The definition of A368167 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A350389, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368167.P14958017841539973394

`A350389(A057521(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A368167

/-- `A350389(A057521(n+1))` -/
def P14958017841539973394.Spec : Prop :=
  ∀ n, P14958017841539973394.a n = A368167 (n + 1)

theorem P14958017841539973394.correct : P14958017841539973394.Spec := by
  intro n
  simp only [A368167, Nat.add_sub_cancel]

end A368167

/-! ## A368167.P3987386807405908213

`A350389(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))`
-/

namespace A368167.P3987386807405908213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (∑ p ∈ Nat.primeFactors (f1 n), ((n + 1 : ℚ) / (p : ℚ)) ^ 2)))

end

end A368167.P3987386807405908213

namespace A368167

/-- `A350389(gcd(n+1, ∑{p}[n+1, ((n+1)/#)²]))` -/
def P3987386807405908213.Spec : Prop :=
  ∀ n, P3987386807405908213.a n = A368167 (n + 1)

end A368167

/-! ## A368167.P16469226436007602025

`gcd(((n+1)/∏{p}[n+1, #])², A350389(n+1))`
-/

namespace A368167.P16469226436007602025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) (A350389 (n + 1))

end

end A368167.P16469226436007602025

namespace A368167

/-- `gcd(((n+1)/∏{p}[n+1, #])², A350389(n+1))` -/
def P16469226436007602025.Spec : Prop :=
  ∀ n, (P16469226436007602025.a n : ℤ) = A368167 (n + 1)

end A368167

/-! ## A368167.P9793387308037944633

`A368540(A350389(n+1))`
-/

namespace A368167.P9793387308037944633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368540 (A350389 (n + 1)).toNat

end

end A368167.P9793387308037944633

namespace A368167

/-- `A368540(A350389(n+1))` -/
def P9793387308037944633.Spec : Prop :=
  ∀ n, P9793387308037944633.a n = A368167 (n + 1)

end A368167

/-! ## A368167.P13352041220467245106

`A350389(n+1)/A055231(n+1)`
-/

namespace A368167.P13352041220467245106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350389 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ)

end

end A368167.P13352041220467245106

namespace A368167

/-- `A350389(n+1)/A055231(n+1)` -/
def P13352041220467245106.Spec : Prop :=
  ∀ n, P13352041220467245106.a n = (A368167 (n + 1) : ℚ)

end A368167

/-! ## A368167.P711770747399067856

`A057521(n+1)/A350388(n+1)`
-/

namespace A368167.P711770747399067856
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) / (A350388 (n + 1) : ℚ)

end

end A368167.P711770747399067856

namespace A368167

/-- `A057521(n+1)/A350388(n+1)` -/
def P711770747399067856.Spec : Prop :=
  ∀ n, P711770747399067856.a n = (A368167 (n + 1) : ℚ)

end A368167

/-! ## A368167.P3071854177600770617

`A350389((n+1)/A360539(n+1))`
-/

namespace A368167.P3071854177600770617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A360539 (n + 1) : ℚ))).toNat

end

end A368167.P3071854177600770617

namespace A368167

/-- `A350389((n+1)/A360539(n+1))` -/
def P3071854177600770617.Spec : Prop :=
  ∀ n, P3071854177600770617.a n = A368167 (n + 1)

end A368167

/-! ## A368167.P11942306092612633403

`A350389((n+1)/A367168(n+1))`
-/

namespace A368167.P11942306092612633403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A367168 (n + 1) : ℚ))).toNat

end

end A368167.P11942306092612633403

namespace A368167

/-- `A350389((n+1)/A367168(n+1))` -/
def P11942306092612633403.Spec : Prop :=
  ∀ n, P11942306092612633403.a n = A368167 (n + 1)

end A368167

/-! ## A368167.P16782906001105410001

`A057521(n+1)/A071974(n+1)²`
-/

namespace A368167.P16782906001105410001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057521 (n + 1) : ℚ) / (A071974 (n + 1) ^ 2 : ℚ)

end

end A368167.P16782906001105410001

namespace A368167

/-- `A057521(n+1)/A071974(n+1)²` -/
def P16782906001105410001.Spec : Prop :=
  ∀ n, P16782906001105410001.a n = (A368167 (n + 1) : ℚ)

end A368167

/-! ## A368167.P4659014293089661731

`A350389(n+1)/A350389(A353897(n+1))`
-/

namespace A368167.P4659014293089661731
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350389 (n + 1) : ℚ) / (A350389 (A353897 (n + 1)).toNat : ℚ)

end

end A368167.P4659014293089661731

namespace A368167

/-- `A350389(n+1)/A350389(A353897(n+1))` -/
def P4659014293089661731.Spec : Prop :=
  ∀ n, P4659014293089661731.a n = (A368167 (n + 1) : ℚ)

end A368167

/-! ## A368167.P15249134350729138193

`A368170(2*A350389(n+1))`
-/

namespace A368167.P15249134350729138193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368170 (2 * A350389 (n + 1)).toNat

end

end A368167.P15249134350729138193

namespace A368167

/-- `A368170(2*A350389(n+1))` -/
def P15249134350729138193.Spec : Prop :=
  ∀ n, P15249134350729138193.a n = A368167 (n + 1)

end A368167

/-! ## A368167.P8451861867089883455

`A350389(A197863(n+1))`
-/

namespace A368167.P8451861867089883455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A197863 (n + 1)).toNat

end

end A368167.P8451861867089883455

namespace A368167

/-- `A350389(A197863(n+1))` -/
def P8451861867089883455.Spec : Prop :=
  ∀ n, P8451861867089883455.a n = A368167 (n + 1)

end A368167

/-! ## A368167.P17186906495104900799

`A350389((n+1)*A270418(n+1))`
-/

namespace A368167.P17186906495104900799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 ((n + 1 : ℤ) * A270418 (n + 1)).toNat

end

end A368167.P17186906495104900799

namespace A368167

/-- `A350389((n+1)*A270418(n+1))` -/
def P17186906495104900799.Spec : Prop :=
  ∀ n, P17186906495104900799.a n = A368167 (n + 1)

end A368167

/-! ## A368167.P14190584800189358633

`A350389((n+1)*A360539(n+1))`
-/

namespace A368167.P14190584800189358633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 ((n + 1 : ℤ) * A360539 (n + 1)).toNat

end

end A368167.P14190584800189358633

namespace A368167

/-- `A350389((n+1)*A360539(n+1))` -/
def P14190584800189358633.Spec : Prop :=
  ∀ n, P14190584800189358633.a n = A368167 (n + 1)

end A368167

/-! ## A368167.P3410599675916246440

`A350389((n+1)*A367168(n+1))`
-/

namespace A368167.P3410599675916246440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 ((n + 1 : ℤ) * A367168 (n + 1)).toNat

end

end A368167.P3410599675916246440

namespace A368167

/-- `A350389((n+1)*A367168(n+1))` -/
def P3410599675916246440.Spec : Prop :=
  ∀ n, P3410599675916246440.a n = A368167 (n + 1)

end A368167

/-! ## A368167.P16175160459655631830

`A350389((n+1)*A367514(n+1))`
-/

namespace A368167.P16175160459655631830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 ((n + 1 : ℤ) * A367514 (n + 1)).toNat

end

end A368167.P16175160459655631830

namespace A368167

/-- `A350389((n+1)*A367514(n+1))` -/
def P16175160459655631830.Spec : Prop :=
  ∀ n, P16175160459655631830.a n = A368167 (n + 1)

end A368167

/-! ## A368167.P12848862287810697613

`A350389(A055231(n+1)*A350389(n+1))`
-/

namespace A368167.P12848862287810697613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350389 (A055231 (n + 1) * A350389 (n + 1)).toNat

end

end A368167.P12848862287810697613

namespace A368167

/-- `A350389(A055231(n+1)*A350389(n+1))` -/
def P12848862287810697613.Spec : Prop :=
  ∀ n, P12848862287810697613.a n = A368167 (n + 1)

end A368167

/-! ## A368167.P3190569428123989725

`A071975(A071975(n+1)²*A062378(n+1))`
-/

namespace A368167.P3190569428123989725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071975 (A071975 (n + 1) ^ 2 * A062378 (n + 1)).toNat

end

end A368167.P3190569428123989725

namespace A368167

/-- `A071975(A071975(n+1)²*A062378(n+1))` -/
def P3190569428123989725.Spec : Prop :=
  ∀ n, P3190569428123989725.a n = A368167 (n + 1)

end A368167

/-! ## A368167.P8782380180463228450

`A350389(n+1)/A360541(A350389(n+1)²)`
-/

namespace A368167.P8782380180463228450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350389 (n + 1) : ℚ) / (A360541 (A350389 (n + 1) ^ 2).toNat : ℚ)

end

end A368167.P8782380180463228450

namespace A368167

/-- `A350389(n+1)/A360541(A350389(n+1)²)` -/
def P8782380180463228450.Spec : Prop :=
  ∀ n, P8782380180463228450.a n = (A368167 (n + 1) : ℚ)

end A368167

/-!
# A368168: The number of unitary divisors of n that are cubefull exponentially odd numbers (A335988).

The programs for A368168, the canonical program `A368168.P15292658510241182672` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368168 has offset 1).

The definition of A368168 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368167, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368168.P15292658510241182672

`A034444(A368167(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A368168

/-- `A034444(A368167(n+1))` -/
def P15292658510241182672.Spec : Prop :=
  ∀ n, P15292658510241182672.a n = A368168 (n + 1)

theorem P15292658510241182672.correct : P15292658510241182672.Spec := by
  intro n
  simp only [A368168, Nat.add_sub_cancel]

end A368168

/-! ## A368168.P10598006089203497485

`∏{e}[n+1, #%2+1]/∏{e}[n+1, ceil(2/#)]`
-/

namespace A368168.P10598006089203497485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p % 2 + 1) : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), ⌈2 / (Nat.factorization (f2 n) p : ℚ)⌉ : ℤ) : ℚ)

end

end A368168.P10598006089203497485

namespace A368168

/-- `∏{e}[n+1, #%2+1]/∏{e}[n+1, ceil(2/#)]` -/
def P10598006089203497485.Spec : Prop :=
  ∀ n, P10598006089203497485.a n = (A368168 (n + 1) : ℚ)

end A368168

/-! ## A368168.P3840747636828238854

`2^A295662(n+1)`
-/

namespace A368168.P3840747636828238854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A295662 (n + 1) : ℤ)

end

end A368168.P3840747636828238854

namespace A368168

/-- `2^A295662(n+1)` -/
def P3840747636828238854.Spec : Prop :=
  ∀ n, P3840747636828238854.a n = (A368168 (n + 1) : ℚ)

end A368168

/-! ## A368168.P2548653042187822192

`∏{e}[A055229(n+1)², #]`
-/

namespace A368168.P2548653042187822192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A368168.P2548653042187822192

namespace A368168

/-- `∏{e}[A055229(n+1)², #]` -/
def P2548653042187822192.Spec : Prop :=
  ∀ n, (P2548653042187822192.a n : ℤ) = A368168 (n + 1)

end A368168

/-! ## A368168.P8290312279234957000

`A288341(∑{e}[n+1, (#%#²)%2])`
-/

namespace A368168.P8290312279234957000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288341 (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p % Nat.factorization (f1 n) p ^ 2 % 2)

end

end A368168.P8290312279234957000

namespace A368168

/-- `A288341(∑{e}[n+1, (#%#²)%2])` -/
def P8290312279234957000.Spec : Prop :=
  ∀ n, P8290312279234957000.a n = A368168 (n + 1)

end A368168

/-! ## A368168.P12436571640291499763

`gcd(∏{e}[(n+1)/∏{p}[n+1, #], #], A359411(n+1))`
-/

namespace A368168.P12436571640291499763
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p : ℕ) : ℤ) (A359411 (n + 1))

end

end A368168.P12436571640291499763

namespace A368168

/-- `gcd(∏{e}[(n+1)/∏{p}[n+1, #], #], A359411(n+1))` -/
def P12436571640291499763.Spec : Prop :=
  ∀ n, (P12436571640291499763.a n : ℤ) = A368168 (n + 1)

end A368168

/-! ## A368168.P13653554801321906777

`A000005(A055229(n+1))`
-/

namespace A368168.P13653554801321906777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A055229 (n + 1)).toNat

end

end A368168.P13653554801321906777

namespace A368168

/-- `A000005(A055229(n+1))` -/
def P13653554801321906777.Spec : Prop :=
  ∀ n, P13653554801321906777.a n = A368168 (n + 1)

end A368168

/-! ## A368168.P12468540455116062017

`∑{d}[A055229(n+1), A055229(#)]`
-/

namespace A368168.P12468540455116062017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A055229 d

end

end A368168.P12468540455116062017

namespace A368168

/-- `∑{d}[A055229(n+1), A055229(#)]` -/
def P12468540455116062017.Spec : Prop :=
  ∀ n, P12468540455116062017.a n = A368168 (n + 1)

end A368168

/-! ## A368168.P3082145355692035128

`∑{d}[n+1, A008836(#)*A380922((n+1)/#)]`
-/

namespace A368168.P3082145355692035128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A380922 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A368168.P3082145355692035128

namespace A368168

/-- `∑{d}[n+1, A008836(#)*A380922((n+1)/#)]` -/
def P3082145355692035128.Spec : Prop :=
  ∀ n, P3082145355692035128.a n = A368168 (n + 1)

end A368168

/-! ## A368168.P4107841322982066427

`gcd(A007462(n), A366145(n+1))`
-/

namespace A368168.P4107841322982066427
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007462 n) (A366145 (n + 1))

end

end A368168.P4107841322982066427

namespace A368168

/-- `gcd(A007462(n), A366145(n+1))` -/
def P4107841322982066427.Spec : Prop :=
  ∀ n, (P4107841322982066427.a n : ℤ) = A368168 (n + 1)

end A368168

/-! ## A368168.P7550262988055458868

`and(A025172(n), A123391(n+1))+1`
-/

namespace A368168.P7550262988055458868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025172 n) (A123391 (n + 1)) + 1

end

end A368168.P7550262988055458868

namespace A368168

/-- `and(A025172(n), A123391(n+1))+1` -/
def P7550262988055458868.Spec : Prop :=
  ∀ n, P7550262988055458868.a n = A368168 (n + 1)

end A368168

/-! ## A368168.P8633209004568525482

`and(A025172(n), A275812(n+1))+1`
-/

namespace A368168.P8633209004568525482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025172 n) (A275812 (n + 1)) + 1

end

end A368168.P8633209004568525482

namespace A368168

/-- `and(A025172(n), A275812(n+1))+1` -/
def P8633209004568525482.Spec : Prop :=
  ∀ n, P8633209004568525482.a n = A368168 (n + 1)

end A368168

/-! ## A368168.P5839771839965217209

`and(A123391(n+1), A200376(n))+1`
-/

namespace A368168.P5839771839965217209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A123391 (n + 1)) (A200376 n) + 1

end

end A368168.P5839771839965217209

namespace A368168

/-- `and(A123391(n+1), A200376(n))+1` -/
def P5839771839965217209.Spec : Prop :=
  ∀ n, P5839771839965217209.a n = A368168 (n + 1)

end A368168

/-! ## A368168.P2360210285434941065

`gcd(A027649(n), A357669(n+1))`
-/

namespace A368168.P2360210285434941065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027649 n) (A357669 (n + 1))

end

end A368168.P2360210285434941065

namespace A368168

/-- `gcd(A027649(n), A357669(n+1))` -/
def P2360210285434941065.Spec : Prop :=
  ∀ n, (P2360210285434941065.a n : ℤ) = A368168 (n + 1)

end A368168

/-! ## A368168.P17178286804737062636

`gcd(A176752(n), A368169(n+1))`
-/

namespace A368168.P17178286804737062636
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A176752 n) (A368169 (n + 1))

end

end A368168.P17178286804737062636

namespace A368168

/-- `gcd(A176752(n), A368169(n+1))` -/
def P17178286804737062636.Spec : Prop :=
  ∀ n, (P17178286804737062636.a n : ℤ) = A368168 (n + 1)

end A368168

/-! ## A368168.P7793022580276408394

`A125072((n+1)²)+1`
-/

namespace A368168.P7793022580276408394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125072 ((n + 1) ^ 2) + 1

end

end A368168.P7793022580276408394

namespace A368168

/-- `A125072((n+1)²)+1` -/
def P7793022580276408394.Spec : Prop :=
  ∀ n, P7793022580276408394.a n = A368168 (n + 1)

end A368168

/-!
# A368169: The number of divisors of the largest unitary divisor of n that is a cubefull exponentially odd number (A368167).

The programs for A368169, the canonical program `A368169.P9952694221193690901` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368169 has offset 1).

The definition of A368169 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368167, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368169.P9952694221193690901

`A000005(A368167(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A368169

/-- `A000005(A368167(n+1))` -/
def P9952694221193690901.Spec : Prop :=
  ∀ n, P9952694221193690901.a n = A368169 (n + 1)

theorem P9952694221193690901.correct : P9952694221193690901.Spec := by
  intro n
  simp only [A368169, Nat.add_sub_cancel]

end A368169

/-! ## A368169.P15360201800328361947

`∏{e}[A368167(n+1), #+1]`
-/

namespace A368169.P15360201800328361947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A368169.P15360201800328361947

namespace A368169

/-- `∏{e}[A368167(n+1), #+1]` -/
def P15360201800328361947.Spec : Prop :=
  ∀ n, (P15360201800328361947.a n : ℤ) = A368169 (n + 1)

end A368169

/-! ## A368169.P18385487469084546081

`A368104(A350389(n+1))`
-/

namespace A368169.P18385487469084546081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368104 (A350389 (n + 1)).toNat

end

end A368169.P18385487469084546081

namespace A368169

/-- `A368104(A350389(n+1))` -/
def P18385487469084546081.Spec : Prop :=
  ∀ n, P18385487469084546081.a n = A368169 (n + 1)

end A368169

/-! ## A368169.P15775769022083744809

`A368168(n+1)*A401088(n+1)`
-/

namespace A368169.P15775769022083744809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368168 (n + 1) * A401088 (n + 1)

end

end A368169.P15775769022083744809

namespace A368169

/-- `A368168(n+1)*A401088(n+1)` -/
def P15775769022083744809.Spec : Prop :=
  ∀ n, P15775769022083744809.a n = A368169 (n + 1)

end A368169

/-! ## A368169.P3431629790149689668

`A365402(n+1)/A056671(n+1)`
-/

namespace A368169.P3431629790149689668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A365402 (n + 1) : ℚ) / (A056671 (n + 1) : ℚ)

end

end A368169.P3431629790149689668

namespace A368169

/-- `A365402(n+1)/A056671(n+1)` -/
def P3431629790149689668.Spec : Prop :=
  ∀ n, P3431629790149689668.a n = (A368169 (n + 1) : ℚ)

end A368169

/-! ## A368169.P2042002292901366762

`A357669(n+1)/A365401(n+1)`
-/

namespace A368169.P2042002292901366762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A357669 (n + 1) : ℚ) / (A365401 (n + 1) : ℚ)

end

end A368169.P2042002292901366762

namespace A368169

/-- `A357669(n+1)/A365401(n+1)` -/
def P2042002292901366762.Spec : Prop :=
  ∀ n, P2042002292901366762.a n = (A368169 (n + 1) : ℚ)

end A368169

/-! ## A368169.P8035721928831076142

`A365402((n+1)/A367168(n+1))`
-/

namespace A368169.P8035721928831076142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365402 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A367168 (n + 1) : ℚ))).toNat

end

end A368169.P8035721928831076142

namespace A368169

/-- `A365402((n+1)/A367168(n+1))` -/
def P8035721928831076142.Spec : Prop :=
  ∀ n, P8035721928831076142.a n = A368169 (n + 1)

end A368169

/-! ## A368169.P6092773219838885695

`A368104(n+1)/A370080(n+1)`
-/

namespace A368169.P6092773219838885695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368104 (n + 1) : ℚ) / (A370080 (n + 1) : ℚ)

end

end A368169.P6092773219838885695

namespace A368169

/-- `A368104(n+1)/A370080(n+1)` -/
def P6092773219838885695.Spec : Prop :=
  ∀ n, P6092773219838885695.a n = (A368169 (n + 1) : ℚ)

end A368169

/-! ## A368169.P1573878452230200398

`gcd(A365402(n+1), A369716(n+1))`
-/

namespace A368169.P1573878452230200398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A365402 (n + 1)) (A369716 (n + 1))

end

end A368169.P1573878452230200398

namespace A368169

/-- `gcd(A365402(n+1), A369716(n+1))` -/
def P1573878452230200398.Spec : Prop :=
  ∀ n, (P1573878452230200398.a n : ℤ) = A368169 (n + 1)

end A368169

/-! ## A368169.P11294599404612146005

`A368172(2*A368167(n+1))`
-/

namespace A368169.P11294599404612146005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368172 (2 * A368167 (n + 1)).toNat

end

end A368169.P11294599404612146005

namespace A368169

/-- `A368172(2*A368167(n+1))` -/
def P11294599404612146005.Spec : Prop :=
  ∀ n, P11294599404612146005.a n = A368169 (n + 1)

end A368169

/-! ## A368169.P5168450463264853851

`gcd(A005051(n), A366145(n+1))`
-/

namespace A368169.P5168450463264853851
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005051 n) (A366145 (n + 1))

end

end A368169.P5168450463264853851

namespace A368169

/-- `gcd(A005051(n), A366145(n+1))` -/
def P5168450463264853851.Spec : Prop :=
  ∀ n, (P5168450463264853851.a n : ℤ) = A368169 (n + 1)

end A368169

/-! ## A368169.P7637360442400674047

`A067132(A000312(A375032(n+1)))`
-/

namespace A368169.P7637360442400674047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067132 (A000312 (A375032 (n + 1)).toNat).toNat

end

end A368169.P7637360442400674047

namespace A368169

/-- `A067132(A000312(A375032(n+1)))` -/
def P7637360442400674047.Spec : Prop :=
  ∀ n, P7637360442400674047.a n = A368169 (n + 1)

end A368169

/-! ## A368169.P18294534540837866219

`A365402((n+1)*A367168(n+1))`
-/

namespace A368169.P18294534540837866219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365402 ((n + 1 : ℤ) * A367168 (n + 1)).toNat

end

end A368169.P18294534540837866219

namespace A368169

/-- `A365402((n+1)*A367168(n+1))` -/
def P18294534540837866219.Spec : Prop :=
  ∀ n, P18294534540837866219.a n = A368169 (n + 1)

end A368169

/-! ## A368169.P4531704187640621164

`A365402((n+1)*A367514(n+1))`
-/

namespace A368169.P4531704187640621164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365402 ((n + 1 : ℤ) * A367514 (n + 1)).toNat

end

end A368169.P4531704187640621164

namespace A368169

/-- `A365402((n+1)*A367514(n+1))` -/
def P4531704187640621164.Spec : Prop :=
  ∀ n, P4531704187640621164.a n = A368169 (n + 1)

end A368169

/-!
# A368170: The largest cubefull exponentially odd divisor of n.

The programs for A368170, the canonical program `A368170.P17133771726429753802` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368170 has offset 1).

The definition of A368170 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A368170.P11801168226175429975

`(n+1)/A368171(n+1)`
-/

namespace A368170.P11801168226175429975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368171 (n + 1) : ℚ)

end

end A368170.P11801168226175429975

namespace A368170

/-- `(n+1)/A368171(n+1)` -/
def P11801168226175429975.Spec : Prop :=
  ∀ n, P11801168226175429975.a n = (A368170 (n + 1) : ℚ)

end A368170

/-! ## A368170.P1470037618836438938

`A057521(((n+1)/∏{p}[n+1, #^val(n+1, #²)])²/∏{p}[n+1, #])`
-/

namespace A368170.P1470037618836438938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057521 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ)) ^ 2 / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ))).toNat

end

end A368170.P1470037618836438938

namespace A368170

/-- `A057521(((n+1)/∏{p}[n+1, #^val(n+1, #²)])²/∏{p}[n+1, #])` -/
def P1470037618836438938.Spec : Prop :=
  ∀ n, P1470037618836438938.a n = A368170 (n + 1)

end A368170

/-! ## A368170.P17133771726429753802

`A057521(A350390(n+1))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A368170

/-- `A057521(A350390(n+1))` -/
def P17133771726429753802.Spec : Prop :=
  ∀ n, P17133771726429753802.a n = A368170 (n + 1)

theorem P17133771726429753802.correct : P17133771726429753802.Spec := by
  intro n
  simp only [A368170, Nat.add_sub_cancel]

end A368170

/-! ## A368170.P3442294360750229433

`A390371(A057521(n+1))`
-/

namespace A368170.P3442294360750229433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390371 (A057521 (n + 1)).toNat

end

end A368170.P3442294360750229433

namespace A368170

/-- `A390371(A057521(n+1))` -/
def P3442294360750229433.Spec : Prop :=
  ∀ n, P3442294360750229433.a n = A368170 (n + 1)

end A368170

/-! ## A368170.P1162725888132738591

`A390371(A360540(n+1))`
-/

namespace A368170.P1162725888132738591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390371 (A360540 (n + 1)).toNat

end

end A368170.P1162725888132738591

namespace A368170

/-- `A390371(A360540(n+1))` -/
def P1162725888132738591.Spec : Prop :=
  ∀ n, P1162725888132738591.a n = A368170 (n + 1)

end A368170

/-! ## A368170.P4326694436937510551

`A011264(A295657(n+1)²)`
-/

namespace A368170.P4326694436937510551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011264 (A295657 (n + 1) ^ 2).toNat

end

end A368170.P4326694436937510551

namespace A368170

/-- `A011264(A295657(n+1)²)` -/
def P4326694436937510551.Spec : Prop :=
  ∀ n, P4326694436937510551.a n = A368170 (n + 1)

end A368170

/-! ## A368170.P13641702613104002920

`A390371(n+1)/A055231(n+1)`
-/

namespace A368170.P13641702613104002920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A390371 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ)

end

end A368170.P13641702613104002920

namespace A368170

/-- `A390371(n+1)/A055231(n+1)` -/
def P13641702613104002920.Spec : Prop :=
  ∀ n, P13641702613104002920.a n = (A368170 (n + 1) : ℚ)

end A368170

/-! ## A368170.P17680101639187637617

`gcd(A011262(n+1), A360540(n+1))`
-/

namespace A368170.P17680101639187637617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011262 (n + 1)) (A360540 (n + 1))

end

end A368170.P17680101639187637617

namespace A368170

/-- `gcd(A011262(n+1), A360540(n+1))` -/
def P17680101639187637617.Spec : Prop :=
  ∀ n, (P17680101639187637617.a n : ℤ) = A368170 (n + 1)

end A368170

/-! ## A368170.P3451105351686938060

`A350390(n+1)/A055231(A366765(n+1))`
-/

namespace A368170.P3451105351686938060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350390 (n + 1) : ℚ) / (A055231 (A366765 (n + 1)).toNat : ℚ)

end

end A368170.P3451105351686938060

namespace A368170

/-- `A350390(n+1)/A055231(A366765(n+1))` -/
def P3451105351686938060.Spec : Prop :=
  ∀ n, P3451105351686938060.a n = (A368170 (n + 1) : ℚ)

end A368170

/-! ## A368170.P8195281393741052506

`A356191(A102631(n+1)/A356191(n+1))`
-/

namespace A368170.P8195281393741052506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (SequenceMachineLib.roundAway ((A102631 (n + 1) : ℚ) / (A356191 (n + 1) : ℚ))).toNat

end

end A368170.P8195281393741052506

namespace A368170

/-- `A356191(A102631(n+1)/A356191(n+1))` -/
def P8195281393741052506.Spec : Prop :=
  ∀ n, P8195281393741052506.a n = A368170 (n + 1)

end A368170

/-! ## A368170.P18180998807352702208

`A295657(n+1)*A355261(A295657(n+1)²)`
-/

namespace A368170.P18180998807352702208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (n + 1) * A355261 (A295657 (n + 1) ^ 2).toNat

end

end A368170.P18180998807352702208

namespace A368170

/-- `A295657(n+1)*A355261(A295657(n+1)²)` -/
def P18180998807352702208.Spec : Prop :=
  ∀ n, P18180998807352702208.a n = A368170 (n + 1)

end A368170

/-! ## A368170.P12217828626663362465

`A355261(A295657(n+1)²²)`
-/

namespace A368170.P12217828626663362465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355261 ((A295657 (n + 1) ^ 2) ^ 2).toNat

end

end A368170.P12217828626663362465

namespace A368170

/-- `A355261(A295657(n+1)²²)` -/
def P12217828626663362465.Spec : Prop :=
  ∀ n, P12217828626663362465.a n = A368170 (n + 1)

end A368170

/-! ## A368170.P15600879760593612760

`A390371(A053143(n+1))`
-/

namespace A368170.P15600879760593612760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390371 (A053143 (n + 1)).toNat

end

end A368170.P15600879760593612760

namespace A368170

/-- `A390371(A053143(n+1))` -/
def P15600879760593612760.Spec : Prop :=
  ∀ n, P15600879760593612760.a n = A368170 (n + 1)

end A368170

/-! ## A368170.P7812434145323756037

`A390371(A197863(n+1))`
-/

namespace A368170.P7812434145323756037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390371 (A197863 (n + 1)).toNat

end

end A368170.P7812434145323756037

namespace A368170

/-- `A390371(A197863(n+1))` -/
def P7812434145323756037.Spec : Prop :=
  ∀ n, P7812434145323756037.a n = A368170 (n + 1)

end A368170

/-! ## A368170.P9795335128842457621

`A366765(A350390(n+1)²)/A350390(n+1)`
-/

namespace A368170.P9795335128842457621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366765 (A350390 (n + 1) ^ 2).toNat : ℚ) / (A350390 (n + 1) : ℚ)

end

end A368170.P9795335128842457621

namespace A368170

/-- `A366765(A350390(n+1)²)/A350390(n+1)` -/
def P9795335128842457621.Spec : Prop :=
  ∀ n, P9795335128842457621.a n = (A368170 (n + 1) : ℚ)

end A368170

/-!
# A368171: a(n) is the smallest divisor d of n such that n/d is a cubefull exponentially odd number (A335988).

The programs for A368171, the canonical program `A368171.P3649920215832031940` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368171 has offset 1).

The definition of A368171 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368170, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368171.P3649920215832031940

`(n+1)/A368170(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A368171

/-- `(n+1)/A368170(n+1)` -/
def P3649920215832031940.Spec : Prop :=
  ∀ n, P3649920215832031940.a n = (A368171 (n + 1) : ℚ)

end A368171

/-! ## A368171.P11670106236936905549

`(n+1)/A057521(A350390(n+1))`
-/

namespace A368171.P11670106236936905549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057521 (A350390 (n + 1)).toNat : ℚ)

end

end A368171.P11670106236936905549

namespace A368171

/-- `(n+1)/A057521(A350390(n+1))` -/
def P11670106236936905549.Spec : Prop :=
  ∀ n, P11670106236936905549.a n = (A368171 (n + 1) : ℚ)

end A368171

/-! ## A368171.P5011244065225315835

`A197863(n+1)/A390371(n+1)`
-/

namespace A368171.P5011244065225315835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) : ℚ) / (A390371 (n + 1) : ℚ)

end

end A368171.P5011244065225315835

namespace A368171

/-- `A197863(n+1)/A390371(n+1)` -/
def P5011244065225315835.Spec : Prop :=
  ∀ n, P5011244065225315835.a n = (A368171 (n + 1) : ℚ)

end A368171

/-! ## A368171.P13603266751985836435

`lcm(A336643(n+1), A360539(n+1))`
-/

namespace A368171.P13603266751985836435
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A336643 (n + 1)) (A360539 (n + 1))

end

end A368171.P13603266751985836435

namespace A368171

/-- `lcm(A336643(n+1), A360539(n+1))` -/
def P13603266751985836435.Spec : Prop :=
  ∀ n, (P13603266751985836435.a n : ℤ) = A368171 (n + 1)

end A368171

/-! ## A368171.P1090863508485129314

`A355261(n+1)/A355261(A295657(n+1)²)`
-/

namespace A368171.P1090863508485129314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A355261 (n + 1) : ℚ) / (A355261 (A295657 (n + 1) ^ 2).toNat : ℚ)

end

end A368171.P1090863508485129314

namespace A368171

/-- `A355261(n+1)/A355261(A295657(n+1)²)` -/
def P1090863508485129314.Spec : Prop :=
  ∀ n, P1090863508485129314.a n = (A368171 (n + 1) : ℚ)

end A368171

/-! ## A368171.P17463985854570808334

`A336643(n+1)*A336643(A360539(n+1)²)`
-/

namespace A368171.P17463985854570808334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336643 (n + 1) * A336643 (A360539 (n + 1) ^ 2).toNat

end

end A368171.P17463985854570808334

namespace A368171

/-- `A336643(n+1)*A336643(A360539(n+1)²)` -/
def P17463985854570808334.Spec : Prop :=
  ∀ n, P17463985854570808334.a n = A368171 (n + 1)

end A368171

/-!
# A368172: The number of divisors of the largest cubefull exponentially odd divisor of n (A368170).

The programs for A368172, the canonical program `A368172.P14008522485894596196` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368172 has offset 1).

The definition of A368172 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A368170, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A368172.P14008522485894596196

`A000005(A368170(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A368172

/-- `A000005(A368170(n+1))` -/
def P14008522485894596196.Spec : Prop :=
  ∀ n, P14008522485894596196.a n = A368172 (n + 1)

theorem P14008522485894596196.correct : P14008522485894596196.Spec := by
  intro n
  simp only [A368172, Nat.add_sub_cancel]

end A368172

/-! ## A368172.P15923969414234610920

`A357669(A350390(n+1))`
-/

namespace A368172.P15923969414234610920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357669 (A350390 (n + 1)).toNat

end

end A368172.P15923969414234610920

namespace A368172

/-- `A357669(A350390(n+1))` -/
def P15923969414234610920.Spec : Prop :=
  ∀ n, P15923969414234610920.a n = A368172 (n + 1)

end A368172

/-! ## A368172.P8770771171490588274

`A368104(A366765(n+1))`
-/

namespace A368172.P8770771171490588274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368104 (A366765 (n + 1)).toNat

end

end A368172.P8770771171490588274

namespace A368172

/-- `A368104(A366765(n+1))` -/
def P8770771171490588274.Spec : Prop :=
  ∀ n, P8770771171490588274.a n = A368172 (n + 1)

end A368172

/-! ## A368172.P4167666603619871638

`A325837(n+1)*A368248(n+1)`
-/

namespace A368172.P4167666603619871638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325837 (n + 1) * A368248 (n + 1)

end

end A368172.P4167666603619871638

namespace A368172

/-- `A325837(n+1)*A368248(n+1)` -/
def P4167666603619871638.Spec : Prop :=
  ∀ n, P4167666603619871638.a n = A368172 (n + 1)

end A368172

/-! ## A368172.P11651700790882500184

`A286324(n+1)/A365498(n+1)`
-/

namespace A368172.P11651700790882500184
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A286324 (n + 1) : ℚ) / (A365498 (n + 1) : ℚ)

end

end A368172.P11651700790882500184

namespace A368172

/-- `A286324(n+1)/A365498(n+1)` -/
def P11651700790882500184.Spec : Prop :=
  ∀ n, P11651700790882500184.a n = (A368172 (n + 1) : ℚ)

end A368172

/-! ## A368172.P3372637405339334783

`A368169((n+1)/A368171(n+1))`
-/

namespace A368172.P3372637405339334783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368169 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A368171 (n + 1) : ℚ))).toNat

end

end A368172.P3372637405339334783

namespace A368172

/-- `A368169((n+1)/A368171(n+1))` -/
def P3372637405339334783.Spec : Prop :=
  ∀ n, P3372637405339334783.a n = A368172 (n + 1)

end A368172

/-! ## A368172.P2695137342617000722

`A368104(n+1)/A368885(n+1)`
-/

namespace A368172.P2695137342617000722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A368104 (n + 1) : ℚ) / (A368885 (n + 1) : ℚ)

end

end A368172.P2695137342617000722

namespace A368172

/-- `A368104(n+1)/A368885(n+1)` -/
def P2695137342617000722.Spec : Prop :=
  ∀ n, P2695137342617000722.a n = (A368172 (n + 1) : ℚ)

end A368172

/-! ## A368172.P9344632193371799602

`A286324(A368170(2*n+1-n))`
-/

namespace A368172.P9344632193371799602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286324 (A368170 (2 * n + 1 - n)).toNat

end

end A368172.P9344632193371799602

namespace A368172

/-- `A286324(A368170(2*n+1-n))` -/
def P9344632193371799602.Spec : Prop :=
  ∀ n, P9344632193371799602.a n = A368172 (n + 1)

end A368172

/-! ## A368172.P2728449932818505815

`A365552(A057521(A350390(n+1))²)`
-/

namespace A368172.P2728449932818505815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365552 (A057521 (A350390 (n + 1)).toNat ^ 2).toNat

end

end A368172.P2728449932818505815

namespace A368172

/-- `A365552(A057521(A350390(n+1))²)` -/
def P2728449932818505815.Spec : Prop :=
  ∀ n, P2728449932818505815.a n = A368172 (n + 1)

end A368172

/-! ## A368172.P17884679464893403992

`A365173(A368170(A368170(n+1)²))`
-/

namespace A368172.P17884679464893403992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365173 (A368170 (A368170 (n + 1) ^ 2).toNat).toNat

end

end A368172.P17884679464893403992

namespace A368172

/-- `A365173(A368170(A368170(n+1)²))` -/
def P17884679464893403992.Spec : Prop :=
  ∀ n, P17884679464893403992.a n = A368172 (n + 1)

end A368172

/-! ## A368172.P11952167408970467171

`A366902(A350390(n+1)²)`
-/

namespace A368172.P11952167408970467171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366902 (A350390 (n + 1) ^ 2).toNat

end

end A368172.P11952167408970467171

namespace A368172

/-- `A366902(A350390(n+1)²)` -/
def P11952167408970467171.Spec : Prop :=
  ∀ n, P11952167408970467171.a n = A368172 (n + 1)

end A368172

/-! ## A368172.P5271308978135569488

`A365552(A350390(A350390(n+1)²))`
-/

namespace A368172.P5271308978135569488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365552 (A350390 (A350390 (n + 1) ^ 2).toNat).toNat

end

end A368172.P5271308978135569488

namespace A368172

/-- `A365552(A350390(A350390(n+1)²))` -/
def P5271308978135569488.Spec : Prop :=
  ∀ n, P5271308978135569488.a n = A368172 (n + 1)

end A368172

/-! ## A368172.P1714785508736239274

`A368977(A390371(A350390(n+1)²))`
-/

namespace A368172.P1714785508736239274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368977 (A390371 (A350390 (n + 1) ^ 2).toNat).toNat

end

end A368172.P1714785508736239274

namespace A368172

/-- `A368977(A390371(A350390(n+1)²))` -/
def P1714785508736239274.Spec : Prop :=
  ∀ n, P1714785508736239274.a n = A368172 (n + 1)

end A368172

/-!
# A368173: Expansion of e.g.f. -log(1 - x^2/2 * (exp(x) - 1)).

The programs for A368173, there is no canonical definition to state claims against.
-/

/-! ## A368173.P13984367873773969535

`A199969(A354000(n)+1)`
-/

namespace A368173.P13984367873773969535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199969 (A354000 n + 1).toNat

end

end A368173.P13984367873773969535

/-! ## A368173.P5074263709205135073

`A354000(A151771(n)+n)`
-/

namespace A368173.P5074263709205135073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354000 (A151771 n + (n : ℤ)).toNat

end

end A368173.P5074263709205135073

/-! ## A368173.P96320736572857030

`A354000(n)-A010894(∑[n])`
-/

namespace A368173.P96320736572857030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354000 n - A010894 (∑ j ∈ Finset.range (n + 1), f1 j + 21)

end

end A368173.P96320736572857030

/-! ## A368173.P17059469553707281944

`A355650(∑[n+3])-A010894(∑[n])`
-/

namespace A368173.P17059469553707281944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355650 (∑ j ∈ Finset.range (n + 1), f1 j) - A010894 (∑ j ∈ Finset.range (n + 1), f2 j + 21)

end

end A368173.P17059469553707281944

/-! ## A368173.P658575452929969115

`A354000(n)-A000122(A035499(n))`
-/

namespace A368173.P658575452929969115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354000 n - A000122 (A035499 n).toNat

end

end A368173.P658575452929969115

/-!
# A368174: Expansion of e.g.f. -log(1 - x^3/6 * (exp(x) - 1)).

The programs for A368174, there is no canonical definition to state claims against.
-/

/-! ## A368174.P9799971201845971722

`char[A226340(n+1)]*A354001(n)`
-/

namespace A368174.P9799971201845971722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226340 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A354001 n

end

end A368174.P9799971201845971722

/-! ## A368174.P14595254322028379304

`A354001(n)+A121373(A245123(n))`
-/

namespace A368174.P14595254322028379304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354001 n + A121373 (A245123 (n + 11)).toNat

end

end A368174.P14595254322028379304

/-! ## A368174.P310137287974121159

`A354001(n)-A000007(A237044(n))`
-/

namespace A368174.P310137287974121159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354001 n - A000007 (A237044 n).toNat

end

end A368174.P310137287974121159

/-! ## A368174.P12972494067045622884

`A354001(n)-A193356(A087957(n))`
-/

namespace A368174.P12972494067045622884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354001 n - A193356 (A087957 n).toNat

end

end A368174.P12972494067045622884

/-! ## A368174.P12801167118879434783

`A354001(n)-A333755(A000217(n))`
-/

namespace A368174.P12801167118879434783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354001 n - A333755 (A000217 n).toNat

end

end A368174.P12801167118879434783

/-!
# A368175: Square array read by ascending antidiagonals: T(n,k) = Sum_{i=ceiling((k-n)/2)..floor((k+n-1)/2)} binomial(k,i), with n >= 1, k >= 0.

The programs for A368175, there is no canonical definition to state claims against.
-/

/-! ## A368175.P7591158800099508019

`A336737(2*A008279(n))`
-/

namespace A368175.P7591158800099508019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336737 (2 * A008279 n).toNat

end

end A368175.P7591158800099508019

/-! ## A368175.P8314895018824212228

`A029931(A106580(n)%A358522(2*n+5))`
-/

namespace A368175.P8314895018824212228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (Int.tmod (A106580 n) (A358522 (2 * n + 5))).toNat

end

end A368175.P8314895018824212228

/-! ## A368175.P14773009976188854868

`A029931(A106580(n))%A349495(3*n+2)`
-/

namespace A368175.P14773009976188854868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029931 (A106580 n).toNat) (A349495 (3 * n + 2))

end

end A368175.P14773009976188854868

/-! ## A368175.P6314552301361051309

`A195079(A297628(n))`
-/

namespace A368175.P6314552301361051309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195079 (A297628 n).toNat

end

end A368175.P6314552301361051309

/-! ## A368175.P15051178811994570792

`A070080(A001498(n)%A335371(n+4))`
-/

namespace A368175.P15051178811994570792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070080 (Int.tmod (A001498 n) (A335371 (n + 4))).toNat

end

end A368175.P15051178811994570792

/-!
# A368176: Expansion of e.g.f. -log(1 - x * exp(2*x)).

The programs for A368176, there is no canonical definition to state claims against.
-/

/-! ## A368176.P8439824908562100415

`A058128(n+1)-A085632(A119620(2*n))`
-/

namespace A368176.P8439824908562100415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058128 (n + 1) - A085632 (A119620 (2 * n)).toNat

end

end A368176.P8439824908562100415

/-!
# A368177: Expansion of e.g.f. -log(1 - x * exp(3*x)).

The programs for A368177, there is no canonical definition to state claims against.
-/

/-! ## A368177.P15946831721033630561

`A047273(∑[A209923(n+1)])`
-/

namespace A368177.P15946831721033630561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209923 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A368177.P15946831721033630561

/-!
# A368178: Number of ordered trees with n+1 leaves, no node of outdegree 1, and having as many leaves marked as the number of nodes of outdegree greater than 1.

The programs for A368178, there is no canonical definition to state claims against.
-/

/-! ## A368178.P864426374217277697

`A361717(n+1)/(n+1)`
-/

namespace A368178.P864426374217277697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361717 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A368178.P864426374217277697

/-! ## A368178.P11680735713517550676

`A337192((n+1)²)/(n+1)`
-/

namespace A368178.P11680735713517550676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337192 ((n + 1) ^ 2) : ℚ) / (n + 1 : ℚ)

end

end A368178.P11680735713517550676

/-!
# A368179: Square array read by ascending antidiagonals: row n is the trajectory of n under the A006368 map.

The programs for A368179, there is no canonical definition to state claims against.
-/

/-! ## A368179.P9959647345146023720

`xor(A122203(n), A342019(A132610(n)))`
-/

namespace A368179.P9959647345146023720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A122203 n) (A342019 (A132610 n).toNat)

end

end A368179.P9959647345146023720

/-! ## A368179.P13416528027043397698

`A130354(A185284(2*n+1)+A122283(n))`
-/

namespace A368179.P13416528027043397698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130354 (A185284 (2 * n + 1) + A122283 n).toNat

end

end A368179.P13416528027043397698

/-! ## A368179.P8837691493775131607

`A368227(n)+A322583(A245826(2*n+5))`
-/

namespace A368179.P8837691493775131607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368227 n + A322583 (A245826 (2 * n + 5)).toNat

end

end A368179.P8837691493775131607

/-! ## A368179.P15112012555849680222

`A122203(n)+A014856(A003242(n))`
-/

namespace A368179.P15112012555849680222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122203 n + A014856 (A003242 n).toNat

end

end A368179.P15112012555849680222

/-! ## A368179.P11448928778794024891

`A122287(n)-A241710(A030272(n))`
-/

namespace A368179.P11448928778794024891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122287 n - A241710 (A030272 n).toNat

end

end A368179.P11448928778794024891

/-!
# A368180: Main diagonal of A368179: the n-th term in the trajectory of n under the A006368 map.

The programs for A368180, there is no canonical definition to state claims against.
-/

/-! ## A368180.P6540958767072598841

`A368179(C(n+n+1, 2)+n)`
-/

namespace A368180.P6540958767072598841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368179 (Nat.choose (n + n + 1) 2 + n)

end

end A368180.P6540958767072598841

/-! ## A368180.P17977467138739935337

`A368179(∑[4*n])`
-/

namespace A368180.P17977467138739935337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368179 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A368180.P17977467138739935337

/-! ## A368180.P15917061178395574536

`A368179(2*(n²+n))%A094535(n)`
-/

namespace A368180.P15917061178395574536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368179 (2 * (n ^ 2 + n))) (A094535 n)

end

end A368180.P15917061178395574536

/-! ## A368180.P12764939286054315370

`A368179(A046092(n))%A299292(n)`
-/

namespace A368180.P12764939286054315370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368179 (A046092 n).toNat) (A299292 n)

end

end A368180.P12764939286054315370

/-! ## A368180.P4384563107577503399

`A368179(A046092(n))+A092092(3*(n+1))`
-/

namespace A368180.P4384563107577503399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368179 (A046092 n).toNat + A092092 (3 * (n + 1))

end

end A368180.P4384563107577503399

/-! ## A368180.P7719593135043266515

`A053632(A053632(n))*A368179(A046092(n))`
-/

namespace A368180.P7719593135043266515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053632 (A053632 n).toNat * A368179 (A046092 n).toNat

end

end A368180.P7719593135043266515

/-!
# A368183: Number of sets that can be obtained by choosing a different binary index of each binary index of n.

The programs for A368183, there is no canonical definition to state claims against.
-/

/-! ## A368183.P3549771767616409879

`gcd(A080101(A173102(n+1)), A367905(n))`
-/

namespace A368183.P3549771767616409879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A080101 (A173102 (n + 1)).toNat) (A367905 n)

end

end A368183.P3549771767616409879

/-!
# A368184: Least k such that there are exactly n ways to choose a set consisting of a different binary index of each binary index of k.

The programs for A368184, there is no canonical definition to state claims against.
-/

/-! ## A368184.P15028318904764584483

`A368185(A307807(3*n+1)+A122491(n))`
-/

namespace A368184.P15028318904764584483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368185 (A307807 (3 * n + 1) + A122491 n).toNat

end

end A368184.P15028318904764584483

/-!
# A368185: Sorted list of positions of first appearances in A368183 (number of sets that can be obtained by choosing a different binary index of each binary index).

The programs for A368185, there is no canonical definition to state claims against.
-/

/-! ## A368185.P10947957009802410087

`record[A368184(A141803(n+1))]`
-/

namespace A368185.P10947957009802410087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368184 (A141803 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368185.P10947957009802410087

/-! ## A368185.P15969740609344318462

`record[A368184(A302242(n+5))]`
-/

namespace A368185.P15969740609344318462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368184 (A302242 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A368185.P15969740609344318462

/-!
# A368186: Number of n-covers of an unlabeled n-set.

The programs for A368186, there is no canonical definition to state claims against.
-/

/-! ## A368186.P13332387898300724116

`A055130(A255047(n))`
-/

namespace A368186.P13332387898300724116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055130 (A255047 n).toNat

end

end A368186.P13332387898300724116

/-! ## A368186.P7723661026694443567

`A055130(A153010(n+1))`
-/

namespace A368186.P7723661026694443567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055130 (A153010 (n + 1)).toNat

end

end A368186.P7723661026694443567

/-! ## A368186.P3212969677128001165

`A055130(or(1, A000225(n)))`
-/

namespace A368186.P3212969677128001165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055130 (Int.lor 1 (A000225 n)).toNat

end

end A368186.P3212969677128001165

/-! ## A368186.P15192681520174384429

`A055130(A000225(A000007(n)+n))`
-/

namespace A368186.P15192681520174384429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055130 (A000225 (A000007 n + (n : ℤ)).toNat).toNat

end

end A368186.P15192681520174384429

/-! ## A368186.P6381918814500048267

`A055130(xor(A000007(n), A000225(n)))`
-/

namespace A368186.P6381918814500048267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055130 (Int.xor (A000007 n) (A000225 n)).toNat

end

end A368186.P6381918814500048267

/-!
# A368188: Number of (undirected) cycles in the n-Lucas cube graph.

The programs for A368188, there is no canonical definition to state claims against.
-/

/-! ## A368188.P9753849395269344096

`A292944(A195207(n)+A098531(n))`
-/

namespace A368188.P9753849395269344096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292944 (A195207 n + A098531 n).toNat

end

end A368188.P9753849395269344096

/-! ## A368188.P10171218435609971013

`A086865(A011782(n))-A003415(n)`
-/

namespace A368188.P10171218435609971013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086865 (A011782 n).toNat - A003415 n

end

end A368188.P10171218435609971013

/-!
# A368190: Number of (undirected) cycles in the n-Dorogovtsev-Goltsev-Mendes graph.

The programs for A368190, the canonical program `A368190.P2890947525502859852` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A368190 has offset 0).

The definition of A368190 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A368190.P2890947525502859852

`3*a(n-1)+A007018(n-1)^3` with `a(0)=0`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A368190

/-- `3*a(n-1)+A007018(n-1)^3` -/
def P2890947525502859852.Spec : Prop :=
  ∀ n, P2890947525502859852.a n = A368190 n

theorem P2890947525502859852.correct : P2890947525502859852.Spec := by
  intro n
  simp only [A368190]

end A368190

/-!
# A368193: Number of (undirected) cycles in the n X n camel graph.

The programs for A368193, there is no canonical definition to state claims against.
-/

/-! ## A368193.P1615006435603631371

`A326529(A153686(n+1)-A200652(3*n+2))`
-/

namespace A368193.P1615006435603631371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326529 (A153686 (n + 1) - A200652 (3 * n + 2)).toNat

end

end A368193.P1615006435603631371

/-! ## A368193.P294010052626679919

`A326529(A378274(3*n+1)+A359233(3*n+2))`
-/

namespace A368193.P294010052626679919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326529 (A378274 (3 * n + 1) + A359233 (3 * n + 2)).toNat

end

end A368193.P294010052626679919

/-!
# A368194: Irregular table T(n, k), n > 0, k = 1..A368195(n), read by rows: the n-th row lists the numbers that can be obtained by replacing any positive number without leading zeros, say m, appearing in the decimal expansion of n by one of the divisors of m.

The programs for A368194, there is no canonical definition to state claims against.
-/

/-! ## A368194.P2983141745178658151

`A027750(n+1)-A151795(A185238(n))`
-/

namespace A368194.P2983141745178658151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) - A151795 (A185238 n).toNat

end

end A368194.P2983141745178658151

/-! ## A368194.P4118280551344239515

`A027750(n+1)-A025469(A069532(n+1))`
-/

namespace A368194.P4118280551344239515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) - A025469 (A069532 (n + 1)).toNat

end

end A368194.P4118280551344239515

/-! ## A368194.P2302998666842903428

`A027750(n+1)-A069849(A046763(n+1))`
-/

namespace A368194.P2302998666842903428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) - A069849 (A046763 (n + 1)).toNat

end

end A368194.P2302998666842903428

/-! ## A368194.P13224784084461154628

`A027750(n+1)-A185284(A035441(n+1))`
-/

namespace A368194.P13224784084461154628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) - A185284 (A035441 (n + 1)).toNat

end

end A368194.P13224784084461154628

/-! ## A368194.P10334039227405330493

`A027750(n+1)-A054525(A031930(3*(n+1)))`
-/

namespace A368194.P10334039227405330493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027750 (n + 1) - A054525 (A031930 (3 * (n + 1))).toNat

end

end A368194.P10334039227405330493

/-!
# A368195: a(n) is the number of numbers that can be obtained by replacing any positive number without leading zeros, say m, appearing in the decimal expansion of n by one of the divisors of m.

The programs for A368195, there is no canonical definition to state claims against.
-/

/-! ## A368195.P16285457024543871549

`Δ[eq[1, A368194(n+1)]]`
-/

namespace A368195.P16285457024543871549
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368194 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A368195.P16285457024543871549

/-! ## A368195.P8894482052259001497

`A085982(A011782(n))+∏{e}[n+1, #+1]`
-/

namespace A368195.P8894482052259001497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085982 (A011782 n).toNat + ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ)

end

end A368195.P8894482052259001497

/-! ## A368195.P14179525693875489259

`A085982(A011782(n))+A000005(n+1)`
-/

namespace A368195.P14179525693875489259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085982 (A011782 n).toNat + A000005 (n + 1)

end

end A368195.P14179525693875489259

/-! ## A368195.P2714030801222586113

`A085982(A059529(n))+A000005(n+1)`
-/

namespace A368195.P2714030801222586113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085982 (A059529 n).toNat + A000005 (n + 1)

end

end A368195.P2714030801222586113

/-! ## A368195.P2669798165108398826

`A363806(A038269(n))+A000005(n+1)`
-/

namespace A368195.P2669798165108398826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363806 (A038269 n).toNat + A000005 (n + 1)

end

end A368195.P2669798165108398826

/-!
# A368198: a(n) gives the number of ways to go from n to 1 with steps consisting of replacing a positive number without leading zero, say m, appearing in the decimal expansion of a number, by a proper divisor of m.

The programs for A368198, there is no canonical definition to state claims against.
-/

/-! ## A368198.P9402815101268483590

`A260739(lt[A049820(n+1), 2*∑{digits}[n, #]])`
-/

namespace A368198.P9402815101268483590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A368198.P9402815101268483590

/-! ## A368198.P5103799776546857122

`A340988(A000041(n))+A002033(n)`
-/

namespace A368198.P5103799776546857122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A000041 n).toNat + 91) + A002033 n

end

end A368198.P5103799776546857122

/-! ## A368198.P10085261391610998385

`A342753(A121428(n))+A002033(n)`
-/

namespace A368198.P10085261391610998385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342753 (A121428 n).toNat + A002033 n

end

end A368198.P10085261391610998385

/-! ## A368198.P14360604451170804298

`A324417(A275972(n))+A002033(n)`
-/

namespace A368198.P14360604451170804298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324417 (A275972 n).toNat + A002033 n

end

end A368198.P14360604451170804298

/-! ## A368198.P10630415650498051638

`A338021(A351292(n+2))+A002033(n)`
-/

namespace A368198.P10630415650498051638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338021 (A351292 (n + 2)).toNat + A002033 n

end

end A368198.P10630415650498051638

/-!
# A368199: Number of times n appears as a term of A105774.

The programs for A368199, there is no canonical definition to state claims against.
-/

/-! ## A368199.P9542346936597269773

`C(2, abs(A255973(n)))`
-/

namespace A368199.P9542346936597269773
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 |A255973 n|.toNat

end

end A368199.P9542346936597269773

/-! ## A368199.P16177887383690421153

`A010872(∑[A120961(3*(n+1))])`
-/

namespace A368199.P16177887383690421153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120961 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A368199.P16177887383690421153

/-! ## A368199.P7862717449508471918

`A080425(A136911(n+2))`
-/

namespace A368199.P7862717449508471918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080425 (A136911 (n + 2)).toNat

end

end A368199.P7862717449508471918

/-! ## A368199.P57154190331391352

`A035188(A358730(n+1)+A136431(n+4))`
-/

namespace A368199.P57154190331391352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035188 (A358730 (n + 1) + A136431 (n + 4)).toNat

end

end A368199.P57154190331391352

/-! ## A368199.P15550459395626956419

`A287407(A353864(3*n)+A236104(3*n+2))`
-/

namespace A368199.P15550459395626956419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287407 (A353864 (3 * n) + A236104 (3 * n + 2)).toNat

end

end A368199.P15550459395626956419

