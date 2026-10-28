import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C021
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C036
import Seq.B000.C042
import Seq.B000.C045
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C008
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C002
import Seq.Opaque.C006
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C024

/-!
# A401407: a(n) = lambda(n)*chi_{-4}(n) = A008836(n)*A101455(n).

The programs for A401407, the canonical program `A401407.P9579087663748494119` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401407 has offset 1).

The definition of A401407 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401407.P9579087663748494119

`A008836(n+1)*A101455(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A401407

/-- `A008836(n+1)*A101455(n+1)` -/
def P9579087663748494119.Spec : Prop :=
  ∀ n, P9579087663748494119.a n = A401407 (n + 1)

theorem P9579087663748494119.correct : P9579087663748494119.Spec := by
  intro n
  simp only [A401407, Nat.add_sub_cancel]

end A401407

/-! ## A401407.P9169983314484904364

`Δ[A401365(n)]`
-/

namespace A401407.P9169983314484904364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A401407.P9169983314484904364

namespace A401407

/-- `Δ[A401365(n)]` -/
def P9169983314484904364.Spec : Prop :=
  ∀ n, P9169983314484904364.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P2360796043678593759

`A209662(n+1)%2`
-/

namespace A401407.P2360796043678593759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209662 (n + 1)) 2

end

end A401407.P2360796043678593759

namespace A401407

/-- `A209662(n+1)%2` -/
def P2360796043678593759.Spec : Prop :=
  ∀ n, P2360796043678593759.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P9529604084824115973

`A009531(A166586(n+1))`
-/

namespace A401407.P9529604084824115973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009531 (A166586 (n + 1)).toNat

end

end A401407.P9529604084824115973

namespace A401407

/-- `A009531(A166586(n+1))` -/
def P9529604084824115973.Spec : Prop :=
  ∀ n, P9529604084824115973.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P10379324244099653776

`A101455(A074722(n+1))`
-/

namespace A401407.P10379324244099653776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101455 (A074722 (n + 1)).toNat

end

end A401407.P10379324244099653776

namespace A401407

/-- `A101455(A074722(n+1))` -/
def P10379324244099653776.Spec : Prop :=
  ∀ n, P10379324244099653776.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P16564464893496183371

`A166698(A072436(n+1))`
-/

namespace A401407.P16564464893496183371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (A072436 (n + 1)).toNat

end

end A401407.P16564464893496183371

namespace A401407

/-- `A166698(A072436(n+1))` -/
def P16564464893496183371.Spec : Prop :=
  ∀ n, P16564464893496183371.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P13986901447693115079

`A401365(n+1)-A401365(n)`
-/

namespace A401407.P13986901447693115079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401365 (n + 1) - A401365 n

end

end A401407.P13986901447693115079

namespace A401407

/-- `A401365(n+1)-A401365(n)` -/
def P13986901447693115079.Spec : Prop :=
  ∀ n, P13986901447693115079.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P17518706064958071014

`A008836(n+1)*A056594(n)`
-/

namespace A401407.P17518706064958071014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (n + 1) * A056594 n

end

end A401407.P17518706064958071014

namespace A401407

/-- `A008836(n+1)*A056594(n)` -/
def P17518706064958071014.Spec : Prop :=
  ∀ n, P17518706064958071014.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P7473814680291351716

`A009001(n)*A166698(n+1)`
-/

namespace A401407.P7473814680291351716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 n * A166698 (n + 1)

end

end A401407.P7473814680291351716

namespace A401407

/-- `A009001(n)*A166698(n+1)` -/
def P7473814680291351716.Spec : Prop :=
  ∀ n, P7473814680291351716.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P3849617481784180155

`A056594(n)*A166698(n+1)`
-/

namespace A401407.P3849617481784180155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A166698 (n + 1)

end

end A401407.P3849617481784180155

namespace A401407

/-- `A056594(n)*A166698(n+1)` -/
def P3849617481784180155.Spec : Prop :=
  ∀ n, P3849617481784180155.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P12824061061990103431

`A057077(n)*A166698(n+1)`
-/

namespace A401407.P12824061061990103431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057077 n * A166698 (n + 1)

end

end A401407.P12824061061990103431

namespace A401407

/-- `A057077(n)*A166698(n+1)` -/
def P12824061061990103431.Spec : Prop :=
  ∀ n, P12824061061990103431.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P2455945664647229431

`A087960(n)*A166698(n+1)`
-/

namespace A401407.P2455945664647229431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A166698 (n + 1)

end

end A401407.P2455945664647229431

namespace A401407

/-- `A087960(n)*A166698(n+1)` -/
def P2455945664647229431.Spec : Prop :=
  ∀ n, P2455945664647229431.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P11041215806592692927

`A059841(n)*A209661(n+1)`
-/

namespace A401407.P11041215806592692927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n * A209661 (n + 1)

end

end A401407.P11041215806592692927

namespace A401407

/-- `A059841(n)*A209661(n+1)` -/
def P11041215806592692927.Spec : Prop :=
  ∀ n, P11041215806592692927.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P254538749737635470

`A131379(n)*A166698(n+1)`
-/

namespace A401407.P254538749737635470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131379 n * A166698 (n + 1)

end

end A401407.P254538749737635470

namespace A401407

/-- `A131379(n)*A166698(n+1)` -/
def P254538749737635470.Spec : Prop :=
  ∀ n, P254538749737635470.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P13471860215317942690

`A156872(n)*A166698(n+1)`
-/

namespace A401407.P13471860215317942690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156872 n * A166698 (n + 1)

end

end A401407.P13471860215317942690

namespace A401407

/-- `A156872(n)*A166698(n+1)` -/
def P13471860215317942690.Spec : Prop :=
  ∀ n, P13471860215317942690.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P874767081114651637

`A158496(n)*A166698(n+1)`
-/

namespace A401407.P874767081114651637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158496 n * A166698 (n + 1)

end

end A401407.P874767081114651637

namespace A401407

/-- `A158496(n)*A166698(n+1)` -/
def P874767081114651637.Spec : Prop :=
  ∀ n, P874767081114651637.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P17879585241188763871

`A166698(n+1)*A242073(n)`
-/

namespace A401407.P17879585241188763871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166698 (n + 1) * A242073 n

end

end A401407.P17879585241188763871

namespace A401407

/-- `A166698(n+1)*A242073(n)` -/
def P17879585241188763871.Spec : Prop :=
  ∀ n, P17879585241188763871.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P11964749345214051809

`A056594(n)*A358839(n+1)`
-/

namespace A401407.P11964749345214051809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A358839 (n + 1)

end

end A401407.P11964749345214051809

namespace A401407

/-- `A056594(n)*A358839(n+1)` -/
def P11964749345214051809.Spec : Prop :=
  ∀ n, P11964749345214051809.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P8364791092285154748

`A056594(n)*A359154(n+1)`
-/

namespace A401407.P8364791092285154748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A359154 (n + 1)

end

end A401407.P8364791092285154748

namespace A401407

/-- `A056594(n)*A359154(n+1)` -/
def P8364791092285154748.Spec : Prop :=
  ∀ n, P8364791092285154748.a n = A401407 (n + 1)

end A401407

/-! ## A401407.P16863316362632406787

`A056594(n)*A359792(n+1)`
-/

namespace A401407.P16863316362632406787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n * A359792 (n + 1)

end

end A401407.P16863316362632406787

namespace A401407

/-- `A056594(n)*A359792(n+1)` -/
def P16863316362632406787.Spec : Prop :=
  ∀ n, P16863316362632406787.a n = A401407 (n + 1)

end A401407

/-!
# A401408: Partial sums of A209661.

The programs for A401408, there is no canonical definition to state claims against.
-/

/-! ## A401408.P17671057652944369856

`∑[A011616(n^3)]`
-/

namespace A401408.P17671057652944369856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011616 (n ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401408.P17671057652944369856

/-!
# A401409: Partial sums of A209615.

The programs for A401409, the canonical program `A401409.P15315601482885361592` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401409 has offset 0).

The definition of A401409 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401409.P15315601482885361592

`A065359(A003188(n))`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401409

/-- `A065359(A003188(n))` -/
def P15315601482885361592.Spec : Prop :=
  ∀ n, P15315601482885361592.a n = A401409 n

theorem P15315601482885361592.correct : P15315601482885361592.Spec := by
  intro n
  simp only [A401409]

end A401409

/-! ## A401409.P1489326077187786140

`A401437(n+1)-(A401437(n)+A209615(n+1))`
-/

namespace A401409.P1489326077187786140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401437 (n + 1) - (A401437 n + A209615 (n + 1))

end

end A401409.P1489326077187786140

namespace A401409

/-- `A401437(n+1)-(A401437(n)+A209615(n+1))` -/
def P1489326077187786140.Spec : Prop :=
  ∀ n, P1489326077187786140.a n = A401409 n

end A401409

/-! ## A401409.P17173662218274306342

`A195017(A302033(n))`
-/

namespace A401409.P17173662218274306342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195017 (A302033 n).toNat

end

end A401409.P17173662218274306342

namespace A401409

/-- `A195017(A302033(n))` -/
def P17173662218274306342.Spec : Prop :=
  ∀ n, P17173662218274306342.a n = A401409 n

end A401409

/-!
# A401421: The sum of coreful divisors of n (A284318) that are cubefree (A004709).

The programs for A401421, the canonical program `A401421.P9073841599611467425` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401421 has offset 1).

The definition of A401421 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401421.P4365005239126252553

`A003968(A007948(n+1))`
-/

namespace A401421.P4365005239126252553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (A007948 (n + 1)).toNat

end

end A401421.P4365005239126252553

namespace A401421

/-- `A003968(A007948(n+1))` -/
def P4365005239126252553.Spec : Prop :=
  ∀ n, P4365005239126252553.a n = A401421 (n + 1)

end A401421

/-! ## A401421.P7811216467767778262

`A361174(A353897(n+1))`
-/

namespace A401421.P7811216467767778262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361174 (A353897 (n + 1)).toNat

end

end A401421.P7811216467767778262

namespace A401421

/-- `A361174(A353897(n+1))` -/
def P7811216467767778262.Spec : Prop :=
  ∀ n, P7811216467767778262.a n = A401421 (n + 1)

end A401421

/-! ## A401421.P9073841599611467425

`A007947(n+1)*A295295(n+1)`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401421

/-- `A007947(n+1)*A295295(n+1)` -/
def P9073841599611467425.Spec : Prop :=
  ∀ n, P9073841599611467425.a n = A401421 (n + 1)

theorem P9073841599611467425.correct : P9073841599611467425.Spec := by
  intro n
  simp only [A401421, Nat.add_sub_cancel]

end A401421

/-! ## A401421.P15024644073355314281

`A003968((n+1)/A003557(A003557(n+1)))`
-/

namespace A401421.P15024644073355314281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A401421.P15024644073355314281

namespace A401421

/-- `A003968((n+1)/A003557(A003557(n+1)))` -/
def P15024644073355314281.Spec : Prop :=
  ∀ n, P15024644073355314281.a n = A401421 (n + 1)

end A401421

/-! ## A401421.P18254114465499161945

`A057723((n+1)/A003557(A003557(n+1)))`
-/

namespace A401421.P18254114465499161945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A003557 (A003557 (n + 1)).toNat : ℚ))).toNat

end

end A401421.P18254114465499161945

namespace A401421

/-- `A057723((n+1)/A003557(A003557(n+1)))` -/
def P18254114465499161945.Spec : Prop :=
  ∀ n, P18254114465499161945.a n = A401421 (n + 1)

end A401421

/-! ## A401421.P5350659473104252840

`A361174(A356194(n+1))`
-/

namespace A401421.P5350659473104252840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361174 (A356194 (n + 1)).toNat

end

end A401421.P5350659473104252840

namespace A401421

/-- `A361174(A356194(n+1))` -/
def P5350659473104252840.Spec : Prop :=
  ∀ n, P5350659473104252840.a n = A401421 (n + 1)

end A401421

/-!
# A401422: The number of terms in A138302 that divide the smallest coreful infinitary divisor of n.

The programs for A401422, the canonical program `A401422.P13323872969237740988` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401422 has offset 1).

The definition of A401422 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401422.P2863499948558819369

`A353898(A365296(n+1))`
-/

namespace A401422.P2863499948558819369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353898 (A365296 (n + 1)).toNat

end

end A401422.P2863499948558819369

namespace A401422

/-- `A353898(A365296(n+1))` -/
def P2863499948558819369.Spec : Prop :=
  ∀ n, P2863499948558819369.a n = A401422 (n + 1)

end A401422

/-! ## A401422.P13323872969237740988

`∏{e}[n+1, val(#, 2)+2]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A401422

/-- `∏{e}[n+1, val(#, 2)+2]` -/
def P13323872969237740988.Spec : Prop :=
  ∀ n, (P13323872969237740988.a n : ℤ) = A401422 (n + 1)

theorem P13323872969237740988.correct : P13323872969237740988.Spec := by
  intro n
  simp only [A401422, Nat.add_sub_cancel]

end A401422

/-! ## A401422.P3864312711403993107

`A392628(A102631(n+1))`
-/

namespace A401422.P3864312711403993107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392628 (A102631 (n + 1)).toNat

end

end A401422.P3864312711403993107

namespace A401422

/-- `A392628(A102631(n+1))` -/
def P3864312711403993107.Spec : Prop :=
  ∀ n, P3864312711403993107.a n = A401422 (n + 1)

end A401422

/-! ## A401422.P3051756077588497402

`A392447(A278254(n+1))`
-/

namespace A401422.P3051756077588497402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 (A278254 (n + 1)).toNat

end

end A401422.P3051756077588497402

namespace A401422

/-- `A392447(A278254(n+1))` -/
def P3051756077588497402.Spec : Prop :=
  ∀ n, P3051756077588497402.a n = A401422 (n + 1)

end A401422

/-! ## A401422.P16752798002629987223

`A392447((n+1)²)`
-/

namespace A401422.P16752798002629987223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392447 ((n + 1) ^ 2)

end

end A401422.P16752798002629987223

namespace A401422

/-- `A392447((n+1)²)` -/
def P16752798002629987223.Spec : Prop :=
  ∀ n, P16752798002629987223.a n = A401422 (n + 1)

end A401422

/-! ## A401422.P1155314065043419292

`A049419(A365296((n+1)²))`
-/

namespace A401422.P1155314065043419292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (A365296 ((n + 1) ^ 2)).toNat

end

end A401422.P1155314065043419292

namespace A401422

/-- `A049419(A365296((n+1)²))` -/
def P1155314065043419292.Spec : Prop :=
  ∀ n, P1155314065043419292.a n = A401422 (n + 1)

end A401422

/-! ## A401422.P10834513104804102386

`A372380(A401425(A350390((n+1)²)))`
-/

namespace A401422.P10834513104804102386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372380 (A401425 (A350390 ((n + 1) ^ 2)).toNat).toNat

end

end A401422.P10834513104804102386

namespace A401422

/-- `A372380(A401425(A350390((n+1)²)))` -/
def P10834513104804102386.Spec : Prop :=
  ∀ n, P10834513104804102386.a n = A401422 (n + 1)

end A401422

/-! ## A401422.P12257498270340376418

`A338782(A338782(A392447((n+1)*(n+1))))`
-/

namespace A401422.P12257498270340376418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338782 (A338782 (A392447 ((n + 1) * (n + 1))).toNat).toNat

end

end A401422.P12257498270340376418

namespace A401422

/-- `A338782(A338782(A392447((n+1)*(n+1))))` -/
def P12257498270340376418.Spec : Prop :=
  ∀ n, P12257498270340376418.a n = A401422 (n + 1)

end A401422

/-!
# A401423: The number of coreful divisors of the smallest coreful infinitary divisor of n.

The programs for A401423, the canonical program `A401423.P8069109336457977879` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401423 has offset 1).

The definition of A401423 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401423.P862875318019210488

`A005361(A365296(n+1))`
-/

namespace A401423.P862875318019210488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A365296 (n + 1)).toNat

end

end A401423.P862875318019210488

namespace A401423

/-- `A005361(A365296(n+1))` -/
def P862875318019210488.Spec : Prop :=
  ∀ n, P862875318019210488.a n = A401423 (n + 1)

end A401423

/-! ## A401423.P8069109336457977879

`∏{e}[n+1, and(#, -#)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A401423

/-- `∏{e}[n+1, and(#, -#)]` -/
def P8069109336457977879.Spec : Prop :=
  ∀ n, P8069109336457977879.a n = A401423 (n + 1)

theorem P8069109336457977879.correct : P8069109336457977879.Spec := by
  intro n
  simp only [A401423, Nat.add_sub_cancel]

end A401423

/-! ## A401423.P4597329290682568238

`2^∑{e}[n+1, val(#, 2)]`
-/

namespace A401423.P4597329290682568238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (Nat.factorization (f1 n) p) 2)

end

end A401423.P4597329290682568238

namespace A401423

/-- `2^∑{e}[n+1, val(#, 2)]` -/
def P4597329290682568238.Spec : Prop :=
  ∀ n, (P4597329290682568238.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P7302287465099455232

`2^val(∏{e}[n+1, #], 2)`
-/

namespace A401423.P7302287465099455232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) 2

end

end A401423.P7302287465099455232

namespace A401423

/-- `2^val(∏{e}[n+1, #], 2)` -/
def P7302287465099455232.Spec : Prop :=
  ∀ n, (P7302287465099455232.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P7476109375084284358

`∏{e}[n+1, -or(#, -#)]`
-/

namespace A401423.P7476109375084284358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (-Int.lor (Nat.factorization (f1 n) p : ℤ) (-(Nat.factorization (f1 n) p : ℤ)))

end

end A401423.P7476109375084284358

namespace A401423

/-- `∏{e}[n+1, -or(#, -#)]` -/
def P7476109375084284358.Spec : Prop :=
  ∀ n, P7476109375084284358.a n = A401423 (n + 1)

end A401423

/-! ## A401423.P9968555937913465143

`∏{e}[2*n-(n-1), gcd(8, #)]`
-/

namespace A401423.P9968555937913465143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.gcd 8 (Nat.factorization (f1 n).natAbs p)

end

end A401423.P9968555937913465143

namespace A401423

/-- `∏{e}[2*n-(n-1), gcd(8, #)]` -/
def P9968555937913465143.Spec : Prop :=
  ∀ n, (P9968555937913465143.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P7002903332135870591

`2^A386258(n+1)`
-/

namespace A401423.P7002903332135870591
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A386258 (n + 1) : ℤ)

end

end A401423.P7002903332135870591

namespace A401423

/-- `2^A386258(n+1)` -/
def P7002903332135870591.Spec : Prop :=
  ∀ n, P7002903332135870591.a n = (A401423 (n + 1) : ℚ)

end A401423

/-! ## A401423.P14376977039819542485

`A006519(∏{e}[n+1, #])`
-/

namespace A401423.P14376977039819542485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A401423.P14376977039819542485

namespace A401423

/-- `A006519(∏{e}[n+1, #])` -/
def P14376977039819542485.Spec : Prop :=
  ∀ n, P14376977039819542485.a n = A401423 (n + 1)

end A401423

/-! ## A401423.P18324140347845231367

`∏{e}[A365296(n+1), #]`
-/

namespace A401423.P18324140347845231367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365296 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A401423.P18324140347845231367

namespace A401423

/-- `∏{e}[A365296(n+1), #]` -/
def P18324140347845231367.Spec : Prop :=
  ∀ n, (P18324140347845231367.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P10425506314178714319

`A006519(A005361(n+1))`
-/

namespace A401423.P10425506314178714319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A005361 (n + 1)).toNat

end

end A401423.P10425506314178714319

namespace A401423

/-- `A006519(A005361(n+1))` -/
def P10425506314178714319.Spec : Prop :=
  ∀ n, P10425506314178714319.a n = A401423 (n + 1)

end A401423

/-! ## A401423.P16658710823565700544

`A006519(A370080(n+1))`
-/

namespace A401423.P16658710823565700544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A370080 (n + 1)).toNat

end

end A401423.P16658710823565700544

namespace A401423

/-- `A006519(A370080(n+1))` -/
def P16658710823565700544.Spec : Prop :=
  ∀ n, P16658710823565700544.a n = A401423 (n + 1)

end A401423

/-! ## A401423.P6334766077672923910

`gcd(2^n, ∏{e}[n+1, #])`
-/

namespace A401423.P6334766077672923910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 ^ n) (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A401423.P6334766077672923910

namespace A401423

/-- `gcd(2^n, ∏{e}[n+1, #])` -/
def P6334766077672923910.Spec : Prop :=
  ∀ n, (P6334766077672923910.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P14588802138286944011

`gcd(A000079(n), A005361(n+1))`
-/

namespace A401423.P14588802138286944011
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000079 n) (A005361 (n + 1))

end

end A401423.P14588802138286944011

namespace A401423

/-- `gcd(A000079(n), A005361(n+1))` -/
def P14588802138286944011.Spec : Prop :=
  ∀ n, (P14588802138286944011.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P30333110257941858

`gcd(A005015(n), A360996(n+1))`
-/

namespace A401423.P30333110257941858
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005015 n) (A360996 (n + 1))

end

end A401423.P30333110257941858

namespace A401423

/-- `gcd(A005015(n), A360996(n+1))` -/
def P30333110257941858.Spec : Prop :=
  ∀ n, (P30333110257941858.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P15130030030112787774

`gcd(A001794(n), A370080(n+1))`
-/

namespace A401423.P15130030030112787774
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001794 n) (A370080 (n + 1))

end

end A401423.P15130030030112787774

namespace A401423

/-- `gcd(A001794(n), A370080(n+1))` -/
def P15130030030112787774.Spec : Prop :=
  ∀ n, (P15130030030112787774.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P8013410201925380194

`gcd(A098335(n), A303915(n+1))`
-/

namespace A401423.P8013410201925380194
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098335 n) (A303915 (n + 1))

end

end A401423.P8013410201925380194

namespace A401423

/-- `gcd(A098335(n), A303915(n+1))` -/
def P8013410201925380194.Spec : Prop :=
  ∀ n, (P8013410201925380194.a n : ℤ) = A401423 (n + 1)

end A401423

/-! ## A401423.P12034317221694507547

`gcd(A000431(n), A370080(n+1))`
-/

namespace A401423.P12034317221694507547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000431 n) (A370080 (n + 1))

end

end A401423.P12034317221694507547

namespace A401423

/-- `gcd(A000431(n), A370080(n+1))` -/
def P12034317221694507547.Spec : Prop :=
  ∀ n, (P12034317221694507547.a n : ℤ) = A401423 (n + 1)

end A401423

/-!
# A401424: The sum of coreful divisors of the smallest coreful infinitary divisor of n.

The programs for A401424, there is no canonical definition to state claims against.
-/

/-! ## A401424.P13827627055239304936

`A057723(A365296(n+1))`
-/

namespace A401424.P13827627055239304936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057723 (A365296 (n + 1)).toNat

end

end A401424.P13827627055239304936

/-!
# A401425: The largest infinitary divisor of n whose number of divisors is a power of 2.

The programs for A401425, there is no canonical definition to state claims against.
-/

/-! ## A401425.P1406245320928173262

`gcd(A367122(n), A390863(n+1))`
-/

namespace A401425.P1406245320928173262
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A367122 n) (A390863 (n + 1))

end

end A401425.P1406245320928173262

/-!
# A401426: The sum of infinitary divisors of n that are numbers whose number of divisors is a power of 2.

The programs for A401426, there is no canonical definition to state claims against.
-/

/-! ## A401426.P5789289908856760362

`A368471(n+1)%A112034(n)`
-/

namespace A401426.P5789289908856760362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A368471 (n + 1)) (A112034 n)

end

end A401426.P5789289908856760362

/-! ## A401426.P3312021228762029786

`A390370(n+1)%A112034(n)`
-/

namespace A401426.P3312021228762029786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390370 (n + 1)) (A112034 n)

end

end A401426.P3312021228762029786

/-!
# A401437: Partial sums of A401409.

The programs for A401437, the canonical program `A401437.P81839502749205339` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401437 has offset 0).

The definition of A401437 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401437.P81839502749205339

`∑[A401409(n)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A401437

/-- `∑[A401409(n)]` -/
def P81839502749205339.Spec : Prop :=
  ∀ n, P81839502749205339.a n = A401437 n

theorem P81839502749205339.correct : P81839502749205339.Spec := by
  intro n
  simp only [A401437]

end A401437

/-!
# A401439: Number of labeled strongly connected digraphs with n arcs.

The programs for A401439, there is no canonical definition to state claims against.
-/

/-! ## A401439.P5665355493131453094

`A353967(A002023(n))`
-/

namespace A401439.P5665355493131453094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353967 (A002023 n).toNat

end

end A401439.P5665355493131453094

/-!
# A401450: Maximum number of square partial products of a strictly increasing sequence of positive integers not exceeding n.

The programs for A401450, there is no canonical definition to state claims against.
-/

/-! ## A401450.P4814147932732441487

`floor(sqrt(A330878(2*n+1)))`
-/

namespace A401450.P4814147932732441487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A330878 (2 * n + 1))

end

end A401450.P4814147932732441487

/-! ## A401450.P12253468727825156302

`A097944(A035976(n+1))`
-/

namespace A401450.P12253468727825156302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A035976 (n + 1)).toNat

end

end A401450.P12253468727825156302

/-! ## A401450.P5596498023773437454

`A097944(A035984(n+1))`
-/

namespace A401450.P5596498023773437454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A035984 (n + 1)).toNat

end

end A401450.P5596498023773437454

/-! ## A401450.P17040507901268443727

`A097944(A035994(n+1))`
-/

namespace A401450.P17040507901268443727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A035994 (n + 1)).toNat

end

end A401450.P17040507901268443727

/-! ## A401450.P10810175926309937850

`A097944(A326977(n+1))`
-/

namespace A401450.P10810175926309937850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A326977 (n + 1)).toNat

end

end A401450.P10810175926309937850

