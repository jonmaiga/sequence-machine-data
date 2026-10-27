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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
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
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
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
# A091300: Nonprimes of the form 6k + 1.

The programs for A091300, the canonical program `A091300.P2475382498501044560` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091300 has offset 1).

The definition of A091300 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091300.P10049726370742442322

`record[A171435(6*n+1)]`
-/

namespace A091300.P10049726370742442322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171435 (6 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091300.P10049726370742442322

namespace A091300

/-- `record[A171435(6*n+1)]` -/
def P10049726370742442322.Spec : Prop :=
  ∀ n, P10049726370742442322.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P2475382498501044560

`6*A046954(n+1)+1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A091300

/-- `6*A046954(n+1)+1` -/
def P2475382498501044560.Spec : Prop :=
  ∀ n, P2475382498501044560.a n = A091300 (n + 1)

theorem P2475382498501044560.correct : P2475382498501044560.Spec := by
  intro n
  simp only [A091300, Nat.add_sub_cancel]

end A091300

/-! ## A091300.P13330989092826189588

`A016921(A046954(n+1))`
-/

namespace A091300.P13330989092826189588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A046954 (n + 1)).toNat

end

end A091300.P13330989092826189588

namespace A091300

/-- `A016921(A046954(n+1))` -/
def P13330989092826189588.Spec : Prop :=
  ∀ n, P13330989092826189588.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P2927847146702631052

`filter[A016921(n), A005171(#)]`
-/

namespace A091300.P2927847146702631052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A091300.P2927847146702631052

namespace A091300

/-- `filter[A016921(n), A005171(#)]` -/
def P2927847146702631052.Spec : Prop :=
  ∀ n, P2927847146702631052.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P17660889219513879640

`filter[A016921(n), A292438(#)]`
-/

namespace A091300.P17660889219513879640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A091300.P17660889219513879640

namespace A091300

/-- `filter[A016921(n), A292438(#)]` -/
def P17660889219513879640.Spec : Prop :=
  ∀ n, P17660889219513879640.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P9507550061467887662

`filter[A308196(n), A005171(#)]`
-/

namespace A091300.P9507550061467887662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A091300.P9507550061467887662

namespace A091300

/-- `filter[A308196(n), A005171(#)]` -/
def P9507550061467887662.Spec : Prop :=
  ∀ n, P9507550061467887662.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P9667491114206732529

`filter[A016921(n), A373977(#)]`
-/

namespace A091300.P9667491114206732529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A091300.P9667491114206732529

namespace A091300

/-- `filter[A016921(n), A373977(#)]` -/
def P9667491114206732529.Spec : Prop :=
  ∀ n, P9667491114206732529.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P4239781290618717365

`filter[A308196(n), A292438(#)]`
-/

namespace A091300.P4239781290618717365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A091300.P4239781290618717365

namespace A091300

/-- `filter[A308196(n), A292438(#)]` -/
def P4239781290618717365.Spec : Prop :=
  ∀ n, P4239781290618717365.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P13282024235004908690

`filter[A308196(n), A373977(#)]`
-/

namespace A091300.P13282024235004908690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A091300.P13282024235004908690

namespace A091300

/-- `filter[A308196(n), A373977(#)]` -/
def P13282024235004908690.Spec : Prop :=
  ∀ n, P13282024235004908690.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P8253319081847386579

`A016921(comp[A024899(n+1)])`
-/

namespace A091300.P8253319081847386579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024899 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A091300.P8253319081847386579

namespace A091300

/-- `A016921(comp[A024899(n+1)])` -/
def P8253319081847386579.Spec : Prop :=
  ∀ n, P8253319081847386579.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P7130019186931898204

`filter[A100764(n+1), A005171(#)]`
-/

namespace A091300.P7130019186931898204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A091300.P7130019186931898204

namespace A091300

/-- `filter[A100764(n+1), A005171(#)]` -/
def P7130019186931898204.Spec : Prop :=
  ∀ n, P7130019186931898204.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P17132697739187749127

`filter[A100764(n+1), A292438(#)]`
-/

namespace A091300.P17132697739187749127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A091300.P17132697739187749127

namespace A091300

/-- `filter[A100764(n+1), A292438(#)]` -/
def P17132697739187749127.Spec : Prop :=
  ∀ n, P17132697739187749127.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P6471956588148272550

`filter[A100764(n+1), A373977(#)]`
-/

namespace A091300.P6471956588148272550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100764 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A091300.P6471956588148272550

namespace A091300

/-- `filter[A100764(n+1), A373977(#)]` -/
def P6471956588148272550.Spec : Prop :=
  ∀ n, P6471956588148272550.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P10157054895638677291

`filter[A080435(n+1), A373977(#)]`
-/

namespace A091300.P10157054895638677291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080435 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A091300.P10157054895638677291

namespace A091300

/-- `filter[A080435(n+1), A373977(#)]` -/
def P10157054895638677291.Spec : Prop :=
  ∀ n, P10157054895638677291.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P15894314542076139958

`filter[A277567(n+1), A373977(#)]`
-/

namespace A091300.P15894314542076139958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A091300.P15894314542076139958

namespace A091300

/-- `filter[A277567(n+1), A373977(#)]` -/
def P15894314542076139958.Spec : Prop :=
  ∀ n, P15894314542076139958.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P18042612788528094294

`filter[A371094(2*n), A005171(#)]`
-/

namespace A091300.P18042612788528094294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371094 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A091300.P18042612788528094294

namespace A091300

/-- `filter[A371094(2*n), A005171(#)]` -/
def P18042612788528094294.Spec : Prop :=
  ∀ n, P18042612788528094294.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P55791273647808471

`filter[A056530(n+1), A373977(#)]`
-/

namespace A091300.P55791273647808471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373977 (f1 j).toNat = 1) n)

end

end A091300.P55791273647808471

namespace A091300

/-- `filter[A056530(n+1), A373977(#)]` -/
def P55791273647808471.Spec : Prop :=
  ∀ n, P55791273647808471.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P43967764632966069

`∩[2*n+1, A172182(n+1)]`
-/

namespace A091300.P43967764632966069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172182 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091300.P43967764632966069

namespace A091300

/-- `∩[2*n+1, A172182(n+1)]` -/
def P43967764632966069.Spec : Prop :=
  ∀ n, (P43967764632966069.a n : ℤ) = A091300 (n + 1)

end A091300

/-! ## A091300.P6228735375332409148

`filter[A172182(n+1), A093719(#)]`
-/

namespace A091300.P6228735375332409148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093719 (f1 j).toNat = 1) n)

end

end A091300.P6228735375332409148

namespace A091300

/-- `filter[A172182(n+1), A093719(#)]` -/
def P6228735375332409148.Spec : Prop :=
  ∀ n, P6228735375332409148.a n = A091300 (n + 1)

end A091300

/-! ## A091300.P11836138868441574780

`filter[A172182(n+1), A320106(#)]`
-/

namespace A091300.P11836138868441574780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172182 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A320106 (f1 j).toNat = 1) n)

end

end A091300.P11836138868441574780

namespace A091300

/-- `filter[A172182(n+1), A320106(#)]` -/
def P11836138868441574780.Spec : Prop :=
  ∀ n, P11836138868441574780.a n = A091300 (n + 1)

end A091300

/-!
# A091301: Primes of the form p*q + p - q, where p and q are distinct primes.

The programs for A091301, there is no canonical definition to state claims against.
-/

/-! ## A091301.P455175645927029118

`p?[eq[1, A151692(n+3)]]`
-/

namespace A091301.P455175645927029118
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151692 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A091301.P455175645927029118

/-! ## A091301.P13202340409409758997

`p?[(n-3)*A151692(n)]`
-/

namespace A091301.P13202340409409758997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 3) * A151692 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091301.P13202340409409758997

/-! ## A091301.P4658672397984192794

`A000188(record[A277312(n+3)])`
-/

namespace A091301.P4658672397984192794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277312 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091301.P4658672397984192794

/-! ## A091301.P15040269552944357127

`A000196(record[A277312(n+3)])`
-/

namespace A091301.P15040269552944357127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277312 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A091301.P15040269552944357127

/-! ## A091301.P14231890734197985399

`filter[A109997(n+3), A368281(#)]`
-/

namespace A091301.P14231890734197985399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109997 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A368281 (f1 j).toNat = 1) n)

end

end A091301.P14231890734197985399

/-!
# A091302: Number of equivalence classes of directed Hamiltonian cycles (or Gray codes) in the binary n-cube with one node marked.

The programs for A091302, there is no canonical definition to state claims against.
-/

/-! ## A091302.P3547399336640632814

`A066037(n+1)/A000203(n!)`
-/

namespace A091302.P3547399336640632814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A066037 (n + 1) : ℚ) / (A000203 (Nat.factorial n) : ℚ)

end

end A091302.P3547399336640632814

/-!
# A091303: Third diagonal of A008970 (after A000111 and A000708).

The programs for A091303, there is no canonical definition to state claims against.
-/

/-! ## A091303.P2467567546099390395

`A001759(n+4)/2`
-/

namespace A091303.P2467567546099390395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001759 (n + 4) : ℚ) / 2

end

end A091303.P2467567546099390395

/-! ## A091303.P723969469729038580

`A008970(∑[n+3]+2)`
-/

namespace A091303.P723969469729038580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A091303.P723969469729038580

/-! ## A091303.P11358213282778005330

`A059427(∑[n+3]+2)/2`
-/

namespace A091303.P11358213282778005330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059427 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 2

end

end A091303.P11358213282778005330

/-! ## A091303.P12854221342416255970

`record[A008970(A198455(n+1))]`
-/

namespace A091303.P12854221342416255970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008970 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091303.P12854221342416255970

/-! ## A091303.P2223994658174995836

`(A226436(n+4)-A226435(n+4))/2`
-/

namespace A091303.P2223994658174995836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226436 (n + 4) - A226435 (n + 4) : ℚ) / 2

end

end A091303.P2223994658174995836

/-!
# A091304: a(n) = Omega(2n-1) (number of prime factors of the n-th odd number, counted with multiplicity).

The programs for A091304, the canonical program `A091304.P2772183700605411101` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091304 has offset 1).

The definition of A091304 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001222(2*n+1)` (program `A091304.P2772183700605411101`, by `A091304.P2772183700605411101.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091304.P2772183700605411101

`A001222(2*n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A091304

/-- `A001222(2*n+1)` -/
def P2772183700605411101.Spec : Prop :=
  ∀ n, P2772183700605411101.a n = A091304 (n + 1)

theorem P2772183700605411101.correct : P2772183700605411101.Spec := by
  intro n
  simp only [A091304, Nat.add_sub_cancel]

end A091304

/-! ## A091304.P4008332963977275323

`A001222(2*(n+1)-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A091304.P4008332963977275323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * (n + 1) - 1)

end

end A091304.P4008332963977275323

namespace A091304

/-- `A001222(2*(n+1)-1)` -/
def P4008332963977275323.Spec : Prop :=
  ∀ n, P4008332963977275323.a n = A091304 (n + 1)

end A091304

/-! ## A091304.P7469349756423617019

`A000120(A244153(n+1))`
-/

namespace A091304.P7469349756423617019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A244153 (n + 1)).toNat

end

end A091304.P7469349756423617019

namespace A091304

/-- `A000120(A244153(n+1))` -/
def P7469349756423617019.Spec : Prop :=
  ∀ n, P7469349756423617019.a n = A091304 (n + 1)

end A091304

/-! ## A091304.P16798689435427905211

`∑{e}[Δ[n²], #]`
-/

namespace A091304.P16798689435427905211
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A091304.P16798689435427905211

namespace A091304

/-- `∑{e}[Δ[n²], #]` -/
def P16798689435427905211.Spec : Prop :=
  ∀ n, (P16798689435427905211.a n : ℤ) = A091304 (n + 1)

end A091304

/-! ## A091304.P1579451597789621361

`∑{e}[4*n+2, #]-1`
-/

namespace A091304.P1579451597789621361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) - 1

end

end A091304.P1579451597789621361

namespace A091304

/-- `∑{e}[4*n+2, #]-1` -/
def P1579451597789621361.Spec : Prop :=
  ∀ n, P1579451597789621361.a n = A091304 (n + 1)

end A091304

/-! ## A091304.P5414065224035769661

`log2(∏{e}[2*n+1, 2^#])`
-/

namespace A091304.P5414065224035769661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p : ℕ) : ℝ)

end

end A091304.P5414065224035769661

namespace A091304

/-- `log2(∏{e}[2*n+1, 2^#])` -/
def P5414065224035769661.Spec : Prop :=
  ∀ n, P5414065224035769661.a n = (A091304 (n + 1) : ℝ)

end A091304

/-! ## A091304.P4096411240137074543

`dr(10*∑{e}[2*n+1, #])`
-/

namespace A091304.P4096411240137074543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((10 * (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℕ) : ℤ)

end

end A091304.P4096411240137074543

namespace A091304

/-- `dr(10*∑{e}[2*n+1, #])` -/
def P4096411240137074543.Spec : Prop :=
  ∀ n, (P4096411240137074543.a n : ℤ) = A091304 (n + 1)

end A091304

/-! ## A091304.P11423065896662744397

`or(char[1], ∑{e}[2*n+1, #])`
-/

namespace A091304.P11423065896662744397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (if ∃ j, f1 j = n then 1 else 0) (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A091304.P11423065896662744397

namespace A091304

/-- `or(char[1], ∑{e}[2*n+1, #])` -/
def P11423065896662744397.Spec : Prop :=
  ∀ n, (P11423065896662744397.a n : ℤ) = A091304 (n + 1)

end A091304

/-! ## A091304.P2021405823660101457

`abs(log(∏{e}[2*n+1, exp(#)]))`
-/

namespace A091304.P2021405823660101457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  |Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ))|

end

end A091304.P2021405823660101457

namespace A091304

/-- `abs(log(∏{e}[2*n+1, exp(#)]))` -/
def P2021405823660101457.Spec : Prop :=
  ∀ n, P2021405823660101457.a n = (A091304 (n + 1) : ℝ)

end A091304

/-! ## A091304.P2883480166866110086

`dr(log(∏{e}[2*n+1, exp(#)]))`
-/

namespace A091304.P2883480166866110086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway (Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ))))

end

end A091304.P2883480166866110086

namespace A091304

/-- `dr(log(∏{e}[2*n+1, exp(#)]))` -/
def P2883480166866110086.Spec : Prop :=
  ∀ n, (P2883480166866110086.a n : ℤ) = A091304 (n + 1)

end A091304

/-! ## A091304.P16371824192663665601

`floor(log(∏{e}[2*n+1, exp(#)]))`
-/

namespace A091304.P16371824192663665601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ))⌋

end

end A091304.P16371824192663665601

namespace A091304

/-- `floor(log(∏{e}[2*n+1, exp(#)]))` -/
def P16371824192663665601.Spec : Prop :=
  ∀ n, P16371824192663665601.a n = A091304 (n + 1)

end A091304

/-! ## A091304.P1517962900310488044

`ceil(log(∏{e}[2*n+1, exp(#)]))`
-/

namespace A091304.P1517962900310488044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ))⌉

end

end A091304.P1517962900310488044

namespace A091304

/-- `ceil(log(∏{e}[2*n+1, exp(#)]))` -/
def P1517962900310488044.Spec : Prop :=
  ∀ n, P1517962900310488044.a n = A091304 (n + 1)

end A091304

/-! ## A091304.P8438630233707229003

`round(log(∏{e}[2*n+1, exp(#)]))`
-/

namespace A091304.P8438630233707229003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ)))

end

end A091304.P8438630233707229003

namespace A091304

/-- `round(log(∏{e}[2*n+1, exp(#)]))` -/
def P8438630233707229003.Spec : Prop :=
  ∀ n, P8438630233707229003.a n = A091304 (n + 1)

end A091304

/-! ## A091304.P560671683904414776

`2*∑{e}[2*n+1, #/2]`
-/

namespace A091304.P560671683904414776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℚ) / 2)

end

end A091304.P560671683904414776

namespace A091304

/-- `2*∑{e}[2*n+1, #/2]` -/
def P560671683904414776.Spec : Prop :=
  ∀ n, P560671683904414776.a n = (A091304 (n + 1) : ℚ)

end A091304

/-! ## A091304.P2827214866881563388

`val(∏{e}[2*n+1, 2^#], 2)`
-/

namespace A091304.P2827214866881563388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), 2 ^ Nat.factorization (f1 n) p) 2

end

end A091304.P2827214866881563388

namespace A091304

/-- `val(∏{e}[2*n+1, 2^#], 2)` -/
def P2827214866881563388.Spec : Prop :=
  ∀ n, (P2827214866881563388.a n : ℤ) = A091304 (n + 1)

end A091304

/-! ## A091304.P3550208089607208400

`∑{e}[2*n+1, #]%(n+1)`
-/

namespace A091304.P3550208089607208400
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) % (n + 1)

end

end A091304.P3550208089607208400

namespace A091304

/-- `∑{e}[2*n+1, #]%(n+1)` -/
def P3550208089607208400.Spec : Prop :=
  ∀ n, (P3550208089607208400.a n : ℤ) = A091304 (n + 1)

end A091304

/-! ## A091304.P15454929941922813929

`∑{p}[2*n+1, val(2*n+1, #)]`
-/

namespace A091304.P15454929941922813929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (2 * n + 1) p

end

end A091304.P15454929941922813929

namespace A091304

/-- `∑{p}[2*n+1, val(2*n+1, #)]` -/
def P15454929941922813929.Spec : Prop :=
  ∀ n, (P15454929941922813929.a n : ℤ) = A091304 (n + 1)

end A091304

/-!
# A091305: Primes of the form p*q - p - q, where p and q are primes.

The programs for A091305, there is no canonical definition to state claims against.
-/

/-! ## A091305.P12325983514210479267

`p?[lt[0, A157187(n)]]`
-/

namespace A091305.P12325983514210479267
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A091305.P12325983514210479267

/-! ## A091305.P17962231217992861844

`lt[(1-A003415(n))², A157187(n)]`
-/

namespace A091305.P17962231217992861844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A003415 n) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091305.P17962231217992861844

/-! ## A091305.P4447013903255381026

`lt[A072480(n)², n*A157187(n)]`
-/

namespace A091305.P4447013903255381026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A157187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091305.P4447013903255381026

/-! ## A091305.P11830979933331574192

`lt[A072480(n+1), A157187(n+1)]+1`
-/

namespace A091305.P11830979933331574192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091305.P11830979933331574192

/-! ## A091305.P7314896895407113361

`lt[A072480(A028310(n)), A157187(n)]`
-/

namespace A091305.P7314896895407113361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091305.P7314896895407113361

/-! ## A091305.P14116237383188120680

`lt[(A053989(n+1)-1)*A027802(n+2), A157187(n)]`
-/

namespace A091305.P14116237383188120680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A053989 (n + 1) - 1) * A027802 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091305.P14116237383188120680

/-! ## A091305.P4477425187510001236

`lt[A147787(A003415(n)), A157187(n)]`
-/

namespace A091305.P4477425187510001236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147787 (A003415 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157187 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091305.P4477425187510001236

/-!
# A091306: Sum of squares of unitary, squarefree divisors of n, including 1.

The programs for A091306, the canonical program `A091306.P16197052664333274561` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091306 has offset 1).

The definition of A091306 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091306.P16197052664333274561

`∑{d}[∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #], #²]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091306

/-- `∑{d}[∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #], #²]` -/
def P16197052664333274561.Spec : Prop :=
  ∀ n, (P16197052664333274561.a n : ℤ) = A091306 (n + 1)

theorem P16197052664333274561.correct : P16197052664333274561.Spec := by
  intro n
  simp only [A091306, Nat.add_sub_cancel]

end A091306

/-! ## A091306.P767505267366453174

`∑{d}[A055231(n+1), #²]`
-/

namespace A091306.P767505267366453174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ 2

end

end A091306.P767505267366453174

namespace A091306

/-- `∑{d}[A055231(n+1), #²]` -/
def P767505267366453174.Spec : Prop :=
  ∀ n, (P767505267366453174.a n : ℤ) = A091306 (n + 1)

end A091306

/-! ## A091306.P16870082575489784906

`∑{d}[(n+1)/A057521(n+1), #²]`
-/

namespace A091306.P16870082575489784906
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A057521 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d ^ 2

end

end A091306.P16870082575489784906

namespace A091306

/-- `∑{d}[(n+1)/A057521(n+1), #²]` -/
def P16870082575489784906.Spec : Prop :=
  ∀ n, (P16870082575489784906.a n : ℤ) = A091306 (n + 1)

end A091306

/-! ## A091306.P4565278951580922156

`A001157(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])`
-/

namespace A091306.P4565278951580922156
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f3 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f2 n)).natAbs, p : ℕ) : ℚ))).toNat

end

end A091306.P4565278951580922156

namespace A091306

/-- `A001157(∏{p}[n+1, #]/∏{p}[(n+1)/∏{p}[n+1, #], #])` -/
def P4565278951580922156.Spec : Prop :=
  ∀ n, P4565278951580922156.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P12385768811771063325

`A076598((n+1)/gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))`
-/

namespace A091306.P12385768811771063325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076598 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.gcd (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) : ℚ))).toNat

end

end A091306.P12385768811771063325

namespace A091306

/-- `A076598((n+1)/gcd(((n+1)/∏{p}[n+1, #])², ∑[2*n]))` -/
def P12385768811771063325.Spec : Prop :=
  ∀ n, P12385768811771063325.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P6386880778450975096

`A001157(A055231(n+1))`
-/

namespace A091306.P6386880778450975096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (A055231 (n + 1)).toNat

end

end A091306.P6386880778450975096

namespace A091306

/-- `A001157(A055231(n+1))` -/
def P6386880778450975096.Spec : Prop :=
  ∀ n, P6386880778450975096.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P16711656373175192655

`A374538(A007948(n+1))`
-/

namespace A091306.P16711656373175192655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374538 (A007948 (n + 1)).toNat

end

end A091306.P16711656373175192655

namespace A091306

/-- `A374538(A007948(n+1))` -/
def P16711656373175192655.Spec : Prop :=
  ∀ n, P16711656373175192655.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P5980871474751944816

`A374538(A056192(n+1))`
-/

namespace A091306.P5980871474751944816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374538 (A056192 (n + 1)).toNat

end

end A091306.P5980871474751944816

namespace A091306

/-- `A374538(A056192(n+1))` -/
def P5980871474751944816.Spec : Prop :=
  ∀ n, P5980871474751944816.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P16796079097666450902

`A374538(A353897(n+1))`
-/

namespace A091306.P16796079097666450902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374538 (A353897 (n + 1)).toNat

end

end A091306.P16796079097666450902

namespace A091306

/-- `A374538(A353897(n+1))` -/
def P16796079097666450902.Spec : Prop :=
  ∀ n, P16796079097666450902.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P11190851781113644453

`A374538(A360539(n+1))`
-/

namespace A091306.P11190851781113644453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374538 (A360539 (n + 1)).toNat

end

end A091306.P11190851781113644453

namespace A091306

/-- `A374538(A360539(n+1))` -/
def P11190851781113644453.Spec : Prop :=
  ∀ n, P11190851781113644453.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P1159819676172900124

`A374538(A367168(n+1))`
-/

namespace A091306.P1159819676172900124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374538 (A367168 (n + 1)).toNat

end

end A091306.P1159819676172900124

namespace A091306

/-- `A374538(A367168(n+1))` -/
def P1159819676172900124.Spec : Prop :=
  ∀ n, P1159819676172900124.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P15452982975888049303

`A001157((n+1)/A057521(n+1))`
-/

namespace A091306.P15452982975888049303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A091306.P15452982975888049303

namespace A091306

/-- `A001157((n+1)/A057521(n+1))` -/
def P15452982975888049303.Spec : Prop :=
  ∀ n, P15452982975888049303.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P11990113260392663314

`A198286((n+1)/A057521(n+1))`
-/

namespace A091306.P11990113260392663314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198286 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A091306.P11990113260392663314

namespace A091306

/-- `A198286((n+1)/A057521(n+1))` -/
def P11990113260392663314.Spec : Prop :=
  ∀ n, P11990113260392663314.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P12204575157055829067

`A351265((n+1)/A057521(n+1))`
-/

namespace A091306.P12204575157055829067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351265 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A057521 (n + 1) : ℚ))).toNat

end

end A091306.P12204575157055829067

namespace A091306

/-- `A351265((n+1)/A057521(n+1))` -/
def P12204575157055829067.Spec : Prop :=
  ∀ n, P12204575157055829067.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P2859141156961206981

`A369718(A197863(n+1)/(n+1))`
-/

namespace A091306.P2859141156961206981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369718 (SequenceMachineLib.roundAway ((A197863 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A091306.P2859141156961206981

namespace A091306

/-- `A369718(A197863(n+1)/(n+1))` -/
def P2859141156961206981.Spec : Prop :=
  ∀ n, P2859141156961206981.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P2052366227167465048

`A351265(n+1)/A370239(n+1)`
-/

namespace A091306.P2052366227167465048
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A351265 (n + 1) : ℚ) / (A370239 (n + 1) : ℚ)

end

end A091306.P2052366227167465048

namespace A091306

/-- `A351265(n+1)/A370239(n+1)` -/
def P2052366227167465048.Spec : Prop :=
  ∀ n, P2052366227167465048.a n = (A091306 (n + 1) : ℚ)

end A091306

/-! ## A091306.P16229304664301968934

`A369718(n+1)/A360720(n+1)`
-/

namespace A091306.P16229304664301968934
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369718 (n + 1) : ℚ) / (A360720 (n + 1) : ℚ)

end

end A091306.P16229304664301968934

namespace A091306

/-- `A369718(n+1)/A360720(n+1)` -/
def P16229304664301968934.Spec : Prop :=
  ∀ n, P16229304664301968934.a n = (A091306 (n + 1) : ℚ)

end A091306

/-! ## A091306.P13795493425604250005

`A369758(n+1)/A365349(n+1)`
-/

namespace A091306.P13795493425604250005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A369758 (n + 1) : ℚ) / (A365349 (n + 1) : ℚ)

end

end A091306.P13795493425604250005

namespace A091306

/-- `A369758(n+1)/A365349(n+1)` -/
def P13795493425604250005.Spec : Prop :=
  ∀ n, P13795493425604250005.a n = (A091306 (n + 1) : ℚ)

end A091306

/-! ## A091306.P5539047364132472095

`A369718(A055231(2*n+1-n))`
-/

namespace A091306.P5539047364132472095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369718 (A055231 (2 * n + 1 - n)).toNat

end

end A091306.P5539047364132472095

namespace A091306

/-- `A369718(A055231(2*n+1-n))` -/
def P5539047364132472095.Spec : Prop :=
  ∀ n, P5539047364132472095.a n = A091306 (n + 1)

end A091306

/-! ## A091306.P18195279137608967335

`∏{p}[A055231(n+1), A002061(#)+#]`
-/

namespace A091306.P18195279137608967335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A002061 p + (p : ℤ))

end

end A091306.P18195279137608967335

namespace A091306

/-- `∏{p}[A055231(n+1), A002061(#)+#]` -/
def P18195279137608967335.Spec : Prop :=
  ∀ n, P18195279137608967335.a n = A091306 (n + 1)

end A091306

/-!
# A091307: a(n) = 6*2^n + 4 (Bode Number A003461(n+2)) except for a(1)=6.

The programs for A091307, the canonical program `A091307.P15355924008426632866` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091307 has offset 1).

The definition of A091307 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091307.P15355924008426632866

`2*a(n-1)-4` with `a(0)=6, a(1)=28`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091307

/-- `2*a(n-1)-4` -/
def P15355924008426632866.Spec : Prop :=
  ∀ n, P15355924008426632866.a n = A091307 (n + 1)

theorem P15355924008426632866.correct : P15355924008426632866.Spec := by
  intro n
  simp only [A091307, Nat.add_sub_cancel]

end A091307

/-! ## A091307.P13511774923577238591

`lcm(6, 1-a(n-1))-2` with `a(0)=6`
-/

namespace A091307.P13511774923577238591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  (Int.lcm 6 (1 - a (n - 1)) : ℤ) - 2

end

end A091307.P13511774923577238591

namespace A091307

/-- `lcm(6, 1-a(n-1))-2` -/
def P13511774923577238591.Spec : Prop :=
  ∀ n, P13511774923577238591.a n = A091307 (n + 1)

end A091307

/-! ## A091307.P4376466847222091732

`a(n-1)+a(n-1)-4` with `a(0)=6, a(1)=28`
-/

namespace A091307.P4376466847222091732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 28] fun n a =>
  a (n - 1) + (a (n - 1) - 4)

end

end A091307.P4376466847222091732

namespace A091307

/-- `a(n-1)+a(n-1)-4` -/
def P4376466847222091732.Spec : Prop :=
  ∀ n, P4376466847222091732.a n = A091307 (n + 1)

theorem P4376466847222091732.correct : P4376466847222091732.Spec := by
  intro n
  simp only [A091307, Nat.add_sub_cancel, A091307.P4376466847222091732.a, A091307.P15355924008426632866.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091307

/-! ## A091307.P10048389690559946814

`a(n-1)-(4-a(n-1))` with `a(0)=6, a(1)=28`
-/

namespace A091307.P10048389690559946814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 28] fun n a =>
  a (n - 1) - (4 - a (n - 1))

end

end A091307.P10048389690559946814

namespace A091307

/-- `a(n-1)-(4-a(n-1))` -/
def P10048389690559946814.Spec : Prop :=
  ∀ n, P10048389690559946814.a n = A091307 (n + 1)

theorem P10048389690559946814.correct : P10048389690559946814.Spec := by
  intro n
  simp only [A091307, Nat.add_sub_cancel, A091307.P10048389690559946814.a, A091307.P15355924008426632866.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091307

/-! ## A091307.P5900114119947766094

`or(1, 3*A146541(n))+3`
-/

namespace A091307.P5900114119947766094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (3 * A146541 n) + 3

end

end A091307.P5900114119947766094

namespace A091307

/-- `or(1, 3*A146541(n))+3` -/
def P5900114119947766094.Spec : Prop :=
  ∀ n, P5900114119947766094.a n = A091307 (n + 1)

end A091307

/-! ## A091307.P882072652793959090

`xor(A005015(n), A083686(n))+3`
-/

namespace A091307.P882072652793959090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A005015 n) (A083686 n) + 3

end

end A091307.P882072652793959090

namespace A091307

/-- `xor(A005015(n), A083686(n))+3` -/
def P882072652793959090.Spec : Prop :=
  ∀ n, P882072652793959090.a n = A091307 (n + 1)

end A091307

/-! ## A091307.P5656434559580696072

`2*(A003945(A114637(n+1))+2)`
-/

namespace A091307.P5656434559580696072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003945 (A114637 (n + 1)).toNat + 2)

end

end A091307.P5656434559580696072

namespace A091307

/-- `2*(A003945(A114637(n+1))+2)` -/
def P5656434559580696072.Spec : Prop :=
  ∀ n, P5656434559580696072.a n = A091307 (n + 1)

end A091307

/-! ## A091307.P13226996135820370060

`A000079(n+1)*A093563(∑[n])+4`
-/

namespace A091307.P13226996135820370060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A093563 (∑ j ∈ Finset.range (n + 1), f1 j) + 4

end

end A091307.P13226996135820370060

namespace A091307

/-- `A000079(n+1)*A093563(∑[n])+4` -/
def P13226996135820370060.Spec : Prop :=
  ∀ n, P13226996135820370060.a n = A091307 (n + 1)

end A091307

/-! ## A091307.P489006749797906972

`A033484(n+2)%(64^n)+6`
-/

namespace A091307.P489006749797906972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033484 (n + 2)) (64 ^ n : ℤ) + 6

end

end A091307.P489006749797906972

namespace A091307

/-- `A033484(n+2)%(64^n)+6` -/
def P489006749797906972.Spec : Prop :=
  ∀ n, P489006749797906972.a n = A091307 (n + 1)

end A091307

/-!
# A091309: Partial sums of A091316.

The programs for A091309, there is no canonical definition to state claims against.
-/

/-! ## A091309.P12566047397102607963

`∑[A091316(n+1)]`
-/

namespace A091309.P12566047397102607963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091316 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091309.P12566047397102607963

/-! ## A091309.P5527388191860428294

`A091316(A028310(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A091309.P5527388191860428294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091316 (A028310 n + 1).toNat + a (n - 1)

end

end A091309.P5527388191860428294

/-! ## A091309.P7559459840299504141

`A110654(2*a(n-1))+A091316(n+1)` with `a(0)=1`
-/

namespace A091309.P7559459840299504141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110654 (2 * a (n - 1)).toNat + A091316 (n + 1)

end

end A091309.P7559459840299504141

/-! ## A091309.P4200821013061022572

`a(n-1)+A091316(n+1)+A000007(n)` with `a(0)=1`
-/

namespace A091309.P4200821013061022572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A091316 (n + 1) + A000007 n)

end

end A091309.P4200821013061022572

/-! ## A091309.P1086500982846066430

`a(n-1)+A091316(n+1)+A000038(n)` with `a(0)=1`
-/

namespace A091309.P1086500982846066430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A091316 (n + 1) + A000038 n)

end

end A091309.P1086500982846066430

/-! ## A091309.P62121981488414770

`A091316(n%A273499(n)+1)+a(n-1)` with `a(0)=1`
-/

namespace A091309.P62121981488414770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A091316 (Int.tmod (n : ℤ) (A273499 n) + 1).toNat + a (n - 1)

end

end A091309.P62121981488414770

/-!
# A091310: Primes not of the form p*q + p - q with prime p and q.

The programs for A091310, there is no canonical definition to state claims against.
-/

/-! ## A091310.P14723926400019410721

`p?[eq[A265246(n), A347550(n)]]`
-/

namespace A091310.P14723926400019410721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265246 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347550 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A091310.P14723926400019410721

/-!
# A091311: Partial sums of 3^A007814(n).

The programs for A091311, the canonical program `A091311.P3576469723642197269` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091311 has offset 0).

The definition of A091311 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091311.P3576469723642197269

`2*A005836(n+1)-n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A091311

/-- `2*A005836(n+1)-n` -/
def P3576469723642197269.Spec : Prop :=
  ∀ n, P3576469723642197269.a n = A091311 n

theorem P3576469723642197269.correct : P3576469723642197269.Spec := by
  intro n
  simp only [A091311]

end A091311

/-! ## A091311.P13035143086655157755

`∑[and(n, -n)^log2(3)]`
-/

namespace A091311.P13035143086655157755
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091311.P13035143086655157755

namespace A091311

/-- `∑[and(n, -n)^log2(3)]` -/
def P13035143086655157755.Spec : Prop :=
  ∀ n, P13035143086655157755.a n = (A091311 n : ℝ)

end A091311

/-! ## A091311.P16222272764737796136

`a(n-1)+3^val(n, 2)` with `a(0)=0`
-/

namespace A091311.P16222272764737796136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 3 ^ SequenceMachineLib.valuation n 2

end

end A091311.P16222272764737796136

namespace A091311

/-- `a(n-1)+3^val(n, 2)` -/
def P16222272764737796136.Spec : Prop :=
  ∀ n, (P16222272764737796136.a n : ℤ) = A091311 n

end A091311

/-! ## A091311.P952533801548209595

`∑[3^∑{e}[and(n, -n), #]]-1`
-/

namespace A091311.P952533801548209595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A091311.P952533801548209595

namespace A091311

/-- `∑[3^∑{e}[and(n, -n), #]]-1` -/
def P952533801548209595.Spec : Prop :=
  ∀ n, P952533801548209595.a n = A091311 n

end A091311

/-! ## A091311.P13722075136777638328

`∑[3^∑{e}[or(n, -n), #]]-1`
-/

namespace A091311.P13722075136777638328
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A091311.P13722075136777638328

namespace A091311

/-- `∑[3^∑{e}[or(n, -n), #]]-1` -/
def P13722075136777638328.Spec : Prop :=
  ∀ n, P13722075136777638328.a n = A091311 n

end A091311

/-! ## A091311.P17217218978875962155

`∑[(3*a(n-1))^val(n, 2)]` with `a(0)=0`
-/

namespace A091311.P17217218978875962155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  (3 * f1 (n - 1)) ^ SequenceMachineLib.valuation n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091311.P17217218978875962155

namespace A091311

/-- `∑[(3*a(n-1))^val(n, 2)]` -/
def P17217218978875962155.Spec : Prop :=
  ∀ n, (P17217218978875962155.a n : ℤ) = A091311 n

end A091311

/-! ## A091311.P4794392191972288107

`∑[(4-a(n-1))^val(n, 2)]` with `a(0)=0`
-/

namespace A091311.P4794392191972288107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  (4 - f1 (n - 1)) ^ SequenceMachineLib.valuation n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091311.P4794392191972288107

namespace A091311

/-- `∑[(4-a(n-1))^val(n, 2)]` -/
def P4794392191972288107.Spec : Prop :=
  ∀ n, P4794392191972288107.a n = A091311 n

end A091311

/-! ## A091311.P7218526866326161908

`a(n-1)+and(n, -n)^log2(3)` with `a(0)=0`
-/

namespace A091311.P7218526866326161908
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

end

end A091311.P7218526866326161908

namespace A091311

/-- `a(n-1)+and(n, -n)^log2(3)` -/
def P7218526866326161908.Spec : Prop :=
  ∀ n, P7218526866326161908.a n = (A091311 n : ℝ)

end A091311

/-! ## A091311.P4380995380227734647

`∑[3^val(n+1, 2)]-3^val(n+1, 2)`
-/

namespace A091311.P4380995380227734647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (3 ^ SequenceMachineLib.valuation (n + 1) 2 : ℤ)

end

end A091311.P4380995380227734647

namespace A091311

/-- `∑[3^val(n+1, 2)]-3^val(n+1, 2)` -/
def P4380995380227734647.Spec : Prop :=
  ∀ n, P4380995380227734647.a n = A091311 n

end A091311

/-! ## A091311.P12290702203500303227

`∑[A061393(n)-1]`
-/

namespace A091311.P12290702203500303227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061393 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091311.P12290702203500303227

namespace A091311

/-- `∑[A061393(n)-1]` -/
def P12290702203500303227.Spec : Prop :=
  ∀ n, P12290702203500303227.a n = A091311 n

end A091311

/-! ## A091311.P7298576097279193808

`A005823(n+1)-n`
-/

namespace A091311.P7298576097279193808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (n + 1) - (n : ℤ)

end

end A091311.P7298576097279193808

namespace A091311

/-- `A005823(n+1)-n` -/
def P7298576097279193808.Spec : Prop :=
  ∀ n, P7298576097279193808.a n = A091311 n

end A091311

/-! ## A091311.P10263960600521652387

`A191106(n+1)-(n+1)`
-/

namespace A091311.P10263960600521652387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191106 (n + 1) - (n + 1 : ℤ)

end

end A091311.P10263960600521652387

namespace A091311

/-- `A191106(n+1)-(n+1)` -/
def P10263960600521652387.Spec : Prop :=
  ∀ n, P10263960600521652387.a n = A091311 n

theorem P10263960600521652387.correct : P10263960600521652387.Spec := by
  intro n
  simp only [A091311, Nat.add_sub_cancel, A091311.P10263960600521652387.a, A091311.P3576469723642197269.a, A005836, A005836.P12367569128854000442.a, A191106, A191106.P14318960782642290276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091311

/-! ## A091311.P6020757229299815102

`A055247(n+1)-or(1, n)`
-/

namespace A091311.P6020757229299815102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (n + 1) - (Nat.lor 1 n : ℤ)

end

end A091311.P6020757229299815102

namespace A091311

/-- `A055247(n+1)-or(1, n)` -/
def P6020757229299815102.Spec : Prop :=
  ∀ n, P6020757229299815102.a n = A091311 n

end A091311

/-! ## A091311.P14897597665674746887

`A055247(n+1)-A109613(n)`
-/

namespace A091311.P14897597665674746887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055247 (n + 1) - A109613 n

end

end A091311.P14897597665674746887

namespace A091311

/-- `A055247(n+1)-A109613(n)` -/
def P14897597665674746887.Spec : Prop :=
  ∀ n, P14897597665674746887.a n = A091311 n

end A091311

/-! ## A091311.P12277510252074950760

`record[A004488(n)]-n`
-/

namespace A091311.P12277510252074950760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A091311.P12277510252074950760

namespace A091311

/-- `record[A004488(n)]-n` -/
def P12277510252074950760.Spec : Prop :=
  ∀ n, P12277510252074950760.a n = A091311 n

end A091311

/-! ## A091311.P6646580888701027100

`record[A300222(n)]-n`
-/

namespace A091311.P6646580888701027100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300222 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A091311.P6646580888701027100

namespace A091311

/-- `record[A300222(n)]-n` -/
def P6646580888701027100.Spec : Prop :=
  ∀ n, P6646580888701027100.a n = A091311 n

end A091311

/-! ## A091311.P10576371438631066923

`A004488(A005836(n+1))-n`
-/

namespace A091311.P10576371438631066923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004488 (A005836 (n + 1)).toNat - (n : ℤ)

end

end A091311.P10576371438631066923

namespace A091311

/-- `A004488(A005836(n+1))-n` -/
def P10576371438631066923.Spec : Prop :=
  ∀ n, P10576371438631066923.a n = A091311 n

end A091311

/-! ## A091311.P9821722607470913231

`eq[1, A088917(n)]-n`
-/

namespace A091311.P9821722607470913231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A091311.P9821722607470913231

namespace A091311

/-- `eq[1, A088917(n)]-n` -/
def P9821722607470913231.Spec : Prop :=
  ∀ n, P9821722607470913231.a n = A091311 n

end A091311

/-! ## A091311.P1044871369338140852

`eq[1, A105220(n)]-n`
-/

namespace A091311.P1044871369338140852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105220 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A091311.P1044871369338140852

namespace A091311

/-- `eq[1, A105220(n)]-n` -/
def P1044871369338140852.Spec : Prop :=
  ∀ n, P1044871369338140852.a n = A091311 n

end A091311

/-! ## A091311.P18432544512245138523

`eq[1, A290091(n)]-n`
-/

namespace A091311.P18432544512245138523
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - (n : ℤ)

end

end A091311.P18432544512245138523

namespace A091311

/-- `eq[1, A290091(n)]-n` -/
def P18432544512245138523.Spec : Prop :=
  ∀ n, P18432544512245138523.a n = A091311 n

end A091311

/-!
# A091313: Smallest prime x > n such that x (mod n) = x (mod prime(n)).

The programs for A091313, there is no canonical definition to state claims against.
-/

/-! ## A091313.P2996862789351530275

`A007918(A033286(n+1)*A349542(n))`
-/

namespace A091313.P2996862789351530275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A033286 (n + 1) * A349542 n).toNat

end

end A091313.P2996862789351530275

/-! ## A091313.P17932421302592930359

`A007918(lcm(A033286(n+1), A349542(n)))`
-/

namespace A091313.P17932421302592930359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (Int.lcm (A033286 (n + 1)) (A349542 n))

end

end A091313.P17932421302592930359

/-! ## A091313.P14124302288946166206

`A159477(A033286(n+1)*A349542(n))`
-/

namespace A091313.P14124302288946166206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A033286 (n + 1) * A349542 n).toNat

end

end A091313.P14124302288946166206

/-!
# A091316: a(1)=1, a(2)=2, then a(a(1)+a(2)+...+a(k))=a(k), fill in any undefined places with the rule a(n+1)=a(n)+1.

The programs for A091316, there is no canonical definition to state claims against.
-/

/-! ## A091316.P9468471370893064848

`Δ[A091309(A028310(n))%(n+1)²]`
-/

namespace A091316.P9468471370893064848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091309 (A028310 n).toNat) ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091316.P9468471370893064848

/-! ## A091316.P17641384143173815464

`A028310(Δ[A091309(A028310(n))])`
-/

namespace A091316.P17641384143173815464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091309 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A091316.P17641384143173815464

/-! ## A091316.P3043417016278804742

`A023514(∑[A050363(n+1)!])`
-/

namespace A091316.P3043417016278804742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A050363 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023514 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091316.P3043417016278804742

/-! ## A091316.P17215785123600438350

`A051265(A257418(n)+A177829(n+2))`
-/

namespace A091316.P17215785123600438350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051265 (A257418 n + A177829 (n + 2)).toNat

end

end A091316.P17215785123600438350

/-! ## A091316.P13075235404215763678

`A056239(A222820(3*(n+2))-A272084(2*(n+1)))`
-/

namespace A091316.P13075235404215763678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A222820 (3 * (n + 2)) - A272084 (2 * (n + 1))).toNat

end

end A091316.P13075235404215763678

/-!
# A091317: Primes p that divide 2^n+1 for some n.

The programs for A091317, there is no canonical definition to state claims against.
-/

/-! ## A091317.P648326097793773850

`∪[A007352(n+1), A014662(n+1)]`
-/

namespace A091317.P648326097793773850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014662 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P648326097793773850

/-! ## A091317.P11922187956859229764

`p?[A014657(n+1)]`
-/

namespace A091317.P11922187956859229764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091317.P11922187956859229764

/-! ## A091317.P6366452181458299229

`record[A006530(A014657(n+2))]`
-/

namespace A091317.P6366452181458299229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A014657 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091317.P6366452181458299229

/-! ## A091317.P17144641851335735540

`filter[A014657(n+1), A010051(#)]`
-/

namespace A091317.P17144641851335735540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A091317.P17144641851335735540

/-! ## A091317.P16323769016125785904

`filter[A014657(n+2), A365716(#)]`
-/

namespace A091317.P16323769016125785904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A365716 (f1 j).toNat = 1) n)

end

end A091317.P16323769016125785904

/-! ## A091317.P2326773486884667208

`∩[A000040(n+1), A014657(n+1)]`
-/

namespace A091317.P2326773486884667208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P2326773486884667208

/-! ## A091317.P17660967032892519385

`∩[A014657(n+1), A042998(n+1)]`
-/

namespace A091317.P17660967032892519385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042998 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P17660967032892519385

/-! ## A091317.P8764723674740103946

`∩[A014657(n+1), A051948(n+1)]`
-/

namespace A091317.P8764723674740103946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P8764723674740103946

/-! ## A091317.P12157705286261191828

`∩[A014657(n+1), A053813(n+1)]`
-/

namespace A091317.P12157705286261191828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P12157705286261191828

/-! ## A091317.P8248226162398908931

`∩[A014657(n+1), A066191(n+1)]`
-/

namespace A091317.P8248226162398908931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066191 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P8248226162398908931

/-! ## A091317.P8599786303620677520

`∩[A014657(n+1), A093515(n+1)]`
-/

namespace A091317.P8599786303620677520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P8599786303620677520

/-! ## A091317.P1335759259571678440

`∩[A182140(n+1), A014657(n+1)]`
-/

namespace A091317.P1335759259571678440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P1335759259571678440

/-! ## A091317.P15766435425738775752

`∩[A014657(n+1), A182986(n+1)]`
-/

namespace A091317.P15766435425738775752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P15766435425738775752

/-! ## A091317.P15152966617498889213

`filter[A014657(n+1), A323153(#)]`
-/

namespace A091317.P15152966617498889213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A091317.P15152966617498889213

/-! ## A091317.P10257091656996945407

`filter[A014657(n+2), A323152(#)]`
-/

namespace A091317.P10257091656996945407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A091317.P10257091656996945407

/-! ## A091317.P9221643494603193803

`filter[A014657(n+2), A340371(#)]`
-/

namespace A091317.P9221643494603193803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A340371 (f1 j).toNat = 1) n)

end

end A091317.P9221643494603193803

/-! ## A091317.P13450280253106040340

`∩[A001751(n+1), A014657(n+1)]`
-/

namespace A091317.P13450280253106040340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091317.P13450280253106040340

/-! ## A091317.P8158574957389595731

`p?[A321580(n+1)+1]`
-/

namespace A091317.P8158574957389595731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321580 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091317.P8158574957389595731

/-! ## A091317.P7646301243120387722

`p?[A006519(A002326(n)+1)+2*n]`
-/

namespace A091317.P7646301243120387722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A002326 n + 1).toNat + (2 * n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091317.P7646301243120387722

/-! ## A091317.P16157505360316271509

`p?[lt[A086342(n), 3]]`
-/

namespace A091317.P16157505360316271509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086342 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A091317.P16157505360316271509

/-!
# A091318: Lengths of runs of 1's in A039702.

The programs for A091318, the canonical program `A091318.P7056967124292507603` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091318 has offset 1).

The definition of A091318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091318.P7056967124292507603

`A091237(2*n+3)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091318

/-- `A091237(2*n+3)` -/
def P7056967124292507603.Spec : Prop :=
  ∀ n, P7056967124292507603.a n = A091318 (n + 1)

theorem P7056967124292507603.correct : P7056967124292507603.Spec := by
  intro n
  simp only [A091318, Nat.add_sub_cancel]

end A091318

/-! ## A091318.P9795475540473021502

`A091237(Δ[(n+1)²])%48`
-/

namespace A091318.P9795475540473021502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091237 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) 48

end

end A091318.P9795475540473021502

namespace A091318

/-- `A091237(Δ[(n+1)²])%48` -/
def P9795475540473021502.Spec : Prop :=
  ∀ n, P9795475540473021502.a n = A091318 (n + 1)

end A091318

/-! ## A091318.P7347936187056098066

`dr(A091237(A004273(n+2)))`
-/

namespace A091318.P7347936187056098066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A091237 (A004273 (n + 2)).toNat)

end

end A091318.P7347936187056098066

namespace A091318

/-- `dr(A091237(A004273(n+2)))` -/
def P7347936187056098066.Spec : Prop :=
  ∀ n, (P7347936187056098066.a n : ℤ) = A091318 (n + 1)

end A091318

/-! ## A091318.P4693501935532482328

`or(A000007(n), A091237(Δ[(n+1)²]))`
-/

namespace A091318.P4693501935532482328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A091237 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A091318.P4693501935532482328

namespace A091318

/-- `or(A000007(n), A091237(Δ[(n+1)²]))` -/
def P4693501935532482328.Spec : Prop :=
  ∀ n, P4693501935532482328.a n = A091318 (n + 1)

end A091318

/-! ## A091318.P6656284648851469502

`A091237(Δ[(n+1)²])+A000007(n+1)`
-/

namespace A091318.P6656284648851469502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000007 (n + 1)

end

end A091318.P6656284648851469502

namespace A091318

/-- `A091237(Δ[(n+1)²])+A000007(n+1)` -/
def P6656284648851469502.Spec : Prop :=
  ∀ n, P6656284648851469502.a n = A091318 (n + 1)

end A091318

/-! ## A091318.P17812484029417287479

`A091237(Δ[(n+1)²])+A000038(n+1)`
-/

namespace A091318.P17812484029417287479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091237 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000038 (n + 1)

end

end A091318.P17812484029417287479

namespace A091318

/-- `A091237(Δ[(n+1)²])+A000038(n+1)` -/
def P17812484029417287479.Spec : Prop :=
  ∀ n, P17812484029417287479.a n = A091318 (n + 1)

end A091318

/-! ## A091318.P6161654972504158299

`A140129(A140130(n+1))+A091237(Δ[(n+1)²])`
-/

namespace A091318.P6161654972504158299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140129 (A140130 (n + 1)).toNat + A091237 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A091318.P6161654972504158299

namespace A091318

/-- `A140129(A140130(n+1))+A091237(Δ[(n+1)²])` -/
def P6161654972504158299.Spec : Prop :=
  ∀ n, P6161654972504158299.a n = A091318 (n + 1)

end A091318

/-! ## A091318.P8674671223113020253

`Δ[record[A292375(4*n+3)]]`
-/

namespace A091318.P8674671223113020253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292375 (4 * n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091318.P8674671223113020253

namespace A091318

/-- `Δ[record[A292375(4*n+3)]]` -/
def P8674671223113020253.Spec : Prop :=
  ∀ n, P8674671223113020253.a n = A091318 (n + 1)

end A091318

/-! ## A091318.P17520009741499584232

`and(A091237(Δ[(n+1)²]), A160160(n+1))`
-/

namespace A091318.P17520009741499584232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A091237 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat) (A160160 (n + 1))

end

end A091318.P17520009741499584232

namespace A091318

/-- `and(A091237(Δ[(n+1)²]), A160160(n+1))` -/
def P17520009741499584232.Spec : Prop :=
  ∀ n, P17520009741499584232.a n = A091318 (n + 1)

end A091318

/-! ## A091318.P6641431380337279350

`A140129(A059268(n))+A091237(Δ[(n+1)²])`
-/

namespace A091318.P6641431380337279350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140129 (A059268 n).toNat + A091237 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A091318.P6641431380337279350

namespace A091318

/-- `A140129(A059268(n))+A091237(Δ[(n+1)²])` -/
def P6641431380337279350.Spec : Prop :=
  ∀ n, P6641431380337279350.a n = A091318 (n + 1)

end A091318

/-!
# A091319: Number of orientable hyperbolic 3-manifolds of cusp type 1 obtained from n ideal tetrahedra.

The programs for A091319, there is no canonical definition to state claims against.
-/

/-! ## A091319.P325354524801244395

`A064989(6^n+10*a(n-1))` with `a(0)=0, a(1)=2, a(2)=9`
-/

namespace A091319.P325354524801244395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 2, 9] fun n a =>
  A064989 ((6 ^ n : ℤ) + 10 * a (n - 1)).toNat

end

end A091319.P325354524801244395

/-!
# A091321: OU-Sigma multiperfect numbers.

The programs for A091321, there is no canonical definition to state claims against.
-/

/-! ## A091321.P6186769094975031518

`A028310(∪[A007691(n+1), A125310(n+1)])`
-/

namespace A091321.P6186769094975031518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125310 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A091321.P6186769094975031518

/-! ## A091321.P3479530561731545488

`A028310(∪[A007691(n+1), A353038(n+1)])`
-/

namespace A091321.P3479530561731545488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353038 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A091321.P3479530561731545488

/-! ## A091321.P5142069839492692718

`A028310(∪[A125310(n+1), A348035(n+1)])`
-/

namespace A091321.P5142069839492692718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348035 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A091321.P5142069839492692718

/-! ## A091321.P11551888208910992680

`A028310(∪[A348035(n+1), A353038(n+1)])`
-/

namespace A091321.P11551888208910992680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353038 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A091321.P11551888208910992680

/-!
# A091322: k-values associated with A091321.

The programs for A091322, there is no canonical definition to state claims against.
-/

/-! ## A091322.P10271167976251784932

`A252229(lt[A182949(n+1), A347067(n+1)])`
-/

namespace A091322.P10271167976251784932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347067 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252229 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091322.P10271167976251784932

/-! ## A091322.P12218986508861682390

`A212632(A325388(2*n+1)+A227737(n+1))`
-/

namespace A091322.P12218986508861682390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212632 (A325388 (2 * n + 1) + A227737 (n + 1)).toNat

end

end A091322.P12218986508861682390

/-! ## A091322.P16795802117740826047

`A212632(A014612(n+1)-round(sqrt(3*n+1)))`
-/

namespace A091322.P16795802117740826047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212632 (A014612 (n + 1) - SequenceMachineLib.roundAway (Real.sqrt (3 * n + 1 : ℝ))).toNat

end

end A091322.P16795802117740826047

/-! ## A091322.P11273578884590931354

`A072491(A245869(n+1)+A055389(n))`
-/

namespace A091322.P11273578884590931354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072491 (A245869 (n + 1) + A055389 n).toNat

end

end A091322.P11273578884590931354

/-! ## A091322.P16799639495239396567

`A182576(A182598(5*n+2)+A182576(n))`
-/

namespace A091322.P16799639495239396567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182576 (A182598 (5 * n + 2) + A182576 n).toNat

end

end A091322.P16799639495239396567

/-!
# A091324: 

The programs for A091324, there is no canonical definition to state claims against.
-/

/-! ## A091324.P1445356680027364131

`(2^n)^2^n-(2^n-1)^2^n`
-/

namespace A091324.P1445356680027364131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 ^ n) ^ 2 ^ n : ℤ) - ((2 ^ n : ℤ) - 1) ^ 2 ^ n

end

end A091324.P1445356680027364131

/-!
# A091325: Triangle T(n,k) read by rows giving number of inequivalent even binary linear [n,k] codes (n >= 1, 0 <= k <= n-1).

The programs for A091325, there is no canonical definition to state claims against.
-/

/-! ## A091325.P423362363007722181

`A048766(A134059(n)+A034254(n+1)²)`
-/

namespace A091325.P423362363007722181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A134059 n + A034254 (n + 1) ^ 2).toNat

end

end A091325.P423362363007722181

/-! ## A091325.P15277858362819824454

`A001462(A034254(n+1)%A057742(n+4))`
-/

namespace A091325.P15277858362819824454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (Int.tmod (A034254 (n + 1)) (A057742 (n + 4))).toNat

end

end A091325.P15277858362819824454

/-! ## A091325.P9581114684831408542

`A001462(A034254(n+1))%A155150(3*n+1)`
-/

namespace A091325.P9581114684831408542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001462 (A034254 (n + 1)).toNat) (A155150 (3 * n + 1))

end

end A091325.P9581114684831408542

/-! ## A091325.P7033190471110609469

`A001462(A034254(n+1))%A269309(n+1)`
-/

namespace A091325.P7033190471110609469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001462 (A034254 (n + 1)).toNat) (A269309 (n + 1))

end

end A091325.P7033190471110609469

/-! ## A091325.P1090085399847989960

`A285189(A132729(n))`
-/

namespace A091325.P1090085399847989960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A132729 n).toNat

end

end A091325.P1090085399847989960

/-!
# A091326: Total number of inequivalent even binary linear codes of length n and any dimension k = 0, 1, ..., n-1.

The programs for A091326, there is no canonical definition to state claims against.
-/

/-! ## A091326.P9289101191360715685

`∑[A091328(n+1)]+1`
-/

namespace A091326.P9289101191360715685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A091326.P9289101191360715685

/-! ## A091326.P12204351071916270552

`∑[lcm(16, n)/16+2*A308994(2*n)]+1`
-/

namespace A091326.P12204351071916270552
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 16 n : ℚ) / 16 + (2 * A308994 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A091326.P12204351071916270552

/-! ## A091326.P16428706799387512367

`A045687(n)+A008815(n)`
-/

namespace A091326.P16428706799387512367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045687 n + A008815 n

end

end A091326.P16428706799387512367

/-! ## A091326.P16070213339169462817

`A298434(n)+A045687(n)`
-/

namespace A091326.P16070213339169462817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298434 n + A045687 n

end

end A091326.P16070213339169462817

/-! ## A091326.P12485018691103481391

`A348268(n)+A045687(n)`
-/

namespace A091326.P12485018691103481391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348268 n + A045687 n

end

end A091326.P12485018691103481391

/-!
# A091327: Triangle T(n,k) read by rows giving number of inequivalent even binary linear [n,k] codes containing no zero columns (n >= 2, 1 <= k <= n-1).

The programs for A091327, there is no canonical definition to state claims against.
-/

/-! ## A091327.P11226400458528961068

`A287272(A097807(n)+A001263(n+1))`
-/

namespace A091327.P11226400458528961068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A097807 n + A001263 (n + 1)).toNat

end

end A091327.P11226400458528961068

/-! ## A091327.P10688495061937370665

`A287272(A178112(n)+A001263(n+1))`
-/

namespace A091327.P10688495061937370665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287272 (A178112 n + A001263 (n + 1)).toNat

end

end A091327.P10688495061937370665

/-! ## A091327.P4270862512851643829

`A241926(n+1)-A059841(A066121(n+1))`
-/

namespace A091327.P4270862512851643829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241926 (n + 1) - A059841 (A066121 (n + 1)).toNat

end

end A091327.P4270862512851643829

/-! ## A091327.P10204144987010288223

`A008616(A131061(n)-1)%A253382(A116389(n))`
-/

namespace A091327.P10204144987010288223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008616 (A131061 n - 1).toNat) (A253382 (A116389 n).toNat)

end

end A091327.P10204144987010288223

/-!
# A091328: Total number of inequivalent even binary linear codes of length n and any dimension k = 0, 1, ..., n-1, with no column of zeros.

The programs for A091328, there is no canonical definition to state claims against.
-/

/-! ## A091328.P11370575651471929006

`ogf((-x+2x^4+2x^6-2x^7)/(-1+x+2x^2))`
-/

namespace A091328.P11370575651471929006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, 0, -2, 0, -2, 2] [1, -1, -2] n

end

end A091328.P11370575651471929006

/-! ## A091328.P6586635465383063771

`Δ[A091326(round(sqrt(n²+1)))]`
-/

namespace A091328.P6586635465383063771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091326 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091328.P6586635465383063771

/-! ## A091328.P10620224304521223143

`lcm(16, n)/16+2*A308994(2*n)`
-/

namespace A091328.P10620224304521223143
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 16 n : ℚ) / 16 + (2 * A308994 (2 * n) : ℚ)

end

end A091328.P10620224304521223143

/-! ## A091328.P1351048191818901611

`A266123(A383806(n+1))`
-/

namespace A091328.P1351048191818901611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266123 (A383806 (n + 1)).toNat

end

end A091328.P1351048191818901611

/-! ## A091328.P9930092261371429448

`A248034(n)+A094779(n)`
-/

namespace A091328.P9930092261371429448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248034 n + A094779 n

end

end A091328.P9930092261371429448

/-!
# A091330: a(n) = ((p-1)!/p) - ((p-1)*(p-1)!/p!), where p is the n-th prime.

The programs for A091330, there is no canonical definition to state claims against.
-/

/-! ## A091330.P17387423488663682296

`A007619(n+1)-1`
-/

namespace A091330.P17387423488663682296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007619 (n + 1) - 1

end

end A091330.P17387423488663682296

/-! ## A091330.P8832119841318225707

`2*floor(A157249(p?[comp[n²]])/2)`
-/

namespace A091330.P8832119841318225707
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ⌊(A157249 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 2⌋

end

end A091330.P8832119841318225707

/-! ## A091330.P4070030768017653124

`A064852(ratio[A002110(n)])`
-/

namespace A091330.P4070030768017653124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064852 (SequenceMachineLib.roundAway ((f1 (n + 1) : ℚ) / (f1 n : ℚ))).toNat

end

end A091330.P4070030768017653124

/-! ## A091330.P2116300833084366300

`A064852(A000040(n+1))`
-/

namespace A091330.P2116300833084366300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064852 (A000040 (n + 1)).toNat

end

end A091330.P2116300833084366300

/-! ## A091330.P13277234205278425645

`A064852(A030475(n+1))`
-/

namespace A091330.P13277234205278425645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064852 (A030475 (n + 1)).toNat

end

end A091330.P13277234205278425645

/-!
# A091331: Natural numbers written out with their digits grouped in triples (leading zeros omitted).

The programs for A091331, there is no canonical definition to state claims against.
-/

/-! ## A091331.P8570895452799751179

`A193431(3*n+1)`
-/

namespace A091331.P8570895452799751179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193431 (3 * n + 1)

end

end A091331.P8570895452799751179

/-! ## A091331.P15809968895516147951

`floor(A193492(3*n+1)/10)`
-/

namespace A091331.P15809968895516147951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A193492 (3 * n + 1) : ℚ) / 10⌋

end

end A091331.P15809968895516147951

/-! ## A091331.P2654280057465434969

`or(A000007(n), A193431(A016777(n)))`
-/

namespace A091331.P2654280057465434969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A193431 (A016777 n).toNat)

end

end A091331.P2654280057465434969

/-! ## A091331.P11858318903424936475

`or(A000038(n), A193431(A016777(n)))`
-/

namespace A091331.P11858318903424936475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A193431 (A016777 n).toNat)

end

end A091331.P11858318903424936475

/-! ## A091331.P9992918944777630762

`A193431(A016777(n))+A000007(n+1)`
-/

namespace A091331.P9992918944777630762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193431 (A016777 n).toNat + A000007 (n + 1)

end

end A091331.P9992918944777630762

/-! ## A091331.P5467933083543181241

`A193431(A016777(n))+A000038(n+1)`
-/

namespace A091331.P5467933083543181241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193431 (A016777 n).toNat + A000038 (n + 1)

end

end A091331.P5467933083543181241

/-! ## A091331.P1816031772888375509

`A193431(A016777(n))-A000035(2*n)`
-/

namespace A091331.P1816031772888375509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193431 (A016777 n).toNat - A000035 (2 * n)

end

end A091331.P1816031772888375509

/-! ## A091331.P17391362222837517503

`A193431(A016777(n))%A166931(n+1)`
-/

namespace A091331.P17391362222837517503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193431 (A016777 n).toNat) (A166931 (n + 1))

end

end A091331.P17391362222837517503

/-! ## A091331.P11041272359913484559

`A193431(A016777(n))^A283131(n+1)²`
-/

namespace A091331.P11041272359913484559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193431 (A016777 n).toNat : ℚ) ^ (A283131 (n + 1) ^ 2 : ℤ)

end

end A091331.P11041272359913484559

/-!
# A091332: Natural numbers written out with their digits grouped in sets of four (leading zeros omitted).

The programs for A091332, there is no canonical definition to state claims against.
-/

/-! ## A091332.P2426423915745865098

`A193492(4*n+1)`
-/

namespace A091332.P2426423915745865098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193492 (4 * n + 1)

end

end A091332.P2426423915745865098

/-! ## A091332.P2653672180465061442

`lcm(A087960(n), A193492(A016813(n)))`
-/

namespace A091332.P2653672180465061442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A193492 (A016813 n).toNat)

end

end A091332.P2653672180465061442

/-! ## A091332.P12111910799787857477

`or(A185015(n), A193492(A016813(n)))`
-/

namespace A091332.P12111910799787857477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185015 n) (A193492 (A016813 n).toNat)

end

end A091332.P12111910799787857477

/-! ## A091332.P15009731662216457351

`A193492(A016813(n))+A000038(n+1)`
-/

namespace A091332.P15009731662216457351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193492 (A016813 n).toNat + A000038 (n + 1)

end

end A091332.P15009731662216457351

/-! ## A091332.P7832940171036692544

`A132460(A132440(n)²)*A193492(A016813(n))`
-/

namespace A091332.P7832940171036692544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 (A132440 n ^ 2).toNat * A193492 (A016813 n).toNat

end

end A091332.P7832940171036692544

/-! ## A091332.P2718110297682104746

`A193492(A016813(n))/A249740(A007918(n+1))`
-/

namespace A091332.P2718110297682104746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193492 (A016813 n).toNat : ℚ) / (A249740 (A007918 (n + 1)).toNat : ℚ)

end

end A091332.P2718110297682104746

/-! ## A091332.P17896219933648735395

`A193492(A016813(n))/A249740(A055231(n+1))`
-/

namespace A091332.P17896219933648735395
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193492 (A016813 n).toNat : ℚ) / (A249740 (A055231 (n + 1)).toNat : ℚ)

end

end A091332.P17896219933648735395

/-! ## A091332.P17400339481150060088

`A193492(A016813(n))/A293810(A034699(n+1))`
-/

namespace A091332.P17400339481150060088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193492 (A016813 n).toNat : ℚ) / (A293810 (A034699 (n + 1)).toNat : ℚ)

end

end A091332.P17400339481150060088

/-! ## A091332.P16174921607233155047

`A193492(A016813(n))/A249740(A088387(n+1))`
-/

namespace A091332.P16174921607233155047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193492 (A016813 n).toNat : ℚ) / (A249740 (A088387 (n + 1)).toNat : ℚ)

end

end A091332.P16174921607233155047

/-! ## A091332.P9553142351520282270

`A193492(A016813(n))/A249740(A249740(n+1))`
-/

namespace A091332.P9553142351520282270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193492 (A016813 n).toNat : ℚ) / (A249740 (A249740 (n + 1)).toNat : ℚ)

end

end A091332.P9553142351520282270

/-! ## A091332.P2474172923628029922

`A193492(A016813(n))/A032742(A000040(n+1))`
-/

namespace A091332.P2474172923628029922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193492 (A016813 n).toNat : ℚ) / (A032742 (A000040 (n + 1)).toNat : ℚ)

end

end A091332.P2474172923628029922

/-! ## A091332.P16837761711282196724

`A091090(30*n)*A193492(A016813(n))`
-/

namespace A091332.P16837761711282196724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (30 * n) * A193492 (A016813 n).toNat

end

end A091332.P16837761711282196724

/-! ## A091332.P15942020805195829682

`A193492(A016813(n))/A055231((n+1)²)`
-/

namespace A091332.P15942020805195829682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193492 (A016813 n).toNat : ℚ) / (A055231 ((n + 1) ^ 2) : ℚ)

end

end A091332.P15942020805195829682

/-! ## A091332.P18208621582576577196

`A132460(n²)*A193492(A016813(n))`
-/

namespace A091332.P18208621582576577196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132460 (n ^ 2) * A193492 (A016813 n).toNat

end

end A091332.P18208621582576577196

/-!
# A091333: Number of 1's required to build n using +, -, *, and parentheses.

The programs for A091333, there is no canonical definition to state claims against.
-/

/-! ## A091333.P15090137877822221086

`ceil(A005245((n+1)²)/2)`
-/

namespace A091333.P15090137877822221086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A005245 ((n + 1) ^ 2) : ℚ) / 2⌉

end

end A091333.P15090137877822221086

/-! ## A091333.P5045836458203886213

`ceil(A213923((n+1)²)/4)`
-/

namespace A091333.P5045836458203886213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A213923 ((n + 1) ^ 2) : ℚ) / 4⌉

end

end A091333.P5045836458203886213

/-! ## A091333.P4472410496450930489

`floor(A213923(xor(n, -1)²)/4)+1`
-/

namespace A091333.P4472410496450930489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213923 (Int.xor (n : ℤ) (-1) ^ 2).toNat : ℚ) / 4⌋ + 1

end

end A091333.P4472410496450930489

/-! ## A091333.P2053305608388007642

`floor(A213923(∑[2*n+1])/4)+1`
-/

namespace A091333.P2053305608388007642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A213923 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4⌋ + 1

end

end A091333.P2053305608388007642

/-! ## A091333.P6324145777654258052

`A065033(A005245((n+1)²))`
-/

namespace A091333.P6324145777654258052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A005245 ((n + 1) ^ 2)).toNat

end

end A091333.P6324145777654258052

/-! ## A091333.P15477141731631256333

`A008621(A213923((n+1)²))`
-/

namespace A091333.P15477141731631256333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A213923 ((n + 1) ^ 2)).toNat

end

end A091333.P15477141731631256333

/-! ## A091333.P4660300687240075944

`A004526(A005245((n+1)²)+1)`
-/

namespace A091333.P4660300687240075944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A005245 ((n + 1) ^ 2) + 1).toNat

end

end A091333.P4660300687240075944

/-! ## A091333.P15952381724146531421

`A008619(A005245((n+1)²)-1)`
-/

namespace A091333.P15952381724146531421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A005245 ((n + 1) ^ 2) - 1).toNat

end

end A091333.P15952381724146531421

/-! ## A091333.P15459447727561365112

`round(A005245((n+1)²)/2)%A004767(n)`
-/

namespace A091333.P15459447727561365112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A005245 ((n + 1) ^ 2) : ℚ) / 2)) (A004767 n)

end

end A091333.P15459447727561365112

/-! ## A091333.P10413827227505785137

`or(round(A005245((n+1)²)/2), A000007(n))`
-/

namespace A091333.P10413827227505785137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.roundAway ((A005245 ((n + 1) ^ 2) : ℚ) / 2)) (A000007 n)

end

end A091333.P10413827227505785137

/-! ## A091333.P4552296706985012875

`round(A005245((n+1)²)/A020639(2*(n+1)))`
-/

namespace A091333.P4552296706985012875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A005245 ((n + 1) ^ 2) : ℚ) / (A020639 (2 * (n + 1)) : ℚ))

end

end A091333.P4552296706985012875

/-! ## A091333.P18067454034600865610

`A110654(A005245(Δ[A153057(n)]))`
-/

namespace A091333.P18067454034600865610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A005245 (f1 (n + 1) - f1 n).toNat).toNat

end

end A091333.P18067454034600865610

/-!
# A091334: Number of 1's required to build n using +, -, *, ^, and parentheses.

The programs for A091334, there is no canonical definition to state claims against.
-/

/-! ## A091334.P12391233124960659481

`or(A324099(A323727(n+1)), A348089(n+1))`
-/

namespace A091334.P12391233124960659481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A324099 (A323727 (n + 1)).toNat) (A348089 (n + 1))

end

end A091334.P12391233124960659481

/-! ## A091334.P2950084122642390466

`or(A010054(A246311(n)), A348089(n+1))`
-/

namespace A091334.P2950084122642390466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A246311 n).toNat) (A348089 (n + 1))

end

end A091334.P2950084122642390466

/-! ## A091334.P15035420354024921609

`or(A262693(A165631(n+1)), A348089(n+1))`
-/

namespace A091334.P15035420354024921609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A262693 (A165631 (n + 1)).toNat) (A348089 (n + 1))

end

end A091334.P15035420354024921609

/-! ## A091334.P5589614608631617445

`A348089(n+1)+A010051(A329853(n+1))`
-/

namespace A091334.P5589614608631617445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348089 (n + 1) + A010051 (A329853 (n + 1)).toNat

end

end A091334.P5589614608631617445

/-! ## A091334.P2298633713613448715

`A348089(n+1)+A326291(A333159(n))`
-/

namespace A091334.P2298633713613448715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348089 (n + 1) + A326291 (A333159 n).toNat

end

end A091334.P2298633713613448715

/-!
# A091337: a(n) = (2/n), where (k/n) is the Kronecker symbol.

The programs for A091337, there is no canonical definition to state claims against.
-/

/-! ## A091337.P3488045178633729524

`A101455(n)*A188510(n)`
-/

namespace A091337.P3488045178633729524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 n * A188510 n

end

end A091337.P3488045178633729524

/-!
# A091338: a(n) = (3/n), where (k/n) is the Kronecker symbol.

The programs for A091338, the canonical program `A091338.P7387993790083234101` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091338 has offset 1).

The definition of A091338 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091338.P6492121879562822435

`Δ[xor(n, 2*n)]%2*∑[(-2)^(∑[n]%3)]`
-/

namespace A091338.P6492121879562822435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ ((∑ j ∈ Finset.range (n + 1), f3 j) % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) 2 * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A091338.P6492121879562822435

namespace A091338

/-- `Δ[xor(n, 2*n)]%2*∑[(-2)^(∑[n]%3)]` -/
def P6492121879562822435.Spec : Prop :=
  ∀ n, P6492121879562822435.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P7387993790083234101

`Δ[A005811(n)]*A049347(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091338

/-- `Δ[A005811(n)]*A049347(n)` -/
def P7387993790083234101.Spec : Prop :=
  ∀ n, P7387993790083234101.a n = A091338 (n + 1)

theorem P7387993790083234101.correct : P7387993790083234101.Spec := by
  intro n
  simp only [A091338, Nat.add_sub_cancel]

end A091338

/-! ## A091338.P5468712461484181752

`A034947(n+1)*A049347(n)`
-/

namespace A091338.P5468712461484181752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A049347 n

end

end A091338.P5468712461484181752

namespace A091338

/-- `A034947(n+1)*A049347(n)` -/
def P5468712461484181752.Spec : Prop :=
  ∀ n, P5468712461484181752.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P8293547293905862228

`A162397(n+1)/A119972(n+1)`
-/

namespace A091338.P8293547293905862228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162397 (n + 1) : ℚ) / (A119972 (n + 1) : ℚ)

end

end A091338.P8293547293905862228

namespace A091338

/-- `A162397(n+1)/A119972(n+1)` -/
def P8293547293905862228.Spec : Prop :=
  ∀ n, P8293547293905862228.a n = (A091338 (n + 1) : ℚ)

end A091338

/-! ## A091338.P4252889230574906381

`∑{d}[n+1, A008683(#)*A035186((n+1)/#)]`
-/

namespace A091338.P4252889230574906381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A035186 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091338.P4252889230574906381

namespace A091338

/-- `∑{d}[n+1, A008683(#)*A035186((n+1)/#)]` -/
def P4252889230574906381.Spec : Prop :=
  ∀ n, P4252889230574906381.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P17827334415270130967

`A033999(A025480(n))*A049347(n)`
-/

namespace A091338.P17827334415270130967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A025480 n).toNat * A049347 n

end

end A091338.P17827334415270130967

namespace A091338

/-- `A033999(A025480(n))*A049347(n)` -/
def P17827334415270130967.Spec : Prop :=
  ∀ n, P17827334415270130967.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P14751793236700482571

`A034947(n+1)*A102283(n+1)`
-/

namespace A091338.P14751793236700482571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (n + 1) * A102283 (n + 1)

end

end A091338.P14751793236700482571

namespace A091338

/-- `A034947(n+1)*A102283(n+1)` -/
def P14751793236700482571.Spec : Prop :=
  ∀ n, P14751793236700482571.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P14428838707423742292

`A106510(n+1)*A112347(n+1)`
-/

namespace A091338.P14428838707423742292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106510 (n + 1) * A112347 (n + 1)

end

end A091338.P14428838707423742292

namespace A091338

/-- `A106510(n+1)*A112347(n+1)` -/
def P14428838707423742292.Spec : Prop :=
  ∀ n, P14428838707423742292.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P12245142155385245549

`A102283(n+1)*A121238(n+1)`
-/

namespace A091338.P12245142155385245549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102283 (n + 1) * A121238 (n + 1)

end

end A091338.P12245142155385245549

namespace A091338

/-- `A102283(n+1)*A121238(n+1)` -/
def P12245142155385245549.Spec : Prop :=
  ∀ n, P12245142155385245549.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P7006194842069664051

`A010892(2*n+1)*A034947(2*(n+1))`
-/

namespace A091338.P7006194842069664051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (2 * n + 1) * A034947 (2 * (n + 1))

end

end A091338.P7006194842069664051

namespace A091338

/-- `A010892(2*n+1)*A034947(2*(n+1))` -/
def P7006194842069664051.Spec : Prop :=
  ∀ n, P7006194842069664051.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P14896220379271224714

`A163810(A081769(n+1))`
-/

namespace A091338.P14896220379271224714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 (A081769 (n + 1)).toNat

end

end A091338.P14896220379271224714

namespace A091338

/-- `A163810(A081769(n+1))` -/
def P14896220379271224714.Spec : Prop :=
  ∀ n, P14896220379271224714.a n = A091338 (n + 1)

end A091338

/-! ## A091338.P11516967095509692453

`A260192(A317332(n+1))`
-/

namespace A091338.P11516967095509692453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260192 (A317332 (n + 1)).toNat

end

end A091338.P11516967095509692453

namespace A091338

/-- `A260192(A317332(n+1))` -/
def P11516967095509692453.Spec : Prop :=
  ∀ n, P11516967095509692453.a n = A091338 (n + 1)

end A091338

/-!
# A091339: a(n) = a(n-1)*a(n-2) + (n-2); a(1) = 1, a(2) = 2.

The programs for A091339, the canonical program `A091339.P14890267995267948632` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091339 has offset 1).

The definition of A091339 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)+n-1` (program `A091339.P14890267995267948632`, by `A091339.P14890267995267948632.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091339.P14890267995267948632

`a(n-1)*a(n-2)+n-1` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091339

/-- `a(n-1)*a(n-2)+n-1` -/
def P14890267995267948632.Spec : Prop :=
  ∀ n, P14890267995267948632.a n = A091339 (n + 1)

theorem P14890267995267948632.correct : P14890267995267948632.Spec := by
  intro n
  simp only [A091339, Nat.add_sub_cancel]

end A091339

/-! ## A091339.P17325974185335770530

`n-(1-a(n-1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A091339.P17325974185335770530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) - (1 - a (n - 1) * a (n - 2))

end

end A091339.P17325974185335770530

namespace A091339

/-- `n-(1-a(n-1)*a(n-2))` -/
def P17325974185335770530.Spec : Prop :=
  ∀ n, P17325974185335770530.a n = A091339 (n + 1)

end A091339

/-! ## A091339.P3888731542603140840

`a(n-1)/tan(acot(a(n-2)))-1+n` with `a(0)=1, a(1)=2`
-/

namespace A091339.P3888731542603140840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / Real.tan (SequenceMachineLib.acot (a (n - 2))) - 1 + (n : ℝ)

end

end A091339.P3888731542603140840

namespace A091339

/-- `a(n-1)/tan(acot(a(n-2)))-1+n` -/
def P3888731542603140840.Spec : Prop :=
  ∀ n, P3888731542603140840.a n = (A091339 (n + 1) : ℝ)

end A091339

/-! ## A091339.P10910288059592029941

`a(n-1)/abs(1/a(n-2))-1+n` with `a(0)=1, a(1)=2`
-/

namespace A091339.P10910288059592029941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 1) / |1 / a (n - 2)| - 1 + (n : ℚ)

end

end A091339.P10910288059592029941

namespace A091339

/-- `a(n-1)/abs(1/a(n-2))-1+n` -/
def P10910288059592029941.Spec : Prop :=
  ∀ n, P10910288059592029941.a n = (A091339 (n + 1) : ℚ)

end A091339

/-! ## A091339.P17272562231277472519

`a(n-2)/(2/a(n-1)-1/a(n-1))-1+n` with `a(0)=1, a(1)=2`
-/

namespace A091339.P17272562231277472519
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) / (2 / a (n - 1) - 1 / a (n - 1)) - 1 + (n : ℚ)

end

end A091339.P17272562231277472519

namespace A091339

/-- `a(n-2)/(2/a(n-1)-1/a(n-1))-1+n` -/
def P17272562231277472519.Spec : Prop :=
  ∀ n, P17272562231277472519.a n = (A091339 (n + 1) : ℚ)

end A091339

/-!
# A091341: Natural numbers written out with their digits grouped in sets of 5 (leading zeros omitted).

The programs for A091341, there is no canonical definition to state claims against.
-/

/-! ## A091341.P7848482990013973536

`A193493(5*n+1)`
-/

namespace A091341.P7848482990013973536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193493 (5 * n + 1)

end

end A091341.P7848482990013973536

/-!
# A091342: Given (1) f(h,j,a) = ( [ ((a/gcd(a,h)) / gcd(j+1,(a/gcd(a,h)))) * (h(j+1)) ] - [ ((a/gcd(a,h)) / gcd(j+1,(a/gcd(a,h)))) * (ja) ] ) / a then let (2) a(h) = d(h,j) = lcm( f(h,j,1) ... f(h,j,h) ).

The programs for A091342, there is no canonical definition to state claims against.
-/

/-! ## A091342.P14436717139325236629

`lcm(n*lcm(n+1, a(n-1))/(n+1), Δ[n²])` with `a(0)=1`
-/

namespace A091342.P14436717139325236629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (SequenceMachineLib.roundAway ((n : ℚ) * ((Nat.lcm (n + 1) (a (n - 1)) : ℚ) / (n + 1 : ℚ)))) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A091342.P14436717139325236629

/-! ## A091342.P5837634119112121428

`A002944(2*(n+1))`
-/

namespace A091342.P5837634119112121428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002944 (2 * (n + 1))

end

end A091342.P5837634119112121428

/-! ## A091342.P11280499086890376499

`A082690(n+1)/2`
-/

namespace A091342.P11280499086890376499
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082690 (n + 1) : ℚ) / 2

end

end A091342.P11280499086890376499

/-! ## A091342.P10774314768240939113

`lcm(2, A025535(n))/2`
-/

namespace A091342.P10774314768240939113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A025535 n) : ℚ) / 2

end

end A091342.P10774314768240939113

/-! ## A091342.P17176727749017751450

`A119634(n)/(n+1)`
-/

namespace A091342.P17176727749017751450
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119634 n : ℚ) / (n + 1 : ℚ)

end

end A091342.P17176727749017751450

/-!
# A091344: a(n) = 2*3^n - 3*2^n + 1.

The programs for A091344, the canonical program `A091344.P9314832849917747821` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091344 has offset 0).

The definition of A091344 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*3^n-3*2^n+1` (program `A091344.P9314832849917747821`, by `A091344.P9314832849917747821.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091344.P9314832849917747821

`2*3^n-3*2^n+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091344

/-- `2*3^n-3*2^n+1` -/
def P9314832849917747821.Spec : Prop :=
  ∀ n, P9314832849917747821.a n = A091344 n

theorem P9314832849917747821.correct : P9314832849917747821.Spec := by
  intro n
  simp only [A091344]

end A091344

/-! ## A091344.P7000033698057447955

`∑[ogf((x+x^2)/(1-5x+6x^2))]`
-/

namespace A091344.P7000033698057447955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1] [1, -5, 6] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091344.P7000033698057447955

namespace A091344

/-- `∑[ogf((x+x^2)/(1-5x+6x^2))]` -/
def P7000033698057447955.Spec : Prop :=
  ∀ n, P7000033698057447955.a n = A091344 n

end A091344

/-! ## A091344.P3592018711315973306

`xor(1, Δ[3^n-abs(4-3*2^n)])`
-/

namespace A091344.P3592018711315973306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) - |4 - (3 * 2 ^ n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (f1 (n + 1) - f1 n)

end

end A091344.P3592018711315973306

namespace A091344

/-- `xor(1, Δ[3^n-abs(4-3*2^n)])` -/
def P3592018711315973306.Spec : Prop :=
  ∀ n, P3592018711315973306.a n = A091344 n

end A091344

/-! ## A091344.P16035015403062356370

`(4*3^n+1)%Δ[3^n+3*2^n]`
-/

namespace A091344.P16035015403062356370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n + 3 * 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * 3 ^ n + 1 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A091344.P16035015403062356370

namespace A091344

/-- `(4*3^n+1)%Δ[3^n+3*2^n]` -/
def P16035015403062356370.Spec : Prop :=
  ∀ n, P16035015403062356370.a n = A091344 n

end A091344

/-! ## A091344.P6255139771619160671

`abs(A245804(n)+1)`
-/

namespace A091344.P6255139771619160671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A245804 n + 1|

end

end A091344.P6255139771619160671

namespace A091344

/-- `abs(A245804(n)+1)` -/
def P6255139771619160671.Spec : Prop :=
  ∀ n, P6255139771619160671.a n = A091344 n

end A091344

/-! ## A091344.P6694550526640871514

`Δ[A001117(n)+n]`
-/

namespace A091344.P6694550526640871514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001117 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091344.P6694550526640871514

namespace A091344

/-- `Δ[A001117(n)+n]` -/
def P6694550526640871514.Spec : Prop :=
  ∀ n, P6694550526640871514.a n = A091344 n

theorem P6694550526640871514.correct : P6694550526640871514.Spec := by
  intro n
  simp only [A091344, Nat.add_sub_cancel, A091344.P6694550526640871514.f1, A091344.P6694550526640871514.a, A091344.P9314832849917747821.a, A001117, A001117.P5586515972310678558.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091344

/-! ## A091344.P13537852719862470217

`∑[A169651(n+1)-1]`
-/

namespace A091344.P13537852719862470217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169651 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091344.P13537852719862470217

namespace A091344

/-- `∑[A169651(n+1)-1]` -/
def P13537852719862470217.Spec : Prop :=
  ∀ n, P13537852719862470217.a n = A091344 n

end A091344

/-! ## A091344.P18379975909927855814

`Δ[A001047(n)-(2^(n+1)-n)]`
-/

namespace A091344.P18379975909927855814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001047 n - ((2 ^ (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091344.P18379975909927855814

namespace A091344

/-- `Δ[A001047(n)-(2^(n+1)-n)]` -/
def P18379975909927855814.Spec : Prop :=
  ∀ n, P18379975909927855814.a n = A091344 n

theorem P18379975909927855814.correct : P18379975909927855814.Spec := by
  intro n
  simp only [A091344, Nat.add_sub_cancel, A091344.P18379975909927855814.f1, A091344.P18379975909927855814.a, A091344.P9314832849917747821.a, A001047, A001047.P13659031121335709313.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A091344

/-! ## A091344.P1463524492271039532

`abs(A000079(n)-A002783(n))`
-/

namespace A091344.P1463524492271039532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A002783 n|

end

end A091344.P1463524492271039532

namespace A091344

/-- `abs(A000079(n)-A002783(n))` -/
def P1463524492271039532.Spec : Prop :=
  ∀ n, P1463524492271039532.a n = A091344 n

end A091344

/-! ## A091344.P313217786044242212

`∑[A003946(n)-A003945(n)]`
-/

namespace A091344.P313217786044242212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003946 n - A003945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091344.P313217786044242212

namespace A091344

/-- `∑[A003946(n)-A003945(n)]` -/
def P313217786044242212.Spec : Prop :=
  ∀ n, P313217786044242212.a n = A091344 n

end A091344

/-! ## A091344.P15572489545449731596

`∑[A053581(n)-A000079(n)]`
-/

namespace A091344.P15572489545449731596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053581 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091344.P15572489545449731596

namespace A091344

/-- `∑[A053581(n)-A000079(n)]` -/
def P15572489545449731596.Spec : Prop :=
  ∀ n, P15572489545449731596.a n = A091344 n

end A091344

/-! ## A091344.P16188623784526436273

`Δ[A034472(n)-A079583(n)]`
-/

namespace A091344.P16188623784526436273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n - A079583 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091344.P16188623784526436273

namespace A091344

/-- `Δ[A034472(n)-A079583(n)]` -/
def P16188623784526436273.Spec : Prop :=
  ∀ n, P16188623784526436273.a n = A091344 n

theorem P16188623784526436273.correct : P16188623784526436273.Spec := by
  intro n
  simp only [A091344, Nat.add_sub_cancel, A091344.P16188623784526436273.f1, A091344.P16188623784526436273.a, A091344.P9314832849917747821.a, A034472, A034472.P6935477064191477456.a, A079583, A079583.P17690850374586656008.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091344

/-! ## A091344.P3768469950618427409

`(A166060(n)-A033484(n))/2`
-/

namespace A091344.P3768469950618427409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166060 n - A033484 n : ℚ) / 2

end

end A091344.P3768469950618427409

namespace A091344

/-- `(A166060(n)-A033484(n))/2` -/
def P3768469950618427409.Spec : Prop :=
  ∀ n, P3768469950618427409.a n = (A091344 n : ℚ)

theorem P3768469950618427409.correct : P3768469950618427409.Spec := by
  intro n
  simp only [A091344, Nat.add_sub_cancel, A091344.P3768469950618427409.a, A091344.P9314832849917747821.a, A033484, A033484.P10856640375789116383.a, A166060, A166060.P1727466123413902011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091344

/-! ## A091344.P3278338674973958822

`∑[A000392(n+2)-A000392(n)]`
-/

namespace A091344.P3278338674973958822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 (n + 2) - A000392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091344.P3278338674973958822

namespace A091344

/-- `∑[A000392(n+2)-A000392(n)]` -/
def P3278338674973958822.Spec : Prop :=
  ∀ n, P3278338674973958822.a n = A091344 n

end A091344

/-! ## A091344.P10066859910597817502

`A056489(2*(n+1))/3`
-/

namespace A091344.P10066859910597817502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056489 (2 * (n + 1)) : ℚ) / 3

end

end A091344.P10066859910597817502

namespace A091344

/-- `A056489(2*(n+1))/3` -/
def P10066859910597817502.Spec : Prop :=
  ∀ n, P10066859910597817502.a n = (A091344 n : ℚ)

end A091344

/-!
# A091345: Exponential convolution of A069321(n) with itself, where we set A069321(0)=0.

The programs for A091345, there is no canonical definition to state claims against.
-/

/-! ## A091345.P13942458058938913347

`A226738(n)-A083410(n+1)`
-/

namespace A091345.P13942458058938913347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226738 n - A083410 (n + 1)

end

end A091345.P13942458058938913347

/-! ## A091345.P6134425777796855156

`A226738(n)-A005649(n+1)/2`
-/

namespace A091345.P6134425777796855156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226738 n : ℚ) - (A005649 (n + 1) : ℚ) / 2

end

end A091345.P6134425777796855156

/-! ## A091345.P2650654292458017418

`A226738(n)-A327868(2*(n+1))/2`
-/

namespace A091345.P2650654292458017418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226738 n : ℚ) - (A327868 (2 * (n + 1)) : ℚ) / 2

end

end A091345.P2650654292458017418

/-! ## A091345.P12052724594962505953

`A226513(∑[n+4]+2)-A083410(n+1)`
-/

namespace A091345.P12052724594962505953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - A083410 (n + 1)

end

end A091345.P12052724594962505953

/-! ## A091345.P1571084547007722886

`A226738(n)-(A091346(n+1)+A091346(n))`
-/

namespace A091345.P1571084547007722886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226738 n - (A091346 (n + 1) + A091346 n)

end

end A091345.P1571084547007722886

/-!
# A091346: Binomial convolution of A069321(n), where A069321(0)=0, with the sequence of all 1's alternating in sign.

The programs for A091346, there is no canonical definition to state claims against.
-/

/-! ## A091346.P824417771314519066

`(A000670(n+1)+(-1)^(n+1))/4`
-/

namespace A091346.P824417771314519066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000670 (n + 1) + (-1) ^ (n + 1) : ℚ) / 4

end

end A091346.P824417771314519066

/-! ## A091346.P4233368226893179468

`A052841(n+1)/2`
-/

namespace A091346.P4233368226893179468
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052841 (n + 1) : ℚ) / 2

end

end A091346.P4233368226893179468

/-! ## A091346.P11906905145870052049

`Δ[floor(A217389(n)/4)]`
-/

namespace A091346.P11906905145870052049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A217389 n : ℚ) / 4⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091346.P11906905145870052049

/-! ## A091346.P17121973616170473293

`record[round(A154921(n)/4)]`
-/

namespace A091346.P17121973616170473293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A154921 n : ℚ) / 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091346.P17121973616170473293

/-! ## A091346.P4951973885507417906

`floor(A052856(n+1)/4)`
-/

namespace A091346.P4951973885507417906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052856 (n + 1) : ℚ) / 4⌋

end

end A091346.P4951973885507417906

/-! ## A091346.P11324010984214107013

`ceil(A052875(n+1)/4)`
-/

namespace A091346.P11324010984214107013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A052875 (n + 1) : ℚ) / 4⌉

end

end A091346.P11324010984214107013

/-! ## A091346.P8116964213169541973

`round(A000670(n+1)/4)`
-/

namespace A091346.P8116964213169541973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000670 (n + 1) : ℚ) / 4)

end

end A091346.P8116964213169541973

/-! ## A091346.P3206370726437679568

`round(A000629(n+1)/8)`
-/

namespace A091346.P3206370726437679568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000629 (n + 1) : ℚ) / 8)

end

end A091346.P3206370726437679568

/-! ## A091346.P8826573301670014127

`A122101(∑[n+2])/2`
-/

namespace A091346.P8826573301670014127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122101 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 2

end

end A091346.P8826573301670014127

/-! ## A091346.P3267969493139266995

`round(A327868(2*n+1)/4)`
-/

namespace A091346.P3267969493139266995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A327868 (2 * n + 1) : ℚ) / 4)

end

end A091346.P3267969493139266995

/-!
# A091347: a(n) = 6*4^n - 12*3^n + 7*2^n - 1.

The programs for A091347, the canonical program `A091347.P9446160002068488150` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091347 has offset 0).

The definition of A091347 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*4^n-12*3^n+7*2^n-1` (program `A091347.P9446160002068488150`, by `A091347.P9446160002068488150.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091347.P9446160002068488150

`6*4^n-12*3^n+7*2^n-1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091347

/-- `6*4^n-12*3^n+7*2^n-1` -/
def P9446160002068488150.Spec : Prop :=
  ∀ n, P9446160002068488150.a n = A091347 n

theorem P9446160002068488150.correct : P9446160002068488150.Spec := by
  intro n
  simp only [A091347]

end A091347

/-! ## A091347.P12106050534621977407

`∑[abs(Δ[A162723(n)])]`
-/

namespace A091347.P12106050534621977407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162723 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091347.P12106050534621977407

namespace A091347

/-- `∑[abs(Δ[A162723(n)])]` -/
def P12106050534621977407.Spec : Prop :=
  ∀ n, P12106050534621977407.a n = A091347 n

end A091347

/-! ## A091347.P2729756021461148369

`abs(1-A162723(n+1))`
-/

namespace A091347.P2729756021461148369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A162723 (n + 1)|

end

end A091347.P2729756021461148369

namespace A091347

/-- `abs(1-A162723(n+1))` -/
def P2729756021461148369.Spec : Prop :=
  ∀ n, P2729756021461148369.a n = A091347 n

end A091347

/-! ## A091347.P8715550636726803556

`record[Δ[A162723(∑[n+1]%(n+2))]]`
-/

namespace A091347.P8715550636726803556
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162723 ((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 2))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091347.P8715550636726803556

namespace A091347

/-- `record[Δ[A162723(∑[n+1]%(n+2))]]` -/
def P8715550636726803556.Spec : Prop :=
  ∀ n, P8715550636726803556.a n = A091347 n

end A091347

/-! ## A091347.P17124621652857175279

`∑[A162723(n+1)-A162723(n)]`
-/

namespace A091347.P17124621652857175279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162723 (n + 1) - A162723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091347.P17124621652857175279

namespace A091347

/-- `∑[A162723(n+1)-A162723(n)]` -/
def P17124621652857175279.Spec : Prop :=
  ∀ n, P17124621652857175279.a n = A091347 n

end A091347

/-!
# A091348: a(n) = 24*5^n - 60*4^n + 50*3^n - 15*2^n + 1.

The programs for A091348, the canonical program `A091348.P15282774004803408470` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091348 has offset 0).

The definition of A091348 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `24*5^n-60*4^n+50*3^n-15*2^n+1` (program `A091348.P15282774004803408470`, by `A091348.P15282774004803408470.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091348.P15282774004803408470

`24*5^n-60*4^n+50*3^n-15*2^n+1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091348

/-- `24*5^n-60*4^n+50*3^n-15*2^n+1` -/
def P15282774004803408470.Spec : Prop :=
  ∀ n, P15282774004803408470.a n = A091348 n

theorem P15282774004803408470.correct : P15282774004803408470.Spec := by
  intro n
  simp only [A091348]

end A091348

/-! ## A091348.P18234295567768701805

`A057427(n)*A136126(A046691(n+2))`
-/

namespace A091348.P18234295567768701805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A136126 (A046691 (n + 2)).toNat

end

end A091348.P18234295567768701805

namespace A091348

/-- `A057427(n)*A136126(A046691(n+2))` -/
def P18234295567768701805.Spec : Prop :=
  ∀ n, P18234295567768701805.a n = A091348 n

end A091348

/-! ## A091348.P17337100629883770651

`A136126(A046691(n+2))*A178334(n)`
-/

namespace A091348.P17337100629883770651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136126 (A046691 (n + 2)).toNat * A178334 n

end

end A091348.P17337100629883770651

namespace A091348

/-- `A136126(A046691(n+2))*A178334(n)` -/
def P17337100629883770651.Spec : Prop :=
  ∀ n, P17337100629883770651.a n = A091348 n

end A091348

/-!
# A091351: Triangle T, read by rows, such that T(n,k) equals the (n-k)-th row sum of T^k, where T^k is the k-th power of T as a lower triangular matrix.

The programs for A091351, there is no canonical definition to state claims against.
-/

/-! ## A091351.P15783950233318960371

`A098446(∑[2*n]%comp[∑[n]])`
-/

namespace A091351.P15783950233318960371
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098446 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A091351.P15783950233318960371

/-! ## A091351.P18326105893286489327

`A098446(∑[char[∑[n]]]²-n-1)`
-/

namespace A091351.P18326105893286489327
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098446 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) - 1).toNat

end

end A091351.P18326105893286489327

/-! ## A091351.P6970300265459271365

`and(-1, A098446(A061579(n)))`
-/

namespace A091351.P6970300265459271365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A098446 (A061579 n).toNat)

end

end A091351.P6970300265459271365

/-! ## A091351.P2199064401590675448

`A264668(n)+A098446(A061579(n))`
-/

namespace A091351.P2199064401590675448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264668 n + A098446 (A061579 n).toNat

end

end A091351.P2199064401590675448

/-! ## A091351.P14838612991011035435

`A098446(A061579(n))^A178334(n)`
-/

namespace A091351.P14838612991011035435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098446 (A061579 n).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A091351.P14838612991011035435

/-! ## A091351.P7339475186219733612

`A098446(A061579(n))%A017090(n)`
-/

namespace A091351.P7339475186219733612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098446 (A061579 n).toNat) (A017090 n)

end

end A091351.P7339475186219733612

/-! ## A091351.P9892896797712280740

`gcd(A000038(n), A098446(A061579(n)))`
-/

namespace A091351.P9892896797712280740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A098446 (A061579 n).toNat)

end

end A091351.P9892896797712280740

/-! ## A091351.P6228258802869151988

`lcm(A033999(n), A098446(A061579(n)))`
-/

namespace A091351.P6228258802869151988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A098446 (A061579 n).toNat)

end

end A091351.P6228258802869151988

/-! ## A091351.P7297082561038939297

`A098446(A061579(n))^A000005(C(2, n+2)+1)`
-/

namespace A091351.P7297082561038939297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098446 (A061579 n).toNat : ℚ) ^ (A000005 (Nat.choose 2 (n + 2) + 1) : ℤ)

end

end A091351.P7297082561038939297

/-!
# A091352: Row sums of triangle A091351, in which the k-th column lists the row sums of the k-th power of A091351 (when considered as a lower triangular matrix).

The programs for A091352, there is no canonical definition to state claims against.
-/

/-! ## A091352.P4097726130403026372

`record[ratio[A091351(n)]]`
-/

namespace A091352.P4097726130403026372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091352.P4097726130403026372

/-! ## A091352.P8805164357120731378

`A091351(∑[n+1]+1)`
-/

namespace A091352.P8805164357120731378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A091352.P8805164357120731378

/-! ## A091352.P292402604086767324

`record[A127420(n)]`
-/

namespace A091352.P292402604086767324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091352.P292402604086767324

/-! ## A091352.P10762605322177824468

`A104448(n)-a(n-1)` with `a(0)=1`
-/

namespace A091352.P10762605322177824468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A104448 n - a (n - 1)

end

end A091352.P10762605322177824468

/-! ## A091352.P3940361750643644060

`A104447(n+1)-A091353(n)`
-/

namespace A091352.P3940361750643644060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104447 (n + 1) - A091353 n

end

end A091352.P3940361750643644060

/-!
# A091353: Row sums of the matrix square of triangle A091351, in which the k-th column lists the row sums of A091351^k (the k-th power of A091351 when considered as a lower triangular matrix).

The programs for A091353, there is no canonical definition to state claims against.
-/

/-! ## A091353.P7838803074976386582

`A091351(eq[2, A002262(n)])`
-/

namespace A091353.P7838803074976386582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091353.P7838803074976386582

/-! ## A091353.P1528335715756340487

`A091351(A034856(n+1)+4)`
-/

namespace A091353.P1528335715756340487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (A034856 (n + 1) + 4).toNat

end

end A091353.P1528335715756340487

/-! ## A091353.P5919217438810958464

`A091351(A166136(n+1)-4)`
-/

namespace A091353.P5919217438810958464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (A166136 (n + 1) - 4).toNat

end

end A091353.P5919217438810958464

/-! ## A091353.P707071054010149661

`A104447(n+1)-A091352(n)`
-/

namespace A091353.P707071054010149661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104447 (n + 1) - A091352 n

end

end A091353.P707071054010149661

/-! ## A091353.P3360203106683262881

`A104447(n+1)-A091351(A000096(n)+2)`
-/

namespace A091353.P3360203106683262881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104447 (n + 1) - A091351 (A000096 n + 2).toNat

end

end A091353.P3360203106683262881

/-!
# A091354: Row sums of the matrix cube of triangle A091351, in which the k-th column lists the row sums of A091351^k (the k-th power of A091351 when considered as a lower triangular matrix).

The programs for A091354, there is no canonical definition to state claims against.
-/

/-! ## A091354.P5752916679815376911

`A091351(∑[n+2]+7+n)`
-/

namespace A091354.P5752916679815376911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091351 (∑ j ∈ Finset.range (n + 1), f1 j + 7 + n)

end

end A091354.P5752916679815376911

/-! ## A091354.P15566964294183025185

`A098446(∑[n+3]+n+3)`
-/

namespace A091354.P15566964294183025185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098446 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A091354.P15566964294183025185

/-! ## A091354.P5293000505296513853

`A104445(A167614(n+3))`
-/

namespace A091354.P5293000505296513853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104445 (A167614 (n + 3)).toNat

end

end A091354.P5293000505296513853

/-! ## A091354.P935837928955858128

`A104445(eq[4, A128227(n)])`
-/

namespace A091354.P935837928955858128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104445 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A091354.P935837928955858128

/-!
# A091355: Triangle read by rows: T(n,k) = number of planar partitions of n with k rows.

The programs for A091355, there is no canonical definition to state claims against.
-/

/-! ## A091355.P2172243928833883602

`A061260(n+1)-A076869(A069777(n))`
-/

namespace A091355.P2172243928833883602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061260 (n + 1) - A076869 (A069777 n).toNat

end

end A091355.P2172243928833883602

/-! ## A091355.P17128699630768950212

`A343265(A185945(n))`
-/

namespace A091355.P17128699630768950212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343265 (A185945 n).toNat

end

end A091355.P17128699630768950212

/-! ## A091355.P17098743805780763717

`A100144(A336769(n+1))/2`
-/

namespace A091355.P17098743805780763717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100144 (A336769 (n + 1)).toNat : ℚ) / 2

end

end A091355.P17098743805780763717

/-! ## A091355.P13071500572474713818

`A307598(A281446(n))+A038497(n+1)`
-/

namespace A091355.P13071500572474713818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307598 (A281446 n).toNat + A038497 (n + 1)

end

end A091355.P13071500572474713818

/-! ## A091355.P9912707123721094175

`or(A024316(A026547(n)), A038497(n+1))`
-/

namespace A091355.P9912707123721094175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024316 (A026547 n).toNat) (A038497 (n + 1))

end

end A091355.P9912707123721094175

/-!
# A091356: Number of planar partitions of n with exactly 2 rows.

The programs for A091356, there is no canonical definition to state claims against.
-/

/-! ## A091356.P13329698449895389261

`A000990(n+2)-A000041(n+2)`
-/

namespace A091356.P13329698449895389261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 (n + 2) - A000041 (n + 2)

end

end A091356.P13329698449895389261

/-! ## A091356.P14271956367595708114

`A000990(n+2)-Δ[A000070(n+1)]`
-/

namespace A091356.P14271956367595708114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000990 (n + 2) - (f1 (n + 1) - f1 n)

end

end A091356.P14271956367595708114

/-! ## A091356.P8599509483814609534

`A122768(n+2)-A000712(n+1)`
-/

namespace A091356.P8599509483814609534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122768 (n + 2) - A000712 (n + 1)

end

end A091356.P8599509483814609534

/-! ## A091356.P8399494505832028439

`Δ[A000712(n+1)-A000070(n+1)]`
-/

namespace A091356.P8399494505832028439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n + 1) - A000070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091356.P8399494505832028439

/-! ## A091356.P4698889726656529700

`Δ[A000712(n+1)]-A000041(n+2)`
-/

namespace A091356.P4698889726656529700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A000041 (n + 2)

end

end A091356.P4698889726656529700

/-! ## A091356.P14499807667966072201

`A091355(∑[n+1]+2)`
-/

namespace A091356.P14499807667966072201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A091356.P14499807667966072201

/-!
# A091357: Number of planar partitions of n with exactly 3 rows.

The programs for A091357, there is no canonical definition to state claims against.
-/

/-! ## A091357.P5291097171364224431

`A000991(n+3)-A000990(n+3)`
-/

namespace A091357.P5291097171364224431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000991 (n + 3) - A000990 (n + 3)

end

end A091357.P5291097171364224431

/-! ## A091357.P13413188148256731141

`A091355(∑[n+2]+4)`
-/

namespace A091357.P13413188148256731141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A091357.P13413188148256731141

/-! ## A091357.P8633687838626276078

`or(char[2], A091355(A167614(n+1)))`
-/

namespace A091357.P8633687838626276078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A091355 (A167614 (n + 1)).toNat)

end

end A091357.P8633687838626276078

/-! ## A091357.P9947911853887993110

`A091355(A167614(n+1))%A281500(n)`
-/

namespace A091357.P9947911853887993110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091355 (A167614 (n + 1)).toNat) (A281500 n)

end

end A091357.P9947911853887993110

/-!
# A091358: Number of planar partitions of n with exactly 4 rows.

The programs for A091358, there is no canonical definition to state claims against.
-/

/-! ## A091358.P2816866545932755242

`A002799(n+4)-A000991(n+4)`
-/

namespace A091358.P2816866545932755242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002799 (n + 4) - A000991 (n + 4)

end

end A091358.P2816866545932755242

/-! ## A091358.P9547775736296993709

`A091355(∑[n+3]+7)`
-/

namespace A091358.P9547775736296993709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A091358.P9547775736296993709

/-! ## A091358.P18294110788367057182

`or(char[2], A091355(A034856(n+2)+6))`
-/

namespace A091358.P18294110788367057182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A091355 (A034856 (n + 2) + 6).toNat)

end

end A091358.P18294110788367057182

/-! ## A091358.P14075471114778199545

`A185012(n+3)+A091355(A034856(n+2)+6)`
-/

namespace A091358.P14075471114778199545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185012 (n + 3) + A091355 (A034856 (n + 2) + 6).toNat

end

end A091358.P14075471114778199545

/-! ## A091358.P15696658984376223372

`A007318(C(n, 2))*A091355(A034856(n+2)+6)`
-/

namespace A091358.P15696658984376223372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A091355 (A034856 (n + 2) + 6).toNat

end

end A091358.P15696658984376223372

/-!
# A091359: Number of planar partitions of n with exactly 5 rows.

The programs for A091359, there is no canonical definition to state claims against.
-/

/-! ## A091359.P3681891710101413922

`A001452(n+5)-A002799(n+5)`
-/

namespace A091359.P3681891710101413922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001452 (n + 5) - A002799 (n + 5)

end

end A091359.P3681891710101413922

/-! ## A091359.P12689429885322047601

`A091355(A167499(n+3))`
-/

namespace A091359.P12689429885322047601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (A167499 (n + 3)).toNat

end

end A091359.P12689429885322047601

/-! ## A091359.P6033546765231587000

`A091355(A077169(n+5))`
-/

namespace A091359.P6033546765231587000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (A077169 (n + 5)).toNat

end

end A091359.P6033546765231587000

/-! ## A091359.P10345440854487216695

`A091355(A155212(n)+13)`
-/

namespace A091359.P10345440854487216695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (A155212 n + 13).toNat

end

end A091359.P10345440854487216695

/-! ## A091359.P11716415984038778542

`A091355(A056000(n)+15)`
-/

namespace A091359.P11716415984038778542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (A056000 n + 15).toNat

end

end A091359.P11716415984038778542

/-! ## A091359.P6922892732064814984

`A091355(A000124(n+4)+4)`
-/

namespace A091359.P6922892732064814984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091355 (A000124 (n + 4) + 4).toNat

end

end A091359.P6922892732064814984

/-!
# A091360: Partial sums of A000219.

The programs for A091360, there is no canonical definition to state claims against.
-/

/-! ## A091360.P3187585757415048837

`∑[A000219(n)]`
-/

namespace A091360.P3187585757415048837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000219 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P3187585757415048837

/-! ## A091360.P18167494914469656565

`A309267(n)+a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A091360.P18167494914469656565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A309267 n + a (n - 2)

end

end A091360.P18167494914469656565

/-! ## A091360.P15519178098066022208

`∑[A191659(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A091360.P15519178098066022208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A191659 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P15519178098066022208

/-! ## A091360.P5995102476933425709

`∑[∑[A191659(n)]+1-A191659(n)]`
-/

namespace A091360.P5995102476933425709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191659 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1 - A191659 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P5995102476933425709

/-! ## A091360.P2033297686750456403

`A000219(A110654(2*n))+a(n-1)` with `a(0)=1`
-/

namespace A091360.P2033297686750456403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000219 (A110654 (2 * n)).toNat + a (n - 1)

end

end A091360.P2033297686750456403

/-! ## A091360.P13413154822011502257

`Δ[A360489(n)]`
-/

namespace A091360.P13413154822011502257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091360.P13413154822011502257

/-! ## A091360.P8265778110410522958

`A360489(n+1)-A360489(n)`
-/

namespace A091360.P8265778110410522958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360489 (n + 1) - A360489 n

end

end A091360.P8265778110410522958

/-! ## A091360.P16295355667050129282

`∑[sqrt(A383354(n))]`
-/

namespace A091360.P16295355667050129282
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A383354 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P16295355667050129282

/-! ## A091360.P8823338692312715409

`∑[A000712(n)+A116600(n)-A011782(n)]`
-/

namespace A091360.P8823338692312715409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000712 n + (A116600 n - A011782 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P8823338692312715409

/-! ## A091360.P788804139333933545

`∑[A242642(A179865(n+1))]`
-/

namespace A091360.P788804139333933545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P788804139333933545

/-! ## A091360.P15213143214553156359

`∑[A242642(A000007(n)+∑[n])]`
-/

namespace A091360.P15213143214553156359
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242642 (A000007 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P15213143214553156359

/-! ## A091360.P8455638566935487145

`∑[A257673(A133263(n)-1)]`
-/

namespace A091360.P8455638566935487145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257673 (A133263 n - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P8455638566935487145

/-! ## A091360.P7036065939475985697

`∑[A255961(∑[n+2]-1)]`
-/

namespace A091360.P7036065939475985697
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255961 (∑ j ∈ Finset.range (n + 1), f2 j - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P7036065939475985697

/-! ## A091360.P12631441434773221831

`∑[A293551(∑[n+3])]`
-/

namespace A091360.P12631441434773221831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293551 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P12631441434773221831

/-! ## A091360.P5917842792780769329

`∑[A242641(A058331(n))]`
-/

namespace A091360.P5917842792780769329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (A058331 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P5917842792780769329

/-! ## A091360.P10279479471560150306

`∑[A242641(2*(n+1)²)]`
-/

namespace A091360.P10279479471560150306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242641 (2 * (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091360.P10279479471560150306

/-!
# A091361: Numbers n such that A001840(n) == 0 (mod n).

The programs for A091361, the canonical program `A091361.P4619264413993641148` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091361 has offset 1).

The definition of A091361 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091361.P4619264413993641148

`6+a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091361

/-- `6+a(n-1)` -/
def P4619264413993641148.Spec : Prop :=
  ∀ n, (P4619264413993641148.a n : ℤ) = A091361 (n + 1)

theorem P4619264413993641148.correct : P4619264413993641148.Spec := by
  intro n
  simp only [A091361, Nat.add_sub_cancel]

end A091361

/-!
# A091362: Primes p such that the sum of the digits of p is not prime, but the sum of the squares of the digits of p is prime.

The programs for A091362, the canonical program `A091362.P6318580456760933466` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091362 has offset 1).

The definition of A091362 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091362.P6318580456760933466

`∩[A052034(n+1), A247122(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A091362

/-- `∩[A052034(n+1), A247122(n+1)]` -/
def P6318580456760933466.Spec : Prop :=
  ∀ n, (P6318580456760933466.a n : ℤ) = A091362 (n + 1)

theorem P6318580456760933466.correct : P6318580456760933466.Spec := by
  intro n
  simp only [A091362, Nat.add_sub_cancel]

end A091362

/-! ## A091362.P17967395642650190087

`∩[A000040(A177149(n+1)), A247122(n+1)]`
-/

namespace A091362.P17967395642650190087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A177149 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091362.P17967395642650190087

namespace A091362

/-- `∩[A000040(A177149(n+1)), A247122(n+1)]` -/
def P17967395642650190087.Spec : Prop :=
  ∀ n, (P17967395642650190087.a n : ℤ) = A091362 (n + 1)

end A091362

/-! ## A091362.P8178716242356404255

`p?[A121614(n+1)]`
-/

namespace A091362.P8178716242356404255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091362.P8178716242356404255

namespace A091362

/-- `p?[A121614(n+1)]` -/
def P8178716242356404255.Spec : Prop :=
  ∀ n, P8178716242356404255.a n = A091362 (n + 1)

end A091362

/-!
# A091363: a(n) = n!*n^3.

The programs for A091363, the canonical program `A091363.P12255685773322272690` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091363 has offset 0).

The definition of A091363 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*n^3` (program `A091363.P12255685773322272690`, by `A091363.P12255685773322272690.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091363.P12255685773322272690

`n!*n^3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091363

/-- `n!*n^3` -/
def P12255685773322272690.Spec : Prop :=
  ∀ n, (P12255685773322272690.a n : ℤ) = A091363 n

theorem P12255685773322272690.correct : P12255685773322272690.Spec := by
  intro n
  simp only [A091363]

end A091363

/-! ## A091363.P12542945329542600398

`n²*Δ[n!]`
-/

namespace A091363.P12542945329542600398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A091363.P12542945329542600398

namespace A091363

/-- `n²*Δ[n!]` -/
def P12542945329542600398.Spec : Prop :=
  ∀ n, P12542945329542600398.a n = A091363 n

theorem P12542945329542600398.correct : P12542945329542600398.Spec := by
  intro n
  simp only [A091363, Nat.add_sub_cancel, A091363.P12542945329542600398.f1, A091363.P12542945329542600398.a, A091363.P12255685773322272690.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A091363

/-! ## A091363.P6478712847796868574

`n*n²*n!`
-/

namespace A091363.P6478712847796868574
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 * Nat.factorial n)

end

end A091363.P6478712847796868574

namespace A091363

/-- `n*n²*n!` -/
def P6478712847796868574.Spec : Prop :=
  ∀ n, (P6478712847796868574.a n : ℤ) = A091363 n

theorem P6478712847796868574.correct : P6478712847796868574.Spec := by
  intro n
  simp only [A091363, Nat.add_sub_cancel, A091363.P6478712847796868574.a, A091363.P12255685773322272690.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091363

/-! ## A091363.P4223939857134944183

`n*n*Δ[n!]`
-/

namespace A091363.P4223939857134944183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A091363.P4223939857134944183

namespace A091363

/-- `n*n*Δ[n!]` -/
def P4223939857134944183.Spec : Prop :=
  ∀ n, P4223939857134944183.a n = A091363 n

theorem P4223939857134944183.correct : P4223939857134944183.Spec := by
  intro n
  simp only [A091363, Nat.add_sub_cancel, A091363.P4223939857134944183.f1, A091363.P4223939857134944183.a, A091363.P12255685773322272690.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A091363

/-! ## A091363.P15269736863233826706

`n*n*n*n!`
-/

namespace A091363.P15269736863233826706
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n * (n * Nat.factorial n))

end

end A091363.P15269736863233826706

namespace A091363

/-- `n*n*n*n!` -/
def P15269736863233826706.Spec : Prop :=
  ∀ n, (P15269736863233826706.a n : ℤ) = A091363 n

theorem P15269736863233826706.correct : P15269736863233826706.Spec := by
  intro n
  simp only [A091363, Nat.add_sub_cancel, A091363.P15269736863233826706.a, A091363.P12255685773322272690.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091363

/-! ## A091363.P8706123288256689851

`n²*Δ[n*a(n-1)]` with `a(0)=1`
-/

namespace A091363.P8706123288256689851
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  n * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A091363.P8706123288256689851

namespace A091363

/-- `n²*Δ[n*a(n-1)]` -/
def P8706123288256689851.Spec : Prop :=
  ∀ n, P8706123288256689851.a n = A091363 n

end A091363

/-! ## A091363.P2038187776556704107

`∏[n+1]/(n+1)*n^3`
-/

namespace A091363.P2038187776556704107
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) * (n ^ 3 : ℚ)

end

end A091363.P2038187776556704107

namespace A091363

/-- `∏[n+1]/(n+1)*n^3` -/
def P2038187776556704107.Spec : Prop :=
  ∀ n, P2038187776556704107.a n = (A091363 n : ℚ)

end A091363

/-! ## A091363.P15532885392688259349

`A002776(n)-A001563(n+1)`
-/

namespace A091363.P15532885392688259349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002776 n - A001563 (n + 1)

end

end A091363.P15532885392688259349

namespace A091363

/-- `A002776(n)-A001563(n+1)` -/
def P15532885392688259349.Spec : Prop :=
  ∀ n, P15532885392688259349.a n = A091363 n

end A091363

/-! ## A091363.P10541593589842660575

`A000578(n)*A038507(n)-A000578(n)`
-/

namespace A091363.P10541593589842660575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n * A038507 n - A000578 n

end

end A091363.P10541593589842660575

namespace A091363

/-- `A000578(n)*A038507(n)-A000578(n)` -/
def P10541593589842660575.Spec : Prop :=
  ∀ n, P10541593589842660575.a n = A091363 n

theorem P10541593589842660575.correct : P10541593589842660575.Spec := by
  intro n
  simp only [A091363, Nat.add_sub_cancel, A091363.P10541593589842660575.a, A091363.P12255685773322272690.a, A000578, A000578.P12162961755414704816.a, A038507, A038507.P6297172410669872132.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A091363

/-!
# A091364: a(n) = n! * n^4.

The programs for A091364, the canonical program `A091364.P9476798777241005949` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091364 has offset 0).

The definition of A091364 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*n^4` (program `A091364.P9476798777241005949`, by `A091364.P9476798777241005949.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A091364.P9476798777241005949

`n!*n^4`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091364

/-- `n!*n^4` -/
def P9476798777241005949.Spec : Prop :=
  ∀ n, (P9476798777241005949.a n : ℤ) = A091364 n

theorem P9476798777241005949.correct : P9476798777241005949.Spec := by
  intro n
  simp only [A091364]

end A091364

/-! ## A091364.P11543823506353253166

`n²²*n!`
-/

namespace A091364.P11543823506353253166
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ 2) ^ 2 * Nat.factorial n

end

end A091364.P11543823506353253166

namespace A091364

/-- `n²²*n!` -/
def P11543823506353253166.Spec : Prop :=
  ∀ n, (P11543823506353253166.a n : ℤ) = A091364 n

theorem P11543823506353253166.correct : P11543823506353253166.Spec := by
  intro n
  simp only [A091364, Nat.add_sub_cancel, A091364.P11543823506353253166.a, A091364.P9476798777241005949.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A091364

/-! ## A091364.P16921684985094229523

`n²²/n!^-1`
-/

namespace A091364.P16921684985094229523
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℚ) / (Nat.factorial n : ℚ) ^ (-1 : ℤ)

end

end A091364.P16921684985094229523

namespace A091364

/-- `n²²/n!^-1` -/
def P16921684985094229523.Spec : Prop :=
  ∀ n, P16921684985094229523.a n = (A091364 n : ℚ)

theorem P16921684985094229523.correct : P16921684985094229523.Spec := by
  intro n
  simp only [A091364, Nat.add_sub_cancel, A091364.P16921684985094229523.a, A091364.P9476798777241005949.a, SequenceMachineLib.memo_apply]
  try push_cast
  try field_simp
  try (first | ring1 | ring_nf)

end A091364

/-! ## A091364.P5926201880092918091

`n^4*∏[round(1/acot(n))]`
-/

namespace A091364.P5926201880092918091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A091364.P5926201880092918091

namespace A091364

/-- `n^4*∏[round(1/acot(n))]` -/
def P5926201880092918091.Spec : Prop :=
  ∀ n, P5926201880092918091.a n = A091364 n

end A091364

/-! ## A091364.P14361354437040787953

`n^4*∏[round(sqrt(n²+1))]`
-/

namespace A091364.P14361354437040787953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A091364.P14361354437040787953

namespace A091364

/-- `n^4*∏[round(sqrt(n²+1))]` -/
def P14361354437040787953.Spec : Prop :=
  ∀ n, P14361354437040787953.a n = A091364 n

end A091364

/-! ## A091364.P1450798037567450446

`abs(n^4*∏[floor(acot(n)-n)])`
-/

namespace A091364.P1450798037567450446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) - (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 4 : ℤ) * (∏ j ∈ Finset.range (n + 1), f1 j)|

end

end A091364.P1450798037567450446

namespace A091364

/-- `abs(n^4*∏[floor(acot(n)-n)])` -/
def P1450798037567450446.Spec : Prop :=
  ∀ n, P1450798037567450446.a n = A091364 n

end A091364

/-! ## A091364.P16567767835201226107

`abs(n²²*A133942(n))`
-/

namespace A091364.P16567767835201226107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2) ^ 2 : ℤ) * A133942 n|

end

end A091364.P16567767835201226107

namespace A091364

/-- `abs(n²²*A133942(n))` -/
def P16567767835201226107.Spec : Prop :=
  ∀ n, P16567767835201226107.a n = A091364 n

end A091364

/-! ## A091364.P3446571433563021402

`abs(n²²*A165233(n))`
-/

namespace A091364.P3446571433563021402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n ^ 2) ^ 2 : ℤ) * A165233 n|

end

end A091364.P3446571433563021402

namespace A091364

/-- `abs(n²²*A165233(n))` -/
def P3446571433563021402.Spec : Prop :=
  ∀ n, P3446571433563021402.a n = A091364 n

end A091364

/-! ## A091364.P9819962066830426046

`(∏[sqrt(A065033(2*n))]*n²)²`
-/

namespace A091364.P9819962066830426046
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065033 (2 * n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j) * (n ^ 2 : ℝ)) ^ 2

end

end A091364.P9819962066830426046

namespace A091364

/-- `(∏[sqrt(A065033(2*n))]*n²)²` -/
def P9819962066830426046.Spec : Prop :=
  ∀ n, P9819962066830426046.a n = (A091364 n : ℝ)

end A091364

/-! ## A091364.P9964925974779295167

`(n²*∏[sqrt(A000007(n)+n)])²`
-/

namespace A091364.P9964925974779295167
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A000007 n + (n : ℤ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 : ℝ) * (∏ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A091364.P9964925974779295167

namespace A091364

/-- `(n²*∏[sqrt(A000007(n)+n)])²` -/
def P9964925974779295167.Spec : Prop :=
  ∀ n, P9964925974779295167.a n = (A091364 n : ℝ)

end A091364

/-!
# A091365: Primes p such that the sum of the digits of p is not prime, but the sum of the cubes of the digits of p is prime.

The programs for A091365, the canonical program `A091365.P13821145231187876511` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091365 has offset 1).

The definition of A091365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 107 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091365.P13821145231187876511

`∩[A091366(n+1), A247122(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A091365

/-- `∩[A091366(n+1), A247122(n+1)]` -/
def P13821145231187876511.Spec : Prop :=
  ∀ n, (P13821145231187876511.a n : ℤ) = A091365 (n + 1)

theorem P13821145231187876511.correct : P13821145231187876511.Spec := by
  intro n
  simp only [A091365, Nat.add_sub_cancel]

end A091365

/-! ## A091365.P1625289506451507128

`p?[A121642(n+1)]`
-/

namespace A091365.P1625289506451507128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091365.P1625289506451507128

namespace A091365

/-- `p?[A121642(n+1)]` -/
def P1625289506451507128.Spec : Prop :=
  ∀ n, P1625289506451507128.a n = A091365 (n + 1)

end A091365

/-!
# A091366: Primes p such that the sum of the cubes of the digits of p is prime.

The programs for A091366, the canonical program `A091366.P2947392388403710140` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091366 has offset 1).

The definition of A091366 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091366.P2947392388403710140

`p?[A225534(n+1)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A091366

/-- `p?[A225534(n+1)]` -/
def P2947392388403710140.Spec : Prop :=
  ∀ n, P2947392388403710140.a n = A091366 (n + 1)

theorem P2947392388403710140.correct : P2947392388403710140.Spec := by
  intro n
  simp only [A091366, Nat.add_sub_cancel]

end A091366

/-! ## A091366.P2098465027178800913

`filter[A225534(n+1), A010051(#)]`
-/

namespace A091366.P2098465027178800913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A091366.P2098465027178800913

namespace A091366

/-- `filter[A225534(n+1), A010051(#)]` -/
def P2098465027178800913.Spec : Prop :=
  ∀ n, P2098465027178800913.a n = A091366 (n + 1)

end A091366

/-! ## A091366.P3748286395246187135

`record[A006530(2*A225534(n+1))]`
-/

namespace A091366.P3748286395246187135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A225534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A091366.P3748286395246187135

namespace A091366

/-- `record[A006530(2*A225534(n+1))]` -/
def P3748286395246187135.Spec : Prop :=
  ∀ n, P3748286395246187135.a n = A091366 (n + 1)

end A091366

/-! ## A091366.P16590881408582922542

`∩[A000040(n+1), A225534(n+1)]`
-/

namespace A091366.P16590881408582922542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P16590881408582922542

namespace A091366

/-- `∩[A000040(n+1), A225534(n+1)]` -/
def P16590881408582922542.Spec : Prop :=
  ∀ n, (P16590881408582922542.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P1845753996091281360

`∩[A004139(n+1), A225534(n+1)]`
-/

namespace A091366.P1845753996091281360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P1845753996091281360

namespace A091366

/-- `∩[A004139(n+1), A225534(n+1)]` -/
def P1845753996091281360.Spec : Prop :=
  ∀ n, (P1845753996091281360.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P9653674967177919561

`∩[A006005(n+1), A225534(n+1)]`
-/

namespace A091366.P9653674967177919561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P9653674967177919561

namespace A091366

/-- `∩[A006005(n+1), A225534(n+1)]` -/
def P9653674967177919561.Spec : Prop :=
  ∀ n, (P9653674967177919561.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P14540147700431986533

`∩[A008578(n+1), A225534(n+1)]`
-/

namespace A091366.P14540147700431986533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P14540147700431986533

namespace A091366

/-- `∩[A008578(n+1), A225534(n+1)]` -/
def P14540147700431986533.Spec : Prop :=
  ∀ n, (P14540147700431986533.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P13415659106397811147

`∩[A033946(n+1), A225534(n+1)]`
-/

namespace A091366.P13415659106397811147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P13415659106397811147

namespace A091366

/-- `∩[A033946(n+1), A225534(n+1)]` -/
def P13415659106397811147.Spec : Prop :=
  ∀ n, (P13415659106397811147.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P194379272443523211

`∩[A045319(n+1), A225534(n+1)]`
-/

namespace A091366.P194379272443523211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P194379272443523211

namespace A091366

/-- `∩[A045319(n+1), A225534(n+1)]` -/
def P194379272443523211.Spec : Prop :=
  ∀ n, (P194379272443523211.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P15067872798894209181

`∩[A045344(n+1), A225534(n+1)]`
-/

namespace A091366.P15067872798894209181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P15067872798894209181

namespace A091366

/-- `∩[A045344(n+1), A225534(n+1)]` -/
def P15067872798894209181.Spec : Prop :=
  ∀ n, (P15067872798894209181.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P6613500075557283085

`∩[A046022(n+1), A225534(n+1)]`
-/

namespace A091366.P6613500075557283085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P6613500075557283085

namespace A091366

/-- `∩[A046022(n+1), A225534(n+1)]` -/
def P6613500075557283085.Spec : Prop :=
  ∀ n, (P6613500075557283085.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P472042228530315763

`∩[A051948(n+1), A225534(n+1)]`
-/

namespace A091366.P472042228530315763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P472042228530315763

namespace A091366

/-- `∩[A051948(n+1), A225534(n+1)]` -/
def P472042228530315763.Spec : Prop :=
  ∀ n, (P472042228530315763.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P11924023672375596901

`∩[A062972(n+1), A225534(n+1)]`
-/

namespace A091366.P11924023672375596901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P11924023672375596901

namespace A091366

/-- `∩[A062972(n+1), A225534(n+1)]` -/
def P11924023672375596901.Spec : Prop :=
  ∀ n, (P11924023672375596901.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P12580627010968078516

`∩[A064728(n+1), A225534(n+1)]`
-/

namespace A091366.P12580627010968078516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064728 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P12580627010968078516

namespace A091366

/-- `∩[A064728(n+1), A225534(n+1)]` -/
def P12580627010968078516.Spec : Prop :=
  ∀ n, (P12580627010968078516.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P16828357760287139664

`∩[A065091(n+1), A225534(n+1)]`
-/

namespace A091366.P16828357760287139664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P16828357760287139664

namespace A091366

/-- `∩[A065091(n+1), A225534(n+1)]` -/
def P16828357760287139664.Spec : Prop :=
  ∀ n, (P16828357760287139664.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P15887639445592958841

`∩[A065396(n+1), A225534(n+1)]`
-/

namespace A091366.P15887639445592958841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P15887639445592958841

namespace A091366

/-- `∩[A065396(n+1), A225534(n+1)]` -/
def P15887639445592958841.Spec : Prop :=
  ∀ n, (P15887639445592958841.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P8264834134035571334

`∩[A067126(n+1), A225534(n+1)]`
-/

namespace A091366.P8264834134035571334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P8264834134035571334

namespace A091366

/-- `∩[A067126(n+1), A225534(n+1)]` -/
def P8264834134035571334.Spec : Prop :=
  ∀ n, (P8264834134035571334.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P11284538117779520240

`∩[A075763(n+1), A225534(n+1)]`
-/

namespace A091366.P11284538117779520240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P11284538117779520240

namespace A091366

/-- `∩[A075763(n+1), A225534(n+1)]` -/
def P11284538117779520240.Spec : Prop :=
  ∀ n, (P11284538117779520240.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P6468152062826880767

`∩[A116974(n+1), A225534(n+1)]`
-/

namespace A091366.P6468152062826880767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P6468152062826880767

namespace A091366

/-- `∩[A116974(n+1), A225534(n+1)]` -/
def P6468152062826880767.Spec : Prop :=
  ∀ n, (P6468152062826880767.a n : ℤ) = A091366 (n + 1)

end A091366

/-! ## A091366.P10205606636605982425

`∩[A161346(n+1), A225534(n+1)]`
-/

namespace A091366.P10205606636605982425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091366.P10205606636605982425

namespace A091366

/-- `∩[A161346(n+1), A225534(n+1)]` -/
def P10205606636605982425.Spec : Prop :=
  ∀ n, (P10205606636605982425.a n : ℤ) = A091366 (n + 1)

end A091366

/-!
# A091367: Primes p such that the sum of the digits raised to the 4th power is prime.

The programs for A091367, there is no canonical definition to state claims against.
-/

/-! ## A091367.P8829268738645881993

`A000038(A112192(n))+p?[A210767(n+1)]`
-/

namespace A091367.P8829268738645881993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A112192 n).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091367.P8829268738645881993

/-! ## A091367.P16680264434964157158

`p?[A210767(n+1)]%A027602(A027597(n))`
-/

namespace A091367.P16680264434964157158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A027602 (A027597 n).toNat)

end

end A091367.P16680264434964157158

/-! ## A091367.P2112392243339330001

`A000007(A136767(n+1))+p?[A210767(n+1)]`
-/

namespace A091367.P2112392243339330001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A136767 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091367.P2112392243339330001

/-! ## A091367.P1257128331339243064

`A000007(A328954(n+1))+p?[A210767(n+1)]`
-/

namespace A091367.P1257128331339243064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A328954 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A091367.P1257128331339243064

/-! ## A091367.P14358987018891811020

`p?[A210767(n+1)]*A032742(A098413(n+1))`
-/

namespace A091367.P14358987018891811020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210767 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A032742 (A098413 (n + 1)).toNat

end

end A091367.P14358987018891811020

/-!
# A091368: Primes p such that the sum of the digits of p is not prime, but the sum of each digit raised to the 4th power is prime.

The programs for A091368, there is no canonical definition to state claims against.
-/

/-! ## A091368.P8495292372870136423

`∩[A091367(n+1), A247122(n+1)]`
-/

namespace A091368.P8495292372870136423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247122 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A091368.P8495292372870136423

/-!
# A091369: a(n) = Sum_{i=1..n} phi(i)*ceiling(n/i).

The programs for A091369, the canonical program `A091369.P3969440163011087150` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091369 has offset 1).

The definition of A091369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A091369.P3969440163011087150

`(n+1)²-A063985(n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A091369

/-- `(n+1)²-A063985(n+1)` -/
def P3969440163011087150.Spec : Prop :=
  ∀ n, P3969440163011087150.a n = A091369 (n + 1)

theorem P3969440163011087150.correct : P3969440163011087150.Spec := by
  intro n
  simp only [A091369, Nat.add_sub_cancel]

end A091369

/-! ## A091369.P9319201115118771429

`∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n]`
-/

namespace A091369.P9319201115118771429
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f3 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P9319201115118771429

namespace A091369

/-- `∑[(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+n]` -/
def P9319201115118771429.Spec : Prop :=
  ∀ n, P9319201115118771429.a n = (A091369 (n + 1) : ℚ)

end A091369

/-! ## A091369.P14131854518884878605

`(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+a(n-1)+n` with `a(0)=1`
-/

namespace A091369.P14131854518884878605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) + (a (n - 1) + (n : ℚ))

end

end A091369.P14131854518884878605

namespace A091369

/-- `(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]+a(n-1)+n` -/
def P14131854518884878605.Spec : Prop :=
  ∀ n, P14131854518884878605.a n = (A091369 (n + 1) : ℚ)

end A091369

/-! ## A091369.P15245897155140355249

`∑[Δ[A002088(n)]+n]`
-/

namespace A091369.P15245897155140355249
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P15245897155140355249

namespace A091369

/-- `∑[Δ[A002088(n)]+n]` -/
def P15245897155140355249.Spec : Prop :=
  ∀ n, P15245897155140355249.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P8122119316349693162

`∑[Δ[A005728(n)]+n]`
-/

namespace A091369.P8122119316349693162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P8122119316349693162

namespace A091369

/-- `∑[Δ[A005728(n)]+n]` -/
def P8122119316349693162.Spec : Prop :=
  ∀ n, P8122119316349693162.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P17324921987988594166

`∑[A121048(n+1)-1]`
-/

namespace A091369.P17324921987988594166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121048 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P17324921987988594166

namespace A091369

/-- `∑[A121048(n+1)-1]` -/
def P17324921987988594166.Spec : Prop :=
  ∀ n, P17324921987988594166.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P2542234955954826145

`∑[A000010(n+1)+n]`
-/

namespace A091369.P2542234955954826145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P2542234955954826145

namespace A091369

/-- `∑[A000010(n+1)+n]` -/
def P2542234955954826145.Spec : Prop :=
  ∀ n, P2542234955954826145.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P15765664816090771925

`A002088(n+1)+∑[n]`
-/

namespace A091369.P15765664816090771925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A091369.P15765664816090771925

namespace A091369

/-- `A002088(n+1)+∑[n]` -/
def P15765664816090771925.Spec : Prop :=
  ∀ n, P15765664816090771925.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P16651129490103981204

`A092249(n+1)+∑[n]`
-/

namespace A091369.P16651129490103981204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092249 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A091369.P16651129490103981204

namespace A091369

/-- `A092249(n+1)+∑[n]` -/
def P16651129490103981204.Spec : Prop :=
  ∀ n, P16651129490103981204.a n = A091369 (n + 1)

theorem P16651129490103981204.correct : P16651129490103981204.Spec := by
  intro n
  simp only [A091369, Nat.add_sub_cancel, A091369.P16651129490103981204.f1, A091369.P16651129490103981204.a, A091369.P3969440163011087150.a, A063985, A063985.P3942861327483730228.a, A092249, A092249.P8919152455619656948.f1, A092249.P8919152455619656948.a, A000217, A000217.P10269402890581615239.a, A002088, A002088.P11293466613211840242.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A091369

/-! ## A091369.P5478204545723395934

`∑[sqrt(A127473(n+1))+n]`
-/

namespace A091369.P5478204545723395934
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A127473 (n + 1) : ℝ) + (n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P5478204545723395934

namespace A091369

/-- `∑[sqrt(A127473(n+1))+n]` -/
def P5478204545723395934.Spec : Prop :=
  ∀ n, P5478204545723395934.a n = (A091369 (n + 1) : ℝ)

end A091369

/-! ## A091369.P17707364932399134121

`∑[Δ[A100449(n)/4]+n]`
-/

namespace A091369.P17707364932399134121
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P17707364932399134121

namespace A091369

/-- `∑[Δ[A100449(n)/4]+n]` -/
def P17707364932399134121.Spec : Prop :=
  ∀ n, P17707364932399134121.a n = (A091369 (n + 1) : ℚ)

end A091369

/-! ## A091369.P4061034390952137304

`A015613(n+1)+∑[n+1]`
-/

namespace A091369.P4061034390952137304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015613 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A091369.P4061034390952137304

namespace A091369

/-- `A015613(n+1)+∑[n+1]` -/
def P4061034390952137304.Spec : Prop :=
  ∀ n, P4061034390952137304.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P15413270215956089551

`A015614(n+1)+∑[n]+1`
-/

namespace A091369.P15413270215956089551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015614 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ)

end

end A091369.P15413270215956089551

namespace A091369

/-- `A015614(n+1)+∑[n]+1` -/
def P15413270215956089551.Spec : Prop :=
  ∀ n, P15413270215956089551.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P16129951693642959896

`∑[A109606(n+1)+1+n]`
-/

namespace A091369.P16129951693642959896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109606 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P16129951693642959896

namespace A091369

/-- `∑[A109606(n+1)+1+n]` -/
def P16129951693642959896.Spec : Prop :=
  ∀ n, P16129951693642959896.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P6316456341589122648

`∑[A039649(n+1)-1+n]`
-/

namespace A091369.P6316456341589122648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039649 (n + 1) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P6316456341589122648

namespace A091369

/-- `∑[A039649(n+1)-1+n]` -/
def P6316456341589122648.Spec : Prop :=
  ∀ n, P6316456341589122648.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P17609073823868692482

`∑[A349137(2*n+1)+n]`
-/

namespace A091369.P17609073823868692482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349137 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P17609073823868692482

namespace A091369

/-- `∑[A349137(2*n+1)+n]` -/
def P17609073823868692482.Spec : Prop :=
  ∀ n, P17609073823868692482.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P12873187462881465192

`(n+1)²-∑[A051953(n+1)]`
-/

namespace A091369.P12873187462881465192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051953 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091369.P12873187462881465192

namespace A091369

/-- `(n+1)²-∑[A051953(n+1)]` -/
def P12873187462881465192.Spec : Prop :=
  ∀ n, P12873187462881465192.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P9014014035975165558

`A000010(lcm(2, n+1))+a(n-1)+n` with `a(0)=1`
-/

namespace A091369.P9014014035975165558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (Nat.lcm 2 (n + 1)) + (a (n - 1) + (n : ℤ))

end

end A091369.P9014014035975165558

namespace A091369

/-- `A000010(lcm(2, n+1))+a(n-1)+n` -/
def P9014014035975165558.Spec : Prop :=
  ∀ n, P9014014035975165558.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P13315810444064424749

`A000010(C(n+1, n))+a(n-1)+n` with `a(0)=1`
-/

namespace A091369.P13315810444064424749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000010 (Nat.choose (n + 1) n) + (a (n - 1) + (n : ℤ))

end

end A091369.P13315810444064424749

namespace A091369

/-- `A000010(C(n+1, n))+a(n-1)+n` -/
def P13315810444064424749.Spec : Prop :=
  ∀ n, P13315810444064424749.a n = A091369 (n + 1)

end A091369

/-! ## A091369.P7239898796514721981

`a(n-1)+A000010(-xor(n, -1))+n` with `a(0)=1`
-/

namespace A091369.P7239898796514721981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A000010 (-Int.xor (n : ℤ) (-1)).toNat + (n : ℤ))

end

end A091369.P7239898796514721981

namespace A091369

/-- `a(n-1)+A000010(-xor(n, -1))+n` -/
def P7239898796514721981.Spec : Prop :=
  ∀ n, P7239898796514721981.a n = A091369 (n + 1)

end A091369

/-!
# A091370: Triangle read by rows: T(n,k) is the number of dissections of a convex n-gon by nonintersecting diagonals, having a k-gon over a fixed edge (base).

The programs for A091370, the canonical program `A091370.P726466629597876863` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091370 has offset 3).

The definition of A091370 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9180 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091370.P11714173664932252478

`A104219(comp[∑[n]])`
-/

namespace A091370.P11714173664932252478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104219 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A091370.P11714173664932252478

namespace A091370

/-- `A104219(comp[∑[n]])` -/
def P11714173664932252478.Spec : Prop :=
  ∀ n, P11714173664932252478.a n = A091370 (n + 3)

end A091370

/-! ## A091370.P10139763435695491295

`A011117(∑[2*n]%(comp[∑[n]]+1)+1+n)`
-/

namespace A091370.P10139763435695491295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 ((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 + n)

end

end A091370.P10139763435695491295

namespace A091370

/-- `A011117(∑[2*n]%(comp[∑[n]]+1)+1+n)` -/
def P10139763435695491295.Spec : Prop :=
  ∀ n, P10139763435695491295.a n = A091370 (n + 3)

end A091370

/-! ## A091370.P9764499777593428461

`A011117(2*(C(comp[∑[n]]-n, 2)-n)-1+n)`
-/

namespace A091370.P9764499777593428461
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (2 * ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)) - 1 + (n : ℤ)).toNat

end

end A091370.P9764499777593428461

namespace A091370

/-- `A011117(2*(C(comp[∑[n]]-n, 2)-n)-1+n)` -/
def P9764499777593428461.Spec : Prop :=
  ∀ n, P9764499777593428461.a n = A091370 (n + 3)

end A091370

/-! ## A091370.P726466629597876863

`A011117(A099375(n)+n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A091370

/-- `A011117(A099375(n)+n)` -/
def P726466629597876863.Spec : Prop :=
  ∀ n, P726466629597876863.a n = A091370 (n + 3)

theorem P726466629597876863.correct : P726466629597876863.Spec := by
  intro n
  simp only [A091370, Nat.add_sub_cancel]

end A091370

/-! ## A091370.P8534912782339995510

`A011117(A061579(comp[∑[n]]))`
-/

namespace A091370.P8534912782339995510
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (A061579 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A091370.P8534912782339995510

namespace A091370

/-- `A011117(A061579(comp[∑[n]]))` -/
def P8534912782339995510.Spec : Prop :=
  ∀ n, P8534912782339995510.a n = A091370 (n + 3)

end A091370

/-! ## A091370.P10514606829722474732

`or(char[2], A104219(A014132(n+1)))`
-/

namespace A091370.P10514606829722474732
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A104219 (A014132 (n + 1)).toNat)

end

end A091370.P10514606829722474732

namespace A091370

/-- `or(char[2], A104219(A014132(n+1)))` -/
def P10514606829722474732.Spec : Prop :=
  ∀ n, P10514606829722474732.a n = A091370 (n + 3)

end A091370

/-! ## A091370.P246082814267171943

`A011117(2*A025581(n)+1+n)`
-/

namespace A091370.P246082814267171943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (2 * A025581 n + 1 + (n : ℤ)).toNat

end

end A091370.P246082814267171943

namespace A091370

/-- `A011117(2*A025581(n)+1+n)` -/
def P246082814267171943.Spec : Prop :=
  ∀ n, P246082814267171943.a n = A091370 (n + 3)

end A091370

/-! ## A091370.P17336515580133160559

`A011117(A038722(n+1)+A003056(n))`
-/

namespace A091370.P17336515580133160559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (A038722 (n + 1) + A003056 n).toNat

end

end A091370.P17336515580133160559

namespace A091370

/-- `A011117(A038722(n+1)+A003056(n))` -/
def P17336515580133160559.Spec : Prop :=
  ∀ n, P17336515580133160559.a n = A091370 (n + 3)

end A091370

/-! ## A091370.P9014002021118719307

`A011117(A061579(n)+A002024(n+1))`
-/

namespace A091370.P9014002021118719307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011117 (A061579 n + A002024 (n + 1)).toNat

end

end A091370.P9014002021118719307

namespace A091370

/-- `A011117(A061579(n)+A002024(n+1))` -/
def P9014002021118719307.Spec : Prop :=
  ∀ n, P9014002021118719307.a n = A091370 (n + 3)

end A091370

/-! ## A091370.P10056399837477694766

`A007318(∑[n])*A104219(A014132(n+1))`
-/

namespace A091370.P10056399837477694766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A104219 (A014132 (n + 1)).toNat

end

end A091370.P10056399837477694766

namespace A091370

/-- `A007318(∑[n])*A104219(A014132(n+1))` -/
def P10056399837477694766.Spec : Prop :=
  ∀ n, P10056399837477694766.a n = A091370 (n + 3)

end A091370

/-!
# A091371: Smallest prime factor of n - number of prime factors of n with multiplicity.

The programs for A091371, there is no canonical definition to state claims against.
-/

/-! ## A091371.P8544884863344278325

`A020639(n+1)-∑{e}[n+1, #]`
-/

namespace A091371.P8544884863344278325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A091371.P8544884863344278325

/-! ## A091371.P295004739967765327

`A020639(n+1)-Δ[A022559(n)]`
-/

namespace A091371.P295004739967765327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - (f1 (n + 1) - f1 n)

end

end A091371.P295004739967765327

/-! ## A091371.P6624502198016701317

`A020639(n+1)-A001222(n+1)`
-/

namespace A091371.P6624502198016701317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - A001222 (n + 1)

end

end A091371.P6624502198016701317

/-! ## A091371.P17578851718721117187

`A061228(n+1)-A064800(n+1)`
-/

namespace A091371.P17578851718721117187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061228 (n + 1) - A064800 (n + 1)

end

end A091371.P17578851718721117187

/-! ## A091371.P2175350917903806908

`A057237(n+1)-A252736(n+1)`
-/

namespace A091371.P2175350917903806908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1) - A252736 (n + 1)

end

end A091371.P2175350917903806908

/-! ## A091371.P4211379436517618471

`A020639(n+1)+1-A073093(n+1)`
-/

namespace A091371.P4211379436517618471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (1 - A073093 (n + 1))

end

end A091371.P4211379436517618471

/-! ## A091371.P18051852258540607464

`A020639(n+1)-val(A061142(n+1), 2)`
-/

namespace A091371.P18051852258540607464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - (SequenceMachineLib.valuation (A061142 (n + 1)).toNat 2 : ℤ)

end

end A091371.P18051852258540607464

/-! ## A091371.P12663592473197884007

`(n+1)/A032742(n+1)-A001222(n+1)`
-/

namespace A091371.P12663592473197884007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A032742 (n + 1) : ℚ) - (A001222 (n + 1) : ℚ)

end

end A091371.P12663592473197884007

/-! ## A091371.P12247033005088737983

`A006530(A028233(n+1))-A001222(n+1)`
-/

namespace A091371.P12247033005088737983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A028233 (n + 1)).toNat - A001222 (n + 1)

end

end A091371.P12247033005088737983

/-! ## A091371.P3111685537498842434

`A006530(A068794(n+1))-A001222(n+1)`
-/

namespace A091371.P3111685537498842434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A068794 (n + 1)).toNat - A001222 (n + 1)

end

end A091371.P3111685537498842434

/-! ## A091371.P798744483242686376

`A006530(A074828(n+1))-A001222(n+1)`
-/

namespace A091371.P798744483242686376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A074828 (n + 1)).toNat - A001222 (n + 1)

end

end A091371.P798744483242686376

/-! ## A091371.P7059346869246093229

`A020639(n+1)-A056239(A181819(n+1))`
-/

namespace A091371.P7059346869246093229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - A056239 (A181819 (n + 1)).toNat

end

end A091371.P7059346869246093229

/-! ## A091371.P11456423546564011766

`A006530(n+1)-(A046665(n+1)+A001222(n+1))`
-/

namespace A091371.P11456423546564011766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - (A046665 (n + 1) + A001222 (n + 1))

end

end A091371.P11456423546564011766

/-! ## A091371.P10091212937406356884

`A020639(n+1)-(A284257(n+1)+A284256(n+1))`
-/

namespace A091371.P10091212937406356884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - (A284257 (n + 1) + A284256 (n + 1))

end

end A091371.P10091212937406356884

/-! ## A091371.P14028910143690587685

`A020639(n+1)+A326075(n+1)-A253557(n+1)`
-/

namespace A091371.P14028910143690587685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (A326075 (n + 1) - A253557 (n + 1))

end

end A091371.P14028910143690587685

/-! ## A091371.P4144950778574340021

`A014673(2*(n+1))-A001222(n+1)`
-/

namespace A091371.P4144950778574340021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014673 (2 * (n + 1)) - A001222 (n + 1)

end

end A091371.P4144950778574340021

/-! ## A091371.P2544601259211321570

`A020639(n+1)-A302037(A302025(n+1))`
-/

namespace A091371.P2544601259211321570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) - A302037 (A302025 (n + 1)).toNat

end

end A091371.P2544601259211321570

/-! ## A091371.P1189353475472888671

`A020639(n+1)+1-A196052(A000040(n+1))`
-/

namespace A091371.P1189353475472888671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) + (1 - A196052 (A000040 (n + 1)).toNat)

end

end A091371.P1189353475472888671

/-!
# A091372: Number of numbers <= n having more prime factors than the value of their smallest prime factor.

The programs for A091372, there is no canonical definition to state claims against.
-/

/-! ## A091372.P16625073675371120562

`∑[char[A091375(n+1)-1]]`
-/

namespace A091372.P16625073675371120562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091375 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091372.P16625073675371120562

/-! ## A091372.P1853423940541906396

`∑[1-A340369(A079097(n))]`
-/

namespace A091372.P1853423940541906396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A340369 (A079097 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091372.P1853423940541906396

/-! ## A091372.P8076203033213296172

`A008619(2*n)%∑[A340369(A079097(n))]`
-/

namespace A091372.P8076203033213296172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (A079097 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (2 * n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091372.P8076203033213296172

/-! ## A091372.P17321398802407406689

`A008611(3*n)%∑[A340369(A079097(n))]`
-/

namespace A091372.P17321398802407406689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (A079097 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008611 (3 * n)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A091372.P17321398802407406689

/-! ## A091372.P9701618541432519847

`∑[A175801(A001222((n+1)*xor(n, n+1))+1)]`
-/

namespace A091372.P9701618541432519847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175801 (A001222 ((n + 1) * Nat.xor n (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091372.P9701618541432519847

/-! ## A091372.P9488067422831543044

`∑[A057427(A321379(A079097(n)))]`
-/

namespace A091372.P9488067422831543044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A321379 (A079097 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091372.P9488067422831543044

/-! ## A091372.P3495664278075453491

`∑[A002265(A007814(n²+1)+A001222(n+1))]`
-/

namespace A091372.P3495664278075453491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A007814 (n ^ 2 + 1) + A001222 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091372.P3495664278075453491

/-! ## A091372.P627104995296381998

`∑[A060398(A000217(A322819(n+1)))]`
-/

namespace A091372.P627104995296381998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060398 (A000217 (A322819 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091372.P627104995296381998

/-! ## A091372.P5517457786802422233

`∑[floor(atan(A238618(n+1)))]`
-/

namespace A091372.P5517457786802422233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A238618 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091372.P5517457786802422233

/-! ## A091372.P3383355677682040385

`∑[A039984(C(6, A238618(n+1)²)+1)]`
-/

namespace A091372.P3383355677682040385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039984 (Nat.choose 6 (A238618 (n + 1) ^ 2).toNat + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091372.P3383355677682040385

/-!
# A091373: Number of numbers <= n having exactly as many prime factors as the value of their smallest prime factor.

The programs for A091373, there is no canonical definition to state claims against.
-/

/-! ## A091373.P1803694524943106945

`∑[char[A091376(n+1)-1]]`
-/

namespace A091373.P1803694524943106945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091376 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091373.P1803694524943106945

/-! ## A091373.P14346401804904407883

`char[A091376(xor(1, n)+1)-1]+a(n-1)` with `a(0)=0`
-/

namespace A091373.P14346401804904407883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091376 (Nat.xor 1 n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A091373.P14346401804904407883

/-! ## A091373.P353016667775115056

`∑[C(3, (2*(A001222(n+1)-A020639(n+1)))²)]`
-/

namespace A091373.P353016667775115056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 3 ((2 * (A001222 (n + 1) - A020639 (n + 1))) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091373.P353016667775115056

/-! ## A091373.P9373009586987433351

`∑[char[eq[0, A091371(n+1)]]]`
-/

namespace A091373.P9373009586987433351
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091373.P9373009586987433351

/-! ## A091373.P17070933711634702401

`∑[val(A006530(A091371(n+1)²+2), 2)]`
-/

namespace A091373.P17070933711634702401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (A091371 (n + 1) ^ 2 + 2).toNat).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091373.P17070933711634702401

/-!
# A091374: Number of numbers <= n having fewer prime factors than the value of their smallest prime factor.

The programs for A091374, there is no canonical definition to state claims against.
-/

/-! ## A091374.P1515989879207053729

`∑[ceil(A091371(n+1)/(n+1))]`
-/

namespace A091374.P1515989879207053729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A091371 (n + 1) : ℚ) / (n + 1 : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091374.P1515989879207053729

/-! ## A091374.P7536512764246468688

`∑[C(A124766(2*n+1), A063658(2*(n+1)))]`
-/

namespace A091374.P7536512764246468688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A124766 (2 * n + 1)).toNat (A063658 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091374.P7536512764246468688

/-! ## A091374.P11153914760448382229

`∑[A051731(A319269(n+1)+A000217(3*n+3))]`
-/

namespace A091374.P11153914760448382229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (A319269 (n + 1) + A000217 (3 * n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091374.P11153914760448382229

/-! ## A091374.P5485064162797138148

`∑[C(A333381(2*n+3), A063658(2*(n+1)))]`
-/

namespace A091374.P5485064162797138148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A333381 (2 * n + 3)).toNat (A063658 (2 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A091374.P5485064162797138148

/-! ## A091374.P6528071180611301494

`A261348(3*n+1)+A143104(A196169(n+1))`
-/

namespace A091374.P6528071180611301494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261348 (3 * n + 1) + A143104 (A196169 (n + 1)).toNat

end

end A091374.P6528071180611301494

/-!
# A091375: Numbers k with property that the number of prime factors of k (counted with repetition) exceeds the smallest prime factor of k.

The programs for A091375, there is no canonical definition to state claims against.
-/

/-! ## A091375.P13443211633193169939

`lt[A020639(n+1), A001222(n+1)]+1`
-/

namespace A091375.P13443211633193169939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091375.P13443211633193169939

/-! ## A091375.P9196329194725387790

`lt[A074828(n+1), A001222(n+1)]+1`
-/

namespace A091375.P9196329194725387790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091375.P9196329194725387790

/-! ## A091375.P9906046933791774134

`lt[A102457(n+2), A001222(n+1)]+1`
-/

namespace A091375.P9906046933791774134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091375.P9906046933791774134

/-! ## A091375.P14631743158685068985

`lt[A091371(round(acot(n)+n)), 0]`
-/

namespace A091375.P14631743158685068985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091375.P14631743158685068985

/-! ## A091375.P9873134573175408102

`lt[A091371(n+1), A000007(n)]+1`
-/

namespace A091375.P9873134573175408102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091375.P9873134573175408102

/-! ## A091375.P10543444703412182170

`lt[A020639(n+1), Δ[A022559(n)]]+1`
-/

namespace A091375.P10543444703412182170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091375.P10543444703412182170

/-! ## A091375.P9568381577718421414

`lt[A020639(n+1), A086436(n+1)]+1`
-/

namespace A091375.P9568381577718421414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086436 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091375.P9568381577718421414

/-! ## A091375.P18352820572291914966

`lt[A107286(n), A001222(A028310(n))]`
-/

namespace A091375.P18352820572291914966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091375.P18352820572291914966

/-! ## A091375.P701804535526731491

`A020725(lt[A074828(n+1), A001222(n+1)])`
-/

namespace A091375.P701804535526731491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091375.P701804535526731491

/-! ## A091375.P3646328238383408707

`lt[A091371(A000007(n)+n), A000007(n)]`
-/

namespace A091375.P3646328238383408707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (A000007 n + (n : ℤ)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091375.P3646328238383408707

/-! ## A091375.P266173826721976877

`lt[A102457(n+2), A302037(A302025(n+1))]+1`
-/

namespace A091375.P266173826721976877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A302025 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091375.P266173826721976877

/-! ## A091375.P10340803186138781200

`lt[A091371(A233583(n+1)), 0]`
-/

namespace A091375.P10340803186138781200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091375.P10340803186138781200

/-! ## A091375.P9958082198220437766

`eq[0, A340369(A079097(n))]+1`
-/

namespace A091375.P9958082198220437766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340369 (A079097 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091375.P9958082198220437766

/-! ## A091375.P18219744063086525125

`lt[A010712(n), A001222(n^ceil(atan(n)))]`
-/

namespace A091375.P18219744063086525125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010712 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091375.P18219744063086525125

/-! ## A091375.P11569510814913519587

`lt[A010717(n), A001222(n^ceil(atan(n)))]`
-/

namespace A091375.P11569510814913519587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010717 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091375.P11569510814913519587

/-! ## A091375.P5170305065608999791

`lt[A010718(n), A001222(n^ceil(atan(n)))]`
-/

namespace A091375.P5170305065608999791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010718 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091375.P5170305065608999791

/-!
# A091376: Numbers k with property that the number of prime factors of k (counted with repetition) equals the smallest prime factor of k.

The programs for A091376, there is no canonical definition to state claims against.
-/

/-! ## A091376.P15693337225525266427

`eq[A001222(n+2), A020639(n+2)]+2`
-/

namespace A091376.P15693337225525266427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A091376.P15693337225525266427

/-! ## A091376.P5874675589379966479

`eq[0, A091371(n+1)]+1`
-/

namespace A091376.P5874675589379966479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091376.P5874675589379966479

/-! ## A091376.P408334072452398466

`eq[A020639(n+1), ∑{e}[n+1, #]]+1`
-/

namespace A091376.P408334072452398466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1

end

end A091376.P408334072452398466

/-! ## A091376.P18325817813087338455

`eq[A105560(n+1), A105574(n+1)]+1`
-/

namespace A091376.P18325817813087338455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105560 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105574 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A091376.P18325817813087338455

/-! ## A091376.P6710467014697931375

`eq[A057237(n+1), A252736(n+1)]+1`
-/

namespace A091376.P6710467014697931375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057237 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A091376.P6710467014697931375

/-! ## A091376.P13351906067659828773

`A020725(eq[A001222(n+1), A020639(n+1)])`
-/

namespace A091376.P13351906067659828773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A091376.P13351906067659828773

/-! ## A091376.P6830033198161461292

`lt[A091371(A233583(n+1))², 1]`
-/

namespace A091376.P6830033198161461292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (A233583 (n + 1)).toNat ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A091376.P6830033198161461292

/-!
# A091377: Numbers having fewer prime factors than the value of their smallest prime factor.

The programs for A091377, there is no canonical definition to state claims against.
-/

/-! ## A091377.P5293622652591751735

`lt[A001222(n+1), A020639(n+1)]+1`
-/

namespace A091377.P5293622652591751735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091377.P5293622652591751735

/-! ## A091377.P7351627192632326884

`lt[A001222(n+1), A074828(n+1)]+1`
-/

namespace A091377.P7351627192632326884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074828 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091377.P7351627192632326884

/-! ## A091377.P11120110511740766364

`A141310(lt[A001222(n+1), A020639(n+1)])`
-/

namespace A091377.P11120110511740766364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A091377.P11120110511740766364

/-! ## A091377.P3311487811781268346

`lt[A001222(n+1), A102457(n+2)]+1`
-/

namespace A091377.P3311487811781268346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091377.P3311487811781268346

/-! ## A091377.P11419433647482040713

`lt[acot(1), A091371(n+1)]+1`
-/

namespace A091377.P11419433647482040713
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A091377.P11419433647482040713

/-! ## A091377.P14681469383264967317

`lt[∑{e}[n+1, #], A020639(∏{p}[n+1, #])]+1`
-/

namespace A091377.P14681469383264967317
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (∏ p ∈ Nat.primeFactors (f4 n), p)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n + 1

end

end A091377.P14681469383264967317

/-! ## A091377.P10940923363919368967

`eq[1, A342007(A068794(n+1))]+1`
-/

namespace A091377.P10940923363919368967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342007 (A068794 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A091377.P10940923363919368967

/-! ## A091377.P11080618394564889735

`lt[Δ[A022559(n)], A020639(n+1)]+1`
-/

namespace A091377.P11080618394564889735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A091377.P11080618394564889735

/-! ## A091377.P7497087140019945652

`lt[A000007(n), A091371(A000007(n)+n)]`
-/

namespace A091377.P7497087140019945652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091371 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A091377.P7497087140019945652

/-! ## A091377.P11518824850657196184

`lt[A302037(A302025(n+1)), A102457(n+2)]+1`
-/

namespace A091377.P11518824850657196184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302037 (A302025 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A091377.P11518824850657196184

/-! ## A091377.P16427693636716335052

`eq[A008574(A304442(n)), A145154(n)]`
-/

namespace A091377.P16427693636716335052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A304442 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A091377.P16427693636716335052

/-!
# A091378: Triangle read by rows: T(m,n) = number of weak factorization systems (trivial Quillen model structures) on the poset of order-preserving maps from [m] to [n+1] (where [m] denotes the total order on m objects), viewed as a category.

The programs for A091378, there is no canonical definition to state claims against.
-/

/-! ## A091378.P2277292533159273540

`A264978(A000108(A007318(n)))`
-/

namespace A091378.P2277292533159273540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A000108 (A007318 n).toNat).toNat

end

end A091378.P2277292533159273540

/-! ## A091378.P8340495346520133883

`A264978(A000108(Δ[A102363(n)]))`
-/

namespace A091378.P8340495346520133883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264978 (A000108 (f1 (n + 1) - f1 n).toNat).toNat

end

end A091378.P8340495346520133883

/-! ## A091378.P11055005916261016471

`A060854(n+1)+A004247(A007318(A009963(n)))`
-/

namespace A091378.P11055005916261016471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060854 (n + 1) + A004247 (A007318 (A009963 n).toNat).toNat

end

end A091378.P11055005916261016471

/-!
# A091379: a(n) = Product_{ p | n } (1 + Legendre(-1,p) ).

The programs for A091379, the canonical program `A091379.P6458046850271695309` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091379 has offset 1).

The definition of A091379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091379.P6458046850271695309

`∏{p}[n+1, and(2, -#)]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091379

/-- `∏{p}[n+1, and(2, -#)]` -/
def P6458046850271695309.Spec : Prop :=
  ∀ n, P6458046850271695309.a n = A091379 (n + 1)

theorem P6458046850271695309.correct : P6458046850271695309.Spec := by
  intro n
  simp only [A091379, Nat.add_sub_cancel]

end A091379

/-! ## A091379.P8388461131369610

`∏{p}[n+1, (#²+#)%4]`
-/

namespace A091379.P8388461131369610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (p ^ 2 + p) % 4

end

end A091379.P8388461131369610

namespace A091379

/-- `∏{p}[n+1, (#²+#)%4]` -/
def P8388461131369610.Spec : Prop :=
  ∀ n, (P8388461131369610.a n : ℤ) = A091379 (n + 1)

end A091379

/-! ## A091379.P14749294657732532417

`A000095(∏{p}[n+1, #])`
-/

namespace A091379.P14749294657732532417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091379.P14749294657732532417

namespace A091379

/-- `A000095(∏{p}[n+1, #])` -/
def P14749294657732532417.Spec : Prop :=
  ∀ n, P14749294657732532417.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P3868233110605426032

`A035184(∏{p}[n+1, #])`
-/

namespace A091379.P3868233110605426032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091379.P3868233110605426032

namespace A091379

/-- `A035184(∏{p}[n+1, #])` -/
def P3868233110605426032.Spec : Prop :=
  ∀ n, P3868233110605426032.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P5052792975264612828

`A134013(∏{p}[n+1, #])`
-/

namespace A091379.P5052792975264612828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134013 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091379.P5052792975264612828

namespace A091379

/-- `A134013(∏{p}[n+1, #])` -/
def P5052792975264612828.Spec : Prop :=
  ∀ n, P5052792975264612828.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P1230397291921640865

`A000095(A007947(n+1))`
-/

namespace A091379.P1230397291921640865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A007947 (n + 1)).toNat

end

end A091379.P1230397291921640865

namespace A091379

/-- `A000095(A007947(n+1))` -/
def P1230397291921640865.Spec : Prop :=
  ∀ n, P1230397291921640865.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P10388750604527337582

`A000095(A259445(n+1))`
-/

namespace A091379.P10388750604527337582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A259445 (n + 1)).toNat

end

end A091379.P10388750604527337582

namespace A091379

/-- `A000095(A259445(n+1))` -/
def P10388750604527337582.Spec : Prop :=
  ∀ n, P10388750604527337582.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P3519766184615018910

`A000095(A327937(n+1))`
-/

namespace A091379.P3519766184615018910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000095 (A327937 (n + 1)).toNat

end

end A091379.P3519766184615018910

namespace A091379

/-- `A000095(A327937(n+1))` -/
def P3519766184615018910.Spec : Prop :=
  ∀ n, P3519766184615018910.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P12022094086525635601

`A000034(n)*A091400(n+1)`
-/

namespace A091379.P12022094086525635601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A091400 (n + 1)

end

end A091379.P12022094086525635601

namespace A091379

/-- `A000034(n)*A091400(n+1)` -/
def P12022094086525635601.Spec : Prop :=
  ∀ n, P12022094086525635601.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P2705298319612930803

`A068073(n)*A091400(n+1)`
-/

namespace A091379.P2705298319612930803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068073 n * A091400 (n + 1)

end

end A091379.P2705298319612930803

namespace A091379

/-- `A068073(n)*A091400(n+1)` -/
def P2705298319612930803.Spec : Prop :=
  ∀ n, P2705298319612930803.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P12895410242410226638

`A071222(n)*A091400(n+1)`
-/

namespace A091379.P12895410242410226638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071222 n * A091400 (n + 1)

end

end A091379.P12895410242410226638

namespace A091379

/-- `A071222(n)*A091400(n+1)` -/
def P12895410242410226638.Spec : Prop :=
  ∀ n, P12895410242410226638.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P12145511383855958781

`A091400(n+1)*A177002(n)`
-/

namespace A091379.P12145511383855958781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (n + 1) * A177002 n

end

end A091379.P12145511383855958781

namespace A091379

/-- `A091400(n+1)*A177002(n)` -/
def P12145511383855958781.Spec : Prop :=
  ∀ n, P12145511383855958781.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P4003126436914331031

`A091400(n+1)*A343180(n)`
-/

namespace A091379.P4003126436914331031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091400 (n + 1) * A343180 n

end

end A091379.P4003126436914331031

namespace A091379

/-- `A091400(n+1)*A343180(n)` -/
def P4003126436914331031.Spec : Prop :=
  ∀ n, P4003126436914331031.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P6103987531813369529

`∏{p}[n+1, A078458(A078458(#))]`
-/

namespace A091379.P6103987531813369529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A078458 (A078458 p).toNat

end

end A091379.P6103987531813369529

namespace A091379

/-- `∏{p}[n+1, A078458(A078458(#))]` -/
def P6103987531813369529.Spec : Prop :=
  ∀ n, P6103987531813369529.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P7593707755631973269

`A053589(n+1)*A091400(n+1)`
-/

namespace A091379.P7593707755631973269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053589 (n + 1) * A091400 (n + 1)

end

end A091379.P7593707755631973269

namespace A091379

/-- `A053589(n+1)*A091400(n+1)` -/
def P7593707755631973269.Spec : Prop :=
  ∀ n, P7593707755631973269.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P9226565827190254595

`A055770(n+1)*A091400(n+1)`
-/

namespace A091379.P9226565827190254595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055770 (n + 1) * A091400 (n + 1)

end

end A091379.P9226565827190254595

namespace A091379

/-- `A055770(n+1)*A091400(n+1)` -/
def P9226565827190254595.Spec : Prop :=
  ∀ n, P9226565827190254595.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P5582164135063735000

`A055874(n+1)*A091400(n+1)`
-/

namespace A091379.P5582164135063735000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055874 (n + 1) * A091400 (n + 1)

end

end A091379.P5582164135063735000

namespace A091379

/-- `A055874(n+1)*A091400(n+1)` -/
def P5582164135063735000.Spec : Prop :=
  ∀ n, P5582164135063735000.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P4824303863823344208

`A055881(n+1)*A091400(n+1)`
-/

namespace A091379.P4824303863823344208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055881 (n + 1) * A091400 (n + 1)

end

end A091379.P4824303863823344208

namespace A091379

/-- `A055881(n+1)*A091400(n+1)` -/
def P4824303863823344208.Spec : Prop :=
  ∀ n, P4824303863823344208.a n = A091379 (n + 1)

end A091379

/-! ## A091379.P17666780474235773106

`A062356(n+1)*A091400(n+1)`
-/

namespace A091379.P17666780474235773106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062356 (n + 1) * A091400 (n + 1)

end

end A091379.P17666780474235773106

namespace A091379

/-- `A062356(n+1)*A091400(n+1)` -/
def P17666780474235773106.Spec : Prop :=
  ∀ n, P17666780474235773106.a n = A091379 (n + 1)

end A091379

/-!
# A091380: Largest quadratic "mixed" residue modulo the n-th prime (LQxR(p_n)).

The programs for A091380, there is no canonical definition to state claims against.
-/

/-! ## A091380.P15305092107758200908

`p?[A275535(n+1)]-A053760(n+1)`
-/

namespace A091380.P15305092107758200908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275535 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A053760 (n + 1)

end

end A091380.P15305092107758200908

/-! ## A091380.P2646487362307315298

`p?[A239086(n+1)]-A091382(n+1)`
-/

namespace A091380.P2646487362307315298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239086 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A091382 (n + 1)

end

end A091380.P2646487362307315298

/-! ## A091380.P14400579538558664572

`A327389(A000040(n+1))-A091382(n+1)`
-/

namespace A091380.P14400579538558664572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327389 (A000040 (n + 1)).toNat - A091382 (n + 1)

end

end A091380.P14400579538558664572

/-! ## A091380.P4753712074756762524

`A327389(A000040(n+1))-(A053760(n+1)-C(2, n+2))`
-/

namespace A091380.P4753712074756762524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327389 (A000040 (n + 1)).toNat - (A053760 (n + 1) - (Nat.choose 2 (n + 2) : ℤ))

end

end A091380.P4753712074756762524

/-!
# A091381: First differences of A091380.

The programs for A091381, there is no canonical definition to state claims against.
-/

/-! ## A091381.P12432796987474864857

`Δ[A000040(n+1)-A091382(n+1)]`
-/

namespace A091381.P12432796987474864857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P12432796987474864857

/-! ## A091381.P10812146371429786531

`A001223(n+1)-Δ[A091382(n+1)]`
-/

namespace A091381.P10812146371429786531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) - (f1 (n + 1) - f1 n)

end

end A091381.P10812146371429786531

/-! ## A091381.P18011358149356220616

`Δ[A006093(n+1)-A091382(n+1)]`
-/

namespace A091381.P18011358149356220616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P18011358149356220616

/-! ## A091381.P6593474019551903879

`Δ[A008864(n+1)-A091382(n+1)]`
-/

namespace A091381.P6593474019551903879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P6593474019551903879

/-! ## A091381.P11063985630461907302

`Δ[A028815(n+1)-A091382(n+1)]`
-/

namespace A091381.P11063985630461907302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P11063985630461907302

/-! ## A091381.P8110593154195439534

`Δ[A040976(n+1)-A091382(n+1)]`
-/

namespace A091381.P8110593154195439534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P8110593154195439534

/-! ## A091381.P7399905449721722633

`Δ[A052147(n+1)-A091382(n+1)]`
-/

namespace A091381.P7399905449721722633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P7399905449721722633

/-! ## A091381.P430063868791841005

`Δ[A139049(n+1)-A091382(n+1)]`
-/

namespace A091381.P430063868791841005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139049 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P430063868791841005

/-! ## A091381.P5024142933668822305

`Δ[A140353(n+1)-A091382(n+1)]`
-/

namespace A091381.P5024142933668822305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140353 (n + 1) - A091382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P5024142933668822305

/-! ## A091381.P9312181718860667165

`Δ[A000040(n+1)-(A053760(n+1)-C(2, n+2))]`
-/

namespace A091381.P9312181718860667165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - (A053760 (n + 1) - (Nat.choose 2 (n + 2) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A091381.P9312181718860667165

/-!
# A091382: Distance between the sequence of primes and the largest "mixed" quadratic residues modulo the primes (A091380).

The programs for A091382, there is no canonical definition to state claims against.
-/

/-! ## A091382.P4086748530689209077

`A053760(n+1)-C(2, n+2)`
-/

namespace A091382.P4086748530689209077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) - (Nat.choose 2 (n + 2) : ℤ)

end

end A091382.P4086748530689209077

/-! ## A091382.P10313647690890847861

`A053760(a(2%n)+n-1)` with `a(0)=1`
-/

namespace A091382.P10313647690890847861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053760 (a (2 % n) + (n : ℤ) - 1).toNat

end

end A091382.P10313647690890847861

/-! ## A091382.P15707423566484977988

`A053760(n+1)-A000007(n)`
-/

namespace A091382.P15707423566484977988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) - A000007 n

end

end A091382.P15707423566484977988

/-! ## A091382.P7498879780657678382

`A053760(n+1)/A054977(n)`
-/

namespace A091382.P7498879780657678382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053760 (n + 1) : ℚ) / (A054977 n : ℚ)

end

end A091382.P7498879780657678382

/-! ## A091382.P3399843641645174984

`A053760(a(A000038(n))+n)` with `a(0)=1`
-/

namespace A091382.P3399843641645174984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A053760 (a (A000038 n).toNat + (n : ℤ)).toNat

end

end A091382.P3399843641645174984

/-! ## A091382.P18267561198128947455

`A053760(n+1)/A000038(n)!`
-/

namespace A091382.P18267561198128947455
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053760 (n + 1) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A091382.P18267561198128947455

/-! ## A091382.P12703035230497699130

`A053760(n+1)-A036987(2*n)`
-/

namespace A091382.P12703035230497699130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) - A036987 (2 * n)

end

end A091382.P12703035230497699130

/-! ## A091382.P152720084468945719

`A053760(n+1)-A010051(2*(n+1))`
-/

namespace A091382.P152720084468945719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) - A010051 (2 * (n + 1))

end

end A091382.P152720084468945719

/-! ## A091382.P4488636512532042365

`A053760(n+1)-A008683(A008574(n))`
-/

namespace A091382.P4488636512532042365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) - A008683 (A008574 n).toNat

end

end A091382.P4488636512532042365

/-! ## A091382.P11011159806233270613

`A053760(n+1)^A001221(A001316(n))`
-/

namespace A091382.P11011159806233270613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053760 (n + 1) : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A091382.P11011159806233270613

/-! ## A091382.P17639750930506014883

`A053760(n+1)+A008683(2*A008574(n))`
-/

namespace A091382.P17639750930506014883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) + A008683 (2 * A008574 n).toNat

end

end A091382.P17639750930506014883

/-! ## A091382.P7819678811448366247

`A053760(n+1)-A010052(A010052(n)+n)`
-/

namespace A091382.P7819678811448366247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) - A010052 (A010052 n + (n : ℤ)).toNat

end

end A091382.P7819678811448366247

/-! ## A091382.P6594434649179989997

`A053760(n+1)-A008683(A000118(n))`
-/

namespace A091382.P6594434649179989997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) - A008683 (A000118 n).toNat

end

end A091382.P6594434649179989997

/-! ## A091382.P7971749460751389745

`A053760(n+1)/A014963(4*n+2)`
-/

namespace A091382.P7971749460751389745
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053760 (n + 1) : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A091382.P7971749460751389745

/-! ## A091382.P5071502145556056299

`A053760(n+1)+A008683(2*A000118(n))`
-/

namespace A091382.P5071502145556056299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053760 (n + 1) + A008683 (2 * A000118 n).toNat

end

end A091382.P5071502145556056299

/-! ## A091382.P14387651827717129762

`A227196(A000040(n+1))-A000007(n)`
-/

namespace A091382.P14387651827717129762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (A000040 (n + 1)).toNat - A000007 n

end

end A091382.P14387651827717129762

/-! ## A091382.P4447545094787241220

`∑{p}[A001749(n+1), A227195(#)]`
-/

namespace A091382.P4447545094787241220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A227195 p

end

end A091382.P4447545094787241220

/-! ## A091382.P4607311566006095090

`∑{p}[A100484(n+1), A227195(#)]`
-/

namespace A091382.P4607311566006095090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A227195 p

end

end A091382.P4607311566006095090

/-! ## A091382.P15927962288825970624

`∏{p}[A073579(n+1), A020649(#)]`
-/

namespace A091382.P15927962288825970624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020649 p

end

end A091382.P15927962288825970624

/-! ## A091382.P15220072501655007650

`A020649(2*A000040(n+1))-A000007(n)`
-/

namespace A091382.P15220072501655007650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020649 (2 * A000040 (n + 1)).toNat - A000007 n

end

end A091382.P15220072501655007650

/-!
# A091383: Prime numbers where the sequence of largest quadratic "mixed" residues modulo the primes (A091380) is non-monotonic.

The programs for A091383, there is no canonical definition to state claims against.
-/

/-! ## A091383.P4986959687892737564

`A088193(n+1)+char[47]`
-/

namespace A091383.P4986959687892737564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  47

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088193 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A091383.P4986959687892737564

/-! ## A091383.P15737997262934832317

`A088193(A044923(n+1))`
-/

namespace A091383.P15737997262934832317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088193 (A044923 (n + 1)).toNat

end

end A091383.P15737997262934832317

/-! ## A091383.P13214610224062602240

`A088193(A167976(n+1))`
-/

namespace A091383.P13214610224062602240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088193 (A167976 (n + 1)).toNat

end

end A091383.P13214610224062602240

/-! ## A091383.P4275924970820088928

`A088193(A179797(n+1))`
-/

namespace A091383.P4275924970820088928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088193 (A179797 (n + 1)).toNat

end

end A091383.P4275924970820088928

/-! ## A091383.P4210597728692845785

`A088193(A180925(n+1))`
-/

namespace A091383.P4210597728692845785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088193 (A180925 (n + 1)).toNat

end

end A091383.P4210597728692845785

/-!
# A091386: Solution to the merit factor problem.

The programs for A091386, there is no canonical definition to state claims against.
-/

/-! ## A091386.P9408258111794640003

`A102780(n+2)+(n+2)²`
-/

namespace A091386.P9408258111794640003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102780 (n + 2) + ((n + 2) ^ 2 : ℤ)

end

end A091386.P9408258111794640003

/-! ## A091386.P3581766196500367233

`A005563(n+1)+A102780(n+2)+1`
-/

namespace A091386.P3581766196500367233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (n + 1) + (A102780 (n + 2) + 1)

end

end A091386.P3581766196500367233

/-! ## A091386.P13876960707138065989

`∑[A144396(n+1)]+A102780(n+2)+1`
-/

namespace A091386.P13876960707138065989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A102780 (n + 2) + 1)

end

end A091386.P13876960707138065989

/-! ## A091386.P18006977297805494788

`A054000(n+2)/2+A102780(n+2)+1`
-/

namespace A091386.P18006977297805494788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054000 (n + 2) : ℚ) / 2 + (A102780 (n + 2) + 1 : ℚ)

end

end A091386.P18006977297805494788

/-! ## A091386.P1625409466428245162

`A120070(A000217(n)+2)+A102780(n+2)+1`
-/

namespace A091386.P1625409466428245162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (A000217 n + 2).toNat + (A102780 (n + 2) + 1)

end

end A091386.P1625409466428245162

/-! ## A091386.P15873145024737041054

`A000217(n+1)+A102780(n+2)+A000217(n+2)`
-/

namespace A091386.P15873145024737041054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A102780 (n + 2) + A000217 (n + 2))

end

end A091386.P15873145024737041054

/-!
# A091392: Product_{ p | n } (1 + Legendre(-2,p) ).

The programs for A091392, the canonical program `A091392.P8768457426082372727` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091392 has offset 1).

The definition of A091392 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091392.P8768457426082372727

`∏{p}[n+1, C(2, and(5, #))]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091392

/-- `∏{p}[n+1, C(2, and(5, #))]` -/
def P8768457426082372727.Spec : Prop :=
  ∀ n, (P8768457426082372727.a n : ℤ) = A091392 (n + 1)

theorem P8768457426082372727.correct : P8768457426082372727.Spec := by
  intro n
  simp only [A091392, Nat.add_sub_cancel]

end A091392

/-! ## A091392.P10041835034562324605

`A002325(∏{p}[n+1, #])`
-/

namespace A091392.P10041835034562324605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091392.P10041835034562324605

namespace A091392

/-- `A002325(∏{p}[n+1, #])` -/
def P10041835034562324605.Spec : Prop :=
  ∀ n, P10041835034562324605.a n = A091392 (n + 1)

end A091392

/-! ## A091392.P3831188890326093949

`A352564(∏{p}[n+1, #])`
-/

namespace A091392.P3831188890326093949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352564 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091392.P3831188890326093949

namespace A091392

/-- `A352564(∏{p}[n+1, #])` -/
def P3831188890326093949.Spec : Prop :=
  ∀ n, P3831188890326093949.a n = A091392 (n + 1)

end A091392

/-! ## A091392.P4940694157447503214

`∑{d}[∏{p}[n+1, #], A188510(#)]`
-/

namespace A091392.P4940694157447503214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A188510 d

end

end A091392.P4940694157447503214

namespace A091392

/-- `∑{d}[∏{p}[n+1, #], A188510(#)]` -/
def P4940694157447503214.Spec : Prop :=
  ∀ n, P4940694157447503214.a n = A091392 (n + 1)

end A091392

/-! ## A091392.P18318766211266153496

`A002325(A007947(n+1))`
-/

namespace A091392.P18318766211266153496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A007947 (n + 1)).toNat

end

end A091392.P18318766211266153496

namespace A091392

/-- `A002325(A007947(n+1))` -/
def P18318766211266153496.Spec : Prop :=
  ∀ n, P18318766211266153496.a n = A091392 (n + 1)

end A091392

/-! ## A091392.P10892016257658104305

`A002325(A204455(n+1))`
-/

namespace A091392.P10892016257658104305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A204455 (n + 1)).toNat

end

end A091392.P10892016257658104305

namespace A091392

/-- `A002325(A204455(n+1))` -/
def P10892016257658104305.Spec : Prop :=
  ∀ n, P10892016257658104305.a n = A091392 (n + 1)

end A091392

/-! ## A091392.P8359536004270194424

`A002325(A099985(n+1))`
-/

namespace A091392.P8359536004270194424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A099985 (n + 1)).toNat

end

end A091392.P8359536004270194424

namespace A091392

/-- `A002325(A099985(n+1))` -/
def P8359536004270194424.Spec : Prop :=
  ∀ n, P8359536004270194424.a n = A091392 (n + 1)

end A091392

/-! ## A091392.P16549086390536662570

`A002325(A302138(n+1))`
-/

namespace A091392.P16549086390536662570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A302138 (n + 1)).toNat

end

end A091392.P16549086390536662570

namespace A091392

/-- `A002325(A302138(n+1))` -/
def P16549086390536662570.Spec : Prop :=
  ∀ n, P16549086390536662570.a n = A091392 (n + 1)

end A091392

/-! ## A091392.P6102519113833107506

`A002325(A260458((n+1)²))`
-/

namespace A091392.P6102519113833107506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A260458 ((n + 1) ^ 2)).toNat

end

end A091392.P6102519113833107506

namespace A091392

/-- `A002325(A260458((n+1)²))` -/
def P6102519113833107506.Spec : Prop :=
  ∀ n, P6102519113833107506.a n = A091392 (n + 1)

end A091392

/-! ## A091392.P12703581058581958278

`A002325(A234001(n+1))`
-/

namespace A091392.P12703581058581958278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002325 (A234001 (n + 1)).toNat

end

end A091392.P12703581058581958278

namespace A091392

/-- `A002325(A234001(n+1))` -/
def P12703581058581958278.Spec : Prop :=
  ∀ n, P12703581058581958278.a n = A091392 (n + 1)

end A091392

/-!
# A091393: a(n) = Product_{ p | n } (1 + Legendre(-3,p) ).

The programs for A091393, the canonical program `A091393.P13380500772166686256` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091393 has offset 1).

The definition of A091393 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091393.P13380500772166686256

`∏{p}[n+1, (#+1)%3]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091393

/-- `∏{p}[n+1, (#+1)%3]` -/
def P13380500772166686256.Spec : Prop :=
  ∀ n, (P13380500772166686256.a n : ℤ) = A091393 (n + 1)

theorem P13380500772166686256.correct : P13380500772166686256.Spec := by
  intro n
  simp only [A091393, Nat.add_sub_cancel]

end A091393

/-! ## A091393.P11611392243247397010

`A351266(n+1)%9`
-/

namespace A091393.P11611392243247397010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A351266 (n + 1)) 9

end

end A091393.P11611392243247397010

namespace A091393

/-- `A351266(n+1)%9` -/
def P11611392243247397010.Spec : Prop :=
  ∀ n, P11611392243247397010.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P3958789868818586529

`∑{d}[n+1, A319448(#)]`
-/

namespace A091393.P3958789868818586529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A319448 d

end

end A091393.P3958789868818586529

namespace A091393

/-- `∑{d}[n+1, A319448(#)]` -/
def P3958789868818586529.Spec : Prop :=
  ∀ n, P3958789868818586529.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P5953091294393181285

`A000086(∏{p}[n+1, #])`
-/

namespace A091393.P5953091294393181285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091393.P5953091294393181285

namespace A091393

/-- `A000086(∏{p}[n+1, #])` -/
def P5953091294393181285.Spec : Prop :=
  ∀ n, P5953091294393181285.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P12840663429878758010

`A002324(∏{p}[n+1, #])`
-/

namespace A091393.P12840663429878758010
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091393.P12840663429878758010

namespace A091393

/-- `A002324(∏{p}[n+1, #])` -/
def P12840663429878758010.Spec : Prop :=
  ∀ n, P12840663429878758010.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P12704067199233345127

`∏{p}[n+1, A055668(#)]`
-/

namespace A091393.P12704067199233345127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A055668 p

end

end A091393.P12704067199233345127

namespace A091393

/-- `∏{p}[n+1, A055668(#)]` -/
def P12704067199233345127.Spec : Prop :=
  ∀ n, P12704067199233345127.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P12773760451406343405

`∏{p}[n+1, A074941(#)]`
-/

namespace A091393.P12773760451406343405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A074941 p

end

end A091393.P12773760451406343405

namespace A091393

/-- `∏{p}[n+1, A074941(#)]` -/
def P12773760451406343405.Spec : Prop :=
  ∀ n, P12773760451406343405.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P1793110662334138030

`A096936(∏{p}[n+1, #])`
-/

namespace A091393.P1793110662334138030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096936 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091393.P1793110662334138030

namespace A091393

/-- `A096936(∏{p}[n+1, #])` -/
def P1793110662334138030.Spec : Prop :=
  ∀ n, P1793110662334138030.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P294442018741871663

`A115979(∏{p}[n+1, #])`
-/

namespace A091393.P294442018741871663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115979 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091393.P294442018741871663

namespace A091393

/-- `A115979(∏{p}[n+1, #])` -/
def P294442018741871663.Spec : Prop :=
  ∀ n, P294442018741871663.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P1426134381155223558

`∏{p}[n+1, A374088(#)]`
-/

namespace A091393.P1426134381155223558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A374088 p

end

end A091393.P1426134381155223558

namespace A091393

/-- `∏{p}[n+1, A374088(#)]` -/
def P1426134381155223558.Spec : Prop :=
  ∀ n, P1426134381155223558.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P9416667051584958225

`ceil((A033716(∏{p}[n+1, #])+1)/2)-1`
-/

namespace A091393.P9416667051584958225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A033716 (∏ p ∈ Nat.primeFactors (f1 n), p) + 1 : ℚ) / 2⌉ - 1

end

end A091393.P9416667051584958225

namespace A091393

/-- `ceil((A033716(∏{p}[n+1, #])+1)/2)-1` -/
def P9416667051584958225.Spec : Prop :=
  ∀ n, P9416667051584958225.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P6241911101389196258

`A000086(A007947(n+1))`
-/

namespace A091393.P6241911101389196258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A007947 (n + 1)).toNat

end

end A091393.P6241911101389196258

namespace A091393

/-- `A000086(A007947(n+1))` -/
def P6241911101389196258.Spec : Prop :=
  ∀ n, P6241911101389196258.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P14270822303902610347

`A000086(A038502(n+1))`
-/

namespace A091393.P14270822303902610347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A038502 (n + 1)).toNat

end

end A091393.P14270822303902610347

namespace A091393

/-- `A000086(A038502(n+1))` -/
def P14270822303902610347.Spec : Prop :=
  ∀ n, P14270822303902610347.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P16657709959341661326

`A000086(A216913(n+1))`
-/

namespace A091393.P16657709959341661326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A216913 (n + 1)).toNat

end

end A091393.P16657709959341661326

namespace A091393

/-- `A000086(A216913(n+1))` -/
def P16657709959341661326.Spec : Prop :=
  ∀ n, P16657709959341661326.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P13456353946857185818

`A002324(sqrt(A078615(n+1)))`
-/

namespace A091393.P13456353946857185818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002324 (SequenceMachineLib.roundAway (Real.sqrt (A078615 (n + 1) : ℝ))).toNat

end

end A091393.P13456353946857185818

namespace A091393

/-- `A002324(sqrt(A078615(n+1)))` -/
def P13456353946857185818.Spec : Prop :=
  ∀ n, P13456353946857185818.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P1412801544031924291

`A000086((n+1)/A038500(n+1))`
-/

namespace A091393.P1412801544031924291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A038500 (n + 1) : ℚ))).toNat

end

end A091393.P1412801544031924291

namespace A091393

/-- `A000086((n+1)/A038500(n+1))` -/
def P1412801544031924291.Spec : Prop :=
  ∀ n, P1412801544031924291.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P10366520145201575250

`∑{d}[n+1, A343785(#)*A359377((n+1)/#)]`
-/

namespace A091393.P10366520145201575250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A343785 d * A359377 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091393.P10366520145201575250

namespace A091393

/-- `∑{d}[n+1, A343785(#)*A359377((n+1)/#)]` -/
def P10366520145201575250.Spec : Prop :=
  ∀ n, P10366520145201575250.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P7317315317500514653

`A000086(A020639(n+1)*A028234(n+1))`
-/

namespace A091393.P7317315317500514653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A020639 (n + 1) * A028234 (n + 1)).toNat

end

end A091393.P7317315317500514653

namespace A091393

/-- `A000086(A020639(n+1)*A028234(n+1))` -/
def P7317315317500514653.Spec : Prop :=
  ∀ n, P7317315317500514653.a n = A091393 (n + 1)

end A091393

/-! ## A091393.P17314404767070611672

`A000086(A030102(A030102(n+1)))`
-/

namespace A091393.P17314404767070611672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000086 (A030102 (A030102 (n + 1)).toNat).toNat

end

end A091393.P17314404767070611672

namespace A091393

/-- `A000086(A030102(A030102(n+1)))` -/
def P17314404767070611672.Spec : Prop :=
  ∀ n, P17314404767070611672.a n = A091393 (n + 1)

end A091393

/-!
# A091394: a(n) = Product_{ p | n } (1 + Legendre(-5,p) ).

The programs for A091394, the canonical program `A091394.P2197546848758199376` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091394 has offset 1).

The definition of A091394 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091394.P2197546848758199376

`A035183(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A091394

/-- `A035183(∏{p}[n+1, #])` -/
def P2197546848758199376.Spec : Prop :=
  ∀ n, P2197546848758199376.a n = A091394 (n + 1)

theorem P2197546848758199376.correct : P2197546848758199376.Spec := by
  intro n
  simp only [A091394, Nat.add_sub_cancel]

end A091394

/-! ## A091394.P278719308489298224

`∏{p}[xor(n, -1), A035183(#)]`
-/

namespace A091394.P278719308489298224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A035183 p

end

end A091394.P278719308489298224

namespace A091394

/-- `∏{p}[xor(n, -1), A035183(#)]` -/
def P278719308489298224.Spec : Prop :=
  ∀ n, P278719308489298224.a n = A091394 (n + 1)

end A091394

/-! ## A091394.P9969502381411851571

`A035183(A007947(n+1))`
-/

namespace A091394.P9969502381411851571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (A007947 (n + 1)).toNat

end

end A091394.P9969502381411851571

namespace A091394

/-- `A035183(A007947(n+1))` -/
def P9969502381411851571.Spec : Prop :=
  ∀ n, P9969502381411851571.a n = A091394 (n + 1)

end A091394

/-! ## A091394.P16004171133252585595

`A000035(n+1)*A035170(A007947(n+1))`
-/

namespace A091394.P16004171133252585595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1) * A035170 (A007947 (n + 1)).toNat

end

end A091394.P16004171133252585595

namespace A091394

/-- `A000035(n+1)*A035170(A007947(n+1))` -/
def P16004171133252585595.Spec : Prop :=
  ∀ n, P16004171133252585595.a n = A091394 (n + 1)

end A091394

/-! ## A091394.P3213307389556535015

`A035183(A302138(n+1))`
-/

namespace A091394.P3213307389556535015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (A302138 (n + 1)).toNat

end

end A091394.P3213307389556535015

namespace A091394

/-- `A035183(A302138(n+1))` -/
def P3213307389556535015.Spec : Prop :=
  ∀ n, P3213307389556535015.a n = A091394 (n + 1)

end A091394

/-! ## A091394.P9690194984131542075

`A035183(A088835((n+1)²))`
-/

namespace A091394.P9690194984131542075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035183 (A088835 ((n + 1) ^ 2)).toNat

end

end A091394.P9690194984131542075

namespace A091394

/-- `A035183(A088835((n+1)²))` -/
def P9690194984131542075.Spec : Prop :=
  ∀ n, P9690194984131542075.a n = A091394 (n + 1)

end A091394

/-!
# A091395: a(n) = Product_{ p | n } (1 + Legendre(-7,p) ).

The programs for A091395, the canonical program `A091395.P2913392625701699350` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091395 has offset 1).

The definition of A091395 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091395.P2913392625701699350

`A035182(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A091395

/-- `A035182(∏{p}[n+1, #])` -/
def P2913392625701699350.Spec : Prop :=
  ∀ n, P2913392625701699350.a n = A091395 (n + 1)

theorem P2913392625701699350.correct : P2913392625701699350.Spec := by
  intro n
  simp only [A091395, Nat.add_sub_cancel]

end A091395

/-! ## A091395.P18266594531919463203

`A352563(∏{p}[n+1, #])`
-/

namespace A091395.P18266594531919463203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352563 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091395.P18266594531919463203

namespace A091395

/-- `A352563(∏{p}[n+1, #])` -/
def P18266594531919463203.Spec : Prop :=
  ∀ n, P18266594531919463203.a n = A091395 (n + 1)

end A091395

/-! ## A091395.P9118247391911527521

`A002652(∏{p}[n+1, #])/2`
-/

namespace A091395.P9118247391911527521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002652 (∏ p ∈ Nat.primeFactors (f1 n), p) : ℚ) / 2

end

end A091395.P9118247391911527521

namespace A091395

/-- `A002652(∏{p}[n+1, #])/2` -/
def P9118247391911527521.Spec : Prop :=
  ∀ n, P9118247391911527521.a n = (A091395 (n + 1) : ℚ)

end A091395

/-! ## A091395.P10519667663725388109

`A035182(A007947(n+1))`
-/

namespace A091395.P10519667663725388109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035182 (A007947 (n + 1)).toNat

end

end A091395.P10519667663725388109

namespace A091395

/-- `A035182(A007947(n+1))` -/
def P10519667663725388109.Spec : Prop :=
  ∀ n, P10519667663725388109.a n = A091395 (n + 1)

end A091395

/-! ## A091395.P12340471055677412360

`A110399(4*A007947(n+1))`
-/

namespace A091395.P12340471055677412360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110399 (4 * A007947 (n + 1)).toNat

end

end A091395.P12340471055677412360

namespace A091395

/-- `A110399(4*A007947(n+1))` -/
def P12340471055677412360.Spec : Prop :=
  ∀ n, P12340471055677412360.a n = A091395 (n + 1)

end A091395

/-! ## A091395.P15442681664894612579

`∏{p}[(n+1)*A000265(n+1), A000701(A002652(#))]`
-/

namespace A091395.P15442681664894612579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A000701 (A002652 p).toNat

end

end A091395.P15442681664894612579

namespace A091395

/-- `∏{p}[(n+1)*A000265(n+1), A000701(A002652(#))]` -/
def P15442681664894612579.Spec : Prop :=
  ∀ n, P15442681664894612579.a n = A091395 (n + 1)

end A091395

/-!
# A091396: a(n) = Product_{ p | n } (1 + Legendre(2,p) ).

The programs for A091396, the canonical program `A091396.P2690525811667358135` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091396 has offset 1).

The definition of A091396 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091396.P7097042022436338775

`∑{d}[n+1, A091069(#)]`
-/

namespace A091396.P7097042022436338775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091069 d

end

end A091396.P7097042022436338775

namespace A091396

/-- `∑{d}[n+1, A091069(#)]` -/
def P7097042022436338775.Spec : Prop :=
  ∀ n, P7097042022436338775.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P2690525811667358135

`A035185(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A091396

/-- `A035185(∏{p}[n+1, #])` -/
def P2690525811667358135.Spec : Prop :=
  ∀ n, P2690525811667358135.a n = A091396 (n + 1)

theorem P2690525811667358135.correct : P2690525811667358135.Spec := by
  intro n
  simp only [A091396, Nat.add_sub_cancel]

end A091396

/-! ## A091396.P13693401489911003318

`A087780(∏{p}[n+1, #])`
-/

namespace A091396.P13693401489911003318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091396.P13693401489911003318

namespace A091396

/-- `A087780(∏{p}[n+1, #])` -/
def P13693401489911003318.Spec : Prop :=
  ∀ n, P13693401489911003318.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P8885061387159086956

`∏{p}[n+1, A118917(#)]`
-/

namespace A091396.P8885061387159086956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A118917 p

end

end A091396.P8885061387159086956

namespace A091396

/-- `∏{p}[n+1, A118917(#)]` -/
def P8885061387159086956.Spec : Prop :=
  ∀ n, P8885061387159086956.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P17424129002285894061

`A352551(∏{p}[n+1, #])`
-/

namespace A091396.P17424129002285894061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352551 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091396.P17424129002285894061

namespace A091396

/-- `A352551(∏{p}[n+1, #])` -/
def P17424129002285894061.Spec : Prop :=
  ∀ n, P17424129002285894061.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P7294152822202267081

`∑{d}[∏{p}[n+1, #], A091337(#)]`
-/

namespace A091396.P7294152822202267081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091337 d

end

end A091396.P7294152822202267081

namespace A091396

/-- `∑{d}[∏{p}[n+1, #], A091337(#)]` -/
def P7294152822202267081.Spec : Prop :=
  ∀ n, P7294152822202267081.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P6691279469077614915

`A035185(A007947(n+1))`
-/

namespace A091396.P6691279469077614915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A007947 (n + 1)).toNat

end

end A091396.P6691279469077614915

namespace A091396

/-- `A035185(A007947(n+1))` -/
def P6691279469077614915.Spec : Prop :=
  ∀ n, P6691279469077614915.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P5778852565426919528

`A087780(A000265(n+1))`
-/

namespace A091396.P5778852565426919528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A000265 (n + 1)).toNat

end

end A091396.P5778852565426919528

namespace A091396

/-- `A087780(A000265(n+1))` -/
def P5778852565426919528.Spec : Prop :=
  ∀ n, P5778852565426919528.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P13681094439302274841

`A087780(A065883(n+1))`
-/

namespace A091396.P13681094439302274841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A065883 (n + 1)).toNat

end

end A091396.P13681094439302274841

namespace A091396

/-- `A087780(A065883(n+1))` -/
def P13681094439302274841.Spec : Prop :=
  ∀ n, P13681094439302274841.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P9180343783809477643

`A035185(A204455(n+1))`
-/

namespace A091396.P9180343783809477643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A204455 (n + 1)).toNat

end

end A091396.P9180343783809477643

namespace A091396

/-- `A035185(A204455(n+1))` -/
def P9180343783809477643.Spec : Prop :=
  ∀ n, P9180343783809477643.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P14172347695580841391

`A087780(A259445(n+1))`
-/

namespace A091396.P14172347695580841391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A259445 (n + 1)).toNat

end

end A091396.P14172347695580841391

namespace A091396

/-- `A087780(A259445(n+1))` -/
def P14172347695580841391.Spec : Prop :=
  ∀ n, P14172347695580841391.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P7020568650832898037

`A035185(A099985(n+1)/2)`
-/

namespace A091396.P7020568650832898037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (SequenceMachineLib.roundAway ((A099985 (n + 1) : ℚ) / 2)).toNat

end

end A091396.P7020568650832898037

namespace A091396

/-- `A035185(A099985(n+1)/2)` -/
def P7020568650832898037.Spec : Prop :=
  ∀ n, P7020568650832898037.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P12908572830382087161

`∑{d}[n+1, A091337(#)*A353627((n+1)/#)]`
-/

namespace A091396.P12908572830382087161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A091337 d * A353627 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A091396.P12908572830382087161

namespace A091396

/-- `∑{d}[n+1, A091337(#)*A353627((n+1)/#)]` -/
def P12908572830382087161.Spec : Prop :=
  ∀ n, P12908572830382087161.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P4556636194428680275

`A035185(A099985(n+1))`
-/

namespace A091396.P4556636194428680275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035185 (A099985 (n + 1)).toNat

end

end A091396.P4556636194428680275

namespace A091396

/-- `A035185(A099985(n+1))` -/
def P4556636194428680275.Spec : Prop :=
  ∀ n, P4556636194428680275.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P7298964268437525620

`A087780(A166140(n+1))`
-/

namespace A091396.P7298964268437525620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A166140 (n + 1)).toNat

end

end A091396.P7298964268437525620

namespace A091396

/-- `A087780(A166140(n+1))` -/
def P7298964268437525620.Spec : Prop :=
  ∀ n, P7298964268437525620.a n = A091396 (n + 1)

end A091396

/-! ## A091396.P13419931292502923077

`A087780(A191871(n+1))`
-/

namespace A091396.P13419931292502923077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087780 (A191871 (n + 1)).toNat

end

end A091396.P13419931292502923077

namespace A091396

/-- `A087780(A191871(n+1))` -/
def P13419931292502923077.Spec : Prop :=
  ∀ n, P13419931292502923077.a n = A091396 (n + 1)

end A091396

/-!
# A091397: a(n) = Product_{ p | n } (1 + Legendre(3,p) ).

The programs for A091397, the canonical program `A091397.P12586463803707334574` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091397 has offset 1).

The definition of A091397 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091397.P12586463803707334574

`A035186(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A091397

/-- `A035186(∏{p}[n+1, #])` -/
def P12586463803707334574.Spec : Prop :=
  ∀ n, P12586463803707334574.a n = A091397 (n + 1)

theorem P12586463803707334574.correct : P12586463803707334574.Spec := by
  intro n
  simp only [A091397, Nat.add_sub_cancel]

end A091397

/-! ## A091397.P5492353826470305594

`A035186(A007947(n+1))`
-/

namespace A091397.P5492353826470305594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A007947 (n + 1)).toNat

end

end A091397.P5492353826470305594

namespace A091397

/-- `A035186(A007947(n+1))` -/
def P5492353826470305594.Spec : Prop :=
  ∀ n, P5492353826470305594.a n = A091397 (n + 1)

end A091397

/-! ## A091397.P11300523253523628244

`A035186(A216913(n+1))`
-/

namespace A091397.P11300523253523628244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A216913 (n + 1)).toNat

end

end A091397.P11300523253523628244

namespace A091397

/-- `A035186(A216913(n+1))` -/
def P11300523253523628244.Spec : Prop :=
  ∀ n, P11300523253523628244.a n = A091397 (n + 1)

end A091397

/-! ## A091397.P7027806791478384366

`A035186(A302138(n+1))`
-/

namespace A091397.P7027806791478384366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A302138 (n + 1)).toNat

end

end A091397.P7027806791478384366

namespace A091397

/-- `A035186(A302138(n+1))` -/
def P7027806791478384366.Spec : Prop :=
  ∀ n, P7027806791478384366.a n = A091397 (n + 1)

end A091397

/-! ## A091397.P10032107962471731159

`A035186(A088835((n+1)²))`
-/

namespace A091397.P10032107962471731159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035186 (A088835 ((n + 1) ^ 2)).toNat

end

end A091397.P10032107962471731159

namespace A091397

/-- `A035186(A088835((n+1)²))` -/
def P10032107962471731159.Spec : Prop :=
  ∀ n, P10032107962471731159.a n = A091397 (n + 1)

end A091397

/-!
# A091398: a(n) = Product_{ p | n } (1 + Legendre(5,p) ).

The programs for A091398, the canonical program `A091398.P4964007732348013414` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091398 has offset 1).

The definition of A091398 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091398.P4964007732348013414

`∏{p}[n+1, (#²+1)%5]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A091398

/-- `∏{p}[n+1, (#²+1)%5]` -/
def P4964007732348013414.Spec : Prop :=
  ∀ n, (P4964007732348013414.a n : ℤ) = A091398 (n + 1)

theorem P4964007732348013414.correct : P4964007732348013414.Spec := by
  intro n
  simp only [A091398, Nat.add_sub_cancel]

end A091398

/-! ## A091398.P587049943080406374

`A035187(∏{p}[n+1, #])`
-/

namespace A091398.P587049943080406374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091398.P587049943080406374

namespace A091398

/-- `A035187(∏{p}[n+1, #])` -/
def P587049943080406374.Spec : Prop :=
  ∀ n, P587049943080406374.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P13277443315125421341

`A087781(∏{p}[n+1, #])`
-/

namespace A091398.P13277443315125421341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087781 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091398.P13277443315125421341

namespace A091398

/-- `A087781(∏{p}[n+1, #])` -/
def P13277443315125421341.Spec : Prop :=
  ∀ n, P13277443315125421341.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P387256264958396475

`A352550(∏{p}[n+1, #])`
-/

namespace A091398.P387256264958396475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352550 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A091398.P387256264958396475

namespace A091398

/-- `A352550(∏{p}[n+1, #])` -/
def P387256264958396475.Spec : Prop :=
  ∀ n, P387256264958396475.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P9715117786021912965

`∏{p}[n+1, A374089(#)]`
-/

namespace A091398.P9715117786021912965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A374089 p

end

end A091398.P9715117786021912965

namespace A091398

/-- `∏{p}[n+1, A374089(#)]` -/
def P9715117786021912965.Spec : Prop :=
  ∀ n, P9715117786021912965.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P3958104626634058187

`A035187(A007947(n+1))`
-/

namespace A091398.P3958104626634058187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A007947 (n + 1)).toNat

end

end A091398.P3958104626634058187

namespace A091398

/-- `A035187(A007947(n+1))` -/
def P3958104626634058187.Spec : Prop :=
  ∀ n, P3958104626634058187.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P4384494416789677417

`A087781(A066069(n+1))`
-/

namespace A091398.P4384494416789677417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087781 (A066069 (n + 1)).toNat

end

end A091398.P4384494416789677417

namespace A091398

/-- `A087781(A066069(n+1))` -/
def P4384494416789677417.Spec : Prop :=
  ∀ n, P4384494416789677417.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P16933635604053959753

`A087781(A132739(n+1))`
-/

namespace A091398.P16933635604053959753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087781 (A132739 (n + 1)).toNat

end

end A091398.P16933635604053959753

namespace A091398

/-- `A087781(A132739(n+1))` -/
def P16933635604053959753.Spec : Prop :=
  ∀ n, P16933635604053959753.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P14485781739234390064

`A010874(A167356(n+1))`
-/

namespace A091398.P14485781739234390064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A167356 (n + 1)).toNat

end

end A091398.P14485781739234390064

namespace A091398

/-- `A010874(A167356(n+1))` -/
def P14485781739234390064.Spec : Prop :=
  ∀ n, P14485781739234390064.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P13734905423632267514

`A087781(A166140(n+1))`
-/

namespace A091398.P13734905423632267514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087781 (A166140 (n + 1)).toNat

end

end A091398.P13734905423632267514

namespace A091398

/-- `A087781(A166140(n+1))` -/
def P13734905423632267514.Spec : Prop :=
  ∀ n, P13734905423632267514.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P5895373949190478094

`A010874(A167355(n+1))`
-/

namespace A091398.P5895373949190478094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010874 (A167355 (n + 1)).toNat

end

end A091398.P5895373949190478094

namespace A091398

/-- `A010874(A167355(n+1))` -/
def P5895373949190478094.Spec : Prop :=
  ∀ n, P5895373949190478094.a n = A091398 (n + 1)

end A091398

/-! ## A091398.P14198241782022707824

`A035187(A088835((n+1)²))`
-/

namespace A091398.P14198241782022707824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035187 (A088835 ((n + 1) ^ 2)).toNat

end

end A091398.P14198241782022707824

namespace A091398

/-- `A035187(A088835((n+1)²))` -/
def P14198241782022707824.Spec : Prop :=
  ∀ n, P14198241782022707824.a n = A091398 (n + 1)

end A091398

/-!
# A091399: a(n) = Product_{ p | n } (1 + Legendre(7,p) ).

The programs for A091399, the canonical program `A091399.P5118793221224160837` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A091399 has offset 1).

The definition of A091399 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A091399.P5118793221224160837

`A035189(∏{p}[n+1, #])`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A091399

/-- `A035189(∏{p}[n+1, #])` -/
def P5118793221224160837.Spec : Prop :=
  ∀ n, P5118793221224160837.a n = A091399 (n + 1)

theorem P5118793221224160837.correct : P5118793221224160837.Spec := by
  intro n
  simp only [A091399, Nat.add_sub_cancel]

end A091399

/-! ## A091399.P2561104987630372764

`A035189(A007947(n+1))`
-/

namespace A091399.P2561104987630372764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (A007947 (n + 1)).toNat

end

end A091399.P2561104987630372764

namespace A091399

/-- `A035189(A007947(n+1))` -/
def P2561104987630372764.Spec : Prop :=
  ∀ n, P2561104987630372764.a n = A091399 (n + 1)

end A091399

/-! ## A091399.P1999731906164302803

`A035189(A075423(n+1)+1)`
-/

namespace A091399.P1999731906164302803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (A075423 (n + 1) + 1).toNat

end

end A091399.P1999731906164302803

namespace A091399

/-- `A035189(A075423(n+1)+1)` -/
def P1999731906164302803.Spec : Prop :=
  ∀ n, P1999731906164302803.a n = A091399 (n + 1)

end A091399

/-! ## A091399.P7924036622357463138

`A035189(A076618(n+1)-1)`
-/

namespace A091399.P7924036622357463138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (A076618 (n + 1) - 1).toNat

end

end A091399.P7924036622357463138

namespace A091399

/-- `A035189(A076618(n+1)-1)` -/
def P7924036622357463138.Spec : Prop :=
  ∀ n, P7924036622357463138.a n = A091399 (n + 1)

end A091399

/-! ## A091399.P11724698457450440594

`∑{d}[A007947(n+1), A089509(#)]`
-/

namespace A091399.P11724698457450440594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A089509 d

end

end A091399.P11724698457450440594

namespace A091399

/-- `∑{d}[A007947(n+1), A089509(#)]` -/
def P11724698457450440594.Spec : Prop :=
  ∀ n, P11724698457450440594.a n = A091399 (n + 1)

end A091399

/-! ## A091399.P12428261487631478642

`A035189((n+1)/A295658((n+1)²))`
-/

namespace A091399.P12428261487631478642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035189 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A295658 ((n + 1) ^ 2) : ℚ))).toNat

end

end A091399.P12428261487631478642

namespace A091399

/-- `A035189((n+1)/A295658((n+1)²))` -/
def P12428261487631478642.Spec : Prop :=
  ∀ n, P12428261487631478642.a n = A091399 (n + 1)

end A091399

