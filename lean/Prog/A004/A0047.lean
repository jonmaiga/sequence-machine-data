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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
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
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
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
import Seq.Opaque.C024
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A004700: Expansion of e.g.f. 1/(3 - exp(x) - exp(2*x)).

The programs for A004700, there is no canonical definition to state claims against.
-/

/-! ## A004700.P14659219483367743491

`A320253(∑[n+3])`
-/

namespace A004700.P14659219483367743491
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320253 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A004700.P14659219483367743491

/-! ## A004700.P17507864413072535297

`or(1, A320253(A141214(n)))`
-/

namespace A004700.P17507864413072535297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A320253 (A141214 n).toNat)

end

end A004700.P17507864413072535297

/-! ## A004700.P16917458728821881730

`record[A320253(lt[A190164(n), 1])]`
-/

namespace A004700.P16917458728821881730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190164 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320253 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004700.P16917458728821881730

/-! ## A004700.P11173454960529787975

`record[A320253(gcd(n, A190164(n)))]`
-/

namespace A004700.P11173454960529787975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320253 (Int.gcd (n : ℤ) (A190164 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004700.P11173454960529787975

/-!
# A004701: Expansion of e.g.f. 1/(4 - exp(x) - exp(2*x) - exp(3*x)).

The programs for A004701, there is no canonical definition to state claims against.
-/

/-! ## A004701.P17047789058589398963

`A320253(∑[n+4]+2)`
-/

namespace A004701.P17047789058589398963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320253 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A004701.P17047789058589398963

/-! ## A004701.P13029017014711191723

`record[A320253(abs(A046691(n)))]`
-/

namespace A004701.P13029017014711191723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320253 |A046691 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004701.P13029017014711191723

/-! ## A004701.P16336601360059763333

`record[A320253(abs(A248158(n)))]`
-/

namespace A004701.P16336601360059763333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320253 |A248158 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004701.P16336601360059763333

/-!
# A004702: Expansion of e.g.f. 1/(5 - exp(x) - exp(2*x) - exp(3*x) - exp(4*x)).

The programs for A004702, there is no canonical definition to state claims against.
-/

/-! ## A004702.P6355334843622562429

`A320253(∑[n+5]+5)`
-/

namespace A004702.P6355334843622562429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320253 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A004702.P6355334843622562429

/-! ## A004702.P4148654985533181223

`record[A320253(A052905(n))]`
-/

namespace A004702.P4148654985533181223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320253 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004702.P4148654985533181223

/-!
# A004703: Expansion of e.g.f. 1/(6-exp(x)-exp(2*x)-exp(3*x)-exp(4*x)-exp(5*x)).

The programs for A004703, there is no canonical definition to state claims against.
-/

/-! ## A004703.P3388758089846130976

`record[A320253(∑[n+4])]`
-/

namespace A004703.P3388758089846130976
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320253 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004703.P3388758089846130976

/-!
# A004709: Cubefree numbers: numbers that are not divisible by any cube > 1.

The programs for A004709, the canonical program `A004709.P11605199300458361357` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004709 has offset 1).

The definition of A004709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004709.P12609213548960923789

`sqrt(A392365(n+1))`
-/

namespace A004709.P12609213548960923789
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A392365 (n + 1) : ℝ)

end

end A004709.P12609213548960923789

namespace A004709

/-- `sqrt(A392365(n+1))` -/
def P12609213548960923789.Spec : Prop :=
  ∀ n, P12609213548960923789.a n = (A004709 (n + 1) : ℝ)

end A004709

/-! ## A004709.P4782793067812773495

`eq[1, A050361(n+1)]+1`
-/

namespace A004709.P4782793067812773495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004709.P4782793067812773495

namespace A004709

/-- `eq[1, A050361(n+1)]+1` -/
def P4782793067812773495.Spec : Prop :=
  ∀ n, (P4782793067812773495.a n : ℤ) = A004709 (n + 1)

end A004709

/-! ## A004709.P11605199300458361357

`eq[1, A113061(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004709

/-- `eq[1, A113061(n+1)]+1` -/
def P11605199300458361357.Spec : Prop :=
  ∀ n, (P11605199300458361357.a n : ℤ) = A004709 (n + 1)

theorem P11605199300458361357.correct : P11605199300458361357.Spec := by
  intro n
  simp only [A004709, Nat.add_sub_cancel]

end A004709

/-! ## A004709.P9286639497615723742

`eq[1, A212793(n+1)]+1`
-/

namespace A004709.P9286639497615723742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212793 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004709.P9286639497615723742

namespace A004709

/-- `eq[1, A212793(n+1)]+1` -/
def P9286639497615723742.Spec : Prop :=
  ∀ n, (P9286639497615723742.a n : ℤ) = A004709 (n + 1)

end A004709

/-! ## A004709.P1705351151948813326

`eq[1, A295657(n+1)]+1`
-/

namespace A004709.P1705351151948813326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295657 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004709.P1705351151948813326

namespace A004709

/-- `eq[1, A295657(n+1)]+1` -/
def P1705351151948813326.Spec : Prop :=
  ∀ n, (P1705351151948813326.a n : ℤ) = A004709 (n + 1)

end A004709

/-! ## A004709.P17672042242696353624

`eq[1, A317941(n+1)]+1`
-/

namespace A004709.P17672042242696353624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317941 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004709.P17672042242696353624

namespace A004709

/-- `eq[1, A317941(n+1)]+1` -/
def P17672042242696353624.Spec : Prop :=
  ∀ n, (P17672042242696353624.a n : ℤ) = A004709 (n + 1)

end A004709

/-! ## A004709.P4325958790039198629

`eq[1, A318667(n+1)]+1`
-/

namespace A004709.P4325958790039198629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318667 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004709.P4325958790039198629

namespace A004709

/-- `eq[1, A318667(n+1)]+1` -/
def P4325958790039198629.Spec : Prop :=
  ∀ n, (P4325958790039198629.a n : ℤ) = A004709 (n + 1)

end A004709

/-! ## A004709.P17871772259287870618

`lt[A051903(n+1), 3]+1`
-/

namespace A004709.P17871772259287870618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A004709.P17871772259287870618

namespace A004709

/-- `lt[A051903(n+1), 3]+1` -/
def P17871772259287870618.Spec : Prop :=
  ∀ n, (P17871772259287870618.a n : ℤ) = A004709 (n + 1)

end A004709

/-! ## A004709.P16894055061370325619

`A349236(n)+a(n-1)` with `a(0)=1`
-/

namespace A004709.P16894055061370325619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A349236 n + a (n - 1)

end

end A004709.P16894055061370325619

namespace A004709

/-- `A349236(n)+a(n-1)` -/
def P16894055061370325619.Spec : Prop :=
  ∀ n, P16894055061370325619.a n = A004709 (n + 1)

end A004709

/-! ## A004709.P14761467439011474386

`eq[1, A355936(n+1)²]+1`
-/

namespace A004709.P14761467439011474386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355936 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004709.P14761467439011474386

namespace A004709

/-- `eq[1, A355936(n+1)²]+1` -/
def P14761467439011474386.Spec : Prop :=
  ∀ n, (P14761467439011474386.a n : ℤ) = A004709 (n + 1)

end A004709

/-! ## A004709.P9588208076540425532

`A180499(n+1)-(n+1)^3`
-/

namespace A004709.P9588208076540425532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180499 (n + 1) - ((n + 1) ^ 3 : ℤ)

end

end A004709.P9588208076540425532

namespace A004709

/-- `A180499(n+1)-(n+1)^3` -/
def P9588208076540425532.Spec : Prop :=
  ∀ n, P9588208076540425532.a n = A004709 (n + 1)

theorem P9588208076540425532.correct : P9588208076540425532.Spec := by
  intro n
  simp only [A004709, Nat.add_sub_cancel, A004709.P9588208076540425532.a, A004709.P11605199300458361357.f1, A004709.P11605199300458361357.f2, A004709.P11605199300458361357.a, A113061, A113061.P11150295760055610552.f1, A113061.P11150295760055610552.a, A180499, A180499.P14708687511346327286.a, A010057, A010057.P3441922768549040012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004709

/-! ## A004709.P9031126826759373507

`A160813(n+1)-A005117(n+1)`
-/

namespace A004709.P9031126826759373507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160813 (n + 1) - A005117 (n + 1)

end

end A004709.P9031126826759373507

namespace A004709

/-- `A160813(n+1)-A005117(n+1)` -/
def P9031126826759373507.Spec : Prop :=
  ∀ n, P9031126826759373507.a n = A004709 (n + 1)

theorem P9031126826759373507.correct : P9031126826759373507.Spec := by
  intro n
  simp only [A004709, Nat.add_sub_cancel, A004709.P9031126826759373507.a, A004709.P11605199300458361357.f1, A004709.P11605199300458361357.f2, A004709.P11605199300458361357.a, A005117, A005117.P8954503998193661401.f1, A005117.P8954503998193661401.a, A113061, A113061.P11150295760055610552.f1, A113061.P11150295760055610552.a, A160813, A160813.P14776211626939802739.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A010057, A010057.P3441922768549040012.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004709

/-! ## A004709.P14253576367342977926

`A382888(n+1)*A382890(n+1)`
-/

namespace A004709.P14253576367342977926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382888 (n + 1) * A382890 (n + 1)

end

end A004709.P14253576367342977926

namespace A004709

/-- `A382888(n+1)*A382890(n+1)` -/
def P14253576367342977926.Spec : Prop :=
  ∀ n, P14253576367342977926.a n = A004709 (n + 1)

end A004709

/-! ## A004709.P204205769769833632

`A382889(n+1)*A382891(n+1)`
-/

namespace A004709.P204205769769833632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382889 (n + 1) * A382891 (n + 1)

end

end A004709.P204205769769833632

namespace A004709

/-- `A382889(n+1)*A382891(n+1)` -/
def P204205769769833632.Spec : Prop :=
  ∀ n, P204205769769833632.a n = A004709 (n + 1)

end A004709

/-! ## A004709.P1465623245106622981

`lcm(A382888(n+1), A382889(n+1))`
-/

namespace A004709.P1465623245106622981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A382888 (n + 1)) (A382889 (n + 1))

end

end A004709.P1465623245106622981

namespace A004709

/-- `lcm(A382888(n+1), A382889(n+1))` -/
def P1465623245106622981.Spec : Prop :=
  ∀ n, (P1465623245106622981.a n : ℤ) = A004709 (n + 1)

end A004709

/-! ## A004709.P4825904755125648810

`∑[A349236(n+1)]+1-A349236(n+1)`
-/

namespace A004709.P4825904755125648810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349236 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A349236 (n + 1))

end

end A004709.P4825904755125648810

namespace A004709

/-- `∑[A349236(n+1)]+1-A349236(n+1)` -/
def P4825904755125648810.Spec : Prop :=
  ∀ n, P4825904755125648810.a n = A004709 (n + 1)

end A004709

/-! ## A004709.P12483273410261280835

`A382890(n+1)*A382890(n+1)*A382891(n+1)`
-/

namespace A004709.P12483273410261280835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382890 (n + 1) * A382890 (n + 1) * A382891 (n + 1)

end

end A004709.P12483273410261280835

namespace A004709

/-- `A382890(n+1)*A382890(n+1)*A382891(n+1)` -/
def P12483273410261280835.Spec : Prop :=
  ∀ n, P12483273410261280835.a n = A004709 (n + 1)

end A004709

/-! ## A004709.P3372864886582432969

`A382888(n+1)*A382888(n+1)/A382891(n+1)`
-/

namespace A004709.P3372864886582432969
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382888 (n + 1) * A382888 (n + 1) : ℚ) / (A382891 (n + 1) : ℚ)

end

end A004709.P3372864886582432969

namespace A004709

/-- `A382888(n+1)*A382888(n+1)/A382891(n+1)` -/
def P3372864886582432969.Spec : Prop :=
  ∀ n, P3372864886582432969.a n = (A004709 (n + 1) : ℚ)

end A004709

/-! ## A004709.P3076640856097156350

`filter[A253781(n+1), A212793(#)]`
-/

namespace A004709.P3076640856097156350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A004709.P3076640856097156350

namespace A004709

/-- `filter[A253781(n+1), A212793(#)]` -/
def P3076640856097156350.Spec : Prop :=
  ∀ n, P3076640856097156350.a n = A004709 (n + 1)

end A004709

/-!
# A004710: Positions of ones in binary expansion of Euler's constant gamma.

The programs for A004710, the canonical program `A004710.P6274734826505923524` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004710 has offset 1).

The definition of A004710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4993 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004710.P6274734826505923524

`eq[1, A104015(n)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004710

/-- `eq[1, A104015(n)]+1` -/
def P6274734826505923524.Spec : Prop :=
  ∀ n, (P6274734826505923524.a n : ℤ) = A004710 (n + 1)

theorem P6274734826505923524.correct : P6274734826505923524.Spec := by
  intro n
  simp only [A004710, Nat.add_sub_cancel]

end A004710

/-! ## A004710.P6584722856069817555

`record[(n+1)*A104015(n+1)+1]`
-/

namespace A004710.P6584722856069817555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A104015 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004710.P6584722856069817555

namespace A004710

/-- `record[(n+1)*A104015(n+1)+1]` -/
def P6584722856069817555.Spec : Prop :=
  ∀ n, P6584722856069817555.a n = A004710 (n + 1)

end A004710

/-! ## A004710.P4440327863365254682

`record[A000027(n+1)*A104015(n)]`
-/

namespace A004710.P4440327863365254682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A104015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004710.P4440327863365254682

namespace A004710

/-- `record[A000027(n+1)*A104015(n)]` -/
def P4440327863365254682.Spec : Prop :=
  ∀ n, P4440327863365254682.a n = A004710 (n + 1)

end A004710

/-! ## A004710.P5987642580899865993

`record[(n+1)*A104015(gcd(n, A046092(n)))]`
-/

namespace A004710.P5987642580899865993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A104015 (Int.gcd (n : ℤ) (A046092 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004710.P5987642580899865993

namespace A004710

/-- `record[(n+1)*A104015(gcd(n, A046092(n)))]` -/
def P5987642580899865993.Spec : Prop :=
  ∀ n, P5987642580899865993.a n = A004710 (n + 1)

end A004710

/-! ## A004710.P9215966313489379013

`record[A038722(A038722(n+1))*A104015(n)]`
-/

namespace A004710.P9215966313489379013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A038722 (n + 1)).toNat * A104015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004710.P9215966313489379013

namespace A004710

/-- `record[A038722(A038722(n+1))*A104015(n)]` -/
def P9215966313489379013.Spec : Prop :=
  ∀ n, P9215966313489379013.a n = A004710 (n + 1)

end A004710

/-! ## A004710.P10901806749600064476

`record[A026239(A026239(n+1))*A104015(n)]`
-/

namespace A004710.P10901806749600064476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026239 (A026239 (n + 1)).toNat * A104015 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004710.P10901806749600064476

namespace A004710

/-- `record[A026239(A026239(n+1))*A104015(n)]` -/
def P10901806749600064476.Spec : Prop :=
  ∀ n, P10901806749600064476.a n = A004710 (n + 1)

end A004710

/-! ## A004710.P3733316413340145411

`eq[1, A293352(n)%2]`
-/

namespace A004710.P3733316413340145411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293352 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004710.P3733316413340145411

namespace A004710

/-- `eq[1, A293352(n)%2]` -/
def P3733316413340145411.Spec : Prop :=
  ∀ n, (P3733316413340145411.a n : ℤ) = A004710 (n + 1)

end A004710

/-! ## A004710.P17407699851914508386

`eq[2, and(2, A293352(n+1))]`
-/

namespace A004710.P17407699851914508386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A293352 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004710.P17407699851914508386

namespace A004710

/-- `eq[2, and(2, A293352(n+1))]` -/
def P17407699851914508386.Spec : Prop :=
  ∀ n, (P17407699851914508386.a n : ℤ) = A004710 (n + 1)

end A004710

/-!
# A004711: Positions of 1's in binary expansion of Pi/4.

The programs for A004711, there is no canonical definition to state claims against.
-/

/-! ## A004711.P10257132804098643170

`A256108(n+1)+2`
-/

namespace A004711.P10257132804098643170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256108 (n + 1) + 2

end

end A004711.P10257132804098643170

/-! ## A004711.P724988191086758974

`A320298(n)+a(n-1)` with `a(0)=1`
-/

namespace A004711.P724988191086758974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A320298 n + a (n - 1)

end

end A004711.P724988191086758974

/-! ## A004711.P887135255212668630

`∑[A320298(A000007(n)+n)]`
-/

namespace A004711.P887135255212668630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320298 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004711.P887135255212668630

/-! ## A004711.P422511488208790206

`∪[A293830(n+1), A293831(n+1)]`
-/

namespace A004711.P422511488208790206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293830 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004711.P422511488208790206

/-! ## A004711.P5291131439874279389

`∑[A320298(n+1)]+1-A320298(n+1)`
-/

namespace A004711.P5291131439874279389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A320298 (n + 1))

end

end A004711.P5291131439874279389

/-! ## A004711.P6095213573914941121

`lt[0, ∑[A155482(n)]]+1`
-/

namespace A004711.P6095213573914941121
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004711.P6095213573914941121

/-! ## A004711.P12952232583395040359

`eq[0, A180433(n+1)]+1`
-/

namespace A004711.P12952232583395040359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180433 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004711.P12952232583395040359

/-! ## A004711.P18407892717251082591

`lt[0, A004601(n+2)]+1`
-/

namespace A004711.P18407892717251082591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004711.P18407892717251082591

/-! ## A004711.P12826937645650046173

`lt[n*A180433(A028310(n)), n]`
-/

namespace A004711.P12826937645650046173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A180433 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004711.P12826937645650046173

/-! ## A004711.P876331437479832168

`record[A000027(n+1)*A004601(n+2)]`
-/

namespace A004711.P876331437479832168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A004601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004711.P876331437479832168

/-! ## A004711.P11324447249897616803

`record[A004601(n+2)*A038722(A038722(n+1))]`
-/

namespace A004711.P11324447249897616803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2) * A038722 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004711.P11324447249897616803

/-! ## A004711.P16883205273923733961

`lt[A155482(n), ∑[A155482(n)]]`
-/

namespace A004711.P16883205273923733961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155482 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004711.P16883205273923733961

/-! ## A004711.P13957922827703852014

`A000720(record[A000040(n+1)*A004601(n+2)])`
-/

namespace A004711.P13957922827703852014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A004601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004711.P13957922827703852014

/-! ## A004711.P14648556992528223018

`A000720(p?[A000040(n+1)*A004601(n+2)])`
-/

namespace A004711.P14648556992528223018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A004601 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A004711.P14648556992528223018

/-! ## A004711.P15254955667339548892

`record[A004601(n+2)*A059893(A059893(n+1))]`
-/

namespace A004711.P15254955667339548892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2) * A059893 (A059893 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004711.P15254955667339548892

/-! ## A004711.P3208312400404212309

`record[A004601(n+2)*A332769(A332769(n+1))]`
-/

namespace A004711.P3208312400404212309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2) * A332769 (A332769 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004711.P3208312400404212309

/-! ## A004711.P5616595201028329241

`A008619(record[A004601(n+2)*A014601(n)])`
-/

namespace A004711.P5616595201028329241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004601 (n + 2) * A014601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004711.P5616595201028329241

/-! ## A004711.P22537881530863823

`record[∑[A155996(n)]%2*(n+1)]`
-/

namespace A004711.P22537881530863823
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155996 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 2 * (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004711.P22537881530863823

/-! ## A004711.P14620510373285519961

`∑[A320298(n+1)]-A320299(n+1)`
-/

namespace A004711.P14620510373285519961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320298 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A320299 (n + 1)

end

end A004711.P14620510373285519961

/-!
# A004712: Positions of ones in binary expansion of e-2.

The programs for A004712, the canonical program `A004712.P15787517412151601825` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004712 has offset 1).

The definition of A004712 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5020 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004712.P5416082625313542402

`∪[A247544(n+1), A247545(n+1)]`
-/

namespace A004712.P5416082625313542402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247544 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247545 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004712.P5416082625313542402

namespace A004712

/-- `∪[A247544(n+1), A247545(n+1)]` -/
def P5416082625313542402.Spec : Prop :=
  ∀ n, (P5416082625313542402.a n : ℤ) = A004712 (n + 1)

end A004712

/-! ## A004712.P5788999195025097290

`A094058(n+2)-2`
-/

namespace A004712.P5788999195025097290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094058 (n + 2) - 2

end

end A004712.P5788999195025097290

namespace A004712

/-- `A094058(n+2)-2` -/
def P5788999195025097290.Spec : Prop :=
  ∀ n, P5788999195025097290.a n = A004712 (n + 1)

end A004712

/-! ## A004712.P15787517412151601825

`eq[1, A004593(n+3)]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A004712

/-- `eq[1, A004593(n+3)]` -/
def P15787517412151601825.Spec : Prop :=
  ∀ n, (P15787517412151601825.a n : ℤ) = A004712 (n + 1)

theorem P15787517412151601825.correct : P15787517412151601825.Spec := by
  intro n
  simp only [A004712, Nat.add_sub_cancel]

end A004712

/-! ## A004712.P9943252394208373730

`record[(n+1)*A004593(n+4)]`
-/

namespace A004712.P9943252394208373730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004593 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004712.P9943252394208373730

namespace A004712

/-- `record[(n+1)*A004593(n+4)]` -/
def P9943252394208373730.Spec : Prop :=
  ∀ n, P9943252394208373730.a n = A004712 (n + 1)

end A004712

/-! ## A004712.P14172997935832525026

`lt[acot(A008579(n)), A004593(n+3)]`
-/

namespace A004712.P14172997935832525026
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A008579 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A004712.P14172997935832525026

namespace A004712

/-- `lt[acot(A008579(n)), A004593(n+3)]` -/
def P14172997935832525026.Spec : Prop :=
  ∀ n, (P14172997935832525026.a n : ℤ) = A004712 (n + 1)

end A004712

/-! ## A004712.P10479985074639723074

`lt[acot(A135278(n)), A004593(n+3)]`
-/

namespace A004712.P10479985074639723074
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A135278 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A004712.P10479985074639723074

namespace A004712

/-- `lt[acot(A135278(n)), A004593(n+3)]` -/
def P10479985074639723074.Spec : Prop :=
  ∀ n, (P10479985074639723074.a n : ℤ) = A004712 (n + 1)

end A004712

/-! ## A004712.P461674967932271692

`lt[1, A000096(n+1)*A004593(n+3)]`
-/

namespace A004712.P461674967932271692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 1) * A004593 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004712.P461674967932271692

namespace A004712

/-- `lt[1, A000096(n+1)*A004593(n+3)]` -/
def P461674967932271692.Spec : Prop :=
  ∀ n, (P461674967932271692.a n : ℤ) = A004712 (n + 1)

end A004712

/-! ## A004712.P5576898063586495624

`lt[1, A004593(n+3)*A008579(n+1)]`
-/

namespace A004712.P5576898063586495624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 3) * A008579 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004712.P5576898063586495624

namespace A004712

/-- `lt[1, A004593(n+3)*A008579(n+1)]` -/
def P5576898063586495624.Spec : Prop :=
  ∀ n, (P5576898063586495624.a n : ℤ) = A004712 (n + 1)

end A004712

/-! ## A004712.P17635234676504472353

`lt[1, A004593(n+3)*A344335(n+2)]`
-/

namespace A004712.P17635234676504472353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 3) * A344335 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004712.P17635234676504472353

namespace A004712

/-- `lt[1, A004593(n+3)*A344335(n+2)]` -/
def P17635234676504472353.Spec : Prop :=
  ∀ n, (P17635234676504472353.a n : ℤ) = A004712 (n + 1)

end A004712

/-! ## A004712.P12605727687568680439

`lt[A135278(n+1), A135278(n+1)+A004593(n+3)]`
-/

namespace A004712.P12605727687568680439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135278 (n + 1) + A004593 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004712.P12605727687568680439

namespace A004712

/-- `lt[A135278(n+1), A135278(n+1)+A004593(n+3)]` -/
def P12605727687568680439.Spec : Prop :=
  ∀ n, (P12605727687568680439.a n : ℤ) = A004712 (n + 1)

end A004712

/-! ## A004712.P10257520327378257987

`A023444(A094058(n+2))`
-/

namespace A004712.P10257520327378257987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A094058 (n + 2)).toNat

end

end A004712.P10257520327378257987

namespace A004712

/-- `A023444(A094058(n+2))` -/
def P10257520327378257987.Spec : Prop :=
  ∀ n, P10257520327378257987.a n = A004712 (n + 1)

end A004712

/-! ## A004712.P4636466746498871898

`lt[acot(A000096(n+7)), A004593(n+3)]`
-/

namespace A004712.P4636466746498871898
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (A000096 (n + 7) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A004712.P4636466746498871898

namespace A004712

/-- `lt[acot(A000096(n+7)), A004593(n+3)]` -/
def P4636466746498871898.Spec : Prop :=
  ∀ n, (P4636466746498871898.a n : ℤ) = A004712 (n + 1)

end A004712

/-! ## A004712.P15991653174204873255

`lt[A004593(2*(n+1)), 2*A004593(n+3)]`
-/

namespace A004712.P15991653174204873255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004593 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004593 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004712.P15991653174204873255

namespace A004712

/-- `lt[A004593(2*(n+1)), 2*A004593(n+3)]` -/
def P15991653174204873255.Spec : Prop :=
  ∀ n, (P15991653174204873255.a n : ℤ) = A004712 (n + 1)

end A004712

/-! ## A004712.P4173979532495794788

`eq[1, and(1, A027437(n))]`
-/

namespace A004712.P4173979532495794788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A027437 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004712.P4173979532495794788

namespace A004712

/-- `eq[1, and(1, A027437(n))]` -/
def P4173979532495794788.Spec : Prop :=
  ∀ n, (P4173979532495794788.a n : ℤ) = A004712 (n + 1)

end A004712

/-! ## A004712.P14090753159887688757

`eq[1, (A293337(n)+1)%2]`
-/

namespace A004712.P14090753159887688757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A293337 n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004712.P14090753159887688757

namespace A004712

/-- `eq[1, (A293337(n)+1)%2]` -/
def P14090753159887688757.Spec : Prop :=
  ∀ n, (P14090753159887688757.a n : ℤ) = A004712 (n + 1)

end A004712

/-! ## A004712.P16155807844720891403

`∑[A136044(n+3)]`
-/

namespace A004712.P16155807844720891403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136044 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004712.P16155807844720891403

namespace A004712

/-- `∑[A136044(n+3)]` -/
def P16155807844720891403.Spec : Prop :=
  ∀ n, P16155807844720891403.a n = A004712 (n + 1)

end A004712

/-!
# A004713: Positions of ones in binary expansion of 1/sqrt(2).

The programs for A004713, there is no canonical definition to state claims against.
-/

/-! ## A004713.P2651745207798414762

`comp[A320985(n+1)]+1`
-/

namespace A004713.P2651745207798414762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320985 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A004713.P2651745207798414762

/-! ## A004713.P8010529802274694272

`∪[A293763(n+1), A293764(n+1)]`
-/

namespace A004713.P8010529802274694272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004713.P8010529802274694272

/-! ## A004713.P9305025332624357611

`lt[0, A004539(n+1)]+1`
-/

namespace A004713.P9305025332624357611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004713.P9305025332624357611

/-! ## A004713.P15272550334989574755

`lt[n*char[A246339(n+1)], n]`
-/

namespace A004713.P15272550334989574755
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246339 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A004713.P15272550334989574755

/-! ## A004713.P6380617733304032130

`record[(n+1)*A004539(n+2)+1]`
-/

namespace A004713.P6380617733304032130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A004539 (n + 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004713.P6380617733304032130

/-! ## A004713.P11717307001125430620

`record[A000027(n+1)*A004539(n+1)]`
-/

namespace A004713.P11717307001125430620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A004539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004713.P11717307001125430620

/-! ## A004713.P9040262901237946258

`record[A004539(A028310(n))*A028310(n)]`
-/

namespace A004713.P9040262901237946258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A028310 n).toNat * A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004713.P9040262901237946258

/-! ## A004713.P177592079119822894

`A000720(p?[A000040(n+1)*A004539(n+1)])`
-/

namespace A004713.P177592079119822894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A004539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A004713.P177592079119822894

/-! ## A004713.P9874913695001633882

`record[A004539(A246694(n))*A246694(n)]`
-/

namespace A004713.P9874913695001633882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A246694 n).toNat * A246694 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004713.P9874913695001633882

/-! ## A004713.P5148560732550170752

`record[A004539(A008619(n))*A008619(n)]`
-/

namespace A004713.P5148560732550170752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A008619 n).toNat * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004713.P5148560732550170752

/-! ## A004713.P1151111617692264384

`record[A004539(A008620(n))*A008620(n)]`
-/

namespace A004713.P1151111617692264384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004539 (A008620 n).toNat * A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004713.P1151111617692264384

/-! ## A004713.P18011046566556372974

`A056239(p?[A000040(n+1)*A004539(n+1)])`
-/

namespace A004713.P18011046566556372974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A004539 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A004713.P18011046566556372974

/-! ## A004713.P13601071642952525961

`floor(log2(A099972(n)))+1`
-/

namespace A004713.P13601071642952525961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A099972 n).toNat + 1

end

end A004713.P13601071642952525961

/-! ## A004713.P12387464446286998462

`eq[1, A084188(n)%2]+1`
-/

namespace A004713.P12387464446286998462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084188 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004713.P12387464446286998462

/-! ## A004713.P7190559235650115313

`lt[0, A201125(n+1)%2]+1`
-/

namespace A004713.P7190559235650115313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A201125 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004713.P7190559235650115313

/-! ## A004713.P4974613081853352182

`record[(n+1)*floor((A000225(n)+1)*sqrt(2))%2]`
-/

namespace A004713.P4974613081853352182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod ⌊(A000225 n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004713.P4974613081853352182

/-! ## A004713.P13468686250911971679

`eq[2, and(2, A084188(n))]`
-/

namespace A004713.P13468686250911971679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A084188 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004713.P13468686250911971679

/-! ## A004713.P4927515062452456132

`record[(n+1)*and(A084188(n), A136417(2*(n+2)))]`
-/

namespace A004713.P4927515062452456132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land (A084188 n) (A136417 (2 * (n + 2)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004713.P4927515062452456132

/-!
# A004714: Positions of ones in binary expansion of the reciprocal of the golden ratio (0.618...).

The programs for A004714, there is no canonical definition to state claims against.
-/

/-! ## A004714.P907256515060787017

`∪[A247521(n+1), A247522(n+1)]`
-/

namespace A004714.P907256515060787017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247521 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247522 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004714.P907256515060787017

/-! ## A004714.P10563616442861735981

`lt[acot(n), A068432(n+1)]`
-/

namespace A004714.P10563616442861735981
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A004714.P10563616442861735981

/-! ## A004714.P18324401276981190094

`eq[1, A068432(n+2)]+1`
-/

namespace A004714.P18324401276981190094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004714.P18324401276981190094

/-! ## A004714.P15590282248619989971

`eq[floor(atan(n)), A004555(n+2)]`
-/

namespace A004714.P15590282248619989971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004714.P15590282248619989971

/-! ## A004714.P977307335284289511

`eq[n, n*A004555(n+3)]+1`
-/

namespace A004714.P977307335284289511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004555 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004714.P977307335284289511

/-! ## A004714.P12603635482814058871

`eq[A054977(n), A068432(n+1)]`
-/

namespace A004714.P12603635482814058871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004714.P12603635482814058871

/-! ## A004714.P14653865210113679706

`eq[A057427(n), A068432(n+1)]`
-/

namespace A004714.P14653865210113679706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004714.P14653865210113679706

/-! ## A004714.P9978352857256699268

`eq[A068432(n+1), A158388(n)]`
-/

namespace A004714.P9978352857256699268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004714.P9978352857256699268

/-! ## A004714.P589112763658784006

`eq[A068432(n+1), A294619(n)]`
-/

namespace A004714.P589112763658784006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004714.P589112763658784006

/-! ## A004714.P10210711629979840468

`eq[A004555(n+2), A157928(n)]`
-/

namespace A004714.P10210711629979840468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004555 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004714.P10210711629979840468

/-! ## A004714.P2908756619994621749

`lt[A028242(n), n*A068432(n+1)]`
-/

namespace A004714.P2908756619994621749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A068432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004714.P2908756619994621749

/-! ## A004714.P8941604428223997953

`eq[1, A033322(n+1)+A004555(n+2)]`
-/

namespace A004714.P8941604428223997953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033322 (n + 1) + A004555 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004714.P8941604428223997953

/-! ## A004714.P11218651870246826358

`lt[1, A000005(n+1)*A068432(n+1)]`
-/

namespace A004714.P11218651870246826358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A068432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004714.P11218651870246826358

/-! ## A004714.P8885953334162862440

`lt[1, A006530(n+1)*A068432(n+1)]`
-/

namespace A004714.P8885953334162862440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) * A068432 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004714.P8885953334162862440

/-! ## A004714.P18358154285014757065

`lt[1, A001222(n*A068432(n+1)+1)+1]`
-/

namespace A004714.P18358154285014757065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((n : ℤ) * A068432 (n + 1) + 1).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004714.P18358154285014757065

/-! ## A004714.P4239061265597533647

`eq[2, A004555(n+2)+A000010(a(n-1))]` with `a(0)=4`
-/

namespace A004714.P4239061265597533647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A004555 (n + 2) + A000010 (f2 (n - 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004714.P4239061265597533647

/-! ## A004714.P13945616339600379797

`eq[3, A004555(n+2)+A004541(a(n-1)+1)]` with `a(0)=9`
-/

namespace A004714.P13945616339600379797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f2 =>
  A004555 (n + 2) + A004541 (f2 (n - 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004714.P13945616339600379797

/-! ## A004714.P17916234203342243260

`eq[3, A004559(a(n-1)+1)+A004555(n+2)]` with `a(0)=9`
-/

namespace A004714.P17916234203342243260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [9] fun n f2 =>
  A004559 (f2 (n - 1) + 1).toNat + A004555 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004714.P17916234203342243260

/-!
# A004715: Positions of ones in binary expansion of arctan(1/2)/Pi.

The programs for A004715, there is no canonical definition to state claims against.
-/

/-! ## A004715.P13630925816184134461

`eq[1, A028999(n)]+1`
-/

namespace A004715.P13630925816184134461
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004715.P13630925816184134461

/-! ## A004715.P10719987630152845324

`eq[1, A028999(abs(1-n))]`
-/

namespace A004715.P10719987630152845324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028999 |1 - (n : ℤ)|.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004715.P10719987630152845324

/-! ## A004715.P3464953500882403918

`A008619(2*eq[1, A028999(n)])`
-/

namespace A004715.P3464953500882403918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004715.P3464953500882403918

/-! ## A004715.P14664721975077100232

`A008611(3*eq[1, A028999(n)])`
-/

namespace A004715.P14664721975077100232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (3 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004715.P14664721975077100232

/-! ## A004715.P5251305758948494824

`A008621(4*eq[1, A028999(n)])`
-/

namespace A004715.P5251305758948494824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (4 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A004715.P5251305758948494824

/-!
# A004716: Positions of ones in the binary expansion of log(3)/log(2)-1.

The programs for A004716, there is no canonical definition to state claims against.
-/

/-! ## A004716.P2360515597871318086

`eq[1, A260595(n+2)]+1`
-/

namespace A004716.P2360515597871318086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260595 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A004716.P2360515597871318086

/-! ## A004716.P11734931226036427002

`eq[A054977(n), A260595(n+1)]`
-/

namespace A004716.P11734931226036427002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004716.P11734931226036427002

/-! ## A004716.P2152738742605233948

`eq[A057427(n), A260595(n+1)]`
-/

namespace A004716.P2152738742605233948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004716.P2152738742605233948

/-! ## A004716.P16551611020194362797

`eq[A158388(n), A260595(n+1)]`
-/

namespace A004716.P16551611020194362797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004716.P16551611020194362797

/-! ## A004716.P9803986726185333146

`eq[A260595(n+1), A294619(n)]`
-/

namespace A004716.P9803986726185333146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004716.P9803986726185333146

/-! ## A004716.P18211126436473013129

`record[A028310(n*A260595(n+1))]`
-/

namespace A004716.P18211126436473013129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ((n : ℤ) * A260595 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004716.P18211126436473013129

/-! ## A004716.P12835060282526816386

`record[A000007(n)+n*A260595(n+1)]`
-/

namespace A004716.P12835060282526816386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (n : ℤ) * A260595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004716.P12835060282526816386

/-! ## A004716.P15127948234343107987

`record[A123108(2*n)*A260595(n+1)]`
-/

namespace A004716.P15127948234343107987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (2 * n) * A260595 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004716.P15127948234343107987

/-! ## A004716.P17897433382739938716

`eq[A178334(n), A260595(n+1)]`
-/

namespace A004716.P17897433382739938716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260595 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004716.P17897433382739938716

/-!
# A004718: The Danish composer Per Nørgård's "infinity sequence", invented in an attempt to unify in a perfect way repetition and variation: a(2n) = -a(n), a(2n+1) = a(n) + 1, a(0) = 0.

The programs for A004718, the canonical program `A004718.P18113542795219450323` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004718 has offset 0).

The definition of A004718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004718.P18113542795219450323

`(2*n%2-1)*a(floor(n/2))+n%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004718

/-- `(2*n%2-1)*a(floor(n/2))+n%2` -/
def P18113542795219450323.Spec : Prop :=
  ∀ n, P18113542795219450323.a n = A004718 n

theorem P18113542795219450323.correct : P18113542795219450323.Spec := by
  intro n
  simp only [A004718]

end A004718

/-! ## A004718.P9425097775921319272

`A343029(n)-A343030(n)`
-/

namespace A004718.P9425097775921319272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n - A343030 n

end

end A004718.P9425097775921319272

namespace A004718

/-- `A343029(n)-A343030(n)` -/
def P9425097775921319272.Spec : Prop :=
  ∀ n, P9425097775921319272.a n = A004718 n

theorem P9425097775921319272.correct : P9425097775921319272.Spec := by
  intro n
  simp only [A004718, Nat.add_sub_cancel, A004718.P9425097775921319272.a, A004718.P18113542795219450323.a, A343029, A343029.P9025480771425565583.a, A343030, A343030.P6588649687182581724.a, A014081, A014081.P14878370479040452879.a, A154437, A154437.P11607465258887740319.a, A000120, A000120.P2816527436160941581.a, A056539, A056539.P17406113578210965747.a, A069010, A069010.P14932719103722593844.a, A335858, A335858.P3204271633163649755.a, A003188, A003188.P10544524695508875182.a, A005187, A005187.P3874015513960485494.a, A005811, A005811.P8696411420205566785.a, A180200, A180200.P2958972076606443306.a, A341916, A341916.P17753814801162057676.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004718

/-! ## A004718.P18346439870110276458

`A065620(A323908(n))`
-/

namespace A004718.P18346439870110276458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065620 (A323908 n).toNat

end

end A004718.P18346439870110276458

namespace A004718

/-- `A065620(A323908(n))` -/
def P18346439870110276458.Spec : Prop :=
  ∀ n, P18346439870110276458.a n = A004718 n

end A004718

/-! ## A004718.P5988970878896215445

`A117966(A323909(n))`
-/

namespace A004718.P5988970878896215445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 (A323909 n).toNat

end

end A004718.P5988970878896215445

namespace A004718

/-- `A117966(A323909(n))` -/
def P5988970878896215445.Spec : Prop :=
  ∀ n, P5988970878896215445.a n = A004718 n

end A004718

/-! ## A004718.P15762409791030129836

`A104895(A323908(2*n))`
-/

namespace A004718.P15762409791030129836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A323908 (2 * n)).toNat

end

end A004718.P15762409791030129836

namespace A004718

/-- `A104895(A323908(2*n))` -/
def P15762409791030129836.Spec : Prop :=
  ∀ n, P15762409791030129836.a n = A004718 n

end A004718

/-! ## A004718.P12994594001035722317

`∑[A256187(n)]-A256187(n)`
-/

namespace A004718.P12994594001035722317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256187 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A256187 n

end

end A004718.P12994594001035722317

namespace A004718

/-- `∑[A256187(n)]-A256187(n)` -/
def P12994594001035722317.Spec : Prop :=
  ∀ n, P12994594001035722317.a n = A004718 n

end A004718

/-! ## A004718.P13831770688645441703

`2*A343029(n)-A000120(n)`
-/

namespace A004718.P13831770688645441703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A343029 n - A000120 n

end

end A004718.P13831770688645441703

namespace A004718

/-- `2*A343029(n)-A000120(n)` -/
def P13831770688645441703.Spec : Prop :=
  ∀ n, P13831770688645441703.a n = A004718 n

end A004718

/-! ## A004718.P8572189742023123012

`A000120(n)-2*A343030(n)`
-/

namespace A004718.P8572189742023123012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n - 2 * A343030 n

end

end A004718.P8572189742023123012

namespace A004718

/-- `A000120(n)-2*A343030(n)` -/
def P8572189742023123012.Spec : Prop :=
  ∀ n, P8572189742023123012.a n = A004718 n

end A004718

/-! ## A004718.P8269516257684678203

`A323909(2*n)-A323909(n)`
-/

namespace A004718.P8269516257684678203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323909 (2 * n) - A323909 n

end

end A004718.P8269516257684678203

namespace A004718

/-- `A323909(2*n)-A323909(n)` -/
def P8269516257684678203.Spec : Prop :=
  ∀ n, P8269516257684678203.a n = A004718 n

end A004718

/-! ## A004718.P184865803384489035

`A361020(2*n)-A361020(n)`
-/

namespace A004718.P184865803384489035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361020 (2 * n) - A361020 n

end

end A004718.P184865803384489035

namespace A004718

/-- `A361020(2*n)-A361020(n)` -/
def P184865803384489035.Spec : Prop :=
  ∀ n, P184865803384489035.a n = A004718 n

end A004718

/-! ## A004718.P3157627953927168498

`A343029(n)-A343029(A025480(n))`
-/

namespace A004718.P3157627953927168498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n - A343029 (A025480 n).toNat

end

end A004718.P3157627953927168498

namespace A004718

/-- `A343029(n)-A343029(A025480(n))` -/
def P3157627953927168498.Spec : Prop :=
  ∀ n, P3157627953927168498.a n = A004718 n

end A004718

/-! ## A004718.P12183729471077784136

`A343029(n)-A343029(A029578(n))`
-/

namespace A004718.P12183729471077784136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n - A343029 (A029578 n).toNat

end

end A004718.P12183729471077784136

namespace A004718

/-- `A343029(n)-A343029(A029578(n))` -/
def P12183729471077784136.Spec : Prop :=
  ∀ n, P12183729471077784136.a n = A004718 n

end A004718

/-! ## A004718.P17314148262393255308

`A343029(n)+1-A343029(A000265(n+1))`
-/

namespace A004718.P17314148262393255308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n + (1 - A343029 (A000265 (n + 1)).toNat)

end

end A004718.P17314148262393255308

namespace A004718

/-- `A343029(n)+1-A343029(A000265(n+1))` -/
def P17314148262393255308.Spec : Prop :=
  ∀ n, P17314148262393255308.a n = A004718 n

end A004718

/-! ## A004718.P18276560241492828334

`A274604(n+1)-(A274604(n)+A256187(n))`
-/

namespace A004718.P18276560241492828334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274604 (n + 1) - (A274604 n + A256187 n)

end

end A004718.P18276560241492828334

namespace A004718

/-- `A274604(n+1)-(A274604(n)+A256187(n))` -/
def P18276560241492828334.Spec : Prop :=
  ∀ n, P18276560241492828334.a n = A004718 n

end A004718

/-! ## A004718.P1263384139450774653

`n-A274604(2*n)`
-/

namespace A004718.P1263384139450774653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A274604 (2 * n)

end

end A004718.P1263384139450774653

namespace A004718

/-- `n-A274604(2*n)` -/
def P1263384139450774653.Spec : Prop :=
  ∀ n, P1263384139450774653.a n = A004718 n

end A004718

/-! ## A004718.P6254491097323827219

`floor(A256187(2*n)/2)`
-/

namespace A004718.P6254491097323827219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A256187 (2 * n) : ℚ) / 2⌋

end

end A004718.P6254491097323827219

namespace A004718

/-- `floor(A256187(2*n)/2)` -/
def P6254491097323827219.Spec : Prop :=
  ∀ n, P6254491097323827219.a n = A004718 n

end A004718

/-! ## A004718.P6757856711392068024

`A343030(2*n)-A343030(n)`
-/

namespace A004718.P6757856711392068024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343030 (2 * n) - A343030 n

end

end A004718.P6757856711392068024

namespace A004718

/-- `A343030(2*n)-A343030(n)` -/
def P6757856711392068024.Spec : Prop :=
  ∀ n, P6757856711392068024.a n = A004718 n

end A004718

/-! ## A004718.P11613623341703916851

`A343029(n)-A343029(2*n)`
-/

namespace A004718.P11613623341703916851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343029 n - A343029 (2 * n)

end

end A004718.P11613623341703916851

namespace A004718

/-- `A343029(n)-A343029(2*n)` -/
def P11613623341703916851.Spec : Prop :=
  ∀ n, P11613623341703916851.a n = A004718 n

end A004718

/-! ## A004718.P7795554059479410561

`A085144(A010078(n+1))`
-/

namespace A004718.P7795554059479410561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085144 (A010078 (n + 1)).toNat

end

end A004718.P7795554059479410561

namespace A004718

/-- `A085144(A010078(n+1))` -/
def P7795554059479410561.Spec : Prop :=
  ∀ n, P7795554059479410561.a n = A004718 n

end A004718

/-! ## A004718.P16645659852139415193

`A323887(A019442(n+2))`
-/

namespace A004718.P16645659852139415193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323887 (A019442 (n + 2)).toNat

end

end A004718.P16645659852139415193

namespace A004718

/-- `A323887(A019442(n+2))` -/
def P16645659852139415193.Spec : Prop :=
  ∀ n, P16645659852139415193.a n = A004718 n

end A004718

/-!
# A004719: Delete all 0's from n.

The programs for A004719, there is no canonical definition to state claims against.
-/

/-! ## A004719.P1137313029881329825

`A382401(A008592(n+1))`
-/

namespace A004719.P1137313029881329825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382401 (A008592 (n + 1)).toNat

end

end A004719.P1137313029881329825

/-! ## A004719.P4458239690134534989

`A382401(10*A004151(n+1))`
-/

namespace A004719.P4458239690134534989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382401 (10 * A004151 (n + 1)).toNat

end

end A004719.P4458239690134534989

/-! ## A004719.P7656664966254537067

`A373169(∑[n]+3)`
-/

namespace A004719.P7656664966254537067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373169 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A004719.P7656664966254537067

/-! ## A004719.P1982277094192913047

`A280737(A130321(n))+A004086(A333659(n+1))`
-/

namespace A004719.P1982277094192913047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (A130321 n).toNat + A004086 (A333659 (n + 1)).toNat

end

end A004719.P1982277094192913047

/-! ## A004719.P843571049819512510

`A004086(A333659(n+1))*A072963(A137688(n))`
-/

namespace A004719.P843571049819512510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A333659 (n + 1)).toNat * A072963 (A137688 n).toNat

end

end A004719.P843571049819512510

/-! ## A004719.P9663828092690728440

`A004086(A004086(n+1))%A061478(A007953(n²)+1)`
-/

namespace A004719.P9663828092690728440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A004086 (n + 1)).toNat) (A061478 (A007953 (n ^ 2) + 1).toNat)

end

end A004719.P9663828092690728440

/-! ## A004719.P14401412317813529563

`A000188(((n+1)/10^val(n+1, 10))²)`
-/

namespace A004719.P14401412317813529563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ)) ^ 2)).toNat

end

end A004719.P14401412317813529563

/-! ## A004719.P18277636912458892657

`((n+1)/10^val(n+1, 10))%A344729(n+1)`
-/

namespace A004719.P18277636912458892657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))) (A344729 (n + 1))

end

end A004719.P18277636912458892657

/-! ## A004719.P17828680998127143357

`gcd((n+1)/10^val(n+1, 10), A008592(∑[2*n]))`
-/

namespace A004719.P17828680998127143357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (10 ^ SequenceMachineLib.valuation (n + 1) 10 : ℚ))) (A008592 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A004719.P17828680998127143357

/-! ## A004719.P4943261610232479882

`A382401(A044332(n+1))`
-/

namespace A004719.P4943261610232479882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382401 (A044332 (n + 1)).toNat

end

end A004719.P4943261610232479882

/-! ## A004719.P7398643220093985378

`(n+1)/A068159(A071273(n+1))`
-/

namespace A004719.P7398643220093985378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A068159 (A071273 (n + 1)).toNat : ℚ)

end

end A004719.P7398643220093985378

/-!
# A004720: Delete all digits '1' from the sequence of nonnegative integers.

The programs for A004720, there is no canonical definition to state claims against.
-/

/-! ## A004720.P8375503624752286616

`A004176(A101947(n+1))%record[A189560(n)]`
-/

namespace A004720.P8375503624752286616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189560 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004176 (A101947 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A004720.P8375503624752286616

/-! ## A004720.P14875481274288537224

`A019590(A174590(n+1))+A004176(A101947(n+1))`
-/

namespace A004720.P14875481274288537224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (A174590 (n + 1)).toNat + A004176 (A101947 (n + 1)).toNat

end

end A004720.P14875481274288537224

/-! ## A004720.P1304765726844143186

`A007949(A282430(n+1))+A004176(A101947(n+1))`
-/

namespace A004720.P1304765726844143186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007949 (A282430 (n + 1)).toNat + A004176 (A101947 (n + 1)).toNat

end

end A004720.P1304765726844143186

/-! ## A004720.P10104743407496179340

`A271910(A161680(n+1)+1)+A004176(A101947(n+1))`
-/

namespace A004720.P10104743407496179340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271910 (A161680 (n + 1) + 1).toNat + A004176 (A101947 (n + 1)).toNat

end

end A004720.P10104743407496179340

/-! ## A004720.P11713753549434451156

`A004176(A101947(n+1))*A077028(A000384(n))`
-/

namespace A004720.P11713753549434451156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A101947 (n + 1)).toNat * A077028 (A000384 n).toNat

end

end A004720.P11713753549434451156

/-! ## A004720.P16860380175250292959

`A004176(A101947(n+1))+A000038(A083544(n+1))`
-/

namespace A004720.P16860380175250292959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A101947 (n + 1)).toNat + A000038 (A083544 (n + 1)).toNat

end

end A004720.P16860380175250292959

/-! ## A004720.P8479055472150356587

`A056965(A265569(n))+A004176(A101947(n+1))`
-/

namespace A004720.P8479055472150356587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 (A265569 n).toNat + A004176 (A101947 (n + 1)).toNat

end

end A004720.P8479055472150356587

/-! ## A004720.P3447155372060301128

`A000035(A336898(n))*A004176(A101947(n+1))`
-/

namespace A004720.P3447155372060301128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A336898 n).toNat * A004176 (A101947 (n + 1)).toNat

end

end A004720.P3447155372060301128

/-!
# A004721: Delete all 2's from the sequence of nonnegative integers.

The programs for A004721, there is no canonical definition to state claims against.
-/

/-! ## A004721.P6647485768457720493

`A004177(comp[2*A000042(n+1)])`
-/

namespace A004721.P6647485768457720493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000042 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A004721.P6647485768457720493

/-! ## A004721.P6054236844516755232

`A004177(lt[A316863(n), A055642(n)])`
-/

namespace A004721.P6054236844516755232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A004721.P6054236844516755232

/-! ## A004721.P2597879048404232154

`A004177(lt[0, A222211(n)])`
-/

namespace A004721.P2597879048404232154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A004721.P2597879048404232154

/-! ## A004721.P3856496562984953495

`A004177(lt[A316863(n), A061901(n)])`
-/

namespace A004721.P3856496562984953495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316863 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004177 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A004721.P3856496562984953495

/-!
# A004722: Delete all digits 3 from the terms of the sequence of nonnegative integers.

The programs for A004722, there is no canonical definition to state claims against.
-/

/-! ## A004722.P6553936239529329936

`A004178(lt[0, A222212(n)])`
-/

namespace A004722.P6553936239529329936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222212 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004178 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A004722.P6553936239529329936

/-! ## A004722.P2059051041130149477

`A004178(A326178(n))%A032559(n+5)`
-/

namespace A004722.P2059051041130149477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004178 (A326178 n).toNat) (A032559 (n + 5))

end

end A004722.P2059051041130149477

/-! ## A004722.P13519793867464096891

`A193511(A002383(n+1))+A004178(A326178(n))`
-/

namespace A004722.P13519793867464096891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193511 (A002383 (n + 1)).toNat + A004178 (A326178 n).toNat

end

end A004722.P13519793867464096891

/-!
# A004723: Delete all 4's from the sequence of nonnegative integers.

The programs for A004723, there is no canonical definition to state claims against.
-/

/-! ## A004723.P14735887969103147639

`A004179(lt[A316865(n), A055642(n)])`
-/

namespace A004723.P14735887969103147639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A004723.P14735887969103147639

/-! ## A004723.P164054260247140948

`A004179(lt[A316865(n), A061901(n)])`
-/

namespace A004723.P164054260247140948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A004723.P164054260247140948

/-! ## A004723.P6349078589350620413

`A004179(lt[A222240(n), A256079(n)])`
-/

namespace A004723.P6349078589350620413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222240 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004179 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A004723.P6349078589350620413

/-!
# A004729: Divisors of 2^32 - 1 (for a(1) to a(31), the 31 known regular polygons with an odd number of sides constructible with ruler and compass).

The programs for A004729, there is no canonical definition to state claims against.
-/

/-! ## A004729.P5446173859497078540

`(a(n-1)+2*a(and(n, n-1)))%Δ[n^7]` with `a(0)=1`
-/

namespace A004729.P5446173859497078540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 7

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.tmod (a (n - 1) + 2 * a (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A004729.P5446173859497078540

/-! ## A004729.P9444259851839459473

`or(1, A053576(n))`
-/

namespace A004729.P9444259851839459473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A053576 n)

end

end A004729.P9444259851839459473

/-! ## A004729.P8234736942769509906

`A001317(n)+char[32]`
-/

namespace A004729.P8234736942769509906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A004729.P8234736942769509906

/-! ## A004729.P10109990333822534719

`A058213(∑[n]+n)`
-/

namespace A004729.P10109990333822534719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058213 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A004729.P10109990333822534719

/-! ## A004729.P14560823875056512547

`A001317(∑[ceil(n/48)])`
-/

namespace A004729.P14560823875056512547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / 48⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A004729.P14560823875056512547

/-!
# A004730: Numerator of n!!/(n+1)!! (cf. A006882).

The programs for A004730, the canonical program `A004730.P1125278465444381569` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004730 has offset 0).

The definition of A004730 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004730.P13765290969881316953

`A380910(n+1)`
-/

namespace A004730.P13765290969881316953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380910 (n + 1)

end

end A004730.P13765290969881316953

namespace A004730

/-- `A380910(n+1)` -/
def P13765290969881316953.Spec : Prop :=
  ∀ n, P13765290969881316953.a n = A004730 n

end A004730

/-! ## A004730.P1359789598161609108

`lcm(2, A036069(n+1))/2`
-/

namespace A004730.P1359789598161609108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A036069 (n + 1)) : ℚ) / 2

end

end A004730.P1359789598161609108

namespace A004730

/-- `lcm(2, A036069(n+1))/2` -/
def P1359789598161609108.Spec : Prop :=
  ∀ n, P1359789598161609108.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P472034047167596367

`A036069(n+1)/A000034(n+1)`
-/

namespace A004730.P472034047167596367
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036069 (n + 1) : ℚ) / (A000034 (n + 1) : ℚ)

end

end A004730.P472034047167596367

namespace A004730

/-- `A036069(n+1)/A000034(n+1)` -/
def P472034047167596367.Spec : Prop :=
  ∀ n, P472034047167596367.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P1234801327132756382

`A036069(n+1)/Δ[A032766(n+1)]`
-/

namespace A004730.P1234801327132756382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036069 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A004730.P1234801327132756382

namespace A004730

/-- `A036069(n+1)/Δ[A032766(n+1)]` -/
def P1234801327132756382.Spec : Prop :=
  ∀ n, P1234801327132756382.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P13405695779558150715

`A036069(n+1)/(2-Δ[A008619(n)])`
-/

namespace A004730.P13405695779558150715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036069 (n + 1) : ℚ) / (2 - (f1 (n + 1) - f1 n) : ℚ)

end

end A004730.P13405695779558150715

namespace A004730

/-- `A036069(n+1)/(2-Δ[A008619(n)])` -/
def P13405695779558150715.Spec : Prop :=
  ∀ n, P13405695779558150715.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P3269842356934021137

`A036069(n+1)/2*A134451(n+1)`
-/

namespace A004730.P3269842356934021137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036069 (n + 1) : ℚ) / 2 * (A134451 (n + 1) : ℚ)

end

end A004730.P3269842356934021137

namespace A004730

/-- `A036069(n+1)/2*A134451(n+1)` -/
def P3269842356934021137.Spec : Prop :=
  ∀ n, P3269842356934021137.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P18299762378804308486

`A036069(n+1)/Δ[A008619(A008585(n+1))]`
-/

namespace A004730.P18299762378804308486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008585 (n + 1)).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036069 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A004730.P18299762378804308486

namespace A004730

/-- `A036069(n+1)/Δ[A008619(A008585(n+1))]` -/
def P18299762378804308486.Spec : Prop :=
  ∀ n, P18299762378804308486.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P9838557854606006275

`A036069(n+1)/A036069(Δ[A008619(n+1)])`
-/

namespace A004730.P9838557854606006275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036069 (n + 1) : ℚ) / (A036069 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A004730.P9838557854606006275

namespace A004730

/-- `A036069(n+1)/A036069(Δ[A008619(n+1)])` -/
def P9838557854606006275.Spec : Prop :=
  ∀ n, P9838557854606006275.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P9498101354321826676

`A380909(n)/A086767(n)`
-/

namespace A004730.P9498101354321826676
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380909 n : ℚ) / (A086767 n : ℚ)

end

end A004730.P9498101354321826676

namespace A004730

/-- `A380909(n)/A086767(n)` -/
def P9498101354321826676.Spec : Prop :=
  ∀ n, P9498101354321826676.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P1125278465444381569

`gcd(A138364(n), A380909(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A004730

/-- `gcd(A138364(n), A380909(n))` -/
def P1125278465444381569.Spec : Prop :=
  ∀ n, (P1125278465444381569.a n : ℤ) = A004730 n

theorem P1125278465444381569.correct : P1125278465444381569.Spec := by
  intro n
  simp only [A004730]

end A004730

/-! ## A004730.P11580209275288457849

`A004731(n+1)/A086767(n)`
-/

namespace A004730.P11580209275288457849
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004731 (n + 1) : ℚ) / (A086767 n : ℚ)

end

end A004730.P11580209275288457849

namespace A004730

/-- `A004731(n+1)/A086767(n)` -/
def P11580209275288457849.Spec : Prop :=
  ∀ n, P11580209275288457849.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P3134943939873350102

`gcd(A004731(n+1), A036069(n+1))`
-/

namespace A004730.P3134943939873350102
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004731 (n + 1)) (A036069 (n + 1))

end

end A004730.P3134943939873350102

namespace A004730

/-- `gcd(A004731(n+1), A036069(n+1))` -/
def P3134943939873350102.Spec : Prop :=
  ∀ n, (P3134943939873350102.a n : ℤ) = A004730 n

end A004730

/-! ## A004730.P9525710193441518643

`A380949(n+1)/A380909(n)`
-/

namespace A004730.P9525710193441518643
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380949 (n + 1) : ℚ) / (A380909 n : ℚ)

end

end A004730.P9525710193441518643

namespace A004730

/-- `A380949(n+1)/A380909(n)` -/
def P9525710193441518643.Spec : Prop :=
  ∀ n, P9525710193441518643.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P6170738992508569344

`A380949(n+1)/A004731(n+1)`
-/

namespace A004730.P6170738992508569344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380949 (n + 1) : ℚ) / (A004731 (n + 1) : ℚ)

end

end A004730.P6170738992508569344

namespace A004730

/-- `A380949(n+1)/A004731(n+1)` -/
def P6170738992508569344.Spec : Prop :=
  ∀ n, P6170738992508569344.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P5224498180074835879

`A380950(n+2)/A380909(n+2)`
-/

namespace A004730.P5224498180074835879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380950 (n + 2) : ℚ) / (A380909 (n + 2) : ℚ)

end

end A004730.P5224498180074835879

namespace A004730

/-- `A380950(n+2)/A380909(n+2)` -/
def P5224498180074835879.Spec : Prop :=
  ∀ n, P5224498180074835879.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P10196922637967266140

`A095987(n)/A095987(n+1)*A380909(n)`
-/

namespace A004730.P10196922637967266140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095987 n : ℚ) / (A095987 (n + 1) : ℚ) * (A380909 n : ℚ)

end

end A004730.P10196922637967266140

namespace A004730

/-- `A095987(n)/A095987(n+1)*A380909(n)` -/
def P10196922637967266140.Spec : Prop :=
  ∀ n, P10196922637967266140.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P11106600543443224189

`A004731(n+1)/A095987(n+1)*A095987(n)`
-/

namespace A004730.P11106600543443224189
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004731 (n + 1) : ℚ) / (A095987 (n + 1) : ℚ) * (A095987 n : ℚ)

end

end A004730.P11106600543443224189

namespace A004730

/-- `A004731(n+1)/A095987(n+1)*A095987(n)` -/
def P11106600543443224189.Spec : Prop :=
  ∀ n, P11106600543443224189.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P2596474001780218593

`A006882(n)/A095987(n+1)`
-/

namespace A004730.P2596474001780218593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 n : ℚ) / (A095987 (n + 1) : ℚ)

end

end A004730.P2596474001780218593

namespace A004730

/-- `A006882(n)/A095987(n+1)` -/
def P2596474001780218593.Spec : Prop :=
  ∀ n, P2596474001780218593.a n = (A004730 n : ℚ)

end A004730

/-! ## A004730.P12358960152195850828

`gcd(A006882(n), A036069(n+1))`
-/

namespace A004730.P12358960152195850828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006882 n) (A036069 (n + 1))

end

end A004730.P12358960152195850828

namespace A004730

/-- `gcd(A006882(n), A036069(n+1))` -/
def P12358960152195850828.Spec : Prop :=
  ∀ n, (P12358960152195850828.a n : ℤ) = A004730 n

end A004730

/-!
# A004731: a(0) = 1; thereafter a(n) = denominator of (n-2)!! / (n-1)!!.

The programs for A004731, the canonical program `A004731.P16733994207931499197` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004731 has offset 0).

The definition of A004731 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004731.P16733994207931499197

`A380909(abs(1-n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004731

/-- `A380909(abs(1-n))` -/
def P16733994207931499197.Spec : Prop :=
  ∀ n, P16733994207931499197.a n = A004731 n

theorem P16733994207931499197.correct : P16733994207931499197.Spec := by
  intro n
  simp only [A004731]

end A004731

/-! ## A004731.P89322375603975310

`A036064(∑[n]+1)`
-/

namespace A004731.P89322375603975310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036064 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A004731.P89322375603975310

namespace A004731

/-- `A036064(∑[n]+1)` -/
def P89322375603975310.Spec : Prop :=
  ∀ n, P89322375603975310.a n = A004731 n

end A004731

/-! ## A004731.P14156040327428215813

`gcd(C(2, n), A036064(A000124(n)))`
-/

namespace A004731.P14156040327428215813
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose 2 n : ℤ) (A036064 (A000124 n).toNat)

end

end A004731.P14156040327428215813

namespace A004731

/-- `gcd(C(2, n), A036064(A000124(n)))` -/
def P14156040327428215813.Spec : Prop :=
  ∀ n, (P14156040327428215813.a n : ℤ) = A004731 n

end A004731

/-! ## A004731.P9001513024169982810

`A036064(A000124(n))%A054322(n)`
-/

namespace A004731.P9001513024169982810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A036064 (A000124 n).toNat) (A054322 n)

end

end A004731.P9001513024169982810

namespace A004731

/-- `A036064(A000124(n))%A054322(n)` -/
def P9001513024169982810.Spec : Prop :=
  ∀ n, P9001513024169982810.a n = A004731 n

end A004731

/-! ## A004731.P4594851346508435173

`gcd(A000038(n), A036064(A000124(n)))`
-/

namespace A004731.P4594851346508435173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A036064 (A000124 n).toNat)

end

end A004731.P4594851346508435173

namespace A004731

/-- `gcd(A000038(n), A036064(A000124(n)))` -/
def P4594851346508435173.Spec : Prop :=
  ∀ n, (P4594851346508435173.a n : ℤ) = A004731 n

end A004731

/-! ## A004731.P17779774235612795037

`lcm(A033999(n), A036064(A000124(n)))`
-/

namespace A004731.P17779774235612795037
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A036064 (A000124 n).toNat)

end

end A004731.P17779774235612795037

namespace A004731

/-- `lcm(A033999(n), A036064(A000124(n)))` -/
def P17779774235612795037.Spec : Prop :=
  ∀ n, (P17779774235612795037.a n : ℤ) = A004731 n

end A004731

/-! ## A004731.P6444297043644308602

`A036064(A000124(n))+A000035(2*n)`
-/

namespace A004731.P6444297043644308602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036064 (A000124 n).toNat + A000035 (2 * n)

end

end A004731.P6444297043644308602

namespace A004731

/-- `A036064(A000124(n))+A000035(2*n)` -/
def P6444297043644308602.Spec : Prop :=
  ∀ n, P6444297043644308602.a n = A004731 n

end A004731

/-! ## A004731.P9272080822083721486

`A000034(2*n)*A036064(A000124(n))`
-/

namespace A004731.P9272080822083721486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A036064 (A000124 n).toNat

end

end A004731.P9272080822083721486

namespace A004731

/-- `A000034(2*n)*A036064(A000124(n))` -/
def P9272080822083721486.Spec : Prop :=
  ∀ n, P9272080822083721486.a n = A004731 n

end A004731

/-! ## A004731.P8041331338194081026

`A036064(A000124(n))*A057979(2*n)`
-/

namespace A004731.P8041331338194081026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036064 (A000124 n).toNat * A057979 (2 * n)

end

end A004731.P8041331338194081026

namespace A004731

/-- `A036064(A000124(n))*A057979(2*n)` -/
def P8041331338194081026.Spec : Prop :=
  ∀ n, P8041331338194081026.a n = A004731 n

end A004731

/-! ## A004731.P4856530590509804336

`A033999(n+1)²*A036064(A000124(n))`
-/

namespace A004731.P4856530590509804336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) ^ 2 * A036064 (A000124 n).toNat

end

end A004731.P4856530590509804336

namespace A004731

/-- `A033999(n+1)²*A036064(A000124(n))` -/
def P4856530590509804336.Spec : Prop :=
  ∀ n, P4856530590509804336.a n = A004731 n

end A004731

/-! ## A004731.P14472333998940546464

`A000005(gcd(n, n+1))*A036064(A000124(n))`
-/

namespace A004731.P14472333998940546464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A036064 (A000124 n).toNat

end

end A004731.P14472333998940546464

namespace A004731

/-- `A000005(gcd(n, n+1))*A036064(A000124(n))` -/
def P14472333998940546464.Spec : Prop :=
  ∀ n, P14472333998940546464.a n = A004731 n

end A004731

/-! ## A004731.P17111641467526720482

`A005361(A005117(n+1))*A036064(A000124(n))`
-/

namespace A004731.P17111641467526720482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A005117 (n + 1)).toNat * A036064 (A000124 n).toNat

end

end A004731.P17111641467526720482

namespace A004731

/-- `A005361(A005117(n+1))*A036064(A000124(n))` -/
def P17111641467526720482.Spec : Prop :=
  ∀ n, P17111641467526720482.a n = A004731 n

end A004731

/-!
# A004732: Numerator of n!!/(n+3)!!.

The programs for A004732, the canonical program `A004732.P14447255711085556585` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004732 has offset 0).

The definition of A004732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004732.P17448165268304829975

`A004730(n)/A086767(n+2)`
-/

namespace A004732.P17448165268304829975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004730 n : ℚ) / (A086767 (n + 2) : ℚ)

end

end A004732.P17448165268304829975

namespace A004732

/-- `A004730(n)/A086767(n+2)` -/
def P17448165268304829975.Spec : Prop :=
  ∀ n, P17448165268304829975.a n = (A004732 n : ℚ)

end A004732

/-! ## A004732.P14447255711085556585

`gcd(A004730(n), A126120(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A004732

/-- `gcd(A004730(n), A126120(n+1))` -/
def P14447255711085556585.Spec : Prop :=
  ∀ n, (P14447255711085556585.a n : ℤ) = A004732 n

theorem P14447255711085556585.correct : P14447255711085556585.Spec := by
  intro n
  simp only [A004732]

end A004732

/-! ## A004732.P4965020081845024409

`A380910(n+1)/A086767(n+2)`
-/

namespace A004732.P4965020081845024409
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380910 (n + 1) : ℚ) / (A086767 (n + 2) : ℚ)

end

end A004732.P4965020081845024409

namespace A004732

/-- `A380910(n+1)/A086767(n+2)` -/
def P4965020081845024409.Spec : Prop :=
  ∀ n, P4965020081845024409.a n = (A004732 n : ℚ)

end A004732

/-! ## A004732.P4807221222619133123

`gcd(A004731(n+1), A036069(n+3))`
-/

namespace A004732.P4807221222619133123
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004731 (n + 1)) (A036069 (n + 3))

end

end A004732.P4807221222619133123

namespace A004732

/-- `gcd(A004731(n+1), A036069(n+3))` -/
def P4807221222619133123.Spec : Prop :=
  ∀ n, (P4807221222619133123.a n : ℤ) = A004732 n

end A004732

/-! ## A004732.P13509294442075984842

`gcd(A004730(n+2), A004730(A028310(n)))`
-/

namespace A004732.P13509294442075984842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004730 (n + 2)) (A004730 (A028310 n).toNat)

end

end A004732.P13509294442075984842

namespace A004732

/-- `gcd(A004730(n+2), A004730(A028310(n)))` -/
def P13509294442075984842.Spec : Prop :=
  ∀ n, (P13509294442075984842.a n : ℤ) = A004732 n

end A004732

/-! ## A004732.P12707952286872996793

`sqrt(gcd(A110255(n+2), A110255(n+4)))`
-/

namespace A004732.P12707952286872996793
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Int.gcd (A110255 (n + 2)) (A110255 (n + 4)) : ℝ)

end

end A004732.P12707952286872996793

namespace A004732

/-- `sqrt(gcd(A110255(n+2), A110255(n+4)))` -/
def P12707952286872996793.Spec : Prop :=
  ∀ n, P12707952286872996793.a n = (A004732 n : ℝ)

end A004732

/-! ## A004732.P827831015788889924

`A006882(n)/gcd(A006882(n), A249060(n))`
-/

namespace A004732.P827831015788889924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 n : ℚ) / (Int.gcd (A006882 n) (A249060 n) : ℚ)

end

end A004732.P827831015788889924

namespace A004732

/-- `A006882(n)/gcd(A006882(n), A249060(n))` -/
def P827831015788889924.Spec : Prop :=
  ∀ n, P827831015788889924.a n = (A004732 n : ℚ)

end A004732

/-!
# A004733: Denominator of n!!/(n+3)!!.

The programs for A004733, the canonical program `A004733.P5302531551978956282` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004733 has offset 0).

The definition of A004733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 324 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004733.P11572896200273847893

`lcm(A004731(n+4), A036069(n))`
-/

namespace A004733.P11572896200273847893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004731 (n + 4)) (A036069 n)

end

end A004733.P11572896200273847893

namespace A004733

/-- `lcm(A004731(n+4), A036069(n))` -/
def P11572896200273847893.Spec : Prop :=
  ∀ n, (P11572896200273847893.a n : ℤ) = A004733 n

end A004733

/-! ## A004733.P5302531551978956282

`lcm(A004730(n+3), A004731(n+2))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A004733

/-- `lcm(A004730(n+3), A004731(n+2))` -/
def P5302531551978956282.Spec : Prop :=
  ∀ n, (P5302531551978956282.a n : ℤ) = A004733 n

theorem P5302531551978956282.correct : P5302531551978956282.Spec := by
  intro n
  simp only [A004733]

end A004733

/-! ## A004733.P13263372903599846842

`A000034(n)*A036064(Δ[A023545(n+1)])`
-/

namespace A004733.P13263372903599846842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A036064 (f1 (n + 1) - f1 n).toNat

end

end A004733.P13263372903599846842

namespace A004733

/-- `A000034(n)*A036064(Δ[A023545(n+1)])` -/
def P13263372903599846842.Spec : Prop :=
  ∀ n, P13263372903599846842.a n = A004733 n

end A004733

/-! ## A004733.P11127838873366594828

`A006882(n+3)/gcd(A006882(n+3), A006882(n))`
-/

namespace A004733.P11127838873366594828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006882 (n + 3) : ℚ) / (Int.gcd (A006882 (n + 3)) (A006882 n) : ℚ)

end

end A004733.P11127838873366594828

namespace A004733

/-- `A006882(n+3)/gcd(A006882(n+3), A006882(n))` -/
def P11127838873366594828.Spec : Prop :=
  ∀ n, P11127838873366594828.a n = (A004733 n : ℚ)

end A004733

/-!
# A004734: Numerator of average distance traveled by n-dimensional fly.

The programs for A004734, the canonical program `A004734.P8169358669113051099` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004734 has offset 1).

The definition of A004734 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 335 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004734.P13004487669382426769

`(n%2+1)*A036069(n+2)`
-/

namespace A004734.P13004487669382426769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) * A036069 (n + 2)

end

end A004734.P13004487669382426769

namespace A004734

/-- `(n%2+1)*A036069(n+2)` -/
def P13004487669382426769.Spec : Prop :=
  ∀ n, P13004487669382426769.a n = A004734 (n + 1)

end A004734

/-! ## A004734.P8169358669113051099

`A004730(n+1)*A010685(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A004734

/-- `A004730(n+1)*A010685(n)` -/
def P8169358669113051099.Spec : Prop :=
  ∀ n, P8169358669113051099.a n = A004734 (n + 1)

theorem P8169358669113051099.correct : P8169358669113051099.Spec := by
  intro n
  simp only [A004734, Nat.add_sub_cancel]

end A004734

/-! ## A004734.P7998679460263534274

`A000034(n)*A036069(n+2)`
-/

namespace A004734.P7998679460263534274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A036069 (n + 2)

end

end A004734.P7998679460263534274

namespace A004734

/-- `A000034(n)*A036069(n+2)` -/
def P7998679460263534274.Spec : Prop :=
  ∀ n, P7998679460263534274.a n = A004734 (n + 1)

end A004734

/-! ## A004734.P8688894629115178303

`A000034(n)²*A004730(n+1)`
-/

namespace A004734.P8688894629115178303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n ^ 2 * A004730 (n + 1)

end

end A004734.P8688894629115178303

namespace A004734

/-- `A000034(n)²*A004730(n+1)` -/
def P8688894629115178303.Spec : Prop :=
  ∀ n, P8688894629115178303.a n = A004734 (n + 1)

end A004734

/-! ## A004734.P7178770210900645764

`Δ[A008619(A008585(n))]*A036069(n+2)`
-/

namespace A004734.P7178770210900645764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A008585 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A036069 (n + 2)

end

end A004734.P7178770210900645764

namespace A004734

/-- `Δ[A008619(A008585(n))]*A036069(n+2)` -/
def P7178770210900645764.Spec : Prop :=
  ∀ n, P7178770210900645764.a n = A004734 (n + 1)

end A004734

/-!
# A004735: Denominator of average distance traveled by n-dimensional fly.

The programs for A004735, the canonical program `A004735.P16541191645354368629` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004735 has offset 1).

The definition of A004735 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004735.P16541191645354368629

`A004731(n+3)/gcd(2, n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A004735

/-- `A004731(n+3)/gcd(2, n)` -/
def P16541191645354368629.Spec : Prop :=
  ∀ n, P16541191645354368629.a n = (A004735 (n + 1) : ℚ)

end A004735

/-! ## A004735.P12278120300182751413

`A004731(n+3)/Δ[A007494(n)]`
-/

namespace A004735.P12278120300182751413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004731 (n + 3) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A004735.P12278120300182751413

namespace A004735

/-- `A004731(n+3)/Δ[A007494(n)]` -/
def P12278120300182751413.Spec : Prop :=
  ∀ n, P12278120300182751413.a n = (A004735 (n + 1) : ℚ)

end A004735

/-! ## A004735.P15131716466969023330

`A004731(n+3)/A000034(n+1)`
-/

namespace A004735.P15131716466969023330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004731 (n + 3) : ℚ) / (A000034 (n + 1) : ℚ)

end

end A004735.P15131716466969023330

namespace A004735

/-- `A004731(n+3)/A000034(n+1)` -/
def P15131716466969023330.Spec : Prop :=
  ∀ n, P15131716466969023330.a n = (A004735 (n + 1) : ℚ)

end A004735

/-! ## A004735.P6739500259897721686

`A004731(n+3)/A006519(A326810(n))`
-/

namespace A004735.P6739500259897721686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004731 (n + 3) : ℚ) / (A006519 (A326810 n).toNat : ℚ)

end

end A004735.P6739500259897721686

namespace A004735

/-- `A004731(n+3)/A006519(A326810(n))` -/
def P6739500259897721686.Spec : Prop :=
  ∀ n, P6739500259897721686.a n = (A004735 (n + 1) : ℚ)

end A004735

/-! ## A004735.P15710616398323089115

`A004731(n+3)/((A018206(n)+1)%3)!`
-/

namespace A004735.P15710616398323089115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004731 (n + 3) : ℚ) / (Nat.factorial (Int.tmod (A018206 n + 1) 3).toNat : ℚ)

end

end A004735.P15710616398323089115

namespace A004735

/-- `A004731(n+3)/((A018206(n)+1)%3)!` -/
def P15710616398323089115.Spec : Prop :=
  ∀ n, P15710616398323089115.a n = (A004735 (n + 1) : ℚ)

end A004735

/-!
# A004736: Triangle read by rows: row n lists the first n positive integers in decreasing order.

The programs for A004736, the canonical program `A004736.P10337537277358081527` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004736 has offset 1).

The definition of A004736 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004736.P10482269026420710130

`row(n)+1-col(n)`
-/

namespace A004736.P10482269026420710130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)

end

end A004736.P10482269026420710130

namespace A004736

/-- `row(n)+1-col(n)` -/
def P10482269026420710130.Spec : Prop :=
  ∀ n, P10482269026420710130.a n = A004736 (n + 1)

end A004736

/-! ## A004736.P14315601485113646476

`C(floor(3/2+sqrt(2*(n+1))), 2)-(n+1)+1`
-/

namespace A004736.P14315601485113646476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ⌊((3 : ℚ) / 2 : ℝ) + Real.sqrt (2 * (n + 1) : ℝ)⌋.toNat 2 : ℤ) - (n + 1 : ℤ) + 1

end

end A004736.P14315601485113646476

namespace A004736

/-- `C(floor(3/2+sqrt(2*(n+1))), 2)-(n+1)+1` -/
def P14315601485113646476.Spec : Prop :=
  ∀ n, P14315601485113646476.a n = A004736 (n + 1)

end A004736

/-! ## A004736.P7229336007458957608

`(2-2*(n+1)+round(sqrt(2*(n+1)))+round(sqrt(2*(n+1)))²)/2`
-/

namespace A004736.P7229336007458957608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 - (2 * (n + 1) : ℤ) + SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) + SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 : ℚ) / 2

end

end A004736.P7229336007458957608

namespace A004736

/-- `(2-2*(n+1)+round(sqrt(2*(n+1)))+round(sqrt(2*(n+1)))²)/2` -/
def P7229336007458957608.Spec : Prop :=
  ∀ n, P7229336007458957608.a n = (A004736 (n + 1) : ℚ)

end A004736

/-! ## A004736.P1213754159836800553

`1+A025581(n)`
-/

namespace A004736.P1213754159836800553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A025581 n

end

end A004736.P1213754159836800553

namespace A004736

/-- `1+A025581(n)` -/
def P1213754159836800553.Spec : Prop :=
  ∀ n, P1213754159836800553.a n = A004736 (n + 1)

end A004736

/-! ## A004736.P10337537277358081527

`A000217(A002024(n+1))-n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004736

/-- `A000217(A002024(n+1))-n` -/
def P10337537277358081527.Spec : Prop :=
  ∀ n, P10337537277358081527.a n = A004736 (n + 1)

theorem P10337537277358081527.correct : P10337537277358081527.Spec := by
  intro n
  simp only [A004736, Nat.add_sub_cancel]

end A004736

/-! ## A004736.P7587828154699295032

`1+T(n-1,k)` with `a(0)=1`
-/

namespace A004736.P7587828154699295032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  1 + SequenceMachineLib.triUp a n

end

end A004736.P7587828154699295032

namespace A004736

/-- `1+T(n-1,k)` -/
def P7587828154699295032.Spec : Prop :=
  ∀ n, (P7587828154699295032.a n : ℤ) = A004736 (n + 1)

end A004736

/-! ## A004736.P12305021329683709794

`row(n)-(col(n)-1)`
-/

namespace A004736.P12305021329683709794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n : ℤ) - ((SequenceMachineLib.triCol n : ℤ) - 1)

end

end A004736.P12305021329683709794

namespace A004736

/-- `row(n)-(col(n)-1)` -/
def P12305021329683709794.Spec : Prop :=
  ∀ n, P12305021329683709794.a n = A004736 (n + 1)

end A004736

/-! ## A004736.P14349018910639017494

`C(comp[∑[n]]-n, 2)-n`
-/

namespace A004736.P14349018910639017494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n : ℤ)

end

end A004736.P14349018910639017494

namespace A004736

/-- `C(comp[∑[n]]-n, 2)-n` -/
def P14349018910639017494.Spec : Prop :=
  ∀ n, P14349018910639017494.a n = A004736 (n + 1)

end A004736

/-! ## A004736.P9674916551632688272

`((row(n)+1)*(col(n)+1))%(row(n)+2)`
-/

namespace A004736.P9674916551632688272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1) * (SequenceMachineLib.triCol n + 1) % (SequenceMachineLib.triRow n + 2)

end

end A004736.P9674916551632688272

namespace A004736

/-- `((row(n)+1)*(col(n)+1))%(row(n)+2)` -/
def P9674916551632688272.Spec : Prop :=
  ∀ n, (P9674916551632688272.a n : ℤ) = A004736 (n + 1)

end A004736

/-! ## A004736.P1044261695470159119

`ceil((∑[2*n]%(comp[∑[n]]+1)+1)/2)`
-/

namespace A004736.P1044261695470159119
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(((∑ j ∈ Finset.range (n + 1), f1 j) % (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) + 1 : ℕ) : ℚ) / 2⌉

end

end A004736.P1044261695470159119

namespace A004736

/-- `ceil((∑[2*n]%(comp[∑[n]]+1)+1)/2)` -/
def P1044261695470159119.Spec : Prop :=
  ∀ n, P1044261695470159119.a n = A004736 (n + 1)

end A004736

/-! ## A004736.P17163149487383271514

`C(comp[C(comp[3*n+4]-n, 2)]-n, 2)%(n+1)+1`
-/

namespace A004736.P17163149487383271514
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 % (n + 1) + 1

end

end A004736.P17163149487383271514

namespace A004736

/-- `C(comp[C(comp[3*n+4]-n, 2)]-n, 2)%(n+1)+1` -/
def P17163149487383271514.Spec : Prop :=
  ∀ n, (P17163149487383271514.a n : ℤ) = A004736 (n + 1)

end A004736

/-! ## A004736.P6717828602024882472

`sqrt(A055461(n+1))`
-/

namespace A004736.P6717828602024882472
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055461 (n + 1) : ℝ)

end

end A004736.P6717828602024882472

namespace A004736

/-- `sqrt(A055461(n+1))` -/
def P6717828602024882472.Spec : Prop :=
  ∀ n, P6717828602024882472.a n = (A004736 (n + 1) : ℝ)

end A004736

/-! ## A004736.P2928825851893826217

`log2(A090988(n+1))`
-/

namespace A004736.P2928825851893826217
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A090988 (n + 1) : ℝ)

end

end A004736.P2928825851893826217

namespace A004736

/-- `log2(A090988(n+1))` -/
def P2928825851893826217.Spec : Prop :=
  ∀ n, P2928825851893826217.a n = (A004736 (n + 1) : ℝ)

end A004736

/-! ## A004736.P14119345643707533474

`log2(A130330(n)+1)`
-/

namespace A004736.P14119345643707533474
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A130330 n + 1 : ℝ)

end

end A004736.P14119345643707533474

namespace A004736

/-- `log2(A130330(n)+1)` -/
def P14119345643707533474.Spec : Prop :=
  ∀ n, P14119345643707533474.a n = (A004736 (n + 1) : ℝ)

end A004736

/-! ## A004736.P4780728085980651878

`ceil(A099375(n)/2)`
-/

namespace A004736.P4780728085980651878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / 2⌉

end

end A004736.P4780728085980651878

namespace A004736

/-- `ceil(A099375(n)/2)` -/
def P4780728085980651878.Spec : Prop :=
  ∀ n, P4780728085980651878.a n = A004736 (n + 1)

end A004736

/-! ## A004736.P12566508503019912859

`1-∑[A167407(n)]`
-/

namespace A004736.P12566508503019912859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004736.P12566508503019912859

namespace A004736

/-- `1-∑[A167407(n)]` -/
def P12566508503019912859.Spec : Prop :=
  ∀ n, P12566508503019912859.a n = A004736 (n + 1)

end A004736

/-! ## A004736.P14226225361871415158

`val(A043569(n+1), 2)`
-/

namespace A004736.P14226225361871415158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A043569 (n + 1)).toNat 2

end

end A004736.P14226225361871415158

namespace A004736

/-- `val(A043569(n+1), 2)` -/
def P14226225361871415158.Spec : Prop :=
  ∀ n, (P14226225361871415158.a n : ℤ) = A004736 (n + 1)

end A004736

/-! ## A004736.P11472962965129020049

`val(A081954(n+1), 2)`
-/

namespace A004736.P11472962965129020049
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A081954 (n + 1)).toNat 2

end

end A004736.P11472962965129020049

namespace A004736

/-- `val(A081954(n+1), 2)` -/
def P11472962965129020049.Spec : Prop :=
  ∀ n, (P11472962965129020049.a n : ℤ) = A004736 (n + 1)

end A004736

/-! ## A004736.P4503708503749872523

`val(A118586(n+1), 2)`
-/

namespace A004736.P4503708503749872523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A118586 (n + 1)).toNat 2

end

end A004736.P4503708503749872523

namespace A004736

/-- `val(A118586(n+1), 2)` -/
def P4503708503749872523.Spec : Prop :=
  ∀ n, (P4503708503749872523.a n : ℤ) = A004736 (n + 1)

end A004736

/-! ## A004736.P16161773772872345786

`A000463(A099375(n))`
-/

namespace A004736.P16161773772872345786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A099375 n).toNat

end

end A004736.P16161773772872345786

namespace A004736

/-- `A000463(A099375(n))` -/
def P16161773772872345786.Spec : Prop :=
  ∀ n, P16161773772872345786.a n = A004736 (n + 1)

end A004736

/-!
# A004737: Concatenation of sequences (1,2,...,n-1,n,n-1,...,1) for n >= 1.

The programs for A004737, the canonical program `A004737.P12416270940268694316` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004737 has offset 1).

The definition of A004737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004737.P8740814374672022318

`root(A133823(n), 3)`
-/

namespace A004737.P8740814374672022318
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A133823 n : ℝ) ^ (1 / (3 : ℝ))

end

end A004737.P8740814374672022318

namespace A004737

/-- `root(A133823(n), 3)` -/
def P8740814374672022318.Spec : Prop :=
  ∀ n, P8740814374672022318.a n = (A004737 (n + 1) : ℝ)

end A004737

/-! ## A004737.P13636779814687461525

`sqrt(sqrt(A133824(n)))`
-/

namespace A004737.P13636779814687461525
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (Real.sqrt (A133824 n : ℝ))

end

end A004737.P13636779814687461525

namespace A004737

/-- `sqrt(sqrt(A133824(n)))` -/
def P13636779814687461525.Spec : Prop :=
  ∀ n, P13636779814687461525.a n = (A004737 (n + 1) : ℝ)

end A004737

/-! ## A004737.P11006148308089059481

`sqrt(A124258(n+1))`
-/

namespace A004737.P11006148308089059481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A124258 (n + 1) : ℝ)

end

end A004737.P11006148308089059481

namespace A004737

/-- `sqrt(A124258(n+1))` -/
def P11006148308089059481.Spec : Prop :=
  ∀ n, P11006148308089059481.a n = (A004737 (n + 1) : ℝ)

end A004737

/-! ## A004737.P13767946687851944016

`∑[char[n²]]-A053615(n)`
-/

namespace A004737.P13767946687851944016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A053615 n

end

end A004737.P13767946687851944016

namespace A004737

/-- `∑[char[n²]]-A053615(n)` -/
def P13767946687851944016.Spec : Prop :=
  ∀ n, P13767946687851944016.a n = A004737 (n + 1)

end A004737

/-! ## A004737.P1068599551885435535

`A002024(A133825(n))`
-/

namespace A004737.P1068599551885435535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A133825 n).toNat

end

end A004737.P1068599551885435535

namespace A004737

/-- `A002024(A133825(n))` -/
def P1068599551885435535.Spec : Prop :=
  ∀ n, P1068599551885435535.a n = A004737 (n + 1)

end A004737

/-! ## A004737.P12416270940268694316

`A053615(A028391(n))+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004737

/-- `A053615(A028391(n))+1` -/
def P12416270940268694316.Spec : Prop :=
  ∀ n, P12416270940268694316.a n = A004737 (n + 1)

theorem P12416270940268694316.correct : P12416270940268694316.Spec := by
  intro n
  simp only [A004737, Nat.add_sub_cancel]

end A004737

/-! ## A004737.P12508583188659039457

`A003056(A133825(n)+1)`
-/

namespace A004737.P12508583188659039457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A133825 n + 1).toNat

end

end A004737.P12508583188659039457

namespace A004737

/-- `A003056(A133825(n)+1)` -/
def P12508583188659039457.Spec : Prop :=
  ∀ n, P12508583188659039457.a n = A004737 (n + 1)

end A004737

/-! ## A004737.P13463507309816379432

`A007318(A133825(n)+1)`
-/

namespace A004737.P13463507309816379432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A133825 n + 1).toNat

end

end A004737.P13463507309816379432

namespace A004737

/-- `A007318(A133825(n)+1)` -/
def P13463507309816379432.Spec : Prop :=
  ∀ n, P13463507309816379432.a n = A004737 (n + 1)

end A004737

/-! ## A004737.P10004029773782816590

`A053615(A173517(n))+1`
-/

namespace A004737.P10004029773782816590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A173517 n).toNat + 1

end

end A004737.P10004029773782816590

namespace A004737

/-- `A053615(A173517(n))+1` -/
def P10004029773782816590.Spec : Prop :=
  ∀ n, P10004029773782816590.a n = A004737 (n + 1)

end A004737

/-! ## A004737.P4118227895558629994

`A004736(A133825(n)+2)`
-/

namespace A004737.P4118227895558629994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A133825 n + 2).toNat

end

end A004737.P4118227895558629994

namespace A004737

/-- `A004736(A133825(n)+2)` -/
def P4118227895558629994.Spec : Prop :=
  ∀ n, P4118227895558629994.a n = A004737 (n + 1)

end A004737

/-! ## A004737.P3144955139956888122

`A115262(A133825(n)-1)`
-/

namespace A004737.P3144955139956888122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115262 (A133825 n - 1).toNat

end

end A004737.P3144955139956888122

namespace A004737

/-- `A115262(A133825(n)-1)` -/
def P3144955139956888122.Spec : Prop :=
  ∀ n, P3144955139956888122.a n = A004737 (n + 1)

end A004737

/-! ## A004737.P7852098984822404628

`A267708(n)+A053188(n)`
-/

namespace A004737.P7852098984822404628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267708 n + A053188 n

end

end A004737.P7852098984822404628

namespace A004737

/-- `A267708(n)+A053188(n)` -/
def P7852098984822404628.Spec : Prop :=
  ∀ n, P7852098984822404628.a n = A004737 (n + 1)

end A004737

/-! ## A004737.P5069826794251030914

`A133824(n)/A133823(n)`
-/

namespace A004737.P5069826794251030914
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133824 n : ℚ) / (A133823 n : ℚ)

end

end A004737.P5069826794251030914

namespace A004737

/-- `A133824(n)/A133823(n)` -/
def P5069826794251030914.Spec : Prop :=
  ∀ n, P5069826794251030914.a n = (A004737 (n + 1) : ℚ)

end A004737

/-! ## A004737.P8292118165399832601

`A053188(A023969(n)+n)+1`
-/

namespace A004737.P8292118165399832601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A023969 n + (n : ℤ)).toNat + 1

end

end A004737.P8292118165399832601

namespace A004737

/-- `A053188(A023969(n)+n)+1` -/
def P8292118165399832601.Spec : Prop :=
  ∀ n, P8292118165399832601.a n = A004737 (n + 1)

end A004737

/-! ## A004737.P3859421471403906092

`A000196(n)+1-A053615(n)`
-/

namespace A004737.P3859421471403906092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 n + (1 - A053615 n)

end

end A004737.P3859421471403906092

namespace A004737

/-- `A000196(n)+1-A053615(n)` -/
def P3859421471403906092.Spec : Prop :=
  ∀ n, P3859421471403906092.a n = A004737 (n + 1)

end A004737

/-! ## A004737.P18304007651820050204

`A209302(n+1)-A000196(n)`
-/

namespace A004737.P18304007651820050204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209302 (n + 1) - A000196 n

end

end A004737.P18304007651820050204

namespace A004737

/-- `A209302(n+1)-A000196(n)` -/
def P18304007651820050204.Spec : Prop :=
  ∀ n, P18304007651820050204.a n = A004737 (n + 1)

end A004737

/-! ## A004737.P17913075327096615776

`A053188(n)-(A023969(n)-1)`
-/

namespace A004737.P17913075327096615776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 n - (A023969 n - 1)

end

end A004737.P17913075327096615776

namespace A004737

/-- `A053188(n)-(A023969(n)-1)` -/
def P17913075327096615776.Spec : Prop :=
  ∀ n, P17913075327096615776.a n = A004737 (n + 1)

end A004737

/-! ## A004737.P14557979899931959095

`A133823(n)/A124258(n+1)`
-/

namespace A004737.P14557979899931959095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133823 n : ℚ) / (A124258 (n + 1) : ℚ)

end

end A004737.P14557979899931959095

namespace A004737

/-- `A133823(n)/A124258(n+1)` -/
def P14557979899931959095.Spec : Prop :=
  ∀ n, P14557979899931959095.a n = (A004737 (n + 1) : ℚ)

end A004737

/-! ## A004737.P1522711246030142958

`A003056(A133825(2*n-n))`
-/

namespace A004737.P1522711246030142958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A133825 (2 * n - n)).toNat

end

end A004737.P1522711246030142958

namespace A004737

/-- `A003056(A133825(2*n-n))` -/
def P1522711246030142958.Spec : Prop :=
  ∀ n, P1522711246030142958.a n = A004737 (n + 1)

end A004737

/-! ## A004737.P15893326827017278480

`A004741(A124258(n+1)+1)/2`
-/

namespace A004737.P15893326827017278480
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004741 (A124258 (n + 1) + 1).toNat : ℚ) / 2

end

end A004737.P15893326827017278480

namespace A004737

/-- `A004741(A124258(n+1)+1)/2` -/
def P15893326827017278480.Spec : Prop :=
  ∀ n, P15893326827017278480.a n = (A004737 (n + 1) : ℚ)

end A004737

/-!
# A004738: Concatenation of sequences (1,2,...,n-1,n,n-1,...,2) for n >= 2.

The programs for A004738, the canonical program `A004738.P14536175895228732731` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004738 has offset 1).

The definition of A004738 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004738.P14536175895228732731

`floor(sqrt(n+1)+1/2)+1-abs(n-floor(sqrt(n+1)+1/2)²)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004738

/-- `floor(sqrt(n+1)+1/2)+1-abs(n-floor(sqrt(n+1)+1/2)²)` -/
def P14536175895228732731.Spec : Prop :=
  ∀ n, P14536175895228732731.a n = A004738 (n + 1)

theorem P14536175895228732731.correct : P14536175895228732731.Spec := by
  intro n
  simp only [A004738, Nat.add_sub_cancel]

end A004738

/-! ## A004738.P7066381939621445528

`ceil((A004741(n+1)+1)/2)`
-/

namespace A004738.P7066381939621445528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004741 (n + 1) + 1 : ℚ) / 2⌉

end

end A004738.P7066381939621445528

namespace A004738

/-- `ceil((A004741(n+1)+1)/2)` -/
def P7066381939621445528.Spec : Prop :=
  ∀ n, P7066381939621445528.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P15833495273594254316

`A080513(A253580(n))`
-/

namespace A004738.P15833495273594254316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A253580 n).toNat

end

end A004738.P15833495273594254316

namespace A004738

/-- `A080513(A253580(n))` -/
def P15833495273594254316.Spec : Prop :=
  ∀ n, P15833495273594254316.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P11984376699209587533

`A014430(A380763(n))`
-/

namespace A004738.P11984376699209587533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014430 (A380763 n).toNat

end

end A004738.P11984376699209587533

namespace A004738

/-- `A014430(A380763(n))` -/
def P11984376699209587533.Spec : Prop :=
  ∀ n, P11984376699209587533.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P15066560320519364858

`A008619(A004741(n+1))`
-/

namespace A004738.P15066560320519364858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004741 (n + 1)).toNat

end

end A004738.P15066560320519364858

namespace A004738

/-- `A008619(A004741(n+1))` -/
def P15066560320519364858.Spec : Prop :=
  ∀ n, P15066560320519364858.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P5186756299337507529

`A008619(A253580(n)+1)`
-/

namespace A004738.P5186756299337507529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A253580 n + 1).toNat

end

end A004738.P5186756299337507529

namespace A004738

/-- `A008619(A253580(n)+1)` -/
def P5186756299337507529.Spec : Prop :=
  ∀ n, P5186756299337507529.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P1974288005410331116

`A008619(2*A053615(n))`
-/

namespace A004738.P1974288005410331116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A053615 n).toNat

end

end A004738.P1974288005410331116

namespace A004738

/-- `A008619(2*A053615(n))` -/
def P1974288005410331116.Spec : Prop :=
  ∀ n, P1974288005410331116.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P13468161214701413941

`A003059(A196199(n)²+1)`
-/

namespace A004738.P13468161214701413941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A196199 n ^ 2 + 1).toNat

end

end A004738.P13468161214701413941

namespace A004738

/-- `A003059(A196199(n)²+1)` -/
def P13468161214701413941.Spec : Prop :=
  ∀ n, P13468161214701413941.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P6661787796709169096

`A053218(A000124(A053615(n)))`
-/

namespace A004738.P6661787796709169096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053218 (A000124 (A053615 n).toNat).toNat

end

end A004738.P6661787796709169096

namespace A004738

/-- `A053218(A000124(A053615(n)))` -/
def P6661787796709169096.Spec : Prop :=
  ∀ n, P6661787796709169096.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P8143789823637923176

`A004737(A164386(n+1))`
-/

namespace A004738.P8143789823637923176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A164386 (n + 1)).toNat

end

end A004738.P8143789823637923176

namespace A004738

/-- `A004737(A164386(n+1))` -/
def P8143789823637923176.Spec : Prop :=
  ∀ n, P8143789823637923176.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P8209876391975054453

`A004737(A000037(n+1))`
-/

namespace A004738.P8209876391975054453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A000037 (n + 1)).toNat

end

end A004738.P8209876391975054453

namespace A004738

/-- `A004737(A000037(n+1))` -/
def P8209876391975054453.Spec : Prop :=
  ∀ n, P8209876391975054453.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P13834564245592456329

`A004737(A164514(n+2))`
-/

namespace A004738.P13834564245592456329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (A164514 (n + 2)).toNat

end

end A004738.P13834564245592456329

namespace A004738

/-- `A004737(A164514(n+2))` -/
def P13834564245592456329.Spec : Prop :=
  ∀ n, P13834564245592456329.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P1335752888719592841

`A004739(A080037(n))`
-/

namespace A004738.P1335752888719592841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A080037 n).toNat

end

end A004738.P1335752888719592841

namespace A004738

/-- `A004739(A080037(n))` -/
def P1335752888719592841.Spec : Prop :=
  ∀ n, P1335752888719592841.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P8201553195888022388

`A004739(A049068(n+1))`
-/

namespace A004738.P8201553195888022388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (A049068 (n + 1)).toNat

end

end A004738.P8201553195888022388

namespace A004738

/-- `A004739(A049068(n+1))` -/
def P8201553195888022388.Spec : Prop :=
  ∀ n, P8201553195888022388.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P13751103758566595362

`A053188(A161827(n+1))`
-/

namespace A004738.P13751103758566595362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A161827 (n + 1)).toNat

end

end A004738.P13751103758566595362

namespace A004738

/-- `A053188(A161827(n+1))` -/
def P13751103758566595362.Spec : Prop :=
  ∀ n, P13751103758566595362.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P7751206590648922343

`A053615(A265412(n))`
-/

namespace A004738.P7751206590648922343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A265412 n).toNat

end

end A004738.P7751206590648922343

namespace A004738

/-- `A053615(A265412(n))` -/
def P7751206590648922343.Spec : Prop :=
  ∀ n, P7751206590648922343.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P16868537153306028283

`A000005(A082693(n))`
-/

namespace A004738.P16868537153306028283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A082693 n).toNat

end

end A004738.P16868537153306028283

namespace A004738

/-- `A000005(A082693(n))` -/
def P16868537153306028283.Spec : Prop :=
  ∀ n, P16868537153306028283.a n = A004738 (n + 1)

end A004738

/-! ## A004738.P14302199895481840714

`A331084(A049997(n+1))`
-/

namespace A004738.P14302199895481840714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331084 (A049997 (n + 1)).toNat

end

end A004738.P14302199895481840714

namespace A004738

/-- `A331084(A049997(n+1))` -/
def P14302199895481840714.Spec : Prop :=
  ∀ n, P14302199895481840714.a n = A004738 (n + 1)

end A004738

/-!
# A004739: Concatenation of sequences (1,2,2,...,n-1,n-1,n,n,n-1,n-1,...,2,2,1) for n >= 1.

The programs for A004739, the canonical program `A004739.P530599446870545718` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004739 has offset 1).

The definition of A004739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004739.P4229500543889424026

`floor(A253580(n)/2)+1`
-/

namespace A004739.P4229500543889424026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A253580 n : ℚ) / 2⌋ + 1

end

end A004739.P4229500543889424026

namespace A004739

/-- `floor(A253580(n)/2)+1` -/
def P4229500543889424026.Spec : Prop :=
  ∀ n, P4229500543889424026.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P17665832209321708697

`ceil(A004741(n+1)/2)`
-/

namespace A004739.P17665832209321708697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004741 (n + 1) : ℚ) / 2⌉

end

end A004739.P17665832209321708697

namespace A004739

/-- `ceil(A004741(n+1)/2)` -/
def P17665832209321708697.Spec : Prop :=
  ∀ n, P17665832209321708697.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P10048598979190301567

`A008619(A253580(n))`
-/

namespace A004739.P10048598979190301567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A253580 n).toNat

end

end A004739.P10048598979190301567

namespace A004739

/-- `A008619(A253580(n))` -/
def P10048598979190301567.Spec : Prop :=
  ∀ n, P10048598979190301567.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P530599446870545718

`A004737(A028391(n)+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004739

/-- `A004737(A028391(n)+1)` -/
def P530599446870545718.Spec : Prop :=
  ∀ n, P530599446870545718.a n = A004739 (n + 1)

theorem P530599446870545718.correct : P530599446870545718.Spec := by
  intro n
  simp only [A004739, Nat.add_sub_cancel]

end A004739

/-! ## A004739.P14736337329326954208

`A004738(A083479(n+1))`
-/

namespace A004739.P14736337329326954208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (A083479 (n + 1)).toNat

end

end A004739.P14736337329326954208

namespace A004739

/-- `A004738(A083479(n+1))` -/
def P14736337329326954208.Spec : Prop :=
  ∀ n, P14736337329326954208.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P15232007864169171821

`A110654(A253580(n)+1)`
-/

namespace A004739.P15232007864169171821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A253580 n + 1).toNat

end

end A004739.P15232007864169171821

namespace A004739

/-- `A110654(A253580(n)+1)` -/
def P15232007864169171821.Spec : Prop :=
  ∀ n, P15232007864169171821.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P15529157080935344828

`A118175(n)+A053615(n)`
-/

namespace A004739.P15529157080935344828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n + A053615 n

end

end A004739.P15529157080935344828

namespace A004739

/-- `A118175(n)+A053615(n)` -/
def P15529157080935344828.Spec : Prop :=
  ∀ n, P15529157080935344828.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P11577212478761304318

`A004526(A004741(n+1)+1)`
-/

namespace A004739.P11577212478761304318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004741 (n + 1) + 1).toNat

end

end A004739.P11577212478761304318

namespace A004739

/-- `A004526(A004741(n+1)+1)` -/
def P11577212478761304318.Spec : Prop :=
  ∀ n, P11577212478761304318.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P16337170513551997431

`A053188(A056847(n+1))+1`
-/

namespace A004739.P16337170513551997431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053188 (A056847 (n + 1)).toNat + 1

end

end A004739.P16337170513551997431

namespace A004739

/-- `A053188(A056847(n+1))+1` -/
def P16337170513551997431.Spec : Prop :=
  ∀ n, P16337170513551997431.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P428935374446591139

`A123108(A004741(n+1)+1)`
-/

namespace A004739.P428935374446591139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A004741 (n + 1) + 1).toNat

end

end A004739.P428935374446591139

namespace A004739

/-- `A123108(A004741(n+1)+1)` -/
def P428935374446591139.Spec : Prop :=
  ∀ n, P428935374446591139.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P4946254602040287802

`A008619(A004741(n+1)-1)`
-/

namespace A004739.P4946254602040287802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A004741 (n + 1) - 1).toNat

end

end A004739.P4946254602040287802

namespace A004739

/-- `A008619(A004741(n+1)-1)` -/
def P4946254602040287802.Spec : Prop :=
  ∀ n, P4946254602040287802.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P16579824428734694197

`A080513(A253580(n)+1)-1`
-/

namespace A004739.P16579824428734694197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A253580 n + 1).toNat - 1

end

end A004739.P16579824428734694197

namespace A004739

/-- `A080513(A253580(n)+1)-1` -/
def P16579824428734694197.Spec : Prop :=
  ∀ n, P16579824428734694197.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P15085376397815936342

`A002265(2*A253580(n))+1`
-/

namespace A004739.P15085376397815936342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A253580 n).toNat + 1

end

end A004739.P15085376397815936342

namespace A004739

/-- `A002265(2*A253580(n))+1` -/
def P15085376397815936342.Spec : Prop :=
  ∀ n, P15085376397815936342.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P16588666446673663133

`A004737(1-A000196(n)+n)`
-/

namespace A004739.P16588666446673663133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (1 - A000196 n + (n : ℤ)).toNat

end

end A004739.P16588666446673663133

namespace A004739

/-- `A004737(1-A000196(n)+n)` -/
def P16588666446673663133.Spec : Prop :=
  ∀ n, P16588666446673663133.a n = A004739 (n + 1)

theorem P16588666446673663133.correct : P16588666446673663133.Spec := by
  intro n
  simp only [A004739, Nat.add_sub_cancel, A004739.P16588666446673663133.a, A004739.P530599446870545718.a, A000196, A000196.P15434771586934192083.a, A004737, A004737.P12416270940268694316.a, A028391, A028391.P17198271841435315725.a, A053615, A053615.P2131948520812356575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004739

/-! ## A004739.P187109846848736865

`A004741(n+1)-A053615(n)`
-/

namespace A004739.P187109846848736865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004741 (n + 1) - A053615 n

end

end A004739.P187109846848736865

namespace A004739

/-- `A004741(n+1)-A053615(n)` -/
def P187109846848736865.Spec : Prop :=
  ∀ n, P187109846848736865.a n = A004739 (n + 1)

theorem P187109846848736865.correct : P187109846848736865.Spec := by
  intro n
  simp only [A004739, Nat.add_sub_cancel, A004739.P187109846848736865.a, A004739.P530599446870545718.a, A004737, A004737.P12416270940268694316.a, A004741, A004741.P8751127324978194226.a, A028391, A028391.P17198271841435315725.a, A053615, A053615.P2131948520812356575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004739

/-! ## A004739.P7452601291140361112

`A053615(n-A055086(n))+1`
-/

namespace A004739.P7452601291140361112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 ((n : ℤ) - A055086 n).toNat + 1

end

end A004739.P7452601291140361112

namespace A004739

/-- `A053615(n-A055086(n))+1` -/
def P7452601291140361112.Spec : Prop :=
  ∀ n, P7452601291140361112.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P8167697442612171529

`A000267(n)-A213088(n+1)`
-/

namespace A004739.P8167697442612171529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000267 n - A213088 (n + 1)

end

end A004739.P8167697442612171529

namespace A004739

/-- `A000267(n)-A213088(n+1)` -/
def P8167697442612171529.Spec : Prop :=
  ∀ n, P8167697442612171529.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P7977960456702843001

`A004738(n+1-A384688(n))`
-/

namespace A004739.P7977960456702843001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 ((n + 1 : ℤ) - A384688 n).toNat

end

end A004739.P7977960456702843001

namespace A004739

/-- `A004738(n+1-A384688(n))` -/
def P7977960456702843001.Spec : Prop :=
  ∀ n, P7977960456702843001.a n = A004739 (n + 1)

end A004739

/-! ## A004739.P18444212944286989253

`A004737(1-(A000196(n)-n))`
-/

namespace A004739.P18444212944286989253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004737 (1 - (A000196 n - (n : ℤ))).toNat

end

end A004739.P18444212944286989253

namespace A004739

/-- `A004737(1-(A000196(n)-n))` -/
def P18444212944286989253.Spec : Prop :=
  ∀ n, P18444212944286989253.a n = A004739 (n + 1)

theorem P18444212944286989253.correct : P18444212944286989253.Spec := by
  intro n
  simp only [A004739, Nat.add_sub_cancel, A004739.P18444212944286989253.a, A004739.P530599446870545718.a, A000196, A000196.P15434771586934192083.a, A004737, A004737.P12416270940268694316.a, A028391, A028391.P17198271841435315725.a, A053615, A053615.P2131948520812356575.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004739

/-! ## A004739.P880635492864047050

`A004738(2-A118175(n)+n)`
-/

namespace A004739.P880635492864047050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (2 - A118175 n + (n : ℤ)).toNat

end

end A004739.P880635492864047050

namespace A004739

/-- `A004738(2-A118175(n)+n)` -/
def P880635492864047050.Spec : Prop :=
  ∀ n, P880635492864047050.a n = A004739 (n + 1)

end A004739

/-!
# A004741: Concatenation of sequences (1,3,..,2n-1,2n,2n-2,..,2) for n >= 1.

The programs for A004741, the canonical program `A004741.P8751127324978194226` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004741 has offset 1).

The definition of A004741 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004741.P16435087232255449094

`A253580(n)+1`
-/

namespace A004741.P16435087232255449094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253580 n + 1

end

end A004741.P16435087232255449094

namespace A004741

/-- `A253580(n)+1` -/
def P16435087232255449094.Spec : Prop :=
  ∀ n, P16435087232255449094.a n = A004741 (n + 1)

theorem P16435087232255449094.correct : P16435087232255449094.Spec := by
  intro n
  simp only [A004741, Nat.add_sub_cancel, A004741.P16435087232255449094.a, A004741.P8751127324978194226.a, A004739, A004739.P530599446870545718.a, A053615, A053615.P2131948520812356575.a, A253580, A253580.P15714201682578060032.a, A004737, A004737.P12416270940268694316.a, A028391, A028391.P17198271841435315725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004741

/-! ## A004741.P11591899733280661171

`A170949(n+1)-floor(sqrt(n))²`
-/

namespace A004741.P11591899733280661171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170949 (n + 1) - (Nat.sqrt n ^ 2 : ℤ)

end

end A004741.P11591899733280661171

namespace A004741

/-- `A170949(n+1)-floor(sqrt(n))²` -/
def P11591899733280661171.Spec : Prop :=
  ∀ n, P11591899733280661171.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P4442087610373667004

`A253607(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A004741.P4442087610373667004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A253607 (n - 1) + a (n - 1)

end

end A004741.P4442087610373667004

namespace A004741

/-- `A253607(n-1)+a(n-1)` -/
def P4442087610373667004.Spec : Prop :=
  ∀ n, P4442087610373667004.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P12013693932121115046

`A071797(A170949(n+1))`
-/

namespace A004741.P12013693932121115046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071797 (A170949 (n + 1)).toNat

end

end A004741.P12013693932121115046

namespace A004741

/-- `A071797(A170949(n+1))` -/
def P12013693932121115046.Spec : Prop :=
  ∀ n, P12013693932121115046.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P5348997233111192248

`A008619(2*A253580(n))`
-/

namespace A004741.P5348997233111192248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A253580 n).toNat

end

end A004741.P5348997233111192248

namespace A004741

/-- `A008619(2*A253580(n))` -/
def P5348997233111192248.Spec : Prop :=
  ∀ n, P5348997233111192248.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P11596528215742464264

`A027656(2*A253580(n))`
-/

namespace A004741.P11596528215742464264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 (2 * A253580 n).toNat

end

end A004741.P11596528215742464264

namespace A004741

/-- `A027656(2*A253580(n))` -/
def P11596528215742464264.Spec : Prop :=
  ∀ n, P11596528215742464264.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P7670152364268584599

`A052938(2*A253580(n))`
-/

namespace A004741.P7670152364268584599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (2 * A253580 n).toNat

end

end A004741.P7670152364268584599

namespace A004741

/-- `A052938(2*A253580(n))` -/
def P7670152364268584599.Spec : Prop :=
  ∀ n, P7670152364268584599.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P12685089034556260100

`A080513(2*A253580(n))`
-/

namespace A004741.P12685089034556260100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (2 * A253580 n).toNat

end

end A004741.P12685089034556260100

namespace A004741

/-- `A080513(2*A253580(n))` -/
def P12685089034556260100.Spec : Prop :=
  ∀ n, P12685089034556260100.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P8751127324978194226

`A053615(n)+A004739(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A004741

/-- `A053615(n)+A004739(n+1)` -/
def P8751127324978194226.Spec : Prop :=
  ∀ n, P8751127324978194226.a n = A004741 (n + 1)

theorem P8751127324978194226.correct : P8751127324978194226.Spec := by
  intro n
  simp only [A004741, Nat.add_sub_cancel]

end A004741

/-! ## A004741.P11822346012985736354

`A118175(n)+2*A053615(n)`
-/

namespace A004741.P11822346012985736354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118175 n + 2 * A053615 n

end

end A004741.P11822346012985736354

namespace A004741

/-- `A118175(n)+2*A053615(n)` -/
def P11822346012985736354.Spec : Prop :=
  ∀ n, P11822346012985736354.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P11057391763222392936

`∑[A253607(n)]+1-A253607(n)`
-/

namespace A004741.P11057391763222392936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253607 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A253607 n)

end

end A004741.P11057391763222392936

namespace A004741

/-- `∑[A253607(n)]+1-A253607(n)` -/
def P11057391763222392936.Spec : Prop :=
  ∀ n, P11057391763222392936.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P850984122893869090

`A002522(n)-(n²-A253580(n))`
-/

namespace A004741.P850984122893869090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 n - ((n ^ 2 : ℤ) - A253580 n)

end

end A004741.P850984122893869090

namespace A004741

/-- `A002522(n)-(n²-A253580(n))` -/
def P850984122893869090.Spec : Prop :=
  ∀ n, P850984122893869090.a n = A004741 (n + 1)

theorem P850984122893869090.correct : P850984122893869090.Spec := by
  intro n
  simp only [A004741, Nat.add_sub_cancel, A004741.P850984122893869090.a, A004741.P8751127324978194226.a, A002522, A002522.P3778392011853271743.a, A004739, A004739.P530599446870545718.a, A053615, A053615.P2131948520812356575.a, A253580, A253580.P15714201682578060032.a, A004737, A004737.P12416270940268694316.a, A028391, A028391.P17198271841435315725.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004741

/-! ## A004741.P16447172264063894531

`2*A004739(n+1)-A118175(n)`
-/

namespace A004741.P16447172264063894531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A004739 (n + 1) - A118175 n

end

end A004741.P16447172264063894531

namespace A004741

/-- `2*A004739(n+1)-A118175(n)` -/
def P16447172264063894531.Spec : Prop :=
  ∀ n, P16447172264063894531.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P17194595146679630623

`A004738(n+1)+A004739(n+1)-1`
-/

namespace A004741.P17194595146679630623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004738 (n + 1) + (A004739 (n + 1) - 1)

end

end A004741.P17194595146679630623

namespace A004741

/-- `A004738(n+1)+A004739(n+1)-1` -/
def P17194595146679630623.Spec : Prop :=
  ∀ n, P17194595146679630623.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P16100627116060416058

`A109613(2*A253580(n))-A253580(n)`
-/

namespace A004741.P16100627116060416058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (2 * A253580 n).toNat - A253580 n

end

end A004741.P16100627116060416058

namespace A004741

/-- `A109613(2*A253580(n))-A253580(n)` -/
def P16100627116060416058.Spec : Prop :=
  ∀ n, P16100627116060416058.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P1963142089794800779

`A004739(n+1)-A196199(A196199(n)²)`
-/

namespace A004741.P1963142089794800779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004739 (n + 1) - A196199 (A196199 n ^ 2).toNat

end

end A004741.P1963142089794800779

namespace A004741

/-- `A004739(n+1)-A196199(A196199(n)²)` -/
def P1963142089794800779.Spec : Prop :=
  ∀ n, P1963142089794800779.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P9718753626341632803

`A053615(A079813(n+1)+n)+A004738(n+1)`
-/

namespace A004741.P9718753626341632803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A079813 (n + 1) + (n : ℤ)).toNat + A004738 (n + 1)

end

end A004741.P9718753626341632803

namespace A004741

/-- `A053615(A079813(n+1)+n)+A004738(n+1)` -/
def P9718753626341632803.Spec : Prop :=
  ∀ n, P9718753626341632803.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P11989285057812146642

`A003059(n+1)+A004739(n+1)-A004737(n+1)`
-/

namespace A004741.P11989285057812146642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (n + 1) + (A004739 (n + 1) - A004737 (n + 1))

end

end A004741.P11989285057812146642

namespace A004741

/-- `A003059(n+1)+A004739(n+1)-A004737(n+1)` -/
def P11989285057812146642.Spec : Prop :=
  ∀ n, P11989285057812146642.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P8280592944756641108

`A053615(n)+A053615(A118175(n)+n)`
-/

namespace A004741.P8280592944756641108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n + A053615 (A118175 n + (n : ℤ)).toNat

end

end A004741.P8280592944756641108

namespace A004741

/-- `A053615(n)+A053615(A118175(n)+n)` -/
def P8280592944756641108.Spec : Prop :=
  ∀ n, P8280592944756641108.a n = A004741 (n + 1)

end A004741

/-! ## A004741.P18399151044478232948

`A053615(n+1)+A079813(n+1)+A053615(n)`
-/

namespace A004741.P18399151044478232948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (n + 1) + (A079813 (n + 1) + A053615 n)

end

end A004741.P18399151044478232948

namespace A004741

/-- `A053615(n+1)+A079813(n+1)+A053615(n)` -/
def P18399151044478232948.Spec : Prop :=
  ∀ n, P18399151044478232948.a n = A004741 (n + 1)

end A004741

/-!
# A004742: Numbers whose binary expansion does not contain 101.

The programs for A004742, the canonical program `A004742.P10089023202117764181` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004742 has offset 1).

The definition of A004742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6079 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004742.P1217991642807496123

`comp[A004748(n+1)]`
-/

namespace A004742.P1217991642807496123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004748 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004742.P1217991642807496123

namespace A004742

/-- `comp[A004748(n+1)]` -/
def P1217991642807496123.Spec : Prop :=
  ∀ n, (P1217991642807496123.a n : ℤ) = A004742 (n + 1)

end A004742

/-! ## A004742.P10089023202117764181

`record[and(n, floor(n/2))]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004742

/-- `record[and(n, floor(n/2))]` -/
def P10089023202117764181.Spec : Prop :=
  ∀ n, P10089023202117764181.a n = A004742 (n + 1)

theorem P10089023202117764181.correct : P10089023202117764181.Spec := by
  intro n
  simp only [A004742, Nat.add_sub_cancel]

end A004742

/-! ## A004742.P10338027278785526574

`record[and(n, 2*n)/2]`
-/

namespace A004742.P10338027278785526574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land n (2 * n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004742.P10338027278785526574

namespace A004742

/-- `record[and(n, 2*n)/2]` -/
def P10338027278785526574.Spec : Prop :=
  ∀ n, P10338027278785526574.a n = (A004742 (n + 1) : ℚ)

end A004742

/-! ## A004742.P11835370570453846562

`record[and(n, n+2+n)]/2`
-/

namespace A004742.P11835370570453846562
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 2 + n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A004742.P11835370570453846562

namespace A004742

/-- `record[and(n, n+2+n)]/2` -/
def P11835370570453846562.Spec : Prop :=
  ∀ n, P11835370570453846562.a n = (A004742 (n + 1) : ℚ)

end A004742

/-! ## A004742.P6387897367805857015

`eq[A121262(n+2), A290260(2*n+1)]`
-/

namespace A004742.P6387897367805857015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121262 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290260 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004742.P6387897367805857015

namespace A004742

/-- `eq[A121262(n+2), A290260(2*n+1)]` -/
def P6387897367805857015.Spec : Prop :=
  ∀ n, (P6387897367805857015.a n : ℤ) = A004742 (n + 1)

end A004742

/-! ## A004742.P18429324121531235733

`eq[1, A337375(n)]`
-/

namespace A004742.P18429324121531235733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004742.P18429324121531235733

namespace A004742

/-- `eq[1, A337375(n)]` -/
def P18429324121531235733.Spec : Prop :=
  ∀ n, (P18429324121531235733.a n : ℤ) = A004742 (n + 1)

end A004742

/-! ## A004742.P3104668534480525703

`record[n-and(n, A003188(n))]`
-/

namespace A004742.P3104668534480525703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.land (n : ℤ) (A003188 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004742.P3104668534480525703

namespace A004742

/-- `record[n-and(n, A003188(n))]` -/
def P3104668534480525703.Spec : Prop :=
  ∀ n, P3104668534480525703.a n = A004742 (n + 1)

end A004742

/-! ## A004742.P15681187161532710002

`record[A318515(2*(n+1))/2]`
-/

namespace A004742.P15681187161532710002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A318515 (2 * (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004742.P15681187161532710002

namespace A004742

/-- `record[A318515(2*(n+1))/2]` -/
def P15681187161532710002.Spec : Prop :=
  ∀ n, P15681187161532710002.a n = (A004742 (n + 1) : ℚ)

end A004742

/-! ## A004742.P3690129666052543826

`record[A318518(record[A318515(n+1)])]`
-/

namespace A004742.P3690129666052543826
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318515 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318518 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004742.P3690129666052543826

namespace A004742

/-- `record[A318518(record[A318515(n+1)])]` -/
def P3690129666052543826.Spec : Prop :=
  ∀ n, P3690129666052543826.a n = A004742 (n + 1)

end A004742

/-! ## A004742.P7914954472430915592

`eq[A048728(A048728(n)/2), A048729(n)]`
-/

namespace A004742.P7914954472430915592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048728 (SequenceMachineLib.roundAway ((A048728 n : ℚ) / 2)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048729 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004742.P7914954472430915592

namespace A004742

/-- `eq[A048728(A048728(n)/2), A048729(n)]` -/
def P7914954472430915592.Spec : Prop :=
  ∀ n, (P7914954472430915592.a n : ℤ) = A004742 (n + 1)

end A004742

/-! ## A004742.P12624861459184877487

`record[(A283165(n)+n)/2]`
-/

namespace A004742.P12624861459184877487
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283165 n + (n : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004742.P12624861459184877487

namespace A004742

/-- `record[(A283165(n)+n)/2]` -/
def P12624861459184877487.Spec : Prop :=
  ∀ n, P12624861459184877487.a n = (A004742 (n + 1) : ℚ)

end A004742

/-! ## A004742.P2029322098855053715

`record[A213370(n)/2]`
-/

namespace A004742.P2029322098855053715
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213370 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004742.P2029322098855053715

namespace A004742

/-- `record[A213370(n)/2]` -/
def P2029322098855053715.Spec : Prop :=
  ∀ n, P2029322098855053715.a n = (A004742 (n + 1) : ℚ)

end A004742

/-! ## A004742.P5938184185402693902

`record[n-A292272(n)]`
-/

namespace A004742.P5938184185402693902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292272 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004742.P5938184185402693902

namespace A004742

/-- `record[n-A292272(n)]` -/
def P5938184185402693902.Spec : Prop :=
  ∀ n, P5938184185402693902.a n = A004742 (n + 1)

theorem P5938184185402693902.correct : P5938184185402693902.Spec := by
  intro n
  simp only [A004742, Nat.add_sub_cancel, A004742.P5938184185402693902.f1, A004742.P5938184185402693902.a, A004742.P10089023202117764181.f1, A004742.P10089023202117764181.a, A292272, A292272.P5703236082678816393.a, A048735, A048735.P2863035607821774679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004742

/-! ## A004742.P5630559360537382731

`eq[A005940(n+1), A337376(n)]`
-/

namespace A004742.P5630559360537382731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005940 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337376 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004742.P5630559360537382731

namespace A004742

/-- `eq[A005940(n+1), A337376(n)]` -/
def P5630559360537382731.Spec : Prop :=
  ∀ n, (P5630559360537382731.a n : ℤ) = A004742 (n + 1)

end A004742

/-! ## A004742.P462938985000050617

`record[A048735(n)]`
-/

namespace A004742.P462938985000050617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004742.P462938985000050617

namespace A004742

/-- `record[A048735(n)]` -/
def P462938985000050617.Spec : Prop :=
  ∀ n, P462938985000050617.a n = A004742 (n + 1)

theorem P462938985000050617.correct : P462938985000050617.Spec := by
  intro n
  simp only [A004742, Nat.add_sub_cancel, A004742.P462938985000050617.f1, A004742.P462938985000050617.a, A004742.P10089023202117764181.f1, A004742.P10089023202117764181.a, A048735, A048735.P2863035607821774679.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004742

/-! ## A004742.P12314354991552357168

`record[A048728(n)/4]`
-/

namespace A004742.P12314354991552357168
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048728 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004742.P12314354991552357168

namespace A004742

/-- `record[A048728(n)/4]` -/
def P12314354991552357168.Spec : Prop :=
  ∀ n, P12314354991552357168.a n = (A004742 (n + 1) : ℚ)

end A004742

/-! ## A004742.P7389866069967094686

`record[n-A213064(n)/2]`
-/

namespace A004742.P7389866069967094686
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) - (A213064 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004742.P7389866069967094686

namespace A004742

/-- `record[n-A213064(n)/2]` -/
def P7389866069967094686.Spec : Prop :=
  ∀ n, P7389866069967094686.a n = (A004742 (n + 1) : ℚ)

end A004742

/-! ## A004742.P10996688144890118801

`record[(n-A229763(n))/2]`
-/

namespace A004742.P10996688144890118801
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A229763 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004742.P10996688144890118801

namespace A004742

/-- `record[(n-A229763(n))/2]` -/
def P10996688144890118801.Spec : Prop :=
  ∀ n, P10996688144890118801.a n = (A004742 (n + 1) : ℚ)

end A004742

/-! ## A004742.P6693122202388206373

`record[A004526(n)-A229762(n)]`
-/

namespace A004742.P6693122202388206373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n - A229762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004742.P6693122202388206373

namespace A004742

/-- `record[A004526(n)-A229762(n)]` -/
def P6693122202388206373.Spec : Prop :=
  ∀ n, P6693122202388206373.a n = A004742 (n + 1)

end A004742

/-!
# A004743: Numbers whose binary expansion does not contain 110.

The programs for A004743, the canonical program `A004743.P16445629935829361522` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004743 has offset 1).

The definition of A004743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6763 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004743.P16445629935829361522

`record[and(n, xor(2*n+1, n+1))]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004743

/-- `record[and(n, xor(2*n+1, n+1))]` -/
def P16445629935829361522.Spec : Prop :=
  ∀ n, (P16445629935829361522.a n : ℤ) = A004743 (n + 1)

theorem P16445629935829361522.correct : P16445629935829361522.Spec := by
  intro n
  simp only [A004743, Nat.add_sub_cancel]

end A004743

/-! ## A004743.P3252546223259456069

`eq[0, and(2*n, and(n, n+1))]`
-/

namespace A004743.P3252546223259456069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (2 * n) (Nat.land n (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004743.P3252546223259456069

namespace A004743

/-- `eq[0, and(2*n, and(n, n+1))]` -/
def P3252546223259456069.Spec : Prop :=
  ∀ n, (P3252546223259456069.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P969937180717085464

`eq[0, and(n, and(n, n+1)/2)]`
-/

namespace A004743.P969937180717085464
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (SequenceMachineLib.roundAway ((Nat.land n (n + 1) : ℚ) / 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004743.P969937180717085464

namespace A004743

/-- `eq[0, and(n, and(n, n+1)/2)]` -/
def P969937180717085464.Spec : Prop :=
  ∀ n, (P969937180717085464.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P925924545531306914

`lt[and(n+1, and(n, 2*n)), 4]`
-/

namespace A004743.P925924545531306914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (Nat.land n (2 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004743.P925924545531306914

namespace A004743

/-- `lt[and(n+1, and(n, 2*n)), 4]` -/
def P925924545531306914.Spec : Prop :=
  ∀ n, (P925924545531306914.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P8917457242496752056

`eq[0, and(n+1, and(n, n+1)+n)]`
-/

namespace A004743.P8917457242496752056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (n + 1) (Nat.land n (n + 1) + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004743.P8917457242496752056

namespace A004743

/-- `eq[0, and(n+1, and(n, n+1)+n)]` -/
def P8917457242496752056.Spec : Prop :=
  ∀ n, (P8917457242496752056.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P11490529225422710497

`eq[0, and(and(n, 2*n-(n-1)), 2*n)]`
-/

namespace A004743.P11490529225422710497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Int.land (n : ℤ) ((2 * n : ℤ) - ((n : ℤ) - 1))) (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004743.P11490529225422710497

namespace A004743

/-- `eq[0, and(and(n, 2*n-(n-1)), 2*n)]` -/
def P11490529225422710497.Spec : Prop :=
  ∀ n, (P11490529225422710497.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P3455544672469215738

`comp[A004749(n+1)]`
-/

namespace A004743.P3455544672469215738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004743.P3455544672469215738

namespace A004743

/-- `comp[A004749(n+1)]` -/
def P3455544672469215738.Spec : Prop :=
  ∀ n, (P3455544672469215738.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P16031751087978971334

`eq[2, A006530(and(n, 2*n)+2)]`
-/

namespace A004743.P16031751087978971334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.land n (2 * n) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004743.P16031751087978971334

namespace A004743

/-- `eq[2, A006530(and(n, 2*n)+2)]` -/
def P16031751087978971334.Spec : Prop :=
  ∀ n, (P16031751087978971334.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P1956355875926141007

`eq[A213370(A213370(n)+1), A213370(n)]`
-/

namespace A004743.P1956355875926141007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213370 (A213370 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213370 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004743.P1956355875926141007

namespace A004743

/-- `eq[A213370(A213370(n)+1), A213370(n)]` -/
def P1956355875926141007.Spec : Prop :=
  ∀ n, (P1956355875926141007.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P17680939254052134813

`eq[A115362(n), A278161(n)]`
-/

namespace A004743.P17680939254052134813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115362 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278161 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004743.P17680939254052134813

namespace A004743

/-- `eq[A115362(n), A278161(n)]` -/
def P17680939254052134813.Spec : Prop :=
  ∀ n, (P17680939254052134813.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P2447102693393253065

`eq[A292272(n), A319409(n)]`
-/

namespace A004743.P2447102693393253065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319409 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004743.P2447102693393253065

namespace A004743

/-- `eq[A292272(n), A319409(n)]` -/
def P2447102693393253065.Spec : Prop :=
  ∀ n, (P2447102693393253065.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P3665887831094045915

`eq[2, A014963(and(n, 2*n)+2)]`
-/

namespace A004743.P3665887831094045915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.land n (2 * n) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004743.P3665887831094045915

namespace A004743

/-- `eq[2, A014963(and(n, 2*n)+2)]` -/
def P3665887831094045915.Spec : Prop :=
  ∀ n, (P3665887831094045915.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P6288417327904489366

`record[or(n, n-A020987(n))]`
-/

namespace A004743.P6288417327904489366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ((n : ℤ) - A020987 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004743.P6288417327904489366

namespace A004743

/-- `record[or(n, n-A020987(n))]` -/
def P6288417327904489366.Spec : Prop :=
  ∀ n, P6288417327904489366.a n = A004743 (n + 1)

end A004743

/-! ## A004743.P13804137567679249433

`lt[and(n+1, A048735(n)), 1]`
-/

namespace A004743.P13804137567679249433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A048735 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004743.P13804137567679249433

namespace A004743

/-- `lt[and(n+1, A048735(n)), 1]` -/
def P13804137567679249433.Spec : Prop :=
  ∀ n, (P13804137567679249433.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P11686932805982313987

`lt[A014081(A025480(n)), 1]`
-/

namespace A004743.P11686932805982313987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (A025480 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004743.P11686932805982313987

namespace A004743

/-- `lt[A014081(A025480(n)), 1]` -/
def P11686932805982313987.Spec : Prop :=
  ∀ n, (P11686932805982313987.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P3996758951254337161

`eq[A033264(n), A048881(n)]`
-/

namespace A004743.P3996758951254337161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004743.P3996758951254337161

namespace A004743

/-- `eq[A033264(n), A048881(n)]` -/
def P3996758951254337161.Spec : Prop :=
  ∀ n, (P3996758951254337161.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P13669792669771321342

`eq[A048735(n), A318921(n)]`
-/

namespace A004743.P13669792669771321342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004743.P13669792669771321342

namespace A004743

/-- `eq[A048735(n), A318921(n)]` -/
def P13669792669771321342.Spec : Prop :=
  ∀ n, (P13669792669771321342.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P1537658994322688099

`eq[A318921(n), A348710(n)]`
-/

namespace A004743.P1537658994322688099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348710 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004743.P1537658994322688099

namespace A004743

/-- `eq[A318921(n), A348710(n)]` -/
def P1537658994322688099.Spec : Prop :=
  ∀ n, (P1537658994322688099.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P14967347129340579576

`lt[A000593(A048735(n)+1), 2]`
-/

namespace A004743.P14967347129340579576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A048735 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004743.P14967347129340579576

namespace A004743

/-- `lt[A000593(A048735(n)+1), 2]` -/
def P14967347129340579576.Spec : Prop :=
  ∀ n, (P14967347129340579576.a n : ℤ) = A004743 (n + 1)

end A004743

/-! ## A004743.P2069343529133213855

`lt[A284580(A104594(n+1)), 2]`
-/

namespace A004743.P2069343529133213855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284580 (A104594 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004743.P2069343529133213855

namespace A004743

/-- `lt[A284580(A104594(n+1)), 2]` -/
def P2069343529133213855.Spec : Prop :=
  ∀ n, (P2069343529133213855.a n : ℤ) = A004743 (n + 1)

end A004743

/-!
# A004744: Numbers whose binary expansion does not contain 011.

The programs for A004744, the canonical program `A004744.P6912464850986212728` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004744 has offset 1).

The definition of A004744 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2569 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004744.P17924757683620374416

`comp[A004750(n+1)]`
-/

namespace A004744.P17924757683620374416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004750 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004744.P17924757683620374416

namespace A004744

/-- `comp[A004750(n+1)]` -/
def P17924757683620374416.Spec : Prop :=
  ∀ n, (P17924757683620374416.a n : ℤ) = A004744 (n + 1)

end A004744

/-! ## A004744.P6912464850986212728

`eq[1, A132971(A087734(n))²]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A004744

/-- `eq[1, A132971(A087734(n))²]` -/
def P6912464850986212728.Spec : Prop :=
  ∀ n, (P6912464850986212728.a n : ℤ) = A004744 (n + 1)

theorem P6912464850986212728.correct : P6912464850986212728.Spec := by
  intro n
  simp only [A004744, Nat.add_sub_cancel]

end A004744

/-! ## A004744.P10908672457546147127

`eq[n+1, (n+1)*a(A056977(n))]` with `a(0)=1`
-/

namespace A004744.P10908672457546147127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f2 =>
  (n + 1) * f2 (A056977 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004744.P10908672457546147127

namespace A004744

/-- `eq[n+1, (n+1)*a(A056977(n))]` -/
def P10908672457546147127.Spec : Prop :=
  ∀ n, (P10908672457546147127.a n : ℤ) = A004744 (n + 1)

end A004744

/-! ## A004744.P8666690196004252924

`lt[A087117(A035327(n)), 2]`
-/

namespace A004744.P8666690196004252924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A035327 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004744.P8666690196004252924

namespace A004744

/-- `lt[A087117(A035327(n)), 2]` -/
def P8666690196004252924.Spec : Prop :=
  ∀ n, (P8666690196004252924.a n : ℤ) = A004744 (n + 1)

end A004744

/-! ## A004744.P6535807747029118720

`eq[A090077(n), A229763(n)]`
-/

namespace A004744.P6535807747029118720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004744.P6535807747029118720

namespace A004744

/-- `eq[A090077(n), A229763(n)]` -/
def P6535807747029118720.Spec : Prop :=
  ∀ n, (P6535807747029118720.a n : ℤ) = A004744 (n + 1)

end A004744

/-! ## A004744.P17676939563933952211

`eq[A246660(n), A346422(n)]`
-/

namespace A004744.P17676939563933952211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246660 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346422 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004744.P17676939563933952211

namespace A004744

/-- `eq[A246660(n), A346422(n)]` -/
def P17676939563933952211.Spec : Prop :=
  ∀ n, (P17676939563933952211.a n : ℤ) = A004744 (n + 1)

end A004744

/-! ## A004744.P1420196087918542412

`eq[A048735(n-A087734(n)), A048735(n)]`
-/

namespace A004744.P1420196087918542412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 ((n : ℤ) - A087734 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004744.P1420196087918542412

namespace A004744

/-- `eq[A048735(n-A087734(n)), A048735(n)]` -/
def P1420196087918542412.Spec : Prop :=
  ∀ n, (P1420196087918542412.a n : ℤ) = A004744 (n + 1)

end A004744

/-! ## A004744.P4870433561863511290

`lt[A087117(A010078(n+1)-n), 2]`
-/

namespace A004744.P4870433561863511290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A010078 (n + 1) - (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004744.P4870433561863511290

namespace A004744

/-- `lt[A087117(A010078(n+1)-n), 2]` -/
def P4870433561863511290.Spec : Prop :=
  ∀ n, (P4870433561863511290.a n : ℤ) = A004744 (n + 1)

end A004744

/-! ## A004744.P17482127922967373255

`eq[0, A056977(A065033(2*n))]`
-/

namespace A004744.P17482127922967373255
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056977 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004744.P17482127922967373255

namespace A004744

/-- `eq[0, A056977(A065033(2*n))]` -/
def P17482127922967373255.Spec : Prop :=
  ∀ n, (P17482127922967373255.a n : ℤ) = A004744 (n + 1)

end A004744

/-! ## A004744.P10863145226201689400

`eq[A267584(A229762(2*n)), A267584(n)]`
-/

namespace A004744.P10863145226201689400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 (A229762 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267584 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004744.P10863145226201689400

namespace A004744

/-- `eq[A267584(A229762(2*n)), A267584(n)]` -/
def P10863145226201689400.Spec : Prop :=
  ∀ n, (P10863145226201689400.a n : ℤ) = A004744 (n + 1)

end A004744

/-! ## A004744.P2669030011994218687

`eq[0, A056977(A005408(2*n))]`
-/

namespace A004744.P2669030011994218687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056977 (A005408 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004744.P2669030011994218687

namespace A004744

/-- `eq[0, A056977(A005408(2*n))]` -/
def P2669030011994218687.Spec : Prop :=
  ∀ n, (P2669030011994218687.a n : ℤ) = A004744 (n + 1)

end A004744

/-! ## A004744.P683302772898763349

`eq[n, and(n, A153141(A003188(n)))]`
-/

namespace A004744.P683302772898763349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A153141 (A003188 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004744.P683302772898763349

namespace A004744

/-- `eq[n, and(n, A153141(A003188(n)))]` -/
def P683302772898763349.Spec : Prop :=
  ∀ n, (P683302772898763349.a n : ℤ) = A004744 (n + 1)

end A004744

/-! ## A004744.P11811585248746555446

`eq[1, A065202(A005940(n+1))+1]`
-/

namespace A004744.P11811585248746555446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065202 (A005940 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004744.P11811585248746555446

namespace A004744

/-- `eq[1, A065202(A005940(n+1))+1]` -/
def P11811585248746555446.Spec : Prop :=
  ∀ n, (P11811585248746555446.a n : ℤ) = A004744 (n + 1)

end A004744

/-! ## A004744.P17600377064012458049

`eq[1, A137794(A253563(n))]`
-/

namespace A004744.P17600377064012458049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 (A253563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004744.P17600377064012458049

namespace A004744

/-- `eq[1, A137794(A253563(n))]` -/
def P17600377064012458049.Spec : Prop :=
  ∀ n, (P17600377064012458049.a n : ℤ) = A004744 (n + 1)

end A004744

/-!
# A004745: Numbers whose binary expansion does not contain 001.

The programs for A004745, the canonical program `A004745.P9326191156765535125` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004745 has offset 1).

The definition of A004745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4164 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004745.P18142179191638088561

`comp[A004751(n+1)]`
-/

namespace A004745.P18142179191638088561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004751 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004745.P18142179191638088561

namespace A004745

/-- `comp[A004751(n+1)]` -/
def P18142179191638088561.Spec : Prop :=
  ∀ n, (P18142179191638088561.a n : ℤ) = A004745 (n + 1)

end A004745

/-! ## A004745.P9326191156765535125

`eq[0, A334076(A334076(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004745

/-- `eq[0, A334076(A334076(n))]` -/
def P9326191156765535125.Spec : Prop :=
  ∀ n, (P9326191156765535125.a n : ℤ) = A004745 (n + 1)

theorem P9326191156765535125.correct : P9326191156765535125.Spec := by
  intro n
  simp only [A004745, Nat.add_sub_cancel]

end A004745

/-! ## A004745.P8116434561156526795

`lt[and(A269160(n)-(n+1), 2*n), 3]`
-/

namespace A004745.P8116434561156526795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A269160 n - (n + 1 : ℤ)) (2 * n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004745.P8116434561156526795

namespace A004745

/-- `lt[and(A269160(n)-(n+1), 2*n), 3]` -/
def P8116434561156526795.Spec : Prop :=
  ∀ n, (P8116434561156526795.a n : ℤ) = A004745 (n + 1)

end A004745

/-! ## A004745.P15395487008771913509

`lt[A334076(A334076(2*n)), 1]`
-/

namespace A004745.P15395487008771913509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 (A334076 (2 * n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004745.P15395487008771913509

namespace A004745

/-- `lt[A334076(A334076(2*n)), 1]` -/
def P15395487008771913509.Spec : Prop :=
  ∀ n, (P15395487008771913509.a n : ℤ) = A004745 (n + 1)

end A004745

/-! ## A004745.P1504511553974592209

`lt[A334076(A030101(n)), 1]`
-/

namespace A004745.P1504511553974592209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 (A030101 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004745.P1504511553974592209

namespace A004745

/-- `lt[A334076(A030101(n)), 1]` -/
def P1504511553974592209.Spec : Prop :=
  ∀ n, (P1504511553974592209.a n : ℤ) = A004745 (n + 1)

end A004745

/-! ## A004745.P8179575953929661739

`lt[A006530(A302436(n)), 4]`
-/

namespace A004745.P8179575953929661739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A302436 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004745.P8179575953929661739

namespace A004745

/-- `lt[A006530(A302436(n)), 4]` -/
def P8179575953929661739.Spec : Prop :=
  ∀ n, (P8179575953929661739.a n : ℤ) = A004745 (n + 1)

end A004745

/-! ## A004745.P13343297277883908355

`eq[A037800(n), A086784(n)]`
-/

namespace A004745.P13343297277883908355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086784 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004745.P13343297277883908355

namespace A004745

/-- `eq[A037800(n), A086784(n)]` -/
def P13343297277883908355.Spec : Prop :=
  ∀ n, (P13343297277883908355.a n : ℤ) = A004745 (n + 1)

end A004745

/-! ## A004745.P8167532823353938054

`eq[3, A318884(3*A302436(n))]`
-/

namespace A004745.P8167532823353938054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318884 (3 * A302436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004745.P8167532823353938054

namespace A004745

/-- `eq[3, A318884(3*A302436(n))]` -/
def P8167532823353938054.Spec : Prop :=
  ∀ n, (P8167532823353938054.a n : ℤ) = A004745 (n + 1)

end A004745

/-! ## A004745.P10739690300812714809

`lt[(n+1)*char[A004751(n+1)], A102457(n+2)]`
-/

namespace A004745.P10739690300812714809
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004751 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102457 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A004745.P10739690300812714809

namespace A004745

/-- `lt[(n+1)*char[A004751(n+1)], A102457(n+2)]` -/
def P10739690300812714809.Spec : Prop :=
  ∀ n, (P10739690300812714809.a n : ℤ) = A004745 (n + 1)

end A004745

/-! ## A004745.P6923595841683994907

`eq[A001222(A302436(n)), A080791(n)]`
-/

namespace A004745.P6923595841683994907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A302436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004745.P6923595841683994907

namespace A004745

/-- `eq[A001222(A302436(n)), A080791(n)]` -/
def P6923595841683994907.Spec : Prop :=
  ∀ n, (P6923595841683994907.a n : ℤ) = A004745 (n + 1)

end A004745

/-! ## A004745.P8346306299703187205

`lt[A334076(A334076(n))², A261461(n)]`
-/

namespace A004745.P8346306299703187205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 (A334076 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004745.P8346306299703187205

namespace A004745

/-- `lt[A334076(A334076(n))², A261461(n)]` -/
def P8346306299703187205.Spec : Prop :=
  ∀ n, (P8346306299703187205.a n : ℤ) = A004745 (n + 1)

end A004745

/-! ## A004745.P3115821099729994530

`lt[A080791(n), A001222(2*A302436(n))]`
-/

namespace A004745.P3115821099729994530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * A302436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004745.P3115821099729994530

namespace A004745

/-- `lt[A080791(n), A001222(2*A302436(n))]` -/
def P3115821099729994530.Spec : Prop :=
  ∀ n, (P3115821099729994530.a n : ℤ) = A004745 (n + 1)

end A004745

/-! ## A004745.P4796554771734407795

`eq[1, A124772(or(n, 2*n))]`
-/

namespace A004745.P4796554771734407795
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124772 (Nat.lor n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004745.P4796554771734407795

namespace A004745

/-- `eq[1, A124772(or(n, 2*n))]` -/
def P4796554771734407795.Spec : Prop :=
  ∀ n, (P4796554771734407795.a n : ℤ) = A004745 (n + 1)

end A004745

/-! ## A004745.P3847927034117812574

`eq[1, A227350(2*n)+A088705(2*n)]`
-/

namespace A004745.P3847927034117812574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227350 (2 * n) + A088705 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004745.P3847927034117812574

namespace A004745

/-- `eq[1, A227350(2*n)+A088705(2*n)]` -/
def P3847927034117812574.Spec : Prop :=
  ∀ n, (P3847927034117812574.a n : ℤ) = A004745 (n + 1)

end A004745

/-! ## A004745.P10876456749546730645

`lt[A008687(or(n, 2*n)), 3]`
-/

namespace A004745.P10876456749546730645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008687 (Nat.lor n (2 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004745.P10876456749546730645

namespace A004745

/-- `lt[A008687(or(n, 2*n)), 3]` -/
def P10876456749546730645.Spec : Prop :=
  ∀ n, (P10876456749546730645.a n : ℤ) = A004745 (n + 1)

end A004745

/-! ## A004745.P10913302601212072374

`eq[1, A137794(A005940(n+1))]`
-/

namespace A004745.P10913302601212072374
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004745.P10913302601212072374

namespace A004745

/-- `eq[1, A137794(A005940(n+1))]` -/
def P10913302601212072374.Spec : Prop :=
  ∀ n, (P10913302601212072374.a n : ℤ) = A004745 (n + 1)

end A004745

/-!
# A004746: Numbers whose binary expansion does not contain 010.

The programs for A004746, the canonical program `A004746.P4228167867206935200` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004746 has offset 1).

The definition of A004746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004746.P4228167867206935200

`comp[A004752(n+1)]`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004746

/-- `comp[A004752(n+1)]` -/
def P4228167867206935200.Spec : Prop :=
  ∀ n, (P4228167867206935200.a n : ℤ) = A004746 (n + 1)

theorem P4228167867206935200.correct : P4228167867206935200.Spec := by
  intro n
  simp only [A004746, Nat.add_sub_cancel]

end A004746

/-! ## A004746.P7019629460271887925

`lt[A088748(n), A088748(A209639(n))+1]`
-/

namespace A004746.P7019629460271887925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A209639 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004746.P7019629460271887925

namespace A004746

/-- `lt[A088748(n), A088748(A209639(n))+1]` -/
def P7019629460271887925.Spec : Prop :=
  ∀ n, (P7019629460271887925.a n : ℤ) = A004746 (n + 1)

end A004746

/-! ## A004746.P18162088491589509117

`lt[A337375(A035327(n)), 2]`
-/

namespace A004746.P18162088491589509117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337375 (A035327 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004746.P18162088491589509117

namespace A004746

/-- `lt[A337375(A035327(n)), 2]` -/
def P18162088491589509117.Spec : Prop :=
  ∀ n, (P18162088491589509117.a n : ℤ) = A004746 (n + 1)

end A004746

/-! ## A004746.P10041141141099451515

`lt[A337375(A080079(n+1)), 2]`
-/

namespace A004746.P10041141141099451515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337375 (A080079 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004746.P10041141141099451515

namespace A004746

/-- `lt[A337375(A080079(n+1)), 2]` -/
def P10041141141099451515.Spec : Prop :=
  ∀ n, (P10041141141099451515.a n : ℤ) = A004746 (n + 1)

end A004746

/-! ## A004746.P5092675596943398146

`eq[1, A107345(A209639(n))]`
-/

namespace A004746.P5092675596943398146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107345 (A209639 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004746.P5092675596943398146

namespace A004746

/-- `eq[1, A107345(A209639(n))]` -/
def P5092675596943398146.Spec : Prop :=
  ∀ n, (P5092675596943398146.a n : ℤ) = A004746 (n + 1)

end A004746

/-! ## A004746.P10799092233099521610

`lt[A005811(n), A005811(A209639(n))+1]`
-/

namespace A004746.P10799092233099521610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A209639 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004746.P10799092233099521610

namespace A004746

/-- `lt[A005811(n), A005811(A209639(n))+1]` -/
def P10799092233099521610.Spec : Prop :=
  ∀ n, (P10799092233099521610.a n : ℤ) = A004746 (n + 1)

end A004746

/-! ## A004746.P7093370632586342768

`eq[0, A056976(2*n+1)]`
-/

namespace A004746.P7093370632586342768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056976 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004746.P7093370632586342768

namespace A004746

/-- `eq[0, A056976(2*n+1)]` -/
def P7093370632586342768.Spec : Prop :=
  ∀ n, (P7093370632586342768.a n : ℤ) = A004746 (n + 1)

end A004746

/-! ## A004746.P16585417692739070507

`eq[1, A056976(n+n+1)+1]`
-/

namespace A004746.P16585417692739070507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056976 (n + n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004746.P16585417692739070507

namespace A004746

/-- `eq[1, A056976(n+n+1)+1]` -/
def P16585417692739070507.Spec : Prop :=
  ∀ n, (P16585417692739070507.a n : ℤ) = A004746 (n + 1)

end A004746

/-! ## A004746.P7962892373426100562

`record[n/A337375(A035327(2*n+1))]`
-/

namespace A004746.P7962892373426100562
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A337375 (A035327 (2 * n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004746.P7962892373426100562

namespace A004746

/-- `record[n/A337375(A035327(2*n+1))]` -/
def P7962892373426100562.Spec : Prop :=
  ∀ n, P7962892373426100562.a n = (A004746 (n + 1) : ℚ)

end A004746

/-! ## A004746.P17158930973621457876

`lt[A037800(n), A056977(2*n+1)+1]`
-/

namespace A004746.P17158930973621457876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056977 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004746.P17158930973621457876

namespace A004746

/-- `lt[A037800(n), A056977(2*n+1)+1]` -/
def P17158930973621457876.Spec : Prop :=
  ∀ n, (P17158930973621457876.a n : ℤ) = A004746 (n + 1)

end A004746

/-! ## A004746.P10862164552573270506

`record[A057979(and(n+1, A342698(n+1)))]`
-/

namespace A004746.P10862164552573270506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (Int.land (n + 1 : ℤ) (A342698 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004746.P10862164552573270506

namespace A004746

/-- `record[A057979(and(n+1, A342698(n+1)))]` -/
def P10862164552573270506.Spec : Prop :=
  ∀ n, P10862164552573270506.a n = A004746 (n + 1)

end A004746

/-!
# A004748: Binary expansion contains 101.

The programs for A004748, the canonical program `A004748.P12369784358384625358` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004748 has offset 1).

The definition of A004748 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004748.P12369784358384625358

`comp[and(n, floor(n/2))]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004748

/-- `comp[and(n, floor(n/2))]` -/
def P12369784358384625358.Spec : Prop :=
  ∀ n, (P12369784358384625358.a n : ℤ) = A004748 (n + 1)

theorem P12369784358384625358.correct : P12369784358384625358.Spec := by
  intro n
  simp only [A004748, Nat.add_sub_cancel]

end A004748

/-! ## A004748.P6857137704146660578

`comp[xor(n, floor(n/5))]`
-/

namespace A004748.P6857137704146660578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 5⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004748.P6857137704146660578

namespace A004748

/-- `comp[xor(n, floor(n/5))]` -/
def P6857137704146660578.Spec : Prop :=
  ∀ n, (P6857137704146660578.a n : ℤ) = A004748 (n + 1)

end A004748

/-! ## A004748.P11817974586157014198

`comp[floor(n/2)-(or(n, floor(n/2))-n)]`
-/

namespace A004748.P11817974586157014198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ - (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004748.P11817974586157014198

namespace A004748

/-- `comp[floor(n/2)-(or(n, floor(n/2))-n)]` -/
def P11817974586157014198.Spec : Prop :=
  ∀ n, (P11817974586157014198.a n : ℤ) = A004748 (n + 1)

end A004748

/-! ## A004748.P1753167962292548845

`lt[1, A337375(n)]`
-/

namespace A004748.P1753167962292548845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337375 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004748.P1753167962292548845

namespace A004748

/-- `lt[1, A337375(n)]` -/
def P1753167962292548845.Spec : Prop :=
  ∀ n, (P1753167962292548845.a n : ℤ) = A004748 (n + 1)

end A004748

/-! ## A004748.P6994242676667050688

`comp[A004742(n+1)]`
-/

namespace A004748.P6994242676667050688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004748.P6994242676667050688

namespace A004748

/-- `comp[A004742(n+1)]` -/
def P6994242676667050688.Spec : Prop :=
  ∀ n, (P6994242676667050688.a n : ℤ) = A004748 (n + 1)

end A004748

/-! ## A004748.P16266569729014262565

`lt[n, or(n, A342697(2*n))]`
-/

namespace A004748.P16266569729014262565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A342697 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004748.P16266569729014262565

namespace A004748

/-- `lt[n, or(n, A342697(2*n))]` -/
def P16266569729014262565.Spec : Prop :=
  ∀ n, (P16266569729014262565.a n : ℤ) = A004748 (n + 1)

end A004748

/-! ## A004748.P15182832900468785869

`comp[A048735(n)]`
-/

namespace A004748.P15182832900468785869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004748.P15182832900468785869

namespace A004748

/-- `comp[A048735(n)]` -/
def P15182832900468785869.Spec : Prop :=
  ∀ n, (P15182832900468785869.a n : ℤ) = A004748 (n + 1)

end A004748

/-! ## A004748.P2692105926031186730

`lt[1, and(n, A048735(A048726(n)))]`
-/

namespace A004748.P2692105926031186730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A048735 (A048726 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004748.P2692105926031186730

namespace A004748

/-- `lt[1, and(n, A048735(A048726(n)))]` -/
def P2692105926031186730.Spec : Prop :=
  ∀ n, (P2692105926031186730.a n : ℤ) = A004748 (n + 1)

end A004748

/-! ## A004748.P999927343495324857

`eq[1, A297173(A005940(n+1))]`
-/

namespace A004748.P999927343495324857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297173 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004748.P999927343495324857

namespace A004748

/-- `eq[1, A297173(A005940(n+1))]` -/
def P999927343495324857.Spec : Prop :=
  ∀ n, (P999927343495324857.a n : ℤ) = A004748 (n + 1)

end A004748

/-!
# A004749: Numbers whose binary expansion contains the substring '110'.

The programs for A004749, the canonical program `A004749.P4531662172009182558` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004749 has offset 1).

The definition of A004749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004749.P4531662172009182558

`lt[2, and(n, and(n+1, 2*n))]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004749

/-- `lt[2, and(n, and(n+1, 2*n))]` -/
def P4531662172009182558.Spec : Prop :=
  ∀ n, (P4531662172009182558.a n : ℤ) = A004749 (n + 1)

theorem P4531662172009182558.correct : P4531662172009182558.Spec := by
  intro n
  simp only [A004749, Nat.add_sub_cancel]

end A004749

/-! ## A004749.P7411614388349525660

`comp[and(n, xor(2*n+1, n+1))]`
-/

namespace A004749.P7411614388349525660
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.xor (2 * n + 1) (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004749.P7411614388349525660

namespace A004749

/-- `comp[and(n, xor(2*n+1, n+1))]` -/
def P7411614388349525660.Spec : Prop :=
  ∀ n, (P7411614388349525660.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P4860074757540405292

`comp[xor((-1)^(n%3)+n, floor(n/3))]`
-/

namespace A004749.P4860074757540405292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((-1) ^ (n % 3) + (n : ℤ)) ⌊(n : ℚ) / 3⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004749.P4860074757540405292

namespace A004749

/-- `comp[xor((-1)^(n%3)+n, floor(n/3))]` -/
def P4860074757540405292.Spec : Prop :=
  ∀ n, (P4860074757540405292.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P6473885631406178294

`lt[n, and(and(n, n+1)+n, n+1)+n]`
-/

namespace A004749.P6473885631406178294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land (Nat.land n (n + 1) + n) (n + 1) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004749.P6473885631406178294

namespace A004749

/-- `lt[n, and(and(n, n+1)+n, n+1)+n]` -/
def P6473885631406178294.Spec : Prop :=
  ∀ n, (P6473885631406178294.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P4396122089398099006

`comp[xor(n-2*floor((n+1)/5), floor(n/5))]`
-/

namespace A004749.P4396122089398099006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 2 * ⌊(n + 1 : ℚ) / 5⌋) ⌊(n : ℚ) / 5⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004749.P4396122089398099006

namespace A004749

/-- `comp[xor(n-2*floor((n+1)/5), floor(n/5))]` -/
def P4396122089398099006.Spec : Prop :=
  ∀ n, (P4396122089398099006.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P11058257460913915891

`comp[and(n, -(n+2))+or(n, floor(n/2))-n]`
-/

namespace A004749.P11058257460913915891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 2 : ℤ)) + (Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004749.P11058257460913915891

namespace A004749

/-- `comp[and(n, -(n+2))+or(n, floor(n/2))-n]` -/
def P11058257460913915891.Spec : Prop :=
  ∀ n, (P11058257460913915891.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P18287414159573532069

`comp[A004743(n+1)]`
-/

namespace A004749.P18287414159573532069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004743 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004749.P18287414159573532069

namespace A004749

/-- `comp[A004743(n+1)]` -/
def P18287414159573532069.Spec : Prop :=
  ∀ n, (P18287414159573532069.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P5523277415430547637

`eq[1, A014963(and(n, 2*n)+2)]`
-/

namespace A004749.P5523277415430547637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Nat.land n (2 * n) + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004749.P5523277415430547637

namespace A004749

/-- `eq[1, A014963(and(n, 2*n)+2)]` -/
def P5523277415430547637.Spec : Prop :=
  ∀ n, (P5523277415430547637.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P12204417497772458604

`lt[2, A006530(and(n, A004277(n)+1)+1)]`
-/

namespace A004749.P12204417497772458604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.land (n : ℤ) (A004277 n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004749.P12204417497772458604

namespace A004749

/-- `lt[2, A006530(and(n, A004277(n)+1)+1)]` -/
def P12204417497772458604.Spec : Prop :=
  ∀ n, (P12204417497772458604.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P12604138619163870877

`lt[n, or(n, A342697(n))]`
-/

namespace A004749.P12604138619163870877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A342697 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004749.P12604138619163870877

namespace A004749

/-- `lt[n, or(n, A342697(n))]` -/
def P12604138619163870877.Spec : Prop :=
  ∀ n, (P12604138619163870877.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P11861475076503633336

`lt[1, and(n+1, A048735(n))]`
-/

namespace A004749.P11861475076503633336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (A048735 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004749.P11861475076503633336

namespace A004749

/-- `lt[1, and(n+1, A048735(n))]` -/
def P11861475076503633336.Spec : Prop :=
  ∀ n, (P11861475076503633336.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P14228076068569785852

`lt[1, A000593(A048735(n)+1)]`
-/

namespace A004749.P14228076068569785852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A048735 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004749.P14228076068569785852

namespace A004749

/-- `lt[1, A000593(A048735(n)+1)]` -/
def P14228076068569785852.Spec : Prop :=
  ∀ n, (P14228076068569785852.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P8429131251643257522

`lt[1, A284580(A104594(n+1))]`
-/

namespace A004749.P8429131251643257522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284580 (A104594 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004749.P8429131251643257522

namespace A004749

/-- `lt[1, A284580(A104594(n+1))]` -/
def P8429131251643257522.Spec : Prop :=
  ∀ n, (P8429131251643257522.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P7814165384414233444

`lt[2, A006530(A048735(n)+1)]`
-/

namespace A004749.P7814165384414233444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A048735 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004749.P7814165384414233444

namespace A004749

/-- `lt[2, A006530(A048735(n)+1)]` -/
def P7814165384414233444.Spec : Prop :=
  ∀ n, (P7814165384414233444.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P6525286429611061498

`lt[A135561(n+1), A048735(n)]`
-/

namespace A004749.P6525286429611061498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135561 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004749.P6525286429611061498

namespace A004749

/-- `lt[A135561(n+1), A048735(n)]` -/
def P6525286429611061498.Spec : Prop :=
  ∀ n, (P6525286429611061498.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P7774588978585977490

`lt[2, A229763(n-A229763(n))]`
-/

namespace A004749.P7774588978585977490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 ((n : ℤ) - A229763 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004749.P7774588978585977490

namespace A004749

/-- `lt[2, A229763(n-A229763(n))]` -/
def P7774588978585977490.Spec : Prop :=
  ∀ n, (P7774588978585977490.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P5174948167037476266

`lt[Δ[A048728(n)]², A048728(n)²]`
-/

namespace A004749.P5174948167037476266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048728 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048728 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n

end

end A004749.P5174948167037476266

namespace A004749

/-- `lt[Δ[A048728(n)]², A048728(n)²]` -/
def P5174948167037476266.Spec : Prop :=
  ∀ n, (P5174948167037476266.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P4242139941977319453

`lt[A086747(n), A342697(n-A342697(n))]`
-/

namespace A004749.P4242139941977319453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086747 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342697 ((n : ℤ) - A342697 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004749.P4242139941977319453

namespace A004749

/-- `lt[A086747(n), A342697(n-A342697(n))]` -/
def P4242139941977319453.Spec : Prop :=
  ∀ n, (P4242139941977319453.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P17447184671756591325

`lt[A014082(2*n+1), A014081(n)]`
-/

namespace A004749.P17447184671756591325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004749.P17447184671756591325

namespace A004749

/-- `lt[A014082(2*n+1), A014081(n)]` -/
def P17447184671756591325.Spec : Prop :=
  ∀ n, (P17447184671756591325.a n : ℤ) = A004749 (n + 1)

end A004749

/-! ## A004749.P9976074759389634920

`lt[A033264(2*n+1)+1, A000120(n+1)]`
-/

namespace A004749.P9976074759389634920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033264 (2 * n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004749.P9976074759389634920

namespace A004749

/-- `lt[A033264(2*n+1)+1, A000120(n+1)]` -/
def P9976074759389634920.Spec : Prop :=
  ∀ n, (P9976074759389634920.a n : ℤ) = A004749 (n + 1)

end A004749

/-!
# A004750: Numbers whose binary expansion contains the substring '011'.

The programs for A004750, the canonical program `A004750.P1321946369990003879` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004750 has offset 1).

The definition of A004750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004750.P1321946369990003879

`comp[A004744(n+1)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A004750

/-- `comp[A004744(n+1)]` -/
def P1321946369990003879.Spec : Prop :=
  ∀ n, (P1321946369990003879.a n : ℤ) = A004750 (n + 1)

theorem P1321946369990003879.correct : P1321946369990003879.Spec := by
  intro n
  simp only [A004750, Nat.add_sub_cancel]

end A004750

/-! ## A004750.P11896249878711626315

`eq[0, A132971(A087734(n))]`
-/

namespace A004750.P11896249878711626315
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 (A087734 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004750.P11896249878711626315

namespace A004750

/-- `eq[0, A132971(A087734(n))]` -/
def P11896249878711626315.Spec : Prop :=
  ∀ n, (P11896249878711626315.a n : ℤ) = A004750 (n + 1)

end A004750

/-! ## A004750.P15631432955452339256

`lt[1, A087117(A035327(n))]`
-/

namespace A004750.P15631432955452339256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004750.P15631432955452339256

namespace A004750

/-- `lt[1, A087117(A035327(n))]` -/
def P15631432955452339256.Spec : Prop :=
  ∀ n, (P15631432955452339256.a n : ℤ) = A004750 (n + 1)

end A004750

/-! ## A004750.P9769026442149421876

`eq[2, A023746(a(A056977(n)))]` with `a(0)=4`
-/

namespace A004750.P9769026442149421876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A023746 (f2 (A056977 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004750.P9769026442149421876

namespace A004750

/-- `eq[2, A023746(a(A056977(n)))]` -/
def P9769026442149421876.Spec : Prop :=
  ∀ n, (P9769026442149421876.a n : ℤ) = A004750 (n + 1)

end A004750

/-! ## A004750.P12235925281577674419

`lt[char[A004744(n+1)], A057427(n)]`
-/

namespace A004750.P12235925281577674419
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004744 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A004750.P12235925281577674419

namespace A004750

/-- `lt[char[A004744(n+1)], A057427(n)]` -/
def P12235925281577674419.Spec : Prop :=
  ∀ n, (P12235925281577674419.a n : ℤ) = A004750 (n + 1)

end A004750

/-! ## A004750.P3732403763959640652

`lt[2, A005811(A209639(2*n))]`
-/

namespace A004750.P3732403763959640652
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A209639 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004750.P3732403763959640652

namespace A004750

/-- `lt[2, A005811(A209639(2*n))]` -/
def P3732403763959640652.Spec : Prop :=
  ∀ n, (P3732403763959640652.a n : ℤ) = A004750 (n + 1)

end A004750

/-! ## A004750.P9238177008252337495

`lt[1, A087117(A010078(n+1)-n)]`
-/

namespace A004750.P9238177008252337495
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A010078 (n + 1) - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004750.P9238177008252337495

namespace A004750

/-- `lt[1, A087117(A010078(n+1)-n)]` -/
def P9238177008252337495.Spec : Prop :=
  ∀ n, (P9238177008252337495.a n : ℤ) = A004750 (n + 1)

end A004750

/-! ## A004750.P8634231489063541959

`lt[A090077(2*n)+n, A003188(2*n)]`
-/

namespace A004750.P8634231489063541959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 (2 * n) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004750.P8634231489063541959

namespace A004750

/-- `lt[A090077(2*n)+n, A003188(2*n)]` -/
def P8634231489063541959.Spec : Prop :=
  ∀ n, (P8634231489063541959.a n : ℤ) = A004750 (n + 1)

end A004750

/-! ## A004750.P3575252460286362559

`eq[1, A065202(A005940(n+1))]`
-/

namespace A004750.P3575252460286362559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065202 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004750.P3575252460286362559

namespace A004750

/-- `eq[1, A065202(A005940(n+1))]` -/
def P3575252460286362559.Spec : Prop :=
  ∀ n, (P3575252460286362559.a n : ℤ) = A004750 (n + 1)

end A004750

/-! ## A004750.P10866435477553609257

`eq[0, A137794(A253563(n))]`
-/

namespace A004750.P10866435477553609257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 (A253563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004750.P10866435477553609257

namespace A004750

/-- `eq[0, A137794(A253563(n))]` -/
def P10866435477553609257.Spec : Prop :=
  ∀ n, (P10866435477553609257.a n : ℤ) = A004750 (n + 1)

end A004750

/-!
# A004751: Binary expansion contains 001.

The programs for A004751, the canonical program `A004751.P4013561618878621607` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004751 has offset 1).

The definition of A004751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004751.P4520715809779571687

`comp[A004745(n+1)]`
-/

namespace A004751.P4520715809779571687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004751.P4520715809779571687

namespace A004751

/-- `comp[A004745(n+1)]` -/
def P4520715809779571687.Spec : Prop :=
  ∀ n, (P4520715809779571687.a n : ℤ) = A004751 (n + 1)

end A004751

/-! ## A004751.P4013561618878621607

`eq[0, A036987(A334076(n))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A004751

/-- `eq[0, A036987(A334076(n))]` -/
def P4013561618878621607.Spec : Prop :=
  ∀ n, (P4013561618878621607.a n : ℤ) = A004751 (n + 1)

theorem P4013561618878621607.correct : P4013561618878621607.Spec := by
  intro n
  simp only [A004751, Nat.add_sub_cancel]

end A004751

/-! ## A004751.P4031819305607224636

`lt[0, A334076(A030101(n))]`
-/

namespace A004751.P4031819305607224636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 (A030101 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004751.P4031819305607224636

namespace A004751

/-- `lt[0, A334076(A030101(n))]` -/
def P4031819305607224636.Spec : Prop :=
  ∀ n, (P4031819305607224636.a n : ℤ) = A004751 (n + 1)

end A004751

/-! ## A004751.P12829561893763722895

`lt[3, A006530(A302436(n))]`
-/

namespace A004751.P12829561893763722895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A302436 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004751.P12829561893763722895

namespace A004751

/-- `lt[3, A006530(A302436(n))]` -/
def P12829561893763722895.Spec : Prop :=
  ∀ n, (P12829561893763722895.a n : ℤ) = A004751 (n + 1)

end A004751

/-! ## A004751.P13057748549997192341

`lt[1, A035327(or(A003817(n)-n, 2*n)-2*n)]`
-/

namespace A004751.P13057748549997192341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035327 (Int.lor (A003817 n - (n : ℤ)) (2 * n : ℤ) - (2 * n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004751.P13057748549997192341

namespace A004751

/-- `lt[1, A035327(or(A003817(n)-n, 2*n)-2*n)]` -/
def P13057748549997192341.Spec : Prop :=
  ∀ n, (P13057748549997192341.a n : ℤ) = A004751 (n + 1)

end A004751

/-! ## A004751.P3885239364374481538

`lt[A001222(A302436(n)), A080791(n)]`
-/

namespace A004751.P3885239364374481538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A302436 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080791 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004751.P3885239364374481538

namespace A004751

/-- `lt[A001222(A302436(n)), A080791(n)]` -/
def P3885239364374481538.Spec : Prop :=
  ∀ n, (P3885239364374481538.a n : ℤ) = A004751 (n + 1)

end A004751

/-! ## A004751.P5496319149676006404

`eq[9, dr(A278533(2*n))]`
-/

namespace A004751.P5496319149676006404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A278533 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004751.P5496319149676006404

namespace A004751

/-- `eq[9, dr(A278533(2*n))]` -/
def P5496319149676006404.Spec : Prop :=
  ∀ n, (P5496319149676006404.a n : ℤ) = A004751 (n + 1)

end A004751

/-! ## A004751.P8857348830486289640

`eq[0, A137794(A005940(n+1))]`
-/

namespace A004751.P8857348830486289640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137794 (A005940 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004751.P8857348830486289640

namespace A004751

/-- `eq[0, A137794(A005940(n+1))]` -/
def P8857348830486289640.Spec : Prop :=
  ∀ n, (P8857348830486289640.a n : ℤ) = A004751 (n + 1)

end A004751

/-! ## A004751.P8358659258494893308

`eq[1, A065202(A253563(n))]`
-/

namespace A004751.P8358659258494893308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065202 (A253563 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004751.P8358659258494893308

namespace A004751

/-- `eq[1, A065202(A253563(n))]` -/
def P8358659258494893308.Spec : Prop :=
  ∀ n, (P8358659258494893308.a n : ℤ) = A004751 (n + 1)

end A004751

/-!
# A004752: Binary expansion contains 010.

The programs for A004752, the canonical program `A004752.P9121909890440703196` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004752 has offset 1).

The definition of A004752 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004752.P9121909890440703196

`comp[and(2^floor(log2(n+1))-1, or(n, floor(n/2)))]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004752

/-- `comp[and(2^floor(log2(n+1))-1, or(n, floor(n/2)))]` -/
def P9121909890440703196.Spec : Prop :=
  ∀ n, (P9121909890440703196.a n : ℤ) = A004752 (n + 1)

theorem P9121909890440703196.correct : P9121909890440703196.Spec := by
  intro n
  simp only [A004752, Nat.add_sub_cancel]

end A004752

/-! ## A004752.P5509324081389432041

`comp[A004746(n+1)]`
-/

namespace A004752.P5509324081389432041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004746 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004752.P5509324081389432041

namespace A004752

/-- `comp[A004746(n+1)]` -/
def P5509324081389432041.Spec : Prop :=
  ∀ n, (P5509324081389432041.a n : ℤ) = A004752 (n + 1)

end A004752

/-! ## A004752.P10761992123488434999

`lt[A088748(A209639(n)), A088748(n)]`
-/

namespace A004752.P10761992123488434999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 (A209639 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004752.P10761992123488434999

namespace A004752

/-- `lt[A088748(A209639(n)), A088748(n)]` -/
def P10761992123488434999.Spec : Prop :=
  ∀ n, (P10761992123488434999.a n : ℤ) = A004752 (n + 1)

end A004752

/-! ## A004752.P10265330639595133685

`lt[1, A337375(A035327(n))]`
-/

namespace A004752.P10265330639595133685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337375 (A035327 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004752.P10265330639595133685

namespace A004752

/-- `lt[1, A337375(A035327(n))]` -/
def P10265330639595133685.Spec : Prop :=
  ∀ n, (P10265330639595133685.a n : ℤ) = A004752 (n + 1)

end A004752

/-! ## A004752.P16530786722607032119

`lt[A063524(n), A056976(n+1)]+1`
-/

namespace A004752.P16530786722607032119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056976 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A004752.P16530786722607032119

namespace A004752

/-- `lt[A063524(n), A056976(n+1)]+1` -/
def P16530786722607032119.Spec : Prop :=
  ∀ n, (P16530786722607032119.a n : ℤ) = A004752 (n + 1)

end A004752

/-! ## A004752.P11662258406844626899

`lt[1, A337375(A080079(n+1))]`
-/

namespace A004752.P11662258406844626899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337375 (A080079 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004752.P11662258406844626899

namespace A004752

/-- `lt[1, A337375(A080079(n+1))]` -/
def P11662258406844626899.Spec : Prop :=
  ∀ n, (P11662258406844626899.a n : ℤ) = A004752 (n + 1)

end A004752

/-! ## A004752.P13668441015220603343

`lt[A005811(A209639(n)), A005811(n)]`
-/

namespace A004752.P13668441015220603343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A209639 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004752.P13668441015220603343

namespace A004752

/-- `lt[A005811(A209639(n)), A005811(n)]` -/
def P13668441015220603343.Spec : Prop :=
  ∀ n, (P13668441015220603343.a n : ℤ) = A004752 (n + 1)

end A004752

/-! ## A004752.P14315187946080163210

`lt[1, A056976(2*n+1)+1]`
-/

namespace A004752.P14315187946080163210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056976 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004752.P14315187946080163210

namespace A004752

/-- `lt[1, A056976(2*n+1)+1]` -/
def P14315187946080163210.Spec : Prop :=
  ∀ n, (P14315187946080163210.a n : ℤ) = A004752 (n + 1)

end A004752

/-! ## A004752.P13218320584459014657

`lt[A056977(2*n+1), A037800(n)]`
-/

namespace A004752.P13218320584459014657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056977 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004752.P13218320584459014657

namespace A004752

/-- `lt[A056977(2*n+1), A037800(n)]` -/
def P13218320584459014657.Spec : Prop :=
  ∀ n, (P13218320584459014657.a n : ℤ) = A004752 (n + 1)

end A004752

/-!
# A004753: Numbers whose binary expansion contains 100.

The programs for A004753, the canonical program `A004753.P13154151265503360218` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004753 has offset 1).

The definition of A004753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004753.P15715921988178090588

`comp[lt[and(n, or(n, 2*n)+2), 2]]`
-/

namespace A004753.P15715921988178090588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.lor n (2 * n) + 2)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004753.P15715921988178090588

namespace A004753

/-- `comp[lt[and(n, or(n, 2*n)+2), 2]]` -/
def P15715921988178090588.Spec : Prop :=
  ∀ n, (P15715921988178090588.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P13154151265503360218

`lt[or(n, floor(n/2))-n, (a(n-1)-1+n)%n]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004753

/-- `lt[or(n, floor(n/2))-n, (a(n-1)-1+n)%n]` -/
def P13154151265503360218.Spec : Prop :=
  ∀ n, (P13154151265503360218.a n : ℤ) = A004753 (n + 1)

theorem P13154151265503360218.correct : P13154151265503360218.Spec := by
  intro n
  simp only [A004753, Nat.add_sub_cancel]

end A004753

/-! ## A004753.P6716104983587361277

`lt[1, A334076(n)]`
-/

namespace A004753.P6716104983587361277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334076 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004753.P6716104983587361277

namespace A004753

/-- `lt[1, A334076(n)]` -/
def P6716104983587361277.Spec : Prop :=
  ∀ n, (P6716104983587361277.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P10560599440637302056

`comp[A003754(n+1)]`
-/

namespace A004753.P10560599440637302056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004753.P10560599440637302056

namespace A004753

/-- `comp[A003754(n+1)]` -/
def P10560599440637302056.Spec : Prop :=
  ∀ n, (P10560599440637302056.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P18341860902679474714

`comp[A052499(n)-1]`
-/

namespace A004753.P18341860902679474714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052499 n - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004753.P18341860902679474714

namespace A004753

/-- `comp[A052499(n)-1]` -/
def P18341860902679474714.Spec : Prop :=
  ∀ n, (P18341860902679474714.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P17505228527360868104

`lt[2, and(n, A269160(n))]`
-/

namespace A004753.P17505228527360868104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A269160 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004753.P17505228527360868104

namespace A004753

/-- `lt[2, and(n, A269160(n))]` -/
def P17505228527360868104.Spec : Prop :=
  ∀ n, (P17505228527360868104.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P3601251731588747811

`lt[2, A006530(or(n, 2*n)+gcd(2, n))]`
-/

namespace A004753.P3601251731588747811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.lor n (2 * n) + Nat.gcd 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004753.P3601251731588747811

namespace A004753

/-- `lt[2, A006530(or(n, 2*n)+gcd(2, n))]` -/
def P3601251731588747811.Spec : Prop :=
  ∀ n, (P3601251731588747811.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P9874642492643829026

`∪[A319302(n+1), A004779(n)]`
-/

namespace A004753.P9874642492643829026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004779 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004753.P9874642492643829026

namespace A004753

/-- `∪[A319302(n+1), A004779(n)]` -/
def P9874642492643829026.Spec : Prop :=
  ∀ n, (P9874642492643829026.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P2091289912366802448

`∪[A004751(n+1), A196032(n+1)]`
-/

namespace A004753.P2091289912366802448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004751 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004753.P2091289912366802448

namespace A004753

/-- `∪[A004751(n+1), A196032(n+1)]` -/
def P2091289912366802448.Spec : Prop :=
  ∀ n, (P2091289912366802448.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P15429042429097215261

`∪[A107911(n+1), A153034(n+1)]`
-/

namespace A004753.P15429042429097215261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107911 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004753.P15429042429097215261

namespace A004753

/-- `∪[A107911(n+1), A153034(n+1)]` -/
def P15429042429097215261.Spec : Prop :=
  ∀ n, (P15429042429097215261.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P2712484479514021404

`∪[A196032(n+1), A319302(n+1)]`
-/

namespace A004753.P2712484479514021404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319302 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004753.P2712484479514021404

namespace A004753

/-- `∪[A196032(n+1), A319302(n+1)]` -/
def P2712484479514021404.Spec : Prop :=
  ∀ n, (P2712484479514021404.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P2667928746225410592

`lt[A284580(n), A284579(n)]`
-/

namespace A004753.P2667928746225410592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284580 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004753.P2667928746225410592

namespace A004753

/-- `lt[A284580(n), A284579(n)]` -/
def P2667928746225410592.Spec : Prop :=
  ∀ n, (P2667928746225410592.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P13148150631250923714

`lt[0, A107782(n)]`
-/

namespace A004753.P13148150631250923714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004753.P13148150631250923714

namespace A004753

/-- `lt[0, A107782(n)]` -/
def P13148150631250923714.Spec : Prop :=
  ∀ n, (P13148150631250923714.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P1919042172004401360

`lt[1, A087117(n)]`
-/

namespace A004753.P1919042172004401360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004753.P1919042172004401360

namespace A004753

/-- `lt[1, A087117(n)]` -/
def P1919042172004401360.Spec : Prop :=
  ∀ n, (P1919042172004401360.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P655648032065970165

`lt[1, A056973(n+1)+1]+1`
-/

namespace A004753.P655648032065970165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056973 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004753.P655648032065970165

namespace A004753

/-- `lt[1, A056973(n+1)+1]+1` -/
def P655648032065970165.Spec : Prop :=
  ∀ n, (P655648032065970165.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P4629841133599198540

`lt[A087116(n), A023416(n)]`
-/

namespace A004753.P4629841133599198540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087116 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004753.P4629841133599198540

namespace A004753

/-- `lt[A087116(n), A023416(n)]` -/
def P4629841133599198540.Spec : Prop :=
  ∀ n, (P4629841133599198540.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P14052726399940636923

`eq[1, A000194(a(A087117(n)))]` with `a(0)=3, a(1)=3`
-/

namespace A004753.P14052726399940636923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3, 3] fun n f2 =>
  A000194 (f2 (A087117 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004753.P14052726399940636923

namespace A004753

/-- `eq[1, A000194(a(A087117(n)))]` -/
def P14052726399940636923.Spec : Prop :=
  ∀ n, (P14052726399940636923.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P14892033136512165803

`eq[A000038(n), A094497(A087117(n)+1)]`
-/

namespace A004753.P14892033136512165803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (A087117 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004753.P14892033136512165803

namespace A004753

/-- `eq[A000038(n), A094497(A087117(n)+1)]` -/
def P14892033136512165803.Spec : Prop :=
  ∀ n, (P14892033136512165803.a n : ℤ) = A004753 (n + 1)

end A004753

/-! ## A004753.P10867552011619242129

`eq[A000038(n), A094497(2*A087117(n))]`
-/

namespace A004753.P10867552011619242129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (2 * A087117 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004753.P10867552011619242129

namespace A004753

/-- `eq[A000038(n), A094497(2*A087117(n))]` -/
def P10867552011619242129.Spec : Prop :=
  ∀ n, (P10867552011619242129.a n : ℤ) = A004753 (n + 1)

end A004753

/-!
# A004754: Numbers whose binary expansion starts 10.

The programs for A004754, the canonical program `A004754.P4191440086301751928` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004754 has offset 1).

The definition of A004754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004754.P4191440086301751928

`n+1+2^floor(log2(n+1))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004754

/-- `n+1+2^floor(log2(n+1))` -/
def P4191440086301751928.Spec : Prop :=
  ∀ n, (P4191440086301751928.a n : ℤ) = A004754 (n + 1)

theorem P4191440086301751928.correct : P4191440086301751928.Spec := by
  intro n
  simp only [A004754, Nat.add_sub_cancel]

end A004754

/-! ## A004754.P16044652733532530456

`lt[n, xor(n, floor(n/2))]`
-/

namespace A004754.P16044652733532530456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004754.P16044652733532530456

namespace A004754

/-- `lt[n, xor(n, floor(n/2))]` -/
def P16044652733532530456.Spec : Prop :=
  ∀ n, (P16044652733532530456.a n : ℤ) = A004754 (n + 1)

end A004754

/-! ## A004754.P11261333865866382673

`lt[and(n, 2*n), floor(n/2)]`
-/

namespace A004754.P11261333865866382673
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004754.P11261333865866382673

namespace A004754

/-- `lt[and(n, 2*n), floor(n/2)]` -/
def P11261333865866382673.Spec : Prop :=
  ∀ n, (P11261333865866382673.a n : ℤ) = A004754 (n + 1)

end A004754

/-! ## A004754.P5744546979796752116

`lt[1, floor(a(floor(n/2)))]` with `a(0)=1, a(1)=1, a(2)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A004754.P5744546979796752116
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f2 =>
  f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004754.P5744546979796752116

namespace A004754

/-- `lt[1, floor(a(floor(n/2)))]` -/
def P5744546979796752116.Spec : Prop :=
  ∀ n, (P5744546979796752116.a n : ℤ) = A004754 (n + 1)

end A004754

/-! ## A004754.P11062211774271244373

`lt[2*and(n+1, 2*n), n]`
-/

namespace A004754.P11062211774271244373
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land (n + 1) (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004754.P11062211774271244373

namespace A004754

/-- `lt[2*and(n+1, 2*n), n]` -/
def P11062211774271244373.Spec : Prop :=
  ∀ n, (P11062211774271244373.a n : ℤ) = A004754 (n + 1)

end A004754

/-! ## A004754.P17044660895514773465

`lt[1, xor(n, 2*n)-2*n]`
-/

namespace A004754.P17044660895514773465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℤ) - (2 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004754.P17044660895514773465

namespace A004754

/-- `lt[1, xor(n, 2*n)-2*n]` -/
def P17044660895514773465.Spec : Prop :=
  ∀ n, (P17044660895514773465.a n : ℤ) = A004754 (n + 1)

end A004754

/-! ## A004754.P14288430929127701417

`lt[ϕ, (or(n+1, 2*n)/(2*n+1))²]`
-/

namespace A004754.P14288430929127701417
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor (n + 1) (2 * n) : ℚ) / (2 * n + 1 : ℚ)) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A004754.P14288430929127701417

namespace A004754

/-- `lt[ϕ, (or(n+1, 2*n)/(2*n+1))²]` -/
def P14288430929127701417.Spec : Prop :=
  ∀ n, (P14288430929127701417.a n : ℤ) = A004754 (n + 1)

end A004754

/-! ## A004754.P13535439929618013090

`eq[2*n+1, (2*n+1)%xor(n, 2*n+1)]`
-/

namespace A004754.P13535439929618013090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) % Nat.xor n (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004754.P13535439929618013090

namespace A004754

/-- `eq[2*n+1, (2*n+1)%xor(n, 2*n+1)]` -/
def P13535439929618013090.Spec : Prop :=
  ∀ n, (P13535439929618013090.a n : ℤ) = A004754 (n + 1)

end A004754

/-! ## A004754.P9821203890984854609

`lt[n, A003188(n)]`
-/

namespace A004754.P9821203890984854609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004754.P9821203890984854609

namespace A004754

/-- `lt[n, A003188(n)]` -/
def P9821203890984854609.Spec : Prop :=
  ∀ n, (P9821203890984854609.a n : ℤ) = A004754 (n + 1)

end A004754

/-! ## A004754.P3533010289191622582

`lt[n, A063946(n)]`
-/

namespace A004754.P3533010289191622582
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004754.P3533010289191622582

namespace A004754

/-- `lt[n, A063946(n)]` -/
def P3533010289191622582.Spec : Prop :=
  ∀ n, (P3533010289191622582.a n : ℤ) = A004754 (n + 1)

end A004754

/-! ## A004754.P13888528872952501342

`comp[record[A038572(n)]]`
-/

namespace A004754.P13888528872952501342
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004754.P13888528872952501342

namespace A004754

/-- `comp[record[A038572(n)]]` -/
def P13888528872952501342.Spec : Prop :=
  ∀ n, (P13888528872952501342.a n : ℤ) = A004754 (n + 1)

end A004754

/-! ## A004754.P1560098364178534888

`comp[A004760(n+1)]`
-/

namespace A004754.P1560098364178534888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004754.P1560098364178534888

namespace A004754

/-- `comp[A004760(n+1)]` -/
def P1560098364178534888.Spec : Prop :=
  ∀ n, (P1560098364178534888.a n : ℤ) = A004754 (n + 1)

end A004754

/-! ## A004754.P5610134209069226257

`∑[Δ[A053644(n)]+1]`
-/

namespace A004754.P5610134209069226257
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004754.P5610134209069226257

namespace A004754

/-- `∑[Δ[A053644(n)]+1]` -/
def P5610134209069226257.Spec : Prop :=
  ∀ n, P5610134209069226257.a n = A004754 (n + 1)

end A004754

/-! ## A004754.P11072772367278024264

`(A171763(n+1)-1)/2`
-/

namespace A004754.P11072772367278024264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A171763 (n + 1) - 1 : ℚ) / 2

end

end A004754.P11072772367278024264

namespace A004754

/-- `(A171763(n+1)-1)/2` -/
def P11072772367278024264.Spec : Prop :=
  ∀ n, P11072772367278024264.a n = (A004754 (n + 1) : ℚ)

end A004754

/-! ## A004754.P16416704019486911174

`(A004755(n+1)+n+1)/2`
-/

namespace A004754.P16416704019486911174
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004755 (n + 1) + (n + 1 : ℤ) : ℚ) / 2

end

end A004754.P16416704019486911174

namespace A004754

/-- `(A004755(n+1)+n+1)/2` -/
def P16416704019486911174.Spec : Prop :=
  ∀ n, P16416704019486911174.a n = (A004754 (n + 1) : ℚ)

theorem P16416704019486911174.correct : P16416704019486911174.Spec := by
  intro n
  simp only [A004754, Nat.add_sub_cancel, A004754.P16416704019486911174.a, A004754.P4191440086301751928.a, A004755, A004755.P18071614157387427853.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004754

/-! ## A004754.P5430489260995914065

`A063946(A004755(n+1))`
-/

namespace A004754.P5430489260995914065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A004755 (n + 1)).toNat

end

end A004754.P5430489260995914065

namespace A004754

/-- `A063946(A004755(n+1))` -/
def P5430489260995914065.Spec : Prop :=
  ∀ n, P5430489260995914065.a n = A004754 (n + 1)

end A004754

/-! ## A004754.P5138564975870769170

`A323234(A206332(n+1))`
-/

namespace A004754.P5138564975870769170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323234 (A206332 (n + 1)).toNat

end

end A004754.P5138564975870769170

namespace A004754

/-- `A323234(A206332(n+1))` -/
def P5138564975870769170.Spec : Prop :=
  ∀ n, P5138564975870769170.a n = A004754 (n + 1)

end A004754

/-! ## A004754.P1782335577257733397

`A063946(record[A063946(n+2)])`
-/

namespace A004754.P1782335577257733397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004754.P1782335577257733397

namespace A004754

/-- `A063946(record[A063946(n+2)])` -/
def P1782335577257733397.Spec : Prop :=
  ∀ n, P1782335577257733397.a n = A004754 (n + 1)

end A004754

/-! ## A004754.P7973461033386925346

`A079946(n+1)%A004756(n+1)`
-/

namespace A004754.P7973461033386925346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079946 (n + 1)) (A004756 (n + 1))

end

end A004754.P7973461033386925346

namespace A004754

/-- `A079946(n+1)%A004756(n+1)` -/
def P7973461033386925346.Spec : Prop :=
  ∀ n, P7973461033386925346.a n = A004754 (n + 1)

end A004754

/-!
# A004755: Binary expansion starts 11.

The programs for A004755, the canonical program `A004755.P18071614157387427853` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004755 has offset 1).

The definition of A004755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004755.P18071614157387427853

`n+1+2^(floor(log2(n+1))+1)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004755

/-- `n+1+2^(floor(log2(n+1))+1)` -/
def P18071614157387427853.Spec : Prop :=
  ∀ n, (P18071614157387427853.a n : ℤ) = A004755 (n + 1)

theorem P18071614157387427853.correct : P18071614157387427853.Spec := by
  intro n
  simp only [A004755, Nat.add_sub_cancel]

end A004755

/-! ## A004755.P18112240242358045456

`lt[xor(n, floor(n/2)), n]`
-/

namespace A004755.P18112240242358045456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004755.P18112240242358045456

namespace A004755

/-- `lt[xor(n, floor(n/2)), n]` -/
def P18112240242358045456.Spec : Prop :=
  ∀ n, (P18112240242358045456.a n : ℤ) = A004755 (n + 1)

end A004755

/-! ## A004755.P9997326008568759681

`lt[n, 2*and(n, 2*n)]`
-/

namespace A004755.P9997326008568759681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004755.P9997326008568759681

namespace A004755

/-- `lt[n, 2*and(n, 2*n)]` -/
def P9997326008568759681.Spec : Prop :=
  ∀ n, (P9997326008568759681.a n : ℤ) = A004755 (n + 1)

end A004755

/-! ## A004755.P333387088878696667

`lt[xor(n, 2*n)-n, n]`
-/

namespace A004755.P333387088878696667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (2 * n) : ℤ) - (n : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004755.P333387088878696667

namespace A004755

/-- `lt[xor(n, 2*n)-n, n]` -/
def P333387088878696667.Spec : Prop :=
  ∀ n, (P333387088878696667.a n : ℤ) = A004755 (n + 1)

end A004755

/-! ## A004755.P18268902749039467484

`lt[or(n, 2*n), n*ϕ²]`
-/

namespace A004755.P18268902749039467484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * n)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.goldenRatio ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A004755.P18268902749039467484

namespace A004755

/-- `lt[or(n, 2*n), n*ϕ²]` -/
def P18268902749039467484.Spec : Prop :=
  ∀ n, (P18268902749039467484.a n : ℤ) = A004755 (n + 1)

end A004755

/-! ## A004755.P3189918648131611182

`or(n+1, a(n-1)+1)` with `a(0)=3`
-/

namespace A004755.P3189918648131611182
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3] fun n a =>
  Nat.lor (n + 1) (a (n - 1) + 1)

end

end A004755.P3189918648131611182

namespace A004755

/-- `or(n+1, a(n-1)+1)` -/
def P3189918648131611182.Spec : Prop :=
  ∀ n, (P3189918648131611182.a n : ℤ) = A004755 (n + 1)

end A004755

/-! ## A004755.P1098144112937633040

`eq[1, floor((n+3)/and(2*n+1, n+1))]`
-/

namespace A004755.P1098144112937633040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 3 : ℚ) / (Nat.land (2 * n + 1) (n + 1) : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004755.P1098144112937633040

namespace A004755

/-- `eq[1, floor((n+3)/and(2*n+1, n+1))]` -/
def P1098144112937633040.Spec : Prop :=
  ∀ n, (P1098144112937633040.a n : ℤ) = A004755 (n + 1)

end A004755

/-! ## A004755.P10818156865803152712

`lt[1, A090996(n)]`
-/

namespace A004755.P10818156865803152712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004755.P10818156865803152712

namespace A004755

/-- `lt[1, A090996(n)]` -/
def P10818156865803152712.Spec : Prop :=
  ∀ n, (P10818156865803152712.a n : ℤ) = A004755 (n + 1)

end A004755

/-! ## A004755.P18095371058029822316

`lt[A003188(n), n]`
-/

namespace A004755.P18095371058029822316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004755.P18095371058029822316

namespace A004755

/-- `lt[A003188(n), n]` -/
def P18095371058029822316.Spec : Prop :=
  ∀ n, (P18095371058029822316.a n : ℤ) = A004755 (n + 1)

end A004755

/-! ## A004755.P3695009191280139947

`lt[A063946(n), n]`
-/

namespace A004755.P3695009191280139947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004755.P3695009191280139947

namespace A004755

/-- `lt[A063946(n), n]` -/
def P3695009191280139947.Spec : Prop :=
  ∀ n, (P3695009191280139947.a n : ℤ) = A004755 (n + 1)

end A004755

/-! ## A004755.P15263984407990297842

`record[A063946(n+2)]`
-/

namespace A004755.P15263984407990297842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004755.P15263984407990297842

namespace A004755

/-- `record[A063946(n+2)]` -/
def P15263984407990297842.Spec : Prop :=
  ∀ n, P15263984407990297842.a n = A004755 (n + 1)

end A004755

/-! ## A004755.P1506802923805108947

`A079946(n+1)/2`
-/

namespace A004755.P1506802923805108947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079946 (n + 1) : ℚ) / 2

end

end A004755.P1506802923805108947

namespace A004755

/-- `A079946(n+1)/2` -/
def P1506802923805108947.Spec : Prop :=
  ∀ n, P1506802923805108947.a n = (A004755 (n + 1) : ℚ)

theorem P1506802923805108947.correct : P1506802923805108947.Spec := by
  intro n
  simp only [A004755, Nat.add_sub_cancel, A004755.P1506802923805108947.a, A004755.P18071614157387427853.a, A079946, A079946.P6641926404484281.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004755

/-! ## A004755.P9017308166504578355

`(A346304(n+1)+1)/2`
-/

namespace A004755.P9017308166504578355
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A346304 (n + 1) + 1 : ℚ) / 2

end

end A004755.P9017308166504578355

namespace A004755

/-- `(A346304(n+1)+1)/2` -/
def P9017308166504578355.Spec : Prop :=
  ∀ n, P9017308166504578355.a n = (A004755 (n + 1) : ℚ)

end A004755

/-! ## A004755.P1972508682435024487

`A003188(A038558(n+1))`
-/

namespace A004755.P1972508682435024487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A038558 (n + 1)).toNat

end

end A004755.P1972508682435024487

namespace A004755

/-- `A003188(A038558(n+1))` -/
def P1972508682435024487.Spec : Prop :=
  ∀ n, P1972508682435024487.a n = A004755 (n + 1)

end A004755

/-! ## A004755.P3415644922740881433

`xor(A038712(n+1), A206332(n+1))`
-/

namespace A004755.P3415644922740881433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038712 (n + 1)) (A206332 (n + 1))

end

end A004755.P3415644922740881433

namespace A004755

/-- `xor(A038712(n+1), A206332(n+1))` -/
def P3415644922740881433.Spec : Prop :=
  ∀ n, P3415644922740881433.a n = A004755 (n + 1)

end A004755

/-! ## A004755.P14581015491183503371

`∪[A079946(n+1), A080565(n+1)]`
-/

namespace A004755.P14581015491183503371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004755.P14581015491183503371

namespace A004755

/-- `∪[A079946(n+1), A080565(n+1)]` -/
def P14581015491183503371.Spec : Prop :=
  ∀ n, (P14581015491183503371.a n : ℤ) = A004755 (n + 1)

end A004755

/-! ## A004755.P15198254774380393255

`∪[A004759(n+1), A318934(n+1)]`
-/

namespace A004755.P15198254774380393255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004755.P15198254774380393255

namespace A004755

/-- `∪[A004759(n+1), A318934(n+1)]` -/
def P15198254774380393255.Spec : Prop :=
  ∀ n, (P15198254774380393255.a n : ℤ) = A004755 (n + 1)

end A004755

/-! ## A004755.P17973360579669227982

`record[A038572(n+3)]`
-/

namespace A004755.P17973360579669227982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004755.P17973360579669227982

namespace A004755

/-- `record[A038572(n+3)]` -/
def P17973360579669227982.Spec : Prop :=
  ∀ n, P17973360579669227982.a n = A004755 (n + 1)

end A004755

/-! ## A004755.P12165205097500103031

`A038572(2*n+3)`
-/

namespace A004755.P12165205097500103031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (2 * n + 3)

end

end A004755.P12165205097500103031

namespace A004755

/-- `A038572(2*n+3)` -/
def P12165205097500103031.Spec : Prop :=
  ∀ n, P12165205097500103031.a n = A004755 (n + 1)

end A004755

/-!
# A004756: Binary expansion starts 100.

The programs for A004756, the canonical program `A004756.P4780538030628569258` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004756 has offset 1).

The definition of A004756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004756.P4780538030628569258

`n+1+3*2^floor(log2(n+1))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004756

/-- `n+1+3*2^floor(log2(n+1))` -/
def P4780538030628569258.Spec : Prop :=
  ∀ n, (P4780538030628569258.a n : ℤ) = A004756 (n + 1)

theorem P4780538030628569258.correct : P4780538030628569258.Spec := by
  intro n
  simp only [A004756, Nat.add_sub_cancel]

end A004756

/-! ## A004756.P8223042984221397572

`lt[n, xor(n, floor(n/3))]`
-/

namespace A004756.P8223042984221397572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 3⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004756.P8223042984221397572

namespace A004756

/-- `lt[n, xor(n, floor(n/3))]` -/
def P8223042984221397572.Spec : Prop :=
  ∀ n, (P8223042984221397572.a n : ℤ) = A004756 (n + 1)

end A004756

/-! ## A004756.P12026556961359169528

`lt[1, 2*a(floor(n/2))]` with `a(0)=1, a(1)=1, a(2)=1, a(3)=1, a(4)=2, a(5)=0, a(6)=0, a(7)=0`
-/

namespace A004756.P12026556961359169528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 1, 2, 0, 0, 0] fun n f2 =>
  2 * f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004756.P12026556961359169528

namespace A004756

/-- `lt[1, 2*a(floor(n/2))]` -/
def P12026556961359169528.Spec : Prop :=
  ∀ n, (P12026556961359169528.a n : ℤ) = A004756 (n + 1)

end A004756

/-! ## A004756.P12494463391520420989

`ceil((A004759(n+1)+n)/2)`
-/

namespace A004756.P12494463391520420989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A004759 (n + 1) + (n : ℤ) : ℚ) / 2⌉

end

end A004756.P12494463391520420989

namespace A004756

/-- `ceil((A004759(n+1)+n)/2)` -/
def P12494463391520420989.Spec : Prop :=
  ∀ n, P12494463391520420989.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P213267541459708588

`abs(A004754(n+1)-2*lt[n, 2*and(n, 2*n)])`
-/

namespace A004756.P213267541459708588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004754 (n + 1) - (2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ)|

end

end A004756.P213267541459708588

namespace A004756

/-- `abs(A004754(n+1)-2*lt[n, 2*and(n, 2*n)])` -/
def P213267541459708588.Spec : Prop :=
  ∀ n, P213267541459708588.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P3988882349382056367

`∑[A016777(Δ[A053644(n)])]`
-/

namespace A004756.P3988882349382056367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004756.P3988882349382056367

namespace A004756

/-- `∑[A016777(Δ[A053644(n)])]` -/
def P3988882349382056367.Spec : Prop :=
  ∀ n, P3988882349382056367.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P5910673700301733365

`and(A004757(n+1), A004758(n+1))`
-/

namespace A004756.P5910673700301733365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004757 (n + 1)) (A004758 (n + 1))

end

end A004756.P5910673700301733365

namespace A004756

/-- `and(A004757(n+1), A004758(n+1))` -/
def P5910673700301733365.Spec : Prop :=
  ∀ n, P5910673700301733365.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P1843613212594190693

`A063946(A004758(n+1))`
-/

namespace A004756.P1843613212594190693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A004758 (n + 1)).toNat

end

end A004756.P1843613212594190693

namespace A004756

/-- `A063946(A004758(n+1))` -/
def P1843613212594190693.Spec : Prop :=
  ∀ n, P1843613212594190693.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P627585128642769648

`A063946(A318934(n+2))`
-/

namespace A004756.P627585128642769648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A318934 (n + 2)).toNat

end

end A004756.P627585128642769648

namespace A004756

/-- `A063946(A318934(n+2))` -/
def P627585128642769648.Spec : Prop :=
  ∀ n, P627585128642769648.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P4388197249715801404

`record[A057115(n+2)]`
-/

namespace A004756.P4388197249715801404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057115 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004756.P4388197249715801404

namespace A004756

/-- `record[A057115(n+2)]` -/
def P4388197249715801404.Spec : Prop :=
  ∀ n, P4388197249715801404.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P11417825914534604467

`A004754(A004754(n+1))`
-/

namespace A004756.P11417825914534604467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A004754 (n + 1)).toNat

end

end A004756.P11417825914534604467

namespace A004756

/-- `A004754(A004754(n+1))` -/
def P11417825914534604467.Spec : Prop :=
  ∀ n, P11417825914534604467.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P6164702676169461514

`A092754(A092754(n+1)+2)`
-/

namespace A004756.P6164702676169461514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (A092754 (n + 1) + 2).toNat

end

end A004756.P6164702676169461514

namespace A004756

/-- `A092754(A092754(n+1)+2)` -/
def P6164702676169461514.Spec : Prop :=
  ∀ n, P6164702676169461514.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P5347558801871245558

`comp[A004762(n+1)]`
-/

namespace A004756.P5347558801871245558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004756.P5347558801871245558

namespace A004756

/-- `comp[A004762(n+1)]` -/
def P5347558801871245558.Spec : Prop :=
  ∀ n, (P5347558801871245558.a n : ℤ) = A004756 (n + 1)

end A004756

/-! ## A004756.P9499857867169303822

`A088720(A004755(n+1))`
-/

namespace A004756.P9499857867169303822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088720 (A004755 (n + 1)).toNat

end

end A004756.P9499857867169303822

namespace A004756

/-- `A088720(A004755(n+1))` -/
def P9499857867169303822.Spec : Prop :=
  ∀ n, P9499857867169303822.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P5905800473299160978

`A023443(A304588(n+2))`
-/

namespace A004756.P5905800473299160978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A304588 (n + 2)).toNat

end

end A004756.P5905800473299160978

namespace A004756

/-- `A023443(A304588(n+2))` -/
def P5905800473299160978.Spec : Prop :=
  ∀ n, P5905800473299160978.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P3105961775439821406

`A080542(A171757(n+2))`
-/

namespace A004756.P3105961775439821406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (A171757 (n + 2)).toNat

end

end A004756.P3105961775439821406

namespace A004756

/-- `A080542(A171757(n+2))` -/
def P3105961775439821406.Spec : Prop :=
  ∀ n, P3105961775439821406.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P5994955696532131407

`A132196(A132196(2*n+1)+n+2)`
-/

namespace A004756.P5994955696532131407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132196 (A132196 (2 * n + 1) + (n + 2 : ℤ)).toNat

end

end A004756.P5994955696532131407

namespace A004756

/-- `A132196(A132196(2*n+1)+n+2)` -/
def P5994955696532131407.Spec : Prop :=
  ∀ n, P5994955696532131407.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P2664134624201112133

`A080544(4*(n+1))`
-/

namespace A004756.P2664134624201112133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080544 (4 * (n + 1))

end

end A004756.P2664134624201112133

namespace A004756

/-- `A080544(4*(n+1))` -/
def P2664134624201112133.Spec : Prop :=
  ∀ n, P2664134624201112133.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P13271474448046099907

`A080542(A080542(4*(n+1)))`
-/

namespace A004756.P13271474448046099907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080542 (A080542 (4 * (n + 1))).toNat

end

end A004756.P13271474448046099907

namespace A004756

/-- `A080542(A080542(4*(n+1)))` -/
def P13271474448046099907.Spec : Prop :=
  ∀ n, P13271474448046099907.a n = A004756 (n + 1)

end A004756

/-! ## A004756.P16122407894000419696

`A132196(A132196(4*(n+1)))`
-/

namespace A004756.P16122407894000419696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132196 (A132196 (4 * (n + 1))).toNat

end

end A004756.P16122407894000419696

namespace A004756

/-- `A132196(A132196(4*(n+1)))` -/
def P16122407894000419696.Spec : Prop :=
  ∀ n, P16122407894000419696.a n = A004756 (n + 1)

end A004756

/-!
# A004757: Binary expansion starts 101.

The programs for A004757, the canonical program `A004757.P10177305203362355634` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004757 has offset 1).

The definition of A004757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004757.P10177305203362355634

`n+1+4*2^floor(log2(n+1))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004757

/-- `n+1+4*2^floor(log2(n+1))` -/
def P10177305203362355634.Spec : Prop :=
  ∀ n, (P10177305203362355634.a n : ℤ) = A004757 (n + 1)

theorem P10177305203362355634.correct : P10177305203362355634.Spec := by
  intro n
  simp only [A004757, Nat.add_sub_cancel]

end A004757

/-! ## A004757.P2051448835166504157

`eq[1, a(floor(n/2))%2]` with `a(0)=17, a(1)=7, a(2)=41, a(3)=-4, a(4)=8`
-/

namespace A004757.P2051448835166504157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [17, 7, 41, -4, 8] fun n f2 =>
  Int.tmod (f2 ⌊(n : ℚ) / 2⌋.toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004757.P2051448835166504157

namespace A004757

/-- `eq[1, a(floor(n/2))%2]` -/
def P2051448835166504157.Spec : Prop :=
  ∀ n, (P2051448835166504157.a n : ℤ) = A004757 (n + 1)

end A004757

/-! ## A004757.P11090659012806204771

`abs(A346304(n+1)-n)`
-/

namespace A004757.P11090659012806204771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A346304 (n + 1) - (n : ℤ)|

end

end A004757.P11090659012806204771

namespace A004757

/-- `abs(A346304(n+1)-n)` -/
def P11090659012806204771.Spec : Prop :=
  ∀ n, P11090659012806204771.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P13733097169194418776

`or(n+1, A004756(n+1))`
-/

namespace A004757.P13733097169194418776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A004756 (n + 1))

end

end A004757.P13733097169194418776

namespace A004757

/-- `or(n+1, A004756(n+1))` -/
def P13733097169194418776.Spec : Prop :=
  ∀ n, P13733097169194418776.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P15190979155379526026

`∑[A016813(Δ[A053644(n)])]`
-/

namespace A004757.P15190979155379526026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004757.P15190979155379526026

namespace A004757

/-- `∑[A016813(Δ[A053644(n)])]` -/
def P15190979155379526026.Spec : Prop :=
  ∀ n, P15190979155379526026.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P5144881975020709806

`A000027(A346304(n+1)-n)`
-/

namespace A004757.P5144881975020709806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A346304 (n + 1) - (n : ℤ)).toNat

end

end A004757.P5144881975020709806

namespace A004757

/-- `A000027(A346304(n+1)-n)` -/
def P5144881975020709806.Spec : Prop :=
  ∀ n, P5144881975020709806.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P15446353425341880649

`(A004758(n+1)+A004756(n+1))/2`
-/

namespace A004757.P15446353425341880649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004758 (n + 1) + A004756 (n + 1) : ℚ) / 2

end

end A004757.P15446353425341880649

namespace A004757

/-- `(A004758(n+1)+A004756(n+1))/2` -/
def P15446353425341880649.Spec : Prop :=
  ∀ n, P15446353425341880649.a n = (A004757 (n + 1) : ℚ)

theorem P15446353425341880649.correct : P15446353425341880649.Spec := by
  intro n
  simp only [A004757, Nat.add_sub_cancel, A004757.P15446353425341880649.a, A004757.P10177305203362355634.a, A004756, A004756.P4780538030628569258.a, A004758, A004758.P18199958472809387180.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004757

/-! ## A004757.P11350346241974693196

`A063946(A004759(n+1))`
-/

namespace A004757.P11350346241974693196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A004759 (n + 1)).toNat

end

end A004757.P11350346241974693196

namespace A004757

/-- `A063946(A004759(n+1))` -/
def P11350346241974693196.Spec : Prop :=
  ∀ n, P11350346241974693196.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P11586043690712233401

`or(n+1, A004754(A004754(n+1)))`
-/

namespace A004757.P11586043690712233401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A004754 (A004754 (n + 1)).toNat)

end

end A004757.P11586043690712233401

namespace A004757

/-- `or(n+1, A004754(A004754(n+1)))` -/
def P11586043690712233401.Spec : Prop :=
  ∀ n, P11586043690712233401.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P7814628740021082831

`or(n+1, A307313(2*(n+1)+1))`
-/

namespace A004757.P7814628740021082831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A307313 (2 * (n + 1) + 1))

end

end A004757.P7814628740021082831

namespace A004757

/-- `or(n+1, A307313(2*(n+1)+1))` -/
def P7814628740021082831.Spec : Prop :=
  ∀ n, P7814628740021082831.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P3523870651313702239

`comp[A004763(n+1)]`
-/

namespace A004757.P3523870651313702239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004757.P3523870651313702239

namespace A004757

/-- `comp[A004763(n+1)]` -/
def P3523870651313702239.Spec : Prop :=
  ∀ n, (P3523870651313702239.a n : ℤ) = A004757 (n + 1)

end A004757

/-! ## A004757.P11403539202956070560

`A004754(A004755(n+1))`
-/

namespace A004757.P11403539202956070560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A004755 (n + 1)).toNat

end

end A004757.P11403539202956070560

namespace A004757

/-- `A004754(A004755(n+1))` -/
def P11403539202956070560.Spec : Prop :=
  ∀ n, P11403539202956070560.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P14691844677167274956

`A269164(A304588(n+2))`
-/

namespace A004757.P14691844677167274956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269164 (A304588 (n + 2)).toNat

end

end A004757.P14691844677167274956

namespace A004757

/-- `A269164(A304588(n+2))` -/
def P14691844677167274956.Spec : Prop :=
  ∀ n, P14691844677167274956.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P5420305726774522574

`A004754(comp[A004761(n+1)])`
-/

namespace A004757.P5420305726774522574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A004757.P5420305726774522574

namespace A004757

/-- `A004754(comp[A004761(n+1)])` -/
def P5420305726774522574.Spec : Prop :=
  ∀ n, P5420305726774522574.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P3753803356991109096

`A004754(A206332(n+1)+1)`
-/

namespace A004757.P3753803356991109096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A206332 (n + 1) + 1).toNat

end

end A004757.P3753803356991109096

namespace A004757

/-- `A004754(A206332(n+1)+1)` -/
def P3753803356991109096.Spec : Prop :=
  ∀ n, P3753803356991109096.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P5552740098933508050

`A004761(A004755(n+1)+2)`
-/

namespace A004757.P5552740098933508050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (A004755 (n + 1) + 2).toNat

end

end A004757.P5552740098933508050

namespace A004757

/-- `A004761(A004755(n+1)+2)` -/
def P5552740098933508050.Spec : Prop :=
  ∀ n, P5552740098933508050.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P7328997151909106596

`A004762(A004755(n+1)+2)`
-/

namespace A004757.P7328997151909106596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004762 (A004755 (n + 1) + 2).toNat

end

end A004757.P7328997151909106596

namespace A004757

/-- `A004762(A004755(n+1)+2)` -/
def P7328997151909106596.Spec : Prop :=
  ∀ n, P7328997151909106596.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P2544109528735026750

`A010078(A010078(n+2)+1)`
-/

namespace A004757.P2544109528735026750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A010078 (n + 2) + 1).toNat

end

end A004757.P2544109528735026750

namespace A004757

/-- `A010078(A010078(n+2)+1)` -/
def P2544109528735026750.Spec : Prop :=
  ∀ n, P2544109528735026750.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P14905780903799275222

`A004754(A079946(n+1)/2)`
-/

namespace A004757.P14905780903799275222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (SequenceMachineLib.roundAway ((A079946 (n + 1) : ℚ) / 2)).toNat

end

end A004757.P14905780903799275222

namespace A004757

/-- `A004754(A079946(n+1)/2)` -/
def P14905780903799275222.Spec : Prop :=
  ∀ n, P14905780903799275222.a n = A004757 (n + 1)

end A004757

/-! ## A004757.P15081539745082475956

`A004754(A076877(n+1)+n)`
-/

namespace A004757.P15081539745082475956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A076877 (n + 1) + (n : ℤ)).toNat

end

end A004757.P15081539745082475956

namespace A004757

/-- `A004754(A076877(n+1)+n)` -/
def P15081539745082475956.Spec : Prop :=
  ∀ n, P15081539745082475956.a n = A004757 (n + 1)

end A004757

/-!
# A004758: Binary expansion starts 110.

The programs for A004758, the canonical program `A004758.P18199958472809387180` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004758 has offset 1).

The definition of A004758 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004758.P18199958472809387180

`n+1+5*2^floor(log2(n+1))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004758

/-- `n+1+5*2^floor(log2(n+1))` -/
def P18199958472809387180.Spec : Prop :=
  ∀ n, (P18199958472809387180.a n : ℤ) = A004758 (n + 1)

theorem P18199958472809387180.correct : P18199958472809387180.Spec := by
  intro n
  simp only [A004758, Nat.add_sub_cancel]

end A004758

/-! ## A004758.P11638349402009462621

`(A004759(n+1)+A004757(n+1))/2`
-/

namespace A004758.P11638349402009462621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004759 (n + 1) + A004757 (n + 1) : ℚ) / 2

end

end A004758.P11638349402009462621

namespace A004758

/-- `(A004759(n+1)+A004757(n+1))/2` -/
def P11638349402009462621.Spec : Prop :=
  ∀ n, P11638349402009462621.a n = (A004758 (n + 1) : ℚ)

theorem P11638349402009462621.correct : P11638349402009462621.Spec := by
  intro n
  simp only [A004758, Nat.add_sub_cancel, A004758.P11638349402009462621.a, A004758.P18199958472809387180.a, A004757, A004757.P10177305203362355634.a, A004759, A004759.P11862259845922477715.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004758

/-! ## A004758.P1293084737966186408

`A318934(n+2)`
-/

namespace A004758.P1293084737966186408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318934 (n + 2)

end

end A004758.P1293084737966186408

namespace A004758

/-- `A318934(n+2)` -/
def P1293084737966186408.Spec : Prop :=
  ∀ n, P1293084737966186408.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P13730535442347183432

`A004755(A004754(n+1))`
-/

namespace A004758.P13730535442347183432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A004754 (n + 1)).toNat

end

end A004758.P13730535442347183432

namespace A004758

/-- `A004755(A004754(n+1))` -/
def P13730535442347183432.Spec : Prop :=
  ∀ n, P13730535442347183432.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P9226919316035280912

`A004755(A092754(n+1)+1)`
-/

namespace A004758.P9226919316035280912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A092754 (n + 1) + 1).toNat

end

end A004758.P9226919316035280912

namespace A004758

/-- `A004755(A092754(n+1)+1)` -/
def P9226919316035280912.Spec : Prop :=
  ∀ n, P9226919316035280912.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P4196052128771990936

`A004755(A053644(n+1)+n+1)`
-/

namespace A004758.P4196052128771990936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A053644 (n + 1) + (n + 1 : ℤ)).toNat

end

end A004758.P4196052128771990936

namespace A004758

/-- `A004755(A053644(n+1)+n+1)` -/
def P4196052128771990936.Spec : Prop :=
  ∀ n, P4196052128771990936.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P14801884934724189780

`A038572(A171763(n+1))`
-/

namespace A004758.P14801884934724189780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A171763 (n + 1)).toNat

end

end A004758.P14801884934724189780

namespace A004758

/-- `A038572(A171763(n+1))` -/
def P14801884934724189780.Spec : Prop :=
  ∀ n, P14801884934724189780.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P11560931900358409152

`A206332(A004754(n+1)+1)`
-/

namespace A004758.P11560931900358409152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (A004754 (n + 1) + 1).toNat

end

end A004758.P11560931900358409152

namespace A004758

/-- `A206332(A004754(n+1)+1)` -/
def P11560931900358409152.Spec : Prop :=
  ∀ n, P11560931900358409152.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P2040440792482146531

`A206332(A092754(n+1)+2)`
-/

namespace A004758.P2040440792482146531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (A092754 (n + 1) + 2).toNat

end

end A004758.P2040440792482146531

namespace A004758

/-- `A206332(A092754(n+1)+2)` -/
def P2040440792482146531.Spec : Prop :=
  ∀ n, P2040440792482146531.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P7208068047858695138

`A206332(A053644(n+1)+n+2)`
-/

namespace A004758.P7208068047858695138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (A053644 (n + 1) + (n + 2 : ℤ)).toNat

end

end A004758.P7208068047858695138

namespace A004758

/-- `A206332(A053644(n+1)+n+2)` -/
def P7208068047858695138.Spec : Prop :=
  ∀ n, P7208068047858695138.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P12478645688677400867

`A004760(A004754(n+1)+2)`
-/

namespace A004758.P12478645688677400867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (A004754 (n + 1) + 2).toNat

end

end A004758.P12478645688677400867

namespace A004758

/-- `A004760(A004754(n+1)+2)` -/
def P12478645688677400867.Spec : Prop :=
  ∀ n, P12478645688677400867.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P11138289691220956758

`A007378(A004756(n+1))`
-/

namespace A004758.P11138289691220956758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007378 (A004756 (n + 1)).toNat

end

end A004758.P11138289691220956758

namespace A004758

/-- `A007378(A004756(n+1))` -/
def P11138289691220956758.Spec : Prop :=
  ∀ n, P11138289691220956758.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P11318017670045410979

`A115836(A304588(n+2))`
-/

namespace A004758.P11318017670045410979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115836 (A304588 (n + 2)).toNat

end

end A004758.P11318017670045410979

namespace A004758

/-- `A115836(A304588(n+2))` -/
def P11318017670045410979.Spec : Prop :=
  ∀ n, P11318017670045410979.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P1451574199492697234

`A004762(A004756(n+1)+2)`
-/

namespace A004758.P1451574199492697234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004762 (A004756 (n + 1) + 2).toNat

end

end A004758.P1451574199492697234

namespace A004758

/-- `A004762(A004756(n+1)+2)` -/
def P1451574199492697234.Spec : Prop :=
  ∀ n, P1451574199492697234.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P2344234759315294061

`A004762(A304588(n+2)+1)`
-/

namespace A004758.P2344234759315294061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004762 (A304588 (n + 2) + 1).toNat

end

end A004758.P2344234759315294061

namespace A004758

/-- `A004762(A304588(n+2)+1)` -/
def P2344234759315294061.Spec : Prop :=
  ∀ n, P2344234759315294061.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P6154724448365930883

`A080544(Δ[2*(n+1)²])`
-/

namespace A004758.P6154724448365930883
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080544 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A004758.P6154724448365930883

namespace A004758

/-- `A080544(Δ[2*(n+1)²])` -/
def P6154724448365930883.Spec : Prop :=
  ∀ n, P6154724448365930883.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P10981377185215577014

`comp[A004764(n+1)]`
-/

namespace A004758.P10981377185215577014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004764 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004758.P10981377185215577014

namespace A004758

/-- `comp[A004764(n+1)]` -/
def P10981377185215577014.Spec : Prop :=
  ∀ n, (P10981377185215577014.a n : ℤ) = A004758 (n + 1)

end A004758

/-! ## A004758.P4224195754882732151

`A316385(Δ[2*(n+1)²])`
-/

namespace A004758.P4224195754882732151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316385 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A004758.P4224195754882732151

namespace A004758

/-- `A316385(Δ[2*(n+1)²])` -/
def P4224195754882732151.Spec : Prop :=
  ∀ n, P4224195754882732151.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P17974278451968785914

`A057114(A004757(n+1))`
-/

namespace A004758.P17974278451968785914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (A004757 (n + 1)).toNat

end

end A004758.P17974278451968785914

namespace A004758

/-- `A057114(A004757(n+1))` -/
def P17974278451968785914.Spec : Prop :=
  ∀ n, P17974278451968785914.a n = A004758 (n + 1)

end A004758

/-! ## A004758.P3170308733099371485

`eq[A060576(n), A153036(n)]`
-/

namespace A004758.P3170308733099371485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004758.P3170308733099371485

namespace A004758

/-- `eq[A060576(n), A153036(n)]` -/
def P3170308733099371485.Spec : Prop :=
  ∀ n, (P3170308733099371485.a n : ℤ) = A004758 (n + 1)

end A004758

/-!
# A004759: Binary expansion starts 111.

The programs for A004759, the canonical program `A004759.P11862259845922477715` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004759 has offset 1).

The definition of A004759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004759.P11862259845922477715

`n+1+6*2^floor(log2(n+1))`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004759

/-- `n+1+6*2^floor(log2(n+1))` -/
def P11862259845922477715.Spec : Prop :=
  ∀ n, (P11862259845922477715.a n : ℤ) = A004759 (n + 1)

theorem P11862259845922477715.correct : P11862259845922477715.Spec := by
  intro n
  simp only [A004759, Nat.add_sub_cancel]

end A004759

/-! ## A004759.P7071343355785132937

`or(n+1, A004758(n+1))`
-/

namespace A004759.P7071343355785132937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A004758 (n + 1))

end

end A004759.P7071343355785132937

namespace A004759

/-- `or(n+1, A004758(n+1))` -/
def P7071343355785132937.Spec : Prop :=
  ∀ n, P7071343355785132937.a n = A004759 (n + 1)

end A004759

/-! ## A004759.P14624974387133927134

`or(2^floor(log2(n+1))+n+1, A004757(n+1))`
-/

namespace A004759.P14624974387133927134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ Nat.log 2 (n + 1) + (n + 1) : ℤ) (A004757 (n + 1))

end

end A004759.P14624974387133927134

namespace A004759

/-- `or(2^floor(log2(n+1))+n+1, A004757(n+1))` -/
def P14624974387133927134.Spec : Prop :=
  ∀ n, P14624974387133927134.a n = A004759 (n + 1)

end A004759

/-! ## A004759.P17613545773619577306

`or(n+1, A318934(n+2))`
-/

namespace A004759.P17613545773619577306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n + 1 : ℤ) (A318934 (n + 2))

end

end A004759.P17613545773619577306

namespace A004759

/-- `or(n+1, A318934(n+2))` -/
def P17613545773619577306.Spec : Prop :=
  ∀ n, P17613545773619577306.a n = A004759 (n + 1)

end A004759

/-! ## A004759.P10443115842130962824

`lt[xor(n, 2*n)², 2*n²]`
-/

namespace A004759.P10443115842130962824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004759.P10443115842130962824

namespace A004759

/-- `lt[xor(n, 2*n)², 2*n²]` -/
def P10443115842130962824.Spec : Prop :=
  ∀ n, (P10443115842130962824.a n : ℤ) = A004759 (n + 1)

end A004759

/-! ## A004759.P6173539289281742249

`lt[4*and(n, -(2*n+1)), n]`
-/

namespace A004759.P6173539289281742249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004759.P6173539289281742249

namespace A004759

/-- `lt[4*and(n, -(2*n+1)), n]` -/
def P6173539289281742249.Spec : Prop :=
  ∀ n, (P6173539289281742249.a n : ℤ) = A004759 (n + 1)

end A004759

/-! ## A004759.P1780471234192379780

`lt[2*n, ϕ²*and(n, 2*n)]`
-/

namespace A004759.P1780471234192379780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 * (Nat.land n (2 * n) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A004759.P1780471234192379780

namespace A004759

/-- `lt[2*n, ϕ²*and(n, 2*n)]` -/
def P1780471234192379780.Spec : Prop :=
  ∀ n, (P1780471234192379780.a n : ℤ) = A004759 (n + 1)

end A004759

/-! ## A004759.P6477697635073194657

`lt[and(2*n, -n), 2*n/ϕ]`
-/

namespace A004759.P6477697635073194657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 * n : ℝ) / Real.goldenRatio

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A004759.P6477697635073194657

namespace A004759

/-- `lt[and(2*n, -n), 2*n/ϕ]` -/
def P6477697635073194657.Spec : Prop :=
  ∀ n, (P6477697635073194657.a n : ℤ) = A004759 (n + 1)

end A004759

/-! ## A004759.P11285680401151449323

`A004755(A004755(n+1))`
-/

namespace A004759.P11285680401151449323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A004755 (n + 1)).toNat

end

end A004759.P11285680401151449323

namespace A004759

/-- `A004755(A004755(n+1))` -/
def P11285680401151449323.Spec : Prop :=
  ∀ n, P11285680401151449323.a n = A004759 (n + 1)

end A004759

/-! ## A004759.P4732681920185403774

`record[A057114(n+3)]`
-/

namespace A004759.P4732681920185403774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004759.P4732681920185403774

namespace A004759

/-- `record[A057114(n+3)]` -/
def P4732681920185403774.Spec : Prop :=
  ∀ n, P4732681920185403774.a n = A004759 (n + 1)

end A004759

/-! ## A004759.P12081843470762426041

`A038572(A080565(n+2))`
-/

namespace A004759.P12081843470762426041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A080565 (n + 2)).toNat

end

end A004759.P12081843470762426041

namespace A004759

/-- `A038572(A080565(n+2))` -/
def P12081843470762426041.Spec : Prop :=
  ∀ n, P12081843470762426041.a n = A004759 (n + 1)

end A004759

/-! ## A004759.P7043891423474164081

`A004760(A171763(n+1)-n)`
-/

namespace A004759.P7043891423474164081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (A171763 (n + 1) - (n : ℤ)).toNat

end

end A004759.P7043891423474164081

namespace A004759

/-- `A004760(A171763(n+1)-n)` -/
def P7043891423474164081.Spec : Prop :=
  ∀ n, P7043891423474164081.a n = A004759 (n + 1)

end A004759

/-! ## A004759.P4526617260041508993

`A004760(A076877(n+1)+n+2)`
-/

namespace A004759.P4526617260041508993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (A076877 (n + 1) + (n + 2 : ℤ)).toNat

end

end A004759.P4526617260041508993

namespace A004759

/-- `A004760(A076877(n+1)+n+2)` -/
def P4526617260041508993.Spec : Prop :=
  ∀ n, P4526617260041508993.a n = A004759 (n + 1)

end A004759

/-! ## A004759.P8568422218483313759

`A080544(A004767(n+1))`
-/

namespace A004759.P8568422218483313759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080544 (A004767 (n + 1)).toNat

end

end A004759.P8568422218483313759

namespace A004759

/-- `A080544(A004767(n+1))` -/
def P8568422218483313759.Spec : Prop :=
  ∀ n, P8568422218483313759.a n = A004759 (n + 1)

end A004759

/-! ## A004759.P6822246874093966998

`comp[A004765(n+1)]`
-/

namespace A004759.P6822246874093966998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004759.P6822246874093966998

namespace A004759

/-- `comp[A004765(n+1)]` -/
def P6822246874093966998.Spec : Prop :=
  ∀ n, (P6822246874093966998.a n : ℤ) = A004759 (n + 1)

end A004759

/-! ## A004759.P17575874017386595042

`A007378(A004757(n+1))`
-/

namespace A004759.P17575874017386595042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007378 (A004757 (n + 1)).toNat

end

end A004759.P17575874017386595042

namespace A004759

/-- `A007378(A004757(n+1))` -/
def P17575874017386595042.Spec : Prop :=
  ∀ n, P17575874017386595042.a n = A004759 (n + 1)

end A004759

/-! ## A004759.P10283698311454272539

`A004762(A004757(n+1)+2)`
-/

namespace A004759.P10283698311454272539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004762 (A004757 (n + 1) + 2).toNat

end

end A004759.P10283698311454272539

namespace A004759

/-- `A004762(A004757(n+1)+2)` -/
def P10283698311454272539.Spec : Prop :=
  ∀ n, P10283698311454272539.a n = A004759 (n + 1)

end A004759

/-! ## A004759.P3972623321575021807

`A059894(4*A059894(n+1))`
-/

namespace A004759.P3972623321575021807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059894 (4 * A059894 (n + 1)).toNat

end

end A004759.P3972623321575021807

namespace A004759

/-- `A059894(4*A059894(n+1))` -/
def P3972623321575021807.Spec : Prop :=
  ∀ n, P3972623321575021807.a n = A004759 (n + 1)

end A004759

/-! ## A004759.P7538210247927982241

`A079946(A079946(n+1))/4`
-/

namespace A004759.P7538210247927982241
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079946 (A079946 (n + 1)).toNat : ℚ) / 4

end

end A004759.P7538210247927982241

namespace A004759

/-- `A079946(A079946(n+1))/4` -/
def P7538210247927982241.Spec : Prop :=
  ∀ n, P7538210247927982241.a n = (A004759 (n + 1) : ℚ)

end A004759

/-! ## A004759.P2142896249922567087

`A079905(A346304(n+1)-n)`
-/

namespace A004759.P2142896249922567087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079905 (A346304 (n + 1) - (n : ℤ)).toNat

end

end A004759.P2142896249922567087

namespace A004759

/-- `A079905(A346304(n+1)-n)` -/
def P2142896249922567087.Spec : Prop :=
  ∀ n, P2142896249922567087.a n = A004759 (n + 1)

end A004759

/-!
# A004760: List of numbers whose binary expansion does not begin 10.

The programs for A004760, the canonical program `A004760.P18986604660661848` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004760 has offset 1).

The definition of A004760 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004760.P18986604660661848

`lt[xor(n, floor(n/2)), n+1]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004760

/-- `lt[xor(n, floor(n/2)), n+1]` -/
def P18986604660661848.Spec : Prop :=
  ∀ n, (P18986604660661848.a n : ℤ) = A004760 (n + 1)

theorem P18986604660661848.correct : P18986604660661848.Spec := by
  intro n
  simp only [A004760, Nat.add_sub_cancel]

end A004760

/-! ## A004760.P5037292790445682219

`lt[xor(n, floor(n/2))-1, n]`
-/

namespace A004760.P5037292790445682219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ - 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004760.P5037292790445682219

namespace A004760

/-- `lt[xor(n, floor(n/2))-1, n]` -/
def P5037292790445682219.Spec : Prop :=
  ∀ n, (P5037292790445682219.a n : ℤ) = A004760 (n + 1)

theorem P5037292790445682219.correct : P5037292790445682219.Spec := by
  intro n
  simp only [A004760, Nat.add_sub_cancel, A004760.P5037292790445682219.f1, A004760.P5037292790445682219.f2, A004760.P5037292790445682219.a, A004760.P18986604660661848.f1, A004760.P18986604660661848.f2, A004760.P18986604660661848.a, SequenceMachineLib.memo_apply]
  try simp

end A004760

/-! ## A004760.P10067061023397440795

`or(a(n-1)+1, n-1)` with `a(0)=0`
-/

namespace A004760.P10067061023397440795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (a (n - 1) + 1) ((n : ℤ) - 1)

end

end A004760.P10067061023397440795

namespace A004760

/-- `or(a(n-1)+1, n-1)` -/
def P10067061023397440795.Spec : Prop :=
  ∀ n, P10067061023397440795.a n = A004760 (n + 1)

end A004760

/-! ## A004760.P17277154281238746848

`lt[n-2, 2*and(n, 2*n)]`
-/

namespace A004760.P17277154281238746848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004760.P17277154281238746848

namespace A004760

/-- `lt[n-2, 2*and(n, 2*n)]` -/
def P17277154281238746848.Spec : Prop :=
  ∀ n, (P17277154281238746848.a n : ℤ) = A004760 (n + 1)

end A004760

/-! ## A004760.P12860514132817924337

`eq[0, 2*a(floor(n/2))]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A004760.P12860514132817924337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f2 =>
  2 * f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004760.P12860514132817924337

namespace A004760

/-- `eq[0, 2*a(floor(n/2))]` -/
def P12860514132817924337.Spec : Prop :=
  ∀ n, (P12860514132817924337.a n : ℤ) = A004760 (n + 1)

end A004760

/-! ## A004760.P880497646742775015

`lt[n/and(2*n+1, n+1), 2]`
-/

namespace A004760.P880497646742775015
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.land (2 * n + 1) (n + 1) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A004760.P880497646742775015

namespace A004760

/-- `lt[n/and(2*n+1, n+1), 2]` -/
def P880497646742775015.Spec : Prop :=
  ∀ n, (P880497646742775015.a n : ℤ) = A004760 (n + 1)

end A004760

/-! ## A004760.P5704543239081935615

`∑[floor(n/(and(n-1, n-2)+1))]`
-/

namespace A004760.P5704543239081935615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (Int.land ((n : ℤ) - 1) ((n : ℤ) - 2) + 1 : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004760.P5704543239081935615

namespace A004760

/-- `∑[floor(n/(and(n-1, n-2)+1))]` -/
def P5704543239081935615.Spec : Prop :=
  ∀ n, P5704543239081935615.a n = A004760 (n + 1)

end A004760

/-! ## A004760.P12058756276303376759

`lt[2*and(n, -(2*n+1)), n+2]`
-/

namespace A004760.P12058756276303376759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004760.P12058756276303376759

namespace A004760

/-- `lt[2*and(n, -(2*n+1)), n+2]` -/
def P12058756276303376759.Spec : Prop :=
  ∀ n, (P12058756276303376759.a n : ℤ) = A004760 (n + 1)

end A004760

/-! ## A004760.P16674644329351643413

`eq[1, floor((n+1)/and(2*n+1, n+1))]`
-/

namespace A004760.P16674644329351643413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (Nat.land (2 * n + 1) (n + 1) : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004760.P16674644329351643413

namespace A004760

/-- `eq[1, floor((n+1)/and(2*n+1, n+1))]` -/
def P16674644329351643413.Spec : Prop :=
  ∀ n, (P16674644329351643413.a n : ℤ) = A004760 (n + 1)

end A004760

/-! ## A004760.P14977772929805115427

`lt[(or(n+1, 2*n)/(2*n+1))², ϕ]`
-/

namespace A004760.P14977772929805115427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lor (n + 1) (2 * n) : ℚ) / (2 * n + 1 : ℚ)) ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A004760.P14977772929805115427

namespace A004760

/-- `lt[(or(n+1, 2*n)/(2*n+1))², ϕ]` -/
def P14977772929805115427.Spec : Prop :=
  ∀ n, (P14977772929805115427.a n : ℤ) = A004760 (n + 1)

end A004760

/-! ## A004760.P1101950160679239310

`record[A038572(n)]`
-/

namespace A004760.P1101950160679239310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004760.P1101950160679239310

namespace A004760

/-- `record[A038572(n)]` -/
def P1101950160679239310.Spec : Prop :=
  ∀ n, P1101950160679239310.a n = A004760 (n + 1)

end A004760

/-! ## A004760.P6482077465705119566

`record[A063946(n)]`
-/

namespace A004760.P6482077465705119566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004760.P6482077465705119566

namespace A004760

/-- `record[A063946(n)]` -/
def P6482077465705119566.Spec : Prop :=
  ∀ n, P6482077465705119566.a n = A004760 (n + 1)

end A004760

/-! ## A004760.P15769281640014207739

`lt[A003188(n), n+1]`
-/

namespace A004760.P15769281640014207739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004760.P15769281640014207739

namespace A004760

/-- `lt[A003188(n), n+1]` -/
def P15769281640014207739.Spec : Prop :=
  ∀ n, (P15769281640014207739.a n : ℤ) = A004760 (n + 1)

theorem P15769281640014207739.correct : P15769281640014207739.Spec := by
  intro n
  simp only [A004760, Nat.add_sub_cancel, A004760.P15769281640014207739.f1, A004760.P15769281640014207739.f2, A004760.P15769281640014207739.a, A004760.P18986604660661848.f1, A004760.P18986604660661848.f2, A004760.P18986604660661848.a, A003188, A003188.P10544524695508875182.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004760

/-! ## A004760.P18274251213463013932

`A038572(A004273(n))`
-/

namespace A004760.P18274251213463013932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A004273 n).toNat

end

end A004760.P18274251213463013932

namespace A004760

/-- `A038572(A004273(n))` -/
def P18274251213463013932.Spec : Prop :=
  ∀ n, P18274251213463013932.a n = A004760 (n + 1)

end A004760

/-! ## A004760.P10367429039928281380

`A063946(A004761(n+1))`
-/

namespace A004760.P10367429039928281380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A004761 (n + 1)).toNat

end

end A004760.P10367429039928281380

namespace A004760

/-- `A063946(A004761(n+1))` -/
def P10367429039928281380.Spec : Prop :=
  ∀ n, P10367429039928281380.a n = A004760 (n + 1)

end A004760

/-! ## A004760.P16583480335646241683

`eq[n, A038572(A006257(n))]`
-/

namespace A004760.P16583480335646241683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038572 (A006257 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004760.P16583480335646241683

namespace A004760

/-- `eq[n, A038572(A006257(n))]` -/
def P16583480335646241683.Spec : Prop :=
  ∀ n, (P16583480335646241683.a n : ℤ) = A004760 (n + 1)

end A004760

/-! ## A004760.P1357319020025441901

`A003817(A028310(n)-1)+n`
-/

namespace A004760.P1357319020025441901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (A028310 n - 1).toNat + (n : ℤ)

end

end A004760.P1357319020025441901

namespace A004760

/-- `A003817(A028310(n)-1)+n` -/
def P1357319020025441901.Spec : Prop :=
  ∀ n, P1357319020025441901.a n = A004760 (n + 1)

end A004760

/-! ## A004760.P4921566201389812091

`∪[A000225(n), A004755(n+1)]`
-/

namespace A004760.P4921566201389812091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004760.P4921566201389812091

namespace A004760

/-- `∪[A000225(n), A004755(n+1)]` -/
def P4921566201389812091.Spec : Prop :=
  ∀ n, (P4921566201389812091.a n : ℤ) = A004760 (n + 1)

end A004760

/-! ## A004760.P15328978671501892549

`∪[A004755(n+1), A006516(n)]`
-/

namespace A004760.P15328978671501892549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006516 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004760.P15328978671501892549

namespace A004760

/-- `∪[A004755(n+1), A006516(n)]` -/
def P15328978671501892549.Spec : Prop :=
  ∀ n, (P15328978671501892549.a n : ℤ) = A004760 (n + 1)

end A004760

/-! ## A004760.P15922915006400727942

`∪[A004755(n+1), A007750(n)]`
-/

namespace A004760.P15922915006400727942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007750 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004760.P15922915006400727942

namespace A004760

/-- `∪[A004755(n+1), A007750(n)]` -/
def P15922915006400727942.Spec : Prop :=
  ∀ n, (P15922915006400727942.a n : ℤ) = A004760 (n + 1)

end A004760

/-!
# A004761: Numbers n whose binary expansion does not begin with 11.

The programs for A004761, the canonical program `A004761.P12493427440050159717` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004761 has offset 1).

The definition of A004761 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004761.P15365892479041120323

`comp[lt[xor(n, floor(n/2)), n]]`
-/

namespace A004761.P15365892479041120323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004761.P15365892479041120323

namespace A004761

/-- `comp[lt[xor(n, floor(n/2)), n]]` -/
def P15365892479041120323.Spec : Prop :=
  ∀ n, (P15365892479041120323.a n : ℤ) = A004761 (n + 1)

end A004761

/-! ## A004761.P12493427440050159717

`lt[n, xor(n, floor(n/2))+1]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004761

/-- `lt[n, xor(n, floor(n/2))+1]` -/
def P12493427440050159717.Spec : Prop :=
  ∀ n, (P12493427440050159717.a n : ℤ) = A004761 (n + 1)

theorem P12493427440050159717.correct : P12493427440050159717.Spec := by
  intro n
  simp only [A004761, Nat.add_sub_cancel]

end A004761

/-! ## A004761.P1083915648163165720

`lt[n-1, xor(n, floor(n/2))]`
-/

namespace A004761.P1083915648163165720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004761.P1083915648163165720

namespace A004761

/-- `lt[n-1, xor(n, floor(n/2))]` -/
def P1083915648163165720.Spec : Prop :=
  ∀ n, (P1083915648163165720.a n : ℤ) = A004761 (n + 1)

theorem P1083915648163165720.correct : P1083915648163165720.Spec := by
  intro n
  simp only [A004761, Nat.add_sub_cancel, A004761.P1083915648163165720.f1, A004761.P1083915648163165720.f2, A004761.P1083915648163165720.a, A004761.P12493427440050159717.f1, A004761.P12493427440050159717.f2, A004761.P12493427440050159717.a, SequenceMachineLib.memo_apply]
  try simp

end A004761

/-! ## A004761.P14946521875760740294

`comp[lt[n, 2*and(n, 2*n)]]`
-/

namespace A004761.P14946521875760740294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004761.P14946521875760740294

namespace A004761

/-- `comp[lt[n, 2*and(n, 2*n)]]` -/
def P14946521875760740294.Spec : Prop :=
  ∀ n, (P14946521875760740294.a n : ℤ) = A004761 (n + 1)

end A004761

/-! ## A004761.P8965874773693599737

`lt[2*and(n, 2*n), n+1]`
-/

namespace A004761.P8965874773693599737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004761.P8965874773693599737

namespace A004761

/-- `lt[2*and(n, 2*n), n+1]` -/
def P8965874773693599737.Spec : Prop :=
  ∀ n, (P8965874773693599737.a n : ℤ) = A004761 (n + 1)

end A004761

/-! ## A004761.P15762653320373597769

`record[n%(xor(n, floor(n/2))+1)]`
-/

namespace A004761.P15762653320373597769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004761.P15762653320373597769

namespace A004761

/-- `record[n%(xor(n, floor(n/2))+1)]` -/
def P15762653320373597769.Spec : Prop :=
  ∀ n, P15762653320373597769.a n = A004761 (n + 1)

end A004761

/-! ## A004761.P16012952428207855006

`lt[n*ϕ², or(n, 2*n+1)]`
-/

namespace A004761.P16012952428207855006
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) * Real.goldenRatio ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A004761.P16012952428207855006

namespace A004761

/-- `lt[n*ϕ², or(n, 2*n+1)]` -/
def P16012952428207855006.Spec : Prop :=
  ∀ n, (P16012952428207855006.a n : ℤ) = A004761 (n + 1)

end A004761

/-! ## A004761.P12933832941717577593

`and(n-1, n-2-a(n-1))+n-1` with `a(0)=0, a(1)=1`
-/

namespace A004761.P12933832941717577593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  Int.land ((n : ℤ) - 1) ((n : ℤ) - 2 - a (n - 1)) + ((n : ℤ) - 1)

end

end A004761.P12933832941717577593

namespace A004761

/-- `and(n-1, n-2-a(n-1))+n-1` -/
def P12933832941717577593.Spec : Prop :=
  ∀ n, P12933832941717577593.a n = A004761 (n + 1)

end A004761

/-! ## A004761.P6210548616867801205

`lt[A090996(n), 2]`
-/

namespace A004761.P6210548616867801205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004761.P6210548616867801205

namespace A004761

/-- `lt[A090996(n), 2]` -/
def P6210548616867801205.Spec : Prop :=
  ∀ n, (P6210548616867801205.a n : ℤ) = A004761 (n + 1)

end A004761

/-! ## A004761.P7927248152618414841

`comp[A004755(n+1)]`
-/

namespace A004761.P7927248152618414841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004761.P7927248152618414841

namespace A004761

/-- `comp[A004755(n+1)]` -/
def P7927248152618414841.Spec : Prop :=
  ∀ n, (P7927248152618414841.a n : ℤ) = A004761 (n + 1)

end A004761

/-! ## A004761.P2245321095829509513

`comp[A004760(n+3)]`
-/

namespace A004761.P2245321095829509513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004761.P2245321095829509513

namespace A004761

/-- `comp[A004760(n+3)]` -/
def P2245321095829509513.Spec : Prop :=
  ∀ n, (P2245321095829509513.a n : ℤ) = A004761 (n + 1)

end A004761

/-! ## A004761.P17381420755918924609

`comp[lt[A003188(n), n]]`
-/

namespace A004761.P17381420755918924609
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004761.P17381420755918924609

namespace A004761

/-- `comp[lt[A003188(n), n]]` -/
def P17381420755918924609.Spec : Prop :=
  ∀ n, (P17381420755918924609.a n : ℤ) = A004761 (n + 1)

end A004761

/-! ## A004761.P6833823314155642902

`lt[n, A063946(n)+1]`
-/

namespace A004761.P6833823314155642902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004761.P6833823314155642902

namespace A004761

/-- `lt[n, A063946(n)+1]` -/
def P6833823314155642902.Spec : Prop :=
  ∀ n, (P6833823314155642902.a n : ℤ) = A004761 (n + 1)

end A004761

/-! ## A004761.P7291045774681947726

`comp[A206332(n+1)+1]`
-/

namespace A004761.P7291045774681947726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004761.P7291045774681947726

namespace A004761

/-- `comp[A206332(n+1)+1]` -/
def P7291045774681947726.Spec : Prop :=
  ∀ n, (P7291045774681947726.a n : ℤ) = A004761 (n + 1)

end A004761

/-! ## A004761.P1479475815610200395

`comp[A346303(n+2)-n]`
-/

namespace A004761.P1479475815610200395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346303 (n + 2) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004761.P1479475815610200395

namespace A004761

/-- `comp[A346303(n+2)-n]` -/
def P1479475815610200395.Spec : Prop :=
  ∀ n, (P1479475815610200395.a n : ℤ) = A004761 (n + 1)

end A004761

/-! ## A004761.P16820845625839395436

`A063946(record[A063946(n)])`
-/

namespace A004761.P16820845625839395436
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004761.P16820845625839395436

namespace A004761

/-- `A063946(record[A063946(n)])` -/
def P16820845625839395436.Spec : Prop :=
  ∀ n, P16820845625839395436.a n = A004761 (n + 1)

end A004761

/-! ## A004761.P16598811138608984129

`A063946(A004760(n+1))`
-/

namespace A004761.P16598811138608984129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A004760 (n + 1)).toNat

end

end A004761.P16598811138608984129

namespace A004761

/-- `A063946(A004760(n+1))` -/
def P16598811138608984129.Spec : Prop :=
  ∀ n, P16598811138608984129.a n = A004761 (n + 1)

end A004761

/-! ## A004761.P8303259202407316401

`∪[A004754(n+1), A000539(n)]`
-/

namespace A004761.P8303259202407316401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000539 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004761.P8303259202407316401

namespace A004761

/-- `∪[A004754(n+1), A000539(n)]` -/
def P8303259202407316401.Spec : Prop :=
  ∀ n, (P8303259202407316401.a n : ℤ) = A004761 (n + 1)

end A004761

/-! ## A004761.P8247156549202219727

`∪[A000541(n), A004754(n+1)]`
-/

namespace A004761.P8247156549202219727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000541 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004761.P8247156549202219727

namespace A004761

/-- `∪[A000541(n), A004754(n+1)]` -/
def P8247156549202219727.Spec : Prop :=
  ∀ n, (P8247156549202219727.a n : ℤ) = A004761 (n + 1)

end A004761

/-!
# A004762: Numbers whose binary expansion does not begin 100.

The programs for A004762, the canonical program `A004762.P3864592900543680029` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004762 has offset 1).

The definition of A004762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004762.P3864592900543680029

`lt[xor(n, floor(n/3)), n+1]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004762

/-- `lt[xor(n, floor(n/3)), n+1]` -/
def P3864592900543680029.Spec : Prop :=
  ∀ n, (P3864592900543680029.a n : ℤ) = A004762 (n + 1)

theorem P3864592900543680029.correct : P3864592900543680029.Spec := by
  intro n
  simp only [A004762, Nat.add_sub_cancel]

end A004762

/-! ## A004762.P15926861970192136688

`lt[1, 2*a(floor(n/2))]` with `a(0)=2, a(1)=2, a(2)=2, a(3)=2, a(4)=0`
-/

namespace A004762.P15926861970192136688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.rec [2, 2, 2, 2, 0] fun n f2 =>
  2 * f2 ⌊(n : ℚ) / 2⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004762.P15926861970192136688

namespace A004762

/-- `lt[1, 2*a(floor(n/2))]` -/
def P15926861970192136688.Spec : Prop :=
  ∀ n, (P15926861970192136688.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P17713308259557811595

`comp[A004756(n+1)]`
-/

namespace A004762.P17713308259557811595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004756 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004762.P17713308259557811595

namespace A004762

/-- `comp[A004756(n+1)]` -/
def P17713308259557811595.Spec : Prop :=
  ∀ n, (P17713308259557811595.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P12001977145225585513

`comp[A054429(n+1)+2*n+3]`
-/

namespace A004762.P12001977145225585513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (n + 1) + (2 * n + 3 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004762.P12001977145225585513

namespace A004762

/-- `comp[A054429(n+1)+2*n+3]` -/
def P12001977145225585513.Spec : Prop :=
  ∀ n, (P12001977145225585513.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P12415060470356142920

`comp[A004754(A004754(n+1))]`
-/

namespace A004762.P12415060470356142920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A004754 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004762.P12415060470356142920

namespace A004762

/-- `comp[A004754(A004754(n+1))]` -/
def P12415060470356142920.Spec : Prop :=
  ∀ n, (P12415060470356142920.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P1316697410128734657

`lt[n, A145341(A006257(n)+1)]`
-/

namespace A004762.P1316697410128734657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (A006257 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004762.P1316697410128734657

namespace A004762

/-- `lt[n, A145341(A006257(n)+1)]` -/
def P1316697410128734657.Spec : Prop :=
  ∀ n, (P1316697410128734657.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P2066550482053089879

`comp[and(A004757(n+1), A004758(n+1))]`
-/

namespace A004762.P2066550482053089879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A004757 (n + 1)) (A004758 (n + 1))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004762.P2066550482053089879

namespace A004762

/-- `comp[and(A004757(n+1), A004758(n+1))]` -/
def P2066550482053089879.Spec : Prop :=
  ∀ n, (P2066550482053089879.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P7083386885301147698

`lt[A065120(n), 3]`
-/

namespace A004762.P7083386885301147698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004762.P7083386885301147698

namespace A004762

/-- `lt[A065120(n), 3]` -/
def P7083386885301147698.Spec : Prop :=
  ∀ n, (P7083386885301147698.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P759468554985167719

`lt[n/4, A048733(n)+1]`
-/

namespace A004762.P759468554985167719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048733 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A004762.P759468554985167719

namespace A004762

/-- `lt[n/4, A048733(n)+1]` -/
def P759468554985167719.Spec : Prop :=
  ∀ n, (P759468554985167719.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P1103266961857740102

`lt[A136480(A341916(n)), 3]`
-/

namespace A004762.P1103266961857740102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A341916 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004762.P1103266961857740102

namespace A004762

/-- `lt[A136480(A341916(n)), 3]` -/
def P1103266961857740102.Spec : Prop :=
  ∀ n, (P1103266961857740102.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P7235114624869597034

`comp[A038558(A038558(n+1))]`
-/

namespace A004762.P7235114624869597034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 (A038558 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004762.P7235114624869597034

namespace A004762

/-- `comp[A038558(A038558(n+1))]` -/
def P7235114624869597034.Spec : Prop :=
  ∀ n, (P7235114624869597034.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P13578934418110517762

`lt[A038556(A038556(n)), n+1]`
-/

namespace A004762.P13578934418110517762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038556 (A038556 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004762.P13578934418110517762

namespace A004762

/-- `lt[A038556(A038556(n)), n+1]` -/
def P13578934418110517762.Spec : Prop :=
  ∀ n, (P13578934418110517762.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P12358761093049559612

`lt[A006068(n)², A046092(n)+1]`
-/

namespace A004762.P12358761093049559612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004762.P12358761093049559612

namespace A004762

/-- `lt[A006068(n)², A046092(n)+1]` -/
def P12358761093049559612.Spec : Prop :=
  ∀ n, (P12358761093049559612.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P7549328887881376986

`lt[A053644(n), A006257(2*n+1)]`
-/

namespace A004762.P7549328887881376986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004762.P7549328887881376986

namespace A004762

/-- `lt[A053644(n), A006257(2*n+1)]` -/
def P7549328887881376986.Spec : Prop :=
  ∀ n, (P7549328887881376986.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P6216766024014695615

`lt[A265263(n), A006257(2*n+1)]`
-/

namespace A004762.P6216766024014695615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265263 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004762.P6216766024014695615

namespace A004762

/-- `lt[A265263(n), A006257(2*n+1)]` -/
def P6216766024014695615.Spec : Prop :=
  ∀ n, (P6216766024014695615.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P3126072185838788130

`A004765(Δ[n²])-n`
-/

namespace A004762.P3126072185838788130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004765 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A004762.P3126072185838788130

namespace A004762

/-- `A004765(Δ[n²])-n` -/
def P3126072185838788130.Spec : Prop :=
  ∀ n, P3126072185838788130.a n = A004762 (n + 1)

end A004762

/-! ## A004762.P8917506944101427564

`lt[A290255(2*n+1), 2]`
-/

namespace A004762.P8917506944101427564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290255 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004762.P8917506944101427564

namespace A004762

/-- `lt[A290255(2*n+1), 2]` -/
def P8917506944101427564.Spec : Prop :=
  ∀ n, (P8917506944101427564.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P9703383788636319959

`lt[2*n, A057114(2*n+1)]`
-/

namespace A004762.P9703383788636319959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057114 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004762.P9703383788636319959

namespace A004762

/-- `lt[2*n, A057114(2*n+1)]` -/
def P9703383788636319959.Spec : Prop :=
  ∀ n, (P9703383788636319959.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P6889007349445618856

`eq[2*n+1, A065631(2*n+1)]`
-/

namespace A004762.P6889007349445618856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065631 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004762.P6889007349445618856

namespace A004762

/-- `eq[2*n+1, A065631(2*n+1)]` -/
def P6889007349445618856.Spec : Prop :=
  ∀ n, (P6889007349445618856.a n : ℤ) = A004762 (n + 1)

end A004762

/-! ## A004762.P611278367048415452

`eq[2*n+1, A065632(2*n+1)]`
-/

namespace A004762.P611278367048415452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065632 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004762.P611278367048415452

namespace A004762

/-- `eq[2*n+1, A065632(2*n+1)]` -/
def P611278367048415452.Spec : Prop :=
  ∀ n, (P611278367048415452.a n : ℤ) = A004762 (n + 1)

end A004762

/-!
# A004763: Numbers whose binary expansion does not begin 101.

The programs for A004763, the canonical program `A004763.P9187450148109065970` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004763 has offset 1).

The definition of A004763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004763.P4272757115167211088

`comp[2*lt[xor(n, floor(n/2)), n]-1-n]`
-/

namespace A004763.P4272757115167211088
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - 1 - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004763.P4272757115167211088

namespace A004763

/-- `comp[2*lt[xor(n, floor(n/2)), n]-1-n]` -/
def P4272757115167211088.Spec : Prop :=
  ∀ n, (P4272757115167211088.a n : ℤ) = A004763 (n + 1)

end A004763

/-! ## A004763.P8016465547362826865

`comp[A004757(n+1)]`
-/

namespace A004763.P8016465547362826865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004763.P8016465547362826865

namespace A004763

/-- `comp[A004757(n+1)]` -/
def P8016465547362826865.Spec : Prop :=
  ∀ n, (P8016465547362826865.a n : ℤ) = A004763 (n + 1)

end A004763

/-! ## A004763.P8413547522086627906

`comp[A346304(n+1)-n]`
-/

namespace A004763.P8413547522086627906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346304 (n + 1) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004763.P8413547522086627906

namespace A004763

/-- `comp[A346304(n+1)-n]` -/
def P8413547522086627906.Spec : Prop :=
  ∀ n, (P8413547522086627906.a n : ℤ) = A004763 (n + 1)

end A004763

/-! ## A004763.P15141835013123850425

`lt[A090996(xor(n, 2*n)), 3]`
-/

namespace A004763.P15141835013123850425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (Nat.xor n (2 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004763.P15141835013123850425

namespace A004763

/-- `lt[A090996(xor(n, 2*n)), 3]` -/
def P15141835013123850425.Spec : Prop :=
  ∀ n, (P15141835013123850425.a n : ℤ) = A004763 (n + 1)

end A004763

/-! ## A004763.P6149366582179236026

`comp[A079946(n+1)-(n+1)]`
-/

namespace A004763.P6149366582179236026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079946 (n + 1) - (n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004763.P6149366582179236026

namespace A004763

/-- `comp[A079946(n+1)-(n+1)]` -/
def P6149366582179236026.Spec : Prop :=
  ∀ n, (P6149366582179236026.a n : ℤ) = A004763 (n + 1)

end A004763

/-! ## A004763.P1695078307081333417

`comp[A206332(2*(n+1))-n]`
-/

namespace A004763.P1695078307081333417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (2 * (n + 1)) - (n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004763.P1695078307081333417

namespace A004763

/-- `comp[A206332(2*(n+1))-n]` -/
def P1695078307081333417.Spec : Prop :=
  ∀ n, (P1695078307081333417.a n : ℤ) = A004763 (n + 1)

end A004763

/-! ## A004763.P9187450148109065970

`A004526(A004761(n+1)-n)+n`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004763

/-- `A004526(A004761(n+1)-n)+n` -/
def P9187450148109065970.Spec : Prop :=
  ∀ n, P9187450148109065970.a n = A004763 (n + 1)

theorem P9187450148109065970.correct : P9187450148109065970.Spec := by
  intro n
  simp only [A004763, Nat.add_sub_cancel]

end A004763

/-! ## A004763.P11261776303024585352

`A004761(n+1)-A053644(A004761(n+1)-n)`
-/

namespace A004763.P11261776303024585352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (n + 1) - A053644 (A004761 (n + 1) - (n : ℤ)).toNat

end

end A004763.P11261776303024585352

namespace A004763

/-- `A004761(n+1)-A053644(A004761(n+1)-n)` -/
def P11261776303024585352.Spec : Prop :=
  ∀ n, P11261776303024585352.a n = A004763 (n + 1)

end A004763

/-! ## A004763.P2884770475384468562

`A004761(n+1)-A153152(A004761(n+1)-n)`
-/

namespace A004763.P2884770475384468562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (n + 1) - A153152 (A004761 (n + 1) - (n : ℤ)).toNat

end

end A004763.P2884770475384468562

namespace A004763

/-- `A004761(n+1)-A153152(A004761(n+1)-n)` -/
def P2884770475384468562.Spec : Prop :=
  ∀ n, P2884770475384468562.a n = A004763 (n + 1)

end A004763

/-! ## A004763.P778755996054483376

`comp[A004754(A004755(n+1))]`
-/

namespace A004763.P778755996054483376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (A004755 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004763.P778755996054483376

namespace A004763

/-- `comp[A004754(A004755(n+1))]` -/
def P778755996054483376.Spec : Prop :=
  ∀ n, (P778755996054483376.a n : ℤ) = A004763 (n + 1)

end A004763

/-! ## A004763.P15553922091901361679

`comp[A004754(comp[A004761(n+1)])]`
-/

namespace A004763.P15553922091901361679
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004763.P15553922091901361679

namespace A004763

/-- `comp[A004754(comp[A004761(n+1)])]` -/
def P15553922091901361679.Spec : Prop :=
  ∀ n, (P15553922091901361679.a n : ℤ) = A004763 (n + 1)

end A004763

/-! ## A004763.P14706021669202109117

`comp[A010078(A010078(n+2)+1)]`
-/

namespace A004763.P14706021669202109117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010078 (A010078 (n + 2) + 1).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004763.P14706021669202109117

namespace A004763

/-- `comp[A010078(A010078(n+2)+1)]` -/
def P14706021669202109117.Spec : Prop :=
  ∀ n, (P14706021669202109117.a n : ℤ) = A004763 (n + 1)

end A004763

/-! ## A004763.P11230456237904980500

`comp[A004761(comp[A004761(n+1)]+2)]`
-/

namespace A004763.P11230456237904980500
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004763.P11230456237904980500

namespace A004763

/-- `comp[A004761(comp[A004761(n+1)]+2)]` -/
def P11230456237904980500.Spec : Prop :=
  ∀ n, (P11230456237904980500.a n : ℤ) = A004763 (n + 1)

end A004763

/-! ## A004763.P18261736711793463627

`A002265(A004760(n+1)-n)+n`
-/

namespace A004763.P18261736711793463627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004760 (n + 1) - (n : ℤ)).toNat + (n : ℤ)

end

end A004763.P18261736711793463627

namespace A004763

/-- `A002265(A004760(n+1)-n)+n` -/
def P18261736711793463627.Spec : Prop :=
  ∀ n, P18261736711793463627.a n = A004763 (n + 1)

end A004763

/-! ## A004763.P4065640536950946600

`record[A072376(A072376(n))+A025480(n)]`
-/

namespace A004763.P4065640536950946600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072376 (A072376 n).toNat + A025480 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004763.P4065640536950946600

namespace A004763

/-- `record[A072376(A072376(n))+A025480(n)]` -/
def P4065640536950946600.Spec : Prop :=
  ∀ n, P4065640536950946600.a n = A004763 (n + 1)

end A004763

/-! ## A004763.P1249986253964876643

`A004761(n+1)-A153142(A004761(n+1)-n)`
-/

namespace A004763.P1249986253964876643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (n + 1) - A153142 (A004761 (n + 1) - (n : ℤ)).toNat

end

end A004763.P1249986253964876643

namespace A004763

/-- `A004761(n+1)-A153142(A004761(n+1)-n)` -/
def P1249986253964876643.Spec : Prop :=
  ∀ n, P1249986253964876643.a n = A004763 (n + 1)

end A004763

/-! ## A004763.P17234178352070467210

`record[A025480(A072376(n)+n)]`
-/

namespace A004763.P17234178352070467210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A072376 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004763.P17234178352070467210

namespace A004763

/-- `record[A025480(A072376(n)+n)]` -/
def P17234178352070467210.Spec : Prop :=
  ∀ n, P17234178352070467210.a n = A004763 (n + 1)

end A004763

/-! ## A004763.P17527682911442823093

`A004526(A004761(n+1)+n)`
-/

namespace A004763.P17527682911442823093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A004761 (n + 1) + (n : ℤ)).toNat

end

end A004763.P17527682911442823093

namespace A004763

/-- `A004526(A004761(n+1)+n)` -/
def P17527682911442823093.Spec : Prop :=
  ∀ n, P17527682911442823093.a n = A004763 (n + 1)

end A004763

/-! ## A004763.P7531133420646563363

`A002265(A004760(n+1)+3*n)`
-/

namespace A004763.P7531133420646563363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A004760 (n + 1) + (3 * n : ℤ)).toNat

end

end A004763.P7531133420646563363

namespace A004763

/-- `A002265(A004760(n+1)+3*n)` -/
def P7531133420646563363.Spec : Prop :=
  ∀ n, P7531133420646563363.a n = A004763 (n + 1)

end A004763

/-! ## A004763.P15448929036735159595

`record[and(n, A154444(n))]`
-/

namespace A004763.P15448929036735159595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A154444 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004763.P15448929036735159595

namespace A004763

/-- `record[and(n, A154444(n))]` -/
def P15448929036735159595.Spec : Prop :=
  ∀ n, P15448929036735159595.a n = A004763 (n + 1)

end A004763

/-!
# A004764: Numbers whose binary expansion does not begin 110.

The programs for A004764, the canonical program `A004764.P5836168721162617501` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004764 has offset 1).

The definition of A004764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004764.P11702686405181584587

`comp[A004758(n+1)]`
-/

namespace A004764.P11702686405181584587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004764.P11702686405181584587

namespace A004764

/-- `comp[A004758(n+1)]` -/
def P11702686405181584587.Spec : Prop :=
  ∀ n, (P11702686405181584587.a n : ℤ) = A004764 (n + 1)

end A004764

/-! ## A004764.P3272185636230167641

`comp[A318934(n+2)]`
-/

namespace A004764.P3272185636230167641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318934 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004764.P3272185636230167641

namespace A004764

/-- `comp[A318934(n+2)]` -/
def P3272185636230167641.Spec : Prop :=
  ∀ n, (P3272185636230167641.a n : ℤ) = A004764 (n + 1)

end A004764

/-! ## A004764.P5836168721162617501

`lt[A090996(xor(n, floor(n/4))), 3]`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A004764

/-- `lt[A090996(xor(n, floor(n/4))), 3]` -/
def P5836168721162617501.Spec : Prop :=
  ∀ n, (P5836168721162617501.a n : ℤ) = A004764 (n + 1)

theorem P5836168721162617501.correct : P5836168721162617501.Spec := by
  intro n
  simp only [A004764, Nat.add_sub_cancel]

end A004764

/-! ## A004764.P1059163409635262607

`comp[A004755(A004754(n+1))]`
-/

namespace A004764.P1059163409635262607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A004754 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004764.P1059163409635262607

namespace A004764

/-- `comp[A004755(A004754(n+1))]` -/
def P1059163409635262607.Spec : Prop :=
  ∀ n, (P1059163409635262607.a n : ℤ) = A004764 (n + 1)

end A004764

/-! ## A004764.P16993802226303627090

`comp[A004755(comp[A004760(n+1)])]`
-/

namespace A004764.P16993802226303627090
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004764.P16993802226303627090

namespace A004764

/-- `comp[A004755(comp[A004760(n+1)])]` -/
def P16993802226303627090.Spec : Prop :=
  ∀ n, (P16993802226303627090.a n : ℤ) = A004764 (n + 1)

end A004764

/-! ## A004764.P2273519250202804354

`comp[A004760(comp[A004760(n+1)]+2)]`
-/

namespace A004764.P2273519250202804354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004764.P2273519250202804354

namespace A004764

/-- `comp[A004760(comp[A004760(n+1)]+2)]` -/
def P2273519250202804354.Spec : Prop :=
  ∀ n, (P2273519250202804354.a n : ℤ) = A004764 (n + 1)

end A004764

/-! ## A004764.P1780977443929065700

`comp[A004762(comp[A004762(n+1)]+2)]`
-/

namespace A004764.P1780977443929065700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004762 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004762 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004764.P1780977443929065700

namespace A004764

/-- `comp[A004762(comp[A004762(n+1)]+2)]` -/
def P1780977443929065700.Spec : Prop :=
  ∀ n, (P1780977443929065700.a n : ℤ) = A004764 (n + 1)

end A004764

/-! ## A004764.P3284312512467893470

`comp[2*a(floor(n/3))+n-3*floor(n/3)-n²%3]` with `a(0)=6`
-/

namespace A004764.P3284312512467893470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  2 * f1 ⌊(n : ℚ) / 3⌋.toNat + ((n : ℤ) - 3 * ⌊(n : ℚ) / 3⌋) - ((n ^ 2 % 3 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004764.P3284312512467893470

namespace A004764

/-- `comp[2*a(floor(n/3))+n-3*floor(n/3)-n²%3]` -/
def P3284312512467893470.Spec : Prop :=
  ∀ n, (P3284312512467893470.a n : ℤ) = A004764 (n + 1)

end A004764

/-! ## A004764.P14360358057067623364

`eq[2*n+1, A065635(2*n+1)]`
-/

namespace A004764.P14360358057067623364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065635 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004764.P14360358057067623364

namespace A004764

/-- `eq[2*n+1, A065635(2*n+1)]` -/
def P14360358057067623364.Spec : Prop :=
  ∀ n, (P14360358057067623364.a n : ℤ) = A004764 (n + 1)

end A004764

/-! ## A004764.P8264587568711378247

`eq[2*n+1, A065636(2*n+1)]`
-/

namespace A004764.P8264587568711378247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065636 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004764.P8264587568711378247

namespace A004764

/-- `eq[2*n+1, A065636(2*n+1)]` -/
def P8264587568711378247.Spec : Prop :=
  ∀ n, (P8264587568711378247.a n : ℤ) = A004764 (n + 1)

end A004764

/-! ## A004764.P18210637593345403377

`record[A154439(n)]`
-/

namespace A004764.P18210637593345403377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004764.P18210637593345403377

namespace A004764

/-- `record[A154439(n)]` -/
def P18210637593345403377.Spec : Prop :=
  ∀ n, P18210637593345403377.a n = A004764 (n + 1)

end A004764

/-! ## A004764.P1839181355421291144

`lt[A154440(n), n+1]`
-/

namespace A004764.P1839181355421291144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004764.P1839181355421291144

namespace A004764

/-- `lt[A154440(n), n+1]` -/
def P1839181355421291144.Spec : Prop :=
  ∀ n, (P1839181355421291144.a n : ℤ) = A004764 (n + 1)

end A004764

/-! ## A004764.P10291576189653615186

`record[A063946(A153142(n))]`
-/

namespace A004764.P10291576189653615186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063946 (A153142 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004764.P10291576189653615186

namespace A004764

/-- `record[A063946(A153142(n))]` -/
def P10291576189653615186.Spec : Prop :=
  ∀ n, P10291576189653615186.a n = A004764 (n + 1)

end A004764

/-! ## A004764.P7748845183891686491

`record[A154448(A063946(n))]`
-/

namespace A004764.P7748845183891686491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154448 (A063946 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004764.P7748845183891686491

namespace A004764

/-- `record[A154448(A063946(n))]` -/
def P7748845183891686491.Spec : Prop :=
  ∀ n, P7748845183891686491.a n = A004764 (n + 1)

end A004764

/-! ## A004764.P12978035731488826888

`record[A154448(A154441(n))]`
-/

namespace A004764.P12978035731488826888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154448 (A154441 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004764.P12978035731488826888

namespace A004764

/-- `record[A154448(A154441(n))]` -/
def P12978035731488826888.Spec : Prop :=
  ∀ n, P12978035731488826888.a n = A004764 (n + 1)

end A004764

/-! ## A004764.P7613349260973061225

`A154439(A004765(n+1))`
-/

namespace A004764.P7613349260973061225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (A004765 (n + 1)).toNat

end

end A004764.P7613349260973061225

namespace A004764

/-- `A154439(A004765(n+1))` -/
def P7613349260973061225.Spec : Prop :=
  ∀ n, P7613349260973061225.a n = A004764 (n + 1)

end A004764

/-! ## A004764.P5626570495916163140

`A154439(lt[n, A154439(n)+1])`
-/

namespace A004764.P5626570495916163140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A004764.P5626570495916163140

namespace A004764

/-- `A154439(lt[n, A154439(n)+1])` -/
def P5626570495916163140.Spec : Prop :=
  ∀ n, P5626570495916163140.a n = A004764 (n + 1)

end A004764

/-! ## A004764.P1528122839340036972

`A154439(lt[n-A154439(n), 1])`
-/

namespace A004764.P1528122839340036972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A154439 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154439 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A004764.P1528122839340036972

namespace A004764

/-- `A154439(lt[n-A154439(n), 1])` -/
def P1528122839340036972.Spec : Prop :=
  ∀ n, P1528122839340036972.a n = A004764 (n + 1)

end A004764

/-! ## A004764.P15299710735216851928

`comp[eq[6, A278542(n)]]`
-/

namespace A004764.P15299710735216851928
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278542 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004764.P15299710735216851928

namespace A004764

/-- `comp[eq[6, A278542(n)]]` -/
def P15299710735216851928.Spec : Prop :=
  ∀ n, (P15299710735216851928.a n : ℤ) = A004764 (n + 1)

end A004764

/-!
# A004765: Numbers whose binary expansion does not begin 111.

The programs for A004765, the canonical program `A004765.P3161679738580848316` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004765 has offset 1).

The definition of A004765 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004765.P3161679738580848316

`lt[2*n²-1, xor(n, 2*n)²]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004765

/-- `lt[2*n²-1, xor(n, 2*n)²]` -/
def P3161679738580848316.Spec : Prop :=
  ∀ n, (P3161679738580848316.a n : ℤ) = A004765 (n + 1)

theorem P3161679738580848316.correct : P3161679738580848316.Spec := by
  intro n
  simp only [A004765, Nat.add_sub_cancel]

end A004765

/-! ## A004765.P10547793797897720540

`lt[n-1, 4*and(n, -(2*n+1))]`
-/

namespace A004765.P10547793797897720540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004765.P10547793797897720540

namespace A004765

/-- `lt[n-1, 4*and(n, -(2*n+1))]` -/
def P10547793797897720540.Spec : Prop :=
  ∀ n, (P10547793797897720540.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P6462105429910607515

`lt[ϕ²*and(n, 2*n), 2*n+1]`
-/

namespace A004765.P6462105429910607515
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio ^ 2 * (Nat.land n (2 * n) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A004765.P6462105429910607515

namespace A004765

/-- `lt[ϕ²*and(n, 2*n), 2*n+1]` -/
def P6462105429910607515.Spec : Prop :=
  ∀ n, (P6462105429910607515.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P7916535372104758680

`comp[lt[xor(n, 2*n), 2*and(n, 2*n)]]`
-/

namespace A004765.P7916535372104758680
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004765.P7916535372104758680

namespace A004765

/-- `comp[lt[xor(n, 2*n), 2*and(n, 2*n)]]` -/
def P7916535372104758680.Spec : Prop :=
  ∀ n, (P7916535372104758680.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P3844960525072745163

`lt[2*n/and(2*n+1, -(n+1)), ϕ]`
-/

namespace A004765.P3844960525072745163
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (Int.land (2 * n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A004765.P3844960525072745163

namespace A004765

/-- `lt[2*n/and(2*n+1, -(n+1)), ϕ]` -/
def P3844960525072745163.Spec : Prop :=
  ∀ n, (P3844960525072745163.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P4121625871823895227

`lt[and(n, 2*n)/2, 2^ceil(log2(n+1))/π]`
-/

namespace A004765.P4121625871823895227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.land n (2 * n) : ℚ) / 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (⌈Real.logb 2 (n + 1 : ℝ)⌉ : ℤ) : ℝ) / Real.pi

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A004765.P4121625871823895227

namespace A004765

/-- `lt[and(n, 2*n)/2, 2^ceil(log2(n+1))/π]` -/
def P4121625871823895227.Spec : Prop :=
  ∀ n, (P4121625871823895227.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P11877407412333919047

`lt[A090996(n), 3]`
-/

namespace A004765.P11877407412333919047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004765.P11877407412333919047

namespace A004765

/-- `lt[A090996(n), 3]` -/
def P11877407412333919047.Spec : Prop :=
  ∀ n, (P11877407412333919047.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P14595366849005170180

`comp[A004759(n+1)]`
-/

namespace A004765.P14595366849005170180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004765.P14595366849005170180

namespace A004765

/-- `comp[A004759(n+1)]` -/
def P14595366849005170180.Spec : Prop :=
  ∀ n, (P14595366849005170180.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P8672150808261882991

`lt[A004773(and(n, 2*n)), n+1]`
-/

namespace A004765.P8672150808261882991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (Nat.land n (2 * n))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004765.P8672150808261882991

namespace A004765

/-- `lt[A004773(and(n, 2*n)), n+1]` -/
def P8672150808261882991.Spec : Prop :=
  ∀ n, (P8672150808261882991.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P7809648102328784183

`comp[A004755(A004755(n+1))]`
-/

namespace A004765.P7809648102328784183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004755 (A004755 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004765.P7809648102328784183

namespace A004765

/-- `comp[A004755(A004755(n+1))]` -/
def P7809648102328784183.Spec : Prop :=
  ∀ n, (P7809648102328784183.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P654591018059417619

`comp[A206332(A206332(n+1))+2]`
-/

namespace A004765.P654591018059417619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206332 (A206332 (n + 1)).toNat + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004765.P654591018059417619

namespace A004765

/-- `comp[A206332(A206332(n+1))+2]` -/
def P654591018059417619.Spec : Prop :=
  ∀ n, (P654591018059417619.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P11688144786177629364

`∪[A004761(n+1), A318934(n+1)]`
-/

namespace A004765.P11688144786177629364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004761 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318934 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004765.P11688144786177629364

namespace A004765

/-- `∪[A004761(n+1), A318934(n+1)]` -/
def P11688144786177629364.Spec : Prop :=
  ∀ n, (P11688144786177629364.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P14327477186138765087

`comp[A004758(2*(n+1))-A004757(n+1)]`
-/

namespace A004765.P14327477186138765087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004758 (2 * (n + 1)) - A004757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004765.P14327477186138765087

namespace A004765

/-- `comp[A004758(2*(n+1))-A004757(n+1)]` -/
def P14327477186138765087.Spec : Prop :=
  ∀ n, (P14327477186138765087.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P6194749568421201087

`eq[A055941(2*A090996(n)), A090996(n)]`
-/

namespace A004765.P6194749568421201087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055941 (2 * A090996 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004765.P6194749568421201087

namespace A004765

/-- `eq[A055941(2*A090996(n)), A090996(n)]` -/
def P6194749568421201087.Spec : Prop :=
  ∀ n, (P6194749568421201087.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P9015963207450760751

`eq[A005811(A090996(2*n)), A090996(2*n)]`
-/

namespace A004765.P9015963207450760751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A090996 (2 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004765.P9015963207450760751

namespace A004765

/-- `eq[A005811(A090996(2*n)), A090996(2*n)]` -/
def P9015963207450760751.Spec : Prop :=
  ∀ n, (P9015963207450760751.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P6646465200909633330

`lt[A056220(n), A048724(n)²]`
-/

namespace A004765.P6646465200909633330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056220 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048724 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004765.P6646465200909633330

namespace A004765

/-- `lt[A056220(n), A048724(n)²]` -/
def P6646465200909633330.Spec : Prop :=
  ∀ n, (P6646465200909633330.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P13131014977423819038

`lt[7*A006257(n), A016969(n)]`
-/

namespace A004765.P13131014977423819038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A006257 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016969 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004765.P13131014977423819038

namespace A004765

/-- `lt[7*A006257(n), A016969(n)]` -/
def P13131014977423819038.Spec : Prop :=
  ∀ n, (P13131014977423819038.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P6327245061886246129

`comp[lt[A065621(n+1), 2*and(n, 2*n)]]`
-/

namespace A004765.P6327245061886246129
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065621 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004765.P6327245061886246129

namespace A004765

/-- `comp[lt[A065621(n+1), 2*and(n, 2*n)]]` -/
def P6327245061886246129.Spec : Prop :=
  ∀ n, (P6327245061886246129.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P16711295566091316627

`comp[A004763(comp[A004763(n+1)]+2)]`
-/

namespace A004765.P16711295566091316627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004763 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004763 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004765.P16711295566091316627

namespace A004765

/-- `comp[A004763(comp[A004763(n+1)]+2)]` -/
def P16711295566091316627.Spec : Prop :=
  ∀ n, (P16711295566091316627.a n : ℤ) = A004765 (n + 1)

end A004765

/-! ## A004765.P10262677678189802242

`A154440(A004764(n+1))`
-/

namespace A004765.P10262677678189802242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154440 (A004764 (n + 1)).toNat

end

end A004765.P10262677678189802242

namespace A004765

/-- `A154440(A004764(n+1))` -/
def P10262677678189802242.Spec : Prop :=
  ∀ n, P10262677678189802242.a n = A004765 (n + 1)

end A004765

/-!
# A004766: Numbers whose binary expansion ends 01.

The programs for A004766, the canonical program `A004766.P16471747092736184313` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004766 has offset 1).

The definition of A004766 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004766.P16471747092736184313

`4*(n+1)+1`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004766

/-- `4*(n+1)+1` -/
def P16471747092736184313.Spec : Prop :=
  ∀ n, (P16471747092736184313.a n : ℤ) = A004766 (n + 1)

theorem P16471747092736184313.correct : P16471747092736184313.Spec := by
  intro n
  simp only [A004766, Nat.add_sub_cancel]

end A004766

/-!
# A004767: a(n) = 4*n + 3.

The programs for A004767, the canonical program `A004767.P13352534504447192883` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004767 has offset 0).

The definition of A004767 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*n+3` (program `A004767.P13352534504447192883`, by `A004767.P13352534504447192883.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004767.P11139995017672560061

`3+4*n`
-/

namespace A004767.P11139995017672560061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 + 4 * n

end

end A004767.P11139995017672560061

namespace A004767

/-- `3+4*n` -/
def P11139995017672560061.Spec : Prop :=
  ∀ n, (P11139995017672560061.a n : ℤ) = A004767 n

theorem P11139995017672560061.correct : P11139995017672560061.Spec := by
  intro n
  simp only [A004767, Nat.add_sub_cancel, A004767.P11139995017672560061.a, A004767.P13352534504447192883.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A004767

/-! ## A004767.P13352534504447192883

`4*n+3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004767

/-- `4*n+3` -/
def P13352534504447192883.Spec : Prop :=
  ∀ n, (P13352534504447192883.a n : ℤ) = A004767 n

theorem P13352534504447192883.correct : P13352534504447192883.Spec := by
  intro n
  simp only [A004767]

end A004767

/-!
# A004768: Binary expansion ends 001.

The programs for A004768, the canonical program `A004768.P10813831617649309423` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004768 has offset 0).

The definition of A004768 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004768.P10813831617649309423

`8*n+9`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004768

/-- `8*n+9` -/
def P10813831617649309423.Spec : Prop :=
  ∀ n, (P10813831617649309423.a n : ℤ) = A004768 n

theorem P10813831617649309423.correct : P10813831617649309423.Spec := by
  intro n
  simp only [A004768]

end A004768

/-!
# A004769: Numbers whose binary expansion ends in 011.

The programs for A004769, the canonical program `A004769.P6705187457684456756` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004769 has offset 0).

The definition of A004769 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004769.P6705187457684456756

`8*n+11`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004769

/-- `8*n+11` -/
def P6705187457684456756.Spec : Prop :=
  ∀ n, (P6705187457684456756.a n : ℤ) = A004769 n

theorem P6705187457684456756.correct : P6705187457684456756.Spec := by
  intro n
  simp only [A004769]

end A004769

/-!
# A004770: Numbers of the form 8k+5; or, numbers whose binary expansion ends in 101.

The programs for A004770, the canonical program `A004770.P3348596714663788795` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004770 has offset 1).

The definition of A004770 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004770.P3348596714663788795

`8*(n+1)-3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004770

/-- `8*(n+1)-3` -/
def P3348596714663788795.Spec : Prop :=
  ∀ n, P3348596714663788795.a n = A004770 (n + 1)

theorem P3348596714663788795.correct : P3348596714663788795.Spec := by
  intro n
  simp only [A004770, Nat.add_sub_cancel]

end A004770

/-!
# A004771: a(n) = 8*n + 7. Or, numbers whose binary expansion ends in 111.

The programs for A004771, the canonical program `A004771.P15562682025386998074` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004771 has offset 0).

The definition of A004771 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8*n+7` (program `A004771.P15562682025386998074`, by `A004771.P15562682025386998074.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004771.P15562682025386998074

`8*n+7`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004771

/-- `8*n+7` -/
def P15562682025386998074.Spec : Prop :=
  ∀ n, (P15562682025386998074.a n : ℤ) = A004771 n

theorem P15562682025386998074.correct : P15562682025386998074.Spec := by
  intro n
  simp only [A004771]

end A004771

/-!
# A004772: Numbers that are not congruent to 1 (mod 4).

The programs for A004772, the canonical program `A004772.P16278329364499378186` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004772 has offset 1).

The definition of A004772 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004772.P12687892264603637468

`ceil(4*n/3)`
-/

namespace A004772.P12687892264603637468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(4 * n : ℚ) / 3⌉

end

end A004772.P12687892264603637468

namespace A004772

/-- `ceil(4*n/3)` -/
def P12687892264603637468.Spec : Prop :=
  ∀ n, P12687892264603637468.a n = A004772 (n + 1)

end A004772

/-! ## A004772.P16278329364499378186

`4+a(n-3)` with `a(0)=0, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004772

/-- `4+a(n-3)` -/
def P16278329364499378186.Spec : Prop :=
  ∀ n, (P16278329364499378186.a n : ℤ) = A004772 (n + 1)

theorem P16278329364499378186.correct : P16278329364499378186.Spec := by
  intro n
  simp only [A004772, Nat.add_sub_cancel]

end A004772

/-! ## A004772.P1883922787150283733

`A042965(n+2)-1`
-/

namespace A004772.P1883922787150283733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 2) - 1

end

end A004772.P1883922787150283733

namespace A004772

/-- `A042965(n+2)-1` -/
def P1883922787150283733.Spec : Prop :=
  ∀ n, P1883922787150283733.a n = A004772 (n + 1)

end A004772

/-! ## A004772.P7338172097238641124

`comp[lcm(4, n)+1]`
-/

namespace A004772.P7338172097238641124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004772.P7338172097238641124

namespace A004772

/-- `comp[lcm(4, n)+1]` -/
def P7338172097238641124.Spec : Prop :=
  ∀ n, (P7338172097238641124.a n : ℤ) = A004772 (n + 1)

end A004772

/-! ## A004772.P15625137978824897521

`comp[or(3, n)-2]`
-/

namespace A004772.P15625137978824897521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 3 n : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004772.P15625137978824897521

namespace A004772

/-- `comp[or(3, n)-2]` -/
def P15625137978824897521.Spec : Prop :=
  ∀ n, (P15625137978824897521.a n : ℤ) = A004772 (n + 1)

end A004772

/-! ## A004772.P12620338158582557205

`comp[or(1, 4*n)]`
-/

namespace A004772.P12620338158582557205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (4 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004772.P12620338158582557205

namespace A004772

/-- `comp[or(1, 4*n)]` -/
def P12620338158582557205.Spec : Prop :=
  ∀ n, (P12620338158582557205.a n : ℤ) = A004772 (n + 1)

end A004772

/-! ## A004772.P13837801137303999087

`comp[xor(1, 4*n)]`
-/

namespace A004772.P13837801137303999087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (4 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004772.P13837801137303999087

namespace A004772

/-- `comp[xor(1, 4*n)]` -/
def P13837801137303999087.Spec : Prop :=
  ∀ n, (P13837801137303999087.a n : ℤ) = A004772 (n + 1)

end A004772

/-! ## A004772.P17808465417451753077

`comp[xor(1, n)+n]`
-/

namespace A004772.P17808465417451753077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004772.P17808465417451753077

namespace A004772

/-- `comp[xor(1, n)+n]` -/
def P17808465417451753077.Spec : Prop :=
  ∀ n, (P17808465417451753077.a n : ℤ) = A004772 (n + 1)

end A004772

/-! ## A004772.P153591827234733134

`comp[-or(3, -n)]`
-/

namespace A004772.P153591827234733134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 3 (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004772.P153591827234733134

namespace A004772

/-- `comp[-or(3, -n)]` -/
def P153591827234733134.Spec : Prop :=
  ∀ n, (P153591827234733134.a n : ℤ) = A004772 (n + 1)

end A004772

/-! ## A004772.P14073621436689138939

`lt[val(n+3, 2), 2]`
-/

namespace A004772.P14073621436689138939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004772.P14073621436689138939

namespace A004772

/-- `lt[val(n+3, 2), 2]` -/
def P14073621436689138939.Spec : Prop :=
  ∀ n, (P14073621436689138939.a n : ℤ) = A004772 (n + 1)

end A004772

/-! ## A004772.P14514370781538800718

`lt[n, xor(3, n+2)]`
-/

namespace A004772.P14514370781538800718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004772.P14514370781538800718

namespace A004772

/-- `lt[n, xor(3, n+2)]` -/
def P14514370781538800718.Spec : Prop :=
  ∀ n, (P14514370781538800718.a n : ℤ) = A004772 (n + 1)

end A004772

/-! ## A004772.P13686133378230720196

`comp[Δ[C(2*n, 2)]]`
-/

namespace A004772.P13686133378230720196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004772.P13686133378230720196

namespace A004772

/-- `comp[Δ[C(2*n, 2)]]` -/
def P13686133378230720196.Spec : Prop :=
  ∀ n, (P13686133378230720196.a n : ℤ) = A004772 (n + 1)

end A004772

/-! ## A004772.P16655604445017320646

`∑[∑[n]%3]+n`
-/

namespace A004772.P16655604445017320646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) % 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A004772.P16655604445017320646

namespace A004772

/-- `∑[∑[n]%3]+n` -/
def P16655604445017320646.Spec : Prop :=
  ∀ n, (P16655604445017320646.a n : ℤ) = A004772 (n + 1)

end A004772

/-! ## A004772.P17554545375468469748

`floor(or(2, 4*n)/3)`
-/

namespace A004772.P17554545375468469748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 2 (4 * n) : ℚ) / 3⌋

end

end A004772.P17554545375468469748

namespace A004772

/-- `floor(or(2, 4*n)/3)` -/
def P17554545375468469748.Spec : Prop :=
  ∀ n, P17554545375468469748.a n = A004772 (n + 1)

end A004772

/-! ## A004772.P9254671941610942437

`round(or(1, 4*n)/3)`
-/

namespace A004772.P9254671941610942437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (4 * n) : ℚ) / 3)

end

end A004772.P9254671941610942437

namespace A004772

/-- `round(or(1, 4*n)/3)` -/
def P9254671941610942437.Spec : Prop :=
  ∀ n, P9254671941610942437.a n = A004772 (n + 1)

end A004772

/-! ## A004772.P10791629394845976085

`floor(xor(2, 4*n)/3)`
-/

namespace A004772.P10791629394845976085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 2 (4 * n) : ℚ) / 3⌋

end

end A004772.P10791629394845976085

namespace A004772

/-- `floor(xor(2, 4*n)/3)` -/
def P10791629394845976085.Spec : Prop :=
  ∀ n, P10791629394845976085.a n = A004772 (n + 1)

end A004772

/-! ## A004772.P5707487993947685616

`round(xor(1, 4*n)/3)`
-/

namespace A004772.P5707487993947685616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.xor 1 (4 * n) : ℚ) / 3)

end

end A004772.P5707487993947685616

namespace A004772

/-- `round(xor(1, 4*n)/3)` -/
def P5707487993947685616.Spec : Prop :=
  ∀ n, P5707487993947685616.a n = A004772 (n + 1)

end A004772

/-! ## A004772.P9958065790661197768

`∑[C(2, n%3)]-1`
-/

namespace A004772.P9958065790661197768
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A004772.P9958065790661197768

namespace A004772

/-- `∑[C(2, n%3)]-1` -/
def P9958065790661197768.Spec : Prop :=
  ∀ n, P9958065790661197768.a n = A004772 (n + 1)

end A004772

/-! ## A004772.P3395842740931572152

`comp[a(n-1)+4]` with `a(0)=1`
-/

namespace A004772.P3395842740931572152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004772.P3395842740931572152

namespace A004772

/-- `comp[a(n-1)+4]` -/
def P3395842740931572152.Spec : Prop :=
  ∀ n, (P3395842740931572152.a n : ℤ) = A004772 (n + 1)

end A004772

/-! ## A004772.P11047632843390115144

`record[n-val(n+3, 4)]`
-/

namespace A004772.P11047632843390115144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 3) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004772.P11047632843390115144

namespace A004772

/-- `record[n-val(n+3, 4)]` -/
def P11047632843390115144.Spec : Prop :=
  ∀ n, P11047632843390115144.a n = A004772 (n + 1)

end A004772

/-!
# A004773: Numbers congruent to {0, 1, 2} mod 4: a(n) = floor(4*n/3).

The programs for A004773, the canonical program `A004773.P4600344600828530214` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004773 has offset 0).

The definition of A004773 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor(4*n/3)` (program `A004773.P4600344600828530214`, by `A004773.P4600344600828530214.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A004773.P4600344600828530214

`floor(4*n/3)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004773

/-- `floor(4*n/3)` -/
def P4600344600828530214.Spec : Prop :=
  ∀ n, P4600344600828530214.a n = A004773 n

theorem P4600344600828530214.correct : P4600344600828530214.Spec := by
  intro n
  simp only [A004773]

end A004773

/-! ## A004773.P1485296534704432915

`a(n-3)+4` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A004773.P1485296534704432915
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 3) + 4

end

end A004773.P1485296534704432915

namespace A004773

/-- `a(n-3)+4` -/
def P1485296534704432915.Spec : Prop :=
  ∀ n, (P1485296534704432915.a n : ℤ) = A004773 n

end A004773

/-! ## A004773.P12781719251255872530

`(4*n-n%3)/3`
-/

namespace A004773.P12781719251255872530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 * n : ℤ) - ((n % 3 : ℕ) : ℤ) : ℚ) / 3

end

end A004773.P12781719251255872530

namespace A004773

/-- `(4*n-n%3)/3` -/
def P12781719251255872530.Spec : Prop :=
  ∀ n, P12781719251255872530.a n = (A004773 n : ℚ)

end A004773

/-! ## A004773.P923239084683393786

`(12*n-3+3*cos(2*n*π/3)+sqrt(3)*sin(2*n*π/3))/9`
-/

namespace A004773.P923239084683393786
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((12 * n : ℤ) - 3 : ℝ) + 3 * Real.cos ((2 * n : ℝ) * Real.pi / 3) + Real.sqrt (3 : ℝ) * Real.sin ((2 * n : ℝ) * Real.pi / 3)) / 9

end

end A004773.P923239084683393786

namespace A004773

/-- `(12*n-3+3*cos(2*n*π/3)+sqrt(3)*sin(2*n*π/3))/9` -/
def P923239084683393786.Spec : Prop :=
  ∀ n, P923239084683393786.a n = (A004773 n : ℝ)

end A004773

/-! ## A004773.P11952099751249797532

`A042968(n+1)-1`
-/

namespace A004773.P11952099751249797532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (n + 1) - 1

end

end A004773.P11952099751249797532

namespace A004773

/-- `A042968(n+1)-1` -/
def P11952099751249797532.Spec : Prop :=
  ∀ n, P11952099751249797532.a n = A004773 n

end A004773

/-! ## A004773.P14871720561169859193

`A004396(n)+A004523(n)`
-/

namespace A004773.P14871720561169859193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 n + A004523 n

end

end A004773.P14871720561169859193

namespace A004773

/-- `A004396(n)+A004523(n)` -/
def P14871720561169859193.Spec : Prop :=
  ∀ n, P14871720561169859193.a n = A004773 n

end A004773

/-! ## A004773.P6459319415518663127

`4*A002264(n)+A010872(n)`
-/

namespace A004773.P6459319415518663127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A002264 n + A010872 n

end

end A004773.P6459319415518663127

namespace A004773

/-- `4*A002264(n)+A010872(n)` -/
def P6459319415518663127.Spec : Prop :=
  ∀ n, P6459319415518663127.a n = A004773 n

end A004773

/-! ## A004773.P9942598270228273476

`comp[or(3, n)]`
-/

namespace A004773.P9942598270228273476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004773.P9942598270228273476

namespace A004773

/-- `comp[or(3, n)]` -/
def P9942598270228273476.Spec : Prop :=
  ∀ n, (P9942598270228273476.a n : ℤ) = A004773 n

end A004773

/-! ## A004773.P10232461699492687201

`comp[record[xor(3, n)]]`
-/

namespace A004773.P10232461699492687201
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004773.P10232461699492687201

namespace A004773

/-- `comp[record[xor(3, n)]]` -/
def P10232461699492687201.Spec : Prop :=
  ∀ n, (P10232461699492687201.a n : ℤ) = A004773 n

end A004773

/-! ## A004773.P14303485547654687522

`comp[lcm(4, n)-1]`
-/

namespace A004773.P14303485547654687522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004773.P14303485547654687522

namespace A004773

/-- `comp[lcm(4, n)-1]` -/
def P14303485547654687522.Spec : Prop :=
  ∀ n, (P14303485547654687522.a n : ℤ) = A004773 n

end A004773

/-! ## A004773.P4970360044397495969

`comp[xor(3, 4*n)]`
-/

namespace A004773.P4970360044397495969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (4 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004773.P4970360044397495969

namespace A004773

/-- `comp[xor(3, 4*n)]` -/
def P4970360044397495969.Spec : Prop :=
  ∀ n, (P4970360044397495969.a n : ℤ) = A004773 n

end A004773

/-! ## A004773.P14232493608845174767

`record[n%or(3, n)]`
-/

namespace A004773.P14232493608845174767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004773.P14232493608845174767

namespace A004773

/-- `record[n%or(3, n)]` -/
def P14232493608845174767.Spec : Prop :=
  ∀ n, (P14232493608845174767.a n : ℤ) = A004773 n

end A004773

/-! ## A004773.P3246670934890214874

`lt[val(n+1, 2), 2]`
-/

namespace A004773.P3246670934890214874
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004773.P3246670934890214874

namespace A004773

/-- `lt[val(n+1, 2), 2]` -/
def P3246670934890214874.Spec : Prop :=
  ∀ n, (P3246670934890214874.a n : ℤ) = A004773 n

end A004773

/-! ## A004773.P9201451114248547507

`lt[n, xor(3, n)+2]`
-/

namespace A004773.P9201451114248547507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004773.P9201451114248547507

namespace A004773

/-- `lt[n, xor(3, n)+2]` -/
def P9201451114248547507.Spec : Prop :=
  ∀ n, (P9201451114248547507.a n : ℤ) = A004773 n

end A004773

/-! ## A004773.P728015038546004022

`lt[n-2, xor(3, n)]`
-/

namespace A004773.P728015038546004022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004773.P728015038546004022

namespace A004773

/-- `lt[n-2, xor(3, n)]` -/
def P728015038546004022.Spec : Prop :=
  ∀ n, (P728015038546004022.a n : ℤ) = A004773 n

end A004773

/-! ## A004773.P10545577015137548980

`lt[n/or(3, n), 1]`
-/

namespace A004773.P10545577015137548980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.lor 3 n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A004773.P10545577015137548980

namespace A004773

/-- `lt[n/or(3, n), 1]` -/
def P10545577015137548980.Spec : Prop :=
  ∀ n, (P10545577015137548980.a n : ℤ) = A004773 n

end A004773

/-! ## A004773.P9325067206690019641

`∑[dr(n^3)%7]`
-/

namespace A004773.P9325067206690019641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (n ^ 3 : ℤ) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004773.P9325067206690019641

namespace A004773

/-- `∑[dr(n^3)%7]` -/
def P9325067206690019641.Spec : Prop :=
  ∀ n, (P9325067206690019641.a n : ℤ) = A004773 n

end A004773

/-! ## A004773.P6376219341850150082

`comp[a(n-1)+4]` with `a(0)=3`
-/

namespace A004773.P6376219341850150082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3] fun n f1 =>
  f1 (n - 1) + 4

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004773.P6376219341850150082

namespace A004773

/-- `comp[a(n-1)+4]` -/
def P6376219341850150082.Spec : Prop :=
  ∀ n, (P6376219341850150082.a n : ℤ) = A004773 n

end A004773

/-! ## A004773.P10128459689686865096

`comp[n-(n+1)%4]`
-/

namespace A004773.P10128459689686865096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n + 1) % 4 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004773.P10128459689686865096

namespace A004773

/-- `comp[n-(n+1)%4]` -/
def P10128459689686865096.Spec : Prop :=
  ∀ n, (P10128459689686865096.a n : ℤ) = A004773 n

end A004773

/-! ## A004773.P3069779798188605514

`record[n-val(n+1, 4)]`
-/

namespace A004773.P3069779798188605514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (n + 1) 4 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004773.P3069779798188605514

namespace A004773

/-- `record[n-val(n+1, 4)]` -/
def P3069779798188605514.Spec : Prop :=
  ∀ n, P3069779798188605514.a n = A004773 n

end A004773

/-!
# A004774: Numbers n whose binary expansion does not end in 001.

The programs for A004774, the canonical program `A004774.P804969563913827474` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004774 has offset 1).

The definition of A004774 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004774.P804969563913827474

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=8, a(9)=10`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004774

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P804969563913827474.Spec : Prop :=
  ∀ n, P804969563913827474.a n = A004774 (n + 1)

theorem P804969563913827474.correct : P804969563913827474.Spec := by
  intro n
  simp only [A004774, Nat.add_sub_cancel]

end A004774

/-! ## A004774.P3732631114911335701

`comp[8*n+9]`
-/

namespace A004774.P3732631114911335701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 9

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004774.P3732631114911335701

namespace A004774

/-- `comp[8*n+9]` -/
def P3732631114911335701.Spec : Prop :=
  ∀ n, (P3732631114911335701.a n : ℤ) = A004774 (n + 1)

end A004774

/-! ## A004774.P15012551682411398841

`lt[and(n-2, -n), 4]`
-/

namespace A004774.P15012551682411398841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 2) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004774.P15012551682411398841

namespace A004774

/-- `lt[and(n-2, -n), 4]` -/
def P15012551682411398841.Spec : Prop :=
  ∀ n, (P15012551682411398841.a n : ℤ) = A004774 (n + 1)

end A004774

/-! ## A004774.P12359645975872233369

`lt[2*n, lcm(8, n+7)]`
-/

namespace A004774.P12359645975872233369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 (n + 7)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004774.P12359645975872233369

namespace A004774

/-- `lt[2*n, lcm(8, n+7)]` -/
def P12359645975872233369.Spec : Prop :=
  ∀ n, (P12359645975872233369.a n : ℤ) = A004774 (n + 1)

end A004774

/-! ## A004774.P42361221649906851

`lt[xor(n-1, n-2), 8]`
-/

namespace A004774.P42361221649906851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 1) ((n : ℤ) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004774.P42361221649906851

namespace A004774

/-- `lt[xor(n-1, n-2), 8]` -/
def P42361221649906851.Spec : Prop :=
  ∀ n, (P42361221649906851.a n : ℤ) = A004774 (n + 1)

end A004774

/-! ## A004774.P16087569305944893489

`floor(a(n-1)/8+n)` with `a(0)=0`
-/

namespace A004774.P16087569305944893489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊(a (n - 1) : ℚ) / 8 + (n : ℚ)⌋

end

end A004774.P16087569305944893489

namespace A004774

/-- `floor(a(n-1)/8+n)` -/
def P16087569305944893489.Spec : Prop :=
  ∀ n, P16087569305944893489.a n = A004774 (n + 1)

end A004774

/-! ## A004774.P3740131561712857834

`lt[-or(1-n, n-1), 5]`
-/

namespace A004774.P3740131561712857834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (1 - (n : ℤ)) ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004774.P3740131561712857834

namespace A004774

/-- `lt[-or(1-n, n-1), 5]` -/
def P3740131561712857834.Spec : Prop :=
  ∀ n, (P3740131561712857834.a n : ℤ) = A004774 (n + 1)

end A004774

/-! ## A004774.P10100698307351040843

`lt[acot(n-3), and(7, n-1)]`
-/

namespace A004774.P10100698307351040843
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) - 3 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 7 ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A004774.P10100698307351040843

namespace A004774

/-- `lt[acot(n-3), and(7, n-1)]` -/
def P10100698307351040843.Spec : Prop :=
  ∀ n, (P10100698307351040843.a n : ℤ) = A004774 (n + 1)

end A004774

/-! ## A004774.P6664982138479881443

`lt[or(n-1, n-2), n+3]`
-/

namespace A004774.P6664982138479881443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 1) ((n : ℤ) - 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004774.P6664982138479881443

namespace A004774

/-- `lt[or(n-1, n-2), n+3]` -/
def P6664982138479881443.Spec : Prop :=
  ∀ n, (P6664982138479881443.a n : ℤ) = A004774 (n + 1)

end A004774

/-! ## A004774.P15535518721684482916

`lt[n, and(n-1, n-2)+6]`
-/

namespace A004774.P15535518721684482916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) ((n : ℤ) - 2) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004774.P15535518721684482916

namespace A004774

/-- `lt[n, and(n-1, n-2)+6]` -/
def P15535518721684482916.Spec : Prop :=
  ∀ n, (P15535518721684482916.a n : ℤ) = A004774 (n + 1)

end A004774

/-! ## A004774.P3051999711052387503

`lt[n-6, and(n-1, n-2)]`
-/

namespace A004774.P3051999711052387503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((n : ℤ) - 1) ((n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004774.P3051999711052387503

namespace A004774

/-- `lt[n-6, and(n-1, n-2)]` -/
def P3051999711052387503.Spec : Prop :=
  ∀ n, (P3051999711052387503.a n : ℤ) = A004774 (n + 1)

end A004774

/-! ## A004774.P15352545811964868977

`n-floor((7-a(n-1))/8)` with `a(0)=0`
-/

namespace A004774.P15352545811964868977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - ⌊(7 - a (n - 1) : ℚ) / 8⌋

end

end A004774.P15352545811964868977

namespace A004774

/-- `n-floor((7-a(n-1))/8)` -/
def P15352545811964868977.Spec : Prop :=
  ∀ n, P15352545811964868977.a n = A004774 (n + 1)

end A004774

/-! ## A004774.P4325201571212328625

`a(n-7)+8` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=7, a(8)=8`
-/

namespace A004774.P4325201571212328625
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 3, 4, 5, 6, 7, 8] fun n a =>
  a (n - 7) + 8

end

end A004774.P4325201571212328625

namespace A004774

/-- `a(n-7)+8` -/
def P4325201571212328625.Spec : Prop :=
  ∀ n, (P4325201571212328625.a n : ℤ) = A004774 (n + 1)

end A004774

/-! ## A004774.P7360751902476869560

`eq[0, (n-1)*and(n-2, gcd(n+3, n-1))]`
-/

namespace A004774.P7360751902476869560
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * Int.land ((n : ℤ) - 2) (Int.gcd (n + 3 : ℤ) ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004774.P7360751902476869560

namespace A004774

/-- `eq[0, (n-1)*and(n-2, gcd(n+3, n-1))]` -/
def P7360751902476869560.Spec : Prop :=
  ∀ n, (P7360751902476869560.a n : ℤ) = A004774 (n + 1)

end A004774

/-! ## A004774.P7409201521060838882

`∑[char[A017005(n+1)]]+n`
-/

namespace A004774.P7409201521060838882
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A004774.P7409201521060838882

namespace A004774

/-- `∑[char[A017005(n+1)]]+n` -/
def P7409201521060838882.Spec : Prop :=
  ∀ n, (P7409201521060838882.a n : ℤ) = A004774 (n + 1)

end A004774

/-! ## A004774.P1874496430252713773

`comp[A016777(3*n)-abs(1-n)]-1`
-/

namespace A004774.P1874496430252713773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (3 * n) - |1 - (n : ℤ)|

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - 1

end

end A004774.P1874496430252713773

namespace A004774

/-- `comp[A016777(3*n)-abs(1-n)]-1` -/
def P1874496430252713773.Spec : Prop :=
  ∀ n, P1874496430252713773.a n = A004774 (n + 1)

end A004774

/-! ## A004774.P15061126172602925907

`A047565(n+1)-A157928(n)`
-/

namespace A004774.P15061126172602925907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 1) - A157928 n

end

end A004774.P15061126172602925907

namespace A004774

/-- `A047565(n+1)-A157928(n)` -/
def P15061126172602925907.Spec : Prop :=
  ∀ n, P15061126172602925907.a n = A004774 (n + 1)

end A004774

/-! ## A004774.P1239151172931350421

`∪[A004772(n+1), A008576(n)]`
-/

namespace A004774.P1239151172931350421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004772 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004774.P1239151172931350421

namespace A004774

/-- `∪[A004772(n+1), A008576(n)]` -/
def P1239151172931350421.Spec : Prop :=
  ∀ n, (P1239151172931350421.a n : ℤ) = A004774 (n + 1)

end A004774

/-! ## A004774.P6375680281013971265

`∪[A028962(n+1), A004271(n)]`
-/

namespace A004774.P6375680281013971265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004774.P6375680281013971265

namespace A004774

/-- `∪[A028962(n+1), A004271(n)]` -/
def P6375680281013971265.Spec : Prop :=
  ∀ n, (P6375680281013971265.a n : ℤ) = A004774 (n + 1)

end A004774

/-! ## A004774.P1917403176005618864

`∪[A028962(n+1), A004272(n)]`
-/

namespace A004774.P1917403176005618864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028962 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004774.P1917403176005618864

namespace A004774

/-- `∪[A028962(n+1), A004272(n)]` -/
def P1917403176005618864.Spec : Prop :=
  ∀ n, (P1917403176005618864.a n : ℤ) = A004774 (n + 1)

end A004774

/-!
# A004775: Numbers k such that the binary expansion of k does not end in 011.

The programs for A004775, the canonical program `A004775.P16590243105960392985` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004775 has offset 1).

The definition of A004775 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004775.P2734359865610400661

`comp[8*n+11]`
-/

namespace A004775.P2734359865610400661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n + 11

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004775.P2734359865610400661

namespace A004775

/-- `comp[8*n+11]` -/
def P2734359865610400661.Spec : Prop :=
  ∀ n, (P2734359865610400661.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P16590243105960392985

`lt[2*n, lcm(8, n+5)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004775

/-- `lt[2*n, lcm(8, n+5)]` -/
def P16590243105960392985.Spec : Prop :=
  ∀ n, (P16590243105960392985.a n : ℤ) = A004775 (n + 1)

theorem P16590243105960392985.correct : P16590243105960392985.Spec := by
  intro n
  simp only [A004775, Nat.add_sub_cancel]

end A004775

/-! ## A004775.P11055001784798076350

`lt[and(3-n, n-3), 5]`
-/

namespace A004775.P11055001784798076350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (3 - (n : ℤ)) ((n : ℤ) - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004775.P11055001784798076350

namespace A004775

/-- `lt[and(3-n, n-3), 5]` -/
def P11055001784798076350.Spec : Prop :=
  ∀ n, (P11055001784798076350.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P4440708917474368937

`lt[xor(n-3, n-4), 8]`
-/

namespace A004775.P4440708917474368937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((n : ℤ) - 3) ((n : ℤ) - 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004775.P4440708917474368937

namespace A004775

/-- `lt[xor(n-3, n-4), 8]` -/
def P4440708917474368937.Spec : Prop :=
  ∀ n, (P4440708917474368937.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P14201292182425106954

`lt[gcd(n, (n-3)%8), 8]`
-/

namespace A004775.P14201292182425106954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (Int.tmod ((n : ℤ) - 3) 8)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004775.P14201292182425106954

namespace A004775

/-- `lt[gcd(n, (n-3)%8), 8]` -/
def P14201292182425106954.Spec : Prop :=
  ∀ n, (P14201292182425106954.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P3920582908760145880

`lt[-or(3-n, n-3), 5]`
-/

namespace A004775.P3920582908760145880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (3 - (n : ℤ)) ((n : ℤ) - 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004775.P3920582908760145880

namespace A004775

/-- `lt[-or(3-n, n-3), 5]` -/
def P3920582908760145880.Spec : Prop :=
  ∀ n, (P3920582908760145880.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P1239108281800343015

`lt[(n+3)%or(7, n-3), 7]`
-/

namespace A004775.P1239108281800343015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 3 : ℤ) (Int.lor 7 ((n : ℤ) - 3))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004775.P1239108281800343015

namespace A004775

/-- `lt[(n+3)%or(7, n-3), 7]` -/
def P1239108281800343015.Spec : Prop :=
  ∀ n, (P1239108281800343015.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P17234863751880128489

`lt[or(n-3, n-4), n+1]`
-/

namespace A004775.P17234863751880128489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((n : ℤ) - 3) ((n : ℤ) - 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004775.P17234863751880128489

namespace A004775

/-- `lt[or(n-3, n-4), n+1]` -/
def P17234863751880128489.Spec : Prop :=
  ∀ n, (P17234863751880128489.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P13662595139164868904

`floor(a(n-3)/8+n)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A004775.P13662595139164868904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  ⌊(a (n - 3) : ℚ) / 8 + (n : ℚ)⌋

end

end A004775.P13662595139164868904

namespace A004775

/-- `floor(a(n-3)/8+n)` -/
def P13662595139164868904.Spec : Prop :=
  ∀ n, P13662595139164868904.a n = A004775 (n + 1)

end A004775

/-! ## A004775.P1546395240215767516

`record[or(n, and(4, n+1))%(n+1)]`
-/

namespace A004775.P1546395240215767516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (Nat.land 4 (n + 1)) % (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004775.P1546395240215767516

namespace A004775

/-- `record[or(n, and(4, n+1))%(n+1)]` -/
def P1546395240215767516.Spec : Prop :=
  ∀ n, (P1546395240215767516.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P14126992489157082676

`lt[A085121(n), 9]`
-/

namespace A004775.P14126992489157082676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085121 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004775.P14126992489157082676

namespace A004775

/-- `lt[A085121(n), 9]` -/
def P14126992489157082676.Spec : Prop :=
  ∀ n, (P14126992489157082676.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P578531167702721203

`eq[1, A035444(A085121(n)/2)]`
-/

namespace A004775.P578531167702721203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035444 (SequenceMachineLib.roundAway ((A085121 n : ℚ) / 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004775.P578531167702721203

namespace A004775

/-- `eq[1, A035444(A085121(n)/2)]` -/
def P578531167702721203.Spec : Prop :=
  ∀ n, (P578531167702721203.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P14709772822812806263

`A047588(n+1)-A130543(n)`
-/

namespace A004775.P14709772822812806263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047588 (n + 1) - A130543 n

end

end A004775.P14709772822812806263

namespace A004775

/-- `A047588(n+1)-A130543(n)` -/
def P14709772822812806263.Spec : Prop :=
  ∀ n, P14709772822812806263.a n = A004775 (n + 1)

end A004775

/-! ## A004775.P17144694115242162153

`∪[A000029(n), A047573(n+1)]`
-/

namespace A004775.P17144694115242162153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004775.P17144694115242162153

namespace A004775

/-- `∪[A000029(n), A047573(n+1)]` -/
def P17144694115242162153.Spec : Prop :=
  ∀ n, (P17144694115242162153.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P4429951298638560401

`∪[A000031(n), A047573(n+1)]`
-/

namespace A004775.P4429951298638560401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000031 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004775.P4429951298638560401

namespace A004775

/-- `∪[A000031(n), A047573(n+1)]` -/
def P4429951298638560401.Spec : Prop :=
  ∀ n, (P4429951298638560401.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P14645121745680687012

`∪[A000051(n), A047573(n+1)]`
-/

namespace A004775.P14645121745680687012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004775.P14645121745680687012

namespace A004775

/-- `∪[A000051(n), A047573(n+1)]` -/
def P14645121745680687012.Spec : Prop :=
  ∀ n, (P14645121745680687012.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P17750882346264601337

`∪[A000225(n), A047573(n+1)]`
-/

namespace A004775.P17750882346264601337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004775.P17750882346264601337

namespace A004775

/-- `∪[A000225(n), A047573(n+1)]` -/
def P17750882346264601337.Spec : Prop :=
  ∀ n, (P17750882346264601337.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P12561788728929217702

`∪[A000245(n), A047573(n+1)]`
-/

namespace A004775.P12561788728929217702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004775.P12561788728929217702

namespace A004775

/-- `∪[A000245(n), A047573(n+1)]` -/
def P12561788728929217702.Spec : Prop :=
  ∀ n, (P12561788728929217702.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P1136834373529158698

`∪[A000646(n), A047573(n+1)]`
-/

namespace A004775.P1136834373529158698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000646 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004775.P1136834373529158698

namespace A004775

/-- `∪[A000646(n), A047573(n+1)]` -/
def P1136834373529158698.Spec : Prop :=
  ∀ n, (P1136834373529158698.a n : ℤ) = A004775 (n + 1)

end A004775

/-! ## A004775.P11867713511541537008

`∪[A000648(n), A047573(n+1)]`
-/

namespace A004775.P11867713511541537008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000648 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047573 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004775.P11867713511541537008

namespace A004775

/-- `∪[A000648(n), A047573(n+1)]` -/
def P11867713511541537008.Spec : Prop :=
  ∀ n, (P11867713511541537008.a n : ℤ) = A004775 (n + 1)

end A004775

/-!
# A004776: Numbers not congruent to 5 (mod 8).

The programs for A004776, the canonical program `A004776.P12492855655341303098` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004776 has offset 1).

The definition of A004776 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004776.P12492855655341303098

`n+1+floor((n-5)/7)`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004776

/-- `n+1+floor((n-5)/7)` -/
def P12492855655341303098.Spec : Prop :=
  ∀ n, P12492855655341303098.a n = A004776 (n + 1)

theorem P12492855655341303098.correct : P12492855655341303098.Spec := by
  intro n
  simp only [A004776, Nat.add_sub_cancel]

end A004776

/-! ## A004776.P6203645457848486967

`lt[val(n+3, 2), 3]`
-/

namespace A004776.P6203645457848486967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004776.P6203645457848486967

namespace A004776

/-- `lt[val(n+3, 2), 3]` -/
def P6203645457848486967.Spec : Prop :=
  ∀ n, (P6203645457848486967.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P5963546675609516647

`comp[2*or(3, n)-1]`
-/

namespace A004776.P5963546675609516647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lor 3 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004776.P5963546675609516647

namespace A004776

/-- `comp[2*or(3, n)-1]` -/
def P5963546675609516647.Spec : Prop :=
  ∀ n, (P5963546675609516647.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P10178999668926024483

`comp[a(n-1)+8]` with `a(0)=5`
-/

namespace A004776.P10178999668926024483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5] fun n f1 =>
  f1 (n - 1) + 8

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004776.P10178999668926024483

namespace A004776

/-- `comp[a(n-1)+8]` -/
def P10178999668926024483.Spec : Prop :=
  ∀ n, (P10178999668926024483.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P12017754330264240065

`comp[xor(3, n)+2+n]`
-/

namespace A004776.P12017754330264240065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n + 2 + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004776.P12017754330264240065

namespace A004776

/-- `comp[xor(3, n)+2+n]` -/
def P12017754330264240065.Spec : Prop :=
  ∀ n, (P12017754330264240065.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P11375142856776565854

`eq[0, n*val(n+3, 8)]`
-/

namespace A004776.P11375142856776565854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (n + 3) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004776.P11375142856776565854

namespace A004776

/-- `eq[0, n*val(n+3, 8)]` -/
def P11375142856776565854.Spec : Prop :=
  ∀ n, (P11375142856776565854.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P959604975475088638

`lt[n+3, lcm(8, n+3)]`
-/

namespace A004776.P959604975475088638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 8 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004776.P959604975475088638

namespace A004776

/-- `lt[n+3, lcm(8, n+3)]` -/
def P959604975475088638.Spec : Prop :=
  ∀ n, (P959604975475088638.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P5498136132141115249

`lt[xor(n+2, n+3), 8]`
-/

namespace A004776.P5498136132141115249
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (n + 2) (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004776.P5498136132141115249

namespace A004776

/-- `lt[xor(n+2, n+3), 8]` -/
def P5498136132141115249.Spec : Prop :=
  ∀ n, (P5498136132141115249.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P8473170504149110111

`eq[1, n^val(n+3, 8)]`
-/

namespace A004776.P8473170504149110111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (n + 3) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004776.P8473170504149110111

namespace A004776

/-- `eq[1, n^val(n+3, 8)]` -/
def P8473170504149110111.Spec : Prop :=
  ∀ n, (P8473170504149110111.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P7588220662840840739

`lt[C(2, n), (n+3)%8]`
-/

namespace A004776.P7588220662840840739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 3) % 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004776.P7588220662840840739

namespace A004776

/-- `lt[C(2, n), (n+3)%8]` -/
def P7588220662840840739.Spec : Prop :=
  ∀ n, (P7588220662840840739.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P10718498008152307338

`eq[n, val(n+3, 8)+n]`
-/

namespace A004776.P10718498008152307338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 3) 8 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004776.P10718498008152307338

namespace A004776

/-- `eq[n, val(n+3, 8)+n]` -/
def P10718498008152307338.Spec : Prop :=
  ∀ n, (P10718498008152307338.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P1505110725457443558

`round(a(n-1)/8+n)` with `a(0)=0`
-/

namespace A004776.P1505110725457443558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℚ) / 8 + (n : ℚ))

end

end A004776.P1505110725457443558

namespace A004776

/-- `round(a(n-1)/8+n)` -/
def P1505110725457443558.Spec : Prop :=
  ∀ n, P1505110725457443558.a n = A004776 (n + 1)

end A004776

/-! ## A004776.P8851466616465343932

`lt[gcd(n+3, (1-n)^10), 5]`
-/

namespace A004776.P8851466616465343932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) ((1 - (n : ℤ)) ^ 10)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004776.P8851466616465343932

namespace A004776

/-- `lt[gcd(n+3, (1-n)^10), 5]` -/
def P8851466616465343932.Spec : Prop :=
  ∀ n, (P8851466616465343932.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P1207974163183472042

`eq[2, lcm(2, and(n+2, n+3)-n)]`
-/

namespace A004776.P1207974163183472042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 ((Nat.land (n + 2) (n + 3) : ℤ) - (n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004776.P1207974163183472042

namespace A004776

/-- `eq[2, lcm(2, and(n+2, n+3)-n)]` -/
def P1207974163183472042.Spec : Prop :=
  ∀ n, (P1207974163183472042.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P11763457141949703898

`eq[n+2, (n+2)%or(7, n+2)]`
-/

namespace A004776.P11763457141949703898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) % Nat.lor 7 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004776.P11763457141949703898

namespace A004776

/-- `eq[n+2, (n+2)%or(7, n+2)]` -/
def P11763457141949703898.Spec : Prop :=
  ∀ n, (P11763457141949703898.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P5721624996724066253

`lt[A087229(n), 5]`
-/

namespace A004776.P5721624996724066253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087229 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004776.P5721624996724066253

namespace A004776

/-- `lt[A087229(n), 5]` -/
def P5721624996724066253.Spec : Prop :=
  ∀ n, (P5721624996724066253.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P18406222866365290201

`comp[A004770(n+1)]`
-/

namespace A004776.P18406222866365290201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004770 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004776.P18406222866365290201

namespace A004776

/-- `comp[A004770(n+1)]` -/
def P18406222866365290201.Spec : Prop :=
  ∀ n, (P18406222866365290201.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P9948394401229673374

`comp[A168392(n+1)]`
-/

namespace A004776.P9948394401229673374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168392 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004776.P9948394401229673374

namespace A004776

/-- `comp[A168392(n+1)]` -/
def P9948394401229673374.Spec : Prop :=
  ∀ n, (P9948394401229673374.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P12181514654454048866

`∪[2*n, A047505(n+1)]`
-/

namespace A004776.P12181514654454048866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004776.P12181514654454048866

namespace A004776

/-- `∪[2*n, A047505(n+1)]` -/
def P12181514654454048866.Spec : Prop :=
  ∀ n, (P12181514654454048866.a n : ℤ) = A004776 (n + 1)

end A004776

/-! ## A004776.P5708357813057973819

`∪[2*n, A047516(n+1)]`
-/

namespace A004776.P5708357813057973819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047516 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A004776.P5708357813057973819

namespace A004776

/-- `∪[2*n, A047516(n+1)]` -/
def P5708357813057973819.Spec : Prop :=
  ∀ n, (P5708357813057973819.a n : ℤ) = A004776 (n + 1)

end A004776

/-!
# A004777: Numbers not congruent to 7 mod 8.

The programs for A004777, the canonical program `A004777.P6227242681611648792` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004777 has offset 1).

The definition of A004777 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004777.P16018516056622701698

`floor(n*8/7)`
-/

namespace A004777.P16018516056622701698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n * 8 : ℚ) / 7⌋

end

end A004777.P16018516056622701698

namespace A004777

/-- `floor(n*8/7)` -/
def P16018516056622701698.Spec : Prop :=
  ∀ n, P16018516056622701698.a n = A004777 (n + 1)

end A004777

/-! ## A004777.P6227242681611648792

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=1, a(2)=2, a(3)=3, a(4)=4, a(5)=5, a(6)=6, a(7)=8`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004777

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P6227242681611648792.Spec : Prop :=
  ∀ n, P6227242681611648792.a n = A004777 (n + 1)

theorem P6227242681611648792.correct : P6227242681611648792.Spec := by
  intro n
  simp only [A004777, Nat.add_sub_cancel]

end A004777

/-! ## A004777.P13716256751883034430

`n+A132270(n+1)`
-/

namespace A004777.P13716256751883034430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) + A132270 (n + 1)

end

end A004777.P13716256751883034430

namespace A004777

/-- `n+A132270(n+1)` -/
def P13716256751883034430.Spec : Prop :=
  ∀ n, P13716256751883034430.a n = A004777 (n + 1)

end A004777

/-! ## A004777.P7004454612403432577

`comp[or(7, n)]`
-/

namespace A004777.P7004454612403432577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 7 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004777.P7004454612403432577

namespace A004777

/-- `comp[or(7, n)]` -/
def P7004454612403432577.Spec : Prop :=
  ∀ n, (P7004454612403432577.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P12775590233412856968

`comp[record[xor(7, n)]]`
-/

namespace A004777.P12775590233412856968
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004777.P12775590233412856968

namespace A004777

/-- `comp[record[xor(7, n)]]` -/
def P12775590233412856968.Spec : Prop :=
  ∀ n, (P12775590233412856968.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P16662547249034970691

`comp[lcm(8, n)-1]`
-/

namespace A004777.P16662547249034970691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004777.P16662547249034970691

namespace A004777

/-- `comp[lcm(8, n)-1]` -/
def P16662547249034970691.Spec : Prop :=
  ∀ n, (P16662547249034970691.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P1864428870219378065

`comp[xor(7, 8*n)]`
-/

namespace A004777.P1864428870219378065
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 (8 * n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004777.P1864428870219378065

namespace A004777

/-- `comp[xor(7, 8*n)]` -/
def P1864428870219378065.Spec : Prop :=
  ∀ n, (P1864428870219378065.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P12701638432646240067

`record[n%or(7, n)]`
-/

namespace A004777.P12701638432646240067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % Nat.lor 7 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004777.P12701638432646240067

namespace A004777

/-- `record[n%or(7, n)]` -/
def P12701638432646240067.Spec : Prop :=
  ∀ n, (P12701638432646240067.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P14024347364023827918

`lt[val(n+1, 2), 3]`
-/

namespace A004777.P14024347364023827918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004777.P14024347364023827918

namespace A004777

/-- `lt[val(n+1, 2), 3]` -/
def P14024347364023827918.Spec : Prop :=
  ∀ n, (P14024347364023827918.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P4039260009598514877

`lt[xor(n, n+1), 8]`
-/

namespace A004777.P4039260009598514877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004777.P4039260009598514877

namespace A004777

/-- `lt[xor(n, n+1), 8]` -/
def P4039260009598514877.Spec : Prop :=
  ∀ n, (P4039260009598514877.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P8966134601128041887

`lt[n-6, xor(7, n)]`
-/

namespace A004777.P8966134601128041887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 7 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004777.P8966134601128041887

namespace A004777

/-- `lt[n-6, xor(7, n)]` -/
def P8966134601128041887.Spec : Prop :=
  ∀ n, (P8966134601128041887.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P15366724581351742364

`∑[gcd(7, n)%5]-2`
-/

namespace A004777.P15366724581351742364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 7 n % 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 2

end

end A004777.P15366724581351742364

namespace A004777

/-- `∑[gcd(7, n)%5]-2` -/
def P15366724581351742364.Spec : Prop :=
  ∀ n, P15366724581351742364.a n = A004777 (n + 1)

end A004777

/-! ## A004777.P7271620107219626671

`comp[a(n-1)+8]` with `a(0)=7`
-/

namespace A004777.P7271620107219626671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) + 8

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004777.P7271620107219626671

namespace A004777

/-- `comp[a(n-1)+8]` -/
def P7271620107219626671.Spec : Prop :=
  ∀ n, (P7271620107219626671.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P13712531368435942613

`comp[n-(n+1)%8]`
-/

namespace A004777.P13712531368435942613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (((n + 1) % 8 : ℕ) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004777.P13712531368435942613

namespace A004777

/-- `comp[n-(n+1)%8]` -/
def P13712531368435942613.Spec : Prop :=
  ∀ n, (P13712531368435942613.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P8918317351316939329

`comp[n-xor(3, 2-n)]`
-/

namespace A004777.P8918317351316939329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.xor 3 (2 - (n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004777.P8918317351316939329

namespace A004777

/-- `comp[n-xor(3, 2-n)]` -/
def P8918317351316939329.Spec : Prop :=
  ∀ n, (P8918317351316939329.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P5762556950967888446

`comp[n-and(7, n+1)]`
-/

namespace A004777.P5762556950967888446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 7 (n + 1) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004777.P5762556950967888446

namespace A004777

/-- `comp[n-and(7, n+1)]` -/
def P5762556950967888446.Spec : Prop :=
  ∀ n, (P5762556950967888446.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P12094220689090674772

`record[and(n, or(3, n+1))]`
-/

namespace A004777.P12094220689090674772
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (Nat.lor 3 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004777.P12094220689090674772

namespace A004777

/-- `record[and(n, or(3, n+1))]` -/
def P12094220689090674772.Spec : Prop :=
  ∀ n, (P12094220689090674772.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P12582747659605873698

`comp[∑[dr(∑[n]²)-1]]`
-/

namespace A004777.P12582747659605873698
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (((∑ j ∈ Finset.range (n + 1), f3 j) ^ 2 : ℕ) : ℤ) : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004777.P12582747659605873698

namespace A004777

/-- `comp[∑[dr(∑[n]²)-1]]` -/
def P12582747659605873698.Spec : Prop :=
  ∀ n, (P12582747659605873698.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P4452460493655029092

`eq[0, n*val(n+1, 8)]`
-/

namespace A004777.P4452460493655029092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.valuation (n + 1) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004777.P4452460493655029092

namespace A004777

/-- `eq[0, n*val(n+1, 8)]` -/
def P4452460493655029092.Spec : Prop :=
  ∀ n, (P4452460493655029092.a n : ℤ) = A004777 (n + 1)

end A004777

/-! ## A004777.P16618148945787276047

`eq[1, n^val(n+1, 8)]`
-/

namespace A004777.P16618148945787276047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ SequenceMachineLib.valuation (n + 1) 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004777.P16618148945787276047

namespace A004777

/-- `eq[1, n^val(n+1, 8)]` -/
def P16618148945787276047.Spec : Prop :=
  ∀ n, (P16618148945787276047.a n : ℤ) = A004777 (n + 1)

end A004777

/-!
# A004778: Where records occur in A038548.

The programs for A004778, there is no canonical definition to state claims against.
-/

/-! ## A004778.P9743100483626794017

`A002182(A336867(n+1)-2)`
-/

namespace A004778.P9743100483626794017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (A336867 (n + 1) - 2).toNat

end

end A004778.P9743100483626794017

/-! ## A004778.P12282941435896331097

`A002182(floor(A314895(n)/(n+1)+n))`
-/

namespace A004778.P12282941435896331097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 ⌊(A314895 n : ℚ) / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

end

end A004778.P12282941435896331097

/-! ## A004778.P14404066662102822740

`A002182(floor(A314896(n)/(n+1)+n))`
-/

namespace A004778.P14404066662102822740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 ⌊(A314896 n : ℚ) / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

end

end A004778.P14404066662102822740

/-! ## A004778.P4811716575979836873

`A002182(floor(A314902(n)/(n+1)+n))`
-/

namespace A004778.P4811716575979836873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 ⌊(A314902 n : ℚ) / (n + 1 : ℚ) + (n : ℚ)⌋.toNat

end

end A004778.P4811716575979836873

/-! ## A004778.P8596438836298047156

`record[A061799(n+1)/xor(n, n+1)]`
-/

namespace A004778.P8596438836298047156
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (n + 1) : ℚ) / (Nat.xor n (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P8596438836298047156

/-! ## A004778.P3066252622601398994

`record[A061799((n+1)/2^val(n+1, 2))]`
-/

namespace A004778.P3066252622601398994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P3066252622601398994

/-! ## A004778.P16438950241392166539

`record[A061799(A093178(n))]`
-/

namespace A004778.P16438950241392166539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P16438950241392166539

/-! ## A004778.P7970966998405001235

`record[A061799(A160144(n))]`
-/

namespace A004778.P7970966998405001235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A160144 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P7970966998405001235

/-! ## A004778.P6295165467631503175

`record[A061799(A000265(n+1))]`
-/

namespace A004778.P6295165467631503175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P6295165467631503175

/-! ## A004778.P13604794604213804798

`record[A061799(A014681(n)+1)]`
-/

namespace A004778.P13604794604213804798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P13604794604213804798

/-! ## A004778.P569852050390061654

`record[A061799(A017666(2*n+1))]`
-/

namespace A004778.P569852050390061654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A017666 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P569852050390061654

/-! ## A004778.P2918740343696976735

`record[A033999(n)*A061799(n+1)]`
-/

namespace A004778.P2918740343696976735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P2918740343696976735

/-! ## A004778.P15261238705930309063

`record[A061799(n+1)/A000034(n)]`
-/

namespace A004778.P15261238705930309063
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P15261238705930309063

/-! ## A004778.P15869539447407154026

`record[A061799(n+1)/A010685(n)]`
-/

namespace A004778.P15869539447407154026
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (n + 1) : ℚ) / (A010685 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P15869539447407154026

/-! ## A004778.P806315162052677997

`record[A061799(n+1)-A146076(n+1)]`
-/

namespace A004778.P806315162052677997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (n + 1) - A146076 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P806315162052677997

/-! ## A004778.P6556321242130187287

`record[(A109613(n)-n)*A061799(n+1)]`
-/

namespace A004778.P6556321242130187287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A109613 n - (n : ℤ)) * A061799 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P6556321242130187287

/-! ## A004778.P15080709619095338815

`record[A061799(A005408(A025480(n)))]`
-/

namespace A004778.P15080709619095338815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A005408 (A025480 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P15080709619095338815

/-! ## A004778.P4547300641285312271

`record[A061799(A109613(A014681(n)))]`
-/

namespace A004778.P4547300641285312271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A109613 (A014681 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P4547300641285312271

/-! ## A004778.P9219705645143411814

`record[A061799(2*n+1)/A033273(A033273(n+2))]`
-/

namespace A004778.P9219705645143411814
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061799 (2 * n + 1) : ℚ) / (A033273 (A033273 (n + 2)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004778.P9219705645143411814

/-!
# A004779: Binary expansion contains 3 adjacent 0's.

The programs for A004779, the canonical program `A004779.P9139681296805846934` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004779 has offset 0).

The definition of A004779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004779.P3614379881602865889

`comp[A003796(n+1)]`
-/

namespace A004779.P3614379881602865889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004779.P3614379881602865889

namespace A004779

/-- `comp[A003796(n+1)]` -/
def P3614379881602865889.Spec : Prop :=
  ∀ n, (P3614379881602865889.a n : ℤ) = A004779 n

end A004779

/-! ## A004779.P9139681296805846934

`lt[A000007(A056974(n+1)), 1]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A004779

/-- `lt[A000007(A056974(n+1)), 1]+1` -/
def P9139681296805846934.Spec : Prop :=
  ∀ n, (P9139681296805846934.a n : ℤ) = A004779 n

theorem P9139681296805846934.correct : P9139681296805846934.Spec := by
  intro n
  simp only [A004779]

end A004779

/-! ## A004779.P5876569313482389447

`eq[0, A000007(A056974(2*n+1))]`
-/

namespace A004779.P5876569313482389447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A056974 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004779.P5876569313482389447

namespace A004779

/-- `eq[0, A000007(A056974(2*n+1))]` -/
def P5876569313482389447.Spec : Prop :=
  ∀ n, (P5876569313482389447.a n : ℤ) = A004779 n

end A004779

/-! ## A004779.P13365694206612448577

`lt[2, A087117(n)]`
-/

namespace A004779.P13365694206612448577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004779.P13365694206612448577

namespace A004779

/-- `lt[2, A087117(n)]` -/
def P13365694206612448577.Spec : Prop :=
  ∀ n, (P13365694206612448577.a n : ℤ) = A004779 n

end A004779

/-! ## A004779.P13094576316095106129

`eq[A000038(n), A094497(A087117(n))]`
-/

namespace A004779.P13094576316095106129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094497 (A087117 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004779.P13094576316095106129

namespace A004779

/-- `eq[A000038(n), A094497(A087117(n))]` -/
def P13094576316095106129.Spec : Prop :=
  ∀ n, (P13094576316095106129.a n : ℤ) = A004779 n

end A004779

/-! ## A004779.P6873344327355831460

`eq[A267884(A087117(n)), A267884(n)]`
-/

namespace A004779.P6873344327355831460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267884 (A087117 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267884 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004779.P6873344327355831460

namespace A004779

/-- `eq[A267884(A087117(n)), A267884(n)]` -/
def P6873344327355831460.Spec : Prop :=
  ∀ n, (P6873344327355831460.a n : ℤ) = A004779 n

end A004779

/-! ## A004779.P1152653401070353014

`lt[2*A327190(2*n+1), n]`
-/

namespace A004779.P1152653401070353014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A327190 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004779.P1152653401070353014

namespace A004779

/-- `lt[2*A327190(2*n+1), n]` -/
def P1152653401070353014.Spec : Prop :=
  ∀ n, (P1152653401070353014.a n : ℤ) = A004779 n

end A004779

/-! ## A004779.P14549161087892911654

`lt[A327176(A327190(2*n+1)), n]`
-/

namespace A004779.P14549161087892911654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327176 (A327190 (2 * n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004779.P14549161087892911654

namespace A004779

/-- `lt[A327176(A327190(2*n+1)), n]` -/
def P14549161087892911654.Spec : Prop :=
  ∀ n, (P14549161087892911654.a n : ℤ) = A004779 n

end A004779

/-! ## A004779.P1434873782986443963

`eq[A087117(A157330(n+1)), A087117(n)]`
-/

namespace A004779.P1434873782986443963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 (A157330 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004779.P1434873782986443963

namespace A004779

/-- `eq[A087117(A157330(n+1)), A087117(n)]` -/
def P1434873782986443963.Spec : Prop :=
  ∀ n, (P1434873782986443963.a n : ℤ) = A004779 n

end A004779

/-!
# A004780: Binary expansion contains 2 adjacent 1's.

The programs for A004780, the canonical program `A004780.P11728959069429868263` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004780 has offset 1).

The definition of A004780 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004780.P11728959069429868263

`lt[0, and(n, 2*n)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004780

/-- `lt[0, and(n, 2*n)]` -/
def P11728959069429868263.Spec : Prop :=
  ∀ n, (P11728959069429868263.a n : ℤ) = A004780 (n + 1)

theorem P11728959069429868263.correct : P11728959069429868263.Spec := by
  intro n
  simp only [A004780, Nat.add_sub_cancel]

end A004780

/-! ## A004780.P10737331274867133720

`comp[xor(n, floor(n/3))]`
-/

namespace A004780.P10737331274867133720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 3⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004780.P10737331274867133720

namespace A004780

/-- `comp[xor(n, floor(n/3))]` -/
def P10737331274867133720.Spec : Prop :=
  ∀ n, (P10737331274867133720.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P17773617793289214518

`comp[eq[0, and(n, 2*n)]]`
-/

namespace A004780.P17773617793289214518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (2 * n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A004780.P17773617793289214518

namespace A004780

/-- `comp[eq[0, and(n, 2*n)]]` -/
def P17773617793289214518.Spec : Prop :=
  ∀ n, (P17773617793289214518.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P14315873976429215235

`comp[n-and(n, 2*n)]`
-/

namespace A004780.P14315873976429215235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land n (2 * n) : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004780.P14315873976429215235

namespace A004780

/-- `comp[n-and(n, 2*n)]` -/
def P14315873976429215235.Spec : Prop :=
  ∀ n, (P14315873976429215235.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P11151790158536700742

`comp[abs(or(2*n, -n))]`
-/

namespace A004780.P11151790158536700742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor (2 * n : ℤ) (-(n : ℤ))|

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004780.P11151790158536700742

namespace A004780

/-- `comp[abs(or(2*n, -n))]` -/
def P11151790158536700742.Spec : Prop :=
  ∀ n, (P11151790158536700742.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P7611939734252930027

`comp[-or(2*n, -n)]`
-/

namespace A004780.P7611939734252930027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor (2 * n : ℤ) (-(n : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004780.P7611939734252930027

namespace A004780

/-- `comp[-or(2*n, -n)]` -/
def P7611939734252930027.Spec : Prop :=
  ∀ n, (P7611939734252930027.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P3267990370335240316

`comp[and(n, -(2*n+1))]`
-/

namespace A004780.P3267990370335240316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(2 * n + 1 : ℤ))

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004780.P3267990370335240316

namespace A004780

/-- `comp[and(n, -(2*n+1))]` -/
def P3267990370335240316.Spec : Prop :=
  ∀ n, (P3267990370335240316.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P13223595797543843261

`lt[or(n, 2*n), 3*n]`
-/

namespace A004780.P13223595797543843261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor n (2 * n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004780.P13223595797543843261

namespace A004780

/-- `lt[or(n, 2*n), 3*n]` -/
def P13223595797543843261.Spec : Prop :=
  ∀ n, (P13223595797543843261.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P12807720759360691783

`lt[2*n, xor(n, 3*n)]`
-/

namespace A004780.P12807720759360691783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004780.P12807720759360691783

namespace A004780

/-- `lt[2*n, xor(n, 3*n)]` -/
def P12807720759360691783.Spec : Prop :=
  ∀ n, (P12807720759360691783.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P10084655492793500160

`eq[0, C(2, and(n, 2*n)²)]`
-/

namespace A004780.P10084655492793500160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land n (2 * n) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004780.P10084655492793500160

namespace A004780

/-- `eq[0, C(2, and(n, 2*n)²)]` -/
def P10084655492793500160.Spec : Prop :=
  ∀ n, (P10084655492793500160.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P5164990806758459618

`lt[1, and(n, n+1+n)²]`
-/

namespace A004780.P5164990806758459618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (n + 1 + n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004780.P5164990806758459618

namespace A004780

/-- `lt[1, and(n, n+1+n)²]` -/
def P5164990806758459618.Spec : Prop :=
  ∀ n, (P5164990806758459618.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P3684413844353203304

`comp[or(n, 2*n)-2*n]`
-/

namespace A004780.P3684413844353203304
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor n (2 * n) : ℤ) - (2 * n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004780.P3684413844353203304

namespace A004780

/-- `comp[or(n, 2*n)-2*n]` -/
def P3684413844353203304.Spec : Prop :=
  ∀ n, (P3684413844353203304.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P7313409352670693689

`lt[and(n, -(n+1+n)), n]`
-/

namespace A004780.P7313409352670693689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n + 1 + n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A004780.P7313409352670693689

namespace A004780

/-- `lt[and(n, -(n+1+n)), n]` -/
def P7313409352670693689.Spec : Prop :=
  ∀ n, (P7313409352670693689.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P18362326226678709441

`eq[0, C(2, and(n+1, 2*n))]`
-/

namespace A004780.P18362326226678709441
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land (n + 1) (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004780.P18362326226678709441

namespace A004780

/-- `eq[0, C(2, and(n+1, 2*n))]` -/
def P18362326226678709441.Spec : Prop :=
  ∀ n, (P18362326226678709441.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P10053129040664730655

`eq[0, C(2, 2*and(n, 2*n))]`
-/

namespace A004780.P10053129040664730655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (2 * Nat.land n (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004780.P10053129040664730655

namespace A004780

/-- `eq[0, C(2, 2*and(n, 2*n))]` -/
def P10053129040664730655.Spec : Prop :=
  ∀ n, (P10053129040664730655.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P18418841869465450412

`eq[2, 2%and(2*n+1, n+1)]`
-/

namespace A004780.P18418841869465450412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % Nat.land (2 * n + 1) (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A004780.P18418841869465450412

namespace A004780

/-- `eq[2, 2%and(2*n+1, n+1)]` -/
def P18418841869465450412.Spec : Prop :=
  ∀ n, (P18418841869465450412.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P16155687221142891105

`eq[0, floor(2/and(2*n+1, n+1))]`
-/

namespace A004780.P16155687221142891105
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / (Nat.land (2 * n + 1) (n + 1) : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004780.P16155687221142891105

namespace A004780

/-- `eq[0, floor(2/and(2*n+1, n+1))]` -/
def P16155687221142891105.Spec : Prop :=
  ∀ n, (P16155687221142891105.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P5097330590675208089

`comp[A003714(n)]`
-/

namespace A004780.P5097330590675208089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004780.P5097330590675208089

namespace A004780

/-- `comp[A003714(n)]` -/
def P5097330590675208089.Spec : Prop :=
  ∀ n, (P5097330590675208089.a n : ℤ) = A004780 (n + 1)

end A004780

/-! ## A004780.P5848688196782993672

`eq[0, A085405(2*n)]`
-/

namespace A004780.P5848688196782993672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004780.P5848688196782993672

namespace A004780

/-- `eq[0, A085405(2*n)]` -/
def P5848688196782993672.Spec : Prop :=
  ∀ n, (P5848688196782993672.a n : ℤ) = A004780 (n + 1)

end A004780

/-!
# A004781: Binary expansion contains 3 adjacent 1's.

The programs for A004781, the canonical program `A004781.P15990681282120520636` is in `Seq.B000.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004781 has offset 1).

The definition of A004781 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004781.P16780301889867516566

`comp[xor(n, floor(n/7))]`
-/

namespace A004781.P16780301889867516566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 7⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004781.P16780301889867516566

namespace A004781

/-- `comp[xor(n, floor(n/7))]` -/
def P16780301889867516566.Spec : Prop :=
  ∀ n, (P16780301889867516566.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P15990681282120520636

`lt[1, and(2*n, and(n, 2*n)/2)]`

The canonical program, it is in `Seq.B000.C001`.
-/

namespace A004781

/-- `lt[1, and(2*n, and(n, 2*n)/2)]` -/
def P15990681282120520636.Spec : Prop :=
  ∀ n, (P15990681282120520636.a n : ℤ) = A004781 (n + 1)

theorem P15990681282120520636.correct : P15990681282120520636.Spec := by
  intro n
  simp only [A004781, Nat.add_sub_cancel]

end A004781

/-! ## A004781.P7196133318065046979

`eq[0, A324340(n)]`
-/

namespace A004781.P7196133318065046979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324340 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004781.P7196133318065046979

namespace A004781

/-- `eq[0, A324340(n)]` -/
def P7196133318065046979.Spec : Prop :=
  ∀ n, (P7196133318065046979.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P5475421517138777845

`comp[A003726(n+1)]`
-/

namespace A004781.P5475421517138777845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003726 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004781.P5475421517138777845

namespace A004781

/-- `comp[A003726(n+1)]` -/
def P5475421517138777845.Spec : Prop :=
  ∀ n, (P5475421517138777845.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P3347174771552486666

`comp[and(n, A269174(n))]`
-/

namespace A004781.P3347174771552486666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A269174 n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A004781.P3347174771552486666

namespace A004781

/-- `comp[and(n, A269174(n))]` -/
def P3347174771552486666.Spec : Prop :=
  ∀ n, (P3347174771552486666.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P2949832119687814481

`lt[2, val(A278222(n), 2)]`
-/

namespace A004781.P2949832119687814481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A278222 n).toNat 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004781.P2949832119687814481

namespace A004781

/-- `lt[2, val(A278222(n), 2)]` -/
def P2949832119687814481.Spec : Prop :=
  ∀ n, (P2949832119687814481.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P11734563572159458470

`lt[2, A284569(n)]`
-/

namespace A004781.P11734563572159458470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284569 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004781.P11734563572159458470

namespace A004781

/-- `lt[2, A284569(n)]` -/
def P11734563572159458470.Spec : Prop :=
  ∀ n, (P11734563572159458470.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P6385618226003120566

`lt[0, A014082(n)]`
-/

namespace A004781.P6385618226003120566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014082 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004781.P6385618226003120566

namespace A004781

/-- `lt[0, A014082(n)]` -/
def P6385618226003120566.Spec : Prop :=
  ∀ n, (P6385618226003120566.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P5718889509559532589

`lt[1, A329720(n)]`
-/

namespace A004781.P5718889509559532589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329720 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004781.P5718889509559532589

namespace A004781

/-- `lt[1, A329720(n)]` -/
def P5718889509559532589.Spec : Prop :=
  ∀ n, (P5718889509559532589.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P10963446063632004213

`lt[2, A038374(n+1)]+1`
-/

namespace A004781.P10963446063632004213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A004781.P10963446063632004213

namespace A004781

/-- `lt[2, A038374(n+1)]+1` -/
def P10963446063632004213.Spec : Prop :=
  ∀ n, (P10963446063632004213.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P1491113890923521201

`lt[2, A038374(A028310(n))]`
-/

namespace A004781.P1491113890923521201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038374 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004781.P1491113890923521201

namespace A004781

/-- `lt[2, A038374(A028310(n))]` -/
def P1491113890923521201.Spec : Prop :=
  ∀ n, (P1491113890923521201.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P8639428086119831688

`eq[1, A294619(A329720(n)+1)]`
-/

namespace A004781.P8639428086119831688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294619 (A329720 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004781.P8639428086119831688

namespace A004781

/-- `eq[1, A294619(A329720(n)+1)]` -/
def P8639428086119831688.Spec : Prop :=
  ∀ n, (P8639428086119831688.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P958578811022366128

`eq[1, A330792(a(A014082(n)))]` with `a(0)=3`
-/

namespace A004781.P958578811022366128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A330792 (f2 (A014082 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004781.P958578811022366128

namespace A004781

/-- `eq[1, A330792(a(A014082(n)))]` -/
def P958578811022366128.Spec : Prop :=
  ∀ n, (P958578811022366128.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P12596331287544254821

`lt[A087117(n)+2, A330036(n)]`
-/

namespace A004781.P12596331287544254821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087117 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330036 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A004781.P12596331287544254821

namespace A004781

/-- `lt[A087117(n)+2, A330036(n)]` -/
def P12596331287544254821.Spec : Prop :=
  ∀ n, (P12596331287544254821.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P15419439170429872126

`eq[2, 2%A069707(A014082(n)+1)]`
-/

namespace A004781.P15419439170429872126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A069707 (A014082 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004781.P15419439170429872126

namespace A004781

/-- `eq[2, 2%A069707(A014082(n)+1)]` -/
def P15419439170429872126.Spec : Prop :=
  ∀ n, (P15419439170429872126.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P5267617975237727555

`eq[1, A001221(a(A014082(n))²+1)]` with `a(0)=3`
-/

namespace A004781.P5267617975237727555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f2 =>
  A001221 (f2 (A014082 n).toNat ^ 2 + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A004781.P5267617975237727555

namespace A004781

/-- `eq[1, A001221(a(A014082(n))²+1)]` -/
def P5267617975237727555.Spec : Prop :=
  ∀ n, (P5267617975237727555.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P18319780106277205976

`lt[0, A048735(A048735(n))]`
-/

namespace A004781.P18319780106277205976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (A048735 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004781.P18319780106277205976

namespace A004781

/-- `lt[0, A048735(A048735(n))]` -/
def P18319780106277205976.Spec : Prop :=
  ∀ n, (P18319780106277205976.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P10244475171225920410

`lt[2, A061395(A246029(n))]`
-/

namespace A004781.P10244475171225920410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A246029 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004781.P10244475171225920410

namespace A004781

/-- `lt[2, A061395(A246029(n))]` -/
def P10244475171225920410.Spec : Prop :=
  ∀ n, (P10244475171225920410.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P10958870663695189654

`lt[3, A006530(A247282(n))]`
-/

namespace A004781.P10958870663695189654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A247282 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004781.P10958870663695189654

namespace A004781

/-- `lt[3, A006530(A247282(n))]` -/
def P10958870663695189654.Spec : Prop :=
  ∀ n, (P10958870663695189654.a n : ℤ) = A004781 (n + 1)

end A004781

/-! ## A004781.P5720170952804224284

`lt[0, A048728(A048728(n))]`
-/

namespace A004781.P5720170952804224284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048728 (A048728 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A004781.P5720170952804224284

namespace A004781

/-- `lt[0, A048728(A048728(n))]` -/
def P5720170952804224284.Spec : Prop :=
  ∀ n, (P5720170952804224284.a n : ℤ) = A004781 (n + 1)

end A004781

/-!
# A004782: Numbers k such that 2*(2k-3)!/(k!*(k-1)!) is an integer.

The programs for A004782, there is no canonical definition to state claims against.
-/

/-! ## A004782.P13032899084111850564

`A014847(n+1)+1`
-/

namespace A004782.P13032899084111850564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014847 (n + 1) + 1

end

end A004782.P13032899084111850564

/-! ## A004782.P4248031644051875569

`A048618(n+1)/2+1`
-/

namespace A004782.P4248031644051875569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048618 (n + 1) : ℚ) / 2 + 1

end

end A004782.P4248031644051875569

/-! ## A004782.P2366165509980403724

`A103391(A048618(n+1))`
-/

namespace A004782.P2366165509980403724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103391 (A048618 (n + 1)).toNat

end

end A004782.P2366165509980403724

/-! ## A004782.P14684581691659548512

`∩[A004783(n+1), A094575(n+1)]`
-/

namespace A004782.P14684581691659548512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004782.P14684581691659548512

/-! ## A004782.P10975541474670576534

`eq[1, A093527(n)]+2`
-/

namespace A004782.P10975541474670576534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093527 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A004782.P10975541474670576534

/-! ## A004782.P10186651590270436121

`record[A071416(n+1)+1]`
-/

namespace A004782.P10186651590270436121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071416 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004782.P10186651590270436121

/-! ## A004782.P10282217995275866036

`record[gcd(n, A053214(n))+1]`
-/

namespace A004782.P10282217995275866036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A053214 n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004782.P10282217995275866036

/-! ## A004782.P5942661386736022669

`eq[1, A059289(n+1)]+2`
-/

namespace A004782.P5942661386736022669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059289 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A004782.P5942661386736022669

/-! ## A004782.P2753767952023743667

`record[gcd(n+2, A059288(n+1))]`
-/

namespace A004782.P2753767952023743667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A059288 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004782.P2753767952023743667

/-! ## A004782.P686990270759339391

`A020725(A014847(n+1))`
-/

namespace A004782.P686990270759339391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A014847 (n + 1)).toNat

end

end A004782.P686990270759339391

/-! ## A004782.P6061555440977330694

`A020725(record[A071416(n+1)])`
-/

namespace A004782.P6061555440977330694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071416 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A004782.P6061555440977330694

/-! ## A004782.P4837131729677286822

`A000463(A048618(n+1)+1)`
-/

namespace A004782.P4837131729677286822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A048618 (n + 1) + 1).toNat

end

end A004782.P4837131729677286822

/-! ## A004782.P5539250640961670831

`A008619(A048618(n+1)+1)`
-/

namespace A004782.P5539250640961670831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A048618 (n + 1) + 1).toNat

end

end A004782.P5539250640961670831

/-! ## A004782.P15904063367563952873

`A065033(A048618(n+1)+1)`
-/

namespace A004782.P15904063367563952873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A048618 (n + 1) + 1).toNat

end

end A004782.P15904063367563952873

/-! ## A004782.P12649791388888123658

`A001281(A048618(n+1)+2)`
-/

namespace A004782.P12649791388888123658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A048618 (n + 1) + 2).toNat

end

end A004782.P12649791388888123658

/-! ## A004782.P12494710642035002157

`A123108(A048618(n+1)+2)`
-/

namespace A004782.P12494710642035002157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A048618 (n + 1) + 2).toNat

end

end A004782.P12494710642035002157

/-! ## A004782.P6489676203772672236

`A246277(A048618(n+1)+2)`
-/

namespace A004782.P6489676203772672236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A048618 (n + 1) + 2).toNat

end

end A004782.P6489676203772672236

/-! ## A004782.P11884175401016343612

`A008619(A048618(A008619(2*n)))`
-/

namespace A004782.P11884175401016343612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A048618 (A008619 (2 * n)).toNat).toNat

end

end A004782.P11884175401016343612

/-! ## A004782.P17238880121939246329

`eq[A305025(A071416(n+1)), A305025(n+1)]+2`
-/

namespace A004782.P17238880121939246329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305025 (A071416 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305025 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A004782.P17238880121939246329

/-!
# A004783: Numbers k such that 3!*(2k-4)!/(k!*(k-1)!) is an integer.

The programs for A004783, there is no canonical definition to state claims against.
-/

/-! ## A004783.P13622040976306056087

`∪[A014847(n+1), A120623(n+1)]+1`
-/

namespace A004783.P13622040976306056087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014847 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120623 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 1

end

end A004783.P13622040976306056087

/-!
# A004784: Numbers k such that 4!*(2k-5)!/(k!*(k-1)!) is an integer.

The programs for A004784, there is no canonical definition to state claims against.
-/

/-! ## A004784.P13674365372354556852

`∩[A094576(n+1)-1, A094576(n+1)]`
-/

namespace A004784.P13674365372354556852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094576 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094576 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A004784.P13674365372354556852

/-!
# A004785: 5!(2n-6)!/n!(n-1)! is an integer.

The programs for A004785, there is no canonical definition to state claims against.
-/

/-! ## A004785.P12684725201145966567

`A137922(A157163(n+1))`
-/

namespace A004785.P12684725201145966567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137922 (A157163 (n + 1)).toNat

end

end A004785.P12684725201145966567

/-!
# A004786: Numbers k such that 6!*(2*k-7)!/(k!*(k-1)!) is an integer.

The programs for A004786, there is no canonical definition to state claims against.
-/

/-! ## A004786.P8530144473748770866

`A004787(n+1)-A003982(A003209(n))`
-/

namespace A004786.P8530144473748770866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004787 (n + 1) - A003982 (A003209 n).toNat

end

end A004786.P8530144473748770866

/-! ## A004786.P17567855352023712821

`A004787(n+1)-A103451(A075268(n))`
-/

namespace A004786.P17567855352023712821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004787 (n + 1) - A103451 (A075268 n).toNat

end

end A004786.P17567855352023712821

/-!
# A004787: Numbers k such that 7!*(2k-8)!/(k!*(k-1)!) is an integer.

The programs for A004787, there is no canonical definition to state claims against.
-/

/-! ## A004787.P5605389102308481221

`A010878(C(or(1, n)+n+3, 2)²)+A004786(n+1)`
-/

namespace A004787.P5605389102308481221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010878 (Nat.choose (Nat.lor 1 n + (n + 3)) 2 ^ 2) + A004786 (n + 1)

end

end A004787.P5605389102308481221

/-! ## A004787.P14646252571419886302

`A004786(n+1)+A003982(A003209(n))`
-/

namespace A004787.P14646252571419886302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004786 (n + 1) + A003982 (A003209 n).toNat

end

end A004787.P14646252571419886302

/-!
# A004788: Number of distinct prime divisors of the numbers in row n of Pascal's triangle.

The programs for A004788, the canonical program `A004788.P5157892371252489899` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004788 has offset 0).

The definition of A004788 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1141 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004788.P10322811552844732680

`A158973(n+1)-Δ[A006218(n)]`
-/

namespace A004788.P10322811552844732680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158973 (n + 1) - (f1 (n + 1) - f1 n)

end

end A004788.P10322811552844732680

namespace A004788

/-- `A158973(n+1)-Δ[A006218(n)]` -/
def P10322811552844732680.Spec : Prop :=
  ∀ n, P10322811552844732680.a n = A004788 n

end A004788

/-! ## A004788.P15243788015700124012

`A158973(n+1)-Δ[A054519(n)]`
-/

namespace A004788.P15243788015700124012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158973 (n + 1) - (f1 (n + 1) - f1 n)

end

end A004788.P15243788015700124012

namespace A004788

/-- `A158973(n+1)-Δ[A054519(n)]` -/
def P15243788015700124012.Spec : Prop :=
  ∀ n, P15243788015700124012.a n = A004788 n

end A004788

/-! ## A004788.P6300080703420355857

`A158973(n+1)-A000005(n+1)`
-/

namespace A004788.P6300080703420355857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158973 (n + 1) - A000005 (n + 1)

end

end A004788.P6300080703420355857

namespace A004788

/-- `A158973(n+1)-A000005(n+1)` -/
def P6300080703420355857.Spec : Prop :=
  ∀ n, P6300080703420355857.a n = A004788 n

theorem P6300080703420355857.correct : P6300080703420355857.Spec := by
  intro n
  simp only [A004788, Nat.add_sub_cancel, A004788.P6300080703420355857.a, A004788.P5157892371252489899.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A158973, A158973.P9222141241825856291.a, A243074, A243074.P6910029884229255604.a, A341642, A341642.P2700734323703374879.a, A006530, A006530.P13372528560459906635.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A051119, A051119.P33126866714900772.a, A267866, A267866.P12751727066872604543.f1, A267866.P12751727066872604543.a, A341591, A341591.P13420993346828835362.f1, A341591.P13420993346828835362.a, A028391, A028391.P17198271841435315725.a, A053585, A053585.P10057542052652531507.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A004788

/-! ## A004788.P14923626370532794532

`A159070(n+1)-A032741(n+1)`
-/

namespace A004788.P14923626370532794532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159070 (n + 1) - A032741 (n + 1)

end

end A004788.P14923626370532794532

namespace A004788

/-- `A159070(n+1)-A032741(n+1)` -/
def P14923626370532794532.Spec : Prop :=
  ∀ n, P14923626370532794532.a n = A004788 n

theorem P14923626370532794532.correct : P14923626370532794532.Spec := by
  intro n
  simp only [A004788, Nat.add_sub_cancel, A004788.P14923626370532794532.a, A004788.P5157892371252489899.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A159070, A159070.P14087736070823545534.a, A243074, A243074.P6910029884229255604.a, A341642, A341642.P2700734323703374879.a, A006530, A006530.P13372528560459906635.a, A051119, A051119.P33126866714900772.a, A158973, A158973.P9222141241825856291.a, A267866, A267866.P12751727066872604543.f1, A267866.P12751727066872604543.a, A341591, A341591.P13420993346828835362.f1, A341591.P13420993346828835362.a, A000005, A000005.P16091521709108585461.a, A028391, A028391.P17198271841435315725.a, A053585, A053585.P10057542052652531507.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A004788

/-! ## A004788.P11732458828186611346

`A049820(n+1)-A158974(n+1)`
-/

namespace A004788.P11732458828186611346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049820 (n + 1) - A158974 (n + 1)

end

end A004788.P11732458828186611346

namespace A004788

/-- `A049820(n+1)-A158974(n+1)` -/
def P11732458828186611346.Spec : Prop :=
  ∀ n, P11732458828186611346.a n = A004788 n

theorem P11732458828186611346.correct : P11732458828186611346.Spec := by
  intro n
  simp only [A004788, Nat.add_sub_cancel, A004788.P11732458828186611346.a, A004788.P5157892371252489899.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A049820, A049820.P9428372222244335888.a, A158974, A158974.P3372714102531881419.a, A243074, A243074.P6910029884229255604.a, A341642, A341642.P2700734323703374879.a, A000005, A000005.P16091521709108585461.a, A006530, A006530.P13372528560459906635.a, A051119, A051119.P33126866714900772.a, A158973, A158973.P9222141241825856291.a, A267866, A267866.P12751727066872604543.f1, A267866.P12751727066872604543.a, A341591, A341591.P13420993346828835362.f1, A341591.P13420993346828835362.a, A028391, A028391.P17198271841435315725.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A053585, A053585.P10057542052652531507.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A004788

/-! ## A004788.P14620015283214696824

`A159070(n+1)+1-A000005(n+1)`
-/

namespace A004788.P14620015283214696824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159070 (n + 1) + (1 - A000005 (n + 1))

end

end A004788.P14620015283214696824

namespace A004788

/-- `A159070(n+1)+1-A000005(n+1)` -/
def P14620015283214696824.Spec : Prop :=
  ∀ n, P14620015283214696824.a n = A004788 n

theorem P14620015283214696824.correct : P14620015283214696824.Spec := by
  intro n
  simp only [A004788, Nat.add_sub_cancel, A004788.P14620015283214696824.a, A004788.P5157892371252489899.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A159070, A159070.P14087736070823545534.a, A243074, A243074.P6910029884229255604.a, A341642, A341642.P2700734323703374879.a, A006530, A006530.P13372528560459906635.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A051119, A051119.P33126866714900772.a, A158973, A158973.P9222141241825856291.a, A267866, A267866.P12751727066872604543.f1, A267866.P12751727066872604543.a, A341591, A341591.P13420993346828835362.f1, A341591.P13420993346828835362.a, A028391, A028391.P17198271841435315725.a, A053585, A053585.P10057542052652531507.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A004788

/-! ## A004788.P14979400315121835177

`n-(A158974(n+1)+A032741(n+1))`
-/

namespace A004788.P14979400315121835177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A158974 (n + 1) + A032741 (n + 1))

end

end A004788.P14979400315121835177

namespace A004788

/-- `n-(A158974(n+1)+A032741(n+1))` -/
def P14979400315121835177.Spec : Prop :=
  ∀ n, P14979400315121835177.a n = A004788 n

theorem P14979400315121835177.correct : P14979400315121835177.Spec := by
  intro n
  simp only [A004788, Nat.add_sub_cancel, A004788.P14979400315121835177.a, A004788.P5157892371252489899.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A158974, A158974.P3372714102531881419.a, A243074, A243074.P6910029884229255604.a, A341642, A341642.P2700734323703374879.a, A006530, A006530.P13372528560459906635.a, A051119, A051119.P33126866714900772.a, A158973, A158973.P9222141241825856291.a, A267866, A267866.P12751727066872604543.f1, A267866.P12751727066872604543.a, A341591, A341591.P13420993346828835362.f1, A341591.P13420993346828835362.a, A000005, A000005.P16091521709108585461.a, A028391, A028391.P17198271841435315725.a, A053585, A053585.P10057542052652531507.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A004788

/-! ## A004788.P17030910722513485921

`n+1-(A158974(n+1)+A000005(n+1))`
-/

namespace A004788.P17030910722513485921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A158974 (n + 1) + A000005 (n + 1))

end

end A004788.P17030910722513485921

namespace A004788

/-- `n+1-(A158974(n+1)+A000005(n+1))` -/
def P17030910722513485921.Spec : Prop :=
  ∀ n, P17030910722513485921.a n = A004788 n

theorem P17030910722513485921.correct : P17030910722513485921.Spec := by
  intro n
  simp only [A004788, Nat.add_sub_cancel, A004788.P17030910722513485921.a, A004788.P5157892371252489899.a, A000005, A000005.P16091521709108585461.a, A000720, A000720.P1755771944745605250.f2, A000720.P1755771944745605250.f1, A000720.P1755771944745605250.a, A158974, A158974.P3372714102531881419.a, A243074, A243074.P6910029884229255604.a, A341642, A341642.P2700734323703374879.a, A006530, A006530.P13372528560459906635.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A051119, A051119.P33126866714900772.a, A158973, A158973.P9222141241825856291.a, A267866, A267866.P12751727066872604543.f1, A267866.P12751727066872604543.a, A341591, A341591.P13420993346828835362.f1, A341591.P13420993346828835362.a, A028391, A028391.P17198271841435315725.a, A053585, A053585.P10057542052652531507.a, A070229, A070229.P5792893597916963980.a, A028815, A028815.P810525423351225743.a, A061395, A061395.P8431317036300486107.a, A071178, A071178.P17375525505785378954.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A004788

/-! ## A004788.P5157892371252489899

`A000720(n+1)-A341642(A243074(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A004788

/-- `A000720(n+1)-A341642(A243074(n+1))` -/
def P5157892371252489899.Spec : Prop :=
  ∀ n, P5157892371252489899.a n = A004788 n

theorem P5157892371252489899.correct : P5157892371252489899.Spec := by
  intro n
  simp only [A004788]

end A004788

/-! ## A004788.P3037312691108852909

`A062968(n+1)-A159072(n+1)`
-/

namespace A004788.P3037312691108852909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062968 (n + 1) - A159072 (n + 1)

end

end A004788.P3037312691108852909

namespace A004788

/-- `A062968(n+1)-A159072(n+1)` -/
def P3037312691108852909.Spec : Prop :=
  ∀ n, P3037312691108852909.a n = A004788 n

end A004788

/-!
# A004790: Numbers k >= 2 such that if 1 < j < k then (fractional part of log k) < (fractional part of log j).

The programs for A004790, there is no canonical definition to state claims against.
-/

/-! ## A004790.P8006598178957951608

`floor(∏{e}[5^n, exp(#)])+1`
-/

namespace A004790.P8006598178957951608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), Real.exp (Nat.factorization (f1 n) p : ℝ)⌋ + 1

end

end A004790.P8006598178957951608

/-! ## A004790.P6895379748450743489

`A238593(floor(exp(n))+1)`
-/

namespace A004790.P6895379748450743489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238593 (⌊Real.exp (n : ℝ)⌋ + 1).toNat

end

end A004790.P6895379748450743489

/-! ## A004790.P1755497471461564461

`A008619(floor(2*exp(n)))`
-/

namespace A004790.P1755497471461564461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 ⌊2 * Real.exp (n : ℝ)⌋.toNat

end

end A004790.P1755497471461564461

/-! ## A004790.P18071779168634955567

`A028242(2*floor(exp(n)))`
-/

namespace A004790.P18071779168634955567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * ⌊Real.exp (n : ℝ)⌋).toNat

end

end A004790.P18071779168634955567

/-! ## A004790.P17861217441586150634

`A029579(2*floor(exp(n)))`
-/

namespace A004790.P17861217441586150634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * ⌊Real.exp (n : ℝ)⌋).toNat

end

end A004790.P17861217441586150634

/-!
# A004791: Numbers k >= 2 such that if 1 <= j < k then fractional part of log k > fractional part of log j.

The programs for A004791, there is no canonical definition to state claims against.
-/

/-! ## A004791.P5777648804039666508

`A080021(n+1)*A107740(A041330(n))`
-/

namespace A004791.P5777648804039666508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080021 (n + 1) * A107740 (A041330 n).toNat

end

end A004791.P5777648804039666508

/-! ## A004791.P433242015087485009

`A175070(A197499(n+1))+A080021(n+1)`
-/

namespace A004791.P433242015087485009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175070 (A197499 (n + 1)).toNat + A080021 (n + 1)

end

end A004791.P433242015087485009

/-!
# A004793: a(1)=1, a(2)=3; a(n) is least k such that no three terms of a(1), a(2), ..., a(n-1), k form an arithmetic progression.

The programs for A004793, the canonical program `A004793.P14402439767548149062` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004793 has offset 1).

The definition of A004793 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004793.P1350287194280730161

`n%2+(∑[and(n, -n)^log2(3)]+n)/2+1`
-/

namespace A004793.P1350287194280730161
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Int.land (n : ℤ) (-(n : ℤ)) : ℝ) ^ (Real.logb 2 (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℝ) + ((∑ j ∈ Finset.range (n + 1), f1 j + (n : ℝ)) / 2 + 1)

end

end A004793.P1350287194280730161

namespace A004793

/-- `n%2+(∑[and(n, -n)^log2(3)]+n)/2+1` -/
def P1350287194280730161.Spec : Prop :=
  ∀ n, P1350287194280730161.a n = (A004793 (n + 1) : ℝ)

end A004793

/-! ## A004793.P16625384343231021152

`A186776(n+1)+1`
-/

namespace A004793.P16625384343231021152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186776 (n + 1) + 1

end

end A004793.P16625384343231021152

namespace A004793

/-- `A186776(n+1)+1` -/
def P16625384343231021152.Spec : Prop :=
  ∀ n, P16625384343231021152.a n = A004793 (n + 1)

theorem P16625384343231021152.correct : P16625384343231021152.Spec := by
  intro n
  simp only [A004793, Nat.add_sub_cancel, A004793.P16625384343231021152.a, A004793.P14402439767548149062.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, A186776, A186776.P17009521900512411188.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004793

/-! ## A004793.P14687488828033632453

`A033160(n+1)-1`
-/

namespace A004793.P14687488828033632453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033160 (n + 1) - 1

end

end A004793.P14687488828033632453

namespace A004793

/-- `A033160(n+1)-1` -/
def P14687488828033632453.Spec : Prop :=
  ∀ n, P14687488828033632453.a n = A004793 (n + 1)

theorem P14687488828033632453.correct : P14687488828033632453.Spec := by
  intro n
  simp only [A004793, Nat.add_sub_cancel, A004793.P14687488828033632453.a, A004793.P14402439767548149062.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, A033160, A033160.P14903934844071324041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004793

/-! ## A004793.P4524811665996464543

`A033163(n+1)-2`
-/

namespace A004793.P4524811665996464543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033163 (n + 1) - 2

end

end A004793.P4524811665996464543

namespace A004793

/-- `A033163(n+1)-2` -/
def P4524811665996464543.Spec : Prop :=
  ∀ n, P4524811665996464543.a n = A004793 (n + 1)

theorem P4524811665996464543.correct : P4524811665996464543.Spec := by
  intro n
  simp only [A004793, Nat.add_sub_cancel, A004793.P4524811665996464543.a, A004793.P14402439767548149062.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, A033163, A033163.P3512797110537312179.a, A033160, A033160.P14903934844071324041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004793

/-! ## A004793.P14402439767548149062

`A003278(n+1)+n%2`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004793

/-- `A003278(n+1)+n%2` -/
def P14402439767548149062.Spec : Prop :=
  ∀ n, P14402439767548149062.a n = A004793 (n + 1)

theorem P14402439767548149062.correct : P14402439767548149062.Spec := by
  intro n
  simp only [A004793, Nat.add_sub_cancel]

end A004793

/-! ## A004793.P10124170071727230375

`A033162(n+1)-gcd(2, n)`
-/

namespace A004793.P10124170071727230375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033162 (n + 1) - (Nat.gcd 2 n : ℤ)

end

end A004793.P10124170071727230375

namespace A004793

/-- `A033162(n+1)-gcd(2, n)` -/
def P10124170071727230375.Spec : Prop :=
  ∀ n, P10124170071727230375.a n = A004793 (n + 1)

end A004793

/-! ## A004793.P10590986187738777573

`A003278(n+1)+A000035(n)`
-/

namespace A004793.P10590986187738777573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + A000035 n

end

end A004793.P10590986187738777573

namespace A004793

/-- `A003278(n+1)+A000035(n)` -/
def P10590986187738777573.Spec : Prop :=
  ∀ n, P10590986187738777573.a n = A004793 (n + 1)

end A004793

/-! ## A004793.P16858272073303597696

`A005836(n+1)+A000034(n)`
-/

namespace A004793.P16858272073303597696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + A000034 n

end

end A004793.P16858272073303597696

namespace A004793

/-- `A005836(n+1)+A000034(n)` -/
def P16858272073303597696.Spec : Prop :=
  ∀ n, P16858272073303597696.a n = A004793 (n + 1)

end A004793

/-! ## A004793.P10328031172896171561

`A185256(n+1)+A102560(n)`
-/

namespace A004793.P10328031172896171561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185256 (n + 1) + A102560 n

end

end A004793.P10328031172896171561

namespace A004793

/-- `A185256(n+1)+A102560(n)` -/
def P10328031172896171561.Spec : Prop :=
  ∀ n, P10328031172896171561.a n = A004793 (n + 1)

end A004793

/-! ## A004793.P13161513282249721771

`A033159(n+1)-A059841(n)`
-/

namespace A004793.P13161513282249721771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) - A059841 n

end

end A004793.P13161513282249721771

namespace A004793

/-- `A033159(n+1)-A059841(n)` -/
def P13161513282249721771.Spec : Prop :=
  ∀ n, P13161513282249721771.a n = A004793 (n + 1)

end A004793

/-! ## A004793.P10639004235310127548

`A033157(n+1)-A140081(n)`
-/

namespace A004793.P10639004235310127548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033157 (n + 1) - A140081 n

end

end A004793.P10639004235310127548

namespace A004793

/-- `A033157(n+1)-A140081(n)` -/
def P10639004235310127548.Spec : Prop :=
  ∀ n, P10639004235310127548.a n = A004793 (n + 1)

theorem P10639004235310127548.correct : P10639004235310127548.Spec := by
  intro n
  simp only [A004793, Nat.add_sub_cancel, A004793.P10639004235310127548.a, A004793.P14402439767548149062.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, A033157, A033157.P10781485780208723287.a, A140081, A140081.P14265476151605300908.a, A185256, A185256.P14243737951295279238.a, A033161, A033161.P7450569827711651060.a, A033160, A033160.P14903934844071324041.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004793

/-! ## A004793.P13670696057572530305

`A033164(n+1)-A176059(n)`
-/

namespace A004793.P13670696057572530305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033164 (n + 1) - A176059 n

end

end A004793.P13670696057572530305

namespace A004793

/-- `A033164(n+1)-A176059(n)` -/
def P13670696057572530305.Spec : Prop :=
  ∀ n, P13670696057572530305.a n = A004793 (n + 1)

end A004793

/-! ## A004793.P8608827718264829535

`A005836(n+1)+A316828(n)!`
-/

namespace A004793.P8608827718264829535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (Nat.factorial (A316828 n).toNat : ℤ)

end

end A004793.P8608827718264829535

namespace A004793

/-- `A005836(n+1)+A316828(n)!` -/
def P8608827718264829535.Spec : Prop :=
  ∀ n, P8608827718264829535.a n = A004793 (n + 1)

end A004793

/-! ## A004793.P17582316163036672507

`A003278(n+1)+Δ[A008619(n)]`
-/

namespace A004793.P17582316163036672507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + (f1 (n + 1) - f1 n)

end

end A004793.P17582316163036672507

namespace A004793

/-- `A003278(n+1)+Δ[A008619(n)]` -/
def P17582316163036672507.Spec : Prop :=
  ∀ n, P17582316163036672507.a n = A004793 (n + 1)

end A004793

/-! ## A004793.P6033223479186720196

`A005836(n+1)+Δ[A032766(n)]`
-/

namespace A004793.P6033223479186720196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (f1 (n + 1) - f1 n)

end

end A004793.P6033223479186720196

namespace A004793

/-- `A005836(n+1)+Δ[A032766(n)]` -/
def P6033223479186720196.Spec : Prop :=
  ∀ n, P6033223479186720196.a n = A004793 (n + 1)

end A004793

/-! ## A004793.P6375475180731465139

`A005836(n+1)+A000035(n)+1`
-/

namespace A004793.P6375475180731465139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (A000035 n + 1)

end

end A004793.P6375475180731465139

namespace A004793

/-- `A005836(n+1)+A000035(n)+1` -/
def P6375475180731465139.Spec : Prop :=
  ∀ n, P6375475180731465139.a n = A004793 (n + 1)

end A004793

/-! ## A004793.P17602854061124760005

`A003278(n+1)+A000034(n)-1`
-/

namespace A004793.P17602854061124760005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + (A000034 n - 1)

end

end A004793.P17602854061124760005

namespace A004793

/-- `A003278(n+1)+A000034(n)-1` -/
def P17602854061124760005.Spec : Prop :=
  ∀ n, P17602854061124760005.a n = A004793 (n + 1)

theorem P17602854061124760005.correct : P17602854061124760005.Spec := by
  intro n
  simp only [A004793, Nat.add_sub_cancel, A004793.P17602854061124760005.a, A004793.P14402439767548149062.a, A000034, A000034.P10773112074177680709.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004793

/-! ## A004793.P7249599895790249911

`A005836(n+1)+A010693(n)-1`
-/

namespace A004793.P7249599895790249911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005836 (n + 1) + (A010693 n - 1)

end

end A004793.P7249599895790249911

namespace A004793

/-- `A005836(n+1)+A010693(n)-1` -/
def P7249599895790249911.Spec : Prop :=
  ∀ n, P7249599895790249911.a n = A004793 (n + 1)

end A004793

/-! ## A004793.P7443481140615403902

`A033159(n+1)+A000035(n)-1`
-/

namespace A004793.P7443481140615403902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033159 (n + 1) + (A000035 n - 1)

end

end A004793.P7443481140615403902

namespace A004793

/-- `A033159(n+1)+A000035(n)-1` -/
def P7443481140615403902.Spec : Prop :=
  ∀ n, P7443481140615403902.a n = A004793 (n + 1)

end A004793

/-! ## A004793.P658628366312636573

`A003278(n+1)+1-A059841(n)`
-/

namespace A004793.P658628366312636573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003278 (n + 1) + (1 - A059841 n)

end

end A004793.P658628366312636573

namespace A004793

/-- `A003278(n+1)+1-A059841(n)` -/
def P658628366312636573.Spec : Prop :=
  ∀ n, P658628366312636573.a n = A004793 (n + 1)

theorem P658628366312636573.correct : P658628366312636573.Spec := by
  intro n
  simp only [A004793, Nat.add_sub_cancel, A004793.P658628366312636573.a, A004793.P14402439767548149062.a, A003278, A003278.P16270542562507883629.f1, A003278.P16270542562507883629.a, A059841, A059841.P7264174615531153985.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A004793

/-!
# A004794: Least positive integer k such that the fractional part of k*sqrt(5) has its n initial partial quotients all equal to 1.

The programs for A004794, there is no canonical definition to state claims against.
-/

/-! ## A004794.P4792982483569440716

`A210983(A133080(n+2)+A084221(n))`
-/

namespace A004794.P4792982483569440716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210983 (A133080 (n + 2) + A084221 n).toNat

end

end A004794.P4792982483569440716

/-! ## A004794.P8543071604081719435

`or(A139063(A082582(n)), A164532(n+1))`
-/

namespace A004794.P8543071604081719435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A139063 (A082582 n).toNat) (A164532 (n + 1))

end

end A004794.P8543071604081719435

/-!
# A004796: Numbers k such that if 2 <= j < k then the fractional part of the k-th partial sum of the harmonic series is < the fractional part of the j-th partial sum of the harmonic series.

The programs for A004796, there is no canonical definition to state claims against.
-/

/-! ## A004796.P5920493246721931894

`A002387(lt[A248394(n), A265882(3*n+4)])`
-/

namespace A004796.P5920493246721931894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248394 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265882 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A004796.P5920493246721931894

/-! ## A004796.P11913211863896038683

`A002387(lt[A178183(n+4), A178195(n)])`
-/

namespace A004796.P11913211863896038683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178183 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178195 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A004796.P11913211863896038683

/-! ## A004796.P8079139986950905764

`A002387(lt[A156280(3*n), A005867(n)])`
-/

namespace A004796.P8079139986950905764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156280 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005867 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A004796.P8079139986950905764

/-! ## A004796.P2564629906714594880

`A002387(lt[A102222(3*(n+1)), A092315(n+1)])`
-/

namespace A004796.P2564629906714594880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102222 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A004796.P2564629906714594880

/-! ## A004796.P16723057044501636134

`A002387(lt[A187988(3*(n+1)), A101398(n+1)])`
-/

namespace A004796.P16723057044501636134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187988 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101398 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002387 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A004796.P16723057044501636134

/-!
# A004797: Convolution of A002024 with itself.

The programs for A004797, the canonical program `A004797.P13718195632924904627` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004797 has offset 0).

The definition of A004797 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A004797.P13718195632924904627

`∑[A199015(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A004797

/-- `∑[A199015(n)]` -/
def P13718195632924904627.Spec : Prop :=
  ∀ n, P13718195632924904627.a n = A004797 n

theorem P13718195632924904627.correct : P13718195632924904627.Spec := by
  intro n
  simp only [A004797]

end A004797

/-! ## A004797.P11156875238674603057

`∑[∑[A008441(n)]]`
-/

namespace A004797.P11156875238674603057
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P11156875238674603057

namespace A004797

/-- `∑[∑[A008441(n)]]` -/
def P11156875238674603057.Spec : Prop :=
  ∀ n, P11156875238674603057.a n = A004797 n

end A004797

/-! ## A004797.P12280029856581277885

`∑[A057656(n)/2]`
-/

namespace A004797.P12280029856581277885
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057656 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P12280029856581277885

namespace A004797

/-- `∑[A057656(n)/2]` -/
def P12280029856581277885.Spec : Prop :=
  ∀ n, P12280029856581277885.a n = (A004797 n : ℚ)

end A004797

/-! ## A004797.P8795112996229258425

`∑[∑[abs(A134343(n))]]`
-/

namespace A004797.P8795112996229258425
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A134343 n|

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P8795112996229258425

namespace A004797

/-- `∑[∑[abs(A134343(n))]]` -/
def P8795112996229258425.Spec : Prop :=
  ∀ n, P8795112996229258425.a n = A004797 n

end A004797

/-! ## A004797.P17353990694040850463

`∑[∑[A004020(n)/2]]`
-/

namespace A004797.P17353990694040850463
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004020 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P17353990694040850463

namespace A004797

/-- `∑[∑[A004020(n)/2]]` -/
def P17353990694040850463.Spec : Prop :=
  ∀ n, P17353990694040850463.a n = (A004797 n : ℚ)

end A004797

/-! ## A004797.P9748921181332365507

`∑[∑[A005883(n)/4]]`
-/

namespace A004797.P9748921181332365507
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005883 n : ℚ) / 4

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P9748921181332365507

namespace A004797

/-- `∑[∑[A005883(n)/4]]` -/
def P9748921181332365507.Spec : Prop :=
  ∀ n, P9748921181332365507.a n = (A004797 n : ℚ)

end A004797

/-! ## A004797.P13920658076202862720

`∑[∑[A110655(2*A004020(n))]]`
-/

namespace A004797.P13920658076202862720
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (2 * A004020 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P13920658076202862720

namespace A004797

/-- `∑[∑[A110655(2*A004020(n))]]` -/
def P13920658076202862720.Spec : Prop :=
  ∀ n, P13920658076202862720.a n = A004797 n

end A004797

/-! ## A004797.P16941699207124056080

`∑[∑[A033999(n)*A134343(n)]]`
-/

namespace A004797.P16941699207124056080
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A134343 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P16941699207124056080

namespace A004797

/-- `∑[∑[A033999(n)*A134343(n)]]` -/
def P16941699207124056080.Spec : Prop :=
  ∀ n, P16941699207124056080.a n = A004797 n

end A004797

/-! ## A004797.P9234135012138615995

`∑[∑[A125079(2*n)]]`
-/

namespace A004797.P9234135012138615995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125079 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P9234135012138615995

namespace A004797

/-- `∑[∑[A125079(2*n)]]` -/
def P9234135012138615995.Spec : Prop :=
  ∀ n, P9234135012138615995.a n = A004797 n

end A004797

/-! ## A004797.P8829940916625867200

`∑[∑[A116604(2*n)]]`
-/

namespace A004797.P8829940916625867200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116604 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P8829940916625867200

namespace A004797

/-- `∑[∑[A116604(2*n)]]` -/
def P8829940916625867200.Spec : Prop :=
  ∀ n, P8829940916625867200.a n = A004797 n

end A004797

/-! ## A004797.P4874418887121948886

`∑[∑[A129447(2*n)]]`
-/

namespace A004797.P4874418887121948886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129447 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P4874418887121948886

namespace A004797

/-- `∑[∑[A129447(2*n)]]` -/
def P4874418887121948886.Spec : Prop :=
  ∀ n, P4874418887121948886.a n = A004797 n

end A004797

/-! ## A004797.P17129393320541995883

`∑[∑[A138741(2*n)]]`
-/

namespace A004797.P17129393320541995883
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138741 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P17129393320541995883

namespace A004797

/-- `∑[∑[A138741(2*n)]]` -/
def P17129393320541995883.Spec : Prop :=
  ∀ n, P17129393320541995883.a n = A004797 n

end A004797

/-! ## A004797.P14605996489912560925

`∑[A001281(∑[A004020(n)])]`
-/

namespace A004797.P14605996489912560925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004020 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P14605996489912560925

namespace A004797

/-- `∑[A001281(∑[A004020(n)])]` -/
def P14605996489912560925.Spec : Prop :=
  ∀ n, P14605996489912560925.a n = A004797 n

end A004797

/-! ## A004797.P15023942071286091580

`∑[∑[A002654(4*n+1)]]`
-/

namespace A004797.P15023942071286091580
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (4 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P15023942071286091580

namespace A004797

/-- `∑[∑[A002654(4*n+1)]]` -/
def P15023942071286091580.Spec : Prop :=
  ∀ n, P15023942071286091580.a n = A004797 n

end A004797

/-! ## A004797.P6058775209708589754

`∑[∑[A035154(4*n+1)]]`
-/

namespace A004797.P6058775209708589754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035154 (4 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P6058775209708589754

namespace A004797

/-- `∑[∑[A035154(4*n+1)]]` -/
def P6058775209708589754.Spec : Prop :=
  ∀ n, P6058775209708589754.a n = A004797 n

end A004797

/-! ## A004797.P8408992122611861745

`∑[∑[A035181(4*n+1)]]`
-/

namespace A004797.P8408992122611861745
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035181 (4 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P8408992122611861745

namespace A004797

/-- `∑[∑[A035181(4*n+1)]]` -/
def P8408992122611861745.Spec : Prop :=
  ∀ n, P8408992122611861745.a n = A004797 n

end A004797

/-! ## A004797.P4004445974707376533

`∑[∑[A035184(4*n+1)]]`
-/

namespace A004797.P4004445974707376533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035184 (4 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P4004445974707376533

namespace A004797

/-- `∑[∑[A035184(4*n+1)]]` -/
def P4004445974707376533.Spec : Prop :=
  ∀ n, P4004445974707376533.a n = A004797 n

end A004797

/-! ## A004797.P14677867310889194007

`∑[∑[A113446(4*n+1)]]`
-/

namespace A004797.P14677867310889194007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113446 (4 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P14677867310889194007

namespace A004797

/-- `∑[∑[A113446(4*n+1)]]` -/
def P14677867310889194007.Spec : Prop :=
  ∀ n, P14677867310889194007.a n = A004797 n

end A004797

/-! ## A004797.P16185813457548190239

`∑[∑[A163746(4*n+1)]]`
-/

namespace A004797.P16185813457548190239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163746 (4 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P16185813457548190239

namespace A004797

/-- `∑[∑[A163746(4*n+1)]]` -/
def P16185813457548190239.Spec : Prop :=
  ∀ n, P16185813457548190239.a n = A004797 n

end A004797

/-! ## A004797.P9134770702563727509

`∑[∑[A338690(4*n+1)]]`
-/

namespace A004797.P9134770702563727509
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338690 (4 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004797.P9134770702563727509

namespace A004797

/-- `∑[∑[A338690(4*n+1)]]` -/
def P9134770702563727509.Spec : Prop :=
  ∀ n, P9134770702563727509.a n = A004797 n

end A004797

/-!
# A004798: Convolution of Fibonacci numbers 1,2,3,5,... with themselves.

The programs for A004798, the canonical program `A004798.P11709772009077564691` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004798 has offset 1).

The definition of A004798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004798.P9301593859323085137

`a(n-1)+a(n-2)+A000045(n+3)` with `a(0)=1, a(1)=4`
-/

namespace A004798.P9301593859323085137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) + a (n - 2) + A000045 (n + 3)

end

end A004798.P9301593859323085137

namespace A004798

/-- `a(n-1)+a(n-2)+A000045(n+3)` -/
def P9301593859323085137.Spec : Prop :=
  ∀ n, P9301593859323085137.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P5467660821504996072

`A045925(n+1)+2*A001629(n+1)`
-/

namespace A004798.P5467660821504996072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + 2 * A001629 (n + 1)

end

end A004798.P5467660821504996072

namespace A004798

/-- `A045925(n+1)+2*A001629(n+1)` -/
def P5467660821504996072.Spec : Prop :=
  ∀ n, P5467660821504996072.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P11709772009077564691

`A001629(n+2)+A001629(n)+2*A001629(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004798

/-- `A001629(n+2)+A001629(n)+2*A001629(n+1)` -/
def P11709772009077564691.Spec : Prop :=
  ∀ n, P11709772009077564691.a n = A004798 (n + 1)

theorem P11709772009077564691.correct : P11709772009077564691.Spec := by
  intro n
  simp only [A004798, Nat.add_sub_cancel]

end A004798

/-! ## A004798.P17125058465333874667

`(n+1)*A000045(n+3)-A001629(n+2)`
-/

namespace A004798.P17125058465333874667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 (n + 3) - A001629 (n + 2)

end

end A004798.P17125058465333874667

namespace A004798

/-- `(n+1)*A000045(n+3)-A001629(n+2)` -/
def P17125058465333874667.Spec : Prop :=
  ∀ n, P17125058465333874667.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P9136660874810906590

`(n+1)*A000045(n+1)+2/5*((n+1)*A000032(n+1)-A000045(n+1))`
-/

namespace A004798.P9136660874810906590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A000045 (n + 1) : ℚ) + (2 : ℚ) / 5 * ((n + 1 : ℤ) * A000032 (n + 1) - A000045 (n + 1) : ℚ)

end

end A004798.P9136660874810906590

namespace A004798

/-- `(n+1)*A000045(n+1)+2/5*((n+1)*A000032(n+1)-A000045(n+1))` -/
def P9136660874810906590.Spec : Prop :=
  ∀ n, P9136660874810906590.a n = (A004798 (n + 1) : ℚ)

end A004798

/-! ## A004798.P8656646975949101165

`ogf((1+2x+x^2)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A004798.P8656646975949101165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, 1] [1, -2, -1, 2, 1] n

end

end A004798.P8656646975949101165

namespace A004798

/-- `ogf((1+2x+x^2)/(1-2x-x^2+2x^3+x^4))` -/
def P8656646975949101165.Spec : Prop :=
  ∀ n, P8656646975949101165.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P17278094627298208605

`∑[A055244(n+1)]`
-/

namespace A004798.P17278094627298208605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004798.P17278094627298208605

namespace A004798

/-- `∑[A055244(n+1)]` -/
def P17278094627298208605.Spec : Prop :=
  ∀ n, P17278094627298208605.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P12712037939735209997

`A140992(n+2)-1`
-/

namespace A004798.P12712037939735209997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140992 (n + 2) - 1

end

end A004798.P12712037939735209997

namespace A004798

/-- `A140992(n+2)-1` -/
def P12712037939735209997.Spec : Prop :=
  ∀ n, P12712037939735209997.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P7061799552624264955

`record[abs(1-A140992(n))]`
-/

namespace A004798.P7061799552624264955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A140992 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A004798.P7061799552624264955

namespace A004798

/-- `record[abs(1-A140992(n))]` -/
def P7061799552624264955.Spec : Prop :=
  ∀ n, P7061799552624264955.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P3979601643921046795

`∑[∑[A239342(n+1)]]`
-/

namespace A004798.P3979601643921046795
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239342 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004798.P3979601643921046795

namespace A004798

/-- `∑[∑[A239342(n+1)]]` -/
def P3979601643921046795.Spec : Prop :=
  ∀ n, P3979601643921046795.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P4910250581045031851

`A131913(n)+A023607(n)`
-/

namespace A004798.P4910250581045031851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131913 n + A023607 n

end

end A004798.P4910250581045031851

namespace A004798

/-- `A131913(n)+A023607(n)` -/
def P4910250581045031851.Spec : Prop :=
  ∀ n, P4910250581045031851.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P7797399913500639851

`A023610(n)+∑[A029907(n)]`
-/

namespace A004798.P7797399913500639851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004798.P7797399913500639851

namespace A004798

/-- `A023610(n)+∑[A029907(n)]` -/
def P7797399913500639851.Spec : Prop :=
  ∀ n, P7797399913500639851.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P2323528395774211366

`A023607(n+1)+A001629(n)`
-/

namespace A004798.P2323528395774211366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (n + 1) + A001629 n

end

end A004798.P2323528395774211366

namespace A004798

/-- `A023607(n+1)+A001629(n)` -/
def P2323528395774211366.Spec : Prop :=
  ∀ n, P2323528395774211366.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P5554841378711016409

`A136376(n+1)+A029907(n)`
-/

namespace A004798.P5554841378711016409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136376 (n + 1) + A029907 n

end

end A004798.P5554841378711016409

namespace A004798

/-- `A136376(n+1)+A029907(n)` -/
def P5554841378711016409.Spec : Prop :=
  ∀ n, P5554841378711016409.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P16898950266121326915

`A023610(n+1)-A020695(n)`
-/

namespace A004798.P16898950266121326915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 (n + 1) - A020695 n

end

end A004798.P16898950266121326915

namespace A004798

/-- `A023610(n+1)-A020695(n)` -/
def P16898950266121326915.Spec : Prop :=
  ∀ n, P16898950266121326915.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P17528031065026395251

`A067331(n)-A000045(n+1)`
-/

namespace A004798.P17528031065026395251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067331 n - A000045 (n + 1)

end

end A004798.P17528031065026395251

namespace A004798

/-- `A067331(n)-A000045(n+1)` -/
def P17528031065026395251.Spec : Prop :=
  ∀ n, P17528031065026395251.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P7905595254020616940

`∑[A029907(n+1)+A029907(n)]`
-/

namespace A004798.P7905595254020616940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1) + A029907 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004798.P7905595254020616940

namespace A004798

/-- `∑[A029907(n+1)+A029907(n)]` -/
def P7905595254020616940.Spec : Prop :=
  ∀ n, P7905595254020616940.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P12536361731149736127

`∑[A006490(n+2)+A006367(n)]`
-/

namespace A004798.P12536361731149736127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006490 (n + 2) + A006367 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A004798.P12536361731149736127

namespace A004798

/-- `∑[A006490(n+2)+A006367(n)]` -/
def P12536361731149736127.Spec : Prop :=
  ∀ n, P12536361731149736127.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P3932434772552759274

`A023607(n+1)+Δ[A006478(n)]`
-/

namespace A004798.P3932434772552759274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (n + 1) + (f1 (n + 1) - f1 n)

end

end A004798.P3932434772552759274

namespace A004798

/-- `A023607(n+1)+Δ[A006478(n)]` -/
def P3932434772552759274.Spec : Prop :=
  ∀ n, P3932434772552759274.a n = A004798 (n + 1)

end A004798

/-! ## A004798.P6884721647504340572

`A067331(n)-Δ[A000071(n+2)]`
-/

namespace A004798.P6884721647504340572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067331 n - (f1 (n + 1) - f1 n)

end

end A004798.P6884721647504340572

namespace A004798

/-- `A067331(n)-Δ[A000071(n+2)]` -/
def P6884721647504340572.Spec : Prop :=
  ∀ n, P6884721647504340572.a n = A004798 (n + 1)

end A004798

/-!
# A004799: Self-convolution of Lucas numbers.

The programs for A004799, the canonical program `A004799.P15085056479586614341` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A004799 has offset 1).

The definition of A004799 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A004799.P15085056479586614341

`((5*(n+1)-4)*A000032(n+2)+2*A000032(n+1))/5`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A004799

/-- `((5*(n+1)-4)*A000032(n+2)+2*A000032(n+1))/5` -/
def P15085056479586614341.Spec : Prop :=
  ∀ n, P15085056479586614341.a n = (A004799 (n + 1) : ℚ)

end A004799

/-! ## A004799.P6466799435629687263

`ogf((1+4x+4x^2)/(1-2x-x^2+2x^3+x^4))`
-/

namespace A004799.P6466799435629687263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 4, 4] [1, -2, -1, 2, 1] n

end

end A004799.P6466799435629687263

namespace A004799

/-- `ogf((1+4x+4x^2)/(1-2x-x^2+2x^3+x^4))` -/
def P6466799435629687263.Spec : Prop :=
  ∀ n, P6466799435629687263.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P16158744165044827284

`A097039(n)+A053311(n)`
-/

namespace A004799.P16158744165044827284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097039 n + A053311 n

end

end A004799.P16158744165044827284

namespace A004799

/-- `A097039(n)+A053311(n)` -/
def P16158744165044827284.Spec : Prop :=
  ∀ n, P16158744165044827284.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P10860250323476281932

`A023619(n+1)+A023607(n)`
-/

namespace A004799.P10860250323476281932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023619 (n + 1) + A023607 n

end

end A004799.P10860250323476281932

namespace A004799

/-- `A023619(n+1)+A023607(n)` -/
def P10860250323476281932.Spec : Prop :=
  ∀ n, P10860250323476281932.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P5633538202548952132

`A088209(n)+∑[A088209(n)]-1`
-/

namespace A004799.P5633538202548952132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088209 n + (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A004799.P5633538202548952132

namespace A004799

/-- `A088209(n)+∑[A088209(n)]-1` -/
def P5633538202548952132.Spec : Prop :=
  ∀ n, P5633538202548952132.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P13299922496420351613

`A025089(n+1)+A024469(n+1)`
-/

namespace A004799.P13299922496420351613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025089 (n + 1) + A024469 (n + 1)

end

end A004799.P13299922496420351613

namespace A004799

/-- `A025089(n+1)+A024469(n+1)` -/
def P13299922496420351613.Spec : Prop :=
  ∀ n, P13299922496420351613.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P10076789794881311661

`A023607(n+1)+2*A023607(n)`
-/

namespace A004799.P10076789794881311661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (n + 1) + 2 * A023607 n

end

end A004799.P10076789794881311661

namespace A004799

/-- `A023607(n+1)+2*A023607(n)` -/
def P10076789794881311661.Spec : Prop :=
  ∀ n, P10076789794881311661.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P12983096294759598822

`A000045(n+2)+n*A000032(n+2)`
-/

namespace A004799.P12983096294759598822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 2) + (n : ℤ) * A000032 (n + 2)

end

end A004799.P12983096294759598822

namespace A004799

/-- `A000045(n+2)+n*A000032(n+2)` -/
def P12983096294759598822.Spec : Prop :=
  ∀ n, P12983096294759598822.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P7274922705614010683

`A053602(2*n+1)+n*A000204(n+2)`
-/

namespace A004799.P7274922705614010683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n + 1) + (n : ℤ) * A000204 (n + 2)

end

end A004799.P7274922705614010683

namespace A004799

/-- `A053602(2*n+1)+n*A000204(n+2)` -/
def P7274922705614010683.Spec : Prop :=
  ∀ n, P7274922705614010683.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P2326662273630389133

`A115339(2*n+1)+n*A000204(n+2)`
-/

namespace A004799.P2326662273630389133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115339 (2 * n + 1) + (n : ℤ) * A000204 (n + 2)

end

end A004799.P2326662273630389133

namespace A004799

/-- `A115339(2*n+1)+n*A000204(n+2)` -/
def P2326662273630389133.Spec : Prop :=
  ∀ n, P2326662273630389133.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P16200283872011776583

`(n+1)*A000045(n+3)+(n-1)*A000045(n+1)`
-/

namespace A004799.P16200283872011776583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 (n + 3) + ((n : ℤ) - 1) * A000045 (n + 1)

end

end A004799.P16200283872011776583

namespace A004799

/-- `(n+1)*A000045(n+3)+(n-1)*A000045(n+1)` -/
def P16200283872011776583.Spec : Prop :=
  ∀ n, P16200283872011776583.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P1552281022296628150

`A136376(n+1)+A146005(n)+A099920(n)`
-/

namespace A004799.P1552281022296628150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136376 (n + 1) + (A146005 n + A099920 n)

end

end A004799.P1552281022296628150

namespace A004799

/-- `A136376(n+1)+A146005(n)+A099920(n)` -/
def P1552281022296628150.Spec : Prop :=
  ∀ n, P1552281022296628150.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P18160737710896727512

`A178521(n+1)+A178521(n)+A088209(n)`
-/

namespace A004799.P18160737710896727512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178521 (n + 1) + (A178521 n + A088209 n)

end

end A004799.P18160737710896727512

namespace A004799

/-- `A178521(n+1)+A178521(n)+A088209(n)` -/
def P18160737710896727512.Spec : Prop :=
  ∀ n, P18160737710896727512.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P6780781774180331588

`A146005(n+1)+A146005(n)-A000045(n)`
-/

namespace A004799.P6780781774180331588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146005 (n + 1) + (A146005 n - A000045 n)

end

end A004799.P6780781774180331588

namespace A004799

/-- `A146005(n+1)+A146005(n)-A000045(n)` -/
def P6780781774180331588.Spec : Prop :=
  ∀ n, P6780781774180331588.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P5972299497022553562

`A258321(n+1)+A258321(n)-A000032(n+1)`
-/

namespace A004799.P5972299497022553562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258321 (n + 1) + (A258321 n - A000032 (n + 1))

end

end A004799.P5972299497022553562

namespace A004799

/-- `A258321(n+1)+A258321(n)-A000032(n+1)` -/
def P5972299497022553562.Spec : Prop :=
  ∀ n, P5972299497022553562.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P7209489968895538785

`A258321(n+1)+A258321(n)-A000204(n+1)`
-/

namespace A004799.P7209489968895538785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258321 (n + 1) + (A258321 n - A000204 (n + 1))

end

end A004799.P7209489968895538785

namespace A004799

/-- `A258321(n+1)+A258321(n)-A000204(n+1)` -/
def P7209489968895538785.Spec : Prop :=
  ∀ n, P7209489968895538785.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P7616346919155623042

`A045925(n+1)+A136376(n+2)-A000204(n+2)`
-/

namespace A004799.P7616346919155623042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045925 (n + 1) + (A136376 (n + 2) - A000204 (n + 2))

end

end A004799.P7616346919155623042

namespace A004799

/-- `A045925(n+1)+A136376(n+2)-A000204(n+2)` -/
def P7616346919155623042.Spec : Prop :=
  ∀ n, P7616346919155623042.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P6659363532103956334

`A067981(n)-A067980(n)`
-/

namespace A004799.P6659363532103956334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067981 n - A067980 n

end

end A004799.P6659363532103956334

namespace A004799

/-- `A067981(n)-A067980(n)` -/
def P6659363532103956334.Spec : Prop :=
  ∀ n, P6659363532103956334.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P17494146732208186

`A067982(n)%A067980(n)`
-/

namespace A004799.P17494146732208186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A067982 n) (A067980 n)

end

end A004799.P17494146732208186

namespace A004799

/-- `A067982(n)%A067980(n)` -/
def P17494146732208186.Spec : Prop :=
  ∀ n, P17494146732208186.a n = A004799 (n + 1)

end A004799

/-! ## A004799.P15404918739436029803

`2*A067981(n)-A067982(n)`
-/

namespace A004799.P15404918739436029803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067981 n - A067982 n

end

end A004799.P15404918739436029803

namespace A004799

/-- `2*A067981(n)-A067982(n)` -/
def P15404918739436029803.Spec : Prop :=
  ∀ n, P15404918739436029803.a n = A004799 (n + 1)

end A004799

