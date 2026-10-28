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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C047
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
import Seq.B001.C012
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
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A097200: Numbers of the form p^5 + 5^p for p prime.

The programs for A097200, there is no canonical definition to state claims against.
-/

/-! ## A097200.P10296525212037281484

`A001593(p?[comp[n²]])`
-/

namespace A097200.P10296525212037281484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001593 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097200.P10296525212037281484

/-! ## A097200.P9438468848137868381

`A001593(A000040(n+1))`
-/

namespace A097200.P9438468848137868381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001593 (A000040 (n + 1)).toNat

end

end A097200.P9438468848137868381

/-! ## A097200.P18366339015033257214

`A001593(record[A006530(n+2)])`
-/

namespace A097200.P18366339015033257214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001593 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097200.P18366339015033257214

/-! ## A097200.P18057344309865272531

`A001593(record[A014963(n+2)])`
-/

namespace A097200.P18057344309865272531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001593 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097200.P18057344309865272531

/-! ## A097200.P5192513471214638514

`A001593(record[A020639(n+2)])`
-/

namespace A097200.P5192513471214638514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001593 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097200.P5192513471214638514

/-!
# A097201: Numbers of the form 4^p - p^4 for p prime.

The programs for A097201, there is no canonical definition to state claims against.
-/

/-! ## A097201.P9165210279920947102

`A024040(p?[comp[n²]])`
-/

namespace A097201.P9165210279920947102
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024040 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097201.P9165210279920947102

/-! ## A097201.P17517364882566726908

`A024040(A000040(n+1))`
-/

namespace A097201.P17517364882566726908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024040 (A000040 (n + 1)).toNat

end

end A097201.P17517364882566726908

/-! ## A097201.P949124457633929150

`A024040(A100484(n+1)/2)`
-/

namespace A097201.P949124457633929150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024040 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat

end

end A097201.P949124457633929150

/-! ## A097201.P9395467402252815438

`A034785(n+1)²-A001248(n+1)²`
-/

namespace A097201.P9395467402252815438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034785 (n + 1) ^ 2 - A001248 (n + 1) ^ 2

end

end A097201.P9395467402252815438

/-! ## A097201.P4260508758739245232

`A000302(A000040(n+1))-A030514(n+1)`
-/

namespace A097201.P4260508758739245232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000302 (A000040 (n + 1)).toNat - A030514 (n + 1)

end

end A097201.P4260508758739245232

/-!
# A097202: Numbers of the form 5^p - p^5 for p prime.

The programs for A097202, there is no canonical definition to state claims against.
-/

/-! ## A097202.P4781339653739850938

`A024054(Δ[A007504(n)])`
-/

namespace A097202.P4781339653739850938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024054 (f1 (n + 1) - f1 n).toNat

end

end A097202.P4781339653739850938

/-! ## A097202.P9338790542580665781

`A024054(A000040(n+1))`
-/

namespace A097202.P9338790542580665781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024054 (A000040 (n + 1)).toNat

end

end A097202.P9338790542580665781

/-! ## A097202.P10230903278484735852

`A024054(A182944(∑[n+1]))`
-/

namespace A097202.P10230903278484735852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024054 (A182944 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A097202.P10230903278484735852

/-! ## A097202.P6117214090431881430

`A024054(record[A006530(n+2)])`
-/

namespace A097202.P6117214090431881430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024054 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097202.P6117214090431881430

/-! ## A097202.P6940057745507536676

`A024054(A008864(n+1)-1)`
-/

namespace A097202.P6940057745507536676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024054 (A008864 (n + 1) - 1).toNat

end

end A097202.P6940057745507536676

/-!
# A097203: Number of 4-tuples (a,b,c,d) with 1 <= a <= b <= c <= d, a^2+b^2+c^2+d^2 = n and gcd(a,b,c,d) = 1.

The programs for A097203, there is no canonical definition to state claims against.
-/

/-! ## A097203.P12119745341842169606

`∑{d}[n+1, A025428(#)*A271102((n+1)/#)]`
-/

namespace A097203.P12119745341842169606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A025428 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A097203.P12119745341842169606

/-! ## A097203.P13891532893868811413

`A025427(n)^A128924(A100616(n))`
-/

namespace A097203.P13891532893868811413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025427 n : ℚ) ^ (A128924 (A100616 n).toNat : ℤ)

end

end A097203.P13891532893868811413

/-! ## A097203.P13095663400028929701

`A025427(n)^A225654(A016789(n))`
-/

namespace A097203.P13095663400028929701
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025427 n : ℚ) ^ (A225654 (A016789 n).toNat : ℤ)

end

end A097203.P13095663400028929701

/-! ## A097203.P3123839668403055929

`A359172(A141002(n))`
-/

namespace A097203.P3123839668403055929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359172 (A141002 n).toNat

end

end A097203.P3123839668403055929

/-! ## A097203.P8764186301842055376

`A327211(A285289(n))`
-/

namespace A097203.P8764186301842055376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327211 (A285289 n).toNat

end

end A097203.P8764186301842055376

/-!
# A097204: Binomial transform of A033312.

The programs for A097204, the canonical program `A097204.P6764667639584434237` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097204 has offset 0).

The definition of A097204 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097204.P6764667639584434237

`A000522(n)-2^n`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097204

/-- `A000522(n)-2^n` -/
def P6764667639584434237.Spec : Prop :=
  ∀ n, P6764667639584434237.a n = A097204 n

theorem P6764667639584434237.correct : P6764667639584434237.Spec := by
  intro n
  simp only [A097204]

end A097204

/-! ## A097204.P4886887255513508148

`∑{#}[n, C(n, #)*(#!-1)]`
-/

namespace A097204.P4886887255513508148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * ((Nat.factorial k : ℤ) - 1)

end

end A097204.P4886887255513508148

namespace A097204

/-- `∑{#}[n, C(n, #)*(#!-1)]` -/
def P4886887255513508148.Spec : Prop :=
  ∀ n, P4886887255513508148.a n = A097204 n

end A097204

/-! ## A097204.P16484907692820510151

`n!*∑[1/n!]-2^n`
-/

namespace A097204.P16484907692820510151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.factorial n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) * (∑ j ∈ Finset.range (n + 1), f1 j) - (2 ^ n : ℚ)

end

end A097204.P16484907692820510151

namespace A097204

/-- `n!*∑[1/n!]-2^n` -/
def P16484907692820510151.Spec : Prop :=
  ∀ n, P16484907692820510151.a n = (A097204 n : ℚ)

end A097204

/-! ## A097204.P2949979082965069401

`A073107(∑[n])-2^n`
-/

namespace A097204.P2949979082965069401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073107 (∑ j ∈ Finset.range (n + 1), f1 j) - (2 ^ n : ℤ)

end

end A097204.P2949979082965069401

namespace A097204

/-- `A073107(∑[n])-2^n` -/
def P2949979082965069401.Spec : Prop :=
  ∀ n, P2949979082965069401.a n = A097204 n

end A097204

/-! ## A097204.P624280868699297181

`A143409(∑[n])-2^n`
-/

namespace A097204.P624280868699297181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 (∑ j ∈ Finset.range (n + 1), f1 j) - (2 ^ n : ℤ)

end

end A097204.P624280868699297181

namespace A097204

/-- `A143409(∑[n])-2^n` -/
def P624280868699297181.Spec : Prop :=
  ∀ n, P624280868699297181.a n = A097204 n

end A097204

/-! ## A097204.P8769572690205849399

`Δ[A002104(n)]-2^n`
-/

namespace A097204.P8769572690205849399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002104 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (2 ^ n : ℤ)

end

end A097204.P8769572690205849399

namespace A097204

/-- `Δ[A002104(n)]-2^n` -/
def P8769572690205849399.Spec : Prop :=
  ∀ n, P8769572690205849399.a n = A097204 n

end A097204

/-! ## A097204.P12773500071873929866

`record[A143409(n)]-2^n`
-/

namespace A097204.P12773500071873929866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143409 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (2 ^ n : ℤ)

end

end A097204.P12773500071873929866

namespace A097204

/-- `record[A143409(n)]-2^n` -/
def P12773500071873929866.Spec : Prop :=
  ∀ n, P12773500071873929866.a n = A097204 n

end A097204

/-! ## A097204.P14784002754787032546

`A007526(n)+1-2^n`
-/

namespace A097204.P14784002754787032546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007526 n + (1 - (2 ^ n : ℤ))

end

end A097204.P14784002754787032546

namespace A097204

/-- `A007526(n)+1-2^n` -/
def P14784002754787032546.Spec : Prop :=
  ∀ n, P14784002754787032546.a n = A097204 n

end A097204

/-! ## A097204.P222951023615810764

`A073591(n)-A000051(n)`
-/

namespace A097204.P222951023615810764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073591 n - A000051 n

end

end A097204.P222951023615810764

namespace A097204

/-- `A073591(n)-A000051(n)` -/
def P222951023615810764.Spec : Prop :=
  ∀ n, P222951023615810764.a n = A097204 n

theorem P222951023615810764.correct : P222951023615810764.Spec := by
  intro n
  simp only [A097204, Nat.add_sub_cancel, A097204.P222951023615810764.a, A097204.P6764667639584434237.a, A000051, A000051.P14067217022188782580.a, A000522, A000522.P12126844601845706129.a, A073591, A073591.P4345016296114240383.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097204

/-! ## A097204.P2893718266057640174

`abs(A000079(n)-A000522(n))`
-/

namespace A097204.P2893718266057640174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A000522 n|

end

end A097204.P2893718266057640174

namespace A097204

/-- `abs(A000079(n)-A000522(n))` -/
def P2893718266057640174.Spec : Prop :=
  ∀ n, P2893718266057640174.a n = A097204 n

end A097204

/-!
# A097205: Numbers of the form 3^p * p^3 for p prime.

The programs for A097205, there is no canonical definition to state claims against.
-/

/-! ## A097205.P13330820084140819077

`A062074(p?[comp[n²]])`
-/

namespace A097205.P13330820084140819077
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062074 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097205.P13330820084140819077

/-! ## A097205.P10496092619739415100

`A062074(A000040(n+1))`
-/

namespace A097205.P10496092619739415100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062074 (A000040 (n + 1)).toNat

end

end A097205.P10496092619739415100

/-! ## A097205.P13460152135889302412

`A062074(A008578(n+2))`
-/

namespace A097205.P13460152135889302412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062074 (A008578 (n + 2)).toNat

end

end A097205.P13460152135889302412

/-! ## A097205.P15598957088629401865

`A062074(A002110(n+1)/A002110(n))`
-/

namespace A097205.P15598957088629401865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062074 (SequenceMachineLib.roundAway ((A002110 (n + 1) : ℚ) / (A002110 n : ℚ))).toNat

end

end A097205.P15598957088629401865

/-! ## A097205.P17849404187043893619

`A000244(A000040(n+1))*A030078(n+1)`
-/

namespace A097205.P17849404187043893619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 (A000040 (n + 1)).toNat * A030078 (n + 1)

end

end A097205.P17849404187043893619

/-!
# A097206: Numbers of the form 5^p * p^5 for p prime.

The programs for A097206, there is no canonical definition to state claims against.
-/

/-! ## A097206.P9337449982910873960

`A198402(p?[comp[n²]])`
-/

namespace A097206.P9337449982910873960
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198402 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A097206.P9337449982910873960

/-! ## A097206.P11757409366236797885

`A198402(A000040(n+1))`
-/

namespace A097206.P11757409366236797885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198402 (A000040 (n + 1)).toNat

end

end A097206.P11757409366236797885

/-! ## A097206.P8880989469097572642

`A198402(record[A006530(n+2)])`
-/

namespace A097206.P8880989469097572642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198402 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097206.P8880989469097572642

/-! ## A097206.P4576709927046697830

`A198402(record[A014963(n+2)])`
-/

namespace A097206.P4576709927046697830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198402 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097206.P4576709927046697830

/-! ## A097206.P2256953196506899202

`A198402(record[A020639(n+2)])`
-/

namespace A097206.P2256953196506899202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198402 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097206.P2256953196506899202

/-!
# A097207: 

The programs for A097207, there is no canonical definition to state claims against.
-/

/-! ## A097207.P14714158823049893641

`(row(n)+1+col(n))/(row(n)+1)*C(row(n)+1, col(n))`
-/

namespace A097207.P14714158823049893641
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + 1 + SequenceMachineLib.triCol n : ℚ) / (SequenceMachineLib.triRow n + 1 : ℚ) * (Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n) : ℚ)

end

end A097207.P14714158823049893641

/-! ## A097207.P9384655066620301429

`C(row(n)+1, row(n)+1-col(n))+C(row(n), row(n)+1-col(n))`
-/

namespace A097207.P9384655066620301429
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n + 1) ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat + Nat.choose (SequenceMachineLib.triRow n) ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat

end

end A097207.P9384655066620301429

/-! ## A097207.P10948920669947689310

`A029638(n+1)-char[∑[n]]`
-/

namespace A097207.P10948920669947689310
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029638 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A097207.P10948920669947689310

/-! ## A097207.P4196695884640436145

`A092393(n+1)/∑[char[∑[n]]]`
-/

namespace A097207.P4196695884640436145
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092393 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A097207.P4196695884640436145

/-! ## A097207.P3283531310240439123

`A051597(n)-A214292(n)`
-/

namespace A097207.P3283531310240439123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n - A214292 n

end

end A097207.P3283531310240439123

/-! ## A097207.P4065988626642643106

`A051597(n)-Δ[A074909(n)]`
-/

namespace A097207.P4065988626642643106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051597 n - (f1 (n + 1) - f1 n)

end

end A097207.P4065988626642643106

/-! ## A097207.P9442798439271017696

`A029656(n+1)-A080233(n)`
-/

namespace A097207.P9442798439271017696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029656 (n + 1) - A080233 n

end

end A097207.P9442798439271017696

/-! ## A097207.P12420462953857264802

`A029638(n+1)/A035214(n)`
-/

namespace A097207.P12420462953857264802
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029638 (n + 1) : ℚ) / (A035214 n : ℚ)

end

end A097207.P12420462953857264802

/-! ## A097207.P11980202094560799026

`2*A074909(n)-A007318(n)`
-/

namespace A097207.P11980202094560799026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 n - A007318 n

end

end A097207.P11980202094560799026

/-! ## A097207.P14162262040915587846

`2*A051597(n)-A110813(n)`
-/

namespace A097207.P14162262040915587846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A051597 n - A110813 n

end

end A097207.P14162262040915587846

/-! ## A097207.P958448758652743917

`A110813(n)-2*A214292(n)`
-/

namespace A097207.P958448758652743917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110813 n - 2 * A214292 n

end

end A097207.P958448758652743917

/-! ## A097207.P957721255748761809

`gcd(A010816(n), A029638(n+1))`
-/

namespace A097207.P957721255748761809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010816 n) (A029638 (n + 1))

end

end A097207.P957721255748761809

/-! ## A097207.P8117343249600639937

`2*A074909(n)-Δ[A102363(n)]`
-/

namespace A097207.P8117343249600639937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 n - (f1 (n + 1) - f1 n)

end

end A097207.P8117343249600639937

/-! ## A097207.P11687734932021522727

`A029638(n+1)/(A010054(n)+1)`
-/

namespace A097207.P11687734932021522727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029638 (n + 1) : ℚ) / (A010054 n + 1 : ℚ)

end

end A097207.P11687734932021522727

/-! ## A097207.P11734010588887576744

`A028326(comp[C(n, 2)]-1)-A007318(n)`
-/

namespace A097207.P11734010588887576744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n - 1) - A007318 n

end

end A097207.P11734010588887576744

/-! ## A097207.P11136068440523310580

`A029621(A028310(n))-A124927(n)`
-/

namespace A097207.P11136068440523310580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029621 (A028310 n).toNat - A124927 n

end

end A097207.P11136068440523310580

/-! ## A097207.P791354108944323361

`A028326(A007401(n+1))-A007318(n)`
-/

namespace A097207.P791354108944323361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028326 (A007401 (n + 1)).toNat - A007318 n

end

end A097207.P791354108944323361

/-! ## A097207.P7237695304625209201

`2*A074909(n)-A074909(A056943(n))`
-/

namespace A097207.P7237695304625209201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 n - A074909 (A056943 n).toNat

end

end A097207.P7237695304625209201

/-! ## A097207.P7236804094084537946

`2*A074909(n)-A074909(A083920(n))`
-/

namespace A097207.P7236804094084537946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 n - A074909 (A083920 n).toNat

end

end A097207.P7236804094084537946

/-! ## A097207.P2621636650231986439

`2*A074909(n)-A074909(A271439(n))`
-/

namespace A097207.P2621636650231986439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 n - A074909 (A271439 n).toNat

end

end A097207.P2621636650231986439

/-!
# A097210: Numbers that appear in A076078.

The programs for A097210, there is no canonical definition to state claims against.
-/

/-! ## A097210.P7821318257956929709

`∪[2^n, A097416(n+1)]`
-/

namespace A097210.P7821318257956929709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097210.P7821318257956929709

/-! ## A097210.P4860449748558931618

`∪[A097416(n+1), A000079(n)]`
-/

namespace A097210.P4860449748558931618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097210.P4860449748558931618

/-! ## A097210.P2230273629208338104

`∪[A097416(n+1), Δ[A000225(n)]]`
-/

namespace A097210.P2230273629208338104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097416 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097210.P2230273629208338104

/-! ## A097210.P4160168757983556421

`∪[A097416(n+1), A097214(n+1)]`
-/

namespace A097210.P4160168757983556421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097416 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097214 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097210.P4160168757983556421

/-! ## A097210.P14123673302224645956

`A076078(A131886(n+1))`
-/

namespace A097210.P14123673302224645956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (A131886 (n + 1)).toNat

end

end A097210.P14123673302224645956

/-!
# A097211: a(n) = the number of sets of distinct positive integers with a least common multiple of A025487(n), i.e., A076078(A025487(n)).

The programs for A097211, there is no canonical definition to state claims against.
-/

/-! ## A097211.P8481936722656252435

`A076078(A025487(n+1))`
-/

namespace A097211.P8481936722656252435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (A025487 (n + 1)).toNat

end

end A097211.P8481936722656252435

/-! ## A097211.P8981058895059111283

`A076078(record[A046523(n+1)])`
-/

namespace A097211.P8981058895059111283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097211.P8981058895059111283

/-! ## A097211.P17351707673900893704

`A076078(record[A278523(n+1)])`
-/

namespace A097211.P17351707673900893704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278523 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097211.P17351707673900893704

/-! ## A097211.P6661380060979433194

`A076078(record[A328479(n+1)])`
-/

namespace A097211.P6661380060979433194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328479 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097211.P6661380060979433194

/-! ## A097211.P5452818497948061059

`A076078(A181817(n+1)/A181816(n+1))`
-/

namespace A097211.P5452818497948061059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (SequenceMachineLib.roundAway ((A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ))).toNat

end

end A097211.P5452818497948061059

/-!
# A097212: Numbers n such that A076078(n) > A076078(m) for all m < n, A076078(n) being the number of sets of distinct positive integers with a least common multiple of n.

The programs for A097212, there is no canonical definition to state claims against.
-/

/-! ## A097212.P14220447083430363870

`∪[A002182(n+1), A097213(n+1)]`
-/

namespace A097212.P14220447083430363870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002182 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097212.P14220447083430363870

/-! ## A097212.P1901375763908595223

`∪[A119500(n+1), A266228(n+1)]`
-/

namespace A097212.P1901375763908595223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266228 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097212.P1901375763908595223

/-!
# A097213: Members of A097212, excluding highly composite numbers (A002182).

The programs for A097213, there is no canonical definition to state claims against.
-/

/-! ## A097213.P10969171033247127520

`∩[A097212(n+1), A308508(n+1)]`
-/

namespace A097213.P10969171033247127520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097213.P10969171033247127520

/-! ## A097213.P7341585345951815124

`∩[A097212(n+1), A363280(n+1)]`
-/

namespace A097213.P7341585345951815124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097213.P7341585345951815124

/-! ## A097213.P13142909492329182741

`∩[A097212(n+1), A244353(n+1)]`
-/

namespace A097213.P13142909492329182741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097212 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097213.P13142909492329182741

/-!
# A097214: Numbers m such that A076078(m) = m, where A076078(m) equals the number of sets of distinct positive integers with a least common multiple of m.

The programs for A097214, there is no canonical definition to state claims against.
-/

/-! ## A097214.P16853604575220624310

`∩[A097210(n+1), A135772(n+1)]`
-/

namespace A097214.P16853604575220624310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135772 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097214.P16853604575220624310

/-! ## A097214.P4873359973238622440

`∩[A097210(n+1), A331627(n+1)]`
-/

namespace A097214.P4873359973238622440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331627 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097214.P4873359973238622440

/-! ## A097214.P826532039390867646

`A028310(∩[A097210(n+1), A271816(n+1)])`
-/

namespace A097214.P826532039390867646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271816 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A097214.P826532039390867646

/-! ## A097214.P5474974330188585193

`∩[A246277(A097498(n+1)), A222264(n+1)]`
-/

namespace A097214.P5474974330188585193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246277 (A097498 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222264 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097214.P5474974330188585193

/-! ## A097214.P13590704111963545500

`∩[A097210(n+1), A191986(n+1)]`
-/

namespace A097214.P13590704111963545500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097210 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097214.P13590704111963545500

/-!
# A097215: Numbers m such that A076078(m) = m and bigomega(m) >= 2; or in other words, A097214, excluding powers of 2.

The programs for A097215, there is no canonical definition to state claims against.
-/

/-! ## A097215.P5000756511511505870

`∩[A097214(n+1), A097416(n+1)]`
-/

namespace A097215.P5000756511511505870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097214 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097416 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097215.P5000756511511505870

/-! ## A097215.P17679555376215347596

`filter[A097214(n+1), A202238(#)]`
-/

namespace A097215.P17679555376215347596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A097215.P17679555376215347596

/-! ## A097215.P1885137200433177343

`filter[A097214(n+1), A323170(#)]`
-/

namespace A097215.P1885137200433177343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A097215.P1885137200433177343

/-!
# A097216: Numbers n such that A076078(n) > n, where A076078(n) equals the number of sets of distinct positive integers with a least common multiple of n.

The programs for A097216, there is no canonical definition to state claims against.
-/

/-! ## A097216.P17847558590572723605

`lt[n+1, A076078(n+1)]+1`
-/

namespace A097216.P17847558590572723605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A097216.P17847558590572723605

/-! ## A097216.P14239955853819856130

`lt[n/2+1, A069626(n+1)]+1`
-/

namespace A097216.P14239955853819856130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A097216.P14239955853819856130

/-! ## A097216.P11968931574716641442

`lt[n+1, A076078(A028310(n))]`
-/

namespace A097216.P11968931574716641442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A097216.P11968931574716641442

/-! ## A097216.P3384739301045966902

`A020725(lt[n+1, A076078(n+1)])`
-/

namespace A097216.P3384739301045966902
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A097216.P3384739301045966902

/-! ## A097216.P17143955854152786661

`A065475(lt[n+1, A076078(n+1)])`
-/

namespace A097216.P17143955854152786661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A097216.P17143955854152786661

/-! ## A097216.P5990267337104134225

`lt[n+1, A076078(A000007(n)+n)]`
-/

namespace A097216.P5990267337104134225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A097216.P5990267337104134225

/-! ## A097216.P12362359149802701105

`lt[A060683(n+5), A325938(n+1)]+1`
-/

namespace A097216.P12362359149802701105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060683 (n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325938 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A097216.P12362359149802701105

/-! ## A097216.P17269843124550180475

`lt[A080036(n+1), 2*A069626(n+1)+1]+1`
-/

namespace A097216.P17269843124550180475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069626 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A097216.P17269843124550180475

/-! ## A097216.P16481150057110083683

`lt[A004274(A004219(n+1)), A048785(n)]`
-/

namespace A097216.P16481150057110083683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004274 (A004219 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097216.P16481150057110083683

/-! ## A097216.P1999720489790182573

`A020725(lt[A008619(n), A069626(n+1)])`
-/

namespace A097216.P1999720489790182573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A097216.P1999720489790182573

/-!
# A097217: Odd numbers n such that A076078(n) > n, where A076078(n) equals the number of sets of distinct positive integers with a least common multiple of n.

The programs for A097217, there is no canonical definition to state claims against.
-/

/-! ## A097217.P5349374147293833262

`A068355(A077168(n+1))`
-/

namespace A097217.P5349374147293833262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068355 (A077168 (n + 1)).toNat

end

end A097217.P5349374147293833262

/-! ## A097217.P4789378838100774408

`or(A000688(A049002(n+1)), A068355(n+2))`
-/

namespace A097217.P4789378838100774408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000688 (A049002 (n + 1)).toNat) (A068355 (n + 2))

end

end A097217.P4789378838100774408

/-! ## A097217.P7837844650289799064

`A000688(A049002(n+2))*A068355(n+2)`
-/

namespace A097217.P7837844650289799064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A049002 (n + 2)).toNat * A068355 (n + 2)

end

end A097217.P7837844650289799064

/-! ## A097217.P7218588617731463932

`or(A068355(n+2), A320655(A068342(n+1)))`
-/

namespace A097217.P7218588617731463932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068355 (n + 2)) (A320655 (A068342 (n + 1)).toNat)

end

end A097217.P7218588617731463932

/-! ## A097217.P8344925553433950458

`or(A068355(n+2), A320655(A079936(n+1)))`
-/

namespace A097217.P8344925553433950458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A068355 (n + 2)) (A320655 (A079936 (n + 1)).toNat)

end

end A097217.P8344925553433950458

/-!
# A097218: Numbers n such that A076078(n) < n, where A076078(n) equals the number of sets of distinct positive integers with a least common multiple of n.

The programs for A097218, there is no canonical definition to state claims against.
-/

/-! ## A097218.P5298886876235136608

`lt[A076078(round(acot(n)+n)), n]`
-/

namespace A097218.P5298886876235136608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A097218.P5298886876235136608

/-! ## A097218.P815885658830225042

`lt[A076078(abs(1-n)+1), n]`
-/

namespace A097218.P815885658830225042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A097218.P815885658830225042

/-! ## A097218.P3861170393190179811

`comp[lt[n, A076078(n+1)]]+1`
-/

namespace A097218.P3861170393190179811
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1

end

end A097218.P3861170393190179811

/-! ## A097218.P10505835009249116339

`lt[A286161(n+1), 2*n]+1`
-/

namespace A097218.P10505835009249116339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286161 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097218.P10505835009249116339

/-! ## A097218.P1551007931778709286

`lt[2*A069626(n+1), n+1]+1`
-/

namespace A097218.P1551007931778709286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069626 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097218.P1551007931778709286

/-! ## A097218.P14797095608468911164

`A214547(n+1)+char[70*(n+1)²-1]`
-/

namespace A097218.P14797095608468911164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (70 * (n + 1) ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214547 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A097218.P14797095608468911164

/-! ## A097218.P8590279719628199752

`lt[A069626(n+1), A008619(n)]+1`
-/

namespace A097218.P8590279719628199752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A097218.P8590279719628199752

/-! ## A097218.P2688324294167326072

`A020725(lt[A076078(n+1), n+1])`
-/

namespace A097218.P2688324294167326072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076078 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A097218.P2688324294167326072

/-! ## A097218.P7746631773449870244

`lt[A023864(A000005(abs(1-n)+1)), n]`
-/

namespace A097218.P7746631773449870244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023864 (A000005 (|1 - (n : ℤ)| + 1).toNat).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A097218.P7746631773449870244

/-! ## A097218.P10394761791232178581

`lt[A049950(A000005(n+1)+1), n]+1`
-/

namespace A097218.P10394761791232178581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049950 (A000005 (n + 1) + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097218.P10394761791232178581

/-!
# A097219: Numbers n that are the hypotenuse of exactly 6 distinct integer-sided right triangles, i.e., n^2 can be written as a sum of two squares in 6 ways.

The programs for A097219, there is no canonical definition to state claims against.
-/

/-! ## A097219.P13121959388124683808

`A167865(A051507(n+1))*A290499(n+1)/25`
-/

namespace A097219.P13121959388124683808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167865 (A051507 (n + 1)).toNat * A290499 (n + 1) : ℚ) / 25

end

end A097219.P13121959388124683808

/-! ## A097219.P12519181546470315378

`ceil(A290500(n+1)/A010686(A351377(n+1)))/25`
-/

namespace A097219.P12519181546470315378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌈(A290500 (n + 1) : ℚ) / (A010686 (A351377 (n + 1)).toNat : ℚ)⌉ : ℚ) / 25

end

end A097219.P12519181546470315378

/-! ## A097219.P16159000005108996806

`A290499(n+1)/A165826(A248201(n+1))`
-/

namespace A097219.P16159000005108996806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290499 (n + 1) : ℚ) / (A165826 (A248201 (n + 1)).toNat : ℚ)

end

end A097219.P16159000005108996806

/-! ## A097219.P9331976638764795728

`A003983(A000217(2*n+1))*A290499(n+1)/25`
-/

namespace A097219.P9331976638764795728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003983 (A000217 (2 * n + 1)).toNat * A290499 (n + 1) : ℚ) / 25

end

end A097219.P9331976638764795728

/-! ## A097219.P3468295198056108124

`A015539(A241153(n+2))+5*A084649(n+1)`
-/

namespace A097219.P3468295198056108124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015539 (A241153 (n + 2)).toNat + 5 * A084649 (n + 1)

end

end A097219.P3468295198056108124

/-! ## A097219.P2670769872514147652

`A046080(A084649(A256452(n+1)))*A084649(n+1)`
-/

namespace A097219.P2670769872514147652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046080 (A084649 (A256452 (n + 1)).toNat).toNat * A084649 (n + 1)

end

end A097219.P2670769872514147652

/-! ## A097219.P9651526990351712701

`A010676(A246685(n))*A084649(n+1)`
-/

namespace A097219.P9651526990351712701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 (A246685 n).toNat * A084649 (n + 1)

end

end A097219.P9651526990351712701

/-! ## A097219.P9126422416323372183

`A010676(A165826(n+1))*A084649(n+1)`
-/

namespace A097219.P9126422416323372183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 (A165826 (n + 1)).toNat * A084649 (n + 1)

end

end A097219.P9126422416323372183

/-! ## A097219.P1814772846829238685

`A040021(A209819(n+1))*A084649(n+1)`
-/

namespace A097219.P1814772846829238685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040021 (A209819 (n + 1)).toNat * A084649 (n + 1)

end

end A097219.P1814772846829238685

/-!
# A097220: Numbers n such that pi(n) = product of digits of n.

The programs for A097220, there is no canonical definition to state claims against.
-/

/-! ## A097220.P2556224061636637386

`eq[A051801(n), A230980(n)]`
-/

namespace A097220.P2556224061636637386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097220.P2556224061636637386

/-! ## A097220.P12312305709565749410

`eq[A000720(A028310(n)), A051801(n)]`
-/

namespace A097220.P12312305709565749410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028310 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051801 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097220.P12312305709565749410

/-! ## A097220.P16501726399811191684

`eq[A028310(A007954(n)), A230980(n)]`
-/

namespace A097220.P16501726399811191684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A007954 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097220.P16501726399811191684

/-! ## A097220.P7975268274002913286

`eq[A000040(A051801(n)), A136548(n+1)]`
-/

namespace A097220.P7975268274002913286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A051801 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097220.P7975268274002913286

/-!
# A097221: Numbers n such that for some k and a_1,a_2,...,a_k the concatenation of the a_i is equal to n and their product is equal to pi(n).

The programs for A097221, there is no canonical definition to state claims against.
-/

/-! ## A097221.P6128112734776958908

`A112012(A043315(n+1))`
-/

namespace A097221.P6128112734776958908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112012 (A043315 (n + 1)).toNat

end

end A097221.P6128112734776958908

/-! ## A097221.P3122498331978224576

`A112012(A044912(n+1))`
-/

namespace A097221.P3122498331978224576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112012 (A044912 (n + 1)).toNat

end

end A097221.P3122498331978224576

/-! ## A097221.P9026658611213478799

`A112012(A055649(n+1))`
-/

namespace A097221.P9026658611213478799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112012 (A055649 (n + 1)).toNat

end

end A097221.P9026658611213478799

/-! ## A097221.P15506692158708881807

`A112012(A061378(n+1))`
-/

namespace A097221.P15506692158708881807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112012 (A061378 (n + 1)).toNat

end

end A097221.P15506692158708881807

/-! ## A097221.P5166025056938580252

`A112012(A062399(n+1))`
-/

namespace A097221.P5166025056938580252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112012 (A062399 (n + 1)).toNat

end

end A097221.P5166025056938580252

/-!
# A097225: Numbers n that are the hypotenuse of exactly 10 distinct integer-sided right triangles, i.e., n^2 can be written as a sum of two squares in 10 ways.

The programs for A097225, there is no canonical definition to state claims against.
-/

/-! ## A097225.P1418670030848058499

`(A097238(n+1)/25)%A124491(n+1)`
-/

namespace A097225.P1418670030848058499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A097238 (n + 1) : ℚ) / 25)) (A124491 (n + 1))

end

end A097225.P1418670030848058499

/-! ## A097225.P16146762671521168245

`(A097238(n+1)/25)^Δ[A008554(n+1)]`
-/

namespace A097225.P16146762671521168245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008554 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A097238 (n + 1) : ℚ) / 25) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A097225.P16146762671521168245

/-! ## A097225.P6632998145465720090

`A000007(A002496(n+1))+A097238(n+1)/25`
-/

namespace A097225.P6632998145465720090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000007 (A002496 (n + 1)).toNat : ℚ) + (A097238 (n + 1) : ℚ) / 25

end

end A097225.P6632998145465720090

/-! ## A097225.P3388908374705086118

`A097238(n+1)/25*A005171(A022093(n+1))`
-/

namespace A097225.P3388908374705086118
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097238 (n + 1) : ℚ) / 25 * (A005171 (A022093 (n + 1)).toNat : ℚ)

end

end A097225.P3388908374705086118

/-! ## A097225.P206047121103155905

`A097238(n+1)/25*A001221(A118722(n+1))`
-/

namespace A097225.P206047121103155905
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097238 (n + 1) : ℚ) / 25 * (A001221 (A118722 (n + 1)).toNat : ℚ)

end

end A097225.P206047121103155905

/-!
# A097229: Triangle read by rows: number of Motzkin paths by length and by number of humps.

The programs for A097229, there is no canonical definition to state claims against.
-/

/-! ## A097229.P6107790057935862328

`A097862(n+1)-A044941(A000016(n))`
-/

namespace A097229.P6107790057935862328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097862 (n + 1) - A044941 (A000016 n).toNat

end

end A097229.P6107790057935862328

/-! ## A097229.P16989956242466369913

`A097862(n+1)-A049610(A088156(n)!)`
-/

namespace A097229.P16989956242466369913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097862 (n + 1) - A049610 (Nat.factorial (A088156 n).toNat)

end

end A097229.P16989956242466369913

/-! ## A097229.P4094811151745096263

`A051162(C(A097862(n+1)+1, 2))`
-/

namespace A097229.P4094811151745096263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 (Nat.choose (A097862 (n + 1) + 1).toNat 2)

end

end A097229.P4094811151745096263

/-! ## A097229.P5391211164234122675

`A131818(C(A097862(n+1), 2)+1)`
-/

namespace A097229.P5391211164234122675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (Nat.choose (A097862 (n + 1)).toNat 2 + 1)

end

end A097229.P5391211164234122675

/-! ## A097229.P2907683811341573735

`A097862(n+1)%A264272(A097860(n))`
-/

namespace A097229.P2907683811341573735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A097862 (n + 1)) (A264272 (A097860 n).toNat)

end

end A097229.P2907683811341573735

/-!
# A097230: Triangle read by rows: number of binary sequences with no isolated 1's.

The programs for A097230, there is no canonical definition to state claims against.
-/

/-! ## A097230.P9363833522294770874

`A180177(A038722(n+1))`
-/

namespace A097230.P9363833522294770874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180177 (A038722 (n + 1)).toNat

end

end A097230.P9363833522294770874

/-! ## A097230.P169728284708704521

`A180177(A061579(n)+1)`
-/

namespace A097230.P169728284708704521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180177 (A061579 n + 1).toNat

end

end A097230.P169728284708704521

/-! ## A097230.P5865690810397999651

`A180177(A093995(n+1)-n)`
-/

namespace A097230.P5865690810397999651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180177 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A097230.P5865690810397999651

/-! ## A097230.P11026374065646463810

`A180177(A002024(n+1)²-n)`
-/

namespace A097230.P11026374065646463810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180177 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A097230.P11026374065646463810

/-! ## A097230.P13732466281070659286

`A180177(A001489(n)+A002024(n+1)²)`
-/

namespace A097230.P13732466281070659286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180177 (A001489 n + A002024 (n + 1) ^ 2).toNat

end

end A097230.P13732466281070659286

/-!
# A097232: Starting primes for which there are no solutions in A097231.

The programs for A097232, there is no canonical definition to state claims against.
-/

/-! ## A097232.P2390793097370630918

`A000040(lt[A097231(n+1), 1]+1)`
-/

namespace A097232.P2390793097370630918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097231 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A097232.P2390793097370630918

/-!
# A097234: Numerators of coefficients in cosh(x) / sin(x) power series.

The programs for A097234, there is no canonical definition to state claims against.
-/

/-! ## A097234.P2432983943957457831

`A007418(comp[2*(n+1)])-floor(acot(n)²)`
-/

namespace A097234.P2432983943957457831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007418 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A097234.P2432983943957457831

/-! ## A097234.P3100043983659706672

`A007418(A004273(n))-A000038(n)`
-/

namespace A097234.P3100043983659706672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007418 (A004273 n).toNat - A000038 n

end

end A097234.P3100043983659706672

/-! ## A097234.P12108766943968298976

`A007418(A004273(n))*A158388(n)`
-/

namespace A097234.P12108766943968298976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007418 (A004273 n).toNat * A158388 n

end

end A097234.P12108766943968298976

/-! ## A097234.P7079600623043272256

`or(-A112316(n), A007418(A004273(n)))`
-/

namespace A097234.P7079600623043272256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A112316 n) (A007418 (A004273 n).toNat)

end

end A097234.P7079600623043272256

/-! ## A097234.P110463811267467241

`A007418(A004273(n))-(A153881(n+1)+1)`
-/

namespace A097234.P110463811267467241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007418 (A004273 n).toNat - (A153881 (n + 1) + 1)

end

end A097234.P110463811267467241

/-!
# A097235: Denominators of coefficients in cosh(x) / sin(x) power series.

The programs for A097235, there is no canonical definition to state claims against.
-/

/-! ## A097235.P4151549902552085820

`A007451(record[A026741(n)])`
-/

namespace A097235.P4151549902552085820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007451 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097235.P4151549902552085820

/-! ## A097235.P7092038388088816053

`A007451(A004277(n)-1)`
-/

namespace A097235.P7092038388088816053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007451 (A004277 n - 1).toNat

end

end A097235.P7092038388088816053

/-! ## A097235.P7938967536682634440

`A007451(eq[n, A026741(n)])`
-/

namespace A097235.P7938967536682634440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007451 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097235.P7938967536682634440

/-! ## A097235.P9206838442006082047

`A007451(A057428(n)+2*n)`
-/

namespace A097235.P9206838442006082047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007451 (A057428 n + (2 * n : ℤ)).toNat

end

end A097235.P9206838442006082047

/-! ## A097235.P1699785210065513274

`A007451(lt[A007447(n+1), 3])`
-/

namespace A097235.P1699785210065513274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007447 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007451 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A097235.P1699785210065513274

/-!
# A097236: Number of hierarchical orderings ("societies") with at least 2 elements ("individuals") on each level for n labeled elements.

The programs for A097236, there is no canonical definition to state claims against.
-/

/-! ## A097236.P11040722066557085200

`A106608(A332254(n+1))`
-/

namespace A097236.P11040722066557085200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 (A332254 (n + 1)).toNat

end

end A097236.P11040722066557085200

/-! ## A097236.P16199659122238216438

`Δ[A020719(∑[A332254(n)])]`
-/

namespace A097236.P16199659122238216438
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332254 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020719 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097236.P16199659122238216438

/-! ## A097236.P8765327371858977988

`Δ[A020725(∑[A332254(n)])]`
-/

namespace A097236.P8765327371858977988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332254 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A097236.P8765327371858977988

/-!
# A097237: Number of hierarchical orderings ("societies") of n labeled elements ("individuals") with at least two occupied levels.

The programs for A097237, there is no canonical definition to state claims against.
-/

/-! ## A097237.P2884215251171151010

`A014681(A092881(n)+A003063(n+1))`
-/

namespace A097237.P2884215251171151010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A092881 n + A003063 (n + 1)).toNat

end

end A097237.P2884215251171151010

/-! ## A097237.P10907711927266486427

`A004277(A000557(n))-(A101052(n)+1)`
-/

namespace A097237.P10907711927266486427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A000557 n).toNat - (A101052 n + 1)

end

end A097237.P10907711927266486427

/-!
# A097238: Numbers j that are the hypotenuse of exactly 16 distinct integer-sided right triangles, i.e., j^2 can be written as a sum of two squares in 16 ways.

The programs for A097238, there is no canonical definition to state claims against.
-/

/-! ## A097238.P8233662612356564554

`A290505(n+1)/A061200(A005384(n+1))`
-/

namespace A097238.P8233662612356564554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290505 (n + 1) : ℚ) / (A061200 (A005384 (n + 1)).toNat : ℚ)

end

end A097238.P8233662612356564554

/-! ## A097238.P1404766898575705220

`A290505(n+1)/A083945(A175122(n+1))`
-/

namespace A097238.P1404766898575705220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290505 (n + 1) : ℚ) / (A083945 (A175122 (n + 1)).toNat : ℚ)

end

end A097238.P1404766898575705220

/-! ## A097238.P15898147636157811393

`A290505(n+1)/A094473(A006005(n+1))`
-/

namespace A097238.P15898147636157811393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290505 (n + 1) : ℚ) / (A094473 (A006005 (n + 1)).toNat : ℚ)

end

end A097238.P15898147636157811393

/-! ## A097238.P11090084703268342933

`A290505(n+1)/A094473(A016969(n))`
-/

namespace A097238.P11090084703268342933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290505 (n + 1) : ℚ) / (A094473 (A016969 n).toNat : ℚ)

end

end A097238.P11090084703268342933

/-! ## A097238.P6894494961086054114

`A290505(n+1)/A165826(A115103(n+1))`
-/

namespace A097238.P6894494961086054114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290505 (n + 1) : ℚ) / (A165826 (A115103 (n + 1)).toNat : ℚ)

end

end A097238.P6894494961086054114

/-! ## A097238.P7565259453220562797

`A290505(n+1)/A094473(A111744(n+1))`
-/

namespace A097238.P7565259453220562797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290505 (n + 1) : ℚ) / (A094473 (A111744 (n + 1)).toNat : ℚ)

end

end A097238.P7565259453220562797

/-! ## A097238.P11454566377066815764

`A290505(n+1)/5%A290508(n+1)`
-/

namespace A097238.P11454566377066815764
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290505 (n + 1) : ℚ) / (Int.tmod 5 (A290508 (n + 1)) : ℚ)

end

end A097238.P11454566377066815764

/-! ## A097238.P12459757513307384620

`A290505(n+1)/A158405(A167614(n+1))`
-/

namespace A097238.P12459757513307384620
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290505 (n + 1) : ℚ) / (A158405 (A167614 (n + 1)).toNat : ℚ)

end

end A097238.P12459757513307384620

/-! ## A097238.P15841793951772282844

`A290505(n+1)/A010137(A248201(n+1))`
-/

namespace A097238.P15841793951772282844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290505 (n + 1) : ℚ) / (A010137 (A248201 (n + 1)).toNat : ℚ)

end

end A097238.P15841793951772282844

/-! ## A097238.P1661514802200782507

`A290505(n+1)/A094473(A216770(n+1))`
-/

namespace A097238.P1661514802200782507
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290505 (n + 1) : ℚ) / (A094473 (A216770 (n + 1)).toNat : ℚ)

end

end A097238.P1661514802200782507

/-!
# A097240: a(n) = (n+1)*prime(n) + n*prime(n+1).

The programs for A097240, the canonical program `A097240.P202497919192875445` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097240 has offset 1).

The definition of A097240 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+2)*A000040(n+1)+(n+1)*A000040(n+2)` (program `A097240.P202497919192875445`, by `A097240.P202497919192875445.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A097240.P202497919192875445

`(n+2)*A000040(n+1)+(n+1)*A000040(n+2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097240

/-- `(n+2)*A000040(n+1)+(n+1)*A000040(n+2)` -/
def P202497919192875445.Spec : Prop :=
  ∀ n, P202497919192875445.a n = A097240 (n + 1)

theorem P202497919192875445.correct : P202497919192875445.Spec := by
  intro n
  simp only [A097240, Nat.add_sub_cancel]

end A097240

/-! ## A097240.P10454176124964324372

`A258851(A006094(n+1))`
-/

namespace A097240.P10454176124964324372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (A006094 (n + 1)).toNat

end

end A097240.P10454176124964324372

namespace A097240

/-- `A258851(A006094(n+1))` -/
def P10454176124964324372.Spec : Prop :=
  ∀ n, P10454176124964324372.a n = A097240 (n + 1)

end A097240

/-! ## A097240.P11323219231000082437

`A152117(n+1)-A001223(n+1)`
-/

namespace A097240.P11323219231000082437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152117 (n + 1) - A001223 (n + 1)

end

end A097240.P11323219231000082437

namespace A097240

/-- `A152117(n+1)-A001223(n+1)` -/
def P11323219231000082437.Spec : Prop :=
  ∀ n, P11323219231000082437.a n = A097240 (n + 1)

theorem P11323219231000082437.correct : P11323219231000082437.Spec := by
  intro n
  simp only [A097240, Nat.add_sub_cancel, A097240.P11323219231000082437.a, A097240.P202497919192875445.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A152117, A152117.P889453854447432266.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097240

/-! ## A097240.P9634718251174989393

`A247380(n+1)+2*A033286(n+1)`
-/

namespace A097240.P9634718251174989393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247380 (n + 1) + 2 * A033286 (n + 1)

end

end A097240.P9634718251174989393

namespace A097240

/-- `A247380(n+1)+2*A033286(n+1)` -/
def P9634718251174989393.Spec : Prop :=
  ∀ n, P9634718251174989393.a n = A097240 (n + 1)

theorem P9634718251174989393.correct : P9634718251174989393.Spec := by
  intro n
  simp only [A097240, Nat.add_sub_cancel, A097240.P9634718251174989393.a, A097240.P202497919192875445.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033286, A033286.P2794343547372572705.a, A247380, A247380.P8040246546011606999.a, A117495, A117495.P9366338507972242085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097240

/-! ## A097240.P2746952747572250369

`A000040(n+1)+(n+1)*Δ[A061802(n)]`
-/

namespace A097240.P2746952747572250369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n + 1 : ℤ) * (f1 (n + 1) - f1 n)

end

end A097240.P2746952747572250369

namespace A097240

/-- `A000040(n+1)+(n+1)*Δ[A061802(n)]` -/
def P2746952747572250369.Spec : Prop :=
  ∀ n, P2746952747572250369.a n = A097240 (n + 1)

end A097240

/-! ## A097240.P7513219952085999992

`A000040(n+1)+(n+1)*A001043(n+1)`
-/

namespace A097240.P7513219952085999992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n + 1 : ℤ) * A001043 (n + 1)

end

end A097240.P7513219952085999992

namespace A097240

/-- `A000040(n+1)+(n+1)*A001043(n+1)` -/
def P7513219952085999992.Spec : Prop :=
  ∀ n, P7513219952085999992.a n = A097240 (n + 1)

theorem P7513219952085999992.correct : P7513219952085999992.Spec := by
  intro n
  simp only [A097240, Nat.add_sub_cancel, A097240.P7513219952085999992.a, A097240.P202497919192875445.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097240

/-! ## A097240.P9690109864794509350

`A164931(n+2)+A117495(n+2)`
-/

namespace A097240.P9690109864794509350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164931 (n + 2) + A117495 (n + 2)

end

end A097240.P9690109864794509350

namespace A097240

/-- `A164931(n+2)+A117495(n+2)` -/
def P9690109864794509350.Spec : Prop :=
  ∀ n, P9690109864794509350.a n = A097240 (n + 1)

end A097240

/-! ## A097240.P2412808217789298851

`A152117(n+1)-Δ[A000040(n+1)]`
-/

namespace A097240.P2412808217789298851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152117 (n + 1) - (f1 (n + 1) - f1 n)

end

end A097240.P2412808217789298851

namespace A097240

/-- `A152117(n+1)-Δ[A000040(n+1)]` -/
def P2412808217789298851.Spec : Prop :=
  ∀ n, P2412808217789298851.a n = A097240 (n + 1)

theorem P2412808217789298851.correct : P2412808217789298851.Spec := by
  intro n
  simp only [A097240, Nat.add_sub_cancel, A097240.P2412808217789298851.f1, A097240.P2412808217789298851.a, A097240.P202497919192875445.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A152117, A152117.P889453854447432266.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097240

/-! ## A097240.P2035672570516135073

`A000040(n+1)+A117495(n+2)+A033286(n+1)`
-/

namespace A097240.P2035672570516135073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A117495 (n + 2) + A033286 (n + 1))

end

end A097240.P2035672570516135073

namespace A097240

/-- `A000040(n+1)+A117495(n+2)+A033286(n+1)` -/
def P2035672570516135073.Spec : Prop :=
  ∀ n, P2035672570516135073.a n = A097240 (n + 1)

theorem P2035672570516135073.correct : P2035672570516135073.Spec := by
  intro n
  simp only [A097240, Nat.add_sub_cancel, A097240.P2035672570516135073.a, A097240.P202497919192875445.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A033286, A033286.P2794343547372572705.a, A117495, A117495.P9366338507972242085.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097240

/-! ## A097240.P14134235723930479453

`A166448(n+1)+A189892(n+1)+A033286(n+2)`
-/

namespace A097240.P14134235723930479453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166448 (n + 1) + (A189892 (n + 1) + A033286 (n + 2))

end

end A097240.P14134235723930479453

namespace A097240

/-- `A166448(n+1)+A189892(n+1)+A033286(n+2)` -/
def P14134235723930479453.Spec : Prop :=
  ∀ n, P14134235723930479453.a n = A097240 (n + 1)

end A097240

/-! ## A097240.P15205811432410446591

`A189892(n+1)+A362419(n+1)+A152535(n+2)`
-/

namespace A097240.P15205811432410446591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189892 (n + 1) + (A362419 (n + 1) + A152535 (n + 2))

end

end A097240.P15205811432410446591

namespace A097240

/-- `A189892(n+1)+A362419(n+1)+A152535(n+2)` -/
def P15205811432410446591.Spec : Prop :=
  ∀ n, P15205811432410446591.a n = A097240 (n + 1)

end A097240

/-! ## A097240.P6537726346095556350

`A033286(n+1)+A033286(n+2)-A001223(n+1)`
-/

namespace A097240.P6537726346095556350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033286 (n + 1) + (A033286 (n + 2) - A001223 (n + 1))

end

end A097240.P6537726346095556350

namespace A097240

/-- `A033286(n+1)+A033286(n+2)-A001223(n+1)` -/
def P6537726346095556350.Spec : Prop :=
  ∀ n, P6537726346095556350.a n = A097240 (n + 1)

theorem P6537726346095556350.correct : P6537726346095556350.Spec := by
  intro n
  simp only [A097240, Nat.add_sub_cancel, A097240.P6537726346095556350.a, A097240.P202497919192875445.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001223, A001223.P5034056745985311719.a, A033286, A033286.P2794343547372572705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097240

/-! ## A097240.P11300382644031521551

`A000040(n+1)+A152117(n+1)-A000040(n+2)`
-/

namespace A097240.P11300382644031521551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A152117 (n + 1) - A000040 (n + 2))

end

end A097240.P11300382644031521551

namespace A097240

/-- `A000040(n+1)+A152117(n+1)-A000040(n+2)` -/
def P11300382644031521551.Spec : Prop :=
  ∀ n, P11300382644031521551.a n = A097240 (n + 1)

theorem P11300382644031521551.correct : P11300382644031521551.Spec := by
  intro n
  simp only [A097240, Nat.add_sub_cancel, A097240.P11300382644031521551.a, A097240.P202497919192875445.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A152117, A152117.P889453854447432266.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097240

/-! ## A097240.P15652063251548177589

`A152117(n+1)-Δ[eq[1, A001222(n+1)]]`
-/

namespace A097240.P15652063251548177589
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152117 (n + 1) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A097240.P15652063251548177589

namespace A097240

/-- `A152117(n+1)-Δ[eq[1, A001222(n+1)]]` -/
def P15652063251548177589.Spec : Prop :=
  ∀ n, P15652063251548177589.a n = A097240 (n + 1)

end A097240

/-! ## A097240.P1147808363059882983

`A356155(A034856(n+2))`
-/

namespace A097240.P1147808363059882983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356155 (A034856 (n + 2)).toNat

end

end A097240.P1147808363059882983

namespace A097240

/-- `A356155(A034856(n+2))` -/
def P1147808363059882983.Spec : Prop :=
  ∀ n, P1147808363059882983.a n = A097240 (n + 1)

end A097240

/-!
# A097241: Primes of the form (k+1)*prime(k) + k*prime(k+1).

The programs for A097241, there is no canonical definition to state claims against.
-/

/-! ## A097241.P112606957706777882

`p?[A097240(n+1)]`
-/

namespace A097241.P112606957706777882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097240 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097241.P112606957706777882

/-! ## A097241.P10075744063599477673

`p?[A152117(n+1)-A001223(n+1)]`
-/

namespace A097241.P10075744063599477673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152117 (n + 1) - A001223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097241.P10075744063599477673

/-! ## A097241.P16882022003422765447

`p?[A000040(n+1)+(n+1)*A001043(n+1)]`
-/

namespace A097241.P16882022003422765447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (n + 1 : ℤ) * A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097241.P16882022003422765447

/-! ## A097241.P3374437608010410014

`p?[(n+1)*A000040(n+2)+(n+2)*A000040(n+1)]`
-/

namespace A097241.P3374437608010410014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000040 (n + 2) + (n + 2 : ℤ) * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A097241.P3374437608010410014

/-! ## A097241.P4513751064829785053

`∩[A015919(n+1), A097240(n+1)]`
-/

namespace A097241.P4513751064829785053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097240 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097241.P4513751064829785053

/-!
# A097242: Expansion of q-series 1 / (q^2, q^3, q^9, q^10; q^12)_infinity.

The programs for A097242, there is no canonical definition to state claims against.
-/

/-! ## A097242.P810869572926900224

`A328802(4*n)`
-/

namespace A097242.P810869572926900224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328802 (4 * n)

end

end A097242.P810869572926900224

/-! ## A097242.P3668553888114426985

`A328802(A008574(n))^A001221(A001316(n))`
-/

namespace A097242.P3668553888114426985
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328802 (A008574 n).toNat : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

end

end A097242.P3668553888114426985

/-! ## A097242.P13676066273610346666

`A328800(4*n)`
-/

namespace A097242.P13676066273610346666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328800 (4 * n)

end

end A097242.P13676066273610346666

/-! ## A097242.P8429967553257782557

`abs(A328800(A008574(n)))`
-/

namespace A097242.P8429967553257782557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328800 (A008574 n).toNat|

end

end A097242.P8429967553257782557

/-! ## A097242.P16974597329170273257

`abs(A328800(A008586(n)))`
-/

namespace A097242.P16974597329170273257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A328800 (A008586 n).toNat|

end

end A097242.P16974597329170273257

/-! ## A097242.P1119019485065271145

`A116664(∑[ceil(sqrt(n))])`
-/

namespace A097242.P1119019485065271145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116664 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A097242.P1119019485065271145

/-!
# A097243: Expansion of 1 + 32 * (eta(q^4) / eta(q))^8 in powers of q.

The programs for A097243, there is no canonical definition to state claims against.
-/

/-! ## A097243.P16637814066656757461

`A014969(2*n)`
-/

namespace A097243.P16637814066656757461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014969 (2 * n)

end

end A097243.P16637814066656757461

/-! ## A097243.P1922184308890732178

`A007096(4*n)`
-/

namespace A097243.P1922184308890732178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007096 (4 * n)

end

end A097243.P1922184308890732178

/-! ## A097243.P14574536137505389954

`A212318(4*n)`
-/

namespace A097243.P14574536137505389954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212318 (4 * n)

end

end A097243.P14574536137505389954

/-! ## A097243.P13363414493330751127

`A139820(2*n)`
-/

namespace A097243.P13363414493330751127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139820 (2 * n)

end

end A097243.P13363414493330751127

/-! ## A097243.P10747502228747485354

`A189925(4*n)`
-/

namespace A097243.P10747502228747485354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189925 (4 * n)

end

end A097243.P10747502228747485354

/-! ## A097243.P12892143016069227581

`A232358(4*n)`
-/

namespace A097243.P12892143016069227581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232358 (4 * n)

end

end A097243.P12892143016069227581

/-! ## A097243.P16925904020878622099

`A014972(n)*A036453(n+1)`
-/

namespace A097243.P16925904020878622099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014972 n * A036453 (n + 1)

end

end A097243.P16925904020878622099

/-! ## A097243.P16572311728727993122

`(2-A000007(n))*A014972(n)`
-/

namespace A097243.P16572311728727993122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A014972 n

end

end A097243.P16572311728727993122

/-! ## A097243.P8207825380441874737

`A131126(2*n)*A280560(2*n)`
-/

namespace A097243.P8207825380441874737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131126 (2 * n) * A280560 (2 * n)

end

end A097243.P8207825380441874737

/-! ## A097243.P8816164566663146158

`A020639(A000010(n+2))*A131126(2*n)`
-/

namespace A097243.P8816164566663146158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A131126 (2 * n)

end

end A097243.P8816164566663146158

/-! ## A097243.P3165776342180236953

`A208933(4*n)*A246063(A210067(2*n))`
-/

namespace A097243.P3165776342180236953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208933 (4 * n) * A246063 (A210067 (2 * n)).toNat

end

end A097243.P3165776342180236953

/-! ## A097243.P9165334733535637181

`A128692(n)*A280560(n)`
-/

namespace A097243.P9165334733535637181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128692 n * A280560 n

end

end A097243.P9165334733535637181

/-! ## A097243.P195569658250232672

`record[gcd(2, A210066(n))*A210066(n)]`
-/

namespace A097243.P195569658250232672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A210066 n) : ℤ) * A210066 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097243.P195569658250232672

/-! ## A097243.P8948339977305856158

`A210066(2*n)*A280560(2*n)`
-/

namespace A097243.P8948339977305856158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210066 (2 * n) * A280560 (2 * n)

end

end A097243.P8948339977305856158

/-! ## A097243.P13974308340445300442

`A210066(2*n)*A246063(A210067(2*n))`
-/

namespace A097243.P13974308340445300442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210066 (2 * n) * A246063 (A210067 (2 * n)).toNat

end

end A097243.P13974308340445300442

/-! ## A097243.P7326992877680271189

`record[A139820(n)]`
-/

namespace A097243.P7326992877680271189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139820 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097243.P7326992877680271189

/-!
# A097244: Numbers n that are the hypotenuse of exactly 31 distinct integer-sided right triangles, i.e., n^2 can be written as a sum of two squares in 31 ways.

The programs for A097244, there is no canonical definition to state claims against.
-/

/-! ## A097244.P5937914281124748910

`A008607(lcm(5, A097102(n+1)))`
-/

namespace A097244.P5937914281124748910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (Int.lcm 5 (A097102 (n + 1)))

end

end A097244.P5937914281124748910

/-! ## A097244.P16547873707306915514

`A008607(A097102(n+1))%A345119(n+12)`
-/

namespace A097244.P16547873707306915514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008607 (A097102 (n + 1)).toNat) (A345119 (n + 12))

end

end A097244.P16547873707306915514

/-! ## A097244.P16205111669247910583

`A008607(A097102(n+1))*A195768(A195768(n+1))`
-/

namespace A097244.P16205111669247910583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008607 (A097102 (n + 1)).toNat * A195768 (A195768 (n + 1)).toNat

end

end A097244.P16205111669247910583

/-! ## A097244.P2643038173457769421

`A097102(n+1)*A165826(A001248(n+1))`
-/

namespace A097244.P2643038173457769421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097102 (n + 1) * A165826 (A001248 (n + 1)).toNat

end

end A097244.P2643038173457769421

/-! ## A097244.P14968632251012967948

`A097102(n+1)*A165826(A006094(n+1))`
-/

namespace A097244.P14968632251012967948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097102 (n + 1) * A165826 (A006094 (n + 1)).toNat

end

end A097244.P14968632251012967948

/-!
# A097245: Numbers k that are the hypotenuse of exactly 37 distinct integer-sided right triangles, i.e., k^2 can be written as a sum of two squares in 37 ways.

The programs for A097245, there is no canonical definition to state claims against.
-/

/-! ## A097245.P7295883915981981518

`A025292(A032551(n+1)+1)`
-/

namespace A097245.P7295883915981981518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025292 (A032551 (n + 1) + 1).toNat

end

end A097245.P7295883915981981518

/-! ## A097245.P2668916357690185423

`A025292(n+1)^exp(A255324(n+1))`
-/

namespace A097245.P2668916357690185423
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A025292 (n + 1) : ℝ) ^ (Real.exp (A255324 (n + 1) : ℝ))

end

end A097245.P2668916357690185423

/-! ## A097245.P16181627569369863790

`A025292(n+1)%A372753(2*(n+2))²`
-/

namespace A097245.P16181627569369863790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025292 (n + 1)) (A372753 (2 * (n + 2)) ^ 2)

end

end A097245.P16181627569369863790

/-! ## A097245.P12776350885366369584

`A025292(n+1)+A000007(A000142(n))`
-/

namespace A097245.P12776350885366369584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025292 (n + 1) + A000007 (A000142 n).toNat

end

end A097245.P12776350885366369584

/-!
# A097246: Replace factors of n that are squares of a prime with the prime succeeding this prime.

The programs for A097246, the canonical program `A097246.P2470047970217943753` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097246 has offset 1).

The definition of A097246 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097246.P2470047970217943753

`A003961(A000188(n+1))*A007913(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A097246

/-- `A003961(A000188(n+1))*A007913(n+1)` -/
def P2470047970217943753.Spec : Prop :=
  ∀ n, P2470047970217943753.a n = A097246 (n + 1)

theorem P2470047970217943753.correct : P2470047970217943753.Spec := by
  intro n
  simp only [A097246, Nat.add_sub_cancel]

end A097246

/-! ## A097246.P14999119783127836813

`A003961(sqrt(A008833(n+1)))*A007913(n+1)`
-/

namespace A097246.P14999119783127836813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (SequenceMachineLib.roundAway (Real.sqrt (A008833 (n + 1) : ℝ))).toNat * A007913 (n + 1)

end

end A097246.P14999119783127836813

namespace A097246

/-- `A003961(sqrt(A008833(n+1)))*A007913(n+1)` -/
def P14999119783127836813.Spec : Prop :=
  ∀ n, P14999119783127836813.a n = A097246 (n + 1)

end A097246

/-! ## A097246.P10095259765770757224

`sqrt(A055491(n+1))*A003961(A000188(n+1))`
-/

namespace A097246.P10095259765770757224
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A055491 (n + 1) : ℝ) * (A003961 (A000188 (n + 1)).toNat : ℝ)

end

end A097246.P10095259765770757224

namespace A097246

/-- `sqrt(A055491(n+1))*A003961(A000188(n+1))` -/
def P10095259765770757224.Spec : Prop :=
  ∀ n, P10095259765770757224.a n = (A097246 (n + 1) : ℝ)

end A097246

/-! ## A097246.P5734707271377272304

`A003961(A019554(A003557(n+1)))*A007913(n+1)`
-/

namespace A097246.P5734707271377272304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A019554 (A003557 (n + 1)).toNat).toNat * A007913 (n + 1)

end

end A097246.P5734707271377272304

namespace A097246

/-- `A003961(A019554(A003557(n+1)))*A007913(n+1)` -/
def P5734707271377272304.Spec : Prop :=
  ∀ n, P5734707271377272304.a n = A097246 (n + 1)

end A097246

/-! ## A097246.P4396322570557776372

`A003961(n+1)*A007913(n+1)/A003961(A019554(n+1))`
-/

namespace A097246.P4396322570557776372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) * A007913 (n + 1) : ℚ) / (A003961 (A019554 (n + 1)).toNat : ℚ)

end

end A097246.P4396322570557776372

namespace A097246

/-- `A003961(n+1)*A007913(n+1)/A003961(A019554(n+1))` -/
def P4396322570557776372.Spec : Prop :=
  ∀ n, P4396322570557776372.a n = (A097246 (n + 1) : ℚ)

end A097246

/-! ## A097246.P403479443298118403

`A000188(A045965(n+1))*A007913(n+1)`
-/

namespace A097246.P403479443298118403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A045965 (n + 1)).toNat * A007913 (n + 1)

end

end A097246.P403479443298118403

namespace A097246

/-- `A000188(A045965(n+1))*A007913(n+1)` -/
def P403479443298118403.Spec : Prop :=
  ∀ n, P403479443298118403.a n = A097246 (n + 1)

end A097246

/-! ## A097246.P1798791663007556417

`A003961(n+1)*A007913(n+1)/A019554(A003961(n+1))`
-/

namespace A097246.P1798791663007556417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003961 (n + 1) * A007913 (n + 1) : ℚ) / (A019554 (A003961 (n + 1)).toNat : ℚ)

end

end A097246.P1798791663007556417

namespace A097246

/-- `A003961(n+1)*A007913(n+1)/A019554(A003961(n+1))` -/
def P1798791663007556417.Spec : Prop :=
  ∀ n, P1798791663007556417.a n = (A097246 (n + 1) : ℚ)

end A097246

/-! ## A097246.P11330749148335854667

`A329888(A003961(n+1)*A007913(n+1))`
-/

namespace A097246.P11330749148335854667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A003961 (n + 1) * A007913 (n + 1)).toNat

end

end A097246.P11330749148335854667

namespace A097246

/-- `A329888(A003961(n+1)*A007913(n+1))` -/
def P11330749148335854667.Spec : Prop :=
  ∀ n, P11330749148335854667.a n = A097246 (n + 1)

end A097246

/-! ## A097246.P7363824871370142087

`A329888(A007913(n+1)*A045965(n+1))`
-/

namespace A097246.P7363824871370142087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329888 (A007913 (n + 1) * A045965 (n + 1)).toNat

end

end A097246.P7363824871370142087

namespace A097246

/-- `A329888(A007913(n+1)*A045965(n+1))` -/
def P7363824871370142087.Spec : Prop :=
  ∀ n, P7363824871370142087.a n = A097246 (n + 1)

end A097246

/-!
# A097247: A097246(A097246(n)).

The programs for A097247, the canonical program `A097247.P3635200679269526787` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097247 has offset 1).

The definition of A097247 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A097246, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097247.P3635200679269526787

`A097246(A097246(n+1))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A097247

/-- `A097246(A097246(n+1))` -/
def P3635200679269526787.Spec : Prop :=
  ∀ n, P3635200679269526787.a n = A097247 (n + 1)

theorem P3635200679269526787.correct : P3635200679269526787.Spec := by
  intro n
  simp only [A097247, Nat.add_sub_cancel]

end A097247

/-! ## A097247.P8523942572815377727

`A277886(A097246(1-(n-2*n)))`
-/

namespace A097247.P8523942572815377727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277886 (A097246 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat).toNat

end

end A097247.P8523942572815377727

namespace A097247

/-- `A277886(A097246(1-(n-2*n)))` -/
def P8523942572815377727.Spec : Prop :=
  ∀ n, P8523942572815377727.a n = A097247 (n + 1)

end A097247

/-! ## A097247.P1597582532341105849

`xor(A097248(n+1), A194659(A179926(n+1)))`
-/

namespace A097247.P1597582532341105849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A097248 (n + 1)) (A194659 (A179926 (n + 1)).toNat)

end

end A097247.P1597582532341105849

namespace A097247

/-- `xor(A097248(n+1), A194659(A179926(n+1)))` -/
def P1597582532341105849.Spec : Prop :=
  ∀ n, P1597582532341105849.a n = A097247 (n + 1)

end A097247

/-!
# A097248: a(n) is the eventual stable point reached when iterating k -> A097246(k), starting from k = n.

The programs for A097248, there is no canonical definition to state claims against.
-/

/-! ## A097248.P12746532093911532134

`A019565(A048675(n+1))`
-/

namespace A097248.P12746532093911532134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A048675 (n + 1)).toNat

end

end A097248.P12746532093911532134

/-! ## A097248.P13527214235489237622

`1-A378518(n+1)+n`
-/

namespace A097248.P13527214235489237622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A378518 (n + 1) + (n : ℤ)

end

end A097248.P13527214235489237622

/-! ## A097248.P8529985664673803320

`A005117(A322815(n+1))`
-/

namespace A097248.P8529985664673803320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (A322815 (n + 1)).toNat

end

end A097248.P8529985664673803320

/-! ## A097248.P15365907674618692692

`abs(A378518(n+1)+A001478(n+1))`
-/

namespace A097248.P15365907674618692692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A378518 (n + 1) + A001478 (n + 1)|

end

end A097248.P15365907674618692692

/-! ## A097248.P5561603160732277008

`A195663(A378518(n+1)+A000217(n))`
-/

namespace A097248.P5561603160732277008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195663 (A378518 (n + 1) + A000217 n).toNat

end

end A097248.P5561603160732277008

/-! ## A097248.P16304780725363967029

`A077377(A322815(n+1))*A263919(n²)`
-/

namespace A097248.P16304780725363967029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077377 (A322815 (n + 1)).toNat * A263919 (n ^ 2)

end

end A097248.P16304780725363967029

/-! ## A097248.P9624086112664417024

`gcd(A000038(n²), A077377(A322815(n+1)))`
-/

namespace A097248.P9624086112664417024
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n ^ 2)) (A077377 (A322815 (n + 1)).toNat)

end

end A097248.P9624086112664417024

/-! ## A097248.P7931227105915368299

`A077377(A322815(n+1))%p?[A000695(n)]`
-/

namespace A097248.P7931227105915368299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000695 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077377 (A322815 (n + 1)).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A097248.P7931227105915368299

/-! ## A097248.P2919891150182253323

`A028586(n²)!*A077377(A322815(n+1))`
-/

namespace A097248.P2919891150182253323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A028586 (n ^ 2)).toNat : ℤ) * A077377 (A322815 (n + 1)).toNat

end

end A097248.P2919891150182253323

/-! ## A097248.P181780397957866119

`(A151909(n)+n)^A008683(2*(n+1)²)*A077377(A322815(n+1))`
-/

namespace A097248.P181780397957866119
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A151909 n + (n : ℤ) : ℚ) ^ (A008683 (2 * (n + 1) ^ 2) : ℤ) * (A077377 (A322815 (n + 1)).toNat : ℚ)

end

end A097248.P181780397957866119

/-! ## A097248.P14680233663946994404

`A077377(A322815(n+1))+A000038((n+1)²)`
-/

namespace A097248.P14680233663946994404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077377 (A322815 (n + 1)).toNat + A000038 ((n + 1) ^ 2)

end

end A097248.P14680233663946994404

/-! ## A097248.P9083459447373861398

`A006466(A014105(n))*A077377(A322815(n+1))`
-/

namespace A097248.P9083459447373861398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006466 (A014105 n).toNat * A077377 (A322815 (n + 1)).toNat

end

end A097248.P9083459447373861398

/-!
# A097249: a(n) is the number of times we must iterate A097246, starting at n, before the result is squarefree.

The programs for A097249, there is no canonical definition to state claims against.
-/

/-! ## A097249.P3696197954669870849

`A046951(A097246(n+1))%A000265(A048767(n+1))`
-/

namespace A097249.P3696197954669870849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046951 (A097246 (n + 1)).toNat) (A000265 (A048767 (n + 1)).toNat)

end

end A097249.P3696197954669870849

/-! ## A097249.P15814875451561404087

`A005090(A000010(n^A346012(n+1)))`
-/

namespace A097249.P15814875451561404087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005090 (A000010 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A346012 (n + 1) : ℤ))).toNat).toNat

end

end A097249.P15814875451561404087

/-! ## A097249.P4353520422322484176

`A067148(A096309(n+1)^A085342(n+1))`
-/

namespace A097249.P4353520422322484176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067148 (SequenceMachineLib.roundAway ((A096309 (n + 1) : ℚ) ^ (A085342 (n + 1) : ℤ))).toNat

end

end A097249.P4353520422322484176

/-! ## A097249.P315244483122420511

`lcm(A004526(A072411(n+1)), A296773(2*n+1))`
-/

namespace A097249.P315244483122420511
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004526 (A072411 (n + 1)).toNat) (A296773 (2 * n + 1))

end

end A097249.P315244483122420511

/-! ## A097249.P434755610839445347

`A024785(A369985(n+3))%A347442(n+1)`
-/

namespace A097249.P434755610839445347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024785 (A369985 (n + 3)).toNat) (A347442 (n + 1))

end

end A097249.P434755610839445347

/-!
# A097250: Smallest m such that A097249(m) = n; from n=1 onwards, twice the primorials, 2*A002110(n).

The programs for A097250, there is no canonical definition to state claims against.
-/

/-! ## A097250.P478879217375741580

`floor(A102476(n+1)/2)`
-/

namespace A097250.P478879217375741580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A102476 (n + 1) : ℚ) / 2⌋

end

end A097250.P478879217375741580

/-! ## A097250.P17345571495149434079

`a(n-1)*A000040(n)` with `a(0)=1, a(1)=4`
-/

namespace A097250.P17345571495149434079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) * A000040 n

end

end A097250.P17345571495149434079

/-! ## A097250.P16414548879799469145

`a(n-1)*record[A006530(n+1)]` with `a(0)=1, a(1)=4`
-/

namespace A097250.P16414548879799469145
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097250.P16414548879799469145

/-! ## A097250.P11729774454357231472

`a(n-1)*record[A014963(n+1)]` with `a(0)=1, a(1)=4`
-/

namespace A097250.P11729774454357231472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097250.P11729774454357231472

/-! ## A097250.P6121108572257164532

`a(n-1)*record[A020639(n+1)]` with `a(0)=1, a(1)=4`
-/

namespace A097250.P6121108572257164532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097250.P6121108572257164532

/-! ## A097250.P15208293155815970132

`a(n-1)*comp[A018252(n+1)]` with `a(0)=1, a(1)=4`
-/

namespace A097250.P15208293155815970132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A097250.P15208293155815970132

/-! ## A097250.P13280051995905259341

`A378133(A328659(n))`
-/

namespace A097250.P13280051995905259341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378133 (A328659 n).toNat

end

end A097250.P13280051995905259341

/-! ## A097250.P18273338278714875413

`(A057427(n)+1)*A002110(n)`
-/

namespace A097250.P18273338278714875413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057427 n + 1) * A002110 n

end

end A097250.P18273338278714875413

/-! ## A097250.P4354697352314760942

`(A178334(n)+1)*A002110(n)`
-/

namespace A097250.P4354697352314760942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A178334 n + 1) * A002110 n

end

end A097250.P4354697352314760942

/-! ## A097250.P10492506201514210120

`(2-A000007(n))*A002110(n)`
-/

namespace A097250.P10492506201514210120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000007 n) * A002110 n

end

end A097250.P10492506201514210120

/-!
# A097251: Numbers whose set of base 5 digits is {0,4}.

The programs for A097251, the canonical program `A097251.P16104403383729787303` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097251 has offset 0).

The definition of A097251 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097251.P16104403383729787303

`5*a(floor(n/2))+2*(1-(-1)^n)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A097251

/-- `5*a(floor(n/2))+2*(1-(-1)^n)` -/
def P16104403383729787303.Spec : Prop :=
  ∀ n, P16104403383729787303.a n = A097251 n

theorem P16104403383729787303.correct : P16104403383729787303.Spec := by
  intro n
  simp only [A097251]

end A097251

/-! ## A097251.P10474853144072756906

`4*A033042(n)`
-/

namespace A097251.P10474853144072756906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A033042 n

end

end A097251.P10474853144072756906

namespace A097251

/-- `4*A033042(n)` -/
def P10474853144072756906.Spec : Prop :=
  ∀ n, P10474853144072756906.a n = A097251 n

end A097251

/-! ## A097251.P7302918115794421839

`A033042(n+n)-A033042(n)`
-/

namespace A097251.P7302918115794421839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (n + n) - A033042 n

end

end A097251.P7302918115794421839

namespace A097251

/-- `A033042(n+n)-A033042(n)` -/
def P7302918115794421839.Spec : Prop :=
  ∀ n, P7302918115794421839.a n = A097251 n

end A097251

/-! ## A097251.P13045426554641587710

`4*(A037453(A003278(n+1))-1)`
-/

namespace A097251.P13045426554641587710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A037453 (A003278 (n + 1)).toNat - 1)

end

end A097251.P13045426554641587710

namespace A097251

/-- `4*(A037453(A003278(n+1))-1)` -/
def P13045426554641587710.Spec : Prop :=
  ∀ n, P13045426554641587710.a n = A097251 n

end A097251

/-! ## A097251.P3896035926145296470

`4*A037453(A005836(n+1)+1)-4`
-/

namespace A097251.P3896035926145296470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A037453 (A005836 (n + 1) + 1).toNat - 4

end

end A097251.P3896035926145296470

namespace A097251

/-- `4*A037453(A005836(n+1)+1)-4` -/
def P3896035926145296470.Spec : Prop :=
  ∀ n, P3896035926145296470.a n = A097251 n

end A097251

/-! ## A097251.P4544394875767823950

`record[4*A318265(n+1)%A084849(n)]`
-/

namespace A097251.P4544394875767823950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * Int.tmod (A318265 (n + 1)) (A084849 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097251.P4544394875767823950

namespace A097251

/-- `record[4*A318265(n+1)%A084849(n)]` -/
def P4544394875767823950.Spec : Prop :=
  ∀ n, P4544394875767823950.a n = A097251 n

end A097251

/-! ## A097251.P6426348142217860974

`4*A020654(A000695(n)+1)`
-/

namespace A097251.P6426348142217860974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A020654 (A000695 n + 1).toNat

end

end A097251.P6426348142217860974

namespace A097251

/-- `4*A020654(A000695(n)+1)` -/
def P6426348142217860974.Spec : Prop :=
  ∀ n, P6426348142217860974.a n = A097251 n

end A097251

/-! ## A097251.P6223644736756995156

`2*2*A020654(A098871(n))`
-/

namespace A097251.P6223644736756995156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (2 * A020654 (A098871 n).toNat)

end

end A097251.P6223644736756995156

namespace A097251

/-- `2*2*A020654(A098871(n))` -/
def P6223644736756995156.Spec : Prop :=
  ∀ n, P6223644736756995156.a n = A097251 n

end A097251

/-! ## A097251.P7352763141661499722

`∩[A039569(n+1), A058185(n+1)]`
-/

namespace A097251.P7352763141661499722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058185 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097251.P7352763141661499722

namespace A097251

/-- `∩[A039569(n+1), A058185(n+1)]` -/
def P7352763141661499722.Spec : Prop :=
  ∀ n, (P7352763141661499722.a n : ℤ) = A097251 n

end A097251

/-! ## A097251.P17378321814068468284

`record[A055115(n)]`
-/

namespace A097251.P17378321814068468284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055115 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097251.P17378321814068468284

namespace A097251

/-- `record[A055115(n)]` -/
def P17378321814068468284.Spec : Prop :=
  ∀ n, P17378321814068468284.a n = A097251 n

end A097251

/-!
# A097252: Numbers whose set of base 6 digits is {0,5}.

The programs for A097252, there is no canonical definition to state claims against.
-/

/-! ## A097252.P12392336039609569122

`5*A033043(n)`
-/

namespace A097252.P12392336039609569122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A033043 n

end

end A097252.P12392336039609569122

/-! ## A097252.P3700819107185157744

`A033043(n)/abs(A020985(n)/5)`
-/

namespace A097252.P3700819107185157744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033043 n : ℚ) / |(A020985 n : ℚ) / 5|

end

end A097252.P3700819107185157744

/-! ## A097252.P10630436454787608430

`A033043(n+n)-A033043(n)`
-/

namespace A097252.P10630436454787608430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 (n + n) - A033043 n

end

end A097252.P10630436454787608430

/-! ## A097252.P5505891680621244793

`record[A033043(n)-A033043(A110654(n))]`
-/

namespace A097252.P5505891680621244793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033043 n - A033043 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097252.P5505891680621244793

/-! ## A097252.P11360776249558162322

`5*A037454(A005836(n+1))`
-/

namespace A097252.P11360776249558162322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A037454 (A005836 (n + 1)).toNat

end

end A097252.P11360776249558162322

/-! ## A097252.P13056642031222041551

`record[A055116(n)]`
-/

namespace A097252.P13056642031222041551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097252.P13056642031222041551

/-! ## A097252.P6677629246994510873

`A008587(A033043(n))`
-/

namespace A097252.P6677629246994510873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (A033043 n).toNat

end

end A097252.P6677629246994510873

/-! ## A097252.P10707081284774119435

`5*A037465(A033042(n))`
-/

namespace A097252.P10707081284774119435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A037465 (A033042 n).toNat

end

end A097252.P10707081284774119435

/-!
# A097253: Numbers whose set of base 7 digits is {0,6}.

The programs for A097253, the canonical program `A097253.P10947964156276851453` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097253 has offset 1).

The definition of A097253 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097253.P10947964156276851453

`7*a(floor(n/2))+3*(1-(-1)^n)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A097253

/-- `7*a(floor(n/2))+3*(1-(-1)^n)` -/
def P10947964156276851453.Spec : Prop :=
  ∀ n, P10947964156276851453.a n = A097253 (n + 1)

theorem P10947964156276851453.correct : P10947964156276851453.Spec := by
  intro n
  simp only [A097253, Nat.add_sub_cancel]

end A097253

/-! ## A097253.P16744506284524639733

`6*A033044(n+1)`
-/

namespace A097253.P16744506284524639733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A033044 (n + 1)

end

end A097253.P16744506284524639733

namespace A097253

/-- `6*A033044(n+1)` -/
def P16744506284524639733.Spec : Prop :=
  ∀ n, P16744506284524639733.a n = A097253 (n + 1)

end A097253

/-! ## A097253.P9525793957983011999

`2*3*A033044(A028242(2*n))`
-/

namespace A097253.P9525793957983011999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * A033044 (A028242 (2 * n)).toNat)

end

end A097253.P9525793957983011999

namespace A097253

/-- `2*3*A033044(A028242(2*n))` -/
def P9525793957983011999.Spec : Prop :=
  ∀ n, P9525793957983011999.a n = A097253 (n + 1)

end A097253

/-! ## A097253.P2744034161915639916

`A033044(Δ[n²])-A033044(n+1)`
-/

namespace A097253.P2744034161915639916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A033044 (n + 1)

end

end A097253.P2744034161915639916

namespace A097253

/-- `A033044(Δ[n²])-A033044(n+1)` -/
def P2744034161915639916.Spec : Prop :=
  ∀ n, P2744034161915639916.a n = A097253 (n + 1)

end A097253

/-! ## A097253.P4771297481637273796

`record[A033044(A093178(n))]-A033044(n+1)`
-/

namespace A097253.P4771297481637273796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033044 (A093178 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A033044 (n + 1)

end

end A097253.P4771297481637273796

namespace A097253

/-- `record[A033044(A093178(n))]-A033044(n+1)` -/
def P4771297481637273796.Spec : Prop :=
  ∀ n, P4771297481637273796.a n = A097253 (n + 1)

end A097253

/-! ## A097253.P12228539069558084456

`6*A037455(record[A060372(n)])`
-/

namespace A097253.P12228539069558084456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A037455 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097253.P12228539069558084456

namespace A097253

/-- `6*A037455(record[A060372(n)])` -/
def P12228539069558084456.Spec : Prop :=
  ∀ n, P12228539069558084456.a n = A097253 (n + 1)

end A097253

/-! ## A097253.P10014302182345815493

`6*A037455(A005836(n+1))`
-/

namespace A097253.P10014302182345815493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A037455 (A005836 (n + 1)).toNat

end

end A097253.P10014302182345815493

namespace A097253

/-- `6*A037455(A005836(n+1))` -/
def P10014302182345815493.Spec : Prop :=
  ∀ n, P10014302182345815493.a n = A097253 (n + 1)

end A097253

/-! ## A097253.P2418391737787126490

`3*A037455(A005823(n+1))`
-/

namespace A097253.P2418391737787126490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A037455 (A005823 (n + 1)).toNat

end

end A097253.P2418391737787126490

namespace A097253

/-- `3*A037455(A005823(n+1))` -/
def P2418391737787126490.Spec : Prop :=
  ∀ n, P2418391737787126490.a n = A097253 (n + 1)

end A097253

/-!
# A097254: Numbers whose set of base 8 digits is {0,7}.

The programs for A097254, the canonical program `A097254.P17062435024303328962` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097254 has offset 1).

The definition of A097254 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097254.P17062435024303328962

`8*a(floor((n+2)/2)-1)+7*(1+(-1)^(n+1))/2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A097254

/-- `8*a(floor((n+2)/2)-1)+7*(1+(-1)^(n+1))/2` -/
def P17062435024303328962.Spec : Prop :=
  ∀ n, P17062435024303328962.a n = (A097254 (n + 1) : ℚ)

end A097254

/-! ## A097254.P2784501537540303654

`7*A033045(n)`
-/

namespace A097254.P2784501537540303654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A033045 n

end

end A097254.P2784501537540303654

namespace A097254

/-- `7*A033045(n)` -/
def P2784501537540303654.Spec : Prop :=
  ∀ n, P2784501537540303654.a n = A097254 (n + 1)

end A097254

/-! ## A097254.P10550966971015656726

`-xor(a(n-1)+1, xor(n, -n)^3)` with `a(0)=0`
-/

namespace A097254.P10550966971015656726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  -Int.xor (a (n - 1) + 1) (Int.xor (n : ℤ) (-(n : ℤ)) ^ 3)

end

end A097254.P10550966971015656726

namespace A097254

/-- `-xor(a(n-1)+1, xor(n, -n)^3)` -/
def P10550966971015656726.Spec : Prop :=
  ∀ n, P10550966971015656726.a n = A097254 (n + 1)

end A097254

/-! ## A097254.P17767409570888662774

`xor((-xor(n, -n))^3-1, a(n-1))` with `a(0)=0`
-/

namespace A097254.P17767409570888662774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor ((-Int.xor (n : ℤ) (-(n : ℤ))) ^ 3 - 1) (a (n - 1))

end

end A097254.P17767409570888662774

namespace A097254

/-- `xor((-xor(n, -n))^3-1, a(n-1))` -/
def P17767409570888662774.Spec : Prop :=
  ∀ n, P17767409570888662774.a n = A097254 (n + 1)

end A097254

/-! ## A097254.P1075879963996175815

`A033045(n+n)-A033045(n)`
-/

namespace A097254.P1075879963996175815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033045 (n + n) - A033045 n

end

end A097254.P1075879963996175815

namespace A097254

/-- `A033045(n+n)-A033045(n)` -/
def P1075879963996175815.Spec : Prop :=
  ∀ n, P1075879963996175815.a n = A097254 (n + 1)

end A097254

/-! ## A097254.P12395609716155255344

`record[xor(A032820(n+1), A032915(n+1))]`
-/

namespace A097254.P12395609716155255344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A032820 (n + 1)) (A032915 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097254.P12395609716155255344

namespace A097254

/-- `record[xor(A032820(n+1), A032915(n+1))]` -/
def P12395609716155255344.Spec : Prop :=
  ∀ n, P12395609716155255344.a n = A097254 (n + 1)

end A097254

/-! ## A097254.P14569969513020190404

`7*A037456(record[A060372(n)])`
-/

namespace A097254.P14569969513020190404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060372 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A037456 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097254.P14569969513020190404

namespace A097254

/-- `7*A037456(record[A060372(n)])` -/
def P14569969513020190404.Spec : Prop :=
  ∀ n, P14569969513020190404.a n = A097254 (n + 1)

end A097254

/-! ## A097254.P7961630415683585079

`7*A037456(record[A117966(n)])`
-/

namespace A097254.P7961630415683585079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117966 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A037456 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097254.P7961630415683585079

namespace A097254

/-- `7*A037456(record[A117966(n)])` -/
def P7961630415683585079.Spec : Prop :=
  ∀ n, P7961630415683585079.a n = A097254 (n + 1)

end A097254

/-! ## A097254.P17178689916527315649

`7*A037456(A005836(n+1))`
-/

namespace A097254.P17178689916527315649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A037456 (A005836 (n + 1)).toNat

end

end A097254.P17178689916527315649

namespace A097254

/-- `7*A037456(A005836(n+1))` -/
def P17178689916527315649.Spec : Prop :=
  ∀ n, P17178689916527315649.a n = A097254 (n + 1)

end A097254

/-!
# A097255: Numbers whose set of base 9 digits is {0,8}.

The programs for A097255, the canonical program `A097255.P13772549133786067946` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097255 has offset 0).

The definition of A097255 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097255.P13772549133786067946

`9*a(floor(n/2))+4*(1-(-1)^n)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A097255

/-- `9*a(floor(n/2))+4*(1-(-1)^n)` -/
def P13772549133786067946.Spec : Prop :=
  ∀ n, P13772549133786067946.a n = A097255 n

theorem P13772549133786067946.correct : P13772549133786067946.Spec := by
  intro n
  simp only [A097255]

end A097255

/-! ## A097255.P2713462896648601592

`8*A033046(n)`
-/

namespace A097255.P2713462896648601592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A033046 n

end

end A097255.P2713462896648601592

namespace A097255

/-- `8*A033046(n)` -/
def P2713462896648601592.Spec : Prop :=
  ∀ n, P2713462896648601592.a n = A097255 n

end A097255

/-! ## A097255.P3981493258070001318

`A033046(n+n)-A033046(n)`
-/

namespace A097255.P3981493258070001318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033046 (n + n) - A033046 n

end

end A097255.P3981493258070001318

namespace A097255

/-- `A033046(n+n)-A033046(n)` -/
def P3981493258070001318.Spec : Prop :=
  ∀ n, P3981493258070001318.a n = A097255 n

end A097255

/-! ## A097255.P7863694940680124058

`2*A338086(A005836(n+1))`
-/

namespace A097255.P7863694940680124058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338086 (A005836 (n + 1)).toNat

end

end A097255.P7863694940680124058

namespace A097255

/-- `2*A338086(A005836(n+1))` -/
def P7863694940680124058.Spec : Prop :=
  ∀ n, P7863694940680124058.a n = A097255 n

end A097255

/-! ## A097255.P15860075905371793994

`A338086(A005823(n+1))`
-/

namespace A097255.P15860075905371793994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (A005823 (n + 1)).toNat

end

end A097255.P15860075905371793994

namespace A097255

/-- `A338086(A005823(n+1))` -/
def P15860075905371793994.Spec : Prop :=
  ∀ n, P15860075905371793994.a n = A097255 n

end A097255

/-! ## A097255.P12308662676846128364

`∩[2*A338086(n), A338086(n)]`
-/

namespace A097255.P12308662676846128364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338086 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097255.P12308662676846128364

namespace A097255

/-- `∩[2*A338086(n), A338086(n)]` -/
def P12308662676846128364.Spec : Prop :=
  ∀ n, (P12308662676846128364.a n : ℤ) = A097255 n

end A097255

/-! ## A097255.P9815185439978819306

`A338086(2*(A003278(n+1)-1))`
-/

namespace A097255.P9815185439978819306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (2 * (A003278 (n + 1) - 1)).toNat

end

end A097255.P9815185439978819306

namespace A097255

/-- `A338086(2*(A003278(n+1)-1))` -/
def P9815185439978819306.Spec : Prop :=
  ∀ n, P9815185439978819306.a n = A097255 n

end A097255

/-! ## A097255.P13224235487479450488

`A338086(A003278(n+1)+A003278(n+1)-2)`
-/

namespace A097255.P13224235487479450488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338086 (A003278 (n + 1) + (A003278 (n + 1) - 2)).toNat

end

end A097255.P13224235487479450488

namespace A097255

/-- `A338086(A003278(n+1)+A003278(n+1)-2)` -/
def P13224235487479450488.Spec : Prop :=
  ∀ n, P13224235487479450488.a n = A097255 n

end A097255

/-! ## A097255.P7562526387828395240

`record[8*A342802(n)]`
-/

namespace A097255.P7562526387828395240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A342802 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097255.P7562526387828395240

namespace A097255

/-- `record[8*A342802(n)]` -/
def P7562526387828395240.Spec : Prop :=
  ∀ n, P7562526387828395240.a n = A097255 n

end A097255

/-! ## A097255.P10428730453986752372

`A005823(A001196(n)+1)`
-/

namespace A097255.P10428730453986752372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005823 (A001196 n + 1).toNat

end

end A097255.P10428730453986752372

namespace A097255

/-- `A005823(A001196(n)+1)` -/
def P10428730453986752372.Spec : Prop :=
  ∀ n, P10428730453986752372.a n = A097255 n

end A097255

/-! ## A097255.P292293574392440773

`8*A005836(A000695(n)+1)`
-/

namespace A097255.P292293574392440773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A005836 (A000695 n + 1).toNat

end

end A097255.P292293574392440773

namespace A097255

/-- `8*A005836(A000695(n)+1)` -/
def P292293574392440773.Spec : Prop :=
  ∀ n, P292293574392440773.a n = A097255 n

end A097255

/-! ## A097255.P82797820491561426

`8*A005836(A001196(n)/3+1)`
-/

namespace A097255.P82797820491561426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  8 * A005836 (SequenceMachineLib.roundAway ((A001196 n : ℚ) / 3 + 1)).toNat

end

end A097255.P82797820491561426

namespace A097255

/-- `8*A005836(A001196(n)/3+1)` -/
def P82797820491561426.Spec : Prop :=
  ∀ n, P82797820491561426.a n = A097255 n

end A097255

/-!
# A097256: Numbers whose set of base 10 digits is {0,9}.

The programs for A097256, the canonical program `A097256.P18324559811505528946` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097256 has offset 0).

The definition of A097256 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097256.P12680889105925160827

`9*A007088(n)`
-/

namespace A097256.P12680889105925160827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A007088 n

end

end A097256.P12680889105925160827

namespace A097256

/-- `9*A007088(n)` -/
def P12680889105925160827.Spec : Prop :=
  ∀ n, P12680889105925160827.a n = A097256 n

end A097256

/-! ## A097256.P18324559811505528946

`5*(2*a(floor(n/2))-(-1)^n+1)-n%2` with `a(0)=0`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A097256

/-- `5*(2*a(floor(n/2))-(-1)^n+1)-n%2` -/
def P18324559811505528946.Spec : Prop :=
  ∀ n, P18324559811505528946.a n = A097256 n

theorem P18324559811505528946.correct : P18324559811505528946.Spec := by
  intro n
  simp only [A097256]

end A097256

/-! ## A097256.P14055165896814459084

`9*sqrt(A063009(n))`
-/

namespace A097256.P14055165896814459084
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  9 * Real.sqrt (A063009 n : ℝ)

end

end A097256.P14055165896814459084

namespace A097256

/-- `9*sqrt(A063009(n))` -/
def P14055165896814459084.Spec : Prop :=
  ∀ n, P14055165896814459084.a n = (A097256 n : ℝ)

end A097256

/-! ## A097256.P18129961330726819599

`3*A169966(n+1)`
-/

namespace A097256.P18129961330726819599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A169966 (n + 1)

end

end A097256.P18129961330726819599

namespace A097256

/-- `3*A169966(n+1)` -/
def P18129961330726819599.Spec : Prop :=
  ∀ n, P18129961330726819599.a n = A097256 n

end A097256

/-! ## A097256.P10904243913814182670

`3/2*A204093(n)`
-/

namespace A097256.P10904243913814182670
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A204093 n : ℚ)

end

end A097256.P10904243913814182670

namespace A097256

/-- `3/2*A204093(n)` -/
def P10904243913814182670.Spec : Prop :=
  ∀ n, P10904243913814182670.a n = (A097256 n : ℚ)

end A097256

/-! ## A097256.P8357246419129963752

`9/7*A204094(n)`
-/

namespace A097256.P8357246419129963752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 7 * (A204094 n : ℚ)

end

end A097256.P8357246419129963752

namespace A097256

/-- `9/7*A204094(n)` -/
def P8357246419129963752.Spec : Prop :=
  ∀ n, P8357246419129963752.a n = (A097256 n : ℚ)

end A097256

/-! ## A097256.P2973619451487216406

`9/10*A099820(n)`
-/

namespace A097256.P2973619451487216406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) / 10 * (A099820 n : ℚ)

end

end A097256.P2973619451487216406

namespace A097256

/-- `9/10*A099820(n)` -/
def P2973619451487216406.Spec : Prop :=
  ∀ n, P2973619451487216406.a n = (A097256 n : ℚ)

end A097256

/-! ## A097256.P9757730310233152440

`9*A169967(n+1)/4`
-/

namespace A097256.P9757730310233152440
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  9 * ((A169967 (n + 1) : ℚ) / 4)

end

end A097256.P9757730310233152440

namespace A097256

/-- `9*A169967(n+1)/4` -/
def P9757730310233152440.Spec : Prop :=
  ∀ n, P9757730310233152440.a n = (A097256 n : ℚ)

end A097256

/-! ## A097256.P14970817108547501120

`A204095(n)+A007088(n)`
-/

namespace A097256.P14970817108547501120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204095 n + A007088 n

end

end A097256.P14970817108547501120

namespace A097256

/-- `A204095(n)+A007088(n)` -/
def P14970817108547501120.Spec : Prop :=
  ∀ n, P14970817108547501120.a n = A097256 n

end A097256

/-! ## A097256.P12886624578027959492

`A099820(n)-A007088(n)`
-/

namespace A097256.P12886624578027959492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099820 n - A007088 n

end

end A097256.P12886624578027959492

namespace A097256

/-- `A099820(n)-A007088(n)` -/
def P12886624578027959492.Spec : Prop :=
  ∀ n, P12886624578027959492.a n = A097256 n

end A097256

/-! ## A097256.P6670131243424324845

`A204095(n)+sqrt(A063009(n))`
-/

namespace A097256.P6670131243424324845
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A204095 n : ℝ) + Real.sqrt (A063009 n : ℝ)

end

end A097256.P6670131243424324845

namespace A097256

/-- `A204095(n)+sqrt(A063009(n))` -/
def P6670131243424324845.Spec : Prop :=
  ∀ n, P6670131243424324845.a n = (A097256 n : ℝ)

end A097256

/-! ## A097256.P11942443713065343484

`A204093(n)+A169966(n+1)`
-/

namespace A097256.P11942443713065343484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204093 n + A169966 (n + 1)

end

end A097256.P11942443713065343484

namespace A097256

/-- `A204093(n)+A169966(n+1)` -/
def P11942443713065343484.Spec : Prop :=
  ∀ n, P11942443713065343484.a n = A097256 n

end A097256

/-! ## A097256.P15112630275106548180

`A204094(n)+A169965(n+1)`
-/

namespace A097256.P15112630275106548180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204094 n + A169965 (n + 1)

end

end A097256.P15112630275106548180

namespace A097256

/-- `A204094(n)+A169965(n+1)` -/
def P15112630275106548180.Spec : Prop :=
  ∀ n, P15112630275106548180.a n = A097256 n

end A097256

/-! ## A097256.P6305462859720347220

`(A204095(n)+A099820(n))/2`
-/

namespace A097256.P6305462859720347220
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204095 n + A099820 n : ℚ) / 2

end

end A097256.P6305462859720347220

namespace A097256

/-- `(A204095(n)+A099820(n))/2` -/
def P6305462859720347220.Spec : Prop :=
  ∀ n, P6305462859720347220.a n = (A097256 n : ℚ)

end A097256

/-! ## A097256.P12576413001475016750

`2*A204095(n)-A204094(n)`
-/

namespace A097256.P12576413001475016750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204095 n - A204094 n

end

end A097256.P12576413001475016750

namespace A097256

/-- `2*A204095(n)-A204094(n)` -/
def P12576413001475016750.Spec : Prop :=
  ∀ n, P12576413001475016750.a n = A097256 n

end A097256

/-! ## A097256.P10168274402344038893

`A007088(n+n)-A007088(n)`
-/

namespace A097256.P10168274402344038893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n + n) - A007088 n

end

end A097256.P10168274402344038893

namespace A097256

/-- `A007088(n+n)-A007088(n)` -/
def P10168274402344038893.Spec : Prop :=
  ∀ n, P10168274402344038893.a n = A097256 n

end A097256

/-! ## A097256.P7524470511088773697

`A169967(n+1)+A169964(n+1)`
-/

namespace A097256.P7524470511088773697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169967 (n + 1) + A169964 (n + 1)

end

end A097256.P7524470511088773697

namespace A097256

/-- `A169967(n+1)+A169964(n+1)` -/
def P7524470511088773697.Spec : Prop :=
  ∀ n, P7524470511088773697.a n = A097256 n

end A097256

/-! ## A097256.P18196968291278859243

`A169967(n+1)+A099820(n)/2`
-/

namespace A097256.P18196968291278859243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169967 (n + 1) : ℚ) + (A099820 n : ℚ) / 2

end

end A097256.P18196968291278859243

namespace A097256

/-- `A169967(n+1)+A099820(n)/2` -/
def P18196968291278859243.Spec : Prop :=
  ∀ n, P18196968291278859243.a n = (A097256 n : ℚ)

end A097256

/-! ## A097256.P12273067720656577689

`2*A204094(n)-A169964(n+1)`
-/

namespace A097256.P12273067720656577689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A204094 n - A169964 (n + 1)

end

end A097256.P12273067720656577689

namespace A097256

/-- `2*A204094(n)-A169964(n+1)` -/
def P12273067720656577689.Spec : Prop :=
  ∀ n, P12273067720656577689.a n = A097256 n

end A097256

/-! ## A097256.P18353965459860692978

`A007088(n)+A204094(n)+A007088(n)`
-/

namespace A097256.P18353965459860692978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n + (A204094 n + A007088 n)

end

end A097256.P18353965459860692978

namespace A097256

/-- `A007088(n)+A204094(n)+A007088(n)` -/
def P18353965459860692978.Spec : Prop :=
  ∀ n, P18353965459860692978.a n = A097256 n

end A097256

/-!
# A097257: Numbers whose set of base 11 digits is {0,A}, where A base 11 = 10 base 10.

The programs for A097257, there is no canonical definition to state claims against.
-/

/-! ## A097257.P11170395912288790989

`10*A033047(n)`
-/

namespace A097257.P11170395912288790989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A033047 n

end

end A097257.P11170395912288790989

/-! ## A097257.P13939529319701523460

`A033047(n+n)-A033047(n)`
-/

namespace A097257.P13939529319701523460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 (n + n) - A033047 n

end

end A097257.P13939529319701523460

/-! ## A097257.P4636913254378054970

`record[A033047(n)-A033047(A026741(n))]`
-/

namespace A097257.P4636913254378054970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 n - A033047 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097257.P4636913254378054970

/-! ## A097257.P14947396454526901262

`record[A033047(n)-A033047(A110654(n))]`
-/

namespace A097257.P14947396454526901262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 n - A033047 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097257.P14947396454526901262

/-! ## A097257.P954866873751106497

`record[A033047(n)-A033047(A014682(n))]`
-/

namespace A097257.P954866873751106497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033047 n - A033047 (A014682 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097257.P954866873751106497

/-!
# A097258: Numbers whose set of base 12 digits is {0,B}, where B base 12 = 11 base 10.

The programs for A097258, the canonical program `A097258.P9869990002715108354` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097258 has offset 0).

The definition of A097258 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033048, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097258.P9869990002715108354

`11*A033048(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A097258

/-- `11*A033048(n)` -/
def P9869990002715108354.Spec : Prop :=
  ∀ n, P9869990002715108354.a n = A097258 n

theorem P9869990002715108354.correct : P9869990002715108354.Spec := by
  intro n
  simp only [A097258]

end A097258

/-! ## A097258.P12746019756894814113

`A033048(n+n)-A033048(n)`
-/

namespace A097258.P12746019756894814113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 (n + n) - A033048 n

end

end A097258.P12746019756894814113

namespace A097258

/-- `A033048(n+n)-A033048(n)` -/
def P12746019756894814113.Spec : Prop :=
  ∀ n, P12746019756894814113.a n = A097258 n

end A097258

/-! ## A097258.P7782570655635519819

`record[A033048(n)-A033048(A110654(n))]`
-/

namespace A097258.P7782570655635519819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 n - A033048 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097258.P7782570655635519819

namespace A097258

/-- `record[A033048(n)-A033048(A110654(n))]` -/
def P7782570655635519819.Spec : Prop :=
  ∀ n, P7782570655635519819.a n = A097258 n

end A097258

/-! ## A097258.P13653053031250559629

`record[A033048(n)-A033048(A014682(n))]`
-/

namespace A097258.P13653053031250559629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 n - A033048 (A014682 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097258.P13653053031250559629

namespace A097258

/-- `record[A033048(n)-A033048(A014682(n))]` -/
def P13653053031250559629.Spec : Prop :=
  ∀ n, P13653053031250559629.a n = A097258 n

end A097258

/-! ## A097258.P15939754721246934961

`record[A033048(n)-A033048(A001281(n))]`
-/

namespace A097258.P15939754721246934961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033048 n - A033048 (A001281 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097258.P15939754721246934961

namespace A097258

/-- `record[A033048(n)-A033048(A001281(n))]` -/
def P15939754721246934961.Spec : Prop :=
  ∀ n, P15939754721246934961.a n = A097258 n

end A097258

/-! ## A097258.P4557544954802701371

`lcm(A033048(n), A040111(n²))`
-/

namespace A097258.P4557544954802701371
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033048 n) (A040111 (n ^ 2))

end

end A097258.P4557544954802701371

namespace A097258

/-- `lcm(A033048(n), A040111(n²))` -/
def P4557544954802701371.Spec : Prop :=
  ∀ n, (P4557544954802701371.a n : ℤ) = A097258 n

end A097258

/-!
# A097259: Numbers whose set of base 13 digits is {0,C}, where C base 13 = 12 base 10.

The programs for A097259, there is no canonical definition to state claims against.
-/

/-! ## A097259.P11728557405528813133

`12*A033049(n)`
-/

namespace A097259.P11728557405528813133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A033049 n

end

end A097259.P11728557405528813133

/-! ## A097259.P12207600430523668715

`A033049(n+n)-A033049(n)`
-/

namespace A097259.P12207600430523668715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033049 (n + n) - A033049 n

end

end A097259.P12207600430523668715

/-! ## A097259.P16405238539193916239

`record[A033049(n)-A033049(A026741(n))]`
-/

namespace A097259.P16405238539193916239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033049 n - A033049 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097259.P16405238539193916239

/-! ## A097259.P2465967781212007495

`12*record[A032920(n+1)-A032933(n+1)]`
-/

namespace A097259.P2465967781212007495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032920 (n + 1) - A032933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097259.P2465967781212007495

/-! ## A097259.P2371183299764861435

`record[A033049(n)-A033049(A064680(n))]`
-/

namespace A097259.P2371183299764861435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033049 n - A033049 (A064680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097259.P2371183299764861435

/-!
# A097260: Numbers whose set of base 14 digits is {0,D}, where D base 14 = 13 base 10.

The programs for A097260, there is no canonical definition to state claims against.
-/

/-! ## A097260.P6890089941508380193

`13*A033050(n)`
-/

namespace A097260.P6890089941508380193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  13 * A033050 n

end

end A097260.P6890089941508380193

/-! ## A097260.P12499679864038460925

`A033050(n+n)-A033050(n)`
-/

namespace A097260.P12499679864038460925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033050 (n + n) - A033050 n

end

end A097260.P12499679864038460925

/-! ## A097260.P5704161926616249143

`abs(A033050(A005843(n))-A033050(n))`
-/

namespace A097260.P5704161926616249143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033050 (A005843 n).toNat - A033050 n|

end

end A097260.P5704161926616249143

/-! ## A097260.P16197569018869233882

`record[A033050(n)-A033050(A110654(n))]`
-/

namespace A097260.P16197569018869233882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033050 n - A033050 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097260.P16197569018869233882

/-! ## A097260.P18118781806607911786

`(A033050(A005843(n))-A033050(n))/A033999(n)²`
-/

namespace A097260.P18118781806607911786
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033050 (A005843 n).toNat - A033050 n : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A097260.P18118781806607911786

/-! ## A097260.P14259134008561033615

`lcm(A033050(n), A040157(n²))`
-/

namespace A097260.P14259134008561033615
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033050 n) (A040157 (n ^ 2))

end

end A097260.P14259134008561033615

/-!
# A097261: Numbers whose set of base 15 digits is {0,E}, where E base 15 = 14 base 10.

The programs for A097261, there is no canonical definition to state claims against.
-/

/-! ## A097261.P9365810549705122267

`14*A033051(n)`
-/

namespace A097261.P9365810549705122267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  14 * A033051 n

end

end A097261.P9365810549705122267

/-! ## A097261.P6931093907431300340

`A033051(n+n)-A033051(n)`
-/

namespace A097261.P6931093907431300340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033051 (n + n) - A033051 n

end

end A097261.P6931093907431300340

/-! ## A097261.P3342327595169131077

`record[A033051(n)-A033051(A026741(n))]`
-/

namespace A097261.P3342327595169131077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033051 n - A033051 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097261.P3342327595169131077

/-! ## A097261.P3975500597720853019

`record[A033051(n)-A033051(A110654(n))]`
-/

namespace A097261.P3975500597720853019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033051 n - A033051 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097261.P3975500597720853019

/-! ## A097261.P6413698678433653558

`record[A033051(n)-A033051(A064680(n))]`
-/

namespace A097261.P6413698678433653558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033051 n - A033051 (A064680 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097261.P6413698678433653558

/-!
# A097262: Numbers whose set of base 16 digits is {0,F}, where F base 16 = 15 base 10.

The programs for A097262, the canonical program `A097262.P8743241402610439635` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097262 has offset 0).

The definition of A097262 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A033052, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097262.P8743241402610439635

`15*A033052(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A097262

/-- `15*A033052(n)` -/
def P8743241402610439635.Spec : Prop :=
  ∀ n, P8743241402610439635.a n = A097262 n

theorem P8743241402610439635.correct : P8743241402610439635.Spec := by
  intro n
  simp only [A097262]

end A097262

/-! ## A097262.P12064284198489863746

`xor(xor(n, -n)²²-1, a(n-1))` with `a(0)=0`
-/

namespace A097262.P12064284198489863746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.xor ((Int.xor (n : ℤ) (-(n : ℤ)) ^ 2) ^ 2 - 1) (a (n - 1))

end

end A097262.P12064284198489863746

namespace A097262

/-- `xor(xor(n, -n)²²-1, a(n-1))` -/
def P12064284198489863746.Spec : Prop :=
  ∀ n, P12064284198489863746.a n = A097262 n

end A097262

/-! ## A097262.P3275452990421392915

`A033052(n+n)-A033052(n)`
-/

namespace A097262.P3275452990421392915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033052 (n + n) - A033052 n

end

end A097262.P3275452990421392915

namespace A097262

/-- `A033052(n+n)-A033052(n)` -/
def P3275452990421392915.Spec : Prop :=
  ∀ n, P3275452990421392915.a n = A097262 n

end A097262

/-! ## A097262.P2803337750208898494

`record[A033052(n)-A033052(A026741(n))]`
-/

namespace A097262.P2803337750208898494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033052 n - A033052 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097262.P2803337750208898494

namespace A097262

/-- `record[A033052(n)-A033052(A026741(n))]` -/
def P2803337750208898494.Spec : Prop :=
  ∀ n, P2803337750208898494.a n = A097262 n

end A097262

/-! ## A097262.P14064119437415365236

`record[A033052(n)-A033052(A014682(n))]`
-/

namespace A097262.P14064119437415365236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033052 n - A033052 (A014682 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097262.P14064119437415365236

namespace A097262

/-- `record[A033052(n)-A033052(A014682(n))]` -/
def P14064119437415365236.Spec : Prop :=
  ∀ n, P14064119437415365236.a n = A097262 n

end A097262

/-! ## A097262.P18288386617630125756

`5*A001196(A000695(n))`
-/

namespace A097262.P18288386617630125756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001196 (A000695 n).toNat

end

end A097262.P18288386617630125756

namespace A097262

/-- `5*A001196(A000695(n))` -/
def P18288386617630125756.Spec : Prop :=
  ∀ n, P18288386617630125756.a n = A097262 n

theorem P18288386617630125756.correct : P18288386617630125756.Spec := by
  intro n
  simp only [A097262, Nat.add_sub_cancel, A097262.P18288386617630125756.a, A097262.P8743241402610439635.a, A000695, A000695.P14587171459336407380.a, A001196, A001196.P5634847783591410852.a, A033052, A033052.P18311306593688986534.a, A145812, A145812.P7040268425871068342.f1, A145812.P7040268425871068342.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097262

/-! ## A097262.P18066963972105202580

`5*A001196(A001196(n)/3)`
-/

namespace A097262.P18066963972105202580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A001196 (SequenceMachineLib.roundAway ((A001196 n : ℚ) / 3)).toNat

end

end A097262.P18066963972105202580

namespace A097262

/-- `5*A001196(A001196(n)/3)` -/
def P18066963972105202580.Spec : Prop :=
  ∀ n, P18066963972105202580.a n = A097262 n

end A097262

/-! ## A097262.P2316143392951569402

`A001196(A000695(n))+A001196(A062880(n))`
-/

namespace A097262.P2316143392951569402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 (A000695 n).toNat + A001196 (A062880 n).toNat

end

end A097262.P2316143392951569402

namespace A097262

/-- `A001196(A000695(n))+A001196(A062880(n))` -/
def P2316143392951569402.Spec : Prop :=
  ∀ n, P2316143392951569402.a n = A097262 n

end A097262

/-! ## A097262.P2219571435216359826

`A001196(A001196(n))`
-/

namespace A097262.P2219571435216359826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001196 (A001196 n).toNat

end

end A097262.P2219571435216359826

namespace A097262

/-- `A001196(A001196(n))` -/
def P2219571435216359826.Spec : Prop :=
  ∀ n, P2219571435216359826.a n = A097262 n

end A097262

/-! ## A097262.P5319943598172250391

`A332206(2*A332206(2*n))`
-/

namespace A097262.P5319943598172250391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332206 (2 * A332206 (2 * n)).toNat

end

end A097262.P5319943598172250391

namespace A097262

/-- `A332206(2*A332206(2*n))` -/
def P5319943598172250391.Spec : Prop :=
  ∀ n, P5319943598172250391.a n = A097262 n

end A097262

/-!
# A097266: Number of primitive Pythagorean quadruples with diagonal 2n+1.

The programs for A097266, there is no canonical definition to state claims against.
-/

/-! ## A097266.P15429369608539987842

`A223730(Δ[n²]²)`
-/

namespace A097266.P15429369608539987842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2).toNat

end

end A097266.P15429369608539987842

/-! ## A097266.P17503609213218356492

`ceil(abs(sin(n)))*A223730((2*n+1)²)`
-/

namespace A097266.P17503609213218356492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ * A223730 ((2 * n + 1) ^ 2)

end

end A097266.P17503609213218356492

/-! ## A097266.P3070551907652249167

`or(char[1], A223730(A157142(n)²))`
-/

namespace A097266.P3070551907652249167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A223730 (A157142 n ^ 2).toNat)

end

end A097266.P3070551907652249167

/-! ## A097266.P903263008812392625

`A105970(n+1)-A049317(n+1)`
-/

namespace A097266.P903263008812392625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105970 (n + 1) - A049317 (n + 1)

end

end A097266.P903263008812392625

/-! ## A097266.P10763232761645519931

`A057427(n)*A223730((2*n+1)²)`
-/

namespace A097266.P10763232761645519931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A223730 ((2 * n + 1) ^ 2)

end

end A097266.P10763232761645519931

/-! ## A097266.P593648588387429815

`A007318(∑[n])*A223730((2*n+1)²)`
-/

namespace A097266.P593648588387429815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A223730 ((2 * n + 1) ^ 2)

end

end A097266.P593648588387429815

/-! ## A097266.P6559477601281073821

`ceil(n/A000041(n))*A223730((2*n+1)²)`
-/

namespace A097266.P6559477601281073821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A000041 n : ℚ)⌉ * A223730 ((2 * n + 1) ^ 2)

end

end A097266.P6559477601281073821

/-! ## A097266.P12003719218307182460

`A223730((2*n+1)²)+A008683(4*(n+1))`
-/

namespace A097266.P12003719218307182460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223730 ((2 * n + 1) ^ 2) + A008683 (4 * (n + 1))

end

end A097266.P12003719218307182460

/-!
# A097268: Numbers that are both the sum of two nonzero squares and the difference of two nonzero squares.

The programs for A097268, the canonical program `A097268.P6222232716503931075` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097268 has offset 1).

The definition of A097268 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7488 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097268.P2005756742337813616

`∪[A339273(n+1), A339952(n+1)]`
-/

namespace A097268.P2005756742337813616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339952 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097268.P2005756742337813616

namespace A097268

/-- `∪[A339273(n+1), A339952(n+1)]` -/
def P2005756742337813616.Spec : Prop :=
  ∀ n, (P2005756742337813616.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P6222232716503931075

`filter[A000404(n+1), A152822(#)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A097268

/-- `filter[A000404(n+1), A152822(#)]` -/
def P6222232716503931075.Spec : Prop :=
  ∀ n, P6222232716503931075.a n = A097268 (n + 1)

theorem P6222232716503931075.correct : P6222232716503931075.Spec := by
  intro n
  simp only [A097268, Nat.add_sub_cancel]

end A097268

/-! ## A097268.P15550353855655859820

`∩[A000404(n+1), A020668(n+1)]`
-/

namespace A097268.P15550353855655859820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097268.P15550353855655859820

namespace A097268

/-- `∩[A000404(n+1), A020668(n+1)]` -/
def P15550353855655859820.Spec : Prop :=
  ∀ n, (P15550353855655859820.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P1417222236320371423

`∩[A000404(n+1), A042948(n)]`
-/

namespace A097268.P1417222236320371423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097268.P1417222236320371423

namespace A097268

/-- `∩[A000404(n+1), A042948(n)]` -/
def P1417222236320371423.Spec : Prop :=
  ∀ n, (P1417222236320371423.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P14123965190722218120

`∩[A000404(n+1), A100832(n+1)]`
-/

namespace A097268.P14123965190722218120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100832 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097268.P14123965190722218120

namespace A097268

/-- `∩[A000404(n+1), A100832(n+1)]` -/
def P14123965190722218120.Spec : Prop :=
  ∀ n, (P14123965190722218120.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P2533857887507386390

`∩[A000404(n+1), A047432(n+1)]`
-/

namespace A097268.P2533857887507386390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047432 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097268.P2533857887507386390

namespace A097268

/-- `∩[A000404(n+1), A047432(n+1)]` -/
def P2533857887507386390.Spec : Prop :=
  ∀ n, (P2533857887507386390.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P16061072263266586495

`∩[A000404(n+1), A047494(n+1)]`
-/

namespace A097268.P16061072263266586495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047494 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097268.P16061072263266586495

namespace A097268

/-- `∩[A000404(n+1), A047494(n+1)]` -/
def P16061072263266586495.Spec : Prop :=
  ∀ n, (P16061072263266586495.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P6120181589688554240

`∩[A000404(n+1), A047601(n+1)]`
-/

namespace A097268.P6120181589688554240
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047601 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097268.P6120181589688554240

namespace A097268

/-- `∩[A000404(n+1), A047601(n+1)]` -/
def P6120181589688554240.Spec : Prop :=
  ∀ n, (P6120181589688554240.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P5925561177756872366

`∩[A000404(n+1), A161674(n+1)]`
-/

namespace A097268.P5925561177756872366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161674 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097268.P5925561177756872366

namespace A097268

/-- `∩[A000404(n+1), A161674(n+1)]` -/
def P5925561177756872366.Spec : Prop :=
  ∀ n, (P5925561177756872366.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P2735307886650547806

`∩[A000404(n+1), A024352(n+1)]`
-/

namespace A097268.P2735307886650547806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097268.P2735307886650547806

namespace A097268

/-- `∩[A000404(n+1), A024352(n+1)]` -/
def P2735307886650547806.Spec : Prop :=
  ∀ n, (P2735307886650547806.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P14880828062092467270

`∩[A000404(n+1), A042965(n+1)]`
-/

namespace A097268.P14880828062092467270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042965 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097268.P14880828062092467270

namespace A097268

/-- `∩[A000404(n+1), A042965(n+1)]` -/
def P14880828062092467270.Spec : Prop :=
  ∀ n, (P14880828062092467270.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P6029872435663030805

`∩[A000404(n+1), A047428(n+1)]`
-/

namespace A097268.P6029872435663030805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097268.P6029872435663030805

namespace A097268

/-- `∩[A000404(n+1), A047428(n+1)]` -/
def P6029872435663030805.Spec : Prop :=
  ∀ n, (P6029872435663030805.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P14317952096050770010

`∩[A000404(n+1), A047569(n+1)]`
-/

namespace A097268.P14317952096050770010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097268.P14317952096050770010

namespace A097268

/-- `∩[A000404(n+1), A047569(n+1)]` -/
def P14317952096050770010.Spec : Prop :=
  ∀ n, (P14317952096050770010.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P9522478561012651551

`∩[A000404(n+1), A047565(n+1)]`
-/

namespace A097268.P9522478561012651551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047565 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097268.P9522478561012651551

namespace A097268

/-- `∩[A000404(n+1), A047565(n+1)]` -/
def P9522478561012651551.Spec : Prop :=
  ∀ n, (P9522478561012651551.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P5615140834356055798

`lt[13^(n%4-1), A063725(n)]`
-/

namespace A097268.P5615140834356055798
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (((n % 4 : ℕ) : ℤ) - 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A097268.P5615140834356055798

namespace A097268

/-- `lt[13^(n%4-1), A063725(n)]` -/
def P5615140834356055798.Spec : Prop :=
  ∀ n, (P5615140834356055798.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P879906818568960190

`lt[1, A037214(A316631(n))+1]`
-/

namespace A097268.P879906818568960190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 (A316631 n).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A097268.P879906818568960190

namespace A097268

/-- `lt[1, A037214(A316631(n))+1]` -/
def P879906818568960190.Spec : Prop :=
  ∀ n, (P879906818568960190.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P3205803477488799422

`filter[A000404(n+1), A039963(#)]`
-/

namespace A097268.P3205803477488799422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A039963 (f1 j).toNat = 1) n)

end

end A097268.P3205803477488799422

namespace A097268

/-- `filter[A000404(n+1), A039963(#)]` -/
def P3205803477488799422.Spec : Prop :=
  ∀ n, P3205803477488799422.a n = A097268 (n + 1)

end A097268

/-! ## A097268.P10287292194980847040

`filter[A000404(n+1), A133872(#)]`
-/

namespace A097268.P10287292194980847040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000404 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A133872 (f1 j).toNat = 1) n)

end

end A097268.P10287292194980847040

namespace A097268

/-- `filter[A000404(n+1), A133872(#)]` -/
def P10287292194980847040.Spec : Prop :=
  ∀ n, P10287292194980847040.a n = A097268 (n + 1)

end A097268

/-! ## A097268.P7598716110230303182

`lt[1, A037214(n)*A316631(n)]`
-/

namespace A097268.P7598716110230303182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037214 n * A316631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A097268.P7598716110230303182

namespace A097268

/-- `lt[1, A037214(n)*A316631(n)]` -/
def P7598716110230303182.Spec : Prop :=
  ∀ n, (P7598716110230303182.a n : ℤ) = A097268 (n + 1)

end A097268

/-! ## A097268.P16609128762380778051

`eq[A050603(n), A057427(A063725(n))]`
-/

namespace A097268.P16609128762380778051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A063725 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097268.P16609128762380778051

namespace A097268

/-- `eq[A050603(n), A057427(A063725(n))]` -/
def P16609128762380778051.Spec : Prop :=
  ∀ n, (P16609128762380778051.a n : ℤ) = A097268 (n + 1)

end A097268

/-!
# A097269: Numbers that are the sum of two nonzero squares but not the difference of two nonzero squares.

The programs for A097269, the canonical program `A097269.P5694133736295637479` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097269 has offset 1).

The definition of A097269 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097269.P7940207083953366764

`2*A057653(n+1)`
-/

namespace A097269.P7940207083953366764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A057653 (n + 1)

end

end A097269.P7940207083953366764

namespace A097269

/-- `2*A057653(n+1)` -/
def P7940207083953366764.Spec : Prop :=
  ∀ n, P7940207083953366764.a n = A097269 (n + 1)

end A097269

/-! ## A097269.P5694133736295637479

`8*A020756(n+1)+2`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A097269

/-- `8*A020756(n+1)+2` -/
def P5694133736295637479.Spec : Prop :=
  ∀ n, P5694133736295637479.a n = A097269 (n + 1)

theorem P5694133736295637479.correct : P5694133736295637479.Spec := by
  intro n
  simp only [A097269, Nat.add_sub_cancel]

end A097269

/-! ## A097269.P8412251435685604088

`record[lcm(2, A046711(n+1))]`
-/

namespace A097269.P8412251435685604088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A046711 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097269.P8412251435685604088

namespace A097269

/-- `record[lcm(2, A046711(n+1))]` -/
def P8412251435685604088.Spec : Prop :=
  ∀ n, (P8412251435685604088.a n : ℤ) = A097269 (n + 1)

end A097269

/-! ## A097269.P3046081174599951960

`A016825(2*A020756(n+1))`
-/

namespace A097269.P3046081174599951960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (2 * A020756 (n + 1)).toNat

end

end A097269.P3046081174599951960

namespace A097269

/-- `A016825(2*A020756(n+1))` -/
def P3046081174599951960.Spec : Prop :=
  ∀ n, P3046081174599951960.a n = A097269 (n + 1)

end A097269

/-! ## A097269.P18108460437557935648

`A017089(A020756(n+1))`
-/

namespace A097269.P18108460437557935648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A020756 (n + 1)).toNat

end

end A097269.P18108460437557935648

namespace A097269

/-- `A017089(A020756(n+1))` -/
def P18108460437557935648.Spec : Prop :=
  ∀ n, P18108460437557935648.a n = A097269 (n + 1)

end A097269

/-! ## A097269.P13497237119065618644

`2*∩[A020668(n+1), A016813(n)]`
-/

namespace A097269.P13497237119065618644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097269.P13497237119065618644

namespace A097269

/-- `2*∩[A020668(n+1), A016813(n)]` -/
def P13497237119065618644.Spec : Prop :=
  ∀ n, (P13497237119065618644.a n : ℤ) = A097269 (n + 1)

end A097269

/-! ## A097269.P4242899638333643104

`2*∩[A001983(n+1), A016813(n)]`
-/

namespace A097269.P4242899638333643104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097269.P4242899638333643104

namespace A097269

/-- `2*∩[A001983(n+1), A016813(n)]` -/
def P4242899638333643104.Spec : Prop :=
  ∀ n, (P4242899638333643104.a n : ℤ) = A097269 (n + 1)

end A097269

/-! ## A097269.P17935634739322345633

`filter[A128106(n+2), A359374(#)]`
-/

namespace A097269.P17935634739322345633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359374 (f1 j).toNat = 1) n)

end

end A097269.P17935634739322345633

namespace A097269

/-- `filter[A128106(n+2), A359374(#)]` -/
def P17935634739322345633.Spec : Prop :=
  ∀ n, P17935634739322345633.a n = A097269 (n + 1)

end A097269

/-! ## A097269.P10513912379555259148

`filter[A128106(n+2), A359820(#)]`
-/

namespace A097269.P10513912379555259148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359820 (f1 j).toNat = 1) n)

end

end A097269.P10513912379555259148

namespace A097269

/-- `filter[A128106(n+2), A359820(#)]` -/
def P10513912379555259148.Spec : Prop :=
  ∀ n, P10513912379555259148.a n = A097269 (n + 1)

end A097269

/-! ## A097269.P10006121126263266582

`∩[A016825(n), A128106(n+1)]`
-/

namespace A097269.P10006121126263266582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097269.P10006121126263266582

namespace A097269

/-- `∩[A016825(n), A128106(n+1)]` -/
def P10006121126263266582.Spec : Prop :=
  ∀ n, (P10006121126263266582.a n : ℤ) = A097269 (n + 1)

end A097269

/-! ## A097269.P12051614429274373223

`∩[A128106(n+1), A017089(n)]`
-/

namespace A097269.P12051614429274373223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097269.P12051614429274373223

namespace A097269

/-- `∩[A128106(n+1), A017089(n)]` -/
def P12051614429274373223.Spec : Prop :=
  ∀ n, (P12051614429274373223.a n : ℤ) = A097269 (n + 1)

end A097269

/-! ## A097269.P10489874361881318448

`filter[A016825(n), A229062(#)]`
-/

namespace A097269.P10489874361881318448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A097269.P10489874361881318448

namespace A097269

/-- `filter[A016825(n), A229062(#)]` -/
def P10489874361881318448.Spec : Prop :=
  ∀ n, P10489874361881318448.a n = A097269 (n + 1)

end A097269

/-! ## A097269.P4260780560783238449

`filter[A017089(n), A229062(#)]`
-/

namespace A097269.P4260780560783238449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A229062 (f1 j).toNat = 1) n)

end

end A097269.P4260780560783238449

namespace A097269

/-- `filter[A017089(n), A229062(#)]` -/
def P4260780560783238449.Spec : Prop :=
  ∀ n, P4260780560783238449.a n = A097269 (n + 1)

end A097269

/-! ## A097269.P3871506330800662838

`filter[A128106(n+2), A098725(#)]`
-/

namespace A097269.P3871506330800662838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A098725 (f1 j).toNat = 1) n)

end

end A097269.P3871506330800662838

namespace A097269

/-- `filter[A128106(n+2), A098725(#)]` -/
def P3871506330800662838.Spec : Prop :=
  ∀ n, P3871506330800662838.a n = A097269 (n + 1)

end A097269

/-! ## A097269.P16883583554844418009

`filter[A128106(n+2), A166486(#)]`
-/

namespace A097269.P16883583554844418009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A097269.P16883583554844418009

namespace A097269

/-- `filter[A128106(n+2), A166486(#)]` -/
def P16883583554844418009.Spec : Prop :=
  ∀ n, P16883583554844418009.a n = A097269 (n + 1)

end A097269

/-! ## A097269.P18169504965522844541

`filter[A128106(n+2), A353491(#)]`
-/

namespace A097269.P18169504965522844541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128106 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353491 (f1 j).toNat = 1) n)

end

end A097269.P18169504965522844541

namespace A097269

/-- `filter[A128106(n+2), A353491(#)]` -/
def P18169504965522844541.Spec : Prop :=
  ∀ n, P18169504965522844541.a n = A097269 (n + 1)

end A097269

/-! ## A097269.P11291388305639452358

`filter[A046711(n+1), A182582(#)]`
-/

namespace A097269.P11291388305639452358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A097269.P11291388305639452358

namespace A097269

/-- `filter[A046711(n+1), A182582(#)]` -/
def P11291388305639452358.Spec : Prop :=
  ∀ n, P11291388305639452358.a n = A097269 (n + 1)

end A097269

/-! ## A097269.P17007821053089642474

`∩[A016825(n), A046711(n+1)]`
-/

namespace A097269.P17007821053089642474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097269.P17007821053089642474

namespace A097269

/-- `∩[A016825(n), A046711(n+1)]` -/
def P17007821053089642474.Spec : Prop :=
  ∀ n, (P17007821053089642474.a n : ℤ) = A097269 (n + 1)

end A097269

/-! ## A097269.P12401789633693191113

`∩[A046711(n+1), A017089(n)]`
-/

namespace A097269.P12401789633693191113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097269.P12401789633693191113

namespace A097269

/-- `∩[A046711(n+1), A017089(n)]` -/
def P12401789633693191113.Spec : Prop :=
  ∀ n, (P12401789633693191113.a n : ℤ) = A097269 (n + 1)

end A097269

/-! ## A097269.P4566640189628930472

`∩[A000415(n+1), A016825(n)]`
-/

namespace A097269.P4566640189628930472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000415 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097269.P4566640189628930472

namespace A097269

/-- `∩[A000415(n+1), A016825(n)]` -/
def P4566640189628930472.Spec : Prop :=
  ∀ n, (P4566640189628930472.a n : ℤ) = A097269 (n + 1)

end A097269

/-!
# A097270: Numbers that are the difference of two nonzero squares but not the sum of two nonzero squares.

The programs for A097270, there is no canonical definition to state claims against.
-/

/-! ## A097270.P13099962993369414906

`lt[(A037214(n)+1)², A316631(n)]`
-/

namespace A097270.P13099962993369414906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A037214 n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097270.P13099962993369414906

/-! ## A097270.P5298233134750662254

`lt[A063725(n), char[A120070(n+2)]]`
-/

namespace A097270.P5298233134750662254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063725 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120070 (n + 2)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A097270.P5298233134750662254

/-! ## A097270.P11179952750951780991

`∩[A018825(n+1), A024352(n+1)]`
-/

namespace A097270.P11179952750951780991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A097270.P11179952750951780991

/-! ## A097270.P16312552320105766574

`∩[A018825(n+1), comp[A097271(n+1)]]`
-/

namespace A097270.P16312552320105766574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018825 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097271 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A097270.P16312552320105766574

/-! ## A097270.P11108479413177754102

`lt[A008458(A037214(n)), A316631(n)]`
-/

namespace A097270.P11108479413177754102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A037214 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097270.P11108479413177754102

/-!
# A097271: Numbers that are neither the sum of two nonzero squares nor the difference of two nonzero squares.

The programs for A097271, there is no canonical definition to state claims against.
-/

/-! ## A097271.P11598967010646516606

`eq[A000161(n), A007431(n)]`
-/

namespace A097271.P11598967010646516606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097271.P11598967010646516606

/-! ## A097271.P7647635320402318044

`eq[A007431(n), A229062(n)]`
-/

namespace A097271.P7647635320402318044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097271.P7647635320402318044

/-! ## A097271.P3375847109165735812

`eq[A000161(n), A316631(n)]`
-/

namespace A097271.P3375847109165735812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000161 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097271.P3375847109165735812

/-! ## A097271.P13455867376813746716

`eq[A143574(n), A364529(n)]`
-/

namespace A097271.P13455867376813746716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143574 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364529 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097271.P13455867376813746716

/-! ## A097271.P9626099555934676384

`eq[A229062(n), A316631(n)]`
-/

namespace A097271.P9626099555934676384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229062 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097271.P9626099555934676384

/-! ## A097271.P3810946863382484854

`eq[A258228(n), A316631(n)]`
-/

namespace A097271.P3810946863382484854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258228 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097271.P3810946863382484854

/-! ## A097271.P18336303081598608044

`eq[A258256(n), A316631(n)]`
-/

namespace A097271.P18336303081598608044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258256 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097271.P18336303081598608044

/-! ## A097271.P15814429722241977848

`eq[2*A007431(n), A000925(n)]`
-/

namespace A097271.P15814429722241977848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A007431 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A097271.P15814429722241977848

/-! ## A097271.P6404976848424131587

`∪[A062316(n+1), A081670(n)]`
-/

namespace A097271.P6404976848424131587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081670 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097271.P6404976848424131587

/-! ## A097271.P6485977788462041634

`∪[A062316(n+1), A124618(n)]`
-/

namespace A097271.P6485977788462041634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124618 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A097271.P6485977788462041634

/-!
# A097272: Least integer with same "mod 2 prime signature" as n.

The programs for A097272, the canonical program `A097272.P984936321937266580` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097272 has offset 1).

The definition of A097272 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003961, A046523, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A097272.P984936321937266580

`A006519(n+1)*A003961(A046523(A000265(n+1)))`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A097272

/-- `A006519(n+1)*A003961(A046523(A000265(n+1)))` -/
def P984936321937266580.Spec : Prop :=
  ∀ n, P984936321937266580.a n = A097272 (n + 1)

theorem P984936321937266580.correct : P984936321937266580.Spec := by
  intro n
  simp only [A097272, Nat.add_sub_cancel]

end A097272

/-! ## A097272.P15916267991995937101

`A097273(A305891(n+1))`
-/

namespace A097272.P15916267991995937101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097273 (A305891 (n + 1)).toNat

end

end A097272.P15916267991995937101

namespace A097272

/-- `A097273(A305891(n+1))` -/
def P15916267991995937101.Spec : Prop :=
  ∀ n, P15916267991995937101.a n = A097272 (n + 1)

end A097272

/-! ## A097272.P835923418145014536

`A003961(A336158(n+1))*A006519(n+1)`
-/

namespace A097272.P835923418145014536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A336158 (n + 1)).toNat * A006519 (n + 1)

end

end A097272.P835923418145014536

namespace A097272

/-- `A003961(A336158(n+1))*A006519(n+1)` -/
def P835923418145014536.Spec : Prop :=
  ∀ n, P835923418145014536.a n = A097272 (n + 1)

theorem P835923418145014536.correct : P835923418145014536.Spec := by
  intro n
  simp only [A097272, Nat.add_sub_cancel, A097272.P835923418145014536.a, A097272.P984936321937266580.a, A000265, A000265.P16482698636471710744.a, A003961, A003961.P5996473960037614004.a, A006519, A006519.P10435570611646570274.a, A046523, A046523.P3407874444772092792.a, A336158, A336158.P5052491878283479858.a, A171977, A171977.P14092944863121073856.a, A181819, A181819.P15090535388863431201.a, A181821, A181821.P11277667539367847379.a, A253885, A253885.P16715555451856890624.a, A001511, A001511.P17146462531039486101.a, A008578, A008578.P3639467937083264764.a, A038712, A038712.P3404197303190209645.a, A064989, A064989.P13349672914146769936.a, A108951, A108951.P1294613322156543690.a, A122111, A122111.P18124015185857335041.a, A243501, A243501.P10707292738867961998.a, A048673, A048673.P3613002930333742504.a, A052126, A052126.P1944428405920482243.a, A061395, A061395.P8431317036300486107.a, A105560, A105560.P10934841406439867276.a, A158611, A158611.P9275629407611603775.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A097272

/-! ## A097272.P15181634755033875739

`lcm(A003961(A336158(n+1)), A083258(n+1))`
-/

namespace A097272.P15181634755033875739
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A003961 (A336158 (n + 1)).toNat) (A083258 (n + 1))

end

end A097272.P15181634755033875739

namespace A097272

/-- `lcm(A003961(A336158(n+1)), A083258(n+1))` -/
def P15181634755033875739.Spec : Prop :=
  ∀ n, (P15181634755033875739.a n : ℤ) = A097272 (n + 1)

end A097272

/-! ## A097272.P5602397368822567978

`A003961(A046523(A064989(n+1)))*A006519(n+1)`
-/

namespace A097272.P5602397368822567978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (A046523 (A064989 (n + 1)).toNat).toNat * A006519 (n + 1)

end

end A097272.P5602397368822567978

namespace A097272

/-- `A003961(A046523(A064989(n+1)))*A006519(n+1)` -/
def P5602397368822567978.Spec : Prop :=
  ∀ n, P5602397368822567978.a n = A097272 (n + 1)

end A097272

/-! ## A097272.P9727756426024636713

`A046523(32*(n+1))/32`
-/

namespace A097272.P9727756426024636713
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046523 (32 * (n + 1)) : ℚ) / 32

end

end A097272.P9727756426024636713

namespace A097272

/-- `A046523(32*(n+1))/32` -/
def P9727756426024636713.Spec : Prop :=
  ∀ n, P9727756426024636713.a n = (A097272 (n + 1) : ℚ)

end A097272

/-! ## A097272.P7853651314923194304

`A071364(2*(n+1))/A020639(A278226(2*n+1))`
-/

namespace A097272.P7853651314923194304
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071364 (2 * (n + 1)) : ℚ) / (A020639 (A278226 (2 * n + 1)).toNat : ℚ)

end

end A097272.P7853651314923194304

namespace A097272

/-- `A071364(2*(n+1))/A020639(A278226(2*n+1))` -/
def P7853651314923194304.Spec : Prop :=
  ∀ n, P7853651314923194304.a n = (A097272 (n + 1) : ℚ)

end A097272

/-! ## A097272.P12990895140316282970

`A071364(2*(n+1))/A040015(A139886(4*n+2))`
-/

namespace A097272.P12990895140316282970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071364 (2 * (n + 1)) : ℚ) / (A040015 (A139886 (4 * n + 2)).toNat : ℚ)

end

end A097272.P12990895140316282970

namespace A097272

/-- `A071364(2*(n+1))/A040015(A139886(4*n+2))` -/
def P12990895140316282970.Spec : Prop :=
  ∀ n, P12990895140316282970.a n = (A097272 (n + 1) : ℚ)

end A097272

/-! ## A097272.P10791693461167914740

`A000188(A071364(∑[A016825(n)]))`
-/

namespace A097272.P10791693461167914740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000188 (A071364 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A097272.P10791693461167914740

namespace A097272

/-- `A000188(A071364(∑[A016825(n)]))` -/
def P10791693461167914740.Spec : Prop :=
  ∀ n, P10791693461167914740.a n = A097272 (n + 1)

end A097272

/-! ## A097272.P17755407892462837469

`A071364(2*(n+1))/gcd(2, A349260(2*n+1))`
-/

namespace A097272.P17755407892462837469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071364 (2 * (n + 1)) : ℚ) / (Int.gcd 2 (A349260 (2 * n + 1)) : ℚ)

end

end A097272.P17755407892462837469

namespace A097272

/-- `A071364(2*(n+1))/gcd(2, A349260(2*n+1))` -/
def P17755407892462837469.Spec : Prop :=
  ∀ n, P17755407892462837469.a n = (A097272 (n + 1) : ℚ)

end A097272

/-!
# A097273: Least integer with each "mod 2 prime signature".

The programs for A097273, the canonical program `A097273.P8244494821502162053` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097273 has offset 1).

The definition of A097273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 149 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A097273.P7032480748002084221

`record[A097272(n+1)]`
-/

namespace A097273.P7032480748002084221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097273.P7032480748002084221

namespace A097273

/-- `record[A097272(n+1)]` -/
def P7032480748002084221.Spec : Prop :=
  ∀ n, P7032480748002084221.a n = A097273 (n + 1)

end A097273

/-! ## A097273.P8279721320627371782

`A097272(record[A097272(ϕ²-(ϕ-n))])`
-/

namespace A097273.P8279721320627371782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097273.P8279721320627371782

namespace A097273

/-- `A097272(record[A097272(ϕ²-(ϕ-n))])` -/
def P8279721320627371782.Spec : Prop :=
  ∀ n, P8279721320627371782.a n = A097273 (n + 1)

end A097273

/-! ## A097273.P9753051782822907751

`eq[n, A097272(abs(1-n)+1)]`
-/

namespace A097273.P9753051782822907751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A097273.P9753051782822907751

namespace A097273

/-- `eq[n, A097272(abs(1-n)+1)]` -/
def P9753051782822907751.Spec : Prop :=
  ∀ n, (P9753051782822907751.a n : ℤ) = A097273 (n + 1)

end A097273

/-! ## A097273.P16426755358871782155

`record[gcd(n, A097272(A008574(n)))]`
-/

namespace A097273.P16426755358871782155
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A097272 (A008574 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097273.P16426755358871782155

namespace A097273

/-- `record[gcd(n, A097272(A008574(n)))]` -/
def P16426755358871782155.Spec : Prop :=
  ∀ n, (P16426755358871782155.a n : ℤ) = A097273 (n + 1)

end A097273

/-! ## A097273.P8244494821502162053

`eq[1, A003963(A319627(n+1))]+1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A097273

/-- `eq[1, A003963(A319627(n+1))]+1` -/
def P8244494821502162053.Spec : Prop :=
  ∀ n, (P8244494821502162053.a n : ℤ) = A097273 (n + 1)

theorem P8244494821502162053.correct : P8244494821502162053.Spec := by
  intro n
  simp only [A097273, Nat.add_sub_cancel]

end A097273

/-! ## A097273.P13776712559582951753

`A028310(record[A097272(n-log2(1/2))])`
-/

namespace A097273.P13776712559582951753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097272 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A097273.P13776712559582951753

namespace A097273

/-- `A028310(record[A097272(n-log2(1/2))])` -/
def P13776712559582951753.Spec : Prop :=
  ∀ n, P13776712559582951753.a n = A097273 (n + 1)

end A097273

/-! ## A097273.P5385793122577758155

`record[A000027(n+1)/A003963(A319627(n+1))]`
-/

namespace A097273.P5385793122577758155
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 1) : ℚ) / (A003963 (A319627 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097273.P5385793122577758155

namespace A097273

/-- `record[A000027(n+1)/A003963(A319627(n+1))]` -/
def P5385793122577758155.Spec : Prop :=
  ∀ n, P5385793122577758155.a n = (A097273 (n + 1) : ℚ)

end A097273

/-! ## A097273.P6913255354285206460

`record[A032742(n+1)/A003963(A319627(n+1))]`
-/

namespace A097273.P6913255354285206460
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032742 (n + 1) : ℚ) / (A003963 (A319627 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097273.P6913255354285206460

namespace A097273

/-- `record[A032742(n+1)/A003963(A319627(n+1))]` -/
def P6913255354285206460.Spec : Prop :=
  ∀ n, P6913255354285206460.a n = (A097273 (n + 1) : ℚ)

end A097273

/-!
# A097277: a(n) = number of permutations <p(1), p(2), ..., p(n)> of <1, 2, ..., n>, such that p(k) > p(k-1) when k is composite and p(k) < p(k-1) when k is prime.

The programs for A097277, there is no canonical definition to state claims against.
-/

/-! ## A097277.P12613835978546855889

`A060351(A118255(n+1))`
-/

namespace A097277.P12613835978546855889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060351 (A118255 (n + 1)).toNat

end

end A097277.P12613835978546855889

/-! ## A097277.P7367291350217369673

`A368070(A072762(n+1))`
-/

namespace A097277.P7367291350217369673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368070 (A072762 (n + 1)).toNat

end

end A097277.P7367291350217369673

/-! ## A097277.P15932745094471180705

`or(A004216(n!), A030268(n))`
-/

namespace A097277.P15932745094471180705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004216 (Nat.factorial n)) (A030268 n)

end

end A097277.P15932745094471180705

/-! ## A097277.P4809874336562138695

`A137375(n²)+A034428(n+1)`
-/

namespace A097277.P4809874336562138695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137375 (n ^ 2) + A034428 (n + 1)

end

end A097277.P4809874336562138695

/-!
# A097279: Alternating-harmonic primes.

The programs for A097279, there is no canonical definition to state claims against.
-/

/-! ## A097279.P5728257894362541027

`filter[A092581(n+2), A156259(#)]`
-/

namespace A097279.P5728257894362541027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092581 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156259 (f1 j).toNat = 1) n)

end

end A097279.P5728257894362541027

/-! ## A097279.P9385057016092723263

`filter[A227202(n+2), A156259(#)]`
-/

namespace A097279.P9385057016092723263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227202 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A156259 (f1 j).toNat = 1) n)

end

end A097279.P9385057016092723263

/-!
# A097280: Perimeter of integer triangle (A001611(n), A001611(n+1), A001611(n+2)).

The programs for A097280, the canonical program `A097280.P4212939208197462869` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097280 has offset 0).

The definition of A097280 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097280.P16425929729939564756

`ogf((5-3x-5x^2)/(1-2x+x^3))`
-/

namespace A097280.P16425929729939564756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3, -5] [1, -2, 0, 1] n

end

end A097280.P16425929729939564756

namespace A097280

/-- `ogf((5-3x-5x^2)/(1-2x+x^3))` -/
def P16425929729939564756.Spec : Prop :=
  ∀ n, P16425929729939564756.a n = A097280 n

end A097280

/-! ## A097280.P4212939208197462869

`2*a(n-1)-a(n-3)` with `a(0)=5, a(1)=7, a(2)=9`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A097280

/-- `2*a(n-1)-a(n-3)` -/
def P4212939208197462869.Spec : Prop :=
  ∀ n, P4212939208197462869.a n = A097280 n

theorem P4212939208197462869.correct : P4212939208197462869.Spec := by
  intro n
  simp only [A097280]

end A097280

/-! ## A097280.P10546533169629849059

`2*A001611(n+2)+1`
-/

namespace A097280.P10546533169629849059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001611 (n + 2) + 1

end

end A097280.P10546533169629849059

namespace A097280

/-- `2*A001611(n+2)+1` -/
def P10546533169629849059.Spec : Prop :=
  ∀ n, P10546533169629849059.a n = A097280 n

end A097280

/-! ## A097280.P17086493961493663257

`2*A000045(n+2)+3`
-/

namespace A097280.P17086493961493663257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 (n + 2) + 3

end

end A097280.P17086493961493663257

namespace A097280

/-- `2*A000045(n+2)+3` -/
def P17086493961493663257.Spec : Prop :=
  ∀ n, P17086493961493663257.a n = A097280 n

end A097280

/-! ## A097280.P2311690154989740692

`A001611(n)+A001611(n+1)+A001611(n+2)`
-/

namespace A097280.P2311690154989740692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n + A001611 (n + 1) + A001611 (n + 2)

end

end A097280.P2311690154989740692

namespace A097280

/-- `A001611(n)+A001611(n+1)+A001611(n+2)` -/
def P2311690154989740692.Spec : Prop :=
  ∀ n, P2311690154989740692.a n = A097280 n

end A097280

/-! ## A097280.P13206736044448631439

`∑[ogf((-5+3x+5x^2)/(-1+x+x^2))]`
-/

namespace A097280.P13206736044448631439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, -3, -5] [1, -1, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097280.P13206736044448631439

namespace A097280

/-- `∑[ogf((-5+3x+5x^2)/(-1+x+x^2))]` -/
def P13206736044448631439.Spec : Prop :=
  ∀ n, P13206736044448631439.a n = A097280 n

end A097280

/-! ## A097280.P18069325953291232459

`a(n-1)+a(n-2)-3` with `a(0)=5, a(1)=7`
-/

namespace A097280.P18069325953291232459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  a (n - 1) + (a (n - 2) - 3)

end

end A097280.P18069325953291232459

namespace A097280

/-- `a(n-1)+a(n-2)-3` -/
def P18069325953291232459.Spec : Prop :=
  ∀ n, P18069325953291232459.a n = A097280 n

end A097280

/-! ## A097280.P15399404196798232594

`a(n-1)-(3-a(n-2))` with `a(0)=5, a(1)=7`
-/

namespace A097280.P15399404196798232594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 7] fun n a =>
  a (n - 1) - (3 - a (n - 2))

end

end A097280.P15399404196798232594

namespace A097280

/-- `a(n-1)-(3-a(n-2))` -/
def P15399404196798232594.Spec : Prop :=
  ∀ n, P15399404196798232594.a n = A097280 n

end A097280

/-! ## A097280.P16871702025129303106

`∑[A055389(n)]+4`
-/

namespace A097280.P16871702025129303106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A097280.P16871702025129303106

namespace A097280

/-- `∑[A055389(n)]+4` -/
def P16871702025129303106.Spec : Prop :=
  ∀ n, P16871702025129303106.a n = A097280 n

end A097280

/-! ## A097280.P17187833092654432328

`A288603(n+1)+1`
-/

namespace A097280.P17187833092654432328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288603 (n + 1) + 1

end

end A097280.P17187833092654432328

namespace A097280

/-- `A288603(n+1)+1` -/
def P17187833092654432328.Spec : Prop :=
  ∀ n, P17187833092654432328.a n = A097280 n

end A097280

/-! ## A097280.P9947760045768206641

`A001588(n+2)+2`
-/

namespace A097280.P9947760045768206641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001588 (n + 2) + 2

end

end A097280.P9947760045768206641

namespace A097280

/-- `A001588(n+2)+2` -/
def P9947760045768206641.Spec : Prop :=
  ∀ n, P9947760045768206641.a n = A097280 n

end A097280

/-! ## A097280.P10878590975490919629

`A001595(n+1)+4`
-/

namespace A097280.P10878590975490919629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (n + 1) + 4

end

end A097280.P10878590975490919629

namespace A097280

/-- `A001595(n+1)+4` -/
def P10878590975490919629.Spec : Prop :=
  ∀ n, P10878590975490919629.a n = A097280 n

end A097280

/-! ## A097280.P11070235450021539862

`A055389(n+2)+3`
-/

namespace A097280.P11070235450021539862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (n + 2) + 3

end

end A097280.P11070235450021539862

namespace A097280

/-- `A055389(n+2)+3` -/
def P11070235450021539862.Spec : Prop :=
  ∀ n, P11070235450021539862.a n = A097280 n

end A097280

/-! ## A097280.P10245749629155529387

`A128588(n+2)+3`
-/

namespace A097280.P10245749629155529387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128588 (n + 2) + 3

end

end A097280.P10245749629155529387

namespace A097280

/-- `A128588(n+2)+3` -/
def P10245749629155529387.Spec : Prop :=
  ∀ n, P10245749629155529387.a n = A097280 n

end A097280

/-! ## A097280.P11527097221812312293

`A006355(n+3)+3`
-/

namespace A097280.P11527097221812312293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006355 (n + 3) + 3

end

end A097280.P11527097221812312293

namespace A097280

/-- `A006355(n+3)+3` -/
def P11527097221812312293.Spec : Prop :=
  ∀ n, P11527097221812312293.a n = A097280 n

end A097280

/-! ## A097280.P16666918870089824588

`A118658(n+3)+3`
-/

namespace A097280.P16666918870089824588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 3) + 3

end

end A097280.P16666918870089824588

namespace A097280

/-- `A118658(n+3)+3` -/
def P16666918870089824588.Spec : Prop :=
  ∀ n, P16666918870089824588.a n = A097280 n

end A097280

/-! ## A097280.P6526741511875039819

`A019274(n+2)+5`
-/

namespace A097280.P6526741511875039819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019274 (n + 2) + 5

end

end A097280.P6526741511875039819

namespace A097280

/-- `A019274(n+2)+5` -/
def P6526741511875039819.Spec : Prop :=
  ∀ n, P6526741511875039819.a n = A097280 n

end A097280

/-! ## A097280.P1174216312897118780

`A131269(n)+4+n`
-/

namespace A097280.P1174216312897118780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131269 n + 4 + (n : ℤ)

end

end A097280.P1174216312897118780

namespace A097280

/-- `A131269(n)+4+n` -/
def P1174216312897118780.Spec : Prop :=
  ∀ n, P1174216312897118780.a n = A097280 n

end A097280

/-! ## A097280.P4931270111312349843

`A104161(n)+5+n`
-/

namespace A097280.P4931270111312349843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104161 n + 5 + (n : ℤ)

end

end A097280.P4931270111312349843

namespace A097280

/-- `A104161(n)+5+n` -/
def P4931270111312349843.Spec : Prop :=
  ∀ n, P4931270111312349843.a n = A097280 n

end A097280

/-! ## A097280.P2186509727349966381

`∑[2*A000045(n)]+5`
-/

namespace A097280.P2186509727349966381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 5

end

end A097280.P2186509727349966381

namespace A097280

/-- `∑[2*A000045(n)]+5` -/
def P2186509727349966381.Spec : Prop :=
  ∀ n, P2186509727349966381.a n = A097280 n

end A097280

/-!
# A097281: Integer part of the area of integer triangle [A001611(n), A001611(n+1), A001611(n+2)].

The programs for A097281, there is no canonical definition to state claims against.
-/

/-! ## A097281.P12898052456826050381

`A018089(n)-A005041(A159769(n+1))`
-/

namespace A097281.P12898052456826050381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018089 n - A005041 (A159769 (n + 1)).toNat

end

end A097281.P12898052456826050381

/-! ## A097281.P17243455497208788780

`A018089(n)-A005041(A159770(n+1))`
-/

namespace A097281.P17243455497208788780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018089 n - A005041 (A159770 (n + 1)).toNat

end

end A097281.P17243455497208788780

/-! ## A097281.P6635657406793769898

`A265745(A139818(n))+A094687(n)`
-/

namespace A097281.P6635657406793769898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265745 (A139818 n).toNat + A094687 n

end

end A097281.P6635657406793769898

/-! ## A097281.P6864976797497409127

`xor(A001650(A033321(n)), A343088(n))`
-/

namespace A097281.P6864976797497409127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001650 (A033321 n).toNat) (A343088 n)

end

end A097281.P6864976797497409127

/-! ## A097281.P13905763767200720298

`A027434(A062810(n+1))-A027434(n+1)`
-/

namespace A097281.P13905763767200720298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A062810 (n + 1)).toNat - A027434 (n + 1)

end

end A097281.P13905763767200720298

/-!
# A097282: Numbers k that are the hypotenuse of exactly 40 distinct integer-sided right triangles, i.e., k^2 can be written as a sum of two squares in 40 ways.

The programs for A097282, there is no canonical definition to state claims against.
-/

/-! ## A097282.P8761453286816190124

`A097626(A032555(n+1))/5`
-/

namespace A097282.P8761453286816190124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097626 (A032555 (n + 1)).toNat : ℚ) / 5

end

end A097282.P8761453286816190124

/-! ## A097282.P4077180577243831226

`∏{p}[A097626(A052426(n+1)), #]`
-/

namespace A097282.P4077180577243831226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097626 (A052426 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A097282.P4077180577243831226

/-! ## A097282.P15424349444377458140

`∏{p}[A097626(A134810(n+1)), #]`
-/

namespace A097282.P15424349444377458140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097626 (A134810 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A097282.P15424349444377458140

/-! ## A097282.P1225087841548943620

`∏{p}[C(A097626(n+1), A097588(n+2)), #]`
-/

namespace A097282.P1225087841548943620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A097626 (n + 1)).toNat (A097588 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), p

end

end A097282.P1225087841548943620

/-! ## A097282.P17332774636002210611

`A097626(n+1)/A066603(A261183(2*n+5))`
-/

namespace A097282.P17332774636002210611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097626 (n + 1) : ℚ) / (A066603 (A261183 (2 * n + 5)).toNat : ℚ)

end

end A097282.P17332774636002210611

/-!
# A097283: Contains exactly once every pair (i,j) satisfying 0 < i < j.

The programs for A097283, there is no canonical definition to state claims against.
-/

/-! ## A097283.P5069359201781328162

`A057058(comp[C(2*n, 2)])`
-/

namespace A097283.P5069359201781328162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A097283.P5069359201781328162

/-! ## A097283.P13499508095805085081

`A057058(comp[A000384(n)])`
-/

namespace A097283.P13499508095805085081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A097283.P13499508095805085081

/-! ## A097283.P2724400257339432120

`A057058(A183218(n+1))`
-/

namespace A097283.P2724400257339432120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (A183218 (n + 1)).toNat

end

end A097283.P2724400257339432120

/-! ## A097283.P18211570028342175144

`A057058(comp[A000217(comp[2*(n+1)])])`
-/

namespace A097283.P18211570028342175144
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A097283.P18211570028342175144

/-! ## A097283.P12832476303294905324

`A057058(∪[A161680(2*n+3), A014132(n+1)])`
-/

namespace A097283.P12832476303294905324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057058 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A097283.P12832476303294905324

/-! ## A097283.P16935976255750055681

`A339399(n+1)+n%2`
-/

namespace A097283.P16935976255750055681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A097283.P16935976255750055681

/-! ## A097283.P5674212607447970581

`A339399(n+1)+A000035(n)`
-/

namespace A097283.P5674212607447970581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (n + 1) + A000035 n

end

end A097283.P5674212607447970581

/-! ## A097283.P4079198082073711496

`A372584(n)+A339399(n+1)`
-/

namespace A097283.P4079198082073711496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372584 n + A339399 (n + 1)

end

end A097283.P4079198082073711496

/-! ## A097283.P13544479103324196659

`A339399(n+1)+A000045(C(n, or(1, n)))`
-/

namespace A097283.P13544479103324196659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (n + 1) + A000045 (Nat.choose n (Nat.lor 1 n))

end

end A097283.P13544479103324196659

/-! ## A097283.P9736120918007226459

`A339399(n+1)+A001222(2-(-1)^n)`
-/

namespace A097283.P9736120918007226459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (n + 1) + A001222 (2 - (-1) ^ n).toNat

end

end A097283.P9736120918007226459

/-!
# A097284: Rectangular array T by antidiagonals: T(n,k) = rank of k-th n in A097283.

The programs for A097284, there is no canonical definition to state claims against.
-/

/-! ## A097284.P17628236259404150475

`A376182(A194901(n+1))`
-/

namespace A097284.P17628236259404150475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376182 (A194901 (n + 1)).toNat

end

end A097284.P17628236259404150475

/-! ## A097284.P12567919532149833084

`A280864(n+2)-A100936(∑[n])`
-/

namespace A097284.P12567919532149833084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280864 (n + 2) - A100936 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097284.P12567919532149833084

/-! ## A097284.P16453909678751394257

`∑[A338359(n+1)]%A338374(n+1)`
-/

namespace A097284.P16453909678751394257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A338374 (n + 1))

end

end A097284.P16453909678751394257

/-! ## A097284.P6716849987705338933

`∑[A338359(and(1, A060066(n+1))+n)]`
-/

namespace A097284.P6716849987705338933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338359 (Int.land 1 (A060066 (n + 1)) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097284.P6716849987705338933

/-! ## A097284.P8893946203403889249

`or(∑[A338359(n+1)], A338353(3*n))`
-/

namespace A097284.P8893946203403889249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A338353 (3 * n))

end

end A097284.P8893946203403889249

/-!
# A097285: Contains exactly once every pair (i,j) of distinct positive integers.

The programs for A097285, there is no canonical definition to state claims against.
-/

/-! ## A097285.P11179819929114412398

`A349520(n+1)+n%2`
-/

namespace A097285.P11179819929114412398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (n + 1) + ((n % 2 : ℕ) : ℤ)

end

end A097285.P11179819929114412398

/-! ## A097285.P9266081030148442549

`A349520(n+1)+A000035(n)`
-/

namespace A097285.P9266081030148442549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (n + 1) + A000035 n

end

end A097285.P9266081030148442549

/-! ## A097285.P17886179187994280510

`A349520(n+1)+A188510(n)²`
-/

namespace A097285.P17886179187994280510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (n + 1) + A188510 n ^ 2

end

end A097285.P17886179187994280510

/-! ## A097285.P10817296463726653475

`A349520(n+1)+char[A093178(n)]`
-/

namespace A097285.P10817296463726653475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093178 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A097285.P10817296463726653475

/-! ## A097285.P1743308451641373927

`A349520(n+1)+char[A109613(n)]`
-/

namespace A097285.P1743308451641373927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A097285.P1743308451641373927

/-! ## A097285.P8844529758291349133

`A226005(A000037(n+1)-1)+1`
-/

namespace A097285.P8844529758291349133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (A000037 (n + 1) - 1).toNat + 1

end

end A097285.P8844529758291349133

/-! ## A097285.P17594172919487003852

`A226005(A259361(n)+1+n)+1`
-/

namespace A097285.P17594172919487003852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (A259361 n + 1 + (n : ℤ)).toNat + 1

end

end A097285.P17594172919487003852

/-! ## A097285.P14244292433325470840

`A226005(lt[acot(1), A226005(n+1)])+1`
-/

namespace A097285.P14244292433325470840
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n) + 1

end

end A097285.P14244292433325470840

/-! ## A097285.P4229499846834418844

`A226005(eq[1, A010052(n+1)+1])+1`
-/

namespace A097285.P4229499846834418844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + 1

end

end A097285.P4229499846834418844

/-! ## A097285.P13821146150925586179

`A000120(eq[1, A037800(n+1)+A037800(n)])`
-/

namespace A097285.P13821146150925586179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (n + 1) + A037800 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097285.P13821146150925586179

/-! ## A097285.P94942527062836949

`A000120(eq[5, A005811(n+1)+A005811(n)])`
-/

namespace A097285.P94942527062836949
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (n + 1) + A005811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A097285.P94942527062836949

/-! ## A097285.P4522842743516689115

`A138036(xor(1, n))+1`
-/

namespace A097285.P4522842743516689115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 (Nat.xor 1 n) + 1

end

end A097285.P4522842743516689115

/-! ## A097285.P5977937294694724624

`A138036(A014681(n+1)-1)+1`
-/

namespace A097285.P5977937294694724624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 (A014681 (n + 1) - 1).toNat + 1

end

end A097285.P5977937294694724624

/-! ## A097285.P7082503607754799260

`A138036(Δ[A000194(n+1)])+A138036(n+1)`
-/

namespace A097285.P7082503607754799260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138036 (f1 (n + 1) - f1 n).toNat + A138036 (n + 1)

end

end A097285.P7082503607754799260

/-! ## A097285.P7865376342060767200

`A329949(comp[n²-1])`
-/

namespace A097285.P7865376342060767200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A097285.P7865376342060767200

/-! ## A097285.P7209511626412124024

`A329949(A183299(n+1))*A329949(A329949(n+1)²)`
-/

namespace A097285.P7209511626412124024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329949 (A183299 (n + 1)).toNat * A329949 (A329949 (n + 1) ^ 2).toNat

end

end A097285.P7209511626412124024

/-! ## A097285.P9505734881028495940

`A349520(n+1)+A188510(n²)`
-/

namespace A097285.P9505734881028495940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (n + 1) + A188510 (n ^ 2)

end

end A097285.P9505734881028495940

/-! ## A097285.P14644894991794033345

`A349520(n+1)+A057979(A057979(n²))`
-/

namespace A097285.P14644894991794033345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (n + 1) + A057979 (A057979 (n ^ 2)).toNat

end

end A097285.P14644894991794033345

/-!
# A097286: Rectangular array T by descending antidiagonals: T(n,k) = rank of k-th n in A097285.

The programs for A097286, there is no canonical definition to state claims against.
-/

/-! ## A097286.P5292710780300852220

`A194011(A064578(n+1))`
-/

namespace A097286.P5292710780300852220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194011 (A064578 (n + 1)).toNat

end

end A097286.P5292710780300852220

/-!
# A097289: Contains exactly once every pair (i,j) satisfying 0 < i <= j.

The programs for A097289, there is no canonical definition to state claims against.
-/

/-! ## A097289.P16091200258517490473

`p?[A109613(A064225(n))]%A102515(n)`
-/

namespace A097289.P16091200258517490473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A064225 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A102515 n)

end

end A097289.P16091200258517490473

/-! ## A097289.P14366933641495370950

`A316715(A112471(n))`
-/

namespace A097289.P14366933641495370950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316715 (A112471 n).toNat

end

end A097289.P14366933641495370950

/-!
# A097291: Contains exactly once every pair (i,j) of positive integers.

The programs for A097291, there is no canonical definition to state claims against.
-/

/-! ## A097291.P14212543867074182747

`A349526(A266298(n)+n)`
-/

namespace A097291.P14212543867074182747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349526 (A266298 n + (n : ℤ)).toNat

end

end A097291.P14212543867074182747

/-! ## A097291.P16478192790327979139

`xor(A025465(A003242(n)), A269501(n))`
-/

namespace A097291.P16478192790327979139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025465 (A003242 n).toNat) (A269501 n)

end

end A097291.P16478192790327979139

/-! ## A097291.P5936015351327927850

`xor(A305615(n)+1, A025465(A003242(n)))`
-/

namespace A097291.P5936015351327927850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A305615 n + 1) (A025465 (A003242 n).toNat)

end

end A097291.P5936015351327927850

/-! ## A097291.P1405842004370253592

`A055642(A194946(n+1))-A152140(3*n+4)`
-/

namespace A097291.P1405842004370253592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (A194946 (n + 1)).toNat - A152140 (3 * n + 4)

end

end A097291.P1405842004370253592

/-! ## A097291.P7287261199509364948

`A160093(A007089(A261154(n)+A233275(n)))`
-/

namespace A097291.P7287261199509364948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (A007089 (A261154 n + A233275 n).toNat).toNat

end

end A097291.P7287261199509364948

/-!
# A097292: Rectangular array T, by antidiagonals: T(n,k) = rank of n in A097291 at which the pair (n,k) occurs.

The programs for A097292, there is no canonical definition to state claims against.
-/

/-! ## A097292.P4790769330679222255

`A269780(n+1)-A082858(A173887(n))`
-/

namespace A097292.P4790769330679222255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269780 (n + 1) - A082858 (A173887 n).toNat

end

end A097292.P4790769330679222255

/-! ## A097292.P12322906062260243281

`A316323(n)+1-A082858(A173887(n))`
-/

namespace A097292.P12322906062260243281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316323 n + (1 - A082858 (A173887 n).toNat)

end

end A097292.P12322906062260243281

/-! ## A097292.P13586322177524739425

`A008619(2*A316323(n))-A082858(A173887(n))`
-/

namespace A097292.P13586322177524739425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A316323 n).toNat - A082858 (A173887 n).toNat

end

end A097292.P13586322177524739425

/-! ## A097292.P2469346658479872585

`A028242(2*A316323(n))-A082858(A173887(n))`
-/

namespace A097292.P2469346658479872585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A316323 n).toNat - A082858 (A173887 n).toNat

end

end A097292.P2469346658479872585

/-! ## A097292.P1692148698612890573

`A029579(2*A316323(n))-A082858(A173887(n))`
-/

namespace A097292.P1692148698612890573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (2 * A316323 n).toNat - A082858 (A173887 n).toNat

end

end A097292.P1692148698612890573

/-!
# A097293: Contains exactly once every triple i,j,k such that 0<i<j<k.

The programs for A097293, there is no canonical definition to state claims against.
-/

/-! ## A097293.P5142816959434319038

`A097294(A113655(n+1))`
-/

namespace A097293.P5142816959434319038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097294 (A113655 (n + 1)).toNat

end

end A097293.P5142816959434319038

/-! ## A097293.P15103753625669475326

`A097294(A330396(n)+1)`
-/

namespace A097293.P15103753625669475326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097294 (A330396 n + 1).toNat

end

end A097293.P15103753625669475326

/-! ## A097293.P18210302648538342955

`A214065(A214055(n+1)^A214018(n+2))`
-/

namespace A097293.P18210302648538342955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214065 (SequenceMachineLib.roundAway ((A214055 (n + 1) : ℚ) ^ (A214018 (n + 2) : ℤ))).toNat

end

end A097293.P18210302648538342955

/-! ## A097293.P8397818962711050099

`A159684(A134141(n+2))+A046079(2*n+5)`
-/

namespace A097293.P8397818962711050099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159684 (A134141 (n + 2)).toNat + A046079 (2 * n + 5)

end

end A097293.P8397818962711050099

/-! ## A097293.P14894339197558801462

`A161506(A273180(n+1))`
-/

namespace A097293.P14894339197558801462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161506 (A273180 (n + 1)).toNat

end

end A097293.P14894339197558801462

/-!
# A097294: Contains exactly once every triple i,j,k such that i>j>k>0.

The programs for A097294, there is no canonical definition to state claims against.
-/

/-! ## A097294.P568448222171083656

`A097293(A113655(n+1))`
-/

namespace A097294.P568448222171083656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097293 (A113655 (n + 1)).toNat

end

end A097294.P568448222171083656

/-! ## A097294.P14378969100161105692

`A097293(A330396(n)+1)`
-/

namespace A097294.P14378969100161105692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097293 (A330396 n + 1).toNat

end

end A097294.P14378969100161105692

/-!
# A097295: Length of longest non-overlapping repeated subword of n in binary representation.

The programs for A097295, there is no canonical definition to state claims against.
-/

/-! ## A097295.P3854697256729446243

`A325622(A118106(n+1))%A324374(n)`
-/

namespace A097295.P3854697256729446243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A325622 (A118106 (n + 1)).toNat) (A324374 n)

end

end A097295.P3854697256729446243

/-! ## A097295.P672941336528689612

`A115722(A359902(3*n+5)+A194189(n+1))`
-/

namespace A097295.P672941336528689612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115722 (A359902 (3 * n + 5) + A194189 (n + 1)).toNat

end

end A097295.P672941336528689612

/-! ## A097295.P6713856088865861829

`A322811(A326066(n+1)^A322811(2*n+1))`
-/

namespace A097295.P6713856088865861829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322811 (SequenceMachineLib.roundAway ((A326066 (n + 1) : ℚ) ^ (A322811 (2 * n + 1) : ℤ))).toNat

end

end A097295.P6713856088865861829

/-! ## A097295.P4433726378490654700

`A001221(∏{d}[A117494(2*(n+1)), #])`
-/

namespace A097295.P4433726378490654700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117494 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (∏ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A097295.P4433726378490654700

/-! ## A097295.P1640986268531488638

`A323271(A103997(n))%A082863(n+2)`
-/

namespace A097295.P1640986268531488638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323271 (A103997 n).toNat) (A082863 (n + 2))

end

end A097295.P1640986268531488638

/-!
# A097296: Numbers k such that A001055(k) divides k.

The programs for A097296, there is no canonical definition to state claims against.
-/

/-! ## A097296.P17087382292521386812

`eq[0, (n+1)%A001055(n+1)]+1`
-/

namespace A097296.P17087382292521386812
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A001055 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A097296.P17087382292521386812

/-! ## A097296.P4055494609659501894

`lt[A000027(n+1)%A001055(n+1), 1]+1`
-/

namespace A097296.P4055494609659501894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000027 (n + 1)) (A001055 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A097296.P4055494609659501894

/-! ## A097296.P367783436430104822

`record[A127446(A001055(n+1)+A000217(n))]`
-/

namespace A097296.P367783436430104822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127446 (A001055 (n + 1) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A097296.P367783436430104822

/-! ## A097296.P4754222372151467553

`lt[A117825(n+1), A144224(A340848(n+1))]`
-/

namespace A097296.P4754222372151467553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117825 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144224 (A340848 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A097296.P4754222372151467553

/-!
# A097297: Seventh column (m=6) of (1,6)-Pascal triangle A096956.

The programs for A097297, the canonical program `A097297.P12617719013524487377` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097297 has offset 0).

The definition of A097297 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097297.P12617719013524487377

`(n+36)*C(n+5, 5)/6`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A097297

/-- `(n+36)*C(n+5, 5)/6` -/
def P12617719013524487377.Spec : Prop :=
  ∀ n, P12617719013524487377.a n = (A097297 n : ℚ)

end A097297

/-! ## A097297.P2917165817855638370

`ogf((6-5x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A097297.P2917165817855638370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -5] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A097297.P2917165817855638370

namespace A097297

/-- `ogf((6-5x)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P2917165817855638370.Spec : Prop :=
  ∀ n, P2917165817855638370.a n = A097297 n

end A097297

/-! ## A097297.P9174408088531733857

`∑[∑[∑[∑[∑[6+n]]]]]`
-/

namespace A097297.P9174408088531733857
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 + n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097297.P9174408088531733857

namespace A097297

/-- `∑[∑[∑[∑[∑[6+n]]]]]` -/
def P9174408088531733857.Spec : Prop :=
  ∀ n, (P9174408088531733857.a n : ℤ) = A097297 n

end A097297

/-! ## A097297.P11020281744721116744

`root(∑[A096959(n)], 2)²`
-/

namespace A097297.P11020281744721116744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096959 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A097297.P11020281744721116744

namespace A097297

/-- `root(∑[A096959(n)], 2)²` -/
def P11020281744721116744.Spec : Prop :=
  ∀ n, P11020281744721116744.a n = (A097297 n : ℝ)

end A097297

/-! ## A097297.P13391371531788838732

`or(∑[A096959(n)], A000038(n))`
-/

namespace A097297.P13391371531788838732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000038 n)

end

end A097297.P13391371531788838732

namespace A097297

/-- `or(∑[A096959(n)], A000038(n))` -/
def P13391371531788838732.Spec : Prop :=
  ∀ n, P13391371531788838732.a n = A097297 n

end A097297

/-! ## A097297.P6080107896084905214

`A097298(n+1)-(A097298(n)+A096959(n+1))`
-/

namespace A097297.P6080107896084905214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097298 (n + 1) - (A097298 n + A096959 (n + 1))

end

end A097297.P6080107896084905214

namespace A097297

/-- `A097298(n+1)-(A097298(n)+A096959(n+1))` -/
def P6080107896084905214.Spec : Prop :=
  ∀ n, P6080107896084905214.a n = A097297 n

end A097297

/-! ## A097297.P10188373568892938672

`A253942(n+4)+A095662(n)`
-/

namespace A097297.P10188373568892938672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253942 (n + 4) + A095662 n

end

end A097297.P10188373568892938672

namespace A097297

/-- `A253942(n+4)+A095662(n)` -/
def P10188373568892938672.Spec : Prop :=
  ∀ n, P10188373568892938672.a n = A097297 n

end A097297

/-! ## A097297.P536009037779661702

`∑[A096959(n)]*A000034(2*n)`
-/

namespace A097297.P536009037779661702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000034 (2 * n)

end

end A097297.P536009037779661702

namespace A097297

/-- `∑[A096959(n)]*A000034(2*n)` -/
def P536009037779661702.Spec : Prop :=
  ∀ n, P536009037779661702.a n = A097297 n

end A097297

/-! ## A097297.P10173296773054738878

`lcm(A000035(2*n)-1, ∑[A096959(n)])`
-/

namespace A097297.P10173296773054738878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096959 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000035 (2 * n) - 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097297.P10173296773054738878

namespace A097297

/-- `lcm(A000035(2*n)-1, ∑[A096959(n)])` -/
def P10173296773054738878.Spec : Prop :=
  ∀ n, (P10173296773054738878.a n : ℤ) = A097297 n

end A097297

/-! ## A097297.P6032927219613894776

`A007318(A000217(n))*∑[A096959(n)]`
-/

namespace A097297.P6032927219613894776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096959 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097297.P6032927219613894776

namespace A097297

/-- `A007318(A000217(n))*∑[A096959(n)]` -/
def P6032927219613894776.Spec : Prop :=
  ∀ n, P6032927219613894776.a n = A097297 n

end A097297

/-! ## A097297.P17731327591247287026

`A093563(A000217(n+7)-7)`
-/

namespace A097297.P17731327591247287026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A000217 (n + 7) - 7).toNat

end

end A097297.P17731327591247287026

namespace A097297

/-- `A093563(A000217(n+7)-7)` -/
def P17731327591247287026.Spec : Prop :=
  ∀ n, P17731327591247287026.a n = A097297 n

end A097297

/-! ## A097297.P5593446014219595504

`A093563(Δ[A101853(n+2)]+2)`
-/

namespace A097297.P5593446014219595504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (f1 (n + 1) - f1 n + 2).toNat

end

end A097297.P5593446014219595504

namespace A097297

/-- `A093563(Δ[A101853(n+2)]+2)` -/
def P5593446014219595504.Spec : Prop :=
  ∀ n, P5593446014219595504.a n = A097297 n

end A097297

/-! ## A097297.P15278619868415259827

`A093563(2*n+Δ[A264443(n)]+10)`
-/

namespace A097297.P15278619868415259827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 ((2 * n : ℤ) + (f1 (n + 1) - f1 n + 10)).toNat

end

end A097297.P15278619868415259827

namespace A097297

/-- `A093563(2*n+Δ[A264443(n)]+10)` -/
def P15278619868415259827.Spec : Prop :=
  ∀ n, P15278619868415259827.a n = A097297 n

end A097297

/-! ## A097297.P8193288507177301468

`A093563(Δ[n²]+A167614(n+4)+2)`
-/

namespace A097297.P8193288507177301468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (A167614 (n + 4) + 2)).toNat

end

end A097297.P8193288507177301468

namespace A097297

/-- `A093563(Δ[n²]+A167614(n+4)+2)` -/
def P8193288507177301468.Spec : Prop :=
  ∀ n, P8193288507177301468.a n = A097297 n

end A097297

/-!
# A097298: Eighth column (m=7) of (1,6)-Pascal triangle A096956.

The programs for A097298, the canonical program `A097298.P3802219283919572783` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097298 has offset 0).

The definition of A097298 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097298.P3802219283919572783

`(n+42)*C(n+6, 6)/7`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A097298

/-- `(n+42)*C(n+6, 6)/7` -/
def P3802219283919572783.Spec : Prop :=
  ∀ n, P3802219283919572783.a n = (A097298 n : ℚ)

end A097298

/-! ## A097298.P15625437300821442425

`ogf((6-5x)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A097298.P15625437300821442425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, -5] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A097298.P15625437300821442425

namespace A097298

/-- `ogf((6-5x)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P15625437300821442425.Spec : Prop :=
  ∀ n, P15625437300821442425.a n = A097298 n

end A097298

/-! ## A097298.P14039634534083288847

`∑[∑[∑[∑[∑[∑[6+n]]]]]]`
-/

namespace A097298.P14039634534083288847
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 + n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097298.P14039634534083288847

namespace A097298

/-- `∑[∑[∑[∑[∑[∑[6+n]]]]]]` -/
def P14039634534083288847.Spec : Prop :=
  ∀ n, (P14039634534083288847.a n : ℤ) = A097298 n

end A097298

/-! ## A097298.P17162058539603792296

`root(∑[∑[A096959(n)]]², 2)`
-/

namespace A097298.P17162058539603792296
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096959 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℝ) ^ (1 / (2 : ℝ))

end

end A097298.P17162058539603792296

namespace A097298

/-- `root(∑[∑[A096959(n)]]², 2)` -/
def P17162058539603792296.Spec : Prop :=
  ∀ n, P17162058539603792296.a n = (A097298 n : ℝ)

end A097298

/-! ## A097298.P14873867135047560847

`A097297(n)+a(n-1)` with `a(0)=6`
-/

namespace A097298.P14873867135047560847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A097297 n + a (n - 1)

end

end A097298.P14873867135047560847

namespace A097298

/-- `A097297(n)+a(n-1)` -/
def P14873867135047560847.Spec : Prop :=
  ∀ n, P14873867135047560847.a n = A097298 n

end A097298

/-! ## A097298.P6690761031092653993

`lcm(∑[A097297(n)], A087960(n))`
-/

namespace A097298.P6690761031092653993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097297 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A087960 n)

end

end A097298.P6690761031092653993

namespace A097298

/-- `lcm(∑[A097297(n)], A087960(n))` -/
def P6690761031092653993.Spec : Prop :=
  ∀ n, (P6690761031092653993.a n : ℤ) = A097298 n

end A097298

/-! ## A097298.P15651217187205252343

`2*A096945(n)-A095670(n)`
-/

namespace A097298.P15651217187205252343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096945 n - A095670 n

end

end A097298.P15651217187205252343

namespace A097298

/-- `2*A096945(n)-A095670(n)` -/
def P15651217187205252343.Spec : Prop :=
  ∀ n, P15651217187205252343.a n = A097298 n

end A097298

/-! ## A097298.P637487324080514345

`A253943(n+5)+A095663(n)`
-/

namespace A097298.P637487324080514345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253943 (n + 5) + A095663 n

end

end A097298.P637487324080514345

namespace A097298

/-- `A253943(n+5)+A095663(n)` -/
def P637487324080514345.Spec : Prop :=
  ∀ n, P637487324080514345.a n = A097298 n

end A097298

/-! ## A097298.P4907742084619681793

`A257201(n+1)+A027765(n+4)`
-/

namespace A097298.P4907742084619681793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257201 (n + 1) + A027765 (n + 4)

end

end A097298.P4907742084619681793

namespace A097298

/-- `A257201(n+1)+A027765(n+4)` -/
def P4907742084619681793.Spec : Prop :=
  ∀ n, P4907742084619681793.a n = A097298 n

end A097298

/-! ## A097298.P16410137043285420030

`A095663(n)+A095670(n)-A000580(n+7)`
-/

namespace A097298.P16410137043285420030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095663 n + (A095670 n - A000580 (n + 7))

end

end A097298.P16410137043285420030

namespace A097298

/-- `A095663(n)+A095670(n)-A000580(n+7)` -/
def P16410137043285420030.Spec : Prop :=
  ∀ n, P16410137043285420030.a n = A097298 n

end A097298

/-! ## A097298.P1708999024094699354

`A097299(n+1)-(A097299(n)+A097297(n+1))`
-/

namespace A097298.P1708999024094699354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097299 (n + 1) - (A097299 n + A097297 (n + 1))

end

end A097298.P1708999024094699354

namespace A097298

/-- `A097299(n+1)-(A097299(n)+A097297(n+1))` -/
def P1708999024094699354.Spec : Prop :=
  ∀ n, P1708999024094699354.a n = A097298 n

end A097298

/-! ## A097298.P1272411230598090748

`A095663(n)+∑[A253942(n+4)]`
-/

namespace A097298.P1272411230598090748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253942 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095663 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097298.P1272411230598090748

namespace A097298

/-- `A095663(n)+∑[A253942(n+4)]` -/
def P1272411230598090748.Spec : Prop :=
  ∀ n, P1272411230598090748.a n = A097298 n

end A097298

/-! ## A097298.P10381798488100527191

`A093563(A000217(n+8)-8)`
-/

namespace A097298.P10381798488100527191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A000217 (n + 8) - 8).toNat

end

end A097298.P10381798488100527191

namespace A097298

/-- `A093563(A000217(n+8)-8)` -/
def P10381798488100527191.Spec : Prop :=
  ∀ n, P10381798488100527191.a n = A097298 n

end A097298

/-! ## A097298.P17564991250040901787

`A093563(A000124(n+7)+n-1)`
-/

namespace A097298.P17564991250040901787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A000124 (n + 7) + ((n : ℤ) - 1)).toNat

end

end A097298.P17564991250040901787

namespace A097298

/-- `A093563(A000124(n+7)+n-1)` -/
def P17564991250040901787.Spec : Prop :=
  ∀ n, P17564991250040901787.a n = A097298 n

end A097298

/-! ## A097298.P10681817361811685911

`A093563(A167487(n+5)+2*n)`
-/

namespace A097298.P10681817361811685911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (A167487 (n + 5) + (2 * n : ℤ)).toNat

end

end A097298.P10681817361811685911

namespace A097298

/-- `A093563(A167487(n+5)+2*n)` -/
def P10681817361811685911.Spec : Prop :=
  ∀ n, P10681817361811685911.a n = A097298 n

end A097298

/-! ## A097298.P5287011516246354425

`A093563(2*n+A166136(n+5)+1)`
-/

namespace A097298.P5287011516246354425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 ((2 * n : ℤ) + (A166136 (n + 5) + 1)).toNat

end

end A097298.P5287011516246354425

namespace A097298

/-- `A093563(2*n+A166136(n+5)+1)` -/
def P5287011516246354425.Spec : Prop :=
  ∀ n, P5287011516246354425.a n = A097298 n

end A097298

/-!
# A097299: Ninth column (m=8) of (1,6)-Pascal triangle A096956.

The programs for A097299, the canonical program `A097299.P2290898179135095987` is in `Seq.B000.C016`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A097299 has offset 0).

The definition of A097299 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A097299.P2290898179135095987

`(n+48)*C(n+7, 7)/8`

The canonical program, it is in `Seq.B000.C016`.
-/

namespace A097299

/-- `(n+48)*C(n+7, 7)/8` -/
def P2290898179135095987.Spec : Prop :=
  ∀ n, P2290898179135095987.a n = (A097299 n : ℚ)

end A097299

/-! ## A097299.P5102729888030222150

`∑[∑[∑[∑[∑[∑[∑[6+n]]]]]]]`
-/

namespace A097299.P5102729888030222150
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 + n

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A097299.P5102729888030222150

namespace A097299

/-- `∑[∑[∑[∑[∑[∑[∑[6+n]]]]]]]` -/
def P5102729888030222150.Spec : Prop :=
  ∀ n, (P5102729888030222150.a n : ℤ) = A097299 n

end A097299

/-! ## A097299.P677996496683314003

`2*∑[A097298(n)/2]`
-/

namespace A097299.P677996496683314003
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097298 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A097299.P677996496683314003

namespace A097299

/-- `2*∑[A097298(n)/2]` -/
def P677996496683314003.Spec : Prop :=
  ∀ n, P677996496683314003.a n = (A097299 n : ℚ)

end A097299

/-! ## A097299.P7266474056728763354

`2*A096946(n)-A095671(n)`
-/

namespace A097299.P7266474056728763354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A096946 n - A095671 n

end

end A097299.P7266474056728763354

namespace A097299

/-- `2*A096946(n)-A095671(n)` -/
def P7266474056728763354.Spec : Prop :=
  ∀ n, P7266474056728763354.a n = A097299 n

end A097299

/-! ## A097299.P5321926959643295049

`A253944(n+6)+A095664(n)`
-/

namespace A097299.P5321926959643295049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253944 (n + 6) + A095664 n

end

end A097299.P5321926959643295049

namespace A097299

/-- `A253944(n+6)+A095664(n)` -/
def P5321926959643295049.Spec : Prop :=
  ∀ n, P5321926959643295049.a n = A097299 n

end A097299

/-! ## A097299.P8082691817041359373

`A096946(n)+A000580(n+7)`
-/

namespace A097299.P8082691817041359373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096946 n + A000580 (n + 7)

end

end A097299.P8082691817041359373

namespace A097299

/-- `A096946(n)+A000580(n+7)` -/
def P8082691817041359373.Spec : Prop :=
  ∀ n, P8082691817041359373.a n = A097299 n

end A097299

/-! ## A097299.P6202061357821163819

`A095671(n)+2*A000580(n+7)`
-/

namespace A097299.P6202061357821163819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095671 n + 2 * A000580 (n + 7)

end

end A097299.P6202061357821163819

namespace A097299

/-- `A095671(n)+2*A000580(n+7)` -/
def P6202061357821163819.Spec : Prop :=
  ∀ n, P6202061357821163819.a n = A097299 n

end A097299

/-! ## A097299.P2057854949175897114

`A000581(n+8)+5*A000580(n+7)`
-/

namespace A097299.P2057854949175897114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 8) + 5 * A000580 (n + 7)

end

end A097299.P2057854949175897114

namespace A097299

/-- `A000581(n+8)+5*A000580(n+7)` -/
def P2057854949175897114.Spec : Prop :=
  ∀ n, P2057854949175897114.a n = A097299 n

end A097299

/-! ## A097299.P18136827470559456382

`A097300(n+1)-(A097300(n)+A097298(n+1))`
-/

namespace A097299.P18136827470559456382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097300 (n + 1) - (A097300 n + A097298 (n + 1))

end

end A097299.P18136827470559456382

namespace A097299

/-- `A097300(n+1)-(A097300(n)+A097298(n+1))` -/
def P18136827470559456382.Spec : Prop :=
  ∀ n, P18136827470559456382.a n = A097299 n

end A097299

/-! ## A097299.P9716801365705627180

`A253947(n+6)+A000581(n+8)-A000580(n+7)`
-/

namespace A097299.P9716801365705627180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253947 (n + 6) + (A000581 (n + 8) - A000580 (n + 7))

end

end A097299.P9716801365705627180

namespace A097299

/-- `A253947(n+6)+A000581(n+8)-A000580(n+7)` -/
def P9716801365705627180.Spec : Prop :=
  ∀ n, P9716801365705627180.a n = A097299 n

end A097299

/-! ## A097299.P11208233341593046657

`∑[A097298(n)]*A002828((n+2)²)`
-/

namespace A097299.P11208233341593046657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097298 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A002828 ((n + 2) ^ 2)

end

end A097299.P11208233341593046657

namespace A097299

/-- `∑[A097298(n)]*A002828((n+2)²)` -/
def P11208233341593046657.Spec : Prop :=
  ∀ n, P11208233341593046657.a n = A097299 n

end A097299

/-! ## A097299.P9281672395788190075

`A093563(Δ[A101853(n+4)])`
-/

namespace A097299.P9281672395788190075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101853 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093563 (f1 (n + 1) - f1 n).toNat

end

end A097299.P9281672395788190075

namespace A097299

/-- `A093563(Δ[A101853(n+4)])` -/
def P9281672395788190075.Spec : Prop :=
  ∀ n, P9281672395788190075.a n = A097299 n

end A097299

/-! ## A097299.P10731877146565949353

`∑[A097298(n)]%Δ[A011557(n)]`
-/

namespace A097299.P10731877146565949353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097298 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (f2 (n + 1) - f2 n)

end

end A097299.P10731877146565949353

namespace A097299

/-- `∑[A097298(n)]%Δ[A011557(n)]` -/
def P10731877146565949353.Spec : Prop :=
  ∀ n, P10731877146565949353.a n = A097299 n

end A097299

