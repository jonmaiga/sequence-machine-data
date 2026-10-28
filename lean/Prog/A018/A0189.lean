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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C011
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B008.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A018900: Sums of two distinct powers of 2.

The programs for A018900, the canonical program `A018900.P2868698677378612256` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018900 has offset 1).

The definition of A018900 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018900.P2242000910527734699

`A059268(n)+A140513(n)`
-/

namespace A018900.P2242000910527734699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + A140513 n

end

end A018900.P2242000910527734699

namespace A018900

/-- `A059268(n)+A140513(n)` -/
def P2242000910527734699.Spec : Prop :=
  ∀ n, P2242000910527734699.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P2868698677378612256

`2^A002024(n+1)+2^A002262(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A018900

/-- `2^A002024(n+1)+2^A002262(n)` -/
def P2868698677378612256.Spec : Prop :=
  ∀ n, P2868698677378612256.a n = (A018900 (n + 1) : ℚ)

end A018900

/-! ## A018900.P4099283394143741172

`A057168(a(n-1))` with `a(0)=3`
-/

namespace A018900.P4099283394143741172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A057168 (a (n - 1)).toNat

end

end A018900.P4099283394143741172

namespace A018900

/-- `A057168(a(n-1))` -/
def P4099283394143741172.Spec : Prop :=
  ∀ n, P4099283394143741172.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P681417024765390418

`2^col(n)+2^(row(n)+1)`
-/

namespace A018900.P681417024765390418
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.triCol n + 2 ^ (SequenceMachineLib.triRow n + 1)

end

end A018900.P681417024765390418

namespace A018900

/-- `2^col(n)+2^(row(n)+1)` -/
def P681417024765390418.Spec : Prop :=
  ∀ n, (P681417024765390418.a n : ℤ) = A018900 (n + 1)

end A018900

/-! ## A018900.P13818119135324807861

`A099628(n+1)+1`
-/

namespace A018900.P13818119135324807861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099628 (n + 1) + 1

end

end A018900.P13818119135324807861

namespace A018900

/-- `A099628(n+1)+1` -/
def P13818119135324807861.Spec : Prop :=
  ∀ n, P13818119135324807861.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P3502333316162749745

`floor(A084468(n+1)/2)`
-/

namespace A018900.P3502333316162749745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A084468 (n + 1) : ℚ) / 2⌋

end

end A018900.P3502333316162749745

namespace A018900

/-- `floor(A084468(n+1)/2)` -/
def P3502333316162749745.Spec : Prop :=
  ∀ n, P3502333316162749745.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P1934828075533794379

`A173786(n)+A137688(n)`
-/

namespace A018900.P1934828075533794379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173786 n + A137688 n

end

end A018900.P1934828075533794379

namespace A018900

/-- `A173786(n)+A137688(n)` -/
def P1934828075533794379.Spec : Prop :=
  ∀ n, P1934828075533794379.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P2115841166006183811

`A099627(n)+A137688(n)+1`
-/

namespace A018900.P2115841166006183811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099627 n + (A137688 n + 1)

end

end A018900.P2115841166006183811

namespace A018900

/-- `A099627(n)+A137688(n)+1` -/
def P2115841166006183811.Spec : Prop :=
  ∀ n, P2115841166006183811.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P9038754014165845048

`A089633(n)+A271709(n)+1`
-/

namespace A018900.P9038754014165845048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089633 n + (A271709 n + 1)

end

end A018900.P9038754014165845048

namespace A018900

/-- `A089633(n)+A271709(n)+1` -/
def P9038754014165845048.Spec : Prop :=
  ∀ n, P9038754014165845048.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P527640491722488516

`A098354(n+1)-A130328(n)`
-/

namespace A018900.P527640491722488516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098354 (n + 1) - A130328 n

end

end A018900.P527640491722488516

namespace A018900

/-- `A098354(n+1)-A130328(n)` -/
def P527640491722488516.Spec : Prop :=
  ∀ n, P527640491722488516.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P3532963697318210234

`A136318(n+1)-A140513(n)`
-/

namespace A018900.P3532963697318210234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136318 (n + 1) - A140513 n

end

end A018900.P3532963697318210234

namespace A018900

/-- `A136318(n+1)-A140513(n)` -/
def P3532963697318210234.Spec : Prop :=
  ∀ n, P3532963697318210234.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P7325448420267674800

`A130328(n)+2*A059268(n)`
-/

namespace A018900.P7325448420267674800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130328 n + 2 * A059268 n

end

end A018900.P7325448420267674800

namespace A018900

/-- `A130328(n)+2*A059268(n)` -/
def P7325448420267674800.Spec : Prop :=
  ∀ n, P7325448420267674800.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P17909029678078888416

`(A130330(n)+2)*A059268(n)`
-/

namespace A018900.P17909029678078888416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A130330 n + 2) * A059268 n

end

end A018900.P17909029678078888416

namespace A018900

/-- `(A130330(n)+2)*A059268(n)` -/
def P17909029678078888416.Spec : Prop :=
  ∀ n, P17909029678078888416.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P7109802807951494221

`A059268(n)+2*A137688(n)`
-/

namespace A018900.P7109802807951494221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n + 2 * A137688 n

end

end A018900.P7109802807951494221

namespace A018900

/-- `A059268(n)+2*A137688(n)` -/
def P7109802807951494221.Spec : Prop :=
  ∀ n, P7109802807951494221.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P12898467620140937362

`2*A173786(n)-A059268(n)`
-/

namespace A018900.P12898467620140937362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173786 n - A059268 n

end

end A018900.P12898467620140937362

namespace A018900

/-- `2*A173786(n)-A059268(n)` -/
def P12898467620140937362.Spec : Prop :=
  ∀ n, P12898467620140937362.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P4422827554611189510

`2*A140513(n)-A130328(n)`
-/

namespace A018900.P4422827554611189510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A140513 n - A130328 n

end

end A018900.P4422827554611189510

namespace A018900

/-- `2*A140513(n)-A130328(n)` -/
def P4422827554611189510.Spec : Prop :=
  ∀ n, P4422827554611189510.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P15287392804630071941

`A173786(n)+A140513(n)/2`
-/

namespace A018900.P15287392804630071941
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173786 n : ℚ) + (A140513 n : ℚ) / 2

end

end A018900.P15287392804630071941

namespace A018900

/-- `A173786(n)+A140513(n)/2` -/
def P15287392804630071941.Spec : Prop :=
  ∀ n, P15287392804630071941.a n = (A018900 (n + 1) : ℚ)

end A018900

/-! ## A018900.P8938696216933667266

`xor(A130328(n), A204985(n+1))`
-/

namespace A018900.P8938696216933667266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A130328 n) (A204985 (n + 1))

end

end A018900.P8938696216933667266

namespace A018900

/-- `xor(A130328(n), A204985(n+1))` -/
def P8938696216933667266.Spec : Prop :=
  ∀ n, P8938696216933667266.a n = A018900 (n + 1)

end A018900

/-! ## A018900.P17674974873128035737

`∪[A007283(n), A136318(n+1)]`
-/

namespace A018900.P17674974873128035737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A018900.P17674974873128035737

namespace A018900

/-- `∪[A007283(n), A136318(n+1)]` -/
def P17674974873128035737.Spec : Prop :=
  ∀ n, (P17674974873128035737.a n : ℤ) = A018900 (n + 1)

end A018900

/-! ## A018900.P13305863758750528697

`(A090988(n+1)+1)*A059268(n)`
-/

namespace A018900.P13305863758750528697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A090988 (n + 1) + 1) * A059268 n

end

end A018900.P13305863758750528697

namespace A018900

/-- `(A090988(n+1)+1)*A059268(n)` -/
def P13305863758750528697.Spec : Prop :=
  ∀ n, P13305863758750528697.a n = A018900 (n + 1)

end A018900

/-!
# A018901: Central hexanomial coefficients: largest coefficient of (1 + x + ... + x^5)^n.

The programs for A018901, there is no canonical definition to state claims against.
-/

/-! ## A018901.P7333973855244791926

`A077042(eq[6, A002262(n)])`
-/

namespace A018901.P7333973855244791926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A018901.P7333973855244791926

/-! ## A018901.P7521038453676921644

`A077042(A167487(n+5)-1)`
-/

namespace A018901.P7521038453676921644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A167487 (n + 5) - 1).toNat

end

end A018901.P7521038453676921644

/-! ## A018901.P13789150951523544932

`A077042(A000124(n+6)+5)`
-/

namespace A018901.P13789150951523544932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A000124 (n + 6) + 5).toNat

end

end A018901.P13789150951523544932

/-! ## A018901.P13736857919885870974

`A077042(eq[7, A002260(n+1)])`
-/

namespace A018901.P13736857919885870974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A018901.P13736857919885870974

/-! ## A018901.P13298742380186498486

`A077042(A002620(n+3)+A002620(n+10))`
-/

namespace A018901.P13298742380186498486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077042 (A002620 (n + 3) + A002620 (n + 10)).toNat

end

end A018901.P13298742380186498486

/-!
# A018902: a(n+2) = 5*a(n+1) - 3*a(n).

The programs for A018902, the canonical program `A018902.P6341118804113423850` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018902 has offset 0).

The definition of A018902 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A018902.anchor : A018902 0 = 1 ∧ A018902 1 = 4 ∧ ∀ n, A018902 (n + 2) = 5 * A018902 (n + 1) - 3 * A018902 n` in `Proof.A018.A018902`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A018902.P5963703497955737272

`ogf((1-x)/(1-5x+3x^2))`
-/

namespace A018902.P5963703497955737272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -5, 3] n

end

end A018902.P5963703497955737272

namespace A018902

/-- `ogf((1-x)/(1-5x+3x^2))` -/
def P5963703497955737272.Spec : Prop :=
  ∀ n, P5963703497955737272.a n = A018902 n

end A018902

/-! ## A018902.P6341118804113423850

`5*a(n-1)-3*a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018902

/-- `5*a(n-1)-3*a(n-2)` -/
def P6341118804113423850.Spec : Prop :=
  ∀ n, P6341118804113423850.a n = A018902 n

theorem P6341118804113423850.correct : P6341118804113423850.Spec := by
  intro n
  simp only [A018902]

end A018902

/-! ## A018902.P17237883339412702826

`lcm(5, a(n-1))-lcm(3, a(n-2))` with `a(0)=1, a(1)=4`
-/

namespace A018902.P17237883339412702826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - (Int.lcm 3 (a (n - 2)) : ℤ)

end

end A018902.P17237883339412702826

namespace A018902

/-- `lcm(5, a(n-1))-lcm(3, a(n-2))` -/
def P17237883339412702826.Spec : Prop :=
  ∀ n, P17237883339412702826.a n = A018902 n

end A018902

/-! ## A018902.P2676989425198002643

`∑[A095934(n)]`
-/

namespace A018902.P2676989425198002643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095934 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018902.P2676989425198002643

namespace A018902

/-- `∑[A095934(n)]` -/
def P2676989425198002643.Spec : Prop :=
  ∀ n, P2676989425198002643.a n = A018902 n

end A018902

/-! ## A018902.P14891175642596098923

`A095940(n+1)`
-/

namespace A018902.P14891175642596098923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 (n + 1)

end

end A018902.P14891175642596098923

namespace A018902

/-- `A095940(n+1)` -/
def P14891175642596098923.Spec : Prop :=
  ∀ n, P14891175642596098923.a n = A018902 n

end A018902

/-! ## A018902.P1473565366416581653

`∑[abs(Δ[A095940(n)])]`
-/

namespace A018902.P1473565366416581653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018902.P1473565366416581653

namespace A018902

/-- `∑[abs(Δ[A095940(n)])]` -/
def P1473565366416581653.Spec : Prop :=
  ∀ n, P1473565366416581653.a n = A018902 n

end A018902

/-! ## A018902.P9218393754600238482

`A081704(n+1)/3`
-/

namespace A018902.P9218393754600238482
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A081704 (n + 1) : ℚ) / 3

end

end A018902.P9218393754600238482

namespace A018902

/-- `A081704(n+1)/3` -/
def P9218393754600238482.Spec : Prop :=
  ∀ n, P9218393754600238482.a n = (A018902 n : ℚ)

end A018902

/-! ## A018902.P1670221832876883153

`record[A095940(abs(1-n))]`
-/

namespace A018902.P1670221832876883153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095940 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018902.P1670221832876883153

namespace A018902

/-- `record[A095940(abs(1-n))]` -/
def P1670221832876883153.Spec : Prop :=
  ∀ n, P1670221832876883153.a n = A018902 n

end A018902

/-! ## A018902.P6224122837290003460

`A188707(n)-a(n-1)` with `a(0)=1`
-/

namespace A018902.P6224122837290003460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A188707 n - a (n - 1)

end

end A018902.P6224122837290003460

namespace A018902

/-- `A188707(n)-a(n-1)` -/
def P6224122837290003460.Spec : Prop :=
  ∀ n, P6224122837290003460.a n = A018902 n

end A018902

/-! ## A018902.P10915788014409591980

`A010903(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A018902.P10915788014409591980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A010903 (n - 1) + a (n - 1)

end

end A018902.P10915788014409591980

namespace A018902

/-- `A010903(n-1)+a(n-1)` -/
def P10915788014409591980.Spec : Prop :=
  ∀ n, P10915788014409591980.a n = A018902 n

end A018902

/-! ## A018902.P5757273181763329479

`A095939(n)+2*a(n-1)` with `a(0)=1`
-/

namespace A018902.P5757273181763329479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A095939 n + 2 * a (n - 1)

end

end A018902.P5757273181763329479

namespace A018902

/-- `A095939(n)+2*a(n-1)` -/
def P5757273181763329479.Spec : Prop :=
  ∀ n, P5757273181763329479.a n = A018902 n

end A018902

/-! ## A018902.P418833815857056950

`A010903(n)-Δ[A081704(n)]`
-/

namespace A018902.P418833815857056950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010903 n - (f1 (n + 1) - f1 n)

end

end A018902.P418833815857056950

namespace A018902

/-- `A010903(n)-Δ[A081704(n)]` -/
def P418833815857056950.Spec : Prop :=
  ∀ n, P418833815857056950.a n = A018902 n

end A018902

/-! ## A018902.P1521570838104471375

`Δ[A081704(n)-A052961(n)]`
-/

namespace A018902.P1521570838104471375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n - A052961 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018902.P1521570838104471375

namespace A018902

/-- `Δ[A081704(n)-A052961(n)]` -/
def P1521570838104471375.Spec : Prop :=
  ∀ n, P1521570838104471375.a n = A018902 n

end A018902

/-! ## A018902.P10856969271793917655

`Δ[A081704(n)]-A116415(n)`
-/

namespace A018902.P10856969271793917655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081704 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A116415 n

end

end A018902.P10856969271793917655

namespace A018902

/-- `Δ[A081704(n)]-A116415(n)` -/
def P10856969271793917655.Spec : Prop :=
  ∀ n, P10856969271793917655.a n = A018902 n

end A018902

/-! ## A018902.P2182113042359988636

`A010903(n)-A095939(n+1)`
-/

namespace A018902.P2182113042359988636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010903 n - A095939 (n + 1)

end

end A018902.P2182113042359988636

namespace A018902

/-- `A010903(n)-A095939(n+1)` -/
def P2182113042359988636.Spec : Prop :=
  ∀ n, P2182113042359988636.a n = A018902 n

end A018902

/-! ## A018902.P11790860790750388411

`A052961(n+1)-A081704(n)`
-/

namespace A018902.P11790860790750388411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052961 (n + 1) - A081704 n

end

end A018902.P11790860790750388411

namespace A018902

/-- `A052961(n+1)-A081704(n)` -/
def P11790860790750388411.Spec : Prop :=
  ∀ n, P11790860790750388411.a n = A018902 n

end A018902

/-! ## A018902.P7683256326556493272

`A095939(n+1)-A116415(n)`
-/

namespace A018902.P7683256326556493272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095939 (n + 1) - A116415 n

end

end A018902.P7683256326556493272

namespace A018902

/-- `A095939(n+1)-A116415(n)` -/
def P7683256326556493272.Spec : Prop :=
  ∀ n, P7683256326556493272.a n = A018902 n

end A018902

/-! ## A018902.P6578315200258961979

`(A109114(n)+A052961(n))/2`
-/

namespace A018902.P6578315200258961979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109114 n + A052961 n : ℚ) / 2

end

end A018902.P6578315200258961979

namespace A018902

/-- `(A109114(n)+A052961(n))/2` -/
def P6578315200258961979.Spec : Prop :=
  ∀ n, P6578315200258961979.a n = (A018902 n : ℚ)

end A018902

/-! ## A018902.P15325486853988642915

`2*A095934(n)-A095939(n)`
-/

namespace A018902.P15325486853988642915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A095934 n - A095939 n

end

end A018902.P15325486853988642915

namespace A018902

/-- `2*A095934(n)-A095939(n)` -/
def P15325486853988642915.Spec : Prop :=
  ∀ n, P15325486853988642915.a n = A018902 n

end A018902

/-! ## A018902.P4303381430653898899

`2*A116415(n)-A109114(n)`
-/

namespace A018902.P4303381430653898899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A116415 n - A109114 n

end

end A018902.P4303381430653898899

namespace A018902

/-- `2*A116415(n)-A109114(n)` -/
def P4303381430653898899.Spec : Prop :=
  ∀ n, P4303381430653898899.a n = A018902 n

end A018902

/-!
# A018903: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(1,5).

The programs for A018903, the canonical program `A018903.P17493620103304522199` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018903 has offset 0).

The definition of A018903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018903.P6927129716004777072

`ogf((1-x)/(1-6x+4x^2))`
-/

namespace A018903.P6927129716004777072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -6, 4] n

end

end A018903.P6927129716004777072

namespace A018903

/-- `ogf((1-x)/(1-6x+4x^2))` -/
def P6927129716004777072.Spec : Prop :=
  ∀ n, P6927129716004777072.a n = A018903 n

end A018903

/-! ## A018903.P17493620103304522199

`6*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018903

/-- `6*a(n-1)-4*a(n-2)` -/
def P17493620103304522199.Spec : Prop :=
  ∀ n, P17493620103304522199.a n = A018903 n

theorem P17493620103304522199.correct : P17493620103304522199.Spec := by
  intro n
  simp only [A018903]

end A018903

/-! ## A018903.P878637770959684569

`2^(n-1)*A000045(2*n+3)`
-/

namespace A018903.P878637770959684569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A000045 (2 * n + 3) : ℚ)

end

end A018903.P878637770959684569

namespace A018903

/-- `2^(n-1)*A000045(2*n+3)` -/
def P878637770959684569.Spec : Prop :=
  ∀ n, P878637770959684569.a n = (A018903 n : ℚ)

end A018903

/-! ## A018903.P5383024660790913902

`floor((sqrt(5)+3)*a(n-1))` with `a(0)=1`
-/

namespace A018903.P5383024660790913902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(Real.sqrt (5 : ℝ) + 3) * (a (n - 1) : ℝ)⌋

end

end A018903.P5383024660790913902

namespace A018903

/-- `floor((sqrt(5)+3)*a(n-1))` -/
def P5383024660790913902.Spec : Prop :=
  ∀ n, P5383024660790913902.a n = A018903 n

end A018903

/-! ## A018903.P16494908855854135709

`round((sqrt(5)+3)*a(n-1))` with `a(0)=1`
-/

namespace A018903.P16494908855854135709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (5 : ℝ) + 3) * (a (n - 1) : ℝ))

end

end A018903.P16494908855854135709

namespace A018903

/-- `round((sqrt(5)+3)*a(n-1))` -/
def P16494908855854135709.Spec : Prop :=
  ∀ n, P16494908855854135709.a n = A018903 n

end A018903

/-! ## A018903.P5663909277560316124

`floor(2*ϕ²*a(n-1))` with `a(0)=1`
-/

namespace A018903.P5663909277560316124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))⌋

end

end A018903.P5663909277560316124

namespace A018903

/-- `floor(2*ϕ²*a(n-1))` -/
def P5663909277560316124.Spec : Prop :=
  ∀ n, P5663909277560316124.a n = A018903 n

end A018903

/-! ## A018903.P7671322305306477419

`round(2*ϕ²*a(n-1))` with `a(0)=1`
-/

namespace A018903.P7671322305306477419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway (2 * (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)))

end

end A018903.P7671322305306477419

namespace A018903

/-- `round(2*ϕ²*a(n-1))` -/
def P7671322305306477419.Spec : Prop :=
  ∀ n, P7671322305306477419.a n = A018903 n

end A018903

/-! ## A018903.P17728914279558434613

`floor(2*ϕ*ϕ*a(n-1))` with `a(0)=1`
-/

namespace A018903.P17728914279558434613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊2 * (Real.goldenRatio * (Real.goldenRatio * (a (n - 1) : ℝ)))⌋

end

end A018903.P17728914279558434613

namespace A018903

/-- `floor(2*ϕ*ϕ*a(n-1))` -/
def P17728914279558434613.Spec : Prop :=
  ∀ n, P17728914279558434613.a n = A018903 n

end A018903

/-! ## A018903.P5601043335646523061

`2^(n-1)*A048575(n)`
-/

namespace A018903.P5601043335646523061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A048575 n : ℚ)

end

end A018903.P5601043335646523061

namespace A018903

/-- `2^(n-1)*A048575(n)` -/
def P5601043335646523061.Spec : Prop :=
  ∀ n, P5601043335646523061.a n = (A018903 n : ℚ)

end A018903

/-! ## A018903.P3013016802668686126

`2^(n-1)*A122367(n+1)`
-/

namespace A018903.P3013016802668686126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A122367 (n + 1) : ℚ)

end

end A018903.P3013016802668686126

namespace A018903

/-- `2^(n-1)*A122367(n+1)` -/
def P3013016802668686126.Spec : Prop :=
  ∀ n, P3013016802668686126.a n = (A018903 n : ℚ)

end A018903

/-! ## A018903.P14131203283255422849

`2^(n-1)*A001519(n+2)`
-/

namespace A018903.P14131203283255422849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A001519 (n + 2) : ℚ)

end

end A018903.P14131203283255422849

namespace A018903

/-- `2^(n-1)*A001519(n+2)` -/
def P14131203283255422849.Spec : Prop :=
  ∀ n, P14131203283255422849.a n = (A018903 n : ℚ)

end A018903

/-! ## A018903.P12018169734638251784

`2^(n-2)*A126358(n+1)`
-/

namespace A018903.P12018169734638251784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A126358 (n + 1) : ℚ)

end

end A018903.P12018169734638251784

namespace A018903

/-- `2^(n-2)*A126358(n+1)` -/
def P12018169734638251784.Spec : Prop :=
  ∀ n, P12018169734638251784.a n = (A018903 n : ℚ)

end A018903

/-! ## A018903.P1142110363757965429

`2^(n-2)*A052995(n+2)`
-/

namespace A018903.P1142110363757965429
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A052995 (n + 2) : ℚ)

end

end A018903.P1142110363757965429

namespace A018903

/-- `2^(n-2)*A052995(n+2)` -/
def P1142110363757965429.Spec : Prop :=
  ∀ n, P1142110363757965429.a n = (A018903 n : ℚ)

end A018903

/-! ## A018903.P6652397753115691435

`2^(n-2)*A055819(n+2)`
-/

namespace A018903.P6652397753115691435
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A055819 (n + 2) : ℚ)

end

end A018903.P6652397753115691435

namespace A018903

/-- `2^(n-2)*A055819(n+2)` -/
def P6652397753115691435.Spec : Prop :=
  ∀ n, P6652397753115691435.a n = (A018903 n : ℚ)

end A018903

/-! ## A018903.P9043922257387691415

`(A001611(2*n+3)-1)*2^(n-1)`
-/

namespace A018903.P9043922257387691415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001611 (2 * n + 3) - 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A018903.P9043922257387691415

namespace A018903

/-- `(A001611(2*n+3)-1)*2^(n-1)` -/
def P9043922257387691415.Spec : Prop :=
  ∀ n, P9043922257387691415.a n = (A018903 n : ℚ)

end A018903

/-! ## A018903.P7950881858015903998

`A098648(n)+2*A084326(n)`
-/

namespace A018903.P7950881858015903998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098648 n + 2 * A084326 n

end

end A018903.P7950881858015903998

namespace A018903

/-- `A098648(n)+2*A084326(n)` -/
def P7950881858015903998.Spec : Prop :=
  ∀ n, P7950881858015903998.a n = A018903 n

end A018903

/-! ## A018903.P6044082082350225259

`lcm(A104537(n), A195549(n+1))`
-/

namespace A018903.P6044082082350225259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A104537 n) (A195549 (n + 1))

end

end A018903.P6044082082350225259

namespace A018903

/-- `lcm(A104537(n), A195549(n+1))` -/
def P6044082082350225259.Spec : Prop :=
  ∀ n, (P6044082082350225259.a n : ℤ) = A018903 n

end A018903

/-! ## A018903.P16088072917690753483

`A011782(n)*A071679(Δ[n²])`
-/

namespace A018903.P16088072917690753483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n * A071679 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A018903.P16088072917690753483

namespace A018903

/-- `A011782(n)*A071679(Δ[n²])` -/
def P16088072917690753483.Spec : Prop :=
  ∀ n, P16088072917690753483.a n = A018903 n

end A018903

/-! ## A018903.P654746830702039637

`A084326(n)+A080878(2*n+1)`
-/

namespace A018903.P654746830702039637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084326 n + A080878 (2 * n + 1)

end

end A018903.P654746830702039637

namespace A018903

/-- `A084326(n)+A080878(2*n+1)` -/
def P654746830702039637.Spec : Prop :=
  ∀ n, P654746830702039637.a n = A018903 n

end A018903

/-! ## A018903.P12524817344772353237

`A000045(2*(n+1)+1)/2*A000079(n)`
-/

namespace A018903.P12524817344772353237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (2 * (n + 1) + 1) : ℚ) / 2 * (A000079 n : ℚ)

end

end A018903.P12524817344772353237

namespace A018903

/-- `A000045(2*(n+1)+1)/2*A000079(n)` -/
def P12524817344772353237.Spec : Prop :=
  ∀ n, P12524817344772353237.a n = (A018903 n : ℚ)

end A018903

/-!
# A018904: Define the sequence S(a(0),a(1)) by a(n+2) is the least integer such that a(n+2)/a(n+1) > a(n+1)/a(n) for n >= 0. This is S(1,6).

The programs for A018904, the canonical program `A018904.P14658239581481791556` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018904 has offset 0).

The definition of A018904 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018904.P959636707177229841

`ogf((1-x)/(1-7x+5x^2))`
-/

namespace A018904.P959636707177229841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -7, 5] n

end

end A018904.P959636707177229841

namespace A018904

/-- `ogf((1-x)/(1-7x+5x^2))` -/
def P959636707177229841.Spec : Prop :=
  ∀ n, P959636707177229841.a n = A018904 n

end A018904

/-! ## A018904.P14658239581481791556

`7*a(n-1)-5*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018904

/-- `7*a(n-1)-5*a(n-2)` -/
def P14658239581481791556.Spec : Prop :=
  ∀ n, P14658239581481791556.a n = A018904 n

theorem P14658239581481791556.correct : P14658239581481791556.Spec := by
  intro n
  simp only [A018904]

end A018904

/-! ## A018904.P9634308545252298536

`Δ[A190974(n)]`
-/

namespace A018904.P9634308545252298536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190974 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018904.P9634308545252298536

namespace A018904

/-- `Δ[A190974(n)]` -/
def P9634308545252298536.Spec : Prop :=
  ∀ n, P9634308545252298536.a n = A018904 n

end A018904

/-! ## A018904.P10300796961086472447

`A190974(n+1)-A190974(n)`
-/

namespace A018904.P10300796961086472447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190974 (n + 1) - A190974 n

end

end A018904.P10300796961086472447

namespace A018904

/-- `A190974(n+1)-A190974(n)` -/
def P10300796961086472447.Spec : Prop :=
  ∀ n, P10300796961086472447.a n = A018904 n

end A018904

/-! ## A018904.P6594216719582531786

`A147837(n)+∑[round(A147837(n)/5)]`
-/

namespace A018904.P6594216719582531786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A147837 n : ℚ) / 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147837 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018904.P6594216719582531786

namespace A018904

/-- `A147837(n)+∑[round(A147837(n)/5)]` -/
def P6594216719582531786.Spec : Prop :=
  ∀ n, P6594216719582531786.a n = A018904 n

end A018904

/-! ## A018904.P7164968627704172819

`A147837(n+1)/5`
-/

namespace A018904.P7164968627704172819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147837 (n + 1) : ℚ) / 5

end

end A018904.P7164968627704172819

namespace A018904

/-- `A147837(n+1)/5` -/
def P7164968627704172819.Spec : Prop :=
  ∀ n, P7164968627704172819.a n = (A018904 n : ℚ)

end A018904

/-! ## A018904.P198511807804733149

`record[A147837(abs(1-n))/5]`
-/

namespace A018904.P198511807804733149
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147837 |1 - (n : ℤ)|.toNat : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018904.P198511807804733149

namespace A018904

/-- `record[A147837(abs(1-n))/5]` -/
def P198511807804733149.Spec : Prop :=
  ∀ n, P198511807804733149.a n = (A018904 n : ℚ)

end A018904

/-! ## A018904.P13804678090405688342

`A228352(A052905(n+3))`
-/

namespace A018904.P13804678090405688342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228352 (A052905 (n + 3)).toNat

end

end A018904.P13804678090405688342

namespace A018904

/-- `A228352(A052905(n+3))` -/
def P13804678090405688342.Spec : Prop :=
  ∀ n, P13804678090405688342.a n = A018904 n

end A018904

/-! ## A018904.P11737294821741089720

`floor(a(n-1)²/a(n-2))+1` with `a(0)=1, a(1)=6`
-/

namespace A018904.P11737294821741089720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋ + 1

end

end A018904.P11737294821741089720

namespace A018904

/-- `floor(a(n-1)²/a(n-2))+1` -/
def P11737294821741089720.Spec : Prop :=
  ∀ n, P11737294821741089720.a n = A018904 n

end A018904

/-!
# A018906: Define the Shallit sequence S(a_0,a_1) by a_{n+2} is the least integer > a_{n+1}^2/a_n for n >= 0. This is S(2,6).

The programs for A018906, the canonical program `A018906.P6515240892391476921` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018906 has offset 0).

The definition of A018906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 197 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A018906.P6515240892391476921

`floor(a(n-1)/a(n-2)*a(n-1))+1` with `a(0)=2, a(1)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018906

/-- `floor(a(n-1)/a(n-2)*a(n-1))+1` -/
def P6515240892391476921.Spec : Prop :=
  ∀ n, P6515240892391476921.a n = A018906 n

theorem P6515240892391476921.correct : P6515240892391476921.Spec := by
  intro n
  simp only [A018906]

end A018906

/-! ## A018906.P13133628151397141196

`1+floor(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=6`
-/

namespace A018906.P13133628151397141196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  1 + ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A018906.P13133628151397141196

namespace A018906

/-- `1+floor(a(n-1)²/a(n-2))` -/
def P13133628151397141196.Spec : Prop :=
  ∀ n, P13133628151397141196.a n = A018906 n

theorem P13133628151397141196.correct : P13133628151397141196.Spec := by
  intro n
  simp only [A018906, Nat.add_sub_cancel, A018906.P13133628151397141196.a, A018906.P6515240892391476921.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A018906

/-! ## A018906.P15517691667219457544

`A014010(n)-A185284(2*n+1)`
-/

namespace A018906.P15517691667219457544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014010 n - A185284 (2 * n + 1)

end

end A018906.P15517691667219457544

namespace A018906

/-- `A014010(n)-A185284(2*n+1)` -/
def P15517691667219457544.Spec : Prop :=
  ∀ n, P15517691667219457544.a n = A018906 n

end A018906

/-! ## A018906.P1377439282056624591

`A014038(A013915(n))+A014010(n)`
-/

namespace A018906.P1377439282056624591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014038 (A013915 n).toNat + A014010 n

end

end A018906.P1377439282056624591

namespace A018906

/-- `A014038(A013915(n))+A014010(n)` -/
def P1377439282056624591.Spec : Prop :=
  ∀ n, P1377439282056624591.a n = A018906 n

end A018906

/-! ## A018906.P7282413362925496608

`A014010(n)-A185284(A005408(n))²`
-/

namespace A018906.P7282413362925496608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014010 n - A185284 (A005408 n).toNat ^ 2

end

end A018906.P7282413362925496608

namespace A018906

/-- `A014010(n)-A185284(A005408(n))²` -/
def P7282413362925496608.Spec : Prop :=
  ∀ n, P7282413362925496608.a n = A018906 n

end A018906

/-!
# A018907: Define the sequence S(a_0,a_1) by a_{n+2} is the least integer such that a_{n+2}/a_{n+1} > a_{n+1}/a_n for n >= 0. This is S(2,7).

The programs for A018907, the canonical program `A018907.P8741823358117644135` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018907 has offset 0).

The definition of A018907 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018907.P8741823358117644135

`1+floor(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018907

/-- `1+floor(a(n-1)²/a(n-2))` -/
def P8741823358117644135.Spec : Prop :=
  ∀ n, P8741823358117644135.a n = A018907 n

theorem P8741823358117644135.correct : P8741823358117644135.Spec := by
  intro n
  simp only [A018907]

end A018907

/-! ## A018907.P2407357736571680325

`A004396(A117630(2*a(n-1)))` with `a(0)=2`
-/

namespace A018907.P2407357736571680325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A004396 (A117630 (2 * a (n - 1)).toNat).toNat

end

end A018907.P2407357736571680325

namespace A018907

/-- `A004396(A117630(2*a(n-1)))` -/
def P2407357736571680325.Spec : Prop :=
  ∀ n, P2407357736571680325.a n = A018907 n

end A018907

/-!
# A018908: Define sequence S(a_0,a_1) by a_{n+2} is least integer such that a_{n+2}/a_{n+1}>a_{n+1}/a_n for n >= 0. This is S(3,4).

The programs for A018908, the canonical program `A018908.P7228138761740664973` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018908 has offset 0).

The definition of A018908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018908.P7228138761740664973

`1+floor(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=4`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018908

/-- `1+floor(a(n-1)²/a(n-2))` -/
def P7228138761740664973.Spec : Prop :=
  ∀ n, P7228138761740664973.a n = A018908 n

theorem P7228138761740664973.correct : P7228138761740664973.Spec := by
  intro n
  simp only [A018908]

end A018908

/-! ## A018908.P11737746306588718853

`ogf((3-5x+3x^2-2x^3)/(1-3x+3x^2-2x^3+x^4))`
-/

namespace A018908.P11737746306588718853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -5, 3, -2] [1, -3, 3, -2, 1] n

end

end A018908.P11737746306588718853

namespace A018908

/-- `ogf((3-5x+3x^2-2x^3)/(1-3x+3x^2-2x^3+x^4))` -/
def P11737746306588718853.Spec : Prop :=
  ∀ n, P11737746306588718853.a n = A018908 n

end A018908

/-! ## A018908.P667055688195776631

`record[a(n-2)-a(n-3)]+1` with `a(0)=2, a(1)=3, a(2)=2, a(3)=1, a(4)=1, a(5)=1`
-/

namespace A018908.P667055688195776631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 2, 1, 1, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1

end

end A018908.P667055688195776631

namespace A018908

/-- `record[a(n-2)-a(n-3)]+1` -/
def P667055688195776631.Spec : Prop :=
  ∀ n, P667055688195776631.a n = A018908 n

end A018908

/-! ## A018908.P1341525330737543199

`floor(a(n-1)/a(n-2)*a(n-1))+1` with `a(0)=3, a(1)=4`
-/

namespace A018908.P1341525330737543199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋ + 1

end

end A018908.P1341525330737543199

namespace A018908

/-- `floor(a(n-1)/a(n-2)*a(n-1))+1` -/
def P1341525330737543199.Spec : Prop :=
  ∀ n, P1341525330737543199.a n = A018908 n

theorem P1341525330737543199.correct : P1341525330737543199.Spec := by
  intro n
  simp only [A018908, Nat.add_sub_cancel, A018908.P1341525330737543199.a, A018908.P7228138761740664973.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A018908

/-! ## A018908.P10918031016636241387

`A005314(n+2)+1`
-/

namespace A018908.P10918031016636241387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n + 2) + 1

end

end A018908.P10918031016636241387

namespace A018908

/-- `A005314(n+2)+1` -/
def P10918031016636241387.Spec : Prop :=
  ∀ n, P10918031016636241387.a n = A018908 n

end A018908

/-! ## A018908.P11695936995315916015

`A289692(n+2)+2`
-/

namespace A018908.P11695936995315916015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289692 (n + 2) + 2

end

end A018908.P11695936995315916015

namespace A018908

/-- `A289692(n+2)+2` -/
def P11695936995315916015.Spec : Prop :=
  ∀ n, P11695936995315916015.a n = A018908 n

end A018908

/-! ## A018908.P5616267283535267879

`A052954(2*n+5)`
-/

namespace A018908.P5616267283535267879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052954 (2 * n + 5)

end

end A018908.P5616267283535267879

namespace A018908

/-- `A052954(2*n+5)` -/
def P5616267283535267879.Spec : Prop :=
  ∀ n, P5616267283535267879.a n = A018908 n

end A018908

/-! ## A018908.P6785842888566471643

`A023434(Δ[n²])+2`
-/

namespace A018908.P6785842888566471643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A018908.P6785842888566471643

namespace A018908

/-- `A023434(Δ[n²])+2` -/
def P6785842888566471643.Spec : Prop :=
  ∀ n, P6785842888566471643.a n = A018908 n

end A018908

/-! ## A018908.P14966367762982486918

`∑[A005251(n+2)]+2`
-/

namespace A018908.P14966367762982486918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A018908.P14966367762982486918

namespace A018908

/-- `∑[A005251(n+2)]+2` -/
def P14966367762982486918.Spec : Prop :=
  ∀ n, P14966367762982486918.a n = A018908 n

end A018908

/-! ## A018908.P8435734923249116199

`A134816(2*(n+2))+1`
-/

namespace A018908.P8435734923249116199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * (n + 2)) + 1

end

end A018908.P8435734923249116199

namespace A018908

/-- `A134816(2*(n+2))+1` -/
def P8435734923249116199.Spec : Prop :=
  ∀ n, P8435734923249116199.a n = A018908 n

end A018908

/-! ## A018908.P260670838347074533

`A228361(2*n+3)+1`
-/

namespace A018908.P260670838347074533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (2 * n + 3) + 1

end

end A018908.P260670838347074533

namespace A018908

/-- `A228361(2*n+3)+1` -/
def P260670838347074533.Spec : Prop :=
  ∀ n, P260670838347074533.a n = A018908 n

end A018908

/-! ## A018908.P11765748318421721357

`A182097(2*n+5)+1`
-/

namespace A018908.P11765748318421721357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (2 * n + 5) + 1

end

end A018908.P11765748318421721357

namespace A018908

/-- `A182097(2*n+5)+1` -/
def P11765748318421721357.Spec : Prop :=
  ∀ n, P11765748318421721357.a n = A018908 n

end A018908

/-! ## A018908.P10698346449920671504

`A127682(4*n+6)+1`
-/

namespace A018908.P10698346449920671504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127682 (4 * n + 6) + 1

end

end A018908.P10698346449920671504

namespace A018908

/-- `A127682(4*n+6)+1` -/
def P10698346449920671504.Spec : Prop :=
  ∀ n, P10698346449920671504.a n = A018908 n

end A018908

/-! ## A018908.P16145437973527042106

`A007383(2*(n+1))+n+3`
-/

namespace A018908.P16145437973527042106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007383 (2 * (n + 1)) + (n + 3 : ℤ)

end

end A018908.P16145437973527042106

namespace A018908

/-- `A007383(2*(n+1))+n+3` -/
def P16145437973527042106.Spec : Prop :=
  ∀ n, P16145437973527042106.a n = A018908 n

end A018908

/-! ## A018908.P17042992003872104900

`A164001(A004277(n)+1)+1`
-/

namespace A018908.P17042992003872104900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (A004277 n + 1).toNat + 1

end

end A018908.P17042992003872104900

namespace A018908

/-- `A164001(A004277(n)+1)+1` -/
def P17042992003872104900.Spec : Prop :=
  ∀ n, P17042992003872104900.a n = A018908 n

end A018908

/-! ## A018908.P16985517845771976446

`A164001(A051755(n+2)-1)+1`
-/

namespace A018908.P16985517845771976446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (A051755 (n + 2) - 1).toNat + 1

end

end A018908.P16985517845771976446

namespace A018908

/-- `A164001(A051755(n+2)-1)+1` -/
def P16985517845771976446.Spec : Prop :=
  ∀ n, P16985517845771976446.a n = A018908 n

end A018908

/-! ## A018908.P3727456643785420579

`A114775(A308607(n+4)-1)+1`
-/

namespace A018908.P3727456643785420579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114775 (A308607 (n + 4) - 1).toNat + 1

end

end A018908.P3727456643785420579

namespace A018908

/-- `A114775(A308607(n+4)-1)+1` -/
def P3727456643785420579.Spec : Prop :=
  ∀ n, P3727456643785420579.a n = A018908 n

end A018908

/-! ## A018908.P7871648631822602375

`A060945(n+1)+A181532(n+1)+1`
-/

namespace A018908.P7871648631822602375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060945 (n + 1) + (A181532 (n + 1) + 1)

end

end A018908.P7871648631822602375

namespace A018908

/-- `A060945(n+1)+A181532(n+1)+1` -/
def P7871648631822602375.Spec : Prop :=
  ∀ n, P7871648631822602375.a n = A018908 n

end A018908

/-! ## A018908.P2566870281569184578

`A164001(2*n+1)+A000007(n)+1`
-/

namespace A018908.P2566870281569184578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * n + 1) + (A000007 n + 1)

end

end A018908.P2566870281569184578

namespace A018908

/-- `A164001(2*n+1)+A000007(n)+1` -/
def P2566870281569184578.Spec : Prop :=
  ∀ n, P2566870281569184578.a n = A018908 n

end A018908

/-! ## A018908.P17024802117039875129

`A164001(2*n+1)+A019590(n+2)+1`
-/

namespace A018908.P17024802117039875129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * n + 1) + (A019590 (n + 2) + 1)

end

end A018908.P17024802117039875129

namespace A018908

/-- `A164001(2*n+1)+A019590(n+2)+1` -/
def P17024802117039875129.Spec : Prop :=
  ∀ n, P17024802117039875129.a n = A018908 n

end A018908

/-!
# A018909: Define the sequence S(a_0,a_1) by a_{n+2} is the least integer such that a_{n+2}/a_{n+1}>a_{n+1}/a_n for n >= 0. This is S(3,6).

The programs for A018909, the canonical program `A018909.P1927574934073751296` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018909 has offset 0).

The definition of A018909 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018909.P1927574934073751296

`1+floor(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018909

/-- `1+floor(a(n-1)²/a(n-2))` -/
def P1927574934073751296.Spec : Prop :=
  ∀ n, P1927574934073751296.a n = A018909 n

theorem P1927574934073751296.correct : P1927574934073751296.Spec := by
  intro n
  simp only [A018909]

end A018909

/-! ## A018909.P1093891198295089746

`floor(a(n-1)/a(n-2)*a(n-1))+1` with `a(0)=3, a(1)=6`
-/

namespace A018909.P1093891198295089746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋ + 1

end

end A018909.P1093891198295089746

namespace A018909

/-- `floor(a(n-1)/a(n-2)*a(n-1))+1` -/
def P1093891198295089746.Spec : Prop :=
  ∀ n, P1093891198295089746.a n = A018909 n

theorem P1093891198295089746.correct : P1093891198295089746.Spec := by
  intro n
  simp only [A018909, Nat.add_sub_cancel, A018909.P1093891198295089746.a, A018909.P1927574934073751296.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A018909

/-! ## A018909.P13012048253697335878

`ceil(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=6, a(2)=13`
-/

namespace A018909.P13012048253697335878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 6, 13] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A018909.P13012048253697335878

namespace A018909

/-- `ceil(a(n-1)²/a(n-2))` -/
def P13012048253697335878.Spec : Prop :=
  ∀ n, P13012048253697335878.a n = A018909 n

end A018909

/-! ## A018909.P15266159584171741018

`A002265(13*A052534(n))`
-/

namespace A018909.P15266159584171741018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (13 * A052534 n).toNat

end

end A018909.P15266159584171741018

namespace A018909

/-- `A002265(13*A052534(n))` -/
def P15266159584171741018.Spec : Prop :=
  ∀ n, P15266159584171741018.a n = A018909 n

end A018909

/-! ## A018909.P13153578508039580013

`A002265(lcm(13, A052534(n)))`
-/

namespace A018909.P13153578508039580013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (Int.lcm 13 (A052534 n))

end

end A018909.P13153578508039580013

namespace A018909

/-- `A002265(lcm(13, A052534(n)))` -/
def P13153578508039580013.Spec : Prop :=
  ∀ n, P13153578508039580013.a n = A018909 n

end A018909

/-!
# A018910: Pisot sequence L(4,5).

The programs for A018910, the canonical program `A018910.P6801859677616987351` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018910 has offset 0).

The definition of A018910 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018910.P15991811167011758475

`ogf((4-3x-3x^2)/(1-2x+x^3))`
-/

namespace A018910.P15991811167011758475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, -3] [1, -2, 0, 1] n

end

end A018910.P15991811167011758475

namespace A018910

/-- `ogf((4-3x-3x^2)/(1-2x+x^3))` -/
def P15991811167011758475.Spec : Prop :=
  ∀ n, P15991811167011758475.a n = A018910 n

end A018910

/-! ## A018910.P12039071179355311092

`A157725(n+3)`
-/

namespace A018910.P12039071179355311092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157725 (n + 3)

end

end A018910.P12039071179355311092

namespace A018910

/-- `A157725(n+3)` -/
def P12039071179355311092.Spec : Prop :=
  ∀ n, P12039071179355311092.a n = A018910 n

end A018910

/-! ## A018910.P9834270586554845524

`A000045(n+3)+2`
-/

namespace A018910.P9834270586554845524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 3) + 2

end

end A018910.P9834270586554845524

namespace A018910

/-- `A000045(n+3)+2` -/
def P9834270586554845524.Spec : Prop :=
  ∀ n, P9834270586554845524.a n = A018910 n

end A018910

/-! ## A018910.P6801859677616987351

`2*a(n-1)-a(n-3)` with `a(0)=4, a(1)=5, a(2)=7`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018910

/-- `2*a(n-1)-a(n-3)` -/
def P6801859677616987351.Spec : Prop :=
  ∀ n, P6801859677616987351.a n = A018910 n

theorem P6801859677616987351.correct : P6801859677616987351.Spec := by
  intro n
  simp only [A018910]

end A018910

/-! ## A018910.P9506158410150737653

`ceil(a(n-1)²/a(n-2))` with `a(0)=4, a(1)=5`
-/

namespace A018910.P9506158410150737653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉

end

end A018910.P9506158410150737653

namespace A018910

/-- `ceil(a(n-1)²/a(n-2))` -/
def P9506158410150737653.Spec : Prop :=
  ∀ n, P9506158410150737653.a n = A018910 n

end A018910

/-! ## A018910.P13100873737761193966

`∑[ogf((-4+3x+3x^2)/(-1+x+x^2))]`
-/

namespace A018910.P13100873737761193966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -3, -3] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018910.P13100873737761193966

namespace A018910

/-- `∑[ogf((-4+3x+3x^2)/(-1+x+x^2))]` -/
def P13100873737761193966.Spec : Prop :=
  ∀ n, P13100873737761193966.a n = A018910 n

end A018910

/-! ## A018910.P4584267926786233373

`floor(ϕ*a(n-1))-1` with `a(0)=4`
-/

namespace A018910.P4584267926786233373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌊Real.goldenRatio * (a (n - 1) : ℝ)⌋ - 1

end

end A018910.P4584267926786233373

namespace A018910

/-- `floor(ϕ*a(n-1))-1` -/
def P4584267926786233373.Spec : Prop :=
  ∀ n, P4584267926786233373.a n = A018910 n

end A018910

/-! ## A018910.P17484421017671388094

`ceil(ϕ*(a(n-1)-1))` with `a(0)=4`
-/

namespace A018910.P17484421017671388094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  ⌈Real.goldenRatio * (a (n - 1) - 1 : ℝ)⌉

end

end A018910.P17484421017671388094

namespace A018910

/-- `ceil(ϕ*(a(n-1)-1))` -/
def P17484421017671388094.Spec : Prop :=
  ∀ n, P17484421017671388094.a n = A018910 n

end A018910

/-! ## A018910.P11584021512070803957

`round(ϕ*a(n-1))-1` with `a(0)=4`
-/

namespace A018910.P11584021512070803957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (a (n - 1) : ℝ)) - 1

end

end A018910.P11584021512070803957

namespace A018910

/-- `round(ϕ*a(n-1))-1` -/
def P11584021512070803957.Spec : Prop :=
  ∀ n, P11584021512070803957.a n = A018910 n

end A018910

/-! ## A018910.P13683220063202768117

`a(n-1)+a(n-2)-2` with `a(0)=4, a(1)=5`
-/

namespace A018910.P13683220063202768117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n a =>
  a (n - 1) + (a (n - 2) - 2)

end

end A018910.P13683220063202768117

namespace A018910

/-- `a(n-1)+a(n-2)-2` -/
def P13683220063202768117.Spec : Prop :=
  ∀ n, P13683220063202768117.a n = A018910 n

end A018910

/-! ## A018910.P16255991687555105990

`a(n-1)-(2-a(n-2))` with `a(0)=4, a(1)=5`
-/

namespace A018910.P16255991687555105990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 5] fun n a =>
  a (n - 1) - (2 - a (n - 2))

end

end A018910.P16255991687555105990

namespace A018910

/-- `a(n-1)-(2-a(n-2))` -/
def P16255991687555105990.Spec : Prop :=
  ∀ n, P16255991687555105990.a n = A018910 n

end A018910

/-! ## A018910.P8210479415106010996

`A048577(n)+1`
-/

namespace A018910.P8210479415106010996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048577 n + 1

end

end A018910.P8210479415106010996

namespace A018910

/-- `A048577(n)+1` -/
def P8210479415106010996.Spec : Prop :=
  ∀ n, P8210479415106010996.a n = A018910 n

end A018910

/-! ## A018910.P15847854615213607051

`A020695(n)+2`
-/

namespace A018910.P15847854615213607051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020695 n + 2

end

end A018910.P15847854615213607051

namespace A018910

/-- `A020695(n)+2` -/
def P15847854615213607051.Spec : Prop :=
  ∀ n, P15847854615213607051.a n = A018910 n

end A018910

/-! ## A018910.P12831909447758250306

`A001911(n)+4`
-/

namespace A018910.P12831909447758250306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n + 4

end

end A018910.P12831909447758250306

namespace A018910

/-- `A001911(n)+4` -/
def P12831909447758250306.Spec : Prop :=
  ∀ n, P12831909447758250306.a n = A018910 n

end A018910

/-! ## A018910.P15005094823023661442

`A169622(n+1)-1`
-/

namespace A018910.P15005094823023661442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169622 (n + 1) - 1

end

end A018910.P15005094823023661442

namespace A018910

/-- `A169622(n+1)-1` -/
def P15005094823023661442.Spec : Prop :=
  ∀ n, P15005094823023661442.a n = A018910 n

end A018910

/-! ## A018910.P3863448532510699316

`A001611(n+3)+1`
-/

namespace A018910.P3863448532510699316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 3) + 1

end

end A018910.P3863448532510699316

namespace A018910

/-- `A001611(n+3)+1` -/
def P3863448532510699316.Spec : Prop :=
  ∀ n, P3863448532510699316.a n = A018910 n

end A018910

/-! ## A018910.P6522757746285676457

`2+A000045(3+n)`
-/

namespace A018910.P6522757746285676457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 + A000045 (3 + n)

end

end A018910.P6522757746285676457

namespace A018910

/-- `2+A000045(3+n)` -/
def P6522757746285676457.Spec : Prop :=
  ∀ n, P6522757746285676457.a n = A018910 n

end A018910

/-! ## A018910.P3850298437283958045

`A157726(n+3)-1`
-/

namespace A018910.P3850298437283958045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 (n + 3) - 1

end

end A018910.P3850298437283958045

namespace A018910

/-- `A157726(n+3)-1` -/
def P3850298437283958045.Spec : Prop :=
  ∀ n, P3850298437283958045.a n = A018910 n

end A018910

/-! ## A018910.P7732335682595266208

`A000071(n+3)+3`
-/

namespace A018910.P7732335682595266208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 3) + 3

end

end A018910.P7732335682595266208

namespace A018910

/-- `A000071(n+3)+3` -/
def P7732335682595266208.Spec : Prop :=
  ∀ n, P7732335682595266208.a n = A018910 n

end A018910

/-! ## A018910.P16285990576358928697

`A157727(n+3)-2`
-/

namespace A018910.P16285990576358928697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157727 (n + 3) - 2

end

end A018910.P16285990576358928697

namespace A018910

/-- `A157727(n+3)-2` -/
def P16285990576358928697.Spec : Prop :=
  ∀ n, P16285990576358928697.a n = A018910 n

end A018910

/-!
# A018911: Expansion of 1/((1-4x)(1-5x)(1-9x)).

The programs for A018911, the canonical program `A018911.P2659993065472359965` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018911 has offset 0).

The definition of A018911 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018911.P2659993065472359965

`14*a(n-1)-45*a(n-2)+4^n` with `a(0)=1, a(1)=18`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018911

/-- `14*a(n-1)-45*a(n-2)+4^n` -/
def P2659993065472359965.Spec : Prop :=
  ∀ n, P2659993065472359965.a n = A018911 n

theorem P2659993065472359965.correct : P2659993065472359965.Spec := by
  intro n
  simp only [A018911]

end A018911

/-! ## A018911.P8491582240062162871

`16*4^n/5-25*5^n/4+81*9^n/20`
-/

namespace A018911.P8491582240062162871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (16 * 4 ^ n : ℚ) / 5 - (25 * 5 ^ n : ℚ) / 4 + (81 * 9 ^ n : ℚ) / 20

end

end A018911.P8491582240062162871

namespace A018911

/-- `16*4^n/5-25*5^n/4+81*9^n/20` -/
def P8491582240062162871.Spec : Prop :=
  ∀ n, P8491582240062162871.a n = (A018911 n : ℚ)

theorem P8491582240062162871.correct : P8491582240062162871.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A018911, Nat.add_sub_cancel, A018911.P8491582240062162871.a, A018911.P2659993065472359965.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A018911, Nat.add_sub_cancel, A018911.P8491582240062162871.a, A018911.P2659993065472359965.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A018911

/-! ## A018911.P5244113437330410437

`A016163(n+1)%A016153(n+2)`
-/

namespace A018911.P5244113437330410437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016163 (n + 1)) (A016153 (n + 2))

end

end A018911.P5244113437330410437

namespace A018911

/-- `A016163(n+1)%A016153(n+2)` -/
def P5244113437330410437.Spec : Prop :=
  ∀ n, P5244113437330410437.a n = A018911 n

end A018911

/-!
# A018912: Expansion of 1/((1-4x)(1-5x)(1-10x)).

The programs for A018912, the canonical program `A018912.P3402712426235349924` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018912 has offset 0).

The definition of A018912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018912.P3402712426235349924

`15*a(n-1)-50*a(n-2)+4^n` with `a(0)=1, a(1)=19`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018912

/-- `15*a(n-1)-50*a(n-2)+4^n` -/
def P3402712426235349924.Spec : Prop :=
  ∀ n, P3402712426235349924.a n = A018912 n

theorem P3402712426235349924.correct : P3402712426235349924.Spec := by
  intro n
  simp only [A018912]

end A018912

/-! ## A018912.P2039704396247612922

`A016157(n)+5*a(n-1)` with `a(0)=1`
-/

namespace A018912.P2039704396247612922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A016157 n + 5 * a (n - 1)

end

end A018912.P2039704396247612922

namespace A018912

/-- `A016157(n)+5*a(n-1)` -/
def P2039704396247612922.Spec : Prop :=
  ∀ n, P2039704396247612922.a n = A018912 n

end A018912

/-! ## A018912.P9398656301140141458

`A016225(n)+A021774(n)-A016237(n)`
-/

namespace A018912.P9398656301140141458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016225 n + (A021774 n - A016237 n)

end

end A018912.P9398656301140141458

namespace A018912

/-- `A016225(n)+A021774(n)-A016237(n)` -/
def P9398656301140141458.Spec : Prop :=
  ∀ n, P9398656301140141458.a n = A018912 n

end A018912

/-! ## A018912.P3888060255873075050

`A000079(n+1)*A247313(n+1)-A000351(n+1)`
-/

namespace A018912.P3888060255873075050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) * A247313 (n + 1) - A000351 (n + 1)

end

end A018912.P3888060255873075050

namespace A018912

/-- `A000079(n+1)*A247313(n+1)-A000351(n+1)` -/
def P3888060255873075050.Spec : Prop :=
  ∀ n, P3888060255873075050.a n = A018912 n

end A018912

/-! ## A018912.P7073682302372169990

`Δ[A016237(n)-A016225(n)]`
-/

namespace A018912.P7073682302372169990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016237 n - A016225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018912.P7073682302372169990

namespace A018912

/-- `Δ[A016237(n)-A016225(n)]` -/
def P7073682302372169990.Spec : Prop :=
  ∀ n, P7073682302372169990.a n = A018912 n

end A018912

/-!
# A018913: a(n) = 9*a(n - 1) - a(n - 2) for n>1, a(0)=0, a(1)=1.

The programs for A018913, the canonical program `A018913.P2691531204528918259` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018913 has offset 0).

The definition of A018913 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-1)-a(n-2)` (program `A018913.P2691531204528918259`, by `A018913.P2691531204528918259.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A018913.P9515470689161466067

`ogf(x/(1-9x+x^2))`
-/

namespace A018913.P9515470689161466067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -9, 1] n

end

end A018913.P9515470689161466067

namespace A018913

/-- `ogf(x/(1-9x+x^2))` -/
def P9515470689161466067.Spec : Prop :=
  ∀ n, P9515470689161466067.a n = A018913 n

end A018913

/-! ## A018913.P2691531204528918259

`9*a(n-1)-a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018913

/-- `9*a(n-1)-a(n-2)` -/
def P2691531204528918259.Spec : Prop :=
  ∀ n, P2691531204528918259.a n = A018913 n

theorem P2691531204528918259.correct : P2691531204528918259.Spec := by
  intro n
  simp only [A018913]

end A018913

/-! ## A018913.P10210781825863960170

`∑{#}[n-1, C(n+#, 2*#+1)*7^#]`
-/

namespace A018913.P10210781825863960170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, Nat.choose (n + k) (2 * k + 1) * 7 ^ k

end

end A018913.P10210781825863960170

namespace A018913

/-- `∑{#}[n-1, C(n+#, 2*#+1)*7^#]` -/
def P10210781825863960170.Spec : Prop :=
  ∀ n, (P10210781825863960170.a n : ℤ) = A018913 n

end A018913

/-! ## A018913.P14263611662226807323

`(((9+sqrt(77))/2)^n-((9-sqrt(77))/2)^n)/sqrt(77)`
-/

namespace A018913.P14263611662226807323
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((9 + Real.sqrt (77 : ℝ)) / 2) ^ n - ((9 - Real.sqrt (77 : ℝ)) / 2) ^ n) / Real.sqrt (77 : ℝ)

end

end A018913.P14263611662226807323

namespace A018913

/-- `(((9+sqrt(77))/2)^n-((9-sqrt(77))/2)^n)/sqrt(77)` -/
def P14263611662226807323.Spec : Prop :=
  ∀ n, P14263611662226807323.a n = (A018913 n : ℝ)

theorem P14263611662226807323.correct : P14263611662226807323.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A018913, Nat.add_sub_cancel, A018913.P14263611662226807323.a, A018913.P2691531204528918259.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A018913, Nat.add_sub_cancel, A018913.P14263611662226807323.a, A018913.P2691531204528918259.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A018913

/-! ## A018913.P9590102110474250337

`a(n-1)/(1/3)²-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A018913.P9590102110474250337
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ 2 - a (n - 2)

end

end A018913.P9590102110474250337

namespace A018913

/-- `a(n-1)/(1/3)²-a(n-2)` -/
def P9590102110474250337.Spec : Prop :=
  ∀ n, P9590102110474250337.a n = (A018913 n : ℚ)

end A018913

/-! ## A018913.P11604463515476975389

`Δ[A048736(3*n)/4]`
-/

namespace A018913.P11604463515476975389
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048736 (3 * n) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018913.P11604463515476975389

namespace A018913

/-- `Δ[A048736(3*n)/4]` -/
def P11604463515476975389.Spec : Prop :=
  ∀ n, P11604463515476975389.a n = (A018913 n : ℚ)

end A018913

/-! ## A018913.P13148660762836317013

`A057081(n)-∑[A070998(n)]`
-/

namespace A018913.P13148660762836317013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057081 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018913.P13148660762836317013

namespace A018913

/-- `A057081(n)-∑[A070998(n)]` -/
def P13148660762836317013.Spec : Prop :=
  ∀ n, P13148660762836317013.a n = A018913 n

end A018913

/-! ## A018913.P8348999744143737156

`A048736(3*n+2)-A048736(3*n+1)`
-/

namespace A018913.P8348999744143737156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048736 (3 * n + 2) - A048736 (3 * n + 1)

end

end A018913.P8348999744143737156

namespace A018913

/-- `A048736(3*n+2)-A048736(3*n+1)` -/
def P8348999744143737156.Spec : Prop :=
  ∀ n, P8348999744143737156.a n = A018913 n

end A018913

/-! ## A018913.P2160604623004894982

`record[A048736(n)-A048736(A064429(n))]`
-/

namespace A018913.P2160604623004894982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048736 n - A048736 (A064429 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018913.P2160604623004894982

namespace A018913

/-- `record[A048736(n)-A048736(A064429(n))]` -/
def P2160604623004894982.Spec : Prop :=
  ∀ n, P2160604623004894982.a n = A018913 n

end A018913

/-!
# A018914: Pisot sequence T(2,5), a(n) = floor(a(n-1)^2/a(n-2)).

The programs for A018914, the canonical program `A018914.P12491829555803972000` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018914 has offset 0).

The definition of A018914 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A018914.P12491829555803972000`, by `A018914.P12491829555803972000.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A018914.P155615302143134595

`3*a(n-1)-2*a(n-2)+a(n-3)-a(n-6)` with `a(0)=2, a(1)=5, a(2)=12, a(3)=28, a(4)=65, a(5)=150`
-/

namespace A018914.P155615302143134595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 12, 28, 65, 150] fun n a =>
  3 * a (n - 1) - 2 * a (n - 2) + a (n - 3) - a (n - 6)

end

end A018914.P155615302143134595

namespace A018914

/-- `3*a(n-1)-2*a(n-2)+a(n-3)-a(n-6)` -/
def P155615302143134595.Spec : Prop :=
  ∀ n, P155615302143134595.a n = A018914 n

end A018914

/-! ## A018914.P12491829555803972000

`floor(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018914

/-- `floor(a(n-1)²/a(n-2))` -/
def P12491829555803972000.Spec : Prop :=
  ∀ n, P12491829555803972000.a n = A018914 n

theorem P12491829555803972000.correct : P12491829555803972000.Spec := by
  intro n
  simp only [A018914]

end A018914

/-! ## A018914.P13721130177666973336

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=2, a(1)=5`
-/

namespace A018914.P13721130177666973336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A018914.P13721130177666973336

namespace A018914

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P13721130177666973336.Spec : Prop :=
  ∀ n, P13721130177666973336.a n = A018914 n

theorem P13721130177666973336.correct : P13721130177666973336.Spec := by
  intro n
  simp only [A018914, Nat.add_sub_cancel, A018914.P13721130177666973336.a, A018914.P12491829555803972000.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A018914

/-! ## A018914.P12333219366674763968

`ceil(a(n-1)/a(n-2)*a(n-1))-1` with `a(0)=2, a(1)=5`
-/

namespace A018914.P12333219366674763968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉ - 1

end

end A018914.P12333219366674763968

namespace A018914

/-- `ceil(a(n-1)/a(n-2)*a(n-1))-1` -/
def P12333219366674763968.Spec : Prop :=
  ∀ n, P12333219366674763968.a n = A018914 n

end A018914

/-! ## A018914.P8764869818627674261

`floor(a(n-1)^2/a(n-2))` with `a(0)=2, a(1)=5`
-/

namespace A018914.P8764869818627674261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A018914.P8764869818627674261

namespace A018914

/-- `floor(a(n-1)^2/a(n-2))` -/
def P8764869818627674261.Spec : Prop :=
  ∀ n, P8764869818627674261.a n = A018914 n

theorem P8764869818627674261.correct : P8764869818627674261.Spec := by
  intro n
  simp only [A018914, Nat.add_sub_cancel, A018914.P8764869818627674261.a, A018914.P12491829555803972000.a, SequenceMachineLib.memo_apply]

end A018914

/-! ## A018914.P11863346806827121399

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=2, a(1)=5, a(2)=12`
-/

namespace A018914.P11863346806827121399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 5, 12] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A018914.P11863346806827121399

namespace A018914

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P11863346806827121399.Spec : Prop :=
  ∀ n, P11863346806827121399.a n = A018914 n

end A018914

/-!
# A018915: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(2,6).

The programs for A018915, the canonical program `A018915.P18291154071917566273` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018915 has offset 0).

The definition of A018915 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018915.P18291154071917566273

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=2, a(1)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018915

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P18291154071917566273.Spec : Prop :=
  ∀ n, P18291154071917566273.a n = A018915 n

theorem P18291154071917566273.correct : P18291154071917566273.Spec := by
  intro n
  simp only [A018915]

end A018915

/-! ## A018915.P2965718078073594907

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=2, a(1)=6, a(2)=17`
-/

namespace A018915.P2965718078073594907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 17] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A018915.P2965718078073594907

namespace A018915

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P2965718078073594907.Spec : Prop :=
  ∀ n, P2965718078073594907.a n = A018915 n

end A018915

/-! ## A018915.P2247593784245284813

`ceil(a(n-1)/a(n-2)*a(n-1))-1` with `a(0)=2, a(1)=6`
-/

namespace A018915.P2247593784245284813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6] fun n a =>
  ⌈(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌉ - 1

end

end A018915.P2247593784245284813

namespace A018915

/-- `ceil(a(n-1)/a(n-2)*a(n-1))-1` -/
def P2247593784245284813.Spec : Prop :=
  ∀ n, P2247593784245284813.a n = A018915 n

theorem P2247593784245284813.correct : P2247593784245284813.Spec := by
  intro n
  simp only [A018915, Nat.add_sub_cancel, A018915.P2247593784245284813.a, A018915.P18291154071917566273.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A018915

/-! ## A018915.P3659648361634399398

`floor(a(n-1)²/a(n-2))` with `a(0)=2, a(1)=6, a(2)=17`
-/

namespace A018915.P3659648361634399398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 6, 17] fun n a =>
  ⌊(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A018915.P3659648361634399398

namespace A018915

/-- `floor(a(n-1)²/a(n-2))` -/
def P3659648361634399398.Spec : Prop :=
  ∀ n, P3659648361634399398.a n = A018915 n

end A018915

/-! ## A018915.P5205829846089438581

`A019487(A046469(n))`
-/

namespace A018915.P5205829846089438581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019487 (A046469 n).toNat

end

end A018915.P5205829846089438581

namespace A018915

/-- `A019487(A046469(n))` -/
def P5205829846089438581.Spec : Prop :=
  ∀ n, P5205829846089438581.a n = A018915 n

end A018915

/-!
# A018916: Define the sequence T(a(0),a(1)) by a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n) for n >= 0. This is T(2,8).

The programs for A018916, the canonical program `A018916.P15228623675390035031` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018916 has offset 0).

The definition of A018916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018916.P9303634466975725184

`ogf((2-x^2)/(1-4x+2x^3))`
-/

namespace A018916.P9303634466975725184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 0, -1] [1, -4, 0, 2] n

end

end A018916.P9303634466975725184

namespace A018916

/-- `ogf((2-x^2)/(1-4x+2x^3))` -/
def P9303634466975725184.Spec : Prop :=
  ∀ n, P9303634466975725184.a n = A018916 n

end A018916

/-! ## A018916.P15228623675390035031

`4*a(n-1)-2*a(n-3)` with `a(0)=2, a(1)=8, a(2)=31`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018916

/-- `4*a(n-1)-2*a(n-3)` -/
def P15228623675390035031.Spec : Prop :=
  ∀ n, P15228623675390035031.a n = A018916 n

theorem P15228623675390035031.correct : P15228623675390035031.Spec := by
  intro n
  simp only [A018916]

end A018916

/-! ## A018916.P5802879506137315939

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=2, a(1)=8`
-/

namespace A018916.P5802879506137315939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A018916.P5802879506137315939

namespace A018916

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P5802879506137315939.Spec : Prop :=
  ∀ n, P5802879506137315939.a n = A018916 n

end A018916

/-! ## A018916.P6955345498145153327

`floor((a(n-1)²-1)/a(n-2))` with `a(0)=2, a(1)=8`
-/

namespace A018916.P6955345498145153327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 8] fun n a =>
  ⌊(a (n - 1) ^ 2 - 1 : ℚ) / (a (n - 2) : ℚ)⌋

end

end A018916.P6955345498145153327

namespace A018916

/-- `floor((a(n-1)²-1)/a(n-2))` -/
def P6955345498145153327.Spec : Prop :=
  ∀ n, P6955345498145153327.a n = A018916 n

end A018916

/-!
# A018917: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(3,5).

The programs for A018917, the canonical program `A018917.P12509437242239400346` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018917 has offset 0).

The definition of A018917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018917.P12509437242239400346

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=3, a(1)=5`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018917

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P12509437242239400346.Spec : Prop :=
  ∀ n, P12509437242239400346.a n = A018917 n

theorem P12509437242239400346.correct : P12509437242239400346.Spec := by
  intro n
  simp only [A018917]

end A018917

/-! ## A018917.P4100211861284736179

`ogf((3+2x-x^3)/(1-x-x^2+x^4))`
-/

namespace A018917.P4100211861284736179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 2, 0, -1] [1, -1, -1, 0, 1] n

end

end A018917.P4100211861284736179

namespace A018917

/-- `ogf((3+2x-x^3)/(1-x-x^2+x^4))` -/
def P4100211861284736179.Spec : Prop :=
  ∀ n, P4100211861284736179.a n = A018917 n

end A018917

/-! ## A018917.P4731134266779832471

`a(n-2)+a(n-3)+4` with `a(0)=3, a(1)=5, a(2)=8`
-/

namespace A018917.P4731134266779832471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 5, 8] fun n a =>
  a (n - 2) + (a (n - 3) + 4)

end

end A018917.P4731134266779832471

namespace A018917

/-- `a(n-2)+a(n-3)+4` -/
def P4731134266779832471.Spec : Prop :=
  ∀ n, (P4731134266779832471.a n : ℤ) = A018917 n

end A018917

/-! ## A018917.P5335373718945027111

`A167385(n+1)`
-/

namespace A018917.P5335373718945027111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167385 (n + 1)

end

end A018917.P5335373718945027111

namespace A018917

/-- `A167385(n+1)` -/
def P5335373718945027111.Spec : Prop :=
  ∀ n, P5335373718945027111.a n = A018917 n

end A018917

/-! ## A018917.P18314835842421979707

`A020716(n)-3`
-/

namespace A018917.P18314835842421979707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020716 n - 3

end

end A018917.P18314835842421979707

namespace A018917

/-- `A020716(n)-3` -/
def P18314835842421979707.Spec : Prop :=
  ∀ n, P18314835842421979707.a n = A018917 n

end A018917

/-! ## A018917.P1456605253503682860

`A020720(n)-4`
-/

namespace A018917.P1456605253503682860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020720 n - 4

end

end A018917.P1456605253503682860

namespace A018917

/-- `A020720(n)-4` -/
def P1456605253503682860.Spec : Prop :=
  ∀ n, P1456605253503682860.a n = A018917 n

end A018917

/-! ## A018917.P2350165295545352115

`A164315(n+2)-1`
-/

namespace A018917.P2350165295545352115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 (n + 2) - 1

end

end A018917.P2350165295545352115

namespace A018917

/-- `A164315(n+2)-1` -/
def P2350165295545352115.Spec : Prop :=
  ∀ n, P2350165295545352115.a n = A018917 n

end A018917

/-! ## A018917.P18016617903208493551

`A054405(n+3)-2`
-/

namespace A018917.P18016617903208493551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 (n + 3) - 2

end

end A018917.P18016617903208493551

namespace A018917

/-- `A054405(n+3)-2` -/
def P18016617903208493551.Spec : Prop :=
  ∀ n, P18016617903208493551.a n = A018917 n

end A018917

/-! ## A018917.P9127695123672939794

`A096231(n+3)-4`
-/

namespace A018917.P9127695123672939794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096231 (n + 3) - 4

end

end A018917.P9127695123672939794

namespace A018917

/-- `A096231(n+3)-4` -/
def P9127695123672939794.Spec : Prop :=
  ∀ n, P9127695123672939794.a n = A018917 n

end A018917

/-! ## A018917.P4898071770601186810

`A164001(n+6)-4`
-/

namespace A018917.P4898071770601186810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 6) - 4

end

end A018917.P4898071770601186810

namespace A018917

/-- `A164001(n+6)-4` -/
def P4898071770601186810.Spec : Prop :=
  ∀ n, P4898071770601186810.a n = A018917 n

end A018917

/-! ## A018917.P14674207902135461964

`A182097(n+10)-4`
-/

namespace A018917.P14674207902135461964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 (n + 10) - 4

end

end A018917.P14674207902135461964

namespace A018917

/-- `A182097(n+10)-4` -/
def P14674207902135461964.Spec : Prop :=
  ∀ n, P14674207902135461964.a n = A018917 n

end A018917

/-! ## A018917.P11258079381971612510

`record[A167385(abs(1-n))]`
-/

namespace A018917.P11258079381971612510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167385 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018917.P11258079381971612510

namespace A018917

/-- `record[A167385(abs(1-n))]` -/
def P11258079381971612510.Spec : Prop :=
  ∀ n, P11258079381971612510.a n = A018917 n

end A018917

/-! ## A018917.P17211576193689708229

`∑[record[A000931(n)]]+2`
-/

namespace A018917.P17211576193689708229
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000931 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A018917.P17211576193689708229

namespace A018917

/-- `∑[record[A000931(n)]]+2` -/
def P17211576193689708229.Spec : Prop :=
  ∀ n, P17211576193689708229.a n = A018917 n

end A018917

/-! ## A018917.P15669773956616739270

`∑[record[A078027(n)]]+2`
-/

namespace A018917.P15669773956616739270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078027 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A018917.P15669773956616739270

namespace A018917

/-- `∑[record[A078027(n)]]+2` -/
def P15669773956616739270.Spec : Prop :=
  ∀ n, P15669773956616739270.a n = A018917 n

end A018917

/-! ## A018917.P4916481751441516553

`∑[record[A182097(n)]]+2`
-/

namespace A018917.P4916481751441516553
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182097 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A018917.P4916481751441516553

namespace A018917

/-- `∑[record[A182097(n)]]+2` -/
def P4916481751441516553.Spec : Prop :=
  ∀ n, P4916481751441516553.a n = A018917 n

end A018917

/-! ## A018917.P16587731460875422021

`∑[A164001(n+1)]+2`
-/

namespace A018917.P16587731460875422021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A018917.P16587731460875422021

namespace A018917

/-- `∑[A164001(n+1)]+2` -/
def P16587731460875422021.Spec : Prop :=
  ∀ n, P16587731460875422021.a n = A018917 n

end A018917

/-! ## A018917.P1170445302790811329

`∑[A228361(n+3)]+1`
-/

namespace A018917.P1170445302790811329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A018917.P1170445302790811329

namespace A018917

/-- `∑[A228361(n+3)]+1` -/
def P1170445302790811329.Spec : Prop :=
  ∀ n, P1170445302790811329.a n = A018917 n

end A018917

/-! ## A018917.P3335232890711185338

`∑[record[Δ[A023434(n)]]]+2`
-/

namespace A018917.P3335232890711185338
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A018917.P3335232890711185338

namespace A018917

/-- `∑[record[Δ[A023434(n)]]]+2` -/
def P3335232890711185338.Spec : Prop :=
  ∀ n, P3335232890711185338.a n = A018917 n

end A018917

/-! ## A018917.P18195836191886836411

`∑[A023434(n+1)]+n+2`
-/

namespace A018917.P18195836191886836411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 2 : ℤ)

end

end A018917.P18195836191886836411

namespace A018917

/-- `∑[A023434(n+1)]+n+2` -/
def P18195836191886836411.Spec : Prop :=
  ∀ n, P18195836191886836411.a n = A018917 n

end A018917

/-! ## A018917.P6728157212986859393

`a(n-1)+A000931(n+8)` with `a(0)=3`
-/

namespace A018917.P6728157212986859393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  a (n - 1) + A000931 (n + 8)

end

end A018917.P6728157212986859393

namespace A018917

/-- `a(n-1)+A000931(n+8)` -/
def P6728157212986859393.Spec : Prop :=
  ∀ n, P6728157212986859393.a n = A018917 n

end A018917

/-!
# A018918: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(3,6).

The programs for A018918, the canonical program `A018918.P16763505147382979294` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018918 has offset 0).

The definition of A018918 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018918.P16763505147382979294

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=3, a(1)=6`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018918

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P16763505147382979294.Spec : Prop :=
  ∀ n, P16763505147382979294.a n = A018918 n

theorem P16763505147382979294.correct : P16763505147382979294.Spec := by
  intro n
  simp only [A018918]

end A018918

/-! ## A018918.P13912872427262517501

`ogf((3-3x+2x^2-x^3)/(1-3x+3x^2-2x^3+x^4))`
-/

namespace A018918.P13912872427262517501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -3, 2, -1] [1, -3, 3, -2, 1] n

end

end A018918.P13912872427262517501

namespace A018918

/-- `ogf((3-3x+2x^2-x^3)/(1-3x+3x^2-2x^3+x^4))` -/
def P13912872427262517501.Spec : Prop :=
  ∀ n, P13912872427262517501.a n = A018918 n

end A018918

/-! ## A018918.P11406650196107893171

`record[a(n-2)-a(n-3)]-1` with `a(0)=4, a(1)=0, a(2)=0, a(3)=1`
-/

namespace A018918.P11406650196107893171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 0, 0, 1] fun n f1 =>
  f1 (n - 2) - f1 (n - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - 1

end

end A018918.P11406650196107893171

namespace A018918

/-- `record[a(n-2)-a(n-3)]-1` -/
def P11406650196107893171.Spec : Prop :=
  ∀ n, P11406650196107893171.a n = A018918 n

end A018918

/-! ## A018918.P3717327056357032035

`∑[floor(a(n-1)/a(n-2)*a(n-1))+1]-n` with `a(0)=3, a(1)=4`
-/

namespace A018918.P3717327056357032035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  ⌊(f1 (n - 1) : ℚ) / (f1 (n - 2) : ℚ) * (f1 (n - 1) : ℚ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A018918.P3717327056357032035

namespace A018918

/-- `∑[floor(a(n-1)/a(n-2)*a(n-1))+1]-n` -/
def P3717327056357032035.Spec : Prop :=
  ∀ n, P3717327056357032035.a n = A018918 n

end A018918

/-! ## A018918.P17652438637456871569

`A077855(n+1)`
-/

namespace A018918.P17652438637456871569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077855 (n + 1)

end

end A018918.P17652438637456871569

namespace A018918

/-- `A077855(n+1)` -/
def P17652438637456871569.Spec : Prop :=
  ∀ n, P17652438637456871569.a n = A018918 n

end A018918

/-! ## A018918.P13133696009141330629

`A010901(n)-1`
-/

namespace A018918.P13133696009141330629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010901 n - 1

end

end A018918.P13133696009141330629

namespace A018918

/-- `A010901(n)-1` -/
def P13133696009141330629.Spec : Prop :=
  ∀ n, P13133696009141330629.a n = A018918 n

end A018918

/-! ## A018918.P2680861218854861660

`A020736(n)-2`
-/

namespace A018918.P2680861218854861660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020736 n - 2

end

end A018918.P2680861218854861660

namespace A018918

/-- `A020736(n)-2` -/
def P2680861218854861660.Spec : Prop :=
  ∀ n, P2680861218854861660.a n = A018918 n

end A018918

/-! ## A018918.P11182008867712059159

`∑[A018908(n)]-n`
-/

namespace A018918.P11182008867712059159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018908 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A018918.P11182008867712059159

namespace A018918

/-- `∑[A018908(n)]-n` -/
def P11182008867712059159.Spec : Prop :=
  ∀ n, P11182008867712059159.a n = A018918 n

end A018918

/-! ## A018918.P3056393604323411655

`A023434(2*(n+2))`
-/

namespace A018918.P3056393604323411655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023434 (2 * (n + 2))

end

end A018918.P3056393604323411655

namespace A018918

/-- `A023434(2*(n+2))` -/
def P3056393604323411655.Spec : Prop :=
  ∀ n, P3056393604323411655.a n = A018918 n

end A018918

/-! ## A018918.P12216278660119096336

`A164315(2*n)+2`
-/

namespace A018918.P12216278660119096336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164315 (2 * n) + 2

end

end A018918.P12216278660119096336

namespace A018918

/-- `A164315(2*n)+2` -/
def P12216278660119096336.Spec : Prop :=
  ∀ n, P12216278660119096336.a n = A018918 n

end A018918

/-! ## A018918.P16711122884028024449

`A005251(n+5)-1`
-/

namespace A018918.P16711122884028024449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005251 (n + 5) - 1

end

end A018918.P16711122884028024449

namespace A018918

/-- `A005251(n+5)-1` -/
def P16711122884028024449.Spec : Prop :=
  ∀ n, P16711122884028024449.a n = A018918 n

end A018918

/-! ## A018918.P1419586005495857654

`A007383(2*n+5)`
-/

namespace A018918.P1419586005495857654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007383 (2 * n + 5)

end

end A018918.P1419586005495857654

namespace A018918

/-- `A007383(2*n+5)` -/
def P1419586005495857654.Spec : Prop :=
  ∀ n, P1419586005495857654.a n = A018918 n

end A018918

/-! ## A018918.P11251347983475253504

`A054405(Δ[n²])+1`
-/

namespace A018918.P11251347983475253504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054405 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A018918.P11251347983475253504

namespace A018918

/-- `A054405(Δ[n²])+1` -/
def P11251347983475253504.Spec : Prop :=
  ∀ n, P11251347983475253504.a n = A018918 n

end A018918

/-! ## A018918.P16785795349790985260

`record[A077855(abs(1-n))]`
-/

namespace A018918.P16785795349790985260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077855 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018918.P16785795349790985260

namespace A018918

/-- `record[A077855(abs(1-n))]` -/
def P16785795349790985260.Spec : Prop :=
  ∀ n, P16785795349790985260.a n = A018918 n

end A018918

/-! ## A018918.P11975178784143734138

`∑[A005314(n+2)]+1`
-/

namespace A018918.P11975178784143734138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005314 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A018918.P11975178784143734138

namespace A018918

/-- `∑[A005314(n+2)]+1` -/
def P11975178784143734138.Spec : Prop :=
  ∀ n, P11975178784143734138.a n = A018918 n

end A018918

/-! ## A018918.P10387187252867486724

`A164001(2*(n+2))-1`
-/

namespace A018918.P10387187252867486724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * (n + 2)) - 1

end

end A018918.P10387187252867486724

namespace A018918

/-- `A164001(2*(n+2))-1` -/
def P10387187252867486724.Spec : Prop :=
  ∀ n, P10387187252867486724.a n = A018918 n

end A018918

/-! ## A018918.P572777300303586053

`A228361(2*(n+3))-1`
-/

namespace A018918.P572777300303586053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228361 (2 * (n + 3)) - 1

end

end A018918.P572777300303586053

namespace A018918

/-- `A228361(2*(n+3))-1` -/
def P572777300303586053.Spec : Prop :=
  ∀ n, P572777300303586053.a n = A018918 n

end A018918

/-! ## A018918.P10009699024685078362

`A134816(2*n+7)-1`
-/

namespace A018918.P10009699024685078362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134816 (2 * n + 7) - 1

end

end A018918.P10009699024685078362

namespace A018918

/-- `A134816(2*n+7)-1` -/
def P10009699024685078362.Spec : Prop :=
  ∀ n, P10009699024685078362.a n = A018918 n

end A018918

/-! ## A018918.P5272510434142829434

`∑[A164001(2*n+1)]+2`
-/

namespace A018918.P5272510434142829434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164001 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A018918.P5272510434142829434

namespace A018918

/-- `∑[A164001(2*n+1)]+2` -/
def P5272510434142829434.Spec : Prop :=
  ∀ n, P5272510434142829434.a n = A018918 n

end A018918

/-! ## A018918.P15120884532801041782

`A368299(n+1)+A368299(n+2)`
-/

namespace A018918.P15120884532801041782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368299 (n + 1) + A368299 (n + 2)

end

end A018918.P15120884532801041782

namespace A018918

/-- `A368299(n+1)+A368299(n+2)` -/
def P15120884532801041782.Spec : Prop :=
  ∀ n, P15120884532801041782.a n = A018918 n

end A018918

/-!
# A018919: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(3,9).

The programs for A018919, the canonical program `A018919.P15004182511986428332` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018919 has offset 0).

The definition of A018919 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018919.P7480205053222883589

`ogf((3-x^2)/(1-3x+x^3))`
-/

namespace A018919.P7480205053222883589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 0, -1] [1, -3, 0, 1] n

end

end A018919.P7480205053222883589

namespace A018919

/-- `ogf((3-x^2)/(1-3x+x^3))` -/
def P7480205053222883589.Spec : Prop :=
  ∀ n, P7480205053222883589.a n = A018919 n

end A018919

/-! ## A018919.P15004182511986428332

`3*a(n-1)-a(n-3)` with `a(0)=3, a(1)=9, a(2)=26`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018919

/-- `3*a(n-1)-a(n-3)` -/
def P15004182511986428332.Spec : Prop :=
  ∀ n, P15004182511986428332.a n = A018919 n

theorem P15004182511986428332.correct : P15004182511986428332.Spec := by
  intro n
  simp only [A018919]

end A018919

/-! ## A018919.P3166306388539647629

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=3, a(1)=9`
-/

namespace A018919.P3166306388539647629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A018919.P3166306388539647629

namespace A018919

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P3166306388539647629.Spec : Prop :=
  ∀ n, P3166306388539647629.a n = A018919 n

end A018919

/-! ## A018919.P8659047460849569161

`A076264(n+1)`
-/

namespace A018919.P8659047460849569161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 (n + 1)

end

end A018919.P8659047460849569161

namespace A018919

/-- `A076264(n+1)` -/
def P8659047460849569161.Spec : Prop :=
  ∀ n, P8659047460849569161.a n = A018919 n

end A018919

/-! ## A018919.P11014624204512645521

`A123941(n+2)`
-/

namespace A018919.P11014624204512645521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 (n + 2)

end

end A018919.P11014624204512645521

namespace A018919

/-- `A123941(n+2)` -/
def P11014624204512645521.Spec : Prop :=
  ∀ n, P11014624204512645521.a n = A018919 n

end A018919

/-! ## A018919.P13834844883117844846

`Δ[A052963(n+1)]`
-/

namespace A018919.P13834844883117844846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018919.P13834844883117844846

namespace A018919

/-- `Δ[A052963(n+1)]` -/
def P13834844883117844846.Spec : Prop :=
  ∀ n, P13834844883117844846.a n = A018919 n

end A018919

/-! ## A018919.P16211874700628049862

`A187503(3*n+10)`
-/

namespace A018919.P16211874700628049862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (3 * n + 10)

end

end A018919.P16211874700628049862

namespace A018919

/-- `A187503(3*n+10)` -/
def P16211874700628049862.Spec : Prop :=
  ∀ n, P16211874700628049862.a n = A018919 n

end A018919

/-! ## A018919.P8489098145385160540

`record[A076264(abs(1-n))]`
-/

namespace A018919.P8489098145385160540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018919.P8489098145385160540

namespace A018919

/-- `record[A076264(abs(1-n))]` -/
def P8489098145385160540.Spec : Prop :=
  ∀ n, P8489098145385160540.a n = A018919 n

end A018919

/-! ## A018919.P2467943580764257101

`record[A123941(abs(2-n))]`
-/

namespace A018919.P2467943580764257101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123941 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018919.P2467943580764257101

namespace A018919

/-- `record[A123941(abs(2-n))]` -/
def P2467943580764257101.Spec : Prop :=
  ∀ n, P2467943580764257101.a n = A018919 n

end A018919

/-! ## A018919.P16792552087208345971

`∑[A052536(n+1)]+1`
-/

namespace A018919.P16792552087208345971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A018919.P16792552087208345971

namespace A018919

/-- `∑[A052536(n+1)]+1` -/
def P16792552087208345971.Spec : Prop :=
  ∀ n, P16792552087208345971.a n = A018919 n

end A018919

/-! ## A018919.P14723755555728056309

`A038197(3*(n+1)+2)`
-/

namespace A018919.P14723755555728056309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (3 * (n + 1) + 2)

end

end A018919.P14723755555728056309

namespace A018919

/-- `A038197(3*(n+1)+2)` -/
def P14723755555728056309.Spec : Prop :=
  ∀ n, P14723755555728056309.a n = A018919 n

end A018919

/-! ## A018919.P7756139193712833981

`A187506(3*(n+2)+1)`
-/

namespace A018919.P7756139193712833981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (3 * (n + 2) + 1)

end

end A018919.P7756139193712833981

namespace A018919

/-- `A187506(3*(n+2)+1)` -/
def P7756139193712833981.Spec : Prop :=
  ∀ n, P7756139193712833981.a n = A018919 n

end A018919

/-! ## A018919.P8379844953276047930

`A187505(3*(n+2)+2)`
-/

namespace A018919.P8379844953276047930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187505 (3 * (n + 2) + 2)

end

end A018919.P8379844953276047930

namespace A018919

/-- `A187505(3*(n+2)+2)` -/
def P8379844953276047930.Spec : Prop :=
  ∀ n, P8379844953276047930.a n = A018919 n

end A018919

/-! ## A018919.P13300797793974210201

`ratio[A076264(n)]*A076264(n)`
-/

namespace A018919.P13300797793974210201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℚ) / (f1 n : ℚ) * (A076264 n : ℚ)

end

end A018919.P13300797793974210201

namespace A018919

/-- `ratio[A076264(n)]*A076264(n)` -/
def P13300797793974210201.Spec : Prop :=
  ∀ n, P13300797793974210201.a n = (A018919 n : ℚ)

end A018919

/-! ## A018919.P11679957925650981793

`A052545(n+2)-A052536(n)`
-/

namespace A018919.P11679957925650981793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 (n + 2) - A052536 n

end

end A018919.P11679957925650981793

namespace A018919

/-- `A052545(n+2)-A052536(n)` -/
def P11679957925650981793.Spec : Prop :=
  ∀ n, P11679957925650981793.a n = A018919 n

end A018919

/-! ## A018919.P4767890090984344414

`Δ[A052536(n+1)]-A052536(n)`
-/

namespace A018919.P4767890090984344414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052536 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A052536 n

end

end A018919.P4767890090984344414

namespace A018919

/-- `Δ[A052536(n+1)]-A052536(n)` -/
def P4767890090984344414.Spec : Prop :=
  ∀ n, P4767890090984344414.a n = A018919 n

end A018919

/-! ## A018919.P7871970641556127173

`A052545(n)+Δ[2*A052536(n)]`
-/

namespace A018919.P7871970641556127173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A052536 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n + (f1 (n + 1) - f1 n)

end

end A018919.P7871970641556127173

namespace A018919

/-- `A052545(n)+Δ[2*A052536(n)]` -/
def P7871970641556127173.Spec : Prop :=
  ∀ n, P7871970641556127173.a n = A018919 n

end A018919

/-! ## A018919.P17817705575496174574

`A091024(n+1)+A091024(n+2)`
-/

namespace A018919.P17817705575496174574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091024 (n + 1) + A091024 (n + 2)

end

end A018919.P17817705575496174574

namespace A018919

/-- `A091024(n+1)+A091024(n+2)` -/
def P17817705575496174574.Spec : Prop :=
  ∀ n, P17817705575496174574.a n = A018919 n

end A018919

/-! ## A018919.P1395287798411407256

`A215448(n+2)+A052545(n+1)`
-/

namespace A018919.P1395287798411407256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215448 (n + 2) + A052545 (n + 1)

end

end A018919.P1395287798411407256

namespace A018919

/-- `A215448(n+2)+A052545(n+1)` -/
def P1395287798411407256.Spec : Prop :=
  ∀ n, P1395287798411407256.a n = A018919 n

end A018919

/-! ## A018919.P4257939285555043533

`A052963(n+2)-A052963(n+1)`
-/

namespace A018919.P4257939285555043533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052963 (n + 2) - A052963 (n + 1)

end

end A018919.P4257939285555043533

namespace A018919

/-- `A052963(n+2)-A052963(n+1)` -/
def P4257939285555043533.Spec : Prop :=
  ∀ n, P4257939285555043533.a n = A018919 n

end A018919

/-!
# A018920: Pisot sequence T(3,10), a(n) = floor(a(n-1)^2/a(n-2)).

The programs for A018920, the canonical program `A018920.P9688928498901660249` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018920 has offset 0).

The definition of A018920 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(a(n-1)²/a(n-2))` (program `A018920.P9688928498901660249`, by `A018920.P9688928498901660249.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A018920.P9688928498901660249

`floor(a(n-1)²/a(n-2))` with `a(0)=3, a(1)=10`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018920

/-- `floor(a(n-1)²/a(n-2))` -/
def P9688928498901660249.Spec : Prop :=
  ∀ n, P9688928498901660249.a n = A018920 n

theorem P9688928498901660249.correct : P9688928498901660249.Spec := by
  intro n
  simp only [A018920]

end A018920

/-! ## A018920.P2767539867929031858

`floor(a(n-1)/a(n-2)*a(n-1))` with `a(0)=3, a(1)=10`
-/

namespace A018920.P2767539867929031858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  ⌊(a (n - 1) : ℚ) / (a (n - 2) : ℚ) * (a (n - 1) : ℚ)⌋

end

end A018920.P2767539867929031858

namespace A018920

/-- `floor(a(n-1)/a(n-2)*a(n-1))` -/
def P2767539867929031858.Spec : Prop :=
  ∀ n, P2767539867929031858.a n = A018920 n

theorem P2767539867929031858.correct : P2767539867929031858.Spec := by
  intro n
  simp only [A018920, Nat.add_sub_cancel, A018920.P2767539867929031858.a, A018920.P9688928498901660249.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A018920

/-! ## A018920.P6298969677895964026

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=3, a(1)=10`
-/

namespace A018920.P6298969677895964026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A018920.P6298969677895964026

namespace A018920

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P6298969677895964026.Spec : Prop :=
  ∀ n, P6298969677895964026.a n = A018920 n

end A018920

/-!
# A018921: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(4,8).

The programs for A018921, the canonical program `A018921.P14332424406212899557` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018921 has offset 0).

The definition of A018921 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018921.P16497519738406543338

`ogf((4-x^2-2x^3)/(1-2x+x^4))`
-/

namespace A018921.P16497519738406543338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 0, -1, -2] [1, -2, 0, 0, 1] n

end

end A018921.P16497519738406543338

namespace A018921

/-- `ogf((4-x^2-2x^3)/(1-2x+x^4))` -/
def P16497519738406543338.Spec : Prop :=
  ∀ n, P16497519738406543338.a n = A018921 n

end A018921

/-! ## A018921.P14332424406212899557

`2*a(n-1)-a(n-4)` with `a(0)=4, a(1)=8, a(2)=15, a(3)=28`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018921

/-- `2*a(n-1)-a(n-4)` -/
def P14332424406212899557.Spec : Prop :=
  ∀ n, P14332424406212899557.a n = A018921 n

theorem P14332424406212899557.correct : P14332424406212899557.Spec := by
  intro n
  simp only [A018921]

end A018921

/-! ## A018921.P6283080224216720810

`A008937(n+3)`
-/

namespace A018921.P6283080224216720810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 (n + 3)

end

end A018921.P6283080224216720810

namespace A018921

/-- `A008937(n+3)` -/
def P6283080224216720810.Spec : Prop :=
  ∀ n, P6283080224216720810.a n = A018921 n

end A018921

/-! ## A018921.P622432957750732319

`A027084(n+3)+1`
-/

namespace A018921.P622432957750732319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027084 (n + 3) + 1

end

end A018921.P622432957750732319

namespace A018921

/-- `A027084(n+3)+1` -/
def P622432957750732319.Spec : Prop :=
  ∀ n, P622432957750732319.a n = A018921 n

end A018921

/-! ## A018921.P14346594135586782953

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=4, a(1)=8`
-/

namespace A018921.P14346594135586782953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4, 8] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A018921.P14346594135586782953

namespace A018921

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P14346594135586782953.Spec : Prop :=
  ∀ n, P14346594135586782953.a n = A018921 n

end A018921

/-! ## A018921.P13403830839914230517

`record[a(n-3)+a(n-2)+a(n-1)+1]` with `a(0)=4, a(1)=0, a(2)=1, a(3)=2, a(4)=4`
-/

namespace A018921.P13403830839914230517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0, 1, 2, 4] fun n f1 =>
  f1 (n - 3) + (f1 (n - 2) + f1 (n - 1) + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018921.P13403830839914230517

namespace A018921

/-- `record[a(n-3)+a(n-2)+a(n-1)+1]` -/
def P13403830839914230517.Spec : Prop :=
  ∀ n, (P13403830839914230517.a n : ℤ) = A018921 n

end A018921

/-! ## A018921.P1293172290075630621

`record[A008937(abs(3-n))]`
-/

namespace A018921.P1293172290075630621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018921.P1293172290075630621

namespace A018921

/-- `record[A008937(abs(3-n))]` -/
def P1293172290075630621.Spec : Prop :=
  ∀ n, P1293172290075630621.a n = A018921 n

end A018921

/-! ## A018921.P11579145127680815384

`∑[A282718(n+2)]+1`
-/

namespace A018921.P11579145127680815384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282718 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A018921.P11579145127680815384

namespace A018921

/-- `∑[A282718(n+2)]+1` -/
def P11579145127680815384.Spec : Prop :=
  ∀ n, P11579145127680815384.a n = A018921 n

end A018921

/-! ## A018921.P6454726817178790269

`∑[A000073(n+4)]+2`
-/

namespace A018921.P6454726817178790269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000073 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A018921.P6454726817178790269

namespace A018921

/-- `∑[A000073(n+4)]+2` -/
def P6454726817178790269.Spec : Prop :=
  ∀ n, P6454726817178790269.a n = A018921 n

end A018921

/-! ## A018921.P3718476380865197784

`∑[A308189(2*n+3)]+2`
-/

namespace A018921.P3718476380865197784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308189 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A018921.P3718476380865197784

namespace A018921

/-- `∑[A308189(2*n+3)]+2` -/
def P3718476380865197784.Spec : Prop :=
  ∀ n, P3718476380865197784.a n = A018921 n

end A018921

/-! ## A018921.P6629084250103447291

`∑[A089068(n+2)]+n+3`
-/

namespace A018921.P6629084250103447291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089068 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3 : ℤ)

end

end A018921.P6629084250103447291

namespace A018921

/-- `∑[A089068(n+2)]+n+3` -/
def P6629084250103447291.Spec : Prop :=
  ∀ n, P6629084250103447291.a n = A018921 n

end A018921

/-! ## A018921.P5916463240018525591

`∑[∑[∑[A000213(n)]]+1]+2`
-/

namespace A018921.P5916463240018525591
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A018921.P5916463240018525591

namespace A018921

/-- `∑[∑[∑[A000213(n)]]+1]+2` -/
def P5916463240018525591.Spec : Prop :=
  ∀ n, P5916463240018525591.a n = A018921 n

end A018921

/-! ## A018921.P5782669798035285040

`A154949(n+1)+A154949(n+2)`
-/

namespace A018921.P5782669798035285040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154949 (n + 1) + A154949 (n + 2)

end

end A018921.P5782669798035285040

namespace A018921

/-- `A154949(n+1)+A154949(n+2)` -/
def P5782669798035285040.Spec : Prop :=
  ∀ n, P5782669798035285040.a n = A018921 n

end A018921

/-! ## A018921.P5509389999427230450

`A202012(n+1)+A000213(n+3)`
-/

namespace A018921.P5509389999427230450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 (n + 1) + A000213 (n + 3)

end

end A018921.P5509389999427230450

namespace A018921

/-- `A202012(n+1)+A000213(n+3)` -/
def P5509389999427230450.Spec : Prop :=
  ∀ n, P5509389999427230450.a n = A018921 n

end A018921

/-! ## A018921.P12859539303793216632

`A248098(n+2)+A001644(n+2)`
-/

namespace A018921.P12859539303793216632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248098 (n + 2) + A001644 (n + 2)

end

end A018921.P12859539303793216632

namespace A018921

/-- `A248098(n+2)+A001644(n+2)` -/
def P12859539303793216632.Spec : Prop :=
  ∀ n, P12859539303793216632.a n = A018921 n

end A018921

/-! ## A018921.P5234973538260134739

`A325473(n+3)+A062544(n+1)`
-/

namespace A018921.P5234973538260134739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325473 (n + 3) + A062544 (n + 1)

end

end A018921.P5234973538260134739

namespace A018921

/-- `A325473(n+3)+A062544(n+1)` -/
def P5234973538260134739.Spec : Prop :=
  ∀ n, P5234973538260134739.a n = A018921 n

end A018921

/-! ## A018921.P6380148122517495073

`A202012(n+2)+A000073(n+3)`
-/

namespace A018921.P6380148122517495073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202012 (n + 2) + A000073 (n + 3)

end

end A018921.P6380148122517495073

namespace A018921

/-- `A202012(n+2)+A000073(n+3)` -/
def P6380148122517495073.Spec : Prop :=
  ∀ n, P6380148122517495073.a n = A018921 n

end A018921

/-! ## A018921.P15168547175412108879

`A213967(n+3)+A000073(n+2)`
-/

namespace A018921.P15168547175412108879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213967 (n + 3) + A000073 (n + 2)

end

end A018921.P15168547175412108879

namespace A018921

/-- `A213967(n+3)+A000073(n+2)` -/
def P15168547175412108879.Spec : Prop :=
  ∀ n, P15168547175412108879.a n = A018921 n

end A018921

/-! ## A018921.P1418277601607018017

`A248098(n+4)+A001590(n+2)`
-/

namespace A018921.P1418277601607018017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248098 (n + 4) + A001590 (n + 2)

end

end A018921.P1418277601607018017

namespace A018921

/-- `A248098(n+4)+A001590(n+2)` -/
def P1418277601607018017.Spec : Prop :=
  ∀ n, P1418277601607018017.a n = A018921 n

end A018921

/-! ## A018921.P30937910088031572

`A213967(n+3)+A213816(2*n+1)`
-/

namespace A018921.P30937910088031572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213967 (n + 3) + A213816 (2 * n + 1)

end

end A018921.P30937910088031572

namespace A018921

/-- `A213967(n+3)+A213816(2*n+1)` -/
def P30937910088031572.Spec : Prop :=
  ∀ n, P30937910088031572.a n = A018921 n

end A018921

/-!
# A018922: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(8,16).

The programs for A018922, the canonical program `A018922.P3352321963138477390` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018922 has offset 0).

The definition of A018922 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018922.P11163650477431750150

`ogf((8-x^2-2x^3-4x^4)/(1-2x+x^5))`
-/

namespace A018922.P11163650477431750150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 0, -1, -2, -4] [1, -2, 0, 0, 0, 1] n

end

end A018922.P11163650477431750150

namespace A018922

/-- `ogf((8-x^2-2x^3-4x^4)/(1-2x+x^5))` -/
def P11163650477431750150.Spec : Prop :=
  ∀ n, P11163650477431750150.a n = A018922 n

end A018922

/-! ## A018922.P3352321963138477390

`2*a(n-1)-a(n-5)` with `a(0)=8, a(1)=16, a(2)=31, a(3)=60, a(4)=116`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018922

/-- `2*a(n-1)-a(n-5)` -/
def P3352321963138477390.Spec : Prop :=
  ∀ n, P3352321963138477390.a n = A018922 n

theorem P3352321963138477390.correct : P3352321963138477390.Spec := by
  intro n
  simp only [A018922]

end A018922

/-! ## A018922.P18070005443467023903

`A107066(n+3)`
-/

namespace A018922.P18070005443467023903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107066 (n + 3)

end

end A018922.P18070005443467023903

namespace A018922

/-- `A107066(n+3)` -/
def P18070005443467023903.Spec : Prop :=
  ∀ n, P18070005443467023903.a n = A018922 n

end A018922

/-! ## A018922.P8663684220657969803

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=8, a(1)=16`
-/

namespace A018922.P8663684220657969803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8, 16] fun n a =>
  ⌈(a (n - 1) ^ 2 : ℚ) / (a (n - 2) : ℚ)⌉ - 1

end

end A018922.P8663684220657969803

namespace A018922

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P8663684220657969803.Spec : Prop :=
  ∀ n, P8663684220657969803.a n = A018922 n

end A018922

/-! ## A018922.P4658365129172932083

`record[A107066(abs(3-n))]`
-/

namespace A018922.P4658365129172932083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107066 |3 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018922.P4658365129172932083

namespace A018922

/-- `record[A107066(abs(3-n))]` -/
def P4658365129172932083.Spec : Prop :=
  ∀ n, P4658365129172932083.a n = A018922 n

end A018922

/-! ## A018922.P12190310151420165183

`A135492(n+3)+∑[A000078(n+1)]`
-/

namespace A018922.P12190310151420165183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135492 (n + 3) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018922.P12190310151420165183

namespace A018922

/-- `A135492(n+3)+∑[A000078(n+1)]` -/
def P12190310151420165183.Spec : Prop :=
  ∀ n, P12190310151420165183.a n = A018922 n

end A018922

/-! ## A018922.P16829745000185462993

`Δ[A119407(n+3)]`
-/

namespace A018922.P16829745000185462993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119407 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018922.P16829745000185462993

namespace A018922

/-- `Δ[A119407(n+3)]` -/
def P16829745000185462993.Spec : Prop :=
  ∀ n, P16829745000185462993.a n = A018922 n

end A018922

/-! ## A018922.P7160195006921012998

`Δ[A145112(n+3)]`
-/

namespace A018922.P7160195006921012998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145112 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018922.P7160195006921012998

namespace A018922

/-- `Δ[A145112(n+3)]` -/
def P7160195006921012998.Spec : Prop :=
  ∀ n, P7160195006921012998.a n = A018922 n

end A018922

/-! ## A018922.P284572853209668627

`A119407(n+4)-A119407(n+3)`
-/

namespace A018922.P284572853209668627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119407 (n + 4) - A119407 (n + 3)

end

end A018922.P284572853209668627

namespace A018922

/-- `A119407(n+4)-A119407(n+3)` -/
def P284572853209668627.Spec : Prop :=
  ∀ n, P284572853209668627.a n = A018922 n

end A018922

/-! ## A018922.P17476304601034274550

`∑[A118897(∑[n-1]+4)]`
-/

namespace A018922.P17476304601034274550
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118897 (∑ j ∈ Finset.range (n + 1), f2 j + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018922.P17476304601034274550

namespace A018922

/-- `∑[A118897(∑[n-1]+4)]` -/
def P17476304601034274550.Spec : Prop :=
  ∀ n, P17476304601034274550.a n = A018922 n

end A018922

/-!
# A018923: Define the generalized Pisot sequence T(a(0),a(1)) by: a(n+2) is the greatest integer such that a(n+2)/a(n+1) < a(n+1)/a(n). This is T(16,32).

The programs for A018923, the canonical program `A018923.P13571307820344530374` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018923 has offset 0).

The definition of A018923 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018923.P13571307820344530374

`ceil(a(n-1)²/a(n-2))-1` with `a(0)=16, a(1)=32`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018923

/-- `ceil(a(n-1)²/a(n-2))-1` -/
def P13571307820344530374.Spec : Prop :=
  ∀ n, P13571307820344530374.a n = A018923 n

theorem P13571307820344530374.correct : P13571307820344530374.Spec := by
  intro n
  simp only [A018923]

end A018923

/-! ## A018923.P4496203530818110998

`ogf((16-x^2-2x^3-4x^4-8x^5)/(1-2x+x^6))`
-/

namespace A018923.P4496203530818110998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [16, 0, -1, -2, -4, -8] [1, -2, 0, 0, 0, 0, 1] n

end

end A018923.P4496203530818110998

namespace A018923

/-- `ogf((16-x^2-2x^3-4x^4-8x^5)/(1-2x+x^6))` -/
def P4496203530818110998.Spec : Prop :=
  ∀ n, P4496203530818110998.a n = A018923 n

end A018923

/-! ## A018923.P14514821529779652890

`A001949(n+9)`
-/

namespace A018923.P14514821529779652890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001949 (n + 9)

end

end A018923.P14514821529779652890

namespace A018923

/-- `A001949(n+9)` -/
def P14514821529779652890.Spec : Prop :=
  ∀ n, P14514821529779652890.a n = A018923 n

end A018923

/-! ## A018923.P14773245748095548363

`∑[A001591(n+8)]+8`
-/

namespace A018923.P14773245748095548363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001591 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 8

end

end A018923.P14773245748095548363

namespace A018923

/-- `∑[A001591(n+8)]+8` -/
def P14773245748095548363.Spec : Prop :=
  ∀ n, P14773245748095548363.a n = A018923 n

end A018923

/-! ## A018923.P2222201007576437378

`∑[A135493(n+4)/A040001(2*n)]`
-/

namespace A018923.P2222201007576437378
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135493 (n + 4) : ℚ) / (A040001 (2 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018923.P2222201007576437378

namespace A018923

/-- `∑[A135493(n+4)/A040001(2*n)]` -/
def P2222201007576437378.Spec : Prop :=
  ∀ n, P2222201007576437378.a n = (A018923 n : ℚ)

end A018923

/-! ## A018923.P3074032403130846238

`∑[A135493(n+4)/A020639(A000010(n+2))]`
-/

namespace A018923.P3074032403130846238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A135493 (n + 4) : ℚ) / (A020639 (A000010 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018923.P3074032403130846238

namespace A018923

/-- `∑[A135493(n+4)/A020639(A000010(n+2))]` -/
def P3074032403130846238.Spec : Prop :=
  ∀ n, P3074032403130846238.a n = (A018923 n : ℚ)

end A018923

/-! ## A018923.P12153025820697367812

`Δ[A145113(n+4)]`
-/

namespace A018923.P12153025820697367812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145113 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018923.P12153025820697367812

namespace A018923

/-- `Δ[A145113(n+4)]` -/
def P12153025820697367812.Spec : Prop :=
  ∀ n, P12153025820697367812.a n = A018923 n

end A018923

/-!
# A018924: Number of isotropic subspaces of an n-dimensional symplectic space over GF(4).

The programs for A018924, there is no canonical definition to state claims against.
-/

/-! ## A018924.P9382736323335634799

`∏[or((gcd(4, n)+1)%4, A094954(3*n+1))]`
-/

namespace A018924.P9382736323335634799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (((Nat.gcd 4 n + 1) % 4 : ℕ) : ℤ) (A094954 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A018924.P9382736323335634799

/-! ## A018924.P1323986142841310823

`∏[A007583(A074206(n))]`
-/

namespace A018924.P1323986142841310823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A074206 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A018924.P1323986142841310823

/-! ## A018924.P9577086649740987979

`∏[A007583(A078898(n))]`
-/

namespace A018924.P9577086649740987979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (A078898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A018924.P9577086649740987979

/-! ## A018924.P5668543204177833661

`∏[A020639(A280840(n))]`
-/

namespace A018924.P5668543204177833661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A280840 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A018924.P5668543204177833661

/-!
# A018925: Number of isotropic subspaces of a 2n-dimensional unitary space over GF(4).

The programs for A018925, there is no canonical definition to state claims against.
-/

/-! ## A018925.P13555648276674856641

`∏[4^(n+1)+1]`
-/

namespace A018925.P13555648276674856641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A018925.P13555648276674856641

/-! ## A018925.P10558576473558131976

`(4^(n+1)+1)*a(n-1)` with `a(0)=5`
-/

namespace A018925.P10558576473558131976
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  (4 ^ (n + 1) + 1) * a (n - 1)

end

end A018925.P10558576473558131976

/-! ## A018925.P15146083984299792922

`A309327(n+2)`
-/

namespace A018925.P15146083984299792922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309327 (n + 2)

end

end A018925.P15146083984299792922

/-! ## A018925.P18099362114204421386

`or(1, ∏[A094373(2*n+3)])`
-/

namespace A018925.P18099362114204421386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094373 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A018925.P18099362114204421386

/-! ## A018925.P11793872078227324572

`a(n-1)*A020737(n+n)` with `a(0)=5`
-/

namespace A018925.P11793872078227324572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) * A020737 (n + n)

end

end A018925.P11793872078227324572

/-!
# A018927: For each permutation p of {1,2,...,n} define maxjump(p) = max(p(i) - i); a(n) is sum of maxjumps of all p.

The programs for A018927, the canonical program `A018927.P3716345149629441795` is in `Seq.B000.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A018927 has offset 1).

The definition of A018927 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A018927.P3716345149629441795

`∑{#}[n, #*#!*((#+1)^(n+1-#)-#^(n+1-#))]`

The canonical program, it is in `Seq.B000.C004`.
-/

namespace A018927

/-- `∑{#}[n, #*#!*((#+1)^(n+1-#)-#^(n+1-#))]` -/
def P3716345149629441795.Spec : Prop :=
  ∀ n, P3716345149629441795.a n = (A018927 (n + 1) : ℚ)

end A018927

/-! ## A018927.P17206683067049360297

`∏[n+2]-A129591(n+1)`
-/

namespace A018927.P17206683067049360297
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A129591 (n + 1)

end

end A018927.P17206683067049360297

namespace A018927

/-- `∏[n+2]-A129591(n+1)` -/
def P17206683067049360297.Spec : Prop :=
  ∀ n, P17206683067049360297.a n = A018927 (n + 1)

end A018927

/-! ## A018927.P13665615370481102104

`abs(A129591(n+1)-A000142(n+2))`
-/

namespace A018927.P13665615370481102104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A129591 (n + 1) - A000142 (n + 2)|

end

end A018927.P13665615370481102104

namespace A018927

/-- `abs(A129591(n+1)-A000142(n+2))` -/
def P13665615370481102104.Spec : Prop :=
  ∀ n, P13665615370481102104.a n = A018927 (n + 1)

end A018927

/-! ## A018927.P311962442794770133

`A063524(n+3)-(A129591(n+1)-A000142(n+2))`
-/

namespace A018927.P311962442794770133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 3) - (A129591 (n + 1) - A000142 (n + 2))

end

end A018927.P311962442794770133

namespace A018927

/-- `A063524(n+3)-(A129591(n+1)-A000142(n+2))` -/
def P311962442794770133.Spec : Prop :=
  ∀ n, P311962442794770133.a n = A018927 (n + 1)

end A018927

/-! ## A018927.P1135472794446669919

`A354876(A151800(n))-(A129591(n+1)-A000142(n+2))`
-/

namespace A018927.P1135472794446669919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (A151800 n).toNat - (A129591 (n + 1) - A000142 (n + 2))

end

end A018927.P1135472794446669919

namespace A018927

/-- `A354876(A151800(n))-(A129591(n+1)-A000142(n+2))` -/
def P1135472794446669919.Spec : Prop :=
  ∀ n, P1135472794446669919.a n = A018927 (n + 1)

end A018927

/-! ## A018927.P4923340264521783804

`A354876(A002144(n+1))-(A129591(n+1)-A000142(n+2))`
-/

namespace A018927.P4923340264521783804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354876 (A002144 (n + 1)).toNat - (A129591 (n + 1) - A000142 (n + 2))

end

end A018927.P4923340264521783804

namespace A018927

/-- `A354876(A002144(n+1))-(A129591(n+1)-A000142(n+2))` -/
def P4923340264521783804.Spec : Prop :=
  ∀ n, P4923340264521783804.a n = A018927 (n + 1)

end A018927

/-!
# A018928: Define {b(n)} by b(1)=3, b(n) (n >= 2) is the smallest number such that b(1)^2 + ... + b(n)^2 = m^2 for some m and all b(i) are distinct. Sequence gives values of m.

The programs for A018928, there is no canonical definition to state claims against.
-/

/-! ## A018928.P11324198365935461610

`sqrt(A018929(n+1))`
-/

namespace A018928.P11324198365935461610
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A018929 (n + 1) : ℝ)

end

end A018928.P11324198365935461610

/-! ## A018928.P11694542906147086166

`sqrt(∑[A072470(n+1)])`
-/

namespace A018928.P11694542906147086166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072470 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A018928.P11694542906147086166

/-! ## A018928.P1856688164723818928

`sqrt(∑[A018930(n+1)²])`
-/

namespace A018928.P1856688164723818928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018930 (n + 1) ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ)

end

end A018928.P1856688164723818928

/-! ## A018928.P327882829573076422

`root(A018929(n+1), 2%A018930(n+1))`
-/

namespace A018928.P327882829573076422
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018929 (n + 1) : ℝ) ^ (1 / (Int.tmod 2 (A018930 (n + 1)) : ℝ))

end

end A018928.P327882829573076422

/-! ## A018928.P16556483070387265645

`A018929(n+1)^(A033999(n)^(n+1)/2)`
-/

namespace A018928.P16556483070387265645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018929 (n + 1) : ℝ) ^ ((A033999 n ^ (n + 1) : ℚ) / 2 : ℝ)

end

end A018928.P16556483070387265645

/-!
# A018929: Define {b(n)} by b(1) = 3, b(n) (n >= 2) is smallest number such that b(1)^2 + ... + b(n)^2 = m^2 for some m and all b(i) are distinct. Sequence gives values of m^2.

The programs for A018929, there is no canonical definition to state claims against.
-/

/-! ## A018929.P13574570113965789939

`A018928(n+1)²`
-/

namespace A018929.P13574570113965789939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018928 (n + 1) ^ 2

end

end A018929.P13574570113965789939

/-! ## A018929.P4232530957729467903

`∑[A072470(n+1)]`
-/

namespace A018929.P4232530957729467903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018929.P4232530957729467903

/-! ## A018929.P14888631418449241594

`∑[A018930(n+1)²]`
-/

namespace A018929.P14888631418449241594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018930 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A018929.P14888631418449241594

/-! ## A018929.P12532825350596600211

`A018928(n+1)^A020639(A028326(n))`
-/

namespace A018929.P12532825350596600211
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018928 (n + 1) : ℚ) ^ (A020639 (A028326 n).toNat : ℤ)

end

end A018929.P12532825350596600211

/-! ## A018929.P18181482327239917140

`A018928(n+1)^A020639(A080971(n))`
-/

namespace A018929.P18181482327239917140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018928 (n + 1) : ℚ) ^ (A020639 (A080971 n).toNat : ℤ)

end

end A018929.P18181482327239917140

/-!
# A018930: a(1)=3; for n>1, a(n) is smallest positive integer such that a(1)^2+...+a(n)^2 = m^2 for some m.

The programs for A018930, there is no canonical definition to state claims against.
-/

/-! ## A018930.P275923400422595814

`sqrt(A072470(n+1))`
-/

namespace A018930.P275923400422595814
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072470 (n + 1) : ℝ)

end

end A018930.P275923400422595814

/-! ## A018930.P16740460812209712100

`root(A072470(n+1), A293899(3*n+5)+1)`
-/

namespace A018930.P16740460812209712100
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A072470 (n + 1) : ℝ) ^ (1 / (A293899 (3 * n + 5) + 1 : ℝ))

end

end A018930.P16740460812209712100

/-!
# A018931: The number of permutations of n cards in which 2 is the first card hit and 3 the next hit after 2.

The programs for A018931, there is no canonical definition to state claims against.
-/

/-! ## A018931.P17492981019203660364

`n!*ceil(n-atan(n))`
-/

namespace A018931.P17492981019203660364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * ⌈(n : ℝ) - Real.arctan (n : ℝ)⌉

end

end A018931.P17492981019203660364

/-! ## A018931.P15224908815312340908

`n!*round(n²/(n+1))`
-/

namespace A018931.P15224908815312340908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / (n + 1 : ℚ))

end

end A018931.P15224908815312340908

/-! ## A018931.P3129945838237198813

`C(n, n²)+(n-1)*n!`
-/

namespace A018931.P3129945838237198813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n (n ^ 2) : ℤ) + ((n : ℤ) - 1) * (Nat.factorial n : ℤ)

end

end A018931.P3129945838237198813

/-! ## A018931.P16225807533361925562

`n!+n*a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A018931.P16225807533361925562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  Nat.factorial n + n * a (n - 1)

end

end A018931.P16225807533361925562

/-! ## A018931.P5258197056224363658

`n*Δ[(n-1)*abs(2-n)!]`
-/

namespace A018931.P5258197056224363658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (Nat.factorial |2 - (n : ℤ)|.toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A018931.P5258197056224363658

/-! ## A018931.P5558275490775441129

`(round(acot(n)+n)-ceil(acot(n)))*n!`
-/

namespace A018931.P5558275490775441129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) - ⌈SequenceMachineLib.acot (n : ℝ)⌉) * (Nat.factorial n : ℤ)

end

end A018931.P5558275490775441129

/-! ## A018931.P5518693810376693128

`gcd(n-1, a(n-1))*n!` with `a(0)=0, a(1)=1`
-/

namespace A018931.P5518693810376693128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.gcd ((n : ℤ) - 1) (a (n - 1) : ℤ) * Nat.factorial n

end

end A018931.P5518693810376693128

/-! ## A018931.P7448097170851653210

`lcm(a(n-1)+(n-1)!, n!)` with `a(0)=0`
-/

namespace A018931.P7448097170851653210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  Nat.lcm (a (n - 1) + Nat.factorial ((n : ℤ) - 1).toNat) (Nat.factorial n)

end

end A018931.P7448097170851653210

/-! ## A018931.P11762706508971763463

`n*Δ[(n-1)*a(n-1)]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A018931.P11762706508971763463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  ((n : ℤ) - 1) * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A018931.P11762706508971763463

/-! ## A018931.P14058371247002561937

`(n/(n-2)+n)*a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A018931.P14058371247002561937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ((n : ℚ) / ((n : ℤ) - 2 : ℚ) + (n : ℚ)) * a (n - 1)

end

end A018931.P14058371247002561937

/-!
# A018932: The number of permutations of n cards in which 4 will be the next hit after 2.

The programs for A018932, there is no canonical definition to state claims against.
-/

/-! ## A018932.P16362299588914583599

`Δ[(n-(char[1]+1))*n!]`
-/

namespace A018932.P16362299588914583599
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (((if ∃ j, f2 j = n then 1 else 0) + 1 : ℕ) : ℤ)) * (Nat.factorial n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018932.P16362299588914583599

/-! ## A018932.P11535183842630560873

`Δ[A001563(n)-A254667(n)!]`
-/

namespace A018932.P11535183842630560873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n - (Nat.factorial (A254667 n).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018932.P11535183842630560873

/-! ## A018932.P17519464035649521097

`Δ[(A159075(n)-1+n)*A000142(n)]`
-/

namespace A018932.P17519464035649521097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A159075 n - 1 + (n : ℤ)) * A000142 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018932.P17519464035649521097

/-! ## A018932.P13107041575712106463

`record[Δ[A257505(A022856(n+1))]]`
-/

namespace A018932.P13107041575712106463
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257505 (A022856 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A018932.P13107041575712106463

/-!
# A018934: From the game of Mousetrap.

The programs for A018934, there is no canonical definition to state claims against.
-/

/-! ## A018934.P3547355625944957714

`Δ[A000255(A289207(n))]`
-/

namespace A018934.P3547355625944957714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018934.P3547355625944957714

/-! ## A018934.P11823354822047910430

`(n-2)*A068106(A238531(n))`
-/

namespace A018934.P11823354822047910430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 2) * A068106 (A238531 n).toNat

end

end A018934.P11823354822047910430

/-! ## A018934.P17704190138039928878

`Δ[A116854(A152948(n+1)-n)]`
-/

namespace A018934.P17704190138039928878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116854 (A152948 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018934.P17704190138039928878

/-! ## A018934.P7903178727935244075

`Δ[A000255(A049581(A000124(n)))]`
-/

namespace A018934.P7903178727935244075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000255 (A049581 (A000124 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018934.P7903178727935244075

/-! ## A018934.P12198006140075837161

`Δ[A010027(A046854(A052905(n)))]`
-/

namespace A018934.P12198006140075837161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010027 (A046854 (A052905 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018934.P12198006140075837161

/-! ## A018934.P15568863314495570912

`Δ[A010027(A007318(A133263(n)))]`
-/

namespace A018934.P15568863314495570912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010027 (A007318 (A133263 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018934.P15568863314495570912

/-! ## A018934.P3086210870382801447

`A000166(n)-A047920(A175631(n+1))`
-/

namespace A018934.P3086210870382801447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000166 n - A047920 (A175631 (n + 1)).toNat

end

end A018934.P3086210870382801447

/-! ## A018934.P6537145722925982302

`Δ[A116854(A152948(n+1))]`
-/

namespace A018934.P6537145722925982302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116854 (A152948 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018934.P6537145722925982302

/-!
# A018935: a(n) is the smallest m whose square is the sum of n distinct positive squares.

The programs for A018935, there is no canonical definition to state claims against.
-/

/-! ## A018935.P4734479533987738778

`sqrt(A018936(n+1))`
-/

namespace A018935.P4734479533987738778
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A018936 (n + 1) : ℝ)

end

end A018935.P4734479533987738778

/-! ## A018935.P16745799918121231090

`A000027(root(A018936(n+1), 2))`
-/

namespace A018935.P16745799918121231090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway ((A018936 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A018935.P16745799918121231090

/-! ## A018935.P15490002017248616480

`root(A018936(n+1), 2)*A007318(∑[n])`
-/

namespace A018935.P15490002017248616480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A018936 (n + 1) : ℝ) ^ (1 / (2 : ℝ)) * (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A018935.P15490002017248616480

/-!
# A018936: a(n) is the smallest square that is the sum of n distinct positive squares.

The programs for A018936, there is no canonical definition to state claims against.
-/

/-! ## A018936.P8282465150902043652

`A018935(n+1)²`
-/

namespace A018936.P8282465150902043652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018935 (n + 1) ^ 2

end

end A018936.P8282465150902043652

/-! ## A018936.P17240073585393788492

`A000463(2*A018935(n+1))`
-/

namespace A018936.P17240073585393788492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (2 * A018935 (n + 1)).toNat

end

end A018936.P17240073585393788492

/-! ## A018936.P16255109220705583087

`A002620(2*A018935(n+1))`
-/

namespace A018936.P16255109220705583087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (2 * A018935 (n + 1)).toNat

end

end A018936.P16255109220705583087

/-! ## A018936.P2883501247418507151

`A004652(2*A018935(n+1))`
-/

namespace A018936.P2883501247418507151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004652 (2 * A018935 (n + 1)).toNat

end

end A018936.P2883501247418507151

/-! ## A018936.P9368634365061534872

`A182531(2*A018935(n+1))`
-/

namespace A018936.P9368634365061534872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182531 (2 * A018935 (n + 1)).toNat

end

end A018936.P9368634365061534872

/-!
# A018937: Let S be the smallest square that is the sum of n distinct positive integers. Then a(n) is the smallest k such that there exist n distinct positive integers <= k whose squares sum to S.

The programs for A018937, there is no canonical definition to state claims against.
-/

/-! ## A018937.P7309585537899141366

`A103413(n+1)-A023533(A037276(n+4))`
-/

namespace A018937.P7309585537899141366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103413 (n + 1) - A023533 (A037276 (n + 4)).toNat

end

end A018937.P7309585537899141366

/-! ## A018937.P14033757920213889601

`A103413(n+1)-A026729(A005135(n))`
-/

namespace A018937.P14033757920213889601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103413 (n + 1) - A026729 (A005135 n).toNat

end

end A018937.P14033757920213889601

/-! ## A018937.P16232362266948323469

`A103413(n+1)-A064911(A067199(n+1))`
-/

namespace A018937.P16232362266948323469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103413 (n + 1) - A064911 (A067199 (n + 1)).toNat

end

end A018937.P16232362266948323469

/-! ## A018937.P2373283614120364071

`and(A103412(n+1)%A103411(3*n+2), A103413(n+1))`
-/

namespace A018937.P2373283614120364071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A103412 (n + 1)) (A103411 (3 * n + 2))) (A103413 (n + 1))

end

end A018937.P2373283614120364071

/-! ## A018937.P9510388382654825972

`and(A103413(n+1)%A103412(3*n+2), A103412(n+1))`
-/

namespace A018937.P9510388382654825972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.tmod (A103413 (n + 1)) (A103412 (3 * n + 2))) (A103412 (n + 1))

end

end A018937.P9510388382654825972

/-!
# A018940: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite ABW = Li-A (Barrer and White).

The programs for A018940, there is no canonical definition to state claims against.
-/

/-! ## A018940.P14059308540161821128

`A002487(A224231(n))+A000129(2*n+1)`
-/

namespace A018940.P14059308540161821128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A224231 n).toNat + A000129 (2 * n + 1)

end

end A018940.P14059308540161821128

/-!
# A018941: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AEI = AlPO4-18 [Al24P24O96] starting with a T1 atom.

The programs for A018941, there is no canonical definition to state claims against.
-/

/-! ## A018941.P16370205301086153505

`A005145(A057092(n))-A135851(n)`
-/

namespace A018941.P16370205301086153505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005145 (A057092 n).toNat - A135851 n

end

end A018941.P16370205301086153505

/-!
# A018943: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AEI = AlPO4-18 [Al24P24O96] starting with a T3 atom.

The programs for A018943, there is no canonical definition to state claims against.
-/

/-! ## A018943.P724088090155194635

`A018942(n+2)+A018891(A001006(n))`
-/

namespace A018943.P724088090155194635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018942 (n + 2) + A018891 (A001006 n).toNat

end

end A018943.P724088090155194635

/-!
# A018952: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFG = Afghanite (Na2,Ca,K2)12[Al24Si24O96] starting with a T1 atom.

The programs for A018952, there is no canonical definition to state claims against.
-/

/-! ## A018952.P7333756804234547315

`and(A019018(A004086(2*n+3)), A019028(n+2))`
-/

namespace A018952.P7333756804234547315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A019018 (A004086 (2 * n + 3)).toNat) (A019028 (n + 2))

end

end A018952.P7333756804234547315

/-!
# A018953: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFG = Afghanite (Na2,Ca,K2)12[Al24Si24O96] starting with a T2 atom.

The programs for A018953, there is no canonical definition to state claims against.
-/

/-! ## A018953.P11908605813794515649

`A271714(A381774(n))+A005183(2*n)`
-/

namespace A018953.P11908605813794515649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271714 (A381774 n).toNat + A005183 (2 * n)

end

end A018953.P11908605813794515649

/-!
# A018954: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFG = Afghanite (Na2,Ca,K2)12[Al24Si24O96] starting with a T3 atom.

The programs for A018954, there is no canonical definition to state claims against.
-/

/-! ## A018954.P1182666908732262736

`A019030(n+2)-A185284((n+1)²)`
-/

namespace A018954.P1182666908732262736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019030 (n + 2) - A185284 ((n + 1) ^ 2)

end

end A018954.P1182666908732262736

/-!
# A018960: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFR = SAPO-40 [Si7Al29P28O128].4TPA.OH starting with a T1 atom.

The programs for A018960, there is no canonical definition to state claims against.
-/

/-! ## A018960.P3380396479374236210

`A023852(A210478(2*(n+1)))-A205503(n)`
-/

namespace A018960.P3380396479374236210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023852 (A210478 (2 * (n + 1))).toNat - A205503 n

end

end A018960.P3380396479374236210

/-!
# A018962: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFR = SAPO-40 [Si7Al29P28O128].4TPA.OH starting with a T3 atom.

The programs for A018962, there is no canonical definition to state claims against.
-/

/-! ## A018962.P2941042004053825036

`A364670(A236950(n+3))+n`
-/

namespace A018962.P2941042004053825036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364670 (A236950 (n + 3)).toNat + (n : ℤ)

end

end A018962.P2941042004053825036

/-!
# A018963: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFR = SAPO-40 [Si7Al29P28O128].4TPA.OH starting with a T4 atom.

The programs for A018963, there is no canonical definition to state claims against.
-/

/-! ## A018963.P5019903931611737790

`A321119(2*n+1)+A008621(A073767(n))`
-/

namespace A018963.P5019903931611737790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321119 (2 * n + 1) + A008621 (A073767 n).toNat

end

end A018963.P5019903931611737790

/-!
# A018964: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFS = MAPSO-46 starting with a T3 atom.

The programs for A018964, there is no canonical definition to state claims against.
-/

/-! ## A018964.P1301731375010121492

`A018994(A004186(n)+2)`
-/

namespace A018964.P1301731375010121492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018994 (A004186 n + 2).toNat

end

end A018964.P1301731375010121492

/-! ## A018964.P9672416486256156162

`A018994(A321474(n)+2)`
-/

namespace A018964.P9672416486256156162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018994 (A321474 n + 2).toNat

end

end A018964.P9672416486256156162

/-! ## A018964.P18105091264150330765

`A018994(lt[A247487(n), n])`
-/

namespace A018964.P18105091264150330765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247487 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018994 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A018964.P18105091264150330765

/-! ## A018964.P492016287977173328

`A018994(A061917(n+1)+2)`
-/

namespace A018964.P492016287977173328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018994 (A061917 (n + 1) + 2).toNat

end

end A018964.P492016287977173328

/-! ## A018964.P3930494398957802099

`A018994(n+2)%A018942(n+5)`
-/

namespace A018964.P3930494398957802099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018994 (n + 2)) (A018942 (n + 5))

end

end A018964.P3930494398957802099

/-!
# A018965: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFS = MAPSO-46 starting with a T1 atom.

The programs for A018965, there is no canonical definition to state claims against.
-/

/-! ## A018965.P12907485214682311372

`A018995(A004186(n)+2)`
-/

namespace A018965.P12907485214682311372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018995 (A004186 n + 2).toNat

end

end A018965.P12907485214682311372

/-! ## A018965.P7371366863795219020

`A018995(A321474(n)+2)`
-/

namespace A018965.P7371366863795219020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018995 (A321474 n + 2).toNat

end

end A018965.P7371366863795219020

/-! ## A018965.P11200766727576538571

`A018995(A336956(n)+2)`
-/

namespace A018965.P11200766727576538571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018995 (A336956 n + 2).toNat

end

end A018965.P11200766727576538571

/-! ## A018965.P11505469472125163912

`A018995(A023792(n+1)+2)`
-/

namespace A018965.P11505469472125163912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018995 (A023792 (n + 1) + 2).toNat

end

end A018965.P11505469472125163912

/-! ## A018965.P8761533854547954159

`A018995(A055963(n)+2+n)`
-/

namespace A018965.P8761533854547954159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018995 (A055963 n + 2 + (n : ℤ)).toNat

end

end A018965.P8761533854547954159

/-!
# A018966: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFS = MAPSO-46 starting with a T2 atom.

The programs for A018966, there is no canonical definition to state claims against.
-/

/-! ## A018966.P2737310993580259694

`A018996(A004186(n)+2)`
-/

namespace A018966.P2737310993580259694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018996 (A004186 n + 2).toNat

end

end A018966.P2737310993580259694

/-! ## A018966.P803986557868848938

`A018996(A062279(n)+2)`
-/

namespace A018966.P803986557868848938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018996 (A062279 n + 2).toNat

end

end A018966.P803986557868848938

/-! ## A018966.P14112327834581622818

`A018996(A004862(n+1)+2)`
-/

namespace A018966.P14112327834581622818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018996 (A004862 (n + 1) + 2).toNat

end

end A018966.P14112327834581622818

/-! ## A018966.P7523584670921818635

`A018996(n+2)^A242095(n)!`
-/

namespace A018966.P7523584670921818635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018996 (n + 2) ^ Nat.factorial (A242095 n).toNat

end

end A018966.P7523584670921818635

/-! ## A018966.P17922445027076123909

`A018996(n+2)%A018975(n+5)`
-/

namespace A018966.P17922445027076123909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A018996 (n + 2)) (A018975 (n + 5))

end

end A018966.P17922445027076123909

/-!
# A018967: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFT = AlPO4-52 starting with a T1 atom.

The programs for A018967, there is no canonical definition to state claims against.
-/

/-! ## A018967.P5866963583773947892

`A330619(n)+A026478(A052539(n))`
-/

namespace A018967.P5866963583773947892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330619 n + A026478 (A052539 n).toNat

end

end A018967.P5866963583773947892

/-!
# A018968: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFT = AlPO4-52 starting with a T2 atom.

The programs for A018968, there is no canonical definition to state claims against.
-/

/-! ## A018968.P10369116680276754460

`A267868(A000178(n))+A018970(n+2)`
-/

namespace A018968.P10369116680276754460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267868 (A000178 n).toNat + A018970 (n + 2)

end

end A018968.P10369116680276754460

/-!
# A018969: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFT = AlPO4-52 starting with a T3 atom.

The programs for A018969, there is no canonical definition to state claims against.
-/

/-! ## A018969.P10365288294429665844

`A339564(A208137(n+1))+A332453(n+2)`
-/

namespace A018969.P10365288294429665844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339564 (A208137 (n + 1)).toNat + A332453 (n + 2)

end

end A018969.P10365288294429665844

/-!
# A018970: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFX = SAPO-56 [Al23Si5P20O96] starting with a T2 atom.

The programs for A018970, there is no canonical definition to state claims against.
-/

/-! ## A018970.P2939814673514972609

`A018968(n+2)-A267868(A000178(n))`
-/

namespace A018970.P2939814673514972609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018968 (n + 2) - A267868 (A000178 n).toNat

end

end A018970.P2939814673514972609

/-!
# A018972: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFY = CoAPO-50 R3[Co3Al5P8O32].7H2O starting with a T2 atom.

The programs for A018972, there is no canonical definition to state claims against.
-/

/-! ## A018972.P992141583218173033

`or(A000142(A038128(2*n+3)), A263677(3*n+5))`
-/

namespace A018972.P992141583218173033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000142 (A038128 (2 * n + 3)).toNat) (A263677 (3 * n + 5))

end

end A018972.P992141583218173033

/-!
# A018973: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AFY = CoAPO-50 R3[Co3Al5P8O32].7H2O starting with a T1 atom.

The programs for A018973, there is no canonical definition to state claims against.
-/

/-! ## A018973.P2140895121563714972

`and(A002113(A251720(n+5)), A103295(2*(n+2)))`
-/

namespace A018973.P2140895121563714972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002113 (A251720 (n + 5)).toNat) (A103295 (2 * (n + 2)))

end

end A018973.P2140895121563714972

/-!
# A018976: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite ANA = Analcime Na16[ Al16Si32O96 ] . 16 H2O.

The programs for A018976, there is no canonical definition to state claims against.
-/

/-! ## A018976.P5301603887825621625

`Δ[A092693(A108452(n))-A125266(n+1)]`
-/

namespace A018976.P5301603887825621625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092693 (A108452 n).toNat - A125266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A018976.P5301603887825621625

/-!
# A018977: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite APC = AlPO4-C [Al16P16O64](1,2) starting from a T2 atom.

The programs for A018977, there is no canonical definition to state claims against.
-/

/-! ## A018977.P13055719704227468414

`A090397(∑[round((sqrt(2)+6)^n/2)]+1)`
-/

namespace A018977.P13055719704227468414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sqrt (2 : ℝ) + 6) ^ n / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090397 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A018977.P13055719704227468414

/-!
# A018978: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite APC = AlPO4-C [Al16P16O64 ](1,2) starting from a T1 atom.

The programs for A018978, there is no canonical definition to state claims against.
-/

/-! ## A018978.P12582877238789495461

`A214787(A214761(n))+A004987(n)`
-/

namespace A018978.P12582877238789495461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214787 (A214761 n).toNat + A004987 n

end

end A018978.P12582877238789495461

/-!
# A018980: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite APD = AlPO4-D [Al16P16O64] starting from a T1 atom.

The programs for A018980, there is no canonical definition to state claims against.
-/

/-! ## A018980.P17664042056427352719

`A036234(A016789(n)+A002282(n))`
-/

namespace A018980.P17664042056427352719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A016789 n + A002282 n).toNat

end

end A018980.P17664042056427352719

/-!
# A018981: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AST = AlPO4-16 [Al20P20O80].4R.16H2O starting with a T2 atom.

The programs for A018981, there is no canonical definition to state claims against.
-/

/-! ## A018981.P11419674040236465222

`6*A046927(A265460(n+1))`
-/

namespace A018981.P11419674040236465222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A046927 (A265460 (n + 1)).toNat

end

end A018981.P11419674040236465222

/-!
# A018982: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AST = AlPO4-16 [Al20P20O80].4R.16H2O starting with a T1 atom.

The programs for A018982, there is no canonical definition to state claims against.
-/

/-! ## A018982.P12657468941868918320

`A070083(A217799(n))*A175182(n+1)`
-/

namespace A018982.P12657468941868918320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070083 (A217799 n).toNat * A175182 (n + 1)

end

end A018982.P12657468941868918320

/-!
# A018983: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite ATN = MAPO-39 Hn [ MgnAl8-n P8O32 ].

The programs for A018983, there is no canonical definition to state claims against.
-/

/-! ## A018983.P11437176471542582842

`A337011(n)+A133232(A299286(n))`
-/

namespace A018983.P11437176471542582842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337011 n + A133232 (A299286 n).toNat

end

end A018983.P11437176471542582842

/-!
# A018985: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite ATS = MAPO-36 H[MgAl11P12O48] starting with a T1 atom.

The programs for A018985, there is no canonical definition to state claims against.
-/

/-! ## A018985.P15623195338050509427

`A139435(A004780(7^n))`
-/

namespace A018985.P15623195338050509427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139435 (A004780 (7 ^ n)).toNat

end

end A018985.P15623195338050509427

/-!
# A018986: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite ATS = MAPO-36 H[MgAl11P12O48] starting with a T2 atom.

The programs for A018986, there is no canonical definition to state claims against.
-/

/-! ## A018986.P16491571394740726273

`A185254(A325278(n))+A018985(n+2)`
-/

namespace A018986.P16491571394740726273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185254 (A325278 n).toNat + A018985 (n + 2)

end

end A018986.P16491571394740726273

/-!
# A018988: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite ATT = AlPO4-12-TAMU [Al12P12O48].4R starting with a T2 atom.

The programs for A018988, there is no canonical definition to state claims against.
-/

/-! ## A018988.P10132452534030466527

`A124758(n)+A091202(A125788(n))`
-/

namespace A018988.P10132452534030466527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 n + A091202 (A125788 n).toNat

end

end A018988.P10132452534030466527

/-!
# A018989: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite ATT = AlPO4-12-TAMU [Al12P12O48].4R starting with a T1 atom.

The programs for A018989, there is no canonical definition to state claims against.
-/

/-! ## A018989.P11716128131182507516

`A033270(A257969(n+1)+9)`
-/

namespace A018989.P11716128131182507516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033270 (A257969 (n + 1) + 9).toNat

end

end A018989.P11716128131182507516

/-!
# A018993: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite AWW = AlPO4-22 [Al24P24O96].2R starting with a T2 atom.

The programs for A018993, there is no canonical definition to state claims against.
-/

/-! ## A018993.P9206547437901232788

`A000203(A059588(n))%A059605(3*n)`
-/

namespace A018993.P9206547437901232788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (A059588 n).toNat) (A059605 (3 * n))

end

end A018993.P9206547437901232788

/-!
# A018997: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite CAN = Cancrinite Na6[ Al6Si6O24 ] . CaCO3 . 2 H2O.

The programs for A018997, there is no canonical definition to state claims against.
-/

/-! ## A018997.P2290371895951589574

`A007095(A224801(n)+A036156(n))`
-/

namespace A018997.P2290371895951589574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A224801 n + A036156 n).toNat

end

end A018997.P2290371895951589574

/-!
# A018998: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite CHA = Chabazite Ca6[ Al12Si24O72 ] . 40 H2O.

The programs for A018998, there is no canonical definition to state claims against.
-/

/-! ## A018998.P13719051493910322985

`A018967(n+2)-A018891(A326511(n))`
-/

namespace A018998.P13719051493910322985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018967 (n + 2) - A018891 (A326511 (n + 10)).toNat

end

end A018998.P13719051493910322985

/-!
# A018999: Cycle class sequence c(2n) (the number of true cycles of length 2n in which a certain node is included) for zeolite CLO = Cloverite starting with a T5 atom.

The programs for A018999, there is no canonical definition to state claims against.
-/

/-! ## A018999.P6313516982933617136

`A172120(a(n-1))+n` with `a(0)=3, a(1)=12, a(2)=10`
-/

namespace A018999.P6313516982933617136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 12, 10] fun n a =>
  A172120 (a (n - 1)).toNat + (n : ℤ)

end

end A018999.P6313516982933617136

