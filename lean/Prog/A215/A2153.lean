import SequenceMachineLib
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
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A215300: Number of solid standard Young tableaux of shape [[n,n-4],[4]].

The programs for A215300, there is no canonical definition to state claims against.
-/

/-! ## A215300.P12850691936803967098

`A214775(A167614(n+3)+1)`
-/

namespace A215300.P12850691936803967098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A167614 (n + 3) + 1).toNat

end

end A215300.P12850691936803967098

/-! ## A215300.P11959540926369957835

`A214775(A000124(n+4)+3)`
-/

namespace A215300.P11959540926369957835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A000124 (n + 4) + 3).toNat

end

end A215300.P11959540926369957835

/-! ## A215300.P2049010423244937466

`A214775(A000217(n+4)+4)`
-/

namespace A215300.P2049010423244937466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A000217 (n + 4) + 4).toNat

end

end A215300.P2049010423244937466

/-! ## A215300.P13173276173700517266

`A214775(A027379(n+2)+7)`
-/

namespace A215300.P13173276173700517266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A027379 (n + 2) + 7).toNat

end

end A215300.P13173276173700517266

/-! ## A215300.P16934252802417585412

`A214775(Δ[A026054(n+3)-n²])`
-/

namespace A215300.P16934252802417585412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3) - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (f1 (n + 1) - f1 n).toNat

end

end A215300.P16934252802417585412

/-! ## A215300.P8887708811497891980

`A214775(A052905(n+2))`
-/

namespace A215300.P8887708811497891980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A052905 (n + 2)).toNat

end

end A215300.P8887708811497891980

/-! ## A215300.P11749123081585043968

`A214775(Δ[A111396(n)]-2)`
-/

namespace A215300.P11749123081585043968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (f1 (n + 1) - f1 n - 2).toNat

end

end A215300.P11749123081585043968

/-! ## A215300.P6569532025325116360

`A214775(Δ[Δ[A022815(n+1)]])`
-/

namespace A215300.P6569532025325116360
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022815 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (f1 (n + 1) - f1 n).toNat

end

end A215300.P6569532025325116360

/-!
# A215301: Number of solid standard Young tableaux of shape [[n,n-5],[5]].

The programs for A215301, there is no canonical definition to state claims against.
-/

/-! ## A215301.P5071114907488758989

`A214775(A167499(n+4))`
-/

namespace A215301.P5071114907488758989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A167499 (n + 4)).toNat

end

end A215301.P5071114907488758989

/-! ## A215301.P9780309798537428796

`A214775(A000124(n+5)+4)`
-/

namespace A215301.P9780309798537428796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A000124 (n + 5) + 4).toNat

end

end A215301.P9780309798537428796

/-! ## A215301.P10645170715802673069

`A214775(A000217(n+5)+5)`
-/

namespace A215301.P10645170715802673069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A000217 (n + 5) + 5).toNat

end

end A215301.P10645170715802673069

/-! ## A215301.P7300595091487563257

`A214775(A055999(n+3))`
-/

namespace A215301.P7300595091487563257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A055999 (n + 3)).toNat

end

end A215301.P7300595091487563257

/-! ## A215301.P18070920660284165431

`A214775(Δ[A026054(n+3)])`
-/

namespace A215301.P18070920660284165431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (f1 (n + 1) - f1 n).toNat

end

end A215301.P18070920660284165431

/-!
# A215302: Primes congruent to {1, 2, 3, 4} mod 11.

The programs for A215302, the canonical program `A215302.P2678401142277637227` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215302 has offset 1).

The definition of A215302 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215302.P2678401142277637227

`∪[A141851(n+1), A215134(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215302

/-- `∪[A141851(n+1), A215134(n+1)]` -/
def P2678401142277637227.Spec : Prop :=
  ∀ n, (P2678401142277637227.a n : ℤ) = A215302 (n + 1)

theorem P2678401142277637227.correct : P2678401142277637227.Spec := by
  intro n
  simp only [A215302, Nat.add_sub_cancel]

end A215302

/-! ## A215302.P4356564669242150455

`∪[A141849(n+1), A215279(n+1)]`
-/

namespace A215302.P4356564669242150455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215302.P4356564669242150455

namespace A215302

/-- `∪[A141849(n+1), A215279(n+1)]` -/
def P4356564669242150455.Spec : Prop :=
  ∀ n, (P4356564669242150455.a n : ℤ) = A215302 (n + 1)

end A215302

/-! ## A215302.P3195819283183139231

`∪[A214888(n+1), A215163(n+1)]`
-/

namespace A215302.P3195819283183139231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215302.P3195819283183139231

namespace A215302

/-- `∪[A214888(n+1), A215163(n+1)]` -/
def P3195819283183139231.Spec : Prop :=
  ∀ n, (P3195819283183139231.a n : ℤ) = A215302 (n + 1)

end A215302

/-! ## A215302.P13472469050564398353

`∪[A215134(n+1), A215163(n+1)]`
-/

namespace A215302.P13472469050564398353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215302.P13472469050564398353

namespace A215302

/-- `∪[A215134(n+1), A215163(n+1)]` -/
def P13472469050564398353.Spec : Prop :=
  ∀ n, (P13472469050564398353.a n : ℤ) = A215302 (n + 1)

end A215302

/-! ## A215302.P13885657792009296157

`∪[A215134(n+1), A215279(n+1)]`
-/

namespace A215302.P13885657792009296157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215302.P13885657792009296157

namespace A215302

/-- `∪[A215134(n+1), A215279(n+1)]` -/
def P13885657792009296157.Spec : Prop :=
  ∀ n, (P13885657792009296157.a n : ℤ) = A215302 (n + 1)

end A215302

/-! ## A215302.P13408980070825333076

`∪[A215163(n+1), A215279(n+1)]`
-/

namespace A215302.P13408980070825333076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215302.P13408980070825333076

namespace A215302

/-- `∪[A215163(n+1), A215279(n+1)]` -/
def P13408980070825333076.Spec : Prop :=
  ∀ n, (P13408980070825333076.a n : ℤ) = A215302 (n + 1)

end A215302

/-! ## A215302.P17170609179630773584

`∪[A215279(n+1), A215390(n+1)]`
-/

namespace A215302.P17170609179630773584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215302.P17170609179630773584

namespace A215302

/-- `∪[A215279(n+1), A215390(n+1)]` -/
def P17170609179630773584.Spec : Prop :=
  ∀ n, (P17170609179630773584.a n : ℤ) = A215302 (n + 1)

end A215302

/-! ## A215302.P12051912617449353571

`∩[A215310(n+1), A215322(n+1)]`
-/

namespace A215302.P12051912617449353571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215302.P12051912617449353571

namespace A215302

/-- `∩[A215310(n+1), A215322(n+1)]` -/
def P12051912617449353571.Spec : Prop :=
  ∀ n, (P12051912617449353571.a n : ℤ) = A215302 (n + 1)

end A215302

/-! ## A215302.P5421959506558228179

`p?[A008589(floor(n/4))+n+1]`
-/

namespace A215302.P5421959506558228179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008589 ⌊(n : ℚ) / 4⌋.toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215302.P5421959506558228179

namespace A215302

/-- `p?[A008589(floor(n/4))+n+1]` -/
def P5421959506558228179.Spec : Prop :=
  ∀ n, P5421959506558228179.a n = A215302 (n + 1)

end A215302

/-! ## A215302.P14404710407717708725

`p?[A004443(A004777(n+1))+A004273(n)]`
-/

namespace A215302.P14404710407717708725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 (A004777 (n + 1)).toNat + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215302.P14404710407717708725

namespace A215302

/-- `p?[A004443(A004777(n+1))+A004273(n)]` -/
def P14404710407717708725.Spec : Prop :=
  ∀ n, P14404710407717708725.a n = A215302 (n + 1)

end A215302

/-! ## A215302.P2983493533218947448

`p?[A016993(A002265(n))+n]`
-/

namespace A215302.P2983493533218947448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016993 (A002265 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215302.P2983493533218947448

namespace A215302

/-- `p?[A016993(A002265(n))+n]` -/
def P2983493533218947448.Spec : Prop :=
  ∀ n, P2983493533218947448.a n = A215302 (n + 1)

end A215302

/-! ## A215302.P12735307872678801967

`p?[A017005(A002265(n+1))+n]`
-/

namespace A215302.P12735307872678801967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (A002265 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215302.P12735307872678801967

namespace A215302

/-- `p?[A017005(A002265(n+1))+n]` -/
def P12735307872678801967.Spec : Prop :=
  ∀ n, P12735307872678801967.a n = A215302 (n + 1)

end A215302

/-! ## A215302.P9419275730601035433

`∩[A032797(n+1), A215322(n+1)]`
-/

namespace A215302.P9419275730601035433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215302.P9419275730601035433

namespace A215302

/-- `∩[A032797(n+1), A215322(n+1)]` -/
def P9419275730601035433.Spec : Prop :=
  ∀ n, (P9419275730601035433.a n : ℤ) = A215302 (n + 1)

end A215302

/-!
# A215303: Primes congruent to {1, 2, 3, 4} mod 13.

The programs for A215303, the canonical program `A215303.P1432680102437036267` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215303 has offset 1).

The definition of A215303 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215303.P1432680102437036267

`∪[A093191(n+1), A215135(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215303

/-- `∪[A093191(n+1), A215135(n+1)]` -/
def P1432680102437036267.Spec : Prop :=
  ∀ n, (P1432680102437036267.a n : ℤ) = A215303 (n + 1)

theorem P1432680102437036267.correct : P1432680102437036267.Spec := by
  intro n
  simp only [A215303, Nat.add_sub_cancel]

end A215303

/-! ## A215303.P17759303650265396793

`∪[A214889(n+1), A215164(n+1)]`
-/

namespace A215303.P17759303650265396793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215303.P17759303650265396793

namespace A215303

/-- `∪[A214889(n+1), A215164(n+1)]` -/
def P17759303650265396793.Spec : Prop :=
  ∀ n, (P17759303650265396793.a n : ℤ) = A215303 (n + 1)

end A215303

/-! ## A215303.P7338452412928135006

`∪[A215135(n+1), A215164(n+1)]`
-/

namespace A215303.P7338452412928135006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215303.P7338452412928135006

namespace A215303

/-- `∪[A215135(n+1), A215164(n+1)]` -/
def P7338452412928135006.Spec : Prop :=
  ∀ n, (P7338452412928135006.a n : ℤ) = A215303 (n + 1)

end A215303

/-! ## A215303.P17137051477599243164

`∪[A215135(n+1), A215280(n+1)]`
-/

namespace A215303.P17137051477599243164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215303.P17137051477599243164

namespace A215303

/-- `∪[A215135(n+1), A215280(n+1)]` -/
def P17137051477599243164.Spec : Prop :=
  ∀ n, (P17137051477599243164.a n : ℤ) = A215303 (n + 1)

end A215303

/-! ## A215303.P6136708515042513679

`∪[A215164(n+1), A215280(n+1)]`
-/

namespace A215303.P6136708515042513679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215303.P6136708515042513679

namespace A215303

/-- `∪[A215164(n+1), A215280(n+1)]` -/
def P6136708515042513679.Spec : Prop :=
  ∀ n, (P6136708515042513679.a n : ℤ) = A215303 (n + 1)

end A215303

/-! ## A215303.P13099665915886581150

`∪[A215280(n+1), A215391(n+1)]`
-/

namespace A215303.P13099665915886581150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215303.P13099665915886581150

namespace A215303

/-- `∪[A215280(n+1), A215391(n+1)]` -/
def P13099665915886581150.Spec : Prop :=
  ∀ n, (P13099665915886581150.a n : ℤ) = A215303 (n + 1)

end A215303

/-! ## A215303.P13684335642339939891

`∪[A215280(n+1), A268753(n+1)]`
-/

namespace A215303.P13684335642339939891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215303.P13684335642339939891

namespace A215303

/-- `∪[A215280(n+1), A268753(n+1)]` -/
def P13684335642339939891.Spec : Prop :=
  ∀ n, (P13684335642339939891.a n : ℤ) = A215303 (n + 1)

end A215303

/-! ## A215303.P11546521099639756716

`p?[a(n-4)+13]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A215303.P11546521099639756716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n f1 =>
  f1 (n - 4) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215303.P11546521099639756716

namespace A215303

/-- `p?[a(n-4)+13]` -/
def P11546521099639756716.Spec : Prop :=
  ∀ n, (P11546521099639756716.a n : ℤ) = A215303 (n + 1)

end A215303

/-! ## A215303.P8592779329485422941

`∩[A215311(n+1), A215323(n+1)]`
-/

namespace A215303.P8592779329485422941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215303.P8592779329485422941

namespace A215303

/-- `∩[A215311(n+1), A215323(n+1)]` -/
def P8592779329485422941.Spec : Prop :=
  ∀ n, (P8592779329485422941.a n : ℤ) = A215303 (n + 1)

end A215303

/-! ## A215303.P482112161632872303

`p?[A016789(A057358(n))+A004273(n)]`
-/

namespace A215303.P482112161632872303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A057358 n).toNat + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215303.P482112161632872303

namespace A215303

/-- `p?[A016789(A057358(n))+A004273(n)]` -/
def P482112161632872303.Spec : Prop :=
  ∀ n, P482112161632872303.a n = A215303 (n + 1)

end A215303

/-! ## A215303.P10232356567550746532

`p?[∑[A010130(n+1)]+1]`
-/

namespace A215303.P10232356567550746532
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215303.P10232356567550746532

namespace A215303

/-- `p?[∑[A010130(n+1)]+1]` -/
def P10232356567550746532.Spec : Prop :=
  ∀ n, P10232356567550746532.a n = A215303 (n + 1)

end A215303

/-! ## A215303.P14498137310937212248

`p?[9*A002265(n)+n+1]`
-/

namespace A215303.P14498137310937212248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A002265 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215303.P14498137310937212248

namespace A215303

/-- `p?[9*A002265(n)+n+1]` -/
def P14498137310937212248.Spec : Prop :=
  ∀ n, P14498137310937212248.a n = A215303 (n + 1)

end A215303

/-! ## A215303.P16561348917467041285

`p?[A007310(A130766(n))+n]`
-/

namespace A215303.P16561348917467041285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (A130766 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215303.P16561348917467041285

namespace A215303

/-- `p?[A007310(A130766(n))+n]` -/
def P16561348917467041285.Spec : Prop :=
  ∀ n, P16561348917467041285.a n = A215303 (n + 1)

end A215303

/-! ## A215303.P11026563836275559015

`p?[A056020(A129756(n))+n]`
-/

namespace A215303.P11026563836275559015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A129756 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215303.P11026563836275559015

namespace A215303

/-- `p?[A056020(A129756(n))+n]` -/
def P11026563836275559015.Spec : Prop :=
  ∀ n, P11026563836275559015.a n = A215303 (n + 1)

end A215303

/-! ## A215303.P11042938461967817372

`p?[A168413(A065033(n))+n]`
-/

namespace A215303.P11042938461967817372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (A065033 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215303.P11042938461967817372

namespace A215303

/-- `p?[A168413(A065033(n))+n]` -/
def P11042938461967817372.Spec : Prop :=
  ∀ n, P11042938461967817372.a n = A215303 (n + 1)

end A215303

/-! ## A215303.P17689344272832897383

`p?[A017221(A001068(n))-A017113(n)]`
-/

namespace A215303.P17689344272832897383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (A001068 n).toNat - A017113 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215303.P17689344272832897383

namespace A215303

/-- `p?[A017221(A001068(n))-A017113(n)]` -/
def P17689344272832897383.Spec : Prop :=
  ∀ n, P17689344272832897383.a n = A215303 (n + 1)

end A215303

/-!
# A215304: Primes congruent to {1, 2, 3, 4} mod 17.

The programs for A215304, the canonical program `A215304.P5744718279713109426` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215304 has offset 1).

The definition of A215304 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215304.P9100554445193593175

`∪[A094657(n+1), A215153(n+1)]`
-/

namespace A215304.P9100554445193593175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215304.P9100554445193593175

namespace A215304

/-- `∪[A094657(n+1), A215153(n+1)]` -/
def P9100554445193593175.Spec : Prop :=
  ∀ n, (P9100554445193593175.a n : ℤ) = A215304 (n + 1)

end A215304

/-! ## A215304.P5744718279713109426

`∪[A129484(n+1), A215281(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215304

/-- `∪[A129484(n+1), A215281(n+1)]` -/
def P5744718279713109426.Spec : Prop :=
  ∀ n, (P5744718279713109426.a n : ℤ) = A215304 (n + 1)

theorem P5744718279713109426.correct : P5744718279713109426.Spec := by
  intro n
  simp only [A215304, Nat.add_sub_cancel]

end A215304

/-! ## A215304.P6392503920288871550

`∪[A214890(n+1), A215165(n+1)]`
-/

namespace A215304.P6392503920288871550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215304.P6392503920288871550

namespace A215304

/-- `∪[A214890(n+1), A215165(n+1)]` -/
def P6392503920288871550.Spec : Prop :=
  ∀ n, (P6392503920288871550.a n : ℤ) = A215304 (n + 1)

end A215304

/-! ## A215304.P11263287397241089813

`∪[A215153(n+1), A215165(n+1)]`
-/

namespace A215304.P11263287397241089813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215304.P11263287397241089813

namespace A215304

/-- `∪[A215153(n+1), A215165(n+1)]` -/
def P11263287397241089813.Spec : Prop :=
  ∀ n, (P11263287397241089813.a n : ℤ) = A215304 (n + 1)

end A215304

/-! ## A215304.P2309214497198783603

`∪[A215153(n+1), A215281(n+1)]`
-/

namespace A215304.P2309214497198783603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215304.P2309214497198783603

namespace A215304

/-- `∪[A215153(n+1), A215281(n+1)]` -/
def P2309214497198783603.Spec : Prop :=
  ∀ n, (P2309214497198783603.a n : ℤ) = A215304 (n + 1)

end A215304

/-! ## A215304.P2815419825708693

`∪[A215165(n+1), A215281(n+1)]`
-/

namespace A215304.P2815419825708693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215304.P2815419825708693

namespace A215304

/-- `∪[A215165(n+1), A215281(n+1)]` -/
def P2815419825708693.Spec : Prop :=
  ∀ n, (P2815419825708693.a n : ℤ) = A215304 (n + 1)

end A215304

/-! ## A215304.P13895986243975621967

`∪[A215281(n+1), A215392(n+1)]`
-/

namespace A215304.P13895986243975621967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215304.P13895986243975621967

namespace A215304

/-- `∪[A215281(n+1), A215392(n+1)]` -/
def P13895986243975621967.Spec : Prop :=
  ∀ n, (P13895986243975621967.a n : ℤ) = A215304 (n + 1)

end A215304

/-! ## A215304.P2737569734129219997

`p?[a(n-4)+17]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A215304.P2737569734129219997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n f1 =>
  f1 (n - 4) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215304.P2737569734129219997

namespace A215304

/-- `p?[a(n-4)+17]` -/
def P2737569734129219997.Spec : Prop :=
  ∀ n, (P2737569734129219997.a n : ℤ) = A215304 (n + 1)

end A215304

/-! ## A215304.P8144094909535736990

`∩[A215312(n+1), A215324(n+1)]`
-/

namespace A215304.P8144094909535736990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215304.P8144094909535736990

namespace A215304

/-- `∩[A215312(n+1), A215324(n+1)]` -/
def P8144094909535736990.Spec : Prop :=
  ∀ n, (P8144094909535736990.a n : ℤ) = A215304 (n + 1)

end A215304

/-! ## A215304.P6755947495354707009

`p?[13*A002265(n)+n+1]`
-/

namespace A215304.P6755947495354707009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A002265 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215304.P6755947495354707009

namespace A215304

/-- `p?[13*A002265(n)+n+1]` -/
def P6755947495354707009.Spec : Prop :=
  ∀ n, P6755947495354707009.a n = A215304 (n + 1)

end A215304

/-! ## A215304.P5427804490950677296

`p?[A190991(A002265(n))+n]`
-/

namespace A215304.P5427804490950677296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A002265 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215304.P5427804490950677296

namespace A215304

/-- `p?[A190991(A002265(n))+n]` -/
def P5427804490950677296.Spec : Prop :=
  ∀ n, P5427804490950677296.a n = A215304 (n + 1)

end A215304

/-! ## A215304.P12653616610597282190

`p?[A153080(A002265(n+1))+n]`
-/

namespace A215304.P12653616610597282190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 (A002265 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215304.P12653616610597282190

namespace A215304

/-- `p?[A153080(A002265(n+1))+n]` -/
def P12653616610597282190.Spec : Prop :=
  ∀ n, P12653616610597282190.a n = A215304 (n + 1)

end A215304

/-! ## A215304.P20518367360357767

`p?[13*A004526(A004526(n))+n+1]`
-/

namespace A215304.P20518367360357767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A004526 (A004526 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215304.P20518367360357767

namespace A215304

/-- `p?[13*A004526(A004526(n))+n+1]` -/
def P20518367360357767.Spec : Prop :=
  ∀ n, P20518367360357767.a n = A215304 (n + 1)

end A215304

/-! ## A215304.P4217535191008912187

`p?[A047454(A047454(n+1))+A002265(n)]`
-/

namespace A215304.P4217535191008912187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (A047454 (n + 1)).toNat + A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215304.P4217535191008912187

namespace A215304

/-- `p?[A047454(A047454(n+1))+A002265(n)]` -/
def P4217535191008912187.Spec : Prop :=
  ∀ n, P4217535191008912187.a n = A215304 (n + 1)

end A215304

/-!
# A215305: Primes congruent to {1, 2, 3, 4} mod 19.

The programs for A215305, the canonical program `A215305.P11149716039746470790` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215305 has offset 1).

The definition of A215305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215305.P11149716039746470790

`∪[A141870(n+1), A215154(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215305

/-- `∪[A141870(n+1), A215154(n+1)]` -/
def P11149716039746470790.Spec : Prop :=
  ∀ n, (P11149716039746470790.a n : ℤ) = A215305 (n + 1)

theorem P11149716039746470790.correct : P11149716039746470790.Spec := by
  intro n
  simp only [A215305, Nat.add_sub_cancel]

end A215305

/-! ## A215305.P9001508486059999759

`∪[A141868(n+1), A215282(n+1)]`
-/

namespace A215305.P9001508486059999759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215305.P9001508486059999759

namespace A215305

/-- `∪[A141868(n+1), A215282(n+1)]` -/
def P9001508486059999759.Spec : Prop :=
  ∀ n, (P9001508486059999759.a n : ℤ) = A215305 (n + 1)

end A215305

/-! ## A215305.P8461837110748974215

`∪[A215101(n+1), A215166(n+1)]`
-/

namespace A215305.P8461837110748974215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215305.P8461837110748974215

namespace A215305

/-- `∪[A215101(n+1), A215166(n+1)]` -/
def P8461837110748974215.Spec : Prop :=
  ∀ n, (P8461837110748974215.a n : ℤ) = A215305 (n + 1)

end A215305

/-! ## A215305.P2848674865047160512

`∪[A215154(n+1), A215166(n+1)]`
-/

namespace A215305.P2848674865047160512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215305.P2848674865047160512

namespace A215305

/-- `∪[A215154(n+1), A215166(n+1)]` -/
def P2848674865047160512.Spec : Prop :=
  ∀ n, (P2848674865047160512.a n : ℤ) = A215305 (n + 1)

end A215305

/-! ## A215305.P18001970503136630786

`∪[A215154(n+1), A215282(n+1)]`
-/

namespace A215305.P18001970503136630786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215305.P18001970503136630786

namespace A215305

/-- `∪[A215154(n+1), A215282(n+1)]` -/
def P18001970503136630786.Spec : Prop :=
  ∀ n, (P18001970503136630786.a n : ℤ) = A215305 (n + 1)

end A215305

/-! ## A215305.P3067671006162573444

`∪[A215166(n+1), A215282(n+1)]`
-/

namespace A215305.P3067671006162573444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215305.P3067671006162573444

namespace A215305

/-- `∪[A215166(n+1), A215282(n+1)]` -/
def P3067671006162573444.Spec : Prop :=
  ∀ n, (P3067671006162573444.a n : ℤ) = A215305 (n + 1)

end A215305

/-! ## A215305.P7085107234453591419

`∪[A215282(n+1), A215393(n+1)]`
-/

namespace A215305.P7085107234453591419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215305.P7085107234453591419

namespace A215305

/-- `∪[A215282(n+1), A215393(n+1)]` -/
def P7085107234453591419.Spec : Prop :=
  ∀ n, (P7085107234453591419.a n : ℤ) = A215305 (n + 1)

end A215305

/-! ## A215305.P666696447555215807

`p?[a(n-4)+19]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A215305.P666696447555215807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 4] fun n f1 =>
  f1 (n - 4) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215305.P666696447555215807

namespace A215305

/-- `p?[a(n-4)+19]` -/
def P666696447555215807.Spec : Prop :=
  ∀ n, (P666696447555215807.a n : ℤ) = A215305 (n + 1)

end A215305

/-! ## A215305.P9747447101007824958

`∩[A215313(n+1), A215325(n+1)]`
-/

namespace A215305.P9747447101007824958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215305.P9747447101007824958

namespace A215305

/-- `∩[A215313(n+1), A215325(n+1)]` -/
def P9747447101007824958.Spec : Prop :=
  ∀ n, (P9747447101007824958.a n : ℤ) = A215305 (n + 1)

end A215305

/-! ## A215305.P11696740291684412077

`p?[∑[A010153(n+1)]+1]`
-/

namespace A215305.P11696740291684412077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215305.P11696740291684412077

namespace A215305

/-- `p?[∑[A010153(n+1)]+1]` -/
def P11696740291684412077.Spec : Prop :=
  ∀ n, P11696740291684412077.a n = A215305 (n + 1)

end A215305

/-! ## A215305.P544212854496823541

`p?[A016969(n)-A016885(A110657(n))]`
-/

namespace A215305.P544212854496823541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A016885 (A110657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215305.P544212854496823541

namespace A215305

/-- `p?[A016969(n)-A016885(A110657(n))]` -/
def P544212854496823541.Spec : Prop :=
  ∀ n, P544212854496823541.a n = A215305 (n + 1)

end A215305

/-! ## A215305.P8098787842571209908

`p?[A007775(A290561(n))+n]`
-/

namespace A215305.P8098787842571209908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (A290561 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215305.P8098787842571209908

namespace A215305

/-- `p?[A007775(A290561(n))+n]` -/
def P8098787842571209908.Spec : Prop :=
  ∀ n, P8098787842571209908.a n = A215305 (n + 1)

end A215305

/-! ## A215305.P14630048847613008512

`p?[A008597(A002265(n))+n+1]`
-/

namespace A215305.P14630048847613008512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (A002265 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215305.P14630048847613008512

namespace A215305

/-- `p?[A008597(A002265(n))+n+1]` -/
def P14630048847613008512.Spec : Prop :=
  ∀ n, P14630048847613008512.a n = A215305 (n + 1)

end A215305

/-! ## A215305.P6988146595138278573

`p?[15*A004526(A004526(n))+n+1]`
-/

namespace A215305.P6988146595138278573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A004526 (A004526 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215305.P6988146595138278573

namespace A215305

/-- `p?[15*A004526(A004526(n))+n+1]` -/
def P6988146595138278573.Spec : Prop :=
  ∀ n, P6988146595138278573.a n = A215305 (n + 1)

end A215305

/-! ## A215305.P602184668094402518

`p?[A257645(A001068(n))%A017053(n)-1]`
-/

namespace A215305.P602184668094402518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257645 (A001068 n).toNat) (A017053 n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215305.P602184668094402518

namespace A215305

/-- `p?[A257645(A001068(n))%A017053(n)-1]` -/
def P602184668094402518.Spec : Prop :=
  ∀ n, P602184668094402518.a n = A215305 (n + 1)

end A215305

/-!
# A215306: Primes congruent to {1, 2, 3, 5} mod 11.

The programs for A215306, the canonical program `A215306.P3529849924513493806` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215306 has offset 1).

The definition of A215306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215306.P3529849924513493806

`∪[A141849(n+1), A215102(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215306

/-- `∪[A141849(n+1), A215102(n+1)]` -/
def P3529849924513493806.Spec : Prop :=
  ∀ n, (P3529849924513493806.a n : ℤ) = A215306 (n + 1)

theorem P3529849924513493806.correct : P3529849924513493806.Spec := by
  intro n
  simp only [A215306, Nat.add_sub_cancel]

end A215306

/-! ## A215306.P14856923241618905989

`∪[A141852(n+1), A215134(n+1)]`
-/

namespace A215306.P14856923241618905989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215306.P14856923241618905989

namespace A215306

/-- `∪[A141852(n+1), A215134(n+1)]` -/
def P14856923241618905989.Spec : Prop :=
  ∀ n, (P14856923241618905989.a n : ℤ) = A215306 (n + 1)

end A215306

/-! ## A215306.P733498506420111590

`∪[A215102(n+1), A215134(n+1)]`
-/

namespace A215306.P733498506420111590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215306.P733498506420111590

namespace A215306

/-- `∪[A215102(n+1), A215134(n+1)]` -/
def P733498506420111590.Spec : Prop :=
  ∀ n, (P733498506420111590.a n : ℤ) = A215306 (n + 1)

end A215306

/-! ## A215306.P425312934855446801

`∪[A215134(n+1), A215167(n+1)]`
-/

namespace A215306.P425312934855446801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215306.P425312934855446801

namespace A215306

/-- `∪[A215134(n+1), A215167(n+1)]` -/
def P425312934855446801.Spec : Prop :=
  ∀ n, (P425312934855446801.a n : ℤ) = A215306 (n + 1)

end A215306

/-! ## A215306.P16982647823068177863

`∪[A215102(n+1), A215390(n+1)]`
-/

namespace A215306.P16982647823068177863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215306.P16982647823068177863

namespace A215306

/-- `∪[A215102(n+1), A215390(n+1)]` -/
def P16982647823068177863.Spec : Prop :=
  ∀ n, (P16982647823068177863.a n : ℤ) = A215306 (n + 1)

end A215306

/-! ## A215306.P8801422787964961281

`∩[A215310(n+1), A215318(n+1)]`
-/

namespace A215306.P8801422787964961281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215306.P8801422787964961281

namespace A215306

/-- `∩[A215310(n+1), A215318(n+1)]` -/
def P8801422787964961281.Spec : Prop :=
  ∀ n, (P8801422787964961281.a n : ℤ) = A215306 (n + 1)

end A215306

/-! ## A215306.P6450316663348915828

`p?[A130766(n)+A047476(n+1)]`
-/

namespace A215306.P6450316663348915828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 n + A047476 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215306.P6450316663348915828

namespace A215306

/-- `p?[A130766(n)+A047476(n+1)]` -/
def P6450316663348915828.Spec : Prop :=
  ∀ n, P6450316663348915828.a n = A215306 (n + 1)

end A215306

/-! ## A215306.P9108235330868433265

`p?[7*A004523(A057360(n))+n]`
-/

namespace A215306.P9108235330868433265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A004523 (A057360 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215306.P9108235330868433265

namespace A215306

/-- `p?[7*A004523(A057360(n))+n]` -/
def P9108235330868433265.Spec : Prop :=
  ∀ n, P9108235330868433265.a n = A215306 (n + 1)

end A215306

/-! ## A215306.P17609069838888430168

`p?[A047454(n+1)+A130766(n)-1]`
-/

namespace A215306.P17609069838888430168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) + (A130766 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215306.P17609069838888430168

namespace A215306

/-- `p?[A047454(n+1)+A130766(n)-1]` -/
def P17609069838888430168.Spec : Prop :=
  ∀ n, P17609069838888430168.a n = A215306 (n + 1)

end A215306

/-! ## A215306.P18249771661053163614

`p?[A168484(n+1)-(A021913(n)+1)]`
-/

namespace A215306.P18249771661053163614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1) - (A021913 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215306.P18249771661053163614

namespace A215306

/-- `p?[A168484(n+1)-(A021913(n)+1)]` -/
def P18249771661053163614.Spec : Prop :=
  ∀ n, P18249771661053163614.a n = A215306 (n + 1)

end A215306

/-! ## A215306.P6280972949595030992

`p?[A016825(A001068(n))-A056991(n+1)]`
-/

namespace A215306.P6280972949595030992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A001068 n).toNat - A056991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215306.P6280972949595030992

namespace A215306

/-- `p?[A016825(A001068(n))-A056991(n+1)]` -/
def P6280972949595030992.Spec : Prop :=
  ∀ n, P6280972949595030992.a n = A215306 (n + 1)

end A215306

/-! ## A215306.P1605344554089472094

`p?[A168484(n+1)-A010673(A004525(n))]`
-/

namespace A215306.P1605344554089472094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1) - A010673 (A004525 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215306.P1605344554089472094

namespace A215306

/-- `p?[A168484(n+1)-A010673(A004525(n))]` -/
def P1605344554089472094.Spec : Prop :=
  ∀ n, P1605344554089472094.a n = A215306 (n + 1)

end A215306

/-! ## A215306.P8400840530151916638

`p?[A267541(A047201(n+1))-5]`
-/

namespace A215306.P8400840530151916638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 (A047201 (n + 1)).toNat - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215306.P8400840530151916638

namespace A215306

/-- `p?[A267541(A047201(n+1))-5]` -/
def P8400840530151916638.Spec : Prop :=
  ∀ n, P8400840530151916638.a n = A215306 (n + 1)

end A215306

/-! ## A215306.P12630324124883424226

`p?[A267541(A067251(n+1))-5]`
-/

namespace A215306.P12630324124883424226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267541 (A067251 (n + 1)).toNat - 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215306.P12630324124883424226

namespace A215306

/-- `p?[A267541(A067251(n+1))-5]` -/
def P12630324124883424226.Spec : Prop :=
  ∀ n, P12630324124883424226.a n = A215306 (n + 1)

end A215306

/-! ## A215306.P16694739215633383405

`∩[A032797(n+1), A215318(n+1)]`
-/

namespace A215306.P16694739215633383405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215306.P16694739215633383405

namespace A215306

/-- `∩[A032797(n+1), A215318(n+1)]` -/
def P16694739215633383405.Spec : Prop :=
  ∀ n, (P16694739215633383405.a n : ℤ) = A215306 (n + 1)

end A215306

/-! ## A215306.P5793698955122539414

`p?[A004275(A217562(n+1))-A056991(n+1)]`
-/

namespace A215306.P5793698955122539414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A217562 (n + 1)).toNat - A056991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215306.P5793698955122539414

namespace A215306

/-- `p?[A004275(A217562(n+1))-A056991(n+1)]` -/
def P5793698955122539414.Spec : Prop :=
  ∀ n, P5793698955122539414.a n = A215306 (n + 1)

end A215306

/-! ## A215306.P15746414860747807795

`p?[A004396(n+1)+A004396(A008576(n))]`
-/

namespace A215306.P15746414860747807795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) + A004396 (A008576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215306.P15746414860747807795

namespace A215306

/-- `p?[A004396(n+1)+A004396(A008576(n))]` -/
def P15746414860747807795.Spec : Prop :=
  ∀ n, P15746414860747807795.a n = A215306 (n + 1)

end A215306

/-! ## A215306.P12712677389640649350

`p?[A001057(A047286(n+1)+n)]`
-/

namespace A215306.P12712677389640649350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A047286 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215306.P12712677389640649350

namespace A215306

/-- `p?[A001057(A047286(n+1)+n)]` -/
def P12712677389640649350.Spec : Prop :=
  ∀ n, P12712677389640649350.a n = A215306 (n + 1)

end A215306

/-! ## A215306.P3081123373982408893

`p?[A004524(A047340(n+1)+n)]`
-/

namespace A215306.P3081123373982408893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A047340 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215306.P3081123373982408893

namespace A215306

/-- `p?[A004524(A047340(n+1)+n)]` -/
def P3081123373982408893.Spec : Prop :=
  ∀ n, P3081123373982408893.a n = A215306 (n + 1)

end A215306

/-!
# A215307: Primes congruent to {1, 2, 3, 5} mod 13.

The programs for A215307, the canonical program `A215307.P10886749593874814575` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215307 has offset 1).

The definition of A215307 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215307.P10886749593874814575

`∪[A102732(n+1), A215135(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215307

/-- `∪[A102732(n+1), A215135(n+1)]` -/
def P10886749593874814575.Spec : Prop :=
  ∀ n, (P10886749593874814575.a n : ℤ) = A215307 (n + 1)

theorem P10886749593874814575.correct : P10886749593874814575.Spec := by
  intro n
  simp only [A215307, Nat.add_sub_cancel]

end A215307

/-! ## A215307.P6525751721448726781

`∪[A215103(n+1), A215135(n+1)]`
-/

namespace A215307.P6525751721448726781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215307.P6525751721448726781

namespace A215307

/-- `∪[A215103(n+1), A215135(n+1)]` -/
def P6525751721448726781.Spec : Prop :=
  ∀ n, (P6525751721448726781.a n : ℤ) = A215307 (n + 1)

end A215307

/-! ## A215307.P16366577335809688513

`∪[A215135(n+1), A215168(n+1)]`
-/

namespace A215307.P16366577335809688513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215307.P16366577335809688513

namespace A215307

/-- `∪[A215135(n+1), A215168(n+1)]` -/
def P16366577335809688513.Spec : Prop :=
  ∀ n, (P16366577335809688513.a n : ℤ) = A215307 (n + 1)

end A215307

/-! ## A215307.P7143025680689216274

`∪[A215103(n+1), A215391(n+1)]`
-/

namespace A215307.P7143025680689216274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215307.P7143025680689216274

namespace A215307

/-- `∪[A215103(n+1), A215391(n+1)]` -/
def P7143025680689216274.Spec : Prop :=
  ∀ n, (P7143025680689216274.a n : ℤ) = A215307 (n + 1)

end A215307

/-! ## A215307.P12230926362517194790

`∪[A215103(n+1), A268753(n+1)]`
-/

namespace A215307.P12230926362517194790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215307.P12230926362517194790

namespace A215307

/-- `∪[A215103(n+1), A268753(n+1)]` -/
def P12230926362517194790.Spec : Prop :=
  ∀ n, (P12230926362517194790.a n : ℤ) = A215307 (n + 1)

end A215307

/-! ## A215307.P3290041875807103623

`p?[a(n-4)+13]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A215307.P3290041875807103623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5] fun n f1 =>
  f1 (n - 4) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215307.P3290041875807103623

namespace A215307

/-- `p?[a(n-4)+13]` -/
def P3290041875807103623.Spec : Prop :=
  ∀ n, (P3290041875807103623.a n : ℤ) = A215307 (n + 1)

end A215307

/-! ## A215307.P5434112713547593687

`∩[A215311(n+1), A215319(n+1)]`
-/

namespace A215307.P5434112713547593687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215307.P5434112713547593687

namespace A215307

/-- `∩[A215311(n+1), A215319(n+1)]` -/
def P5434112713547593687.Spec : Prop :=
  ∀ n, (P5434112713547593687.a n : ℤ) = A215307 (n + 1)

end A215307

/-! ## A215307.P3084526640624895085

`p?[∑[A131800(A004524(n))]]`
-/

namespace A215307.P3084526640624895085
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131800 (A004524 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215307.P3084526640624895085

namespace A215307

/-- `p?[∑[A131800(A004524(n))]]` -/
def P3084526640624895085.Spec : Prop :=
  ∀ n, P3084526640624895085.a n = A215307 (n + 1)

end A215307

/-! ## A215307.P9265966561162454510

`p?[A110657(n)+A093544(A130766(n))]`
-/

namespace A215307.P9265966561162454510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 n + A093544 (A130766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215307.P9265966561162454510

namespace A215307

/-- `p?[A110657(n)+A093544(A130766(n))]` -/
def P9265966561162454510.Spec : Prop :=
  ∀ n, P9265966561162454510.a n = A215307 (n + 1)

end A215307

/-! ## A215307.P9107899980803485595

`p?[A004524(n)+A016993(A002265(n))+n]`
-/

namespace A215307.P9107899980803485595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 n + (A016993 (A002265 n).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215307.P9107899980803485595

namespace A215307

/-- `p?[A004524(n)+A016993(A002265(n))+n]` -/
def P9107899980803485595.Spec : Prop :=
  ∀ n, P9107899980803485595.a n = A215307 (n + 1)

end A215307

/-! ## A215307.P9257807702066376508

`record[gcd(A007918(n), A011936(n))]`
-/

namespace A215307.P9257807702066376508
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007918 n) (A011936 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215307.P9257807702066376508

namespace A215307

/-- `record[gcd(A007918(n), A011936(n))]` -/
def P9257807702066376508.Spec : Prop :=
  ∀ n, (P9257807702066376508.a n : ℤ) = A215307 (n + 1)

end A215307

/-!
# A215308: Primes congruent to {1, 2, 3, 5} mod 17.

The programs for A215308, the canonical program `A215308.P9063674107072396088` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215308 has offset 1).

The definition of A215308 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215308.P9063674107072396088

`∪[A129484(n+1), A215104(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215308

/-- `∪[A129484(n+1), A215104(n+1)]` -/
def P9063674107072396088.Spec : Prop :=
  ∀ n, (P9063674107072396088.a n : ℤ) = A215308 (n + 1)

theorem P9063674107072396088.correct : P9063674107072396088.Spec := by
  intro n
  simp only [A215308, Nat.add_sub_cancel]

end A215308

/-! ## A215308.P1378489628532870183

`∪[A138623(n+1), A215153(n+1)]`
-/

namespace A215308.P1378489628532870183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215308.P1378489628532870183

namespace A215308

/-- `∪[A138623(n+1), A215153(n+1)]` -/
def P1378489628532870183.Spec : Prop :=
  ∀ n, (P1378489628532870183.a n : ℤ) = A215308 (n + 1)

end A215308

/-! ## A215308.P9750407113831367163

`∪[A215104(n+1), A215153(n+1)]`
-/

namespace A215308.P9750407113831367163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215308.P9750407113831367163

namespace A215308

/-- `∪[A215104(n+1), A215153(n+1)]` -/
def P9750407113831367163.Spec : Prop :=
  ∀ n, (P9750407113831367163.a n : ℤ) = A215308 (n + 1)

end A215308

/-! ## A215308.P3684761241103796783

`∪[A215153(n+1), A215169(n+1)]`
-/

namespace A215308.P3684761241103796783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215308.P3684761241103796783

namespace A215308

/-- `∪[A215153(n+1), A215169(n+1)]` -/
def P3684761241103796783.Spec : Prop :=
  ∀ n, (P3684761241103796783.a n : ℤ) = A215308 (n + 1)

end A215308

/-! ## A215308.P16536100156823213781

`∪[A215104(n+1), A215392(n+1)]`
-/

namespace A215308.P16536100156823213781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215308.P16536100156823213781

namespace A215308

/-- `∪[A215104(n+1), A215392(n+1)]` -/
def P16536100156823213781.Spec : Prop :=
  ∀ n, (P16536100156823213781.a n : ℤ) = A215308 (n + 1)

end A215308

/-! ## A215308.P12726875869690111425

`∩[A215312(n+1), A215320(n+1)]`
-/

namespace A215308.P12726875869690111425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215308.P12726875869690111425

namespace A215308

/-- `∩[A215312(n+1), A215320(n+1)]` -/
def P12726875869690111425.Spec : Prop :=
  ∀ n, (P12726875869690111425.a n : ℤ) = A215308 (n + 1)

end A215308

/-! ## A215308.P6286562411482268197

`p?[A160467(n+1)+13*A004526(A004526(n))+n]`
-/

namespace A215308.P6286562411482268197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160467 (n + 1) + (13 * A004526 (A004526 n).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215308.P6286562411482268197

namespace A215308

/-- `p?[A160467(n+1)+13*A004526(A004526(n))+n]` -/
def P6286562411482268197.Spec : Prop :=
  ∀ n, P6286562411482268197.a n = A215308 (n + 1)

end A215308

/-! ## A215308.P1682011476227376351

`p?[∑[gcd(14, A077998(n))]]`
-/

namespace A215308.P1682011476227376351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 14 (A077998 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215308.P1682011476227376351

namespace A215308

/-- `p?[∑[gcd(14, A077998(n))]]` -/
def P1682011476227376351.Spec : Prop :=
  ∀ n, (P1682011476227376351.a n : ℤ) = A215308 (n + 1)

end A215308

/-!
# A215309: Primes congruent to {1, 2, 3, 5} mod 19.

The programs for A215309, the canonical program `A215309.P9097329543681950437` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215309 has offset 1).

The definition of A215309 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215309.P9097329543681950437

`∪[A102851(n+1), A215154(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215309

/-- `∪[A102851(n+1), A215154(n+1)]` -/
def P9097329543681950437.Spec : Prop :=
  ∀ n, (P9097329543681950437.a n : ℤ) = A215309 (n + 1)

theorem P9097329543681950437.correct : P9097329543681950437.Spec := by
  intro n
  simp only [A215309, Nat.add_sub_cancel]

end A215309

/-! ## A215309.P895662064573443350

`∪[A141868(n+1), A215105(n+1)]`
-/

namespace A215309.P895662064573443350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215309.P895662064573443350

namespace A215309

/-- `∪[A141868(n+1), A215105(n+1)]` -/
def P895662064573443350.Spec : Prop :=
  ∀ n, (P895662064573443350.a n : ℤ) = A215309 (n + 1)

end A215309

/-! ## A215309.P2873260135922223570

`∪[A215105(n+1), A215154(n+1)]`
-/

namespace A215309.P2873260135922223570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215309.P2873260135922223570

namespace A215309

/-- `∪[A215105(n+1), A215154(n+1)]` -/
def P2873260135922223570.Spec : Prop :=
  ∀ n, (P2873260135922223570.a n : ℤ) = A215309 (n + 1)

end A215309

/-! ## A215309.P12720243711317079871

`∪[A215154(n+1), A215170(n+1)]`
-/

namespace A215309.P12720243711317079871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215309.P12720243711317079871

namespace A215309

/-- `∪[A215154(n+1), A215170(n+1)]` -/
def P12720243711317079871.Spec : Prop :=
  ∀ n, (P12720243711317079871.a n : ℤ) = A215309 (n + 1)

end A215309

/-! ## A215309.P17049668254490942541

`∪[A215105(n+1), A215393(n+1)]`
-/

namespace A215309.P17049668254490942541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215309.P17049668254490942541

namespace A215309

/-- `∪[A215105(n+1), A215393(n+1)]` -/
def P17049668254490942541.Spec : Prop :=
  ∀ n, (P17049668254490942541.a n : ℤ) = A215309 (n + 1)

end A215309

/-! ## A215309.P336881497699058998

`p?[a(n-4)+19]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=5`
-/

namespace A215309.P336881497699058998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 5] fun n f1 =>
  f1 (n - 4) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215309.P336881497699058998

namespace A215309

/-- `p?[a(n-4)+19]` -/
def P336881497699058998.Spec : Prop :=
  ∀ n, (P336881497699058998.a n : ℤ) = A215309 (n + 1)

end A215309

/-! ## A215309.P13585843015401659646

`∩[A215313(n+1), A215321(n+1)]`
-/

namespace A215309.P13585843015401659646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215321 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215309.P13585843015401659646

namespace A215309

/-- `∩[A215313(n+1), A215321(n+1)]` -/
def P13585843015401659646.Spec : Prop :=
  ∀ n, (P13585843015401659646.a n : ℤ) = A215309 (n + 1)

end A215309

/-! ## A215309.P4998859799360417945

`p?[∑[A010153(A020986(n))]]`
-/

namespace A215309.P4998859799360417945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 (A020986 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215309.P4998859799360417945

namespace A215309

/-- `p?[∑[A010153(A020986(n))]]` -/
def P4998859799360417945.Spec : Prop :=
  ∀ n, P4998859799360417945.a n = A215309 (n + 1)

end A215309

/-!
# A215310: Primes congruent to {1, 2, 3, 4, 5} mod 11.

The programs for A215310, the canonical program `A215310.P9578832618416328593` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215310 has offset 1).

The definition of A215310 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215310.P15998622869157546762

`∪[A141852(n+1), A215302(n+1)]`
-/

namespace A215310.P15998622869157546762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215310.P15998622869157546762

namespace A215310

/-- `∪[A141852(n+1), A215302(n+1)]` -/
def P15998622869157546762.Spec : Prop :=
  ∀ n, (P15998622869157546762.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P15237267574353703902

`∪[A141849(n+1), A215314(n+1)]`
-/

namespace A215310.P15237267574353703902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215310.P15237267574353703902

namespace A215310

/-- `∪[A141849(n+1), A215314(n+1)]` -/
def P15237267574353703902.Spec : Prop :=
  ∀ n, (P15237267574353703902.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P9578832618416328593

`∪[A141851(n+1), A215306(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A215310

/-- `∪[A141851(n+1), A215306(n+1)]` -/
def P9578832618416328593.Spec : Prop :=
  ∀ n, (P9578832618416328593.a n : ℤ) = A215310 (n + 1)

theorem P9578832618416328593.correct : P9578832618416328593.Spec := by
  intro n
  simp only [A215310, Nat.add_sub_cancel]

end A215310

/-! ## A215310.P6972184322975836612

`∪[A215102(n+1), A215163(n+1)]`
-/

namespace A215310.P6972184322975836612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215310.P6972184322975836612

namespace A215310

/-- `∪[A215102(n+1), A215163(n+1)]` -/
def P6972184322975836612.Spec : Prop :=
  ∀ n, (P6972184322975836612.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P3210675566174428046

`∪[A215102(n+1), A215302(n+1)]`
-/

namespace A215310.P3210675566174428046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215310.P3210675566174428046

namespace A215310

/-- `∪[A215102(n+1), A215302(n+1)]` -/
def P3210675566174428046.Spec : Prop :=
  ∀ n, (P3210675566174428046.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P505949050172947493

`∪[A215134(n+1), A215314(n+1)]`
-/

namespace A215310.P505949050172947493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215310.P505949050172947493

namespace A215310

/-- `∪[A215134(n+1), A215314(n+1)]` -/
def P505949050172947493.Spec : Prop :=
  ∀ n, (P505949050172947493.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P6960631512355137787

`∪[A215163(n+1), A215306(n+1)]`
-/

namespace A215310.P6960631512355137787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215310.P6960631512355137787

namespace A215310

/-- `∪[A215163(n+1), A215306(n+1)]` -/
def P6960631512355137787.Spec : Prop :=
  ∀ n, (P6960631512355137787.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P13563416303760562351

`∪[A215167(n+1), A215302(n+1)]`
-/

namespace A215310.P13563416303760562351
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215310.P13563416303760562351

namespace A215310

/-- `∪[A215167(n+1), A215302(n+1)]` -/
def P13563416303760562351.Spec : Prop :=
  ∀ n, (P13563416303760562351.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P9047399319216386757

`∪[A215163(n+1), A215314(n+1)]`
-/

namespace A215310.P9047399319216386757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215310.P9047399319216386757

namespace A215310

/-- `∪[A215163(n+1), A215314(n+1)]` -/
def P9047399319216386757.Spec : Prop :=
  ∀ n, (P9047399319216386757.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P9325679277051365504

`∪[A215279(n+1), A215306(n+1)]`
-/

namespace A215310.P9325679277051365504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215310.P9325679277051365504

namespace A215310

/-- `∪[A215279(n+1), A215306(n+1)]` -/
def P9325679277051365504.Spec : Prop :=
  ∀ n, (P9325679277051365504.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P5761261432280572982

`∪[A215302(n+1), A215306(n+1)]`
-/

namespace A215310.P5761261432280572982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215310.P5761261432280572982

namespace A215310

/-- `∪[A215302(n+1), A215306(n+1)]` -/
def P5761261432280572982.Spec : Prop :=
  ∀ n, (P5761261432280572982.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P12241936607808187018

`∪[A215302(n+1), A215314(n+1)]`
-/

namespace A215310.P12241936607808187018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215310.P12241936607808187018

namespace A215310

/-- `∪[A215302(n+1), A215314(n+1)]` -/
def P12241936607808187018.Spec : Prop :=
  ∀ n, (P12241936607808187018.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P3559469432416656567

`∪[A215306(n+1), A215314(n+1)]`
-/

namespace A215310.P3559469432416656567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215310.P3559469432416656567

namespace A215310

/-- `∪[A215306(n+1), A215314(n+1)]` -/
def P3559469432416656567.Spec : Prop :=
  ∀ n, (P3559469432416656567.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P11835978130845073843

`∪[A215314(n+1), A215390(n+1)]`
-/

namespace A215310.P11835978130845073843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215310.P11835978130845073843

namespace A215310

/-- `∪[A215314(n+1), A215390(n+1)]` -/
def P11835978130845073843.Spec : Prop :=
  ∀ n, (P11835978130845073843.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P4721426578689644652

`p?[6*floor(n/5)+n+1]`
-/

namespace A215310.P4721426578689644652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌊(n : ℚ) / 5⌋ + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215310.P4721426578689644652

namespace A215310

/-- `p?[6*floor(n/5)+n+1]` -/
def P4721426578689644652.Spec : Prop :=
  ∀ n, P4721426578689644652.a n = A215310 (n + 1)

end A215310

/-! ## A215310.P11110651235320286499

`eq[A003415(n), A010872(A310526(n))]`
-/

namespace A215310.P11110651235320286499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A310526 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215310.P11110651235320286499

namespace A215310

/-- `eq[A003415(n), A010872(A310526(n))]` -/
def P11110651235320286499.Spec : Prop :=
  ∀ n, (P11110651235320286499.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P16283779770431391790

`eq[A003415(n), A244895(A315519(n))]`
-/

namespace A215310.P16283779770431391790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A315519 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215310.P16283779770431391790

namespace A215310

/-- `eq[A003415(n), A244895(A315519(n))]` -/
def P16283779770431391790.Spec : Prop :=
  ∀ n, (P16283779770431391790.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P4008049694857997042

`eq[A053989(n+1), A141212(A310526(n))]`
-/

namespace A215310.P4008049694857997042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141212 (A310526 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215310.P4008049694857997042

namespace A215310

/-- `eq[A053989(n+1), A141212(A310526(n))]` -/
def P4008049694857997042.Spec : Prop :=
  ∀ n, (P4008049694857997042.a n : ℤ) = A215310 (n + 1)

end A215310

/-! ## A215310.P5107148506132500217

`eq[A244895(A315491(n))+1, A304442(n)]`
-/

namespace A215310.P5107148506132500217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A315491 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215310.P5107148506132500217

namespace A215310

/-- `eq[A244895(A315491(n))+1, A304442(n)]` -/
def P5107148506132500217.Spec : Prop :=
  ∀ n, (P5107148506132500217.a n : ℤ) = A215310 (n + 1)

end A215310

/-!
# A215311: Primes congruent to {1, 2, 3, 4, 5} mod 13.

The programs for A215311, the canonical program `A215311.P4563377163036817401` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215311 has offset 1).

The definition of A215311 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215311.P4563377163036817401

`∪[A093191(n+1), A215307(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A215311

/-- `∪[A093191(n+1), A215307(n+1)]` -/
def P4563377163036817401.Spec : Prop :=
  ∀ n, (P4563377163036817401.a n : ℤ) = A215311 (n + 1)

theorem P4563377163036817401.correct : P4563377163036817401.Spec := by
  intro n
  simp only [A215311, Nat.add_sub_cancel]

end A215311

/-! ## A215311.P6055301965497795334

`∪[A102732(n+1), A215303(n+1)]`
-/

namespace A215311.P6055301965497795334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215311.P6055301965497795334

namespace A215311

/-- `∪[A102732(n+1), A215303(n+1)]` -/
def P6055301965497795334.Spec : Prop :=
  ∀ n, (P6055301965497795334.a n : ℤ) = A215311 (n + 1)

end A215311

/-! ## A215311.P4698032947376789724

`∪[A215103(n+1), A215164(n+1)]`
-/

namespace A215311.P4698032947376789724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215311.P4698032947376789724

namespace A215311

/-- `∪[A215103(n+1), A215164(n+1)]` -/
def P4698032947376789724.Spec : Prop :=
  ∀ n, (P4698032947376789724.a n : ℤ) = A215311 (n + 1)

end A215311

/-! ## A215311.P10704348428363458265

`∪[A215103(n+1), A215303(n+1)]`
-/

namespace A215311.P10704348428363458265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215311.P10704348428363458265

namespace A215311

/-- `∪[A215103(n+1), A215303(n+1)]` -/
def P10704348428363458265.Spec : Prop :=
  ∀ n, (P10704348428363458265.a n : ℤ) = A215311 (n + 1)

end A215311

/-! ## A215311.P11229279701058739812

`∪[A215135(n+1), A215315(n+1)]`
-/

namespace A215311.P11229279701058739812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215311.P11229279701058739812

namespace A215311

/-- `∪[A215135(n+1), A215315(n+1)]` -/
def P11229279701058739812.Spec : Prop :=
  ∀ n, (P11229279701058739812.a n : ℤ) = A215311 (n + 1)

end A215311

/-! ## A215311.P9313137278760209887

`∪[A215164(n+1), A215307(n+1)]`
-/

namespace A215311.P9313137278760209887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215311.P9313137278760209887

namespace A215311

/-- `∪[A215164(n+1), A215307(n+1)]` -/
def P9313137278760209887.Spec : Prop :=
  ∀ n, (P9313137278760209887.a n : ℤ) = A215311 (n + 1)

end A215311

/-! ## A215311.P8563234629381559346

`∪[A215168(n+1), A215303(n+1)]`
-/

namespace A215311.P8563234629381559346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215311.P8563234629381559346

namespace A215311

/-- `∪[A215168(n+1), A215303(n+1)]` -/
def P8563234629381559346.Spec : Prop :=
  ∀ n, (P8563234629381559346.a n : ℤ) = A215311 (n + 1)

end A215311

/-! ## A215311.P3043517623398180037

`∪[A215164(n+1), A215315(n+1)]`
-/

namespace A215311.P3043517623398180037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215311.P3043517623398180037

namespace A215311

/-- `∪[A215164(n+1), A215315(n+1)]` -/
def P3043517623398180037.Spec : Prop :=
  ∀ n, (P3043517623398180037.a n : ℤ) = A215311 (n + 1)

end A215311

/-! ## A215311.P2787364048036178046

`∪[A215280(n+1), A215307(n+1)]`
-/

namespace A215311.P2787364048036178046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215311.P2787364048036178046

namespace A215311

/-- `∪[A215280(n+1), A215307(n+1)]` -/
def P2787364048036178046.Spec : Prop :=
  ∀ n, (P2787364048036178046.a n : ℤ) = A215311 (n + 1)

end A215311

/-! ## A215311.P6413125487484599902

`∪[A215303(n+1), A215307(n+1)]`
-/

namespace A215311.P6413125487484599902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215311.P6413125487484599902

namespace A215311

/-- `∪[A215303(n+1), A215307(n+1)]` -/
def P6413125487484599902.Spec : Prop :=
  ∀ n, (P6413125487484599902.a n : ℤ) = A215311 (n + 1)

end A215311

/-! ## A215311.P15212682558025881888

`∪[A215303(n+1), A215315(n+1)]`
-/

namespace A215311.P15212682558025881888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215311.P15212682558025881888

namespace A215311

/-- `∪[A215303(n+1), A215315(n+1)]` -/
def P15212682558025881888.Spec : Prop :=
  ∀ n, (P15212682558025881888.a n : ℤ) = A215311 (n + 1)

end A215311

/-! ## A215311.P4599398053797975319

`∪[A215307(n+1), A215315(n+1)]`
-/

namespace A215311.P4599398053797975319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215311.P4599398053797975319

namespace A215311

/-- `∪[A215307(n+1), A215315(n+1)]` -/
def P4599398053797975319.Spec : Prop :=
  ∀ n, (P4599398053797975319.a n : ℤ) = A215311 (n + 1)

end A215311

/-! ## A215311.P940523684121105072

`∪[A215315(n+1), A215391(n+1)]`
-/

namespace A215311.P940523684121105072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215311.P940523684121105072

namespace A215311

/-- `∪[A215315(n+1), A215391(n+1)]` -/
def P940523684121105072.Spec : Prop :=
  ∀ n, (P940523684121105072.a n : ℤ) = A215311 (n + 1)

end A215311

/-! ## A215311.P13921495664697890353

`∪[A215315(n+1), A268753(n+1)]`
-/

namespace A215311.P13921495664697890353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215311.P13921495664697890353

namespace A215311

/-- `∪[A215315(n+1), A268753(n+1)]` -/
def P13921495664697890353.Spec : Prop :=
  ∀ n, (P13921495664697890353.a n : ℤ) = A215311 (n + 1)

end A215311

/-! ## A215311.P14208836540960601045

`p?[8*floor(n/5)+n+1]`
-/

namespace A215311.P14208836540960601045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * ⌊(n : ℚ) / 5⌋ + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215311.P14208836540960601045

namespace A215311

/-- `p?[8*floor(n/5)+n+1]` -/
def P14208836540960601045.Spec : Prop :=
  ∀ n, P14208836540960601045.a n = A215311 (n + 1)

end A215311

/-!
# A215312: Primes congruent to {1, 2, 3, 4, 5} mod 17.

The programs for A215312, the canonical program `A215312.P10401023248749367399` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215312 has offset 1).

The definition of A215312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215312.P1936695139002673392

`∪[A094657(n+1), A215308(n+1)]`
-/

namespace A215312.P1936695139002673392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P1936695139002673392

namespace A215312

/-- `∪[A094657(n+1), A215308(n+1)]` -/
def P1936695139002673392.Spec : Prop :=
  ∀ n, (P1936695139002673392.a n : ℤ) = A215312 (n + 1)

end A215312

/-! ## A215312.P17660570716411334318

`∪[A129484(n+1), A215316(n+1)]`
-/

namespace A215312.P17660570716411334318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P17660570716411334318

namespace A215312

/-- `∪[A129484(n+1), A215316(n+1)]` -/
def P17660570716411334318.Spec : Prop :=
  ∀ n, (P17660570716411334318.a n : ℤ) = A215312 (n + 1)

end A215312

/-! ## A215312.P10401023248749367399

`∪[A138623(n+1), A215304(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215312

/-- `∪[A138623(n+1), A215304(n+1)]` -/
def P10401023248749367399.Spec : Prop :=
  ∀ n, (P10401023248749367399.a n : ℤ) = A215312 (n + 1)

theorem P10401023248749367399.correct : P10401023248749367399.Spec := by
  intro n
  simp only [A215312, Nat.add_sub_cancel]

end A215312

/-! ## A215312.P14658560274085494625

`∪[A215104(n+1), A215165(n+1)]`
-/

namespace A215312.P14658560274085494625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P14658560274085494625

namespace A215312

/-- `∪[A215104(n+1), A215165(n+1)]` -/
def P14658560274085494625.Spec : Prop :=
  ∀ n, (P14658560274085494625.a n : ℤ) = A215312 (n + 1)

end A215312

/-! ## A215312.P5591989636691604180

`∪[A215104(n+1), A215304(n+1)]`
-/

namespace A215312.P5591989636691604180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P5591989636691604180

namespace A215312

/-- `∪[A215104(n+1), A215304(n+1)]` -/
def P5591989636691604180.Spec : Prop :=
  ∀ n, (P5591989636691604180.a n : ℤ) = A215312 (n + 1)

end A215312

/-! ## A215312.P14239343167289971759

`∪[A215153(n+1), A215316(n+1)]`
-/

namespace A215312.P14239343167289971759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P14239343167289971759

namespace A215312

/-- `∪[A215153(n+1), A215316(n+1)]` -/
def P14239343167289971759.Spec : Prop :=
  ∀ n, (P14239343167289971759.a n : ℤ) = A215312 (n + 1)

end A215312

/-! ## A215312.P4543381433083657515

`∪[A215165(n+1), A215308(n+1)]`
-/

namespace A215312.P4543381433083657515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P4543381433083657515

namespace A215312

/-- `∪[A215165(n+1), A215308(n+1)]` -/
def P4543381433083657515.Spec : Prop :=
  ∀ n, (P4543381433083657515.a n : ℤ) = A215312 (n + 1)

end A215312

/-! ## A215312.P17376781395967605460

`∪[A215169(n+1), A215304(n+1)]`
-/

namespace A215312.P17376781395967605460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P17376781395967605460

namespace A215312

/-- `∪[A215169(n+1), A215304(n+1)]` -/
def P17376781395967605460.Spec : Prop :=
  ∀ n, (P17376781395967605460.a n : ℤ) = A215312 (n + 1)

end A215312

/-! ## A215312.P10867787532040591279

`∪[A215165(n+1), A215316(n+1)]`
-/

namespace A215312.P10867787532040591279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P10867787532040591279

namespace A215312

/-- `∪[A215165(n+1), A215316(n+1)]` -/
def P10867787532040591279.Spec : Prop :=
  ∀ n, (P10867787532040591279.a n : ℤ) = A215312 (n + 1)

end A215312

/-! ## A215312.P8653124284868024671

`∪[A215281(n+1), A215308(n+1)]`
-/

namespace A215312.P8653124284868024671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P8653124284868024671

namespace A215312

/-- `∪[A215281(n+1), A215308(n+1)]` -/
def P8653124284868024671.Spec : Prop :=
  ∀ n, (P8653124284868024671.a n : ℤ) = A215312 (n + 1)

end A215312

/-! ## A215312.P2827511166930446728

`∪[A215304(n+1), A215308(n+1)]`
-/

namespace A215312.P2827511166930446728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P2827511166930446728

namespace A215312

/-- `∪[A215304(n+1), A215308(n+1)]` -/
def P2827511166930446728.Spec : Prop :=
  ∀ n, (P2827511166930446728.a n : ℤ) = A215312 (n + 1)

end A215312

/-! ## A215312.P12790113708238750788

`∪[A215304(n+1), A215316(n+1)]`
-/

namespace A215312.P12790113708238750788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P12790113708238750788

namespace A215312

/-- `∪[A215304(n+1), A215316(n+1)]` -/
def P12790113708238750788.Spec : Prop :=
  ∀ n, (P12790113708238750788.a n : ℤ) = A215312 (n + 1)

end A215312

/-! ## A215312.P9641236703559689938

`∪[A215308(n+1), A215316(n+1)]`
-/

namespace A215312.P9641236703559689938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P9641236703559689938

namespace A215312

/-- `∪[A215308(n+1), A215316(n+1)]` -/
def P9641236703559689938.Spec : Prop :=
  ∀ n, (P9641236703559689938.a n : ℤ) = A215312 (n + 1)

end A215312

/-! ## A215312.P11208995410465440286

`∪[A215316(n+1), A215392(n+1)]`
-/

namespace A215312.P11208995410465440286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215312.P11208995410465440286

namespace A215312

/-- `∪[A215316(n+1), A215392(n+1)]` -/
def P11208995410465440286.Spec : Prop :=
  ∀ n, (P11208995410465440286.a n : ℤ) = A215312 (n + 1)

end A215312

/-! ## A215312.P9047083014418888320

`p?[A017545(A057354(n))+A004273(n)]`
-/

namespace A215312.P9047083014418888320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017545 (A057354 n).toNat + A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215312.P9047083014418888320

namespace A215312

/-- `p?[A017545(A057354(n))+A004273(n)]` -/
def P9047083014418888320.Spec : Prop :=
  ∀ n, P9047083014418888320.a n = A215312 (n + 1)

end A215312

/-! ## A215312.P15879410327083620020

`p?[A008594(A002266(n))+n+1]`
-/

namespace A215312.P15879410327083620020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A002266 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215312.P15879410327083620020

namespace A215312

/-- `p?[A008594(A002266(n))+n+1]` -/
def P15879410327083620020.Spec : Prop :=
  ∀ n, P15879410327083620020.a n = A215312 (n + 1)

end A215312

/-!
# A215313: Primes congruent to {1, 2, 3, 4, 5} mod 19.

The programs for A215313, the canonical program `A215313.P14218060251309606385` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215313 has offset 1).

The definition of A215313 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215313.P14218060251309606385

`∪[A102851(n+1), A215305(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215313

/-- `∪[A102851(n+1), A215305(n+1)]` -/
def P14218060251309606385.Spec : Prop :=
  ∀ n, (P14218060251309606385.a n : ℤ) = A215313 (n + 1)

theorem P14218060251309606385.correct : P14218060251309606385.Spec := by
  intro n
  simp only [A215313, Nat.add_sub_cancel]

end A215313

/-! ## A215313.P12029908877497783469

`∪[A141868(n+1), A215317(n+1)]`
-/

namespace A215313.P12029908877497783469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P12029908877497783469

namespace A215313

/-- `∪[A141868(n+1), A215317(n+1)]` -/
def P12029908877497783469.Spec : Prop :=
  ∀ n, (P12029908877497783469.a n : ℤ) = A215313 (n + 1)

end A215313

/-! ## A215313.P8499824039485556339

`∪[A141870(n+1), A215309(n+1)]`
-/

namespace A215313.P8499824039485556339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P8499824039485556339

namespace A215313

/-- `∪[A141870(n+1), A215309(n+1)]` -/
def P8499824039485556339.Spec : Prop :=
  ∀ n, (P8499824039485556339.a n : ℤ) = A215313 (n + 1)

end A215313

/-! ## A215313.P9949187958555002893

`∪[A215105(n+1), A215166(n+1)]`
-/

namespace A215313.P9949187958555002893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P9949187958555002893

namespace A215313

/-- `∪[A215105(n+1), A215166(n+1)]` -/
def P9949187958555002893.Spec : Prop :=
  ∀ n, (P9949187958555002893.a n : ℤ) = A215313 (n + 1)

end A215313

/-! ## A215313.P17957049485801664551

`∪[A215105(n+1), A215305(n+1)]`
-/

namespace A215313.P17957049485801664551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P17957049485801664551

namespace A215313

/-- `∪[A215105(n+1), A215305(n+1)]` -/
def P17957049485801664551.Spec : Prop :=
  ∀ n, (P17957049485801664551.a n : ℤ) = A215313 (n + 1)

end A215313

/-! ## A215313.P14063413330871251901

`∪[A215154(n+1), A215317(n+1)]`
-/

namespace A215313.P14063413330871251901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P14063413330871251901

namespace A215313

/-- `∪[A215154(n+1), A215317(n+1)]` -/
def P14063413330871251901.Spec : Prop :=
  ∀ n, (P14063413330871251901.a n : ℤ) = A215313 (n + 1)

end A215313

/-! ## A215313.P2181766240497134400

`∪[A215166(n+1), A215309(n+1)]`
-/

namespace A215313.P2181766240497134400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P2181766240497134400

namespace A215313

/-- `∪[A215166(n+1), A215309(n+1)]` -/
def P2181766240497134400.Spec : Prop :=
  ∀ n, (P2181766240497134400.a n : ℤ) = A215313 (n + 1)

end A215313

/-! ## A215313.P555351253398460637

`∪[A215170(n+1), A215305(n+1)]`
-/

namespace A215313.P555351253398460637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P555351253398460637

namespace A215313

/-- `∪[A215170(n+1), A215305(n+1)]` -/
def P555351253398460637.Spec : Prop :=
  ∀ n, (P555351253398460637.a n : ℤ) = A215313 (n + 1)

end A215313

/-! ## A215313.P10585170241265408253

`∪[A215166(n+1), A215317(n+1)]`
-/

namespace A215313.P10585170241265408253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P10585170241265408253

namespace A215313

/-- `∪[A215166(n+1), A215317(n+1)]` -/
def P10585170241265408253.Spec : Prop :=
  ∀ n, (P10585170241265408253.a n : ℤ) = A215313 (n + 1)

end A215313

/-! ## A215313.P17010652912536855743

`∪[A215282(n+1), A215309(n+1)]`
-/

namespace A215313.P17010652912536855743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P17010652912536855743

namespace A215313

/-- `∪[A215282(n+1), A215309(n+1)]` -/
def P17010652912536855743.Spec : Prop :=
  ∀ n, (P17010652912536855743.a n : ℤ) = A215313 (n + 1)

end A215313

/-! ## A215313.P1169320431789495652

`∪[A215305(n+1), A215309(n+1)]`
-/

namespace A215313.P1169320431789495652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P1169320431789495652

namespace A215313

/-- `∪[A215305(n+1), A215309(n+1)]` -/
def P1169320431789495652.Spec : Prop :=
  ∀ n, (P1169320431789495652.a n : ℤ) = A215313 (n + 1)

end A215313

/-! ## A215313.P11487386713949355502

`∪[A215305(n+1), A215317(n+1)]`
-/

namespace A215313.P11487386713949355502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P11487386713949355502

namespace A215313

/-- `∪[A215305(n+1), A215317(n+1)]` -/
def P11487386713949355502.Spec : Prop :=
  ∀ n, (P11487386713949355502.a n : ℤ) = A215313 (n + 1)

end A215313

/-! ## A215313.P1156384448029680742

`∪[A215309(n+1), A215317(n+1)]`
-/

namespace A215313.P1156384448029680742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P1156384448029680742

namespace A215313

/-- `∪[A215309(n+1), A215317(n+1)]` -/
def P1156384448029680742.Spec : Prop :=
  ∀ n, (P1156384448029680742.a n : ℤ) = A215313 (n + 1)

end A215313

/-! ## A215313.P14028267380843742860

`∪[A215317(n+1), A215393(n+1)]`
-/

namespace A215313.P14028267380843742860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215313.P14028267380843742860

namespace A215313

/-- `∪[A215317(n+1), A215393(n+1)]` -/
def P14028267380843742860.Spec : Prop :=
  ∀ n, (P14028267380843742860.a n : ℤ) = A215313 (n + 1)

end A215313

/-! ## A215313.P15749994641650005028

`p?[∑[A010153(A294732(n+2))]]`
-/

namespace A215313.P15749994641650005028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 (A294732 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215313.P15749994641650005028

namespace A215313

/-- `p?[∑[A010153(A294732(n+2))]]` -/
def P15749994641650005028.Spec : Prop :=
  ∀ n, P15749994641650005028.a n = A215313 (n + 1)

end A215313

/-! ## A215313.P3926041932548670848

`p?[A008596(A059995(n))-A051494(n)]`
-/

namespace A215313.P3926041932548670848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008596 (A059995 n).toNat - A051494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215313.P3926041932548670848

namespace A215313

/-- `p?[A008596(A059995(n))-A051494(n)]` -/
def P3926041932548670848.Spec : Prop :=
  ∀ n, P3926041932548670848.a n = A215313 (n + 1)

end A215313

/-! ## A215313.P11765980403355161973

`p?[A093178(n)-A057979(A076314(n))]`
-/

namespace A215313.P11765980403355161973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n - A057979 (A076314 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215313.P11765980403355161973

namespace A215313

/-- `p?[A093178(n)-A057979(A076314(n))]` -/
def P11765980403355161973.Spec : Prop :=
  ∀ n, P11765980403355161973.a n = A215313 (n + 1)

end A215313

/-! ## A215313.P7899382081468696206

`p?[A001281(A059029(n)-A076314(n))]`
-/

namespace A215313.P7899382081468696206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A059029 n - A076314 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215313.P7899382081468696206

namespace A215313

/-- `p?[A001281(A059029(n)-A076314(n))]` -/
def P7899382081468696206.Spec : Prop :=
  ∀ n, P7899382081468696206.a n = A215313 (n + 1)

end A215313

/-!
# A215314: Primes congruent to {2, 3, 4, 5} mod 11.

The programs for A215314, the canonical program `A215314.P15003749524856667591` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215314 has offset 1).

The definition of A215314 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215314.P15003749524856667591

`∪[A141851(n+1), A215102(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215314

/-- `∪[A141851(n+1), A215102(n+1)]` -/
def P15003749524856667591.Spec : Prop :=
  ∀ n, (P15003749524856667591.a n : ℤ) = A215314 (n + 1)

theorem P15003749524856667591.correct : P15003749524856667591.Spec := by
  intro n
  simp only [A215314, Nat.add_sub_cancel]

end A215314

/-! ## A215314.P14875562326178787987

`∪[A141852(n+1), A215279(n+1)]`
-/

namespace A215314.P14875562326178787987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215314.P14875562326178787987

namespace A215314

/-- `∪[A141852(n+1), A215279(n+1)]` -/
def P14875562326178787987.Spec : Prop :=
  ∀ n, (P14875562326178787987.a n : ℤ) = A215314 (n + 1)

end A215314

/-! ## A215314.P3295901380663799564

`∪[A215102(n+1), A215279(n+1)]`
-/

namespace A215314.P3295901380663799564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215314.P3295901380663799564

namespace A215314

/-- `∪[A215102(n+1), A215279(n+1)]` -/
def P3295901380663799564.Spec : Prop :=
  ∀ n, (P3295901380663799564.a n : ℤ) = A215314 (n + 1)

end A215314

/-! ## A215314.P959543367979788454

`∪[A215167(n+1), A215279(n+1)]`
-/

namespace A215314.P959543367979788454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215314.P959543367979788454

namespace A215314

/-- `∪[A215167(n+1), A215279(n+1)]` -/
def P959543367979788454.Spec : Prop :=
  ∀ n, (P959543367979788454.a n : ℤ) = A215314 (n + 1)

end A215314

/-! ## A215314.P6736213791655011319

`p?[7*floor(n/4)+n+2]`
-/

namespace A215314.P6736213791655011319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ⌊(n : ℚ) / 4⌋ + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215314.P6736213791655011319

namespace A215314

/-- `p?[7*floor(n/4)+n+2]` -/
def P6736213791655011319.Spec : Prop :=
  ∀ n, P6736213791655011319.a n = A215314 (n + 1)

end A215314

/-! ## A215314.P869874095556902263

`∩[A215310(n+1), A215354(n+1)]`
-/

namespace A215314.P869874095556902263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215314.P869874095556902263

namespace A215314

/-- `∩[A215310(n+1), A215354(n+1)]` -/
def P869874095556902263.Spec : Prop :=
  ∀ n, (P869874095556902263.a n : ℤ) = A215314 (n + 1)

end A215314

/-! ## A215314.P14287270231022426580

`∩[A062096(n+1), A215354(n+1)]`
-/

namespace A215314.P14287270231022426580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215314.P14287270231022426580

namespace A215314

/-- `∩[A062096(n+1), A215354(n+1)]` -/
def P14287270231022426580.Spec : Prop :=
  ∀ n, (P14287270231022426580.a n : ℤ) = A215314 (n + 1)

end A215314

/-! ## A215314.P487826012088808516

`∩[A032797(n+1), A215354(n+1)]`
-/

namespace A215314.P487826012088808516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215314.P487826012088808516

namespace A215314

/-- `∩[A032797(n+1), A215354(n+1)]` -/
def P487826012088808516.Spec : Prop :=
  ∀ n, (P487826012088808516.a n : ℤ) = A215314 (n + 1)

end A215314

/-! ## A215314.P16727386189018354834

`∩[A160542(n+1), A215354(n+1)]`
-/

namespace A215314.P16727386189018354834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215314.P16727386189018354834

namespace A215314

/-- `∩[A160542(n+1), A215354(n+1)]` -/
def P16727386189018354834.Spec : Prop :=
  ∀ n, (P16727386189018354834.a n : ℤ) = A215314 (n + 1)

end A215314

/-! ## A215314.P14248490951013991384

`∩[A183295(n+1), A215354(n+1)]`
-/

namespace A215314.P14248490951013991384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215314.P14248490951013991384

namespace A215314

/-- `∩[A183295(n+1), A215354(n+1)]` -/
def P14248490951013991384.Spec : Prop :=
  ∀ n, (P14248490951013991384.a n : ℤ) = A215314 (n + 1)

end A215314

/-! ## A215314.P13788994491391607422

`∩[A183223(n+1), A215354(n+1)]`
-/

namespace A215314.P13788994491391607422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215314.P13788994491391607422

namespace A215314

/-- `∩[A183223(n+1), A215354(n+1)]` -/
def P13788994491391607422.Spec : Prop :=
  ∀ n, (P13788994491391607422.a n : ℤ) = A215314 (n + 1)

end A215314

/-! ## A215314.P5944947547178110285

`record[A014963(7*floor(n/4)+n+2)]`
-/

namespace A215314.P5944947547178110285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (7 * ⌊(n : ℚ) / 4⌋ + (n : ℤ) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215314.P5944947547178110285

namespace A215314

/-- `record[A014963(7*floor(n/4)+n+2)]` -/
def P5944947547178110285.Spec : Prop :=
  ∀ n, P5944947547178110285.a n = A215314 (n + 1)

end A215314

/-! ## A215314.P6587624470982077437

`filter[A215354(n+1), A145568(#)]`
-/

namespace A215314.P6587624470982077437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A215314.P6587624470982077437

namespace A215314

/-- `filter[A215354(n+1), A145568(#)]` -/
def P6587624470982077437.Spec : Prop :=
  ∀ n, P6587624470982077437.a n = A215314 (n + 1)

end A215314

/-! ## A215314.P13184835881675736149

`∩[A215354(n+1), A337843(n)]`
-/

namespace A215314.P13184835881675736149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215314.P13184835881675736149

namespace A215314

/-- `∩[A215354(n+1), A337843(n)]` -/
def P13184835881675736149.Spec : Prop :=
  ∀ n, (P13184835881675736149.a n : ℤ) = A215314 (n + 1)

end A215314

/-! ## A215314.P18172578786024773962

`eq[A231820(n+1), A244895(A314133(n))]`
-/

namespace A215314.P18172578786024773962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A314133 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215314.P18172578786024773962

namespace A215314

/-- `eq[A231820(n+1), A244895(A314133(n))]` -/
def P18172578786024773962.Spec : Prop :=
  ∀ n, (P18172578786024773962.a n : ℤ) = A215314 (n + 1)

end A215314

/-! ## A215314.P471430855299548672

`record[p?[A315332(n)-A313321(n)]]`
-/

namespace A215314.P471430855299548672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315332 n - A313321 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215314.P471430855299548672

namespace A215314

/-- `record[p?[A315332(n)-A313321(n)]]` -/
def P471430855299548672.Spec : Prop :=
  ∀ n, P471430855299548672.a n = A215314 (n + 1)

end A215314

/-!
# A215315: Primes congruent to {2, 3, 4, 5} mod 13.

The programs for A215315, the canonical program `A215315.P1023930215791107352` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215315 has offset 1).

The definition of A215315 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215315.P1023930215791107352

`∪[A093191(n+1), A215103(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215315

/-- `∪[A093191(n+1), A215103(n+1)]` -/
def P1023930215791107352.Spec : Prop :=
  ∀ n, (P1023930215791107352.a n : ℤ) = A215315 (n + 1)

theorem P1023930215791107352.correct : P1023930215791107352.Spec := by
  intro n
  simp only [A215315, Nat.add_sub_cancel]

end A215315

/-! ## A215315.P9193642811320333399

`∪[A102732(n+1), A215280(n+1)]`
-/

namespace A215315.P9193642811320333399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215315.P9193642811320333399

namespace A215315

/-- `∪[A102732(n+1), A215280(n+1)]` -/
def P9193642811320333399.Spec : Prop :=
  ∀ n, (P9193642811320333399.a n : ℤ) = A215315 (n + 1)

end A215315

/-! ## A215315.P4410943236051880919

`∪[A215103(n+1), A215280(n+1)]`
-/

namespace A215315.P4410943236051880919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215315.P4410943236051880919

namespace A215315

/-- `∪[A215103(n+1), A215280(n+1)]` -/
def P4410943236051880919.Spec : Prop :=
  ∀ n, (P4410943236051880919.a n : ℤ) = A215315 (n + 1)

end A215315

/-! ## A215315.P9293991021335631804

`∪[A215168(n+1), A215280(n+1)]`
-/

namespace A215315.P9293991021335631804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215315.P9293991021335631804

namespace A215315

/-- `∪[A215168(n+1), A215280(n+1)]` -/
def P9293991021335631804.Spec : Prop :=
  ∀ n, (P9293991021335631804.a n : ℤ) = A215315 (n + 1)

end A215315

/-! ## A215315.P5673841522302633220

`p?[A215355(n+1)+char[3]]`
-/

namespace A215315.P5673841522302633220
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215315.P5673841522302633220

namespace A215315

/-- `p?[A215355(n+1)+char[3]]` -/
def P5673841522302633220.Spec : Prop :=
  ∀ n, P5673841522302633220.a n = A215315 (n + 1)

end A215315

/-! ## A215315.P3509425640739684162

`p?[or(A061007(n+1), A215355(n+1))]`
-/

namespace A215315.P3509425640739684162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A061007 (n + 1)) (A215355 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215315.P3509425640739684162

namespace A215315

/-- `p?[or(A061007(n+1), A215355(n+1))]` -/
def P3509425640739684162.Spec : Prop :=
  ∀ n, P3509425640739684162.a n = A215315 (n + 1)

end A215315

/-! ## A215315.P784728036277661959

`∩[A215311(n+1), A215355(n+1)]`
-/

namespace A215315.P784728036277661959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215315.P784728036277661959

namespace A215315

/-- `∩[A215311(n+1), A215355(n+1)]` -/
def P784728036277661959.Spec : Prop :=
  ∀ n, (P784728036277661959.a n : ℤ) = A215315 (n + 1)

end A215315

/-! ## A215315.P18080734138623254652

`p?[A017185(A002265(n))+n]`
-/

namespace A215315.P18080734138623254652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 (A002265 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215315.P18080734138623254652

namespace A215315

/-- `p?[A017185(A002265(n))+n]` -/
def P18080734138623254652.Spec : Prop :=
  ∀ n, P18080734138623254652.a n = A215315 (n + 1)

end A215315

/-! ## A215315.P12497116312890710996

`p?[A168413(A129756(n))+n]`
-/

namespace A215315.P12497116312890710996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (A129756 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215315.P12497116312890710996

namespace A215315

/-- `p?[A168413(A129756(n))+n]` -/
def P12497116312890710996.Spec : Prop :=
  ∀ n, P12497116312890710996.a n = A215315 (n + 1)

end A215315

/-! ## A215315.P1847633882166842712

`p?[A168413(A008619(n))+n-11]`
-/

namespace A215315.P1847633882166842712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (A008619 n).toNat + (n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215315.P1847633882166842712

namespace A215315

/-- `p?[A168413(A008619(n))+n-11]` -/
def P1847633882166842712.Spec : Prop :=
  ∀ n, P1847633882166842712.a n = A215315 (n + 1)

end A215315

/-! ## A215315.P3593193284968756829

`p?[9*A004526(A004526(n))+n+2]`
-/

namespace A215315.P3593193284968756829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A004526 (A004526 n).toNat + (n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215315.P3593193284968756829

namespace A215315

/-- `p?[9*A004526(A004526(n))+n+2]` -/
def P3593193284968756829.Spec : Prop :=
  ∀ n, P3593193284968756829.a n = A215315 (n + 1)

end A215315

/-! ## A215315.P15071790144123576186

`∩[A215355(n+1), A336370(n+1)]`
-/

namespace A215315.P15071790144123576186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215315.P15071790144123576186

namespace A215315

/-- `∩[A215355(n+1), A336370(n+1)]` -/
def P15071790144123576186.Spec : Prop :=
  ∀ n, (P15071790144123576186.a n : ℤ) = A215315 (n + 1)

end A215315

/-! ## A215315.P4555315602926380830

`p?[A017233(A001068(n))-(8*n+4)]`
-/

namespace A215315.P4555315602926380830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 (A001068 n).toNat - (8 * n + 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215315.P4555315602926380830

namespace A215315

/-- `p?[A017233(A001068(n))-(8*n+4)]` -/
def P4555315602926380830.Spec : Prop :=
  ∀ n, P4555315602926380830.a n = A215315 (n + 1)

end A215315

/-! ## A215315.P13802815557555822288

`p?[A017221(A001068(n))-A017113(n)+1]`
-/

namespace A215315.P13802815557555822288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 (A001068 n).toNat - A017113 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215315.P13802815557555822288

namespace A215315

/-- `p?[A017221(A001068(n))-A017113(n)+1]` -/
def P13802815557555822288.Spec : Prop :=
  ∀ n, P13802815557555822288.a n = A215315 (n + 1)

end A215315

/-! ## A215315.P3517958261620328009

`p?[A047247(A047454(n+1))+A002265(n)]`
-/

namespace A215315.P3517958261620328009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047247 (A047454 (n + 1)).toNat + A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215315.P3517958261620328009

namespace A215315

/-- `p?[A047247(A047454(n+1))+A002265(n)]` -/
def P3517958261620328009.Spec : Prop :=
  ∀ n, P3517958261620328009.a n = A215315 (n + 1)

end A215315

/-! ## A215315.P1114098929591515809

`∩[A032798(n+1), A215355(n+1)]`
-/

namespace A215315.P1114098929591515809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215315.P1114098929591515809

namespace A215315

/-- `∩[A032798(n+1), A215355(n+1)]` -/
def P1114098929591515809.Spec : Prop :=
  ∀ n, (P1114098929591515809.a n : ℤ) = A215315 (n + 1)

end A215315

/-! ## A215315.P10872764199140130499

`∩[A113763(n+1), A215355(n+1)]`
-/

namespace A215315.P10872764199140130499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215315.P10872764199140130499

namespace A215315

/-- `∩[A113763(n+1), A215355(n+1)]` -/
def P10872764199140130499.Spec : Prop :=
  ∀ n, (P10872764199140130499.a n : ℤ) = A215315 (n + 1)

end A215315

/-! ## A215315.P5836601963696751253

`∩[A183298(n+1), A215355(n+1)]`
-/

namespace A215315.P5836601963696751253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215315.P5836601963696751253

namespace A215315

/-- `∩[A183298(n+1), A215355(n+1)]` -/
def P5836601963696751253.Spec : Prop :=
  ∀ n, (P5836601963696751253.a n : ℤ) = A215315 (n + 1)

end A215315

/-! ## A215315.P16762602542710361191

`filter[A215355(n+1), A267922(#)]`
-/

namespace A215315.P16762602542710361191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267922 (f1 j).toNat = 1) n)

end

end A215315.P16762602542710361191

namespace A215315

/-- `filter[A215355(n+1), A267922(#)]` -/
def P16762602542710361191.Spec : Prop :=
  ∀ n, P16762602542710361191.a n = A215315 (n + 1)

end A215315

/-!
# A215316: Primes congruent to {2, 3, 4, 5} mod 17.

The programs for A215316, the canonical program `A215316.P17217771670333190806` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215316 has offset 1).

The definition of A215316 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215316.P15351567211327908142

`∪[A094657(n+1), A215104(n+1)]`
-/

namespace A215316.P15351567211327908142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215316.P15351567211327908142

namespace A215316

/-- `∪[A094657(n+1), A215104(n+1)]` -/
def P15351567211327908142.Spec : Prop :=
  ∀ n, (P15351567211327908142.a n : ℤ) = A215316 (n + 1)

end A215316

/-! ## A215316.P17217771670333190806

`∪[A138623(n+1), A215281(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215316

/-- `∪[A138623(n+1), A215281(n+1)]` -/
def P17217771670333190806.Spec : Prop :=
  ∀ n, (P17217771670333190806.a n : ℤ) = A215316 (n + 1)

theorem P17217771670333190806.correct : P17217771670333190806.Spec := by
  intro n
  simp only [A215316, Nat.add_sub_cancel]

end A215316

/-! ## A215316.P4495950351232833972

`∪[A215104(n+1), A215281(n+1)]`
-/

namespace A215316.P4495950351232833972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215316.P4495950351232833972

namespace A215316

/-- `∪[A215104(n+1), A215281(n+1)]` -/
def P4495950351232833972.Spec : Prop :=
  ∀ n, (P4495950351232833972.a n : ℤ) = A215316 (n + 1)

end A215316

/-! ## A215316.P2810230853195158924

`∪[A215169(n+1), A215281(n+1)]`
-/

namespace A215316.P2810230853195158924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215316.P2810230853195158924

namespace A215316

/-- `∪[A215169(n+1), A215281(n+1)]` -/
def P2810230853195158924.Spec : Prop :=
  ∀ n, (P2810230853195158924.a n : ℤ) = A215316 (n + 1)

end A215316

/-! ## A215316.P6119965299332162057

`A215356(round((n/(n+1))²+n+1))`
-/

namespace A215316.P6119965299332162057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215356 (SequenceMachineLib.roundAway (((n : ℚ) / (n + 1 : ℚ)) ^ 2 + (n + 1 : ℚ))).toNat

end

end A215316.P6119965299332162057

namespace A215316

/-- `A215356(round((n/(n+1))²+n+1))` -/
def P6119965299332162057.Spec : Prop :=
  ∀ n, P6119965299332162057.a n = A215316 (n + 1)

end A215316

/-! ## A215316.P9678335673369662925

`∩[A215312(n+1), A215356(n+1)]`
-/

namespace A215316.P9678335673369662925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215316.P9678335673369662925

namespace A215316

/-- `∩[A215312(n+1), A215356(n+1)]` -/
def P9678335673369662925.Spec : Prop :=
  ∀ n, (P9678335673369662925.a n : ℤ) = A215316 (n + 1)

end A215316

/-! ## A215316.P12110556847378841361

`p?[A215356(n+1)%A271457(n)]`
-/

namespace A215316.P12110556847378841361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215356 (n + 1)) (A271457 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215316.P12110556847378841361

namespace A215316

/-- `p?[A215356(n+1)%A271457(n)]` -/
def P12110556847378841361.Spec : Prop :=
  ∀ n, P12110556847378841361.a n = A215316 (n + 1)

end A215316

/-! ## A215316.P18352109307880972067

`p?[13*A002265(n)+n+2]`
-/

namespace A215316.P18352109307880972067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A002265 n + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215316.P18352109307880972067

namespace A215316

/-- `p?[13*A002265(n)+n+2]` -/
def P18352109307880972067.Spec : Prop :=
  ∀ n, P18352109307880972067.a n = A215316 (n + 1)

end A215316

/-! ## A215316.P16308749865888485972

`p?[A153080(A002265(n))+n]`
-/

namespace A215316.P16308749865888485972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153080 (A002265 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215316.P16308749865888485972

namespace A215316

/-- `p?[A153080(A002265(n))+n]` -/
def P16308749865888485972.Spec : Prop :=
  ∀ n, P16308749865888485972.a n = A215316 (n + 1)

end A215316

/-! ## A215316.P6560067581895646900

`p?[13*A004526(A004526(n))+n+2]`
-/

namespace A215316.P6560067581895646900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A004526 (A004526 n).toNat + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215316.P6560067581895646900

namespace A215316

/-- `p?[13*A004526(A004526(n))+n+2]` -/
def P6560067581895646900.Spec : Prop :=
  ∀ n, P6560067581895646900.a n = A215316 (n + 1)

end A215316

/-! ## A215316.P8133349500911017382

`p?[A190991(A002265(n))+A116966(n)]`
-/

namespace A215316.P8133349500911017382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A002265 n).toNat + A116966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215316.P8133349500911017382

namespace A215316

/-- `p?[A190991(A002265(n))+A116966(n)]` -/
def P8133349500911017382.Spec : Prop :=
  ∀ n, P8133349500911017382.a n = A215316 (n + 1)

end A215316

/-! ## A215316.P3493627016002497415

`p?[A056020(A129756(n))+A047454(n+1)]`
-/

namespace A215316.P3493627016002497415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A129756 n).toNat + A047454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215316.P3493627016002497415

namespace A215316

/-- `p?[A056020(A129756(n))+A047454(n+1)]` -/
def P3493627016002497415.Spec : Prop :=
  ∀ n, P3493627016002497415.a n = A215316 (n + 1)

end A215316

/-! ## A215316.P14536835207566749082

`p?[A190991(A002265(n))-A001489(n)+1]`
-/

namespace A215316.P14536835207566749082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A002265 n).toNat - A001489 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215316.P14536835207566749082

namespace A215316

/-- `p?[A190991(A002265(n))-A001489(n)+1]` -/
def P14536835207566749082.Spec : Prop :=
  ∀ n, P14536835207566749082.a n = A215316 (n + 1)

end A215316

/-! ## A215316.P3987864019285485441

`p?[A047454(A047454(n+1))+A008621(n)]`
-/

namespace A215316.P3987864019285485441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (A047454 (n + 1)).toNat + A008621 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215316.P3987864019285485441

namespace A215316

/-- `p?[A047454(A047454(n+1))+A008621(n)]` -/
def P3987864019285485441.Spec : Prop :=
  ∀ n, P3987864019285485441.a n = A215316 (n + 1)

end A215316

/-! ## A215316.P12989866300723898695

`p?[A260181(A047454(n+1))-A057353(n)]`
-/

namespace A215316.P12989866300723898695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (A047454 (n + 1)).toNat - A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215316.P12989866300723898695

namespace A215316

/-- `p?[A260181(A047454(n+1))-A057353(n)]` -/
def P12989866300723898695.Spec : Prop :=
  ∀ n, P12989866300723898695.a n = A215316 (n + 1)

end A215316

/-! ## A215316.P17343289322337084827

`∩[A160543(n+1), A215356(n+1)]`
-/

namespace A215316.P17343289322337084827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160543 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215316.P17343289322337084827

namespace A215316

/-- `∩[A160543(n+1), A215356(n+1)]` -/
def P17343289322337084827.Spec : Prop :=
  ∀ n, (P17343289322337084827.a n : ℤ) = A215316 (n + 1)

end A215316

/-! ## A215316.P16236523305209799660

`∩[A215356(n+1), A377306(n+1)]`
-/

namespace A215316.P16236523305209799660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215316.P16236523305209799660

namespace A215316

/-- `∩[A215356(n+1), A377306(n+1)]` -/
def P16236523305209799660.Spec : Prop :=
  ∀ n, (P16236523305209799660.a n : ℤ) = A215316 (n + 1)

end A215316

/-!
# A215317: Primes congruent to {2, 3, 4, 5} mod 19.

The programs for A215317, the canonical program `A215317.P13650566873263467834` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215317 has offset 1).

The definition of A215317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215317.P13650566873263467834

`∪[A102851(n+1), A215282(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215317

/-- `∪[A102851(n+1), A215282(n+1)]` -/
def P13650566873263467834.Spec : Prop :=
  ∀ n, (P13650566873263467834.a n : ℤ) = A215317 (n + 1)

theorem P13650566873263467834.correct : P13650566873263467834.Spec := by
  intro n
  simp only [A215317, Nat.add_sub_cancel]

end A215317

/-! ## A215317.P14083865061841919476

`∪[A141870(n+1), A215105(n+1)]`
-/

namespace A215317.P14083865061841919476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215317.P14083865061841919476

namespace A215317

/-- `∪[A141870(n+1), A215105(n+1)]` -/
def P14083865061841919476.Spec : Prop :=
  ∀ n, (P14083865061841919476.a n : ℤ) = A215317 (n + 1)

end A215317

/-! ## A215317.P2964758298457547354

`∪[A215105(n+1), A215282(n+1)]`
-/

namespace A215317.P2964758298457547354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215317.P2964758298457547354

namespace A215317

/-- `∪[A215105(n+1), A215282(n+1)]` -/
def P2964758298457547354.Spec : Prop :=
  ∀ n, (P2964758298457547354.a n : ℤ) = A215317 (n + 1)

end A215317

/-! ## A215317.P8006620192327853539

`∪[A215170(n+1), A215282(n+1)]`
-/

namespace A215317.P8006620192327853539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215317.P8006620192327853539

namespace A215317

/-- `∪[A215170(n+1), A215282(n+1)]` -/
def P8006620192327853539.Spec : Prop :=
  ∀ n, (P8006620192327853539.a n : ℤ) = A215317 (n + 1)

end A215317

/-! ## A215317.P14733700874522486543

`record[A215357(n+1)%A153057(n)]`
-/

namespace A215317.P14733700874522486543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215357 (n + 1)) (A153057 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215317.P14733700874522486543

namespace A215317

/-- `record[A215357(n+1)%A153057(n)]` -/
def P14733700874522486543.Spec : Prop :=
  ∀ n, P14733700874522486543.a n = A215317 (n + 1)

end A215317

/-! ## A215317.P4892070314264096050

`p?[a(n-4)+19]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=5`
-/

namespace A215317.P4892070314264096050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 3, 4, 5] fun n f1 =>
  f1 (n - 4) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215317.P4892070314264096050

namespace A215317

/-- `p?[a(n-4)+19]` -/
def P4892070314264096050.Spec : Prop :=
  ∀ n, (P4892070314264096050.a n : ℤ) = A215317 (n + 1)

end A215317

/-! ## A215317.P8292001593430272837

`∩[A215313(n+1), A215357(n+1)]`
-/

namespace A215317.P8292001593430272837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215317.P8292001593430272837

namespace A215317

/-- `∩[A215313(n+1), A215357(n+1)]` -/
def P8292001593430272837.Spec : Prop :=
  ∀ n, (P8292001593430272837.a n : ℤ) = A215317 (n + 1)

end A215317

/-! ## A215317.P17538228369751716091

`p?[∑[A010121(n)²]-2]`
-/

namespace A215317.P17538228369751716091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215317.P17538228369751716091

namespace A215317

/-- `p?[∑[A010121(n)²]-2]` -/
def P17538228369751716091.Spec : Prop :=
  ∀ n, P17538228369751716091.a n = A215317 (n + 1)

end A215317

/-! ## A215317.P1467260577257835049

`p?[A008597(A002265(n))+n+2]`
-/

namespace A215317.P1467260577257835049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (A002265 n).toNat + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215317.P1467260577257835049

namespace A215317

/-- `p?[A008597(A002265(n))+n+2]` -/
def P1467260577257835049.Spec : Prop :=
  ∀ n, P1467260577257835049.a n = A215317 (n + 1)

end A215317

/-! ## A215317.P11112943351051459606

`p?[15*A004526(A004526(n))+n+2]`
-/

namespace A215317.P11112943351051459606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A004526 (A004526 n).toNat + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215317.P11112943351051459606

namespace A215317

/-- `p?[15*A004526(A004526(n))+n+2]` -/
def P11112943351051459606.Spec : Prop :=
  ∀ n, P11112943351051459606.a n = A215317 (n + 1)

end A215317

/-! ## A215317.P5237682385980816109

`p?[A257645(A001068(n))%A017053(n)]`
-/

namespace A215317.P5237682385980816109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A257645 (A001068 n).toNat) (A017053 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215317.P5237682385980816109

namespace A215317

/-- `p?[A257645(A001068(n))%A017053(n)]` -/
def P5237682385980816109.Spec : Prop :=
  ∀ n, P5237682385980816109.a n = A215317 (n + 1)

end A215317

/-! ## A215317.P1960800283630110409

`∩[A198191(n+1), A215357(n+1)]`
-/

namespace A215317.P1960800283630110409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215317.P1960800283630110409

namespace A215317

/-- `∩[A198191(n+1), A215357(n+1)]` -/
def P1960800283630110409.Spec : Prop :=
  ∀ n, (P1960800283630110409.a n : ℤ) = A215317 (n + 1)

end A215317

/-! ## A215317.P1166696103084013747

`∩[A160544(n+1), A215357(n+1)]`
-/

namespace A215317.P1166696103084013747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215317.P1166696103084013747

namespace A215317

/-- `∩[A160544(n+1), A215357(n+1)]` -/
def P1166696103084013747.Spec : Prop :=
  ∀ n, (P1166696103084013747.a n : ℤ) = A215317 (n + 1)

end A215317

/-! ## A215317.P10055139407336165270

`∩[A192188(n+1), A215357(n+1)]`
-/

namespace A215317.P10055139407336165270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215317.P10055139407336165270

namespace A215317

/-- `∩[A192188(n+1), A215357(n+1)]` -/
def P10055139407336165270.Spec : Prop :=
  ∀ n, (P10055139407336165270.a n : ℤ) = A215317 (n + 1)

end A215317

/-! ## A215317.P2145664661920215461

`A215357(A002024(abs(A046691(n))))`
-/

namespace A215317.P2145664661920215461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215357 (A002024 |A046691 n|.toNat).toNat

end

end A215317.P2145664661920215461

namespace A215317

/-- `A215357(A002024(abs(A046691(n))))` -/
def P2145664661920215461.Spec : Prop :=
  ∀ n, P2145664661920215461.a n = A215317 (n + 1)

end A215317

/-!
# A215318: Primes congruent to {1, 2, 3, 5, 6} mod 11.

The programs for A215318, the canonical program `A215318.P14457324379204297815` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215318 has offset 1).

The definition of A215318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215318.P14457324379204297815

`∪[A141853(n+1), A215306(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A215318

/-- `∪[A141853(n+1), A215306(n+1)]` -/
def P14457324379204297815.Spec : Prop :=
  ∀ n, (P14457324379204297815.a n : ℤ) = A215318 (n + 1)

theorem P14457324379204297815.correct : P14457324379204297815.Spec := by
  intro n
  simp only [A215318, Nat.add_sub_cancel]

end A215318

/-! ## A215318.P2934884690210934931

`∪[A141852(n+1), A215382(n+1)]`
-/

namespace A215318.P2934884690210934931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215318.P2934884690210934931

namespace A215318

/-- `∪[A141852(n+1), A215382(n+1)]` -/
def P2934884690210934931.Spec : Prop :=
  ∀ n, (P2934884690210934931.a n : ℤ) = A215318 (n + 1)

end A215318

/-! ## A215318.P140732209209416803

`∪[A215106(n+1), A215134(n+1)]`
-/

namespace A215318.P140732209209416803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215318.P140732209209416803

namespace A215318

/-- `∪[A215106(n+1), A215134(n+1)]` -/
def P140732209209416803.Spec : Prop :=
  ∀ n, (P140732209209416803.a n : ℤ) = A215318 (n + 1)

end A215318

/-! ## A215318.P13566708428827553457

`∪[A215106(n+1), A215306(n+1)]`
-/

namespace A215318.P13566708428827553457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215318.P13566708428827553457

namespace A215318

/-- `∪[A215106(n+1), A215306(n+1)]` -/
def P13566708428827553457.Spec : Prop :=
  ∀ n, (P13566708428827553457.a n : ℤ) = A215318 (n + 1)

end A215318

/-! ## A215318.P18171597991522499006

`∪[A215102(n+1), A215382(n+1)]`
-/

namespace A215318.P18171597991522499006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215318.P18171597991522499006

namespace A215318

/-- `∪[A215102(n+1), A215382(n+1)]` -/
def P18171597991522499006.Spec : Prop :=
  ∀ n, (P18171597991522499006.a n : ℤ) = A215318 (n + 1)

end A215318

/-! ## A215318.P8172550315709770471

`∪[A215106(n+1), A215382(n+1)]`
-/

namespace A215318.P8172550315709770471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215318.P8172550315709770471

namespace A215318

/-- `∪[A215106(n+1), A215382(n+1)]` -/
def P8172550315709770471.Spec : Prop :=
  ∀ n, (P8172550315709770471.a n : ℤ) = A215318 (n + 1)

end A215318

/-! ## A215318.P1040205125672098249

`∪[A215106(n+1), A215390(n+1)]`
-/

namespace A215318.P1040205125672098249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215318.P1040205125672098249

namespace A215318

/-- `∪[A215106(n+1), A215390(n+1)]` -/
def P1040205125672098249.Spec : Prop :=
  ∀ n, (P1040205125672098249.a n : ℤ) = A215318 (n + 1)

end A215318

/-! ## A215318.P10193486586249034591

`∪[A215167(n+1), A215382(n+1)]`
-/

namespace A215318.P10193486586249034591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215318.P10193486586249034591

namespace A215318

/-- `∪[A215167(n+1), A215382(n+1)]` -/
def P10193486586249034591.Spec : Prop :=
  ∀ n, (P10193486586249034591.a n : ℤ) = A215318 (n + 1)

end A215318

/-! ## A215318.P12263102366766566606

`∪[A215306(n+1), A215382(n+1)]`
-/

namespace A215318.P12263102366766566606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215318.P12263102366766566606

namespace A215318

/-- `∪[A215306(n+1), A215382(n+1)]` -/
def P12263102366766566606.Spec : Prop :=
  ∀ n, (P12263102366766566606.a n : ℤ) = A215318 (n + 1)

end A215318

/-! ## A215318.P18379368081257249485

`∪[A215306(n+1), A215386(n+1)]`
-/

namespace A215318.P18379368081257249485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215318.P18379368081257249485

namespace A215318

/-- `∪[A215306(n+1), A215386(n+1)]` -/
def P18379368081257249485.Spec : Prop :=
  ∀ n, (P18379368081257249485.a n : ℤ) = A215318 (n + 1)

end A215318

/-! ## A215318.P10735695980648700262

`p?[A033627(n+2)-A010761(n-A002264(n)+1)]`
-/

namespace A215318.P10735695980648700262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033627 (n + 2) - A010761 ((n : ℤ) - A002264 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215318.P10735695980648700262

namespace A215318

/-- `p?[A033627(n+2)-A010761(n-A002264(n)+1)]` -/
def P10735695980648700262.Spec : Prop :=
  ∀ n, P10735695980648700262.a n = A215318 (n + 1)

end A215318

/-! ## A215318.P2505202866952066847

`p?[record[A204454(n+1)-A203571(n)]]`
-/

namespace A215318.P2505202866952066847
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204454 (n + 1) - A203571 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215318.P2505202866952066847

namespace A215318

/-- `p?[record[A204454(n+1)-A203571(n)]]` -/
def P2505202866952066847.Spec : Prop :=
  ∀ n, P2505202866952066847.a n = A215318 (n + 1)

end A215318

/-! ## A215318.P5572098513625058720

`record[A006530(A057360(xor(6, n+1))+n)]`
-/

namespace A215318.P5572098513625058720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A057360 (Nat.xor 6 (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215318.P5572098513625058720

namespace A215318

/-- `record[A006530(A057360(xor(6, n+1))+n)]` -/
def P5572098513625058720.Spec : Prop :=
  ∀ n, P5572098513625058720.a n = A215318 (n + 1)

end A215318

/-! ## A215318.P7981669465389092610

`record[A020639(A057360(xor(6, n+1))+n)]`
-/

namespace A215318.P7981669465389092610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A057360 (Nat.xor 6 (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215318.P7981669465389092610

namespace A215318

/-- `record[A020639(A057360(xor(6, n+1))+n)]` -/
def P7981669465389092610.Spec : Prop :=
  ∀ n, P7981669465389092610.a n = A215318 (n + 1)

end A215318

/-! ## A215318.P4063289298925729465

`p?[A265188(n+1)+A010673(A008486(n))]`
-/

namespace A215318.P4063289298925729465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265188 (n + 1) + A010673 (A008486 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215318.P4063289298925729465

namespace A215318

/-- `p?[A265188(n+1)+A010673(A008486(n))]` -/
def P4063289298925729465.Spec : Prop :=
  ∀ n, P4063289298925729465.a n = A215318 (n + 1)

end A215318

/-!
# A215319: Primes congruent to {1, 2, 3, 5, 6} mod 13.

The programs for A215319, the canonical program `A215319.P9914766944936450930` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215319 has offset 1).

The definition of A215319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215319.P8191180269460944368

`∪[A093350(n+1), A215307(n+1)]`
-/

namespace A215319.P8191180269460944368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215319.P8191180269460944368

namespace A215319

/-- `∪[A093350(n+1), A215307(n+1)]` -/
def P8191180269460944368.Spec : Prop :=
  ∀ n, (P8191180269460944368.a n : ℤ) = A215319 (n + 1)

end A215319

/-! ## A215319.P9607224129539735673

`∪[A102732(n+1), A215383(n+1)]`
-/

namespace A215319.P9607224129539735673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215319.P9607224129539735673

namespace A215319

/-- `∪[A102732(n+1), A215383(n+1)]` -/
def P9607224129539735673.Spec : Prop :=
  ∀ n, (P9607224129539735673.a n : ℤ) = A215319 (n + 1)

end A215319

/-! ## A215319.P12177725834529017180

`∪[A215131(n+1), A215135(n+1)]`
-/

namespace A215319.P12177725834529017180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215319.P12177725834529017180

namespace A215319

/-- `∪[A215131(n+1), A215135(n+1)]` -/
def P12177725834529017180.Spec : Prop :=
  ∀ n, (P12177725834529017180.a n : ℤ) = A215319 (n + 1)

end A215319

/-! ## A215319.P16602582474660525336

`∪[A215131(n+1), A215307(n+1)]`
-/

namespace A215319.P16602582474660525336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215319.P16602582474660525336

namespace A215319

/-- `∪[A215131(n+1), A215307(n+1)]` -/
def P16602582474660525336.Spec : Prop :=
  ∀ n, (P16602582474660525336.a n : ℤ) = A215319 (n + 1)

end A215319

/-! ## A215319.P7848547888896888376

`∪[A215103(n+1), A215383(n+1)]`
-/

namespace A215319.P7848547888896888376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215319.P7848547888896888376

namespace A215319

/-- `∪[A215103(n+1), A215383(n+1)]` -/
def P7848547888896888376.Spec : Prop :=
  ∀ n, (P7848547888896888376.a n : ℤ) = A215319 (n + 1)

end A215319

/-! ## A215319.P775642541261654511

`∪[A215131(n+1), A215383(n+1)]`
-/

namespace A215319.P775642541261654511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215319.P775642541261654511

namespace A215319

/-- `∪[A215131(n+1), A215383(n+1)]` -/
def P775642541261654511.Spec : Prop :=
  ∀ n, (P775642541261654511.a n : ℤ) = A215319 (n + 1)

end A215319

/-! ## A215319.P9914766944936450930

`∪[A215131(n+1), A215391(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215319

/-- `∪[A215131(n+1), A215391(n+1)]` -/
def P9914766944936450930.Spec : Prop :=
  ∀ n, (P9914766944936450930.a n : ℤ) = A215319 (n + 1)

theorem P9914766944936450930.correct : P9914766944936450930.Spec := by
  intro n
  simp only [A215319, Nat.add_sub_cancel]

end A215319

/-! ## A215319.P7278929135252455327

`∪[A215168(n+1), A215383(n+1)]`
-/

namespace A215319.P7278929135252455327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215319.P7278929135252455327

namespace A215319

/-- `∪[A215168(n+1), A215383(n+1)]` -/
def P7278929135252455327.Spec : Prop :=
  ∀ n, (P7278929135252455327.a n : ℤ) = A215319 (n + 1)

end A215319

/-! ## A215319.P2452570639240671500

`∪[A215307(n+1), A215383(n+1)]`
-/

namespace A215319.P2452570639240671500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215319.P2452570639240671500

namespace A215319

/-- `∪[A215307(n+1), A215383(n+1)]` -/
def P2452570639240671500.Spec : Prop :=
  ∀ n, (P2452570639240671500.a n : ℤ) = A215319 (n + 1)

end A215319

/-! ## A215319.P7546299342791024142

`∪[A215307(n+1), A215387(n+1)]`
-/

namespace A215319.P7546299342791024142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215307 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215319.P7546299342791024142

namespace A215319

/-- `∪[A215307(n+1), A215387(n+1)]` -/
def P7546299342791024142.Spec : Prop :=
  ∀ n, (P7546299342791024142.a n : ℤ) = A215319 (n + 1)

end A215319

/-!
# A215320: Primes congruent to {1, 2, 3, 5, 6} mod 17.

The programs for A215320, the canonical program `A215320.P3172696357784485875` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215320 has offset 1).

The definition of A215320 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215320.P17693709474168316426

`∪[A138623(n+1), A215384(n+1)]`
-/

namespace A215320.P17693709474168316426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215320.P17693709474168316426

namespace A215320

/-- `∪[A138623(n+1), A215384(n+1)]` -/
def P17693709474168316426.Spec : Prop :=
  ∀ n, (P17693709474168316426.a n : ℤ) = A215320 (n + 1)

end A215320

/-! ## A215320.P3172696357784485875

`∪[A140545(n+1), A215308(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215320

/-- `∪[A140545(n+1), A215308(n+1)]` -/
def P3172696357784485875.Spec : Prop :=
  ∀ n, (P3172696357784485875.a n : ℤ) = A215320 (n + 1)

theorem P3172696357784485875.correct : P3172696357784485875.Spec := by
  intro n
  simp only [A215320, Nat.add_sub_cancel]

end A215320

/-! ## A215320.P1117783934748187591

`∪[A215132(n+1), A215153(n+1)]`
-/

namespace A215320.P1117783934748187591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215320.P1117783934748187591

namespace A215320

/-- `∪[A215132(n+1), A215153(n+1)]` -/
def P1117783934748187591.Spec : Prop :=
  ∀ n, (P1117783934748187591.a n : ℤ) = A215320 (n + 1)

end A215320

/-! ## A215320.P5369850303436971926

`∪[A215132(n+1), A215308(n+1)]`
-/

namespace A215320.P5369850303436971926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215320.P5369850303436971926

namespace A215320

/-- `∪[A215132(n+1), A215308(n+1)]` -/
def P5369850303436971926.Spec : Prop :=
  ∀ n, (P5369850303436971926.a n : ℤ) = A215320 (n + 1)

end A215320

/-! ## A215320.P13760954053318468673

`∪[A215104(n+1), A215384(n+1)]`
-/

namespace A215320.P13760954053318468673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215320.P13760954053318468673

namespace A215320

/-- `∪[A215104(n+1), A215384(n+1)]` -/
def P13760954053318468673.Spec : Prop :=
  ∀ n, (P13760954053318468673.a n : ℤ) = A215320 (n + 1)

end A215320

/-! ## A215320.P1064925545949521020

`∪[A215132(n+1), A215384(n+1)]`
-/

namespace A215320.P1064925545949521020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215320.P1064925545949521020

namespace A215320

/-- `∪[A215132(n+1), A215384(n+1)]` -/
def P1064925545949521020.Spec : Prop :=
  ∀ n, (P1064925545949521020.a n : ℤ) = A215320 (n + 1)

end A215320

/-! ## A215320.P574179521877003217

`∪[A215132(n+1), A215392(n+1)]`
-/

namespace A215320.P574179521877003217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215320.P574179521877003217

namespace A215320

/-- `∪[A215132(n+1), A215392(n+1)]` -/
def P574179521877003217.Spec : Prop :=
  ∀ n, (P574179521877003217.a n : ℤ) = A215320 (n + 1)

end A215320

/-! ## A215320.P5097870231028120828

`∪[A215169(n+1), A215384(n+1)]`
-/

namespace A215320.P5097870231028120828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215320.P5097870231028120828

namespace A215320

/-- `∪[A215169(n+1), A215384(n+1)]` -/
def P5097870231028120828.Spec : Prop :=
  ∀ n, (P5097870231028120828.a n : ℤ) = A215320 (n + 1)

end A215320

/-! ## A215320.P9205903695352317045

`∪[A215308(n+1), A215384(n+1)]`
-/

namespace A215320.P9205903695352317045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215320.P9205903695352317045

namespace A215320

/-- `∪[A215308(n+1), A215384(n+1)]` -/
def P9205903695352317045.Spec : Prop :=
  ∀ n, (P9205903695352317045.a n : ℤ) = A215320 (n + 1)

end A215320

/-! ## A215320.P15128719298308086332

`∪[A215308(n+1), A215388(n+1)]`
-/

namespace A215320.P15128719298308086332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215320.P15128719298308086332

namespace A215320

/-- `∪[A215308(n+1), A215388(n+1)]` -/
def P15128719298308086332.Spec : Prop :=
  ∀ n, (P15128719298308086332.a n : ℤ) = A215320 (n + 1)

end A215320

/-!
# A215321: Primes congruent to {1, 2, 3, 5, 6} mod 19.

The programs for A215321, the canonical program `A215321.P2990805988694639767` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215321 has offset 1).

The definition of A215321 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215321.P8442628816061070556

`∪[A102851(n+1), A215385(n+1)]`
-/

namespace A215321.P8442628816061070556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215321.P8442628816061070556

namespace A215321

/-- `∪[A102851(n+1), A215385(n+1)]` -/
def P8442628816061070556.Spec : Prop :=
  ∀ n, (P8442628816061070556.a n : ℤ) = A215321 (n + 1)

end A215321

/-! ## A215321.P2990805988694639767

`∪[A141871(n+1), A215309(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215321

/-- `∪[A141871(n+1), A215309(n+1)]` -/
def P2990805988694639767.Spec : Prop :=
  ∀ n, (P2990805988694639767.a n : ℤ) = A215321 (n + 1)

theorem P2990805988694639767.correct : P2990805988694639767.Spec := by
  intro n
  simp only [A215321, Nat.add_sub_cancel]

end A215321

/-! ## A215321.P3402304490470740797

`∪[A215133(n+1), A215154(n+1)]`
-/

namespace A215321.P3402304490470740797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215321.P3402304490470740797

namespace A215321

/-- `∪[A215133(n+1), A215154(n+1)]` -/
def P3402304490470740797.Spec : Prop :=
  ∀ n, (P3402304490470740797.a n : ℤ) = A215321 (n + 1)

end A215321

/-! ## A215321.P10739080975168238938

`∪[A215133(n+1), A215309(n+1)]`
-/

namespace A215321.P10739080975168238938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215321.P10739080975168238938

namespace A215321

/-- `∪[A215133(n+1), A215309(n+1)]` -/
def P10739080975168238938.Spec : Prop :=
  ∀ n, (P10739080975168238938.a n : ℤ) = A215321 (n + 1)

end A215321

/-! ## A215321.P7758936638872373461

`∪[A215105(n+1), A215385(n+1)]`
-/

namespace A215321.P7758936638872373461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215321.P7758936638872373461

namespace A215321

/-- `∪[A215105(n+1), A215385(n+1)]` -/
def P7758936638872373461.Spec : Prop :=
  ∀ n, (P7758936638872373461.a n : ℤ) = A215321 (n + 1)

end A215321

/-! ## A215321.P4897408732215439326

`∪[A215133(n+1), A215385(n+1)]`
-/

namespace A215321.P4897408732215439326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215321.P4897408732215439326

namespace A215321

/-- `∪[A215133(n+1), A215385(n+1)]` -/
def P4897408732215439326.Spec : Prop :=
  ∀ n, (P4897408732215439326.a n : ℤ) = A215321 (n + 1)

end A215321

/-! ## A215321.P4043858963826103460

`∪[A215133(n+1), A215393(n+1)]`
-/

namespace A215321.P4043858963826103460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215321.P4043858963826103460

namespace A215321

/-- `∪[A215133(n+1), A215393(n+1)]` -/
def P4043858963826103460.Spec : Prop :=
  ∀ n, (P4043858963826103460.a n : ℤ) = A215321 (n + 1)

end A215321

/-! ## A215321.P14225978157864182415

`∪[A215170(n+1), A215385(n+1)]`
-/

namespace A215321.P14225978157864182415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215321.P14225978157864182415

namespace A215321

/-- `∪[A215170(n+1), A215385(n+1)]` -/
def P14225978157864182415.Spec : Prop :=
  ∀ n, (P14225978157864182415.a n : ℤ) = A215321 (n + 1)

end A215321

/-! ## A215321.P11260280883750772191

`∪[A215309(n+1), A215385(n+1)]`
-/

namespace A215321.P11260280883750772191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215321.P11260280883750772191

namespace A215321

/-- `∪[A215309(n+1), A215385(n+1)]` -/
def P11260280883750772191.Spec : Prop :=
  ∀ n, (P11260280883750772191.a n : ℤ) = A215321 (n + 1)

end A215321

/-! ## A215321.P11844028910402860283

`∪[A215309(n+1), A215389(n+1)]`
-/

namespace A215321.P11844028910402860283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215321.P11844028910402860283

namespace A215321

/-- `∪[A215309(n+1), A215389(n+1)]` -/
def P11844028910402860283.Spec : Prop :=
  ∀ n, (P11844028910402860283.a n : ℤ) = A215321 (n + 1)

end A215321

/-! ## A215321.P14863328624615233924

`p?[A008594(A002266(n))+A173276(n)+n]`
-/

namespace A215321.P14863328624615233924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 (A002266 n).toNat + (A173276 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215321.P14863328624615233924

namespace A215321

/-- `p?[A008594(A002266(n))+A173276(n)+n]` -/
def P14863328624615233924.Spec : Prop :=
  ∀ n, P14863328624615233924.a n = A215321 (n + 1)

end A215321

/-!
# A215322: Primes congruent to {1, 2, 3, 4, 6} mod 11.

The programs for A215322, the canonical program `A215322.P6777414993162117689` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215322 has offset 1).

The definition of A215322 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215322.P6777414993162117689

`∪[A141853(n+1), A215302(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A215322

/-- `∪[A141853(n+1), A215302(n+1)]` -/
def P6777414993162117689.Spec : Prop :=
  ∀ n, (P6777414993162117689.a n : ℤ) = A215322 (n + 1)

theorem P6777414993162117689.correct : P6777414993162117689.Spec := by
  intro n
  simp only [A215322, Nat.add_sub_cancel]

end A215322

/-! ## A215322.P4696816154074253262

`∪[A141849(n+1), A215350(n+1)]`
-/

namespace A215322.P4696816154074253262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215322.P4696816154074253262

namespace A215322

/-- `∪[A141849(n+1), A215350(n+1)]` -/
def P4696816154074253262.Spec : Prop :=
  ∀ n, (P4696816154074253262.a n : ℤ) = A215322 (n + 1)

end A215322

/-! ## A215322.P14047274273695758484

`∪[A141851(n+1), A215382(n+1)]`
-/

namespace A215322.P14047274273695758484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215322.P14047274273695758484

namespace A215322

/-- `∪[A141851(n+1), A215382(n+1)]` -/
def P14047274273695758484.Spec : Prop :=
  ∀ n, (P14047274273695758484.a n : ℤ) = A215322 (n + 1)

end A215322

/-! ## A215322.P10536809734735189963

`∪[A215134(n+1), A215350(n+1)]`
-/

namespace A215322.P10536809734735189963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215322.P10536809734735189963

namespace A215322

/-- `∪[A215134(n+1), A215350(n+1)]` -/
def P10536809734735189963.Spec : Prop :=
  ∀ n, (P10536809734735189963.a n : ℤ) = A215322 (n + 1)

end A215322

/-! ## A215322.P2180256666240458923

`∪[A215163(n+1), A215350(n+1)]`
-/

namespace A215322.P2180256666240458923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215322.P2180256666240458923

namespace A215322

/-- `∪[A215163(n+1), A215350(n+1)]` -/
def P2180256666240458923.Spec : Prop :=
  ∀ n, (P2180256666240458923.a n : ℤ) = A215322 (n + 1)

end A215322

/-! ## A215322.P774194699968286680

`∪[A215163(n+1), A215382(n+1)]`
-/

namespace A215322.P774194699968286680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215322.P774194699968286680

namespace A215322

/-- `∪[A215163(n+1), A215382(n+1)]` -/
def P774194699968286680.Spec : Prop :=
  ∀ n, (P774194699968286680.a n : ℤ) = A215322 (n + 1)

end A215322

/-! ## A215322.P4810208723823895396

`∪[A215163(n+1), A215386(n+1)]`
-/

namespace A215322.P4810208723823895396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215163 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215322.P4810208723823895396

namespace A215322

/-- `∪[A215163(n+1), A215386(n+1)]` -/
def P4810208723823895396.Spec : Prop :=
  ∀ n, (P4810208723823895396.a n : ℤ) = A215322 (n + 1)

end A215322

/-! ## A215322.P9065808248025668008

`∪[A215302(n+1), A215350(n+1)]`
-/

namespace A215322.P9065808248025668008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215322.P9065808248025668008

namespace A215322

/-- `∪[A215302(n+1), A215350(n+1)]` -/
def P9065808248025668008.Spec : Prop :=
  ∀ n, (P9065808248025668008.a n : ℤ) = A215322 (n + 1)

end A215322

/-! ## A215322.P11531881297672731970

`∪[A215279(n+1), A215382(n+1)]`
-/

namespace A215322.P11531881297672731970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215322.P11531881297672731970

namespace A215322

/-- `∪[A215279(n+1), A215382(n+1)]` -/
def P11531881297672731970.Spec : Prop :=
  ∀ n, (P11531881297672731970.a n : ℤ) = A215322 (n + 1)

end A215322

/-! ## A215322.P3048787347978376312

`∪[A215302(n+1), A215382(n+1)]`
-/

namespace A215322.P3048787347978376312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215322.P3048787347978376312

namespace A215322

/-- `∪[A215302(n+1), A215382(n+1)]` -/
def P3048787347978376312.Spec : Prop :=
  ∀ n, (P3048787347978376312.a n : ℤ) = A215322 (n + 1)

end A215322

/-! ## A215322.P16295070490412837998

`∪[A215302(n+1), A215386(n+1)]`
-/

namespace A215322.P16295070490412837998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215322.P16295070490412837998

namespace A215322

/-- `∪[A215302(n+1), A215386(n+1)]` -/
def P16295070490412837998.Spec : Prop :=
  ∀ n, (P16295070490412837998.a n : ℤ) = A215322 (n + 1)

end A215322

/-! ## A215322.P14225386642178788138

`∪[A215350(n+1), A215382(n+1)]`
-/

namespace A215322.P14225386642178788138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215322.P14225386642178788138

namespace A215322

/-- `∪[A215350(n+1), A215382(n+1)]` -/
def P14225386642178788138.Spec : Prop :=
  ∀ n, (P14225386642178788138.a n : ℤ) = A215322 (n + 1)

end A215322

/-! ## A215322.P14489144615199672038

`∪[A215350(n+1), A215390(n+1)]`
-/

namespace A215322.P14489144615199672038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215322.P14489144615199672038

namespace A215322

/-- `∪[A215350(n+1), A215390(n+1)]` -/
def P14489144615199672038.Spec : Prop :=
  ∀ n, (P14489144615199672038.a n : ℤ) = A215322 (n + 1)

end A215322

/-! ## A215322.P8947790963448522911

`p?[(5*n)%A063208(n+1)+n]`
-/

namespace A215322.P8947790963448522911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * n : ℤ) (A063208 (n + 1)) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215322.P8947790963448522911

namespace A215322

/-- `p?[(5*n)%A063208(n+1)+n]` -/
def P8947790963448522911.Spec : Prop :=
  ∀ n, P8947790963448522911.a n = A215322 (n + 1)

end A215322

/-! ## A215322.P13083514209395938831

`p?[A008593(n)%A049625(n)]`
-/

namespace A215322.P13083514209395938831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008593 n) (A049625 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215322.P13083514209395938831

namespace A215322

/-- `p?[A008593(n)%A049625(n)]` -/
def P13083514209395938831.Spec : Prop :=
  ∀ n, P13083514209395938831.a n = A215322 (n + 1)

end A215322

/-! ## A215322.P17623904104199812551

`p?[A047255(n+1)+A002264(A080412(n))]`
-/

namespace A215322.P17623904104199812551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1) + A002264 (A080412 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215322.P17623904104199812551

namespace A215322

/-- `p?[A047255(n+1)+A002264(A080412(n))]` -/
def P17623904104199812551.Spec : Prop :=
  ∀ n, P17623904104199812551.a n = A215322 (n + 1)

end A215322

/-! ## A215322.P7405756144180797894

`p?[A016789(A187327(n))-A047381(n+1)]`
-/

namespace A215322.P7405756144180797894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A187327 n).toNat - A047381 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215322.P7405756144180797894

namespace A215322

/-- `p?[A016789(A187327(n))-A047381(n+1)]` -/
def P7405756144180797894.Spec : Prop :=
  ∀ n, P7405756144180797894.a n = A215322 (n + 1)

end A215322

/-! ## A215322.P9793352597706331368

`p?[A192333(n+2)-A057354(2*n+1)]`
-/

namespace A215322.P9793352597706331368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192333 (n + 2) - A057354 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215322.P9793352597706331368

namespace A215322

/-- `p?[A192333(n+2)-A057354(2*n+1)]` -/
def P9793352597706331368.Spec : Prop :=
  ∀ n, P9793352597706331368.a n = A215322 (n + 1)

end A215322

/-! ## A215322.P1038097110047599609

`p?[A067251(n+1)+A004525(A008576(n))]`
-/

namespace A215322.P1038097110047599609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1) + A004525 (A008576 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215322.P1038097110047599609

namespace A215322

/-- `p?[A067251(n+1)+A004525(A008576(n))]` -/
def P1038097110047599609.Spec : Prop :=
  ∀ n, P1038097110047599609.a n = A215322 (n + 1)

end A215322

/-! ## A215322.P7848988028762438383

`p?[A068962(A298784(n))+A067251(n+1)]`
-/

namespace A215322.P7848988028762438383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068962 (A298784 n).toNat + A067251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215322.P7848988028762438383

namespace A215322

/-- `p?[A068962(A298784(n))+A067251(n+1)]` -/
def P7848988028762438383.Spec : Prop :=
  ∀ n, P7848988028762438383.a n = A215322 (n + 1)

end A215322

/-!
# A215323: Primes congruent to {1, 2, 3, 4, 6} mod 13.

The programs for A215323, the canonical program `A215323.P18145602717105351483` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215323 has offset 1).

The definition of A215323 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215323.P15095028222804720819

`∪[A093191(n+1), A215383(n+1)]`
-/

namespace A215323.P15095028222804720819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215323.P15095028222804720819

namespace A215323

/-- `∪[A093191(n+1), A215383(n+1)]` -/
def P15095028222804720819.Spec : Prop :=
  ∀ n, (P15095028222804720819.a n : ℤ) = A215323 (n + 1)

end A215323

/-! ## A215323.P18145602717105351483

`∪[A093350(n+1), A215303(n+1)]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A215323

/-- `∪[A093350(n+1), A215303(n+1)]` -/
def P18145602717105351483.Spec : Prop :=
  ∀ n, (P18145602717105351483.a n : ℤ) = A215323 (n + 1)

theorem P18145602717105351483.correct : P18145602717105351483.Spec := by
  intro n
  simp only [A215323, Nat.add_sub_cancel]

end A215323

/-! ## A215323.P8455292004488233404

`∪[A215135(n+1), A215351(n+1)]`
-/

namespace A215323.P8455292004488233404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215323.P8455292004488233404

namespace A215323

/-- `∪[A215135(n+1), A215351(n+1)]` -/
def P8455292004488233404.Spec : Prop :=
  ∀ n, (P8455292004488233404.a n : ℤ) = A215323 (n + 1)

end A215323

/-! ## A215323.P11490067700772905959

`∪[A215164(n+1), A215351(n+1)]`
-/

namespace A215323.P11490067700772905959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215323.P11490067700772905959

namespace A215323

/-- `∪[A215164(n+1), A215351(n+1)]` -/
def P11490067700772905959.Spec : Prop :=
  ∀ n, (P11490067700772905959.a n : ℤ) = A215323 (n + 1)

end A215323

/-! ## A215323.P17918001222041157779

`∪[A215164(n+1), A215383(n+1)]`
-/

namespace A215323.P17918001222041157779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215323.P17918001222041157779

namespace A215323

/-- `∪[A215164(n+1), A215383(n+1)]` -/
def P17918001222041157779.Spec : Prop :=
  ∀ n, (P17918001222041157779.a n : ℤ) = A215323 (n + 1)

end A215323

/-! ## A215323.P13460527996832741441

`∪[A215164(n+1), A215387(n+1)]`
-/

namespace A215323.P13460527996832741441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215164 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215323.P13460527996832741441

namespace A215323

/-- `∪[A215164(n+1), A215387(n+1)]` -/
def P13460527996832741441.Spec : Prop :=
  ∀ n, (P13460527996832741441.a n : ℤ) = A215323 (n + 1)

end A215323

/-! ## A215323.P11391462241542597924

`∪[A215303(n+1), A215351(n+1)]`
-/

namespace A215323.P11391462241542597924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215323.P11391462241542597924

namespace A215323

/-- `∪[A215303(n+1), A215351(n+1)]` -/
def P11391462241542597924.Spec : Prop :=
  ∀ n, (P11391462241542597924.a n : ℤ) = A215323 (n + 1)

end A215323

/-! ## A215323.P6473730462152711102

`∪[A215280(n+1), A215383(n+1)]`
-/

namespace A215323.P6473730462152711102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215323.P6473730462152711102

namespace A215323

/-- `∪[A215280(n+1), A215383(n+1)]` -/
def P6473730462152711102.Spec : Prop :=
  ∀ n, (P6473730462152711102.a n : ℤ) = A215323 (n + 1)

end A215323

/-! ## A215323.P5883811604472643166

`∪[A215303(n+1), A215383(n+1)]`
-/

namespace A215323.P5883811604472643166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215323.P5883811604472643166

namespace A215323

/-- `∪[A215303(n+1), A215383(n+1)]` -/
def P5883811604472643166.Spec : Prop :=
  ∀ n, (P5883811604472643166.a n : ℤ) = A215323 (n + 1)

end A215323

/-! ## A215323.P1069343469011844322

`∪[A215303(n+1), A215387(n+1)]`
-/

namespace A215323.P1069343469011844322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215323.P1069343469011844322

namespace A215323

/-- `∪[A215303(n+1), A215387(n+1)]` -/
def P1069343469011844322.Spec : Prop :=
  ∀ n, (P1069343469011844322.a n : ℤ) = A215323 (n + 1)

end A215323

/-! ## A215323.P16255493161108997281

`∪[A215351(n+1), A215383(n+1)]`
-/

namespace A215323.P16255493161108997281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215323.P16255493161108997281

namespace A215323

/-- `∪[A215351(n+1), A215383(n+1)]` -/
def P16255493161108997281.Spec : Prop :=
  ∀ n, (P16255493161108997281.a n : ℤ) = A215323 (n + 1)

end A215323

/-! ## A215323.P6054488555065416111

`∪[A215351(n+1), A215391(n+1)]`
-/

namespace A215323.P6054488555065416111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215323.P6054488555065416111

namespace A215323

/-- `∪[A215351(n+1), A215391(n+1)]` -/
def P6054488555065416111.Spec : Prop :=
  ∀ n, (P6054488555065416111.a n : ℤ) = A215323 (n + 1)

end A215323

/-! ## A215323.P1275753139179824291

`∪[A215351(n+1), A268753(n+1)]`
-/

namespace A215323.P1275753139179824291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215323.P1275753139179824291

namespace A215323

/-- `∪[A215351(n+1), A268753(n+1)]` -/
def P1275753139179824291.Spec : Prop :=
  ∀ n, (P1275753139179824291.a n : ℤ) = A215323 (n + 1)

end A215323

/-! ## A215323.P462299501897031905

`p?[A081597(n)+A008592(A002266(n))]`
-/

namespace A215323.P462299501897031905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081597 n + A008592 (A002266 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215323.P462299501897031905

namespace A215323

/-- `p?[A081597(n)+A008592(A002266(n))]` -/
def P462299501897031905.Spec : Prop :=
  ∀ n, P462299501897031905.a n = A215323 (n + 1)

end A215323

/-! ## A215323.P16627894020640217877

`p?[A001281(A047548(n+1)+n+1)]`
-/

namespace A215323.P16627894020640217877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A047548 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215323.P16627894020640217877

namespace A215323

/-- `p?[A001281(A047548(n+1)+n+1)]` -/
def P16627894020640217877.Spec : Prop :=
  ∀ n, P16627894020640217877.a n = A215323 (n + 1)

end A215323

/-!
# A215324: Primes congruent to {1, 2, 3, 4, 6} mod 17.

The programs for A215324, the canonical program `A215324.P2756159153333768749` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215324 has offset 1).

The definition of A215324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215324.P8046792160867464885

`∪[A094657(n+1), A215384(n+1)]`
-/

namespace A215324.P8046792160867464885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P8046792160867464885

namespace A215324

/-- `∪[A094657(n+1), A215384(n+1)]` -/
def P8046792160867464885.Spec : Prop :=
  ∀ n, (P8046792160867464885.a n : ℤ) = A215324 (n + 1)

end A215324

/-! ## A215324.P17338932990673495346

`∪[A129484(n+1), A215352(n+1)]`
-/

namespace A215324.P17338932990673495346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P17338932990673495346

namespace A215324

/-- `∪[A129484(n+1), A215352(n+1)]` -/
def P17338932990673495346.Spec : Prop :=
  ∀ n, (P17338932990673495346.a n : ℤ) = A215324 (n + 1)

end A215324

/-! ## A215324.P2756159153333768749

`∪[A140545(n+1), A215304(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215324

/-- `∪[A140545(n+1), A215304(n+1)]` -/
def P2756159153333768749.Spec : Prop :=
  ∀ n, (P2756159153333768749.a n : ℤ) = A215324 (n + 1)

theorem P2756159153333768749.correct : P2756159153333768749.Spec := by
  intro n
  simp only [A215324, Nat.add_sub_cancel]

end A215324

/-! ## A215324.P12462046200420177062

`∪[A215153(n+1), A215352(n+1)]`
-/

namespace A215324.P12462046200420177062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P12462046200420177062

namespace A215324

/-- `∪[A215153(n+1), A215352(n+1)]` -/
def P12462046200420177062.Spec : Prop :=
  ∀ n, (P12462046200420177062.a n : ℤ) = A215324 (n + 1)

end A215324

/-! ## A215324.P1685012572479282226

`∪[A215165(n+1), A215352(n+1)]`
-/

namespace A215324.P1685012572479282226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P1685012572479282226

namespace A215324

/-- `∪[A215165(n+1), A215352(n+1)]` -/
def P1685012572479282226.Spec : Prop :=
  ∀ n, (P1685012572479282226.a n : ℤ) = A215324 (n + 1)

end A215324

/-! ## A215324.P2575893359663475073

`∪[A215165(n+1), A215384(n+1)]`
-/

namespace A215324.P2575893359663475073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P2575893359663475073

namespace A215324

/-- `∪[A215165(n+1), A215384(n+1)]` -/
def P2575893359663475073.Spec : Prop :=
  ∀ n, (P2575893359663475073.a n : ℤ) = A215324 (n + 1)

end A215324

/-! ## A215324.P17686889342276861387

`∪[A215165(n+1), A215388(n+1)]`
-/

namespace A215324.P17686889342276861387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P17686889342276861387

namespace A215324

/-- `∪[A215165(n+1), A215388(n+1)]` -/
def P17686889342276861387.Spec : Prop :=
  ∀ n, (P17686889342276861387.a n : ℤ) = A215324 (n + 1)

end A215324

/-! ## A215324.P13040338300071451890

`∪[A215304(n+1), A215352(n+1)]`
-/

namespace A215324.P13040338300071451890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P13040338300071451890

namespace A215324

/-- `∪[A215304(n+1), A215352(n+1)]` -/
def P13040338300071451890.Spec : Prop :=
  ∀ n, (P13040338300071451890.a n : ℤ) = A215324 (n + 1)

end A215324

/-! ## A215324.P11081298190953846424

`∪[A215281(n+1), A215384(n+1)]`
-/

namespace A215324.P11081298190953846424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P11081298190953846424

namespace A215324

/-- `∪[A215281(n+1), A215384(n+1)]` -/
def P11081298190953846424.Spec : Prop :=
  ∀ n, (P11081298190953846424.a n : ℤ) = A215324 (n + 1)

end A215324

/-! ## A215324.P10511035959563157759

`∪[A215304(n+1), A215384(n+1)]`
-/

namespace A215324.P10511035959563157759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P10511035959563157759

namespace A215324

/-- `∪[A215304(n+1), A215384(n+1)]` -/
def P10511035959563157759.Spec : Prop :=
  ∀ n, (P10511035959563157759.a n : ℤ) = A215324 (n + 1)

end A215324

/-! ## A215324.P6289195694925031559

`∪[A215304(n+1), A215388(n+1)]`
-/

namespace A215324.P6289195694925031559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P6289195694925031559

namespace A215324

/-- `∪[A215304(n+1), A215388(n+1)]` -/
def P6289195694925031559.Spec : Prop :=
  ∀ n, (P6289195694925031559.a n : ℤ) = A215324 (n + 1)

end A215324

/-! ## A215324.P52881829797151252

`∪[A215352(n+1), A215384(n+1)]`
-/

namespace A215324.P52881829797151252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P52881829797151252

namespace A215324

/-- `∪[A215352(n+1), A215384(n+1)]` -/
def P52881829797151252.Spec : Prop :=
  ∀ n, (P52881829797151252.a n : ℤ) = A215324 (n + 1)

end A215324

/-! ## A215324.P5369437009871815651

`∪[A215352(n+1), A215392(n+1)]`
-/

namespace A215324.P5369437009871815651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215324.P5369437009871815651

namespace A215324

/-- `∪[A215352(n+1), A215392(n+1)]` -/
def P5369437009871815651.Spec : Prop :=
  ∀ n, (P5369437009871815651.a n : ℤ) = A215324 (n + 1)

end A215324

/-!
# A215325: Primes congruent to {1, 2, 3, 4, 6} mod 19.

The programs for A215325, the canonical program `A215325.P6103314079684101461` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215325 has offset 1).

The definition of A215325 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215325.P6103314079684101461

`∪[A141871(n+1), A215305(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215325

/-- `∪[A141871(n+1), A215305(n+1)]` -/
def P6103314079684101461.Spec : Prop :=
  ∀ n, (P6103314079684101461.a n : ℤ) = A215325 (n + 1)

theorem P6103314079684101461.correct : P6103314079684101461.Spec := by
  intro n
  simp only [A215325, Nat.add_sub_cancel]

end A215325

/-! ## A215325.P1048482028262702611

`∪[A141868(n+1), A215353(n+1)]`
-/

namespace A215325.P1048482028262702611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215325.P1048482028262702611

namespace A215325

/-- `∪[A141868(n+1), A215353(n+1)]` -/
def P1048482028262702611.Spec : Prop :=
  ∀ n, (P1048482028262702611.a n : ℤ) = A215325 (n + 1)

end A215325

/-! ## A215325.P346045457466810190

`∪[A141870(n+1), A215385(n+1)]`
-/

namespace A215325.P346045457466810190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215325.P346045457466810190

namespace A215325

/-- `∪[A141870(n+1), A215385(n+1)]` -/
def P346045457466810190.Spec : Prop :=
  ∀ n, (P346045457466810190.a n : ℤ) = A215325 (n + 1)

end A215325

/-! ## A215325.P17216837003502765651

`∪[A215154(n+1), A215353(n+1)]`
-/

namespace A215325.P17216837003502765651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215325.P17216837003502765651

namespace A215325

/-- `∪[A215154(n+1), A215353(n+1)]` -/
def P17216837003502765651.Spec : Prop :=
  ∀ n, (P17216837003502765651.a n : ℤ) = A215325 (n + 1)

end A215325

/-! ## A215325.P10052329969668440054

`∪[A215166(n+1), A215353(n+1)]`
-/

namespace A215325.P10052329969668440054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215325.P10052329969668440054

namespace A215325

/-- `∪[A215166(n+1), A215353(n+1)]` -/
def P10052329969668440054.Spec : Prop :=
  ∀ n, (P10052329969668440054.a n : ℤ) = A215325 (n + 1)

end A215325

/-! ## A215325.P10317529715282772003

`∪[A215166(n+1), A215385(n+1)]`
-/

namespace A215325.P10317529715282772003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215325.P10317529715282772003

namespace A215325

/-- `∪[A215166(n+1), A215385(n+1)]` -/
def P10317529715282772003.Spec : Prop :=
  ∀ n, (P10317529715282772003.a n : ℤ) = A215325 (n + 1)

end A215325

/-! ## A215325.P2700803933025876322

`∪[A215166(n+1), A215389(n+1)]`
-/

namespace A215325.P2700803933025876322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215325.P2700803933025876322

namespace A215325

/-- `∪[A215166(n+1), A215389(n+1)]` -/
def P2700803933025876322.Spec : Prop :=
  ∀ n, (P2700803933025876322.a n : ℤ) = A215325 (n + 1)

end A215325

/-! ## A215325.P2328303357994311662

`∪[A215305(n+1), A215353(n+1)]`
-/

namespace A215325.P2328303357994311662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215325.P2328303357994311662

namespace A215325

/-- `∪[A215305(n+1), A215353(n+1)]` -/
def P2328303357994311662.Spec : Prop :=
  ∀ n, (P2328303357994311662.a n : ℤ) = A215325 (n + 1)

end A215325

/-! ## A215325.P16971700458282175541

`∪[A215282(n+1), A215385(n+1)]`
-/

namespace A215325.P16971700458282175541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215325.P16971700458282175541

namespace A215325

/-- `∪[A215282(n+1), A215385(n+1)]` -/
def P16971700458282175541.Spec : Prop :=
  ∀ n, (P16971700458282175541.a n : ℤ) = A215325 (n + 1)

end A215325

/-! ## A215325.P2423081447212127463

`∪[A215305(n+1), A215385(n+1)]`
-/

namespace A215325.P2423081447212127463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215325.P2423081447212127463

namespace A215325

/-- `∪[A215305(n+1), A215385(n+1)]` -/
def P2423081447212127463.Spec : Prop :=
  ∀ n, (P2423081447212127463.a n : ℤ) = A215325 (n + 1)

end A215325

/-! ## A215325.P9614668910127227057

`∪[A215305(n+1), A215389(n+1)]`
-/

namespace A215325.P9614668910127227057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215325.P9614668910127227057

namespace A215325

/-- `∪[A215305(n+1), A215389(n+1)]` -/
def P9614668910127227057.Spec : Prop :=
  ∀ n, (P9614668910127227057.a n : ℤ) = A215325 (n + 1)

end A215325

/-! ## A215325.P11117174782230412964

`∪[A215353(n+1), A215385(n+1)]`
-/

namespace A215325.P11117174782230412964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215325.P11117174782230412964

namespace A215325

/-- `∪[A215353(n+1), A215385(n+1)]` -/
def P11117174782230412964.Spec : Prop :=
  ∀ n, (P11117174782230412964.a n : ℤ) = A215325 (n + 1)

end A215325

/-! ## A215325.P6882161982735385304

`∪[A215353(n+1), A215393(n+1)]`
-/

namespace A215325.P6882161982735385304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215325.P6882161982735385304

namespace A215325

/-- `∪[A215353(n+1), A215393(n+1)]` -/
def P6882161982735385304.Spec : Prop :=
  ∀ n, (P6882161982735385304.a n : ℤ) = A215325 (n + 1)

end A215325

/-!
# A215326: Fermat pseudoprimes to base 2 of the form m*n^2 + (11*m - 23)*n + 19*m - 49, where m, n >= 0.

The programs for A215326, there is no canonical definition to state claims against.
-/

/-! ## A215326.P4738283843528069939

`A001567(record[A253894(lcm(6, (n+1)^3)/6)])`
-/

namespace A215326.P4738283843528069939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253894 (SequenceMachineLib.roundAway ((Nat.lcm 6 ((n + 1) ^ 3) : ℚ) / 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215326.P4738283843528069939

/-! ## A215326.P16337139246396756184

`A001567(round(log(A059675(3*n+2))))`
-/

namespace A215326.P16337139246396756184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.roundAway (Real.log (A059675 (3 * n + 2) : ℝ))).toNat

end

end A215326.P16337139246396756184

/-! ## A215326.P15124233474537290561

`A001567(eq[A030308(n), A165045(n+1)])`
-/

namespace A215326.P15124233474537290561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030308 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215326.P15124233474537290561

/-!
# A215327: Smooth necklaces with 3 colors.

The programs for A215327, there is no canonical definition to state claims against.
-/

/-! ## A215327.P15881148547933358644

`A003056(A150386(n)+(n+1)²)`
-/

namespace A215327.P15881148547933358644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A150386 n + ((n + 1) ^ 2 : ℤ)).toNat

end

end A215327.P15881148547933358644

/-! ## A215327.P14961332989675613857

`A003056(A150387(n)+(n+1)²)`
-/

namespace A215327.P14961332989675613857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A150387 n + ((n + 1) ^ 2 : ℤ)).toNat

end

end A215327.P14961332989675613857

/-! ## A215327.P14144760117426343301

`A003056(A313719(n)+A150386(n))`
-/

namespace A215327.P14144760117426343301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A313719 n + A150386 n).toNat

end

end A215327.P14144760117426343301

/-! ## A215327.P7522562743533076469

`A003056(A313719(n)+A150387(n))`
-/

namespace A215327.P7522562743533076469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A313719 n + A150387 n).toNat

end

end A215327.P7522562743533076469

/-!
# A215328: Smooth Lyndon words with 3 colors.

The programs for A215328, there is no canonical definition to state claims against.
-/

/-! ## A215328.P10821989285972032683

`A316697(n+1)+A000038(A000986(n))`
-/

namespace A215328.P10821989285972032683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316697 (n + 1) + A000038 (A000986 n).toNat

end

end A215328.P10821989285972032683

/-! ## A215328.P7927625361772732275

`A316697(n+1)+A029833(A010036(n))`
-/

namespace A215328.P7927625361772732275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316697 (n + 1) + A029833 (A010036 n).toNat

end

end A215328.P7927625361772732275

/-! ## A215328.P4478046169336252555

`A316697(n+1)+A061007(A007070(n))`
-/

namespace A215328.P4478046169336252555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316697 (n + 1) + A061007 (A007070 n).toNat

end

end A215328.P4478046169336252555

/-! ## A215328.P3723376105709342906

`A316697(n+1)+A186681(A033453(n))`
-/

namespace A215328.P3723376105709342906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316697 (n + 1) + A186681 (A033453 n).toNat

end

end A215328.P3723376105709342906

/-!
# A215329: Smooth necklaces with 4 colors.

The programs for A215329, there is no canonical definition to state claims against.
-/

/-! ## A215329.P2007886096841370191

`A090245(n)+ceil(A278602(n)/(n+1))`
-/

namespace A215329.P2007886096841370191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090245 n + ⌈(A278602 n : ℚ) / (n + 1 : ℚ)⌉

end

end A215329.P2007886096841370191

/-! ## A215329.P2924869358619507380

`A288804(n)+A060773(A019425(n))`
-/

namespace A215329.P2924869358619507380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288804 n + A060773 (A019425 n).toNat

end

end A215329.P2924869358619507380

/-! ## A215329.P7942276218000695339

`A317722(n)+A059905(A052539(n))`
-/

namespace A215329.P7942276218000695339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317722 n + A059905 (A052539 n).toNat

end

end A215329.P7942276218000695339

/-!
# A215333: Smooth necklaces with 7 colors.

The programs for A215333, there is no canonical definition to state claims against.
-/

/-! ## A215333.P17684203124987453090

`A267302(A034691(n))+A068674(n+1)`
-/

namespace A215333.P17684203124987453090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267302 (A034691 n).toNat + A068674 (n + 1)

end

end A215333.P17684203124987453090

/-! ## A215333.P4532497126091116808

`A276874(A268687(n)+A005117(n+1))`
-/

namespace A215333.P4532497126091116808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276874 (A268687 n + A005117 (n + 1)).toNat

end

end A215333.P4532497126091116808

/-!
# A215334: Smooth Lyndon words with 7 colors.

The programs for A215334, there is no canonical definition to state claims against.
-/

/-! ## A215334.P12606876906822508472

`A317717(or(A103529(n+1), A165957(n+1)))`
-/

namespace A215334.P12606876906822508472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317717 (Int.lor (A103529 (n + 1)) (A165957 (n + 1))).toNat

end

end A215334.P12606876906822508472

/-!
# A215335: Cyclically smooth Lyndon words with 3 colors.

The programs for A215335, there is no canonical definition to state claims against.
-/

/-! ## A215335.P4210837503247512672

`∑{d}[n+1, A008683(#)*A208772((n+1)/#)]`
-/

namespace A215335.P4210837503247512672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A208772 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A215335.P4210837503247512672

/-! ## A215335.P12609181473378300956

`A006206(n+1)+A308448(n+1)+A000007(n)`
-/

namespace A215335.P12609181473378300956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006206 (n + 1) + (A308448 (n + 1) + A000007 n)

end

end A215335.P12609181473378300956

/-! ## A215335.P15326686593543397397

`A208772(n+1)+A215328(n+1)-A215327(n+1)`
-/

namespace A215335.P15326686593543397397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208772 (n + 1) + (A215328 (n + 1) - A215327 (n + 1))

end

end A215335.P15326686593543397397

/-!
# A215336: Cyclically smooth Lyndon words with 4 colors.

The programs for A215336, there is no canonical definition to state claims against.
-/

/-! ## A215336.P10729188744236415279

`∑{d}[n+1, A008683(#)*A208773((n+1)/#)]`
-/

namespace A215336.P10729188744236415279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A208773 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A215336.P10729188744236415279

/-! ## A215336.P16191960636528922620

`A208773(n+1)+A215330(n+1)-A215329(n+1)`
-/

namespace A215336.P16191960636528922620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208773 (n + 1) + (A215330 (n + 1) - A215329 (n + 1))

end

end A215336.P16191960636528922620

/-!
# A215337: Cyclically smooth Lyndon words with 5 colors.

The programs for A215337, there is no canonical definition to state claims against.
-/

/-! ## A215337.P9039308166903629468

`∑{d}[n+1, A008683(#)*A208774((n+1)/#)]`
-/

namespace A215337.P9039308166903629468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A208774 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A215337.P9039308166903629468

/-!
# A215338: Cyclically smooth Lyndon words with 7 colors.

The programs for A215338, there is no canonical definition to state claims against.
-/

/-! ## A215338.P2486981359187120781

`∑{d}[n+1, A008683(#)*A208776((n+1)/#)]`
-/

namespace A215338.P2486981359187120781
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A208776 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A215338.P2486981359187120781

/-! ## A215338.P8004498043106556253

`A208776(n+1)+A215334(n+1)-A215333(n+1)`
-/

namespace A215338.P8004498043106556253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208776 (n + 1) + (A215334 (n + 1) - A215333 (n + 1))

end

end A215338.P8004498043106556253

/-!
# A215339: a(n) = A001608(n) mod n.

The programs for A215339, the canonical program `A215339.P9790592980858161614` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215339 has offset 1).

The definition of A215339 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 818 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215339.P9790592980858161614

`A001608(n+1)%(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215339

/-- `A001608(n+1)%(n+1)` -/
def P9790592980858161614.Spec : Prop :=
  ∀ n, P9790592980858161614.a n = A215339 (n + 1)

theorem P9790592980858161614.correct : P9790592980858161614.Spec := by
  intro n
  simp only [A215339, Nat.add_sub_cancel]

end A215339

/-! ## A215339.P13593138173577279227

`(A084338(n+1)-A000931(n))%(n+1)`
-/

namespace A215339.P13593138173577279227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084338 (n + 1) - A000931 n) (n + 1 : ℤ)

end

end A215339.P13593138173577279227

namespace A215339

/-- `(A084338(n+1)-A000931(n))%(n+1)` -/
def P13593138173577279227.Spec : Prop :=
  ∀ n, P13593138173577279227.a n = A215339 (n + 1)

end A215339

/-! ## A215339.P13745337130926529549

`(A001945(n+1)-A078712(n+1))%(n+1)`
-/

namespace A215339.P13745337130926529549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001945 (n + 1) - A078712 (n + 1)) (n + 1 : ℤ)

end

end A215339.P13745337130926529549

namespace A215339

/-- `(A001945(n+1)-A078712(n+1))%(n+1)` -/
def P13745337130926529549.Spec : Prop :=
  ∀ n, P13745337130926529549.a n = A215339 (n + 1)

end A215339

/-! ## A215339.P2483143117573831406

`Δ[A193744(n)]%(n+1)`
-/

namespace A215339.P2483143117573831406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193744 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A215339.P2483143117573831406

namespace A215339

/-- `Δ[A193744(n)]%(n+1)` -/
def P2483143117573831406.Spec : Prop :=
  ∀ n, P2483143117573831406.a n = A215339 (n + 1)

end A215339

/-! ## A215339.P12165961347149542001

`Δ[A096231(n+1)+A000931(n)]%(n+1)`
-/

namespace A215339.P12165961347149542001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (n + 1) + A000931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 1 : ℤ)

end

end A215339.P12165961347149542001

namespace A215339

/-- `Δ[A096231(n+1)+A000931(n)]%(n+1)` -/
def P12165961347149542001.Spec : Prop :=
  ∀ n, P12165961347149542001.a n = A215339 (n + 1)

end A215339

/-! ## A215339.P14928813046768497405

`sqrt(A300738(2*(n+1)))%(n+1)`
-/

namespace A215339.P14928813046768497405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A300738 (2 * (n + 1)) : ℝ))) (n + 1 : ℤ)

end

end A215339.P14928813046768497405

namespace A215339

/-- `sqrt(A300738(2*(n+1)))%(n+1)` -/
def P14928813046768497405.Spec : Prop :=
  ∀ n, P14928813046768497405.a n = A215339 (n + 1)

end A215339

/-! ## A215339.P13414385260175845407

`A306646(A052905(n)+3)%(n+1)`
-/

namespace A215339.P13414385260175845407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A306646 (A052905 n + 3).toNat) (n + 1 : ℤ)

end

end A215339.P13414385260175845407

namespace A215339

/-- `A306646(A052905(n)+3)%(n+1)` -/
def P13414385260175845407.Spec : Prop :=
  ∀ n, P13414385260175845407.a n = A215339 (n + 1)

end A215339

/-!
# A215340: Expansion of series_reversion( x/(1 + sum(k>=1, x^A032766(k)) ) ) / x.

The programs for A215340, there is no canonical definition to state claims against.
-/

/-! ## A215340.P12166653420194960480

`∑[A366645(n)]`
-/

namespace A215340.P12166653420194960480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366645 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215340.P12166653420194960480

/-! ## A215340.P2922080966400514312

`A001462(A008932(n)-A208243(n+1))`
-/

namespace A215340.P2922080966400514312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A008932 n - A208243 (n + 1)).toNat

end

end A215340.P2922080966400514312

/-! ## A215340.P7955658417857754781

`A180156(A079968(n))`
-/

namespace A215340.P7955658417857754781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180156 (A079968 n).toNat

end

end A215340.P7955658417857754781

/-! ## A215340.P17933387242694174742

`A184421(A182488(n))`
-/

namespace A215340.P17933387242694174742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184421 (A182488 n).toNat

end

end A215340.P17933387242694174742

/-!
# A215341: Expansion of series_reversion( x/(1+x^4*sum(k>=0, x^k)) ) / x.

The programs for A215341, there is no canonical definition to state claims against.
-/

/-! ## A215341.P12151147876096313339

`filter[A306351(n), A110471(#)]`
-/

namespace A215341.P12151147876096313339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A110471 (f1 j).toNat = 1) n)

end

end A215341.P12151147876096313339

/-!
# A215343: Fermat pseudoprimes to base 2 that can be written as 2*p^2 - p, where p is also a Fermat pseudoprime to base 2.

The programs for A215343, there is no canonical definition to state claims against.
-/

/-! ## A215343.P8064800581356667990

`∩[A293622(n+1), A000384(A306259(n+1))]`
-/

namespace A215343.P8064800581356667990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A306259 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215343.P8064800581356667990

/-!
# A215344: Value of x in the n-th number of the form x+y*(1+sqrt(5))/2.

The programs for A215344, there is no canonical definition to state claims against.
-/

/-! ## A215344.P2218866257619584941

`A084531(n+1)-1`
-/

namespace A215344.P2218866257619584941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084531 (n + 1) - 1

end

end A215344.P2218866257619584941

/-! ## A215344.P6717244545774400253

`A289207(A084531(n+1)+1)`
-/

namespace A215344.P6717244545774400253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A084531 (n + 1) + 1).toNat

end

end A215344.P6717244545774400253

/-! ## A215344.P2432492172308496462

`A023460(A084531(n+1)+17)`
-/

namespace A215344.P2432492172308496462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023460 (A084531 (n + 1) + 17).toNat

end

end A215344.P2432492172308496462

/-! ## A215344.P3412607333634743932

`∑{d}[A084531(n+1), A000010(#)%#]`
-/

namespace A215344.P3412607333634743932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A000010 d) (d : ℤ)

end

end A215344.P3412607333634743932

/-! ## A215344.P4843657317768819510

`A134824(2*n+3)+A084531(n+1)`
-/

namespace A215344.P4843657317768819510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (2 * n + 3) + A084531 (n + 1)

end

end A215344.P4843657317768819510

/-! ## A215344.P4298429627339322320

`A359551(A153418(n+1))+A084531(n+1)`
-/

namespace A215344.P4298429627339322320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359551 (A153418 (n + 1)).toNat + A084531 (n + 1)

end

end A215344.P4298429627339322320

/-! ## A215344.P16279711365114548907

`(A084531(n+1)+n)%A019446(A026351(n))`
-/

namespace A215344.P16279711365114548907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084531 (n + 1) + (n : ℤ)) (A019446 (A026351 n).toNat)

end

end A215344.P16279711365114548907

/-! ## A215344.P14495896223604685895

`(A084531(n+1)+A005206(n))%A019446(n+1)`
-/

namespace A215344.P14495896223604685895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084531 (n + 1) + A005206 n) (A019446 (n + 1))

end

end A215344.P14495896223604685895

/-! ## A215344.P7871825784090134690

`(A084531(n+1)+A064429(A064429(n)))%(n+1)`
-/

namespace A215344.P7871825784090134690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084531 (n + 1) + A064429 (A064429 n).toNat) (n + 1 : ℤ)

end

end A215344.P7871825784090134690

/-! ## A215344.P10712317814140382243

`A162512(A000040(n+1))+A084531(n+1)`
-/

namespace A215344.P10712317814140382243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162512 (A000040 (n + 1)).toNat + A084531 (n + 1)

end

end A215344.P10712317814140382243

/-! ## A215344.P2553284135658338545

`A359551(A006450(n+1))+A084531(n+1)`
-/

namespace A215344.P2553284135658338545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359551 (A006450 (n + 1)).toNat + A084531 (n + 1)

end

end A215344.P2553284135658338545

/-!
# A215345: Value of y in the n-th number of the form x+y*(1+sqrt(5))/2.

The programs for A215345, there is no canonical definition to state claims against.
-/

/-! ## A215345.P17231812663686287047

`A084532(n+1)-1`
-/

namespace A215345.P17231812663686287047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084532 (n + 1) - 1

end

end A215345.P17231812663686287047

/-! ## A215345.P1441229799882248631

`A153881(2*n+5)+A084532(n+1)`
-/

namespace A215345.P1441229799882248631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (2 * n + 5) + A084532 (n + 1)

end

end A215345.P1441229799882248631

/-! ## A215345.P14863255724827863419

`A001478(n+1)+A084532(n+1)+n`
-/

namespace A215345.P14863255724827863419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + (A084532 (n + 1) + (n : ℤ))

end

end A215345.P14863255724827863419

/-! ## A215345.P9658013549286779203

`A348951(A000040(n+2))+A084532(n+1)`
-/

namespace A215345.P9658013549286779203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348951 (A000040 (n + 2)).toNat + A084532 (n + 1)

end

end A215345.P9658013549286779203

/-! ## A215345.P7953810482021987242

`(A084532(n+1)+n)%A019446(A026351(n))`
-/

namespace A215345.P7953810482021987242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084532 (n + 1) + (n : ℤ)) (A019446 (A026351 n).toNat)

end

end A215345.P7953810482021987242

/-! ## A215345.P14257187329411614884

`A178749(A020639(2*(n+1)))+A084532(n+1)`
-/

namespace A215345.P14257187329411614884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178749 (A020639 (2 * (n + 1))).toNat + A084532 (n + 1)

end

end A215345.P14257187329411614884

/-! ## A215345.P16235439257509865004

`(A084532(n+1)+A005206(n))%A019446(n+1)`
-/

namespace A215345.P16235439257509865004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084532 (n + 1) + A005206 n) (A019446 (n + 1))

end

end A215345.P16235439257509865004

/-! ## A215345.P3402612947262053766

`(A084532(n+1)+A057660(n+1))%A057661(n+1)`
-/

namespace A215345.P3402612947262053766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084532 (n + 1) + A057660 (n + 1)) (A057661 (n + 1))

end

end A215345.P3402612947262053766

/-! ## A215345.P9402886453244870060

`A001222(2^A084532(n+1)/2)`
-/

namespace A215345.P9402886453244870060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A084532 (n + 1) : ℤ) / 2)).toNat

end

end A215345.P9402886453244870060

/-! ## A215345.P18070296111425775044

`A001222(A000010(2^A084532(n+1)))`
-/

namespace A215345.P18070296111425775044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000010 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A084532 (n + 1) : ℤ))).toNat).toNat

end

end A215345.P18070296111425775044

/-! ## A215345.P10021425873318567263

`A122855(2^A084532(n+1))`
-/

namespace A215345.P10021425873318567263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122855 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A084532 (n + 1) : ℤ))).toNat

end

end A215345.P10021425873318567263

/-!
# A215347: n-th derivative of cos(x)^x at x=0.

The programs for A215347, there is no canonical definition to state claims against.
-/

/-! ## A215347.P8899181622415716318

`(-1)^n*A186247(n)`
-/

namespace A215347.P8899181622415716318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A186247 n

end

end A215347.P8899181622415716318

/-! ## A215347.P5066745008231933668

`A186247(n)/A033999(n)`
-/

namespace A215347.P5066745008231933668
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186247 n : ℚ) / (A033999 n : ℚ)

end

end A215347.P5066745008231933668

/-! ## A215347.P15188140942779200422

`A186247(n)/A130595(∑[n])`
-/

namespace A215347.P15188140942779200422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186247 n : ℚ) / (A130595 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A215347.P15188140942779200422

/-! ## A215347.P5710520975923039176

`A186247(n)/A105812(n+3)`
-/

namespace A215347.P5710520975923039176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186247 n : ℚ) / (A105812 (n + 3) : ℚ)

end

end A215347.P5710520975923039176

/-! ## A215347.P15845055177186661499

`A186247(n)/A056594(2*n)`
-/

namespace A215347.P15845055177186661499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186247 n : ℚ) / (A056594 (2 * n) : ℚ)

end

end A215347.P15845055177186661499

/-! ## A215347.P7456881574943800954

`A186247(n)/A057077(2*n)`
-/

namespace A215347.P7456881574943800954
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A186247 n : ℚ) / (A057077 (2 * n) : ℚ)

end

end A215347.P7456881574943800954

/-!
# A215348: Expansion of q * phi(q) * psi(q^8) / (phi(-q) * phi(q^4)) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A215348, there is no canonical definition to state claims against.
-/

/-! ## A215348.P2694762071390743481

`(-1)^n*A215349(n+1)`
-/

namespace A215348.P2694762071390743481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A215349 (n + 1)

end

end A215348.P2694762071390743481

/-! ## A215348.P5330787550178558661

`A208933(n+1)-A208274(n+1)/2`
-/

namespace A215348.P5330787550178558661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208933 (n + 1) : ℚ) - (A208274 (n + 1) : ℚ) / 2

end

end A215348.P5330787550178558661

/-! ## A215348.P3202112018458372924

`∪[A131126(n), A232772(n)]`
-/

namespace A215348.P3202112018458372924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131126 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232772 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215348.P3202112018458372924

/-! ## A215348.P15735885560009308187

`A212318(n+1)/2`
-/

namespace A215348.P15735885560009308187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212318 (n + 1) : ℚ) / 2

end

end A215348.P15735885560009308187

/-! ## A215348.P14316746279680154456

`(A007096(n+1)-A127391(n+1))/2`
-/

namespace A215348.P14316746279680154456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007096 (n + 1) - A127391 (n + 1) : ℚ) / 2

end

end A215348.P14316746279680154456

/-! ## A215348.P15165055220763874317

`abs(A215349(n+1))`
-/

namespace A215348.P15165055220763874317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A215349 (n + 1)|

end

end A215348.P15165055220763874317

/-! ## A215348.P2144587410424629757

`gcd(A000038(n), A215349(n+1))`
-/

namespace A215348.P2144587410424629757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A215349 (n + 1))

end

end A215348.P2144587410424629757

/-! ## A215348.P11216923215351807085

`lcm(A000034(n), A215349(n+1))`
-/

namespace A215348.P11216923215351807085
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A215349 (n + 1))

end

end A215348.P11216923215351807085

/-! ## A215348.P3495762059886398919

`abs(A232358(n+1)/2)`
-/

namespace A215348.P3495762059886398919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A232358 (n + 1) : ℚ) / 2|

end

end A215348.P3495762059886398919

/-! ## A215348.P6078495333780081231

`A033999(n+1)/2*A232358(n+1)`
-/

namespace A215348.P6078495333780081231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033999 (n + 1) : ℚ) / 2 * (A232358 (n + 1) : ℚ)

end

end A215348.P6078495333780081231

/-! ## A215348.P2910407223628707085

`gcd(A000038(n+1), A232358(n+1))/2`
-/

namespace A215348.P2910407223628707085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 (n + 1)) (A232358 (n + 1)) : ℚ) / 2

end

end A215348.P2910407223628707085

/-! ## A215348.P14750861148707619815

`lcm(A000034(n+1), A232358(n+1))/2`
-/

namespace A215348.P14750861148707619815
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A232358 (n + 1)) : ℚ) / 2

end

end A215348.P14750861148707619815

/-!
# A215349: Expansion of q * phi(-q) * psi(q^8) / (phi(q) * phi(q^4)) in powers of q where phi(), psi() are Ramanujan theta functions.

The programs for A215349, there is no canonical definition to state claims against.
-/

/-! ## A215349.P6913321766239572173

`(-1)^n*A215348(n+1)`
-/

namespace A215349.P6913321766239572173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A215348 (n + 1)

end

end A215349.P6913321766239572173

/-! ## A215349.P8362240625625679851

`A215348(n+1)/A033999(n)`
-/

namespace A215349.P8362240625625679851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215348 (n + 1) : ℚ) / (A033999 n : ℚ)

end

end A215349.P8362240625625679851

/-! ## A215349.P10458655220360192099

`A208604(n+1)/2-A112128(n+1)`
-/

namespace A215349.P10458655220360192099
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A208604 (n + 1) : ℚ) / 2 - (A112128 (n + 1) : ℚ)

end

end A215349.P10458655220360192099

/-! ## A215349.P17232053107833395712

`floor((1-A232358(n+1))/2)`
-/

namespace A215349.P17232053107833395712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 - A232358 (n + 1) : ℚ) / 2⌋

end

end A215349.P17232053107833395712

/-! ## A215349.P17157062747978069832

`A000038(n+1)-A232358(n+1)/2`
-/

namespace A215349.P17157062747978069832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℚ) - (A232358 (n + 1) : ℚ) / 2

end

end A215349.P17157062747978069832

/-! ## A215349.P11958476512644900459

`A232358(n+1)/A232358(gcd(n, n+1))`
-/

namespace A215349.P11958476512644900459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232358 (n + 1) : ℚ) / (A232358 (Nat.gcd n (n + 1)) : ℚ)

end

end A215349.P11958476512644900459

/-! ## A215349.P4848535007420359186

`A232358(n+1)/A232358(ceil(1/(n+1)))`
-/

namespace A215349.P4848535007420359186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232358 (n + 1) : ℚ) / (A232358 ⌈1 / (n + 1 : ℚ)⌉.toNat : ℚ)

end

end A215349.P4848535007420359186

/-! ## A215349.P14633042563659845661

`A127391(2*n)-A232358(n+1)/2`
-/

namespace A215349.P14633042563659845661
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127391 (2 * n) : ℚ) - (A232358 (n + 1) : ℚ) / 2

end

end A215349.P14633042563659845661

/-! ## A215349.P11623282076468880711

`A232358(n+1)/(A033999(2*n+1)-1)`
-/

namespace A215349.P11623282076468880711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232358 (n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A215349.P11623282076468880711

/-! ## A215349.P5766902417270798486

`A232358(n+1)/A000034(2*n+1)-A232358(n+1)`
-/

namespace A215349.P5766902417270798486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232358 (n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A232358 (n + 1) : ℚ)

end

end A215349.P5766902417270798486

/-!
# A215350: Primes congruent to {2, 3, 4, 6} mod 11.

The programs for A215350, the canonical program `A215350.P655104726170058786` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215350 has offset 1).

The definition of A215350 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215350.P655104726170058786

`∪[A141853(n+1), A215279(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215350

/-- `∪[A141853(n+1), A215279(n+1)]` -/
def P655104726170058786.Spec : Prop :=
  ∀ n, (P655104726170058786.a n : ℤ) = A215350 (n + 1)

theorem P655104726170058786.correct : P655104726170058786.Spec := by
  intro n
  simp only [A215350, Nat.add_sub_cancel]

end A215350

/-! ## A215350.P1839023373473139275

`∪[A141851(n+1), A215386(n+1)]`
-/

namespace A215350.P1839023373473139275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141851 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215350.P1839023373473139275

namespace A215350

/-- `∪[A141851(n+1), A215386(n+1)]` -/
def P1839023373473139275.Spec : Prop :=
  ∀ n, (P1839023373473139275.a n : ℤ) = A215350 (n + 1)

end A215350

/-! ## A215350.P12657956940509708705

`∪[A215279(n+1), A215386(n+1)]`
-/

namespace A215350.P12657956940509708705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215350.P12657956940509708705

namespace A215350

/-- `∪[A215279(n+1), A215386(n+1)]` -/
def P12657956940509708705.Spec : Prop :=
  ∀ n, (P12657956940509708705.a n : ℤ) = A215350 (n + 1)

end A215350

/-! ## A215350.P2182082272155992451

`p?[a(n-4)+11]` with `a(0)=2, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A215350.P2182082272155992451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 6] fun n f1 =>
  f1 (n - 4) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215350.P2182082272155992451

namespace A215350

/-- `p?[a(n-4)+11]` -/
def P2182082272155992451.Spec : Prop :=
  ∀ n, (P2182082272155992451.a n : ℤ) = A215350 (n + 1)

end A215350

/-! ## A215350.P8252060849998127520

`p?[A004443(n)+floor(7*n/4)]`
-/

namespace A215350.P8252060849998127520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 n + ⌊7 * ((n : ℚ) / 4)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215350.P8252060849998127520

namespace A215350

/-- `p?[A004443(n)+floor(7*n/4)]` -/
def P8252060849998127520.Spec : Prop :=
  ∀ n, P8252060849998127520.a n = A215350 (n + 1)

end A215350

/-! ## A215350.P17125416662963661346

`p?[A047358(A004525(n+1))+n]`
-/

namespace A215350.P17125416662963661346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047358 (A004525 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215350.P17125416662963661346

namespace A215350

/-- `p?[A047358(A004525(n+1))+n]` -/
def P17125416662963661346.Spec : Prop :=
  ∀ n, P17125416662963661346.a n = A215350 (n + 1)

end A215350

/-! ## A215350.P3266378730303115310

`p?[A130766(n)+A047454(n+1)]`
-/

namespace A215350.P3266378730303115310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 n + A047454 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215350.P3266378730303115310

namespace A215350

/-- `p?[A130766(n)+A047454(n+1)]` -/
def P3266378730303115310.Spec : Prop :=
  ∀ n, P3266378730303115310.a n = A215350 (n + 1)

end A215350

/-! ## A215350.P9807943543162069437

`p?[A168484(n+1)-A021913(n)]`
-/

namespace A215350.P9807943543162069437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (n + 1) - A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215350.P9807943543162069437

namespace A215350

/-- `p?[A168484(n+1)-A021913(n)]` -/
def P9807943543162069437.Spec : Prop :=
  ∀ n, P9807943543162069437.a n = A215350 (n + 1)

end A215350

/-! ## A215350.P10201748431665317309

`p?[A047476(n+1)+A130766(n)+1]`
-/

namespace A215350.P10201748431665317309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047476 (n + 1) + (A130766 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215350.P10201748431665317309

namespace A215350

/-- `p?[A047476(n+1)+A130766(n)+1]` -/
def P10201748431665317309.Spec : Prop :=
  ∀ n, P10201748431665317309.a n = A215350 (n + 1)

end A215350

/-! ## A215350.P2755365374571925286

`record[A006530(A130766(n)+A047454(n+1))]`
-/

namespace A215350.P2755365374571925286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A130766 n + A047454 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215350.P2755365374571925286

namespace A215350

/-- `record[A006530(A130766(n)+A047454(n+1))]` -/
def P2755365374571925286.Spec : Prop :=
  ∀ n, P2755365374571925286.a n = A215350 (n + 1)

end A215350

/-! ## A215350.P11267938147802453114

`record[A020639(A130766(n)+A047454(n+1))]`
-/

namespace A215350.P11267938147802453114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A130766 n + A047454 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215350.P11267938147802453114

namespace A215350

/-- `record[A020639(A130766(n)+A047454(n+1))]` -/
def P11267938147802453114.Spec : Prop :=
  ∀ n, P11267938147802453114.a n = A215350 (n + 1)

end A215350

/-! ## A215350.P15935723405688205785

`∩[A032797(n+1)+1, A215322(n+1)]`
-/

namespace A215350.P15935723405688205785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215350.P15935723405688205785

namespace A215350

/-- `∩[A032797(n+1)+1, A215322(n+1)]` -/
def P15935723405688205785.Spec : Prop :=
  ∀ n, (P15935723405688205785.a n : ℤ) = A215350 (n + 1)

end A215350

/-! ## A215350.P5039729146085102873

`p?[A131452(A131380(2*n))+A131380(n+1)]`
-/

namespace A215350.P5039729146085102873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 (A131380 (2 * n)).toNat + A131380 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215350.P5039729146085102873

namespace A215350

/-- `p?[A131452(A131380(2*n))+A131380(n+1)]` -/
def P5039729146085102873.Spec : Prop :=
  ∀ n, P5039729146085102873.a n = A215350 (n + 1)

end A215350

/-! ## A215350.P11264636614324976425

`record[A014963(A130766(n)+A047454(n+1))]`
-/

namespace A215350.P11264636614324976425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A130766 n + A047454 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215350.P11264636614324976425

namespace A215350

/-- `record[A014963(A130766(n)+A047454(n+1))]` -/
def P11264636614324976425.Spec : Prop :=
  ∀ n, P11264636614324976425.a n = A215350 (n + 1)

end A215350

/-! ## A215350.P6831185928056124354

`record[A014963(A168484(n+1)-A021913(n))]`
-/

namespace A215350.P6831185928056124354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A168484 (n + 1) - A021913 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215350.P6831185928056124354

namespace A215350

/-- `record[A014963(A168484(n+1)-A021913(n))]` -/
def P6831185928056124354.Spec : Prop :=
  ∀ n, P6831185928056124354.a n = A215350 (n + 1)

end A215350

/-!
# A215351: Primes congruent to {2, 3, 4, 6} mod 13.

The programs for A215351, the canonical program `A215351.P11878786393599793784` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215351 has offset 1).

The definition of A215351 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215351.P1528126479171100535

`∪[A093191(n+1), A215387(n+1)]`
-/

namespace A215351.P1528126479171100535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215351.P1528126479171100535

namespace A215351

/-- `∪[A093191(n+1), A215387(n+1)]` -/
def P1528126479171100535.Spec : Prop :=
  ∀ n, (P1528126479171100535.a n : ℤ) = A215351 (n + 1)

end A215351

/-! ## A215351.P11878786393599793784

`∪[A093350(n+1), A215280(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215351

/-- `∪[A093350(n+1), A215280(n+1)]` -/
def P11878786393599793784.Spec : Prop :=
  ∀ n, (P11878786393599793784.a n : ℤ) = A215351 (n + 1)

theorem P11878786393599793784.correct : P11878786393599793784.Spec := by
  intro n
  simp only [A215351, Nat.add_sub_cancel]

end A215351

/-! ## A215351.P1387844710523582902

`∪[A215280(n+1), A215387(n+1)]`
-/

namespace A215351.P1387844710523582902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215351.P1387844710523582902

namespace A215351

/-- `∪[A215280(n+1), A215387(n+1)]` -/
def P1387844710523582902.Spec : Prop :=
  ∀ n, (P1387844710523582902.a n : ℤ) = A215351 (n + 1)

end A215351

/-! ## A215351.P6193827937720636956

`p?[A047255(n+1)+A016993(A002265(n))]`
-/

namespace A215351.P6193827937720636956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1) + A016993 (A002265 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215351.P6193827937720636956

namespace A215351

/-- `p?[A047255(n+1)+A016993(A002265(n))]` -/
def P6193827937720636956.Spec : Prop :=
  ∀ n, P6193827937720636956.a n = A215351 (n + 1)

end A215351

/-! ## A215351.P17795079827458597061

`p?[A110657(n)+A093544(A130766(n))+1]`
-/

namespace A215351.P17795079827458597061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110657 n + A093544 (A130766 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215351.P17795079827458597061

namespace A215351

/-- `p?[A110657(n)+A093544(A130766(n))+1]` -/
def P17795079827458597061.Spec : Prop :=
  ∀ n, P17795079827458597061.a n = A215351 (n + 1)

end A215351

/-! ## A215351.P10279342392545394612

`p?[A017089(A002265(n))+A002265(5*n+1)]`
-/

namespace A215351.P10279342392545394612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A002265 n).toNat + A002265 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215351.P10279342392545394612

namespace A215351

/-- `p?[A017089(A002265(n))+A002265(5*n+1)]` -/
def P10279342392545394612.Spec : Prop :=
  ∀ n, P10279342392545394612.a n = A215351 (n + 1)

end A215351

/-! ## A215351.P3034581125473841776

`p?[A001057(A047286(n+1)+A047247(n+1))]`
-/

namespace A215351.P3034581125473841776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A047286 (n + 1) + A047247 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215351.P3034581125473841776

namespace A215351

/-- `p?[A001057(A047286(n+1)+A047247(n+1))]` -/
def P3034581125473841776.Spec : Prop :=
  ∀ n, P3034581125473841776.a n = A215351 (n + 1)

end A215351

/-!
# A215352: Primes congruent to {2, 3, 4, 6} mod 17.

The programs for A215352, the canonical program `A215352.P9939805677576000821` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215352 has offset 1).

The definition of A215352 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215352.P12088397836457430409

`∪[A094657(n+1), A215388(n+1)]`
-/

namespace A215352.P12088397836457430409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215352.P12088397836457430409

namespace A215352

/-- `∪[A094657(n+1), A215388(n+1)]` -/
def P12088397836457430409.Spec : Prop :=
  ∀ n, (P12088397836457430409.a n : ℤ) = A215352 (n + 1)

end A215352

/-! ## A215352.P9939805677576000821

`∪[A140545(n+1), A215281(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215352

/-- `∪[A140545(n+1), A215281(n+1)]` -/
def P9939805677576000821.Spec : Prop :=
  ∀ n, (P9939805677576000821.a n : ℤ) = A215352 (n + 1)

theorem P9939805677576000821.correct : P9939805677576000821.Spec := by
  intro n
  simp only [A215352, Nat.add_sub_cancel]

end A215352

/-! ## A215352.P2313746987692799062

`∪[A215281(n+1), A215388(n+1)]`
-/

namespace A215352.P2313746987692799062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215352.P2313746987692799062

namespace A215352

/-- `∪[A215281(n+1), A215388(n+1)]` -/
def P2313746987692799062.Spec : Prop :=
  ∀ n, (P2313746987692799062.a n : ℤ) = A215352 (n + 1)

end A215352

/-! ## A215352.P4407001368882153704

`∪[A215388(n+1), A215360(n+4)]`
-/

namespace A215352.P4407001368882153704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 4)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215352.P4407001368882153704

namespace A215352

/-- `∪[A215388(n+1), A215360(n+4)]` -/
def P4407001368882153704.Spec : Prop :=
  ∀ n, (P4407001368882153704.a n : ℤ) = A215352 (n + 1)

end A215352

/-! ## A215352.P16499381857533504821

`p?[a(n-4)+17]` with `a(0)=2, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A215352.P16499381857533504821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 6] fun n f1 =>
  f1 (n - 4) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215352.P16499381857533504821

namespace A215352

/-- `p?[a(n-4)+17]` -/
def P16499381857533504821.Spec : Prop :=
  ∀ n, (P16499381857533504821.a n : ℤ) = A215352 (n + 1)

end A215352

/-!
# A215353: Primes congruent to {2, 3, 4, 6} mod 19.

The programs for A215353, the canonical program `A215353.P7904200068461373245` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215353 has offset 1).

The definition of A215353 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215353.P7904200068461373245

`∪[A141871(n+1), A215282(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215353

/-- `∪[A141871(n+1), A215282(n+1)]` -/
def P7904200068461373245.Spec : Prop :=
  ∀ n, (P7904200068461373245.a n : ℤ) = A215353 (n + 1)

theorem P7904200068461373245.correct : P7904200068461373245.Spec := by
  intro n
  simp only [A215353, Nat.add_sub_cancel]

end A215353

/-! ## A215353.P9616498308161067457

`∪[A141870(n+1), A215389(n+1)]`
-/

namespace A215353.P9616498308161067457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215353.P9616498308161067457

namespace A215353

/-- `∪[A141870(n+1), A215389(n+1)]` -/
def P9616498308161067457.Spec : Prop :=
  ∀ n, (P9616498308161067457.a n : ℤ) = A215353 (n + 1)

end A215353

/-! ## A215353.P6063773843304605999

`∪[A215282(n+1), A215389(n+1)]`
-/

namespace A215353.P6063773843304605999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215353.P6063773843304605999

namespace A215353

/-- `∪[A215282(n+1), A215389(n+1)]` -/
def P6063773843304605999.Spec : Prop :=
  ∀ n, (P6063773843304605999.a n : ℤ) = A215353 (n + 1)

end A215353

/-! ## A215353.P15689677329782847531

`p?[a(n-4)+19]` with `a(0)=2, a(1)=3, a(2)=4, a(3)=6`
-/

namespace A215353.P15689677329782847531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4, 6] fun n f1 =>
  f1 (n - 4) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215353.P15689677329782847531

namespace A215353

/-- `p?[a(n-4)+19]` -/
def P15689677329782847531.Spec : Prop :=
  ∀ n, (P15689677329782847531.a n : ℤ) = A215353 (n + 1)

end A215353

/-! ## A215353.P13555988299042407606

`p?[A130766(n)+A047454(A047454(n+1))]`
-/

namespace A215353.P13555988299042407606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 n + A047454 (A047454 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215353.P13555988299042407606

namespace A215353

/-- `p?[A130766(n)+A047454(A047454(n+1))]` -/
def P13555988299042407606.Spec : Prop :=
  ∀ n, P13555988299042407606.a n = A215353 (n + 1)

end A215353

/-!
# A215354: Primes congruent to {0, 2, 3, 4, 5} mod 11.

The programs for A215354, the canonical program `A215354.P14166509024319937931` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215354 has offset 1).

The definition of A215354 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7872 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215354.P6094756390805758079

`∪[A022011(n+1), A215314(n+1)]`
-/

namespace A215354.P6094756390805758079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215354.P6094756390805758079

namespace A215354

/-- `∪[A022011(n+1), A215314(n+1)]` -/
def P6094756390805758079.Spec : Prop :=
  ∀ n, (P6094756390805758079.a n : ℤ) = A215354 (n + 1)

end A215354

/-! ## A215354.P3474336599146673901

`∪[A022545(n+1), A215314(n+1)]`
-/

namespace A215354.P3474336599146673901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215354.P3474336599146673901

namespace A215354

/-- `∪[A022545(n+1), A215314(n+1)]` -/
def P3474336599146673901.Spec : Prop :=
  ∀ n, (P3474336599146673901.a n : ℤ) = A215354 (n + 1)

end A215354

/-! ## A215354.P14927793360136433910

`∪[A027569(n+1), A215314(n+1)]`
-/

namespace A215354.P14927793360136433910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215354.P14927793360136433910

namespace A215354

/-- `∪[A027569(n+1), A215314(n+1)]` -/
def P14927793360136433910.Spec : Prop :=
  ∀ n, (P14927793360136433910.a n : ℤ) = A215354 (n + 1)

end A215354

/-! ## A215354.P12956580326757922888

`∪[A111070(n+1), A215314(n+1)]`
-/

namespace A215354.P12956580326757922888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215354.P12956580326757922888

namespace A215354

/-- `∪[A111070(n+1), A215314(n+1)]` -/
def P12956580326757922888.Spec : Prop :=
  ∀ n, (P12956580326757922888.a n : ℤ) = A215354 (n + 1)

end A215354

/-! ## A215354.P14166509024319937931

`p?[ceil(6*n/5)+5*floor(n/5)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215354

/-- `p?[ceil(6*n/5)+5*floor(n/5)]` -/
def P14166509024319937931.Spec : Prop :=
  ∀ n, P14166509024319937931.a n = A215354 (n + 1)

theorem P14166509024319937931.correct : P14166509024319937931.Spec := by
  intro n
  simp only [A215354, Nat.add_sub_cancel]

end A215354

/-! ## A215354.P13725653567671697544

`A006530(2*p?[A192333(n+1)-A090223(n)])`
-/

namespace A215354.P13725653567671697544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192333 (n + 1) - A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A215354.P13725653567671697544

namespace A215354

/-- `A006530(2*p?[A192333(n+1)-A090223(n)])` -/
def P13725653567671697544.Spec : Prop :=
  ∀ n, P13725653567671697544.a n = A215354 (n + 1)

end A215354

/-! ## A215354.P6514837663775327286

`A062759(p?[A192333(n+1)-A090223(n)])`
-/

namespace A215354.P6514837663775327286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192333 (n + 1) - A090223 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A215354.P6514837663775327286

namespace A215354

/-- `A062759(p?[A192333(n+1)-A090223(n)])` -/
def P6514837663775327286.Spec : Prop :=
  ∀ n, P6514837663775327286.a n = A215354 (n + 1)

end A215354

/-!
# A215355: Primes congruent to {0, 2, 3, 4, 5} mod 13.

The programs for A215355, the canonical program `A215355.P3196433915697977544` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215355 has offset 1).

The definition of A215355 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215355.P770201433609403185

`∪[A022547(n+1), A215315(n+1)]`
-/

namespace A215355.P770201433609403185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215355.P770201433609403185

namespace A215355

/-- `∪[A022547(n+1), A215315(n+1)]` -/
def P770201433609403185.Spec : Prop :=
  ∀ n, (P770201433609403185.a n : ℤ) = A215355 (n + 1)

end A215355

/-! ## A215355.P1546210350141380669

`∪[A087511(n+1), A215315(n+1)]`
-/

namespace A215355.P1546210350141380669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087511 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215355.P1546210350141380669

namespace A215355

/-- `∪[A087511(n+1), A215315(n+1)]` -/
def P1546210350141380669.Spec : Prop :=
  ∀ n, (P1546210350141380669.a n : ℤ) = A215355 (n + 1)

end A215355

/-! ## A215355.P3196433915697977544

`∪[A102732(n+1), A215359(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215355

/-- `∪[A102732(n+1), A215359(n+1)]` -/
def P3196433915697977544.Spec : Prop :=
  ∀ n, (P3196433915697977544.a n : ℤ) = A215355 (n + 1)

theorem P3196433915697977544.correct : P3196433915697977544.Spec := by
  intro n
  simp only [A215355, Nat.add_sub_cancel]

end A215355

/-! ## A215355.P1030469378220353140

`∪[A215103(n+1), A215359(n+1)]`
-/

namespace A215355.P1030469378220353140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215103 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215355.P1030469378220353140

namespace A215355

/-- `∪[A215103(n+1), A215359(n+1)]` -/
def P1030469378220353140.Spec : Prop :=
  ∀ n, (P1030469378220353140.a n : ℤ) = A215355 (n + 1)

end A215355

/-! ## A215355.P12065791694655117712

`p?[∑[gcd(8, A234902(n+1))]]`
-/

namespace A215355.P12065791694655117712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A234902 (n + 1))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215355.P12065791694655117712

namespace A215355

/-- `p?[∑[gcd(8, A234902(n+1))]]` -/
def P12065791694655117712.Spec : Prop :=
  ∀ n, (P12065791694655117712.a n : ℤ) = A215355 (n + 1)

end A215355

/-! ## A215355.P5991749259031361669

`p?[A081597(n)+A008592(A002266(n))-13]`
-/

namespace A215355.P5991749259031361669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081597 n + A008592 (A002266 n).toNat - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215355.P5991749259031361669

namespace A215355

/-- `p?[A081597(n)+A008592(A002266(n))-13]` -/
def P5991749259031361669.Spec : Prop :=
  ∀ n, P5991749259031361669.a n = A215355 (n + 1)

end A215355

/-! ## A215355.P9010050957941643087

`p?[A001057(A047502(n+1)+n+1)]`
-/

namespace A215355.P9010050957941643087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A047502 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215355.P9010050957941643087

namespace A215355

/-- `p?[A001057(A047502(n+1)+n+1)]` -/
def P9010050957941643087.Spec : Prop :=
  ∀ n, P9010050957941643087.a n = A215355 (n + 1)

end A215355

/-! ## A215355.P14605851334337228008

`record[p?[A025480(A312896(n))]]`
-/

namespace A215355.P14605851334337228008
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A312896 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215355.P14605851334337228008

namespace A215355

/-- `record[p?[A025480(A312896(n))]]` -/
def P14605851334337228008.Spec : Prop :=
  ∀ n, P14605851334337228008.a n = A215355 (n + 1)

end A215355

/-!
# A215356: Primes congruent to {0, 2, 3, 4, 5} mod 17.

The programs for A215356, the canonical program `A215356.P17842161571957885222` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215356 has offset 1).

The definition of A215356 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215356.P7682468091893296891

`∪[A087514(n+1), A215316(n+1)]`
-/

namespace A215356.P7682468091893296891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215356.P7682468091893296891

namespace A215356

/-- `∪[A087514(n+1), A215316(n+1)]` -/
def P7682468091893296891.Spec : Prop :=
  ∀ n, (P7682468091893296891.a n : ℤ) = A215356 (n + 1)

end A215356

/-! ## A215356.P17842161571957885222

`∪[A138623(n+1), A215360(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215356

/-- `∪[A138623(n+1), A215360(n+1)]` -/
def P17842161571957885222.Spec : Prop :=
  ∀ n, (P17842161571957885222.a n : ℤ) = A215356 (n + 1)

theorem P17842161571957885222.correct : P17842161571957885222.Spec := by
  intro n
  simp only [A215356, Nat.add_sub_cancel]

end A215356

/-! ## A215356.P10301489843840355605

`∪[A188717(n+1), A215316(n+1)]`
-/

namespace A215356.P10301489843840355605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215356.P10301489843840355605

namespace A215356

/-- `∪[A188717(n+1), A215316(n+1)]` -/
def P10301489843840355605.Spec : Prop :=
  ∀ n, (P10301489843840355605.a n : ℤ) = A215356 (n + 1)

end A215356

/-! ## A215356.P950192828027795206

`∪[A215104(n+1), A215360(n+1)]`
-/

namespace A215356.P950192828027795206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215356.P950192828027795206

namespace A215356

/-- `∪[A215104(n+1), A215360(n+1)]` -/
def P950192828027795206.Spec : Prop :=
  ∀ n, (P950192828027795206.a n : ℤ) = A215356 (n + 1)

end A215356

/-! ## A215356.P14171714250234136715

`∪[A215169(n+1), A215360(n+1)]`
-/

namespace A215356.P14171714250234136715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215356.P14171714250234136715

namespace A215356

/-- `∪[A215169(n+1), A215360(n+1)]` -/
def P14171714250234136715.Spec : Prop :=
  ∀ n, (P14171714250234136715.a n : ℤ) = A215356 (n + 1)

end A215356

/-! ## A215356.P3404226054520333799

`∪[A215316(n+1), A215360(n+1)]`
-/

namespace A215356.P3404226054520333799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215356.P3404226054520333799

namespace A215356

/-- `∪[A215316(n+1), A215360(n+1)]` -/
def P3404226054520333799.Spec : Prop :=
  ∀ n, (P3404226054520333799.a n : ℤ) = A215356 (n + 1)

end A215356

/-! ## A215356.P5597493994506757445

`∪[A215316(n+1), A215376(n+1)]`
-/

namespace A215356.P5597493994506757445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215356.P5597493994506757445

namespace A215356

/-- `∪[A215316(n+1), A215376(n+1)]` -/
def P5597493994506757445.Spec : Prop :=
  ∀ n, (P5597493994506757445.a n : ℤ) = A215356 (n + 1)

end A215356

/-! ## A215356.P5591776619557558983

`p?[A047248(n+1)+A008593(A002266(n))]`
-/

namespace A215356.P5591776619557558983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047248 (n + 1) + A008593 (A002266 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215356.P5591776619557558983

namespace A215356

/-- `p?[A047248(n+1)+A008593(A002266(n))]` -/
def P5591776619557558983.Spec : Prop :=
  ∀ n, P5591776619557558983.a n = A215356 (n + 1)

end A215356

/-!
# A215357: Primes congruent to {0, 2, 3, 4, 5} mod 19.

The programs for A215357, the canonical program `A215357.P13591823837820838479` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215357 has offset 1).

The definition of A215357 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215357.P2223789802686824791

`∪[A087515(n+1), A215317(n+1)]`
-/

namespace A215357.P2223789802686824791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215357.P2223789802686824791

namespace A215357

/-- `∪[A087515(n+1), A215317(n+1)]` -/
def P2223789802686824791.Spec : Prop :=
  ∀ n, (P2223789802686824791.a n : ℤ) = A215357 (n + 1)

end A215357

/-! ## A215357.P13591823837820838479

`∪[A102851(n+1), A215361(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215357

/-- `∪[A102851(n+1), A215361(n+1)]` -/
def P13591823837820838479.Spec : Prop :=
  ∀ n, (P13591823837820838479.a n : ℤ) = A215357 (n + 1)

theorem P13591823837820838479.correct : P13591823837820838479.Spec := by
  intro n
  simp only [A215357, Nat.add_sub_cancel]

end A215357

/-! ## A215357.P11662593553199894780

`∪[A215105(n+1), A215361(n+1)]`
-/

namespace A215357.P11662593553199894780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215357.P11662593553199894780

namespace A215357

/-- `∪[A215105(n+1), A215361(n+1)]` -/
def P11662593553199894780.Spec : Prop :=
  ∀ n, (P11662593553199894780.a n : ℤ) = A215357 (n + 1)

end A215357

/-! ## A215357.P6453898240982374962

`∪[A215170(n+1), A215361(n+1)]`
-/

namespace A215357.P6453898240982374962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215357.P6453898240982374962

namespace A215357

/-- `∪[A215170(n+1), A215361(n+1)]` -/
def P6453898240982374962.Spec : Prop :=
  ∀ n, (P6453898240982374962.a n : ℤ) = A215357 (n + 1)

end A215357

/-! ## A215357.P6442680277665016447

`∪[A215317(n+1), A215361(n+1)]`
-/

namespace A215357.P6442680277665016447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215357.P6442680277665016447

namespace A215357

/-- `∪[A215317(n+1), A215361(n+1)]` -/
def P6442680277665016447.Spec : Prop :=
  ∀ n, (P6442680277665016447.a n : ℤ) = A215357 (n + 1)

end A215357

/-! ## A215357.P4646735620452337435

`∪[A215317(n+1), A215377(n+1)]`
-/

namespace A215357.P4646735620452337435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215357.P4646735620452337435

namespace A215357

/-- `∪[A215317(n+1), A215377(n+1)]` -/
def P4646735620452337435.Spec : Prop :=
  ∀ n, (P4646735620452337435.a n : ℤ) = A215357 (n + 1)

end A215357

/-! ## A215357.P2092808414662009953

`p?[A016789(A235499(n))-A265188(n+1)]`
-/

namespace A215357.P2092808414662009953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A235499 n).toNat - A265188 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215357.P2092808414662009953

namespace A215357

/-- `p?[A016789(A235499(n))-A265188(n+1)]` -/
def P2092808414662009953.Spec : Prop :=
  ∀ n, P2092808414662009953.a n = A215357 (n + 1)

end A215357

/-! ## A215357.P11916371990071262007

`p?[A072154(A293292(n+1))-n]`
-/

namespace A215357.P11916371990071262007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 (A293292 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215357.P11916371990071262007

namespace A215357

/-- `p?[A072154(A293292(n+1))-n]` -/
def P11916371990071262007.Spec : Prop :=
  ∀ n, P11916371990071262007.a n = A215357 (n + 1)

end A215357

/-!
# A215358: Primes congruent to {0, 2, 3, 4} mod 11.

The programs for A215358, the canonical program `A215358.P13244640912977840726` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215358 has offset 1).

The definition of A215358 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215358.P12704100808678479039

`∪[A022011(n+1), A215279(n+1)]`
-/

namespace A215358.P12704100808678479039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215358.P12704100808678479039

namespace A215358

/-- `∪[A022011(n+1), A215279(n+1)]` -/
def P12704100808678479039.Spec : Prop :=
  ∀ n, (P12704100808678479039.a n : ℤ) = A215358 (n + 1)

end A215358

/-! ## A215358.P6755303217421551619

`∪[A022545(n+1), A215279(n+1)]`
-/

namespace A215358.P6755303217421551619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215358.P6755303217421551619

namespace A215358

/-- `∪[A022545(n+1), A215279(n+1)]` -/
def P6755303217421551619.Spec : Prop :=
  ∀ n, (P6755303217421551619.a n : ℤ) = A215358 (n + 1)

end A215358

/-! ## A215358.P16020737410458423535

`∪[A027569(n+1), A215279(n+1)]`
-/

namespace A215358.P16020737410458423535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215279 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215358.P16020737410458423535

namespace A215358

/-- `∪[A027569(n+1), A215279(n+1)]` -/
def P16020737410458423535.Spec : Prop :=
  ∀ n, (P16020737410458423535.a n : ℤ) = A215358 (n + 1)

end A215358

/-! ## A215358.P13244640912977840726

`∪[A141851(n+1), A215374(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215358

/-- `∪[A141851(n+1), A215374(n+1)]` -/
def P13244640912977840726.Spec : Prop :=
  ∀ n, (P13244640912977840726.a n : ℤ) = A215358 (n + 1)

theorem P13244640912977840726.correct : P13244640912977840726.Spec := by
  intro n
  simp only [A215358, Nat.add_sub_cancel]

end A215358

/-! ## A215358.P17469215804011689332

`p?[A047358(A004525(n)+1)+n-2]`
-/

namespace A215358.P17469215804011689332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047358 (A004525 n + 1).toNat + ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215358.P17469215804011689332

namespace A215358

/-- `p?[A047358(A004525(n)+1)+n-2]` -/
def P17469215804011689332.Spec : Prop :=
  ∀ n, P17469215804011689332.a n = A215358 (n + 1)

end A215358

/-! ## A215358.P17835545908632954179

`p?[7*A004523(A057360(n))+n-11]`
-/

namespace A215358.P17835545908632954179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A004523 (A057360 n).toNat + (n : ℤ) - 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215358.P17835545908632954179

namespace A215358

/-- `p?[7*A004523(A057360(n))+n-11]` -/
def P17835545908632954179.Spec : Prop :=
  ∀ n, P17835545908632954179.a n = A215358 (n + 1)

end A215358

/-! ## A215358.P18390768752952629500

`p?[A267755(A001068(n))-1]`
-/

namespace A215358.P18390768752952629500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 (A001068 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215358.P18390768752952629500

namespace A215358

/-- `p?[A267755(A001068(n))-1]` -/
def P18390768752952629500.Spec : Prop :=
  ∀ n, P18390768752952629500.a n = A215358 (n + 1)

end A215358

/-! ## A215358.P17100005196203863054

`p?[A267755(n)-A168184(n+1)]`
-/

namespace A215358.P17100005196203863054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n - A168184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215358.P17100005196203863054

namespace A215358

/-- `p?[A267755(n)-A168184(n+1)]` -/
def P17100005196203863054.Spec : Prop :=
  ∀ n, P17100005196203863054.a n = A215358 (n + 1)

end A215358

/-! ## A215358.P5464933332315697168

`p?[(A267755(n)-1)*A177706(n)]`
-/

namespace A215358.P5464933332315697168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267755 n - 1) * A177706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215358.P5464933332315697168

namespace A215358

/-- `p?[(A267755(n)-1)*A177706(n)]` -/
def P5464933332315697168.Spec : Prop :=
  ∀ n, P5464933332315697168.a n = A215358 (n + 1)

end A215358

/-! ## A215358.P4257137561985111999

`∩[A215354(n+1), A279194(n+1)]`
-/

namespace A215358.P4257137561985111999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215358.P4257137561985111999

namespace A215358

/-- `∩[A215354(n+1), A279194(n+1)]` -/
def P4257137561985111999.Spec : Prop :=
  ∀ n, (P4257137561985111999.a n : ℤ) = A215358 (n + 1)

end A215358

/-! ## A215358.P15007564545529686977

`∩[A032797(n+1)-1, A215354(n+1)]`
-/

namespace A215358.P15007564545529686977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215358.P15007564545529686977

namespace A215358

/-- `∩[A032797(n+1)-1, A215354(n+1)]` -/
def P15007564545529686977.Spec : Prop :=
  ∀ n, (P15007564545529686977.a n : ℤ) = A215358 (n + 1)

end A215358

/-! ## A215358.P7085987250731846458

`p?[A004525(n)-A001057(A047293(n+1))]`
-/

namespace A215358.P7085987250731846458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n - A001057 (A047293 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215358.P7085987250731846458

namespace A215358

/-- `p?[A004525(n)-A001057(A047293(n+1))]` -/
def P7085987250731846458.Spec : Prop :=
  ∀ n, P7085987250731846458.a n = A215358 (n + 1)

end A215358

/-! ## A215358.P8759167155555072946

`p?[A092038(A047255(n+1)+A047201(n+1))]`
-/

namespace A215358.P8759167155555072946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092038 (A047255 (n + 1) + A047201 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215358.P8759167155555072946

namespace A215358

/-- `p?[A092038(A047255(n+1)+A047201(n+1))]` -/
def P8759167155555072946.Spec : Prop :=
  ∀ n, P8759167155555072946.a n = A215358 (n + 1)

end A215358

/-!
# A215359: Primes congruent to {0, 2, 3, 4} mod 13.

The programs for A215359, the canonical program `A215359.P14335529183070576005` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215359 has offset 1).

The definition of A215359 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6986 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215359.P10280640597331131009

`∪[A022547(n+1), A215280(n+1)]`
-/

namespace A215359.P10280640597331131009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022547 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215359.P10280640597331131009

namespace A215359

/-- `∪[A022547(n+1), A215280(n+1)]` -/
def P10280640597331131009.Spec : Prop :=
  ∀ n, (P10280640597331131009.a n : ℤ) = A215359 (n + 1)

end A215359

/-! ## A215359.P8597685273099935750

`∪[A093191(n+1), A215375(n+1)]`
-/

namespace A215359.P8597685273099935750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215359.P8597685273099935750

namespace A215359

/-- `∪[A093191(n+1), A215375(n+1)]` -/
def P8597685273099935750.Spec : Prop :=
  ∀ n, (P8597685273099935750.a n : ℤ) = A215359 (n + 1)

end A215359

/-! ## A215359.P8184767969996360313

`∪[A215280(n+1), A215375(n+1)]`
-/

namespace A215359.P8184767969996360313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215359.P8184767969996360313

namespace A215359

/-- `∪[A215280(n+1), A215375(n+1)]` -/
def P8184767969996360313.Spec : Prop :=
  ∀ n, (P8184767969996360313.a n : ℤ) = A215359 (n + 1)

end A215359

/-! ## A215359.P14335529183070576005

`p?[a(n-4)+13]` with `a(0)=2, a(1)=3, a(2)=4, a(3)=13`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215359

/-- `p?[a(n-4)+13]` -/
def P14335529183070576005.Spec : Prop :=
  ∀ n, (P14335529183070576005.a n : ℤ) = A215359 (n + 1)

theorem P14335529183070576005.correct : P14335529183070576005.Spec := by
  intro n
  simp only [A215359, Nat.add_sub_cancel]

end A215359

/-! ## A215359.P12141811211757093851

`p?[A112653(A004525(n))+n%4]`
-/

namespace A215359.P12141811211757093851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (A004525 n).toNat + ((n % 4 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215359.P12141811211757093851

namespace A215359

/-- `p?[A112653(A004525(n))+n%4]` -/
def P12141811211757093851.Spec : Prop :=
  ∀ n, P12141811211757093851.a n = A215359 (n + 1)

end A215359

/-! ## A215359.P18222159149858372541

`p?[A168390(A065033(n))+A047201(n+1)]`
-/

namespace A215359.P18222159149858372541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168390 (A065033 n).toNat + A047201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215359.P18222159149858372541

namespace A215359

/-- `p?[A168390(A065033(n))+A047201(n+1)]` -/
def P18222159149858372541.Spec : Prop :=
  ∀ n, P18222159149858372541.a n = A215359 (n + 1)

end A215359

/-! ## A215359.P16664033213145712973

`p?[A047255(n+1)+A016993(A002265(n+1))]`
-/

namespace A215359.P16664033213145712973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (n + 1) + A016993 (A002265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215359.P16664033213145712973

namespace A215359

/-- `p?[A047255(n+1)+A016993(A002265(n+1))]` -/
def P16664033213145712973.Spec : Prop :=
  ∀ n, P16664033213145712973.a n = A215359 (n + 1)

end A215359

/-! ## A215359.P12498715276382418270

`p?[A004525(n)+A192333(A008621(n)+n)-n]`
-/

namespace A215359.P12498715276382418270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (A192333 (A008621 n + (n : ℤ)).toNat - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215359.P12498715276382418270

namespace A215359

/-- `p?[A004525(n)+A192333(A008621(n)+n)-n]` -/
def P12498715276382418270.Spec : Prop :=
  ∀ n, P12498715276382418270.a n = A215359 (n + 1)

end A215359

/-! ## A215359.P154864562598790221

`∩[A032798(n+1)-2, A215355(n+1)]`
-/

namespace A215359.P154864562598790221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032798 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215359.P154864562598790221

namespace A215359

/-- `∩[A032798(n+1)-2, A215355(n+1)]` -/
def P154864562598790221.Spec : Prop :=
  ∀ n, (P154864562598790221.a n : ℤ) = A215359 (n + 1)

end A215359

/-!
# A215360: Primes congruent to {0, 2, 3, 4} mod 17.

The programs for A215360, the canonical program `A215360.P14106607603222397730` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215360 has offset 1).

The definition of A215360 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6726 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215360.P7130154080430058771

`∪[A087514(n+1), A215281(n+1)]`
-/

namespace A215360.P7130154080430058771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215360.P7130154080430058771

namespace A215360

/-- `∪[A087514(n+1), A215281(n+1)]` -/
def P7130154080430058771.Spec : Prop :=
  ∀ n, (P7130154080430058771.a n : ℤ) = A215360 (n + 1)

end A215360

/-! ## A215360.P16178381638533909588

`∪[A094657(n+1), A215376(n+1)]`
-/

namespace A215360.P16178381638533909588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215360.P16178381638533909588

namespace A215360

/-- `∪[A094657(n+1), A215376(n+1)]` -/
def P16178381638533909588.Spec : Prop :=
  ∀ n, (P16178381638533909588.a n : ℤ) = A215360 (n + 1)

end A215360

/-! ## A215360.P7360391818590697874

`∪[A215281(n+1), A215376(n+1)]`
-/

namespace A215360.P7360391818590697874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215360.P7360391818590697874

namespace A215360

/-- `∪[A215281(n+1), A215376(n+1)]` -/
def P7360391818590697874.Spec : Prop :=
  ∀ n, (P7360391818590697874.a n : ℤ) = A215360 (n + 1)

end A215360

/-! ## A215360.P14106607603222397730

`p?[a(n-4)+17]` with `a(0)=2, a(1)=3, a(2)=4, a(3)=17`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215360

/-- `p?[a(n-4)+17]` -/
def P14106607603222397730.Spec : Prop :=
  ∀ n, (P14106607603222397730.a n : ℤ) = A215360 (n + 1)

theorem P14106607603222397730.correct : P14106607603222397730.Spec := by
  intro n
  simp only [A215360, Nat.add_sub_cancel]

end A215360

/-! ## A215360.P7596690309195899664

`p?[A112653(A004525(n))+n]`
-/

namespace A215360.P7596690309195899664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (A004525 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215360.P7596690309195899664

namespace A215360

/-- `p?[A112653(A004525(n))+n]` -/
def P7596690309195899664.Spec : Prop :=
  ∀ n, P7596690309195899664.a n = A215360 (n + 1)

end A215360

/-! ## A215360.P11538818366264189879

`∩[A000040(n+1), A112653(A004525(n))+n]`
-/

namespace A215360.P11538818366264189879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (A004525 n).toNat + (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215360.P11538818366264189879

namespace A215360

/-- `∩[A000040(n+1), A112653(A004525(n))+n]` -/
def P11538818366264189879.Spec : Prop :=
  ∀ n, (P11538818366264189879.a n : ℤ) = A215360 (n + 1)

end A215360

/-! ## A215360.P17854908135293783949

`p?[A166486(n)+13*A004526(A004526(n))+n]`
-/

namespace A215360.P17854908135293783949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166486 n + (13 * A004526 (A004526 n).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215360.P17854908135293783949

namespace A215360

/-- `p?[A166486(n)+13*A004526(A004526(n))+n]` -/
def P17854908135293783949.Spec : Prop :=
  ∀ n, P17854908135293783949.a n = A215360 (n + 1)

end A215360

/-!
# A215361: Primes congruent to {0, 2, 3, 4} mod 19.

The programs for A215361, the canonical program `A215361.P15517563521779700594` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215361 has offset 1).

The definition of A215361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6640 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215361.P11927059155160488773

`∪[A087515(n+1), A215282(n+1)]`
-/

namespace A215361.P11927059155160488773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215361.P11927059155160488773

namespace A215361

/-- `∪[A087515(n+1), A215282(n+1)]` -/
def P11927059155160488773.Spec : Prop :=
  ∀ n, (P11927059155160488773.a n : ℤ) = A215361 (n + 1)

end A215361

/-! ## A215361.P11726560486023446407

`∪[A141870(n+1), A215377(n+1)]`
-/

namespace A215361.P11726560486023446407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215361.P11726560486023446407

namespace A215361

/-- `∪[A141870(n+1), A215377(n+1)]` -/
def P11726560486023446407.Spec : Prop :=
  ∀ n, (P11726560486023446407.a n : ℤ) = A215361 (n + 1)

end A215361

/-! ## A215361.P16288931018039630724

`∪[A215282(n+1), A215377(n+1)]`
-/

namespace A215361.P16288931018039630724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215361.P16288931018039630724

namespace A215361

/-- `∪[A215282(n+1), A215377(n+1)]` -/
def P16288931018039630724.Spec : Prop :=
  ∀ n, (P16288931018039630724.a n : ℤ) = A215361 (n + 1)

end A215361

/-! ## A215361.P15517563521779700594

`p?[a(n-4)+19]` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215361

/-- `p?[a(n-4)+19]` -/
def P15517563521779700594.Spec : Prop :=
  ∀ n, (P15517563521779700594.a n : ℤ) = A215361 (n + 1)

theorem P15517563521779700594.correct : P15517563521779700594.Spec := by
  intro n
  simp only [A215361, Nat.add_sub_cancel]

end A215361

/-! ## A215361.P9369907629928132928

`p?[A004525(n)+13*A002265(n)+n]`
-/

namespace A215361.P9369907629928132928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (13 * A002265 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215361.P9369907629928132928

namespace A215361

/-- `p?[A004525(n)+13*A002265(n)+n]` -/
def P9369907629928132928.Spec : Prop :=
  ∀ n, P9369907629928132928.a n = A215361 (n + 1)

end A215361

/-! ## A215361.P5850104061999613527

`p?[A008597(A002265(n))+n+1-A121262(n)]`
-/

namespace A215361.P5850104061999613527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (A002265 n).toNat + (n + 1 : ℤ) - A121262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215361.P5850104061999613527

namespace A215361

/-- `p?[A008597(A002265(n))+n+1-A121262(n)]` -/
def P5850104061999613527.Spec : Prop :=
  ∀ n, P5850104061999613527.a n = A215361 (n + 1)

end A215361

/-! ## A215361.P13655265997281683850

`p?[A004525(n)+13*A004526(A004526(n))+n]`
-/

namespace A215361.P13655265997281683850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 n + (13 * A004526 (A004526 n).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215361.P13655265997281683850

namespace A215361

/-- `p?[A004525(n)+13*A004526(A004526(n))+n]` -/
def P13655265997281683850.Spec : Prop :=
  ∀ n, P13655265997281683850.a n = A215361 (n + 1)

end A215361

/-!
# A215362: E.g.f. satisfies: A(x) = x - (exp(A(x)) - 1) * log(1 - A(x)).

The programs for A215362, there is no canonical definition to state claims against.
-/

/-! ## A215362.P370730643867277144

`A025512((A025512(n)-1)*a(n-1))-1` with `a(0)=1, a(1)=2`
-/

namespace A215362.P370730643867277144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A025512 ((A025512 n - 1) * a (n - 1)).toNat - 1

end

end A215362.P370730643867277144

/-!
# A215363: E.g.f. satisfies: A(x) = x + A(x)^2*cosh(A(x)).

The programs for A215363, there is no canonical definition to state claims against.
-/

/-! ## A215363.P1130341388473489663

`(n+1)*A215364(n)`
-/

namespace A215363.P1130341388473489663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A215364 n

end

end A215363.P1130341388473489663

/-! ## A215363.P16731309922481157499

`lcm(A000027(n+1), A215364(n))`
-/

namespace A215363.P16731309922481157499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000027 (n + 1)) (A215364 n)

end

end A215363.P16731309922481157499

/-! ## A215363.P6446172772596610218

`lcm(n+1, A215364(n)-A159075(n))`
-/

namespace A215363.P6446172772596610218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A215364 n - A159075 n)

end

end A215363.P6446172772596610218

/-! ## A215363.P5125001577223664514

`lcm(A004736(A000124(n)), A215364(n))`
-/

namespace A215363.P5125001577223664514
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004736 (A000124 n).toNat) (A215364 n)

end

end A215363.P5125001577223664514

/-! ## A215363.P14112836004064342228

`lcm(A090108(n+1), A215364(A055646(n)))`
-/

namespace A215363.P14112836004064342228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A090108 (n + 1)) (A215364 (A055646 n).toNat)

end

end A215363.P14112836004064342228

/-!
# A215364: E.g.f. A(x) satisfies A(x) = 1 + x*A(x)^2*cosh(x*A(x)).

The programs for A215364, there is no canonical definition to state claims against.
-/

/-! ## A215364.P3223447258023440539

`A215363(n+1)/(n+1)`
-/

namespace A215364.P3223447258023440539
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215363 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A215364.P3223447258023440539

/-! ## A215364.P9155881660382212070

`A360234(n)-A063691(A048143(n))`
-/

namespace A215364.P9155881660382212070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360234 n - A063691 (A048143 n).toNat

end

end A215364.P9155881660382212070

/-!
# A215365: Primitive integer length of the side of an origin-centered square that contains inside its boundary a point with integer coordinates that is an integer distance from three of the four corners.

The programs for A215365, there is no canonical definition to state claims against.
-/

/-! ## A215365.P6225019864319799724

`record[A003815(A260549(n+1))]`
-/

namespace A215365.P6225019864319799724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003815 (A260549 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215365.P6225019864319799724

/-! ## A215365.P4857942182715405355

`filter[A260549(n+1), A011765(#)]`
-/

namespace A215365.P4857942182715405355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A215365.P4857942182715405355

/-! ## A215365.P13382079766207879069

`filter[A260549(n+1), A059841(#)]`
-/

namespace A215365.P13382079766207879069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A215365.P13382079766207879069

/-! ## A215365.P11847524563281681407

`filter[A260549(n+1), A108357(#)]`
-/

namespace A215365.P11847524563281681407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260549 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A108357 (f1 j).toNat = 1) n)

end

end A215365.P11847524563281681407

/-!
# A215366: Triangle T(n,k) read by rows in which n-th row lists in increasing order all partitions lambda of n encoded as Product_{i in lambda} prime(i); n>=0, 1<=k<=A000041(n).

The programs for A215366, there is no canonical definition to state claims against.
-/

/-! ## A215366.P17451737523511700563

`A333483(n)%A331456(n)`
-/

namespace A215366.P17451737523511700563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333483 n) (A331456 n)

end

end A215366.P17451737523511700563

/-! ## A215366.P17619847179431644146

`or(Δ[A333525(n+1)], A333483(n))`
-/

namespace A215366.P17619847179431644146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333525 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A333483 n)

end

end A215366.P17619847179431644146

/-! ## A215366.P7886593776368833998

`A333483(n)+A000007(A027575(n))`
-/

namespace A215366.P7886593776368833998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 n + A000007 (A027575 n).toNat

end

end A215366.P7886593776368833998

/-! ## A215366.P11585606970058842017

`A333483(n)+A007814(A078371(n))`
-/

namespace A215366.P11585606970058842017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333483 n + A007814 (A078371 n).toNat

end

end A215366.P11585606970058842017

/-!
# A215367: Lengths of binary representations of prime Fibonacci numbers.

The programs for A215367, there is no canonical definition to state claims against.
-/

/-! ## A215367.P9105150285977004951

`A020909(A001605(n+1))`
-/

namespace A215367.P9105150285977004951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020909 (A001605 (n + 1)).toNat

end

end A215367.P9105150285977004951

/-! ## A215367.P581082846575054821

`A020909(A069744(n+1)+1)`
-/

namespace A215367.P581082846575054821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020909 (A069744 (n + 1) + 1).toNat

end

end A215367.P581082846575054821

/-! ## A215367.P13423663384059388990

`A020909(∪[A083668(n+1), A216558(n+1)])`
-/

namespace A215367.P13423663384059388990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216558 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020909 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A215367.P13423663384059388990

/-! ## A215367.P7561899005929430535

`A020909(∪[A083668(n+1), A216570(n+1)])`
-/

namespace A215367.P7561899005929430535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216570 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020909 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A215367.P7561899005929430535

/-! ## A215367.P7274821369789888836

`A020909(∪[A083668(n+1), A216574(n+1)])`
-/

namespace A215367.P7274821369789888836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216574 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020909 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A215367.P7274821369789888836

/-!
# A215368: E.g.f.: Series_Reversion( x*cos(x) - x*sin(x) ).

The programs for A215368, there is no canonical definition to state claims against.
-/

/-! ## A215368.P11172397617158411220

`(n+1)*A201923(n)`
-/

namespace A215368.P11172397617158411220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A201923 n

end

end A215368.P11172397617158411220

/-! ## A215368.P3385647087262420022

`A201923(n)*A220645(∑[n])`
-/

namespace A215368.P3385647087262420022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201923 n * A220645 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215368.P3385647087262420022

/-! ## A215368.P8237113211115481103

`A201923(n)*A336326(∑[n])`
-/

namespace A215368.P8237113211115481103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201923 n * A336326 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215368.P8237113211115481103

/-! ## A215368.P16256674626912289904

`A201923(n)*A290632(A000124(n))`
-/

namespace A215368.P16256674626912289904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201923 n * A290632 (A000124 n).toNat

end

end A215368.P16256674626912289904

/-! ## A215368.P11651623797344424061

`A201923(n)*A290251(2^n)`
-/

namespace A215368.P11651623797344424061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201923 n * A290251 (2 ^ n)

end

end A215368.P11651623797344424061

/-!
# A215369: Numbers n with the same f-value as n+1, where f(n) = A056239(n) = Sum_{i} i*e_i for n = Product_{i} prime(i)^e_i.

The programs for A215369, there is no canonical definition to state claims against.
-/

/-! ## A215369.P1671377373577795759

`A020725(eq[A056239(n+1), A056239(n+2)])`
-/

namespace A215369.P1671377373577795759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215369.P1671377373577795759

/-! ## A215369.P48036954672810821

`A065475(eq[A056239(n+1), A056239(n+2)])`
-/

namespace A215369.P48036954672810821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215369.P48036954672810821

/-! ## A215369.P387175793575470726

`A114637(eq[A056239(n+1), A056239(n+2)])`
-/

namespace A215369.P387175793575470726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215369.P387175793575470726

/-! ## A215369.P15481632906115925200

`eq[A056239(n+1)+1, A056239(A004277(n))]`
-/

namespace A215369.P15481632906115925200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215369.P15481632906115925200

/-! ## A215369.P1517877184843071895

`eq[A056239(n+1)+1, A056239(A004275(n+1))]`
-/

namespace A215369.P1517877184843071895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A004275 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215369.P1517877184843071895

/-! ## A215369.P8392665976223351013

`eq[A056239(n+1)+1, A056239(A028310(2*n))]`
-/

namespace A215369.P8392665976223351013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215369.P8392665976223351013

/-!
# A215370: Primes congruent to {0, 2, 3, 5, 6} mod 11.

The programs for A215370, the canonical program `A215370.P10242136896555987398` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215370 has offset 1).

The definition of A215370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215370.P10242136896555987398

`∪[A215106(n+1), A215374(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215370

/-- `∪[A215106(n+1), A215374(n+1)]` -/
def P10242136896555987398.Spec : Prop :=
  ∀ n, (P10242136896555987398.a n : ℤ) = A215370 (n + 1)

theorem P10242136896555987398.correct : P10242136896555987398.Spec := by
  intro n
  simp only [A215370, Nat.add_sub_cancel]

end A215370

/-! ## A215370.P17749920961617588422

`p?[A047290(A008620(n))+A032793(n+1)]`
-/

namespace A215370.P17749920961617588422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047290 (A008620 n).toNat + A032793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215370.P17749920961617588422

namespace A215370

/-- `p?[A047290(A008620(n))+A032793(n+1)]` -/
def P17749920961617588422.Spec : Prop :=
  ∀ n, P17749920961617588422.a n = A215370 (n + 1)

end A215370

/-! ## A215370.P3360572213020097861

`p?[A047604(n+1)-A004523(A002264(n))]`
-/

namespace A215370.P3360572213020097861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047604 (n + 1) - A004523 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215370.P3360572213020097861

namespace A215370

/-- `p?[A047604(n+1)-A004523(A002264(n))]` -/
def P3360572213020097861.Spec : Prop :=
  ∀ n, P3360572213020097861.a n = A215370 (n + 1)

end A215370

/-! ## A215370.P17536264306787876550

`p?[A057355(n)+A047603(n+2)]`
-/

namespace A215370.P17536264306787876550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057355 n + A047603 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215370.P17536264306787876550

namespace A215370

/-- `p?[A057355(n)+A047603(n+2)]` -/
def P17536264306787876550.Spec : Prop :=
  ∀ n, P17536264306787876550.a n = A215370 (n + 1)

end A215370

/-! ## A215370.P4969139004868113653

`record[A020639(A057355(n)+A047603(n+2))]`
-/

namespace A215370.P4969139004868113653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A057355 n + A047603 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215370.P4969139004868113653

namespace A215370

/-- `record[A020639(A057355(n)+A047603(n+2))]` -/
def P4969139004868113653.Spec : Prop :=
  ∀ n, P4969139004868113653.a n = A215370 (n + 1)

end A215370

/-! ## A215370.P7413524094232024301

`p?[∑[xor(1, A152893(2*n+1))]]`
-/

namespace A215370.P7413524094232024301
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A152893 (2 * n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215370.P7413524094232024301

namespace A215370

/-- `p?[∑[xor(1, A152893(2*n+1))]]` -/
def P7413524094232024301.Spec : Prop :=
  ∀ n, P7413524094232024301.a n = A215370 (n + 1)

end A215370

/-! ## A215370.P12155305411931205970

`record[A014963(A057355(n)+A047603(n+2))]`
-/

namespace A215370.P12155305411931205970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A057355 n + A047603 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215370.P12155305411931205970

namespace A215370

/-- `record[A014963(A057355(n)+A047603(n+2))]` -/
def P12155305411931205970.Spec : Prop :=
  ∀ n, P12155305411931205970.a n = A215370 (n + 1)

end A215370

/-!
# A215371: Primes congruent to {0, 2, 3, 5, 6} mod 13.

The programs for A215371, the canonical program `A215371.P13171227302205384638` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215371 has offset 1).

The definition of A215371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215371.P13171227302205384638

`∪[A215131(n+1), A215375(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215371

/-- `∪[A215131(n+1), A215375(n+1)]` -/
def P13171227302205384638.Spec : Prop :=
  ∀ n, (P13171227302205384638.a n : ℤ) = A215371 (n + 1)

theorem P13171227302205384638.correct : P13171227302205384638.Spec := by
  intro n
  simp only [A215371, Nat.add_sub_cancel]

end A215371

/-! ## A215371.P19501101554636765

`p?[A131380(A002264(n))+A047604(n+1)]`
-/

namespace A215371.P19501101554636765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131380 (A002264 n).toNat + A047604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215371.P19501101554636765

namespace A215371

/-- `p?[A131380(A002264(n))+A047604(n+1)]` -/
def P19501101554636765.Spec : Prop :=
  ∀ n, P19501101554636765.a n = A215371 (n + 1)

end A215371

/-! ## A215371.P5754532952836297274

`p?[2*A047453(n+1)-A057355(n)]`
-/

namespace A215371.P5754532952836297274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047453 (n + 1) - A057355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215371.P5754532952836297274

namespace A215371

/-- `p?[2*A047453(n+1)-A057355(n)]` -/
def P5754532952836297274.Spec : Prop :=
  ∀ n, P5754532952836297274.a n = A215371 (n + 1)

end A215371

/-! ## A215371.P14702407383415515431

`p?[A192333(n+1)+A057354(n)-A090223(n)]`
-/

namespace A215371.P14702407383415515431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192333 (n + 1) + (A057354 n - A090223 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215371.P14702407383415515431

namespace A215371

/-- `p?[A192333(n+1)+A057354(n)-A090223(n)]` -/
def P14702407383415515431.Spec : Prop :=
  ∀ n, P14702407383415515431.a n = A215371 (n + 1)

end A215371

/-! ## A215371.P16777292031778691285

`p?[A004275(A047603(n+1))-A057355(n)]`
-/

namespace A215371.P16777292031778691285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A047603 (n + 1)).toNat - A057355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215371.P16777292031778691285

namespace A215371

/-- `p?[A004275(A047603(n+1))-A057355(n)]` -/
def P16777292031778691285.Spec : Prop :=
  ∀ n, P16777292031778691285.a n = A215371 (n + 1)

end A215371

/-! ## A215371.P14952433298800464177

`p?[A005843(A047453(n+1))-A057355(n)]`
-/

namespace A215371.P14952433298800464177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047453 (n + 1)).toNat - A057355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215371.P14952433298800464177

namespace A215371

/-- `p?[A005843(A047453(n+1))-A057355(n)]` -/
def P14952433298800464177.Spec : Prop :=
  ∀ n, P14952433298800464177.a n = A215371 (n + 1)

end A215371

/-! ## A215371.P728480639366005397

`p?[A004524(A265188(n+1)+A057354(n))]`
-/

namespace A215371.P728480639366005397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A265188 (n + 1) + A057354 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215371.P728480639366005397

namespace A215371

/-- `p?[A004524(A265188(n+1)+A057354(n))]` -/
def P728480639366005397.Spec : Prop :=
  ∀ n, P728480639366005397.a n = A215371 (n + 1)

end A215371

/-!
# A215372: Primes congruent to {0, 2, 3, 5, 6} mod 17.

The programs for A215372, the canonical program `A215372.P14661957278570695968` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215372 has offset 1).

The definition of A215372 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215372.P14661957278570695968

`∪[A215132(n+1), A215376(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215372

/-- `∪[A215132(n+1), A215376(n+1)]` -/
def P14661957278570695968.Spec : Prop :=
  ∀ n, (P14661957278570695968.a n : ℤ) = A215372 (n + 1)

theorem P14661957278570695968.correct : P14661957278570695968.Spec := by
  intro n
  simp only [A215372, Nat.add_sub_cancel]

end A215372

/-! ## A215372.P8945504634282410208

`p?[2*A293292(n+1)-A057355(n)]`
-/

namespace A215372.P8945504634282410208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A293292 (n + 1) - A057355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215372.P8945504634282410208

namespace A215372

/-- `p?[2*A293292(n+1)-A057355(n)]` -/
def P8945504634282410208.Spec : Prop :=
  ∀ n, P8945504634282410208.a n = A215372 (n + 1)

end A215372

/-! ## A215372.P16057936397339672018

`p?[A005843(A293292(n+1))-A057355(n)]`
-/

namespace A215372.P16057936397339672018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A293292 (n + 1)).toNat - A057355 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215372.P16057936397339672018

namespace A215372

/-- `p?[A005843(A293292(n+1))-A057355(n)]` -/
def P16057936397339672018.Spec : Prop :=
  ∀ n, P16057936397339672018.a n = A215372 (n + 1)

end A215372

/-! ## A215372.P3549633882156246141

`p?[∑[A001221(A136585(n+1))]]`
-/

namespace A215372.P3549633882156246141
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A136585 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215372.P3549633882156246141

namespace A215372

/-- `p?[∑[A001221(A136585(n+1))]]` -/
def P3549633882156246141.Spec : Prop :=
  ∀ n, P3549633882156246141.a n = A215372 (n + 1)

end A215372

/-! ## A215372.P12353290142847178352

`p?[A325511(∑[A325471(n+1)])]`
-/

namespace A215372.P12353290142847178352
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325471 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325511 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215372.P12353290142847178352

namespace A215372

/-- `p?[A325511(∑[A325471(n+1)])]` -/
def P12353290142847178352.Spec : Prop :=
  ∀ n, P12353290142847178352.a n = A215372 (n + 1)

end A215372

/-!
# A215373: Primes congruent to {0, 2, 3, 5, 6} mod 19.

The programs for A215373, the canonical program `A215373.P8247755041386393335` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215373 has offset 1).

The definition of A215373 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215373.P8247755041386393335

`∪[A215133(n+1), A215377(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215373

/-- `∪[A215133(n+1), A215377(n+1)]` -/
def P8247755041386393335.Spec : Prop :=
  ∀ n, (P8247755041386393335.a n : ℤ) = A215373 (n + 1)

theorem P8247755041386393335.correct : P8247755041386393335.Spec := by
  intro n
  simp only [A215373, Nat.add_sub_cancel]

end A215373

/-! ## A215373.P4380361056086510960

`p?[A020657(n+1)+p?[A003002(n)]]`
-/

namespace A215373.P4380361056086510960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020657 (n + 1) + f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215373.P4380361056086510960

namespace A215373

/-- `p?[A020657(n+1)+p?[A003002(n)]]` -/
def P4380361056086510960.Spec : Prop :=
  ∀ n, P4380361056086510960.a n = A215373 (n + 1)

end A215373

/-! ## A215373.P5412158314688873479

`eq[A123275(n+1), A278603(A168014(n))]`
-/

namespace A215373.P5412158314688873479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278603 (A168014 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A215373.P5412158314688873479

namespace A215373

/-- `eq[A123275(n+1), A278603(A168014(n))]` -/
def P5412158314688873479.Spec : Prop :=
  ∀ n, (P5412158314688873479.a n : ℤ) = A215373 (n + 1)

end A215373

/-!
# A215374: Primes congruent to {0, 2, 3} mod 11.

The programs for A215374, the canonical program `A215374.P8909926197912724088` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215374 has offset 1).

The definition of A215374 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6273 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215374.P1653418821977881942

`∪[A022011(n+1), A214888(n+1)]`
-/

namespace A215374.P1653418821977881942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215374.P1653418821977881942

namespace A215374

/-- `∪[A022011(n+1), A214888(n+1)]` -/
def P1653418821977881942.Spec : Prop :=
  ∀ n, (P1653418821977881942.a n : ℤ) = A215374 (n + 1)

end A215374

/-! ## A215374.P10963798086677885192

`∪[A022545(n+1), A214888(n+1)]`
-/

namespace A215374.P10963798086677885192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215374.P10963798086677885192

namespace A215374

/-- `∪[A022545(n+1), A214888(n+1)]` -/
def P10963798086677885192.Spec : Prop :=
  ∀ n, (P10963798086677885192.a n : ℤ) = A215374 (n + 1)

end A215374

/-! ## A215374.P5246015811759161261

`∪[A027569(n+1), A214888(n+1)]`
-/

namespace A215374.P5246015811759161261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215374.P5246015811759161261

namespace A215374

/-- `∪[A027569(n+1), A214888(n+1)]` -/
def P5246015811759161261.Spec : Prop :=
  ∀ n, (P5246015811759161261.a n : ℤ) = A215374 (n + 1)

end A215374

/-! ## A215374.P1091623898303330896

`∪[A351622(n+1), A214888(n+1)]`
-/

namespace A215374.P1091623898303330896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214888 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215374.P1091623898303330896

namespace A215374

/-- `∪[A351622(n+1), A214888(n+1)]` -/
def P1091623898303330896.Spec : Prop :=
  ∀ n, (P1091623898303330896.a n : ℤ) = A215374 (n + 1)

end A215374

/-! ## A215374.P16287553621836186246

`∩[A215358(n+1), A215378(n+1)]`
-/

namespace A215374.P16287553621836186246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215374.P16287553621836186246

namespace A215374

/-- `∩[A215358(n+1), A215378(n+1)]` -/
def P16287553621836186246.Spec : Prop :=
  ∀ n, (P16287553621836186246.a n : ℤ) = A215374 (n + 1)

end A215374

/-! ## A215374.P8909926197912724088

`p?[a(n-3)+11]` with `a(0)=2, a(1)=3, a(2)=11`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215374

/-- `p?[a(n-3)+11]` -/
def P8909926197912724088.Spec : Prop :=
  ∀ n, (P8909926197912724088.a n : ℤ) = A215374 (n + 1)

theorem P8909926197912724088.correct : P8909926197912724088.Spec := by
  intro n
  simp only [A215374, Nat.add_sub_cancel]

end A215374

/-! ## A215374.P9670243311242138708

`∩[A215354(n+1), A215378(n+1)]`
-/

namespace A215374.P9670243311242138708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215374.P9670243311242138708

namespace A215374

/-- `∩[A215354(n+1), A215378(n+1)]` -/
def P9670243311242138708.Spec : Prop :=
  ∀ n, (P9670243311242138708.a n : ℤ) = A215374 (n + 1)

end A215374

/-! ## A215374.P17805971188823259927

`∩[A215358(n+1), A215370(n+1)]`
-/

namespace A215374.P17805971188823259927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215374.P17805971188823259927

namespace A215374

/-- `∩[A215358(n+1), A215370(n+1)]` -/
def P17805971188823259927.Spec : Prop :=
  ∀ n, (P17805971188823259927.a n : ℤ) = A215374 (n + 1)

end A215374

/-! ## A215374.P8481123411177302177

`∩[A215370(n+1), A215378(n+1)]`
-/

namespace A215374.P8481123411177302177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215378 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215374.P8481123411177302177

namespace A215374

/-- `∩[A215370(n+1), A215378(n+1)]` -/
def P8481123411177302177.Spec : Prop :=
  ∀ n, (P8481123411177302177.a n : ℤ) = A215374 (n + 1)

end A215374

/-! ## A215374.P9147469201601323035

`p?[A281899(n)+A004396(n)]`
-/

namespace A215374.P9147469201601323035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281899 n + A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215374.P9147469201601323035

namespace A215374

/-- `p?[A281899(n)+A004396(n)]` -/
def P9147469201601323035.Spec : Prop :=
  ∀ n, P9147469201601323035.a n = A215374 (n + 1)

end A215374

/-! ## A215374.P8525432737450157453

`p?[A054967(n+1)+A002264(n)+2]`
-/

namespace A215374.P8525432737450157453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054967 (n + 1) + (A002264 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215374.P8525432737450157453

namespace A215374

/-- `p?[A054967(n+1)+A002264(n)+2]` -/
def P8525432737450157453.Spec : Prop :=
  ∀ n, P8525432737450157453.a n = A215374 (n + 1)

end A215374

/-! ## A215374.P7680267576728690360

`p?[A047354(n+1)+A042948(A004396(n))]`
-/

namespace A215374.P7680267576728690360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047354 (n + 1) + A042948 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215374.P7680267576728690360

namespace A215374

/-- `p?[A047354(n+1)+A042948(A004396(n))]` -/
def P7680267576728690360.Spec : Prop :=
  ∀ n, P7680267576728690360.a n = A215374 (n + 1)

end A215374

/-! ## A215374.P715713820027038120

`∩[A215370(n+1), A279194(n+1)]`
-/

namespace A215374.P715713820027038120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215374.P715713820027038120

namespace A215374

/-- `∩[A215370(n+1), A279194(n+1)]` -/
def P715713820027038120.Spec : Prop :=
  ∀ n, (P715713820027038120.a n : ℤ) = A215374 (n + 1)

end A215374

/-! ## A215374.P8268164458739110574

`∩[A215378(n+1), A279194(n+1)]`
-/

namespace A215374.P8268164458739110574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215378 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279194 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215374.P8268164458739110574

namespace A215374

/-- `∩[A215378(n+1), A279194(n+1)]` -/
def P8268164458739110574.Spec : Prop :=
  ∀ n, (P8268164458739110574.a n : ℤ) = A215374 (n + 1)

end A215374

/-! ## A215374.P15495811028002165683

`p?[A281899(n+1)+A008620(2*n)]`
-/

namespace A215374.P15495811028002165683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281899 (n + 1) + A008620 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215374.P15495811028002165683

namespace A215374

/-- `p?[A281899(n+1)+A008620(2*n)]` -/
def P15495811028002165683.Spec : Prop :=
  ∀ n, P15495811028002165683.a n = A215374 (n + 1)

end A215374

/-! ## A215374.P15403597824227496454

`p?[A008486(A133310(2*n))-A008611(n)]`
-/

namespace A215374.P15403597824227496454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A133310 (2 * n)).toNat - A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215374.P15403597824227496454

namespace A215374

/-- `p?[A008486(A133310(2*n))-A008611(n)]` -/
def P15403597824227496454.Spec : Prop :=
  ∀ n, P15403597824227496454.a n = A215374 (n + 1)

end A215374

/-! ## A215374.P11387311071774974775

`p?[A047354(n+1)+A004396(A047240(n+1))]`
-/

namespace A215374.P11387311071774974775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047354 (n + 1) + A004396 (A047240 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215374.P11387311071774974775

namespace A215374

/-- `p?[A047354(n+1)+A004396(A047240(n+1))]` -/
def P11387311071774974775.Spec : Prop :=
  ∀ n, P11387311071774974775.a n = A215374 (n + 1)

end A215374

/-! ## A215374.P1130048547931100554

`p?[A016777(A133310(2*n))-A008611(n+3)]`
-/

namespace A215374.P1130048547931100554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A133310 (2 * n)).toNat - A008611 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215374.P1130048547931100554

namespace A215374

/-- `p?[A016777(A133310(2*n))-A008611(n+3)]` -/
def P1130048547931100554.Spec : Prop :=
  ∀ n, P1130048547931100554.a n = A215374 (n + 1)

end A215374

/-! ## A215374.P10982151599897400101

`p?[∑[A221880(A100833(2*n+5))]]`
-/

namespace A215374.P10982151599897400101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221880 (A100833 (2 * n + 5)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215374.P10982151599897400101

namespace A215374

/-- `p?[∑[A221880(A100833(2*n+5))]]` -/
def P10982151599897400101.Spec : Prop :=
  ∀ n, P10982151599897400101.a n = A215374 (n + 1)

end A215374

/-! ## A215374.P12662182378553781030

`p?[A281899(n)+A002264(2*n+1)]`
-/

namespace A215374.P12662182378553781030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281899 n + A002264 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215374.P12662182378553781030

namespace A215374

/-- `p?[A281899(n)+A002264(2*n+1)]` -/
def P12662182378553781030.Spec : Prop :=
  ∀ n, P12662182378553781030.a n = A215374 (n + 1)

end A215374

/-!
# A215375: Primes congruent to {0, 2, 3} mod 13.

The programs for A215375, the canonical program `A215375.P3774819727875829849` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215375 has offset 1).

The definition of A215375 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6077 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215375.P12348253504830486279

`∩[A215359(n+1), A215379(n+1)]`
-/

namespace A215375.P12348253504830486279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215375.P12348253504830486279

namespace A215375

/-- `∩[A215359(n+1), A215379(n+1)]` -/
def P12348253504830486279.Spec : Prop :=
  ∀ n, (P12348253504830486279.a n : ℤ) = A215375 (n + 1)

end A215375

/-! ## A215375.P3774819727875829849

`p?[a(n-3)+13]` with `a(0)=2, a(1)=3, a(2)=13`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215375

/-- `p?[a(n-3)+13]` -/
def P3774819727875829849.Spec : Prop :=
  ∀ n, (P3774819727875829849.a n : ℤ) = A215375 (n + 1)

theorem P3774819727875829849.correct : P3774819727875829849.Spec := by
  intro n
  simp only [A215375, Nat.add_sub_cancel]

end A215375

/-! ## A215375.P1869539393396207283

`∩[A215355(n+1), A215379(n+1)]`
-/

namespace A215375.P1869539393396207283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215375.P1869539393396207283

namespace A215375

/-- `∩[A215355(n+1), A215379(n+1)]` -/
def P1869539393396207283.Spec : Prop :=
  ∀ n, (P1869539393396207283.a n : ℤ) = A215375 (n + 1)

end A215375

/-! ## A215375.P15220165964487426526

`∩[A215359(n+1), A215371(n+1)]`
-/

namespace A215375.P15220165964487426526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215375.P15220165964487426526

namespace A215375

/-- `∩[A215359(n+1), A215371(n+1)]` -/
def P15220165964487426526.Spec : Prop :=
  ∀ n, (P15220165964487426526.a n : ℤ) = A215375 (n + 1)

end A215375

/-! ## A215375.P12465523409225920430

`∩[A215371(n+1), A215379(n+1)]`
-/

namespace A215375.P12465523409225920430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215379 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215375.P12465523409225920430

namespace A215375

/-- `∩[A215371(n+1), A215379(n+1)]` -/
def P12465523409225920430.Spec : Prop :=
  ∀ n, (P12465523409225920430.a n : ℤ) = A215375 (n + 1)

end A215375

/-! ## A215375.P2287277595693173685

`p?[A047358(n+1)+A042948(A187326(n))]`
-/

namespace A215375.P2287277595693173685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047358 (n + 1) + A042948 (A187326 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215375.P2287277595693173685

namespace A215375

/-- `p?[A047358(n+1)+A042948(A187326(n))]` -/
def P2287277595693173685.Spec : Prop :=
  ∀ n, P2287277595693173685.a n = A215375 (n + 1)

end A215375

/-! ## A215375.P8345442680331696595

`p?[A004523(n)+A017089(A002264(n+1))+n]`
-/

namespace A215375.P8345442680331696595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 n + (A017089 (A002264 (n + 1)).toNat + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215375.P8345442680331696595

namespace A215375

/-- `p?[A004523(n)+A017089(A002264(n+1))+n]` -/
def P8345442680331696595.Spec : Prop :=
  ∀ n, P8345442680331696595.a n = A215375 (n + 1)

end A215375

/-! ## A215375.P6283043516984111535

`p?[A281899(n)+A042948(A004396(n))]`
-/

namespace A215375.P6283043516984111535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281899 n + A042948 (A004396 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215375.P6283043516984111535

namespace A215375

/-- `p?[A281899(n)+A042948(A004396(n))]` -/
def P6283043516984111535.Spec : Prop :=
  ∀ n, P6283043516984111535.a n = A215375 (n + 1)

end A215375

/-! ## A215375.P92300389299777148

`p?[A008576(A047240(n+1))-n]`
-/

namespace A215375.P92300389299777148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 (A047240 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215375.P92300389299777148

namespace A215375

/-- `p?[A008576(A047240(n+1))-n]` -/
def P92300389299777148.Spec : Prop :=
  ∀ n, P92300389299777148.a n = A215375 (n + 1)

end A215375

/-! ## A215375.P11444548674334609736

`p?[A047411(A047465(n+1))-A004442(n)]`
-/

namespace A215375.P11444548674334609736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047411 (A047465 (n + 1)).toNat - A004442 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215375.P11444548674334609736

namespace A215375

/-- `p?[A047411(A047465(n+1))-A004442(n)]` -/
def P11444548674334609736.Spec : Prop :=
  ∀ n, P11444548674334609736.a n = A215375 (n + 1)

end A215375

/-! ## A215375.P6601302865066030353

`p?[A004396(A267711(n+1))+n]`
-/

namespace A215375.P6601302865066030353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A267711 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215375.P6601302865066030353

namespace A215375

/-- `p?[A004396(A267711(n+1))+n]` -/
def P6601302865066030353.Spec : Prop :=
  ∀ n, P6601302865066030353.a n = A215375 (n + 1)

end A215375

/-! ## A215375.P11577813498356285465

`p?[A008590(A002264(n))+A002264(5*n+1)]`
-/

namespace A215375.P11577813498356285465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 (A002264 n).toNat + A002264 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215375.P11577813498356285465

namespace A215375

/-- `p?[A008590(A002264(n))+A002264(5*n+1)]` -/
def P11577813498356285465.Spec : Prop :=
  ∀ n, P11577813498356285465.a n = A215375 (n + 1)

end A215375

/-!
# A215376: Primes congruent to {0, 2, 3} mod 17.

The programs for A215376, the canonical program `A215376.P1279658965057680028` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215376 has offset 1).

The definition of A215376 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5801 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215376.P3901048834630263232

`∪[A087514(n+1), A214890(n+1)]`
-/

namespace A215376.P3901048834630263232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215376.P3901048834630263232

namespace A215376

/-- `∪[A087514(n+1), A214890(n+1)]` -/
def P3901048834630263232.Spec : Prop :=
  ∀ n, (P3901048834630263232.a n : ℤ) = A215376 (n + 1)

end A215376

/-! ## A215376.P7142538577879499671

`∩[A215360(n+1), A215380(n+1)]`
-/

namespace A215376.P7142538577879499671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215376.P7142538577879499671

namespace A215376

/-- `∩[A215360(n+1), A215380(n+1)]` -/
def P7142538577879499671.Spec : Prop :=
  ∀ n, (P7142538577879499671.a n : ℤ) = A215376 (n + 1)

end A215376

/-! ## A215376.P1279658965057680028

`p?[a(n-3)+17]` with `a(0)=2, a(1)=3, a(2)=17`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215376

/-- `p?[a(n-3)+17]` -/
def P1279658965057680028.Spec : Prop :=
  ∀ n, (P1279658965057680028.a n : ℤ) = A215376 (n + 1)

theorem P1279658965057680028.correct : P1279658965057680028.Spec := by
  intro n
  simp only [A215376, Nat.add_sub_cancel]

end A215376

/-! ## A215376.P4247099062752123603

`∩[A215360(n+1), A215372(n+1)]`
-/

namespace A215376.P4247099062752123603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215376.P4247099062752123603

namespace A215376

/-- `∩[A215360(n+1), A215372(n+1)]` -/
def P4247099062752123603.Spec : Prop :=
  ∀ n, (P4247099062752123603.a n : ℤ) = A215376 (n + 1)

end A215376

/-! ## A215376.P224744825071033060

`∩[A215372(n+1), A215380(n+1)]`
-/

namespace A215376.P224744825071033060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215376.P224744825071033060

namespace A215376

/-- `∩[A215372(n+1), A215380(n+1)]` -/
def P224744825071033060.Spec : Prop :=
  ∀ n, (P224744825071033060.a n : ℤ) = A215376 (n + 1)

end A215376

/-! ## A215376.P3598205880203221307

`∩[A215356(n+1), A215380(n+1)]`
-/

namespace A215376.P3598205880203221307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215356 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215376.P3598205880203221307

namespace A215376

/-- `∩[A215356(n+1), A215380(n+1)]` -/
def P3598205880203221307.Spec : Prop :=
  ∀ n, (P3598205880203221307.a n : ℤ) = A215376 (n + 1)

end A215376

/-! ## A215376.P12066778395485231975

`p?[A267711(n+1)+A004396(n)]`
-/

namespace A215376.P12066778395485231975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267711 (n + 1) + A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215376.P12066778395485231975

namespace A215376

/-- `p?[A267711(n+1)+A004396(n)]` -/
def P12066778395485231975.Spec : Prop :=
  ∀ n, P12066778395485231975.a n = A215376 (n + 1)

end A215376

/-! ## A215376.P11329217629521039572

`p?[A267711(n+1)+A004525(A004773(n))]`
-/

namespace A215376.P11329217629521039572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267711 (n + 1) + A004525 (A004773 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215376.P11329217629521039572

namespace A215376

/-- `p?[A267711(n+1)+A004525(A004773(n))]` -/
def P11329217629521039572.Spec : Prop :=
  ∀ n, P11329217629521039572.a n = A215376 (n + 1)

end A215376

/-! ## A215376.P4941527403033147965

`p?[A267711(n+2)+A008620(2*n)]`
-/

namespace A215376.P4941527403033147965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267711 (n + 2) + A008620 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215376.P4941527403033147965

namespace A215376

/-- `p?[A267711(n+2)+A008620(2*n)]` -/
def P4941527403033147965.Spec : Prop :=
  ∀ n, P4941527403033147965.a n = A215376 (n + 1)

end A215376

/-! ## A215376.P2097604498029259167

`p?[A008585(A047354(n+1))-A042965(n+1)]`
-/

namespace A215376.P2097604498029259167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A047354 (n + 1)).toNat - A042965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215376.P2097604498029259167

namespace A215376

/-- `p?[A008585(A047354(n+1))-A042965(n+1)]` -/
def P2097604498029259167.Spec : Prop :=
  ∀ n, P2097604498029259167.a n = A215376 (n + 1)

end A215376

/-! ## A215376.P16245497828026357610

`record[A014963(A267711(n+2)+A004396(n+1))]`
-/

namespace A215376.P16245497828026357610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A267711 (n + 2) + A004396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215376.P16245497828026357610

namespace A215376

/-- `record[A014963(A267711(n+2)+A004396(n+1))]` -/
def P16245497828026357610.Spec : Prop :=
  ∀ n, P16245497828026357610.a n = A215376 (n + 1)

end A215376

/-!
# A215377: Primes congruent to {0, 2, 3} mod 19.

The programs for A215377, the canonical program `A215377.P16586814580108668925` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215377 has offset 1).

The definition of A215377 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5765 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215377.P10363584215674181511

`∪[A087515(n+1), A215101(n+1)]`
-/

namespace A215377.P10363584215674181511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215377.P10363584215674181511

namespace A215377

/-- `∪[A087515(n+1), A215101(n+1)]` -/
def P10363584215674181511.Spec : Prop :=
  ∀ n, (P10363584215674181511.a n : ℤ) = A215377 (n + 1)

end A215377

/-! ## A215377.P1094178633614359870

`∩[A215361(n+1), A215381(n+1)]`
-/

namespace A215377.P1094178633614359870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215377.P1094178633614359870

namespace A215377

/-- `∩[A215361(n+1), A215381(n+1)]` -/
def P1094178633614359870.Spec : Prop :=
  ∀ n, (P1094178633614359870.a n : ℤ) = A215377 (n + 1)

end A215377

/-! ## A215377.P16586814580108668925

`p?[a(n-3)+19]` with `a(0)=2, a(1)=3, a(2)=19`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215377

/-- `p?[a(n-3)+19]` -/
def P16586814580108668925.Spec : Prop :=
  ∀ n, (P16586814580108668925.a n : ℤ) = A215377 (n + 1)

theorem P16586814580108668925.correct : P16586814580108668925.Spec := by
  intro n
  simp only [A215377, Nat.add_sub_cancel]

end A215377

/-! ## A215377.P16856392381516595063

`∩[A215361(n+1), A215373(n+1)]`
-/

namespace A215377.P16856392381516595063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215377.P16856392381516595063

namespace A215377

/-- `∩[A215361(n+1), A215373(n+1)]` -/
def P16856392381516595063.Spec : Prop :=
  ∀ n, (P16856392381516595063.a n : ℤ) = A215377 (n + 1)

end A215377

/-! ## A215377.P2646943924090959945

`∩[A215373(n+1), A215381(n+1)]`
-/

namespace A215377.P2646943924090959945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215377.P2646943924090959945

namespace A215377

/-- `∩[A215373(n+1), A215381(n+1)]` -/
def P2646943924090959945.Spec : Prop :=
  ∀ n, (P2646943924090959945.a n : ℤ) = A215377 (n + 1)

end A215377

/-! ## A215377.P18253522305530178695

`∩[A215357(n+1), A215381(n+1)]`
-/

namespace A215377.P18253522305530178695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215381 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215377.P18253522305530178695

namespace A215377

/-- `∩[A215357(n+1), A215381(n+1)]` -/
def P18253522305530178695.Spec : Prop :=
  ∀ n, (P18253522305530178695.a n : ℤ) = A215377 (n + 1)

end A215377

/-! ## A215377.P1459124054387839172

`p?[A151977(round(2*n/3)+1)+n]`
-/

namespace A215377.P1459124054387839172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151977 (SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215377.P1459124054387839172

namespace A215377

/-- `p?[A151977(round(2*n/3)+1)+n]` -/
def P1459124054387839172.Spec : Prop :=
  ∀ n, P1459124054387839172.a n = A215377 (n + 1)

end A215377

/-! ## A215377.P10209872927839171459

`p?[A260181(n+1)+A008596(n-A110654(n))]`
-/

namespace A215377.P10209872927839171459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1) + A008596 ((n : ℤ) - A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215377.P10209872927839171459

namespace A215377

/-- `p?[A260181(n+1)+A008596(n-A110654(n))]` -/
def P10209872927839171459.Spec : Prop :=
  ∀ n, P10209872927839171459.a n = A215377 (n + 1)

end A215377

/-! ## A215377.P18370940183672909742

`p?[(A008597(A002265(n))+n)*A285383(n+2)]`
-/

namespace A215377.P18370940183672909742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008597 (A002265 n).toNat + (n : ℤ)) * A285383 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215377.P18370940183672909742

namespace A215377

/-- `p?[(A008597(A002265(n))+n)*A285383(n+2)]` -/
def P18370940183672909742.Spec : Prop :=
  ∀ n, P18370940183672909742.a n = A215377 (n + 1)

end A215377

/-!
# A215378: Primes congruent to {0, 1, 2, 3} mod 11.

The programs for A215378, the canonical program `A215378.P9622553553527907091` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215378 has offset 1).

The definition of A215378 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215378.P3134538365934183020

`∪[A022011(n+1), A215134(n+1)]`
-/

namespace A215378.P3134538365934183020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022011 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215378.P3134538365934183020

namespace A215378

/-- `∪[A022011(n+1), A215134(n+1)]` -/
def P3134538365934183020.Spec : Prop :=
  ∀ n, (P3134538365934183020.a n : ℤ) = A215378 (n + 1)

end A215378

/-! ## A215378.P9354923967967573743

`∪[A022545(n+1), A215134(n+1)]`
-/

namespace A215378.P9354923967967573743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022545 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215378.P9354923967967573743

namespace A215378

/-- `∪[A022545(n+1), A215134(n+1)]` -/
def P9354923967967573743.Spec : Prop :=
  ∀ n, (P9354923967967573743.a n : ℤ) = A215378 (n + 1)

end A215378

/-! ## A215378.P17902603783355590744

`∪[A027569(n+1), A215134(n+1)]`
-/

namespace A215378.P17902603783355590744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215378.P17902603783355590744

namespace A215378

/-- `∪[A027569(n+1), A215134(n+1)]` -/
def P17902603783355590744.Spec : Prop :=
  ∀ n, (P17902603783355590744.a n : ℤ) = A215378 (n + 1)

end A215378

/-! ## A215378.P9622553553527907091

`∪[A141849(n+1), A215374(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215378

/-- `∪[A141849(n+1), A215374(n+1)]` -/
def P9622553553527907091.Spec : Prop :=
  ∀ n, (P9622553553527907091.a n : ℤ) = A215378 (n + 1)

theorem P9622553553527907091.correct : P9622553553527907091.Spec := by
  intro n
  simp only [A215378, Nat.add_sub_cancel]

end A215378

/-! ## A215378.P15601329011163099475

`∪[A215374(n+1), A215390(n+1)]`
-/

namespace A215378.P15601329011163099475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215378.P15601329011163099475

namespace A215378

/-- `∪[A215374(n+1), A215390(n+1)]` -/
def P15601329011163099475.Spec : Prop :=
  ∀ n, (P15601329011163099475.a n : ℤ) = A215378 (n + 1)

end A215378

/-! ## A215378.P1415883048780183972

`∪[A351622(n+1), A215134(n+1)]`
-/

namespace A215378.P1415883048780183972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351622 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215378.P1415883048780183972

namespace A215378

/-- `∪[A351622(n+1), A215134(n+1)]` -/
def P1415883048780183972.Spec : Prop :=
  ∀ n, (P1415883048780183972.a n : ℤ) = A215378 (n + 1)

end A215378

/-! ## A215378.P11831036714054170653

`p?[a(n-4)+11]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A215378.P11831036714054170653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f1 =>
  f1 (n - 4) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215378.P11831036714054170653

namespace A215378

/-- `p?[a(n-4)+11]` -/
def P11831036714054170653.Spec : Prop :=
  ∀ n, (P11831036714054170653.a n : ℤ) = A215378 (n + 1)

end A215378

/-! ## A215378.P18104471329389311647

`record[A000040(n+1)/A093337(A039709(n+1))]`
-/

namespace A215378.P18104471329389311647
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A093337 ((A039709 (n + 1)).toNat + 11) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215378.P18104471329389311647

namespace A215378

/-- `record[A000040(n+1)/A093337(A039709(n+1))]` -/
def P18104471329389311647.Spec : Prop :=
  ∀ n, P18104471329389311647.a n = (A215378 (n + 1) : ℚ)

end A215378

/-! ## A215378.P12879497661147386368

`p?[A168333(floor((2*n+1)/4)+1)+n]`
-/

namespace A215378.P12879497661147386368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168333 (⌊(2 * n + 1 : ℚ) / 4⌋ + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215378.P12879497661147386368

namespace A215378

/-- `p?[A168333(floor((2*n+1)/4)+1)+n]` -/
def P12879497661147386368.Spec : Prop :=
  ∀ n, P12879497661147386368.a n = A215378 (n + 1)

end A215378

/-! ## A215378.P12009804858237123824

`p?[7*A002265(n)+n]`
-/

namespace A215378.P12009804858237123824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A002265 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215378.P12009804858237123824

namespace A215378

/-- `p?[7*A002265(n)+n]` -/
def P12009804858237123824.Spec : Prop :=
  ∀ n, P12009804858237123824.a n = A215378 (n + 1)

end A215378

/-! ## A215378.P18422946298475779082

`p?[A168337(A065033(n))+n]`
-/

namespace A215378.P18422946298475779082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168337 (A065033 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215378.P18422946298475779082

namespace A215378

/-- `p?[A168337(A065033(n))+n]` -/
def P18422946298475779082.Spec : Prop :=
  ∀ n, P18422946298475779082.a n = A215378 (n + 1)

end A215378

/-!
# A215379: Primes congruent to {0, 1, 2, 3} mod 13.

The programs for A215379, the canonical program `A215379.P3185768796367872946` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215379 has offset 1).

The definition of A215379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215379.P3185768796367872946

`∪[A215135(n+1), A215375(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215379

/-- `∪[A215135(n+1), A215375(n+1)]` -/
def P3185768796367872946.Spec : Prop :=
  ∀ n, (P3185768796367872946.a n : ℤ) = A215379 (n + 1)

theorem P3185768796367872946.correct : P3185768796367872946.Spec := by
  intro n
  simp only [A215379, Nat.add_sub_cancel]

end A215379

/-! ## A215379.P7519218979296158474

`∪[A215375(n+1), A215391(n+1)]`
-/

namespace A215379.P7519218979296158474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215379.P7519218979296158474

namespace A215379

/-- `∪[A215375(n+1), A215391(n+1)]` -/
def P7519218979296158474.Spec : Prop :=
  ∀ n, (P7519218979296158474.a n : ℤ) = A215379 (n + 1)

end A215379

/-! ## A215379.P6743625270668188790

`p?[a(n-4)+13]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=13`
-/

namespace A215379.P6743625270668188790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 13] fun n f1 =>
  f1 (n - 4) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215379.P6743625270668188790

namespace A215379

/-- `p?[a(n-4)+13]` -/
def P6743625270668188790.Spec : Prop :=
  ∀ n, (P6743625270668188790.a n : ℤ) = A215379 (n + 1)

end A215379

/-! ## A215379.P8348465005545931661

`p?[∑[A010130(n+1)]]`
-/

namespace A215379.P8348465005545931661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010130 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215379.P8348465005545931661

namespace A215379

/-- `p?[∑[A010130(n+1)]]` -/
def P8348465005545931661.Spec : Prop :=
  ∀ n, P8348465005545931661.a n = A215379 (n + 1)

end A215379

/-! ## A215379.P13832398667084733936

`p?[9*A002265(n)+n]`
-/

namespace A215379.P13832398667084733936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A002265 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215379.P13832398667084733936

namespace A215379

/-- `p?[9*A002265(n)+n]` -/
def P13832398667084733936.Spec : Prop :=
  ∀ n, P13832398667084733936.a n = A215379 (n + 1)

end A215379

/-! ## A215379.P5725044917043147482

`p?[A168413(A008619(n))+n]`
-/

namespace A215379.P5725044917043147482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (A008619 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215379.P5725044917043147482

namespace A215379

/-- `p?[A168413(A008619(n))+n]` -/
def P5725044917043147482.Spec : Prop :=
  ∀ n, P5725044917043147482.a n = A215379 (n + 1)

end A215379

/-! ## A215379.P1644068082110470137

`p?[A056020(A129756(n+1))+n]`
-/

namespace A215379.P1644068082110470137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A129756 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215379.P1644068082110470137

namespace A215379

/-- `p?[A056020(A129756(n+1))+n]` -/
def P1644068082110470137.Spec : Prop :=
  ∀ n, P1644068082110470137.a n = A215379 (n + 1)

end A215379

/-! ## A215379.P3731699696079636877

`p?[A168413(A065033(n+1))+n]`
-/

namespace A215379.P3731699696079636877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (A065033 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215379.P3731699696079636877

namespace A215379

/-- `p?[A168413(A065033(n+1))+n]` -/
def P3731699696079636877.Spec : Prop :=
  ∀ n, P3731699696079636877.a n = A215379 (n + 1)

end A215379

/-! ## A215379.P6304947188753176721

`p?[A168413(A123108(n+2))+n]`
-/

namespace A215379.P6304947188753176721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (A123108 (n + 2)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215379.P6304947188753176721

namespace A215379

/-- `p?[A168413(A123108(n+2))+n]` -/
def P6304947188753176721.Spec : Prop :=
  ∀ n, P6304947188753176721.a n = A215379 (n + 1)

end A215379

/-! ## A215379.P558126918415166341

`p?[9*A004526(A004526(n))+n]`
-/

namespace A215379.P558126918415166341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A004526 (A004526 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215379.P558126918415166341

namespace A215379

/-- `p?[9*A004526(A004526(n))+n]` -/
def P558126918415166341.Spec : Prop :=
  ∀ n, P558126918415166341.a n = A215379 (n + 1)

end A215379

/-!
# A215380: Primes congruent to {0, 1, 2, 3} mod 17.

The programs for A215380, the canonical program `A215380.P13737349323683384483` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215380 has offset 1).

The definition of A215380 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215380.P11504091049562637207

`∪[A087514(n+1), A215153(n+1)]`
-/

namespace A215380.P11504091049562637207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087514 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215380.P11504091049562637207

namespace A215380

/-- `∪[A087514(n+1), A215153(n+1)]` -/
def P11504091049562637207.Spec : Prop :=
  ∀ n, (P11504091049562637207.a n : ℤ) = A215380 (n + 1)

end A215380

/-! ## A215380.P13737349323683384483

`∪[A129484(n+1), A215376(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215380

/-- `∪[A129484(n+1), A215376(n+1)]` -/
def P13737349323683384483.Spec : Prop :=
  ∀ n, (P13737349323683384483.a n : ℤ) = A215380 (n + 1)

theorem P13737349323683384483.correct : P13737349323683384483.Spec := by
  intro n
  simp only [A215380, Nat.add_sub_cancel]

end A215380

/-! ## A215380.P10410353065100021930

`∪[A215153(n+1), A215376(n+1)]`
-/

namespace A215380.P10410353065100021930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215380.P10410353065100021930

namespace A215380

/-- `∪[A215153(n+1), A215376(n+1)]` -/
def P10410353065100021930.Spec : Prop :=
  ∀ n, (P10410353065100021930.a n : ℤ) = A215380 (n + 1)

end A215380

/-! ## A215380.P8334436734855406400

`∪[A215376(n+1), A215392(n+1)]`
-/

namespace A215380.P8334436734855406400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215380.P8334436734855406400

namespace A215380

/-- `∪[A215376(n+1), A215392(n+1)]` -/
def P8334436734855406400.Spec : Prop :=
  ∀ n, (P8334436734855406400.a n : ℤ) = A215380 (n + 1)

end A215380

/-! ## A215380.P3148551398045394624

`p?[a(n-4)+17]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=17`
-/

namespace A215380.P3148551398045394624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 17] fun n f1 =>
  f1 (n - 4) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215380.P3148551398045394624

namespace A215380

/-- `p?[a(n-4)+17]` -/
def P3148551398045394624.Spec : Prop :=
  ∀ n, (P3148551398045394624.a n : ℤ) = A215380 (n + 1)

end A215380

/-! ## A215380.P9713474771583663147

`record[A000040(n+1)/A093337(A039715(n+1))]`
-/

namespace A215380.P9713474771583663147
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A093337 ((A039715 (n + 1)).toNat + 11) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215380.P9713474771583663147

namespace A215380

/-- `record[A000040(n+1)/A093337(A039715(n+1))]` -/
def P9713474771583663147.Spec : Prop :=
  ∀ n, P9713474771583663147.a n = (A215380 (n + 1) : ℚ)

end A215380

/-! ## A215380.P192966152170254099

`record[A008578(n+2)/A093337(A039715(n+1))]`
-/

namespace A215380.P192966152170254099
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 2) : ℚ) / (A093337 ((A039715 (n + 1)).toNat + 11) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215380.P192966152170254099

namespace A215380

/-- `record[A008578(n+2)/A093337(A039715(n+1))]` -/
def P192966152170254099.Spec : Prop :=
  ∀ n, P192966152170254099.a n = (A215380 (n + 1) : ℚ)

end A215380

/-! ## A215380.P3216870150165458873

`p?[13*A002265(n)+n]`
-/

namespace A215380.P3216870150165458873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A002265 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215380.P3216870150165458873

namespace A215380

/-- `p?[13*A002265(n)+n]` -/
def P3216870150165458873.Spec : Prop :=
  ∀ n, P3216870150165458873.a n = A215380 (n + 1)

end A215380

/-! ## A215380.P3472835162372425518

`p?[A190991(A002265(n+1))+n]`
-/

namespace A215380.P3472835162372425518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190991 (A002265 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215380.P3472835162372425518

namespace A215380

/-- `p?[A190991(A002265(n+1))+n]` -/
def P3472835162372425518.Spec : Prop :=
  ∀ n, P3472835162372425518.a n = A215380 (n + 1)

end A215380

/-! ## A215380.P7088081888155260910

`p?[13*A004526(A004526(n))+n]`
-/

namespace A215380.P7088081888155260910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A004526 (A004526 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215380.P7088081888155260910

namespace A215380

/-- `p?[13*A004526(A004526(n))+n]` -/
def P7088081888155260910.Spec : Prop :=
  ∀ n, P7088081888155260910.a n = A215380 (n + 1)

end A215380

/-! ## A215380.P11771745857515675470

`p?[A042948(7*A002264(n))+n+1]`
-/

namespace A215380.P11771745857515675470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (7 * A002264 n).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215380.P11771745857515675470

namespace A215380

/-- `p?[A042948(7*A002264(n))+n+1]` -/
def P11771745857515675470.Spec : Prop :=
  ∀ n, P11771745857515675470.a n = A215380 (n + 1)

end A215380

/-!
# A215381: Primes congruent to {0, 1, 2, 3} mod 19.

The programs for A215381, the canonical program `A215381.P1725177119798405766` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215381 has offset 1).

The definition of A215381 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215381.P12218770007294583304

`∪[A087515(n+1), A215154(n+1)]`
-/

namespace A215381.P12218770007294583304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087515 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215381.P12218770007294583304

namespace A215381

/-- `∪[A087515(n+1), A215154(n+1)]` -/
def P12218770007294583304.Spec : Prop :=
  ∀ n, (P12218770007294583304.a n : ℤ) = A215381 (n + 1)

end A215381

/-! ## A215381.P1725177119798405766

`∪[A141868(n+1), A215377(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215381

/-- `∪[A141868(n+1), A215377(n+1)]` -/
def P1725177119798405766.Spec : Prop :=
  ∀ n, (P1725177119798405766.a n : ℤ) = A215381 (n + 1)

theorem P1725177119798405766.correct : P1725177119798405766.Spec := by
  intro n
  simp only [A215381, Nat.add_sub_cancel]

end A215381

/-! ## A215381.P157399393124519001

`∪[A215154(n+1), A215377(n+1)]`
-/

namespace A215381.P157399393124519001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215381.P157399393124519001

namespace A215381

/-- `∪[A215154(n+1), A215377(n+1)]` -/
def P157399393124519001.Spec : Prop :=
  ∀ n, (P157399393124519001.a n : ℤ) = A215381 (n + 1)

end A215381

/-! ## A215381.P10166422470348652487

`∪[A215377(n+1), A215393(n+1)]`
-/

namespace A215381.P10166422470348652487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215377 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215381.P10166422470348652487

namespace A215381

/-- `∪[A215377(n+1), A215393(n+1)]` -/
def P10166422470348652487.Spec : Prop :=
  ∀ n, (P10166422470348652487.a n : ℤ) = A215381 (n + 1)

end A215381

/-! ## A215381.P14146189931311082492

`p?[a(n-4)+19]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3`
-/

namespace A215381.P14146189931311082492
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3] fun n f1 =>
  f1 (n - 4) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215381.P14146189931311082492

namespace A215381

/-- `p?[a(n-4)+19]` -/
def P14146189931311082492.Spec : Prop :=
  ∀ n, (P14146189931311082492.a n : ℤ) = A215381 (n + 1)

end A215381

/-! ## A215381.P15074217257427865208

`p?[∑[A010153(n+1)]]`
-/

namespace A215381.P15074217257427865208
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010153 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215381.P15074217257427865208

namespace A215381

/-- `p?[∑[A010153(n+1)]]` -/
def P15074217257427865208.Spec : Prop :=
  ∀ n, P15074217257427865208.a n = A215381 (n + 1)

end A215381

/-! ## A215381.P9912250830893710088

`p?[∑[A177704(n)²²]]`
-/

namespace A215381.P9912250830893710088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A177704 n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215381.P9912250830893710088

namespace A215381

/-- `p?[∑[A177704(n)²²]]` -/
def P9912250830893710088.Spec : Prop :=
  ∀ n, P9912250830893710088.a n = A215381 (n + 1)

end A215381

/-! ## A215381.P1518130884986422508

`p?[∑[A010121(n+1)²]]`
-/

namespace A215381.P1518130884986422508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215381.P1518130884986422508

namespace A215381

/-- `p?[∑[A010121(n+1)²]]` -/
def P1518130884986422508.Spec : Prop :=
  ∀ n, P1518130884986422508.a n = A215381 (n + 1)

end A215381

/-! ## A215381.P8540742483999145450

`p?[∑[Δ[A001068(n)]²²]]`
-/

namespace A215381.P8540742483999145450
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f3 (n + 1) - f3 n) ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215381.P8540742483999145450

namespace A215381

/-- `p?[∑[Δ[A001068(n)]²²]]` -/
def P8540742483999145450.Spec : Prop :=
  ∀ n, P8540742483999145450.a n = A215381 (n + 1)

end A215381

/-! ## A215381.P5962824925249269931

`p?[A008597(A002265(n))+n]`
-/

namespace A215381.P5962824925249269931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008597 (A002265 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215381.P5962824925249269931

namespace A215381

/-- `p?[A008597(A002265(n))+n]` -/
def P5962824925249269931.Spec : Prop :=
  ∀ n, P5962824925249269931.a n = A215381 (n + 1)

end A215381

/-! ## A215381.P15445197506044975657

`p?[A187715(A130766(n))+n]`
-/

namespace A215381.P15445197506044975657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187715 (A130766 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215381.P15445197506044975657

namespace A215381

/-- `p?[A187715(A130766(n))+n]` -/
def P15445197506044975657.Spec : Prop :=
  ∀ n, P15445197506044975657.a n = A215381 (n + 1)

end A215381

/-! ## A215381.P12034829830410836806

`p?[15*A004526(A004526(n))+n]`
-/

namespace A215381.P12034829830410836806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A004526 (A004526 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215381.P12034829830410836806

namespace A215381

/-- `p?[15*A004526(A004526(n))+n]` -/
def P12034829830410836806.Spec : Prop :=
  ∀ n, P12034829830410836806.a n = A215381 (n + 1)

end A215381

/-! ## A215381.P11452910246970826038

`p?[15*A123108(A123108(n))+n]`
-/

namespace A215381.P11452910246970826038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A123108 (A123108 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215381.P11452910246970826038

namespace A215381

/-- `p?[15*A123108(A123108(n))+n]` -/
def P11452910246970826038.Spec : Prop :=
  ∀ n, P11452910246970826038.a n = A215381 (n + 1)

end A215381

/-! ## A215381.P2321044022789165630

`p?[A016969(n)-A016885(A110657(n))-1]`
-/

namespace A215381.P2321044022789165630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - A016885 (A110657 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215381.P2321044022789165630

namespace A215381

/-- `p?[A016969(n)-A016885(A110657(n))-1]` -/
def P2321044022789165630.Spec : Prop :=
  ∀ n, P2321044022789165630.a n = A215381 (n + 1)

end A215381

/-! ## A215381.P10872384754054759720

`p?[∑[A010164(n)]-8]`
-/

namespace A215381.P10872384754054759720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010164 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215381.P10872384754054759720

namespace A215381

/-- `p?[∑[A010164(n)]-8]` -/
def P10872384754054759720.Spec : Prop :=
  ∀ n, P10872384754054759720.a n = A215381 (n + 1)

end A215381

/-! ## A215381.P7283121597536899992

`p?[∑[A010164(A028310(n))]]`
-/

namespace A215381.P7283121597536899992
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010164 (A028310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215381.P7283121597536899992

namespace A215381

/-- `p?[∑[A010164(A028310(n))]]` -/
def P7283121597536899992.Spec : Prop :=
  ∀ n, P7283121597536899992.a n = A215381 (n + 1)

end A215381

/-!
# A215382: Primes congruent to {1, 2, 3, 6} mod 11.

The programs for A215382, the canonical program `A215382.P13591723540297022784` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215382 has offset 1).

The definition of A215382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215382.P13591723540297022784

`∪[A141853(n+1), A215134(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215382

/-- `∪[A141853(n+1), A215134(n+1)]` -/
def P13591723540297022784.Spec : Prop :=
  ∀ n, (P13591723540297022784.a n : ℤ) = A215382 (n + 1)

theorem P13591723540297022784.correct : P13591723540297022784.Spec := by
  intro n
  simp only [A215382, Nat.add_sub_cancel]

end A215382

/-! ## A215382.P13527188323798477771

`∪[A141849(n+1), A215386(n+1)]`
-/

namespace A215382.P13527188323798477771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141849 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215382.P13527188323798477771

namespace A215382

/-- `∪[A141849(n+1), A215386(n+1)]` -/
def P13527188323798477771.Spec : Prop :=
  ∀ n, (P13527188323798477771.a n : ℤ) = A215382 (n + 1)

end A215382

/-! ## A215382.P15616499964002189539

`∪[A215134(n+1), A215386(n+1)]`
-/

namespace A215382.P15616499964002189539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215382.P15616499964002189539

namespace A215382

/-- `∪[A215134(n+1), A215386(n+1)]` -/
def P15616499964002189539.Spec : Prop :=
  ∀ n, (P15616499964002189539.a n : ℤ) = A215382 (n + 1)

end A215382

/-! ## A215382.P3663936861663861654

`∪[A215386(n+1), A215390(n+1)]`
-/

namespace A215382.P3663936861663861654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215382.P3663936861663861654

namespace A215382

/-- `∪[A215386(n+1), A215390(n+1)]` -/
def P3663936861663861654.Spec : Prop :=
  ∀ n, (P3663936861663861654.a n : ℤ) = A215382 (n + 1)

end A215382

/-! ## A215382.P4417074236448589651

`p?[a(n-4)+11]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A215382.P4417074236448589651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6] fun n f1 =>
  f1 (n - 4) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215382.P4417074236448589651

namespace A215382

/-- `p?[a(n-4)+11]` -/
def P4417074236448589651.Spec : Prop :=
  ∀ n, (P4417074236448589651.a n : ℤ) = A215382 (n + 1)

end A215382

/-! ## A215382.P7229690038359577098

`∩[A215318(n+1), A215322(n+1)]`
-/

namespace A215382.P7229690038359577098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215382.P7229690038359577098

namespace A215382

/-- `∩[A215318(n+1), A215322(n+1)]` -/
def P7229690038359577098.Spec : Prop :=
  ∀ n, (P7229690038359577098.a n : ℤ) = A215382 (n + 1)

end A215382

/-! ## A215382.P55594812130014226

`p?[A047286(A290561(n))+n]`
-/

namespace A215382.P55594812130014226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047286 (A290561 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215382.P55594812130014226

namespace A215382

/-- `p?[A047286(A290561(n))+n]` -/
def P55594812130014226.Spec : Prop :=
  ∀ n, P55594812130014226.a n = A215382 (n + 1)

end A215382

/-! ## A215382.P14532503137320930327

`p?[A130766(n)+A047466(n+1)]`
-/

namespace A215382.P14532503137320930327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 n + A047466 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215382.P14532503137320930327

namespace A215382

/-- `p?[A130766(n)+A047466(n+1)]` -/
def P14532503137320930327.Spec : Prop :=
  ∀ n, P14532503137320930327.a n = A215382 (n + 1)

end A215382

/-! ## A215382.P11002165214967166768

`p?[A118286(n+1)-A110657(n)]`
-/

namespace A215382.P11002165214967166768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118286 (n + 1) - A110657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215382.P11002165214967166768

namespace A215382

/-- `p?[A118286(n+1)-A110657(n)]` -/
def P11002165214967166768.Spec : Prop :=
  ∀ n, P11002165214967166768.a n = A215382 (n + 1)

end A215382

/-! ## A215382.P10745609458750899022

`p?[A276283(n)+1-A110657(n)]`
-/

namespace A215382.P10745609458750899022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n + (1 - A110657 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215382.P10745609458750899022

namespace A215382

/-- `p?[A276283(n)+1-A110657(n)]` -/
def P10745609458750899022.Spec : Prop :=
  ∀ n, P10745609458750899022.a n = A215382 (n + 1)

end A215382

/-! ## A215382.P12220418320710219421

`p?[A004273(A130766(n))+A001068(n)]`
-/

namespace A215382.P12220418320710219421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A130766 n).toNat + A001068 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215382.P12220418320710219421

namespace A215382

/-- `p?[A004273(A130766(n))+A001068(n)]` -/
def P12220418320710219421.Spec : Prop :=
  ∀ n, P12220418320710219421.a n = A215382 (n + 1)

end A215382

/-! ## A215382.P12322115365715279256

`record[A006530(A118286(n+1)-A110657(n))]`
-/

namespace A215382.P12322115365715279256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A118286 (n + 1) - A110657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215382.P12322115365715279256

namespace A215382

/-- `record[A006530(A118286(n+1)-A110657(n))]` -/
def P12322115365715279256.Spec : Prop :=
  ∀ n, P12322115365715279256.a n = A215382 (n + 1)

end A215382

/-! ## A215382.P10700267639654943580

`record[A020639(A118286(n+1)-A110657(n))]`
-/

namespace A215382.P10700267639654943580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A118286 (n + 1) - A110657 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215382.P10700267639654943580

namespace A215382

/-- `record[A020639(A118286(n+1)-A110657(n))]` -/
def P10700267639654943580.Spec : Prop :=
  ∀ n, P10700267639654943580.a n = A215382 (n + 1)

end A215382

/-! ## A215382.P15933519128939438382

`record[A006530(A276283(n)-A110657(n)+1)]`
-/

namespace A215382.P15933519128939438382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A276283 n - A110657 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215382.P15933519128939438382

namespace A215382

/-- `record[A006530(A276283(n)-A110657(n)+1)]` -/
def P15933519128939438382.Spec : Prop :=
  ∀ n, P15933519128939438382.a n = A215382 (n + 1)

end A215382

/-! ## A215382.P10501085209264874918

`p?[A266297(n+1)+A080513(A080513(n))]`
-/

namespace A215382.P10501085209264874918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (n + 1) + A080513 (A080513 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215382.P10501085209264874918

namespace A215382

/-- `p?[A266297(n+1)+A080513(A080513(n))]` -/
def P10501085209264874918.Spec : Prop :=
  ∀ n, P10501085209264874918.a n = A215382 (n + 1)

end A215382

/-! ## A215382.P14363569805141255458

`p?[A118286(n+1)-A028242(A028242(n))]`
-/

namespace A215382.P14363569805141255458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118286 (n + 1) - A028242 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215382.P14363569805141255458

namespace A215382

/-- `p?[A118286(n+1)-A028242(A028242(n))]` -/
def P14363569805141255458.Spec : Prop :=
  ∀ n, P14363569805141255458.a n = A215382 (n + 1)

end A215382

/-! ## A215382.P16809500598470108835

`p?[A007494(A003485(n))-A002265(n)]`
-/

namespace A215382.P16809500598470108835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (A003485 n).toNat - A002265 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215382.P16809500598470108835

namespace A215382

/-- `p?[A007494(A003485(n))-A002265(n)]` -/
def P16809500598470108835.Spec : Prop :=
  ∀ n, P16809500598470108835.a n = A215382 (n + 1)

end A215382

/-! ## A215382.P13110994533084402827

`∩[A032797(n+1)-1, A215318(n+1)]`
-/

namespace A215382.P13110994533084402827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215382.P13110994533084402827

namespace A215382

/-- `∩[A032797(n+1)-1, A215318(n+1)]` -/
def P13110994533084402827.Spec : Prop :=
  ∀ n, (P13110994533084402827.a n : ℤ) = A215382 (n + 1)

end A215382

/-! ## A215382.P9576314276511088162

`∩[A032797(n+1)-2, A215322(n+1)]`
-/

namespace A215382.P9576314276511088162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215382.P9576314276511088162

namespace A215382

/-- `∩[A032797(n+1)-2, A215322(n+1)]` -/
def P9576314276511088162.Spec : Prop :=
  ∀ n, (P9576314276511088162.a n : ℤ) = A215382 (n + 1)

end A215382

/-! ## A215382.P628991773301364126

`p?[A285870(A285870(4*n))+A004275(n)]`
-/

namespace A215382.P628991773301364126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285870 (A285870 (4 * n)).toNat + A004275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215382.P628991773301364126

namespace A215382

/-- `p?[A285870(A285870(4*n))+A004275(n)]` -/
def P628991773301364126.Spec : Prop :=
  ∀ n, P628991773301364126.a n = A215382 (n + 1)

end A215382

/-!
# A215383: Primes congruent to {1, 2, 3, 6} mod 13.

The programs for A215383, the canonical program `A215383.P317313801147762073` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215383 has offset 1).

The definition of A215383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215383.P317313801147762073

`∪[A093350(n+1), A215135(n+1)]`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A215383

/-- `∪[A093350(n+1), A215135(n+1)]` -/
def P317313801147762073.Spec : Prop :=
  ∀ n, (P317313801147762073.a n : ℤ) = A215383 (n + 1)

theorem P317313801147762073.correct : P317313801147762073.Spec := by
  intro n
  simp only [A215383, Nat.add_sub_cancel]

end A215383

/-! ## A215383.P5797233489598060970

`∪[A215135(n+1), A215387(n+1)]`
-/

namespace A215383.P5797233489598060970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215387 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215383.P5797233489598060970

namespace A215383

/-- `∪[A215135(n+1), A215387(n+1)]` -/
def P5797233489598060970.Spec : Prop :=
  ∀ n, (P5797233489598060970.a n : ℤ) = A215383 (n + 1)

end A215383

/-! ## A215383.P112173971139769001

`∪[A215387(n+1), A215391(n+1)]`
-/

namespace A215383.P112173971139769001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215383.P112173971139769001

namespace A215383

/-- `∪[A215387(n+1), A215391(n+1)]` -/
def P112173971139769001.Spec : Prop :=
  ∀ n, (P112173971139769001.a n : ℤ) = A215383 (n + 1)

end A215383

/-! ## A215383.P9200689723433225355

`∪[A215387(n+1), A268753(n+1)]`
-/

namespace A215383.P9200689723433225355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215387 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215383.P9200689723433225355

namespace A215383

/-- `∪[A215387(n+1), A268753(n+1)]` -/
def P9200689723433225355.Spec : Prop :=
  ∀ n, (P9200689723433225355.a n : ℤ) = A215383 (n + 1)

end A215383

/-! ## A215383.P8624225369720783591

`p?[a(n-4)+13]` with `a(0)=2, a(1)=1, a(2)=3, a(3)=6`
-/

namespace A215383.P8624225369720783591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 3, 6] fun n f1 =>
  f1 (n - 4) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215383.P8624225369720783591

namespace A215383

/-- `p?[a(n-4)+13]` -/
def P8624225369720783591.Spec : Prop :=
  ∀ n, (P8624225369720783591.a n : ℤ) = A215383 (n + 1)

end A215383

/-! ## A215383.P11108617573430200825

`∩[A215319(n+1), A215323(n+1)]`
-/

namespace A215383.P11108617573430200825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215383.P11108617573430200825

namespace A215383

/-- `∩[A215319(n+1), A215323(n+1)]` -/
def P11108617573430200825.Spec : Prop :=
  ∀ n, (P11108617573430200825.a n : ℤ) = A215383 (n + 1)

end A215383

/-! ## A215383.P7199093845184810319

`p?[∑[A010127(A116966(n))]+1]`
-/

namespace A215383.P7199093845184810319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (A116966 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215383.P7199093845184810319

namespace A215383

/-- `p?[∑[A010127(A116966(n))]+1]` -/
def P7199093845184810319.Spec : Prop :=
  ∀ n, P7199093845184810319.a n = A215383 (n + 1)

end A215383

/-! ## A215383.P8795819158370258879

`p?[A110659(n)+A032766(A003485(n))]`
-/

namespace A215383.P8795819158370258879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 n + A032766 (A003485 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215383.P8795819158370258879

namespace A215383

/-- `p?[A110659(n)+A032766(A003485(n))]` -/
def P8795819158370258879.Spec : Prop :=
  ∀ n, P8795819158370258879.a n = A215383 (n + 1)

end A215383

/-! ## A215383.P16933641639314183023

`p?[lt[n+2, A277616(n)]]`
-/

namespace A215383.P16933641639314183023
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277616 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215383.P16933641639314183023

namespace A215383

/-- `p?[lt[n+2, A277616(n)]]` -/
def P16933641639314183023.Spec : Prop :=
  ∀ n, (P16933641639314183023.a n : ℤ) = A215383 (n + 1)

end A215383

/-!
# A215384: Primes congruent to {1, 2, 3, 6} mod 17.

The programs for A215384, the canonical program `A215384.P2905744902112368946` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215384 has offset 1).

The definition of A215384 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215384.P16260443113726192926

`∪[A129484(n+1), A215388(n+1)]`
-/

namespace A215384.P16260443113726192926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215384.P16260443113726192926

namespace A215384

/-- `∪[A129484(n+1), A215388(n+1)]` -/
def P16260443113726192926.Spec : Prop :=
  ∀ n, (P16260443113726192926.a n : ℤ) = A215384 (n + 1)

end A215384

/-! ## A215384.P2905744902112368946

`∪[A140545(n+1), A215153(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215384

/-- `∪[A140545(n+1), A215153(n+1)]` -/
def P2905744902112368946.Spec : Prop :=
  ∀ n, (P2905744902112368946.a n : ℤ) = A215384 (n + 1)

theorem P2905744902112368946.correct : P2905744902112368946.Spec := by
  intro n
  simp only [A215384, Nat.add_sub_cancel]

end A215384

/-! ## A215384.P2190007794333142084

`∪[A215153(n+1), A215388(n+1)]`
-/

namespace A215384.P2190007794333142084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215388 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215384.P2190007794333142084

namespace A215384

/-- `∪[A215153(n+1), A215388(n+1)]` -/
def P2190007794333142084.Spec : Prop :=
  ∀ n, (P2190007794333142084.a n : ℤ) = A215384 (n + 1)

end A215384

/-! ## A215384.P17848834673380390386

`∪[A215388(n+1), A215392(n+1)]`
-/

namespace A215384.P17848834673380390386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215388 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215384.P17848834673380390386

namespace A215384

/-- `∪[A215388(n+1), A215392(n+1)]` -/
def P17848834673380390386.Spec : Prop :=
  ∀ n, (P17848834673380390386.a n : ℤ) = A215384 (n + 1)

end A215384

/-! ## A215384.P3586966355789740401

`p?[a(n-4)+17]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A215384.P3586966355789740401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6] fun n f1 =>
  f1 (n - 4) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215384.P3586966355789740401

namespace A215384

/-- `p?[a(n-4)+17]` -/
def P3586966355789740401.Spec : Prop :=
  ∀ n, (P3586966355789740401.a n : ℤ) = A215384 (n + 1)

end A215384

/-! ## A215384.P15188869913180468440

`∩[A215320(n+1), A215324(n+1)]`
-/

namespace A215384.P15188869913180468440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215384.P15188869913180468440

namespace A215384

/-- `∩[A215320(n+1), A215324(n+1)]` -/
def P15188869913180468440.Spec : Prop :=
  ∀ n, (P15188869913180468440.a n : ℤ) = A215384 (n + 1)

end A215384

/-! ## A215384.P13004429840639797776

`p?[A310441(n)-A238468(3*n+2)]`
-/

namespace A215384.P13004429840639797776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310441 n - A238468 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215384.P13004429840639797776

namespace A215384

/-- `p?[A310441(n)-A238468(3*n+2)]` -/
def P13004429840639797776.Spec : Prop :=
  ∀ n, P13004429840639797776.a n = A215384 (n + 1)

end A215384

/-!
# A215385: Primes congruent to {1, 2, 3, 6} mod 19.

The programs for A215385, the canonical program `A215385.P6170897729525375825` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215385 has offset 1).

The definition of A215385 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215385.P6170897729525375825

`∪[A141871(n+1), A215154(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215385

/-- `∪[A141871(n+1), A215154(n+1)]` -/
def P6170897729525375825.Spec : Prop :=
  ∀ n, (P6170897729525375825.a n : ℤ) = A215385 (n + 1)

theorem P6170897729525375825.correct : P6170897729525375825.Spec := by
  intro n
  simp only [A215385, Nat.add_sub_cancel]

end A215385

/-! ## A215385.P14420692232339278498

`∪[A141868(n+1), A215389(n+1)]`
-/

namespace A215385.P14420692232339278498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141868 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215385.P14420692232339278498

namespace A215385

/-- `∪[A141868(n+1), A215389(n+1)]` -/
def P14420692232339278498.Spec : Prop :=
  ∀ n, (P14420692232339278498.a n : ℤ) = A215385 (n + 1)

end A215385

/-! ## A215385.P555695804143897179

`∪[A215154(n+1), A215389(n+1)]`
-/

namespace A215385.P555695804143897179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215385.P555695804143897179

namespace A215385

/-- `∪[A215154(n+1), A215389(n+1)]` -/
def P555695804143897179.Spec : Prop :=
  ∀ n, (P555695804143897179.a n : ℤ) = A215385 (n + 1)

end A215385

/-! ## A215385.P10335472514111666805

`∪[A215389(n+1), A215393(n+1)]`
-/

namespace A215385.P10335472514111666805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215393 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215385.P10335472514111666805

namespace A215385

/-- `∪[A215389(n+1), A215393(n+1)]` -/
def P10335472514111666805.Spec : Prop :=
  ∀ n, (P10335472514111666805.a n : ℤ) = A215385 (n + 1)

end A215385

/-! ## A215385.P9157904879123524030

`p?[a(n-4)+19]` with `a(0)=1, a(1)=2, a(2)=3, a(3)=6`
-/

namespace A215385.P9157904879123524030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 3, 6] fun n f1 =>
  f1 (n - 4) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215385.P9157904879123524030

namespace A215385

/-- `p?[a(n-4)+19]` -/
def P9157904879123524030.Spec : Prop :=
  ∀ n, (P9157904879123524030.a n : ℤ) = A215385 (n + 1)

end A215385

/-! ## A215385.P5893248821681335350

`∩[A215321(n+1), A215325(n+1)]`
-/

namespace A215385.P5893248821681335350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215385.P5893248821681335350

namespace A215385

/-- `∩[A215321(n+1), A215325(n+1)]` -/
def P5893248821681335350.Spec : Prop :=
  ∀ n, (P5893248821681335350.a n : ℤ) = A215385 (n + 1)

end A215385

/-!
# A215386: Primes congruent to {2, 3, 6} mod 11.

The programs for A215386, the canonical program `A215386.P6364758896401244281` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215386 has offset 1).

The definition of A215386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215386.P6364758896401244281

`∪[A141853(n+1), A214888(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215386

/-- `∪[A141853(n+1), A214888(n+1)]` -/
def P6364758896401244281.Spec : Prop :=
  ∀ n, (P6364758896401244281.a n : ℤ) = A215386 (n + 1)

theorem P6364758896401244281.correct : P6364758896401244281.Spec := by
  intro n
  simp only [A215386, Nat.add_sub_cancel]

end A215386

/-! ## A215386.P9097063120717585552

`p?[a(n-3)+11]` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A215386.P9097063120717585552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n f1 =>
  f1 (n - 3) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215386.P9097063120717585552

namespace A215386

/-- `p?[a(n-3)+11]` -/
def P9097063120717585552.Spec : Prop :=
  ∀ n, (P9097063120717585552.a n : ℤ) = A215386 (n + 1)

end A215386

/-! ## A215386.P10046741445486552527

`p?[ogf((2x+x^2+3x^3+5x^4)/(1-x-x^3+x^4))]`
-/

namespace A215386.P10046741445486552527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 3, 5] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215386.P10046741445486552527

namespace A215386

/-- `p?[ogf((2x+x^2+3x^3+5x^4)/(1-x-x^3+x^4))]` -/
def P10046741445486552527.Spec : Prop :=
  ∀ n, P10046741445486552527.a n = A215386 (n + 1)

end A215386

/-! ## A215386.P10218354078343721549

`∩[A215350(n+1), A215382(n+1)]`
-/

namespace A215386.P10218354078343721549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215386.P10218354078343721549

namespace A215386

/-- `∩[A215350(n+1), A215382(n+1)]` -/
def P10218354078343721549.Spec : Prop :=
  ∀ n, (P10218354078343721549.a n : ℤ) = A215386 (n + 1)

end A215386

/-! ## A215386.P3263860273279027122

`∩[A215350(n+1), A215370(n+1)]`
-/

namespace A215386.P3263860273279027122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215386.P3263860273279027122

namespace A215386

/-- `∩[A215350(n+1), A215370(n+1)]` -/
def P3263860273279027122.Spec : Prop :=
  ∀ n, (P3263860273279027122.a n : ℤ) = A215386 (n + 1)

end A215386

/-! ## A215386.P9012698320949960620

`∩[A215370(n+1), A215382(n+1)]`
-/

namespace A215386.P9012698320949960620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215370 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215386.P9012698320949960620

namespace A215386

/-- `∩[A215370(n+1), A215382(n+1)]` -/
def P9012698320949960620.Spec : Prop :=
  ∀ n, (P9012698320949960620.a n : ℤ) = A215386 (n + 1)

end A215386

/-! ## A215386.P16909632802114353694

`∩[A215322(n+1), A215370(n+1)]`
-/

namespace A215386.P16909632802114353694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215386.P16909632802114353694

namespace A215386

/-- `∩[A215322(n+1), A215370(n+1)]` -/
def P16909632802114353694.Spec : Prop :=
  ∀ n, (P16909632802114353694.a n : ℤ) = A215386 (n + 1)

end A215386

/-! ## A215386.P8577281818158264260

`∩[A215318(n+1), A215350(n+1)]`
-/

namespace A215386.P8577281818158264260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215386.P8577281818158264260

namespace A215386

/-- `∩[A215318(n+1), A215350(n+1)]` -/
def P8577281818158264260.Spec : Prop :=
  ∀ n, (P8577281818158264260.a n : ℤ) = A215386 (n + 1)

end A215386

/-! ## A215386.P15081111595608616565

`p?[2*A047350(n+1)-n]`
-/

namespace A215386.P15081111595608616565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047350 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215386.P15081111595608616565

namespace A215386

/-- `p?[2*A047350(n+1)-n]` -/
def P15081111595608616565.Spec : Prop :=
  ∀ n, P15081111595608616565.a n = A215386 (n + 1)

end A215386

/-! ## A215386.P9577639453014884070

`p?[A330396(n)+A047395(n+1)]`
-/

namespace A215386.P9577639453014884070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 n + A047395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215386.P9577639453014884070

namespace A215386

/-- `p?[A330396(n)+A047395(n+1)]` -/
def P9577639453014884070.Spec : Prop :=
  ∀ n, P9577639453014884070.a n = A215386 (n + 1)

end A215386

/-! ## A215386.P3482102595120031596

`p?[A017185(n)-2*A047536(n+1)]`
-/

namespace A215386.P3482102595120031596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 n - 2 * A047536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215386.P3482102595120031596

namespace A215386

/-- `p?[A017185(n)-2*A047536(n+1)]` -/
def P3482102595120031596.Spec : Prop :=
  ∀ n, P3482102595120031596.a n = A215386 (n + 1)

end A215386

/-! ## A215386.P11162943098517425979

`p?[A047396(n+1)+A016777(A285870(n))]`
-/

namespace A215386.P11162943098517425979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047396 (n + 1) + A016777 (A285870 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215386.P11162943098517425979

namespace A215386

/-- `p?[A047396(n+1)+A016777(A285870(n))]` -/
def P11162943098517425979.Spec : Prop :=
  ∀ n, P11162943098517425979.a n = A215386 (n + 1)

end A215386

/-! ## A215386.P18090323014410910635

`p?[A047604(n+1)+A004523(n)+A002264(n)]`
-/

namespace A215386.P18090323014410910635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047604 (n + 1) + (A004523 n + A002264 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215386.P18090323014410910635

namespace A215386

/-- `p?[A047604(n+1)+A004523(n)+A002264(n)]` -/
def P18090323014410910635.Spec : Prop :=
  ∀ n, P18090323014410910635.a n = A215386 (n + 1)

end A215386

/-! ## A215386.P2497442876780607885

`p?[A187326(A004773(n))+A047202(n+1)]`
-/

namespace A215386.P2497442876780607885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187326 (A004773 n).toNat + A047202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215386.P2497442876780607885

namespace A215386

/-- `p?[A187326(A004773(n))+A047202(n+1)]` -/
def P2497442876780607885.Spec : Prop :=
  ∀ n, P2497442876780607885.a n = A215386 (n + 1)

end A215386

/-! ## A215386.P6607915852084448445

`p?[A236348(n)+A047415(A042968(n+1))]`
-/

namespace A215386.P6607915852084448445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 n + A047415 (A042968 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215386.P6607915852084448445

namespace A215386

/-- `p?[A236348(n)+A047415(A042968(n+1))]` -/
def P6607915852084448445.Spec : Prop :=
  ∀ n, P6607915852084448445.a n = A215386 (n + 1)

end A215386

/-! ## A215386.P12410102998608960673

`p?[A008611(n)+A004273(A047223(n+1))]`
-/

namespace A215386.P12410102998608960673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n + A004273 (A047223 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215386.P12410102998608960673

namespace A215386

/-- `p?[A008611(n)+A004273(A047223(n+1))]` -/
def P12410102998608960673.Spec : Prop :=
  ∀ n, P12410102998608960673.a n = A215386 (n + 1)

end A215386

/-! ## A215386.P2414793933716209706

`p?[A140427(n)+A007494(A001651(n+1))]`
-/

namespace A215386.P2414793933716209706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140427 n + A007494 (A001651 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215386.P2414793933716209706

namespace A215386

/-- `p?[A140427(n)+A007494(A001651(n+1))]` -/
def P2414793933716209706.Spec : Prop :=
  ∀ n, P2414793933716209706.a n = A215386 (n + 1)

end A215386

/-! ## A215386.P16989350788432605749

`p?[A168056(n)+A004396(A047202(n+1))]`
-/

namespace A215386.P16989350788432605749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 n + A004396 (A047202 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215386.P16989350788432605749

namespace A215386

/-- `p?[A168056(n)+A004396(A047202(n+1))]` -/
def P16989350788432605749.Spec : Prop :=
  ∀ n, P16989350788432605749.a n = A215386 (n + 1)

end A215386

/-! ## A215386.P12210950578304522289

`p?[A047294(A047604(n+1))-n]`
-/

namespace A215386.P12210950578304522289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047294 (A047604 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215386.P12210950578304522289

namespace A215386

/-- `p?[A047294(A047604(n+1))-n]` -/
def P12210950578304522289.Spec : Prop :=
  ∀ n, P12210950578304522289.a n = A215386 (n + 1)

end A215386

/-! ## A215386.P9926133186665980500

`p?[A236348(n)+A004442(A047618(n+1))]`
-/

namespace A215386.P9926133186665980500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236348 n + A004442 (A047618 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215386.P9926133186665980500

namespace A215386

/-- `p?[A236348(n)+A004442(A047618(n+1))]` -/
def P9926133186665980500.Spec : Prop :=
  ∀ n, P9926133186665980500.a n = A215386 (n + 1)

end A215386

/-!
# A215387: Primes congruent to {2, 3, 6} mod 13.

The programs for A215387, the canonical program `A215387.P8622939867060955229` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215387 has offset 1).

The definition of A215387 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215387.P8622939867060955229

`∪[A093350(n+1), A214889(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215387

/-- `∪[A093350(n+1), A214889(n+1)]` -/
def P8622939867060955229.Spec : Prop :=
  ∀ n, (P8622939867060955229.a n : ℤ) = A215387 (n + 1)

theorem P8622939867060955229.correct : P8622939867060955229.Spec := by
  intro n
  simp only [A215387, Nat.add_sub_cancel]

end A215387

/-! ## A215387.P6295486818693672551

`p?[a(n-3)+13]` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A215387.P6295486818693672551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n f1 =>
  f1 (n - 3) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215387.P6295486818693672551

namespace A215387

/-- `p?[a(n-3)+13]` -/
def P6295486818693672551.Spec : Prop :=
  ∀ n, (P6295486818693672551.a n : ℤ) = A215387 (n + 1)

end A215387

/-! ## A215387.P8988287601004607306

`p?[ogf((2x+x^2+3x^3+7x^4)/(1-x-x^3+x^4))]`
-/

namespace A215387.P8988287601004607306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 3, 7] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215387.P8988287601004607306

namespace A215387

/-- `p?[ogf((2x+x^2+3x^3+7x^4)/(1-x-x^3+x^4))]` -/
def P8988287601004607306.Spec : Prop :=
  ∀ n, P8988287601004607306.a n = A215387 (n + 1)

end A215387

/-! ## A215387.P9103239527086178953

`∩[A215351(n+1), A215371(n+1)]`
-/

namespace A215387.P9103239527086178953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215387.P9103239527086178953

namespace A215387

/-- `∩[A215351(n+1), A215371(n+1)]` -/
def P9103239527086178953.Spec : Prop :=
  ∀ n, (P9103239527086178953.a n : ℤ) = A215387 (n + 1)

end A215387

/-! ## A215387.P17869851319776298592

`∩[A215351(n+1), A215383(n+1)]`
-/

namespace A215387.P17869851319776298592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215387.P17869851319776298592

namespace A215387

/-- `∩[A215351(n+1), A215383(n+1)]` -/
def P17869851319776298592.Spec : Prop :=
  ∀ n, (P17869851319776298592.a n : ℤ) = A215387 (n + 1)

end A215387

/-! ## A215387.P3279805655862087956

`∩[A215371(n+1), A215383(n+1)]`
-/

namespace A215387.P3279805655862087956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215387.P3279805655862087956

namespace A215387

/-- `∩[A215371(n+1), A215383(n+1)]` -/
def P3279805655862087956.Spec : Prop :=
  ∀ n, (P3279805655862087956.a n : ℤ) = A215387 (n + 1)

end A215387

/-! ## A215387.P10382183892260701129

`∩[A215323(n+1), A215371(n+1)]`
-/

namespace A215387.P10382183892260701129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215371 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215387.P10382183892260701129

namespace A215387

/-- `∩[A215323(n+1), A215371(n+1)]` -/
def P10382183892260701129.Spec : Prop :=
  ∀ n, (P10382183892260701129.a n : ℤ) = A215387 (n + 1)

end A215387

/-! ## A215387.P12284251998192637348

`∩[A215319(n+1), A215351(n+1)]`
-/

namespace A215387.P12284251998192637348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215387.P12284251998192637348

namespace A215387

/-- `∩[A215319(n+1), A215351(n+1)]` -/
def P12284251998192637348.Spec : Prop :=
  ∀ n, (P12284251998192637348.a n : ℤ) = A215387 (n + 1)

end A215387

/-! ## A215387.P2263102098975681411

`p?[2*A047465(n+1)-n]`
-/

namespace A215387.P2263102098975681411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047465 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215387.P2263102098975681411

namespace A215387

/-- `p?[2*A047465(n+1)-n]` -/
def P2263102098975681411.Spec : Prop :=
  ∀ n, P2263102098975681411.a n = A215387 (n + 1)

end A215387

/-! ## A215387.P7227869244593674757

`p?[A168484(A042968(n+1))+A004523(n)]`
-/

namespace A215387.P7227869244593674757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (A042968 (n + 1)).toNat + A004523 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215387.P7227869244593674757

namespace A215387

/-- `p?[A168484(A042968(n+1))+A004523(n)]` -/
def P7227869244593674757.Spec : Prop :=
  ∀ n, P7227869244593674757.a n = A215387 (n + 1)

end A215387

/-! ## A215387.P14163470762067647631

`p?[A187326(A187326(n))+or(2, n)]`
-/

namespace A215387.P14163470762067647631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187326 (A187326 n).toNat + (Nat.lor 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215387.P14163470762067647631

namespace A215387

/-- `p?[A187326(A187326(n))+or(2, n)]` -/
def P14163470762067647631.Spec : Prop :=
  ∀ n, P14163470762067647631.a n = A215387 (n + 1)

end A215387

/-! ## A215387.P330398115985552444

`p?[A103221(2*n)+A103215(n+1)]`
-/

namespace A215387.P330398115985552444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (2 * n) + A103215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215387.P330398115985552444

namespace A215387

/-- `p?[A103221(2*n)+A103215(n+1)]` -/
def P330398115985552444.Spec : Prop :=
  ∀ n, P330398115985552444.a n = A215387 (n + 1)

end A215387

/-! ## A215387.P18398013928866168633

`p?[A008611(n)+A005408(A047240(n+1))]`
-/

namespace A215387.P18398013928866168633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n + A005408 (A047240 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215387.P18398013928866168633

namespace A215387

/-- `p?[A008611(n)+A005408(A047240(n+1))]` -/
def P18398013928866168633.Spec : Prop :=
  ∀ n, P18398013928866168633.a n = A215387 (n + 1)

end A215387

/-! ## A215387.P9743941022856968939

`p?[A005843(A047465(n+1))-n]`
-/

namespace A215387.P9743941022856968939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047465 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215387.P9743941022856968939

namespace A215387

/-- `p?[A005843(A047465(n+1))-n]` -/
def P9743941022856968939.Spec : Prop :=
  ∀ n, P9743941022856968939.a n = A215387 (n + 1)

end A215387

/-! ## A215387.P11323920731953794288

`p?[A005843(A047604(n+1))-(n+2)]`
-/

namespace A215387.P11323920731953794288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A047604 (n + 1)).toNat - (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215387.P11323920731953794288

namespace A215387

/-- `p?[A005843(A047604(n+1))-(n+2)]` -/
def P11323920731953794288.Spec : Prop :=
  ∀ n, P11323920731953794288.a n = A215387 (n + 1)

end A215387

/-! ## A215387.P8604439419200492250

`p?[A330396(4*n)-A024000(A008611(n))]`
-/

namespace A215387.P8604439419200492250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (4 * n) - A024000 (A008611 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215387.P8604439419200492250

namespace A215387

/-- `p?[A330396(4*n)-A024000(A008611(n))]` -/
def P8604439419200492250.Spec : Prop :=
  ∀ n, P8604439419200492250.a n = A215387 (n + 1)

end A215387

/-!
# A215388: Primes congruent to {2, 3, 6} mod 17.

The programs for A215388, the canonical program `A215388.P6479722193099368893` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215388 has offset 1).

The definition of A215388 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215388.P6479722193099368893

`∪[A140545(n+1), A214890(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215388

/-- `∪[A140545(n+1), A214890(n+1)]` -/
def P6479722193099368893.Spec : Prop :=
  ∀ n, (P6479722193099368893.a n : ℤ) = A215388 (n + 1)

theorem P6479722193099368893.correct : P6479722193099368893.Spec := by
  intro n
  simp only [A215388, Nat.add_sub_cancel]

end A215388

/-! ## A215388.P15012910131258352743

`p?[a(n-3)+17]` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A215388.P15012910131258352743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n f1 =>
  f1 (n - 3) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215388.P15012910131258352743

namespace A215388

/-- `p?[a(n-3)+17]` -/
def P15012910131258352743.Spec : Prop :=
  ∀ n, (P15012910131258352743.a n : ℤ) = A215388 (n + 1)

end A215388

/-! ## A215388.P15792387809118354329

`∩[A215352(n+1), A215372(n+1)]`
-/

namespace A215388.P15792387809118354329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215388.P15792387809118354329

namespace A215388

/-- `∩[A215352(n+1), A215372(n+1)]` -/
def P15792387809118354329.Spec : Prop :=
  ∀ n, (P15792387809118354329.a n : ℤ) = A215388 (n + 1)

end A215388

/-! ## A215388.P2863184297993551222

`∩[A215352(n+1), A215384(n+1)]`
-/

namespace A215388.P2863184297993551222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215388.P2863184297993551222

namespace A215388

/-- `∩[A215352(n+1), A215384(n+1)]` -/
def P2863184297993551222.Spec : Prop :=
  ∀ n, (P2863184297993551222.a n : ℤ) = A215388 (n + 1)

end A215388

/-! ## A215388.P1918541633552907001

`∩[A215372(n+1), A215384(n+1)]`
-/

namespace A215388.P1918541633552907001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215388.P1918541633552907001

namespace A215388

/-- `∩[A215372(n+1), A215384(n+1)]` -/
def P1918541633552907001.Spec : Prop :=
  ∀ n, (P1918541633552907001.a n : ℤ) = A215388 (n + 1)

end A215388

/-! ## A215388.P6766866106330000595

`∩[A215320(n+1), A215352(n+1)]`
-/

namespace A215388.P6766866106330000595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215388.P6766866106330000595

namespace A215388

/-- `∩[A215320(n+1), A215352(n+1)]` -/
def P6766866106330000595.Spec : Prop :=
  ∀ n, (P6766866106330000595.a n : ℤ) = A215388 (n + 1)

end A215388

/-! ## A215388.P9221217546016539027

`∩[A215324(n+1), A215372(n+1)]`
-/

namespace A215388.P9221217546016539027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215372 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215388.P9221217546016539027

namespace A215388

/-- `∩[A215324(n+1), A215372(n+1)]` -/
def P9221217546016539027.Spec : Prop :=
  ∀ n, (P9221217546016539027.a n : ℤ) = A215388 (n + 1)

end A215388

/-! ## A215388.P12147172370925795377

`p?[A002081(A004773(n))-n]`
-/

namespace A215388.P12147172370925795377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 (A004773 n).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215388.P12147172370925795377

namespace A215388

/-- `p?[A002081(A004773(n))-n]` -/
def P12147172370925795377.Spec : Prop :=
  ∀ n, P12147172370925795377.a n = A215388 (n + 1)

end A215388

/-! ## A215388.P9010780980867194042

`p?[A102039(n+1)-A004524(A047273(n+1))]`
-/

namespace A215388.P9010780980867194042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102039 (n + 1) - A004524 (A047273 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215388.P9010780980867194042

namespace A215388

/-- `p?[A102039(n+1)-A004524(A047273(n+1))]` -/
def P9010780980867194042.Spec : Prop :=
  ∀ n, P9010780980867194042.a n = A215388 (n + 1)

end A215388

/-! ## A215388.P10107167752498566901

`p?[A131380(A047396(n+1))+2*n]`
-/

namespace A215388.P10107167752498566901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131380 (A047396 (n + 1)).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215388.P10107167752498566901

namespace A215388

/-- `p?[A131380(A047396(n+1))+2*n]` -/
def P10107167752498566901.Spec : Prop :=
  ∀ n, P10107167752498566901.a n = A215388 (n + 1)

end A215388

/-!
# A215389: Primes congruent to {2, 3, 6} mod 19.

The programs for A215389, the canonical program `A215389.P9588713011954173466` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215389 has offset 1).

The definition of A215389 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215389.P9588713011954173466

`∪[A141871(n+1), A215101(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215389

/-- `∪[A141871(n+1), A215101(n+1)]` -/
def P9588713011954173466.Spec : Prop :=
  ∀ n, (P9588713011954173466.a n : ℤ) = A215389 (n + 1)

theorem P9588713011954173466.correct : P9588713011954173466.Spec := by
  intro n
  simp only [A215389, Nat.add_sub_cancel]

end A215389

/-! ## A215389.P9257157297839162292

`p?[a(n-3)+19]` with `a(0)=2, a(1)=3, a(2)=6`
-/

namespace A215389.P9257157297839162292
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 6] fun n f1 =>
  f1 (n - 3) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215389.P9257157297839162292

namespace A215389

/-- `p?[a(n-3)+19]` -/
def P9257157297839162292.Spec : Prop :=
  ∀ n, (P9257157297839162292.a n : ℤ) = A215389 (n + 1)

end A215389

/-! ## A215389.P10339031988577749004

`∩[A215373(n+1), A215385(n+1)]`
-/

namespace A215389.P10339031988577749004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215373 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215389.P10339031988577749004

namespace A215389

/-- `∩[A215373(n+1), A215385(n+1)]` -/
def P10339031988577749004.Spec : Prop :=
  ∀ n, (P10339031988577749004.a n : ℤ) = A215389 (n + 1)

end A215389

/-! ## A215389.P5830839906129184636

`∩[A215353(n+1), A215373(n+1)]`
-/

namespace A215389.P5830839906129184636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215389.P5830839906129184636

namespace A215389

/-- `∩[A215353(n+1), A215373(n+1)]` -/
def P5830839906129184636.Spec : Prop :=
  ∀ n, (P5830839906129184636.a n : ℤ) = A215389 (n + 1)

end A215389

/-! ## A215389.P7781526967184230518

`∩[A215353(n+1), A215385(n+1)]`
-/

namespace A215389.P7781526967184230518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215389.P7781526967184230518

namespace A215389

/-- `∩[A215353(n+1), A215385(n+1)]` -/
def P7781526967184230518.Spec : Prop :=
  ∀ n, (P7781526967184230518.a n : ℤ) = A215389 (n + 1)

end A215389

/-! ## A215389.P11746929893185048156

`∩[A215321(n+1), A215353(n+1)]`
-/

namespace A215389.P11746929893185048156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215321 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215389.P11746929893185048156

namespace A215389

/-- `∩[A215321(n+1), A215353(n+1)]` -/
def P11746929893185048156.Spec : Prop :=
  ∀ n, (P11746929893185048156.a n : ℤ) = A215389 (n + 1)

end A215389

/-! ## A215389.P10412385891914072424

`∩[A215325(n+1), A215373(n+1)]`
-/

namespace A215389.P10412385891914072424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215389.P10412385891914072424

namespace A215389

/-- `∩[A215325(n+1), A215373(n+1)]` -/
def P10412385891914072424.Spec : Prop :=
  ∀ n, (P10412385891914072424.a n : ℤ) = A215389 (n + 1)

end A215389

/-!
# A215390: Primes congruent to {1, 2} mod 11.

The programs for A215390, the canonical program `A215390.P16701221075813804655` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215390 has offset 1).

The definition of A215390 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215390.P16701221075813804655

`∪[A090187(n+1), A141849(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215390

/-- `∪[A090187(n+1), A141849(n+1)]` -/
def P16701221075813804655.Spec : Prop :=
  ∀ n, (P16701221075813804655.a n : ℤ) = A215390 (n + 1)

theorem P16701221075813804655.correct : P16701221075813804655.Spec := by
  intro n
  simp only [A215390, Nat.add_sub_cancel]

end A215390

/-! ## A215390.P14856493827793201014

`p?[a(n-2)+11]` with `a(0)=1, a(1)=2`
-/

namespace A215390.P14856493827793201014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215390.P14856493827793201014

namespace A215390

/-- `p?[a(n-2)+11]` -/
def P14856493827793201014.Spec : Prop :=
  ∀ n, (P14856493827793201014.a n : ℤ) = A215390 (n + 1)

end A215390

/-! ## A215390.P3259070544712326116

`p?[9*floor(n/2)+n+1]`
-/

namespace A215390.P3259070544712326116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ⌊(n : ℚ) / 2⌋ + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215390.P3259070544712326116

namespace A215390

/-- `p?[9*floor(n/2)+n+1]` -/
def P3259070544712326116.Spec : Prop :=
  ∀ n, P3259070544712326116.a n = A215390 (n + 1)

end A215390

/-! ## A215390.P6276634741025108784

`∩[A215134(n+1), A215214(n+1)]`
-/

namespace A215390.P6276634741025108784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P6276634741025108784

namespace A215390

/-- `∩[A215134(n+1), A215214(n+1)]` -/
def P6276634741025108784.Spec : Prop :=
  ∀ n, (P6276634741025108784.a n : ℤ) = A215390 (n + 1)

end A215390

/-! ## A215390.P2983110645332966797

`∩[A215214(n+1), A215302(n+1)]`
-/

namespace A215390.P2983110645332966797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P2983110645332966797

namespace A215390

/-- `∩[A215214(n+1), A215302(n+1)]` -/
def P2983110645332966797.Spec : Prop :=
  ∀ n, (P2983110645332966797.a n : ℤ) = A215390 (n + 1)

end A215390

/-! ## A215390.P239995674440633268

`∩[A215214(n+1), A215382(n+1)]`
-/

namespace A215390.P239995674440633268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P239995674440633268

namespace A215390

/-- `∩[A215214(n+1), A215382(n+1)]` -/
def P239995674440633268.Spec : Prop :=
  ∀ n, (P239995674440633268.a n : ℤ) = A215390 (n + 1)

end A215390

/-! ## A215390.P6749553179437630150

`∩[A215214(n+1), A215322(n+1)]`
-/

namespace A215390.P6749553179437630150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P6749553179437630150

namespace A215390

/-- `∩[A215214(n+1), A215322(n+1)]` -/
def P6749553179437630150.Spec : Prop :=
  ∀ n, (P6749553179437630150.a n : ℤ) = A215390 (n + 1)

end A215390

/-! ## A215390.P1285415630597626967

`∩[A215134(n+1), A215423(n+1)]`
-/

namespace A215390.P1285415630597626967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215423 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P1285415630597626967

namespace A215390

/-- `∩[A215134(n+1), A215423(n+1)]` -/
def P1285415630597626967.Spec : Prop :=
  ∀ n, (P1285415630597626967.a n : ℤ) = A215390 (n + 1)

end A215390

/-! ## A215390.P6052555160463249493

`record[A020639(A168413(n+1)+n)]`
-/

namespace A215390.P6052555160463249493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A168413 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215390.P6052555160463249493

namespace A215390

/-- `record[A020639(A168413(n+1)+n)]` -/
def P6052555160463249493.Spec : Prop :=
  ∀ n, P6052555160463249493.a n = A215390 (n + 1)

end A215390

/-! ## A215390.P1241187305010734017

`A000027(p?[A168413(n+1)+n])`
-/

namespace A215390.P1241187305010734017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A215390.P1241187305010734017

namespace A215390

/-- `A000027(p?[A168413(n+1)+n])` -/
def P1241187305010734017.Spec : Prop :=
  ∀ n, P1241187305010734017.a n = A215390 (n + 1)

end A215390

/-! ## A215390.P3721102332650518202

`p?[A168413(n+1)+n]%A139611(n)`
-/

namespace A215390.P3721102332650518202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168413 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A139611 n)

end

end A215390.P3721102332650518202

namespace A215390

/-- `p?[A168413(n+1)+n]%A139611(n)` -/
def P3721102332650518202.Spec : Prop :=
  ∀ n, P3721102332650518202.a n = A215390 (n + 1)

end A215390

/-! ## A215390.P4276763471367421920

`record[A020639(A143795(n+2))]`
-/

namespace A215390.P4276763471367421920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A143795 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215390.P4276763471367421920

namespace A215390

/-- `record[A020639(A143795(n+2))]` -/
def P4276763471367421920.Spec : Prop :=
  ∀ n, P4276763471367421920.a n = A215390 (n + 1)

end A215390

/-! ## A215390.P15894863892359616119

`filter[A143795(n+1), A010051(#)]`
-/

namespace A215390.P15894863892359616119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A215390.P15894863892359616119

namespace A215390

/-- `filter[A143795(n+1), A010051(#)]` -/
def P15894863892359616119.Spec : Prop :=
  ∀ n, P15894863892359616119.a n = A215390 (n + 1)

end A215390

/-! ## A215390.P4340086769789966496

`∩[A000040(n+1), A143795(n+1)]`
-/

namespace A215390.P4340086769789966496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P4340086769789966496

namespace A215390

/-- `∩[A000040(n+1), A143795(n+1)]` -/
def P4340086769789966496.Spec : Prop :=
  ∀ n, (P4340086769789966496.a n : ℤ) = A215390 (n + 1)

end A215390

/-! ## A215390.P10705895376446320465

`∩[A045319(n+1), A143795(n+1)]`
-/

namespace A215390.P10705895376446320465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P10705895376446320465

namespace A215390

/-- `∩[A045319(n+1), A143795(n+1)]` -/
def P10705895376446320465.Spec : Prop :=
  ∀ n, (P10705895376446320465.a n : ℤ) = A215390 (n + 1)

end A215390

/-! ## A215390.P3587838952349201934

`∩[A045344(n+1), A143795(n+1)]`
-/

namespace A215390.P3587838952349201934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P3587838952349201934

namespace A215390

/-- `∩[A045344(n+1), A143795(n+1)]` -/
def P3587838952349201934.Spec : Prop :=
  ∀ n, (P3587838952349201934.a n : ℤ) = A215390 (n + 1)

end A215390

/-! ## A215390.P16266028257986010062

`∩[A051948(n+1), A143795(n+1)]`
-/

namespace A215390.P16266028257986010062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P16266028257986010062

namespace A215390

/-- `∩[A051948(n+1), A143795(n+1)]` -/
def P16266028257986010062.Spec : Prop :=
  ∀ n, (P16266028257986010062.a n : ℤ) = A215390 (n + 1)

end A215390

/-! ## A215390.P14251101930715359045

`∩[A116974(n+1), A143795(n+1)]`
-/

namespace A215390.P14251101930715359045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P14251101930715359045

namespace A215390

/-- `∩[A116974(n+1), A143795(n+1)]` -/
def P14251101930715359045.Spec : Prop :=
  ∀ n, (P14251101930715359045.a n : ℤ) = A215390 (n + 1)

end A215390

/-! ## A215390.P10887617820183481708

`∩[A138837(n+1), A143795(n+1)]`
-/

namespace A215390.P10887617820183481708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138837 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143795 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P10887617820183481708

namespace A215390

/-- `∩[A138837(n+1), A143795(n+1)]` -/
def P10887617820183481708.Spec : Prop :=
  ∀ n, (P10887617820183481708.a n : ℤ) = A215390 (n + 1)

end A215390

/-! ## A215390.P5490274220394825060

`∩[A143795(n+1), A165671(n+1)]`
-/

namespace A215390.P5490274220394825060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215390.P5490274220394825060

namespace A215390

/-- `∩[A143795(n+1), A165671(n+1)]` -/
def P5490274220394825060.Spec : Prop :=
  ∀ n, (P5490274220394825060.a n : ℤ) = A215390 (n + 1)

end A215390

/-!
# A215391: Primes congruent to {1, 2} mod 13.

The programs for A215391, the canonical program `A215391.P1080224131390404443` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215391 has offset 1).

The definition of A215391 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215391.P1080224131390404443

`∪[A141858(n+1), A268753(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215391

/-- `∪[A141858(n+1), A268753(n+1)]` -/
def P1080224131390404443.Spec : Prop :=
  ∀ n, (P1080224131390404443.a n : ℤ) = A215391 (n + 1)

theorem P1080224131390404443.correct : P1080224131390404443.Spec := by
  intro n
  simp only [A215391, Nat.add_sub_cancel]

end A215391

/-! ## A215391.P15483720247310330000

`p?[a(n-2)+13]` with `a(0)=1, a(1)=2`
-/

namespace A215391.P15483720247310330000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215391.P15483720247310330000

namespace A215391

/-- `p?[a(n-2)+13]` -/
def P15483720247310330000.Spec : Prop :=
  ∀ n, (P15483720247310330000.a n : ℤ) = A215391 (n + 1)

end A215391

/-! ## A215391.P2283343852226594788

`∩[A215135(n+1), A215215(n+1)]`
-/

namespace A215391.P2283343852226594788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215391.P2283343852226594788

namespace A215391

/-- `∩[A215135(n+1), A215215(n+1)]` -/
def P2283343852226594788.Spec : Prop :=
  ∀ n, (P2283343852226594788.a n : ℤ) = A215391 (n + 1)

end A215391

/-! ## A215391.P5670107807154551762

`∩[A215215(n+1), A215303(n+1)]`
-/

namespace A215391.P5670107807154551762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215391.P5670107807154551762

namespace A215391

/-- `∩[A215215(n+1), A215303(n+1)]` -/
def P5670107807154551762.Spec : Prop :=
  ∀ n, (P5670107807154551762.a n : ℤ) = A215391 (n + 1)

end A215391

/-! ## A215391.P4851731602245177529

`∩[A215215(n+1), A215383(n+1)]`
-/

namespace A215391.P4851731602245177529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215391.P4851731602245177529

namespace A215391

/-- `∩[A215215(n+1), A215383(n+1)]` -/
def P4851731602245177529.Spec : Prop :=
  ∀ n, (P4851731602245177529.a n : ℤ) = A215391 (n + 1)

end A215391

/-! ## A215391.P14621822080306412484

`∩[A215215(n+1), A215323(n+1)]`
-/

namespace A215391.P14621822080306412484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215215 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215391.P14621822080306412484

namespace A215391

/-- `∩[A215215(n+1), A215323(n+1)]` -/
def P14621822080306412484.Spec : Prop :=
  ∀ n, (P14621822080306412484.a n : ℤ) = A215391 (n + 1)

end A215391

/-! ## A215391.P8561515373637445308

`∩[A215135(n+1), A215424(n+1)]`
-/

namespace A215391.P8561515373637445308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215391.P8561515373637445308

namespace A215391

/-- `∩[A215135(n+1), A215424(n+1)]` -/
def P8561515373637445308.Spec : Prop :=
  ∀ n, (P8561515373637445308.a n : ℤ) = A215391 (n + 1)

end A215391

/-! ## A215391.P14611381973495424344

`p?[A063118(n+1)-2*n]`
-/

namespace A215391.P14611381973495424344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1) - (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215391.P14611381973495424344

namespace A215391

/-- `p?[A063118(n+1)-2*n]` -/
def P14611381973495424344.Spec : Prop :=
  ∀ n, P14611381973495424344.a n = A215391 (n + 1)

end A215391

/-! ## A215391.P17508368523686195199

`p?[A112653(n)+1]`
-/

namespace A215391.P17508368523686195199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215391.P17508368523686195199

namespace A215391

/-- `p?[A112653(n)+1]` -/
def P17508368523686195199.Spec : Prop :=
  ∀ n, P17508368523686195199.a n = A215391 (n + 1)

end A215391

/-! ## A215391.P4996177918116646342

`p?[∑[A040005(n)²-2]]`
-/

namespace A215391.P4996177918116646342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 n ^ 2 - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215391.P4996177918116646342

namespace A215391

/-- `p?[∑[A040005(n)²-2]]` -/
def P4996177918116646342.Spec : Prop :=
  ∀ n, P4996177918116646342.a n = A215391 (n + 1)

end A215391

/-! ## A215391.P6310911435392056176

`p?[∑[A040041(n+1)]+1]`
-/

namespace A215391.P6310911435392056176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040041 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215391.P6310911435392056176

namespace A215391

/-- `p?[∑[A040041(n+1)]+1]` -/
def P6310911435392056176.Spec : Prop :=
  ∀ n, P6310911435392056176.a n = A215391 (n + 1)

end A215391

/-! ## A215391.P4285979233049330377

`p?[A175887(n+1)+1-n]`
-/

namespace A215391.P4285979233049330377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175887 (n + 1) + (1 - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215391.P4285979233049330377

namespace A215391

/-- `p?[A175887(n+1)+1-n]` -/
def P4285979233049330377.Spec : Prop :=
  ∀ n, P4285979233049330377.a n = A215391 (n + 1)

end A215391

/-! ## A215391.P15265780580203464486

`p?[11*A004526(n)+1+n]`
-/

namespace A215391.P15265780580203464486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A004526 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215391.P15265780580203464486

namespace A215391

/-- `p?[11*A004526(n)+1+n]` -/
def P15265780580203464486.Spec : Prop :=
  ∀ n, P15265780580203464486.a n = A215391 (n + 1)

end A215391

/-! ## A215391.P16201144820441304425

`p?[11*A123108(n)+n+1]`
-/

namespace A215391.P16201144820441304425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * A123108 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215391.P16201144820441304425

namespace A215391

/-- `p?[11*A123108(n)+n+1]` -/
def P16201144820441304425.Spec : Prop :=
  ∀ n, P16201144820441304425.a n = A215391 (n + 1)

end A215391

/-! ## A215391.P7072013027934632695

`p?[11*(n-A008619(n))+n]`
-/

namespace A215391.P7072013027934632695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  11 * ((n : ℤ) - A008619 n) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215391.P7072013027934632695

namespace A215391

/-- `p?[11*(n-A008619(n))+n]` -/
def P7072013027934632695.Spec : Prop :=
  ∀ n, P7072013027934632695.a n = A215391 (n + 1)

end A215391

/-! ## A215391.P6317116014643508949

`∩[A000040(n+1), A112653(n)+1]`
-/

namespace A215391.P6317116014643508949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215391.P6317116014643508949

namespace A215391

/-- `∩[A000040(n+1), A112653(n)+1]` -/
def P6317116014643508949.Spec : Prop :=
  ∀ n, (P6317116014643508949.a n : ℤ) = A215391 (n + 1)

end A215391

/-! ## A215391.P2870048459362917342

`filter[A215135(n+1), A144610(#)]`
-/

namespace A215391.P2870048459362917342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144610 (f1 j).toNat = 1) n)

end

end A215391.P2870048459362917342

namespace A215391

/-- `filter[A215135(n+1), A144610(#)]` -/
def P2870048459362917342.Spec : Prop :=
  ∀ n, P2870048459362917342.a n = A215391 (n + 1)

end A215391

/-!
# A215392: Primes congruent to {1, 2} mod 17.

The programs for A215392, the canonical program `A215392.P5390637372741882320` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215392 has offset 1).

The definition of A215392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215392.P5390637372741882320

`∪[A129484(n+1), A140544(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215392

/-- `∪[A129484(n+1), A140544(n+1)]` -/
def P5390637372741882320.Spec : Prop :=
  ∀ n, (P5390637372741882320.a n : ℤ) = A215392 (n + 1)

theorem P5390637372741882320.correct : P5390637372741882320.Spec := by
  intro n
  simp only [A215392, Nat.add_sub_cancel]

end A215392

/-! ## A215392.P12629457473394373677

`p?[a(n-2)+17]` with `a(0)=1, a(1)=2`
-/

namespace A215392.P12629457473394373677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215392.P12629457473394373677

namespace A215392

/-- `p?[a(n-2)+17]` -/
def P12629457473394373677.Spec : Prop :=
  ∀ n, (P12629457473394373677.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P716532577035360494

`∩[A215153(n+1), A215273(n+1)]`
-/

namespace A215392.P716532577035360494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P716532577035360494

namespace A215392

/-- `∩[A215153(n+1), A215273(n+1)]` -/
def P716532577035360494.Spec : Prop :=
  ∀ n, (P716532577035360494.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P14502426542724883247

`∩[A215273(n+1), A215304(n+1)]`
-/

namespace A215392.P14502426542724883247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P14502426542724883247

namespace A215392

/-- `∩[A215273(n+1), A215304(n+1)]` -/
def P14502426542724883247.Spec : Prop :=
  ∀ n, (P14502426542724883247.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P11391644003754436177

`∩[A215273(n+1), A215384(n+1)]`
-/

namespace A215392.P11391644003754436177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P11391644003754436177

namespace A215392

/-- `∩[A215273(n+1), A215384(n+1)]` -/
def P11391644003754436177.Spec : Prop :=
  ∀ n, (P11391644003754436177.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P9679313850593195005

`∩[A215153(n+1), A215425(n+1)]`
-/

namespace A215392.P9679313850593195005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215425 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P9679313850593195005

namespace A215392

/-- `∩[A215153(n+1), A215425(n+1)]` -/
def P9679313850593195005.Spec : Prop :=
  ∀ n, (P9679313850593195005.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P12831944395545090337

`∩[A215273(n+1), A215324(n+1)]`
-/

namespace A215392.P12831944395545090337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P12831944395545090337

namespace A215392

/-- `∩[A215273(n+1), A215324(n+1)]` -/
def P12831944395545090337.Spec : Prop :=
  ∀ n, (P12831944395545090337.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P15047880379245690596

`∩[A038889(n+1), A215153(n+1)]`
-/

namespace A215392.P15047880379245690596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P15047880379245690596

namespace A215392

/-- `∩[A038889(n+1), A215153(n+1)]` -/
def P15047880379245690596.Spec : Prop :=
  ∀ n, (P15047880379245690596.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P14983703572618552184

`∩[A038889(n+1), A215308(n+1)]`
-/

namespace A215392.P14983703572618552184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P14983703572618552184

namespace A215392

/-- `∩[A038889(n+1), A215308(n+1)]` -/
def P14983703572618552184.Spec : Prop :=
  ∀ n, (P14983703572618552184.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P15984474304417855528

`∩[A038889(n+1), A215320(n+1)]`
-/

namespace A215392.P15984474304417855528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215320 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P15984474304417855528

namespace A215392

/-- `∩[A038889(n+1), A215320(n+1)]` -/
def P15984474304417855528.Spec : Prop :=
  ∀ n, (P15984474304417855528.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P3010925037876756163

`∩[A038889(n+1), A215384(n+1)]`
-/

namespace A215392.P3010925037876756163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038889 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P3010925037876756163

namespace A215392

/-- `∩[A038889(n+1), A215384(n+1)]` -/
def P3010925037876756163.Spec : Prop :=
  ∀ n, (P3010925037876756163.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P3035397597402916934

`∩[A215153(n+1), A296938(n+1)]`
-/

namespace A215392.P3035397597402916934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215153 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P3035397597402916934

namespace A215392

/-- `∩[A215153(n+1), A296938(n+1)]` -/
def P3035397597402916934.Spec : Prop :=
  ∀ n, (P3035397597402916934.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P11042331183743404285

`∩[A215273(n+1), A296938(n+1)]`
-/

namespace A215392.P11042331183743404285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P11042331183743404285

namespace A215392

/-- `∩[A215273(n+1), A296938(n+1)]` -/
def P11042331183743404285.Spec : Prop :=
  ∀ n, (P11042331183743404285.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P10200279987555271315

`∩[A215308(n+1), A296938(n+1)]`
-/

namespace A215392.P10200279987555271315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P10200279987555271315

namespace A215392

/-- `∩[A215308(n+1), A296938(n+1)]` -/
def P10200279987555271315.Spec : Prop :=
  ∀ n, (P10200279987555271315.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P15477668414212301961

`∩[A215320(n+1), A296938(n+1)]`
-/

namespace A215392.P15477668414212301961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P15477668414212301961

namespace A215392

/-- `∩[A215320(n+1), A296938(n+1)]` -/
def P15477668414212301961.Spec : Prop :=
  ∀ n, (P15477668414212301961.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P5892169034766193166

`∩[A215380(n+1), A296938(n+1)]`
-/

namespace A215392.P5892169034766193166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P5892169034766193166

namespace A215392

/-- `∩[A215380(n+1), A296938(n+1)]` -/
def P5892169034766193166.Spec : Prop :=
  ∀ n, (P5892169034766193166.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P15913625989007103990

`∩[A215384(n+1), A296938(n+1)]`
-/

namespace A215392.P15913625989007103990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215392.P15913625989007103990

namespace A215392

/-- `∩[A215384(n+1), A296938(n+1)]` -/
def P15913625989007103990.Spec : Prop :=
  ∀ n, (P15913625989007103990.a n : ℤ) = A215392 (n + 1)

end A215392

/-! ## A215392.P5732685157184999258

`p?[A063118(n+1)+2*n]`
-/

namespace A215392.P5732685157184999258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063118 (n + 1) + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215392.P5732685157184999258

namespace A215392

/-- `p?[A063118(n+1)+2*n]` -/
def P5732685157184999258.Spec : Prop :=
  ∀ n, P5732685157184999258.a n = A215392 (n + 1)

end A215392

/-! ## A215392.P1650851086444206552

`p?[∑[A040001(n)²²]]`
-/

namespace A215392.P1650851086444206552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040001 n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215392.P1650851086444206552

namespace A215392

/-- `p?[∑[A040001(n)²²]]` -/
def P1650851086444206552.Spec : Prop :=
  ∀ n, P1650851086444206552.a n = A215392 (n + 1)

end A215392

/-! ## A215392.P12039059958377406176

`p?[A151978(n+1)+1]`
-/

namespace A215392.P12039059958377406176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151978 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215392.P12039059958377406176

namespace A215392

/-- `p?[A151978(n+1)+1]` -/
def P12039059958377406176.Spec : Prop :=
  ∀ n, P12039059958377406176.a n = A215392 (n + 1)

end A215392

/-!
# A215393: Primes congruent to {1, 2} mod 19.

The programs for A215393, the canonical program `A215393.P13301529686558923603` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215393 has offset 1).

The definition of A215393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215393.P13301529686558923603

`∪[A141868(n+1), A141869(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215393

/-- `∪[A141868(n+1), A141869(n+1)]` -/
def P13301529686558923603.Spec : Prop :=
  ∀ n, (P13301529686558923603.a n : ℤ) = A215393 (n + 1)

theorem P13301529686558923603.correct : P13301529686558923603.Spec := by
  intro n
  simp only [A215393, Nat.add_sub_cancel]

end A215393

/-! ## A215393.P4073925637678660760

`p?[a(n-2)+19]` with `a(0)=1, a(1)=2`
-/

namespace A215393.P4073925637678660760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 2) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215393.P4073925637678660760

namespace A215393

/-- `p?[a(n-2)+19]` -/
def P4073925637678660760.Spec : Prop :=
  ∀ n, (P4073925637678660760.a n : ℤ) = A215393 (n + 1)

end A215393

/-! ## A215393.P15727856996890041939

`p?[17*floor(n/2)+n+1]`
-/

namespace A215393.P15727856996890041939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  17 * ⌊(n : ℚ) / 2⌋ + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215393.P15727856996890041939

namespace A215393

/-- `p?[17*floor(n/2)+n+1]` -/
def P15727856996890041939.Spec : Prop :=
  ∀ n, P15727856996890041939.a n = A215393 (n + 1)

end A215393

/-! ## A215393.P3354823833476297745

`∩[A215154(n+1), A215274(n+1)]`
-/

namespace A215393.P3354823833476297745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215393.P3354823833476297745

namespace A215393

/-- `∩[A215154(n+1), A215274(n+1)]` -/
def P3354823833476297745.Spec : Prop :=
  ∀ n, (P3354823833476297745.a n : ℤ) = A215393 (n + 1)

end A215393

/-! ## A215393.P12294348416086706101

`∩[A215274(n+1), A215385(n+1)]`
-/

namespace A215393.P12294348416086706101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215385 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215393.P12294348416086706101

namespace A215393

/-- `∩[A215274(n+1), A215385(n+1)]` -/
def P12294348416086706101.Spec : Prop :=
  ∀ n, (P12294348416086706101.a n : ℤ) = A215393 (n + 1)

end A215393

/-! ## A215393.P8982902011510428080

`∩[A215274(n+1), A215305(n+1)]`
-/

namespace A215393.P8982902011510428080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215393.P8982902011510428080

namespace A215393

/-- `∩[A215274(n+1), A215305(n+1)]` -/
def P8982902011510428080.Spec : Prop :=
  ∀ n, (P8982902011510428080.a n : ℤ) = A215393 (n + 1)

end A215393

/-! ## A215393.P14960464248309551494

`∩[A215154(n+1), A215426(n+1)]`
-/

namespace A215393.P14960464248309551494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215426 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215393.P14960464248309551494

namespace A215393

/-- `∩[A215154(n+1), A215426(n+1)]` -/
def P14960464248309551494.Spec : Prop :=
  ∀ n, (P14960464248309551494.a n : ℤ) = A215393 (n + 1)

end A215393

/-! ## A215393.P1262960084360217908

`∩[A215274(n+1), A215325(n+1)]`
-/

namespace A215393.P1262960084360217908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215393.P1262960084360217908

namespace A215393

/-- `∩[A215274(n+1), A215325(n+1)]` -/
def P1262960084360217908.Spec : Prop :=
  ∀ n, (P1262960084360217908.a n : ℤ) = A215393 (n + 1)

end A215393

/-! ## A215393.P15025650063386614428

`A000027(p?[A151979(n+1)+1])`
-/

namespace A215393.P15025650063386614428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151979 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A215393.P15025650063386614428

namespace A215393

/-- `A000027(p?[A151979(n+1)+1])` -/
def P15025650063386614428.Spec : Prop :=
  ∀ n, P15025650063386614428.a n = A215393 (n + 1)

end A215393

/-! ## A215393.P4990986957555249560

`A060862(A005100(n+1))+p?[A151979(n+1)+1]`
-/

namespace A215393.P4990986957555249560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151979 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (A005100 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215393.P4990986957555249560

namespace A215393

/-- `A060862(A005100(n+1))+p?[A151979(n+1)+1]` -/
def P4990986957555249560.Spec : Prop :=
  ∀ n, P4990986957555249560.a n = A215393 (n + 1)

end A215393

/-! ## A215393.P16500141960223248110

`filter[A063105(3*n+1), A010051(#)]`
-/

namespace A215393.P16500141960223248110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A215393.P16500141960223248110

namespace A215393

/-- `filter[A063105(3*n+1), A010051(#)]` -/
def P16500141960223248110.Spec : Prop :=
  ∀ n, P16500141960223248110.a n = A215393 (n + 1)

end A215393

/-! ## A215393.P13759305047145432388

`filter[A063105(3*n+1), A323152(#)]`
-/

namespace A215393.P13759305047145432388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A215393.P13759305047145432388

namespace A215393

/-- `filter[A063105(3*n+1), A323152(#)]` -/
def P13759305047145432388.Spec : Prop :=
  ∀ n, P13759305047145432388.a n = A215393 (n + 1)

end A215393

/-! ## A215393.P10998027161452622630

`filter[A063105(3*n+1), A323153(#)]`
-/

namespace A215393.P10998027161452622630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A215393.P10998027161452622630

namespace A215393

/-- `filter[A063105(3*n+1), A323153(#)]` -/
def P10998027161452622630.Spec : Prop :=
  ∀ n, P10998027161452622630.a n = A215393 (n + 1)

end A215393

/-! ## A215393.P7019721366637414602

`filter[A063105(3*n+1), A340371(#)]`
-/

namespace A215393.P7019721366637414602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A215393.P7019721366637414602

namespace A215393

/-- `filter[A063105(3*n+1), A340371(#)]` -/
def P7019721366637414602.Spec : Prop :=
  ∀ n, P7019721366637414602.a n = A215393 (n + 1)

end A215393

/-! ## A215393.P15097046473204068816

`filter[A063105(3*n+1), A365716(#)]`
-/

namespace A215393.P15097046473204068816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A215393.P15097046473204068816

namespace A215393

/-- `filter[A063105(3*n+1), A365716(#)]` -/
def P15097046473204068816.Spec : Prop :=
  ∀ n, P15097046473204068816.a n = A215393 (n + 1)

end A215393

/-! ## A215393.P2200975905271237728

`filter[A063105(3*n+1), A380467(#)]`
-/

namespace A215393.P2200975905271237728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380467 (f1 j).toNat = 1) n)

end

end A215393.P2200975905271237728

namespace A215393

/-- `filter[A063105(3*n+1), A380467(#)]` -/
def P2200975905271237728.Spec : Prop :=
  ∀ n, P2200975905271237728.a n = A215393 (n + 1)

end A215393

/-! ## A215393.P4150809553973867852

`∩[A063105(n+1), A215154(n+1)]`
-/

namespace A215393.P4150809553973867852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215154 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215393.P4150809553973867852

namespace A215393

/-- `∩[A063105(n+1), A215154(n+1)]` -/
def P4150809553973867852.Spec : Prop :=
  ∀ n, (P4150809553973867852.a n : ℤ) = A215393 (n + 1)

end A215393

/-! ## A215393.P11047997945362328305

`∩[A063105(n+1), A215274(n+1)]`
-/

namespace A215393.P11047997945362328305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215274 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215393.P11047997945362328305

namespace A215393

/-- `∩[A063105(n+1), A215274(n+1)]` -/
def P11047997945362328305.Spec : Prop :=
  ∀ n, (P11047997945362328305.a n : ℤ) = A215393 (n + 1)

end A215393

/-! ## A215393.P2703003649602262481

`∩[A063105(n+1), A215305(n+1)]`
-/

namespace A215393.P2703003649602262481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215393.P2703003649602262481

namespace A215393

/-- `∩[A063105(n+1), A215305(n+1)]` -/
def P2703003649602262481.Spec : Prop :=
  ∀ n, (P2703003649602262481.a n : ℤ) = A215393 (n + 1)

end A215393

/-! ## A215393.P2079425739978436578

`∩[A063105(n+1), A215309(n+1)]`
-/

namespace A215393.P2079425739978436578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063105 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215309 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215393.P2079425739978436578

namespace A215393

/-- `∩[A063105(n+1), A215309(n+1)]` -/
def P2079425739978436578.Spec : Prop :=
  ∀ n, (P2079425739978436578.a n : ℤ) = A215393 (n + 1)

end A215393

/-!
# A215394: Number of length-n 0..n arrays connected end-around, with no sequence of L

The programs for A215394, there is no canonical definition to state claims against.
-/

/-! ## A215394.P1992822066154108371

`A215401(2*n²+1)`
-/

namespace A215394.P1992822066154108371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (2 * n ^ 2 + 1)

end

end A215394.P1992822066154108371

/-! ## A215394.P10971542468161513812

`A215401(A058331(n))%(n+2)!`
-/

namespace A215394.P10971542468161513812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215401 (A058331 n).toNat) (Nat.factorial (n + 2) : ℤ)

end

end A215394.P10971542468161513812

/-! ## A215394.P2422284988732349562

`A215401(A058331(n))^A178489(n)`
-/

namespace A215394.P2422284988732349562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215401 (A058331 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A215394.P2422284988732349562

/-! ## A215394.P11376894713730127958

`A215401(A058331(n))%Δ[A021204(n)]`
-/

namespace A215394.P11376894713730127958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215401 (A058331 n).toNat) (f1 (n + 1) - f1 n)

end

end A215394.P11376894713730127958

/-! ## A215394.P7074665330227599645

`A178489(2*(n+1))*A215401(A058331(n))`
-/

namespace A215394.P7074665330227599645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178489 (2 * (n + 1)) * A215401 (A058331 n).toNat

end

end A215394.P7074665330227599645

/-!
# A215395: Number of length-n 0..2 arrays connected end-around, with no sequence of L

The programs for A215395, there is no canonical definition to state claims against.
-/

/-! ## A215395.P15162164076375264055

`ceil(A066297(n+1)/6)`
-/

namespace A215395.P15162164076375264055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A066297 (n + 1) : ℚ) / 6⌉

end

end A215395.P15162164076375264055

/-! ## A215395.P694851101098233822

`A350034(A066297(n+1))`
-/

namespace A215395.P694851101098233822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350034 (A066297 (n + 1)).toNat

end

end A215395.P694851101098233822

/-! ## A215395.P10301913740016107714

`∑{d}[round(A066297(n+1)/6), A000010(#)]`
-/

namespace A215395.P10301913740016107714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A066297 (n + 1) : ℚ) / 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A215395.P10301913740016107714

/-! ## A215395.P12873189002890520429

`round(A066297(n+1)/6)%A000041(n+2)`
-/

namespace A215395.P12873189002890520429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A066297 (n + 1) : ℚ) / 6)) (A000041 (n + 2))

end

end A215395.P12873189002890520429

/-! ## A215395.P1759881739099307249

`A007318(C(2, n))*round(A066297(n+1)/6)`
-/

namespace A215395.P1759881739099307249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * SequenceMachineLib.roundAway ((A066297 (n + 1) : ℚ) / 6)

end

end A215395.P1759881739099307249

/-!
# A215396: Number of length-n 0..3 arrays connected end-around, with no sequence of L

The programs for A215396, there is no canonical definition to state claims against.
-/

/-! ## A215396.P659802196119591935

`A215401(∑[n+3]+1)`
-/

namespace A215396.P659802196119591935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A215396.P659802196119591935

/-! ## A215396.P3978445815626479374

`ceil(A215223(n+1)/24)`
-/

namespace A215396.P3978445815626479374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A215223 (n + 1) : ℚ) / 24⌉

end

end A215396.P3978445815626479374

/-! ## A215396.P5521822921097415758

`A215401(Δ[A008778(n)])+char[21]`
-/

namespace A215396.P5521822921097415758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (f1 (n + 1) - f1 n).toNat + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A215396.P5521822921097415758

/-! ## A215396.P323669070722291144

`A215401(Δ[A008778(n)])%A000108(n+2)`
-/

namespace A215396.P323669070722291144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215401 (f1 (n + 1) - f1 n).toNat) (A000108 (n + 2))

end

end A215396.P323669070722291144

/-! ## A215396.P855641615280545437

`A014963(6*(n+1))*A215401(Δ[A008778(n)])`
-/

namespace A215396.P855641615280545437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A215401 (f1 (n + 1) - f1 n).toNat

end

end A215396.P855641615280545437

/-!
# A215397: Number of length n 0..4 arrays connected end-around, with no sequence of L

The programs for A215397, there is no canonical definition to state claims against.
-/

/-! ## A215397.P5890238440761282958

`A215401(∑[n+4]+3)`
-/

namespace A215397.P5890238440761282958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A215397.P5890238440761282958

/-! ## A215397.P3239160334248417975

`or(char[1], A215401(A055998(n+2)))`
-/

namespace A215397.P3239160334248417975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A215401 (A055998 (n + 2)).toNat)

end

end A215397.P3239160334248417975

/-! ## A215397.P1493505808058684788

`A215401(A055998(n+2))%A000108(n+2)`
-/

namespace A215397.P1493505808058684788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215401 (A055998 (n + 2)).toNat) (A000108 (n + 2))

end

end A215397.P1493505808058684788

/-! ## A215397.P15207462087881757314

`A007318(C(n, 2))*A215401(A055998(n+2))`
-/

namespace A215397.P15207462087881757314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A215401 (A055998 (n + 2)).toNat

end

end A215397.P15207462087881757314

/-! ## A215397.P12694220615949032099

`A215401(A055998(n+2))+and(16, A007318(n))`
-/

namespace A215397.P12694220615949032099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (A055998 (n + 2)).toNat + Int.land 16 (A007318 n)

end

end A215397.P12694220615949032099

/-!
# A215398: Number of length n 0..5 arrays connected end-around, with no sequence of L

The programs for A215398, there is no canonical definition to state claims against.
-/

/-! ## A215398.P9390638250611234705

`A215401(∑[n+5]+6)`
-/

namespace A215398.P9390638250611234705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A215398.P9390638250611234705

/-! ## A215398.P8746628513650977723

`A215401(A000124(n+5)-5)+char[20]`
-/

namespace A215398.P8746628513650977723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (A000124 (n + 5) - 5).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A215398.P8746628513650977723

/-! ## A215398.P1410238772160241410

`A215401(A046691(n+3))+A000007(n+1)`
-/

namespace A215398.P1410238772160241410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (A046691 (n + 3)).toNat + A000007 (n + 1)

end

end A215398.P1410238772160241410

/-! ## A215398.P13090476707433120035

`A215401(A000124(n+5)-5)%A000108(n+3)`
-/

namespace A215398.P13090476707433120035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215401 (A000124 (n + 5) - 5).toNat) (A000108 (n + 3))

end

end A215398.P13090476707433120035

/-! ## A215398.P6241501950714752332

`A007318(C(2, n))*A215401(A000124(n+5)-5)`
-/

namespace A215398.P6241501950714752332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A215401 (A000124 (n + 5) - 5).toNat

end

end A215398.P6241501950714752332

/-!
# A215399: Number of length-n 0..6 arrays connected end-around, with no sequence of L

The programs for A215399, there is no canonical definition to state claims against.
-/

/-! ## A215399.P18302847205276690088

`A215401(A052905(n+3))`
-/

namespace A215399.P18302847205276690088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (A052905 (n + 3)).toNat

end

end A215399.P18302847205276690088

/-! ## A215399.P5873518229558699540

`A215401(eq[3, A219347(n)])`
-/

namespace A215399.P5873518229558699540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215399.P5873518229558699540

/-! ## A215399.P4332733479783420888

`A215401(eq[5, A152157(n)])`
-/

namespace A215399.P4332733479783420888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215399.P4332733479783420888

/-! ## A215399.P18082025952938364446

`A215401(eq[5, A193592(n)])`
-/

namespace A215399.P18082025952938364446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215399.P18082025952938364446

/-! ## A215399.P6901480659924498268

`A215401(A055999(n+3)+1)`
-/

namespace A215399.P6901480659924498268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215401 (A055999 (n + 3) + 1).toNat

end

end A215399.P6901480659924498268

