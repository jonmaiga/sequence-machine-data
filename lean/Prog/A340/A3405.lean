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
import Seq.B000.C020
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
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B002.C007
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
import Seq.Opaque.C023
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A340500: a(n) = maximum among first n terms of A340488.

The programs for A340500, there is no canonical definition to state claims against.
-/

/-! ## A340500.P6542854126265536413

`∑[A000007(A336033(n+1))]-1`
-/

namespace A340500.P6542854126265536413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A336033 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A340500.P6542854126265536413

/-! ## A340500.P2768343702002807033

`∑[A000007(A340499(n+1)²)]-1`
-/

namespace A340500.P2768343702002807033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A340499 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A340500.P2768343702002807033

/-! ## A340500.P485785274883467124

`n-∑[A002828(A340499(n+1)²)]`
-/

namespace A340500.P485785274883467124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002828 (A340499 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340500.P485785274883467124

/-! ## A340500.P1977669448708869649

`∑[A000007(A336033(n+1)+A000007(n))]`
-/

namespace A340500.P1977669448708869649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A336033 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340500.P1977669448708869649

/-! ## A340500.P10637055280916662339

`∑[A054977(A336033(n+1))-A054977(n)]`
-/

namespace A340500.P10637055280916662339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A336033 (n + 1)).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340500.P10637055280916662339

/-! ## A340500.P8934727052819460466

`∑[A057427(n)-A057427(A336033(n+1))]`
-/

namespace A340500.P8934727052819460466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A057427 (A336033 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340500.P8934727052819460466

/-! ## A340500.P11761807265289116646

`∑[A004273(n)%A054977(A336033(n+1))]`
-/

namespace A340500.P11761807265289116646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004273 n) (A054977 (A336033 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340500.P11761807265289116646

/-! ## A340500.P8360847596154987023

`∑[A032741(n)%A054977(A336033(n+1))]`
-/

namespace A340500.P8360847596154987023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032741 n) (A054977 (A336033 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340500.P8360847596154987023

/-! ## A340500.P3436276850550940761

`∑[A000007((A340499(n+1)+A000007(n))²)]`
-/

namespace A340500.P3436276850550940761
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 ((A340499 (n + 1) + A000007 n) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340500.P3436276850550940761

/-! ## A340500.P9008215375641200339

`∑[A000040(n+1)%A054977(A336033(n+1))]`
-/

namespace A340500.P9008215375641200339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A054977 (A336033 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340500.P9008215375641200339

/-!
# A340501: Smallest square which when written in base b contains each digit exactly once, or -1 if no such square exists.

The programs for A340501, there is no canonical definition to state claims against.
-/

/-! ## A340501.P840645745268877225

`or(A033999(A322059(n+1)), A260182(n+2))`
-/

namespace A340501.P840645745268877225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A033999 (A322059 (n + 1)).toNat) (A260182 (n + 2))

end

end A340501.P840645745268877225

/-!
# A340502: Number of zeros in row n of triangle A249223.

The programs for A340502, there is no canonical definition to state claims against.
-/

/-! ## A340502.P16467591125394243428

`Δ[∑[A003056(n)]-A294849(n)]`
-/

namespace A340502.P16467591125394243428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A294849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340502.P16467591125394243428

/-! ## A340502.P16905855986705814331

`A003056(n+1)-Δ[A294849(n)]`
-/

namespace A340502.P16905855986705814331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (n + 1) - (f1 (n + 1) - f1 n)

end

end A340502.P16905855986705814331

/-! ## A340502.P17201192289901046985

`A004218(A008619(n)^A279048(n+1))`
-/

namespace A340502.P17201192289901046985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.roundAway ((A008619 n : ℚ) ^ (A279048 (n + 1) : ℤ))).toNat

end

end A340502.P17201192289901046985

/-! ## A340502.P17875593769721748779

`A004218(A052938(n)^A279048(n+1))`
-/

namespace A340502.P17875593769721748779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.roundAway ((A052938 n : ℚ) ^ (A279048 (n + 1) : ℤ))).toNat

end

end A340502.P17875593769721748779

/-! ## A340502.P8673713832768591972

`A004218(A080513(n)^A279048(n+1))`
-/

namespace A340502.P8673713832768591972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (SequenceMachineLib.roundAway ((A080513 n : ℚ) ^ (A279048 (n + 1) : ℤ))).toNat

end

end A340502.P8673713832768591972

/-!
# A340503: Fixed under 0 -> 02, 1 -> 32, 2 -> 01, 3 -> 31.

The programs for A340503, the canonical program `A340503.P1192746617364733996` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340503 has offset 1).

The definition of A340503 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340503.P1192746617364733996

`and(3, 2*(n+4)-A020987(n))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A340503

/-- `and(3, 2*(n+4)-A020987(n))` -/
def P1192746617364733996.Spec : Prop :=
  ∀ n, P1192746617364733996.a n = A340503 (n + 1)

theorem P1192746617364733996.correct : P1192746617364733996.Spec := by
  intro n
  simp only [A340503, Nat.add_sub_cancel]

end A340503

/-! ## A340503.P17119181798600244881

`xor(3*n%2, A100260(n+1))`
-/

namespace A340503.P17119181798600244881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((3 * (n % 2) : ℕ) : ℤ) (A100260 (n + 1))

end

end A340503.P17119181798600244881

namespace A340503

/-- `xor(3*n%2, A100260(n+1))` -/
def P17119181798600244881.Spec : Prop :=
  ∀ n, P17119181798600244881.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P2983351977625816390

`A010873(2*n-A020987(n))`
-/

namespace A340503.P2983351977625816390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 ((2 * n : ℤ) - A020987 n).toNat

end

end A340503.P2983351977625816390

namespace A340503

/-- `A010873(2*n-A020987(n))` -/
def P2983351977625816390.Spec : Prop :=
  ∀ n, P2983351977625816390.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P15136163001817262170

`(A005843(n)-A020987(n))%4`
-/

namespace A340503.P15136163001817262170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005843 n - A020987 n) 4

end

end A340503.P15136163001817262170

namespace A340503

/-- `(A005843(n)-A020987(n))%4` -/
def P15136163001817262170.Spec : Prop :=
  ∀ n, P15136163001817262170.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P11645558290474505282

`xor(A010674(n), A100260(n+1))`
-/

namespace A340503.P11645558290474505282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010674 n) (A100260 (n + 1))

end

end A340503.P11645558290474505282

namespace A340503

/-- `xor(A010674(n), A100260(n+1))` -/
def P11645558290474505282.Spec : Prop :=
  ∀ n, P11645558290474505282.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P9311327734860581812

`A100260(Δ[A257083(n)])`
-/

namespace A340503.P9311327734860581812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257083 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100260 (f1 (n + 1) - f1 n).toNat

end

end A340503.P9311327734860581812

namespace A340503

/-- `A100260(Δ[A257083(n)])` -/
def P9311327734860581812.Spec : Prop :=
  ∀ n, P9311327734860581812.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P2192380500090291753

`A100260(A022998(n+1))`
-/

namespace A340503.P2192380500090291753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100260 (A022998 (n + 1)).toNat

end

end A340503.P2192380500090291753

namespace A340503

/-- `A100260(A022998(n+1))` -/
def P2192380500090291753.Spec : Prop :=
  ∀ n, P2192380500090291753.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P11989214325316518563

`A100260(A059029(n)+1)`
-/

namespace A340503.P11989214325316518563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100260 (A059029 n + 1).toNat

end

end A340503.P11989214325316518563

namespace A340503

/-- `A100260(A059029(n)+1)` -/
def P11989214325316518563.Spec : Prop :=
  ∀ n, P11989214325316518563.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P2370605624143169424

`A100260(A084483(n+1))`
-/

namespace A340503.P2370605624143169424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100260 (A084483 (n + 1)).toNat

end

end A340503.P2370605624143169424

namespace A340503

/-- `A100260(A084483(n+1))` -/
def P2370605624143169424.Spec : Prop :=
  ∀ n, P2370605624143169424.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P17874617790417407856

`A100260(A257088(n+1))`
-/

namespace A340503.P17874617790417407856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100260 (A257088 (n + 1)).toNat

end

end A340503.P17874617790417407856

namespace A340503

/-- `A100260(A257088(n+1))` -/
def P17874617790417407856.Spec : Prop :=
  ∀ n, P17874617790417407856.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P14899264934047388189

`A100260(A257083(n+1)-A257083(n))`
-/

namespace A340503.P14899264934047388189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100260 (A257083 (n + 1) - A257083 n).toNat

end

end A340503.P14899264934047388189

namespace A340503

/-- `A100260(A257083(n+1)-A257083(n))` -/
def P14899264934047388189.Spec : Prop :=
  ∀ n, P14899264934047388189.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P17900440598209561601

`A100260(2*n+1+n%2)`
-/

namespace A340503.P17900440598209561601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100260 (2 * n + (1 + n % 2))

end

end A340503.P17900440598209561601

namespace A340503

/-- `A100260(2*n+1+n%2)` -/
def P17900440598209561601.Spec : Prop :=
  ∀ n, P17900440598209561601.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P7833283011112931440

`xor(char[2*n], A100260(2*(n+1)))`
-/

namespace A340503.P7833283011112931440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A100260 (2 * (n + 1)))

end

end A340503.P7833283011112931440

namespace A340503

/-- `xor(char[2*n], A100260(2*(n+1)))` -/
def P7833283011112931440.Spec : Prop :=
  ∀ n, P7833283011112931440.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P16208122126517929280

`A100260(char[2*n+1]+2*n+1)`
-/

namespace A340503.P16208122126517929280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100260 ((if ∃ j, f1 j = n then 1 else 0) + (2 * n + 1))

end

end A340503.P16208122126517929280

namespace A340503

/-- `A100260(char[2*n+1]+2*n+1)` -/
def P16208122126517929280.Spec : Prop :=
  ∀ n, P16208122126517929280.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P13978700383305830022

`A100260(n+1)-A380667(2*n)`
-/

namespace A340503.P13978700383305830022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100260 (n + 1) - A380667 (2 * n)

end

end A340503.P13978700383305830022

namespace A340503

/-- `A100260(n+1)-A380667(2*n)` -/
def P13978700383305830022.Spec : Prop :=
  ∀ n, P13978700383305830022.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P5061727169296853231

`A020987(n)+2*A020987(2*n+1)`
-/

namespace A340503.P5061727169296853231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020987 n + 2 * A020987 (2 * n + 1)

end

end A340503.P5061727169296853231

namespace A340503

/-- `A020987(n)+2*A020987(2*n+1)` -/
def P5061727169296853231.Spec : Prop :=
  ∀ n, P5061727169296853231.a n = A340503 (n + 1)

end A340503

/-! ## A340503.P7080798575157072788

`A334576(2*n)+2-A020986(2*n+1)`
-/

namespace A340503.P7080798575157072788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334576 (2 * n) + (2 - A020986 (2 * n + 1))

end

end A340503.P7080798575157072788

namespace A340503

/-- `A334576(2*n)+2-A020986(2*n+1)` -/
def P7080798575157072788.Spec : Prop :=
  ∀ n, P7080798575157072788.a n = A340503 (n + 1)

end A340503

/-!
# A340504: Fixed under 0 -> 03, 1 -> 23, 2 -> 21, 3 -> 01.

The programs for A340504, the canonical program `A340504.P11252136775736366337` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340504 has offset 1).

The definition of A340504 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340504.P11252136775736366337

`(5-A105584(n))%4`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A340504

/-- `(5-A105584(n))%4` -/
def P11252136775736366337.Spec : Prop :=
  ∀ n, P11252136775736366337.a n = A340504 (n + 1)

theorem P11252136775736366337.correct : P11252136775736366337.Spec := by
  intro n
  simp only [A340504, Nat.add_sub_cancel]

end A340504

/-! ## A340504.P6948239150277703224

`xor(A020985(n)+1, gcd(2, n))`
-/

namespace A340504.P6948239150277703224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A020985 n + 1) (Nat.gcd 2 n : ℤ)

end

end A340504.P6948239150277703224

namespace A340504

/-- `xor(A020985(n)+1, gcd(2, n))` -/
def P6948239150277703224.Spec : Prop :=
  ∀ n, P6948239150277703224.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P1098415876104175431

`∑[A152985(A008574(n))]%4`
-/

namespace A340504.P1098415876104175431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152985 (A008574 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A340504.P1098415876104175431

namespace A340504

/-- `∑[A152985(A008574(n))]%4` -/
def P1098415876104175431.Spec : Prop :=
  ∀ n, P1098415876104175431.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P4387589022196312648

`and(3, A020985(n)-A000034(n))`
-/

namespace A340504.P4387589022196312648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A020985 n - A000034 n)

end

end A340504.P4387589022196312648

namespace A340504

/-- `and(3, A020985(n)-A000034(n))` -/
def P4387589022196312648.Spec : Prop :=
  ∀ n, P4387589022196312648.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P779740352244083574

`and(3, A020985(n)-A002522(n))`
-/

namespace A340504.P779740352244083574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A020985 n - A002522 n)

end

end A340504.P779740352244083574

namespace A340504

/-- `and(3, A020985(n)-A002522(n))` -/
def P779740352244083574.Spec : Prop :=
  ∀ n, P779740352244083574.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P14879182252526586104

`(A020985(n)+A000035(n))²-A020985(n)`
-/

namespace A340504.P14879182252526586104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A020985 n + A000035 n) ^ 2 - A020985 n

end

end A340504.P14879182252526586104

namespace A340504

/-- `(A020985(n)+A000035(n))²-A020985(n)` -/
def P14879182252526586104.Spec : Prop :=
  ∀ n, P14879182252526586104.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P18180563892844617365

`∑[A152985(A008458(n))]%4`
-/

namespace A340504.P18180563892844617365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152985 (A008458 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) 4

end

end A340504.P18180563892844617365

namespace A340504

/-- `∑[A152985(A008458(n))]%4` -/
def P18180563892844617365.Spec : Prop :=
  ∀ n, P18180563892844617365.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P14603156289219340672

`A268676(A318921(2*n+1))+n%2-1`
-/

namespace A340504.P14603156289219340672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268676 (A318921 (2 * n + 1)).toNat + (((n % 2 : ℕ) : ℤ) - 1)

end

end A340504.P14603156289219340672

namespace A340504

/-- `A268676(A318921(2*n+1))+n%2-1` -/
def P14603156289219340672.Spec : Prop :=
  ∀ n, P14603156289219340672.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P17965609578140050378

`A000034(n)-A020985(A014601(n))`
-/

namespace A340504.P17965609578140050378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - A020985 (A014601 n).toNat

end

end A340504.P17965609578140050378

namespace A340504

/-- `A000034(n)-A020985(A014601(n))` -/
def P17965609578140050378.Spec : Prop :=
  ∀ n, P17965609578140050378.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P17271713605409271637

`n%2+1-A020985(2*n+1)`
-/

namespace A340504.P17271713605409271637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 + 1 : ℕ) : ℤ) - A020985 (2 * n + 1)

end

end A340504.P17271713605409271637

namespace A340504

/-- `n%2+1-A020985(2*n+1)` -/
def P17271713605409271637.Spec : Prop :=
  ∀ n, P17271713605409271637.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P8164341918667960434

`and(A010693(n), A020985(Δ[n²]))`
-/

namespace A340504.P8164341918667960434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010693 n) (A020985 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A340504.P8164341918667960434

namespace A340504

/-- `and(A010693(n), A020985(Δ[n²]))` -/
def P8164341918667960434.Spec : Prop :=
  ∀ n, P8164341918667960434.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P13836618105613278285

`A000034(n)-A020985(2*n+1)`
-/

namespace A340504.P13836618105613278285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n - A020985 (2 * n + 1)

end

end A340504.P13836618105613278285

namespace A340504

/-- `A000034(n)-A020985(2*n+1)` -/
def P13836618105613278285.Spec : Prop :=
  ∀ n, P13836618105613278285.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P17742473895576852134

`A105584(2*n+1)-A000034(n+1)`
-/

namespace A340504.P17742473895576852134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105584 (2 * n + 1) - A000034 (n + 1)

end

end A340504.P17742473895576852134

namespace A340504

/-- `A105584(2*n+1)-A000034(n+1)` -/
def P17742473895576852134.Spec : Prop :=
  ∀ n, P17742473895576852134.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P3893510204322015304

`A105584(2*n+1)+A010693(n)-4`
-/

namespace A340504.P3893510204322015304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105584 (2 * n + 1) + (A010693 n - 4)

end

end A340504.P3893510204322015304

namespace A340504

/-- `A105584(2*n+1)+A010693(n)-4` -/
def P3893510204322015304.Spec : Prop :=
  ∀ n, P3893510204322015304.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P12067616452782145906

`A105584(2*n+1)+A010702(n)-5`
-/

namespace A340504.P12067616452782145906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105584 (2 * n + 1) + (A010702 n - 5)

end

end A340504.P12067616452782145906

namespace A340504

/-- `A105584(2*n+1)+A010702(n)-5` -/
def P12067616452782145906.Spec : Prop :=
  ∀ n, P12067616452782145906.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P3386015827170258411

`A059841(n+1)+1-A020985(2*n+1)`
-/

namespace A340504.P3386015827170258411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + (1 - A020985 (2 * n + 1))

end

end A340504.P3386015827170258411

namespace A340504

/-- `A059841(n+1)+1-A020985(2*n+1)` -/
def P3386015827170258411.Spec : Prop :=
  ∀ n, P3386015827170258411.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P14985133856127318391

`2-(A020985(2*n+1)+A000035(n+1))`
-/

namespace A340504.P14985133856127318391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A020985 (2 * n + 1) + A000035 (n + 1))

end

end A340504.P14985133856127318391

namespace A340504

/-- `2-(A020985(2*n+1)+A000035(n+1))` -/
def P14985133856127318391.Spec : Prop :=
  ∀ n, P14985133856127318391.a n = A340504 (n + 1)

end A340504

/-! ## A340504.P11551484323251697860

`A059841(n+1)+2*A020987(2*n+1)`
-/

namespace A340504.P11551484323251697860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (n + 1) + 2 * A020987 (2 * n + 1)

end

end A340504.P11551484323251697860

namespace A340504

/-- `A059841(n+1)+2*A020987(2*n+1)` -/
def P11551484323251697860.Spec : Prop :=
  ∀ n, P11551484323251697860.a n = A340504 (n + 1)

end A340504

/-!
# A340505: a(n) = Product_{i=1..n} A082993(n+1).

The programs for A340505, there is no canonical definition to state claims against.
-/

/-! ## A340505.P10905676037872154609

`A100016(n+1)/2`
-/

namespace A340505.P10905676037872154609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100016 (n + 1) : ℚ) / 2

end

end A340505.P10905676037872154609

/-! ## A340505.P11162155062311847866

`∏[A082993(n+1)]/2`
-/

namespace A340505.P11162155062311847866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082993 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A340505.P11162155062311847866

/-! ## A340505.P11618744148332995136

`record[A100016(A008611(n))/2]`
-/

namespace A340505.P11618744148332995136
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100016 (A008611 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340505.P11618744148332995136

/-! ## A340505.P17602085595267973779

`∏[A082993(n+1)-A000007(n)]`
-/

namespace A340505.P17602085595267973779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082993 (n + 1) - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340505.P17602085595267973779

/-!
# A340506: For those rows n of A249223 which are weakly increasing, let w(n) denote the maximal entry in the row: sequence gives values of n for which w(n) sets a new record.

The programs for A340506, there is no canonical definition to state claims against.
-/

/-! ## A340506.P10803097454410799503

`A250071(A053640(n+1))`
-/

namespace A340506.P10803097454410799503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250071 (A053640 (n + 1)).toNat

end

end A340506.P10803097454410799503

/-! ## A340506.P3545225456114234620

`A250071(A344470(n+1))`
-/

namespace A340506.P3545225456114234620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250071 (A344470 (n + 1)).toNat

end

end A340506.P3545225456114234620

/-! ## A340506.P11783767699113682306

`A250071(record[A001227(n+1)])`
-/

namespace A340506.P11783767699113682306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250071 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340506.P11783767699113682306

/-! ## A340506.P14785413615870703696

`A250071(record[A000005(2*n+1)])`
-/

namespace A340506.P14785413615870703696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250071 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340506.P14785413615870703696

/-! ## A340506.P5064138692646005895

`A250071(A000005(A053624(n+1)))`
-/

namespace A340506.P5064138692646005895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250071 (A000005 (A053624 (n + 1)).toNat).toNat

end

end A340506.P5064138692646005895

/-!
# A340507: a(n) = floor(sqrt(2*n)) - A003056(n).

The programs for A340507, the canonical program `A340507.P13308749696070402216` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340507 has offset 0).

The definition of A340507 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340507.P13308749696070402216

`floor(sqrt(2*n))-A003056(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A340507

/-- `floor(sqrt(2*n))-A003056(n)` -/
def P13308749696070402216.Spec : Prop :=
  ∀ n, P13308749696070402216.a n = A340507 n

theorem P13308749696070402216.correct : P13308749696070402216.Spec := by
  intro n
  simp only [A340507]

end A340507

/-! ## A340507.P5491054870246985744

`gcd(T(n-1,k-1), T(n-2,k-1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A340507.P5491054870246985744
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  Nat.gcd (SequenceMachineLib.triUpLeft a n) (SequenceMachineLib.triUp2Left a n)

end

end A340507.P5491054870246985744

namespace A340507

/-- `gcd(T(n-1,k-1), T(n-2,k-1))` -/
def P5491054870246985744.Spec : Prop :=
  ∀ n, (P5491054870246985744.a n : ℤ) = A340507 n

end A340507

/-! ## A340507.P8238411098215886813

`round(n/∑[char[∑[n]]]²)`
-/

namespace A340507.P8238411098215886813
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) / (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℚ))

end

end A340507.P8238411098215886813

namespace A340507

/-- `round(n/∑[char[∑[n]]]²)` -/
def P8238411098215886813.Spec : Prop :=
  ∀ n, P8238411098215886813.a n = A340507 n

end A340507

/-! ## A340507.P14775703260102854198

`floor(sqrt(2*n))-row(n)`
-/

namespace A340507.P14775703260102854198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.sqrt (2 * n) : ℤ) - (SequenceMachineLib.triRow n : ℤ)

end

end A340507.P14775703260102854198

namespace A340507

/-- `floor(sqrt(2*n))-row(n)` -/
def P14775703260102854198.Spec : Prop :=
  ∀ n, P14775703260102854198.a n = A340507 n

end A340507

/-! ## A340507.P9148806553553186036

`T(n-2,k-1)^(1-Δ[row(n)])` with `a(0)=0`
-/

namespace A340507.P9148806553553186036
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triUp2Left a n ^ (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ)

end

end A340507.P9148806553553186036

namespace A340507

/-- `T(n-2,k-1)^(1-Δ[row(n)])` -/
def P9148806553553186036.Spec : Prop :=
  ∀ n, P9148806553553186036.a n = (A340507 n : ℚ)

end A340507

/-! ## A340507.P6733548127934432305

`T(n-2,k-1)^xor(1, Δ[row(n)])` with `a(0)=0`
-/

namespace A340507.P6733548127934432305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triUp2Left a n ^ (Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ)

end

end A340507.P6733548127934432305

namespace A340507

/-- `T(n-2,k-1)^xor(1, Δ[row(n)])` -/
def P6733548127934432305.Spec : Prop :=
  ∀ n, P6733548127934432305.a n = (A340507 n : ℚ)

end A340507

/-! ## A340507.P3488775994626119686

`T(n-2,k-1)^(row(n)-col(n))` with `a(0)=0`
-/

namespace A340507.P3488775994626119686
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triUp2Left a n ^ ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) : ℤ)

end

end A340507.P3488775994626119686

namespace A340507

/-- `T(n-2,k-1)^(row(n)-col(n))` -/
def P3488775994626119686.Spec : Prop :=
  ∀ n, P3488775994626119686.a n = (A340507 n : ℚ)

end A340507

/-! ## A340507.P15618088186840052629

`T(n-2,k-1)^xor(col(n), row(n))` with `a(0)=0`
-/

namespace A340507.P15618088186840052629
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  SequenceMachineLib.triUp2Left a n ^ Nat.xor (SequenceMachineLib.triCol n) (SequenceMachineLib.triRow n)

end

end A340507.P15618088186840052629

namespace A340507

/-- `T(n-2,k-1)^xor(col(n), row(n))` -/
def P15618088186840052629.Spec : Prop :=
  ∀ n, (P15618088186840052629.a n : ℤ) = A340507 n

end A340507

/-! ## A340507.P14680889553433565549

`and(1, comp[round(n²/8)]-n)`
-/

namespace A340507.P14680889553433565549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n ^ 2 : ℚ) / 8)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ))

end

end A340507.P14680889553433565549

namespace A340507

/-- `and(1, comp[round(n²/8)]-n)` -/
def P14680889553433565549.Spec : Prop :=
  ∀ n, P14680889553433565549.a n = A340507 n

end A340507

/-! ## A340507.P14920007379014153189

`floor(2*n/(row(n)+1)²)`
-/

namespace A340507.P14920007379014153189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℚ) / ((SequenceMachineLib.triRow n + 1) ^ 2 : ℚ)⌋

end

end A340507.P14920007379014153189

namespace A340507

/-- `floor(2*n/(row(n)+1)²)` -/
def P14920007379014153189.Spec : Prop :=
  ∀ n, P14920007379014153189.a n = A340507 n

end A340507

/-! ## A340507.P6705721550199639616

`ceil(2*sqrt(2*n+1))%2`
-/

namespace A340507.P6705721550199639616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈2 * Real.sqrt (2 * n + 1 : ℝ)⌉ 2

end

end A340507.P6705721550199639616

namespace A340507

/-- `ceil(2*sqrt(2*n+1))%2` -/
def P6705721550199639616.Spec : Prop :=
  ∀ n, P6705721550199639616.a n = A340507 n

end A340507

/-! ## A340507.P4096654509592387960

`1-floor(sqrt(8*n+1))%2`
-/

namespace A340507.P4096654509592387960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((Nat.sqrt (8 * n + 1) % 2 : ℕ) : ℤ)

end

end A340507.P4096654509592387960

namespace A340507

/-- `1-floor(sqrt(8*n+1))%2` -/
def P4096654509592387960.Spec : Prop :=
  ∀ n, P4096654509592387960.a n = A340507 n

end A340507

/-! ## A340507.P15996599901449750542

`C(2, C(row(n), 2*col(n))+2)`
-/

namespace A340507.P15996599901449750542
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose (SequenceMachineLib.triRow n) (2 * SequenceMachineLib.triCol n) + 2)

end

end A340507.P15996599901449750542

namespace A340507

/-- `C(2, C(row(n), 2*col(n))+2)` -/
def P15996599901449750542.Spec : Prop :=
  ∀ n, (P15996599901449750542.a n : ℤ) = A340507 n

end A340507

/-! ## A340507.P9970171409578248108

`C(2, C(row(n)-col(n), col(n))+2)`
-/

namespace A340507.P9970171409578248108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.choose ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)).toNat (SequenceMachineLib.triCol n) + 2)

end

end A340507.P9970171409578248108

namespace A340507

/-- `C(2, C(row(n)-col(n), col(n))+2)` -/
def P9970171409578248108.Spec : Prop :=
  ∀ n, (P9970171409578248108.a n : ℤ) = A340507 n

end A340507

/-! ## A340507.P4265630039709931587

`floor(n/(n²+1+n)%comp[∑[n]])`
-/

namespace A340507.P4265630039709931587
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / (((n ^ 2 + 1 + n) % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℕ) : ℚ)⌋

end

end A340507.P4265630039709931587

namespace A340507

/-- `floor(n/(n²+1+n)%comp[∑[n]])` -/
def P4265630039709931587.Spec : Prop :=
  ∀ n, P4265630039709931587.a n = A340507 n

end A340507

/-! ## A340507.P5829313827914909521

`abs(A072785(n))`
-/

namespace A340507.P5829313827914909521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A072785 n|

end

end A340507.P5829313827914909521

namespace A340507

/-- `abs(A072785(n))` -/
def P5829313827914909521.Spec : Prop :=
  ∀ n, P5829313827914909521.a n = A340507 n

end A340507

/-! ## A340507.P3753688094623366488

`1-A077605(n+1)`
-/

namespace A340507.P3753688094623366488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A077605 (n + 1)

end

end A340507.P3753688094623366488

namespace A340507

/-- `1-A077605(n+1)` -/
def P3753688094623366488.Spec : Prop :=
  ∀ n, P3753688094623366488.a n = A340507 n

end A340507

/-! ## A340507.P4884159313464727821

`C(2, A080159(n)+2)`
-/

namespace A340507.P4884159313464727821
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A080159 n + 2).toNat

end

end A340507.P4884159313464727821

namespace A340507

/-- `C(2, A080159(n)+2)` -/
def P4884159313464727821.Spec : Prop :=
  ∀ n, (P4884159313464727821.a n : ℤ) = A340507 n

end A340507

/-! ## A340507.P4584262254192046223

`C(2, A177446(n)+2)`
-/

namespace A340507.P4584262254192046223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A177446 n + 2).toNat

end

end A340507.P4584262254192046223

namespace A340507

/-- `C(2, A177446(n)+2)` -/
def P4584262254192046223.Spec : Prop :=
  ∀ n, (P4584262254192046223.a n : ℤ) = A340507 n

end A340507

/-! ## A340507.P6623325866642306296

`C(2, A183189(n)+2)`
-/

namespace A340507.P6623325866642306296
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (A183189 n + 2).toNat

end

end A340507.P6623325866642306296

namespace A340507

/-- `C(2, A183189(n)+2)` -/
def P6623325866642306296.Spec : Prop :=
  ∀ n, (P6623325866642306296.a n : ℤ) = A340507 n

end A340507

/-!
# A340508: Let ped(n) denote the number of partitions of n in which the even parts are distinct (A001935); a(n) = ped(9*n+7).

The programs for A340508, there is no canonical definition to state claims against.
-/

/-! ## A340508.P2024435661561141233

`12*A226034(n)`
-/

namespace A340508.P2024435661561141233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A226034 n

end

end A340508.P2024435661561141233

/-! ## A340508.P11668155807883188845

`A260546(3*n+2)`
-/

namespace A340508.P11668155807883188845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260546 (3 * n + 2)

end

end A340508.P11668155807883188845

/-! ## A340508.P4310208843062388805

`lcm(2, A260546(A166517(2*n)))`
-/

namespace A340508.P4310208843062388805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A260546 (A166517 (2 * n)).toNat)

end

end A340508.P4310208843062388805

/-! ## A340508.P2222484138702070963

`A001935(9*n+7)`
-/

namespace A340508.P2222484138702070963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (9 * n + 7)

end

end A340508.P2222484138702070963

/-! ## A340508.P10415311503763009343

`abs(A083365(Δ[A062725(n)]))`
-/

namespace A340508.P10415311503763009343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A083365 (f1 (n + 1) - f1 n).toNat|

end

end A340508.P10415311503763009343

/-! ## A340508.P11665034174711431450

`A001935(A017245(n))-(2*n)%2`
-/

namespace A340508.P11665034174711431450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001935 (A017245 n).toNat - ((2 * n % 2 : ℕ) : ℤ)

end

end A340508.P11665034174711431450

/-! ## A340508.P8041640974027174134

`A007318(∑[n])*A260546(A166517(2*n))`
-/

namespace A340508.P8041640974027174134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) * A260546 (A166517 (2 * n)).toNat

end

end A340508.P8041640974027174134

/-!
# A340509: a(n) = 3*A005382(n)-1.

The programs for A340509, the canonical program `A340509.P8307359629526885014` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340509 has offset 1).

The definition of A340509 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005382, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340509.P8307359629526885014

`3*A005382(n+1)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A340509

/-- `3*A005382(n+1)-1` -/
def P8307359629526885014.Spec : Prop :=
  ∀ n, P8307359629526885014.a n = A340509 (n + 1)

theorem P8307359629526885014.correct : P8307359629526885014.Spec := by
  intro n
  simp only [A340509, Nat.add_sub_cancel]

end A340509

/-! ## A340509.P7797740104076603890

`A005383(n+1)+A005382(n+1)`
-/

namespace A340509.P7797740104076603890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1) + A005382 (n + 1)

end

end A340509.P7797740104076603890

namespace A340509

/-- `A005383(n+1)+A005382(n+1)` -/
def P7797740104076603890.Spec : Prop :=
  ∀ n, P7797740104076603890.a n = A340509 (n + 1)

theorem P7797740104076603890.correct : P7797740104076603890.Spec := by
  intro n
  simp only [A340509, Nat.add_sub_cancel, A340509.P7797740104076603890.a, A340509.P8307359629526885014.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P8971640768606976312.f1, A027697.P8971640768606976312.f2, A027697.P8971640768606976312.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027705, A027705.P11345454911343154343.a, A027707, A027707.P15810114307957499977.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340509

/-! ## A340509.P5194770046612767667

`3*A351875(n+1)+2`
-/

namespace A340509.P5194770046612767667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A351875 (n + 1) + 2

end

end A340509.P5194770046612767667

namespace A340509

/-- `3*A351875(n+1)+2` -/
def P5194770046612767667.Spec : Prop :=
  ∀ n, P5194770046612767667.a n = A340509 (n + 1)

theorem P5194770046612767667.correct : P5194770046612767667.Spec := by
  intro n
  simp only [A340509, Nat.add_sub_cancel, A340509.P5194770046612767667.a, A340509.P8307359629526885014.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A351875, A351875.P8085341493502060080.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P8971640768606976312.f1, A027697.P8971640768606976312.f2, A027697.P8971640768606976312.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027705, A027705.P11345454911343154343.a, A027707, A027707.P15810114307957499977.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340509

/-! ## A340509.P4835865840648380371

`(3*A005383(n+1)+1)/2`
-/

namespace A340509.P4835865840648380371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A005383 (n + 1) + 1 : ℚ) / 2

end

end A340509.P4835865840648380371

namespace A340509

/-- `(3*A005383(n+1)+1)/2` -/
def P4835865840648380371.Spec : Prop :=
  ∀ n, P4835865840648380371.a n = (A340509 (n + 1) : ℚ)

theorem P4835865840648380371.correct : P4835865840648380371.Spec := by
  intro n
  simp only [A340509, Nat.add_sub_cancel, A340509.P4835865840648380371.a, A340509.P8307359629526885014.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P8971640768606976312.f1, A027697.P8971640768606976312.f2, A027697.P8971640768606976312.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027705, A027705.P11345454911343154343.a, A027707, A027707.P15810114307957499977.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340509

/-! ## A340509.P12702731185095392598

`6*A077068(n+1)/4-1`
-/

namespace A340509.P12702731185095392598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  6 * ((A077068 (n + 1) : ℚ) / 4) - 1

end

end A340509.P12702731185095392598

namespace A340509

/-- `6*A077068(n+1)/4-1` -/
def P12702731185095392598.Spec : Prop :=
  ∀ n, P12702731185095392598.a n = (A340509 (n + 1) : ℚ)

end A340509

/-! ## A340509.P3614114131521256547

`A351875(n+1)+A077068(n+1)`
-/

namespace A340509.P3614114131521256547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351875 (n + 1) + A077068 (n + 1)

end

end A340509.P3614114131521256547

namespace A340509

/-- `A351875(n+1)+A077068(n+1)` -/
def P3614114131521256547.Spec : Prop :=
  ∀ n, P3614114131521256547.a n = A340509 (n + 1)

end A340509

/-! ## A340509.P15559921581912810290

`A005382(n+1)+A089965(n+1)+1`
-/

namespace A340509.P15559921581912810290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1) + (A089965 (n + 1) + 1)

end

end A340509.P15559921581912810290

namespace A340509

/-- `A005382(n+1)+A089965(n+1)+1` -/
def P15559921581912810290.Spec : Prop :=
  ∀ n, P15559921581912810290.a n = A340509 (n + 1)

theorem P15559921581912810290.correct : P15559921581912810290.Spec := by
  intro n
  simp only [A340509, Nat.add_sub_cancel, A340509.P15559921581912810290.a, A340509.P8307359629526885014.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A089965, A089965.P14211704364200362511.a, A005383, A005383.P14491179252099632441.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P8971640768606976312.f1, A027697.P8971640768606976312.f2, A027697.P8971640768606976312.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027705, A027705.P11345454911343154343.a, A027707, A027707.P15810114307957499977.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340509

/-! ## A340509.P3783009432277480512

`A005383(n+1)+A351875(n+1)+1`
-/

namespace A340509.P3783009432277480512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005383 (n + 1) + (A351875 (n + 1) + 1)

end

end A340509.P3783009432277480512

namespace A340509

/-- `A005383(n+1)+A351875(n+1)+1` -/
def P3783009432277480512.Spec : Prop :=
  ∀ n, P3783009432277480512.a n = A340509 (n + 1)

theorem P3783009432277480512.correct : P3783009432277480512.Spec := by
  intro n
  simp only [A340509, Nat.add_sub_cancel, A340509.P3783009432277480512.a, A340509.P8307359629526885014.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A005383, A005383.P14491179252099632441.a, A351875, A351875.P8085341493502060080.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P8971640768606976312.f1, A027697.P8971640768606976312.f2, A027697.P8971640768606976312.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027705, A027705.P11345454911343154343.a, A027707, A027707.P15810114307957499977.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340509

/-! ## A340509.P12565341496329416112

`A005382(n+1)+A077068(n+1)-1`
-/

namespace A340509.P12565341496329416112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1) + (A077068 (n + 1) - 1)

end

end A340509.P12565341496329416112

namespace A340509

/-- `A005382(n+1)+A077068(n+1)-1` -/
def P12565341496329416112.Spec : Prop :=
  ∀ n, P12565341496329416112.a n = A340509 (n + 1)

end A340509

/-! ## A340509.P16956724156713375805

`A005383(n+1)+A077068(n+1)/2`
-/

namespace A340509.P16956724156713375805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005383 (n + 1) : ℚ) + (A077068 (n + 1) : ℚ) / 2

end

end A340509.P16956724156713375805

namespace A340509

/-- `A005383(n+1)+A077068(n+1)/2` -/
def P16956724156713375805.Spec : Prop :=
  ∀ n, P16956724156713375805.a n = (A340509 (n + 1) : ℚ)

end A340509

/-! ## A340509.P2115073867893599581

`A005382(n+1)+A351875(n+1)+A005382(n+1)`
-/

namespace A340509.P2115073867893599581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005382 (n + 1) + (A351875 (n + 1) + A005382 (n + 1))

end

end A340509.P2115073867893599581

namespace A340509

/-- `A005382(n+1)+A351875(n+1)+A005382(n+1)` -/
def P2115073867893599581.Spec : Prop :=
  ∀ n, P2115073867893599581.a n = A340509 (n + 1)

theorem P2115073867893599581.correct : P2115073867893599581.Spec := by
  intro n
  simp only [A340509, Nat.add_sub_cancel, A340509.P2115073867893599581.a, A340509.P8307359629526885014.a, A005382, A005382.P6052769528681184091.f1, A005382.P6052769528681184091.f2, A005382.P6052769528681184091.a, A351875, A351875.P8085341493502060080.a, A232667, A232667.P15325416728092359477.f1, A232667.P15325416728092359477.f2, A232667.P15325416728092359477.a, A234999, A234999.P3604876205550161988.f1, A234999.P3604876205550161988.a, A027697, A027697.P8971640768606976312.f1, A027697.P8971640768606976312.f2, A027697.P8971640768606976312.a, A027699, A027699.P13565929154440483330.f1, A027699.P13565929154440483330.a, A068080, A068080.P15022809947655922069.f1, A068080.P15022809947655922069.f2, A068080.P15022809947655922069.a, A000010, A000010.P4673923239450215316.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A027705, A027705.P11345454911343154343.a, A027707, A027707.P15810114307957499977.a, A093688, A093688.P16553081961736122512.f1, A093688.P16553081961736122512.f2, A093688.P16553081961736122512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A340509

/-! ## A340509.P13201739655578134601

`A005382(n+1)+A129521(n+1)/A005382(n+1)`
-/

namespace A340509.P13201739655578134601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005382 (n + 1) : ℚ) + (A129521 (n + 1) : ℚ) / (A005382 (n + 1) : ℚ)

end

end A340509.P13201739655578134601

namespace A340509

/-- `A005382(n+1)+A129521(n+1)/A005382(n+1)` -/
def P13201739655578134601.Spec : Prop :=
  ∀ n, P13201739655578134601.a n = (A340509 (n + 1) : ℚ)

end A340509

/-! ## A340509.P9014282660218206282

`A005383(n+1)+A129521(n+1)/A005383(n+1)`
-/

namespace A340509.P9014282660218206282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005383 (n + 1) : ℚ) + (A129521 (n + 1) : ℚ) / (A005383 (n + 1) : ℚ)

end

end A340509.P9014282660218206282

namespace A340509

/-- `A005383(n+1)+A129521(n+1)/A005383(n+1)` -/
def P9014282660218206282.Spec : Prop :=
  ∀ n, P9014282660218206282.a n = (A340509 (n + 1) : ℚ)

end A340509

/-! ## A340509.P7556259170136032321

`p?[A057920(n+1)]+A077068(n+1)/2`
-/

namespace A340509.P7556259170136032321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057920 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) + (A077068 (n + 1) : ℚ) / 2

end

end A340509.P7556259170136032321

namespace A340509

/-- `p?[A057920(n+1)]+A077068(n+1)/2` -/
def P7556259170136032321.Spec : Prop :=
  ∀ n, P7556259170136032321.a n = (A340509 (n + 1) : ℚ)

end A340509

/-! ## A340509.P1775194006778479307

`p?[A348659(n+1)]+A077068(n+1)/2`
-/

namespace A340509.P1775194006778479307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348659 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) + (A077068 (n + 1) : ℚ) / 2

end

end A340509.P1775194006778479307

namespace A340509

/-- `p?[A348659(n+1)]+A077068(n+1)/2` -/
def P1775194006778479307.Spec : Prop :=
  ∀ n, P1775194006778479307.a n = (A340509 (n + 1) : ℚ)

end A340509

/-! ## A340509.P8626730951324823821

`p?[A352908(n+1)]+A077068(n+1)/2`
-/

namespace A340509.P8626730951324823821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352908 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) + (A077068 (n + 1) : ℚ) / 2

end

end A340509.P8626730951324823821

namespace A340509

/-- `p?[A352908(n+1)]+A077068(n+1)/2` -/
def P8626730951324823821.Spec : Prop :=
  ∀ n, P8626730951324823821.a n = (A340509 (n + 1) : ℚ)

end A340509

/-! ## A340509.P2241891553544272341

`3*p?[A068080(n+1)]-1`
-/

namespace A340509.P2241891553544272341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068080 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A340509.P2241891553544272341

namespace A340509

/-- `3*p?[A068080(n+1)]-1` -/
def P2241891553544272341.Spec : Prop :=
  ∀ n, P2241891553544272341.a n = A340509 (n + 1)

end A340509

/-! ## A340509.P8761644845545408461

`3*A000040(A137288(n+1))-1`
-/

namespace A340509.P8761644845545408461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A000040 (A137288 (n + 1)).toNat - 1

end

end A340509.P8761644845545408461

namespace A340509

/-- `3*A000040(A137288(n+1))-1` -/
def P8761644845545408461.Spec : Prop :=
  ∀ n, P8761644845545408461.a n = A340509 (n + 1)

end A340509

/-! ## A340509.P2407257234788930297

`record[A023585(n+1)+A000040(n+1)]`
-/

namespace A340509.P2407257234788930297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023585 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340509.P2407257234788930297

namespace A340509

/-- `record[A023585(n+1)+A000040(n+1)]` -/
def P2407257234788930297.Spec : Prop :=
  ∀ n, P2407257234788930297.a n = A340509 (n + 1)

end A340509

/-! ## A340509.P9496062495626711475

`A023583(A137288(n+1))+A005382(n+1)`
-/

namespace A340509.P9496062495626711475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023583 (A137288 (n + 1)).toNat + A005382 (n + 1)

end

end A340509.P9496062495626711475

namespace A340509

/-- `A023583(A137288(n+1))+A005382(n+1)` -/
def P9496062495626711475.Spec : Prop :=
  ∀ n, P9496062495626711475.a n = A340509 (n + 1)

end A340509

/-!
# A340510: A permutation of the positive integers with a divisibility property (see Comments for precise definition).

The programs for A340510, the canonical program `A340510.P3490770188415237206` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340510 has offset 1).

The definition of A340510 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340510.P3490770188415237206

`Δ[(n+1)*floor(cot(ϕ/(n+1)))]`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A340510

/-- `Δ[(n+1)*floor(cot(ϕ/(n+1)))]` -/
def P3490770188415237206.Spec : Prop :=
  ∀ n, P3490770188415237206.a n = A340510 (n + 1)

theorem P3490770188415237206.correct : P3490770188415237206.Spec := by
  intro n
  simp only [A340510, Nat.add_sub_cancel]

end A340510

/-! ## A340510.P13500897523235337159

`A028310(Δ[(n+1)*A005379(n)])`
-/

namespace A340510.P13500897523235337159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005379 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A340510.P13500897523235337159

namespace A340510

/-- `A028310(Δ[(n+1)*A005379(n)])` -/
def P13500897523235337159.Spec : Prop :=
  ∀ n, P13500897523235337159.a n = A340510 (n + 1)

end A340510

/-! ## A340510.P17870940064853176989

`A065033(Δ[A005379(n)*A005408(n)])`
-/

namespace A340510.P17870940064853176989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n * A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A340510.P17870940064853176989

namespace A340510

/-- `A065033(Δ[A005379(n)*A005408(n)])` -/
def P17870940064853176989.Spec : Prop :=
  ∀ n, P17870940064853176989.a n = A340510 (n + 1)

end A340510

/-! ## A340510.P18424080024126974935

`A065033(Δ[A005379(n)*A223134(n)])`
-/

namespace A340510.P18424080024126974935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n * A223134 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A340510.P18424080024126974935

namespace A340510

/-- `A065033(Δ[A005379(n)*A223134(n)])` -/
def P18424080024126974935.Spec : Prop :=
  ∀ n, P18424080024126974935.a n = A340510 (n + 1)

end A340510

/-! ## A340510.P9488368078618126815

`A065033(Δ[A005379(n)*A103517(n)])`
-/

namespace A340510.P9488368078618126815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n * A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A340510.P9488368078618126815

namespace A340510

/-- `A065033(Δ[A005379(n)*A103517(n)])` -/
def P9488368078618126815.Spec : Prop :=
  ∀ n, P9488368078618126815.a n = A340510 (n + 1)

end A340510

/-! ## A340510.P3303465447709049778

`A065033(Δ[A005379(n)*A317440(n+1)])`
-/

namespace A340510.P3303465447709049778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005379 n * A317440 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (f1 (n + 1) - f1 n).toNat

end

end A340510.P3303465447709049778

namespace A340510

/-- `A065033(Δ[A005379(n)*A317440(n+1)])` -/
def P3303465447709049778.Spec : Prop :=
  ∀ n, P3303465447709049778.a n = A340510 (n + 1)

end A340510

/-!
# A340511: Numbers k such that there exists a group of order k which has no subgroup of order d, for some divisor d of k.

The programs for A340511, there is no canonical definition to state claims against.
-/

/-! ## A340511.P206569633361062690

`A066085(comp[∑[A183032(n)]])`
-/

namespace A340511.P206569633361062690
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183032 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066085 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A340511.P206569633361062690

/-! ## A340511.P10612429917214875601

`A066085(comp[Δ[A065972(n+1)]])`
-/

namespace A340511.P10612429917214875601
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065972 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066085 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A340511.P10612429917214875601

/-! ## A340511.P11113909630727650618

`∩[A066085(n+1), A184336(n+1)]`
-/

namespace A340511.P11113909630727650618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184336 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340511.P11113909630727650618

/-! ## A340511.P1897137701280256563

`A066085(comp[(n+2)*A034508(n+2)])`
-/

namespace A340511.P1897137701280256563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * A034508 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066085 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A340511.P1897137701280256563

/-! ## A340511.P11938260647124116075

`A066085(comp[A000726(n)-A298036(n)])`
-/

namespace A340511.P11938260647124116075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 n - A298036 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066085 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A340511.P11938260647124116075

/-! ## A340511.P8878185981597043115

`A066085(comp[3*9*n])`
-/

namespace A340511.P8878185981597043115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (9 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066085 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A340511.P8878185981597043115

/-! ## A340511.P2920451285635510773

`record[A066085(n+1)*A129569(A056191(n+1))]`
-/

namespace A340511.P2920451285635510773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066085 (n + 1) * A129569 (A056191 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340511.P2920451285635510773

/-!
# A340512: Order of a smallest group G with a conjugacy class of size n.

The programs for A340512, there is no canonical definition to state claims against.
-/

/-! ## A340512.P3745886828301091475

`A001175(A000204(n+1)+Δ[A070939(n)])`
-/

namespace A340512.P3745886828301091475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A000204 (n + 1) + (f1 (n + 1) - f1 n)).toNat

end

end A340512.P3745886828301091475

/-! ## A340512.P16578249208615707941

`A001175(A000204(n+1)+char[A104621(n)])`
-/

namespace A340512.P16578249208615707941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104621 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A000204 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A340512.P16578249208615707941

/-! ## A340512.P1363141833315213219

`A106291(A000204(n+1)+char[A104621(n)])`
-/

namespace A340512.P1363141833315213219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104621 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106291 (A000204 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A340512.P1363141833315213219

/-! ## A340512.P233556926153198337

`A001175(A000204(n+1)+and(n, A036987(n)))`
-/

namespace A340512.P233556926153198337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A000204 (n + 1) + Int.land (n : ℤ) (A036987 n)).toNat

end

end A340512.P233556926153198337

/-! ## A340512.P16824927754287326336

`A001175(A000204(n+1)+char[A001648(n+1)])`
-/

namespace A340512.P16824927754287326336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001648 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001175 (A000204 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A340512.P16824927754287326336

/-!
# A340513: a(n) is the number of groups of order A340512(n) with a conjugacy class of size exactly n.

The programs for A340513, there is no canonical definition to state claims against.
-/

/-! ## A340513.P15354990198181860065

`gcd(A008795(A145027(n+1)), A171508(n+1))`
-/

namespace A340513.P15354990198181860065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008795 (A145027 (n + 1)).toNat) (A171508 (n + 1))

end

end A340513.P15354990198181860065

/-! ## A340513.P7408054280280297489

`A324837(lcm(A340346((n+1)²), A002034(n+1)))`
-/

namespace A340513.P7408054280280297489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324837 (Int.lcm (A340346 ((n + 1) ^ 2)) (A002034 (n + 1)))

end

end A340513.P7408054280280297489

/-!
# A340514: a(n) is the minimal order of a group in which all groups of order n can be embedded.

The programs for A340514, there is no canonical definition to state claims against.
-/

/-! ## A340514.P8783446989042201723

`(n+1)*A385999(n+1)`
-/

namespace A340514.P8783446989042201723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A385999 (n + 1)

end

end A340514.P8783446989042201723

/-! ## A340514.P10689563420418151354

`A009195((n+1)*A068634(n+1))`
-/

namespace A340514.P10689563420418151354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009195 ((n + 1 : ℤ) * A068634 (n + 1)).toNat

end

end A340514.P10689563420418151354

/-! ## A340514.P11052775616546021759

`(n+1)²/A286516(A187829(n+1))`
-/

namespace A340514.P11052775616546021759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / (A286516 (A187829 (n + 1)).toNat : ℚ)

end

end A340514.P11052775616546021759

/-! ## A340514.P7521915485017753207

`A000290(A187829(n+1))/A286516(n+1)`
-/

namespace A340514.P7521915485017753207
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000290 (A187829 (n + 1)).toNat : ℚ) / (A286516 (n + 1) : ℚ)

end

end A340514.P7521915485017753207

/-! ## A340514.P11672664366090446563

`A187829(n+1)*A187829(A187829(n+1)/A286516(n+1))`
-/

namespace A340514.P11672664366090446563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1) * A187829 (SequenceMachineLib.roundAway ((A187829 (n + 1) : ℚ) / (A286516 (n + 1) : ℚ))).toNat

end

end A340514.P11672664366090446563

/-!
# A340515: a(n) = minimal order of a group in which all groups of order <= n can be embedded.

The programs for A340515, there is no canonical definition to state claims against.
-/

/-! ## A340515.P6804005445460025634

`lcm((n+1)*a(n-1), (n+1)²)/∏{p}[n+1, #]` with `a(0)=1`
-/

namespace A340515.P6804005445460025634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (SequenceMachineLib.roundAway ((n + 1 : ℚ) * a (n - 1))) ((n + 1) ^ 2 : ℤ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)

end

end A340515.P6804005445460025634

/-! ## A340515.P17491854684807117262

`∏[ceil((n+1)/∏{p}[n+1, (n+1)/#])*∏{p}[ceil(n/∏{p}[n+1, #]), #]]`
-/

namespace A340515.P17491854684807117262
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f4 n), p : ℕ) : ℚ)⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f2 n), (n + 1 : ℚ) / (p : ℚ))⌉ * ((∏ p ∈ Nat.primeFactors (f3 n).natAbs, p : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340515.P17491854684807117262

/-! ## A340515.P273078452953927238

`lcm(n+1, a(n-1))*A003557(n+1)` with `a(0)=1`
-/

namespace A340515.P273078452953927238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm (n + 1 : ℤ) (a (n - 1)) : ℤ) * A003557 (n + 1)

end

end A340515.P273078452953927238

/-! ## A340515.P10463694785232897320

`∏[gcd(∑{d}[n+1, (#-1)*#²], A034699(n+1))]`
-/

namespace A340515.P10463694785232897320
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - 1) * (d ^ 2 : ℤ)) (A034699 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340515.P10463694785232897320

/-! ## A340515.P16781030110631649407

`∏[∏{p}[n+1, #^val(n+1, #²)]]*A003418(n+1)`
-/

namespace A340515.P16781030110631649407
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A003418 (n + 1)

end

end A340515.P16781030110631649407

/-!
# A340516: Let p_i (i=1..m) denote the primes <= n, and let e_i be the maximum number such that p_i^e_i <= n; then a(n) = Product_{i=1..m} p_i^(2*e_i-1).

The programs for A340516, the canonical program `A340516.P3847034807228462942` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340516 has offset 1).

The definition of A340516 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 222 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340516.P3847034807228462942

`lcm((n+1)²/∏{p}[n+1, #], a(n-1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A340516

/-- `lcm((n+1)²/∏{p}[n+1, #], a(n-1))` -/
def P3847034807228462942.Spec : Prop :=
  ∀ n, (P3847034807228462942.a n : ℤ) = A340516 (n + 1)

theorem P3847034807228462942.correct : P3847034807228462942.Spec := by
  intro n
  simp only [A340516, Nat.add_sub_cancel]

end A340516

/-! ## A340516.P1384543665403365136

`lcm(a(n-1), A002618(n+1))` with `a(0)=1`
-/

namespace A340516.P1384543665403365136
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A002618 (n + 1))

end

end A340516.P1384543665403365136

namespace A340516

/-- `lcm(a(n-1), A002618(n+1))` -/
def P1384543665403365136.Spec : Prop :=
  ∀ n, (P1384543665403365136.a n : ℤ) = A340516 (n + 1)

end A340516

/-! ## A340516.P7236470636081770093

`∏[n%A014963(n+1)²+1]`
-/

namespace A340516.P7236470636081770093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A014963 (n + 1) ^ 2) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340516.P7236470636081770093

namespace A340516

/-- `∏[n%A014963(n+1)²+1]` -/
def P7236470636081770093.Spec : Prop :=
  ∀ n, P7236470636081770093.a n = A340516 (n + 1)

end A340516

/-! ## A340516.P12690814712864371347

`lcm(abs(a(n-1)), A000010((n+1)²))` with `a(0)=1`
-/

namespace A340516.P12690814712864371347
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm (a (n - 1) : ℤ) (A000010 ((n + 1) ^ 2))

end

end A340516.P12690814712864371347

namespace A340516

/-- `lcm(abs(a(n-1)), A000010((n+1)²))` -/
def P12690814712864371347.Spec : Prop :=
  ∀ n, (P12690814712864371347.a n : ℤ) = A340516 (n + 1)

end A340516

/-! ## A340516.P10664291119340836108

`A003418(n+1)*A045948(n+1)`
-/

namespace A340516.P10664291119340836108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (n + 1) * A045948 (n + 1)

end

end A340516.P10664291119340836108

namespace A340516

/-- `A003418(n+1)*A045948(n+1)` -/
def P10664291119340836108.Spec : Prop :=
  ∀ n, P10664291119340836108.a n = A340516 (n + 1)

end A340516

/-! ## A340516.P14656234771068395556

`∏[A014963(n+1)^(A008683(n+1)+2)]`
-/

namespace A340516.P14656234771068395556
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) : ℚ) ^ (A008683 (n + 1) + 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340516.P14656234771068395556

namespace A340516

/-- `∏[A014963(n+1)^(A008683(n+1)+2)]` -/
def P14656234771068395556.Spec : Prop :=
  ∀ n, P14656234771068395556.a n = (A340516 (n + 1) : ℚ)

end A340516

/-! ## A340516.P5737249073163970702

`∏[A014963(n+1)²/A014963(A139693(n))]`
-/

namespace A340516.P5737249073163970702
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) ^ 2 : ℚ) / (A014963 (A139693 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340516.P5737249073163970702

namespace A340516

/-- `∏[A014963(n+1)²/A014963(A139693(n))]` -/
def P5737249073163970702.Spec : Prop :=
  ∀ n, P5737249073163970702.a n = (A340516 (n + 1) : ℚ)

end A340516

/-! ## A340516.P8512056436220552016

`∏[A014963(A005730(n+1))*A014963(n+1)]`
-/

namespace A340516.P8512056436220552016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A005730 (n + 1)).toNat * A014963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340516.P8512056436220552016

namespace A340516

/-- `∏[A014963(A005730(n+1))*A014963(n+1)]` -/
def P8512056436220552016.Spec : Prop :=
  ∀ n, P8512056436220552016.a n = A340516 (n + 1)

end A340516

/-! ## A340516.P13015029929101199662

`∏[A014963(n+1)*A014963(A048671(n+1))]`
-/

namespace A340516.P13015029929101199662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A014963 (A048671 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340516.P13015029929101199662

namespace A340516

/-- `∏[A014963(n+1)*A014963(A048671(n+1))]` -/
def P13015029929101199662.Spec : Prop :=
  ∀ n, P13015029929101199662.a n = A340516 (n + 1)

end A340516

/-! ## A340516.P2848948243369896807

`∏[A014963(n+1)*A014963(A144907(n+1))]`
-/

namespace A340516.P2848948243369896807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A014963 (A144907 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340516.P2848948243369896807

namespace A340516

/-- `∏[A014963(n+1)*A014963(A144907(n+1))]` -/
def P2848948243369896807.Spec : Prop :=
  ∀ n, P2848948243369896807.a n = A340516 (n + 1)

end A340516

/-! ## A340516.P9739374856560388217

`∏[A014963(n+1)*A014963(A175069(n+1))]`
-/

namespace A340516.P9739374856560388217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A014963 (A175069 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340516.P9739374856560388217

namespace A340516

/-- `∏[A014963(n+1)*A014963(A175069(n+1))]` -/
def P9739374856560388217.Spec : Prop :=
  ∀ n, P9739374856560388217.a n = A340516 (n + 1)

end A340516

/-! ## A340516.P10069119159140105766

`∏[A014963(n+1)*A014963(A285328(n+1))]`
-/

namespace A340516.P10069119159140105766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A014963 (A285328 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340516.P10069119159140105766

namespace A340516

/-- `∏[A014963(n+1)*A014963(A285328(n+1))]` -/
def P10069119159140105766.Spec : Prop :=
  ∀ n, P10069119159140105766.a n = A340516 (n + 1)

end A340516

/-! ## A340516.P7470633437136287448

`∏[A014963(n+1)*A014963(A334085(n+1))]`
-/

namespace A340516.P7470633437136287448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A014963 (A334085 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340516.P7470633437136287448

namespace A340516

/-- `∏[A014963(n+1)*A014963(A334085(n+1))]` -/
def P7470633437136287448.Spec : Prop :=
  ∀ n, P7470633437136287448.a n = A340516 (n + 1)

end A340516

/-! ## A340516.P8793617224313599778

`∏[A014963(n+1)*A014963(A354090(n+1))]`
-/

namespace A340516.P8793617224313599778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1) * A014963 (A354090 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340516.P8793617224313599778

namespace A340516

/-- `∏[A014963(n+1)*A014963(A354090(n+1))]` -/
def P8793617224313599778.Spec : Prop :=
  ∀ n, P8793617224313599778.a n = A340516 (n + 1)

end A340516

/-! ## A340516.P8636445602322803232

`∏[A014963(n+1)²/A014963(A003968(n+1))]`
-/

namespace A340516.P8636445602322803232
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) ^ 2 : ℚ) / (A014963 (A003968 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340516.P8636445602322803232

namespace A340516

/-- `∏[A014963(n+1)²/A014963(A003968(n+1))]` -/
def P8636445602322803232.Spec : Prop :=
  ∀ n, P8636445602322803232.a n = (A340516 (n + 1) : ℚ)

end A340516

/-! ## A340516.P10644382794131461759

`∏[A014963(n+1)²/A014963(A051377(n+1))]`
-/

namespace A340516.P10644382794131461759
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) ^ 2 : ℚ) / (A014963 (A051377 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340516.P10644382794131461759

namespace A340516

/-- `∏[A014963(n+1)²/A014963(A051377(n+1))]` -/
def P10644382794131461759.Spec : Prop :=
  ∀ n, P10644382794131461759.a n = (A340516 (n + 1) : ℚ)

end A340516

/-! ## A340516.P18156490591273703459

`∏[A014963(n+1)²/A014963(A057723(n+1))]`
-/

namespace A340516.P18156490591273703459
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014963 (n + 1) ^ 2 : ℚ) / (A014963 (A057723 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340516.P18156490591273703459

namespace A340516

/-- `∏[A014963(n+1)²/A014963(A057723(n+1))]` -/
def P18156490591273703459.Spec : Prop :=
  ∀ n, P18156490591273703459.a n = (A340516 (n + 1) : ℚ)

end A340516

/-! ## A340516.P6972119237269544752

`∏[A089026(A007947(n+1))²/A089026(n+1)]`
-/

namespace A340516.P6972119237269544752
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A089026 (A007947 (n + 1)).toNat ^ 2 : ℚ) / (A089026 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A340516.P6972119237269544752

namespace A340516

/-- `∏[A089026(A007947(n+1))²/A089026(n+1)]` -/
def P6972119237269544752.Spec : Prop :=
  ∀ n, P6972119237269544752.a n = (A340516 (n + 1) : ℚ)

end A340516

/-! ## A340516.P492507372002936542

`A034386(n+1)*A045948(n+1)*A045948(n+1)`
-/

namespace A340516.P492507372002936542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034386 (n + 1) * A045948 (n + 1) * A045948 (n + 1)

end

end A340516.P492507372002936542

namespace A340516

/-- `A034386(n+1)*A045948(n+1)*A045948(n+1)` -/
def P492507372002936542.Spec : Prop :=
  ∀ n, P492507372002936542.a n = A340516 (n + 1)

end A340516

/-! ## A340516.P2938127356598916237

`A003418(n+1)/A034386(n+1)*A003418(n+1)`
-/

namespace A340516.P2938127356598916237
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) : ℚ) / (A034386 (n + 1) : ℚ) * (A003418 (n + 1) : ℚ)

end

end A340516.P2938127356598916237

namespace A340516

/-- `A003418(n+1)/A034386(n+1)*A003418(n+1)` -/
def P2938127356598916237.Spec : Prop :=
  ∀ n, P2938127356598916237.a n = (A340516 (n + 1) : ℚ)

end A340516

/-!
# A340517: Primitive orders of non-supersolvable groups.

The programs for A340517, there is no canonical definition to state claims against.
-/

/-! ## A340517.P13416278103875458398

`A230873(n+1)*A334968(A083174(n+1))`
-/

namespace A340517.P13416278103875458398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230873 (n + 1) * A334968 (A083174 (n + 1)).toNat

end

end A340517.P13416278103875458398

/-!
# A340518: Smallest order of a finite group with a commutator subgroup of order n.

The programs for A340518, there is no canonical definition to state claims against.
-/

/-! ## A340518.P16331633316305395213

`A340512(n+1)+A000038(A032265(n))`
-/

namespace A340518.P16331633316305395213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340512 (n + 1) + A000038 (A032265 n).toNat

end

end A340518.P16331633316305395213

/-! ## A340518.P10304008336017235980

`A340512(n+1)+A319998(A227946(n))`
-/

namespace A340518.P10304008336017235980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340512 (n + 1) + A319998 (A227946 n).toNat

end

end A340518.P10304008336017235980

/-! ## A340518.P11691772652092787715

`A340512(n+1)+A061397(A072850(n+1))`
-/

namespace A340518.P11691772652092787715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340512 (n + 1) + A061397 (A072850 (n + 1)).toNat

end

end A340518.P11691772652092787715

/-! ## A340518.P14021590075809223376

`A340512(n+1)+A061397(A222320(n+1))`
-/

namespace A340518.P14021590075809223376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340512 (n + 1) + A061397 (A222320 (n + 1)).toNat

end

end A340518.P14021590075809223376

/-!
# A340519: Smallest order of a non-abelian group with a center of order n.

The programs for A340519, the canonical program `A340519.P579858952355213942` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340519 has offset 1).

The definition of A340519 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340519.P579858952355213942

`(n+1)*C(4, gcd(2, n))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A340519

/-- `(n+1)*C(4, gcd(2, n))` -/
def P579858952355213942.Spec : Prop :=
  ∀ n, (P579858952355213942.a n : ℤ) = A340519 (n + 1)

theorem P579858952355213942.correct : P579858952355213942.Spec := by
  intro n
  simp only [A340519, Nat.add_sub_cancel]

end A340519

/-! ## A340519.P8378087895119171929

`∑[2*(Δ[lcm(2, n)]+1)]`
-/

namespace A340519.P8378087895119171929
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340519.P8378087895119171929

namespace A340519

/-- `∑[2*(Δ[lcm(2, n)]+1)]` -/
def P8378087895119171929.Spec : Prop :=
  ∀ n, P8378087895119171929.a n = A340519 (n + 1)

end A340519

/-! ## A340519.P2657612209767383442

`∑[or(2, Δ[lcm(4, 2*n)])]`
-/

namespace A340519.P2657612209767383442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340519.P2657612209767383442

namespace A340519

/-- `∑[or(2, Δ[lcm(4, 2*n)])]` -/
def P2657612209767383442.Spec : Prop :=
  ∀ n, P2657612209767383442.a n = A340519 (n + 1)

end A340519

/-! ## A340519.P9469470841465379265

`(5+(-1)^n)*(n+1)`
-/

namespace A340519.P9469470841465379265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 + (-1) ^ n) * (n + 1 : ℤ)

end

end A340519.P9469470841465379265

namespace A340519

/-- `(5+(-1)^n)*(n+1)` -/
def P9469470841465379265.Spec : Prop :=
  ∀ n, P9469470841465379265.a n = A340519 (n + 1)

end A340519

/-! ## A340519.P10923275254814473813

`∑{#}[2, 2*lcm(n+1, #)]`
-/

namespace A340519.P10923275254814473813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), 2 * Nat.lcm (n + 1) k

end

end A340519.P10923275254814473813

namespace A340519

/-- `∑{#}[2, 2*lcm(n+1, #)]` -/
def P10923275254814473813.Spec : Prop :=
  ∀ n, (P10923275254814473813.a n : ℤ) = A340519 (n + 1)

end A340519

/-! ## A340519.P2374973690879094685

`xor(2, a(n-2)+10)` with `a(0)=6, a(1)=8`
-/

namespace A340519.P2374973690879094685
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 8] fun n a =>
  Nat.xor 2 (a (n - 2) + 10)

end

end A340519.P2374973690879094685

namespace A340519

/-- `xor(2, a(n-2)+10)` -/
def P2374973690879094685.Spec : Prop :=
  ∀ n, (P2374973690879094685.a n : ℤ) = A340519 (n + 1)

end A340519

/-! ## A340519.P9328756632618819313

`12*(n+1)/(n%2+2)`
-/

namespace A340519.P9328756632618819313
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * (n + 1) : ℚ) / ((n % 2 + 2 : ℕ) : ℚ)

end

end A340519.P9328756632618819313

namespace A340519

/-- `12*(n+1)/(n%2+2)` -/
def P9328756632618819313.Spec : Prop :=
  ∀ n, P9328756632618819313.a n = (A340519 (n + 1) : ℚ)

end A340519

/-! ## A340519.P3755879808120626757

`∑[6*8*n]/a(n-1)` with `a(0)=6`
-/

namespace A340519.P3755879808120626757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (8 * n)

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / a (n - 1)

end

end A340519.P3755879808120626757

namespace A340519

/-- `∑[6*8*n]/a(n-1)` -/
def P3755879808120626757.Spec : Prop :=
  ∀ n, P3755879808120626757.a n = (A340519 (n + 1) : ℚ)

end A340519

/-! ## A340519.P3077779209072583778

`∑{d}[2-a(n-1), #*(n+1)]` with `a(0)=5`
-/

namespace A340519.P3077779209072583778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d * (n + 1)

end

end A340519.P3077779209072583778

namespace A340519

/-- `∑{d}[2-a(n-1), #*(n+1)]` -/
def P3077779209072583778.Spec : Prop :=
  ∀ n, (P3077779209072583778.a n : ℤ) = A340519 (n + 1)

end A340519

/-! ## A340519.P9578928308723317740

`a(n-2)/(1-2/(n+1))` with `a(0)=6, a(1)=8`
-/

namespace A340519.P9578928308723317740
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6, 8] fun n a =>
  a (n - 2) / (1 - 2 / (n + 1 : ℚ))

end

end A340519.P9578928308723317740

namespace A340519

/-- `a(n-2)/(1-2/(n+1))` -/
def P9578928308723317740.Spec : Prop :=
  ∀ n, P9578928308723317740.a n = (A340519 (n + 1) : ℚ)

end A340519

/-! ## A340519.P5266544850330950945

`abs((n+1)*(xor(1, n-3)-(n+2)))`
-/

namespace A340519.P5266544850330950945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * (Int.xor 1 ((n : ℤ) - 3) - (n + 2 : ℤ))|

end

end A340519.P5266544850330950945

namespace A340519

/-- `abs((n+1)*(xor(1, n-3)-(n+2)))` -/
def P5266544850330950945.Spec : Prop :=
  ∀ n, P5266544850330950945.a n = A340519 (n + 1)

end A340519

/-! ## A340519.P14572592209569377329

`∑[Δ[2*n*gcd(n+1, n-1)]+2]`
-/

namespace A340519.P14572592209569377329
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n * Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340519.P14572592209569377329

namespace A340519

/-- `∑[Δ[2*n*gcd(n+1, n-1)]+2]` -/
def P14572592209569377329.Spec : Prop :=
  ∀ n, P14572592209569377329.a n = A340519 (n + 1)

end A340519

/-! ## A340519.P5024565641526505521

`∑[A157142(n)+5]`
-/

namespace A340519.P5024565641526505521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157142 n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340519.P5024565641526505521

namespace A340519

/-- `∑[A157142(n)+5]` -/
def P5024565641526505521.Spec : Prop :=
  ∀ n, P5024565641526505521.a n = A340519 (n + 1)

end A340519

/-! ## A340519.P14790316152285288672

`A193356(n+1)+A091574(n)`
-/

namespace A340519.P14790316152285288672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193356 (n + 1) + A091574 n

end

end A340519.P14790316152285288672

namespace A340519

/-- `A193356(n+1)+A091574(n)` -/
def P14790316152285288672.Spec : Prop :=
  ∀ n, P14790316152285288672.a n = A340519 (n + 1)

end A340519

/-! ## A340519.P5906890421146728444

`A266073(n)+A168384(n+1)`
-/

namespace A340519.P5906890421146728444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266073 n + A168384 (n + 1)

end

end A340519.P5906890421146728444

namespace A340519

/-- `A266073(n)+A168384(n+1)` -/
def P5906890421146728444.Spec : Prop :=
  ∀ n, P5906890421146728444.a n = A340519 (n + 1)

end A340519

/-! ## A340519.P13353389359320563579

`A016825(A026741(n+1))+2*n`
-/

namespace A340519.P13353389359320563579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016825 (A026741 (n + 1)).toNat + (2 * n : ℤ)

end

end A340519.P13353389359320563579

namespace A340519

/-- `A016825(A026741(n+1))+2*n` -/
def P13353389359320563579.Spec : Prop :=
  ∀ n, P13353389359320563579.a n = A340519 (n + 1)

end A340519

/-! ## A340519.P17749349001793796138

`lcm(A074723(n+1), A106833(n+1))`
-/

namespace A340519.P17749349001793796138
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A074723 (n + 1)) (A106833 (n + 1))

end

end A340519.P17749349001793796138

namespace A340519

/-- `lcm(A074723(n+1), A106833(n+1))` -/
def P17749349001793796138.Spec : Prop :=
  ∀ n, (P17749349001793796138.a n : ℤ) = A340519 (n + 1)

end A340519

/-! ## A340519.P328806934329146412

`Δ[A273365(n)]`
-/

namespace A340519.P328806934329146412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340519.P328806934329146412

namespace A340519

/-- `Δ[A273365(n)]` -/
def P328806934329146412.Spec : Prop :=
  ∀ n, P328806934329146412.a n = A340519 (n + 1)

end A340519

/-! ## A340519.P13008298215646646698

`Δ[2*A036666(n+1)]`
-/

namespace A340519.P13008298215646646698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A036666 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340519.P13008298215646646698

namespace A340519

/-- `Δ[2*A036666(n+1)]` -/
def P13008298215646646698.Spec : Prop :=
  ∀ n, P13008298215646646698.a n = A340519 (n + 1)

end A340519

/-! ## A340519.P4928783852548971668

`Δ[2*A298950(n+1)]`
-/

namespace A340519.P4928783852548971668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A340519.P4928783852548971668

namespace A340519

/-- `Δ[2*A298950(n+1)]` -/
def P4928783852548971668.Spec : Prop :=
  ∀ n, P4928783852548971668.a n = A340519 (n + 1)

end A340519

/-!
# A340520: a(n) = 2*A006463(n) + 1.

The programs for A340520, the canonical program `A340520.P13168446404207346814` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340520 has offset 1).

The definition of A340520 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006463, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A340520.P13168446404207346814

`2*A006463(n+1)+1`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A340520

/-- `2*A006463(n+1)+1` -/
def P13168446404207346814.Spec : Prop :=
  ∀ n, P13168446404207346814.a n = A340520 (n + 1)

theorem P13168446404207346814.correct : P13168446404207346814.Spec := by
  intro n
  simp only [A340520, Nat.add_sub_cancel]

end A340520

/-! ## A340520.P2702124969968307939

`1+2*∑[row(n)]`
-/

namespace A340520.P2702124969968307939
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + 2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340520.P2702124969968307939

namespace A340520

/-- `1+2*∑[row(n)]` -/
def P2702124969968307939.Spec : Prop :=
  ∀ n, (P2702124969968307939.a n : ℤ) = A340520 (n + 1)

end A340520

/-! ## A340520.P16135775940327214070

`or(1, ∑[2*row(n)])`
-/

namespace A340520.P16135775940327214070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.triRow n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340520.P16135775940327214070

namespace A340520

/-- `or(1, ∑[2*row(n)])` -/
def P16135775940327214070.Spec : Prop :=
  ∀ n, (P16135775940327214070.a n : ℤ) = A340520 (n + 1)

end A340520

/-! ## A340520.P18055797877501576815

`xor(1, ∑[2*row(n)])`
-/

namespace A340520.P18055797877501576815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.triRow n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340520.P18055797877501576815

namespace A340520

/-- `xor(1, ∑[2*row(n)])` -/
def P18055797877501576815.Spec : Prop :=
  ∀ n, (P18055797877501576815.a n : ℤ) = A340520 (n + 1)

end A340520

/-! ## A340520.P6229921278663294297

`∑[∑[abs(T(n-1,k))]]-n` with `a(0)=1, a(1)=2`
-/

namespace A340520.P6229921278663294297
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  SequenceMachineLib.triUp f2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A340520.P6229921278663294297

namespace A340520

/-- `∑[∑[abs(T(n-1,k))]]-n` -/
def P6229921278663294297.Spec : Prop :=
  ∀ n, P6229921278663294297.a n = A340520 (n + 1)

end A340520

/-! ## A340520.P8907493559082023135

`∑[row(n)+row(n)]+1`
-/

namespace A340520.P8907493559082023135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triRow n + SequenceMachineLib.triRow n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A340520.P8907493559082023135

namespace A340520

/-- `∑[row(n)+row(n)]+1` -/
def P8907493559082023135.Spec : Prop :=
  ∀ n, (P8907493559082023135.a n : ℤ) = A340520 (n + 1)

end A340520

/-! ## A340520.P11275120059849848570

`a(n-1)+2*row(n)` with `a(0)=1`
-/

namespace A340520.P11275120059849848570
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + 2 * SequenceMachineLib.triRow n

end

end A340520.P11275120059849848570

namespace A340520

/-- `a(n-1)+2*row(n)` -/
def P11275120059849848570.Spec : Prop :=
  ∀ n, (P11275120059849848570.a n : ℤ) = A340520 (n + 1)

end A340520

/-! ## A340520.P13284014437787905547

`∑[∑[2*char[∑[n+1]]]]+1`
-/

namespace A340520.P13284014437787905547
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A340520.P13284014437787905547

namespace A340520

/-- `∑[∑[2*char[∑[n+1]]]]+1` -/
def P13284014437787905547.Spec : Prop :=
  ∀ n, (P13284014437787905547.a n : ℤ) = A340520 (n + 1)

end A340520

/-! ## A340520.P2978720927994748553

`∑[a(n-(a(n-1)/2+1))+2]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A340520.P2978720927994748553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (SequenceMachineLib.roundAway ((n : ℚ) - ((f1 (n - 1) : ℚ) / 2 + 1))).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340520.P2978720927994748553

namespace A340520

/-- `∑[a(n-(a(n-1)/2+1))+2]` -/
def P2978720927994748553.Spec : Prop :=
  ∀ n, (P2978720927994748553.a n : ℤ) = A340520 (n + 1)

end A340520

/-! ## A340520.P9334621644941423484

`∑[A004277(comp[C(n, 2)]-(n+2))]`
-/

namespace A340520.P9334621644941423484
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n - (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340520.P9334621644941423484

namespace A340520

/-- `∑[A004277(comp[C(n, 2)]-(n+2))]` -/
def P9334621644941423484.Spec : Prop :=
  ∀ n, P9334621644941423484.a n = A340520 (n + 1)

end A340520

/-! ## A340520.P5689795129797639322

`∑[A004277(comp[C(n, 2)-2]-n)]`
-/

namespace A340520.P5689795129797639322
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n - n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340520.P5689795129797639322

namespace A340520

/-- `∑[A004277(comp[C(n, 2)-2]-n)]` -/
def P5689795129797639322.Spec : Prop :=
  ∀ n, P5689795129797639322.a n = A340520 (n + 1)

end A340520

/-! ## A340520.P5556674168613461877

`∑[A004277(round(sqrt(2*n+1))-1)]`
-/

namespace A340520.P5556674168613461877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway (Real.sqrt (2 * n + 1 : ℝ)) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340520.P5556674168613461877

namespace A340520

/-- `∑[A004277(round(sqrt(2*n+1))-1)]` -/
def P5556674168613461877.Spec : Prop :=
  ∀ n, P5556674168613461877.a n = A340520 (n + 1)

end A340520

/-! ## A340520.P11810179910929104226

`∑[a(n-A002260(n+1))+2]` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A340520.P11810179910929104226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 ((n : ℤ) - A002260 (n + 1)).toNat + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340520.P11810179910929104226

namespace A340520

/-- `∑[a(n-A002260(n+1))+2]` -/
def P11810179910929104226.Spec : Prop :=
  ∀ n, (P11810179910929104226.a n : ℤ) = A340520 (n + 1)

end A340520

/-! ## A340520.P3587162117986662840

`abs(2*abs(n-∑[A002024(n+1)])-1)`
-/

namespace A340520.P3587162117986662840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * |(n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j| - 1)|

end

end A340520.P3587162117986662840

namespace A340520

/-- `abs(2*abs(n-∑[A002024(n+1)])-1)` -/
def P3587162117986662840.Spec : Prop :=
  ∀ n, P3587162117986662840.a n = A340520 (n + 1)

end A340520

/-! ## A340520.P2371955180393062716

`∑[A004275(∑[A010054(n)])]`
-/

namespace A340520.P2371955180393062716
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340520.P2371955180393062716

namespace A340520

/-- `∑[A004275(∑[A010054(n)])]` -/
def P2371955180393062716.Spec : Prop :=
  ∀ n, P2371955180393062716.a n = A340520 (n + 1)

end A340520

/-! ## A340520.P12406550880192930269

`∑[A004275(A002024(n+1))]`
-/

namespace A340520.P12406550880192930269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340520.P12406550880192930269

namespace A340520

/-- `∑[A004275(A002024(n+1))]` -/
def P12406550880192930269.Spec : Prop :=
  ∀ n, P12406550880192930269.a n = A340520 (n + 1)

end A340520

/-! ## A340520.P1258301542200318744

`∑[A028310(2*A003056(n))]`
-/

namespace A340520.P1258301542200318744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340520.P1258301542200318744

namespace A340520

/-- `∑[A028310(2*A003056(n))]` -/
def P1258301542200318744.Spec : Prop :=
  ∀ n, P1258301542200318744.a n = A340520 (n + 1)

end A340520

/-! ## A340520.P2482963252324106017

`∑[A003056(n)+A003056(A028310(n))]`
-/

namespace A340520.P2482963252324106017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A003056 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340520.P2482963252324106017

namespace A340520

/-- `∑[A003056(n)+A003056(A028310(n))]` -/
def P2482963252324106017.Spec : Prop :=
  ∀ n, P2482963252324106017.a n = A340520 (n + 1)

end A340520

/-! ## A340520.P17188728326930954875

`∑[A003056(n)+A003056(A000007(n)+n)]`
-/

namespace A340520.P17188728326930954875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n + A003056 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340520.P17188728326930954875

namespace A340520

/-- `∑[A003056(n)+A003056(A000007(n)+n)]` -/
def P17188728326930954875.Spec : Prop :=
  ∀ n, P17188728326930954875.a n = A340520 (n + 1)

end A340520

/-! ## A340520.P6632165854612760413

`∑[A028310(lt[0, A051775(n)]-(n+4))]`
-/

namespace A340520.P6632165854612760413
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051775 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n - (n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340520.P6632165854612760413

namespace A340520

/-- `∑[A028310(lt[0, A051775(n)]-(n+4))]` -/
def P6632165854612760413.Spec : Prop :=
  ∀ n, P6632165854612760413.a n = A340520 (n + 1)

end A340520

/-!
# A340521: List of possible orders of automorphism groups of finite groups.

The programs for A340521, there is no canonical definition to state claims against.
-/

/-! ## A340521.P14744007980672435547

`record[A351168(n+1)]`
-/

namespace A340521.P14744007980672435547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351168 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340521.P14744007980672435547

/-! ## A340521.P3560873257059773590

`record[A171462(n+2)]`
-/

namespace A340521.P3560873257059773590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171462 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340521.P3560873257059773590

/-! ## A340521.P16389800823423729131

`A002202(comp[31*n])`
-/

namespace A340521.P16389800823423729131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002202 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A340521.P16389800823423729131

/-! ## A340521.P11102374996089472327

`A002202(n+1)%61`
-/

namespace A340521.P11102374996089472327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002202 (n + 1)) 61

end

end A340521.P11102374996089472327

/-! ## A340521.P5731941936573530512

`A002174(n+1)%64`
-/

namespace A340521.P5731941936573530512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002174 (n + 1)) 64

end

end A340521.P5731941936573530512

/-!
# A340522: Weight multiplicities for the trivial representation of the Lie algebra E_8.

The programs for A340522, there is no canonical definition to state claims against.
-/

/-! ## A340522.P5545709123865207973

`A001177(A086594(n)-A000272(n))`
-/

namespace A340522.P5545709123865207973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001177 (A086594 n - A000272 n).toNat

end

end A340522.P5545709123865207973

/-!
# A340523: Weight multiplicities for 248-dimensional irreducible representation of the Lie algebra E_8.

The programs for A340523, there is no canonical definition to state claims against.
-/

/-! ## A340523.P1984489384096877654

`A143615(A132065(2*(n+1))-1)`
-/

namespace A340523.P1984489384096877654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143615 (A132065 (2 * (n + 1)) - 1).toNat

end

end A340523.P1984489384096877654

/-!
# A340524: Triangle read by rows: T(n,k) = A000005(n-k+1)*A002865(k-1), 1 <= k <= n.

The programs for A340524, there is no canonical definition to state claims against.
-/

/-! ## A340524.P13275500523998432224

`A000005(row(n)-col(n)+1)*A002865(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340524.P13275500523998432224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A002865 (SequenceMachineLib.triCol n)

end

end A340524.P13275500523998432224

/-! ## A340524.P10576725683344115323

`A000005(row(n)+1-(col(n)+1)+1)*A002865(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340524.P10576725683344115323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1).toNat * A002865 (SequenceMachineLib.triCol n)

end

end A340524.P10576725683344115323

/-! ## A340524.P1468180742059270722

`A133734(n)*A272171(n+1)`
-/

namespace A340524.P1468180742059270722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133734 n * A272171 (n + 1)

end

end A340524.P1468180742059270722

/-! ## A340524.P2236769434274621553

`A000005(A004736(n+1))*A133734(n)`
-/

namespace A340524.P2236769434274621553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004736 (n + 1)).toNat * A133734 n

end

end A340524.P2236769434274621553

/-! ## A340524.P3819812922143072260

`A002865(A002262(n))*A272171(n+1)`
-/

namespace A340524.P3819812922143072260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A002262 n).toNat * A272171 (n + 1)

end

end A340524.P3819812922143072260

/-! ## A340524.P1373034892065548984

`A050370(A059268(n))*A272171(n+1)`
-/

namespace A340524.P1373034892065548984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A059268 n).toNat * A272171 (n + 1)

end

end A340524.P1373034892065548984

/-! ## A340524.P7973477297263272279

`A060244(A112367(n))*A272171(n+1)`
-/

namespace A340524.P7973477297263272279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060244 (A112367 n).toNat * A272171 (n + 1)

end

end A340524.P7973477297263272279

/-! ## A340524.P10572947920898004510

`A085811(A002260(n+1)+2)*A272171(n+1)`
-/

namespace A340524.P10572947920898004510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (A002260 (n + 1) + 2).toNat * A272171 (n + 1)

end

end A340524.P10572947920898004510

/-! ## A340524.P12868629262037613917

`A000005(A004736(n+1))*A002865(A002262(n))`
-/

namespace A340524.P12868629262037613917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004736 (n + 1)).toNat * A002865 (A002262 n).toNat

end

end A340524.P12868629262037613917

/-! ## A340524.P3664511350075788174

`A000005(A004736(n+1))*A060244(A112367(n))`
-/

namespace A340524.P3664511350075788174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A004736 (n + 1)).toNat * A060244 (A112367 n).toNat

end

end A340524.P3664511350075788174

/-!
# A340525: Triangle read by rows: T(n,k) = A006218(n-k+1)*A002865(k-1), 1 <= k <= n.

The programs for A340525, there is no canonical definition to state claims against.
-/

/-! ## A340525.P8185359819845215753

`A006218(row(n)-col(n)+1)*A002865(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340525.P8185359819845215753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A002865 (SequenceMachineLib.triCol n)

end

end A340525.P8185359819845215753

/-! ## A340525.P8935026017764339122

`A006218(row(n)+1-(col(n)+1)+1)*A002865(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340525.P8935026017764339122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1).toNat * A002865 (SequenceMachineLib.triCol n)

end

end A340525.P8935026017764339122

/-! ## A340525.P8539591841271120069

`A245095(∑[char[∑[n]]]²-n)`
-/

namespace A340525.P8539591841271120069
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245095 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A340525.P8539591841271120069

/-! ## A340525.P10393496975766348569

`A245095(A038722(n+1))%60`
-/

namespace A340525.P10393496975766348569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245095 (A038722 (n + 1)).toNat) 60

end

end A340525.P10393496975766348569

/-! ## A340525.P1058349562139166852

`A245095(A061579(n)+1)%60`
-/

namespace A340525.P1058349562139166852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245095 (A061579 n + 1).toNat) 60

end

end A340525.P1058349562139166852

/-! ## A340525.P9940766569552552458

`gcd(A151878(n), A245095(A038722(n+1)))`
-/

namespace A340525.P9940766569552552458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A151878 n) (A245095 (A038722 (n + 1)).toNat)

end

end A340525.P9940766569552552458

/-! ## A340525.P3328626718522258637

`lcm(A158388(n), A245095(A038722(n+1)))`
-/

namespace A340525.P3328626718522258637
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A158388 n) (A245095 (A038722 (n + 1)).toNat)

end

end A340525.P3328626718522258637

/-! ## A340525.P15725575246508426244

`A007318(C(2, n))*A245095(A038722(n+1))`
-/

namespace A340525.P15725575246508426244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A245095 (A038722 (n + 1)).toNat

end

end A340525.P15725575246508426244

/-! ## A340525.P17199148395132616989

`A245095(A038722(n+1))+A008683(4*(n+1))`
-/

namespace A340525.P17199148395132616989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245095 (A038722 (n + 1)).toNat + A008683 (4 * (n + 1))

end

end A340525.P17199148395132616989

/-! ## A340525.P11271694491953970857

`A245095(A038722(n+1))^and(1, A000040(n+1))`
-/

namespace A340525.P11271694491953970857
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245095 (A038722 (n + 1)).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A340525.P11271694491953970857

/-!
# A340526: Triangle read by rows: T(n,k) = A006218(n-k+1)*A000041(k-1), 1 <= k <= n.

The programs for A340526, there is no canonical definition to state claims against.
-/

/-! ## A340526.P5995814556342314167

`A006218(row(n)-col(n)+1)*A000041(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340526.P5995814556342314167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A000041 (SequenceMachineLib.triCol n)

end

end A340526.P5995814556342314167

/-! ## A340526.P11646483769056467166

`A006218(row(n)+1-(col(n)+1)+1)*A000041(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340526.P11646483769056467166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1).toNat * A000041 (SequenceMachineLib.triCol n)

end

end A340526.P11646483769056467166

/-! ## A340526.P6884111630738122458

`A221531(n+1)+T(n-1,k)` with `a(0)=1`
-/

namespace A340526.P6884111630738122458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A221531 (n + 1) + SequenceMachineLib.triUp a n

end

end A340526.P6884111630738122458

/-! ## A340526.P17791868677558796759

`A006218(A004736(1+n))*A140207(n)`
-/

namespace A340526.P17791868677558796759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A004736 (1 + n)).toNat * A140207 n

end

end A340526.P17791868677558796759

/-! ## A340526.P11584319614384982334

`A000041(A002262(n))*A006218(A004736(n+1))`
-/

namespace A340526.P11584319614384982334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002262 n).toNat * A006218 (A004736 (n + 1)).toNat

end

end A340526.P11584319614384982334

/-! ## A340526.P14637221748253890411

`A000041(A144328(n+1))*A006218(A004736(n+1))`
-/

namespace A340526.P14637221748253890411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A144328 (n + 1)).toNat * A006218 (A004736 (n + 1)).toNat

end

end A340526.P14637221748253890411

/-! ## A340526.P8060845206381126821

`A000041(n-A057944(n))*A006218(A004736(n+1))`
-/

namespace A340526.P8060845206381126821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 ((n : ℤ) - A057944 n).toNat * A006218 (A004736 (n + 1)).toNat

end

end A340526.P8060845206381126821

/-! ## A340526.P8636390451810737906

`A000041(A002260(n+1)-1)*A006218(A004736(n+1))`
-/

namespace A340526.P8636390451810737906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002260 (n + 1) - 1).toNat * A006218 (A004736 (n + 1)).toNat

end

end A340526.P8636390451810737906

/-!
# A340527: Triangle read by rows: T(n,k) = A024916(n-k+1)*A000041(k-1), 1 <= k <= n.

The programs for A340527, there is no canonical definition to state claims against.
-/

/-! ## A340527.P7848393456260256259

`A024916(row(n)-col(n)+1)*A000041(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340527.P7848393456260256259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A000041 (SequenceMachineLib.triCol n)

end

end A340527.P7848393456260256259

/-! ## A340527.P12851104030178007466

`A024916(row(n)+1-(col(n)+1)+1)*A000041(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340527.P12851104030178007466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1).toNat * A000041 (SequenceMachineLib.triCol n)

end

end A340527.P12851104030178007466

/-! ## A340527.P10673174199921514331

`A339106(n+1)+T(n-1,k)` with `a(0)=1`
-/

namespace A340527.P10673174199921514331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339106 (n + 1) + SequenceMachineLib.triUp a n

end

end A340527.P10673174199921514331

/-! ## A340527.P15916123982908428016

`A140207(n)*A350637(n+1)`
-/

namespace A340527.P15916123982908428016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n * A350637 (n + 1)

end

end A340527.P15916123982908428016

/-! ## A340527.P14700487697150480060

`A024916(A004736(n+1))*A140207(n)`
-/

namespace A340527.P14700487697150480060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A004736 (n + 1)).toNat * A140207 n

end

end A340527.P14700487697150480060

/-! ## A340527.P15560994477895912556

`A000041(A002262(n))*A350637(n+1)`
-/

namespace A340527.P15560994477895912556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002262 n).toNat * A350637 (n + 1)

end

end A340527.P15560994477895912556

/-! ## A340527.P4623060148839663192

`A000041(A025668(n+1))*A350637(n+1)`
-/

namespace A340527.P4623060148839663192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A025668 (n + 1)).toNat * A350637 (n + 1)

end

end A340527.P4623060148839663192

/-! ## A340527.P16825586866666245128

`A000041(A025691(n+1))*A350637(n+1)`
-/

namespace A340527.P16825586866666245128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A025691 (n + 1)).toNat * A350637 (n + 1)

end

end A340527.P16825586866666245128

/-! ## A340527.P13464672357089796428

`A000041(A002262(n))*A024916(A004736(n+1))`
-/

namespace A340527.P13464672357089796428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002262 n).toNat * A024916 (A004736 (n + 1)).toNat

end

end A340527.P13464672357089796428

/-!
# A340528: Radio number of the path graph P_n.

The programs for A340528, the canonical program `A340528.P14540775971781115799` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340528 has offset 1).

The definition of A340528 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340528.P14540775971781115799

`ogf((x+x^2-x^3+2x^4-2x^5+x^6)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A340528

/-- `ogf((x+x^2-x^3+2x^4-2x^5+x^6)/(1-2x+2x^3-x^4))` -/
def P14540775971781115799.Spec : Prop :=
  ∀ n, P14540775971781115799.a n = A340528 (n + 1)

theorem P14540775971781115799.correct : P14540775971781115799.Spec := by
  intro n
  simp only [A340528, Nat.add_sub_cancel]

end A340528

/-! ## A340528.P15694998071841222677

`∑[a(n-2)+2]` with `a(0)=0, a(1)=1, a(2)=2, a(3)=2, a(4)=5, a(5)=3`
-/

namespace A340528.P15694998071841222677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 2, 2, 5, 3] fun n f1 =>
  f1 (n - 2) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A340528.P15694998071841222677

namespace A340528

/-- `∑[a(n-2)+2]` -/
def P15694998071841222677.Spec : Prop :=
  ∀ n, (P15694998071841222677.a n : ℤ) = A340528 (n + 1)

end A340528

/-! ## A340528.P1745743159629328268

`∑[n]-A289207(A030451(n))`
-/

namespace A340528.P1745743159629328268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A289207 (A030451 n).toNat

end

end A340528.P1745743159629328268

namespace A340528

/-- `∑[n]-A289207(A030451(n))` -/
def P1745743159629328268.Spec : Prop :=
  ∀ n, P1745743159629328268.a n = A340528 (n + 1)

end A340528

/-! ## A340528.P7715637413790772477

`A333574(n+1)-and(1, A253218(n+1))`
-/

namespace A340528.P7715637413790772477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333574 (n + 1) - Int.land 1 (A253218 (n + 1))

end

end A340528.P7715637413790772477

namespace A340528

/-- `A333574(n+1)-and(1, A253218(n+1))` -/
def P7715637413790772477.Spec : Prop :=
  ∀ n, P7715637413790772477.a n = A340528 (n + 1)

end A340528

/-! ## A340528.P3269835499797722172

`A236453(n)-A028310(A267182(n))`
-/

namespace A340528.P3269835499797722172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n - A028310 (A267182 n).toNat

end

end A340528.P3269835499797722172

namespace A340528

/-- `A236453(n)-A028310(A267182(n))` -/
def P3269835499797722172.Spec : Prop :=
  ∀ n, P3269835499797722172.a n = A340528 (n + 1)

end A340528

/-! ## A340528.P15103564730149559747

`∑[n]+2-A233583(A052938(n))`
-/

namespace A340528.P15103564730149559747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) - A233583 (A052938 n).toNat

end

end A340528.P15103564730149559747

namespace A340528

/-- `∑[n]+2-A233583(A052938(n))` -/
def P15103564730149559747.Spec : Prop :=
  ∀ n, P15103564730149559747.a n = A340528 (n + 1)

end A340528

/-! ## A340528.P9357882021125226171

`∑[n]-log2(A076736(n+1))`
-/

namespace A340528.P9357882021125226171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) - Real.logb 2 (A076736 (n + 1) : ℝ)

end

end A340528.P9357882021125226171

namespace A340528

/-- `∑[n]-log2(A076736(n+1))` -/
def P9357882021125226171.Spec : Prop :=
  ∀ n, P9357882021125226171.a n = (A340528 (n + 1) : ℝ)

end A340528

/-! ## A340528.P11242074759211111095

`A000217(n)-A073188(Δ[A008763(n)])`
-/

namespace A340528.P11242074759211111095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008763 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n - A073188 (f1 (n + 1) - f1 n).toNat

end

end A340528.P11242074759211111095

namespace A340528

/-- `A000217(n)-A073188(Δ[A008763(n)])` -/
def P11242074759211111095.Spec : Prop :=
  ∀ n, P11242074759211111095.a n = A340528 (n + 1)

end A340528

/-! ## A340528.P9375787887323844564

`A158515(n)+A004275(A002620(n))`
-/

namespace A340528.P9375787887323844564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158515 n + A004275 (A002620 n).toNat

end

end A340528.P9375787887323844564

namespace A340528

/-- `A158515(n)+A004275(A002620(n))` -/
def P9375787887323844564.Spec : Prop :=
  ∀ n, P9375787887323844564.a n = A340528 (n + 1)

end A340528

/-! ## A340528.P14377052258824083521

`A016921(A002620(n))%A082562(n)`
-/

namespace A340528.P14377052258824083521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016921 (A002620 n).toNat) (A082562 n)

end

end A340528.P14377052258824083521

namespace A340528

/-- `A016921(A002620(n))%A082562(n)` -/
def P14377052258824083521.Spec : Prop :=
  ∀ n, P14377052258824083521.a n = A340528 (n + 1)

end A340528

/-! ## A340528.P8532044671278268785

`A000124(n)-A000196(A267942(n))`
-/

namespace A340528.P8532044671278268785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - A000196 (A267942 n).toNat

end

end A340528.P8532044671278268785

namespace A340528

/-- `A000124(n)-A000196(A267942(n))` -/
def P8532044671278268785.Spec : Prop :=
  ∀ n, P8532044671278268785.a n = A340528 (n + 1)

end A340528

/-! ## A340528.P5358823703427432874

`A083920(∑[A097062(n)])+n`
-/

namespace A340528.P5358823703427432874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097062 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + (n : ℤ)

end

end A340528.P5358823703427432874

namespace A340528

/-- `A083920(∑[A097062(n)])+n` -/
def P5358823703427432874.Spec : Prop :=
  ∀ n, P5358823703427432874.a n = A340528 (n + 1)

end A340528

/-! ## A340528.P9004712392525986037

`A014681(A116940(n)-A163985(n))`
-/

namespace A340528.P9004712392525986037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A116940 n - A163985 n).toNat

end

end A340528.P9004712392525986037

namespace A340528

/-- `A014681(A116940(n)-A163985(n))` -/
def P9004712392525986037.Spec : Prop :=
  ∀ n, P9004712392525986037.a n = A340528 (n + 1)

end A340528

/-! ## A340528.P2495495818327378139

`A016777(A007590(n))%A082562(n)`
-/

namespace A340528.P2495495818327378139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016777 (A007590 n).toNat) (A082562 n)

end

end A340528.P2495495818327378139

namespace A340528

/-- `A016777(A007590(n))%A082562(n)` -/
def P2495495818327378139.Spec : Prop :=
  ∀ n, P2495495818327378139.a n = A340528 (n + 1)

end A340528

/-! ## A340528.P17031592936227317744

`A083920(A052938(∑[A130773(n)]))`
-/

namespace A340528.P17031592936227317744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083920 (A052938 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A340528.P17031592936227317744

namespace A340528

/-- `A083920(A052938(∑[A130773(n)]))` -/
def P17031592936227317744.Spec : Prop :=
  ∀ n, P17031592936227317744.a n = A340528 (n + 1)

end A340528

/-!
# A340529: Irregular triangle read by rows T(n,k), (n >= 1, k >= 1), in which row n has length A000041(n-1) and every column k is A006218.

The programs for A340529, there is no canonical definition to state claims against.
-/

/-! ## A340529.P13297547395978371992

`A006218(A336811(n+1))`
-/

namespace A340529.P13297547395978371992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A336811 (n + 1)).toNat

end

end A340529.P13297547395978371992

/-! ## A340529.P14157425942022768070

`A056535(A359279(n+1))`
-/

namespace A340529.P14157425942022768070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056535 (A359279 (n + 1)).toNat

end

end A340529.P14157425942022768070

/-! ## A340529.P10792867400173555711

`A113215(A336811(n+1)²)`
-/

namespace A340529.P10792867400173555711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113215 (A336811 (n + 1) ^ 2).toNat

end

end A340529.P10792867400173555711

/-! ## A340529.P16797877570138367738

`A006218(val(A334437(n), 2)+1)`
-/

namespace A340529.P16797877570138367738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (SequenceMachineLib.valuation (A334437 n).toNat 2 + 1)

end

end A340529.P16797877570138367738

/-! ## A340529.P13059485151683930278

`A006218(val(2*A334437(n), 2))`
-/

namespace A340529.P13059485151683930278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (SequenceMachineLib.valuation (2 * A334437 n).toNat 2)

end

end A340529.P13059485151683930278

/-! ## A340529.P10439821347713687279

`A054519(A336811(n+1)+A264668(n))-1`
-/

namespace A340529.P10439821347713687279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 (A336811 (n + 1) + A264668 n).toNat - 1

end

end A340529.P10439821347713687279

/-!
# A340530: Irregular triangle read by rows T(n,k) in which row n has length is A000070(n-1) and every column k is A006218, (n >= 1, k >= 1).

The programs for A340530, there is no canonical definition to state claims against.
-/

/-! ## A340530.P10510626823533028296

`A006218(A176206(n+1))`
-/

namespace A340530.P10510626823533028296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 (A176206 (n + 1)).toNat

end

end A340530.P10510626823533028296

/-! ## A340530.P4924570071499727430

`A005004(A176206(n+1))`
-/

namespace A340530.P4924570071499727430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005004 (A176206 (n + 1)).toNat

end

end A340530.P4924570071499727430

/-! ## A340530.P16419260329330621219

`A003002(A176206(n+1)²)`
-/

namespace A340530.P16419260329330621219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A176206 (n + 1) ^ 2).toNat

end

end A340530.P16419260329330621219

/-! ## A340530.P1107262307985943632

`A003002(A176206(n+1)^2)`
-/

namespace A340530.P1107262307985943632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003002 (A176206 (n + 1) ^ 2).toNat

end

end A340530.P1107262307985943632

/-! ## A340530.P2052731526410440771

`A372780(A176206(n+1)%A265149(n+1))`
-/

namespace A340530.P2052731526410440771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372780 (Int.tmod (A176206 (n + 1)) (A265149 (n + 1))).toNat

end

end A340530.P2052731526410440771

/-!
# A340531: Irregular triangle read by rows T(n,k), (n >= 1, k >= 1), in which row n has length is A000070(n-1) and every column k is A024916, the sum of all divisors of all numbers <= n.

The programs for A340531, there is no canonical definition to state claims against.
-/

/-! ## A340531.P4275075007228451418

`A024916(A176206(n+1))`
-/

namespace A340531.P4275075007228451418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024916 (A176206 (n + 1)).toNat

end

end A340531.P4275075007228451418

/-! ## A340531.P14570070961849903664

`A160664(A176206(1+n))-1`
-/

namespace A340531.P14570070961849903664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 (A176206 (1 + n)).toNat - 1

end

end A340531.P14570070961849903664

/-! ## A340531.P1976355051669275489

`A280560(A111800(n+1))+A160664(A176206(n+1))+1`
-/

namespace A340531.P1976355051669275489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A111800 (n + 1)).toNat + (A160664 (A176206 (n + 1)).toNat + 1)

end

end A340531.P1976355051669275489

/-! ## A340531.P10768554173609399262

`A256533(A176206(n+1))/A230980(A340530(n+1)+1)`
-/

namespace A340531.P10768554173609399262
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A256533 (A176206 (n + 1)).toNat : ℚ) / (A230980 (A340530 (n + 1) + 1).toNat : ℚ)

end

end A340531.P10768554173609399262

/-!
# A340532: Number of domino tilings of a 16 X n rectangle.

The programs for A340532, there is no canonical definition to state claims against.
-/

/-! ## A340532.P231860086465481111

`A187596(eq[16, A002262(n)])`
-/

namespace A340532.P231860086465481111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340532.P231860086465481111

/-! ## A340532.P9097435745842811013

`A189006(eq[16, A002262(n)])`
-/

namespace A340532.P9097435745842811013
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340532.P9097435745842811013

/-! ## A340532.P7171742144032422463

`A189006(eq[17, A002260(n+1)])`
-/

namespace A340532.P7171742144032422463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340532.P7171742144032422463

/-! ## A340532.P6843576458014647043

`A187596(eq[16, A025581(n)])`
-/

namespace A340532.P6843576458014647043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340532.P6843576458014647043

/-! ## A340532.P12195350050635800041

`A189006(eq[16, A025581(n)])`
-/

namespace A340532.P12195350050635800041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A340532.P12195350050635800041

/-!
# A340533: Decimal expansion of log_2(4/Pi).

The programs for A340533, there is no canonical definition to state claims against.
-/

/-! ## A340533.P4599720097327777555

`9-A340543(n)`
-/

namespace A340533.P4599720097327777555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A340543 n

end

end A340533.P4599720097327777555

/-! ## A340533.P1590759729530021050

`9-A216582(n+1)`
-/

namespace A340533.P1590759729530021050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A216582 (n + 1 + 1)

end

end A340533.P1590759729530021050

/-!
# A340534: a(n) is the least product of n consecutive primes that is divisible by the sum of those primes, or 0 if there is no such product.

The programs for A340534, there is no canonical definition to state claims against.
-/

/-! ## A340534.P4845486084154223882

`A000035(A226994(n))*A227105(n+1)`
-/

namespace A340534.P4845486084154223882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A226994 n).toNat * A227105 (n + 1)

end

end A340534.P4845486084154223882

/-! ## A340534.P962718022599018913

`A000035(A227094(n))*A227105(n+1)`
-/

namespace A340534.P962718022599018913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A227094 n).toNat * A227105 (n + 1)

end

end A340534.P962718022599018913

/-! ## A340534.P8053683072457804737

`A227105(A183091(n+1))*A292143(n)`
-/

namespace A340534.P8053683072457804737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227105 (A183091 (n + 1)).toNat * A292143 n

end

end A340534.P8053683072457804737

/-!
# A340535: Number of domino tilings (or dimer coverings) of the 2n X n grid.

The programs for A340535, there is no canonical definition to state claims against.
-/

/-! ## A340535.P16475245517434122319

`A187596(C(2*n+n+1, 2)+n)`
-/

namespace A340535.P16475245517434122319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (Nat.choose (2 * n + n + 1) 2 + n)

end

end A340535.P16475245517434122319

/-! ## A340535.P16130811301185182067

`A187616(C(2*n+1, 2)+n)`
-/

namespace A340535.P16130811301185182067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187616 (Nat.choose (2 * n + 1) 2 + n)

end

end A340535.P16130811301185182067

/-! ## A340535.P6567596679389375504

`A187596(A062725(n))`
-/

namespace A340535.P6567596679389375504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A062725 n).toNat

end

end A340535.P6567596679389375504

/-! ## A340535.P15672910566593101446

`A187596(A062728(n))`
-/

namespace A340535.P15672910566593101446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187596 (A062728 n).toNat

end

end A340535.P15672910566593101446

/-! ## A340535.P2261824045725056866

`A189006(A027468(n)-n)`
-/

namespace A340535.P2261824045725056866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189006 (A027468 n - (n : ℤ)).toNat

end

end A340535.P2261824045725056866

/-!
# A340536: Digital root of 2*n^2.

The programs for A340536, the canonical program `A340536.P18156384035420534677` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340536 has offset 1).

The definition of A340536 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A340536.P18156384035420534677

`dr(2*(n+1)²)`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A340536

/-- `dr(2*(n+1)²)` -/
def P18156384035420534677.Spec : Prop :=
  ∀ n, (P18156384035420534677.a n : ℤ) = A340536 (n + 1)

theorem P18156384035420534677.correct : P18156384035420534677.Spec := by
  intro n
  simp only [A340536, Nat.add_sub_cancel]

end A340536

/-!
# A340538: Total of radio numbers of all n-node (connected) graphs.

The programs for A340538, there is no canonical definition to state claims against.
-/

/-! ## A340538.P4647964251425678571

`∑[A055034(A099240(n))]-1`
-/

namespace A340538.P4647964251425678571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055034 (A099240 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A340538.P4647964251425678571

/-! ## A340538.P2937242325696375856

`A175676(∏[A215461(3*n)+1])`
-/

namespace A340538.P2937242325696375856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215461 (3 * n) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175676 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A340538.P2937242325696375856

/-!
# A340540: Number of walks of length 4n in the first octant using steps (1,1,1), (-1,0,0), (0,-1,0), and (0,0,-1) that start and end at the origin.

The programs for A340540, there is no canonical definition to state claims against.
-/

/-! ## A340540.P8507051371737351634

`A340591(∑[n+3]+n+3)`
-/

namespace A340540.P8507051371737351634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340591 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A340540.P8507051371737351634

/-!
# A340541: Primes p such that the product of (p mod q) for primes q < p is a multiple of the sum of (p mod q) for primes q < p.

The programs for A340541, there is no canonical definition to state claims against.
-/

/-! ## A340541.P8616925354690849597

`filter[A045432(n+1), A089829(#)]`
-/

namespace A340541.P8616925354690849597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045432 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089829 (f1 j).toNat = 1) n)

end

end A340541.P8616925354690849597

/-! ## A340541.P4526446959262557439

`p?[or(A017017(n), A331838(n+2))]`
-/

namespace A340541.P4526446959262557439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A017017 n) (A331838 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A340541.P4526446959262557439

/-! ## A340541.P17920799044078834586

`∩[A045421(n+1), A190899(n+1)]`
-/

namespace A340541.P17920799044078834586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045421 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190899 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340541.P17920799044078834586

/-!
# A340542: Number of Fibonacci divisors of Fibonacci(n)^2 + 1.

The programs for A340542, there is no canonical definition to state claims against.
-/

/-! ## A340542.P14029357493378806547

`A339461(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=0, a(1)=2`
-/

namespace A340542.P14029357493378806547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339461 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A340542.P14029357493378806547

/-! ## A340542.P17943084135839898721

`A339461(A000045(n))`
-/

namespace A340542.P17943084135839898721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339461 (A000045 n).toNat

end

end A340542.P17943084135839898721

/-! ## A340542.P10053265553648062232

`A339461(abs(A236191(n)))`
-/

namespace A340542.P10053265553648062232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339461 |A236191 n|.toNat

end

end A340542.P10053265553648062232

/-! ## A340542.P7785402083172897720

`A339461(sqrt(A007598(n)))`
-/

namespace A340542.P7785402083172897720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339461 (SequenceMachineLib.roundAway (Real.sqrt (A007598 n : ℝ))).toNat

end

end A340542.P7785402083172897720

/-!
# A340543: Decimal expansion of log(Pi/2)/log(2).

The programs for A340543, there is no canonical definition to state claims against.
-/

/-! ## A340543.P13110623205622999466

`A216582(n+1)`
-/

namespace A340543.P13110623205622999466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216582 (n + 1 + 1)

end

end A340543.P13110623205622999466

/-! ## A340543.P8078437443054921160

`9-A340533(n)`
-/

namespace A340543.P8078437443054921160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A340533 n

end

end A340543.P8078437443054921160

/-!
# A340544: Numbers from A340131 that are not multiples of 3.

The programs for A340544, there is no canonical definition to state claims against.
-/

/-! ## A340544.P9484893224643171115

`∩[A340131(n+1), A016789(n)]`
-/

namespace A340544.P9484893224643171115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P9484893224643171115

/-! ## A340544.P13134672514185020511

`∩[A340131(n+1), A092296(n)]`
-/

namespace A340544.P13134672514185020511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092296 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P13134672514185020511

/-! ## A340544.P17417952695504562649

`∩[A180486(n+1), A340131(n+1)]`
-/

namespace A340544.P17417952695504562649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P17417952695504562649

/-! ## A340544.P14326284378140894165

`∩[A286693(n+1), A340131(n+1)]`
-/

namespace A340544.P14326284378140894165
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P14326284378140894165

/-! ## A340544.P10194633926585710818

`∩[A297251(n+1), A340131(n+1)]`
-/

namespace A340544.P10194633926585710818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P10194633926585710818

/-! ## A340544.P4322872721847938917

`∩[A138671(n), A340131(n+1)]`
-/

namespace A340544.P4322872721847938917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138671 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P4322872721847938917

/-! ## A340544.P4966519588087980821

`∩[A047261(n+1), A340131(n+1)]`
-/

namespace A340544.P4966519588087980821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P4966519588087980821

/-! ## A340544.P18405015396417893773

`∩[A047268(n+1), A340131(n+1)]`
-/

namespace A340544.P18405015396417893773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047268 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P18405015396417893773

/-! ## A340544.P15157205425121953870

`∩[A026138(n+1), A340131(n+1)]`
-/

namespace A340544.P15157205425121953870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P15157205425121953870

/-! ## A340544.P7367913625956219418

`filter[A340131(n+1), A116178(#)]`
-/

namespace A340544.P7367913625956219418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A116178 (f1 j).toNat = 1) n)

end

end A340544.P7367913625956219418

/-! ## A340544.P6969148791692453648

`∩[A080727(n), A340131(n+1)]`
-/

namespace A340544.P6969148791692453648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080727 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P6969148791692453648

/-! ## A340544.P1735327293679316783

`∩[A001651(n+1), A340131(n+1)]`
-/

namespace A340544.P1735327293679316783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P1735327293679316783

/-! ## A340544.P14229032226492411767

`∩[A028841(n+1), A340131(n+1)]`
-/

namespace A340544.P14229032226492411767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028841 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P14229032226492411767

/-! ## A340544.P1800053088530147386

`∩[A134191(n+1), A340131(n+1)]`
-/

namespace A340544.P1800053088530147386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134191 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P1800053088530147386

/-! ## A340544.P16599197010836135848

`∩[A286803(n+1), A340131(n+1)]`
-/

namespace A340544.P16599197010836135848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286803 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P16599197010836135848

/-! ## A340544.P1294099882892246546

`∩[A340131(n+1), A375242(n+1)]`
-/

namespace A340544.P1294099882892246546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340544.P1294099882892246546

/-! ## A340544.P16601876081173579694

`record[A186101(A340131(n+2))]`
-/

namespace A340544.P16601876081173579694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186101 (A340131 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340544.P16601876081173579694

/-! ## A340544.P6646685697674653192

`filter[A340131(n+1), A011655(#)]`
-/

namespace A340544.P6646685697674653192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011655 (f1 j).toNat = 1) n)

end

end A340544.P6646685697674653192

/-! ## A340544.P7275661457692690116

`filter[A340131(n+1), A214090(#)]`
-/

namespace A340544.P7275661457692690116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A214090 (f1 j).toNat = 1) n)

end

end A340544.P7275661457692690116

/-! ## A340544.P9063549315757444474

`filter[A340131(n+2), A189673(#)]`
-/

namespace A340544.P9063549315757444474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340131 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A189673 (f1 j).toNat = 1) n)

end

end A340544.P9063549315757444474

/-!
# A340545: Number of main classes of centrally symmetric diagonal Latin squares of order n.

The programs for A340545, there is no canonical definition to state claims against.
-/

/-! ## A340545.P2626267814534626856

`A089052(A338913(3*n+5)+A073157(n))`
-/

namespace A340545.P2626267814534626856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089052 (A338913 (3 * n + 5) + A073157 n).toNat

end

end A340545.P2626267814534626856

/-!
# A340547: Square array, read by ascending antidiagonals, where row n gives all solutions n > 0 to A000120(n+1) = A000120((n+1)*k), A000120 is the Hamming weight.

The programs for A340547, there is no canonical definition to state claims against.
-/

/-! ## A340547.P14247581277966647214

`A253572(n+1)+A112382(A273712(n))-1`
-/

namespace A340547.P14247581277966647214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253572 (n + 1) + (A112382 (A273712 n).toNat - 1)

end

end A340547.P14247581277966647214

/-! ## A340547.P9066641119358476740

`A331282(A145747(n+3))+A253572(n+1)`
-/

namespace A340547.P9066641119358476740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331282 (A145747 (n + 3)).toNat + A253572 (n + 1)

end

end A340547.P9066641119358476740

/-! ## A340547.P3967678091684078593

`A001222(A329049(n)%A329044(3*(n+1)))`
-/

namespace A340547.P3967678091684078593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Int.tmod (A329049 n) (A329044 (3 * (n + 1)))).toNat

end

end A340547.P3967678091684078593

/-! ## A340547.P4308291141233761358

`A302150(n+1)^A094544(n)*A004070(n)`
-/

namespace A340547.P4308291141233761358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A302150 (n + 1) : ℚ) ^ (A094544 n : ℤ) * (A004070 n : ℚ)

end

end A340547.P4308291141233761358

/-! ## A340547.P16240348009231328981

`A253572(n+1)+A008619(n)%A112382(A273712(n))`
-/

namespace A340547.P16240348009231328981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253572 (n + 1) + Int.tmod (A008619 n) (A112382 (A273712 n).toNat)

end

end A340547.P16240348009231328981

/-!
# A340549: Smallest integer with exactly n divisors that are repunits.

The programs for A340549, there is no canonical definition to state claims against.
-/

/-! ## A340549.P3614711630118394505

`A028310(floor(10^n/9))*A147757(n+1)`
-/

namespace A340549.P3614711630118394505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 ⌊(10 ^ n : ℚ) / 9⌋.toNat * A147757 (n + 1)

end

end A340549.P3614711630118394505

/-!
# A340553: a(n) = card({k: prime(n) mod k is not prime}).

The programs for A340553, there is no canonical definition to state claims against.
-/

/-! ## A340553.P170580622260954450

`A000040(n+1)-A266714(Δ[A007504(n)])`
-/

namespace A340553.P170580622260954450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A266714 (f1 (n + 1) - f1 n).toNat

end

end A340553.P170580622260954450

/-! ## A340553.P4685149625534764964

`A000040(n+1)-A266714(record[A051698(n)])`
-/

namespace A340553.P4685149625534764964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A266714 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A340553.P4685149625534764964

/-! ## A340553.P11451583098570055053

`A000040(n+1)-A266714(p?[A001057(n)])`
-/

namespace A340553.P11451583098570055053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A266714 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A340553.P11451583098570055053

/-! ## A340553.P7087380458701483294

`A000040(n+1)-A266714(p?[A006370(n)])`
-/

namespace A340553.P7087380458701483294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A266714 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A340553.P7087380458701483294

/-! ## A340553.P4688325087070665200

`A000040(n+1)-A266714(p?[A007989(n)])`
-/

namespace A340553.P4688325087070665200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A266714 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A340553.P4688325087070665200

/-! ## A340553.P18032807106320439233

`A000040(n+1)-A266714(p?[A014681(n)])`
-/

namespace A340553.P18032807106320439233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A266714 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A340553.P18032807106320439233

/-! ## A340553.P3421685100652921210

`A000040(n+1)-A266714(p?[A056847(n)])`
-/

namespace A340553.P3421685100652921210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A266714 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A340553.P3421685100652921210

/-! ## A340553.P10311127440513327647

`A000040(n+1)-A266714(p?[A057979(n)])`
-/

namespace A340553.P10311127440513327647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A266714 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A340553.P10311127440513327647

/-! ## A340553.P6767974285039897383

`A000040(n+1)-A266714(p?[A064429(n)])`
-/

namespace A340553.P6767974285039897383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A266714 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A340553.P6767974285039897383

/-!
# A340554: T(n, k) = [x^k] hypergeom([-2^n/2, -2^n/2 - 1/2], [1/2], x). Triangle read by rows, T(n, k) for n >= 0.

The programs for A340554, there is no canonical definition to state claims against.
-/

/-! ## A340554.P13076937442216945654

`A258445(eq[A013632(n), A032741(n)])`
-/

namespace A340554.P13076937442216945654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258445 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340554.P13076937442216945654

/-! ## A340554.P12554889631086437234

`A140737(A057764(n+1)+A000096(n))`
-/

namespace A340554.P12554889631086437234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140737 (A057764 (n + 1) + A000096 n).toNat

end

end A340554.P12554889631086437234

/-! ## A340554.P12569518154246888136

`A007318(A351374(2*n+1)+A173068(2*n+1))`
-/

namespace A340554.P12569518154246888136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A351374 (2 * n + 1) + A173068 (2 * n + 1)).toNat

end

end A340554.P12569518154246888136

/-! ## A340554.P5362238460715575696

`A273866(A008574(n*A353865(n)))`
-/

namespace A340554.P5362238460715575696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273866 (A008574 ((n : ℤ) * A353865 n).toNat).toNat

end

end A340554.P5362238460715575696

/-! ## A340554.P8881066081805827137

`A273866(gcd(A022144(n), A045754(n)))`
-/

namespace A340554.P8881066081805827137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273866 (Int.gcd (A022144 n) (A045754 n))

end

end A340554.P8881066081805827137

/-!
# A340555: T(n, k) = [x^k] (2^n-1)*2^(-n-1)*((x+1)^(2^n) - (x-1)^(2^n)). Irregular triangle read by rows, for n >= 0 and 0 <= k <= 2^n.

The programs for A340555, there is no canonical definition to state claims against.
-/

/-! ## A340555.P13669811805403160261

`floor(acot(A340263(n)))*A340263(n)`
-/

namespace A340555.P13669811805403160261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A340263 n : ℝ)⌋ * A340263 n

end

end A340555.P13669811805403160261

/-! ## A340555.P9280453902220773064

`A028870(n+5)%A196416(A137446(n+1))`
-/

namespace A340555.P9280453902220773064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028870 (n + 5)) (A196416 (A137446 (n + 1)).toNat)

end

end A340555.P9280453902220773064

/-!
# A340556: E2(n, k), the second-order Eulerian numbers with E2(0, k) = δ_{0, k}. Triangle read by rows, E2(n, k) for 0 <= k <= n.

The programs for A340556, the canonical program `A340556.P16435934202460792328` is in `Seq.B000.C045`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340556 has offset 0).

The definition of A340556 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1931 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340556.P16435934202460792328

`2*row(n)*T(n-1,k-1)+(T(n-1,k)-T(n-1,k-1))*col(n)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C045`.
-/

namespace A340556

/-- `2*row(n)*T(n-1,k-1)+(T(n-1,k)-T(n-1,k-1))*col(n)` -/
def P16435934202460792328.Spec : Prop :=
  ∀ n, P16435934202460792328.a n = A340556 n

theorem P16435934202460792328.correct : P16435934202460792328.Spec := by
  intro n
  simp only [A340556]

end A340556

/-! ## A340556.P8971032598276465885

`2*row(n)*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))*col(n)` with `a(0)=1`
-/

namespace A340556.P8971032598276465885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * SequenceMachineLib.triRow n : ℤ) * SequenceMachineLib.triUpLeft a n - (SequenceMachineLib.triUpLeft a n - SequenceMachineLib.triUp a n) * (SequenceMachineLib.triCol n : ℤ)

end

end A340556.P8971032598276465885

namespace A340556

/-- `2*row(n)*T(n-1,k-1)-(T(n-1,k-1)-T(n-1,k))*col(n)` -/
def P8971032598276465885.Spec : Prop :=
  ∀ n, P8971032598276465885.a n = A340556 n

theorem P8971032598276465885.correct : P8971032598276465885.Spec := by
  intro n
  simp only [A340556, Nat.add_sub_cancel, A340556.P8971032598276465885.a, A340556.P16435934202460792328.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A340556

/-! ## A340556.P7784284860681561899

`A201637(abs(2-n)+1)`
-/

namespace A340556.P7784284860681561899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201637 (|2 - (n : ℤ)| + 1).toNat

end

end A340556.P7784284860681561899

namespace A340556

/-- `A201637(abs(2-n)+1)` -/
def P7784284860681561899.Spec : Prop :=
  ∀ n, P7784284860681561899.a n = A340556 n

end A340556

/-! ## A340556.P1786555152867052141

`A288874(A061579(A134824(n)+n))`
-/

namespace A340556.P1786555152867052141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A061579 (A134824 n + (n : ℤ)).toNat).toNat

end

end A340556.P1786555152867052141

namespace A340556

/-- `A288874(A061579(A134824(n)+n))` -/
def P1786555152867052141.Spec : Prop :=
  ∀ n, P1786555152867052141.a n = A340556 n

end A340556

/-! ## A340556.P8211891549211031886

`A163936(∑[char[∑[n]]]²-n)`
-/

namespace A340556.P8211891549211031886
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163936 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)

end

end A340556.P8211891549211031886

namespace A340556

/-- `A163936(∑[char[∑[n]]]²-n)` -/
def P8211891549211031886.Spec : Prop :=
  ∀ n, P8211891549211031886.a n = A340556 n

end A340556

/-! ## A340556.P10143666564728406250

`A288874(floor(A038722(n+1)+acot(n)))`
-/

namespace A340556.P10143666564728406250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 ⌊(A038722 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋.toNat

end

end A340556.P10143666564728406250

namespace A340556

/-- `A288874(floor(A038722(n+1)+acot(n)))` -/
def P10143666564728406250.Spec : Prop :=
  ∀ n, P10143666564728406250.a n = A340556 n

end A340556

/-! ## A340556.P14996676322690445101

`A288874(A061579(n)+A054977(n))`
-/

namespace A340556.P14996676322690445101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A061579 n + A054977 n).toNat

end

end A340556.P14996676322690445101

namespace A340556

/-- `A288874(A061579(n)+A054977(n))` -/
def P14996676322690445101.Spec : Prop :=
  ∀ n, P14996676322690445101.a n = A340556 n

end A340556

/-! ## A340556.P351138829418966030

`A288874(A061579(n)+A057427(n))`
-/

namespace A340556.P351138829418966030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A061579 n + A057427 n).toNat

end

end A340556.P351138829418966030

namespace A340556

/-- `A288874(A061579(n)+A057427(n))` -/
def P351138829418966030.Spec : Prop :=
  ∀ n, P351138829418966030.a n = A340556 n

end A340556

/-! ## A340556.P17482440476995056151

`A288874(A061579(n)-A134824(n))`
-/

namespace A340556.P17482440476995056151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A061579 n - A134824 n).toNat

end

end A340556.P17482440476995056151

namespace A340556

/-- `A288874(A061579(n)-A134824(n))` -/
def P17482440476995056151.Spec : Prop :=
  ∀ n, P17482440476995056151.a n = A340556 n

end A340556

/-! ## A340556.P279304248095221151

`A288874(A038722(n+1)+A000007(n))`
-/

namespace A340556.P279304248095221151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (A038722 (n + 1) + A000007 n).toNat

end

end A340556.P279304248095221151

namespace A340556

/-- `A288874(A038722(n+1)+A000007(n))` -/
def P279304248095221151.Spec : Prop :=
  ∀ n, P279304248095221151.a n = A340556 n

end A340556

/-! ## A340556.P16582714592803323488

`A288874(2-(A054977(n)-A061579(n)))`
-/

namespace A340556.P16582714592803323488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (2 - (A054977 n - A061579 n)).toNat

end

end A340556.P16582714592803323488

namespace A340556

/-- `A288874(2-(A054977(n)-A061579(n)))` -/
def P16582714592803323488.Spec : Prop :=
  ∀ n, P16582714592803323488.a n = A340556 n

end A340556

/-! ## A340556.P23825668003632323

`A288874((∑[char[∑[n]]]²-n)%(2^n))`
-/

namespace A340556.P23825668003632323
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288874 (Int.tmod ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ)) (2 ^ n : ℤ)).toNat

end

end A340556.P23825668003632323

namespace A340556

/-- `A288874((∑[char[∑[n]]]²-n)%(2^n))` -/
def P23825668003632323.Spec : Prop :=
  ∀ n, P23825668003632323.a n = A340556 n

end A340556

/-!
# A340557: a(n) = Product_{1<=j,k<=n} (4*sin(Pi*(4*j-1)/(4*n))^2 + 4*sin(Pi*(2*k-1)/(2*n))^2).

The programs for A340557, there is no canonical definition to state claims against.
-/

/-! ## A340557.P2352569704919959033

`sqrt(A341535(2*n))`
-/

namespace A340557.P2352569704919959033
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A341535 (2 * n) : ℝ)

end

end A340557.P2352569704919959033

/-!
# A340558: a(n) is the smallest prime that can be the apex of a triangle with n rows, all entries being distinct primes, and all row sums equal.

The programs for A340558, there is no canonical definition to state claims against.
-/

/-! ## A340558.P3240794212861553125

`A138889(A247903(n))`
-/

namespace A340558.P3240794212861553125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138889 (A247903 n).toNat

end

end A340558.P3240794212861553125

/-!
# A340559: Numbers that are palindromic in base 2 and base 16.

The programs for A340559, there is no canonical definition to state claims against.
-/

/-! ## A340559.P10051996521203009110

`∩[A006995(n+1), A029730(n+1)]`
-/

namespace A340559.P10051996521203009110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006995 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340559.P10051996521203009110

/-! ## A340559.P5908784918193831387

`∩[A029730(n+1), A180204(n+1)]`
-/

namespace A340559.P5908784918193831387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180204 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340559.P5908784918193831387

/-! ## A340559.P16797944059309940505

`eq[A056962(n), A062130(n)]`
-/

namespace A340559.P16797944059309940505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340559.P16797944059309940505

/-! ## A340559.P17845988066343895839

`eq[A055965(n), A066057(n)]`
-/

namespace A340559.P17845988066343895839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055965 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066057 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340559.P17845988066343895839

/-! ## A340559.P9131964222634829929

`eq[n, A056962(A175298(n))]`
-/

namespace A340559.P9131964222634829929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056962 (A175298 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A340559.P9131964222634829929

/-!
# A340560: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals, where T(n,k) = Product_{a=1..n-1} Product_{b=1..k-1} (4*sin(a*Pi/n)^2 + 4*sin(b*Pi/k)^2).

The programs for A340560, there is no canonical definition to state claims against.
-/

/-! ## A340560.P1857127726246852459

`A212796(n+1)/A003991(n+1)`
-/

namespace A340560.P1857127726246852459
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212796 (n + 1) : ℚ) / (A003991 (n + 1) : ℚ)

end

end A340560.P1857127726246852459

/-! ## A340560.P5370049258424053718

`A212796(n+1)/(A059036(n)+1)`
-/

namespace A340560.P5370049258424053718
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212796 (n + 1) : ℚ) / (A059036 n + 1 : ℚ)

end

end A340560.P5370049258424053718

/-! ## A340560.P2634428886563380904

`A212796(n+1)/A000005(A036561(n))`
-/

namespace A340560.P2634428886563380904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212796 (n + 1) : ℚ) / (A000005 (A036561 n).toNat : ℚ)

end

end A340560.P2634428886563380904

/-! ## A340560.P12889151330912140743

`A212796(n+1)/A000005(A175840(n))`
-/

namespace A340560.P12889151330912140743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212796 (n + 1) : ℚ) / (A000005 (A175840 n).toNat : ℚ)

end

end A340560.P12889151330912140743

/-! ## A340560.P6514788533649988113

`A212796(n+1)/(A004247(n)+A002024(n+1))`
-/

namespace A340560.P6514788533649988113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212796 (n + 1) : ℚ) / (A004247 n + A002024 (n + 1) : ℚ)

end

end A340560.P6514788533649988113

/-!
# A340561: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals, where T(n,k) = sqrt( Product_{a=1..n-1} Product_{b=1..k-1} (4*sin(a*Pi/n)^2 + 4*cos(b*Pi/k)^2) ).

The programs for A340561, there is no canonical definition to state claims against.
-/

/-! ## A340561.P2820490705639849450

`A364772(A117396(n))`
-/

namespace A340561.P2820490705639849450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364772 (A117396 n).toNat

end

end A340561.P2820490705639849450

/-! ## A340561.P6049101923966034589

`A195872(A284308(n+1))`
-/

namespace A340561.P6049101923966034589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195872 (A284308 (n + 1)).toNat

end

end A340561.P6049101923966034589

/-! ## A340561.P6921970857761806119

`A032559(A308292(n))%17`
-/

namespace A340561.P6921970857761806119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032559 (A308292 n).toNat) 17

end

end A340561.P6921970857761806119

/-! ## A340561.P13232593881900679959

`A087051(A125800(n))%19`
-/

namespace A340561.P13232593881900679959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087051 (A125800 n).toNat) 19

end

end A340561.P13232593881900679959

/-! ## A340561.P14668865658041713953

`A084268(n+1)-A335460(A141412(n))`
-/

namespace A340561.P14668865658041713953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084268 (n + 1) - A335460 (A141412 n).toNat

end

end A340561.P14668865658041713953

/-!
# A340562: a(n) = Product_{1<=j,k<=n-1} (4*sin(j*Pi/n)^2 + 4*sin(k*Pi/n)^2).

The programs for A340562, there is no canonical definition to state claims against.
-/

/-! ## A340562.P10781757861975948227

`A212800(n+1)/(n+1)²`
-/

namespace A340562.P10781757861975948227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212800 (n + 1) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A340562.P10781757861975948227

/-!
# A340563: a(n) = sqrt( Product_{1<=j, k<=n-1} (4*sin(j*Pi/n)^2 + 4*cos(k*Pi/n)^2) ).

The programs for A340563, there is no canonical definition to state claims against.
-/

/-! ## A340563.P14861263297745137639

`A340561((1-n)²+n²)`
-/

namespace A340563.P14861263297745137639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340561 ((1 - (n : ℤ)) ^ 2 + (n ^ 2 : ℤ)).toNat

end

end A340563.P14861263297745137639

/-!
# A340564: Primes p such that the sum of (p mod q) for primes q < p is prime.

The programs for A340564, there is no canonical definition to state claims against.
-/

/-! ## A340564.P8433051936523747272

`A000040(A254616(n+1))`
-/

namespace A340564.P8433051936523747272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A254616 (n + 1)).toNat

end

end A340564.P8433051936523747272

/-! ## A340564.P4186267845195167759

`A008578(A254616(n+1)+1)`
-/

namespace A340564.P4186267845195167759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A254616 (n + 1) + 1).toNat

end

end A340564.P4186267845195167759

/-! ## A340564.P11070773098253251583

`A075643(A254616(n+1)+1)`
-/

namespace A340564.P11070773098253251583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075643 (A254616 (n + 1) + 1).toNat

end

end A340564.P11070773098253251583

/-! ## A340564.P648569097401645338

`A182986(A254616(n+1)+1)`
-/

namespace A340564.P648569097401645338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A254616 (n + 1) + 1).toNat

end

end A340564.P648569097401645338

/-! ## A340564.P17395960889883409107

`A045344(A254616(n+1)-1)`
-/

namespace A340564.P17395960889883409107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (A254616 (n + 1) - 1).toNat

end

end A340564.P17395960889883409107

/-! ## A340564.P3819415295724089536

`A065091(A254616(n+1)-1)`
-/

namespace A340564.P3819415295724089536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A254616 (n + 1) - 1).toNat

end

end A340564.P3819415295724089536

/-! ## A340564.P18318223004862033041

`A082500(2*A254616(n+1))`
-/

namespace A340564.P18318223004862033041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (2 * A254616 (n + 1)).toNat

end

end A340564.P18318223004862033041

/-! ## A340564.P15394154022508052457

`A162753(2*A254616(n+1))`
-/

namespace A340564.P15394154022508052457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 (2 * A254616 (n + 1)).toNat

end

end A340564.P15394154022508052457

/-! ## A340564.P16804797669650932939

`A207790(2*A254616(n+1))`
-/

namespace A340564.P16804797669650932939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (2 * A254616 (n + 1)).toNat

end

end A340564.P16804797669650932939

/-! ## A340564.P50176517679078940

`∑{d}[A254616(n+1), A007444(#)]`
-/

namespace A340564.P50176517679078940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007444 d

end

end A340564.P50176517679078940

/-!
# A340566: Square array, read by descending antidiagonals; T(n,k) is A001057(n) + A001057(k)*i, converted to complex binary (base -1 + i), where i=sqrt(-1).

The programs for A340566, there is no canonical definition to state claims against.
-/

/-! ## A340566.P14269031057938230787

`A105034(A000051(n)-A062296(n))`
-/

namespace A340566.P14269031057938230787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105034 (A000051 n - A062296 n).toNat

end

end A340566.P14269031057938230787

/-! ## A340566.P13316845685050417515

`A105034(A000051(n)-A158461(n))`
-/

namespace A340566.P13316845685050417515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105034 (A000051 n - A158461 n).toNat

end

end A340566.P13316845685050417515

/-!
# A340567: Total number of ascents in all faro permutations of length n.

The programs for A340567, the canonical program `A340567.P15280367653010939046` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340567 has offset 0).

The definition of A340567 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340567.P15280367653010939046

`A191524(n)+A191522(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A340567

/-- `A191524(n)+A191522(n)` -/
def P15280367653010939046.Spec : Prop :=
  ∀ n, P15280367653010939046.a n = A340567 n

theorem P15280367653010939046.correct : P15280367653010939046.Spec := by
  intro n
  simp only [A340567]

end A340567

/-! ## A340567.P18344199291673809759

`A191527(n)+A093387(round(sqrt(n²+1)))`
-/

namespace A340567.P18344199291673809759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191527 n + A093387 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

end

end A340567.P18344199291673809759

namespace A340567

/-- `A191527(n)+A093387(round(sqrt(n²+1)))` -/
def P18344199291673809759.Spec : Prop :=
  ∀ n, P18344199291673809759.a n = A340567 n

end A340567

/-! ## A340567.P5632511359624483424

`A014314(A028310(n))-A001405(n)`
-/

namespace A340567.P5632511359624483424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014314 (A028310 n).toNat - A001405 n

end

end A340567.P5632511359624483424

namespace A340567

/-- `A014314(A028310(n))-A001405(n)` -/
def P5632511359624483424.Spec : Prop :=
  ∀ n, P5632511359624483424.a n = A340567 n

end A340567

/-! ## A340567.P844001121976466849

`A014314(A000007(n)+n)-A001405(n)`
-/

namespace A340567.P844001121976466849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014314 (A000007 n + (n : ℤ)).toNat - A001405 n

end

end A340567.P844001121976466849

namespace A340567

/-- `A014314(A000007(n)+n)-A001405(n)` -/
def P844001121976466849.Spec : Prop :=
  ∀ n, P844001121976466849.a n = A340567 n

end A340567

/-! ## A340567.P3831184589524878847

`A191522(n)+A191527(n)-A191309(n)`
-/

namespace A340567.P3831184589524878847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191522 n + (A191527 n - A191309 n)

end

end A340567.P3831184589524878847

namespace A340567

/-- `A191522(n)+A191527(n)-A191309(n)` -/
def P3831184589524878847.Spec : Prop :=
  ∀ n, P3831184589524878847.a n = A340567 n

theorem P3831184589524878847.correct : P3831184589524878847.Spec := by
  intro n
  simp only [A340567, Nat.add_sub_cancel, A340567.P3831184589524878847.a, A340567.P15280367653010939046.a, A191309, A191309.P18243075712559101294.a, A191522, A191522.P8267354329706753814.f1, A191522.P8267354329706753814.a, A191524, A191524.P4442675164963678049.a, A191527, A191527.P18257187905751201443.a, A000034, A000034.P10773112074177680709.a, A000079, A000079.P10855139691139572931.a, A004526, A004526.P10084182425416171735.a, A050168, A050168.P2561838391192846284.a, A139262, A139262.P8524009422663711179.a, A140106, A140106.P2723219612803141067.a, A210736, A210736.P1250447749793702526.a, A001405, A001405.P5205018418992951678.a, A022998, A022998.P6062845442791183064.a, A026010, A026010.P16380718155997919768.f1, A026010.P16380718155997919768.a, A081294, A081294.P14054507065107062197.a, A097070, A097070.P7474886704666409265.a, A129194, A129194.P14466208917237569440.a, A002740, A002740.P348049862178716560.a, A097613, A097613.P17801274350353294577.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A340567

/-! ## A340567.P9879322047483523655

`A191522(n)+A191522(n)+A307768(n)/2`
-/

namespace A340567.P9879322047483523655
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191522 n : ℚ) + ((A191522 n : ℚ) + (A307768 n : ℚ) / 2)

end

end A340567.P9879322047483523655

namespace A340567

/-- `A191522(n)+A191522(n)+A307768(n)/2` -/
def P9879322047483523655.Spec : Prop :=
  ∀ n, P9879322047483523655.a n = (A340567 n : ℚ)

end A340567

/-! ## A340567.P15138808878054369004

`A014314(A153861(∑[n]))-A001405(n)`
-/

namespace A340567.P15138808878054369004
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014314 (A153861 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat - A001405 n

end

end A340567.P15138808878054369004

namespace A340567

/-- `A014314(A153861(∑[n]))-A001405(n)` -/
def P15138808878054369004.Spec : Prop :=
  ∀ n, P15138808878054369004.a n = A340567 n

end A340567

/-!
# A340568: Total number of consecutive triples matching the pattern 132 in all faro permutations of length n.

The programs for A340568, the canonical program `A340568.P8040469025914050039` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340568 has offset 0).

The definition of A340568 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 330 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340568.P8040469025914050039

`A191522(n)+A191309(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A340568

/-- `A191522(n)+A191309(n)` -/
def P8040469025914050039.Spec : Prop :=
  ∀ n, P8040469025914050039.a n = A340568 n

theorem P8040469025914050039.correct : P8040469025914050039.Spec := by
  intro n
  simp only [A340568]

end A340568

/-! ## A340568.P11462105237166012819

`A191527(n)-A307768(n)/2`
-/

namespace A340568.P11462105237166012819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191527 n : ℚ) - (A307768 n : ℚ) / 2

end

end A340568.P11462105237166012819

namespace A340568

/-- `A191527(n)-A307768(n)/2` -/
def P11462105237166012819.Spec : Prop :=
  ∀ n, P11462105237166012819.a n = (A340568 n : ℚ)

end A340568

/-! ## A340568.P2104190617055254861

`A107373(n+1)-Δ[A210736(n)]`
-/

namespace A340568.P2104190617055254861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210736 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) - (f1 (n + 1) - f1 n)

end

end A340568.P2104190617055254861

namespace A340568

/-- `A107373(n+1)-Δ[A210736(n)]` -/
def P2104190617055254861.Spec : Prop :=
  ∀ n, P2104190617055254861.a n = A340568 n

end A340568

/-! ## A340568.P9355929695620351654

`A191527(n)-A045621(log2(A011782(n)))`
-/

namespace A340568.P9355929695620351654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191527 n - A045621 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A340568.P9355929695620351654

namespace A340568

/-- `A191527(n)-A045621(log2(A011782(n)))` -/
def P9355929695620351654.Spec : Prop :=
  ∀ n, P9355929695620351654.a n = A340568 n

end A340568

/-! ## A340568.P13444433275610471892

`A014314(n)+A210736(n)-A000079(n)`
-/

namespace A340568.P13444433275610471892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014314 n + (A210736 n - A000079 n)

end

end A340568.P13444433275610471892

namespace A340568

/-- `A014314(n)+A210736(n)-A000079(n)` -/
def P13444433275610471892.Spec : Prop :=
  ∀ n, P13444433275610471892.a n = A340568 n

end A340568

/-! ## A340568.P5432581964208291379

`A107373(n+1)+A210736(n)-A001405(n)`
-/

namespace A340568.P5432581964208291379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) + (A210736 n - A001405 n)

end

end A340568.P5432581964208291379

namespace A340568

/-- `A107373(n+1)+A210736(n)-A001405(n)` -/
def P5432581964208291379.Spec : Prop :=
  ∀ n, P5432581964208291379.a n = A340568 n

end A340568

/-! ## A340568.P5273238925949115624

`A107373(n+1)+A210736(n)-A210736(n+1)`
-/

namespace A340568.P5273238925949115624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107373 (n + 1) + (A210736 n - A210736 (n + 1))

end

end A340568.P5273238925949115624

namespace A340568

/-- `A107373(n+1)+A210736(n)-A210736(n+1)` -/
def P5273238925949115624.Spec : Prop :=
  ∀ n, P5273238925949115624.a n = A340568 n

end A340568

/-!
# A340569: Total number of consecutive triples matching the pattern 123 in all faro permutations of length n.

The programs for A340569, the canonical program `A340569.P1345233823651597892` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340569 has offset 0).

The definition of A340569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340569.P1345233823651597892

`or(A011782(n), A307768(n))-A001405(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A340569

/-- `or(A011782(n), A307768(n))-A001405(n)` -/
def P1345233823651597892.Spec : Prop :=
  ∀ n, P1345233823651597892.a n = A340569 n

theorem P1345233823651597892.correct : P1345233823651597892.Spec := by
  intro n
  simp only [A340569]

end A340569

/-! ## A340569.P1024181093944850853

`A000007(A004526(n))+A045621(n)-A063886(n)`
-/

namespace A340569.P1024181093944850853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A004526 n).toNat + (A045621 n - A063886 n)

end

end A340569.P1024181093944850853

namespace A340569

/-- `A000007(A004526(n))+A045621(n)-A063886(n)` -/
def P1024181093944850853.Spec : Prop :=
  ∀ n, P1024181093944850853.a n = A340569 n

end A340569

/-! ## A340569.P14781836657597408389

`A045621(n)+A322585(A151800(n))-A063886(n)`
-/

namespace A340569.P14781836657597408389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045621 n + (A322585 (A151800 n).toNat - A063886 n)

end

end A340569.P14781836657597408389

namespace A340569

/-- `A045621(n)+A322585(A151800(n))-A063886(n)` -/
def P14781836657597408389.Spec : Prop :=
  ∀ n, P14781836657597408389.a n = A340569 n

end A340569

/-! ## A340569.P4384059200185839694

`A000007(A002264(n+1))+A045621(n)-A063886(n)`
-/

namespace A340569.P4384059200185839694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A002264 (n + 1)).toNat + (A045621 n - A063886 n)

end

end A340569.P4384059200185839694

namespace A340569

/-- `A000007(A002264(n+1))+A045621(n)-A063886(n)` -/
def P4384059200185839694.Spec : Prop :=
  ∀ n, P4384059200185839694.a n = A340569 n

end A340569

/-! ## A340569.P6131206202660569067

`A000007(A045922(n+1))+A045621(n)-A063886(n)`
-/

namespace A340569.P6131206202660569067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (A045922 (n + 1)).toNat + (A045621 n - A063886 n)

end

end A340569.P6131206202660569067

namespace A340569

/-- `A000007(A045922(n+1))+A045621(n)-A063886(n)` -/
def P6131206202660569067.Spec : Prop :=
  ∀ n, P6131206202660569067.a n = A340569 n

end A340569

/-! ## A340569.P10737766397282223108

`A322585(A008578(n+1))+A045621(n)-A063886(n)`
-/

namespace A340569.P10737766397282223108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (A008578 (n + 1)).toNat + (A045621 n - A063886 n)

end

end A340569.P10737766397282223108

namespace A340569

/-- `A322585(A008578(n+1))+A045621(n)-A063886(n)` -/
def P10737766397282223108.Spec : Prop :=
  ∀ n, P10737766397282223108.a n = A340569 n

end A340569

/-! ## A340569.P17696578933295351829

`A206603(n+1)%A102699(n)`
-/

namespace A340569.P17696578933295351829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A206603 (n + 1)) (A102699 n)

end

end A340569.P17696578933295351829

namespace A340569

/-- `A206603(n+1)%A102699(n)` -/
def P17696578933295351829.Spec : Prop :=
  ∀ n, P17696578933295351829.a n = A340569 n

end A340569

/-! ## A340569.P10591332965012838275

`(A045621(n)-A063886(n))%A077335(n)`
-/

namespace A340569.P10591332965012838275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045621 n - A063886 n) (A077335 n)

end

end A340569.P10591332965012838275

namespace A340569

/-- `(A045621(n)-A063886(n))%A077335(n)` -/
def P10591332965012838275.Spec : Prop :=
  ∀ n, P10591332965012838275.a n = A340569 n

end A340569

/-! ## A340569.P13041866023385624372

`A322585(n²+1)+A045621(n)-A063886(n)`
-/

namespace A340569.P13041866023385624372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322585 (n ^ 2 + 1) + (A045621 n - A063886 n)

end

end A340569.P13041866023385624372

namespace A340569

/-- `A322585(n²+1)+A045621(n)-A063886(n)` -/
def P13041866023385624372.Spec : Prop :=
  ∀ n, P13041866023385624372.a n = A340569 n

end A340569

/-! ## A340569.P9363706423651135001

`A307768(n)-A001405(n)%A007909(2*n)`
-/

namespace A340569.P9363706423651135001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307768 n - Int.tmod (A001405 n) (A007909 (2 * n))

end

end A340569.P9363706423651135001

namespace A340569

/-- `A307768(n)-A001405(n)%A007909(2*n)` -/
def P9363706423651135001.Spec : Prop :=
  ∀ n, P9363706423651135001.a n = A340569 n

end A340569

/-! ## A340569.P13446993875051851644

`A000007(n²-n)+A045621(n)-A063886(n)`
-/

namespace A340569.P13446993875051851644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n ^ 2 - n) + (A045621 n - A063886 n)

end

end A340569.P13446993875051851644

namespace A340569

/-- `A000007(n²-n)+A045621(n)-A063886(n)` -/
def P13446993875051851644.Spec : Prop :=
  ∀ n, P13446993875051851644.a n = A340569 n

end A340569

/-!
# A340571: Number of partitions of n into 4 parts with at least one even part.

The programs for A340571, the canonical program `A340571.P7943958464689563817` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340571 has offset 0).

The definition of A340571 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340571.P7943958464689563817

`A026810(n)-A026810(∑[n]%(n+2))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A340571

/-- `A026810(n)-A026810(∑[n]%(n+2))` -/
def P7943958464689563817.Spec : Prop :=
  ∀ n, P7943958464689563817.a n = A340571 n

theorem P7943958464689563817.correct : P7943958464689563817.Spec := by
  intro n
  simp only [A340571]

end A340571

/-! ## A340571.P2092344391564106067

`A026810(n)-A026810(A179820(n))`
-/

namespace A340571.P2092344391564106067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A026810 (A179820 n).toNat

end

end A340571.P2092344391564106067

namespace A340571

/-- `A026810(n)-A026810(A179820(n))` -/
def P2092344391564106067.Spec : Prop :=
  ∀ n, P2092344391564106067.a n = A340571 n

end A340571

/-! ## A340571.P15084927241246084804

`A026810(n)-A026810(A142150(n)+2)`
-/

namespace A340571.P15084927241246084804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A026810 (A142150 n + 2).toNat

end

end A340571.P15084927241246084804

namespace A340571

/-- `A026810(n)-A026810(A142150(n)+2)` -/
def P15084927241246084804.Spec : Prop :=
  ∀ n, P15084927241246084804.a n = A340571 n

end A340571

/-! ## A340571.P15349943812879159192

`A026810(n)-A026810(A166514(n)+2)`
-/

namespace A340571.P15349943812879159192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A026810 (A166514 n + 2).toNat

end

end A340571.P15349943812879159192

namespace A340571

/-- `A026810(n)-A026810(A166514(n)+2)` -/
def P15349943812879159192.Spec : Prop :=
  ∀ n, P15349943812879159192.a n = A340571 n

end A340571

/-! ## A340571.P14707883073831642716

`A340589(n+4)-round((n+3)²/12)`
-/

namespace A340571.P14707883073831642716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340589 (n + 4) - SequenceMachineLib.roundAway (((n + 3) ^ 2 : ℚ) / 12)

end

end A340571.P14707883073831642716

namespace A340571

/-- `A340589(n+4)-round((n+3)²/12)` -/
def P14707883073831642716.Spec : Prop :=
  ∀ n, P14707883073831642716.a n = A340571 n

end A340571

/-!
# A340573: a(n) is the smallest lesser twin prime p from A001359 such that the distance to the previous lesser twin prime is 6*n.

The programs for A340573, there is no canonical definition to state claims against.
-/

/-! ## A340573.P9314182657295136799

`A052350(n+1)+6*(n+1)`
-/

namespace A340573.P9314182657295136799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052350 (n + 1) + (6 * (n + 1) : ℤ)

end

end A340573.P9314182657295136799

/-! ## A340573.P9844111819931833904

`6*(n+1)+A052350(n+1)`
-/

namespace A340573.P9844111819931833904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * (n + 1) : ℤ) + A052350 (n + 1)

end

end A340573.P9844111819931833904

/-!
# A340579: Triangle read by rows: T(n,k) = A000203(n-k+1)*A000070(k-1), 1 <= k <= n.

The programs for A340579, there is no canonical definition to state claims against.
-/

/-! ## A340579.P631554423453638932

`A000203(row(n)-col(n)+1)*A000070(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340579.P631554423453638932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 1).toNat * A000070 (SequenceMachineLib.triCol n)

end

end A340579.P631554423453638932

/-! ## A340579.P14155616051766047827

`A000203(row(n)+1-(col(n)+1)+1)*A000070(col(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340579.P14155616051766047827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n + 1 : ℤ) + 1).toNat * A000070 (SequenceMachineLib.triCol n)

end

end A340579.P14155616051766047827

/-! ## A340579.P11215486624050788349

`A339106(n+1)+T(n-1,k-1)` with `a(0)=1`
-/

namespace A340579.P11215486624050788349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A339106 (n + 1) + SequenceMachineLib.triUpLeft a n

end

end A340579.P11215486624050788349

/-! ## A340579.P3841255676124863833

`A000070(A002262(n))*A272172(n+1)`
-/

namespace A340579.P3841255676124863833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (A002262 n).toNat * A272172 (n + 1)

end

end A340579.P3841255676124863833

/-! ## A340579.P12858663684783951199

`A000070(A025691(n+1))*A272172(n+1)`
-/

namespace A340579.P12858663684783951199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 (A025691 (n + 1)).toNat * A272172 (n + 1)

end

end A340579.P12858663684783951199

/-!
# A340581: Irregular triangle read by rows in which row n has length A014153(n-1) and every column k lists the positive integers A000027, n >= 1, k >= 1.

The programs for A340581, there is no canonical definition to state claims against.
-/

/-! ## A340581.P10687283819956572771

`A193739(comp[∑[A141169(n)]-1]-n)`
-/

namespace A340581.P10687283819956572771
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141169 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n - n)

end

end A340581.P10687283819956572771

/-! ## A340581.P15205778450470292933

`A065120(eq[A000120(n), A131081(n+1)])`
-/

namespace A340581.P15205778450470292933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131081 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340581.P15205778450470292933

/-! ## A340581.P3634484618104557256

`A065120(A136492(n+1)%A230742(n))`
-/

namespace A340581.P3634484618104557256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (Int.tmod (A136492 (n + 1)) (A230742 n)).toNat

end

end A340581.P3634484618104557256

/-! ## A340581.P16016184699636825750

`A065120(lt[n+1, A358170(n)])`
-/

namespace A340581.P16016184699636825750
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A340581.P16016184699636825750

/-! ## A340581.P9701680834467286976

`A065120(lt[A040358(n), A172309(n+2)])`
-/

namespace A340581.P9701680834467286976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040358 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172309 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065120 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A340581.P9701680834467286976

/-!
# A340583: Triangle read by rows: T(n,k) = A002865(n-k)*A000203(k), 1 <= k <= n.

The programs for A340583, there is no canonical definition to state claims against.
-/

/-! ## A340583.P11735413955114969682

`A002865(row(n)+1-(col(n)+1))*A000203(col(n)+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A340583.P11735413955114969682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (SequenceMachineLib.triRow n + 1 - (SequenceMachineLib.triCol n + 1)) * A000203 (SequenceMachineLib.triCol n + 1)

end

end A340583.P11735413955114969682

/-! ## A340583.P17712625318032159491

`A116598(n)*A245093(n+1)`
-/

namespace A340583.P17712625318032159491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116598 n * A245093 (n + 1)

end

end A340583.P17712625318032159491

/-! ## A340583.P28521673735638733

`A002865(C(comp[∑[n]]-n, 2)-(n+1))*A245093(n+1)`
-/

namespace A340583.P28521673735638733
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 - (n + 1)) * A245093 (n + 1)

end

end A340583.P28521673735638733

/-! ## A340583.P3703525506556051413

`A000203(A002260(n+1))*A116598(n)`
-/

namespace A340583.P3703525506556051413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002260 (n + 1)).toNat * A116598 n

end

end A340583.P3703525506556051413

/-! ## A340583.P17090911238910430653

`A000203(A002262(n)+1)*A116598(n)`
-/

namespace A340583.P17090911238910430653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002262 n + 1).toNat * A116598 n

end

end A340583.P17090911238910430653

/-! ## A340583.P7425283545381816613

`A002865(A025581(n))*A245093(n+1)`
-/

namespace A340583.P7425283545381816613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A025581 n).toNat * A245093 (n + 1)

end

end A340583.P7425283545381816613

/-! ## A340583.P10169238525296952458

`A050370(A130321(n))*A245093(n+1)`
-/

namespace A340583.P10169238525296952458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050370 (A130321 n).toNat * A245093 (n + 1)

end

end A340583.P10169238525296952458

/-! ## A340583.P14078359862796285

`A002865(A025660(n+1))*A245093(n+1)`
-/

namespace A340583.P14078359862796285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 (A025660 (n + 1)).toNat * A245093 (n + 1)

end

end A340583.P14078359862796285

/-!
# A340585: Noncube perfect powers.

The programs for A340585, there is no canonical definition to state claims against.
-/

/-! ## A340585.P9090283640086342810

`∪[A153158(n+1), A239870(n+1)]`
-/

namespace A340585.P9090283640086342810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153158 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340585.P9090283640086342810

/-! ## A340585.P344834152403189387

`∪[A179126(n+1), A239728(n+1)]`
-/

namespace A340585.P344834152403189387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239728 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340585.P344834152403189387

/-! ## A340585.P11348712932594919854

`∪[A179126(n+1), A239870(n+1)]`
-/

namespace A340585.P11348712932594919854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179126 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340585.P11348712932594919854

/-! ## A340585.P6091908253515218999

`∪[A007412(n+1)², A239870(n+1)]`
-/

namespace A340585.P6091908253515218999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340585.P6091908253515218999

/-! ## A340585.P10113304206387085444

`∪[A094784(n+1)², A239870(n+1)]`
-/

namespace A340585.P10113304206387085444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094784 (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A340585.P10113304206387085444

/-! ## A340585.P3184355848232588043

`eq[atan(A010057(n)), A301573(n)]`
-/

namespace A340585.P3184355848232588043
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A010057 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A340585.P3184355848232588043

/-! ## A340585.P10776899046234509355

`filter[A007412(n+1), A075802(#)]`
-/

namespace A340585.P10776899046234509355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A075802 (f1 j).toNat = 1) n)

end

end A340585.P10776899046234509355

/-! ## A340585.P13694202804965951078

`∩[A001597(n+1), A007412(n+1)]`
-/

namespace A340585.P13694202804965951078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340585.P13694202804965951078

/-! ## A340585.P3913496901468974403

`eq[A010057(n+1), A301573(n+1)]+1`
-/

namespace A340585.P3913496901468974403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010057 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A340585.P3913496901468974403

/-! ## A340585.P15118365638934523393

`∩[A007412(n+1), A045542(n+1)+1]`
-/

namespace A340585.P15118365638934523393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007412 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045542 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A340585.P15118365638934523393

/-! ## A340585.P1122283031729513356

`eq[A000038(A074989(n)), A301573(n)]`
-/

namespace A340585.P1122283031729513356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A074989 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340585.P1122283031729513356

/-! ## A340585.P5253808415102017020

`eq[A000038(A055400(n)), A301573(n)]`
-/

namespace A340585.P5253808415102017020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A055400 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301573 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A340585.P5253808415102017020

/-!
# A340586: Perfect powers such that the two immediately adjacent perfect powers both have a largest exponent A025479 equal to 2.

The programs for A340586, there is no canonical definition to state claims against.
-/

/-! ## A340586.P7902757313232408009

`A001597(eq[A010815(n), A126209(n+4)])`
-/

namespace A340586.P7902757313232408009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126209 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A340586.P7902757313232408009

/-!
# A340587: a(n) is the least root of A340586(n).

The programs for A340587, there is no canonical definition to state claims against.
-/

/-! ## A340587.P15076909903631584280

`A052410(A340586(n+1))`
-/

namespace A340587.P15076909903631584280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052410 (A340586 (n + 1)).toNat

end

end A340587.P15076909903631584280

/-! ## A340587.P10979541117014216861

`A329814(A340586(1+n))`
-/

namespace A340587.P10979541117014216861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329814 (A340586 (1 + n)).toNat

end

end A340587.P10979541117014216861

/-!
# A340588: Squares of perfect powers.

The programs for A340588, there is no canonical definition to state claims against.
-/

/-! ## A340588.P1867594843911288139

`A001597(n+1)²`
-/

namespace A340588.P1867594843911288139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) ^ 2

end

end A340588.P1867594843911288139

/-! ## A340588.P17743458592146369816

`∑[A076412(n)]²`
-/

namespace A340588.P17743458592146369816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A340588.P17743458592146369816

/-! ## A340588.P13433437643138035648

`A157985(1+n)²`
-/

namespace A340588.P13433437643138035648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (1 + n) ^ 2

end

end A340588.P13433437643138035648

/-! ## A340588.P6686416429913226580

`A157985(n+1)^2`
-/

namespace A340588.P6686416429913226580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157985 (n + 1) ^ 2

end

end A340588.P6686416429913226580

/-! ## A340588.P14484237317659948875

`A001597(and(n+1, -1))^2`
-/

namespace A340588.P14484237317659948875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (Int.land (n + 1 : ℤ) (-1)).toNat ^ 2

end

end A340588.P14484237317659948875

/-! ## A340588.P13027594541476669505

`A001597(n-log2(1/2))^2`
-/

namespace A340588.P13027594541476669505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat ^ 2

end

end A340588.P13027594541476669505

/-! ## A340588.P16751422003938306751

`∪[(n+1)², A070265(n+1)]²`
-/

namespace A340588.P16751422003938306751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A340588.P16751422003938306751

/-! ## A340588.P5889179040441132115

`∪[(n+1)², A076467(n+1)]²`
-/

namespace A340588.P5889179040441132115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2

end

end A340588.P5889179040441132115

/-! ## A340588.P10201303997033980485

`record[A001597(A292267(n))²]`
-/

namespace A340588.P10201303997033980485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A292267 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A340588.P10201303997033980485

/-! ## A340588.P10461356989874839468

`(A075146(n+1)+A000040(n+1))²`
-/

namespace A340588.P10461356989874839468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075146 (n + 1) + A000040 (n + 1)) ^ 2

end

end A340588.P10461356989874839468

/-! ## A340588.P15392397422371929178

`(A377043(n+1)+A000961(n+1))²`
-/

namespace A340588.P15392397422371929178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A377043 (n + 1) + A000961 (n + 1)) ^ 2

end

end A340588.P15392397422371929178

/-! ## A340588.P1046537006305842191

`(A076405(n+1)/A025478(n+1))²`
-/

namespace A340588.P1046537006305842191
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A076405 (n + 1) : ℚ) / (A025478 (n + 1) : ℚ)) ^ 2

end

end A340588.P1046537006305842191

/-! ## A340588.P11470935074767421884

`(A076405(n+1)/A157987(n+1))²`
-/

namespace A340588.P11470935074767421884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A076405 (n + 1) : ℚ) / (A157987 (n + 1) : ℚ)) ^ 2

end

end A340588.P11470935074767421884

/-! ## A340588.P6105341796172444572

`A001597(A000027(n+1))*A001597(n+1)`
-/

namespace A340588.P6105341796172444572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (A000027 (n + 1)).toNat * A001597 (n + 1)

end

end A340588.P6105341796172444572

/-! ## A340588.P8543781014059059644

`(A075146(n+1)+A000040(n+1))*A001597(n+1)`
-/

namespace A340588.P8543781014059059644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075146 (n + 1) + A000040 (n + 1)) * A001597 (n + 1)

end

end A340588.P8543781014059059644

/-! ## A340588.P4887552818830001415

`A001597(n+1)/A025478(n+1)*A076405(n+1)`
-/

namespace A340588.P4887552818830001415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 1) : ℚ) / (A025478 (n + 1) : ℚ) * (A076405 (n + 1) : ℚ)

end

end A340588.P4887552818830001415

/-! ## A340588.P2346387173570368060

`A000007(n+1)+A001597(n+1)*A001597(n+1)`
-/

namespace A340588.P2346387173570368060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + A001597 (n + 1) * A001597 (n + 1)

end

end A340588.P2346387173570368060

/-! ## A340588.P5540362698700846968

`(A001597(n+2)-A053289(n+1))*A001597(n+1)`
-/

namespace A340588.P5540362698700846968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 2) - A053289 (n + 1)) * A001597 (n + 1)

end

end A340588.P5540362698700846968

/-! ## A340588.P7269285616146164024

`A001597(n+1)*A001597(n+1)*A057427(n+1)`
-/

namespace A340588.P7269285616146164024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1) * A001597 (n + 1) * A057427 (n + 1)

end

end A340588.P7269285616146164024

/-! ## A340588.P15930846798514036921

`(A001597(n+2)-A076412(n+1))*A001597(n+1)`
-/

namespace A340588.P15930846798514036921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001597 (n + 2) - A076412 (n + 1)) * A001597 (n + 1)

end

end A340588.P15930846798514036921

/-!
# A340589: Number of partitions of n into 4 parts with at least one odd part.

The programs for A340589, the canonical program `A340589.P9076716019865579084` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A340589 has offset 0).

The definition of A340589 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A340589.P9076716019865579084

`A026810(n)-A026810(n-gcd(n, ∑[n]))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A340589

/-- `A026810(n)-A026810(n-gcd(n, ∑[n]))` -/
def P9076716019865579084.Spec : Prop :=
  ∀ n, P9076716019865579084.a n = A340589 n

theorem P9076716019865579084.correct : P9076716019865579084.Spec := by
  intro n
  simp only [A340589]

end A340589

/-! ## A340589.P7888634329237090062

`A026810(n)-A026810(and(-(-1)^n, ceil(n/2)))`
-/

namespace A340589.P7888634329237090062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A026810 (Int.land (-((-1) ^ n)) ⌈(n : ℚ) / 2⌉).toNat

end

end A340589.P7888634329237090062

namespace A340589

/-- `A026810(n)-A026810(and(-(-1)^n, ceil(n/2)))` -/
def P7888634329237090062.Spec : Prop :=
  ∀ n, P7888634329237090062.a n = A340589 n

end A340589

/-! ## A340589.P7078432195502697001

`A026810(n)-A026810(A142150(n))`
-/

namespace A340589.P7078432195502697001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A026810 (A142150 n).toNat

end

end A340589.P7078432195502697001

namespace A340589

/-- `A026810(n)-A026810(A142150(n))` -/
def P7078432195502697001.Spec : Prop :=
  ∀ n, P7078432195502697001.a n = A340589 n

end A340589

/-! ## A340589.P10806789257282841790

`A026810(n)-A026810(A166514(n))`
-/

namespace A340589.P10806789257282841790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A026810 (A166514 n).toNat

end

end A340589.P10806789257282841790

namespace A340589

/-- `A026810(n)-A026810(A166514(n))` -/
def P10806789257282841790.Spec : Prop :=
  ∀ n, P10806789257282841790.a n = A340589 n

end A340589

/-! ## A340589.P16769716795394141070

`A026810(n)-A026810(n-A026741(n))`
-/

namespace A340589.P16769716795394141070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A026810 ((n : ℤ) - A026741 n).toNat

end

end A340589.P16769716795394141070

namespace A340589

/-- `A026810(n)-A026810(n-A026741(n))` -/
def P16769716795394141070.Spec : Prop :=
  ∀ n, P16769716795394141070.a n = A340589 n

end A340589

/-! ## A340589.P1309543364470300349

`A026810(n)-A026810(gcd(n, A004526(n)))`
-/

namespace A340589.P1309543364470300349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A026810 (Int.gcd (n : ℤ) (A004526 n))

end

end A340589.P1309543364470300349

namespace A340589

/-- `A026810(n)-A026810(gcd(n, A004526(n)))` -/
def P1309543364470300349.Spec : Prop :=
  ∀ n, P1309543364470300349.a n = A340589 n

end A340589

/-! ## A340589.P1395696196960470639

`A026810(n)-A026810(A004526(A141310(n)))`
-/

namespace A340589.P1395696196960470639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A026810 (A004526 (A141310 n).toNat).toNat

end

end A340589.P1395696196960470639

namespace A340589

/-- `A026810(n)-A026810(A004526(A141310(n)))` -/
def P1395696196960470639.Spec : Prop :=
  ∀ n, P1395696196960470639.a n = A340589 n

end A340589

/-! ## A340589.P14076231630663819629

`A026810(n)-A026810(A057979(n+1))`
-/

namespace A340589.P14076231630663819629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A026810 (A057979 (n + 1)).toNat

end

end A340589.P14076231630663819629

namespace A340589

/-- `A026810(n)-A026810(A057979(n+1))` -/
def P14076231630663819629.Spec : Prop :=
  ∀ n, P14076231630663819629.a n = A340589 n

end A340589

/-! ## A340589.P10087240219826069399

`A026810(n)-A026810(A053615(A002620(n)))`
-/

namespace A340589.P10087240219826069399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026810 n - A026810 (A053615 (A002620 n).toNat).toNat

end

end A340589.P10087240219826069399

namespace A340589

/-- `A026810(n)-A026810(A053615(A002620(n)))` -/
def P10087240219826069399.Spec : Prop :=
  ∀ n, P10087240219826069399.a n = A340589 n

end A340589

/-!
# A340590: Number of n*(n+1)-step n-dimensional nonnegative closed lattice walks starting at the origin and using steps that increment all components or decrement one component by 1.

The programs for A340590, there is no canonical definition to state claims against.
-/

/-! ## A340590.P16078377093089694921

`A340591(C(n+n+1, 2)+n)`
-/

namespace A340590.P16078377093089694921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340591 (Nat.choose (n + n + 1) 2 + n)

end

end A340590.P16078377093089694921

/-! ## A340590.P12306986343699997773

`A340591(∑[4*n])`
-/

namespace A340590.P12306986343699997773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340591 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A340590.P12306986343699997773

/-!
# A340592: a(n) is the concatenation of the prime factors (with multiplicity) of n mod n.

The programs for A340592, there is no canonical definition to state claims against.
-/

/-! ## A340592.P4239559813341696677

`A037276(n+2)%(n+2)`
-/

namespace A340592.P4239559813341696677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037276 (n + 2)) (n + 2 : ℤ)

end

end A340592.P4239559813341696677

/-! ## A340592.P1073143553017580260

`Δ[A287883(n+1)]%(n+2)`
-/

namespace A340592.P1073143553017580260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287883 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (n + 2 : ℤ)

end

end A340592.P1073143553017580260

/-! ## A340592.P5922858964452175061

`A289660(n+2)%(n+2)`
-/

namespace A340592.P5922858964452175061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A289660 (n + 2)) (n + 2 : ℤ)

end

end A340592.P5922858964452175061

/-! ## A340592.P3877658866546864016

`A087712(A064988(n+2))%(n+2)`
-/

namespace A340592.P3877658866546864016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A087712 (A064988 (n + 2)).toNat) (n + 2 : ℤ)

end

end A340592.P3877658866546864016

/-! ## A340592.P2106595221479558177

`A073646(n+2)%A187829(A187829(n+2))`
-/

namespace A340592.P2106595221479558177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073646 (n + 2)) (A187829 (A187829 (n + 2)).toNat)

end

end A340592.P2106595221479558177

/-!
# A340593: a(0) = 0; for n > 0, if n appears in the sequence then a(n) = a(n-1) - lastindex(n) if nonnegative and not already in the sequence, otherwise a(n) = a(n-1) + lastindex(n), where lastindex(n) is the index of the last appearance of n. Otherwise a(n) = a(n-1) - n if nonnegative and not already in the sequence, otherwise a(n) = a(n-1) + n.

The programs for A340593, there is no canonical definition to state claims against.
-/

/-! ## A340593.P7568535056739866741

`A369829(and(n, A356877(n)))`
-/

namespace A340593.P7568535056739866741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369829 (Int.land (n : ℤ) (A356877 n)).toNat

end

end A340593.P7568535056739866741

/-! ## A340593.P10916115883536414312

`and(A359085(n+1), A369829(n))`
-/

namespace A340593.P10916115883536414312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A359085 (n + 1)) (A369829 n)

end

end A340593.P10916115883536414312

/-! ## A340593.P15088594670700966454

`A369829(n)%A368100(2*n+5)`
-/

namespace A340593.P15088594670700966454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369829 n) (A368100 (2 * n + 5))

end

end A340593.P15088594670700966454

/-! ## A340593.P10258308440093241384

`A369829(n)%A195437(A059446(n))`
-/

namespace A340593.P10258308440093241384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A369829 n) (A195437 (A059446 n).toNat)

end

end A340593.P10258308440093241384

/-! ## A340593.P5542414408123323446

`A326815(A007996(n+1))*A369829(n)`
-/

namespace A340593.P5542414408123323446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326815 (A007996 (n + 1)).toNat * A369829 n

end

end A340593.P5542414408123323446

/-!
# A340594: a(n) is the number of iterations of A340592 starting from n, until 0, 1 or a prime is reached.

The programs for A340594, there is no canonical definition to state claims against.
-/

/-! ## A340594.P3720918740191098313

`A089309(lcm(A046667(n+2), A272161(n)))`
-/

namespace A340594.P3720918740191098313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089309 (Int.lcm (A046667 (n + 2)) (A272161 n))

end

end A340594.P3720918740191098313

/-! ## A340594.P15364233000804361424

`A115384(∑{e}[A340592(n+2), #^16])`
-/

namespace A340594.P15364233000804361424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340592 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p ^ 16)

end

end A340594.P15364233000804361424

/-! ## A340594.P15315108187959155071

`∑{e}[A340592(n+2), #^A056000(n)]`
-/

namespace A340594.P15315108187959155071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340592 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) ^ (A056000 n : ℤ)

end

end A340594.P15315108187959155071

/-! ## A340594.P5038308696451151489

`∑{e}[A340592(n+2), #^A077169(n)]`
-/

namespace A340594.P5038308696451151489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340592 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) ^ (A077169 n : ℤ)

end

end A340594.P5038308696451151489

/-! ## A340594.P1616974118047861185

`∑{e}[A340592(n+2), #^A155212(n)]`
-/

namespace A340594.P1616974118047861185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340592 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p : ℚ) ^ (A155212 n : ℤ)

end

end A340594.P1616974118047861185

/-!
# A340596: Number of co-balanced factorizations of n.

The programs for A340596, there is no canonical definition to state claims against.
-/

/-! ## A340596.P14916981886668481715

`A336736(n+1)^floor(∑{p}[n+1, root(γ, #)])`
-/

namespace A340596.P14916981886668481715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336736 (n + 1) : ℚ) ^ (⌊∑ p ∈ Nat.primeFactors (f1 n), Real.eulerMascheroniConstant ^ (1 / (p : ℝ))⌋ : ℤ)

end

end A340596.P14916981886668481715

/-! ## A340596.P5111282706418744726

`gcd(A008683(n+1), A336570(n+1))`
-/

namespace A340596.P5111282706418744726
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (n + 1)) (A336570 (n + 1))

end

end A340596.P5111282706418744726

/-! ## A340596.P14812168815453288784

`ceil(A336570(n+1)/A124259(n+1))`
-/

namespace A340596.P14812168815453288784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A336570 (n + 1) : ℚ) / (A124259 (n + 1) : ℚ)⌉

end

end A340596.P14812168815453288784

/-! ## A340596.P7632572761536589633

`A336570(n+1)^A071625(∏{e}[n+1, 2^#-1])`
-/

namespace A340596.P7632572761536589633
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336570 (n + 1) : ℚ) ^ (A071625 (∏ p ∈ Nat.primeFactors (f1 n), ((2 ^ Nat.factorization (f1 n) p : ℤ) - 1)).toNat : ℤ)

end

end A340596.P7632572761536589633

/-! ## A340596.P14142053172817075720

`C(A336570(n+1), A124010(∏{e}[n+1, 2^#-1]))`
-/

namespace A340596.P14142053172817075720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A336570 (n + 1)).toNat (A124010 (∏ p ∈ Nat.primeFactors (f1 n), ((2 ^ Nat.factorization (f1 n) p : ℤ) - 1)).toNat).toNat

end

end A340596.P14142053172817075720

/-! ## A340596.P18242315782877315182

`A060775(A326516(n+1)*A370645(n+1))`
-/

namespace A340596.P18242315782877315182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060775 (A326516 (n + 1) * A370645 (n + 1)).toNat

end

end A340596.P18242315782877315182

/-! ## A340596.P8362337417159698376

`A370645(n+1)+A181837(A355526(n+2))`
-/

namespace A340596.P8362337417159698376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370645 (n + 1) + A181837 (A355526 (n + 2)).toNat

end

end A340596.P8362337417159698376

/-! ## A340596.P11135759876505536128

`A000026(A285769(n+1))/A000026(n+1)`
-/

namespace A340596.P11135759876505536128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000026 (A285769 (n + 1)).toNat : ℚ) / (A000026 (n + 1) : ℚ)

end

end A340596.P11135759876505536128

/-! ## A340596.P9593916151881744976

`A351417(A001583(n+1))+A000005(n+1)-A351394(n+1)`
-/

namespace A340596.P9593916151881744976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351417 (A001583 (n + 1)).toNat + (A000005 (n + 1) - A351394 (n + 1))

end

end A340596.P9593916151881744976

/-! ## A340596.P9869631996003177162

`A273866(A068903(n+1))`
-/

namespace A340596.P9869631996003177162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273866 (A068903 (n + 1)).toNat

end

end A340596.P9869631996003177162

/-!
# A340597: Numbers with an alt-balanced factorization.

The programs for A340597, there is no canonical definition to state claims against.
-/

/-! ## A340597.P15352683144064317436

`lt[0, A340599(n+1)]+1`
-/

namespace A340597.P15352683144064317436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340599 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A340597.P15352683144064317436

/-! ## A340597.P8576361159205648749

`A020725(lt[0, A340599(n+1)])`
-/

namespace A340597.P8576361159205648749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340599 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A340597.P8576361159205648749

/-! ## A340597.P11827493560966905966

`lt[A369667(n), A340599(A028310(n))]`
-/

namespace A340597.P11827493560966905966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340599 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A340597.P11827493560966905966

/-! ## A340597.P15077521994763050970

`A113484(comp[A340599(n+1)+n])`
-/

namespace A340597.P15077521994763050970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340599 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113484 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A340597.P15077521994763050970

/-!
# A340598: Number of balanced set partitions of {1..n}.

The programs for A340598, there is no canonical definition to state claims against.
-/

/-! ## A340598.P3900635904748654077

`A112292(n)*A204016(A019988(n+1))`
-/

namespace A340598.P3900635904748654077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112292 n * A204016 (A019988 (n + 1)).toNat

end

end A340598.P3900635904748654077

/-!
# A340599: Number of factorizations of n into factors > 1 with length and greatest factor equal.

The programs for A340599, there is no canonical definition to state claims against.
-/

/-! ## A340599.P1731299542825940061

`∏{p}[n+1, floor(3/#)]*A359764(A078370(2*n+3))`
-/

namespace A340599.P1731299542825940061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), ⌊3 / (p : ℚ)⌋) * A359764 (A078370 (2 * n + 3)).toNat

end

end A340599.P1731299542825940061

/-! ## A340599.P1932419678023466657

`and(A315668(A007517(n+1)), A331169(n+1))`
-/

namespace A340599.P1932419678023466657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A315668 (A007517 (n + 1)).toNat) (A331169 (n + 1))

end

end A340599.P1932419678023466657

/-! ## A340599.P805799511195422543

`and(A014784(A164902(n+2)), A331282(n+1))`
-/

namespace A340599.P805799511195422543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014784 (A164902 (n + 2)).toNat) (A331282 (n + 1))

end

end A340599.P805799511195422543

/-! ## A340599.P7874106419700034790

`A006257(and(A099315(n+1), A285189(n)))`
-/

namespace A340599.P7874106419700034790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006257 (Int.land (A099315 (n + 1)) (A285189 n)).toNat

end

end A340599.P7874106419700034790

/-! ## A340599.P1935443968026550059

`val(A002033(n), A001316(A218980(n+1)))`
-/

namespace A340599.P1935443968026550059
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A002033 n).toNat (A001316 (A218980 (n + 1)).toNat).toNat

end

end A340599.P1935443968026550059

