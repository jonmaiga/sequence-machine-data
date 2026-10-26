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
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A390304: E.g.f. A(x) satisfies A(x) = exp( x/(1-x^2)^3 * A(x)^2 ).

The programs for A390304, there is no canonical definition to state claims against.
-/

/-! ## A390304.P8201625613897313740

`A006370(2*A390061(n))`
-/

namespace A390304.P8201625613897313740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (2 * A390061 n).toNat

end

end A390304.P8201625613897313740

/-!
# A390305: Numbers > 0 whose binary indices have strictly increasing first differences.

The programs for A390305, there is no canonical definition to state claims against.
-/

/-! ## A390305.P6272167925374945723

`∩[A335524(n+1), A114994(n)+1]`
-/

namespace A390305.P6272167925374945723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114994 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390305.P6272167925374945723

/-! ## A390305.P4550604573940582001

`A261226(A004736(n+3))+lt[n, A374684(2*n+1)²]`
-/

namespace A390305.P4550604573940582001
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 (2 * n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261226 (A004736 (n + 3)).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ)

end

end A390305.P4550604573940582001

/-!
# A390306: Numbers > 0 whose binary indices have strictly decreasing first differences.

The programs for A390306, there is no canonical definition to state claims against.
-/

/-! ## A390306.P6117693858496157361

`lt[A048881(A005187(n)), 1-A357624(2*n+1)]`
-/

namespace A390306.P6117693858496157361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048881 (A005187 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A357624 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390306.P6117693858496157361

/-! ## A390306.P14786484722153742494

`lt[A346633(A346702(n)), 1-A357624(2*n+1)]`
-/

namespace A390306.P14786484722153742494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346633 (A346702 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A357624 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390306.P14786484722153742494

/-! ## A390306.P3898839007056098121

`lt[A306286(n), A197354(A333939(3*n))]`
-/

namespace A390306.P3898839007056098121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197354 (A333939 (3 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390306.P3898839007056098121

/-! ## A390306.P3942528849320915746

`lt[A112798(n+2), A329326(A324696(2*n+1))]`
-/

namespace A390306.P3942528849320915746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329326 (A324696 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390306.P3942528849320915746

/-! ## A390306.P13516227656734982180

`lt[A001221(A025047(n)), A357622(n)]`
-/

namespace A390306.P13516227656734982180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A025047 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357622 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390306.P13516227656734982180

/-!
# A390308: Irregular triangle read by rows where row n lists the first sums minus 1 of the 1-prepended prime indices of n.

The programs for A390308, there is no canonical definition to state claims against.
-/

/-! ## A390308.P3855043468207460590

`A005843(A112798(n+2))-A358169(n+2)`
-/

namespace A390308.P3855043468207460590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A112798 (n + 2)).toNat - A358169 (n + 2)

end

end A390308.P3855043468207460590

/-! ## A390308.P10721740166840226037

`A186745(A291883(n))+A112798(n+2)`
-/

namespace A390308.P10721740166840226037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186745 (A291883 n).toNat + A112798 (n + 2)

end

end A390308.P10721740166840226037

/-! ## A390308.P9716550657423737439

`A073445(A062903(2*n+5))+A061395(A265110(n+2))`
-/

namespace A390308.P9716550657423737439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073445 (A062903 (2 * n + 5)).toNat + A061395 (A265110 (n + 2)).toNat

end

end A390308.P9716550657423737439

/-! ## A390308.P13640420740789968150

`A112798(n+2)+A010054(A297102(n+1))`
-/

namespace A390308.P13640420740789968150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (n + 2) + A010054 (A297102 (n + 1)).toNat

end

end A390308.P13640420740789968150

/-! ## A390308.P9606037618044050606

`A156729(A156717(n+1))+A112798(n+2)`
-/

namespace A390308.P9606037618044050606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156729 (A156717 (n + 1)).toNat + A112798 (n + 2)

end

end A390308.P9606037618044050606

/-!
# A390309: Heinz number of first sums minus 1 of the 1-prepended prime indices of n.

The programs for A390309, there is no canonical definition to state claims against.
-/

/-! ## A390309.P14338975441561459979

`A064989(A390449(2*(n+1)))`
-/

namespace A390309.P14338975441561459979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A390449 (2 * (n + 1))).toNat

end

end A390309.P14338975441561459979

/-!
# A390310: a(n) = if(n mod 3 = 0, n/3, 4 * n + (-1)^(n mod 3)).

The programs for A390310, the canonical program `A390310.P263605750338287511` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390310 has offset 0).

The definition of A390310 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390310.P263605750338287511

`2*a(n-3)-a(n-6)` with `a(0)=0, a(1)=3, a(2)=9, a(3)=1, a(4)=15, a(5)=21`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390310

/-- `2*a(n-3)-a(n-6)` -/
def P263605750338287511.Spec : Prop :=
  ∀ n, P263605750338287511.a n = A390310 n

theorem P263605750338287511.correct : P263605750338287511.Spec := by
  intro n
  simp only [A390310]

end A390310

/-!
# A390311: a(n) = n!*(4^(n+1) - 3^(n+1)).

The programs for A390311, the canonical program `A390311.P13234706816563629693` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390311 has offset 0).

The definition of A390311 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n!*(4^(n+1)-3^(n+1))` (program `A390311.P13234706816563629693`, by `A390311.P13234706816563629693.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A390311.P13234706816563629693

`n!*(4^(n+1)-3^(n+1))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390311

/-- `n!*(4^(n+1)-3^(n+1))` -/
def P13234706816563629693.Spec : Prop :=
  ∀ n, P13234706816563629693.a n = A390311 n

theorem P13234706816563629693.correct : P13234706816563629693.Spec := by
  intro n
  simp only [A390311]

end A390311

/-! ## A390311.P15566781785378600234

`∑[A255463(n)]*A000142(n)`
-/

namespace A390311.P15566781785378600234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 n

end

end A390311.P15566781785378600234

namespace A390311

/-- `∑[A255463(n)]*A000142(n)` -/
def P15566781785378600234.Spec : Prop :=
  ∀ n, P15566781785378600234.a n = A390311 n

end A390311

/-! ## A390311.P12797169445839600570

`A000142(n)*A005061(n+1)`
-/

namespace A390311.P12797169445839600570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A005061 (n + 1)

end

end A390311.P12797169445839600570

namespace A390311

/-- `A000142(n)*A005061(n+1)` -/
def P12797169445839600570.Spec : Prop :=
  ∀ n, P12797169445839600570.a n = A390311 n

end A390311

/-! ## A390311.P9042309088036297013

`∏[A028310(n)]*A005061(n+1)`
-/

namespace A390311.P9042309088036297013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A005061 (n + 1)

end

end A390311.P9042309088036297013

namespace A390311

/-- `∏[A028310(n)]*A005061(n+1)` -/
def P9042309088036297013.Spec : Prop :=
  ∀ n, P9042309088036297013.a n = A390311 n

end A390311

/-! ## A390311.P18231213563876260053

`A005061(n+1)*A094638(A165007(2*n+5))`
-/

namespace A390311.P18231213563876260053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005061 (n + 1) * A094638 (A165007 (2 * n + 5)).toNat

end

end A390311.P18231213563876260053

namespace A390311

/-- `A005061(n+1)*A094638(A165007(2*n+5))` -/
def P18231213563876260053.Spec : Prop :=
  ∀ n, P18231213563876260053.a n = A390311 n

end A390311

/-!
# A390312: Numbers k such that sigma(k) has at least one prime factor larger than the largest prime factor of k.

The programs for A390312, the canonical program `A390312.P4179282321994300031` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390312 has offset 1).

The definition of A390312 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2588 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390312.P4179282321994300031

`lt[0, A336352(n+1)]+1`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A390312

/-- `lt[0, A336352(n+1)]+1` -/
def P4179282321994300031.Spec : Prop :=
  ∀ n, (P4179282321994300031.a n : ℤ) = A390312 (n + 1)

theorem P4179282321994300031.correct : P4179282321994300031.Spec := by
  intro n
  simp only [A390312, Nat.add_sub_cancel]

end A390312

/-!
# A390315: Numbers m such that A390254(m) > c*(4/3)^m, where c = lim_{m->oo} A390254(m)/(4/3)^m = A390321.

The programs for A390315, there is no canonical definition to state claims against.
-/

/-! ## A390315.P7087671633066724362

`comp[A390316(n+1)]`
-/

namespace A390315.P7087671633066724362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A390315.P7087671633066724362

/-! ## A390315.P10272489052814693193

`lt[char[A390316(n+1)], A057427(n)]`
-/

namespace A390315.P10272489052814693193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390316 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A390315.P10272489052814693193

/-! ## A390315.P15211755524061529091

`eq[char[A390316(n+1)], A000035(2*(n+1))]`
-/

namespace A390315.P15211755524061529091
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390316 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A390315.P15211755524061529091

/-!
# A390316: Numbers m such that A390254(m) < c*(4/3)^m, where c = lim_{m->oo} A390254(m)/(4/3)^m = A390321.

The programs for A390316, there is no canonical definition to state claims against.
-/

/-! ## A390316.P3360579617567257042

`comp[A390315(n+1)]`
-/

namespace A390316.P3360579617567257042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A390316.P3360579617567257042

/-!
# A390317: Multiplicative sequence a(n) with a(p^e) = 2 + (p^e + p^(e-1) - 2) * (p+1) / (p-1) for prime p and e > 0.

The programs for A390317, the canonical program `A390317.P12726225618828404859` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390317 has offset 1).

The definition of A390317 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390317.P14922996284040315871

`∑{d}[n+1, A001615(#)*A034444((n+1)/#)]`
-/

namespace A390317.P14922996284040315871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A034444 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390317.P14922996284040315871

namespace A390317

/-- `∑{d}[n+1, A001615(#)*A034444((n+1)/#)]` -/
def P14922996284040315871.Spec : Prop :=
  ∀ n, P14922996284040315871.a n = A390317 (n + 1)

end A390317

/-! ## A390317.P9894882388316616912

`∑{d}[n+1, A001616(#)*A034448((n+1)/#)]`
-/

namespace A390317.P9894882388316616912
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001616 d * A034448 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390317.P9894882388316616912

namespace A390317

/-- `∑{d}[n+1, A001616(#)*A034448((n+1)/#)]` -/
def P9894882388316616912.Spec : Prop :=
  ∀ n, P9894882388316616912.a n = A390317 (n + 1)

end A390317

/-! ## A390317.P51906421118221501

`∑{d}[n+1, A008966(#)*A060648((n+1)/#)]`
-/

namespace A390317.P51906421118221501
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A060648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390317.P51906421118221501

namespace A390317

/-- `∑{d}[n+1, A008966(#)*A060648((n+1)/#)]` -/
def P51906421118221501.Spec : Prop :=
  ∀ n, P51906421118221501.a n = A390317 (n + 1)

end A390317

/-! ## A390317.P6494846081830260790

`∑{d}[n+1, A048691(#)*A063659((n+1)/#)]`
-/

namespace A390317.P6494846081830260790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048691 d * A063659 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390317.P6494846081830260790

namespace A390317

/-- `∑{d}[n+1, A048691(#)*A063659((n+1)/#)]` -/
def P6494846081830260790.Spec : Prop :=
  ∀ n, P6494846081830260790.a n = A390317 (n + 1)

end A390317

/-! ## A390317.P16702730544791809258

`∑{d}[n+1, A035116(#)*A130107((n+1)/#)]`
-/

namespace A390317.P16702730544791809258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A130107 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390317.P16702730544791809258

namespace A390317

/-- `∑{d}[n+1, A035116(#)*A130107((n+1)/#)]` -/
def P16702730544791809258.Spec : Prop :=
  ∀ n, P16702730544791809258.a n = A390317 (n + 1)

end A390317

/-! ## A390317.P16873198287956976429

`∑{d}[n+1, A000010(#)*A322328((n+1)/#)]`
-/

namespace A390317.P16873198287956976429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A322328 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390317.P16873198287956976429

namespace A390317

/-- `∑{d}[n+1, A000010(#)*A322328((n+1)/#)]` -/
def P16873198287956976429.Spec : Prop :=
  ∀ n, P16873198287956976429.a n = A390317 (n + 1)

end A390317

/-! ## A390317.P1929939694101504624

`∑{d}[n+1, A023900(#)*A306379((n+1)/#)]`
-/

namespace A390317.P1929939694101504624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A306379 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390317.P1929939694101504624

namespace A390317

/-- `∑{d}[n+1, A023900(#)*A306379((n+1)/#)]` -/
def P1929939694101504624.Spec : Prop :=
  ∀ n, P1929939694101504624.a n = A390317 (n + 1)

end A390317

/-! ## A390317.P12726225618828404859

`∑{d}[n+1, A060724(#)*A271102((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A390317

/-- `∑{d}[n+1, A060724(#)*A271102((n+1)/#)]` -/
def P12726225618828404859.Spec : Prop :=
  ∀ n, P12726225618828404859.a n = A390317 (n + 1)

theorem P12726225618828404859.correct : P12726225618828404859.Spec := by
  intro n
  simp only [A390317, Nat.add_sub_cancel]

end A390317

/-! ## A390317.P15643875470430002769

`∑{d}[n+1, A062369(#)*A307445((n+1)/#)]`
-/

namespace A390317.P15643875470430002769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062369 d * A307445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390317.P15643875470430002769

namespace A390317

/-- `∑{d}[n+1, A062369(#)*A307445((n+1)/#)]` -/
def P15643875470430002769.Spec : Prop :=
  ∀ n, P15643875470430002769.a n = A390317 (n + 1)

end A390317

/-! ## A390317.P4043304765763074281

`∑{d}[n+1, A159634(#)*A304182((n+1)/#)]`
-/

namespace A390317.P4043304765763074281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A159634 d * A304182 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390317.P4043304765763074281

namespace A390317

/-- `∑{d}[n+1, A159634(#)*A304182((n+1)/#)]` -/
def P4043304765763074281.Spec : Prop :=
  ∀ n, P4043304765763074281.a n = A390317 (n + 1)

end A390317

/-! ## A390317.P17517694048297558655

`∑{d}[n+1, A254981(#)*A387960((n+1)/#)]`
-/

namespace A390317.P17517694048297558655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254981 d * A387960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390317.P17517694048297558655

namespace A390317

/-- `∑{d}[n+1, A254981(#)*A387960((n+1)/#)]` -/
def P17517694048297558655.Spec : Prop :=
  ∀ n, P17517694048297558655.a n = A390317 (n + 1)

end A390317

/-! ## A390317.P12379875912319894696

`∑{d}[n+1, A328729(#)*A365649((n+1)/#)]`
-/

namespace A390317.P12379875912319894696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A328729 d * A365649 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A390317.P12379875912319894696

namespace A390317

/-- `∑{d}[n+1, A328729(#)*A365649((n+1)/#)]` -/
def P12379875912319894696.Spec : Prop :=
  ∀ n, P12379875912319894696.a n = A390317 (n + 1)

end A390317

/-!
# A390318: a(n) = floor(gamma^(-n)) where gamma is Euler's constant A001620.

The programs for A390318, the canonical program `A390318.P14324731915381538911` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390318 has offset 0).

The definition of A390318 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390318.P14324731915381538911

`floor(sqrt(γ^-(2*n)))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390318

/-- `floor(sqrt(γ^-(2*n)))` -/
def P14324731915381538911.Spec : Prop :=
  ∀ n, P14324731915381538911.a n = A390318 n

theorem P14324731915381538911.correct : P14324731915381538911.Spec := by
  intro n
  simp only [A390318]

end A390318

/-!
# A390320: Positive integers (not multiples of 10 and greater than 1) whose constant congruence speed is greater than the maximum of the constant congruence speeds of all their prime factors (see A373387 for the definition of "constant congruence speed").

The programs for A390320, there is no canonical definition to state claims against.
-/

/-! ## A390320.P8721997514271844915

`∩[A335469(n+1), A390601(n+1)]`
-/

namespace A390320.P8721997514271844915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335469 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390320.P8721997514271844915

/-! ## A390320.P6649059936465410881

`∩[A335524(n+1), A390601(n+1)]`
-/

namespace A390320.P6649059936465410881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390320.P6649059936465410881

/-!
# A390322: Column 1 of table A390148.

The programs for A390322, there is no canonical definition to state claims against.
-/

/-! ## A390322.P946084441227649740

`A390148(3*n+n+1)`
-/

namespace A390322.P946084441227649740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390148 (3 * n + (n + 1))

end

end A390322.P946084441227649740

/-!
# A390323: Sum of composite numbers coprime to n in the range 1 < k < n.

The programs for A390323, the canonical program `A390323.P3785006267349611144` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390323 has offset 1).

The definition of A390323 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008472, A023896, A034387, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A390323.P3785006267349611144

`A023896(n+1)-A034387(n+1)+A008472(n+1)-1`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A390323

/-- `A023896(n+1)-A034387(n+1)+A008472(n+1)-1` -/
def P3785006267349611144.Spec : Prop :=
  ∀ n, P3785006267349611144.a n = A390323 (n + 1)

theorem P3785006267349611144.correct : P3785006267349611144.Spec := by
  intro n
  simp only [A390323, Nat.add_sub_cancel]

end A390323

/-! ## A390323.P3381790227780133969

`A083266(n+1)-A351827(n+1)`
-/

namespace A390323.P3381790227780133969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083266 (n + 1) - A351827 (n + 1)

end

end A390323.P3381790227780133969

namespace A390323

/-- `A083266(n+1)-A351827(n+1)` -/
def P3381790227780133969.Spec : Prop :=
  ∀ n, P3381790227780133969.a n = A390323 (n + 1)

end A390323

/-!
# A390325: Oblong numbers of the form 2^k*(2^k - 1) or 2^k*(2^k + 1).

The programs for A390325, the canonical program `A390325.P16081879559639106622` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390325 has offset 1).

The definition of A390325 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390325.P16081879559639106622

`2^ceil((n+1)/2)*(2^ceil((n+1)/2)+(-1)^(n+1))`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390325

/-- `2^ceil((n+1)/2)*(2^ceil((n+1)/2)+(-1)^(n+1))` -/
def P16081879559639106622.Spec : Prop :=
  ∀ n, P16081879559639106622.a n = (A390325 (n + 1) : ℚ)

end A390325

/-! ## A390325.P12486796333123186462

`A097110(n)+A097110(n)²`
-/

namespace A390325.P12486796333123186462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097110 n + A097110 n ^ 2

end

end A390325.P12486796333123186462

namespace A390325

/-- `A097110(n)+A097110(n)²` -/
def P12486796333123186462.Spec : Prop :=
  ∀ n, P12486796333123186462.a n = A390325 (n + 1)

end A390325

/-! ## A390325.P2849348040017640096

`A152166(n+1)+A152166(n+1)²`
-/

namespace A390325.P2849348040017640096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 (n + 1) + A152166 (n + 1) ^ 2

end

end A390325.P2849348040017640096

namespace A390325

/-- `A152166(n+1)+A152166(n+1)²` -/
def P2849348040017640096.Spec : Prop :=
  ∀ n, P2849348040017640096.a n = A390325 (n + 1)

end A390325

/-! ## A390325.P4372759139362299731

`A152166(n+1)+A060546(n+1)*A060546(n+1)`
-/

namespace A390325.P4372759139362299731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 (n + 1) + A060546 (n + 1) * A060546 (n + 1)

end

end A390325.P4372759139362299731

namespace A390325

/-- `A152166(n+1)+A060546(n+1)*A060546(n+1)` -/
def P4372759139362299731.Spec : Prop :=
  ∀ n, P4372759139362299731.a n = A390325 (n + 1)

end A390325

/-! ## A390325.P14762606580079000364

`A251421(n+1)/A000034(n)`
-/

namespace A390325.P14762606580079000364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A251421 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A390325.P14762606580079000364

namespace A390325

/-- `A251421(n+1)/A000034(n)` -/
def P14762606580079000364.Spec : Prop :=
  ∀ n, P14762606580079000364.a n = (A390325 (n + 1) : ℚ)

end A390325

/-!
# A390326: Oblong numbers not of the forms 2^k*(2^k - 1) or 2^k*(2^k + 1).

The programs for A390326, the canonical program `A390326.P10922664327684501157` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390326 has offset 1).

The definition of A390326 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9973 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390326.P8101173468455037934

`A002378(lt[1, A053645(n+1)])`
-/

namespace A390326.P8101173468455037934
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A390326.P8101173468455037934

namespace A390326

/-- `A002378(lt[1, A053645(n+1)])` -/
def P8101173468455037934.Spec : Prop :=
  ∀ n, P8101173468455037934.a n = A390326 (n + 1)

end A390326

/-! ## A390326.P9745552951971681463

`A002378(lt[1, A124757(n+1)])`
-/

namespace A390326.P9745552951971681463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A390326.P9745552951971681463

namespace A390326

/-- `A002378(lt[1, A124757(n+1)])` -/
def P9745552951971681463.Spec : Prop :=
  ∀ n, P9745552951971681463.a n = A390326 (n + 1)

end A390326

/-! ## A390326.P12076473031946871630

`A002378(lt[1, A295515(n+1)])`
-/

namespace A390326.P12076473031946871630
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A390326.P12076473031946871630

namespace A390326

/-- `A002378(lt[1, A295515(n+1)])` -/
def P12076473031946871630.Spec : Prop :=
  ∀ n, P12076473031946871630.a n = A390326 (n + 1)

end A390326

/-! ## A390326.P8157076027146821117

`A002378(lt[3, A160552(n+1)])`
-/

namespace A390326.P8157076027146821117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160552 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A390326.P8157076027146821117

namespace A390326

/-- `A002378(lt[3, A160552(n+1)])` -/
def P8157076027146821117.Spec : Prop :=
  ∀ n, P8157076027146821117.a n = A390326 (n + 1)

end A390326

/-! ## A390326.P118262425552844142

`A002378(lt[A040001(n), A000120(n+1)])`
-/

namespace A390326.P118262425552844142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A390326.P118262425552844142

namespace A390326

/-- `A002378(lt[A040001(n), A000120(n+1)])` -/
def P118262425552844142.Spec : Prop :=
  ∀ n, P118262425552844142.a n = A390326 (n + 1)

end A390326

/-! ## A390326.P10922664327684501157

`A002378(lt[A209229(n), A164089(n+1)])`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A390326

/-- `A002378(lt[A209229(n), A164089(n+1)])` -/
def P10922664327684501157.Spec : Prop :=
  ∀ n, P10922664327684501157.a n = A390326 (n + 1)

theorem P10922664327684501157.correct : P10922664327684501157.Spec := by
  intro n
  simp only [A390326, Nat.add_sub_cancel]

end A390326

/-! ## A390326.P17998713779803703522

`A002378(lt[0, A173069(2*n+3)])`
-/

namespace A390326.P17998713779803703522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173069 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A390326.P17998713779803703522

namespace A390326

/-- `A002378(lt[0, A173069(2*n+3)])` -/
def P17998713779803703522.Spec : Prop :=
  ∀ n, P17998713779803703522.a n = A390326 (n + 1)

end A390326

/-! ## A390326.P13291132195372374117

`∩[A281005(n+1), A002378(n)]`
-/

namespace A390326.P13291132195372374117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390326.P13291132195372374117

namespace A390326

/-- `∩[A281005(n+1), A002378(n)]` -/
def P13291132195372374117.Spec : Prop :=
  ∀ n, (P13291132195372374117.a n : ℤ) = A390326 (n + 1)

end A390326

/-! ## A390326.P14098934776468205263

`∩[A028690(n+1), A281005(n+1)]`
-/

namespace A390326.P14098934776468205263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028690 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390326.P14098934776468205263

namespace A390326

/-- `∩[A028690(n+1), A281005(n+1)]` -/
def P14098934776468205263.Spec : Prop :=
  ∀ n, (P14098934776468205263.a n : ℤ) = A390326 (n + 1)

end A390326

/-! ## A390326.P15650220734132097259

`∩[A060798(n+1), A281005(n+1)]`
-/

namespace A390326.P15650220734132097259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390326.P15650220734132097259

namespace A390326

/-- `∩[A060798(n+1), A281005(n+1)]` -/
def P15650220734132097259.Spec : Prop :=
  ∀ n, (P15650220734132097259.a n : ℤ) = A390326 (n + 1)

end A390326

/-!
# A390327: Numbers k such that the number of prime divisors of binomial(2k, k), including multiplicities, is even.

The programs for A390327, the canonical program `A390327.P5443559523868288326` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390327 has offset 0).

The definition of A390327 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 307 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390327.P2600627838613513891

`lt[1, A040001(A022559(2*n))]`
-/

namespace A390327.P2600627838613513891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A022559 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A390327.P2600627838613513891

namespace A390327

/-- `lt[1, A040001(A022559(2*n))]` -/
def P2600627838613513891.Spec : Prop :=
  ∀ n, (P2600627838613513891.a n : ℤ) = A390327 n

end A390327

/-! ## A390327.P5443559523868288326

`lt[A023816(n), A022998(A023816(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A390327

/-- `lt[A023816(n), A022998(A023816(n))]` -/
def P5443559523868288326.Spec : Prop :=
  ∀ n, (P5443559523868288326.a n : ℤ) = A390327 n

theorem P5443559523868288326.correct : P5443559523868288326.Spec := by
  intro n
  simp only [A390327]

end A390327

/-! ## A390327.P17077486116899345018

`lt[A022559(n), A025480(A022559(2*n))]`
-/

namespace A390327.P17077486116899345018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A022559 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A390327.P17077486116899345018

namespace A390327

/-- `lt[A022559(n), A025480(A022559(2*n))]` -/
def P17077486116899345018.Spec : Prop :=
  ∀ n, (P17077486116899345018.a n : ℤ) = A390327 n

end A390327

/-!
# A390328: Numbers k such that the number of prime divisors of binomial(2k, k), including multiplicities, is odd.

The programs for A390328, the canonical program `A390328.P12866154070320318220` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390328 has offset 1).

The definition of A390328 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 286 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390328.P12866154070320318220

`eq[1, A000035(A023816(n))]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A390328

/-- `eq[1, A000035(A023816(n))]` -/
def P12866154070320318220.Spec : Prop :=
  ∀ n, (P12866154070320318220.a n : ℤ) = A390328 (n + 1)

theorem P12866154070320318220.correct : P12866154070320318220.Spec := by
  intro n
  simp only [A390328, Nat.add_sub_cancel]

end A390328

/-! ## A390328.P11032473054668892604

`eq[1, A000035(A022559(2*n))]`
-/

namespace A390328.P11032473054668892604
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A022559 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A390328.P11032473054668892604

namespace A390328

/-- `eq[1, A000035(A022559(2*n))]` -/
def P11032473054668892604.Spec : Prop :=
  ∀ n, (P11032473054668892604.a n : ℤ) = A390328 (n + 1)

end A390328

/-!
# A390329: Numbers k such that the number of distinct prime divisors of binomial(2k, k) is even.

The programs for A390329, the canonical program `A390329.P16154196424399310055` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390329 has offset 1).

The definition of A390329 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 264 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390329.P16154196424399310055

`lt[A067434(n+1)%2, 1]+1`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A390329

/-- `lt[A067434(n+1)%2, 1]+1` -/
def P16154196424399310055.Spec : Prop :=
  ∀ n, (P16154196424399310055.a n : ℤ) = A390329 (n + 1)

theorem P16154196424399310055.correct : P16154196424399310055.Spec := by
  intro n
  simp only [A390329, Nat.add_sub_cancel]

end A390329

/-!
# A390331: Expansion of g/(1 - x*g)^2, where g = 1+x*g^4 is the g.f. of A002293.

The programs for A390331, there is no canonical definition to state claims against.
-/

/-! ## A390331.P7610073745289279832

`A106263(A308631(n+3))`
-/

namespace A390331.P7610073745289279832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106263 (A308631 (n + 3)).toNat

end

end A390331.P7610073745289279832

/-!
# A390332: a(n) = Sum_{k=0..n} binomial(5*n+k,n-k).

The programs for A390332, there is no canonical definition to state claims against.
-/

/-! ## A390332.P16902058249605188665

`A038730(A064225(n))`
-/

namespace A390332.P16902058249605188665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A064225 n).toNat

end

end A390332.P16902058249605188665

/-!
# A390333: a(n) = Sum_{k=0..n} binomial(4*n+k+1,n-k).

The programs for A390333, there is no canonical definition to state claims against.
-/

/-! ## A390333.P12707766328386764973

`A193667(A139276(n))`
-/

namespace A390333.P12707766328386764973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193667 (A139276 n).toNat

end

end A390333.P12707766328386764973

/-! ## A390333.P5782366698312072643

`A125171(A125201(n+1))`
-/

namespace A390333.P5782366698312072643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (A125201 (n + 1)).toNat

end

end A390333.P5782366698312072643

/-! ## A390333.P5525830947657074553

`A193923(A139272(n+1))`
-/

namespace A390333.P5525830947657074553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 (A139272 (n + 1)).toNat

end

end A390333.P5525830947657074553

/-! ## A390333.P4631666073040902819

`A193924(A139273(n+1))`
-/

namespace A390333.P4631666073040902819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (A139273 (n + 1)).toNat

end

end A390333.P4631666073040902819

/-!
# A390334: a(n) = Sum_{k=0..n} binomial(5*n+k+1,n-k).

The programs for A390334, there is no canonical definition to state claims against.
-/

/-! ## A390334.P6735458583768343256

`A038738(A064225(n))`
-/

namespace A390334.P6735458583768343256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038738 (A064225 n).toNat

end

end A390334.P6735458583768343256

/-! ## A390334.P12554817851143552047

`A099573(A033573(n))`
-/

namespace A390334.P12554817851143552047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A033573 n).toNat

end

end A390334.P12554817851143552047

/-!
# A390335: a(n) = Sum_{k=0..n} binomial(4*n+k+2,n-k).

The programs for A390335, there is no canonical definition to state claims against.
-/

/-! ## A390335.P18273953099357452750

`A193667(A194268(n))`
-/

namespace A390335.P18273953099357452750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193667 (A194268 n).toNat

end

end A390335.P18273953099357452750

/-! ## A390335.P8591411418289211240

`A125171(A139273(n+1))`
-/

namespace A390335.P8591411418289211240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125171 (A139273 (n + 1)).toNat

end

end A390335.P8591411418289211240

/-! ## A390335.P5225316931575386632

`A193924(A139275(n+1))`
-/

namespace A390335.P5225316931575386632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (A139275 (n + 1)).toNat

end

end A390335.P5225316931575386632

/-! ## A390335.P11001792357429143935

`A125172(A360417(n+1))`
-/

namespace A390335.P11001792357429143935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125172 (A360417 (n + 1)).toNat

end

end A390335.P11001792357429143935

/-!
# A390336: a(n) = Sum_{k=0..n} binomial(5*n+k+2,n-k).

The programs for A390336, there is no canonical definition to state claims against.
-/

/-! ## A390336.P5611523933222873859

`A038730(A117625(n+1))`
-/

namespace A390336.P5611523933222873859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038730 (A117625 (n + 1)).toNat

end

end A390336.P5611523933222873859

/-! ## A390336.P13867148528041533014

`A099573(A132209(3*n+1)-n)`
-/

namespace A390336.P13867148528041533014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A132209 (3 * n + 1) - (n : ℤ)).toNat

end

end A390336.P13867148528041533014

/-!
# A390337: a(n) = Sum_{k=0..n} binomial(3*n+k-1,n-k).

The programs for A390337, there is no canonical definition to state claims against.
-/

/-! ## A390337.P8495378307262990074

`A038738(A058331(n))`
-/

namespace A390337.P8495378307262990074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038738 (A058331 n).toNat

end

end A390337.P8495378307262990074

/-! ## A390337.P13134866483997915698

`A193667(A117625(n))`
-/

namespace A390337.P13134866483997915698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193667 (A117625 n).toNat

end

end A390337.P13134866483997915698

/-! ## A390337.P8702446180619351611

`A193923(A062725(n))`
-/

namespace A390337.P8702446180619351611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 (A062725 n).toNat

end

end A390337.P8702446180619351611

/-! ## A390337.P2386030617275831623

`A193924(A062728(n))`
-/

namespace A390337.P2386030617275831623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (A062728 n).toNat

end

end A390337.P2386030617275831623

/-! ## A390337.P12610003310393868509

`A099573(A081585(n))`
-/

namespace A390337.P12610003310393868509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A081585 n).toNat

end

end A390337.P12610003310393868509

/-!
# A390338: a(n) = Sum_{k=0..n} binomial(4*n+k-1,n-k).

The programs for A390338, there is no canonical definition to state claims against.
-/

/-! ## A390338.P15300288609603721284

`A193923(A139276(n))`
-/

namespace A390338.P15300288609603721284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193923 (A139276 n).toNat

end

end A390338.P15300288609603721284

/-! ## A390338.P9479677389820172256

`A193924(A139277(n))`
-/

namespace A390338.P9479677389820172256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193924 (A139277 n).toNat

end

end A390338.P9479677389820172256

/-! ## A390338.P1330848923468144752

`A193667(A383464(n))`
-/

namespace A390338.P1330848923468144752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193667 (A383464 n).toNat

end

end A390338.P1330848923468144752

/-! ## A390338.P9641242813816647170

`A099573(A022282(n))`
-/

namespace A390338.P9641242813816647170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099573 (A022282 n).toNat

end

end A390338.P9641242813816647170

/-!
# A390339: a(n) = Sum_{k=0..n} binomial(5*n+k-1,n-k).

The programs for A390339, there is no canonical definition to state claims against.
-/

/-! ## A390339.P6467996422374975881

`A038738(A276819(n))`
-/

namespace A390339.P6467996422374975881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038738 (A276819 n).toNat

end

end A390339.P6467996422374975881

/-!
# A390340: Expansion of e.g.f. exp(3*x)*(exp(2*x) - x^2 - x).

The programs for A390340, the canonical program `A390340.P6955577075151613232` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390340 has offset 0).

The definition of A390340 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390340.P6955577075151613232

`5^n-n*(n+2)*3^(n-2)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390340

/-- `5^n-n*(n+2)*3^(n-2)` -/
def P6955577075151613232.Spec : Prop :=
  ∀ n, P6955577075151613232.a n = (A390340 n : ℚ)

end A390340

/-!
# A390342: Upper (1/2)-midsequence of binomial(n,3) and binomial(n,2); see Comments.

The programs for A390342, the canonical program `A390342.P513797795397079055` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390342 has offset 0).

The definition of A390342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390342.P513797795397079055

`ceil((n+1)*n*(n-1)/12)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390342

/-- `ceil((n+1)*n*(n-1)/12)` -/
def P513797795397079055.Spec : Prop :=
  ∀ n, P513797795397079055.a n = A390342 n

theorem P513797795397079055.correct : P513797795397079055.Spec := by
  intro n
  simp only [A390342]

end A390342

/-! ## A390342.P846376728434952406

`round(∑[C(n, 2)/2])`
-/

namespace A390342.P846376728434952406
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A390342.P846376728434952406

namespace A390342

/-- `round(∑[C(n, 2)/2])` -/
def P846376728434952406.Spec : Prop :=
  ∀ n, P846376728434952406.a n = A390342 n

end A390342

/-! ## A390342.P7969897144627892179

`round(C(n+1, 3)/2)`
-/

namespace A390342.P7969897144627892179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 1) 3 : ℚ) / 2)

end

end A390342.P7969897144627892179

namespace A390342

/-- `round(C(n+1, 3)/2)` -/
def P7969897144627892179.Spec : Prop :=
  ∀ n, P7969897144627892179.a n = A390342 n

end A390342

/-! ## A390342.P14715791698224369545

`floor((∑[C(n, 2)]+1)/2)`
-/

namespace A390342.P14715791698224369545
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) / 2⌋

end

end A390342.P14715791698224369545

namespace A390342

/-- `floor((∑[C(n, 2)]+1)/2)` -/
def P14715791698224369545.Spec : Prop :=
  ∀ n, P14715791698224369545.a n = A390342 n

end A390342

/-! ## A390342.P1394654504569088184

`floor((C(n+1, 3)+1)/2)`
-/

namespace A390342.P1394654504569088184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) 3 + 1 : ℚ) / 2⌋

end

end A390342.P1394654504569088184

namespace A390342

/-- `floor((C(n+1, 3)+1)/2)` -/
def P1394654504569088184.Spec : Prop :=
  ∀ n, P1394654504569088184.a n = A390342 n

end A390342

/-! ## A390342.P3080222541313117268

`∑[∑[a(n-4)+2]]` with `a(0)=0, a(1)=0, a(2)=1, a(3)=0`
-/

namespace A390342.P3080222541313117268
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1, 0] fun n f2 =>
  f2 (n - 4) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390342.P3080222541313117268

namespace A390342

/-- `∑[∑[a(n-4)+2]]` -/
def P3080222541313117268.Spec : Prop :=
  ∀ n, (P3080222541313117268.a n : ℤ) = A390342 n

end A390342

/-! ## A390342.P2638900930840946028

`floor(∑[(1-n)²/2]-a(n-1))` with `a(0)=0`
-/

namespace A390342.P2638900930840946028
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j - (a (n - 1) : ℚ)⌋

end

end A390342.P2638900930840946028

namespace A390342

/-- `floor(∑[(1-n)²/2]-a(n-1))` -/
def P2638900930840946028.Spec : Prop :=
  ∀ n, P2638900930840946028.a n = A390342 n

end A390342

/-! ## A390342.P5732248672644534138

`∑[A398152(n)]-(n+1)²`
-/

namespace A390342.P5732248672644534138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A398152 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - ((n + 1) ^ 2 : ℤ)

end

end A390342.P5732248672644534138

namespace A390342

/-- `∑[A398152(n)]-(n+1)²` -/
def P5732248672644534138.Spec : Prop :=
  ∀ n, P5732248672644534138.a n = A390342 n

end A390342

/-! ## A390342.P3137272893588834570

`A054925(n)+A011894(n)`
-/

namespace A390342.P3137272893588834570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054925 n + A011894 n

end

end A390342.P3137272893588834570

namespace A390342

/-- `A054925(n)+A011894(n)` -/
def P3137272893588834570.Spec : Prop :=
  ∀ n, P3137272893588834570.a n = A390342 n

end A390342

/-! ## A390342.P6847742794020627678

`A390347(n)+A161680(n)`
-/

namespace A390342.P6847742794020627678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390347 n + A161680 n

end

end A390342.P6847742794020627678

namespace A390342

/-- `A390347(n)+A161680(n)` -/
def P6847742794020627678.Spec : Prop :=
  ∀ n, P6847742794020627678.a n = A390342 n

end A390342

/-! ## A390342.P1166007131325930722

`A000217(n)+A390343(n)-A000292(n)`
-/

namespace A390342.P1166007131325930722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n + (A390343 n - A000292 n)

end

end A390342.P1166007131325930722

namespace A390342

/-- `A000217(n)+A390343(n)-A000292(n)` -/
def P1166007131325930722.Spec : Prop :=
  ∀ n, P1166007131325930722.a n = A390342 n

end A390342

/-! ## A390342.P12535074397849640796

`A007290(n+1)-A011886(n+1)`
-/

namespace A390342.P12535074397849640796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007290 (n + 1) - A011886 (n + 1)

end

end A390342.P12535074397849640796

namespace A390342

/-- `A007290(n+1)-A011886(n+1)` -/
def P12535074397849640796.Spec : Prop :=
  ∀ n, P12535074397849640796.a n = A390342 n

end A390342

/-! ## A390342.P2562218823883623597

`A000292(n)-(A011894(n+1)+A000217(n))`
-/

namespace A390342.P2562218823883623597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n - (A011894 (n + 1) + A000217 n)

end

end A390342.P2562218823883623597

namespace A390342

/-- `A000292(n)-(A011894(n+1)+A000217(n))` -/
def P2562218823883623597.Spec : Prop :=
  ∀ n, P2562218823883623597.a n = A390342 n

end A390342

/-! ## A390342.P6334442217339150463

`A390343(n)-(A390345(n)+A011849(n+1))`
-/

namespace A390342.P6334442217339150463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390343 n - (A390345 n + A011849 (n + 1))

end

end A390342.P6334442217339150463

namespace A390342

/-- `A390343(n)-(A390345(n)+A011849(n+1))` -/
def P6334442217339150463.Spec : Prop :=
  ∀ n, P6334442217339150463.a n = A390342 n

end A390342

/-! ## A390342.P9499536053454115690

`A011894(n+1)+A390343(n)-A011886(n+1)`
-/

namespace A390342.P9499536053454115690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 (n + 1) + (A390343 n - A011886 (n + 1))

end

end A390342.P9499536053454115690

namespace A390342

/-- `A011894(n+1)+A390343(n)-A011886(n+1)` -/
def P9499536053454115690.Spec : Prop :=
  ∀ n, P9499536053454115690.a n = A390342 n

end A390342

/-!
# A390343: Upper (3/2)-midsequence of binomial(n,3) and binomial(n,2); see Comments.

The programs for A390343, the canonical program `A390343.P15987417995135165692` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390343 has offset 0).

The definition of A390343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390343.P15987417995135165692

`ceil((n^3-n)/4)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390343

/-- `ceil((n^3-n)/4)` -/
def P15987417995135165692.Spec : Prop :=
  ∀ n, P15987417995135165692.a n = A390343 n

theorem P15987417995135165692.correct : P15987417995135165692.Spec := by
  intro n
  simp only [A390343]

end A390343

/-! ## A390343.P2508632593290222405

`round(3/2*C(n+1, 3))`
-/

namespace A390343.P2508632593290222405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((3 : ℚ) / 2 * (Nat.choose (n + 1) 3 : ℚ))

end

end A390343.P2508632593290222405

namespace A390343

/-- `round(3/2*C(n+1, 3))` -/
def P2508632593290222405.Spec : Prop :=
  ∀ n, P2508632593290222405.a n = A390343 n

end A390343

/-! ## A390343.P6274268080704638528

`round((n+1)/4*lcm(n, n-1))`
-/

namespace A390343.P6274268080704638528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℚ) / 4 * (Int.lcm (n : ℤ) ((n : ℤ) - 1) : ℚ))

end

end A390343.P6274268080704638528

namespace A390343

/-- `round((n+1)/4*lcm(n, n-1))` -/
def P6274268080704638528.Spec : Prop :=
  ∀ n, P6274268080704638528.a n = A390343 n

end A390343

/-! ## A390343.P12728214977751671987

`A390347(n)+A005581(n)`
-/

namespace A390343.P12728214977751671987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390347 n + A005581 n

end

end A390343.P12728214977751671987

namespace A390343

/-- `A390347(n)+A005581(n)` -/
def P12728214977751671987.Spec : Prop :=
  ∀ n, P12728214977751671987.a n = A390343 n

end A390343

/-! ## A390343.P1775004482942402305

`A011934(n)-A319007(n+1)`
-/

namespace A390343.P1775004482942402305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011934 n - A319007 (n + 1)

end

end A390343.P1775004482942402305

namespace A390343

/-- `A011934(n)-A319007(n+1)` -/
def P1775004482942402305.Spec : Prop :=
  ∀ n, P1775004482942402305.a n = A390343 n

end A390343

/-! ## A390343.P5682541988993472099

`A000292(n)+A390342(n)-A000217(n)`
-/

namespace A390343.P5682541988993472099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n + (A390342 n - A000217 n)

end

end A390343.P5682541988993472099

namespace A390343

/-- `A000292(n)+A390342(n)-A000217(n)` -/
def P5682541988993472099.Spec : Prop :=
  ∀ n, P5682541988993472099.a n = A390343 n

end A390343

/-! ## A390343.P6559776556313631476

`A135503(n)-A011886(n+1)`
-/

namespace A390343.P6559776556313631476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n - A011886 (n + 1)

end

end A390343.P6559776556313631476

namespace A390343

/-- `A135503(n)-A011886(n+1)` -/
def P6559776556313631476.Spec : Prop :=
  ∀ n, P6559776556313631476.a n = A390343 n

end A390343

/-! ## A390343.P3981395906573821551

`A011894(n+1)+2*A390342(n)`
-/

namespace A390343.P3981395906573821551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 (n + 1) + 2 * A390342 n

end

end A390343.P3981395906573821551

namespace A390343

/-- `A011894(n+1)+2*A390342(n)` -/
def P3981395906573821551.Spec : Prop :=
  ∀ n, P3981395906573821551.a n = A390343 n

end A390343

/-!
# A390344: Upper (1/3)-midsequence of binomial(n,3) and binomial(n,2); see Comments.

The programs for A390344, the canonical program `A390344.P7519425380196386925` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390344 has offset 0).

The definition of A390344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390344.P7519425380196386925

`ceil((n^3-n)/18)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390344

/-- `ceil((n^3-n)/18)` -/
def P7519425380196386925.Spec : Prop :=
  ∀ n, P7519425380196386925.a n = A390344 n

theorem P7519425380196386925.correct : P7519425380196386925.Spec := by
  intro n
  simp only [A390344]

end A390344

/-! ## A390344.P2042388523607710852

`floor((C(n+1, 3)+2)/3)`
-/

namespace A390344.P2042388523607710852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose (n + 1) 3 + 2 : ℚ) / 3⌋

end

end A390344.P2042388523607710852

namespace A390344

/-- `floor((C(n+1, 3)+2)/3)` -/
def P2042388523607710852.Spec : Prop :=
  ∀ n, P2042388523607710852.a n = A390344 n

end A390344

/-! ## A390344.P7132976841953567800

`round((C(n+1, 3)+1)/3)`
-/

namespace A390344.P7132976841953567800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 1) 3 + 1 : ℚ) / 3)

end

end A390344.P7132976841953567800

namespace A390344

/-- `round((C(n+1, 3)+1)/3)` -/
def P7132976841953567800.Spec : Prop :=
  ∀ n, P7132976841953567800.a n = A390344 n

end A390344

/-! ## A390344.P12877751403083921101

`floor((∑[abs(A000217(n)-n)]-1)/3)+1`
-/

namespace A390344.P12877751403083921101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000217 n - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 3⌋ + 1

end

end A390344.P12877751403083921101

namespace A390344

/-- `floor((∑[abs(A000217(n)-n)]-1)/3)+1` -/
def P12877751403083921101.Spec : Prop :=
  ∀ n, P12877751403083921101.a n = A390344 n

end A390344

/-! ## A390344.P17128840647173652972

`A110654(ceil(∑[n²-n]/3))`
-/

namespace A390344.P17128840647173652972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3⌉.toNat

end

end A390344.P17128840647173652972

namespace A390344

/-- `A110654(ceil(∑[n²-n]/3))` -/
def P17128840647173652972.Spec : Prop :=
  ∀ n, P17128840647173652972.a n = A390344 n

end A390344

/-!
# A390345: Upper (2/3)-midsequence of binomial(n,3) and binomial(n,2); see Comments.

The programs for A390345, the canonical program `A390345.P7163732838848139157` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390345 has offset 0).

The definition of A390345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390345.P7163732838848139157

`ceil((n^3-n)/9)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390345

/-- `ceil((n^3-n)/9)` -/
def P7163732838848139157.Spec : Prop :=
  ∀ n, P7163732838848139157.a n = A390345 n

theorem P7163732838848139157.correct : P7163732838848139157.Spec := by
  intro n
  simp only [A390345]

end A390345

/-! ## A390345.P3241575977935349174

`floor(2*(C(n+1, 3)+1)/3)`
-/

namespace A390345.P3241575977935349174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (Nat.choose (n + 1) 3 + 1) : ℚ) / 3⌋

end

end A390345.P3241575977935349174

namespace A390345

/-- `floor(2*(C(n+1, 3)+1)/3)` -/
def P3241575977935349174.Spec : Prop :=
  ∀ n, P3241575977935349174.a n = A390345 n

end A390345

/-! ## A390345.P8713990524468661449

`A000292(n)-(A011849(n+1)+A000217(n))`
-/

namespace A390345.P8713990524468661449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n - (A011849 (n + 1) + A000217 n)

end

end A390345.P8713990524468661449

namespace A390345

/-- `A000292(n)-(A011849(n+1)+A000217(n))` -/
def P8713990524468661449.Spec : Prop :=
  ∀ n, P8713990524468661449.a n = A390345 n

end A390345

/-! ## A390345.P16416477706537373839

`A004396(∑[C(n, 2)]+2)-1`
-/

namespace A390345.P16416477706537373839
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - 1

end

end A390345.P16416477706537373839

namespace A390345

/-- `A004396(∑[C(n, 2)]+2)-1` -/
def P16416477706537373839.Spec : Prop :=
  ∀ n, P16416477706537373839.a n = A390345 n

end A390345

/-! ## A390345.P15601566310729296915

`A004523(Δ[C(n+1, 4)]+1)`
-/

namespace A390345.P15601566310729296915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 1).toNat

end

end A390345.P15601566310729296915

namespace A390345

/-- `A004523(Δ[C(n+1, 4)]+1)` -/
def P15601566310729296915.Spec : Prop :=
  ∀ n, P15601566310729296915.a n = A390345 n

end A390345

/-!
# A390346: Lower (1/2)-midsequence of binomial(n,3) and (-1)*binomial(n,2); see Comments.

The programs for A390346, the canonical program `A390346.P6878981634822835949` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390346 has offset 0).

The definition of A390346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390346.P6878981634822835949

`floor(n*(n-1)*(n-5)/12)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390346

/-- `floor(n*(n-1)*(n-5)/12)` -/
def P6878981634822835949.Spec : Prop :=
  ∀ n, P6878981634822835949.a n = A390346 n

theorem P6878981634822835949.correct : P6878981634822835949.Spec := by
  intro n
  simp only [A390346]

end A390346

/-! ## A390346.P11413656568958657896

`A212772(n)-1`
-/

namespace A390346.P11413656568958657896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212772 n - 1

end

end A390346.P11413656568958657896

namespace A390346

/-- `A212772(n)-1` -/
def P11413656568958657896.Spec : Prop :=
  ∀ n, P11413656568958657896.a n = A390346 n

end A390346

/-! ## A390346.P5845984927438165262

`A175287(n)-A330133(n)`
-/

namespace A390346.P5845984927438165262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175287 n - A330133 n

end

end A390346.P5845984927438165262

namespace A390346

/-- `A175287(n)-A330133(n)` -/
def P5845984927438165262.Spec : Prop :=
  ∀ n, P5845984927438165262.a n = A390346 n

end A390346

/-! ## A390346.P10223906534364297586

`A011886(n)-(A390342(n)+A011894(n))`
-/

namespace A390346.P10223906534364297586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 n - (A390342 n + A011894 n)

end

end A390346.P10223906534364297586

namespace A390346

/-- `A011886(n)-(A390342(n)+A011894(n))` -/
def P10223906534364297586.Spec : Prop :=
  ∀ n, P10223906534364297586.a n = A390346 n

end A390346

/-! ## A390346.P13528250879305805132

`A023443(A212772(n))`
-/

namespace A390346.P13528250879305805132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A212772 n).toNat

end

end A390346.P13528250879305805132

namespace A390346

/-- `A023443(A212772(n))` -/
def P13528250879305805132.Spec : Prop :=
  ∀ n, P13528250879305805132.a n = A390346 n

end A390346

/-!
# A390347: Upper (1/2)-midsequence of binomial(n,3) and (-1)*binomial(n,2); see Comments.

The programs for A390347, the canonical program `A390347.P9545958900628826075` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390347 has offset 0).

The definition of A390347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390347.P9545958900628826075

`ceil(n*(n-1)*(n-5)/12)`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390347

/-- `ceil(n*(n-1)*(n-5)/12)` -/
def P9545958900628826075.Spec : Prop :=
  ∀ n, P9545958900628826075.a n = A390347 n

theorem P9545958900628826075.correct : P9545958900628826075.Spec := by
  intro n
  simp only [A390347]

end A390347

/-! ## A390347.P10844774536264225896

`A011894(n)-A011848(n)`
-/

namespace A390347.P10844774536264225896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011894 n - A011848 n

end

end A390347.P10844774536264225896

namespace A390347

/-- `A011894(n)-A011848(n)` -/
def P10844774536264225896.Spec : Prop :=
  ∀ n, P10844774536264225896.a n = A390347 n

end A390347

/-! ## A390347.P13463493915163540259

`A212772(n)-A152822(n)`
-/

namespace A390347.P13463493915163540259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212772 n - A152822 n

end

end A390347.P13463493915163540259

namespace A390347

/-- `A212772(n)-A152822(n)` -/
def P13463493915163540259.Spec : Prop :=
  ∀ n, P13463493915163540259.a n = A390347 n

end A390347

/-! ## A390347.P1327631392794948390

`A390343(n)-A005581(n)`
-/

namespace A390347.P1327631392794948390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390343 n - A005581 n

end

end A390347.P1327631392794948390

namespace A390347

/-- `A390343(n)-A005581(n)` -/
def P1327631392794948390.Spec : Prop :=
  ∀ n, P1327631392794948390.a n = A390347 n

end A390347

/-! ## A390347.P12171240385465234106

`A390342(n)-A161680(n)`
-/

namespace A390347.P12171240385465234106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390342 n - A161680 n

end

end A390347.P12171240385465234106

namespace A390347

/-- `A390342(n)-A161680(n)` -/
def P12171240385465234106.Spec : Prop :=
  ∀ n, P12171240385465234106.a n = A390347 n

end A390347

/-! ## A390347.P432568229700358001

`A011886(n)-(A011894(n+1)+A011894(n))`
-/

namespace A390347.P432568229700358001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011886 n - (A011894 (n + 1) + A011894 n)

end

end A390347.P432568229700358001

namespace A390347

/-- `A011886(n)-(A011894(n+1)+A011894(n))` -/
def P432568229700358001.Spec : Prop :=
  ∀ n, P432568229700358001.a n = A390347 n

end A390347

/-! ## A390347.P17807944180785500163

`A011842(2*n)-A011886(n+1)`
-/

namespace A390347.P17807944180785500163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011842 (2 * n) - A011886 (n + 1)

end

end A390347.P17807944180785500163

namespace A390347

/-- `A011842(2*n)-A011886(n+1)` -/
def P17807944180785500163.Spec : Prop :=
  ∀ n, P17807944180785500163.a n = A390347 n

end A390347

/-!
# A390348: Lower (1/2)-midsequence of Fibonacci numbers (A000045) and tribonacci numbers (A000213); see Comments.

The programs for A390348, the canonical program `A390348.P12405491163351906346` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390348 has offset 0).

The definition of A390348 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390348.P12405491163351906346

`A390349(n)-A079978(n)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A390348

/-- `A390349(n)-A079978(n)` -/
def P12405491163351906346.Spec : Prop :=
  ∀ n, P12405491163351906346.a n = A390348 n

theorem P12405491163351906346.correct : P12405491163351906346.Spec := by
  intro n
  simp only [A390348]

end A390348

/-! ## A390348.P7065998584641112863

`A000045(n)+A000213(n)-A390349(n)`
-/

namespace A390348.P7065998584641112863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A000213 n - A390349 n)

end

end A390348.P7065998584641112863

namespace A390348

/-- `A000045(n)+A000213(n)-A390349(n)` -/
def P7065998584641112863.Spec : Prop :=
  ∀ n, P7065998584641112863.a n = A390348 n

end A390348

/-! ## A390348.P12539590400308775619

`A390349(n)-A059841(A000045(n))`
-/

namespace A390348.P12539590400308775619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390349 n - A059841 (A000045 n).toNat

end

end A390348.P12539590400308775619

namespace A390348

/-- `A390349(n)-A059841(A000045(n))` -/
def P12539590400308775619.Spec : Prop :=
  ∀ n, P12539590400308775619.a n = A390348 n

end A390348

/-! ## A390348.P13387334169920762658

`A004526(A000213(n)+A000045(n))`
-/

namespace A390348.P13387334169920762658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A000213 n + A000045 n).toNat

end

end A390348.P13387334169920762658

namespace A390348

/-- `A004526(A000213(n)+A000045(n))` -/
def P13387334169920762658.Spec : Prop :=
  ∀ n, P13387334169920762658.a n = A390348 n

end A390348

/-! ## A390348.P17287642179939029279

`A135664(A102407(n+1))`
-/

namespace A390348.P17287642179939029279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135664 (A102407 (n + 1)).toNat

end

end A390348.P17287642179939029279

namespace A390348

/-- `A135664(A102407(n+1))` -/
def P17287642179939029279.Spec : Prop :=
  ∀ n, P17287642179939029279.a n = A390348 n

end A390348

/-!
# A390349: Upper (1/2)-midsequence of Fibonacci numbers (A000045) and tribonacci numbers (A000213); see Comments.

The programs for A390349, the canonical program `A390349.P13503297479383831927` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390349 has offset 0).

The definition of A390349 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 381 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390349.P13503297479383831927

`A192804(n)+A004695(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A390349

/-- `A192804(n)+A004695(n)` -/
def P13503297479383831927.Spec : Prop :=
  ∀ n, P13503297479383831927.a n = A390349 n

theorem P13503297479383831927.correct : P13503297479383831927.Spec := by
  intro n
  simp only [A390349]

end A390349

/-! ## A390349.P14884997601986318912

`A390348(n)+A079978(n)`
-/

namespace A390349.P14884997601986318912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390348 n + A079978 n

end

end A390349.P14884997601986318912

namespace A390349

/-- `A390348(n)+A079978(n)` -/
def P14884997601986318912.Spec : Prop :=
  ∀ n, P14884997601986318912.a n = A390349 n

theorem P14884997601986318912.correct : P14884997601986318912.Spec := by
  intro n
  simp only [A390349, Nat.add_sub_cancel, A390349.P14884997601986318912.a, A390349.P13503297479383831927.a, A004695, A004695.P8591097822717094344.a, A079978, A079978.P10382542118278163374.a, A192804, A192804.P8468806043529360004.a, A390348, A390348.P12405491163351906346.a, A000045, A000045.P11838749114346432762.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A390349

/-! ## A390349.P12699738912102638232

`A000045(n)+A000213(n)-A390348(n)`
-/

namespace A390349.P12699738912102638232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n + (A000213 n - A390348 n)

end

end A390349.P12699738912102638232

namespace A390349

/-- `A000045(n)+A000213(n)-A390348(n)` -/
def P12699738912102638232.Spec : Prop :=
  ∀ n, P12699738912102638232.a n = A390349 n

end A390349

/-! ## A390349.P17894946115027666608

`A065033(A000213(n)+A000045(n))`
-/

namespace A390349.P17894946115027666608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A000213 n + A000045 n).toNat

end

end A390349.P17894946115027666608

namespace A390349

/-- `A065033(A000213(n)+A000045(n))` -/
def P17894946115027666608.Spec : Prop :=
  ∀ n, P17894946115027666608.a n = A390349 n

end A390349

/-! ## A390349.P15506660500807419815

`A110654(A000213(n)+A000045(n))`
-/

namespace A390349.P15506660500807419815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A000213 n + A000045 n).toNat

end

end A390349.P15506660500807419815

namespace A390349

/-- `A110654(A000213(n)+A000045(n))` -/
def P15506660500807419815.Spec : Prop :=
  ∀ n, P15506660500807419815.a n = A390349 n

end A390349

/-!
# A390350: Lower (1/2)-midsequence of F(n) and F(n+4), where F = A000045 (Fibonacci numbers); see Comments.

The programs for A390350, the canonical program `A390350.P9626135015938352345` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390350 has offset 0).

The definition of A390350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390350.P9626135015938352345

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=1, a(1)=3, a(2)=4, a(3)=7, a(4)=12`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390350

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P9626135015938352345.Spec : Prop :=
  ∀ n, P9626135015938352345.a n = A390350 n

theorem P9626135015938352345.correct : P9626135015938352345.Spec := by
  intro n
  simp only [A390350]

end A390350

/-! ## A390350.P17785288984234431962

`a(n-1)+a(n-2)+(n%3)%2` with `a(0)=1, a(1)=3`
-/

namespace A390350.P17785288984234431962
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + (a (n - 2) + n % 3 % 2)

end

end A390350.P17785288984234431962

namespace A390350

/-- `a(n-1)+a(n-2)+(n%3)%2` -/
def P17785288984234431962.Spec : Prop :=
  ∀ n, (P17785288984234431962.a n : ℤ) = A390350 n

end A390350

/-! ## A390350.P2627603180648969013

`A390351(n)-A204418(n)`
-/

namespace A390350.P2627603180648969013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390351 n - A204418 n

end

end A390350.P2627603180648969013

namespace A390350

/-- `A390351(n)-A204418(n)` -/
def P2627603180648969013.Spec : Prop :=
  ∀ n, P2627603180648969013.a n = A390350 n

end A390350

/-! ## A390350.P9793842332753671591

`A173714(n+1)+A000045(n)`
-/

namespace A390350.P9793842332753671591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (n + 1) + A000045 n

end

end A390350.P9793842332753671591

namespace A390350

/-- `A173714(n+1)+A000045(n)` -/
def P9793842332753671591.Spec : Prop :=
  ∀ n, P9793842332753671591.a n = A390350 n

end A390350

/-! ## A390350.P11790728919645717160

`A355325(n)+A201864(n+1)`
-/

namespace A390350.P11790728919645717160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355325 n + A201864 (n + 1)

end

end A390350.P11790728919645717160

namespace A390350

/-- `A355325(n)+A201864(n+1)` -/
def P11790728919645717160.Spec : Prop :=
  ∀ n, P11790728919645717160.a n = A390350 n

end A390350

/-! ## A390350.P7245053959012646309

`A004695(n+2)+A000045(n+2)`
-/

namespace A390350.P7245053959012646309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004695 (n + 2) + A000045 (n + 2)

end

end A390350.P7245053959012646309

namespace A390350

/-- `A004695(n+2)+A000045(n+2)` -/
def P7245053959012646309.Spec : Prop :=
  ∀ n, P7245053959012646309.a n = A390350 n

end A390350

/-! ## A390350.P10955756223728389934

`A147997(n+2)+A000071(n+2)`
-/

namespace A390350.P10955756223728389934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147997 (n + 2) + A000071 (n + 2)

end

end A390350.P10955756223728389934

namespace A390350

/-- `A147997(n+2)+A000071(n+2)` -/
def P10955756223728389934.Spec : Prop :=
  ∀ n, P10955756223728389934.a n = A390350 n

end A390350

/-! ## A390350.P17977141608752570155

`A293633(n+2)+A293631(n+2)`
-/

namespace A390350.P17977141608752570155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293633 (n + 2) + A293631 (n + 2)

end

end A390350.P17977141608752570155

namespace A390350

/-- `A293633(n+2)+A293631(n+2)` -/
def P17977141608752570155.Spec : Prop :=
  ∀ n, P17977141608752570155.a n = A390350 n

end A390350

/-! ## A390350.P547673168744418944

`A173714(n+1)+A173714(n)-A004695(n+1)`
-/

namespace A390350.P547673168744418944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173714 (n + 1) + (A173714 n - A004695 (n + 1))

end

end A390350.P547673168744418944

namespace A390350

/-- `A173714(n+1)+A173714(n)-A004695(n+1)` -/
def P547673168744418944.Spec : Prop :=
  ∀ n, P547673168744418944.a n = A390350 n

end A390350

/-! ## A390350.P3620764946279424167

`floor(∑[a(n-1)+a(n-2)]/2)` with `a(0)=3, a(1)=3, a(2)=3`
-/

namespace A390350.P3620764946279424167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 3, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A390350.P3620764946279424167

namespace A390350

/-- `floor(∑[a(n-1)+a(n-2)]/2)` -/
def P3620764946279424167.Spec : Prop :=
  ∀ n, P3620764946279424167.a n = A390350 n

end A390350

/-! ## A390350.P12211717672746613316

`A164397(n+1)-(A178982(n)+A027976(n))`
-/

namespace A390350.P12211717672746613316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164397 (n + 1) - (A178982 n + A027976 n)

end

end A390350.P12211717672746613316

namespace A390350

/-- `A164397(n+1)-(A178982(n)+A027976(n))` -/
def P12211717672746613316.Spec : Prop :=
  ∀ n, P12211717672746613316.a n = A390350 n

end A390350

/-!
# A390351: Upper (1/2)-midsequence of F(n) and F(n+4), where F = A000045 (Fibonacci numbers); see Comments.

The programs for A390351, the canonical program `A390351.P12434344916922279500` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390351 has offset 0).

The definition of A390351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390351.P12434344916922279500

`a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=8, a(4)=12`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390351

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-4)-a(n-5)` -/
def P12434344916922279500.Spec : Prop :=
  ∀ n, P12434344916922279500.a n = A390351 n

theorem P12434344916922279500.correct : P12434344916922279500.Spec := by
  intro n
  simp only [A390351]

end A390351

/-! ## A390351.P4844841219238880194

`a(n-1)+a(n-2)-(n%3)%2` with `a(0)=2, a(1)=3`
-/

namespace A390351.P4844841219238880194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + (a (n - 2) - ((n % 3 % 2 : ℕ) : ℤ))

end

end A390351.P4844841219238880194

namespace A390351

/-- `a(n-1)+a(n-2)-(n%3)%2` -/
def P4844841219238880194.Spec : Prop :=
  ∀ n, P4844841219238880194.a n = A390351 n

end A390351

/-! ## A390351.P7846482722168881074

`a(n-1)-((a(n-2)-n)%3-a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A390351.P7846482722168881074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) - (Int.tmod (a (n - 2) - (n : ℤ)) 3 - a (n - 2))

end

end A390351.P7846482722168881074

namespace A390351

/-- `a(n-1)-((a(n-2)-n)%3-a(n-2))` -/
def P7846482722168881074.Spec : Prop :=
  ∀ n, P7846482722168881074.a n = A390351 n

end A390351

/-! ## A390351.P804349375344051109

`A257075(n)+A036605(n)`
-/

namespace A390351.P804349375344051109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257075 n + A036605 n

end

end A390351.P804349375344051109

namespace A390351

/-- `A257075(n)+A036605(n)` -/
def P804349375344051109.Spec : Prop :=
  ∀ n, P804349375344051109.a n = A390351 n

end A390351

/-! ## A390351.P16876494021250840235

`A355325(n)+A094686(n)`
-/

namespace A390351.P16876494021250840235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355325 n + A094686 n

end

end A390351.P16876494021250840235

namespace A390351

/-- `A355325(n)+A094686(n)` -/
def P16876494021250840235.Spec : Prop :=
  ∀ n, P16876494021250840235.a n = A390351 n

end A390351

/-! ## A390351.P17064926199207425841

`A390350(n)+A204418(n)`
-/

namespace A390351.P17064926199207425841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390350 n + A204418 n

end

end A390351.P17064926199207425841

namespace A390351

/-- `A390350(n)+A204418(n)` -/
def P17064926199207425841.Spec : Prop :=
  ∀ n, P17064926199207425841.a n = A390351 n

end A390351

/-! ## A390351.P14670512274999475895

`A173173(n+2)+A000045(n+2)`
-/

namespace A390351.P14670512274999475895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (n + 2) + A000045 (n + 2)

end

end A390351.P14670512274999475895

namespace A390351

/-- `A173173(n+2)+A000045(n+2)` -/
def P14670512274999475895.Spec : Prop :=
  ∀ n, P14670512274999475895.a n = A390351 n

end A390351

/-! ## A390351.P5506269375431680813

`A000204(n+2)+A000045(n)-A173714(n+1)`
-/

namespace A390351.P5506269375431680813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 2) + (A000045 n - A173714 (n + 1))

end

end A390351.P5506269375431680813

namespace A390351

/-- `A000204(n+2)+A000045(n)-A173714(n+1)` -/
def P5506269375431680813.Spec : Prop :=
  ∀ n, P5506269375431680813.a n = A390351 n

end A390351

/-! ## A390351.P3659173615717015308

`floor(∑[a(n-1)+a(n-2)]/2)` with `a(0)=4, a(1)=3, a(2)=3`
-/

namespace A390351.P3659173615717015308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 3, 3] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2⌋

end

end A390351.P3659173615717015308

namespace A390351

/-- `floor(∑[a(n-1)+a(n-2)]/2)` -/
def P3659173615717015308.Spec : Prop :=
  ∀ n, P3659173615717015308.a n = A390351 n

end A390351

/-!
# A390356: a(n) = A000045(A111035(n)).

The programs for A390356, there is no canonical definition to state claims against.
-/

/-! ## A390356.P4875374269246618076

`A000045(A111035(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A390356.P4875374269246618076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A111035 (n + 1)).toNat

end

end A390356.P4875374269246618076

/-!
# A390358: a(n) = Sum_{k=0..n} binomial(3*n+2*k,n-k).

The programs for A390358, there is no canonical definition to state claims against.
-/

/-! ## A390358.P17394588364337582315

`A016729(A005784(n)*A151897(n))`
-/

namespace A390358.P17394588364337582315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016729 (A005784 n * A151897 n).toNat

end

end A390358.P17394588364337582315

/-!
# A390363: Sum of the two greatest prime indices of n, or 0 if n is 1 or a prime number.

The programs for A390363, there is no canonical definition to state claims against.
-/

/-! ## A390363.P17975296367369859108

`A061395(A390449(n+1))`
-/

namespace A390363.P17975296367369859108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A390449 (n + 1)).toNat

end

end A390363.P17975296367369859108

/-! ## A390363.P8243514525256478084

`A390430(A051190(n+1))`
-/

namespace A390363.P8243514525256478084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390430 (A051190 (n + 1)).toNat

end

end A390363.P8243514525256478084

/-! ## A390363.P10946208718308126185

`A390430(A318576(n+1))`
-/

namespace A390363.P10946208718308126185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390430 (A318576 (n + 1)).toNat

end

end A390363.P10946208718308126185

/-! ## A390363.P2322501703900977657

`A390430(n+1)%A001401(A058352(n))`
-/

namespace A390363.P2322501703900977657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A390430 (n + 1)) (A001401 (A058352 n).toNat)

end

end A390363.P2322501703900977657

/-!
# A390364: Numbers whose prime indices are the first sums minus 1 of some multiset beginning with 1. Sorted list of all Heinz numbers of rows of A390308. Union of A390309.

The programs for A390364, there is no canonical definition to state claims against.
-/

/-! ## A390364.P12281875953150176565

`comp[A390365(n+1)-1]+1`
-/

namespace A390364.P12281875953150176565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390365 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A390364.P12281875953150176565

/-! ## A390364.P6147893922433643596

`∪[A107938(n+1), A325389(n+1)]`
-/

namespace A390364.P6147893922433643596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390364.P6147893922433643596

/-! ## A390364.P13814612343552384993

`∪[A201739(A154111(2*n+3)), A325389(n+1)]`
-/

namespace A390364.P13814612343552384993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201739 (A154111 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325389 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A390364.P13814612343552384993

/-!
# A390369: Triangle read by rows: T(n,0) = T(n,n) = 0 and T(n,k) = T(n, k-1) + T(n-1, k-1) + T(n-2, k-1) + 1 for 0 < k < n.

The programs for A390369, there is no canonical definition to state claims against.
-/

/-! ## A390369.P4281029708533405324

`A339187(A263791(n+1))`
-/

namespace A390369.P4281029708533405324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339187 (A263791 (n + 1)).toNat

end

end A390369.P4281029708533405324

/-! ## A390369.P2780671240302542325

`A093125(A209575(n+1))`
-/

namespace A390369.P2780671240302542325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093125 (A209575 (n + 1)).toNat

end

end A390369.P2780671240302542325

/-! ## A390369.P11747270602522684094

`A068063(A276999(n+1))`
-/

namespace A390369.P11747270602522684094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068063 (A276999 (n + 1)).toNat

end

end A390369.P11747270602522684094

/-! ## A390369.P16786387951470899718

`A337178(A209571(n+1))`
-/

namespace A390369.P16786387951470899718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337178 (A209571 (n + 1)).toNat

end

end A390369.P16786387951470899718

/-! ## A390369.P4035705919404430481

`A317243(A247306(n+1))`
-/

namespace A390369.P4035705919404430481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317243 (A247306 (n + 1)).toNat

end

end A390369.P4035705919404430481

/-!
# A390371: a(n) is the largest bi-unitary divisor of n that is an exponentially odd number (A268335).

The programs for A390371, the canonical program `A390371.P1751252496697479842` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390371 has offset 1).

The definition of A390371 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390371.P1751252496697479842

`A350390(A368886(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A390371

/-- `A350390(A368886(n+1))` -/
def P1751252496697479842.Spec : Prop :=
  ∀ n, P1751252496697479842.a n = A390371 (n + 1)

theorem P1751252496697479842.correct : P1751252496697479842.Spec := by
  intro n
  simp only [A390371, Nat.add_sub_cancel]

end A390371

/-! ## A390371.P6333589133236818547

`A055231(n+1)*A368170(n+1)`
-/

namespace A390371.P6333589133236818547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A368170 (n + 1)

end

end A390371.P6333589133236818547

namespace A390371

/-- `A055231(n+1)*A368170(n+1)` -/
def P6333589133236818547.Spec : Prop :=
  ∀ n, P6333589133236818547.a n = A390371 (n + 1)

end A390371

/-! ## A390371.P14525108199153300583

`A197863(n+1)/A368171(n+1)`
-/

namespace A390371.P14525108199153300583
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A197863 (n + 1) : ℚ) / (A368171 (n + 1) : ℚ)

end

end A390371.P14525108199153300583

namespace A390371

/-- `A197863(n+1)/A368171(n+1)` -/
def P14525108199153300583.Spec : Prop :=
  ∀ n, P14525108199153300583.a n = (A390371 (n + 1) : ℚ)

end A390371

/-! ## A390371.P7721316870156814658

`A350390(n+1)/A329376(n+1)`
-/

namespace A390371.P7721316870156814658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350390 (n + 1) : ℚ) / (A329376 (n + 1) : ℚ)

end

end A390371.P7721316870156814658

namespace A390371

/-- `A350390(n+1)/A329376(n+1)` -/
def P7721316870156814658.Spec : Prop :=
  ∀ n, P7721316870156814658.a n = (A390371 (n + 1) : ℚ)

end A390371

/-! ## A390371.P13406942636383363533

`A366765(n+1)/A336643(n+1)`
-/

namespace A390371.P13406942636383363533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366765 (n + 1) : ℚ) / (A336643 (n + 1) : ℚ)

end

end A390371.P13406942636383363533

namespace A390371

/-- `A366765(n+1)/A336643(n+1)` -/
def P13406942636383363533.Spec : Prop :=
  ∀ n, P13406942636383363533.a n = (A390371 (n + 1) : ℚ)

end A390371

/-! ## A390371.P10572941625791350547

`gcd(A011262(n+1), A368886(n+1))`
-/

namespace A390371.P10572941625791350547
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A011262 (n + 1)) (A368886 (n + 1))

end

end A390371.P10572941625791350547

namespace A390371

/-- `gcd(A011262(n+1), A368886(n+1))` -/
def P10572941625791350547.Spec : Prop :=
  ∀ n, (P10572941625791350547.a n : ℤ) = A390371 (n + 1)

end A390371

/-! ## A390371.P11511044110181024022

`lcm(A071975(n+1), A368170(n+1))`
-/

namespace A390371.P11511044110181024022
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A071975 (n + 1)) (A368170 (n + 1))

end

end A390371.P11511044110181024022

namespace A390371

/-- `lcm(A071975(n+1), A368170(n+1))` -/
def P11511044110181024022.Spec : Prop :=
  ∀ n, (P11511044110181024022.a n : ℤ) = A390371 (n + 1)

end A390371

/-! ## A390371.P12993135629336140696

`A356191((n+1)/A336643(n+1)²)`
-/

namespace A390371.P12993135629336140696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A336643 (n + 1) ^ 2 : ℚ))).toNat

end

end A390371.P12993135629336140696

namespace A390371

/-- `A356191((n+1)/A336643(n+1)²)` -/
def P12993135629336140696.Spec : Prop :=
  ∀ n, P12993135629336140696.a n = A390371 (n + 1)

end A390371

/-! ## A390371.P14639310285914846293

`A055231(n+1)*A057521(A350390(n+1))`
-/

namespace A390371.P14639310285914846293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055231 (n + 1) * A057521 (A350390 (n + 1)).toNat

end

end A390371.P14639310285914846293

namespace A390371

/-- `A055231(n+1)*A057521(A350390(n+1))` -/
def P14639310285914846293.Spec : Prop :=
  ∀ n, P14639310285914846293.a n = A390371 (n + 1)

end A390371

/-! ## A390371.P11954296061582463432

`A356191((n+1)/A011262(A336643(n+1)))`
-/

namespace A390371.P11954296061582463432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A011262 (A336643 (n + 1)).toNat : ℚ))).toNat

end

end A390371.P11954296061582463432

namespace A390371

/-- `A356191((n+1)/A011262(A336643(n+1)))` -/
def P11954296061582463432.Spec : Prop :=
  ∀ n, P11954296061582463432.a n = A390371 (n + 1)

end A390371

/-! ## A390371.P186857961846530466

`A356191(A350390(n+1)/A336643(n+1))`
-/

namespace A390371.P186857961846530466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356191 (SequenceMachineLib.roundAway ((A350390 (n + 1) : ℚ) / (A336643 (n + 1) : ℚ))).toNat

end

end A390371.P186857961846530466

namespace A390371

/-- `A356191(A350390(n+1)/A336643(n+1))` -/
def P186857961846530466.Spec : Prop :=
  ∀ n, P186857961846530466.a n = A390371 (n + 1)

end A390371

/-!
# A390373: Expansion of e.g.f. (1/2) * (exp(1/(1 - x)^2 - 1) + 1).

The programs for A390373, there is no canonical definition to state claims against.
-/

/-! ## A390373.P5639941370588703977

`round(A136658(n)/2)`
-/

namespace A390373.P5639941370588703977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A136658 n : ℚ) / 2)

end

end A390373.P5639941370588703977

/-! ## A390373.P12123111255406654314

`A136658(A028310(n))/2`
-/

namespace A390373.P12123111255406654314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136658 (A028310 n).toNat : ℚ) / 2

end

end A390373.P12123111255406654314

/-! ## A390373.P6987788522235006967

`A136658(n)/A036453(n+1)`
-/

namespace A390373.P6987788522235006967
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136658 n : ℚ) / (A036453 (n + 1) : ℚ)

end

end A390373.P6987788522235006967

/-! ## A390373.P3734623011630283261

`A136658(n)/A036450(A000523(n+3))`
-/

namespace A390373.P3734623011630283261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136658 n : ℚ) / (A036450 (A000523 (n + 3)).toNat : ℚ)

end

end A390373.P3734623011630283261

/-! ## A390373.P8337159887726379547

`A136658(n)/A036450(A057526(3*(n+1)))`
-/

namespace A390373.P8337159887726379547
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136658 n : ℚ) / (A036450 (A057526 (3 * (n + 1))).toNat : ℚ)

end

end A390373.P8337159887726379547

/-!
# A390374: Expansion of e.g.f. (1/3) * (exp(1/(1 - x)^3 - 1) + 2).

The programs for A390374, there is no canonical definition to state claims against.
-/

/-! ## A390374.P13338404541595305632

`ceil(A202826(n)/3)`
-/

namespace A390374.P13338404541595305632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A202826 n : ℚ) / 3⌉

end

end A390374.P13338404541595305632

/-!
# A390379: Powers k^m, 2 <= m <= 3, with k neither squarefree nor squareful.

The programs for A390379, the canonical program `A390379.P7564342032490603690` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390379 has offset 1).

The definition of A390379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A390379.P7564342032490603690

`∪[A389947(n+1), A392564(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A390379

/-- `∪[A389947(n+1), A392564(n+1)]` -/
def P7564342032490603690.Spec : Prop :=
  ∀ n, (P7564342032490603690.a n : ℤ) = A390379 (n + 1)

theorem P7564342032490603690.correct : P7564342032490603690.Spec := by
  intro n
  simp only [A390379, Nat.add_sub_cancel]

end A390379

/-! ## A390379.P1471244120308539927

`∩[A001597(n+1), A391115(n+1)]`
-/

namespace A390379.P1471244120308539927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390379.P1471244120308539927

namespace A390379

/-- `∩[A001597(n+1), A391115(n+1)]` -/
def P1471244120308539927.Spec : Prop :=
  ∀ n, (P1471244120308539927.a n : ℤ) = A390379 (n + 1)

end A390379

/-! ## A390379.P992812363993285222

`∩[A002760(n+1), A391115(n+1)]`
-/

namespace A390379.P992812363993285222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390379.P992812363993285222

namespace A390379

/-- `∩[A002760(n+1), A391115(n+1)]` -/
def P992812363993285222.Spec : Prop :=
  ∀ n, (P992812363993285222.a n : ℤ) = A390379 (n + 1)

end A390379

/-! ## A390379.P12052681998873000027

`∩[A093771(n+1), A391115(n+1)]`
-/

namespace A390379.P12052681998873000027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390379.P12052681998873000027

namespace A390379

/-- `∩[A093771(n+1), A391115(n+1)]` -/
def P12052681998873000027.Spec : Prop :=
  ∀ n, (P12052681998873000027.a n : ℤ) = A390379 (n + 1)

end A390379

/-! ## A390379.P7966108378606029178

`∩[A131605(n+1), A391115(n+1)]`
-/

namespace A390379.P7966108378606029178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131605 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390379.P7966108378606029178

namespace A390379

/-- `∩[A131605(n+1), A391115(n+1)]` -/
def P7966108378606029178.Spec : Prop :=
  ∀ n, (P7966108378606029178.a n : ℤ) = A390379 (n + 1)

end A390379

/-! ## A390379.P7586185804579496924

`∩[A259183(n+1), A391115(n+1)]`
-/

namespace A390379.P7586185804579496924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259183 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390379.P7586185804579496924

namespace A390379

/-- `∩[A259183(n+1), A391115(n+1)]` -/
def P7586185804579496924.Spec : Prop :=
  ∀ n, (P7586185804579496924.a n : ℤ) = A390379 (n + 1)

end A390379

/-!
# A390380: Integers k which cannot be written in the form x^2 + y^2 - z^2, where x, y, z are integers and x^2, y^2, z^2 <= k.

The programs for A390380, there is no canonical definition to state claims against.
-/

/-! ## A390380.P9187930693022348243

`comp[A393168(n+1)]`
-/

namespace A390380.P9187930693022348243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A390380.P9187930693022348243

/-!
# A390381: Powers k^m, m > 3, with k neither squarefree nor squareful.

The programs for A390381, there is no canonical definition to state claims against.
-/

/-! ## A390381.P7423733023917953322

`∩[A076468(n+1), A388549(n+1)]`
-/

namespace A390381.P7423733023917953322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390381.P7423733023917953322

/-! ## A390381.P13234679077879721334

`∩[A372841(n+1), A388549(n+1)]`
-/

namespace A390381.P13234679077879721334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390381.P13234679077879721334

/-! ## A390381.P15359312641581012283

`∩[A036967(n+1), A388549(n+1)]`
-/

namespace A390381.P15359312641581012283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388549 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390381.P15359312641581012283

/-! ## A390381.P8607053328474117633

`∩[A036967(n+1), A392098(n+1)]`
-/

namespace A390381.P8607053328474117633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390381.P8607053328474117633

/-! ## A390381.P60105900813266829

`∩[A076468(n+1), A392098(n+1)]`
-/

namespace A390381.P60105900813266829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390381.P60105900813266829

/-! ## A390381.P602296668678163459

`∩[A372841(n+1), A392098(n+1)]`
-/

namespace A390381.P602296668678163459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392098 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390381.P602296668678163459

/-! ## A390381.P9425158653251218326

`∩[A036967(n+1), A386762(n+1)]`
-/

namespace A390381.P9425158653251218326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386762 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A390381.P9425158653251218326

/-!
# A390382: Feedback vertex set (decycling) number of the n-hypercube graph.

The programs for A390382, there is no canonical definition to state claims against.
-/

/-! ## A390382.P15062634376646094247

`ogf((x^2+x^3+2x^5)/(1-2x))`
-/

namespace A390382.P15062634376646094247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, 1, 0, 2] [1, -2] n

end

end A390382.P15062634376646094247

/-! ## A390382.P4883084047948649576

`floor(record[A112591(n+1)]/9)`
-/

namespace A390382.P4883084047948649576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112591 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 9⌋

end

end A390382.P4883084047948649576

/-! ## A390382.P11334998253478702831

`ceil((A108796(2*(n+1))+1)/sqrt(11))-1`
-/

namespace A390382.P11334998253478702831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A108796 (2 * (n + 1)) + 1 : ℝ) / Real.sqrt (11 : ℝ)⌉ - 1

end

end A390382.P11334998253478702831

/-! ## A390382.P13852464862179217970

`round(2^(n-1))-∏[A124766(3*n+1)]`
-/

namespace A390382.P13852464862179217970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124766 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)) - ∏ j ∈ Finset.range (n + 1), f1 j

end

end A390382.P13852464862179217970

/-! ## A390382.P18062758183825414581

`A023566(A072266(n))`
-/

namespace A390382.P18062758183825414581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023566 (A072266 n).toNat

end

end A390382.P18062758183825414581

/-!
# A390392: Smallest k for which the number of divisors d of k such that d == -d^(k/d) (mod k) is equal to n, or -1 if no such k exists.

The programs for A390392, there is no canonical definition to state claims against.
-/

/-! ## A390392.P13727003486495397390

`A325986(A034906(n+1))`
-/

namespace A390392.P13727003486495397390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325986 (A034906 (n + 1)).toNat

end

end A390392.P13727003486495397390

/-!
# A390393: a(n) is the maximum size of a subset A of {1,...,n} such that Sum_{k in S} 1/k != 1 for all subsets S of A.

The programs for A390393, there is no canonical definition to state claims against.
-/

/-! ## A390393.P17039089579052374205

`A278163(A008619(n*A005704(n)))`
-/

namespace A390393.P17039089579052374205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278163 (A008619 ((n : ℤ) * A005704 n).toNat).toNat

end

end A390393.P17039089579052374205

/-!
# A390394: a(n) is the maximum size of a subset A of {1,...,n} such that there are no solutions to 1/a = 1/b_1 + ... + 1/b_k with distinct a, b_1, ..., b_k in A.

The programs for A390394, there is no canonical definition to state claims against.
-/

/-! ## A390394.P8404159888107320315

`∑[A073345(n)^A174903(n+1)]`
-/

namespace A390394.P8404159888107320315
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073345 n : ℚ) ^ (A174903 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390394.P8404159888107320315

/-! ## A390394.P11967648325266394705

`∑[A239657(2*n+1)^A239657(n+1)]`
-/

namespace A390394.P11967648325266394705
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A239657 (2 * n + 1) : ℚ) ^ (A239657 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390394.P11967648325266394705

/-!
# A390395: a(n) is the maximum size of a subset S of {1,...,n} such that there are no solutions to 1/a = 1/b + 1/c for distinct a,b,c in S.

The programs for A390395, there is no canonical definition to state claims against.
-/

/-! ## A390395.P14318012930843438306

`∑[A010060(A302784(n+1)+1)]`
-/

namespace A390395.P14318012930843438306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A302784 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A390395.P14318012930843438306

/-!
# A390397: Numbers whose sum of prime divisors equals the sum of square divisors.

The programs for A390397, there is no canonical definition to state claims against.
-/

/-! ## A390397.P3598169356203463135

`A364348(A216022(n+1)+A078057(n))`
-/

namespace A390397.P3598169356203463135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364348 (A216022 (n + 1) + A078057 n).toNat

end

end A390397.P3598169356203463135

/-!
# A390398: a(2) = 4; for n >= 3, a(n) = a(n-1)*(a(n-1) - 1)/2 + 2.

The programs for A390398, the canonical program `A390398.P6805147429816145836` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A390398 has offset 2).

The definition of A390398 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A390398.P6805147429816145836

`a(n-1)*(a(n-1)-1)/2+2` with `a(0)=4`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A390398

/-- `a(n-1)*(a(n-1)-1)/2+2` -/
def P6805147429816145836.Spec : Prop :=
  ∀ n, P6805147429816145836.a n = (A390398 (n + 2) : ℚ)

end A390398

/-! ## A390398.P14333916084165960622

`C(a(n-1), 2)+2` with `a(0)=4`
-/

namespace A390398.P14333916084165960622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Nat.choose (a (n - 1)) 2 + 2

end

end A390398.P14333916084165960622

namespace A390398

/-- `C(a(n-1), 2)+2` -/
def P14333916084165960622.Spec : Prop :=
  ∀ n, (P14333916084165960622.a n : ℤ) = A390398 (n + 2)

end A390398

/-!
# A390399: Number of increasing interval-labeled restricted ternary trees on the label set {0,1,...,n}.

The programs for A390399, there is no canonical definition to state claims against.
-/

/-! ## A390399.P12104038453094343556

`A229302(A213228(n)+A032766(n))`
-/

namespace A390399.P12104038453094343556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229302 (A213228 n + A032766 n).toNat

end

end A390399.P12104038453094343556

/-! ## A390399.P5085502393415185119

`A063255(n+1)-A078650(A226061(n+3))`
-/

namespace A390399.P5085502393415185119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063255 (n + 1) - A078650 (A226061 (n + 3)).toNat

end

end A390399.P5085502393415185119

