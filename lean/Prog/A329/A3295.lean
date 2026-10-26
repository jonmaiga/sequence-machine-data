import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C011
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B006.C000
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
# A329501: Array read by upward antidiagonals: row n = coordination sequence for cylinder formed by rolling up a strip of width n squares cut from the square grid by cuts parallel to grid lines.

The programs for A329501, there is no canonical definition to state claims against.
-/

/-! ## A329501.P5814067893218681341

`A056170(A049853(n))+A000005(A124927(n))`
-/

namespace A329501.P5814067893218681341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056170 (A049853 n).toNat + A000005 (A124927 n).toNat

end

end A329501.P5814067893218681341

/-! ## A329501.P15424269552842800321

`A124761(A156953(n))+A000005(A124927(n))`
-/

namespace A329501.P15424269552842800321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124761 (A156953 n).toNat + A000005 (A124927 n).toNat

end

end A329501.P15424269552842800321

/-! ## A329501.P5915645676892451638

`A185238(A123349(n))+A000005(A124927(n))`
-/

namespace A329501.P5915645676892451638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185238 (A123349 n).toNat + A000005 (A124927 n).toNat

end

end A329501.P5915645676892451638

/-! ## A329501.P15309886347778967815

`A049419(2^A124927(n))`
-/

namespace A329501.P15309886347778967815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A124927 n : ℤ))).toNat

end

end A329501.P15309886347778967815

/-! ## A329501.P4322032761067906338

`A321455(2^A124927(n))`
-/

namespace A329501.P4322032761067906338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321455 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A124927 n : ℤ))).toNat

end

end A329501.P4322032761067906338

/-!
# A329502: Expansion of (1+x)*(1+2*x)/(1-x).

The programs for A329502, the canonical program `A329502.P9971117715483318080` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329502 has offset 0).

The definition of A329502 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+2x^2)/(1-x))` (program `A329502.P9971117715483318080`, by `A329502.P9971117715483318080.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329502.P9971117715483318080

`ogf((1+3x+2x^2)/(1-x))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329502

/-- `ogf((1+3x+2x^2)/(1-x))` -/
def P9971117715483318080.Spec : Prop :=
  ∀ n, P9971117715483318080.a n = A329502 n

theorem P9971117715483318080.correct : P9971117715483318080.Spec := by
  intro n
  simp only [A329502]

end A329502

/-!
# A329503: Expansion of g.f. (1+x)*(1+2*x+2*x^2)/(1-x).

The programs for A329503, the canonical program `A329503.P8667347256745540606` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329503 has offset 0).

The definition of A329503 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+4x^2+2x^3)/(1-x))` (program `A329503.P8667347256745540606`, by `A329503.P8667347256745540606.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329503.P8667347256745540606

`ogf((1+3x+4x^2+2x^3)/(1-x))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329503

/-- `ogf((1+3x+4x^2+2x^3)/(1-x))` -/
def P8667347256745540606.Spec : Prop :=
  ∀ n, P8667347256745540606.a n = A329503 n

theorem P8667347256745540606.correct : P8667347256745540606.Spec := by
  intro n
  simp only [A329503]

end A329503

/-!
# A329504: Array read by upward antidiagonals: row n = coordination sequence for cylinder formed by rolling up a strip of width n squares cut from the square grid by cuts at 45 degrees to grid lines.

The programs for A329504, there is no canonical definition to state claims against.
-/

/-! ## A329504.P14535404153365513230

`A085974(3*n+4)+A034444(A013614(n))`
-/

namespace A329504.P14535404153365513230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085974 (3 * n + 4) + A034444 (A013614 n).toNat

end

end A329504.P14535404153365513230

/-! ## A329504.P4091747423552182958

`A327538(A327631(n+1))+A327481(n+1)`
-/

namespace A329504.P4091747423552182958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327538 (A327631 (n + 1)).toNat + A327481 (n + 1)

end

end A329504.P4091747423552182958

/-! ## A329504.P10294625872438995036

`A353626(n+1)+A034444(A013618(n))`
-/

namespace A329504.P10294625872438995036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353626 (n + 1) + A034444 (A013618 n).toNat

end

end A329504.P10294625872438995036

/-! ## A329504.P7273314470229624072

`A133020(A194959(n+1)^A327622(n))`
-/

namespace A329504.P7273314470229624072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133020 (SequenceMachineLib.roundAway ((A194959 (n + 1) : ℚ) ^ (A327622 n : ℤ))).toNat

end

end A329504.P7273314470229624072

/-! ## A329504.P15945708955784723180

`A000005(A158405(n+1)^A125127(n+1))`
-/

namespace A329504.P15945708955784723180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A158405 (n + 1) : ℚ) ^ (A125127 (n + 1) : ℤ))).toNat

end

end A329504.P15945708955784723180

/-!
# A329505: Expansion of (1 + x)*(1 + 2*x - x^2) / (1 - x).

The programs for A329505, the canonical program `A329505.P4296377849157531827` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329505 has offset 0).

The definition of A329505 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+x^2-x^3)/(1-x))` (program `A329505.P4296377849157531827`, by `A329505.P4296377849157531827.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329505.P4296377849157531827

`ogf((1+3x+x^2-x^3)/(1-x))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329505

/-- `ogf((1+3x+x^2-x^3)/(1-x))` -/
def P4296377849157531827.Spec : Prop :=
  ∀ n, P4296377849157531827.a n = A329505 n

theorem P4296377849157531827.correct : P4296377849157531827.Spec := by
  intro n
  simp only [A329505]

end A329505

/-!
# A329506: Expansion of (1 + x)*(1 + 2*x + 2*x^2 - 2*x^3) / (1 - x).

The programs for A329506, the canonical program `A329506.P8206322121983837196` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329506 has offset 0).

The definition of A329506 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+4x^2-2x^4)/(1-x))` (program `A329506.P8206322121983837196`, by `A329506.P8206322121983837196.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329506.P8206322121983837196

`ogf((1+3x+4x^2-2x^4)/(1-x))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329506

/-- `ogf((1+3x+4x^2-2x^4)/(1-x))` -/
def P8206322121983837196.Spec : Prop :=
  ∀ n, P8206322121983837196.a n = A329506 n

theorem P8206322121983837196.correct : P8206322121983837196.Spec := by
  intro n
  simp only [A329506]

end A329506

/-!
# A329507: Expansion of (1 + x)*(1 + 2*x + 2*x^2 + 2*x^3 - 3*x^4) / (1 - x).

The programs for A329507, the canonical program `A329507.P5942332156786670652` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329507 has offset 0).

The definition of A329507 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+3x+4x^2+4x^3-x^4-3x^5)/(1-x))` (program `A329507.P5942332156786670652`, by `A329507.P5942332156786670652.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329507.P5942332156786670652

`ogf((1+3x+4x^2+4x^3-x^4-3x^5)/(1-x))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329507

/-- `ogf((1+3x+4x^2+4x^3-x^4-3x^5)/(1-x))` -/
def P5942332156786670652.Spec : Prop :=
  ∀ n, P5942332156786670652.a n = A329507 n

theorem P5942332156786670652.correct : P5942332156786670652.Spec := by
  intro n
  simp only [A329507]

end A329507

/-!
# A329508: Array read by upward antidiagonals: row n = coordination sequence for cylinder formed by rolling up a strip of width n hexagons cut from the hexagonal grid by cuts parallel to grid lines.

The programs for A329508, there is no canonical definition to state claims against.
-/

/-! ## A329508.P6031729920455822561

`A247588(A194980(n+1))-A332671(A004274(2*n+1))`
-/

namespace A329508.P6031729920455822561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247588 (A194980 (n + 1)).toNat - A332671 (A004274 (2 * n + 1)).toNat

end

end A329508.P6031729920455822561

/-! ## A329508.P2996578241881474118

`A002384(A194959(n+1)%A004061(n+1))`
-/

namespace A329508.P2996578241881474118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (Int.tmod (A194959 (n + 1)) (A004061 (n + 1))).toNat

end

end A329508.P2996578241881474118

/-! ## A329508.P4951978883515262887

`A002384(A194980(n+1)%A004061(n+1))`
-/

namespace A329508.P4951978883515262887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002384 (Int.tmod (A194980 (n + 1)) (A004061 (n + 1))).toNat

end

end A329508.P4951978883515262887

/-! ## A329508.P7162695949120349178

`A005097(A194959(n+1))%A051728(3*n)`
-/

namespace A329508.P7162695949120349178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005097 (A194959 (n + 1)).toNat) (A051728 (3 * n))

end

end A329508.P7162695949120349178

/-! ## A329508.P7250460982248246708

`A185284(2*n+1)+A026453(A194959(n+1))`
-/

namespace A329508.P7250460982248246708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (2 * n + 1) + A026453 (A194959 (n + 1)).toNat

end

end A329508.P7250460982248246708

/-!
# A329509: Expansion of (1 + x)*(1 + x + x^2 - x^3) / (1 - x).

The programs for A329509, the canonical program `A329509.P11921471202755228379` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329509 has offset 0).

The definition of A329509 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+2x^2-x^4)/(1-x))` (program `A329509.P11921471202755228379`, by `A329509.P11921471202755228379.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329509.P11921471202755228379

`ogf((1+2x+2x^2-x^4)/(1-x))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329509

/-- `ogf((1+2x+2x^2-x^4)/(1-x))` -/
def P11921471202755228379.Spec : Prop :=
  ∀ n, P11921471202755228379.a n = A329509 n

theorem P11921471202755228379.correct : P11921471202755228379.Spec := by
  intro n
  simp only [A329509]

end A329509

/-!
# A329510: Expansion of (1 + x)*(1 + x + x^2)*(1 + x^2 - x^3) / (1 - x).

The programs for A329510, the canonical program `A329510.P127999458802431038` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329510 has offset 0).

The definition of A329510 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2+2x^3-x^5-x^6)/(1-x))` (program `A329510.P127999458802431038`, by `A329510.P127999458802431038.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329510.P127999458802431038

`ogf((1+2x+3x^2+2x^3-x^5-x^6)/(1-x))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329510

/-- `ogf((1+2x+3x^2+2x^3-x^5-x^6)/(1-x))` -/
def P127999458802431038.Spec : Prop :=
  ∀ n, P127999458802431038.a n = A329510 n

theorem P127999458802431038.correct : P127999458802431038.Spec := by
  intro n
  simp only [A329510]

end A329510

/-!
# A329511: Expansion of (1 + x)*(1 + x^2)^2*(1 + x - x^3) / (1 - x).

The programs for A329511, the canonical program `A329511.P2599248264526748933` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329511 has offset 0).

The definition of A329511 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2+3x^3+2x^4-x^6-x^7-x^8)/(1-x))` (program `A329511.P2599248264526748933`, by `A329511.P2599248264526748933.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329511.P2599248264526748933

`ogf((1+2x+3x^2+3x^3+2x^4-x^6-x^7-x^8)/(1-x))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329511

/-- `ogf((1+2x+3x^2+3x^3+2x^4-x^6-x^7-x^8)/(1-x))` -/
def P2599248264526748933.Spec : Prop :=
  ∀ n, P2599248264526748933.a n = A329511 n

theorem P2599248264526748933.correct : P2599248264526748933.Spec := by
  intro n
  simp only [A329511]

end A329511

/-!
# A329512: Array read by upward antidiagonals: row n = coordination sequence for cylinder formed by rolling up a strip of width 2*n hexagons cut from the hexagonal grid by cuts perpendicular to grid lines.

The programs for A329512, there is no canonical definition to state claims against.
-/

/-! ## A329512.P11971443491868936329

`A123699(A000041(A195082(n+1)²))`
-/

namespace A329512.P11971443491868936329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123699 (A000041 (A195082 (n + 1) ^ 2).toNat).toNat

end

end A329512.P11971443491868936329

/-! ## A329512.P14118552232394502180

`A288463(A383845(n+1)%A288445(2*(n+1)))`
-/

namespace A329512.P14118552232394502180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288463 (Int.tmod (A383845 (n + 1)) (A288445 (2 * (n + 1)))).toNat

end

end A329512.P14118552232394502180

/-! ## A329512.P3138497147701957420

`A022297(A195082(n+1))%A360243(3*n+4)`
-/

namespace A329512.P3138497147701957420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022297 (A195082 (n + 1)).toNat) (A360243 (3 * n + 4))

end

end A329512.P3138497147701957420

/-! ## A329512.P3302145261127876193

`∑{e}[A286794(A214314(n+1)), #]`
-/

namespace A329512.P3302145261127876193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286794 (A214314 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A329512.P3302145261127876193

/-! ## A329512.P114519352467773866

`A289849(A209576(n+1))`
-/

namespace A329512.P114519352467773866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289849 (A209576 (n + 1)).toNat

end

end A329512.P114519352467773866

/-!
# A329513: G.f. = (1+x)^2*(1+2*x^2-x^3)/(1-x).

The programs for A329513, the canonical program `A329513.P15536757398260850019` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329513 has offset 0).

The definition of A329513 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329513.P15536757398260850019

`a(n-1)` with `a(0)=1, a(1)=3, a(2)=6, a(3)=9, a(4)=9, a(5)=8`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329513

/-- `a(n-1)` -/
def P15536757398260850019.Spec : Prop :=
  ∀ n, (P15536757398260850019.a n : ℤ) = A329513 n

theorem P15536757398260850019.correct : P15536757398260850019.Spec := by
  intro n
  simp only [A329513]

end A329513

/-!
# A329514: Expansion of g.f.: (2*x^5-3*x^4+x^3-2*x^2-1)*(1+x)^2/(x-1).

The programs for A329514, the canonical program `A329514.P11952881462070063901` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329514 has offset 0).

The definition of A329514 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2+3x^3+3x^4+3x^5-x^6-2x^7)/(1-x))` (program `A329514.P11952881462070063901`, by `A329514.P11952881462070063901.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329514.P11952881462070063901

`ogf((1+2x+3x^2+3x^3+3x^4+3x^5-x^6-2x^7)/(1-x))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329514

/-- `ogf((1+2x+3x^2+3x^3+3x^4+3x^5-x^6-2x^7)/(1-x))` -/
def P11952881462070063901.Spec : Prop :=
  ∀ n, P11952881462070063901.a n = A329514 n

theorem P11952881462070063901.correct : P11952881462070063901.Spec := by
  intro n
  simp only [A329514]

end A329514

/-!
# A329515: Array read by upward antidiagonals: row n = coordination sequence for cylinder formed by rolling up a strip of width 2*n+1 hexagons cut from the hexagonal grid by cuts perpendicular to grid lines.

The programs for A329515, there is no canonical definition to state claims against.
-/

/-! ## A329515.P10120357161200333987

`A001222(A002378(A194968(n+1)!))`
-/

namespace A329515.P10120357161200333987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A002378 (Nat.factorial (A194968 (n + 1)).toNat)).toNat

end

end A329515.P10120357161200333987

/-! ## A329515.P3572233899820978115

`A001222(A028895(A194968(n+1)!))`
-/

namespace A329515.P3572233899820978115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028895 (Nat.factorial (A194968 (n + 1)).toNat)).toNat

end

end A329515.P3572233899820978115

/-! ## A329515.P11145911475762930935

`A094838(or(A002260(n+1), A026998(n)))`
-/

namespace A329515.P11145911475762930935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094838 (Int.lor (A002260 (n + 1)) (A026998 n)).toNat

end

end A329515.P11145911475762930935

/-! ## A329515.P10321779788079436029

`A094838(or(A026998(n), A195097(n+1)))`
-/

namespace A329515.P10321779788079436029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094838 (Int.lor (A026998 n) (A195097 (n + 1))).toNat

end

end A329515.P10321779788079436029

/-! ## A329515.P946018468102936701

`A329508(n+1)+A227186(A192211(n+1))`
-/

namespace A329515.P946018468102936701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329508 (n + 1) + A227186 (A192211 (n + 1)).toNat

end

end A329515.P946018468102936701

/-!
# A329516: Expansion of (x^4 - x^3 - 3*x^2 - 2*x - 1)/(x - 1).

The programs for A329516, the canonical program `A329516.P10035569846762402087` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329516 has offset 0).

The definition of A329516 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2+x^3-x^4)/(1-x))` (program `A329516.P10035569846762402087`, by `A329516.P10035569846762402087.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329516.P10035569846762402087

`ogf((1+2x+3x^2+x^3-x^4)/(1-x))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329516

/-- `ogf((1+2x+3x^2+x^3-x^4)/(1-x))` -/
def P10035569846762402087.Spec : Prop :=
  ∀ n, P10035569846762402087.a n = A329516 n

theorem P10035569846762402087.correct : P10035569846762402087.Spec := by
  intro n
  simp only [A329516]

end A329516

/-!
# A329517: Expansion of (2*x^6 - 3*x^4 - 3*x^3 - 3*x^2 - 2*x - 1)/(x - 1).

The programs for A329517, the canonical program `A329517.P14372850104332053754` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329517 has offset 0).

The definition of A329517 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+2x+3x^2+3x^3+3x^4-2x^6)/(1-x))` (program `A329517.P14372850104332053754`, by `A329517.P14372850104332053754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329517.P14372850104332053754

`ogf((1+2x+3x^2+3x^3+3x^4-2x^6)/(1-x))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329517

/-- `ogf((1+2x+3x^2+3x^3+3x^4-2x^6)/(1-x))` -/
def P14372850104332053754.Spec : Prop :=
  ∀ n, P14372850104332053754.a n = A329517 n

theorem P14372850104332053754.correct : P14372850104332053754.Spec := by
  intro n
  simp only [A329517]

end A329517

/-!
# A329522: Composite numbers whose sum of digits is not composite.

The programs for A329522, there is no canonical definition to state claims against.
-/

/-! ## A329522.P4523470137412690685

`∪[A141642(n+1), A171758(n+1)]`
-/

namespace A329522.P4523470137412690685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141642 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329522.P4523470137412690685

/-! ## A329522.P1200270142724402753

`A007093(lt[A357626(2*(n+1))-A293221(3*(n+1)), 1])`
-/

namespace A329522.P1200270142724402753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357626 (2 * (n + 1)) - A293221 (3 * (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007093 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A329522.P1200270142724402753

/-! ## A329522.P11435467860310443533

`lt[A187747(2*n), A005590(A117522(n+1))]`
-/

namespace A329522.P11435467860310443533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187747 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005590 (A117522 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A329522.P11435467860310443533

/-! ## A329522.P14076103828740143826

`eq[A096693(A345921(2*n+1)), A296992(3*(n+1))]`
-/

namespace A329522.P14076103828740143826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096693 (A345921 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296992 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329522.P14076103828740143826

/-!
# A329523: a(n) = n * (binomial(n + 1, 3) + 1).

The programs for A329523, the canonical program `A329523.P18261458279944651738` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329523 has offset 0).

The definition of A329523 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(C(n+1, 3)+1)` (program `A329523.P18261458279944651738`, by `A329523.P18261458279944651738.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329523.P18261458279944651738

`n*(C(n+1, 3)+1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329523

/-- `n*(C(n+1, 3)+1)` -/
def P18261458279944651738.Spec : Prop :=
  ∀ n, (P18261458279944651738.a n : ℤ) = A329523 n

theorem P18261458279944651738.correct : P18261458279944651738.Spec := by
  intro n
  simp only [A329523]

end A329523

/-! ## A329523.P1723270654533407086

`n*(n+2)*(n²-2*n+3)/6`
-/

namespace A329523.P1723270654533407086
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n * (n + 2) : ℤ) * ((n ^ 2 : ℤ) - (2 * n : ℤ) + 3) : ℚ) / 6

end

end A329523.P1723270654533407086

namespace A329523

/-- `n*(n+2)*(n²-2*n+3)/6` -/
def P1723270654533407086.Spec : Prop :=
  ∀ n, P1723270654533407086.a n = (A329523 n : ℚ)

theorem P1723270654533407086.correct : P1723270654533407086.Spec := by
  intro n
  simp only [A329523, Nat.add_sub_cancel, A329523.P1723270654533407086.a, A329523.P18261458279944651738.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A329523

/-! ## A329523.P16758867760839268826

`C(n², 2)/3+n`
-/

namespace A329523.P16758867760839268826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n ^ 2) 2 : ℚ) / 3 + (n : ℚ)

end

end A329523.P16758867760839268826

namespace A329523

/-- `C(n², 2)/3+n` -/
def P16758867760839268826.Spec : Prop :=
  ∀ n, P16758867760839268826.a n = (A329523 n : ℚ)

theorem P16758867760839268826.correct : P16758867760839268826.Spec := by
  intro n
  simp only [A329523, Nat.add_sub_cancel, A329523.P16758867760839268826.a, A329523.P18261458279944651738.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A329523

/-! ## A329523.P5689209331509500822

`n*(∑[C(n, 2)]+1)`
-/

namespace A329523.P5689209331509500822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A329523.P5689209331509500822

namespace A329523

/-- `n*(∑[C(n, 2)]+1)` -/
def P5689209331509500822.Spec : Prop :=
  ∀ n, (P5689209331509500822.a n : ℤ) = A329523 n

end A329523

/-! ## A329523.P15410131457757083474

`n-n*∑[a(n-1)-(n-1)]` with `a(0)=0`
-/

namespace A329523.P15410131457757083474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329523.P15410131457757083474

namespace A329523

/-- `n-n*∑[a(n-1)-(n-1)]` -/
def P15410131457757083474.Spec : Prop :=
  ∀ n, P15410131457757083474.a n = A329523 n

end A329523

/-! ## A329523.P15034994042692003434

`A008911(n)+n`
-/

namespace A329523.P15034994042692003434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 n + (n : ℤ)

end

end A329523.P15034994042692003434

namespace A329523

/-- `A008911(n)+n` -/
def P15034994042692003434.Spec : Prop :=
  ∀ n, P15034994042692003434.a n = A329523 n

theorem P15034994042692003434.correct : P15034994042692003434.Spec := by
  intro n
  simp only [A329523, Nat.add_sub_cancel, A329523.P15034994042692003434.a, A329523.P18261458279944651738.a, A008911, A008911.P13273812959186450040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A329523

/-! ## A329523.P5384842006563284734

`A326278(n)+∑[n]`
-/

namespace A329523.P5384842006563284734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326278 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A329523.P5384842006563284734

namespace A329523

/-- `A326278(n)+∑[n]` -/
def P5384842006563284734.Spec : Prop :=
  ∀ n, P5384842006563284734.a n = A329523 n

end A329523

/-! ## A329523.P16410702207659503185

`2*A002415(n)+n`
-/

namespace A329523.P16410702207659503185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A002415 n + (n : ℤ)

end

end A329523.P16410702207659503185

namespace A329523

/-- `2*A002415(n)+n` -/
def P16410702207659503185.Spec : Prop :=
  ∀ n, P16410702207659503185.a n = A329523 n

end A329523

/-! ## A329523.P5196223971079721630

`A112742(n)/2+n`
-/

namespace A329523.P5196223971079721630
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112742 n : ℚ) / 2 + (n : ℚ)

end

end A329523.P5196223971079721630

namespace A329523

/-- `A112742(n)/2+n` -/
def P5196223971079721630.Spec : Prop :=
  ∀ n, P5196223971079721630.a n = (A329523 n : ℚ)

end A329523

/-! ## A329523.P14438170008569241999

`A072819(n)/4+n`
-/

namespace A329523.P14438170008569241999
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072819 n : ℚ) / 4 + (n : ℚ)

end

end A329523.P14438170008569241999

namespace A329523

/-- `A072819(n)/4+n` -/
def P14438170008569241999.Spec : Prop :=
  ∀ n, P14438170008569241999.a n = (A329523 n : ℚ)

theorem P14438170008569241999.correct : P14438170008569241999.Spec := by
  intro n
  simp only [A329523, Nat.add_sub_cancel, A329523.P14438170008569241999.a, A329523.P18261458279944651738.a, A072819, A072819.P14090172225751623983.a, A008911, A008911.P13273812959186450040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A329523

/-! ## A329523.P4745787932485886748

`n*(A000125(n)-n)`
-/

namespace A329523.P4745787932485886748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A000125 n - (n : ℤ))

end

end A329523.P4745787932485886748

namespace A329523

/-- `n*(A000125(n)-n)` -/
def P4745787932485886748.Spec : Prop :=
  ∀ n, P4745787932485886748.a n = A329523 n

theorem P4745787932485886748.correct : P4745787932485886748.Spec := by
  intro n
  simp only [A329523, Nat.add_sub_cancel, A329523.P4745787932485886748.a, A329523.P18261458279944651738.a, A000125, A000125.P10762125132202112265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A329523

/-! ## A329523.P13772298603048520304

`n²+2*A117662(n)`
-/

namespace A329523.P13772298603048520304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + 2 * A117662 n

end

end A329523.P13772298603048520304

namespace A329523

/-- `n²+2*A117662(n)` -/
def P13772298603048520304.Spec : Prop :=
  ∀ n, P13772298603048520304.a n = A329523 n

end A329523

/-! ## A329523.P14683237345396767094

`∑[A146298(n)+n]+n`
-/

namespace A329523.P14683237345396767094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146298 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A329523.P14683237345396767094

namespace A329523

/-- `∑[A146298(n)+n]+n` -/
def P14683237345396767094.Spec : Prop :=
  ∀ n, P14683237345396767094.a n = A329523 n

end A329523

/-! ## A329523.P16758877774093477245

`∑[A037235(n)-n]+n`
-/

namespace A329523.P16758877774093477245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037235 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A329523.P16758877774093477245

namespace A329523

/-- `∑[A037235(n)-n]+n` -/
def P16758877774093477245.Spec : Prop :=
  ∀ n, P16758877774093477245.a n = A329523 n

end A329523

/-! ## A329523.P8456047284502000927

`A257055(n)+n-∑[n]`
-/

namespace A329523.P8456047284502000927
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257055 n + ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A329523.P8456047284502000927

namespace A329523

/-- `A257055(n)+n-∑[n]` -/
def P8456047284502000927.Spec : Prop :=
  ∀ n, P8456047284502000927.a n = A329523 n

end A329523

/-! ## A329523.P3950786357663264050

`n*(A011826(n+1)-(n+1))`
-/

namespace A329523.P3950786357663264050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A011826 (n + 1) - (n + 1 : ℤ))

end

end A329523.P3950786357663264050

namespace A329523

/-- `n*(A011826(n+1)-(n+1))` -/
def P3950786357663264050.Spec : Prop :=
  ∀ n, P3950786357663264050.a n = A329523 n

end A329523

/-! ## A329523.P963860564211867937

`(n-1)*A002411(n)/3+n`
-/

namespace A329523.P963860564211867937
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * A002411 n : ℚ) / 3 + (n : ℚ)

end

end A329523.P963860564211867937

namespace A329523

/-- `(n-1)*A002411(n)/3+n` -/
def P963860564211867937.Spec : Prop :=
  ∀ n, P963860564211867937.a n = (A329523 n : ℚ)

end A329523

/-! ## A329523.P2260646887766130876

`A299198(n+1)+(n+2)*(n-1)`
-/

namespace A329523.P2260646887766130876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299198 (n + 1) + (n + 2 : ℤ) * ((n : ℤ) - 1)

end

end A329523.P2260646887766130876

namespace A329523

/-- `A299198(n+1)+(n+2)*(n-1)` -/
def P2260646887766130876.Spec : Prop :=
  ∀ n, P2260646887766130876.a n = A329523 n

end A329523

/-! ## A329523.P3538899474351144399

`A086602(n)+A014626(n)`
-/

namespace A329523.P3538899474351144399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086602 n + A014626 n

end

end A329523.P3538899474351144399

namespace A329523

/-- `A086602(n)+A014626(n)` -/
def P3538899474351144399.Spec : Prop :=
  ∀ n, P3538899474351144399.a n = A329523 n

end A329523

/-! ## A329523.P6384716682870599703

`A294259(n)+A000332(n)`
-/

namespace A329523.P6384716682870599703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294259 n + A000332 n

end

end A329523.P6384716682870599703

namespace A329523

/-- `A294259(n)+A000332(n)` -/
def P6384716682870599703.Spec : Prop :=
  ∀ n, P6384716682870599703.a n = A329523 n

end A329523

/-!
# A329524: a(n) = A220470(n) / n.

The programs for A329524, there is no canonical definition to state claims against.
-/

/-! ## A329524.P15800524217555748368

`A220470(n+1)/(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329524.P15800524217555748368
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A220470 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A329524.P15800524217555748368

/-! ## A329524.P11029868571942483695

`A319067(n+1)-A094518(A319079(n))`
-/

namespace A329524.P11029868571942483695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319067 (n + 1) - A094518 (A319079 n).toNat

end

end A329524.P11029868571942483695

/-!
# A329526: Number of 1's required to build n using +, -, *, ^ and factorial.

The programs for A329526, there is no canonical definition to state claims against.
-/

/-! ## A329526.P740537615663561744

`∑[A134452(A342427(A015737(n+4)))]`
-/

namespace A329526.P740537615663561744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (A342427 (A015737 (n + 4)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329526.P740537615663561744

/-! ## A329526.P17254130140596153355

`A073453(n+1)+A000688(A000051(n))`
-/

namespace A329526.P17254130140596153355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073453 (n + 1) + A000688 (A000051 n).toNat

end

end A329526.P17254130140596153355

/-! ## A329526.P9813066542413545888

`A161205(n+2)-A086009(A035615(n))`
-/

namespace A329526.P9813066542413545888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161205 (n + 2) - A086009 (A035615 n).toNat

end

end A329526.P9813066542413545888

/-!
# A329528: Numbers k such that the k-th lucky number (A000959) is divisible by k.

The programs for A329528, there is no canonical definition to state claims against.
-/

/-! ## A329528.P5899512045307117585

`lt[A000959(n+1)%(n+1), 1]+1`
-/

namespace A329528.P5899512045307117585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000959 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A329528.P5899512045307117585

/-! ## A329528.P303645318185041745

`eq[n+1, gcd(A000027(n+1), A000959(n+1))]+1`
-/

namespace A329528.P303645318185041745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A000959 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A329528.P303645318185041745

/-!
# A329529: Numbers k such that the sum of first k lucky numbers, A046279(k), is divisible by k.

The programs for A329529, there is no canonical definition to state claims against.
-/

/-! ## A329529.P9439136497693938077

`A334463(A056041(n)-1)`
-/

namespace A329529.P9439136497693938077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334463 (A056041 n - 1).toNat

end

end A329529.P9439136497693938077

/-! ## A329529.P16911529138170604856

`A334953(A056041(n)-1)`
-/

namespace A329529.P16911529138170604856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334953 (A056041 n - 1).toNat

end

end A329529.P16911529138170604856

/-!
# A329530: a(n) = n * (7*binomial(n, 2) + 1).

The programs for A329530, the canonical program `A329530.P1955603069220622707` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329530 has offset 0).

The definition of A329530 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(7*C(n, 2)+1)` (program `A329530.P1955603069220622707`, by `A329530.P1955603069220622707.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A329530.P1955603069220622707

`n*(7*C(n, 2)+1)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329530

/-- `n*(7*C(n, 2)+1)` -/
def P1955603069220622707.Spec : Prop :=
  ∀ n, (P1955603069220622707.a n : ℤ) = A329530 n

theorem P1955603069220622707.correct : P1955603069220622707.Spec := by
  intro n
  simp only [A329530]

end A329530

/-! ## A329530.P2023586081093399454

`n*(7*n²-7*n+2)/2`
-/

namespace A329530.P2023586081093399454
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((7 * n ^ 2 : ℤ) - (7 * n : ℤ) + 2) : ℚ) / 2

end

end A329530.P2023586081093399454

namespace A329530

/-- `n*(7*n²-7*n+2)/2` -/
def P2023586081093399454.Spec : Prop :=
  ∀ n, P2023586081093399454.a n = (A329530 n : ℚ)

theorem P2023586081093399454.correct : P2023586081093399454.Spec := by
  intro n
  simp only [A329530, Nat.add_sub_cancel, A329530.P2023586081093399454.a, A329530.P1955603069220622707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A329530

/-! ## A329530.P9434709759910304104

`n*∑[a(n-1)+7]` with `a(0)=1, a(1)=0`
-/

namespace A329530.P9434709759910304104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329530.P9434709759910304104

namespace A329530

/-- `n*∑[a(n-1)+7]` -/
def P9434709759910304104.Spec : Prop :=
  ∀ n, (P9434709759910304104.a n : ℤ) = A329530 n

end A329530

/-! ## A329530.P1179060533368661783

`n*(8-∑[a(n-1)-7])` with `a(0)=7`
-/

namespace A329530.P1179060533368661783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  f1 (n - 1) - 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (8 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A329530.P1179060533368661783

namespace A329530

/-- `n*(8-∑[a(n-1)-7])` -/
def P1179060533368661783.Spec : Prop :=
  ∀ n, P1179060533368661783.a n = A329530 n

end A329530

/-! ## A329530.P11845653742548936173

`C(3*n, 3)-(n-1)*n²`
-/

namespace A329530.P11845653742548936173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) 3 : ℤ) - ((n : ℤ) - 1) * (n ^ 2 : ℤ)

end

end A329530.P11845653742548936173

namespace A329530

/-- `C(3*n, 3)-(n-1)*n²` -/
def P11845653742548936173.Spec : Prop :=
  ∀ n, P11845653742548936173.a n = A329530 n

theorem P11845653742548936173.correct : P11845653742548936173.Spec := by
  intro n
  simp only [A329530, Nat.add_sub_cancel, A329530.P11845653742548936173.a, A329530.P1955603069220622707.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A329530

/-! ## A329530.P2569158394346187654

`7*n*C(n, 2)-(n-2*n)`
-/

namespace A329530.P2569158394346187654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (7 * n * Nat.choose n 2 : ℤ) - ((n : ℤ) - (2 * n : ℤ))

end

end A329530.P2569158394346187654

namespace A329530

/-- `7*n*C(n, 2)-(n-2*n)` -/
def P2569158394346187654.Spec : Prop :=
  ∀ n, P2569158394346187654.a n = A329530 n

theorem P2569158394346187654.correct : P2569158394346187654.Spec := by
  intro n
  simp only [A329530, Nat.add_sub_cancel, A329530.P2569158394346187654.a, A329530.P1955603069220622707.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A329530

/-! ## A329530.P1762260929276524540

`∑[n]-(n-1)*∑[n-record[lcm(4, n)]]`
-/

namespace A329530.P1762260929276524540
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n : ℤ) - 1) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A329530.P1762260929276524540

namespace A329530

/-- `∑[n]-(n-1)*∑[n-record[lcm(4, n)]]` -/
def P1762260929276524540.Spec : Prop :=
  ∀ n, P1762260929276524540.a n = A329530 n

end A329530

/-! ## A329530.P14154199270671990444

`n*(A389608(n)-n)`
-/

namespace A329530.P14154199270671990444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A389608 n - (n : ℤ))

end

end A329530.P14154199270671990444

namespace A329530

/-- `n*(A389608(n)-n)` -/
def P14154199270671990444.Spec : Prop :=
  ∀ n, P14154199270671990444.a n = A329530 n

end A329530

/-! ## A329530.P7687899633385526060

`A262000(n)+n-n²`
-/

namespace A329530.P7687899633385526060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262000 n + ((n : ℤ) - (n ^ 2 : ℤ))

end

end A329530.P7687899633385526060

namespace A329530

/-- `A262000(n)+n-n²` -/
def P7687899633385526060.Spec : Prop :=
  ∀ n, P7687899633385526060.a n = A329530 n

end A329530

/-! ## A329530.P54102452885047312

`7*n*A161680(n)+n`
-/

namespace A329530.P54102452885047312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((n : ℤ) * A161680 n) + (n : ℤ)

end

end A329530.P54102452885047312

namespace A329530

/-- `7*n*A161680(n)+n` -/
def P54102452885047312.Spec : Prop :=
  ∀ n, P54102452885047312.a n = A329530 n

theorem P54102452885047312.correct : P54102452885047312.Spec := by
  intro n
  simp only [A329530, Nat.add_sub_cancel, A329530.P54102452885047312.a, A329530.P1955603069220622707.a, A161680, A161680.P17206074215489759881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A329530

/-! ## A329530.P13603889179240264722

`A135503(n)+A071230(n)`
-/

namespace A329530.P13603889179240264722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n + A071230 n

end

end A329530.P13603889179240264722

namespace A329530

/-- `A135503(n)+A071230(n)` -/
def P13603889179240264722.Spec : Prop :=
  ∀ n, P13603889179240264722.a n = A329530 n

end A329530

/-! ## A329530.P11884510435591835831

`A006566(n)-A045991(n)`
-/

namespace A329530.P11884510435591835831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 n - A045991 n

end

end A329530.P11884510435591835831

namespace A329530

/-- `A006566(n)-A045991(n)` -/
def P11884510435591835831.Spec : Prop :=
  ∀ n, P11884510435591835831.a n = A329530 n

end A329530

/-! ## A329530.P5918214233017126109

`A081583(n)-A002414(n+1)`
-/

namespace A329530.P5918214233017126109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081583 n - A002414 (n + 1)

end

end A329530.P5918214233017126109

namespace A329530

/-- `A081583(n)-A002414(n+1)` -/
def P5918214233017126109.Spec : Prop :=
  ∀ n, P5918214233017126109.a n = A329530 n

end A329530

/-! ## A329530.P13425650810269886542

`A211545(n)-A393231(n+1)`
-/

namespace A329530.P13425650810269886542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211545 n - A393231 (n + 1)

end

end A329530.P13425650810269886542

namespace A329530

/-- `A211545(n)-A393231(n+1)` -/
def P13425650810269886542.Spec : Prop :=
  ∀ n, P13425650810269886542.a n = A329530 n

end A329530

/-! ## A329530.P8994122249995088925

`A262000(n)+n-A000290(n)`
-/

namespace A329530.P8994122249995088925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262000 n + (n : ℤ) - A000290 n

end

end A329530.P8994122249995088925

namespace A329530

/-- `A262000(n)+n-A000290(n)` -/
def P8994122249995088925.Spec : Prop :=
  ∀ n, P8994122249995088925.a n = A329530 n

end A329530

/-! ## A329530.P17733290050119079506

`n²+A006566(n)-A000578(n)`
-/

namespace A329530.P17733290050119079506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A006566 n - A000578 n)

end

end A329530.P17733290050119079506

namespace A329530

/-- `n²+A006566(n)-A000578(n)` -/
def P17733290050119079506.Spec : Prop :=
  ∀ n, P17733290050119079506.a n = A329530 n

end A329530

/-! ## A329530.P12219463486572224851

`A005945(n)+A006003(n)-n²`
-/

namespace A329530.P12219463486572224851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005945 n + (A006003 n - (n ^ 2 : ℤ))

end

end A329530.P12219463486572224851

namespace A329530

/-- `A005945(n)+A006003(n)-n²` -/
def P12219463486572224851.Spec : Prop :=
  ∀ n, P12219463486572224851.a n = A329530 n

end A329530

/-! ## A329530.P10389208616356137851

`abs(n*(A000217(n)-A054552(n)))`
-/

namespace A329530.P10389208616356137851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A000217 n - A054552 n)|

end

end A329530.P10389208616356137851

namespace A329530

/-- `abs(n*(A000217(n)-A054552(n)))` -/
def P10389208616356137851.Spec : Prop :=
  ∀ n, P10389208616356137851.a n = A329530 n

end A329530

/-! ## A329530.P8994128838423209901

`A001106(n)+A226451(n)-n²`
-/

namespace A329530.P8994128838423209901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001106 n + (A226451 n - (n ^ 2 : ℤ))

end

end A329530.P8994128838423209901

namespace A329530

/-- `A001106(n)+A226451(n)-n²` -/
def P8994128838423209901.Spec : Prop :=
  ∀ n, P8994128838423209901.a n = A329530 n

end A329530

/-! ## A329530.P2854375942288637699

`A006597(n)+A051673(n)-A000447(n)`
-/

namespace A329530.P2854375942288637699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006597 n + (A051673 n - A000447 n)

end

end A329530.P2854375942288637699

namespace A329530

/-- `A006597(n)+A051673(n)-A000447(n)` -/
def P2854375942288637699.Spec : Prop :=
  ∀ n, P2854375942288637699.a n = A329530 n

end A329530

/-!
# A329531: Number of primes between squares of successive even numbers.

The programs for A329531, there is no canonical definition to state claims against.
-/

/-! ## A329531.P12197988960603958547

`A014085(2*n+1)+A014085(2*n)`
-/

namespace A329531.P12197988960603958547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014085 (2 * n + 1) + A014085 (2 * n)

end

end A329531.P12197988960603958547

/-! ## A329531.P7993257061554181373

`Δ[A038107(2*n)]`
-/

namespace A329531.P7993257061554181373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329531.P7993257061554181373

/-! ## A329531.P5163474540319499321

`abs(Δ[A038107(A004277(n))])`
-/

namespace A329531.P5163474540319499321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A329531.P5163474540319499321

/-! ## A329531.P5927737221248830669

`abs(Δ[A038107(A005843(n))])`
-/

namespace A329531.P5927737221248830669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (A005843 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A329531.P5927737221248830669

/-! ## A329531.P12703931053460608917

`A038107(2*(n+1))-A038107(2*n)`
-/

namespace A329531.P12703931053460608917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038107 (2 * (n + 1)) - A038107 (2 * n)

end

end A329531.P12703931053460608917

/-! ## A329531.P9336418886969742182

`Δ[A000720(abs(A000466(n)))]`
-/

namespace A329531.P9336418886969742182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 |A000466 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329531.P9336418886969742182

/-! ## A329531.P16767962802220125448

`Δ[A000720(A004277(n)²)]`
-/

namespace A329531.P16767962802220125448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A004277 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329531.P16767962802220125448

/-! ## A329531.P16760194825895067661

`Δ[A000720(A253909(2*n))]`
-/

namespace A329531.P16760194825895067661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A253909 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329531.P16760194825895067661

/-! ## A329531.P11618012234697195365

`Δ[A000720(A004275(n+1)²)]`
-/

namespace A329531.P11618012234697195365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A004275 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329531.P11618012234697195365

/-! ## A329531.P3863658854373108223

`Δ[A000720((A004273(n)+1)²)]`
-/

namespace A329531.P3863658854373108223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((A004273 n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329531.P3863658854373108223

/-! ## A329531.P8497560874410942101

`Δ[A000720(A028310(2*n)²)]`
-/

namespace A329531.P8497560874410942101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A028310 (2 * n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329531.P8497560874410942101

/-! ## A329531.P3825948716583585709

`Δ[A000720((A028310(n)+n)²)]`
-/

namespace A329531.P3825948716583585709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((A028310 n + (n : ℤ)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329531.P3825948716583585709

/-! ## A329531.P15716961412721213887

`Δ[A000720((n-A008486(n))²)]`
-/

namespace A329531.P15716961412721213887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (((n : ℤ) - A008486 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329531.P15716961412721213887

/-! ## A329531.P2369273223947080918

`Δ[A099801(A004273(n²))]`
-/

namespace A329531.P2369273223947080918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A004273 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329531.P2369273223947080918

/-! ## A329531.P11550945112798474305

`Δ[A000720(A118753(n²))]`
-/

namespace A329531.P11550945112798474305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A118753 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329531.P11550945112798474305

/-!
# A329533: First differences of A051924, or second differences of Central binomial coefficients A000984.

The programs for A329533, the canonical program `A329533.P8658402688666727699` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329533 has offset 0).

The definition of A329533 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329533.P8658402688666727699

`A000984(n+2)-2*A000984(n+1)+A000984(n)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A329533

/-- `A000984(n+2)-2*A000984(n+1)+A000984(n)` -/
def P8658402688666727699.Spec : Prop :=
  ∀ n, P8658402688666727699.a n = A329533 n

theorem P8658402688666727699.correct : P8658402688666727699.Spec := by
  intro n
  simp only [A329533]

end A329533

/-! ## A329533.P13888375467880896386

`Δ[Δ[A000984(n)]]`
-/

namespace A329533.P13888375467880896386
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P13888375467880896386

namespace A329533

/-- `Δ[Δ[A000984(n)]]` -/
def P13888375467880896386.Spec : Prop :=
  ∀ n, P13888375467880896386.a n = A329533 n

theorem P13888375467880896386.correct : P13888375467880896386.Spec := by
  intro n
  simp only [A329533, Nat.add_sub_cancel, A329533.P13888375467880896386.f2, A329533.P13888375467880896386.f1, A329533.P13888375467880896386.a, A329533.P8658402688666727699.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A329533

/-! ## A329533.P10754647821507296423

`Δ[Δ[A045992(n)]]`
-/

namespace A329533.P10754647821507296423
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045992 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P10754647821507296423

namespace A329533

/-- `Δ[Δ[A045992(n)]]` -/
def P10754647821507296423.Spec : Prop :=
  ∀ n, P10754647821507296423.a n = A329533 n

theorem P10754647821507296423.correct : P10754647821507296423.Spec := by
  intro n
  simp only [A329533, Nat.add_sub_cancel, A329533.P10754647821507296423.f2, A329533.P10754647821507296423.f1, A329533.P10754647821507296423.a, A329533.P8658402688666727699.a, A000984, A000984.P7946844122574426130.a, A045992, A045992.P603582236385676472.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A329533

/-! ## A329533.P10805394182528383888

`Δ[Δ[A134758(n)]]`
-/

namespace A329533.P10805394182528383888
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134758 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P10805394182528383888

namespace A329533

/-- `Δ[Δ[A134758(n)]]` -/
def P10805394182528383888.Spec : Prop :=
  ∀ n, P10805394182528383888.a n = A329533 n

theorem P10805394182528383888.correct : P10805394182528383888.Spec := by
  intro n
  simp only [A329533, Nat.add_sub_cancel, A329533.P10805394182528383888.f2, A329533.P10805394182528383888.f1, A329533.P10805394182528383888.a, A329533.P8658402688666727699.a, A000984, A000984.P7946844122574426130.a, A134758, A134758.P3097203731672110701.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A329533

/-! ## A329533.P5821032974761031731

`Δ[A051924(n+1)]`
-/

namespace A329533.P5821032974761031731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P5821032974761031731

namespace A329533

/-- `Δ[A051924(n+1)]` -/
def P5821032974761031731.Spec : Prop :=
  ∀ n, P5821032974761031731.a n = A329533 n

end A329533

/-! ## A329533.P15173219898332172848

`Δ[A026010(2*n)]`
-/

namespace A329533.P15173219898332172848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026010 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P15173219898332172848

namespace A329533

/-- `Δ[A026010(2*n)]` -/
def P15173219898332172848.Spec : Prop :=
  ∀ n, P15173219898332172848.a n = A329533 n

end A329533

/-! ## A329533.P15713230125844906835

`Δ[A337499(2*n)]`
-/

namespace A329533.P15713230125844906835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337499 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P15713230125844906835

namespace A329533

/-- `Δ[A337499(2*n)]` -/
def P15713230125844906835.Spec : Prop :=
  ∀ n, P15713230125844906835.a n = A329533 n

end A329533

/-! ## A329533.P7939361047381777731

`(n+1)*A376161(n)`
-/

namespace A329533.P7939361047381777731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A376161 n

end

end A329533.P7939361047381777731

namespace A329533

/-- `(n+1)*A376161(n)` -/
def P7939361047381777731.Spec : Prop :=
  ∀ n, P7939361047381777731.a n = A329533 n

end A329533

/-! ## A329533.P10101438988566568832

`Δ[Δ[A323230(n+1)]]`
-/

namespace A329533.P10101438988566568832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323230 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P10101438988566568832

namespace A329533

/-- `Δ[Δ[A323230(n+1)]]` -/
def P10101438988566568832.Spec : Prop :=
  ∀ n, P10101438988566568832.a n = A329533 n

end A329533

/-! ## A329533.P10015897528606851114

`Δ[Δ[A359176(n+1)]]`
-/

namespace A329533.P10015897528606851114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359176 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P10015897528606851114

namespace A329533

/-- `Δ[Δ[A359176(n+1)]]` -/
def P10015897528606851114.Spec : Prop :=
  ∀ n, P10015897528606851114.a n = A329533 n

end A329533

/-! ## A329533.P13780746880671146980

`Δ[Δ[A001405(2*n)]]`
-/

namespace A329533.P13780746880671146980
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P13780746880671146980

namespace A329533

/-- `Δ[Δ[A001405(2*n)]]` -/
def P13780746880671146980.Spec : Prop :=
  ∀ n, P13780746880671146980.a n = A329533 n

end A329533

/-! ## A329533.P14702865400964209498

`Δ[Δ[A014495(2*n)]]`
-/

namespace A329533.P14702865400964209498
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014495 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P14702865400964209498

namespace A329533

/-- `Δ[Δ[A014495(2*n)]]` -/
def P14702865400964209498.Spec : Prop :=
  ∀ n, P14702865400964209498.a n = A329533 n

end A329533

/-! ## A329533.P3443105359805462240

`Δ[Δ[A051920(2*n)]]`
-/

namespace A329533.P3443105359805462240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051920 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P3443105359805462240

namespace A329533

/-- `Δ[Δ[A051920(2*n)]]` -/
def P3443105359805462240.Spec : Prop :=
  ∀ n, P3443105359805462240.a n = A329533 n

end A329533

/-! ## A329533.P2867158668164423907

`Δ[Δ[A063886(2*n)]]`
-/

namespace A329533.P2867158668164423907
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P2867158668164423907

namespace A329533

/-- `Δ[Δ[A063886(2*n)]]` -/
def P2867158668164423907.Spec : Prop :=
  ∀ n, P2867158668164423907.a n = A329533 n

end A329533

/-! ## A329533.P11021274092167163791

`Δ[Δ[A081668(2*n)]]`
-/

namespace A329533.P11021274092167163791
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081668 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P11021274092167163791

namespace A329533

/-- `Δ[Δ[A081668(2*n)]]` -/
def P11021274092167163791.Spec : Prop :=
  ∀ n, P11021274092167163791.a n = A329533 n

end A329533

/-! ## A329533.P17194923244312696519

`Δ[Δ[A089849(2*n)]]`
-/

namespace A329533.P17194923244312696519
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089849 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P17194923244312696519

namespace A329533

/-- `Δ[Δ[A089849(2*n)]]` -/
def P17194923244312696519.Spec : Prop :=
  ∀ n, P17194923244312696519.a n = A329533 n

end A329533

/-! ## A329533.P10835456233443923661

`Δ[Δ[A126869(2*n)]]`
-/

namespace A329533.P10835456233443923661
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P10835456233443923661

namespace A329533

/-- `Δ[Δ[A126869(2*n)]]` -/
def P10835456233443923661.Spec : Prop :=
  ∀ n, P10835456233443923661.a n = A329533 n

end A329533

/-! ## A329533.P4909273104077637332

`Δ[Δ[A126930(2*n)]]`
-/

namespace A329533.P4909273104077637332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126930 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P4909273104077637332

namespace A329533

/-- `Δ[Δ[A126930(2*n)]]` -/
def P4909273104077637332.Spec : Prop :=
  ∀ n, P4909273104077637332.a n = A329533 n

end A329533

/-! ## A329533.P5112622472065167315

`Δ[Δ[A128014(2*n)]]`
-/

namespace A329533.P5112622472065167315
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P5112622472065167315

namespace A329533

/-- `Δ[Δ[A128014(2*n)]]` -/
def P5112622472065167315.Spec : Prop :=
  ∀ n, P5112622472065167315.a n = A329533 n

end A329533

/-! ## A329533.P14272869589361384332

`Δ[Δ[A129383(2*n)]]`
-/

namespace A329533.P14272869589361384332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129383 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A329533.P14272869589361384332

namespace A329533

/-- `Δ[Δ[A129383(2*n)]]` -/
def P14272869589361384332.Spec : Prop :=
  ∀ n, P14272869589361384332.a n = A329533 n

end A329533

/-!
# A329534: Irregular triangle read by rows: for n >= 1 row n lists the k from [1, 2, ... , n] such that A002378(k-1) = (k-1)*k == 0 (mod n).

The programs for A329534, there is no canonical definition to state claims against.
-/

/-! ## A329534.P2893598457631598405

`A108760(round(sqrt(n²+1))+1)+1`
-/

namespace A329534.P2893598457631598405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108760 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 1).toNat + 1

end

end A329534.P2893598457631598405

/-! ## A329534.P9582609566686976788

`A002260(eq[A002262(n+1), A048152(n+1)]+1)`
-/

namespace A329534.P9582609566686976788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A329534.P9582609566686976788

/-! ## A329534.P11082956688882499177

`A002260(eq[A050873(n+1), A277227(n+1)]+1)`
-/

namespace A329534.P11082956688882499177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A329534.P11082956688882499177

/-! ## A329534.P9860897190699087023

`A002262(eq[A050873(n+1), A277227(n+1)])+1`
-/

namespace A329534.P9860897190699087023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n) + 1

end

end A329534.P9860897190699087023

/-! ## A329534.P16884623880171821545

`A002260(record[(n+1)/A338878(n+1)])`
-/

namespace A329534.P16884623880171821545
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A338878 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A329534.P16884623880171821545

/-!
# A329535: Numbers with twice as many halving steps before reaching 1 in the 3x + 1 problem as tripling steps.

The programs for A329535, there is no canonical definition to state claims against.
-/

/-! ## A329535.P9990204857382785815

`A281665(floor(C(n, a(n-1))/2+n))` with `a(0)=1`
-/

namespace A329535.P9990204857382785815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A281665 ⌊(Nat.choose n (a (n - 1)).toNat : ℚ) / 2 + (n : ℚ)⌋.toNat

end

end A329535.P9990204857382785815

/-! ## A329535.P12634554319121712364

`∪[A014799(n), A281665(n+1)]`
-/

namespace A329535.P12634554319121712364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329535.P12634554319121712364

/-! ## A329535.P507567127524870082

`∪[A016760(n), A281665(n+1)]`
-/

namespace A329535.P507567127524870082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016760 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329535.P507567127524870082

/-! ## A329535.P9321394865178492669

`∪[A016761(n), A281665(n+1)]`
-/

namespace A329535.P9321394865178492669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016761 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329535.P9321394865178492669

/-! ## A329535.P15648918723477550337

`∪[A016782(n), A281665(n+1)]`
-/

namespace A329535.P15648918723477550337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016782 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329535.P15648918723477550337

/-!
# A329538: Odd composite numbers k such that A111076(k)^((k-1)/2) == -1 (mod k).

The programs for A329538, there is no canonical definition to state claims against.
-/

/-! ## A329538.P11249162115702087672

`A329799(∑[A053589(n+1)^A107826(n+1)]+1)`
-/

namespace A329538.P11249162115702087672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053589 (n + 1) : ℚ) ^ (A107826 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329799 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A329538.P11249162115702087672

/-!
# A329541: Triangle read by rows: T(n,k) is the number of colored digraphs on n nodes with exactly k colors assigned in a fix order according the node count (1 <= k <= n).

The programs for A329541, there is no canonical definition to state claims against.
-/

/-! ## A329541.P17306728227009835839

`A330693(n+1)^Δ[record[or(56, n)]]`
-/

namespace A329541.P17306728227009835839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 56 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330693 (n + 1) : ℚ) ^ ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℤ)

end

end A329541.P17306728227009835839

/-! ## A329541.P5638803715447395698

`A328773(∑[A361675(n)])`
-/

namespace A329541.P5638803715447395698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361675 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328773 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329541.P5638803715447395698

/-! ## A329541.P7274268179595147411

`A328773(A037442(n+1))`
-/

namespace A329541.P7274268179595147411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328773 (A037442 (n + 1)).toNat

end

end A329541.P7274268179595147411

/-!
# A329543: Number of colored digraphs on n nodes with 1 to n colors assigned in a fixed order according the node count.

The programs for A329543, there is no canonical definition to state claims against.
-/

/-! ## A329543.P2168479413006440667

`A005100(A138216(n)*A249740(2*n+1))`
-/

namespace A329543.P2168479413006440667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (A138216 n * A249740 (2 * n + 1)).toNat

end

end A329543.P2168479413006440667

/-!
# A329546: Triangle read by rows: T(n,k) is the number of colored digraphs on n nodes with exactly k colors arbitrarily assigned (1 <= k <= n).

The programs for A329546, there is no canonical definition to state claims against.
-/

/-! ## A329546.P11679719139733354556

`A352257(A329541(n+1))`
-/

namespace A329546.P11679719139733354556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352257 (A329541 (n + 1)).toNat

end

end A329546.P11679719139733354556

/-! ## A329546.P13895439009076766367

`A058360(A111825(n))*A329541(n+1)`
-/

namespace A329546.P13895439009076766367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058360 (A111825 n).toNat * A329541 (n + 1)

end

end A329546.P13895439009076766367

/-! ## A329546.P12750522908248979478

`A007424(A188676(n))*A329541(n+1)`
-/

namespace A329546.P12750522908248979478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007424 (A188676 n).toNat * A329541 (n + 1)

end

end A329546.P12750522908248979478

/-!
# A329547: Number of natural numbers k <= n such that k^k is a square.

The programs for A329547, the canonical program `A329547.P4878873772969824806` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329547 has offset 1).

The definition of A329547 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329547.P4878873772969824806

`floor((n+1)/2)+ceil(floor(sqrt(n+1))/2)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A329547

/-- `floor((n+1)/2)+ceil(floor(sqrt(n+1))/2)` -/
def P4878873772969824806.Spec : Prop :=
  ∀ n, P4878873772969824806.a n = A329547 (n + 1)

theorem P4878873772969824806.correct : P4878873772969824806.Spec := by
  intro n
  simp only [A329547, Nat.add_sub_cancel]

end A329547

/-! ## A329547.P17618156528685827052

`∑[char[(n+1)^gcd(2, n)-1]]`
-/

namespace A329547.P17618156528685827052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ Nat.gcd 2 n : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329547.P17618156528685827052

namespace A329547

/-- `∑[char[(n+1)^gcd(2, n)-1]]` -/
def P17618156528685827052.Spec : Prop :=
  ∀ n, (P17618156528685827052.a n : ℤ) = A329547 (n + 1)

end A329547

/-! ## A329547.P4322324583704275750

`∑[A354034(n+1)]`
-/

namespace A329547.P4322324583704275750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354034 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329547.P4322324583704275750

namespace A329547

/-- `∑[A354034(n+1)]` -/
def P4322324583704275750.Spec : Prop :=
  ∀ n, P4322324583704275750.a n = A329547 (n + 1)

end A329547

/-! ## A329547.P3217439084756409380

`∑[1-A324908(n+1)]`
-/

namespace A329547.P3217439084756409380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A324908 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329547.P3217439084756409380

namespace A329547

/-- `∑[1-A324908(n+1)]` -/
def P3217439084756409380.Spec : Prop :=
  ∀ n, P3217439084756409380.a n = A329547 (n + 1)

end A329547

/-! ## A329547.P8832363883936066708

`∑[char[A065530(n)]]`
-/

namespace A329547.P8832363883936066708
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065530 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329547.P8832363883936066708

namespace A329547

/-- `∑[char[A065530(n)]]` -/
def P8832363883936066708.Spec : Prop :=
  ∀ n, (P8832363883936066708.a n : ℤ) = A329547 (n + 1)

end A329547

/-! ## A329547.P16707367140129579264

`∑[char[A125301(2*n+1)]]`
-/

namespace A329547.P16707367140129579264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125301 (2 * n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329547.P16707367140129579264

namespace A329547

/-- `∑[char[A125301(2*n+1)]]` -/
def P16707367140129579264.Spec : Prop :=
  ∀ n, (P16707367140129579264.a n : ℤ) = A329547 (n + 1)

end A329547

/-! ## A329547.P9787200730708666633

`∑[char[A055136(n)]]`
-/

namespace A329547.P9787200730708666633
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055136 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329547.P9787200730708666633

namespace A329547

/-- `∑[char[A055136(n)]]` -/
def P9787200730708666633.Spec : Prop :=
  ∀ n, (P9787200730708666633.a n : ℤ) = A329547 (n + 1)

end A329547

/-!
# A329548: a(n) is the number of types of regions in the n-th antidiagonal stripe of the arrangement made of 3 families of lines: x=log(integer); y=log(integer); x+y=log(integer).

The programs for A329548, there is no canonical definition to state claims against.
-/

/-! ## A329548.P17326019114466608974

`ceil(∑[3*n+4]/A196355(3*n+1))`
-/

namespace A329548.P17326019114466608974
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A196355 (3 * n + 1) : ℚ)⌉

end

end A329548.P17326019114466608974

/-!
# A329549: Numbers 4*k such that 1 is the last integer obtained when 4*k is successively divided by its divisors in increasing order.

The programs for A329549, there is no canonical definition to state claims against.
-/

/-! ## A329549.P3689113746517717654

`∩[8*(n+1), A072510(n+1)]`
-/

namespace A329549.P3689113746517717654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329549.P3689113746517717654

/-! ## A329549.P11015477946453222215

`∩[A072510(n+1), A008586(n)]`
-/

namespace A329549.P11015477946453222215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329549.P11015477946453222215

/-! ## A329549.P14669424049835120177

`∩[A072510(n+1), A008590(n)]`
-/

namespace A329549.P14669424049835120177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329549.P14669424049835120177

/-! ## A329549.P5415391804674978250

`∩[A072510(n+1), A104235(n+1)]`
-/

namespace A329549.P5415391804674978250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104235 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329549.P5415391804674978250

/-! ## A329549.P10464889784055439209

`∩[A072510(n+1), A192544(n+1)]`
-/

namespace A329549.P10464889784055439209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072510 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192544 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329549.P10464889784055439209

/-!
# A329550: Total number of consecutive triples of the form (odd, even, odd) or (even, odd, even) in all permutations of [n].

The programs for A329550, there is no canonical definition to state claims against.
-/

/-! ## A329550.P13125065320317926800

`Δ[A289207(n)!]*A002620(n)`
-/

namespace A329550.P13125065320317926800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A289207 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A002620 n

end

end A329550.P13125065320317926800

/-! ## A329550.P8003757036726509851

`A002620(n)*A047920(A152947(n+1))`
-/

namespace A329550.P8003757036726509851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n * A047920 (A152947 (n + 1)).toNat

end

end A329550.P8003757036726509851

/-!
# A329551: Primes p such that 4*p+3, 6*p+5 and 8*p+7 are all primes.

The programs for A329551, the canonical program `A329551.P1499580506998869095` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329551 has offset 1).

The definition of A329551 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 303 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329551.P1499580506998869095

`p?[floor(A126955(n+1)/2)]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A329551

/-- `p?[floor(A126955(n+1)/2)]` -/
def P1499580506998869095.Spec : Prop :=
  ∀ n, P1499580506998869095.a n = A329551 (n + 1)

theorem P1499580506998869095.correct : P1499580506998869095.Spec := by
  intro n
  simp only [A329551, Nat.add_sub_cancel]

end A329551

/-! ## A329551.P15372735069857184818

`p?[ceil(A126955(n+1)/2)-A057427(n)]`
-/

namespace A329551.P15372735069857184818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126955 (n + 1) : ℚ) / 2⌉ - A057427 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329551.P15372735069857184818

namespace A329551

/-- `p?[ceil(A126955(n+1)/2)-A057427(n)]` -/
def P15372735069857184818.Spec : Prop :=
  ∀ n, P15372735069857184818.a n = A329551 (n + 1)

end A329551

/-! ## A329551.P8500085612033478329

`p?[ceil(A126955(n+1)/2)-A014963(4*n+6)]`
-/

namespace A329551.P8500085612033478329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126955 (n + 1) : ℚ) / 2⌉ - A014963 (4 * n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329551.P8500085612033478329

namespace A329551

/-- `p?[ceil(A126955(n+1)/2)-A014963(4*n+6)]` -/
def P8500085612033478329.Spec : Prop :=
  ∀ n, P8500085612033478329.a n = A329551 (n + 1)

end A329551

/-! ## A329551.P41647378384220782

`p?[ceil(A126955(n+1)/2)-A000040(n+1)%2]`
-/

namespace A329551.P41647378384220782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A126955 (n + 1) : ℚ) / 2⌉ - Int.tmod (A000040 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329551.P41647378384220782

namespace A329551

/-- `p?[ceil(A126955(n+1)/2)-A000040(n+1)%2]` -/
def P41647378384220782.Spec : Prop :=
  ∀ n, P41647378384220782.a n = A329551 (n + 1)

end A329551

/-! ## A329551.P4519085853379489190

`∩[A023221(n+1), A244087(n+1)]`
-/

namespace A329551.P4519085853379489190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244087 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329551.P4519085853379489190

namespace A329551

/-- `∩[A023221(n+1), A244087(n+1)]` -/
def P4519085853379489190.Spec : Prop :=
  ∀ n, (P4519085853379489190.a n : ℤ) = A329551 (n + 1)

end A329551

/-! ## A329551.P11346393011724551561

`p?[A014682(A126955(n+1)-1)]`
-/

namespace A329551.P11346393011724551561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A126955 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329551.P11346393011724551561

namespace A329551

/-- `p?[A014682(A126955(n+1)-1)]` -/
def P11346393011724551561.Spec : Prop :=
  ∀ n, P11346393011724551561.a n = A329551 (n + 1)

end A329551

/-! ## A329551.P1640482829318234885

`p?[A014682(xor(1, A126955(n+1)))]`
-/

namespace A329551.P1640482829318234885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.xor 1 (A126955 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A329551.P1640482829318234885

namespace A329551

/-- `p?[A014682(xor(1, A126955(n+1)))]` -/
def P1640482829318234885.Spec : Prop :=
  ∀ n, P1640482829318234885.a n = A329551 (n + 1)

end A329551

/-!
# A329553: Smallest MM-number of a connected set of n multisets.

The programs for A329553, there is no canonical definition to state claims against.
-/

/-! ## A329553.P9163953494241155819

`A331274(A061547(3*n))`
-/

namespace A329553.P9163953494241155819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331274 (A061547 (3 * n)).toNat

end

end A329553.P9163953494241155819

/-!
# A329554: Smallest MM-number of a set of n nonempty sets with no singletons.

The programs for A329554, there is no canonical definition to state claims against.
-/

/-! ## A329554.P10686918405383773790

`∏[p?[A320630(n+1)]]/2`
-/

namespace A329554.P10686918405383773790
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320630 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A329554.P10686918405383773790

/-! ## A329554.P5390478920547957187

`∏[A006005(A000469(n+1))]`
-/

namespace A329554.P5390478920547957187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A000469 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A329554.P5390478920547957187

/-! ## A329554.P10284374418926565462

`∏[A006005(record[A340679(n+1)])]`
-/

namespace A329554.P10284374418926565462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340679 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A329554.P10284374418926565462

/-! ## A329554.P17974303506220270275

`a(n-1)*A000040(A080324(n+2))` with `a(0)=1`
-/

namespace A329554.P17974303506220270275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000040 (A080324 (n + 2)).toNat

end

end A329554.P17974303506220270275

/-!
# A329555: Smallest MM-number of a clutter (connected antichain) of n distinct sets.

The programs for A329555, there is no canonical definition to state claims against.
-/

/-! ## A329555.P709922831868052590

`floor(A329554(n)/A089608(n+1))`
-/

namespace A329555.P709922831868052590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A329554 n : ℚ) / (A089608 (n + 1) : ℚ)⌋

end

end A329555.P709922831868052590

/-!
# A329556: Smallest MM-number of a set of n sets with no singletons.

The programs for A329556, there is no canonical definition to state claims against.
-/

/-! ## A329556.P15504081803445162048

`a(n-1)*A253970(n)` with `a(0)=1`
-/

namespace A329556.P15504081803445162048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A253970 n

end

end A329556.P15504081803445162048

/-!
# A329557: Smallest MM-number of a set of n nonempty sets.

The programs for A329557, there is no canonical definition to state claims against.
-/

/-! ## A329557.P2802287202844533281

`A329558(n+1)/2`
-/

namespace A329557.P2802287202844533281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329558 (n + 1) : ℚ) / 2

end

end A329557.P2802287202844533281

/-! ## A329557.P1262337285356541943

`∏[A302491(n+1)]/2`
-/

namespace A329557.P1262337285356541943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302491 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A329557.P1262337285356541943

/-! ## A329557.P17448092527597994659

`∏[A006005(A005117(n+1))]`
-/

namespace A329557.P17448092527597994659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A005117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A329557.P17448092527597994659

/-! ## A329557.P9437216747258757043

`∏[A006005(record[A007947(n+1)])]`
-/

namespace A329557.P9437216747258757043
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A329557.P9437216747258757043

/-! ## A329557.P16725103770028827364

`∏[record[A020639(A302521(n+1))]]`
-/

namespace A329557.P16725103770028827364
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A302521 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A329557.P16725103770028827364

/-!
# A329558: Product of primes indexed by the first n squarefree numbers.

The programs for A329558, there is no canonical definition to state claims against.
-/

/-! ## A329558.P10684327012570044409

`a(n-1)*A302491(n)` with `a(0)=1`
-/

namespace A329558.P10684327012570044409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A302491 n

end

end A329558.P10684327012570044409

/-! ## A329558.P10852146248993459854

`∏[record[A014963(A302478(n+1))]]`
-/

namespace A329558.P10852146248993459854
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A302478 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A329558.P10852146248993459854

/-! ## A329558.P8341302092962191434

`a(n-1)*A000040(A076144(n+1))` with `a(0)=1`
-/

namespace A329558.P8341302092962191434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * A000040 (A076144 (n + 1)).toNat

end

end A329558.P8341302092962191434

/-! ## A329558.P12568877777771260538

`∏[A302491(n+1)]/A302491(n+1)`
-/

namespace A329558.P12568877777771260538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302491 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (A302491 (n + 1) : ℚ)

end

end A329558.P12568877777771260538

/-! ## A329558.P6542595067611296751

`∏[record[A014963(A328514(n+1))]]`
-/

namespace A329558.P6542595067611296751
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A328514 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A329558.P6542595067611296751

/-!
# A329559: MM-numbers of multiset clutters (connected weak antichains of multisets).

The programs for A329559, there is no canonical definition to state claims against.
-/

/-! ## A329559.P17874210197808090254

`filter[A328336(n+1), A378442(#)]`
-/

namespace A329559.P17874210197808090254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328336 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A378442 (f1 j).toNat = 1) n)

end

end A329559.P17874210197808090254

/-! ## A329559.P16212213006974618468

`∪[A305081(n+1), A007204(n)]`
-/

namespace A329559.P16212213006974618468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007204 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329559.P16212213006974618468

/-! ## A329559.P7162103395372979589

`∪[A305081(n+1), A016814(n)]`
-/

namespace A329559.P7162103395372979589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016814 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329559.P7162103395372979589

/-! ## A329559.P13403757704943953357

`∪[A305081(n+1), A016922(n)]`
-/

namespace A329559.P13403757704943953357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016922 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329559.P13403757704943953357

/-! ## A329559.P16255456891411557385

`∪[A305081(n+1), A017534(n)]`
-/

namespace A329559.P16255456891411557385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017534 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329559.P16255456891411557385

/-! ## A329559.P7066401301310838824

`∪[A305081(n+1), A158604(n)]`
-/

namespace A329559.P7066401301310838824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158604 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329559.P7066401301310838824

/-! ## A329559.P6350425432205843067

`∪[A305081(n+1), A001844(n)²]`
-/

namespace A329559.P6350425432205843067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329559.P6350425432205843067

/-! ## A329559.P2089725182207173517

`∪[A305081(n+1), A016813(n)²]`
-/

namespace A329559.P2089725182207173517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305081 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329559.P2089725182207173517

/-!
# A329560: BII-numbers of antichains of sets with empty intersection.

The programs for A329560, there is no canonical definition to state claims against.
-/

/-! ## A329560.P15804295195089063735

`∩[A326704(n+1), A326911(n+1)]`
-/

namespace A329560.P15804295195089063735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329560.P15804295195089063735

/-!
# A329561: BII-numbers of intersecting antichains of sets.

The programs for A329561, there is no canonical definition to state claims against.
-/

/-! ## A329561.P3274390789390264727

`∩[A326704(n+1), A326910(n+1)]`
-/

namespace A329561.P3274390789390264727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329561.P3274390789390264727

/-! ## A329561.P13669439854919019873

`∩[A326750(n+1), A326910(n+1)]`
-/

namespace A329561.P13669439854919019873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326750 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326910 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329561.P13669439854919019873

/-!
# A329562: a(n) = 2^(sum of digits of n).

The programs for A329562, the canonical program `A329562.P8238521869436212748` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329562 has offset 0).

The definition of A329562 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329562.P8238521869436212748

`2^A007953(n)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A329562

/-- `2^A007953(n)` -/
def P8238521869436212748.Spec : Prop :=
  ∀ n, P8238521869436212748.a n = (A329562 n : ℚ)

end A329562

/-! ## A329562.P9062866340582681055

`2^∑{digits}[n, #]`
-/

namespace A329562.P9062866340582681055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A329562.P9062866340582681055

namespace A329562

/-- `2^∑{digits}[n, #]` -/
def P9062866340582681055.Spec : Prop :=
  ∀ n, (P9062866340582681055.a n : ℤ) = A329562 n

end A329562

/-! ## A329562.P24412009688415282

`∏{digits}[n, 2^#]`
-/

namespace A329562.P24412009688415282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod

end

end A329562.P24412009688415282

namespace A329562

/-- `∏{digits}[n, 2^#]` -/
def P24412009688415282.Spec : Prop :=
  ∀ n, (P24412009688415282.a n : ℤ) = A329562 n

end A329562

/-! ## A329562.P15125026624718994412

`n-A328882(n)`
-/

namespace A329562.P15125026624718994412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A328882 n

end

end A329562.P15125026624718994412

namespace A329562

/-- `n-A328882(n)` -/
def P15125026624718994412.Spec : Prop :=
  ∀ n, P15125026624718994412.a n = A329562 n

end A329562

/-! ## A329562.P5530769528800887354

`A000079(∑{digits}[n, #])`
-/

namespace A329562.P5530769528800887354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A329562.P5530769528800887354

namespace A329562

/-- `A000079(∑{digits}[n, #])` -/
def P5530769528800887354.Spec : Prop :=
  ∀ n, P5530769528800887354.a n = A329562 n

end A329562

/-! ## A329562.P6988069851635081397

`A000079(A007953(n))`
-/

namespace A329562.P6988069851635081397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A007953 n).toNat

end

end A329562.P6988069851635081397

namespace A329562

/-- `A000079(A007953(n))` -/
def P6988069851635081397.Spec : Prop :=
  ∀ n, P6988069851635081397.a n = A329562 n

end A329562

/-! ## A329562.P3633002978647946552

`A016116(A169805(n))`
-/

namespace A329562.P3633002978647946552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016116 (A169805 n).toNat

end

end A329562.P3633002978647946552

namespace A329562

/-- `A016116(A169805(n))` -/
def P3633002978647946552.Spec : Prop :=
  ∀ n, P3633002978647946552.a n = A329562 n

end A329562

/-! ## A329562.P5341384793380550356

`A082693(A118881(n))`
-/

namespace A329562.P5341384793380550356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082693 (A118881 n).toNat

end

end A329562.P5341384793380550356

namespace A329562

/-- `A082693(A118881(n))` -/
def P5341384793380550356.Spec : Prop :=
  ∀ n, P5341384793380550356.a n = A329562 n

end A329562

/-! ## A329562.P559124828719797161

`A011782(A007953(n)+1)`
-/

namespace A329562.P559124828719797161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (A007953 n + 1).toNat

end

end A329562.P559124828719797161

namespace A329562

/-- `A011782(A007953(n)+1)` -/
def P559124828719797161.Spec : Prop :=
  ∀ n, P559124828719797161.a n = A329562 n

end A329562

/-! ## A329562.P549878034986972796

`A131577(A007953(n)+1)`
-/

namespace A329562.P549878034986972796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 (A007953 n + 1).toNat

end

end A329562.P549878034986972796

namespace A329562

/-- `A131577(A007953(n)+1)` -/
def P549878034986972796.Spec : Prop :=
  ∀ n, P549878034986972796.a n = A329562 n

end A329562

/-! ## A329562.P5853649278441796474

`A034008(A007953(n)+2)`
-/

namespace A329562.P5853649278441796474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034008 (A007953 n + 2).toNat

end

end A329562.P5853649278441796474

namespace A329562

/-- `A034008(A007953(n)+2)` -/
def P5853649278441796474.Spec : Prop :=
  ∀ n, P5853649278441796474.a n = A329562 n

end A329562

/-! ## A329562.P13718111362792999083

`A077957(2*A007953(n))`
-/

namespace A329562.P13718111362792999083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (2 * A007953 n).toNat

end

end A329562.P13718111362792999083

namespace A329562

/-- `A077957(2*A007953(n))` -/
def P13718111362792999083.Spec : Prop :=
  ∀ n, P13718111362792999083.a n = A329562 n

end A329562

/-! ## A329562.P13164904471584843860

`A216274(2*A118881(n))`
-/

namespace A329562.P13164904471584843860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216274 (2 * A118881 n).toNat

end

end A329562.P13164904471584843860

namespace A329562

/-- `A216274(2*A118881(n))` -/
def P13164904471584843860.Spec : Prop :=
  ∀ n, P13164904471584843860.a n = A329562 n

end A329562

/-! ## A329562.P1252538960436209472

`A000079(A169805(n)/2)`
-/

namespace A329562.P1252538960436209472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (SequenceMachineLib.roundAway ((A169805 n : ℚ) / 2)).toNat

end

end A329562.P1252538960436209472

namespace A329562

/-- `A000079(A169805(n)/2)` -/
def P1252538960436209472.Spec : Prop :=
  ∀ n, P1252538960436209472.a n = A329562 n

end A329562

/-! ## A329562.P2557491399761208300

`A000079(A062028(n)-n)`
-/

namespace A329562.P2557491399761208300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A062028 n - (n : ℤ)).toNat

end

end A329562.P2557491399761208300

namespace A329562

/-- `A000079(A062028(n)-n)` -/
def P2557491399761208300.Spec : Prop :=
  ∀ n, P2557491399761208300.a n = A329562 n

end A329562

/-! ## A329562.P7717416210136667120

`A059268(2*A007953(n)²)`
-/

namespace A329562.P7717416210136667120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 (2 * A007953 n ^ 2).toNat

end

end A329562.P7717416210136667120

namespace A329562

/-- `A059268(2*A007953(n)²)` -/
def P7717416210136667120.Spec : Prop :=
  ∀ n, P7717416210136667120.a n = A329562 n

end A329562

/-! ## A329562.P9888680074544979127

`A077957(A007953(n)+A007953(n))`
-/

namespace A329562.P9888680074544979127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077957 (A007953 n + A007953 n).toNat

end

end A329562.P9888680074544979127

namespace A329562

/-- `A077957(A007953(n)+A007953(n))` -/
def P9888680074544979127.Spec : Prop :=
  ∀ n, P9888680074544979127.a n = A329562 n

end A329562

/-! ## A329562.P18177067667413540814

`A000079(A061762(n)-A007954(n))`
-/

namespace A329562.P18177067667413540814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A061762 n - A007954 n).toNat

end

end A329562.P18177067667413540814

namespace A329562

/-- `A000079(A061762(n)-A007954(n))` -/
def P18177067667413540814.Spec : Prop :=
  ∀ n, P18177067667413540814.a n = A329562 n

end A329562

/-! ## A329562.P17427374895237648736

`A000165(A007953(n))/A269221(n)`
-/

namespace A329562.P17427374895237648736
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000165 (A007953 n).toNat : ℚ) / (A269221 n : ℚ)

end

end A329562.P17427374895237648736

namespace A329562

/-- `A000165(A007953(n))/A269221(n)` -/
def P17427374895237648736.Spec : Prop :=
  ∀ n, P17427374895237648736.a n = (A329562 n : ℚ)

end A329562

/-! ## A329562.P2239884103800629990

`A000079(A061762(10*n))`
-/

namespace A329562.P2239884103800629990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A061762 (10 * n)).toNat

end

end A329562.P2239884103800629990

namespace A329562

/-- `A000079(A061762(10*n))` -/
def P2239884103800629990.Spec : Prop :=
  ∀ n, P2239884103800629990.a n = A329562 n

end A329562

/-!
# A329569: For all n >= 0, exactly 9 sums are prime among a(n+i) + a(n+j), 0 <= i < j < 6: lexicographically earliest such sequence of distinct nonnegative numbers.

The programs for A329569, there is no canonical definition to state claims against.
-/

/-! ## A329569.P7750946748968668912

`A329572(C(A052265(n), 16)+n)`
-/

namespace A329569.P7750946748968668912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329572 (Nat.choose (A052265 n).toNat 16 + n)

end

end A329569.P7750946748968668912

/-! ## A329569.P493740232381319140

`∑{e}[3^n, A329572(#)]`
-/

namespace A329569.P493740232381319140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A329572 (Nat.factorization (f1 n) p)

end

end A329569.P493740232381319140

/-! ## A329569.P8470454263098009357

`A329572(A055648(n))`
-/

namespace A329569.P8470454263098009357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329572 (A055648 n).toNat

end

end A329569.P8470454263098009357

/-! ## A329569.P17835961542739475475

`A329572(A355246(∑[n]))`
-/

namespace A329569.P17835961542739475475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329572 (A355246 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A329569.P17835961542739475475

/-! ## A329569.P1280174310236470709

`A329572(A004874(n+1))`
-/

namespace A329569.P1280174310236470709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329572 (A004874 (n + 1)).toNat

end

end A329569.P1280174310236470709

/-!
# A329570: a(n) is the least prime P such that log(P)/log(p) >= valuation(n,p) for all primes p.

The programs for A329570, there is no canonical definition to state claims against.
-/

/-! ## A329570.P18249676236174880710

`A007918(A034699(n+1))`
-/

namespace A329570.P18249676236174880710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A034699 (n + 1)).toNat

end

end A329570.P18249676236174880710

/-! ## A329570.P11685220433081236302

`A151800(A034699(n+1)-1)`
-/

namespace A329570.P11685220433081236302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A034699 (n + 1) - 1).toNat

end

end A329570.P11685220433081236302

/-! ## A329570.P10569856689694234749

`A151800(n-A081805(n+1))`
-/

namespace A329570.P10569856689694234749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 ((n : ℤ) - A081805 (n + 1)).toNat

end

end A329570.P10569856689694234749

/-! ## A329570.P6505079488560919006

`A151800(n%A034699(n+1))`
-/

namespace A329570.P6505079488560919006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (Int.tmod (n : ℤ) (A034699 (n + 1))).toNat

end

end A329570.P6505079488560919006

/-! ## A329570.P18186659888911228442

`A007918(1-A081805(n+1)+n)`
-/

namespace A329570.P18186659888911228442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (1 - A081805 (n + 1) + (n : ℤ)).toNat

end

end A329570.P18186659888911228442

/-! ## A329570.P2021513119868948184

`A007918((n+1)/A284600(n+1))`
-/

namespace A329570.P2021513119868948184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A284600 (n + 1) : ℚ))).toNat

end

end A329570.P2021513119868948184

/-! ## A329570.P8716321052488219507

`A308052(2*A034699(n+1))`
-/

namespace A329570.P8716321052488219507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (2 * A034699 (n + 1)).toNat

end

end A329570.P8716321052488219507

/-! ## A329570.P2176139186909099886

`A007918(A081472(n+1)-(n+1))`
-/

namespace A329570.P2176139186909099886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A081472 (n + 1) - (n + 1 : ℤ)).toNat

end

end A329570.P2176139186909099886

/-! ## A329570.P14681137031403540077

`A230775(A034699((n+1)²))`
-/

namespace A329570.P14681137031403540077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A034699 ((n + 1) ^ 2)).toNat

end

end A329570.P14681137031403540077

/-! ## A329570.P6061884715481750668

`A230775(A034699(n+1)^2)`
-/

namespace A329570.P6061884715481750668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A034699 (n + 1) ^ 2).toNat

end

end A329570.P6061884715481750668

/-!
# A329571: a(n) = Product_{prime p} p^floor(log_p P) with P = A329570(n) the least prime with log_p P >= valuation(n,p) for all primes p.

The programs for A329571, there is no canonical definition to state claims against.
-/

/-! ## A329571.P9696162805554447554

`A003418(A329570(n+1))`
-/

namespace A329571.P9696162805554447554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A329570 (n + 1)).toNat

end

end A329571.P9696162805554447554

/-! ## A329571.P386497072595583694

`A003418(A007918(A034699(n+1)))`
-/

namespace A329571.P386497072595583694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A007918 (A034699 (n + 1)).toNat).toNat

end

end A329571.P386497072595583694

/-! ## A329571.P12418176288373447789

`A093919(A008619(A329570(n+1)²))`
-/

namespace A329571.P12418176288373447789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093919 (A008619 (A329570 (n + 1) ^ 2).toNat).toNat

end

end A329571.P12418176288373447789

/-! ## A329571.P17044277660042709994

`A093919(A135020(A329570(n+1)²))`
-/

namespace A329571.P17044277660042709994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093919 (A135020 (A329570 (n + 1) ^ 2).toNat).toNat

end

end A329571.P17044277660042709994

/-!
# A329574: For every n >= 0, exactly 10 sums are prime among a(n+i) + a(n+j), 0 <= i < j < 7; lexicographically earliest such sequence of distinct nonnegative numbers.

The programs for A329574, there is no canonical definition to state claims against.
-/

/-! ## A329574.P17722094745673118290

`record[gcd(n, Δ[A036855(n+1)])]`
-/

namespace A329574.P17722094745673118290
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036855 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329574.P17722094745673118290

/-! ## A329574.P17069533521163728761

`lt[sinh(A230121(3*(n+1))), p?[2*n+1]]`
-/

namespace A329574.P17069533521163728761
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sinh (A230121 (3 * (n + 1)) : ℝ)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A329574.P17069533521163728761

/-! ## A329574.P15777688456432695110

`eq[0, A282192(A061579(n))]`
-/

namespace A329574.P15777688456432695110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282192 (A061579 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A329574.P15777688456432695110

/-! ## A329574.P572324661854779797

`lt[A241349(A049468(n)), 7]`
-/

namespace A329574.P572324661854779797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241349 (A049468 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A329574.P572324661854779797

/-! ## A329574.P13695724051856860706

`eq[A029125(n), A328220(n)]`
-/

namespace A329574.P13695724051856860706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029125 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328220 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329574.P13695724051856860706

/-!
# A329575: Numbers whose smallest Fermi-Dirac factor is 3.

The programs for A329575, the canonical program `A329575.P15824134507803159916` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329575 has offset 1).

The definition of A329575 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A339690, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329575.P15824134507803159916

`3*A339690(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A329575

/-- `3*A339690(n+1)` -/
def P15824134507803159916.Spec : Prop :=
  ∀ n, P15824134507803159916.a n = A329575 (n + 1)

theorem P15824134507803159916.correct : P15824134507803159916.Spec := by
  intro n
  simp only [A329575, Nat.add_sub_cancel]

end A329575

/-! ## A329575.P11015278469169533619

`3*(lt[A007814(A072078(n+1)), 1]+1)`
-/

namespace A329575.P11015278469169533619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A072078 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A329575.P11015278469169533619

namespace A329575

/-- `3*(lt[A007814(A072078(n+1)), 1]+1)` -/
def P11015278469169533619.Spec : Prop :=
  ∀ n, (P11015278469169533619.a n : ℤ) = A329575 (n + 1)

end A329575

/-! ## A329575.P13782791430434454546

`record[(n+1)*A072079(A072078(n+1)²+1)]`
-/

namespace A329575.P13782791430434454546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A072079 (A072078 (n + 1) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329575.P13782791430434454546

namespace A329575

/-- `record[(n+1)*A072079(A072078(n+1)²+1)]` -/
def P13782791430434454546.Spec : Prop :=
  ∀ n, P13782791430434454546.a n = A329575 (n + 1)

end A329575

/-! ## A329575.P4890050968568776835

`eq[2, A302786(n+2)]+2`
-/

namespace A329575.P4890050968568776835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302786 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A329575.P4890050968568776835

namespace A329575

/-- `eq[2, A302786(n+2)]+2` -/
def P4890050968568776835.Spec : Prop :=
  ∀ n, (P4890050968568776835.a n : ℤ) = A329575 (n + 1)

end A329575

/-! ## A329575.P2015128250529778672

`filter[A145204(n+2), A035263(#)]`
-/

namespace A329575.P2015128250529778672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A329575.P2015128250529778672

namespace A329575

/-- `filter[A145204(n+2), A035263(#)]` -/
def P2015128250529778672.Spec : Prop :=
  ∀ n, P2015128250529778672.a n = A329575 (n + 1)

end A329575

/-! ## A329575.P246805341455009282

`filter[A145204(n+2), A182582(#)]`
-/

namespace A329575.P246805341455009282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A329575.P246805341455009282

namespace A329575

/-- `filter[A145204(n+2), A182582(#)]` -/
def P246805341455009282.Spec : Prop :=
  ∀ n, P246805341455009282.a n = A329575 (n + 1)

end A329575

/-! ## A329575.P3187346006300264091

`record[A307150(n+1)/2]`
-/

namespace A329575.P3187346006300264091
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307150 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329575.P3187346006300264091

namespace A329575

/-- `record[A307150(n+1)/2]` -/
def P3187346006300264091.Spec : Prop :=
  ∀ n, P3187346006300264091.a n = (A329575 (n + 1) : ℚ)

end A329575

/-! ## A329575.P15243008411980469338

`A008486(A339690(n+1))`
-/

namespace A329575.P15243008411980469338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A339690 (n + 1)).toNat

end

end A329575.P15243008411980469338

namespace A329575

/-- `A008486(A339690(n+1))` -/
def P15243008411980469338.Spec : Prop :=
  ∀ n, P15243008411980469338.a n = A329575 (n + 1)

end A329575

/-! ## A329575.P2712605654700915908

`filter[A325424(n+1), A035263(#)]`
-/

namespace A329575.P2712605654700915908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A329575.P2712605654700915908

namespace A329575

/-- `filter[A325424(n+1), A035263(#)]` -/
def P2712605654700915908.Spec : Prop :=
  ∀ n, P2712605654700915908.a n = A329575 (n + 1)

end A329575

/-! ## A329575.P9135977700249893647

`filter[A325424(n+1), A182581(#)]`
-/

namespace A329575.P9135977700249893647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325424 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182581 (f1 j).toNat = 1) n)

end

end A329575.P9135977700249893647

namespace A329575

/-- `filter[A325424(n+1), A182581(#)]` -/
def P9135977700249893647.Spec : Prop :=
  ∀ n, P9135977700249893647.a n = A329575 (n + 1)

end A329575

/-! ## A329575.P3849584385556565371

`∩[A145204(n+1), A325424(n+1)]`
-/

namespace A329575.P3849584385556565371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145204 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329575.P3849584385556565371

namespace A329575

/-- `∩[A145204(n+1), A325424(n+1)]` -/
def P3849584385556565371.Spec : Prop :=
  ∀ n, (P3849584385556565371.a n : ℤ) = A329575 (n + 1)

end A329575

/-! ## A329575.P9118973300017478355

`filter[A325420(n+1), A182582(#)]`
-/

namespace A329575.P9118973300017478355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325420 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A329575.P9118973300017478355

namespace A329575

/-- `filter[A325420(n+1), A182582(#)]` -/
def P9118973300017478355.Spec : Prop :=
  ∀ n, P9118973300017478355.a n = A329575 (n + 1)

end A329575

/-! ## A329575.P2695874355895126341

`filter[A325443(n+1), A182582(#)]`
-/

namespace A329575.P2695874355895126341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A329575.P2695874355895126341

namespace A329575

/-- `filter[A325443(n+1), A182582(#)]` -/
def P2695874355895126341.Spec : Prop :=
  ∀ n, P2695874355895126341.a n = A329575 (n + 1)

end A329575

/-! ## A329575.P5788497220013329125

`∩[A325420(n+1), A325424(n+1)]`
-/

namespace A329575.P5788497220013329125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329575.P5788497220013329125

namespace A329575

/-- `∩[A325420(n+1), A325424(n+1)]` -/
def P5788497220013329125.Spec : Prop :=
  ∀ n, (P5788497220013329125.a n : ℤ) = A329575 (n + 1)

end A329575

/-! ## A329575.P252695748988933168

`∩[A325424(n+1), A325443(n+1)]`
-/

namespace A329575.P252695748988933168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325443 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329575.P252695748988933168

namespace A329575

/-- `∩[A325424(n+1), A325443(n+1)]` -/
def P252695748988933168.Spec : Prop :=
  ∀ n, (P252695748988933168.a n : ℤ) = A329575 (n + 1)

end A329575

/-! ## A329575.P17283892972404063857

`filter[A092401(2*(n+1)), A035263(#)]`
-/

namespace A329575.P17283892972404063857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092401 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A329575.P17283892972404063857

namespace A329575

/-- `filter[A092401(2*(n+1)), A035263(#)]` -/
def P17283892972404063857.Spec : Prop :=
  ∀ n, P17283892972404063857.a n = A329575 (n + 1)

end A329575

/-! ## A329575.P9236447331365999908

`filter[A092401(2*(n+1)), A182582(#)]`
-/

namespace A329575.P9236447331365999908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092401 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A329575.P9236447331365999908

namespace A329575

/-- `filter[A092401(2*(n+1)), A182582(#)]` -/
def P9236447331365999908.Spec : Prop :=
  ∀ n, P9236447331365999908.a n = A329575 (n + 1)

end A329575

/-! ## A329575.P7963536206583981823

`filter[A260392(n+1), A182582(#)]`
-/

namespace A329575.P7963536206583981823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260392 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182582 (f1 j).toNat = 1) n)

end

end A329575.P7963536206583981823

namespace A329575

/-- `filter[A260392(n+1), A182582(#)]` -/
def P7963536206583981823.Spec : Prop :=
  ∀ n, P7963536206583981823.a n = A329575 (n + 1)

end A329575

/-! ## A329575.P13978276600810031117

`∩[A260392(n+1), A325424(n+1)]`
-/

namespace A329575.P13978276600810031117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325424 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329575.P13978276600810031117

namespace A329575

/-- `∩[A260392(n+1), A325424(n+1)]` -/
def P13978276600810031117.Spec : Prop :=
  ∀ n, (P13978276600810031117.a n : ℤ) = A329575 (n + 1)

end A329575

/-! ## A329575.P15276936558143330688

`filter[A325464(n+1), A182581(#)]`
-/

namespace A329575.P15276936558143330688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325464 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A182581 (f1 j).toNat = 1) n)

end

end A329575.P15276936558143330688

namespace A329575

/-- `filter[A325464(n+1), A182581(#)]` -/
def P15276936558143330688.Spec : Prop :=
  ∀ n, P15276936558143330688.a n = A329575 (n + 1)

end A329575

/-!
# A329578: First of three consecutive primes with common gap 48.

The programs for A329578, there is no canonical definition to state claims against.
-/

/-! ## A329578.P15877414208671221337

`A053078(n+1)-48`
-/

namespace A329578.P15877414208671221337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053078 (n + 1) - 48

end

end A329578.P15877414208671221337

/-!
# A329582: Numbers between a power and a prime.

The programs for A329582, there is no canonical definition to state claims against.
-/

/-! ## A329582.P12660041333409105477

`∪[A163492(n+1), A329595(n+1)]`
-/

namespace A329582.P12660041333409105477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329595 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A329582.P12660041333409105477

/-! ## A329582.P6554670172778765344

`A000005(∏[A035096(2*n+1)])`
-/

namespace A329582.P6554670172778765344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035096 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A329582.P6554670172778765344

/-! ## A329582.P2040227707526384118

`record[A027611(n+1)%A164528(n+2)]`
-/

namespace A329582.P2040227707526384118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027611 (n + 1)) (A164528 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329582.P2040227707526384118

/-! ## A329582.P5705274880783088319

`A000120(A149145(n))*A080544(n+1)`
-/

namespace A329582.P5705274880783088319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A149145 n).toNat * A080544 (n + 1)

end

end A329582.P5705274880783088319

/-! ## A329582.P12063896784388302716

`A000120(A149145(n))*A004745(n+2)`
-/

namespace A329582.P12063896784388302716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A149145 n).toNat * A004745 (n + 2)

end

end A329582.P12063896784388302716

/-!
# A329583: Numerators of 1 + n^2/4 + period 3: repeat [-1, 1, 1].

The programs for A329583, the canonical program `A329583.P13906209976555148954` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329583 has offset 0).

The definition of A329583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329583.P14534122919466617438

`(n²+4)*(5-3*(-1)^n)/8+(-1)^((n+1)%3)`
-/

namespace A329583.P14534122919466617438
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n ^ 2 + 4 : ℤ) * (5 - 3 * (-1) ^ n) : ℚ) / 8 + ((-1) ^ ((n + 1) % 3) : ℚ)

end

end A329583.P14534122919466617438

namespace A329583

/-- `(n²+4)*(5-3*(-1)^n)/8+(-1)^((n+1)%3)` -/
def P14534122919466617438.Spec : Prop :=
  ∀ n, P14534122919466617438.a n = (A329583 n : ℚ)

end A329583

/-! ## A329583.P13906209976555148954

`A261327(n)+A131561(n+2)`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A329583

/-- `A261327(n)+A131561(n+2)` -/
def P13906209976555148954.Spec : Prop :=
  ∀ n, P13906209976555148954.a n = A329583 n

theorem P13906209976555148954.correct : P13906209976555148954.Spec := by
  intro n
  simp only [A329583]

end A329583

/-! ## A329583.P7890295945850818634

`A261327(n)+Δ[A008611(n)]`
-/

namespace A329583.P7890295945850818634
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 n + (f1 (n + 1) - f1 n)

end

end A329583.P7890295945850818634

namespace A329583

/-- `A261327(n)+Δ[A008611(n)]` -/
def P7890295945850818634.Spec : Prop :=
  ∀ n, P7890295945850818634.a n = A329583 n

end A329583

/-! ## A329583.P8058628660921981708

`A261327(n)+2-A109007(n)`
-/

namespace A329583.P8058628660921981708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 n + (2 - A109007 n)

end

end A329583.P8058628660921981708

namespace A329583

/-- `A261327(n)+2-A109007(n)` -/
def P8058628660921981708.Spec : Prop :=
  ∀ n, P8058628660921981708.a n = A329583 n

end A329583

/-! ## A329583.P18194367914065237157

`A168077(n)+A033429(n)%6`
-/

namespace A329583.P18194367914065237157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 n + Int.tmod (A033429 n) 6

end

end A329583.P18194367914065237157

namespace A329583

/-- `A168077(n)+A033429(n)%6` -/
def P18194367914065237157.Spec : Prop :=
  ∀ n, P18194367914065237157.a n = A329583 n

end A329583

/-! ## A329583.P3864299570215095216

`A261327(n)+A033999(A117909(n))`
-/

namespace A329583.P3864299570215095216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 n + A033999 (A117909 n).toNat

end

end A329583.P3864299570215095216

namespace A329583

/-- `A261327(n)+A033999(A117909(n))` -/
def P3864299570215095216.Spec : Prop :=
  ∀ n, P3864299570215095216.a n = A329583 n

end A329583

/-! ## A329583.P9856352313168117402

`A261327(n)-A033999(A004396(n))`
-/

namespace A329583.P9856352313168117402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 n - A033999 (A004396 n).toNat

end

end A329583.P9856352313168117402

namespace A329583

/-- `A261327(n)-A033999(A004396(n))` -/
def P9856352313168117402.Spec : Prop :=
  ∀ n, P9856352313168117402.a n = A329583 n

end A329583

/-! ## A329583.P17079530880288287974

`A261327(n)+A033999(A004396(n)+1)`
-/

namespace A329583.P17079530880288287974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 n + A033999 (A004396 n + 1).toNat

end

end A329583.P17079530880288287974

namespace A329583

/-- `A261327(n)+A033999(A004396(n)+1)` -/
def P17079530880288287974.Spec : Prop :=
  ∀ n, P17079530880288287974.a n = A329583 n

end A329583

/-! ## A329583.P6350102076427228678

`A261327(n)-ratio[A131561(n)]`
-/

namespace A329583.P6350102076427228678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131561 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A261327 n : ℚ) - (f1 (n + 1) : ℚ) / (f1 n : ℚ)

end

end A329583.P6350102076427228678

namespace A329583

/-- `A261327(n)-ratio[A131561(n)]` -/
def P6350102076427228678.Spec : Prop :=
  ∀ n, P6350102076427228678.a n = (A329583 n : ℚ)

end A329583

/-! ## A329583.P6208902108114653088

`Δ[A168056(n)]+A000034(n)²*A004652(n)`
-/

namespace A329583.P6208902108114653088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000034 n ^ 2 * A004652 n

end

end A329583.P6208902108114653088

namespace A329583

/-- `Δ[A168056(n)]+A000034(n)²*A004652(n)` -/
def P6208902108114653088.Spec : Prop :=
  ∀ n, P6208902108114653088.a n = A329583 n

end A329583

/-! ## A329583.P8998024019318860242

`A061800(A061800(n))+A261327(n)-A061800(n)`
-/

namespace A329583.P8998024019318860242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A061800 n).toNat + (A261327 n - A061800 n)

end

end A329583.P8998024019318860242

namespace A329583

/-- `A061800(A061800(n))+A261327(n)-A061800(n)` -/
def P8998024019318860242.Spec : Prop :=
  ∀ n, P8998024019318860242.a n = A329583 n

end A329583

/-! ## A329583.P2729669121907254295

`A261327(n)+Δ[A008612(2*n)]`
-/

namespace A329583.P2729669121907254295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008612 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261327 n + (f1 (n + 1) - f1 n)

end

end A329583.P2729669121907254295

namespace A329583

/-- `A261327(n)+Δ[A008612(2*n)]` -/
def P2729669121907254295.Spec : Prop :=
  ∀ n, P2729669121907254295.a n = A329583 n

end A329583

/-! ## A329583.P2045360692576778229

`A168077(n)+A010875(A033429(n))`
-/

namespace A329583.P2045360692576778229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168077 n + A010875 (A033429 n).toNat

end

end A329583.P2045360692576778229

namespace A329583

/-- `A168077(n)+A010875(A033429(n))` -/
def P2045360692576778229.Spec : Prop :=
  ∀ n, P2045360692576778229.a n = A329583 n

end A329583

/-! ## A329583.P11004367208582152123

`A061800(A261327(n))`
-/

namespace A329583.P11004367208582152123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061800 (A261327 n).toNat

end

end A329583.P11004367208582152123

namespace A329583

/-- `A061800(A261327(n))` -/
def P11004367208582152123.Spec : Prop :=
  ∀ n, P11004367208582152123.a n = A329583 n

end A329583

/-!
# A329584: phi(A327922(n))/4, for n >= 1, with phi = A000010 (Euler's totient).

The programs for A329584, the canonical program `A329584.P4572012157707219392` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329584 has offset 1).

The definition of A329584 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, A327922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A329584.P4572012157707219392

`A000010(A327922(n+1))/4`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A329584

/-- `A000010(A327922(n+1))/4` -/
def P4572012157707219392.Spec : Prop :=
  ∀ n, P4572012157707219392.a n = (A329584 (n + 1) : ℚ)

end A329584

/-! ## A329584.P14587525184782854278

`A000010(∩[2*n+1, A172019(n+1)])/4`
-/

namespace A329584.P14587525184782854278
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 4

end

end A329584.P14587525184782854278

namespace A329584

/-- `A000010(∩[2*n+1, A172019(n+1)])/4` -/
def P14587525184782854278.Spec : Prop :=
  ∀ n, P14587525184782854278.a n = (A329584 (n + 1) : ℚ)

end A329584

/-! ## A329584.P15657727612758639713

`A023022(lt[2, gcd(8, A000010(n^(n%2)))])/2`
-/

namespace A329584.P15657727612758639713
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 8 (A000010 (n ^ (n % 2)))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023022 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) : ℚ) / 2

end

end A329584.P15657727612758639713

namespace A329584

/-- `A023022(lt[2, gcd(8, A000010(n^(n%2)))])/2` -/
def P15657727612758639713.Spec : Prop :=
  ∀ n, P15657727612758639713.a n = (A329584 (n + 1) : ℚ)

end A329584

/-! ## A329584.P4587926778801800560

`A110655(A000010(A327922(n+1)))`
-/

namespace A329584.P4587926778801800560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 (A000010 (A327922 (n + 1)).toNat).toNat

end

end A329584.P4587926778801800560

namespace A329584

/-- `A110655(A000010(A327922(n+1)))` -/
def P4587926778801800560.Spec : Prop :=
  ∀ n, P4587926778801800560.a n = A329584 (n + 1)

end A329584

/-! ## A329584.P1982524247184807444

`A000010(∩[A172019(n+1), A060747(n)])/4`
-/

namespace A329584.P1982524247184807444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172019 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n) : ℚ) / 4

end

end A329584.P1982524247184807444

namespace A329584

/-- `A000010(∩[A172019(n+1), A060747(n)])/4` -/
def P1982524247184807444.Spec : Prop :=
  ∀ n, P1982524247184807444.a n = (A329584 (n + 1) : ℚ)

end A329584

/-!
# A329585: Irregular triangle read by rows: representative solutions of the congruences x^2 - 1 == 0 (mod m) or (inclusive) x^2 + 1 == 0 (mod m), for m >= 1.

The programs for A329585, there is no canonical definition to state claims against.
-/

/-! ## A329585.P14757246598311280953

`∑{e}[A000079(n), A096107(#+1)]`
-/

namespace A329585.P14757246598311280953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A096107 (Nat.factorization (f1 n).natAbs p + 1)

end

end A329585.P14757246598311280953

/-! ## A329585.P17057077267719699744

`A000120(eq[0, A023416(A290252(n))])`
-/

namespace A329585.P17057077267719699744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 (A290252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A329585.P17057077267719699744

/-! ## A329585.P12263464375220317749

`A000120(eq[A118759(n+1), A267111(n+1)])`
-/

namespace A329585.P12263464375220317749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267111 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A329585.P12263464375220317749

/-! ## A329585.P6995268975800142858

`A229942(A087909(n+1))`
-/

namespace A329585.P6995268975800142858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229942 (A087909 (n + 1)).toNat

end

end A329585.P6995268975800142858

/-! ## A329585.P1742124280478850614

`A347042(n+1)+A085982(A371375(n+1))`
-/

namespace A329585.P1742124280478850614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347042 (n + 1) + A085982 (A371375 (n + 1)).toNat

end

end A329585.P1742124280478850614

/-!
# A329586: Row lengths of A329585: number of solutions of the congruences x^2 == +1 (mod n) or (inclusive) x^2 == -1 (mod n), for n >= 1.

The programs for A329586, the canonical program `A329586.P2238239881953716898` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329586 has offset 1).

The definition of A329586 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A329586.P10469929723435780699

`ceil(cosh(sin(n)))*A086669(n+1)`
-/

namespace A329586.P10469929723435780699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cosh (Real.sin (n : ℝ))⌉ * A086669 (n + 1)

end

end A329586.P10469929723435780699

namespace A329586

/-- `ceil(cosh(sin(n)))*A086669(n+1)` -/
def P10469929723435780699.Spec : Prop :=
  ∀ n, P10469929723435780699.a n = A329586 (n + 1)

end A329586

/-! ## A329586.P2238239881953716898

`(A057427(n)+1)*A086669(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A329586

/-- `(A057427(n)+1)*A086669(n+1)` -/
def P2238239881953716898.Spec : Prop :=
  ∀ n, P2238239881953716898.a n = A329586 (n + 1)

theorem P2238239881953716898.correct : P2238239881953716898.Spec := by
  intro n
  simp only [A329586, Nat.add_sub_cancel]

end A329586

/-! ## A329586.P9294587147997980603

`A356603(A086669(n+1)%(n+1))`
-/

namespace A329586.P9294587147997980603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356603 (Int.tmod (A086669 (n + 1)) (n + 1 : ℤ)).toNat

end

end A329586.P9294587147997980603

namespace A329586

/-- `A356603(A086669(n+1)%(n+1))` -/
def P9294587147997980603.Spec : Prop :=
  ∀ n, P9294587147997980603.a n = A329586 (n + 1)

end A329586

/-! ## A329586.P6184809383276890967

`A000032(C(2, n+2))*A086669(n+1)`
-/

namespace A329586.P6184809383276890967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) * A086669 (n + 1)

end

end A329586.P6184809383276890967

namespace A329586

/-- `A000032(C(2, n+2))*A086669(n+1)` -/
def P6184809383276890967.Spec : Prop :=
  ∀ n, P6184809383276890967.a n = A329586 (n + 1)

end A329586

/-! ## A329586.P5462558881331767742

`A006530(a(n-1))*A086669(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A329586.P5462558881331767742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A006530 (a (n - 1)).toNat * A086669 (n + 1)

end

end A329586.P5462558881331767742

namespace A329586

/-- `A006530(a(n-1))*A086669(n+1)` -/
def P5462558881331767742.Spec : Prop :=
  ∀ n, P5462558881331767742.a n = A329586 (n + 1)

end A329586

/-! ## A329586.P316329648569286461

`A020639(a(n-1))*A086669(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A329586.P316329648569286461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A020639 (a (n - 1)).toNat * A086669 (n + 1)

end

end A329586.P316329648569286461

namespace A329586

/-- `A020639(a(n-1))*A086669(n+1)` -/
def P316329648569286461.Spec : Prop :=
  ∀ n, P316329648569286461.a n = A329586 (n + 1)

end A329586

/-! ## A329586.P7783798413281524774

`A020639(A000010(n+2))*A086669(n+1)`
-/

namespace A329586.P7783798413281524774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000010 (n + 2)).toNat * A086669 (n + 1)

end

end A329586.P7783798413281524774

namespace A329586

/-- `A020639(A000010(n+2))*A086669(n+1)` -/
def P7783798413281524774.Spec : Prop :=
  ∀ n, P7783798413281524774.a n = A329586 (n + 1)

end A329586

/-! ## A329586.P6010479841820761452

`A086669(n+1)*A086669(A224450(n+1))`
-/

namespace A329586.P6010479841820761452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086669 (n + 1) * A086669 (A224450 (n + 1)).toNat

end

end A329586.P6010479841820761452

namespace A329586

/-- `A086669(n+1)*A086669(A224450(n+1))` -/
def P6010479841820761452.Spec : Prop :=
  ∀ n, P6010479841820761452.a n = A329586 (n + 1)

end A329586

/-!
# A329588: Number of representative solutions (a, b) of the complex congruence z^2 == +1 (mod m) with z = a + b*i and nonvanishing a*b.

The programs for A329588, there is no canonical definition to state claims against.
-/

/-! ## A329588.P16019535505111833953

`A278228(gcd(A004512(n), A259132(n+1)))`
-/

namespace A329588.P16019535505111833953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278228 (Int.gcd (A004512 n) (A259132 (n + 1)))

end

end A329588.P16019535505111833953

/-!
# A329589: Odd integers which are not a positive power of a single prime and have at least one prime divisor 1 (mod 4).

The programs for A329589, there is no canonical definition to state claims against.
-/

/-! ## A329589.P13255541258881744208

`filter[A309812(n+1), A143731(#)]`
-/

namespace A329589.P13255541258881744208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A329589.P13255541258881744208

/-! ## A329589.P17328889259884185428

`filter[A309812(n+1), A354108(#)]`
-/

namespace A329589.P17328889259884185428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354108 (f1 j).toNat = 1) n)

end

end A329589.P17328889259884185428

/-! ## A329589.P16006697332965695307

`∩[A009003(n+1), A061346(n+1)]`
-/

namespace A329589.P16006697332965695307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329589.P16006697332965695307

/-! ## A329589.P8479071001675377623

`∩[A009003(n+1), A257591(n+1)]`
-/

namespace A329589.P8479071001675377623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257591 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329589.P8479071001675377623

/-! ## A329589.P16024472378553562406

`∩[A024619(n+1), A309812(n+1)]`
-/

namespace A329589.P16024472378553562406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329589.P16024472378553562406

/-! ## A329589.P8779078364339932780

`∩[A033949(n+1), A309812(n+1)]`
-/

namespace A329589.P8779078364339932780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033949 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329589.P8779078364339932780

/-! ## A329589.P4430777681663511570

`∩[A061346(n+1), A309812(n+1)]`
-/

namespace A329589.P4430777681663511570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061346 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329589.P4430777681663511570

/-! ## A329589.P3554954127575923681

`∩[A062974(n+1), A309812(n+1)]`
-/

namespace A329589.P3554954127575923681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329589.P3554954127575923681

/-! ## A329589.P12623475138318610700

`∩[A070537(n+1), A309812(n+1)]`
-/

namespace A329589.P12623475138318610700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309812 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A329589.P12623475138318610700

/-!
# A329590: Odd numbers k that cannot be expressed as k = p+q+r, with p prime and (q, r) a pair of twin primes.

The programs for A329590, there is no canonical definition to state claims against.
-/

/-! ## A329590.P1042011101275149620

`record[A030101(A092982(n+1)*A328114(n+1))]`
-/

namespace A329590.P1042011101275149620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A092982 (n + 1) * A328114 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A329590.P1042011101275149620

/-!
# A329593: a(n) = (2^(A003558(n)) - A332433(n))/(2*n+1), for n >= 0.

The programs for A329593, there is no canonical definition to state claims against.
-/

/-! ## A329593.P13929012559766370199

`(2^A003558(n)-A332433(n))/(2*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A329593.P13929012559766370199
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (A003558 n : ℤ) - (A332433 n : ℚ)) / (2 * n + 1 : ℚ)

end

end A329593.P13929012559766370199

/-! ## A329593.P12103447348015823233

`ceil(A173033(A003558(n))/A017113(n))`
-/

namespace A329593.P12103447348015823233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173033 (A003558 n).toNat : ℚ) / (A017113 n : ℚ)⌉

end

end A329593.P12103447348015823233

/-! ## A329593.P12654743642772611100

`A141707(n+1)*A143069(A285068(n))`
-/

namespace A329593.P12654743642772611100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141707 (n + 1) * A143069 (A285068 n).toNat

end

end A329593.P12654743642772611100

/-!
# A329598: Partial sums of the nontriangular numbers (A014132).

The programs for A329598, the canonical program `A329598.P6468722656511072461` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A329598 has offset 1).

The definition of A329598 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A329598.P6468722656511072461

`A000217(n+1)+A060432(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A329598

/-- `A000217(n+1)+A060432(n+1)` -/
def P6468722656511072461.Spec : Prop :=
  ∀ n, P6468722656511072461.a n = A329598 (n + 1)

theorem P6468722656511072461.correct : P6468722656511072461.Spec := by
  intro n
  simp only [A329598, Nat.add_sub_cancel]

end A329598

/-! ## A329598.P11446639316296878568

`∑[comp[∑[n]]]`
-/

namespace A329598.P11446639316296878568
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329598.P11446639316296878568

namespace A329598

/-- `∑[comp[∑[n]]]` -/
def P11446639316296878568.Spec : Prop :=
  ∀ n, (P11446639316296878568.a n : ℤ) = A329598 (n + 1)

end A329598

/-! ## A329598.P354860678281944264

`comp[C(n, 2)]+a(n-1)` with `a(0)=2`
-/

namespace A329598.P354860678281944264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + a (n - 1)

end

end A329598.P354860678281944264

namespace A329598

/-- `comp[C(n, 2)]+a(n-1)` -/
def P354860678281944264.Spec : Prop :=
  ∀ n, (P354860678281944264.a n : ℤ) = A329598 (n + 1)

end A329598

/-! ## A329598.P7773871678379337247

`∑[char[∑[n]]+1]+a(n-1)` with `a(0)=2`
-/

namespace A329598.P7773871678379337247
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 1)

end

end A329598.P7773871678379337247

namespace A329598

/-- `∑[char[∑[n]]+1]+a(n-1)` -/
def P7773871678379337247.Spec : Prop :=
  ∀ n, (P7773871678379337247.a n : ℤ) = A329598 (n + 1)

end A329598

/-! ## A329598.P13890319506195485577

`∑[∑[char[∑[n]]+1]]%(n+2)²`
-/

namespace A329598.P13890319506195485577
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f3 j = n then 1 else 0) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 2) ^ 2

end

end A329598.P13890319506195485577

namespace A329598

/-- `∑[∑[char[∑[n]]+1]]%(n+2)²` -/
def P13890319506195485577.Spec : Prop :=
  ∀ n, (P13890319506195485577.a n : ℤ) = A329598 (n + 1)

end A329598

/-! ## A329598.P14893778205978303931

`a(n-1)+round(sqrt(Δ[n²]))+n+1` with `a(0)=2`
-/

namespace A329598.P14893778205978303931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (SequenceMachineLib.roundAway (Real.sqrt ((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ)) + (n + 1 : ℤ))

end

end A329598.P14893778205978303931

namespace A329598

/-- `a(n-1)+round(sqrt(Δ[n²]))+n+1` -/
def P14893778205978303931.Spec : Prop :=
  ∀ n, P14893778205978303931.a n = A329598 (n + 1)

end A329598

/-! ## A329598.P16940289025086515214

`A006463(n+1)+∑[n+2]`
-/

namespace A329598.P16940289025086515214
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006463 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A329598.P16940289025086515214

namespace A329598

/-- `A006463(n+1)+∑[n+2]` -/
def P16940289025086515214.Spec : Prop :=
  ∀ n, P16940289025086515214.a n = A329598 (n + 1)

end A329598

/-! ## A329598.P3966035940532564188

`A171152(n+1)-∑[n+1]`
-/

namespace A329598.P3966035940532564188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171152 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A329598.P3966035940532564188

namespace A329598

/-- `A171152(n+1)-∑[n+1]` -/
def P3966035940532564188.Spec : Prop :=
  ∀ n, P3966035940532564188.a n = A329598 (n + 1)

end A329598

/-! ## A329598.P10747566182142617035

`lcm(∑[A014132(n+1)], A014077(n+2))`
-/

namespace A329598.P10747566182142617035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A014077 (n + 2))

end

end A329598.P10747566182142617035

namespace A329598

/-- `lcm(∑[A014132(n+1)], A014077(n+2))` -/
def P10747566182142617035.Spec : Prop :=
  ∀ n, (P10747566182142617035.a n : ℤ) = A329598 (n + 1)

end A329598

/-! ## A329598.P1209671387781124604

`A332027(n+1)+A000217(n)-A002024(n+1)`
-/

namespace A329598.P1209671387781124604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332027 (n + 1) + (A000217 n - A002024 (n + 1))

end

end A329598.P1209671387781124604

namespace A329598

/-- `A332027(n+1)+A000217(n)-A002024(n+1)` -/
def P1209671387781124604.Spec : Prop :=
  ∀ n, P1209671387781124604.a n = A329598 (n + 1)

theorem P1209671387781124604.correct : P1209671387781124604.Spec := by
  intro n
  simp only [A329598, Nat.add_sub_cancel, A329598.P1209671387781124604.a, A329598.P6468722656511072461.a, A000217, A000217.P10269402890581615239.a, A002024, A002024.P11700297927830783882.a, A060432, A060432.P9064666053418794146.a, A332027, A332027.P851931631810263331.a, A000330, A000330.P6574240937923917945.a, A003056, A003056.P5318256527314048597.a, A057944, A057944.P16851463738746886639.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A329598

/-! ## A329598.P16808435996935743347

`A000217(n+1)+A332027(n+1)-A014132(n+1)`
-/

namespace A329598.P16808435996935743347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A332027 (n + 1) - A014132 (n + 1))

end

end A329598.P16808435996935743347

namespace A329598

/-- `A000217(n+1)+A332027(n+1)-A014132(n+1)` -/
def P16808435996935743347.Spec : Prop :=
  ∀ n, P16808435996935743347.a n = A329598 (n + 1)

end A329598

/-! ## A329598.P14764300477696890000

`A000217(n+1)+A075349(n+2)-1`
-/

namespace A329598.P14764300477696890000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (n + 1) + (A075349 (n + 2) - 1)

end

end A329598.P14764300477696890000

namespace A329598

/-- `A000217(n+1)+A075349(n+2)-1` -/
def P14764300477696890000.Spec : Prop :=
  ∀ n, P14764300477696890000.a n = A329598 (n + 1)

end A329598

/-! ## A329598.P15016044464431775075

`A035253(n+2)+3*n+2`
-/

namespace A329598.P15016044464431775075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035253 (n + 2) + (3 * n + 2 : ℤ)

end

end A329598.P15016044464431775075

namespace A329598

/-- `A035253(n+2)+3*n+2` -/
def P15016044464431775075.Spec : Prop :=
  ∀ n, P15016044464431775075.a n = A329598 (n + 1)

end A329598

/-! ## A329598.P13605300448142038810

`∑[lt[1, A007318(n)]+n]/2`
-/

namespace A329598.P13605300448142038810
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A329598.P13605300448142038810

namespace A329598

/-- `∑[lt[1, A007318(n)]+n]/2` -/
def P13605300448142038810.Spec : Prop :=
  ∀ n, P13605300448142038810.a n = (A329598 (n + 1) : ℚ)

end A329598

/-! ## A329598.P1921640241639783362

`A134519(2*(n+1))+A006463(n+1)+n`
-/

namespace A329598.P1921640241639783362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134519 (2 * (n + 1)) + (A006463 (n + 1) + (n : ℤ))

end

end A329598.P1921640241639783362

namespace A329598

/-- `A134519(2*(n+1))+A006463(n+1)+n` -/
def P1921640241639783362.Spec : Prop :=
  ∀ n, P1921640241639783362.a n = A329598 (n + 1)

end A329598

/-! ## A329598.P15307291128567526894

`A014072(3*n+2)+∑[A014132(n+1)]`
-/

namespace A329598.P15307291128567526894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014072 (3 * n + 2) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A329598.P15307291128567526894

namespace A329598

/-- `A014072(3*n+2)+∑[A014132(n+1)]` -/
def P15307291128567526894.Spec : Prop :=
  ∀ n, P15307291128567526894.a n = A329598 (n + 1)

end A329598

/-! ## A329598.P2152577864122802422

`A014132(A000217(n+1))+A006463(n+1)`
-/

namespace A329598.P2152577864122802422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A000217 (n + 1)).toNat + A006463 (n + 1)

end

end A329598.P2152577864122802422

namespace A329598

/-- `A014132(A000217(n+1))+A006463(n+1)` -/
def P2152577864122802422.Spec : Prop :=
  ∀ n, P2152577864122802422.a n = A329598 (n + 1)

end A329598

/-!
# A329599: Numbers that are sums of consecutive dodecahedral numbers (A006566).

The programs for A329599, there is no canonical definition to state claims against.
-/

/-! ## A329599.P538121928212318462

`A213526(A001096(n)*A033121(n+1))`
-/

namespace A329599.P538121928212318462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213526 (A001096 n * A033121 (n + 1)).toNat

end

end A329599.P538121928212318462

/-! ## A329599.P16936513758492983604

`eq[A135539(A079210(n+1)), A331919(n)]`
-/

namespace A329599.P16936513758492983604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135539 (A079210 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331919 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A329599.P16936513758492983604

