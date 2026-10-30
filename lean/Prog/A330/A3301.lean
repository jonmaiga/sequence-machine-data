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
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
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
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A330104: MM-numbers of brute-force normalized multisets of multisets.

The programs for A330104, there is no canonical definition to state claims against.
-/

/-! ## A330104.P507085152881919788

`eq[n, A330105(floor(acot(n)+n))]`
-/

namespace A330104.P507085152881919788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330105 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330104.P507085152881919788

/-! ## A330104.P16974761487451014316

`record[gcd(n+1, A330105(n+1))]`
-/

namespace A330104.P16974761487451014316
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A330105 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330104.P16974761487451014316

/-! ## A330104.P16316192696781108502

`eq[n, A330105(round(sqrt(n²+1)))]`
-/

namespace A330104.P16316192696781108502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330105 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330104.P16316192696781108502

/-! ## A330104.P3679359328692445942

`record[A330105(n+1)%A002808(n+1)]`
-/

namespace A330104.P3679359328692445942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330105 (n + 1)) (A002808 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330104.P3679359328692445942

/-! ## A330104.P15206040761317403537

`record[and(A000027(n+1), A330105(n+1))]`
-/

namespace A330104.P15206040761317403537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000027 (n + 1)) (A330105 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330104.P15206040761317403537

/-!
# A330107: MM-numbers of brute-force normalized multiset partitions.

The programs for A330107, there is no canonical definition to state claims against.
-/

/-! ## A330107.P4476552437868845589

`∩[2*n+1, A330104(n+1)]`
-/

namespace A330107.P4476552437868845589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330104 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330107.P4476552437868845589

/-! ## A330107.P15670479941249076117

`record[A000265(A330104(n+1))]`
-/

namespace A330107.P15670479941249076117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A330104 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330107.P15670479941249076117

/-! ## A330107.P16723350864744166951

`record[A026741(A330104(n+2))]`
-/

namespace A330107.P16723350864744166951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A330104 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330107.P16723350864744166951

/-! ## A330107.P17932359397403630597

`filter[A330104(n+1), A000035(#)]`
-/

namespace A330107.P17932359397403630597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330104 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A330107.P17932359397403630597

/-! ## A330107.P17129299190876013115

`A330097(A052382(n+1)^A117358(n+1))`
-/

namespace A330107.P17129299190876013115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330097 (SequenceMachineLib.roundAway ((A052382 (n + 1) : ℚ) ^ (A117358 (n + 1) : ℤ))).toNat

end

end A330107.P17129299190876013115

/-!
# A330109: BII-numbers of BII-normalized set-systems.

The programs for A330109, there is no canonical definition to state claims against.
-/

/-! ## A330109.P14581768936779872767

`record[A330195(n)]`
-/

namespace A330109.P14581768936779872767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330109.P14581768936779872767

/-! ## A330109.P2966516155087835806

`eq[n, A330195(A071669(n))]`
-/

namespace A330109.P2966516155087835806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330195 (A071669 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330109.P2966516155087835806

/-! ## A330109.P4499554310068835072

`eq[A071670(n), A330195(n)]`
-/

namespace A330109.P4499554310068835072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071670 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330109.P4499554310068835072

/-! ## A330109.P5216779406444696010

`eq[A106620(n), A330195(n)]`
-/

namespace A330109.P5216779406444696010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106620 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330109.P5216779406444696010

/-! ## A330109.P11555358627401475408

`eq[A118759(n), A330195(n)]`
-/

namespace A330109.P11555358627401475408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330195 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330109.P11555358627401475408

/-!
# A330110: BII-numbers of lexicographically normalized set-systems.

The programs for A330110, there is no canonical definition to state claims against.
-/

/-! ## A330110.P13136659555943951619

`A018851(A330123(n+1)²)`
-/

namespace A330110.P13136659555943951619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A330123 (n + 1) ^ 2).toNat

end

end A330110.P13136659555943951619

/-! ## A330110.P14644948540675869681

`A018851(A330123(n+1)^2)`
-/

namespace A330110.P14644948540675869681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018851 (A330123 (n + 1) ^ 2).toNat

end

end A330110.P14644948540675869681

/-! ## A330110.P12111796014643447010

`A330123(n+1)%A035244(n)`
-/

namespace A330110.P12111796014643447010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330123 (n + 1)) (A035244 n)

end

end A330110.P12111796014643447010

/-! ## A330110.P10801584214512715058

`A118759(A330123(n+1)-n)+n`
-/

namespace A330110.P10801584214512715058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A330123 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A330110.P10801584214512715058

/-! ## A330110.P11888818301953868690

`A330123(n+1)+A000007(A005897(n))`
-/

namespace A330110.P11888818301953868690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330123 (n + 1) + A000007 (A005897 n).toNat

end

end A330110.P11888818301953868690

/-!
# A330112: Beatty sequence for e^x, where 1/e^x + sech(x) = 1.

The programs for A330112, the canonical program `A330112.P9514999970066696842` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330112 has offset 1).

The definition of A330112 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 499 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330112.P9514999970066696842

`A233583(2*n+3)+A057362(A233583(2*n+3))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A330112

/-- `A233583(2*n+3)+A057362(A233583(2*n+3))` -/
def P9514999970066696842.Spec : Prop :=
  ∀ n, P9514999970066696842.a n = A330112 (n + 1)

theorem P9514999970066696842.correct : P9514999970066696842.Spec := by
  intro n
  simp only [A330112, Nat.add_sub_cancel]

end A330112

/-! ## A330112.P8249189041841596021

`floor(log(A097830(n+1)))`
-/

namespace A330112.P8249189041841596021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A097830 (n + 1) : ℝ)⌋

end

end A330112.P8249189041841596021

namespace A330112

/-- `floor(log(A097830(n+1)))` -/
def P8249189041841596021.Spec : Prop :=
  ∀ n, P8249189041841596021.a n = A330112 (n + 1)

end A330112

/-! ## A330112.P1111056418747105550

`floor(log(A220107(n+1)))`
-/

namespace A330112.P1111056418747105550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A220107 (n + 1) : ℝ)⌋

end

end A330112.P1111056418747105550

namespace A330112

/-- `floor(log(A220107(n+1)))` -/
def P1111056418747105550.Spec : Prop :=
  ∀ n, P1111056418747105550.a n = A330112 (n + 1)

end A330112

/-! ## A330112.P7876386268426069744

`floor(ratio[A352292(n)])`
-/

namespace A330112.P7876386268426069744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352292 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) : ℚ) / (f1 n : ℚ)⌋

end

end A330112.P7876386268426069744

namespace A330112

/-- `floor(ratio[A352292(n)])` -/
def P7876386268426069744.Spec : Prop :=
  ∀ n, P7876386268426069744.a n = A330112 (n + 1)

end A330112

/-! ## A330112.P16444269037989528662

`A000196(A256588(2*(n+1)))+n`
-/

namespace A330112.P16444269037989528662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A256588 (2 * (n + 1))).toNat + (n : ℤ)

end

end A330112.P16444269037989528662

namespace A330112

/-- `A000196(A256588(2*(n+1)))+n` -/
def P16444269037989528662.Spec : Prop :=
  ∀ n, P16444269037989528662.a n = A330112 (n + 1)

end A330112

/-!
# A330113: Beatty sequence for cosh(x), where 1/e^x + sech(x) = 1.

The programs for A330113, the canonical program `A330113.P8246868936388236731` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330113 has offset 1).

The definition of A330113 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330113.P8246868936388236731

`comp[A330112(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A330113

/-- `comp[A330112(n+1)-1]+1` -/
def P8246868936388236731.Spec : Prop :=
  ∀ n, (P8246868936388236731.a n : ℤ) = A330113 (n + 1)

theorem P8246868936388236731.correct : P8246868936388236731.Spec := by
  intro n
  simp only [A330113, Nat.add_sub_cancel]

end A330113

/-! ## A330113.P6731532646536965687

`floor(log(A306610(n+1)))`
-/

namespace A330113.P6731532646536965687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A306610 (n + 1) : ℝ)⌋

end

end A330113.P6731532646536965687

namespace A330113

/-- `floor(log(A306610(n+1)))` -/
def P6731532646536965687.Spec : Prop :=
  ∀ n, P6731532646536965687.a n = A330113 (n + 1)

end A330113

/-! ## A330113.P3882823423692913289

`A000196(∑[A250120(n)+A133404(n+1)])`
-/

namespace A330113.P3882823423692913289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A133404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330113.P3882823423692913289

namespace A330113

/-- `A000196(∑[A250120(n)+A133404(n+1)])` -/
def P3882823423692913289.Spec : Prop :=
  ∀ n, P3882823423692913289.a n = A330113 (n + 1)

end A330113

/-! ## A330113.P1308530206385993077

`A002024(∑[A002024(∑[6*n-2]+3)])`
-/

namespace A330113.P1308530206385993077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f2 j + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330113.P1308530206385993077

namespace A330113

/-- `A002024(∑[A002024(∑[6*n-2]+3)])` -/
def P1308530206385993077.Spec : Prop :=
  ∀ n, P1308530206385993077.a n = A330113 (n + 1)

end A330113

/-! ## A330113.P928790693740753926

`A225593(A375053(n+1))`
-/

namespace A330113.P928790693740753926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225593 (A375053 (n + 1)).toNat

end

end A330113.P928790693740753926

namespace A330113

/-- `A225593(A375053(n+1))` -/
def P928790693740753926.Spec : Prop :=
  ∀ n, P928790693740753926.a n = A330113 (n + 1)

end A330113

/-!
# A330115: Beatty sequence for e^x, where 1/e^x + csch(x) = 1.

The programs for A330115, there is no canonical definition to state claims against.
-/

/-! ## A330115.P12269306674120680369

`comp[A330116(n+1)-1]+1`
-/

namespace A330115.P12269306674120680369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330116 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A330115.P12269306674120680369

/-! ## A330115.P9131880767737603582

`A248355((n+1)²)-1`
-/

namespace A330115.P9131880767737603582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248355 ((n + 1) ^ 2) - 1

end

end A330115.P9131880767737603582

/-! ## A330115.P14975381707720305597

`A023808(3*n+5)-A374126(A260227(n+1))`
-/

namespace A330115.P14975381707720305597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023808 (3 * n + 5) - A374126 (A260227 (n + 1)).toNat

end

end A330115.P14975381707720305597

/-! ## A330115.P13905250772257581608

`A023808(3*n+5)-A036262(A000217(3*n+1))`
-/

namespace A330115.P13905250772257581608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023808 (3 * n + 5) - A036262 (A000217 (3 * n + 1)).toNat

end

end A330115.P13905250772257581608

/-! ## A330115.P16673456338333915104

`A227568(A299287(n+1))`
-/

namespace A330115.P16673456338333915104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227568 (A299287 (n + 1)).toNat

end

end A330115.P16673456338333915104

/-!
# A330117: Beatty sequence for 1+x, where 1/(1+x) + 1/(1+x+x^2) = 1.

The programs for A330117, the canonical program `A330117.P2496957213544847952` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330117 has offset 1).

The definition of A330117 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 131 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330117.P2496957213544847952

`floor(log(A127220(n+1)))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A330117

/-- `floor(log(A127220(n+1)))` -/
def P2496957213544847952.Spec : Prop :=
  ∀ n, P2496957213544847952.a n = A330117 (n + 1)

theorem P2496957213544847952.correct : P2496957213544847952.Spec := by
  intro n
  simp only [A330117, Nat.add_sub_cancel]

end A330117

/-! ## A330117.P12653628523650989162

`∑[gcd(2, A106286(n+1))]`
-/

namespace A330117.P12653628523650989162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A106286 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330117.P12653628523650989162

namespace A330117

/-- `∑[gcd(2, A106286(n+1))]` -/
def P12653628523650989162.Spec : Prop :=
  ∀ n, (P12653628523650989162.a n : ℤ) = A330117 (n + 1)

end A330117

/-! ## A330117.P5961251443293523507

`∑[(A040425((2*(n+1))²-A061037(n+2))+4)%2+1]`
-/

namespace A330117.P5961251443293523507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040425 (((2 * (n + 1)) ^ 2 : ℤ) - A061037 (n + 2)).toNat + 4) 2 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330117.P5961251443293523507

namespace A330117

/-- `∑[(A040425((2*(n+1))²-A061037(n+2))+4)%2+1]` -/
def P5961251443293523507.Spec : Prop :=
  ∀ n, P5961251443293523507.a n = A330117 (n + 1)

end A330117

/-! ## A330117.P10245607608600249832

`∑[A000034(A001399(3*n+1)*5-5)]`
-/

namespace A330117.P10245607608600249832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A001399 (3 * n + 1) * 5 - 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330117.P10245607608600249832

namespace A330117

/-- `∑[A000034(A001399(3*n+1)*5-5)]` -/
def P10245607608600249832.Spec : Prop :=
  ∀ n, P10245607608600249832.a n = A330117 (n + 1)

end A330117

/-! ## A330117.P8070573748563010193

`A214526(A016754(n)+A008621(n))`
-/

namespace A330117.P8070573748563010193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214526 (A016754 n + A008621 n).toNat

end

end A330117.P8070573748563010193

namespace A330117

/-- `A214526(A016754(n)+A008621(n))` -/
def P8070573748563010193.Spec : Prop :=
  ∀ n, P8070573748563010193.a n = A330117 (n + 1)

end A330117

/-!
# A330118: Beatty sequence for 1+x+x^2, where 1/(1+x) + 1/(1+x+x^2) = 1.

The programs for A330118, the canonical program `A330118.P17120825153375749114` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330118 has offset 1).

The definition of A330118 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7548 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330118.P7872873886602302480

`∑[A100283(n)+2]`
-/

namespace A330118.P7872873886602302480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100283 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330118.P7872873886602302480

namespace A330118

/-- `∑[A100283(n)+2]` -/
def P7872873886602302480.Spec : Prop :=
  ∀ n, P7872873886602302480.a n = A330118 (n + 1)

end A330118

/-! ## A330118.P5797757492523892392

`A329974(n+1)+1+n`
-/

namespace A330118.P5797757492523892392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329974 (n + 1) + 1 + (n : ℤ)

end

end A330118.P5797757492523892392

namespace A330118

/-- `A329974(n+1)+1+n` -/
def P5797757492523892392.Spec : Prop :=
  ∀ n, P5797757492523892392.a n = A330118 (n + 1)

theorem P5797757492523892392.correct : P5797757492523892392.Spec := by
  intro n
  simp only [A330118, Nat.add_sub_cancel, A330118.P5797757492523892392.a, A330118.P17120825153375749114.f1, A330118.P17120825153375749114.a, A329974, A329974.P6869657732338157224.a, A330117, A330117.P2496957213544847952.a, A127220, A127220.P2335867267469646714.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A330118

/-! ## A330118.P17120825153375749114

`comp[A330117(n+1)-1]+1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A330118

/-- `comp[A330117(n+1)-1]+1` -/
def P17120825153375749114.Spec : Prop :=
  ∀ n, (P17120825153375749114.a n : ℤ) = A330118 (n + 1)

theorem P17120825153375749114.correct : P17120825153375749114.Spec := by
  intro n
  simp only [A330118, Nat.add_sub_cancel]

end A330118

/-! ## A330118.P15282678454887498997

`A187396(2*(n+1))%A187431(A026998(n))`
-/

namespace A330118.P15282678454887498997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187396 (2 * (n + 1))) (A187431 (A026998 n).toNat)

end

end A330118.P15282678454887498997

namespace A330118

/-- `A187396(2*(n+1))%A187431(A026998(n))` -/
def P15282678454887498997.Spec : Prop :=
  ∀ n, P15282678454887498997.a n = A330118 (n + 1)

end A330118

/-!
# A330123: BII-numbers of MM-normalized set-systems.

The programs for A330123, there is no canonical definition to state claims against.
-/

/-! ## A330123.P9854621427256966478

`record[A330110(n+1)%A330137(A330113(n+1))]`
-/

namespace A330123.P9854621427256966478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330110 (n + 1)) (A330137 (A330113 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330123.P9854621427256966478

/-!
# A330124: Number of unlabeled set-systems with n vertices and no endpoints.

The programs for A330124, there is no canonical definition to state claims against.
-/

/-! ## A330124.P15529257271739989156

`A161140(n!)`
-/

namespace A330124.P15529257271739989156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161140 (Nat.factorial n)

end

end A330124.P15529257271739989156

/-!
# A330125: Positive integers whose digit-power sum is a prime.

The programs for A330125, the canonical program `A330125.P3362564348567139348` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330125 has offset 1).

The definition of A330125 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1391 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330125.P3362564348567139348

`eq[2, A000005(A101337(n+1))]+1`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A330125

/-- `eq[2, A000005(A101337(n+1))]+1` -/
def P3362564348567139348.Spec : Prop :=
  ∀ n, (P3362564348567139348.a n : ℤ) = A330125 (n + 1)

theorem P3362564348567139348.correct : P3362564348567139348.Spec := by
  intro n
  simp only [A330125, Nat.add_sub_cancel]

end A330125

/-!
# A330126: Composite terms in A330070.

The programs for A330126, there is no canonical definition to state claims against.
-/

/-! ## A330126.P8807932342492047635

`filter[A330070(n+1), A005171(#)]`
-/

namespace A330126.P8807932342492047635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A330126.P8807932342492047635

/-! ## A330126.P304604328388140454

`filter[A330070(n+1), A064911(#)]`
-/

namespace A330126.P304604328388140454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A330126.P304604328388140454

/-! ## A330126.P6355442681537218262

`filter[A330070(n+1), A065043(#)]`
-/

namespace A330126.P6355442681537218262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330070 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A330126.P6355442681537218262

/-!
# A330127: Number of length-n binary words containing at most distinct 11 palindromes as subwords (including the empty word).

The programs for A330127, there is no canonical definition to state claims against.
-/

/-! ## A330127.P4005431681405295911

`(2^n)%A241306(A096033(n+2))`
-/

namespace A330127.P4005431681405295911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 ^ n : ℤ) (A241306 (A096033 (n + 2)).toNat)

end

end A330127.P4005431681405295911

/-! ## A330127.P4121492536971296730

`A000079(n)%A090610(A261952(n))`
-/

namespace A330127.P4121492536971296730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000079 n) (A090610 (A261952 n).toNat)

end

end A330127.P4121492536971296730

/-! ## A330127.P5639081248065616871

`A127287(A000079(n))%A136030(n+1)`
-/

namespace A330127.P5639081248065616871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127287 (A000079 n).toNat) (A136030 (n + 1))

end

end A330127.P5639081248065616871

/-! ## A330127.P16323332234804302726

`A264195(A000217(n+1))%A136030(n+1)`
-/

namespace A330127.P16323332234804302726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264195 (A000217 (n + 1)).toNat) (A136030 (n + 1))

end

end A330127.P16323332234804302726

/-! ## A330127.P9794184155970984851

`A131572(2*n+1)%A064989(A228170(n+1))`
-/

namespace A330127.P9794184155970984851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A131572 (2 * n + 1)) (A064989 (A228170 (n + 1)).toNat)

end

end A330127.P9794184155970984851

/-!
# A330130: Number of length-n binary words having no even palindromes of length > 2 and no odd palindromes of length > 5.

The programs for A330130, the canonical program `A330130.P14417910698808422323` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330130 has offset 0).

The definition of A330130 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330130.P14417910698808422323

`ogf((1+2x+4x^2+8x^3+12x^4+18x^5+26x^6+28x^7+29x^8+30x^9+29x^10+26x^11+24x^12+18x^13+10x^14+6x^15)/(1-x^8-x^10))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A330130

/-- `ogf((1+2x+4x^2+8x^3+12x^4+18x^5+26x^6+28x^7+29x^8+30x^9+29x^10+26x^11+24x^12+18x^13+10x^14+6x^15)/(1-x^8-x^10))` -/
def P14417910698808422323.Spec : Prop :=
  ∀ n, P14417910698808422323.a n = A330130 n

theorem P14417910698808422323.correct : P14417910698808422323.Spec := by
  intro n
  simp only [A330130]

end A330130

/-! ## A330130.P12408889376340255898

`eq[A002035(n+1), A319801(A158416(n))]`
-/

namespace A330130.P12408889376340255898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319801 (A158416 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330130.P12408889376340255898

namespace A330130

/-- `eq[A002035(n+1), A319801(A158416(n))]` -/
def P12408889376340255898.Spec : Prop :=
  ∀ n, (P12408889376340255898.a n : ℤ) = A330130 n

end A330130

/-! ## A330130.P11053795347534782247

`∑[A001223(A188479(n))]`
-/

namespace A330130.P11053795347534782247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A188479 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330130.P11053795347534782247

namespace A330130

/-- `∑[A001223(A188479(n))]` -/
def P11053795347534782247.Spec : Prop :=
  ∀ n, P11053795347534782247.a n = A330130 n

end A330130

/-! ## A330130.P15674992509997114720

`∑[gcd(A202729(n+1), A232675(2*n+5))]`
-/

namespace A330130.P15674992509997114720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A202729 (n + 1)) (A232675 (2 * n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330130.P15674992509997114720

namespace A330130

/-- `∑[gcd(A202729(n+1), A232675(2*n+5))]` -/
def P15674992509997114720.Spec : Prop :=
  ∀ n, (P15674992509997114720.a n : ℤ) = A330130 n

end A330130

/-! ## A330130.P4894812687892083426

`∑[A001223(A332285((1-n)²+n)+A056280(n+1))]`
-/

namespace A330130.P4894812687892083426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (A332285 ((1 - (n : ℤ)) ^ 2 + (n : ℤ)).toNat + A056280 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330130.P4894812687892083426

namespace A330130

/-- `∑[A001223(A332285((1-n)²+n)+A056280(n+1))]` -/
def P4894812687892083426.Spec : Prop :=
  ∀ n, P4894812687892083426.a n = A330130 n

end A330130

/-!
# A330131: Number of length-n binary words with no even palindrome of length > 6 and no odd palindrome of length > 3.

The programs for A330131, there is no canonical definition to state claims against.
-/

/-! ## A330131.P5816996228132250957

`record[and(A222673(n+1), A290335(n))]`
-/

namespace A330131.P5816996228132250957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A222673 (n + 1)) (A290335 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330131.P5816996228132250957

/-! ## A330131.P16478451873848671222

`record[and(A228849(n+1), A232528(n+1))]`
-/

namespace A330131.P16478451873848671222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A228849 (n + 1)) (A232528 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330131.P16478451873848671222

/-!
# A330132: Number of length-n ternary words containing no even palindromes of length > 0 and no odd palindromes of length > 3.

The programs for A330132, the canonical program `A330132.P7747624687911827280` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330132 has offset 0).

The definition of A330132 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330132.P7747624687911827280

`ogf((1+2x+3x^2+5x^3+9x^4+6x^5+6x^6)/(1-x-x^3))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A330132

/-- `ogf((1+2x+3x^2+5x^3+9x^4+6x^5+6x^6)/(1-x-x^3))` -/
def P7747624687911827280.Spec : Prop :=
  ∀ n, P7747624687911827280.a n = A330132 n

theorem P7747624687911827280.correct : P7747624687911827280.Spec := by
  intro n
  simp only [A330132]

end A330132

/-! ## A330132.P4391494726770534420

`a(n-1)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=12, a(4)=24, a(5)=36, a(6)=54`
-/

namespace A330132.P4391494726770534420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6, 12, 24, 36, 54] fun n a =>
  a (n - 1) + a (n - 3)

end

end A330132.P4391494726770534420

namespace A330132

/-- `a(n-1)+a(n-3)` -/
def P4391494726770534420.Spec : Prop :=
  ∀ n, (P4391494726770534420.a n : ℤ) = A330132 n

end A330132

/-! ## A330132.P13904250468786096466

`A230263(A100215(n+4))+A005819(n+1)`
-/

namespace A330132.P13904250468786096466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230263 (A100215 (n + 4)).toNat + A005819 (n + 1)

end

end A330132.P13904250468786096466

namespace A330132

/-- `A230263(A100215(n+4))+A005819(n+1)` -/
def P13904250468786096466.Spec : Prop :=
  ∀ n, P13904250468786096466.a n = A330132 n

end A330132

/-!
# A330133: a(n) = (1/16)*(5 + (-1)^(1+n) - 4*cos(n*Pi/2) + 10*n^2).

The programs for A330133, the canonical program `A330133.P7212063563680173353` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330133 has offset 0).

The definition of A330133 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330133.P1271972827422099273

`ogf((x+x^2+x^3+x^4+x^5)/(1-2x+x^2-x^4+2x^5-x^6))`
-/

namespace A330133.P1271972827422099273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, 1, 1, 1] [1, -2, 1, 0, -1, 2, -1] n

end

end A330133.P1271972827422099273

namespace A330133

/-- `ogf((x+x^2+x^3+x^4+x^5)/(1-2x+x^2-x^4+2x^5-x^6))` -/
def P1271972827422099273.Spec : Prop :=
  ∀ n, P1271972827422099273.a n = A330133 n

end A330133

/-! ## A330133.P4270195100702575205

`1/16*(5+(-1)^(1+n)-4*cos(n*π/2)+10*n²)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330133.P4270195100702575205
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 : ℚ) / 16 : ℝ) * ((5 + (-1) ^ (1 + n) : ℝ) - 4 * Real.cos ((n : ℝ) * Real.pi / 2) + (10 * n ^ 2 : ℝ))

end

end A330133.P4270195100702575205

namespace A330133

/-- `1/16*(5+(-1)^(1+n)-4*cos(n*π/2)+10*n²)` -/
def P4270195100702575205.Spec : Prop :=
  ∀ n, P4270195100702575205.a n = (A330133 n : ℝ)

end A330133

/-! ## A330133.P7212063563680173353

`2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=6, a(4)=10, a(5)=16`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A330133

/-- `2*a(n-1)-a(n-2)+a(n-4)-2*a(n-5)+a(n-6)` -/
def P7212063563680173353.Spec : Prop :=
  ∀ n, P7212063563680173353.a n = A330133 n

theorem P7212063563680173353.correct : P7212063563680173353.Spec := by
  intro n
  simp only [A330133]

end A330133

/-! ## A330133.P12727146786256138872

`ceil(5/8*n²)`
-/

namespace A330133.P12727146786256138872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 : ℚ) / 8 * (n ^ 2 : ℚ)⌉

end

end A330133.P12727146786256138872

namespace A330133

/-- `ceil(5/8*n²)` -/
def P12727146786256138872.Spec : Prop :=
  ∀ n, P12727146786256138872.a n = A330133 n

end A330133

/-! ## A330133.P9414472499035161428

`∑[comp[lcm(5, n+1)]]`
-/

namespace A330133.P9414472499035161428
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 5 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330133.P9414472499035161428

namespace A330133

/-- `∑[comp[lcm(5, n+1)]]` -/
def P9414472499035161428.Spec : Prop :=
  ∀ n, (P9414472499035161428.a n : ℤ) = A330133 n

end A330133

/-! ## A330133.P11284921656786281388

`∑[record[n/gcd(5, n)]]`
-/

namespace A330133.P11284921656786281388
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.gcd 5 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330133.P11284921656786281388

namespace A330133

/-- `∑[record[n/gcd(5, n)]]` -/
def P11284921656786281388.Spec : Prop :=
  ∀ n, P11284921656786281388.a n = (A330133 n : ℚ)

end A330133

/-! ## A330133.P3189215728325787183

`∑[comp[a(n-1)+5]]` with `a(0)=5`
-/

namespace A330133.P3189215728325787183
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f2 =>
  f2 (n - 1) + 5

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330133.P3189215728325787183

namespace A330133

/-- `∑[comp[a(n-1)+5]]` -/
def P3189215728325787183.Spec : Prop :=
  ∀ n, (P3189215728325787183.a n : ℤ) = A330133 n

end A330133

/-! ## A330133.P651885867659500106

`∑[a(n-4)+5]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4`
-/

namespace A330133.P651885867659500106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4] fun n f1 =>
  f1 (n - 4) + 5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330133.P651885867659500106

namespace A330133

/-- `∑[a(n-4)+5]` -/
def P651885867659500106.Spec : Prop :=
  ∀ n, (P651885867659500106.a n : ℤ) = A330133 n

end A330133

/-! ## A330133.P18293479242395788230

`∑[∑[floor(a(n-4))]]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=1, a(5)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A330133.P18293479242395788230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1, 1, 2] fun n f2 =>
  f2 (n - 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330133.P18293479242395788230

namespace A330133

/-- `∑[∑[floor(a(n-4))]]` -/
def P18293479242395788230.Spec : Prop :=
  ∀ n, (P18293479242395788230.a n : ℤ) = A330133 n

end A330133

/-! ## A330133.P872581222164402423

`floor((n-1)/4)+a(n-1)+n` with `a(0)=0`
-/

namespace A330133.P872581222164402423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊((n : ℤ) - 1 : ℚ) / 4⌋ + (a (n - 1) + (n : ℤ))

end

end A330133.P872581222164402423

namespace A330133

/-- `floor((n-1)/4)+a(n-1)+n` -/
def P872581222164402423.Spec : Prop :=
  ∀ n, P872581222164402423.a n = A330133 n

end A330133

/-! ## A330133.P18441573910772563848

`n-floor(1-a(n-1)-n/4)` with `a(0)=0`
-/

namespace A330133.P18441573910772563848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(1 - a (n - 1) : ℚ) - (n : ℚ) / 4⌋

end

end A330133.P18441573910772563848

namespace A330133

/-- `n-floor(1-a(n-1)-n/4)` -/
def P18441573910772563848.Spec : Prop :=
  ∀ n, P18441573910772563848.a n = A330133 n

end A330133

/-! ## A330133.P18014458565627651487

`n²-A033436(n)`
-/

namespace A330133.P18014458565627651487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - A033436 n

end

end A330133.P18014458565627651487

namespace A330133

/-- `n²-A033436(n)` -/
def P18014458565627651487.Spec : Prop :=
  ∀ n, P18014458565627651487.a n = A330133 n

end A330133

/-! ## A330133.P3202170793241631023

`∑[comp[A008587(n+1)]]`
-/

namespace A330133.P3202170793241631023
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330133.P3202170793241631023

namespace A330133

/-- `∑[comp[A008587(n+1)]]` -/
def P3202170793241631023.Spec : Prop :=
  ∀ n, (P3202170793241631023.a n : ℤ) = A330133 n

end A330133

/-! ## A330133.P16359313730830088307

`∑[comp[A016897(n)+1]]`
-/

namespace A330133.P16359313730830088307
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016897 n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330133.P16359313730830088307

namespace A330133

/-- `∑[comp[A016897(n)+1]]` -/
def P16359313730830088307.Spec : Prop :=
  ∀ n, (P16359313730830088307.a n : ℤ) = A330133 n

end A330133

/-! ## A330133.P5776919260013336713

`∑[comp[A016885(n)+2]]`
-/

namespace A330133.P5776919260013336713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n + 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330133.P5776919260013336713

namespace A330133

/-- `∑[comp[A016885(n)+2]]` -/
def P5776919260013336713.Spec : Prop :=
  ∀ n, (P5776919260013336713.a n : ℤ) = A330133 n

end A330133

/-! ## A330133.P12306585119882347425

`∑[comp[A016861(n)+4]]`
-/

namespace A330133.P12306585119882347425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n + 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330133.P12306585119882347425

namespace A330133

/-- `∑[comp[A016861(n)+4]]` -/
def P12306585119882347425.Spec : Prop :=
  ∀ n, (P12306585119882347425.a n : ℤ) = A330133 n

end A330133

/-! ## A330133.P11529437359901235871

`n²-∑[A057353(n)]`
-/

namespace A330133.P11529437359901235871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330133.P11529437359901235871

namespace A330133

/-- `n²-∑[A057353(n)]` -/
def P11529437359901235871.Spec : Prop :=
  ∀ n, P11529437359901235871.a n = A330133 n

end A330133

/-! ## A330133.P4238100156426826562

`∑[comp[A016969(n)-n]]`
-/

namespace A330133.P4238100156426826562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330133.P4238100156426826562

namespace A330133

/-- `∑[comp[A016969(n)-n]]` -/
def P4238100156426826562.Spec : Prop :=
  ∀ n, (P4238100156426826562.a n : ℤ) = A330133 n

end A330133

/-! ## A330133.P14170175603430074101

`floor((A032527(n)+1)/2)`
-/

namespace A330133.P14170175603430074101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A032527 n + 1 : ℚ) / 2⌋

end

end A330133.P14170175603430074101

namespace A330133

/-- `floor((A032527(n)+1)/2)` -/
def P14170175603430074101.Spec : Prop :=
  ∀ n, P14170175603430074101.a n = A330133 n

end A330133

/-! ## A330133.P11219547050902532863

`(A008811(n)+n²)/2`
-/

namespace A330133.P11219547050902532863
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008811 n + (n ^ 2 : ℤ) : ℚ) / 2

end

end A330133.P11219547050902532863

namespace A330133

/-- `(A008811(n)+n²)/2` -/
def P11219547050902532863.Spec : Prop :=
  ∀ n, P11219547050902532863.a n = (A330133 n : ℚ)

end A330133

/-!
# A330135: a(n) = ((10^(n+1))^4 - 1)/9999 for n >= 0.

The programs for A330135, there is no canonical definition to state claims against.
-/

/-! ## A330135.P7784558328415881438

`∑[10^(4*n)]`
-/

namespace A330135.P7784558328415881438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ (4 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330135.P7784558328415881438

/-! ## A330135.P5401680818788250581

`a(n-1)+10^(4*n)` with `a(0)=1`
-/

namespace A330135.P5401680818788250581
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 10 ^ (4 * n)

end

end A330135.P5401680818788250581

/-! ## A330135.P5150496204749504563

`root(10, 1/4)*a(n-1)+1` with `a(0)=1`
-/

namespace A330135.P5150496204749504563
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (10 : ℝ) ^ (1 / ((1 : ℚ) / 4 : ℝ)) * a (n - 1) + 1

end

end A330135.P5150496204749504563

/-! ## A330135.P3439105269139305984

`A118109(2*n)`
-/

namespace A330135.P3439105269139305984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118109 (2 * n)

end

end A330135.P3439105269139305984

/-! ## A330135.P8465589372511653389

`A262861(2*n)`
-/

namespace A330135.P8465589372511653389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262861 (2 * n)

end

end A330135.P8465589372511653389

/-!
# A330136: Numbers m such that 1 < gcd(m, 6) < m and m does not divide 6^e for e >= 0.

The programs for A330136, the canonical program `A330136.P7111195287136975651` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330136 has offset 1).

The definition of A330136 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7589 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330136.P5311442373596996386

`eq[A130706(A126760(n)), A322796(n)]`
-/

namespace A330136.P5311442373596996386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A126760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322796 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330136.P5311442373596996386

namespace A330136

/-- `eq[A130706(A126760(n)), A322796(n)]` -/
def P5311442373596996386.Spec : Prop :=
  ∀ n, (P5311442373596996386.a n : ℤ) = A330136 (n + 1)

end A330136

/-! ## A330136.P7111195287136975651

`∩[A047229(n+1), A081062(n+1)]`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A330136

/-- `∩[A047229(n+1), A081062(n+1)]` -/
def P7111195287136975651.Spec : Prop :=
  ∀ n, (P7111195287136975651.a n : ℤ) = A330136 (n + 1)

theorem P7111195287136975651.correct : P7111195287136975651.Spec := by
  intro n
  simp only [A330136, Nat.add_sub_cancel]

end A330136

/-! ## A330136.P9307177423594364792

`∩[A047229(n+1), A059485(n+1)]`
-/

namespace A330136.P9307177423594364792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059485 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A330136.P9307177423594364792

namespace A330136

/-- `∩[A047229(n+1), A059485(n+1)]` -/
def P9307177423594364792.Spec : Prop :=
  ∀ n, (P9307177423594364792.a n : ℤ) = A330136 (n + 1)

end A330136

/-! ## A330136.P3104140465229889713

`eq[A109017(n), A130706(A126760(n))]`
-/

namespace A330136.P3104140465229889713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A126760 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330136.P3104140465229889713

namespace A330136

/-- `eq[A109017(n), A130706(A126760(n))]` -/
def P3104140465229889713.Spec : Prop :=
  ∀ n, (P3104140465229889713.a n : ℤ) = A330136 (n + 1)

end A330136

/-! ## A330136.P7817548282183986879

`eq[A130706(A126760(n)), A134667(n)]`
-/

namespace A330136.P7817548282183986879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130706 (A126760 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330136.P7817548282183986879

namespace A330136

/-- `eq[A130706(A126760(n)), A134667(n)]` -/
def P7817548282183986879.Spec : Prop :=
  ∀ n, (P7817548282183986879.a n : ℤ) = A330136 (n + 1)

end A330136

/-! ## A330136.P11524876735157224112

`eq[char[A065331(n+1)], A163811(n)]`
-/

namespace A330136.P11524876735157224112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065331 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A330136.P11524876735157224112

namespace A330136

/-- `eq[char[A065331(n+1)], A163811(n)]` -/
def P11524876735157224112.Spec : Prop :=
  ∀ n, (P11524876735157224112.a n : ℤ) = A330136 (n + 1)

end A330136

/-! ## A330136.P11062281096731539675

`eq[A065332(2*(n+1)), A091685(n+1)]+1`
-/

namespace A330136.P11062281096731539675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065332 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091685 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A330136.P11062281096731539675

namespace A330136

/-- `eq[A065332(2*(n+1)), A091685(n+1)]+1` -/
def P11062281096731539675.Spec : Prop :=
  ∀ n, (P11062281096731539675.a n : ℤ) = A330136 (n + 1)

end A330136

/-! ## A330136.P3517119912871090150

`eq[A065332(2*(n+1)), A354354(n+1)]+1`
-/

namespace A330136.P3517119912871090150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065332 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A330136.P3517119912871090150

namespace A330136

/-- `eq[A065332(2*(n+1)), A354354(n+1)]+1` -/
def P3517119912871090150.Spec : Prop :=
  ∀ n, (P3517119912871090150.a n : ℤ) = A330136 (n + 1)

end A330136

/-! ## A330136.P12180810030538920044

`eq[A065332(A008458(n)), A091685(n)]`
-/

namespace A330136.P12180810030538920044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065332 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091685 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330136.P12180810030538920044

namespace A330136

/-- `eq[A065332(A008458(n)), A091685(n)]` -/
def P12180810030538920044.Spec : Prop :=
  ∀ n, (P12180810030538920044.a n : ℤ) = A330136 (n + 1)

end A330136

/-! ## A330136.P16847166414301602550

`eq[A065332(A008458(n)), A354354(n)]`
-/

namespace A330136.P16847166414301602550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065332 (A008458 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354354 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330136.P16847166414301602550

namespace A330136

/-- `eq[A065332(A008458(n)), A354354(n)]` -/
def P16847166414301602550.Spec : Prop :=
  ∀ n, (P16847166414301602550.a n : ℤ) = A330136 (n + 1)

end A330136

/-! ## A330136.P11844981603727458591

`eq[A109017(n), A127802(A126760(n)²)]`
-/

namespace A330136.P11844981603727458591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109017 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 (A126760 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330136.P11844981603727458591

namespace A330136

/-- `eq[A109017(n), A127802(A126760(n)²)]` -/
def P11844981603727458591.Spec : Prop :=
  ∀ n, (P11844981603727458591.a n : ℤ) = A330136 (n + 1)

end A330136

/-! ## A330136.P15242915984386735267

`eq[A014021(n+1), A127802(A126760(n)²)]`
-/

namespace A330136.P15242915984386735267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014021 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127802 (A126760 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330136.P15242915984386735267

namespace A330136

/-- `eq[A014021(n+1), A127802(A126760(n)²)]` -/
def P15242915984386735267.Spec : Prop :=
  ∀ n, (P15242915984386735267.a n : ℤ) = A330136 (n + 1)

end A330136

/-!
# A330137: Numbers m such that 1 < gcd(m, 30) < m and m does not divide 30^e for e >= 0.

The programs for A330137, the canonical program `A330137.P857110562729131261` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330137 has offset 1).

The definition of A330137 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330137.P857110562729131261

`∩[A080671(n+1), A279622(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A330137

/-- `∩[A080671(n+1), A279622(n+1)]` -/
def P857110562729131261.Spec : Prop :=
  ∀ n, (P857110562729131261.a n : ℤ) = A330137 (n + 1)

theorem P857110562729131261.correct : P857110562729131261.Spec := by
  intro n
  simp only [A330137, Nat.add_sub_cancel]

end A330137

/-! ## A330137.P942433732954646470

`∩[comp[A007775(n+1)], A279622(n+1)]`
-/

namespace A330137.P942433732954646470
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007775 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279622 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A330137.P942433732954646470

namespace A330137

/-- `∩[comp[A007775(n+1)], A279622(n+1)]` -/
def P942433732954646470.Spec : Prop :=
  ∀ n, (P942433732954646470.a n : ℤ) = A330137 (n + 1)

end A330137

/-! ## A330137.P13096499278555049622

`lt[A180230(n), A026537(A107463(n))]`
-/

namespace A330137.P13096499278555049622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180230 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026537 (A107463 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330137.P13096499278555049622

namespace A330137

/-- `lt[A180230(n), A026537(A107463(n))]` -/
def P13096499278555049622.Spec : Prop :=
  ∀ n, (P13096499278555049622.a n : ℤ) = A330137 (n + 1)

end A330137

/-!
# A330139: a(1)=1 and a(2)=1; if a(n-1) + a(n-2) == 0 (mod n) then a(n) = (a(n-1) + a(n-2))/n else a(n) = a(n-1) + a(n-2).

The programs for A330139, there is no canonical definition to state claims against.
-/

/-! ## A330139.P7378242836765409405

`A105224(xor(A064831(n), A191115(n+1)))`
-/

namespace A330139.P7378242836765409405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105224 (Int.xor (A064831 n) (A191115 (n + 1))).toNat

end

end A330139.P7378242836765409405

/-!
# A330140: Triangle read by rows: binomial transform of a signed variant of triangle A026300 with alternating signs in each column.

The programs for A330140, there is no canonical definition to state claims against.
-/

/-! ## A330140.P2893212171036809585

`A225600(A056885(n)%A213710(2*n+1))`
-/

namespace A330140.P2893212171036809585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225600 (Int.tmod (A056885 n) (A213710 (2 * n + 1))).toNat

end

end A330140.P2893212171036809585

/-! ## A330140.P2205620789827012839

`A048715(A056885(n)%A326131(n+1))`
-/

namespace A330140.P2205620789827012839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048715 (Int.tmod (A056885 n) (A326131 (n + 1))).toNat

end

end A330140.P2205620789827012839

/-! ## A330140.P2285353874213263131

`A178798(A027336(n))+A091866(n)`
-/

namespace A330140.P2285353874213263131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A027336 n).toNat + A091866 n

end

end A330140.P2285353874213263131

/-! ## A330140.P3560442211722231405

`A091866(n)-A016389(A110367(n+1))`
-/

namespace A330140.P3560442211722231405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091866 n - A016389 (A110367 (n + 1)).toNat

end

end A330140.P3560442211722231405

/-! ## A330140.P2038828428504655891

`A010815(A268092(n+2))+A144528(n+1)²`
-/

namespace A330140.P2038828428504655891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A268092 (n + 2)).toNat + A144528 (n + 1) ^ 2

end

end A330140.P2038828428504655891

/-!
# A330143: Beatty sequence for (3/2)^x, where (2/3)^x + (2/5)^x = 1.

The programs for A330143, the canonical program `A330143.P6705874495128065168` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330143 has offset 1).

The definition of A330143 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 146 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330143.P6705874495128065168

`floor(log(A017973(n+1)))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A330143

/-- `floor(log(A017973(n+1)))` -/
def P6705874495128065168.Spec : Prop :=
  ∀ n, P6705874495128065168.a n = A330143 (n + 1)

theorem P6705874495128065168.correct : P6705874495128065168.Spec := by
  intro n
  simp only [A330143, Nat.add_sub_cancel]

end A330143

/-! ## A330143.P16030324761214434150

`floor(log(A017974(n+1)))`
-/

namespace A330143.P16030324761214434150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A017974 (n + 1) : ℝ)⌋

end

end A330143.P16030324761214434150

namespace A330143

/-- `floor(log(A017974(n+1)))` -/
def P16030324761214434150.Spec : Prop :=
  ∀ n, P16030324761214434150.a n = A330143 (n + 1)

end A330143

/-! ## A330143.P5752932794352477291

`floor(log(A017975(n+1)))`
-/

namespace A330143.P5752932794352477291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log (A017975 (n + 1) : ℝ)⌋

end

end A330143.P5752932794352477291

namespace A330143

/-- `floor(log(A017975(n+1)))` -/
def P5752932794352477291.Spec : Prop :=
  ∀ n, P5752932794352477291.a n = A330143 (n + 1)

end A330143

/-! ## A330143.P15997290799567733911

`A000196(∑[A250120(n)+A003059(n+1)])`
-/

namespace A330143.P15997290799567733911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n + A003059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330143.P15997290799567733911

namespace A330143

/-- `A000196(∑[A250120(n)+A003059(n+1)])` -/
def P15997290799567733911.Spec : Prop :=
  ∀ n, P15997290799567733911.a n = A330143 (n + 1)

end A330143

/-! ## A330143.P1043718418838297866

`A140758(A333768(2*n+1)+n)`
-/

namespace A330143.P1043718418838297866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140758 (A333768 (2 * n + 1) + (n : ℤ)).toNat

end

end A330143.P1043718418838297866

namespace A330143

/-- `A140758(A333768(2*n+1)+n)` -/
def P1043718418838297866.Spec : Prop :=
  ∀ n, P1043718418838297866.a n = A330143 (n + 1)

end A330143

/-!
# A330144: Beatty sequence for (5/2)^x, where (2/3)^x + (2/5)^x = 1.

The programs for A330144, the canonical program `A330144.P17956642538605916648` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330144 has offset 1).

The definition of A330144 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 101 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330144.P17956642538605916648

`floor((n+1)*(tanh(tanh(n))+2))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A330144

/-- `floor((n+1)*(tanh(tanh(n))+2))` -/
def P17956642538605916648.Spec : Prop :=
  ∀ n, P17956642538605916648.a n = A330144 (n + 1)

theorem P17956642538605916648.correct : P17956642538605916648.Spec := by
  intro n
  simp only [A330144, Nat.add_sub_cancel]

end A330144

/-!
# A330145: Number of partitions p of n such that (number of numbers in p that have multiplicity 1) >= (number of numbers in p having multiplicity > 1).

The programs for A330145, there is no canonical definition to state claims against.
-/

/-! ## A330145.P6304120487737938184

`A241274(n)+A329976(n)`
-/

namespace A330145.P6304120487737938184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241274 n + A329976 n

end

end A330145.P6304120487737938184

/-! ## A330145.P15431800946055057342

`A000041(n)-A330001(n)`
-/

namespace A330145.P15431800946055057342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A330001 n

end

end A330145.P15431800946055057342

/-! ## A330145.P10021844606731613174

`sqrt(A001255(n))-A330001(n)`
-/

namespace A330145.P10021844606731613174
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A330001 n : ℝ)

end

end A330145.P10021844606731613174

/-! ## A330145.P9097449005933470657

`∑[A002865(n)]-A330001(n)`
-/

namespace A330145.P9097449005933470657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A330001 n

end

end A330145.P9097449005933470657

/-! ## A330145.P16761636331924111672

`1+A000065(n)-A330001(n)`
-/

namespace A330145.P16761636331924111672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000065 n - A330001 n

end

end A330145.P16761636331924111672

/-! ## A330145.P17322827608133694207

`A241274(n)+A000041(n)-A330146(n)`
-/

namespace A330145.P17322827608133694207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241274 n + A000041 n - A330146 n

end

end A330145.P17322827608133694207

/-! ## A330145.P12557085277121234782

`A329976(n)+A000041(n)-A330147(n)`
-/

namespace A330145.P12557085277121234782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329976 n + A000041 n - A330147 n

end

end A330145.P12557085277121234782

/-!
# A330146: Number of partitions p of n such that (number of numbers in p that have multiplicity 1) <= (number of numbers in p having multiplicity > 1).

The programs for A330146, there is no canonical definition to state claims against.
-/

/-! ## A330146.P7864577613420927094

`A000041(n)-A329976(n)`
-/

namespace A330146.P7864577613420927094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A329976 n

end

end A330146.P7864577613420927094

/-! ## A330146.P849046787929287479

`sqrt(A001255(n))-A329976(n)`
-/

namespace A330146.P849046787929287479
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A329976 n : ℝ)

end

end A330146.P849046787929287479

/-! ## A330146.P2665465946867949635

`∑[A002865(n)]-A329976(n)`
-/

namespace A330146.P2665465946867949635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A329976 n

end

end A330146.P2665465946867949635

/-! ## A330146.P3785369704114632374

`A241274(n)+A330001(n)`
-/

namespace A330146.P3785369704114632374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241274 n + A330001 n

end

end A330146.P3785369704114632374

/-! ## A330146.P3820615422505767678

`A241274(n)+A000041(n)-A330145(n)`
-/

namespace A330146.P3820615422505767678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241274 n + A000041 n - A330145 n

end

end A330146.P3820615422505767678

/-! ## A330146.P8769178470951199897

`A330145(n)+A330001(n)-A329976(n)`
-/

namespace A330146.P8769178470951199897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330145 n + A330001 n - A329976 n

end

end A330146.P8769178470951199897

/-! ## A330146.P15477652749687997545

`A330147(n)+A241274(n)-A329976(n)`
-/

namespace A330146.P15477652749687997545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330147 n + A241274 n - A329976 n

end

end A330146.P15477652749687997545

/-!
# A330147: Number of partitions p of n such that (number of numbers in p that have multiplicity 1) != (number of numbers in p having multiplicity > 1).

The programs for A330147, there is no canonical definition to state claims against.
-/

/-! ## A330147.P9249496627125197868

`A329976(n)+A330001(n)`
-/

namespace A330147.P9249496627125197868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329976 n + A330001 n

end

end A330147.P9249496627125197868

/-! ## A330147.P2321076352010107274

`A000041(n)-A241274(n)`
-/

namespace A330147.P2321076352010107274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A241274 n

end

end A330147.P2321076352010107274

/-! ## A330147.P1557470975652141000

`sqrt(A001255(n))-A241274(n)`
-/

namespace A330147.P1557470975652141000
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001255 n : ℝ) - (A241274 n : ℝ)

end

end A330147.P1557470975652141000

/-! ## A330147.P4429121138565246101

`∑[A002865(n)]-A241274(n)`
-/

namespace A330147.P4429121138565246101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A241274 n

end

end A330147.P4429121138565246101

/-! ## A330147.P463923571106058705

`1+A000065(n)-A241274(n)`
-/

namespace A330147.P463923571106058705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000065 n - A241274 n

end

end A330147.P463923571106058705

/-! ## A330147.P14522311956781476362

`A329976(n)+A000041(n)-A330145(n)`
-/

namespace A330147.P14522311956781476362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329976 n + A000041 n - A330145 n

end

end A330147.P14522311956781476362

/-! ## A330147.P12266039779088397232

`A330146(n)+A329976(n)-A241274(n)`
-/

namespace A330147.P12266039779088397232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330146 n + A329976 n - A241274 n

end

end A330147.P12266039779088397232

/-! ## A330147.P18319543048453737758

`A330145(n)+A330001(n)-A241274(n)`
-/

namespace A330147.P18319543048453737758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330145 n + A330001 n - A241274 n

end

end A330147.P18319543048453737758

/-!
# A330148: a(n) = Sum_{k=1..n} binomial(n,k) * phi(k) * phi(n - k + 1), where phi = A000010.

The programs for A330148, the canonical program `A330148.P15168364197566470` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330148 has offset 1).

The definition of A330148 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n+1, #+1)*A000010(#+1)*A000010(n+1-#)]` (program `A330148.P15168364197566470`, by `A330148.P15168364197566470.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330148.P15168364197566470

`∑{#}[n, C(n+1, #+1)*A000010(#+1)*A000010(n+1-#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A330148

/-- `∑{#}[n, C(n+1, #+1)*A000010(#+1)*A000010(n+1-#)]` -/
def P15168364197566470.Spec : Prop :=
  ∀ n, P15168364197566470.a n = A330148 (n + 1)

theorem P15168364197566470.correct : P15168364197566470.Spec := by
  intro n
  simp only [A330148, Nat.add_sub_cancel]

end A330148

/-! ## A330148.P17321560006770000588

`∑{#}[n, C(n+1, #+1)*A000010(#+1)*A000010(n+1-(#+1)+1)]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A330148.P17321560006770000588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose (n + 1) (k + 1) : ℤ) * A000010 (k + 1) * A000010 ((n + 1 : ℤ) - (k + 1 : ℤ) + 1).toNat

end

end A330148.P17321560006770000588

namespace A330148

/-- `∑{#}[n, C(n+1, #+1)*A000010(#+1)*A000010(n+1-(#+1)+1)]` -/
def P17321560006770000588.Spec : Prop :=
  ∀ n, P17321560006770000588.a n = A330148 (n + 1)

end A330148

/-!
# A330149: Expansion of e.g.f. exp(-x) / (1 + log(1 - x)).

The programs for A330149, there is no canonical definition to state claims against.
-/

/-! ## A330149.P5643469765185316290

`∑{#}[n, (-1)^(n-#)*C(n, #)*A007840(#)]`
-/

namespace A330149.P5643469765185316290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A007840 k : ℚ)

end

end A330149.P5643469765185316290

/-! ## A330149.P17638417031980700617

`A008612(n*A162326(n))`
-/

namespace A330149.P17638417031980700617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 ((n : ℤ) * A162326 n).toNat

end

end A330149.P17638417031980700617

/-!
# A330150: Expansion of e.g.f. exp(-x) / (1 - log(1 + x)).

The programs for A330150, there is no canonical definition to state claims against.
-/

/-! ## A330150.P3004549673982135009

`∑{#}[n, (-1)^(n-#)*C(n, #)*A006252(#)]`
-/

namespace A330150.P3004549673982135009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A006252 k : ℚ)

end

end A330150.P3004549673982135009

/-! ## A330150.P5608582480419066240

`∑{#}[n, C(n, #)*A368289(#)]`
-/

namespace A330150.P5608582480419066240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A368289 k

end

end A330150.P5608582480419066240

/-!
# A330151: Partial sums of 4th powers of the even numbers.

The programs for A330151, the canonical program `A330151.P12119988701062978959` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330151 has offset 0).

The definition of A330151 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330151.P15730768576190390297

`ogf((16x+176x^2+176x^3+16x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A330151.P15730768576190390297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 16, 176, 176, 16] [1, -6, 15, -20, 15, -6, 1] n

end

end A330151.P15730768576190390297

namespace A330151

/-- `ogf((16x+176x^2+176x^3+16x^4)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P15730768576190390297.Spec : Prop :=
  ∀ n, P15730768576190390297.a n = A330151 n

end A330151

/-! ## A330151.P12119988701062978959

`8/15*n*(6*n^4+15*n^3+10*n²-1)`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A330151

/-- `8/15*n*(6*n^4+15*n^3+10*n²-1)` -/
def P12119988701062978959.Spec : Prop :=
  ∀ n, P12119988701062978959.a n = (A330151 n : ℚ)

end A330151

/-! ## A330151.P13773051936401499656

`lcm(2, ∑[(2*n)²²])`
-/

namespace A330151.P13773051936401499656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330151.P13773051936401499656

namespace A330151

/-- `lcm(2, ∑[(2*n)²²])` -/
def P13773051936401499656.Spec : Prop :=
  ∀ n, (P13773051936401499656.a n : ℤ) = A330151 n

end A330151

/-! ## A330151.P2071729448058811370

`and(-2, ∑[(2*n)²²])`
-/

namespace A330151.P2071729448058811370
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A330151.P2071729448058811370

namespace A330151

/-- `and(-2, ∑[(2*n)²²])` -/
def P2071729448058811370.Spec : Prop :=
  ∀ n, P2071729448058811370.a n = A330151 n

end A330151

/-! ## A330151.P14895958182478827069

`xor(1, ∑[(2*n)²²]+1)`
-/

namespace A330151.P14895958182478827069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A330151.P14895958182478827069

namespace A330151

/-- `xor(1, ∑[(2*n)²²]+1)` -/
def P14895958182478827069.Spec : Prop :=
  ∀ n, (P14895958182478827069.a n : ℤ) = A330151 n

end A330151

/-! ## A330151.P16621623337262914649

`or(1, ∑[(2*n)²²])-1`
-/

namespace A330151.P16621623337262914649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A330151.P16621623337262914649

namespace A330151

/-- `or(1, ∑[(2*n)²²])-1` -/
def P16621623337262914649.Spec : Prop :=
  ∀ n, P16621623337262914649.a n = A330151 n

end A330151

/-! ## A330151.P17938959263442704750

`xor(1, ∑[(2*n)²²])-1`
-/

namespace A330151.P17938959263442704750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ) - 1

end

end A330151.P17938959263442704750

namespace A330151

/-- `xor(1, ∑[(2*n)²²])-1` -/
def P17938959263442704750.Spec : Prop :=
  ∀ n, P17938959263442704750.a n = A330151 n

end A330151

/-! ## A330151.P7232753956653278144

`a(n-1)+(2*n)^4` with `a(0)=0`
-/

namespace A330151.P7232753956653278144
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 * n) ^ 4

end

end A330151.P7232753956653278144

namespace A330151

/-- `a(n-1)+(2*n)^4` -/
def P7232753956653278144.Spec : Prop :=
  ∀ n, (P7232753956653278144.a n : ℤ) = A330151 n

end A330151

/-! ## A330151.P10165134528353929350

`∑[∑[a(n-1)+8]²]` with `a(0)=0, a(1)=4`
-/

namespace A330151.P10165134528353929350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  f2 (n - 1) + 8

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330151.P10165134528353929350

namespace A330151

/-- `∑[∑[a(n-1)+8]²]` -/
def P10165134528353929350.Spec : Prop :=
  ∀ n, (P10165134528353929350.a n : ℤ) = A330151 n

end A330151

/-! ## A330151.P4008876369565673463

`(2*n)²²+a(n-1)` with `a(0)=0`
-/

namespace A330151.P4008876369565673463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 2) ^ 2 + a (n - 1)

end

end A330151.P4008876369565673463

namespace A330151

/-- `(2*n)²²+a(n-1)` -/
def P4008876369565673463.Spec : Prop :=
  ∀ n, (P4008876369565673463.a n : ℤ) = A330151 n

end A330151

/-! ## A330151.P12648100869495943168

`∑[(2*n)²²]+and(2, n²)`
-/

namespace A330151.P12648100869495943168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.land 2 (n ^ 2)

end

end A330151.P12648100869495943168

namespace A330151

/-- `∑[(2*n)²²]+and(2, n²)` -/
def P12648100869495943168.Spec : Prop :=
  ∀ n, (P12648100869495943168.a n : ℤ) = A330151 n

end A330151

/-! ## A330151.P16558081667523674259

`gcd(and(2, n²), ∑[(2*n)²²])`
-/

namespace A330151.P16558081667523674259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.land 2 (n ^ 2)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330151.P16558081667523674259

namespace A330151

/-- `gcd(and(2, n²), ∑[(2*n)²²])` -/
def P16558081667523674259.Spec : Prop :=
  ∀ n, (P16558081667523674259.a n : ℤ) = A330151 n

end A330151

/-! ## A330151.P9173512492583416479

`C(∑[(2*n)²²], ϕ²-ϕ)`
-/

namespace A330151.P9173512492583416479
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - Real.goldenRatio)).toNat

end

end A330151.P9173512492583416479

namespace A330151

/-- `C(∑[(2*n)²²], ϕ²-ϕ)` -/
def P9173512492583416479.Spec : Prop :=
  ∀ n, (P9173512492583416479.a n : ℤ) = A330151 n

end A330151

/-! ## A330151.P1429906239378857011

`∑[(2*n)²²]+C(2, n+3)`
-/

namespace A330151.P1429906239378857011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose 2 (n + 3)

end

end A330151.P1429906239378857011

namespace A330151

/-- `∑[(2*n)²²]+C(2, n+3)` -/
def P1429906239378857011.Spec : Prop :=
  ∀ n, (P1429906239378857011.a n : ℤ) = A330151 n

end A330151

/-! ## A330151.P15068151223003840434

`gcd(n, n+1)*∑[(2*n)²²]`
-/

namespace A330151.P15068151223003840434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330151.P15068151223003840434

namespace A330151

/-- `gcd(n, n+1)*∑[(2*n)²²]` -/
def P15068151223003840434.Spec : Prop :=
  ∀ n, (P15068151223003840434.a n : ℤ) = A330151 n

end A330151

/-! ## A330151.P2696522958136781300

`(2*n)^4-floor(-a(n-1))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A330151.P2696522958136781300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 4 : ℤ) - (-a (n - 1))

end

end A330151.P2696522958136781300

namespace A330151

/-- `(2*n)^4-floor(-a(n-1))` -/
def P2696522958136781300.Spec : Prop :=
  ∀ n, P2696522958136781300.a n = A330151 n

end A330151

/-! ## A330151.P18418688329136581648

`(2*n)^4-ceil(-a(n-1))` with `a(0)=0`

`ceil` is left out, it is the identity on integers.
-/

namespace A330151.P18418688329136581648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 4 : ℤ) - (-a (n - 1))

end

end A330151.P18418688329136581648

namespace A330151

/-- `(2*n)^4-ceil(-a(n-1))` -/
def P18418688329136581648.Spec : Prop :=
  ∀ n, P18418688329136581648.a n = A330151 n

end A330151

/-! ## A330151.P15770384813630857850

`(2*n)^4-round(-a(n-1))` with `a(0)=0`

`round` is left out, it is the identity on integers.
-/

namespace A330151.P15770384813630857850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 * n) ^ 4 : ℤ) - (-a (n - 1))

end

end A330151.P15770384813630857850

namespace A330151

/-- `(2*n)^4-round(-a(n-1))` -/
def P15770384813630857850.Spec : Prop :=
  ∀ n, P15770384813630857850.a n = A330151 n

end A330151

/-! ## A330151.P616771583870377132

`∑[(2*n)²²]-and(1, 2*n)²`
-/

namespace A330151.P616771583870377132
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (Nat.land 1 (2 * n) ^ 2 : ℤ)

end

end A330151.P616771583870377132

namespace A330151

/-- `∑[(2*n)²²]-and(1, 2*n)²` -/
def P616771583870377132.Spec : Prop :=
  ∀ n, P616771583870377132.a n = A330151 n

end A330151

/-! ## A330151.P496490186864783060

`∑[(2*n)²²]/gcd(n-1, n²)`
-/

namespace A330151.P496490186864783060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Int.gcd ((n : ℤ) - 1) (n ^ 2 : ℤ) : ℚ)

end

end A330151.P496490186864783060

namespace A330151

/-- `∑[(2*n)²²]/gcd(n-1, n²)` -/
def P496490186864783060.Spec : Prop :=
  ∀ n, P496490186864783060.a n = (A330151 n : ℚ)

end A330151

/-!
# A330152: Absolute multiplicative persistence: a(n) is the least number with multiplicative persistence n for some base b > 1.

The programs for A330152, there is no canonical definition to state claims against.
-/

/-! ## A330152.P4317637933165533000

`A118070(A026710(n+1))`
-/

namespace A330152.P4317637933165533000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118070 (A026710 (n + 1)).toNat

end

end A330152.P4317637933165533000

/-! ## A330152.P10736898159810415384

`xor(1, A055086(A035029(n)))`
-/

namespace A330152.P10736898159810415384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A055086 (A035029 n).toNat)

end

end A330152.P10736898159810415384

/-!
# A330153: Nearest integer to the product of all integer roots of n from the second to the n-th.

The programs for A330153, there is no canonical definition to state claims against.
-/

/-! ## A330153.P13028253522991781686

`round((n+1)^(∑[1/(n+1)]-1))`
-/

namespace A330153.P13028253522991781686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 1 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℚ) : ℝ))

end

end A330153.P13028253522991781686

/-! ## A330153.P15875041175464016434

`A003059(A266494(n+5))-n`
-/

namespace A330153.P15875041175464016434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A266494 (n + 5)).toNat - (n : ℤ)

end

end A330153.P15875041175464016434

/-! ## A330153.P9972688523444409112

`A137734(∑[∑[A277361(n+1)]])`
-/

namespace A330153.P9972688523444409112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277361 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137734 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A330153.P9972688523444409112

/-! ## A330153.P259838887532082793

`floor(A060005(n)/A194091(n+1))`
-/

namespace A330153.P259838887532082793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060005 n : ℚ) / (A194091 (n + 1) : ℚ)⌋

end

end A330153.P259838887532082793

/-! ## A330153.P2755935623927942758

`A002024(A086225(n))-(2*n+3)`
-/

namespace A330153.P2755935623927942758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A086225 n).toNat - (2 * n + 3 : ℤ)

end

end A330153.P2755935623927942758

/-!
# A330155: Triangle read by rows. Given n enumerated cards in a stack, with 1 at the top and n at the bottom, repeat the following process k times: remove the card in the middle (at position (size of the stack)/2, rounding up), and move the card at the bottom of the stack to the top. T(n,k) is the number of the last card removed.

The programs for A330155, there is no canonical definition to state claims against.
-/

/-! ## A330155.P8278553080731906123

`A001222(A353392(n+1)+A169942(3*n+2))`
-/

namespace A330155.P8278553080731906123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A353392 (n + 1) + A169942 (3 * n + 2)).toNat

end

end A330155.P8278553080731906123

/-! ## A330155.P16217770413158311920

`A001222(A101398(n+1)+n+10)`
-/

namespace A330155.P16217770413158311920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A101398 (n + 1) + (n + 10 : ℤ)).toNat

end

end A330155.P16217770413158311920

/-! ## A330155.P6311931669481983043

`A342749(A002203(n)%∑[A004445(n)])`
-/

namespace A330155.P6311931669481983043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004445 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342749 (Int.tmod (A002203 n) (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A330155.P6311931669481983043

/-! ## A330155.P4538998444976148749

`A298614(A229886(n)+A000040(n+1))`
-/

namespace A330155.P4538998444976148749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298614 (A229886 n + A000040 (n + 1)).toNat

end

end A330155.P4538998444976148749

/-! ## A330155.P15284805789859760270

`A050603(A189391(n)+A084301(n+4))`
-/

namespace A330155.P15284805789859760270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 (A189391 n + A084301 (n + 4)).toNat

end

end A330155.P15284805789859760270

/-!
# A330158: Number of nonnegative integer matrices with total sum n, distinct columns with equal sums and any number of nonzero rows in nonincreasing lexicographic order.

The programs for A330158, there is no canonical definition to state claims against.
-/

/-! ## A330158.P8581399238030469393

`∑{d}[n+1, A331161(C((n+1)/#+#+1, 2)+#)]`
-/

namespace A330158.P8581399238030469393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A331161 (Nat.choose (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) + (d : ℚ) + 1)).toNat 2 + d)

end

end A330158.P8581399238030469393

/-!
# A330160: Positions of 2 in A309059.

The programs for A330160, there is no canonical definition to state claims against.
-/

/-! ## A330160.P15568602410173146153

`lt[1, A309059(n+1)]+1`
-/

namespace A330160.P15568602410173146153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309059 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A330160.P15568602410173146153

/-! ## A330160.P16687748971880086945

`eq[2, A309059(n+2)]+2`
-/

namespace A330160.P16687748971880086945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309059 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A330160.P16687748971880086945

/-! ## A330160.P15259905672327278770

`eq[2, A309059(A028310(n))]`
-/

namespace A330160.P15259905672327278770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309059 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A330160.P15259905672327278770

/-! ## A330160.P7799539357142440610

`A020725(eq[2, A309059(n+1)])`
-/

namespace A330160.P7799539357142440610
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A330160.P7799539357142440610

/-! ## A330160.P16815277413563478016

`A065475(eq[2, A309059(n+1)])`
-/

namespace A330160.P16815277413563478016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309059 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A330160.P16815277413563478016

/-!
# A330165: Odd terms in A003171: negated odd discriminants of orders of imaginary quadratic fields with 1 class per genus.

The programs for A330165, there is no canonical definition to state claims against.
-/

/-! ## A330165.P15288396507772527658

`filter[A003171(n+1), #%2]`
-/

namespace A330165.P15288396507772527658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j) 2 = 1) n)

end

end A330165.P15288396507772527658

/-! ## A330165.P913925442705808421

`record[A000265(A003171(n+1))]`
-/

namespace A330165.P913925442705808421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A003171 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330165.P913925442705808421

/-! ## A330165.P9359916680373629124

`record[A029579(A003171(n+2))]`
-/

namespace A330165.P9359916680373629124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A003171 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A330165.P9359916680373629124

/-! ## A330165.P2319743561484085846

`filter[A003171(n+1), A000035(#)]`
-/

namespace A330165.P2319743561484085846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A330165.P2319743561484085846

/-! ## A330165.P10367613359502403758

`filter[A003171(n+1), A021913(#)]`
-/

namespace A330165.P10367613359502403758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A021913 (f1 j).toNat = 1) n)

end

end A330165.P10367613359502403758

/-!
# A330166: Length of the longest run of 0's in the ternary expression of n.

The programs for A330166, there is no canonical definition to state claims against.
-/

/-! ## A330166.P15382052631444358415

`A087117(A289831(n))`
-/

namespace A330166.P15382052631444358415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A289831 n).toNat

end

end A330166.P15382052631444358415

/-! ## A330166.P17250475110392530314

`val(A290092(A171960(n)), 2)`
-/

namespace A330166.P17250475110392530314
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A290092 (A171960 n).toNat).toNat 2

end

end A330166.P17250475110392530314

/-! ## A330166.P16178012429324280825

`val(A290091(A256293(n)), 2)`
-/

namespace A330166.P16178012429324280825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A290091 (A256293 n).toNat).toNat 2

end

end A330166.P16178012429324280825

/-! ## A330166.P13647461254141322285

`val(A290092(A284797(n)), 2)`
-/

namespace A330166.P13647461254141322285
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A290092 (A284797 n).toNat).toNat 2

end

end A330166.P13647461254141322285

/-! ## A330166.P14394345108656799776

`A330168(A171960(A117966(n)+n))`
-/

namespace A330166.P14394345108656799776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330168 (A171960 (A117966 n + (n : ℤ)).toNat).toNat

end

end A330166.P14394345108656799776

/-! ## A330166.P8346815028591494343

`A087117(A289814(n)+A289813(n))`
-/

namespace A330166.P8346815028591494343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A289814 n + A289813 n).toNat

end

end A330166.P8346815028591494343

/-! ## A330166.P10934727749265662704

`A330168(A171960(n)-A117966(n))`
-/

namespace A330166.P10934727749265662704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330168 (A171960 n - A117966 n).toNat

end

end A330166.P10934727749265662704

/-! ## A330166.P4963901385673795133

`A087117(or(A289813(n), A289814(n)))`
-/

namespace A330166.P4963901385673795133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (Int.lor (A289813 n) (A289814 n)).toNat

end

end A330166.P4963901385673795133

/-! ## A330166.P6227841429508309726

`A087117(xor(A289813(n), A289814(n)))`
-/

namespace A330166.P6227841429508309726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (Int.xor (A289813 n) (A289814 n)).toNat

end

end A330166.P6227841429508309726

/-! ## A330166.P6197980347546983836

`A332025(n)-(A330168(n)+A330167(n))`
-/

namespace A330166.P6197980347546983836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332025 n - (A330168 n + A330167 n)

end

end A330166.P6197980347546983836

/-!
# A330167: Length of the longest run of 1's in the ternary expression of n.

The programs for A330167, there is no canonical definition to state claims against.
-/

/-! ## A330167.P13273862132957299792

`val(A290091(n), 2)`
-/

namespace A330167.P13273862132957299792
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A290091 n).toNat 2

end

end A330167.P13273862132957299792

/-! ## A330167.P10175359576892664025

`log2(gcd(16, A290091(3*n)))`
-/

namespace A330167.P10175359576892664025
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 16 (A290091 (3 * n)) : ℝ)

end

end A330167.P10175359576892664025

/-! ## A330167.P9750740955838790343

`A007814(A290091(n))`
-/

namespace A330167.P9750740955838790343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A290091 n).toNat

end

end A330167.P9750740955838790343

/-! ## A330167.P17927889500110674758

`A272604(A289813(n))`
-/

namespace A330167.P17927889500110674758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272604 (A289813 n).toNat

end

end A330167.P17927889500110674758

/-! ## A330167.P9085363859753822295

`A375537(A290093(n))`
-/

namespace A330167.P9085363859753822295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375537 (A290093 n).toNat

end

end A330167.P9085363859753822295

/-! ## A330167.P15119402644546032807

`A001822(A290091(n)²)`
-/

namespace A330167.P15119402644546032807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A290091 n ^ 2).toNat

end

end A330167.P15119402644546032807

/-! ## A330167.P1495776078913051480

`A160380(A290091(n)²)`
-/

namespace A330167.P1495776078913051480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (A290091 n ^ 2).toNat

end

end A330167.P1495776078913051480

/-! ## A330167.P2377159665737015076

`A064918(A290091(n)+2)`
-/

namespace A330167.P2377159665737015076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064918 (A290091 n + 2).toNat

end

end A330167.P2377159665737015076

/-! ## A330167.P402962866598614586

`A046660(2*A290091(n))`
-/

namespace A330167.P402962866598614586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046660 (2 * A290091 n).toNat

end

end A330167.P402962866598614586

/-! ## A330167.P17656578756072693307

`val(A290092(A004488(n)), 2)`
-/

namespace A330167.P17656578756072693307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A290092 (A004488 n).toNat).toNat 2

end

end A330167.P17656578756072693307

/-!
# A330168: Length of the longest run of 2's in the ternary expression of n.

The programs for A330168, there is no canonical definition to state claims against.
-/

/-! ## A330168.P16601924910983700034

`val(A290092(n), 2)`
-/

namespace A330168.P16601924910983700034
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A290092 n).toNat 2

end

end A330168.P16601924910983700034

/-! ## A330168.P409834770574464276

`log2(gcd(64, A290092(3*n+1)))`
-/

namespace A330168.P409834770574464276
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 64 (A290092 (3 * n + 1)) : ℝ)

end

end A330168.P409834770574464276

/-! ## A330168.P9137937799793894248

`A007814(A290092(n))`
-/

namespace A330168.P9137937799793894248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A290092 n).toNat

end

end A330168.P9137937799793894248

/-! ## A330168.P959038073157930562

`A126387(A289814(n))`
-/

namespace A330168.P959038073157930562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126387 (A289814 n).toNat

end

end A330168.P959038073157930562

/-! ## A330168.P14129569700383310210

`A330167(A374362(n))`
-/

namespace A330168.P14129569700383310210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330167 (A374362 n).toNat

end

end A330168.P14129569700383310210

/-! ## A330168.P18412341493878236518

`A001822(A290092(n)²)`
-/

namespace A330168.P18412341493878236518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A290092 n ^ 2).toNat

end

end A330168.P18412341493878236518

/-! ## A330168.P15428619114783002825

`A160380(A290092(n)²)`
-/

namespace A330168.P15428619114783002825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160380 (A290092 n ^ 2).toNat

end

end A330168.P15428619114783002825

/-! ## A330168.P13033962653279557575

`A235127(A290092(n)²)`
-/

namespace A330168.P13033962653279557575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235127 (A290092 n ^ 2).toNat

end

end A330168.P13033962653279557575

/-! ## A330168.P9306226277135236479

`A001822(A290092(n)^2)`
-/

namespace A330168.P9306226277135236479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001822 (A290092 n ^ 2).toNat

end

end A330168.P9306226277135236479

/-! ## A330168.P14031553587823460038

`val(A290091(A004488(n)), 2)`
-/

namespace A330168.P14031553587823460038
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A290091 (A004488 n).toNat).toNat 2

end

end A330168.P14031553587823460038

/-!
# A330169: a(n) is the total area of all closed Deutsch paths of length n.

The programs for A330169, the canonical program `A330169.P8562627954708430707` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330169 has offset 2).

The definition of A330169 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330169.P8562627954708430707

`A055218(n)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A330169

/-- `A055218(n)-a(n-1)` -/
def P8562627954708430707.Spec : Prop :=
  ∀ n, P8562627954708430707.a n = A330169 (n + 2)

theorem P8562627954708430707.correct : P8562627954708430707.Spec := by
  intro n
  simp only [A330169, Nat.add_sub_cancel]

end A330169

/-! ## A330169.P12326800626669986756

`abs(∑[A033999(n)*A055218(n)])`
-/

namespace A330169.P12326800626669986756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A055218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A330169.P12326800626669986756

namespace A330169

/-- `abs(∑[A033999(n)*A055218(n)])` -/
def P12326800626669986756.Spec : Prop :=
  ∀ n, P12326800626669986756.a n = A330169 (n + 2)

end A330169

/-! ## A330169.P15935039046742008948

`∑[A033999(n)*A055218(n)]*A033999(n+2)`
-/

namespace A330169.P15935039046742008948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A055218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A033999 (n + 2)

end

end A330169.P15935039046742008948

namespace A330169

/-- `∑[A033999(n)*A055218(n)]*A033999(n+2)` -/
def P15935039046742008948.Spec : Prop :=
  ∀ n, P15935039046742008948.a n = A330169 (n + 2)

end A330169

/-! ## A330169.P15358842567206087626

`(A004442(n)-n)*∑[A033999(n)*A055218(n)]`
-/

namespace A330169.P15358842567206087626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A055218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A004442 n - (n : ℤ)) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A330169.P15358842567206087626

namespace A330169

/-- `(A004442(n)-n)*∑[A033999(n)*A055218(n)]` -/
def P15358842567206087626.Spec : Prop :=
  ∀ n, P15358842567206087626.a n = A330169 (n + 2)

end A330169

/-! ## A330169.P6400267559868249332

`∑[A033999(n)*A055218(n)]/A033999(3*n²)`
-/

namespace A330169.P6400267559868249332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A055218 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A033999 (3 * n ^ 2) : ℚ)

end

end A330169.P6400267559868249332

namespace A330169

/-- `∑[A033999(n)*A055218(n)]/A033999(3*n²)` -/
def P6400267559868249332.Spec : Prop :=
  ∀ n, P6400267559868249332.a n = (A330169 (n + 2) : ℚ)

end A330169

/-!
# A330170: a(n) = 2^n + 3^n + 6^n - 1.

The programs for A330170, the canonical program `A330170.P15621725831571584652` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330170 has offset 1).

The definition of A330170 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^(n+1)+3^(n+1)+6^(n+1)-1` (program `A330170.P15621725831571584652`, by `A330170.P15621725831571584652.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330170.P14060343826154113417

`ogf((10-72x+144x^2-72x^3)/(1-12x+47x^2-72x^3+36x^4))`
-/

namespace A330170.P14060343826154113417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [10, -72, 144, -72] [1, -12, 47, -72, 36] n

end

end A330170.P14060343826154113417

namespace A330170

/-- `ogf((10-72x+144x^2-72x^3)/(1-12x+47x^2-72x^3+36x^4))` -/
def P14060343826154113417.Spec : Prop :=
  ∀ n, P14060343826154113417.a n = A330170 (n + 1)

end A330170

/-! ## A330170.P15621725831571584652

`2^(n+1)+3^(n+1)+6^(n+1)-1`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A330170

/-- `2^(n+1)+3^(n+1)+6^(n+1)-1` -/
def P15621725831571584652.Spec : Prop :=
  ∀ n, P15621725831571584652.a n = A330170 (n + 1)

theorem P15621725831571584652.correct : P15621725831571584652.Spec := by
  intro n
  simp only [A330170, Nat.add_sub_cancel]

end A330170

/-!
# A330171: a(n) = n + floor(ns/r) + floor(nt/r), where r = sqrt(2) - 1, s = sqrt(2), t = sqrt(2) + 1.

The programs for A330171, the canonical program `A330171.P2483694251946048025` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330171 has offset 1).

The definition of A330171 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330171.P2483694251946048025

`floor((3+2^(1/2))*(n+1))+3*(n+1)+floor((n+1)*sqrt(8))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A330171

/-- `floor((3+2^(1/2))*(n+1))+3*(n+1)+floor((n+1)*sqrt(8))` -/
def P2483694251946048025.Spec : Prop :=
  ∀ n, P2483694251946048025.a n = A330171 (n + 1)

theorem P2483694251946048025.correct : P2483694251946048025.Spec := by
  intro n
  simp only [A330171, Nat.add_sub_cancel]

end A330171

/-! ## A330171.P15526869846898393996

`A330173(2*(n+1))`
-/

namespace A330171.P15526869846898393996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330173 (2 * (n + 1))

end

end A330171.P15526869846898393996

namespace A330171

/-- `A330173(2*(n+1))` -/
def P15526869846898393996.Spec : Prop :=
  ∀ n, P15526869846898393996.a n = A330171 (n + 1)

end A330171

/-! ## A330171.P7143118491247666862

`∑[Δ[A091087(2*n)]+6]`
-/

namespace A330171.P7143118491247666862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330171.P7143118491247666862

namespace A330171

/-- `∑[Δ[A091087(2*n)]+6]` -/
def P7143118491247666862.Spec : Prop :=
  ∀ n, P7143118491247666862.a n = A330171 (n + 1)

end A330171

/-! ## A330171.P14022162633749202630

`A032766(A001952(2*(n+1)))`
-/

namespace A330171.P14022162633749202630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A001952 (2 * (n + 1))).toNat

end

end A330171.P14022162633749202630

namespace A330171

/-- `A032766(A001952(2*(n+1)))` -/
def P14022162633749202630.Spec : Prop :=
  ∀ n, P14022162633749202630.a n = A330171 (n + 1)

end A330171

/-! ## A330171.P4450541560106023218

`A004526(3*A187393(n+1))`
-/

namespace A330171.P4450541560106023218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A187393 (n + 1)).toNat

end

end A330171.P4450541560106023218

namespace A330171

/-- `A004526(3*A187393(n+1))` -/
def P4450541560106023218.Spec : Prop :=
  ∀ n, P4450541560106023218.a n = A330171 (n + 1)

end A330171

/-!
# A330172: a(n) = n + floor(nr/t) + floor(ns/t), where r = sqrt(2) - 1, s = sqrt(2), t = sqrt(2) + 1.

The programs for A330172, the canonical program `A330172.P5679262320590246351` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330172 has offset 1).

The definition of A330172 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330172.P5679262320590246351

`A017497(n)-A189381(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A330172

/-- `A017497(n)-A189381(n+1)` -/
def P5679262320590246351.Spec : Prop :=
  ∀ n, P5679262320590246351.a n = A330172 (n + 1)

theorem P5679262320590246351.correct : P5679262320590246351.Spec := by
  intro n
  simp only [A330172, Nat.add_sub_cancel]

end A330172

/-! ## A330172.P6712085803433776520

`A017641(n)-A330171(n+1)`
-/

namespace A330172.P6712085803433776520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017641 n - A330171 (n + 1)

end

end A330172.P6712085803433776520

namespace A330172

/-- `A017641(n)-A330171(n+1)` -/
def P6712085803433776520.Spec : Prop :=
  ∀ n, P6712085803433776520.a n = A330172 (n + 1)

end A330172

/-! ## A330172.P2895483496112145696

`A187394(n+1)+A074840(n+1)`
-/

namespace A330172.P2895483496112145696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187394 (n + 1) + A074840 (n + 1)

end

end A330172.P2895483496112145696

namespace A330172

/-- `A187394(n+1)+A074840(n+1)` -/
def P2895483496112145696.Spec : Prop :=
  ∀ n, P2895483496112145696.a n = A330172 (n + 1)

end A330172

/-! ## A330172.P3183746026347965646

`A182766(n+1)-A054071(n+1)`
-/

namespace A330172.P3183746026347965646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182766 (n + 1) - A054071 (n + 1)

end

end A330172.P3183746026347965646

namespace A330172

/-- `A182766(n+1)-A054071(n+1)` -/
def P3183746026347965646.Spec : Prop :=
  ∀ n, P3183746026347965646.a n = A330172 (n + 1)

end A330172

/-! ## A330172.P3932368479923229584

`A032766(A187394(n+1))`
-/

namespace A330172.P3932368479923229584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A187394 (n + 1)).toNat

end

end A330172.P3932368479923229584

namespace A330172

/-- `A032766(A187394(n+1))` -/
def P3932368479923229584.Spec : Prop :=
  ∀ n, P3932368479923229584.a n = A330172 (n + 1)

end A330172

/-! ## A330172.P1219590833274179491

`A074840(2*(n+1))+A074840(n+1)`
-/

namespace A330172.P1219590833274179491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074840 (2 * (n + 1)) + A074840 (n + 1)

end

end A330172.P1219590833274179491

namespace A330172

/-- `A074840(2*(n+1))+A074840(n+1)` -/
def P1219590833274179491.Spec : Prop :=
  ∀ n, P1219590833274179491.a n = A330172 (n + 1)

end A330172

/-! ## A330172.P16194213163962053726

`A016957(2*n+1)-A330171(n+1)`
-/

namespace A330172.P16194213163962053726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (2 * n + 1) - A330171 (n + 1)

end

end A330172.P16194213163962053726

namespace A330172

/-- `A016957(2*n+1)-A330171(n+1)` -/
def P16194213163962053726.Spec : Prop :=
  ∀ n, P16194213163962053726.a n = A330172 (n + 1)

end A330172

/-! ## A330172.P10082157052238049194

`A183138(2*(n+1))+A183138(A286687(2*(n+1)))`
-/

namespace A330172.P10082157052238049194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183138 (2 * (n + 1)) + A183138 (A286687 (2 * (n + 1))).toNat

end

end A330172.P10082157052238049194

namespace A330172

/-- `A183138(2*(n+1))+A183138(A286687(2*(n+1)))` -/
def P10082157052238049194.Spec : Prop :=
  ∀ n, P10082157052238049194.a n = A330172 (n + 1)

end A330172

/-!
# A330173: a(n) = n + floor(ns/r) + floor(nt/r), where r = sqrt(2), s = sqrt(2) + 1, t = sqrt(2) + 2.

The programs for A330173, the canonical program `A330173.P5202137111988474681` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330173 has offset 1).

The definition of A330173 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330173.P5202137111988474681

`floor((n+1)*(sqrt(2)+1)/sqrt(2))+floor((n+1)*(sqrt(2)+2))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A330173

/-- `floor((n+1)*(sqrt(2)+1)/sqrt(2))+floor((n+1)*(sqrt(2)+2))` -/
def P5202137111988474681.Spec : Prop :=
  ∀ n, P5202137111988474681.a n = A330173 (n + 1)

theorem P5202137111988474681.correct : P5202137111988474681.Spec := by
  intro n
  simp only [A330173, Nat.add_sub_cancel]

end A330173

/-! ## A330173.P8899497798927483273

`∑[Δ[A091087(n)]+3]`
-/

namespace A330173.P8899497798927483273
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330173.P8899497798927483273

namespace A330173

/-- `∑[Δ[A091087(n)]+3]` -/
def P8899497798927483273.Spec : Prop :=
  ∀ n, P8899497798927483273.a n = A330173 (n + 1)

end A330173

/-! ## A330173.P13513373791905589518

`∑[A089585(Δ[A091087(n)])]`
-/

namespace A330173.P13513373791905589518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089585 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330173.P13513373791905589518

namespace A330173

/-- `∑[A089585(Δ[A091087(n)])]` -/
def P13513373791905589518.Spec : Prop :=
  ∀ n, P13513373791905589518.a n = A330173 (n + 1)

end A330173

/-! ## A330173.P7180870279267827868

`∑[A091242(Δ[A091087(n)])]`
-/

namespace A330173.P7180870279267827868
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091242 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330173.P7180870279267827868

namespace A330173

/-- `∑[A091242(Δ[A091087(n)])]` -/
def P7180870279267827868.Spec : Prop :=
  ∀ n, P7180870279267827868.a n = A330173 (n + 1)

end A330173

/-! ## A330173.P3348199203540988696

`∑[A112780(Δ[A091087(n)])]`
-/

namespace A330173.P3348199203540988696
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112780 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330173.P3348199203540988696

namespace A330173

/-- `∑[A112780(Δ[A091087(n)])]` -/
def P3348199203540988696.Spec : Prop :=
  ∀ n, P3348199203540988696.a n = A330173 (n + 1)

end A330173

/-! ## A330173.P14662586589494118806

`∑[A280382(Δ[A091087(n)])]`
-/

namespace A330173.P14662586589494118806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091087 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280382 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330173.P14662586589494118806

namespace A330173

/-- `∑[A280382(Δ[A091087(n)])]` -/
def P14662586589494118806.Spec : Prop :=
  ∀ n, P14662586589494118806.a n = A330173 (n + 1)

end A330173

/-! ## A330173.P14795307224947842240

`A032766(floor((n+1)*(2+sqrt(2))))`
-/

namespace A330173.P14795307224947842240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 ⌊(n + 1 : ℝ) * (2 + Real.sqrt (2 : ℝ))⌋.toNat

end

end A330173.P14795307224947842240

namespace A330173

/-- `A032766(floor((n+1)*(2+sqrt(2))))` -/
def P14795307224947842240.Spec : Prop :=
  ∀ n, P14795307224947842240.a n = A330173 (n + 1)

end A330173

/-! ## A330173.P1266436885745989997

`A037915(A286690(n+1))`
-/

namespace A330173.P1266436885745989997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037915 (A286690 (n + 1)).toNat

end

end A330173.P1266436885745989997

namespace A330173

/-- `A037915(A286690(n+1))` -/
def P1266436885745989997.Spec : Prop :=
  ∀ n, P1266436885745989997.a n = A330173 (n + 1)

end A330173

/-! ## A330173.P5084116155263519872

`A057353(A286927(n+1))`
-/

namespace A330173.P5084116155263519872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A286927 (n + 1)).toNat

end

end A330173.P5084116155263519872

namespace A330173

/-- `A057353(A286927(n+1))` -/
def P5084116155263519872.Spec : Prop :=
  ∀ n, P5084116155263519872.a n = A330173 (n + 1)

end A330173

/-! ## A330173.P15119289279103844093

`A187321(A187393(n+1))`
-/

namespace A330173.P15119289279103844093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 (A187393 (n + 1)).toNat

end

end A330173.P15119289279103844093

namespace A330173

/-- `A187321(A187393(n+1))` -/
def P15119289279103844093.Spec : Prop :=
  ∀ n, P15119289279103844093.a n = A330173 (n + 1)

end A330173

/-! ## A330173.P7922325326176908161

`A300293(A330171(n+1))`
-/

namespace A330173.P7922325326176908161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300293 (A330171 (n + 1)).toNat

end

end A330173.P7922325326176908161

namespace A330173

/-- `A300293(A330171(n+1))` -/
def P7922325326176908161.Spec : Prop :=
  ∀ n, P7922325326176908161.a n = A330173 (n + 1)

end A330173

/-!
# A330174: Number of primitive Pythagorean triangles with sum of legs n.

The programs for A330174, the canonical program `A330174.P1343887440238847855` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330174 has offset 1).

The definition of A330174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330174.P1343887440238847855

`floor(A091396(2*A142150(n)+1)/2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A330174

/-- `floor(A091396(2*A142150(n)+1)/2)` -/
def P1343887440238847855.Spec : Prop :=
  ∀ n, P1343887440238847855.a n = A330174 (n + 1)

theorem P1343887440238847855.correct : P1343887440238847855.Spec := by
  intro n
  simp only [A330174, Nat.add_sub_cancel]

end A330174

/-! ## A330174.P17246763701400049414

`∑{d}[n+1, A008683(#)*A331671((n+1)/#)]`
-/

namespace A330174.P17246763701400049414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A331671 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330174.P17246763701400049414

namespace A330174

/-- `∑{d}[n+1, A008683(#)*A331671((n+1)/#)]` -/
def P17246763701400049414.Spec : Prop :=
  ∀ n, P17246763701400049414.a n = A330174 (n + 1)

end A330174

/-! ## A330174.P14461613625695436207

`∑{d}[n+1, A359548(#)*A374061((n+1)/#)]`
-/

namespace A330174.P14461613625695436207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A359548 d * A374061 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A330174.P14461613625695436207

namespace A330174

/-- `∑{d}[n+1, A359548(#)*A374061((n+1)/#)]` -/
def P14461613625695436207.Spec : Prop :=
  ∀ n, P14461613625695436207.a n = A330174 (n + 1)

end A330174

/-! ## A330174.P10152211742920121859

`floor(A091396(A142150(n+1)+n+1)/2)`
-/

namespace A330174.P10152211742920121859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A091396 (A142150 (n + 1) + (n : ℤ) + 1).toNat : ℚ) / 2⌋

end

end A330174.P10152211742920121859

namespace A330174

/-- `floor(A091396(A142150(n+1)+n+1)/2)` -/
def P10152211742920121859.Spec : Prop :=
  ∀ n, P10152211742920121859.a n = A330174 (n + 1)

end A330174

/-! ## A330174.P6199956275621273662

`floor(A087780(2*(n+1))/2)`
-/

namespace A330174.P6199956275621273662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A087780 (2 * (n + 1)) : ℚ) / 2⌋

end

end A330174.P6199956275621273662

namespace A330174

/-- `floor(A087780(2*(n+1))/2)` -/
def P6199956275621273662.Spec : Prop :=
  ∀ n, P6199956275621273662.a n = A330174 (n + 1)

end A330174

/-! ## A330174.P7068875738191459335

`A180785(4*(n+1))%2`
-/

namespace A330174.P7068875738191459335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180785 (4 * (n + 1))) 2

end

end A330174.P7068875738191459335

namespace A330174

/-- `A180785(4*(n+1))%2` -/
def P7068875738191459335.Spec : Prop :=
  ∀ n, P7068875738191459335.a n = A330174 (n + 1)

end A330174

/-! ## A330174.P25460431330739059

`val(A008611(A005063(n+1)), 16)`
-/

namespace A330174.P25460431330739059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A008611 (A005063 (n + 1)).toNat).toNat 16

end

end A330174.P25460431330739059

namespace A330174

/-- `val(A008611(A005063(n+1)), 16)` -/
def P25460431330739059.Spec : Prop :=
  ∀ n, (P25460431330739059.a n : ℤ) = A330174 (n + 1)

end A330174

/-! ## A330174.P876059749275932346

`val(A060000(A066048(n+1)), 48)`
-/

namespace A330174.P876059749275932346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060000 (A066048 (n + 1)).toNat).toNat 48

end

end A330174.P876059749275932346

namespace A330174

/-- `val(A060000(A066048(n+1)), 48)` -/
def P876059749275932346.Spec : Prop :=
  ∀ n, (P876059749275932346.a n : ℤ) = A330174 (n + 1)

end A330174

/-! ## A330174.P2913757442215372002

`A180806(4*(n+1))%2`
-/

namespace A330174.P2913757442215372002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180806 (4 * (n + 1))) 2

end

end A330174.P2913757442215372002

namespace A330174

/-- `A180806(4*(n+1))%2` -/
def P2913757442215372002.Spec : Prop :=
  ∀ n, P2913757442215372002.a n = A330174 (n + 1)

end A330174

/-!
# A330175: a(n) = n + floor(ns/r) + floor(nt/r), where r = sqrt(5) - 2, s = sqrt(5) - 1, t = sqrt(5).

The programs for A330175, the canonical program `A330175.P10114384701403739006` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330175 has offset 1).

The definition of A330175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330175.P10114384701403739006

`A321371(1+n)+1+n`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A330175

/-- `A321371(1+n)+1+n` -/
def P10114384701403739006.Spec : Prop :=
  ∀ n, P10114384701403739006.a n = A330175 (n + 1)

theorem P10114384701403739006.correct : P10114384701403739006.Spec := by
  intro n
  simp only [A330175, Nat.add_sub_cancel]

end A330175

/-! ## A330175.P10636032242213155497

`A350522(n)-A330186(n+1)`
-/

namespace A330175.P10636032242213155497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350522 n - A330186 (n + 1)

end

end A330175.P10636032242213155497

namespace A330175

/-- `A350522(n)-A330186(n+1)` -/
def P10636032242213155497.Spec : Prop :=
  ∀ n, P10636032242213155497.a n = A330175 (n + 1)

theorem P10636032242213155497.correct : P10636032242213155497.Spec := by
  intro n
  simp only [A330175, Nat.add_sub_cancel, A330175.P10636032242213155497.a, A330175.P10114384701403739006.a, A321371, A321371.P7279978321700670498.a, A330186, A330186.P13460853311327019796.a, A350522, A350522.P13009567044850805638.a, A001962, A001962.P17556668907359697489.a, A194152, A194152.P720401562078837155.a, A022839, A022839.P1029373569643495419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A330175

/-! ## A330175.P4744625984213573163

`A189378(2*(n+1))+2*(n+1)`
-/

namespace A330175.P4744625984213573163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189378 (2 * (n + 1)) + (2 * (n + 1) : ℤ)

end

end A330175.P4744625984213573163

namespace A330175

/-- `A189378(2*(n+1))+2*(n+1)` -/
def P4744625984213573163.Spec : Prop :=
  ∀ n, P4744625984213573163.a n = A330175 (n + 1)

end A330175

/-! ## A330175.P13659246644945063890

`A001962(2*(n+1))+A001962(n+1)`
-/

namespace A330175.P13659246644945063890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001962 (2 * (n + 1)) + A001962 (n + 1)

end

end A330175.P13659246644945063890

namespace A330175

/-- `A001962(2*(n+1))+A001962(n+1)` -/
def P13659246644945063890.Spec : Prop :=
  ∀ n, P13659246644945063890.a n = A330175 (n + 1)

end A330175

/-! ## A330175.P12810666679063512795

`A190508(2*(n+1))-A000201(2*(n+1))`
-/

namespace A330175.P12810666679063512795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190508 (2 * (n + 1)) - A000201 (2 * (n + 1))

end

end A330175.P12810666679063512795

namespace A330175

/-- `A190508(2*(n+1))-A000201(2*(n+1))` -/
def P12810666679063512795.Spec : Prop :=
  ∀ n, P12810666679063512795.a n = A330175 (n + 1)

end A330175

/-! ## A330175.P2993485265223544019

`A189379(2*(n+1))+A283234(2*(n+1))+1`
-/

namespace A330175.P2993485265223544019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189379 (2 * (n + 1)) + (A283234 (2 * (n + 1)) + 1)

end

end A330175.P2993485265223544019

namespace A330175

/-- `A189379(2*(n+1))+A283234(2*(n+1))+1` -/
def P2993485265223544019.Spec : Prop :=
  ∀ n, P2993485265223544019.a n = A330175 (n + 1)

end A330175

/-! ## A330175.P6894040780477934904

`4*n+2+A317440(n+2)+A184901(2*(n+1))`
-/

namespace A330175.P6894040780477934904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) + (A317440 (n + 2) + A184901 (2 * (n + 1)))

end

end A330175.P6894040780477934904

namespace A330175

/-- `4*n+2+A317440(n+2)+A184901(2*(n+1))` -/
def P6894040780477934904.Spec : Prop :=
  ∀ n, P6894040780477934904.a n = A330175 (n + 1)

end A330175

/-! ## A330175.P1900841537983735273

`A317440(n+1)+A189378(A317440(n+1))`
-/

namespace A330175.P1900841537983735273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317440 (n + 1) + A189378 (A317440 (n + 1)).toNat

end

end A330175.P1900841537983735273

namespace A330175

/-- `A317440(n+1)+A189378(A317440(n+1))` -/
def P1900841537983735273.Spec : Prop :=
  ∀ n, P1900841537983735273.a n = A330175 (n + 1)

end A330175

/-! ## A330175.P10876047950405633223

`A016957(A016789(n))-A330186(n+1)`
-/

namespace A330175.P10876047950405633223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (A016789 n).toNat - A330186 (n + 1)

end

end A330175.P10876047950405633223

namespace A330175

/-- `A016957(A016789(n))-A330186(n+1)` -/
def P10876047950405633223.Spec : Prop :=
  ∀ n, P10876047950405633223.a n = A330175 (n + 1)

end A330175

/-! ## A330175.P2815672837048249284

`A016957(A016957(n)/2)-A330186(n+1)`
-/

namespace A330175.P2815672837048249284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (SequenceMachineLib.roundAway ((A016957 n : ℚ) / 2)).toNat - A330186 (n + 1)

end

end A330175.P2815672837048249284

namespace A330175

/-- `A016957(A016957(n)/2)-A330186(n+1)` -/
def P2815672837048249284.Spec : Prop :=
  ∀ n, P2815672837048249284.a n = A330175 (n + 1)

end A330175

/-! ## A330175.P15821232482714307989

`A001950(2*(n+1))+A001950(A008574(n+1))`
-/

namespace A330175.P15821232482714307989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (2 * (n + 1)) + A001950 (A008574 (n + 1)).toNat

end

end A330175.P15821232482714307989

namespace A330175

/-- `A001950(2*(n+1))+A001950(A008574(n+1))` -/
def P15821232482714307989.Spec : Prop :=
  ∀ n, P15821232482714307989.a n = A330175 (n + 1)

end A330175

/-! ## A330175.P16159901438748977117

`A016777(A016969(n))-A330186(n+1)`
-/

namespace A330175.P16159901438748977117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A016969 n).toNat - A330186 (n + 1)

end

end A330175.P16159901438748977117

namespace A330175

/-- `A016777(A016969(n))-A330186(n+1)` -/
def P16159901438748977117.Spec : Prop :=
  ∀ n, P16159901438748977117.a n = A330175 (n + 1)

end A330175

/-! ## A330175.P15019313362163137697

`A032766(A001962(2*(n+1)))`
-/

namespace A330175.P15019313362163137697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A001962 (2 * (n + 1))).toNat

end

end A330175.P15019313362163137697

namespace A330175

/-- `A032766(A001962(2*(n+1)))` -/
def P15019313362163137697.Spec : Prop :=
  ∀ n, P15019313362163137697.a n = A330175 (n + 1)

end A330175

/-! ## A330175.P3543081836863505533

`A032766(A001950(4*(n+1)))`
-/

namespace A330175.P3543081836863505533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A001950 (4 * (n + 1))).toNat

end

end A330175.P3543081836863505533

namespace A330175

/-- `A032766(A001950(4*(n+1)))` -/
def P3543081836863505533.Spec : Prop :=
  ∀ n, P3543081836863505533.a n = A330175 (n + 1)

end A330175

/-!
# A330176: a(n) = n + floor(nr/t) + floor(ns/t), where r = sqrt(5) - 2, s = sqrt(5) - 1, t = sqrt(5).

The programs for A330176, the canonical program `A330176.P3206787331036609517` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330176 has offset 1).

The definition of A330176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330176.P3206787331036609517

`A016885(n)-A189461(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A330176

/-- `A016885(n)-A189461(n+1)` -/
def P3206787331036609517.Spec : Prop :=
  ∀ n, P3206787331036609517.a n = A330176 (n + 1)

theorem P3206787331036609517.correct : P3206787331036609517.Spec := by
  intro n
  simp only [A330176, Nat.add_sub_cancel]

end A330176

/-! ## A330176.P2523718029458998146

`A016957(n)-A330185(n+1)`
-/

namespace A330176.P2523718029458998146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 n - A330185 (n + 1)

end

end A330176.P2523718029458998146

namespace A330176

/-- `A016957(n)-A330185(n+1)` -/
def P2523718029458998146.Spec : Prop :=
  ∀ n, P2523718029458998146.a n = A330176 (n + 1)

theorem P2523718029458998146.correct : P2523718029458998146.Spec := by
  intro n
  simp only [A330176, Nat.add_sub_cancel, A330176.P2523718029458998146.a, A330176.P3206787331036609517.a, A016885, A016885.P12442016633976001399.a, A016957, A016957.P9941618694539595759.a, A189461, A189461.P3457630052932972803.a, A330185, A330185.P3671403461841618346.a, A188258, A188258.P3174497814932549514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A330176

/-! ## A330176.P14451878818640743824

`A016969(n)-(A330185(n+1)+1)`
-/

namespace A330176.P14451878818640743824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n - (A330185 (n + 1) + 1)

end

end A330176.P14451878818640743824

namespace A330176

/-- `A016969(n)-(A330185(n+1)+1)` -/
def P14451878818640743824.Spec : Prop :=
  ∀ n, P14451878818640743824.a n = A330176 (n + 1)

theorem P14451878818640743824.correct : P14451878818640743824.Spec := by
  intro n
  simp only [A330176, Nat.add_sub_cancel, A330176.P14451878818640743824.a, A330176.P3206787331036609517.a, A016885, A016885.P12442016633976001399.a, A016969, A016969.P9377817521032485226.a, A189461, A189461.P3457630052932972803.a, A330185, A330185.P3671403461841618346.a, A188258, A188258.P3174497814932549514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A330176

/-! ## A330176.P10592270523189411444

`2*A016789(n)-A330185(n+1)`
-/

namespace A330176.P10592270523189411444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016789 n - A330185 (n + 1)

end

end A330176.P10592270523189411444

namespace A330176

/-- `2*A016789(n)-A330185(n+1)` -/
def P10592270523189411444.Spec : Prop :=
  ∀ n, P10592270523189411444.a n = A330176 (n + 1)

theorem P10592270523189411444.correct : P10592270523189411444.Spec := by
  intro n
  simp only [A330176, Nat.add_sub_cancel, A330176.P10592270523189411444.a, A330176.P3206787331036609517.a, A016789, A016789.P8277564872725303677.a, A016885, A016885.P12442016633976001399.a, A189461, A189461.P3457630052932972803.a, A330185, A330185.P3671403461841618346.a, A188258, A188258.P3174497814932549514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A330176

/-! ## A330176.P8927157919641747608

`A016777(2*n+1)-A330185(n+1)`
-/

namespace A330176.P8927157919641747608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (2 * n + 1) - A330185 (n + 1)

end

end A330176.P8927157919641747608

namespace A330176

/-- `A016777(2*n+1)-A330185(n+1)` -/
def P8927157919641747608.Spec : Prop :=
  ∀ n, P8927157919641747608.a n = A330176 (n + 1)

theorem P8927157919641747608.correct : P8927157919641747608.Spec := by
  intro n
  simp only [A330176, Nat.add_sub_cancel, A330176.P8927157919641747608.a, A330176.P3206787331036609517.a, A016777, A016777.P9931792138852554157.a, A016885, A016885.P12442016633976001399.a, A189461, A189461.P3457630052932972803.a, A330185, A330185.P3671403461841618346.a, A188258, A188258.P3174497814932549514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A330176

/-!
# A330177: a(n) = n + floor(ns/r) + floor(nt/r), where r = e - 2, s = e - 1, t = e.

The programs for A330177, the canonical program `A330177.P2146819006156043744` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330177 has offset 1).

The definition of A330177 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2642 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330177.P2146819006156043744

`A330178(A279608(1+n)-1)+3`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A330177

/-- `A330178(A279608(1+n)-1)+3` -/
def P2146819006156043744.Spec : Prop :=
  ∀ n, P2146819006156043744.a n = A330177 (n + 1)

theorem P2146819006156043744.correct : P2146819006156043744.Spec := by
  intro n
  simp only [A330177, Nat.add_sub_cancel]

end A330177

/-! ## A330177.P9499296399979100505

`A032766(A279608(n+1)+1+n)`
-/

namespace A330177.P9499296399979100505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A279608 (n + 1) + 1 + (n : ℤ)).toNat

end

end A330177.P9499296399979100505

namespace A330177

/-- `A032766(A279608(n+1)+1+n)` -/
def P9499296399979100505.Spec : Prop :=
  ∀ n, P9499296399979100505.a n = A330177 (n + 1)

end A330177

/-! ## A330177.P12792813553814683552

`A057353(Δ[A002378(n)]+2*A279608(n+1))`
-/

namespace A330177.P12792813553814683552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (f1 (n + 1) - f1 n + 2 * A279608 (n + 1)).toNat

end

end A330177.P12792813553814683552

namespace A330177

/-- `A057353(Δ[A002378(n)]+2*A279608(n+1))` -/
def P12792813553814683552.Spec : Prop :=
  ∀ n, P12792813553814683552.a n = A330177 (n + 1)

end A330177

/-! ## A330177.P14189847623943095760

`A057353(A279608(n+1)+A279608(n+1)+A005843(n+1))`
-/

namespace A330177.P14189847623943095760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A279608 (n + 1) + (A279608 (n + 1) + A005843 (n + 1))).toNat

end

end A330177.P14189847623943095760

namespace A330177

/-- `A057353(A279608(n+1)+A279608(n+1)+A005843(n+1))` -/
def P14189847623943095760.Spec : Prop :=
  ∀ n, P14189847623943095760.a n = A330177 (n + 1)

end A330177

/-! ## A330177.P18012271568537215271

`A198271(2*(n+1))-A198254(A198261(2*(n+2)))`
-/

namespace A330177.P18012271568537215271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198271 (2 * (n + 1)) - A198254 (A198261 (2 * (n + 2))).toNat

end

end A330177.P18012271568537215271

namespace A330177

/-- `A198271(2*(n+1))-A198254(A198261(2*(n+2)))` -/
def P18012271568537215271.Spec : Prop :=
  ∀ n, P18012271568537215271.a n = A330177 (n + 1)

end A330177

/-!
# A330178: a(n) = n + floor(nr/t) + floor(ns/t), where r = e - 2, s = e - 1, t = e.

The programs for A330178, the canonical program `A330178.P18368678855411792297` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330178 has offset 1).

The definition of A330178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330178.P18368678855411792297

`2*floor((n+1)*(2-1/e))-∑[Δ[round(n/e)]+1]`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A330178

/-- `2*floor((n+1)*(2-1/e))-∑[Δ[round(n/e)]+1]` -/
def P18368678855411792297.Spec : Prop :=
  ∀ n, P18368678855411792297.a n = A330178 (n + 1)

theorem P18368678855411792297.correct : P18368678855411792297.Spec := by
  intro n
  simp only [A330178, Nat.add_sub_cancel]

end A330178

/-! ## A330178.P11500029854943879966

`A247832(A109259(n+1)%A357060(n))`
-/

namespace A330178.P11500029854943879966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (Int.tmod (A109259 (n + 1)) (A357060 n)).toNat

end

end A330178.P11500029854943879966

namespace A330178

/-- `A247832(A109259(n+1)%A357060(n))` -/
def P11500029854943879966.Spec : Prop :=
  ∀ n, P11500029854943879966.a n = A330178 (n + 1)

end A330178

/-! ## A330178.P12678086579930922202

`A247832(A292663(n+1)%A357060(n))`
-/

namespace A330178.P12678086579930922202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247832 (Int.tmod (A292663 (n + 1)) (A357060 n)).toNat

end

end A330178.P12678086579930922202

namespace A330178

/-- `A247832(A292663(n+1)%A357060(n))` -/
def P12678086579930922202.Spec : Prop :=
  ∀ n, P12678086579930922202.a n = A330178 (n + 1)

end A330178

/-! ## A330178.P15551551080239480983

`A247832(A109259(n+1))%A332925(n+1)`
-/

namespace A330178.P15551551080239480983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247832 (A109259 (n + 1)).toNat) (A332925 (n + 1))

end

end A330178.P15551551080239480983

namespace A330178

/-- `A247832(A109259(n+1))%A332925(n+1)` -/
def P15551551080239480983.Spec : Prop :=
  ∀ n, P15551551080239480983.a n = A330178 (n + 1)

end A330178

/-! ## A330178.P14616289973531535349

`A247832(A292663(n+1))%A332925(n+1)`
-/

namespace A330178.P14616289973531535349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A247832 (A292663 (n + 1)).toNat) (A332925 (n + 1))

end

end A330178.P14616289973531535349

namespace A330178

/-- `A247832(A292663(n+1))%A332925(n+1)` -/
def P14616289973531535349.Spec : Prop :=
  ∀ n, P14616289973531535349.a n = A330178 (n + 1)

end A330178

/-!
# A330179: a(n) = n + floor(ns/r) + floor(nt/r), where r = e - 1, s = e, t = e + 1.

The programs for A330179, the canonical program `A330179.P2494087960825005647` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330179 has offset 1).

The definition of A330179 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330179.P2494087960825005647

`floor(3*A292666(n+1)/2)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A330179

/-- `floor(3*A292666(n+1)/2)` -/
def P2494087960825005647.Spec : Prop :=
  ∀ n, P2494087960825005647.a n = A330179 (n + 1)

theorem P2494087960825005647.correct : P2494087960825005647.Spec := by
  intro n
  simp only [A330179, Nat.add_sub_cancel]

end A330179

/-! ## A330179.P15868615931055682612

`A292666(n+1)+A054385(n+1)`
-/

namespace A330179.P15868615931055682612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292666 (n + 1) + A054385 (n + 1)

end

end A330179.P15868615931055682612

namespace A330179

/-- `A292666(n+1)+A054385(n+1)` -/
def P15868615931055682612.Spec : Prop :=
  ∀ n, P15868615931055682612.a n = A330179 (n + 1)

end A330179

/-! ## A330179.P4326408577858339048

`A292664(n+1)+A292666(n+1)-(n+1)`
-/

namespace A330179.P4326408577858339048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292664 (n + 1) + (A292666 (n + 1) - (n + 1 : ℤ))

end

end A330179.P4326408577858339048

namespace A330179

/-- `A292664(n+1)+A292666(n+1)-(n+1)` -/
def P4326408577858339048.Spec : Prop :=
  ∀ n, P4326408577858339048.a n = A330179 (n + 1)

end A330179

/-! ## A330179.P6205591274892601078

`A054385(2*(n+1))+A054385(n+1)`
-/

namespace A330179.P6205591274892601078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054385 (2 * (n + 1)) + A054385 (n + 1)

end

end A330179.P6205591274892601078

namespace A330179

/-- `A054385(2*(n+1))+A054385(n+1)` -/
def P6205591274892601078.Spec : Prop :=
  ∀ n, P6205591274892601078.a n = A330179 (n + 1)

end A330179

/-! ## A330179.P7702746241162307406

`A032766(A292666(n+1))`
-/

namespace A330179.P7702746241162307406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A292666 (n + 1)).toNat

end

end A330179.P7702746241162307406

namespace A330179

/-- `A032766(A292666(n+1))` -/
def P7702746241162307406.Spec : Prop :=
  ∀ n, P7702746241162307406.a n = A330179 (n + 1)

end A330179

/-! ## A330179.P12297259924213397145

`A032766(A054385(2*(n+1)))`
-/

namespace A330179.P12297259924213397145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A054385 (2 * (n + 1))).toNat

end

end A330179.P12297259924213397145

namespace A330179

/-- `A032766(A054385(2*(n+1)))` -/
def P12297259924213397145.Spec : Prop :=
  ∀ n, P12297259924213397145.a n = A330179 (n + 1)

end A330179

/-! ## A330179.P6325378850298926977

`A292666(n+1)+A140106(A292666(n+1)+2)`
-/

namespace A330179.P6325378850298926977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292666 (n + 1) + A140106 (A292666 (n + 1) + 2).toNat

end

end A330179.P6325378850298926977

namespace A330179

/-- `A292666(n+1)+A140106(A292666(n+1)+2)` -/
def P6325378850298926977.Spec : Prop :=
  ∀ n, P6325378850298926977.a n = A330179 (n + 1)

end A330179

/-! ## A330179.P14738248330477504798

`A057353(2*A292666(n+1))`
-/

namespace A330179.P14738248330477504798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * A292666 (n + 1)).toNat

end

end A330179.P14738248330477504798

namespace A330179

/-- `A057353(2*A292666(n+1))` -/
def P14738248330477504798.Spec : Prop :=
  ∀ n, P14738248330477504798.a n = A330179 (n + 1)

end A330179

/-! ## A330179.P7317282820428672508

`A292666(n+1)+A002265(2*A292666(n+1))`
-/

namespace A330179.P7317282820428672508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292666 (n + 1) + A002265 (2 * A292666 (n + 1)).toNat

end

end A330179.P7317282820428672508

namespace A330179

/-- `A292666(n+1)+A002265(2*A292666(n+1))` -/
def P7317282820428672508.Spec : Prop :=
  ∀ n, P7317282820428672508.a n = A330179 (n + 1)

end A330179

/-! ## A330179.P10458491177710827795

`A004526(3*A292666(n+1))`
-/

namespace A330179.P10458491177710827795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A292666 (n + 1)).toNat

end

end A330179.P10458491177710827795

namespace A330179

/-- `A004526(3*A292666(n+1))` -/
def P10458491177710827795.Spec : Prop :=
  ∀ n, P10458491177710827795.a n = A330179 (n + 1)

end A330179

/-!
# A330180: a(n) = n + floor(nr/t) + floor(ns/t), where r = e - 1, s = e, t = e + 1.

The programs for A330180, the canonical program `A330180.P17992768035997716082` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330180 has offset 1).

The definition of A330180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330180.P17992768035997716082

`floor(3*A292665(n+1)/2)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A330180

/-- `floor(3*A292665(n+1)/2)` -/
def P17992768035997716082.Spec : Prop :=
  ∀ n, P17992768035997716082.a n = A330180 (n + 1)

theorem P17992768035997716082.correct : P17992768035997716082.Spec := by
  intro n
  simp only [A330180, Nat.add_sub_cancel]

end A330180

/-! ## A330180.P6208488758373695854

`A032766(A292665(n+1))`
-/

namespace A330180.P6208488758373695854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A292665 (n + 1)).toNat

end

end A330180.P6208488758373695854

namespace A330180

/-- `A032766(A292665(n+1))` -/
def P6208488758373695854.Spec : Prop :=
  ∀ n, P6208488758373695854.a n = A330180 (n + 1)

end A330180

/-! ## A330180.P11579476882993981956

`A292665(n+1)+A110654(A292665(n+1)-1)`
-/

namespace A330180.P11579476882993981956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292665 (n + 1) + A110654 (A292665 (n + 1) - 1).toNat

end

end A330180.P11579476882993981956

namespace A330180

/-- `A292665(n+1)+A110654(A292665(n+1)-1)` -/
def P11579476882993981956.Spec : Prop :=
  ∀ n, P11579476882993981956.a n = A330180 (n + 1)

end A330180

/-! ## A330180.P1516148365655660186

`A057353(2*A292665(n+1))`
-/

namespace A330180.P1516148365655660186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * A292665 (n + 1)).toNat

end

end A330180.P1516148365655660186

namespace A330180

/-- `A057353(2*A292665(n+1))` -/
def P1516148365655660186.Spec : Prop :=
  ∀ n, P1516148365655660186.a n = A330180 (n + 1)

end A330180

/-! ## A330180.P9613921017400081863

`A004526(3*A292665(n+1))`
-/

namespace A330180.P9613921017400081863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A292665 (n + 1)).toNat

end

end A330180.P9613921017400081863

namespace A330180

/-- `A004526(3*A292665(n+1))` -/
def P9613921017400081863.Spec : Prop :=
  ∀ n, P9613921017400081863.a n = A330180 (n + 1)

end A330180

/-! ## A330180.P14929308133086788131

`A123108(3*A292665(n+1))`
-/

namespace A330180.P14929308133086788131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (3 * A292665 (n + 1)).toNat

end

end A330180.P14929308133086788131

namespace A330180

/-- `A123108(3*A292665(n+1))` -/
def P14929308133086788131.Spec : Prop :=
  ∀ n, P14929308133086788131.a n = A330180 (n + 1)

end A330180

/-! ## A330180.P3166862014683718793

`A002265(6*A292665(n+1))`
-/

namespace A330180.P3166862014683718793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (6 * A292665 (n + 1)).toNat

end

end A330180.P3166862014683718793

namespace A330180

/-- `A002265(6*A292665(n+1))` -/
def P3166862014683718793.Spec : Prop :=
  ∀ n, P3166862014683718793.a n = A330180 (n + 1)

end A330180

/-!
# A330181: a(n) = n + floor(ns/r) + floor(nt/r), where r = Pi - 1, s = Pi, t = Pi + 1.

The programs for A330181, the canonical program `A330181.P12400418502170209775` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330181 has offset 1).

The definition of A330181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330181.P5354822540270031981

`A054386(2*(n+1))+comp[A022844(n)]`
-/

namespace A330181.P5354822540270031981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022844 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054386 (2 * (n + 1)) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A330181.P5354822540270031981

namespace A330181

/-- `A054386(2*(n+1))+comp[A022844(n)]` -/
def P5354822540270031981.Spec : Prop :=
  ∀ n, P5354822540270031981.a n = A330181 (n + 1)

end A330181

/-! ## A330181.P12400418502170209775

`A054386(2*(n+1))+A054386(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A330181

/-- `A054386(2*(n+1))+A054386(n+1)` -/
def P12400418502170209775.Spec : Prop :=
  ∀ n, P12400418502170209775.a n = A330181 (n + 1)

theorem P12400418502170209775.correct : P12400418502170209775.Spec := by
  intro n
  simp only [A330181, Nat.add_sub_cancel]

end A330181

/-! ## A330181.P9160499883326389441

`A032766(A054386(2*(n+1)))`
-/

namespace A330181.P9160499883326389441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A054386 (2 * (n + 1))).toNat

end

end A330181.P9160499883326389441

namespace A330181

/-- `A032766(A054386(2*(n+1)))` -/
def P9160499883326389441.Spec : Prop :=
  ∀ n, P9160499883326389441.a n = A330181 (n + 1)

end A330181

/-! ## A330181.P5283110525187463429

`A057353(2*A054386(2*(n+1)))`
-/

namespace A330181.P5283110525187463429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (2 * A054386 (2 * (n + 1))).toNat

end

end A330181.P5283110525187463429

namespace A330181

/-- `A057353(2*A054386(2*(n+1)))` -/
def P5283110525187463429.Spec : Prop :=
  ∀ n, P5283110525187463429.a n = A330181 (n + 1)

end A330181

/-! ## A330181.P7235683006662855105

`A108591(A038130(n+1))+A054386(n+1)`
-/

namespace A330181.P7235683006662855105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108591 (A038130 (n + 1)).toNat + A054386 (n + 1)

end

end A330181.P7235683006662855105

namespace A330181

/-- `A108591(A038130(n+1))+A054386(n+1)` -/
def P7235683006662855105.Spec : Prop :=
  ∀ n, P7235683006662855105.a n = A330181 (n + 1)

end A330181

/-! ## A330181.P10804037977991937853

`A004526(3*A054386(2*(n+1)))`
-/

namespace A330181.P10804037977991937853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A054386 (2 * (n + 1))).toNat

end

end A330181.P10804037977991937853

namespace A330181

/-- `A004526(3*A054386(2*(n+1)))` -/
def P10804037977991937853.Spec : Prop :=
  ∀ n, P10804037977991937853.a n = A330181 (n + 1)

end A330181

/-!
# A330182: a(n) = n + floor(nr/t) + floor(ns/t), where r = Pi - 1, s = Pi, t = Pi + 1.

The programs for A330182, there is no canonical definition to state claims against.
-/

/-! ## A330182.P2110007539219876581

`A035936(A076539(2*(n+1))²)`
-/

namespace A330182.P2110007539219876581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A076539 (2 * (n + 1)) ^ 2).toNat

end

end A330182.P2110007539219876581

/-! ## A330182.P8634594765156072426

`∑[A090277(A132766(3*n)+1)]`
-/

namespace A330182.P8634594765156072426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090277 (A132766 (3 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A330182.P8634594765156072426

/-! ## A330182.P1614421240798704702

`A003983(A302393(3*n+5)-2)`
-/

namespace A330182.P1614421240798704702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (A302393 (3 * n + 5) - 2).toNat

end

end A330182.P1614421240798704702

/-! ## A330182.P2056060076074618127

`eq[1, A007949(A000384(n+3))]+1`
-/

namespace A330182.P2056060076074618127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A000384 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A330182.P2056060076074618127

/-! ## A330182.P8242225238079853438

`eq[ceil(n/98), A007949(A000217(2*n+3))]`
-/

namespace A330182.P8242225238079853438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 98⌉

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A000217 (2 * n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330182.P8242225238079853438

/-!
# A330183: a(n) = n + floor(ns/r) + floor(nt/r), where r = sqrt(2) - 1/2, s = sqrt(2), t = sqrt(2) + 1/2.

The programs for A330183, the canonical program `A330183.P6412283818570804675` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330183 has offset 1).

The definition of A330183 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330183.P6412283818570804675

`A292641(n+1)+A286323(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A330183

/-- `A292641(n+1)+A286323(n+1)` -/
def P6412283818570804675.Spec : Prop :=
  ∀ n, P6412283818570804675.a n = A330183 (n + 1)

theorem P6412283818570804675.correct : P6412283818570804675.Spec := by
  intro n
  simp only [A330183, Nat.add_sub_cancel]

end A330183

/-! ## A330183.P16760624879371482789

`A286323(2*(n+1))+A286323(n+1)`
-/

namespace A330183.P16760624879371482789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286323 (2 * (n + 1)) + A286323 (n + 1)

end

end A330183.P16760624879371482789

namespace A330183

/-- `A286323(2*(n+1))+A286323(n+1)` -/
def P16760624879371482789.Spec : Prop :=
  ∀ n, P16760624879371482789.a n = A330183 (n + 1)

end A330183

/-! ## A330183.P17785716390289555437

`A032766(A292641(1+n))`
-/

namespace A330183.P17785716390289555437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A292641 (1 + n)).toNat

end

end A330183.P17785716390289555437

namespace A330183

/-- `A032766(A292641(1+n))` -/
def P17785716390289555437.Spec : Prop :=
  ∀ n, P17785716390289555437.a n = A330183 (n + 1)

end A330183

/-! ## A330183.P3662084643986492956

`A004526(3*A292641(n+1))`
-/

namespace A330183.P3662084643986492956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A292641 (n + 1)).toNat

end

end A330183.P3662084643986492956

namespace A330183

/-- `A004526(3*A292641(n+1))` -/
def P3662084643986492956.Spec : Prop :=
  ∀ n, P3662084643986492956.a n = A330183 (n + 1)

end A330183

/-! ## A330183.P15148259931852979224

`A123108(3*A292641(n+1))`
-/

namespace A330183.P15148259931852979224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (3 * A292641 (n + 1)).toNat

end

end A330183.P15148259931852979224

namespace A330183

/-- `A123108(3*A292641(n+1))` -/
def P15148259931852979224.Spec : Prop :=
  ∀ n, P15148259931852979224.a n = A330183 (n + 1)

end A330183

/-! ## A330183.P5964957840339851366

`A123108(3*A286323(2*(n+1)))`
-/

namespace A330183.P5964957840339851366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (3 * A286323 (2 * (n + 1))).toNat

end

end A330183.P5964957840339851366

namespace A330183

/-- `A123108(3*A286323(2*(n+1)))` -/
def P5964957840339851366.Spec : Prop :=
  ∀ n, P5964957840339851366.a n = A330183 (n + 1)

end A330183

/-!
# A330184: a(n) = n + floor(nr/t) + floor(ns/t), where r = sqrt(2) - 1/2, s = sqrt(2), t = sqrt(2) + 1/2.

The programs for A330184, the canonical program `A330184.P18338956507869684487` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330184 has offset 1).

The definition of A330184 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330184.P18338956507869684487

`floor(6*A292640(n+1)/4)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A330184

/-- `floor(6*A292640(n+1)/4)` -/
def P18338956507869684487.Spec : Prop :=
  ∀ n, P18338956507869684487.a n = A330184 (n + 1)

theorem P18338956507869684487.correct : P18338956507869684487.Spec := by
  intro n
  simp only [A330184, Nat.add_sub_cancel]

end A330184

/-! ## A330184.P17147467859516526825

`A016885(n)-A189468(n+1)`
-/

namespace A330184.P17147467859516526825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 n - A189468 (n + 1)

end

end A330184.P17147467859516526825

namespace A330184

/-- `A016885(n)-A189468(n+1)` -/
def P17147467859516526825.Spec : Prop :=
  ∀ n, P17147467859516526825.a n = A330184 (n + 1)

end A330184

/-! ## A330184.P9360258968776724262

`A032766(A292640(n+1))`
-/

namespace A330184.P9360258968776724262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A292640 (n + 1)).toNat

end

end A330184.P9360258968776724262

namespace A330184

/-- `A032766(A292640(n+1))` -/
def P9360258968776724262.Spec : Prop :=
  ∀ n, P9360258968776724262.a n = A330184 (n + 1)

end A330184

/-! ## A330184.P1355660707015280854

`A004526(3*A292640(n+1))`
-/

namespace A330184.P1355660707015280854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A292640 (n + 1)).toNat

end

end A330184.P1355660707015280854

namespace A330184

/-- `A004526(3*A292640(n+1))` -/
def P1355660707015280854.Spec : Prop :=
  ∀ n, P1355660707015280854.a n = A330184 (n + 1)

end A330184

/-! ## A330184.P8056258470903249211

`A002265(6*A292640(n+1))`
-/

namespace A330184.P8056258470903249211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (6 * A292640 (n + 1)).toNat

end

end A330184.P8056258470903249211

namespace A330184

/-- `A002265(6*A292640(n+1))` -/
def P8056258470903249211.Spec : Prop :=
  ∀ n, P8056258470903249211.a n = A330184 (n + 1)

end A330184

/-! ## A330184.P7048846891481198160

`A004524(6*A292640(n+1))/2`
-/

namespace A330184.P7048846891481198160
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004524 (6 * A292640 (n + 1)).toNat : ℚ) / 2

end

end A330184.P7048846891481198160

namespace A330184

/-- `A004524(6*A292640(n+1))/2` -/
def P7048846891481198160.Spec : Prop :=
  ∀ n, P7048846891481198160.a n = (A330184 (n + 1) : ℚ)

end A330184

/-!
# A330185: a(n) = n + floor(n*s/r) + floor(n*t/r), where r = phi - 1/2, s = phi, t = phi + 1/2, and phi is the golden ratio = (1+sqrt(5))/2.

The programs for A330185, the canonical program `A330185.P3671403461841618346` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330185 has offset 1).

The definition of A330185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330185.P3671403461841618346

`A189461(n+1)+1+n`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A330185

/-- `A189461(n+1)+1+n` -/
def P3671403461841618346.Spec : Prop :=
  ∀ n, P3671403461841618346.a n = A330185 (n + 1)

theorem P3671403461841618346.correct : P3671403461841618346.Spec := by
  intro n
  simp only [A330185, Nat.add_sub_cancel]

end A330185

/-! ## A330185.P3474970682513493907

`floor(3*A189934(n+1)/2)`
-/

namespace A330185.P3474970682513493907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * A189934 (n + 1) : ℚ) / 2⌋

end

end A330185.P3474970682513493907

namespace A330185

/-- `floor(3*A189934(n+1)/2)` -/
def P3474970682513493907.Spec : Prop :=
  ∀ n, P3474970682513493907.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P1091286771517935063

`6*n+4-A330176(n+1)`
-/

namespace A330185.P1091286771517935063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 4 : ℤ) - A330176 (n + 1)

end

end A330185.P1091286771517935063

namespace A330185

/-- `6*n+4-A330176(n+1)` -/
def P1091286771517935063.Spec : Prop :=
  ∀ n, P1091286771517935063.a n = A330185 (n + 1)

theorem P1091286771517935063.correct : P1091286771517935063.Spec := by
  intro n
  simp only [A330185, Nat.add_sub_cancel, A330185.P1091286771517935063.a, A330185.P3671403461841618346.a, A189461, A189461.P3457630052932972803.a, A330176, A330176.P3206787331036609517.a, A016885, A016885.P12442016633976001399.a, A188258, A188258.P3174497814932549514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A330185

/-! ## A330185.P1833210594464465339

`A189932(n+1)-round(2*(n+1)/(3-ϕ))`
-/

namespace A330185.P1833210594464465339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189932 (n + 1) - SequenceMachineLib.roundAway (2 * ((n + 1 : ℝ) / (3 - Real.goldenRatio)))

end

end A330185.P1833210594464465339

namespace A330185

/-- `A189932(n+1)-round(2*(n+1)/(3-ϕ))` -/
def P1833210594464465339.Spec : Prop :=
  ∀ n, P1833210594464465339.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P1091716419782277191

`A016789(n)+A016789(n)-A330176(n+1)`
-/

namespace A330185.P1091716419782277191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n + (A016789 n - A330176 (n + 1))

end

end A330185.P1091716419782277191

namespace A330185

/-- `A016789(n)+A016789(n)-A330176(n+1)` -/
def P1091716419782277191.Spec : Prop :=
  ∀ n, P1091716419782277191.a n = A330185 (n + 1)

theorem P1091716419782277191.correct : P1091716419782277191.Spec := by
  intro n
  simp only [A330185, Nat.add_sub_cancel, A330185.P1091716419782277191.a, A330185.P3671403461841618346.a, A016789, A016789.P8277564872725303677.a, A189461, A189461.P3457630052932972803.a, A330176, A330176.P3206787331036609517.a, A016885, A016885.P12442016633976001399.a, A188258, A188258.P3174497814932549514.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A330185

/-! ## A330185.P4631907773885366457

`A184903(2*(n+1))`
-/

namespace A330185.P4631907773885366457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184903 (2 * (n + 1))

end

end A330185.P4631907773885366457

namespace A330185

/-- `A184903(2*(n+1))` -/
def P4631907773885366457.Spec : Prop :=
  ∀ n, P4631907773885366457.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P2334692568477105672

`A190506(2*(n+1))-A287770(2*(n+1))`
-/

namespace A330185.P2334692568477105672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190506 (2 * (n + 1)) - A287770 (2 * (n + 1))

end

end A330185.P2334692568477105672

namespace A330185

/-- `A190506(2*(n+1))-A287770(2*(n+1))` -/
def P2334692568477105672.Spec : Prop :=
  ∀ n, P2334692568477105672.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P17631373710265286779

`A032766(A189934(n+1))`
-/

namespace A330185.P17631373710265286779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A189934 (n + 1)).toNat

end

end A330185.P17631373710265286779

namespace A330185

/-- `A032766(A189934(n+1))` -/
def P17631373710265286779.Spec : Prop :=
  ∀ n, P17631373710265286779.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P13985749598395977168

`A032766(A189932(n+1)/2)`
-/

namespace A330185.P13985749598395977168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.roundAway ((A189932 (n + 1) : ℚ) / 2)).toNat

end

end A330185.P13985749598395977168

namespace A330185

/-- `A032766(A189932(n+1)/2)` -/
def P13985749598395977168.Spec : Prop :=
  ∀ n, P13985749598395977168.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P8595791984329625075

`A189934(n+1)+A065033(A189934(n+1)-1)`
-/

namespace A330185.P8595791984329625075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189934 (n + 1) + A065033 (A189934 (n + 1) - 1).toNat

end

end A330185.P8595791984329625075

namespace A330185

/-- `A189934(n+1)+A065033(A189934(n+1)-1)` -/
def P8595791984329625075.Spec : Prop :=
  ∀ n, P8595791984329625075.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P18347717154180322226

`A189934(n+1)+A008619(A189934(n+1)-2)`
-/

namespace A330185.P18347717154180322226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189934 (n + 1) + A008619 (A189934 (n + 1) - 2).toNat

end

end A330185.P18347717154180322226

namespace A330185

/-- `A189934(n+1)+A008619(A189934(n+1)-2)` -/
def P18347717154180322226.Spec : Prop :=
  ∀ n, P18347717154180322226.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P17695987245681229360

`A057353(A189932(n+1))`
-/

namespace A330185.P17695987245681229360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A189932 (n + 1)).toNat

end

end A330185.P17695987245681229360

namespace A330185

/-- `A057353(A189932(n+1))` -/
def P17695987245681229360.Spec : Prop :=
  ∀ n, P17695987245681229360.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P13557735456479045381

`A187321(2*A189934(n+1))`
-/

namespace A330185.P13557735456479045381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 (2 * A189934 (n + 1)).toNat

end

end A330185.P13557735456479045381

namespace A330185

/-- `A187321(2*A189934(n+1))` -/
def P13557735456479045381.Spec : Prop :=
  ∀ n, P13557735456479045381.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P661878433648101827

`A187321(A189934(n+1)+A189934(n+1)+1)`
-/

namespace A330185.P661878433648101827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 (A189934 (n + 1) + (A189934 (n + 1) + 1)).toNat

end

end A330185.P661878433648101827

namespace A330185

/-- `A187321(A189934(n+1)+A189934(n+1)+1)` -/
def P661878433648101827.Spec : Prop :=
  ∀ n, P661878433648101827.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P9673090218542132741

`A189934(n+1)+A002265(2*A189934(n+1))`
-/

namespace A330185.P9673090218542132741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189934 (n + 1) + A002265 (2 * A189934 (n + 1)).toNat

end

end A330185.P9673090218542132741

namespace A330185

/-- `A189934(n+1)+A002265(2*A189934(n+1))` -/
def P9673090218542132741.Spec : Prop :=
  ∀ n, P9673090218542132741.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P4074319173613440931

`A004526(3*A189934(n+1))`
-/

namespace A330185.P4074319173613440931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A189934 (n + 1)).toNat

end

end A330185.P4074319173613440931

namespace A330185

/-- `A004526(3*A189934(n+1))` -/
def P4074319173613440931.Spec : Prop :=
  ∀ n, P4074319173613440931.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P608082177376654101

`A123108(3*A189934(n+1))`
-/

namespace A330185.P608082177376654101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (3 * A189934 (n + 1)).toNat

end

end A330185.P608082177376654101

namespace A330185

/-- `A123108(3*A189934(n+1))` -/
def P608082177376654101.Spec : Prop :=
  ∀ n, P608082177376654101.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P4062627442947217185

`A004526(A189932(n+1)+A189932(n+1)/2)`
-/

namespace A330185.P4062627442947217185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.roundAway ((A189932 (n + 1) : ℚ) + (A189932 (n + 1) : ℚ) / 2)).toNat

end

end A330185.P4062627442947217185

namespace A330185

/-- `A004526(A189932(n+1)+A189932(n+1)/2)` -/
def P4062627442947217185.Spec : Prop :=
  ∀ n, P4062627442947217185.a n = A330185 (n + 1)

end A330185

/-! ## A330185.P14852112640190796617

`A194220(2*A189932(n+1))`
-/

namespace A330185.P14852112640190796617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194220 (2 * A189932 (n + 1)).toNat

end

end A330185.P14852112640190796617

namespace A330185

/-- `A194220(2*A189932(n+1))` -/
def P14852112640190796617.Spec : Prop :=
  ∀ n, P14852112640190796617.a n = A330185 (n + 1)

end A330185

/-!
# A330186: a(n) = n + floor(n*r/t) + floor(n*s/t), where r = phi - 1/2, s = phi, t = phi + 1/2, phi = golden ratio = (1+sqrt(5))/2.

The programs for A330186, the canonical program `A330186.P13460853311327019796` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330186 has offset 1).

The definition of A330186 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A330186.P8535184161164461178

`floor(3/2*A189935(n+1))`
-/

namespace A330186.P8535184161164461178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) / 2 * (A189935 (n + 1) : ℚ)⌋

end

end A330186.P8535184161164461178

namespace A330186

/-- `floor(3/2*A189935(n+1))` -/
def P8535184161164461178.Spec : Prop :=
  ∀ n, P8535184161164461178.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P13460853311327019796

`A350522(n)-A330175(n+1)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A330186

/-- `A350522(n)-A330175(n+1)` -/
def P13460853311327019796.Spec : Prop :=
  ∀ n, P13460853311327019796.a n = A330186 (n + 1)

theorem P13460853311327019796.correct : P13460853311327019796.Spec := by
  intro n
  simp only [A330186, Nat.add_sub_cancel]

end A330186

/-! ## A330186.P5240692161906851577

`A032766(A189935(n+1))`
-/

namespace A330186.P5240692161906851577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A189935 (n + 1)).toNat

end

end A330186.P5240692161906851577

namespace A330186

/-- `A032766(A189935(n+1))` -/
def P5240692161906851577.Spec : Prop :=
  ∀ n, P5240692161906851577.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P11569157153504325673

`A032766(A189933(n+1)/2)`
-/

namespace A330186.P11569157153504325673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (SequenceMachineLib.roundAway ((A189933 (n + 1) : ℚ) / 2)).toNat

end

end A330186.P11569157153504325673

namespace A330186

/-- `A032766(A189933(n+1)/2)` -/
def P11569157153504325673.Spec : Prop :=
  ∀ n, P11569157153504325673.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P4504049005124393609

`A001651(A195172(2*(n+1)))-1`
-/

namespace A330186.P4504049005124393609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A195172 (2 * (n + 1))).toNat - 1

end

end A330186.P4504049005124393609

namespace A330186

/-- `A001651(A195172(2*(n+1)))-1` -/
def P4504049005124393609.Spec : Prop :=
  ∀ n, P4504049005124393609.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P4275532771010970473

`A005206(A001965(2*n+1))+A005206(A005206(2*n))`
-/

namespace A330186.P4275532771010970473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A001965 (2 * n + 1)).toNat + A005206 (A005206 (2 * n)).toNat

end

end A330186.P4275532771010970473

namespace A330186

/-- `A005206(A001965(2*n+1))+A005206(A005206(2*n))` -/
def P4275532771010970473.Spec : Prop :=
  ∀ n, P4275532771010970473.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P4625830999488407805

`A032766(A187329(2*(n+1)))`
-/

namespace A330186.P4625830999488407805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A187329 (2 * (n + 1))).toNat

end

end A330186.P4625830999488407805

namespace A330186

/-- `A032766(A187329(2*(n+1)))` -/
def P4625830999488407805.Spec : Prop :=
  ∀ n, P4625830999488407805.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P14746362991472792758

`A187329(2*(n+1))+A187329(n+1)`
-/

namespace A330186.P14746362991472792758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187329 (2 * (n + 1)) + A187329 (n + 1)

end

end A330186.P14746362991472792758

namespace A330186

/-- `A187329(2*(n+1))+A187329(n+1)` -/
def P14746362991472792758.Spec : Prop :=
  ∀ n, P14746362991472792758.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P4925504059532119958

`A016957(A016789(n))-A330175(n+1)`
-/

namespace A330186.P4925504059532119958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (A016789 n).toNat - A330175 (n + 1)

end

end A330186.P4925504059532119958

namespace A330186

/-- `A016957(A016789(n))-A330175(n+1)` -/
def P4925504059532119958.Spec : Prop :=
  ∀ n, P4925504059532119958.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P16483950523821328118

`A016957(A016957(n)/2)-A330175(n+1)`
-/

namespace A330186.P16483950523821328118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016957 (SequenceMachineLib.roundAway ((A016957 n : ℚ) / 2)).toNat - A330175 (n + 1)

end

end A330186.P16483950523821328118

namespace A330186

/-- `A016957(A016957(n)/2)-A330175(n+1)` -/
def P16483950523821328118.Spec : Prop :=
  ∀ n, P16483950523821328118.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P17202119867477661378

`A057353(A189933(n+1))`
-/

namespace A330186.P17202119867477661378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A189933 (n + 1)).toNat

end

end A330186.P17202119867477661378

namespace A330186

/-- `A057353(A189933(n+1))` -/
def P17202119867477661378.Spec : Prop :=
  ∀ n, P17202119867477661378.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P107969564589910433

`A189935(n+1)+A002265(2*A189935(n+1))`
-/

namespace A330186.P107969564589910433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189935 (n + 1) + A002265 (2 * A189935 (n + 1)).toNat

end

end A330186.P107969564589910433

namespace A330186

/-- `A189935(n+1)+A002265(2*A189935(n+1))` -/
def P107969564589910433.Spec : Prop :=
  ∀ n, P107969564589910433.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P5800019840720232566

`A189933(n+1)-A002265(A189933(n+1)+2)`
-/

namespace A330186.P5800019840720232566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189933 (n + 1) - A002265 (A189933 (n + 1) + 2).toNat

end

end A330186.P5800019840720232566

namespace A330186

/-- `A189933(n+1)-A002265(A189933(n+1)+2)` -/
def P5800019840720232566.Spec : Prop :=
  ∀ n, P5800019840720232566.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P3131231934736135424

`A032766(A060144(Δ[A001844(n)]))`
-/

namespace A330186.P3131231934736135424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A060144 (f1 (n + 1) - f1 n).toNat).toNat

end

end A330186.P3131231934736135424

namespace A330186

/-- `A032766(A060144(Δ[A001844(n)]))` -/
def P3131231934736135424.Spec : Prop :=
  ∀ n, P3131231934736135424.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P12614000470655192564

`A032766(A060144(Δ[A046092(n)]))`
-/

namespace A330186.P12614000470655192564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (A060144 (f1 (n + 1) - f1 n).toNat).toNat

end

end A330186.P12614000470655192564

namespace A330186

/-- `A032766(A060144(Δ[A046092(n)]))` -/
def P12614000470655192564.Spec : Prop :=
  ∀ n, P12614000470655192564.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P18360682936675655098

`A004526(3*A189935(n+1))`
-/

namespace A330186.P18360682936675655098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (3 * A189935 (n + 1)).toNat

end

end A330186.P18360682936675655098

namespace A330186

/-- `A004526(3*A189935(n+1))` -/
def P18360682936675655098.Spec : Prop :=
  ∀ n, P18360682936675655098.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P12472028332011781788

`A016777(A016969(n))-A330175(n+1)`
-/

namespace A330186.P12472028332011781788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A016969 n).toNat - A330175 (n + 1)

end

end A330186.P12472028332011781788

namespace A330186

/-- `A016777(A016969(n))-A330175(n+1)` -/
def P12472028332011781788.Spec : Prop :=
  ∀ n, P12472028332011781788.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P9762353113777634752

`A002265(3*A189933(n+1))`
-/

namespace A330186.P9762353113777634752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (3 * A189933 (n + 1)).toNat

end

end A330186.P9762353113777634752

namespace A330186

/-- `A002265(3*A189933(n+1))` -/
def P9762353113777634752.Spec : Prop :=
  ∀ n, P9762353113777634752.a n = A330186 (n + 1)

end A330186

/-! ## A330186.P2318644210590464206

`A002265(6*A189935(n+1))`
-/

namespace A330186.P2318644210590464206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (6 * A189935 (n + 1)).toNat

end

end A330186.P2318644210590464206

namespace A330186

/-- `A002265(6*A189935(n+1))` -/
def P2318644210590464206.Spec : Prop :=
  ∀ n, P2318644210590464206.a n = A330186 (n + 1)

end A330186

/-!
# A330188: a(n) = round(n^arctan(n!)).

The programs for A330188, the canonical program `A330188.P3863692489445048879` is in `Seq.B000.C044`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330188 has offset 1).

The definition of A330188 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `round((n+1)^atan((n+1)!))` (program `A330188.P3863692489445048879`, by `A330188.P3863692489445048879.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A330188.P3863692489445048879

`round((n+1)^atan((n+1)!))`

The canonical program, it is in `Seq.B000.C044`.
-/

namespace A330188

/-- `round((n+1)^atan((n+1)!))` -/
def P3863692489445048879.Spec : Prop :=
  ∀ n, P3863692489445048879.a n = A330188 (n + 1)

theorem P3863692489445048879.correct : P3863692489445048879.Spec := by
  intro n
  simp only [A330188, Nat.add_sub_cancel]

end A330188

/-! ## A330188.P11676154621087152388

`round((n+1)^acos(3^-n))`
-/

namespace A330188.P11676154621087152388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (Real.arccos ((3 : ℚ) ^ (-(n : ℤ) : ℤ) : ℝ)))

end

end A330188.P11676154621087152388

namespace A330188

/-- `round((n+1)^acos(3^-n))` -/
def P11676154621087152388.Spec : Prop :=
  ∀ n, P11676154621087152388.a n = A330188 (n + 1)

end A330188

/-! ## A330188.P2172060197162437439

`round((n+1)^acot(3^-n))`
-/

namespace A330188.P2172060197162437439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (SequenceMachineLib.acot ((3 : ℚ) ^ (-(n : ℤ) : ℤ) : ℝ)))

end

end A330188.P2172060197162437439

namespace A330188

/-- `round((n+1)^acot(3^-n))` -/
def P2172060197162437439.Spec : Prop :=
  ∀ n, P2172060197162437439.a n = A330188 (n + 1)

end A330188

/-! ## A330188.P3647474234158873294

`round((n+1)^atan(3^n))`
-/

namespace A330188.P3647474234158873294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (Real.arctan (3 ^ n : ℝ)))

end

end A330188.P3647474234158873294

namespace A330188

/-- `round((n+1)^atan(3^n))` -/
def P3647474234158873294.Spec : Prop :=
  ∀ n, P3647474234158873294.a n = A330188 (n + 1)

end A330188

/-! ## A330188.P3781058132883096389

`round((n+1)^asin(tanh(n+1)))`
-/

namespace A330188.P3781058132883096389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) ^ (Real.arcsin (Real.tanh (n + 1 : ℝ))))

end

end A330188.P3781058132883096389

namespace A330188

/-- `round((n+1)^asin(tanh(n+1)))` -/
def P3781058132883096389.Spec : Prop :=
  ∀ n, P3781058132883096389.a n = A330188 (n + 1)

end A330188

/-!
# A330190: Symmetric matrix read by antidiagonals: f(i,j) = 1 + gcd(f(i-1,j), f(i,j-1)), where f(1,j) and f(i,1) are 1.

The programs for A330190, there is no canonical definition to state claims against.
-/

/-! ## A330190.P6457888600213089045

`A070909(A350681(n))+A004197(n)`
-/

namespace A330190.P6457888600213089045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070909 (A350681 n).toNat + A004197 n

end

end A330190.P6457888600213089045

/-! ## A330190.P14419938405067480084

`A261684(n)+A070909(A350681(n))`
-/

namespace A330190.P14419938405067480084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 n + A070909 (A350681 n).toNat

end

end A330190.P14419938405067480084

/-! ## A330190.P15109065264943735790

`A131719(A174545(n))+A004197(n)`
-/

namespace A330190.P15109065264943735790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131719 (A174545 n).toNat + A004197 n

end

end A330190.P15109065264943735790

/-! ## A330190.P11084259458739797747

`A261684(n)+A131719(A174545(n))`
-/

namespace A330190.P11084259458739797747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261684 n + A131719 (A174545 n).toNat

end

end A330190.P11084259458739797747

/-! ## A330190.P11003652199862458236

`A000005(A000005(A053187(A174377(n))))`
-/

namespace A330190.P11003652199862458236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A053187 (A174377 n).toNat).toNat).toNat

end

end A330190.P11003652199862458236

/-!
# A330191: For -d == 0, 1 (mod 4), let E(-d) to be the exponent of the class group of binary quadratic forms with discriminant -d, b(-d) to be the smallest prime p such that Kronecker(-d,p) = 1, then sequence gives d such that E(-d) > 2 and b(-d) > sqrt(d/4).

The programs for A330191, there is no canonical definition to state claims against.
-/

/-! ## A330191.P14623518707368492139

`A266836(lt[A137756(3*(n+1)), A029648(n)])/(1/2)²`
-/

namespace A330191.P14623518707368492139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137756 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029648 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266836 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / ((1 : ℚ) / 2) ^ 2

end

end A330191.P14623518707368492139

/-!
# A330192: Integers k such that the length of decimal expansion of k^k is a repdigit.

The programs for A330192, there is no canonical definition to state claims against.
-/

/-! ## A330192.P9453103292014917825

`lt[xor(n-1, A333330(2*(n+2))), 10]`
-/

namespace A330192.P9453103292014917825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) (A333330 (2 * (n + 2)))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A330192.P9453103292014917825

/-! ## A330192.P2517022424416059302

`eq[A032513(n), A130574(A247143(n))]`
-/

namespace A330192.P2517022424416059302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032513 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130574 (A247143 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A330192.P2517022424416059302

/-! ## A330192.P12875139383401308075

`lt[A140110(n+1), A255425(A250120(n))]`
-/

namespace A330192.P12875139383401308075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140110 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255425 (A250120 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330192.P12875139383401308075

/-! ## A330192.P12755543381247036311

`lt[A029728(A116504(n+3)), A167817(n)]`
-/

namespace A330192.P12755543381247036311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029728 (A116504 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167817 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330192.P12755543381247036311

/-! ## A330192.P15210261249899408391

`lt[A283139(n), A111569(A135668(n+4))]`
-/

namespace A330192.P15210261249899408391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283139 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111569 (A135668 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A330192.P15210261249899408391

/-!
# A330193: a(n) is the length of the decimal expansion of A330192(n)^A330192(n).

The programs for A330193, there is no canonical definition to state claims against.
-/

/-! ## A330193.P14593968918258063562

`A066022(floor(A330192(n+1)+acot(n)))`
-/

namespace A330193.P14593968918258063562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 ⌊(A330192 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A330193.P14593968918258063562

/-! ## A330193.P5514057511504912363

`A066022(A330192(n+1)+C(n, n²))`
-/

namespace A330193.P5514057511504912363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (A330192 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)).toNat

end

end A330193.P5514057511504912363

/-! ## A330193.P15049426341485317832

`A066022(A330192(n+1)^floor(atan(n+1)))`
-/

namespace A330193.P15049426341485317832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (SequenceMachineLib.roundAway ((A330192 (n + 1) : ℚ) ^ (⌊Real.arctan (n + 1 : ℝ)⌋ : ℤ))).toNat

end

end A330193.P15049426341485317832

/-! ## A330193.P3354006894025592159

`A066022(A330192(n+1)+A000007(n))`
-/

namespace A330193.P3354006894025592159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (A330192 (n + 1) + A000007 n).toNat

end

end A330193.P3354006894025592159

/-! ## A330193.P18312370466125336654

`A066022(A330192(n+1)+A000038(n))`
-/

namespace A330193.P18312370466125336654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066022 (A330192 (n + 1) + A000038 n).toNat

end

end A330193.P18312370466125336654

/-!
# A330195: BII-number of the BII-normalization of the set-system with BII-number n.

The programs for A330195, there is no canonical definition to state claims against.
-/

/-! ## A330195.P7635308970726905552

`A330101(n)%A377033(A161680(n))`
-/

namespace A330195.P7635308970726905552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A330101 n) (A377033 (A161680 n).toNat)

end

end A330195.P7635308970726905552

/-!
# A330196: Number of unlabeled set-systems covering n vertices with no endpoints.

The programs for A330196, there is no canonical definition to state claims against.
-/

/-! ## A330196.P18224364474703835593

`A312984((a(n-1)+1-val(n, 2))²)` with `a(0)=1, a(1)=0`
-/

namespace A330196.P18224364474703835593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A312984 ((a (n - 1) + (1 - (SequenceMachineLib.valuation n 2 : ℤ))) ^ 2).toNat

end

end A330196.P18224364474703835593

/-!
# A330197: Number of scalene triangles whose vertices are the vertices of a regular n-gon.

The programs for A330197, the canonical program `A330197.P9026178766442840738` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A330197 has offset 3).

The definition of A330197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A330197.P7839663089288848431

`ogf((12x^3+14x^4+8x^5+2x^6)/(1-2x^2-2x^3+x^4+4x^5+x^6-2x^7-2x^8+x^10))`
-/

namespace A330197.P7839663089288848431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 12, 14, 8, 2] [1, 0, -2, -2, 1, 4, 1, -2, -2, 0, 1] n

end

end A330197.P7839663089288848431

namespace A330197

/-- `ogf((12x^3+14x^4+8x^5+2x^6)/(1-2x^2-2x^3+x^4+4x^5+x^6-2x^7-2x^8+x^10))` -/
def P7839663089288848431.Spec : Prop :=
  ∀ n, P7839663089288848431.a n = A330197 (n + 3)

end A330197

/-! ## A330197.P9026178766442840738

`C(n+3, 3)-A320577(n+3)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A330197

/-- `C(n+3, 3)-A320577(n+3)` -/
def P9026178766442840738.Spec : Prop :=
  ∀ n, P9026178766442840738.a n = A330197 (n + 3)

theorem P9026178766442840738.correct : P9026178766442840738.Spec := by
  intro n
  simp only [A330197, Nat.add_sub_cancel]

end A330197

/-! ## A330197.P10183918662086947325

`2*(n+3)*A069905(n)`
-/

namespace A330197.P10183918662086947325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 3 : ℤ) * A069905 n)

end

end A330197.P10183918662086947325

namespace A330197

/-- `2*(n+3)*A069905(n)` -/
def P10183918662086947325.Spec : Prop :=
  ∀ n, P10183918662086947325.a n = A330197 (n + 3)

end A330197

/-! ## A330197.P8696185330678785737

`(n+3)*(A069813(n+3)-(n+1))`
-/

namespace A330197.P8696185330678785737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A069813 (n + 3) - (n + 1 : ℤ))

end

end A330197.P8696185330678785737

namespace A330197

/-- `(n+3)*(A069813(n+3)-(n+1))` -/
def P8696185330678785737.Spec : Prop :=
  ∀ n, P8696185330678785737.a n = A330197 (n + 3)

end A330197

/-! ## A330197.P15110377677434324192

`A020739(n)*A069905(n)`
-/

namespace A330197.P15110377677434324192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020739 n * A069905 n

end

end A330197.P15110377677434324192

namespace A330197

/-- `A020739(n)*A069905(n)` -/
def P15110377677434324192.Spec : Prop :=
  ∀ n, P15110377677434324192.a n = A330197 (n + 3)

end A330197

/-! ## A330197.P7735216393076001944

`A069905(n)*A329822(n+3)`
-/

namespace A330197.P7735216393076001944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069905 n * A329822 (n + 3)

end

end A330197.P7735216393076001944

namespace A330197

/-- `A069905(n)*A329822(n+3)` -/
def P7735216393076001944.Spec : Prop :=
  ∀ n, P7735216393076001944.a n = A330197 (n + 3)

end A330197

/-! ## A330197.P16496916830878666696

`2*(n+3)*A211540(n+2)`
-/

namespace A330197.P16496916830878666696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((n + 3 : ℤ) * A211540 (n + 2))

end

end A330197.P16496916830878666696

namespace A330197

/-- `2*(n+3)*A211540(n+2)` -/
def P16496916830878666696.Spec : Prop :=
  ∀ n, P16496916830878666696.a n = A330197 (n + 3)

end A330197

/-! ## A330197.P11466097912861128856

`A005581(n+1)+n+1-A320577(n+3)`
-/

namespace A330197.P11466097912861128856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 (n + 1) + ((n + 1 : ℤ) - A320577 (n + 3))

end

end A330197.P11466097912861128856

namespace A330197

/-- `A005581(n+1)+n+1-A320577(n+3)` -/
def P11466097912861128856.Spec : Prop :=
  ∀ n, P11466097912861128856.a n = A330197 (n + 3)

theorem P11466097912861128856.correct : P11466097912861128856.Spec := by
  intro n
  simp only [A330197, Nat.add_sub_cancel, A330197.P11466097912861128856.a, A330197.P9026178766442840738.a, A005581, A005581.P11014497433873413039.a, A320577, A320577.P9366250676690942705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A330197

/-! ## A330197.P17505781237769208618

`(n+3)*(A008749(n+3)-(n+3))`
-/

namespace A330197.P17505781237769208618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * (A008749 (n + 3) - (n + 3 : ℤ))

end

end A330197.P17505781237769208618

namespace A330197

/-- `(n+3)*(A008749(n+3)-(n+3))` -/
def P17505781237769208618.Spec : Prop :=
  ∀ n, P17505781237769208618.a n = A330197 (n + 3)

end A330197

/-! ## A330197.P16687541857332709918

`2*(n+3)*A005044(2*n)`
-/

namespace A330197.P16687541857332709918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * (n + 3) : ℤ) * A005044 (2 * n)

end

end A330197.P16687541857332709918

namespace A330197

/-- `2*(n+3)*A005044(2*n)` -/
def P16687541857332709918.Spec : Prop :=
  ∀ n, P16687541857332709918.a n = A330197 (n + 3)

end A330197

/-! ## A330197.P15471758944541952670

`A005044(2*n)*A020739(n)`
-/

namespace A330197.P15471758944541952670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * n) * A020739 n

end

end A330197.P15471758944541952670

namespace A330197

/-- `A005044(2*n)*A020739(n)` -/
def P15471758944541952670.Spec : Prop :=
  ∀ n, P15471758944541952670.a n = A330197 (n + 3)

end A330197

/-! ## A330197.P6056259726055838391

`(n+3)*A309689(2*n)`
-/

namespace A330197.P6056259726055838391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) * A309689 (2 * n)

end

end A330197.P6056259726055838391

namespace A330197

/-- `(n+3)*A309689(2*n)` -/
def P6056259726055838391.Spec : Prop :=
  ∀ n, P6056259726055838391.a n = A330197 (n + 3)

end A330197

/-! ## A330197.P3906035581814234813

`A005044(2*n)*A020715(2*n)`
-/

namespace A330197.P3906035581814234813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005044 (2 * n) * A020715 (2 * n)

end

end A330197.P3906035581814234813

namespace A330197

/-- `A005044(2*n)*A020715(2*n)` -/
def P3906035581814234813.Spec : Prop :=
  ∀ n, P3906035581814234813.a n = A330197 (n + 3)

end A330197

/-! ## A330197.P15414160350212739449

`A308102(2*(n+3))`
-/

namespace A330197.P15414160350212739449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308102 (2 * (n + 3))

end

end A330197.P15414160350212739449

namespace A330197

/-- `A308102(2*(n+3))` -/
def P15414160350212739449.Spec : Prop :=
  ∀ n, P15414160350212739449.a n = A330197 (n + 3)

end A330197

/-!
# A330198: Expansion of e.g.f. Product_{k>=1} 1 / (2 - exp(x^k)).

The programs for A330198, there is no canonical definition to state claims against.
-/

/-! ## A330198.P6833776848048490159

`A264968(A346269(n))`
-/

namespace A330198.P6833776848048490159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264968 (A346269 n).toNat

end

end A330198.P6833776848048490159

/-! ## A330198.P48099060216634985

`or(1, A051066(A198953(n)))`
-/

namespace A330198.P48099060216634985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A051066 (A198953 n).toNat)

end

end A330198.P48099060216634985

