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
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A054600: Sum_{d|n, d odd} d*2^(n/d).

The programs for A054600, the canonical program `A054600.P7010466256528359478` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054600 has offset 0).

The definition of A054600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054600.P6137560789645751387

`2*A054601(n)`
-/

namespace A054600.P6137560789645751387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054601 n

end

end A054600.P6137560789645751387

namespace A054600

/-- `2*A054601(n)` -/
def P6137560789645751387.Spec : Prop :=
  ∀ n, P6137560789645751387.a n = A054600 n

end A054600

/-! ## A054600.P267314038891670860

`A054601(A005843(n)/2)+A054601(n)`
-/

namespace A054600.P267314038891670860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054601 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A054601 n

end

end A054600.P267314038891670860

namespace A054600

/-- `A054601(A005843(n)/2)+A054601(n)` -/
def P267314038891670860.Spec : Prop :=
  ∀ n, P267314038891670860.a n = A054600 n

end A054600

/-! ## A054600.P7010466256528359478

`2*(A054599(n)-A054598(A142150(n)))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054600

/-- `2*(A054599(n)-A054598(A142150(n)))` -/
def P7010466256528359478.Spec : Prop :=
  ∀ n, P7010466256528359478.a n = A054600 n

theorem P7010466256528359478.correct : P7010466256528359478.Spec := by
  intro n
  simp only [A054600]

end A054600

/-! ## A054600.P7094285024060666595

`A054598(n)-2*A054598(A142150(n))`
-/

namespace A054600.P7094285024060666595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054598 n - 2 * A054598 (A142150 n).toNat

end

end A054600.P7094285024060666595

namespace A054600

/-- `A054598(n)-2*A054598(A142150(n))` -/
def P7094285024060666595.Spec : Prop :=
  ∀ n, P7094285024060666595.a n = A054600 n

end A054600

/-! ## A054600.P15475745462010748652

`A054601(A005843(n)-n)+A054601(n)`
-/

namespace A054600.P15475745462010748652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054601 (A005843 n - (n : ℤ)).toNat + A054601 n

end

end A054600.P15475745462010748652

namespace A054600

/-- `A054601(A005843(n)-n)+A054601(n)` -/
def P15475745462010748652.Spec : Prop :=
  ∀ n, P15475745462010748652.a n = A054600 n

end A054600

/-! ## A054600.P3626144472500072340

`A054601(n)+A054601(n)%A002714(n)`
-/

namespace A054600.P3626144472500072340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054601 n + Int.tmod (A054601 n) (A002714 n)

end

end A054600.P3626144472500072340

namespace A054600

/-- `A054601(n)+A054601(n)%A002714(n)` -/
def P3626144472500072340.Spec : Prop :=
  ∀ n, P3626144472500072340.a n = A054600 n

end A054600

/-! ## A054600.P11334094543803364850

`A054601(n)+record[A054601(A059905(n))]`
-/

namespace A054600.P11334094543803364850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054601 (A059905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054601 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054600.P11334094543803364850

namespace A054600

/-- `A054601(n)+record[A054601(A059905(n))]` -/
def P11334094543803364850.Spec : Prop :=
  ∀ n, P11334094543803364850.a n = A054600 n

end A054600

/-!
# A054601: a(n) = Sum_{d|n, d odd} d*2^(n/d - 1), a(0)=0.

The programs for A054601, the canonical program `A054601.P14114910227536714151` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054601 has offset 0).

The definition of A054601 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 334 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054601.P14114910227536714151

`A054599(n)-A054598(n-gcd(n, ∑[n]))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054601

/-- `A054599(n)-A054598(n-gcd(n, ∑[n]))` -/
def P14114910227536714151.Spec : Prop :=
  ∀ n, P14114910227536714151.a n = A054601 n

theorem P14114910227536714151.correct : P14114910227536714151.Spec := by
  intro n
  simp only [A054601]

end A054601

/-! ## A054601.P17963240704999819944

`A054599(n)-A054598(A142150(n))`
-/

namespace A054601.P17963240704999819944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054599 n - A054598 (A142150 n).toNat

end

end A054601.P17963240704999819944

namespace A054601

/-- `A054599(n)-A054598(A142150(n))` -/
def P17963240704999819944.Spec : Prop :=
  ∀ n, P17963240704999819944.a n = A054601 n

end A054601

/-! ## A054601.P8816623691990965206

`∑{d}[n, #/2*A000031(#)]-A054598(A142150(n))`
-/

namespace A054601.P8816623691990965206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℚ) / 2 * (A000031 d : ℚ) - (A054598 (A142150 n).toNat : ℚ)

end

end A054601.P8816623691990965206

namespace A054601

/-- `∑{d}[n, #/2*A000031(#)]-A054598(A142150(n))` -/
def P8816623691990965206.Spec : Prop :=
  ∀ n, P8816623691990965206.a n = (A054601 n : ℚ)

end A054601

/-! ## A054601.P9291660017486228767

`A054600(n)/2`
-/

namespace A054601.P9291660017486228767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054600 n : ℚ) / 2

end

end A054601.P9291660017486228767

namespace A054601

/-- `A054600(n)/2` -/
def P9291660017486228767.Spec : Prop :=
  ∀ n, P9291660017486228767.a n = (A054601 n : ℚ)

end A054601

/-! ## A054601.P721973347042440000

`A054598(n)/2-A054598(A142150(n))`
-/

namespace A054601.P721973347042440000
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054598 n : ℚ) / 2 - (A054598 (A142150 n).toNat : ℚ)

end

end A054601.P721973347042440000

namespace A054601

/-- `A054598(n)/2-A054598(A142150(n))` -/
def P721973347042440000.Spec : Prop :=
  ∀ n, P721973347042440000.a n = (A054601 n : ℚ)

end A054601

/-!
# A054602: a(n) = Sum_{d|3} phi(d)*n^(3/d).

The programs for A054602, the canonical program `A054602.P284734914928046851` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054602 has offset 0).

The definition of A054602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054602.P284734914928046851

`n^3+2*n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054602

/-- `n^3+2*n` -/
def P284734914928046851.Spec : Prop :=
  ∀ n, (P284734914928046851.a n : ℤ) = A054602 n

theorem P284734914928046851.correct : P284734914928046851.Spec := by
  intro n
  simp only [A054602]

end A054602

/-! ## A054602.P17511868349821503647

`3*A006527(n)`
-/

namespace A054602.P17511868349821503647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A006527 n

end

end A054602.P17511868349821503647

namespace A054602

/-- `3*A006527(n)` -/
def P17511868349821503647.Spec : Prop :=
  ∀ n, P17511868349821503647.a n = A054602 n

end A054602

/-! ## A054602.P71943094819732332

`Δ[(C(n, 2)+1)²]`
-/

namespace A054602.P71943094819732332
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A054602.P71943094819732332

namespace A054602

/-- `Δ[(C(n, 2)+1)²]` -/
def P71943094819732332.Spec : Prop :=
  ∀ n, P71943094819732332.a n = A054602 n

end A054602

/-! ## A054602.P15939313120075531666

`lcm(3, n*(n²+2))`
-/

namespace A054602.P15939313120075531666
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n * (n ^ 2 + 2))

end

end A054602.P15939313120075531666

namespace A054602

/-- `lcm(3, n*(n²+2))` -/
def P15939313120075531666.Spec : Prop :=
  ∀ n, (P15939313120075531666.a n : ℤ) = A054602 n

end A054602

/-! ## A054602.P4603954798891861593

`floor(n/acot(n²+2))`
-/

namespace A054602.P4603954798891861593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (n ^ 2 + 2 : ℝ)⌋

end

end A054602.P4603954798891861593

namespace A054602

/-- `floor(n/acot(n²+2))` -/
def P4603954798891861593.Spec : Prop :=
  ∀ n, P4603954798891861593.a n = A054602 n

end A054602

/-! ## A054602.P12017316847823325032

`round(n/acot(n²+2))`
-/

namespace A054602.P12017316847823325032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n ^ 2 + 2 : ℝ))

end

end A054602.P12017316847823325032

namespace A054602

/-- `round(n/acot(n²+2))` -/
def P12017316847823325032.Spec : Prop :=
  ∀ n, P12017316847823325032.a n = A054602 n

end A054602

/-! ## A054602.P37691219453656391

`∑[∑[a(n-1)+6]]` with `a(0)=0, a(1)=3, a(2)=6`
-/

namespace A054602.P37691219453656391
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 6] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054602.P37691219453656391

namespace A054602

/-- `∑[∑[a(n-1)+6]]` -/
def P37691219453656391.Spec : Prop :=
  ∀ n, (P37691219453656391.a n : ℤ) = A054602 n

end A054602

/-! ## A054602.P10728241673675790516

`n*A059100(n)`
-/

namespace A054602.P10728241673675790516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A059100 n

end

end A054602.P10728241673675790516

namespace A054602

/-- `n*A059100(n)` -/
def P10728241673675790516.Spec : Prop :=
  ∀ n, P10728241673675790516.a n = A054602 n

end A054602

/-!
# A054603: a(n) = Sum_{d|4} phi(d)*n^(4/d).

The programs for A054603, the canonical program `A054603.P10637400569586555311` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054603 has offset 0).

The definition of A054603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054603.P10637400569586555311

`n^4+n²+2*n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054603

/-- `n^4+n²+2*n` -/
def P10637400569586555311.Spec : Prop :=
  ∀ n, (P10637400569586555311.a n : ℤ) = A054603 n

theorem P10637400569586555311.correct : P10637400569586555311.Spec := by
  intro n
  simp only [A054603]

end A054603

/-! ## A054603.P4154582693961752228

`xor(1, n^4+(n+1)²)`
-/

namespace A054603.P4154582693961752228
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n ^ 4 + (n + 1) ^ 2)

end

end A054603.P4154582693961752228

namespace A054603

/-- `xor(1, n^4+(n+1)²)` -/
def P4154582693961752228.Spec : Prop :=
  ∀ n, (P4154582693961752228.a n : ℤ) = A054603 n

end A054603

/-! ## A054603.P16838133733434178192

`floor(∑[a(n-1)+4]*∑[n])` with `a(0)=4, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A054603.P16838133733434178192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 0] fun n f1 =>
  f1 (n - 1) + 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A054603.P16838133733434178192

namespace A054603

/-- `floor(∑[a(n-1)+4]*∑[n])` -/
def P16838133733434178192.Spec : Prop :=
  ∀ n, (P16838133733434178192.a n : ℤ) = A054603 n

end A054603

/-! ## A054603.P12774063590225614518

`∑[2*(A212133(n)+n)]`
-/

namespace A054603.P12774063590225614518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A212133 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054603.P12774063590225614518

namespace A054603

/-- `∑[2*(A212133(n)+n)]` -/
def P12774063590225614518.Spec : Prop :=
  ∀ n, P12774063590225614518.a n = A054603 n

end A054603

/-!
# A054604: a(n) = Sum_{d|5} phi(d)*n^(5/d).

The programs for A054604, the canonical program `A054604.P9632643687677748139` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054604 has offset 0).

The definition of A054604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054604.P9632643687677748139

`n^5+4*n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054604

/-- `n^5+4*n` -/
def P9632643687677748139.Spec : Prop :=
  ∀ n, (P9632643687677748139.a n : ℤ) = A054604 n

theorem P9632643687677748139.correct : P9632643687677748139.Spec := by
  intro n
  simp only [A054604]

end A054604

/-! ## A054604.P9407628939577160811

`5*A054620(n)`
-/

namespace A054604.P9407628939577160811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A054620 n

end

end A054604.P9407628939577160811

namespace A054604

/-- `5*A054620(n)` -/
def P9407628939577160811.Spec : Prop :=
  ∀ n, P9407628939577160811.a n = A054604 n

end A054604

/-! ## A054604.P6239721731201185069

`n*A057781(n)`
-/

namespace A054604.P6239721731201185069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057781 n

end

end A054604.P6239721731201185069

namespace A054604

/-- `n*A057781(n)` -/
def P6239721731201185069.Spec : Prop :=
  ∀ n, P6239721731201185069.a n = A054604 n

end A054604

/-! ## A054604.P1188745721029200220

`n*(A002523(n)+3)`
-/

namespace A054604.P1188745721029200220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002523 n + 3)

end

end A054604.P1188745721029200220

namespace A054604

/-- `n*(A002523(n)+3)` -/
def P1188745721029200220.Spec : Prop :=
  ∀ n, P1188745721029200220.a n = A054604 n

end A054604

/-! ## A054604.P16402069793830141374

`n*(A000583(n)+4)`
-/

namespace A054604.P16402069793830141374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000583 n + 4)

end

end A054604.P16402069793830141374

namespace A054604

/-- `n*(A000583(n)+4)` -/
def P16402069793830141374.Spec : Prop :=
  ∀ n, P16402069793830141374.a n = A054604 n

end A054604

/-! ## A054604.P18275771153856870509

`n*(5-A024002(n))`
-/

namespace A054604.P18275771153856870509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (5 - A024002 n)

end

end A054604.P18275771153856870509

namespace A054604

/-- `n*(5-A024002(n))` -/
def P18275771153856870509.Spec : Prop :=
  ∀ n, P18275771153856870509.a n = A054604 n

end A054604

/-! ## A054604.P2062174578111570287

`5*(A208536(n+1)+n)`
-/

namespace A054604.P2062174578111570287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A208536 (n + 1) + (n : ℤ))

end

end A054604.P2062174578111570287

namespace A054604

/-- `5*(A208536(n+1)+n)` -/
def P2062174578111570287.Spec : Prop :=
  ∀ n, P2062174578111570287.a n = A054604 n

end A054604

/-! ## A054604.P2734706535126946990

`lcm(A057781(n), A195161(n))`
-/

namespace A054604.P2734706535126946990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057781 n) (A195161 n)

end

end A054604.P2734706535126946990

namespace A054604

/-- `lcm(A057781(n), A195161(n))` -/
def P2734706535126946990.Spec : Prop :=
  ∀ n, (P2734706535126946990.a n : ℤ) = A054604 n

end A054604

/-! ## A054604.P17901246098443110807

`n*A087475(n²)`
-/

namespace A054604.P17901246098443110807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A087475 (n ^ 2)

end

end A054604.P17901246098443110807

namespace A054604

/-- `n*A087475(n²)` -/
def P17901246098443110807.Spec : Prop :=
  ∀ n, P17901246098443110807.a n = A054604 n

end A054604

/-! ## A054604.P13923962633973853671

`A195161(n)*A261327(n²)`
-/

namespace A054604.P13923962633973853671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195161 n * A261327 (n ^ 2)

end

end A054604.P13923962633973853671

namespace A054604

/-- `A195161(n)*A261327(n²)` -/
def P13923962633973853671.Spec : Prop :=
  ∀ n, P13923962633973853671.a n = A054604 n

end A054604

/-!
# A054605: a(n) = Sum_{d|6} phi(d)*n^(6/d).

The programs for A054605, the canonical program `A054605.P3836599418846571096` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054605 has offset 0).

The definition of A054605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054605.P3836599418846571096

`n^6+n^3+2*n²+2*n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054605

/-- `n^6+n^3+2*n²+2*n` -/
def P3836599418846571096.Spec : Prop :=
  ∀ n, (P3836599418846571096.a n : ℤ) = A054605 n

theorem P3836599418846571096.correct : P3836599418846571096.Spec := by
  intro n
  simp only [A054605]

end A054605

/-! ## A054605.P3462740591932211876

`6*A006565(n)`
-/

namespace A054605.P3462740591932211876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006565 n

end

end A054605.P3462740591932211876

namespace A054605

/-- `6*A006565(n)` -/
def P3462740591932211876.Spec : Prop :=
  ∀ n, P3462740591932211876.a n = A054605 n

end A054605

/-! ## A054605.P4210657749241813013

`6*(A000125(n²)+C(n, 3)-1)`
-/

namespace A054605.P4210657749241813013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A000125 (n ^ 2) + ((Nat.choose n 3 : ℤ) - 1))

end

end A054605.P4210657749241813013

namespace A054605

/-- `6*(A000125(n²)+C(n, 3)-1)` -/
def P4210657749241813013.Spec : Prop :=
  ∀ n, P4210657749241813013.a n = A054605 n

end A054605

/-! ## A054605.P2269495790245123993

`A002378(A002378(n))*A160457(n)`
-/

namespace A054605.P2269495790245123993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A002378 n).toNat * A160457 n

end

end A054605.P2269495790245123993

namespace A054605

/-- `A002378(A002378(n))*A160457(n)` -/
def P2269495790245123993.Spec : Prop :=
  ∀ n, P2269495790245123993.a n = A054605 n

end A054605

/-! ## A054605.P14879536562892168966

`6*(A004006(n²)+A004006(n)-A000217(n))`
-/

namespace A054605.P14879536562892168966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (A004006 (n ^ 2) + (A004006 n - A000217 n))

end

end A054605.P14879536562892168966

namespace A054605

/-- `6*(A004006(n²)+A004006(n)-A000217(n))` -/
def P14879536562892168966.Spec : Prop :=
  ∀ n, P14879536562892168966.a n = A054605 n

end A054605

/-! ## A054605.P1241404042937800081

`A185651(eq[6, A144328(n+1)])`
-/

namespace A054605.P1241404042937800081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054605.P1241404042937800081

namespace A054605

/-- `A185651(eq[6, A144328(n+1)])` -/
def P1241404042937800081.Spec : Prop :=
  ∀ n, P1241404042937800081.a n = A054605 n

end A054605

/-!
# A054606: a(n) = Sum_{d|7} phi(d)*n^(7/d).

The programs for A054606, the canonical program `A054606.P1326187533532965026` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054606 has offset 0).

The definition of A054606 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054606.P1326187533532965026

`n*(n^6+6)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054606

/-- `n*(n^6+6)` -/
def P1326187533532965026.Spec : Prop :=
  ∀ n, (P1326187533532965026.a n : ℤ) = A054606 n

theorem P1326187533532965026.correct : P1326187533532965026.Spec := by
  intro n
  simp only [A054606]

end A054606

/-! ## A054606.P2618450185678602195

`A180357(n)-n`
-/

namespace A054606.P2618450185678602195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180357 n - (n : ℤ)

end

end A054606.P2618450185678602195

namespace A054606

/-- `A180357(n)-n` -/
def P2618450185678602195.Spec : Prop :=
  ∀ n, P2618450185678602195.a n = A054606 n

end A054606

/-! ## A054606.P12170898009809412350

`A190578(n)+5*n`
-/

namespace A054606.P12170898009809412350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190578 n + (5 * n : ℤ)

end

end A054606.P12170898009809412350

namespace A054606

/-- `A190578(n)+5*n` -/
def P12170898009809412350.Spec : Prop :=
  ∀ n, P12170898009809412350.a n = A054606 n

end A054606

/-! ## A054606.P10716467037028403835

`A008588(n)+A001015(n)`
-/

namespace A054606.P10716467037028403835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008588 n + A001015 n

end

end A054606.P10716467037028403835

namespace A054606

/-- `A008588(n)+A001015(n)` -/
def P10716467037028403835.Spec : Prop :=
  ∀ n, P10716467037028403835.a n = A054606 n

end A054606

/-! ## A054606.P16358289904945140363

`A133499(n)+A008589(n)`
-/

namespace A054606.P16358289904945140363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133499 n + A008589 n

end

end A054606.P16358289904945140363

namespace A054606

/-- `A133499(n)+A008589(n)` -/
def P16358289904945140363.Spec : Prop :=
  ∀ n, P16358289904945140363.a n = A054606 n

end A054606

/-! ## A054606.P12914819394237129219

`A240930(n)+A180356(n)`
-/

namespace A054606.P12914819394237129219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240930 n + A180356 n

end

end A054606.P12914819394237129219

namespace A054606

/-- `A240930(n)+A180356(n)` -/
def P12914819394237129219.Spec : Prop :=
  ∀ n, P12914819394237129219.a n = A054606 n

end A054606

/-! ## A054606.P5323766545511960387

`A016921(n)-A024005(n)`
-/

namespace A054606.P5323766545511960387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 n - A024005 n

end

end A054606.P5323766545511960387

namespace A054606

/-- `A016921(n)-A024005(n)` -/
def P5323766545511960387.Spec : Prop :=
  ∀ n, P5323766545511960387.a n = A054606 n

end A054606

/-!
# A054607: a(n) = Sum_{d|8} phi(d)*n^(8/d).

The programs for A054607, the canonical program `A054607.P2335421051674643389` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054607 has offset 0).

The definition of A054607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054607.P2335421051674643389

`n^8+n^4+2*n²+4*n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054607

/-- `n^8+n^4+2*n²+4*n` -/
def P2335421051674643389.Spec : Prop :=
  ∀ n, (P2335421051674643389.a n : ℤ) = A054607 n

theorem P2335421051674643389.correct : P2335421051674643389.Spec := by
  intro n
  simp only [A054607]

end A054607

/-! ## A054607.P11571432606871929646

`8*A054622(n)`
-/

namespace A054607.P11571432606871929646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A054622 n

end

end A054607.P11571432606871929646

namespace A054607

/-- `8*A054622(n)` -/
def P11571432606871929646.Spec : Prop :=
  ∀ n, P11571432606871929646.a n = A054607 n

end A054607

/-! ## A054607.P13787862331050815803

`(A168179(n)+2+n)*2*n`
-/

namespace A054607.P13787862331050815803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A168179 n + 2 + (n : ℤ)) * (2 * n : ℤ)

end

end A054607.P13787862331050815803

namespace A054607

/-- `(A168179(n)+2+n)*2*n` -/
def P13787862331050815803.Spec : Prop :=
  ∀ n, P13787862331050815803.a n = A054607 n

end A054607

/-! ## A054607.P14070502604114595079

`8*(A060560(n)+A060560(n)-A019583(n+1))`
-/

namespace A054607.P14070502604114595079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * (A060560 n + (A060560 n - A019583 (n + 1)))

end

end A054607.P14070502604114595079

namespace A054607

/-- `8*(A060560(n)+A060560(n)-A019583(n+1))` -/
def P14070502604114595079.Spec : Prop :=
  ∀ n, P14070502604114595079.a n = A054607 n

end A054607

/-! ## A054607.P13977139369569863006

`4*(A006528(n²)+n)`
-/

namespace A054607.P13977139369569863006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A006528 (n ^ 2) + (n : ℤ))

end

end A054607.P13977139369569863006

namespace A054607

/-- `4*(A006528(n²)+n)` -/
def P13977139369569863006.Spec : Prop :=
  ∀ n, P13977139369569863006.a n = A054607 n

end A054607

/-! ## A054607.P1492052475517500867

`A185651(A000217(n+8)+8)`
-/

namespace A054607.P1492052475517500867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A000217 (n + 8) + 8).toNat

end

end A054607.P1492052475517500867

namespace A054607

/-- `A185651(A000217(n+8)+8)` -/
def P1492052475517500867.Spec : Prop :=
  ∀ n, P1492052475517500867.a n = A054607 n

end A054607

/-!
# A054608: a(n) = Sum_{d|9} phi(d)*n^(9/d).

The programs for A054608, the canonical program `A054608.P9996785926528127259` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054608 has offset 0).

The definition of A054608 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054608.P9996785926528127259

`n^9+2*n^3+6*n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054608

/-- `n^9+2*n^3+6*n` -/
def P9996785926528127259.Spec : Prop :=
  ∀ n, (P9996785926528127259.a n : ℤ) = A054608 n

theorem P9996785926528127259.correct : P9996785926528127259.Spec := by
  intro n
  simp only [A054608]

end A054608

/-! ## A054608.P5811502228949620989

`9*A054623(n)`
-/

namespace A054608.P5811502228949620989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A054623 n

end

end A054608.P5811502228949620989

namespace A054608

/-- `9*A054623(n)` -/
def P5811502228949620989.Spec : Prop :=
  ∀ n, P5811502228949620989.a n = A054608 n

end A054608

/-! ## A054608.P4894355575075807042

`A185651(A000124(n+10)-(n+2))`
-/

namespace A054608.P4894355575075807042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A000124 (n + 10) - (n + 2 : ℤ)).toNat

end

end A054608.P4894355575075807042

namespace A054608

/-- `A185651(A000124(n+10)-(n+2))` -/
def P4894355575075807042.Spec : Prop :=
  ∀ n, P4894355575075807042.a n = A054608 n

end A054608

/-!
# A054609: a(n) = Sum_{d|10} phi(d)*n^(10/d).

The programs for A054609, the canonical program `A054609.P573320127687223490` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054609 has offset 0).

The definition of A054609 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054609.P573320127687223490

`n*(n+1)*((n-1)*n^7+n^6-n^5+n^4+4)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054609

/-- `n*(n+1)*((n-1)*n^7+n^6-n^5+n^4+4)` -/
def P573320127687223490.Spec : Prop :=
  ∀ n, P573320127687223490.a n = A054609 n

theorem P573320127687223490.correct : P573320127687223490.Spec := by
  intro n
  simp only [A054609]

end A054609

/-! ## A054609.P7789705916257356916

`lcm(2, 10*A054624(n))`
-/

namespace A054609.P7789705916257356916
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (10 * A054624 n)

end

end A054609.P7789705916257356916

namespace A054609

/-- `lcm(2, 10*A054624(n))` -/
def P7789705916257356916.Spec : Prop :=
  ∀ n, (P7789705916257356916.a n : ℤ) = A054609 n

end A054609

/-! ## A054609.P4804684072689776092

`A000584(n)+A033996(n)+A000584(n)²`
-/

namespace A054609.P4804684072689776092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 n + (A033996 n + A000584 n ^ 2)

end

end A054609.P4804684072689776092

namespace A054609

/-- `A000584(n)+A033996(n)+A000584(n)²` -/
def P4804684072689776092.Spec : Prop :=
  ∀ n, P4804684072689776092.a n = A054609 n

end A054609

/-! ## A054609.P6246841645070870301

`A054604(n²)+A054604(n)`
-/

namespace A054609.P6246841645070870301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054604 (n ^ 2) + A054604 n

end

end A054609.P6246841645070870301

namespace A054609

/-- `A054604(n²)+A054604(n)` -/
def P6246841645070870301.Spec : Prop :=
  ∀ n, P6246841645070870301.a n = A054609 n

end A054609

/-! ## A054609.P6039493333005722498

`A185651(A046691(n+8)+14)`
-/

namespace A054609.P6039493333005722498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A046691 (n + 8) + 14).toNat

end

end A054609.P6039493333005722498

namespace A054609

/-- `A185651(A046691(n+8)+14)` -/
def P6039493333005722498.Spec : Prop :=
  ∀ n, P6039493333005722498.a n = A054609 n

end A054609

/-!
# A054610: a(n) = Sum_{d|n} phi(d)*3^(n/d).

The programs for A054610, there is no canonical definition to state claims against.
-/

/-! ## A054610.P1890785819909110431

`n*A001867(n)`
-/

namespace A054610.P1890785819909110431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001867 n

end

end A054610.P1890785819909110431

/-! ## A054610.P4840531228756358227

`∑{d}[n, n*A027376(#)]`
-/

namespace A054610.P4840531228756358227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A027376 d

end

end A054610.P4840531228756358227

/-! ## A054610.P15875004185397464295

`n*(A278663(n)+A027376(n))`
-/

namespace A054610.P15875004185397464295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A278663 n + A027376 n)

end

end A054610.P15875004185397464295

/-! ## A054610.P18446498560768143461

`n*(A278639(n)+A027671(n))`
-/

namespace A054610.P18446498560768143461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A278639 n + A027671 n)

end

end A054610.P18446498560768143461

/-! ## A054610.P16885090630097914827

`n*(A051137(A000217(n+2)+2)+A027671(n)-A182751(n+1))`
-/

namespace A054610.P16885090630097914827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A051137 (A000217 (n + 2) + 2).toNat + (A027671 n - A182751 (n + 1)))

end

end A054610.P16885090630097914827

/-! ## A054610.P10241509731856550805

`n*(A278663(n)+A074650(A034856(n+1)))`
-/

namespace A054610.P10241509731856550805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A278663 n + A074650 (A034856 (n + 1)).toNat)

end

end A054610.P10241509731856550805

/-! ## A054610.P8956047731448503524

`A185651(∑[n+3]+n+3)`
-/

namespace A054610.P8956047731448503524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A054610.P8956047731448503524

/-! ## A054610.P3167811873640377060

`record[A185651(A046691(A133310(n)))]`
-/

namespace A054610.P3167811873640377060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A046691 (A133310 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054610.P3167811873640377060

/-!
# A054611: a(n) = Sum_{d|n} phi(d)*4^(n/d).

The programs for A054611, there is no canonical definition to state claims against.
-/

/-! ## A054611.P7803675878190989433

`n*A001868(n)`
-/

namespace A054611.P7803675878190989433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001868 n

end

end A054611.P7803675878190989433

/-! ## A054611.P9191779917088660317

`∑{d}[n, n*A027377(#)]`
-/

namespace A054611.P9191779917088660317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℤ) * A027377 d

end

end A054611.P9191779917088660317

/-! ## A054611.P10871426172242011577

`∑{d}[n, n/#*A054719(#)]`
-/

namespace A054611.P10871426172242011577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n : ℚ) / (d : ℚ) * (A054719 d : ℚ)

end

end A054611.P10871426172242011577

/-! ## A054611.P6014989335463352612

`A185651(A052905(n+2))`
-/

namespace A054611.P6014989335463352612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A052905 (n + 2)).toNat

end

end A054611.P6014989335463352612

/-! ## A054611.P12086065126686599241

`A185651(A056115(n)+10)`
-/

namespace A054611.P12086065126686599241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A056115 n + 10).toNat

end

end A054611.P12086065126686599241

/-! ## A054611.P8998843596598272575

`A185651(eq[3, A129713(n)])`
-/

namespace A054611.P8998843596598272575
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054611.P8998843596598272575

/-! ## A054611.P6238099432437909166

`A185651(eq[4, A025581(n)])`
-/

namespace A054611.P6238099432437909166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054611.P6238099432437909166

/-! ## A054611.P14470729897360025619

`A185651(A167614(n+2)+A004273(n+1))`
-/

namespace A054611.P14470729897360025619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A167614 (n + 2) + A004273 (n + 1)).toNat

end

end A054611.P14470729897360025619

/-!
# A054612: a(n) = Sum_{d|n} phi(d)*5^(n/d).

The programs for A054612, there is no canonical definition to state claims against.
-/

/-! ## A054612.P4320254190560026673

`n*A001869(n)`
-/

namespace A054612.P4320254190560026673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001869 n

end

end A054612.P4320254190560026673

/-! ## A054612.P17040189280116658556

`n*A075195(∑[n+4]+2)`
-/

namespace A054612.P17040189280116658556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A075195 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A054612.P17040189280116658556

/-! ## A054612.P6083804676836820716

`A185651(n+10+∑[n+5])`
-/

namespace A054612.P6083804676836820716
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (n + 10 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054612.P6083804676836820716

/-! ## A054612.P2044550047679997457

`A185651(eq[5, A129713(n)])%A025977(n)`
-/

namespace A054612.P2044550047679997457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)) (A025977 n)

end

end A054612.P2044550047679997457

/-! ## A054612.P5226884902741268755

`A019426(2*n)*A185651(eq[5, A129713(n)])`
-/

namespace A054612.P5226884902741268755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (2 * n) * A185651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054612.P5226884902741268755

/-!
# A054613: a(n) = Sum_{d|n} phi(d)*6^(n/d).

The programs for A054613, there is no canonical definition to state claims against.
-/

/-! ## A054613.P11411121198662471523

`n*A054625(n)`
-/

namespace A054613.P11411121198662471523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054625 n

end

end A054613.P11411121198662471523

/-! ## A054613.P8610858733913353941

`A185651(eq[6, A025581(n)])`
-/

namespace A054613.P8610858733913353941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054613.P8610858733913353941

/-! ## A054613.P14513982449858059597

`A185651(A000217(n+7)-7)`
-/

namespace A054613.P14513982449858059597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A000217 (n + 7) - 7).toNat

end

end A054613.P14513982449858059597

/-! ## A054613.P10366475161217811792

`A185651(A056119(n+1)+14)`
-/

namespace A054613.P10366475161217811792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A056119 (n + 1) + 14).toNat

end

end A054613.P10366475161217811792

/-! ## A054613.P13443274852866416969

`A185651(eq[7, A004736(n+1)])`
-/

namespace A054613.P13443274852866416969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054613.P13443274852866416969

/-! ## A054613.P8281288696763486786

`A185651(A000096(n+5)+n+1)`
-/

namespace A054613.P8281288696763486786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A000096 (n + 5) + (n + 1 : ℤ)).toNat

end

end A054613.P8281288696763486786

/-! ## A054613.P9307549913545230148

`A185651(2*n+A000124(n+5)+5)`
-/

namespace A054613.P9307549913545230148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 ((2 * n : ℤ) + (A000124 (n + 5) + 5)).toNat

end

end A054613.P9307549913545230148

/-! ## A054613.P14760367528663779334

`A185651(A167614(n+4)+A004273(n+2))`
-/

namespace A054613.P14760367528663779334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A167614 (n + 4) + A004273 (n + 2)).toNat

end

end A054613.P14760367528663779334

/-! ## A054613.P17258017904594440435

`A185651(A016777(n+3)+A000124(n+4))`
-/

namespace A054613.P17258017904594440435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A016777 (n + 3) + A000124 (n + 4)).toNat

end

end A054613.P17258017904594440435

/-!
# A054614: a(n) = Sum_{d|n} phi(d)*7^(n/d).

The programs for A054614, there is no canonical definition to state claims against.
-/

/-! ## A054614.P15918786087436520638

`n*A054626(n)`
-/

namespace A054614.P15918786087436520638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054626 n

end

end A054614.P15918786087436520638

/-! ## A054614.P5448107305891342804

`n*A075195(Δ[A023551(n+1)])`
-/

namespace A054614.P5448107305891342804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A075195 (f1 (n + 1) - f1 n).toNat

end

end A054614.P5448107305891342804

/-! ## A054614.P3508621127090082620

`A185651(A046691(n+6)-4)`
-/

namespace A054614.P3508621127090082620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A046691 (n + 6) - 4).toNat

end

end A054614.P3508621127090082620

/-! ## A054614.P4054309771649189425

`A185651(A000217(n+8)-8)`
-/

namespace A054614.P4054309771649189425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A000217 (n + 8) - 8).toNat

end

end A054614.P4054309771649189425

/-! ## A054614.P9864533429449131001

`A185651(A167487(n+5)+2*n)`
-/

namespace A054614.P9864533429449131001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A167487 (n + 5) + (2 * n : ℤ)).toNat

end

end A054614.P9864533429449131001

/-! ## A054614.P17981450438369880080

`A185651(A087475(n+5)-∑[n+1])`
-/

namespace A054614.P17981450438369880080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A087475 (n + 5) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A054614.P17981450438369880080

/-! ## A054614.P3692074419452629244

`A185651(2*n+A152950(n+7)+4)`
-/

namespace A054614.P3692074419452629244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 ((2 * n : ℤ) + (A152950 (n + 7) + 4)).toNat

end

end A054614.P3692074419452629244

/-! ## A054614.P17338392036855798675

`A185651(2*n+A000096(n+5)+8)`
-/

namespace A054614.P17338392036855798675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 ((2 * n : ℤ) + (A000096 (n + 5) + 8)).toNat

end

end A054614.P17338392036855798675

/-! ## A054614.P164757231131768340

`A185651(2*n+A000217(n+6)+7)`
-/

namespace A054614.P164757231131768340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A054614.P164757231131768340

/-! ## A054614.P7245911681023945951

`A185651(A008585(n+4)+A000124(n+5))`
-/

namespace A054614.P7245911681023945951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A008585 (n + 4) + A000124 (n + 5)).toNat

end

end A054614.P7245911681023945951

/-!
# A054615: a(n) = Sum_{d|n} phi(d)*8^(n/d).

The programs for A054615, there is no canonical definition to state claims against.
-/

/-! ## A054615.P17745281280138222203

`n*A054627(n)`
-/

namespace A054615.P17745281280138222203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054627 n

end

end A054615.P17745281280138222203

/-! ## A054615.P1252515613189429788

`A185651(A055999(n+6)-3)`
-/

namespace A054615.P1252515613189429788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A055999 (n + 6) - 3).toNat

end

end A054615.P1252515613189429788

/-! ## A054615.P11667982798517676318

`A185651(A000096(n+8)-8)`
-/

namespace A054615.P11667982798517676318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A000096 (n + 8) - 8).toNat

end

end A054615.P11667982798517676318

/-! ## A054615.P5908650406069706602

`A185651(A000217(n+9)-9)`
-/

namespace A054615.P5908650406069706602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A000217 (n + 9) - 9).toNat

end

end A054615.P5908650406069706602

/-! ## A054615.P13570076145066967063

`A185651(A052905(n+5)+n+5)`
-/

namespace A054615.P13570076145066967063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A052905 (n + 5) + (n + 5 : ℤ)).toNat

end

end A054615.P13570076145066967063

/-! ## A054615.P5815168349154526293

`A185651(A167614(n+6)+A004273(n+3))`
-/

namespace A054615.P5815168349154526293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A167614 (n + 6) + A004273 (n + 3)).toNat

end

end A054615.P5815168349154526293

/-!
# A054616: a(n) = Sum_{d|n} phi(d)*9^(n/d).

The programs for A054616, there is no canonical definition to state claims against.
-/

/-! ## A054616.P10806062825811351144

`n*A054628(n)`
-/

namespace A054616.P10806062825811351144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054628 n

end

end A054616.P10806062825811351144

/-! ## A054616.P3333609662364099395

`A185651(A052905(n+7)-5)`
-/

namespace A054616.P3333609662364099395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A052905 (n + 7) - 5).toNat

end

end A054616.P3333609662364099395

/-! ## A054616.P9078255816736400348

`A185651(A000217(n+10)-10)`
-/

namespace A054616.P9078255816736400348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A000217 (n + 10) - 10).toNat

end

end A054616.P9078255816736400348

/-! ## A054616.P3897536853282572631

`A185651(A000096(n+8)+n+1)`
-/

namespace A054616.P3897536853282572631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A000096 (n + 8) + (n + 1 : ℤ)).toNat

end

end A054616.P3897536853282572631

/-! ## A054616.P13296115733670296728

`A185651(A016777(n+5)+A000124(n+7))`
-/

namespace A054616.P13296115733670296728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A016777 (n + 5) + A000124 (n + 7)).toNat

end

end A054616.P13296115733670296728

/-!
# A054617: a(n) = Sum_{d|n} phi(d)*10^(n/d).

The programs for A054617, there is no canonical definition to state claims against.
-/

/-! ## A054617.P13068903485150272047

`n*A054629(n)`
-/

namespace A054617.P13068903485150272047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A054629 n

end

end A054617.P13068903485150272047

/-! ## A054617.P17008892688291387011

`A185651(A000217(n+11)-11)`
-/

namespace A054617.P17008892688291387011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A000217 (n + 11) - 11).toNat

end

end A054617.P17008892688291387011

/-! ## A054617.P11914462050608849353

`A185651(A046691(n+8)+n+4)`
-/

namespace A054617.P11914462050608849353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A046691 (n + 8) + (n + 4 : ℤ)).toNat

end

end A054617.P11914462050608849353

/-! ## A054617.P14872003893837813242

`A185651(A167614(n+8)+A004273(n+4))`
-/

namespace A054617.P14872003893837813242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A167614 (n + 8) + A004273 (n + 4)).toNat

end

end A054617.P14872003893837813242

/-! ## A054617.P463294358325635772

`A185651(A008585(n+6)+A000124(n+8))`
-/

namespace A054617.P463294358325635772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185651 (A008585 (n + 6) + A000124 (n + 8)).toNat

end

end A054617.P463294358325635772

/-!
# A054618: Triangle T(n,k) = Sum_{d|n} phi(d)*k^(n/d).

The programs for A054618, there is no canonical definition to state claims against.
-/

/-! ## A054618.P470413765072666491

`∑[char[∑[n]]]*A054631(n+1)`
-/

namespace A054618.P470413765072666491
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A054631 (n + 1)

end

end A054618.P470413765072666491

/-! ## A054618.P10786660542406499893

`A054631(n+1)*A349520(2*(n+1))`
-/

namespace A054618.P10786660542406499893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054631 (n + 1) * A349520 (2 * (n + 1))

end

end A054618.P10786660542406499893

/-! ## A054618.P39356212009214960

`A054631(n+1)*A113881(A127739(n+1))`
-/

namespace A054618.P39356212009214960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054631 (n + 1) * A113881 (A127739 (n + 1)).toNat

end

end A054618.P39356212009214960

/-! ## A054618.P8186668620204404731

`A054631(n+1)+A003056(n)*A054631(n+1)`
-/

namespace A054618.P8186668620204404731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054631 (n + 1) + A003056 n * A054631 (n + 1)

end

end A054618.P8186668620204404731

/-! ## A054618.P15579435011591600221

`A003057(n+2)*A054631(n+1)-A054631(n+1)`
-/

namespace A054618.P15579435011591600221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) * A054631 (n + 1) - A054631 (n + 1)

end

end A054618.P15579435011591600221

/-!
# A054619: Triangle T(n,k) = Sum_{d|k} phi(d)*n^(k/d).

The programs for A054619, there is no canonical definition to state claims against.
-/

/-! ## A054619.P15257223033860572322

`A002260(n+1)*A054630(n+1)`
-/

namespace A054619.P15257223033860572322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A054630 (n + 1)

end

end A054619.P15257223033860572322

/-! ## A054619.P11442812198888868601

`(A002262(n)+1)*A054630(n+1)`
-/

namespace A054619.P11442812198888868601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002262 n + 1) * A054630 (n + 1)

end

end A054619.P11442812198888868601

/-! ## A054619.P1449097093779316658

`sqrt(A133819(n+1))*A054630(n+1)`
-/

namespace A054619.P1449097093779316658
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133819 (n + 1) : ℝ) * (A054630 (n + 1) : ℝ)

end

end A054619.P1449097093779316658

/-! ## A054619.P12199258600615626821

`A000720(A037126(n+1))*A054630(n+1)`
-/

namespace A054619.P12199258600615626821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A037126 (n + 1)).toNat * A054630 (n + 1)

end

end A054619.P12199258600615626821

/-! ## A054619.P1837948976121367589

`A004736(A038722(n+1))*A054630(n+1)`
-/

namespace A054619.P1837948976121367589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A038722 (n + 1)).toNat * A054630 (n + 1)

end

end A054619.P1837948976121367589

/-! ## A054619.P14815858723294611780

`A000005(A059268(n))*A054630(n+1)`
-/

namespace A054619.P14815858723294611780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A059268 n).toNat * A054630 (n + 1)

end

end A054619.P14815858723294611780

/-!
# A054620: Number of ways to color vertices of a pentagon using <= n colors, allowing only rotations.

The programs for A054620, the canonical program `A054620.P5239882790409538499` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054620 has offset 0).

The definition of A054620 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054620.P5239882790409538499

`(n^5+4*n)/5`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054620

/-- `(n^5+4*n)/5` -/
def P5239882790409538499.Spec : Prop :=
  ∀ n, P5239882790409538499.a n = (A054620 n : ℚ)

end A054620

/-! ## A054620.P9891636929583363878

`∑[(n^5)%(n²+1)²]`
-/

namespace A054620.P9891636929583363878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 5 % (n ^ 2 + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054620.P9891636929583363878

namespace A054620

/-- `∑[(n^5)%(n²+1)²]` -/
def P9891636929583363878.Spec : Prop :=
  ∀ n, (P9891636929583363878.a n : ℤ) = A054620 n

end A054620

/-! ## A054620.P10699129174699321380

`A134327(n)+1+n`
-/

namespace A054620.P10699129174699321380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134327 n + 1 + (n : ℤ)

end

end A054620.P10699129174699321380

namespace A054620

/-- `A134327(n)+1+n` -/
def P10699129174699321380.Spec : Prop :=
  ∀ n, P10699129174699321380.a n = A054620 n

end A054620

/-! ## A054620.P1187863947065332462

`A208536(n+1)+n`
-/

namespace A054620.P1187863947065332462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208536 (n + 1) + (n : ℤ)

end

end A054620.P1187863947065332462

namespace A054620

/-- `A208536(n+1)+n` -/
def P1187863947065332462.Spec : Prop :=
  ∀ n, P1187863947065332462.a n = A054620 n

end A054620

/-! ## A054620.P8027951003510171646

`A061167(n)/5+n`
-/

namespace A054620.P8027951003510171646
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061167 n : ℚ) / 5 + (n : ℚ)

end

end A054620.P8027951003510171646

namespace A054620

/-- `A061167(n)/5+n` -/
def P8027951003510171646.Spec : Prop :=
  ∀ n, P8027951003510171646.a n = (A054620 n : ℚ)

end A054620

/-! ## A054620.P7211279082906671920

`n/5*A057781(n)`
-/

namespace A054620.P7211279082906671920
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 5 * (A057781 n : ℚ)

end

end A054620.P7211279082906671920

namespace A054620

/-- `n/5*A057781(n)` -/
def P7211279082906671920.Spec : Prop :=
  ∀ n, P7211279082906671920.a n = (A054620 n : ℚ)

end A054620

/-! ## A054620.P10160305169565096040

`∑[6*A006325(n)]+n`
-/

namespace A054620.P10160305169565096040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A006325 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A054620.P10160305169565096040

namespace A054620

/-- `∑[6*A006325(n)]+n` -/
def P10160305169565096040.Spec : Prop :=
  ∀ n, P10160305169565096040.a n = A054620 n

end A054620

/-! ## A054620.P1313507418238087207

`2*A131176(n)+n+2`
-/

namespace A054620.P1313507418238087207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A131176 n + (n + 2 : ℤ)

end

end A054620.P1313507418238087207

namespace A054620

/-- `2*A131176(n)+n+2` -/
def P1313507418238087207.Spec : Prop :=
  ∀ n, P1313507418238087207.a n = A054620 n

end A054620

/-! ## A054620.P7996937560162370914

`A000538(n)+n-A212560(n)`
-/

namespace A054620.P7996937560162370914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n + ((n : ℤ) - A212560 n)

end

end A054620.P7996937560162370914

namespace A054620

/-- `A000538(n)+n-A212560(n)` -/
def P7996937560162370914.Spec : Prop :=
  ∀ n, P7996937560162370914.a n = A054620 n

end A054620

/-! ## A054620.P6806981864588228964

`A136008(n)/A008706(n)+n`
-/

namespace A054620.P6806981864588228964
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136008 n : ℚ) / (A008706 n : ℚ) + (n : ℚ)

end

end A054620.P6806981864588228964

namespace A054620

/-- `A136008(n)/A008706(n)+n` -/
def P6806981864588228964.Spec : Prop :=
  ∀ n, P6806981864588228964.a n = (A054620 n : ℚ)

end A054620

/-! ## A054620.P7111114774568749737

`A136008(n)/A168101(n)+n`
-/

namespace A054620.P7111114774568749737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136008 n : ℚ) / (A168101 n : ℚ) + (n : ℚ)

end

end A054620.P7111114774568749737

namespace A054620

/-- `A136008(n)/A168101(n)+n` -/
def P7111114774568749737.Spec : Prop :=
  ∀ n, P7111114774568749737.a n = (A054620 n : ℚ)

end A054620

/-! ## A054620.P18059592190800198015

`∑[2*A000217(n²-n)]+n`
-/

namespace A054620.P18059592190800198015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000217 (n ^ 2 - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A054620.P18059592190800198015

namespace A054620

/-- `∑[2*A000217(n²-n)]+n` -/
def P18059592190800198015.Spec : Prop :=
  ∀ n, P18059592190800198015.a n = A054620 n

end A054620

/-! ## A054620.P13334125436753765216

`∑[A002061(A002061(n))]-1`
-/

namespace A054620.P13334125436753765216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A002061 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054620.P13334125436753765216

namespace A054620

/-- `∑[A002061(A002061(n))]-1` -/
def P13334125436753765216.Spec : Prop :=
  ∀ n, P13334125436753765216.a n = A054620 n

end A054620

/-!
# A054621: Number of ways to color vertices of a heptagon using <= n colors, allowing only rotations.

The programs for A054621, the canonical program `A054621.P1581206856950397165` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054621 has offset 0).

The definition of A054621 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054621.P1581206856950397165

`1/7*(n^7+6*n)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054621

/-- `1/7*(n^7+6*n)` -/
def P1581206856950397165.Spec : Prop :=
  ∀ n, P1581206856950397165.a n = (A054621 n : ℚ)

end A054621

/-! ## A054621.P1369922529387663669

`A054606(n)/7`
-/

namespace A054621.P1369922529387663669
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054606 n : ℚ) / 7

end

end A054621.P1369922529387663669

namespace A054621

/-- `A054606(n)/7` -/
def P1369922529387663669.Spec : Prop :=
  ∀ n, P1369922529387663669.a n = (A054621 n : ℚ)

end A054621

/-! ## A054621.P7361087312641069580

`A208537(n+1)+n`
-/

namespace A054621.P7361087312641069580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208537 (n + 1) + (n : ℤ)

end

end A054621.P7361087312641069580

namespace A054621

/-- `A208537(n+1)+n` -/
def P7361087312641069580.Spec : Prop :=
  ∀ n, P7361087312641069580.a n = A054621 n

end A054621

/-! ## A054621.P13974164093680615761

`6*A030180(n)+n`
-/

namespace A054621.P13974164093680615761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A030180 n + (n : ℤ)

end

end A054621.P13974164093680615761

namespace A054621

/-- `6*A030180(n)+n` -/
def P13974164093680615761.Spec : Prop :=
  ∀ n, P13974164093680615761.a n = A054621 n

end A054621

/-! ## A054621.P6671560237277701289

`2*A208545(n+1)+n`
-/

namespace A054621.P6671560237277701289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208545 (n + 1) + (n : ℤ)

end

end A054621.P6671560237277701289

namespace A054621

/-- `2*A208545(n+1)+n` -/
def P6671560237277701289.Spec : Prop :=
  ∀ n, P6671560237277701289.a n = A054621 n

end A054621

/-! ## A054621.P2309144971059458393

`(A133499(n)+7*n)/7`
-/

namespace A054621.P2309144971059458393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133499 n + (7 * n : ℤ) : ℚ) / 7

end

end A054621.P2309144971059458393

namespace A054621

/-- `(A133499(n)+7*n)/7` -/
def P2309144971059458393.Spec : Prop :=
  ∀ n, P2309144971059458393.a n = (A054621 n : ℚ)

end A054621

/-! ## A054621.P1553460063478431302

`2*(A168029(n)-n)/7+n`
-/

namespace A054621.P1553460063478431302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((A168029 n - (n : ℤ) : ℚ) / 7) + (n : ℚ)

end

end A054621.P1553460063478431302

namespace A054621

/-- `2*(A168029(n)-n)/7+n` -/
def P1553460063478431302.Spec : Prop :=
  ∀ n, P1553460063478431302.a n = (A054621 n : ℚ)

end A054621

/-! ## A054621.P11413598658324924924

`A108495(n)+n-A030180(n)`
-/

namespace A054621.P11413598658324924924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108495 n + ((n : ℤ) - A030180 n)

end

end A054621.P11413598658324924924

namespace A054621

/-- `A108495(n)+n-A030180(n)` -/
def P11413598658324924924.Spec : Prop :=
  ∀ n, P11413598658324924924.a n = A054621 n

end A054621

/-!
# A054622: Number of ways to color vertices of an octagon using <= n colors, allowing only rotations.

The programs for A054622, the canonical program `A054622.P9035516813408174709` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054622 has offset 0).

The definition of A054622 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054622.P1944996433644938852

`(C(n, 2)+1)*∑[n]+C(n², 2)/2*C(n²+1, 2)`
-/

namespace A054622.P1944996433644938852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.choose n 2 + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) + (Nat.choose (n ^ 2) 2 : ℚ) / 2 * (Nat.choose (n ^ 2 + 1) 2 : ℚ)

end

end A054622.P1944996433644938852

namespace A054622

/-- `(C(n, 2)+1)*∑[n]+C(n², 2)/2*C(n²+1, 2)` -/
def P1944996433644938852.Spec : Prop :=
  ∀ n, P1944996433644938852.a n = (A054622 n : ℚ)

end A054622

/-! ## A054622.P5103759195907824599

`A054607(n)/8`
-/

namespace A054622.P5103759195907824599
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054607 n : ℚ) / 8

end

end A054622.P5103759195907824599

namespace A054622

/-- `A054607(n)/8` -/
def P5103759195907824599.Spec : Prop :=
  ∀ n, P5103759195907824599.a n = (A054622 n : ℚ)

end A054622

/-! ## A054622.P7515959766501419650

`n*(A168179(n)+2+n)/4`
-/

namespace A054622.P7515959766501419650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A168179 n + 2 + (n : ℤ) : ℚ) / 4)

end

end A054622.P7515959766501419650

namespace A054622

/-- `n*(A168179(n)+2+n)/4` -/
def P7515959766501419650.Spec : Prop :=
  ∀ n, P7515959766501419650.a n = (A054622 n : ℚ)

end A054622

/-! ## A054622.P9035516813408174709

`A006528(n)+A006011(n)*A037270(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A054622

/-- `A006528(n)+A006011(n)*A037270(n)` -/
def P9035516813408174709.Spec : Prop :=
  ∀ n, P9035516813408174709.a n = A054622 n

theorem P9035516813408174709.correct : P9035516813408174709.Spec := by
  intro n
  simp only [A054622]

end A054622

/-! ## A054622.P17834527580085388036

`A060560(n)+A060560(n)-A019583(n+1)`
-/

namespace A054622.P17834527580085388036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060560 n + (A060560 n - A019583 (n + 1))

end

end A054622.P17834527580085388036

namespace A054622

/-- `A060560(n)+A060560(n)-A019583(n+1)` -/
def P17834527580085388036.Spec : Prop :=
  ∀ n, P17834527580085388036.a n = A054622 n

end A054622

/-! ## A054622.P9956394036853309156

`A006528(n)+A006011(n²)/2`
-/

namespace A054622.P9956394036853309156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006528 n : ℚ) + (A006011 (n ^ 2) : ℚ) / 2

end

end A054622.P9956394036853309156

namespace A054622

/-- `A006528(n)+A006011(n²)/2` -/
def P9956394036853309156.Spec : Prop :=
  ∀ n, P9956394036853309156.a n = (A054622 n : ℚ)

end A054622

/-! ## A054622.P6383700297273145245

`(A006528(n²)+n)/2`
-/

namespace A054622.P6383700297273145245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006528 (n ^ 2) + (n : ℤ) : ℚ) / 2

end

end A054622.P6383700297273145245

namespace A054622

/-- `(A006528(n²)+n)/2` -/
def P6383700297273145245.Spec : Prop :=
  ∀ n, P6383700297273145245.a n = (A054622 n : ℚ)

end A054622

/-! ## A054622.P2951797724771875172

`(A282613(n)+n²)/A003056(A001844(n))`
-/

namespace A054622.P2951797724771875172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282613 n + (n ^ 2 : ℤ) : ℚ) / (A003056 (A001844 n).toNat : ℚ)

end

end A054622.P2951797724771875172

namespace A054622

/-- `(A282613(n)+n²)/A003056(A001844(n))` -/
def P2951797724771875172.Spec : Prop :=
  ∀ n, P2951797724771875172.a n = (A054622 n : ℚ)

end A054622

/-!
# A054623: Number of ways to color vertices of a 9-gon using <= n colors, allowing only rotations.

The programs for A054623, the canonical program `A054623.P8031564960537250113` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054623 has offset 0).

The definition of A054623 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054623.P8031564960537250113

`n*(n^8+2*n²+6)/9`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054623

/-- `n*(n^8+2*n²+6)/9` -/
def P8031564960537250113.Spec : Prop :=
  ∀ n, P8031564960537250113.a n = (A054623 n : ℚ)

end A054623

/-! ## A054623.P8942418113411525665

`(n^9+4*Δ[C(C(n, 2)+2, 2)])/9`
-/

namespace A054623.P8942418113411525665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose n 2 + 2) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 9 : ℤ) + 4 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℚ) / 9

end

end A054623.P8942418113411525665

namespace A054623

/-- `(n^9+4*Δ[C(C(n, 2)+2, 2)])/9` -/
def P8942418113411525665.Spec : Prop :=
  ∀ n, P8942418113411525665.a n = (A054623 n : ℚ)

end A054623

/-! ## A054623.P8434304847892236871

`A054608(n)/9`
-/

namespace A054623.P8434304847892236871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054608 n : ℚ) / 9

end

end A054623.P8434304847892236871

namespace A054623

/-- `A054608(n)/9` -/
def P8434304847892236871.Spec : Prop :=
  ∀ n, P8434304847892236871.a n = (A054623 n : ℚ)

end A054623

/-! ## A054623.P7215851775554569546

`(A001017(n)+4*A229183(n))/9`
-/

namespace A054623.P7215851775554569546
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001017 n + 4 * A229183 n : ℚ) / 9

end

end A054623.P7215851775554569546

namespace A054623

/-- `(A001017(n)+4*A229183(n))/9` -/
def P7215851775554569546.Spec : Prop :=
  ∀ n, P7215851775554569546.a n = (A054623 n : ℚ)

end A054623

/-! ## A054623.P14679879052323330715

`A208535(A000217(n+8)+9)+n`
-/

namespace A054623.P14679879052323330715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A000217 (n + 8) + 9).toNat + (n : ℤ)

end

end A054623.P14679879052323330715

namespace A054623

/-- `A208535(A000217(n+8)+9)+n` -/
def P14679879052323330715.Spec : Prop :=
  ∀ n, P14679879052323330715.a n = A054623 n

end A054623

/-!
# A054624: Number of ways to color vertices of a 10-gon using <= n colors, allowing only rotations.

The programs for A054624, the canonical program `A054624.P11485875294279225557` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054624 has offset 0).

The definition of A054624 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054624.P11485875294279225557

`n*(n+1)*(n^8-n^7+n^6-n^5+n^4+4)/10`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054624

/-- `n*(n+1)*(n^8-n^7+n^6-n^5+n^4+4)/10` -/
def P11485875294279225557.Spec : Prop :=
  ∀ n, P11485875294279225557.a n = (A054624 n : ℚ)

end A054624

/-! ## A054624.P11582463410738284829

`A054609(n)/10`
-/

namespace A054624.P11582463410738284829
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054609 n : ℚ) / 10

end

end A054624.P11582463410738284829

namespace A054624

/-- `A054609(n)/10` -/
def P11582463410738284829.Spec : Prop :=
  ∀ n, P11582463410738284829.a n = (A054624 n : ℚ)

end A054624

/-! ## A054624.P13790414426242499884

`(A054620(n²)+A054620(n))/2`
-/

namespace A054624.P13790414426242499884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054620 (n ^ 2) + A054620 n : ℚ) / 2

end

end A054624.P13790414426242499884

namespace A054624

/-- `(A054620(n²)+A054620(n))/2` -/
def P13790414426242499884.Spec : Prop :=
  ∀ n, P13790414426242499884.a n = (A054624 n : ℚ)

end A054624

/-! ## A054624.P9546955469469132172

`A208535(A001489(n+1)+A000124(n+10))`
-/

namespace A054624.P9546955469469132172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A001489 (n + 1) + A000124 (n + 10)).toNat

end

end A054624.P9546955469469132172

namespace A054624

/-- `A208535(A001489(n+1)+A000124(n+10))` -/
def P9546955469469132172.Spec : Prop :=
  ∀ n, P9546955469469132172.a n = A054624 n

end A054624

/-! ## A054624.P8653564541909354449

`A208535(A020722(n+10)+A000124(n+8))`
-/

namespace A054624.P8653564541909354449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208535 (A020722 (n + 10) + A000124 (n + 8)).toNat

end

end A054624.P8653564541909354449

namespace A054624

/-- `A208535(A020722(n+10)+A000124(n+8))` -/
def P8653564541909354449.Spec : Prop :=
  ∀ n, P8653564541909354449.a n = A054624 n

end A054624

/-!
# A054625: Number of n-bead necklaces with 6 colors.

The programs for A054625, there is no canonical definition to state claims against.
-/

/-! ## A054625.P9037531537893444184

`A075195(eq[4, A025581(n)])`
-/

namespace A054625.P9037531537893444184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054625.P9037531537893444184

/-! ## A054625.P14294307946397550140

`A075195(A155212(n+1)+3)`
-/

namespace A054625.P14294307946397550140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (A155212 (n + 1) + 3).toNat

end

end A054625.P14294307946397550140

/-! ## A054625.P931803734565283802

`A075195(A000217(n+5)-5)`
-/

namespace A054625.P931803734565283802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (A000217 (n + 5) - 5).toNat

end

end A054625.P931803734565283802

/-! ## A054625.P15150217690616850210

`A075195(eq[5, A004736(n+1)])`
-/

namespace A054625.P15150217690616850210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054625.P15150217690616850210

/-! ## A054625.P11267211471559029336

`A075195(Δ[A023545(n+1)]-1)`
-/

namespace A054625.P11267211471559029336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (f1 (n + 1) - f1 n - 1).toNat

end

end A054625.P11267211471559029336

/-!
# A054626: Number of n-bead necklaces with 7 colors.

The programs for A054626, there is no canonical definition to state claims against.
-/

/-! ## A054626.P16394387160542118025

`A075195(A055999(n+3))`
-/

namespace A054626.P16394387160542118025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (A055999 (n + 3)).toNat

end

end A054626.P16394387160542118025

/-! ## A054626.P2242627300402949987

`A075195(eq[5, A025581(n)])`
-/

namespace A054626.P2242627300402949987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054626.P2242627300402949987

/-! ## A054626.P16110455873302326357

`A075195(Δ[A023551(n+1)])`
-/

namespace A054626.P16110455873302326357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (f1 (n + 1) - f1 n).toNat

end

end A054626.P16110455873302326357

/-! ## A054626.P15269358386009708610

`A075195(A000217(n+6)-6)`
-/

namespace A054626.P15269358386009708610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (A000217 (n + 6) - 6).toNat

end

end A054626.P15269358386009708610

/-! ## A054626.P4133832713126231618

`A075195(Δ[A023545(n+2)]-2)`
-/

namespace A054626.P4133832713126231618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (f1 (n + 1) - f1 n - 2).toNat

end

end A054626.P4133832713126231618

/-!
# A054627: Number of n-bead necklaces with 8 colors.

The programs for A054627, there is no canonical definition to state claims against.
-/

/-! ## A054627.P13778510600921500516

`A075195(eq[6, A025581(n)])`
-/

namespace A054627.P13778510600921500516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054627.P13778510600921500516

/-! ## A054627.P17296995590311635988

`A075195(eq[64, A130321(n)])`
-/

namespace A054627.P17296995590311635988
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054627.P17296995590311635988

/-! ## A054627.P1089822009813439618

`A075195(A000217(n+7)-7)`
-/

namespace A054627.P1089822009813439618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (A000217 (n + 7) - 7).toNat

end

end A054627.P1089822009813439618

/-! ## A054627.P7550553814939801863

`A075195(eq[7, A004736(n+1)])`
-/

namespace A054627.P7550553814939801863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054627.P7550553814939801863

/-! ## A054627.P2337002884408801467

`A075195(Δ[A023551(n+2)]-1)`
-/

namespace A054627.P2337002884408801467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023551 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (f1 (n + 1) - f1 n - 1).toNat

end

end A054627.P2337002884408801467

/-!
# A054628: Number of n-bead necklaces with 9 colors.

The programs for A054628, there is no canonical definition to state claims against.
-/

/-! ## A054628.P15083893724157519730

`A075195(eq[7, A025581(n)])`
-/

namespace A054628.P15083893724157519730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054628.P15083893724157519730

/-! ## A054628.P16157172856186559398

`A075195(A000217(n+8)-8)`
-/

namespace A054628.P16157172856186559398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (A000217 (n + 8) - 8).toNat

end

end A054628.P16157172856186559398

/-! ## A054628.P8579883342778930357

`A075195(eq[8, A004736(n+1)])`
-/

namespace A054628.P8579883342778930357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054628.P8579883342778930357

/-! ## A054628.P8091343332026182811

`A075195(A000096(n+6)+n+1)`
-/

namespace A054628.P8091343332026182811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (A000096 (n + 6) + (n + 1 : ℤ)).toNat

end

end A054628.P8091343332026182811

/-! ## A054628.P2709337721614544778

`A075195(2*n+A000217(n+6)+7)`
-/

namespace A054628.P2709337721614544778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 ((2 * n : ℤ) + (A000217 (n + 6) + 7)).toNat

end

end A054628.P2709337721614544778

/-!
# A054629: Number of n-bead necklaces with 10 colors.

The programs for A054629, there is no canonical definition to state claims against.
-/

/-! ## A054629.P8349427241187872631

`A075195(eq[8, A025581(n)])`
-/

namespace A054629.P8349427241187872631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054629.P8349427241187872631

/-! ## A054629.P12148662826171868154

`A075195(A000217(n+9)-9)`
-/

namespace A054629.P12148662826171868154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (A000217 (n + 9) - 9).toNat

end

end A054629.P12148662826171868154

/-! ## A054629.P2219806631796374393

`A075195(A161680(n+10)-9)`
-/

namespace A054629.P2219806631796374393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (A161680 (n + 10) - 9).toNat

end

end A054629.P2219806631796374393

/-! ## A054629.P3111771092450775850

`A075195(eq[9, A004736(n+1)])`
-/

namespace A054629.P3111771092450775850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A054629.P3111771092450775850

/-! ## A054629.P14686236172767590283

`A075195(n+4+A046691(n+6))`
-/

namespace A054629.P14686236172767590283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 ((n + 4 : ℤ) + A046691 (n + 6)).toNat

end

end A054629.P14686236172767590283

/-!
# A054630: T(n,k) = Sum_{d|k} phi(d)*n^(k/d)/k, triangle read by rows, T(n,k) for n >= 1 and 1 <= k <= n.

The programs for A054630, there is no canonical definition to state claims against.
-/

/-! ## A054630.P18397160663053686063

`A054619(n+1)/A002260(n+1)`
-/

namespace A054630.P18397160663053686063
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054619 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ)

end

end A054630.P18397160663053686063

/-! ## A054630.P15497241989405318727

`A054619(n+1)/(A002262(n)+1)`
-/

namespace A054630.P15497241989405318727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054619 (n + 1) : ℚ) / (A002262 n + 1 : ℚ)

end

end A054630.P15497241989405318727

/-! ## A054630.P12811925431966706729

`A054619(n+1)/sqrt(A133819(n+1))`
-/

namespace A054630.P12811925431966706729
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A054619 (n + 1) : ℝ) / Real.sqrt (A133819 (n + 1) : ℝ)

end

end A054630.P12811925431966706729

/-! ## A054630.P12584223503460901511

`A054619(n+1)/A004736(A038722(n+1))`
-/

namespace A054630.P12584223503460901511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054619 (n + 1) : ℚ) / (A004736 (A038722 (n + 1)).toNat : ℚ)

end

end A054630.P12584223503460901511

/-! ## A054630.P102161400368989230

`A075195(A245300(n)+1)`
-/

namespace A054630.P102161400368989230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (A245300 n + 1).toNat

end

end A054630.P102161400368989230

/-! ## A054630.P14497477225349697156

`A054619(n+1)/A000005(A059268(n))`
-/

namespace A054630.P14497477225349697156
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054619 (n + 1) : ℚ) / (A000005 (A059268 n).toNat : ℚ)

end

end A054630.P14497477225349697156

/-!
# A054631: Triangle read by rows: row n (n >= 1) contains the numbers T(n,k) = Sum_{d|n} phi(d)*k^(n/d)/n, for k=1..n.

The programs for A054631, there is no canonical definition to state claims against.
-/

/-! ## A054631.P4240039836593513160

`A054618(n+1)/∑[char[∑[n]]]`
-/

namespace A054631.P4240039836593513160
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054618 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A054631.P4240039836593513160

/-! ## A054631.P15312175959456021577

`floor(A054618(n+1)/A002024(n+1))`
-/

namespace A054631.P15312175959456021577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A054618 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ)⌋

end

end A054631.P15312175959456021577

/-! ## A054631.P698662306019602727

`ceil(A054618(A000027(n+1))/A002024(n+1))`
-/

namespace A054631.P698662306019602727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A054618 (A000027 (n + 1)).toNat : ℚ) / (A002024 (n + 1) : ℚ)⌉

end

end A054631.P698662306019602727

/-! ## A054631.P10710641057065671692

`A075195(A245300(n)+A004736(n+1))`
-/

namespace A054631.P10710641057065671692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075195 (A245300 n + A004736 (n + 1)).toNat

end

end A054631.P10710641057065671692

/-! ## A054631.P16190616888551550866

`(A054618(n+1)/A002024(n+1))%A117855(n+1)`
-/

namespace A054631.P16190616888551550866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A054618 (n + 1) : ℚ) / (A002024 (n + 1) : ℚ))) (A117855 (n + 1))

end

end A054631.P16190616888551550866

/-!
# A054632: Partial sums of A007376.

The programs for A054632, there is no canonical definition to state claims against.
-/

/-! ## A054632.P2350141223513269240

`∑[A007376(n)]`
-/

namespace A054632.P2350141223513269240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054632.P2350141223513269240

/-! ## A054632.P4542715940507056884

`∑[A065649(n)%10]`
-/

namespace A054632.P4542715940507056884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065649 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054632.P4542715940507056884

/-! ## A054632.P7895917468970911317

`A033307(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A054632.P7895917468970911317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A033307 (n - 1) + a (n - 1)

end

end A054632.P7895917468970911317

/-! ## A054632.P12641119600638959687

`A007376(n%(n+1))+a(n-1)` with `a(0)=0`
-/

namespace A054632.P12641119600638959687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007376 (n % (n + 1)) + a (n - 1)

end

end A054632.P12641119600638959687

/-! ## A054632.P4441372185135458928

`∑[A033307(n)]-A033307(n)`
-/

namespace A054632.P4441372185135458928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033307 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A033307 n

end

end A054632.P4441372185135458928

/-! ## A054632.P1398379462138967046

`∑[A261333(n)%10]-A261333(n)%10`
-/

namespace A054632.P1398379462138967046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261333 n) 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - Int.tmod (A261333 n) 10

end

end A054632.P1398379462138967046

/-! ## A054632.P14400937691137308963

`∑[A098727(n+1)-n]-A098727(n+1)`
-/

namespace A054632.P14400937691137308963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098727 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A098727 (n + 1)

end

end A054632.P14400937691137308963

/-! ## A054632.P7966550353884419691

`A007376(A025480(n+n))+a(n-1)` with `a(0)=0`
-/

namespace A054632.P7966550353884419691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A007376 (A025480 (n + n)).toNat + a (n - 1)

end

end A054632.P7966550353884419691

/-! ## A054632.P14730822572899968975

`∑[A108202(2*n)]`
-/

namespace A054632.P14730822572899968975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108202 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054632.P14730822572899968975

/-! ## A054632.P45742479991536704

`∑[A108712(2*n+1)]-A108712(2*n+1)`
-/

namespace A054632.P45742479991536704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108712 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A108712 (2 * n + 1)

end

end A054632.P45742479991536704

/-! ## A054632.P8406196655808839504

`∑[n-A098728((n-1)%(n+1))]`
-/

namespace A054632.P8406196655808839504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A098728 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054632.P8406196655808839504

/-! ## A054632.P16826319668948356625

`A098728(n)+∑[n-A098728(n)]`
-/

namespace A054632.P16826319668948356625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A098728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098728 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054632.P16826319668948356625

/-! ## A054632.P13503563727323140371

`∑[1-A098732(n+1)+n]`
-/

namespace A054632.P13503563727323140371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A098732 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054632.P13503563727323140371

/-!
# A054633: Partial sums of A030190.

The programs for A054633, there is no canonical definition to state claims against.
-/

/-! ## A054633.P2689830733300375480

`∑[A030190(n)]`
-/

namespace A054633.P2689830733300375480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030190 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054633.P2689830733300375480

/-! ## A054633.P13943811965316183929

`∑[1-A030315(n)]`
-/

namespace A054633.P13943811965316183929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A030315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054633.P13943811965316183929

/-! ## A054633.P11367807048796179122

`∑[char[comp[A003607(n)]]]`
-/

namespace A054633.P11367807048796179122
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003607 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054633.P11367807048796179122

/-! ## A054633.P11933208401428317206

`∑[char[A030303(n+1)]]`
-/

namespace A054633.P11933208401428317206
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030303 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054633.P11933208401428317206

/-! ## A054633.P13007884189180916007

`A030302(n)+a(n-1)` with `a(0)=0`
-/

namespace A054633.P13007884189180916007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A030302 n + a (n - 1)

end

end A054633.P13007884189180916007

/-! ## A054633.P5127447786320878149

`∑[char[lt[0, A319954(n)]+1]]`
-/

namespace A054633.P5127447786320878149
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319954 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) < f4 j) n + 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054633.P5127447786320878149

/-! ## A054633.P15066988203915829552

`∑[A030302(n+1)]-A030302(n+1)`
-/

namespace A054633.P15066988203915829552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A030302 (n + 1)

end

end A054633.P15066988203915829552

/-! ## A054633.P9811525462356831673

`∑[A030315(A030303(n+1)*A030315(n))]`
-/

namespace A054633.P9811525462356831673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030315 (A030303 (n + 1) * A030315 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054633.P9811525462356831673

/-!
# A054634: Champernowne sequence: write n in base 8 and juxtapose.

The programs for A054634, there is no canonical definition to state claims against.
-/

/-! ## A054634.P6377604504700861034

`A031035(A028310(n))-A000007(n)`
-/

namespace A054634.P6377604504700861034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A028310 n).toNat - A000007 n

end

end A054634.P6377604504700861034

/-! ## A054634.P18151796984605232095

`A031035(A028310(n))*A057427(n)`
-/

namespace A054634.P18151796984605232095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A028310 n).toNat * A057427 n

end

end A054634.P18151796984605232095

/-! ## A054634.P3987417579457352306

`A031035(A028310(n))+1-A054977(n)`
-/

namespace A054634.P3987417579457352306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A028310 n).toNat + (1 - A054977 n)

end

end A054634.P3987417579457352306

/-! ## A054634.P16260423216868276821

`A031035(A000007(n)+n)-A000007(n)`
-/

namespace A054634.P16260423216868276821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A054634.P16260423216868276821

/-! ## A054634.P1982316965704740055

`A031035(A000038(n)+n)-A000038(n)`
-/

namespace A054634.P1982316965704740055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A000038 n + (n : ℤ)).toNat - A000038 n

end

end A054634.P1982316965704740055

/-! ## A054634.P9471954208085145631

`A031035(gcd(n, A008486(n)))-A000007(n)`
-/

namespace A054634.P9471954208085145631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (Int.gcd (n : ℤ) (A008486 n)) - A000007 n

end

end A054634.P9471954208085145631

/-! ## A054634.P5055932067477007390

`A031035(xor(n, A000007(n)))-A000007(n)`
-/

namespace A054634.P5055932067477007390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (Int.xor (n : ℤ) (A000007 n)).toNat - A000007 n

end

end A054634.P5055932067477007390

/-! ## A054634.P18363892266115570706

`A031035(A065033(2*n))-A000007(n)`
-/

namespace A054634.P18363892266115570706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A065033 (2 * n)).toNat - A000007 n

end

end A054634.P18363892266115570706

/-! ## A054634.P8731168100031489414

`A031035(A123108(2*n))-A000007(n)`
-/

namespace A054634.P8731168100031489414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A123108 (2 * n)).toNat - A000007 n

end

end A054634.P8731168100031489414

/-! ## A054634.P268959958810828693

`A031035(A123108(2*n))*A057427(n)`
-/

namespace A054634.P268959958810828693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A123108 (2 * n)).toNat * A057427 n

end

end A054634.P268959958810828693

/-! ## A054634.P16426390762069781238

`lcm(A031035(A123108(2*n)), A062157(n))`
-/

namespace A054634.P16426390762069781238
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A031035 (A123108 (2 * n)).toNat) (A062157 n)

end

end A054634.P16426390762069781238

/-! ## A054634.P7053682802518670145

`and(A003817(n), A031035(A123108(2*n)))`
-/

namespace A054634.P7053682802518670145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003817 n) (A031035 (A123108 (2 * n)).toNat)

end

end A054634.P7053682802518670145

/-! ## A054634.P6551623096463900280

`A165476(2*n)²*A031035(A065033(2*n))`
-/

namespace A054634.P6551623096463900280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 (2 * n) ^ 2 * A031035 (A065033 (2 * n)).toNat

end

end A054634.P6551623096463900280

/-! ## A054634.P4051404929818396696

`A031035(A123108(2*n))-A008683(A008574(n))`
-/

namespace A054634.P4051404929818396696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A123108 (2 * n)).toNat - A008683 (A008574 n).toNat

end

end A054634.P4051404929818396696

/-! ## A054634.P17621015129064733809

`xor(A000007(3*n), A031035(A065033(2*n)))`
-/

namespace A054634.P17621015129064733809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (3 * n)) (A031035 (A065033 (2 * n)).toNat)

end

end A054634.P17621015129064733809

/-! ## A054634.P6402907268824915071

`A005087(A000040(n+1))*A031035(A065033(2*n))`
-/

namespace A054634.P6402907268824915071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005087 (A000040 (n + 1)).toNat * A031035 (A065033 (2 * n)).toNat

end

end A054634.P6402907268824915071

/-! ## A054634.P7351938031105152278

`A031035(A233583(n+1))-A233583(n+1)+n`
-/

namespace A054634.P7351938031105152278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A233583 (n + 1)).toNat - A233583 (n + 1) + (n : ℤ)

end

end A054634.P7351938031105152278

/-! ## A054634.P3450273516778496350

`A165476(n²)*A031035(A065033(2*n))`
-/

namespace A054634.P3450273516778496350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165476 (n ^ 2) * A031035 (A065033 (2 * n)).toNat

end

end A054634.P3450273516778496350

/-! ## A054634.P7943590029264868465

`A031035(A193739(∑[n]))-C(2, n+2)`
-/

namespace A054634.P7943590029264868465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A193739 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - (Nat.choose 2 (n + 2) : ℤ)

end

end A054634.P7943590029264868465

/-! ## A054634.P8591787777538063020

`A031035(A193739(∑[n]))-A000007(n)`
-/

namespace A054634.P8591787777538063020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A193739 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A000007 n

end

end A054634.P8591787777538063020

/-!
# A054635: Champernowne sequence: write n in base 3 and juxtapose.

The programs for A054635, there is no canonical definition to state claims against.
-/

/-! ## A054635.P1860939509818976755

`a(A003137(n))` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A054635.P1860939509818976755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (A003137 n).toNat

end

end A054635.P1860939509818976755

/-! ## A054635.P7517058682380150280

`2-a(A030351(n))` with `a(0)=0, a(1)=1`
-/

namespace A054635.P7517058682380150280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 - a (A030351 n).toNat

end

end A054635.P7517058682380150280

/-! ## A054635.P9796210825934771448

`A003137(abs(2-n)+2)`
-/

namespace A054635.P9796210825934771448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (|2 - (n : ℤ)| + 2).toNat

end

end A054635.P9796210825934771448

/-! ## A054635.P1340870036652190512

`∑{d}[n, round(#/(n+1))*A003137(#)]`
-/

namespace A054635.P1340870036652190512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway ((d : ℚ) / (n + 1 : ℚ)) * A003137 d

end

end A054635.P1340870036652190512

/-! ## A054635.P12332710295742701567

`A003137(A028310(n))-A000007(n)`
-/

namespace A054635.P12332710295742701567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (A028310 n).toNat - A000007 n

end

end A054635.P12332710295742701567

/-! ## A054635.P13754974040884009837

`A003137(A028310(n))*A057427(n)`
-/

namespace A054635.P13754974040884009837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (A028310 n).toNat * A057427 n

end

end A054635.P13754974040884009837

/-! ## A054635.P13382872440519470318

`A003137(A000007(n)+n)-A000007(n)`
-/

namespace A054635.P13382872440519470318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (A000007 n + (n : ℤ)).toNat - A000007 n

end

end A054635.P13382872440519470318

/-! ## A054635.P6133437353333326522

`∑{d}[n, round(A003137(n)/A328890(#))]`
-/

namespace A054635.P6133437353333326522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway ((A003137 n : ℚ) / (A328890 d : ℚ))

end

end A054635.P6133437353333326522

/-!
# A054636: Partial sums of A054634.

The programs for A054636, there is no canonical definition to state claims against.
-/

/-! ## A054636.P5080859622122350761

`∑[A054634(n)]`
-/

namespace A054636.P5080859622122350761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054636.P5080859622122350761

/-! ## A054636.P13695940501651511570

`A031035(n)+a(n-1)` with `a(0)=0`
-/

namespace A054636.P13695940501651511570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A031035 n + a (n - 1)

end

end A054636.P13695940501651511570

/-! ## A054636.P8422143856467179560

`∑[A031035(A028310(n))]-1`
-/

namespace A054636.P8422143856467179560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054636.P8422143856467179560

/-! ## A054636.P1998277013298107349

`A054634(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A054636.P1998277013298107349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A054634 n + a (A023443 n).toNat

end

end A054636.P1998277013298107349

/-! ## A054636.P5709388512387962211

`∑[A031035(gcd(n, A008486(n)))]-1`
-/

namespace A054636.P5709388512387962211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (Int.gcd (n : ℤ) (A008486 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054636.P5709388512387962211

/-! ## A054636.P18007070491018562800

`∑[A031035(n+1)]-A031035(n+1)`
-/

namespace A054636.P18007070491018562800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A031035 (n + 1)

end

end A054636.P18007070491018562800

/-! ## A054636.P10835772995751209037

`∑[A031035(A028310(n))*A057427(n)]`
-/

namespace A054636.P10835772995751209037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031035 (A028310 n).toNat * A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054636.P10835772995751209037

/-!
# A054637: Partial sums of A054635.

The programs for A054637, there is no canonical definition to state claims against.
-/

/-! ## A054637.P4763585701922189172

`∑[A054635(n)]`
-/

namespace A054637.P4763585701922189172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054635 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054637.P4763585701922189172

/-! ## A054637.P11926240029346106807

`∑[abs(a(A003137(n)))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A054637.P11926240029346106807
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (A003137 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054637.P11926240029346106807

/-! ## A054637.P17835608832126510101

`∑[A003137(abs(2-n)+2)]`
-/

namespace A054637.P17835608832126510101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (|2 - (n : ℤ)| + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054637.P17835608832126510101

/-! ## A054637.P11500155366592254312

`a(n-1)+2-A030351(n)` with `a(0)=0`
-/

namespace A054637.P11500155366592254312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (2 - A030351 n)

end

end A054637.P11500155366592254312

/-! ## A054637.P4820384914319779896

`∑[A003137(A028310(n))]-1`
-/

namespace A054637.P4820384914319779896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054637.P4820384914319779896

/-! ## A054637.P1467620337980076391

`A054635(n)+a(A023443(n))` with `a(0)=0`
-/

namespace A054637.P1467620337980076391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A054635 n + a (A023443 n).toNat

end

end A054637.P1467620337980076391

/-! ## A054637.P14068645221440533600

`∑[A007089(a(A003137(n)))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A054637.P14068645221440533600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  A007089 (f1 (A003137 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054637.P14068645221440533600

/-! ## A054637.P5206740828356766023

`∑[A007376(a(A003137(n)))]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A054637.P5206740828356766023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  A007376 (f1 (A003137 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054637.P5206740828356766023

/-! ## A054637.P14537631859595485152

`∑[A003137(A000007(n)+n)]-1`
-/

namespace A054637.P14537631859595485152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054637.P14537631859595485152

/-! ## A054637.P15311208837877313269

`∑[a(A003137(n))%A000124(n)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A054637.P15311208837877313269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  Int.tmod (f1 (A003137 n).toNat) (A000124 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054637.P15311208837877313269

/-! ## A054637.P8107195392495412425

`∑[A003137(n+1)]-A003137(n+1)`
-/

namespace A054637.P8107195392495412425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A003137 (n + 1)

end

end A054637.P8107195392495412425

/-! ## A054637.P14190999462791023312

`∑[A003137(ceil(A004277(n)/2))]%(n+1)+n`
-/

namespace A054637.P14190999462791023312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003137 ⌈(A004277 n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ) + (n : ℤ)

end

end A054637.P14190999462791023312

/-!
# A054639: Queneau numbers: numbers n such that the Queneau-Daniel permutation {1, 2, 3, ..., n} -> {n, 1, n-1, 2, n-2, 3, ...} is of order n.

The programs for A054639, there is no canonical definition to state claims against.
-/

/-! ## A054639.P12617261827849296141

`(A216371(n+1)-1)/2`
-/

namespace A054639.P12617261827849296141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216371 (n + 1) - 1 : ℚ) / 2

end

end A054639.P12617261827849296141

/-! ## A054639.P9269600400283792924

`floor(A216371(n+1)/2)`
-/

namespace A054639.P9269600400283792924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A216371 (n + 1) : ℚ) / 2⌋

end

end A054639.P9269600400283792924

/-! ## A054639.P2429402458390438728

`∪[A163782(n+1), A014109(n+1)]`
-/

namespace A054639.P2429402458390438728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163782 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054639.P2429402458390438728

/-! ## A054639.P1687720562045359396

`A137606(n+2)-1`
-/

namespace A054639.P1687720562045359396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137606 (n + 2) - 1

end

end A054639.P1687720562045359396

/-! ## A054639.P13070520324787267870

`∑[abs(Δ[A137606(n+1)])]`
-/

namespace A054639.P13070520324787267870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137606 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054639.P13070520324787267870

/-! ## A054639.P1349873370298988803

`(p?[A179538(n+1)]-1)/2`
-/

namespace A054639.P1349873370298988803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179538 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A054639.P1349873370298988803

/-! ## A054639.P17287175143038200542

`(A007885(A009005(n+1))-1)/2`
-/

namespace A054639.P17287175143038200542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007885 (A009005 (n + 1)).toNat - 1 : ℚ) / 2

end

end A054639.P17287175143038200542

/-! ## A054639.P1628904741421822467

`record[A082654(n+2)]`
-/

namespace A054639.P1628904741421822467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054639.P1628904741421822467

/-! ## A054639.P513009323200691369

`eq[n, A003558(n)]`
-/

namespace A054639.P513009323200691369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054639.P513009323200691369

/-! ## A054639.P9718082671145452016

`eq[n, A053447(n)]`
-/

namespace A054639.P9718082671145452016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054639.P9718082671145452016

/-! ## A054639.P12795405436190302715

`eq[1, A141110(n+1)]+1`
-/

namespace A054639.P12795405436190302715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141110 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A054639.P12795405436190302715

/-! ## A054639.P13307910931439058743

`lt[n, A003558(n+1)]+1`
-/

namespace A054639.P13307910931439058743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054639.P13307910931439058743

/-! ## A054639.P17724745006799153579

`lt[n, A053447(n+1)]+1`
-/

namespace A054639.P17724745006799153579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053447 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A054639.P17724745006799153579

/-! ## A054639.P3369400862252606152

`eq[2*n, A055388(n+1)]`
-/

namespace A054639.P3369400862252606152
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054639.P3369400862252606152

/-! ## A054639.P3832161074740226249

`A003970(A137606(n+2))`
-/

namespace A054639.P3832161074740226249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003970 (A137606 (n + 2)).toNat

end

end A054639.P3832161074740226249

/-! ## A054639.P16471145664205076836

`eq[A006694(n), A177704(n)]`
-/

namespace A054639.P16471145664205076836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006694 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177704 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054639.P16471145664205076836

/-! ## A054639.P8465653854777585876

`eq[A003569(n), A225058(n)]`
-/

namespace A054639.P8465653854777585876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003569 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054639.P8465653854777585876

/-! ## A054639.P5291581122803359240

`eq[A026741(n), A302141(n)]`
-/

namespace A054639.P5291581122803359240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302141 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054639.P5291581122803359240

/-! ## A054639.P12406314311029693683

`eq[A225058(n), A302141(n)]`
-/

namespace A054639.P12406314311029693683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225058 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302141 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054639.P12406314311029693683

/-! ## A054639.P12088097277383749750

`eq[A283971(n), A302141(n)]`
-/

namespace A054639.P12088097277383749750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283971 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302141 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054639.P12088097277383749750

/-!
# A054640: a(n) is the sum of the divisors of the n-th primorial: a(n) = A000203(A002110(n)).

The programs for A054640, the canonical program `A054640.P16055093324299340109` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054640 has offset 0).

The definition of A054640 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008864, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054640.P16055093324299340109

`a(n-1)*A008864(n)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054640

/-- `a(n-1)*A008864(n)` -/
def P16055093324299340109.Spec : Prop :=
  ∀ n, P16055093324299340109.a n = A054640 n

theorem P16055093324299340109.correct : P16055093324299340109.Spec := by
  intro n
  simp only [A054640]

end A054640

/-! ## A054640.P5644575553481038270

`A000203(A002110(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A054640.P5644575553481038270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002110 n).toNat

end

end A054640.P5644575553481038270

namespace A054640

/-- `A000203(A002110(n))` -/
def P5644575553481038270.Spec : Prop :=
  ∀ n, P5644575553481038270.a n = A054640 n

end A054640

/-! ## A054640.P3204951651101288048

`∏[eq[n-1, ∑{p}[1-n, #]]]`
-/

namespace A054640.P3204951651101288048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (n : ℤ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n).natAbs, p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054640.P3204951651101288048

namespace A054640

/-- `∏[eq[n-1, ∑{p}[1-n, #]]]` -/
def P3204951651101288048.Spec : Prop :=
  ∀ n, (P3204951651101288048.a n : ℤ) = A054640 n

end A054640

/-! ## A054640.P15836506493163704851

`∑[A339360(n)]`
-/

namespace A054640.P15836506493163704851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054640.P15836506493163704851

namespace A054640

/-- `∑[A339360(n)]` -/
def P15836506493163704851.Spec : Prop :=
  ∀ n, P15836506493163704851.a n = A054640 n

end A054640

/-! ## A054640.P4091562919981852661

`∏[A299763(n+1)]`
-/

namespace A054640.P4091562919981852661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054640.P4091562919981852661

namespace A054640

/-- `∏[A299763(n+1)]` -/
def P4091562919981852661.Spec : Prop :=
  ∀ n, P4091562919981852661.a n = A054640 n

end A054640

/-! ## A054640.P11809402660112957447

`∏[A028815(n)]/2`
-/

namespace A054640.P11809402660112957447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A054640.P11809402660112957447

namespace A054640

/-- `∏[A028815(n)]/2` -/
def P11809402660112957447.Spec : Prop :=
  ∀ n, P11809402660112957447.a n = (A054640 n : ℚ)

end A054640

/-! ## A054640.P6037907224351838393

`record[A337203(n+1)]`
-/

namespace A054640.P6037907224351838393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054640.P6037907224351838393

namespace A054640

/-- `record[A337203(n+1)]` -/
def P6037907224351838393.Spec : Prop :=
  ∀ n, P6037907224351838393.a n = A054640 n

end A054640

/-! ## A054640.P12248990085511003607

`∏[record[A074372(n+1)]]`
-/

namespace A054640.P12248990085511003607
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074372 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054640.P12248990085511003607

namespace A054640

/-- `∏[record[A074372(n+1)]]` -/
def P12248990085511003607.Spec : Prop :=
  ∀ n, P12248990085511003607.a n = A054640 n

end A054640

/-! ## A054640.P3601540355333564861

`∏[record[A207376(n+1)]]`
-/

namespace A054640.P3601540355333564861
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207376 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054640.P3601540355333564861

namespace A054640

/-- `∏[record[A207376(n+1)]]` -/
def P3601540355333564861.Spec : Prop :=
  ∀ n, P3601540355333564861.a n = A054640 n

end A054640

/-! ## A054640.P12046997895365988148

`∏[record[A229022(n+1)]]`
-/

namespace A054640.P12046997895365988148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229022 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A054640.P12046997895365988148

namespace A054640

/-- `∏[record[A229022(n+1)]]` -/
def P12046997895365988148.Spec : Prop :=
  ∀ n, P12046997895365988148.a n = A054640 n

end A054640

/-!
# A054641: GCD of divisor-sum of primorials and primorials itself: a(n) = gcd(A002110(n), A000203(A002110(n))).

The programs for A054641, the canonical program `A054641.P4566716067980896768` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054641 has offset 1).

The definition of A054641 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 190 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054641.P4566716067980896768

`lcm(a(n-1), A023509(n+1))` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A054641

/-- `lcm(a(n-1), A023509(n+1))` -/
def P4566716067980896768.Spec : Prop :=
  ∀ n, (P4566716067980896768.a n : ℤ) = A054641 (n + 1)

theorem P4566716067980896768.correct : P4566716067980896768.Spec := by
  intro n
  simp only [A054641, Nat.add_sub_cancel]

end A054641

/-! ## A054641.P4650980124886868625

`A002110(n+1)/A236436(n+2)`
-/

namespace A054641.P4650980124886868625
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002110 (n + 1) : ℚ) / (A236436 (n + 2) : ℚ)

end

end A054641.P4650980124886868625

namespace A054641

/-- `A002110(n+1)/A236436(n+2)` -/
def P4650980124886868625.Spec : Prop :=
  ∀ n, P4650980124886868625.a n = (A054641 (n + 1) : ℚ)

end A054641

/-! ## A054641.P6548619757605074181

`A054640(n+1)/A236435(n+2)`
-/

namespace A054641.P6548619757605074181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054640 (n + 1) : ℚ) / (A236435 (n + 2) : ℚ)

end

end A054641.P6548619757605074181

namespace A054641

/-- `A054640(n+1)/A236435(n+2)` -/
def P6548619757605074181.Spec : Prop :=
  ∀ n, P6548619757605074181.a n = (A054641 (n + 1) : ℚ)

end A054641

/-! ## A054641.P5146952160676475615

`gcd(A002110(n+1), A054640(n+1))`
-/

namespace A054641.P5146952160676475615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002110 (n + 1)) (A054640 (n + 1))

end

end A054641.P5146952160676475615

namespace A054641

/-- `gcd(A002110(n+1), A054640(n+1))` -/
def P5146952160676475615.Spec : Prop :=
  ∀ n, (P5146952160676475615.a n : ℤ) = A054641 (n + 1)

end A054641

/-! ## A054641.P4367100763701942329

`gcd(A074107(n+1), A074107(n+2))`
-/

namespace A054641.P4367100763701942329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A074107 (n + 1)) (A074107 (n + 2))

end

end A054641.P4367100763701942329

namespace A054641

/-- `gcd(A074107(n+1), A074107(n+2))` -/
def P4367100763701942329.Spec : Prop :=
  ∀ n, (P4367100763701942329.a n : ℤ) = A054641 (n + 1)

end A054641

/-!
# A054642: Distinct values of GCD of divisor sum of primorials and primorial itself: gcd(A002110(n), A000203(A002110(n))).

The programs for A054642, there is no canonical definition to state claims against.
-/

/-! ## A054642.P6145715297174087601

`record[A054641(A003602(n+1))]`
-/

namespace A054642.P6145715297174087601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054641 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054642.P6145715297174087601

/-! ## A054642.P4994460714594689211

`record[A054641(A027750(n+1))]`
-/

namespace A054642.P4994460714594689211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054641 (A027750 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054642.P4994460714594689211

/-! ## A054642.P1832322923618769631

`record[A054641(A332864(n+1))]`
-/

namespace A054642.P1832322923618769631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054641 (A332864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054642.P1832322923618769631

/-! ## A054642.P17973667233552374416

`record[A054641(A334081(n+1))]`
-/

namespace A054642.P17973667233552374416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054641 (A334081 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054642.P17973667233552374416

/-! ## A054642.P4818390890905475216

`∏[A236388(n+1)]^A178334(n)`
-/

namespace A054642.P4818390890905475216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236388 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A178334 n : ℤ)

end

end A054642.P4818390890905475216

/-! ## A054642.P12764204559678742553

`record[A054641(n+1)%A054641(n+2)]`
-/

namespace A054642.P12764204559678742553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054641 (n + 1)) (A054641 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054642.P12764204559678742553

/-!
# A054643: Primes prime(n) such that prime(n) + prime(n+1) + prime(n+2) == 0 (mod 3).

The programs for A054643, the canonical program `A054643.P5809740023025136968` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054643 has offset 1).

The definition of A054643 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054643.P5314179154851384272

`A000040(A075541(n+1))`
-/

namespace A054643.P5314179154851384272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A075541 (n + 1)).toNat

end

end A054643.P5314179154851384272

namespace A054643

/-- `A000040(A075541(n+1))` -/
def P5314179154851384272.Spec : Prop :=
  ∀ n, P5314179154851384272.a n = A054643 (n + 1)

end A054643

/-! ## A054643.P6304103285847233805

`A008578(A075541(n+1)+1)`
-/

namespace A054643.P6304103285847233805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A075541 (n + 1) + 1).toNat

end

end A054643.P6304103285847233805

namespace A054643

/-- `A008578(A075541(n+1)+1)` -/
def P6304103285847233805.Spec : Prop :=
  ∀ n, P6304103285847233805.a n = A054643 (n + 1)

end A054643

/-! ## A054643.P10320488615424495080

`A182986(A075541(n+1)+1)`
-/

namespace A054643.P10320488615424495080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A075541 (n + 1) + 1).toNat

end

end A054643.P10320488615424495080

namespace A054643

/-- `A182986(A075541(n+1)+1)` -/
def P10320488615424495080.Spec : Prop :=
  ∀ n, P10320488615424495080.a n = A054643 (n + 1)

end A054643

/-! ## A054643.P5757180983454256733

`A065091(A075541(n+1)-1)`
-/

namespace A054643.P5757180983454256733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A075541 (n + 1) - 1).toNat

end

end A054643.P5757180983454256733

namespace A054643

/-- `A065091(A075541(n+1)-1)` -/
def P5757180983454256733.Spec : Prop :=
  ∀ n, P5757180983454256733.a n = A054643 (n + 1)

end A054643

/-! ## A054643.P3742598802331833007

`A158611(A075541(n+1)+2)`
-/

namespace A054643.P3742598802331833007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A075541 (n + 1) + 2).toNat

end

end A054643.P3742598802331833007

namespace A054643

/-- `A158611(A075541(n+1)+2)` -/
def P3742598802331833007.Spec : Prop :=
  ∀ n, P3742598802331833007.a n = A054643 (n + 1)

end A054643

/-! ## A054643.P15271511531449504390

`∑{d}[A075541(n+1), A007444(#)]`
-/

namespace A054643.P15271511531449504390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A054643.P15271511531449504390

namespace A054643

/-- `∑{d}[A075541(n+1), A007444(#)]` -/
def P15271511531449504390.Spec : Prop :=
  ∀ n, P15271511531449504390.a n = A054643 (n + 1)

end A054643

/-! ## A054643.P5809740023025136968

`A000040(eq[6, gcd(6, A036263(n+1))]+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A054643

/-- `A000040(eq[6, gcd(6, A036263(n+1))]+1)` -/
def P5809740023025136968.Spec : Prop :=
  ∀ n, P5809740023025136968.a n = A054643 (n + 1)

theorem P5809740023025136968.correct : P5809740023025136968.Spec := by
  intro n
  simp only [A054643, Nat.add_sub_cancel]

end A054643

/-! ## A054643.P16655827014839776240

`A006005(gcd(n, n+1)*A075541(n+1))`
-/

namespace A054643.P16655827014839776240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 ((Nat.gcd n (n + 1) : ℤ) * A075541 (n + 1)).toNat

end

end A054643.P16655827014839776240

namespace A054643

/-- `A006005(gcd(n, n+1)*A075541(n+1))` -/
def P16655827014839776240.Spec : Prop :=
  ∀ n, P16655827014839776240.a n = A054643 (n + 1)

end A054643

/-! ## A054643.P14003688479870506999

`A073846(2*A075541(n+1))`
-/

namespace A054643.P14003688479870506999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (2 * A075541 (n + 1)).toNat

end

end A054643.P14003688479870506999

namespace A054643

/-- `A073846(2*A075541(n+1))` -/
def P14003688479870506999.Spec : Prop :=
  ∀ n, P14003688479870506999.a n = A054643 (n + 1)

end A054643

/-! ## A054643.P301031024763253812

`A006093(A075541(n+1))+A007318(∑[n])`
-/

namespace A054643.P301031024763253812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A075541 (n + 1)).toNat + A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A054643.P301031024763253812

namespace A054643

/-- `A006093(A075541(n+1))+A007318(∑[n])` -/
def P301031024763253812.Spec : Prop :=
  ∀ n, P301031024763253812.a n = A054643 (n + 1)

end A054643

/-!
# A054644: Number of labeled pure 2-complexes on n nodes with 3 2-simplexes.

The programs for A054644, the canonical program `A054644.P4714509299412680084` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054644 has offset 4).

The definition of A054644 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054644.P4714509299412680084

`C(C(n+4, 3), 3)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054644

/-- `C(C(n+4, 3), 3)` -/
def P4714509299412680084.Spec : Prop :=
  ∀ n, (P4714509299412680084.a n : ℤ) = A054644 (n + 4)

theorem P4714509299412680084.correct : P4714509299412680084.Spec := by
  intro n
  simp only [A054644, Nat.add_sub_cancel]

end A054644

/-! ## A054644.P17973567228351048287

`C(A062748(n)+1, 3)`
-/

namespace A054644.P17973567228351048287
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A062748 n + 1).toNat 3

end

end A054644.P17973567228351048287

namespace A054644

/-- `C(A062748(n)+1, 3)` -/
def P17973567228351048287.Spec : Prop :=
  ∀ n, (P17973567228351048287.a n : ℤ) = A054644 (n + 4)

end A054644

/-! ## A054644.P9211038167591626989

`C(A092286(n)+4, 3)`
-/

namespace A054644.P9211038167591626989
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A092286 n + 4).toNat 3

end

end A054644.P9211038167591626989

namespace A054644

/-- `C(A092286(n)+4, 3)` -/
def P9211038167591626989.Spec : Prop :=
  ∀ n, (P9211038167591626989.a n : ℤ) = A054644 (n + 4)

end A054644

/-! ## A054644.P4547035714630992569

`C(A000292(n+2), 3)`
-/

namespace A054644.P4547035714630992569
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000292 (n + 2)).toNat 3

end

end A054644.P4547035714630992569

namespace A054644

/-- `C(A000292(n+2), 3)` -/
def P4547035714630992569.Spec : Prop :=
  ∀ n, (P4547035714630992569.a n : ℤ) = A054644 (n + 4)

end A054644

/-! ## A054644.P5781373195023702725

`C(Δ[A063258(n)-A062748(n)], 3)`
-/

namespace A054644.P5781373195023702725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063258 n - A062748 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (f1 (n + 1) - f1 n).toNat 3

end

end A054644.P5781373195023702725

namespace A054644

/-- `C(Δ[A063258(n)-A062748(n)], 3)` -/
def P5781373195023702725.Spec : Prop :=
  ∀ n, (P5781373195023702725.a n : ℤ) = A054644 (n + 4)

end A054644

/-! ## A054644.P12528132704093186972

`A140236(n+2)-A000292(n+2)²`
-/

namespace A054644.P12528132704093186972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140236 (n + 2) - A000292 (n + 2) ^ 2

end

end A054644.P12528132704093186972

namespace A054644

/-- `A140236(n+2)-A000292(n+2)²` -/
def P12528132704093186972.Spec : Prop :=
  ∀ n, P12528132704093186972.a n = A054644 (n + 4)

end A054644

/-! ## A054644.P6829847177345765163

`C(A007318(Δ[A264443(n)]), 3)`
-/

namespace A054644.P6829847177345765163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A007318 (f1 (n + 1) - f1 n).toNat).toNat 3

end

end A054644.P6829847177345765163

namespace A054644

/-- `C(A007318(Δ[A264443(n)]), 3)` -/
def P6829847177345765163.Spec : Prop :=
  ∀ n, (P6829847177345765163.a n : ℤ) = A054644 (n + 4)

end A054644

/-!
# A054646: Smallest number to give 2^(2n) in a hailstone (or 3x + 1) sequence.

The programs for A054646, there is no canonical definition to state claims against.
-/

/-! ## A054646.P13697788723946698731

`A347668(comp[A091840(n+1)]+1)`
-/

namespace A054646.P13697788723946698731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091840 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347668 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A054646.P13697788723946698731

/-! ## A054646.P11347924535673355124

`record[A347668(A302785(2*n+1)+1)]`
-/

namespace A054646.P11347924535673355124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347668 (A302785 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054646.P11347924535673355124

/-! ## A054646.P2203144428368818844

`A347668(lt[A347676(2*n+5), A347669(n)])`
-/

namespace A054646.P2203144428368818844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347676 (2 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347669 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347668 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A054646.P2203144428368818844

/-! ## A054646.P10084974614972945499

`A347668(lt[A347658(3*n+4), A347648(n+1)])`
-/

namespace A054646.P10084974614972945499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347658 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347648 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347668 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A054646.P10084974614972945499

/-!
# A054650: Nearest integer to 2^(n-1)/n.

The programs for A054650, the canonical program `A054650.P7660162796065328419` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054650 has offset 1).

The definition of A054650 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054650.P7660162796065328419

`floor(2^n/(n+1)+1/2)`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054650

/-- `floor(2^n/(n+1)+1/2)` -/
def P7660162796065328419.Spec : Prop :=
  ∀ n, P7660162796065328419.a n = A054650 (n + 1)

theorem P7660162796065328419.correct : P7660162796065328419.Spec := by
  intro n
  simp only [A054650, Nat.add_sub_cancel]

end A054650

/-! ## A054650.P4931607536438568432

`A323547(n+1)+A006788(n+1)`
-/

namespace A054650.P4931607536438568432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323547 (n + 1) + A006788 (n + 1)

end

end A054650.P4931607536438568432

namespace A054650

/-- `A323547(n+1)+A006788(n+1)` -/
def P4931607536438568432.Spec : Prop :=
  ∀ n, P4931607536438568432.a n = A054650 (n + 1)

end A054650

/-! ## A054650.P8502669206668947500

`ceil(A000799(n+1)/2)`
-/

namespace A054650.P8502669206668947500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000799 (n + 1) : ℚ) / 2⌉

end

end A054650.P8502669206668947500

namespace A054650

/-- `ceil(A000799(n+1)/2)` -/
def P8502669206668947500.Spec : Prop :=
  ∀ n, P8502669206668947500.a n = A054650 (n + 1)

end A054650

/-! ## A054650.P4232484773729213159

`ceil(A082482(n+1)/2)`
-/

namespace A054650.P4232484773729213159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A082482 (n + 1) : ℚ) / 2⌉

end

end A054650.P4232484773729213159

namespace A054650

/-- `ceil(A082482(n+1)/2)` -/
def P4232484773729213159.Spec : Prop :=
  ∀ n, P4232484773729213159.a n = A054650 (n + 1)

end A054650

/-! ## A054650.P18171780600586478527

`A000799(n+1)-A006788(n+1)`
-/

namespace A054650.P18171780600586478527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000799 (n + 1) - A006788 (n + 1)

end

end A054650.P18171780600586478527

namespace A054650

/-- `A000799(n+1)-A006788(n+1)` -/
def P18171780600586478527.Spec : Prop :=
  ∀ n, P18171780600586478527.a n = A054650 (n + 1)

end A054650

/-! ## A054650.P13267706864988004117

`A053638(n+1)-A053637(n+1)`
-/

namespace A054650.P13267706864988004117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053638 (n + 1) - A053637 (n + 1)

end

end A054650.P13267706864988004117

namespace A054650

/-- `A053638(n+1)-A053637(n+1)` -/
def P13267706864988004117.Spec : Prop :=
  ∀ n, P13267706864988004117.a n = A054650 (n + 1)

end A054650

/-! ## A054650.P311792954075437247

`A082482(n+1)+1-A053637(n+1)`
-/

namespace A054650.P311792954075437247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082482 (n + 1) + (1 - A053637 (n + 1))

end

end A054650.P311792954075437247

namespace A054650

/-- `A082482(n+1)+1-A053637(n+1)` -/
def P311792954075437247.Spec : Prop :=
  ∀ n, P311792954075437247.a n = A054650 (n + 1)

end A054650

/-! ## A054650.P6167266512282209737

`ceil(A084174(n)/(n+1))`
-/

namespace A054650.P6167266512282209737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A084174 n : ℚ) / (n + 1 : ℚ)⌉

end

end A054650.P6167266512282209737

namespace A054650

/-- `ceil(A084174(n)/(n+1))` -/
def P6167266512282209737.Spec : Prop :=
  ∀ n, P6167266512282209737.a n = A054650 (n + 1)

end A054650

/-! ## A054650.P285202486484072420

`round(A000295(n)/(n+1))+1`
-/

namespace A054650.P285202486484072420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000295 n : ℚ) / (n + 1 : ℚ)) + 1

end

end A054650.P285202486484072420

namespace A054650

/-- `round(A000295(n)/(n+1))+1` -/
def P285202486484072420.Spec : Prop :=
  ∀ n, P285202486484072420.a n = A054650 (n + 1)

end A054650

/-! ## A054650.P11274290974260317084

`round(∑[A011782(n)-1]/(n+1))+1`
-/

namespace A054650.P11274290974260317084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ)) + 1

end

end A054650.P11274290974260317084

namespace A054650

/-- `round(∑[A011782(n)-1]/(n+1))+1` -/
def P11274290974260317084.Spec : Prop :=
  ∀ n, P11274290974260317084.a n = A054650 (n + 1)

end A054650

/-! ## A054650.P13102844729633017887

`floor(∑[A000225(n)]/(2*(n+1)))+1`
-/

namespace A054650.P13102844729633017887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (2 * (n + 1) : ℚ)⌋ + 1

end

end A054650.P13102844729633017887

namespace A054650

/-- `floor(∑[A000225(n)]/(2*(n+1)))+1` -/
def P13102844729633017887.Spec : Prop :=
  ∀ n, P13102844729633017887.a n = A054650 (n + 1)

end A054650

/-!
# A054651: Triangle T(n,k) read by rows giving coefficients in expansion of n! * Sum_{i=0..n} C(x,i) in descending powers of x.

The programs for A054651, there is no canonical definition to state claims against.
-/

/-! ## A054651.P9571504865850786529

`A190782(A002378(n)%A080036(n))`
-/

namespace A054651.P9571504865850786529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (Int.tmod (A002378 n) (A080036 n)).toNat

end

end A054651.P9571504865850786529

/-! ## A054651.P18288193743764391611

`A190782(A061579(n))`
-/

namespace A054651.P18288193743764391611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (A061579 n).toNat

end

end A054651.P18288193743764391611

/-! ## A054651.P17461235659351243714

`A190782(A114327(n)+n)`
-/

namespace A054651.P17461235659351243714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (A114327 n + (n : ℤ)).toNat

end

end A054651.P17461235659351243714

/-! ## A054651.P1192069972938923377

`A190782(A038722(n+1)-1)`
-/

namespace A054651.P1192069972938923377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (A038722 (n + 1) - 1).toNat

end

end A054651.P1192069972938923377

/-! ## A054651.P5794529674125757349

`A190782(A005563(A003056(n))-n)`
-/

namespace A054651.P5794529674125757349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (A005563 (A003056 n).toNat - (n : ℤ)).toNat

end

end A054651.P5794529674125757349

/-! ## A054651.P3612329776302322057

`A190782(A259361(A038722(n+1)²))`
-/

namespace A054651.P3612329776302322057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190782 (A259361 (A038722 (n + 1) ^ 2).toNat).toNat

end

end A054651.P3612329776302322057

/-!
# A054652: Number of acyclic orientations of the Hamming graph (K_2) x (K_n).

The programs for A054652, the canonical program `A054652.P17368560212762667573` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054652 has offset 0).

The definition of A054652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054652.P17368560212762667573

`n!*A002720(n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A054652

/-- `n!*A002720(n)` -/
def P17368560212762667573.Spec : Prop :=
  ∀ n, P17368560212762667573.a n = A054652 n

theorem P17368560212762667573.correct : P17368560212762667573.Spec := by
  intro n
  simp only [A054652]

end A054652

/-! ## A054652.P1226371138995752311

`(A097662(n)+1)*n!`
-/

namespace A054652.P1226371138995752311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A097662 n + 1) * (Nat.factorial n : ℤ)

end

end A054652.P1226371138995752311

namespace A054652

/-- `(A097662(n)+1)*n!` -/
def P1226371138995752311.Spec : Prop :=
  ∀ n, P1226371138995752311.a n = A054652 n

end A054652

/-! ## A054652.P5432992310716403770

`n!*A176120(∑[n]+n)`
-/

namespace A054652.P5432992310716403770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A176120 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A054652.P5432992310716403770

namespace A054652

/-- `n!*A176120(∑[n]+n)` -/
def P5432992310716403770.Spec : Prop :=
  ∀ n, P5432992310716403770.a n = A054652 n

end A054652

/-! ## A054652.P3933803576221897358

`(A317094(n)-(n+1)²)*n!`
-/

namespace A054652.P3933803576221897358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A317094 n - ((n + 1) ^ 2 : ℤ)) * (Nat.factorial n : ℤ)

end

end A054652.P3933803576221897358

namespace A054652

/-- `(A317094(n)-(n+1)²)*n!` -/
def P3933803576221897358.Spec : Prop :=
  ∀ n, P3933803576221897358.a n = A054652 n

end A054652

/-! ## A054652.P15564063286916945116

`record[A288268(n)]/(n+1)*n!`
-/

namespace A054652.P15564063286916945116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288268 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ) * (Nat.factorial n : ℚ)

end

end A054652.P15564063286916945116

namespace A054652

/-- `record[A288268(n)]/(n+1)*n!` -/
def P15564063286916945116.Spec : Prop :=
  ∀ n, P15564063286916945116.a n = (A054652 n : ℚ)

end A054652

/-!
# A054654: Triangle of Stirling numbers of 1st kind, S(n, n-k), n >= 0, 0 <= k <= n.

The programs for A054654, there is no canonical definition to state claims against.
-/

/-! ## A054654.P9685772236290287049

`A154843(n)-A048994(n)`
-/

namespace A054654.P9685772236290287049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154843 n - A048994 n

end

end A054654.P9685772236290287049

/-! ## A054654.P5271088875487324003

`A048994(∑[char[∑[n]]]²-(n+1))`
-/

namespace A054654.P5271088875487324003
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A054654.P5271088875487324003

/-! ## A054654.P16230166046888549055

`and(1, n+1)!*A048994(A061579(n))`
-/

namespace A054654.P16230166046888549055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 (n + 1)) : ℤ) * A048994 (A061579 n).toNat

end

end A054654.P16230166046888549055

/-! ## A054654.P6147600036927247207

`char[xor(1, n)]*A048994(A038722(n+1)-1)`
-/

namespace A054654.P6147600036927247207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) * A048994 (A038722 (n + 1) - 1).toNat

end

end A054654.P6147600036927247207

/-! ## A054654.P7773911831819972979

`A048994(A061579(n))*A124625(2*n)`
-/

namespace A054654.P7773911831819972979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A061579 n).toNat * A124625 (2 * n)

end

end A054654.P7773911831819972979

/-! ## A054654.P4487276843981551408

`A048994(A038722(n+1)-1)+A000007(n+1)`
-/

namespace A054654.P4487276843981551408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A038722 (n + 1) - 1).toNat + A000007 (n + 1)

end

end A054654.P4487276843981551408

/-! ## A054654.P665377691139686727

`A048994(A038722(n+1)-1)+A000035(2*n)`
-/

namespace A054654.P665377691139686727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A038722 (n + 1) - 1).toNat + A000035 (2 * n)

end

end A054654.P665377691139686727

/-! ## A054654.P11344435865931812583

`A006519(2*n+1)*A048994(A038722(n+1)-1)`
-/

namespace A054654.P11344435865931812583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (2 * n + 1) * A048994 (A038722 (n + 1) - 1).toNat

end

end A054654.P11344435865931812583

/-! ## A054654.P8333837187441264643

`A048994(A061579(n))*A160377(A000977(n+1))`
-/

namespace A054654.P8333837187441264643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A061579 n).toNat * A160377 (A000977 (n + 1)).toNat

end

end A054654.P8333837187441264643

/-! ## A054654.P6788597341632302265

`A007875(A014963(n+2))*A048994(A061579(n))`
-/

namespace A054654.P6788597341632302265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007875 (A014963 (n + 2)).toNat * A048994 (A061579 n).toNat

end

end A054654.P6788597341632302265

/-! ## A054654.P3703509821023690638

`A001221(A007918(n))*A048994(A038722(n+1)-1)`
-/

namespace A054654.P3703509821023690638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A007918 n).toNat * A048994 (A038722 (n + 1) - 1).toNat

end

end A054654.P3703509821023690638

/-! ## A054654.P2970741438320380291

`A048994(A038722(n+2))+A000007(n)`
-/

namespace A054654.P2970741438320380291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048994 (A038722 (n + 2)).toNat + A000007 n

end

end A054654.P2970741438320380291

/-! ## A054654.P6851526550438834854

`A048994(A061579(n))^A014963(A100484(n+1))`
-/

namespace A054654.P6851526550438834854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048994 (A061579 n).toNat : ℚ) ^ (A014963 (A100484 (n + 1)).toNat : ℤ)

end

end A054654.P6851526550438834854

/-! ## A054654.P16359744195267521454

`A007318(A000217(n))*A048994(A038722(n+1)-1)`
-/

namespace A054654.P16359744195267521454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A048994 (A038722 (n + 1) - 1).toNat

end

end A054654.P16359744195267521454

/-!
# A054656: Number of primes <= n which do not appear in any partitions of n into distinct primes.

The programs for A054656, there is no canonical definition to state claims against.
-/

/-! ## A054656.P16812372919515788641

`A292377(A112032(n+1)*A188298(n+1))`
-/

namespace A054656.P16812372919515788641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (A112032 (n + 1) * A188298 (n + 1)).toNat

end

end A054656.P16812372919515788641

/-! ## A054656.P1138867077737645653

`A292377(A188298(n+1)%A292353(n+1))`
-/

namespace A054656.P1138867077737645653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292377 (Int.tmod (A188298 (n + 1)) (A292353 (n + 1))).toNat

end

end A054656.P1138867077737645653

/-! ## A054656.P5860647452571868340

`A194291(A000079(n))%A005041(n)`
-/

namespace A054656.P5860647452571868340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194291 (A000079 n).toNat) (A005041 n)

end

end A054656.P5860647452571868340

/-! ## A054656.P17593383760042695727

`A194291(A112032(2*n+1))%A005041(n)`
-/

namespace A054656.P17593383760042695727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A194291 (A112032 (2 * n + 1)).toNat) (A005041 n)

end

end A054656.P17593383760042695727

/-! ## A054656.P15367523796094486139

`A332898(lt[A332889(n+3), A332887(3*n+4)])`
-/

namespace A054656.P15367523796094486139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332889 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332887 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332898 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A054656.P15367523796094486139

/-!
# A054657: Number of leaves on the rooted tree of height n constructed by the following rule. Assign weight 1 to the single node at height 1. At each node of weight w at height k>0, branch to nodes at height k+1 as follows: one node of weight 1 and a node of weight d+1 if d divides w.

The programs for A054657, there is no canonical definition to state claims against.
-/

/-! ## A054657.P9222231593875053261

`A123108(A291019(n)+A000930(n))`
-/

namespace A054657.P9222231593875053261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A291019 n + A000930 n).toNat

end

end A054657.P9222231593875053261

/-! ## A054657.P7384879904364844573

`A091972(A340824(n+2))`
-/

namespace A054657.P7384879904364844573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091972 (A340824 (n + 2)).toNat

end

end A054657.P7384879904364844573

/-! ## A054657.P11194067736119913197

`A368830(n)+A127911(n)`
-/

namespace A054657.P11194067736119913197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368830 n + A127911 n

end

end A054657.P11194067736119913197

/-!
# A054658: Primes beginning 1, 3, 7, 9 whose reversals are nonprimes.

The programs for A054658, there is no canonical definition to state claims against.
-/

/-! ## A054658.P6718985095166033988

`∩[A076056(n+1), A082768(n+1)]`
-/

namespace A054658.P6718985095166033988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054658.P6718985095166033988

/-! ## A054658.P7642144218228471805

`∩[A045707(n+1), A151768(n+1)]`
-/

namespace A054658.P7642144218228471805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054658.P7642144218228471805

/-! ## A054658.P11693855256273394992

`∩[A151768(n+1), A206287(n+1)]`
-/

namespace A054658.P11693855256273394992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206287 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054658.P11693855256273394992

/-! ## A054658.P166621362710877244

`∩[A076056(n+1), A306661(n+1)]`
-/

namespace A054658.P166621362710877244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076056 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054658.P166621362710877244

/-! ## A054658.P10104646143925939645

`∩[A151768(n+1), A306661(n+1)]`
-/

namespace A054658.P10104646143925939645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151768 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306661 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A054658.P10104646143925939645

/-!
# A054659: Increasing sequence with no repeating digits and no digits shared with previous term.

The programs for A054659, there is no canonical definition to state claims against.
-/

/-! ## A054659.P1144429176729826411

`eq[A217657(n), A326075(A207242(n+1))]`
-/

namespace A054659.P1144429176729826411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217657 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326075 (A207242 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054659.P1144429176729826411

/-! ## A054659.P5079543658973288782

`lt[A356850(n+1), 14]`
-/

namespace A054659.P5079543658973288782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356850 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A054659.P5079543658973288782

/-! ## A054659.P3642016331715754499

`lt[A094339(round(acot(n)+n)), 13]`
-/

namespace A054659.P3642016331715754499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A054659.P3642016331715754499

/-! ## A054659.P2127852571559876973

`lt[A094339(round(sqrt(n²+1))), 13]`
-/

namespace A054659.P2127852571559876973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094339 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A054659.P2127852571559876973

/-! ## A054659.P2783530178229926126

`A108652(A185213(n+1)+n)`
-/

namespace A054659.P2783530178229926126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108652 (A185213 (n + 1) + (n : ℤ)).toNat

end

end A054659.P2783530178229926126

/-!
# A054660: Number of monic irreducible polynomials over GF(4) of degree n with fixed nonzero trace.

The programs for A054660, the canonical program `A054660.P3114102110537347178` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054660 has offset 1).

The definition of A054660 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000048, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A054660.P3114102110537347178

`A000048(2*(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A054660

/-- `A000048(2*(n+1))` -/
def P3114102110537347178.Spec : Prop :=
  ∀ n, P3114102110537347178.a n = A054660 (n + 1)

theorem P3114102110537347178.correct : P3114102110537347178.Spec := by
  intro n
  simp only [A054660, Nat.add_sub_cancel]

end A054660

/-! ## A054660.P4147435100164379755

`A074033(n+1)+A074034(n+1)+2*A074035(n+1)`
-/

namespace A054660.P4147435100164379755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074033 (n + 1) + A074034 (n + 1) + 2 * A074035 (n + 1)

end

end A054660.P4147435100164379755

namespace A054660

/-- `A074033(n+1)+A074034(n+1)+2*A074035(n+1)` -/
def P4147435100164379755.Spec : Prop :=
  ∀ n, P4147435100164379755.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P18350916327137944981

`A074406(n+1)+A074407(n+1)+A074408(n+1)+A074409(n+1)`
-/

namespace A054660.P18350916327137944981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074406 (n + 1) + A074407 (n + 1) + A074408 (n + 1) + A074409 (n + 1)

end

end A054660.P18350916327137944981

namespace A054660

/-- `A074406(n+1)+A074407(n+1)+A074408(n+1)+A074409(n+1)` -/
def P18350916327137944981.Spec : Prop :=
  ∀ n, P18350916327137944981.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P18062642735800552024

`A056303(2*(n+1))`
-/

namespace A054660.P18062642735800552024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056303 (2 * (n + 1))

end

end A054660.P18062642735800552024

namespace A054660

/-- `A056303(2*(n+1))` -/
def P18062642735800552024.Spec : Prop :=
  ∀ n, P18062642735800552024.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P1822960729716914186

`A064355(2*(n+1))/2`
-/

namespace A054660.P1822960729716914186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064355 (2 * (n + 1)) : ℚ) / 2

end

end A054660.P1822960729716914186

namespace A054660

/-- `A064355(2*(n+1))/2` -/
def P1822960729716914186.Spec : Prop :=
  ∀ n, P1822960729716914186.a n = (A054660 (n + 1) : ℚ)

end A054660

/-! ## A054660.P2682465399020837782

`∑{d}[2*n+3, A054174(#-1)]`
-/

namespace A054660.P2682465399020837782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054174 (d - 1)

end

end A054660.P2682465399020837782

namespace A054660

/-- `∑{d}[2*n+3, A054174(#-1)]` -/
def P2682465399020837782.Spec : Prop :=
  ∀ n, P2682465399020837782.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P15885158335594102731

`record[A000048(A014681(n))]`
-/

namespace A054660.P15885158335594102731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054660.P15885158335594102731

namespace A054660

/-- `record[A000048(A014681(n))]` -/
def P15885158335594102731.Spec : Prop :=
  ∀ n, P15885158335594102731.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P4665377253055488548

`record[A000048(A153733(n))]`
-/

namespace A054660.P4665377253055488548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054660.P4665377253055488548

namespace A054660

/-- `record[A000048(A153733(n))]` -/
def P4665377253055488548.Spec : Prop :=
  ∀ n, P4665377253055488548.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P7517273718972741790

`record[A000048(A237420(n))]`
-/

namespace A054660.P7517273718972741790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054660.P7517273718972741790

namespace A054660

/-- `record[A000048(A237420(n))]` -/
def P7517273718972741790.Spec : Prop :=
  ∀ n, P7517273718972741790.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P5876949850661218674

`record[A000048(n*A102560(2*n))]`
-/

namespace A054660.P5876949850661218674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 ((n : ℤ) * A102560 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054660.P5876949850661218674

namespace A054660

/-- `record[A000048(n*A102560(2*n))]` -/
def P5876949850661218674.Spec : Prop :=
  ∀ n, P5876949850661218674.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P11315797421207341675

`2*A054664(n+1)-A054661(n+1)`
-/

namespace A054660.P11315797421207341675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A054664 (n + 1) - A054661 (n + 1)

end

end A054660.P11315797421207341675

namespace A054660

/-- `2*A054664(n+1)-A054661(n+1)` -/
def P11315797421207341675.Spec : Prop :=
  ∀ n, P11315797421207341675.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P13541347915072551817

`A042982(2*(n+1))+A042981(2*(n+1))`
-/

namespace A054660.P13541347915072551817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042982 (2 * (n + 1)) + A042981 (2 * (n + 1))

end

end A054660.P13541347915072551817

namespace A054660

/-- `A042982(2*(n+1))+A042981(2*(n+1))` -/
def P13541347915072551817.Spec : Prop :=
  ∀ n, P13541347915072551817.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P5207350611956135890

`A045686(2*(n+1))+A045683(2*(n+1))`
-/

namespace A054660.P5207350611956135890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045686 (2 * (n + 1)) + A045683 (2 * (n + 1))

end

end A054660.P5207350611956135890

namespace A054660

/-- `A045686(2*(n+1))+A045683(2*(n+1))` -/
def P5207350611956135890.Spec : Prop :=
  ∀ n, P5207350611956135890.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P16610027632559428784

`A074029(2*(n+1))+A042981(2*(n+1))`
-/

namespace A054660.P16610027632559428784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074029 (2 * (n + 1)) + A042981 (2 * (n + 1))

end

end A054660.P16610027632559428784

namespace A054660

/-- `A074029(2*(n+1))+A042981(2*(n+1))` -/
def P16610027632559428784.Spec : Prop :=
  ∀ n, P16610027632559428784.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P1573264495151073213

`A074030(2*(n+1))+A042982(2*(n+1))`
-/

namespace A054660.P1573264495151073213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074030 (2 * (n + 1)) + A042982 (2 * (n + 1))

end

end A054660.P1573264495151073213

namespace A054660

/-- `A074030(2*(n+1))+A042982(2*(n+1))` -/
def P1573264495151073213.Spec : Prop :=
  ∀ n, P1573264495151073213.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P13075309132476202694

`A074030(2*(n+1))+A074029(2*(n+1))`
-/

namespace A054660.P13075309132476202694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074030 (2 * (n + 1)) + A074029 (2 * (n + 1))

end

end A054660.P13075309132476202694

namespace A054660

/-- `A074030(2*(n+1))+A074029(2*(n+1))` -/
def P13075309132476202694.Spec : Prop :=
  ∀ n, P13075309132476202694.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P5970888816373577050

`A000016(2*(n+1))-A053734(2*(n+1))`
-/

namespace A054660.P5970888816373577050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000016 (2 * (n + 1)) - A053734 (2 * (n + 1))

end

end A054660.P5970888816373577050

namespace A054660

/-- `A000016(2*(n+1))-A053734(2*(n+1))` -/
def P5970888816373577050.Spec : Prop :=
  ∀ n, P5970888816373577050.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P10339160980475854322

`A059966(2*(n+1))-A051841(2*(n+1))`
-/

namespace A054660.P10339160980475854322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (2 * (n + 1)) - A051841 (2 * (n + 1))

end

end A054660.P10339160980475854322

namespace A054660

/-- `A059966(2*(n+1))-A051841(2*(n+1))` -/
def P10339160980475854322.Spec : Prop :=
  ∀ n, P10339160980475854322.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P10571343047364392707

`A000013(2*(n+1))-A115118(2*(n+1))`
-/

namespace A054660.P10571343047364392707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000013 (2 * (n + 1)) - A115118 (2 * (n + 1))

end

end A054660.P10571343047364392707

namespace A054660

/-- `A000013(2*(n+1))-A115118(2*(n+1))` -/
def P10571343047364392707.Spec : Prop :=
  ∀ n, P10571343047364392707.a n = A054660 (n + 1)

end A054660

/-! ## A054660.P14096735799524194041

`A173278(2*(n+1))-A173278(2*n+1)`
-/

namespace A054660.P14096735799524194041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173278 (2 * (n + 1)) - A173278 (2 * n + 1)

end

end A054660.P14096735799524194041

namespace A054660

/-- `A173278(2*(n+1))-A173278(2*n+1)` -/
def P14096735799524194041.Spec : Prop :=
  ∀ n, P14096735799524194041.a n = A054660 (n + 1)

end A054660

/-!
# A054661: Number of monic irreducible polynomials over GF(4) with zero trace.

The programs for A054661, the canonical program `A054661.P5258497401606663667` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054661 has offset 1).

The definition of A054661 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054661.P2009238170622857853

`A074031(n+1)+3*A074032(n+1)`
-/

namespace A054661.P2009238170622857853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074031 (n + 1) + 3 * A074032 (n + 1)

end

end A054661.P2009238170622857853

namespace A054661

/-- `A074031(n+1)+3*A074032(n+1)` -/
def P2009238170622857853.Spec : Prop :=
  ∀ n, P2009238170622857853.a n = A054661 (n + 1)

end A054661

/-! ## A054661.P4634746382510361434

`A074446(n+1)+3*A074447(n+1)`
-/

namespace A054661.P4634746382510361434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074446 (n + 1) + 3 * A074447 (n + 1)

end

end A054661.P4634746382510361434

namespace A054661

/-- `A074446(n+1)+3*A074447(n+1)` -/
def P4634746382510361434.Spec : Prop :=
  ∀ n, P4634746382510361434.a n = A054661 (n + 1)

end A054661

/-! ## A054661.P5258497401606663667

`2*A054664(n+1)-A054660(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A054661

/-- `2*A054664(n+1)-A054660(n+1)` -/
def P5258497401606663667.Spec : Prop :=
  ∀ n, P5258497401606663667.a n = A054661 (n + 1)

theorem P5258497401606663667.correct : P5258497401606663667.Spec := by
  intro n
  simp only [A054661, Nat.add_sub_cancel]

end A054661

/-! ## A054661.P8461788816398140488

`A054664(n+1)+A074447(n+1)-A074035(n+1)`
-/

namespace A054661.P8461788816398140488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054664 (n + 1) + (A074447 (n + 1) - A074035 (n + 1))

end

end A054661.P8461788816398140488

namespace A054661

/-- `A054664(n+1)+A074447(n+1)-A074035(n+1)` -/
def P8461788816398140488.Spec : Prop :=
  ∀ n, P8461788816398140488.a n = A054661 (n + 1)

end A054661

/-! ## A054661.P5377757660895054965

`A074031(n+1)+A008585(A074032(n+1))`
-/

namespace A054661.P5377757660895054965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074031 (n + 1) + A008585 (A074032 (n + 1)).toNat

end

end A054661.P5377757660895054965

namespace A054661

/-- `A074031(n+1)+A008585(A074032(n+1))` -/
def P5377757660895054965.Spec : Prop :=
  ∀ n, P5377757660895054965.a n = A054661 (n + 1)

end A054661

/-!
# A054662: Number of monic irreducible polynomials over GF(5) with fixed nonzero trace.

The programs for A054662, there is no canonical definition to state claims against.
-/

/-! ## A054662.P6894399393543799590

`∑{d}[n+1, A008683(#)*A364211((n+1)/#)]`
-/

namespace A054662.P6894399393543799590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A364211 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054662.P6894399393543799590

/-! ## A054662.P6174055237585188382

`A110540(A167499(n+3))`
-/

namespace A054662.P6174055237585188382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110540 (A167499 (n + 3)).toNat

end

end A054662.P6174055237585188382

/-! ## A054662.P11083917902642736065

`A110540(A155212(n)+13)`
-/

namespace A054662.P11083917902642736065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110540 (A155212 n + 13).toNat

end

end A054662.P11083917902642736065

/-! ## A054662.P7630478962616987285

`record[A110540(A000217(n)+5)]`
-/

namespace A054662.P7630478962616987285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110540 (A000217 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054662.P7630478962616987285

/-! ## A054662.P10153151110260216288

`A110540(A000124(n+4)+4)`
-/

namespace A054662.P10153151110260216288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110540 (A000124 (n + 4) + 4).toNat

end

end A054662.P10153151110260216288

/-!
# A054663: Number of monic irreducible polynomials over GF(5) with zero trace.

The programs for A054663, there is no canonical definition to state claims against.
-/

/-! ## A054663.P4370584922868629444

`A054662(n+1)-A054656(A282917(n))`
-/

namespace A054663.P4370584922868629444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054662 (n + 1) - A054656 (A282917 n).toNat

end

end A054663.P4370584922868629444

/-! ## A054663.P13535535154396408864

`A066182(or(1, A054662(n+1)))`
-/

namespace A054663.P13535535154396408864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (Int.lor 1 (A054662 (n + 1))).toNat

end

end A054663.P13535535154396408864

/-! ## A054663.P10483596430719785500

`A054662(A254960(n+1))-char[4]`
-/

namespace A054663.P10483596430719785500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054662 (A254960 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A054663.P10483596430719785500

/-! ## A054663.P10334135526133114378

`A054662(n+1)-A121262(A020127(n))`
-/

namespace A054663.P10334135526133114378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054662 (n + 1) - A121262 (A020127 n).toNat

end

end A054663.P10334135526133114378

/-! ## A054663.P13278613701419115425

`A054662(n+1)-A060862(A151054(n))`
-/

namespace A054663.P13278613701419115425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054662 (n + 1) - A060862 (A151054 n).toNat

end

end A054663.P13278613701419115425

/-!
# A054664: Number of 4-ary Lyndon words of length n with trace 0 mod 4.

The programs for A054664, the canonical program `A054664.P6000498737285423986` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054664 has offset 1).

The definition of A054664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054664.P5520340525870376041

`A068596(n+1)+A074403(n+1)+A074404(n+1)+A074405(n+1)`
-/

namespace A054664.P5520340525870376041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068596 (n + 1) + A074403 (n + 1) + A074404 (n + 1) + A074405 (n + 1)

end

end A054664.P5520340525870376041

namespace A054664

/-- `A068596(n+1)+A074403(n+1)+A074404(n+1)+A074405(n+1)` -/
def P5520340525870376041.Spec : Prop :=
  ∀ n, P5520340525870376041.a n = A054664 (n + 1)

end A054664

/-! ## A054664.P10025638162569720235

`A074410(n+1)+A074411(n+1)+A074412(n+1)+A074413(n+1)`
-/

namespace A054664.P10025638162569720235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074410 (n + 1) + A074411 (n + 1) + A074412 (n + 1) + A074413 (n + 1)

end

end A054664.P10025638162569720235

namespace A054664

/-- `A074410(n+1)+A074411(n+1)+A074412(n+1)+A074413(n+1)` -/
def P10025638162569720235.Spec : Prop :=
  ∀ n, P10025638162569720235.a n = A054664 (n + 1)

end A054664

/-! ## A054664.P5365480499473971694

`(A054661(n+1)+A054660(n+1))/2`
-/

namespace A054664.P5365480499473971694
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054661 (n + 1) + A054660 (n + 1) : ℚ) / 2

end

end A054664.P5365480499473971694

namespace A054664

/-- `(A054661(n+1)+A054660(n+1))/2` -/
def P5365480499473971694.Spec : Prop :=
  ∀ n, P5365480499473971694.a n = (A054664 (n + 1) : ℚ)

end A054664

/-! ## A054664.P6000498737285423986

`∑{d}[n+1, A054660(#)*A154955((n+1)/#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A054664

/-- `∑{d}[n+1, A054660(#)*A154955((n+1)/#)]` -/
def P6000498737285423986.Spec : Prop :=
  ∀ n, P6000498737285423986.a n = A054664 (n + 1)

theorem P6000498737285423986.correct : P6000498737285423986.Spec := by
  intro n
  simp only [A054664, Nat.add_sub_cancel]

end A054664

/-! ## A054664.P8286424130942290330

`(A054661(n+1)+record[A000048(A014681(n))])/2`
-/

namespace A054664.P8286424130942290330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (A014681 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054661 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A054664.P8286424130942290330

namespace A054664

/-- `(A054661(n+1)+record[A000048(A014681(n))])/2` -/
def P8286424130942290330.Spec : Prop :=
  ∀ n, P8286424130942290330.a n = (A054664 (n + 1) : ℚ)

end A054664

/-! ## A054664.P8070875261534337947

`(A054661(n+1)+record[A000048(A153733(n))])/2`
-/

namespace A054664.P8070875261534337947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (A153733 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054661 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A054664.P8070875261534337947

namespace A054664

/-- `(A054661(n+1)+record[A000048(A153733(n))])/2` -/
def P8070875261534337947.Spec : Prop :=
  ∀ n, P8070875261534337947.a n = (A054664 (n + 1) : ℚ)

end A054664

/-! ## A054664.P9848947573295674812

`(A054661(n+1)+record[A000048(A237420(n))])/2`
-/

namespace A054664.P9848947573295674812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000048 (A237420 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054661 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A054664.P9848947573295674812

namespace A054664

/-- `(A054661(n+1)+record[A000048(A237420(n))])/2` -/
def P9848947573295674812.Spec : Prop :=
  ∀ n, P9848947573295674812.a n = (A054664 (n + 1) : ℚ)

end A054664

/-! ## A054664.P4574849799677679916

`A054660(n+1)-A000035(n)*A056303(n+1)`
-/

namespace A054664.P4574849799677679916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054660 (n + 1) - A000035 n * A056303 (n + 1)

end

end A054664.P4574849799677679916

namespace A054664

/-- `A054660(n+1)-A000035(n)*A056303(n+1)` -/
def P4574849799677679916.Spec : Prop :=
  ∀ n, P4574849799677679916.a n = A054664 (n + 1)

end A054664

/-!
# A054665: Number of 6-ary Lyndon words with trace 0 mod 6.

The programs for A054665, there is no canonical definition to state claims against.
-/

/-! ## A054665.P12733162549804451599

`∑{d}[n+1, A054700(#)*A154955((n+1)/#)]`
-/

namespace A054665.P12733162549804451599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054700 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054665.P12733162549804451599

/-! ## A054665.P7292798115762238264

`A054667(n+1)-A124762(A046211(n+1))`
-/

namespace A054665.P7292798115762238264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054667 (n + 1) - A124762 (A046211 (n + 1)).toNat

end

end A054665.P7292798115762238264

/-! ## A054665.P4640333122080568438

`A028310(A054667(n+1)-A180793(n+1))`
-/

namespace A054665.P4640333122080568438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A054667 (n + 1) - A180793 (n + 1)).toNat

end

end A054665.P4640333122080568438

/-!
# A054666: Number of 6-ary Lyndon words with trace 1 mod 6.

The programs for A054666, there is no canonical definition to state claims against.
-/

/-! ## A054666.P16781117089312509034

`∑{d}[n+1, A054665(#)*A065333((n+1)/#)]`
-/

namespace A054666.P16781117089312509034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054665 d * A065333 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054666.P16781117089312509034

/-! ## A054666.P14808967857947160320

`∑{d}[n+1, A036987(#-1)*A054667((n+1)/#)]`
-/

namespace A054666.P14808967857947160320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A036987 (d - 1) * A054667 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054666.P14808967857947160320

/-! ## A054666.P1081813369968801589

`A110540(A166136(n+4))`
-/

namespace A054666.P1081813369968801589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110540 (A166136 (n + 4)).toNat

end

end A054666.P1081813369968801589

/-! ## A054666.P4680268599460585718

`A110540(A000124(n+5)+5)`
-/

namespace A054666.P4680268599460585718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110540 (A000124 (n + 5) + 5).toNat

end

end A054666.P4680268599460585718

/-! ## A054666.P5969056707312839709

`A110540(A000217(n+5)+6)`
-/

namespace A054666.P5969056707312839709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110540 (A000217 (n + 5) + 6).toNat

end

end A054666.P5969056707312839709

/-!
# A054667: Number of 6-ary Lyndon words with trace 2 mod 6.

The programs for A054667, there is no canonical definition to state claims against.
-/

/-! ## A054667.P12084928195894110599

`∑{d}[n+1, A054666(#)*A154955((n+1)/#)]`
-/

namespace A054667.P12084928195894110599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A054666 d * A154955 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A054667.P12084928195894110599

/-! ## A054667.P7833150536217517938

`A124762(A046211(n+1))+A054665(n+1)`
-/

namespace A054667.P7833150536217517938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124762 (A046211 (n + 1)).toNat + A054665 (n + 1)

end

end A054667.P7833150536217517938

/-! ## A054667.P11644645366926040968

`A028310(A180793(n+1)+A054665(n+1))`
-/

namespace A054667.P11644645366926040968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A180793 (n + 1) + A054665 (n + 1)).toNat

end

end A054667.P11644645366926040968

/-!
# A054668: Number of distinct non-extendable sequences X={x(1),x(2),...,x(k)} where x(1)=1, the x(i)'s are distinct elements of {1,...,n} with |x(i)-x(i+1)|=1 or 2, for i=1,2,...,k.

The programs for A054668, the canonical program `A054668.P2809592471669321277` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054668 has offset 1).

The definition of A054668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 378 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054668.P2809592471669321277

`2*a(n-1)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8, a(4)=16`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054668

/-- `2*a(n-1)-a(n-4)` -/
def P2809592471669321277.Spec : Prop :=
  ∀ n, P2809592471669321277.a n = A054668 (n + 1)

theorem P2809592471669321277.correct : P2809592471669321277.Spec := by
  intro n
  simp only [A054668, Nat.add_sub_cancel]

end A054668

/-! ## A054668.P9734766684608914672

`a(n-1)+a(n-2)+a(n-3)+2` with `a(0)=1, a(1)=2, a(2)=4, a(3)=8`
-/

namespace A054668.P9734766684608914672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 4, 8] fun n a =>
  a (n - 1) + (a (n - 2) + a (n - 3)) + 2

end

end A054668.P9734766684608914672

namespace A054668

/-- `a(n-1)+a(n-2)+a(n-3)+2` -/
def P9734766684608914672.Spec : Prop :=
  ∀ n, (P9734766684608914672.a n : ℤ) = A054668 (n + 1)

end A054668

/-! ## A054668.P3629982348130169654

`∑[A135491(abs(1-n))]-1`
-/

namespace A054668.P3629982348130169654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135491 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A054668.P3629982348130169654

namespace A054668

/-- `∑[A135491(abs(1-n))]-1` -/
def P3629982348130169654.Spec : Prop :=
  ∀ n, P3629982348130169654.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P17197375005271018940

`A135491(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A054668.P17197375005271018940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A135491 (n - 1) + a (n - 1)

end

end A054668.P17197375005271018940

namespace A054668

/-- `A135491(n-1)+a(n-1)` -/
def P17197375005271018940.Spec : Prop :=
  ∀ n, P17197375005271018940.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P7481627509680286301

`A354784(n+1)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A054668.P7481627509680286301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A354784 (n + 1) + a (n - 1)

end

end A054668.P7481627509680286301

namespace A054668

/-- `A354784(n+1)+a(n-1)` -/
def P7481627509680286301.Spec : Prop :=
  ∀ n, P7481627509680286301.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P5482340250236306756

`A000213(n+2)+1-ceil(atan(n+1))`
-/

namespace A054668.P5482340250236306756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 2) + 1 - ⌈Real.arctan (n + 1 : ℝ)⌉

end

end A054668.P5482340250236306756

namespace A054668

/-- `A000213(n+2)+1-ceil(atan(n+1))` -/
def P5482340250236306756.Spec : Prop :=
  ∀ n, P5482340250236306756.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P7387721607928093624

`record[A000213(n)-A057427(n)]`
-/

namespace A054668.P7387721607928093624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054668.P7387721607928093624

namespace A054668

/-- `record[A000213(n)-A057427(n)]` -/
def P7387721607928093624.Spec : Prop :=
  ∀ n, P7387721607928093624.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P9390162873826669156

`A057428(n)+A000213(n+2)`
-/

namespace A054668.P9390162873826669156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n + A000213 (n + 2)

end

end A054668.P9390162873826669156

namespace A054668

/-- `A057428(n)+A000213(n+2)` -/
def P9390162873826669156.Spec : Prop :=
  ∀ n, P9390162873826669156.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P5885009375357887994

`A288465(n)-A036453(n+1)`
-/

namespace A054668.P5885009375357887994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288465 n - A036453 (n + 1)

end

end A054668.P5885009375357887994

namespace A054668

/-- `A288465(n)-A036453(n+1)` -/
def P5885009375357887994.Spec : Prop :=
  ∀ n, P5885009375357887994.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P2761834819995844125

`A000213(n+2)-A057427(n)`
-/

namespace A054668.P2761834819995844125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 2) - A057427 n

end

end A054668.P2761834819995844125

namespace A054668

/-- `A000213(n+2)-A057427(n)` -/
def P2761834819995844125.Spec : Prop :=
  ∀ n, P2761834819995844125.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P7507032524705673738

`A000007(n)+2*A008937(n)`
-/

namespace A054668.P7507032524705673738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A008937 n

end

end A054668.P7507032524705673738

namespace A054668

/-- `A000007(n)+2*A008937(n)` -/
def P7507032524705673738.Spec : Prop :=
  ∀ n, P7507032524705673738.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P3234950502865475330

`record[A000007(n)+A000213(n)-1]`
-/

namespace A054668.P3234950502865475330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A000213 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054668.P3234950502865475330

namespace A054668

/-- `record[A000007(n)+A000213(n)-1]` -/
def P3234950502865475330.Spec : Prop :=
  ∀ n, P3234950502865475330.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P16582306605166626558

`A196700(n+1)+A000213(n)-1`
-/

namespace A054668.P16582306605166626558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196700 (n + 1) + (A000213 n - 1)

end

end A054668.P16582306605166626558

namespace A054668

/-- `A196700(n+1)+A000213(n)-1` -/
def P16582306605166626558.Spec : Prop :=
  ∀ n, P16582306605166626558.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P2866904444198360226

`A000213(n+2)-(1-A000007(n))`
-/

namespace A054668.P2866904444198360226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 2) - (1 - A000007 n)

end

end A054668.P2866904444198360226

namespace A054668

/-- `A000213(n+2)-(1-A000007(n))` -/
def P2866904444198360226.Spec : Prop :=
  ∀ n, P2866904444198360226.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P9397612960539858325

`record[A000213(n)-A000040(n+1)%2]`
-/

namespace A054668.P9397612960539858325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054668.P9397612960539858325

namespace A054668

/-- `record[A000213(n)-A000040(n+1)%2]` -/
def P9397612960539858325.Spec : Prop :=
  ∀ n, P9397612960539858325.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P15310923993677345021

`A000213(n+2)-A040976(n+1)%2`
-/

namespace A054668.P15310923993677345021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 (n + 2) - Int.tmod (A040976 (n + 1)) 2

end

end A054668.P15310923993677345021

namespace A054668

/-- `A000213(n+2)-A040976(n+1)%2` -/
def P15310923993677345021.Spec : Prop :=
  ∀ n, P15310923993677345021.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P6947778466329388041

`record[A000213(n)-A000045(n²%(n+1))]`
-/

namespace A054668.P6947778466329388041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - A000045 (n ^ 2 % (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054668.P6947778466329388041

namespace A054668

/-- `record[A000213(n)-A000045(n²%(n+1))]` -/
def P6947778466329388041.Spec : Prop :=
  ∀ n, P6947778466329388041.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P8277190229942810031

`A008937(n)+A008937(A028310(n))`
-/

namespace A054668.P8277190229942810031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008937 n + A008937 (A028310 n).toNat

end

end A054668.P8277190229942810031

namespace A054668

/-- `A008937(n)+A008937(A028310(n))` -/
def P8277190229942810031.Spec : Prop :=
  ∀ n, P8277190229942810031.a n = A054668 (n + 1)

end A054668

/-! ## A054668.P2646294350211426016

`record[A000213(n)-A001222(A008578(n+1))]`
-/

namespace A054668.P2646294350211426016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000213 n - A001222 (A008578 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054668.P2646294350211426016

namespace A054668

/-- `record[A000213(n)-A001222(A008578(n+1))]` -/
def P2646294350211426016.Spec : Prop :=
  ∀ n, P2646294350211426016.a n = A054668 (n + 1)

end A054668

/-!
# A054671: Denominators of (reduced) coefficients of Laurent series for conformal mapping from exterior of unit disk onto exterior of Mandelbrot set.

The programs for A054671, there is no canonical definition to state claims against.
-/

/-! ## A054671.P13484762543743233366

`A317926(2*A299151(2*(n+2)))`
-/

namespace A054671.P13484762543743233366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317926 (2 * A299151 (2 * (n + 2))).toNat

end

end A054671.P13484762543743233366

/-!
# A054672: Nearest integer to n^tan(n).

The programs for A054672, the canonical program `A054672.P18401060244661828953` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054672 has offset 0).

The definition of A054672 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054672.P18401060244661828953

`round(n^tan(n))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054672

/-- `round(n^tan(n))` -/
def P18401060244661828953.Spec : Prop :=
  ∀ n, P18401060244661828953.a n = A054672 n

theorem P18401060244661828953.correct : P18401060244661828953.Spec := by
  intro n
  simp only [A054672]

end A054672

/-! ## A054672.P9572018952919591741

`round(n^(sin(n)/cos(n)))`
-/

namespace A054672.P9572018952919591741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ (Real.sin (n : ℝ) / Real.cos (n : ℝ)))

end

end A054672.P9572018952919591741

namespace A054672

/-- `round(n^(sin(n)/cos(n)))` -/
def P9572018952919591741.Spec : Prop :=
  ∀ n, P9572018952919591741.a n = A054672 n

end A054672

/-! ## A054672.P2160876895047335187

`and(5, A086196(A046368(n+1)))`
-/

namespace A054672.P2160876895047335187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A086196 (A046368 (n + 1)).toNat)

end

end A054672.P2160876895047335187

namespace A054672

/-- `and(5, A086196(A046368(n+1)))` -/
def P2160876895047335187.Spec : Prop :=
  ∀ n, P2160876895047335187.a n = A054672 n

end A054672

/-! ## A054672.P12777546534938024052

`and(5, A115843(A130899(n+1)))`
-/

namespace A054672.P12777546534938024052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A115843 (A130899 (n + 1)).toNat)

end

end A054672.P12777546534938024052

namespace A054672

/-- `and(5, A115843(A130899(n+1)))` -/
def P12777546534938024052.Spec : Prop :=
  ∀ n, P12777546534938024052.a n = A054672 n

end A054672

/-! ## A054672.P17560085157461769070

`and(5, A110657(A077999(n)))`
-/

namespace A054672.P17560085157461769070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 5 (A110657 (A077999 n).toNat)

end

end A054672.P17560085157461769070

namespace A054672

/-- `and(5, A110657(A077999(n)))` -/
def P17560085157461769070.Spec : Prop :=
  ∀ n, P17560085157461769070.a n = A054672 n

end A054672

/-!
# A054673: Nearest integer to n^sin(n).

The programs for A054673, the canonical program `A054673.P1284292000117394101` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054673 has offset 0).

The definition of A054673 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A054673.P1284292000117394101

`round(n^sin(n))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054673

/-- `round(n^sin(n))` -/
def P1284292000117394101.Spec : Prop :=
  ∀ n, P1284292000117394101.a n = A054673 n

theorem P1284292000117394101.correct : P1284292000117394101.Spec := by
  intro n
  simp only [A054673]

end A054673

/-! ## A054673.P1608761709678584194

`round(n^(cos(n)*tan(n)))`
-/

namespace A054673.P1608761709678584194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ (Real.cos (n : ℝ) * Real.tan (n : ℝ)))

end

end A054673.P1608761709678584194

namespace A054673

/-- `round(n^(cos(n)*tan(n)))` -/
def P1608761709678584194.Spec : Prop :=
  ∀ n, P1608761709678584194.a n = A054673 n

end A054673

/-! ## A054673.P4334293783825137720

`floor(n^sin(n)+1/2)`
-/

namespace A054673.P4334293783825137720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ (Real.sin (n : ℝ)) + ((1 : ℚ) / 2 : ℝ)⌋

end

end A054673.P4334293783825137720

namespace A054673

/-- `floor(n^sin(n)+1/2)` -/
def P4334293783825137720.Spec : Prop :=
  ∀ n, P4334293783825137720.a n = A054673 n

end A054673

/-!
# A054674: Nearest integer to n^cos(n).

The programs for A054674, the canonical program `A054674.P963831414930043693` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054674 has offset 0).

The definition of A054674 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054674.P963831414930043693

`round(n^cos(n))`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054674

/-- `round(n^cos(n))` -/
def P963831414930043693.Spec : Prop :=
  ∀ n, P963831414930043693.a n = A054674 n

theorem P963831414930043693.correct : P963831414930043693.Spec := by
  intro n
  simp only [A054674]

end A054674

/-! ## A054674.P8250879320843937943

`round(n^sin(acos(0)+n))`
-/

namespace A054674.P8250879320843937943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ (Real.sin (Real.arccos (0 : ℝ) + (n : ℝ))))

end

end A054674.P8250879320843937943

namespace A054674

/-- `round(n^sin(acos(0)+n))` -/
def P8250879320843937943.Spec : Prop :=
  ∀ n, P8250879320843937943.a n = A054674 n

end A054674

/-! ## A054674.P12893816193486648205

`round(n^sin(asin(1)-n))`
-/

namespace A054674.P12893816193486648205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) ^ (Real.sin (Real.arcsin (1 : ℝ) - (n : ℝ))))

end

end A054674.P12893816193486648205

namespace A054674

/-- `round(n^sin(asin(1)-n))` -/
def P12893816193486648205.Spec : Prop :=
  ∀ n, P12893816193486648205.a n = A054674 n

end A054674

/-!
# A054675: Nearest integer to tan(n)^n.

The programs for A054675, there is no canonical definition to state claims against.
-/

/-! ## A054675.P2442920758019036796

`round(tan(n)^n)`
-/

namespace A054675.P2442920758019036796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (n : ℝ) ^ n)

end

end A054675.P2442920758019036796

/-! ## A054675.P3917110183796664920

`round((sin(n)/cos(n))^n)`
-/

namespace A054675.P3917110183796664920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Real.sin (n : ℝ) / Real.cos (n : ℝ)) ^ n)

end

end A054675.P3917110183796664920

/-! ## A054675.P8715454635155862902

`round(cot(A028310(n))^A001489(n))`
-/

namespace A054675.P8715454635155862902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (A028310 n : ℝ) ^ (A001489 n : ℤ))

end

end A054675.P8715454635155862902

/-!
# A054676: Numerator of expected length of longest increasing subsequence of a permutation of length n.

The programs for A054676, there is no canonical definition to state claims against.
-/

/-! ## A054676.P18441262868328450900

`A003316(n+1)/A179930(A003316(n+1))`
-/

namespace A054676.P18441262868328450900
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003316 (n + 1) : ℚ) / (A179930 (A003316 (n + 1)).toNat : ℚ)

end

end A054676.P18441262868328450900

/-!
# A054677: Denominator of expected length of longest increasing subsequence of a permutation of length n.

The programs for A054677, there is no canonical definition to state claims against.
-/

/-! ## A054677.P12501473796862423400

`A000142(n+1)/A003316(n+1)*A054676(n+1)`
-/

namespace A054677.P12501473796862423400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A003316 (n + 1) : ℚ) * (A054676 (n + 1) : ℚ)

end

end A054677.P12501473796862423400

/-! ## A054677.P2968173147547343254

`A376115(lcm(A000142(n), A130246(n+2)))`
-/

namespace A054677.P2968173147547343254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376115 (Int.lcm (A000142 n) (A130246 (n + 2)))

end

end A054677.P2968173147547343254

/-! ## A054677.P11341120641279813886

`A098361(A059456(n+1))%A110093(n+1)`
-/

namespace A054677.P11341120641279813886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A098361 (A059456 (n + 1)).toNat) (A110093 (n + 1))

end

end A054677.P11341120641279813886

/-!
# A054678: n consecutive primes differ by a multiple of 4 starting at a(n).

The programs for A054678, there is no canonical definition to state claims against.
-/

/-! ## A054678.P7035258230698299807

`A259360(A337599(n)+A077082(n+1))`
-/

namespace A054678.P7035258230698299807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259360 (A337599 n + A077082 (n + 1)).toNat

end

end A054678.P7035258230698299807

/-! ## A054678.P3116512389573718745

`A259360(A077082(n+1)+A005088(n+1))`
-/

namespace A054678.P3116512389573718745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259360 (A077082 (n + 1) + A005088 (n + 1)).toNat

end

end A054678.P3116512389573718745

/-! ## A054678.P10034540673933242767

`A259360(A283634(n+1)+A077082(n+1))`
-/

namespace A054678.P10034540673933242767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259360 (A283634 (n + 1) + A077082 (n + 1)).toNat

end

end A054678.P10034540673933242767

/-!
# A054679: First of n consecutive primes which differ by a multiple of 6.

The programs for A054679, there is no canonical definition to state claims against.
-/

/-! ## A054679.P5173071547845092037

`A000040(A276414(n+1))`
-/

namespace A054679.P5173071547845092037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A276414 (n + 1)).toNat

end

end A054679.P5173071547845092037

/-! ## A054679.P15393375358000681411

`A008578(A276414(n+1)+1)`
-/

namespace A054679.P15393375358000681411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A276414 (n + 1) + 1).toNat

end

end A054679.P15393375358000681411

/-! ## A054679.P5608443972209791443

`A182986(A276414(n+1)+1)`
-/

namespace A054679.P5608443972209791443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A276414 (n + 1) + 1).toNat

end

end A054679.P5608443972209791443

/-!
# A054681: Start of a run of consecutive primes of length n each ending with the same digit.

The programs for A054681, there is no canonical definition to state claims against.
-/

/-! ## A054681.P8940618586348440622

`A329594(∑[n]+1)`
-/

namespace A054681.P8940618586348440622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329594 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A054681.P8940618586348440622

/-! ## A054681.P18106799396681108254

`A329594(A000124(n))+char[19]`
-/

namespace A054681.P18106799396681108254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329594 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A054681.P18106799396681108254

/-! ## A054681.P11134502347823340238

`or(A004198(n), A329594(A000124(n)))`
-/

namespace A054681.P11134502347823340238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004198 n) (A329594 (A000124 n).toNat)

end

end A054681.P11134502347823340238

/-! ## A054681.P14258303544027371647

`or(A010060(n), A329594(A000124(n)))`
-/

namespace A054681.P14258303544027371647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010060 n) (A329594 (A000124 n).toNat)

end

end A054681.P14258303544027371647

/-! ## A054681.P1979409783654996128

`A007318(∑[n])*A329594(A000124(n))`
-/

namespace A054681.P1979409783654996128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A329594 (A000124 n).toNat

end

end A054681.P1979409783654996128

/-!
# A054682: a(n) = smallest prime p = prime(k) such that gcd( prime(k+1) - prime(k), prime(k+2) - prime(k+1) ) is a multiple of 2n.

The programs for A054682, there is no canonical definition to state claims against.
-/

/-! ## A054682.P8199966004745679087

`A070018(n+1)`
-/

namespace A054682.P8199966004745679087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070018 (n + 1)

end

end A054682.P8199966004745679087

/-!
# A054683: Numbers whose sum of digits is even.

The programs for A054683, the canonical program `A054683.P13281263660057652761` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054683 has offset 1).

The definition of A054683 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054683.P13281263660057652761

`and(1, ∑{digits}[2*n, #])+2*n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054683

/-- `and(1, ∑{digits}[2*n, #])+2*n` -/
def P13281263660057652761.Spec : Prop :=
  ∀ n, (P13281263660057652761.a n : ℤ) = A054683 (n + 1)

theorem P13281263660057652761.correct : P13281263660057652761.Spec := by
  intro n
  simp only [A054683, Nat.add_sub_cancel]

end A054683

/-! ## A054683.P4848436029262463322

`or(2*n, ∑{digits}[2*n, #]%2)`
-/

namespace A054683.P4848436029262463322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum % 2)

end

end A054683.P4848436029262463322

namespace A054683

/-- `or(2*n, ∑{digits}[2*n, #]%2)` -/
def P4848436029262463322.Spec : Prop :=
  ∀ n, (P4848436029262463322.a n : ℤ) = A054683 (n + 1)

end A054683

/-! ## A054683.P14348728112878210726

`comp[A054684(n+1)]`
-/

namespace A054683.P14348728112878210726
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A054683.P14348728112878210726

namespace A054683

/-- `comp[A054684(n+1)]` -/
def P14348728112878210726.Spec : Prop :=
  ∀ n, (P14348728112878210726.a n : ℤ) = A054683 (n + 1)

end A054683

/-! ## A054683.P3372659660454444191

`eq[0, A308003(n)%2]`
-/

namespace A054683.P3372659660454444191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308003 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054683.P3372659660454444191

namespace A054683

/-- `eq[0, A308003(n)%2]` -/
def P3372659660454444191.Spec : Prop :=
  ∀ n, (P3372659660454444191.a n : ℤ) = A054683 (n + 1)

end A054683

/-! ## A054683.P5163845166710340467

`eq[1, A059841(A171797(n))]`
-/

namespace A054683.P5163845166710340467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A171797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054683.P5163845166710340467

namespace A054683

/-- `eq[1, A059841(A171797(n))]` -/
def P5163845166710340467.Spec : Prop :=
  ∀ n, (P5163845166710340467.a n : ℤ) = A054683 (n + 1)

end A054683

/-! ## A054683.P10052706977506768426

`lt[2, A040323(A308003(n))]`
-/

namespace A054683.P10052706977506768426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040323 (A308003 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054683.P10052706977506768426

namespace A054683

/-- `lt[2, A040323(A308003(n))]` -/
def P10052706977506768426.Spec : Prop :=
  ∀ n, (P10052706977506768426.a n : ℤ) = A054683 (n + 1)

end A054683

/-! ## A054683.P5276593907492304855

`A016813(n)-A054684(n+1)`
-/

namespace A054683.P5276593907492304855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A054684 (n + 1)

end

end A054683.P5276593907492304855

namespace A054683

/-- `A016813(n)-A054684(n+1)` -/
def P5276593907492304855.Spec : Prop :=
  ∀ n, P5276593907492304855.a n = A054683 (n + 1)

end A054683

/-! ## A054683.P3942403170945468245

`A000035(A004092(n))+2*n`
-/

namespace A054683.P3942403170945468245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A004092 n).toNat + (2 * n : ℤ)

end

end A054683.P3942403170945468245

namespace A054683

/-- `A000035(A004092(n))+2*n` -/
def P3942403170945468245.Spec : Prop :=
  ∀ n, P3942403170945468245.a n = A054683 (n + 1)

end A054683

/-! ## A054683.P11750911132020234452

`A002943(n)/A054684(n+1)`
-/

namespace A054683.P11750911132020234452
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002943 n : ℚ) / (A054684 (n + 1) : ℚ)

end

end A054683.P11750911132020234452

namespace A054683

/-- `A002943(n)/A054684(n+1)` -/
def P11750911132020234452.Spec : Prop :=
  ∀ n, P11750911132020234452.a n = (A054683 (n + 1) : ℚ)

end A054683

/-! ## A054683.P1792328389287559768

`∪[A179082(n+1), A179084(n+1)]`
-/

namespace A054683.P1792328389287559768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054683.P1792328389287559768

namespace A054683

/-- `∪[A179082(n+1), A179084(n+1)]` -/
def P1792328389287559768.Spec : Prop :=
  ∀ n, (P1792328389287559768.a n : ℤ) = A054683 (n + 1)

end A054683

/-! ## A054683.P9487227954610945392

`A000035(A055012(2*n))+2*n`
-/

namespace A054683.P9487227954610945392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A055012 (2 * n)).toNat + (2 * n : ℤ)

end

end A054683.P9487227954610945392

namespace A054683

/-- `A000035(A055012(2*n))+2*n` -/
def P9487227954610945392.Spec : Prop :=
  ∀ n, P9487227954610945392.a n = A054683 (n + 1)

end A054683

/-! ## A054683.P17525938903461767178

`A179081(2*n)+2*n`
-/

namespace A054683.P17525938903461767178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 (2 * n) + (2 * n : ℤ)

end

end A054683.P17525938903461767178

namespace A054683

/-- `A179081(2*n)+2*n` -/
def P17525938903461767178.Spec : Prop :=
  ∀ n, P17525938903461767178.a n = A054683 (n + 1)

end A054683

/-! ## A054683.P16131765827855527567

`A196564(2*n)%2+2*n`
-/

namespace A054683.P16131765827855527567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196564 (2 * n)) 2 + (2 * n : ℤ)

end

end A054683.P16131765827855527567

namespace A054683

/-- `A196564(2*n)%2+2*n` -/
def P16131765827855527567.Spec : Prop :=
  ∀ n, P16131765827855527567.a n = A054683 (n + 1)

end A054683

/-! ## A054683.P14611752902007603069

`A000035(A003132(2*n))+2*n`
-/

namespace A054683.P14611752902007603069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003132 (2 * n)).toNat + (2 * n : ℤ)

end

end A054683.P14611752902007603069

namespace A054683

/-- `A000035(A003132(2*n))+2*n` -/
def P14611752902007603069.Spec : Prop :=
  ∀ n, P14611752902007603069.a n = A054683 (n + 1)

end A054683

/-! ## A054683.P10609981627081826356

`A000035(A007953(2*n))+2*n`
-/

namespace A054683.P10609981627081826356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A007953 (2 * n)).toNat + (2 * n : ℤ)

end

end A054683.P10609981627081826356

namespace A054683

/-- `A000035(A007953(2*n))+2*n` -/
def P10609981627081826356.Spec : Prop :=
  ∀ n, P10609981627081826356.a n = A054683 (n + 1)

end A054683

/-! ## A054683.P11978893421502318542

`A000035(A028898(2*n))+2*n`
-/

namespace A054683.P11978893421502318542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A028898 (2 * n)).toNat + (2 * n : ℤ)

end

end A054683.P11978893421502318542

namespace A054683

/-- `A000035(A028898(2*n))+2*n` -/
def P11978893421502318542.Spec : Prop :=
  ∀ n, P11978893421502318542.a n = A054683 (n + 1)

end A054683

/-! ## A054683.P17261273413783189591

`A000035(A028900(2*n))+2*n`
-/

namespace A054683.P17261273413783189591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A028900 (2 * n)).toNat + (2 * n : ℤ)

end

end A054683.P17261273413783189591

namespace A054683

/-- `A000035(A028900(2*n))+2*n` -/
def P17261273413783189591.Spec : Prop :=
  ∀ n, P17261273413783189591.a n = A054683 (n + 1)

end A054683

/-! ## A054683.P7981255554274340873

`A000035(A054899(2*n))+2*n`
-/

namespace A054683.P7981255554274340873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A054899 (2 * n)).toNat + (2 * n : ℤ)

end

end A054683.P7981255554274340873

namespace A054683

/-- `A000035(A054899(2*n))+2*n` -/
def P7981255554274340873.Spec : Prop :=
  ∀ n, P7981255554274340873.a n = A054683 (n + 1)

end A054683

/-! ## A054683.P8126750724930277861

`lt[0, (-2)^∑{digits}[n, #]]`
-/

namespace A054683.P8126750724930277861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).sum

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054683.P8126750724930277861

namespace A054683

/-- `lt[0, (-2)^∑{digits}[n, #]]` -/
def P8126750724930277861.Spec : Prop :=
  ∀ n, (P8126750724930277861.a n : ℤ) = A054683 (n + 1)

end A054683

/-! ## A054683.P6727214992092428469

`lt[0, ∏{digits}[n, (-2)^#]]`
-/

namespace A054683.P6727214992092428469
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => (-2) ^ x).prod

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054683.P6727214992092428469

namespace A054683

/-- `lt[0, ∏{digits}[n, (-2)^#]]` -/
def P6727214992092428469.Spec : Prop :=
  ∀ n, (P6727214992092428469.a n : ℤ) = A054683 (n + 1)

end A054683

/-!
# A054684: Numbers whose sum of digits is odd.

The programs for A054684, the canonical program `A054684.P15062249721907076264` is in `Seq.B000.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A054684 has offset 1).

The definition of A054684 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A054684.P15062249721907076264

`∑{digits}[2*n+1, #]%2+2*n`

The canonical program, it is in `Seq.B000.C008`.
-/

namespace A054684

/-- `∑{digits}[2*n+1, #]%2+2*n` -/
def P15062249721907076264.Spec : Prop :=
  ∀ n, (P15062249721907076264.a n : ℤ) = A054684 (n + 1)

theorem P15062249721907076264.correct : P15062249721907076264.Spec := by
  intro n
  simp only [A054684, Nat.add_sub_cancel]

end A054684

/-! ## A054684.P16723130170239332536

`and(1, ∑{digits}[2*n+1, #])+2*n`
-/

namespace A054684.P16723130170239332536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + 2 * n

end

end A054684.P16723130170239332536

namespace A054684

/-- `and(1, ∑{digits}[2*n+1, #])+2*n` -/
def P16723130170239332536.Spec : Prop :=
  ∀ n, (P16723130170239332536.a n : ℤ) = A054684 (n + 1)

theorem P16723130170239332536.correct : P16723130170239332536.Spec := by
  intro n
  simp only [A054684, Nat.add_sub_cancel, A054684.P16723130170239332536.f1, A054684.P16723130170239332536.a, A054684.P15062249721907076264.f1, A054684.P15062249721907076264.a, SequenceMachineLib.memo_apply]
  try simp

end A054684

/-! ## A054684.P5952073955688800423

`comp[A054683(n+1)]`
-/

namespace A054684.P5952073955688800423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A054684.P5952073955688800423

namespace A054684

/-- `comp[A054683(n+1)]` -/
def P5952073955688800423.Spec : Prop :=
  ∀ n, (P5952073955688800423.a n : ℤ) = A054684 (n + 1)

end A054684

/-! ## A054684.P4133137580577913922

`eq[1, A308003(n)%2]`
-/

namespace A054684.P4133137580577913922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A308003 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054684.P4133137580577913922

namespace A054684

/-- `eq[1, A308003(n)%2]` -/
def P4133137580577913922.Spec : Prop :=
  ∀ n, (P4133137580577913922.a n : ℤ) = A054684 (n + 1)

end A054684

/-! ## A054684.P5056505043349277801

`eq[1, and(1, A171797(n))]`
-/

namespace A054684.P5056505043349277801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A171797 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054684.P5056505043349277801

namespace A054684

/-- `eq[1, and(1, A171797(n))]` -/
def P5056505043349277801.Spec : Prop :=
  ∀ n, (P5056505043349277801.a n : ℤ) = A054684 (n + 1)

end A054684

/-! ## A054684.P7493490852975060894

`eq[1, A001511(A171797(n))]`
-/

namespace A054684.P7493490852975060894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A171797 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054684.P7493490852975060894

namespace A054684

/-- `eq[1, A001511(A171797(n))]` -/
def P7493490852975060894.Spec : Prop :=
  ∀ n, (P7493490852975060894.a n : ℤ) = A054684 (n + 1)

end A054684

/-! ## A054684.P3030111335642099013

`A016813(n)-A054683(n+1)`
-/

namespace A054684.P3030111335642099013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n - A054683 (n + 1)

end

end A054684.P3030111335642099013

namespace A054684

/-- `A016813(n)-A054683(n+1)` -/
def P3030111335642099013.Spec : Prop :=
  ∀ n, P3030111335642099013.a n = A054684 (n + 1)

end A054684

/-! ## A054684.P15045256400419130994

`∪[A179083(n+1), A179085(n+1)]`
-/

namespace A054684.P15045256400419130994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179085 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A054684.P15045256400419130994

namespace A054684

/-- `∪[A179083(n+1), A179085(n+1)]` -/
def P15045256400419130994.Spec : Prop :=
  ∀ n, (P15045256400419130994.a n : ℤ) = A054684 (n + 1)

end A054684

/-! ## A054684.P12456863030144247887

`A000035(A055012(2*n+1))+2*n`
-/

namespace A054684.P12456863030144247887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A055012 (2 * n + 1)).toNat + (2 * n : ℤ)

end

end A054684.P12456863030144247887

namespace A054684

/-- `A000035(A055012(2*n+1))+2*n` -/
def P12456863030144247887.Spec : Prop :=
  ∀ n, P12456863030144247887.a n = A054684 (n + 1)

end A054684

/-! ## A054684.P4791959266909697913

`eq[1, A179081(n)]`
-/

namespace A054684.P4791959266909697913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179081 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054684.P4791959266909697913

namespace A054684

/-- `eq[1, A179081(n)]` -/
def P4791959266909697913.Spec : Prop :=
  ∀ n, (P4791959266909697913.a n : ℤ) = A054684 (n + 1)

end A054684

/-! ## A054684.P3023266117325465941

`eq[1, A003132(n)%2]`
-/

namespace A054684.P3023266117325465941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003132 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054684.P3023266117325465941

namespace A054684

/-- `eq[1, A003132(n)%2]` -/
def P3023266117325465941.Spec : Prop :=
  ∀ n, (P3023266117325465941.a n : ℤ) = A054684 (n + 1)

end A054684

/-! ## A054684.P5224653569242134127

`lt[0, A196564(n)%2]`
-/

namespace A054684.P5224653569242134127
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A196564 n) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A054684.P5224653569242134127

namespace A054684

/-- `lt[0, A196564(n)%2]` -/
def P5224653569242134127.Spec : Prop :=
  ∀ n, (P5224653569242134127.a n : ℤ) = A054684 (n + 1)

end A054684

/-! ## A054684.P14882986816247691963

`eq[1, gcd(2, A007953(n))]`
-/

namespace A054684.P14882986816247691963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007953 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A054684.P14882986816247691963

namespace A054684

/-- `eq[1, gcd(2, A007953(n))]` -/
def P14882986816247691963.Spec : Prop :=
  ∀ n, (P14882986816247691963.a n : ℤ) = A054684 (n + 1)

end A054684

/-! ## A054684.P6455408405950857039

`filter[n+1, A179081(#)]`
-/

namespace A054684.P6455408405950857039
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179081 (f1 j) = 1) n)

end

end A054684.P6455408405950857039

namespace A054684

/-- `filter[n+1, A179081(#)]` -/
def P6455408405950857039.Spec : Prop :=
  ∀ n, (P6455408405950857039.a n : ℤ) = A054684 (n + 1)

end A054684

/-! ## A054684.P4653386351004061791

`Δ[n²]-A179081(2*n)`
-/

namespace A054684.P4653386351004061791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A179081 (2 * n)

end

end A054684.P4653386351004061791

namespace A054684

/-- `Δ[n²]-A179081(2*n)` -/
def P4653386351004061791.Spec : Prop :=
  ∀ n, P4653386351004061791.a n = A054684 (n + 1)

end A054684

/-! ## A054684.P827962163018050380

`eq[0, A126869(A007953(n))]`
-/

namespace A054684.P827962163018050380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (A007953 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054684.P827962163018050380

namespace A054684

/-- `eq[0, A126869(A007953(n))]` -/
def P827962163018050380.Spec : Prop :=
  ∀ n, (P827962163018050380.a n : ℤ) = A054684 (n + 1)

end A054684

/-! ## A054684.P79791343221996776

`eq[1, A000035(A003132(n))]`
-/

namespace A054684.P79791343221996776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003132 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054684.P79791343221996776

namespace A054684

/-- `eq[1, A000035(A003132(n))]` -/
def P79791343221996776.Spec : Prop :=
  ∀ n, (P79791343221996776.a n : ℤ) = A054684 (n + 1)

end A054684

/-! ## A054684.P4864594157157114343

`eq[2, A000034(A028900(n))]`
-/

namespace A054684.P4864594157157114343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A028900 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054684.P4864594157157114343

namespace A054684

/-- `eq[2, A000034(A028900(n))]` -/
def P4864594157157114343.Spec : Prop :=
  ∀ n, (P4864594157157114343.a n : ℤ) = A054684 (n + 1)

end A054684

/-! ## A054684.P2736103430270493318

`eq[2, A040323(A118881(n))]`
-/

namespace A054684.P2736103430270493318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040323 (A118881 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054684.P2736103430270493318

namespace A054684

/-- `eq[2, A040323(A118881(n))]` -/
def P2736103430270493318.Spec : Prop :=
  ∀ n, (P2736103430270493318.a n : ℤ) = A054684 (n + 1)

end A054684

/-! ## A054684.P14726196171306703503

`eq[1, A010121(A007953(n)²)]`
-/

namespace A054684.P14726196171306703503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010121 (A007953 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A054684.P14726196171306703503

namespace A054684

/-- `eq[1, A010121(A007953(n)²)]` -/
def P14726196171306703503.Spec : Prop :=
  ∀ n, (P14726196171306703503.a n : ℤ) = A054684 (n + 1)

end A054684

/-!
# A054685: Number of partitions of n into distinct prime powers (1 not considered a power).

The programs for A054685, there is no canonical definition to state claims against.
-/

/-! ## A054685.P11372217172454393671

`A106244(n)-a(n-1)` with `a(0)=1`
-/

namespace A054685.P11372217172454393671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A106244 n - a (n - 1)

end

end A054685.P11372217172454393671

/-! ## A054685.P9282729519647036786

`A280152(n)+a(n-2)` with `a(0)=1, a(1)=0`
-/

namespace A054685.P9282729519647036786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A280152 n + a (n - 2)

end

end A054685.P9282729519647036786

/-! ## A054685.P10795186527365649377

`abs(∑[A033999(n)*A106244(n)])`
-/

namespace A054685.P10795186527365649377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A106244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A054685.P10795186527365649377

/-! ## A054685.P7193270915961525719

`(-1)^n^A000265(n+1)*∑[A033999(n)*A106244(n)]`
-/

namespace A054685.P7193270915961525719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A106244 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) ^ (A000265 (n + 1) : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A054685.P7193270915961525719

/-! ## A054685.P14832922633761099897

`(-1)^n^A028388(n+1)*∑[A033999(n)*A106244(n)]`
-/

namespace A054685.P14832922633761099897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A106244 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n : ℚ) ^ (A028388 (n + 1) : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A054685.P14832922633761099897

/-!
# A054686: Multiset consisting of squares and triangular numbers.

The programs for A054686, there is no canonical definition to state claims against.
-/

/-! ## A054686.P13079680857837643486

`A004526(∪[∑[2*n], A058331(n)])`
-/

namespace A054686.P13079680857837643486
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058331 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = (x : ℤ)) n)

end

end A054686.P13079680857837643486

/-!
# A054687: a(n+1) = 1 + Sum_{k=0..n} binomial(n,k)*a(k)*a(n-k) for n >= 0 with a(0) = 1.

The programs for A054687, there is no canonical definition to state claims against.
-/

/-! ## A054687.P4207798513378362939

`∑[A195120(Δ[A055790(n)])]`
-/

namespace A054687.P4207798513378362939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055790 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195120 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054687.P4207798513378362939

/-! ## A054687.P14419092287453124150

`∑[A284726(A074143(n+1))]`
-/

namespace A054687.P14419092287453124150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284726 (A074143 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A054687.P14419092287453124150

/-!
# A054688: Number of nonnegative integer n X n matrices with sum of elements equal to n; polynomial symmetric functions of matrix of order n.

The programs for A054688, there is no canonical definition to state claims against.
-/

/-! ## A054688.P9710246246403602484

`C(abs(1-∑[2*n]), n)`
-/

namespace A054688.P9710246246403602484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose |1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)|.toNat n

end

end A054688.P9710246246403602484

/-! ## A054688.P15174455019960236891

`A055789(A004273(∑[n]))`
-/

namespace A054688.P15174455019960236891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055789 (A004273 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A054688.P15174455019960236891

/-! ## A054688.P14251159083983882865

`A028310(n)*A135861(n)`
-/

namespace A054688.P14251159083983882865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A135861 n

end

end A054688.P14251159083983882865

/-! ## A054688.P16784282385071350629

`A055789(A056847(n*(n+2)))`
-/

namespace A054688.P16784282385071350629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055789 (A056847 (n * (n + 2))).toNat

end

end A054688.P16784282385071350629

/-! ## A054688.P10429058221834195689

`A007318(A000124(n))*A135861(n)`
-/

namespace A054688.P10429058221834195689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat * A135861 n

end

end A054688.P10429058221834195689

/-!
# A054690: n consecutive primes differ by 4 or more starting at a(n), or n consecutive primes with no twin primes.

The programs for A054690, there is no canonical definition to state claims against.
-/

/-! ## A054690.P3460394259452502580

`A036061(∑{e}[A319902(n+3)+1, #²]+n)`
-/

namespace A054690.P3460394259452502580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319902 (n + 3) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036061 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 2 + n)

end

end A054690.P3460394259452502580

/-! ## A054690.P18144998692268837098

`A054691(A064064(n)*A165725(n+1))`
-/

namespace A054690.P18144998692268837098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054691 (A064064 n * A165725 (n + 1)).toNat

end

end A054690.P18144998692268837098

/-!
# A054691: New records in A054690 (start of n consecutive non-twin primes).

The programs for A054691, there is no canonical definition to state claims against.
-/

/-! ## A054691.P11219254043103872238

`record[A054690(n+2)/n^(n%2)]`
-/

namespace A054691.P11219254043103872238
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054690 (n + 2) : ℚ) / (n ^ (n % 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054691.P11219254043103872238

/-! ## A054691.P9604617569275387277

`A054690(A242459(n+2))`
-/

namespace A054691.P9604617569275387277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054690 (A242459 (n + 2)).toNat

end

end A054691.P9604617569275387277

/-! ## A054691.P9825359756814574791

`record[A054690(A133310(n)+1)]`
-/

namespace A054691.P9825359756814574791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054690 (A133310 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054691.P9825359756814574791

/-! ## A054691.P12699092493893758727

`record[A054690(A134986(n+1))]`
-/

namespace A054691.P12699092493893758727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054690 (A134986 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054691.P12699092493893758727

/-! ## A054691.P13525412346715745778

`record[A054690(A152271(n)+1)]`
-/

namespace A054691.P13525412346715745778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054690 (A152271 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A054691.P13525412346715745778

/-!
# A054692: Endpoints for runs of consecutive primes mentioned in A054691.

The programs for A054692, there is no canonical definition to state claims against.
-/

/-! ## A054692.P12963420863247455468

`A242807(A242459(n+2))`
-/

namespace A054692.P12963420863247455468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242807 (A242459 (n + 2)).toNat

end

end A054692.P12963420863247455468

/-! ## A054692.P7462314297431689535

`A242807(record[A242767(n+4)])`
-/

namespace A054692.P7462314297431689535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242807 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054692.P7462314297431689535

/-! ## A054692.P11634418093048128303

`p?[A242807(record[A242768(n+4)])]`
-/

namespace A054692.P11634418093048128303
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242768 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242807 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A054692.P11634418093048128303

/-! ## A054692.P16471796390103933670

`A242807(record[A242768(3*n+4)])`
-/

namespace A054692.P16471796390103933670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242768 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242807 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A054692.P16471796390103933670

/-!
# A054693: n consecutive primes differ by 6 or more starting at a(n).

The programs for A054693, there is no canonical definition to state claims against.
-/

/-! ## A054693.P881187287044009609

`A252281(xor(A001747(n+1), A002476(n+1)))`
-/

namespace A054693.P881187287044009609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252281 (Int.xor (A001747 (n + 1)) (A002476 (n + 1))).toNat

end

end A054693.P881187287044009609

/-!
# A054697: 3 consecutive primes differ by 2n or more starting at a(n).

The programs for A054697, there is no canonical definition to state claims against.
-/

/-! ## A054697.P10417253180354966701

`A064989(p?[A120937(n+1)])`
-/

namespace A054697.P10417253180354966701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120937 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A054697.P10417253180354966701

/-! ## A054697.P2049818079589370783

`A064989(A102723(2*n+1))`
-/

namespace A054697.P2049818079589370783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (A102723 (2 * n + 1)).toNat

end

end A054697.P2049818079589370783

