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
import Seq.B000.C028
import Seq.B000.C029
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
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
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
# A215200: Triangle read by rows, Kronecker symbol (n-k|k) for n >= 1, 1 <= k <= n.

The programs for A215200, there is no canonical definition to state claims against.
-/

/-! ## A215200.P17982866191147633683

`A089045(A173018(n)+6)`
-/

namespace A215200.P17982866191147633683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089045 (A173018 n + 6).toNat

end

end A215200.P17982866191147633683

/-! ## A215200.P11852826037544702484

`A134452(A173018(n)²)`
-/

namespace A215200.P11852826037544702484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134452 (A173018 n ^ 2).toNat

end

end A215200.P11852826037544702484

/-! ## A215200.P15082841291867020260

`A301850(A173018(n)²)`
-/

namespace A215200.P15082841291867020260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301850 (A173018 n ^ 2).toNat

end

end A215200.P15082841291867020260

/-! ## A215200.P15968338405878252965

`A016396(A173018(n)+1)`
-/

namespace A215200.P15968338405878252965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016396 (A173018 n + 1).toNat

end

end A215200.P15968338405878252965

/-! ## A215200.P14027921629093145072

`A022958(A173018(n)²)%2`
-/

namespace A215200.P14027921629093145072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022958 (A173018 n ^ 2).toNat) 2

end

end A215200.P14027921629093145072

/-!
# A215201: Central coefficients in Product_{k=0..n-1} (1 + 2^k*x + x^2).

The programs for A215201, there is no canonical definition to state claims against.
-/

/-! ## A215201.P18420598147039460447

`A007918(A193660(n))-1`
-/

namespace A215201.P18420598147039460447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A193660 n).toNat - 1

end

end A215201.P18420598147039460447

/-! ## A215201.P9446998847555854730

`A000015(A193660(n))-A276134(n)`
-/

namespace A215201.P9446998847555854730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000015 (A193660 n).toNat - A276134 n

end

end A215201.P9446998847555854730

/-!
# A215202: Irregular triangle in which n-th row gives m in 1, ..., n-1 such that m^2 == m (mod n).

The programs for A215202, the canonical program `A215202.P9003233885417552104` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215202 has offset 2).

The definition of A215202 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 398 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215202.P9003233885417552104

`A128227(eq[A048152(n+1), A128227(n)])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215202

/-- `A128227(eq[A048152(n+1), A128227(n)])` -/
def P9003233885417552104.Spec : Prop :=
  ∀ n, P9003233885417552104.a n = A215202 (n + 2)

theorem P9003233885417552104.correct : P9003233885417552104.Spec := by
  intro n
  simp only [A215202, Nat.add_sub_cancel]

end A215202

/-! ## A215202.P12977694390586938246

`A193738(eq[A048152(n+1), A193738(n)])`
-/

namespace A215202.P12977694390586938246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A215202.P12977694390586938246

namespace A215202

/-- `A193738(eq[A048152(n+1), A193738(n)])` -/
def P12977694390586938246.Spec : Prop :=
  ∀ n, P12977694390586938246.a n = A215202 (n + 2)

end A215202

/-! ## A215202.P10991019344809843160

`A329534(lt[1, A206778(n+1)])`
-/

namespace A215202.P10991019344809843160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A215202.P10991019344809843160

namespace A215202

/-- `A329534(lt[1, A206778(n+1)])` -/
def P10991019344809843160.Spec : Prop :=
  ∀ n, P10991019344809843160.a n = A215202 (n + 2)

end A215202

/-! ## A215202.P3876663384226010539

`A329534(lt[1, A329534(n+1)])`
-/

namespace A215202.P3876663384226010539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329534 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329534 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A215202.P3876663384226010539

namespace A215202

/-- `A329534(lt[1, A329534(n+1)])` -/
def P3876663384226010539.Spec : Prop :=
  ∀ n, P3876663384226010539.a n = A215202 (n + 2)

end A215202

/-!
# A215203: a(0) = 0, a(n) = a(n - 1)*2^(n + 1) + 2^n - 1. That is, add one 0 and n 1's to the binary representation of previous term.

The programs for A215203, the canonical program `A215203.P13467811047935136745` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215203 has offset 0).

The definition of A215203 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*2^(n+1)+2^n-1` (program `A215203.P13467811047935136745`, by `A215203.P13467811047935136745.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215203.P13467811047935136745

`a(n-1)*2^(n+1)+2^n-1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215203

/-- `a(n-1)*2^(n+1)+2^n-1` -/
def P13467811047935136745.Spec : Prop :=
  ∀ n, P13467811047935136745.a n = A215203 n

theorem P13467811047935136745.correct : P13467811047935136745.Spec := by
  intro n
  simp only [A215203]

end A215203

/-! ## A215203.P11667587990566970827

`(2*a(n-1)+1)*2^n-1` with `a(0)=0`
-/

namespace A215203.P11667587990566970827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 * a (n - 1) + 1) * (2 ^ n : ℤ) - 1

end

end A215203.P11667587990566970827

namespace A215203

/-- `(2*a(n-1)+1)*2^n-1` -/
def P11667587990566970827.Spec : Prop :=
  ∀ n, P11667587990566970827.a n = A215203 n

theorem P11667587990566970827.correct : P11667587990566970827.Spec := by
  intro n
  simp only [A215203, Nat.add_sub_cancel, A215203.P11667587990566970827.a, A215203.P13467811047935136745.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215203

/-! ## A215203.P1280345062268722830

`floor(A073588(n+1)/2)`
-/

namespace A215203.P1280345062268722830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A073588 (n + 1) : ℚ) / 2⌋

end

end A215203.P1280345062268722830

namespace A215203

/-- `floor(A073588(n+1)/2)` -/
def P1280345062268722830.Spec : Prop :=
  ∀ n, P1280345062268722830.a n = A215203 n

end A215203

/-! ## A215203.P15213157383779049512

`abs((2*a(n-1)+1)*A000079(n)-1)` with `a(0)=0`
-/

namespace A215203.P15213157383779049512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |(2 * a (n - 1) + 1) * A000079 n - 1|

end

end A215203.P15213157383779049512

namespace A215203

/-- `abs((2*a(n-1)+1)*A000079(n)-1)` -/
def P15213157383779049512.Spec : Prop :=
  ∀ n, P15213157383779049512.a n = A215203 n

end A215203

/-! ## A215203.P11237952814692753100

`or(2*a(n-1)*2^n, ∑[A131577(n)])` with `a(0)=0`
-/

namespace A215203.P11237952814692753100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  Int.lor (2 * a (n - 1) * (2 ^ n : ℤ)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215203.P11237952814692753100

namespace A215203

/-- `or(2*a(n-1)*2^n, ∑[A131577(n)])` -/
def P11237952814692753100.Spec : Prop :=
  ∀ n, P11237952814692753100.a n = A215203 n

end A215203

/-!
# A215204: Number A(n,k) of solid standard Young tableaux of cylindrical shape lambda X k, where lambda ranges over all partitions of n; square array A(n,k), n>=0, k>=0, read by antidiagonals.

The programs for A215204, there is no canonical definition to state claims against.
-/

/-! ## A215204.P9605456228293222091

`A260876(n)-A071986(A259465(n))`
-/

namespace A215204.P9605456228293222091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260876 n - A071986 (A259465 n).toNat

end

end A215204.P9605456228293222091

/-! ## A215204.P18354858877224577164

`A000005(A140207(n)^A054911(n))`
-/

namespace A215204.P18354858877224577164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A140207 n : ℚ) ^ (A054911 n : ℤ))).toNat

end

end A215204.P18354858877224577164

/-! ## A215204.P17562255011506967561

`A000005(A104763(n+1)^A054911(n))`
-/

namespace A215204.P17562255011506967561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A104763 (n + 1) : ℚ) ^ (A054911 n : ℤ))).toNat

end

end A215204.P17562255011506967561

/-! ## A215204.P8393414027979621763

`A001222(A140207(n)^A054911(n))+1`
-/

namespace A215204.P8393414027979621763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A140207 n : ℚ) ^ (A054911 n : ℤ))).toNat + 1

end

end A215204.P8393414027979621763

/-! ## A215204.P8621622796570378213

`A018321(A208447(n)^A008284(n+1))`
-/

namespace A215204.P8621622796570378213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018321 (SequenceMachineLib.roundAway ((A208447 n : ℚ) ^ (A008284 (n + 1) : ℤ))).toNat

end

end A215204.P8621622796570378213

/-!
# A215205: a(n) = (-1)^n * (A060819(n) + A060819(n+1)).

The programs for A215205, the canonical program `A215205.P17079009654100327279` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215205 has offset 0).

The definition of A215205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215205.P17268859989007593387

`Δ[n*(1-2/gcd(4, n))²]-∑[-(n*(-1)^n)]`
-/

namespace A215205.P17268859989007593387
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (1 - 2 / (Nat.gcd 4 n : ℚ)) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n : ℤ) * (-1) ^ n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ)

end

end A215205.P17268859989007593387

namespace A215205

/-- `Δ[n*(1-2/gcd(4, n))²]-∑[-(n*(-1)^n)]` -/
def P17268859989007593387.Spec : Prop :=
  ∀ n, P17268859989007593387.a n = (A215205 n : ℚ)

end A215205

/-! ## A215205.P17079009654100327279

`Δ[A316631(n)]-A001057(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215205

/-- `Δ[A316631(n)]-A001057(n)` -/
def P17079009654100327279.Spec : Prop :=
  ∀ n, P17079009654100327279.a n = A215205 n

theorem P17079009654100327279.correct : P17079009654100327279.Spec := by
  intro n
  simp only [A215205]

end A215205

/-! ## A215205.P9333060146927350619

`Δ[A026741(A026741(n))*A062157(n)]`
-/

namespace A215205.P9333060146927350619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 n).toNat * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215205.P9333060146927350619

namespace A215205

/-- `Δ[A026741(A026741(n))*A062157(n)]` -/
def P9333060146927350619.Spec : Prop :=
  ∀ n, P9333060146927350619.a n = A215205 n

end A215205

/-! ## A215205.P4421029592423665887

`Δ[A176447(n/A040001(A026741(n)))]`
-/

namespace A215205.P4421029592423665887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176447 (SequenceMachineLib.roundAway ((n : ℚ) / (A040001 (A026741 n).toNat : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215205.P4421029592423665887

namespace A215205

/-- `Δ[A176447(n/A040001(A026741(n)))]` -/
def P4421029592423665887.Spec : Prop :=
  ∀ n, P4421029592423665887.a n = A215205 n

end A215205

/-! ## A215205.P3257337459666642213

`A001057(n)+Δ[A255563(n)]`
-/

namespace A215205.P3257337459666642213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255563 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n + (f1 (n + 1) - f1 n)

end

end A215205.P3257337459666642213

namespace A215205

/-- `A001057(n)+Δ[A255563(n)]` -/
def P3257337459666642213.Spec : Prop :=
  ∀ n, P3257337459666642213.a n = A215205 n

end A215205

/-! ## A215205.P4335559723097738340

`Δ[A255563(n)+A142150(n)]`
-/

namespace A215205.P4335559723097738340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255563 n + A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215205.P4335559723097738340

namespace A215205

/-- `Δ[A255563(n)+A142150(n)]` -/
def P4335559723097738340.Spec : Prop :=
  ∀ n, P4335559723097738340.a n = A215205 n

end A215205

/-! ## A215205.P8210312588484142722

`Δ[A255563(n)+A158416(n)]`
-/

namespace A215205.P8210312588484142722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255563 n + A158416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215205.P8210312588484142722

namespace A215205

/-- `Δ[A255563(n)+A158416(n)]` -/
def P8210312588484142722.Spec : Prop :=
  ∀ n, P8210312588484142722.a n = A215205 n

end A215205

/-! ## A215205.P348893005508642420

`Δ[A316631(n)-A142150(n)]`
-/

namespace A215205.P348893005508642420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n - A142150 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215205.P348893005508642420

namespace A215205

/-- `Δ[A316631(n)-A142150(n)]` -/
def P348893005508642420.Spec : Prop :=
  ∀ n, P348893005508642420.a n = A215205 n

end A215205

/-! ## A215205.P8344940831749873444

`Δ[A026741(A026741(n))*A165326(n)]`
-/

namespace A215205.P8344940831749873444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 n).toNat * A165326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215205.P8344940831749873444

namespace A215205

/-- `Δ[A026741(A026741(n))*A165326(n)]` -/
def P8344940831749873444.Spec : Prop :=
  ∀ n, P8344940831749873444.a n = A215205 n

end A215205

/-! ## A215205.P3683269074477447604

`Δ[A316631(n)-A316631(2*n)]`
-/

namespace A215205.P3683269074477447604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n - A316631 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215205.P3683269074477447604

namespace A215205

/-- `Δ[A316631(n)-A316631(2*n)]` -/
def P3683269074477447604.Spec : Prop :=
  ∀ n, P3683269074477447604.a n = A215205 n

end A215205

/-! ## A215205.P5302215504634936641

`Δ[A142150(A001281(n))-A008619(n)]`
-/

namespace A215205.P5302215504634936641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A001281 n).toNat - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215205.P5302215504634936641

namespace A215205

/-- `Δ[A142150(A001281(n))-A008619(n)]` -/
def P5302215504634936641.Spec : Prop :=
  ∀ n, P5302215504634936641.a n = A215205 n

end A215205

/-! ## A215205.P10018923264874403960

`Δ[A051724(3*n)*A062157(n)]`
-/

namespace A215205.P10018923264874403960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (3 * n) * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215205.P10018923264874403960

namespace A215205

/-- `Δ[A051724(3*n)*A062157(n)]` -/
def P10018923264874403960.Spec : Prop :=
  ∀ n, P10018923264874403960.a n = A215205 n

end A215205

/-! ## A215205.P3651470245918699550

`Δ[A316631(n)-A007318(A101881(n))]`
-/

namespace A215205.P3651470245918699550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316631 n - A007318 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215205.P3651470245918699550

namespace A215205

/-- `Δ[A316631(n)-A007318(A101881(n))]` -/
def P3651470245918699550.Spec : Prop :=
  ∀ n, P3651470245918699550.a n = A215205 n

end A215205

/-! ## A215205.P11329936532959732136

`Δ[A176447(n)/A040001(A176447(n)²)]`
-/

namespace A215205.P11329936532959732136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176447 n : ℚ) / (A040001 (A176447 n ^ 2).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215205.P11329936532959732136

namespace A215205

/-- `Δ[A176447(n)/A040001(A176447(n)²)]` -/
def P11329936532959732136.Spec : Prop :=
  ∀ n, P11329936532959732136.a n = (A215205 n : ℚ)

end A215205

/-!
# A215206: Primes congruent to {2, 7} mod 11.

The programs for A215206, the canonical program `A215206.P4497237975855598041` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215206 has offset 1).

The definition of A215206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215206.P4497237975855598041

`∪[A090187(n+1), A141854(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215206

/-- `∪[A090187(n+1), A141854(n+1)]` -/
def P4497237975855598041.Spec : Prop :=
  ∀ n, (P4497237975855598041.a n : ℤ) = A215206 (n + 1)

theorem P4497237975855598041.correct : P4497237975855598041.Spec := by
  intro n
  simp only [A215206, Nat.add_sub_cancel]

end A215206

/-! ## A215206.P4075440760518623149

`p?[a(n-2)+11]` with `a(0)=2, a(1)=7`
-/

namespace A215206.P4075440760518623149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  f1 (n - 2) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215206.P4075440760518623149

namespace A215206

/-- `p?[a(n-2)+11]` -/
def P4075440760518623149.Spec : Prop :=
  ∀ n, (P4075440760518623149.a n : ℤ) = A215206 (n + 1)

end A215206

/-! ## A215206.P12206346490348088275

`p?[ceil((11*n+3)/2)]`
-/

namespace A215206.P12206346490348088275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(11 * n + 3 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215206.P12206346490348088275

namespace A215206

/-- `p?[ceil((11*n+3)/2)]` -/
def P12206346490348088275.Spec : Prop :=
  ∀ n, P12206346490348088275.a n = A215206 (n + 1)

end A215206

/-! ## A215206.P1386224288938642886

`∩[A167134(n+1), A191060(n+1)]`
-/

namespace A215206.P1386224288938642886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P1386224288938642886

namespace A215206

/-- `∩[A167134(n+1), A191060(n+1)]` -/
def P1386224288938642886.Spec : Prop :=
  ∀ n, (P1386224288938642886.a n : ℤ) = A215206 (n + 1)

end A215206

/-! ## A215206.P6846205176640917542

`∩[A191060(n+1), A215210(n+1)]`
-/

namespace A215206.P6846205176640917542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215210 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P6846205176640917542

namespace A215206

/-- `∩[A191060(n+1), A215210(n+1)]` -/
def P6846205176640917542.Spec : Prop :=
  ∀ n, (P6846205176640917542.a n : ℤ) = A215206 (n + 1)

end A215206

/-! ## A215206.P4282171366442233270

`filter[A168465(n+1), A010051(#)]`
-/

namespace A215206.P4282171366442233270
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A215206.P4282171366442233270

namespace A215206

/-- `filter[A168465(n+1), A010051(#)]` -/
def P4282171366442233270.Spec : Prop :=
  ∀ n, P4282171366442233270.a n = A215206 (n + 1)

end A215206

/-! ## A215206.P15907346687911132944

`filter[A168465(n+1), A302777(#)]`
-/

namespace A215206.P15907346687911132944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A215206.P15907346687911132944

namespace A215206

/-- `filter[A168465(n+1), A302777(#)]` -/
def P15907346687911132944.Spec : Prop :=
  ∀ n, P15907346687911132944.a n = A215206 (n + 1)

end A215206

/-! ## A215206.P16670641081477506637

`filter[A168465(n+1), A323153(#)]`
-/

namespace A215206.P16670641081477506637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A215206.P16670641081477506637

namespace A215206

/-- `filter[A168465(n+1), A323153(#)]` -/
def P16670641081477506637.Spec : Prop :=
  ∀ n, P16670641081477506637.a n = A215206 (n + 1)

end A215206

/-! ## A215206.P13024345504221504759

`filter[A168465(n+1), A355937(#)]`
-/

namespace A215206.P13024345504221504759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A215206.P13024345504221504759

namespace A215206

/-- `filter[A168465(n+1), A355937(#)]` -/
def P13024345504221504759.Spec : Prop :=
  ∀ n, P13024345504221504759.a n = A215206 (n + 1)

end A215206

/-! ## A215206.P4726323403069284064

`record[A020639(A193910(n+1)+n)]`
-/

namespace A215206.P4726323403069284064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A193910 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215206.P4726323403069284064

namespace A215206

/-- `record[A020639(A193910(n+1)+n)]` -/
def P4726323403069284064.Spec : Prop :=
  ∀ n, P4726323403069284064.a n = A215206 (n + 1)

end A215206

/-! ## A215206.P6269470201673697191

`∩[A000040(n+1), A168465(n+1)]`
-/

namespace A215206.P6269470201673697191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P6269470201673697191

namespace A215206

/-- `∩[A000040(n+1), A168465(n+1)]` -/
def P6269470201673697191.Spec : Prop :=
  ∀ n, (P6269470201673697191.a n : ℤ) = A215206 (n + 1)

end A215206

/-! ## A215206.P16420137116098806788

`∩[A000430(n+1), A168465(n+1)]`
-/

namespace A215206.P16420137116098806788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P16420137116098806788

namespace A215206

/-- `∩[A000430(n+1), A168465(n+1)]` -/
def P16420137116098806788.Spec : Prop :=
  ∀ n, (P16420137116098806788.a n : ℤ) = A215206 (n + 1)

end A215206

/-! ## A215206.P14138738095296622071

`∩[A008578(n+1), A168465(n+1)]`
-/

namespace A215206.P14138738095296622071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P14138738095296622071

namespace A215206

/-- `∩[A008578(n+1), A168465(n+1)]` -/
def P14138738095296622071.Spec : Prop :=
  ∀ n, (P14138738095296622071.a n : ℤ) = A215206 (n + 1)

end A215206

/-! ## A215206.P1551824180082259311

`∩[A009087(n+1), A168465(n+1)]`
-/

namespace A215206.P1551824180082259311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P1551824180082259311

namespace A215206

/-- `∩[A009087(n+1), A168465(n+1)]` -/
def P1551824180082259311.Spec : Prop :=
  ∀ n, (P1551824180082259311.a n : ℤ) = A215206 (n + 1)

end A215206

/-! ## A215206.P16007160260183865778

`∩[A033946(n+1), A168465(n+1)]`
-/

namespace A215206.P16007160260183865778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P16007160260183865778

namespace A215206

/-- `∩[A033946(n+1), A168465(n+1)]` -/
def P16007160260183865778.Spec : Prop :=
  ∀ n, (P16007160260183865778.a n : ℤ) = A215206 (n + 1)

end A215206

/-! ## A215206.P16214727409622148420

`∩[A045319(n+1), A168465(n+1)]`
-/

namespace A215206.P16214727409622148420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P16214727409622148420

namespace A215206

/-- `∩[A045319(n+1), A168465(n+1)]` -/
def P16214727409622148420.Spec : Prop :=
  ∀ n, (P16214727409622148420.a n : ℤ) = A215206 (n + 1)

end A215206

/-! ## A215206.P10195027006574170103

`∩[A045344(n+1), A168465(n+1)]`
-/

namespace A215206.P10195027006574170103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P10195027006574170103

namespace A215206

/-- `∩[A045344(n+1), A168465(n+1)]` -/
def P10195027006574170103.Spec : Prop :=
  ∀ n, (P10195027006574170103.a n : ℤ) = A215206 (n + 1)

end A215206

/-! ## A215206.P16144972077728525294

`∩[A046022(n+1), A168465(n+1)]`
-/

namespace A215206.P16144972077728525294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P16144972077728525294

namespace A215206

/-- `∩[A046022(n+1), A168465(n+1)]` -/
def P16144972077728525294.Spec : Prop :=
  ∀ n, (P16144972077728525294.a n : ℤ) = A215206 (n + 1)

end A215206

/-! ## A215206.P18358224063054350279

`∩[A050376(n+1), A168465(n+1)]`
-/

namespace A215206.P18358224063054350279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P18358224063054350279

namespace A215206

/-- `∩[A050376(n+1), A168465(n+1)]` -/
def P18358224063054350279.Spec : Prop :=
  ∀ n, (P18358224063054350279.a n : ℤ) = A215206 (n + 1)

end A215206

/-! ## A215206.P13086110429865802466

`∩[A051948(n+1), A168465(n+1)]`
-/

namespace A215206.P13086110429865802466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051948 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168465 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215206.P13086110429865802466

namespace A215206

/-- `∩[A051948(n+1), A168465(n+1)]` -/
def P13086110429865802466.Spec : Prop :=
  ∀ n, (P13086110429865802466.a n : ℤ) = A215206 (n + 1)

end A215206

/-!
# A215207: Primes congruent to {2, 7} mod 13.

The programs for A215207, the canonical program `A215207.P12348991230913771112` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215207 has offset 1).

The definition of A215207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215207.P12348991230913771112

`∪[A140371(n+1), A141858(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215207

/-- `∪[A140371(n+1), A141858(n+1)]` -/
def P12348991230913771112.Spec : Prop :=
  ∀ n, (P12348991230913771112.a n : ℤ) = A215207 (n + 1)

theorem P12348991230913771112.correct : P12348991230913771112.Spec := by
  intro n
  simp only [A215207, Nat.add_sub_cancel]

end A215207

/-! ## A215207.P3116687840261877580

`p?[a(n-2)+13]` with `a(0)=2, a(1)=7`
-/

namespace A215207.P3116687840261877580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  f1 (n - 2) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215207.P3116687840261877580

namespace A215207

/-- `p?[a(n-2)+13]` -/
def P3116687840261877580.Spec : Prop :=
  ∀ n, (P3116687840261877580.a n : ℤ) = A215207 (n + 1)

end A215207

/-! ## A215207.P1204646917815782031

`p?[abs(1-(2*n+3*comp[3*n]))]`
-/

namespace A215207.P1204646917815782031
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n + 3 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215207.P1204646917815782031

namespace A215207

/-- `p?[abs(1-(2*n+3*comp[3*n]))]` -/
def P1204646917815782031.Spec : Prop :=
  ∀ n, P1204646917815782031.a n = A215207 (n + 1)

end A215207

/-! ## A215207.P1249192691314265176

`∏{d}[p?[A092259(n+1)+ceil(n/2)-2], #]`
-/

namespace A215207.P1249192691314265176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092259 (n + 1) + ⌈(n : ℚ) / 2⌉ - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A215207.P1249192691314265176

namespace A215207

/-- `∏{d}[p?[A092259(n+1)+ceil(n/2)-2], #]` -/
def P1249192691314265176.Spec : Prop :=
  ∀ n, (P1249192691314265176.a n : ℤ) = A215207 (n + 1)

end A215207

/-! ## A215207.P300563925977981993

`filter[A088227(2*n+1), A010051(#)]`
-/

namespace A215207.P300563925977981993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088227 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A215207.P300563925977981993

namespace A215207

/-- `filter[A088227(2*n+1), A010051(#)]` -/
def P300563925977981993.Spec : Prop :=
  ∀ n, P300563925977981993.a n = A215207 (n + 1)

end A215207

/-! ## A215207.P9876721624952077649

`filter[A088227(2*n+1), A174897(#)]`
-/

namespace A215207.P9876721624952077649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088227 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A215207.P9876721624952077649

namespace A215207

/-- `filter[A088227(2*n+1), A174897(#)]` -/
def P9876721624952077649.Spec : Prop :=
  ∀ n, P9876721624952077649.a n = A215207 (n + 1)

end A215207

/-! ## A215207.P4839750082231191700

`filter[A088227(2*n+1), A302777(#)]`
-/

namespace A215207.P4839750082231191700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088227 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A215207.P4839750082231191700

namespace A215207

/-- `filter[A088227(2*n+1), A302777(#)]` -/
def P4839750082231191700.Spec : Prop :=
  ∀ n, P4839750082231191700.a n = A215207 (n + 1)

end A215207

/-! ## A215207.P1307817954088679076

`filter[A088227(2*n+1), A355937(#)]`
-/

namespace A215207.P1307817954088679076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088227 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A215207.P1307817954088679076

namespace A215207

/-- `filter[A088227(2*n+1), A355937(#)]` -/
def P1307817954088679076.Spec : Prop :=
  ∀ n, P1307817954088679076.a n = A215207 (n + 1)

end A215207

/-! ## A215207.P4261688401217549867

`∩[A088227(n+1), A215155(n+1)]`
-/

namespace A215207.P4261688401217549867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215207.P4261688401217549867

namespace A215207

/-- `∩[A088227(n+1), A215155(n+1)]` -/
def P4261688401217549867.Spec : Prop :=
  ∀ n, (P4261688401217549867.a n : ℤ) = A215207 (n + 1)

end A215207

/-! ## A215207.P6979254227687832983

`∩[A088227(n+1), A215211(n+1)]`
-/

namespace A215207.P6979254227687832983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215207.P6979254227687832983

namespace A215207

/-- `∩[A088227(n+1), A215211(n+1)]` -/
def P6979254227687832983.Spec : Prop :=
  ∀ n, (P6979254227687832983.a n : ℤ) = A215207 (n + 1)

end A215207

/-! ## A215207.P17699236041991975417

`record[A020639(A310840(n+1))]`
-/

namespace A215207.P17699236041991975417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A310840 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215207.P17699236041991975417

namespace A215207

/-- `record[A020639(A310840(n+1))]` -/
def P17699236041991975417.Spec : Prop :=
  ∀ n, P17699236041991975417.a n = A215207 (n + 1)

end A215207

/-! ## A215207.P16458997802408953636

`filter[A088227(2*n+1), A080339(#)]`
-/

namespace A215207.P16458997802408953636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088227 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A215207.P16458997802408953636

namespace A215207

/-- `filter[A088227(2*n+1), A080339(#)]` -/
def P16458997802408953636.Spec : Prop :=
  ∀ n, P16458997802408953636.a n = A215207 (n + 1)

end A215207

/-! ## A215207.P14681006544625947565

`record[A014963(2*n+A016051(n+1)-1)]`
-/

namespace A215207.P14681006544625947565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 ((2 * n : ℤ) + (A016051 (n + 1) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215207.P14681006544625947565

namespace A215207

/-- `record[A014963(2*n+A016051(n+1)-1)]` -/
def P14681006544625947565.Spec : Prop :=
  ∀ n, P14681006544625947565.a n = A215207 (n + 1)

end A215207

/-!
# A215208: Primes congruent to {2, 7} mod 17.

The programs for A215208, the canonical program `A215208.P12872707927017093378` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215208 has offset 1).

The definition of A215208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215208.P12872707927017093378

`∪[A138629(n+1), A140544(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215208

/-- `∪[A138629(n+1), A140544(n+1)]` -/
def P12872707927017093378.Spec : Prop :=
  ∀ n, (P12872707927017093378.a n : ℤ) = A215208 (n + 1)

theorem P12872707927017093378.correct : P12872707927017093378.Spec := by
  intro n
  simp only [A215208, Nat.add_sub_cancel]

end A215208

/-! ## A215208.P10331592097472888820

`p?[a(n-2)+17]` with `a(0)=2, a(1)=7`
-/

namespace A215208.P10331592097472888820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  f1 (n - 2) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215208.P10331592097472888820

namespace A215208

/-- `p?[a(n-2)+17]` -/
def P10331592097472888820.Spec : Prop :=
  ∀ n, (P10331592097472888820.a n : ℤ) = A215208 (n + 1)

end A215208

/-! ## A215208.P9533701405888787222

`p?[A155449(n+1)-4]`
-/

namespace A215208.P9533701405888787222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155449 (n + 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215208.P9533701405888787222

namespace A215208

/-- `p?[A155449(n+1)-4]` -/
def P9533701405888787222.Spec : Prop :=
  ∀ n, P9533701405888787222.a n = A215208 (n + 1)

end A215208

/-! ## A215208.P2711800111961540242

`record[A006530(A155449(n+1)-4)]`
-/

namespace A215208.P2711800111961540242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A155449 (n + 1) - 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215208.P2711800111961540242

namespace A215208

/-- `record[A006530(A155449(n+1)-4)]` -/
def P2711800111961540242.Spec : Prop :=
  ∀ n, P2711800111961540242.a n = A215208 (n + 1)

end A215208

/-! ## A215208.P3533856552880734946

`p?[A146509(n+1)+2-A028242(n)]`
-/

namespace A215208.P3533856552880734946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (n + 1) + (2 - A028242 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215208.P3533856552880734946

namespace A215208

/-- `p?[A146509(n+1)+2-A028242(n)]` -/
def P3533856552880734946.Spec : Prop :=
  ∀ n, P3533856552880734946.a n = A215208 (n + 1)

end A215208

/-! ## A215208.P2264199606106806749

`p?[A004526(n+1)+2*A047471(n+1)]`
-/

namespace A215208.P2264199606106806749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (n + 1) + 2 * A047471 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215208.P2264199606106806749

namespace A215208

/-- `p?[A004526(n+1)+2*A047471(n+1)]` -/
def P2264199606106806749.Spec : Prop :=
  ∀ n, P2264199606106806749.a n = A215208 (n + 1)

end A215208

/-! ## A215208.P9775905682358979762

`p?[A017005(A004526(n))+A008587(n)]`
-/

namespace A215208.P9775905682358979762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017005 (A004526 n).toNat + A008587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215208.P9775905682358979762

namespace A215208

/-- `p?[A017005(A004526(n))+A008587(n)]` -/
def P9775905682358979762.Spec : Prop :=
  ∀ n, P9775905682358979762.a n = A215208 (n + 1)

end A215208

/-! ## A215208.P16741322394192899453

`p?[6*n+2-A186731(n+1)]`
-/

namespace A215208.P16741322394192899453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n : ℤ) + (2 - A186731 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215208.P16741322394192899453

namespace A215208

/-- `p?[6*n+2-A186731(n+1)]` -/
def P16741322394192899453.Spec : Prop :=
  ∀ n, P16741322394192899453.a n = A215208 (n + 1)

end A215208

/-! ## A215208.P6963164601997698074

`p?[∑[A010142(2*n+1)+A010142(n+1)]]`
-/

namespace A215208.P6963164601997698074
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010142 (2 * n + 1) + A010142 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215208.P6963164601997698074

namespace A215208

/-- `p?[∑[A010142(2*n+1)+A010142(n+1)]]` -/
def P6963164601997698074.Spec : Prop :=
  ∀ n, P6963164601997698074.a n = A215208 (n + 1)

end A215208

/-! ## A215208.P6795198624124482784

`p?[A002081(2*n)-A032766(n)]`
-/

namespace A215208.P6795198624124482784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 (2 * n) - A032766 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215208.P6795198624124482784

namespace A215208

/-- `p?[A002081(2*n)-A032766(n)]` -/
def P6795198624124482784.Spec : Prop :=
  ∀ n, P6795198624124482784.a n = A215208 (n + 1)

end A215208

/-! ## A215208.P17731058042525743207

`p?[A002081(2*n)-A057353(2*n)]`
-/

namespace A215208.P17731058042525743207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 (2 * n) - A057353 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215208.P17731058042525743207

namespace A215208

/-- `p?[A002081(2*n)-A057353(2*n)]` -/
def P17731058042525743207.Spec : Prop :=
  ∀ n, P17731058042525743207.a n = A215208 (n + 1)

end A215208

/-! ## A215208.P7591332524267384764

`p?[A047243(A047243(n+1))-A008619(n)]`
-/

namespace A215208.P7591332524267384764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047243 (A047243 (n + 1)).toNat - A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215208.P7591332524267384764

namespace A215208

/-- `p?[A047243(A047243(n+1))-A008619(n)]` -/
def P7591332524267384764.Spec : Prop :=
  ∀ n, P7591332524267384764.a n = A215208 (n + 1)

end A215208

/-! ## A215208.P4987434480952052743

`p?[A065033(n+1)+A047415(A047415(2*n+1))]`
-/

namespace A215208.P4987434480952052743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (n + 1) + A047415 (A047415 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215208.P4987434480952052743

namespace A215208

/-- `p?[A065033(n+1)+A047415(A047415(2*n+1))]` -/
def P4987434480952052743.Spec : Prop :=
  ∀ n, P4987434480952052743.a n = A215208 (n + 1)

end A215208

/-! ## A215208.P1695967337984711068

`p?[A047411(A047411(2*n+1))+A008621(2*n)]`
-/

namespace A215208.P1695967337984711068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047411 (A047411 (2 * n + 1)).toNat + A008621 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215208.P1695967337984711068

namespace A215208

/-- `p?[A047411(A047411(2*n+1))+A008621(2*n)]` -/
def P1695967337984711068.Spec : Prop :=
  ∀ n, P1695967337984711068.a n = A215208 (n + 1)

end A215208

/-!
# A215209: Primes congruent to {2, 7} mod 19.

The programs for A215209, the canonical program `A215209.P9506204771007964000` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215209 has offset 1).

The definition of A215209 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215209.P9506204771007964000

`∪[A141869(n+1), A141872(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215209

/-- `∪[A141869(n+1), A141872(n+1)]` -/
def P9506204771007964000.Spec : Prop :=
  ∀ n, (P9506204771007964000.a n : ℤ) = A215209 (n + 1)

theorem P9506204771007964000.correct : P9506204771007964000.Spec := by
  intro n
  simp only [A215209, Nat.add_sub_cancel]

end A215209

/-! ## A215209.P9562653962211613715

`p?[a(n-2)+19]` with `a(0)=2, a(1)=7`
-/

namespace A215209.P9562653962211613715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 7] fun n f1 =>
  f1 (n - 2) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215209.P9562653962211613715

namespace A215209

/-- `p?[a(n-2)+19]` -/
def P9562653962211613715.Spec : Prop :=
  ∀ n, (P9562653962211613715.a n : ℤ) = A215209 (n + 1)

end A215209

/-! ## A215209.P13197819812661365286

`p?[A212161(n)-4+n]`
-/

namespace A215209.P13197819812661365286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212161 n - 4 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215209.P13197819812661365286

namespace A215209

/-- `p?[A212161(n)-4+n]` -/
def P13197819812661365286.Spec : Prop :=
  ∀ n, P13197819812661365286.a n = A215209 (n + 1)

end A215209

/-! ## A215209.P2968197767909083429

`p?[A146509(n+1)+A080513(n)]`
-/

namespace A215209.P2968197767909083429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146509 (n + 1) + A080513 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215209.P2968197767909083429

namespace A215209

/-- `p?[A146509(n+1)+A080513(n)]` -/
def P2968197767909083429.Spec : Prop :=
  ∀ n, P2968197767909083429.a n = A215209 (n + 1)

end A215209

/-! ## A215209.P11875696508745637689

`p?[A017449(n)-A008486(A052938(n))]`
-/

namespace A215209.P11875696508745637689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 n - A008486 (A052938 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215209.P11875696508745637689

namespace A215209

/-- `p?[A017449(n)-A008486(A052938(n))]` -/
def P11875696508745637689.Spec : Prop :=
  ∀ n, P11875696508745637689.a n = A215209 (n + 1)

end A215209

/-! ## A215209.P16353589324716419920

`p?[A002081(2*n)-A110654(n)]`
-/

namespace A215209.P16353589324716419920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002081 (2 * n) - A110654 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215209.P16353589324716419920

namespace A215209

/-- `p?[A002081(2*n)-A110654(n)]` -/
def P16353589324716419920.Spec : Prop :=
  ∀ n, P16353589324716419920.a n = A215209 (n + 1)

end A215209

/-! ## A215209.P5449129887108057089

`p?[A017101(2*n)-A175886(n+1)]`
-/

namespace A215209.P5449129887108057089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (2 * n) - A175886 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215209.P5449129887108057089

namespace A215209

/-- `p?[A017101(2*n)-A175886(n+1)]` -/
def P5449129887108057089.Spec : Prop :=
  ∀ n, P5449129887108057089.a n = A215209 (n + 1)

end A215209

/-! ## A215209.P9558704382457897378

`p?[A016789(A130484(n))+A005843(n)]`
-/

namespace A215209.P9558704382457897378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A130484 n).toNat + A005843 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215209.P9558704382457897378

namespace A215209

/-- `p?[A016789(A130484(n))+A005843(n)]` -/
def P9558704382457897378.Spec : Prop :=
  ∀ n, P9558704382457897378.a n = A215209 (n + 1)

end A215209

/-! ## A215209.P7229326960492074947

`p?[A016777(A008851(n+1))+A005408(n)]`
-/

namespace A215209.P7229326960492074947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (A008851 (n + 1)).toNat + A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215209.P7229326960492074947

namespace A215209

/-- `p?[A016777(A008851(n+1))+A005408(n)]` -/
def P7229326960492074947.Spec : Prop :=
  ∀ n, P7229326960492074947.a n = A215209 (n + 1)

end A215209

/-! ## A215209.P9234262580220855232

`p?[A063217(n+1)*A115360(n)]`
-/

namespace A215209.P9234262580220855232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063217 (n + 1) * A115360 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215209.P9234262580220855232

namespace A215209

/-- `p?[A063217(n+1)*A115360(n)]` -/
def P9234262580220855232.Spec : Prop :=
  ∀ n, P9234262580220855232.a n = A215209 (n + 1)

end A215209

/-! ## A215209.P7171819558248409018

`p?[4*n+2+A004524(A032766(n+1))]`
-/

namespace A215209.P7171819558248409018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℤ) + A004524 (A032766 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215209.P7171819558248409018

namespace A215209

/-- `p?[4*n+2+A004524(A032766(n+1))]` -/
def P7171819558248409018.Spec : Prop :=
  ∀ n, P7171819558248409018.a n = A215209 (n + 1)

end A215209

/-! ## A215209.P12777505961013474907

`p?[A016789(A047279(2*n+1))-n]`
-/

namespace A215209.P12777505961013474907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A047279 (2 * n + 1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215209.P12777505961013474907

namespace A215209

/-- `p?[A016789(A047279(2*n+1))-n]` -/
def P12777505961013474907.Spec : Prop :=
  ∀ n, P12777505961013474907.a n = A215209 (n + 1)

end A215209

/-! ## A215209.P7378218632997370761

`p?[A130766(2*n+1)+A047613(A047613(2*n+1))]`
-/

namespace A215209.P7378218632997370761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 (2 * n + 1) + A047613 (A047613 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215209.P7378218632997370761

namespace A215209

/-- `p?[A130766(2*n+1)+A047613(A047613(2*n+1))]` -/
def P7378218632997370761.Spec : Prop :=
  ∀ n, P7378218632997370761.a n = A215209 (n + 1)

end A215209

/-! ## A215209.P13333996159575436026

`p?[10*n+3-A076314(5*n+1)]`
-/

namespace A215209.P13333996159575436026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n + 3 : ℤ) - A076314 (5 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215209.P13333996159575436026

namespace A215209

/-- `p?[10*n+3-A076314(5*n+1)]` -/
def P13333996159575436026.Spec : Prop :=
  ∀ n, P13333996159575436026.a n = A215209 (n + 1)

end A215209

/-! ## A215209.P11384600680129494877

`p?[A032766(5*n)+A004443(2*n)]`
-/

namespace A215209.P11384600680129494877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 (5 * n) + A004443 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215209.P11384600680129494877

namespace A215209

/-- `p?[A032766(5*n)+A004443(2*n)]` -/
def P11384600680129494877.Spec : Prop :=
  ∀ n, P11384600680129494877.a n = A215209 (n + 1)

end A215209

/-! ## A215209.P12411850064339025488

`filter[A215157(n+1), A144606(#)]`
-/

namespace A215209.P12411850064339025488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144606 (f1 j).toNat = 1) n)

end

end A215209.P12411850064339025488

namespace A215209

/-- `filter[A215157(n+1), A144606(#)]` -/
def P12411850064339025488.Spec : Prop :=
  ∀ n, P12411850064339025488.a n = A215209 (n + 1)

end A215209

/-! ## A215209.P9418801606165357078

`filter[A215213(n+1), A144606(#)]`
-/

namespace A215209.P9418801606165357078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A144606 (f1 j).toNat = 1) n)

end

end A215209.P9418801606165357078

namespace A215209

/-- `filter[A215213(n+1), A144606(#)]` -/
def P9418801606165357078.Spec : Prop :=
  ∀ n, P9418801606165357078.a n = A215209 (n + 1)

end A215209

/-!
# A215210: Primes congruent to {2, 5, 7} mod 11.

The programs for A215210, the canonical program `A215210.P12415954493624348144` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215210 has offset 1).

The definition of A215210 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215210.P12415954493624348144

`∪[A141854(n+1), A215167(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215210

/-- `∪[A141854(n+1), A215167(n+1)]` -/
def P12415954493624348144.Spec : Prop :=
  ∀ n, (P12415954493624348144.a n : ℤ) = A215210 (n + 1)

theorem P12415954493624348144.correct : P12415954493624348144.Spec := by
  intro n
  simp only [A215210, Nat.add_sub_cancel]

end A215210

/-! ## A215210.P17113549764237867705

`∪[A141852(n+1), A215206(n+1)]`
-/

namespace A215210.P17113549764237867705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215210.P17113549764237867705

namespace A215210

/-- `∪[A141852(n+1), A215206(n+1)]` -/
def P17113549764237867705.Spec : Prop :=
  ∀ n, (P17113549764237867705.a n : ℤ) = A215210 (n + 1)

end A215210

/-! ## A215210.P5914342394316821400

`∪[A215167(n+1), A215206(n+1)]`
-/

namespace A215210.P5914342394316821400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215167 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215206 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215210.P5914342394316821400

namespace A215210

/-- `∪[A215167(n+1), A215206(n+1)]` -/
def P5914342394316821400.Spec : Prop :=
  ∀ n, (P5914342394316821400.a n : ℤ) = A215210 (n + 1)

end A215210

/-! ## A215210.P16578394170328703055

`p?[ogf((2x+3x^2+2x^3+4x^4)/(1-x-x^3+x^4))]`
-/

namespace A215210.P16578394170328703055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 2, 4] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215210.P16578394170328703055

namespace A215210

/-- `p?[ogf((2x+3x^2+2x^3+4x^4)/(1-x-x^3+x^4))]` -/
def P16578394170328703055.Spec : Prop :=
  ∀ n, P16578394170328703055.a n = A215210 (n + 1)

end A215210

/-! ## A215210.P14442682328533405518

`p?[record[and(n+1, or(6, n)-3)]+n+1]`
-/

namespace A215210.P14442682328533405518
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) ((Nat.lor 6 n : ℤ) - 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215210.P14442682328533405518

namespace A215210

/-- `p?[record[and(n+1, or(6, n)-3)]+n+1]` -/
def P14442682328533405518.Spec : Prop :=
  ∀ n, P14442682328533405518.a n = A215210 (n + 1)

end A215210

/-! ## A215210.P12708089537810843021

`p?[A047611(n+1)+n]`
-/

namespace A215210.P12708089537810843021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047611 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215210.P12708089537810843021

namespace A215210

/-- `p?[A047611(n+1)+n]` -/
def P12708089537810843021.Spec : Prop :=
  ∀ n, P12708089537810843021.a n = A215210 (n + 1)

end A215210

/-! ## A215210.P1665644299014738281

`p?[A047459(n+1)+1+n]`
-/

namespace A215210.P1665644299014738281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047459 (n + 1) + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215210.P1665644299014738281

namespace A215210

/-- `p?[A047459(n+1)+1+n]` -/
def P1665644299014738281.Spec : Prop :=
  ∀ n, P1665644299014738281.a n = A215210 (n + 1)

end A215210

/-! ## A215210.P437445533013628235

`p?[A047443(n+1)-1+n]`
-/

namespace A215210.P437445533013628235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047443 (n + 1) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215210.P437445533013628235

namespace A215210

/-- `p?[A047443(n+1)-1+n]` -/
def P437445533013628235.Spec : Prop :=
  ∀ n, P437445533013628235.a n = A215210 (n + 1)

end A215210

/-! ## A215210.P10012984080569222987

`p?[A047474(n+1)+2+n]`
-/

namespace A215210.P10012984080569222987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047474 (n + 1) + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215210.P10012984080569222987

namespace A215210

/-- `p?[A047474(n+1)+2+n]` -/
def P10012984080569222987.Spec : Prop :=
  ∀ n, P10012984080569222987.a n = A215210 (n + 1)

end A215210

/-! ## A215210.P14989984070294314302

`p?[A047394(n+1)-83+n]`
-/

namespace A215210.P14989984070294314302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047394 (n + 1) - 83 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215210.P14989984070294314302

namespace A215210

/-- `p?[A047394(n+1)-83+n]` -/
def P14989984070294314302.Spec : Prop :=
  ∀ n, P14989984070294314302.a n = A215210 (n + 1)

end A215210

/-! ## A215210.P5689692465974835290

`p?[A131452(2*n+1)+n]`
-/

namespace A215210.P5689692465974835290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131452 (2 * n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215210.P5689692465974835290

namespace A215210

/-- `p?[A131452(2*n+1)+n]` -/
def P5689692465974835290.Spec : Prop :=
  ∀ n, P5689692465974835290.a n = A215210 (n + 1)

end A215210

/-! ## A215210.P1738373899540302568

`p?[A168484(A004523(2*n+1)+1)]`
-/

namespace A215210.P1738373899540302568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (A004523 (2 * n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215210.P1738373899540302568

namespace A215210

/-- `p?[A168484(A004523(2*n+1)+1)]` -/
def P1738373899540302568.Spec : Prop :=
  ∀ n, P1738373899540302568.a n = A215210 (n + 1)

end A215210

/-! ## A215210.P10150028808533475888

`p?[A275910(2*n+1)+A004396(n)]`
-/

namespace A215210.P10150028808533475888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275910 (2 * n + 1) + A004396 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215210.P10150028808533475888

namespace A215210

/-- `p?[A275910(2*n+1)+A004396(n)]` -/
def P10150028808533475888.Spec : Prop :=
  ∀ n, P10150028808533475888.a n = A215210 (n + 1)

end A215210

/-! ## A215210.P6086131219665134492

`∩[A167134(n+1), A265187(n+1)]`
-/

namespace A215210.P6086131219665134492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167134 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265187 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215210.P6086131219665134492

namespace A215210

/-- `∩[A167134(n+1), A265187(n+1)]` -/
def P6086131219665134492.Spec : Prop :=
  ∀ n, (P6086131219665134492.a n : ℤ) = A215210 (n + 1)

end A215210

/-! ## A215210.P14726492375090226992

`record[A014963(A047611(n+1)+n)]`
-/

namespace A215210.P14726492375090226992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A047611 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215210.P14726492375090226992

namespace A215210

/-- `record[A014963(A047611(n+1)+n)]` -/
def P14726492375090226992.Spec : Prop :=
  ∀ n, P14726492375090226992.a n = A215210 (n + 1)

end A215210

/-! ## A215210.P7986846655729067583

`record[A014963(A131452(2*n+1)+n)]`
-/

namespace A215210.P7986846655729067583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A131452 (2 * n + 1) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215210.P7986846655729067583

namespace A215210

/-- `record[A014963(A131452(2*n+1)+n)]` -/
def P7986846655729067583.Spec : Prop :=
  ∀ n, P7986846655729067583.a n = A215210 (n + 1)

end A215210

/-!
# A215211: Primes congruent to {2, 5, 7} mod 13.

The programs for A215211, the canonical program `A215211.P16553425419217108754` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215211 has offset 1).

The definition of A215211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215211.P16553425419217108754

`∪[A102732(n+1), A215207(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215211

/-- `∪[A102732(n+1), A215207(n+1)]` -/
def P16553425419217108754.Spec : Prop :=
  ∀ n, (P16553425419217108754.a n : ℤ) = A215211 (n + 1)

theorem P16553425419217108754.correct : P16553425419217108754.Spec := by
  intro n
  simp only [A215211, Nat.add_sub_cancel]

end A215211

/-! ## A215211.P8740645121781416560

`∪[A140371(n+1), A215168(n+1)]`
-/

namespace A215211.P8740645121781416560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140371 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215211.P8740645121781416560

namespace A215211

/-- `∪[A140371(n+1), A215168(n+1)]` -/
def P8740645121781416560.Spec : Prop :=
  ∀ n, (P8740645121781416560.a n : ℤ) = A215211 (n + 1)

end A215211

/-! ## A215211.P24165042110868348

`∪[A215168(n+1), A215207(n+1)]`
-/

namespace A215211.P24165042110868348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215168 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215211.P24165042110868348

namespace A215211

/-- `∪[A215168(n+1), A215207(n+1)]` -/
def P24165042110868348.Spec : Prop :=
  ∀ n, (P24165042110868348.a n : ℤ) = A215211 (n + 1)

end A215211

/-! ## A215211.P14531573421810046215

`p?[a(n-3)+13]` with `a(0)=2, a(1)=5, a(2)=7`
-/

namespace A215211.P14531573421810046215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 7] fun n f1 =>
  f1 (n - 3) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215211.P14531573421810046215

namespace A215211

/-- `p?[a(n-3)+13]` -/
def P14531573421810046215.Spec : Prop :=
  ∀ n, (P14531573421810046215.a n : ℤ) = A215211 (n + 1)

end A215211

/-! ## A215211.P15926798291215824495

`p?[ogf((2x+3x^2+2x^3+6x^4)/(1-x-x^3+x^4))]`
-/

namespace A215211.P15926798291215824495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 3, 2, 6] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215211.P15926798291215824495

namespace A215211

/-- `p?[ogf((2x+3x^2+2x^3+6x^4)/(1-x-x^3+x^4))]` -/
def P15926798291215824495.Spec : Prop :=
  ∀ n, P15926798291215824495.a n = A215211 (n + 1)

end A215211

/-! ## A215211.P3237803500315714140

`∩[A038884(n+1), A215155(n+1)]`
-/

namespace A215211.P3237803500315714140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215211.P3237803500315714140

namespace A215211

/-- `∩[A038884(n+1), A215155(n+1)]` -/
def P3237803500315714140.Spec : Prop :=
  ∀ n, (P3237803500315714140.a n : ℤ) = A215211 (n + 1)

end A215211

/-! ## A215211.P16953500401921072855

`∩[A120330(n+1), A215155(n+1)]`
-/

namespace A215211.P16953500401921072855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215155 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215211.P16953500401921072855

namespace A215211

/-- `∩[A120330(n+1), A215155(n+1)]` -/
def P16953500401921072855.Spec : Prop :=
  ∀ n, (P16953500401921072855.a n : ℤ) = A215211 (n + 1)

end A215211

/-! ## A215211.P490565225692303616

`p?[A180964(n)+A168056(n)]`
-/

namespace A215211.P490565225692303616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180964 n + A168056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215211.P490565225692303616

namespace A215211

/-- `p?[A180964(n)+A168056(n)]` -/
def P490565225692303616.Spec : Prop :=
  ∀ n, P490565225692303616.a n = A215211 (n + 1)

end A215211

/-! ## A215211.P6777747319822753214

`p?[A008611(n)+A180964(n)+n]`
-/

namespace A215211.P6777747319822753214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 n + (A180964 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215211.P6777747319822753214

namespace A215211

/-- `p?[A008611(n)+A180964(n)+n]` -/
def P6777747319822753214.Spec : Prop :=
  ∀ n, P6777747319822753214.a n = A215211 (n + 1)

end A215211

/-! ## A215211.P8797493828087039628

`p?[A047354(n+1)+A047261(n+1)]`
-/

namespace A215211.P8797493828087039628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047354 (n + 1) + A047261 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215211.P8797493828087039628

namespace A215211

/-- `p?[A047354(n+1)+A047261(n+1)]` -/
def P8797493828087039628.Spec : Prop :=
  ∀ n, P8797493828087039628.a n = A215211 (n + 1)

end A215211

/-! ## A215211.P263557108764577614

`p?[A047474(n+1)+A047202(n+1)]`
-/

namespace A215211.P263557108764577614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047474 (n + 1) + A047202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215211.P263557108764577614

namespace A215211

/-- `p?[A047474(n+1)+A047202(n+1)]` -/
def P263557108764577614.Spec : Prop :=
  ∀ n, P263557108764577614.a n = A215211 (n + 1)

end A215211

/-! ## A215211.P18250972564958016998

`p?[A180964(n)+A005408(A004523(n))]`
-/

namespace A215211.P18250972564958016998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180964 n + A005408 (A004523 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215211.P18250972564958016998

namespace A215211

/-- `p?[A180964(n)+A005408(A004523(n))]` -/
def P18250972564958016998.Spec : Prop :=
  ∀ n, P18250972564958016998.a n = A215211 (n + 1)

end A215211

/-! ## A215211.P4682133459311794569

`p?[A016825(A004773(n))-A130481(n)]`
-/

namespace A215211.P4682133459311794569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A004773 n).toNat - A130481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215211.P4682133459311794569

namespace A215211

/-- `p?[A016825(A004773(n))-A130481(n)]` -/
def P4682133459311794569.Spec : Prop :=
  ∀ n, P4682133459311794569.a n = A215211 (n + 1)

end A215211

/-! ## A215211.P1214728113838354354

`p?[A281899(n)+A004773(n+2)]`
-/

namespace A215211.P1214728113838354354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281899 n + A004773 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215211.P1214728113838354354

namespace A215211

/-- `p?[A281899(n)+A004773(n+2)]` -/
def P1214728113838354354.Spec : Prop :=
  ∀ n, P1214728113838354354.a n = A215211 (n + 1)

end A215211

/-! ## A215211.P16406377869016686575

`p?[A045797(A065502(n+1)-(n+1))+n+1]`
-/

namespace A215211.P16406377869016686575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045797 (A065502 (n + 1) - (n + 1 : ℤ)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215211.P16406377869016686575

namespace A215211

/-- `p?[A045797(A065502(n+1)-(n+1))+n+1]` -/
def P16406377869016686575.Spec : Prop :=
  ∀ n, P16406377869016686575.a n = A215211 (n + 1)

end A215211

/-! ## A215211.P13249954355559384814

`p?[A300068(4*n)+A047339(n+1)]`
-/

namespace A215211.P13249954355559384814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300068 (4 * n) + A047339 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215211.P13249954355559384814

namespace A215211

/-- `p?[A300068(4*n)+A047339(n+1)]` -/
def P13249954355559384814.Spec : Prop :=
  ∀ n, P13249954355559384814.a n = A215211 (n + 1)

end A215211

/-! ## A215211.P10060382324904315700

`p?[A330396(4*n)+A008615(2*n)]`
-/

namespace A215211.P10060382324904315700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330396 (4 * n) + A008615 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215211.P10060382324904315700

namespace A215211

/-- `p?[A330396(4*n)+A008615(2*n)]` -/
def P10060382324904315700.Spec : Prop :=
  ∀ n, P10060382324904315700.a n = A215211 (n + 1)

end A215211

/-! ## A215211.P747933905787752960

`p?[A281899(n)+A008620(4*n+5)]`
-/

namespace A215211.P747933905787752960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281899 n + A008620 (4 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215211.P747933905787752960

namespace A215211

/-- `p?[A281899(n)+A008620(4*n+5)]` -/
def P747933905787752960.Spec : Prop :=
  ∀ n, P747933905787752960.a n = A215211 (n + 1)

end A215211

/-! ## A215211.P9689386016136905961

`filter[A038884(n+1), A212126(#)]`
-/

namespace A215211.P9689386016136905961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038884 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212126 (f1 j).toNat = 1) n)

end

end A215211.P9689386016136905961

namespace A215211

/-- `filter[A038884(n+1), A212126(#)]` -/
def P9689386016136905961.Spec : Prop :=
  ∀ n, P9689386016136905961.a n = A215211 (n + 1)

end A215211

/-! ## A215211.P10280781892452448470

`filter[A120330(n+1), A212126(#)]`
-/

namespace A215211.P10280781892452448470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120330 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212126 (f1 j).toNat = 1) n)

end

end A215211.P10280781892452448470

namespace A215211

/-- `filter[A120330(n+1), A212126(#)]` -/
def P10280781892452448470.Spec : Prop :=
  ∀ n, P10280781892452448470.a n = A215211 (n + 1)

end A215211

/-!
# A215212: Primes congruent to {2, 5, 7} mod 17.

The programs for A215212, the canonical program `A215212.P3163214217033629190` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215212 has offset 1).

The definition of A215212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215212.P3163214217033629190

`∪[A138629(n+1), A215169(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215212

/-- `∪[A138629(n+1), A215169(n+1)]` -/
def P3163214217033629190.Spec : Prop :=
  ∀ n, (P3163214217033629190.a n : ℤ) = A215212 (n + 1)

theorem P3163214217033629190.correct : P3163214217033629190.Spec := by
  intro n
  simp only [A215212, Nat.add_sub_cancel]

end A215212

/-! ## A215212.P8059073779198012408

`∪[A138623(n+1), A215208(n+1)]`
-/

namespace A215212.P8059073779198012408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215212.P8059073779198012408

namespace A215212

/-- `∪[A138623(n+1), A215208(n+1)]` -/
def P8059073779198012408.Spec : Prop :=
  ∀ n, (P8059073779198012408.a n : ℤ) = A215212 (n + 1)

end A215212

/-! ## A215212.P6019101374023686084

`∪[A215169(n+1), A215208(n+1)]`
-/

namespace A215212.P6019101374023686084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215212.P6019101374023686084

namespace A215212

/-- `∪[A215169(n+1), A215208(n+1)]` -/
def P6019101374023686084.Spec : Prop :=
  ∀ n, (P6019101374023686084.a n : ℤ) = A215212 (n + 1)

end A215212

/-! ## A215212.P14823311498573496029

`p?[a(n-3)+17]` with `a(0)=2, a(1)=5, a(2)=7`
-/

namespace A215212.P14823311498573496029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 7] fun n f1 =>
  f1 (n - 3) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215212.P14823311498573496029

namespace A215212

/-- `p?[a(n-3)+17]` -/
def P14823311498573496029.Spec : Prop :=
  ∀ n, (P14823311498573496029.a n : ℤ) = A215212 (n + 1)

end A215212

/-! ## A215212.P4456373479359722538

`p?[A281899(n)+A131452(2*n+1)]`
-/

namespace A215212.P4456373479359722538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281899 n + A131452 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215212.P4456373479359722538

namespace A215212

/-- `p?[A281899(n)+A131452(2*n+1)]` -/
def P4456373479359722538.Spec : Prop :=
  ∀ n, P4456373479359722538.a n = A215212 (n + 1)

end A215212

/-! ## A215212.P5388913003506504123

`p?[A016789(A047240(n+1))-A002264(n+1)]`
-/

namespace A215212.P5388913003506504123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (A047240 (n + 1)).toNat - A002264 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215212.P5388913003506504123

namespace A215212

/-- `p?[A016789(A047240(n+1))-A002264(n+1)]` -/
def P5388913003506504123.Spec : Prop :=
  ∀ n, P5388913003506504123.a n = A215212 (n + 1)

end A215212

/-! ## A215212.P17057416211246018338

`p?[A047415(A047459(n+1))+A008620(n)]`
-/

namespace A215212.P17057416211246018338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047415 (A047459 (n + 1)).toNat + A008620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215212.P17057416211246018338

namespace A215212

/-- `p?[A047415(A047459(n+1))+A008620(n)]` -/
def P17057416211246018338.Spec : Prop :=
  ∀ n, P17057416211246018338.a n = A215212 (n + 1)

end A215212

/-! ## A215212.P5817656933969164119

`p?[A188134(2*A047343(n+1)+n+1)]`
-/

namespace A215212.P5817656933969164119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188134 (2 * A047343 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215212.P5817656933969164119

namespace A215212

/-- `p?[A188134(2*A047343(n+1)+n+1)]` -/
def P5817656933969164119.Spec : Prop :=
  ∀ n, P5817656933969164119.a n = A215212 (n + 1)

end A215212

/-!
# A215213: Primes congruent to {2, 5, 7} mod 19.

The programs for A215213, the canonical program `A215213.P7586956025202272390` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215213 has offset 1).

The definition of A215213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215213.P7586956025202272390

`∪[A102851(n+1), A215209(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215213

/-- `∪[A102851(n+1), A215209(n+1)]` -/
def P7586956025202272390.Spec : Prop :=
  ∀ n, (P7586956025202272390.a n : ℤ) = A215213 (n + 1)

theorem P7586956025202272390.correct : P7586956025202272390.Spec := by
  intro n
  simp only [A215213, Nat.add_sub_cancel]

end A215213

/-! ## A215213.P17603607058191258148

`∪[A141872(n+1), A215170(n+1)]`
-/

namespace A215213.P17603607058191258148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215213.P17603607058191258148

namespace A215213

/-- `∪[A141872(n+1), A215170(n+1)]` -/
def P17603607058191258148.Spec : Prop :=
  ∀ n, (P17603607058191258148.a n : ℤ) = A215213 (n + 1)

end A215213

/-! ## A215213.P6595855075477543354

`∪[A215170(n+1), A215209(n+1)]`
-/

namespace A215213.P6595855075477543354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215170 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215209 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215213.P6595855075477543354

namespace A215213

/-- `∪[A215170(n+1), A215209(n+1)]` -/
def P6595855075477543354.Spec : Prop :=
  ∀ n, (P6595855075477543354.a n : ℤ) = A215213 (n + 1)

end A215213

/-! ## A215213.P12508331457002215742

`p?[a(n-3)+19]` with `a(0)=2, a(1)=5, a(2)=7`
-/

namespace A215213.P12508331457002215742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 7] fun n f1 =>
  f1 (n - 3) + 19

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215213.P12508331457002215742

namespace A215213

/-- `p?[a(n-3)+19]` -/
def P12508331457002215742.Spec : Prop :=
  ∀ n, (P12508331457002215742.a n : ℤ) = A215213 (n + 1)

end A215213

/-! ## A215213.P6222430619945605323

`p?[lcm(A063217(n+1), A115360(n))]`
-/

namespace A215213.P6222430619945605323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A063217 (n + 1)) (A115360 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215213.P6222430619945605323

namespace A215213

/-- `p?[lcm(A063217(n+1), A115360(n))]` -/
def P6222430619945605323.Spec : Prop :=
  ∀ n, (P6222430619945605323.a n : ℤ) = A215213 (n + 1)

end A215213

/-! ## A215213.P11638059200049792530

`∩[A063217(n+1), A215157(n+1)]`
-/

namespace A215213.P11638059200049792530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215157 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215213.P11638059200049792530

namespace A215213

/-- `∩[A063217(n+1), A215157(n+1)]` -/
def P11638059200049792530.Spec : Prop :=
  ∀ n, (P11638059200049792530.a n : ℤ) = A215213 (n + 1)

end A215213

/-! ## A215213.P7783623856567217809

`∩[A063217(n+1), A215162(n+1)]`
-/

namespace A215213.P7783623856567217809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063217 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215162 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215213.P7783623856567217809

namespace A215213

/-- `∩[A063217(n+1), A215162(n+1)]` -/
def P7783623856567217809.Spec : Prop :=
  ∀ n, (P7783623856567217809.a n : ℤ) = A215213 (n + 1)

end A215213

/-! ## A215213.P25193383083718494

`p?[A047460(A047455(n+1))+n+1]`
-/

namespace A215213.P25193383083718494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047460 (A047455 (n + 1)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215213.P25193383083718494

namespace A215213

/-- `p?[A047460(A047455(n+1))+n+1]` -/
def P25193383083718494.Spec : Prop :=
  ∀ n, P25193383083718494.a n = A215213 (n + 1)

end A215213

/-! ## A215213.P17046303397415672817

`p?[A047454(A047459(n+1))+n+1]`
-/

namespace A215213.P17046303397415672817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (A047459 (n + 1)).toNat + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215213.P17046303397415672817

namespace A215213

/-- `p?[A047454(A047459(n+1))+n+1]` -/
def P17046303397415672817.Spec : Prop :=
  ∀ n, P17046303397415672817.a n = A215213 (n + 1)

end A215213

/-! ## A215213.P9141753947341039360

`p?[(n+2)*A070481(2*n+1)]`
-/

namespace A215213.P9141753947341039360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A070481 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215213.P9141753947341039360

namespace A215213

/-- `p?[(n+2)*A070481(2*n+1)]` -/
def P9141753947341039360.Spec : Prop :=
  ∀ n, P9141753947341039360.a n = A215213 (n + 1)

end A215213

/-!
# A215214: Primes congruent to {0, 1, 2, 5} mod 11.

The programs for A215214, the canonical program `A215214.P16616755177621988533` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215214 has offset 1).

The definition of A215214 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7228 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215214.P16616755177621988533

`p?[a(n-4)+11]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=11`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215214

/-- `p?[a(n-4)+11]` -/
def P16616755177621988533.Spec : Prop :=
  ∀ n, (P16616755177621988533.a n : ℤ) = A215214 (n + 1)

theorem P16616755177621988533.correct : P16616755177621988533.Spec := by
  intro n
  simp only [A215214, Nat.add_sub_cancel]

end A215214

/-! ## A215214.P16551176439641106992

`p?[A276283(n)-A110657(n)]`
-/

namespace A215214.P16551176439641106992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n - A110657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215214.P16551176439641106992

namespace A215214

/-- `p?[A276283(n)-A110657(n)]` -/
def P16551176439641106992.Spec : Prop :=
  ∀ n, P16551176439641106992.a n = A215214 (n + 1)

end A215214

/-! ## A215214.P8028937717538135598

`p?[A047286(A290561(n+1))+n]`
-/

namespace A215214.P8028937717538135598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047286 (A290561 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215214.P8028937717538135598

namespace A215214

/-- `p?[A047286(A290561(n+1))+n]` -/
def P8028937717538135598.Spec : Prop :=
  ∀ n, P8028937717538135598.a n = A215214 (n + 1)

end A215214

/-! ## A215214.P16048521613708226269

`p?[A047466(n+1)+A130766(n)-1]`
-/

namespace A215214.P16048521613708226269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047466 (n + 1) + (A130766 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215214.P16048521613708226269

namespace A215214

/-- `p?[A047466(n+1)+A130766(n)-1]` -/
def P16048521613708226269.Spec : Prop :=
  ∀ n, P16048521613708226269.a n = A215214 (n + 1)

end A215214

/-! ## A215214.P16816765659355552307

`p?[A118286(n+1)-(A110657(n)+1)]`
-/

namespace A215214.P16816765659355552307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118286 (n + 1) - (A110657 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215214.P16816765659355552307

namespace A215214

/-- `p?[A118286(n+1)-(A110657(n)+1)]` -/
def P16816765659355552307.Spec : Prop :=
  ∀ n, P16816765659355552307.a n = A215214 (n + 1)

end A215214

/-! ## A215214.P2810572664151249723

`p?[A057353(n)+A003485(A140201(n))]`
-/

namespace A215214.P2810572664151249723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n + A003485 (A140201 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215214.P2810572664151249723

namespace A215214

/-- `p?[A057353(n)+A003485(A140201(n))]` -/
def P2810572664151249723.Spec : Prop :=
  ∀ n, P2810572664151249723.a n = A215214 (n + 1)

end A215214

/-! ## A215214.P17403559109321439008

`p?[A276283(n)-A028242(A028242(n))]`
-/

namespace A215214.P17403559109321439008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276283 n - A028242 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215214.P17403559109321439008

namespace A215214

/-- `p?[A276283(n)-A028242(A028242(n))]` -/
def P17403559109321439008.Spec : Prop :=
  ∀ n, P17403559109321439008.a n = A215214 (n + 1)

end A215214

/-! ## A215214.P5424745720596741265

`p?[A047351(n+1)+A042948(A004524(n))]`
-/

namespace A215214.P5424745720596741265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047351 (n + 1) + A042948 (A004524 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215214.P5424745720596741265

namespace A215214

/-- `p?[A047351(n+1)+A042948(A004524(n))]` -/
def P5424745720596741265.Spec : Prop :=
  ∀ n, P5424745720596741265.a n = A215214 (n + 1)

end A215214

/-! ## A215214.P16565022227163343287

`p?[A266297(n+1)+A008619(A110654(n))]`
-/

namespace A215214.P16565022227163343287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266297 (n + 1) + A008619 (A110654 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215214.P16565022227163343287

namespace A215214

/-- `p?[A266297(n+1)+A008619(A110654(n))]` -/
def P16565022227163343287.Spec : Prop :=
  ∀ n, P16565022227163343287.a n = A215214 (n + 1)

end A215214

/-! ## A215214.P11586494784516143621

`record[A006530(A276283(n+1)-A110657(n+1))]`
-/

namespace A215214.P11586494784516143621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A276283 (n + 1) - A110657 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215214.P11586494784516143621

namespace A215214

/-- `record[A006530(A276283(n+1)-A110657(n+1))]` -/
def P11586494784516143621.Spec : Prop :=
  ∀ n, P11586494784516143621.a n = A215214 (n + 1)

end A215214

/-! ## A215214.P17703459626038629928

`p?[A192333(A008621(n+1)+n)-n]`
-/

namespace A215214.P17703459626038629928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192333 (A008621 (n + 1) + (n : ℤ)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215214.P17703459626038629928

namespace A215214

/-- `p?[A192333(A008621(n+1)+n)-n]` -/
def P17703459626038629928.Spec : Prop :=
  ∀ n, P17703459626038629928.a n = A215214 (n + 1)

end A215214

/-! ## A215214.P4758473128413723664

`p?[A047255(A001651(n+1))+A004524(n)]`
-/

namespace A215214.P4758473128413723664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047255 (A001651 (n + 1)).toNat + A004524 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215214.P4758473128413723664

namespace A215214

/-- `p?[A047255(A001651(n+1))+A004524(n)]` -/
def P4758473128413723664.Spec : Prop :=
  ∀ n, P4758473128413723664.a n = A215214 (n + 1)

end A215214

/-! ## A215214.P10102609392978995108

`p?[A004524(A032766(n))+A003485(n)]`
-/

namespace A215214.P10102609392978995108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A032766 n).toNat + A003485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215214.P10102609392978995108

namespace A215214

/-- `p?[A004524(A032766(n))+A003485(n)]` -/
def P10102609392978995108.Spec : Prop :=
  ∀ n, P10102609392978995108.a n = A215214 (n + 1)

end A215214

/-! ## A215214.P13663392332712775333

`p?[A047411(n+1)+A004524(A032766(n))]`
-/

namespace A215214.P13663392332712775333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047411 (n + 1) + A004524 (A032766 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215214.P13663392332712775333

namespace A215214

/-- `p?[A047411(n+1)+A004524(A032766(n))]` -/
def P13663392332712775333.Spec : Prop :=
  ∀ n, P13663392332712775333.a n = A215214 (n + 1)

end A215214

/-!
# A215215: Primes congruent to {0, 1, 2, 5} mod 13.

The programs for A215215, the canonical program `A215215.P3576386696304779249` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215215 has offset 1).

The definition of A215215 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7007 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215215.P3576386696304779249

`p?[a(n-4)+13]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215215

/-- `p?[a(n-4)+13]` -/
def P3576386696304779249.Spec : Prop :=
  ∀ n, (P3576386696304779249.a n : ℤ) = A215215 (n + 1)

theorem P3576386696304779249.correct : P3576386696304779249.Spec := by
  intro n
  simp only [A215215, Nat.add_sub_cancel]

end A215215

/-! ## A215215.P16989971049113839450

`p?[∑[A010127(A116966(n))]]`
-/

namespace A215215.P16989971049113839450
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (A116966 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215215.P16989971049113839450

namespace A215215

/-- `p?[∑[A010127(A116966(n))]]` -/
def P16989971049113839450.Spec : Prop :=
  ∀ n, P16989971049113839450.a n = A215215 (n + 1)

end A215215

/-! ## A215215.P16263335913945024736

`p?[∑[A010127(A318704(n+1))]]`
-/

namespace A215215.P16263335913945024736
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (A318704 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215215.P16263335913945024736

namespace A215215

/-- `p?[∑[A010127(A318704(n+1))]]` -/
def P16263335913945024736.Spec : Prop :=
  ∀ n, P16263335913945024736.a n = A215215 (n + 1)

end A215215

/-! ## A215215.P3177372246144970112

`p?[∑[A272636(A004773(n))]]`
-/

namespace A215215.P3177372246144970112
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272636 (A004773 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215215.P3177372246144970112

namespace A215215

/-- `p?[∑[A272636(A004773(n))]]` -/
def P3177372246144970112.Spec : Prop :=
  ∀ n, P3177372246144970112.a n = A215215 (n + 1)

end A215215

/-! ## A215215.P6263730626200760784

`p?[A110659(n)+A032766(A003485(n))-1]`
-/

namespace A215215.P6263730626200760784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110659 n + A032766 (A003485 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215215.P6263730626200760784

namespace A215215

/-- `p?[A110659(n)+A032766(A003485(n))-1]` -/
def P6263730626200760784.Spec : Prop :=
  ∀ n, P6263730626200760784.a n = A215215 (n + 1)

end A215215

/-!
# A215216: Coefficient triangle of the Hermite-Bell polynomials for power -2.

The programs for A215216, there is no canonical definition to state claims against.
-/

/-! ## A215216.P3586761581270703725

`A000120(A215223(n+1))*A215269(n)`
-/

namespace A215216.P3586761581270703725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A215223 (n + 1)).toNat * A215269 n

end

end A215216.P3586761581270703725

/-!
# A215217: Smaller member of a pair of sphenic twins, consecutive integers, each the product of three distinct primes.

The programs for A215217, the canonical program `A215217.P16262728140422136731` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215217 has offset 1).

The definition of A215217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215217.P16262728140422136731

`∩[A259504(n+1), A274357(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A215217

/-- `∩[A259504(n+1), A274357(n+1)]` -/
def P16262728140422136731.Spec : Prop :=
  ∀ n, (P16262728140422136731.a n : ℤ) = A215217 (n + 1)

theorem P16262728140422136731.correct : P16262728140422136731.Spec := by
  intro n
  simp only [A215217, Nat.add_sub_cancel]

end A215217

/-! ## A215217.P16170979141068744212

`∩[A086263(n+1), A259504(n+1)]`
-/

namespace A215217.P16170979141068744212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215217.P16170979141068744212

namespace A215217

/-- `∩[A086263(n+1), A259504(n+1)]` -/
def P16170979141068744212.Spec : Prop :=
  ∀ n, (P16170979141068744212.a n : ℤ) = A215217 (n + 1)

end A215217

/-! ## A215217.P14664468468123491088

`∩[A086263(n+1), A274357(n+1)]`
-/

namespace A215217.P14664468468123491088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215217.P14664468468123491088

namespace A215217

/-- `∩[A086263(n+1), A274357(n+1)]` -/
def P14664468468123491088.Spec : Prop :=
  ∀ n, (P14664468468123491088.a n : ℤ) = A215217 (n + 1)

end A215217

/-! ## A215217.P10798699466202854631

`filter[A086263(n+2), A066829(#)]`
-/

namespace A215217.P10798699466202854631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086263 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066829 (f1 j).toNat = 1) n)

end

end A215217.P10798699466202854631

namespace A215217

/-- `filter[A086263(n+2), A066829(#)]` -/
def P10798699466202854631.Spec : Prop :=
  ∀ n, P10798699466202854631.a n = A215217 (n + 1)

end A215217

/-! ## A215217.P480443176692744241

`∩[A052213(n+1), A242068(n+1)]`
-/

namespace A215217.P480443176692744241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215217.P480443176692744241

namespace A215217

/-- `∩[A052213(n+1), A242068(n+1)]` -/
def P480443176692744241.Spec : Prop :=
  ∀ n, (P480443176692744241.a n : ℤ) = A215217 (n + 1)

end A215217

/-! ## A215217.P4248056476313623264

`∩[A086263(n+1), A242068(n+1)]`
-/

namespace A215217.P4248056476313623264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242068 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215217.P4248056476313623264

namespace A215217

/-- `∩[A086263(n+1), A242068(n+1)]` -/
def P4248056476313623264.Spec : Prop :=
  ∀ n, (P4248056476313623264.a n : ℤ) = A215217 (n + 1)

end A215217

/-! ## A215217.P4778399723777773824

`∩[A242068(n+1), A359745(n+1)]`
-/

namespace A215217.P4778399723777773824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242068 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215217.P4778399723777773824

namespace A215217

/-- `∩[A242068(n+1), A359745(n+1)]` -/
def P4778399723777773824.Spec : Prop :=
  ∀ n, (P4778399723777773824.a n : ℤ) = A215217 (n + 1)

end A215217

/-! ## A215217.P7084333948404276675

`∩[A086263(n+1), A140077(n+1)]`
-/

namespace A215217.P7084333948404276675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140077 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215217.P7084333948404276675

namespace A215217

/-- `∩[A086263(n+1), A140077(n+1)]` -/
def P7084333948404276675.Spec : Prop :=
  ∀ n, (P7084333948404276675.a n : ℤ) = A215217 (n + 1)

end A215217

/-! ## A215217.P12766598069346745287

`∩[A140077(n+1), A259504(n+1)]`
-/

namespace A215217.P12766598069346745287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259504 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215217.P12766598069346745287

namespace A215217

/-- `∩[A140077(n+1), A259504(n+1)]` -/
def P12766598069346745287.Spec : Prop :=
  ∀ n, (P12766598069346745287.a n : ℤ) = A215217 (n + 1)

end A215217

/-! ## A215217.P10648452942045410061

`∩[A140077(n+1), A274357(n+1)]`
-/

namespace A215217.P10648452942045410061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215217.P10648452942045410061

namespace A215217

/-- `∩[A140077(n+1), A274357(n+1)]` -/
def P10648452942045410061.Spec : Prop :=
  ∀ n, (P10648452942045410061.a n : ℤ) = A215217 (n + 1)

end A215217

/-! ## A215217.P17219316846142735594

`∩[A007304(n+1), A052213(n+1)]`
-/

namespace A215217.P17219316846142735594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215217.P17219316846142735594

namespace A215217

/-- `∩[A007304(n+1), A052213(n+1)]` -/
def P17219316846142735594.Spec : Prop :=
  ∀ n, (P17219316846142735594.a n : ℤ) = A215217 (n + 1)

end A215217

/-! ## A215217.P14839272445679544861

`∩[A007304(n+1), A086263(n+1)]`
-/

namespace A215217.P14839272445679544861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086263 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215217.P14839272445679544861

namespace A215217

/-- `∩[A007304(n+1), A086263(n+1)]` -/
def P14839272445679544861.Spec : Prop :=
  ∀ n, (P14839272445679544861.a n : ℤ) = A215217 (n + 1)

end A215217

/-! ## A215217.P3779060868635839725

`∩[A007304(n+1), A359745(n+1)]`
-/

namespace A215217.P3779060868635839725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215217.P3779060868635839725

namespace A215217

/-- `∩[A007304(n+1), A359745(n+1)]` -/
def P3779060868635839725.Spec : Prop :=
  ∀ n, (P3779060868635839725.a n : ℤ) = A215217 (n + 1)

end A215217

/-! ## A215217.P7815776992810567161

`∩[A052213(n+1), A345382(n+1)]`
-/

namespace A215217.P7815776992810567161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052213 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215217.P7815776992810567161

namespace A215217

/-- `∩[A052213(n+1), A345382(n+1)]` -/
def P7815776992810567161.Spec : Prop :=
  ∀ n, (P7815776992810567161.a n : ℤ) = A215217 (n + 1)

end A215217

/-! ## A215217.P15329510751492375636

`∩[A086263(n+1), A345382(n+1)]`
-/

namespace A215217.P15329510751492375636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086263 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215217.P15329510751492375636

namespace A215217

/-- `∩[A086263(n+1), A345382(n+1)]` -/
def P15329510751492375636.Spec : Prop :=
  ∀ n, (P15329510751492375636.a n : ℤ) = A215217 (n + 1)

end A215217

/-! ## A215217.P11664227583516267850

`∩[A345382(n+1), A359745(n+1)]`
-/

namespace A215217.P11664227583516267850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359745 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215217.P11664227583516267850

namespace A215217

/-- `∩[A345382(n+1), A359745(n+1)]` -/
def P11664227583516267850.Spec : Prop :=
  ∀ n, (P11664227583516267850.a n : ℤ) = A215217 (n + 1)

end A215217

/-!
# A215220: Number of solid standard Young tableaux of shape [[n,n,n,n],[n]].

The programs for A215220, there is no canonical definition to state claims against.
-/

/-! ## A215220.P12574008020009512147

`A214722(∑[n+3]+n+3)`
-/

namespace A215220.P12574008020009512147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214722 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A215220.P12574008020009512147

/-! ## A215220.P8506249554429651152

`A214722(A046691(n+2))^A033630(2*n+1)`
-/

namespace A215220.P8506249554429651152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214722 (A046691 (n + 2)).toNat : ℚ) ^ (A033630 (2 * n + 1) : ℤ)

end

end A215220.P8506249554429651152

/-!
# A215221: Number of solutions to p(n) = Sum_{i=1..n-1} c(i)*p(i) with c(i) in {-1,0,1} and p(n) = n-th prime.

The programs for A215221, there is no canonical definition to state claims against.
-/

/-! ## A215221.P1568264439379550608

`A215222(A000040(n+1))`
-/

namespace A215221.P1568264439379550608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215222 (A000040 (n + 1)).toNat

end

end A215221.P1568264439379550608

/-! ## A215221.P10119963396158875326

`Δ[A350880(n)/2]`
-/

namespace A215221.P10119963396158875326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350880 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215221.P10119963396158875326

/-! ## A215221.P12589329306201910153

`A215222(A006005(n+1))`
-/

namespace A215221.P12589329306201910153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215222 (A006005 (n + 1)).toNat

end

end A215221.P12589329306201910153

/-! ## A215221.P10462576202060737439

`A215222(A008578(n+2))`
-/

namespace A215221.P10462576202060737439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215222 (A008578 (n + 2)).toNat

end

end A215221.P10462576202060737439

/-! ## A215221.P4721406662235686086

`A215222(A075643(n+2))`
-/

namespace A215221.P4721406662235686086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215222 (A075643 (n + 2)).toNat

end

end A215221.P4721406662235686086

/-! ## A215221.P6598094699505531024

`A215222(A171525(n+2))`
-/

namespace A215221.P6598094699505531024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215222 (A171525 (n + 2)).toNat

end

end A215221.P6598094699505531024

/-! ## A215221.P391735630768535679

`A215222(A175787(n+2))`
-/

namespace A215221.P391735630768535679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215222 (A175787 (n + 2)).toNat

end

end A215221.P391735630768535679

/-! ## A215221.P2622383853453213129

`A215222(eq[1, A032741(n)])`
-/

namespace A215221.P2622383853453213129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215222 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215221.P2622383853453213129

/-! ## A215221.P1538364818312503673

`A215222(record[A006530(n+2)])`
-/

namespace A215221.P1538364818312503673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215221.P1538364818312503673

/-! ## A215221.P10052447667563980511

`A215222(record[A014963(n+2)])`
-/

namespace A215221.P10052447667563980511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215221.P10052447667563980511

/-! ## A215221.P17030728103313104467

`A215222(record[A020639(n+2)])`
-/

namespace A215221.P17030728103313104467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215221.P17030728103313104467

/-! ## A215221.P16925313985599397864

`A215222(A033286(n+1)/(n+1))`
-/

namespace A215221.P16925313985599397864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215222 (SequenceMachineLib.roundAway ((A033286 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A215221.P16925313985599397864

/-! ## A215221.P14363589897293505495

`A215222(A007504(n+1)-A007504(n))`
-/

namespace A215221.P14363589897293505495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215222 (A007504 (n + 1) - A007504 n).toNat

end

end A215221.P14363589897293505495

/-!
# A215223: Number of length-n 0..3 arrays connected end-around, with no sequence of L

The programs for A215223, there is no canonical definition to state claims against.
-/

/-! ## A215223.P1336896807989543456

`A215228(∑[n+3]+1)`
-/

namespace A215223.P1336896807989543456
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215228 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A215223.P1336896807989543456

/-! ## A215223.P3063313500273142984

`lcm(2, A215228(Δ[A008778(n)]))`
-/

namespace A215223.P3063313500273142984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A215228 (f1 (n + 1) - f1 n).toNat)

end

end A215223.P3063313500273142984

/-! ## A215223.P15354556530793144745

`(A000041(n)%2)!*A215228(Δ[A008778(n)])`
-/

namespace A215223.P15354556530793144745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.tmod (A000041 n) 2).toNat : ℤ) * A215228 (f1 (n + 1) - f1 n).toNat

end

end A215223.P15354556530793144745

/-! ## A215223.P7586688981671711063

`A215228(Δ[A008778(n)])+A008683(8*(n+1))`
-/

namespace A215223.P7586688981671711063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215228 (f1 (n + 1) - f1 n).toNat + A008683 (8 * (n + 1))

end

end A215223.P7586688981671711063

/-! ## A215223.P17865228377694197796

`A014963(4*n+6)*A215228(Δ[A008778(n)])`
-/

namespace A215223.P17865228377694197796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (4 * n + 6) * A215228 (f1 (n + 1) - f1 n).toNat

end

end A215223.P17865228377694197796

/-!
# A215224: Number of length-n 0..4 arrays connected end-around, with no sequence of L

The programs for A215224, there is no canonical definition to state claims against.
-/

/-! ## A215224.P7814081275030751402

`A215228(∑[n+4]+3)`
-/

namespace A215224.P7814081275030751402
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215228 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A215224.P7814081275030751402

/-!
# A215225: Number of length-n 0..5 arrays connected end-around, with no sequence of L

The programs for A215225, there is no canonical definition to state claims against.
-/

/-! ## A215225.P191184155027341057

`A215228(∑[n+5]+6)`
-/

namespace A215225.P191184155027341057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215228 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A215225.P191184155027341057

/-!
# A215226: Number of length-n 0..6 arrays connected end-around, with no sequence of L

The programs for A215226, there is no canonical definition to state claims against.
-/

/-! ## A215226.P7740438393856682639

`A215228(A302537(n)+15)`
-/

namespace A215226.P7740438393856682639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215228 (A302537 n + 15).toNat

end

end A215226.P7740438393856682639

/-! ## A215226.P8134785658576579313

`A215228(eq[3, A219347(n)])`
-/

namespace A215226.P8134785658576579313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215226.P8134785658576579313

/-! ## A215226.P10362203055546153258

`A215228(eq[5, A193592(n)])`
-/

namespace A215226.P10362203055546153258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215226.P10362203055546153258

/-! ## A215226.P10915713798877670306

`A215228(eq[8, A258709(n)])`
-/

namespace A215226.P10915713798877670306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215228 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215226.P10915713798877670306

/-! ## A215226.P17896433646618979263

`A215228(A055999(n+3)+1)`
-/

namespace A215226.P17896433646618979263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215228 (A055999 (n + 3) + 1).toNat

end

end A215226.P17896433646618979263

/-!
# A215227: Number of length-n 0..7 arrays connected end-around, with no sequence of L

The programs for A215227, there is no canonical definition to state claims against.
-/

/-! ## A215227.P3869278987422120173

`A215228(∑[n+7]+15)`
-/

namespace A215227.P3869278987422120173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215228 (∑ j ∈ Finset.range (n + 1), f1 j + 15)

end

end A215227.P3869278987422120173

/-!
# A215229: Number of length-6 0..k arrays connected end-around, with no sequence of L

The programs for A215229, the canonical program `A215229.P8015716279270990829` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215229 has offset 1).

The definition of A215229 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215229.P8001436637941358853

`(n+1)^6-6*(n+1)^4+5*(n+1)^3+5*(n+1)²-5*(n+1)`
-/

namespace A215229.P8001436637941358853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 6 : ℤ) - (6 * (n + 1) ^ 4 : ℤ) + (5 * (n + 1) ^ 3 : ℤ) + (5 * (n + 1) ^ 2 : ℤ) - (5 * (n + 1) : ℤ)

end

end A215229.P8001436637941358853

namespace A215229

/-- `(n+1)^6-6*(n+1)^4+5*(n+1)^3+5*(n+1)²-5*(n+1)` -/
def P8001436637941358853.Spec : Prop :=
  ∀ n, P8001436637941358853.a n = A215229 (n + 1)

end A215229

/-! ## A215229.P8015716279270990829

`(2*A117642(n+1)-30*n)*A000292(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215229

/-- `(2*A117642(n+1)-30*n)*A000292(n)` -/
def P8015716279270990829.Spec : Prop :=
  ∀ n, P8015716279270990829.a n = A215229 (n + 1)

theorem P8015716279270990829.correct : P8015716279270990829.Spec := by
  intro n
  simp only [A215229, Nat.add_sub_cancel]

end A215229

/-! ## A215229.P12024913392327187678

`(A173963(n+1)+A027444(n))*A002378(n+1)`
-/

namespace A215229.P12024913392327187678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173963 (n + 1) + A027444 n) * A002378 (n + 1)

end

end A215229.P12024913392327187678

namespace A215229

/-- `(A173963(n+1)+A027444(n))*A002378(n+1)` -/
def P12024913392327187678.Spec : Prop :=
  ∀ n, P12024913392327187678.a n = A215229 (n + 1)

end A215229

/-! ## A215229.P14587961812090901361

`(A002061(n*(n+2))-A000384(n))*A005563(n)`
-/

namespace A215229.P14587961812090901361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A002061 (n * (n + 2)) - A000384 n) * A005563 n

end

end A215229.P14587961812090901361

namespace A215229

/-- `(A002061(n*(n+2))-A000384(n))*A005563(n)` -/
def P14587961812090901361.Spec : Prop :=
  ∀ n, P14587961812090901361.a n = A215229 (n + 1)

end A215229

/-! ## A215229.P7575954215662385146

`∑[∑[3*n]]*A016825(n*(∑[n+1]-2))`
-/

namespace A215229.P7575954215662385146
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A016825 ((n : ℤ) * (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 2)).toNat

end

end A215229.P7575954215662385146

namespace A215229

/-- `∑[∑[3*n]]*A016825(n*(∑[n+1]-2))` -/
def P7575954215662385146.Spec : Prop :=
  ∀ n, P7575954215662385146.a n = A215229 (n + 1)

end A215229

/-!
# A215230: Number of length-7 0..k arrays connected end-around, with no sequence of L

The programs for A215230, the canonical program `A215230.P10506393020403256526` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215230 has offset 1).

The definition of A215230 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215230.P10506393020403256526

`∑[42*C(n²+n, 3)]`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215230

/-- `∑[42*C(n²+n, 3)]` -/
def P10506393020403256526.Spec : Prop :=
  ∀ n, (P10506393020403256526.a n : ℤ) = A215230 (n + 1)

theorem P10506393020403256526.correct : P10506393020403256526.Spec := by
  intro n
  simp only [A215230, Nat.add_sub_cancel]

end A215230

/-! ## A215230.P18111695954645648892

`7*6*∑[C(n*(n+1), 3)]`
-/

namespace A215230.P18111695954645648892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7 * (6 * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A215230.P18111695954645648892

namespace A215230

/-- `7*6*∑[C(n*(n+1), 3)]` -/
def P18111695954645648892.Spec : Prop :=
  ∀ n, (P18111695954645648892.a n : ℤ) = A215230 (n + 1)

end A215230

/-! ## A215230.P16225296168896099282

`(n+1)*n*(n-1)*(n+3)*(n+2)*((n+1)²-2)`
-/

namespace A215230.P16225296168896099282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((n : ℤ) * (((n : ℤ) - 1) * ((n + 3 : ℤ) * ((n + 2 : ℤ) * (((n + 1) ^ 2 : ℤ) - 2)))))

end

end A215230.P16225296168896099282

namespace A215230

/-- `(n+1)*n*(n-1)*(n+3)*(n+2)*((n+1)²-2)` -/
def P16225296168896099282.Spec : Prop :=
  ∀ n, P16225296168896099282.a n = A215230 (n + 1)

end A215230

/-! ## A215230.P14424952275947413155

`∑[42*A217482(2*n+1)]`
-/

namespace A215230.P14424952275947413155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  42 * A217482 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215230.P14424952275947413155

namespace A215230

/-- `∑[42*A217482(2*n+1)]` -/
def P14424952275947413155.Spec : Prop :=
  ∀ n, P14424952275947413155.a n = A215230 (n + 1)

end A215230

/-! ## A215230.P914858699501333476

`∑[7*A007531(n²+n)]`
-/

namespace A215230.P914858699501333476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A007531 (n ^ 2 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215230.P914858699501333476

namespace A215230

/-- `∑[7*A007531(n²+n)]` -/
def P914858699501333476.Spec : Prop :=
  ∀ n, P914858699501333476.a n = A215230 (n + 1)

end A215230

/-! ## A215230.P14096220892155773899

`∑[7*A060423(A046092(n))]`
-/

namespace A215230.P14096220892155773899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A060423 (A046092 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215230.P14096220892155773899

namespace A215230

/-- `∑[7*A060423(A046092(n))]` -/
def P14096220892155773899.Spec : Prop :=
  ∀ n, P14096220892155773899.a n = A215230 (n + 1)

end A215230

/-!
# A215231: Increasing gaps between semiprimes.

The programs for A215231, there is no canonical definition to state claims against.
-/

/-! ## A215231.P7179331746762878633

`A217851(n+1)-A215232(n+1)`
-/

namespace A215231.P7179331746762878633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217851 (n + 1) - A215232 (n + 1)

end

end A215231.P7179331746762878633

/-! ## A215231.P3059462733740585356

`A217851(A000027(n+1))%A215232(n+1)`
-/

namespace A215231.P3059462733740585356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217851 (A000027 (n + 1)).toNat) (A215232 (n + 1))

end

end A215231.P3059462733740585356

/-! ## A215231.P11461569261466068087

`record[A356769(n+1)]`
-/

namespace A215231.P11461569261466068087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356769 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215231.P11461569261466068087

/-! ## A215231.P804549508079003473

`A065516(A085809(n+1))`
-/

namespace A215231.P804549508079003473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065516 (A085809 (n + 1)).toNat

end

end A215231.P804549508079003473

/-! ## A215231.P16760550416753767496

`A217851(n+1)-A001358(A085809(n+1))`
-/

namespace A215231.P16760550416753767496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217851 (n + 1) - A001358 (A085809 (n + 1)).toNat

end

end A215231.P16760550416753767496

/-!
# A215232: Least semiprime m such that the next semiprime is m + A215231(n).

The programs for A215232, there is no canonical definition to state claims against.
-/

/-! ## A215232.P2188539579867568562

`A217851(n+1)-A215231(n+1)`
-/

namespace A215232.P2188539579867568562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217851 (n + 1) - A215231 (n + 1)

end

end A215232.P2188539579867568562

/-! ## A215232.P11740864784432323937

`A131109(A215231(n+1))`
-/

namespace A215232.P11740864784432323937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131109 (A215231 (n + 1)).toNat

end

end A215232.P11740864784432323937

/-! ## A215232.P15113003733914427121

`A001358(A085809(n+1))`
-/

namespace A215232.P15113003733914427121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A085809 (n + 1)).toNat

end

end A215232.P15113003733914427121

/-! ## A215232.P13453919824603596435

`A189023(n+1)+A186621(A085809(n+1))`
-/

namespace A215232.P13453919824603596435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189023 (n + 1) + A186621 (A085809 (n + 1)).toNat

end

end A215232.P13453919824603596435

/-! ## A215232.P14148646907190106538

`A001358(A072000(A217851(n+1)-(n+1)))`
-/

namespace A215232.P14148646907190106538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (A072000 (A217851 (n + 1) - (n + 1 : ℤ)).toNat).toNat

end

end A215232.P14148646907190106538

/-!
# A215233: Primes of the form 4m^2 + 1 such that the next prime of this form is a record distance away.

The programs for A215233, there is no canonical definition to state claims against.
-/

/-! ## A215233.P14871659070334238659

`1+A308988(n+2)²`
-/

namespace A215233.P14871659070334238659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A308988 (n + 2) ^ 2

end

end A215233.P14871659070334238659

/-! ## A215233.P4288504354388030753

`(1-A293564(n+1))²+1`
-/

namespace A215233.P4288504354388030753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A293564 (n + 1)) ^ 2 + 1

end

end A215233.P4288504354388030753

/-! ## A215233.P4127610490199722718

`A308988(n+2)^2+abs(A016303(n))`
-/

namespace A215233.P4127610490199722718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308988 (n + 2) ^ 2 + |A016303 n|

end

end A215233.P4127610490199722718

/-! ## A215233.P14063584608523803980

`A308988(n+2)*A308988(n+2)-A033999(A319101(n+1))`
-/

namespace A215233.P14063584608523803980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308988 (n + 2) * A308988 (n + 2) - A033999 (A319101 (n + 1)).toNat

end

end A215233.P14063584608523803980

/-! ## A215233.P5024413554311263266

`A053755(A214519(n+1))`
-/

namespace A215233.P5024413554311263266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (A214519 (n + 1)).toNat

end

end A215233.P5024413554311263266

/-!
# A215234: Next prime of the form 4m^2 + 1 larger than A215233(n).

The programs for A215234, there is no canonical definition to state claims against.
-/

/-! ## A215234.P4940303597984138149

`A053755(A214519(n+1)+A214518(n+1))`
-/

namespace A215234.P4940303597984138149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (A214519 (n + 1) + A214518 (n + 1)).toNat

end

end A215234.P4940303597984138149

/-! ## A215234.P17660402715916481901

`A256970(A214519(n+1)+A214518(n+1))`
-/

namespace A215234.P17660402715916481901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (A214519 (n + 1) + A214518 (n + 1)).toNat

end

end A215234.P17660402715916481901

/-! ## A215234.P5341059572044618390

`A002522(A308988(n+2)+A308987(n+2))`
-/

namespace A215234.P5341059572044618390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002522 (A308988 (n + 2) + A308987 (n + 2)).toNat

end

end A215234.P5341059572044618390

/-! ## A215234.P1713387703797715360

`A053755(A214519(n+1)+record[A214517(n+1)])`
-/

namespace A215234.P1713387703797715360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053755 (A214519 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215234.P1713387703797715360

/-! ## A215234.P11563118435946288295

`A256970(A214519(n+1)+record[A214517(n+1)])`
-/

namespace A215234.P11563118435946288295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214517 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256970 (A214519 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215234.P11563118435946288295

/-!
# A215235: Least number k such that the sum of the 2n+1 consecutive primes starting with prime(k) is prime.

The programs for A215235, there is no canonical definition to state claims against.
-/

/-! ## A215235.P14131340380237445232

`A000720(A089793(n))`
-/

namespace A215235.P14131340380237445232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A089793 n).toNat

end

end A215235.P14131340380237445232

/-! ## A215235.P13165556353196867491

`A049084(p?[A089793(n)])`
-/

namespace A215235.P13165556353196867491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089793 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A215235.P13165556353196867491

/-! ## A215235.P4337015487414619480

`A036234(A089793(n)-1)`
-/

namespace A215235.P4337015487414619480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A089793 n - 1).toNat

end

end A215235.P4337015487414619480

/-! ## A215235.P15364289177481982666

`A061395(2*A089793(n))`
-/

namespace A215235.P15364289177481982666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A089793 n).toNat

end

end A215235.P15364289177481982666

/-! ## A215235.P5030574048264858226

`A000720(A007610(2*n+1))`
-/

namespace A215235.P5030574048264858226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A007610 (2 * n + 1)).toNat

end

end A215235.P5030574048264858226

/-! ## A215235.P7997246751190171791

`A055396(A007610(2*n+1)+A000035(2*n))`
-/

namespace A215235.P7997246751190171791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A007610 (2 * n + 1) + A000035 (2 * n)).toNat

end

end A215235.P7997246751190171791

/-! ## A215235.P15755737562326713637

`A056239(A007610(2*n+1)+A000035(2*n))`
-/

namespace A215235.P15755737562326713637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (A007610 (2 * n + 1) + A000035 (2 * n)).toNat

end

end A215235.P15755737562326713637

/-! ## A215235.P14926683899376768270

`A230980(A007610(2*n+1)+A000035(2*n))`
-/

namespace A215235.P14926683899376768270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A007610 (2 * n + 1) + A000035 (2 * n)).toNat

end

end A215235.P14926683899376768270

/-! ## A215235.P18171017199392897867

`A055396(A007610(2*n+1)*A055396(2*(n+1)))`
-/

namespace A215235.P18171017199392897867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A007610 (2 * n + 1) * A055396 (2 * (n + 1))).toNat

end

end A215235.P18171017199392897867

/-! ## A215235.P2866953196967422891

`A061395(A089793(n)²)`
-/

namespace A215235.P2866953196967422891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A089793 n ^ 2).toNat

end

end A215235.P2866953196967422891

/-! ## A215235.P8031015743212106378

`A056811(A089793(n)²)`
-/

namespace A215235.P8031015743212106378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 (A089793 n ^ 2).toNat

end

end A215235.P8031015743212106378

/-! ## A215235.P16037948003161625947

`A055396(A007610(2*n+1)²)`
-/

namespace A215235.P16037948003161625947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A007610 (2 * n + 1) ^ 2).toNat

end

end A215235.P16037948003161625947

/-! ## A215235.P15751163980986982787

`A056239(A007610(2*n+1)²)/2`
-/

namespace A215235.P15751163980986982787
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056239 (A007610 (2 * n + 1) ^ 2).toNat : ℚ) / 2

end

end A215235.P15751163980986982787

/-! ## A215235.P8860536910002260998

`A056811((A089793(n)+1)*A089793(n))`
-/

namespace A215235.P8860536910002260998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056811 ((A089793 n + 1) * A089793 n).toNat

end

end A215235.P8860536910002260998

/-! ## A215235.P10889486636390218264

`A372627(∑[n+1])`
-/

namespace A215235.P10889486636390218264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372627 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215235.P10889486636390218264

/-!
# A215236: Greatest integer k such that n^i has no identical consecutive digits for i = 0..k.

The programs for A215236, there is no canonical definition to state claims against.
-/

/-! ## A215236.P9037736024171467149

`A217157(n+2)-1`
-/

namespace A215236.P9037736024171467149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217157 (n + 2) - 1

end

end A215236.P9037736024171467149

/-! ## A215236.P8808102342307356622

`A002837(A217157(n+2))`
-/

namespace A215236.P8808102342307356622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (A217157 (n + 2)).toNat

end

end A215236.P8808102342307356622

/-! ## A215236.P15123803952285079136

`A053615(A217157(n+2)²+1)`
-/

namespace A215236.P15123803952285079136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 (A217157 (n + 2) ^ 2 + 1).toNat

end

end A215236.P15123803952285079136

/-! ## A215236.P5853256325678418609

`A127229(n+5)%A217157(n+2)`
-/

namespace A215236.P5853256325678418609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A217157 (n + 2))

end

end A215236.P5853256325678418609

/-! ## A215236.P4826031960399020441

`A258068(A056926(A217157(n+2)²))`
-/

namespace A215236.P4826031960399020441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258068 (A056926 (A217157 (n + 2) ^ 2).toNat).toNat

end

end A215236.P4826031960399020441

/-! ## A215236.P11980291097733861032

`A233583(A217157(n+2)²)%A217157(n+2)`
-/

namespace A215236.P11980291097733861032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (A217157 (n + 2) ^ 2).toNat) (A217157 (n + 2))

end

end A215236.P11980291097733861032

/-! ## A215236.P3896330797001899842

`A258068(A217157(n+2)%A101936(n+1))`
-/

namespace A215236.P3896330797001899842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258068 (Int.tmod (A217157 (n + 2)) (A101936 (n + 1))).toNat

end

end A215236.P3896330797001899842

/-!
# A215237: Least number k for which primepi(prime(k+1)/2) - primepi(prime(k)/2) = n.

The programs for A215237, there is no canonical definition to state claims against.
-/

/-! ## A215237.P9407287080690390237

`A000720(A215238(n))`
-/

namespace A215237.P9407287080690390237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A215238 n).toNat

end

end A215237.P9407287080690390237

/-! ## A215237.P13514188473695316576

`A329622(A215239(n))`
-/

namespace A215237.P13514188473695316576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329622 (A215239 n).toNat

end

end A215237.P13514188473695316576

/-!
# A215238: Prime(A215237).

The programs for A215238, there is no canonical definition to state claims against.
-/

/-! ## A215238.P17416276520447331282

`A000040(A215237(n))`
-/

namespace A215238.P17416276520447331282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A215237 n).toNat

end

end A215238.P17416276520447331282

/-! ## A215238.P53347277866130176

`A215239(n)-A001223(A215237(n))`
-/

namespace A215238.P53347277866130176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215239 n - A001223 (A215237 n).toNat

end

end A215238.P53347277866130176

/-!
# A215239: Prime number following prime(A215237).

The programs for A215239, there is no canonical definition to state claims against.
-/

/-! ## A215239.P2188166926250569520

`A215238(n)+A001223(A215237(n))`
-/

namespace A215239.P2188166926250569520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215238 n + A001223 (A215237 n).toNat

end

end A215239.P2188166926250569520

/-! ## A215239.P15331752647922797312

`A065091(A215237(n))`
-/

namespace A215239.P15331752647922797312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A215237 n).toNat

end

end A215239.P15331752647922797312

/-!
# A215240: Sum of the numbers p such that phi(p) = n, where phi is Euler's totient function.

The programs for A215240, there is no canonical definition to state claims against.
-/

/-! ## A215240.P570015359803647312

`∑{d}[n+1, A008683(#)*A378639((n+1)/#)]`
-/

namespace A215240.P570015359803647312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A378639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A215240.P570015359803647312

/-!
# A215242: G.f.: 1 = Sum_{n>=0} a(n)*x^n/(1+x)^((n+2)^2).

The programs for A215242, there is no canonical definition to state claims against.
-/

/-! ## A215242.P5772138632794370138

`A215241(∑[n+1]+2)`
-/

namespace A215242.P5772138632794370138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215241 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A215242.P5772138632794370138

/-! ## A215242.P3542456480924322757

`record[A215241(A080036(n))]`
-/

namespace A215242.P3542456480924322757
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215241 (A080036 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215242.P3542456480924322757

/-! ## A215242.P3376930457929178978

`record[A215241(n+1)^A167407(n)]`
-/

namespace A215242.P3376930457929178978
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215241 (n + 1) : ℚ) ^ (A167407 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215242.P3376930457929178978

/-! ## A215242.P12105103984562458762

`record[gcd(A215241(n+1), A226206(n))]`
-/

namespace A215242.P12105103984562458762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215241 (n + 1)) (A226206 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215242.P12105103984562458762

/-! ## A215242.P14336411010256730002

`record[A215241(n+2)/A167407(n+1)²]`
-/

namespace A215242.P14336411010256730002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215241 (n + 2) : ℚ) / (A167407 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215242.P14336411010256730002

/-!
# A215243: G.f.: 1 = Sum_{n>=0} a(n)*x^n/(1+x)^((n+3)^2).

The programs for A215243, there is no canonical definition to state claims against.
-/

/-! ## A215243.P10287972929943315002

`A215241(∑[n+2]+4)`
-/

namespace A215243.P10287972929943315002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215241 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A215243.P10287972929943315002

/-! ## A215243.P3683172758751741892

`record[gcd(A215241(n+2), A226206(n))]`
-/

namespace A215243.P3683172758751741892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A215241 (n + 2)) (A226206 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215243.P3683172758751741892

/-! ## A215243.P3156785522221258392

`A215241(A167614(n+1))^A178334(n)`
-/

namespace A215243.P3156785522221258392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215241 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A215243.P3156785522221258392

/-! ## A215243.P13715170988427222273

`A215241(A167614(n+1))%A238355(n)`
-/

namespace A215243.P13715170988427222273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215241 (A167614 (n + 1)).toNat) (A238355 (n + 10))

end

end A215243.P13715170988427222273

/-! ## A215243.P14219272701914794987

`lcm(A087960(n), A215241(A167614(n+1)))`
-/

namespace A215243.P14219272701914794987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A087960 n) (A215241 (A167614 (n + 1)).toNat)

end

end A215243.P14219272701914794987

/-!
# A215245: a(n) = minimal value of A215244(k) for 2^n <= k < 2^(n+1).

The programs for A215245, there is no canonical definition to state claims against.
-/

/-! ## A215245.P15072521119375642219

`A215244(A215253(n+1))`
-/

namespace A215245.P15072521119375642219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215244 (A215253 (n + 1)).toNat

end

end A215245.P15072521119375642219

/-! ## A215245.P21204399694001541

`round(root(A325875(2*n), 3))`
-/

namespace A215245.P21204399694001541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A325875 (2 * n) : ℝ) ^ (1 / (3 : ℝ)))

end

end A215245.P21204399694001541

/-! ## A215245.P10703175974166038589

`round(record[sqrt(A228527(n+1))])`
-/

namespace A215245.P10703175974166038589
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A228527 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A215245.P10703175974166038589

/-! ## A215245.P6313476285596051821

`ceil(sqrt(A026482(2^(-1%(n+1)+n))))`
-/

namespace A215245.P6313476285596051821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A026482 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (Int.tmod (-1) (n + 1 : ℤ) + (n : ℤ) : ℤ))).toNat : ℝ)⌉

end

end A215245.P6313476285596051821

/-! ## A215245.P15632704866750071547

`A003003(A131132(n))`
-/

namespace A215245.P15632704866750071547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003003 (A131132 n).toNat

end

end A215245.P15632704866750071547

/-!
# A215247: A Beatty sequence: a(n) = floor((n-1/2)*(2 + 2*sqrt(2))).

The programs for A215247, the canonical program `A215247.P14828822945885353363` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215247 has offset 1).

The definition of A215247 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1-1/2)*(2+2*sqrt(2)))` (program `A215247.P18040164682185209892`, by `A215247.P18040164682185209892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215247.P14828822945885353363

`floor((2*(n+1)-1)*(1+sqrt(2)))`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215247

/-- `floor((2*(n+1)-1)*(1+sqrt(2)))` -/
def P14828822945885353363.Spec : Prop :=
  ∀ n, P14828822945885353363.a n = A215247 (n + 1)

theorem P14828822945885353363.correct : P14828822945885353363.Spec := by
  intro n
  simp only [A215247, Nat.add_sub_cancel]

end A215247

/-! ## A215247.P18040164682185209892

`floor((n+1-1/2)*(2+2*sqrt(2)))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A215247.P18040164682185209892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℚ) - (1 : ℚ) / 2 : ℝ) * (2 + 2 * Real.sqrt (2 : ℝ))⌋

end

end A215247.P18040164682185209892

namespace A215247

/-- `floor((n+1-1/2)*(2+2*sqrt(2)))` -/
def P18040164682185209892.Spec : Prop :=
  ∀ n, P18040164682185209892.a n = A215247 (n + 1)

theorem P18040164682185209892.correct : P18040164682185209892.Spec := by
  intro n
  simp only [A215247, Nat.add_sub_cancel, A215247.P18040164682185209892.a, A215247.P14828822945885353363.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A215247

/-! ## A215247.P1141580706699768703

`A342281(n)+Δ[n²]`
-/

namespace A215247.P1141580706699768703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342281 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A215247.P1141580706699768703

namespace A215247

/-- `A342281(n)+Δ[n²]` -/
def P1141580706699768703.Spec : Prop :=
  ∀ n, P1141580706699768703.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P8174951669524382581

`A342280(n)-Δ[n²]`
-/

namespace A215247.P8174951669524382581
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342280 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A215247.P8174951669524382581

namespace A215247

/-- `A342280(n)-Δ[n²]` -/
def P8174951669524382581.Spec : Prop :=
  ∀ n, P8174951669524382581.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P17782356150710223849

`A063957(n+1)+A001953(n)`
-/

namespace A215247.P17782356150710223849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063957 (n + 1) + A001953 n

end

end A215247.P17782356150710223849

namespace A215247

/-- `A063957(n+1)+A001953(n)` -/
def P17782356150710223849.Spec : Prop :=
  ∀ n, P17782356150710223849.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P8535630940502775835

`2*A001954(n)-A001953(A001953(n))`
-/

namespace A215247.P8535630940502775835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001954 n - A001953 (A001953 n).toNat

end

end A215247.P8535630940502775835

namespace A215247

/-- `2*A001954(n)-A001953(A001953(n))` -/
def P8535630940502775835.Spec : Prop :=
  ∀ n, P8535630940502775835.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P2934429270485172334

`A003151(Δ[n²])`
-/

namespace A215247.P2934429270485172334
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A215247.P2934429270485172334

namespace A215247

/-- `A003151(Δ[n²])` -/
def P2934429270485172334.Spec : Prop :=
  ∀ n, P2934429270485172334.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P4607513969669899015

`A286666(Δ[n²])+1`
-/

namespace A215247.P4607513969669899015
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A215247.P4607513969669899015

namespace A215247

/-- `A286666(Δ[n²])+1` -/
def P4607513969669899015.Spec : Prop :=
  ∀ n, P4607513969669899015.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P10702431078777848762

`A080754(Δ[n²])-1`
-/

namespace A215247.P10702431078777848762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080754 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - 1

end

end A215247.P10702431078777848762

namespace A215247

/-- `A080754(Δ[n²])-1` -/
def P10702431078777848762.Spec : Prop :=
  ∀ n, P10702431078777848762.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P16788907246888693657

`A022804(Δ[n²])/2`
-/

namespace A215247.P16788907246888693657
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022804 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A215247.P16788907246888693657

namespace A215247

/-- `A022804(Δ[n²])/2` -/
def P16788907246888693657.Spec : Prop :=
  ∀ n, P16788907246888693657.a n = (A215247 (n + 1) : ℚ)

end A215247

/-! ## A215247.P12300579899773156377

`A189457(Δ[n²])-n`
-/

namespace A215247.P12300579899773156377
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189457 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A215247.P12300579899773156377

namespace A215247

/-- `A189457(Δ[n²])-n` -/
def P12300579899773156377.Spec : Prop :=
  ∀ n, P12300579899773156377.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P3828774149036333887

`A190336(Δ[n²])-n`
-/

namespace A215247.P3828774149036333887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190336 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - (n : ℤ)

end

end A215247.P3828774149036333887

namespace A215247

/-- `A190336(Δ[n²])-n` -/
def P3828774149036333887.Spec : Prop :=
  ∀ n, P3828774149036333887.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P9007871556758706001

`A285075(2*(n+1))-2`
-/

namespace A215247.P9007871556758706001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (2 * (n + 1)) - 2

end

end A215247.P9007871556758706001

namespace A215247

/-- `A285075(2*(n+1))-2` -/
def P9007871556758706001.Spec : Prop :=
  ∀ n, P9007871556758706001.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P10782614927069125993

`A285078(2*(n+1))-2`
-/

namespace A215247.P10782614927069125993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285078 (2 * (n + 1)) - 2

end

end A215247.P10782614927069125993

namespace A215247

/-- `A285078(2*(n+1))-2` -/
def P10782614927069125993.Spec : Prop :=
  ∀ n, P10782614927069125993.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P6938675574453409848

`round(A184921(2*n+1)/2)`
-/

namespace A215247.P6938675574453409848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A184921 (2 * n + 1) : ℚ) / 2)

end

end A215247.P6938675574453409848

namespace A215247

/-- `round(A184921(2*n+1)/2)` -/
def P6938675574453409848.Spec : Prop :=
  ∀ n, P6938675574453409848.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P1426644666082781929

`xor(1, xor(1, A003151(2*n+1)))`
-/

namespace A215247.P1426644666082781929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A003151 (2 * n + 1)))

end

end A215247.P1426644666082781929

namespace A215247

/-- `xor(1, xor(1, A003151(2*n+1)))` -/
def P1426644666082781929.Spec : Prop :=
  ∀ n, P1426644666082781929.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P3056746197358837251

`A087057(2*n+1)+2*n`
-/

namespace A215247.P3056746197358837251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087057 (2 * n + 1) + (2 * n : ℤ)

end

end A215247.P3056746197358837251

namespace A215247

/-- `A087057(2*n+1)+2*n` -/
def P3056746197358837251.Spec : Prop :=
  ∀ n, P3056746197358837251.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P8475288998334290646

`A184922(2*n+1)-2*n`
-/

namespace A215247.P8475288998334290646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184922 (2 * n + 1) - (2 * n : ℤ)

end

end A215247.P8475288998334290646

namespace A215247

/-- `A184922(2*n+1)-2*n` -/
def P8475288998334290646.Spec : Prop :=
  ∀ n, P8475288998334290646.a n = A215247 (n + 1)

end A215247

/-! ## A215247.P14079088130124941026

`A140868(2*n+1)/2-n`
-/

namespace A215247.P14079088130124941026
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140868 (2 * n + 1) : ℚ) / 2 - (n : ℚ)

end

end A215247.P14079088130124941026

namespace A215247

/-- `A140868(2*n+1)/2-n` -/
def P14079088130124941026.Spec : Prop :=
  ∀ n, P14079088130124941026.a n = (A215247 (n + 1) : ℚ)

end A215247

/-! ## A215247.P8486121956738863383

`ceil(sqrt(A346522(2*(n+1))))-1`
-/

namespace A215247.P8486121956738863383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A346522 (2 * (n + 1)) : ℝ)⌉ - 1

end

end A215247.P8486121956738863383

namespace A215247

/-- `ceil(sqrt(A346522(2*(n+1))))-1` -/
def P8486121956738863383.Spec : Prop :=
  ∀ n, P8486121956738863383.a n = A215247 (n + 1)

end A215247

/-!
# A215248: Numbers n such that n^2 + 1 and (n^2+2)/6 are both primes.

The programs for A215248, there is no canonical definition to state claims against.
-/

/-! ## A215248.P14197258752713609891

`round(sqrt(6*A215429(n+1)))`
-/

namespace A215248.P14197258752713609891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (6 * A215429 (n + 1) : ℝ))

end

end A215248.P14197258752713609891

/-! ## A215248.P10746604928485603877

`A000027(sqrt(6*A215429(n+1)-2))`
-/

namespace A215248.P10746604928485603877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (SequenceMachineLib.roundAway (Real.sqrt (6 * A215429 (n + 1) - 2 : ℝ))).toNat

end

end A215248.P10746604928485603877

/-! ## A215248.P11001661957188881592

`floor(sqrt(A102560(n)+6*A215429(n+1)+1))`
-/

namespace A215248.P11001661957188881592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A102560 n + 6 * A215429 (n + 1) + 1)

end

end A215248.P11001661957188881592

/-! ## A215248.P8971881685047838942

`floor(sqrt(A002322(n+1)+6*A215429(n+1)+1))`
-/

namespace A215248.P8971881685047838942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A002322 (n + 1) + 6 * A215429 (n + 1) + 1)

end

end A215248.P8971881685047838942

/-! ## A215248.P8784967162058175378

`floor(sqrt(A054385(n+1)+6*A215429(n+1)+1))`
-/

namespace A215248.P8784967162058175378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A054385 (n + 1) + 6 * A215429 (n + 1) + 1)

end

end A215248.P8784967162058175378

/-!
# A215251: Product of terms in n-th row of A037306.

The programs for A215251, there is no canonical definition to state claims against.
-/

/-! ## A215251.P11670583207765302944

`A242336(a(n-2)+1)²` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2`
-/

namespace A215251.P11670583207765302944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1, 2] fun n a =>
  A242336 (a (n - 2) + 1).toNat ^ 2

end

end A215251.P11670583207765302944

/-! ## A215251.P17005616810977181854

`A124526(A376809(n+1))`
-/

namespace A215251.P17005616810977181854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124526 (A376809 (n + 1)).toNat

end

end A215251.P17005616810977181854

/-! ## A215251.P3513870130983569399

`A104559(A107840(n+2))`
-/

namespace A215251.P3513870130983569399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104559 (A107840 (n + 2)).toNat

end

end A215251.P3513870130983569399

/-!
# A215252: Number of indecomposable permutations sortable using two parallel stacks.

The programs for A215252, there is no canonical definition to state claims against.
-/

/-! ## A215252.P15438143720959224038

`Δ[A211964(Δ[A187258(n)])]`
-/

namespace A215252.P15438143720959224038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187258 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211964 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A215252.P15438143720959224038

/-! ## A215252.P8954741356452075904

`A054899(A277795(2*(n+1))+8)`
-/

namespace A215252.P8954741356452075904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054899 (A277795 (2 * (n + 1)) + 8).toNat

end

end A215252.P8954741356452075904

/-! ## A215252.P8404382985394885701

`A284712(round(sqrt(n²+1)))%A284707(n)`
-/

namespace A215252.P8404382985394885701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A284712 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (A284707 n)

end

end A215252.P8404382985394885701

/-!
# A215253: a(n) = decimal equivalent of A215254(n).

The programs for A215253, there is no canonical definition to state claims against.
-/

/-! ## A215253.P3009078230400846172

`A350969(∏{e}[n+1, #]+∑[2^n])`
-/

namespace A215253.P3009078230400846172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350969 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + ∑ j ∈ Finset.range (n + 1), f2 j)

end

end A215253.P3009078230400846172

/-! ## A215253.P13180360809327545111

`∑[A201997(A344743(n))+1]`
-/

namespace A215253.P13180360809327545111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201997 (A344743 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A215253.P13180360809327545111

/-! ## A215253.P1934975901690934974

`A025469(A048510(n))+A019299(n)`
-/

namespace A215253.P1934975901690934974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025469 (A048510 n).toNat + A019299 n

end

end A215253.P1934975901690934974

/-! ## A215253.P15962008548150174044

`A269249(A124059(n+1))+A019299(n)`
-/

namespace A215253.P15962008548150174044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269249 (A124059 (n + 1)).toNat + A019299 n

end

end A215253.P15962008548150174044

/-!
# A215254: Consider numbers m in the range 2^n <= m < 2^(n+1); the smallest A215244(m) in this range is k=A215245(n); a(n) = binary representation of m for the first time this k appears.

The programs for A215254, there is no canonical definition to state claims against.
-/

/-! ## A215254.P13235378793319428728

`A007088(A215253(n+1))`
-/

namespace A215254.P13235378793319428728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A215253 (n + 1)).toNat

end

end A215254.P13235378793319428728

/-! ## A215254.P11956340680381862615

`A185544(2*A215253(n+1))`
-/

namespace A215254.P11956340680381862615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A215253 (n + 1)).toNat

end

end A215254.P11956340680381862615

/-! ## A215254.P3829784339079495674

`A007088(A350969(∏{e}[n+1, #]+∑[2^n]))`
-/

namespace A215254.P3829784339079495674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A350969 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + ∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A215254.P3829784339079495674

/-! ## A215254.P3805847879242905013

`A185544(2*A350969(∏{e}[n+1, #]+∑[2^n]))`
-/

namespace A215254.P3805847879242905013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A350969 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p + ∑ j ∈ Finset.range (n + 1), f2 j)).toNat

end

end A215254.P3805847879242905013

/-!
# A215255: Let S be the binary string consisting of the first n digits of (100101)*; a(n) = number of ways of writing S as a product of palindromes.

The programs for A215255, there is no canonical definition to state claims against.
-/

/-! ## A215255.P11138801399292806444

`A215244(floor(A206927(n+1)/2))`
-/

namespace A215255.P11138801399292806444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215244 ⌊(A206927 (n + 1) : ℚ) / 2⌋.toNat

end

end A215255.P11138801399292806444

/-! ## A215255.P16931241240418880512

`A215244(A019299(n)-A326596(n))`
-/

namespace A215255.P16931241240418880512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215244 (A019299 n - A326596 n).toNat

end

end A215255.P16931241240418880512

/-! ## A215255.P6876098166823891754

`xor(A000041(n), A275949(A000078(2*n)))`
-/

namespace A215255.P6876098166823891754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000041 n) (A275949 (A000078 (2 * n)).toNat)

end

end A215255.P6876098166823891754

/-!
# A215256: Longest palindromic factor of (n base 2); in case of tie choose largest; if it begins with 0 complement it.

The programs for A215256, there is no canonical definition to state claims against.
-/

/-! ## A215256.P3268438544948157433

`A188548(gcd(A000217(n), A001142(n)))`
-/

namespace A215256.P3268438544948157433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188548 (Int.gcd (A000217 n) (A001142 n))

end

end A215256.P3268438544948157433

/-! ## A215256.P121837757286940696

`A265526(gcd(n, A309985(n)))`
-/

namespace A215256.P121837757286940696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265526 (Int.gcd (n : ℤ) (A309985 n))

end

end A215256.P121837757286940696

/-! ## A215256.P5582975052108358780

`A076289(A165419(n^A136400(n)))`
-/

namespace A215256.P5582975052108358780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076289 (A165419 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A136400 n : ℤ))).toNat).toNat

end

end A215256.P5582975052108358780

/-! ## A215256.P14076705822856291773

`A099821(A165419(n)^A136400(n))`
-/

namespace A215256.P14076705822856291773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099821 (SequenceMachineLib.roundAway ((A165419 n : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A215256.P14076705822856291773

/-! ## A215256.P9699074694137367829

`A265526(A200322(n)^A136400(n))`
-/

namespace A215256.P9699074694137367829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265526 (SequenceMachineLib.roundAway ((A200322 n : ℚ) ^ (A136400 n : ℤ))).toNat

end

end A215256.P9699074694137367829

/-!
# A215257: Number of indecomposable permutations sortable by a double-ended queue.

The programs for A215257, there is no canonical definition to state claims against.
-/

/-! ## A215257.P4629098045494268309

`A110656(A137543(n+1)-1)`
-/

namespace A215257.P4629098045494268309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A137543 (n + 1) - 1).toNat

end

end A215257.P4629098045494268309

/-! ## A215257.P6421100594354801450

`A110656(A137544(n+1)-1)`
-/

namespace A215257.P6421100594354801450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A137544 (n + 1) - 1).toNat

end

end A215257.P6421100594354801450

/-! ## A215257.P10360191358703360431

`A132292(A137543(n+1)+7)`
-/

namespace A215257.P10360191358703360431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132292 (A137543 (n + 1) + 7).toNat

end

end A215257.P10360191358703360431

/-!
# A215258: Smallest number h such that (2n+1)*h is a repunit (A002275), or 0 if no such h exists.

The programs for A215258, there is no canonical definition to state claims against.
-/

/-! ## A215258.P11676381836452598104

`A190301(Δ[n²])`
-/

namespace A215258.P11676381836452598104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190301 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A215258.P11676381836452598104

/-! ## A215258.P12856364767007768201

`A190301(2*n+1)+A190301(2*(n+1))`
-/

namespace A215258.P12856364767007768201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190301 (2 * n + 1) + A190301 (2 * (n + 1))

end

end A215258.P12856364767007768201

/-! ## A215258.P1367983038094000178

`A002275(A084681(2*n+1))/(2*n+1)`
-/

namespace A215258.P1367983038094000178
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002275 (A084681 (2 * n + 1)).toNat : ℚ) / (2 * n + 1 : ℚ)

end

end A215258.P1367983038094000178

/-! ## A215258.P4841225204128249151

`gcd(A151933(n), A190301(A005408(n)))`
-/

namespace A215258.P4841225204128249151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151933 n) (A190301 (A005408 n).toNat)

end

end A215258.P4841225204128249151

/-! ## A215258.P3042948578779082668

`or(A000007(n), A190301(A005408(n)))`
-/

namespace A215258.P3042948578779082668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A190301 (A005408 n).toNat)

end

end A215258.P3042948578779082668

/-! ## A215258.P714372474768163018

`or(A010054(n), A190301(A005408(n)))`
-/

namespace A215258.P714372474768163018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 n) (A190301 (A005408 n).toNat)

end

end A215258.P714372474768163018

/-! ## A215258.P3455995984574215765

`A190301(A005408(n))+A000007(n+1)`
-/

namespace A215258.P3455995984574215765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190301 (A005408 n).toNat + A000007 (n + 1)

end

end A215258.P3455995984574215765

/-! ## A215258.P13228589521170070736

`A190301(A005408(n))+A151933(n+1)`
-/

namespace A215258.P13228589521170070736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190301 (A005408 n).toNat + A151933 (n + 1)

end

end A215258.P13228589521170070736

/-! ## A215258.P13104739344327937508

`A059841(2*n)*A190301(A005408(n))`
-/

namespace A215258.P13104739344327937508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (2 * n) * A190301 (A005408 n).toNat

end

end A215258.P13104739344327937508

/-!
# A215259: Nearest integer to log(A003418(n)).

The programs for A215259, the canonical program `A215259.P940527813139096403` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215259 has offset 0).

The definition of A215259 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215259.P940527813139096403

`A187284(n)+n`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215259

/-- `A187284(n)+n` -/
def P940527813139096403.Spec : Prop :=
  ∀ n, P940527813139096403.a n = A215259 n

theorem P940527813139096403.correct : P940527813139096403.Spec := by
  intro n
  simp only [A215259]

end A215259

/-! ## A215259.P2646161899311287155

`A005843(n)-(n-A187284(n))`
-/

namespace A215259.P2646161899311287155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n - ((n : ℤ) - A187284 n)

end

end A215259.P2646161899311287155

namespace A215259

/-- `A005843(n)-(n-A187284(n))` -/
def P2646161899311287155.Spec : Prop :=
  ∀ n, P2646161899311287155.a n = A215259 n

end A215259

/-! ## A215259.P12356436175547307021

`A106400(n)²-(1-n-A187284(n))`
-/

namespace A215259.P12356436175547307021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106400 n ^ 2 - (1 - (n : ℤ) - A187284 n)

end

end A215259.P12356436175547307021

namespace A215259

/-- `A106400(n)²-(1-n-A187284(n))` -/
def P12356436175547307021.Spec : Prop :=
  ∀ n, P12356436175547307021.a n = A215259 n

end A215259

/-! ## A215259.P7516452015628191446

`A187284(n)%A000124(n)-A001489(n)`
-/

namespace A215259.P7516452015628191446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187284 n) (A000124 n) - A001489 n

end

end A215259.P7516452015628191446

namespace A215259

/-- `A187284(n)%A000124(n)-A001489(n)` -/
def P7516452015628191446.Spec : Prop :=
  ∀ n, P7516452015628191446.a n = A215259 n

end A215259

/-! ## A215259.P15913307174617873676

`(A187284(n)-A001489(n))%A008859(n)`
-/

namespace A215259.P15913307174617873676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A187284 n - A001489 n) (A008859 n)

end

end A215259.P15913307174617873676

namespace A215259

/-- `(A187284(n)-A001489(n))%A008859(n)` -/
def P15913307174617873676.Spec : Prop :=
  ∀ n, P15913307174617873676.a n = A215259 n

end A215259

/-! ## A215259.P1590365564182497790

`round(log(A003418(n)))`
-/

namespace A215259.P1590365564182497790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A003418 n : ℝ))

end

end A215259.P1590365564182497790

namespace A215259

/-- `round(log(A003418(n)))` -/
def P1590365564182497790.Spec : Prop :=
  ∀ n, P1590365564182497790.a n = A215259 n

end A215259

/-! ## A215259.P11593481601444043588

`round(log(A075059(n)-1))`
-/

namespace A215259.P11593481601444043588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A075059 n - 1 : ℝ))

end

end A215259.P11593481601444043588

namespace A215259

/-- `round(log(A075059(n)-1))` -/
def P11593481601444043588.Spec : Prop :=
  ∀ n, P11593481601444043588.a n = A215259 n

end A215259

/-! ## A215259.P2873971286013459579

`round(log(A139550(2*n)))`
-/

namespace A215259.P2873971286013459579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A139550 (2 * n) : ℝ))

end

end A215259.P2873971286013459579

namespace A215259

/-- `round(log(A139550(2*n)))` -/
def P2873971286013459579.Spec : Prop :=
  ∀ n, P2873971286013459579.a n = A215259 n

end A215259

/-! ## A215259.P17138281798515005996

`round(log(∏[A014963(∏{p}[n, #])]))`
-/

namespace A215259.P17138281798515005996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℝ))

end

end A215259.P17138281798515005996

namespace A215259

/-- `round(log(∏[A014963(∏{p}[n, #])]))` -/
def P17138281798515005996.Spec : Prop :=
  ∀ n, P17138281798515005996.a n = A215259 n

end A215259

/-! ## A215259.P15865094026133352861

`round(log(A002944(n+1)*A048671(n+1)))`
-/

namespace A215259.P15865094026133352861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.log (A002944 (n + 1) * A048671 (n + 1) : ℝ))

end

end A215259.P15865094026133352861

namespace A215259

/-- `round(log(A002944(n+1)*A048671(n+1)))` -/
def P15865094026133352861.Spec : Prop :=
  ∀ n, P15865094026133352861.a n = A215259 n

end A215259

/-!
# A215260: Nearest integer to log(A002110(n)).

The programs for A215260, the canonical program `A215260.P2192226197169425689` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215260 has offset 0).

The definition of A215260 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215260.P2192226197169425689

`round(∑[log(A008578(n+1))])`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215260

/-- `round(∑[log(A008578(n+1))])` -/
def P2192226197169425689.Spec : Prop :=
  ∀ n, P2192226197169425689.a n = A215260 n

theorem P2192226197169425689.correct : P2192226197169425689.Spec := by
  intro n
  simp only [A215260]

end A215260

/-! ## A215260.P9808973660129801575

`round(∑[log(A158611(n+2))])`
-/

namespace A215260.P9808973660129801575
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A158611 (n + 2) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215260.P9808973660129801575

namespace A215260

/-- `round(∑[log(A158611(n+2))])` -/
def P9808973660129801575.Spec : Prop :=
  ∀ n, P9808973660129801575.a n = A215260 n

end A215260

/-! ## A215260.P10363202990499471299

`round(∑[record[log(A006530(n+1))]])`
-/

namespace A215260.P10363202990499471299
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A006530 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215260.P10363202990499471299

namespace A215260

/-- `round(∑[record[log(A006530(n+1))]])` -/
def P10363202990499471299.Spec : Prop :=
  ∀ n, P10363202990499471299.a n = A215260 n

end A215260

/-! ## A215260.P7466394653068306334

`round(∑[record[log(A020639(n+1))]])`
-/

namespace A215260.P7466394653068306334
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (A020639 (n + 1) : ℝ)

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215260.P7466394653068306334

namespace A215260

/-- `round(∑[record[log(A020639(n+1))]])` -/
def P7466394653068306334.Spec : Prop :=
  ∀ n, P7466394653068306334.a n = A215260 n

end A215260

/-! ## A215260.P10351294169128233845

`lt[0, char[A057872(n)]]`
-/

namespace A215260.P10351294169128233845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215260.P10351294169128233845

namespace A215260

/-- `lt[0, char[A057872(n)]]` -/
def P10351294169128233845.Spec : Prop :=
  ∀ n, (P10351294169128233845.a n : ℤ) = A215260 n

end A215260

/-! ## A215260.P12631556575561254720

`A057872(A162800(n))`
-/

namespace A215260.P12631556575561254720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (A162800 n).toNat

end

end A215260.P12631556575561254720

namespace A215260

/-- `A057872(A162800(n))` -/
def P12631556575561254720.Spec : Prop :=
  ∀ n, P12631556575561254720.a n = A215260 n

end A215260

/-! ## A215260.P5504671406342447409

`A057872(A008578(n+1))`
-/

namespace A215260.P5504671406342447409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (A008578 (n + 1)).toNat

end

end A215260.P5504671406342447409

namespace A215260

/-- `A057872(A008578(n+1))` -/
def P5504671406342447409.Spec : Prop :=
  ∀ n, P5504671406342447409.a n = A215260 n

end A215260

/-! ## A215260.P9964421551415040903

`A057872(A065514(n+1))`
-/

namespace A215260.P9964421551415040903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (A065514 (n + 1)).toNat

end

end A215260.P9964421551415040903

namespace A215260

/-- `A057872(A065514(n+1))` -/
def P9964421551415040903.Spec : Prop :=
  ∀ n, P9964421551415040903.a n = A215260 n

end A215260

/-! ## A215260.P10385930311146322617

`A057872(A182986(n+1))`
-/

namespace A215260.P10385930311146322617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (A182986 (n + 1)).toNat

end

end A215260.P10385930311146322617

namespace A215260

/-- `A057872(A182986(n+1))` -/
def P10385930311146322617.Spec : Prop :=
  ∀ n, P10385930311146322617.a n = A215260 n

end A215260

/-! ## A215260.P2699871794459423045

`A057872(A158611(n+2))`
-/

namespace A215260.P2699871794459423045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (A158611 (n + 2)).toNat

end

end A215260.P2699871794459423045

namespace A215260

/-- `A057872(A158611(n+2))` -/
def P2699871794459423045.Spec : Prop :=
  ∀ n, P2699871794459423045.a n = A215260 n

end A215260

/-! ## A215260.P14344356466614133244

`A057872(A335402(n+2))`
-/

namespace A215260.P14344356466614133244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (A335402 (n + 2)).toNat

end

end A215260.P14344356466614133244

namespace A215260

/-- `A057872(A335402(n+2))` -/
def P14344356466614133244.Spec : Prop :=
  ∀ n, P14344356466614133244.a n = A215260 n

end A215260

/-! ## A215260.P13608622479020445126

`A057872(record[A006530(n+1)])`
-/

namespace A215260.P13608622479020445126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215260.P13608622479020445126

namespace A215260

/-- `A057872(record[A006530(n+1)])` -/
def P13608622479020445126.Spec : Prop :=
  ∀ n, P13608622479020445126.a n = A215260 n

end A215260

/-! ## A215260.P2446229684040005779

`A057872(record[A014963(n+1)])`
-/

namespace A215260.P2446229684040005779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215260.P2446229684040005779

namespace A215260

/-- `A057872(record[A014963(n+1)])` -/
def P2446229684040005779.Spec : Prop :=
  ∀ n, P2446229684040005779.a n = A215260 n

end A215260

/-! ## A215260.P6355350844554258712

`A057872(record[A020639(n+1)])`
-/

namespace A215260.P6355350844554258712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215260.P6355350844554258712

namespace A215260

/-- `A057872(record[A020639(n+1)])` -/
def P6355350844554258712.Spec : Prop :=
  ∀ n, P6355350844554258712.a n = A215260 n

end A215260

/-! ## A215260.P13664880633913958980

`A057872(A006093(n+1))`
-/

namespace A215260.P13664880633913958980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (A006093 (n + 1)).toNat

end

end A215260.P13664880633913958980

namespace A215260

/-- `A057872(A006093(n+1))` -/
def P13664880633913958980.Spec : Prop :=
  ∀ n, P13664880633913958980.a n = A215260 n

end A215260

/-! ## A215260.P18397043355400280683

`A057872(A112925(n+1))`
-/

namespace A215260.P18397043355400280683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (A112925 (n + 1)).toNat

end

end A215260.P18397043355400280683

namespace A215260

/-- `A057872(A112925(n+1))` -/
def P18397043355400280683.Spec : Prop :=
  ∀ n, P18397043355400280683.a n = A215260 n

end A215260

/-! ## A215260.P17193889635741640322

`A057872(record[A000010(n+1)])`
-/

namespace A215260.P17193889635741640322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215260.P17193889635741640322

namespace A215260

/-- `A057872(record[A000010(n+1)])` -/
def P17193889635741640322.Spec : Prop :=
  ∀ n, P17193889635741640322.a n = A215260 n

end A215260

/-! ## A215260.P16653326483392894925

`A057872(A000040(n+1)-1)`
-/

namespace A215260.P16653326483392894925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (A000040 (n + 1) - 1).toNat

end

end A215260.P16653326483392894925

namespace A215260

/-- `A057872(A000040(n+1)-1)` -/
def P16653326483392894925.Spec : Prop :=
  ∀ n, P16653326483392894925.a n = A215260 n

end A215260

/-! ## A215260.P17056869330421089405

`A057872(A157604(n+1))`
-/

namespace A215260.P17056869330421089405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (A157604 (n + 1)).toNat

end

end A215260.P17056869330421089405

namespace A215260

/-- `A057872(A157604(n+1))` -/
def P17056869330421089405.Spec : Prop :=
  ∀ n, P17056869330421089405.a n = A215260 n

end A215260

/-! ## A215260.P6409047008199941005

`A057872(A004789(n))`
-/

namespace A215260.P6409047008199941005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057872 (A004789 n).toNat

end

end A215260.P6409047008199941005

namespace A215260

/-- `A057872(A004789(n))` -/
def P6409047008199941005.Spec : Prop :=
  ∀ n, P6409047008199941005.a n = A215260 n

end A215260

/-!
# A215262: Let w denote the harmonic saw map, write w^n(gamma) = -b(n) + gamma*c(n); sequence gives b(n).

The programs for A215262, there is no canonical definition to state claims against.
-/

/-! ## A215262.P3735618544205668839

`floor(γ*A215263(n))`
-/

namespace A215262.P3735618544205668839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.eulerMascheroniConstant * (A215263 n : ℝ)⌋

end

end A215262.P3735618544205668839

/-!
# A215263: Let w denote the harmonic saw map, write w^n(gamma) = -b(n) + gamma*c(n); sequence gives c(n).

The programs for A215263, there is no canonical definition to state claims against.
-/

/-! ## A215263.P1311953121909568577

`∏[A141056(A056239(n+1)*A332259(n))]`
-/

namespace A215263.P1311953121909568577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141056 (A056239 (n + 1) * A332259 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A215263.P1311953121909568577

/-! ## A215263.P15846523892331431137

`gcd(A005843(A164369(n)), A357718(2*(n+1)))`
-/

namespace A215263.P15846523892331431137
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A005843 (A164369 n).toNat) (A357718 (2 * (n + 1)))

end

end A215263.P15846523892331431137

/-!
# A215264: Numbers k such that sigma(k) > 5*k.

The programs for A215264, there is no canonical definition to state claims against.
-/

/-! ## A215264.P1741051879805804930

`A307115(record[A307089(n)])`
-/

namespace A215264.P1741051879805804930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307089 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307115 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A215264.P1741051879805804930

/-! ## A215264.P4469909818106125036

`A307115(A292125(n+1))`
-/

namespace A215264.P4469909818106125036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307115 (A292125 (n + 1)).toNat

end

end A215264.P4469909818106125036

/-!
# A215265: a(n) = (n-1)^(n+1) - n^n.

The programs for A215265, the canonical program `A215265.P2121262643678649384` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215265 has offset 0).

The definition of A215265 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n-1)^(n+1)-n^n` (program `A215265.P2121262643678649384`, by `A215265.P2121262643678649384.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215265.P2121262643678649384

`(n-1)^(n+1)-n^n`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215265

/-- `(n-1)^(n+1)-n^n` -/
def P2121262643678649384.Spec : Prop :=
  ∀ n, P2121262643678649384.a n = A215265 n

theorem P2121262643678649384.correct : P2121262643678649384.Spec := by
  intro n
  simp only [A215265]

end A215265

/-!
# A215266: Number of solid standard Young tableaux of cylindrical shape lambda X 2, where lambda ranges over all partitions of n.

The programs for A215266, there is no canonical definition to state claims against.
-/

/-! ## A215266.P17075712042991314173

`A215204(∑[n+3])`
-/

namespace A215266.P17075712042991314173
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215266.P17075712042991314173

/-! ## A215266.P10044992356667751951

`A215204(A141214(n))%A098272(n)`
-/

namespace A215266.P10044992356667751951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215204 (A141214 n).toNat) (A098272 n)

end

end A215266.P10044992356667751951

/-! ## A215266.P14211963907609139229

`A007318(∑[n])*A215204(A141214(n))`
-/

namespace A215266.P14211963907609139229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A215204 (A141214 n).toNat

end

end A215266.P14211963907609139229

/-! ## A215266.P2334423435180614719

`A014963(6*(n+1))*A215204(A141214(n))`
-/

namespace A215266.P2334423435180614719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (6 * (n + 1)) * A215204 (A141214 n).toNat

end

end A215266.P2334423435180614719

/-! ## A215266.P17129667983009783206

`A215204(A141214(n))+A008683(8*n+4)`
-/

namespace A215266.P17129667983009783206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215204 (A141214 n).toNat + A008683 (8 * n + 4)

end

end A215266.P17129667983009783206

/-!
# A215269: Coefficient triangle of the modified Hermite-Bell polynomials for power -2.

The programs for A215269, there is no canonical definition to state claims against.
-/

/-! ## A215269.P7872327917361631145

`A215216(n)/A000120(A215223(n+1))`
-/

namespace A215269.P7872327917361631145
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A215216 n : ℚ) / (A000120 (A215223 (n + 1)).toNat : ℚ)

end

end A215269.P7872327917361631145

/-!
# A215270: a(n) = a(n-1)*a(n-2) with a(0)=1, a(1)=6.

The programs for A215270, the canonical program `A215270.P2349994761820062567` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215270 has offset 0).

The definition of A215270 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)` (program `A215270.P2349994761820062567`, by `A215270.P2349994761820062567.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215270.P2349994761820062567

`a(n-1)*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215270

/-- `a(n-1)*a(n-2)` -/
def P2349994761820062567.Spec : Prop :=
  ∀ n, (P2349994761820062567.a n : ℤ) = A215270 n

theorem P2349994761820062567.correct : P2349994761820062567.Spec := by
  intro n
  simp only [A215270]

end A215270

/-! ## A215270.P2703541559245185693

`a(n-1)²/a(n-3)` with `a(0)=1, a(1)=6, a(2)=6`
-/

namespace A215270.P2703541559245185693
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6, 6] fun n a =>
  a (n - 1) ^ 2 / a (n - 3)

end

end A215270.P2703541559245185693

namespace A215270

/-- `a(n-1)²/a(n-3)` -/
def P2703541559245185693.Spec : Prop :=
  ∀ n, P2703541559245185693.a n = (A215270 n : ℚ)

end A215270

/-! ## A215270.P7049438814641164908

`a(n-1)/a(n-2)^(-1)` with `a(0)=1, a(1)=6`
-/

namespace A215270.P7049438814641164908
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 1) / a (n - 2) ^ (-1 : ℤ)

end

end A215270.P7049438814641164908

namespace A215270

/-- `a(n-1)/a(n-2)^(-1)` -/
def P7049438814641164908.Spec : Prop :=
  ∀ n, P7049438814641164908.a n = (A215270 n : ℚ)

end A215270

/-! ## A215270.P14195773931390336868

`6^A000045(n)`
-/

namespace A215270.P14195773931390336868
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A000045 n : ℤ)

end

end A215270.P14195773931390336868

namespace A215270

/-- `6^A000045(n)` -/
def P14195773931390336868.Spec : Prop :=
  ∀ n, P14195773931390336868.a n = (A215270 n : ℚ)

end A215270

/-! ## A215270.P14993155981962202179

`6^A023441(n)`
-/

namespace A215270.P14993155981962202179
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (6 : ℚ) ^ (A023441 n : ℤ)

end

end A215270.P14993155981962202179

namespace A215270

/-- `6^A023441(n)` -/
def P14993155981962202179.Spec : Prop :=
  ∀ n, P14993155981962202179.a n = (A215270 n : ℚ)

end A215270

/-!
# A215271: a(n) = a(n-1)*a(n-2) with a(0)=1, a(1)=8.

The programs for A215271, the canonical program `A215271.P1056303145323434630` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215271 has offset 0).

The definition of A215271 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)` (program `A215271.P1056303145323434630`, by `A215271.P1056303145323434630.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215271.P1056303145323434630

`a(n-1)*a(n-2)` with `a(0)=1, a(1)=8`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215271

/-- `a(n-1)*a(n-2)` -/
def P1056303145323434630.Spec : Prop :=
  ∀ n, (P1056303145323434630.a n : ℤ) = A215271 n

theorem P1056303145323434630.correct : P1056303145323434630.Spec := by
  intro n
  simp only [A215271]

end A215271

/-! ## A215271.P1307129762213759847

`(2^round(ϕ^n/sqrt(5)))^3`
-/

namespace A215271.P1307129762213759847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) : ℤ)) ^ 3

end

end A215271.P1307129762213759847

namespace A215271

/-- `(2^round(ϕ^n/sqrt(5)))^3` -/
def P1307129762213759847.Spec : Prop :=
  ∀ n, P1307129762213759847.a n = (A215271 n : ℚ)

end A215271

/-! ## A215271.P10879678618802437353

`a(n-1)²/a(n-3)` with `a(0)=1, a(1)=8, a(2)=8`
-/

namespace A215271.P10879678618802437353
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8, 8] fun n a =>
  a (n - 1) ^ 2 / a (n - 3)

end

end A215271.P10879678618802437353

namespace A215271

/-- `a(n-1)²/a(n-3)` -/
def P10879678618802437353.Spec : Prop :=
  ∀ n, P10879678618802437353.a n = (A215271 n : ℚ)

end A215271

/-! ## A215271.P519061237129456678

`a(n-1)/a(n-2)^(-1)` with `a(0)=1, a(1)=8`
-/

namespace A215271.P519061237129456678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 8] fun n a =>
  a (n - 1) / a (n - 2) ^ (-1 : ℤ)

end

end A215271.P519061237129456678

namespace A215271

/-- `a(n-1)/a(n-2)^(-1)` -/
def P519061237129456678.Spec : Prop :=
  ∀ n, P519061237129456678.a n = (A215271 n : ℚ)

end A215271

/-! ## A215271.P9494520910097859490

`floor(2^∑[a(n-1)+a(n-2)])` with `a(0)=0, a(1)=3, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A215271.P9494520910097859490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 3, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215271.P9494520910097859490

namespace A215271

/-- `floor(2^∑[a(n-1)+a(n-2)])` -/
def P9494520910097859490.Spec : Prop :=
  ∀ n, (P9494520910097859490.a n : ℤ) = A215271 n

end A215271

/-!
# A215272: a(n) = a(n-1)*a(n-2) with a(0)=1, a(1)=9.

The programs for A215272, the canonical program `A215272.P12672627796700017540` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215272 has offset 0).

The definition of A215272 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*a(n-2)` (program `A215272.P12672627796700017540`, by `A215272.P12672627796700017540.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A215272.P12672627796700017540

`a(n-1)*a(n-2)` with `a(0)=1, a(1)=9`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215272

/-- `a(n-1)*a(n-2)` -/
def P12672627796700017540.Spec : Prop :=
  ∀ n, (P12672627796700017540.a n : ℤ) = A215272 n

theorem P12672627796700017540.correct : P12672627796700017540.Spec := by
  intro n
  simp only [A215272]

end A215272

/-! ## A215272.P18090334421734866207

`9^round(ϕ^n/sqrt(5))`
-/

namespace A215272.P18090334421734866207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 : ℚ) ^ (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) : ℤ)

end

end A215272.P18090334421734866207

namespace A215272

/-- `9^round(ϕ^n/sqrt(5))` -/
def P18090334421734866207.Spec : Prop :=
  ∀ n, P18090334421734866207.a n = (A215272 n : ℚ)

end A215272

/-! ## A215272.P1662504061306563912

`a(n-1)/a(n-2)^(-1)` with `a(0)=1, a(1)=9`
-/

namespace A215272.P1662504061306563912
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 9] fun n a =>
  a (n - 1) / a (n - 2) ^ (-1 : ℤ)

end

end A215272.P1662504061306563912

namespace A215272

/-- `a(n-1)/a(n-2)^(-1)` -/
def P1662504061306563912.Spec : Prop :=
  ∀ n, P1662504061306563912.a n = (A215272 n : ℚ)

end A215272

/-! ## A215272.P16906963181362641642

`(3^∑[a(n-1)+a(n-2)])²` with `a(0)=0, a(1)=1, a(2)=0`
-/

namespace A215272.P16906963181362641642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 ^ (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A215272.P16906963181362641642

namespace A215272

/-- `(3^∑[a(n-1)+a(n-2)])²` -/
def P16906963181362641642.Spec : Prop :=
  ∀ n, (P16906963181362641642.a n : ℤ) = A215272 n

end A215272

/-! ## A215272.P5892714818660693067

`floor(3^∑[a(n-1)+a(n-2)])` with `a(0)=0, a(1)=2, a(2)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A215272.P5892714818660693067
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215272.P5892714818660693067

namespace A215272

/-- `floor(3^∑[a(n-1)+a(n-2)])` -/
def P5892714818660693067.Spec : Prop :=
  ∀ n, (P5892714818660693067.a n : ℤ) = A215272 n

end A215272

/-!
# A215273: Primes congruent to {0, 1, 2, 5} mod 17.

The programs for A215273, the canonical program `A215273.P13678161291082895904` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215273 has offset 1).

The definition of A215273 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6689 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215273.P13678161291082895904

`p?[a(n-4)+17]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=17`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215273

/-- `p?[a(n-4)+17]` -/
def P13678161291082895904.Spec : Prop :=
  ∀ n, (P13678161291082895904.a n : ℤ) = A215273 (n + 1)

theorem P13678161291082895904.correct : P13678161291082895904.Spec := by
  intro n
  simp only [A215273, Nat.add_sub_cancel]

end A215273

/-! ## A215273.P12236233202452418217

`filter[A215425(n+1), A289748(#)]`
-/

namespace A215273.P12236233202452418217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A289748 (f1 j).toNat = 1) n)

end

end A215273.P12236233202452418217

namespace A215273

/-- `filter[A215425(n+1), A289748(#)]` -/
def P12236233202452418217.Spec : Prop :=
  ∀ n, P12236233202452418217.a n = A215273 (n + 1)

end A215273

/-!
# A215274: Primes congruent to {0, 1, 2, 5} mod 19.

The programs for A215274, the canonical program `A215274.P17132192438356814759` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215274 has offset 1).

The definition of A215274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6585 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215274.P17132192438356814759

`p?[a(n-4)+19]` with `a(0)=1, a(1)=2, a(2)=5, a(3)=19`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215274

/-- `p?[a(n-4)+19]` -/
def P17132192438356814759.Spec : Prop :=
  ∀ n, (P17132192438356814759.a n : ℤ) = A215274 (n + 1)

theorem P17132192438356814759.correct : P17132192438356814759.Spec := by
  intro n
  simp only [A215274, Nat.add_sub_cancel]

end A215274

/-! ## A215274.P13661063970780899158

`p?[A302403(∑[A145342(n+1)])]`
-/

namespace A215274.P13661063970780899158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145342 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302403 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215274.P13661063970780899158

namespace A215274

/-- `p?[A302403(∑[A145342(n+1)])]` -/
def P13661063970780899158.Spec : Prop :=
  ∀ n, P13661063970780899158.a n = A215274 (n + 1)

end A215274

/-!
# A215275: Primes congruent to {2, 4, 5, 6} mod 11.

The programs for A215275, there is no canonical definition to state claims against.
-/

/-! ## A215275.P1683845900509426347

`A215427(A326178(n+1))`
-/

namespace A215275.P1683845900509426347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (A326178 (n + 1)).toNat

end

end A215275.P1683845900509426347

/-! ## A215275.P5554064566762678079

`record[A215427(n+1)%A185544(A267873(n))]`
-/

namespace A215275.P5554064566762678079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215427 (n + 1)) (A185544 (A267873 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215275.P5554064566762678079

/-! ## A215275.P9194432021949760943

`p?[A047358(A004525(n)+1)+n]`
-/

namespace A215275.P9194432021949760943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047358 (A004525 n + 1).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215275.P9194432021949760943

/-! ## A215275.P3907224369306197357

`p?[A267755(A001068(n))+1]`
-/

namespace A215275.P3907224369306197357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 (A001068 n).toNat + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215275.P3907224369306197357

/-! ## A215275.P14584518603851786562

`p?[A267755(n)+A168184(n+1)]`
-/

namespace A215275.P14584518603851786562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267755 n + A168184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215275.P14584518603851786562

/-! ## A215275.P14727499324661868703

`p?[(A267755(n)+1)*A177706(n)]`
-/

namespace A215275.P14727499324661868703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A267755 n + 1) * A177706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215275.P14727499324661868703

/-! ## A215275.P14121248683288785476

`∩[A062096(n+1), A215427(n+1)]`
-/

namespace A215275.P14121248683288785476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062096 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215275.P14121248683288785476

/-! ## A215275.P6617469219145913211

`∩[A215427(n+1), A229968(n+1)]`
-/

namespace A215275.P6617469219145913211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229968 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215275.P6617469219145913211

/-! ## A215275.P17156664298617701593

`∩[A192817(n+1), A215427(n+1)]`
-/

namespace A215275.P17156664298617701593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192817 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215275.P17156664298617701593

/-! ## A215275.P2638982106824918772

`∩[A160542(n+1), A215427(n+1)]`
-/

namespace A215275.P2638982106824918772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160542 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215275.P2638982106824918772

/-! ## A215275.P11775390323564524729

`∩[A183295(n+1), A215427(n+1)]`
-/

namespace A215275.P11775390323564524729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183295 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215275.P11775390323564524729

/-! ## A215275.P5552352906646479084

`∩[A183223(n+1), A215427(n+1)]`
-/

namespace A215275.P5552352906646479084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183223 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215275.P5552352906646479084

/-! ## A215275.P17609895693908285614

`∩[A183297(n+1), A215427(n+1)]`
-/

namespace A215275.P17609895693908285614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183297 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215275.P17609895693908285614

/-! ## A215275.P3438945825431673236

`record[A106612(A215427(n+1))]`
-/

namespace A215275.P3438945825431673236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A215427 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215275.P3438945825431673236

/-! ## A215275.P3825831556776918980

`filter[A215427(n+1), A145568(#)]`
-/

namespace A215275.P3825831556776918980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145568 (f1 j).toNat = 1) n)

end

end A215275.P3825831556776918980

/-! ## A215275.P5580266188309597018

`∩[A215427(n+1), A337843(n)]`
-/

namespace A215275.P5580266188309597018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215427 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215275.P5580266188309597018

/-! ## A215275.P14433700614652314164

`A215427(n+2)%(n-A029979(A004166(n)+1))`
-/

namespace A215275.P14433700614652314164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215427 (n + 2)) ((n : ℤ) - A029979 (A004166 n + 1).toNat)

end

end A215275.P14433700614652314164

/-! ## A215275.P14333152323394030755

`p?[A215427(n+1)%A286207(n)]`
-/

namespace A215275.P14333152323394030755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215427 (n + 1)) (A286207 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215275.P14333152323394030755

/-! ## A215275.P5379366095199724887

`p?[A004523(n+1)+A002264(A047604(2*n+1))]`
-/

namespace A215275.P5379366095199724887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (n + 1) + A002264 (A047604 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215275.P5379366095199724887

/-! ## A215275.P9282048046094280680

`p?[A057367(2*A297464(n))]`
-/

namespace A215275.P9282048046094280680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057367 (2 * A297464 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215275.P9282048046094280680

/-!
# A215276: Primes congruent to {2, 4, 5, 6} mod 13.

The programs for A215276, the canonical program `A215276.P7669114868640785111` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215276 has offset 1).

The definition of A215276 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9340 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215276.P15741702390999181029

`A215428(A326178(n+1))`
-/

namespace A215276.P15741702390999181029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (A326178 (n + 1)).toNat

end

end A215276.P15741702390999181029

namespace A215276

/-- `A215428(A326178(n+1))` -/
def P15741702390999181029.Spec : Prop :=
  ∀ n, P15741702390999181029.a n = A215276 (n + 1)

end A215276

/-! ## A215276.P3178803120856028372

`A215428(floor(sqrt(A028884(n))))`
-/

namespace A215276.P3178803120856028372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (Int.sqrt (A028884 n)).toNat

end

end A215276.P3178803120856028372

namespace A215276

/-- `A215428(floor(sqrt(A028884(n))))` -/
def P3178803120856028372.Spec : Prop :=
  ∀ n, P3178803120856028372.a n = A215276 (n + 1)

end A215276

/-! ## A215276.P5291763423037862767

`A215428(n+2)%(∑[A215428(n+1)]+1)`
-/

namespace A215276.P5291763423037862767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215428 (n + 2)) (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A215276.P5291763423037862767

namespace A215276

/-- `A215428(n+2)%(∑[A215428(n+1)]+1)` -/
def P5291763423037862767.Spec : Prop :=
  ∀ n, P5291763423037862767.a n = A215276 (n + 1)

end A215276

/-! ## A215276.P12547976914004476177

`A215428(A008486(n)-A004275(n))`
-/

namespace A215276.P12547976914004476177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (A008486 n - A004275 n).toNat

end

end A215276.P12547976914004476177

namespace A215276

/-- `A215428(A008486(n)-A004275(n))` -/
def P12547976914004476177.Spec : Prop :=
  ∀ n, P12547976914004476177.a n = A215276 (n + 1)

end A215276

/-! ## A215276.P7669114868640785111

`p?[a(n-4)+13]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=5, a(4)=4, a(5)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215276

/-- `p?[a(n-4)+13]` -/
def P7669114868640785111.Spec : Prop :=
  ∀ n, (P7669114868640785111.a n : ℤ) = A215276 (n + 1)

theorem P7669114868640785111.correct : P7669114868640785111.Spec := by
  intro n
  simp only [A215276, Nat.add_sub_cancel]

end A215276

/-! ## A215276.P16736123576993693761

`p?[A215428(n+1)%A161993(n)]`
-/

namespace A215276.P16736123576993693761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215428 (n + 1)) (A161993 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215276.P16736123576993693761

namespace A215276

/-- `p?[A215428(n+1)%A161993(n)]` -/
def P16736123576993693761.Spec : Prop :=
  ∀ n, P16736123576993693761.a n = A215276 (n + 1)

end A215276

/-! ## A215276.P13143651826914619423

`p?[2*A047454(n+1)-A057353(n)]`
-/

namespace A215276.P13143651826914619423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047454 (n + 1) - A057353 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215276.P13143651826914619423

namespace A215276

/-- `p?[2*A047454(n+1)-A057353(n)]` -/
def P13143651826914619423.Spec : Prop :=
  ∀ n, P13143651826914619423.a n = A215276 (n + 1)

end A215276

/-! ## A215276.P9339238277391163984

`∩[A215428(n+1), A336370(n+1)]`
-/

namespace A215276.P9339238277391163984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336370 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215276.P9339238277391163984

namespace A215276

/-- `∩[A215428(n+1), A336370(n+1)]` -/
def P9339238277391163984.Spec : Prop :=
  ∀ n, (P9339238277391163984.a n : ℤ) = A215276 (n + 1)

end A215276

/-! ## A215276.P3185410474660462661

`∩[A199799(n+1), A215428(n+1)]`
-/

namespace A215276.P3185410474660462661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215276.P3185410474660462661

namespace A215276

/-- `∩[A199799(n+1), A215428(n+1)]` -/
def P3185410474660462661.Spec : Prop :=
  ∀ n, (P3185410474660462661.a n : ℤ) = A215276 (n + 1)

end A215276

/-! ## A215276.P350520766754329054

`∩[A215428(n+1), A229973(n+1)]`
-/

namespace A215276.P350520766754329054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229973 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215276.P350520766754329054

namespace A215276

/-- `∩[A215428(n+1), A229973(n+1)]` -/
def P350520766754329054.Spec : Prop :=
  ∀ n, (P350520766754329054.a n : ℤ) = A215276 (n + 1)

end A215276

/-! ## A215276.P5965132969943183265

`∩[A032798(n+1), A215428(n+1)]`
-/

namespace A215276.P5965132969943183265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215276.P5965132969943183265

namespace A215276

/-- `∩[A032798(n+1), A215428(n+1)]` -/
def P5965132969943183265.Spec : Prop :=
  ∀ n, (P5965132969943183265.a n : ℤ) = A215276 (n + 1)

end A215276

/-! ## A215276.P17387424165529804983

`∩[A113763(n+1), A215428(n+1)]`
-/

namespace A215276.P17387424165529804983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113763 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215276.P17387424165529804983

namespace A215276

/-- `∩[A113763(n+1), A215428(n+1)]` -/
def P17387424165529804983.Spec : Prop :=
  ∀ n, (P17387424165529804983.a n : ℤ) = A215276 (n + 1)

end A215276

/-! ## A215276.P4162706478338915492

`∩[A117070(n+1), A215428(n+1)]`
-/

namespace A215276.P4162706478338915492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117070 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215276.P4162706478338915492

namespace A215276

/-- `∩[A117070(n+1), A215428(n+1)]` -/
def P4162706478338915492.Spec : Prop :=
  ∀ n, (P4162706478338915492.a n : ℤ) = A215276 (n + 1)

end A215276

/-! ## A215276.P2588890744683323857

`∩[A183298(n+1), A215428(n+1)]`
-/

namespace A215276.P2588890744683323857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215276.P2588890744683323857

namespace A215276

/-- `∩[A183298(n+1), A215428(n+1)]` -/
def P2588890744683323857.Spec : Prop :=
  ∀ n, (P2588890744683323857.a n : ℤ) = A215276 (n + 1)

end A215276

/-! ## A215276.P12497065872209550926

`A215428(A003056(A052905(n)))`
-/

namespace A215276.P12497065872209550926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215428 (A003056 (A052905 n).toNat).toNat

end

end A215276.P12497065872209550926

namespace A215276

/-- `A215428(A003056(A052905(n)))` -/
def P12497065872209550926.Spec : Prop :=
  ∀ n, P12497065872209550926.a n = A215276 (n + 1)

end A215276

/-!
# A215277: Primes congruent to {2, 4, 5, 6} mod 17.

The programs for A215277, the canonical program `A215277.P1180702092818764920` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215277 has offset 1).

The definition of A215277 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8948 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215277.P1180702092818764920

`p?[a(n-4)+17]` with `a(0)=2, a(1)=4, a(2)=5, a(3)=6`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215277

/-- `p?[a(n-4)+17]` -/
def P1180702092818764920.Spec : Prop :=
  ∀ n, (P1180702092818764920.a n : ℤ) = A215277 (n + 1)

theorem P1180702092818764920.correct : P1180702092818764920.Spec := by
  intro n
  simp only [A215277, Nat.add_sub_cancel]

end A215277

/-! ## A215277.P7964530440263329378

`p?[A112653(A004525(n))+n+2]`
-/

namespace A215277.P7964530440263329378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (A004525 n).toNat + (n + 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215277.P7964530440263329378

namespace A215277

/-- `p?[A112653(A004525(n))+n+2]` -/
def P7964530440263329378.Spec : Prop :=
  ∀ n, P7964530440263329378.a n = A215277 (n + 1)

end A215277

/-! ## A215277.P16275100306321915823

`∩[A000040(n+1), A112653(A004525(n))+n+2]`
-/

namespace A215277.P16275100306321915823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (A004525 n).toNat + (n + 2 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215277.P16275100306321915823

namespace A215277

/-- `∩[A000040(n+1), A112653(A004525(n))+n+2]` -/
def P16275100306321915823.Spec : Prop :=
  ∀ n, (P16275100306321915823.a n : ℤ) = A215277 (n + 1)

end A215277

/-! ## A215277.P11669784021007418686

`p?[A112653(A004525(n))-A001489(n)-15]`
-/

namespace A215277.P11669784021007418686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (A004525 n).toNat - A001489 n - 15

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215277.P11669784021007418686

namespace A215277

/-- `p?[A112653(A004525(n))-A001489(n)-15]` -/
def P11669784021007418686.Spec : Prop :=
  ∀ n, P11669784021007418686.a n = A215277 (n + 1)

end A215277

/-! ## A215277.P2352906244930328646

`p?[A110655(n)+A047596(A047454(n+1))]`
-/

namespace A215277.P2352906244930328646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110655 n + A047596 (A047454 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215277.P2352906244930328646

namespace A215277

/-- `p?[A110655(n)+A047596(A047454(n+1))]` -/
def P2352906244930328646.Spec : Prop :=
  ∀ n, P2352906244930328646.a n = A215277 (n + 1)

end A215277

/-!
# A215278: Primes congruent to {2, 4, 5, 6} mod 19.

The programs for A215278, the canonical program `A215278.P307468350520691739` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215278 has offset 1).

The definition of A215278 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8777 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215278.P307468350520691739

`p?[a(n-4)+19]` with `a(0)=2, a(1)=4, a(2)=6, a(3)=5`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A215278

/-- `p?[a(n-4)+19]` -/
def P307468350520691739.Spec : Prop :=
  ∀ n, (P307468350520691739.a n : ℤ) = A215278 (n + 1)

theorem P307468350520691739.correct : P307468350520691739.Spec := by
  intro n
  simp only [A215278, Nat.add_sub_cancel]

end A215278

/-! ## A215278.P13293339322435489239

`p?[A112653(A004525(n))+A047247(n+1)]`
-/

namespace A215278.P13293339322435489239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112653 (A004525 n).toNat + A047247 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215278.P13293339322435489239

namespace A215278

/-- `p?[A112653(A004525(n))+A047247(n+1)]` -/
def P13293339322435489239.Spec : Prop :=
  ∀ n, P13293339322435489239.a n = A215278 (n + 1)

end A215278

/-! ## A215278.P4274362408662705715

`A215426(n+2)%A215430(A215443(n+1))`
-/

namespace A215278.P4274362408662705715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215426 (n + 2)) (A215430 (A215443 (n + 1)).toNat)

end

end A215278.P4274362408662705715

namespace A215278

/-- `A215426(n+2)%A215430(A215443(n+1))` -/
def P4274362408662705715.Spec : Prop :=
  ∀ n, P4274362408662705715.a n = A215278 (n + 1)

end A215278

/-! ## A215278.P3489539471022241167

`record[A215426(n+1)*A285504(A215439(n+1)+1)]`
-/

namespace A215278.P3489539471022241167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215426 (n + 1) * A285504 (A215439 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215278.P3489539471022241167

namespace A215278

/-- `record[A215426(n+1)*A285504(A215439(n+1)+1)]` -/
def P3489539471022241167.Spec : Prop :=
  ∀ n, P3489539471022241167.a n = A215278 (n + 1)

end A215278

/-!
# A215279: Primes congruent to {2, 3, 4} mod 11.

The programs for A215279, the canonical program `A215279.P11091986200909952141` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215279 has offset 1).

The definition of A215279 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215279.P11091986200909952141

`∪[A141851(n+1), A214888(n+1)]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A215279

/-- `∪[A141851(n+1), A214888(n+1)]` -/
def P11091986200909952141.Spec : Prop :=
  ∀ n, (P11091986200909952141.a n : ℤ) = A215279 (n + 1)

theorem P11091986200909952141.correct : P11091986200909952141.Spec := by
  intro n
  simp only [A215279, Nat.add_sub_cancel]

end A215279

/-! ## A215279.P14902790229152365217

`A215358(A326178(n+1))`
-/

namespace A215279.P14902790229152365217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215358 (A326178 (n + 1)).toNat

end

end A215279.P14902790229152365217

namespace A215279

/-- `A215358(A326178(n+1))` -/
def P14902790229152365217.Spec : Prop :=
  ∀ n, P14902790229152365217.a n = A215279 (n + 1)

end A215279

/-! ## A215279.P17613328347650536427

`p?[a(n-3)+11]` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A215279.P17613328347650536427
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n f1 =>
  f1 (n - 3) + 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215279.P17613328347650536427

namespace A215279

/-- `p?[a(n-3)+11]` -/
def P17613328347650536427.Spec : Prop :=
  ∀ n, (P17613328347650536427.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P13911884944010316129

`p?[ogf((2x+x^2+x^3+7x^4)/(1-x-x^3+x^4))]`
-/

namespace A215279.P13911884944010316129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 1, 7] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215279.P13911884944010316129

namespace A215279

/-- `p?[ogf((2x+x^2+x^3+7x^4)/(1-x-x^3+x^4))]` -/
def P13911884944010316129.Spec : Prop :=
  ∀ n, P13911884944010316129.a n = A215279 (n + 1)

end A215279

/-! ## A215279.P16574583001272931082

`∩[A215302(n+1), A215358(n+1)]`
-/

namespace A215279.P16574583001272931082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P16574583001272931082

namespace A215279

/-- `∩[A215302(n+1), A215358(n+1)]` -/
def P16574583001272931082.Spec : Prop :=
  ∀ n, (P16574583001272931082.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P8544900896432134550

`∩[A215302(n+1), A215314(n+1)]`
-/

namespace A215279.P8544900896432134550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P8544900896432134550

namespace A215279

/-- `∩[A215302(n+1), A215314(n+1)]` -/
def P8544900896432134550.Spec : Prop :=
  ∀ n, (P8544900896432134550.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P7783563665285359201

`∩[A215314(n+1), A215358(n+1)]`
-/

namespace A215279.P7783563665285359201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P7783563665285359201

namespace A215279

/-- `∩[A215314(n+1), A215358(n+1)]` -/
def P7783563665285359201.Spec : Prop :=
  ∀ n, (P7783563665285359201.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P13924813073417157259

`∩[A215302(n+1), A215350(n+1)]`
-/

namespace A215279.P13924813073417157259
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P13924813073417157259

namespace A215279

/-- `∩[A215302(n+1), A215350(n+1)]` -/
def P13924813073417157259.Spec : Prop :=
  ∀ n, (P13924813073417157259.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P1498970332750883827

`∩[A215302(n+1), A215354(n+1)]`
-/

namespace A215279.P1498970332750883827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215302 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P1498970332750883827

namespace A215279

/-- `∩[A215302(n+1), A215354(n+1)]` -/
def P1498970332750883827.Spec : Prop :=
  ∀ n, (P1498970332750883827.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P6521564620659017520

`∩[A215314(n+1), A215350(n+1)]`
-/

namespace A215279.P6521564620659017520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P6521564620659017520

namespace A215279

/-- `∩[A215314(n+1), A215350(n+1)]` -/
def P6521564620659017520.Spec : Prop :=
  ∀ n, (P6521564620659017520.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P2496165060188805116

`∩[A215350(n+1), A215354(n+1)]`
-/

namespace A215279.P2496165060188805116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P2496165060188805116

namespace A215279

/-- `∩[A215350(n+1), A215354(n+1)]` -/
def P2496165060188805116.Spec : Prop :=
  ∀ n, (P2496165060188805116.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P3362442186066782934

`∩[A215350(n+1), A215358(n+1)]`
-/

namespace A215279.P3362442186066782934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P3362442186066782934

namespace A215279

/-- `∩[A215350(n+1), A215358(n+1)]` -/
def P3362442186066782934.Spec : Prop :=
  ∀ n, (P3362442186066782934.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P1257184206361372585

`∩[A215314(n+1), A215322(n+1)]`
-/

namespace A215279.P1257184206361372585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215322 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P1257184206361372585

namespace A215279

/-- `∩[A215314(n+1), A215322(n+1)]` -/
def P1257184206361372585.Spec : Prop :=
  ∀ n, (P1257184206361372585.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P12790182960049052568

`∩[A215322(n+1), A215354(n+1)]`
-/

namespace A215279.P12790182960049052568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215354 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P12790182960049052568

namespace A215279

/-- `∩[A215322(n+1), A215354(n+1)]` -/
def P12790182960049052568.Spec : Prop :=
  ∀ n, (P12790182960049052568.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P5178814629797613067

`∩[A215322(n+1), A215358(n+1)]`
-/

namespace A215279.P5178814629797613067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215322 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P5178814629797613067

namespace A215279

/-- `∩[A215322(n+1), A215358(n+1)]` -/
def P5178814629797613067.Spec : Prop :=
  ∀ n, (P5178814629797613067.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P7100418890126613973

`∩[A215310(n+1), A215350(n+1)]`
-/

namespace A215279.P7100418890126613973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215350 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P7100418890126613973

namespace A215279

/-- `∩[A215310(n+1), A215350(n+1)]` -/
def P7100418890126613973.Spec : Prop :=
  ∀ n, (P7100418890126613973.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P8962569284860663103

`∩[A215310(n+1), A215358(n+1)]`
-/

namespace A215279.P8962569284860663103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215310 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215279.P8962569284860663103

namespace A215279

/-- `∩[A215310(n+1), A215358(n+1)]` -/
def P8962569284860663103.Spec : Prop :=
  ∀ n, (P8962569284860663103.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P5703934547451140641

`p?[(n+1)*floor(sqrt(n%11))]`
-/

namespace A215279.P5703934547451140641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Nat.sqrt (n % 11)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215279.P5703934547451140641

namespace A215279

/-- `p?[(n+1)*floor(sqrt(n%11))]` -/
def P5703934547451140641.Spec : Prop :=
  ∀ n, (P5703934547451140641.a n : ℤ) = A215279 (n + 1)

end A215279

/-! ## A215279.P2185624618800105741

`p?[2*A047360(n+1)-n]`
-/

namespace A215279.P2185624618800105741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047360 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215279.P2185624618800105741

namespace A215279

/-- `p?[2*A047360(n+1)-n]` -/
def P2185624618800105741.Spec : Prop :=
  ∀ n, P2185624618800105741.a n = A215279 (n + 1)

end A215279

/-! ## A215279.P18042380236631703097

`p?[A017089(A002264(n))+n]`
-/

namespace A215279.P18042380236631703097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (A002264 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215279.P18042380236631703097

namespace A215279

/-- `p?[A017089(A002264(n))+n]` -/
def P18042380236631703097.Spec : Prop :=
  ∀ n, P18042380236631703097.a n = A215279 (n + 1)

end A215279

/-!
# A215280: Primes congruent to {2, 3, 4} mod 13.

The programs for A215280, the canonical program `A215280.P13878712752042011737` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215280 has offset 1).

The definition of A215280 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215280.P13878712752042011737

`∪[A093191(n+1), A214889(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215280

/-- `∪[A093191(n+1), A214889(n+1)]` -/
def P13878712752042011737.Spec : Prop :=
  ∀ n, (P13878712752042011737.a n : ℤ) = A215280 (n + 1)

theorem P13878712752042011737.correct : P13878712752042011737.Spec := by
  intro n
  simp only [A215280, Nat.add_sub_cancel]

end A215280

/-! ## A215280.P17161995479463418420

`A215359(A326178(n+1))`
-/

namespace A215280.P17161995479463418420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (A326178 (n + 1)).toNat

end

end A215280.P17161995479463418420

namespace A215280

/-- `A215359(A326178(n+1))` -/
def P17161995479463418420.Spec : Prop :=
  ∀ n, P17161995479463418420.a n = A215280 (n + 1)

end A215280

/-! ## A215280.P14619908735354570986

`A215359(A008486(n)-A004275(n))`
-/

namespace A215280.P14619908735354570986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (A008486 n - A004275 n).toNat

end

end A215280.P14619908735354570986

namespace A215280

/-- `A215359(A008486(n)-A004275(n))` -/
def P14619908735354570986.Spec : Prop :=
  ∀ n, P14619908735354570986.a n = A215280 (n + 1)

end A215280

/-! ## A215280.P11119838050744752680

`p?[a(n-3)+13]` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A215280.P11119838050744752680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n f1 =>
  f1 (n - 3) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215280.P11119838050744752680

namespace A215280

/-- `p?[a(n-3)+13]` -/
def P11119838050744752680.Spec : Prop :=
  ∀ n, (P11119838050744752680.a n : ℤ) = A215280 (n + 1)

end A215280

/-! ## A215280.P3326589237801933069

`p?[ogf((2x+x^2+x^3+9x^4)/(1-x-x^3+x^4))]`
-/

namespace A215280.P3326589237801933069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 1, 1, 9] [1, -1, 0, -1, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215280.P3326589237801933069

namespace A215280

/-- `p?[ogf((2x+x^2+x^3+9x^4)/(1-x-x^3+x^4))]` -/
def P3326589237801933069.Spec : Prop :=
  ∀ n, P3326589237801933069.a n = A215280 (n + 1)

end A215280

/-! ## A215280.P3827100589001741966

`∩[A215315(n+1), A215359(n+1)]`
-/

namespace A215280.P3827100589001741966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P3827100589001741966

namespace A215280

/-- `∩[A215315(n+1), A215359(n+1)]` -/
def P3827100589001741966.Spec : Prop :=
  ∀ n, (P3827100589001741966.a n : ℤ) = A215280 (n + 1)

end A215280

/-! ## A215280.P16515756247824442903

`∩[A215303(n+1), A215315(n+1)]`
-/

namespace A215280.P16515756247824442903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P16515756247824442903

namespace A215280

/-- `∩[A215303(n+1), A215315(n+1)]` -/
def P16515756247824442903.Spec : Prop :=
  ∀ n, (P16515756247824442903.a n : ℤ) = A215280 (n + 1)

end A215280

/-! ## A215280.P6851549188818292750

`∩[A215303(n+1), A215351(n+1)]`
-/

namespace A215280.P6851549188818292750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P6851549188818292750

namespace A215280

/-- `∩[A215303(n+1), A215351(n+1)]` -/
def P6851549188818292750.Spec : Prop :=
  ∀ n, (P6851549188818292750.a n : ℤ) = A215280 (n + 1)

end A215280

/-! ## A215280.P6868789821505559399

`∩[A215303(n+1), A215355(n+1)]`
-/

namespace A215280.P6868789821505559399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P6868789821505559399

namespace A215280

/-- `∩[A215303(n+1), A215355(n+1)]` -/
def P6868789821505559399.Spec : Prop :=
  ∀ n, (P6868789821505559399.a n : ℤ) = A215280 (n + 1)

end A215280

/-! ## A215280.P13194249695537634474

`∩[A215303(n+1), A215359(n+1)]`
-/

namespace A215280.P13194249695537634474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215303 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P13194249695537634474

namespace A215280

/-- `∩[A215303(n+1), A215359(n+1)]` -/
def P13194249695537634474.Spec : Prop :=
  ∀ n, (P13194249695537634474.a n : ℤ) = A215280 (n + 1)

end A215280

/-! ## A215280.P18089640880010143438

`∩[A215315(n+1), A215351(n+1)]`
-/

namespace A215280.P18089640880010143438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P18089640880010143438

namespace A215280

/-- `∩[A215315(n+1), A215351(n+1)]` -/
def P18089640880010143438.Spec : Prop :=
  ∀ n, (P18089640880010143438.a n : ℤ) = A215280 (n + 1)

end A215280

/-! ## A215280.P12051505374914006148

`∩[A215351(n+1), A215355(n+1)]`
-/

namespace A215280.P12051505374914006148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P12051505374914006148

namespace A215280

/-- `∩[A215351(n+1), A215355(n+1)]` -/
def P12051505374914006148.Spec : Prop :=
  ∀ n, (P12051505374914006148.a n : ℤ) = A215280 (n + 1)

end A215280

/-! ## A215280.P11849751838925968667

`∩[A215351(n+1), A215359(n+1)]`
-/

namespace A215280.P11849751838925968667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P11849751838925968667

namespace A215280

/-- `∩[A215351(n+1), A215359(n+1)]` -/
def P11849751838925968667.Spec : Prop :=
  ∀ n, (P11849751838925968667.a n : ℤ) = A215280 (n + 1)

end A215280

/-! ## A215280.P13310494225069304063

`∩[A215311(n+1), A215351(n+1)]`
-/

namespace A215280.P13310494225069304063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P13310494225069304063

namespace A215280

/-- `∩[A215311(n+1), A215351(n+1)]` -/
def P13310494225069304063.Spec : Prop :=
  ∀ n, (P13310494225069304063.a n : ℤ) = A215280 (n + 1)

end A215280

/-! ## A215280.P16849747191883672778

`∩[A215311(n+1), A215359(n+1)]`
-/

namespace A215280.P16849747191883672778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215311 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P16849747191883672778

namespace A215280

/-- `∩[A215311(n+1), A215359(n+1)]` -/
def P16849747191883672778.Spec : Prop :=
  ∀ n, (P16849747191883672778.a n : ℤ) = A215280 (n + 1)

end A215280

/-! ## A215280.P3826205575569006165

`∩[A215315(n+1), A215323(n+1)]`
-/

namespace A215280.P3826205575569006165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215323 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P3826205575569006165

namespace A215280

/-- `∩[A215315(n+1), A215323(n+1)]` -/
def P3826205575569006165.Spec : Prop :=
  ∀ n, (P3826205575569006165.a n : ℤ) = A215280 (n + 1)

end A215280

/-! ## A215280.P6008914418635755826

`∩[A215323(n+1), A215355(n+1)]`
-/

namespace A215280.P6008914418635755826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215355 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P6008914418635755826

namespace A215280

/-- `∩[A215323(n+1), A215355(n+1)]` -/
def P6008914418635755826.Spec : Prop :=
  ∀ n, (P6008914418635755826.a n : ℤ) = A215280 (n + 1)

end A215280

/-! ## A215280.P607482549201527778

`∩[A215323(n+1), A215359(n+1)]`
-/

namespace A215280.P607482549201527778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215323 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215359 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215280.P607482549201527778

namespace A215280

/-- `∩[A215323(n+1), A215359(n+1)]` -/
def P607482549201527778.Spec : Prop :=
  ∀ n, (P607482549201527778.a n : ℤ) = A215280 (n + 1)

end A215280

/-! ## A215280.P3259339065219318595

`p?[2*A047475(n+1)-n]`
-/

namespace A215280.P3259339065219318595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047475 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215280.P3259339065219318595

namespace A215280

/-- `p?[2*A047475(n+1)-n]` -/
def P3259339065219318595.Spec : Prop :=
  ∀ n, P3259339065219318595.a n = A215280 (n + 1)

end A215280

/-! ## A215280.P3275573688789900732

`p?[A017293(A002264(n))+n]`
-/

namespace A215280.P3275573688789900732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 (A002264 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215280.P3275573688789900732

namespace A215280

/-- `p?[A017293(A002264(n))+n]` -/
def P3275573688789900732.Spec : Prop :=
  ∀ n, P3275573688789900732.a n = A215280 (n + 1)

end A215280

/-!
# A215281: Primes congruent to {2, 3, 4} mod 17.

The programs for A215281, the canonical program `A215281.P16017114585514079959` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215281 has offset 1).

The definition of A215281 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215281.P4722413635349097037

`∪[A094657(n+1), A214890(n+1)]`
-/

namespace A215281.P4722413635349097037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214890 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A215281.P4722413635349097037

namespace A215281

/-- `∪[A094657(n+1), A214890(n+1)]` -/
def P4722413635349097037.Spec : Prop :=
  ∀ n, (P4722413635349097037.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P16017114585514079959

`A215360(A326178(n+1))`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215281

/-- `A215360(A326178(n+1))` -/
def P16017114585514079959.Spec : Prop :=
  ∀ n, P16017114585514079959.a n = A215281 (n + 1)

theorem P16017114585514079959.correct : P16017114585514079959.Spec := by
  intro n
  simp only [A215281, Nat.add_sub_cancel]

end A215281

/-! ## A215281.P4841115798440924446

`A215360(gcd(2, A000010(n+1))+n)`
-/

namespace A215281.P4841115798440924446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (Int.gcd 2 (A000010 (n + 1)) + n)

end

end A215281.P4841115798440924446

namespace A215281

/-- `A215360(gcd(2, A000010(n+1))+n)` -/
def P4841115798440924446.Spec : Prop :=
  ∀ n, P4841115798440924446.a n = A215281 (n + 1)

end A215281

/-! ## A215281.P7072771733222611125

`p?[A215360(n+1)%A005385(n+1)]`
-/

namespace A215281.P7072771733222611125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215360 (n + 1)) (A005385 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215281.P7072771733222611125

namespace A215281

/-- `p?[A215360(n+1)%A005385(n+1)]` -/
def P7072771733222611125.Spec : Prop :=
  ∀ n, P7072771733222611125.a n = A215281 (n + 1)

end A215281

/-! ## A215281.P6189840896172915536

`p?[a(n-3)+17]` with `a(0)=2, a(1)=3, a(2)=4`
-/

namespace A215281.P6189840896172915536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 4] fun n f1 =>
  f1 (n - 3) + 17

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A215281.P6189840896172915536

namespace A215281

/-- `p?[a(n-3)+17]` -/
def P6189840896172915536.Spec : Prop :=
  ∀ n, (P6189840896172915536.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P4126754417360809478

`∩[A215316(n+1), A215360(n+1)]`
-/

namespace A215281.P4126754417360809478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215281.P4126754417360809478

namespace A215281

/-- `∩[A215316(n+1), A215360(n+1)]` -/
def P4126754417360809478.Spec : Prop :=
  ∀ n, (P4126754417360809478.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P18205337926372391513

`∩[A215316(n+1), A215352(n+1)]`
-/

namespace A215281.P18205337926372391513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215281.P18205337926372391513

namespace A215281

/-- `∩[A215316(n+1), A215352(n+1)]` -/
def P18205337926372391513.Spec : Prop :=
  ∀ n, (P18205337926372391513.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P2527254379048923723

`∩[A215352(n+1), A215356(n+1)]`
-/

namespace A215281.P2527254379048923723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215281.P2527254379048923723

namespace A215281

/-- `∩[A215352(n+1), A215356(n+1)]` -/
def P2527254379048923723.Spec : Prop :=
  ∀ n, (P2527254379048923723.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P8421237373091028513

`∩[A215352(n+1), A215360(n+1)]`
-/

namespace A215281.P8421237373091028513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215281.P8421237373091028513

namespace A215281

/-- `∩[A215352(n+1), A215360(n+1)]` -/
def P8421237373091028513.Spec : Prop :=
  ∀ n, (P8421237373091028513.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P9100595902389681424

`∩[A215304(n+1), A215316(n+1)]`
-/

namespace A215281.P9100595902389681424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215281.P9100595902389681424

namespace A215281

/-- `∩[A215304(n+1), A215316(n+1)]` -/
def P9100595902389681424.Spec : Prop :=
  ∀ n, (P9100595902389681424.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P15555655330811550674

`∩[A215304(n+1), A215352(n+1)]`
-/

namespace A215281.P15555655330811550674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215281.P15555655330811550674

namespace A215281

/-- `∩[A215304(n+1), A215352(n+1)]` -/
def P15555655330811550674.Spec : Prop :=
  ∀ n, (P15555655330811550674.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P1078198471915213381

`∩[A215304(n+1), A215356(n+1)]`
-/

namespace A215281.P1078198471915213381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215281.P1078198471915213381

namespace A215281

/-- `∩[A215304(n+1), A215356(n+1)]` -/
def P1078198471915213381.Spec : Prop :=
  ∀ n, (P1078198471915213381.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P11596512325972196753

`∩[A215304(n+1), A215360(n+1)]`
-/

namespace A215281.P11596512325972196753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215281.P11596512325972196753

namespace A215281

/-- `∩[A215304(n+1), A215360(n+1)]` -/
def P11596512325972196753.Spec : Prop :=
  ∀ n, (P11596512325972196753.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P838796547272317851

`∩[A215312(n+1), A215352(n+1)]`
-/

namespace A215281.P838796547272317851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215352 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215281.P838796547272317851

namespace A215281

/-- `∩[A215312(n+1), A215352(n+1)]` -/
def P838796547272317851.Spec : Prop :=
  ∀ n, (P838796547272317851.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P2649044806753613003

`∩[A215312(n+1), A215360(n+1)]`
-/

namespace A215281.P2649044806753613003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215312 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215281.P2649044806753613003

namespace A215281

/-- `∩[A215312(n+1), A215360(n+1)]` -/
def P2649044806753613003.Spec : Prop :=
  ∀ n, (P2649044806753613003.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P9943190937666524101

`∩[A215316(n+1), A215324(n+1)]`
-/

namespace A215281.P9943190937666524101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215324 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215281.P9943190937666524101

namespace A215281

/-- `∩[A215316(n+1), A215324(n+1)]` -/
def P9943190937666524101.Spec : Prop :=
  ∀ n, (P9943190937666524101.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P4486426081359572683

`∩[A215324(n+1), A215356(n+1)]`
-/

namespace A215281.P4486426081359572683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215356 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215281.P4486426081359572683

namespace A215281

/-- `∩[A215324(n+1), A215356(n+1)]` -/
def P4486426081359572683.Spec : Prop :=
  ∀ n, (P4486426081359572683.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P502747290521202230

`∩[A215324(n+1), A215360(n+1)]`
-/

namespace A215281.P502747290521202230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215324 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215281.P502747290521202230

namespace A215281

/-- `∩[A215324(n+1), A215360(n+1)]` -/
def P502747290521202230.Spec : Prop :=
  ∀ n, (P502747290521202230.a n : ℤ) = A215281 (n + 1)

end A215281

/-! ## A215281.P2569458456851523205

`p?[A004524(n+1)+A151977(n+1)+2]`
-/

namespace A215281.P2569458456851523205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (n + 1) + (A151977 (n + 1) + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215281.P2569458456851523205

namespace A215281

/-- `p?[A004524(n+1)+A151977(n+1)+2]` -/
def P2569458456851523205.Spec : Prop :=
  ∀ n, P2569458456851523205.a n = A215281 (n + 1)

end A215281

/-! ## A215281.P14308626819668343938

`A215360(A000720(p?[A091703(n)]))`
-/

namespace A215281.P14308626819668343938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091703 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215360 (A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A215281.P14308626819668343938

namespace A215281

/-- `A215360(A000720(p?[A091703(n)]))` -/
def P14308626819668343938.Spec : Prop :=
  ∀ n, P14308626819668343938.a n = A215281 (n + 1)

end A215281

/-!
# A215282: Primes congruent to {2, 3, 4} mod 19.

The programs for A215282, the canonical program `A215282.P15421644998039034553` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215282 has offset 1).

The definition of A215282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215282.P15421644998039034553

`∪[A141870(n+1), A215101(n+1)]`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A215282

/-- `∪[A141870(n+1), A215101(n+1)]` -/
def P15421644998039034553.Spec : Prop :=
  ∀ n, (P15421644998039034553.a n : ℤ) = A215282 (n + 1)

theorem P15421644998039034553.correct : P15421644998039034553.Spec := by
  intro n
  simp only [A215282, Nat.add_sub_cancel]

end A215282

/-! ## A215282.P9548148879548680351

`A215361(A326178(n+1))`
-/

namespace A215282.P9548148879548680351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (A326178 (n + 1)).toNat

end

end A215282.P9548148879548680351

namespace A215282

/-- `A215361(A326178(n+1))` -/
def P9548148879548680351.Spec : Prop :=
  ∀ n, P9548148879548680351.a n = A215282 (n + 1)

end A215282

/-! ## A215282.P1433599862285536282

`p?[A215361(n+1)+A185012(n)]`
-/

namespace A215282.P1433599862285536282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1) + A185012 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215282.P1433599862285536282

namespace A215282

/-- `p?[A215361(n+1)+A185012(n)]` -/
def P1433599862285536282.Spec : Prop :=
  ∀ n, P1433599862285536282.a n = A215282 (n + 1)

end A215282

/-! ## A215282.P5178350242157575925

`p?[A215361(n+1)%A034953(n+1)]`
-/

namespace A215282.P5178350242157575925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215361 (n + 1)) (A034953 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215282.P5178350242157575925

namespace A215282

/-- `p?[A215361(n+1)%A034953(n+1)]` -/
def P5178350242157575925.Spec : Prop :=
  ∀ n, P5178350242157575925.a n = A215282 (n + 1)

end A215282

/-! ## A215282.P5542538146926066196

`∩[A215305(n+1), A215361(n+1)]`
-/

namespace A215282.P5542538146926066196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P5542538146926066196

namespace A215282

/-- `∩[A215305(n+1), A215361(n+1)]` -/
def P5542538146926066196.Spec : Prop :=
  ∀ n, (P5542538146926066196.a n : ℤ) = A215282 (n + 1)

end A215282

/-! ## A215282.P7458233928785644921

`∩[A215305(n+1), A215353(n+1)]`
-/

namespace A215282.P7458233928785644921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P7458233928785644921

namespace A215282

/-- `∩[A215305(n+1), A215353(n+1)]` -/
def P7458233928785644921.Spec : Prop :=
  ∀ n, (P7458233928785644921.a n : ℤ) = A215282 (n + 1)

end A215282

/-! ## A215282.P6851793952236418709

`∩[A215353(n+1), A215361(n+1)]`
-/

namespace A215282.P6851793952236418709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P6851793952236418709

namespace A215282

/-- `∩[A215353(n+1), A215361(n+1)]` -/
def P6851793952236418709.Spec : Prop :=
  ∀ n, (P6851793952236418709.a n : ℤ) = A215282 (n + 1)

end A215282

/-! ## A215282.P3887766390239359917

`∩[A215305(n+1), A215317(n+1)]`
-/

namespace A215282.P3887766390239359917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P3887766390239359917

namespace A215282

/-- `∩[A215305(n+1), A215317(n+1)]` -/
def P3887766390239359917.Spec : Prop :=
  ∀ n, (P3887766390239359917.a n : ℤ) = A215282 (n + 1)

end A215282

/-! ## A215282.P12508730071268300450

`∩[A215317(n+1), A215353(n+1)]`
-/

namespace A215282.P12508730071268300450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P12508730071268300450

namespace A215282

/-- `∩[A215317(n+1), A215353(n+1)]` -/
def P12508730071268300450.Spec : Prop :=
  ∀ n, (P12508730071268300450.a n : ℤ) = A215282 (n + 1)

end A215282

/-! ## A215282.P17874181774734613158

`∩[A215317(n+1), A215361(n+1)]`
-/

namespace A215282.P17874181774734613158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P17874181774734613158

namespace A215282

/-- `∩[A215317(n+1), A215361(n+1)]` -/
def P17874181774734613158.Spec : Prop :=
  ∀ n, (P17874181774734613158.a n : ℤ) = A215282 (n + 1)

end A215282

/-! ## A215282.P12176550651374399183

`∩[A215305(n+1), A215357(n+1)]`
-/

namespace A215282.P12176550651374399183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215305 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P12176550651374399183

namespace A215282

/-- `∩[A215305(n+1), A215357(n+1)]` -/
def P12176550651374399183.Spec : Prop :=
  ∀ n, (P12176550651374399183.a n : ℤ) = A215282 (n + 1)

end A215282

/-! ## A215282.P1370708953240923551

`∩[A215353(n+1), A215357(n+1)]`
-/

namespace A215282.P1370708953240923551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P1370708953240923551

namespace A215282

/-- `∩[A215353(n+1), A215357(n+1)]` -/
def P1370708953240923551.Spec : Prop :=
  ∀ n, (P1370708953240923551.a n : ℤ) = A215282 (n + 1)

end A215282

/-! ## A215282.P5618039004470654434

`∩[A215317(n+1), A215325(n+1)]`
-/

namespace A215282.P5618039004470654434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215317 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215325 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P5618039004470654434

namespace A215282

/-- `∩[A215317(n+1), A215325(n+1)]` -/
def P5618039004470654434.Spec : Prop :=
  ∀ n, (P5618039004470654434.a n : ℤ) = A215282 (n + 1)

end A215282

/-! ## A215282.P13482348482097087716

`∩[A215325(n+1), A215357(n+1)]`
-/

namespace A215282.P13482348482097087716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215357 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P13482348482097087716

namespace A215282

/-- `∩[A215325(n+1), A215357(n+1)]` -/
def P13482348482097087716.Spec : Prop :=
  ∀ n, (P13482348482097087716.a n : ℤ) = A215282 (n + 1)

end A215282

/-! ## A215282.P11944001930648936276

`∩[A215325(n+1), A215361(n+1)]`
-/

namespace A215282.P11944001930648936276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P11944001930648936276

namespace A215282

/-- `∩[A215325(n+1), A215361(n+1)]` -/
def P11944001930648936276.Spec : Prop :=
  ∀ n, (P11944001930648936276.a n : ℤ) = A215282 (n + 1)

end A215282

/-! ## A215282.P16392903652048989920

`∩[A215313(n+1), A215353(n+1)]`
-/

namespace A215282.P16392903652048989920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215353 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P16392903652048989920

namespace A215282

/-- `∩[A215313(n+1), A215353(n+1)]` -/
def P16392903652048989920.Spec : Prop :=
  ∀ n, (P16392903652048989920.a n : ℤ) = A215282 (n + 1)

end A215282

/-! ## A215282.P12826285759901016577

`∩[A215313(n+1), A215361(n+1)]`
-/

namespace A215282.P12826285759901016577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215313 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P12826285759901016577

namespace A215282

/-- `∩[A215313(n+1), A215361(n+1)]` -/
def P12826285759901016577.Spec : Prop :=
  ∀ n, (P12826285759901016577.a n : ℤ) = A215282 (n + 1)

end A215282

/-! ## A215282.P7009673178383685081

`p?[A017089(2*A002264(n))+n]`
-/

namespace A215282.P7009673178383685081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017089 (2 * A002264 n).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A215282.P7009673178383685081

namespace A215282

/-- `p?[A017089(2*A002264(n))+n]` -/
def P7009673178383685081.Spec : Prop :=
  ∀ n, P7009673178383685081.a n = A215282 (n + 1)

end A215282

/-! ## A215282.P7142100549492998980

`record[A215361(n+1)%A022383(n)]`
-/

namespace A215282.P7142100549492998980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215361 (n + 1)) (A022383 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215282.P7142100549492998980

namespace A215282

/-- `record[A215361(n+1)%A022383(n)]` -/
def P7142100549492998980.Spec : Prop :=
  ∀ n, P7142100549492998980.a n = A215282 (n + 1)

end A215282

/-! ## A215282.P13764399149332508410

`∩[A198191(n+1), A215361(n+1)]`
-/

namespace A215282.P13764399149332508410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A215282.P13764399149332508410

namespace A215282

/-- `∩[A198191(n+1), A215361(n+1)]` -/
def P13764399149332508410.Spec : Prop :=
  ∀ n, (P13764399149332508410.a n : ℤ) = A215282 (n + 1)

end A215282

/-!
# A215283: Row sums of triangle A215200.

The programs for A215283, there is no canonical definition to state claims against.
-/

/-! ## A215283.P2879074190915773325

`and(A277881(A100343(n+1)), A278251(n))`
-/

namespace A215283.P2879074190915773325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A277881 (A100343 (n + 1)).toNat) (A278251 n)

end

end A215283.P2879074190915773325

/-! ## A215283.P8037647802235214069

`A001055(A056493(2*n+1))%A142972(n+1)`
-/

namespace A215283.P8037647802235214069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001055 (A056493 (2 * n + 1)).toNat) (A142972 (n + 1))

end

end A215283.P8037647802235214069

/-!
# A215284: Numbers m such that Sum_{k=1..m} (m - k | k) = 0, where (i|j) is the Kronecker symbol.

The programs for A215284, there is no canonical definition to state claims against.
-/

/-! ## A215284.P15485293390145068157

`eq[0, A215283(n+1)]+1`
-/

namespace A215284.P15485293390145068157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215283 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A215284.P15485293390145068157

/-! ## A215284.P5876276794684587193

`A020725(eq[0, A215283(n+1)])`
-/

namespace A215284.P5876276794684587193
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215284.P5876276794684587193

/-! ## A215284.P344031204423367661

`A065475(eq[0, A215283(n+1)])`
-/

namespace A215284.P344031204423367661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215283 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215284.P344031204423367661

/-! ## A215284.P7230385335368408529

`eq[0, A215283(A000007(n)+n)]`
-/

namespace A215284.P7230385335368408529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215283 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215284.P7230385335368408529

/-! ## A215284.P4233793104122584666

`eq[0, A215283(A233583(n+1))]`
-/

namespace A215284.P4233793104122584666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215283 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A215284.P4233793104122584666

/-!
# A215285: Numbers m such that Sum_{k=1..m} (m - k | k) = phi(m), where (i|j) is the Kronecker symbol and phi(m) is the Euler totient function.

The programs for A215285, there is no canonical definition to state claims against.
-/

/-! ## A215285.P6772430801706408946

`record[A078898(2*n+1)^A321090(n)]`
-/

namespace A215285.P6772430801706408946
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078898 (2 * n + 1) : ℚ) ^ (A321090 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215285.P6772430801706408946

/-! ## A215285.P17009298270976960059

`record[A128227(n)*A208233(n+1)]`
-/

namespace A215285.P17009298270976960059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 n * A208233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215285.P17009298270976960059

/-! ## A215285.P5536026613565128181

`record[A164306(n+1)*A208233(n+1)]`
-/

namespace A215285.P5536026613565128181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (n + 1) * A208233 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215285.P5536026613565128181

/-! ## A215285.P15260091696411294290

`record[A164306(n+1)*A208234(A038722(n+1))]`
-/

namespace A215285.P15260091696411294290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164306 (n + 1) * A208234 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215285.P15260091696411294290

/-! ## A215285.P7390024213030587782

`lt[A266285(n), A080335(A056926(n))]`
-/

namespace A215285.P7390024213030587782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266285 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080335 (A056926 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A215285.P7390024213030587782

/-!
# A215286: Number of permutations of 0..floor((n*n-1)/2) on even squares of an n X n array such that each row and column of even squares is increasing.

The programs for A215286, there is no canonical definition to state claims against.
-/

/-! ## A215286.P9920833979841912962

`A215292(∑[4*n]+1)`
-/

namespace A215286.P9920833979841912962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A215286.P9920833979841912962

/-! ## A215286.P15486495166352748805

`record[gcd(A114327(n), A215292(n+1))]`
-/

namespace A215286.P15486495166352748805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A215292 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215286.P15486495166352748805

/-! ## A215286.P9403776680166862244

`gcd(A058343(n), A215292(A001844(n)))`
-/

namespace A215286.P9403776680166862244
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058343 n) (A215292 (A001844 n).toNat)

end

end A215286.P9403776680166862244

/-! ## A215286.P8321022284240762492

`lcm(A059268(n), A215292(A001844(n)))`
-/

namespace A215286.P8321022284240762492
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A059268 n) (A215292 (A001844 n).toNat)

end

end A215286.P8321022284240762492

/-! ## A215286.P9868583086055807071

`or(A000007(n), A215292(A001844(n)))`
-/

namespace A215286.P9868583086055807071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A215292 (A001844 n).toNat)

end

end A215286.P9868583086055807071

/-!
# A215287: Number of permutations of 0..floor((n*3-1)/2) on even squares of an n X 3 array such that each row and column of even squares is increasing.

The programs for A215287, the canonical program `A215287.P2856808534763389541` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215287 has offset 1).

The definition of A215287 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 137 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215287.P2856808534763389541

`record[A088617(A001972(n))]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A215287

/-- `record[A088617(A001972(n))]` -/
def P2856808534763389541.Spec : Prop :=
  ∀ n, P2856808534763389541.a n = A215287 (n + 1)

theorem P2856808534763389541.correct : P2856808534763389541.Spec := by
  intro n
  simp only [A215287, Nat.add_sub_cancel]

end A215287

/-! ## A215287.P1680199428416449829

`A088617(A080476(n+2))`
-/

namespace A215287.P1680199428416449829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A080476 (n + 2)).toNat

end

end A215287.P1680199428416449829

namespace A215287

/-- `A088617(A080476(n+2))` -/
def P1680199428416449829.Spec : Prop :=
  ∀ n, P1680199428416449829.a n = A215287 (n + 1)

end A215287

/-! ## A215287.P8176709688974671756

`A088617(A001972(Δ[n²]))`
-/

namespace A215287.P8176709688974671756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A001972 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A215287.P8176709688974671756

namespace A215287

/-- `A088617(A001972(Δ[n²]))` -/
def P8176709688974671756.Spec : Prop :=
  ∀ n, P8176709688974671756.a n = A215287 (n + 1)

end A215287

/-! ## A215287.P13947299482652663074

`A088617(∑[2*A008619(n)])`
-/

namespace A215287.P13947299482652663074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A215287.P13947299482652663074

namespace A215287

/-- `A088617(∑[2*A008619(n)])` -/
def P13947299482652663074.Spec : Prop :=
  ∀ n, P13947299482652663074.a n = A215287 (n + 1)

end A215287

/-! ## A215287.P2761207833196571482

`A088617(2*A087811(n+1))`
-/

namespace A215287.P2761207833196571482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (2 * A087811 (n + 1)).toNat

end

end A215287.P2761207833196571482

namespace A215287

/-- `A088617(2*A087811(n+1))` -/
def P2761207833196571482.Spec : Prop :=
  ∀ n, P2761207833196571482.a n = A215287 (n + 1)

end A215287

/-! ## A215287.P18043355482863423004

`A088617(∑[A000034(n+1)+n])`
-/

namespace A215287.P18043355482863423004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A215287.P18043355482863423004

namespace A215287

/-- `A088617(∑[A000034(n+1)+n])` -/
def P18043355482863423004.Spec : Prop :=
  ∀ n, P18043355482863423004.a n = A215287 (n + 1)

end A215287

/-! ## A215287.P15355319746322588807

`A088617(A004277(∑[A008619(n)]))`
-/

namespace A215287.P15355319746322588807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A215287.P15355319746322588807

namespace A215287

/-- `A088617(A004277(∑[A008619(n)]))` -/
def P15355319746322588807.Spec : Prop :=
  ∀ n, P15355319746322588807.a n = A215287 (n + 1)

end A215287

/-! ## A215287.P7327991711350944923

`A088617(A005843(∑[A008619(n)]))`
-/

namespace A215287.P7327991711350944923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A215287.P7327991711350944923

namespace A215287

/-- `A088617(A005843(∑[A008619(n)]))` -/
def P7327991711350944923.Spec : Prop :=
  ∀ n, P7327991711350944923.a n = A215287 (n + 1)

end A215287

/-! ## A215287.P15501193992380391207

`A088617(A133263(n)+A032766(n))`
-/

namespace A215287.P15501193992380391207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A133263 n + A032766 n).toNat

end

end A215287.P15501193992380391207

namespace A215287

/-- `A088617(A133263(n)+A032766(n))` -/
def P15501193992380391207.Spec : Prop :=
  ∀ n, P15501193992380391207.a n = A215287 (n + 1)

end A215287

/-! ## A215287.P16265617663673894674

`A088617(A253145(n)+A008619(n))`
-/

namespace A215287.P16265617663673894674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A253145 n + A008619 n).toNat

end

end A215287.P16265617663673894674

namespace A215287

/-- `A088617(A253145(n)+A008619(n))` -/
def P16265617663673894674.Spec : Prop :=
  ∀ n, P16265617663673894674.a n = A215287 (n + 1)

end A215287

/-! ## A215287.P5174926919300032770

`A060693(A074148(n+1))`
-/

namespace A215287.P5174926919300032770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060693 (A074148 (n + 1)).toNat

end

end A215287.P5174926919300032770

namespace A215287

/-- `A060693(A074148(n+1))` -/
def P5174926919300032770.Spec : Prop :=
  ∀ n, P5174926919300032770.a n = A215287 (n + 1)

end A215287

/-! ## A215287.P3987473823755143759

`A060693(A080476(n+1)+1+n)`
-/

namespace A215287.P3987473823755143759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060693 (A080476 (n + 1) + 1 + (n : ℤ)).toNat

end

end A215287.P3987473823755143759

namespace A215287

/-- `A060693(A080476(n+1)+1+n)` -/
def P3987473823755143759.Spec : Prop :=
  ∀ n, P3987473823755143759.a n = A215287 (n + 1)

end A215287

/-!
# A215288: Number of permutations of 0..floor((n*4-1)/2) on even squares of an n X 4 array such that each row and column of even squares is increasing.

The programs for A215288, there is no canonical definition to state claims against.
-/

/-! ## A215288.P13632520667446385998

`A342982(∑[or(1, n+1)])`
-/

namespace A215288.P13632520667446385998
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342982 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215288.P13632520667446385998

/-! ## A215288.P10356737080818015116

`record[A342982(A245300(n))]`
-/

namespace A215288.P10356737080818015116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342982 (A245300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215288.P10356737080818015116

/-! ## A215288.P2974637850671363618

`A342982(A074148(n+1))`
-/

namespace A215288.P2974637850671363618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342982 (A074148 (n + 1)).toNat

end

end A215288.P2974637850671363618

/-! ## A215288.P6173784253789645135

`A342982(A194274(n+1))`
-/

namespace A215288.P6173784253789645135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342982 (A194274 (n + 1)).toNat

end

end A215288.P6173784253789645135

/-! ## A215288.P15114183714332669327

`A342982(A080476(n+2))`
-/

namespace A215288.P15114183714332669327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342982 (A080476 (n + 2)).toNat

end

end A215288.P15114183714332669327

/-! ## A215288.P13494639786194433948

`A000108(n+1)*A005558(n+1)`
-/

namespace A215288.P13494639786194433948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A005558 (n + 1)

end

end A215288.P13494639786194433948

/-! ## A215288.P16077312587034942342

`∏[A000217(2*n+1)/A008805(n)]`
-/

namespace A215288.P16077312587034942342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * n + 1) : ℚ) / (A008805 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A215288.P16077312587034942342

/-! ## A215288.P358770899831661875

`A005558(n+1)*A126120(2*(n+1))`
-/

namespace A215288.P358770899831661875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005558 (n + 1) * A126120 (2 * (n + 1))

end

end A215288.P358770899831661875

/-! ## A215288.P16652084617074031741

`A000108(n+1)*A057977(n+1)*A063549(n+2)`
-/

namespace A215288.P16652084617074031741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A057977 (n + 1) * A063549 (n + 2)

end

end A215288.P16652084617074031741

/-! ## A215288.P12858723444213207207

`A000108(n+1)*A063549(n+1)*A063549(n+2)`
-/

namespace A215288.P12858723444213207207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) * A063549 (n + 1) * A063549 (n + 2)

end

end A215288.P12858723444213207207

/-!
# A215289: Number of permutations of 0..floor((n*5-1)/2) on even squares of an n X 5 array such that each row and column of even squares is increasing.

The programs for A215289, there is no canonical definition to state claims against.
-/

/-! ## A215289.P15795021912278014669

`A215292(A374005(n+1))`
-/

namespace A215289.P15795021912278014669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (A374005 (n + 1)).toNat

end

end A215289.P15795021912278014669

/-! ## A215289.P7207957357218205531

`A215292(A133263(n+4)+3)`
-/

namespace A215289.P7207957357218205531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (A133263 (n + 4) + 3).toNat

end

end A215289.P7207957357218205531

/-! ## A215289.P1919788177143849947

`A215292(A000124(n+4)+4)`
-/

namespace A215289.P1919788177143849947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (A000124 (n + 4) + 4).toNat

end

end A215289.P1919788177143849947

/-! ## A215289.P9174247055456578961

`A215292(Δ[A264443(n)])`
-/

namespace A215289.P9174247055456578961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (f1 (n + 1) - f1 n).toNat

end

end A215289.P9174247055456578961

/-! ## A215289.P8291293059358356525

`A215292(eq[3, A152157(n)])`
-/

namespace A215289.P8291293059358356525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215289.P8291293059358356525

/-!
# A215290: Number of permutations of 0..floor((n*6-1)/2) on even squares of an nX6 array such that each row and column of even squares is increasing.

The programs for A215290, there is no canonical definition to state claims against.
-/

/-! ## A215290.P976435932685694544

`A215292(A374007(n+1))`
-/

namespace A215290.P976435932685694544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (A374007 (n + 1)).toNat

end

end A215290.P976435932685694544

/-! ## A215290.P8224134782086215789

`A215292(A167499(n+4)+1)`
-/

namespace A215290.P8224134782086215789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (A167499 (n + 4) + 1).toNat

end

end A215290.P8224134782086215789

/-! ## A215290.P18174059712449146830

`A215292(eq[7, A131818(n+1)])`
-/

namespace A215290.P18174059712449146830
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215290.P18174059712449146830

/-! ## A215290.P13597287003944431171

`A215297(eq[7, A131818(n+1)])`
-/

namespace A215290.P13597287003944431171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215297 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215290.P13597287003944431171

/-! ## A215290.P7020074597519589978

`A215292(A052905(n+3))`
-/

namespace A215290.P7020074597519589978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (A052905 (n + 3)).toNat

end

end A215290.P7020074597519589978

/-!
# A215291: Number of permutations of 0..floor((n*7-1)/2) on even squares of an nX7 array such that each row and column of even squares is increasing.

The programs for A215291, there is no canonical definition to state claims against.
-/

/-! ## A215291.P14310743111831216484

`A215292(A374008(n+1))`
-/

namespace A215291.P14310743111831216484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (A374008 (n + 1)).toNat

end

end A215291.P14310743111831216484

/-! ## A215291.P13560180845309504054

`A215292(eq[8, A131818(n+1)])`
-/

namespace A215291.P13560180845309504054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215291.P13560180845309504054

/-! ## A215291.P7974658534729705174

`A215292(A056121(n)+22)`
-/

namespace A215291.P7974658534729705174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (A056121 n + 22).toNat

end

end A215291.P7974658534729705174

/-! ## A215291.P14783189115505193647

`A215292(eq[4, A219347(n)])`
-/

namespace A215291.P14783189115505193647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215291.P14783189115505193647

/-! ## A215291.P17470593811019810022

`A215292(eq[6, A193592(n)])`
-/

namespace A215291.P17470593811019810022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215291.P17470593811019810022

/-!
# A215292: T(n,k)=Number of permutations of 0..floor((n*k-1)/2) on even squares of an nXk array such that each row and column of even squares is increasing.

The programs for A215292, there is no canonical definition to state claims against.
-/

/-! ## A215292.P2095642748190741835

`A089869(A050291(A004247(n)))`
-/

namespace A215292.P2095642748190741835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089869 (A050291 (A004247 n).toNat).toNat

end

end A215292.P2095642748190741835

/-! ## A215292.P12800734748555263524

`A052410(A050291(A004247(n))^3)`
-/

namespace A215292.P12800734748555263524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A050291 (A004247 n).toNat ^ 3).toNat

end

end A215292.P12800734748555263524

/-! ## A215292.P5719261990431711189

`A050291(A004247(n)%A193902(3*n+1))`
-/

namespace A215292.P5719261990431711189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050291 (Int.tmod (A004247 n) (A193902 (3 * n + 1))).toNat

end

end A215292.P5719261990431711189

/-! ## A215292.P11768118006141537893

`A050291(A004247(n))%A080535(n)`
-/

namespace A215292.P11768118006141537893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A050291 (A004247 n).toNat) (A080535 n)

end

end A215292.P11768118006141537893

/-! ## A215292.P12330511165681998294

`A246868(A048720(n)%A327476(3*n+5))`
-/

namespace A215292.P12330511165681998294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246868 (Int.tmod (A048720 n) (A327476 (3 * n + 5))).toNat

end

end A215292.P12330511165681998294

/-!
# A215293: Number of permutations of 0..floor((n*n-2)/2) on odd squares of an n X n array such that each row and column of odd squares is increasing.

The programs for A215293, there is no canonical definition to state claims against.
-/

/-! ## A215293.P13741986858077471448

`A215297(∑[4*n]+1)`
-/

namespace A215293.P13741986858077471448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215297 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A215293.P13741986858077471448

/-! ## A215293.P2361964575837022093

`record[gcd(A114327(n), A215297(n+1))]`
-/

namespace A215293.P2361964575837022093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114327 n) (A215297 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215293.P2361964575837022093

/-! ## A215293.P5817619719535901035

`A215292(A059841(n)+A001844(n))`
-/

namespace A215293.P5817619719535901035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215292 (A059841 n + A001844 n).toNat

end

end A215293.P5817619719535901035

/-! ## A215293.P8177072661733970237

`gcd(A112316(n), A215297(A001844(n)))`
-/

namespace A215293.P8177072661733970237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 n) (A215297 (A001844 n).toNat)

end

end A215293.P8177072661733970237

/-! ## A215293.P11874489259026098147

`lcm(A136482(n), A215297(A001844(n)))`
-/

namespace A215293.P11874489259026098147
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A136482 n) (A215297 (A001844 n).toNat)

end

end A215293.P11874489259026098147

/-!
# A215294: Number of permutations of 0..floor((n*3-2)/2) on odd squares of an n X 3 array such that each row and column of odd squares is increasing.

The programs for A215294, the canonical program `A215294.P3946334629995793634` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A215294 has offset 1).

The definition of A215294 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 145 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A215294.P3946334629995793634

`∏[A081181(n)/A065942(n)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A215294

/-- `∏[A081181(n)/A065942(n)]` -/
def P3946334629995793634.Spec : Prop :=
  ∀ n, P3946334629995793634.a n = (A215294 (n + 1) : ℚ)

end A215294

/-! ## A215294.P16714446931062112301

`record[A199127(n+1)/(n+1)]`
-/

namespace A215294.P16714446931062112301
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A199127 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215294.P16714446931062112301

namespace A215294

/-- `record[A199127(n+1)/(n+1)]` -/
def P16714446931062112301.Spec : Prop :=
  ∀ n, P16714446931062112301.a n = (A215294 (n + 1) : ℚ)

end A215294

/-! ## A215294.P17129047674108468281

`A088617(∑[a(n-2)+2])` with `a(0)=1, a(1)=3`
-/

namespace A215294.P17129047674108468281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A215294.P17129047674108468281

namespace A215294

/-- `A088617(∑[a(n-2)+2])` -/
def P17129047674108468281.Spec : Prop :=
  ∀ n, P17129047674108468281.a n = A215294 (n + 1)

end A215294

/-! ## A215294.P5736129959615277671

`record[A088617(A151890(n))]`
-/

namespace A215294.P5736129959615277671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A151890 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215294.P5736129959615277671

namespace A215294

/-- `record[A088617(A151890(n))]` -/
def P5736129959615277671.Spec : Prop :=
  ∀ n, P5736129959615277671.a n = A215294 (n + 1)

end A215294

/-! ## A215294.P13348945203561371299

`record[A088617(A245300(n))]`
-/

namespace A215294.P13348945203561371299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A245300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215294.P13348945203561371299

namespace A215294

/-- `record[A088617(A245300(n))]` -/
def P13348945203561371299.Spec : Prop :=
  ∀ n, P13348945203561371299.a n = A215294 (n + 1)

end A215294

/-! ## A215294.P13822092420704908983

`A088617(A074148(n+1))`
-/

namespace A215294.P13822092420704908983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A074148 (n + 1)).toNat

end

end A215294.P13822092420704908983

namespace A215294

/-- `A088617(A074148(n+1))` -/
def P13822092420704908983.Spec : Prop :=
  ∀ n, P13822092420704908983.a n = A215294 (n + 1)

end A215294

/-! ## A215294.P2568372074256415959

`A088617(∑[A000034(n)+n])`
-/

namespace A215294.P2568372074256415959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A215294.P2568372074256415959

namespace A215294

/-- `A088617(∑[A000034(n)+n])` -/
def P2568372074256415959.Spec : Prop :=
  ∀ n, P2568372074256415959.a n = A215294 (n + 1)

end A215294

/-! ## A215294.P14588133017329894007

`A088617(A080476(n+1)+1+n)`
-/

namespace A215294.P14588133017329894007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A080476 (n + 1) + 1 + (n : ℤ)).toNat

end

end A215294.P14588133017329894007

namespace A215294

/-- `A088617(A080476(n+1)+1+n)` -/
def P14588133017329894007.Spec : Prop :=
  ∀ n, P14588133017329894007.a n = A215294 (n + 1)

end A215294

/-! ## A215294.P4447525763121133319

`A088617(A005408(n)+A000982(n))`
-/

namespace A215294.P4447525763121133319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A005408 n + A000982 n).toNat

end

end A215294.P4447525763121133319

namespace A215294

/-- `A088617(A005408(n)+A000982(n))` -/
def P4447525763121133319.Spec : Prop :=
  ∀ n, P4447525763121133319.a n = A215294 (n + 1)

end A215294

/-! ## A215294.P6683222160134008838

`A088617(A034856(n+1)-A004526(n))`
-/

namespace A215294.P6683222160134008838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A034856 (n + 1) - A004526 n).toNat

end

end A215294.P6683222160134008838

namespace A215294

/-- `A088617(A034856(n+1)-A004526(n))` -/
def P6683222160134008838.Spec : Prop :=
  ∀ n, P6683222160134008838.a n = A215294 (n + 1)

end A215294

/-! ## A215294.P3960911134159740377

`A088617(A034856(n+1)-A123108(n))`
-/

namespace A215294.P3960911134159740377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088617 (A034856 (n + 1) - A123108 n).toNat

end

end A215294.P3960911134159740377

namespace A215294

/-- `A088617(A034856(n+1)-A123108(n))` -/
def P3960911134159740377.Spec : Prop :=
  ∀ n, P3960911134159740377.a n = A215294 (n + 1)

end A215294

/-! ## A215294.P16774093877523619459

`A060693(A080476(n+2))`
-/

namespace A215294.P16774093877523619459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060693 (A080476 (n + 2)).toNat

end

end A215294.P16774093877523619459

namespace A215294

/-- `A060693(A080476(n+2))` -/
def P16774093877523619459.Spec : Prop :=
  ∀ n, P16774093877523619459.a n = A215294 (n + 1)

end A215294

/-! ## A215294.P18269591161243212446

`A060693(∑[2*A008619(n)])`
-/

namespace A215294.P18269591161243212446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060693 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A215294.P18269591161243212446

namespace A215294

/-- `A060693(∑[2*A008619(n)])` -/
def P18269591161243212446.Spec : Prop :=
  ∀ n, P18269591161243212446.a n = A215294 (n + 1)

end A215294

/-! ## A215294.P9469898294186235555

`A060693(A004277(∑[A008619(n)]))`
-/

namespace A215294.P9469898294186235555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060693 (A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A215294.P9469898294186235555

namespace A215294

/-- `A060693(A004277(∑[A008619(n)]))` -/
def P9469898294186235555.Spec : Prop :=
  ∀ n, P9469898294186235555.a n = A215294 (n + 1)

end A215294

/-! ## A215294.P4673788948143005440

`A060693(A005843(∑[A008619(n)]))`
-/

namespace A215294.P4673788948143005440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060693 (A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A215294.P4673788948143005440

namespace A215294

/-- `A060693(A005843(∑[A008619(n)]))` -/
def P4673788948143005440.Spec : Prop :=
  ∀ n, P4673788948143005440.a n = A215294 (n + 1)

end A215294

/-!
# A215295: Number of permutations of 0..floor((n*5-2)/2) on odd squares of an nX5 array such that each row and column of odd squares is increasing.

The programs for A215295, there is no canonical definition to state claims against.
-/

/-! ## A215295.P17197223537778327578

`A215297(A374005(n+1))`
-/

namespace A215295.P17197223537778327578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215297 (A374005 (n + 1)).toNat

end

end A215295.P17197223537778327578

/-! ## A215295.P15827846370897538841

`A215297(A155212(n)+13)`
-/

namespace A215295.P15827846370897538841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215297 (A155212 n + 13).toNat

end

end A215295.P15827846370897538841

/-! ## A215295.P12312849971636656833

`A215297(A056000(n)+15)`
-/

namespace A215295.P12312849971636656833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215297 (A056000 n + 15).toNat

end

end A215295.P12312849971636656833

/-! ## A215295.P4765393423775807293

`A215297(A133263(n+4)+3)`
-/

namespace A215295.P4765393423775807293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215297 (A133263 (n + 4) + 3).toNat

end

end A215295.P4765393423775807293

/-! ## A215295.P9057100947352766646

`A215297(eq[6, A131818(n+1)])`
-/

namespace A215295.P9057100947352766646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215297 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215295.P9057100947352766646

/-!
# A215296: Number of permutations of 0..floor((n*7-2)/2) on odd squares of an nX7 array such that each row and column of odd squares is increasing.

The programs for A215296, there is no canonical definition to state claims against.
-/

/-! ## A215296.P1845245863817892498

`A215297(A374008(n+1))`
-/

namespace A215296.P1845245863817892498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215297 (A374008 (n + 1)).toNat

end

end A215296.P1845245863817892498

/-! ## A215296.P17492051848199413537

`A215297(eq[8, A131818(n+1)])`
-/

namespace A215296.P17492051848199413537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215297 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215296.P17492051848199413537

/-! ## A215296.P17804163556325090529

`A215297(A055999(n+4))`
-/

namespace A215296.P17804163556325090529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215297 (A055999 (n + 4)).toNat

end

end A215296.P17804163556325090529

/-! ## A215296.P12312535755728628200

`A215297(eq[4, A219347(n)])`
-/

namespace A215296.P12312535755728628200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215297 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215296.P12312535755728628200

/-! ## A215296.P2780707972642035242

`A215297(eq[6, A193592(n)])`
-/

namespace A215296.P2780707972642035242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215297 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A215296.P2780707972642035242

/-!
# A215297: T(n,k) = number of permutations of 0..floor((n*k-2)/2) on odd squares of an n X k array such that each row and column of odd squares is increasing.

The programs for A215297, there is no canonical definition to state claims against.
-/

/-! ## A215297.P15427566381158619072

`A286326(A173887(n)+A008459(n))`
-/

namespace A215297.P15427566381158619072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286326 (A173887 n + A008459 n).toNat

end

end A215297.P15427566381158619072

/-!
# A215298: Number of solid standard Young tableaux of shape [[n,n-2],[2]].

The programs for A215298, there is no canonical definition to state claims against.
-/

/-! ## A215298.P5010750738387081637

`A214775(∑[n+2]+3)`
-/

namespace A215298.P5010750738387081637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A215298.P5010750738387081637

/-! ## A215298.P13472144047715590553

`record[A214775(A133263(abs(1-n)))]`
-/

namespace A215298.P13472144047715590553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A133263 |1 - (n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215298.P13472144047715590553

/-! ## A215298.P16480603185454587364

`lcm((-1)^n, A214775(A133263(n+2)))`
-/

namespace A215298.P16480603185454587364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A214775 (A133263 (n + 2)).toNat)

end

end A215298.P16480603185454587364

/-! ## A215298.P9147963215938721364

`7^A000045((n+1)²%(n+1))*A214775(A133263(n+2))`
-/

namespace A215298.P9147963215938721364
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 : ℚ) ^ (A000045 ((n + 1) ^ 2 % (n + 1)) : ℤ) * (A214775 (A133263 (n + 2)).toNat : ℚ)

end

end A215298.P9147963215938721364

/-! ## A215298.P10586241416005630592

`A081297(C(n, 2))*A214775(A133263(n+2))`
-/

namespace A215298.P10586241416005630592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081297 (Nat.choose n 2) * A214775 (A133263 (n + 2)).toNat

end

end A215298.P10586241416005630592

/-!
# A215299: Number of solid standard Young tableaux of shape [[n,n-3],[3]].

The programs for A215299, there is no canonical definition to state claims against.
-/

/-! ## A215299.P7372920668817092679

`A214775(A167614(n+2))`
-/

namespace A215299.P7372920668817092679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A167614 (n + 2)).toNat

end

end A215299.P7372920668817092679

/-! ## A215299.P7814834810976560100

`A214775(A052905(n)+8)`
-/

namespace A215299.P7814834810976560100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A052905 n + 8).toNat

end

end A215299.P7814834810976560100

/-! ## A215299.P16584807172871793956

`A214775(A055999(n)+9)`
-/

namespace A215299.P16584807172871793956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A055999 n + 9).toNat

end

end A215299.P16584807172871793956

/-! ## A215299.P11859463164039461756

`record[A214775(A167614(A126759(n)))]`
-/

namespace A215299.P11859463164039461756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A167614 (A126759 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A215299.P11859463164039461756

/-! ## A215299.P18147093119206101379

`A214775(A020723(A055998(n)+n))`
-/

namespace A215299.P18147093119206101379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (A020723 (A055998 n + (n : ℤ)).toNat).toNat

end

end A215299.P18147093119206101379

/-! ## A215299.P4104516738384436620

`A214775(∑[n+3]+n+3)`
-/

namespace A215299.P4104516738384436620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214775 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A215299.P4104516738384436620

