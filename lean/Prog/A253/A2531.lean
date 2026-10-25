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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A253100: Number of odd terms in f^n, where f = 1/(x*y)+1/x+1/x*y+1/y+x+x*y.

The programs for A253100, the canonical program `A253100.P1722908267845383720` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253100 has offset 0).

The definition of A253100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253100.P1722908267845383720

`∏{e}[A278222(n), A253101(#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A253100

/-- `∏{e}[A278222(n), A253101(#)]` -/
def P1722908267845383720.Spec : Prop :=
  ∀ n, P1722908267845383720.a n = A253100 n

theorem P1722908267845383720.correct : P1722908267845383720.Spec := by
  intro n
  simp only [A253100]

end A253100

/-! ## A253100.P18441559285923007554

`∏{e}[A005940(n+1), A253101(#)]`
-/

namespace A253100.P18441559285923007554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253101 (Nat.factorization (f1 n).natAbs p)

end

end A253100.P18441559285923007554

namespace A253100

/-- `∏{e}[A005940(n+1), A253101(#)]` -/
def P18441559285923007554.Spec : Prop :=
  ∀ n, P18441559285923007554.a n = A253100 n

end A253100

/-! ## A253100.P16483986335819805611

`∏{e}[A332815(n), A253101(#)]`
-/

namespace A253100.P16483986335819805611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332815 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A253101 (Nat.factorization (f1 n).natAbs p)

end

end A253100.P16483986335819805611

namespace A253100

/-- `∏{e}[A332815(n), A253101(#)]` -/
def P16483986335819805611.Spec : Prop :=
  ∀ n, P16483986335819805611.a n = A253100 n

end A253100

/-!
# A253101: a(n) = A253100(2^n-1).

The programs for A253101, the canonical program `A253101.P2630755348390583230` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253101 has offset 0).

The definition of A253101 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253101.P2630755348390583230

`6*a(n-1)-9*a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=6, a(2)=24, a(3)=96`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253101

/-- `6*a(n-1)-9*a(n-2)+2*a(n-3)` -/
def P2630755348390583230.Spec : Prop :=
  ∀ n, P2630755348390583230.a n = A253101 n

theorem P2630755348390583230.correct : P2630755348390583230.Spec := by
  intro n
  simp only [A253101]

end A253101

/-! ## A253101.P15400432206541221021

`A253100(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253101.P15400432206541221021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253100 (2 ^ n - 1)

end

end A253101.P15400432206541221021

namespace A253101

/-- `A253100(2^n-1)` -/
def P15400432206541221021.Spec : Prop :=
  ∀ n, P15400432206541221021.a n = A253101 n

end A253101

/-! ## A253101.P7267073932200815406

`2*A003500(n)-A171559(n)`
-/

namespace A253101.P7267073932200815406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003500 n - A171559 n

end

end A253101.P7267073932200815406

namespace A253101

/-- `2*A003500(n)-A171559(n)` -/
def P7267073932200815406.Spec : Prop :=
  ∀ n, P7267073932200815406.a n = A253101 n

end A253101

/-!
# A253102: a(n) = A071053(n)^3.

The programs for A253102, there is no canonical definition to state claims against.
-/

/-! ## A253102.P18141048542381723255

`A071053(n)^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253102.P18141048542381723255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 n ^ 3

end

end A253102.P18141048542381723255

/-! ## A253102.P7456908915151785583

`sqrt(A246035(n)^3)`
-/

namespace A253102.P7456908915151785583
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A246035 n ^ 3 : ℝ)

end

end A253102.P7456908915151785583

/-! ## A253102.P11682001433115371619

`(Δ[n²]-A071052(n))^3`
-/

namespace A253102.P11682001433115371619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - A071052 n) ^ 3

end

end A253102.P11682001433115371619

/-! ## A253102.P17635865279710296520

`A071053(n)*A246035(n)`
-/

namespace A253102.P17635865279710296520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071053 n * A246035 n

end

end A253102.P17635865279710296520

/-! ## A253102.P15076449909373895827

`(A246037(n)/A001316(n))^3`
-/

namespace A253102.P15076449909373895827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A246037 n : ℚ) / (A001316 n : ℚ)) ^ 3

end

end A253102.P15076449909373895827

/-! ## A253102.P8096380432957253618

`A246035(n)/A001316(n)*A246037(n)`
-/

namespace A253102.P8096380432957253618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246035 n : ℚ) / (A001316 n : ℚ) * (A246037 n : ℚ)

end

end A253102.P8096380432957253618

/-! ## A253102.P2134230060638181548

`root(A071053(2*n), 1/3)`
-/

namespace A253102.P2134230060638181548
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A071053 (2 * n) : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A253102.P2134230060638181548

/-! ## A253102.P4003116166126277075

`A000578(A071053(n))`
-/

namespace A253102.P4003116166126277075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A071053 n).toNat

end

end A253102.P4003116166126277075

/-! ## A253102.P7411907911009200154

`sqrt(A267148(lcm(2, n))²^3)`
-/

namespace A253102.P7411907911009200154
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A267148 (Nat.lcm 2 n) ^ 2) ^ 3 : ℝ)

end

end A253102.P7411907911009200154

/-! ## A253102.P17922310324675618437

`A118911(2*n)^3`
-/

namespace A253102.P17922310324675618437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118911 (2 * n) ^ 3

end

end A253102.P17922310324675618437

/-! ## A253102.P1303445972577653827

`A267148(2*n)^3`
-/

namespace A253102.P1303445972577653827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267148 (2 * n) ^ 3

end

end A253102.P1303445972577653827

/-! ## A253102.P2899222944948194962

`A000578(A118911(2*n))`
-/

namespace A253102.P2899222944948194962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A118911 (2 * n)).toNat

end

end A253102.P2899222944948194962

/-! ## A253102.P3940474615466126780

`A000578(A267148(2*n))`
-/

namespace A253102.P3940474615466126780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A267148 (2 * n)).toNat

end

end A253102.P3940474615466126780

/-! ## A253102.P11482666797968995667

`A118911(2*n)*A246035(n)`
-/

namespace A253102.P11482666797968995667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118911 (2 * n) * A246035 n

end

end A253102.P11482666797968995667

/-! ## A253102.P15591075300137780848

`A118911(2*n)²*A267148(2*n)`
-/

namespace A253102.P15591075300137780848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118911 (2 * n) ^ 2 * A267148 (2 * n)

end

end A253102.P15591075300137780848

/-! ## A253102.P7839366647247703018

`A118911(2*n+1)²*A118911(2*n)`
-/

namespace A253102.P7839366647247703018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118911 (2 * n + 1) ^ 2 * A118911 (2 * n)

end

end A253102.P7839366647247703018

/-! ## A253102.P1123206759426707027

`(A237120(2*n)+1)^3`
-/

namespace A253102.P1123206759426707027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A237120 (2 * n) + 1) ^ 3

end

end A253102.P1123206759426707027

/-!
# A253103: A001045(n)^3.

The programs for A253103, the canonical program `A253103.P7539890722404104851` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253103 has offset 2).

The definition of A253103 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001045(n+2)^3` (program `A253103.P7539890722404104851`, by `A253103.P7539890722404104851.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A253103.P7539890722404104851

`A001045(n+2)^3`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253103

/-- `A001045(n+2)^3` -/
def P7539890722404104851.Spec : Prop :=
  ∀ n, P7539890722404104851.a n = A253103 (n + 2)

theorem P7539890722404104851.correct : P7539890722404104851.Spec := by
  intro n
  simp only [A253103, Nat.add_sub_cancel]

end A253103

/-! ## A253103.P980278059039649604

`round(2^(n+2)/3)^3`
-/

namespace A253103.P980278059039649604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ (n + 2) : ℚ) / 3) ^ 3

end

end A253103.P980278059039649604

namespace A253103

/-- `round(2^(n+2)/3)^3` -/
def P980278059039649604.Spec : Prop :=
  ∀ n, P980278059039649604.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P2664673188559275233

`record[A077980(n)^3]`
-/

namespace A253103.P2664673188559275233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077980 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253103.P2664673188559275233

namespace A253103

/-- `record[A077980(n)^3]` -/
def P2664673188559275233.Spec : Prop :=
  ∀ n, P2664673188559275233.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P6775012013553464319

`record[A091597(n)^3]`
-/

namespace A253103.P6775012013553464319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091597 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253103.P6775012013553464319

namespace A253103

/-- `record[A091597(n)^3]` -/
def P6775012013553464319.Spec : Prop :=
  ∀ n, P6775012013553464319.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P1338985978015964600

`record[A112447(n)^3]`
-/

namespace A253103.P1338985978015964600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253103.P1338985978015964600

namespace A253103

/-- `record[A112447(n)^3]` -/
def P1338985978015964600.Spec : Prop :=
  ∀ n, P1338985978015964600.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P11469252663135853132

`record[A133730(n)^3]`
-/

namespace A253103.P11469252663135853132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133730 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253103.P11469252663135853132

namespace A253103

/-- `record[A133730(n)^3]` -/
def P11469252663135853132.Spec : Prop :=
  ∀ n, P11469252663135853132.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P3159386366101666354

`record[A135228(n)^3]`
-/

namespace A253103.P3159386366101666354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135228 n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253103.P3159386366101666354

namespace A253103

/-- `record[A135228(n)^3]` -/
def P3159386366101666354.Spec : Prop :=
  ∀ n, P3159386366101666354.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P1663823507521073566

`record[Δ[A133684(n)]^3]`
-/

namespace A253103.P1663823507521073566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133684 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253103.P1663823507521073566

namespace A253103

/-- `record[Δ[A133684(n)]^3]` -/
def P1663823507521073566.Spec : Prop :=
  ∀ n, P1663823507521073566.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P1362153210907124373

`A110241(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A253103.P1362153210907124373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A110241 (n + 1) - a (n - 1)

end

end A253103.P1362153210907124373

namespace A253103

/-- `A110241(n+1)-a(n-1)` -/
def P1362153210907124373.Spec : Prop :=
  ∀ n, P1362153210907124373.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P17399228549762773968

`A283642(n)²*A283642(n)`
-/

namespace A253103.P17399228549762773968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283642 n ^ 2 * A283642 n

end

end A253103.P17399228549762773968

namespace A253103

/-- `A283642(n)²*A283642(n)` -/
def P17399228549762773968.Spec : Prop :=
  ∀ n, P17399228549762773968.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P9080104736637983035

`A139818(n+2)*A283642(n)`
-/

namespace A253103.P9080104736637983035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139818 (n + 2) * A283642 n

end

end A253103.P9080104736637983035

namespace A253103

/-- `A139818(n+2)*A283642(n)` -/
def P9080104736637983035.Spec : Prop :=
  ∀ n, P9080104736637983035.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P9293117279446081876

`Δ[A084639(n)]²*Δ[A084639(n)]`
-/

namespace A253103.P9293117279446081876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ 2 * (f2 (n + 1) - f2 n)

end

end A253103.P9293117279446081876

namespace A253103

/-- `Δ[A084639(n)]²*Δ[A084639(n)]` -/
def P9293117279446081876.Spec : Prop :=
  ∀ n, P9293117279446081876.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P15145296213143851722

`A001045(n+2)*A139818(n+2)`
-/

namespace A253103.P15145296213143851722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 2) * A139818 (n + 2)

end

end A253103.P15145296213143851722

namespace A253103

/-- `A001045(n+2)*A139818(n+2)` -/
def P15145296213143851722.Spec : Prop :=
  ∀ n, P15145296213143851722.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P14629877706773824317

`A112447(2*n)²*A112447(2*n)`
-/

namespace A253103.P14629877706773824317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112447 (2 * n) ^ 2 * A112447 (2 * n)

end

end A253103.P14629877706773824317

namespace A253103

/-- `A112447(2*n)²*A112447(2*n)` -/
def P14629877706773824317.Spec : Prop :=
  ∀ n, P14629877706773824317.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P13008192563925675128

`A356050(2*n)²*A356050(2*n)`
-/

namespace A253103.P13008192563925675128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356050 (2 * n) ^ 2 * A356050 (2 * n)

end

end A253103.P13008192563925675128

namespace A253103

/-- `A356050(2*n)²*A356050(2*n)` -/
def P13008192563925675128.Spec : Prop :=
  ∀ n, P13008192563925675128.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P3240979469158870114

`record[A284130(n+1)²*A284130(n+1)]`
-/

namespace A253103.P3240979469158870114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284130 (n + 1) ^ 2 * A284130 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253103.P3240979469158870114

namespace A253103

/-- `record[A284130(n+1)²*A284130(n+1)]` -/
def P3240979469158870114.Spec : Prop :=
  ∀ n, P3240979469158870114.a n = A253103 (n + 2)

end A253103

/-! ## A253103.P11079937214704650603

`A077925(n+1)*A077925(n+1)*A283642(n)`
-/

namespace A253103.P11079937214704650603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (n + 1) * A077925 (n + 1) * A283642 n

end

end A253103.P11079937214704650603

namespace A253103

/-- `A077925(n+1)*A077925(n+1)*A283642(n)` -/
def P11079937214704650603.Spec : Prop :=
  ∀ n, P11079937214704650603.a n = A253103 (n + 2)

end A253103

/-!
# A253105: A253104(2^n-1).

The programs for A253105, there is no canonical definition to state claims against.
-/

/-! ## A253105.P8671633797797801225

`A253104(2^n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A253105.P8671633797797801225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253104 (2 ^ n - 1)

end

end A253105.P8671633797797801225

/-! ## A253105.P7133802613954469329

`record[A253104(A243071(n+1))]`
-/

namespace A253105.P7133802613954469329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253104 (A243071 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253105.P7133802613954469329

/-! ## A253105.P11434098536794741442

`record[A253104(∑{d}[n, #])]`
-/

namespace A253105.P11434098536794741442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253104 (∑ d ∈ Nat.divisors (f2 n), d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253105.P11434098536794741442

/-!
# A253106: Semiprimes with smallest factor <= 3.

The programs for A253106, the canonical program `A253106.P15381254514479886503` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253106 has offset 1).

The definition of A253106 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253106.P15381254514479886503

`∪[A001748(n+1), A100484(n+1)]`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A253106

/-- `∪[A001748(n+1), A100484(n+1)]` -/
def P15381254514479886503.Spec : Prop :=
  ∀ n, (P15381254514479886503.a n : ℤ) = A253106 (n + 1)

theorem P15381254514479886503.correct : P15381254514479886503.Spec := by
  intro n
  simp only [A253106, Nat.add_sub_cancel]

end A253106

/-! ## A253106.P2062067017586152457

`∪[A001747(n+2), A112773(n+2)]`
-/

namespace A253106.P2062067017586152457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112773 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253106.P2062067017586152457

namespace A253106

/-- `∪[A001747(n+2), A112773(n+2)]` -/
def P2062067017586152457.Spec : Prop :=
  ∀ n, (P2062067017586152457.a n : ℤ) = A253106 (n + 1)

end A253106

/-! ## A253106.P15408899512525193753

`∪[A100484(n+1)+A000040(n+1), A100484(n+1)]`
-/

namespace A253106.P15408899512525193753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253106.P15408899512525193753

namespace A253106

/-- `∪[A100484(n+1)+A000040(n+1), A100484(n+1)]` -/
def P15408899512525193753.Spec : Prop :=
  ∀ n, (P15408899512525193753.a n : ℤ) = A253106 (n + 1)

end A253106

/-! ## A253106.P14611543498774494903

`∪[A001750(n+1)-A100484(n+1), A100484(n+1)]`
-/

namespace A253106.P14611543498774494903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001750 (n + 1) - A100484 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253106.P14611543498774494903

namespace A253106

/-- `∪[A001750(n+1)-A100484(n+1), A100484(n+1)]` -/
def P14611543498774494903.Spec : Prop :=
  ∀ n, (P14611543498774494903.a n : ℤ) = A253106 (n + 1)

end A253106

/-! ## A253106.P7129230529917426186

`A195896(n+3)+1`
-/

namespace A253106.P7129230529917426186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195896 (n + 3) + 1

end

end A253106.P7129230529917426186

namespace A253106

/-- `A195896(n+3)+1` -/
def P7129230529917426186.Spec : Prop :=
  ∀ n, P7129230529917426186.a n = A253106 (n + 1)

end A253106

/-! ## A253106.P5413090293056480023

`filter[A075862(n+1), A359764(#)]`
-/

namespace A253106.P5413090293056480023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359764 (f1 j).toNat = 1) n)

end

end A253106.P5413090293056480023

namespace A253106

/-- `filter[A075862(n+1), A359764(#)]` -/
def P5413090293056480023.Spec : Prop :=
  ∀ n, P5413090293056480023.a n = A253106 (n + 1)

end A253106

/-! ## A253106.P16762757926069122485

`filter[A075862(n+1), A359824(#)]`
-/

namespace A253106.P16762757926069122485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359824 (f1 j).toNat = 1) n)

end

end A253106.P16762757926069122485

namespace A253106

/-- `filter[A075862(n+1), A359824(#)]` -/
def P16762757926069122485.Spec : Prop :=
  ∀ n, P16762757926069122485.a n = A253106 (n + 1)

end A253106

/-! ## A253106.P7833590029468941336

`filter[A075862(n+1), A373481(#)]`
-/

namespace A253106.P7833590029468941336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A253106.P7833590029468941336

namespace A253106

/-- `filter[A075862(n+1), A373481(#)]` -/
def P7833590029468941336.Spec : Prop :=
  ∀ n, P7833590029468941336.a n = A253106 (n + 1)

end A253106

/-! ## A253106.P6279600530535663870

`∩[A001358(n+1), A075862(n+1)]`
-/

namespace A253106.P6279600530535663870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253106.P6279600530535663870

namespace A253106

/-- `∩[A001358(n+1), A075862(n+1)]` -/
def P6279600530535663870.Spec : Prop :=
  ∀ n, (P6279600530535663870.a n : ℤ) = A253106 (n + 1)

end A253106

/-! ## A253106.P144876720663340087

`A001358(lt[1, gcd(6, A001358(n+1))]+1)`
-/

namespace A253106.P144876720663340087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 (A001358 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A253106.P144876720663340087

namespace A253106

/-- `A001358(lt[1, gcd(6, A001358(n+1))]+1)` -/
def P144876720663340087.Spec : Prop :=
  ∀ n, P144876720663340087.a n = A253106 (n + 1)

end A253106

/-! ## A253106.P14503641180196247547

`∩[A373482(n+1), A075862(n+1)]`
-/

namespace A253106.P14503641180196247547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373482 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253106.P14503641180196247547

namespace A253106

/-- `∩[A373482(n+1), A075862(n+1)]` -/
def P14503641180196247547.Spec : Prop :=
  ∀ n, (P14503641180196247547.a n : ℤ) = A253106 (n + 1)

end A253106

/-! ## A253106.P17044036190082280253

`filter[A075862(n+1), A064911(#)]`
-/

namespace A253106.P17044036190082280253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A253106.P17044036190082280253

namespace A253106

/-- `filter[A075862(n+1), A064911(#)]` -/
def P17044036190082280253.Spec : Prop :=
  ∀ n, P17044036190082280253.a n = A253106 (n + 1)

end A253106

/-! ## A253106.P15747257742780589330

`filter[A075862(n+1), A005171(#)]`
-/

namespace A253106.P15747257742780589330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A253106.P15747257742780589330

namespace A253106

/-- `filter[A075862(n+1), A005171(#)]` -/
def P15747257742780589330.Spec : Prop :=
  ∀ n, P15747257742780589330.a n = A253106 (n + 1)

end A253106

/-! ## A253106.P2245050601270405005

`filter[A075862(n+1), A065043(#)]`
-/

namespace A253106.P2245050601270405005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A253106.P2245050601270405005

namespace A253106

/-- `filter[A075862(n+1), A065043(#)]` -/
def P2245050601270405005.Spec : Prop :=
  ∀ n, P2245050601270405005.a n = A253106 (n + 1)

end A253106

/-! ## A253106.P16127743019875879470

`filter[A075862(n+1), A066247(#)]`
-/

namespace A253106.P16127743019875879470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A253106.P16127743019875879470

namespace A253106

/-- `filter[A075862(n+1), A066247(#)]` -/
def P16127743019875879470.Spec : Prop :=
  ∀ n, P16127743019875879470.a n = A253106 (n + 1)

end A253106

/-! ## A253106.P17943557553907338837

`filter[A075862(n+1), A283265(#)]`
-/

namespace A253106.P17943557553907338837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A253106.P17943557553907338837

namespace A253106

/-- `filter[A075862(n+1), A283265(#)]` -/
def P17943557553907338837.Spec : Prop :=
  ∀ n, P17943557553907338837.a n = A253106 (n + 1)

end A253106

/-! ## A253106.P6691267185551434189

`∩[A075862(n+1), A085155(n+1)]`
-/

namespace A253106.P6691267185551434189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253106.P6691267185551434189

namespace A253106

/-- `∩[A075862(n+1), A085155(n+1)]` -/
def P6691267185551434189.Spec : Prop :=
  ∀ n, (P6691267185551434189.a n : ℤ) = A253106 (n + 1)

end A253106

/-! ## A253106.P9178899604734415292

`∩[A075862(n+1), A077135(n+1)]`
-/

namespace A253106.P9178899604734415292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253106.P9178899604734415292

namespace A253106

/-- `∩[A075862(n+1), A077135(n+1)]` -/
def P9178899604734415292.Spec : Prop :=
  ∀ n, (P9178899604734415292.a n : ℤ) = A253106 (n + 1)

end A253106

/-! ## A253106.P2113795284711968590

`∩[A075862(n+1), A077136(n+1)]`
-/

namespace A253106.P2113795284711968590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253106.P2113795284711968590

namespace A253106

/-- `∩[A075862(n+1), A077136(n+1)]` -/
def P2113795284711968590.Spec : Prop :=
  ∀ n, (P2113795284711968590.a n : ℤ) = A253106 (n + 1)

end A253106

/-! ## A253106.P756830288806932342

`∩[A328028(n+1), A075862(n+1)]`
-/

namespace A253106.P756830288806932342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253106.P756830288806932342

namespace A253106

/-- `∩[A328028(n+1), A075862(n+1)]` -/
def P756830288806932342.Spec : Prop :=
  ∀ n, (P756830288806932342.a n : ℤ) = A253106 (n + 1)

end A253106

/-!
# A253108: Numbers k such that (sum of k^2 through (k+2)^2) + (k+1)^2 is prime.

The programs for A253108, there is no canonical definition to state claims against.
-/

/-! ## A253108.P7731782501448934817

`A231565(n+1)+A001221(A297196(n))`
-/

namespace A253108.P7731782501448934817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231565 (n + 1) + A001221 (A297196 n).toNat

end

end A253108.P7731782501448934817

/-! ## A253108.P13440664232296835273

`eq[A033687(n), A300708(A335503(3*n+5))]`
-/

namespace A253108.P13440664232296835273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033687 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300708 (A335503 (3 * n + 5)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A253108.P13440664232296835273

/-! ## A253108.P3859667977192565070

`A001222(A189564(n)+A027187(n+1))+A000040(n+1)`
-/

namespace A253108.P3859667977192565070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A189564 n + A027187 (n + 1)).toNat + A000040 (n + 1)

end

end A253108.P3859667977192565070

/-!
# A253109: a(n) = n ^ (Fibonacci(n) mod n).

The programs for A253109, there is no canonical definition to state claims against.
-/

/-! ## A253109.P4852663204356819696

`(n+1)^(∑[a(n-1)+a(n-2)]%(n+1))` with `a(0)=1, a(1)=0`
-/

namespace A253109.P4852663204356819696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1))

end

end A253109.P4852663204356819696

/-! ## A253109.P8607618444392869088

`(n+1)^A002708(n+1)`
-/

namespace A253109.P8607618444392869088
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A002708 (n + 1) : ℤ)

end

end A253109.P8607618444392869088

/-! ## A253109.P8525748102368399691

`(n+1)^(A000045(n+1)%(n+1))`
-/

namespace A253109.P8525748102368399691
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A000045 (n + 1)) (n + 1 : ℤ) : ℤ)

end

end A253109.P8525748102368399691

/-! ## A253109.P9758674769458239212

`(n+1)^(A132634(n+1)%(n+1))`
-/

namespace A253109.P9758674769458239212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A132634 (n + 1)) (n + 1 : ℤ) : ℤ)

end

end A253109.P9758674769458239212

/-! ## A253109.P3657318325592675041

`(n+1)^((A000071(n+1)+1)%(n+1))`
-/

namespace A253109.P3657318325592675041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A000071 (n + 1) + 1) (n + 1 : ℤ) : ℤ)

end

end A253109.P3657318325592675041

/-! ## A253109.P15999154713255688893

`(n+1)^((A001611(n+1)-1)%(n+1))`
-/

namespace A253109.P15999154713255688893
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.tmod (A001611 (n + 1) - 1) (n + 1 : ℤ) : ℤ)

end

end A253109.P15999154713255688893

/-!
# A253110: Primes p such that p, p^2, p^3 and p^4 lack the digit 0 in their decimal expansion.

The programs for A253110, there is no canonical definition to state claims against.
-/

/-! ## A253110.P17162255871824035435

`p?[A252484(n+1)]`
-/

namespace A253110.P17162255871824035435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253110.P17162255871824035435

/-! ## A253110.P11235526722276686241

`p?[record[A252484(A133310(n))]]`
-/

namespace A253110.P11235526722276686241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252484 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253110.P11235526722276686241

/-! ## A253110.P1453488398599291795

`p?[record[A252484(A262519(n))]]`
-/

namespace A253110.P1453488398599291795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252484 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253110.P1453488398599291795

/-! ## A253110.P6434175587854980269

`p?[record[A252484(A291769(n))]]`
-/

namespace A253110.P6434175587854980269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252484 (A291769 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A253110.P6434175587854980269

/-! ## A253110.P18013927668405631801

`record[A006530(A252484(n+2))]`
-/

namespace A253110.P18013927668405631801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A252484 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253110.P18013927668405631801

/-! ## A253110.P16224550233596904421

`filter[A252484(n+1), A010051(#)]`
-/

namespace A253110.P16224550233596904421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A253110.P16224550233596904421

/-! ## A253110.P8209179364960480803

`filter[A252484(n+2), A080339(#)]`
-/

namespace A253110.P8209179364960480803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252484 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A253110.P8209179364960480803

/-! ## A253110.P9294974468296553311

`filter[A252484(n+2), A353787(#)]`
-/

namespace A253110.P9294974468296553311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252484 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353787 (f1 j).toNat = 1) n)

end

end A253110.P9294974468296553311

/-! ## A253110.P9159437757432145291

`∩[A000040(n+1), A252484(n+1)]`
-/

namespace A253110.P9159437757432145291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253110.P9159437757432145291

/-! ## A253110.P12253043332686227643

`∩[A038618(n+1), A252484(n+1)]`
-/

namespace A253110.P12253043332686227643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253110.P12253043332686227643

/-!
# A253111: Number of (n+2)X(n+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 2, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253111, there is no canonical definition to state claims against.
-/

/-! ## A253111.P18343379661083849673

`A253119(∑[4*n]+1)`
-/

namespace A253111.P18343379661083849673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253111.P18343379661083849673

/-! ## A253111.P15367759555132801333

`record[gcd(A114327(n), A253119(n+1))]`
-/

namespace A253111.P15367759555132801333
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A253119 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253111.P15367759555132801333

/-! ## A253111.P9343661371839107169

`record[root(A253119(n+1), A059897(n+1))]`
-/

namespace A253111.P9343661371839107169
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253119 (n + 1) : ℝ) ^ (1 / (A059897 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253111.P9343661371839107169

/-! ## A253111.P9465958377365083786

`A007318(C(n, 2))*A253119(A001844(n))`
-/

namespace A253111.P9465958377365083786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A253119 (A001844 n).toNat

end

end A253111.P9465958377365083786

/-! ## A253111.P8126405224227941586

`A253119(A001844(n))+A000045(n)%-1`
-/

namespace A253111.P8126405224227941586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (A001844 n).toNat + Int.tmod (A000045 n) (-1)

end

end A253111.P8126405224227941586

/-!
# A253112: Number of (n+2)X(1+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 2, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253112, there is no canonical definition to state claims against.
-/

/-! ## A253112.P9895276386336184987

`A253119(∑[n]+1)`
-/

namespace A253112.P9895276386336184987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253112.P9895276386336184987

/-! ## A253112.P14163383160352369828

`record[gcd(A132896(n), A253119(n+1))]`
-/

namespace A253112.P14163383160352369828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A132896 n) (A253119 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253112.P14163383160352369828

/-! ## A253112.P11422673952433151359

`record[A103452(n)²*A253119(n+1)]`
-/

namespace A253112.P11422673952433151359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n ^ 2 * A253119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253112.P11422673952433151359

/-! ## A253112.P16156679796772039364

`record[A185917(n+1)*A253119(n+1)]`
-/

namespace A253112.P16156679796772039364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185917 (n + 1) * A253119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253112.P16156679796772039364

/-! ## A253112.P6750080340250670414

`record[A253119(n+1)/A296405(n+1)]`
-/

namespace A253112.P6750080340250670414
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253119 (n + 1) : ℚ) / (A296405 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253112.P6750080340250670414

/-!
# A253113: Number of (n+2)X(2+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 2, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253113, there is no canonical definition to state claims against.
-/

/-! ## A253113.P2751651585238570493

`A253119(∑[n+1]+2)`
-/

namespace A253113.P2751651585238570493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253113.P2751651585238570493

/-! ## A253113.P4890000214118598323

`record[A253119(A133263(A028242(n)))]`
-/

namespace A253113.P4890000214118598323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (A133263 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253113.P4890000214118598323

/-! ## A253113.P14790222111414432889

`A007318(C(2, n+2))*A253119(A133263(n+1))`
-/

namespace A253113.P14790222111414432889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A253119 (A133263 (n + 1)).toNat

end

end A253113.P14790222111414432889

/-! ## A253113.P9255678594012911872

`A007318((-1)^(2*n))*A253119(A133263(n+1))`
-/

namespace A253113.P9255678594012911872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ((-1) ^ (2 * n)).toNat * A253119 (A133263 (n + 1)).toNat

end

end A253113.P9255678594012911872

/-! ## A253113.P192059843552129796

`or(1, A001222(n+1)!%2)*A253119(A133263(n+1))`
-/

namespace A253113.P192059843552129796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (Nat.factorial (A001222 (n + 1)).toNat % 2) : ℤ) * A253119 (A133263 (n + 1)).toNat

end

end A253113.P192059843552129796

/-!
# A253114: Number of (n+2)X(3+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 2, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253114, there is no canonical definition to state claims against.
-/

/-! ## A253114.P12255429406615026321

`A253119(∑[n+2]+4)`
-/

namespace A253114.P12255429406615026321
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253114.P12255429406615026321

/-! ## A253114.P7228939577313970282

`or(A000038(n), A253119(A167614(n+1)))`
-/

namespace A253114.P7228939577313970282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A253119 (A167614 (n + 1)).toNat)

end

end A253114.P7228939577313970282

/-! ## A253114.P11135148750644566154

`A253119(A167614(n+1))%A253115(n+1)`
-/

namespace A253114.P11135148750644566154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253119 (A167614 (n + 1)).toNat) (A253115 (n + 1))

end

end A253114.P11135148750644566154

/-! ## A253114.P8646995502665730273

`lcm(A253119(A167614(n+1)), A331180(n+1))`
-/

namespace A253114.P8646995502665730273
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A253119 (A167614 (n + 1)).toNat) (A331180 (n + 1))

end

end A253114.P8646995502665730273

/-! ## A253114.P1621596775386100966

`record[A253119(A167614(val(n+1, 2)+1))]`
-/

namespace A253114.P1621596775386100966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (A167614 (SequenceMachineLib.valuation (n + 1) 2 + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253114.P1621596775386100966

/-!
# A253115: Number of (n+2) X (4+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 2, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253115, there is no canonical definition to state claims against.
-/

/-! ## A253115.P13556552540259775096

`A253119(∑[n+3]+7)`
-/

namespace A253115.P13556552540259775096
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253115.P13556552540259775096

/-! ## A253115.P9980262393705037127

`A253119(A052905(n)+9)+A074083(∑{d}[n+1, #%2])`
-/

namespace A253115.P9980262393705037127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (A052905 n + 9).toNat + A074083 (∑ d ∈ Nat.divisors (f1 n), d % 2)

end

end A253115.P9980262393705037127

/-! ## A253115.P7865253042732263221

`A253119(A052905(n)+9)%A253119(A052905(n)+9)²`
-/

namespace A253115.P7865253042732263221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253119 (A052905 n + 9).toNat) (A253119 (A052905 n + 9).toNat ^ 2)

end

end A253115.P7865253042732263221

/-! ## A253115.P14303054652961388150

`A253119(A167614(n+2)+1)%(A253119(A052905(n)+9)+1)`
-/

namespace A253115.P14303054652961388150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253119 (A167614 (n + 2) + 1).toNat) (A253119 (A052905 n + 9).toNat + 1)

end

end A253115.P14303054652961388150

/-! ## A253115.P3562239137252662243

`A253119(A141214(n+1))%A253119(A141214(n+1))²`
-/

namespace A253115.P3562239137252662243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253119 (A141214 (n + 1)).toNat) (A253119 (A141214 (n + 1)).toNat ^ 2)

end

end A253115.P3562239137252662243

/-!
# A253116: Number of (n+2)X(5+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 2, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253116, there is no canonical definition to state claims against.
-/

/-! ## A253116.P11957793730675657622

`A253119(A056000(n)+15)`
-/

namespace A253116.P11957793730675657622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (A056000 n + 15).toNat

end

end A253116.P11957793730675657622

/-! ## A253116.P9374177140359749047

`A253119(eq[6, A131818(n+1)])`
-/

namespace A253116.P9374177140359749047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253116.P9374177140359749047

/-! ## A253116.P11949244036033004716

`A253119(Δ[A264443(n)])`
-/

namespace A253116.P11949244036033004716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (f1 (n + 1) - f1 n).toNat

end

end A253116.P11949244036033004716

/-! ## A253116.P5397239676393849272

`A253119(A374005(n+1))`
-/

namespace A253116.P5397239676393849272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (A374005 (n + 1)).toNat

end

end A253116.P5397239676393849272

/-! ## A253116.P210171703172766095

`A253119(eq[4, A193592(n)])`
-/

namespace A253116.P210171703172766095
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253116.P210171703172766095

/-!
# A253117: Number of (n+2)X(6+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 2, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253117, there is no canonical definition to state claims against.
-/

/-! ## A253117.P14773384947517169780

`A253119(A374007(n+1))`
-/

namespace A253117.P14773384947517169780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (A374007 (n + 1)).toNat

end

end A253117.P14773384947517169780

/-! ## A253117.P841416013822587234

`A253119(A052905(n+3))`
-/

namespace A253117.P841416013822587234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (A052905 (n + 3)).toNat

end

end A253117.P841416013822587234

/-! ## A253117.P11582137198554400880

`A253119(eq[3, A219347(n)])`
-/

namespace A253117.P11582137198554400880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253117.P11582137198554400880

/-! ## A253117.P16632324798727017687

`A253119(eq[5, A193592(n)])`
-/

namespace A253117.P16632324798727017687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253117.P16632324798727017687

/-! ## A253117.P14494553619364269862

`A253119(eq[6, A200370(n+1)])`
-/

namespace A253117.P14494553619364269862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253117.P14494553619364269862

/-!
# A253118: Number of (n+2)X(7+2) nonnegative integer arrays with all values the knight distance from the upper left minus as much as 2, with successive minimum path knight move differences either 0 or +1, and any unreachable value zero.

The programs for A253118, there is no canonical definition to state claims against.
-/

/-! ## A253118.P2823872880162132801

`A253119(A167487(n+5))`
-/

namespace A253118.P2823872880162132801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (A167487 (n + 5)).toNat

end

end A253118.P2823872880162132801

/-! ## A253118.P17747394686943187723

`A253119(A167499(n+5)+2)`
-/

namespace A253118.P17747394686943187723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (A167499 (n + 5) + 2).toNat

end

end A253118.P17747394686943187723

/-! ## A253118.P10679391114858584368

`A253119(eq[8, A131818(n+1)])`
-/

namespace A253118.P10679391114858584368
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253118.P10679391114858584368

/-! ## A253118.P14601608806512382592

`A253119(A374008(n+1))`
-/

namespace A253118.P14601608806512382592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (A374008 (n + 1)).toNat

end

end A253118.P14601608806512382592

/-! ## A253118.P18130594514698178842

`A253119(A055999(n+4))`
-/

namespace A253118.P18130594514698178842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253119 (A055999 (n + 4)).toNat

end

end A253118.P18130594514698178842

/-!
# A253122: Number of length n+2 0..1 arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A253122, the canonical program `A253122.P10577464860156726926` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253122 has offset 1).

The definition of A253122 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253122.P10577464860156726926

`4*A051437(n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253122

/-- `4*A051437(n)` -/
def P10577464860156726926.Spec : Prop :=
  ∀ n, P10577464860156726926.a n = A253122 (n + 1)

theorem P10577464860156726926.correct : P10577464860156726926.Spec := by
  intro n
  simp only [A253122, Nat.add_sub_cancel]

end A253122

/-! ## A253122.P12654642202756061832

`2*A052957(n+1)`
-/

namespace A253122.P12654642202756061832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052957 (n + 1)

end

end A253122.P12654642202756061832

namespace A253122

/-- `2*A052957(n+1)` -/
def P12654642202756061832.Spec : Prop :=
  ∀ n, P12654642202756061832.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P6334678592638303601

`4*Δ[A005418(n+2)]`
-/

namespace A253122.P6334678592638303601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A253122.P6334678592638303601

namespace A253122

/-- `4*Δ[A005418(n+2)]` -/
def P6334678592638303601.Spec : Prop :=
  ∀ n, P6334678592638303601.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P13811571777297108353

`A077957(n+3)+2^(n+2)`
-/

namespace A253122.P13811571777297108353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (n + 3) + (2 ^ (n + 2) : ℤ)

end

end A253122.P13811571777297108353

namespace A253122

/-- `A077957(n+3)+2^(n+2)` -/
def P13811571777297108353.Spec : Prop :=
  ∀ n, P13811571777297108353.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P8729262204595992394

`2*A045674(A042964(n+2))`
-/

namespace A253122.P8729262204595992394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045674 (A042964 (n + 2)).toNat

end

end A253122.P8729262204595992394

namespace A253122

/-- `2*A045674(A042964(n+2))` -/
def P8729262204595992394.Spec : Prop :=
  ∀ n, P8729262204595992394.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P9707312649956646283

`A107663(n)+A062510(n+1)`
-/

namespace A253122.P9707312649956646283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107663 n + A062510 (n + 1)

end

end A253122.P9707312649956646283

namespace A253122

/-- `A107663(n)+A062510(n+1)` -/
def P9707312649956646283.Spec : Prop :=
  ∀ n, P9707312649956646283.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P13968310201621956697

`A164654(n+1)+A107659(n)`
-/

namespace A253122.P13968310201621956697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164654 (n + 1) + A107659 n

end

end A253122.P13968310201621956697

namespace A253122

/-- `A164654(n+1)+A107659(n)` -/
def P13968310201621956697.Spec : Prop :=
  ∀ n, P13968310201621956697.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P10369365586686208646

`A131575(n+2)+A051437(n+2)`
-/

namespace A253122.P10369365586686208646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131575 (n + 2) + A051437 (n + 2)

end

end A253122.P10369365586686208646

namespace A253122

/-- `A131575(n+2)+A051437(n+2)` -/
def P10369365586686208646.Spec : Prop :=
  ∀ n, P10369365586686208646.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P12328259816423816028

`A208900(n+2)+A056453(n+4)`
-/

namespace A253122.P12328259816423816028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208900 (n + 2) + A056453 (n + 4)

end

end A253122.P12328259816423816028

namespace A253122

/-- `A208900(n+2)+A056453(n+4)` -/
def P12328259816423816028.Spec : Prop :=
  ∀ n, P12328259816423816028.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P12829047447862737936

`2*(A016724(n+1)+A000295(n+1))`
-/

namespace A253122.P12829047447862737936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A016724 (n + 1) + A000295 (n + 1))

end

end A253122.P12829047447862737936

namespace A253122

/-- `2*(A016724(n+1)+A000295(n+1))` -/
def P12829047447862737936.Spec : Prop :=
  ∀ n, P12829047447862737936.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P12484684556690259196

`2*(A052552(n+1)+A000225(n+1))`
-/

namespace A253122.P12484684556690259196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052552 (n + 1) + A000225 (n + 1))

end

end A253122.P12484684556690259196

namespace A253122

/-- `2*(A052552(n+1)+A000225(n+1))` -/
def P12484684556690259196.Spec : Prop :=
  ∀ n, P12484684556690259196.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P12049231480910516504

`2*(A077957(n+1)+A000079(n+1))`
-/

namespace A253122.P12049231480910516504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A077957 (n + 1) + A000079 (n + 1))

end

end A253122.P12049231480910516504

namespace A253122

/-- `2*(A077957(n+1)+A000079(n+1))` -/
def P12049231480910516504.Spec : Prop :=
  ∀ n, P12049231480910516504.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P2719093864864351296

`2*(A171559(n+1)+A077957(n+1))`
-/

namespace A253122.P2719093864864351296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A171559 (n + 1) + A077957 (n + 1))

end

end A253122.P2719093864864351296

namespace A253122

/-- `2*(A171559(n+1)+A077957(n+1))` -/
def P2719093864864351296.Spec : Prop :=
  ∀ n, P2719093864864351296.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P2505823724107292326

`2*(A354294(n+1)+A074323(n+1))`
-/

namespace A253122.P2505823724107292326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A354294 (n + 1) + A074323 (n + 1))

end

end A253122.P2505823724107292326

namespace A253122

/-- `2*(A354294(n+1)+A074323(n+1))` -/
def P2505823724107292326.Spec : Prop :=
  ∀ n, P2505823724107292326.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P929966514117705172

`2*(A048573(n+1)-A097038(n+1))`
-/

namespace A253122.P929966514117705172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A048573 (n + 1) - A097038 (n + 1))

end

end A253122.P929966514117705172

namespace A253122

/-- `2*(A048573(n+1)-A097038(n+1))` -/
def P929966514117705172.Spec : Prop :=
  ∀ n, P929966514117705172.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P1248269310461788243

`2*(A098646(n+1)-A287470(n+1))`
-/

namespace A253122.P1248269310461788243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A098646 (n + 1) - A287470 (n + 1))

end

end A253122.P1248269310461788243

namespace A253122

/-- `2*(A098646(n+1)-A287470(n+1))` -/
def P1248269310461788243.Spec : Prop :=
  ∀ n, P1248269310461788243.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P7405575383873922104

`2*(A113980(n+2)+A005418(n+2))`
-/

namespace A253122.P7405575383873922104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A113980 (n + 2) + A005418 (n + 2))

end

end A253122.P7405575383873922104

namespace A253122

/-- `2*(A113980(n+2)+A005418(n+2))` -/
def P7405575383873922104.Spec : Prop :=
  ∀ n, P7405575383873922104.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P6441792021242791014

`A090989(2*n+1)+A077957(n+3)`
-/

namespace A253122.P6441792021242791014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090989 (2 * n + 1) + A077957 (n + 3)

end

end A253122.P6441792021242791014

namespace A253122

/-- `A090989(2*n+1)+A077957(n+3)` -/
def P6441792021242791014.Spec : Prop :=
  ∀ n, P6441792021242791014.a n = A253122 (n + 1)

end A253122

/-! ## A253122.P16153149638883165747

`∑{d}[n+1, A000740(#)*A010713((n+1)/#-1)]`
-/

namespace A253122.P16153149638883165747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000740 d * A010713 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A253122.P16153149638883165747

namespace A253122

/-- `∑{d}[n+1, A000740(#)*A010713((n+1)/#-1)]` -/
def P16153149638883165747.Spec : Prop :=
  ∀ n, P16153149638883165747.a n = A253122 (n + 1)

end A253122

/-!
# A253123: Number of length n+2 0..2 arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A253123, there is no canonical definition to state claims against.
-/

/-! ## A253123.P5416409874249219550

`A253129(∑[n+2])`
-/

namespace A253123.P5416409874249219550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253123.P5416409874249219550

/-! ## A253123.P10905194285118658609

`record[A253129(abs(A201163(n)))]`
-/

namespace A253123.P10905194285118658609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253123.P10905194285118658609

/-! ## A253123.P11955951795420905886

`A253129(A000096(n+1))+char[19]`
-/

namespace A253123.P11955951795420905886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A000096 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253123.P11955951795420905886

/-! ## A253123.P118204173350690314

`record[gcd(A253129(n+2), A320019(n+3))]`
-/

namespace A253123.P118204173350690314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A253129 (n + 2)) (A320019 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253123.P118204173350690314

/-! ## A253123.P10054810288462355514

`∏{p}[n, A001221(#)]*A253129(A000096(n+1))`
-/

namespace A253123.P10054810288462355514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), A001221 p) * A253129 (A000096 (n + 1)).toNat

end

end A253123.P10054810288462355514

/-!
# A253124: Number of length n+2 0..3 arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A253124, there is no canonical definition to state claims against.
-/

/-! ## A253124.P8409493936344160113

`A253129(∑[n+3]+1)`
-/

namespace A253124.P8409493936344160113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253124.P8409493936344160113

/-! ## A253124.P15612513465253380587

`A253129(A034856(n+2))+char[18]`
-/

namespace A253124.P15612513465253380587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253124.P15612513465253380587

/-! ## A253124.P17835160869820967949

`A158388(n+1)*A253129(A052905(n)+3)`
-/

namespace A253124.P17835160869820967949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 (n + 1) * A253129 (A052905 n + 3).toNat

end

end A253124.P17835160869820967949

/-! ## A253124.P2823953796485156601

`A007318(C(2, n))*A253129(A034856(n+2))`
-/

namespace A253124.P2823953796485156601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253129 (A034856 (n + 2)).toNat

end

end A253124.P2823953796485156601

/-! ## A253124.P2080236519792906461

`A007318(val(n+1, 3))*A253129(A034856(n+2))`
-/

namespace A253124.P2080236519792906461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 3) * A253129 (A034856 (n + 2)).toNat

end

end A253124.P2080236519792906461

/-!
# A253125: Number of length n+2 0..4 arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A253125, there is no canonical definition to state claims against.
-/

/-! ## A253125.P17573998358224151442

`A253129(∑[n+4]+3)`
-/

namespace A253125.P17573998358224151442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A253125.P17573998358224151442

/-! ## A253125.P4458507163292788430

`A253129(A141214(n+1))+char[18]`
-/

namespace A253125.P4458507163292788430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A141214 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253125.P4458507163292788430

/-! ## A253125.P12456071916830150276

`A253129(A027379(n+2))+char[23]`
-/

namespace A253125.P12456071916830150276
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  23

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A027379 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253125.P12456071916830150276

/-! ## A253125.P3100081126934862615

`A007318(C(2, n))*A253129(A141214(n+1))`
-/

namespace A253125.P3100081126934862615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253129 (A141214 (n + 1)).toNat

end

end A253125.P3100081126934862615

/-! ## A253125.P6066686260338472791

`A007318(C(n, 2))*A253129(A027379(n+2))`
-/

namespace A253125.P6066686260338472791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose n 2) * A253129 (A027379 (n + 2)).toNat

end

end A253125.P6066686260338472791

/-!
# A253126: Number of length n+2 0..5 arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A253126, there is no canonical definition to state claims against.
-/

/-! ## A253126.P3234229049689385773

`A253129(∑[n+5]+6)`
-/

namespace A253126.P3234229049689385773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A253126.P3234229049689385773

/-! ## A253126.P6281439958875411731

`(A253129(Δ[A264443(n)])^(1/2))²`
-/

namespace A253126.P6281439958875411731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A253129 (f1 (n + 1) - f1 n).toNat : ℝ) ^ ((1 : ℚ) / 2 : ℝ)) ^ 2

end

end A253126.P6281439958875411731

/-! ## A253126.P5264680904444633401

`A253129(Δ[A264443(n)])+A008683(4*(n+1))`
-/

namespace A253126.P5264680904444633401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (f1 (n + 1) - f1 n).toNat + A008683 (4 * (n + 1))

end

end A253126.P5264680904444633401

/-! ## A253126.P810641279503061942

`A014963(10*(n+1))*A253129(Δ[A264443(n)])`
-/

namespace A253126.P810641279503061942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A253129 (f1 (n + 1) - f1 n).toNat

end

end A253126.P810641279503061942

/-! ## A253126.P12065731360027753013

`((-1)^A007318(n))²*A253129(Δ[A264443(n)])`
-/

namespace A253126.P12065731360027753013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1 : ℚ) ^ (A007318 n : ℤ)) ^ 2 * (A253129 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A253126.P12065731360027753013

/-!
# A253127: Number of length n+2 0..6 arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A253127, there is no canonical definition to state claims against.
-/

/-! ## A253127.P5328969105427657703

`A253129(A052905(n+3))`
-/

namespace A253127.P5328969105427657703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A052905 (n + 3)).toNat

end

end A253127.P5328969105427657703

/-! ## A253127.P1581757879446098802

`A253129(A056119(n)+16)`
-/

namespace A253127.P1581757879446098802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A056119 n + 16).toNat

end

end A253127.P1581757879446098802

/-! ## A253127.P18359340724936579310

`A253129(eq[3, A219347(n)])`
-/

namespace A253127.P18359340724936579310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253127.P18359340724936579310

/-! ## A253127.P140506244282312440

`A253129(eq[5, A193592(n)])`
-/

namespace A253127.P140506244282312440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253127.P140506244282312440

/-! ## A253127.P17944834300737806839

`A253129(eq[8, A258709(n)])`
-/

namespace A253127.P17944834300737806839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253127.P17944834300737806839

/-!
# A253128: Number of length n+2 0..7 arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A253128, there is no canonical definition to state claims against.
-/

/-! ## A253128.P13590953394575607555

`A253129(A055999(n+4))`
-/

namespace A253128.P13590953394575607555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A055999 (n + 4)).toNat

end

end A253128.P13590953394575607555

/-! ## A253128.P10030054592972369670

`A253129(eq[4, A219347(n)])`
-/

namespace A253128.P10030054592972369670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253128.P10030054592972369670

/-! ## A253128.P10723770549022436510

`A253129(eq[6, A193592(n)])`
-/

namespace A253128.P10723770549022436510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253128.P10723770549022436510

/-! ## A253128.P2148574566048148323

`A253129(A052905(n+4)-1)`
-/

namespace A253128.P2148574566048148323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A052905 (n + 4) - 1).toNat

end

end A253128.P2148574566048148323

/-! ## A253128.P14516556762030018773

`A253129(A046691(n+5)-2)`
-/

namespace A253128.P14516556762030018773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A046691 (n + 5) - 2).toNat

end

end A253128.P14516556762030018773

/-!
# A253130: Number of length 2+2 0..n arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A253130, the canonical program `A253130.P16680871965125475510` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253130 has offset 1).

The definition of A253130 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253130.P16680871965125475510

`∑[2*(∑[(n+1)*2*(n+3)]-n)]-n`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253130

/-- `∑[2*(∑[(n+1)*2*(n+3)]-n)]-n` -/
def P16680871965125475510.Spec : Prop :=
  ∀ n, P16680871965125475510.a n = A253130 (n + 1)

theorem P16680871965125475510.correct : P16680871965125475510.Spec := by
  intro n
  simp only [A253130, Nat.add_sub_cancel]

end A253130

/-! ## A253130.P11385784334169341369

`Δ[A213556(n+1)-A292053(n+1)]`
-/

namespace A253130.P11385784334169341369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213556 (n + 1) - A292053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253130.P11385784334169341369

namespace A253130

/-- `Δ[A213556(n+1)-A292053(n+1)]` -/
def P11385784334169341369.Spec : Prop :=
  ∀ n, P11385784334169341369.a n = A253130 (n + 1)

end A253130

/-! ## A253130.P16712524798377192110

`Δ[2*A213556(n+1)-A213546(n+1)]`
-/

namespace A253130.P16712524798377192110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A213556 (n + 1) - A213546 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253130.P16712524798377192110

namespace A253130

/-- `Δ[2*A213556(n+1)-A213546(n+1)]` -/
def P16712524798377192110.Spec : Prop :=
  ∀ n, P16712524798377192110.a n = A253130 (n + 1)

end A253130

/-! ## A253130.P13769035294622769800

`Δ[A213546(n+1)-2*A292053(n+1)]`
-/

namespace A253130.P13769035294622769800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213546 (n + 1) - 2 * A292053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253130.P13769035294622769800

namespace A253130

/-- `Δ[A213546(n+1)-2*A292053(n+1)]` -/
def P13769035294622769800.Spec : Prop :=
  ∀ n, P13769035294622769800.a n = A253130 (n + 1)

end A253130

/-! ## A253130.P13496558512344441067

`Δ[A027480(n)+A276159(n)-A292053(n+1)]`
-/

namespace A253130.P13496558512344441067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027480 n + (A276159 n - A292053 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253130.P13496558512344441067

namespace A253130

/-- `Δ[A027480(n)+A276159(n)-A292053(n+1)]` -/
def P13496558512344441067.Spec : Prop :=
  ∀ n, P13496558512344441067.a n = A253130 (n + 1)

end A253130

/-! ## A253130.P7518646003904156640

`Δ[Δ[n*A024166(n)]-A292053(n+1)]`
-/

namespace A253130.P7518646003904156640
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A024166 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - A292053 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A253130.P7518646003904156640

namespace A253130

/-- `Δ[Δ[n*A024166(n)]-A292053(n+1)]` -/
def P7518646003904156640.Spec : Prop :=
  ∀ n, P7518646003904156640.a n = A253130 (n + 1)

end A253130

/-! ## A253130.P11518517619954558249

`∑[A054977(n)+A006503(2*(n+1))]`
-/

namespace A253130.P11518517619954558249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n + A006503 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253130.P11518517619954558249

namespace A253130

/-- `∑[A054977(n)+A006503(2*(n+1))]` -/
def P11518517619954558249.Spec : Prop :=
  ∀ n, P11518517619954558249.a n = A253130 (n + 1)

end A253130

/-!
# A253131: Number of length 3+2 0..n arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A253131, there is no canonical definition to state claims against.
-/

/-! ## A253131.P14402392164669540343

`A253129(∑[n+2]+4)`
-/

namespace A253131.P14402392164669540343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253131.P14402392164669540343

/-! ## A253131.P12336541184343101421

`A253129(A167614(n+1))+char[22]`
-/

namespace A253131.P12336541184343101421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253131.P12336541184343101421

/-! ## A253131.P12984998239069743682

`A326684(n)+A253129(A167614(n+1))`
-/

namespace A253131.P12984998239069743682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 n + A253129 (A167614 (n + 1)).toNat

end

end A253131.P12984998239069743682

/-! ## A253131.P7680957059566209317

`A326685(n)+A253129(A167614(n+1))`
-/

namespace A253131.P7680957059566209317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326685 n + A253129 (A167614 (n + 1)).toNat

end

end A253131.P7680957059566209317

/-! ## A253131.P2614087871756295129

`A253129(A167614(n+1))/A016126(n)`
-/

namespace A253131.P2614087871756295129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253129 (A167614 (n + 1)).toNat : ℚ) / (A016126 n : ℚ)

end

end A253131.P2614087871756295129

/-!
# A253132: Number of length 4+2 0..n arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A253132, there is no canonical definition to state claims against.
-/

/-! ## A253132.P7782439422375429443

`A253129(∑[n+3]+7)`
-/

namespace A253132.P7782439422375429443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A253132.P7782439422375429443

/-! ## A253132.P8468823333497933910

`A253129(A167487(n+2)-3)+char[20]`
-/

namespace A253132.P8468823333497933910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A167487 (n + 2) - 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253132.P8468823333497933910

/-! ## A253132.P3858820986024274959

`A007318(C(2, n))*A253129(A167487(n+2)-3)`
-/

namespace A253132.P3858820986024274959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A253129 (A167487 (n + 2) - 3).toNat

end

end A253132.P3858820986024274959

/-! ## A253132.P4955714631347719642

`A014963(10*(n+1))*A253129(A167487(n+2)-3)`
-/

namespace A253132.P4955714631347719642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A253129 (A167487 (n + 2) - 3).toNat

end

end A253132.P4955714631347719642

/-! ## A253132.P6179689703337942652

`A253129(A167487(n+2)-3)/A007318(C(2, n+2))`
-/

namespace A253132.P6179689703337942652
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253129 (A167487 (n + 2) - 3).toNat : ℚ) / (A007318 (Nat.choose 2 (n + 2)) : ℚ)

end

end A253132.P6179689703337942652

/-!
# A253133: Number of length 5+2 0..n arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A253133, there is no canonical definition to state claims against.
-/

/-! ## A253133.P13930337121720435428

`A253129(∑[n+4]+11)`
-/

namespace A253133.P13930337121720435428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A253133.P13930337121720435428

/-!
# A253134: Number of length 6+2 0..n arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A253134, there is no canonical definition to state claims against.
-/

/-! ## A253134.P14331731226691813023

`A253129(A166136(n+4))`
-/

namespace A253134.P14331731226691813023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A166136 (n + 4)).toNat

end

end A253134.P14331731226691813023

/-! ## A253134.P16042986785167767827

`A253129(A056115(n)+21)`
-/

namespace A253134.P16042986785167767827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A056115 n + 21).toNat

end

end A253134.P16042986785167767827

/-! ## A253134.P6882084525551382707

`A253129(A167499(n+4)+1)`
-/

namespace A253134.P6882084525551382707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A167499 (n + 4) + 1).toNat

end

end A253134.P6882084525551382707

/-! ## A253134.P1840232676164920355

`A253129(A167614(n+4)+3)`
-/

namespace A253134.P1840232676164920355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A167614 (n + 4) + 3).toNat

end

end A253134.P1840232676164920355

/-! ## A253134.P13412931576184788714

`A253129(A000124(n+5)+5)`
-/

namespace A253134.P13412931576184788714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A000124 (n + 5) + 5).toNat

end

end A253134.P13412931576184788714

/-!
# A253135: Number of length 7+2 0..n arrays with the sum of medians of adjacent triples multiplied by some arrangement of +-1 equal to zero.

The programs for A253135, there is no canonical definition to state claims against.
-/

/-! ## A253135.P14313002370270905459

`A253129(A167487(n+5))`
-/

namespace A253135.P14313002370270905459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A167487 (n + 5)).toNat

end

end A253135.P14313002370270905459

/-! ## A253135.P4733046084262042428

`A253129(eq[11, A066657(n)])`
-/

namespace A253135.P4733046084262042428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A253135.P4733046084262042428

/-! ## A253135.P14626748820094008752

`A253129(A166136(n+5)+1)`
-/

namespace A253135.P14626748820094008752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A166136 (n + 5) + 1).toNat

end

end A253135.P14626748820094008752

/-! ## A253135.P7471104557944610295

`A253129(A167499(n+5)+2)`
-/

namespace A253135.P7471104557944610295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A167499 (n + 5) + 2).toNat

end

end A253135.P7471104557944610295

/-! ## A253135.P3060162978109231938

`A253129(A000124(n+6)+6)`
-/

namespace A253135.P3060162978109231938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253129 (A000124 (n + 6) + 6).toNat

end

end A253135.P3060162978109231938

/-!
# A253136: The number of overpartitions of n into parts congruent to 2, 4, or 5 modulo 6.

The programs for A253136, there is no canonical definition to state claims against.
-/

/-! ## A253136.P6530037326967100114

`and(A305052(A001747(n+1)), A339381(n+1))`
-/

namespace A253136.P6530037326967100114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A305052 (A001747 (n + 1)).toNat) (A339381 (n + 1))

end

end A253136.P6530037326967100114

/-!
# A253137: a(n) = n*gcd(c(n), d(n)), where c(n) = composite numbers, d(n) = number of divisors of c(n).

The programs for A253137, the canonical program `A253137.P13322010452455234093` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253137 has offset 1).

The definition of A253137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253137.P13322010452455234093

`(n+1)*A009191(Δ[A053767(n)])`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A253137

/-- `(n+1)*A009191(Δ[A053767(n)])` -/
def P13322010452455234093.Spec : Prop :=
  ∀ n, P13322010452455234093.a n = A253137 (n + 1)

theorem P13322010452455234093.correct : P13322010452455234093.Spec := by
  intro n
  simp only [A253137, Nat.add_sub_cancel]

end A253137

/-! ## A253137.P8272707901175878781

`(n+1)*A303781(Δ[A053767(n)])`
-/

namespace A253137.P8272707901175878781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A303781 (f1 (n + 1) - f1 n).toNat

end

end A253137.P8272707901175878781

namespace A253137

/-- `(n+1)*A303781(Δ[A053767(n)])` -/
def P8272707901175878781.Spec : Prop :=
  ∀ n, P8272707901175878781.a n = A253137 (n + 1)

end A253137

/-! ## A253137.P612856179666409832

`(n+1)*A009191(A002808(n+1))`
-/

namespace A253137.P612856179666409832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A009191 (A002808 (n + 1)).toNat

end

end A253137.P612856179666409832

namespace A253137

/-- `(n+1)*A009191(A002808(n+1))` -/
def P612856179666409832.Spec : Prop :=
  ∀ n, P612856179666409832.a n = A253137 (n + 1)

end A253137

/-! ## A253137.P2489366101098583262

`(n+1)*A009191(A056653(n+1))`
-/

namespace A253137.P2489366101098583262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A009191 (A056653 (n + 1)).toNat

end

end A253137.P2489366101098583262

namespace A253137

/-- `(n+1)*A009191(A056653(n+1))` -/
def P2489366101098583262.Spec : Prop :=
  ∀ n, P2489366101098583262.a n = A253137 (n + 1)

end A253137

/-! ## A253137.P16224389833936947076

`(n+1)*A009191(A018252(n+2))`
-/

namespace A253137.P16224389833936947076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A009191 (A018252 (n + 2)).toNat

end

end A253137.P16224389833936947076

namespace A253137

/-- `(n+1)*A009191(A018252(n+2))` -/
def P16224389833936947076.Spec : Prop :=
  ∀ n, P16224389833936947076.a n = A253137 (n + 1)

end A253137

/-! ## A253137.P17887725607853782627

`A000027(n+1)*A303781(A002808(n+1))`
-/

namespace A253137.P17887725607853782627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A303781 (A002808 (n + 1)).toNat

end

end A253137.P17887725607853782627

namespace A253137

/-- `A000027(n+1)*A303781(A002808(n+1))` -/
def P17887725607853782627.Spec : Prop :=
  ∀ n, P17887725607853782627.a n = A253137 (n + 1)

end A253137

/-! ## A253137.P6944539248432160238

`A000027(n+1)*A303781(A056653(n+1))`
-/

namespace A253137.P6944539248432160238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A303781 (A056653 (n + 1)).toNat

end

end A253137.P6944539248432160238

namespace A253137

/-- `A000027(n+1)*A303781(A056653(n+1))` -/
def P6944539248432160238.Spec : Prop :=
  ∀ n, P6944539248432160238.a n = A253137 (n + 1)

end A253137

/-! ## A253137.P8187064102213080320

`(n+1)*A009191(A067747(2*(n+1)))`
-/

namespace A253137.P8187064102213080320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A009191 (A067747 (2 * (n + 1))).toNat

end

end A253137.P8187064102213080320

namespace A253137

/-- `(n+1)*A009191(A067747(2*(n+1)))` -/
def P8187064102213080320.Spec : Prop :=
  ∀ n, P8187064102213080320.a n = A253137 (n + 1)

end A253137

/-!
# A253138: Number of ways to represent the n-th prime as the arithmetic mean of two semiprimes.

The programs for A253138, there is no canonical definition to state claims against.
-/

/-! ## A253138.P17203779796298080528

`A072931(A100484(n+1))`
-/

namespace A253138.P17203779796298080528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A100484 (n + 1)).toNat

end

end A253138.P17203779796298080528

/-! ## A253138.P13937491979169903284

`A171963(A115392(n+1))`
-/

namespace A253138.P13937491979169903284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171963 (A115392 (n + 1)).toNat

end

end A253138.P13937491979169903284

/-! ## A253138.P16870576180718778219

`A302301(A073582(n+1))`
-/

namespace A253138.P16870576180718778219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (A073582 (n + 1)).toNat

end

end A253138.P16870576180718778219

/-! ## A253138.P12226074565902919849

`A072931(A001747(n+2))`
-/

namespace A253138.P12226074565902919849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A001747 (n + 2)).toNat

end

end A253138.P12226074565902919849

/-! ## A253138.P4686405560008176467

`A072931(A077017(n+2))`
-/

namespace A253138.P4686405560008176467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A077017 (n + 2)).toNat

end

end A253138.P4686405560008176467

/-! ## A253138.P14853888911296110439

`A302301(A074845(n+2))`
-/

namespace A253138.P14853888911296110439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (A074845 (n + 2)).toNat

end

end A253138.P14853888911296110439

/-! ## A253138.P8269416167571553082

`A302301(A161344(n+2))`
-/

namespace A253138.P8269416167571553082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (A161344 (n + 2)).toNat

end

end A253138.P8269416167571553082

/-! ## A253138.P15939715615020916610

`A072931(2*A000040(n+1))`
-/

namespace A253138.P15939715615020916610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (2 * A000040 (n + 1)).toNat

end

end A253138.P15939715615020916610

/-! ## A253138.P16301309025719480715

`A072931(2*A006005(n+1))`
-/

namespace A253138.P16301309025719480715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (2 * A006005 (n + 1)).toNat

end

end A253138.P16301309025719480715

/-! ## A253138.P7498096252743273860

`A302301(2*A000040(n+1))`
-/

namespace A253138.P7498096252743273860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (2 * A000040 (n + 1)).toNat

end

end A253138.P7498096252743273860

/-! ## A253138.P7437007957853569076

`A072931(2*A008578(n+2))`
-/

namespace A253138.P7437007957853569076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (2 * A008578 (n + 2)).toNat

end

end A253138.P7437007957853569076

/-! ## A253138.P17434416407254432760

`A072931(2*A075643(n+2))`
-/

namespace A253138.P17434416407254432760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (2 * A075643 (n + 2)).toNat

end

end A253138.P17434416407254432760

/-! ## A253138.P9732576888663301568

`A072931(record[2*A006530(n+2)])`
-/

namespace A253138.P9732576888663301568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253138.P9732576888663301568

/-! ## A253138.P10544401418085478594

`A072931(record[2*A014963(n+2)])`
-/

namespace A253138.P10544401418085478594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253138.P10544401418085478594

/-! ## A253138.P15264300681373249173

`A072931(record[2*A020639(n+2)])`
-/

namespace A253138.P15264300681373249173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253138.P15264300681373249173

/-! ## A253138.P13773666023880433133

`A302301(record[2*A006530(n+2)])`
-/

namespace A253138.P13773666023880433133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253138.P13773666023880433133

/-! ## A253138.P18386035506870716597

`A302301(record[2*A014963(n+2)])`
-/

namespace A253138.P18386035506870716597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253138.P18386035506870716597

/-! ## A253138.P13045799801021499898

`A302301(record[2*A020639(n+2)])`
-/

namespace A253138.P13045799801021499898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A253138.P13045799801021499898

/-! ## A253138.P15906230671144650615

`A072931(A000040(n+1)+A000040(n+1))`
-/

namespace A253138.P15906230671144650615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072931 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A253138.P15906230671144650615

/-! ## A253138.P2227715173074417309

`A302301(A000040(n+1)+A000040(n+1))`
-/

namespace A253138.P2227715173074417309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302301 (A000040 (n + 1) + A000040 (n + 1)).toNat

end

end A253138.P2227715173074417309

/-!
# A253139: a(n) = lcm_{d|n} tau(d), where tau(d) represents the number of divisors of d (A000005(d)).

The programs for A253139, the canonical program `A253139.P10614688840805837751` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253139 has offset 1).

The definition of A253139 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253139.P5882268841171909931

`∏{d}[n+1, A253141(#)]`
-/

namespace A253139.P5882268841171909931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A253141 d

end

end A253139.P5882268841171909931

namespace A253139

/-- `∏{d}[n+1, A253141(#)]` -/
def P5882268841171909931.Spec : Prop :=
  ∀ n, P5882268841171909931.a n = A253139 (n + 1)

end A253139

/-! ## A253139.P10614688840805837751

`∏{e}[n+1, A003418(#+1)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253139

/-- `∏{e}[n+1, A003418(#+1)]` -/
def P10614688840805837751.Spec : Prop :=
  ∀ n, P10614688840805837751.a n = A253139 (n + 1)

theorem P10614688840805837751.correct : P10614688840805837751.Spec := by
  intro n
  simp only [A253139, Nat.add_sub_cancel]

end A253139

/-! ## A253139.P3992291231799128279

`∏{e}[n+1, A058312(#+1)]`
-/

namespace A253139.P3992291231799128279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A058312 (Nat.factorization (f1 n) p + 1)

end

end A253139.P3992291231799128279

namespace A253139

/-- `∏{e}[n+1, A058312(#+1)]` -/
def P3992291231799128279.Spec : Prop :=
  ∀ n, P3992291231799128279.a n = A253139 (n + 1)

end A253139

/-! ## A253139.P10330268361294910145

`A265390(n+1)/A265391(n+1)*A265392(n+1)`
-/

namespace A253139.P10330268361294910145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A265390 (n + 1) : ℚ) / (A265391 (n + 1) : ℚ) * (A265392 (n + 1) : ℚ)

end

end A253139.P10330268361294910145

namespace A253139

/-- `A265390(n+1)/A265391(n+1)*A265392(n+1)` -/
def P10330268361294910145.Spec : Prop :=
  ∀ n, P10330268361294910145.a n = (A253139 (n + 1) : ℚ)

end A253139

/-!
# A253141: If n is a prime power, then a(n) = lambda(tau(n)) = A014963(A000005(n)); otherwise, a(n) = 1.

The programs for A253141, the canonical program `A253141.P10085401691948202842` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253141 has offset 1).

The definition of A253141 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253141.P14779580380281915942

`A014963(A376567(n+1))`
-/

namespace A253141.P14779580380281915942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A376567 (n + 1)).toNat

end

end A253141.P14779580380281915942

namespace A253141

/-- `A014963(A376567(n+1))` -/
def P14779580380281915942.Spec : Prop :=
  ∀ n, P14779580380281915942.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P10085401691948202842

`A014963(A100995(n+1)+1)`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A253141

/-- `A014963(A100995(n+1)+1)` -/
def P10085401691948202842.Spec : Prop :=
  ∀ n, P10085401691948202842.a n = A253141 (n + 1)

theorem P10085401691948202842.correct : P10085401691948202842.Spec := by
  intro n
  simp only [A253141, Nat.add_sub_cancel]

end A253141

/-! ## A253141.P15085207775974864789

`A099636(A100995(n+1)+1)`
-/

namespace A253141.P15085207775974864789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099636 (A100995 (n + 1) + 1).toNat

end

end A253141.P15085207775974864789

namespace A253141

/-- `A099636(A100995(n+1)+1)` -/
def P15085207775974864789.Spec : Prop :=
  ∀ n, P15085207775974864789.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P16700211548965761602

`A014963(A000005(A100994(n+1)))`
-/

namespace A253141.P16700211548965761602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000005 (A100994 (n + 1)).toNat).toNat

end

end A253141.P16700211548965761602

namespace A253141

/-- `A014963(A000005(A100994(n+1)))` -/
def P16700211548965761602.Spec : Prop :=
  ∀ n, P16700211548965761602.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P15292640978862052118

`A253139(n+1)/A253139(A048671(n+1))`
-/

namespace A253141.P15292640978862052118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253139 (n + 1) : ℚ) / (A253139 (A048671 (n + 1)).toNat : ℚ)

end

end A253141.P15292640978862052118

namespace A253141

/-- `A253139(n+1)/A253139(A048671(n+1))` -/
def P15292640978862052118.Spec : Prop :=
  ∀ n, P15292640978862052118.a n = (A253141 (n + 1) : ℚ)

end A253141

/-! ## A253141.P16718872178094894225

`A014963(C(A080256(n+1), A001221(n+1)))`
-/

namespace A253141.P16718872178094894225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (A080256 (n + 1)).toNat (A001221 (n + 1)).toNat)

end

end A253141.P16718872178094894225

namespace A253141

/-- `A014963(C(A080256(n+1), A001221(n+1)))` -/
def P16718872178094894225.Spec : Prop :=
  ∀ n, P16718872178094894225.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P5816524572077676129

`A014963(A000005(∏{e}[A014963(n+1), #+n]))`
-/

namespace A253141.P5816524572077676129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000005 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + n))).toNat

end

end A253141.P5816524572077676129

namespace A253141

/-- `A014963(A000005(∏{e}[A014963(n+1), #+n]))` -/
def P5816524572077676129.Spec : Prop :=
  ∀ n, P5816524572077676129.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P2369660398944561514

`A014963(A001222(n+1)*A010055(n+1)+1)`
-/

namespace A253141.P2369660398944561514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001222 (n + 1) * A010055 (n + 1) + 1).toNat

end

end A253141.P2369660398944561514

namespace A253141

/-- `A014963(A001222(n+1)*A010055(n+1)+1)` -/
def P2369660398944561514.Spec : Prop :=
  ∀ n, P2369660398944561514.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P4289811382359021196

`A014963(A001222(n+1)*A069513(n+1)+1)`
-/

namespace A253141.P4289811382359021196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A001222 (n + 1) * A069513 (n + 1) + 1).toNat

end

end A253141.P4289811382359021196

namespace A253141

/-- `A014963(A001222(n+1)*A069513(n+1)+1)` -/
def P4289811382359021196.Spec : Prop :=
  ∀ n, P4289811382359021196.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P7538981302924467912

`A014963(A000005(lcm(n, 1-A014963(n+1))+1))`
-/

namespace A253141.P7538981302924467912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A000005 (Int.lcm (n : ℤ) (1 - A014963 (n + 1)) + 1)).toNat

end

end A253141.P7538981302924467912

namespace A253141

/-- `A014963(A000005(lcm(n, 1-A014963(n+1))+1))` -/
def P7538981302924467912.Spec : Prop :=
  ∀ n, P7538981302924467912.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P12526182974323730882

`A014963(∏{e}[A014963(n+1), A001222(n+1)+#])`
-/

namespace A253141.P12526182974323730882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A001222 (n + 1) + (Nat.factorization (f1 n).natAbs p : ℤ))).toNat

end

end A253141.P12526182974323730882

namespace A253141

/-- `A014963(∏{e}[A014963(n+1), A001222(n+1)+#])` -/
def P12526182974323730882.Spec : Prop :=
  ∀ n, P12526182974323730882.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P9160774057975816522

`A014963(∏{e}[A014963(n+1), A033273(n+1)+#])`
-/

namespace A253141.P9160774057975816522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (A033273 (n + 1) + (Nat.factorization (f1 n).natAbs p : ℤ))).toNat

end

end A253141.P9160774057975816522

namespace A253141

/-- `A014963(∏{e}[A014963(n+1), A033273(n+1)+#])` -/
def P9160774057975816522.Spec : Prop :=
  ∀ n, P9160774057975816522.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P7996892357036037563

`A014963(A068903(n+1))`
-/

namespace A253141.P7996892357036037563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A068903 (n + 1)).toNat

end

end A253141.P7996892357036037563

namespace A253141

/-- `A014963(A068903(n+1))` -/
def P7996892357036037563.Spec : Prop :=
  ∀ n, P7996892357036037563.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P149957349988331469

`A014963(C(∏{e}[n+1, #+1], A001221(n+1)))`
-/

namespace A253141.P149957349988331469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) (A001221 (n + 1)).toNat)

end

end A253141.P149957349988331469

namespace A253141

/-- `A014963(C(∏{e}[n+1, #+1], A001221(n+1)))` -/
def P149957349988331469.Spec : Prop :=
  ∀ n, P149957349988331469.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P14201141501510188191

`A014963(C(∑{d}[n+1, ((#+1)%2)!], A001221(n+1)))`
-/

namespace A253141.P14201141501510188191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (∑ d ∈ Nat.divisors (f1 n), Nat.factorial ((d + 1) % 2)) (A001221 (n + 1)).toNat)

end

end A253141.P14201141501510188191

namespace A253141

/-- `A014963(C(∑{d}[n+1, ((#+1)%2)!], A001221(n+1)))` -/
def P14201141501510188191.Spec : Prop :=
  ∀ n, P14201141501510188191.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P9764026429660159823

`A014963(A016003(n+1)*A081707(n+1))`
-/

namespace A253141.P9764026429660159823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A016003 (n + 1) * A081707 (n + 1)).toNat

end

end A253141.P9764026429660159823

namespace A253141

/-- `A014963(A016003(n+1)*A081707(n+1))` -/
def P9764026429660159823.Spec : Prop :=
  ∀ n, P9764026429660159823.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P17622810719973739849

`A014963(C(A000005(n+1), A001221(n+1)))`
-/

namespace A253141.P17622810719973739849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (A000005 (n + 1)).toNat (A001221 (n + 1)).toNat)

end

end A253141.P17622810719973739849

namespace A253141

/-- `A014963(C(A000005(n+1), A001221(n+1)))` -/
def P17622810719973739849.Spec : Prop :=
  ∀ n, P17622810719973739849.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P4897169668060692692

`A014963(C(A000005(n+1), A033273(n+1)))`
-/

namespace A253141.P4897169668060692692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (A000005 (n + 1)).toNat (A033273 (n + 1)).toNat)

end

end A253141.P4897169668060692692

namespace A253141

/-- `A014963(C(A000005(n+1), A033273(n+1)))` -/
def P4897169668060692692.Spec : Prop :=
  ∀ n, P4897169668060692692.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P12834584749868602863

`A014963(C(A032741(n+1)+1, A033273(n+1)))`
-/

namespace A253141.P12834584749868602863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (A032741 (n + 1) + 1).toNat (A033273 (n + 1)).toNat)

end

end A253141.P12834584749868602863

namespace A253141

/-- `A014963(C(A032741(n+1)+1, A033273(n+1)))` -/
def P12834584749868602863.Spec : Prop :=
  ∀ n, P12834584749868602863.a n = A253141 (n + 1)

end A253141

/-! ## A253141.P15899162311145796363

`A014963(C(A070824(n+1)+2, A001221(n+1)))`
-/

namespace A253141.P15899162311145796363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.choose (A070824 (n + 1) + 2).toNat (A001221 (n + 1)).toNat)

end

end A253141.P15899162311145796363

namespace A253141

/-- `A014963(C(A070824(n+1)+2, A001221(n+1)))` -/
def P15899162311145796363.Spec : Prop :=
  ∀ n, P15899162311145796363.a n = A253141 (n + 1)

end A253141

/-!
# A253142: Numbers k such that k + 15 and k^2 + 15 are prime.

The programs for A253142, there is no canonical definition to state claims against.
-/

/-! ## A253142.P3613777770685318269

`∩[A086303(n+1), A121982(n+1)]`
-/

namespace A253142.P3613777770685318269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253142.P3613777770685318269

/-! ## A253142.P11026035564424041460

`∩[2*A089559(n+1), A121982(n+1)]`
-/

namespace A253142.P11026035564424041460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A089559 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253142.P11026035564424041460

/-! ## A253142.P7913247549166419340

`∩[A121982(n+1), A088967(n+3)-6]`
-/

namespace A253142.P7913247549166419340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088967 (n + 3) - 6

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253142.P7913247549166419340

/-! ## A253142.P7261725247718640774

`∩[A121982(n+1), A000040(n+7)-15]`
-/

namespace A253142.P7261725247718640774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 7) - 15

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A253142.P7261725247718640774

/-! ## A253142.P8833477532897415677

`A028310(∩[p?[2*n+15]-15, A121982(n+1)])`
-/

namespace A253142.P8833477532897415677
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 15

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - 15

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121982 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n)

end

end A253142.P8833477532897415677

/-! ## A253142.P12311761209395698893

`A023457(p?[A121982(n+1)+15])`
-/

namespace A253142.P12311761209395698893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121982 (n + 1) + 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023457 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A253142.P12311761209395698893

/-!
# A253144: Number of partitions of n into distinct parts congruent to 1, 2, or 4 modulo 6.

The programs for A253144, there is no canonical definition to state claims against.
-/

/-! ## A253144.P11207906326391667680

`A060384(lt[A084938(3*n), A348612(n+1)])`
-/

namespace A253144.P11207906326391667680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A253144.P11207906326391667680

/-! ## A253144.P13613330936165439258

`A060384(lt[A106566(3*n), A131396(n+5)])`
-/

namespace A253144.P13613330936165439258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131396 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A253144.P13613330936165439258

/-!
# A253145: Triangular numbers (A000217) omitting the term 1.

The programs for A253145, the canonical program `A253145.P18019555127228407432` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253145 has offset 0).

The definition of A253145 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253145.P12378184389513504586

`∑[char[1]+n]+n`
-/

namespace A253145.P12378184389513504586
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A253145.P12378184389513504586

namespace A253145

/-- `∑[char[1]+n]+n` -/
def P12378184389513504586.Spec : Prop :=
  ∀ n, (P12378184389513504586.a n : ℤ) = A253145 n

end A253145

/-! ## A253145.P9914059955105715562

`ceil(n*cosh(log(n+3)))`
-/

namespace A253145.P9914059955105715562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.cosh (Real.log (n + 3 : ℝ))⌉

end

end A253145.P9914059955105715562

namespace A253145

/-- `ceil(n*cosh(log(n+3)))` -/
def P9914059955105715562.Spec : Prop :=
  ∀ n, P9914059955105715562.a n = A253145 n

end A253145

/-! ## A253145.P8999091067066455648

`C(ceil(n*exp(acot(n))), 2)`
-/

namespace A253145.P8999091067066455648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌈(n : ℝ) * Real.exp (SequenceMachineLib.acot (n : ℝ))⌉.toNat 2

end

end A253145.P8999091067066455648

namespace A253145

/-- `C(ceil(n*exp(acot(n))), 2)` -/
def P8999091067066455648.Spec : Prop :=
  ∀ n, (P8999091067066455648.a n : ℤ) = A253145 n

end A253145

/-! ## A253145.P326828909410773590

`ceil(∑[n+1]-acot(n))`
-/

namespace A253145.P326828909410773590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - SequenceMachineLib.acot (n : ℝ)⌉

end

end A253145.P326828909410773590

namespace A253145

/-- `ceil(∑[n+1]-acot(n))` -/
def P326828909410773590.Spec : Prop :=
  ∀ n, P326828909410773590.a n = A253145 n

end A253145

/-! ## A253145.P12200417185293374161

`C(∑[n+1], ceil(acot(n)))`
-/

namespace A253145.P12200417185293374161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) ⌈SequenceMachineLib.acot (n : ℝ)⌉.toNat

end

end A253145.P12200417185293374161

namespace A253145

/-- `C(∑[n+1], ceil(acot(n)))` -/
def P12200417185293374161.Spec : Prop :=
  ∀ n, (P12200417185293374161.a n : ℤ) = A253145 n

end A253145

/-! ## A253145.P11116524092194491007

`xor(floor(acot(n)), ∑[n+1])`
-/

namespace A253145.P11116524092194491007
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ⌊SequenceMachineLib.acot (n : ℝ)⌋ ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A253145.P11116524092194491007

namespace A253145

/-- `xor(floor(acot(n)), ∑[n+1])` -/
def P11116524092194491007.Spec : Prop :=
  ∀ n, P11116524092194491007.a n = A253145 n

end A253145

/-! ## A253145.P2769938496649117628

`C(n+2, ceil(cosh(acot(n))))`
-/

namespace A253145.P2769938496649117628
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) ⌈Real.cosh (SequenceMachineLib.acot (n : ℝ))⌉.toNat

end

end A253145.P2769938496649117628

namespace A253145

/-- `C(n+2, ceil(cosh(acot(n))))` -/
def P2769938496649117628.Spec : Prop :=
  ∀ n, (P2769938496649117628.a n : ℤ) = A253145 n

end A253145

/-! ## A253145.P11804275633830374494

`ceil(sqrt(6*C(n+3, 4)))`
-/

namespace A253145.P11804275633830374494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (6 * Nat.choose (n + 3) 4 : ℝ)⌉

end

end A253145.P11804275633830374494

namespace A253145

/-- `ceil(sqrt(6*C(n+3, 4)))` -/
def P11804275633830374494.Spec : Prop :=
  ∀ n, P11804275633830374494.a n = A253145 n

end A253145

/-! ## A253145.P18019555127228407432

`∑[n+1]%(n+1)²`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253145

/-- `∑[n+1]%(n+1)²` -/
def P18019555127228407432.Spec : Prop :=
  ∀ n, (P18019555127228407432.a n : ℤ) = A253145 n

theorem P18019555127228407432.correct : P18019555127228407432.Spec := by
  intro n
  simp only [A253145]

end A253145

/-! ## A253145.P3913972721199894806

`ceil(n/sin(2/(n+3)))`
-/

namespace A253145.P3913972721199894806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.sin (2 / (n + 3 : ℚ) : ℝ)⌉

end

end A253145.P3913972721199894806

namespace A253145

/-- `ceil(n/sin(2/(n+3)))` -/
def P3913972721199894806.Spec : Prop :=
  ∀ n, P3913972721199894806.a n = A253145 n

end A253145

/-! ## A253145.P8024063700302831294

`ceil(n/atan(2/(n+3)))`
-/

namespace A253145.P8024063700302831294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.arctan (2 / (n + 3 : ℚ) : ℝ)⌉

end

end A253145.P8024063700302831294

namespace A253145

/-- `ceil(n/atan(2/(n+3)))` -/
def P8024063700302831294.Spec : Prop :=
  ∀ n, P8024063700302831294.a n = A253145 n

end A253145

/-! ## A253145.P16005477196934812912

`ceil(n/tanh(2/(n+3)))`
-/

namespace A253145.P16005477196934812912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.tanh (2 / (n + 3 : ℚ) : ℝ)⌉

end

end A253145.P16005477196934812912

namespace A253145

/-- `ceil(n/tanh(2/(n+3)))` -/
def P16005477196934812912.Spec : Prop :=
  ∀ n, P16005477196934812912.a n = A253145 n

end A253145

/-! ## A253145.P14282059542875525375

`ceil(n/(2*acot(n+3)))`
-/

namespace A253145.P14282059542875525375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / (2 * SequenceMachineLib.acot (n + 3 : ℝ))⌉

end

end A253145.P14282059542875525375

namespace A253145

/-- `ceil(n/(2*acot(n+3)))` -/
def P14282059542875525375.Spec : Prop :=
  ∀ n, P14282059542875525375.a n = A253145 n

end A253145

/-! ## A253145.P12752843967695944954

`ceil(n/acot((n+3)/2))`
-/

namespace A253145.P12752843967695944954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot ((n + 3 : ℚ) / 2 : ℝ)⌉

end

end A253145.P12752843967695944954

namespace A253145

/-- `ceil(n/acot((n+3)/2))` -/
def P12752843967695944954.Spec : Prop :=
  ∀ n, P12752843967695944954.a n = A253145 n

end A253145

/-! ## A253145.P8120120676876705525

`∑[xor(n+1, C(n, n²))]`
-/

namespace A253145.P8120120676876705525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 1) (Nat.choose n (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253145.P8120120676876705525

namespace A253145

/-- `∑[xor(n+1, C(n, n²))]` -/
def P8120120676876705525.Spec : Prop :=
  ∀ n, (P8120120676876705525.a n : ℤ) = A253145 n

end A253145

/-! ## A253145.P7212678265202429367

`ceil(∑[n+1]-cos(n)²)`
-/

namespace A253145.P7212678265202429367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.cos (n : ℝ) ^ 2⌉

end

end A253145.P7212678265202429367

namespace A253145

/-- `ceil(∑[n+1]-cos(n)²)` -/
def P7212678265202429367.Spec : Prop :=
  ∀ n, P7212678265202429367.a n = A253145 n

end A253145

/-! ## A253145.P17735234453524561871

`ceil(sin(n)²)*∑[n+1]`
-/

namespace A253145.P17735234453524561871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A253145.P17735234453524561871

namespace A253145

/-- `ceil(sin(n)²)*∑[n+1]` -/
def P17735234453524561871.Spec : Prop :=
  ∀ n, P17735234453524561871.a n = A253145 n

end A253145

/-! ## A253145.P579221523732306375

`round(atan(atan(n)))*∑[n+1]`
-/

namespace A253145.P579221523732306375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (n : ℝ))) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A253145.P579221523732306375

namespace A253145

/-- `round(atan(atan(n)))*∑[n+1]` -/
def P579221523732306375.Spec : Prop :=
  ∀ n, P579221523732306375.a n = A253145 n

end A253145

/-! ## A253145.P2728575238792560568

`∑[a(n-1)+1]` with `a(0)=0, a(1)=3, a(2)=3`
-/

namespace A253145.P2728575238792560568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 3] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253145.P2728575238792560568

namespace A253145

/-- `∑[a(n-1)+1]` -/
def P2728575238792560568.Spec : Prop :=
  ∀ n, (P2728575238792560568.a n : ℤ) = A253145 n

end A253145

/-! ## A253145.P11614297775137082344

`C(2%(n+1)²+n, 2)`
-/

namespace A253145.P11614297775137082344
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 % (n + 1) ^ 2 + n) 2

end

end A253145.P11614297775137082344

namespace A253145

/-- `C(2%(n+1)²+n, 2)` -/
def P11614297775137082344.Spec : Prop :=
  ∀ n, (P11614297775137082344.a n : ℤ) = A253145 n

end A253145

/-!
# A253146: A fractal tree, read by rows: for n > 2, T(n,1) = T(n-1,1)+2, T(n,n) = T(n-1,1)+3, and for k=2..n-1, T(n,k) = T(n-2,k-1).

The programs for A253146, the canonical program `A253146.P8353781513861575822` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253146 has offset 1).

The definition of A253146 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7875 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253146.P8353781513861575822

`A131225(A185180(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A253146

/-- `A131225(A185180(n+1))` -/
def P8353781513861575822.Spec : Prop :=
  ∀ n, P8353781513861575822.a n = A253146 (n + 1)

theorem P8353781513861575822.correct : P8353781513861575822.Spec := by
  intro n
  simp only [A253146, Nat.add_sub_cancel]

end A253146

/-! ## A253146.P10778544565191232121

`A220073(n+1)+A049581(n)`
-/

namespace A253146.P10778544565191232121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1) + A049581 n

end

end A253146.P10778544565191232121

namespace A253146

/-- `A220073(n+1)+A049581(n)` -/
def P10778544565191232121.Spec : Prop :=
  ∀ n, P10778544565191232121.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P3434781461257484591

`A101688(n)+2*A049581(n)`
-/

namespace A253146.P3434781461257484591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101688 n + 2 * A049581 n

end

end A253146.P3434781461257484591

namespace A253146

/-- `A101688(n)+2*A049581(n)` -/
def P3434781461257484591.Spec : Prop :=
  ∀ n, P3434781461257484591.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P8457607004533733322

`A220073(n+1)+abs(A114327(n))`
-/

namespace A253146.P8457607004533733322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1) + |A114327 n|

end

end A253146.P8457607004533733322

namespace A253146

/-- `A220073(n+1)+abs(A114327(n))` -/
def P8457607004533733322.Spec : Prop :=
  ∀ n, P8457607004533733322.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P12256148141094739771

`A220073(n+1)+A143182(n)-1`
-/

namespace A253146.P12256148141094739771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1) + (A143182 n - 1)

end

end A253146.P12256148141094739771

namespace A253146

/-- `A220073(n+1)+A143182(n)-1` -/
def P12256148141094739771.Spec : Prop :=
  ∀ n, P12256148141094739771.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P11124132190638527186

`2*A220073(n+1)-A101688(n)`
-/

namespace A253146.P11124132190638527186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A220073 (n + 1) - A101688 n

end

end A253146.P11124132190638527186

namespace A253146

/-- `2*A220073(n+1)-A101688(n)` -/
def P11124132190638527186.Spec : Prop :=
  ∀ n, P11124132190638527186.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P3128584968132598148

`2*A051125(n+1)-A210535(n+1)`
-/

namespace A253146.P3128584968132598148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051125 (n + 1) - A210535 (n + 1)

end

end A253146.P3128584968132598148

namespace A253146

/-- `2*A051125(n+1)-A210535(n+1)` -/
def P3128584968132598148.Spec : Prop :=
  ∀ n, P3128584968132598148.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P10648208814328217207

`A002260(A185180(n+1))+A143182(n)-1`
-/

namespace A253146.P10648208814328217207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A185180 (n + 1)).toNat + (A143182 n - 1)

end

end A253146.P10648208814328217207

namespace A253146

/-- `A002260(A185180(n+1))+A143182(n)-1` -/
def P10648208814328217207.Spec : Prop :=
  ∀ n, P10648208814328217207.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P9525181583200491059

`A004741(A060736(n+1))`
-/

namespace A253146.P9525181583200491059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A060736 (n + 1)).toNat

end

end A253146.P9525181583200491059

namespace A253146

/-- `A004741(A060736(n+1))` -/
def P9525181583200491059.Spec : Prop :=
  ∀ n, P9525181583200491059.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P9985491013192801959

`A004741(A001614(n+1))`
-/

namespace A253146.P9985491013192801959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A001614 (n + 1)).toNat

end

end A253146.P9985491013192801959

namespace A253146

/-- `A004741(A001614(n+1))` -/
def P9985491013192801959.Spec : Prop :=
  ∀ n, P9985491013192801959.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P2578452578139342533

`A004741(A133280(n)+1)`
-/

namespace A253146.P2578452578139342533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A133280 n + 1).toNat

end

end A253146.P2578452578139342533

namespace A253146

/-- `A004741(A133280(n)+1)` -/
def P2578452578139342533.Spec : Prop :=
  ∀ n, P2578452578139342533.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P12600743787040049374

`A071797(A213922(n+1))`
-/

namespace A253146.P12600743787040049374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A213922 (n + 1)).toNat

end

end A253146.P12600743787040049374

namespace A253146

/-- `A071797(A213922(n+1))` -/
def P12600743787040049374.Spec : Prop :=
  ∀ n, P12600743787040049374.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P13652629280954345429

`A004741(A118011(n+1))`
-/

namespace A253146.P13652629280954345429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A118011 (n + 1)).toNat

end

end A253146.P13652629280954345429

namespace A253146

/-- `A004741(A118011(n+1))` -/
def P13652629280954345429.Spec : Prop :=
  ∀ n, P13652629280954345429.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P17289615783170297861

`A004741(A195437(n)+1)`
-/

namespace A253146.P17289615783170297861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A195437 n + 1).toNat

end

end A253146.P17289615783170297861

namespace A253146

/-- `A004741(A195437(n)+1)` -/
def P17289615783170297861.Spec : Prop :=
  ∀ n, P17289615783170297861.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P5080382338493478336

`A133256(A304337(n+1))`
-/

namespace A253146.P5080382338493478336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133256 (A304337 (n + 1)).toNat

end

end A253146.P5080382338493478336

namespace A253146

/-- `A133256(A304337(n+1))` -/
def P5080382338493478336.Spec : Prop :=
  ∀ n, P5080382338493478336.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P15253750012585462330

`A004741(A000037(2*(n+1)))`
-/

namespace A253146.P15253750012585462330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A000037 (2 * (n + 1))).toNat

end

end A253146.P15253750012585462330

namespace A253146

/-- `A004741(A000037(2*(n+1)))` -/
def P15253750012585462330.Spec : Prop :=
  ∀ n, P15253750012585462330.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P2070532358266171424

`A004741(A164386(2*(n+1)))`
-/

namespace A253146.P2070532358266171424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (A164386 (2 * (n + 1))).toNat

end

end A253146.P2070532358266171424

namespace A253146

/-- `A004741(A164386(2*(n+1)))` -/
def P2070532358266171424.Spec : Prop :=
  ∀ n, P2070532358266171424.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P15501489866549103441

`A220073(n+1)+A053188(2*n+1)`
-/

namespace A253146.P15501489866549103441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220073 (n + 1) + A053188 (2 * n + 1)

end

end A253146.P15501489866549103441

namespace A253146

/-- `A220073(n+1)+A053188(2*n+1)` -/
def P15501489866549103441.Spec : Prop :=
  ∀ n, P15501489866549103441.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P1005714315107089973

`A053188(2*n+1)+A004737(2*(n+1))`
-/

namespace A253146.P1005714315107089973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (2 * n + 1) + A004737 (2 * (n + 1))

end

end A253146.P1005714315107089973

namespace A253146

/-- `A053188(2*n+1)+A004737(2*(n+1))` -/
def P1005714315107089973.Spec : Prop :=
  ∀ n, P1005714315107089973.a n = A253146 (n + 1)

end A253146

/-! ## A253146.P7172701200277049563

`A267708(2*n+1)+2*A053188(2*n+1)`
-/

namespace A253146.P7172701200277049563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 (2 * n + 1) + 2 * A053188 (2 * n + 1)

end

end A253146.P7172701200277049563

namespace A253146

/-- `A267708(2*n+1)+2*A053188(2*n+1)` -/
def P7172701200277049563.Spec : Prop :=
  ∀ n, P7172701200277049563.a n = A253146 (n + 1)

end A253146

/-!
# A253148: Nontrivial palindromes in base 10 and base 256.

The programs for A253148, there is no canonical definition to state claims against.
-/

/-! ## A253148.P6722289330600013398

`A253147(n+4)+A000122(A317716(n+1))`
-/

namespace A253148.P6722289330600013398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253147 (n + 4) + A000122 (A317716 (n + 1)).toNat

end

end A253148.P6722289330600013398

/-! ## A253148.P5668634584653131821

`A253147(n+4)+A000122(A352283(n+3))`
-/

namespace A253148.P5668634584653131821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253147 (n + 4) + A000122 (A352283 (n + 3)).toNat

end

end A253148.P5668634584653131821

/-! ## A253148.P2597180668674248287

`A253147(n+4)%A212761(A066644(2*(n+1)))`
-/

namespace A253148.P2597180668674248287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253147 (n + 4)) (A212761 (A066644 (2 * (n + 1))).toNat)

end

end A253148.P2597180668674248287

/-! ## A253148.P2314731479764729159

`A253147(A382083(n+1)+1)`
-/

namespace A253148.P2314731479764729159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253147 (A382083 (n + 1) + 1).toNat

end

end A253148.P2314731479764729159

/-! ## A253148.P12109924451571893173

`A253147(n+4)%A352350(n+3)²`
-/

namespace A253148.P12109924451571893173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253147 (n + 4)) (A352350 (n + 3) ^ 2)

end

end A253148.P12109924451571893173

/-!
# A253151: Number of (n+1)X(n+1) 0..1 arrays with every 2X2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253151, the canonical program `A253151.P11634397736834004472` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253151 has offset 1).

The definition of A253151 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253151.P11634397736834004472

`3*a(n-1)-2*a(n-2)` with `a(0)=16, a(1)=72, a(2)=94, a(3)=164, a(4)=308`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253151

/-- `3*a(n-1)-2*a(n-2)` -/
def P11634397736834004472.Spec : Prop :=
  ∀ n, P11634397736834004472.a n = A253151 (n + 1)

theorem P11634397736834004472.correct : P11634397736834004472.Spec := by
  intro n
  simp only [A253151, Nat.add_sub_cancel]

end A253151

/-! ## A253151.P7562051174377347397

`A253159(∑[4*n]+1)`
-/

namespace A253151.P7562051174377347397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253159 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253151.P7562051174377347397

namespace A253151

/-- `A253159(∑[4*n]+1)` -/
def P7562051174377347397.Spec : Prop :=
  ∀ n, P7562051174377347397.a n = A253151 (n + 1)

end A253151

/-! ## A253151.P17247972786681077178

`lcm(2, A253159(A001844(n)))`
-/

namespace A253151.P17247972786681077178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253159 (A001844 n).toNat)

end

end A253151.P17247972786681077178

namespace A253151

/-- `lcm(2, A253159(A001844(n)))` -/
def P17247972786681077178.Spec : Prop :=
  ∀ n, (P17247972786681077178.a n : ℤ) = A253151 (n + 1)

end A253151

/-! ## A253151.P3365099754873217651

`A253159(A001844(n))+A025466(n)`
-/

namespace A253151.P3365099754873217651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253159 (A001844 n).toNat + A025466 n

end

end A253151.P3365099754873217651

namespace A253151

/-- `A253159(A001844(n))+A025466(n)` -/
def P3365099754873217651.Spec : Prop :=
  ∀ n, P3365099754873217651.a n = A253151 (n + 1)

end A253151

/-! ## A253151.P6008615156706502227

`A253159(A001844(n))+A025469(n)`
-/

namespace A253151.P6008615156706502227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253159 (A001844 n).toNat + A025469 n

end

end A253151.P6008615156706502227

namespace A253151

/-- `A253159(A001844(n))+A025469(n)` -/
def P6008615156706502227.Spec : Prop :=
  ∀ n, P6008615156706502227.a n = A253151 (n + 1)

end A253151

/-!
# A253152: Number of (n+1) X (1+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253152, the canonical program `A253152.P3503702863268256052` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253152 has offset 1).

The definition of A253152 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253152.P3503702863268256052

`3*a(n-1)-2*a(n-2)` with `a(0)=16, a(1)=39, a(2)=69, a(3)=109, a(4)=181`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253152

/-- `3*a(n-1)-2*a(n-2)` -/
def P3503702863268256052.Spec : Prop :=
  ∀ n, P3503702863268256052.a n = A253152 (n + 1)

theorem P3503702863268256052.correct : P3503702863268256052.Spec := by
  intro n
  simp only [A253152, Nat.add_sub_cancel]

end A253152

/-! ## A253152.P17092491918974908071

`A253159(∑[n]+1)`
-/

namespace A253152.P17092491918974908071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253159 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253152.P17092491918974908071

namespace A253152

/-- `A253159(∑[n]+1)` -/
def P17092491918974908071.Spec : Prop :=
  ∀ n, P17092491918974908071.a n = A253152 (n + 1)

end A253152

/-! ## A253152.P17775899821059800953

`xor(14, record[xor(14, A253159(n+1))])`
-/

namespace A253152.P17775899821059800953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 14 (A253159 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 14 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A253152.P17775899821059800953

namespace A253152

/-- `xor(14, record[xor(14, A253159(n+1))])` -/
def P17775899821059800953.Spec : Prop :=
  ∀ n, P17775899821059800953.a n = A253152 (n + 1)

end A253152

/-! ## A253152.P17436757144262636481

`record[A253159(A047216(n+1))]`
-/

namespace A253152.P17436757144262636481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253159 (A047216 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253152.P17436757144262636481

namespace A253152

/-- `record[A253159(A047216(n+1))]` -/
def P17436757144262636481.Spec : Prop :=
  ∀ n, P17436757144262636481.a n = A253152 (n + 1)

end A253152

/-! ## A253152.P5402569551618570690

`record[A253159(A246276(n+1))]`
-/

namespace A253152.P5402569551618570690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253159 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253152.P5402569551618570690

namespace A253152

/-- `record[A253159(A246276(n+1))]` -/
def P5402569551618570690.Spec : Prop :=
  ∀ n, P5402569551618570690.a n = A253152 (n + 1)

end A253152

/-! ## A253152.P14699683197409611741

`record[A253159(A254052(n+1))]`
-/

namespace A253152.P14699683197409611741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253159 (A254052 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253152.P14699683197409611741

namespace A253152

/-- `record[A253159(A254052(n+1))]` -/
def P14699683197409611741.Spec : Prop :=
  ∀ n, P14699683197409611741.a n = A253152 (n + 1)

end A253152

/-! ## A253152.P11280739536456495113

`or(char[1], A253159(A000124(n)))`
-/

namespace A253152.P11280739536456495113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A253159 (A000124 n).toNat)

end

end A253152.P11280739536456495113

namespace A253152

/-- `or(char[1], A253159(A000124(n)))` -/
def P11280739536456495113.Spec : Prop :=
  ∀ n, P11280739536456495113.a n = A253152 (n + 1)

end A253152

/-! ## A253152.P9107125131731320931

`record[A253159(A328399(n)+n)]`
-/

namespace A253152.P9107125131731320931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253159 (A328399 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253152.P9107125131731320931

namespace A253152

/-- `record[A253159(A328399(n)+n)]` -/
def P9107125131731320931.Spec : Prop :=
  ∀ n, P9107125131731320931.a n = A253152 (n + 1)

end A253152

/-! ## A253152.P16255392353342531765

`record[A253159(A252752(n+2)-1)]`
-/

namespace A253152.P16255392353342531765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253159 (A252752 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253152.P16255392353342531765

namespace A253152

/-- `record[A253159(A252752(n+2)-1)]` -/
def P16255392353342531765.Spec : Prop :=
  ∀ n, P16255392353342531765.a n = A253152 (n + 1)

end A253152

/-! ## A253152.P11564653967910899324

`record[A253159(A004396(n+1)+n)]`
-/

namespace A253152.P11564653967910899324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253159 (A004396 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253152.P11564653967910899324

namespace A253152

/-- `record[A253159(A004396(n+1)+n)]` -/
def P11564653967910899324.Spec : Prop :=
  ∀ n, P11564653967910899324.a n = A253152 (n + 1)

end A253152

/-!
# A253153: Number of (n+1) X (2+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253153, the canonical program `A253153.P7448481482868147689` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253153 has offset 1).

The definition of A253153 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253153.P7448481482868147689

`3*a(n-1)-2*a(n-2)` with `a(0)=39, a(1)=72, a(2)=88, a(3)=120, a(4)=192`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253153

/-- `3*a(n-1)-2*a(n-2)` -/
def P7448481482868147689.Spec : Prop :=
  ∀ n, P7448481482868147689.a n = A253153 (n + 1)

theorem P7448481482868147689.correct : P7448481482868147689.Spec := by
  intro n
  simp only [A253153, Nat.add_sub_cancel]

end A253153

/-! ## A253153.P15787409536682202203

`A253159(∑[n+1]+2)`
-/

namespace A253153.P15787409536682202203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253159 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253153.P15787409536682202203

namespace A253153

/-- `A253159(∑[n+1]+2)` -/
def P15787409536682202203.Spec : Prop :=
  ∀ n, P15787409536682202203.a n = A253153 (n + 1)

end A253153

/-! ## A253153.P10484777362266586576

`A253159(A000096(n)+3)+char[49]`
-/

namespace A253153.P10484777362266586576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  49

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253159 (A000096 n + 3).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253153.P10484777362266586576

namespace A253153

/-- `A253159(A000096(n)+3)+char[49]` -/
def P10484777362266586576.Spec : Prop :=
  ∀ n, P10484777362266586576.a n = A253153 (n + 1)

end A253153

/-! ## A253153.P927020376048010721

`lcm(A033999(n), A253159(A133263(n+1)))`
-/

namespace A253153.P927020376048010721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A253159 (A133263 (n + 1)).toNat)

end

end A253153.P927020376048010721

namespace A253153

/-- `lcm(A033999(n), A253159(A133263(n+1)))` -/
def P927020376048010721.Spec : Prop :=
  ∀ n, (P927020376048010721.a n : ℤ) = A253153 (n + 1)

end A253153

/-! ## A253153.P11150289357526352385

`A253159(A133263(n+1))%A253155(n+1)`
-/

namespace A253153.P11150289357526352385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253159 (A133263 (n + 1)).toNat) (A253155 (n + 1))

end

end A253153.P11150289357526352385

namespace A253153

/-- `A253159(A133263(n+1))%A253155(n+1)` -/
def P11150289357526352385.Spec : Prop :=
  ∀ n, P11150289357526352385.a n = A253153 (n + 1)

end A253153

/-!
# A253154: Number of (n+1) X (3+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253154, the canonical program `A253154.P12421161502209169653` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253154 has offset 1).

The definition of A253154 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253154.P602390253906289563

`A253155(n+1)+A253430(n+1)-A253431(n+1)`
-/

namespace A253154.P602390253906289563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253155 (n + 1) + (A253430 (n + 1) - A253431 (n + 1))

end

end A253154.P602390253906289563

namespace A253154

/-- `A253155(n+1)+A253430(n+1)-A253431(n+1)` -/
def P602390253906289563.Spec : Prop :=
  ∀ n, P602390253906289563.a n = A253154 (n + 1)

end A253154

/-! ## A253154.P6011625609921609038

`A253157(n+1)+A253430(n+1)-A253433(n+1)`
-/

namespace A253154.P6011625609921609038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253157 (n + 1) + (A253430 (n + 1) - A253433 (n + 1))

end

end A253154.P6011625609921609038

namespace A253154

/-- `A253157(n+1)+A253430(n+1)-A253433(n+1)` -/
def P6011625609921609038.Spec : Prop :=
  ∀ n, P6011625609921609038.a n = A253154 (n + 1)

end A253154

/-! ## A253154.P12461628994418536367

`A253158(n+1)+A253430(n+1)-A253434(n+1)`
-/

namespace A253154.P12461628994418536367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253158 (n + 1) + (A253430 (n + 1) - A253434 (n + 1))

end

end A253154.P12461628994418536367

namespace A253154

/-- `A253158(n+1)+A253430(n+1)-A253434(n+1)` -/
def P12461628994418536367.Spec : Prop :=
  ∀ n, P12461628994418536367.a n = A253154 (n + 1)

end A253154

/-! ## A253154.P6066885071498761635

`A253430(n+1)+A253155(n+1)+root(6, 1/3)-A253433(n+1)`
-/

namespace A253154.P6066885071498761635
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253430 (n + 1) : ℝ) + ((A253155 (n + 1) : ℝ) + (6 : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ)) - (A253433 (n + 1) : ℝ))

end

end A253154.P6066885071498761635

namespace A253154

/-- `A253430(n+1)+A253155(n+1)+root(6, 1/3)-A253433(n+1)` -/
def P6066885071498761635.Spec : Prop :=
  ∀ n, P6066885071498761635.a n = (A253154 (n + 1) : ℝ)

end A253154

/-! ## A253154.P12421161502209169653

`3*a(n-1)-2*a(n-2)` with `a(0)=69, a(1)=88, a(2)=94, a(3)=129, a(4)=201`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253154

/-- `3*a(n-1)-2*a(n-2)` -/
def P12421161502209169653.Spec : Prop :=
  ∀ n, P12421161502209169653.a n = A253154 (n + 1)

theorem P12421161502209169653.correct : P12421161502209169653.Spec := by
  intro n
  simp only [A253154, Nat.add_sub_cancel]

end A253154

/-!
# A253155: Number of (n+1) X (4+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253155, the canonical program `A253155.P408897868571646331` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253155 has offset 1).

The definition of A253155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 329 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253155.P8610503856564539399

`A253156(n+1)-72`
-/

namespace A253155.P8610503856564539399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253156 (n + 1) - 72

end

end A253155.P8610503856564539399

namespace A253155

/-- `A253156(n+1)-72` -/
def P8610503856564539399.Spec : Prop :=
  ∀ n, P8610503856564539399.a n = A253155 (n + 1)

theorem P8610503856564539399.correct : P8610503856564539399.Spec := by
  intro n
  simp only [A253155, Nat.add_sub_cancel, A253155.P8610503856564539399.a, A253155.P408897868571646331.a, A253156, A253156.P13647116672860416168.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A253155

/-! ## A253155.P4011604089567972683

`A253157(n+1)-A124512(A004139(n+1))-72`
-/

namespace A253155.P4011604089567972683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253157 (n + 1) - A124512 (A004139 (n + 1)).toNat - 72

end

end A253155.P4011604089567972683

namespace A253155

/-- `A253157(n+1)-A124512(A004139(n+1))-72` -/
def P4011604089567972683.Spec : Prop :=
  ∀ n, P4011604089567972683.a n = A253155 (n + 1)

theorem P4011604089567972683.correct : P4011604089567972683.Spec := by
  intro n
  simp only [A253155, Nat.add_sub_cancel, A253155.P4011604089567972683.a, A253155.P408897868571646331.a, A004139, A004139.P7741252772910998599.f1, A004139.P7741252772910998599.a, A124512, A124512.P16182913871716679802.a, A253157, A253157.P13407665018278730026.a, A124508, A124508.P2921836237820937167.a, A253156, A253156.P13647116672860416168.a, A061142, A061142.P8765440716561686614.a, A074816, A074816.P6381608744235882068.a, A000079, A000079.P10855139691139572931.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253155

/-! ## A253155.P2327529792405067826

`A253158(n+1)+A253431(n+1)-A253434(n+1)`
-/

namespace A253155.P2327529792405067826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253158 (n + 1) + (A253431 (n + 1) - A253434 (n + 1))

end

end A253155.P2327529792405067826

namespace A253155

/-- `A253158(n+1)+A253431(n+1)-A253434(n+1)` -/
def P2327529792405067826.Spec : Prop :=
  ∀ n, P2327529792405067826.a n = A253155 (n + 1)

end A253155

/-! ## A253155.P4199842277989961183

`A253157(n+1)+A253438(n+1)-A253440(n+1)`
-/

namespace A253155.P4199842277989961183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253157 (n + 1) + (A253438 (n + 1) - A253440 (n + 1))

end

end A253155.P4199842277989961183

namespace A253155

/-- `A253157(n+1)+A253438(n+1)-A253440(n+1)` -/
def P4199842277989961183.Spec : Prop :=
  ∀ n, P4199842277989961183.a n = A253155 (n + 1)

theorem P4199842277989961183.correct : P4199842277989961183.Spec := by
  intro n
  simp only [A253155, Nat.add_sub_cancel, A253155.P4199842277989961183.a, A253155.P408897868571646331.a, A253157, A253157.P13407665018278730026.a, A253438, A253438.P14887730657470701227.a, A253440, A253440.P4273520143167882441.a, A004139, A004139.P7741252772910998599.f1, A004139.P7741252772910998599.a, A124512, A124512.P16182913871716679802.a, A253156, A253156.P13647116672860416168.a, A124508, A124508.P2921836237820937167.a, A061142, A061142.P8765440716561686614.a, A074816, A074816.P6381608744235882068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253155

/-! ## A253155.P2419746559483673483

`A253158(n+1)+A253438(n+1)-A253441(n+1)`
-/

namespace A253155.P2419746559483673483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253158 (n + 1) + (A253438 (n + 1) - A253441 (n + 1))

end

end A253155.P2419746559483673483

namespace A253155

/-- `A253158(n+1)+A253438(n+1)-A253441(n+1)` -/
def P2419746559483673483.Spec : Prop :=
  ∀ n, P2419746559483673483.a n = A253155 (n + 1)

theorem P2419746559483673483.correct : P2419746559483673483.Spec := by
  intro n
  simp only [A253155, Nat.add_sub_cancel, A253155.P2419746559483673483.a, A253155.P408897868571646331.a, A253158, A253158.P13523813419419974154.a, A253438, A253438.P14887730657470701227.a, A253441, A253441.P13652333514978894263.a, A004139, A004139.P7741252772910998599.f1, A004139.P7741252772910998599.a, A124512, A124512.P16182913871716679802.a, A253157, A253157.P13407665018278730026.a, A253440, A253440.P4273520143167882441.a, A124508, A124508.P2921836237820937167.a, A253156, A253156.P13647116672860416168.a, A061142, A061142.P8765440716561686614.a, A074816, A074816.P6381608744235882068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253155

/-! ## A253155.P408897868571646331

`3*a(n-1)-2*a(n-2)` with `a(0)=109, a(1)=120, a(2)=129, a(3)=164, a(4)=236`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253155

/-- `3*a(n-1)-2*a(n-2)` -/
def P408897868571646331.Spec : Prop :=
  ∀ n, P408897868571646331.a n = A253155 (n + 1)

theorem P408897868571646331.correct : P408897868571646331.Spec := by
  intro n
  simp only [A253155, Nat.add_sub_cancel]

end A253155

/-! ## A253155.P14384387419465037787

`A253157(n+1)-A124512(A215103(n+1))-72`
-/

namespace A253155.P14384387419465037787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253157 (n + 1) - A124512 (A215103 (n + 1)).toNat - 72

end

end A253155.P14384387419465037787

namespace A253155

/-- `A253157(n+1)-A124512(A215103(n+1))-72` -/
def P14384387419465037787.Spec : Prop :=
  ∀ n, P14384387419465037787.a n = A253155 (n + 1)

end A253155

/-!
# A253156: Number of (n+1) X (5+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253156, the canonical program `A253156.P13647116672860416168` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253156 has offset 1).

The definition of A253156 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253156.P13647116672860416168

`A253155(n+1)+72`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A253156

/-- `A253155(n+1)+72` -/
def P13647116672860416168.Spec : Prop :=
  ∀ n, P13647116672860416168.a n = A253156 (n + 1)

theorem P13647116672860416168.correct : P13647116672860416168.Spec := by
  intro n
  simp only [A253156, Nat.add_sub_cancel]

end A253156

/-! ## A253156.P17382093450235355874

`A253157(n+1)-A124512(A328579(n))`
-/

namespace A253156.P17382093450235355874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253157 (n + 1) - A124512 (A328579 n).toNat

end

end A253156.P17382093450235355874

namespace A253156

/-- `A253157(n+1)-A124512(A328579(n))` -/
def P17382093450235355874.Spec : Prop :=
  ∀ n, P17382093450235355874.a n = A253156 (n + 1)

end A253156

/-! ## A253156.P17032555658207914940

`A253157(n+1)-A124512(A004139(n+1))`
-/

namespace A253156.P17032555658207914940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253157 (n + 1) - A124512 (A004139 (n + 1)).toNat

end

end A253156.P17032555658207914940

namespace A253156

/-- `A253157(n+1)-A124512(A004139(n+1))` -/
def P17032555658207914940.Spec : Prop :=
  ∀ n, P17032555658207914940.a n = A253156 (n + 1)

theorem P17032555658207914940.correct : P17032555658207914940.Spec := by
  intro n
  simp only [A253156, Nat.add_sub_cancel, A253156.P17032555658207914940.a, A253156.P13647116672860416168.a, A004139, A004139.P7741252772910998599.f1, A004139.P7741252772910998599.a, A124512, A124512.P16182913871716679802.a, A253155, A253155.P408897868571646331.a, A253157, A253157.P13407665018278730026.a, A124508, A124508.P2921836237820937167.a, A061142, A061142.P8765440716561686614.a, A074816, A074816.P6381608744235882068.a, A000079, A000079.P10855139691139572931.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253156

/-! ## A253156.P6489047494070003742

`A253158(n+1)+A253432(n+1)-A253434(n+1)`
-/

namespace A253156.P6489047494070003742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253158 (n + 1) + (A253432 (n + 1) - A253434 (n + 1))

end

end A253156.P6489047494070003742

namespace A253156

/-- `A253158(n+1)+A253432(n+1)-A253434(n+1)` -/
def P6489047494070003742.Spec : Prop :=
  ∀ n, P6489047494070003742.a n = A253156 (n + 1)

end A253156

/-! ## A253156.P3212861859962457885

`A253158(n+1)+A253439(n+1)-A253441(n+1)`
-/

namespace A253156.P3212861859962457885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253158 (n + 1) + (A253439 (n + 1) - A253441 (n + 1))

end

end A253156.P3212861859962457885

namespace A253156

/-- `A253158(n+1)+A253439(n+1)-A253441(n+1)` -/
def P3212861859962457885.Spec : Prop :=
  ∀ n, P3212861859962457885.a n = A253156 (n + 1)

theorem P3212861859962457885.correct : P3212861859962457885.Spec := by
  intro n
  simp only [A253156, Nat.add_sub_cancel, A253156.P3212861859962457885.a, A253156.P13647116672860416168.a, A253155, A253155.P408897868571646331.a, A253158, A253158.P13523813419419974154.a, A253439, A253439.P15114041342093129535.a, A253441, A253441.P13652333514978894263.a, A004139, A004139.P7741252772910998599.f1, A004139.P7741252772910998599.a, A124512, A124512.P16182913871716679802.a, A253157, A253157.P13407665018278730026.a, A253438, A253438.P14887730657470701227.a, A253440, A253440.P4273520143167882441.a, A124508, A124508.P2921836237820937167.a, A061142, A061142.P8765440716561686614.a, A074816, A074816.P6381608744235882068.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253156

/-! ## A253156.P1888647261530920752

`3*a(n-1)-2*a(n-2)` with `a(0)=181, a(1)=192, a(2)=201, a(3)=236, a(4)=308`
-/

namespace A253156.P1888647261530920752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [181, 192, 201, 236, 308] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A253156.P1888647261530920752

namespace A253156

/-- `3*a(n-1)-2*a(n-2)` -/
def P1888647261530920752.Spec : Prop :=
  ∀ n, P1888647261530920752.a n = A253156 (n + 1)

end A253156

/-! ## A253156.P15194054338884681201

`A253157(n+1)-A124512(A215103(n+1))`
-/

namespace A253156.P15194054338884681201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253157 (n + 1) - A124512 (A215103 (n + 1)).toNat

end

end A253156.P15194054338884681201

namespace A253156

/-- `A253157(n+1)-A124512(A215103(n+1))` -/
def P15194054338884681201.Spec : Prop :=
  ∀ n, P15194054338884681201.a n = A253156 (n + 1)

end A253156

/-! ## A253156.P10040310382607998097

`A253157(n+1)-A124512(A019546(n+1))`
-/

namespace A253156.P10040310382607998097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253157 (n + 1) - A124512 (A019546 (n + 1)).toNat

end

end A253156.P10040310382607998097

namespace A253156

/-- `A253157(n+1)-A124512(A019546(n+1))` -/
def P10040310382607998097.Spec : Prop :=
  ∀ n, P10040310382607998097.a n = A253156 (n + 1)

end A253156

/-!
# A253157: Number of (n+1) X (6+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253157, the canonical program `A253157.P13407665018278730026` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253157 has offset 1).

The definition of A253157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253157.P10483882070275036432

`A253155(n+1)+root(6, 1/3)`
-/

namespace A253157.P10483882070275036432
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253155 (n + 1) : ℝ) + (6 : ℝ) ^ (1 / ((1 : ℚ) / 3 : ℝ))

end

end A253157.P10483882070275036432

namespace A253157

/-- `A253155(n+1)+root(6, 1/3)` -/
def P10483882070275036432.Spec : Prop :=
  ∀ n, P10483882070275036432.a n = (A253157 (n + 1) : ℝ)

end A253157

/-! ## A253157.P1049261303510687855

`A253158(n+1)-A124512(A328579(n)²)`
-/

namespace A253157.P1049261303510687855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253158 (n + 1) - A124512 (A328579 n ^ 2).toNat

end

end A253157.P1049261303510687855

namespace A253157

/-- `A253158(n+1)-A124512(A328579(n)²)` -/
def P1049261303510687855.Spec : Prop :=
  ∀ n, P1049261303510687855.a n = A253157 (n + 1)

end A253157

/-! ## A253157.P13407665018278730026

`A253156(n+1)+A124512(A004139(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A253157

/-- `A253156(n+1)+A124512(A004139(n+1))` -/
def P13407665018278730026.Spec : Prop :=
  ∀ n, P13407665018278730026.a n = A253157 (n + 1)

theorem P13407665018278730026.correct : P13407665018278730026.Spec := by
  intro n
  simp only [A253157, Nat.add_sub_cancel]

end A253157

/-! ## A253157.P1952087412415013562

`A253158(n+1)+A253433(n+1)-A253434(n+1)`
-/

namespace A253157.P1952087412415013562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253158 (n + 1) + (A253433 (n + 1) - A253434 (n + 1))

end

end A253157.P1952087412415013562

namespace A253157

/-- `A253158(n+1)+A253433(n+1)-A253434(n+1)` -/
def P1952087412415013562.Spec : Prop :=
  ∀ n, P1952087412415013562.a n = A253157 (n + 1)

end A253157

/-! ## A253157.P1381346206764136444

`A253433(n+1)+A253155(n+1)-A253431(n+1)`
-/

namespace A253157.P1381346206764136444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253433 (n + 1) + (A253155 (n + 1) - A253431 (n + 1))

end

end A253157.P1381346206764136444

namespace A253157

/-- `A253433(n+1)+A253155(n+1)-A253431(n+1)` -/
def P1381346206764136444.Spec : Prop :=
  ∀ n, P1381346206764136444.a n = A253157 (n + 1)

end A253157

/-! ## A253157.P3634478745642818021

`A253440(n+1)+A253155(n+1)-A253438(n+1)`
-/

namespace A253157.P3634478745642818021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253440 (n + 1) + (A253155 (n + 1) - A253438 (n + 1))

end

end A253157.P3634478745642818021

namespace A253157

/-- `A253440(n+1)+A253155(n+1)-A253438(n+1)` -/
def P3634478745642818021.Spec : Prop :=
  ∀ n, P3634478745642818021.a n = A253157 (n + 1)

theorem P3634478745642818021.correct : P3634478745642818021.Spec := by
  intro n
  simp only [A253157, Nat.add_sub_cancel, A253157.P3634478745642818021.a, A253157.P13407665018278730026.a, A004139, A004139.P7741252772910998599.f1, A004139.P7741252772910998599.a, A124512, A124512.P16182913871716679802.a, A253155, A253155.P408897868571646331.a, A253156, A253156.P13647116672860416168.a, A253438, A253438.P14887730657470701227.a, A253440, A253440.P4273520143167882441.a, A124508, A124508.P2921836237820937167.a, A061142, A061142.P8765440716561686614.a, A074816, A074816.P6381608744235882068.a, A000079, A000079.P10855139691139572931.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253157

/-! ## A253157.P8403414641494865268

`3*a(n-1)-2*a(n-2)` with `a(0)=325, a(1)=336, a(2)=345, a(3)=380, a(4)=452`
-/

namespace A253157.P8403414641494865268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [325, 336, 345, 380, 452] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A253157.P8403414641494865268

namespace A253157

/-- `3*a(n-1)-2*a(n-2)` -/
def P8403414641494865268.Spec : Prop :=
  ∀ n, P8403414641494865268.a n = A253157 (n + 1)

end A253157

/-! ## A253157.P954755674539880210

`A253156(n+1)+A124512(A215103(n+1))`
-/

namespace A253157.P954755674539880210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253156 (n + 1) + A124512 (A215103 (n + 1)).toNat

end

end A253157.P954755674539880210

namespace A253157

/-- `A253156(n+1)+A124512(A215103(n+1))` -/
def P954755674539880210.Spec : Prop :=
  ∀ n, P954755674539880210.a n = A253157 (n + 1)

end A253157

/-! ## A253157.P3876894656195812525

`A253156(n+1)+A124512(A019546(n+1))`
-/

namespace A253157.P3876894656195812525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253156 (n + 1) + A124512 (A019546 (n + 1)).toNat

end

end A253157.P3876894656195812525

namespace A253157

/-- `A253156(n+1)+A124512(A019546(n+1))` -/
def P3876894656195812525.Spec : Prop :=
  ∀ n, P3876894656195812525.a n = A253157 (n + 1)

end A253157

/-!
# A253158: Number of (n+1) X (7+1) 0..1 arrays with every 2 X 2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253158, the canonical program `A253158.P13523813419419974154` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253158 has offset 1).

The definition of A253158 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253158.P8610665457354693594

`A253157(n+1)+A124512(A328579(n)²)`
-/

namespace A253158.P8610665457354693594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253157 (n + 1) + A124512 (A328579 n ^ 2).toNat

end

end A253158.P8610665457354693594

namespace A253158

/-- `A253157(n+1)+A124512(A328579(n)²)` -/
def P8610665457354693594.Spec : Prop :=
  ∀ n, P8610665457354693594.a n = A253158 (n + 1)

end A253158

/-! ## A253158.P13523813419419974154

`A253157(n+1)+2*A124512(A004139(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A253158

/-- `A253157(n+1)+2*A124512(A004139(n+1))` -/
def P13523813419419974154.Spec : Prop :=
  ∀ n, P13523813419419974154.a n = A253158 (n + 1)

theorem P13523813419419974154.correct : P13523813419419974154.Spec := by
  intro n
  simp only [A253158, Nat.add_sub_cancel]

end A253158

/-! ## A253158.P9946056727828449118

`A253155(n+1)+A161005(A007318(C(2, n+2)))`
-/

namespace A253158.P9946056727828449118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253155 (n + 1) + A161005 (A007318 (Nat.choose 2 (n + 2))).toNat

end

end A253158.P9946056727828449118

namespace A253158

/-- `A253155(n+1)+A161005(A007318(C(2, n+2)))` -/
def P9946056727828449118.Spec : Prop :=
  ∀ n, P9946056727828449118.a n = A253158 (n + 1)

end A253158

/-! ## A253158.P4039426259827524824

`A253154(n+1)+A253434(n+1)-A253430(n+1)`
-/

namespace A253158.P4039426259827524824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253154 (n + 1) + (A253434 (n + 1) - A253430 (n + 1))

end

end A253158.P4039426259827524824

namespace A253158

/-- `A253154(n+1)+A253434(n+1)-A253430(n+1)` -/
def P4039426259827524824.Spec : Prop :=
  ∀ n, P4039426259827524824.a n = A253158 (n + 1)

end A253158

/-! ## A253158.P9966878923393872832

`A253155(n+1)+A253434(n+1)-A253431(n+1)`
-/

namespace A253158.P9966878923393872832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253155 (n + 1) + (A253434 (n + 1) - A253431 (n + 1))

end

end A253158.P9966878923393872832

namespace A253158

/-- `A253155(n+1)+A253434(n+1)-A253431(n+1)` -/
def P9966878923393872832.Spec : Prop :=
  ∀ n, P9966878923393872832.a n = A253158 (n + 1)

end A253158

/-! ## A253158.P12316321586608872432

`A253156(n+1)+A253434(n+1)-A253432(n+1)`
-/

namespace A253158.P12316321586608872432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253156 (n + 1) + (A253434 (n + 1) - A253432 (n + 1))

end

end A253158.P12316321586608872432

namespace A253158

/-- `A253156(n+1)+A253434(n+1)-A253432(n+1)` -/
def P12316321586608872432.Spec : Prop :=
  ∀ n, P12316321586608872432.a n = A253158 (n + 1)

end A253158

/-! ## A253158.P17161621735505565297

`A253157(n+1)+A253434(n+1)-A253433(n+1)`
-/

namespace A253158.P17161621735505565297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253157 (n + 1) + (A253434 (n + 1) - A253433 (n + 1))

end

end A253158.P17161621735505565297

namespace A253158

/-- `A253157(n+1)+A253434(n+1)-A253433(n+1)` -/
def P17161621735505565297.Spec : Prop :=
  ∀ n, P17161621735505565297.a n = A253158 (n + 1)

end A253158

/-! ## A253158.P17257362872382506043

`A253155(n+1)+A253441(n+1)-A253438(n+1)`
-/

namespace A253158.P17257362872382506043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253155 (n + 1) + (A253441 (n + 1) - A253438 (n + 1))

end

end A253158.P17257362872382506043

namespace A253158

/-- `A253155(n+1)+A253441(n+1)-A253438(n+1)` -/
def P17257362872382506043.Spec : Prop :=
  ∀ n, P17257362872382506043.a n = A253158 (n + 1)

theorem P17257362872382506043.correct : P17257362872382506043.Spec := by
  intro n
  simp only [A253158, Nat.add_sub_cancel, A253158.P17257362872382506043.a, A253158.P13523813419419974154.a, A004139, A004139.P7741252772910998599.f1, A004139.P7741252772910998599.a, A124512, A124512.P16182913871716679802.a, A253155, A253155.P408897868571646331.a, A253157, A253157.P13407665018278730026.a, A253438, A253438.P14887730657470701227.a, A253441, A253441.P13652333514978894263.a, A124508, A124508.P2921836237820937167.a, A253156, A253156.P13647116672860416168.a, A253440, A253440.P4273520143167882441.a, A061142, A061142.P8765440716561686614.a, A074816, A074816.P6381608744235882068.a, A000079, A000079.P10855139691139572931.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253158

/-! ## A253158.P10778619447944102883

`A253156(n+1)+A253441(n+1)-A253439(n+1)`
-/

namespace A253158.P10778619447944102883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253156 (n + 1) + (A253441 (n + 1) - A253439 (n + 1))

end

end A253158.P10778619447944102883

namespace A253158

/-- `A253156(n+1)+A253441(n+1)-A253439(n+1)` -/
def P10778619447944102883.Spec : Prop :=
  ∀ n, P10778619447944102883.a n = A253158 (n + 1)

theorem P10778619447944102883.correct : P10778619447944102883.Spec := by
  intro n
  simp only [A253158, Nat.add_sub_cancel, A253158.P10778619447944102883.a, A253158.P13523813419419974154.a, A004139, A004139.P7741252772910998599.f1, A004139.P7741252772910998599.a, A124512, A124512.P16182913871716679802.a, A253156, A253156.P13647116672860416168.a, A253157, A253157.P13407665018278730026.a, A253439, A253439.P15114041342093129535.a, A253441, A253441.P13652333514978894263.a, A124508, A124508.P2921836237820937167.a, A253155, A253155.P408897868571646331.a, A253438, A253438.P14887730657470701227.a, A253440, A253440.P4273520143167882441.a, A061142, A061142.P8765440716561686614.a, A074816, A074816.P6381608744235882068.a, A000079, A000079.P10855139691139572931.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253158

/-! ## A253158.P9763864266098063446

`A253155(n+1)+A253441(n+1)-(A253439(n+1)-72)`
-/

namespace A253158.P9763864266098063446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253155 (n + 1) + (A253441 (n + 1) - (A253439 (n + 1) - 72))

end

end A253158.P9763864266098063446

namespace A253158

/-- `A253155(n+1)+A253441(n+1)-(A253439(n+1)-72)` -/
def P9763864266098063446.Spec : Prop :=
  ∀ n, P9763864266098063446.a n = A253158 (n + 1)

theorem P9763864266098063446.correct : P9763864266098063446.Spec := by
  intro n
  simp only [A253158, Nat.add_sub_cancel, A253158.P9763864266098063446.a, A253158.P13523813419419974154.a, A004139, A004139.P7741252772910998599.f1, A004139.P7741252772910998599.a, A124512, A124512.P16182913871716679802.a, A253155, A253155.P408897868571646331.a, A253157, A253157.P13407665018278730026.a, A253439, A253439.P15114041342093129535.a, A253441, A253441.P13652333514978894263.a, A124508, A124508.P2921836237820937167.a, A253156, A253156.P13647116672860416168.a, A253438, A253438.P14887730657470701227.a, A253440, A253440.P4273520143167882441.a, A061142, A061142.P8765440716561686614.a, A074816, A074816.P6381608744235882068.a, A000079, A000079.P10855139691139572931.a, A001221, A001221.P10258181745752134128.a, A001222, A001222.P11318177267732088261.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A253158

/-! ## A253158.P16980627012491953668

`3*a(n-1)-2*a(n-2)` with `a(0)=613, a(1)=624, a(2)=633, a(3)=668, a(4)=740`
-/

namespace A253158.P16980627012491953668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [613, 624, 633, 668, 740] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2)

end

end A253158.P16980627012491953668

namespace A253158

/-- `3*a(n-1)-2*a(n-2)` -/
def P16980627012491953668.Spec : Prop :=
  ∀ n, P16980627012491953668.a n = A253158 (n + 1)

end A253158

/-! ## A253158.P15822295390147772674

`A253157(n+1)+2*A124512(A215103(n+1))`
-/

namespace A253158.P15822295390147772674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253157 (n + 1) + 2 * A124512 (A215103 (n + 1)).toNat

end

end A253158.P15822295390147772674

namespace A253158

/-- `A253157(n+1)+2*A124512(A215103(n+1))` -/
def P15822295390147772674.Spec : Prop :=
  ∀ n, P15822295390147772674.a n = A253158 (n + 1)

end A253158

/-!
# A253159: T(n,k)=Number of (n+1)X(k+1) 0..1 arrays with every 2X2 subblock diagonal minus antidiagonal sum nondecreasing horizontally and vertically.

The programs for A253159, there is no canonical definition to state claims against.
-/

/-! ## A253159.P8992028579958910724

`A258239(A166979(n+1))+A253435(n+1)`
-/

namespace A253159.P8992028579958910724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258239 (A166979 (n + 1)).toNat + A253435 (n + 1)

end

end A253159.P8992028579958910724

/-! ## A253159.P16724229054773101678

`A326731(A061030(n+3))+A253435(n+1)`
-/

namespace A253159.P16724229054773101678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326731 (A061030 (n + 3)).toNat + A253435 (n + 1)

end

end A253159.P16724229054773101678

/-!
# A253160: Number of (n+1) X (2+1) 0..2 arrays with every 2 X 2 subblock sum differing from its neighbors horizontally, vertically and nw-se diagonally.

The programs for A253160, there is no canonical definition to state claims against.
-/

/-! ## A253160.P706288024934284382

`A253164(∑[n+1]+2)`
-/

namespace A253160.P706288024934284382
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253164 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A253160.P706288024934284382

/-! ## A253160.P18313845780337753230

`record[A253164(n+3)/A159764(n)]`
-/

namespace A253160.P18313845780337753230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253164 (n + 3) : ℚ) / (A159764 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253160.P18313845780337753230

/-! ## A253160.P12176346695920991554

`record[A253164(n+3)/A211790(n+1)]`
-/

namespace A253160.P12176346695920991554
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253164 (n + 3) : ℚ) / (A211790 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253160.P12176346695920991554

/-! ## A253160.P15948601401742421952

`record[root(A253164(n+2), A208337(n+1))]`
-/

namespace A253160.P15948601401742421952
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A253164 (n + 2) : ℝ) ^ (1 / (A208337 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253160.P15948601401742421952

/-! ## A253160.P7701902587725245897

`record[A253164(abs(A201163(n)))]`
-/

namespace A253160.P7701902587725245897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253164 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253160.P7701902587725245897

/-!
# A253161: Number of (n+1)X(3+1) 0..2 arrays with every 2X2 subblock sum differing from its neighbors horizontally, vertically and nw-se diagonally.

The programs for A253161, there is no canonical definition to state claims against.
-/

/-! ## A253161.P18446339866949975748

`A253164(∑[n+2]+4)`
-/

namespace A253161.P18446339866949975748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253164 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A253161.P18446339866949975748

/-! ## A253161.P11244116717489165156

`lcm(2, A253164(A167614(n+1)))`
-/

namespace A253161.P11244116717489165156
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A253164 (A167614 (n + 1)).toNat)

end

end A253161.P11244116717489165156

/-! ## A253161.P1540048681572188138

`A253164(A167614(n+1))+A046785(n)`
-/

namespace A253161.P1540048681572188138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253164 (A167614 (n + 1)).toNat + A046785 n

end

end A253161.P1540048681572188138

/-! ## A253161.P5014302103034290269

`A253164(A167614(n+1))+A054899(n)`
-/

namespace A253161.P5014302103034290269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253164 (A167614 (n + 1)).toNat + A054899 n

end

end A253161.P5014302103034290269

/-! ## A253161.P5123259014460568136

`A253164(A167614(n+1))+A061649(n)`
-/

namespace A253161.P5123259014460568136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253164 (A167614 (n + 1)).toNat + A061649 n

end

end A253161.P5123259014460568136

/-!
# A253162: Number of (n+1)X(4+1) 0..2 arrays with every 2X2 subblock sum differing from its neighbors horizontally, vertically and nw-se diagonally.

The programs for A253162, there is no canonical definition to state claims against.
-/

/-! ## A253162.P12024460576836997577

`A253164(A374004(n+1))`
-/

namespace A253162.P12024460576836997577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253164 (A374004 (n + 1)).toNat

end

end A253162.P12024460576836997577

/-! ## A253162.P473708479705138427

`A253164(A141214(n)+7)`
-/

namespace A253162.P473708479705138427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253164 (A141214 n + 7).toNat

end

end A253162.P473708479705138427

/-! ## A253162.P11542806285328838194

`A253164(A052905(n)+9)`
-/

namespace A253162.P11542806285328838194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253164 (A052905 n + 9).toNat

end

end A253162.P11542806285328838194

/-! ## A253162.P3474212543490246372

`A253164(A055999(n)+10)`
-/

namespace A253162.P3474212543490246372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253164 (A055999 n + 10).toNat

end

end A253162.P3474212543490246372

/-!
# A253163: Number of (n+1)X(5+1) 0..2 arrays with every 2X2 subblock sum differing from its neighbors horizontally, vertically and nw-se diagonally.

The programs for A253163, there is no canonical definition to state claims against.
-/

/-! ## A253163.P5327471130724856242

`A253164(A374005(n+1))`
-/

namespace A253163.P5327471130724856242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253164 (A374005 (n + 1)).toNat

end

end A253163.P5327471130724856242

/-! ## A253163.P1752019607179712669

`A253164(A167499(n+3))`
-/

namespace A253163.P1752019607179712669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253164 (A167499 (n + 3)).toNat

end

end A253163.P1752019607179712669

/-! ## A253163.P11314234780279783680

`A253164(A155212(n)+13)`
-/

namespace A253163.P11314234780279783680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253164 (A155212 n + 13).toNat

end

end A253163.P11314234780279783680

/-!
# A253165: a(n) = (-1)^n*2^(6*n+3)*(zeta(-2*n-1,1/2) - zeta(-2*n-1,1)), where zeta(a,z) is the generalized Riemann zeta function.

The programs for A253165, there is no canonical definition to state claims against.
-/

/-! ## A253165.P4976257627241492490

`A000825(2*n+1)`
-/

namespace A253165.P4976257627241492490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000825 (2 * n + 1)

end

end A253165.P4976257627241492490

/-! ## A253165.P510544888575400711

`A000828(2*n+1)`
-/

namespace A253165.P510544888575400711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000828 (2 * n + 1)

end

end A253165.P510544888575400711

/-! ## A253165.P11223584458795684514

`A012393(n+1)/2`
-/

namespace A253165.P11223584458795684514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A012393 (n + 1) : ℚ) / 2

end

end A253165.P11223584458795684514

/-! ## A253165.P2811894786886285208

`A000831(2*n+1)/2`
-/

namespace A253165.P2811894786886285208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000831 (2 * n + 1) : ℚ) / 2

end

end A253165.P2811894786886285208

/-! ## A253165.P9942712599162376304

`A394320(∑[n+3])`
-/

namespace A253165.P9942712599162376304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394320 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253165.P9942712599162376304

/-!
# A253169: Smallest m such that A256188(m) = n.

The programs for A253169, the canonical program `A253169.P3897809180562102722` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253169 has offset 1).

The definition of A253169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 152 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A253169.P3897809180562102722

`A063656(∑[n]*A010054(n+1)+n+1)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A253169

/-- `A063656(∑[n]*A010054(n+1)+n+1)` -/
def P3897809180562102722.Spec : Prop :=
  ∀ n, P3897809180562102722.a n = A253169 (n + 1)

theorem P3897809180562102722.correct : P3897809180562102722.Spec := by
  intro n
  simp only [A253169, Nat.add_sub_cancel]

end A253169

/-!
# A253170: Row sums of table A333867.

The programs for A253170, there is no canonical definition to state claims against.
-/

/-! ## A253170.P4421429749665768006

`A030719(n-1)+a(n-1)` with `a(0)=1, a(1)=1`
-/

namespace A253170.P4421429749665768006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A030719 (n - 1) + a (n - 1)

end

end A253170.P4421429749665768006

/-! ## A253170.P3916632980159750379

`A320837(A147071(n+1))+floor((n/2)²)`
-/

namespace A253170.P3916632980159750379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320837 (A147071 (n + 1)).toNat + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A253170.P3916632980159750379

/-! ## A253170.P5829863306365975517

`A089197(lt[(n-1)^((1-(-1)^n)/2), A374516(3*(n+1))])`
-/

namespace A253170.P5829863306365975517
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℝ) ^ ((1 - (-1) ^ n : ℚ) / 2 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374516 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089197 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n)

end

end A253170.P5829863306365975517

/-! ## A253170.P6225496160203741656

`A235145(A086737(n))+A008667(2*n)`
-/

namespace A253170.P6225496160203741656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235145 (A086737 n).toNat + A008667 (2 * n)

end

end A253170.P6225496160203741656

/-! ## A253170.P6136690668368628736

`∑[A244160(A104872(n))]`
-/

namespace A253170.P6136690668368628736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244160 (A104872 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253170.P6136690668368628736

/-!
# A253171: a(n) = number of permutations of (1,2,...,n) producible by an ordered triple of distinct transpositions.

The programs for A253171, the canonical program `A253171.P17827014749648879420` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253171 has offset 3).

The definition of A253171 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253171.P17827014749648879420

`(n+3)*((n+3)^5-7*(n+3)^4+17*(n+3)^3-17*(n+3)²+30*(n+3)-24)/48`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253171

/-- `(n+3)*((n+3)^5-7*(n+3)^4+17*(n+3)^3-17*(n+3)²+30*(n+3)-24)/48` -/
def P17827014749648879420.Spec : Prop :=
  ∀ n, P17827014749648879420.a n = (A253171 (n + 3) : ℚ)

end A253171

/-! ## A253171.P9073508070959696243

`A000217(n+2)*A145126(n)`
-/

namespace A253171.P9073508070959696243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 2) * A145126 n

end

end A253171.P9073508070959696243

namespace A253171

/-- `A000217(n+2)*A145126(n)` -/
def P9073508070959696243.Spec : Prop :=
  ∀ n, P9073508070959696243.a n = A253171 (n + 3)

end A253171

/-!
# A253172: Numbers n = p * q, where n, p, and q together contain all 10 digits at least once.

The programs for A253172, there is no canonical definition to state claims against.
-/

/-! ## A253172.P4979333781078524001

`A195814(n+1)-A341882(A195556(n+1))`
-/

namespace A253172.P4979333781078524001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195814 (n + 1) - A341882 ((A195556 (n + 1)).toNat + 64)

end

end A253172.P4979333781078524001

/-!
# A253174: For a permutation of the positive integers B={b(k)}, denote L_B(n) = Sum_{k=1..n} lambda(b(k)), where lambda(n) is Liouville's function (A008836). In this sequence, a(n) = L_B(n) in case B = A098550.

The programs for A253174, there is no canonical definition to state claims against.
-/

/-! ## A253174.P2047585947214610936

`∑[(-1)^A251140(n+1)]`
-/

namespace A253174.P2047585947214610936
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A251140 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253174.P2047585947214610936

/-! ## A253174.P4268412451057438879

`∑[A008836(A098550(n+1))]`
-/

namespace A253174.P4268412451057438879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008836 (A098550 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253174.P4268412451057438879

/-! ## A253174.P15106004363663832916

`∑[A008683(A251045(n+1))]`
-/

namespace A253174.P15106004363663832916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A251045 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253174.P15106004363663832916

/-! ## A253174.P11872947786881934963

`∑[A033999(A251140(n+1))]`
-/

namespace A253174.P11872947786881934963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A251140 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253174.P11872947786881934963

/-! ## A253174.P4351980220251698589

`∑[A056594(2*A251140(n+1))]`
-/

namespace A253174.P4351980220251698589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * A251140 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253174.P4351980220251698589

/-! ## A253174.P17728413966154225322

`∑[A010892(3*A251140(n+1))]`
-/

namespace A253174.P17728413966154225322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * A251140 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253174.P17728413966154225322

/-! ## A253174.P963561241405201545

`∑[A309873(A251140(n+1)²+1)]`
-/

namespace A253174.P963561241405201545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (A251140 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253174.P963561241405201545

/-! ## A253174.P3907795925268789304

`∑[A010892((5-A251140(n+1)²)²)]`
-/

namespace A253174.P3907795925268789304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 ((5 - A251140 (n + 1) ^ 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253174.P3907795925268789304

/-! ## A253174.P13081439830364865115

`∑[A056594(A251140(n+1)+A251140(n+1))]`
-/

namespace A253174.P13081439830364865115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (A251140 (n + 1) + A251140 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253174.P13081439830364865115

/-!
# A253175: Indices of hexagonal numbers (A000384) which are also centered hexagonal numbers (A003215).

The programs for A253175, the canonical program `A253175.P15933129790917674457` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253175 has offset 1).

The definition of A253175 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253175.P15933129790917674457

`11*a(n-1)-11*a(n-2)+a(n-3)` with `a(0)=1, a(1)=7, a(2)=67`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253175

/-- `11*a(n-1)-11*a(n-2)+a(n-3)` -/
def P15933129790917674457.Spec : Prop :=
  ∀ n, P15933129790917674457.a n = A253175 (n + 1)

theorem P15933129790917674457.correct : P15933129790917674457.Spec := by
  intro n
  simp only [A253175, Nat.add_sub_cancel]

end A253175

/-! ## A253175.P7264967348407043407

`A350923(n+1)/2`
-/

namespace A253175.P7264967348407043407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350923 (n + 1) : ℚ) / 2

end

end A253175.P7264967348407043407

namespace A253175

/-- `A350923(n+1)/2` -/
def P7264967348407043407.Spec : Prop :=
  ∀ n, P7264967348407043407.a n = (A253175 (n + 1) : ℚ)

end A253175

/-! ## A253175.P15861838738426195910

`∑[ogf((1-4x+x^2)/(1-10x+x^2))]`
-/

namespace A253175.P15861838738426195910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 1] [1, -10, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253175.P15861838738426195910

namespace A253175

/-- `∑[ogf((1-4x+x^2)/(1-10x+x^2))]` -/
def P15861838738426195910.Spec : Prop :=
  ∀ n, P15861838738426195910.a n = A253175 (n + 1)

end A253175

/-! ## A253175.P16307216212215944881

`10*a(n-1)-a(n-2)-2` with `a(0)=1, a(1)=7`
-/

namespace A253175.P16307216212215944881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7] fun n a =>
  10 * a (n - 1) - a (n - 2) - 2

end

end A253175.P16307216212215944881

namespace A253175

/-- `10*a(n-1)-a(n-2)-2` -/
def P16307216212215944881.Spec : Prop :=
  ∀ n, P16307216212215944881.a n = A253175 (n + 1)

end A253175

/-! ## A253175.P16784913360141136417

`A157085(n)/2`
-/

namespace A253175.P16784913360141136417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A157085 n : ℚ) / 2

end

end A253175.P16784913360141136417

namespace A253175

/-- `A157085(n)/2` -/
def P16784913360141136417.Spec : Prop :=
  ∀ n, P16784913360141136417.a n = (A253175 (n + 1) : ℚ)

end A253175

/-! ## A253175.P7294311777921446494

`∑[A122653(n)]+1`
-/

namespace A253175.P7294311777921446494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A253175.P7294311777921446494

namespace A253175

/-- `∑[A122653(n)]+1` -/
def P7294311777921446494.Spec : Prop :=
  ∀ n, P7294311777921446494.a n = A253175 (n + 1)

end A253175

/-! ## A253175.P5113187088632866294

`ceil(A031138(n+1)/2)`
-/

namespace A253175.P5113187088632866294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A031138 (n + 1) : ℚ) / 2⌉

end

end A253175.P5113187088632866294

namespace A253175

/-- `ceil(A031138(n+1)/2)` -/
def P5113187088632866294.Spec : Prop :=
  ∀ n, P5113187088632866294.a n = A253175 (n + 1)

end A253175

/-! ## A253175.P9473324042037672761

`(∑[A004291(n)]+1)/2`
-/

namespace A253175.P9473324042037672761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004291 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A253175.P9473324042037672761

namespace A253175

/-- `(∑[A004291(n)]+1)/2` -/
def P9473324042037672761.Spec : Prop :=
  ∀ n, P9473324042037672761.a n = (A253175 (n + 1) : ℚ)

end A253175

/-! ## A253175.P13613880551142273865

`3/2*A105038(n)+1`
-/

namespace A253175.P13613880551142273865
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A105038 n : ℚ) + 1

end

end A253175.P13613880551142273865

namespace A253175

/-- `3/2*A105038(n)+1` -/
def P13613880551142273865.Spec : Prop :=
  ∀ n, P13613880551142273865.a n = (A253175 (n + 1) : ℚ)

end A253175

/-! ## A253175.P14923557493652052312

`(3*A072256(n+1)+1)/4`
-/

namespace A253175.P14923557493652052312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A072256 (n + 1) + 1 : ℚ) / 4

end

end A253175.P14923557493652052312

namespace A253175

/-- `(3*A072256(n+1)+1)/4` -/
def P14923557493652052312.Spec : Prop :=
  ∀ n, P14923557493652052312.a n = (A253175 (n + 1) : ℚ)

end A253175

/-! ## A253175.P17624161208397573232

`A098297(n)+∑[A001079(n)]`
-/

namespace A253175.P17624161208397573232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098297 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253175.P17624161208397573232

namespace A253175

/-- `A098297(n)+∑[A001079(n)]` -/
def P17624161208397573232.Spec : Prop :=
  ∀ n, P17624161208397573232.a n = A253175 (n + 1)

end A253175

/-! ## A253175.P10812678072256572362

`∑[A004291(n)-A122653(n)]`
-/

namespace A253175.P10812678072256572362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004291 n - A122653 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253175.P10812678072256572362

namespace A253175

/-- `∑[A004291(n)-A122653(n)]` -/
def P10812678072256572362.Spec : Prop :=
  ∀ n, P10812678072256572362.a n = A253175 (n + 1)

end A253175

/-! ## A253175.P17797738505150765346

`A138288(n)-∑[A001078(n)]`
-/

namespace A253175.P17797738505150765346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138288 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253175.P17797738505150765346

namespace A253175

/-- `A138288(n)-∑[A001078(n)]` -/
def P17797738505150765346.Spec : Prop :=
  ∀ n, P17797738505150765346.a n = A253175 (n + 1)

end A253175

/-! ## A253175.P12062105764551605254

`∑[A054320(n)]-A087125(n)`
-/

namespace A253175.P12062105764551605254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A087125 n

end

end A253175.P12062105764551605254

namespace A253175

/-- `∑[A054320(n)]-A087125(n)` -/
def P12062105764551605254.Spec : Prop :=
  ∀ n, P12062105764551605254.a n = A253175 (n + 1)

end A253175

/-! ## A253175.P3886633405298365309

`∑[or(A000007(n), A122653(n))]`
-/

namespace A253175.P3886633405298365309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A122653 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253175.P3886633405298365309

namespace A253175

/-- `∑[or(A000007(n), A122653(n))]` -/
def P3886633405298365309.Spec : Prop :=
  ∀ n, P3886633405298365309.a n = A253175 (n + 1)

end A253175

/-! ## A253175.P1739530329379192279

`A138288(n)-A105038(n)/2`
-/

namespace A253175.P1739530329379192279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138288 n : ℚ) - (A105038 n : ℚ) / 2

end

end A253175.P1739530329379192279

namespace A253175

/-- `A138288(n)-A105038(n)/2` -/
def P1739530329379192279.Spec : Prop :=
  ∀ n, P1739530329379192279.a n = (A253175 (n + 1) : ℚ)

end A253175

/-! ## A253175.P15771726513548059323

`Δ[A004189(n)]-∑[A001078(n)]`
-/

namespace A253175.P15771726513548059323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001078 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ∑ j ∈ Finset.range (n + 1), f2 j

end

end A253175.P15771726513548059323

namespace A253175

/-- `Δ[A004189(n)]-∑[A001078(n)]` -/
def P15771726513548059323.Spec : Prop :=
  ∀ n, P15771726513548059323.a n = A253175 (n + 1)

end A253175

/-! ## A253175.P1195198532989579443

`∑[A054320(n)-A001079(n)]+1`
-/

namespace A253175.P1195198532989579443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054320 n - A001079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A253175.P1195198532989579443

namespace A253175

/-- `∑[A054320(n)-A001079(n)]+1` -/
def P1195198532989579443.Spec : Prop :=
  ∀ n, P1195198532989579443.a n = A253175 (n + 1)

end A253175

/-! ## A253175.P5750913092375195826

`A138288(n)-∑[A122652(n)/2]`
-/

namespace A253175.P5750913092375195826
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122652 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138288 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253175.P5750913092375195826

namespace A253175

/-- `A138288(n)-∑[A122652(n)/2]` -/
def P5750913092375195826.Spec : Prop :=
  ∀ n, P5750913092375195826.a n = (A253175 (n + 1) : ℚ)

end A253175

/-! ## A253175.P5740098613017163999

`Δ[A004189(n)]-A105038(n)/2`
-/

namespace A253175.P5740098613017163999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004189 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) - (A105038 n : ℚ) / 2

end

end A253175.P5740098613017163999

namespace A253175

/-- `Δ[A004189(n)]-A105038(n)/2` -/
def P5740098613017163999.Spec : Prop :=
  ∀ n, P5740098613017163999.a n = (A253175 (n + 1) : ℚ)

end A253175

/-!
# A253176: Least k>=0 such that both 3n*2^k+1 and 3n*2^k-1 are primes, or -1 if no such k exists.

The programs for A253176, there is no canonical definition to state claims against.
-/

/-! ## A253176.P13194987746134324415

`A194591(A332045(n+1)-A200325(n+1))`
-/

namespace A253176.P13194987746134324415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194591 (A332045 (n + 1) - A200325 (n + 1)).toNat

end

end A253176.P13194987746134324415

/-! ## A253176.P3211345809173430021

`and(∑[A282895(2*n+1)], A282906(n+2))`
-/

namespace A253176.P3211345809173430021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282895 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A282906 (n + 2))

end

end A253176.P3211345809173430021

/-! ## A253176.P5965169674209718427

`A326297(A000105(n))-A000035(n)`
-/

namespace A253176.P5965169674209718427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326297 (A000105 n).toNat - A000035 n

end

end A253176.P5965169674209718427

/-! ## A253176.P7897576256294930134

`A101606(A151890(n+4)+A018009(n))`
-/

namespace A253176.P7897576256294930134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101606 (A151890 (n + 4) + A018009 n).toNat

end

end A253176.P7897576256294930134

/-! ## A253176.P1487340998223714795

`A241719(n)%A229904(A304792(n+4))`
-/

namespace A253176.P1487340998223714795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241719 n) (A229904 (A304792 (n + 4)).toNat)

end

end A253176.P1487340998223714795

/-!
# A253177: Numbers which can be expressed with fewer 1s using +, -, and * than with + and *.

The programs for A253177, there is no canonical definition to state claims against.
-/

/-! ## A253177.P1693269575296591488

`lt[A091333(n+1), A005245(n+1)]+1`
-/

namespace A253177.P1693269575296591488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005245 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A253177.P1693269575296591488

/-!
# A253178: Least k>=1 such that 2*A007494(n)^k+1 is prime.

The programs for A253178, there is no canonical definition to state claims against.
-/

/-! ## A253178.P6564264494138056260

`A119624(A007494(n+1))`
-/

namespace A253178.P6564264494138056260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (A007494 (n + 1)).toNat

end

end A253178.P6564264494138056260

/-! ## A253178.P16056199159198250013

`A119624(∑[gcd(2, n)])`
-/

namespace A253178.P16056199159198250013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A253178.P16056199159198250013

/-! ## A253178.P8894650584446810017

`A119624(comp[3*n]+1)`
-/

namespace A253178.P8894650584446810017
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A253178.P8894650584446810017

/-! ## A253178.P8705973481259057919

`filter[A119624(n+2), A097325(#)]`
-/

namespace A253178.P8705973481259057919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A097325 (f1 j).toNat = 1) n)

end

end A253178.P8705973481259057919

/-! ## A253178.P4043201224214430496

`filter[A119624(n+2), A168046(#)]`
-/

namespace A253178.P4043201224214430496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168046 (f1 j).toNat = 1) n)

end

end A253178.P4043201224214430496

/-! ## A253178.P16208997810424939031

`filter[A119624(n+2), A168181(#)]`
-/

namespace A253178.P16208997810424939031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A253178.P16208997810424939031

/-! ## A253178.P9451174078185504249

`filter[A119624(n+2), A168182(#)]`
-/

namespace A253178.P9451174078185504249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168182 (f1 j).toNat = 1) n)

end

end A253178.P9451174078185504249

/-! ## A253178.P912986562118622111

`filter[A119624(n+2), A168184(#)]`
-/

namespace A253178.P912986562118622111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A253178.P912986562118622111

/-! ## A253178.P5919300590883475589

`filter[A119624(n+2), A168185(#)]`
-/

namespace A253178.P5919300590883475589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168185 (f1 j).toNat = 1) n)

end

end A253178.P5919300590883475589

/-! ## A253178.P8107879313683862220

`filter[A119624(n+2), A276398(#)]`
-/

namespace A253178.P8107879313683862220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119624 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A276398 (f1 j).toNat = 1) n)

end

end A253178.P8107879313683862220

/-!
# A253179: a(n) = mu(n)*Sum_{k=1..n} (n/k) where mu(n) is Möbius (or Moebius) function and (x/y) is Kronecker's symbol.

The programs for A253179, there is no canonical definition to state claims against.
-/

/-! ## A253179.P15014604619737916578

`(A071961(n+1)-A087049(n+1))*A008683(n+1)`
-/

namespace A253179.P15014604619737916578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A071961 (n + 1) - A087049 (n + 1)) * A008683 (n + 1)

end

end A253179.P15014604619737916578

/-! ## A253179.P11904454256080739862

`(A000010(n+1)-2*A096397(n+1))*A008683(n+1)`
-/

namespace A253179.P11904454256080739862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000010 (n + 1) - 2 * A096397 (n + 1)) * A008683 (n + 1)

end

end A253179.P11904454256080739862

/-!
# A253180: Number T(n,k) of 2n-length strings of balanced parentheses of exactly k different types that are introduced in ascending order; triangle T(n,k), n>=0, 0<=k<=n, read by rows.

The programs for A253180, there is no canonical definition to state claims against.
-/

/-! ## A253180.P12215385652287182854

`A048993(n)*A168256(n)`
-/

namespace A253180.P12215385652287182854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A168256 n

end

end A253180.P12215385652287182854

/-! ## A253180.P1436787345549608454

`A000108(A003056(n))*A048993(n)`
-/

namespace A253180.P1436787345549608454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A003056 n).toNat * A048993 n

end

end A253180.P1436787345549608454

/-! ## A253180.P4340249948245702244

`A048993(n)*A097331(A131507(n))`
-/

namespace A253180.P4340249948245702244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A097331 (A131507 n).toNat

end

end A253180.P4340249948245702244

/-! ## A253180.P13466593182321239951

`A048993(n)*A120588(A123578(n))`
-/

namespace A253180.P13466593182321239951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A120588 (A123578 n).toNat

end

end A253180.P13466593182321239951

/-! ## A253180.P15508021808600736660

`A048993(n)*A120588(A002024(n+1))`
-/

namespace A253180.P15508021808600736660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048993 n * A120588 (A002024 (n + 1)).toNat

end

end A253180.P15508021808600736660

/-! ## A253180.P14714448867366823076

`A256061(n)/A233543(n)`
-/

namespace A253180.P14714448867366823076
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256061 n : ℚ) / (A233543 n : ℚ)

end

end A253180.P14714448867366823076

/-! ## A253180.P1186395767566335463

`A256061(n)/A002262(n)!`
-/

namespace A253180.P1186395767566335463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256061 n : ℚ) / (Nat.factorial (A002262 n).toNat : ℚ)

end

end A253180.P1186395767566335463

/-!
# A253181: Numbers n such that the distance between n^3 and the nearest square is less than n.

The programs for A253181, there is no canonical definition to state claims against.
-/

/-! ## A253181.P12981553748804697136

`∪[(n+1)², A268509(n+1)]`
-/

namespace A253181.P12981553748804697136
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253181.P12981553748804697136

/-! ## A253181.P523522425275944683

`∪[A268509(n+1), A000290(A000027(n+1))]`
-/

namespace A253181.P523522425275944683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268509 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (A000027 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A253181.P523522425275944683

/-! ## A253181.P10300102933222985334

`lt[abs(round(sqrt(n^3))²-n^3), n]`
-/

namespace A253181.P10300102933222985334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |SequenceMachineLib.roundAway (Real.sqrt (n ^ 3 : ℝ)) ^ 2 - (n ^ 3 : ℤ)|

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A253181.P10300102933222985334

/-! ## A253181.P15318529350606257052

`lt[A002938(n+1), n+1]+1`
-/

namespace A253181.P15318529350606257052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002938 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A253181.P15318529350606257052

/-!
# A253183: Expansion of (q^3 * psi(q) * psi(q^23))^2 in powers of q where psi() is a Ramanujan theta function.

The programs for A253183, there is no canonical definition to state claims against.
-/

/-! ## A253183.P3910474877433553881

`A008441(n%A296008(3*n))`
-/

namespace A253183.P3910474877433553881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (Int.tmod (n : ℤ) (A296008 (3 * n + 1582))).toNat

end

end A253183.P3910474877433553881

/-! ## A253183.P1527588974302491514

`A125079((2*n)%A125060(3*n+1))`
-/

namespace A253183.P1527588974302491514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125079 (Int.tmod (2 * n : ℤ) (A125060 (3 * n + 1))).toNat

end

end A253183.P1527588974302491514

/-! ## A253183.P1963309421566699427

`A008441(A185245(A131404(n))+n)`
-/

namespace A253183.P1963309421566699427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (A185245 (A131404 n).toNat + (n : ℤ)).toNat

end

end A253183.P1963309421566699427

/-! ## A253183.P2990297478754060052

`A008441(A285007(A035607(n))+n)`
-/

namespace A253183.P2990297478754060052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (A285007 (A035607 n).toNat + (n : ℤ)).toNat

end

end A253183.P2990297478754060052

/-!
# A253184: Triangle T(n,m) = Sum_{k=1..(n-m)/2} C(m, k)*T((n-m)/2, k), T(n,n)=1.

The programs for A253184, there is no canonical definition to state claims against.
-/

/-! ## A253184.P16670616905726305456

`A053121(n)%A113724(A059268(n))`
-/

namespace A253184.P16670616905726305456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A053121 n) (A113724 (A059268 n).toNat)

end

end A253184.P16670616905726305456

/-! ## A253184.P3633131493863513887

`A065600(n)%A113724(A059268(n))`
-/

namespace A253184.P3633131493863513887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065600 n) (A113724 (A059268 n).toNat)

end

end A253184.P3633131493863513887

/-! ## A253184.P13382594548899359355

`A085201(A099174(n))%A249539(A000332(n))`
-/

namespace A253184.P13382594548899359355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A085201 (A099174 n).toNat) (A249539 ((A000332 n).toNat + 1))

end

end A253184.P13382594548899359355

/-! ## A253184.P2093836936886202268

`and(A053121(n), A335952(2*n))`
-/

namespace A253184.P2093836936886202268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A053121 n) (A335952 (2 * n))

end

end A253184.P2093836936886202268

/-! ## A253184.P3252848904528271223

`and(A011615(A060187(n+1)), A053121(n))`
-/

namespace A253184.P3252848904528271223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011615 (A060187 (n + 1)).toNat) (A053121 n)

end

end A253184.P3252848904528271223

/-!
# A253185: Expansion of (phi(-q) * phi(-q^23))^2 in powers of q where phi() is a Ramanujan theta function.

The programs for A253185, there is no canonical definition to state claims against.
-/

/-! ## A253185.P8351710631994064472

`A104794(n^∑[A018843(n)])`
-/

namespace A253185.P8351710631994064472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (SequenceMachineLib.roundAway ((n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))).toNat

end

end A253185.P8351710631994064472

/-! ## A253185.P10544143643227066544

`A104794(n%A023675(2*(n+2)))`
-/

namespace A253185.P10544143643227066544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 (Int.tmod (n : ℤ) (A023675 (2 * (n + 2)))).toNat

end

end A253185.P10544143643227066544

/-! ## A253185.P2917052703840537356

`A104794(n)-A137579(A137596(n))`
-/

namespace A253185.P2917052703840537356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n - A137579 (A137596 n).toNat

end

end A253185.P2917052703840537356

/-! ## A253185.P12692597097229927145

`A104794(n)-A124120(A066010(n+2))`
-/

namespace A253185.P12692597097229927145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104794 n - A124120 (A066010 (n + 2)).toNat

end

end A253185.P12692597097229927145

/-! ## A253185.P10087853958316561272

`A004018(n)*A033999(n)-A137579(A137596(n))`
-/

namespace A253185.P10087853958316561272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004018 n * A033999 n - A137579 (A137596 n).toNat

end

end A253185.P10087853958316561272

/-!
# A253186: 

The programs for A253186, there is no canonical definition to state claims against.
-/

/-! ## A253186.P5250757836204508369

`floor(n/2)+floor((n²+6)/12)`
-/

namespace A253186.P5250757836204508369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + ⌊(n ^ 2 + 6 : ℚ) / 12⌋

end

end A253186.P5250757836204508369

/-! ## A253186.P16488097057179635296

`xor(-round((n+3)²/12), -1)`
-/

namespace A253186.P16488097057179635296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)) (-1)

end

end A253186.P16488097057179635296

/-! ## A253186.P13325843297553484425

`ceil(a(n-2)+(n+1)/3)` with `a(0)=0, a(1)=0`
-/

namespace A253186.P13325843297553484425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  ⌈(a (n - 2) : ℚ) + (n + 1 : ℚ) / 3⌉

end

end A253186.P13325843297553484425

/-! ## A253186.P14151097855161579512

`round(a(n-2)+(n+2)/3)` with `a(0)=0, a(1)=0`
-/

namespace A253186.P14151097855161579512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 2) : ℚ) + (n + 2 : ℚ) / 3)

end

end A253186.P14151097855161579512

/-! ## A253186.P1546192785676841351

`A160138(n+1)`
-/

namespace A253186.P1546192785676841351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160138 (n + 1)

end

end A253186.P1546192785676841351

/-! ## A253186.P13411848406303804818

`A212986(n)%A008748(n)`
-/

namespace A253186.P13411848406303804818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A212986 n) (A008748 n)

end

end A253186.P13411848406303804818

/-! ## A253186.P14317645544903178376

`A281333(n)%A033638(n)`
-/

namespace A253186.P14317645544903178376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A281333 n) (A033638 n)

end

end A253186.P14317645544903178376

/-! ## A253186.P2993326155974849874

`A004116(n+1)%A186355(n+1)`
-/

namespace A253186.P2993326155974849874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004116 (n + 1)) (A186355 (n + 1))

end

end A253186.P2993326155974849874

/-! ## A253186.P3825073375447370951

`A184005(n+1)%A143978(n+1)`
-/

namespace A253186.P3825073375447370951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184005 (n + 1)) (A143978 (n + 1))

end

end A253186.P3825073375447370951

/-! ## A253186.P3598119014479669946

`A322598(n+1)%A194069(n+1)`
-/

namespace A253186.P3598119014479669946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A322598 (n + 1)) (A194069 (n + 1))

end

end A253186.P3598119014479669946

/-! ## A253186.P14200520212744733156

`A186498(n+1)%A244239(n+9)`
-/

namespace A253186.P14200520212744733156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A186498 (n + 1)) (A244239 (n + 9))

end

end A253186.P14200520212744733156

/-! ## A253186.P13767995239755050331

`A325691(2*n)`
-/

namespace A253186.P13767995239755050331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325691 (2 * n)

end

end A253186.P13767995239755050331

/-! ## A253186.P3708715604907691789

`A023443(A001399(n))`
-/

namespace A253186.P3708715604907691789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A001399 n).toNat

end

end A253186.P3708715604907691789

/-! ## A253186.P1555847675488902179

`A140106(2*A001399(n))`
-/

namespace A253186.P1555847675488902179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140106 (2 * A001399 n).toNat

end

end A253186.P1555847675488902179

/-! ## A253186.P8304795565630580916

`A004526(A056827(n)+n)`
-/

namespace A253186.P8304795565630580916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A056827 n + (n : ℤ)).toNat

end

end A253186.P8304795565630580916

/-! ## A253186.P6630776493155836529

`A002264(A079524(n))`
-/

namespace A253186.P6630776493155836529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A079524 n).toNat

end

end A253186.P6630776493155836529

/-! ## A253186.P11404273830969159525

`A267183(A128012(n))`
-/

namespace A253186.P11404273830969159525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267183 (A128012 n).toNat

end

end A253186.P11404273830969159525

/-! ## A253186.P8117121864126153686

`A002264(A184674(n+1))`
-/

namespace A253186.P8117121864126153686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A184674 (n + 1)).toNat

end

end A253186.P8117121864126153686

/-! ## A253186.P17394034635970225452

`A002264(A184676(n+1))`
-/

namespace A253186.P17394034635970225452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A184676 (n + 1)).toNat

end

end A253186.P17394034635970225452

/-! ## A253186.P564678251866113171

`A002264(A302488(n)+n)`
-/

namespace A253186.P564678251866113171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A302488 n + (n : ℤ)).toNat

end

end A253186.P564678251866113171

/-!
# A253188: Minimal positive integer k such that n^n >= (n-k)^(n+k).

The programs for A253188, there is no canonical definition to state claims against.
-/

/-! ## A253188.P9837781833958924853

`∑[A005171(record[A088931(n)+1])]`
-/

namespace A253188.P9837781833958924853
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088931 n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253188.P9837781833958924853

/-! ## A253188.P13720528885722135128

`∑[A288864(A124367(2*n+1))]`
-/

namespace A253188.P13720528885722135128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288864 (A124367 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253188.P13720528885722135128

/-!
# A253189: Triangle T(n, m)=Sum_{k=1..(n-m)/3} C(m, k)*T((n-m)/3, k), T(n,n)=1.

The programs for A253189, there is no canonical definition to state claims against.
-/

/-! ## A253189.P11232695664454335099

`A111373(n)%A349772(A124560(n))`
-/

namespace A253189.P11232695664454335099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A111373 n) (A349772 (A124560 n).toNat)

end

end A253189.P11232695664454335099

/-! ## A253189.P7631180421090505159

`A337165(A014132(n+1))%A031285(n)`
-/

namespace A253189.P7631180421090505159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337165 (A014132 (n + 1)).toNat) (A031285 n)

end

end A253189.P7631180421090505159

/-! ## A253189.P4143646710090681175

`A337165(lt[1, A343806(n)])`
-/

namespace A253189.P4143646710090681175
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A253189.P4143646710090681175

/-! ## A253189.P1499535568002323827

`A337165(comp[∑[n]]%A090119(n+1))`
-/

namespace A253189.P1499535568002323827
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337165 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A090119 (n + 1))).toNat

end

end A253189.P1499535568002323827

/-! ## A253189.P8296791473267314044

`A337165(comp[∑[n]])%A336671(n+1)`
-/

namespace A253189.P8296791473267314044
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337165 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A336671 (n + 1))

end

end A253189.P8296791473267314044

/-!
# A253190: Triangle T(n, m)=Sum_{k=1..(n-m)/2} C(m+k-1, k)*T((n-m)/2, k), T(n,n)=1.

The programs for A253190, there is no canonical definition to state claims against.
-/

/-! ## A253190.P3438732755287485540

`A000120(A103919(n)*A156045(n))`
-/

namespace A253190.P3438732755287485540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A103919 n * A156045 n).toNat

end

end A253190.P3438732755287485540

/-! ## A253190.P889348610921443500

`lcm(A005136(A108044(n)), A046854(n))`
-/

namespace A253190.P889348610921443500
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A005136 (A108044 n).toNat) (A046854 n)

end

end A253190.P889348610921443500

/-! ## A253190.P12050393885940625483

`A000120(lcm(A103919(n), A156045(n)))`
-/

namespace A253190.P12050393885940625483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.lcm (A103919 n) (A156045 n))

end

end A253190.P12050393885940625483

/-! ## A253190.P2116364157007305331

`lcm(A049310(n), A087204(A208183(n+1)))`
-/

namespace A253190.P2116364157007305331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049310 n) (A087204 (A208183 (n + 1)).toNat)

end

end A253190.P2116364157007305331

/-! ## A253190.P3139584599757732737

`A168561(n)+A091194(A367579(3*n+2))`
-/

namespace A253190.P3139584599757732737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168561 n + A091194 (A367579 (3 * n + 2)).toNat

end

end A253190.P3139584599757732737

/-!
# A253192: Number of ways to place nonintersecting diagonals in convex (n+3)-gon so as to create exactly one triangle.

The programs for A253192, there is no canonical definition to state claims against.
-/

/-! ## A253192.P8197158909908899276

`A331332(A184636(n+2)+1)`
-/

namespace A253192.P8197158909908899276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 (A184636 (n + 2) + 1).toNat

end

end A253192.P8197158909908899276

/-! ## A253192.P11338483620531681782

`A242447(∑[4*(n+1)]+1)`
-/

namespace A253192.P11338483620531681782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242447 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A253192.P11338483620531681782

/-! ## A253192.P6250577470393025986

`A105422((n+1)²+(n+2)²)`
-/

namespace A253192.P6250577470393025986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105422 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A253192.P6250577470393025986

/-! ## A253192.P18108102435670144728

`A238342((n+1)²+(n+2)²)`
-/

namespace A253192.P18108102435670144728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238342 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A253192.P18108102435670144728

/-! ## A253192.P15286115994214680452

`and(abs(1-n)-n, A105422(A099776(n+1)))`
-/

namespace A253192.P15286115994214680452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (|1 - (n : ℤ)| - (n : ℤ)) (A105422 (A099776 (n + 1)).toNat)

end

end A253192.P15286115994214680452

/-!
# A253194: Number of ways to place non-intersecting diagonals in a convex (n+2)-gon so as to create no pentagons.

The programs for A253194, there is no canonical definition to state claims against.
-/

/-! ## A253194.P5822354588230811637

`A022290(round(sqrt(A052145(n+1))))`
-/

namespace A253194.P5822354588230811637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022290 (SequenceMachineLib.roundAway (Real.sqrt (A052145 (n + 1) : ℝ))).toNat

end

end A253194.P5822354588230811637

/-! ## A253194.P3970877416285318694

`A008615(A157519(n))+A007051(n)`
-/

namespace A253194.P3970877416285318694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A157519 n).toNat + A007051 n

end

end A253194.P3970877416285318694

/-!
# A253195: Numbers congruent to 5 or 8 mod 9.

The programs for A253195, the canonical program `A253195.P4506096003987551144` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253195 has offset 1).

The definition of A253195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253195.P4506096003987551144

`a(n-2)+9` with `a(0)=5, a(1)=8`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253195

/-- `a(n-2)+9` -/
def P4506096003987551144.Spec : Prop :=
  ∀ n, (P4506096003987551144.a n : ℤ) = A253195 (n + 1)

theorem P4506096003987551144.correct : P4506096003987551144.Spec := by
  intro n
  simp only [A253195, Nat.add_sub_cancel]

end A253195

/-! ## A253195.P18355327978002501323

`(9*(n+1)-3/2*(1+(-1)^(n+1))+1)/2`
-/

namespace A253195.P18355327978002501323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((9 * (n + 1) : ℚ) - (3 : ℚ) / 2 * (1 + (-1) ^ (n + 1) : ℚ) + 1) / 2

end

end A253195.P18355327978002501323

namespace A253195

/-- `(9*(n+1)-3/2*(1+(-1)^(n+1))+1)/2` -/
def P18355327978002501323.Spec : Prop :=
  ∀ n, P18355327978002501323.a n = (A253195 (n + 1) : ℚ)

theorem P18355327978002501323.correct : P18355327978002501323.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A253195, Nat.add_sub_cancel, A253195.P18355327978002501323.a, A253195.P4506096003987551144.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h2 := ih m (by omega)
      simp only [A253195, Nat.add_sub_cancel, A253195.P18355327978002501323.a, A253195.P4506096003987551144.a, SequenceMachineLib.memo_apply] at h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 2 = m by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h2 ⊢
      rw [← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A253195

/-! ## A253195.P18265079512847410471

`∑[3*gcd(2, n)]-1`
-/

namespace A253195.P18265079512847410471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A253195.P18265079512847410471

namespace A253195

/-- `∑[3*gcd(2, n)]-1` -/
def P18265079512847410471.Spec : Prop :=
  ∀ n, P18265079512847410471.a n = A253195 (n + 1)

end A253195

/-! ## A253195.P12933580249235883416

`record[lcm(3, n+1)+2]`
-/

namespace A253195.P12933580249235883416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A253195.P12933580249235883416

namespace A253195

/-- `record[lcm(3, n+1)+2]` -/
def P12933580249235883416.Spec : Prop :=
  ∀ n, (P12933580249235883416.a n : ℤ) = A253195 (n + 1)

end A253195

/-! ## A253195.P10031123598109586845

`∑[9-a(n-1)]` with `a(0)=5, a(1)=3`
-/

namespace A253195.P10031123598109586845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 3] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253195.P10031123598109586845

namespace A253195

/-- `∑[9-a(n-1)]` -/
def P10031123598109586845.Spec : Prop :=
  ∀ n, P10031123598109586845.a n = A253195 (n + 1)

end A253195

/-! ## A253195.P6171222667032321269

`∑[∑[ogf((5+3x+x^2)/(1+x))]]`
-/

namespace A253195.P6171222667032321269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3, 1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253195.P6171222667032321269

namespace A253195

/-- `∑[∑[ogf((5+3x+x^2)/(1+x))]]` -/
def P6171222667032321269.Spec : Prop :=
  ∀ n, P6171222667032321269.a n = A253195 (n + 1)

end A253195

/-! ## A253195.P13472065585902692806

`ogf((5+3x+x^2)/(1-x-x^2+x^3))`
-/

namespace A253195.P13472065585902692806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 3, 1] [1, -1, -1, 1] n

end

end A253195.P13472065585902692806

namespace A253195

/-- `ogf((5+3x+x^2)/(1-x-x^2+x^3))` -/
def P13472065585902692806.Spec : Prop :=
  ∀ n, P13472065585902692806.a n = A253195 (n + 1)

end A253195

/-! ## A253195.P14477163582857610394

`9-floor(-a(n-2))` with `a(0)=5, a(1)=8`

`floor` is left out, it is the identity on integers.
-/

namespace A253195.P14477163582857610394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 8] fun n a =>
  9 - (-a (n - 2))

end

end A253195.P14477163582857610394

namespace A253195

/-- `9-floor(-a(n-2))` -/
def P14477163582857610394.Spec : Prop :=
  ∀ n, P14477163582857610394.a n = A253195 (n + 1)

end A253195

/-! ## A253195.P17143298955351804716

`9-ceil(-a(n-2))` with `a(0)=5, a(1)=8`

`ceil` is left out, it is the identity on integers.
-/

namespace A253195.P17143298955351804716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 8] fun n a =>
  9 - (-a (n - 2))

end

end A253195.P17143298955351804716

namespace A253195

/-- `9-ceil(-a(n-2))` -/
def P17143298955351804716.Spec : Prop :=
  ∀ n, P17143298955351804716.a n = A253195 (n + 1)

end A253195

/-! ## A253195.P7625926402393429604

`9-round(-a(n-2))` with `a(0)=5, a(1)=8`

`round` is left out, it is the identity on integers.
-/

namespace A253195.P7625926402393429604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 8] fun n a =>
  9 - (-a (n - 2))

end

end A253195.P7625926402393429604

namespace A253195

/-- `9-round(-a(n-2))` -/
def P7625926402393429604.Spec : Prop :=
  ∀ n, P7625926402393429604.a n = A253195 (n + 1)

end A253195

/-! ## A253195.P12213371380319341141

`∑[gcd(4, n²)]+2*n+1`
-/

namespace A253195.P12213371380319341141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1)

end

end A253195.P12213371380319341141

namespace A253195

/-- `∑[gcd(4, n²)]+2*n+1` -/
def P12213371380319341141.Spec : Prop :=
  ∀ n, (P12213371380319341141.a n : ℤ) = A253195 (n + 1)

end A253195

/-! ## A253195.P7909166233341930651

`∑[or(n, -2)²]+2*n+1`
-/

namespace A253195.P7909166233341930651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A253195.P7909166233341930651

namespace A253195

/-- `∑[or(n, -2)²]+2*n+1` -/
def P7909166233341930651.Spec : Prop :=
  ∀ n, P7909166233341930651.a n = A253195 (n + 1)

end A253195

/-! ## A253195.P16156574912319984828

`∑[(and(1, n)-2)²]+2*n+1`
-/

namespace A253195.P16156574912319984828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.land 1 n : ℤ) - 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℤ)

end

end A253195.P16156574912319984828

namespace A253195

/-- `∑[(and(1, n)-2)²]+2*n+1` -/
def P16156574912319984828.Spec : Prop :=
  ∀ n, P16156574912319984828.a n = A253195 (n + 1)

end A253195

/-! ## A253195.P4939690411463919922

`Δ[(2*n)²]-(a(n-1)-n)` with `a(0)=5`
-/

namespace A253195.P4939690411463919922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - (a (n - 1) - (n : ℤ))

end

end A253195.P4939690411463919922

namespace A253195

/-- `Δ[(2*n)²]-(a(n-1)-n)` -/
def P4939690411463919922.Spec : Prop :=
  ∀ n, P4939690411463919922.a n = A253195 (n + 1)

end A253195

/-! ## A253195.P12280509789533595722

`∑[4^and(1, n+1)]+2*n+1`
-/

namespace A253195.P12280509789533595722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ Nat.land 1 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1)

end

end A253195.P12280509789533595722

namespace A253195

/-- `∑[4^and(1, n+1)]+2*n+1` -/
def P12280509789533595722.Spec : Prop :=
  ∀ n, (P12280509789533595722.a n : ℤ) = A253195 (n + 1)

end A253195

/-! ## A253195.P13887097784734655843

`∑[C(2, and(1, n+1))²]+2*n+1`
-/

namespace A253195.P13887097784734655843
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land 1 (n + 1)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1)

end

end A253195.P13887097784734655843

namespace A253195

/-- `∑[C(2, and(1, n+1))²]+2*n+1` -/
def P13887097784734655843.Spec : Prop :=
  ∀ n, (P13887097784734655843.a n : ℤ) = A253195 (n + 1)

end A253195

/-! ## A253195.P4676694207786186632

`∑[(lcm(2, n+3)/(n+3))²]+2*n+1`
-/

namespace A253195.P4676694207786186632
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 2 (n + 3) : ℚ) / (n + 3 : ℚ)) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1 : ℚ)

end

end A253195.P4676694207786186632

namespace A253195

/-- `∑[(lcm(2, n+3)/(n+3))²]+2*n+1` -/
def P4676694207786186632.Spec : Prop :=
  ∀ n, P4676694207786186632.a n = (A253195 (n + 1) : ℚ)

end A253195

/-! ## A253195.P15359739771330108493

`∑[A040007(n)]+2`
-/

namespace A253195.P15359739771330108493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A253195.P15359739771330108493

namespace A253195

/-- `∑[A040007(n)]+2` -/
def P15359739771330108493.Spec : Prop :=
  ∀ n, P15359739771330108493.a n = A253195 (n + 1)

end A253195

/-! ## A253195.P14995267179162798526

`∑[A280193(n)+4]`
-/

namespace A253195.P14995267179162798526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253195.P14995267179162798526

namespace A253195

/-- `∑[A280193(n)+4]` -/
def P14995267179162798526.Spec : Prop :=
  ∀ n, P14995267179162798526.a n = A253195 (n + 1)

end A253195

/-! ## A253195.P17862438229617861857

`A125758(n+1)+1`
-/

namespace A253195.P17862438229617861857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (n + 1) + 1

end

end A253195.P17862438229617861857

namespace A253195

/-- `A125758(n+1)+1` -/
def P17862438229617861857.Spec : Prop :=
  ∀ n, P17862438229617861857.a n = A253195 (n + 1)

end A253195

/-!
# A253196: Irregular array read by rows. T(n,k) is the number of divisors d of n such that k^2 is the greatest square that divides d, n>=1, 1<=k<=A000188(n).

The programs for A253196, there is no canonical definition to state claims against.
-/

/-! ## A253196.P2502294519362823394

`and(Δ[A000961(n+7)], A239012(n+11))`
-/

namespace A253196.P2502294519362823394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (n + 1) - f1 n) (A239012 (n + 11))

end

end A253196.P2502294519362823394

/-!
# A253197: a(n) = a(n-1) + a(n-2) + (1 - (-1)^(a(n-1) + a(n-2))) with a(0) = 0, a(1) = 1.

The programs for A253197, the canonical program `A253197.P10431995193313565990` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253197 has offset 0).

The definition of A253197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253197.P10431995193313565990

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=4, a(4)=9`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253197

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P10431995193313565990.Spec : Prop :=
  ∀ n, P10431995193313565990.a n = A253197 n

theorem P10431995193313565990.correct : P10431995193313565990.Spec := by
  intro n
  simp only [A253197]

end A253197

/-! ## A253197.P2288794433681750390

`a(n-2)+or(2, a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A253197.P2288794433681750390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + Nat.lor 2 (a (n - 1))

end

end A253197.P2288794433681750390

namespace A253197

/-- `a(n-2)+or(2, a(n-1))` -/
def P2288794433681750390.Spec : Prop :=
  ∀ n, (P2288794433681750390.a n : ℤ) = A253197 n

end A253197

/-! ## A253197.P5753808850943659281

`xor(1, a(n-1)+a(n-2)+1)` with `a(0)=0, a(1)=1`
-/

namespace A253197.P5753808850943659281
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Nat.xor 1 (a (n - 1) + a (n - 2) + 1)

end

end A253197.P5753808850943659281

namespace A253197

/-- `xor(1, a(n-1)+a(n-2)+1)` -/
def P5753808850943659281.Spec : Prop :=
  ∀ n, (P5753808850943659281.a n : ℤ) = A253197 n

end A253197

/-! ## A253197.P3061587578377496918

`3-gcd(3, n)+a(n-1)+a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A253197.P3061587578377496918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  3 - (Nat.gcd 3 n : ℤ) + (a (n - 1) + a (n - 2))

end

end A253197.P3061587578377496918

namespace A253197

/-- `3-gcd(3, n)+a(n-1)+a(n-2)` -/
def P3061587578377496918.Spec : Prop :=
  ∀ n, P3061587578377496918.a n = A253197 n

end A253197

/-! ## A253197.P15332486483514442926

`A253198(n+1)-1`
-/

namespace A253197.P15332486483514442926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253198 (n + 1) - 1

end

end A253197.P15332486483514442926

namespace A253197

/-- `A253198(n+1)-1` -/
def P15332486483514442926.Spec : Prop :=
  ∀ n, P15332486483514442926.a n = A253197 n

end A253197

/-! ## A253197.P12580043588400084500

`A001595(n)-char[3*n]`
-/

namespace A253197.P12580043588400084500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 n - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253197.P12580043588400084500

namespace A253197

/-- `A001595(n)-char[3*n]` -/
def P12580043588400084500.Spec : Prop :=
  ∀ n, P12580043588400084500.a n = A253197 n

end A253197

/-! ## A253197.P5713012823520471163

`A019274(n+1)+n²%3`
-/

namespace A253197.P5713012823520471163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 1) + ((n ^ 2 % 3 : ℕ) : ℤ)

end

end A253197.P5713012823520471163

namespace A253197

/-- `A019274(n+1)+n²%3` -/
def P5713012823520471163.Spec : Prop :=
  ∀ n, P5713012823520471163.a n = A253197 n

end A253197

/-! ## A253197.P14694916196347455784

`A001911(n)-A104221(n)`
-/

namespace A253197.P14694916196347455784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n - A104221 n

end

end A253197.P14694916196347455784

namespace A253197

/-- `A001911(n)-A104221(n)` -/
def P14694916196347455784.Spec : Prop :=
  ∀ n, P14694916196347455784.a n = A253197 n

end A253197

/-! ## A253197.P17354669375918459679

`xor(A001595(n), A079978(n))`
-/

namespace A253197.P17354669375918459679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001595 n) (A079978 n)

end

end A253197.P17354669375918459679

namespace A253197

/-- `xor(A001595(n), A079978(n))` -/
def P17354669375918459679.Spec : Prop :=
  ∀ n, P17354669375918459679.a n = A253197 n

end A253197

/-! ## A253197.P10571714960804565214

`A019274(n+1)+A011655(n)`
-/

namespace A253197.P10571714960804565214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 1) + A011655 n

end

end A253197.P10571714960804565214

namespace A253197

/-- `A019274(n+1)+A011655(n)` -/
def P10571714960804565214.Spec : Prop :=
  ∀ n, P10571714960804565214.a n = A253197 n

end A253197

/-! ## A253197.P16050275873567579940

`A128588(n+1)-A100063(n)`
-/

namespace A253197.P16050275873567579940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 1) - A100063 n

end

end A253197.P16050275873567579940

namespace A253197

/-- `A128588(n+1)-A100063(n)` -/
def P16050275873567579940.Spec : Prop :=
  ∀ n, P16050275873567579940.a n = A253197 n

end A253197

/-! ## A253197.P16579131647908760058

`A000045(n)+2*A245968(n)`
-/

namespace A253197.P16579131647908760058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + 2 * A245968 n

end

end A253197.P16579131647908760058

namespace A253197

/-- `A000045(n)+2*A245968(n)` -/
def P16579131647908760058.Spec : Prop :=
  ∀ n, P16579131647908760058.a n = A253197 n

end A253197

/-! ## A253197.P11690706656054836645

`A001911(n)-2*A004695(n)`
-/

namespace A253197.P11690706656054836645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n - 2 * A004695 n

end

end A253197.P11690706656054836645

namespace A253197

/-- `A001911(n)-2*A004695(n)` -/
def P11690706656054836645.Spec : Prop :=
  ∀ n, P11690706656054836645.a n = A253197 n

end A253197

/-! ## A253197.P9722387432588658648

`A055389(n+1)-A131534(n+1)`
-/

namespace A253197.P9722387432588658648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (n + 1) - A131534 (n + 1)

end

end A253197.P9722387432588658648

namespace A253197

/-- `A055389(n+1)-A131534(n+1)` -/
def P9722387432588658648.Spec : Prop :=
  ∀ n, P9722387432588658648.a n = A253197 n

end A253197

/-! ## A253197.P7217178109938847579

`A255978(n+1)-A011655(n+2)`
-/

namespace A253197.P7217178109938847579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255978 (n + 1) - A011655 (n + 2)

end

end A253197.P7217178109938847579

namespace A253197

/-- `A255978(n+1)-A011655(n+2)` -/
def P7217178109938847579.Spec : Prop :=
  ∀ n, P7217178109938847579.a n = A253197 n

end A253197

/-! ## A253197.P14811995084633215602

`A011655(n)+2*A000071(n+1)`
-/

namespace A253197.P14811995084633215602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 n + 2 * A000071 (n + 1)

end

end A253197.P14811995084633215602

namespace A253197

/-- `A011655(n)+2*A000071(n+1)` -/
def P14811995084633215602.Spec : Prop :=
  ∀ n, P14811995084633215602.a n = A253197 n

end A253197

/-! ## A253197.P137519360425701804

`A128834(n)²+2*A000071(n+1)`
-/

namespace A253197.P137519360425701804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128834 n ^ 2 + 2 * A000071 (n + 1)

end

end A253197.P137519360425701804

namespace A253197

/-- `A128834(n)²+2*A000071(n+1)` -/
def P137519360425701804.Spec : Prop :=
  ∀ n, P137519360425701804.a n = A253197 n

end A253197

/-! ## A253197.P706748892896770274

`∑[A000045(n+1)]-or(1, A000045(n))`
-/

namespace A253197.P706748892896770274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.lor 1 (A000045 n)

end

end A253197.P706748892896770274

namespace A253197

/-- `∑[A000045(n+1)]-or(1, A000045(n))` -/
def P706748892896770274.Spec : Prop :=
  ∀ n, P706748892896770274.a n = A253197 n

end A253197

/-! ## A253197.P2678439330733102531

`A001588(n+1)-(A131534(n+1)+1)`
-/

namespace A253197.P2678439330733102531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 (n + 1) - (A131534 (n + 1) + 1)

end

end A253197.P2678439330733102531

namespace A253197

/-- `A001588(n+1)-(A131534(n+1)+1)` -/
def P2678439330733102531.Spec : Prop :=
  ∀ n, P2678439330733102531.a n = A253197 n

end A253197

/-! ## A253197.P12631459628768589731

`A166012(n+1)-(A115357(n+1)+1)`
-/

namespace A253197.P12631459628768589731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166012 (n + 1) - (A115357 (n + 1) + 1)

end

end A253197.P12631459628768589731

namespace A253197

/-- `A166012(n+1)-(A115357(n+1)+1)` -/
def P12631459628768589731.Spec : Prop :=
  ∀ n, P12631459628768589731.a n = A253197 n

end A253197

/-!
# A253198: a(n) = a(n-1) + a(n-2) - (-1)^(a(n-1) + a(n-2)) with a(0)=0, a(1)=1.

The programs for A253198, the canonical program `A253198.P400360302965520160` is in `Seq.B000.C031`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A253198 has offset 0).

The definition of A253198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A253198.P400360302965520160

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=5`

The canonical program, it is in `Seq.B000.C031`.
-/

namespace A253198

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P400360302965520160.Spec : Prop :=
  ∀ n, P400360302965520160.a n = A253198 n

theorem P400360302965520160.correct : P400360302965520160.Spec := by
  intro n
  simp only [A253198]

end A253198

/-! ## A253198.P730660349557581252

`2*A000045(n)-A079978(n+2)`
-/

namespace A253198.P730660349557581252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n - A079978 (n + 2)

end

end A253198.P730660349557581252

namespace A253198

/-- `2*A000045(n)-A079978(n+2)` -/
def P730660349557581252.Spec : Prop :=
  ∀ n, P730660349557581252.a n = A253198 n

end A253198

/-! ## A253198.P7567348489840946242

`A118658(n+1)-char[3*n+1]`
-/

namespace A253198.P7567348489840946242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A253198.P7567348489840946242

namespace A253198

/-- `A118658(n+1)-char[3*n+1]` -/
def P7567348489840946242.Spec : Prop :=
  ∀ n, P7567348489840946242.a n = A253198 n

end A253198

/-! ## A253198.P1163409958616464235

`A001588(n)-A131534(n)`
-/

namespace A253198.P1163409958616464235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n - A131534 n

end

end A253198.P1163409958616464235

namespace A253198

/-- `A001588(n)-A131534(n)` -/
def P1163409958616464235.Spec : Prop :=
  ∀ n, P1163409958616464235.a n = A253198 n

end A253198

/-! ## A253198.P14216202549146638182

`A166012(n)-A115357(n)`
-/

namespace A253198.P14216202549146638182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166012 n - A115357 n

end

end A253198.P14216202549146638182

namespace A253198

/-- `A166012(n)-A115357(n)` -/
def P14216202549146638182.Spec : Prop :=
  ∀ n, P14216202549146638182.a n = A253198 n

end A253198

/-! ## A253198.P15685726281367316584

`A255978(n)+A079978(n+1)`
-/

namespace A253198.P15685726281367316584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255978 n + A079978 (n + 1)

end

end A253198.P15685726281367316584

namespace A253198

/-- `A255978(n)+A079978(n+1)` -/
def P15685726281367316584.Spec : Prop :=
  ∀ n, P15685726281367316584.a n = A253198 n

end A253198

/-! ## A253198.P17553720566650711035

`A255978(n)+A173857(n+4)`
-/

namespace A253198.P17553720566650711035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255978 n + A173857 (n + 4)

end

end A253198.P17553720566650711035

namespace A253198

/-- `A255978(n)+A173857(n+4)` -/
def P17553720566650711035.Spec : Prop :=
  ∀ n, P17553720566650711035.a n = A253198 n

end A253198

/-! ## A253198.P6904190000650852927

`or(1, ∑[A000045(n)])-A212804(n)`
-/

namespace A253198.P6904190000650852927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) - A212804 n

end

end A253198.P6904190000650852927

namespace A253198

/-- `or(1, ∑[A000045(n)])-A212804(n)` -/
def P6904190000650852927.Spec : Prop :=
  ∀ n, P6904190000650852927.a n = A253198 n

end A253198

/-! ## A253198.P13446256973491554607

`A001588(n)-A010213(2*n+1)`
-/

namespace A253198.P13446256973491554607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 n - A010213 (2 * n + 1)

end

end A253198.P13446256973491554607

namespace A253198

/-- `A001588(n)-A010213(2*n+1)` -/
def P13446256973491554607.Spec : Prop :=
  ∀ n, P13446256973491554607.a n = A253198 n

end A253198

/-! ## A253198.P10604034894469796841

`2*A000045(n)-Δ[A008620(n+1)]`
-/

namespace A253198.P10604034894469796841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n - (f1 (n + 1) - f1 n)

end

end A253198.P10604034894469796841

namespace A253198

/-- `2*A000045(n)-Δ[A008620(n+1)]` -/
def P10604034894469796841.Spec : Prop :=
  ∀ n, P10604034894469796841.a n = A253198 n

end A253198

/-! ## A253198.P16726456432655087170

`or(1, ∑[A212804(n+1)])-A212804(n)`
-/

namespace A253198.P16726456432655087170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) - A212804 n

end

end A253198.P16726456432655087170

namespace A253198

/-- `or(1, ∑[A212804(n+1)])-A212804(n)` -/
def P16726456432655087170.Spec : Prop :=
  ∀ n, P16726456432655087170.a n = A253198 n

end A253198

/-! ## A253198.P2295163079297086768

`2*A053602(2*n)-A079978(n+2)`
-/

namespace A253198.P2295163079297086768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053602 (2 * n) - A079978 (n + 2)

end

end A253198.P2295163079297086768

namespace A253198

/-- `2*A053602(2*n)-A079978(n+2)` -/
def P2295163079297086768.Spec : Prop :=
  ∀ n, P2295163079297086768.a n = A253198 n

end A253198

/-! ## A253198.P15862954156204560724

`2*A000045(n)-A001222(gcd(n+2, n-1))`
-/

namespace A253198.P15862954156204560724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n - A001222 (Int.gcd (n + 2 : ℤ) ((n : ℤ) - 1))

end

end A253198.P15862954156204560724

namespace A253198

/-- `2*A000045(n)-A001222(gcd(n+2, n-1))` -/
def P15862954156204560724.Spec : Prop :=
  ∀ n, P15862954156204560724.a n = A253198 n

end A253198

/-! ## A253198.P6381122963244409416

`2*A000045(n)-A124625(A005131(n))`
-/

namespace A253198.P6381122963244409416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n - A124625 (A005131 n).toNat

end

end A253198.P6381122963244409416

namespace A253198

/-- `2*A000045(n)-A124625(A005131(n))` -/
def P6381122963244409416.Spec : Prop :=
  ∀ n, P6381122963244409416.a n = A253198 n

end A253198

/-! ## A253198.P2059927682133440651

`2*A000045(n)-A010872(A130481(n))`
-/

namespace A253198.P2059927682133440651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n - A010872 (A130481 n).toNat

end

end A253198.P2059927682133440651

namespace A253198

/-- `2*A000045(n)-A010872(A130481(n))` -/
def P2059927682133440651.Spec : Prop :=
  ∀ n, P2059927682133440651.a n = A253198 n

end A253198

/-! ## A253198.P7716389994257796453

`A255978(n)+A011655(n-A011655(n))`
-/

namespace A253198.P7716389994257796453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255978 n + A011655 ((n : ℤ) - A011655 n).toNat

end

end A253198.P7716389994257796453

namespace A253198

/-- `A255978(n)+A011655(n-A011655(n))` -/
def P7716389994257796453.Spec : Prop :=
  ∀ n, P7716389994257796453.a n = A253198 n

end A253198

/-! ## A253198.P5961498444108578952

`A055389(n)-A267208(A267208(n)+n)`
-/

namespace A253198.P5961498444108578952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n - A267208 (A267208 n + (n : ℤ)).toNat

end

end A253198.P5961498444108578952

namespace A253198

/-- `A055389(n)-A267208(A267208(n)+n)` -/
def P5961498444108578952.Spec : Prop :=
  ∀ n, P5961498444108578952.a n = A253198 n

end A253198

/-! ## A253198.P17752655338483541341

`A002264(2*n)+A006355(n+1)-A002264(2*n+1)`
-/

namespace A253198.P17752655338483541341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n) + (A006355 (n + 1) - A002264 (2 * n + 1))

end

end A253198.P17752655338483541341

namespace A253198

/-- `A002264(2*n)+A006355(n+1)-A002264(2*n+1)` -/
def P17752655338483541341.Spec : Prop :=
  ∀ n, P17752655338483541341.a n = A253198 n

end A253198

/-! ## A253198.P18065655349117622133

`A008615(2*n+1)+A006355(n+1)-A008615(2*n)`
-/

namespace A253198.P18065655349117622133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (2 * n + 1) + (A006355 (n + 1) - A008615 (2 * n))

end

end A253198.P18065655349117622133

namespace A253198

/-- `A008615(2*n+1)+A006355(n+1)-A008615(2*n)` -/
def P18065655349117622133.Spec : Prop :=
  ∀ n, P18065655349117622133.a n = A253198 n

end A253198

/-! ## A253198.P7709111522096961590

`A002264(2*n)+A118658(n+1)-A002264(2*n+1)`
-/

namespace A253198.P7709111522096961590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (2 * n) + (A118658 (n + 1) - A002264 (2 * n + 1))

end

end A253198.P7709111522096961590

namespace A253198

/-- `A002264(2*n)+A118658(n+1)-A002264(2*n+1)` -/
def P7709111522096961590.Spec : Prop :=
  ∀ n, P7709111522096961590.a n = A253198 n

end A253198

/-!
# A253199: Coefficients of q-series for vertex operator algebra associated with lattice QQF.4.f.

The programs for A253199, there is no canonical definition to state claims against.
-/

/-! ## A253199.P12433719011938459305

`∑[∑[A338580(A155650(n))]]`
-/

namespace A253199.P12433719011938459305
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338580 (A155650 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A253199.P12433719011938459305

